%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Agentic RFT Runtime Service - manages trajectory and transition data
%% for reinforcement fine-tuning jobs.
-module(aws_sagemakerjobruntime).

-export([complete_rollout/2,
         complete_rollout/3,
         sample/2,
         sample/3,
         sample_with_response_stream/2,
         sample_with_response_stream/3,
         update_reward/2,
         update_reward/3]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% access_denied_exception() :: #{
%%   <<"Message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% complete_rollout_request() :: #{
%%   <<"ClientToken">> => [string()],
%%   <<"JobArn">> := string(),
%%   <<"Status">> => list(any()),
%%   <<"TrajectoryId">> := string()
%% }
-type complete_rollout_request() :: #{binary() => any()}.

%% Example:
%% complete_rollout_response() :: #{}
-type complete_rollout_response() :: #{}.


%% Example:
%% conflict_exception() :: #{
%%   <<"Message">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% internal_service_error() :: #{
%%   <<"Message">> => string()
%% }
-type internal_service_error() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% sample_request() :: #{
%%   <<"Body">> := binary(),
%%   <<"JobArn">> := string(),
%%   <<"TrajectoryId">> := string()
%% }
-type sample_request() :: #{binary() => any()}.


%% Example:
%% sample_response() :: #{
%%   <<"Body">> => binary(),
%%   <<"ContentType">> => [string()]
%% }
-type sample_response() :: #{binary() => any()}.


%% Example:
%% sample_with_response_stream_request() :: #{
%%   <<"Body">> := binary(),
%%   <<"JobArn">> := string(),
%%   <<"TrajectoryId">> := string()
%% }
-type sample_with_response_stream_request() :: #{binary() => any()}.


%% Example:
%% sample_with_response_stream_response() :: #{
%%   <<"Body">> => binary(),
%%   <<"ContentType">> => [string()]
%% }
-type sample_with_response_stream_response() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"Message">> => string()
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"Message">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% update_reward_request() :: #{
%%   <<"ClientToken">> => [string()],
%%   <<"JobArn">> := string(),
%%   <<"Rewards">> := list([float()]()),
%%   <<"TrajectoryId">> := string()
%% }
-type update_reward_request() :: #{binary() => any()}.

%% Example:
%% update_reward_response() :: #{}
-type update_reward_response() :: #{}.


%% Example:
%% validation_exception() :: #{
%%   <<"Message">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.

-type complete_rollout_errors() ::
    validation_exception() | 
    throttling_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    internal_service_error() | 
    conflict_exception() | 
    access_denied_exception().

-type sample_errors() ::
    validation_exception() | 
    throttling_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    internal_service_error() | 
    access_denied_exception().

-type sample_with_response_stream_errors() ::
    validation_exception() | 
    throttling_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    internal_service_error() | 
    access_denied_exception().

-type update_reward_errors() ::
    validation_exception() | 
    throttling_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    internal_service_error() | 
    conflict_exception() | 
    access_denied_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Marks a rollout as complete, indicating that no further turns will be
%% appended
%% to the trajectory.
%%
%% After calling this operation, the trajectory is sealed and
%% eligible for reward submission via the UpdateReward operation.
-spec complete_rollout(aws_client:aws_client(), complete_rollout_request()) ->
    {ok, complete_rollout_response(), tuple()} |
    {error, any()} |
    {error, complete_rollout_errors(), tuple()}.
complete_rollout(Client, Input) ->
    complete_rollout(Client, Input, []).

-spec complete_rollout(aws_client:aws_client(), complete_rollout_request(), proplists:proplist()) ->
    {ok, complete_rollout_response(), tuple()} |
    {error, any()} |
    {error, complete_rollout_errors(), tuple()}.
complete_rollout(Client, Input0, Options0) ->
    Method = post,
    Path = ["/complete-rollout"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Amzn-SageMaker-Job-Arn">>, <<"JobArn">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Sends an inference request to the model during a job execution.
%%
%% The request
%% and response bodies are forwarded to and from the model without
%% modification.
%% Each turn (prompt and response) is captured for later use.
-spec sample(aws_client:aws_client(), sample_request()) ->
    {ok, sample_response(), tuple()} |
    {error, any()} |
    {error, sample_errors(), tuple()}.
sample(Client, Input) ->
    sample(Client, Input, []).

-spec sample(aws_client:aws_client(), sample_request(), proplists:proplist()) ->
    {ok, sample_response(), tuple()} |
    {error, any()} |
    {error, sample_errors(), tuple()}.
sample(Client, Input0, Options0) ->
    Method = post,
    Path = ["/sample"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Amzn-SageMaker-Job-Arn">>, <<"JobArn">>},
                       {<<"X-Amzn-SageMaker-Trajectory-Id">>, <<"TrajectoryId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

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

%% @doc Sends a streaming inference request to the model during a job
%% execution.
%%
%% Returns the response as a stream of payload chunks. Each turn is captured
%% for later use.
-spec sample_with_response_stream(aws_client:aws_client(), sample_with_response_stream_request()) ->
    {ok, sample_with_response_stream_response(), tuple()} |
    {error, any()} |
    {error, sample_with_response_stream_errors(), tuple()}.
sample_with_response_stream(Client, Input) ->
    sample_with_response_stream(Client, Input, []).

-spec sample_with_response_stream(aws_client:aws_client(), sample_with_response_stream_request(), proplists:proplist()) ->
    {ok, sample_with_response_stream_response(), tuple()} |
    {error, any()} |
    {error, sample_with_response_stream_errors(), tuple()}.
sample_with_response_stream(Client, Input0, Options0) ->
    Method = post,
    Path = ["/sample-with-response-stream"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Amzn-SageMaker-Job-Arn">>, <<"JobArn">>},
                       {<<"X-Amzn-SageMaker-Trajectory-Id">>, <<"TrajectoryId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

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

%% @doc Updates the reward values for a trajectory and transitions it to
%% reward-received status, signaling that it is eligible for processing.
%%
%% Call this
%% operation after CompleteRollout to provide the computed reward scores.
-spec update_reward(aws_client:aws_client(), update_reward_request()) ->
    {ok, update_reward_response(), tuple()} |
    {error, any()} |
    {error, update_reward_errors(), tuple()}.
update_reward(Client, Input) ->
    update_reward(Client, Input, []).

-spec update_reward(aws_client:aws_client(), update_reward_request(), proplists:proplist()) ->
    {ok, update_reward_response(), tuple()} |
    {error, any()} |
    {error, update_reward_errors(), tuple()}.
update_reward(Client, Input0, Options0) ->
    Method = post,
    Path = ["/update-reward"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Amzn-SageMaker-Job-Arn">>, <<"JobArn">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

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
    Client1 = Client#{service => <<"sagemaker">>},
    DefaultHost = build_host(<<"job-runtime.sagemaker">>, Client1),
    URL0 = build_url(DefaultHost, Path, Client1),
    PathBin = erlang:iolist_to_binary(Path),
    {URL1, Host} = aws_util:apply_endpoint_url_override(URL0, DefaultHost, PathBin, <<"AWS_ENDPOINT_URL_SAGEMAKERJOBRUNTIME">>),
    URL = aws_request:add_query(URL1, Query),
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
