%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Provides APIs to create, manage, and operate AWS Lambda MicroVMs and
%% their associated MicroVM Image environments.
-module(aws_lambda_microvms).

-export([create_microvm_auth_token/3,
         create_microvm_auth_token/4,
         create_microvm_image/2,
         create_microvm_image/3,
         create_microvm_shell_auth_token/3,
         create_microvm_shell_auth_token/4,
         delete_microvm_image/3,
         delete_microvm_image/4,
         delete_microvm_image_version/4,
         delete_microvm_image_version/5,
         get_microvm/2,
         get_microvm/4,
         get_microvm/5,
         get_microvm_image/2,
         get_microvm_image/4,
         get_microvm_image/5,
         get_microvm_image_build/4,
         get_microvm_image_build/6,
         get_microvm_image_build/7,
         get_microvm_image_version/3,
         get_microvm_image_version/5,
         get_microvm_image_version/6,
         list_managed_microvm_image_versions/2,
         list_managed_microvm_image_versions/4,
         list_managed_microvm_image_versions/5,
         list_managed_microvm_images/1,
         list_managed_microvm_images/3,
         list_managed_microvm_images/4,
         list_microvm_image_builds/3,
         list_microvm_image_builds/5,
         list_microvm_image_builds/6,
         list_microvm_image_versions/2,
         list_microvm_image_versions/4,
         list_microvm_image_versions/5,
         list_microvm_images/1,
         list_microvm_images/3,
         list_microvm_images/4,
         list_microvms/1,
         list_microvms/3,
         list_microvms/4,
         list_tags/2,
         list_tags/4,
         list_tags/5,
         resume_microvm/3,
         resume_microvm/4,
         run_microvm/2,
         run_microvm/3,
         suspend_microvm/3,
         suspend_microvm/4,
         tag_resource/3,
         tag_resource/4,
         terminate_microvm/3,
         terminate_microvm/4,
         untag_resource/3,
         untag_resource/4,
         update_microvm_image/3,
         update_microvm_image/4,
         update_microvm_image_version/4,
         update_microvm_image_version/5]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% delete_microvm_image_version_output() :: #{
%%   <<"imageIdentifier">> => string(),
%%   <<"imageVersion">> => string(),
%%   <<"state">> => list(any())
%% }
-type delete_microvm_image_version_output() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"Tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% list_managed_microvm_images_input() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string()
%% }
-type list_managed_microvm_images_input() :: #{binary() => any()}.

%% Example:
%% get_microvm_image_input() :: #{}
-type get_microvm_image_input() :: #{}.


%% Example:
%% create_microvm_shell_auth_token_response() :: #{
%%   <<"authToken">> => map()
%% }
-type create_microvm_shell_auth_token_response() :: #{binary() => any()}.

%% Example:
%% resume_microvm_response() :: #{}
-type resume_microvm_response() :: #{}.


%% Example:
%% create_microvm_auth_token_response() :: #{
%%   <<"authToken">> => map()
%% }
-type create_microvm_auth_token_response() :: #{binary() => any()}.

%% Example:
%% terminate_microvm_request() :: #{}
-type terminate_microvm_request() :: #{}.


%% Example:
%% microvm_image_hooks() :: #{
%%   <<"ready">> => list(any()),
%%   <<"readyTimeoutInSeconds">> => [integer()],
%%   <<"validate">> => list(any()),
%%   <<"validateTimeoutInSeconds">> => [integer()]
%% }
-type microvm_image_hooks() :: #{binary() => any()}.


%% Example:
%% microvm_item() :: #{
%%   <<"imageArn">> => string(),
%%   <<"imageVersion">> => string(),
%%   <<"microvmId">> => string(),
%%   <<"startedAt">> => [non_neg_integer()],
%%   <<"state">> => list(any())
%% }
-type microvm_item() :: #{binary() => any()}.


%% Example:
%% list_microvm_image_versions_output() :: #{
%%   <<"items">> => list(microvm_image_version_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_microvm_image_versions_output() :: #{binary() => any()}.


%% Example:
%% list_tags_response() :: #{
%%   <<"Tags">> => map()
%% }
-type list_tags_response() :: #{binary() => any()}.


%% Example:
%% cpu_configuration() :: #{
%%   <<"architecture">> => list(any())
%% }
-type cpu_configuration() :: #{binary() => any()}.


%% Example:
%% update_microvm_image_version_response() :: #{
%%   <<"additionalOsCapabilities">> => list(list(any())()),
%%   <<"baseImageArn">> => string(),
%%   <<"baseImageVersion">> => string(),
%%   <<"buildRoleArn">> => string(),
%%   <<"codeArtifact">> => list(),
%%   <<"cpuConfigurations">> => list(cpu_configuration()),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"description">> => [string()],
%%   <<"egressNetworkConnectors">> => list(string()),
%%   <<"environmentVariables">> => map(),
%%   <<"hooks">> => hooks(),
%%   <<"imageArn">> => string(),
%%   <<"imageVersion">> => string(),
%%   <<"logging">> => list(),
%%   <<"resources">> => list(resources()),
%%   <<"state">> => list(any()),
%%   <<"stateReason">> => [string()],
%%   <<"status">> => list(any()),
%%   <<"tags">> => map(),
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type update_microvm_image_version_response() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"TagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% too_many_requests_exception() :: #{
%%   <<"Type">> => [string()],
%%   <<"message">> => [string()]
%% }
-type too_many_requests_exception() :: #{binary() => any()}.

%% Example:
%% get_microvm_request() :: #{}
-type get_microvm_request() :: #{}.


%% Example:
%% list_microvms_request() :: #{
%%   <<"imageIdentifier">> => string(),
%%   <<"imageVersion">> => [string()],
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string()
%% }
-type list_microvms_request() :: #{binary() => any()}.


%% Example:
%% resources() :: #{
%%   <<"minimumMemoryInMiB">> => [integer()]
%% }
-type resources() :: #{binary() => any()}.


%% Example:
%% microvm_image_version_summary() :: #{
%%   <<"additionalOsCapabilities">> => list(list(any())()),
%%   <<"baseImageArn">> => string(),
%%   <<"baseImageVersion">> => string(),
%%   <<"buildRoleArn">> => string(),
%%   <<"codeArtifact">> => list(),
%%   <<"cpuConfigurations">> => list(cpu_configuration()),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"description">> => [string()],
%%   <<"egressNetworkConnectors">> => list(string()),
%%   <<"environmentVariables">> => map(),
%%   <<"hooks">> => hooks(),
%%   <<"imageArn">> => string(),
%%   <<"imageVersion">> => string(),
%%   <<"logging">> => list(),
%%   <<"resources">> => list(resources()),
%%   <<"state">> => list(any()),
%%   <<"stateReason">> => [string()],
%%   <<"status">> => list(any()),
%%   <<"tags">> => map(),
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type microvm_image_version_summary() :: #{binary() => any()}.


%% Example:
%% run_microvm_response() :: #{
%%   <<"egressNetworkConnectors">> => list(string()),
%%   <<"endpoint">> => [string()],
%%   <<"executionRoleArn">> => string(),
%%   <<"idlePolicy">> => idle_policy(),
%%   <<"imageArn">> => string(),
%%   <<"imageVersion">> => string(),
%%   <<"ingressNetworkConnectors">> => list(string()),
%%   <<"maximumDurationInSeconds">> => [integer()],
%%   <<"microvmId">> => string(),
%%   <<"startedAt">> => [non_neg_integer()],
%%   <<"state">> => list(any()),
%%   <<"stateReason">> => string(),
%%   <<"terminatedAt">> => [non_neg_integer()]
%% }
-type run_microvm_response() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"resourceId">> => [string()],
%%   <<"resourceType">> => [string()]
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"resourceId">> => [string()],
%%   <<"resourceType">> => [string()]
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% list_managed_microvm_image_versions_input() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string()
%% }
-type list_managed_microvm_image_versions_input() :: #{binary() => any()}.

%% Example:
%% terminate_microvm_response() :: #{}
-type terminate_microvm_response() :: #{}.

%% Example:
%% delete_microvm_image_version_input() :: #{}
-type delete_microvm_image_version_input() :: #{}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"quotaCode">> => [string()],
%%   <<"resourceId">> => [string()],
%%   <<"resourceType">> => [string()],
%%   <<"serviceCode">> => [string()]
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% list_managed_microvm_images_output() :: #{
%%   <<"items">> => list(managed_microvm_image_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_managed_microvm_images_output() :: #{binary() => any()}.


%% Example:
%% cloud_watch_logging() :: #{
%%   <<"logGroup">> => string(),
%%   <<"logStream">> => string()
%% }
-type cloud_watch_logging() :: #{binary() => any()}.


%% Example:
%% invalid_parameter_value_exception() :: #{
%%   <<"Type">> => [string()],
%%   <<"message">> => [string()]
%% }
-type invalid_parameter_value_exception() :: #{binary() => any()}.


%% Example:
%% snapshot_build() :: #{
%%   <<"codeInstallSizeInBytes">> => [float()],
%%   <<"diskSnapshotSizeInBytes">> => [float()],
%%   <<"memorySnapshotSizeInBytes">> => [float()]
%% }
-type snapshot_build() :: #{binary() => any()}.


%% Example:
%% list_microvms_response() :: #{
%%   <<"items">> => list(microvm_item()),
%%   <<"nextToken">> => string()
%% }
-type list_microvms_response() :: #{binary() => any()}.


%% Example:
%% list_microvm_image_builds_input() :: #{
%%   <<"architecture">> => list(any()),
%%   <<"chipset">> => list(any()),
%%   <<"chipsetGeneration">> => string(),
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string()
%% }
-type list_microvm_image_builds_input() :: #{binary() => any()}.


%% Example:
%% service_exception() :: #{
%%   <<"Type">> => [string()],
%%   <<"message">> => [string()]
%% }
-type service_exception() :: #{binary() => any()}.


%% Example:
%% list_microvm_images_response() :: #{
%%   <<"items">> => list(microvm_image_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_microvm_images_response() :: #{binary() => any()}.


%% Example:
%% microvm_image_build_summary() :: #{
%%   <<"architecture">> => list(any()),
%%   <<"buildId">> => string(),
%%   <<"buildState">> => list(any()),
%%   <<"chipset">> => list(any()),
%%   <<"chipsetGeneration">> => string(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"imageArn">> => string(),
%%   <<"imageVersion">> => string(),
%%   <<"stateReason">> => [string()]
%% }
-type microvm_image_build_summary() :: #{binary() => any()}.


%% Example:
%% create_microvm_shell_auth_token_request() :: #{
%%   <<"expirationInMinutes">> := integer()
%% }
-type create_microvm_shell_auth_token_request() :: #{binary() => any()}.


%% Example:
%% microvm_hooks() :: #{
%%   <<"resume">> => list(any()),
%%   <<"resumeTimeoutInSeconds">> => [integer()],
%%   <<"run">> => list(any()),
%%   <<"runTimeoutInSeconds">> => [integer()],
%%   <<"suspend">> => list(any()),
%%   <<"suspendTimeoutInSeconds">> => [integer()],
%%   <<"terminate">> => list(any()),
%%   <<"terminateTimeoutInSeconds">> => [integer()]
%% }
-type microvm_hooks() :: #{binary() => any()}.


%% Example:
%% delete_microvm_image_output() :: #{
%%   <<"imageIdentifier">> => string(),
%%   <<"state">> => list(any())
%% }
-type delete_microvm_image_output() :: #{binary() => any()}.


%% Example:
%% create_microvm_image_request() :: #{
%%   <<"additionalOsCapabilities">> => list(list(any())()),
%%   <<"baseImageArn">> := string(),
%%   <<"baseImageVersion">> => string(),
%%   <<"buildRoleArn">> := string(),
%%   <<"clientToken">> => [string()],
%%   <<"codeArtifact">> := list(),
%%   <<"cpuConfigurations">> => list(cpu_configuration()),
%%   <<"description">> => [string()],
%%   <<"egressNetworkConnectors">> => list(string()),
%%   <<"environmentVariables">> => map(),
%%   <<"hooks">> => hooks(),
%%   <<"logging">> => list(),
%%   <<"name">> := string(),
%%   <<"resources">> => list(resources()),
%%   <<"tags">> => map()
%% }
-type create_microvm_image_request() :: #{binary() => any()}.

%% Example:
%% logging_disabled() :: #{}
-type logging_disabled() :: #{}.

%% Example:
%% get_microvm_image_build_input() :: #{}
-type get_microvm_image_build_input() :: #{}.


%% Example:
%% update_microvm_image_version_request() :: #{
%%   <<"status">> := list(any())
%% }
-type update_microvm_image_version_request() :: #{binary() => any()}.


%% Example:
%% idle_policy() :: #{
%%   <<"autoResumeEnabled">> => [boolean()],
%%   <<"maxIdleDurationSeconds">> => [integer()],
%%   <<"suspendedDurationSeconds">> => [integer()]
%% }
-type idle_policy() :: #{binary() => any()}.


%% Example:
%% update_microvm_image_request() :: #{
%%   <<"additionalOsCapabilities">> => list(list(any())()),
%%   <<"baseImageArn">> := string(),
%%   <<"baseImageVersion">> => string(),
%%   <<"buildRoleArn">> := string(),
%%   <<"clientToken">> => [string()],
%%   <<"codeArtifact">> := list(),
%%   <<"cpuConfigurations">> => list(cpu_configuration()),
%%   <<"description">> => [string()],
%%   <<"egressNetworkConnectors">> => list(string()),
%%   <<"environmentVariables">> => map(),
%%   <<"hooks">> => hooks(),
%%   <<"logging">> => list(),
%%   <<"resources">> => list(resources())
%% }
-type update_microvm_image_request() :: #{binary() => any()}.


%% Example:
%% get_microvm_image_build_output() :: #{
%%   <<"architecture">> => list(any()),
%%   <<"buildId">> => string(),
%%   <<"buildState">> => list(any()),
%%   <<"chipset">> => list(any()),
%%   <<"chipsetGeneration">> => string(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"imageArn">> => string(),
%%   <<"imageVersion">> => string(),
%%   <<"snapshotBuild">> => snapshot_build(),
%%   <<"stateReason">> => [string()]
%% }
-type get_microvm_image_build_output() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"retryAfterSeconds">> => [integer()]
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% run_microvm_request() :: #{
%%   <<"clientToken">> => [string()],
%%   <<"egressNetworkConnectors">> => list(string()),
%%   <<"executionRoleArn">> => string(),
%%   <<"idlePolicy">> => idle_policy(),
%%   <<"imageIdentifier">> := string(),
%%   <<"imageVersion">> => string(),
%%   <<"ingressNetworkConnectors">> => list(string()),
%%   <<"logging">> => list(),
%%   <<"maximumDurationInSeconds">> => [integer()],
%%   <<"runHookPayload">> => [string()]
%% }
-type run_microvm_request() :: #{binary() => any()}.


%% Example:
%% list_managed_microvm_image_versions_output() :: #{
%%   <<"items">> => list(managed_microvm_image_version()),
%%   <<"nextToken">> => string()
%% }
-type list_managed_microvm_image_versions_output() :: #{binary() => any()}.


%% Example:
%% port_range() :: #{
%%   <<"endPort">> => integer(),
%%   <<"startPort">> => integer()
%% }
-type port_range() :: #{binary() => any()}.

%% Example:
%% resume_microvm_request() :: #{}
-type resume_microvm_request() :: #{}.


%% Example:
%% microvm_image_summary() :: #{
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"imageArn">> => string(),
%%   <<"latestActiveImageVersion">> => string(),
%%   <<"latestFailedImageVersion">> => string(),
%%   <<"name">> => string(),
%%   <<"state">> => list(any())
%% }
-type microvm_image_summary() :: #{binary() => any()}.


%% Example:
%% list_microvm_images_request() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"nameFilter">> => string(),
%%   <<"nextToken">> => string()
%% }
-type list_microvm_images_request() :: #{binary() => any()}.

%% Example:
%% suspend_microvm_response() :: #{}
-type suspend_microvm_response() :: #{}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% suspend_microvm_request() :: #{}
-type suspend_microvm_request() :: #{}.


%% Example:
%% create_microvm_image_response() :: #{
%%   <<"additionalOsCapabilities">> => list(list(any())()),
%%   <<"baseImageArn">> => string(),
%%   <<"baseImageVersion">> => string(),
%%   <<"buildRoleArn">> => string(),
%%   <<"codeArtifact">> => list(),
%%   <<"cpuConfigurations">> => list(cpu_configuration()),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"description">> => [string()],
%%   <<"egressNetworkConnectors">> => list(string()),
%%   <<"environmentVariables">> => map(),
%%   <<"hooks">> => hooks(),
%%   <<"imageArn">> => string(),
%%   <<"imageVersion">> => string(),
%%   <<"latestActiveImageVersion">> => string(),
%%   <<"latestFailedImageVersion">> => string(),
%%   <<"logging">> => list(),
%%   <<"name">> => string(),
%%   <<"resources">> => list(resources()),
%%   <<"state">> => list(any()),
%%   <<"tags">> => map(),
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type create_microvm_image_response() :: #{binary() => any()}.


%% Example:
%% managed_microvm_image_summary() :: #{
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"imageArn">> => string(),
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type managed_microvm_image_summary() :: #{binary() => any()}.


%% Example:
%% managed_microvm_image_version() :: #{
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"imageArn">> => string(),
%%   <<"imageVersion">> => string(),
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type managed_microvm_image_version() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% get_microvm_image_version_input() :: #{}
-type get_microvm_image_version_input() :: #{}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"quotaCode">> => [string()],
%%   <<"retryAfterSeconds">> => [integer()],
%%   <<"serviceCode">> => [string()]
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% get_microvm_image_output() :: #{
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"imageArn">> => string(),
%%   <<"latestActiveImageVersion">> => string(),
%%   <<"latestFailedImageVersion">> => string(),
%%   <<"name">> => string(),
%%   <<"state">> => list(any()),
%%   <<"tags">> => map(),
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type get_microvm_image_output() :: #{binary() => any()}.

%% Example:
%% delete_microvm_image_input() :: #{}
-type delete_microvm_image_input() :: #{}.


%% Example:
%% list_microvm_image_builds_output() :: #{
%%   <<"items">> => list(microvm_image_build_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_microvm_image_builds_output() :: #{binary() => any()}.


%% Example:
%% get_microvm_image_version_output() :: #{
%%   <<"additionalOsCapabilities">> => list(list(any())()),
%%   <<"baseImageArn">> => string(),
%%   <<"baseImageVersion">> => string(),
%%   <<"buildRoleArn">> => string(),
%%   <<"codeArtifact">> => list(),
%%   <<"cpuConfigurations">> => list(cpu_configuration()),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"description">> => [string()],
%%   <<"egressNetworkConnectors">> => list(string()),
%%   <<"environmentVariables">> => map(),
%%   <<"hooks">> => hooks(),
%%   <<"imageArn">> => string(),
%%   <<"imageVersion">> => string(),
%%   <<"logging">> => list(),
%%   <<"resources">> => list(resources()),
%%   <<"state">> => list(any()),
%%   <<"stateReason">> => [string()],
%%   <<"status">> => list(any()),
%%   <<"tags">> => map(),
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type get_microvm_image_version_output() :: #{binary() => any()}.


%% Example:
%% hooks() :: #{
%%   <<"microvmHooks">> => microvm_hooks(),
%%   <<"microvmImageHooks">> => microvm_image_hooks(),
%%   <<"port">> => [integer()]
%% }
-type hooks() :: #{binary() => any()}.

%% Example:
%% list_tags_request() :: #{}
-type list_tags_request() :: #{}.


%% Example:
%% create_microvm_auth_token_request() :: #{
%%   <<"allowedPorts">> := list(list()),
%%   <<"expirationInMinutes">> := integer()
%% }
-type create_microvm_auth_token_request() :: #{binary() => any()}.


%% Example:
%% resource_conflict_exception() :: #{
%%   <<"Type">> => [string()],
%%   <<"message">> => [string()]
%% }
-type resource_conflict_exception() :: #{binary() => any()}.


%% Example:
%% get_microvm_response() :: #{
%%   <<"egressNetworkConnectors">> => list(string()),
%%   <<"endpoint">> => [string()],
%%   <<"executionRoleArn">> => string(),
%%   <<"idlePolicy">> => idle_policy(),
%%   <<"imageArn">> => string(),
%%   <<"imageVersion">> => string(),
%%   <<"ingressNetworkConnectors">> => list(string()),
%%   <<"maximumDurationInSeconds">> => [integer()],
%%   <<"microvmId">> => string(),
%%   <<"startedAt">> => [non_neg_integer()],
%%   <<"state">> => list(any()),
%%   <<"stateReason">> => string(),
%%   <<"terminatedAt">> => [non_neg_integer()]
%% }
-type get_microvm_response() :: #{binary() => any()}.


%% Example:
%% update_microvm_image_response() :: #{
%%   <<"additionalOsCapabilities">> => list(list(any())()),
%%   <<"baseImageArn">> => string(),
%%   <<"baseImageVersion">> => string(),
%%   <<"buildRoleArn">> => string(),
%%   <<"codeArtifact">> => list(),
%%   <<"cpuConfigurations">> => list(cpu_configuration()),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"description">> => [string()],
%%   <<"egressNetworkConnectors">> => list(string()),
%%   <<"environmentVariables">> => map(),
%%   <<"hooks">> => hooks(),
%%   <<"imageArn">> => string(),
%%   <<"imageVersion">> => string(),
%%   <<"latestActiveImageVersion">> => string(),
%%   <<"latestFailedImageVersion">> => string(),
%%   <<"logging">> => list(),
%%   <<"name">> => string(),
%%   <<"resources">> => list(resources()),
%%   <<"state">> => list(any()),
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type update_microvm_image_response() :: #{binary() => any()}.


%% Example:
%% list_microvm_image_versions_input() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string()
%% }
-type list_microvm_image_versions_input() :: #{binary() => any()}.

-type create_microvm_auth_token_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type create_microvm_image_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_microvm_shell_auth_token_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_microvm_image_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_microvm_image_version_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_microvm_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_microvm_image_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_microvm_image_build_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_microvm_image_version_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_managed_microvm_image_versions_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_managed_microvm_images_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_microvm_image_builds_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_microvm_image_versions_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_microvm_images_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_microvms_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_tags_errors() ::
    service_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type resume_microvm_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type run_microvm_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type suspend_microvm_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type tag_resource_errors() ::
    resource_conflict_exception() | 
    service_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type terminate_microvm_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type untag_resource_errors() ::
    resource_conflict_exception() | 
    service_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type update_microvm_image_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_microvm_image_version_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Creates an authentication token for accessing a running MicroVM.
%%
%% The token grants access to the specified ports on the MicroVM endpoint.
-spec create_microvm_auth_token(aws_client:aws_client(), binary() | list(), create_microvm_auth_token_request()) ->
    {ok, create_microvm_auth_token_response(), tuple()} |
    {error, any()} |
    {error, create_microvm_auth_token_errors(), tuple()}.
create_microvm_auth_token(Client, MicrovmIdentifier, Input) ->
    create_microvm_auth_token(Client, MicrovmIdentifier, Input, []).

-spec create_microvm_auth_token(aws_client:aws_client(), binary() | list(), create_microvm_auth_token_request(), proplists:proplist()) ->
    {ok, create_microvm_auth_token_response(), tuple()} |
    {error, any()} |
    {error, create_microvm_auth_token_errors(), tuple()}.
create_microvm_auth_token(Client, MicrovmIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/2025-09-09/microvms/", aws_util:encode_uri(MicrovmIdentifier), "/auth-token"],
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

%% @doc Creates a MicroVM image from the specified code artifact and base
%% image.
%%
%% The build is asynchronous — the image transitions from CREATING to CREATED
%% on success, or CREATE_FAILED on failure. Use GetMicrovmImage to poll for
%% completion.
-spec create_microvm_image(aws_client:aws_client(), create_microvm_image_request()) ->
    {ok, create_microvm_image_response(), tuple()} |
    {error, any()} |
    {error, create_microvm_image_errors(), tuple()}.
create_microvm_image(Client, Input) ->
    create_microvm_image(Client, Input, []).

-spec create_microvm_image(aws_client:aws_client(), create_microvm_image_request(), proplists:proplist()) ->
    {ok, create_microvm_image_response(), tuple()} |
    {error, any()} |
    {error, create_microvm_image_errors(), tuple()}.
create_microvm_image(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2025-09-09/microvm-images"],
    SuccessStatusCode = 201,
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

%% @doc Creates a shell authentication token for interactive shell access to
%% a running MicroVM.
%%
%% The MicroVM must have been run with the SHELL_INGRESS network connector
%% attached.
-spec create_microvm_shell_auth_token(aws_client:aws_client(), binary() | list(), create_microvm_shell_auth_token_request()) ->
    {ok, create_microvm_shell_auth_token_response(), tuple()} |
    {error, any()} |
    {error, create_microvm_shell_auth_token_errors(), tuple()}.
create_microvm_shell_auth_token(Client, MicrovmIdentifier, Input) ->
    create_microvm_shell_auth_token(Client, MicrovmIdentifier, Input, []).

-spec create_microvm_shell_auth_token(aws_client:aws_client(), binary() | list(), create_microvm_shell_auth_token_request(), proplists:proplist()) ->
    {ok, create_microvm_shell_auth_token_response(), tuple()} |
    {error, any()} |
    {error, create_microvm_shell_auth_token_errors(), tuple()}.
create_microvm_shell_auth_token(Client, MicrovmIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/2025-09-09/microvms/", aws_util:encode_uri(MicrovmIdentifier), "/shell-auth-token"],
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

%% @doc Deletes a MicroVM image.
%%
%% This operation is idempotent; deleting an image that has already been
%% deleted succeeds without error.
-spec delete_microvm_image(aws_client:aws_client(), binary() | list(), delete_microvm_image_input()) ->
    {ok, delete_microvm_image_output(), tuple()} |
    {error, any()} |
    {error, delete_microvm_image_errors(), tuple()}.
delete_microvm_image(Client, ImageIdentifier, Input) ->
    delete_microvm_image(Client, ImageIdentifier, Input, []).

-spec delete_microvm_image(aws_client:aws_client(), binary() | list(), delete_microvm_image_input(), proplists:proplist()) ->
    {ok, delete_microvm_image_output(), tuple()} |
    {error, any()} |
    {error, delete_microvm_image_errors(), tuple()}.
delete_microvm_image(Client, ImageIdentifier, Input0, Options0) ->
    Method = delete,
    Path = ["/2025-09-09/microvm-images/", aws_util:encode_uri(ImageIdentifier), ""],
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

%% @doc Deletes a specific version of a MicroVM image.
%%
%% This operation is idempotent; deleting a version that has already been
%% deleted succeeds without error.
-spec delete_microvm_image_version(aws_client:aws_client(), binary() | list(), binary() | list(), delete_microvm_image_version_input()) ->
    {ok, delete_microvm_image_version_output(), tuple()} |
    {error, any()} |
    {error, delete_microvm_image_version_errors(), tuple()}.
delete_microvm_image_version(Client, ImageIdentifier, ImageVersion, Input) ->
    delete_microvm_image_version(Client, ImageIdentifier, ImageVersion, Input, []).

-spec delete_microvm_image_version(aws_client:aws_client(), binary() | list(), binary() | list(), delete_microvm_image_version_input(), proplists:proplist()) ->
    {ok, delete_microvm_image_version_output(), tuple()} |
    {error, any()} |
    {error, delete_microvm_image_version_errors(), tuple()}.
delete_microvm_image_version(Client, ImageIdentifier, ImageVersion, Input0, Options0) ->
    Method = delete,
    Path = ["/2025-09-09/microvm-images/", aws_util:encode_uri(ImageIdentifier), "/versions/", aws_util:encode_uri(ImageVersion), ""],
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

%% @doc Retrieves the details of a specific MicroVM, including its state,
%% endpoint, image information, and configuration.
%%
%% The state field is eventually consistent — determine readiness by
%% connecting to the endpoint.
-spec get_microvm(aws_client:aws_client(), binary() | list()) ->
    {ok, get_microvm_response(), tuple()} |
    {error, any()} |
    {error, get_microvm_errors(), tuple()}.
get_microvm(Client, MicrovmIdentifier)
  when is_map(Client) ->
    get_microvm(Client, MicrovmIdentifier, #{}, #{}).

-spec get_microvm(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_microvm_response(), tuple()} |
    {error, any()} |
    {error, get_microvm_errors(), tuple()}.
get_microvm(Client, MicrovmIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_microvm(Client, MicrovmIdentifier, QueryMap, HeadersMap, []).

-spec get_microvm(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_microvm_response(), tuple()} |
    {error, any()} |
    {error, get_microvm_errors(), tuple()}.
get_microvm(Client, MicrovmIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2025-09-09/microvms/", aws_util:encode_uri(MicrovmIdentifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the details of a MicroVM image, including its state,
%% versions, and configuration.
-spec get_microvm_image(aws_client:aws_client(), binary() | list()) ->
    {ok, get_microvm_image_output(), tuple()} |
    {error, any()} |
    {error, get_microvm_image_errors(), tuple()}.
get_microvm_image(Client, ImageIdentifier)
  when is_map(Client) ->
    get_microvm_image(Client, ImageIdentifier, #{}, #{}).

-spec get_microvm_image(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_microvm_image_output(), tuple()} |
    {error, any()} |
    {error, get_microvm_image_errors(), tuple()}.
get_microvm_image(Client, ImageIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_microvm_image(Client, ImageIdentifier, QueryMap, HeadersMap, []).

-spec get_microvm_image(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_microvm_image_output(), tuple()} |
    {error, any()} |
    {error, get_microvm_image_errors(), tuple()}.
get_microvm_image(Client, ImageIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2025-09-09/microvm-images/", aws_util:encode_uri(ImageIdentifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the details of a specific MicroVM image build, including
%% its state, target architecture, and snapshot information.
-spec get_microvm_image_build(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_microvm_image_build_output(), tuple()} |
    {error, any()} |
    {error, get_microvm_image_build_errors(), tuple()}.
get_microvm_image_build(Client, BuildId, ImageIdentifier, ImageVersion)
  when is_map(Client) ->
    get_microvm_image_build(Client, BuildId, ImageIdentifier, ImageVersion, #{}, #{}).

-spec get_microvm_image_build(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_microvm_image_build_output(), tuple()} |
    {error, any()} |
    {error, get_microvm_image_build_errors(), tuple()}.
get_microvm_image_build(Client, BuildId, ImageIdentifier, ImageVersion, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_microvm_image_build(Client, BuildId, ImageIdentifier, ImageVersion, QueryMap, HeadersMap, []).

-spec get_microvm_image_build(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_microvm_image_build_output(), tuple()} |
    {error, any()} |
    {error, get_microvm_image_build_errors(), tuple()}.
get_microvm_image_build(Client, BuildId, ImageIdentifier, ImageVersion, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2025-09-09/microvm-images/", aws_util:encode_uri(ImageIdentifier), "/versions/", aws_util:encode_uri(ImageVersion), "/builds/", aws_util:encode_uri(BuildId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the details of a specific version of a MicroVM image,
%% including its configuration, state, and build information.
-spec get_microvm_image_version(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_microvm_image_version_output(), tuple()} |
    {error, any()} |
    {error, get_microvm_image_version_errors(), tuple()}.
get_microvm_image_version(Client, ImageIdentifier, ImageVersion)
  when is_map(Client) ->
    get_microvm_image_version(Client, ImageIdentifier, ImageVersion, #{}, #{}).

-spec get_microvm_image_version(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_microvm_image_version_output(), tuple()} |
    {error, any()} |
    {error, get_microvm_image_version_errors(), tuple()}.
get_microvm_image_version(Client, ImageIdentifier, ImageVersion, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_microvm_image_version(Client, ImageIdentifier, ImageVersion, QueryMap, HeadersMap, []).

-spec get_microvm_image_version(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_microvm_image_version_output(), tuple()} |
    {error, any()} |
    {error, get_microvm_image_version_errors(), tuple()}.
get_microvm_image_version(Client, ImageIdentifier, ImageVersion, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2025-09-09/microvm-images/", aws_util:encode_uri(ImageIdentifier), "/versions/", aws_util:encode_uri(ImageVersion), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists versions of a managed MicroVM image.
%%
%% We recommend using pagination to ensure that the operation returns quickly
%% and successfully.
-spec list_managed_microvm_image_versions(aws_client:aws_client(), binary() | list()) ->
    {ok, list_managed_microvm_image_versions_output(), tuple()} |
    {error, any()} |
    {error, list_managed_microvm_image_versions_errors(), tuple()}.
list_managed_microvm_image_versions(Client, ImageIdentifier)
  when is_map(Client) ->
    list_managed_microvm_image_versions(Client, ImageIdentifier, #{}, #{}).

-spec list_managed_microvm_image_versions(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_managed_microvm_image_versions_output(), tuple()} |
    {error, any()} |
    {error, list_managed_microvm_image_versions_errors(), tuple()}.
list_managed_microvm_image_versions(Client, ImageIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_managed_microvm_image_versions(Client, ImageIdentifier, QueryMap, HeadersMap, []).

-spec list_managed_microvm_image_versions(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_managed_microvm_image_versions_output(), tuple()} |
    {error, any()} |
    {error, list_managed_microvm_image_versions_errors(), tuple()}.
list_managed_microvm_image_versions(Client, ImageIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2025-09-09/managed-microvm-images/", aws_util:encode_uri(ImageIdentifier), "/versions"],
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

%% @doc Lists AWS managed MicroVM images available for use as base images.
%%
%% We recommend using pagination to ensure that the operation returns quickly
%% and successfully.
-spec list_managed_microvm_images(aws_client:aws_client()) ->
    {ok, list_managed_microvm_images_output(), tuple()} |
    {error, any()} |
    {error, list_managed_microvm_images_errors(), tuple()}.
list_managed_microvm_images(Client)
  when is_map(Client) ->
    list_managed_microvm_images(Client, #{}, #{}).

-spec list_managed_microvm_images(aws_client:aws_client(), map(), map()) ->
    {ok, list_managed_microvm_images_output(), tuple()} |
    {error, any()} |
    {error, list_managed_microvm_images_errors(), tuple()}.
list_managed_microvm_images(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_managed_microvm_images(Client, QueryMap, HeadersMap, []).

-spec list_managed_microvm_images(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_managed_microvm_images_output(), tuple()} |
    {error, any()} |
    {error, list_managed_microvm_images_errors(), tuple()}.
list_managed_microvm_images(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2025-09-09/managed-microvm-images"],
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

%% @doc Lists builds for a MicroVM image version with optional filtering by
%% architecture and chipset.
%%
%% We recommend using pagination to ensure that the operation returns quickly
%% and successfully.
-spec list_microvm_image_builds(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_microvm_image_builds_output(), tuple()} |
    {error, any()} |
    {error, list_microvm_image_builds_errors(), tuple()}.
list_microvm_image_builds(Client, ImageIdentifier, ImageVersion)
  when is_map(Client) ->
    list_microvm_image_builds(Client, ImageIdentifier, ImageVersion, #{}, #{}).

-spec list_microvm_image_builds(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_microvm_image_builds_output(), tuple()} |
    {error, any()} |
    {error, list_microvm_image_builds_errors(), tuple()}.
list_microvm_image_builds(Client, ImageIdentifier, ImageVersion, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_microvm_image_builds(Client, ImageIdentifier, ImageVersion, QueryMap, HeadersMap, []).

-spec list_microvm_image_builds(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_microvm_image_builds_output(), tuple()} |
    {error, any()} |
    {error, list_microvm_image_builds_errors(), tuple()}.
list_microvm_image_builds(Client, ImageIdentifier, ImageVersion, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2025-09-09/microvm-images/", aws_util:encode_uri(ImageIdentifier), "/versions/", aws_util:encode_uri(ImageVersion), "/builds"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"architecture">>, maps:get(<<"architecture">>, QueryMap, undefined)},
        {<<"chipset">>, maps:get(<<"chipset">>, QueryMap, undefined)},
        {<<"chipsetGeneration">>, maps:get(<<"chipsetGeneration">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists versions of a MicroVM image.
%%
%% We recommend using pagination to ensure that the operation returns quickly
%% and successfully.
-spec list_microvm_image_versions(aws_client:aws_client(), binary() | list()) ->
    {ok, list_microvm_image_versions_output(), tuple()} |
    {error, any()} |
    {error, list_microvm_image_versions_errors(), tuple()}.
list_microvm_image_versions(Client, ImageIdentifier)
  when is_map(Client) ->
    list_microvm_image_versions(Client, ImageIdentifier, #{}, #{}).

-spec list_microvm_image_versions(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_microvm_image_versions_output(), tuple()} |
    {error, any()} |
    {error, list_microvm_image_versions_errors(), tuple()}.
list_microvm_image_versions(Client, ImageIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_microvm_image_versions(Client, ImageIdentifier, QueryMap, HeadersMap, []).

-spec list_microvm_image_versions(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_microvm_image_versions_output(), tuple()} |
    {error, any()} |
    {error, list_microvm_image_versions_errors(), tuple()}.
list_microvm_image_versions(Client, ImageIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2025-09-09/microvm-images/", aws_util:encode_uri(ImageIdentifier), "/versions"],
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

%% @doc Lists MicroVM images in the account with optional name filtering.
%%
%% We recommend using pagination to ensure that the operation returns quickly
%% and successfully.
-spec list_microvm_images(aws_client:aws_client()) ->
    {ok, list_microvm_images_response(), tuple()} |
    {error, any()} |
    {error, list_microvm_images_errors(), tuple()}.
list_microvm_images(Client)
  when is_map(Client) ->
    list_microvm_images(Client, #{}, #{}).

-spec list_microvm_images(aws_client:aws_client(), map(), map()) ->
    {ok, list_microvm_images_response(), tuple()} |
    {error, any()} |
    {error, list_microvm_images_errors(), tuple()}.
list_microvm_images(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_microvm_images(Client, QueryMap, HeadersMap, []).

-spec list_microvm_images(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_microvm_images_response(), tuple()} |
    {error, any()} |
    {error, list_microvm_images_errors(), tuple()}.
list_microvm_images(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2025-09-09/microvm-images"],
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
        {<<"nameFilter">>, maps:get(<<"nameFilter">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists MicroVMs in the account with optional filtering by image and
%% version.
%%
%% We recommend using pagination to ensure that the operation returns quickly
%% and successfully.
-spec list_microvms(aws_client:aws_client()) ->
    {ok, list_microvms_response(), tuple()} |
    {error, any()} |
    {error, list_microvms_errors(), tuple()}.
list_microvms(Client)
  when is_map(Client) ->
    list_microvms(Client, #{}, #{}).

-spec list_microvms(aws_client:aws_client(), map(), map()) ->
    {ok, list_microvms_response(), tuple()} |
    {error, any()} |
    {error, list_microvms_errors(), tuple()}.
list_microvms(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_microvms(Client, QueryMap, HeadersMap, []).

-spec list_microvms(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_microvms_response(), tuple()} |
    {error, any()} |
    {error, list_microvms_errors(), tuple()}.
list_microvms(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2025-09-09/microvms"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"imageIdentifier">>, maps:get(<<"imageIdentifier">>, QueryMap, undefined)},
        {<<"imageVersion">>, maps:get(<<"imageVersion">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the tags associated with a Lambda MicroVM resource.
-spec list_tags(aws_client:aws_client(), binary() | list()) ->
    {ok, list_tags_response(), tuple()} |
    {error, any()} |
    {error, list_tags_errors(), tuple()}.
list_tags(Client, Resource)
  when is_map(Client) ->
    list_tags(Client, Resource, #{}, #{}).

-spec list_tags(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_tags_response(), tuple()} |
    {error, any()} |
    {error, list_tags_errors(), tuple()}.
list_tags(Client, Resource, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags(Client, Resource, QueryMap, HeadersMap, []).

-spec list_tags(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_tags_response(), tuple()} |
    {error, any()} |
    {error, list_tags_errors(), tuple()}.
list_tags(Client, Resource, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2017-03-31/tags/", aws_util:encode_uri(Resource), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Resumes a suspended MicroVM, restoring it to RUNNING state with all
%% state intact.
%%
%% The MicroVM must be in SUSPENDED state.
-spec resume_microvm(aws_client:aws_client(), binary() | list(), resume_microvm_request()) ->
    {ok, resume_microvm_response(), tuple()} |
    {error, any()} |
    {error, resume_microvm_errors(), tuple()}.
resume_microvm(Client, MicrovmIdentifier, Input) ->
    resume_microvm(Client, MicrovmIdentifier, Input, []).

-spec resume_microvm(aws_client:aws_client(), binary() | list(), resume_microvm_request(), proplists:proplist()) ->
    {ok, resume_microvm_response(), tuple()} |
    {error, any()} |
    {error, resume_microvm_errors(), tuple()}.
resume_microvm(Client, MicrovmIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/2025-09-09/microvms/", aws_util:encode_uri(MicrovmIdentifier), "/resume"],
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

%% @doc Runs a new MicroVM from the specified image.
%%
%% The MicroVM starts in PENDING state and transitions to RUNNING once
%% provisioning completes. To connect, generate an authentication token using
%% CreateMicrovmAuthToken.
-spec run_microvm(aws_client:aws_client(), run_microvm_request()) ->
    {ok, run_microvm_response(), tuple()} |
    {error, any()} |
    {error, run_microvm_errors(), tuple()}.
run_microvm(Client, Input) ->
    run_microvm(Client, Input, []).

-spec run_microvm(aws_client:aws_client(), run_microvm_request(), proplists:proplist()) ->
    {ok, run_microvm_response(), tuple()} |
    {error, any()} |
    {error, run_microvm_errors(), tuple()}.
run_microvm(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2025-09-09/microvms"],
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

%% @doc Suspends a running MicroVM, preserving its full memory and disk
%% state.
%%
%% The MicroVM transitions through SUSPENDING to SUSPENDED. To restore, call
%% ResumeMicrovm or send traffic to the endpoint if autoResumeEnabled is
%% true.
-spec suspend_microvm(aws_client:aws_client(), binary() | list(), suspend_microvm_request()) ->
    {ok, suspend_microvm_response(), tuple()} |
    {error, any()} |
    {error, suspend_microvm_errors(), tuple()}.
suspend_microvm(Client, MicrovmIdentifier, Input) ->
    suspend_microvm(Client, MicrovmIdentifier, Input, []).

-spec suspend_microvm(aws_client:aws_client(), binary() | list(), suspend_microvm_request(), proplists:proplist()) ->
    {ok, suspend_microvm_response(), tuple()} |
    {error, any()} |
    {error, suspend_microvm_errors(), tuple()}.
suspend_microvm(Client, MicrovmIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/2025-09-09/microvms/", aws_util:encode_uri(MicrovmIdentifier), "/suspend"],
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

%% @doc Adds tags to a Lambda MicroVM resource.
-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Resource, Input) ->
    tag_resource(Client, Resource, Input, []).

-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Resource, Input0, Options0) ->
    Method = post,
    Path = ["/2017-03-31/tags/", aws_util:encode_uri(Resource), ""],
    SuccessStatusCode = 204,
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

%% @doc Terminates a MicroVM.
%%
%% This operation is idempotent; terminating a MicroVM that has already been
%% terminated succeeds without error.
-spec terminate_microvm(aws_client:aws_client(), binary() | list(), terminate_microvm_request()) ->
    {ok, terminate_microvm_response(), tuple()} |
    {error, any()} |
    {error, terminate_microvm_errors(), tuple()}.
terminate_microvm(Client, MicrovmIdentifier, Input) ->
    terminate_microvm(Client, MicrovmIdentifier, Input, []).

-spec terminate_microvm(aws_client:aws_client(), binary() | list(), terminate_microvm_request(), proplists:proplist()) ->
    {ok, terminate_microvm_response(), tuple()} |
    {error, any()} |
    {error, terminate_microvm_errors(), tuple()}.
terminate_microvm(Client, MicrovmIdentifier, Input0, Options0) ->
    Method = delete,
    Path = ["/2025-09-09/microvms/", aws_util:encode_uri(MicrovmIdentifier), ""],
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

%% @doc Removes tags from a Lambda MicroVM resource.
-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Resource, Input) ->
    untag_resource(Client, Resource, Input, []).

-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Resource, Input0, Options0) ->
    Method = delete,
    Path = ["/2017-03-31/tags/", aws_util:encode_uri(Resource), ""],
    SuccessStatusCode = 204,
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

%% @doc Updates the configuration of a MicroVM image and triggers a new
%% version build.
%%
%% This operation uses PUT semantics — all required fields (codeArtifact,
%% baseImageArn, buildRoleArn) must be provided with every request.
-spec update_microvm_image(aws_client:aws_client(), binary() | list(), update_microvm_image_request()) ->
    {ok, update_microvm_image_response(), tuple()} |
    {error, any()} |
    {error, update_microvm_image_errors(), tuple()}.
update_microvm_image(Client, ImageIdentifier, Input) ->
    update_microvm_image(Client, ImageIdentifier, Input, []).

-spec update_microvm_image(aws_client:aws_client(), binary() | list(), update_microvm_image_request(), proplists:proplist()) ->
    {ok, update_microvm_image_response(), tuple()} |
    {error, any()} |
    {error, update_microvm_image_errors(), tuple()}.
update_microvm_image(Client, ImageIdentifier, Input0, Options0) ->
    Method = put,
    Path = ["/2025-09-09/microvm-images/", aws_util:encode_uri(ImageIdentifier), ""],
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

%% @doc Updates the status of a specific MicroVM image version.
-spec update_microvm_image_version(aws_client:aws_client(), binary() | list(), binary() | list(), update_microvm_image_version_request()) ->
    {ok, update_microvm_image_version_response(), tuple()} |
    {error, any()} |
    {error, update_microvm_image_version_errors(), tuple()}.
update_microvm_image_version(Client, ImageIdentifier, ImageVersion, Input) ->
    update_microvm_image_version(Client, ImageIdentifier, ImageVersion, Input, []).

-spec update_microvm_image_version(aws_client:aws_client(), binary() | list(), binary() | list(), update_microvm_image_version_request(), proplists:proplist()) ->
    {ok, update_microvm_image_version_response(), tuple()} |
    {error, any()} |
    {error, update_microvm_image_version_errors(), tuple()}.
update_microvm_image_version(Client, ImageIdentifier, ImageVersion, Input0, Options0) ->
    Method = patch,
    Path = ["/2025-09-09/microvm-images/", aws_util:encode_uri(ImageIdentifier), "/versions/", aws_util:encode_uri(ImageVersion), ""],
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
    Client1 = Client#{service => <<"lambda">>},
    DefaultHost = build_host(<<"lambda">>, Client1),
    URL0 = build_url(DefaultHost, Path, Client1),
    PathBin = erlang:iolist_to_binary(Path),
    {URL1, Host} = aws_util:apply_endpoint_url_override(URL0, DefaultHost, PathBin, <<"AWS_ENDPOINT_URL_LAMBDA_MICROVMS">>),
    URL = aws_request:add_query(URL1, Query),
    AdditionalHeaders1 = [ {<<"Host">>, Host}
                         , {<<"Content-Type">>, <<"application/x-amz-json-1.1">>}
                         ],
    Payload =
      case proplists:get_value(send_body_as_binary, Options) of
         true when is_list(Input) ->
           proplists:get_value(<<"Body">>, Input, <<"">>);
         true when Input =:= undefined ->
           <<"">>;
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

