%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc IoT Greengrass brings local compute, messaging, data management,
%% sync, and ML inference capabilities
%% to edge devices.
%%
%% This enables devices to collect and analyze data closer to the source of
%% information, react autonomously to local events, and communicate securely
%% with each other on
%% local networks. Local devices can also communicate securely with Amazon
%% Web Services IoT Core and export IoT data
%% to the Amazon Web Services Cloud. IoT Greengrass developers can use Lambda
%% functions and components to create and
%% deploy applications to fleets of edge devices for local operation.
%%
%% IoT Greengrass Version 2 provides a new major version of the IoT
%% Greengrass Core software, new APIs, and a new console.
%% Use this API reference to learn how to use the IoT Greengrass V2 API
%% operations to manage components,
%% manage deployments, and core devices.
%%
%% For more information, see What is IoT Greengrass?:
%% https://docs.aws.amazon.com/greengrass/v2/developerguide/what-is-iot-greengrass.html
%% in the
%% IoT Greengrass V2 Developer Guide.
-module(aws_greengrassv2).

-export([associate_service_role_to_account/2,
         associate_service_role_to_account/3,
         batch_associate_client_device_with_core_device/3,
         batch_associate_client_device_with_core_device/4,
         batch_disassociate_client_device_from_core_device/3,
         batch_disassociate_client_device_from_core_device/4,
         cancel_deployment/3,
         cancel_deployment/4,
         create_component_version/2,
         create_component_version/3,
         create_deployment/2,
         create_deployment/3,
         delete_component/3,
         delete_component/4,
         delete_core_device/3,
         delete_core_device/4,
         delete_deployment/3,
         delete_deployment/4,
         describe_component/2,
         describe_component/4,
         describe_component/5,
         disassociate_service_role_from_account/2,
         disassociate_service_role_from_account/3,
         get_component/2,
         get_component/4,
         get_component/5,
         get_component_version_artifact/3,
         get_component_version_artifact/5,
         get_component_version_artifact/6,
         get_connectivity_info/2,
         get_connectivity_info/4,
         get_connectivity_info/5,
         get_core_device/2,
         get_core_device/4,
         get_core_device/5,
         get_deployment/2,
         get_deployment/4,
         get_deployment/5,
         get_service_role_for_account/1,
         get_service_role_for_account/3,
         get_service_role_for_account/4,
         list_client_devices_associated_with_core_device/2,
         list_client_devices_associated_with_core_device/4,
         list_client_devices_associated_with_core_device/5,
         list_component_versions/2,
         list_component_versions/4,
         list_component_versions/5,
         list_components/1,
         list_components/3,
         list_components/4,
         list_core_devices/1,
         list_core_devices/3,
         list_core_devices/4,
         list_deployments/1,
         list_deployments/3,
         list_deployments/4,
         list_effective_deployments/2,
         list_effective_deployments/4,
         list_effective_deployments/5,
         list_installed_components/2,
         list_installed_components/4,
         list_installed_components/5,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         resolve_component_candidates/2,
         resolve_component_candidates/3,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_connectivity_info/3,
         update_connectivity_info/4]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% lambda_function_recipe_source() :: #{
%%   <<"componentDependencies">> => map(),
%%   <<"componentLambdaParameters">> => lambda_execution_parameters(),
%%   <<"componentName">> => string(),
%%   <<"componentPlatforms">> => list(component_platform()()),
%%   <<"componentVersion">> => string(),
%%   <<"lambdaArn">> => string()
%% }
-type lambda_function_recipe_source() :: #{binary() => any()}.


%% Example:
%% deployment_component_update_policy() :: #{
%%   <<"action">> => list(any()),
%%   <<"timeoutInSeconds">> => integer()
%% }
-type deployment_component_update_policy() :: #{binary() => any()}.


%% Example:
%% disassociate_service_role_from_account_response() :: #{
%%   <<"disassociatedAt">> => string()
%% }
-type disassociate_service_role_from_account_response() :: #{binary() => any()}.


%% Example:
%% create_component_version_response() :: #{
%%   <<"arn">> => string(),
%%   <<"componentName">> => string(),
%%   <<"componentVersion">> => string(),
%%   <<"creationTimestamp">> => non_neg_integer(),
%%   <<"status">> => cloud_component_status()
%% }
-type create_component_version_response() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% list_deployments_request() :: #{
%%   <<"historyFilter">> => list(any()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"parentTargetArn">> => string(),
%%   <<"targetArn">> => string()
%% }
-type list_deployments_request() :: #{binary() => any()}.


%% Example:
%% update_connectivity_info_response() :: #{
%%   <<"message">> => string(),
%%   <<"version">> => string()
%% }
-type update_connectivity_info_response() :: #{binary() => any()}.


%% Example:
%% list_component_versions_response() :: #{
%%   <<"componentVersions">> => list(component_version_list_item()()),
%%   <<"nextToken">> => string()
%% }
-type list_component_versions_response() :: #{binary() => any()}.


%% Example:
%% get_component_version_artifact_request() :: #{
%%   <<"iotEndpointType">> => list(any()),
%%   <<"s3EndpointType">> => list(any())
%% }
-type get_component_version_artifact_request() :: #{binary() => any()}.


%% Example:
%% disassociate_client_device_from_core_device_entry() :: #{
%%   <<"thingName">> => string()
%% }
-type disassociate_client_device_from_core_device_entry() :: #{binary() => any()}.


%% Example:
%% deployment() :: #{
%%   <<"creationTimestamp">> => non_neg_integer(),
%%   <<"deploymentId">> => string(),
%%   <<"deploymentName">> => string(),
%%   <<"deploymentStatus">> => list(any()),
%%   <<"isLatestForTarget">> => boolean(),
%%   <<"parentTargetArn">> => string(),
%%   <<"revisionId">> => string(),
%%   <<"targetArn">> => string()
%% }
-type deployment() :: #{binary() => any()}.


%% Example:
%% component_dependency_requirement() :: #{
%%   <<"dependencyType">> => list(any()),
%%   <<"versionRequirement">> => string()
%% }
-type component_dependency_requirement() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% lambda_execution_parameters() :: #{
%%   <<"environmentVariables">> => map(),
%%   <<"eventSources">> => list(lambda_event_source()()),
%%   <<"execArgs">> => list(string()()),
%%   <<"inputPayloadEncodingType">> => list(any()),
%%   <<"linuxProcessParams">> => lambda_linux_process_params(),
%%   <<"maxIdleTimeInSeconds">> => integer(),
%%   <<"maxInstancesCount">> => integer(),
%%   <<"maxQueueSize">> => integer(),
%%   <<"pinned">> => boolean(),
%%   <<"statusTimeoutInSeconds">> => integer(),
%%   <<"timeoutInSeconds">> => integer()
%% }
-type lambda_execution_parameters() :: #{binary() => any()}.


%% Example:
%% list_deployments_response() :: #{
%%   <<"deployments">> => list(deployment()()),
%%   <<"nextToken">> => string()
%% }
-type list_deployments_response() :: #{binary() => any()}.


%% Example:
%% list_core_devices_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"runtime">> => string(),
%%   <<"status">> => list(any()),
%%   <<"thingGroupArn">> => string()
%% }
-type list_core_devices_request() :: #{binary() => any()}.


%% Example:
%% lambda_volume_mount() :: #{
%%   <<"addGroupOwner">> => boolean(),
%%   <<"destinationPath">> => string(),
%%   <<"permission">> => list(any()),
%%   <<"sourcePath">> => string()
%% }
-type lambda_volume_mount() :: #{binary() => any()}.


%% Example:
%% create_deployment_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"components">> => map(),
%%   <<"deploymentName">> => string(),
%%   <<"deploymentPolicies">> => deployment_policies(),
%%   <<"iotJobConfiguration">> => deployment_io_t_job_configuration(),
%%   <<"parentTargetArn">> => string(),
%%   <<"tags">> => map(),
%%   <<"targetArn">> := string()
%% }
-type create_deployment_request() :: #{binary() => any()}.


%% Example:
%% get_core_device_response() :: #{
%%   <<"architecture">> => string(),
%%   <<"coreDeviceThingName">> => string(),
%%   <<"coreVersion">> => string(),
%%   <<"lastStatusUpdateTimestamp">> => non_neg_integer(),
%%   <<"platform">> => string(),
%%   <<"runtime">> => string(),
%%   <<"status">> => list(any()),
%%   <<"tags">> => map()
%% }
-type get_core_device_response() :: #{binary() => any()}.


%% Example:
%% list_core_devices_response() :: #{
%%   <<"coreDevices">> => list(core_device()()),
%%   <<"nextToken">> => string()
%% }
-type list_core_devices_response() :: #{binary() => any()}.

%% Example:
%% delete_core_device_request() :: #{}
-type delete_core_device_request() :: #{}.

%% Example:
%% delete_component_request() :: #{}
-type delete_component_request() :: #{}.


%% Example:
%% lambda_event_source() :: #{
%%   <<"topic">> => string(),
%%   <<"type">> => list(any())
%% }
-type lambda_event_source() :: #{binary() => any()}.


%% Example:
%% get_component_response() :: #{
%%   <<"recipe">> => binary(),
%%   <<"recipeOutputFormat">> => list(any()),
%%   <<"tags">> => map()
%% }
-type get_component_response() :: #{binary() => any()}.


%% Example:
%% system_resource_limits() :: #{
%%   <<"cpus">> => float(),
%%   <<"memory">> => float()
%% }
-type system_resource_limits() :: #{binary() => any()}.


%% Example:
%% list_installed_components_response() :: #{
%%   <<"installedComponents">> => list(installed_component()()),
%%   <<"nextToken">> => string()
%% }
-type list_installed_components_response() :: #{binary() => any()}.


%% Example:
%% io_t_job_executions_rollout_config() :: #{
%%   <<"exponentialRate">> => io_t_job_exponential_rollout_rate(),
%%   <<"maximumPerMinute">> => integer()
%% }
-type io_t_job_executions_rollout_config() :: #{binary() => any()}.


%% Example:
%% core_device() :: #{
%%   <<"architecture">> => string(),
%%   <<"coreDeviceThingName">> => string(),
%%   <<"lastStatusUpdateTimestamp">> => non_neg_integer(),
%%   <<"platform">> => string(),
%%   <<"runtime">> => string(),
%%   <<"status">> => list(any())
%% }
-type core_device() :: #{binary() => any()}.


%% Example:
%% create_deployment_response() :: #{
%%   <<"deploymentId">> => string(),
%%   <<"iotJobArn">> => string(),
%%   <<"iotJobId">> => string()
%% }
-type create_deployment_response() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"tagKeys">> := list(string()())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% io_t_job_exponential_rollout_rate() :: #{
%%   <<"baseRatePerMinute">> => integer(),
%%   <<"incrementFactor">> => float(),
%%   <<"rateIncreaseCriteria">> => io_t_job_rate_increase_criteria()
%% }
-type io_t_job_exponential_rollout_rate() :: #{binary() => any()}.

%% Example:
%% get_service_role_for_account_request() :: #{}
-type get_service_role_for_account_request() :: #{}.


%% Example:
%% associate_client_device_with_core_device_error_entry() :: #{
%%   <<"code">> => string(),
%%   <<"message">> => string(),
%%   <<"thingName">> => string()
%% }
-type associate_client_device_with_core_device_error_entry() :: #{binary() => any()}.


%% Example:
%% update_connectivity_info_request() :: #{
%%   <<"connectivityInfo">> := list(connectivity_info()())
%% }
-type update_connectivity_info_request() :: #{binary() => any()}.

%% Example:
%% get_core_device_request() :: #{}
-type get_core_device_request() :: #{}.


%% Example:
%% deployment_configuration_validation_policy() :: #{
%%   <<"timeoutInSeconds">> => integer()
%% }
-type deployment_configuration_validation_policy() :: #{binary() => any()}.


%% Example:
%% list_component_versions_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_component_versions_request() :: #{binary() => any()}.


%% Example:
%% effective_deployment() :: #{
%%   <<"coreDeviceExecutionStatus">> => list(any()),
%%   <<"creationTimestamp">> => non_neg_integer(),
%%   <<"deploymentId">> => string(),
%%   <<"deploymentName">> => string(),
%%   <<"description">> => string(),
%%   <<"iotJobArn">> => string(),
%%   <<"iotJobId">> => string(),
%%   <<"modifiedTimestamp">> => non_neg_integer(),
%%   <<"reason">> => string(),
%%   <<"statusDetails">> => effective_deployment_status_details(),
%%   <<"targetArn">> => string()
%% }
-type effective_deployment() :: #{binary() => any()}.


%% Example:
%% request_already_in_progress_exception() :: #{
%%   <<"message">> => string()
%% }
-type request_already_in_progress_exception() :: #{binary() => any()}.

%% Example:
%% cancel_deployment_request() :: #{}
-type cancel_deployment_request() :: #{}.


%% Example:
%% connectivity_info() :: #{
%%   <<"hostAddress">> => string(),
%%   <<"id">> => string(),
%%   <<"metadata">> => string(),
%%   <<"portNumber">> => integer()
%% }
-type connectivity_info() :: #{binary() => any()}.


%% Example:
%% get_connectivity_info_response() :: #{
%%   <<"connectivityInfo">> => list(connectivity_info()()),
%%   <<"message">> => string()
%% }
-type get_connectivity_info_response() :: #{binary() => any()}.


%% Example:
%% installed_component() :: #{
%%   <<"componentName">> => string(),
%%   <<"componentVersion">> => string(),
%%   <<"isRoot">> => boolean(),
%%   <<"lastInstallationSource">> => string(),
%%   <<"lastReportedTimestamp">> => non_neg_integer(),
%%   <<"lastStatusChangeTimestamp">> => non_neg_integer(),
%%   <<"lifecycleState">> => list(any()),
%%   <<"lifecycleStateDetails">> => string(),
%%   <<"lifecycleStatusCodes">> => list(string()())
%% }
-type installed_component() :: #{binary() => any()}.


%% Example:
%% create_component_version_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"inlineRecipe">> => binary(),
%%   <<"lambdaFunction">> => lambda_function_recipe_source(),
%%   <<"tags">> => map()
%% }
-type create_component_version_request() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => string(),
%%   <<"resourceId">> => string(),
%%   <<"resourceType">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => string(),
%%   <<"resourceId">> => string(),
%%   <<"resourceType">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% list_components_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"scope">> => list(any())
%% }
-type list_components_request() :: #{binary() => any()}.


%% Example:
%% batch_disassociate_client_device_from_core_device_response() :: #{
%%   <<"errorEntries">> => list(disassociate_client_device_from_core_device_error_entry()())
%% }
-type batch_disassociate_client_device_from_core_device_response() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"message">> => string(),
%%   <<"quotaCode">> => string(),
%%   <<"resourceId">> => string(),
%%   <<"resourceType">> => string(),
%%   <<"serviceCode">> => string()
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% component_latest_version() :: #{
%%   <<"arn">> => string(),
%%   <<"componentVersion">> => string(),
%%   <<"creationTimestamp">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"platforms">> => list(component_platform()()),
%%   <<"publisher">> => string()
%% }
-type component_latest_version() :: #{binary() => any()}.


%% Example:
%% deployment_io_t_job_configuration() :: #{
%%   <<"abortConfig">> => io_t_job_abort_config(),
%%   <<"jobExecutionsRolloutConfig">> => io_t_job_executions_rollout_config(),
%%   <<"timeoutConfig">> => io_t_job_timeout_config()
%% }
-type deployment_io_t_job_configuration() :: #{binary() => any()}.


%% Example:
%% component() :: #{
%%   <<"arn">> => string(),
%%   <<"componentName">> => string(),
%%   <<"latestVersion">> => component_latest_version()
%% }
-type component() :: #{binary() => any()}.

%% Example:
%% get_deployment_request() :: #{}
-type get_deployment_request() :: #{}.


%% Example:
%% resolved_component_version() :: #{
%%   <<"arn">> => string(),
%%   <<"componentName">> => string(),
%%   <<"componentVersion">> => string(),
%%   <<"message">> => string(),
%%   <<"recipe">> => binary(),
%%   <<"vendorGuidance">> => list(any())
%% }
-type resolved_component_version() :: #{binary() => any()}.


%% Example:
%% component_platform() :: #{
%%   <<"attributes">> => map(),
%%   <<"name">> => string()
%% }
-type component_platform() :: #{binary() => any()}.


%% Example:
%% io_t_job_rate_increase_criteria() :: #{
%%   <<"numberOfNotifiedThings">> => integer(),
%%   <<"numberOfSucceededThings">> => integer()
%% }
-type io_t_job_rate_increase_criteria() :: #{binary() => any()}.


%% Example:
%% cloud_component_status() :: #{
%%   <<"componentState">> => list(any()),
%%   <<"errors">> => map(),
%%   <<"message">> => string(),
%%   <<"vendorGuidance">> => list(any()),
%%   <<"vendorGuidanceMessage">> => string()
%% }
-type cloud_component_status() :: #{binary() => any()}.


%% Example:
%% component_run_with() :: #{
%%   <<"posixUser">> => string(),
%%   <<"systemResourceLimits">> => system_resource_limits(),
%%   <<"windowsUser">> => string()
%% }
-type component_run_with() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% effective_deployment_status_details() :: #{
%%   <<"errorStack">> => list(string()()),
%%   <<"errorTypes">> => list(string()())
%% }
-type effective_deployment_status_details() :: #{binary() => any()}.


%% Example:
%% validation_exception_field() :: #{
%%   <<"message">> => string(),
%%   <<"name">> => string()
%% }
-type validation_exception_field() :: #{binary() => any()}.


%% Example:
%% component_deployment_specification() :: #{
%%   <<"componentVersion">> => string(),
%%   <<"configurationUpdate">> => component_configuration_update(),
%%   <<"runWith">> => component_run_with()
%% }
-type component_deployment_specification() :: #{binary() => any()}.


%% Example:
%% list_client_devices_associated_with_core_device_response() :: #{
%%   <<"associatedClientDevices">> => list(associated_client_device()()),
%%   <<"nextToken">> => string()
%% }
-type list_client_devices_associated_with_core_device_response() :: #{binary() => any()}.

%% Example:
%% get_connectivity_info_request() :: #{}
-type get_connectivity_info_request() :: #{}.


%% Example:
%% associate_service_role_to_account_request() :: #{
%%   <<"roleArn">> := string()
%% }
-type associate_service_role_to_account_request() :: #{binary() => any()}.


%% Example:
%% deployment_policies() :: #{
%%   <<"componentUpdatePolicy">> => deployment_component_update_policy(),
%%   <<"configurationValidationPolicy">> => deployment_configuration_validation_policy(),
%%   <<"failureHandlingPolicy">> => list(any())
%% }
-type deployment_policies() :: #{binary() => any()}.

%% Example:
%% delete_deployment_request() :: #{}
-type delete_deployment_request() :: #{}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => string(),
%%   <<"retryAfterSeconds">> => integer()
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% component_configuration_update() :: #{
%%   <<"merge">> => string(),
%%   <<"reset">> => list(string()())
%% }
-type component_configuration_update() :: #{binary() => any()}.


%% Example:
%% associate_client_device_with_core_device_entry() :: #{
%%   <<"thingName">> => string()
%% }
-type associate_client_device_with_core_device_entry() :: #{binary() => any()}.


%% Example:
%% io_t_job_timeout_config() :: #{
%%   <<"inProgressTimeoutInMinutes">> => float()
%% }
-type io_t_job_timeout_config() :: #{binary() => any()}.


%% Example:
%% resolve_component_candidates_response() :: #{
%%   <<"resolvedComponentVersions">> => list(resolved_component_version()())
%% }
-type resolve_component_candidates_response() :: #{binary() => any()}.


%% Example:
%% disassociate_client_device_from_core_device_error_entry() :: #{
%%   <<"code">> => string(),
%%   <<"message">> => string(),
%%   <<"thingName">> => string()
%% }
-type disassociate_client_device_from_core_device_error_entry() :: #{binary() => any()}.


%% Example:
%% batch_disassociate_client_device_from_core_device_request() :: #{
%%   <<"entries">> => list(disassociate_client_device_from_core_device_entry()())
%% }
-type batch_disassociate_client_device_from_core_device_request() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% io_t_job_abort_config() :: #{
%%   <<"criteriaList">> => list(io_t_job_abort_criteria()())
%% }
-type io_t_job_abort_config() :: #{binary() => any()}.


%% Example:
%% component_version_list_item() :: #{
%%   <<"arn">> => string(),
%%   <<"componentName">> => string(),
%%   <<"componentVersion">> => string()
%% }
-type component_version_list_item() :: #{binary() => any()}.


%% Example:
%% lambda_container_params() :: #{
%%   <<"devices">> => list(lambda_device_mount()()),
%%   <<"memorySizeInKB">> => integer(),
%%   <<"mountROSysfs">> => boolean(),
%%   <<"volumes">> => list(lambda_volume_mount()())
%% }
-type lambda_container_params() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"fields">> => list(validation_exception_field()()),
%%   <<"message">> => string(),
%%   <<"reason">> => list(any())
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% cancel_deployment_response() :: #{
%%   <<"message">> => string()
%% }
-type cancel_deployment_response() :: #{binary() => any()}.


%% Example:
%% get_deployment_response() :: #{
%%   <<"components">> => map(),
%%   <<"creationTimestamp">> => non_neg_integer(),
%%   <<"deploymentId">> => string(),
%%   <<"deploymentName">> => string(),
%%   <<"deploymentPolicies">> => deployment_policies(),
%%   <<"deploymentStatus">> => list(any()),
%%   <<"iotJobArn">> => string(),
%%   <<"iotJobConfiguration">> => deployment_io_t_job_configuration(),
%%   <<"iotJobId">> => string(),
%%   <<"isLatestForTarget">> => boolean(),
%%   <<"parentTargetArn">> => string(),
%%   <<"revisionId">> => string(),
%%   <<"tags">> => map(),
%%   <<"targetArn">> => string()
%% }
-type get_deployment_response() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => string(),
%%   <<"quotaCode">> => string(),
%%   <<"retryAfterSeconds">> => integer(),
%%   <<"serviceCode">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% describe_component_response() :: #{
%%   <<"arn">> => string(),
%%   <<"componentName">> => string(),
%%   <<"componentVersion">> => string(),
%%   <<"creationTimestamp">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"platforms">> => list(component_platform()()),
%%   <<"publisher">> => string(),
%%   <<"status">> => cloud_component_status(),
%%   <<"tags">> => map()
%% }
-type describe_component_response() :: #{binary() => any()}.


%% Example:
%% list_effective_deployments_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_effective_deployments_request() :: #{binary() => any()}.


%% Example:
%% list_components_response() :: #{
%%   <<"components">> => list(component()()),
%%   <<"nextToken">> => string()
%% }
-type list_components_response() :: #{binary() => any()}.


%% Example:
%% get_component_version_artifact_response() :: #{
%%   <<"preSignedUrl">> => string()
%% }
-type get_component_version_artifact_response() :: #{binary() => any()}.


%% Example:
%% list_installed_components_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"topologyFilter">> => list(any())
%% }
-type list_installed_components_request() :: #{binary() => any()}.


%% Example:
%% batch_associate_client_device_with_core_device_response() :: #{
%%   <<"errorEntries">> => list(associate_client_device_with_core_device_error_entry()())
%% }
-type batch_associate_client_device_with_core_device_response() :: #{binary() => any()}.


%% Example:
%% list_client_devices_associated_with_core_device_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_client_devices_associated_with_core_device_request() :: #{binary() => any()}.


%% Example:
%% associated_client_device() :: #{
%%   <<"associationTimestamp">> => non_neg_integer(),
%%   <<"thingName">> => string()
%% }
-type associated_client_device() :: #{binary() => any()}.

%% Example:
%% describe_component_request() :: #{}
-type describe_component_request() :: #{}.


%% Example:
%% component_candidate() :: #{
%%   <<"componentName">> => string(),
%%   <<"componentVersion">> => string(),
%%   <<"versionRequirements">> => map()
%% }
-type component_candidate() :: #{binary() => any()}.


%% Example:
%% list_effective_deployments_response() :: #{
%%   <<"effectiveDeployments">> => list(effective_deployment()()),
%%   <<"nextToken">> => string()
%% }
-type list_effective_deployments_response() :: #{binary() => any()}.


%% Example:
%% lambda_linux_process_params() :: #{
%%   <<"containerParams">> => lambda_container_params(),
%%   <<"isolationMode">> => list(any())
%% }
-type lambda_linux_process_params() :: #{binary() => any()}.


%% Example:
%% get_service_role_for_account_response() :: #{
%%   <<"associatedAt">> => string(),
%%   <<"roleArn">> => string()
%% }
-type get_service_role_for_account_response() :: #{binary() => any()}.


%% Example:
%% batch_associate_client_device_with_core_device_request() :: #{
%%   <<"entries">> => list(associate_client_device_with_core_device_entry()())
%% }
-type batch_associate_client_device_with_core_device_request() :: #{binary() => any()}.


%% Example:
%% io_t_job_abort_criteria() :: #{
%%   <<"action">> => list(any()),
%%   <<"failureType">> => list(any()),
%%   <<"minNumberOfExecutedThings">> => integer(),
%%   <<"thresholdPercentage">> => float()
%% }
-type io_t_job_abort_criteria() :: #{binary() => any()}.


%% Example:
%% associate_service_role_to_account_response() :: #{
%%   <<"associatedAt">> => string()
%% }
-type associate_service_role_to_account_response() :: #{binary() => any()}.

%% Example:
%% disassociate_service_role_from_account_request() :: #{}
-type disassociate_service_role_from_account_request() :: #{}.


%% Example:
%% get_component_request() :: #{
%%   <<"recipeOutputFormat">> => list(any())
%% }
-type get_component_request() :: #{binary() => any()}.


%% Example:
%% resolve_component_candidates_request() :: #{
%%   <<"componentCandidates">> => list(component_candidate()()),
%%   <<"platform">> => component_platform()
%% }
-type resolve_component_candidates_request() :: #{binary() => any()}.


%% Example:
%% lambda_device_mount() :: #{
%%   <<"addGroupOwner">> => boolean(),
%%   <<"path">> => string(),
%%   <<"permission">> => list(any())
%% }
-type lambda_device_mount() :: #{binary() => any()}.

-type associate_service_role_to_account_errors() ::
    validation_exception() | 
    internal_server_exception().

-type batch_associate_client_device_with_core_device_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type batch_disassociate_client_device_from_core_device_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type cancel_deployment_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_component_version_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception() | 
    request_already_in_progress_exception().

-type create_deployment_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    request_already_in_progress_exception().

-type delete_component_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_core_device_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_deployment_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type describe_component_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type disassociate_service_role_from_account_errors() ::
    internal_server_exception().

-type get_component_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_component_version_artifact_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_connectivity_info_errors() ::
    validation_exception() | 
    internal_server_exception().

-type get_core_device_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_deployment_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_service_role_for_account_errors() ::
    internal_server_exception().

-type list_client_devices_associated_with_core_device_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_component_versions_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_components_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_core_devices_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_deployments_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_effective_deployments_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_installed_components_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_tags_for_resource_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type resolve_component_candidates_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type tag_resource_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_connectivity_info_errors() ::
    validation_exception() | 
    internal_server_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Associates a Greengrass service role with IoT Greengrass for your
%% Amazon Web Services account in this Amazon Web Services Region.
%%
%% IoT Greengrass
%% uses this role to verify the identity of client devices and manage core
%% device connectivity
%% information. The role must include the
%% AWSGreengrassResourceAccessRolePolicy:
%% https://console.aws.amazon.com/iam/home#/policies/arn:awsiam::aws:policy/service-role/AWSGreengrassResourceAccessRolePolicy
%% managed policy or a custom policy that
%% defines equivalent permissions for the IoT Greengrass features that you
%% use. For more information, see
%% Greengrass service role:
%% https://docs.aws.amazon.com/greengrass/v2/developerguide/greengrass-service-role.html
%% in the IoT Greengrass Version 2 Developer Guide.
-spec associate_service_role_to_account(aws_client:aws_client(), associate_service_role_to_account_request()) ->
    {ok, associate_service_role_to_account_response(), tuple()} |
    {error, any()} |
    {error, associate_service_role_to_account_errors(), tuple()}.
associate_service_role_to_account(Client, Input) ->
    associate_service_role_to_account(Client, Input, []).

-spec associate_service_role_to_account(aws_client:aws_client(), associate_service_role_to_account_request(), proplists:proplist()) ->
    {ok, associate_service_role_to_account_response(), tuple()} |
    {error, any()} |
    {error, associate_service_role_to_account_errors(), tuple()}.
associate_service_role_to_account(Client, Input0, Options0) ->
    Method = put,
    Path = ["/greengrass/servicerole"],
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

%% @doc Associates a list of client devices with a core device.
%%
%% Use this API operation to specify
%% which client devices can discover a core device through cloud discovery.
%% With cloud discovery,
%% client devices connect to IoT Greengrass to retrieve associated core
%% devices' connectivity information
%% and certificates. For more information, see Configure cloud
%% discovery:
%% https://docs.aws.amazon.com/greengrass/v2/developerguide/configure-cloud-discovery.html
%% in the IoT Greengrass V2 Developer Guide.
%%
%% Client devices are local IoT devices that connect to and communicate with
%% an IoT Greengrass core
%% device over MQTT. You can connect client devices to a core device to sync
%% MQTT messages and
%% data to Amazon Web Services IoT Core and interact with client devices in
%% Greengrass components. For more information,
%% see Interact with
%% local IoT devices:
%% https://docs.aws.amazon.com/greengrass/v2/developerguide/interact-with-local-iot-devices.html
%% in the IoT Greengrass V2 Developer Guide.
-spec batch_associate_client_device_with_core_device(aws_client:aws_client(), binary() | list(), batch_associate_client_device_with_core_device_request()) ->
    {ok, batch_associate_client_device_with_core_device_response(), tuple()} |
    {error, any()} |
    {error, batch_associate_client_device_with_core_device_errors(), tuple()}.
batch_associate_client_device_with_core_device(Client, CoreDeviceThingName, Input) ->
    batch_associate_client_device_with_core_device(Client, CoreDeviceThingName, Input, []).

-spec batch_associate_client_device_with_core_device(aws_client:aws_client(), binary() | list(), batch_associate_client_device_with_core_device_request(), proplists:proplist()) ->
    {ok, batch_associate_client_device_with_core_device_response(), tuple()} |
    {error, any()} |
    {error, batch_associate_client_device_with_core_device_errors(), tuple()}.
batch_associate_client_device_with_core_device(Client, CoreDeviceThingName, Input0, Options0) ->
    Method = post,
    Path = ["/greengrass/v2/coreDevices/", aws_util:encode_uri(CoreDeviceThingName), "/associateClientDevices"],
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

%% @doc Disassociates a list of client devices from a core device.
%%
%% After you disassociate a client
%% device from a core device, the client device won't be able to use
%% cloud discovery to retrieve
%% the core device's connectivity information and certificates.
-spec batch_disassociate_client_device_from_core_device(aws_client:aws_client(), binary() | list(), batch_disassociate_client_device_from_core_device_request()) ->
    {ok, batch_disassociate_client_device_from_core_device_response(), tuple()} |
    {error, any()} |
    {error, batch_disassociate_client_device_from_core_device_errors(), tuple()}.
batch_disassociate_client_device_from_core_device(Client, CoreDeviceThingName, Input) ->
    batch_disassociate_client_device_from_core_device(Client, CoreDeviceThingName, Input, []).

-spec batch_disassociate_client_device_from_core_device(aws_client:aws_client(), binary() | list(), batch_disassociate_client_device_from_core_device_request(), proplists:proplist()) ->
    {ok, batch_disassociate_client_device_from_core_device_response(), tuple()} |
    {error, any()} |
    {error, batch_disassociate_client_device_from_core_device_errors(), tuple()}.
batch_disassociate_client_device_from_core_device(Client, CoreDeviceThingName, Input0, Options0) ->
    Method = post,
    Path = ["/greengrass/v2/coreDevices/", aws_util:encode_uri(CoreDeviceThingName), "/disassociateClientDevices"],
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

%% @doc Cancels a deployment.
%%
%% This operation cancels the deployment for devices that haven't yet
%% received it. If a device already received the deployment, this operation
%% doesn't change
%% anything for that device.
-spec cancel_deployment(aws_client:aws_client(), binary() | list(), cancel_deployment_request()) ->
    {ok, cancel_deployment_response(), tuple()} |
    {error, any()} |
    {error, cancel_deployment_errors(), tuple()}.
cancel_deployment(Client, DeploymentId, Input) ->
    cancel_deployment(Client, DeploymentId, Input, []).

-spec cancel_deployment(aws_client:aws_client(), binary() | list(), cancel_deployment_request(), proplists:proplist()) ->
    {ok, cancel_deployment_response(), tuple()} |
    {error, any()} |
    {error, cancel_deployment_errors(), tuple()}.
cancel_deployment(Client, DeploymentId, Input0, Options0) ->
    Method = post,
    Path = ["/greengrass/v2/deployments/", aws_util:encode_uri(DeploymentId), "/cancel"],
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

%% @doc Creates a component.
%%
%% Components are software that run on Greengrass core devices. After you
%% develop and test a component on your core device, you can use this
%% operation to upload your
%% component to IoT Greengrass. Then, you can deploy the component to other
%% core devices.
%%
%% You can use this operation to do the following:
%%
%% Create components from recipes
%%
%% Create a component from a recipe, which is a file that defines the
%% component's
%% metadata, parameters, dependencies, lifecycle, artifacts, and platform
%% capability. For
%% more information, see IoT Greengrass component recipe
%% reference:
%% https://docs.aws.amazon.com/greengrass/v2/developerguide/component-recipe-reference.html
%% in the IoT Greengrass V2 Developer Guide.
%%
%% To create a component from a recipe, specify `inlineRecipe' when you
%% call
%% this operation.
%%
%% Create components from Lambda functions
%%
%% Create a component from an Lambda function that runs on IoT Greengrass.
%% This creates a recipe
%% and artifacts from the Lambda function's deployment package. You can
%% use this operation to
%% migrate Lambda functions from IoT Greengrass V1 to IoT Greengrass V2.
%%
%% This function accepts Lambda functions in all supported versions of
%% Python, Node.js,
%% and Java runtimes. IoT Greengrass doesn't apply any additional
%% restrictions on deprecated Lambda
%% runtime versions.
%%
%% To create a component from a Lambda function, specify `lambdaFunction'
%% when
%% you call this operation.
%%
%% IoT Greengrass currently supports Lambda functions on only Linux core
%% devices.
-spec create_component_version(aws_client:aws_client(), create_component_version_request()) ->
    {ok, create_component_version_response(), tuple()} |
    {error, any()} |
    {error, create_component_version_errors(), tuple()}.
create_component_version(Client, Input) ->
    create_component_version(Client, Input, []).

-spec create_component_version(aws_client:aws_client(), create_component_version_request(), proplists:proplist()) ->
    {ok, create_component_version_response(), tuple()} |
    {error, any()} |
    {error, create_component_version_errors(), tuple()}.
create_component_version(Client, Input0, Options0) ->
    Method = post,
    Path = ["/greengrass/v2/createComponentVersion"],
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

%% @doc Creates a continuous deployment for a target, which is a Greengrass
%% core device or group of core
%% devices.
%%
%% When you add a new core device to a group of core devices that has a
%% deployment, IoT Greengrass
%% deploys that group's deployment to the new device.
%%
%% You can define one deployment for each target. When you create a new
%% deployment for a
%% target that has an existing deployment, you replace the previous
%% deployment. IoT Greengrass applies the
%% new deployment to the target devices.
%%
%% Every deployment has a revision number that indicates how many deployment
%% revisions you
%% define for a target. Use this operation to create a new revision of an
%% existing
%% deployment.
%%
%% For more information, see the Create deployments:
%% https://docs.aws.amazon.com/greengrass/v2/developerguide/create-deployments.html
%% in the
%% IoT Greengrass V2 Developer Guide.
-spec create_deployment(aws_client:aws_client(), create_deployment_request()) ->
    {ok, create_deployment_response(), tuple()} |
    {error, any()} |
    {error, create_deployment_errors(), tuple()}.
create_deployment(Client, Input) ->
    create_deployment(Client, Input, []).

-spec create_deployment(aws_client:aws_client(), create_deployment_request(), proplists:proplist()) ->
    {ok, create_deployment_response(), tuple()} |
    {error, any()} |
    {error, create_deployment_errors(), tuple()}.
create_deployment(Client, Input0, Options0) ->
    Method = post,
    Path = ["/greengrass/v2/deployments"],
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

%% @doc Deletes a version of a component from IoT Greengrass.
%%
%% This operation deletes the component's recipe and artifacts. As a
%% result, deployments
%% that refer to this component version will fail. If you have deployments
%% that use this
%% component version, you can remove the component from the deployment or
%% update the deployment
%% to use a valid version.
-spec delete_component(aws_client:aws_client(), binary() | list(), delete_component_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_component_errors(), tuple()}.
delete_component(Client, Arn, Input) ->
    delete_component(Client, Arn, Input, []).

-spec delete_component(aws_client:aws_client(), binary() | list(), delete_component_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_component_errors(), tuple()}.
delete_component(Client, Arn, Input0, Options0) ->
    Method = delete,
    Path = ["/greengrass/v2/components/", aws_util:encode_uri(Arn), ""],
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

%% @doc Deletes a Greengrass core device, which is an IoT thing.
%%
%% This operation removes the core
%% device from the list of core devices. This operation doesn't delete
%% the IoT thing. For more
%% information about how to delete the IoT thing, see DeleteThing:
%% https://docs.aws.amazon.com/iot/latest/apireference/API_DeleteThing.html
%% in the
%% IoT API Reference.
-spec delete_core_device(aws_client:aws_client(), binary() | list(), delete_core_device_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_core_device_errors(), tuple()}.
delete_core_device(Client, CoreDeviceThingName, Input) ->
    delete_core_device(Client, CoreDeviceThingName, Input, []).

-spec delete_core_device(aws_client:aws_client(), binary() | list(), delete_core_device_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_core_device_errors(), tuple()}.
delete_core_device(Client, CoreDeviceThingName, Input0, Options0) ->
    Method = delete,
    Path = ["/greengrass/v2/coreDevices/", aws_util:encode_uri(CoreDeviceThingName), ""],
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

%% @doc Deletes a deployment.
%%
%% To delete an active deployment, you must first cancel it. For more
%% information, see CancelDeployment:
%% https://docs.aws.amazon.com/iot/latest/apireference/API_CancelDeployment.html.
%%
%% Deleting a deployment doesn't affect core devices that run that
%% deployment, because core
%% devices store the deployment's configuration on the device.
%% Additionally, core devices can
%% roll back to a previous deployment that has been deleted.
-spec delete_deployment(aws_client:aws_client(), binary() | list(), delete_deployment_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_deployment_errors(), tuple()}.
delete_deployment(Client, DeploymentId, Input) ->
    delete_deployment(Client, DeploymentId, Input, []).

-spec delete_deployment(aws_client:aws_client(), binary() | list(), delete_deployment_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_deployment_errors(), tuple()}.
delete_deployment(Client, DeploymentId, Input0, Options0) ->
    Method = delete,
    Path = ["/greengrass/v2/deployments/", aws_util:encode_uri(DeploymentId), ""],
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

%% @doc Retrieves metadata for a version of a component.
-spec describe_component(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_component_response(), tuple()} |
    {error, any()} |
    {error, describe_component_errors(), tuple()}.
describe_component(Client, Arn)
  when is_map(Client) ->
    describe_component(Client, Arn, #{}, #{}).

-spec describe_component(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_component_response(), tuple()} |
    {error, any()} |
    {error, describe_component_errors(), tuple()}.
describe_component(Client, Arn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_component(Client, Arn, QueryMap, HeadersMap, []).

-spec describe_component(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_component_response(), tuple()} |
    {error, any()} |
    {error, describe_component_errors(), tuple()}.
describe_component(Client, Arn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/greengrass/v2/components/", aws_util:encode_uri(Arn), "/metadata"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Disassociates the Greengrass service role from IoT Greengrass for
%% your Amazon Web Services account in this Amazon Web Services Region.
%%
%% Without a service role, IoT Greengrass can't verify the identity of
%% client devices or manage core device
%% connectivity information. For more information, see Greengrass service
%% role:
%% https://docs.aws.amazon.com/greengrass/v2/developerguide/greengrass-service-role.html
%% in
%% the IoT Greengrass Version 2 Developer Guide.
-spec disassociate_service_role_from_account(aws_client:aws_client(), disassociate_service_role_from_account_request()) ->
    {ok, disassociate_service_role_from_account_response(), tuple()} |
    {error, any()} |
    {error, disassociate_service_role_from_account_errors(), tuple()}.
disassociate_service_role_from_account(Client, Input) ->
    disassociate_service_role_from_account(Client, Input, []).

-spec disassociate_service_role_from_account(aws_client:aws_client(), disassociate_service_role_from_account_request(), proplists:proplist()) ->
    {ok, disassociate_service_role_from_account_response(), tuple()} |
    {error, any()} |
    {error, disassociate_service_role_from_account_errors(), tuple()}.
disassociate_service_role_from_account(Client, Input0, Options0) ->
    Method = delete,
    Path = ["/greengrass/servicerole"],
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

%% @doc Gets the recipe for a version of a component.
-spec get_component(aws_client:aws_client(), binary() | list()) ->
    {ok, get_component_response(), tuple()} |
    {error, any()} |
    {error, get_component_errors(), tuple()}.
get_component(Client, Arn)
  when is_map(Client) ->
    get_component(Client, Arn, #{}, #{}).

-spec get_component(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_component_response(), tuple()} |
    {error, any()} |
    {error, get_component_errors(), tuple()}.
get_component(Client, Arn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_component(Client, Arn, QueryMap, HeadersMap, []).

-spec get_component(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_component_response(), tuple()} |
    {error, any()} |
    {error, get_component_errors(), tuple()}.
get_component(Client, Arn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/greengrass/v2/components/", aws_util:encode_uri(Arn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"recipeOutputFormat">>, maps:get(<<"recipeOutputFormat">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the pre-signed URL to download a public or a Lambda component
%% artifact.
%%
%% Core devices
%% call this operation to identify the URL that they can use to download an
%% artifact to
%% install.
-spec get_component_version_artifact(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_component_version_artifact_response(), tuple()} |
    {error, any()} |
    {error, get_component_version_artifact_errors(), tuple()}.
get_component_version_artifact(Client, Arn, ArtifactName)
  when is_map(Client) ->
    get_component_version_artifact(Client, Arn, ArtifactName, #{}, #{}).

-spec get_component_version_artifact(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_component_version_artifact_response(), tuple()} |
    {error, any()} |
    {error, get_component_version_artifact_errors(), tuple()}.
get_component_version_artifact(Client, Arn, ArtifactName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_component_version_artifact(Client, Arn, ArtifactName, QueryMap, HeadersMap, []).

-spec get_component_version_artifact(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_component_version_artifact_response(), tuple()} |
    {error, any()} |
    {error, get_component_version_artifact_errors(), tuple()}.
get_component_version_artifact(Client, Arn, ArtifactName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/greengrass/v2/components/", aws_util:encode_uri(Arn), "/artifacts/", aws_util:encode_multi_segment_uri(ArtifactName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers0 =
      [
        {<<"x-amz-iot-endpoint-type">>, maps:get(<<"x-amz-iot-endpoint-type">>, HeadersMap, undefined)}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"s3EndpointType">>, maps:get(<<"s3EndpointType">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves connectivity information for a Greengrass core device.
%%
%% Connectivity information includes endpoints and ports where client devices
%% can connect to an MQTT broker on the core device. When a client device
%% calls the IoT Greengrass discovery API:
%% https://docs.aws.amazon.com/greengrass/v2/developerguide/greengrass-discover-api.html,
%% IoT Greengrass returns connectivity information for all of the core
%% devices where the client device can
%% connect. For more information, see Connect client devices to
%% core devices:
%% https://docs.aws.amazon.com/greengrass/v2/developerguide/connect-client-devices.html
%% in the IoT Greengrass Version 2 Developer Guide.
-spec get_connectivity_info(aws_client:aws_client(), binary() | list()) ->
    {ok, get_connectivity_info_response(), tuple()} |
    {error, any()} |
    {error, get_connectivity_info_errors(), tuple()}.
get_connectivity_info(Client, ThingName)
  when is_map(Client) ->
    get_connectivity_info(Client, ThingName, #{}, #{}).

-spec get_connectivity_info(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_connectivity_info_response(), tuple()} |
    {error, any()} |
    {error, get_connectivity_info_errors(), tuple()}.
get_connectivity_info(Client, ThingName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_connectivity_info(Client, ThingName, QueryMap, HeadersMap, []).

-spec get_connectivity_info(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_connectivity_info_response(), tuple()} |
    {error, any()} |
    {error, get_connectivity_info_errors(), tuple()}.
get_connectivity_info(Client, ThingName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/greengrass/things/", aws_util:encode_uri(ThingName), "/connectivityInfo"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves metadata for a Greengrass core device.
%%
%% IoT Greengrass relies on individual devices to send status updates to the
%% Amazon Web Services Cloud. If the
%% IoT Greengrass Core software isn't running on the device, or if device
%% isn't connected to the Amazon Web Services Cloud,
%% then the reported status of that device might not reflect its current
%% status. The status
%% timestamp indicates when the device status was last updated.
%%
%% Core devices send status updates at the following times:
%%
%% When the IoT Greengrass Core software starts
%%
%% When the core device receives a deployment from the Amazon Web Services
%% Cloud
%%
%% When the status of any component on the core device becomes
%% `BROKEN'
%%
%% At a regular interval that you can configure:
%% https://docs.aws.amazon.com/greengrass/v2/developerguide/greengrass-nucleus-component.html#greengrass-nucleus-component-configuration-fss,
%% which defaults to 24 hours
%%
%% For IoT Greengrass Core v2.7.0, the core device sends status updates upon
%% local deployment and
%% cloud deployment
-spec get_core_device(aws_client:aws_client(), binary() | list()) ->
    {ok, get_core_device_response(), tuple()} |
    {error, any()} |
    {error, get_core_device_errors(), tuple()}.
get_core_device(Client, CoreDeviceThingName)
  when is_map(Client) ->
    get_core_device(Client, CoreDeviceThingName, #{}, #{}).

-spec get_core_device(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_core_device_response(), tuple()} |
    {error, any()} |
    {error, get_core_device_errors(), tuple()}.
get_core_device(Client, CoreDeviceThingName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_core_device(Client, CoreDeviceThingName, QueryMap, HeadersMap, []).

-spec get_core_device(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_core_device_response(), tuple()} |
    {error, any()} |
    {error, get_core_device_errors(), tuple()}.
get_core_device(Client, CoreDeviceThingName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/greengrass/v2/coreDevices/", aws_util:encode_uri(CoreDeviceThingName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a deployment.
%%
%% Deployments define the components that run on Greengrass core devices.
-spec get_deployment(aws_client:aws_client(), binary() | list()) ->
    {ok, get_deployment_response(), tuple()} |
    {error, any()} |
    {error, get_deployment_errors(), tuple()}.
get_deployment(Client, DeploymentId)
  when is_map(Client) ->
    get_deployment(Client, DeploymentId, #{}, #{}).

-spec get_deployment(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_deployment_response(), tuple()} |
    {error, any()} |
    {error, get_deployment_errors(), tuple()}.
get_deployment(Client, DeploymentId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_deployment(Client, DeploymentId, QueryMap, HeadersMap, []).

-spec get_deployment(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_deployment_response(), tuple()} |
    {error, any()} |
    {error, get_deployment_errors(), tuple()}.
get_deployment(Client, DeploymentId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/greengrass/v2/deployments/", aws_util:encode_uri(DeploymentId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the service role associated with IoT Greengrass for your Amazon
%% Web Services account in this Amazon Web Services Region.
%%
%% IoT Greengrass uses this role to verify the identity of client devices and
%% manage core device
%% connectivity information. For more information, see Greengrass service
%% role:
%% https://docs.aws.amazon.com/greengrass/v2/developerguide/greengrass-service-role.html
%% in
%% the IoT Greengrass Version 2 Developer Guide.
-spec get_service_role_for_account(aws_client:aws_client()) ->
    {ok, get_service_role_for_account_response(), tuple()} |
    {error, any()} |
    {error, get_service_role_for_account_errors(), tuple()}.
get_service_role_for_account(Client)
  when is_map(Client) ->
    get_service_role_for_account(Client, #{}, #{}).

-spec get_service_role_for_account(aws_client:aws_client(), map(), map()) ->
    {ok, get_service_role_for_account_response(), tuple()} |
    {error, any()} |
    {error, get_service_role_for_account_errors(), tuple()}.
get_service_role_for_account(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_service_role_for_account(Client, QueryMap, HeadersMap, []).

-spec get_service_role_for_account(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, get_service_role_for_account_response(), tuple()} |
    {error, any()} |
    {error, get_service_role_for_account_errors(), tuple()}.
get_service_role_for_account(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/greengrass/servicerole"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a paginated list of client devices that are associated with
%% a core
%% device.
-spec list_client_devices_associated_with_core_device(aws_client:aws_client(), binary() | list()) ->
    {ok, list_client_devices_associated_with_core_device_response(), tuple()} |
    {error, any()} |
    {error, list_client_devices_associated_with_core_device_errors(), tuple()}.
list_client_devices_associated_with_core_device(Client, CoreDeviceThingName)
  when is_map(Client) ->
    list_client_devices_associated_with_core_device(Client, CoreDeviceThingName, #{}, #{}).

-spec list_client_devices_associated_with_core_device(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_client_devices_associated_with_core_device_response(), tuple()} |
    {error, any()} |
    {error, list_client_devices_associated_with_core_device_errors(), tuple()}.
list_client_devices_associated_with_core_device(Client, CoreDeviceThingName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_client_devices_associated_with_core_device(Client, CoreDeviceThingName, QueryMap, HeadersMap, []).

-spec list_client_devices_associated_with_core_device(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_client_devices_associated_with_core_device_response(), tuple()} |
    {error, any()} |
    {error, list_client_devices_associated_with_core_device_errors(), tuple()}.
list_client_devices_associated_with_core_device(Client, CoreDeviceThingName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/greengrass/v2/coreDevices/", aws_util:encode_uri(CoreDeviceThingName), "/associatedClientDevices"],
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

%% @doc Retrieves a paginated list of all versions for a component.
%%
%% Greater versions are listed
%% first.
-spec list_component_versions(aws_client:aws_client(), binary() | list()) ->
    {ok, list_component_versions_response(), tuple()} |
    {error, any()} |
    {error, list_component_versions_errors(), tuple()}.
list_component_versions(Client, Arn)
  when is_map(Client) ->
    list_component_versions(Client, Arn, #{}, #{}).

-spec list_component_versions(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_component_versions_response(), tuple()} |
    {error, any()} |
    {error, list_component_versions_errors(), tuple()}.
list_component_versions(Client, Arn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_component_versions(Client, Arn, QueryMap, HeadersMap, []).

-spec list_component_versions(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_component_versions_response(), tuple()} |
    {error, any()} |
    {error, list_component_versions_errors(), tuple()}.
list_component_versions(Client, Arn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/greengrass/v2/components/", aws_util:encode_uri(Arn), "/versions"],
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

%% @doc Retrieves a paginated list of component summaries.
%%
%% This list includes components that you
%% have permission to view.
-spec list_components(aws_client:aws_client()) ->
    {ok, list_components_response(), tuple()} |
    {error, any()} |
    {error, list_components_errors(), tuple()}.
list_components(Client)
  when is_map(Client) ->
    list_components(Client, #{}, #{}).

-spec list_components(aws_client:aws_client(), map(), map()) ->
    {ok, list_components_response(), tuple()} |
    {error, any()} |
    {error, list_components_errors(), tuple()}.
list_components(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_components(Client, QueryMap, HeadersMap, []).

-spec list_components(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_components_response(), tuple()} |
    {error, any()} |
    {error, list_components_errors(), tuple()}.
list_components(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/greengrass/v2/components"],
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
        {<<"scope">>, maps:get(<<"scope">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a paginated list of Greengrass core devices.
%%
%% IoT Greengrass relies on individual devices to send status updates to the
%% Amazon Web Services Cloud. If the
%% IoT Greengrass Core software isn't running on the device, or if device
%% isn't connected to the Amazon Web Services Cloud,
%% then the reported status of that device might not reflect its current
%% status. The status
%% timestamp indicates when the device status was last updated.
%%
%% Core devices send status updates at the following times:
%%
%% When the IoT Greengrass Core software starts
%%
%% When the core device receives a deployment from the Amazon Web Services
%% Cloud
%%
%% For Greengrass nucleus 2.12.2 and earlier, the core device sends status
%% updates when the
%% status of any component on the core device becomes `ERRORED' or
%% `BROKEN'.
%%
%% For Greengrass nucleus 2.12.3 and later, the core device sends status
%% updates when the
%% status of any component on the core device becomes `ERRORED',
%% `BROKEN', `RUNNING', or `FINISHED'.
%%
%% At a regular interval that you can configure:
%% https://docs.aws.amazon.com/greengrass/v2/developerguide/greengrass-nucleus-component.html#greengrass-nucleus-component-configuration-fss,
%% which defaults to 24 hours
%%
%% For IoT Greengrass Core v2.7.0, the core device sends status updates upon
%% local deployment and
%% cloud deployment
-spec list_core_devices(aws_client:aws_client()) ->
    {ok, list_core_devices_response(), tuple()} |
    {error, any()} |
    {error, list_core_devices_errors(), tuple()}.
list_core_devices(Client)
  when is_map(Client) ->
    list_core_devices(Client, #{}, #{}).

-spec list_core_devices(aws_client:aws_client(), map(), map()) ->
    {ok, list_core_devices_response(), tuple()} |
    {error, any()} |
    {error, list_core_devices_errors(), tuple()}.
list_core_devices(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_core_devices(Client, QueryMap, HeadersMap, []).

-spec list_core_devices(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_core_devices_response(), tuple()} |
    {error, any()} |
    {error, list_core_devices_errors(), tuple()}.
list_core_devices(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/greengrass/v2/coreDevices"],
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
        {<<"runtime">>, maps:get(<<"runtime">>, QueryMap, undefined)},
        {<<"status">>, maps:get(<<"status">>, QueryMap, undefined)},
        {<<"thingGroupArn">>, maps:get(<<"thingGroupArn">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a paginated list of deployments.
-spec list_deployments(aws_client:aws_client()) ->
    {ok, list_deployments_response(), tuple()} |
    {error, any()} |
    {error, list_deployments_errors(), tuple()}.
list_deployments(Client)
  when is_map(Client) ->
    list_deployments(Client, #{}, #{}).

-spec list_deployments(aws_client:aws_client(), map(), map()) ->
    {ok, list_deployments_response(), tuple()} |
    {error, any()} |
    {error, list_deployments_errors(), tuple()}.
list_deployments(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_deployments(Client, QueryMap, HeadersMap, []).

-spec list_deployments(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_deployments_response(), tuple()} |
    {error, any()} |
    {error, list_deployments_errors(), tuple()}.
list_deployments(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/greengrass/v2/deployments"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"historyFilter">>, maps:get(<<"historyFilter">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"parentTargetArn">>, maps:get(<<"parentTargetArn">>, QueryMap, undefined)},
        {<<"targetArn">>, maps:get(<<"targetArn">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a paginated list of deployment jobs that IoT Greengrass
%% sends to Greengrass core devices.
-spec list_effective_deployments(aws_client:aws_client(), binary() | list()) ->
    {ok, list_effective_deployments_response(), tuple()} |
    {error, any()} |
    {error, list_effective_deployments_errors(), tuple()}.
list_effective_deployments(Client, CoreDeviceThingName)
  when is_map(Client) ->
    list_effective_deployments(Client, CoreDeviceThingName, #{}, #{}).

-spec list_effective_deployments(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_effective_deployments_response(), tuple()} |
    {error, any()} |
    {error, list_effective_deployments_errors(), tuple()}.
list_effective_deployments(Client, CoreDeviceThingName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_effective_deployments(Client, CoreDeviceThingName, QueryMap, HeadersMap, []).

-spec list_effective_deployments(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_effective_deployments_response(), tuple()} |
    {error, any()} |
    {error, list_effective_deployments_errors(), tuple()}.
list_effective_deployments(Client, CoreDeviceThingName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/greengrass/v2/coreDevices/", aws_util:encode_uri(CoreDeviceThingName), "/effectiveDeployments"],
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

%% @doc Retrieves a paginated list of the components that a Greengrass core
%% device runs.
%%
%% By default,
%% this list doesn't include components that are deployed as dependencies
%% of other components. To
%% include dependencies in the response, set the `topologyFilter'
%% parameter to
%% `ALL'.
%%
%% IoT Greengrass relies on individual devices to send status updates to the
%% Amazon Web Services Cloud. If the
%% IoT Greengrass Core software isn't running on the device, or if device
%% isn't connected to the Amazon Web Services Cloud,
%% then the reported status of that device might not reflect its current
%% status. The status
%% timestamp indicates when the device status was last updated.
%%
%% Core devices send status updates at the following times:
%%
%% When the IoT Greengrass Core software starts
%%
%% When the core device receives a deployment from the Amazon Web Services
%% Cloud
%%
%% When the status of any component on the core device becomes
%% `BROKEN'
%%
%% At a regular interval that you can configure:
%% https://docs.aws.amazon.com/greengrass/v2/developerguide/greengrass-nucleus-component.html#greengrass-nucleus-component-configuration-fss,
%% which defaults to 24 hours
%%
%% For IoT Greengrass Core v2.7.0, the core device sends status updates upon
%% local deployment and
%% cloud deployment
-spec list_installed_components(aws_client:aws_client(), binary() | list()) ->
    {ok, list_installed_components_response(), tuple()} |
    {error, any()} |
    {error, list_installed_components_errors(), tuple()}.
list_installed_components(Client, CoreDeviceThingName)
  when is_map(Client) ->
    list_installed_components(Client, CoreDeviceThingName, #{}, #{}).

-spec list_installed_components(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_installed_components_response(), tuple()} |
    {error, any()} |
    {error, list_installed_components_errors(), tuple()}.
list_installed_components(Client, CoreDeviceThingName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_installed_components(Client, CoreDeviceThingName, QueryMap, HeadersMap, []).

-spec list_installed_components(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_installed_components_response(), tuple()} |
    {error, any()} |
    {error, list_installed_components_errors(), tuple()}.
list_installed_components(Client, CoreDeviceThingName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/greengrass/v2/coreDevices/", aws_util:encode_uri(CoreDeviceThingName), "/installedComponents"],
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
        {<<"topologyFilter">>, maps:get(<<"topologyFilter">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the list of tags for an IoT Greengrass resource.
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

%% @doc Retrieves a list of components that meet the component, version, and
%% platform requirements
%% of a deployment.
%%
%% Greengrass core devices call this operation when they receive a deployment
%% to
%% identify the components to install.
%%
%% This operation identifies components that meet all dependency requirements
%% for a
%% deployment. If the requirements conflict, then this operation returns an
%% error and the
%% deployment fails. For example, this occurs if component `A' requires
%% version
%% `&gt;2.0.0' and component `B' requires version `&lt;2.0.0'
%% of a component dependency.
%%
%% When you specify the component candidates to resolve, IoT Greengrass
%% compares each component's
%% digest from the core device with the component's digest in the Amazon
%% Web Services Cloud. If the digests
%% don't match, then IoT Greengrass specifies to use the version from the
%% Amazon Web Services Cloud.
%%
%% To use this operation, you must use the data plane API endpoint and
%% authenticate with an
%% IoT device certificate. For more information, see IoT Greengrass endpoints
%% and quotas: https://docs.aws.amazon.com/general/latest/gr/greengrass.html.
-spec resolve_component_candidates(aws_client:aws_client(), resolve_component_candidates_request()) ->
    {ok, resolve_component_candidates_response(), tuple()} |
    {error, any()} |
    {error, resolve_component_candidates_errors(), tuple()}.
resolve_component_candidates(Client, Input) ->
    resolve_component_candidates(Client, Input, []).

-spec resolve_component_candidates(aws_client:aws_client(), resolve_component_candidates_request(), proplists:proplist()) ->
    {ok, resolve_component_candidates_response(), tuple()} |
    {error, any()} |
    {error, resolve_component_candidates_errors(), tuple()}.
resolve_component_candidates(Client, Input0, Options0) ->
    Method = post,
    Path = ["/greengrass/v2/resolveComponentCandidates"],
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

%% @doc Adds tags to an IoT Greengrass resource.
%%
%% If a tag already exists for the resource, this operation
%% updates the tag's value.
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

%% @doc Removes a tag from an IoT Greengrass resource.
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

%% @doc Updates connectivity information for a Greengrass core device.
%%
%% Connectivity information includes endpoints and ports where client devices
%% can connect to an MQTT broker on the core device. When a client device
%% calls the IoT Greengrass discovery API:
%% https://docs.aws.amazon.com/greengrass/v2/developerguide/greengrass-discover-api.html,
%% IoT Greengrass returns connectivity information for all of the core
%% devices where the client device can
%% connect. For more information, see Connect client devices to
%% core devices:
%% https://docs.aws.amazon.com/greengrass/v2/developerguide/connect-client-devices.html
%% in the IoT Greengrass Version 2 Developer Guide.
-spec update_connectivity_info(aws_client:aws_client(), binary() | list(), update_connectivity_info_request()) ->
    {ok, update_connectivity_info_response(), tuple()} |
    {error, any()} |
    {error, update_connectivity_info_errors(), tuple()}.
update_connectivity_info(Client, ThingName, Input) ->
    update_connectivity_info(Client, ThingName, Input, []).

-spec update_connectivity_info(aws_client:aws_client(), binary() | list(), update_connectivity_info_request(), proplists:proplist()) ->
    {ok, update_connectivity_info_response(), tuple()} |
    {error, any()} |
    {error, update_connectivity_info_errors(), tuple()}.
update_connectivity_info(Client, ThingName, Input0, Options0) ->
    Method = put,
    Path = ["/greengrass/things/", aws_util:encode_uri(ThingName), "/connectivityInfo"],
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
    Client1 = Client#{service => <<"greengrass">>},
    Host = build_host(<<"greengrass">>, Client1),
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
