%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Managed Workflows for Apache Airflow Serverless provides a
%% managed workflow orchestration platform for running Apache Airflow
%% workflows in a serverless environment.
%%
%% You can use Amazon Managed Workflows for Apache Airflow Serverless to
%% create, manage, and run data processing workflows without managing the
%% underlying infrastructure, Airflow clusters, metadata databases, or
%% scheduling overhead. The service provides secure multi-tenant run
%% environments with automatic scaling, comprehensive logging, and
%% integration with multiple Amazon Web Services services for orchestrating
%% complex analytics workloads.
-module(aws_mwaa_serverless).

-export([create_workflow/2,
         create_workflow/3,
         delete_workflow/2,
         delete_workflow/3,
         get_task_instance/2,
         get_task_instance/3,
         get_workflow/2,
         get_workflow/3,
         get_workflow_run/2,
         get_workflow_run/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         list_task_instances/2,
         list_task_instances/3,
         list_workflow_runs/2,
         list_workflow_runs/3,
         list_workflow_versions/2,
         list_workflow_versions/3,
         list_workflows/2,
         list_workflows/3,
         start_workflow_run/2,
         start_workflow_run/3,
         stop_workflow_run/2,
         stop_workflow_run/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_workflow/2,
         update_workflow/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% create_workflow_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"DefinitionS3Location">> := definition_s3_location(),
%%   <<"Description">> => string(),
%%   <<"EncryptionConfiguration">> => encryption_configuration(),
%%   <<"EngineVersion">> => list(integer()),
%%   <<"LoggingConfiguration">> => logging_configuration(),
%%   <<"Name">> := string(),
%%   <<"NetworkConfiguration">> => network_configuration(),
%%   <<"RoleArn">> := string(),
%%   <<"Tags">> => map(),
%%   <<"TriggerMode">> => string()
%% }
-type create_workflow_request() :: #{binary() => any()}.

%% Example:
%% encryption_configuration() :: #{
%%   <<"KmsKeyId">> => [string()],
%%   <<"Type">> => list(any())
%% }
-type encryption_configuration() :: #{binary() => any()}.

%% Example:
%% tag_resource_request() :: #{
%%   <<"Tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% operation_timeout_exception() :: #{
%%   <<"Message">> => string()
%% }
-type operation_timeout_exception() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{

%% }
-type untag_resource_response() :: #{binary() => any()}.

%% Example:
%% delete_workflow_request() :: #{
%%   <<"WorkflowVersion">> => string()
%% }
-type delete_workflow_request() :: #{binary() => any()}.

%% Example:
%% list_task_instances_request() :: #{
%%   <<"MaxResults">> => [integer()],
%%   <<"NextToken">> => [string()]
%% }
-type list_task_instances_request() :: #{binary() => any()}.

%% Example:
%% task_instance_summary() :: #{
%%   <<"DurationInSeconds">> => [integer()],
%%   <<"OperatorName">> => string(),
%%   <<"RunId">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"TaskInstanceId">> => string(),
%%   <<"WorkflowArn">> => string(),
%%   <<"WorkflowVersion">> => string()
%% }
-type task_instance_summary() :: #{binary() => any()}.

%% Example:
%% stop_workflow_run_response() :: #{
%%   <<"RunId">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"WorkflowArn">> => string(),
%%   <<"WorkflowVersion">> => string()
%% }
-type stop_workflow_run_response() :: #{binary() => any()}.

%% Example:
%% get_task_instance_response() :: #{
%%   <<"AttemptNumber">> => [integer()],
%%   <<"DurationInSeconds">> => [integer()],
%%   <<"EndedAt">> => non_neg_integer(),
%%   <<"ErrorMessage">> => string(),
%%   <<"LogStream">> => string(),
%%   <<"ModifiedAt">> => non_neg_integer(),
%%   <<"OperatorName">> => string(),
%%   <<"RunId">> => string(),
%%   <<"StartedAt">> => non_neg_integer(),
%%   <<"Status">> => list(any()),
%%   <<"TaskId">> => string(),
%%   <<"TaskInstanceId">> => string(),
%%   <<"WorkflowArn">> => string(),
%%   <<"WorkflowVersion">> => string(),
%%   <<"Xcom">> => map()
%% }
-type get_task_instance_response() :: #{binary() => any()}.

%% Example:
%% update_workflow_request() :: #{
%%   <<"DefinitionS3Location">> := definition_s3_location(),
%%   <<"Description">> => string(),
%%   <<"EngineVersion">> => list(integer()),
%%   <<"LoggingConfiguration">> => logging_configuration(),
%%   <<"NetworkConfiguration">> => network_configuration(),
%%   <<"RoleArn">> := string(),
%%   <<"TriggerMode">> => string()
%% }
-type update_workflow_request() :: #{binary() => any()}.

%% Example:
%% untag_resource_request() :: #{
%%   <<"TagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% logging_configuration() :: #{
%%   <<"LogGroupName">> => [string()]
%% }
-type logging_configuration() :: #{binary() => any()}.

%% Example:
%% get_workflow_request() :: #{
%%   <<"WorkflowVersion">> => string()
%% }
-type get_workflow_request() :: #{binary() => any()}.

%% Example:
%% definition_s3_location() :: #{
%%   <<"Bucket">> => [string()],
%%   <<"ObjectKey">> => [string()],
%%   <<"VersionId">> => [string()]
%% }
-type definition_s3_location() :: #{binary() => any()}.

%% Example:
%% delete_workflow_response() :: #{
%%   <<"WorkflowArn">> => string(),
%%   <<"WorkflowVersion">> => string()
%% }
-type delete_workflow_response() :: #{binary() => any()}.

%% Example:
%% conflict_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"ResourceId">> => [string()],
%%   <<"ResourceType">> => [string()]
%% }
-type conflict_exception() :: #{binary() => any()}.

%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"ResourceId">> => [string()],
%%   <<"ResourceType">> => [string()]
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% run_detail_summary() :: #{
%%   <<"CreatedOn">> => non_neg_integer(),
%%   <<"EndedAt">> => non_neg_integer(),
%%   <<"StartedAt">> => non_neg_integer(),
%%   <<"Status">> => list(any())
%% }
-type run_detail_summary() :: #{binary() => any()}.

%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"QuotaCode">> => [string()],
%%   <<"ResourceId">> => [string()],
%%   <<"ResourceType">> => [string()],
%%   <<"ServiceCode">> => [string()]
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% start_workflow_run_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"OverrideParameters">> => map(),
%%   <<"WorkflowVersion">> => string()
%% }
-type start_workflow_run_request() :: #{binary() => any()}.

%% Example:
%% list_workflows_request() :: #{
%%   <<"MaxResults">> => [integer()],
%%   <<"NextToken">> => [string()]
%% }
-type list_workflows_request() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"Tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.

%% Example:
%% update_workflow_response() :: #{
%%   <<"ModifiedAt">> => non_neg_integer(),
%%   <<"Warnings">> => list([string()]()),
%%   <<"WorkflowArn">> => string(),
%%   <<"WorkflowVersion">> => string()
%% }
-type update_workflow_response() :: #{binary() => any()}.

%% Example:
%% validation_exception_field() :: #{
%%   <<"Message">> => string(),
%%   <<"Name">> => [string()]
%% }
-type validation_exception_field() :: #{binary() => any()}.

%% Example:
%% start_workflow_run_response() :: #{
%%   <<"RunId">> => string(),
%%   <<"StartedAt">> => non_neg_integer(),
%%   <<"Status">> => list(any())
%% }
-type start_workflow_run_response() :: #{binary() => any()}.

%% Example:
%% list_workflow_versions_request() :: #{
%%   <<"MaxResults">> => [integer()],
%%   <<"NextToken">> => [string()]
%% }
-type list_workflow_versions_request() :: #{binary() => any()}.

%% Example:
%% list_workflow_runs_request() :: #{
%%   <<"MaxResults">> => [integer()],
%%   <<"NextToken">> => [string()],
%%   <<"WorkflowVersion">> => string()
%% }
-type list_workflow_runs_request() :: #{binary() => any()}.

%% Example:
%% workflow_summary() :: #{
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"ModifiedAt">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"TriggerMode">> => string(),
%%   <<"WorkflowArn">> => string(),
%%   <<"WorkflowStatus">> => list(any()),
%%   <<"WorkflowVersion">> => string()
%% }
-type workflow_summary() :: #{binary() => any()}.

%% Example:
%% list_workflow_versions_response() :: #{
%%   <<"NextToken">> => [string()],
%%   <<"WorkflowVersions">> => list(workflow_version_summary())
%% }
-type list_workflow_versions_response() :: #{binary() => any()}.

%% Example:
%% workflow_version_summary() :: #{
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"DefinitionS3Location">> => definition_s3_location(),
%%   <<"IsLatestVersion">> => boolean(),
%%   <<"ModifiedAt">> => non_neg_integer(),
%%   <<"ScheduleConfiguration">> => schedule_configuration(),
%%   <<"TriggerMode">> => string(),
%%   <<"WorkflowArn">> => string(),
%%   <<"WorkflowVersion">> => string()
%% }
-type workflow_version_summary() :: #{binary() => any()}.

%% Example:
%% internal_server_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"RetryAfterSeconds">> => [integer()]
%% }
-type internal_server_exception() :: #{binary() => any()}.

%% Example:
%% network_configuration() :: #{
%%   <<"SecurityGroupIds">> => list(string()),
%%   <<"SubnetIds">> => list(string())
%% }
-type network_configuration() :: #{binary() => any()}.

%% Example:
%% create_workflow_response() :: #{
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"IsLatestVersion">> => boolean(),
%%   <<"RevisionId">> => [string()],
%%   <<"Warnings">> => list([string()]()),
%%   <<"WorkflowArn">> => string(),
%%   <<"WorkflowStatus">> => list(any()),
%%   <<"WorkflowVersion">> => string()
%% }
-type create_workflow_response() :: #{binary() => any()}.

%% Example:
%% access_denied_exception() :: #{
%%   <<"Message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% list_workflow_runs_response() :: #{
%%   <<"NextToken">> => [string()],
%%   <<"WorkflowRuns">> => list(workflow_run_summary())
%% }
-type list_workflow_runs_response() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{

%% }
-type tag_resource_response() :: #{binary() => any()}.

%% Example:
%% workflow_run_detail() :: #{
%%   <<"CompletedOn">> => non_neg_integer(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"Duration">> => [integer()],
%%   <<"ErrorMessage">> => string(),
%%   <<"ModifiedAt">> => non_neg_integer(),
%%   <<"RunId">> => string(),
%%   <<"RunState">> => list(any()),
%%   <<"RunType">> => list(any()),
%%   <<"StartedOn">> => non_neg_integer(),
%%   <<"TaskInstances">> => list(string()),
%%   <<"WorkflowArn">> => string(),
%%   <<"WorkflowVersion">> => string()
%% }
-type workflow_run_detail() :: #{binary() => any()}.

%% Example:
%% get_task_instance_request() :: #{

%% }
-type get_task_instance_request() :: #{binary() => any()}.

%% Example:
%% validation_exception() :: #{
%%   <<"FieldList">> => list(validation_exception_field()),
%%   <<"Message">> => string(),
%%   <<"Reason">> => list(any())
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{

%% }
-type list_tags_for_resource_request() :: #{binary() => any()}.

%% Example:
%% schedule_configuration() :: #{
%%   <<"CronExpression">> => [string()]
%% }
-type schedule_configuration() :: #{binary() => any()}.

%% Example:
%% throttling_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"QuotaCode">> => [string()],
%%   <<"RetryAfterSeconds">> => [integer()],
%%   <<"ServiceCode">> => [string()]
%% }
-type throttling_exception() :: #{binary() => any()}.

%% Example:
%% get_workflow_run_request() :: #{

%% }
-type get_workflow_run_request() :: #{binary() => any()}.

%% Example:
%% stop_workflow_run_request() :: #{

%% }
-type stop_workflow_run_request() :: #{binary() => any()}.

%% Example:
%% list_workflows_response() :: #{
%%   <<"NextToken">> => [string()],
%%   <<"Workflows">> => list(workflow_summary())
%% }
-type list_workflows_response() :: #{binary() => any()}.

%% Example:
%% get_workflow_run_response() :: #{
%%   <<"OverrideParameters">> => map(),
%%   <<"RunDetail">> => workflow_run_detail(),
%%   <<"RunId">> => string(),
%%   <<"RunType">> => list(any()),
%%   <<"WorkflowArn">> => string(),
%%   <<"WorkflowVersion">> => string()
%% }
-type get_workflow_run_response() :: #{binary() => any()}.

%% Example:
%% workflow_run_summary() :: #{
%%   <<"RunDetailSummary">> => run_detail_summary(),
%%   <<"RunId">> => string(),
%%   <<"RunType">> => list(any()),
%%   <<"WorkflowArn">> => string(),
%%   <<"WorkflowVersion">> => string()
%% }
-type workflow_run_summary() :: #{binary() => any()}.

%% Example:
%% list_task_instances_response() :: #{
%%   <<"NextToken">> => [string()],
%%   <<"TaskInstances">> => list(task_instance_summary())
%% }
-type list_task_instances_response() :: #{binary() => any()}.

%% Example:
%% get_workflow_response() :: #{
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"DefinitionS3Location">> => definition_s3_location(),
%%   <<"Description">> => string(),
%%   <<"EncryptionConfiguration">> => encryption_configuration(),
%%   <<"EngineVersion">> => list(integer()),
%%   <<"LoggingConfiguration">> => logging_configuration(),
%%   <<"ModifiedAt">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"NetworkConfiguration">> => network_configuration(),
%%   <<"RoleArn">> => string(),
%%   <<"ScheduleConfiguration">> => schedule_configuration(),
%%   <<"TriggerMode">> => string(),
%%   <<"WorkflowArn">> => string(),
%%   <<"WorkflowDefinition">> => string(),
%%   <<"WorkflowStatus">> => list(any()),
%%   <<"WorkflowVersion">> => string()
%% }
-type get_workflow_response() :: #{binary() => any()}.

-type create_workflow_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception() | 
    operation_timeout_exception().

-type delete_workflow_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    operation_timeout_exception().

-type get_task_instance_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    operation_timeout_exception().

-type get_workflow_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    operation_timeout_exception().

-type get_workflow_run_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    operation_timeout_exception().

-type list_tags_for_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    operation_timeout_exception().

-type list_task_instances_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    operation_timeout_exception().

-type list_workflow_runs_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    operation_timeout_exception().

-type list_workflow_versions_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    operation_timeout_exception().

-type list_workflows_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    operation_timeout_exception().

-type start_workflow_run_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    operation_timeout_exception().

-type stop_workflow_run_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    operation_timeout_exception().

-type tag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    operation_timeout_exception().

-type untag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    operation_timeout_exception().

-type update_workflow_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    operation_timeout_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a new workflow in Amazon Managed Workflows for Apache Airflow
%% Serverless.
%%
%% This operation initializes a workflow with the specified configuration
%% including the workflow definition, execution role, and optional settings
%% for encryption, logging, and networking. You must provide the workflow
%% definition as a YAML file stored in Amazon S3 that defines the DAG
%% structure using supported Amazon Web Services operators. Amazon Managed
%% Workflows for Apache Airflow Serverless automatically creates the first
%% version of the workflow and sets up the necessary execution environment
%% with multi-tenant isolation and security controls.
-spec create_workflow(aws_client:aws_client(), create_workflow_request()) ->
    {ok, create_workflow_response(), tuple()} |
    {error, any()} |
    {error, create_workflow_errors(), tuple()}.
create_workflow(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_workflow(Client, Input, []).

-spec create_workflow(aws_client:aws_client(), create_workflow_request(), proplists:proplist()) ->
    {ok, create_workflow_response(), tuple()} |
    {error, any()} |
    {error, create_workflow_errors(), tuple()}.
create_workflow(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateWorkflow">>, Input, Options).

%% @doc Deletes a workflow and all its versions.
%%
%% This operation permanently removes the workflow and cannot be undone.
%% Amazon Managed Workflows for Apache Airflow Serverless ensures that all
%% associated resources are properly cleaned up, including stopping any
%% running executions, removing scheduled triggers, and cleaning up execution
%% history. The deletion process respects the multi-tenant isolation
%% boundaries and ensures that no residual data or configurations remain that
%% could affect other customers or workflows.
-spec delete_workflow(aws_client:aws_client(), delete_workflow_request()) ->
    {ok, delete_workflow_response(), tuple()} |
    {error, any()} |
    {error, delete_workflow_errors(), tuple()}.
delete_workflow(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_workflow(Client, Input, []).

-spec delete_workflow(aws_client:aws_client(), delete_workflow_request(), proplists:proplist()) ->
    {ok, delete_workflow_response(), tuple()} |
    {error, any()} |
    {error, delete_workflow_errors(), tuple()}.
delete_workflow(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteWorkflow">>, Input, Options).

%% @doc Retrieves detailed information about a specific task instance within
%% a workflow run.
%%
%% Task instances represent individual tasks that are executed as part of a
%% workflow in the Amazon Managed Workflows for Apache Airflow Serverless
%% environment. Each task instance runs in an isolated ECS container with
%% dedicated resources and security boundaries. The service tracks task
%% execution state, retry attempts, and provides detailed timing and error
%% information for troubleshooting and monitoring purposes.
-spec get_task_instance(aws_client:aws_client(), get_task_instance_request()) ->
    {ok, get_task_instance_response(), tuple()} |
    {error, any()} |
    {error, get_task_instance_errors(), tuple()}.
get_task_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_task_instance(Client, Input, []).

-spec get_task_instance(aws_client:aws_client(), get_task_instance_request(), proplists:proplist()) ->
    {ok, get_task_instance_response(), tuple()} |
    {error, any()} |
    {error, get_task_instance_errors(), tuple()}.
get_task_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetTaskInstance">>, Input, Options).

%% @doc Retrieves detailed information about a workflow, including its
%% configuration, status, and metadata.
-spec get_workflow(aws_client:aws_client(), get_workflow_request()) ->
    {ok, get_workflow_response(), tuple()} |
    {error, any()} |
    {error, get_workflow_errors(), tuple()}.
get_workflow(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_workflow(Client, Input, []).

-spec get_workflow(aws_client:aws_client(), get_workflow_request(), proplists:proplist()) ->
    {ok, get_workflow_response(), tuple()} |
    {error, any()} |
    {error, get_workflow_errors(), tuple()}.
get_workflow(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetWorkflow">>, Input, Options).

%% @doc Retrieves detailed information about a specific workflow run,
%% including its status, execution details, and task instances.
-spec get_workflow_run(aws_client:aws_client(), get_workflow_run_request()) ->
    {ok, get_workflow_run_response(), tuple()} |
    {error, any()} |
    {error, get_workflow_run_errors(), tuple()}.
get_workflow_run(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_workflow_run(Client, Input, []).

-spec get_workflow_run(aws_client:aws_client(), get_workflow_run_request(), proplists:proplist()) ->
    {ok, get_workflow_run_response(), tuple()} |
    {error, any()} |
    {error, get_workflow_run_errors(), tuple()}.
get_workflow_run(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetWorkflowRun">>, Input, Options).

%% @doc Lists all tags that are associated with a specified Amazon Managed
%% Workflows for Apache Airflow Serverless resource.
-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_request()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).

-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_request(), proplists:proplist()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Lists all task instances for a specific workflow run, with optional
%% pagination support.
-spec list_task_instances(aws_client:aws_client(), list_task_instances_request()) ->
    {ok, list_task_instances_response(), tuple()} |
    {error, any()} |
    {error, list_task_instances_errors(), tuple()}.
list_task_instances(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_task_instances(Client, Input, []).

-spec list_task_instances(aws_client:aws_client(), list_task_instances_request(), proplists:proplist()) ->
    {ok, list_task_instances_response(), tuple()} |
    {error, any()} |
    {error, list_task_instances_errors(), tuple()}.
list_task_instances(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTaskInstances">>, Input, Options).

%% @doc Lists all runs for a specified workflow, with optional pagination and
%% filtering support.
-spec list_workflow_runs(aws_client:aws_client(), list_workflow_runs_request()) ->
    {ok, list_workflow_runs_response(), tuple()} |
    {error, any()} |
    {error, list_workflow_runs_errors(), tuple()}.
list_workflow_runs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_workflow_runs(Client, Input, []).

-spec list_workflow_runs(aws_client:aws_client(), list_workflow_runs_request(), proplists:proplist()) ->
    {ok, list_workflow_runs_response(), tuple()} |
    {error, any()} |
    {error, list_workflow_runs_errors(), tuple()}.
list_workflow_runs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListWorkflowRuns">>, Input, Options).

%% @doc Lists all versions of a specified workflow, with optional pagination
%% support.
-spec list_workflow_versions(aws_client:aws_client(), list_workflow_versions_request()) ->
    {ok, list_workflow_versions_response(), tuple()} |
    {error, any()} |
    {error, list_workflow_versions_errors(), tuple()}.
list_workflow_versions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_workflow_versions(Client, Input, []).

-spec list_workflow_versions(aws_client:aws_client(), list_workflow_versions_request(), proplists:proplist()) ->
    {ok, list_workflow_versions_response(), tuple()} |
    {error, any()} |
    {error, list_workflow_versions_errors(), tuple()}.
list_workflow_versions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListWorkflowVersions">>, Input, Options).

%% @doc Lists all workflows in your account, with optional pagination
%% support.
%%
%% This operation returns summary information for workflows, showing only the
%% most recently created version of each workflow. Amazon Managed Workflows
%% for Apache Airflow Serverless maintains workflow metadata in a highly
%% available, distributed storage system that enables efficient querying and
%% filtering. The service implements proper access controls to ensure you can
%% only view workflows that you have permissions to access, supporting both
%% individual and team-based workflow management scenarios.
-spec list_workflows(aws_client:aws_client(), list_workflows_request()) ->
    {ok, list_workflows_response(), tuple()} |
    {error, any()} |
    {error, list_workflows_errors(), tuple()}.
list_workflows(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_workflows(Client, Input, []).

-spec list_workflows(aws_client:aws_client(), list_workflows_request(), proplists:proplist()) ->
    {ok, list_workflows_response(), tuple()} |
    {error, any()} |
    {error, list_workflows_errors(), tuple()}.
list_workflows(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListWorkflows">>, Input, Options).

%% @doc Starts a new execution of a workflow.
%%
%% This operation creates a workflow run that executes the tasks that are
%% defined in the workflow. Amazon Managed Workflows for Apache Airflow
%% Serverless schedules the workflow execution across its managed Airflow
%% environment, automatically scaling ECS worker tasks based on the workload.
%% The service handles task isolation, dependency resolution, and provides
%% comprehensive monitoring and logging throughout the execution lifecycle.
-spec start_workflow_run(aws_client:aws_client(), start_workflow_run_request()) ->
    {ok, start_workflow_run_response(), tuple()} |
    {error, any()} |
    {error, start_workflow_run_errors(), tuple()}.
start_workflow_run(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_workflow_run(Client, Input, []).

-spec start_workflow_run(aws_client:aws_client(), start_workflow_run_request(), proplists:proplist()) ->
    {ok, start_workflow_run_response(), tuple()} |
    {error, any()} |
    {error, start_workflow_run_errors(), tuple()}.
start_workflow_run(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartWorkflowRun">>, Input, Options).

%% @doc Stops a running workflow execution.
%%
%% This operation terminates all running tasks and prevents new tasks from
%% starting. Amazon Managed Workflows for Apache Airflow Serverless
%% gracefully shuts down the workflow execution by stopping task scheduling
%% and terminating active ECS worker containers. The operation transitions
%% the workflow run to a `STOPPING' state and then to `STOPPED' once
%% all cleanup is complete. In-flight tasks may complete or be terminated
%% depending on their current execution state.
-spec stop_workflow_run(aws_client:aws_client(), stop_workflow_run_request()) ->
    {ok, stop_workflow_run_response(), tuple()} |
    {error, any()} |
    {error, stop_workflow_run_errors(), tuple()}.
stop_workflow_run(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_workflow_run(Client, Input, []).

-spec stop_workflow_run(aws_client:aws_client(), stop_workflow_run_request(), proplists:proplist()) ->
    {ok, stop_workflow_run_response(), tuple()} |
    {error, any()} |
    {error, stop_workflow_run_errors(), tuple()}.
stop_workflow_run(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopWorkflowRun">>, Input, Options).

%% @doc Adds tags to an Amazon Managed Workflows for Apache Airflow
%% Serverless resource.
%%
%% Tags are key-value pairs that help you organize and categorize your
%% resources.
-spec tag_resource(aws_client:aws_client(), tag_resource_request()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).

-spec tag_resource(aws_client:aws_client(), tag_resource_request(), proplists:proplist()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Removes tags from an Amazon Managed Workflows for Apache Airflow
%% Serverless resource.
%%
%% This operation removes the specified tags from the resource.
-spec untag_resource(aws_client:aws_client(), untag_resource_request()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).

-spec untag_resource(aws_client:aws_client(), untag_resource_request(), proplists:proplist()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc Updates an existing workflow with new configuration settings.
%%
%% This operation allows you to modify the workflow definition, role, and
%% other settings. When you update a workflow, Amazon Managed Workflows for
%% Apache Airflow Serverless automatically creates a new version with the
%% updated configuration and disables scheduling on all previous versions to
%% ensure only one version is actively scheduled at a time. The update
%% operation maintains workflow history while providing a clean transition to
%% the new configuration.
-spec update_workflow(aws_client:aws_client(), update_workflow_request()) ->
    {ok, update_workflow_response(), tuple()} |
    {error, any()} |
    {error, update_workflow_errors(), tuple()}.
update_workflow(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_workflow(Client, Input, []).

-spec update_workflow(aws_client:aws_client(), update_workflow_request(), proplists:proplist()) ->
    {ok, update_workflow_response(), tuple()} |
    {error, any()} |
    {error, update_workflow_errors(), tuple()}.
update_workflow(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateWorkflow">>, Input, Options).

%%====================================================================
%% Internal functions
%%====================================================================

-spec request(aws_client:aws_client(), binary(), map(), list()) ->
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map() | undefined,
    Error :: map().
request(Client, Action, Input, Options) ->
    RequestFun = fun() -> do_request(Client, Action, Input, Options) end,
    aws_request:request(RequestFun, Options).

do_request(Client, Action, Input0, Options) ->
    Client1 = Client#{service => <<"airflow-serverless">>},
    Host = build_host(<<"airflow-serverless">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.0">>},
        {<<"X-Amz-Target">>, <<"AmazonMWAAServerless.", Action/binary>>}
    ],

    Input = Input0,

    Payload = jsx:encode(Input),
    SignedHeaders = aws_request:sign_request(Client1, <<"POST">>, URL, Headers, Payload),
    Response = hackney:request(post, URL, SignedHeaders, Payload, Options),
    handle_response(Response).

handle_response({ok, 200, ResponseHeaders, Client}) ->
    case hackney:body(Client) of
        {ok, <<>>} ->
            {ok, undefined, {200, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = jsx:decode(Body),
            {ok, Result, {200, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}) ->
    {ok, Body} = hackney:body(Client),
    Error = jsx:decode(Body),
    {error, Error, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}) ->
    {error, Reason}.

build_host(_EndpointPrefix, #{region := <<"local">>, endpoint := Endpoint}) ->
    Endpoint;
build_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
build_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

build_url(Host, Client) ->
    Proto = aws_client:proto(Client),
    Port = aws_client:port(Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
