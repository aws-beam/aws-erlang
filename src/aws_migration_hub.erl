%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc The AWS Migration Hub API methods help to obtain server and
%% application migration status
%% and integrate your resource-specific migration tool by providing a
%% programmatic interface
%% to Migration Hub.
%%
%% Remember that you must set your AWS Migration Hub home region before you
%% call any of
%% these APIs, or a `HomeRegionNotSetException' error will be returned.
%% Also, you
%% must make the API calls while in your home region.
-module(aws_migration_hub).

-export([associate_created_artifact/2,
         associate_created_artifact/3,
         associate_discovered_resource/2,
         associate_discovered_resource/3,
         associate_source_resource/2,
         associate_source_resource/3,
         create_progress_update_stream/2,
         create_progress_update_stream/3,
         delete_progress_update_stream/2,
         delete_progress_update_stream/3,
         describe_application_state/2,
         describe_application_state/3,
         describe_migration_task/2,
         describe_migration_task/3,
         disassociate_created_artifact/2,
         disassociate_created_artifact/3,
         disassociate_discovered_resource/2,
         disassociate_discovered_resource/3,
         disassociate_source_resource/2,
         disassociate_source_resource/3,
         import_migration_task/2,
         import_migration_task/3,
         list_application_states/2,
         list_application_states/3,
         list_created_artifacts/2,
         list_created_artifacts/3,
         list_discovered_resources/2,
         list_discovered_resources/3,
         list_migration_task_updates/2,
         list_migration_task_updates/3,
         list_migration_tasks/2,
         list_migration_tasks/3,
         list_progress_update_streams/2,
         list_progress_update_streams/3,
         list_source_resources/2,
         list_source_resources/3,
         notify_application_state/2,
         notify_application_state/3,
         notify_migration_task_state/2,
         notify_migration_task_state/3,
         put_resource_attributes/2,
         put_resource_attributes/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% list_application_states_request() :: #{
%%   <<"ApplicationIds">> => list(string()()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_application_states_request() :: #{binary() => any()}.

%% Example:
%% task() :: #{
%%   <<"ProgressPercent">> => integer(),
%%   <<"Status">> => list(any()),
%%   <<"StatusDetail">> => string()
%% }
-type task() :: #{binary() => any()}.

%% Example:
%% resource_attribute() :: #{
%%   <<"Type">> => list(any()),
%%   <<"Value">> => string()
%% }
-type resource_attribute() :: #{binary() => any()}.

%% Example:
%% list_source_resources_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"MigrationTaskName">> := string(),
%%   <<"NextToken">> => string(),
%%   <<"ProgressUpdateStream">> := string()
%% }
-type list_source_resources_request() :: #{binary() => any()}.

%% Example:
%% notify_application_state_request() :: #{
%%   <<"ApplicationId">> := string(),
%%   <<"DryRun">> => boolean(),
%%   <<"Status">> := list(any()),
%%   <<"UpdateDateTime">> => non_neg_integer()
%% }
-type notify_application_state_request() :: #{binary() => any()}.

%% Example:
%% list_migration_tasks_result() :: #{
%%   <<"MigrationTaskSummaryList">> => list(migration_task_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_migration_tasks_result() :: #{binary() => any()}.

%% Example:
%% notify_migration_task_state_result() :: #{

%% }
-type notify_migration_task_state_result() :: #{binary() => any()}.

%% Example:
%% disassociate_discovered_resource_result() :: #{

%% }
-type disassociate_discovered_resource_result() :: #{binary() => any()}.

%% Example:
%% put_resource_attributes_request() :: #{
%%   <<"DryRun">> => boolean(),
%%   <<"MigrationTaskName">> := string(),
%%   <<"ProgressUpdateStream">> := string(),
%%   <<"ResourceAttributeList">> := list(resource_attribute()())
%% }
-type put_resource_attributes_request() :: #{binary() => any()}.

%% Example:
%% list_progress_update_streams_result() :: #{
%%   <<"NextToken">> => string(),
%%   <<"ProgressUpdateStreamSummaryList">> => list(progress_update_stream_summary()())
%% }
-type list_progress_update_streams_result() :: #{binary() => any()}.

%% Example:
%% put_resource_attributes_result() :: #{

%% }
-type put_resource_attributes_result() :: #{binary() => any()}.

%% Example:
%% delete_progress_update_stream_request() :: #{
%%   <<"DryRun">> => boolean(),
%%   <<"ProgressUpdateStreamName">> := string()
%% }
-type delete_progress_update_stream_request() :: #{binary() => any()}.

%% Example:
%% disassociate_created_artifact_result() :: #{

%% }
-type disassociate_created_artifact_result() :: #{binary() => any()}.

%% Example:
%% list_source_resources_result() :: #{
%%   <<"NextToken">> => string(),
%%   <<"SourceResourceList">> => list(source_resource()())
%% }
-type list_source_resources_result() :: #{binary() => any()}.

%% Example:
%% associate_discovered_resource_request() :: #{
%%   <<"DiscoveredResource">> := discovered_resource(),
%%   <<"DryRun">> => boolean(),
%%   <<"MigrationTaskName">> := string(),
%%   <<"ProgressUpdateStream">> := string()
%% }
-type associate_discovered_resource_request() :: #{binary() => any()}.

%% Example:
%% unauthorized_operation() :: #{
%%   <<"Message">> => string()
%% }
-type unauthorized_operation() :: #{binary() => any()}.

%% Example:
%% create_progress_update_stream_request() :: #{
%%   <<"DryRun">> => boolean(),
%%   <<"ProgressUpdateStreamName">> := string()
%% }
-type create_progress_update_stream_request() :: #{binary() => any()}.

%% Example:
%% delete_progress_update_stream_result() :: #{

%% }
-type delete_progress_update_stream_result() :: #{binary() => any()}.

%% Example:
%% dry_run_operation() :: #{
%%   <<"Message">> => string()
%% }
-type dry_run_operation() :: #{binary() => any()}.

%% Example:
%% list_application_states_result() :: #{
%%   <<"ApplicationStateList">> => list(application_state()()),
%%   <<"NextToken">> => string()
%% }
-type list_application_states_result() :: #{binary() => any()}.

%% Example:
%% source_resource() :: #{
%%   <<"Description">> => string(),
%%   <<"Name">> => string(),
%%   <<"StatusDetail">> => string()
%% }
-type source_resource() :: #{binary() => any()}.

%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% import_migration_task_request() :: #{
%%   <<"DryRun">> => boolean(),
%%   <<"MigrationTaskName">> := string(),
%%   <<"ProgressUpdateStream">> := string()
%% }
-type import_migration_task_request() :: #{binary() => any()}.

%% Example:
%% created_artifact() :: #{
%%   <<"Description">> => string(),
%%   <<"Name">> => string()
%% }
-type created_artifact() :: #{binary() => any()}.

%% Example:
%% associate_source_resource_request() :: #{
%%   <<"DryRun">> => boolean(),
%%   <<"MigrationTaskName">> := string(),
%%   <<"ProgressUpdateStream">> := string(),
%%   <<"SourceResource">> := source_resource()
%% }
-type associate_source_resource_request() :: #{binary() => any()}.

%% Example:
%% list_discovered_resources_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"MigrationTaskName">> := string(),
%%   <<"NextToken">> => string(),
%%   <<"ProgressUpdateStream">> := string()
%% }
-type list_discovered_resources_request() :: #{binary() => any()}.

%% Example:
%% list_progress_update_streams_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_progress_update_streams_request() :: #{binary() => any()}.

%% Example:
%% list_created_artifacts_result() :: #{
%%   <<"CreatedArtifactList">> => list(created_artifact()()),
%%   <<"NextToken">> => string()
%% }
-type list_created_artifacts_result() :: #{binary() => any()}.

%% Example:
%% invalid_input_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_input_exception() :: #{binary() => any()}.

%% Example:
%% progress_update_stream_summary() :: #{
%%   <<"ProgressUpdateStreamName">> => string()
%% }
-type progress_update_stream_summary() :: #{binary() => any()}.

%% Example:
%% associate_created_artifact_request() :: #{
%%   <<"CreatedArtifact">> := created_artifact(),
%%   <<"DryRun">> => boolean(),
%%   <<"MigrationTaskName">> := string(),
%%   <<"ProgressUpdateStream">> := string()
%% }
-type associate_created_artifact_request() :: #{binary() => any()}.

%% Example:
%% import_migration_task_result() :: #{

%% }
-type import_migration_task_result() :: #{binary() => any()}.

%% Example:
%% disassociate_discovered_resource_request() :: #{
%%   <<"ConfigurationId">> := string(),
%%   <<"DryRun">> => boolean(),
%%   <<"MigrationTaskName">> := string(),
%%   <<"ProgressUpdateStream">> := string()
%% }
-type disassociate_discovered_resource_request() :: #{binary() => any()}.

%% Example:
%% service_unavailable_exception() :: #{
%%   <<"Message">> => string()
%% }
-type service_unavailable_exception() :: #{binary() => any()}.

%% Example:
%% list_migration_task_updates_result() :: #{
%%   <<"MigrationTaskUpdateList">> => list(migration_task_update()()),
%%   <<"NextToken">> => string()
%% }
-type list_migration_task_updates_result() :: #{binary() => any()}.

%% Example:
%% notify_migration_task_state_request() :: #{
%%   <<"DryRun">> => boolean(),
%%   <<"MigrationTaskName">> := string(),
%%   <<"NextUpdateSeconds">> := integer(),
%%   <<"ProgressUpdateStream">> := string(),
%%   <<"Task">> := task(),
%%   <<"UpdateDateTime">> := non_neg_integer()
%% }
-type notify_migration_task_state_request() :: #{binary() => any()}.

%% Example:
%% disassociate_created_artifact_request() :: #{
%%   <<"CreatedArtifactName">> := string(),
%%   <<"DryRun">> => boolean(),
%%   <<"MigrationTaskName">> := string(),
%%   <<"ProgressUpdateStream">> := string()
%% }
-type disassociate_created_artifact_request() :: #{binary() => any()}.

%% Example:
%% disassociate_source_resource_request() :: #{
%%   <<"DryRun">> => boolean(),
%%   <<"MigrationTaskName">> := string(),
%%   <<"ProgressUpdateStream">> := string(),
%%   <<"SourceResourceName">> := string()
%% }
-type disassociate_source_resource_request() :: #{binary() => any()}.

%% Example:
%% list_created_artifacts_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"MigrationTaskName">> := string(),
%%   <<"NextToken">> => string(),
%%   <<"ProgressUpdateStream">> := string()
%% }
-type list_created_artifacts_request() :: #{binary() => any()}.

%% Example:
%% discovered_resource() :: #{
%%   <<"ConfigurationId">> => string(),
%%   <<"Description">> => string()
%% }
-type discovered_resource() :: #{binary() => any()}.

%% Example:
%% list_migration_task_updates_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"MigrationTaskName">> := string(),
%%   <<"NextToken">> => string(),
%%   <<"ProgressUpdateStream">> := string()
%% }
-type list_migration_task_updates_request() :: #{binary() => any()}.

%% Example:
%% internal_server_error() :: #{
%%   <<"Message">> => string()
%% }
-type internal_server_error() :: #{binary() => any()}.

%% Example:
%% access_denied_exception() :: #{
%%   <<"Message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% describe_migration_task_request() :: #{
%%   <<"MigrationTaskName">> := string(),
%%   <<"ProgressUpdateStream">> := string()
%% }
-type describe_migration_task_request() :: #{binary() => any()}.

%% Example:
%% list_migration_tasks_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ResourceName">> => string()
%% }
-type list_migration_tasks_request() :: #{binary() => any()}.

%% Example:
%% describe_migration_task_result() :: #{
%%   <<"MigrationTask">> => migration_task()
%% }
-type describe_migration_task_result() :: #{binary() => any()}.

%% Example:
%% policy_error_exception() :: #{
%%   <<"Message">> => string()
%% }
-type policy_error_exception() :: #{binary() => any()}.

%% Example:
%% associate_source_resource_result() :: #{

%% }
-type associate_source_resource_result() :: #{binary() => any()}.

%% Example:
%% throttling_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"RetryAfterSeconds">> => integer()
%% }
-type throttling_exception() :: #{binary() => any()}.

%% Example:
%% create_progress_update_stream_result() :: #{

%% }
-type create_progress_update_stream_result() :: #{binary() => any()}.

%% Example:
%% home_region_not_set_exception() :: #{
%%   <<"Message">> => string()
%% }
-type home_region_not_set_exception() :: #{binary() => any()}.

%% Example:
%% associate_created_artifact_result() :: #{

%% }
-type associate_created_artifact_result() :: #{binary() => any()}.

%% Example:
%% associate_discovered_resource_result() :: #{

%% }
-type associate_discovered_resource_result() :: #{binary() => any()}.

%% Example:
%% notify_application_state_result() :: #{

%% }
-type notify_application_state_result() :: #{binary() => any()}.

%% Example:
%% describe_application_state_request() :: #{
%%   <<"ApplicationId">> := string()
%% }
-type describe_application_state_request() :: #{binary() => any()}.

%% Example:
%% migration_task_summary() :: #{
%%   <<"MigrationTaskName">> => string(),
%%   <<"ProgressPercent">> => integer(),
%%   <<"ProgressUpdateStream">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"StatusDetail">> => string(),
%%   <<"UpdateDateTime">> => non_neg_integer()
%% }
-type migration_task_summary() :: #{binary() => any()}.

%% Example:
%% list_discovered_resources_result() :: #{
%%   <<"DiscoveredResourceList">> => list(discovered_resource()()),
%%   <<"NextToken">> => string()
%% }
-type list_discovered_resources_result() :: #{binary() => any()}.

%% Example:
%% migration_task_update() :: #{
%%   <<"MigrationTaskState">> => task(),
%%   <<"UpdateDateTime">> => non_neg_integer(),
%%   <<"UpdateType">> => list(any())
%% }
-type migration_task_update() :: #{binary() => any()}.

%% Example:
%% application_state() :: #{
%%   <<"ApplicationId">> => string(),
%%   <<"ApplicationStatus">> => list(any()),
%%   <<"LastUpdatedTime">> => non_neg_integer()
%% }
-type application_state() :: #{binary() => any()}.

%% Example:
%% disassociate_source_resource_result() :: #{

%% }
-type disassociate_source_resource_result() :: #{binary() => any()}.

%% Example:
%% describe_application_state_result() :: #{
%%   <<"ApplicationStatus">> => list(any()),
%%   <<"LastUpdatedTime">> => non_neg_integer()
%% }
-type describe_application_state_result() :: #{binary() => any()}.

%% Example:
%% migration_task() :: #{
%%   <<"MigrationTaskName">> => string(),
%%   <<"ProgressUpdateStream">> => string(),
%%   <<"ResourceAttributeList">> => list(resource_attribute()()),
%%   <<"Task">> => task(),
%%   <<"UpdateDateTime">> => non_neg_integer()
%% }
-type migration_task() :: #{binary() => any()}.

-type associate_created_artifact_errors() ::
    home_region_not_set_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_error() | 
    service_unavailable_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception() | 
    dry_run_operation() | 
    unauthorized_operation().

-type associate_discovered_resource_errors() ::
    home_region_not_set_exception() | 
    throttling_exception() | 
    policy_error_exception() | 
    access_denied_exception() | 
    internal_server_error() | 
    service_unavailable_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception() | 
    dry_run_operation() | 
    unauthorized_operation().

-type associate_source_resource_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_error() | 
    service_unavailable_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception() | 
    dry_run_operation() | 
    unauthorized_operation().

-type create_progress_update_stream_errors() ::
    home_region_not_set_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_error() | 
    service_unavailable_exception() | 
    invalid_input_exception() | 
    dry_run_operation() | 
    unauthorized_operation().

-type delete_progress_update_stream_errors() ::
    home_region_not_set_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_error() | 
    service_unavailable_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception() | 
    dry_run_operation() | 
    unauthorized_operation().

-type describe_application_state_errors() ::
    home_region_not_set_exception() | 
    throttling_exception() | 
    policy_error_exception() | 
    access_denied_exception() | 
    internal_server_error() | 
    service_unavailable_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception().

-type describe_migration_task_errors() ::
    home_region_not_set_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_error() | 
    service_unavailable_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception().

-type disassociate_created_artifact_errors() ::
    home_region_not_set_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_error() | 
    service_unavailable_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception() | 
    dry_run_operation() | 
    unauthorized_operation().

-type disassociate_discovered_resource_errors() ::
    home_region_not_set_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_error() | 
    service_unavailable_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception() | 
    dry_run_operation() | 
    unauthorized_operation().

-type disassociate_source_resource_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_error() | 
    service_unavailable_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception() | 
    dry_run_operation() | 
    unauthorized_operation().

-type import_migration_task_errors() ::
    home_region_not_set_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_error() | 
    service_unavailable_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception() | 
    dry_run_operation() | 
    unauthorized_operation().

-type list_application_states_errors() ::
    home_region_not_set_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_error() | 
    service_unavailable_exception() | 
    invalid_input_exception().

-type list_created_artifacts_errors() ::
    home_region_not_set_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_error() | 
    service_unavailable_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception().

-type list_discovered_resources_errors() ::
    home_region_not_set_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_error() | 
    service_unavailable_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception().

-type list_migration_task_updates_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_error() | 
    service_unavailable_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception().

-type list_migration_tasks_errors() ::
    home_region_not_set_exception() | 
    throttling_exception() | 
    policy_error_exception() | 
    access_denied_exception() | 
    internal_server_error() | 
    service_unavailable_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception().

-type list_progress_update_streams_errors() ::
    home_region_not_set_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_error() | 
    service_unavailable_exception() | 
    invalid_input_exception().

-type list_source_resources_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_error() | 
    service_unavailable_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception().

-type notify_application_state_errors() ::
    home_region_not_set_exception() | 
    throttling_exception() | 
    policy_error_exception() | 
    access_denied_exception() | 
    internal_server_error() | 
    service_unavailable_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception() | 
    dry_run_operation() | 
    unauthorized_operation().

-type notify_migration_task_state_errors() ::
    home_region_not_set_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_error() | 
    service_unavailable_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception() | 
    dry_run_operation() | 
    unauthorized_operation().

-type put_resource_attributes_errors() ::
    home_region_not_set_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_error() | 
    service_unavailable_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception() | 
    dry_run_operation() | 
    unauthorized_operation().

%%====================================================================
%% API
%%====================================================================

%% @doc Associates a created artifact of an AWS cloud resource, the target
%% receiving the
%% migration, with the migration task performed by a migration tool.
%%
%% This API has the
%% following traits:
%%
%% Migration tools can call the `AssociateCreatedArtifact' operation to
%% indicate which AWS artifact is associated with a migration task.
%%
%% The created artifact name must be provided in ARN (Amazon Resource Name)
%% format
%% which will contain information about type and region; for example:
%% `arn:aws:ec2:us-east-1:488216288981:image/ami-6d0ba87b'.
%%
%% Examples of the AWS resource behind the created artifact are, AMI's,
%% EC2 instance,
%% or DMS endpoint, etc.
-spec associate_created_artifact(aws_client:aws_client(), associate_created_artifact_request()) ->
    {ok, associate_created_artifact_result(), tuple()} |
    {error, any()} |
    {error, associate_created_artifact_errors(), tuple()}.
associate_created_artifact(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_created_artifact(Client, Input, []).

-spec associate_created_artifact(aws_client:aws_client(), associate_created_artifact_request(), proplists:proplist()) ->
    {ok, associate_created_artifact_result(), tuple()} |
    {error, any()} |
    {error, associate_created_artifact_errors(), tuple()}.
associate_created_artifact(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateCreatedArtifact">>, Input, Options).

%% @doc Associates a discovered resource ID from Application Discovery
%% Service with a migration
%% task.
-spec associate_discovered_resource(aws_client:aws_client(), associate_discovered_resource_request()) ->
    {ok, associate_discovered_resource_result(), tuple()} |
    {error, any()} |
    {error, associate_discovered_resource_errors(), tuple()}.
associate_discovered_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_discovered_resource(Client, Input, []).

-spec associate_discovered_resource(aws_client:aws_client(), associate_discovered_resource_request(), proplists:proplist()) ->
    {ok, associate_discovered_resource_result(), tuple()} |
    {error, any()} |
    {error, associate_discovered_resource_errors(), tuple()}.
associate_discovered_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateDiscoveredResource">>, Input, Options).

%% @doc Associates a source resource with a migration task.
%%
%% For example, the source resource can
%% be a source server, an application, or a migration wave.
-spec associate_source_resource(aws_client:aws_client(), associate_source_resource_request()) ->
    {ok, associate_source_resource_result(), tuple()} |
    {error, any()} |
    {error, associate_source_resource_errors(), tuple()}.
associate_source_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_source_resource(Client, Input, []).

-spec associate_source_resource(aws_client:aws_client(), associate_source_resource_request(), proplists:proplist()) ->
    {ok, associate_source_resource_result(), tuple()} |
    {error, any()} |
    {error, associate_source_resource_errors(), tuple()}.
associate_source_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateSourceResource">>, Input, Options).

%% @doc Creates a progress update stream which is an AWS resource used for
%% access control as
%% well as a namespace for migration task names that is implicitly linked to
%% your AWS account.
%%
%% It must uniquely identify the migration tool as it is used for all updates
%% made by the
%% tool; however, it does not need to be unique for each AWS account because
%% it is scoped to
%% the AWS account.
-spec create_progress_update_stream(aws_client:aws_client(), create_progress_update_stream_request()) ->
    {ok, create_progress_update_stream_result(), tuple()} |
    {error, any()} |
    {error, create_progress_update_stream_errors(), tuple()}.
create_progress_update_stream(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_progress_update_stream(Client, Input, []).

-spec create_progress_update_stream(aws_client:aws_client(), create_progress_update_stream_request(), proplists:proplist()) ->
    {ok, create_progress_update_stream_result(), tuple()} |
    {error, any()} |
    {error, create_progress_update_stream_errors(), tuple()}.
create_progress_update_stream(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateProgressUpdateStream">>, Input, Options).

%% @doc Deletes a progress update stream, including all of its tasks, which
%% was previously
%% created as an AWS resource used for access control.
%%
%% This API has the following
%% traits:
%%
%% The only parameter needed for `DeleteProgressUpdateStream' is the
%% stream name (same as a `CreateProgressUpdateStream' call).
%%
%% The call will return, and a background process will asynchronously delete
%% the
%% stream and all of its resources (tasks, associated resources, resource
%% attributes,
%% created artifacts).
%%
%% If the stream takes time to be deleted, it might still show up on a
%% `ListProgressUpdateStreams' call.
%%
%% `CreateProgressUpdateStream', `ImportMigrationTask',
%% `NotifyMigrationTaskState', and all Associate[*] APIs related to the
%% tasks belonging to the stream will throw &quot;InvalidInputException&quot;
%% if the stream of the
%% same name is in the process of being deleted.
%%
%% Once the stream and all of its resources are deleted,
%% `CreateProgressUpdateStream' for a stream of the same name will
%% succeed, and that stream will be an entirely new logical resource (without
%% any
%% resources associated with the old stream).
-spec delete_progress_update_stream(aws_client:aws_client(), delete_progress_update_stream_request()) ->
    {ok, delete_progress_update_stream_result(), tuple()} |
    {error, any()} |
    {error, delete_progress_update_stream_errors(), tuple()}.
delete_progress_update_stream(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_progress_update_stream(Client, Input, []).

-spec delete_progress_update_stream(aws_client:aws_client(), delete_progress_update_stream_request(), proplists:proplist()) ->
    {ok, delete_progress_update_stream_result(), tuple()} |
    {error, any()} |
    {error, delete_progress_update_stream_errors(), tuple()}.
delete_progress_update_stream(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteProgressUpdateStream">>, Input, Options).

%% @doc Gets the migration status of an application.
-spec describe_application_state(aws_client:aws_client(), describe_application_state_request()) ->
    {ok, describe_application_state_result(), tuple()} |
    {error, any()} |
    {error, describe_application_state_errors(), tuple()}.
describe_application_state(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_application_state(Client, Input, []).

-spec describe_application_state(aws_client:aws_client(), describe_application_state_request(), proplists:proplist()) ->
    {ok, describe_application_state_result(), tuple()} |
    {error, any()} |
    {error, describe_application_state_errors(), tuple()}.
describe_application_state(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeApplicationState">>, Input, Options).

%% @doc Retrieves a list of all attributes associated with a specific
%% migration task.
-spec describe_migration_task(aws_client:aws_client(), describe_migration_task_request()) ->
    {ok, describe_migration_task_result(), tuple()} |
    {error, any()} |
    {error, describe_migration_task_errors(), tuple()}.
describe_migration_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_migration_task(Client, Input, []).

-spec describe_migration_task(aws_client:aws_client(), describe_migration_task_request(), proplists:proplist()) ->
    {ok, describe_migration_task_result(), tuple()} |
    {error, any()} |
    {error, describe_migration_task_errors(), tuple()}.
describe_migration_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeMigrationTask">>, Input, Options).

%% @doc Disassociates a created artifact of an AWS resource with a migration
%% task performed by a
%% migration tool that was previously associated.
%%
%% This API has the following traits:
%%
%% A migration user can call the `DisassociateCreatedArtifacts' operation
%% to disassociate a created AWS Artifact from a migration task.
%%
%% The created artifact name must be provided in ARN (Amazon Resource Name)
%% format
%% which will contain information about type and region; for example:
%% `arn:aws:ec2:us-east-1:488216288981:image/ami-6d0ba87b'.
%%
%% Examples of the AWS resource behind the created artifact are, AMI's,
%% EC2 instance,
%% or RDS instance, etc.
-spec disassociate_created_artifact(aws_client:aws_client(), disassociate_created_artifact_request()) ->
    {ok, disassociate_created_artifact_result(), tuple()} |
    {error, any()} |
    {error, disassociate_created_artifact_errors(), tuple()}.
disassociate_created_artifact(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_created_artifact(Client, Input, []).

-spec disassociate_created_artifact(aws_client:aws_client(), disassociate_created_artifact_request(), proplists:proplist()) ->
    {ok, disassociate_created_artifact_result(), tuple()} |
    {error, any()} |
    {error, disassociate_created_artifact_errors(), tuple()}.
disassociate_created_artifact(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateCreatedArtifact">>, Input, Options).

%% @doc Disassociate an Application Discovery Service discovered resource
%% from a migration
%% task.
-spec disassociate_discovered_resource(aws_client:aws_client(), disassociate_discovered_resource_request()) ->
    {ok, disassociate_discovered_resource_result(), tuple()} |
    {error, any()} |
    {error, disassociate_discovered_resource_errors(), tuple()}.
disassociate_discovered_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_discovered_resource(Client, Input, []).

-spec disassociate_discovered_resource(aws_client:aws_client(), disassociate_discovered_resource_request(), proplists:proplist()) ->
    {ok, disassociate_discovered_resource_result(), tuple()} |
    {error, any()} |
    {error, disassociate_discovered_resource_errors(), tuple()}.
disassociate_discovered_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateDiscoveredResource">>, Input, Options).

%% @doc Removes the association between a source resource and a migration
%% task.
-spec disassociate_source_resource(aws_client:aws_client(), disassociate_source_resource_request()) ->
    {ok, disassociate_source_resource_result(), tuple()} |
    {error, any()} |
    {error, disassociate_source_resource_errors(), tuple()}.
disassociate_source_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_source_resource(Client, Input, []).

-spec disassociate_source_resource(aws_client:aws_client(), disassociate_source_resource_request(), proplists:proplist()) ->
    {ok, disassociate_source_resource_result(), tuple()} |
    {error, any()} |
    {error, disassociate_source_resource_errors(), tuple()}.
disassociate_source_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateSourceResource">>, Input, Options).

%% @doc Registers a new migration task which represents a server, database,
%% etc., being migrated
%% to AWS by a migration tool.
%%
%% This API is a prerequisite to calling the `NotifyMigrationTaskState'
%% API as
%% the migration tool must first register the migration task with Migration
%% Hub.
-spec import_migration_task(aws_client:aws_client(), import_migration_task_request()) ->
    {ok, import_migration_task_result(), tuple()} |
    {error, any()} |
    {error, import_migration_task_errors(), tuple()}.
import_migration_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    import_migration_task(Client, Input, []).

-spec import_migration_task(aws_client:aws_client(), import_migration_task_request(), proplists:proplist()) ->
    {ok, import_migration_task_result(), tuple()} |
    {error, any()} |
    {error, import_migration_task_errors(), tuple()}.
import_migration_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ImportMigrationTask">>, Input, Options).

%% @doc Lists all the migration statuses for your applications.
%%
%% If you use the optional
%% `ApplicationIds' parameter, only the migration statuses for those
%% applications will be returned.
-spec list_application_states(aws_client:aws_client(), list_application_states_request()) ->
    {ok, list_application_states_result(), tuple()} |
    {error, any()} |
    {error, list_application_states_errors(), tuple()}.
list_application_states(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_application_states(Client, Input, []).

-spec list_application_states(aws_client:aws_client(), list_application_states_request(), proplists:proplist()) ->
    {ok, list_application_states_result(), tuple()} |
    {error, any()} |
    {error, list_application_states_errors(), tuple()}.
list_application_states(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListApplicationStates">>, Input, Options).

%% @doc Lists the created artifacts attached to a given migration task in an
%% update stream.
%%
%% This
%% API has the following traits:
%%
%% Gets the list of the created artifacts while
%% migration is taking place.
%%
%% Shows the artifacts created by the migration tool that was associated by
%% the
%% `AssociateCreatedArtifact' API.
%%
%% Lists created artifacts in a paginated interface.
-spec list_created_artifacts(aws_client:aws_client(), list_created_artifacts_request()) ->
    {ok, list_created_artifacts_result(), tuple()} |
    {error, any()} |
    {error, list_created_artifacts_errors(), tuple()}.
list_created_artifacts(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_created_artifacts(Client, Input, []).

-spec list_created_artifacts(aws_client:aws_client(), list_created_artifacts_request(), proplists:proplist()) ->
    {ok, list_created_artifacts_result(), tuple()} |
    {error, any()} |
    {error, list_created_artifacts_errors(), tuple()}.
list_created_artifacts(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListCreatedArtifacts">>, Input, Options).

%% @doc Lists discovered resources associated with the given
%% `MigrationTask'.
-spec list_discovered_resources(aws_client:aws_client(), list_discovered_resources_request()) ->
    {ok, list_discovered_resources_result(), tuple()} |
    {error, any()} |
    {error, list_discovered_resources_errors(), tuple()}.
list_discovered_resources(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_discovered_resources(Client, Input, []).

-spec list_discovered_resources(aws_client:aws_client(), list_discovered_resources_request(), proplists:proplist()) ->
    {ok, list_discovered_resources_result(), tuple()} |
    {error, any()} |
    {error, list_discovered_resources_errors(), tuple()}.
list_discovered_resources(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDiscoveredResources">>, Input, Options).

%% @doc This is a paginated API that returns all the migration-task states
%% for the specified
%% `MigrationTaskName' and `ProgressUpdateStream'.
-spec list_migration_task_updates(aws_client:aws_client(), list_migration_task_updates_request()) ->
    {ok, list_migration_task_updates_result(), tuple()} |
    {error, any()} |
    {error, list_migration_task_updates_errors(), tuple()}.
list_migration_task_updates(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_migration_task_updates(Client, Input, []).

-spec list_migration_task_updates(aws_client:aws_client(), list_migration_task_updates_request(), proplists:proplist()) ->
    {ok, list_migration_task_updates_result(), tuple()} |
    {error, any()} |
    {error, list_migration_task_updates_errors(), tuple()}.
list_migration_task_updates(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListMigrationTaskUpdates">>, Input, Options).

%% @doc Lists all, or filtered by resource name, migration tasks associated
%% with the user
%% account making this call.
%%
%% This API has the following traits:
%%
%% Can show a summary list of the most recent migration tasks.
%%
%% Can show a summary list of migration tasks associated with a given
%% discovered
%% resource.
%%
%% Lists migration tasks in a paginated interface.
-spec list_migration_tasks(aws_client:aws_client(), list_migration_tasks_request()) ->
    {ok, list_migration_tasks_result(), tuple()} |
    {error, any()} |
    {error, list_migration_tasks_errors(), tuple()}.
list_migration_tasks(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_migration_tasks(Client, Input, []).

-spec list_migration_tasks(aws_client:aws_client(), list_migration_tasks_request(), proplists:proplist()) ->
    {ok, list_migration_tasks_result(), tuple()} |
    {error, any()} |
    {error, list_migration_tasks_errors(), tuple()}.
list_migration_tasks(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListMigrationTasks">>, Input, Options).

%% @doc Lists progress update streams associated with the user account making
%% this call.
-spec list_progress_update_streams(aws_client:aws_client(), list_progress_update_streams_request()) ->
    {ok, list_progress_update_streams_result(), tuple()} |
    {error, any()} |
    {error, list_progress_update_streams_errors(), tuple()}.
list_progress_update_streams(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_progress_update_streams(Client, Input, []).

-spec list_progress_update_streams(aws_client:aws_client(), list_progress_update_streams_request(), proplists:proplist()) ->
    {ok, list_progress_update_streams_result(), tuple()} |
    {error, any()} |
    {error, list_progress_update_streams_errors(), tuple()}.
list_progress_update_streams(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListProgressUpdateStreams">>, Input, Options).

%% @doc Lists all the source resource that are associated with the specified
%% `MigrationTaskName' and `ProgressUpdateStream'.
-spec list_source_resources(aws_client:aws_client(), list_source_resources_request()) ->
    {ok, list_source_resources_result(), tuple()} |
    {error, any()} |
    {error, list_source_resources_errors(), tuple()}.
list_source_resources(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_source_resources(Client, Input, []).

-spec list_source_resources(aws_client:aws_client(), list_source_resources_request(), proplists:proplist()) ->
    {ok, list_source_resources_result(), tuple()} |
    {error, any()} |
    {error, list_source_resources_errors(), tuple()}.
list_source_resources(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListSourceResources">>, Input, Options).

%% @doc Sets the migration state of an application.
%%
%% For a given application identified by the
%% value passed to `ApplicationId', its status is set or updated by
%% passing one of
%% three values to `Status':
%% ```
%% NOT_STARTED | IN_PROGRESS | COMPLETED'''.
-spec notify_application_state(aws_client:aws_client(), notify_application_state_request()) ->
    {ok, notify_application_state_result(), tuple()} |
    {error, any()} |
    {error, notify_application_state_errors(), tuple()}.
notify_application_state(Client, Input)
  when is_map(Client), is_map(Input) ->
    notify_application_state(Client, Input, []).

-spec notify_application_state(aws_client:aws_client(), notify_application_state_request(), proplists:proplist()) ->
    {ok, notify_application_state_result(), tuple()} |
    {error, any()} |
    {error, notify_application_state_errors(), tuple()}.
notify_application_state(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"NotifyApplicationState">>, Input, Options).

%% @doc Notifies Migration Hub of the current status, progress, or other
%% detail regarding a
%% migration task.
%%
%% This API has the following traits:
%%
%% Migration tools will call the `NotifyMigrationTaskState' API to share
%% the latest progress and status.
%%
%% `MigrationTaskName' is used for addressing updates to the correct
%% target.
%%
%% `ProgressUpdateStream' is used for access control and to provide a
%% namespace for each migration tool.
-spec notify_migration_task_state(aws_client:aws_client(), notify_migration_task_state_request()) ->
    {ok, notify_migration_task_state_result(), tuple()} |
    {error, any()} |
    {error, notify_migration_task_state_errors(), tuple()}.
notify_migration_task_state(Client, Input)
  when is_map(Client), is_map(Input) ->
    notify_migration_task_state(Client, Input, []).

-spec notify_migration_task_state(aws_client:aws_client(), notify_migration_task_state_request(), proplists:proplist()) ->
    {ok, notify_migration_task_state_result(), tuple()} |
    {error, any()} |
    {error, notify_migration_task_state_errors(), tuple()}.
notify_migration_task_state(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"NotifyMigrationTaskState">>, Input, Options).

%% @doc Provides identifying details of the resource being migrated so that
%% it can be associated
%% in the Application Discovery Service repository.
%%
%% This association occurs asynchronously
%% after `PutResourceAttributes' returns.
%%
%% Keep in mind that subsequent calls to PutResourceAttributes will override
%% previously stored attributes. For example, if it is first called with a
%% MAC
%% address, but later, it is desired to add an IP address, it
%% will then be required to call it with both the IP and MAC
%% addresses to prevent overriding the MAC address.
%%
%% Note the instructions regarding the special use case of the
%% `ResourceAttributeList'
%% :
%% https://docs.aws.amazon.com/migrationhub/latest/ug/API_PutResourceAttributes.html#migrationhub-PutResourceAttributes-request-ResourceAttributeList
%% parameter when specifying any
%% &quot;VM&quot; related value.
%%
%% Because this is an asynchronous call, it will always return 200, whether
%% an
%% association occurs or not. To confirm if an association was found based on
%% the provided
%% details, call `ListDiscoveredResources'.
-spec put_resource_attributes(aws_client:aws_client(), put_resource_attributes_request()) ->
    {ok, put_resource_attributes_result(), tuple()} |
    {error, any()} |
    {error, put_resource_attributes_errors(), tuple()}.
put_resource_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_resource_attributes(Client, Input, []).

-spec put_resource_attributes(aws_client:aws_client(), put_resource_attributes_request(), proplists:proplist()) ->
    {ok, put_resource_attributes_result(), tuple()} |
    {error, any()} |
    {error, put_resource_attributes_errors(), tuple()}.
put_resource_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutResourceAttributes">>, Input, Options).

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
    Client1 = Client#{service => <<"mgh">>},
    Host = build_host(<<"mgh">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"AWSMigrationHub.", Action/binary>>}
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
