%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc The Amazon SageMaker AI runtime API.
-module(aws_sagemaker_runtime).

-export([invoke_endpoint/3,
         invoke_endpoint/4,
         invoke_endpoint_async/3,
         invoke_endpoint_async/4,
         invoke_endpoint_with_response_stream/3,
         invoke_endpoint_with_response_stream/4]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% internal_dependency_exception() :: #{
%%   <<"Message">> => string()
%% }
-type internal_dependency_exception() :: #{binary() => any()}.


%% Example:
%% internal_failure() :: #{
%%   <<"Message">> => string()
%% }
-type internal_failure() :: #{binary() => any()}.


%% Example:
%% internal_stream_failure() :: #{
%%   <<"Message">> => string()
%% }
-type internal_stream_failure() :: #{binary() => any()}.


%% Example:
%% invoke_endpoint_async_input() :: #{
%%   <<"Accept">> => string(),
%%   <<"ContentType">> => string(),
%%   <<"CustomAttributes">> => string(),
%%   <<"InferenceId">> => string(),
%%   <<"InputLocation">> := string(),
%%   <<"InvocationTimeoutSeconds">> => integer(),
%%   <<"RequestTTLSeconds">> => integer()
%% }
-type invoke_endpoint_async_input() :: #{binary() => any()}.


%% Example:
%% invoke_endpoint_async_output() :: #{
%%   <<"FailureLocation">> => string(),
%%   <<"InferenceId">> => string(),
%%   <<"OutputLocation">> => string()
%% }
-type invoke_endpoint_async_output() :: #{binary() => any()}.


%% Example:
%% invoke_endpoint_input() :: #{
%%   <<"Accept">> => string(),
%%   <<"Body">> := binary(),
%%   <<"ContentType">> => string(),
%%   <<"CustomAttributes">> => string(),
%%   <<"EnableExplanations">> => string(),
%%   <<"InferenceComponentName">> => string(),
%%   <<"InferenceId">> => string(),
%%   <<"SessionId">> => string(),
%%   <<"TargetContainerHostname">> => string(),
%%   <<"TargetModel">> => string(),
%%   <<"TargetVariant">> => string()
%% }
-type invoke_endpoint_input() :: #{binary() => any()}.


%% Example:
%% invoke_endpoint_output() :: #{
%%   <<"Body">> => binary(),
%%   <<"ClosedSessionId">> => string(),
%%   <<"ContentType">> => string(),
%%   <<"CustomAttributes">> => string(),
%%   <<"InvokedProductionVariant">> => string(),
%%   <<"NewSessionId">> => string()
%% }
-type invoke_endpoint_output() :: #{binary() => any()}.


%% Example:
%% invoke_endpoint_with_response_stream_input() :: #{
%%   <<"Accept">> => string(),
%%   <<"Body">> := binary(),
%%   <<"ContentType">> => string(),
%%   <<"CustomAttributes">> => string(),
%%   <<"InferenceComponentName">> => string(),
%%   <<"InferenceId">> => string(),
%%   <<"SessionId">> => string(),
%%   <<"TargetContainerHostname">> => string(),
%%   <<"TargetVariant">> => string()
%% }
-type invoke_endpoint_with_response_stream_input() :: #{binary() => any()}.


%% Example:
%% invoke_endpoint_with_response_stream_output() :: #{
%%   <<"Body">> => list(),
%%   <<"ContentType">> => string(),
%%   <<"CustomAttributes">> => string(),
%%   <<"InvokedProductionVariant">> => string()
%% }
-type invoke_endpoint_with_response_stream_output() :: #{binary() => any()}.


%% Example:
%% model_error() :: #{
%%   <<"LogStreamArn">> => string(),
%%   <<"Message">> => string(),
%%   <<"OriginalMessage">> => string(),
%%   <<"OriginalStatusCode">> => integer()
%% }
-type model_error() :: #{binary() => any()}.


%% Example:
%% model_not_ready_exception() :: #{
%%   <<"Message">> => string()
%% }
-type model_not_ready_exception() :: #{binary() => any()}.


%% Example:
%% model_stream_error() :: #{
%%   <<"ErrorCode">> => string(),
%%   <<"Message">> => string()
%% }
-type model_stream_error() :: #{binary() => any()}.


%% Example:
%% payload_part() :: #{
%%   <<"Bytes">> => binary()
%% }
-type payload_part() :: #{binary() => any()}.


%% Example:
%% service_unavailable() :: #{
%%   <<"Message">> => string()
%% }
-type service_unavailable() :: #{binary() => any()}.


%% Example:
%% validation_error() :: #{
%%   <<"Message">> => string()
%% }
-type validation_error() :: #{binary() => any()}.

-type invoke_endpoint_errors() ::
    validation_error() | 
    service_unavailable() | 
    model_not_ready_exception() | 
    model_error() | 
    internal_failure() | 
    internal_dependency_exception().

-type invoke_endpoint_async_errors() ::
    validation_error() | 
    service_unavailable() | 
    internal_failure().

-type invoke_endpoint_with_response_stream_errors() ::
    validation_error() | 
    service_unavailable() | 
    model_stream_error() | 
    model_error() | 
    internal_stream_failure() | 
    internal_failure().

%%====================================================================
%% API
%%====================================================================

%% @doc After you deploy a model into production using Amazon SageMaker AI
%% hosting services,
%% your client applications use this API to get inferences from the model
%% hosted at the
%% specified endpoint.
%%
%% For an overview of Amazon SageMaker AI, see How It Works:
%% https://docs.aws.amazon.com/sagemaker/latest/dg/how-it-works.html.
%%
%% Amazon SageMaker AI strips all POST headers except those supported by the
%% API. Amazon SageMaker AI might add
%% additional headers. You should not rely on the behavior of headers outside
%% those
%% enumerated in the request syntax.
%%
%% Calls to `InvokeEndpoint' are authenticated by using Amazon Web
%% Services
%% Signature Version 4. For information, see Authenticating
%% Requests (Amazon Web Services Signature Version 4):
%% https://docs.aws.amazon.com/AmazonS3/latest/API/sig-v4-authenticating-requests.html
%% in the Amazon S3 API Reference.
%%
%% A customer's model containers must respond to requests within 60
%% seconds. The model
%% itself can have a maximum processing time of 60 seconds before responding
%% to
%% invocations. If your model is going to take 50-60 seconds of processing
%% time, the SDK
%% socket timeout should be set to be 70 seconds.
%%
%% Endpoints are scoped to an individual account, and are not public. The URL
%% does
%% not contain the account ID, but Amazon SageMaker AI determines the account
%% ID from
%% the authentication token that is supplied by the caller.
-spec invoke_endpoint(aws_client:aws_client(), binary() | list(), invoke_endpoint_input()) ->
    {ok, invoke_endpoint_output(), tuple()} |
    {error, any()} |
    {error, invoke_endpoint_errors(), tuple()}.
invoke_endpoint(Client, EndpointName, Input) ->
    invoke_endpoint(Client, EndpointName, Input, []).

-spec invoke_endpoint(aws_client:aws_client(), binary() | list(), invoke_endpoint_input(), proplists:proplist()) ->
    {ok, invoke_endpoint_output(), tuple()} |
    {error, any()} |
    {error, invoke_endpoint_errors(), tuple()}.
invoke_endpoint(Client, EndpointName, Input0, Options0) ->
    Method = post,
    Path = ["/endpoints/", aws_util:encode_uri(EndpointName), "/invocations"],
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
                       {<<"X-Amzn-SageMaker-Enable-Explanations">>, <<"EnableExplanations">>},
                       {<<"X-Amzn-SageMaker-Inference-Component">>, <<"InferenceComponentName">>},
                       {<<"X-Amzn-SageMaker-Inference-Id">>, <<"InferenceId">>},
                       {<<"X-Amzn-SageMaker-Session-Id">>, <<"SessionId">>},
                       {<<"X-Amzn-SageMaker-Target-Container-Hostname">>, <<"TargetContainerHostname">>},
                       {<<"X-Amzn-SageMaker-Target-Model">>, <<"TargetModel">>},
                       {<<"X-Amzn-SageMaker-Target-Variant">>, <<"TargetVariant">>}
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
            {<<"X-Amzn-SageMaker-Closed-Session-Id">>, <<"ClosedSessionId">>},
            {<<"Content-Type">>, <<"ContentType">>},
            {<<"X-Amzn-SageMaker-Custom-Attributes">>, <<"CustomAttributes">>},
            {<<"x-Amzn-Invoked-Production-Variant">>, <<"InvokedProductionVariant">>},
            {<<"X-Amzn-SageMaker-New-Session-Id">>, <<"NewSessionId">>}
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

%% @doc After you deploy a model into production using Amazon SageMaker AI
%% hosting services,
%% your client applications use this API to get inferences from the model
%% hosted at the
%% specified endpoint in an asynchronous manner.
%%
%% Inference requests sent to this API are enqueued for asynchronous
%% processing. The
%% processing of the inference request may or may not complete before you
%% receive a
%% response from this API. The response from this API will not contain the
%% result of the
%% inference request but contain information about where you can locate it.
%%
%% Amazon SageMaker AI strips all POST headers except those supported by the
%% API. Amazon SageMaker AI might add
%% additional headers. You should not rely on the behavior of headers outside
%% those
%% enumerated in the request syntax.
%%
%% Calls to `InvokeEndpointAsync' are authenticated by using Amazon Web
%% Services Signature Version 4. For information, see Authenticating
%% Requests (Amazon Web Services Signature Version 4):
%% https://docs.aws.amazon.com/AmazonS3/latest/API/sig-v4-authenticating-requests.html
%% in the Amazon S3 API Reference.
-spec invoke_endpoint_async(aws_client:aws_client(), binary() | list(), invoke_endpoint_async_input()) ->
    {ok, invoke_endpoint_async_output(), tuple()} |
    {error, any()} |
    {error, invoke_endpoint_async_errors(), tuple()}.
invoke_endpoint_async(Client, EndpointName, Input) ->
    invoke_endpoint_async(Client, EndpointName, Input, []).

-spec invoke_endpoint_async(aws_client:aws_client(), binary() | list(), invoke_endpoint_async_input(), proplists:proplist()) ->
    {ok, invoke_endpoint_async_output(), tuple()} |
    {error, any()} |
    {error, invoke_endpoint_async_errors(), tuple()}.
invoke_endpoint_async(Client, EndpointName, Input0, Options0) ->
    Method = post,
    Path = ["/endpoints/", aws_util:encode_uri(EndpointName), "/async-invocations"],
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
                       {<<"X-Amzn-SageMaker-Inference-Id">>, <<"InferenceId">>},
                       {<<"X-Amzn-SageMaker-InputLocation">>, <<"InputLocation">>},
                       {<<"X-Amzn-SageMaker-InvocationTimeoutSeconds">>, <<"InvocationTimeoutSeconds">>},
                       {<<"X-Amzn-SageMaker-RequestTTLSeconds">>, <<"RequestTTLSeconds">>}
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

%% @doc Invokes a model at the specified endpoint to return the inference
%% response as a
%% stream.
%%
%% The inference stream provides the response payload incrementally as a
%% series of
%% parts. Before you can get an inference stream, you must have access to a
%% model that's
%% deployed using Amazon SageMaker AI hosting services, and the container for
%% that model
%% must support inference streaming.
%%
%% For more information that can help you use this API, see the following
%% sections in the
%% Amazon SageMaker AI Developer Guide:
%%
%% For information about how to add streaming support to a model, see How
%% Containers Serve Requests:
%% https://docs.aws.amazon.com/sagemaker/latest/dg/your-algorithms-inference-code.html#your-algorithms-inference-code-how-containe-serves-requests.
%%
%% For information about how to process the streaming response, see Invoke
%% real-time endpoints:
%% https://docs.aws.amazon.com/sagemaker/latest/dg/realtime-endpoints-test-endpoints.html.
%%
%% Before you can use this operation, your IAM permissions must allow the
%% `sagemaker:InvokeEndpoint' action. For more information about Amazon
%% SageMaker AI actions for IAM policies, see Actions, resources, and
%% condition keys for Amazon SageMaker AI:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazonsagemaker.html
%% in the IAM Service Authorization
%% Reference.
%%
%% Amazon SageMaker AI strips all POST headers except those supported by the
%% API. Amazon SageMaker AI might add
%% additional headers. You should not rely on the behavior of headers outside
%% those
%% enumerated in the request syntax.
%%
%% Calls to `InvokeEndpointWithResponseStream' are authenticated by using
%% Amazon Web Services Signature Version 4. For information, see
%% Authenticating Requests (Amazon Web Services Signature Version 4):
%% https://docs.aws.amazon.com/AmazonS3/latest/API/sig-v4-authenticating-requests.html
%% in the
%% Amazon S3 API Reference.
-spec invoke_endpoint_with_response_stream(aws_client:aws_client(), binary() | list(), invoke_endpoint_with_response_stream_input()) ->
    {ok, invoke_endpoint_with_response_stream_output(), tuple()} |
    {error, any()} |
    {error, invoke_endpoint_with_response_stream_errors(), tuple()}.
invoke_endpoint_with_response_stream(Client, EndpointName, Input) ->
    invoke_endpoint_with_response_stream(Client, EndpointName, Input, []).

-spec invoke_endpoint_with_response_stream(aws_client:aws_client(), binary() | list(), invoke_endpoint_with_response_stream_input(), proplists:proplist()) ->
    {ok, invoke_endpoint_with_response_stream_output(), tuple()} |
    {error, any()} |
    {error, invoke_endpoint_with_response_stream_errors(), tuple()}.
invoke_endpoint_with_response_stream(Client, EndpointName, Input0, Options0) ->
    Method = post,
    Path = ["/endpoints/", aws_util:encode_uri(EndpointName), "/invocations-response-stream"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, true),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Amzn-SageMaker-Accept">>, <<"Accept">>},
                       {<<"Content-Type">>, <<"ContentType">>},
                       {<<"X-Amzn-SageMaker-Custom-Attributes">>, <<"CustomAttributes">>},
                       {<<"X-Amzn-SageMaker-Inference-Component">>, <<"InferenceComponentName">>},
                       {<<"X-Amzn-SageMaker-Inference-Id">>, <<"InferenceId">>},
                       {<<"X-Amzn-SageMaker-Session-Id">>, <<"SessionId">>},
                       {<<"X-Amzn-SageMaker-Target-Container-Hostname">>, <<"TargetContainerHostname">>},
                       {<<"X-Amzn-SageMaker-Target-Variant">>, <<"TargetVariant">>}
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
            {<<"X-Amzn-SageMaker-Content-Type">>, <<"ContentType">>},
            {<<"X-Amzn-SageMaker-Custom-Attributes">>, <<"CustomAttributes">>},
            {<<"x-Amzn-Invoked-Production-Variant">>, <<"InvokedProductionVariant">>}
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
    Client1 = Client#{service => <<"sagemaker">>},
    Host = build_host(<<"runtime.sagemaker">>, Client1),
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
