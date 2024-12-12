%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon EMR Serverless is a new deployment option for Amazon EMR.
%%
%% Amazon EMR Serverless provides a serverless runtime environment that
%% simplifies running
%% analytics applications using the latest open source frameworks such as
%% Apache Spark and
%% Apache Hive. With Amazon EMR Serverless, you don’t have to configure,
%% optimize,
%% secure, or operate clusters to run applications with these frameworks.
%%
%% The API reference to Amazon EMR Serverless is `emr-serverless'. The
%% `emr-serverless' prefix is used in the following scenarios:
%%
%% It is the prefix in the CLI commands for Amazon EMR Serverless. For
%% example, `aws emr-serverless start-job-run'.
%%
%% It is the prefix before IAM policy actions for Amazon EMR Serverless. For
%% example, `&quot;Action&quot;:
%% [&quot;emr-serverless:StartJobRun&quot;]'. For more information,
%% see Policy actions for Amazon EMR Serverless:
%% https://docs.aws.amazon.com/emr/latest/EMR-Serverless-UserGuide/security_iam_service-with-iam.html#security_iam_service-with-iam-id-based-policies-actions.
%%
%% It is the prefix used in Amazon EMR Serverless service endpoints. For
%% example, `emr-serverless.us-east-2.amazonaws.com'.
-module(aws_emr_serverless).

-export([cancel_job_run/4,
         cancel_job_run/5,
         create_application/2,
         create_application/3,
         delete_application/3,
         delete_application/4,
         get_application/2,
         get_application/4,
         get_application/5,
         get_dashboard_for_job_run/3,
         get_dashboard_for_job_run/5,
         get_dashboard_for_job_run/6,
         get_job_run/3,
         get_job_run/5,
         get_job_run/6,
         list_applications/1,
         list_applications/3,
         list_applications/4,
         list_job_run_attempts/3,
         list_job_run_attempts/5,
         list_job_run_attempts/6,
         list_job_runs/2,
         list_job_runs/4,
         list_job_runs/5,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         start_application/3,
         start_application/4,
         start_job_run/3,
         start_job_run/4,
         stop_application/3,
         stop_application/4,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_application/3,
         update_application/4]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% get_job_run_response() :: #{
%%   <<"jobRun">> := job_run()
%% }
-type get_job_run_response() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% image_configuration_input() :: #{
%%   <<"imageUri">> => string()
%% }
-type image_configuration_input() :: #{binary() => any()}.


%% Example:
%% worker_resource_config() :: #{
%%   <<"cpu">> => string(),
%%   <<"disk">> => string(),
%%   <<"diskType">> => string(),
%%   <<"memory">> => string()
%% }
-type worker_resource_config() :: #{binary() => any()}.


%% Example:
%% s3_monitoring_configuration() :: #{
%%   <<"encryptionKeyArn">> => string(),
%%   <<"logUri">> => string()
%% }
-type s3_monitoring_configuration() :: #{binary() => any()}.


%% Example:
%% get_job_run_request() :: #{
%%   <<"attempt">> => integer()
%% }
-type get_job_run_request() :: #{binary() => any()}.


%% Example:
%% resource_utilization() :: #{
%%   <<"memoryGBHour">> => [float()],
%%   <<"storageGBHour">> => [float()],
%%   <<"vCPUHour">> => [float()]
%% }
-type resource_utilization() :: #{binary() => any()}.


%% Example:
%% list_job_run_attempts_response() :: #{
%%   <<"jobRunAttempts">> => list(job_run_attempt_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_job_run_attempts_response() :: #{binary() => any()}.


%% Example:
%% list_job_run_attempts_request() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string()
%% }
-type list_job_run_attempts_request() :: #{binary() => any()}.


%% Example:
%% initial_capacity_config() :: #{
%%   <<"workerConfiguration">> => worker_resource_config(),
%%   <<"workerCount">> => float()
%% }
-type initial_capacity_config() :: #{binary() => any()}.


%% Example:
%% job_run() :: #{
%%   <<"applicationId">> => string(),
%%   <<"arn">> => string(),
%%   <<"attempt">> => integer(),
%%   <<"attemptCreatedAt">> => non_neg_integer(),
%%   <<"attemptUpdatedAt">> => non_neg_integer(),
%%   <<"billedResourceUtilization">> => resource_utilization(),
%%   <<"configurationOverrides">> => configuration_overrides(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => string(),
%%   <<"endedAt">> => non_neg_integer(),
%%   <<"executionRole">> => string(),
%%   <<"executionTimeoutMinutes">> => float(),
%%   <<"jobDriver">> => list(),
%%   <<"jobRunId">> => string(),
%%   <<"mode">> => string(),
%%   <<"name">> => string(),
%%   <<"networkConfiguration">> => network_configuration(),
%%   <<"queuedDurationMilliseconds">> => [float()],
%%   <<"releaseLabel">> => string(),
%%   <<"retryPolicy">> => retry_policy(),
%%   <<"startedAt">> => non_neg_integer(),
%%   <<"state">> => string(),
%%   <<"stateDetails">> => string(),
%%   <<"tags">> => map(),
%%   <<"totalExecutionDurationSeconds">> => [integer()],
%%   <<"totalResourceUtilization">> => total_resource_utilization(),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type job_run() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% job_run_summary() :: #{
%%   <<"applicationId">> => string(),
%%   <<"arn">> => string(),
%%   <<"attempt">> => integer(),
%%   <<"attemptCreatedAt">> => non_neg_integer(),
%%   <<"attemptUpdatedAt">> => non_neg_integer(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => string(),
%%   <<"executionRole">> => string(),
%%   <<"id">> => string(),
%%   <<"mode">> => string(),
%%   <<"name">> => string(),
%%   <<"releaseLabel">> => string(),
%%   <<"state">> => string(),
%%   <<"stateDetails">> => string(),
%%   <<"type">> => string(),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type job_run_summary() :: #{binary() => any()}.


%% Example:
%% list_job_runs_request() :: #{
%%   <<"createdAtAfter">> => non_neg_integer(),
%%   <<"createdAtBefore">> => non_neg_integer(),
%%   <<"maxResults">> => [integer()],
%%   <<"mode">> => string(),
%%   <<"nextToken">> => string(),
%%   <<"states">> => list(string()())
%% }
-type list_job_runs_request() :: #{binary() => any()}.


%% Example:
%% maximum_allowed_resources() :: #{
%%   <<"cpu">> => string(),
%%   <<"disk">> => string(),
%%   <<"memory">> => string()
%% }
-type maximum_allowed_resources() :: #{binary() => any()}.


%% Example:
%% configuration() :: #{
%%   <<"classification">> => string(),
%%   <<"configurations">> => list(configuration()()),
%%   <<"properties">> => map()
%% }
-type configuration() :: #{binary() => any()}.


%% Example:
%% job_run_attempt_summary() :: #{
%%   <<"applicationId">> => string(),
%%   <<"arn">> => string(),
%%   <<"attempt">> => integer(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => string(),
%%   <<"executionRole">> => string(),
%%   <<"id">> => string(),
%%   <<"jobCreatedAt">> => non_neg_integer(),
%%   <<"mode">> => string(),
%%   <<"name">> => string(),
%%   <<"releaseLabel">> => string(),
%%   <<"state">> => string(),
%%   <<"stateDetails">> => string(),
%%   <<"type">> => string(),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type job_run_attempt_summary() :: #{binary() => any()}.


%% Example:
%% monitoring_configuration() :: #{
%%   <<"cloudWatchLoggingConfiguration">> => cloud_watch_logging_configuration(),
%%   <<"managedPersistenceMonitoringConfiguration">> => managed_persistence_monitoring_configuration(),
%%   <<"prometheusMonitoringConfiguration">> => prometheus_monitoring_configuration(),
%%   <<"s3MonitoringConfiguration">> => s3_monitoring_configuration()
%% }
-type monitoring_configuration() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"tagKeys">> := list(string()())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% auto_start_config() :: #{
%%   <<"enabled">> => [boolean()]
%% }
-type auto_start_config() :: #{binary() => any()}.


%% Example:
%% auto_stop_config() :: #{
%%   <<"enabled">> => [boolean()],
%%   <<"idleTimeoutMinutes">> => [integer()]
%% }
-type auto_stop_config() :: #{binary() => any()}.


%% Example:
%% worker_type_specification() :: #{
%%   <<"imageConfiguration">> => image_configuration()
%% }
-type worker_type_specification() :: #{binary() => any()}.


%% Example:
%% spark_submit() :: #{
%%   <<"entryPoint">> => string(),
%%   <<"entryPointArguments">> => list(string()()),
%%   <<"sparkSubmitParameters">> => string()
%% }
-type spark_submit() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% prometheus_monitoring_configuration() :: #{
%%   <<"remoteWriteUrl">> => string()
%% }
-type prometheus_monitoring_configuration() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% start_job_run_response() :: #{
%%   <<"applicationId">> := string(),
%%   <<"arn">> := string(),
%%   <<"jobRunId">> := string()
%% }
-type start_job_run_response() :: #{binary() => any()}.


%% Example:
%% cancel_job_run_response() :: #{
%%   <<"applicationId">> := string(),
%%   <<"jobRunId">> := string()
%% }
-type cancel_job_run_response() :: #{binary() => any()}.


%% Example:
%% get_dashboard_for_job_run_response() :: #{
%%   <<"url">> => string()
%% }
-type get_dashboard_for_job_run_response() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% stop_application_request() :: #{}
-type stop_application_request() :: #{}.


%% Example:
%% list_job_runs_response() :: #{
%%   <<"jobRuns">> := list(job_run_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_job_runs_response() :: #{binary() => any()}.


%% Example:
%% application() :: #{
%%   <<"applicationId">> => string(),
%%   <<"architecture">> => string(),
%%   <<"arn">> => string(),
%%   <<"autoStartConfiguration">> => auto_start_config(),
%%   <<"autoStopConfiguration">> => auto_stop_config(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"imageConfiguration">> => image_configuration(),
%%   <<"initialCapacity">> => map(),
%%   <<"interactiveConfiguration">> => interactive_configuration(),
%%   <<"maximumCapacity">> => maximum_allowed_resources(),
%%   <<"monitoringConfiguration">> => monitoring_configuration(),
%%   <<"name">> => string(),
%%   <<"networkConfiguration">> => network_configuration(),
%%   <<"releaseLabel">> => string(),
%%   <<"runtimeConfiguration">> => list(configuration()()),
%%   <<"schedulerConfiguration">> => scheduler_configuration(),
%%   <<"state">> => string(),
%%   <<"stateDetails">> => string(),
%%   <<"tags">> => map(),
%%   <<"type">> => string(),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"workerTypeSpecifications">> => map()
%% }
-type application() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% create_application_request() :: #{
%%   <<"architecture">> => string(),
%%   <<"autoStartConfiguration">> => auto_start_config(),
%%   <<"autoStopConfiguration">> => auto_stop_config(),
%%   <<"clientToken">> := string(),
%%   <<"imageConfiguration">> => image_configuration_input(),
%%   <<"initialCapacity">> => map(),
%%   <<"interactiveConfiguration">> => interactive_configuration(),
%%   <<"maximumCapacity">> => maximum_allowed_resources(),
%%   <<"monitoringConfiguration">> => monitoring_configuration(),
%%   <<"name">> => string(),
%%   <<"networkConfiguration">> => network_configuration(),
%%   <<"releaseLabel">> := string(),
%%   <<"runtimeConfiguration">> => list(configuration()()),
%%   <<"schedulerConfiguration">> => scheduler_configuration(),
%%   <<"tags">> => map(),
%%   <<"type">> := string(),
%%   <<"workerTypeSpecifications">> => map()
%% }
-type create_application_request() :: #{binary() => any()}.


%% Example:
%% create_application_response() :: #{
%%   <<"applicationId">> := string(),
%%   <<"arn">> := string(),
%%   <<"name">> => string()
%% }
-type create_application_response() :: #{binary() => any()}.


%% Example:
%% interactive_configuration() :: #{
%%   <<"livyEndpointEnabled">> => [boolean()],
%%   <<"studioEnabled">> => [boolean()]
%% }
-type interactive_configuration() :: #{binary() => any()}.

%% Example:
%% delete_application_response() :: #{}
-type delete_application_response() :: #{}.

%% Example:
%% start_application_response() :: #{}
-type start_application_response() :: #{}.


%% Example:
%% worker_type_specification_input() :: #{
%%   <<"imageConfiguration">> => image_configuration_input()
%% }
-type worker_type_specification_input() :: #{binary() => any()}.


%% Example:
%% hive() :: #{
%%   <<"initQueryFile">> => string(),
%%   <<"parameters">> => string(),
%%   <<"query">> => string()
%% }
-type hive() :: #{binary() => any()}.


%% Example:
%% update_application_request() :: #{
%%   <<"architecture">> => string(),
%%   <<"autoStartConfiguration">> => auto_start_config(),
%%   <<"autoStopConfiguration">> => auto_stop_config(),
%%   <<"clientToken">> := string(),
%%   <<"imageConfiguration">> => image_configuration_input(),
%%   <<"initialCapacity">> => map(),
%%   <<"interactiveConfiguration">> => interactive_configuration(),
%%   <<"maximumCapacity">> => maximum_allowed_resources(),
%%   <<"monitoringConfiguration">> => monitoring_configuration(),
%%   <<"networkConfiguration">> => network_configuration(),
%%   <<"releaseLabel">> => string(),
%%   <<"runtimeConfiguration">> => list(configuration()()),
%%   <<"schedulerConfiguration">> => scheduler_configuration(),
%%   <<"workerTypeSpecifications">> => map()
%% }
-type update_application_request() :: #{binary() => any()}.


%% Example:
%% update_application_response() :: #{
%%   <<"application">> := application()
%% }
-type update_application_response() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => string()
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% scheduler_configuration() :: #{
%%   <<"maxConcurrentRuns">> => [integer()],
%%   <<"queueTimeoutMinutes">> => [integer()]
%% }
-type scheduler_configuration() :: #{binary() => any()}.

%% Example:
%% start_application_request() :: #{}
-type start_application_request() :: #{}.


%% Example:
%% start_job_run_request() :: #{
%%   <<"clientToken">> := string(),
%%   <<"configurationOverrides">> => configuration_overrides(),
%%   <<"executionRoleArn">> := string(),
%%   <<"executionTimeoutMinutes">> => float(),
%%   <<"jobDriver">> => list(),
%%   <<"mode">> => string(),
%%   <<"name">> => string(),
%%   <<"retryPolicy">> => retry_policy(),
%%   <<"tags">> => map()
%% }
-type start_job_run_request() :: #{binary() => any()}.


%% Example:
%% get_application_response() :: #{
%%   <<"application">> := application()
%% }
-type get_application_response() :: #{binary() => any()}.


%% Example:
%% list_applications_request() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string(),
%%   <<"states">> => list(string()())
%% }
-type list_applications_request() :: #{binary() => any()}.


%% Example:
%% network_configuration() :: #{
%%   <<"securityGroupIds">> => list(string()()),
%%   <<"subnetIds">> => list(string()())
%% }
-type network_configuration() :: #{binary() => any()}.

%% Example:
%% stop_application_response() :: #{}
-type stop_application_response() :: #{}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% get_dashboard_for_job_run_request() :: #{
%%   <<"accessSystemProfileLogs">> => [boolean()],
%%   <<"attempt">> => integer()
%% }
-type get_dashboard_for_job_run_request() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"message">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% total_resource_utilization() :: #{
%%   <<"memoryGBHour">> => [float()],
%%   <<"storageGBHour">> => [float()],
%%   <<"vCPUHour">> => [float()]
%% }
-type total_resource_utilization() :: #{binary() => any()}.


%% Example:
%% configuration_overrides() :: #{
%%   <<"applicationConfiguration">> => list(configuration()()),
%%   <<"monitoringConfiguration">> => monitoring_configuration()
%% }
-type configuration_overrides() :: #{binary() => any()}.


%% Example:
%% application_summary() :: #{
%%   <<"architecture">> => string(),
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"releaseLabel">> => string(),
%%   <<"state">> => string(),
%%   <<"stateDetails">> => string(),
%%   <<"type">> => string(),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type application_summary() :: #{binary() => any()}.


%% Example:
%% list_applications_response() :: #{
%%   <<"applications">> := list(application_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_applications_response() :: #{binary() => any()}.


%% Example:
%% managed_persistence_monitoring_configuration() :: #{
%%   <<"enabled">> => [boolean()],
%%   <<"encryptionKeyArn">> => string()
%% }
-type managed_persistence_monitoring_configuration() :: #{binary() => any()}.

%% Example:
%% cancel_job_run_request() :: #{}
-type cancel_job_run_request() :: #{}.


%% Example:
%% image_configuration() :: #{
%%   <<"imageUri">> => string(),
%%   <<"resolvedImageDigest">> => string()
%% }
-type image_configuration() :: #{binary() => any()}.


%% Example:
%% cloud_watch_logging_configuration() :: #{
%%   <<"enabled">> => [boolean()],
%%   <<"encryptionKeyArn">> => string(),
%%   <<"logGroupName">> => string(),
%%   <<"logStreamNamePrefix">> => string(),
%%   <<"logTypes">> => map()
%% }
-type cloud_watch_logging_configuration() :: #{binary() => any()}.


%% Example:
%% retry_policy() :: #{
%%   <<"maxAttempts">> => integer(),
%%   <<"maxFailedAttemptsPerHour">> => [integer()]
%% }
-type retry_policy() :: #{binary() => any()}.

%% Example:
%% get_application_request() :: #{}
-type get_application_request() :: #{}.

%% Example:
%% delete_application_request() :: #{}
-type delete_application_request() :: #{}.

-type cancel_job_run_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type create_application_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_application_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_application_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_dashboard_for_job_run_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_job_run_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_applications_errors() ::
    validation_exception() | 
    internal_server_exception().

-type list_job_run_attempts_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_job_runs_errors() ::
    validation_exception() | 
    internal_server_exception().

-type list_tags_for_resource_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type start_application_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type start_job_run_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type stop_application_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type tag_resource_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_application_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Cancels a job run.
-spec cancel_job_run(aws_client:aws_client(), binary() | list(), binary() | list(), cancel_job_run_request()) ->
    {ok, cancel_job_run_response(), tuple()} |
    {error, any()} |
    {error, cancel_job_run_errors(), tuple()}.
cancel_job_run(Client, ApplicationId, JobRunId, Input) ->
    cancel_job_run(Client, ApplicationId, JobRunId, Input, []).

-spec cancel_job_run(aws_client:aws_client(), binary() | list(), binary() | list(), cancel_job_run_request(), proplists:proplist()) ->
    {ok, cancel_job_run_response(), tuple()} |
    {error, any()} |
    {error, cancel_job_run_errors(), tuple()}.
cancel_job_run(Client, ApplicationId, JobRunId, Input0, Options0) ->
    Method = delete,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/jobruns/", aws_util:encode_uri(JobRunId), ""],
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

%% @doc Creates an application.
-spec create_application(aws_client:aws_client(), create_application_request()) ->
    {ok, create_application_response(), tuple()} |
    {error, any()} |
    {error, create_application_errors(), tuple()}.
create_application(Client, Input) ->
    create_application(Client, Input, []).

-spec create_application(aws_client:aws_client(), create_application_request(), proplists:proplist()) ->
    {ok, create_application_response(), tuple()} |
    {error, any()} |
    {error, create_application_errors(), tuple()}.
create_application(Client, Input0, Options0) ->
    Method = post,
    Path = ["/applications"],
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

%% @doc Deletes an application.
%%
%% An application has to be in a stopped or created state in order
%% to be deleted.
-spec delete_application(aws_client:aws_client(), binary() | list(), delete_application_request()) ->
    {ok, delete_application_response(), tuple()} |
    {error, any()} |
    {error, delete_application_errors(), tuple()}.
delete_application(Client, ApplicationId, Input) ->
    delete_application(Client, ApplicationId, Input, []).

-spec delete_application(aws_client:aws_client(), binary() | list(), delete_application_request(), proplists:proplist()) ->
    {ok, delete_application_response(), tuple()} |
    {error, any()} |
    {error, delete_application_errors(), tuple()}.
delete_application(Client, ApplicationId, Input0, Options0) ->
    Method = delete,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), ""],
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

%% @doc Displays detailed information about a specified application.
-spec get_application(aws_client:aws_client(), binary() | list()) ->
    {ok, get_application_response(), tuple()} |
    {error, any()} |
    {error, get_application_errors(), tuple()}.
get_application(Client, ApplicationId)
  when is_map(Client) ->
    get_application(Client, ApplicationId, #{}, #{}).

-spec get_application(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_application_response(), tuple()} |
    {error, any()} |
    {error, get_application_errors(), tuple()}.
get_application(Client, ApplicationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_application(Client, ApplicationId, QueryMap, HeadersMap, []).

-spec get_application(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_application_response(), tuple()} |
    {error, any()} |
    {error, get_application_errors(), tuple()}.
get_application(Client, ApplicationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Creates and returns a URL that you can use to access the application
%% UIs for a job
%% run.
%%
%% For jobs in a running state, the application UI is a live user interface
%% such as the
%% Spark or Tez web UI. For completed jobs, the application UI is a
%% persistent application
%% user interface such as the Spark History Server or persistent Tez UI.
%%
%% The URL is valid for one hour after you generate it. To access the
%% application UI
%% after that hour elapses, you must invoke the API again to generate a new
%% URL.
-spec get_dashboard_for_job_run(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_dashboard_for_job_run_response(), tuple()} |
    {error, any()} |
    {error, get_dashboard_for_job_run_errors(), tuple()}.
get_dashboard_for_job_run(Client, ApplicationId, JobRunId)
  when is_map(Client) ->
    get_dashboard_for_job_run(Client, ApplicationId, JobRunId, #{}, #{}).

-spec get_dashboard_for_job_run(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_dashboard_for_job_run_response(), tuple()} |
    {error, any()} |
    {error, get_dashboard_for_job_run_errors(), tuple()}.
get_dashboard_for_job_run(Client, ApplicationId, JobRunId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_dashboard_for_job_run(Client, ApplicationId, JobRunId, QueryMap, HeadersMap, []).

-spec get_dashboard_for_job_run(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_dashboard_for_job_run_response(), tuple()} |
    {error, any()} |
    {error, get_dashboard_for_job_run_errors(), tuple()}.
get_dashboard_for_job_run(Client, ApplicationId, JobRunId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/jobruns/", aws_util:encode_uri(JobRunId), "/dashboard"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"accessSystemProfileLogs">>, maps:get(<<"accessSystemProfileLogs">>, QueryMap, undefined)},
        {<<"attempt">>, maps:get(<<"attempt">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Displays detailed information about a job run.
-spec get_job_run(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_job_run_response(), tuple()} |
    {error, any()} |
    {error, get_job_run_errors(), tuple()}.
get_job_run(Client, ApplicationId, JobRunId)
  when is_map(Client) ->
    get_job_run(Client, ApplicationId, JobRunId, #{}, #{}).

-spec get_job_run(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_job_run_response(), tuple()} |
    {error, any()} |
    {error, get_job_run_errors(), tuple()}.
get_job_run(Client, ApplicationId, JobRunId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_job_run(Client, ApplicationId, JobRunId, QueryMap, HeadersMap, []).

-spec get_job_run(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_job_run_response(), tuple()} |
    {error, any()} |
    {error, get_job_run_errors(), tuple()}.
get_job_run(Client, ApplicationId, JobRunId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/jobruns/", aws_util:encode_uri(JobRunId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"attempt">>, maps:get(<<"attempt">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists applications based on a set of parameters.
-spec list_applications(aws_client:aws_client()) ->
    {ok, list_applications_response(), tuple()} |
    {error, any()} |
    {error, list_applications_errors(), tuple()}.
list_applications(Client)
  when is_map(Client) ->
    list_applications(Client, #{}, #{}).

-spec list_applications(aws_client:aws_client(), map(), map()) ->
    {ok, list_applications_response(), tuple()} |
    {error, any()} |
    {error, list_applications_errors(), tuple()}.
list_applications(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_applications(Client, QueryMap, HeadersMap, []).

-spec list_applications(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_applications_response(), tuple()} |
    {error, any()} |
    {error, list_applications_errors(), tuple()}.
list_applications(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"states">>, maps:get(<<"states">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all attempt of a job run.
-spec list_job_run_attempts(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_job_run_attempts_response(), tuple()} |
    {error, any()} |
    {error, list_job_run_attempts_errors(), tuple()}.
list_job_run_attempts(Client, ApplicationId, JobRunId)
  when is_map(Client) ->
    list_job_run_attempts(Client, ApplicationId, JobRunId, #{}, #{}).

-spec list_job_run_attempts(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_job_run_attempts_response(), tuple()} |
    {error, any()} |
    {error, list_job_run_attempts_errors(), tuple()}.
list_job_run_attempts(Client, ApplicationId, JobRunId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_job_run_attempts(Client, ApplicationId, JobRunId, QueryMap, HeadersMap, []).

-spec list_job_run_attempts(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_job_run_attempts_response(), tuple()} |
    {error, any()} |
    {error, list_job_run_attempts_errors(), tuple()}.
list_job_run_attempts(Client, ApplicationId, JobRunId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/jobruns/", aws_util:encode_uri(JobRunId), "/attempts"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists job runs based on a set of parameters.
-spec list_job_runs(aws_client:aws_client(), binary() | list()) ->
    {ok, list_job_runs_response(), tuple()} |
    {error, any()} |
    {error, list_job_runs_errors(), tuple()}.
list_job_runs(Client, ApplicationId)
  when is_map(Client) ->
    list_job_runs(Client, ApplicationId, #{}, #{}).

-spec list_job_runs(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_job_runs_response(), tuple()} |
    {error, any()} |
    {error, list_job_runs_errors(), tuple()}.
list_job_runs(Client, ApplicationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_job_runs(Client, ApplicationId, QueryMap, HeadersMap, []).

-spec list_job_runs(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_job_runs_response(), tuple()} |
    {error, any()} |
    {error, list_job_runs_errors(), tuple()}.
list_job_runs(Client, ApplicationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/jobruns"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"createdAtAfter">>, maps:get(<<"createdAtAfter">>, QueryMap, undefined)},
        {<<"createdAtBefore">>, maps:get(<<"createdAtBefore">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"mode">>, maps:get(<<"mode">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"states">>, maps:get(<<"states">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the tags assigned to the resources.
-spec list_tags_for_resource(aws_client:aws_client(), binary() | list()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
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

%% @doc Starts a specified application and initializes initial capacity if
%% configured.
-spec start_application(aws_client:aws_client(), binary() | list(), start_application_request()) ->
    {ok, start_application_response(), tuple()} |
    {error, any()} |
    {error, start_application_errors(), tuple()}.
start_application(Client, ApplicationId, Input) ->
    start_application(Client, ApplicationId, Input, []).

-spec start_application(aws_client:aws_client(), binary() | list(), start_application_request(), proplists:proplist()) ->
    {ok, start_application_response(), tuple()} |
    {error, any()} |
    {error, start_application_errors(), tuple()}.
start_application(Client, ApplicationId, Input0, Options0) ->
    Method = post,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/start"],
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

%% @doc Starts a job run.
-spec start_job_run(aws_client:aws_client(), binary() | list(), start_job_run_request()) ->
    {ok, start_job_run_response(), tuple()} |
    {error, any()} |
    {error, start_job_run_errors(), tuple()}.
start_job_run(Client, ApplicationId, Input) ->
    start_job_run(Client, ApplicationId, Input, []).

-spec start_job_run(aws_client:aws_client(), binary() | list(), start_job_run_request(), proplists:proplist()) ->
    {ok, start_job_run_response(), tuple()} |
    {error, any()} |
    {error, start_job_run_errors(), tuple()}.
start_job_run(Client, ApplicationId, Input0, Options0) ->
    Method = post,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/jobruns"],
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

%% @doc Stops a specified application and releases initial capacity if
%% configured.
%%
%% All scheduled
%% and running jobs must be completed or cancelled before stopping an
%% application.
-spec stop_application(aws_client:aws_client(), binary() | list(), stop_application_request()) ->
    {ok, stop_application_response(), tuple()} |
    {error, any()} |
    {error, stop_application_errors(), tuple()}.
stop_application(Client, ApplicationId, Input) ->
    stop_application(Client, ApplicationId, Input, []).

-spec stop_application(aws_client:aws_client(), binary() | list(), stop_application_request(), proplists:proplist()) ->
    {ok, stop_application_response(), tuple()} |
    {error, any()} |
    {error, stop_application_errors(), tuple()}.
stop_application(Client, ApplicationId, Input0, Options0) ->
    Method = post,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/stop"],
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

%% @doc Assigns tags to resources.
%%
%% A tag is a label that you assign to an Amazon Web Services
%% resource. Each tag consists of a key and an optional value, both of which
%% you define. Tags
%% enable you to categorize your Amazon Web Services resources by attributes
%% such as purpose,
%% owner, or environment. When you have many resources of the same type, you
%% can quickly
%% identify a specific resource based on the tags you've assigned to it.
-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_request()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).

-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_request(), proplists:proplist()) ->
    {ok, tag_resource_response(), tuple()} |
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

%% @doc Removes tags from resources.
-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).

-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request(), proplists:proplist()) ->
    {ok, untag_resource_response(), tuple()} |
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

%% @doc Updates a specified application.
%%
%% An application has to be in a stopped or created state
%% in order to be updated.
-spec update_application(aws_client:aws_client(), binary() | list(), update_application_request()) ->
    {ok, update_application_response(), tuple()} |
    {error, any()} |
    {error, update_application_errors(), tuple()}.
update_application(Client, ApplicationId, Input) ->
    update_application(Client, ApplicationId, Input, []).

-spec update_application(aws_client:aws_client(), binary() | list(), update_application_request(), proplists:proplist()) ->
    {ok, update_application_response(), tuple()} |
    {error, any()} |
    {error, update_application_errors(), tuple()}.
update_application(Client, ApplicationId, Input0, Options0) ->
    Method = patch,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), ""],
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
    Client1 = Client#{service => <<"emr-serverless">>},
    Host = build_host(<<"emr-serverless">>, Client1),
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
