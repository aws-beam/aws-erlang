%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc
%% Amazon CloudWatch Obsersavability Admin to control temletry config for
%% your AWS Organization or account.
%%
%% Telemetry config conﬁg to discover and understand the state of telemetry
%% conﬁguration for your AWS resources from a central view in the CloudWatch
%% console. Telemetry conﬁg simpliﬁes the process of auditing your telemetry
%% collection conﬁgurations across multiple resource types across your AWS
%% Organization or account.
%% For more information, see Auditing CloudWatch telemetry conﬁgurations:
%% https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/telemetry-config-cloudwatch.html
%% in the CloudWatch User Guide.
%%
%% For information on the permissions you need to use this API, see Identity
%% and access management for Amazon CloudWatch:
%% https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/auth-and-access-control-cw.html
%% in the CloudWatch User Guide.
-module(aws_observabilityadmin).

-export([get_telemetry_evaluation_status/2,
         get_telemetry_evaluation_status/3,
         get_telemetry_evaluation_status_for_organization/2,
         get_telemetry_evaluation_status_for_organization/3,
         list_resource_telemetry/2,
         list_resource_telemetry/3,
         list_resource_telemetry_for_organization/2,
         list_resource_telemetry_for_organization/3,
         start_telemetry_evaluation/2,
         start_telemetry_evaluation/3,
         start_telemetry_evaluation_for_organization/2,
         start_telemetry_evaluation_for_organization/3,
         stop_telemetry_evaluation/2,
         stop_telemetry_evaluation/3,
         stop_telemetry_evaluation_for_organization/2,
         stop_telemetry_evaluation_for_organization/3]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% access_denied_exception() :: #{
%%   <<"Message">> => [string()],
%%   <<"amznErrorType">> => [string()]
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% get_telemetry_evaluation_status_for_organization_output() :: #{
%%   <<"FailureReason">> => string(),
%%   <<"Status">> => list(any())
%% }
-type get_telemetry_evaluation_status_for_organization_output() :: #{binary() => any()}.


%% Example:
%% get_telemetry_evaluation_status_output() :: #{
%%   <<"FailureReason">> => string(),
%%   <<"Status">> => list(any())
%% }
-type get_telemetry_evaluation_status_output() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"Message">> => [string()],
%%   <<"amznErrorType">> => [string()]
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% list_resource_telemetry_for_organization_input() :: #{
%%   <<"AccountIdentifiers">> => list(string()()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ResourceIdentifierPrefix">> => string(),
%%   <<"ResourceTags">> => map(),
%%   <<"ResourceTypes">> => list(list(any())()),
%%   <<"TelemetryConfigurationState">> => map()
%% }
-type list_resource_telemetry_for_organization_input() :: #{binary() => any()}.


%% Example:
%% list_resource_telemetry_for_organization_output() :: #{
%%   <<"NextToken">> => string(),
%%   <<"TelemetryConfigurations">> => list(telemetry_configuration()())
%% }
-type list_resource_telemetry_for_organization_output() :: #{binary() => any()}.


%% Example:
%% list_resource_telemetry_input() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ResourceIdentifierPrefix">> => string(),
%%   <<"ResourceTags">> => map(),
%%   <<"ResourceTypes">> => list(list(any())()),
%%   <<"TelemetryConfigurationState">> => map()
%% }
-type list_resource_telemetry_input() :: #{binary() => any()}.


%% Example:
%% list_resource_telemetry_output() :: #{
%%   <<"NextToken">> => string(),
%%   <<"TelemetryConfigurations">> => list(telemetry_configuration()())
%% }
-type list_resource_telemetry_output() :: #{binary() => any()}.


%% Example:
%% telemetry_configuration() :: #{
%%   <<"AccountIdentifier">> => string(),
%%   <<"LastUpdateTimeStamp">> => [float()],
%%   <<"ResourceIdentifier">> => string(),
%%   <<"ResourceTags">> => map(),
%%   <<"ResourceType">> => list(any()),
%%   <<"TelemetryConfigurationState">> => map()
%% }
-type telemetry_configuration() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type validation_exception() :: #{binary() => any()}.

-type get_telemetry_evaluation_status_errors() ::
    internal_server_exception() | 
    access_denied_exception().

-type get_telemetry_evaluation_status_for_organization_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_resource_telemetry_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_resource_telemetry_for_organization_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type start_telemetry_evaluation_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type start_telemetry_evaluation_for_organization_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type stop_telemetry_evaluation_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type stop_telemetry_evaluation_for_organization_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    access_denied_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc
%% Returns the current onboarding status of the telemetry config feature,
%% including the status of the feature and reason the feature failed to start
%% or stop.
-spec get_telemetry_evaluation_status(aws_client:aws_client(), #{}) ->
    {ok, get_telemetry_evaluation_status_output(), tuple()} |
    {error, any()} |
    {error, get_telemetry_evaluation_status_errors(), tuple()}.
get_telemetry_evaluation_status(Client, Input) ->
    get_telemetry_evaluation_status(Client, Input, []).

-spec get_telemetry_evaluation_status(aws_client:aws_client(), #{}, proplists:proplist()) ->
    {ok, get_telemetry_evaluation_status_output(), tuple()} |
    {error, any()} |
    {error, get_telemetry_evaluation_status_errors(), tuple()}.
get_telemetry_evaluation_status(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetTelemetryEvaluationStatus"],
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

%% @doc
%% This returns the onboarding status of the telemetry configuration feature
%% for the organization.
%%
%% It can only be called by a Management Account of an AWS Organization or an
%% assigned Delegated Admin Account of AWS CloudWatch telemetry config.
-spec get_telemetry_evaluation_status_for_organization(aws_client:aws_client(), #{}) ->
    {ok, get_telemetry_evaluation_status_for_organization_output(), tuple()} |
    {error, any()} |
    {error, get_telemetry_evaluation_status_for_organization_errors(), tuple()}.
get_telemetry_evaluation_status_for_organization(Client, Input) ->
    get_telemetry_evaluation_status_for_organization(Client, Input, []).

-spec get_telemetry_evaluation_status_for_organization(aws_client:aws_client(), #{}, proplists:proplist()) ->
    {ok, get_telemetry_evaluation_status_for_organization_output(), tuple()} |
    {error, any()} |
    {error, get_telemetry_evaluation_status_for_organization_errors(), tuple()}.
get_telemetry_evaluation_status_for_organization(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetTelemetryEvaluationStatusForOrganization"],
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

%% @doc
%% Returns a list of telemetry configurations for AWS resources supported by
%% telemetry config.
%%
%% For more information, see Auditing CloudWatch telemetry configurations:
%% https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/telemetry-config-cloudwatch.html.
-spec list_resource_telemetry(aws_client:aws_client(), list_resource_telemetry_input()) ->
    {ok, list_resource_telemetry_output(), tuple()} |
    {error, any()} |
    {error, list_resource_telemetry_errors(), tuple()}.
list_resource_telemetry(Client, Input) ->
    list_resource_telemetry(Client, Input, []).

-spec list_resource_telemetry(aws_client:aws_client(), list_resource_telemetry_input(), proplists:proplist()) ->
    {ok, list_resource_telemetry_output(), tuple()} |
    {error, any()} |
    {error, list_resource_telemetry_errors(), tuple()}.
list_resource_telemetry(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListResourceTelemetry"],
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

%% @doc
%% Returns a list of telemetry configurations for AWS resources supported by
%% telemetry config in the organization.
-spec list_resource_telemetry_for_organization(aws_client:aws_client(), list_resource_telemetry_for_organization_input()) ->
    {ok, list_resource_telemetry_for_organization_output(), tuple()} |
    {error, any()} |
    {error, list_resource_telemetry_for_organization_errors(), tuple()}.
list_resource_telemetry_for_organization(Client, Input) ->
    list_resource_telemetry_for_organization(Client, Input, []).

-spec list_resource_telemetry_for_organization(aws_client:aws_client(), list_resource_telemetry_for_organization_input(), proplists:proplist()) ->
    {ok, list_resource_telemetry_for_organization_output(), tuple()} |
    {error, any()} |
    {error, list_resource_telemetry_for_organization_errors(), tuple()}.
list_resource_telemetry_for_organization(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListResourceTelemetryForOrganization"],
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

%% @doc
%% This action begins onboarding onboarding the caller AWS account to the
%% telemetry config feature.
-spec start_telemetry_evaluation(aws_client:aws_client(), #{}) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, start_telemetry_evaluation_errors(), tuple()}.
start_telemetry_evaluation(Client, Input) ->
    start_telemetry_evaluation(Client, Input, []).

-spec start_telemetry_evaluation(aws_client:aws_client(), #{}, proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, start_telemetry_evaluation_errors(), tuple()}.
start_telemetry_evaluation(Client, Input0, Options0) ->
    Method = post,
    Path = ["/StartTelemetryEvaluation"],
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

%% @doc
%% This actions begins onboarding the organization and all member accounts to
%% the telemetry config feature.
-spec start_telemetry_evaluation_for_organization(aws_client:aws_client(), #{}) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, start_telemetry_evaluation_for_organization_errors(), tuple()}.
start_telemetry_evaluation_for_organization(Client, Input) ->
    start_telemetry_evaluation_for_organization(Client, Input, []).

-spec start_telemetry_evaluation_for_organization(aws_client:aws_client(), #{}, proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, start_telemetry_evaluation_for_organization_errors(), tuple()}.
start_telemetry_evaluation_for_organization(Client, Input0, Options0) ->
    Method = post,
    Path = ["/StartTelemetryEvaluationForOrganization"],
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

%% @doc
%% This action begins offboarding the caller AWS account from the telemetry
%% config feature.
-spec stop_telemetry_evaluation(aws_client:aws_client(), #{}) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, stop_telemetry_evaluation_errors(), tuple()}.
stop_telemetry_evaluation(Client, Input) ->
    stop_telemetry_evaluation(Client, Input, []).

-spec stop_telemetry_evaluation(aws_client:aws_client(), #{}, proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, stop_telemetry_evaluation_errors(), tuple()}.
stop_telemetry_evaluation(Client, Input0, Options0) ->
    Method = post,
    Path = ["/StopTelemetryEvaluation"],
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

%% @doc
%% This action offboards the Organization of the caller AWS account from thef
%% telemetry config feature.
-spec stop_telemetry_evaluation_for_organization(aws_client:aws_client(), #{}) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, stop_telemetry_evaluation_for_organization_errors(), tuple()}.
stop_telemetry_evaluation_for_organization(Client, Input) ->
    stop_telemetry_evaluation_for_organization(Client, Input, []).

-spec stop_telemetry_evaluation_for_organization(aws_client:aws_client(), #{}, proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, stop_telemetry_evaluation_for_organization_errors(), tuple()}.
stop_telemetry_evaluation_for_organization(Client, Input0, Options0) ->
    Method = post,
    Path = ["/StopTelemetryEvaluationForOrganization"],
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
    Client1 = Client#{service => <<"observabilityadmin">>},
    Host = build_host(<<"observabilityadmin">>, Client1),
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
