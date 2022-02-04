%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc The Amazon SageMaker runtime API.
-module(aws_sagemaker_runtime).

-export([invoke_endpoint/3,
         invoke_endpoint/4,
         invoke_endpoint_async/3,
         invoke_endpoint_async/4]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc After you deploy a model into production using Amazon SageMaker
%% hosting services, your client applications use this API to get inferences
%% from the model hosted at the specified endpoint.
%%
%% For an overview of Amazon SageMaker, see How It Works.
%%
%% Amazon SageMaker strips all POST headers except those supported by the
%% API. Amazon SageMaker might add additional headers. You should not rely on
%% the behavior of headers outside those enumerated in the request syntax.
%%
%% Calls to `InvokeEndpoint' are authenticated by using Amazon Web Services
%% Signature Version 4. For information, see Authenticating Requests (Amazon
%% Web Services Signature Version 4) in the Amazon S3 API Reference.
%%
%% A customer's model containers must respond to requests within 60 seconds.
%% The model itself can have a maximum processing time of 60 seconds before
%% responding to invocations. If your model is going to take 50-60 seconds of
%% processing time, the SDK socket timeout should be set to be 70 seconds.
%%
%% Endpoints are scoped to an individual account, and are not public. The URL
%% does not contain the account ID, but Amazon SageMaker determines the
%% account ID from the authentication token that is supplied by the caller.
invoke_endpoint(Client, EndpointName, Input) ->
    invoke_endpoint(Client, EndpointName, Input, []).
invoke_endpoint(Client, EndpointName, Input0, Options0) ->
    Method = post,
    Path = ["/endpoints/", aws_util:encode_uri(EndpointName), "/invocations"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, true},
               {receive_body_as_binary, true}
               | Options0],


    HeadersMapping = [
                       {<<"Accept">>, <<"Accept">>},
                       {<<"Content-Type">>, <<"ContentType">>},
                       {<<"X-Amzn-SageMaker-Custom-Attributes">>, <<"CustomAttributes">>},
                       {<<"X-Amzn-SageMaker-Inference-Id">>, <<"InferenceId">>},
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
            {<<"Content-Type">>, <<"ContentType">>},
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

%% @doc After you deploy a model into production using Amazon SageMaker
%% hosting services, your client applications use this API to get inferences
%% from the model hosted at the specified endpoint in an asynchronous manner.
%%
%% Inference requests sent to this API are enqueued for asynchronous
%% processing. The processing of the inference request may or may not
%% complete before the you receive a response from this API. The response
%% from this API will not contain the result of the inference request but
%% contain information about where you can locate it.
%%
%% Amazon SageMaker strips all `POST' headers except those supported by the
%% API. Amazon SageMaker might add additional headers. You should not rely on
%% the behavior of headers outside those enumerated in the request syntax.
%%
%% Calls to `InvokeEndpointAsync' are authenticated by using Amazon Web
%% Services Signature Version 4. For information, see Authenticating Requests
%% (Amazon Web Services Signature Version 4) in the Amazon S3 API Reference.
invoke_endpoint_async(Client, EndpointName, Input) ->
    invoke_endpoint_async(Client, EndpointName, Input, []).
invoke_endpoint_async(Client, EndpointName, Input0, Options0) ->
    Method = post,
    Path = ["/endpoints/", aws_util:encode_uri(EndpointName), "/async-invocations"],
    SuccessStatusCode = 202,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    HeadersMapping = [
                       {<<"X-Amzn-SageMaker-Accept">>, <<"Accept">>},
                       {<<"X-Amzn-SageMaker-Content-Type">>, <<"ContentType">>},
                       {<<"X-Amzn-SageMaker-Custom-Attributes">>, <<"CustomAttributes">>},
                       {<<"X-Amzn-SageMaker-Inference-Id">>, <<"InferenceId">>},
                       {<<"X-Amzn-SageMaker-InputLocation">>, <<"InputLocation">>},
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
    AdditionalHeaders = [ {<<"Host">>, Host}
                        , {<<"Content-Type">>, <<"application/x-amz-json-1.1">>}
                        ],
    Headers1 = aws_request:add_headers(AdditionalHeaders, Headers0),

    Payload =
      case proplists:get_value(send_body_as_binary, Options) of
        true ->
          maps:get(<<"Body">>, Input, <<"">>);
        false ->
          encode_payload(Input)
      end,

    MethodBin = aws_request:method_to_binary(Method),
    SignedHeaders = aws_request:sign_request(Client1, MethodBin, URL, Headers1, Payload),
    Response = hackney:request(Method, URL, SignedHeaders, Payload, Options),
    DecodeBody = not proplists:get_value(receive_body_as_binary, Options),
    handle_response(Response, SuccessStatusCode, DecodeBody).

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
                       true -> jsx:decode(Body);
                       false -> #{<<"Body">> => Body}
                     end,
            {ok, Result, {StatusCode, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}, _, _DecodeBody) ->
    {ok, Body} = hackney:body(Client),
    Error = jsx:decode(Body),
    {error, Error, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}, _, _DecodeBody) ->
  {error, Reason}.

build_host(_EndpointPrefix, #{region := <<"local">>, endpoint := Endpoint}) ->
    Endpoint;
build_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
build_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

build_url(Host, Path0, Client) ->
    Proto = maps:get(proto, Client),
    Path = erlang:iolist_to_binary(Path0),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, Path], <<"">>).

-spec encode_payload(undefined | map()) -> binary().
encode_payload(undefined) ->
  <<>>;
encode_payload(Input) ->
  jsx:encode(Input).
