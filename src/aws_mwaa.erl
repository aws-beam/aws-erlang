%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Managed Workflows for Apache Airflow
%%
%% This section contains the Amazon Managed Workflows for Apache Airflow
%% (MWAA) API reference documentation.
%%
%% For more information, see What is Amazon MWAA?:
%% https://docs.aws.amazon.com/mwaa/latest/userguide/what-is-mwaa.html.
%%
%% Endpoints
%%
%% `api.airflow.{region}.amazonaws.com' - This endpoint is used for
%% environment management.
%%
%% CreateEnvironment:
%% https://docs.aws.amazon.com/mwaa/latest/API/API_CreateEnvironment.html
%%
%% DeleteEnvironment:
%% https://docs.aws.amazon.com/mwaa/latest/API/API_DeleteEnvironment.html
%%
%% GetEnvironment:
%% https://docs.aws.amazon.com/mwaa/latest/API/API_GetEnvironment.html
%%
%% ListEnvironments:
%% https://docs.aws.amazon.com/mwaa/latest/API/API_ListEnvironments.html
%%
%% ListTagsForResource:
%% https://docs.aws.amazon.com/mwaa/latest/API/API_ListTagsForResource.html
%%
%% TagResource:
%% https://docs.aws.amazon.com/mwaa/latest/API/API_TagResource.html
%%
%% UntagResource:
%% https://docs.aws.amazon.com/mwaa/latest/API/API_UntagResource.html
%%
%% UpdateEnvironment:
%% https://docs.aws.amazon.com/mwaa/latest/API/API_UpdateEnvironment.html
%%
%% `env.airflow.{region}.amazonaws.com' - This endpoint is used to
%% operate the Airflow environment.
%%
%% CreateCliToken:
%% https://docs.aws.amazon.com/mwaa/latest/API/API_CreateCliToken.html
%%
%% CreateWebLoginToken:
%% https://docs.aws.amazon.com/mwaa/latest/API/API_CreateWebLoginToken.html
%%
%% InvokeRestApi:
%% https://docs.aws.amazon.com/mwaa/latest/API/API_InvokeRestApi.html
%%
%% Regions
%%
%% For a list of supported regions, see Amazon MWAA endpoints and quotas:
%% https://docs.aws.amazon.com/general/latest/gr/mwaa.html in the Amazon Web
%% Services General Reference.
-module(aws_mwaa).

-export([create_cli_token/3,
         create_cli_token/4,
         create_environment/3,
         create_environment/4,
         create_web_login_token/3,
         create_web_login_token/4,
         delete_environment/3,
         delete_environment/4,
         get_environment/2,
         get_environment/4,
         get_environment/5,
         invoke_rest_api/3,
         invoke_rest_api/4,
         list_environments/1,
         list_environments/3,
         list_environments/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         publish_metrics/3,
         publish_metrics/4,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_environment/3,
         update_environment/4]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% get_environment_output() :: #{
%%   <<"Environment">> => environment()
%% }
-type get_environment_output() :: #{binary() => any()}.


%% Example:
%% invoke_rest_api_response() :: #{
%%   <<"RestApiResponse">> => any(),
%%   <<"RestApiStatusCode">> => [integer()]
%% }
-type invoke_rest_api_response() :: #{binary() => any()}.


%% Example:
%% create_environment_input() :: #{
%%   <<"AirflowConfigurationOptions">> => map(),
%%   <<"AirflowVersion">> => string(),
%%   <<"DagS3Path">> => string(),
%%   <<"EndpointManagement">> => string(),
%%   <<"EnvironmentClass">> => string(),
%%   <<"ExecutionRoleArn">> => string(),
%%   <<"KmsKey">> => string(),
%%   <<"LoggingConfiguration">> => logging_configuration_input(),
%%   <<"MaxWebservers">> => integer(),
%%   <<"MaxWorkers">> => integer(),
%%   <<"MinWebservers">> => integer(),
%%   <<"MinWorkers">> => integer(),
%%   <<"NetworkConfiguration">> => network_configuration(),
%%   <<"PluginsS3ObjectVersion">> => string(),
%%   <<"PluginsS3Path">> => string(),
%%   <<"RequirementsS3ObjectVersion">> => string(),
%%   <<"RequirementsS3Path">> => string(),
%%   <<"Schedulers">> => integer(),
%%   <<"SourceBucketArn">> => string(),
%%   <<"StartupScriptS3ObjectVersion">> => string(),
%%   <<"StartupScriptS3Path">> => string(),
%%   <<"Tags">> => map(),
%%   <<"WebserverAccessMode">> => string(),
%%   <<"WeeklyMaintenanceWindowStart">> => string()
%% }
-type create_environment_input() :: #{binary() => any()}.

%% Example:
%% delete_environment_input() :: #{}
-type delete_environment_input() :: #{}.


%% Example:
%% module_logging_configuration() :: #{
%%   <<"CloudWatchLogGroupArn">> => string(),
%%   <<"Enabled">> => boolean(),
%%   <<"LogLevel">> => string()
%% }
-type module_logging_configuration() :: #{binary() => any()}.


%% Example:
%% logging_configuration_input() :: #{
%%   <<"DagProcessingLogs">> => module_logging_configuration_input(),
%%   <<"SchedulerLogs">> => module_logging_configuration_input(),
%%   <<"TaskLogs">> => module_logging_configuration_input(),
%%   <<"WebserverLogs">> => module_logging_configuration_input(),
%%   <<"WorkerLogs">> => module_logging_configuration_input()
%% }
-type logging_configuration_input() :: #{binary() => any()}.


%% Example:
%% list_environments_input() :: #{
%%   <<"MaxResults">> => [integer()],
%%   <<"NextToken">> => string()
%% }
-type list_environments_input() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_output() :: #{
%%   <<"Tags">> => map()
%% }
-type list_tags_for_resource_output() :: #{binary() => any()}.


%% Example:
%% update_network_configuration_input() :: #{
%%   <<"SecurityGroupIds">> => list(string())
%% }
-type update_network_configuration_input() :: #{binary() => any()}.


%% Example:
%% logging_configuration() :: #{
%%   <<"DagProcessingLogs">> => module_logging_configuration(),
%%   <<"SchedulerLogs">> => module_logging_configuration(),
%%   <<"TaskLogs">> => module_logging_configuration(),
%%   <<"WebserverLogs">> => module_logging_configuration(),
%%   <<"WorkerLogs">> => module_logging_configuration()
%% }
-type logging_configuration() :: #{binary() => any()}.


%% Example:
%% create_environment_output() :: #{
%%   <<"Arn">> => string()
%% }
-type create_environment_output() :: #{binary() => any()}.


%% Example:
%% update_error() :: #{
%%   <<"ErrorCode">> => string(),
%%   <<"ErrorMessage">> => string()
%% }
-type update_error() :: #{binary() => any()}.


%% Example:
%% metric_datum() :: #{
%%   <<"Dimensions">> => list(dimension()),
%%   <<"MetricName">> => [string()],
%%   <<"StatisticValues">> => statistic_set(),
%%   <<"Timestamp">> => [non_neg_integer()],
%%   <<"Unit">> => string(),
%%   <<"Value">> => [float()]
%% }
-type metric_datum() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% update_environment_output() :: #{
%%   <<"Arn">> => string()
%% }
-type update_environment_output() :: #{binary() => any()}.


%% Example:
%% last_update() :: #{
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"Error">> => update_error(),
%%   <<"Source">> => string(),
%%   <<"Status">> => string(),
%%   <<"WorkerReplacementStrategy">> => string()
%% }
-type last_update() :: #{binary() => any()}.


%% Example:
%% environment() :: #{
%%   <<"LastUpdate">> => last_update(),
%%   <<"MaxWorkers">> => integer(),
%%   <<"AirflowConfigurationOptions">> => map(),
%%   <<"RequirementsS3Path">> => string(),
%%   <<"MaxWebservers">> => integer(),
%%   <<"StartupScriptS3ObjectVersion">> => [string()],
%%   <<"ServiceRoleArn">> => string(),
%%   <<"SourceBucketArn">> => string(),
%%   <<"EnvironmentClass">> => string(),
%%   <<"RequirementsS3ObjectVersion">> => string(),
%%   <<"DatabaseVpcEndpointService">> => string(),
%%   <<"WebserverVpcEndpointService">> => string(),
%%   <<"WebserverUrl">> => string(),
%%   <<"WebserverAccessMode">> => string(),
%%   <<"PluginsS3ObjectVersion">> => string(),
%%   <<"Arn">> => string(),
%%   <<"KmsKey">> => string(),
%%   <<"PluginsS3Path">> => string(),
%%   <<"NetworkConfiguration">> => network_configuration(),
%%   <<"WeeklyMaintenanceWindowStart">> => string(),
%%   <<"Tags">> => map(),
%%   <<"CeleryExecutorQueue">> => string(),
%%   <<"DagS3Path">> => string(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"StartupScriptS3Path">> => [string()],
%%   <<"MinWebservers">> => integer(),
%%   <<"Schedulers">> => integer(),
%%   <<"EndpointManagement">> => string(),
%%   <<"LoggingConfiguration">> => logging_configuration(),
%%   <<"ExecutionRoleArn">> => string(),
%%   <<"Name">> => string(),
%%   <<"Status">> => string(),
%%   <<"MinWorkers">> => integer(),
%%   <<"AirflowVersion">> => string()
%% }
-type environment() :: #{binary() => any()}.

%% Example:
%% get_environment_input() :: #{}
-type get_environment_input() :: #{}.


%% Example:
%% list_environments_output() :: #{
%%   <<"Environments">> := list(string()),
%%   <<"NextToken">> => string()
%% }
-type list_environments_output() :: #{binary() => any()}.


%% Example:
%% update_environment_input() :: #{
%%   <<"AirflowConfigurationOptions">> => map(),
%%   <<"AirflowVersion">> => string(),
%%   <<"DagS3Path">> => string(),
%%   <<"EnvironmentClass">> => string(),
%%   <<"ExecutionRoleArn">> => string(),
%%   <<"LoggingConfiguration">> => logging_configuration_input(),
%%   <<"MaxWebservers">> => integer(),
%%   <<"MaxWorkers">> => integer(),
%%   <<"MinWebservers">> => integer(),
%%   <<"MinWorkers">> => integer(),
%%   <<"NetworkConfiguration">> => update_network_configuration_input(),
%%   <<"PluginsS3ObjectVersion">> => string(),
%%   <<"PluginsS3Path">> => string(),
%%   <<"RequirementsS3ObjectVersion">> => string(),
%%   <<"RequirementsS3Path">> => string(),
%%   <<"Schedulers">> => integer(),
%%   <<"SourceBucketArn">> => string(),
%%   <<"StartupScriptS3ObjectVersion">> => string(),
%%   <<"StartupScriptS3Path">> => string(),
%%   <<"WebserverAccessMode">> => string(),
%%   <<"WeeklyMaintenanceWindowStart">> => string(),
%%   <<"WorkerReplacementStrategy">> => string()
%% }
-type update_environment_input() :: #{binary() => any()}.


%% Example:
%% rest_api_client_exception() :: #{
%%   <<"RestApiResponse">> => any(),
%%   <<"RestApiStatusCode">> => [integer()]
%% }
-type rest_api_client_exception() :: #{binary() => any()}.

%% Example:
%% create_web_login_token_request() :: #{}
-type create_web_login_token_request() :: #{}.


%% Example:
%% invoke_rest_api_request() :: #{
%%   <<"Body">> => any(),
%%   <<"Method">> := string(),
%%   <<"Path">> := string(),
%%   <<"QueryParameters">> => [any()]
%% }
-type invoke_rest_api_request() :: #{binary() => any()}.


%% Example:
%% tag_resource_input() :: #{
%%   <<"Tags">> := map()
%% }
-type tag_resource_input() :: #{binary() => any()}.

%% Example:
%% tag_resource_output() :: #{}
-type tag_resource_output() :: #{}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type internal_server_exception() :: #{binary() => any()}.

%% Example:
%% delete_environment_output() :: #{}
-type delete_environment_output() :: #{}.


%% Example:
%% create_cli_token_response() :: #{
%%   <<"CliToken">> => string(),
%%   <<"WebServerHostname">> => string()
%% }
-type create_cli_token_response() :: #{binary() => any()}.


%% Example:
%% network_configuration() :: #{
%%   <<"SecurityGroupIds">> => list(string()),
%%   <<"SubnetIds">> => list(string())
%% }
-type network_configuration() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% untag_resource_input() :: #{
%%   <<"tagKeys">> := list(string())
%% }
-type untag_resource_input() :: #{binary() => any()}.

%% Example:
%% create_cli_token_request() :: #{}
-type create_cli_token_request() :: #{}.


%% Example:
%% rest_api_server_exception() :: #{
%%   <<"RestApiResponse">> => any(),
%%   <<"RestApiStatusCode">> => [integer()]
%% }
-type rest_api_server_exception() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_input() :: #{}
-type list_tags_for_resource_input() :: #{}.

%% Example:
%% untag_resource_output() :: #{}
-type untag_resource_output() :: #{}.


%% Example:
%% create_web_login_token_response() :: #{
%%   <<"AirflowIdentity">> => string(),
%%   <<"IamIdentity">> => string(),
%%   <<"WebServerHostname">> => string(),
%%   <<"WebToken">> => string()
%% }
-type create_web_login_token_response() :: #{binary() => any()}.


%% Example:
%% dimension() :: #{
%%   <<"Name">> => [string()],
%%   <<"Value">> => [string()]
%% }
-type dimension() :: #{binary() => any()}.


%% Example:
%% publish_metrics_input() :: #{
%%   <<"MetricData">> => list(metric_datum())
%% }
-type publish_metrics_input() :: #{binary() => any()}.

%% Example:
%% publish_metrics_output() :: #{}
-type publish_metrics_output() :: #{}.


%% Example:
%% module_logging_configuration_input() :: #{
%%   <<"Enabled">> => boolean(),
%%   <<"LogLevel">> => string()
%% }
-type module_logging_configuration_input() :: #{binary() => any()}.


%% Example:
%% statistic_set() :: #{
%%   <<"Maximum">> => [float()],
%%   <<"Minimum">> => [float()],
%%   <<"SampleCount">> => [integer()],
%%   <<"Sum">> => [float()]
%% }
-type statistic_set() :: #{binary() => any()}.

-type create_cli_token_errors() ::
    resource_not_found_exception().

-type create_environment_errors() ::
    validation_exception() | 
    internal_server_exception().

-type create_web_login_token_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_environment_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_environment_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type invoke_rest_api_errors() ::
    validation_exception() | 
    rest_api_server_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    rest_api_client_exception() | 
    resource_not_found_exception().

-type list_environments_errors() ::
    validation_exception() | 
    internal_server_exception().

-type list_tags_for_resource_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type publish_metrics_errors() ::
    validation_exception() | 
    internal_server_exception().

-type tag_resource_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_environment_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a CLI token for the Airflow CLI.
%%
%% To learn more, see Creating an Apache Airflow CLI token:
%% https://docs.aws.amazon.com/mwaa/latest/userguide/call-mwaa-apis-cli.html.
-spec create_cli_token(aws_client:aws_client(), binary() | list(), create_cli_token_request()) ->
    {ok, create_cli_token_response(), tuple()} |
    {error, any()} |
    {error, create_cli_token_errors(), tuple()}.
create_cli_token(Client, Name, Input) ->
    create_cli_token(Client, Name, Input, []).

-spec create_cli_token(aws_client:aws_client(), binary() | list(), create_cli_token_request(), proplists:proplist()) ->
    {ok, create_cli_token_response(), tuple()} |
    {error, any()} |
    {error, create_cli_token_errors(), tuple()}.
create_cli_token(Client, Name, Input0, Options0) ->
    Method = post,
    Path = ["/clitoken/", aws_util:encode_uri(Name), ""],
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

%% @doc Creates an Amazon Managed Workflows for Apache Airflow (Amazon MWAA)
%% environment.
-spec create_environment(aws_client:aws_client(), binary() | list(), create_environment_input()) ->
    {ok, create_environment_output(), tuple()} |
    {error, any()} |
    {error, create_environment_errors(), tuple()}.
create_environment(Client, Name, Input) ->
    create_environment(Client, Name, Input, []).

-spec create_environment(aws_client:aws_client(), binary() | list(), create_environment_input(), proplists:proplist()) ->
    {ok, create_environment_output(), tuple()} |
    {error, any()} |
    {error, create_environment_errors(), tuple()}.
create_environment(Client, Name, Input0, Options0) ->
    Method = put,
    Path = ["/environments/", aws_util:encode_uri(Name), ""],
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

%% @doc Creates a web login token for the Airflow Web UI.
%%
%% To learn more, see Creating an Apache Airflow web login token:
%% https://docs.aws.amazon.com/mwaa/latest/userguide/call-mwaa-apis-web.html.
-spec create_web_login_token(aws_client:aws_client(), binary() | list(), create_web_login_token_request()) ->
    {ok, create_web_login_token_response(), tuple()} |
    {error, any()} |
    {error, create_web_login_token_errors(), tuple()}.
create_web_login_token(Client, Name, Input) ->
    create_web_login_token(Client, Name, Input, []).

-spec create_web_login_token(aws_client:aws_client(), binary() | list(), create_web_login_token_request(), proplists:proplist()) ->
    {ok, create_web_login_token_response(), tuple()} |
    {error, any()} |
    {error, create_web_login_token_errors(), tuple()}.
create_web_login_token(Client, Name, Input0, Options0) ->
    Method = post,
    Path = ["/webtoken/", aws_util:encode_uri(Name), ""],
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

%% @doc Deletes an Amazon Managed Workflows for Apache Airflow (Amazon MWAA)
%% environment.
-spec delete_environment(aws_client:aws_client(), binary() | list(), delete_environment_input()) ->
    {ok, delete_environment_output(), tuple()} |
    {error, any()} |
    {error, delete_environment_errors(), tuple()}.
delete_environment(Client, Name, Input) ->
    delete_environment(Client, Name, Input, []).

-spec delete_environment(aws_client:aws_client(), binary() | list(), delete_environment_input(), proplists:proplist()) ->
    {ok, delete_environment_output(), tuple()} |
    {error, any()} |
    {error, delete_environment_errors(), tuple()}.
delete_environment(Client, Name, Input0, Options0) ->
    Method = delete,
    Path = ["/environments/", aws_util:encode_uri(Name), ""],
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

%% @doc Describes an Amazon Managed Workflows for Apache Airflow (MWAA)
%% environment.
-spec get_environment(aws_client:aws_client(), binary() | list()) ->
    {ok, get_environment_output(), tuple()} |
    {error, any()} |
    {error, get_environment_errors(), tuple()}.
get_environment(Client, Name)
  when is_map(Client) ->
    get_environment(Client, Name, #{}, #{}).

-spec get_environment(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_environment_output(), tuple()} |
    {error, any()} |
    {error, get_environment_errors(), tuple()}.
get_environment(Client, Name, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_environment(Client, Name, QueryMap, HeadersMap, []).

-spec get_environment(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_environment_output(), tuple()} |
    {error, any()} |
    {error, get_environment_errors(), tuple()}.
get_environment(Client, Name, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/environments/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Invokes the Apache Airflow REST API on the webserver with the
%% specified inputs.
%%
%% To
%% learn more, see Using the Apache Airflow REST API:
%% https://docs.aws.amazon.com/mwaa/latest/userguide/access-mwaa-apache-airflow-rest-api.html
-spec invoke_rest_api(aws_client:aws_client(), binary() | list(), invoke_rest_api_request()) ->
    {ok, invoke_rest_api_response(), tuple()} |
    {error, any()} |
    {error, invoke_rest_api_errors(), tuple()}.
invoke_rest_api(Client, Name, Input) ->
    invoke_rest_api(Client, Name, Input, []).

-spec invoke_rest_api(aws_client:aws_client(), binary() | list(), invoke_rest_api_request(), proplists:proplist()) ->
    {ok, invoke_rest_api_response(), tuple()} |
    {error, any()} |
    {error, invoke_rest_api_errors(), tuple()}.
invoke_rest_api(Client, Name, Input0, Options0) ->
    Method = post,
    Path = ["/restapi/", aws_util:encode_uri(Name), ""],
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

%% @doc Lists the Amazon Managed Workflows for Apache Airflow (MWAA)
%% environments.
-spec list_environments(aws_client:aws_client()) ->
    {ok, list_environments_output(), tuple()} |
    {error, any()} |
    {error, list_environments_errors(), tuple()}.
list_environments(Client)
  when is_map(Client) ->
    list_environments(Client, #{}, #{}).

-spec list_environments(aws_client:aws_client(), map(), map()) ->
    {ok, list_environments_output(), tuple()} |
    {error, any()} |
    {error, list_environments_errors(), tuple()}.
list_environments(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_environments(Client, QueryMap, HeadersMap, []).

-spec list_environments(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_environments_output(), tuple()} |
    {error, any()} |
    {error, list_environments_errors(), tuple()}.
list_environments(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/environments"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the key-value tag pairs associated to the Amazon Managed
%% Workflows for Apache Airflow (MWAA) environment.
%%
%% For example, `&quot;Environment&quot;: &quot;Staging&quot;'.
-spec list_tags_for_resource(aws_client:aws_client(), binary() | list()) ->
    {ok, list_tags_for_resource_output(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_tags_for_resource_output(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_tags_for_resource_output(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc
%% Internal only.
%%
%% Publishes environment health metrics to Amazon CloudWatch.
-spec publish_metrics(aws_client:aws_client(), binary() | list(), publish_metrics_input()) ->
    {ok, publish_metrics_output(), tuple()} |
    {error, any()} |
    {error, publish_metrics_errors(), tuple()}.
publish_metrics(Client, EnvironmentName, Input) ->
    publish_metrics(Client, EnvironmentName, Input, []).

-spec publish_metrics(aws_client:aws_client(), binary() | list(), publish_metrics_input(), proplists:proplist()) ->
    {ok, publish_metrics_output(), tuple()} |
    {error, any()} |
    {error, publish_metrics_errors(), tuple()}.
publish_metrics(Client, EnvironmentName, Input0, Options0) ->
    Method = post,
    Path = ["/metrics/environments/", aws_util:encode_uri(EnvironmentName), ""],
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

%% @doc Associates key-value tag pairs to your Amazon Managed Workflows for
%% Apache Airflow (MWAA) environment.
-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_input()) ->
    {ok, tag_resource_output(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).

-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_input(), proplists:proplist()) ->
    {ok, tag_resource_output(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
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

%% @doc Removes key-value tag pairs associated to your Amazon Managed
%% Workflows for Apache Airflow (MWAA) environment.
%%
%% For example, `&quot;Environment&quot;: &quot;Staging&quot;'.
-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_input()) ->
    {ok, untag_resource_output(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).

-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_input(), proplists:proplist()) ->
    {ok, untag_resource_output(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
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

    QueryMapping = [
                     {<<"tagKeys">>, <<"tagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an Amazon Managed Workflows for Apache Airflow (MWAA)
%% environment.
-spec update_environment(aws_client:aws_client(), binary() | list(), update_environment_input()) ->
    {ok, update_environment_output(), tuple()} |
    {error, any()} |
    {error, update_environment_errors(), tuple()}.
update_environment(Client, Name, Input) ->
    update_environment(Client, Name, Input, []).

-spec update_environment(aws_client:aws_client(), binary() | list(), update_environment_input(), proplists:proplist()) ->
    {ok, update_environment_output(), tuple()} |
    {error, any()} |
    {error, update_environment_errors(), tuple()}.
update_environment(Client, Name, Input0, Options0) ->
    Method = patch,
    Path = ["/environments/", aws_util:encode_uri(Name), ""],
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
    Client1 = Client#{service => <<"airflow">>},
    Host = build_host(<<"airflow">>, Client1),
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
