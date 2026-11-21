%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Use the Amazon SageMaker Gateway Runtime API to run inference through
%% a
%% Global Inference Gateway.
%%
%% A Global Inference Gateway routes each request to
%% an inference gateway that serves the model named in the request.
%%
%% The request body is an OpenAI-compatible JSON object, sent with
%% `Content-Type: application/json`, and the model is selected by the `model`
%% key in that body. The content of the body is passed to the model server
%% unchanged, except for the `stream` flag, which each operation sets.
%%
%% Requests are signed with Signature Version 4 under the `sagemaker` signing
%% name. IAM actions are in the `sagemaker` namespace, for example
%% `sagemaker:InvokeGlobalInferenceGateway`. The default regional endpoint is
%% `gateway-runtime.sagemaker.{region}.amazonaws.com`.
-module(aws_sagemaker_gateway_runtime).

-export([invoke_global_inference_gateway/3,
         invoke_global_inference_gateway/4,
         invoke_global_inference_gateway_with_response_stream/3,
         invoke_global_inference_gateway_with_response_stream/4]).

-include_lib("hackney/include/hackney_lib.hrl").

%% hackney:body/1 is only called with hackney versions that still export it.
-ignore_xref([{hackney, body, 1}]).



%% Example:
%% access_denied_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% bad_gateway_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type bad_gateway_exception() :: #{binary() => any()}.


%% Example:
%% gateway_timeout_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type gateway_timeout_exception() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% internal_stream_failure() :: #{
%%   <<"Message">> => [string()]
%% }
-type internal_stream_failure() :: #{binary() => any()}.


%% Example:
%% invoke_global_inference_gateway_input() :: #{
%%   <<"Accept">> => [string()],
%%   <<"Body">> := binary(),
%%   <<"ContentType">> := string(),
%%   <<"CustomerIdentityToken">> => string()
%% }
-type invoke_global_inference_gateway_input() :: #{binary() => any()}.


%% Example:
%% invoke_global_inference_gateway_output() :: #{
%%   <<"Body">> => binary()
%% }
-type invoke_global_inference_gateway_output() :: #{binary() => any()}.


%% Example:
%% invoke_global_inference_gateway_with_response_stream_input() :: #{
%%   <<"Accept">> => [string()],
%%   <<"Body">> := binary(),
%%   <<"ContentType">> := string(),
%%   <<"CustomerIdentityToken">> => string()
%% }
-type invoke_global_inference_gateway_with_response_stream_input() :: #{binary() => any()}.


%% Example:
%% invoke_global_inference_gateway_with_response_stream_output() :: #{
%%   <<"Body">> => list()
%% }
-type invoke_global_inference_gateway_with_response_stream_output() :: #{binary() => any()}.


%% Example:
%% model_stream_error() :: #{
%%   <<"ErrorCode">> => list(any()),
%%   <<"Message">> => [string()]
%% }
-type model_stream_error() :: #{binary() => any()}.


%% Example:
%% payload_part() :: #{
%%   <<"Bytes">> => binary()
%% }
-type payload_part() :: #{binary() => any()}.


%% Example:
%% payload_too_large_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type payload_too_large_exception() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Message">> => [string()],
%%   <<"ResourceId">> => [string()],
%%   <<"ResourceType">> => [string()]
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


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

-type invoke_global_inference_gateway_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception() | 
    payload_too_large_exception() | 
    internal_server_exception() | 
    gateway_timeout_exception() | 
    bad_gateway_exception() | 
    access_denied_exception().

-type invoke_global_inference_gateway_with_response_stream_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception() | 
    payload_too_large_exception() | 
    model_stream_error() | 
    internal_stream_failure() | 
    internal_server_exception() | 
    gateway_timeout_exception() | 
    bad_gateway_exception() | 
    access_denied_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Buffered (non-streaming) inference.
%%
%% Returns the full OpenAI completion body.
%%
%% Errors carry their origin in the `Message` prefix. Every typed error's
%% text
%% is in the `Message` member (JSON key `Message`), and starts with one of
%% these
%% prefixes:
%%
%% * `Global Inference Gateway: ` -- the gateway rejected or failed the
%% request
%% itself: validation, authorization, throttling, routing (the gateway or
%% model was not found, or no capacity is available), a gateway limit or time
%% limit, or failing to reach the inference gateway
%% (`Global Inference Gateway: could not reach the inference gateway: `,
%% or `Global Inference Gateway: timed out waiting for the inference
%% gateway`).
%% This includes the 400 for an invalid request and the 413 for a request
%% body that is too large.
%% * `inference gateway: ` -- the inference gateway serving the model
%% returned
%% an error status. The message gives that status code and up to 256 bytes of
%% its error message, for example `inference gateway: 503 `. A
%% BadGatewayException can instead read
%% `inference gateway: response ended unexpectedly`, with no status, when the
%% inference gateway's connection failed while it was sending the
%% response.
%% * `inference gateway (): ` -- the same, when the inference
%% gateway reports which of its components produced the error, for example
%% `inference gateway (model server): 502 `. The component is one of:
%% * `config` -- the inference gateway's configuration and proxy layer.
%% * `scheduler` -- the inference gateway's request scheduler.
%% * `model selector` -- the inference gateway's model selector.
%% * `model server` -- the model server.
%%
%% Every error status the inference gateway returns is a typed error, chosen
%% by that status:
%%
%% * 400 and any other 4xx not listed here -- a 400 validation error.
%% * 401 and 403 -- AccessDeniedException (403).
%% * 404 -- ResourceNotFoundException.
%% * 408 -- GatewayTimeoutException (504).
%% * 429 -- ThrottlingException, with the `Retry-After` header.
%% * 502, and 500, 503 or any other 5xx not listed here --
%% BadGatewayException
%% (502). A 500 or 503 from the inference gateway comes after the request was
%% dispatched, so it is not modeled as retryable, and the gateway may already
%% have tried another inference gateway. Standard SDK retry modes may still
%% retry a 5xx status; set max attempts to 1 if a repeated inference is
%% unacceptable.
%% * 504 -- GatewayTimeoutException.
-spec invoke_global_inference_gateway(aws_client:aws_client(), binary() | list(), invoke_global_inference_gateway_input()) ->
    {ok, invoke_global_inference_gateway_output(), tuple()} |
    {error, any()} |
    {error, invoke_global_inference_gateway_errors(), tuple()}.
invoke_global_inference_gateway(Client, GatewayId, Input) ->
    invoke_global_inference_gateway(Client, GatewayId, Input, []).

-spec invoke_global_inference_gateway(aws_client:aws_client(), binary() | list(), invoke_global_inference_gateway_input(), proplists:proplist()) ->
    {ok, invoke_global_inference_gateway_output(), tuple()} |
    {error, any()} |
    {error, invoke_global_inference_gateway_errors(), tuple()}.
invoke_global_inference_gateway(Client, GatewayId, Input0, Options0) ->
    Method = post,
    Path = ["/global-inference-gateway/", aws_util:encode_uri(GatewayId), "/invocations"],
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
                       {<<"X-Amzn-SageMaker-Customer-Identity-Token">>, <<"CustomerIdentityToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Streaming inference.
%%
%% Returns an AWS event stream of PayloadPart events that
%% carry the model server's server-sent event (SSE) bytes, so SDKs decode
%% the
%% stream into events for you.
%%
%% The errors listed for this operation, other than ModelStreamError and
%% InternalStreamFailure, are returned before the response starts (before the
%% 200 status), so they end the request, not the stream. None of them can
%% occur after the 200. ModelStreamError and InternalStreamFailure appear
%% only
%% as events in the stream, after the 200. Once the 200 is sent, the stream
%% carries the response as PayloadPart events. If reading the inference
%% gateway's response fails, the stream carries one InternalStreamFailure
%% event and then ends. ModelStreamError is reserved and is not currently
%% sent.
%%
%% Errors carry their origin in the `Message` prefix. Every typed error's
%% text
%% is in the `Message` member (JSON key `Message`), and starts with one of
%% these
%% prefixes:
%%
%% * `Global Inference Gateway: ` -- the gateway rejected or failed the
%% request
%% itself: validation, authorization, throttling, routing (the gateway or
%% model was not found, or no capacity is available), a gateway limit or time
%% limit, or failing to reach the inference gateway
%% (`Global Inference Gateway: could not reach the inference gateway: `,
%% or `Global Inference Gateway: timed out waiting for the inference
%% gateway`).
%% This includes the 400 for an invalid request and the 413 for a request
%% body that is too large.
%% * `inference gateway: ` -- the inference gateway serving the model
%% returned
%% an error status. The message gives that status code and up to 256 bytes of
%% its error message, for example `inference gateway: 503 `.
%% * `inference gateway (): ` -- the same, when the inference
%% gateway reports which of its components produced the error, for example
%% `inference gateway (model server): 502 `. The component is one of:
%% * `config` -- the inference gateway's configuration and proxy layer.
%% * `scheduler` -- the inference gateway's request scheduler.
%% * `model selector` -- the inference gateway's model selector.
%% * `model server` -- the model server.
%%
%% An InternalStreamFailure event's `Message` uses the same prefixes,
%% with the
%% same text the buffered operation uses for the same failure. Its
%% `inference gateway: ` message carries no status:
%% `inference gateway: response ended unexpectedly` when the inference
%% gateway's connection failed while it was sending the response.
%%
%% Every error status the inference gateway returns before the 200 is a typed
%% error, chosen by that status as for InvokeGlobalInferenceGateway:
%%
%% * 400 and any other 4xx not listed here -- a 400 validation error.
%% * 401 and 403 -- AccessDeniedException (403).
%% * 404 -- ResourceNotFoundException.
%% * 408 -- GatewayTimeoutException (504).
%% * 429 -- ThrottlingException, with the `Retry-After` header.
%% * 502, and 500, 503 or any other 5xx not listed here --
%% BadGatewayException
%% (502). A 500 or 503 from the inference gateway comes after the request was
%% dispatched, so it is not modeled as retryable, and the gateway may already
%% have tried another inference gateway. Standard SDK retry modes may still
%% retry a 5xx status; set max attempts to 1 if a repeated inference is
%% unacceptable.
%% * 504 -- GatewayTimeoutException.
-spec invoke_global_inference_gateway_with_response_stream(aws_client:aws_client(), binary() | list(), invoke_global_inference_gateway_with_response_stream_input()) ->
    {ok, invoke_global_inference_gateway_with_response_stream_output(), tuple()} |
    {error, any()} |
    {error, invoke_global_inference_gateway_with_response_stream_errors(), tuple()}.
invoke_global_inference_gateway_with_response_stream(Client, GatewayId, Input) ->
    invoke_global_inference_gateway_with_response_stream(Client, GatewayId, Input, []).

-spec invoke_global_inference_gateway_with_response_stream(aws_client:aws_client(), binary() | list(), invoke_global_inference_gateway_with_response_stream_input(), proplists:proplist()) ->
    {ok, invoke_global_inference_gateway_with_response_stream_output(), tuple()} |
    {error, any()} |
    {error, invoke_global_inference_gateway_with_response_stream_errors(), tuple()}.
invoke_global_inference_gateway_with_response_stream(Client, GatewayId, Input0, Options0) ->
    Method = post,
    Path = ["/global-inference-gateway/", aws_util:encode_uri(GatewayId), "/invocations-response-stream"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, true),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"Accept">>, <<"Accept">>},
                       {<<"Content-Type">>, <<"ContentType">>},
                       {<<"X-Amzn-SageMaker-Customer-Identity-Token">>, <<"CustomerIdentityToken">>}
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
    DefaultHost = build_host(<<"gateway-runtime.sagemaker">>, Client1),
    URL0 = build_url(DefaultHost, Path, Client1),
    PathBin = erlang:iolist_to_binary(Path),
    {URL1, Host} = aws_util:apply_endpoint_url_override(URL0, DefaultHost, PathBin, <<"AWS_ENDPOINT_URL_SAGEMAKER_GATEWAY_RUNTIME">>),
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

