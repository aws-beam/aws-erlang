%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc AWS IoT Greengrass seamlessly extends AWS onto physical devices so
%% they can act locally on the data they generate, while still using the
%% cloud for management, analytics, and durable storage.
%%
%% AWS IoT Greengrass ensures your devices can respond quickly to local
%% events and operate with intermittent connectivity. AWS IoT Greengrass
%% minimizes the cost of transmitting data to the cloud by allowing you to
%% author AWS Lambda functions that execute locally.
-module(aws_greengrass).

-export([associate_role_to_group/3,
         associate_role_to_group/4,
         associate_service_role_to_account/2,
         associate_service_role_to_account/3,
         create_connector_definition/2,
         create_connector_definition/3,
         create_connector_definition_version/3,
         create_connector_definition_version/4,
         create_core_definition/2,
         create_core_definition/3,
         create_core_definition_version/3,
         create_core_definition_version/4,
         create_deployment/3,
         create_deployment/4,
         create_device_definition/2,
         create_device_definition/3,
         create_device_definition_version/3,
         create_device_definition_version/4,
         create_function_definition/2,
         create_function_definition/3,
         create_function_definition_version/3,
         create_function_definition_version/4,
         create_group/2,
         create_group/3,
         create_group_certificate_authority/3,
         create_group_certificate_authority/4,
         create_group_version/3,
         create_group_version/4,
         create_logger_definition/2,
         create_logger_definition/3,
         create_logger_definition_version/3,
         create_logger_definition_version/4,
         create_resource_definition/2,
         create_resource_definition/3,
         create_resource_definition_version/3,
         create_resource_definition_version/4,
         create_software_update_job/2,
         create_software_update_job/3,
         create_subscription_definition/2,
         create_subscription_definition/3,
         create_subscription_definition_version/3,
         create_subscription_definition_version/4,
         delete_connector_definition/3,
         delete_connector_definition/4,
         delete_core_definition/3,
         delete_core_definition/4,
         delete_device_definition/3,
         delete_device_definition/4,
         delete_function_definition/3,
         delete_function_definition/4,
         delete_group/3,
         delete_group/4,
         delete_logger_definition/3,
         delete_logger_definition/4,
         delete_resource_definition/3,
         delete_resource_definition/4,
         delete_subscription_definition/3,
         delete_subscription_definition/4,
         disassociate_role_from_group/3,
         disassociate_role_from_group/4,
         disassociate_service_role_from_account/2,
         disassociate_service_role_from_account/3,
         get_associated_role/2,
         get_associated_role/4,
         get_associated_role/5,
         get_bulk_deployment_status/2,
         get_bulk_deployment_status/4,
         get_bulk_deployment_status/5,
         get_connectivity_info/2,
         get_connectivity_info/4,
         get_connectivity_info/5,
         get_connector_definition/2,
         get_connector_definition/4,
         get_connector_definition/5,
         get_connector_definition_version/3,
         get_connector_definition_version/5,
         get_connector_definition_version/6,
         get_core_definition/2,
         get_core_definition/4,
         get_core_definition/5,
         get_core_definition_version/3,
         get_core_definition_version/5,
         get_core_definition_version/6,
         get_deployment_status/3,
         get_deployment_status/5,
         get_deployment_status/6,
         get_device_definition/2,
         get_device_definition/4,
         get_device_definition/5,
         get_device_definition_version/3,
         get_device_definition_version/5,
         get_device_definition_version/6,
         get_function_definition/2,
         get_function_definition/4,
         get_function_definition/5,
         get_function_definition_version/3,
         get_function_definition_version/5,
         get_function_definition_version/6,
         get_group/2,
         get_group/4,
         get_group/5,
         get_group_certificate_authority/3,
         get_group_certificate_authority/5,
         get_group_certificate_authority/6,
         get_group_certificate_configuration/2,
         get_group_certificate_configuration/4,
         get_group_certificate_configuration/5,
         get_group_version/3,
         get_group_version/5,
         get_group_version/6,
         get_logger_definition/2,
         get_logger_definition/4,
         get_logger_definition/5,
         get_logger_definition_version/3,
         get_logger_definition_version/5,
         get_logger_definition_version/6,
         get_resource_definition/2,
         get_resource_definition/4,
         get_resource_definition/5,
         get_resource_definition_version/3,
         get_resource_definition_version/5,
         get_resource_definition_version/6,
         get_service_role_for_account/1,
         get_service_role_for_account/3,
         get_service_role_for_account/4,
         get_subscription_definition/2,
         get_subscription_definition/4,
         get_subscription_definition/5,
         get_subscription_definition_version/3,
         get_subscription_definition_version/5,
         get_subscription_definition_version/6,
         get_thing_runtime_configuration/2,
         get_thing_runtime_configuration/4,
         get_thing_runtime_configuration/5,
         list_bulk_deployment_detailed_reports/2,
         list_bulk_deployment_detailed_reports/4,
         list_bulk_deployment_detailed_reports/5,
         list_bulk_deployments/1,
         list_bulk_deployments/3,
         list_bulk_deployments/4,
         list_connector_definition_versions/2,
         list_connector_definition_versions/4,
         list_connector_definition_versions/5,
         list_connector_definitions/1,
         list_connector_definitions/3,
         list_connector_definitions/4,
         list_core_definition_versions/2,
         list_core_definition_versions/4,
         list_core_definition_versions/5,
         list_core_definitions/1,
         list_core_definitions/3,
         list_core_definitions/4,
         list_deployments/2,
         list_deployments/4,
         list_deployments/5,
         list_device_definition_versions/2,
         list_device_definition_versions/4,
         list_device_definition_versions/5,
         list_device_definitions/1,
         list_device_definitions/3,
         list_device_definitions/4,
         list_function_definition_versions/2,
         list_function_definition_versions/4,
         list_function_definition_versions/5,
         list_function_definitions/1,
         list_function_definitions/3,
         list_function_definitions/4,
         list_group_certificate_authorities/2,
         list_group_certificate_authorities/4,
         list_group_certificate_authorities/5,
         list_group_versions/2,
         list_group_versions/4,
         list_group_versions/5,
         list_groups/1,
         list_groups/3,
         list_groups/4,
         list_logger_definition_versions/2,
         list_logger_definition_versions/4,
         list_logger_definition_versions/5,
         list_logger_definitions/1,
         list_logger_definitions/3,
         list_logger_definitions/4,
         list_resource_definition_versions/2,
         list_resource_definition_versions/4,
         list_resource_definition_versions/5,
         list_resource_definitions/1,
         list_resource_definitions/3,
         list_resource_definitions/4,
         list_subscription_definition_versions/2,
         list_subscription_definition_versions/4,
         list_subscription_definition_versions/5,
         list_subscription_definitions/1,
         list_subscription_definitions/3,
         list_subscription_definitions/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         reset_deployments/3,
         reset_deployments/4,
         start_bulk_deployment/2,
         start_bulk_deployment/3,
         stop_bulk_deployment/3,
         stop_bulk_deployment/4,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_connectivity_info/3,
         update_connectivity_info/4,
         update_connector_definition/3,
         update_connector_definition/4,
         update_core_definition/3,
         update_core_definition/4,
         update_device_definition/3,
         update_device_definition/4,
         update_function_definition/3,
         update_function_definition/4,
         update_group/3,
         update_group/4,
         update_group_certificate_configuration/3,
         update_group_certificate_configuration/4,
         update_logger_definition/3,
         update_logger_definition/4,
         update_resource_definition/3,
         update_resource_definition/4,
         update_subscription_definition/3,
         update_subscription_definition/4,
         update_thing_runtime_configuration/3,
         update_thing_runtime_configuration/4]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% function_definition_version() :: #{
%%   <<"DefaultConfig">> => function_default_config(),
%%   <<"Functions">> => list(function())
%% }
-type function_definition_version() :: #{binary() => any()}.

%% Example:
%% delete_connector_definition_response() :: #{}
-type delete_connector_definition_response() :: #{}.


%% Example:
%% update_device_definition_request() :: #{
%%   <<"Name">> => string()
%% }
-type update_device_definition_request() :: #{binary() => any()}.


%% Example:
%% connector() :: #{
%%   <<"ConnectorArn">> => string(),
%%   <<"Id">> => string(),
%%   <<"Parameters">> => map()
%% }
-type connector() :: #{binary() => any()}.


%% Example:
%% create_resource_definition_version_request() :: #{
%%   <<"AmznClientToken">> => string(),
%%   <<"Resources">> => list(resource())
%% }
-type create_resource_definition_version_request() :: #{binary() => any()}.


%% Example:
%% associate_role_to_group_response() :: #{
%%   <<"AssociatedAt">> => string()
%% }
-type associate_role_to_group_response() :: #{binary() => any()}.


%% Example:
%% function_execution_config() :: #{
%%   <<"IsolationMode">> => list(any()),
%%   <<"RunAs">> => function_run_as_config()
%% }
-type function_execution_config() :: #{binary() => any()}.


%% Example:
%% local_volume_resource_data() :: #{
%%   <<"DestinationPath">> => string(),
%%   <<"GroupOwnerSetting">> => group_owner_setting(),
%%   <<"SourcePath">> => string()
%% }
-type local_volume_resource_data() :: #{binary() => any()}.


%% Example:
%% disassociate_service_role_from_account_response() :: #{
%%   <<"DisassociatedAt">> => string()
%% }
-type disassociate_service_role_from_account_response() :: #{binary() => any()}.


%% Example:
%% list_logger_definitions_request() :: #{
%%   <<"MaxResults">> => string(),
%%   <<"NextToken">> => string()
%% }
-type list_logger_definitions_request() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"tags">> => map()
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% list_deployments_request() :: #{
%%   <<"MaxResults">> => string(),
%%   <<"NextToken">> => string()
%% }
-type list_deployments_request() :: #{binary() => any()}.


%% Example:
%% update_connectivity_info_response() :: #{
%%   <<"Message">> => string(),
%%   <<"Version">> => string()
%% }
-type update_connectivity_info_response() :: #{binary() => any()}.

%% Example:
%% delete_function_definition_request() :: #{}
-type delete_function_definition_request() :: #{}.

%% Example:
%% delete_device_definition_response() :: #{}
-type delete_device_definition_response() :: #{}.

%% Example:
%% get_subscription_definition_request() :: #{}
-type get_subscription_definition_request() :: #{}.

%% Example:
%% delete_logger_definition_response() :: #{}
-type delete_logger_definition_response() :: #{}.


%% Example:
%% list_logger_definition_versions_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Versions">> => list(version_information())
%% }
-type list_logger_definition_versions_response() :: #{binary() => any()}.


%% Example:
%% update_resource_definition_request() :: #{
%%   <<"Name">> => string()
%% }
-type update_resource_definition_request() :: #{binary() => any()}.


%% Example:
%% version_information() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreationTimestamp">> => string(),
%%   <<"Id">> => string(),
%%   <<"Version">> => string()
%% }
-type version_information() :: #{binary() => any()}.


%% Example:
%% deployment() :: #{
%%   <<"CreatedAt">> => string(),
%%   <<"DeploymentArn">> => string(),
%%   <<"DeploymentId">> => string(),
%%   <<"DeploymentType">> => list(any()),
%%   <<"GroupArn">> => string()
%% }
-type deployment() :: #{binary() => any()}.

%% Example:
%% get_logger_definition_request() :: #{}
-type get_logger_definition_request() :: #{}.


%% Example:
%% secrets_manager_secret_resource_data() :: #{
%%   <<"ARN">> => string(),
%%   <<"AdditionalStagingLabelsToDownload">> => list(string())
%% }
-type secrets_manager_secret_resource_data() :: #{binary() => any()}.


%% Example:
%% get_group_certificate_authority_response() :: #{
%%   <<"GroupCertificateAuthorityArn">> => string(),
%%   <<"GroupCertificateAuthorityId">> => string(),
%%   <<"PemEncodedCertificate">> => string()
%% }
-type get_group_certificate_authority_response() :: #{binary() => any()}.


%% Example:
%% create_group_version_request() :: #{
%%   <<"AmznClientToken">> => string(),
%%   <<"ConnectorDefinitionVersionArn">> => string(),
%%   <<"CoreDefinitionVersionArn">> => string(),
%%   <<"DeviceDefinitionVersionArn">> => string(),
%%   <<"FunctionDefinitionVersionArn">> => string(),
%%   <<"LoggerDefinitionVersionArn">> => string(),
%%   <<"ResourceDefinitionVersionArn">> => string(),
%%   <<"SubscriptionDefinitionVersionArn">> => string()
%% }
-type create_group_version_request() :: #{binary() => any()}.


%% Example:
%% list_logger_definitions_response() :: #{
%%   <<"Definitions">> => list(definition_information()),
%%   <<"NextToken">> => string()
%% }
-type list_logger_definitions_response() :: #{binary() => any()}.


%% Example:
%% get_subscription_definition_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreationTimestamp">> => string(),
%%   <<"Id">> => string(),
%%   <<"LastUpdatedTimestamp">> => string(),
%%   <<"LatestVersion">> => string(),
%%   <<"LatestVersionArn">> => string(),
%%   <<"Name">> => string(),
%%   <<"tags">> => map()
%% }
-type get_subscription_definition_response() :: #{binary() => any()}.


%% Example:
%% update_thing_runtime_configuration_request() :: #{
%%   <<"TelemetryConfiguration">> => telemetry_configuration_update()
%% }
-type update_thing_runtime_configuration_request() :: #{binary() => any()}.


%% Example:
%% get_subscription_definition_version_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreationTimestamp">> => string(),
%%   <<"Definition">> => subscription_definition_version(),
%%   <<"Id">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"Version">> => string()
%% }
-type get_subscription_definition_version_response() :: #{binary() => any()}.


%% Example:
%% list_resource_definitions_request() :: #{
%%   <<"MaxResults">> => string(),
%%   <<"NextToken">> => string()
%% }
-type list_resource_definitions_request() :: #{binary() => any()}.


%% Example:
%% list_bulk_deployment_detailed_reports_request() :: #{
%%   <<"MaxResults">> => string(),
%%   <<"NextToken">> => string()
%% }
-type list_bulk_deployment_detailed_reports_request() :: #{binary() => any()}.


%% Example:
%% create_connector_definition_request() :: #{
%%   <<"AmznClientToken">> => string(),
%%   <<"InitialVersion">> => connector_definition_version(),
%%   <<"Name">> => string(),
%%   <<"tags">> => map()
%% }
-type create_connector_definition_request() :: #{binary() => any()}.


%% Example:
%% list_deployments_response() :: #{
%%   <<"Deployments">> => list(deployment()),
%%   <<"NextToken">> => string()
%% }
-type list_deployments_response() :: #{binary() => any()}.


%% Example:
%% update_core_definition_request() :: #{
%%   <<"Name">> => string()
%% }
-type update_core_definition_request() :: #{binary() => any()}.

%% Example:
%% list_group_certificate_authorities_request() :: #{}
-type list_group_certificate_authorities_request() :: #{}.


%% Example:
%% list_connector_definitions_response() :: #{
%%   <<"Definitions">> => list(definition_information()),
%%   <<"NextToken">> => string()
%% }
-type list_connector_definitions_response() :: #{binary() => any()}.


%% Example:
%% create_function_definition_version_request() :: #{
%%   <<"AmznClientToken">> => string(),
%%   <<"DefaultConfig">> => function_default_config(),
%%   <<"Functions">> => list(function())
%% }
-type create_function_definition_version_request() :: #{binary() => any()}.


%% Example:
%% create_core_definition_request() :: #{
%%   <<"AmznClientToken">> => string(),
%%   <<"InitialVersion">> => core_definition_version(),
%%   <<"Name">> => string(),
%%   <<"tags">> => map()
%% }
-type create_core_definition_request() :: #{binary() => any()}.

%% Example:
%% get_associated_role_request() :: #{}
-type get_associated_role_request() :: #{}.


%% Example:
%% resource_definition_version() :: #{
%%   <<"Resources">> => list(resource())
%% }
-type resource_definition_version() :: #{binary() => any()}.


%% Example:
%% get_logger_definition_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreationTimestamp">> => string(),
%%   <<"Id">> => string(),
%%   <<"LastUpdatedTimestamp">> => string(),
%%   <<"LatestVersion">> => string(),
%%   <<"LatestVersionArn">> => string(),
%%   <<"Name">> => string(),
%%   <<"tags">> => map()
%% }
-type get_logger_definition_response() :: #{binary() => any()}.


%% Example:
%% function_default_config() :: #{
%%   <<"Execution">> => function_default_execution_config()
%% }
-type function_default_config() :: #{binary() => any()}.


%% Example:
%% get_function_definition_version_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreationTimestamp">> => string(),
%%   <<"Definition">> => function_definition_version(),
%%   <<"Id">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"Version">> => string()
%% }
-type get_function_definition_version_response() :: #{binary() => any()}.


%% Example:
%% group_owner_setting() :: #{
%%   <<"AutoAddGroupOwner">> => boolean(),
%%   <<"GroupOwner">> => string()
%% }
-type group_owner_setting() :: #{binary() => any()}.


%% Example:
%% create_device_definition_request() :: #{
%%   <<"AmznClientToken">> => string(),
%%   <<"InitialVersion">> => device_definition_version(),
%%   <<"Name">> => string(),
%%   <<"tags">> => map()
%% }
-type create_device_definition_request() :: #{binary() => any()}.


%% Example:
%% runtime_configuration() :: #{
%%   <<"TelemetryConfiguration">> => telemetry_configuration()
%% }
-type runtime_configuration() :: #{binary() => any()}.


%% Example:
%% list_subscription_definition_versions_request() :: #{
%%   <<"MaxResults">> => string(),
%%   <<"NextToken">> => string()
%% }
-type list_subscription_definition_versions_request() :: #{binary() => any()}.


%% Example:
%% create_deployment_request() :: #{
%%   <<"AmznClientToken">> => string(),
%%   <<"DeploymentId">> => string(),
%%   <<"DeploymentType">> := list(any()),
%%   <<"GroupVersionId">> => string()
%% }
-type create_deployment_request() :: #{binary() => any()}.


%% Example:
%% create_device_definition_version_request() :: #{
%%   <<"AmznClientToken">> => string(),
%%   <<"Devices">> => list(device())
%% }
-type create_device_definition_version_request() :: #{binary() => any()}.


%% Example:
%% function_run_as_config() :: #{
%%   <<"Gid">> => integer(),
%%   <<"Uid">> => integer()
%% }
-type function_run_as_config() :: #{binary() => any()}.


%% Example:
%% telemetry_configuration_update() :: #{
%%   <<"Telemetry">> => list(any())
%% }
-type telemetry_configuration_update() :: #{binary() => any()}.

%% Example:
%% delete_subscription_definition_request() :: #{}
-type delete_subscription_definition_request() :: #{}.


%% Example:
%% list_bulk_deployments_response() :: #{
%%   <<"BulkDeployments">> => list(bulk_deployment()),
%%   <<"NextToken">> => string()
%% }
-type list_bulk_deployments_response() :: #{binary() => any()}.


%% Example:
%% create_resource_definition_request() :: #{
%%   <<"AmznClientToken">> => string(),
%%   <<"InitialVersion">> => resource_definition_version(),
%%   <<"Name">> => string(),
%%   <<"tags">> => map()
%% }
-type create_resource_definition_request() :: #{binary() => any()}.


%% Example:
%% list_resource_definitions_response() :: #{
%%   <<"Definitions">> => list(definition_information()),
%%   <<"NextToken">> => string()
%% }
-type list_resource_definitions_response() :: #{binary() => any()}.


%% Example:
%% subscription_definition_version() :: #{
%%   <<"Subscriptions">> => list(subscription())
%% }
-type subscription_definition_version() :: #{binary() => any()}.


%% Example:
%% update_group_certificate_configuration_request() :: #{
%%   <<"CertificateExpiryInMilliseconds">> => string()
%% }
-type update_group_certificate_configuration_request() :: #{binary() => any()}.

%% Example:
%% get_function_definition_request() :: #{}
-type get_function_definition_request() :: #{}.


%% Example:
%% create_software_update_job_response() :: #{
%%   <<"IotJobArn">> => string(),
%%   <<"IotJobId">> => string(),
%%   <<"PlatformSoftwareVersion">> => string()
%% }
-type create_software_update_job_response() :: #{binary() => any()}.


%% Example:
%% definition_information() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreationTimestamp">> => string(),
%%   <<"Id">> => string(),
%%   <<"LastUpdatedTimestamp">> => string(),
%%   <<"LatestVersion">> => string(),
%%   <<"LatestVersionArn">> => string(),
%%   <<"Name">> => string(),
%%   <<"Tags">> => map()
%% }
-type definition_information() :: #{binary() => any()}.


%% Example:
%% create_deployment_response() :: #{
%%   <<"DeploymentArn">> => string(),
%%   <<"DeploymentId">> => string()
%% }
-type create_deployment_response() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"TagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% connector_definition_version() :: #{
%%   <<"Connectors">> => list(connector())
%% }
-type connector_definition_version() :: #{binary() => any()}.


%% Example:
%% function_configuration_environment() :: #{
%%   <<"AccessSysfs">> => boolean(),
%%   <<"Execution">> => function_execution_config(),
%%   <<"ResourceAccessPolicies">> => list(resource_access_policy()),
%%   <<"Variables">> => map()
%% }
-type function_configuration_environment() :: #{binary() => any()}.


%% Example:
%% get_device_definition_version_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreationTimestamp">> => string(),
%%   <<"Definition">> => device_definition_version(),
%%   <<"Id">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"Version">> => string()
%% }
-type get_device_definition_version_response() :: #{binary() => any()}.

%% Example:
%% delete_resource_definition_request() :: #{}
-type delete_resource_definition_request() :: #{}.

%% Example:
%% get_service_role_for_account_request() :: #{}
-type get_service_role_for_account_request() :: #{}.


%% Example:
%% update_group_request() :: #{
%%   <<"Name">> => string()
%% }
-type update_group_request() :: #{binary() => any()}.


%% Example:
%% create_function_definition_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreationTimestamp">> => string(),
%%   <<"Id">> => string(),
%%   <<"LastUpdatedTimestamp">> => string(),
%%   <<"LatestVersion">> => string(),
%%   <<"LatestVersionArn">> => string(),
%%   <<"Name">> => string()
%% }
-type create_function_definition_response() :: #{binary() => any()}.


%% Example:
%% core_definition_version() :: #{
%%   <<"Cores">> => list(core())
%% }
-type core_definition_version() :: #{binary() => any()}.


%% Example:
%% get_associated_role_response() :: #{
%%   <<"AssociatedAt">> => string(),
%%   <<"RoleArn">> => string()
%% }
-type get_associated_role_response() :: #{binary() => any()}.

%% Example:
%% delete_function_definition_response() :: #{}
-type delete_function_definition_response() :: #{}.


%% Example:
%% update_connectivity_info_request() :: #{
%%   <<"ConnectivityInfo">> => list(connectivity_info())
%% }
-type update_connectivity_info_request() :: #{binary() => any()}.

%% Example:
%% delete_core_definition_request() :: #{}
-type delete_core_definition_request() :: #{}.

%% Example:
%% delete_connector_definition_request() :: #{}
-type delete_connector_definition_request() :: #{}.


%% Example:
%% disassociate_role_from_group_response() :: #{
%%   <<"DisassociatedAt">> => string()
%% }
-type disassociate_role_from_group_response() :: #{binary() => any()}.


%% Example:
%% get_core_definition_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreationTimestamp">> => string(),
%%   <<"Id">> => string(),
%%   <<"LastUpdatedTimestamp">> => string(),
%%   <<"LatestVersion">> => string(),
%%   <<"LatestVersionArn">> => string(),
%%   <<"Name">> => string(),
%%   <<"tags">> => map()
%% }
-type get_core_definition_response() :: #{binary() => any()}.


%% Example:
%% get_resource_definition_version_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreationTimestamp">> => string(),
%%   <<"Definition">> => resource_definition_version(),
%%   <<"Id">> => string(),
%%   <<"Version">> => string()
%% }
-type get_resource_definition_version_response() :: #{binary() => any()}.


%% Example:
%% create_core_definition_version_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreationTimestamp">> => string(),
%%   <<"Id">> => string(),
%%   <<"Version">> => string()
%% }
-type create_core_definition_version_response() :: #{binary() => any()}.

%% Example:
%% get_connector_definition_request() :: #{}
-type get_connector_definition_request() :: #{}.


%% Example:
%% telemetry_configuration() :: #{
%%   <<"ConfigurationSyncStatus">> => list(any()),
%%   <<"Telemetry">> => list(any())
%% }
-type telemetry_configuration() :: #{binary() => any()}.


%% Example:
%% resource_download_owner_setting() :: #{
%%   <<"GroupOwner">> => string(),
%%   <<"GroupPermission">> => list(any())
%% }
-type resource_download_owner_setting() :: #{binary() => any()}.


%% Example:
%% list_core_definition_versions_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Versions">> => list(version_information())
%% }
-type list_core_definition_versions_response() :: #{binary() => any()}.


%% Example:
%% create_subscription_definition_version_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreationTimestamp">> => string(),
%%   <<"Id">> => string(),
%%   <<"Version">> => string()
%% }
-type create_subscription_definition_version_response() :: #{binary() => any()}.


%% Example:
%% list_bulk_deployment_detailed_reports_response() :: #{
%%   <<"Deployments">> => list(bulk_deployment_result()),
%%   <<"NextToken">> => string()
%% }
-type list_bulk_deployment_detailed_reports_response() :: #{binary() => any()}.


%% Example:
%% connectivity_info() :: #{
%%   <<"HostAddress">> => string(),
%%   <<"Id">> => string(),
%%   <<"Metadata">> => string(),
%%   <<"PortNumber">> => integer()
%% }
-type connectivity_info() :: #{binary() => any()}.


%% Example:
%% get_connectivity_info_response() :: #{
%%   <<"ConnectivityInfo">> => list(connectivity_info()),
%%   <<"Message">> => string()
%% }
-type get_connectivity_info_response() :: #{binary() => any()}.


%% Example:
%% create_connector_definition_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreationTimestamp">> => string(),
%%   <<"Id">> => string(),
%%   <<"LastUpdatedTimestamp">> => string(),
%%   <<"LatestVersion">> => string(),
%%   <<"LatestVersionArn">> => string(),
%%   <<"Name">> => string()
%% }
-type create_connector_definition_response() :: #{binary() => any()}.


%% Example:
%% device_definition_version() :: #{
%%   <<"Devices">> => list(device())
%% }
-type device_definition_version() :: #{binary() => any()}.


%% Example:
%% list_function_definitions_response() :: #{
%%   <<"Definitions">> => list(definition_information()),
%%   <<"NextToken">> => string()
%% }
-type list_function_definitions_response() :: #{binary() => any()}.

%% Example:
%% stop_bulk_deployment_request() :: #{}
-type stop_bulk_deployment_request() :: #{}.


%% Example:
%% list_group_versions_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Versions">> => list(version_information())
%% }
-type list_group_versions_response() :: #{binary() => any()}.


%% Example:
%% create_connector_definition_version_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreationTimestamp">> => string(),
%%   <<"Id">> => string(),
%%   <<"Version">> => string()
%% }
-type create_connector_definition_version_response() :: #{binary() => any()}.


%% Example:
%% list_subscription_definition_versions_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Versions">> => list(version_information())
%% }
-type list_subscription_definition_versions_response() :: #{binary() => any()}.


%% Example:
%% list_connector_definitions_request() :: #{
%%   <<"MaxResults">> => string(),
%%   <<"NextToken">> => string()
%% }
-type list_connector_definitions_request() :: #{binary() => any()}.


%% Example:
%% update_logger_definition_request() :: #{
%%   <<"Name">> => string()
%% }
-type update_logger_definition_request() :: #{binary() => any()}.

%% Example:
%% get_group_certificate_authority_request() :: #{}
-type get_group_certificate_authority_request() :: #{}.


%% Example:
%% resource_data_container() :: #{
%%   <<"LocalDeviceResourceData">> => local_device_resource_data(),
%%   <<"LocalVolumeResourceData">> => local_volume_resource_data(),
%%   <<"S3MachineLearningModelResourceData">> => s3_machine_learning_model_resource_data(),
%%   <<"SageMakerMachineLearningModelResourceData">> => sage_maker_machine_learning_model_resource_data(),
%%   <<"SecretsManagerSecretResourceData">> => secrets_manager_secret_resource_data()
%% }
-type resource_data_container() :: #{binary() => any()}.


%% Example:
%% create_group_certificate_authority_response() :: #{
%%   <<"GroupCertificateAuthorityArn">> => string()
%% }
-type create_group_certificate_authority_response() :: #{binary() => any()}.

%% Example:
%% update_function_definition_response() :: #{}
-type update_function_definition_response() :: #{}.


%% Example:
%% create_subscription_definition_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreationTimestamp">> => string(),
%%   <<"Id">> => string(),
%%   <<"LastUpdatedTimestamp">> => string(),
%%   <<"LatestVersion">> => string(),
%%   <<"LatestVersionArn">> => string(),
%%   <<"Name">> => string()
%% }
-type create_subscription_definition_response() :: #{binary() => any()}.

%% Example:
%% delete_device_definition_request() :: #{}
-type delete_device_definition_request() :: #{}.


%% Example:
%% update_subscription_definition_request() :: #{
%%   <<"Name">> => string()
%% }
-type update_subscription_definition_request() :: #{binary() => any()}.


%% Example:
%% list_group_certificate_authorities_response() :: #{
%%   <<"GroupCertificateAuthorities">> => list(group_certificate_authority_properties())
%% }
-type list_group_certificate_authorities_response() :: #{binary() => any()}.


%% Example:
%% local_device_resource_data() :: #{
%%   <<"GroupOwnerSetting">> => group_owner_setting(),
%%   <<"SourcePath">> => string()
%% }
-type local_device_resource_data() :: #{binary() => any()}.

%% Example:
%% get_core_definition_version_request() :: #{}
-type get_core_definition_version_request() :: #{}.


%% Example:
%% get_connector_definition_version_request() :: #{
%%   <<"NextToken">> => string()
%% }
-type get_connector_definition_version_request() :: #{binary() => any()}.


%% Example:
%% reset_deployments_response() :: #{
%%   <<"DeploymentArn">> => string(),
%%   <<"DeploymentId">> => string()
%% }
-type reset_deployments_response() :: #{binary() => any()}.


%% Example:
%% list_resource_definition_versions_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Versions">> => list(version_information())
%% }
-type list_resource_definition_versions_response() :: #{binary() => any()}.


%% Example:
%% get_deployment_status_response() :: #{
%%   <<"DeploymentStatus">> => string(),
%%   <<"DeploymentType">> => list(any()),
%%   <<"ErrorDetails">> => list(error_detail()),
%%   <<"ErrorMessage">> => string(),
%%   <<"UpdatedAt">> => string()
%% }
-type get_deployment_status_response() :: #{binary() => any()}.


%% Example:
%% group_certificate_authority_properties() :: #{
%%   <<"GroupCertificateAuthorityArn">> => string(),
%%   <<"GroupCertificateAuthorityId">> => string()
%% }
-type group_certificate_authority_properties() :: #{binary() => any()}.

%% Example:
%% update_core_definition_response() :: #{}
-type update_core_definition_response() :: #{}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% group_information() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreationTimestamp">> => string(),
%%   <<"Id">> => string(),
%%   <<"LastUpdatedTimestamp">> => string(),
%%   <<"LatestVersion">> => string(),
%%   <<"LatestVersionArn">> => string(),
%%   <<"Name">> => string()
%% }
-type group_information() :: #{binary() => any()}.


%% Example:
%% create_logger_definition_version_request() :: #{
%%   <<"AmznClientToken">> => string(),
%%   <<"Loggers">> => list(logger())
%% }
-type create_logger_definition_version_request() :: #{binary() => any()}.


%% Example:
%% get_function_definition_version_request() :: #{
%%   <<"NextToken">> => string()
%% }
-type get_function_definition_version_request() :: #{binary() => any()}.

%% Example:
%% get_group_certificate_configuration_request() :: #{}
-type get_group_certificate_configuration_request() :: #{}.


%% Example:
%% bulk_deployment() :: #{
%%   <<"BulkDeploymentArn">> => string(),
%%   <<"BulkDeploymentId">> => string(),
%%   <<"CreatedAt">> => string()
%% }
-type bulk_deployment() :: #{binary() => any()}.


%% Example:
%% update_connector_definition_request() :: #{
%%   <<"Name">> => string()
%% }
-type update_connector_definition_request() :: #{binary() => any()}.


%% Example:
%% greengrass_function() :: #{
%%   <<"FunctionArn">> => string(),
%%   <<"FunctionConfiguration">> => function_configuration(),
%%   <<"Id">> => string()
%% }
-type greengrass_function() :: #{binary() => any()}.


%% Example:
%% create_group_request() :: #{
%%   <<"AmznClientToken">> => string(),
%%   <<"InitialVersion">> => group_version(),
%%   <<"Name">> := string(),
%%   <<"tags">> => map()
%% }
-type create_group_request() :: #{binary() => any()}.

%% Example:
%% disassociate_role_from_group_request() :: #{}
-type disassociate_role_from_group_request() :: #{}.


%% Example:
%% sage_maker_machine_learning_model_resource_data() :: #{
%%   <<"DestinationPath">> => string(),
%%   <<"OwnerSetting">> => resource_download_owner_setting(),
%%   <<"SageMakerJobArn">> => string()
%% }
-type sage_maker_machine_learning_model_resource_data() :: #{binary() => any()}.


%% Example:
%% get_thing_runtime_configuration_response() :: #{
%%   <<"RuntimeConfiguration">> => runtime_configuration()
%% }
-type get_thing_runtime_configuration_response() :: #{binary() => any()}.

%% Example:
%% get_connectivity_info_request() :: #{}
-type get_connectivity_info_request() :: #{}.

%% Example:
%% get_resource_definition_version_request() :: #{}
-type get_resource_definition_version_request() :: #{}.


%% Example:
%% create_resource_definition_version_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreationTimestamp">> => string(),
%%   <<"Id">> => string(),
%%   <<"Version">> => string()
%% }
-type create_resource_definition_version_response() :: #{binary() => any()}.


%% Example:
%% associate_service_role_to_account_request() :: #{
%%   <<"RoleArn">> := string()
%% }
-type associate_service_role_to_account_request() :: #{binary() => any()}.


%% Example:
%% get_device_definition_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreationTimestamp">> => string(),
%%   <<"Id">> => string(),
%%   <<"LastUpdatedTimestamp">> => string(),
%%   <<"LatestVersion">> => string(),
%%   <<"LatestVersionArn">> => string(),
%%   <<"Name">> => string(),
%%   <<"tags">> => map()
%% }
-type get_device_definition_response() :: #{binary() => any()}.


%% Example:
%% reset_deployments_request() :: #{
%%   <<"AmznClientToken">> => string(),
%%   <<"Force">> => boolean()
%% }
-type reset_deployments_request() :: #{binary() => any()}.


%% Example:
%% list_bulk_deployments_request() :: #{
%%   <<"MaxResults">> => string(),
%%   <<"NextToken">> => string()
%% }
-type list_bulk_deployments_request() :: #{binary() => any()}.


%% Example:
%% get_logger_definition_version_request() :: #{
%%   <<"NextToken">> => string()
%% }
-type get_logger_definition_version_request() :: #{binary() => any()}.


%% Example:
%% update_group_certificate_configuration_response() :: #{
%%   <<"CertificateAuthorityExpiryInMilliseconds">> => string(),
%%   <<"CertificateExpiryInMilliseconds">> => string(),
%%   <<"GroupId">> => string()
%% }
-type update_group_certificate_configuration_response() :: #{binary() => any()}.


%% Example:
%% list_device_definitions_response() :: #{
%%   <<"Definitions">> => list(definition_information()),
%%   <<"NextToken">> => string()
%% }
-type list_device_definitions_response() :: #{binary() => any()}.


%% Example:
%% list_device_definition_versions_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Versions">> => list(version_information())
%% }
-type list_device_definition_versions_response() :: #{binary() => any()}.


%% Example:
%% get_function_definition_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreationTimestamp">> => string(),
%%   <<"Id">> => string(),
%%   <<"LastUpdatedTimestamp">> => string(),
%%   <<"LatestVersion">> => string(),
%%   <<"LatestVersionArn">> => string(),
%%   <<"Name">> => string(),
%%   <<"tags">> => map()
%% }
-type get_function_definition_response() :: #{binary() => any()}.


%% Example:
%% get_group_version_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreationTimestamp">> => string(),
%%   <<"Definition">> => group_version(),
%%   <<"Id">> => string(),
%%   <<"Version">> => string()
%% }
-type get_group_version_response() :: #{binary() => any()}.


%% Example:
%% logger() :: #{
%%   <<"Component">> => list(any()),
%%   <<"Id">> => string(),
%%   <<"Level">> => list(any()),
%%   <<"Space">> => integer(),
%%   <<"Type">> => list(any())
%% }
-type logger() :: #{binary() => any()}.


%% Example:
%% create_logger_definition_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreationTimestamp">> => string(),
%%   <<"Id">> => string(),
%%   <<"LastUpdatedTimestamp">> => string(),
%%   <<"LatestVersion">> => string(),
%%   <<"LatestVersionArn">> => string(),
%%   <<"Name">> => string()
%% }
-type create_logger_definition_response() :: #{binary() => any()}.


%% Example:
%% create_function_definition_request() :: #{
%%   <<"AmznClientToken">> => string(),
%%   <<"InitialVersion">> => function_definition_version(),
%%   <<"Name">> => string(),
%%   <<"tags">> => map()
%% }
-type create_function_definition_request() :: #{binary() => any()}.


%% Example:
%% group_version() :: #{
%%   <<"ConnectorDefinitionVersionArn">> => string(),
%%   <<"CoreDefinitionVersionArn">> => string(),
%%   <<"DeviceDefinitionVersionArn">> => string(),
%%   <<"FunctionDefinitionVersionArn">> => string(),
%%   <<"LoggerDefinitionVersionArn">> => string(),
%%   <<"ResourceDefinitionVersionArn">> => string(),
%%   <<"SubscriptionDefinitionVersionArn">> => string()
%% }
-type group_version() :: #{binary() => any()}.


%% Example:
%% error_detail() :: #{
%%   <<"DetailedErrorCode">> => string(),
%%   <<"DetailedErrorMessage">> => string()
%% }
-type error_detail() :: #{binary() => any()}.


%% Example:
%% function_default_execution_config() :: #{
%%   <<"IsolationMode">> => list(any()),
%%   <<"RunAs">> => function_run_as_config()
%% }
-type function_default_execution_config() :: #{binary() => any()}.


%% Example:
%% logger_definition_version() :: #{
%%   <<"Loggers">> => list(logger())
%% }
-type logger_definition_version() :: #{binary() => any()}.


%% Example:
%% list_device_definition_versions_request() :: #{
%%   <<"MaxResults">> => string(),
%%   <<"NextToken">> => string()
%% }
-type list_device_definition_versions_request() :: #{binary() => any()}.

%% Example:
%% delete_group_response() :: #{}
-type delete_group_response() :: #{}.


%% Example:
%% core() :: #{
%%   <<"CertificateArn">> => string(),
%%   <<"Id">> => string(),
%%   <<"SyncShadow">> => boolean(),
%%   <<"ThingArn">> => string()
%% }
-type core() :: #{binary() => any()}.

%% Example:
%% get_deployment_status_request() :: #{}
-type get_deployment_status_request() :: #{}.


%% Example:
%% create_logger_definition_version_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreationTimestamp">> => string(),
%%   <<"Id">> => string(),
%%   <<"Version">> => string()
%% }
-type create_logger_definition_version_response() :: #{binary() => any()}.


%% Example:
%% create_function_definition_version_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreationTimestamp">> => string(),
%%   <<"Id">> => string(),
%%   <<"Version">> => string()
%% }
-type create_function_definition_version_response() :: #{binary() => any()}.


%% Example:
%% list_resource_definition_versions_request() :: #{
%%   <<"MaxResults">> => string(),
%%   <<"NextToken">> => string()
%% }
-type list_resource_definition_versions_request() :: #{binary() => any()}.


%% Example:
%% create_core_definition_version_request() :: #{
%%   <<"AmznClientToken">> => string(),
%%   <<"Cores">> => list(core())
%% }
-type create_core_definition_version_request() :: #{binary() => any()}.

%% Example:
%% get_device_definition_request() :: #{}
-type get_device_definition_request() :: #{}.


%% Example:
%% create_subscription_definition_version_request() :: #{
%%   <<"AmznClientToken">> => string(),
%%   <<"Subscriptions">> => list(subscription())
%% }
-type create_subscription_definition_version_request() :: #{binary() => any()}.


%% Example:
%% list_connector_definition_versions_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Versions">> => list(version_information())
%% }
-type list_connector_definition_versions_response() :: #{binary() => any()}.


%% Example:
%% list_logger_definition_versions_request() :: #{
%%   <<"MaxResults">> => string(),
%%   <<"NextToken">> => string()
%% }
-type list_logger_definition_versions_request() :: #{binary() => any()}.


%% Example:
%% get_logger_definition_version_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreationTimestamp">> => string(),
%%   <<"Definition">> => logger_definition_version(),
%%   <<"Id">> => string(),
%%   <<"Version">> => string()
%% }
-type get_logger_definition_version_response() :: #{binary() => any()}.


%% Example:
%% update_function_definition_request() :: #{
%%   <<"Name">> => string()
%% }
-type update_function_definition_request() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% get_group_certificate_configuration_response() :: #{
%%   <<"CertificateAuthorityExpiryInMilliseconds">> => string(),
%%   <<"CertificateExpiryInMilliseconds">> => string(),
%%   <<"GroupId">> => string()
%% }
-type get_group_certificate_configuration_response() :: #{binary() => any()}.


%% Example:
%% function_configuration() :: #{
%%   <<"EncodingType">> => list(any()),
%%   <<"Environment">> => function_configuration_environment(),
%%   <<"ExecArgs">> => string(),
%%   <<"Executable">> => string(),
%%   <<"FunctionRuntimeOverride">> => string(),
%%   <<"MemorySize">> => integer(),
%%   <<"Pinned">> => boolean(),
%%   <<"Timeout">> => integer()
%% }
-type function_configuration() :: #{binary() => any()}.


%% Example:
%% start_bulk_deployment_request() :: #{
%%   <<"AmznClientToken">> => string(),
%%   <<"ExecutionRoleArn">> := string(),
%%   <<"InputFileUri">> := string(),
%%   <<"tags">> => map()
%% }
-type start_bulk_deployment_request() :: #{binary() => any()}.


%% Example:
%% create_group_certificate_authority_request() :: #{
%%   <<"AmznClientToken">> => string()
%% }
-type create_group_certificate_authority_request() :: #{binary() => any()}.

%% Example:
%% get_bulk_deployment_status_request() :: #{}
-type get_bulk_deployment_status_request() :: #{}.


%% Example:
%% internal_server_error_exception() :: #{
%%   <<"ErrorDetails">> => list(error_detail()),
%%   <<"Message">> => string()
%% }
-type internal_server_error_exception() :: #{binary() => any()}.


%% Example:
%% start_bulk_deployment_response() :: #{
%%   <<"BulkDeploymentArn">> => string(),
%%   <<"BulkDeploymentId">> => string()
%% }
-type start_bulk_deployment_response() :: #{binary() => any()}.

%% Example:
%% get_group_version_request() :: #{}
-type get_group_version_request() :: #{}.


%% Example:
%% list_function_definition_versions_request() :: #{
%%   <<"MaxResults">> => string(),
%%   <<"NextToken">> => string()
%% }
-type list_function_definition_versions_request() :: #{binary() => any()}.


%% Example:
%% get_group_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreationTimestamp">> => string(),
%%   <<"Id">> => string(),
%%   <<"LastUpdatedTimestamp">> => string(),
%%   <<"LatestVersion">> => string(),
%%   <<"LatestVersionArn">> => string(),
%%   <<"Name">> => string(),
%%   <<"tags">> => map()
%% }
-type get_group_response() :: #{binary() => any()}.


%% Example:
%% list_connector_definition_versions_request() :: #{
%%   <<"MaxResults">> => string(),
%%   <<"NextToken">> => string()
%% }
-type list_connector_definition_versions_request() :: #{binary() => any()}.


%% Example:
%% subscription() :: #{
%%   <<"Id">> => string(),
%%   <<"Source">> => string(),
%%   <<"Subject">> => string(),
%%   <<"Target">> => string()
%% }
-type subscription() :: #{binary() => any()}.


%% Example:
%% create_device_definition_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreationTimestamp">> => string(),
%%   <<"Id">> => string(),
%%   <<"LastUpdatedTimestamp">> => string(),
%%   <<"LatestVersion">> => string(),
%%   <<"LatestVersionArn">> => string(),
%%   <<"Name">> => string()
%% }
-type create_device_definition_response() :: #{binary() => any()}.

%% Example:
%% update_thing_runtime_configuration_response() :: #{}
-type update_thing_runtime_configuration_response() :: #{}.


%% Example:
%% list_group_versions_request() :: #{
%%   <<"MaxResults">> => string(),
%%   <<"NextToken">> => string()
%% }
-type list_group_versions_request() :: #{binary() => any()}.


%% Example:
%% create_group_version_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreationTimestamp">> => string(),
%%   <<"Id">> => string(),
%%   <<"Version">> => string()
%% }
-type create_group_version_response() :: #{binary() => any()}.


%% Example:
%% create_device_definition_version_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreationTimestamp">> => string(),
%%   <<"Id">> => string(),
%%   <<"Version">> => string()
%% }
-type create_device_definition_version_response() :: #{binary() => any()}.

%% Example:
%% delete_group_request() :: #{}
-type delete_group_request() :: #{}.

%% Example:
%% get_resource_definition_request() :: #{}
-type get_resource_definition_request() :: #{}.


%% Example:
%% bulk_deployment_result() :: #{
%%   <<"CreatedAt">> => string(),
%%   <<"DeploymentArn">> => string(),
%%   <<"DeploymentId">> => string(),
%%   <<"DeploymentStatus">> => string(),
%%   <<"DeploymentType">> => list(any()),
%%   <<"ErrorDetails">> => list(error_detail()),
%%   <<"ErrorMessage">> => string(),
%%   <<"GroupArn">> => string()
%% }
-type bulk_deployment_result() :: #{binary() => any()}.


%% Example:
%% create_resource_definition_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreationTimestamp">> => string(),
%%   <<"Id">> => string(),
%%   <<"LastUpdatedTimestamp">> => string(),
%%   <<"LatestVersion">> => string(),
%%   <<"LatestVersionArn">> => string(),
%%   <<"Name">> => string()
%% }
-type create_resource_definition_response() :: #{binary() => any()}.


%% Example:
%% list_core_definitions_response() :: #{
%%   <<"Definitions">> => list(definition_information()),
%%   <<"NextToken">> => string()
%% }
-type list_core_definitions_response() :: #{binary() => any()}.


%% Example:
%% get_device_definition_version_request() :: #{
%%   <<"NextToken">> => string()
%% }
-type get_device_definition_version_request() :: #{binary() => any()}.


%% Example:
%% bulk_deployment_metrics() :: #{
%%   <<"InvalidInputRecords">> => integer(),
%%   <<"RecordsProcessed">> => integer(),
%%   <<"RetryAttempts">> => integer()
%% }
-type bulk_deployment_metrics() :: #{binary() => any()}.


%% Example:
%% bad_request_exception() :: #{
%%   <<"ErrorDetails">> => list(error_detail()),
%%   <<"Message">> => string()
%% }
-type bad_request_exception() :: #{binary() => any()}.

%% Example:
%% delete_resource_definition_response() :: #{}
-type delete_resource_definition_response() :: #{}.


%% Example:
%% list_subscription_definitions_response() :: #{
%%   <<"Definitions">> => list(definition_information()),
%%   <<"NextToken">> => string()
%% }
-type list_subscription_definitions_response() :: #{binary() => any()}.


%% Example:
%% get_core_definition_version_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreationTimestamp">> => string(),
%%   <<"Definition">> => core_definition_version(),
%%   <<"Id">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"Version">> => string()
%% }
-type get_core_definition_version_response() :: #{binary() => any()}.


%% Example:
%% get_subscription_definition_version_request() :: #{
%%   <<"NextToken">> => string()
%% }
-type get_subscription_definition_version_request() :: #{binary() => any()}.

%% Example:
%% update_connector_definition_response() :: #{}
-type update_connector_definition_response() :: #{}.


%% Example:
%% get_connector_definition_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreationTimestamp">> => string(),
%%   <<"Id">> => string(),
%%   <<"LastUpdatedTimestamp">> => string(),
%%   <<"LatestVersion">> => string(),
%%   <<"LatestVersionArn">> => string(),
%%   <<"Name">> => string(),
%%   <<"tags">> => map()
%% }
-type get_connector_definition_response() :: #{binary() => any()}.


%% Example:
%% device() :: #{
%%   <<"CertificateArn">> => string(),
%%   <<"Id">> => string(),
%%   <<"SyncShadow">> => boolean(),
%%   <<"ThingArn">> => string()
%% }
-type device() :: #{binary() => any()}.

%% Example:
%% delete_subscription_definition_response() :: #{}
-type delete_subscription_definition_response() :: #{}.


%% Example:
%% create_core_definition_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreationTimestamp">> => string(),
%%   <<"Id">> => string(),
%%   <<"LastUpdatedTimestamp">> => string(),
%%   <<"LatestVersion">> => string(),
%%   <<"LatestVersionArn">> => string(),
%%   <<"Name">> => string()
%% }
-type create_core_definition_response() :: #{binary() => any()}.

%% Example:
%% stop_bulk_deployment_response() :: #{}
-type stop_bulk_deployment_response() :: #{}.


%% Example:
%% create_software_update_job_request() :: #{
%%   <<"AmznClientToken">> => string(),
%%   <<"S3UrlSignerRole">> := string(),
%%   <<"SoftwareToUpdate">> := list(any()),
%%   <<"UpdateAgentLogLevel">> => list(any()),
%%   <<"UpdateTargets">> := list(string()),
%%   <<"UpdateTargetsArchitecture">> := list(any()),
%%   <<"UpdateTargetsOperatingSystem">> := list(any())
%% }
-type create_software_update_job_request() :: #{binary() => any()}.


%% Example:
%% create_connector_definition_version_request() :: #{
%%   <<"AmznClientToken">> => string(),
%%   <<"Connectors">> => list(connector())
%% }
-type create_connector_definition_version_request() :: #{binary() => any()}.


%% Example:
%% list_groups_response() :: #{
%%   <<"Groups">> => list(group_information()),
%%   <<"NextToken">> => string()
%% }
-type list_groups_response() :: #{binary() => any()}.

%% Example:
%% get_group_request() :: #{}
-type get_group_request() :: #{}.


%% Example:
%% list_subscription_definitions_request() :: #{
%%   <<"MaxResults">> => string(),
%%   <<"NextToken">> => string()
%% }
-type list_subscription_definitions_request() :: #{binary() => any()}.


%% Example:
%% get_service_role_for_account_response() :: #{
%%   <<"AssociatedAt">> => string(),
%%   <<"RoleArn">> => string()
%% }
-type get_service_role_for_account_response() :: #{binary() => any()}.


%% Example:
%% list_core_definitions_request() :: #{
%%   <<"MaxResults">> => string(),
%%   <<"NextToken">> => string()
%% }
-type list_core_definitions_request() :: #{binary() => any()}.

%% Example:
%% update_subscription_definition_response() :: #{}
-type update_subscription_definition_response() :: #{}.


%% Example:
%% list_function_definitions_request() :: #{
%%   <<"MaxResults">> => string(),
%%   <<"NextToken">> => string()
%% }
-type list_function_definitions_request() :: #{binary() => any()}.


%% Example:
%% list_core_definition_versions_request() :: #{
%%   <<"MaxResults">> => string(),
%%   <<"NextToken">> => string()
%% }
-type list_core_definition_versions_request() :: #{binary() => any()}.

%% Example:
%% get_thing_runtime_configuration_request() :: #{}
-type get_thing_runtime_configuration_request() :: #{}.


%% Example:
%% list_groups_request() :: #{
%%   <<"MaxResults">> => string(),
%%   <<"NextToken">> => string()
%% }
-type list_groups_request() :: #{binary() => any()}.


%% Example:
%% list_function_definition_versions_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Versions">> => list(version_information())
%% }
-type list_function_definition_versions_response() :: #{binary() => any()}.


%% Example:
%% get_resource_definition_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreationTimestamp">> => string(),
%%   <<"Id">> => string(),
%%   <<"LastUpdatedTimestamp">> => string(),
%%   <<"LatestVersion">> => string(),
%%   <<"LatestVersionArn">> => string(),
%%   <<"Name">> => string(),
%%   <<"tags">> => map()
%% }
-type get_resource_definition_response() :: #{binary() => any()}.


%% Example:
%% get_bulk_deployment_status_response() :: #{
%%   <<"BulkDeploymentMetrics">> => bulk_deployment_metrics(),
%%   <<"BulkDeploymentStatus">> => list(any()),
%%   <<"CreatedAt">> => string(),
%%   <<"ErrorDetails">> => list(error_detail()),
%%   <<"ErrorMessage">> => string(),
%%   <<"tags">> => map()
%% }
-type get_bulk_deployment_status_response() :: #{binary() => any()}.

%% Example:
%% update_logger_definition_response() :: #{}
-type update_logger_definition_response() :: #{}.

%% Example:
%% update_group_response() :: #{}
-type update_group_response() :: #{}.


%% Example:
%% associate_service_role_to_account_response() :: #{
%%   <<"AssociatedAt">> => string()
%% }
-type associate_service_role_to_account_response() :: #{binary() => any()}.


%% Example:
%% resource_access_policy() :: #{
%%   <<"Permission">> => list(any()),
%%   <<"ResourceId">> => string()
%% }
-type resource_access_policy() :: #{binary() => any()}.


%% Example:
%% create_subscription_definition_request() :: #{
%%   <<"AmznClientToken">> => string(),
%%   <<"InitialVersion">> => subscription_definition_version(),
%%   <<"Name">> => string(),
%%   <<"tags">> => map()
%% }
-type create_subscription_definition_request() :: #{binary() => any()}.

%% Example:
%% delete_core_definition_response() :: #{}
-type delete_core_definition_response() :: #{}.


%% Example:
%% s3_machine_learning_model_resource_data() :: #{
%%   <<"DestinationPath">> => string(),
%%   <<"OwnerSetting">> => resource_download_owner_setting(),
%%   <<"S3Uri">> => string()
%% }
-type s3_machine_learning_model_resource_data() :: #{binary() => any()}.


%% Example:
%% get_connector_definition_version_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreationTimestamp">> => string(),
%%   <<"Definition">> => connector_definition_version(),
%%   <<"Id">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"Version">> => string()
%% }
-type get_connector_definition_version_response() :: #{binary() => any()}.

%% Example:
%% delete_logger_definition_request() :: #{}
-type delete_logger_definition_request() :: #{}.

%% Example:
%% disassociate_service_role_from_account_request() :: #{}
-type disassociate_service_role_from_account_request() :: #{}.


%% Example:
%% create_group_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreationTimestamp">> => string(),
%%   <<"Id">> => string(),
%%   <<"LastUpdatedTimestamp">> => string(),
%%   <<"LatestVersion">> => string(),
%%   <<"LatestVersionArn">> => string(),
%%   <<"Name">> => string()
%% }
-type create_group_response() :: #{binary() => any()}.

%% Example:
%% update_device_definition_response() :: #{}
-type update_device_definition_response() :: #{}.


%% Example:
%% associate_role_to_group_request() :: #{
%%   <<"RoleArn">> := string()
%% }
-type associate_role_to_group_request() :: #{binary() => any()}.

%% Example:
%% update_resource_definition_response() :: #{}
-type update_resource_definition_response() :: #{}.


%% Example:
%% list_device_definitions_request() :: #{
%%   <<"MaxResults">> => string(),
%%   <<"NextToken">> => string()
%% }
-type list_device_definitions_request() :: #{binary() => any()}.

%% Example:
%% get_core_definition_request() :: #{}
-type get_core_definition_request() :: #{}.


%% Example:
%% create_logger_definition_request() :: #{
%%   <<"AmznClientToken">> => string(),
%%   <<"InitialVersion">> => logger_definition_version(),
%%   <<"Name">> => string(),
%%   <<"tags">> => map()
%% }
-type create_logger_definition_request() :: #{binary() => any()}.


%% Example:
%% resource() :: #{
%%   <<"Id">> => string(),
%%   <<"Name">> => string(),
%%   <<"ResourceDataContainer">> => resource_data_container()
%% }
-type resource() :: #{binary() => any()}.

-type associate_role_to_group_errors() ::
    bad_request_exception() | 
    internal_server_error_exception().

-type associate_service_role_to_account_errors() ::
    bad_request_exception() | 
    internal_server_error_exception().

-type create_connector_definition_errors() ::
    bad_request_exception().

-type create_connector_definition_version_errors() ::
    bad_request_exception().

-type create_core_definition_errors() ::
    bad_request_exception().

-type create_core_definition_version_errors() ::
    bad_request_exception().

-type create_deployment_errors() ::
    bad_request_exception().

-type create_device_definition_errors() ::
    bad_request_exception().

-type create_device_definition_version_errors() ::
    bad_request_exception().

-type create_function_definition_errors() ::
    bad_request_exception().

-type create_function_definition_version_errors() ::
    bad_request_exception().

-type create_group_errors() ::
    bad_request_exception().

-type create_group_certificate_authority_errors() ::
    bad_request_exception() | 
    internal_server_error_exception().

-type create_group_version_errors() ::
    bad_request_exception().

-type create_logger_definition_errors() ::
    bad_request_exception().

-type create_logger_definition_version_errors() ::
    bad_request_exception().

-type create_resource_definition_errors() ::
    bad_request_exception().

-type create_resource_definition_version_errors() ::
    bad_request_exception().

-type create_software_update_job_errors() ::
    bad_request_exception() | 
    internal_server_error_exception().

-type create_subscription_definition_errors() ::
    bad_request_exception().

-type create_subscription_definition_version_errors() ::
    bad_request_exception().

-type delete_connector_definition_errors() ::
    bad_request_exception().

-type delete_core_definition_errors() ::
    bad_request_exception().

-type delete_device_definition_errors() ::
    bad_request_exception().

-type delete_function_definition_errors() ::
    bad_request_exception().

-type delete_group_errors() ::
    bad_request_exception().

-type delete_logger_definition_errors() ::
    bad_request_exception().

-type delete_resource_definition_errors() ::
    bad_request_exception().

-type delete_subscription_definition_errors() ::
    bad_request_exception().

-type disassociate_role_from_group_errors() ::
    bad_request_exception() | 
    internal_server_error_exception().

-type disassociate_service_role_from_account_errors() ::
    internal_server_error_exception().

-type get_associated_role_errors() ::
    bad_request_exception() | 
    internal_server_error_exception().

-type get_bulk_deployment_status_errors() ::
    bad_request_exception().

-type get_connectivity_info_errors() ::
    bad_request_exception() | 
    internal_server_error_exception().

-type get_connector_definition_errors() ::
    bad_request_exception().

-type get_connector_definition_version_errors() ::
    bad_request_exception().

-type get_core_definition_errors() ::
    bad_request_exception().

-type get_core_definition_version_errors() ::
    bad_request_exception().

-type get_deployment_status_errors() ::
    bad_request_exception().

-type get_device_definition_errors() ::
    bad_request_exception().

-type get_device_definition_version_errors() ::
    bad_request_exception().

-type get_function_definition_errors() ::
    bad_request_exception().

-type get_function_definition_version_errors() ::
    bad_request_exception().

-type get_group_errors() ::
    bad_request_exception().

-type get_group_certificate_authority_errors() ::
    bad_request_exception() | 
    internal_server_error_exception().

-type get_group_certificate_configuration_errors() ::
    bad_request_exception() | 
    internal_server_error_exception().

-type get_group_version_errors() ::
    bad_request_exception().

-type get_logger_definition_errors() ::
    bad_request_exception().

-type get_logger_definition_version_errors() ::
    bad_request_exception().

-type get_resource_definition_errors() ::
    bad_request_exception().

-type get_resource_definition_version_errors() ::
    bad_request_exception().

-type get_service_role_for_account_errors() ::
    internal_server_error_exception().

-type get_subscription_definition_errors() ::
    bad_request_exception().

-type get_subscription_definition_version_errors() ::
    bad_request_exception().

-type get_thing_runtime_configuration_errors() ::
    bad_request_exception() | 
    internal_server_error_exception().

-type list_bulk_deployment_detailed_reports_errors() ::
    bad_request_exception().

-type list_bulk_deployments_errors() ::
    bad_request_exception().

-type list_connector_definition_versions_errors() ::
    bad_request_exception().

-type list_core_definition_versions_errors() ::
    bad_request_exception().

-type list_deployments_errors() ::
    bad_request_exception().

-type list_device_definition_versions_errors() ::
    bad_request_exception().

-type list_function_definition_versions_errors() ::
    bad_request_exception().

-type list_group_certificate_authorities_errors() ::
    bad_request_exception() | 
    internal_server_error_exception().

-type list_group_versions_errors() ::
    bad_request_exception().

-type list_logger_definition_versions_errors() ::
    bad_request_exception().

-type list_resource_definition_versions_errors() ::
    bad_request_exception().

-type list_subscription_definition_versions_errors() ::
    bad_request_exception().

-type list_tags_for_resource_errors() ::
    bad_request_exception().

-type reset_deployments_errors() ::
    bad_request_exception().

-type start_bulk_deployment_errors() ::
    bad_request_exception().

-type stop_bulk_deployment_errors() ::
    bad_request_exception().

-type tag_resource_errors() ::
    bad_request_exception().

-type untag_resource_errors() ::
    bad_request_exception().

-type update_connectivity_info_errors() ::
    bad_request_exception() | 
    internal_server_error_exception().

-type update_connector_definition_errors() ::
    bad_request_exception().

-type update_core_definition_errors() ::
    bad_request_exception().

-type update_device_definition_errors() ::
    bad_request_exception().

-type update_function_definition_errors() ::
    bad_request_exception().

-type update_group_errors() ::
    bad_request_exception().

-type update_group_certificate_configuration_errors() ::
    bad_request_exception() | 
    internal_server_error_exception().

-type update_logger_definition_errors() ::
    bad_request_exception().

-type update_resource_definition_errors() ::
    bad_request_exception().

-type update_subscription_definition_errors() ::
    bad_request_exception().

-type update_thing_runtime_configuration_errors() ::
    bad_request_exception() | 
    internal_server_error_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Associates a role with a group.
%%
%% Your Greengrass core will use the role to access AWS cloud services. The
%% role's permissions should allow Greengrass core Lambda functions to
%% perform actions against the cloud.
-spec associate_role_to_group(aws_client:aws_client(), binary() | list(), associate_role_to_group_request()) ->
    {ok, associate_role_to_group_response(), tuple()} |
    {error, any()} |
    {error, associate_role_to_group_errors(), tuple()}.
associate_role_to_group(Client, GroupId, Input) ->
    associate_role_to_group(Client, GroupId, Input, []).

-spec associate_role_to_group(aws_client:aws_client(), binary() | list(), associate_role_to_group_request(), proplists:proplist()) ->
    {ok, associate_role_to_group_response(), tuple()} |
    {error, any()} |
    {error, associate_role_to_group_errors(), tuple()}.
associate_role_to_group(Client, GroupId, Input0, Options0) ->
    Method = put,
    Path = ["/greengrass/groups/", aws_util:encode_uri(GroupId), "/role"],
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

%% @doc Associates a role with your account.
%%
%% AWS IoT Greengrass will use the role to access your Lambda functions and
%% AWS IoT resources. This is necessary for deployments to succeed. The role
%% must have at least minimum permissions in the policy
%% ''AWSGreengrassResourceAccessRolePolicy''.
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

%% @doc Creates a connector definition.
%%
%% You may provide the initial version of the connector definition now or use
%% ''CreateConnectorDefinitionVersion'' at a later time.
-spec create_connector_definition(aws_client:aws_client(), create_connector_definition_request()) ->
    {ok, create_connector_definition_response(), tuple()} |
    {error, any()} |
    {error, create_connector_definition_errors(), tuple()}.
create_connector_definition(Client, Input) ->
    create_connector_definition(Client, Input, []).

-spec create_connector_definition(aws_client:aws_client(), create_connector_definition_request(), proplists:proplist()) ->
    {ok, create_connector_definition_response(), tuple()} |
    {error, any()} |
    {error, create_connector_definition_errors(), tuple()}.
create_connector_definition(Client, Input0, Options0) ->
    Method = post,
    Path = ["/greengrass/definition/connectors"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Amzn-Client-Token">>, <<"AmznClientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a version of a connector definition which has already been
%% defined.
-spec create_connector_definition_version(aws_client:aws_client(), binary() | list(), create_connector_definition_version_request()) ->
    {ok, create_connector_definition_version_response(), tuple()} |
    {error, any()} |
    {error, create_connector_definition_version_errors(), tuple()}.
create_connector_definition_version(Client, ConnectorDefinitionId, Input) ->
    create_connector_definition_version(Client, ConnectorDefinitionId, Input, []).

-spec create_connector_definition_version(aws_client:aws_client(), binary() | list(), create_connector_definition_version_request(), proplists:proplist()) ->
    {ok, create_connector_definition_version_response(), tuple()} |
    {error, any()} |
    {error, create_connector_definition_version_errors(), tuple()}.
create_connector_definition_version(Client, ConnectorDefinitionId, Input0, Options0) ->
    Method = post,
    Path = ["/greengrass/definition/connectors/", aws_util:encode_uri(ConnectorDefinitionId), "/versions"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Amzn-Client-Token">>, <<"AmznClientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a core definition.
%%
%% You may provide the initial version of the core definition now or use
%% ''CreateCoreDefinitionVersion'' at a later time.
%% Greengrass groups must each contain exactly one Greengrass core.
-spec create_core_definition(aws_client:aws_client(), create_core_definition_request()) ->
    {ok, create_core_definition_response(), tuple()} |
    {error, any()} |
    {error, create_core_definition_errors(), tuple()}.
create_core_definition(Client, Input) ->
    create_core_definition(Client, Input, []).

-spec create_core_definition(aws_client:aws_client(), create_core_definition_request(), proplists:proplist()) ->
    {ok, create_core_definition_response(), tuple()} |
    {error, any()} |
    {error, create_core_definition_errors(), tuple()}.
create_core_definition(Client, Input0, Options0) ->
    Method = post,
    Path = ["/greengrass/definition/cores"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Amzn-Client-Token">>, <<"AmznClientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a version of a core definition that has already been defined.
%%
%% Greengrass groups must each contain exactly one Greengrass core.
-spec create_core_definition_version(aws_client:aws_client(), binary() | list(), create_core_definition_version_request()) ->
    {ok, create_core_definition_version_response(), tuple()} |
    {error, any()} |
    {error, create_core_definition_version_errors(), tuple()}.
create_core_definition_version(Client, CoreDefinitionId, Input) ->
    create_core_definition_version(Client, CoreDefinitionId, Input, []).

-spec create_core_definition_version(aws_client:aws_client(), binary() | list(), create_core_definition_version_request(), proplists:proplist()) ->
    {ok, create_core_definition_version_response(), tuple()} |
    {error, any()} |
    {error, create_core_definition_version_errors(), tuple()}.
create_core_definition_version(Client, CoreDefinitionId, Input0, Options0) ->
    Method = post,
    Path = ["/greengrass/definition/cores/", aws_util:encode_uri(CoreDefinitionId), "/versions"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Amzn-Client-Token">>, <<"AmznClientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a deployment.
%%
%% ''CreateDeployment'' requests are idempotent with respect
%% to the ''X-Amzn-Client-Token'' token and the request
%% parameters.
-spec create_deployment(aws_client:aws_client(), binary() | list(), create_deployment_request()) ->
    {ok, create_deployment_response(), tuple()} |
    {error, any()} |
    {error, create_deployment_errors(), tuple()}.
create_deployment(Client, GroupId, Input) ->
    create_deployment(Client, GroupId, Input, []).

-spec create_deployment(aws_client:aws_client(), binary() | list(), create_deployment_request(), proplists:proplist()) ->
    {ok, create_deployment_response(), tuple()} |
    {error, any()} |
    {error, create_deployment_errors(), tuple()}.
create_deployment(Client, GroupId, Input0, Options0) ->
    Method = post,
    Path = ["/greengrass/groups/", aws_util:encode_uri(GroupId), "/deployments"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Amzn-Client-Token">>, <<"AmznClientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a device definition.
%%
%% You may provide the initial version of the device definition now or use
%% ''CreateDeviceDefinitionVersion'' at a later time.
-spec create_device_definition(aws_client:aws_client(), create_device_definition_request()) ->
    {ok, create_device_definition_response(), tuple()} |
    {error, any()} |
    {error, create_device_definition_errors(), tuple()}.
create_device_definition(Client, Input) ->
    create_device_definition(Client, Input, []).

-spec create_device_definition(aws_client:aws_client(), create_device_definition_request(), proplists:proplist()) ->
    {ok, create_device_definition_response(), tuple()} |
    {error, any()} |
    {error, create_device_definition_errors(), tuple()}.
create_device_definition(Client, Input0, Options0) ->
    Method = post,
    Path = ["/greengrass/definition/devices"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Amzn-Client-Token">>, <<"AmznClientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a version of a device definition that has already been
%% defined.
-spec create_device_definition_version(aws_client:aws_client(), binary() | list(), create_device_definition_version_request()) ->
    {ok, create_device_definition_version_response(), tuple()} |
    {error, any()} |
    {error, create_device_definition_version_errors(), tuple()}.
create_device_definition_version(Client, DeviceDefinitionId, Input) ->
    create_device_definition_version(Client, DeviceDefinitionId, Input, []).

-spec create_device_definition_version(aws_client:aws_client(), binary() | list(), create_device_definition_version_request(), proplists:proplist()) ->
    {ok, create_device_definition_version_response(), tuple()} |
    {error, any()} |
    {error, create_device_definition_version_errors(), tuple()}.
create_device_definition_version(Client, DeviceDefinitionId, Input0, Options0) ->
    Method = post,
    Path = ["/greengrass/definition/devices/", aws_util:encode_uri(DeviceDefinitionId), "/versions"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Amzn-Client-Token">>, <<"AmznClientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a Lambda function definition which contains a list of Lambda
%% functions and their configurations to be used in a group.
%%
%% You can create an initial version of the definition by providing a list of
%% Lambda functions and their configurations now, or use
%% ''CreateFunctionDefinitionVersion'' later.
-spec create_function_definition(aws_client:aws_client(), create_function_definition_request()) ->
    {ok, create_function_definition_response(), tuple()} |
    {error, any()} |
    {error, create_function_definition_errors(), tuple()}.
create_function_definition(Client, Input) ->
    create_function_definition(Client, Input, []).

-spec create_function_definition(aws_client:aws_client(), create_function_definition_request(), proplists:proplist()) ->
    {ok, create_function_definition_response(), tuple()} |
    {error, any()} |
    {error, create_function_definition_errors(), tuple()}.
create_function_definition(Client, Input0, Options0) ->
    Method = post,
    Path = ["/greengrass/definition/functions"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Amzn-Client-Token">>, <<"AmznClientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a version of a Lambda function definition that has already
%% been defined.
-spec create_function_definition_version(aws_client:aws_client(), binary() | list(), create_function_definition_version_request()) ->
    {ok, create_function_definition_version_response(), tuple()} |
    {error, any()} |
    {error, create_function_definition_version_errors(), tuple()}.
create_function_definition_version(Client, FunctionDefinitionId, Input) ->
    create_function_definition_version(Client, FunctionDefinitionId, Input, []).

-spec create_function_definition_version(aws_client:aws_client(), binary() | list(), create_function_definition_version_request(), proplists:proplist()) ->
    {ok, create_function_definition_version_response(), tuple()} |
    {error, any()} |
    {error, create_function_definition_version_errors(), tuple()}.
create_function_definition_version(Client, FunctionDefinitionId, Input0, Options0) ->
    Method = post,
    Path = ["/greengrass/definition/functions/", aws_util:encode_uri(FunctionDefinitionId), "/versions"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Amzn-Client-Token">>, <<"AmznClientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a group.
%%
%% You may provide the initial version of the group or use
%% ''CreateGroupVersion'' at a later time. Tip: You can use
%% the ''gg_group_setup'' package
%% (https://github.com/awslabs/aws-greengrass-group-setup) as a library or
%% command-line application to create and deploy Greengrass groups.
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
    Path = ["/greengrass/groups"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Amzn-Client-Token">>, <<"AmznClientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a CA for the group.
%%
%% If a CA already exists, it will rotate the existing CA.
-spec create_group_certificate_authority(aws_client:aws_client(), binary() | list(), create_group_certificate_authority_request()) ->
    {ok, create_group_certificate_authority_response(), tuple()} |
    {error, any()} |
    {error, create_group_certificate_authority_errors(), tuple()}.
create_group_certificate_authority(Client, GroupId, Input) ->
    create_group_certificate_authority(Client, GroupId, Input, []).

-spec create_group_certificate_authority(aws_client:aws_client(), binary() | list(), create_group_certificate_authority_request(), proplists:proplist()) ->
    {ok, create_group_certificate_authority_response(), tuple()} |
    {error, any()} |
    {error, create_group_certificate_authority_errors(), tuple()}.
create_group_certificate_authority(Client, GroupId, Input0, Options0) ->
    Method = post,
    Path = ["/greengrass/groups/", aws_util:encode_uri(GroupId), "/certificateauthorities"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Amzn-Client-Token">>, <<"AmznClientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a version of a group which has already been defined.
-spec create_group_version(aws_client:aws_client(), binary() | list(), create_group_version_request()) ->
    {ok, create_group_version_response(), tuple()} |
    {error, any()} |
    {error, create_group_version_errors(), tuple()}.
create_group_version(Client, GroupId, Input) ->
    create_group_version(Client, GroupId, Input, []).

-spec create_group_version(aws_client:aws_client(), binary() | list(), create_group_version_request(), proplists:proplist()) ->
    {ok, create_group_version_response(), tuple()} |
    {error, any()} |
    {error, create_group_version_errors(), tuple()}.
create_group_version(Client, GroupId, Input0, Options0) ->
    Method = post,
    Path = ["/greengrass/groups/", aws_util:encode_uri(GroupId), "/versions"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Amzn-Client-Token">>, <<"AmznClientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a logger definition.
%%
%% You may provide the initial version of the logger definition now or use
%% ''CreateLoggerDefinitionVersion'' at a later time.
-spec create_logger_definition(aws_client:aws_client(), create_logger_definition_request()) ->
    {ok, create_logger_definition_response(), tuple()} |
    {error, any()} |
    {error, create_logger_definition_errors(), tuple()}.
create_logger_definition(Client, Input) ->
    create_logger_definition(Client, Input, []).

-spec create_logger_definition(aws_client:aws_client(), create_logger_definition_request(), proplists:proplist()) ->
    {ok, create_logger_definition_response(), tuple()} |
    {error, any()} |
    {error, create_logger_definition_errors(), tuple()}.
create_logger_definition(Client, Input0, Options0) ->
    Method = post,
    Path = ["/greengrass/definition/loggers"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Amzn-Client-Token">>, <<"AmznClientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a version of a logger definition that has already been
%% defined.
-spec create_logger_definition_version(aws_client:aws_client(), binary() | list(), create_logger_definition_version_request()) ->
    {ok, create_logger_definition_version_response(), tuple()} |
    {error, any()} |
    {error, create_logger_definition_version_errors(), tuple()}.
create_logger_definition_version(Client, LoggerDefinitionId, Input) ->
    create_logger_definition_version(Client, LoggerDefinitionId, Input, []).

-spec create_logger_definition_version(aws_client:aws_client(), binary() | list(), create_logger_definition_version_request(), proplists:proplist()) ->
    {ok, create_logger_definition_version_response(), tuple()} |
    {error, any()} |
    {error, create_logger_definition_version_errors(), tuple()}.
create_logger_definition_version(Client, LoggerDefinitionId, Input0, Options0) ->
    Method = post,
    Path = ["/greengrass/definition/loggers/", aws_util:encode_uri(LoggerDefinitionId), "/versions"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Amzn-Client-Token">>, <<"AmznClientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a resource definition which contains a list of resources to
%% be used in a group.
%%
%% You can create an initial version of the definition by providing a list of
%% resources now, or use ''CreateResourceDefinitionVersion''
%% later.
-spec create_resource_definition(aws_client:aws_client(), create_resource_definition_request()) ->
    {ok, create_resource_definition_response(), tuple()} |
    {error, any()} |
    {error, create_resource_definition_errors(), tuple()}.
create_resource_definition(Client, Input) ->
    create_resource_definition(Client, Input, []).

-spec create_resource_definition(aws_client:aws_client(), create_resource_definition_request(), proplists:proplist()) ->
    {ok, create_resource_definition_response(), tuple()} |
    {error, any()} |
    {error, create_resource_definition_errors(), tuple()}.
create_resource_definition(Client, Input0, Options0) ->
    Method = post,
    Path = ["/greengrass/definition/resources"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Amzn-Client-Token">>, <<"AmznClientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a version of a resource definition that has already been
%% defined.
-spec create_resource_definition_version(aws_client:aws_client(), binary() | list(), create_resource_definition_version_request()) ->
    {ok, create_resource_definition_version_response(), tuple()} |
    {error, any()} |
    {error, create_resource_definition_version_errors(), tuple()}.
create_resource_definition_version(Client, ResourceDefinitionId, Input) ->
    create_resource_definition_version(Client, ResourceDefinitionId, Input, []).

-spec create_resource_definition_version(aws_client:aws_client(), binary() | list(), create_resource_definition_version_request(), proplists:proplist()) ->
    {ok, create_resource_definition_version_response(), tuple()} |
    {error, any()} |
    {error, create_resource_definition_version_errors(), tuple()}.
create_resource_definition_version(Client, ResourceDefinitionId, Input0, Options0) ->
    Method = post,
    Path = ["/greengrass/definition/resources/", aws_util:encode_uri(ResourceDefinitionId), "/versions"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Amzn-Client-Token">>, <<"AmznClientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a software update for a core or group of cores (specified as
%% an IoT thing group.) Use this to update the OTA Agent as well as the
%% Greengrass core software.
%%
%% It makes use of the IoT Jobs feature which provides additional commands to
%% manage a Greengrass core software update job.
-spec create_software_update_job(aws_client:aws_client(), create_software_update_job_request()) ->
    {ok, create_software_update_job_response(), tuple()} |
    {error, any()} |
    {error, create_software_update_job_errors(), tuple()}.
create_software_update_job(Client, Input) ->
    create_software_update_job(Client, Input, []).

-spec create_software_update_job(aws_client:aws_client(), create_software_update_job_request(), proplists:proplist()) ->
    {ok, create_software_update_job_response(), tuple()} |
    {error, any()} |
    {error, create_software_update_job_errors(), tuple()}.
create_software_update_job(Client, Input0, Options0) ->
    Method = post,
    Path = ["/greengrass/updates"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Amzn-Client-Token">>, <<"AmznClientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a subscription definition.
%%
%% You may provide the initial version of the subscription definition now or
%% use ''CreateSubscriptionDefinitionVersion'' at a later
%% time.
-spec create_subscription_definition(aws_client:aws_client(), create_subscription_definition_request()) ->
    {ok, create_subscription_definition_response(), tuple()} |
    {error, any()} |
    {error, create_subscription_definition_errors(), tuple()}.
create_subscription_definition(Client, Input) ->
    create_subscription_definition(Client, Input, []).

-spec create_subscription_definition(aws_client:aws_client(), create_subscription_definition_request(), proplists:proplist()) ->
    {ok, create_subscription_definition_response(), tuple()} |
    {error, any()} |
    {error, create_subscription_definition_errors(), tuple()}.
create_subscription_definition(Client, Input0, Options0) ->
    Method = post,
    Path = ["/greengrass/definition/subscriptions"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Amzn-Client-Token">>, <<"AmznClientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a version of a subscription definition which has already been
%% defined.
-spec create_subscription_definition_version(aws_client:aws_client(), binary() | list(), create_subscription_definition_version_request()) ->
    {ok, create_subscription_definition_version_response(), tuple()} |
    {error, any()} |
    {error, create_subscription_definition_version_errors(), tuple()}.
create_subscription_definition_version(Client, SubscriptionDefinitionId, Input) ->
    create_subscription_definition_version(Client, SubscriptionDefinitionId, Input, []).

-spec create_subscription_definition_version(aws_client:aws_client(), binary() | list(), create_subscription_definition_version_request(), proplists:proplist()) ->
    {ok, create_subscription_definition_version_response(), tuple()} |
    {error, any()} |
    {error, create_subscription_definition_version_errors(), tuple()}.
create_subscription_definition_version(Client, SubscriptionDefinitionId, Input0, Options0) ->
    Method = post,
    Path = ["/greengrass/definition/subscriptions/", aws_util:encode_uri(SubscriptionDefinitionId), "/versions"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Amzn-Client-Token">>, <<"AmznClientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a connector definition.
-spec delete_connector_definition(aws_client:aws_client(), binary() | list(), delete_connector_definition_request()) ->
    {ok, delete_connector_definition_response(), tuple()} |
    {error, any()} |
    {error, delete_connector_definition_errors(), tuple()}.
delete_connector_definition(Client, ConnectorDefinitionId, Input) ->
    delete_connector_definition(Client, ConnectorDefinitionId, Input, []).

-spec delete_connector_definition(aws_client:aws_client(), binary() | list(), delete_connector_definition_request(), proplists:proplist()) ->
    {ok, delete_connector_definition_response(), tuple()} |
    {error, any()} |
    {error, delete_connector_definition_errors(), tuple()}.
delete_connector_definition(Client, ConnectorDefinitionId, Input0, Options0) ->
    Method = delete,
    Path = ["/greengrass/definition/connectors/", aws_util:encode_uri(ConnectorDefinitionId), ""],
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

%% @doc Deletes a core definition.
-spec delete_core_definition(aws_client:aws_client(), binary() | list(), delete_core_definition_request()) ->
    {ok, delete_core_definition_response(), tuple()} |
    {error, any()} |
    {error, delete_core_definition_errors(), tuple()}.
delete_core_definition(Client, CoreDefinitionId, Input) ->
    delete_core_definition(Client, CoreDefinitionId, Input, []).

-spec delete_core_definition(aws_client:aws_client(), binary() | list(), delete_core_definition_request(), proplists:proplist()) ->
    {ok, delete_core_definition_response(), tuple()} |
    {error, any()} |
    {error, delete_core_definition_errors(), tuple()}.
delete_core_definition(Client, CoreDefinitionId, Input0, Options0) ->
    Method = delete,
    Path = ["/greengrass/definition/cores/", aws_util:encode_uri(CoreDefinitionId), ""],
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

%% @doc Deletes a device definition.
-spec delete_device_definition(aws_client:aws_client(), binary() | list(), delete_device_definition_request()) ->
    {ok, delete_device_definition_response(), tuple()} |
    {error, any()} |
    {error, delete_device_definition_errors(), tuple()}.
delete_device_definition(Client, DeviceDefinitionId, Input) ->
    delete_device_definition(Client, DeviceDefinitionId, Input, []).

-spec delete_device_definition(aws_client:aws_client(), binary() | list(), delete_device_definition_request(), proplists:proplist()) ->
    {ok, delete_device_definition_response(), tuple()} |
    {error, any()} |
    {error, delete_device_definition_errors(), tuple()}.
delete_device_definition(Client, DeviceDefinitionId, Input0, Options0) ->
    Method = delete,
    Path = ["/greengrass/definition/devices/", aws_util:encode_uri(DeviceDefinitionId), ""],
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

%% @doc Deletes a Lambda function definition.
-spec delete_function_definition(aws_client:aws_client(), binary() | list(), delete_function_definition_request()) ->
    {ok, delete_function_definition_response(), tuple()} |
    {error, any()} |
    {error, delete_function_definition_errors(), tuple()}.
delete_function_definition(Client, FunctionDefinitionId, Input) ->
    delete_function_definition(Client, FunctionDefinitionId, Input, []).

-spec delete_function_definition(aws_client:aws_client(), binary() | list(), delete_function_definition_request(), proplists:proplist()) ->
    {ok, delete_function_definition_response(), tuple()} |
    {error, any()} |
    {error, delete_function_definition_errors(), tuple()}.
delete_function_definition(Client, FunctionDefinitionId, Input0, Options0) ->
    Method = delete,
    Path = ["/greengrass/definition/functions/", aws_util:encode_uri(FunctionDefinitionId), ""],
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

%% @doc Deletes a group.
-spec delete_group(aws_client:aws_client(), binary() | list(), delete_group_request()) ->
    {ok, delete_group_response(), tuple()} |
    {error, any()} |
    {error, delete_group_errors(), tuple()}.
delete_group(Client, GroupId, Input) ->
    delete_group(Client, GroupId, Input, []).

-spec delete_group(aws_client:aws_client(), binary() | list(), delete_group_request(), proplists:proplist()) ->
    {ok, delete_group_response(), tuple()} |
    {error, any()} |
    {error, delete_group_errors(), tuple()}.
delete_group(Client, GroupId, Input0, Options0) ->
    Method = delete,
    Path = ["/greengrass/groups/", aws_util:encode_uri(GroupId), ""],
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

%% @doc Deletes a logger definition.
-spec delete_logger_definition(aws_client:aws_client(), binary() | list(), delete_logger_definition_request()) ->
    {ok, delete_logger_definition_response(), tuple()} |
    {error, any()} |
    {error, delete_logger_definition_errors(), tuple()}.
delete_logger_definition(Client, LoggerDefinitionId, Input) ->
    delete_logger_definition(Client, LoggerDefinitionId, Input, []).

-spec delete_logger_definition(aws_client:aws_client(), binary() | list(), delete_logger_definition_request(), proplists:proplist()) ->
    {ok, delete_logger_definition_response(), tuple()} |
    {error, any()} |
    {error, delete_logger_definition_errors(), tuple()}.
delete_logger_definition(Client, LoggerDefinitionId, Input0, Options0) ->
    Method = delete,
    Path = ["/greengrass/definition/loggers/", aws_util:encode_uri(LoggerDefinitionId), ""],
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

%% @doc Deletes a resource definition.
-spec delete_resource_definition(aws_client:aws_client(), binary() | list(), delete_resource_definition_request()) ->
    {ok, delete_resource_definition_response(), tuple()} |
    {error, any()} |
    {error, delete_resource_definition_errors(), tuple()}.
delete_resource_definition(Client, ResourceDefinitionId, Input) ->
    delete_resource_definition(Client, ResourceDefinitionId, Input, []).

-spec delete_resource_definition(aws_client:aws_client(), binary() | list(), delete_resource_definition_request(), proplists:proplist()) ->
    {ok, delete_resource_definition_response(), tuple()} |
    {error, any()} |
    {error, delete_resource_definition_errors(), tuple()}.
delete_resource_definition(Client, ResourceDefinitionId, Input0, Options0) ->
    Method = delete,
    Path = ["/greengrass/definition/resources/", aws_util:encode_uri(ResourceDefinitionId), ""],
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

%% @doc Deletes a subscription definition.
-spec delete_subscription_definition(aws_client:aws_client(), binary() | list(), delete_subscription_definition_request()) ->
    {ok, delete_subscription_definition_response(), tuple()} |
    {error, any()} |
    {error, delete_subscription_definition_errors(), tuple()}.
delete_subscription_definition(Client, SubscriptionDefinitionId, Input) ->
    delete_subscription_definition(Client, SubscriptionDefinitionId, Input, []).

-spec delete_subscription_definition(aws_client:aws_client(), binary() | list(), delete_subscription_definition_request(), proplists:proplist()) ->
    {ok, delete_subscription_definition_response(), tuple()} |
    {error, any()} |
    {error, delete_subscription_definition_errors(), tuple()}.
delete_subscription_definition(Client, SubscriptionDefinitionId, Input0, Options0) ->
    Method = delete,
    Path = ["/greengrass/definition/subscriptions/", aws_util:encode_uri(SubscriptionDefinitionId), ""],
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

%% @doc Disassociates the role from a group.
-spec disassociate_role_from_group(aws_client:aws_client(), binary() | list(), disassociate_role_from_group_request()) ->
    {ok, disassociate_role_from_group_response(), tuple()} |
    {error, any()} |
    {error, disassociate_role_from_group_errors(), tuple()}.
disassociate_role_from_group(Client, GroupId, Input) ->
    disassociate_role_from_group(Client, GroupId, Input, []).

-spec disassociate_role_from_group(aws_client:aws_client(), binary() | list(), disassociate_role_from_group_request(), proplists:proplist()) ->
    {ok, disassociate_role_from_group_response(), tuple()} |
    {error, any()} |
    {error, disassociate_role_from_group_errors(), tuple()}.
disassociate_role_from_group(Client, GroupId, Input0, Options0) ->
    Method = delete,
    Path = ["/greengrass/groups/", aws_util:encode_uri(GroupId), "/role"],
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

%% @doc Disassociates the service role from your account.
%%
%% Without a service role, deployments will not work.
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

%% @doc Retrieves the role associated with a particular group.
-spec get_associated_role(aws_client:aws_client(), binary() | list()) ->
    {ok, get_associated_role_response(), tuple()} |
    {error, any()} |
    {error, get_associated_role_errors(), tuple()}.
get_associated_role(Client, GroupId)
  when is_map(Client) ->
    get_associated_role(Client, GroupId, #{}, #{}).

-spec get_associated_role(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_associated_role_response(), tuple()} |
    {error, any()} |
    {error, get_associated_role_errors(), tuple()}.
get_associated_role(Client, GroupId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_associated_role(Client, GroupId, QueryMap, HeadersMap, []).

-spec get_associated_role(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_associated_role_response(), tuple()} |
    {error, any()} |
    {error, get_associated_role_errors(), tuple()}.
get_associated_role(Client, GroupId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/greengrass/groups/", aws_util:encode_uri(GroupId), "/role"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the status of a bulk deployment.
-spec get_bulk_deployment_status(aws_client:aws_client(), binary() | list()) ->
    {ok, get_bulk_deployment_status_response(), tuple()} |
    {error, any()} |
    {error, get_bulk_deployment_status_errors(), tuple()}.
get_bulk_deployment_status(Client, BulkDeploymentId)
  when is_map(Client) ->
    get_bulk_deployment_status(Client, BulkDeploymentId, #{}, #{}).

-spec get_bulk_deployment_status(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_bulk_deployment_status_response(), tuple()} |
    {error, any()} |
    {error, get_bulk_deployment_status_errors(), tuple()}.
get_bulk_deployment_status(Client, BulkDeploymentId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_bulk_deployment_status(Client, BulkDeploymentId, QueryMap, HeadersMap, []).

-spec get_bulk_deployment_status(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_bulk_deployment_status_response(), tuple()} |
    {error, any()} |
    {error, get_bulk_deployment_status_errors(), tuple()}.
get_bulk_deployment_status(Client, BulkDeploymentId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/greengrass/bulk/deployments/", aws_util:encode_uri(BulkDeploymentId), "/status"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the connectivity information for a core.
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

%% @doc Retrieves information about a connector definition.
-spec get_connector_definition(aws_client:aws_client(), binary() | list()) ->
    {ok, get_connector_definition_response(), tuple()} |
    {error, any()} |
    {error, get_connector_definition_errors(), tuple()}.
get_connector_definition(Client, ConnectorDefinitionId)
  when is_map(Client) ->
    get_connector_definition(Client, ConnectorDefinitionId, #{}, #{}).

-spec get_connector_definition(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_connector_definition_response(), tuple()} |
    {error, any()} |
    {error, get_connector_definition_errors(), tuple()}.
get_connector_definition(Client, ConnectorDefinitionId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_connector_definition(Client, ConnectorDefinitionId, QueryMap, HeadersMap, []).

-spec get_connector_definition(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_connector_definition_response(), tuple()} |
    {error, any()} |
    {error, get_connector_definition_errors(), tuple()}.
get_connector_definition(Client, ConnectorDefinitionId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/greengrass/definition/connectors/", aws_util:encode_uri(ConnectorDefinitionId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about a connector definition version, including
%% the connectors that the version contains.
%%
%% Connectors are prebuilt modules that interact with local infrastructure,
%% device protocols, AWS, and other cloud services.
-spec get_connector_definition_version(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_connector_definition_version_response(), tuple()} |
    {error, any()} |
    {error, get_connector_definition_version_errors(), tuple()}.
get_connector_definition_version(Client, ConnectorDefinitionId, ConnectorDefinitionVersionId)
  when is_map(Client) ->
    get_connector_definition_version(Client, ConnectorDefinitionId, ConnectorDefinitionVersionId, #{}, #{}).

-spec get_connector_definition_version(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_connector_definition_version_response(), tuple()} |
    {error, any()} |
    {error, get_connector_definition_version_errors(), tuple()}.
get_connector_definition_version(Client, ConnectorDefinitionId, ConnectorDefinitionVersionId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_connector_definition_version(Client, ConnectorDefinitionId, ConnectorDefinitionVersionId, QueryMap, HeadersMap, []).

-spec get_connector_definition_version(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_connector_definition_version_response(), tuple()} |
    {error, any()} |
    {error, get_connector_definition_version_errors(), tuple()}.
get_connector_definition_version(Client, ConnectorDefinitionId, ConnectorDefinitionVersionId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/greengrass/definition/connectors/", aws_util:encode_uri(ConnectorDefinitionId), "/versions/", aws_util:encode_uri(ConnectorDefinitionVersionId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about a core definition version.
-spec get_core_definition(aws_client:aws_client(), binary() | list()) ->
    {ok, get_core_definition_response(), tuple()} |
    {error, any()} |
    {error, get_core_definition_errors(), tuple()}.
get_core_definition(Client, CoreDefinitionId)
  when is_map(Client) ->
    get_core_definition(Client, CoreDefinitionId, #{}, #{}).

-spec get_core_definition(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_core_definition_response(), tuple()} |
    {error, any()} |
    {error, get_core_definition_errors(), tuple()}.
get_core_definition(Client, CoreDefinitionId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_core_definition(Client, CoreDefinitionId, QueryMap, HeadersMap, []).

-spec get_core_definition(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_core_definition_response(), tuple()} |
    {error, any()} |
    {error, get_core_definition_errors(), tuple()}.
get_core_definition(Client, CoreDefinitionId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/greengrass/definition/cores/", aws_util:encode_uri(CoreDefinitionId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about a core definition version.
-spec get_core_definition_version(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_core_definition_version_response(), tuple()} |
    {error, any()} |
    {error, get_core_definition_version_errors(), tuple()}.
get_core_definition_version(Client, CoreDefinitionId, CoreDefinitionVersionId)
  when is_map(Client) ->
    get_core_definition_version(Client, CoreDefinitionId, CoreDefinitionVersionId, #{}, #{}).

-spec get_core_definition_version(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_core_definition_version_response(), tuple()} |
    {error, any()} |
    {error, get_core_definition_version_errors(), tuple()}.
get_core_definition_version(Client, CoreDefinitionId, CoreDefinitionVersionId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_core_definition_version(Client, CoreDefinitionId, CoreDefinitionVersionId, QueryMap, HeadersMap, []).

-spec get_core_definition_version(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_core_definition_version_response(), tuple()} |
    {error, any()} |
    {error, get_core_definition_version_errors(), tuple()}.
get_core_definition_version(Client, CoreDefinitionId, CoreDefinitionVersionId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/greengrass/definition/cores/", aws_util:encode_uri(CoreDefinitionId), "/versions/", aws_util:encode_uri(CoreDefinitionVersionId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the status of a deployment.
-spec get_deployment_status(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_deployment_status_response(), tuple()} |
    {error, any()} |
    {error, get_deployment_status_errors(), tuple()}.
get_deployment_status(Client, DeploymentId, GroupId)
  when is_map(Client) ->
    get_deployment_status(Client, DeploymentId, GroupId, #{}, #{}).

-spec get_deployment_status(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_deployment_status_response(), tuple()} |
    {error, any()} |
    {error, get_deployment_status_errors(), tuple()}.
get_deployment_status(Client, DeploymentId, GroupId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_deployment_status(Client, DeploymentId, GroupId, QueryMap, HeadersMap, []).

-spec get_deployment_status(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_deployment_status_response(), tuple()} |
    {error, any()} |
    {error, get_deployment_status_errors(), tuple()}.
get_deployment_status(Client, DeploymentId, GroupId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/greengrass/groups/", aws_util:encode_uri(GroupId), "/deployments/", aws_util:encode_uri(DeploymentId), "/status"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about a device definition.
-spec get_device_definition(aws_client:aws_client(), binary() | list()) ->
    {ok, get_device_definition_response(), tuple()} |
    {error, any()} |
    {error, get_device_definition_errors(), tuple()}.
get_device_definition(Client, DeviceDefinitionId)
  when is_map(Client) ->
    get_device_definition(Client, DeviceDefinitionId, #{}, #{}).

-spec get_device_definition(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_device_definition_response(), tuple()} |
    {error, any()} |
    {error, get_device_definition_errors(), tuple()}.
get_device_definition(Client, DeviceDefinitionId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_device_definition(Client, DeviceDefinitionId, QueryMap, HeadersMap, []).

-spec get_device_definition(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_device_definition_response(), tuple()} |
    {error, any()} |
    {error, get_device_definition_errors(), tuple()}.
get_device_definition(Client, DeviceDefinitionId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/greengrass/definition/devices/", aws_util:encode_uri(DeviceDefinitionId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about a device definition version.
-spec get_device_definition_version(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_device_definition_version_response(), tuple()} |
    {error, any()} |
    {error, get_device_definition_version_errors(), tuple()}.
get_device_definition_version(Client, DeviceDefinitionId, DeviceDefinitionVersionId)
  when is_map(Client) ->
    get_device_definition_version(Client, DeviceDefinitionId, DeviceDefinitionVersionId, #{}, #{}).

-spec get_device_definition_version(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_device_definition_version_response(), tuple()} |
    {error, any()} |
    {error, get_device_definition_version_errors(), tuple()}.
get_device_definition_version(Client, DeviceDefinitionId, DeviceDefinitionVersionId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_device_definition_version(Client, DeviceDefinitionId, DeviceDefinitionVersionId, QueryMap, HeadersMap, []).

-spec get_device_definition_version(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_device_definition_version_response(), tuple()} |
    {error, any()} |
    {error, get_device_definition_version_errors(), tuple()}.
get_device_definition_version(Client, DeviceDefinitionId, DeviceDefinitionVersionId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/greengrass/definition/devices/", aws_util:encode_uri(DeviceDefinitionId), "/versions/", aws_util:encode_uri(DeviceDefinitionVersionId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about a Lambda function definition, including
%% its creation time and latest version.
-spec get_function_definition(aws_client:aws_client(), binary() | list()) ->
    {ok, get_function_definition_response(), tuple()} |
    {error, any()} |
    {error, get_function_definition_errors(), tuple()}.
get_function_definition(Client, FunctionDefinitionId)
  when is_map(Client) ->
    get_function_definition(Client, FunctionDefinitionId, #{}, #{}).

-spec get_function_definition(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_function_definition_response(), tuple()} |
    {error, any()} |
    {error, get_function_definition_errors(), tuple()}.
get_function_definition(Client, FunctionDefinitionId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_function_definition(Client, FunctionDefinitionId, QueryMap, HeadersMap, []).

-spec get_function_definition(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_function_definition_response(), tuple()} |
    {error, any()} |
    {error, get_function_definition_errors(), tuple()}.
get_function_definition(Client, FunctionDefinitionId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/greengrass/definition/functions/", aws_util:encode_uri(FunctionDefinitionId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about a Lambda function definition version,
%% including which Lambda functions are included in the version and their
%% configurations.
-spec get_function_definition_version(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_function_definition_version_response(), tuple()} |
    {error, any()} |
    {error, get_function_definition_version_errors(), tuple()}.
get_function_definition_version(Client, FunctionDefinitionId, FunctionDefinitionVersionId)
  when is_map(Client) ->
    get_function_definition_version(Client, FunctionDefinitionId, FunctionDefinitionVersionId, #{}, #{}).

-spec get_function_definition_version(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_function_definition_version_response(), tuple()} |
    {error, any()} |
    {error, get_function_definition_version_errors(), tuple()}.
get_function_definition_version(Client, FunctionDefinitionId, FunctionDefinitionVersionId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_function_definition_version(Client, FunctionDefinitionId, FunctionDefinitionVersionId, QueryMap, HeadersMap, []).

-spec get_function_definition_version(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_function_definition_version_response(), tuple()} |
    {error, any()} |
    {error, get_function_definition_version_errors(), tuple()}.
get_function_definition_version(Client, FunctionDefinitionId, FunctionDefinitionVersionId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/greengrass/definition/functions/", aws_util:encode_uri(FunctionDefinitionId), "/versions/", aws_util:encode_uri(FunctionDefinitionVersionId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about a group.
-spec get_group(aws_client:aws_client(), binary() | list()) ->
    {ok, get_group_response(), tuple()} |
    {error, any()} |
    {error, get_group_errors(), tuple()}.
get_group(Client, GroupId)
  when is_map(Client) ->
    get_group(Client, GroupId, #{}, #{}).

-spec get_group(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_group_response(), tuple()} |
    {error, any()} |
    {error, get_group_errors(), tuple()}.
get_group(Client, GroupId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_group(Client, GroupId, QueryMap, HeadersMap, []).

-spec get_group(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_group_response(), tuple()} |
    {error, any()} |
    {error, get_group_errors(), tuple()}.
get_group(Client, GroupId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/greengrass/groups/", aws_util:encode_uri(GroupId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retreives the CA associated with a group.
%%
%% Returns the public key of the CA.
-spec get_group_certificate_authority(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_group_certificate_authority_response(), tuple()} |
    {error, any()} |
    {error, get_group_certificate_authority_errors(), tuple()}.
get_group_certificate_authority(Client, CertificateAuthorityId, GroupId)
  when is_map(Client) ->
    get_group_certificate_authority(Client, CertificateAuthorityId, GroupId, #{}, #{}).

-spec get_group_certificate_authority(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_group_certificate_authority_response(), tuple()} |
    {error, any()} |
    {error, get_group_certificate_authority_errors(), tuple()}.
get_group_certificate_authority(Client, CertificateAuthorityId, GroupId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_group_certificate_authority(Client, CertificateAuthorityId, GroupId, QueryMap, HeadersMap, []).

-spec get_group_certificate_authority(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_group_certificate_authority_response(), tuple()} |
    {error, any()} |
    {error, get_group_certificate_authority_errors(), tuple()}.
get_group_certificate_authority(Client, CertificateAuthorityId, GroupId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/greengrass/groups/", aws_util:encode_uri(GroupId), "/certificateauthorities/", aws_util:encode_uri(CertificateAuthorityId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the current configuration for the CA used by the group.
-spec get_group_certificate_configuration(aws_client:aws_client(), binary() | list()) ->
    {ok, get_group_certificate_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_group_certificate_configuration_errors(), tuple()}.
get_group_certificate_configuration(Client, GroupId)
  when is_map(Client) ->
    get_group_certificate_configuration(Client, GroupId, #{}, #{}).

-spec get_group_certificate_configuration(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_group_certificate_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_group_certificate_configuration_errors(), tuple()}.
get_group_certificate_configuration(Client, GroupId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_group_certificate_configuration(Client, GroupId, QueryMap, HeadersMap, []).

-spec get_group_certificate_configuration(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_group_certificate_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_group_certificate_configuration_errors(), tuple()}.
get_group_certificate_configuration(Client, GroupId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/greengrass/groups/", aws_util:encode_uri(GroupId), "/certificateauthorities/configuration/expiry"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about a group version.
-spec get_group_version(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_group_version_response(), tuple()} |
    {error, any()} |
    {error, get_group_version_errors(), tuple()}.
get_group_version(Client, GroupId, GroupVersionId)
  when is_map(Client) ->
    get_group_version(Client, GroupId, GroupVersionId, #{}, #{}).

-spec get_group_version(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_group_version_response(), tuple()} |
    {error, any()} |
    {error, get_group_version_errors(), tuple()}.
get_group_version(Client, GroupId, GroupVersionId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_group_version(Client, GroupId, GroupVersionId, QueryMap, HeadersMap, []).

-spec get_group_version(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_group_version_response(), tuple()} |
    {error, any()} |
    {error, get_group_version_errors(), tuple()}.
get_group_version(Client, GroupId, GroupVersionId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/greengrass/groups/", aws_util:encode_uri(GroupId), "/versions/", aws_util:encode_uri(GroupVersionId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about a logger definition.
-spec get_logger_definition(aws_client:aws_client(), binary() | list()) ->
    {ok, get_logger_definition_response(), tuple()} |
    {error, any()} |
    {error, get_logger_definition_errors(), tuple()}.
get_logger_definition(Client, LoggerDefinitionId)
  when is_map(Client) ->
    get_logger_definition(Client, LoggerDefinitionId, #{}, #{}).

-spec get_logger_definition(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_logger_definition_response(), tuple()} |
    {error, any()} |
    {error, get_logger_definition_errors(), tuple()}.
get_logger_definition(Client, LoggerDefinitionId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_logger_definition(Client, LoggerDefinitionId, QueryMap, HeadersMap, []).

-spec get_logger_definition(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_logger_definition_response(), tuple()} |
    {error, any()} |
    {error, get_logger_definition_errors(), tuple()}.
get_logger_definition(Client, LoggerDefinitionId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/greengrass/definition/loggers/", aws_util:encode_uri(LoggerDefinitionId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about a logger definition version.
-spec get_logger_definition_version(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_logger_definition_version_response(), tuple()} |
    {error, any()} |
    {error, get_logger_definition_version_errors(), tuple()}.
get_logger_definition_version(Client, LoggerDefinitionId, LoggerDefinitionVersionId)
  when is_map(Client) ->
    get_logger_definition_version(Client, LoggerDefinitionId, LoggerDefinitionVersionId, #{}, #{}).

-spec get_logger_definition_version(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_logger_definition_version_response(), tuple()} |
    {error, any()} |
    {error, get_logger_definition_version_errors(), tuple()}.
get_logger_definition_version(Client, LoggerDefinitionId, LoggerDefinitionVersionId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_logger_definition_version(Client, LoggerDefinitionId, LoggerDefinitionVersionId, QueryMap, HeadersMap, []).

-spec get_logger_definition_version(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_logger_definition_version_response(), tuple()} |
    {error, any()} |
    {error, get_logger_definition_version_errors(), tuple()}.
get_logger_definition_version(Client, LoggerDefinitionId, LoggerDefinitionVersionId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/greengrass/definition/loggers/", aws_util:encode_uri(LoggerDefinitionId), "/versions/", aws_util:encode_uri(LoggerDefinitionVersionId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about a resource definition, including its
%% creation time and latest version.
-spec get_resource_definition(aws_client:aws_client(), binary() | list()) ->
    {ok, get_resource_definition_response(), tuple()} |
    {error, any()} |
    {error, get_resource_definition_errors(), tuple()}.
get_resource_definition(Client, ResourceDefinitionId)
  when is_map(Client) ->
    get_resource_definition(Client, ResourceDefinitionId, #{}, #{}).

-spec get_resource_definition(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_resource_definition_response(), tuple()} |
    {error, any()} |
    {error, get_resource_definition_errors(), tuple()}.
get_resource_definition(Client, ResourceDefinitionId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_resource_definition(Client, ResourceDefinitionId, QueryMap, HeadersMap, []).

-spec get_resource_definition(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_resource_definition_response(), tuple()} |
    {error, any()} |
    {error, get_resource_definition_errors(), tuple()}.
get_resource_definition(Client, ResourceDefinitionId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/greengrass/definition/resources/", aws_util:encode_uri(ResourceDefinitionId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about a resource definition version, including
%% which resources are included in the version.
-spec get_resource_definition_version(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_resource_definition_version_response(), tuple()} |
    {error, any()} |
    {error, get_resource_definition_version_errors(), tuple()}.
get_resource_definition_version(Client, ResourceDefinitionId, ResourceDefinitionVersionId)
  when is_map(Client) ->
    get_resource_definition_version(Client, ResourceDefinitionId, ResourceDefinitionVersionId, #{}, #{}).

-spec get_resource_definition_version(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_resource_definition_version_response(), tuple()} |
    {error, any()} |
    {error, get_resource_definition_version_errors(), tuple()}.
get_resource_definition_version(Client, ResourceDefinitionId, ResourceDefinitionVersionId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_resource_definition_version(Client, ResourceDefinitionId, ResourceDefinitionVersionId, QueryMap, HeadersMap, []).

-spec get_resource_definition_version(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_resource_definition_version_response(), tuple()} |
    {error, any()} |
    {error, get_resource_definition_version_errors(), tuple()}.
get_resource_definition_version(Client, ResourceDefinitionId, ResourceDefinitionVersionId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/greengrass/definition/resources/", aws_util:encode_uri(ResourceDefinitionId), "/versions/", aws_util:encode_uri(ResourceDefinitionVersionId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the service role that is attached to your account.
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

%% @doc Retrieves information about a subscription definition.
-spec get_subscription_definition(aws_client:aws_client(), binary() | list()) ->
    {ok, get_subscription_definition_response(), tuple()} |
    {error, any()} |
    {error, get_subscription_definition_errors(), tuple()}.
get_subscription_definition(Client, SubscriptionDefinitionId)
  when is_map(Client) ->
    get_subscription_definition(Client, SubscriptionDefinitionId, #{}, #{}).

-spec get_subscription_definition(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_subscription_definition_response(), tuple()} |
    {error, any()} |
    {error, get_subscription_definition_errors(), tuple()}.
get_subscription_definition(Client, SubscriptionDefinitionId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_subscription_definition(Client, SubscriptionDefinitionId, QueryMap, HeadersMap, []).

-spec get_subscription_definition(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_subscription_definition_response(), tuple()} |
    {error, any()} |
    {error, get_subscription_definition_errors(), tuple()}.
get_subscription_definition(Client, SubscriptionDefinitionId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/greengrass/definition/subscriptions/", aws_util:encode_uri(SubscriptionDefinitionId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about a subscription definition version.
-spec get_subscription_definition_version(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_subscription_definition_version_response(), tuple()} |
    {error, any()} |
    {error, get_subscription_definition_version_errors(), tuple()}.
get_subscription_definition_version(Client, SubscriptionDefinitionId, SubscriptionDefinitionVersionId)
  when is_map(Client) ->
    get_subscription_definition_version(Client, SubscriptionDefinitionId, SubscriptionDefinitionVersionId, #{}, #{}).

-spec get_subscription_definition_version(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_subscription_definition_version_response(), tuple()} |
    {error, any()} |
    {error, get_subscription_definition_version_errors(), tuple()}.
get_subscription_definition_version(Client, SubscriptionDefinitionId, SubscriptionDefinitionVersionId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_subscription_definition_version(Client, SubscriptionDefinitionId, SubscriptionDefinitionVersionId, QueryMap, HeadersMap, []).

-spec get_subscription_definition_version(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_subscription_definition_version_response(), tuple()} |
    {error, any()} |
    {error, get_subscription_definition_version_errors(), tuple()}.
get_subscription_definition_version(Client, SubscriptionDefinitionId, SubscriptionDefinitionVersionId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/greengrass/definition/subscriptions/", aws_util:encode_uri(SubscriptionDefinitionId), "/versions/", aws_util:encode_uri(SubscriptionDefinitionVersionId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get the runtime configuration of a thing.
-spec get_thing_runtime_configuration(aws_client:aws_client(), binary() | list()) ->
    {ok, get_thing_runtime_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_thing_runtime_configuration_errors(), tuple()}.
get_thing_runtime_configuration(Client, ThingName)
  when is_map(Client) ->
    get_thing_runtime_configuration(Client, ThingName, #{}, #{}).

-spec get_thing_runtime_configuration(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_thing_runtime_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_thing_runtime_configuration_errors(), tuple()}.
get_thing_runtime_configuration(Client, ThingName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_thing_runtime_configuration(Client, ThingName, QueryMap, HeadersMap, []).

-spec get_thing_runtime_configuration(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_thing_runtime_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_thing_runtime_configuration_errors(), tuple()}.
get_thing_runtime_configuration(Client, ThingName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/greengrass/things/", aws_util:encode_uri(ThingName), "/runtimeconfig"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a paginated list of the deployments that have been started in a
%% bulk deployment operation, and their current deployment status.
-spec list_bulk_deployment_detailed_reports(aws_client:aws_client(), binary() | list()) ->
    {ok, list_bulk_deployment_detailed_reports_response(), tuple()} |
    {error, any()} |
    {error, list_bulk_deployment_detailed_reports_errors(), tuple()}.
list_bulk_deployment_detailed_reports(Client, BulkDeploymentId)
  when is_map(Client) ->
    list_bulk_deployment_detailed_reports(Client, BulkDeploymentId, #{}, #{}).

-spec list_bulk_deployment_detailed_reports(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_bulk_deployment_detailed_reports_response(), tuple()} |
    {error, any()} |
    {error, list_bulk_deployment_detailed_reports_errors(), tuple()}.
list_bulk_deployment_detailed_reports(Client, BulkDeploymentId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_bulk_deployment_detailed_reports(Client, BulkDeploymentId, QueryMap, HeadersMap, []).

-spec list_bulk_deployment_detailed_reports(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_bulk_deployment_detailed_reports_response(), tuple()} |
    {error, any()} |
    {error, list_bulk_deployment_detailed_reports_errors(), tuple()}.
list_bulk_deployment_detailed_reports(Client, BulkDeploymentId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/greengrass/bulk/deployments/", aws_util:encode_uri(BulkDeploymentId), "/detailed-reports"],
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

%% @doc Returns a list of bulk deployments.
-spec list_bulk_deployments(aws_client:aws_client()) ->
    {ok, list_bulk_deployments_response(), tuple()} |
    {error, any()} |
    {error, list_bulk_deployments_errors(), tuple()}.
list_bulk_deployments(Client)
  when is_map(Client) ->
    list_bulk_deployments(Client, #{}, #{}).

-spec list_bulk_deployments(aws_client:aws_client(), map(), map()) ->
    {ok, list_bulk_deployments_response(), tuple()} |
    {error, any()} |
    {error, list_bulk_deployments_errors(), tuple()}.
list_bulk_deployments(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_bulk_deployments(Client, QueryMap, HeadersMap, []).

-spec list_bulk_deployments(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_bulk_deployments_response(), tuple()} |
    {error, any()} |
    {error, list_bulk_deployments_errors(), tuple()}.
list_bulk_deployments(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/greengrass/bulk/deployments"],
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

%% @doc Lists the versions of a connector definition, which are containers
%% for connectors.
%%
%% Connectors run on the Greengrass core and contain built-in integration
%% with local infrastructure, device protocols, AWS, and other cloud
%% services.
-spec list_connector_definition_versions(aws_client:aws_client(), binary() | list()) ->
    {ok, list_connector_definition_versions_response(), tuple()} |
    {error, any()} |
    {error, list_connector_definition_versions_errors(), tuple()}.
list_connector_definition_versions(Client, ConnectorDefinitionId)
  when is_map(Client) ->
    list_connector_definition_versions(Client, ConnectorDefinitionId, #{}, #{}).

-spec list_connector_definition_versions(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_connector_definition_versions_response(), tuple()} |
    {error, any()} |
    {error, list_connector_definition_versions_errors(), tuple()}.
list_connector_definition_versions(Client, ConnectorDefinitionId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_connector_definition_versions(Client, ConnectorDefinitionId, QueryMap, HeadersMap, []).

-spec list_connector_definition_versions(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_connector_definition_versions_response(), tuple()} |
    {error, any()} |
    {error, list_connector_definition_versions_errors(), tuple()}.
list_connector_definition_versions(Client, ConnectorDefinitionId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/greengrass/definition/connectors/", aws_util:encode_uri(ConnectorDefinitionId), "/versions"],
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

%% @doc Retrieves a list of connector definitions.
-spec list_connector_definitions(aws_client:aws_client()) ->
    {ok, list_connector_definitions_response(), tuple()} |
    {error, any()}.
list_connector_definitions(Client)
  when is_map(Client) ->
    list_connector_definitions(Client, #{}, #{}).

-spec list_connector_definitions(aws_client:aws_client(), map(), map()) ->
    {ok, list_connector_definitions_response(), tuple()} |
    {error, any()}.
list_connector_definitions(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_connector_definitions(Client, QueryMap, HeadersMap, []).

-spec list_connector_definitions(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_connector_definitions_response(), tuple()} |
    {error, any()}.
list_connector_definitions(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/greengrass/definition/connectors"],
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

%% @doc Lists the versions of a core definition.
-spec list_core_definition_versions(aws_client:aws_client(), binary() | list()) ->
    {ok, list_core_definition_versions_response(), tuple()} |
    {error, any()} |
    {error, list_core_definition_versions_errors(), tuple()}.
list_core_definition_versions(Client, CoreDefinitionId)
  when is_map(Client) ->
    list_core_definition_versions(Client, CoreDefinitionId, #{}, #{}).

-spec list_core_definition_versions(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_core_definition_versions_response(), tuple()} |
    {error, any()} |
    {error, list_core_definition_versions_errors(), tuple()}.
list_core_definition_versions(Client, CoreDefinitionId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_core_definition_versions(Client, CoreDefinitionId, QueryMap, HeadersMap, []).

-spec list_core_definition_versions(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_core_definition_versions_response(), tuple()} |
    {error, any()} |
    {error, list_core_definition_versions_errors(), tuple()}.
list_core_definition_versions(Client, CoreDefinitionId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/greengrass/definition/cores/", aws_util:encode_uri(CoreDefinitionId), "/versions"],
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

%% @doc Retrieves a list of core definitions.
-spec list_core_definitions(aws_client:aws_client()) ->
    {ok, list_core_definitions_response(), tuple()} |
    {error, any()}.
list_core_definitions(Client)
  when is_map(Client) ->
    list_core_definitions(Client, #{}, #{}).

-spec list_core_definitions(aws_client:aws_client(), map(), map()) ->
    {ok, list_core_definitions_response(), tuple()} |
    {error, any()}.
list_core_definitions(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_core_definitions(Client, QueryMap, HeadersMap, []).

-spec list_core_definitions(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_core_definitions_response(), tuple()} |
    {error, any()}.
list_core_definitions(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/greengrass/definition/cores"],
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

%% @doc Returns a history of deployments for the group.
-spec list_deployments(aws_client:aws_client(), binary() | list()) ->
    {ok, list_deployments_response(), tuple()} |
    {error, any()} |
    {error, list_deployments_errors(), tuple()}.
list_deployments(Client, GroupId)
  when is_map(Client) ->
    list_deployments(Client, GroupId, #{}, #{}).

-spec list_deployments(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_deployments_response(), tuple()} |
    {error, any()} |
    {error, list_deployments_errors(), tuple()}.
list_deployments(Client, GroupId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_deployments(Client, GroupId, QueryMap, HeadersMap, []).

-spec list_deployments(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_deployments_response(), tuple()} |
    {error, any()} |
    {error, list_deployments_errors(), tuple()}.
list_deployments(Client, GroupId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/greengrass/groups/", aws_util:encode_uri(GroupId), "/deployments"],
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

%% @doc Lists the versions of a device definition.
-spec list_device_definition_versions(aws_client:aws_client(), binary() | list()) ->
    {ok, list_device_definition_versions_response(), tuple()} |
    {error, any()} |
    {error, list_device_definition_versions_errors(), tuple()}.
list_device_definition_versions(Client, DeviceDefinitionId)
  when is_map(Client) ->
    list_device_definition_versions(Client, DeviceDefinitionId, #{}, #{}).

-spec list_device_definition_versions(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_device_definition_versions_response(), tuple()} |
    {error, any()} |
    {error, list_device_definition_versions_errors(), tuple()}.
list_device_definition_versions(Client, DeviceDefinitionId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_device_definition_versions(Client, DeviceDefinitionId, QueryMap, HeadersMap, []).

-spec list_device_definition_versions(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_device_definition_versions_response(), tuple()} |
    {error, any()} |
    {error, list_device_definition_versions_errors(), tuple()}.
list_device_definition_versions(Client, DeviceDefinitionId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/greengrass/definition/devices/", aws_util:encode_uri(DeviceDefinitionId), "/versions"],
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

%% @doc Retrieves a list of device definitions.
-spec list_device_definitions(aws_client:aws_client()) ->
    {ok, list_device_definitions_response(), tuple()} |
    {error, any()}.
list_device_definitions(Client)
  when is_map(Client) ->
    list_device_definitions(Client, #{}, #{}).

-spec list_device_definitions(aws_client:aws_client(), map(), map()) ->
    {ok, list_device_definitions_response(), tuple()} |
    {error, any()}.
list_device_definitions(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_device_definitions(Client, QueryMap, HeadersMap, []).

-spec list_device_definitions(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_device_definitions_response(), tuple()} |
    {error, any()}.
list_device_definitions(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/greengrass/definition/devices"],
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

%% @doc Lists the versions of a Lambda function definition.
-spec list_function_definition_versions(aws_client:aws_client(), binary() | list()) ->
    {ok, list_function_definition_versions_response(), tuple()} |
    {error, any()} |
    {error, list_function_definition_versions_errors(), tuple()}.
list_function_definition_versions(Client, FunctionDefinitionId)
  when is_map(Client) ->
    list_function_definition_versions(Client, FunctionDefinitionId, #{}, #{}).

-spec list_function_definition_versions(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_function_definition_versions_response(), tuple()} |
    {error, any()} |
    {error, list_function_definition_versions_errors(), tuple()}.
list_function_definition_versions(Client, FunctionDefinitionId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_function_definition_versions(Client, FunctionDefinitionId, QueryMap, HeadersMap, []).

-spec list_function_definition_versions(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_function_definition_versions_response(), tuple()} |
    {error, any()} |
    {error, list_function_definition_versions_errors(), tuple()}.
list_function_definition_versions(Client, FunctionDefinitionId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/greengrass/definition/functions/", aws_util:encode_uri(FunctionDefinitionId), "/versions"],
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

%% @doc Retrieves a list of Lambda function definitions.
-spec list_function_definitions(aws_client:aws_client()) ->
    {ok, list_function_definitions_response(), tuple()} |
    {error, any()}.
list_function_definitions(Client)
  when is_map(Client) ->
    list_function_definitions(Client, #{}, #{}).

-spec list_function_definitions(aws_client:aws_client(), map(), map()) ->
    {ok, list_function_definitions_response(), tuple()} |
    {error, any()}.
list_function_definitions(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_function_definitions(Client, QueryMap, HeadersMap, []).

-spec list_function_definitions(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_function_definitions_response(), tuple()} |
    {error, any()}.
list_function_definitions(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/greengrass/definition/functions"],
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

%% @doc Retrieves the current CAs for a group.
-spec list_group_certificate_authorities(aws_client:aws_client(), binary() | list()) ->
    {ok, list_group_certificate_authorities_response(), tuple()} |
    {error, any()} |
    {error, list_group_certificate_authorities_errors(), tuple()}.
list_group_certificate_authorities(Client, GroupId)
  when is_map(Client) ->
    list_group_certificate_authorities(Client, GroupId, #{}, #{}).

-spec list_group_certificate_authorities(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_group_certificate_authorities_response(), tuple()} |
    {error, any()} |
    {error, list_group_certificate_authorities_errors(), tuple()}.
list_group_certificate_authorities(Client, GroupId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_group_certificate_authorities(Client, GroupId, QueryMap, HeadersMap, []).

-spec list_group_certificate_authorities(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_group_certificate_authorities_response(), tuple()} |
    {error, any()} |
    {error, list_group_certificate_authorities_errors(), tuple()}.
list_group_certificate_authorities(Client, GroupId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/greengrass/groups/", aws_util:encode_uri(GroupId), "/certificateauthorities"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the versions of a group.
-spec list_group_versions(aws_client:aws_client(), binary() | list()) ->
    {ok, list_group_versions_response(), tuple()} |
    {error, any()} |
    {error, list_group_versions_errors(), tuple()}.
list_group_versions(Client, GroupId)
  when is_map(Client) ->
    list_group_versions(Client, GroupId, #{}, #{}).

-spec list_group_versions(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_group_versions_response(), tuple()} |
    {error, any()} |
    {error, list_group_versions_errors(), tuple()}.
list_group_versions(Client, GroupId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_group_versions(Client, GroupId, QueryMap, HeadersMap, []).

-spec list_group_versions(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_group_versions_response(), tuple()} |
    {error, any()} |
    {error, list_group_versions_errors(), tuple()}.
list_group_versions(Client, GroupId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/greengrass/groups/", aws_util:encode_uri(GroupId), "/versions"],
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

%% @doc Retrieves a list of groups.
-spec list_groups(aws_client:aws_client()) ->
    {ok, list_groups_response(), tuple()} |
    {error, any()}.
list_groups(Client)
  when is_map(Client) ->
    list_groups(Client, #{}, #{}).

-spec list_groups(aws_client:aws_client(), map(), map()) ->
    {ok, list_groups_response(), tuple()} |
    {error, any()}.
list_groups(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_groups(Client, QueryMap, HeadersMap, []).

-spec list_groups(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_groups_response(), tuple()} |
    {error, any()}.
list_groups(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/greengrass/groups"],
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

%% @doc Lists the versions of a logger definition.
-spec list_logger_definition_versions(aws_client:aws_client(), binary() | list()) ->
    {ok, list_logger_definition_versions_response(), tuple()} |
    {error, any()} |
    {error, list_logger_definition_versions_errors(), tuple()}.
list_logger_definition_versions(Client, LoggerDefinitionId)
  when is_map(Client) ->
    list_logger_definition_versions(Client, LoggerDefinitionId, #{}, #{}).

-spec list_logger_definition_versions(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_logger_definition_versions_response(), tuple()} |
    {error, any()} |
    {error, list_logger_definition_versions_errors(), tuple()}.
list_logger_definition_versions(Client, LoggerDefinitionId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_logger_definition_versions(Client, LoggerDefinitionId, QueryMap, HeadersMap, []).

-spec list_logger_definition_versions(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_logger_definition_versions_response(), tuple()} |
    {error, any()} |
    {error, list_logger_definition_versions_errors(), tuple()}.
list_logger_definition_versions(Client, LoggerDefinitionId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/greengrass/definition/loggers/", aws_util:encode_uri(LoggerDefinitionId), "/versions"],
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

%% @doc Retrieves a list of logger definitions.
-spec list_logger_definitions(aws_client:aws_client()) ->
    {ok, list_logger_definitions_response(), tuple()} |
    {error, any()}.
list_logger_definitions(Client)
  when is_map(Client) ->
    list_logger_definitions(Client, #{}, #{}).

-spec list_logger_definitions(aws_client:aws_client(), map(), map()) ->
    {ok, list_logger_definitions_response(), tuple()} |
    {error, any()}.
list_logger_definitions(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_logger_definitions(Client, QueryMap, HeadersMap, []).

-spec list_logger_definitions(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_logger_definitions_response(), tuple()} |
    {error, any()}.
list_logger_definitions(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/greengrass/definition/loggers"],
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

%% @doc Lists the versions of a resource definition.
-spec list_resource_definition_versions(aws_client:aws_client(), binary() | list()) ->
    {ok, list_resource_definition_versions_response(), tuple()} |
    {error, any()} |
    {error, list_resource_definition_versions_errors(), tuple()}.
list_resource_definition_versions(Client, ResourceDefinitionId)
  when is_map(Client) ->
    list_resource_definition_versions(Client, ResourceDefinitionId, #{}, #{}).

-spec list_resource_definition_versions(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_resource_definition_versions_response(), tuple()} |
    {error, any()} |
    {error, list_resource_definition_versions_errors(), tuple()}.
list_resource_definition_versions(Client, ResourceDefinitionId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_resource_definition_versions(Client, ResourceDefinitionId, QueryMap, HeadersMap, []).

-spec list_resource_definition_versions(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_resource_definition_versions_response(), tuple()} |
    {error, any()} |
    {error, list_resource_definition_versions_errors(), tuple()}.
list_resource_definition_versions(Client, ResourceDefinitionId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/greengrass/definition/resources/", aws_util:encode_uri(ResourceDefinitionId), "/versions"],
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

%% @doc Retrieves a list of resource definitions.
-spec list_resource_definitions(aws_client:aws_client()) ->
    {ok, list_resource_definitions_response(), tuple()} |
    {error, any()}.
list_resource_definitions(Client)
  when is_map(Client) ->
    list_resource_definitions(Client, #{}, #{}).

-spec list_resource_definitions(aws_client:aws_client(), map(), map()) ->
    {ok, list_resource_definitions_response(), tuple()} |
    {error, any()}.
list_resource_definitions(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_resource_definitions(Client, QueryMap, HeadersMap, []).

-spec list_resource_definitions(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_resource_definitions_response(), tuple()} |
    {error, any()}.
list_resource_definitions(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/greengrass/definition/resources"],
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

%% @doc Lists the versions of a subscription definition.
-spec list_subscription_definition_versions(aws_client:aws_client(), binary() | list()) ->
    {ok, list_subscription_definition_versions_response(), tuple()} |
    {error, any()} |
    {error, list_subscription_definition_versions_errors(), tuple()}.
list_subscription_definition_versions(Client, SubscriptionDefinitionId)
  when is_map(Client) ->
    list_subscription_definition_versions(Client, SubscriptionDefinitionId, #{}, #{}).

-spec list_subscription_definition_versions(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_subscription_definition_versions_response(), tuple()} |
    {error, any()} |
    {error, list_subscription_definition_versions_errors(), tuple()}.
list_subscription_definition_versions(Client, SubscriptionDefinitionId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_subscription_definition_versions(Client, SubscriptionDefinitionId, QueryMap, HeadersMap, []).

-spec list_subscription_definition_versions(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_subscription_definition_versions_response(), tuple()} |
    {error, any()} |
    {error, list_subscription_definition_versions_errors(), tuple()}.
list_subscription_definition_versions(Client, SubscriptionDefinitionId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/greengrass/definition/subscriptions/", aws_util:encode_uri(SubscriptionDefinitionId), "/versions"],
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

%% @doc Retrieves a list of subscription definitions.
-spec list_subscription_definitions(aws_client:aws_client()) ->
    {ok, list_subscription_definitions_response(), tuple()} |
    {error, any()}.
list_subscription_definitions(Client)
  when is_map(Client) ->
    list_subscription_definitions(Client, #{}, #{}).

-spec list_subscription_definitions(aws_client:aws_client(), map(), map()) ->
    {ok, list_subscription_definitions_response(), tuple()} |
    {error, any()}.
list_subscription_definitions(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_subscription_definitions(Client, QueryMap, HeadersMap, []).

-spec list_subscription_definitions(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_subscription_definitions_response(), tuple()} |
    {error, any()}.
list_subscription_definitions(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/greengrass/definition/subscriptions"],
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

%% @doc Retrieves a list of resource tags for a resource arn.
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

%% @doc Resets a group's deployments.
-spec reset_deployments(aws_client:aws_client(), binary() | list(), reset_deployments_request()) ->
    {ok, reset_deployments_response(), tuple()} |
    {error, any()} |
    {error, reset_deployments_errors(), tuple()}.
reset_deployments(Client, GroupId, Input) ->
    reset_deployments(Client, GroupId, Input, []).

-spec reset_deployments(aws_client:aws_client(), binary() | list(), reset_deployments_request(), proplists:proplist()) ->
    {ok, reset_deployments_response(), tuple()} |
    {error, any()} |
    {error, reset_deployments_errors(), tuple()}.
reset_deployments(Client, GroupId, Input0, Options0) ->
    Method = post,
    Path = ["/greengrass/groups/", aws_util:encode_uri(GroupId), "/deployments/$reset"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Amzn-Client-Token">>, <<"AmznClientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deploys multiple groups in one operation.
%%
%% This action starts the bulk deployment of a specified set of group
%% versions. Each group version deployment will be triggered with an adaptive
%% rate that has a fixed upper limit. We recommend that you include an
%% ''X-Amzn-Client-Token'' token in every
%% ''StartBulkDeployment'' request. These requests are
%% idempotent with respect to the token and the request parameters.
-spec start_bulk_deployment(aws_client:aws_client(), start_bulk_deployment_request()) ->
    {ok, start_bulk_deployment_response(), tuple()} |
    {error, any()} |
    {error, start_bulk_deployment_errors(), tuple()}.
start_bulk_deployment(Client, Input) ->
    start_bulk_deployment(Client, Input, []).

-spec start_bulk_deployment(aws_client:aws_client(), start_bulk_deployment_request(), proplists:proplist()) ->
    {ok, start_bulk_deployment_response(), tuple()} |
    {error, any()} |
    {error, start_bulk_deployment_errors(), tuple()}.
start_bulk_deployment(Client, Input0, Options0) ->
    Method = post,
    Path = ["/greengrass/bulk/deployments"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Amzn-Client-Token">>, <<"AmznClientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Stops the execution of a bulk deployment.
%%
%% This action returns a status of ''Stopping'' until the
%% deployment is stopped. You cannot start a new bulk deployment while a
%% previous deployment is in the ''Stopping'' state. This
%% action doesn't rollback completed deployments or cancel pending
%% deployments.
-spec stop_bulk_deployment(aws_client:aws_client(), binary() | list(), stop_bulk_deployment_request()) ->
    {ok, stop_bulk_deployment_response(), tuple()} |
    {error, any()} |
    {error, stop_bulk_deployment_errors(), tuple()}.
stop_bulk_deployment(Client, BulkDeploymentId, Input) ->
    stop_bulk_deployment(Client, BulkDeploymentId, Input, []).

-spec stop_bulk_deployment(aws_client:aws_client(), binary() | list(), stop_bulk_deployment_request(), proplists:proplist()) ->
    {ok, stop_bulk_deployment_response(), tuple()} |
    {error, any()} |
    {error, stop_bulk_deployment_errors(), tuple()}.
stop_bulk_deployment(Client, BulkDeploymentId, Input0, Options0) ->
    Method = put,
    Path = ["/greengrass/bulk/deployments/", aws_util:encode_uri(BulkDeploymentId), "/$stop"],
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

%% @doc Adds tags to a Greengrass resource.
%%
%% Valid resources are 'Group', 'ConnectorDefinition',
%% 'CoreDefinition', 'DeviceDefinition',
%% 'FunctionDefinition', 'LoggerDefinition',
%% 'SubscriptionDefinition', 'ResourceDefinition', and
%% 'BulkDeployment'.
-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).

-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
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

%% @doc Remove resource tags from a Greengrass Resource.
-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).

-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
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

%% @doc Updates the connectivity information for the core.
%%
%% Any devices that belong to the group which has this core will receive this
%% information in order to find the location of the core and connect to it.
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

%% @doc Updates a connector definition.
-spec update_connector_definition(aws_client:aws_client(), binary() | list(), update_connector_definition_request()) ->
    {ok, update_connector_definition_response(), tuple()} |
    {error, any()} |
    {error, update_connector_definition_errors(), tuple()}.
update_connector_definition(Client, ConnectorDefinitionId, Input) ->
    update_connector_definition(Client, ConnectorDefinitionId, Input, []).

-spec update_connector_definition(aws_client:aws_client(), binary() | list(), update_connector_definition_request(), proplists:proplist()) ->
    {ok, update_connector_definition_response(), tuple()} |
    {error, any()} |
    {error, update_connector_definition_errors(), tuple()}.
update_connector_definition(Client, ConnectorDefinitionId, Input0, Options0) ->
    Method = put,
    Path = ["/greengrass/definition/connectors/", aws_util:encode_uri(ConnectorDefinitionId), ""],
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

%% @doc Updates a core definition.
-spec update_core_definition(aws_client:aws_client(), binary() | list(), update_core_definition_request()) ->
    {ok, update_core_definition_response(), tuple()} |
    {error, any()} |
    {error, update_core_definition_errors(), tuple()}.
update_core_definition(Client, CoreDefinitionId, Input) ->
    update_core_definition(Client, CoreDefinitionId, Input, []).

-spec update_core_definition(aws_client:aws_client(), binary() | list(), update_core_definition_request(), proplists:proplist()) ->
    {ok, update_core_definition_response(), tuple()} |
    {error, any()} |
    {error, update_core_definition_errors(), tuple()}.
update_core_definition(Client, CoreDefinitionId, Input0, Options0) ->
    Method = put,
    Path = ["/greengrass/definition/cores/", aws_util:encode_uri(CoreDefinitionId), ""],
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

%% @doc Updates a device definition.
-spec update_device_definition(aws_client:aws_client(), binary() | list(), update_device_definition_request()) ->
    {ok, update_device_definition_response(), tuple()} |
    {error, any()} |
    {error, update_device_definition_errors(), tuple()}.
update_device_definition(Client, DeviceDefinitionId, Input) ->
    update_device_definition(Client, DeviceDefinitionId, Input, []).

-spec update_device_definition(aws_client:aws_client(), binary() | list(), update_device_definition_request(), proplists:proplist()) ->
    {ok, update_device_definition_response(), tuple()} |
    {error, any()} |
    {error, update_device_definition_errors(), tuple()}.
update_device_definition(Client, DeviceDefinitionId, Input0, Options0) ->
    Method = put,
    Path = ["/greengrass/definition/devices/", aws_util:encode_uri(DeviceDefinitionId), ""],
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

%% @doc Updates a Lambda function definition.
-spec update_function_definition(aws_client:aws_client(), binary() | list(), update_function_definition_request()) ->
    {ok, update_function_definition_response(), tuple()} |
    {error, any()} |
    {error, update_function_definition_errors(), tuple()}.
update_function_definition(Client, FunctionDefinitionId, Input) ->
    update_function_definition(Client, FunctionDefinitionId, Input, []).

-spec update_function_definition(aws_client:aws_client(), binary() | list(), update_function_definition_request(), proplists:proplist()) ->
    {ok, update_function_definition_response(), tuple()} |
    {error, any()} |
    {error, update_function_definition_errors(), tuple()}.
update_function_definition(Client, FunctionDefinitionId, Input0, Options0) ->
    Method = put,
    Path = ["/greengrass/definition/functions/", aws_util:encode_uri(FunctionDefinitionId), ""],
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

%% @doc Updates a group.
-spec update_group(aws_client:aws_client(), binary() | list(), update_group_request()) ->
    {ok, update_group_response(), tuple()} |
    {error, any()} |
    {error, update_group_errors(), tuple()}.
update_group(Client, GroupId, Input) ->
    update_group(Client, GroupId, Input, []).

-spec update_group(aws_client:aws_client(), binary() | list(), update_group_request(), proplists:proplist()) ->
    {ok, update_group_response(), tuple()} |
    {error, any()} |
    {error, update_group_errors(), tuple()}.
update_group(Client, GroupId, Input0, Options0) ->
    Method = put,
    Path = ["/greengrass/groups/", aws_util:encode_uri(GroupId), ""],
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

%% @doc Updates the Certificate expiry time for a group.
-spec update_group_certificate_configuration(aws_client:aws_client(), binary() | list(), update_group_certificate_configuration_request()) ->
    {ok, update_group_certificate_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_group_certificate_configuration_errors(), tuple()}.
update_group_certificate_configuration(Client, GroupId, Input) ->
    update_group_certificate_configuration(Client, GroupId, Input, []).

-spec update_group_certificate_configuration(aws_client:aws_client(), binary() | list(), update_group_certificate_configuration_request(), proplists:proplist()) ->
    {ok, update_group_certificate_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_group_certificate_configuration_errors(), tuple()}.
update_group_certificate_configuration(Client, GroupId, Input0, Options0) ->
    Method = put,
    Path = ["/greengrass/groups/", aws_util:encode_uri(GroupId), "/certificateauthorities/configuration/expiry"],
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

%% @doc Updates a logger definition.
-spec update_logger_definition(aws_client:aws_client(), binary() | list(), update_logger_definition_request()) ->
    {ok, update_logger_definition_response(), tuple()} |
    {error, any()} |
    {error, update_logger_definition_errors(), tuple()}.
update_logger_definition(Client, LoggerDefinitionId, Input) ->
    update_logger_definition(Client, LoggerDefinitionId, Input, []).

-spec update_logger_definition(aws_client:aws_client(), binary() | list(), update_logger_definition_request(), proplists:proplist()) ->
    {ok, update_logger_definition_response(), tuple()} |
    {error, any()} |
    {error, update_logger_definition_errors(), tuple()}.
update_logger_definition(Client, LoggerDefinitionId, Input0, Options0) ->
    Method = put,
    Path = ["/greengrass/definition/loggers/", aws_util:encode_uri(LoggerDefinitionId), ""],
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

%% @doc Updates a resource definition.
-spec update_resource_definition(aws_client:aws_client(), binary() | list(), update_resource_definition_request()) ->
    {ok, update_resource_definition_response(), tuple()} |
    {error, any()} |
    {error, update_resource_definition_errors(), tuple()}.
update_resource_definition(Client, ResourceDefinitionId, Input) ->
    update_resource_definition(Client, ResourceDefinitionId, Input, []).

-spec update_resource_definition(aws_client:aws_client(), binary() | list(), update_resource_definition_request(), proplists:proplist()) ->
    {ok, update_resource_definition_response(), tuple()} |
    {error, any()} |
    {error, update_resource_definition_errors(), tuple()}.
update_resource_definition(Client, ResourceDefinitionId, Input0, Options0) ->
    Method = put,
    Path = ["/greengrass/definition/resources/", aws_util:encode_uri(ResourceDefinitionId), ""],
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

%% @doc Updates a subscription definition.
-spec update_subscription_definition(aws_client:aws_client(), binary() | list(), update_subscription_definition_request()) ->
    {ok, update_subscription_definition_response(), tuple()} |
    {error, any()} |
    {error, update_subscription_definition_errors(), tuple()}.
update_subscription_definition(Client, SubscriptionDefinitionId, Input) ->
    update_subscription_definition(Client, SubscriptionDefinitionId, Input, []).

-spec update_subscription_definition(aws_client:aws_client(), binary() | list(), update_subscription_definition_request(), proplists:proplist()) ->
    {ok, update_subscription_definition_response(), tuple()} |
    {error, any()} |
    {error, update_subscription_definition_errors(), tuple()}.
update_subscription_definition(Client, SubscriptionDefinitionId, Input0, Options0) ->
    Method = put,
    Path = ["/greengrass/definition/subscriptions/", aws_util:encode_uri(SubscriptionDefinitionId), ""],
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

%% @doc Updates the runtime configuration of a thing.
-spec update_thing_runtime_configuration(aws_client:aws_client(), binary() | list(), update_thing_runtime_configuration_request()) ->
    {ok, update_thing_runtime_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_thing_runtime_configuration_errors(), tuple()}.
update_thing_runtime_configuration(Client, ThingName, Input) ->
    update_thing_runtime_configuration(Client, ThingName, Input, []).

-spec update_thing_runtime_configuration(aws_client:aws_client(), binary() | list(), update_thing_runtime_configuration_request(), proplists:proplist()) ->
    {ok, update_thing_runtime_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_thing_runtime_configuration_errors(), tuple()}.
update_thing_runtime_configuration(Client, ThingName, Input0, Options0) ->
    Method = put,
    Path = ["/greengrass/things/", aws_util:encode_uri(ThingName), "/runtimeconfig"],
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
