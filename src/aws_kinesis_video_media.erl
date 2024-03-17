%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.


-module(aws_kinesis_video_media).

-export([get_media/2,
         get_media/3]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% client_limit_exceeded_exception() :: #{
%%   <<"Message">> => string()
%% }
-type client_limit_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% connection_limit_exceeded_exception() :: #{
%%   <<"Message">> => string()
%% }
-type connection_limit_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% get_media_input() :: #{
%%   <<"StartSelector">> := start_selector(),
%%   <<"StreamARN">> => string(),
%%   <<"StreamName">> => string()
%% }
-type get_media_input() :: #{binary() => any()}.


%% Example:
%% get_media_output() :: #{
%%   <<"ContentType">> => string(),
%%   <<"Payload">> => binary()
%% }
-type get_media_output() :: #{binary() => any()}.


%% Example:
%% invalid_argument_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_argument_exception() :: #{binary() => any()}.


%% Example:
%% invalid_endpoint_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_endpoint_exception() :: #{binary() => any()}.


%% Example:
%% not_authorized_exception() :: #{
%%   <<"Message">> => string()
%% }
-type not_authorized_exception() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% start_selector() :: #{
%%   <<"AfterFragmentNumber">> => string(),
%%   <<"ContinuationToken">> => string(),
%%   <<"StartSelectorType">> => list(any()),
%%   <<"StartTimestamp">> => non_neg_integer()
%% }
-type start_selector() :: #{binary() => any()}.

-type get_media_errors() ::
    resource_not_found_exception() | 
    not_authorized_exception() | 
    invalid_endpoint_exception() | 
    invalid_argument_exception() | 
    connection_limit_exceeded_exception() | 
    client_limit_exceeded_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Use this API to retrieve media content from a Kinesis video stream.
%%
%% In the request,
%% you identify the stream name or stream Amazon Resource Name (ARN), and the
%% starting chunk.
%% Kinesis Video Streams then returns a stream of chunks in order by fragment
%% number.
%%
%% You must first call the `GetDataEndpoint' API to get an endpoint. Then
%% send the `GetMedia' requests to this endpoint using the --endpoint-url
%% parameter: https://docs.aws.amazon.com/cli/latest/reference/.
%%
%% When you put media data (fragments) on a stream, Kinesis Video Streams
%% stores each
%% incoming fragment and related metadata in what is called a
%% &quot;chunk.&quot; For more information, see
%% PutMedia:
%% https://docs.aws.amazon.com/kinesisvideostreams/latest/dg/API_dataplane_PutMedia.html.
%% The `GetMedia' API returns a stream of these chunks starting
%% from the chunk that you specify in the request.
%%
%% The following limits apply when using the `GetMedia' API:
%%
%% A client can call `GetMedia' up to five times per second per stream.
%%
%% Kinesis Video Streams sends media data at a rate of up to 25 megabytes per
%% second
%% (or 200 megabits per second) during a `GetMedia' session.
%%
%% If an error is thrown after invoking a Kinesis Video Streams media API, in
%% addition to
%% the HTTP status code and the response body, it includes the following
%% pieces of information:
%%
%% `x-amz-ErrorType' HTTP header – contains a more specific error type in
%% addition to what the HTTP status code provides.
%%
%% `x-amz-RequestId' HTTP header – if you want to report an issue to AWS,
%% the support team can better diagnose the problem if given the Request Id.
%%
%% Both the HTTP status code and the ErrorType header can be utilized to make
%% programmatic
%% decisions about whether errors are retry-able and under what conditions,
%% as well as provide
%% information on what actions the client programmer might need to take in
%% order to
%% successfully try again.
%%
%% For more information, see the Errors section at the
%% bottom of this topic, as well as Common Errors:
%% https://docs.aws.amazon.com/kinesisvideostreams/latest/dg/CommonErrors.html.
-spec get_media(aws_client:aws_client(), get_media_input()) ->
    {ok, get_media_output(), tuple()} |
    {error, any()} |
    {error, get_media_errors(), tuple()}.
get_media(Client, Input) ->
    get_media(Client, Input, []).

-spec get_media(aws_client:aws_client(), get_media_input(), proplists:proplist()) ->
    {ok, get_media_output(), tuple()} |
    {error, any()} |
    {error, get_media_errors(), tuple()}.
get_media(Client, Input0, Options0) ->
    Method = post,
    Path = ["/getMedia"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"Content-Type">>, <<"ContentType">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%%====================================================================
%% Internal functions
%%====================================================================

-spec proplists_take(any(), proplists:proplist(), any()) -> {any(), proplists:proplist()}.
proplists_take(Key, Proplist, Default) ->
  Value = proplists:get_value(Key, Proplist, Default),
  {Value, proplists:delete(Key, Proplist)}.

-spec request(aws_client:aws_client(), atom(), iolist(), list(),
              list(), map() | undefined, list(), pos_integer() | undefined) ->
    {ok, {integer(), list()}} |
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map(),
    Error :: map().
request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) ->
  RequestFun = fun() -> do_request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) end,
  aws_request:request(RequestFun, Options).

do_request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) ->
    Client1 = Client#{service => <<"kinesisvideo">>},
    Host = build_host(<<"kinesisvideo">>, Client1),
    URL0 = build_url(Host, Path, Client1),
    URL = aws_request:add_query(URL0, Query),
    AdditionalHeaders1 = [ {<<"Host">>, Host}
                         , {<<"Content-Type">>, <<"application/x-amz-json-1.1">>}
                         ],
    Payload =
      case proplists:get_value(send_body_as_binary, Options) of
        true ->
          maps:get(<<"Body">>, Input, <<"">>);
        false ->
          encode_payload(Input)
      end,
    AdditionalHeaders = case proplists:get_value(append_sha256_content_hash, Options, false) of
                          true ->
                            add_checksum_hash_header(AdditionalHeaders1, Payload);
                          false ->
                            AdditionalHeaders1
                        end,
    Headers1 = aws_request:add_headers(AdditionalHeaders, Headers0),

    MethodBin = aws_request:method_to_binary(Method),
    SignedHeaders = aws_request:sign_request(Client1, MethodBin, URL, Headers1, Payload),
    Response = hackney:request(Method, URL, SignedHeaders, Payload, Options),
    DecodeBody = not proplists:get_value(receive_body_as_binary, Options),
    handle_response(Response, SuccessStatusCode, DecodeBody).

add_checksum_hash_header(Headers, Body) ->
  [ {<<"X-Amz-CheckSum-SHA256">>, base64:encode(crypto:hash(sha256, Body))}
  | Headers
  ].

handle_response({ok, StatusCode, ResponseHeaders}, SuccessStatusCode, _DecodeBody)
  when StatusCode =:= 200;
       StatusCode =:= 202;
       StatusCode =:= 204;
       StatusCode =:= 206;
       StatusCode =:= SuccessStatusCode ->
    {ok, {StatusCode, ResponseHeaders}};
handle_response({ok, StatusCode, ResponseHeaders}, _, _DecodeBody) ->
    {error, {StatusCode, ResponseHeaders}};
handle_response({ok, StatusCode, ResponseHeaders, Client}, SuccessStatusCode, DecodeBody)
  when StatusCode =:= 200;
       StatusCode =:= 202;
       StatusCode =:= 204;
       StatusCode =:= 206;
       StatusCode =:= SuccessStatusCode ->
    case hackney:body(Client) of
        {ok, <<>>} when StatusCode =:= 200;
                        StatusCode =:= SuccessStatusCode ->
            {ok, #{}, {StatusCode, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = case DecodeBody of
                       true ->
                         try
                           jsx:decode(Body)
                         catch
                           Error:Reason:Stack ->
                             erlang:raise(error, {body_decode_failed, Error, Reason, StatusCode, Body}, Stack)
                         end;
                       false -> #{<<"Body">> => Body}
                     end,
            {ok, Result, {StatusCode, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, _ResponseHeaders, _Client}, _, _DecodeBody)
  when StatusCode =:= 503 ->
  %% Retriable error if retries are enabled
  {error, service_unavailable};
handle_response({ok, StatusCode, ResponseHeaders, Client}, _, _DecodeBody) ->
    {ok, Body} = hackney:body(Client),
    try
      DecodedError = jsx:decode(Body),
      {error, DecodedError, {StatusCode, ResponseHeaders, Client}}
    catch
      Error:Reason:Stack ->
        erlang:raise(error, {body_decode_failed, Error, Reason, StatusCode, Body}, Stack)
    end;
handle_response({error, Reason}, _, _DecodeBody) ->
  {error, Reason}.

build_host(_EndpointPrefix, #{region := <<"local">>, endpoint := Endpoint}) ->
    Endpoint;
build_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
build_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

build_url(Host, Path0, Client) ->
    Proto = aws_client:proto(Client),
    Path = erlang:iolist_to_binary(Path0),
    Port = aws_client:port(Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, Path], <<"">>).

-spec encode_payload(undefined | map()) -> binary().
encode_payload(undefined) ->
  <<>>;
encode_payload(Input) ->
  jsx:encode(Input).
