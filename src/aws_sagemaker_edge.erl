%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc SageMaker Edge Manager dataplane service for communicating with
%% active agents.
-module(aws_sagemaker_edge).

-export([get_deployments/2,
         get_deployments/3,
         get_device_registration/2,
         get_device_registration/3,
         send_heartbeat/2,
         send_heartbeat/3]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% checksum() :: #{
%%   <<"Sum">> => string(),
%%   <<"Type">> => list(any())
%% }
-type checksum() :: #{binary() => any()}.


%% Example:
%% definition() :: #{
%%   <<"Checksum">> => checksum(),
%%   <<"ModelHandle">> => string(),
%%   <<"S3Url">> => string(),
%%   <<"State">> => list(any())
%% }
-type definition() :: #{binary() => any()}.


%% Example:
%% deployment_model() :: #{
%%   <<"DesiredState">> => list(any()),
%%   <<"ModelHandle">> => string(),
%%   <<"ModelName">> => string(),
%%   <<"ModelVersion">> => string(),
%%   <<"RollbackFailureReason">> => string(),
%%   <<"State">> => list(any()),
%%   <<"Status">> => list(any()),
%%   <<"StatusReason">> => string()
%% }
-type deployment_model() :: #{binary() => any()}.


%% Example:
%% deployment_result() :: #{
%%   <<"DeploymentEndTime">> => non_neg_integer(),
%%   <<"DeploymentModels">> => list(deployment_model()),
%%   <<"DeploymentName">> => string(),
%%   <<"DeploymentStartTime">> => non_neg_integer(),
%%   <<"DeploymentStatus">> => string(),
%%   <<"DeploymentStatusMessage">> => string()
%% }
-type deployment_result() :: #{binary() => any()}.


%% Example:
%% edge_deployment() :: #{
%%   <<"Definitions">> => list(definition()),
%%   <<"DeploymentName">> => string(),
%%   <<"FailureHandlingPolicy">> => list(any()),
%%   <<"Type">> => list(any())
%% }
-type edge_deployment() :: #{binary() => any()}.


%% Example:
%% edge_metric() :: #{
%%   <<"Dimension">> => string(),
%%   <<"MetricName">> => string(),
%%   <<"Timestamp">> => non_neg_integer(),
%%   <<"Value">> => float()
%% }
-type edge_metric() :: #{binary() => any()}.


%% Example:
%% get_deployments_request() :: #{
%%   <<"DeviceFleetName">> := string(),
%%   <<"DeviceName">> := string()
%% }
-type get_deployments_request() :: #{binary() => any()}.


%% Example:
%% get_deployments_result() :: #{
%%   <<"Deployments">> => list(edge_deployment())
%% }
-type get_deployments_result() :: #{binary() => any()}.


%% Example:
%% get_device_registration_request() :: #{
%%   <<"DeviceFleetName">> := string(),
%%   <<"DeviceName">> := string()
%% }
-type get_device_registration_request() :: #{binary() => any()}.


%% Example:
%% get_device_registration_result() :: #{
%%   <<"CacheTTL">> => string(),
%%   <<"DeviceRegistration">> => string()
%% }
-type get_device_registration_result() :: #{binary() => any()}.


%% Example:
%% internal_service_exception() :: #{
%%   <<"Message">> => string()
%% }
-type internal_service_exception() :: #{binary() => any()}.


%% Example:
%% model() :: #{
%%   <<"LatestInference">> => non_neg_integer(),
%%   <<"LatestSampleTime">> => non_neg_integer(),
%%   <<"ModelMetrics">> => list(edge_metric()),
%%   <<"ModelName">> => string(),
%%   <<"ModelVersion">> => string()
%% }
-type model() :: #{binary() => any()}.


%% Example:
%% send_heartbeat_request() :: #{
%%   <<"AgentMetrics">> => list(edge_metric()),
%%   <<"AgentVersion">> := string(),
%%   <<"DeploymentResult">> => deployment_result(),
%%   <<"DeviceFleetName">> := string(),
%%   <<"DeviceName">> := string(),
%%   <<"Models">> => list(model())
%% }
-type send_heartbeat_request() :: #{binary() => any()}.

-type get_deployments_errors() ::
    internal_service_exception().

-type get_device_registration_errors() ::
    internal_service_exception().

-type send_heartbeat_errors() ::
    internal_service_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Use to get the active deployments from a device.
-spec get_deployments(aws_client:aws_client(), get_deployments_request()) ->
    {ok, get_deployments_result(), tuple()} |
    {error, any()} |
    {error, get_deployments_errors(), tuple()}.
get_deployments(Client, Input) ->
    get_deployments(Client, Input, []).

-spec get_deployments(aws_client:aws_client(), get_deployments_request(), proplists:proplist()) ->
    {ok, get_deployments_result(), tuple()} |
    {error, any()} |
    {error, get_deployments_errors(), tuple()}.
get_deployments(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetDeployments"],
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

%% @doc Use to check if a device is registered with SageMaker Edge Manager.
-spec get_device_registration(aws_client:aws_client(), get_device_registration_request()) ->
    {ok, get_device_registration_result(), tuple()} |
    {error, any()} |
    {error, get_device_registration_errors(), tuple()}.
get_device_registration(Client, Input) ->
    get_device_registration(Client, Input, []).

-spec get_device_registration(aws_client:aws_client(), get_device_registration_request(), proplists:proplist()) ->
    {ok, get_device_registration_result(), tuple()} |
    {error, any()} |
    {error, get_device_registration_errors(), tuple()}.
get_device_registration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetDeviceRegistration"],
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

%% @doc Use to get the current status of devices registered on SageMaker Edge
%% Manager.
-spec send_heartbeat(aws_client:aws_client(), send_heartbeat_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, send_heartbeat_errors(), tuple()}.
send_heartbeat(Client, Input) ->
    send_heartbeat(Client, Input, []).

-spec send_heartbeat(aws_client:aws_client(), send_heartbeat_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, send_heartbeat_errors(), tuple()}.
send_heartbeat(Client, Input0, Options0) ->
    Method = post,
    Path = ["/SendHeartbeat"],
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
    Host = build_host(<<"edge.sagemaker">>, Client1),
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
