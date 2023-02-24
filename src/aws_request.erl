-module(aws_request).

-export([ add_headers/2
        , add_query/2
        , build_custom_headers/2
        , build_headers/2
        , method_to_binary/1
        , request/2
        , sign_request/5
        ]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================
%% Perform the actual request and depending on configuration,
%% retry if the response is off a retriable type.
request(RequestFun, Options) ->
  RetryState = init_retry_state(proplists:get_value(retry_options, Options, undefined)),
  do_request(RequestFun, RetryState).

%% Generate headers with an AWS signature version 4 for the specified
%% request.
sign_request(Client, Method, URL, Headers0, Body) ->
    AccessKeyID = aws_client:access_key_id(Client),
    SecretAccessKey = aws_client:secret_access_key(Client),
    Region = aws_client:region(Client),
    Service = aws_client:service(Client),
    Token = aws_client:token(Client),
    Headers = case Token of
                undefined -> Headers0;
                _ -> [{<<"X-Amz-Security-Token">>, Token}|Headers0]
              end,
    aws_signature:sign_v4(AccessKeyID, SecretAccessKey, Region, Service, calendar:universal_time(), Method, URL, Headers, Body, [{uri_encode_path, false}]).

%% @doc Include additions only if they don't already exist in the provided list.
add_headers([], Headers) ->
  Headers;
add_headers([{Name, _} = Header | Additions], Headers) ->
  case lists:keyfind(Name, 1, Headers) of
    false -> add_headers(Additions, [Header | Headers]);
    _ -> add_headers(Additions, Headers)
  end.

%% @doc Build request headers based on a list key-value pairs
%% representing the mappings from param names to header names and a
%% map with the `params'.
build_headers(ParamsHeadersMapping, Params0)
  when is_list(ParamsHeadersMapping),
       is_map(Params0) ->
  Fun = fun({HeaderName, ParamName}, {HeadersAcc, ParamsAcc}) ->
            case maps:get(ParamName, ParamsAcc, undefined) of
              undefined ->
                {HeadersAcc, ParamsAcc};
              Value ->
                Headers = [{HeaderName, Value} | HeadersAcc],
                Params = maps:remove(ParamName, ParamsAcc),
                {Headers, Params}
            end
        end,
  lists:foldl(Fun, {[], Params0}, ParamsHeadersMapping).

%% @doc Build custom request headers based on a list key-value pairs
%% representing the mappings from param names to header names and a
%% map with the `params'.
build_custom_headers(ParamsCustomHeadersMapping, Params0)
  when is_list(ParamsCustomHeadersMapping),
       is_map(Params0) ->
  Fun = fun({HeaderName, ParamName}, {HeadersAcc, ParamsAcc}) ->
            case maps:get(ParamName, ParamsAcc, undefined) of
              undefined ->
                {HeadersAcc, ParamsAcc};
              Value ->
                Headers = [{<<HeaderName/binary, K/binary>>, V}
                           || {K, V} <- maps:to_list(Value)] ++ HeadersAcc,
                Params = maps:remove(ParamName, ParamsAcc),
                {Headers, Params}
            end
        end,
  lists:foldl(Fun, {[], Params0}, ParamsCustomHeadersMapping).

%% @doc Add querystring to url is there are any parameters in the list
-spec add_query(binary(), [{binary(), any()}]) -> binary().
add_query(Url0, Query0) ->
  HackneyUrl = hackney_url:parse_url(Url0),
  NewQs = iolist_to_binary(
            aws_util:encode_query(
              hackney_url:parse_qs(HackneyUrl#hackney_url.qs) ++ Query0)),
  HackneyUrlWithAddedQs = HackneyUrl#hackney_url{qs = NewQs},
  hackney_url:unparse_url(HackneyUrlWithAddedQs).

-spec method_to_binary(atom()) -> binary().
method_to_binary(delete)  -> <<"DELETE">>;
method_to_binary(get)     -> <<"GET">>;
method_to_binary(head)    -> <<"HEAD">>;
method_to_binary(options) -> <<"OPTIONS">>;
method_to_binary(patch)   -> <<"PATCH">>;
method_to_binary(post)    -> <<"POST">>;
method_to_binary(put)     -> <<"PUT">>.

%%====================================================================
%% Internal functions
%%====================================================================
do_request(RequestFun, RetryState) ->
  Response = RequestFun(),
  case classify_response(Response) of
    retriable ->
      case should_retry(RetryState) of
        {ok, NewRetryState} ->
          do_request(RequestFun, NewRetryState);
        false ->
          Response
      end;
    error ->
      Response;
    ok ->
      Response
  end.

init_retry_state(undefined) ->
  undefined;
init_retry_state({exponential_with_jitter, {MaxAttempts, BaseSleepTime, CapSleepTime}}) ->
  #{ type => exponential_with_jitter
   , n => 0
   , max_attempts => MaxAttempts
   , base_sleep_time => BaseSleepTime
   , cap_sleep_time => CapSleepTime
  }.

classify_response({error, _, {StatusCode, _, _}})
  when is_integer(StatusCode) andalso StatusCode >= 500 ->
  retriable;
classify_response({error, {StatusCode, _}})
  when is_integer(StatusCode) andalso StatusCode >= 500 ->
  retriable;
classify_response({error, _, {StatusCode, _, _}})
  when is_integer(StatusCode) ->
  error;
classify_response({error, closed}) ->
  retriable;
classify_response({error, connect_timeout}) ->
  retriable;
classify_response({error, timeout}) ->
  retriable;
classify_response({error, checkout_timeout}) ->
  retriable;
classify_response({error, service_unavailable}) ->
  retriable;
classify_response({error, _}) ->
  error;
classify_response({ok, {_, _}}) ->
  ok;
classify_response({ok, _, {_, _, _}}) ->
  ok.

should_retry(undefined) ->
  false;
should_retry(#{ type := exponential_with_jitter
              , n := N
              , max_attempts := MaxAttempts}) when N =:= MaxAttempts ->
  false;
should_retry(#{ type := exponential_with_jitter
              , n := N
              , base_sleep_time := BaseSleepTime
              , cap_sleep_time := CapSleepTime} = RetryState0) ->
  Temp = min(CapSleepTime, BaseSleepTime * trunc(math:pow(2, N))),
  Sleep = Temp div 2 + rand:uniform(Temp div 2),
  timer:sleep(Sleep),
  {ok, RetryState0#{ n => N +1 }}.
