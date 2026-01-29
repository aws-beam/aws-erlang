%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc The Amazon SageMaker AI runtime HTTP/2 API.
-module(aws_sagemaker_runtime_http2).

-export([invoke_endpoint_with_bidirectional_stream/3,
         invoke_endpoint_with_bidirectional_stream/4]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% input_validation_error() :: #{
%%   <<"ErrorCode">> => [string()],
%%   <<"Message">> => [string()]
%% }
-type input_validation_error() :: #{binary() => any()}.


%% Example:
%% internal_server_error() :: #{
%%   <<"ErrorCode">> => [string()],
%%   <<"Message">> => [string()]
%% }
-type internal_server_error() :: #{binary() => any()}.


%% Example:
%% internal_stream_failure() :: #{
%%   <<"Message">> => [string()]
%% }
-type internal_stream_failure() :: #{binary() => any()}.


%% Example:
%% invoke_endpoint_with_bidirectional_stream_input() :: #{
%%   <<"Body">> := list(),
%%   <<"ModelInvocationPath">> => [string()],
%%   <<"ModelQueryString">> => [string()],
%%   <<"TargetVariant">> => [string()]
%% }
-type invoke_endpoint_with_bidirectional_stream_input() :: #{binary() => any()}.


%% Example:
%% invoke_endpoint_with_bidirectional_stream_output() :: #{
%%   <<"Body">> => list(),
%%   <<"InvokedProductionVariant">> => [string()]
%% }
-type invoke_endpoint_with_bidirectional_stream_output() :: #{binary() => any()}.


%% Example:
%% model_error() :: #{
%%   <<"ErrorCode">> => [string()],
%%   <<"LogStreamArn">> => [string()],
%%   <<"Message">> => [string()],
%%   <<"OriginalMessage">> => [string()],
%%   <<"OriginalStatusCode">> => [integer()]
%% }
-type model_error() :: #{binary() => any()}.


%% Example:
%% model_stream_error() :: #{
%%   <<"ErrorCode">> => [string()],
%%   <<"Message">> => [string()]
%% }
-type model_stream_error() :: #{binary() => any()}.


%% Example:
%% request_payload_part() :: #{
%%   <<"Bytes">> => binary(),
%%   <<"CompletionState">> => [string()],
%%   <<"DataType">> => [string()],
%%   <<"P">> => [string()]
%% }
-type request_payload_part() :: #{binary() => any()}.


%% Example:
%% response_payload_part() :: #{
%%   <<"Bytes">> => binary(),
%%   <<"CompletionState">> => [string()],
%%   <<"DataType">> => [string()],
%%   <<"P">> => [string()]
%% }
-type response_payload_part() :: #{binary() => any()}.


%% Example:
%% service_unavailable_error() :: #{
%%   <<"ErrorCode">> => [string()],
%%   <<"Message">> => [string()]
%% }
-type service_unavailable_error() :: #{binary() => any()}.

-type invoke_endpoint_with_bidirectional_stream_errors() ::
    service_unavailable_error() | 
    model_stream_error() | 
    model_error() | 
    internal_stream_failure() | 
    internal_server_error() | 
    input_validation_error().

%%====================================================================
%% API
%%====================================================================

%% @doc Invokes a model endpoint with bidirectional streaming capabilities.
%%
%% This operation establishes a persistent connection that allows you to send
%% multiple requests and receive streaming responses from the model in
%% real-time.
%%
%% Bidirectional streaming is useful for interactive applications such as
%% chatbots, real-time translation, or any scenario where you need to
%% maintain a conversation-like interaction with the model. The connection
%% remains open, allowing you to send additional input and receive responses
%% without establishing a new connection for each request.
%%
%% For an overview of Amazon SageMaker AI, see How It Works:
%% https://docs.aws.amazon.com/sagemaker/latest/dg/how-it-works.html.
%%
%% Amazon SageMaker AI strips all POST headers except those supported by the
%% API. Amazon SageMaker AI might add additional headers. You should not rely
%% on the behavior of headers outside those enumerated in the request syntax.
%%
%% Calls to `InvokeEndpointWithBidirectionalStream' are authenticated by
%% using Amazon Web Services Signature Version 4. For information, see
%% Authenticating Requests (Amazon Web Services Signature Version 4):
%% https://docs.aws.amazon.com/AmazonS3/latest/API/sig-v4-authenticating-requests.html
%% in the Amazon S3 API Reference.
%%
%% The bidirectional stream maintains the connection until either the client
%% closes it or the model indicates completion. Each request and response in
%% the stream is sent as an event with optional headers for data type and
%% completion state.
%%
%% Endpoints are scoped to an individual account, and are not public. The URL
%% does not contain the account ID, but Amazon SageMaker AI determines the
%% account ID from the authentication token that is supplied by the caller.
-spec invoke_endpoint_with_bidirectional_stream(aws_client:aws_client(), binary() | list(), invoke_endpoint_with_bidirectional_stream_input()) ->
    {ok, invoke_endpoint_with_bidirectional_stream_output(), tuple()} |
    {error, any()} |
    {error, invoke_endpoint_with_bidirectional_stream_errors(), tuple()}.
invoke_endpoint_with_bidirectional_stream(Client, EndpointName, Input) ->
    invoke_endpoint_with_bidirectional_stream(Client, EndpointName, Input, []).

-spec invoke_endpoint_with_bidirectional_stream(aws_client:aws_client(), binary() | list(), invoke_endpoint_with_bidirectional_stream_input(), proplists:proplist()) ->
    {ok, invoke_endpoint_with_bidirectional_stream_output(), tuple()} |
    {error, any()} |
    {error, invoke_endpoint_with_bidirectional_stream_errors(), tuple()}.
invoke_endpoint_with_bidirectional_stream(Client, EndpointName, Input0, Options0) ->
    Method = post,
    Path = ["/endpoints/", aws_util:encode_uri(EndpointName), "/invocations-bidirectional-stream"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Amzn-SageMaker-Model-Invocation-Path">>, <<"ModelInvocationPath">>},
                       {<<"X-Amzn-SageMaker-Model-Query-String">>, <<"ModelQueryString">>},
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
            {<<"X-Amzn-Invoked-Production-Variant">>, <<"InvokedProductionVariant">>}
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
