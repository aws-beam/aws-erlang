%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon CloudWatch Synthetics
%%
%% You can use Amazon CloudWatch Synthetics to continually monitor your
%% services.
%%
%% You can
%% create and manage canaries, which are modular, lightweight scripts
%% that monitor your endpoints and APIs
%% from the outside-in. You can set up your canaries to run
%% 24 hours a day, once per minute. The canaries help you check the
%% availability and latency
%% of your web services and troubleshoot anomalies by investigating load time
%% data,
%% screenshots of the UI, logs, and metrics. The canaries seamlessly
%% integrate with CloudWatch
%% ServiceLens to help you trace the causes of impacted nodes in your
%% applications. For more
%% information, see Using ServiceLens to Monitor
%% the Health of Your Applications:
%% https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/ServiceLens.html
%% in the Amazon CloudWatch User
%% Guide.
%%
%% Before you create and manage canaries, be aware of the security
%% considerations. For more
%% information, see Security
%% Considerations for Synthetics Canaries:
%% https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/servicelens_canaries_security.html.
-module(aws_synthetics).

-export([associate_resource/3,
         associate_resource/4,
         create_canary/2,
         create_canary/3,
         create_group/2,
         create_group/3,
         delete_canary/3,
         delete_canary/4,
         delete_group/3,
         delete_group/4,
         describe_canaries/2,
         describe_canaries/3,
         describe_canaries_last_run/2,
         describe_canaries_last_run/3,
         describe_runtime_versions/2,
         describe_runtime_versions/3,
         disassociate_resource/3,
         disassociate_resource/4,
         get_canary/2,
         get_canary/4,
         get_canary/5,
         get_canary_runs/3,
         get_canary_runs/4,
         get_group/2,
         get_group/4,
         get_group/5,
         list_associated_groups/3,
         list_associated_groups/4,
         list_group_resources/3,
         list_group_resources/4,
         list_groups/2,
         list_groups/3,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         start_canary/3,
         start_canary/4,
         start_canary_dry_run/3,
         start_canary_dry_run/4,
         stop_canary/3,
         stop_canary/4,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_canary/3,
         update_canary/4]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% get_canary_runs_request() :: #{
%%   <<"DryRunId">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"RunType">> => list(any())
%% }
-type get_canary_runs_request() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"Tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% internal_failure_exception() :: #{
%%   <<"Message">> => string()
%% }
-type internal_failure_exception() :: #{binary() => any()}.

%% Example:
%% stop_canary_request() :: #{}
-type stop_canary_request() :: #{}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% describe_canaries_response() :: #{
%%   <<"Canaries">> => list(canary()),
%%   <<"NextToken">> => string()
%% }
-type describe_canaries_response() :: #{binary() => any()}.


%% Example:
%% describe_canaries_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"Names">> => list(string()),
%%   <<"NextToken">> => string()
%% }
-type describe_canaries_request() :: #{binary() => any()}.


%% Example:
%% canary_dry_run_config_output() :: #{
%%   <<"DryRunId">> => string()
%% }
-type canary_dry_run_config_output() :: #{binary() => any()}.

%% Example:
%% delete_canary_response() :: #{}
-type delete_canary_response() :: #{}.


%% Example:
%% create_canary_request() :: #{
%%   <<"ArtifactConfig">> => artifact_config_input(),
%%   <<"ArtifactS3Location">> := string(),
%%   <<"Code">> := canary_code_input(),
%%   <<"ExecutionRoleArn">> := string(),
%%   <<"FailureRetentionPeriodInDays">> => integer(),
%%   <<"Name">> := string(),
%%   <<"ProvisionedResourceCleanup">> => list(any()),
%%   <<"ResourcesToReplicateTags">> => list(list(any())()),
%%   <<"RunConfig">> => canary_run_config_input(),
%%   <<"RuntimeVersion">> := string(),
%%   <<"Schedule">> := canary_schedule_input(),
%%   <<"SuccessRetentionPeriodInDays">> => integer(),
%%   <<"Tags">> => map(),
%%   <<"VpcConfig">> => vpc_config_input()
%% }
-type create_canary_request() :: #{binary() => any()}.


%% Example:
%% visual_reference_output() :: #{
%%   <<"BaseCanaryRunId">> => string(),
%%   <<"BaseScreenshots">> => list(base_screenshot())
%% }
-type visual_reference_output() :: #{binary() => any()}.


%% Example:
%% start_canary_dry_run_request() :: #{
%%   <<"ArtifactConfig">> => artifact_config_input(),
%%   <<"ArtifactS3Location">> => string(),
%%   <<"Code">> => canary_code_input(),
%%   <<"ExecutionRoleArn">> => string(),
%%   <<"FailureRetentionPeriodInDays">> => integer(),
%%   <<"ProvisionedResourceCleanup">> => list(any()),
%%   <<"RunConfig">> => canary_run_config_input(),
%%   <<"RuntimeVersion">> => string(),
%%   <<"SuccessRetentionPeriodInDays">> => integer(),
%%   <<"VisualReference">> => visual_reference_input(),
%%   <<"VpcConfig">> => vpc_config_input()
%% }
-type start_canary_dry_run_request() :: #{binary() => any()}.


%% Example:
%% canary_status() :: #{
%%   <<"State">> => list(any()),
%%   <<"StateReason">> => string(),
%%   <<"StateReasonCode">> => list(any())
%% }
-type canary_status() :: #{binary() => any()}.


%% Example:
%% describe_runtime_versions_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"RuntimeVersions">> => list(runtime_version())
%% }
-type describe_runtime_versions_response() :: #{binary() => any()}.


%% Example:
%% canary_run_config_output() :: #{
%%   <<"ActiveTracing">> => boolean(),
%%   <<"EphemeralStorage">> => integer(),
%%   <<"MemoryInMB">> => integer(),
%%   <<"TimeoutInSeconds">> => integer()
%% }
-type canary_run_config_output() :: #{binary() => any()}.


%% Example:
%% describe_canaries_last_run_response() :: #{
%%   <<"CanariesLastRun">> => list(canary_last_run()),
%%   <<"NextToken">> => string()
%% }
-type describe_canaries_last_run_response() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"TagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% stop_canary_response() :: #{}
-type stop_canary_response() :: #{}.


%% Example:
%% too_many_requests_exception() :: #{
%%   <<"Message">> => string()
%% }
-type too_many_requests_exception() :: #{binary() => any()}.


%% Example:
%% list_group_resources_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Resources">> => list(string())
%% }
-type list_group_resources_response() :: #{binary() => any()}.


%% Example:
%% s3_encryption_config() :: #{
%%   <<"EncryptionMode">> => list(any()),
%%   <<"KmsKeyArn">> => string()
%% }
-type s3_encryption_config() :: #{binary() => any()}.

%% Example:
%% start_canary_response() :: #{}
-type start_canary_response() :: #{}.


%% Example:
%% canary_run() :: #{
%%   <<"ArtifactS3Location">> => string(),
%%   <<"DryRunConfig">> => canary_dry_run_config_output(),
%%   <<"Id">> => string(),
%%   <<"Name">> => string(),
%%   <<"RetryAttempt">> => integer(),
%%   <<"ScheduledRunId">> => string(),
%%   <<"Status">> => canary_run_status(),
%%   <<"Timeline">> => canary_run_timeline()
%% }
-type canary_run() :: #{binary() => any()}.


%% Example:
%% canary_schedule_input() :: #{
%%   <<"DurationInSeconds">> => float(),
%%   <<"Expression">> => string(),
%%   <<"RetryConfig">> => retry_config_input()
%% }
-type canary_schedule_input() :: #{binary() => any()}.

%% Example:
%% associate_resource_response() :: #{}
-type associate_resource_response() :: #{}.


%% Example:
%% get_canary_response() :: #{
%%   <<"Canary">> => canary()
%% }
-type get_canary_response() :: #{binary() => any()}.


%% Example:
%% canary_run_config_input() :: #{
%%   <<"ActiveTracing">> => boolean(),
%%   <<"EnvironmentVariables">> => map(),
%%   <<"EphemeralStorage">> => integer(),
%%   <<"MemoryInMB">> => integer(),
%%   <<"TimeoutInSeconds">> => integer()
%% }
-type canary_run_config_input() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"Message">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% update_canary_request() :: #{
%%   <<"ArtifactConfig">> => artifact_config_input(),
%%   <<"ArtifactS3Location">> => string(),
%%   <<"Code">> => canary_code_input(),
%%   <<"DryRunId">> => string(),
%%   <<"ExecutionRoleArn">> => string(),
%%   <<"FailureRetentionPeriodInDays">> => integer(),
%%   <<"ProvisionedResourceCleanup">> => list(any()),
%%   <<"RunConfig">> => canary_run_config_input(),
%%   <<"RuntimeVersion">> => string(),
%%   <<"Schedule">> => canary_schedule_input(),
%%   <<"SuccessRetentionPeriodInDays">> => integer(),
%%   <<"VisualReference">> => visual_reference_input(),
%%   <<"VpcConfig">> => vpc_config_input()
%% }
-type update_canary_request() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% canary_run_timeline() :: #{
%%   <<"Completed">> => non_neg_integer(),
%%   <<"MetricTimestampForRunAndRetries">> => non_neg_integer(),
%%   <<"Started">> => non_neg_integer()
%% }
-type canary_run_timeline() :: #{binary() => any()}.

%% Example:
%% update_canary_response() :: #{}
-type update_canary_response() :: #{}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"Message">> => string()
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% canary_run_status() :: #{
%%   <<"State">> => list(any()),
%%   <<"StateReason">> => string(),
%%   <<"StateReasonCode">> => list(any()),
%%   <<"TestResult">> => list(any())
%% }
-type canary_run_status() :: #{binary() => any()}.


%% Example:
%% canary_last_run() :: #{
%%   <<"CanaryName">> => string(),
%%   <<"LastRun">> => canary_run()
%% }
-type canary_last_run() :: #{binary() => any()}.


%% Example:
%% artifact_config_output() :: #{
%%   <<"S3Encryption">> => s3_encryption_config()
%% }
-type artifact_config_output() :: #{binary() => any()}.


%% Example:
%% base_screenshot() :: #{
%%   <<"IgnoreCoordinates">> => list(string()),
%%   <<"ScreenshotName">> => string()
%% }
-type base_screenshot() :: #{binary() => any()}.


%% Example:
%% not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type not_found_exception() :: #{binary() => any()}.


%% Example:
%% vpc_config_output() :: #{
%%   <<"Ipv6AllowedForDualStack">> => boolean(),
%%   <<"SecurityGroupIds">> => list(string()),
%%   <<"SubnetIds">> => list(string()),
%%   <<"VpcId">> => string()
%% }
-type vpc_config_output() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"Tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% create_group_request() :: #{
%%   <<"Name">> := string(),
%%   <<"Tags">> => map()
%% }
-type create_group_request() :: #{binary() => any()}.

%% Example:
%% disassociate_resource_response() :: #{}
-type disassociate_resource_response() :: #{}.


%% Example:
%% canary_timeline() :: #{
%%   <<"Created">> => non_neg_integer(),
%%   <<"LastModified">> => non_neg_integer(),
%%   <<"LastStarted">> => non_neg_integer(),
%%   <<"LastStopped">> => non_neg_integer()
%% }
-type canary_timeline() :: #{binary() => any()}.


%% Example:
%% associate_resource_request() :: #{
%%   <<"ResourceArn">> := string()
%% }
-type associate_resource_request() :: #{binary() => any()}.


%% Example:
%% get_canary_runs_response() :: #{
%%   <<"CanaryRuns">> => list(canary_run()),
%%   <<"NextToken">> => string()
%% }
-type get_canary_runs_response() :: #{binary() => any()}.


%% Example:
%% canary_code_output() :: #{
%%   <<"Handler">> => string(),
%%   <<"SourceLocationArn">> => string()
%% }
-type canary_code_output() :: #{binary() => any()}.


%% Example:
%% describe_canaries_last_run_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"Names">> => list(string()),
%%   <<"NextToken">> => string()
%% }
-type describe_canaries_last_run_request() :: #{binary() => any()}.


%% Example:
%% disassociate_resource_request() :: #{
%%   <<"ResourceArn">> := string()
%% }
-type disassociate_resource_request() :: #{binary() => any()}.


%% Example:
%% describe_runtime_versions_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type describe_runtime_versions_request() :: #{binary() => any()}.


%% Example:
%% dry_run_config_output() :: #{
%%   <<"DryRunId">> => string(),
%%   <<"LastDryRunExecutionStatus">> => string()
%% }
-type dry_run_config_output() :: #{binary() => any()}.


%% Example:
%% visual_reference_input() :: #{
%%   <<"BaseCanaryRunId">> => string(),
%%   <<"BaseScreenshots">> => list(base_screenshot())
%% }
-type visual_reference_input() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"Message">> => string()
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% request_entity_too_large_exception() :: #{
%%   <<"Message">> => string()
%% }
-type request_entity_too_large_exception() :: #{binary() => any()}.

%% Example:
%% start_canary_request() :: #{}
-type start_canary_request() :: #{}.

%% Example:
%% delete_group_response() :: #{}
-type delete_group_response() :: #{}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"Message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% runtime_version() :: #{
%%   <<"DeprecationDate">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"ReleaseDate">> => non_neg_integer(),
%%   <<"VersionName">> => string()
%% }
-type runtime_version() :: #{binary() => any()}.


%% Example:
%% canary() :: #{
%%   <<"ArtifactConfig">> => artifact_config_output(),
%%   <<"ArtifactS3Location">> => string(),
%%   <<"Code">> => canary_code_output(),
%%   <<"DryRunConfig">> => dry_run_config_output(),
%%   <<"EngineArn">> => string(),
%%   <<"ExecutionRoleArn">> => string(),
%%   <<"FailureRetentionPeriodInDays">> => integer(),
%%   <<"Id">> => string(),
%%   <<"Name">> => string(),
%%   <<"ProvisionedResourceCleanup">> => list(any()),
%%   <<"RunConfig">> => canary_run_config_output(),
%%   <<"RuntimeVersion">> => string(),
%%   <<"Schedule">> => canary_schedule_output(),
%%   <<"Status">> => canary_status(),
%%   <<"SuccessRetentionPeriodInDays">> => integer(),
%%   <<"Tags">> => map(),
%%   <<"Timeline">> => canary_timeline(),
%%   <<"VisualReference">> => visual_reference_output(),
%%   <<"VpcConfig">> => vpc_config_output()
%% }
-type canary() :: #{binary() => any()}.


%% Example:
%% vpc_config_input() :: #{
%%   <<"Ipv6AllowedForDualStack">> => boolean(),
%%   <<"SecurityGroupIds">> => list(string()),
%%   <<"SubnetIds">> => list(string())
%% }
-type vpc_config_input() :: #{binary() => any()}.


%% Example:
%% delete_canary_request() :: #{
%%   <<"DeleteLambda">> => boolean()
%% }
-type delete_canary_request() :: #{binary() => any()}.


%% Example:
%% start_canary_dry_run_response() :: #{
%%   <<"DryRunConfig">> => dry_run_config_output()
%% }
-type start_canary_dry_run_response() :: #{binary() => any()}.


%% Example:
%% list_associated_groups_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_associated_groups_request() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"Message">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% list_group_resources_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_group_resources_request() :: #{binary() => any()}.


%% Example:
%% group() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"Id">> => string(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"Tags">> => map()
%% }
-type group() :: #{binary() => any()}.


%% Example:
%% get_group_response() :: #{
%%   <<"Group">> => group()
%% }
-type get_group_response() :: #{binary() => any()}.

%% Example:
%% delete_group_request() :: #{}
-type delete_group_request() :: #{}.


%% Example:
%% get_canary_request() :: #{
%%   <<"DryRunId">> => string()
%% }
-type get_canary_request() :: #{binary() => any()}.


%% Example:
%% bad_request_exception() :: #{
%%   <<"Message">> => string()
%% }
-type bad_request_exception() :: #{binary() => any()}.


%% Example:
%% group_summary() :: #{
%%   <<"Arn">> => string(),
%%   <<"Id">> => string(),
%%   <<"Name">> => string()
%% }
-type group_summary() :: #{binary() => any()}.


%% Example:
%% list_associated_groups_response() :: #{
%%   <<"Groups">> => list(group_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_associated_groups_response() :: #{binary() => any()}.


%% Example:
%% list_groups_response() :: #{
%%   <<"Groups">> => list(group_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_groups_response() :: #{binary() => any()}.

%% Example:
%% get_group_request() :: #{}
-type get_group_request() :: #{}.


%% Example:
%% canary_schedule_output() :: #{
%%   <<"DurationInSeconds">> => float(),
%%   <<"Expression">> => string(),
%%   <<"RetryConfig">> => retry_config_output()
%% }
-type canary_schedule_output() :: #{binary() => any()}.


%% Example:
%% list_groups_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_groups_request() :: #{binary() => any()}.


%% Example:
%% retry_config_input() :: #{
%%   <<"MaxRetries">> => integer()
%% }
-type retry_config_input() :: #{binary() => any()}.


%% Example:
%% create_canary_response() :: #{
%%   <<"Canary">> => canary()
%% }
-type create_canary_response() :: #{binary() => any()}.


%% Example:
%% canary_code_input() :: #{
%%   <<"Handler">> => string(),
%%   <<"S3Bucket">> => string(),
%%   <<"S3Key">> => string(),
%%   <<"S3Version">> => string(),
%%   <<"ZipFile">> => binary()
%% }
-type canary_code_input() :: #{binary() => any()}.


%% Example:
%% artifact_config_input() :: #{
%%   <<"S3Encryption">> => s3_encryption_config()
%% }
-type artifact_config_input() :: #{binary() => any()}.


%% Example:
%% create_group_response() :: #{
%%   <<"Group">> => group()
%% }
-type create_group_response() :: #{binary() => any()}.


%% Example:
%% retry_config_output() :: #{
%%   <<"MaxRetries">> => integer()
%% }
-type retry_config_output() :: #{binary() => any()}.

-type associate_resource_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_canary_errors() ::
    validation_exception() | 
    request_entity_too_large_exception() | 
    internal_server_exception().

-type create_group_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type delete_canary_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_group_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type describe_canaries_errors() ::
    validation_exception() | 
    internal_server_exception().

-type describe_canaries_last_run_errors() ::
    validation_exception() | 
    internal_server_exception().

-type describe_runtime_versions_errors() ::
    validation_exception() | 
    internal_server_exception().

-type disassociate_resource_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_canary_errors() ::
    validation_exception() | 
    internal_server_exception().

-type get_canary_runs_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_group_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type list_associated_groups_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_group_resources_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type list_groups_errors() ::
    validation_exception() | 
    internal_server_exception().

-type list_tags_for_resource_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    internal_failure_exception().

-type start_canary_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type start_canary_dry_run_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type stop_canary_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type tag_resource_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    internal_failure_exception().

-type untag_resource_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    internal_failure_exception().

-type update_canary_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    request_entity_too_large_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Associates a canary with a group.
%%
%% Using groups can help you with
%% managing and automating your canaries, and you can also view aggregated
%% run results and statistics
%% for all canaries in a group.
%%
%% You must run this operation in the Region where the canary exists.
-spec associate_resource(aws_client:aws_client(), binary() | list(), associate_resource_request()) ->
    {ok, associate_resource_response(), tuple()} |
    {error, any()} |
    {error, associate_resource_errors(), tuple()}.
associate_resource(Client, GroupIdentifier, Input) ->
    associate_resource(Client, GroupIdentifier, Input, []).

-spec associate_resource(aws_client:aws_client(), binary() | list(), associate_resource_request(), proplists:proplist()) ->
    {ok, associate_resource_response(), tuple()} |
    {error, any()} |
    {error, associate_resource_errors(), tuple()}.
associate_resource(Client, GroupIdentifier, Input0, Options0) ->
    Method = patch,
    Path = ["/group/", aws_util:encode_uri(GroupIdentifier), "/associate"],
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

%% @doc Creates a canary.
%%
%% Canaries are scripts that monitor your endpoints and APIs from the
%% outside-in. Canaries help you check the availability and latency of your
%% web services and
%% troubleshoot anomalies by investigating load time data, screenshots of the
%% UI, logs, and
%% metrics. You can set up a canary to run continuously or just once.
%%
%% Do not use `CreateCanary' to modify an existing canary. Use
%% UpdateCanary:
%% https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_UpdateCanary.html
%% instead.
%%
%% To create canaries, you must have the `CloudWatchSyntheticsFullAccess'
%% policy.
%% If you are creating a new IAM role for the canary, you also need the
%% `iam:CreateRole', `iam:CreatePolicy' and
%% `iam:AttachRolePolicy' permissions. For more information, see
%% Necessary
%% Roles and Permissions:
%% https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Roles.
%%
%% Do not include secrets or proprietary information in your canary names.
%% The canary name
%% makes up part of the Amazon Resource Name (ARN) for the canary, and the
%% ARN is included in
%% outbound calls over the internet. For more information, see Security
%% Considerations for Synthetics Canaries:
%% https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/servicelens_canaries_security.html.
-spec create_canary(aws_client:aws_client(), create_canary_request()) ->
    {ok, create_canary_response(), tuple()} |
    {error, any()} |
    {error, create_canary_errors(), tuple()}.
create_canary(Client, Input) ->
    create_canary(Client, Input, []).

-spec create_canary(aws_client:aws_client(), create_canary_request(), proplists:proplist()) ->
    {ok, create_canary_response(), tuple()} |
    {error, any()} |
    {error, create_canary_errors(), tuple()}.
create_canary(Client, Input0, Options0) ->
    Method = post,
    Path = ["/canary"],
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

%% @doc Creates a group which you can use to associate canaries with each
%% other, including cross-Region
%% canaries.
%%
%% Using groups can help you with
%% managing and automating your canaries, and you can also view aggregated
%% run results and statistics
%% for all canaries in a group.
%%
%% Groups are global resources. When you create a group, it is replicated
%% across Amazon Web Services Regions, and
%% you can view it and add canaries to it from any Region.
%% Although the group ARN format reflects the Region name where it was
%% created, a group is not constrained to any Region.
%% This means that you can put canaries from multiple Regions into the same
%% group, and then use
%% that group to view and manage all of those canaries in a single view.
%%
%% Groups are supported in all Regions except the Regions that are disabled
%% by default. For more information
%% about these Regions, see Enabling a Region:
%% https://docs.aws.amazon.com/general/latest/gr/rande-manage.html#rande-manage-enable.
%%
%% Each group can contain as many as 10 canaries. You can have as many as 20
%% groups in your account. Any single canary
%% can be a member of up to 10 groups.
-spec create_group(aws_client:aws_client(), create_group_request()) ->
    {ok, create_group_response(), tuple()} |
    {error, any()} |
    {error, create_group_errors(), tuple()}.
create_group(Client, Input) ->
    create_group(Client, Input, []).

-spec create_group(aws_client:aws_client(), create_group_request(), proplists:proplist()) ->
    {ok, create_group_response(), tuple()} |
    {error, any()} |
    {error, create_group_errors(), tuple()}.
create_group(Client, Input0, Options0) ->
    Method = post,
    Path = ["/group"],
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

%% @doc Permanently deletes the specified canary.
%%
%% If the canary's `ProvisionedResourceCleanup' field is set to
%% `AUTOMATIC'
%% or you specify `DeleteLambda' in this operation as `true',
%% CloudWatch Synthetics also deletes
%% the Lambda functions and layers that are used by the canary.
%%
%% Other resources used and created by the canary are not automatically
%% deleted.
%% After you delete a canary, you
%% should also delete the following:
%%
%% The CloudWatch alarms created for this canary. These alarms have a name of
%%
%% ```
%% Synthetics-Alarm-first-198-characters-of-canary-name-canaryId-alarm number
%% '''
%%
%% Amazon S3 objects and buckets, such as the canary's artifact location.
%%
%% IAM roles created for the canary. If they were created in the console,
%% these roles
%% have the name
%% ```
%% role/service-role/CloudWatchSyntheticsRole-First-21-Characters-of-CanaryName
%% '''
%%
%% CloudWatch Logs log groups created for the canary. These logs groups have
%% the name
%%
%% ```
%% /aws/lambda/cwsyn-First-21-Characters-of-CanaryName '''
%%
%% Before you delete a canary, you might want to use `GetCanary' to
%% display
%% the information about this canary. Make
%% note of the information returned by this operation so that you can delete
%% these resources
%% after you delete the canary.
-spec delete_canary(aws_client:aws_client(), binary() | list(), delete_canary_request()) ->
    {ok, delete_canary_response(), tuple()} |
    {error, any()} |
    {error, delete_canary_errors(), tuple()}.
delete_canary(Client, Name, Input) ->
    delete_canary(Client, Name, Input, []).

-spec delete_canary(aws_client:aws_client(), binary() | list(), delete_canary_request(), proplists:proplist()) ->
    {ok, delete_canary_response(), tuple()} |
    {error, any()} |
    {error, delete_canary_errors(), tuple()}.
delete_canary(Client, Name, Input0, Options0) ->
    Method = delete,
    Path = ["/canary/", aws_util:encode_uri(Name), ""],
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
                     {<<"deleteLambda">>, <<"DeleteLambda">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a group.
%%
%% The group doesn't need to be empty to be deleted. If there are
%% canaries in the group,
%% they are not deleted when you delete the group.
%%
%% Groups are a global resource that appear in all Regions, but the request
%% to delete a group
%% must be made from its home Region. You can find the home Region of a group
%% within its ARN.
-spec delete_group(aws_client:aws_client(), binary() | list(), delete_group_request()) ->
    {ok, delete_group_response(), tuple()} |
    {error, any()} |
    {error, delete_group_errors(), tuple()}.
delete_group(Client, GroupIdentifier, Input) ->
    delete_group(Client, GroupIdentifier, Input, []).

-spec delete_group(aws_client:aws_client(), binary() | list(), delete_group_request(), proplists:proplist()) ->
    {ok, delete_group_response(), tuple()} |
    {error, any()} |
    {error, delete_group_errors(), tuple()}.
delete_group(Client, GroupIdentifier, Input0, Options0) ->
    Method = delete,
    Path = ["/group/", aws_util:encode_uri(GroupIdentifier), ""],
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

%% @doc This operation returns a list of the canaries in your account, along
%% with full details
%% about each canary.
%%
%% This operation supports resource-level authorization using an IAM policy
%% and
%% the `Names' parameter. If you specify the `Names' parameter, the
%% operation is successful only if you have authorization to view
%% all the canaries that you specify in your request. If you do not have
%% permission to view any of
%% the canaries, the request fails with a 403 response.
%%
%% You are required to use the `Names' parameter if you are logged on to
%% a user or role that has an
%% IAM policy that restricts which canaries that you are allowed to view. For
%% more information,
%% see
%% Limiting a user to viewing specific canaries:
%% https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Restricted.html.
-spec describe_canaries(aws_client:aws_client(), describe_canaries_request()) ->
    {ok, describe_canaries_response(), tuple()} |
    {error, any()} |
    {error, describe_canaries_errors(), tuple()}.
describe_canaries(Client, Input) ->
    describe_canaries(Client, Input, []).

-spec describe_canaries(aws_client:aws_client(), describe_canaries_request(), proplists:proplist()) ->
    {ok, describe_canaries_response(), tuple()} |
    {error, any()} |
    {error, describe_canaries_errors(), tuple()}.
describe_canaries(Client, Input0, Options0) ->
    Method = post,
    Path = ["/canaries"],
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

%% @doc Use this operation to see information from the most recent run of
%% each canary that you have created.
%%
%% This operation supports resource-level authorization using an IAM policy
%% and
%% the `Names' parameter. If you specify the `Names' parameter, the
%% operation is successful only if you have authorization to view
%% all the canaries that you specify in your request. If you do not have
%% permission to view any of
%% the canaries, the request fails with a 403 response.
%%
%% You are required to use the `Names' parameter if you are logged on to
%% a user or role that has an
%% IAM policy that restricts which canaries that you are allowed to view. For
%% more information,
%% see
%% Limiting a user to viewing specific canaries:
%% https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Restricted.html.
-spec describe_canaries_last_run(aws_client:aws_client(), describe_canaries_last_run_request()) ->
    {ok, describe_canaries_last_run_response(), tuple()} |
    {error, any()} |
    {error, describe_canaries_last_run_errors(), tuple()}.
describe_canaries_last_run(Client, Input) ->
    describe_canaries_last_run(Client, Input, []).

-spec describe_canaries_last_run(aws_client:aws_client(), describe_canaries_last_run_request(), proplists:proplist()) ->
    {ok, describe_canaries_last_run_response(), tuple()} |
    {error, any()} |
    {error, describe_canaries_last_run_errors(), tuple()}.
describe_canaries_last_run(Client, Input0, Options0) ->
    Method = post,
    Path = ["/canaries/last-run"],
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

%% @doc Returns a list of Synthetics canary runtime versions.
%%
%% For more information,
%% see
%% Canary Runtime Versions:
%% https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Library.html.
-spec describe_runtime_versions(aws_client:aws_client(), describe_runtime_versions_request()) ->
    {ok, describe_runtime_versions_response(), tuple()} |
    {error, any()} |
    {error, describe_runtime_versions_errors(), tuple()}.
describe_runtime_versions(Client, Input) ->
    describe_runtime_versions(Client, Input, []).

-spec describe_runtime_versions(aws_client:aws_client(), describe_runtime_versions_request(), proplists:proplist()) ->
    {ok, describe_runtime_versions_response(), tuple()} |
    {error, any()} |
    {error, describe_runtime_versions_errors(), tuple()}.
describe_runtime_versions(Client, Input0, Options0) ->
    Method = post,
    Path = ["/runtime-versions"],
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

%% @doc Removes a canary from a group.
%%
%% You must run this operation in the Region where the canary exists.
-spec disassociate_resource(aws_client:aws_client(), binary() | list(), disassociate_resource_request()) ->
    {ok, disassociate_resource_response(), tuple()} |
    {error, any()} |
    {error, disassociate_resource_errors(), tuple()}.
disassociate_resource(Client, GroupIdentifier, Input) ->
    disassociate_resource(Client, GroupIdentifier, Input, []).

-spec disassociate_resource(aws_client:aws_client(), binary() | list(), disassociate_resource_request(), proplists:proplist()) ->
    {ok, disassociate_resource_response(), tuple()} |
    {error, any()} |
    {error, disassociate_resource_errors(), tuple()}.
disassociate_resource(Client, GroupIdentifier, Input0, Options0) ->
    Method = patch,
    Path = ["/group/", aws_util:encode_uri(GroupIdentifier), "/disassociate"],
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

%% @doc Retrieves complete information about one canary.
%%
%% You must specify
%% the name of the canary that you want. To get a list of canaries
%% and their names, use DescribeCanaries:
%% https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_DescribeCanaries.html.
-spec get_canary(aws_client:aws_client(), binary() | list()) ->
    {ok, get_canary_response(), tuple()} |
    {error, any()} |
    {error, get_canary_errors(), tuple()}.
get_canary(Client, Name)
  when is_map(Client) ->
    get_canary(Client, Name, #{}, #{}).

-spec get_canary(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_canary_response(), tuple()} |
    {error, any()} |
    {error, get_canary_errors(), tuple()}.
get_canary(Client, Name, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_canary(Client, Name, QueryMap, HeadersMap, []).

-spec get_canary(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_canary_response(), tuple()} |
    {error, any()} |
    {error, get_canary_errors(), tuple()}.
get_canary(Client, Name, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/canary/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"dryRunId">>, maps:get(<<"dryRunId">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a list of runs for a specified canary.
-spec get_canary_runs(aws_client:aws_client(), binary() | list(), get_canary_runs_request()) ->
    {ok, get_canary_runs_response(), tuple()} |
    {error, any()} |
    {error, get_canary_runs_errors(), tuple()}.
get_canary_runs(Client, Name, Input) ->
    get_canary_runs(Client, Name, Input, []).

-spec get_canary_runs(aws_client:aws_client(), binary() | list(), get_canary_runs_request(), proplists:proplist()) ->
    {ok, get_canary_runs_response(), tuple()} |
    {error, any()} |
    {error, get_canary_runs_errors(), tuple()}.
get_canary_runs(Client, Name, Input0, Options0) ->
    Method = post,
    Path = ["/canary/", aws_util:encode_uri(Name), "/runs"],
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

%% @doc Returns information about one group.
%%
%% Groups are a global resource, so you can use this operation from
%% any Region.
-spec get_group(aws_client:aws_client(), binary() | list()) ->
    {ok, get_group_response(), tuple()} |
    {error, any()} |
    {error, get_group_errors(), tuple()}.
get_group(Client, GroupIdentifier)
  when is_map(Client) ->
    get_group(Client, GroupIdentifier, #{}, #{}).

-spec get_group(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_group_response(), tuple()} |
    {error, any()} |
    {error, get_group_errors(), tuple()}.
get_group(Client, GroupIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_group(Client, GroupIdentifier, QueryMap, HeadersMap, []).

-spec get_group(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_group_response(), tuple()} |
    {error, any()} |
    {error, get_group_errors(), tuple()}.
get_group(Client, GroupIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/group/", aws_util:encode_uri(GroupIdentifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of the groups that the specified canary is associated
%% with.
%%
%% The canary
%% that you specify must be in the current Region.
-spec list_associated_groups(aws_client:aws_client(), binary() | list(), list_associated_groups_request()) ->
    {ok, list_associated_groups_response(), tuple()} |
    {error, any()} |
    {error, list_associated_groups_errors(), tuple()}.
list_associated_groups(Client, ResourceArn, Input) ->
    list_associated_groups(Client, ResourceArn, Input, []).

-spec list_associated_groups(aws_client:aws_client(), binary() | list(), list_associated_groups_request(), proplists:proplist()) ->
    {ok, list_associated_groups_response(), tuple()} |
    {error, any()} |
    {error, list_associated_groups_errors(), tuple()}.
list_associated_groups(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/resource/", aws_util:encode_uri(ResourceArn), "/groups"],
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

%% @doc This operation returns a list of the ARNs of the canaries that are
%% associated with the specified group.
-spec list_group_resources(aws_client:aws_client(), binary() | list(), list_group_resources_request()) ->
    {ok, list_group_resources_response(), tuple()} |
    {error, any()} |
    {error, list_group_resources_errors(), tuple()}.
list_group_resources(Client, GroupIdentifier, Input) ->
    list_group_resources(Client, GroupIdentifier, Input, []).

-spec list_group_resources(aws_client:aws_client(), binary() | list(), list_group_resources_request(), proplists:proplist()) ->
    {ok, list_group_resources_response(), tuple()} |
    {error, any()} |
    {error, list_group_resources_errors(), tuple()}.
list_group_resources(Client, GroupIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/group/", aws_util:encode_uri(GroupIdentifier), "/resources"],
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

%% @doc Returns a list of all groups in the account, displaying their names,
%% unique IDs, and ARNs.
%%
%% The groups
%% from all Regions are returned.
-spec list_groups(aws_client:aws_client(), list_groups_request()) ->
    {ok, list_groups_response(), tuple()} |
    {error, any()} |
    {error, list_groups_errors(), tuple()}.
list_groups(Client, Input) ->
    list_groups(Client, Input, []).

-spec list_groups(aws_client:aws_client(), list_groups_request(), proplists:proplist()) ->
    {ok, list_groups_response(), tuple()} |
    {error, any()} |
    {error, list_groups_errors(), tuple()}.
list_groups(Client, Input0, Options0) ->
    Method = post,
    Path = ["/groups"],
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

%% @doc Displays the tags associated with a canary or group.
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

%% @doc Use this operation to run a canary that has already been created.
%%
%% The frequency of the canary runs is determined by the value of the
%% canary's `Schedule'. To see a canary's schedule,
%% use GetCanary:
%% https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_GetCanary.html.
-spec start_canary(aws_client:aws_client(), binary() | list(), start_canary_request()) ->
    {ok, start_canary_response(), tuple()} |
    {error, any()} |
    {error, start_canary_errors(), tuple()}.
start_canary(Client, Name, Input) ->
    start_canary(Client, Name, Input, []).

-spec start_canary(aws_client:aws_client(), binary() | list(), start_canary_request(), proplists:proplist()) ->
    {ok, start_canary_response(), tuple()} |
    {error, any()} |
    {error, start_canary_errors(), tuple()}.
start_canary(Client, Name, Input0, Options0) ->
    Method = post,
    Path = ["/canary/", aws_util:encode_uri(Name), "/start"],
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

%% @doc Use this operation to start a dry run for a canary that has already
%% been created
-spec start_canary_dry_run(aws_client:aws_client(), binary() | list(), start_canary_dry_run_request()) ->
    {ok, start_canary_dry_run_response(), tuple()} |
    {error, any()} |
    {error, start_canary_dry_run_errors(), tuple()}.
start_canary_dry_run(Client, Name, Input) ->
    start_canary_dry_run(Client, Name, Input, []).

-spec start_canary_dry_run(aws_client:aws_client(), binary() | list(), start_canary_dry_run_request(), proplists:proplist()) ->
    {ok, start_canary_dry_run_response(), tuple()} |
    {error, any()} |
    {error, start_canary_dry_run_errors(), tuple()}.
start_canary_dry_run(Client, Name, Input0, Options0) ->
    Method = post,
    Path = ["/canary/", aws_util:encode_uri(Name), "/dry-run/start"],
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

%% @doc Stops the canary to prevent all future runs.
%%
%% If the canary is currently running,the
%% run that is in progress completes on its own, publishes metrics, and
%% uploads artifacts, but
%% it is not recorded in Synthetics as a completed run.
%%
%% You can use `StartCanary' to start it running again
%% with the canary’s current schedule at any point in the future.
-spec stop_canary(aws_client:aws_client(), binary() | list(), stop_canary_request()) ->
    {ok, stop_canary_response(), tuple()} |
    {error, any()} |
    {error, stop_canary_errors(), tuple()}.
stop_canary(Client, Name, Input) ->
    stop_canary(Client, Name, Input, []).

-spec stop_canary(aws_client:aws_client(), binary() | list(), stop_canary_request(), proplists:proplist()) ->
    {ok, stop_canary_response(), tuple()} |
    {error, any()} |
    {error, stop_canary_errors(), tuple()}.
stop_canary(Client, Name, Input0, Options0) ->
    Method = post,
    Path = ["/canary/", aws_util:encode_uri(Name), "/stop"],
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

%% @doc Assigns one or more tags (key-value pairs) to the specified canary or
%% group.
%%
%% Tags can help you organize and categorize your
%% resources. You can also use them to scope user permissions, by granting a
%% user permission to access or change only resources with
%% certain tag values.
%%
%% Tags don't have any semantic meaning to Amazon Web Services and are
%% interpreted strictly as strings of characters.
%%
%% You can use the `TagResource' action with a resource that already has
%% tags. If you specify a new
%% tag key for the resource,
%% this tag is appended to the list of tags associated
%% with the resource. If you specify a tag key that is already associated
%% with the resource, the new tag
%% value that you specify replaces
%% the previous value for that tag.
%%
%% You can associate as many as 50 tags with a canary or group.
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

%% @doc Removes one or more tags from the specified resource.
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
                     {<<"tagKeys">>, <<"TagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the configuration of a canary that has
%% already been created.
%%
%% You can't use this operation to update the tags of an existing canary.
%% To
%% change the tags of an existing canary, use
%% TagResource:
%% https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_TagResource.html.
%%
%% When you use the `dryRunId' field when updating a canary, the only
%% other field you can provide is the `Schedule'. Adding any other field
%% will thrown an exception.
-spec update_canary(aws_client:aws_client(), binary() | list(), update_canary_request()) ->
    {ok, update_canary_response(), tuple()} |
    {error, any()} |
    {error, update_canary_errors(), tuple()}.
update_canary(Client, Name, Input) ->
    update_canary(Client, Name, Input, []).

-spec update_canary(aws_client:aws_client(), binary() | list(), update_canary_request(), proplists:proplist()) ->
    {ok, update_canary_response(), tuple()} |
    {error, any()} |
    {error, update_canary_errors(), tuple()}.
update_canary(Client, Name, Input0, Options0) ->
    Method = patch,
    Path = ["/canary/", aws_util:encode_uri(Name), ""],
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
    Client1 = Client#{service => <<"synthetics">>},
    Host = build_host(<<"synthetics">>, Client1),
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
