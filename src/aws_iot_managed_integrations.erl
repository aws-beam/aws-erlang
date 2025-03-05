%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Managed integrations is a feature of AWS IoT Device Management that
%% enables developers to quickly build innovative IoT solutions.
%%
%% Customers can use managed integrations to automate device setup workflows
%% and support interoperability across many devices, regardless of device
%% vendor or connectivity protocol. This allows developers to use a single
%% user-interface to control, manage, and operate a range of devices.
-module(aws_iot_managed_integrations).

-export([create_credential_locker/2,
         create_credential_locker/3,
         create_destination/2,
         create_destination/3,
         create_event_log_configuration/2,
         create_event_log_configuration/3,
         create_managed_thing/2,
         create_managed_thing/3,
         create_notification_configuration/2,
         create_notification_configuration/3,
         create_ota_task/2,
         create_ota_task/3,
         create_ota_task_configuration/2,
         create_ota_task_configuration/3,
         create_provisioning_profile/2,
         create_provisioning_profile/3,
         delete_credential_locker/3,
         delete_credential_locker/4,
         delete_destination/3,
         delete_destination/4,
         delete_event_log_configuration/3,
         delete_event_log_configuration/4,
         delete_managed_thing/3,
         delete_managed_thing/4,
         delete_notification_configuration/3,
         delete_notification_configuration/4,
         delete_ota_task/3,
         delete_ota_task/4,
         delete_ota_task_configuration/3,
         delete_ota_task_configuration/4,
         delete_provisioning_profile/3,
         delete_provisioning_profile/4,
         get_credential_locker/2,
         get_credential_locker/4,
         get_credential_locker/5,
         get_custom_endpoint/1,
         get_custom_endpoint/3,
         get_custom_endpoint/4,
         get_default_encryption_configuration/1,
         get_default_encryption_configuration/3,
         get_default_encryption_configuration/4,
         get_destination/2,
         get_destination/4,
         get_destination/5,
         get_device_discovery/2,
         get_device_discovery/4,
         get_device_discovery/5,
         get_event_log_configuration/2,
         get_event_log_configuration/4,
         get_event_log_configuration/5,
         get_hub_configuration/1,
         get_hub_configuration/3,
         get_hub_configuration/4,
         get_managed_thing/2,
         get_managed_thing/4,
         get_managed_thing/5,
         get_managed_thing_capabilities/2,
         get_managed_thing_capabilities/4,
         get_managed_thing_capabilities/5,
         get_managed_thing_connectivity_data/3,
         get_managed_thing_connectivity_data/4,
         get_managed_thing_meta_data/2,
         get_managed_thing_meta_data/4,
         get_managed_thing_meta_data/5,
         get_managed_thing_state/2,
         get_managed_thing_state/4,
         get_managed_thing_state/5,
         get_notification_configuration/2,
         get_notification_configuration/4,
         get_notification_configuration/5,
         get_ota_task/2,
         get_ota_task/4,
         get_ota_task/5,
         get_ota_task_configuration/2,
         get_ota_task_configuration/4,
         get_ota_task_configuration/5,
         get_provisioning_profile/2,
         get_provisioning_profile/4,
         get_provisioning_profile/5,
         get_runtime_log_configuration/2,
         get_runtime_log_configuration/4,
         get_runtime_log_configuration/5,
         get_schema_version/3,
         get_schema_version/5,
         get_schema_version/6,
         list_credential_lockers/1,
         list_credential_lockers/3,
         list_credential_lockers/4,
         list_destinations/1,
         list_destinations/3,
         list_destinations/4,
         list_event_log_configurations/1,
         list_event_log_configurations/3,
         list_event_log_configurations/4,
         list_managed_thing_schemas/2,
         list_managed_thing_schemas/4,
         list_managed_thing_schemas/5,
         list_managed_things/1,
         list_managed_things/3,
         list_managed_things/4,
         list_notification_configurations/1,
         list_notification_configurations/3,
         list_notification_configurations/4,
         list_ota_task_configurations/1,
         list_ota_task_configurations/3,
         list_ota_task_configurations/4,
         list_ota_task_executions/2,
         list_ota_task_executions/4,
         list_ota_task_executions/5,
         list_ota_tasks/1,
         list_ota_tasks/3,
         list_ota_tasks/4,
         list_provisioning_profiles/1,
         list_provisioning_profiles/3,
         list_provisioning_profiles/4,
         list_schema_versions/2,
         list_schema_versions/4,
         list_schema_versions/5,
         put_default_encryption_configuration/2,
         put_default_encryption_configuration/3,
         put_hub_configuration/2,
         put_hub_configuration/3,
         put_runtime_log_configuration/3,
         put_runtime_log_configuration/4,
         register_custom_endpoint/2,
         register_custom_endpoint/3,
         reset_runtime_log_configuration/3,
         reset_runtime_log_configuration/4,
         send_managed_thing_command/3,
         send_managed_thing_command/4,
         start_device_discovery/2,
         start_device_discovery/3,
         update_destination/3,
         update_destination/4,
         update_event_log_configuration/3,
         update_event_log_configuration/4,
         update_managed_thing/3,
         update_managed_thing/4,
         update_notification_configuration/3,
         update_notification_configuration/4,
         update_ota_task/3,
         update_ota_task/4]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% capability_action() :: #{
%%   <<"actionTraceId">> => string(),
%%   <<"name">> => string(),
%%   <<"parameters">> => any(),
%%   <<"ref">> => string()
%% }
-type capability_action() :: #{binary() => any()}.


%% Example:
%% list_destinations_response() :: #{
%%   <<"DestinationList">> => list(destination_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_destinations_response() :: #{binary() => any()}.


%% Example:
%% put_default_encryption_configuration_response() :: #{
%%   <<"configurationStatus">> => configuration_status(),
%%   <<"encryptionType">> => list(any()),
%%   <<"kmsKeyArn">> => string()
%% }
-type put_default_encryption_configuration_response() :: #{binary() => any()}.


%% Example:
%% get_hub_configuration_response() :: #{
%%   <<"HubTokenTimerExpirySettingInSeconds">> => float(),
%%   <<"UpdatedAt">> => non_neg_integer()
%% }
-type get_hub_configuration_response() :: #{binary() => any()}.


%% Example:
%% create_provisioning_profile_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"ClaimCertificate">> => string(),
%%   <<"ClaimCertificatePrivateKey">> => string(),
%%   <<"Id">> => string(),
%%   <<"Name">> => string(),
%%   <<"ProvisioningType">> => list(any())
%% }
-type create_provisioning_profile_response() :: #{binary() => any()}.


%% Example:
%% list_ota_task_executions_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_ota_task_executions_request() :: #{binary() => any()}.


%% Example:
%% send_managed_thing_command_request() :: #{
%%   <<"ConnectorAssociationId">> => string(),
%%   <<"Endpoints">> := list(command_endpoint()())
%% }
-type send_managed_thing_command_request() :: #{binary() => any()}.


%% Example:
%% put_runtime_log_configuration_request() :: #{
%%   <<"RuntimeLogConfigurations">> := runtime_log_configurations()
%% }
-type put_runtime_log_configuration_request() :: #{binary() => any()}.


%% Example:
%% schema_version_list_item() :: #{
%%   <<"Description">> => string(),
%%   <<"Namespace">> => string(),
%%   <<"SchemaId">> => string(),
%%   <<"SemanticVersion">> => string(),
%%   <<"Type">> => list(any()),
%%   <<"Visibility">> => list(any())
%% }
-type schema_version_list_item() :: #{binary() => any()}.


%% Example:
%% create_destination_response() :: #{
%%   <<"Name">> => string()
%% }
-type create_destination_response() :: #{binary() => any()}.


%% Example:
%% internal_failure_exception() :: #{
%%   <<"Message">> => string()
%% }
-type internal_failure_exception() :: #{binary() => any()}.

%% Example:
%% get_managed_thing_capabilities_request() :: #{}
-type get_managed_thing_capabilities_request() :: #{}.


%% Example:
%% create_destination_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"DeliveryDestinationArn">> := string(),
%%   <<"DeliveryDestinationType">> := list(any()),
%%   <<"Description">> => string(),
%%   <<"Name">> := string(),
%%   <<"RoleArn">> := string(),
%%   <<"Tags">> => map()
%% }
-type create_destination_request() :: #{binary() => any()}.

%% Example:
%% get_ota_task_request() :: #{}
-type get_ota_task_request() :: #{}.


%% Example:
%% unauthorized_exception() :: #{
%%   <<"Message">> => string()
%% }
-type unauthorized_exception() :: #{binary() => any()}.


%% Example:
%% create_ota_task_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"Description">> => string(),
%%   <<"OtaMechanism">> => list(any()),
%%   <<"OtaSchedulingConfig">> => ota_task_scheduling_config(),
%%   <<"OtaTargetQueryString">> => string(),
%%   <<"OtaTaskExecutionRetryConfig">> => ota_task_execution_retry_config(),
%%   <<"OtaType">> := list(any()),
%%   <<"Protocol">> => list(any()),
%%   <<"S3Url">> := string(),
%%   <<"Tags">> => map(),
%%   <<"Target">> => list([string()]()),
%%   <<"TaskConfigurationId">> => string()
%% }
-type create_ota_task_request() :: #{binary() => any()}.


%% Example:
%% retry_config_criteria() :: #{
%%   <<"FailureType">> => list(any()),
%%   <<"MinNumberOfRetries">> => integer()
%% }
-type retry_config_criteria() :: #{binary() => any()}.


%% Example:
%% get_ota_task_configuration_response() :: #{
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"Name">> => string(),
%%   <<"PushConfig">> => push_config(),
%%   <<"TaskConfigurationId">> => string()
%% }
-type get_ota_task_configuration_response() :: #{binary() => any()}.


%% Example:
%% update_ota_task_request() :: #{
%%   <<"Description">> => string(),
%%   <<"TaskConfigurationId">> => string()
%% }
-type update_ota_task_request() :: #{binary() => any()}.


%% Example:
%% ota_task_execution_retry_config() :: #{
%%   <<"RetryConfigCriteria">> => list(retry_config_criteria()())
%% }
-type ota_task_execution_retry_config() :: #{binary() => any()}.


%% Example:
%% event_log_configuration_summary() :: #{
%%   <<"EventLogLevel">> => list(any()),
%%   <<"Id">> => string(),
%%   <<"ResourceId">> => string(),
%%   <<"ResourceType">> => string()
%% }
-type event_log_configuration_summary() :: #{binary() => any()}.


%% Example:
%% get_destination_response() :: #{
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"DeliveryDestinationArn">> => string(),
%%   <<"DeliveryDestinationType">> => list(any()),
%%   <<"Description">> => string(),
%%   <<"Name">> => string(),
%%   <<"RoleArn">> => string(),
%%   <<"Tags">> => map(),
%%   <<"UpdatedAt">> => non_neg_integer()
%% }
-type get_destination_response() :: #{binary() => any()}.


%% Example:
%% rollout_rate_increase_criteria() :: #{
%%   <<"numberOfNotifiedThings">> => integer(),
%%   <<"numberOfSucceededThings">> => integer()
%% }
-type rollout_rate_increase_criteria() :: #{binary() => any()}.

%% Example:
%% get_notification_configuration_request() :: #{}
-type get_notification_configuration_request() :: #{}.

%% Example:
%% register_custom_endpoint_request() :: #{}
-type register_custom_endpoint_request() :: #{}.


%% Example:
%% list_schema_versions_response() :: #{
%%   <<"Items">> => list(schema_version_list_item()()),
%%   <<"NextToken">> => string()
%% }
-type list_schema_versions_response() :: #{binary() => any()}.


%% Example:
%% ota_task_execution_summary() :: #{
%%   <<"ExecutionNumber">> => float(),
%%   <<"LastUpdatedAt">> => non_neg_integer(),
%%   <<"QueuedAt">> => non_neg_integer(),
%%   <<"RetryAttempt">> => integer(),
%%   <<"StartedAt">> => non_neg_integer(),
%%   <<"Status">> => list(any())
%% }
-type ota_task_execution_summary() :: #{binary() => any()}.

%% Example:
%% get_ota_task_configuration_request() :: #{}
-type get_ota_task_configuration_request() :: #{}.

%% Example:
%% delete_ota_task_request() :: #{}
-type delete_ota_task_request() :: #{}.


%% Example:
%% start_device_discovery_response() :: #{
%%   <<"Id">> => string(),
%%   <<"StartedAt">> => non_neg_integer()
%% }
-type start_device_discovery_response() :: #{binary() => any()}.


%% Example:
%% put_hub_configuration_request() :: #{
%%   <<"HubTokenTimerExpirySettingInSeconds">> := float()
%% }
-type put_hub_configuration_request() :: #{binary() => any()}.


%% Example:
%% create_provisioning_profile_request() :: #{
%%   <<"CaCertificate">> => string(),
%%   <<"ClientToken">> => string(),
%%   <<"Name">> => string(),
%%   <<"ProvisioningType">> := list(any()),
%%   <<"Tags">> => map()
%% }
-type create_provisioning_profile_request() :: #{binary() => any()}.


%% Example:
%% get_managed_thing_connectivity_data_response() :: #{
%%   <<"Connected">> => boolean(),
%%   <<"DisconnectReason">> => list(any()),
%%   <<"ManagedThingId">> => string(),
%%   <<"Timestamp">> => non_neg_integer()
%% }
-type get_managed_thing_connectivity_data_response() :: #{binary() => any()}.


%% Example:
%% state_endpoint() :: #{
%%   <<"capabilities">> => list(state_capability()()),
%%   <<"endpointId">> => string()
%% }
-type state_endpoint() :: #{binary() => any()}.


%% Example:
%% exponential_rollout_rate() :: #{
%%   <<"BaseRatePerMinute">> => integer(),
%%   <<"IncrementFactor">> => float(),
%%   <<"RateIncreaseCriteria">> => rollout_rate_increase_criteria()
%% }
-type exponential_rollout_rate() :: #{binary() => any()}.


%% Example:
%% list_credential_lockers_response() :: #{
%%   <<"Items">> => list(credential_locker_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_credential_lockers_response() :: #{binary() => any()}.

%% Example:
%% reset_runtime_log_configuration_request() :: #{}
-type reset_runtime_log_configuration_request() :: #{}.

%% Example:
%% get_credential_locker_request() :: #{}
-type get_credential_locker_request() :: #{}.


%% Example:
%% push_config() :: #{
%%   <<"AbortConfig">> => ota_task_abort_config(),
%%   <<"RolloutConfig">> => ota_task_execution_rollout_config(),
%%   <<"TimeoutConfig">> => ota_task_timeout_config()
%% }
-type push_config() :: #{binary() => any()}.

%% Example:
%% delete_ota_task_configuration_request() :: #{}
-type delete_ota_task_configuration_request() :: #{}.


%% Example:
%% list_notification_configurations_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_notification_configurations_request() :: #{binary() => any()}.

%% Example:
%% get_device_discovery_request() :: #{}
-type get_device_discovery_request() :: #{}.


%% Example:
%% ota_task_configuration_summary() :: #{
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"TaskConfigurationId">> => string()
%% }
-type ota_task_configuration_summary() :: #{binary() => any()}.


%% Example:
%% configuration_status() :: #{
%%   <<"error">> => configuration_error(),
%%   <<"state">> => list(any())
%% }
-type configuration_status() :: #{binary() => any()}.


%% Example:
%% get_notification_configuration_response() :: #{
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"DestinationName">> => string(),
%%   <<"EventType">> => list(any()),
%%   <<"Tags">> => map(),
%%   <<"UpdatedAt">> => non_neg_integer()
%% }
-type get_notification_configuration_response() :: #{binary() => any()}.


%% Example:
%% create_credential_locker_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"Name">> => string(),
%%   <<"Tags">> => map()
%% }
-type create_credential_locker_request() :: #{binary() => any()}.

%% Example:
%% get_hub_configuration_request() :: #{}
-type get_hub_configuration_request() :: #{}.


%% Example:
%% ota_task_summary() :: #{
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"LastUpdatedAt">> => non_neg_integer(),
%%   <<"Status">> => list(any()),
%%   <<"TaskArn">> => string(),
%%   <<"TaskConfigurationId">> => string(),
%%   <<"TaskId">> => string()
%% }
-type ota_task_summary() :: #{binary() => any()}.


%% Example:
%% list_ota_task_configurations_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_ota_task_configurations_request() :: #{binary() => any()}.

%% Example:
%% get_custom_endpoint_request() :: #{}
-type get_custom_endpoint_request() :: #{}.


%% Example:
%% capability_report_endpoint() :: #{
%%   <<"capabilities">> => list(capability_report_capability()()),
%%   <<"deviceTypes">> => list(string()()),
%%   <<"id">> => string()
%% }
-type capability_report_endpoint() :: #{binary() => any()}.


%% Example:
%% schedule_maintenance_window() :: #{
%%   <<"DurationInMinutes">> => integer(),
%%   <<"StartTime">> => string()
%% }
-type schedule_maintenance_window() :: #{binary() => any()}.


%% Example:
%% command_capability() :: #{
%%   <<"actions">> => list(capability_action()()),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"version">> => string()
%% }
-type command_capability() :: #{binary() => any()}.


%% Example:
%% list_ota_tasks_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Tasks">> => list(ota_task_summary()())
%% }
-type list_ota_tasks_response() :: #{binary() => any()}.


%% Example:
%% create_managed_thing_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"Id">> => string()
%% }
-type create_managed_thing_response() :: #{binary() => any()}.


%% Example:
%% ota_task_scheduling_config() :: #{
%%   <<"EndBehavior">> => list(any()),
%%   <<"EndTime">> => string(),
%%   <<"MaintenanceWindows">> => list(schedule_maintenance_window()()),
%%   <<"StartTime">> => string()
%% }
-type ota_task_scheduling_config() :: #{binary() => any()}.

%% Example:
%% get_managed_thing_request() :: #{}
-type get_managed_thing_request() :: #{}.


%% Example:
%% credential_locker_summary() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"Id">> => string(),
%%   <<"Name">> => string()
%% }
-type credential_locker_summary() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"Message">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% put_hub_configuration_response() :: #{
%%   <<"HubTokenTimerExpirySettingInSeconds">> => float()
%% }
-type put_hub_configuration_response() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% delete_notification_configuration_request() :: #{}
-type delete_notification_configuration_request() :: #{}.


%% Example:
%% list_notification_configurations_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"NotificationConfigurationList">> => list(notification_configuration_summary()())
%% }
-type list_notification_configurations_response() :: #{binary() => any()}.


%% Example:
%% list_event_log_configurations_response() :: #{
%%   <<"EventLogConfigurationList">> => list(event_log_configuration_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_event_log_configurations_response() :: #{binary() => any()}.


%% Example:
%% get_custom_endpoint_response() :: #{
%%   <<"EndpointAddress">> => string()
%% }
-type get_custom_endpoint_response() :: #{binary() => any()}.


%% Example:
%% create_event_log_configuration_response() :: #{
%%   <<"Id">> => string()
%% }
-type create_event_log_configuration_response() :: #{binary() => any()}.


%% Example:
%% get_default_encryption_configuration_response() :: #{
%%   <<"configurationStatus">> => configuration_status(),
%%   <<"encryptionType">> => list(any()),
%%   <<"kmsKeyArn">> => string()
%% }
-type get_default_encryption_configuration_response() :: #{binary() => any()}.

%% Example:
%% get_event_log_configuration_request() :: #{}
-type get_event_log_configuration_request() :: #{}.

%% Example:
%% delete_provisioning_profile_request() :: #{}
-type delete_provisioning_profile_request() :: #{}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"Message">> => string()
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% get_managed_thing_state_request() :: #{}
-type get_managed_thing_state_request() :: #{}.


%% Example:
%% ota_task_abort_config() :: #{
%%   <<"AbortConfigCriteriaList">> => list(abort_config_criteria()())
%% }
-type ota_task_abort_config() :: #{binary() => any()}.


%% Example:
%% ota_task_execution_summaries() :: #{
%%   <<"ManagedThingId">> => string(),
%%   <<"TaskExecutionSummary">> => ota_task_execution_summary()
%% }
-type ota_task_execution_summaries() :: #{binary() => any()}.


%% Example:
%% destination_summary() :: #{
%%   <<"DeliveryDestinationArn">> => string(),
%%   <<"DeliveryDestinationType">> => list(any()),
%%   <<"Description">> => string(),
%%   <<"Name">> => string(),
%%   <<"RoleArn">> => string()
%% }
-type destination_summary() :: #{binary() => any()}.


%% Example:
%% create_notification_configuration_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"DestinationName">> := string(),
%%   <<"EventType">> := list(any()),
%%   <<"Tags">> => map()
%% }
-type create_notification_configuration_request() :: #{binary() => any()}.

%% Example:
%% get_runtime_log_configuration_request() :: #{}
-type get_runtime_log_configuration_request() :: #{}.

%% Example:
%% get_default_encryption_configuration_request() :: #{}
-type get_default_encryption_configuration_request() :: #{}.

%% Example:
%% get_managed_thing_meta_data_request() :: #{}
-type get_managed_thing_meta_data_request() :: #{}.


%% Example:
%% list_destinations_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_destinations_request() :: #{binary() => any()}.


%% Example:
%% send_managed_thing_command_response() :: #{
%%   <<"TraceId">> => string()
%% }
-type send_managed_thing_command_response() :: #{binary() => any()}.


%% Example:
%% update_notification_configuration_request() :: #{
%%   <<"DestinationName">> := string()
%% }
-type update_notification_configuration_request() :: #{binary() => any()}.


%% Example:
%% get_managed_thing_state_response() :: #{
%%   <<"Endpoints">> => list(state_endpoint()())
%% }
-type get_managed_thing_state_response() :: #{binary() => any()}.


%% Example:
%% create_notification_configuration_response() :: #{
%%   <<"EventType">> => list(any())
%% }
-type create_notification_configuration_response() :: #{binary() => any()}.


%% Example:
%% service_unavailable_exception() :: #{
%%   <<"Message">> => string()
%% }
-type service_unavailable_exception() :: #{binary() => any()}.

%% Example:
%% delete_destination_request() :: #{}
-type delete_destination_request() :: #{}.


%% Example:
%% create_event_log_configuration_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"EventLogLevel">> := list(any()),
%%   <<"ResourceId">> => string(),
%%   <<"ResourceType">> := string()
%% }
-type create_event_log_configuration_request() :: #{binary() => any()}.


%% Example:
%% update_managed_thing_request() :: #{
%%   <<"Brand">> => string(),
%%   <<"Capabilities">> => string(),
%%   <<"CapabilityReport">> => capability_report(),
%%   <<"Classification">> => string(),
%%   <<"CredentialLockerId">> => string(),
%%   <<"HubNetworkMode">> => list(any()),
%%   <<"MetaData">> => map(),
%%   <<"Model">> => string(),
%%   <<"Name">> => string(),
%%   <<"Owner">> => string(),
%%   <<"SerialNumber">> => string()
%% }
-type update_managed_thing_request() :: #{binary() => any()}.


%% Example:
%% create_ota_task_configuration_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"Description">> => string(),
%%   <<"Name">> => string(),
%%   <<"PushConfig">> => push_config()
%% }
-type create_ota_task_configuration_request() :: #{binary() => any()}.


%% Example:
%% get_credential_locker_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"Id">> => string(),
%%   <<"Name">> => string(),
%%   <<"Tags">> => map()
%% }
-type get_credential_locker_response() :: #{binary() => any()}.


%% Example:
%% get_runtime_log_configuration_response() :: #{
%%   <<"ManagedThingId">> => string(),
%%   <<"RuntimeLogConfigurations">> => runtime_log_configurations()
%% }
-type get_runtime_log_configuration_response() :: #{binary() => any()}.


%% Example:
%% list_ota_tasks_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_ota_tasks_request() :: #{binary() => any()}.


%% Example:
%% get_managed_thing_meta_data_response() :: #{
%%   <<"ManagedThingId">> => string(),
%%   <<"MetaData">> => map()
%% }
-type get_managed_thing_meta_data_response() :: #{binary() => any()}.


%% Example:
%% list_event_log_configurations_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_event_log_configurations_request() :: #{binary() => any()}.


%% Example:
%% create_ota_task_response() :: #{
%%   <<"Description">> => string(),
%%   <<"TaskArn">> => string(),
%%   <<"TaskId">> => string()
%% }
-type create_ota_task_response() :: #{binary() => any()}.


%% Example:
%% task_processing_details() :: #{
%%   <<"NumberOfCanceledThings">> => [integer()],
%%   <<"NumberOfFailedThings">> => [integer()],
%%   <<"NumberOfInProgressThings">> => [integer()],
%%   <<"numberOfQueuedThings">> => [integer()],
%%   <<"numberOfRejectedThings">> => [integer()],
%%   <<"numberOfRemovedThings">> => [integer()],
%%   <<"numberOfSucceededThings">> => [integer()],
%%   <<"numberOfTimedOutThings">> => [integer()],
%%   <<"processingTargets">> => list([string()]())
%% }
-type task_processing_details() :: #{binary() => any()}.


%% Example:
%% list_provisioning_profiles_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_provisioning_profiles_request() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"Message">> => string()
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% update_destination_request() :: #{
%%   <<"DeliveryDestinationArn">> => string(),
%%   <<"DeliveryDestinationType">> => list(any()),
%%   <<"Description">> => string(),
%%   <<"RoleArn">> => string()
%% }
-type update_destination_request() :: #{binary() => any()}.


%% Example:
%% list_schema_versions_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"Namespace">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"SchemaId">> => string(),
%%   <<"SemanticVersion">> => string(),
%%   <<"Visibility">> => list(any())
%% }
-type list_schema_versions_request() :: #{binary() => any()}.

%% Example:
%% delete_event_log_configuration_request() :: #{}
-type delete_event_log_configuration_request() :: #{}.


%% Example:
%% start_device_discovery_request() :: #{
%%   <<"AuthenticationMaterial">> => string(),
%%   <<"AuthenticationMaterialType">> => list(any()),
%%   <<"ClientToken">> => string(),
%%   <<"ConnectorAssociationIdentifier">> => string(),
%%   <<"ControllerIdentifier">> => string(),
%%   <<"DiscoveryType">> := list(any()),
%%   <<"Tags">> => map()
%% }
-type start_device_discovery_request() :: #{binary() => any()}.


%% Example:
%% list_managed_thing_schemas_response() :: #{
%%   <<"Items">> => list(managed_thing_schema_list_item()()),
%%   <<"NextToken">> => string()
%% }
-type list_managed_thing_schemas_response() :: #{binary() => any()}.


%% Example:
%% provisioning_profile_summary() :: #{
%%   <<"Arn">> => string(),
%%   <<"Id">> => string(),
%%   <<"Name">> => string(),
%%   <<"ProvisioningType">> => list(any())
%% }
-type provisioning_profile_summary() :: #{binary() => any()}.


%% Example:
%% get_device_discovery_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"ConnectorAssociationId">> => string(),
%%   <<"ControllerId">> => string(),
%%   <<"DiscoveryType">> => list(any()),
%%   <<"FinishedAt">> => non_neg_integer(),
%%   <<"Id">> => string(),
%%   <<"StartedAt">> => non_neg_integer(),
%%   <<"Status">> => list(any()),
%%   <<"Tags">> => map()
%% }
-type get_device_discovery_response() :: #{binary() => any()}.


%% Example:
%% managed_thing_summary() :: #{
%%   <<"ActivatedAt">> => non_neg_integer(),
%%   <<"AdvertisedProductId">> => string(),
%%   <<"Arn">> => string(),
%%   <<"Brand">> => string(),
%%   <<"Classification">> => string(),
%%   <<"ConnectorDeviceId">> => string(),
%%   <<"ConnectorPolicyId">> => string(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"CredentialLockerId">> => string(),
%%   <<"Id">> => string(),
%%   <<"Model">> => string(),
%%   <<"Name">> => string(),
%%   <<"Owner">> => string(),
%%   <<"ParentControllerId">> => string(),
%%   <<"ProvisioningStatus">> => list(any()),
%%   <<"Role">> => list(any()),
%%   <<"SerialNumber">> => string(),
%%   <<"UpdatedAt">> => non_neg_integer()
%% }
-type managed_thing_summary() :: #{binary() => any()}.


%% Example:
%% list_provisioning_profiles_response() :: #{
%%   <<"Items">> => list(provisioning_profile_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_provisioning_profiles_response() :: #{binary() => any()}.


%% Example:
%% list_ota_task_executions_response() :: #{
%%   <<"ExecutionSummaries">> => list(ota_task_execution_summaries()()),
%%   <<"NextToken">> => string()
%% }
-type list_ota_task_executions_response() :: #{binary() => any()}.


%% Example:
%% get_schema_version_request() :: #{
%%   <<"Format">> => list(any())
%% }
-type get_schema_version_request() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"Message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% get_managed_thing_capabilities_response() :: #{
%%   <<"Capabilities">> => string(),
%%   <<"CapabilityReport">> => capability_report(),
%%   <<"ManagedThingId">> => string()
%% }
-type get_managed_thing_capabilities_response() :: #{binary() => any()}.


%% Example:
%% runtime_log_configurations() :: #{
%%   <<"DeleteLocalStoreAfterUpload">> => boolean(),
%%   <<"LocalStoreFileRotationMaxBytes">> => integer(),
%%   <<"LocalStoreFileRotationMaxFiles">> => integer(),
%%   <<"LocalStoreLocation">> => string(),
%%   <<"LogFlushLevel">> => list(any()),
%%   <<"LogLevel">> => list(any()),
%%   <<"UploadLog">> => boolean(),
%%   <<"UploadPeriodMinutes">> => integer()
%% }
-type runtime_log_configurations() :: #{binary() => any()}.

%% Example:
%% get_destination_request() :: #{}
-type get_destination_request() :: #{}.


%% Example:
%% list_managed_things_request() :: #{
%%   <<"ConnectorPolicyIdFilter">> => string(),
%%   <<"CredentialLockerFilter">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"OwnerFilter">> => string(),
%%   <<"ParentControllerIdentifierFilter">> => string(),
%%   <<"ProvisioningStatusFilter">> => list(any()),
%%   <<"RoleFilter">> => list(any()),
%%   <<"SerialNumberFilter">> => string()
%% }
-type list_managed_things_request() :: #{binary() => any()}.

%% Example:
%% delete_credential_locker_request() :: #{}
-type delete_credential_locker_request() :: #{}.


%% Example:
%% list_credential_lockers_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_credential_lockers_request() :: #{binary() => any()}.


%% Example:
%% command_endpoint() :: #{
%%   <<"capabilities">> => list(command_capability()()),
%%   <<"endpointId">> => string()
%% }
-type command_endpoint() :: #{binary() => any()}.


%% Example:
%% list_managed_thing_schemas_request() :: #{
%%   <<"CapabilityIdFilter">> => string(),
%%   <<"EndpointIdFilter">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_managed_thing_schemas_request() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"Message">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.


%% Example:
%% capability_report_capability() :: #{
%%   <<"actions">> => list(string()()),
%%   <<"events">> => list(string()()),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"properties">> => list(string()()),
%%   <<"version">> => string()
%% }
-type capability_report_capability() :: #{binary() => any()}.


%% Example:
%% get_ota_task_response() :: #{
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"LastUpdatedAt">> => non_neg_integer(),
%%   <<"OtaMechanism">> => list(any()),
%%   <<"OtaSchedulingConfig">> => ota_task_scheduling_config(),
%%   <<"OtaTargetQueryString">> => string(),
%%   <<"OtaTaskExecutionRetryConfig">> => ota_task_execution_retry_config(),
%%   <<"OtaType">> => list(any()),
%%   <<"Protocol">> => list(any()),
%%   <<"S3Url">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"Target">> => list([string()]()),
%%   <<"TaskArn">> => string(),
%%   <<"TaskConfigurationId">> => string(),
%%   <<"TaskId">> => string(),
%%   <<"TaskProcessingDetails">> => task_processing_details()
%% }
-type get_ota_task_response() :: #{binary() => any()}.


%% Example:
%% list_managed_things_response() :: #{
%%   <<"Items">> => list(managed_thing_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_managed_things_response() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"Message">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% get_event_log_configuration_response() :: #{
%%   <<"EventLogLevel">> => list(any()),
%%   <<"Id">> => string(),
%%   <<"ResourceId">> => string(),
%%   <<"ResourceType">> => string()
%% }
-type get_event_log_configuration_response() :: #{binary() => any()}.


%% Example:
%% update_event_log_configuration_request() :: #{
%%   <<"EventLogLevel">> := list(any())
%% }
-type update_event_log_configuration_request() :: #{binary() => any()}.


%% Example:
%% ota_task_timeout_config() :: #{
%%   <<"InProgressTimeoutInMinutes">> => float()
%% }
-type ota_task_timeout_config() :: #{binary() => any()}.

%% Example:
%% get_provisioning_profile_request() :: #{}
-type get_provisioning_profile_request() :: #{}.


%% Example:
%% create_credential_locker_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"Id">> => string()
%% }
-type create_credential_locker_response() :: #{binary() => any()}.


%% Example:
%% capability_report() :: #{
%%   <<"endpoints">> => list(capability_report_endpoint()()),
%%   <<"nodeId">> => string(),
%%   <<"version">> => string()
%% }
-type capability_report() :: #{binary() => any()}.


%% Example:
%% get_managed_thing_response() :: #{
%%   <<"ActivatedAt">> => non_neg_integer(),
%%   <<"AdvertisedProductId">> => string(),
%%   <<"Arn">> => string(),
%%   <<"Brand">> => string(),
%%   <<"Classification">> => string(),
%%   <<"ConnectorDeviceId">> => string(),
%%   <<"ConnectorPolicyId">> => string(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"CredentialLockerId">> => string(),
%%   <<"DeviceSpecificKey">> => string(),
%%   <<"HubNetworkMode">> => list(any()),
%%   <<"Id">> => string(),
%%   <<"InternationalArticleNumber">> => string(),
%%   <<"MacAddress">> => string(),
%%   <<"MetaData">> => map(),
%%   <<"Model">> => string(),
%%   <<"Name">> => string(),
%%   <<"Owner">> => string(),
%%   <<"ParentControllerId">> => string(),
%%   <<"ProvisioningStatus">> => list(any()),
%%   <<"Role">> => list(any()),
%%   <<"SerialNumber">> => string(),
%%   <<"Tags">> => map(),
%%   <<"UniversalProductCode">> => string(),
%%   <<"UpdatedAt">> => non_neg_integer()
%% }
-type get_managed_thing_response() :: #{binary() => any()}.


%% Example:
%% delete_managed_thing_request() :: #{
%%   <<"Force">> => [boolean()]
%% }
-type delete_managed_thing_request() :: #{binary() => any()}.


%% Example:
%% list_ota_task_configurations_response() :: #{
%%   <<"Items">> => list(ota_task_configuration_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_ota_task_configurations_response() :: #{binary() => any()}.


%% Example:
%% state_capability() :: #{
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"properties">> => any(),
%%   <<"version">> => string()
%% }
-type state_capability() :: #{binary() => any()}.


%% Example:
%% abort_config_criteria() :: #{
%%   <<"Action">> => list(any()),
%%   <<"FailureType">> => list(any()),
%%   <<"MinNumberOfExecutedThings">> => integer(),
%%   <<"ThresholdPercentage">> => float()
%% }
-type abort_config_criteria() :: #{binary() => any()}.


%% Example:
%% notification_configuration_summary() :: #{
%%   <<"DestinationName">> => string(),
%%   <<"EventType">> => list(any())
%% }
-type notification_configuration_summary() :: #{binary() => any()}.

%% Example:
%% get_managed_thing_connectivity_data_request() :: #{}
-type get_managed_thing_connectivity_data_request() :: #{}.


%% Example:
%% get_schema_version_response() :: #{
%%   <<"Description">> => string(),
%%   <<"Namespace">> => string(),
%%   <<"Schema">> => any(),
%%   <<"SchemaId">> => string(),
%%   <<"SemanticVersion">> => string(),
%%   <<"Type">> => list(any()),
%%   <<"Visibility">> => list(any())
%% }
-type get_schema_version_response() :: #{binary() => any()}.


%% Example:
%% register_custom_endpoint_response() :: #{
%%   <<"EndpointAddress">> => string()
%% }
-type register_custom_endpoint_response() :: #{binary() => any()}.


%% Example:
%% configuration_error() :: #{
%%   <<"code">> => string(),
%%   <<"message">> => string()
%% }
-type configuration_error() :: #{binary() => any()}.


%% Example:
%% put_default_encryption_configuration_request() :: #{
%%   <<"encryptionType">> := list(any()),
%%   <<"kmsKeyArn">> => string()
%% }
-type put_default_encryption_configuration_request() :: #{binary() => any()}.


%% Example:
%% create_managed_thing_request() :: #{
%%   <<"AuthenticationMaterial">> := string(),
%%   <<"AuthenticationMaterialType">> := list(any()),
%%   <<"Brand">> => string(),
%%   <<"Capabilities">> => string(),
%%   <<"CapabilityReport">> => capability_report(),
%%   <<"Classification">> => string(),
%%   <<"ClientToken">> => string(),
%%   <<"CredentialLockerId">> => string(),
%%   <<"MetaData">> => map(),
%%   <<"Model">> => string(),
%%   <<"Name">> => string(),
%%   <<"Owner">> => string(),
%%   <<"Role">> := list(any()),
%%   <<"SerialNumber">> => string(),
%%   <<"Tags">> => map()
%% }
-type create_managed_thing_request() :: #{binary() => any()}.


%% Example:
%% managed_thing_schema_list_item() :: #{
%%   <<"CapabilityId">> => string(),
%%   <<"EndpointId">> => string(),
%%   <<"Schema">> => any()
%% }
-type managed_thing_schema_list_item() :: #{binary() => any()}.


%% Example:
%% get_provisioning_profile_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"ClaimCertificate">> => string(),
%%   <<"Id">> => string(),
%%   <<"Name">> => string(),
%%   <<"ProvisioningType">> => list(any()),
%%   <<"Tags">> => map()
%% }
-type get_provisioning_profile_response() :: #{binary() => any()}.


%% Example:
%% create_ota_task_configuration_response() :: #{
%%   <<"TaskConfigurationId">> => string()
%% }
-type create_ota_task_configuration_response() :: #{binary() => any()}.


%% Example:
%% ota_task_execution_rollout_config() :: #{
%%   <<"ExponentialRolloutRate">> => exponential_rollout_rate(),
%%   <<"MaximumPerMinute">> => integer()
%% }
-type ota_task_execution_rollout_config() :: #{binary() => any()}.

-type create_credential_locker_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_destination_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type create_event_log_configuration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_managed_thing_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    unauthorized_exception().

-type create_notification_configuration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type create_ota_task_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type create_ota_task_configuration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type create_provisioning_profile_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    conflict_exception() | 
    unauthorized_exception().

-type delete_credential_locker_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception().

-type delete_destination_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_event_log_configuration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_managed_thing_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    unauthorized_exception().

-type delete_notification_configuration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_ota_task_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_ota_task_configuration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_provisioning_profile_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception().

-type get_credential_locker_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception().

-type get_custom_endpoint_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception().

-type get_default_encryption_configuration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type get_destination_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_device_discovery_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception().

-type get_event_log_configuration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_hub_configuration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception().

-type get_managed_thing_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception().

-type get_managed_thing_capabilities_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception().

-type get_managed_thing_connectivity_data_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception().

-type get_managed_thing_meta_data_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception().

-type get_managed_thing_state_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type get_notification_configuration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_ota_task_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_ota_task_configuration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_provisioning_profile_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception().

-type get_runtime_log_configuration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_schema_version_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type list_credential_lockers_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_unavailable_exception().

-type list_destinations_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_event_log_configurations_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_managed_thing_schemas_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception().

-type list_managed_things_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    unauthorized_exception().

-type list_notification_configurations_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_ota_task_configurations_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_ota_task_executions_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_ota_tasks_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_provisioning_profiles_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    unauthorized_exception().

-type list_schema_versions_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    conflict_exception().

-type put_default_encryption_configuration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type put_hub_configuration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception().

-type put_runtime_log_configuration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type register_custom_endpoint_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    conflict_exception() | 
    unauthorized_exception().

-type reset_runtime_log_configuration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type send_managed_thing_command_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception().

-type start_device_discovery_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    unauthorized_exception().

-type update_destination_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_event_log_configuration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_managed_thing_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    unauthorized_exception().

-type update_notification_configuration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_ota_task_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Create a product credential locker.
%%
%% This operation will trigger the creation of all the
%% manufacturing resources including the Wi-Fi setup key pair and device
%% certificate.
-spec create_credential_locker(aws_client:aws_client(), create_credential_locker_request()) ->
    {ok, create_credential_locker_response(), tuple()} |
    {error, any()} |
    {error, create_credential_locker_errors(), tuple()}.
create_credential_locker(Client, Input) ->
    create_credential_locker(Client, Input, []).

-spec create_credential_locker(aws_client:aws_client(), create_credential_locker_request(), proplists:proplist()) ->
    {ok, create_credential_locker_response(), tuple()} |
    {error, any()} |
    {error, create_credential_locker_errors(), tuple()}.
create_credential_locker(Client, Input0, Options0) ->
    Method = post,
    Path = ["/credential-lockers"],
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

%% @doc Create a destination.
%%
%% IoT managed integrations uses the destination to determine where to
%% deliver
%% notifications for a device.
-spec create_destination(aws_client:aws_client(), create_destination_request()) ->
    {ok, create_destination_response(), tuple()} |
    {error, any()} |
    {error, create_destination_errors(), tuple()}.
create_destination(Client, Input) ->
    create_destination(Client, Input, []).

-spec create_destination(aws_client:aws_client(), create_destination_request(), proplists:proplist()) ->
    {ok, create_destination_response(), tuple()} |
    {error, any()} |
    {error, create_destination_errors(), tuple()}.
create_destination(Client, Input0, Options0) ->
    Method = post,
    Path = ["/destinations"],
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

%% @doc Set the event log configuration for the account, resource type, or
%% specific
%% resource.
-spec create_event_log_configuration(aws_client:aws_client(), create_event_log_configuration_request()) ->
    {ok, create_event_log_configuration_response(), tuple()} |
    {error, any()} |
    {error, create_event_log_configuration_errors(), tuple()}.
create_event_log_configuration(Client, Input) ->
    create_event_log_configuration(Client, Input, []).

-spec create_event_log_configuration(aws_client:aws_client(), create_event_log_configuration_request(), proplists:proplist()) ->
    {ok, create_event_log_configuration_response(), tuple()} |
    {error, any()} |
    {error, create_event_log_configuration_errors(), tuple()}.
create_event_log_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/event-log-configurations"],
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

%% @doc Creates a managed thing.
%%
%% A managed thing contains the device identifier, protocol
%% supported, and capabilities of the device in a protocol-specific format.
-spec create_managed_thing(aws_client:aws_client(), create_managed_thing_request()) ->
    {ok, create_managed_thing_response(), tuple()} |
    {error, any()} |
    {error, create_managed_thing_errors(), tuple()}.
create_managed_thing(Client, Input) ->
    create_managed_thing(Client, Input, []).

-spec create_managed_thing(aws_client:aws_client(), create_managed_thing_request(), proplists:proplist()) ->
    {ok, create_managed_thing_response(), tuple()} |
    {error, any()} |
    {error, create_managed_thing_errors(), tuple()}.
create_managed_thing(Client, Input0, Options0) ->
    Method = post,
    Path = ["/managed-things"],
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

%% @doc Creates a notification configuration.
%%
%% A configuration is a connection between an event
%% type and a destination that you have already created.
-spec create_notification_configuration(aws_client:aws_client(), create_notification_configuration_request()) ->
    {ok, create_notification_configuration_response(), tuple()} |
    {error, any()} |
    {error, create_notification_configuration_errors(), tuple()}.
create_notification_configuration(Client, Input) ->
    create_notification_configuration(Client, Input, []).

-spec create_notification_configuration(aws_client:aws_client(), create_notification_configuration_request(), proplists:proplist()) ->
    {ok, create_notification_configuration_response(), tuple()} |
    {error, any()} |
    {error, create_notification_configuration_errors(), tuple()}.
create_notification_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/notification-configurations"],
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

%% @doc Create an over-the-air (OTA) task to update a device.
-spec create_ota_task(aws_client:aws_client(), create_ota_task_request()) ->
    {ok, create_ota_task_response(), tuple()} |
    {error, any()} |
    {error, create_ota_task_errors(), tuple()}.
create_ota_task(Client, Input) ->
    create_ota_task(Client, Input, []).

-spec create_ota_task(aws_client:aws_client(), create_ota_task_request(), proplists:proplist()) ->
    {ok, create_ota_task_response(), tuple()} |
    {error, any()} |
    {error, create_ota_task_errors(), tuple()}.
create_ota_task(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ota-tasks"],
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

%% @doc Create a configuraiton for the over-the-air (OTA) task.
-spec create_ota_task_configuration(aws_client:aws_client(), create_ota_task_configuration_request()) ->
    {ok, create_ota_task_configuration_response(), tuple()} |
    {error, any()} |
    {error, create_ota_task_configuration_errors(), tuple()}.
create_ota_task_configuration(Client, Input) ->
    create_ota_task_configuration(Client, Input, []).

-spec create_ota_task_configuration(aws_client:aws_client(), create_ota_task_configuration_request(), proplists:proplist()) ->
    {ok, create_ota_task_configuration_response(), tuple()} |
    {error, any()} |
    {error, create_ota_task_configuration_errors(), tuple()}.
create_ota_task_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ota-task-configurations"],
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

%% @doc Create a provisioning profile for a device to execute the
%% provisioning flows using a
%% provisioning template.
%%
%% The provisioning template is a document that defines the set of
%% resources and policies applied to a device during the provisioning
%% process.
-spec create_provisioning_profile(aws_client:aws_client(), create_provisioning_profile_request()) ->
    {ok, create_provisioning_profile_response(), tuple()} |
    {error, any()} |
    {error, create_provisioning_profile_errors(), tuple()}.
create_provisioning_profile(Client, Input) ->
    create_provisioning_profile(Client, Input, []).

-spec create_provisioning_profile(aws_client:aws_client(), create_provisioning_profile_request(), proplists:proplist()) ->
    {ok, create_provisioning_profile_response(), tuple()} |
    {error, any()} |
    {error, create_provisioning_profile_errors(), tuple()}.
create_provisioning_profile(Client, Input0, Options0) ->
    Method = post,
    Path = ["/provisioning-profiles"],
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

%% @doc Delete a credential locker.
%%
%% This operation can't be undone and any existing device won't be
%% able to use
%% IoT managed integrations.
-spec delete_credential_locker(aws_client:aws_client(), binary() | list(), delete_credential_locker_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_credential_locker_errors(), tuple()}.
delete_credential_locker(Client, Identifier, Input) ->
    delete_credential_locker(Client, Identifier, Input, []).

-spec delete_credential_locker(aws_client:aws_client(), binary() | list(), delete_credential_locker_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_credential_locker_errors(), tuple()}.
delete_credential_locker(Client, Identifier, Input0, Options0) ->
    Method = delete,
    Path = ["/credential-lockers/", aws_util:encode_uri(Identifier), ""],
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

%% @doc Deletes a customer-managed destination specified by id.
-spec delete_destination(aws_client:aws_client(), binary() | list(), delete_destination_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_destination_errors(), tuple()}.
delete_destination(Client, Name, Input) ->
    delete_destination(Client, Name, Input, []).

-spec delete_destination(aws_client:aws_client(), binary() | list(), delete_destination_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_destination_errors(), tuple()}.
delete_destination(Client, Name, Input0, Options0) ->
    Method = delete,
    Path = ["/destinations/", aws_util:encode_uri(Name), ""],
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

%% @doc Delete an event log configuration.
-spec delete_event_log_configuration(aws_client:aws_client(), binary() | list(), delete_event_log_configuration_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_event_log_configuration_errors(), tuple()}.
delete_event_log_configuration(Client, Id, Input) ->
    delete_event_log_configuration(Client, Id, Input, []).

-spec delete_event_log_configuration(aws_client:aws_client(), binary() | list(), delete_event_log_configuration_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_event_log_configuration_errors(), tuple()}.
delete_event_log_configuration(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/event-log-configurations/", aws_util:encode_uri(Id), ""],
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

%% @doc Delete a managed thing.
%%
%% If a controller is deleted, all of the devices connected to it
%% will have their status changed to `PENDING'. It is not possible to
%% remove a
%% cloud device.
-spec delete_managed_thing(aws_client:aws_client(), binary() | list(), delete_managed_thing_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_managed_thing_errors(), tuple()}.
delete_managed_thing(Client, Identifier, Input) ->
    delete_managed_thing(Client, Identifier, Input, []).

-spec delete_managed_thing(aws_client:aws_client(), binary() | list(), delete_managed_thing_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_managed_thing_errors(), tuple()}.
delete_managed_thing(Client, Identifier, Input0, Options0) ->
    Method = delete,
    Path = ["/managed-things/", aws_util:encode_uri(Identifier), ""],
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
                     {<<"Force">>, <<"Force">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a notification configuration.
-spec delete_notification_configuration(aws_client:aws_client(), binary() | list(), delete_notification_configuration_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_notification_configuration_errors(), tuple()}.
delete_notification_configuration(Client, EventType, Input) ->
    delete_notification_configuration(Client, EventType, Input, []).

-spec delete_notification_configuration(aws_client:aws_client(), binary() | list(), delete_notification_configuration_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_notification_configuration_errors(), tuple()}.
delete_notification_configuration(Client, EventType, Input0, Options0) ->
    Method = delete,
    Path = ["/notification-configurations/", aws_util:encode_uri(EventType), ""],
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

%% @doc Delete the over-the-air (OTA) task.
-spec delete_ota_task(aws_client:aws_client(), binary() | list(), delete_ota_task_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_ota_task_errors(), tuple()}.
delete_ota_task(Client, Identifier, Input) ->
    delete_ota_task(Client, Identifier, Input, []).

-spec delete_ota_task(aws_client:aws_client(), binary() | list(), delete_ota_task_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_ota_task_errors(), tuple()}.
delete_ota_task(Client, Identifier, Input0, Options0) ->
    Method = delete,
    Path = ["/ota-tasks/", aws_util:encode_uri(Identifier), ""],
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

%% @doc Delete the over-the-air (OTA) task configuration.
-spec delete_ota_task_configuration(aws_client:aws_client(), binary() | list(), delete_ota_task_configuration_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_ota_task_configuration_errors(), tuple()}.
delete_ota_task_configuration(Client, Identifier, Input) ->
    delete_ota_task_configuration(Client, Identifier, Input, []).

-spec delete_ota_task_configuration(aws_client:aws_client(), binary() | list(), delete_ota_task_configuration_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_ota_task_configuration_errors(), tuple()}.
delete_ota_task_configuration(Client, Identifier, Input0, Options0) ->
    Method = delete,
    Path = ["/ota-task-configurations/", aws_util:encode_uri(Identifier), ""],
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

%% @doc Delete a provisioning profile.
-spec delete_provisioning_profile(aws_client:aws_client(), binary() | list(), delete_provisioning_profile_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_provisioning_profile_errors(), tuple()}.
delete_provisioning_profile(Client, Identifier, Input) ->
    delete_provisioning_profile(Client, Identifier, Input, []).

-spec delete_provisioning_profile(aws_client:aws_client(), binary() | list(), delete_provisioning_profile_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_provisioning_profile_errors(), tuple()}.
delete_provisioning_profile(Client, Identifier, Input0, Options0) ->
    Method = delete,
    Path = ["/provisioning-profiles/", aws_util:encode_uri(Identifier), ""],
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

%% @doc Get information on an existing credential locker
-spec get_credential_locker(aws_client:aws_client(), binary() | list()) ->
    {ok, get_credential_locker_response(), tuple()} |
    {error, any()} |
    {error, get_credential_locker_errors(), tuple()}.
get_credential_locker(Client, Identifier)
  when is_map(Client) ->
    get_credential_locker(Client, Identifier, #{}, #{}).

-spec get_credential_locker(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_credential_locker_response(), tuple()} |
    {error, any()} |
    {error, get_credential_locker_errors(), tuple()}.
get_credential_locker(Client, Identifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_credential_locker(Client, Identifier, QueryMap, HeadersMap, []).

-spec get_credential_locker(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_credential_locker_response(), tuple()} |
    {error, any()} |
    {error, get_credential_locker_errors(), tuple()}.
get_credential_locker(Client, Identifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/credential-lockers/", aws_util:encode_uri(Identifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the IoT managed integrations custom endpoint.
-spec get_custom_endpoint(aws_client:aws_client()) ->
    {ok, get_custom_endpoint_response(), tuple()} |
    {error, any()} |
    {error, get_custom_endpoint_errors(), tuple()}.
get_custom_endpoint(Client)
  when is_map(Client) ->
    get_custom_endpoint(Client, #{}, #{}).

-spec get_custom_endpoint(aws_client:aws_client(), map(), map()) ->
    {ok, get_custom_endpoint_response(), tuple()} |
    {error, any()} |
    {error, get_custom_endpoint_errors(), tuple()}.
get_custom_endpoint(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_custom_endpoint(Client, QueryMap, HeadersMap, []).

-spec get_custom_endpoint(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, get_custom_endpoint_response(), tuple()} |
    {error, any()} |
    {error, get_custom_endpoint_errors(), tuple()}.
get_custom_endpoint(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/custom-endpoint"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the default encryption configuration for
%% the Amazon Web Services account
%% in the default or specified region.
%%
%% For more information, see Key
%% management:
%% https://docs.aws.amazon.com/iot-sitewise/latest/userguide/key-management.html
%% in the AWS IoT SiteWise User Guide.
-spec get_default_encryption_configuration(aws_client:aws_client()) ->
    {ok, get_default_encryption_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_default_encryption_configuration_errors(), tuple()}.
get_default_encryption_configuration(Client)
  when is_map(Client) ->
    get_default_encryption_configuration(Client, #{}, #{}).

-spec get_default_encryption_configuration(aws_client:aws_client(), map(), map()) ->
    {ok, get_default_encryption_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_default_encryption_configuration_errors(), tuple()}.
get_default_encryption_configuration(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_default_encryption_configuration(Client, QueryMap, HeadersMap, []).

-spec get_default_encryption_configuration(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, get_default_encryption_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_default_encryption_configuration_errors(), tuple()}.
get_default_encryption_configuration(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/configuration/account/encryption"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a destination by ID.
-spec get_destination(aws_client:aws_client(), binary() | list()) ->
    {ok, get_destination_response(), tuple()} |
    {error, any()} |
    {error, get_destination_errors(), tuple()}.
get_destination(Client, Name)
  when is_map(Client) ->
    get_destination(Client, Name, #{}, #{}).

-spec get_destination(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_destination_response(), tuple()} |
    {error, any()} |
    {error, get_destination_errors(), tuple()}.
get_destination(Client, Name, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_destination(Client, Name, QueryMap, HeadersMap, []).

-spec get_destination(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_destination_response(), tuple()} |
    {error, any()} |
    {error, get_destination_errors(), tuple()}.
get_destination(Client, Name, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/destinations/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get the current state of a device discovery.
-spec get_device_discovery(aws_client:aws_client(), binary() | list()) ->
    {ok, get_device_discovery_response(), tuple()} |
    {error, any()} |
    {error, get_device_discovery_errors(), tuple()}.
get_device_discovery(Client, Identifier)
  when is_map(Client) ->
    get_device_discovery(Client, Identifier, #{}, #{}).

-spec get_device_discovery(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_device_discovery_response(), tuple()} |
    {error, any()} |
    {error, get_device_discovery_errors(), tuple()}.
get_device_discovery(Client, Identifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_device_discovery(Client, Identifier, QueryMap, HeadersMap, []).

-spec get_device_discovery(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_device_discovery_response(), tuple()} |
    {error, any()} |
    {error, get_device_discovery_errors(), tuple()}.
get_device_discovery(Client, Identifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/device-discoveries/", aws_util:encode_uri(Identifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get an event log configuration.
-spec get_event_log_configuration(aws_client:aws_client(), binary() | list()) ->
    {ok, get_event_log_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_event_log_configuration_errors(), tuple()}.
get_event_log_configuration(Client, Id)
  when is_map(Client) ->
    get_event_log_configuration(Client, Id, #{}, #{}).

-spec get_event_log_configuration(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_event_log_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_event_log_configuration_errors(), tuple()}.
get_event_log_configuration(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_event_log_configuration(Client, Id, QueryMap, HeadersMap, []).

-spec get_event_log_configuration(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_event_log_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_event_log_configuration_errors(), tuple()}.
get_event_log_configuration(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/event-log-configurations/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get a hub configuration.
-spec get_hub_configuration(aws_client:aws_client()) ->
    {ok, get_hub_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_hub_configuration_errors(), tuple()}.
get_hub_configuration(Client)
  when is_map(Client) ->
    get_hub_configuration(Client, #{}, #{}).

-spec get_hub_configuration(aws_client:aws_client(), map(), map()) ->
    {ok, get_hub_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_hub_configuration_errors(), tuple()}.
get_hub_configuration(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_hub_configuration(Client, QueryMap, HeadersMap, []).

-spec get_hub_configuration(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, get_hub_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_hub_configuration_errors(), tuple()}.
get_hub_configuration(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/hub-configuration"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get the attributes and capabilities associated with a managed thing.
-spec get_managed_thing(aws_client:aws_client(), binary() | list()) ->
    {ok, get_managed_thing_response(), tuple()} |
    {error, any()} |
    {error, get_managed_thing_errors(), tuple()}.
get_managed_thing(Client, Identifier)
  when is_map(Client) ->
    get_managed_thing(Client, Identifier, #{}, #{}).

-spec get_managed_thing(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_managed_thing_response(), tuple()} |
    {error, any()} |
    {error, get_managed_thing_errors(), tuple()}.
get_managed_thing(Client, Identifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_managed_thing(Client, Identifier, QueryMap, HeadersMap, []).

-spec get_managed_thing(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_managed_thing_response(), tuple()} |
    {error, any()} |
    {error, get_managed_thing_errors(), tuple()}.
get_managed_thing(Client, Identifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/managed-things/", aws_util:encode_uri(Identifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get the capabilities for a managed thing using the device ID.
-spec get_managed_thing_capabilities(aws_client:aws_client(), binary() | list()) ->
    {ok, get_managed_thing_capabilities_response(), tuple()} |
    {error, any()} |
    {error, get_managed_thing_capabilities_errors(), tuple()}.
get_managed_thing_capabilities(Client, Identifier)
  when is_map(Client) ->
    get_managed_thing_capabilities(Client, Identifier, #{}, #{}).

-spec get_managed_thing_capabilities(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_managed_thing_capabilities_response(), tuple()} |
    {error, any()} |
    {error, get_managed_thing_capabilities_errors(), tuple()}.
get_managed_thing_capabilities(Client, Identifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_managed_thing_capabilities(Client, Identifier, QueryMap, HeadersMap, []).

-spec get_managed_thing_capabilities(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_managed_thing_capabilities_response(), tuple()} |
    {error, any()} |
    {error, get_managed_thing_capabilities_errors(), tuple()}.
get_managed_thing_capabilities(Client, Identifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/managed-things-capabilities/", aws_util:encode_uri(Identifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get the connectivity status of a managed thing.
-spec get_managed_thing_connectivity_data(aws_client:aws_client(), binary() | list(), get_managed_thing_connectivity_data_request()) ->
    {ok, get_managed_thing_connectivity_data_response(), tuple()} |
    {error, any()} |
    {error, get_managed_thing_connectivity_data_errors(), tuple()}.
get_managed_thing_connectivity_data(Client, Identifier, Input) ->
    get_managed_thing_connectivity_data(Client, Identifier, Input, []).

-spec get_managed_thing_connectivity_data(aws_client:aws_client(), binary() | list(), get_managed_thing_connectivity_data_request(), proplists:proplist()) ->
    {ok, get_managed_thing_connectivity_data_response(), tuple()} |
    {error, any()} |
    {error, get_managed_thing_connectivity_data_errors(), tuple()}.
get_managed_thing_connectivity_data(Client, Identifier, Input0, Options0) ->
    Method = post,
    Path = ["/managed-things-connectivity-data/", aws_util:encode_uri(Identifier), ""],
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

%% @doc Get the metadata information for a managed thing.
-spec get_managed_thing_meta_data(aws_client:aws_client(), binary() | list()) ->
    {ok, get_managed_thing_meta_data_response(), tuple()} |
    {error, any()} |
    {error, get_managed_thing_meta_data_errors(), tuple()}.
get_managed_thing_meta_data(Client, Identifier)
  when is_map(Client) ->
    get_managed_thing_meta_data(Client, Identifier, #{}, #{}).

-spec get_managed_thing_meta_data(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_managed_thing_meta_data_response(), tuple()} |
    {error, any()} |
    {error, get_managed_thing_meta_data_errors(), tuple()}.
get_managed_thing_meta_data(Client, Identifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_managed_thing_meta_data(Client, Identifier, QueryMap, HeadersMap, []).

-spec get_managed_thing_meta_data(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_managed_thing_meta_data_response(), tuple()} |
    {error, any()} |
    {error, get_managed_thing_meta_data_errors(), tuple()}.
get_managed_thing_meta_data(Client, Identifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/managed-things-metadata/", aws_util:encode_uri(Identifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the managed thing state for the given device Id.
-spec get_managed_thing_state(aws_client:aws_client(), binary() | list()) ->
    {ok, get_managed_thing_state_response(), tuple()} |
    {error, any()} |
    {error, get_managed_thing_state_errors(), tuple()}.
get_managed_thing_state(Client, ManagedThingId)
  when is_map(Client) ->
    get_managed_thing_state(Client, ManagedThingId, #{}, #{}).

-spec get_managed_thing_state(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_managed_thing_state_response(), tuple()} |
    {error, any()} |
    {error, get_managed_thing_state_errors(), tuple()}.
get_managed_thing_state(Client, ManagedThingId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_managed_thing_state(Client, ManagedThingId, QueryMap, HeadersMap, []).

-spec get_managed_thing_state(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_managed_thing_state_response(), tuple()} |
    {error, any()} |
    {error, get_managed_thing_state_errors(), tuple()}.
get_managed_thing_state(Client, ManagedThingId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/managed-thing-states/", aws_util:encode_uri(ManagedThingId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get a notification configuration.
-spec get_notification_configuration(aws_client:aws_client(), binary() | list()) ->
    {ok, get_notification_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_notification_configuration_errors(), tuple()}.
get_notification_configuration(Client, EventType)
  when is_map(Client) ->
    get_notification_configuration(Client, EventType, #{}, #{}).

-spec get_notification_configuration(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_notification_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_notification_configuration_errors(), tuple()}.
get_notification_configuration(Client, EventType, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_notification_configuration(Client, EventType, QueryMap, HeadersMap, []).

-spec get_notification_configuration(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_notification_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_notification_configuration_errors(), tuple()}.
get_notification_configuration(Client, EventType, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/notification-configurations/", aws_util:encode_uri(EventType), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get the over-the-air (OTA) task.
-spec get_ota_task(aws_client:aws_client(), binary() | list()) ->
    {ok, get_ota_task_response(), tuple()} |
    {error, any()} |
    {error, get_ota_task_errors(), tuple()}.
get_ota_task(Client, Identifier)
  when is_map(Client) ->
    get_ota_task(Client, Identifier, #{}, #{}).

-spec get_ota_task(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_ota_task_response(), tuple()} |
    {error, any()} |
    {error, get_ota_task_errors(), tuple()}.
get_ota_task(Client, Identifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_ota_task(Client, Identifier, QueryMap, HeadersMap, []).

-spec get_ota_task(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_ota_task_response(), tuple()} |
    {error, any()} |
    {error, get_ota_task_errors(), tuple()}.
get_ota_task(Client, Identifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/ota-tasks/", aws_util:encode_uri(Identifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get a configuraiton for the over-the-air (OTA) task.
-spec get_ota_task_configuration(aws_client:aws_client(), binary() | list()) ->
    {ok, get_ota_task_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_ota_task_configuration_errors(), tuple()}.
get_ota_task_configuration(Client, Identifier)
  when is_map(Client) ->
    get_ota_task_configuration(Client, Identifier, #{}, #{}).

-spec get_ota_task_configuration(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_ota_task_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_ota_task_configuration_errors(), tuple()}.
get_ota_task_configuration(Client, Identifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_ota_task_configuration(Client, Identifier, QueryMap, HeadersMap, []).

-spec get_ota_task_configuration(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_ota_task_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_ota_task_configuration_errors(), tuple()}.
get_ota_task_configuration(Client, Identifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/ota-task-configurations/", aws_util:encode_uri(Identifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get a provisioning profile by template name.
-spec get_provisioning_profile(aws_client:aws_client(), binary() | list()) ->
    {ok, get_provisioning_profile_response(), tuple()} |
    {error, any()} |
    {error, get_provisioning_profile_errors(), tuple()}.
get_provisioning_profile(Client, Identifier)
  when is_map(Client) ->
    get_provisioning_profile(Client, Identifier, #{}, #{}).

-spec get_provisioning_profile(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_provisioning_profile_response(), tuple()} |
    {error, any()} |
    {error, get_provisioning_profile_errors(), tuple()}.
get_provisioning_profile(Client, Identifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_provisioning_profile(Client, Identifier, QueryMap, HeadersMap, []).

-spec get_provisioning_profile(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_provisioning_profile_response(), tuple()} |
    {error, any()} |
    {error, get_provisioning_profile_errors(), tuple()}.
get_provisioning_profile(Client, Identifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/provisioning-profiles/", aws_util:encode_uri(Identifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get the runtime log configuration for a specific managed thing or for
%% all managed things
%% as a group.
-spec get_runtime_log_configuration(aws_client:aws_client(), binary() | list()) ->
    {ok, get_runtime_log_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_runtime_log_configuration_errors(), tuple()}.
get_runtime_log_configuration(Client, ManagedThingId)
  when is_map(Client) ->
    get_runtime_log_configuration(Client, ManagedThingId, #{}, #{}).

-spec get_runtime_log_configuration(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_runtime_log_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_runtime_log_configuration_errors(), tuple()}.
get_runtime_log_configuration(Client, ManagedThingId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_runtime_log_configuration(Client, ManagedThingId, QueryMap, HeadersMap, []).

-spec get_runtime_log_configuration(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_runtime_log_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_runtime_log_configuration_errors(), tuple()}.
get_runtime_log_configuration(Client, ManagedThingId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/runtime-log-configurations/", aws_util:encode_uri(ManagedThingId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a schema version with the provided information.
-spec get_schema_version(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_schema_version_response(), tuple()} |
    {error, any()} |
    {error, get_schema_version_errors(), tuple()}.
get_schema_version(Client, SchemaVersionedId, Type)
  when is_map(Client) ->
    get_schema_version(Client, SchemaVersionedId, Type, #{}, #{}).

-spec get_schema_version(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_schema_version_response(), tuple()} |
    {error, any()} |
    {error, get_schema_version_errors(), tuple()}.
get_schema_version(Client, SchemaVersionedId, Type, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_schema_version(Client, SchemaVersionedId, Type, QueryMap, HeadersMap, []).

-spec get_schema_version(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_schema_version_response(), tuple()} |
    {error, any()} |
    {error, get_schema_version_errors(), tuple()}.
get_schema_version(Client, SchemaVersionedId, Type, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/schema-versions/", aws_util:encode_uri(Type), "/", aws_util:encode_uri(SchemaVersionedId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"Format">>, maps:get(<<"Format">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List information on an existing credential locker.
-spec list_credential_lockers(aws_client:aws_client()) ->
    {ok, list_credential_lockers_response(), tuple()} |
    {error, any()} |
    {error, list_credential_lockers_errors(), tuple()}.
list_credential_lockers(Client)
  when is_map(Client) ->
    list_credential_lockers(Client, #{}, #{}).

-spec list_credential_lockers(aws_client:aws_client(), map(), map()) ->
    {ok, list_credential_lockers_response(), tuple()} |
    {error, any()} |
    {error, list_credential_lockers_errors(), tuple()}.
list_credential_lockers(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_credential_lockers(Client, QueryMap, HeadersMap, []).

-spec list_credential_lockers(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_credential_lockers_response(), tuple()} |
    {error, any()} |
    {error, list_credential_lockers_errors(), tuple()}.
list_credential_lockers(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/credential-lockers"],
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

%% @doc List all destination names under one Amazon Web Services account.
-spec list_destinations(aws_client:aws_client()) ->
    {ok, list_destinations_response(), tuple()} |
    {error, any()} |
    {error, list_destinations_errors(), tuple()}.
list_destinations(Client)
  when is_map(Client) ->
    list_destinations(Client, #{}, #{}).

-spec list_destinations(aws_client:aws_client(), map(), map()) ->
    {ok, list_destinations_response(), tuple()} |
    {error, any()} |
    {error, list_destinations_errors(), tuple()}.
list_destinations(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_destinations(Client, QueryMap, HeadersMap, []).

-spec list_destinations(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_destinations_response(), tuple()} |
    {error, any()} |
    {error, list_destinations_errors(), tuple()}.
list_destinations(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/destinations"],
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

%% @doc List all event log configurations for an account.
-spec list_event_log_configurations(aws_client:aws_client()) ->
    {ok, list_event_log_configurations_response(), tuple()} |
    {error, any()} |
    {error, list_event_log_configurations_errors(), tuple()}.
list_event_log_configurations(Client)
  when is_map(Client) ->
    list_event_log_configurations(Client, #{}, #{}).

-spec list_event_log_configurations(aws_client:aws_client(), map(), map()) ->
    {ok, list_event_log_configurations_response(), tuple()} |
    {error, any()} |
    {error, list_event_log_configurations_errors(), tuple()}.
list_event_log_configurations(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_event_log_configurations(Client, QueryMap, HeadersMap, []).

-spec list_event_log_configurations(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_event_log_configurations_response(), tuple()} |
    {error, any()} |
    {error, list_event_log_configurations_errors(), tuple()}.
list_event_log_configurations(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/event-log-configurations"],
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

%% @doc List schemas associated with a managed thing.
-spec list_managed_thing_schemas(aws_client:aws_client(), binary() | list()) ->
    {ok, list_managed_thing_schemas_response(), tuple()} |
    {error, any()} |
    {error, list_managed_thing_schemas_errors(), tuple()}.
list_managed_thing_schemas(Client, Identifier)
  when is_map(Client) ->
    list_managed_thing_schemas(Client, Identifier, #{}, #{}).

-spec list_managed_thing_schemas(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_managed_thing_schemas_response(), tuple()} |
    {error, any()} |
    {error, list_managed_thing_schemas_errors(), tuple()}.
list_managed_thing_schemas(Client, Identifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_managed_thing_schemas(Client, Identifier, QueryMap, HeadersMap, []).

-spec list_managed_thing_schemas(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_managed_thing_schemas_response(), tuple()} |
    {error, any()} |
    {error, list_managed_thing_schemas_errors(), tuple()}.
list_managed_thing_schemas(Client, Identifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/managed-thing-schemas/", aws_util:encode_uri(Identifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"CapabilityIdFilter">>, maps:get(<<"CapabilityIdFilter">>, QueryMap, undefined)},
        {<<"EndpointIdFilter">>, maps:get(<<"EndpointIdFilter">>, QueryMap, undefined)},
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List all of the associations and statuses for a managed thing by its
%% owner.
-spec list_managed_things(aws_client:aws_client()) ->
    {ok, list_managed_things_response(), tuple()} |
    {error, any()} |
    {error, list_managed_things_errors(), tuple()}.
list_managed_things(Client)
  when is_map(Client) ->
    list_managed_things(Client, #{}, #{}).

-spec list_managed_things(aws_client:aws_client(), map(), map()) ->
    {ok, list_managed_things_response(), tuple()} |
    {error, any()} |
    {error, list_managed_things_errors(), tuple()}.
list_managed_things(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_managed_things(Client, QueryMap, HeadersMap, []).

-spec list_managed_things(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_managed_things_response(), tuple()} |
    {error, any()} |
    {error, list_managed_things_errors(), tuple()}.
list_managed_things(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/managed-things"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"ConnectorPolicyIdFilter">>, maps:get(<<"ConnectorPolicyIdFilter">>, QueryMap, undefined)},
        {<<"CredentialLockerFilter">>, maps:get(<<"CredentialLockerFilter">>, QueryMap, undefined)},
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)},
        {<<"OwnerFilter">>, maps:get(<<"OwnerFilter">>, QueryMap, undefined)},
        {<<"ParentControllerIdentifierFilter">>, maps:get(<<"ParentControllerIdentifierFilter">>, QueryMap, undefined)},
        {<<"ProvisioningStatusFilter">>, maps:get(<<"ProvisioningStatusFilter">>, QueryMap, undefined)},
        {<<"RoleFilter">>, maps:get(<<"RoleFilter">>, QueryMap, undefined)},
        {<<"SerialNumberFilter">>, maps:get(<<"SerialNumberFilter">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List all notification configurations.
-spec list_notification_configurations(aws_client:aws_client()) ->
    {ok, list_notification_configurations_response(), tuple()} |
    {error, any()} |
    {error, list_notification_configurations_errors(), tuple()}.
list_notification_configurations(Client)
  when is_map(Client) ->
    list_notification_configurations(Client, #{}, #{}).

-spec list_notification_configurations(aws_client:aws_client(), map(), map()) ->
    {ok, list_notification_configurations_response(), tuple()} |
    {error, any()} |
    {error, list_notification_configurations_errors(), tuple()}.
list_notification_configurations(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_notification_configurations(Client, QueryMap, HeadersMap, []).

-spec list_notification_configurations(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_notification_configurations_response(), tuple()} |
    {error, any()} |
    {error, list_notification_configurations_errors(), tuple()}.
list_notification_configurations(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/notification-configurations"],
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

%% @doc List all of the over-the-air (OTA) task configurations.
-spec list_ota_task_configurations(aws_client:aws_client()) ->
    {ok, list_ota_task_configurations_response(), tuple()} |
    {error, any()} |
    {error, list_ota_task_configurations_errors(), tuple()}.
list_ota_task_configurations(Client)
  when is_map(Client) ->
    list_ota_task_configurations(Client, #{}, #{}).

-spec list_ota_task_configurations(aws_client:aws_client(), map(), map()) ->
    {ok, list_ota_task_configurations_response(), tuple()} |
    {error, any()} |
    {error, list_ota_task_configurations_errors(), tuple()}.
list_ota_task_configurations(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_ota_task_configurations(Client, QueryMap, HeadersMap, []).

-spec list_ota_task_configurations(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_ota_task_configurations_response(), tuple()} |
    {error, any()} |
    {error, list_ota_task_configurations_errors(), tuple()}.
list_ota_task_configurations(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/ota-task-configurations"],
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

%% @doc List all of the over-the-air (OTA) task executions.
-spec list_ota_task_executions(aws_client:aws_client(), binary() | list()) ->
    {ok, list_ota_task_executions_response(), tuple()} |
    {error, any()} |
    {error, list_ota_task_executions_errors(), tuple()}.
list_ota_task_executions(Client, Identifier)
  when is_map(Client) ->
    list_ota_task_executions(Client, Identifier, #{}, #{}).

-spec list_ota_task_executions(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_ota_task_executions_response(), tuple()} |
    {error, any()} |
    {error, list_ota_task_executions_errors(), tuple()}.
list_ota_task_executions(Client, Identifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_ota_task_executions(Client, Identifier, QueryMap, HeadersMap, []).

-spec list_ota_task_executions(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_ota_task_executions_response(), tuple()} |
    {error, any()} |
    {error, list_ota_task_executions_errors(), tuple()}.
list_ota_task_executions(Client, Identifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/ota-tasks/", aws_util:encode_uri(Identifier), "/devices"],
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

%% @doc List all of the over-the-air (OTA) tasks.
-spec list_ota_tasks(aws_client:aws_client()) ->
    {ok, list_ota_tasks_response(), tuple()} |
    {error, any()} |
    {error, list_ota_tasks_errors(), tuple()}.
list_ota_tasks(Client)
  when is_map(Client) ->
    list_ota_tasks(Client, #{}, #{}).

-spec list_ota_tasks(aws_client:aws_client(), map(), map()) ->
    {ok, list_ota_tasks_response(), tuple()} |
    {error, any()} |
    {error, list_ota_tasks_errors(), tuple()}.
list_ota_tasks(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_ota_tasks(Client, QueryMap, HeadersMap, []).

-spec list_ota_tasks(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_ota_tasks_response(), tuple()} |
    {error, any()} |
    {error, list_ota_tasks_errors(), tuple()}.
list_ota_tasks(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/ota-tasks"],
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

%% @doc List the provisioning profiles within the Amazon Web Services
%% account.
-spec list_provisioning_profiles(aws_client:aws_client()) ->
    {ok, list_provisioning_profiles_response(), tuple()} |
    {error, any()} |
    {error, list_provisioning_profiles_errors(), tuple()}.
list_provisioning_profiles(Client)
  when is_map(Client) ->
    list_provisioning_profiles(Client, #{}, #{}).

-spec list_provisioning_profiles(aws_client:aws_client(), map(), map()) ->
    {ok, list_provisioning_profiles_response(), tuple()} |
    {error, any()} |
    {error, list_provisioning_profiles_errors(), tuple()}.
list_provisioning_profiles(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_provisioning_profiles(Client, QueryMap, HeadersMap, []).

-spec list_provisioning_profiles(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_provisioning_profiles_response(), tuple()} |
    {error, any()} |
    {error, list_provisioning_profiles_errors(), tuple()}.
list_provisioning_profiles(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/provisioning-profiles"],
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

%% @doc Lists schema versions with the provided information.
-spec list_schema_versions(aws_client:aws_client(), binary() | list()) ->
    {ok, list_schema_versions_response(), tuple()} |
    {error, any()} |
    {error, list_schema_versions_errors(), tuple()}.
list_schema_versions(Client, Type)
  when is_map(Client) ->
    list_schema_versions(Client, Type, #{}, #{}).

-spec list_schema_versions(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_schema_versions_response(), tuple()} |
    {error, any()} |
    {error, list_schema_versions_errors(), tuple()}.
list_schema_versions(Client, Type, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_schema_versions(Client, Type, QueryMap, HeadersMap, []).

-spec list_schema_versions(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_schema_versions_response(), tuple()} |
    {error, any()} |
    {error, list_schema_versions_errors(), tuple()}.
list_schema_versions(Client, Type, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/schema-versions/", aws_util:encode_uri(Type), ""],
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
        {<<"NamespaceFilter">>, maps:get(<<"NamespaceFilter">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)},
        {<<"SchemaIdFilter">>, maps:get(<<"SchemaIdFilter">>, QueryMap, undefined)},
        {<<"SemanticVersionFilter">>, maps:get(<<"SemanticVersionFilter">>, QueryMap, undefined)},
        {<<"VisibilityFilter">>, maps:get(<<"VisibilityFilter">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Sets the default encryption configuration for the Amazon Web Services
%% account.
%%
%% For more information,
%% see Key
%% management:
%% https://docs.aws.amazon.com/iot-sitewise/latest/userguide/key-management.html
%% in the AWS IoT SiteWise User Guide.
-spec put_default_encryption_configuration(aws_client:aws_client(), put_default_encryption_configuration_request()) ->
    {ok, put_default_encryption_configuration_response(), tuple()} |
    {error, any()} |
    {error, put_default_encryption_configuration_errors(), tuple()}.
put_default_encryption_configuration(Client, Input) ->
    put_default_encryption_configuration(Client, Input, []).

-spec put_default_encryption_configuration(aws_client:aws_client(), put_default_encryption_configuration_request(), proplists:proplist()) ->
    {ok, put_default_encryption_configuration_response(), tuple()} |
    {error, any()} |
    {error, put_default_encryption_configuration_errors(), tuple()}.
put_default_encryption_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/configuration/account/encryption"],
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

%% @doc Update a hub configuration.
-spec put_hub_configuration(aws_client:aws_client(), put_hub_configuration_request()) ->
    {ok, put_hub_configuration_response(), tuple()} |
    {error, any()} |
    {error, put_hub_configuration_errors(), tuple()}.
put_hub_configuration(Client, Input) ->
    put_hub_configuration(Client, Input, []).

-spec put_hub_configuration(aws_client:aws_client(), put_hub_configuration_request(), proplists:proplist()) ->
    {ok, put_hub_configuration_response(), tuple()} |
    {error, any()} |
    {error, put_hub_configuration_errors(), tuple()}.
put_hub_configuration(Client, Input0, Options0) ->
    Method = put,
    Path = ["/hub-configuration"],
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

%% @doc Set the runtime log configuration for a specific managed thing or for
%% all managed things
%% as a group.
-spec put_runtime_log_configuration(aws_client:aws_client(), binary() | list(), put_runtime_log_configuration_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_runtime_log_configuration_errors(), tuple()}.
put_runtime_log_configuration(Client, ManagedThingId, Input) ->
    put_runtime_log_configuration(Client, ManagedThingId, Input, []).

-spec put_runtime_log_configuration(aws_client:aws_client(), binary() | list(), put_runtime_log_configuration_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_runtime_log_configuration_errors(), tuple()}.
put_runtime_log_configuration(Client, ManagedThingId, Input0, Options0) ->
    Method = put,
    Path = ["/runtime-log-configurations/", aws_util:encode_uri(ManagedThingId), ""],
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

%% @doc Customers can request IoT managed integrations to manage the server
%% trust for them or bring their own
%% external server trusts for the custom domain.
%%
%% Returns an IoT managed integrations endpoint.
-spec register_custom_endpoint(aws_client:aws_client(), register_custom_endpoint_request()) ->
    {ok, register_custom_endpoint_response(), tuple()} |
    {error, any()} |
    {error, register_custom_endpoint_errors(), tuple()}.
register_custom_endpoint(Client, Input) ->
    register_custom_endpoint(Client, Input, []).

-spec register_custom_endpoint(aws_client:aws_client(), register_custom_endpoint_request(), proplists:proplist()) ->
    {ok, register_custom_endpoint_response(), tuple()} |
    {error, any()} |
    {error, register_custom_endpoint_errors(), tuple()}.
register_custom_endpoint(Client, Input0, Options0) ->
    Method = post,
    Path = ["/custom-endpoint"],
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

%% @doc Reset a runtime log configuration for a specific managed thing or for
%% all managed things
%% as a group.
-spec reset_runtime_log_configuration(aws_client:aws_client(), binary() | list(), reset_runtime_log_configuration_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, reset_runtime_log_configuration_errors(), tuple()}.
reset_runtime_log_configuration(Client, ManagedThingId, Input) ->
    reset_runtime_log_configuration(Client, ManagedThingId, Input, []).

-spec reset_runtime_log_configuration(aws_client:aws_client(), binary() | list(), reset_runtime_log_configuration_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, reset_runtime_log_configuration_errors(), tuple()}.
reset_runtime_log_configuration(Client, ManagedThingId, Input0, Options0) ->
    Method = delete,
    Path = ["/runtime-log-configurations/", aws_util:encode_uri(ManagedThingId), ""],
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

%% @doc Send the command to the device represented by the managed thing.
-spec send_managed_thing_command(aws_client:aws_client(), binary() | list(), send_managed_thing_command_request()) ->
    {ok, send_managed_thing_command_response(), tuple()} |
    {error, any()} |
    {error, send_managed_thing_command_errors(), tuple()}.
send_managed_thing_command(Client, ManagedThingId, Input) ->
    send_managed_thing_command(Client, ManagedThingId, Input, []).

-spec send_managed_thing_command(aws_client:aws_client(), binary() | list(), send_managed_thing_command_request(), proplists:proplist()) ->
    {ok, send_managed_thing_command_response(), tuple()} |
    {error, any()} |
    {error, send_managed_thing_command_errors(), tuple()}.
send_managed_thing_command(Client, ManagedThingId, Input0, Options0) ->
    Method = post,
    Path = ["/managed-things-command/", aws_util:encode_uri(ManagedThingId), ""],
    SuccessStatusCode = 202,
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

%% @doc During user-guided setup, this is used to start device discovery.
%%
%% The authentication
%% material (install code) is passed as a message to the controller telling
%% it to start the
%% discovery.
-spec start_device_discovery(aws_client:aws_client(), start_device_discovery_request()) ->
    {ok, start_device_discovery_response(), tuple()} |
    {error, any()} |
    {error, start_device_discovery_errors(), tuple()}.
start_device_discovery(Client, Input) ->
    start_device_discovery(Client, Input, []).

-spec start_device_discovery(aws_client:aws_client(), start_device_discovery_request(), proplists:proplist()) ->
    {ok, start_device_discovery_response(), tuple()} |
    {error, any()} |
    {error, start_device_discovery_errors(), tuple()}.
start_device_discovery(Client, Input0, Options0) ->
    Method = post,
    Path = ["/device-discoveries"],
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

%% @doc Update a destination specified by id.
-spec update_destination(aws_client:aws_client(), binary() | list(), update_destination_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_destination_errors(), tuple()}.
update_destination(Client, Name, Input) ->
    update_destination(Client, Name, Input, []).

-spec update_destination(aws_client:aws_client(), binary() | list(), update_destination_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_destination_errors(), tuple()}.
update_destination(Client, Name, Input0, Options0) ->
    Method = put,
    Path = ["/destinations/", aws_util:encode_uri(Name), ""],
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

%% @doc Update an event log configuration by log configuration ID.
-spec update_event_log_configuration(aws_client:aws_client(), binary() | list(), update_event_log_configuration_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_event_log_configuration_errors(), tuple()}.
update_event_log_configuration(Client, Id, Input) ->
    update_event_log_configuration(Client, Id, Input, []).

-spec update_event_log_configuration(aws_client:aws_client(), binary() | list(), update_event_log_configuration_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_event_log_configuration_errors(), tuple()}.
update_event_log_configuration(Client, Id, Input0, Options0) ->
    Method = patch,
    Path = ["/event-log-configurations/", aws_util:encode_uri(Id), ""],
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

%% @doc Update the attributes and capabilities associated with a managed
%% thing.
-spec update_managed_thing(aws_client:aws_client(), binary() | list(), update_managed_thing_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_managed_thing_errors(), tuple()}.
update_managed_thing(Client, Identifier, Input) ->
    update_managed_thing(Client, Identifier, Input, []).

-spec update_managed_thing(aws_client:aws_client(), binary() | list(), update_managed_thing_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_managed_thing_errors(), tuple()}.
update_managed_thing(Client, Identifier, Input0, Options0) ->
    Method = put,
    Path = ["/managed-things/", aws_util:encode_uri(Identifier), ""],
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

%% @doc Update a notification configuration.
-spec update_notification_configuration(aws_client:aws_client(), binary() | list(), update_notification_configuration_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_notification_configuration_errors(), tuple()}.
update_notification_configuration(Client, EventType, Input) ->
    update_notification_configuration(Client, EventType, Input, []).

-spec update_notification_configuration(aws_client:aws_client(), binary() | list(), update_notification_configuration_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_notification_configuration_errors(), tuple()}.
update_notification_configuration(Client, EventType, Input0, Options0) ->
    Method = put,
    Path = ["/notification-configurations/", aws_util:encode_uri(EventType), ""],
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

%% @doc Update an over-the-air (OTA) task.
-spec update_ota_task(aws_client:aws_client(), binary() | list(), update_ota_task_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_ota_task_errors(), tuple()}.
update_ota_task(Client, Identifier, Input) ->
    update_ota_task(Client, Identifier, Input, []).

-spec update_ota_task(aws_client:aws_client(), binary() | list(), update_ota_task_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_ota_task_errors(), tuple()}.
update_ota_task(Client, Identifier, Input0, Options0) ->
    Method = put,
    Path = ["/ota-tasks/", aws_util:encode_uri(Identifier), ""],
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
    Client1 = Client#{service => <<"iotmanagedintegrations">>},
    Host = build_host(<<"api.iotmanagedintegrations">>, Client1),
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
