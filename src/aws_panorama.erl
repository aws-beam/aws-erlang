%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc AWS Panorama
%%
%% Overview
%%
%% This is the AWS Panorama API Reference.
%%
%% For an introduction to the service, see What is AWS Panorama?:
%% https://docs.aws.amazon.com/panorama/latest/dev/panorama-welcome.html in
%% the
%% AWS Panorama Developer Guide.
-module(aws_panorama).

-export([create_application_instance/2,
         create_application_instance/3,
         create_job_for_devices/2,
         create_job_for_devices/3,
         create_node_from_template_job/2,
         create_node_from_template_job/3,
         create_package/2,
         create_package/3,
         create_package_import_job/2,
         create_package_import_job/3,
         delete_device/3,
         delete_device/4,
         delete_package/3,
         delete_package/4,
         deregister_package_version/5,
         deregister_package_version/6,
         describe_application_instance/2,
         describe_application_instance/4,
         describe_application_instance/5,
         describe_application_instance_details/2,
         describe_application_instance_details/4,
         describe_application_instance_details/5,
         describe_device/2,
         describe_device/4,
         describe_device/5,
         describe_device_job/2,
         describe_device_job/4,
         describe_device_job/5,
         describe_node/2,
         describe_node/4,
         describe_node/5,
         describe_node_from_template_job/2,
         describe_node_from_template_job/4,
         describe_node_from_template_job/5,
         describe_package/2,
         describe_package/4,
         describe_package/5,
         describe_package_import_job/2,
         describe_package_import_job/4,
         describe_package_import_job/5,
         describe_package_version/3,
         describe_package_version/5,
         describe_package_version/6,
         list_application_instance_dependencies/2,
         list_application_instance_dependencies/4,
         list_application_instance_dependencies/5,
         list_application_instance_node_instances/2,
         list_application_instance_node_instances/4,
         list_application_instance_node_instances/5,
         list_application_instances/1,
         list_application_instances/3,
         list_application_instances/4,
         list_devices/1,
         list_devices/3,
         list_devices/4,
         list_devices_jobs/1,
         list_devices_jobs/3,
         list_devices_jobs/4,
         list_node_from_template_jobs/1,
         list_node_from_template_jobs/3,
         list_node_from_template_jobs/4,
         list_nodes/1,
         list_nodes/3,
         list_nodes/4,
         list_package_import_jobs/1,
         list_package_import_jobs/3,
         list_package_import_jobs/4,
         list_packages/1,
         list_packages/3,
         list_packages/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         provision_device/2,
         provision_device/3,
         register_package_version/5,
         register_package_version/6,
         remove_application_instance/3,
         remove_application_instance/4,
         signal_application_instance_node_instances/3,
         signal_application_instance_node_instances/4,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_device_metadata/3,
         update_device_metadata/4]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% create_node_from_template_job_request() :: #{
%%   <<"JobTags">> => list(job_resource_tags()),
%%   <<"NodeDescription">> => string(),
%%   <<"NodeName">> := string(),
%%   <<"OutputPackageName">> := string(),
%%   <<"OutputPackageVersion">> := string(),
%%   <<"TemplateParameters">> := map(),
%%   <<"TemplateType">> := string()
%% }
-type create_node_from_template_job_request() :: #{binary() => any()}.


%% Example:
%% device_job() :: #{
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"DeviceId">> => string(),
%%   <<"DeviceName">> => string(),
%%   <<"JobId">> => string(),
%%   <<"JobType">> => string()
%% }
-type device_job() :: #{binary() => any()}.


%% Example:
%% list_devices_request() :: #{
%%   <<"DeviceAggregatedStatusFilter">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NameFilter">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"SortBy">> => string(),
%%   <<"SortOrder">> => string()
%% }
-type list_devices_request() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"Tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% provision_device_response() :: #{
%%   <<"Arn">> := string(),
%%   <<"Certificates">> => binary(),
%%   <<"DeviceId">> => string(),
%%   <<"IotThingName">> => string(),
%%   <<"Status">> := string()
%% }
-type provision_device_response() :: #{binary() => any()}.


%% Example:
%% create_package_import_job_request() :: #{
%%   <<"ClientToken">> := string(),
%%   <<"InputConfig">> := package_import_job_input_config(),
%%   <<"JobTags">> => list(job_resource_tags()),
%%   <<"JobType">> := string(),
%%   <<"OutputConfig">> := package_import_job_output_config()
%% }
-type create_package_import_job_request() :: #{binary() => any()}.


%% Example:
%% provision_device_request() :: #{
%%   <<"Description">> => string(),
%%   <<"Name">> := string(),
%%   <<"NetworkingConfiguration">> => network_payload(),
%%   <<"Tags">> => map()
%% }
-type provision_device_request() :: #{binary() => any()}.


%% Example:
%% node_instance() :: #{
%%   <<"CurrentStatus">> => string(),
%%   <<"NodeId">> => string(),
%%   <<"NodeInstanceId">> => string(),
%%   <<"NodeName">> => string(),
%%   <<"PackageName">> => string(),
%%   <<"PackagePatchVersion">> => string(),
%%   <<"PackageVersion">> => string()
%% }
-type node_instance() :: #{binary() => any()}.


%% Example:
%% describe_application_instance_details_response() :: #{
%%   <<"ApplicationInstanceId">> => string(),
%%   <<"ApplicationInstanceIdToReplace">> => string(),
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"DefaultRuntimeContextDevice">> => string(),
%%   <<"Description">> => string(),
%%   <<"ManifestOverridesPayload">> => list(),
%%   <<"ManifestPayload">> => list(),
%%   <<"Name">> => string()
%% }
-type describe_application_instance_details_response() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% list_node_from_template_jobs_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"NodeFromTemplateJobs">> := list(node_from_template_job())
%% }
-type list_node_from_template_jobs_response() :: #{binary() => any()}.


%% Example:
%% create_package_request() :: #{
%%   <<"PackageName">> := string(),
%%   <<"Tags">> => map()
%% }
-type create_package_request() :: #{binary() => any()}.


%% Example:
%% create_application_instance_request() :: #{
%%   <<"ApplicationInstanceIdToReplace">> => string(),
%%   <<"DefaultRuntimeContextDevice">> := string(),
%%   <<"Description">> => string(),
%%   <<"ManifestOverridesPayload">> => list(),
%%   <<"ManifestPayload">> := list(),
%%   <<"Name">> => string(),
%%   <<"RuntimeRoleArn">> => string(),
%%   <<"Tags">> => map()
%% }
-type create_application_instance_request() :: #{binary() => any()}.


%% Example:
%% network_status() :: #{
%%   <<"Ethernet0Status">> => ethernet_status(),
%%   <<"Ethernet1Status">> => ethernet_status(),
%%   <<"LastUpdatedTime">> => non_neg_integer(),
%%   <<"NtpStatus">> => ntp_status()
%% }
-type network_status() :: #{binary() => any()}.


%% Example:
%% reported_runtime_context_state() :: #{
%%   <<"DesiredState">> => string(),
%%   <<"DeviceReportedStatus">> => string(),
%%   <<"DeviceReportedTime">> => non_neg_integer(),
%%   <<"RuntimeContextName">> => string()
%% }
-type reported_runtime_context_state() :: #{binary() => any()}.


%% Example:
%% list_package_import_jobs_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"PackageImportJobs">> := list(package_import_job())
%% }
-type list_package_import_jobs_response() :: #{binary() => any()}.


%% Example:
%% package_version_input_config() :: #{
%%   <<"S3Location">> => s3_location()
%% }
-type package_version_input_config() :: #{binary() => any()}.


%% Example:
%% describe_device_job_response() :: #{
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"DeviceArn">> => string(),
%%   <<"DeviceId">> => string(),
%%   <<"DeviceName">> => string(),
%%   <<"DeviceType">> => string(),
%%   <<"ImageVersion">> => string(),
%%   <<"JobId">> => string(),
%%   <<"JobType">> => string(),
%%   <<"Status">> => string()
%% }
-type describe_device_job_response() :: #{binary() => any()}.


%% Example:
%% describe_application_instance_response() :: #{
%%   <<"ApplicationInstanceId">> => string(),
%%   <<"ApplicationInstanceIdToReplace">> => string(),
%%   <<"Arn">> => string(),
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"DefaultRuntimeContextDevice">> => string(),
%%   <<"DefaultRuntimeContextDeviceName">> => string(),
%%   <<"Description">> => string(),
%%   <<"HealthStatus">> => string(),
%%   <<"LastUpdatedTime">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"RuntimeContextStates">> => list(reported_runtime_context_state()),
%%   <<"RuntimeRoleArn">> => string(),
%%   <<"Status">> => string(),
%%   <<"StatusDescription">> => string(),
%%   <<"Tags">> => map()
%% }
-type describe_application_instance_response() :: #{binary() => any()}.


%% Example:
%% create_job_for_devices_response() :: #{
%%   <<"Jobs">> := list(job())
%% }
-type create_job_for_devices_response() :: #{binary() => any()}.


%% Example:
%% node_input_port() :: #{
%%   <<"DefaultValue">> => string(),
%%   <<"Description">> => string(),
%%   <<"MaxConnections">> => integer(),
%%   <<"Name">> => string(),
%%   <<"Type">> => string()
%% }
-type node_input_port() :: #{binary() => any()}.

%% Example:
%% describe_package_import_job_request() :: #{}
-type describe_package_import_job_request() :: #{}.


%% Example:
%% list_packages_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_packages_request() :: #{binary() => any()}.


%% Example:
%% update_device_metadata_response() :: #{
%%   <<"DeviceId">> => string()
%% }
-type update_device_metadata_response() :: #{binary() => any()}.


%% Example:
%% ethernet_status() :: #{
%%   <<"ConnectionStatus">> => string(),
%%   <<"HwAddress">> => string(),
%%   <<"IpAddress">> => string()
%% }
-type ethernet_status() :: #{binary() => any()}.


%% Example:
%% describe_package_response() :: #{
%%   <<"Arn">> := string(),
%%   <<"CreatedTime">> := non_neg_integer(),
%%   <<"PackageId">> := string(),
%%   <<"PackageName">> := string(),
%%   <<"ReadAccessPrincipalArns">> => list(string()),
%%   <<"StorageLocation">> := storage_location(),
%%   <<"Tags">> := map(),
%%   <<"WriteAccessPrincipalArns">> => list(string())
%% }
-type describe_package_response() :: #{binary() => any()}.


%% Example:
%% package_object() :: #{
%%   <<"Name">> => string(),
%%   <<"PackageVersion">> => string(),
%%   <<"PatchVersion">> => string()
%% }
-type package_object() :: #{binary() => any()}.

%% Example:
%% delete_device_request() :: #{}
-type delete_device_request() :: #{}.


%% Example:
%% list_application_instance_dependencies_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_application_instance_dependencies_request() :: #{binary() => any()}.


%% Example:
%% signal_application_instance_node_instances_response() :: #{
%%   <<"ApplicationInstanceId">> := string()
%% }
-type signal_application_instance_node_instances_response() :: #{binary() => any()}.


%% Example:
%% update_device_metadata_request() :: #{
%%   <<"Description">> => string()
%% }
-type update_device_metadata_request() :: #{binary() => any()}.


%% Example:
%% list_application_instances_response() :: #{
%%   <<"ApplicationInstances">> => list(application_instance()),
%%   <<"NextToken">> => string()
%% }
-type list_application_instances_response() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"TagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% node_output_port() :: #{
%%   <<"Description">> => string(),
%%   <<"Name">> => string(),
%%   <<"Type">> => string()
%% }
-type node_output_port() :: #{binary() => any()}.


%% Example:
%% panorama_node() :: #{
%%   <<"Category">> => string(),
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"Name">> => string(),
%%   <<"NodeId">> => string(),
%%   <<"OwnerAccount">> => string(),
%%   <<"PackageArn">> => string(),
%%   <<"PackageId">> => string(),
%%   <<"PackageName">> => string(),
%%   <<"PackageVersion">> => string(),
%%   <<"PatchVersion">> => string()
%% }
-type panorama_node() :: #{binary() => any()}.


%% Example:
%% package_list_item() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"PackageId">> => string(),
%%   <<"PackageName">> => string(),
%%   <<"Tags">> => map()
%% }
-type package_list_item() :: #{binary() => any()}.


%% Example:
%% node_from_template_job() :: #{
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"JobId">> => string(),
%%   <<"NodeName">> => string(),
%%   <<"Status">> => string(),
%%   <<"StatusMessage">> => string(),
%%   <<"TemplateType">> => string()
%% }
-type node_from_template_job() :: #{binary() => any()}.

%% Example:
%% describe_node_from_template_job_request() :: #{}
-type describe_node_from_template_job_request() :: #{}.


%% Example:
%% describe_node_response() :: #{
%%   <<"AssetName">> => string(),
%%   <<"Category">> := string(),
%%   <<"CreatedTime">> := non_neg_integer(),
%%   <<"Description">> := string(),
%%   <<"LastUpdatedTime">> := non_neg_integer(),
%%   <<"Name">> := string(),
%%   <<"NodeId">> := string(),
%%   <<"NodeInterface">> := node_interface(),
%%   <<"OwnerAccount">> := string(),
%%   <<"PackageArn">> => string(),
%%   <<"PackageId">> := string(),
%%   <<"PackageName">> := string(),
%%   <<"PackageVersion">> := string(),
%%   <<"PatchVersion">> := string()
%% }
-type describe_node_response() :: #{binary() => any()}.


%% Example:
%% package_import_job_output_config() :: #{
%%   <<"PackageVersionOutputConfig">> => package_version_output_config()
%% }
-type package_import_job_output_config() :: #{binary() => any()}.


%% Example:
%% ntp_status() :: #{
%%   <<"ConnectionStatus">> => string(),
%%   <<"IpAddress">> => string(),
%%   <<"NtpServerName">> => string()
%% }
-type ntp_status() :: #{binary() => any()}.


%% Example:
%% ethernet_payload() :: #{
%%   <<"ConnectionType">> => string(),
%%   <<"StaticIpConnectionInfo">> => static_ip_connection_info()
%% }
-type ethernet_payload() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"ErrorArguments">> => list(conflict_exception_error_argument()),
%%   <<"ErrorId">> => string(),
%%   <<"Message">> => string(),
%%   <<"ResourceId">> => string(),
%%   <<"ResourceType">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.

%% Example:
%% delete_package_response() :: #{}
-type delete_package_response() :: #{}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"ResourceId">> => string(),
%%   <<"ResourceType">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% validation_exception_error_argument() :: #{
%%   <<"Name">> => string(),
%%   <<"Value">> => string()
%% }
-type validation_exception_error_argument() :: #{binary() => any()}.


%% Example:
%% list_package_import_jobs_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_package_import_jobs_request() :: #{binary() => any()}.


%% Example:
%% deregister_package_version_request() :: #{
%%   <<"OwnerAccount">> => string(),
%%   <<"UpdatedLatestPatchVersion">> => string()
%% }
-type deregister_package_version_request() :: #{binary() => any()}.


%% Example:
%% node_signal() :: #{
%%   <<"NodeInstanceId">> => string(),
%%   <<"Signal">> => string()
%% }
-type node_signal() :: #{binary() => any()}.


%% Example:
%% package_import_job_input_config() :: #{
%%   <<"PackageVersionInputConfig">> => package_version_input_config()
%% }
-type package_import_job_input_config() :: #{binary() => any()}.


%% Example:
%% application_instance() :: #{
%%   <<"ApplicationInstanceId">> => string(),
%%   <<"Arn">> => string(),
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"DefaultRuntimeContextDevice">> => string(),
%%   <<"DefaultRuntimeContextDeviceName">> => string(),
%%   <<"Description">> => string(),
%%   <<"HealthStatus">> => string(),
%%   <<"Name">> => string(),
%%   <<"RuntimeContextStates">> => list(reported_runtime_context_state()),
%%   <<"Status">> => string(),
%%   <<"StatusDescription">> => string(),
%%   <<"Tags">> => map()
%% }
-type application_instance() :: #{binary() => any()}.

%% Example:
%% describe_device_request() :: #{}
-type describe_device_request() :: #{}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"QuotaCode">> => string(),
%%   <<"ResourceId">> => string(),
%%   <<"ResourceType">> => string(),
%%   <<"ServiceCode">> => string()
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% create_node_from_template_job_response() :: #{
%%   <<"JobId">> := string()
%% }
-type create_node_from_template_job_response() :: #{binary() => any()}.


%% Example:
%% network_payload() :: #{
%%   <<"Ethernet0">> => ethernet_payload(),
%%   <<"Ethernet1">> => ethernet_payload(),
%%   <<"Ntp">> => ntp_payload()
%% }
-type network_payload() :: #{binary() => any()}.


%% Example:
%% ntp_payload() :: #{
%%   <<"NtpServers">> => list(string())
%% }
-type ntp_payload() :: #{binary() => any()}.


%% Example:
%% node_interface() :: #{
%%   <<"Inputs">> => list(node_input_port()),
%%   <<"Outputs">> => list(node_output_port())
%% }
-type node_interface() :: #{binary() => any()}.


%% Example:
%% static_ip_connection_info() :: #{
%%   <<"DefaultGateway">> => string(),
%%   <<"Dns">> => list(string()),
%%   <<"IpAddress">> => string(),
%%   <<"Mask">> => string()
%% }
-type static_ip_connection_info() :: #{binary() => any()}.


%% Example:
%% list_nodes_request() :: #{
%%   <<"Category">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"OwnerAccount">> => string(),
%%   <<"PackageName">> => string(),
%%   <<"PackageVersion">> => string(),
%%   <<"PatchVersion">> => string()
%% }
-type list_nodes_request() :: #{binary() => any()}.

%% Example:
%% describe_application_instance_request() :: #{}
-type describe_application_instance_request() :: #{}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"Tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% describe_package_version_response() :: #{
%%   <<"IsLatestPatch">> := boolean(),
%%   <<"OwnerAccount">> => string(),
%%   <<"PackageArn">> => string(),
%%   <<"PackageId">> := string(),
%%   <<"PackageName">> := string(),
%%   <<"PackageVersion">> := string(),
%%   <<"PatchVersion">> := string(),
%%   <<"RegisteredTime">> => non_neg_integer(),
%%   <<"Status">> := string(),
%%   <<"StatusDescription">> => string()
%% }
-type describe_package_version_response() :: #{binary() => any()}.


%% Example:
%% list_devices_response() :: #{
%%   <<"Devices">> := list(device()),
%%   <<"NextToken">> => string()
%% }
-type list_devices_response() :: #{binary() => any()}.

%% Example:
%% register_package_version_response() :: #{}
-type register_package_version_response() :: #{}.


%% Example:
%% validation_exception_field() :: #{
%%   <<"Message">> => string(),
%%   <<"Name">> => string()
%% }
-type validation_exception_field() :: #{binary() => any()}.

%% Example:
%% describe_device_job_request() :: #{}
-type describe_device_job_request() :: #{}.


%% Example:
%% s3_location() :: #{
%%   <<"BucketName">> => string(),
%%   <<"ObjectKey">> => string(),
%%   <<"Region">> => string()
%% }
-type s3_location() :: #{binary() => any()}.


%% Example:
%% describe_node_from_template_job_response() :: #{
%%   <<"CreatedTime">> := non_neg_integer(),
%%   <<"JobId">> := string(),
%%   <<"JobTags">> => list(job_resource_tags()),
%%   <<"LastUpdatedTime">> := non_neg_integer(),
%%   <<"NodeDescription">> => string(),
%%   <<"NodeName">> := string(),
%%   <<"OutputPackageName">> := string(),
%%   <<"OutputPackageVersion">> := string(),
%%   <<"Status">> := string(),
%%   <<"StatusMessage">> := string(),
%%   <<"TemplateParameters">> := map(),
%%   <<"TemplateType">> := string()
%% }
-type describe_node_from_template_job_response() :: #{binary() => any()}.


%% Example:
%% delete_device_response() :: #{
%%   <<"DeviceId">> => string()
%% }
-type delete_device_response() :: #{binary() => any()}.


%% Example:
%% list_devices_jobs_request() :: #{
%%   <<"DeviceId">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_devices_jobs_request() :: #{binary() => any()}.

%% Example:
%% describe_application_instance_details_request() :: #{}
-type describe_application_instance_details_request() :: #{}.


%% Example:
%% list_node_from_template_jobs_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_node_from_template_jobs_request() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"RetryAfterSeconds">> => integer()
%% }
-type internal_server_exception() :: #{binary() => any()}.

%% Example:
%% remove_application_instance_request() :: #{}
-type remove_application_instance_request() :: #{}.


%% Example:
%% create_application_instance_response() :: #{
%%   <<"ApplicationInstanceId">> := string()
%% }
-type create_application_instance_response() :: #{binary() => any()}.


%% Example:
%% create_package_import_job_response() :: #{
%%   <<"JobId">> := string()
%% }
-type create_package_import_job_response() :: #{binary() => any()}.


%% Example:
%% list_devices_jobs_response() :: #{
%%   <<"DeviceJobs">> => list(device_job()),
%%   <<"NextToken">> => string()
%% }
-type list_devices_jobs_response() :: #{binary() => any()}.


%% Example:
%% package_import_job_output() :: #{
%%   <<"OutputS3Location">> => out_put_s3_location(),
%%   <<"PackageId">> => string(),
%%   <<"PackageVersion">> => string(),
%%   <<"PatchVersion">> => string()
%% }
-type package_import_job_output() :: #{binary() => any()}.


%% Example:
%% out_put_s3_location() :: #{
%%   <<"BucketName">> => string(),
%%   <<"ObjectKey">> => string()
%% }
-type out_put_s3_location() :: #{binary() => any()}.


%% Example:
%% delete_package_request() :: #{
%%   <<"ForceDelete">> => boolean()
%% }
-type delete_package_request() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"Message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% describe_package_import_job_response() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"CreatedTime">> := non_neg_integer(),
%%   <<"InputConfig">> := package_import_job_input_config(),
%%   <<"JobId">> := string(),
%%   <<"JobTags">> => list(job_resource_tags()),
%%   <<"JobType">> := string(),
%%   <<"LastUpdatedTime">> := non_neg_integer(),
%%   <<"Output">> := package_import_job_output(),
%%   <<"OutputConfig">> := package_import_job_output_config(),
%%   <<"Status">> := string(),
%%   <<"StatusMessage">> := string()
%% }
-type describe_package_import_job_response() :: #{binary() => any()}.


%% Example:
%% storage_location() :: #{
%%   <<"BinaryPrefixLocation">> => string(),
%%   <<"Bucket">> => string(),
%%   <<"GeneratedPrefixLocation">> => string(),
%%   <<"ManifestPrefixLocation">> => string(),
%%   <<"RepoPrefixLocation">> => string()
%% }
-type storage_location() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% signal_application_instance_node_instances_request() :: #{
%%   <<"NodeSignals">> := list(node_signal())
%% }
-type signal_application_instance_node_instances_request() :: #{binary() => any()}.


%% Example:
%% alternate_software_metadata() :: #{
%%   <<"Version">> => string()
%% }
-type alternate_software_metadata() :: #{binary() => any()}.


%% Example:
%% job_resource_tags() :: #{
%%   <<"ResourceType">> => string(),
%%   <<"Tags">> => map()
%% }
-type job_resource_tags() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"ErrorArguments">> => list(validation_exception_error_argument()),
%%   <<"ErrorId">> => string(),
%%   <<"Fields">> => list(validation_exception_field()),
%%   <<"Message">> => string(),
%%   <<"Reason">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% job() :: #{
%%   <<"DeviceId">> => string(),
%%   <<"JobId">> => string()
%% }
-type job() :: #{binary() => any()}.


%% Example:
%% conflict_exception_error_argument() :: #{
%%   <<"Name">> => string(),
%%   <<"Value">> => string()
%% }
-type conflict_exception_error_argument() :: #{binary() => any()}.


%% Example:
%% list_application_instance_dependencies_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"PackageObjects">> => list(package_object())
%% }
-type list_application_instance_dependencies_response() :: #{binary() => any()}.

%% Example:
%% describe_package_request() :: #{}
-type describe_package_request() :: #{}.


%% Example:
%% list_application_instance_node_instances_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_application_instance_node_instances_request() :: #{binary() => any()}.


%% Example:
%% create_package_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"PackageId">> => string(),
%%   <<"StorageLocation">> := storage_location()
%% }
-type create_package_response() :: #{binary() => any()}.

%% Example:
%% deregister_package_version_response() :: #{}
-type deregister_package_version_response() :: #{}.


%% Example:
%% ota_job_config() :: #{
%%   <<"AllowMajorVersionUpdate">> => boolean(),
%%   <<"ImageVersion">> => string()
%% }
-type ota_job_config() :: #{binary() => any()}.


%% Example:
%% describe_node_request() :: #{
%%   <<"OwnerAccount">> => string()
%% }
-type describe_node_request() :: #{binary() => any()}.


%% Example:
%% device() :: #{
%%   <<"Brand">> => string(),
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"CurrentSoftware">> => string(),
%%   <<"Description">> => string(),
%%   <<"DeviceAggregatedStatus">> => string(),
%%   <<"DeviceId">> => string(),
%%   <<"LastUpdatedTime">> => non_neg_integer(),
%%   <<"LatestDeviceJob">> => latest_device_job(),
%%   <<"LeaseExpirationTime">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"ProvisioningStatus">> => string(),
%%   <<"Tags">> => map(),
%%   <<"Type">> => string()
%% }
-type device() :: #{binary() => any()}.


%% Example:
%% latest_device_job() :: #{
%%   <<"ImageVersion">> => string(),
%%   <<"JobType">> => string(),
%%   <<"Status">> => string()
%% }
-type latest_device_job() :: #{binary() => any()}.


%% Example:
%% describe_package_version_request() :: #{
%%   <<"OwnerAccount">> => string(),
%%   <<"PatchVersion">> => string()
%% }
-type describe_package_version_request() :: #{binary() => any()}.


%% Example:
%% create_job_for_devices_request() :: #{
%%   <<"DeviceIds">> := list(string()),
%%   <<"DeviceJobConfig">> => device_job_config(),
%%   <<"JobType">> := string()
%% }
-type create_job_for_devices_request() :: #{binary() => any()}.


%% Example:
%% register_package_version_request() :: #{
%%   <<"MarkLatest">> => boolean(),
%%   <<"OwnerAccount">> => string()
%% }
-type register_package_version_request() :: #{binary() => any()}.


%% Example:
%% list_application_instance_node_instances_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"NodeInstances">> => list(node_instance())
%% }
-type list_application_instance_node_instances_response() :: #{binary() => any()}.


%% Example:
%% list_packages_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Packages">> => list(package_list_item())
%% }
-type list_packages_response() :: #{binary() => any()}.

%% Example:
%% remove_application_instance_response() :: #{}
-type remove_application_instance_response() :: #{}.


%% Example:
%% list_nodes_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Nodes">> => list(node())
%% }
-type list_nodes_response() :: #{binary() => any()}.


%% Example:
%% device_job_config() :: #{
%%   <<"OTAJobConfig">> => ota_job_config()
%% }
-type device_job_config() :: #{binary() => any()}.


%% Example:
%% package_version_output_config() :: #{
%%   <<"MarkLatest">> => boolean(),
%%   <<"PackageName">> => string(),
%%   <<"PackageVersion">> => string()
%% }
-type package_version_output_config() :: #{binary() => any()}.


%% Example:
%% package_import_job() :: #{
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"JobId">> => string(),
%%   <<"JobType">> => string(),
%%   <<"LastUpdatedTime">> => non_neg_integer(),
%%   <<"Status">> => string(),
%%   <<"StatusMessage">> => string()
%% }
-type package_import_job() :: #{binary() => any()}.


%% Example:
%% list_application_instances_request() :: #{
%%   <<"DeviceId">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"StatusFilter">> => string()
%% }
-type list_application_instances_request() :: #{binary() => any()}.


%% Example:
%% describe_device_response() :: #{
%%   <<"AlternateSoftwares">> => list(alternate_software_metadata()),
%%   <<"Arn">> => string(),
%%   <<"Brand">> => string(),
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"CurrentNetworkingStatus">> => network_status(),
%%   <<"CurrentSoftware">> => string(),
%%   <<"Description">> => string(),
%%   <<"DeviceAggregatedStatus">> => string(),
%%   <<"DeviceConnectionStatus">> => string(),
%%   <<"DeviceId">> => string(),
%%   <<"LatestAlternateSoftware">> => string(),
%%   <<"LatestDeviceJob">> => latest_device_job(),
%%   <<"LatestSoftware">> => string(),
%%   <<"LeaseExpirationTime">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"NetworkingConfiguration">> => network_payload(),
%%   <<"ProvisioningStatus">> => string(),
%%   <<"SerialNumber">> => string(),
%%   <<"Tags">> => map(),
%%   <<"Type">> => string()
%% }
-type describe_device_response() :: #{binary() => any()}.

-type create_application_instance_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception().

-type create_job_for_devices_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_node_from_template_job_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type create_package_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type create_package_import_job_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type delete_device_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_package_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type deregister_package_version_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type describe_application_instance_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type describe_application_instance_details_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type describe_device_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_device_job_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type describe_node_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type describe_node_from_template_job_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type describe_package_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type describe_package_import_job_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type describe_package_version_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type list_application_instance_dependencies_errors() ::
    access_denied_exception() | 
    internal_server_exception().

-type list_application_instance_node_instances_errors() ::
    access_denied_exception() | 
    internal_server_exception().

-type list_application_instances_errors() ::
    access_denied_exception() | 
    internal_server_exception().

-type list_devices_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type list_devices_jobs_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type list_node_from_template_jobs_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type list_nodes_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type list_package_import_jobs_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type list_packages_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type list_tags_for_resource_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type provision_device_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type register_package_version_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type remove_application_instance_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type signal_application_instance_node_instances_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception().

-type tag_resource_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_device_metadata_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Creates an application instance and deploys it to a device.
-spec create_application_instance(aws_client:aws_client(), create_application_instance_request()) ->
    {ok, create_application_instance_response(), tuple()} |
    {error, any()} |
    {error, create_application_instance_errors(), tuple()}.
create_application_instance(Client, Input) ->
    create_application_instance(Client, Input, []).

-spec create_application_instance(aws_client:aws_client(), create_application_instance_request(), proplists:proplist()) ->
    {ok, create_application_instance_response(), tuple()} |
    {error, any()} |
    {error, create_application_instance_errors(), tuple()}.
create_application_instance(Client, Input0, Options0) ->
    Method = post,
    Path = ["/application-instances"],
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

%% @doc Creates a job to run on a device.
%%
%% A job can update a device's software or reboot it.
-spec create_job_for_devices(aws_client:aws_client(), create_job_for_devices_request()) ->
    {ok, create_job_for_devices_response(), tuple()} |
    {error, any()} |
    {error, create_job_for_devices_errors(), tuple()}.
create_job_for_devices(Client, Input) ->
    create_job_for_devices(Client, Input, []).

-spec create_job_for_devices(aws_client:aws_client(), create_job_for_devices_request(), proplists:proplist()) ->
    {ok, create_job_for_devices_response(), tuple()} |
    {error, any()} |
    {error, create_job_for_devices_errors(), tuple()}.
create_job_for_devices(Client, Input0, Options0) ->
    Method = post,
    Path = ["/jobs"],
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

%% @doc Creates a camera stream node.
-spec create_node_from_template_job(aws_client:aws_client(), create_node_from_template_job_request()) ->
    {ok, create_node_from_template_job_response(), tuple()} |
    {error, any()} |
    {error, create_node_from_template_job_errors(), tuple()}.
create_node_from_template_job(Client, Input) ->
    create_node_from_template_job(Client, Input, []).

-spec create_node_from_template_job(aws_client:aws_client(), create_node_from_template_job_request(), proplists:proplist()) ->
    {ok, create_node_from_template_job_response(), tuple()} |
    {error, any()} |
    {error, create_node_from_template_job_errors(), tuple()}.
create_node_from_template_job(Client, Input0, Options0) ->
    Method = post,
    Path = ["/packages/template-job"],
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

%% @doc Creates a package and storage location in an Amazon S3 access point.
-spec create_package(aws_client:aws_client(), create_package_request()) ->
    {ok, create_package_response(), tuple()} |
    {error, any()} |
    {error, create_package_errors(), tuple()}.
create_package(Client, Input) ->
    create_package(Client, Input, []).

-spec create_package(aws_client:aws_client(), create_package_request(), proplists:proplist()) ->
    {ok, create_package_response(), tuple()} |
    {error, any()} |
    {error, create_package_errors(), tuple()}.
create_package(Client, Input0, Options0) ->
    Method = post,
    Path = ["/packages"],
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

%% @doc Imports a node package.
-spec create_package_import_job(aws_client:aws_client(), create_package_import_job_request()) ->
    {ok, create_package_import_job_response(), tuple()} |
    {error, any()} |
    {error, create_package_import_job_errors(), tuple()}.
create_package_import_job(Client, Input) ->
    create_package_import_job(Client, Input, []).

-spec create_package_import_job(aws_client:aws_client(), create_package_import_job_request(), proplists:proplist()) ->
    {ok, create_package_import_job_response(), tuple()} |
    {error, any()} |
    {error, create_package_import_job_errors(), tuple()}.
create_package_import_job(Client, Input0, Options0) ->
    Method = post,
    Path = ["/packages/import-jobs"],
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

%% @doc Deletes a device.
-spec delete_device(aws_client:aws_client(), binary() | list(), delete_device_request()) ->
    {ok, delete_device_response(), tuple()} |
    {error, any()} |
    {error, delete_device_errors(), tuple()}.
delete_device(Client, DeviceId, Input) ->
    delete_device(Client, DeviceId, Input, []).

-spec delete_device(aws_client:aws_client(), binary() | list(), delete_device_request(), proplists:proplist()) ->
    {ok, delete_device_response(), tuple()} |
    {error, any()} |
    {error, delete_device_errors(), tuple()}.
delete_device(Client, DeviceId, Input0, Options0) ->
    Method = delete,
    Path = ["/devices/", aws_util:encode_uri(DeviceId), ""],
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

%% @doc Deletes a package.
%%
%% To delete a package, you need permission to call `s3:DeleteObject' in
%% addition to permissions for
%% the AWS Panorama API.
-spec delete_package(aws_client:aws_client(), binary() | list(), delete_package_request()) ->
    {ok, delete_package_response(), tuple()} |
    {error, any()} |
    {error, delete_package_errors(), tuple()}.
delete_package(Client, PackageId, Input) ->
    delete_package(Client, PackageId, Input, []).

-spec delete_package(aws_client:aws_client(), binary() | list(), delete_package_request(), proplists:proplist()) ->
    {ok, delete_package_response(), tuple()} |
    {error, any()} |
    {error, delete_package_errors(), tuple()}.
delete_package(Client, PackageId, Input0, Options0) ->
    Method = delete,
    Path = ["/packages/", aws_util:encode_uri(PackageId), ""],
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
                     {<<"ForceDelete">>, <<"ForceDelete">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deregisters a package version.
-spec deregister_package_version(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), deregister_package_version_request()) ->
    {ok, deregister_package_version_response(), tuple()} |
    {error, any()} |
    {error, deregister_package_version_errors(), tuple()}.
deregister_package_version(Client, PackageId, PackageVersion, PatchVersion, Input) ->
    deregister_package_version(Client, PackageId, PackageVersion, PatchVersion, Input, []).

-spec deregister_package_version(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), deregister_package_version_request(), proplists:proplist()) ->
    {ok, deregister_package_version_response(), tuple()} |
    {error, any()} |
    {error, deregister_package_version_errors(), tuple()}.
deregister_package_version(Client, PackageId, PackageVersion, PatchVersion, Input0, Options0) ->
    Method = delete,
    Path = ["/packages/", aws_util:encode_uri(PackageId), "/versions/", aws_util:encode_uri(PackageVersion), "/patch/", aws_util:encode_uri(PatchVersion), ""],
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
                     {<<"OwnerAccount">>, <<"OwnerAccount">>},
                     {<<"UpdatedLatestPatchVersion">>, <<"UpdatedLatestPatchVersion">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Returns information about an application instance on a device.
-spec describe_application_instance(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_application_instance_response(), tuple()} |
    {error, any()} |
    {error, describe_application_instance_errors(), tuple()}.
describe_application_instance(Client, ApplicationInstanceId)
  when is_map(Client) ->
    describe_application_instance(Client, ApplicationInstanceId, #{}, #{}).

-spec describe_application_instance(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_application_instance_response(), tuple()} |
    {error, any()} |
    {error, describe_application_instance_errors(), tuple()}.
describe_application_instance(Client, ApplicationInstanceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_application_instance(Client, ApplicationInstanceId, QueryMap, HeadersMap, []).

-spec describe_application_instance(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_application_instance_response(), tuple()} |
    {error, any()} |
    {error, describe_application_instance_errors(), tuple()}.
describe_application_instance(Client, ApplicationInstanceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/application-instances/", aws_util:encode_uri(ApplicationInstanceId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about an application instance's configuration
%% manifest.
-spec describe_application_instance_details(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_application_instance_details_response(), tuple()} |
    {error, any()} |
    {error, describe_application_instance_details_errors(), tuple()}.
describe_application_instance_details(Client, ApplicationInstanceId)
  when is_map(Client) ->
    describe_application_instance_details(Client, ApplicationInstanceId, #{}, #{}).

-spec describe_application_instance_details(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_application_instance_details_response(), tuple()} |
    {error, any()} |
    {error, describe_application_instance_details_errors(), tuple()}.
describe_application_instance_details(Client, ApplicationInstanceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_application_instance_details(Client, ApplicationInstanceId, QueryMap, HeadersMap, []).

-spec describe_application_instance_details(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_application_instance_details_response(), tuple()} |
    {error, any()} |
    {error, describe_application_instance_details_errors(), tuple()}.
describe_application_instance_details(Client, ApplicationInstanceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/application-instances/", aws_util:encode_uri(ApplicationInstanceId), "/details"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about a device.
-spec describe_device(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_device_response(), tuple()} |
    {error, any()} |
    {error, describe_device_errors(), tuple()}.
describe_device(Client, DeviceId)
  when is_map(Client) ->
    describe_device(Client, DeviceId, #{}, #{}).

-spec describe_device(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_device_response(), tuple()} |
    {error, any()} |
    {error, describe_device_errors(), tuple()}.
describe_device(Client, DeviceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_device(Client, DeviceId, QueryMap, HeadersMap, []).

-spec describe_device(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_device_response(), tuple()} |
    {error, any()} |
    {error, describe_device_errors(), tuple()}.
describe_device(Client, DeviceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/devices/", aws_util:encode_uri(DeviceId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about a device job.
-spec describe_device_job(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_device_job_response(), tuple()} |
    {error, any()} |
    {error, describe_device_job_errors(), tuple()}.
describe_device_job(Client, JobId)
  when is_map(Client) ->
    describe_device_job(Client, JobId, #{}, #{}).

-spec describe_device_job(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_device_job_response(), tuple()} |
    {error, any()} |
    {error, describe_device_job_errors(), tuple()}.
describe_device_job(Client, JobId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_device_job(Client, JobId, QueryMap, HeadersMap, []).

-spec describe_device_job(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_device_job_response(), tuple()} |
    {error, any()} |
    {error, describe_device_job_errors(), tuple()}.
describe_device_job(Client, JobId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/jobs/", aws_util:encode_uri(JobId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about a node.
-spec describe_node(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_node_response(), tuple()} |
    {error, any()} |
    {error, describe_node_errors(), tuple()}.
describe_node(Client, NodeId)
  when is_map(Client) ->
    describe_node(Client, NodeId, #{}, #{}).

-spec describe_node(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_node_response(), tuple()} |
    {error, any()} |
    {error, describe_node_errors(), tuple()}.
describe_node(Client, NodeId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_node(Client, NodeId, QueryMap, HeadersMap, []).

-spec describe_node(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_node_response(), tuple()} |
    {error, any()} |
    {error, describe_node_errors(), tuple()}.
describe_node(Client, NodeId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/nodes/", aws_util:encode_uri(NodeId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"OwnerAccount">>, maps:get(<<"OwnerAccount">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about a job to create a camera stream node.
-spec describe_node_from_template_job(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_node_from_template_job_response(), tuple()} |
    {error, any()} |
    {error, describe_node_from_template_job_errors(), tuple()}.
describe_node_from_template_job(Client, JobId)
  when is_map(Client) ->
    describe_node_from_template_job(Client, JobId, #{}, #{}).

-spec describe_node_from_template_job(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_node_from_template_job_response(), tuple()} |
    {error, any()} |
    {error, describe_node_from_template_job_errors(), tuple()}.
describe_node_from_template_job(Client, JobId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_node_from_template_job(Client, JobId, QueryMap, HeadersMap, []).

-spec describe_node_from_template_job(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_node_from_template_job_response(), tuple()} |
    {error, any()} |
    {error, describe_node_from_template_job_errors(), tuple()}.
describe_node_from_template_job(Client, JobId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/packages/template-job/", aws_util:encode_uri(JobId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about a package.
-spec describe_package(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_package_response(), tuple()} |
    {error, any()} |
    {error, describe_package_errors(), tuple()}.
describe_package(Client, PackageId)
  when is_map(Client) ->
    describe_package(Client, PackageId, #{}, #{}).

-spec describe_package(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_package_response(), tuple()} |
    {error, any()} |
    {error, describe_package_errors(), tuple()}.
describe_package(Client, PackageId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_package(Client, PackageId, QueryMap, HeadersMap, []).

-spec describe_package(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_package_response(), tuple()} |
    {error, any()} |
    {error, describe_package_errors(), tuple()}.
describe_package(Client, PackageId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/packages/metadata/", aws_util:encode_uri(PackageId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about a package import job.
-spec describe_package_import_job(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_package_import_job_response(), tuple()} |
    {error, any()} |
    {error, describe_package_import_job_errors(), tuple()}.
describe_package_import_job(Client, JobId)
  when is_map(Client) ->
    describe_package_import_job(Client, JobId, #{}, #{}).

-spec describe_package_import_job(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_package_import_job_response(), tuple()} |
    {error, any()} |
    {error, describe_package_import_job_errors(), tuple()}.
describe_package_import_job(Client, JobId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_package_import_job(Client, JobId, QueryMap, HeadersMap, []).

-spec describe_package_import_job(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_package_import_job_response(), tuple()} |
    {error, any()} |
    {error, describe_package_import_job_errors(), tuple()}.
describe_package_import_job(Client, JobId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/packages/import-jobs/", aws_util:encode_uri(JobId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about a package version.
-spec describe_package_version(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_package_version_response(), tuple()} |
    {error, any()} |
    {error, describe_package_version_errors(), tuple()}.
describe_package_version(Client, PackageId, PackageVersion)
  when is_map(Client) ->
    describe_package_version(Client, PackageId, PackageVersion, #{}, #{}).

-spec describe_package_version(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_package_version_response(), tuple()} |
    {error, any()} |
    {error, describe_package_version_errors(), tuple()}.
describe_package_version(Client, PackageId, PackageVersion, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_package_version(Client, PackageId, PackageVersion, QueryMap, HeadersMap, []).

-spec describe_package_version(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_package_version_response(), tuple()} |
    {error, any()} |
    {error, describe_package_version_errors(), tuple()}.
describe_package_version(Client, PackageId, PackageVersion, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/packages/metadata/", aws_util:encode_uri(PackageId), "/versions/", aws_util:encode_uri(PackageVersion), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"OwnerAccount">>, maps:get(<<"OwnerAccount">>, QueryMap, undefined)},
        {<<"PatchVersion">>, maps:get(<<"PatchVersion">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of application instance dependencies.
-spec list_application_instance_dependencies(aws_client:aws_client(), binary() | list()) ->
    {ok, list_application_instance_dependencies_response(), tuple()} |
    {error, any()} |
    {error, list_application_instance_dependencies_errors(), tuple()}.
list_application_instance_dependencies(Client, ApplicationInstanceId)
  when is_map(Client) ->
    list_application_instance_dependencies(Client, ApplicationInstanceId, #{}, #{}).

-spec list_application_instance_dependencies(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_application_instance_dependencies_response(), tuple()} |
    {error, any()} |
    {error, list_application_instance_dependencies_errors(), tuple()}.
list_application_instance_dependencies(Client, ApplicationInstanceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_application_instance_dependencies(Client, ApplicationInstanceId, QueryMap, HeadersMap, []).

-spec list_application_instance_dependencies(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_application_instance_dependencies_response(), tuple()} |
    {error, any()} |
    {error, list_application_instance_dependencies_errors(), tuple()}.
list_application_instance_dependencies(Client, ApplicationInstanceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/application-instances/", aws_util:encode_uri(ApplicationInstanceId), "/package-dependencies"],
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

%% @doc Returns a list of application node instances.
-spec list_application_instance_node_instances(aws_client:aws_client(), binary() | list()) ->
    {ok, list_application_instance_node_instances_response(), tuple()} |
    {error, any()} |
    {error, list_application_instance_node_instances_errors(), tuple()}.
list_application_instance_node_instances(Client, ApplicationInstanceId)
  when is_map(Client) ->
    list_application_instance_node_instances(Client, ApplicationInstanceId, #{}, #{}).

-spec list_application_instance_node_instances(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_application_instance_node_instances_response(), tuple()} |
    {error, any()} |
    {error, list_application_instance_node_instances_errors(), tuple()}.
list_application_instance_node_instances(Client, ApplicationInstanceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_application_instance_node_instances(Client, ApplicationInstanceId, QueryMap, HeadersMap, []).

-spec list_application_instance_node_instances(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_application_instance_node_instances_response(), tuple()} |
    {error, any()} |
    {error, list_application_instance_node_instances_errors(), tuple()}.
list_application_instance_node_instances(Client, ApplicationInstanceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/application-instances/", aws_util:encode_uri(ApplicationInstanceId), "/node-instances"],
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

%% @doc Returns a list of application instances.
-spec list_application_instances(aws_client:aws_client()) ->
    {ok, list_application_instances_response(), tuple()} |
    {error, any()} |
    {error, list_application_instances_errors(), tuple()}.
list_application_instances(Client)
  when is_map(Client) ->
    list_application_instances(Client, #{}, #{}).

-spec list_application_instances(aws_client:aws_client(), map(), map()) ->
    {ok, list_application_instances_response(), tuple()} |
    {error, any()} |
    {error, list_application_instances_errors(), tuple()}.
list_application_instances(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_application_instances(Client, QueryMap, HeadersMap, []).

-spec list_application_instances(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_application_instances_response(), tuple()} |
    {error, any()} |
    {error, list_application_instances_errors(), tuple()}.
list_application_instances(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/application-instances"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"deviceId">>, maps:get(<<"deviceId">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"statusFilter">>, maps:get(<<"statusFilter">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of devices.
-spec list_devices(aws_client:aws_client()) ->
    {ok, list_devices_response(), tuple()} |
    {error, any()} |
    {error, list_devices_errors(), tuple()}.
list_devices(Client)
  when is_map(Client) ->
    list_devices(Client, #{}, #{}).

-spec list_devices(aws_client:aws_client(), map(), map()) ->
    {ok, list_devices_response(), tuple()} |
    {error, any()} |
    {error, list_devices_errors(), tuple()}.
list_devices(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_devices(Client, QueryMap, HeadersMap, []).

-spec list_devices(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_devices_response(), tuple()} |
    {error, any()} |
    {error, list_devices_errors(), tuple()}.
list_devices(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/devices"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"DeviceAggregatedStatusFilter">>, maps:get(<<"DeviceAggregatedStatusFilter">>, QueryMap, undefined)},
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NameFilter">>, maps:get(<<"NameFilter">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)},
        {<<"SortBy">>, maps:get(<<"SortBy">>, QueryMap, undefined)},
        {<<"SortOrder">>, maps:get(<<"SortOrder">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of jobs.
-spec list_devices_jobs(aws_client:aws_client()) ->
    {ok, list_devices_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_devices_jobs_errors(), tuple()}.
list_devices_jobs(Client)
  when is_map(Client) ->
    list_devices_jobs(Client, #{}, #{}).

-spec list_devices_jobs(aws_client:aws_client(), map(), map()) ->
    {ok, list_devices_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_devices_jobs_errors(), tuple()}.
list_devices_jobs(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_devices_jobs(Client, QueryMap, HeadersMap, []).

-spec list_devices_jobs(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_devices_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_devices_jobs_errors(), tuple()}.
list_devices_jobs(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/jobs"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"DeviceId">>, maps:get(<<"DeviceId">>, QueryMap, undefined)},
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of camera stream node jobs.
-spec list_node_from_template_jobs(aws_client:aws_client()) ->
    {ok, list_node_from_template_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_node_from_template_jobs_errors(), tuple()}.
list_node_from_template_jobs(Client)
  when is_map(Client) ->
    list_node_from_template_jobs(Client, #{}, #{}).

-spec list_node_from_template_jobs(aws_client:aws_client(), map(), map()) ->
    {ok, list_node_from_template_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_node_from_template_jobs_errors(), tuple()}.
list_node_from_template_jobs(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_node_from_template_jobs(Client, QueryMap, HeadersMap, []).

-spec list_node_from_template_jobs(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_node_from_template_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_node_from_template_jobs_errors(), tuple()}.
list_node_from_template_jobs(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/packages/template-job"],
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

%% @doc Returns a list of nodes.
-spec list_nodes(aws_client:aws_client()) ->
    {ok, list_nodes_response(), tuple()} |
    {error, any()} |
    {error, list_nodes_errors(), tuple()}.
list_nodes(Client)
  when is_map(Client) ->
    list_nodes(Client, #{}, #{}).

-spec list_nodes(aws_client:aws_client(), map(), map()) ->
    {ok, list_nodes_response(), tuple()} |
    {error, any()} |
    {error, list_nodes_errors(), tuple()}.
list_nodes(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_nodes(Client, QueryMap, HeadersMap, []).

-spec list_nodes(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_nodes_response(), tuple()} |
    {error, any()} |
    {error, list_nodes_errors(), tuple()}.
list_nodes(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/nodes"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"category">>, maps:get(<<"category">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"ownerAccount">>, maps:get(<<"ownerAccount">>, QueryMap, undefined)},
        {<<"packageName">>, maps:get(<<"packageName">>, QueryMap, undefined)},
        {<<"packageVersion">>, maps:get(<<"packageVersion">>, QueryMap, undefined)},
        {<<"patchVersion">>, maps:get(<<"patchVersion">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of package import jobs.
-spec list_package_import_jobs(aws_client:aws_client()) ->
    {ok, list_package_import_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_package_import_jobs_errors(), tuple()}.
list_package_import_jobs(Client)
  when is_map(Client) ->
    list_package_import_jobs(Client, #{}, #{}).

-spec list_package_import_jobs(aws_client:aws_client(), map(), map()) ->
    {ok, list_package_import_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_package_import_jobs_errors(), tuple()}.
list_package_import_jobs(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_package_import_jobs(Client, QueryMap, HeadersMap, []).

-spec list_package_import_jobs(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_package_import_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_package_import_jobs_errors(), tuple()}.
list_package_import_jobs(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/packages/import-jobs"],
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

%% @doc Returns a list of packages.
-spec list_packages(aws_client:aws_client()) ->
    {ok, list_packages_response(), tuple()} |
    {error, any()} |
    {error, list_packages_errors(), tuple()}.
list_packages(Client)
  when is_map(Client) ->
    list_packages(Client, #{}, #{}).

-spec list_packages(aws_client:aws_client(), map(), map()) ->
    {ok, list_packages_response(), tuple()} |
    {error, any()} |
    {error, list_packages_errors(), tuple()}.
list_packages(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_packages(Client, QueryMap, HeadersMap, []).

-spec list_packages(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_packages_response(), tuple()} |
    {error, any()} |
    {error, list_packages_errors(), tuple()}.
list_packages(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/packages"],
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

%% @doc Returns a list of tags for a resource.
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

%% @doc Creates a device and returns a configuration archive.
%%
%% The configuration archive is a ZIP file that contains a
%% provisioning certificate that is valid for 5 minutes. Name the
%% configuration archive
%% `certificates-omni_device-name.zip' and transfer it to the device
%% within 5
%% minutes. Use the included USB storage device and connect it to the USB 3.0
%% port next to the HDMI output.
-spec provision_device(aws_client:aws_client(), provision_device_request()) ->
    {ok, provision_device_response(), tuple()} |
    {error, any()} |
    {error, provision_device_errors(), tuple()}.
provision_device(Client, Input) ->
    provision_device(Client, Input, []).

-spec provision_device(aws_client:aws_client(), provision_device_request(), proplists:proplist()) ->
    {ok, provision_device_response(), tuple()} |
    {error, any()} |
    {error, provision_device_errors(), tuple()}.
provision_device(Client, Input0, Options0) ->
    Method = post,
    Path = ["/devices"],
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

%% @doc Registers a package version.
-spec register_package_version(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), register_package_version_request()) ->
    {ok, register_package_version_response(), tuple()} |
    {error, any()} |
    {error, register_package_version_errors(), tuple()}.
register_package_version(Client, PackageId, PackageVersion, PatchVersion, Input) ->
    register_package_version(Client, PackageId, PackageVersion, PatchVersion, Input, []).

-spec register_package_version(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), register_package_version_request(), proplists:proplist()) ->
    {ok, register_package_version_response(), tuple()} |
    {error, any()} |
    {error, register_package_version_errors(), tuple()}.
register_package_version(Client, PackageId, PackageVersion, PatchVersion, Input0, Options0) ->
    Method = put,
    Path = ["/packages/", aws_util:encode_uri(PackageId), "/versions/", aws_util:encode_uri(PackageVersion), "/patch/", aws_util:encode_uri(PatchVersion), ""],
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

%% @doc Removes an application instance.
-spec remove_application_instance(aws_client:aws_client(), binary() | list(), remove_application_instance_request()) ->
    {ok, remove_application_instance_response(), tuple()} |
    {error, any()} |
    {error, remove_application_instance_errors(), tuple()}.
remove_application_instance(Client, ApplicationInstanceId, Input) ->
    remove_application_instance(Client, ApplicationInstanceId, Input, []).

-spec remove_application_instance(aws_client:aws_client(), binary() | list(), remove_application_instance_request(), proplists:proplist()) ->
    {ok, remove_application_instance_response(), tuple()} |
    {error, any()} |
    {error, remove_application_instance_errors(), tuple()}.
remove_application_instance(Client, ApplicationInstanceId, Input0, Options0) ->
    Method = delete,
    Path = ["/application-instances/", aws_util:encode_uri(ApplicationInstanceId), ""],
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

%% @doc Signal camera nodes to stop or resume.
-spec signal_application_instance_node_instances(aws_client:aws_client(), binary() | list(), signal_application_instance_node_instances_request()) ->
    {ok, signal_application_instance_node_instances_response(), tuple()} |
    {error, any()} |
    {error, signal_application_instance_node_instances_errors(), tuple()}.
signal_application_instance_node_instances(Client, ApplicationInstanceId, Input) ->
    signal_application_instance_node_instances(Client, ApplicationInstanceId, Input, []).

-spec signal_application_instance_node_instances(aws_client:aws_client(), binary() | list(), signal_application_instance_node_instances_request(), proplists:proplist()) ->
    {ok, signal_application_instance_node_instances_response(), tuple()} |
    {error, any()} |
    {error, signal_application_instance_node_instances_errors(), tuple()}.
signal_application_instance_node_instances(Client, ApplicationInstanceId, Input0, Options0) ->
    Method = put,
    Path = ["/application-instances/", aws_util:encode_uri(ApplicationInstanceId), "/node-signals"],
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

%% @doc Tags a resource.
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

%% @doc Removes tags from a resource.
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

%% @doc Updates a device's metadata.
-spec update_device_metadata(aws_client:aws_client(), binary() | list(), update_device_metadata_request()) ->
    {ok, update_device_metadata_response(), tuple()} |
    {error, any()} |
    {error, update_device_metadata_errors(), tuple()}.
update_device_metadata(Client, DeviceId, Input) ->
    update_device_metadata(Client, DeviceId, Input, []).

-spec update_device_metadata(aws_client:aws_client(), binary() | list(), update_device_metadata_request(), proplists:proplist()) ->
    {ok, update_device_metadata_response(), tuple()} |
    {error, any()} |
    {error, update_device_metadata_errors(), tuple()}.
update_device_metadata(Client, DeviceId, Input0, Options0) ->
    Method = put,
    Path = ["/devices/", aws_util:encode_uri(DeviceId), ""],
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
    Client1 = Client#{service => <<"panorama">>},
    Host = build_host(<<"panorama">>, Client1),
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
