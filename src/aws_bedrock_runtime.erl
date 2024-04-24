%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Describes the API operations for running inference using Amazon
%% Bedrock models.
-module(aws_bedrock_runtime).

-export([invoke_model/3,
         invoke_model/4,
         invoke_model_with_response_stream/3,
         invoke_model_with_response_stream/4]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => string()
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% invoke_model_request() :: #{
%%   <<"accept">> => string(),
%%   <<"body">> := binary(),
%%   <<"contentType">> => string(),
%%   <<"guardrailIdentifier">> => string(),
%%   <<"guardrailVersion">> => string(),
%%   <<"trace">> => list(any())
%% }
-type invoke_model_request() :: #{binary() => any()}.


%% Example:
%% invoke_model_response() :: #{
%%   <<"body">> => binary(),
%%   <<"contentType">> => string()
%% }
-type invoke_model_response() :: #{binary() => any()}.


%% Example:
%% invoke_model_with_response_stream_request() :: #{
%%   <<"accept">> => string(),
%%   <<"body">> := binary(),
%%   <<"contentType">> => string(),
%%   <<"guardrailIdentifier">> => string(),
%%   <<"guardrailVersion">> => string(),
%%   <<"trace">> => list(any())
%% }
-type invoke_model_with_response_stream_request() :: #{binary() => any()}.


%% Example:
%% invoke_model_with_response_stream_response() :: #{
%%   <<"body">> => list(),
%%   <<"contentType">> => string()
%% }
-type invoke_model_with_response_stream_response() :: #{binary() => any()}.


%% Example:
%% model_error_exception() :: #{
%%   <<"message">> => string(),
%%   <<"originalStatusCode">> => integer(),
%%   <<"resourceName">> => string()
%% }
-type model_error_exception() :: #{binary() => any()}.


%% Example:
%% model_not_ready_exception() :: #{
%%   <<"message">> => string()
%% }
-type model_not_ready_exception() :: #{binary() => any()}.


%% Example:
%% model_stream_error_exception() :: #{
%%   <<"message">> => string(),
%%   <<"originalMessage">> => string(),
%%   <<"originalStatusCode">> => integer()
%% }
-type model_stream_error_exception() :: #{binary() => any()}.


%% Example:
%% model_timeout_exception() :: #{
%%   <<"message">> => string()
%% }
-type model_timeout_exception() :: #{binary() => any()}.


%% Example:
%% payload_part() :: #{
%%   <<"bytes">> => binary()
%% }
-type payload_part() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"message">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.

-type invoke_model_errors() ::
    validation_exception() | 
    throttling_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    model_timeout_exception() | 
    model_not_ready_exception() | 
    model_error_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type invoke_model_with_response_stream_errors() ::
    validation_exception() | 
    throttling_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    model_timeout_exception() | 
    model_stream_error_exception() | 
    model_not_ready_exception() | 
    model_error_exception() | 
    internal_server_exception() | 
    access_denied_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Invokes the specified Amazon Bedrock model to run inference using the
%% prompt and inference parameters provided in the request body.
%%
%% You use model inference to generate text, images, and embeddings.
%%
%% For example code, see Invoke model code examples in the Amazon Bedrock
%% User Guide.
%%
%% This operation requires permission for the `bedrock:InvokeModel'
%% action.
-spec invoke_model(aws_client:aws_client(), binary() | list(), invoke_model_request()) ->
    {ok, invoke_model_response(), tuple()} |
    {error, any()} |
    {error, invoke_model_errors(), tuple()}.
invoke_model(Client, ModelId, Input) ->
    invoke_model(Client, ModelId, Input, []).

-spec invoke_model(aws_client:aws_client(), binary() | list(), invoke_model_request(), proplists:proplist()) ->
    {ok, invoke_model_response(), tuple()} |
    {error, any()} |
    {error, invoke_model_errors(), tuple()}.
invoke_model(Client, ModelId, Input0, Options0) ->
    Method = post,
    Path = ["/model/", aws_util:encode_uri(ModelId), "/invoke"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"Accept">>, <<"accept">>},
                       {<<"Content-Type">>, <<"contentType">>},
                       {<<"X-Amzn-Bedrock-GuardrailIdentifier">>, <<"guardrailIdentifier">>},
                       {<<"X-Amzn-Bedrock-GuardrailVersion">>, <<"guardrailVersion">>},
                       {<<"X-Amzn-Bedrock-Trace">>, <<"trace">>}
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
            {<<"Content-Type">>, <<"contentType">>}
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

%% @doc Invoke the specified Amazon Bedrock model to run inference using the
%% prompt and inference parameters provided in the request body.
%%
%% The response is returned in a stream.
%%
%% To see if a model supports streaming, call GetFoundationModel:
%% https://docs.aws.amazon.com/bedrock/latest/APIReference/API_GetFoundationModel.html
%% and check the `responseStreamingSupported' field in the response.
%%
%% The CLI doesn't support `InvokeModelWithResponseStream'.
%%
%% For example code, see Invoke model with streaming code
%% example in the Amazon Bedrock User Guide.
%%
%% This operation requires permissions to perform the
%% `bedrock:InvokeModelWithResponseStream' action.
-spec invoke_model_with_response_stream(aws_client:aws_client(), binary() | list(), invoke_model_with_response_stream_request()) ->
    {ok, invoke_model_with_response_stream_response(), tuple()} |
    {error, any()} |
    {error, invoke_model_with_response_stream_errors(), tuple()}.
invoke_model_with_response_stream(Client, ModelId, Input) ->
    invoke_model_with_response_stream(Client, ModelId, Input, []).

-spec invoke_model_with_response_stream(aws_client:aws_client(), binary() | list(), invoke_model_with_response_stream_request(), proplists:proplist()) ->
    {ok, invoke_model_with_response_stream_response(), tuple()} |
    {error, any()} |
    {error, invoke_model_with_response_stream_errors(), tuple()}.
invoke_model_with_response_stream(Client, ModelId, Input0, Options0) ->
    Method = post,
    Path = ["/model/", aws_util:encode_uri(ModelId), "/invoke-with-response-stream"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Amzn-Bedrock-Accept">>, <<"accept">>},
                       {<<"Content-Type">>, <<"contentType">>},
                       {<<"X-Amzn-Bedrock-GuardrailIdentifier">>, <<"guardrailIdentifier">>},
                       {<<"X-Amzn-Bedrock-GuardrailVersion">>, <<"guardrailVersion">>},
                       {<<"X-Amzn-Bedrock-Trace">>, <<"trace">>}
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
            {<<"X-Amzn-Bedrock-Content-Type">>, <<"contentType">>}
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
    Client1 = Client#{service => <<"bedrock">>},
    Host = build_host(<<"bedrock-runtime">>, Client1),
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
