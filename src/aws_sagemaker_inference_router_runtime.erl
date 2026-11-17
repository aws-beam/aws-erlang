%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon SageMaker Inference Router Runtime is the runtime API for
%% Amazon SageMaker AI inference routers.
%%
%% An inference router sends each request that you make to one of the
%% destinations of a routing target. A destination is a SageMaker AI endpoint
%% or inference component, in your account or in another account, in the
%% router's Amazon Web Services Region or in another Region in the same
%% Amazon Web Services partition. The router chooses a healthy destination
%% with capacity, and prefers destinations in its own Region.
%%
%% Use `InvokeInferenceRouter' to get an inference in real time. Use
%% `InvokeInferenceRouterAsync' to submit a request whose input and
%% response are stored in Amazon S3.
%%
%% The inference router runtime endpoint supports HTTP/1.1 only. HTTP/2
%% isn't supported. If you use the Amazon Web Services SDKs or the Amazon
%% Web Services CLI, you don't need to change anything.
-module(aws_sagemaker_inference_router_runtime).

-export([invoke_inference_router/3,
         invoke_inference_router/4,
         invoke_inference_router_async/3,
         invoke_inference_router_async/4]).

-include_lib("hackney/include/hackney_lib.hrl").

%% hackney:body/1 is only called with hackney versions that still export it.
-ignore_xref([{hackney, body, 1}]).



%% Example:
%% access_denied_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% internal_dependency_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type internal_dependency_exception() :: #{binary() => any()}.


%% Example:
%% internal_failure() :: #{
%%   <<"Message">> => [string()]
%% }
-type internal_failure() :: #{binary() => any()}.


%% Example:
%% invoke_inference_router_async_input() :: #{
%%   <<"Accept">> => [string()],
%%   <<"ContentType">> => [string()],
%%   <<"CustomAttributes">> => string(),
%%   <<"Filename">> => [string()],
%%   <<"InferenceId">> => [string()],
%%   <<"InputLocation">> := [string()],
%%   <<"InvocationTimeoutSeconds">> => [integer()],
%%   <<"RequestTTLSeconds">> => [integer()],
%%   <<"RoutingTargetName">> := [string()],
%%   <<"S3OutputPathExtension">> => [string()]
%% }
-type invoke_inference_router_async_input() :: #{binary() => any()}.


%% Example:
%% invoke_inference_router_async_output() :: #{
%%   <<"FailureLocation">> => [string()],
%%   <<"InferenceId">> => [string()],
%%   <<"OutputLocation">> => [string()]
%% }
-type invoke_inference_router_async_output() :: #{binary() => any()}.


%% Example:
%% invoke_inference_router_input() :: #{
%%   <<"Accept">> => [string()],
%%   <<"Body">> := binary(),
%%   <<"ContentType">> => [string()],
%%   <<"CustomAttributes">> => string(),
%%   <<"InferenceId">> => [string()],
%%   <<"PrefixAwareId">> => [string()],
%%   <<"RoutingTargetName">> := [string()]
%% }
-type invoke_inference_router_input() :: #{binary() => any()}.


%% Example:
%% invoke_inference_router_output() :: #{
%%   <<"Body">> => binary(),
%%   <<"ContentType">> => [string()],
%%   <<"CustomAttributes">> => string(),
%%   <<"InvokedProductionVariant">> => [string()],
%%   <<"InvokedRoutedResourceArn">> => [string()],
%%   <<"RoutingReason">> => [string()]
%% }
-type invoke_inference_router_output() :: #{binary() => any()}.


%% Example:
%% model_error() :: #{
%%   <<"LogStreamArn">> => [string()],
%%   <<"Message">> => [string()],
%%   <<"OriginalMessage">> => [string()],
%%   <<"OriginalStatusCode">> => [integer()]
%% }
-type model_error() :: #{binary() => any()}.


%% Example:
%% model_not_ready_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type model_not_ready_exception() :: #{binary() => any()}.


%% Example:
%% request_timeout_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type request_timeout_exception() :: #{binary() => any()}.


%% Example:
%% service_unavailable_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type service_unavailable_exception() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type validation_exception() :: #{binary() => any()}.

-type invoke_inference_router_errors() ::
    validation_exception() | 
    throttling_exception() | 
    service_unavailable_exception() | 
    request_timeout_exception() | 
    model_not_ready_exception() | 
    model_error() | 
    internal_failure() | 
    internal_dependency_exception() | 
    access_denied_exception().

-type invoke_inference_router_async_errors() ::
    validation_exception() | 
    throttling_exception() | 
    service_unavailable_exception() | 
    request_timeout_exception() | 
    internal_failure() | 
    access_denied_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Sends a real-time inference request to an inference router.
%%
%% In the request, you name the routing target, and the router sends the
%% request to one of the routing target's destinations. The response
%% includes the destination that served the request and the reason that the
%% router chose it.
%%
%% The following limits apply:
%%
%% The maximum request payload is 6 MB. A request with a larger body fails
%% with HTTP status code 413.
%%
%% Your model has up to 60 seconds for each attempt, the same limit as
%% `InvokeEndpoint'. If your account has a higher model execution timeout
%% for `InvokeEndpoint', it doesn't apply through an inference
%% router. For models that take longer, use `InvokeInferenceRouterAsync'.
%%
%% If a destination returns an error that the router can retry, such as a
%% throttling error, before your model produces a response, the router
%% retries the request once on another destination. A request that times out
%% on a destination isn't retried. Because a request can make two
%% attempts, set your client read timeout to at least 170 seconds.
%%
%% The caller needs permission to invoke the inference router and every
%% destination of the routing target. For information about permissions, see
%% Route requests across Regions with inference routers:
%% https://docs.aws.amazon.com/sagemaker/latest/dg/inference-router.html.
-spec invoke_inference_router(aws_client:aws_client(), binary() | list(), invoke_inference_router_input()) ->
    {ok, invoke_inference_router_output(), tuple()} |
    {error, any()} |
    {error, invoke_inference_router_errors(), tuple()}.
invoke_inference_router(Client, InferenceRouterName, Input) ->
    invoke_inference_router(Client, InferenceRouterName, Input, []).

-spec invoke_inference_router(aws_client:aws_client(), binary() | list(), invoke_inference_router_input(), proplists:proplist()) ->
    {ok, invoke_inference_router_output(), tuple()} |
    {error, any()} |
    {error, invoke_inference_router_errors(), tuple()}.
invoke_inference_router(Client, InferenceRouterName, Input0, Options0) ->
    Method = post,
    Path = ["/inference-routers/", aws_util:encode_uri(InferenceRouterName), "/invocations"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, true),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, true),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"Accept">>, <<"Accept">>},
                       {<<"Content-Type">>, <<"ContentType">>},
                       {<<"X-Amzn-SageMaker-Custom-Attributes">>, <<"CustomAttributes">>},
                       {<<"X-Amzn-SageMaker-Inference-Id">>, <<"InferenceId">>},
                       {<<"X-Amzn-SageMaker-Prefix-Aware-Id">>, <<"PrefixAwareId">>},
                       {<<"X-Amzn-SageMaker-Routing-Target-Name">>, <<"RoutingTargetName">>}
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
            {<<"Content-Type">>, <<"ContentType">>},
            {<<"X-Amzn-SageMaker-Custom-Attributes">>, <<"CustomAttributes">>},
            {<<"X-Amzn-Invoked-Production-Variant">>, <<"InvokedProductionVariant">>},
            {<<"X-Amzn-SageMaker-Invoked-Routed-Resource-Arn">>, <<"InvokedRoutedResourceArn">>},
            {<<"X-Amzn-SageMaker-Invoked-Routing-Reason">>, <<"RoutingReason">>}
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

%% @doc Submits an asynchronous inference request to an inference router.
%%
%% Before you call this operation, upload the input data to Amazon S3 in the
%% router's Amazon Web Services Region. The router returns as soon as it
%% accepts the request, and sends the request to one of the destinations of
%% the routing target. The destination reads the input from Amazon S3, and
%% the inference response is written to the Amazon S3 output path that the
%% routing target specifies.
%%
%% If a destination doesn't start the request within the routing
%% target's `MaxTimeInBacklogSeconds', the router moves the request
%% to another destination. After your model starts processing the request,
%% the request doesn't move. If no destination can take the request
%% before `RequestTTLSeconds' runs out, or every destination has been
%% tried, the router writes a failure object to the `FailureLocation' and
%% publishes a notification to the routing target's error topic, if one
%% is configured.
%%
%% For information about the permissions that the caller and each destination
%% need, see Send asynchronous requests through an inference router:
%% https://docs.aws.amazon.com/sagemaker/latest/dg/inference-router-async.html.
-spec invoke_inference_router_async(aws_client:aws_client(), binary() | list(), invoke_inference_router_async_input()) ->
    {ok, invoke_inference_router_async_output(), tuple()} |
    {error, any()} |
    {error, invoke_inference_router_async_errors(), tuple()}.
invoke_inference_router_async(Client, InferenceRouterName, Input) ->
    invoke_inference_router_async(Client, InferenceRouterName, Input, []).

-spec invoke_inference_router_async(aws_client:aws_client(), binary() | list(), invoke_inference_router_async_input(), proplists:proplist()) ->
    {ok, invoke_inference_router_async_output(), tuple()} |
    {error, any()} |
    {error, invoke_inference_router_async_errors(), tuple()}.
invoke_inference_router_async(Client, InferenceRouterName, Input0, Options0) ->
    Method = post,
    Path = ["/inference-routers/", aws_util:encode_uri(InferenceRouterName), "/async-invocations"],
    SuccessStatusCode = 202,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Amzn-SageMaker-Accept">>, <<"Accept">>},
                       {<<"X-Amzn-SageMaker-Content-Type">>, <<"ContentType">>},
                       {<<"X-Amzn-SageMaker-Custom-Attributes">>, <<"CustomAttributes">>},
                       {<<"X-Amzn-SageMaker-Filename">>, <<"Filename">>},
                       {<<"X-Amzn-SageMaker-Inference-Id">>, <<"InferenceId">>},
                       {<<"X-Amzn-SageMaker-InputLocation">>, <<"InputLocation">>},
                       {<<"X-Amzn-SageMaker-InvocationTimeoutSeconds">>, <<"InvocationTimeoutSeconds">>},
                       {<<"X-Amzn-SageMaker-RequestTTLSeconds">>, <<"RequestTTLSeconds">>},
                       {<<"X-Amzn-SageMaker-Routing-Target-Name">>, <<"RoutingTargetName">>},
                       {<<"X-Amzn-SageMaker-S3OutputPathExtension">>, <<"S3OutputPathExtension">>}
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
            {<<"X-Amzn-SageMaker-FailureLocation">>, <<"FailureLocation">>},
            {<<"X-Amzn-SageMaker-OutputLocation">>, <<"OutputLocation">>}
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
    {ok, Result, {integer(), list(), term()}} |
    {error, Error, {integer(), list(), term()}} |
    {error, term()} when
    Result :: map(),
    Error :: map().
request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) ->
  RequestFun = fun() -> do_request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) end,
  aws_request:request(RequestFun, Options).

do_request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) ->
    Client1 = Client#{service => <<"sagemaker">>},
    DefaultHost = build_host(<<"inferencerouter-runtime.sagemaker">>, Client1),
    URL0 = build_url(DefaultHost, Path, Client1),
    PathBin = erlang:iolist_to_binary(Path),
    {URL1, Host} = aws_util:apply_endpoint_url_override(URL0, DefaultHost, PathBin, <<"AWS_ENDPOINT_URL_SAGEMAKER_INFERENCE_ROUTER_RUNTIME">>),
    URL = aws_request:add_query(URL1, Query),
    AdditionalHeaders1 = [ {<<"Host">>, Host}
                         , {<<"Content-Type">>, <<"application/x-amz-json-1.1">>}
                         ],
    Payload =
      case proplists:get_value(send_body_as_binary, Options) of
         true when is_list(Input) ->
           proplists:get_value(<<"Body">>, Input, <<"">>);
         true when Input =:= undefined ->
           <<"">>;
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
    case response_body(Client) of
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
    {ok, Body} = response_body(Client),
    try
      DecodedError = jsx:decode(Body),
      {error, DecodedError, {StatusCode, ResponseHeaders, Client}}
    catch
      Error:Reason:Stack ->
        erlang:raise(error, {body_decode_failed, Error, Reason, StatusCode, Body}, Stack)
    end;
handle_response({error, Reason}, _, _DecodeBody) ->
  {error, Reason}.

%% hackney 1.x and 2.x return a client reference that is read with
%% hackney:body/1. hackney 3.0 removed hackney:body/1 and returns the body in
%% the response tuple, so a binary is already the body.
response_body(Body) when is_binary(Body) ->
    {ok, Body};
response_body(Client) ->
    apply(hackney, body, [Client]).

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

