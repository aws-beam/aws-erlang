%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Contains all data plane API operations and data types for Amazon
%% SageMaker Metrics.
%%
%% Use these APIs to put and retrieve (get) features related to your training
%% run.
%%
%% BatchPutMetrics:
%% https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_metrics_BatchPutMetrics.html
-module(aws_sagemaker_metrics).

-export([batch_get_metrics/2,
         batch_get_metrics/3,
         batch_put_metrics/2,
         batch_put_metrics/3]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% batch_get_metrics_request() :: #{
%%   <<"MetricQueries">> := list(metric_query())
%% }
-type batch_get_metrics_request() :: #{binary() => any()}.


%% Example:
%% batch_get_metrics_response() :: #{
%%   <<"MetricQueryResults">> => list(metric_query_result())
%% }
-type batch_get_metrics_response() :: #{binary() => any()}.


%% Example:
%% batch_put_metrics_error() :: #{
%%   <<"Code">> => list(any()),
%%   <<"MetricIndex">> => integer()
%% }
-type batch_put_metrics_error() :: #{binary() => any()}.


%% Example:
%% batch_put_metrics_request() :: #{
%%   <<"MetricData">> := list(raw_metric_data()),
%%   <<"TrialComponentName">> := string()
%% }
-type batch_put_metrics_request() :: #{binary() => any()}.


%% Example:
%% batch_put_metrics_response() :: #{
%%   <<"Errors">> => list(batch_put_metrics_error())
%% }
-type batch_put_metrics_response() :: #{binary() => any()}.


%% Example:
%% metric_query() :: #{
%%   <<"End">> => float(),
%%   <<"MetricName">> => string(),
%%   <<"MetricStat">> => list(any()),
%%   <<"Period">> => list(any()),
%%   <<"ResourceArn">> => string(),
%%   <<"Start">> => float(),
%%   <<"XAxisType">> => list(any())
%% }
-type metric_query() :: #{binary() => any()}.


%% Example:
%% metric_query_result() :: #{
%%   <<"Message">> => string(),
%%   <<"MetricValues">> => list(float()),
%%   <<"Status">> => list(any()),
%%   <<"XAxisValues">> => list(float())
%% }
-type metric_query_result() :: #{binary() => any()}.


%% Example:
%% raw_metric_data() :: #{
%%   <<"MetricName">> => string(),
%%   <<"Step">> => integer(),
%%   <<"Timestamp">> => non_neg_integer(),
%%   <<"Value">> => float()
%% }
-type raw_metric_data() :: #{binary() => any()}.



%%====================================================================
%% API
%%====================================================================

%% @doc Used to retrieve training metrics from SageMaker.
-spec batch_get_metrics(aws_client:aws_client(), batch_get_metrics_request()) ->
    {ok, batch_get_metrics_response(), tuple()} |
    {error, any()}.
batch_get_metrics(Client, Input) ->
    batch_get_metrics(Client, Input, []).

-spec batch_get_metrics(aws_client:aws_client(), batch_get_metrics_request(), proplists:proplist()) ->
    {ok, batch_get_metrics_response(), tuple()} |
    {error, any()}.
batch_get_metrics(Client, Input0, Options0) ->
    Method = post,
    Path = ["/BatchGetMetrics"],
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

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Used to ingest training metrics into SageMaker.
%%
%% These metrics can be visualized in SageMaker Studio.
-spec batch_put_metrics(aws_client:aws_client(), batch_put_metrics_request()) ->
    {ok, batch_put_metrics_response(), tuple()} |
    {error, any()}.
batch_put_metrics(Client, Input) ->
    batch_put_metrics(Client, Input, []).

-spec batch_put_metrics(aws_client:aws_client(), batch_put_metrics_request(), proplists:proplist()) ->
    {ok, batch_put_metrics_response(), tuple()} |
    {error, any()}.
batch_put_metrics(Client, Input0, Options0) ->
    Method = put,
    Path = ["/BatchPutMetrics"],
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
    Host = build_host(<<"metrics.sagemaker">>, Client1),
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
