%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Lightsail is the easiest way to get started with Amazon Web
%% Services (Amazon Web Services) for developers who need to build websites
%% or web applications.
%%
%% It includes
%% everything you need to launch your project quickly - instances (virtual
%% private servers),
%% container services, storage buckets, managed databases, SSD-based block
%% storage, static IP
%% addresses, load balancers, content delivery network (CDN) distributions,
%% DNS management of
%% registered domains, and resource snapshots (backups) - for a low,
%% predictable monthly
%% price.
%%
%% You can manage your Lightsail resources using the Lightsail console,
%% Lightsail API,
%% Command Line Interface (CLI), or SDKs. For more information about
%% Lightsail
%% concepts and tasks, see the Amazon Lightsail Developer Guide:
%% https://docs.aws.amazon.com/lightsail/latest/userguide/lightsail-how-to-set-up-and-configure-aws-cli.
%%
%% This API Reference provides detailed information about the actions, data
%% types,
%% parameters, and errors of the Lightsail service. For more information
%% about the supported
%% Amazon Web Services Regions, endpoints, and service quotas of the
%% Lightsail service, see
%% Amazon Lightsail Endpoints
%% and Quotas: https://docs.aws.amazon.com/general/latest/gr/lightsail.html
%% in the Amazon Web Services General Reference.
-module(aws_lightsail).

-export([allocate_static_ip/2,
         allocate_static_ip/3,
         attach_certificate_to_distribution/2,
         attach_certificate_to_distribution/3,
         attach_disk/2,
         attach_disk/3,
         attach_instances_to_load_balancer/2,
         attach_instances_to_load_balancer/3,
         attach_load_balancer_tls_certificate/2,
         attach_load_balancer_tls_certificate/3,
         attach_static_ip/2,
         attach_static_ip/3,
         close_instance_public_ports/2,
         close_instance_public_ports/3,
         copy_snapshot/2,
         copy_snapshot/3,
         create_bucket/2,
         create_bucket/3,
         create_bucket_access_key/2,
         create_bucket_access_key/3,
         create_certificate/2,
         create_certificate/3,
         create_cloud_formation_stack/2,
         create_cloud_formation_stack/3,
         create_contact_method/2,
         create_contact_method/3,
         create_container_service/2,
         create_container_service/3,
         create_container_service_deployment/2,
         create_container_service_deployment/3,
         create_container_service_registry_login/2,
         create_container_service_registry_login/3,
         create_disk/2,
         create_disk/3,
         create_disk_from_snapshot/2,
         create_disk_from_snapshot/3,
         create_disk_snapshot/2,
         create_disk_snapshot/3,
         create_distribution/2,
         create_distribution/3,
         create_domain/2,
         create_domain/3,
         create_domain_entry/2,
         create_domain_entry/3,
         create_g_ui_session_access_details/2,
         create_g_ui_session_access_details/3,
         create_instance_snapshot/2,
         create_instance_snapshot/3,
         create_instances/2,
         create_instances/3,
         create_instances_from_snapshot/2,
         create_instances_from_snapshot/3,
         create_key_pair/2,
         create_key_pair/3,
         create_load_balancer/2,
         create_load_balancer/3,
         create_load_balancer_tls_certificate/2,
         create_load_balancer_tls_certificate/3,
         create_relational_database/2,
         create_relational_database/3,
         create_relational_database_from_snapshot/2,
         create_relational_database_from_snapshot/3,
         create_relational_database_snapshot/2,
         create_relational_database_snapshot/3,
         delete_alarm/2,
         delete_alarm/3,
         delete_auto_snapshot/2,
         delete_auto_snapshot/3,
         delete_bucket/2,
         delete_bucket/3,
         delete_bucket_access_key/2,
         delete_bucket_access_key/3,
         delete_certificate/2,
         delete_certificate/3,
         delete_contact_method/2,
         delete_contact_method/3,
         delete_container_image/2,
         delete_container_image/3,
         delete_container_service/2,
         delete_container_service/3,
         delete_disk/2,
         delete_disk/3,
         delete_disk_snapshot/2,
         delete_disk_snapshot/3,
         delete_distribution/2,
         delete_distribution/3,
         delete_domain/2,
         delete_domain/3,
         delete_domain_entry/2,
         delete_domain_entry/3,
         delete_instance/2,
         delete_instance/3,
         delete_instance_snapshot/2,
         delete_instance_snapshot/3,
         delete_key_pair/2,
         delete_key_pair/3,
         delete_known_host_keys/2,
         delete_known_host_keys/3,
         delete_load_balancer/2,
         delete_load_balancer/3,
         delete_load_balancer_tls_certificate/2,
         delete_load_balancer_tls_certificate/3,
         delete_relational_database/2,
         delete_relational_database/3,
         delete_relational_database_snapshot/2,
         delete_relational_database_snapshot/3,
         detach_certificate_from_distribution/2,
         detach_certificate_from_distribution/3,
         detach_disk/2,
         detach_disk/3,
         detach_instances_from_load_balancer/2,
         detach_instances_from_load_balancer/3,
         detach_static_ip/2,
         detach_static_ip/3,
         disable_add_on/2,
         disable_add_on/3,
         download_default_key_pair/2,
         download_default_key_pair/3,
         enable_add_on/2,
         enable_add_on/3,
         export_snapshot/2,
         export_snapshot/3,
         get_active_names/2,
         get_active_names/3,
         get_alarms/2,
         get_alarms/3,
         get_auto_snapshots/2,
         get_auto_snapshots/3,
         get_blueprints/2,
         get_blueprints/3,
         get_bucket_access_keys/2,
         get_bucket_access_keys/3,
         get_bucket_bundles/2,
         get_bucket_bundles/3,
         get_bucket_metric_data/2,
         get_bucket_metric_data/3,
         get_buckets/2,
         get_buckets/3,
         get_bundles/2,
         get_bundles/3,
         get_certificates/2,
         get_certificates/3,
         get_cloud_formation_stack_records/2,
         get_cloud_formation_stack_records/3,
         get_contact_methods/2,
         get_contact_methods/3,
         get_container_api_metadata/2,
         get_container_api_metadata/3,
         get_container_images/2,
         get_container_images/3,
         get_container_log/2,
         get_container_log/3,
         get_container_service_deployments/2,
         get_container_service_deployments/3,
         get_container_service_metric_data/2,
         get_container_service_metric_data/3,
         get_container_service_powers/2,
         get_container_service_powers/3,
         get_container_services/2,
         get_container_services/3,
         get_cost_estimate/2,
         get_cost_estimate/3,
         get_disk/2,
         get_disk/3,
         get_disk_snapshot/2,
         get_disk_snapshot/3,
         get_disk_snapshots/2,
         get_disk_snapshots/3,
         get_disks/2,
         get_disks/3,
         get_distribution_bundles/2,
         get_distribution_bundles/3,
         get_distribution_latest_cache_reset/2,
         get_distribution_latest_cache_reset/3,
         get_distribution_metric_data/2,
         get_distribution_metric_data/3,
         get_distributions/2,
         get_distributions/3,
         get_domain/2,
         get_domain/3,
         get_domains/2,
         get_domains/3,
         get_export_snapshot_records/2,
         get_export_snapshot_records/3,
         get_instance/2,
         get_instance/3,
         get_instance_access_details/2,
         get_instance_access_details/3,
         get_instance_metric_data/2,
         get_instance_metric_data/3,
         get_instance_port_states/2,
         get_instance_port_states/3,
         get_instance_snapshot/2,
         get_instance_snapshot/3,
         get_instance_snapshots/2,
         get_instance_snapshots/3,
         get_instance_state/2,
         get_instance_state/3,
         get_instances/2,
         get_instances/3,
         get_key_pair/2,
         get_key_pair/3,
         get_key_pairs/2,
         get_key_pairs/3,
         get_load_balancer/2,
         get_load_balancer/3,
         get_load_balancer_metric_data/2,
         get_load_balancer_metric_data/3,
         get_load_balancer_tls_certificates/2,
         get_load_balancer_tls_certificates/3,
         get_load_balancer_tls_policies/2,
         get_load_balancer_tls_policies/3,
         get_load_balancers/2,
         get_load_balancers/3,
         get_operation/2,
         get_operation/3,
         get_operations/2,
         get_operations/3,
         get_operations_for_resource/2,
         get_operations_for_resource/3,
         get_regions/2,
         get_regions/3,
         get_relational_database/2,
         get_relational_database/3,
         get_relational_database_blueprints/2,
         get_relational_database_blueprints/3,
         get_relational_database_bundles/2,
         get_relational_database_bundles/3,
         get_relational_database_events/2,
         get_relational_database_events/3,
         get_relational_database_log_events/2,
         get_relational_database_log_events/3,
         get_relational_database_log_streams/2,
         get_relational_database_log_streams/3,
         get_relational_database_master_user_password/2,
         get_relational_database_master_user_password/3,
         get_relational_database_metric_data/2,
         get_relational_database_metric_data/3,
         get_relational_database_parameters/2,
         get_relational_database_parameters/3,
         get_relational_database_snapshot/2,
         get_relational_database_snapshot/3,
         get_relational_database_snapshots/2,
         get_relational_database_snapshots/3,
         get_relational_databases/2,
         get_relational_databases/3,
         get_setup_history/2,
         get_setup_history/3,
         get_static_ip/2,
         get_static_ip/3,
         get_static_ips/2,
         get_static_ips/3,
         import_key_pair/2,
         import_key_pair/3,
         is_vpc_peered/2,
         is_vpc_peered/3,
         open_instance_public_ports/2,
         open_instance_public_ports/3,
         peer_vpc/2,
         peer_vpc/3,
         put_alarm/2,
         put_alarm/3,
         put_instance_public_ports/2,
         put_instance_public_ports/3,
         reboot_instance/2,
         reboot_instance/3,
         reboot_relational_database/2,
         reboot_relational_database/3,
         register_container_image/2,
         register_container_image/3,
         release_static_ip/2,
         release_static_ip/3,
         reset_distribution_cache/2,
         reset_distribution_cache/3,
         send_contact_method_verification/2,
         send_contact_method_verification/3,
         set_ip_address_type/2,
         set_ip_address_type/3,
         set_resource_access_for_bucket/2,
         set_resource_access_for_bucket/3,
         setup_instance_https/2,
         setup_instance_https/3,
         start_g_ui_session/2,
         start_g_ui_session/3,
         start_instance/2,
         start_instance/3,
         start_relational_database/2,
         start_relational_database/3,
         stop_g_ui_session/2,
         stop_g_ui_session/3,
         stop_instance/2,
         stop_instance/3,
         stop_relational_database/2,
         stop_relational_database/3,
         tag_resource/2,
         tag_resource/3,
         test_alarm/2,
         test_alarm/3,
         unpeer_vpc/2,
         unpeer_vpc/3,
         untag_resource/2,
         untag_resource/3,
         update_bucket/2,
         update_bucket/3,
         update_bucket_bundle/2,
         update_bucket_bundle/3,
         update_container_service/2,
         update_container_service/3,
         update_distribution/2,
         update_distribution/3,
         update_distribution_bundle/2,
         update_distribution_bundle/3,
         update_domain_entry/2,
         update_domain_entry/3,
         update_instance_metadata_options/2,
         update_instance_metadata_options/3,
         update_load_balancer_attribute/2,
         update_load_balancer_attribute/3,
         update_relational_database/2,
         update_relational_database/3,
         update_relational_database_parameters/2,
         update_relational_database_parameters/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% attach_disk_request() :: #{
%%   <<"autoMounting">> => boolean(),
%%   <<"diskName">> := string(),
%%   <<"diskPath">> := string(),
%%   <<"instanceName">> := string()
%% }
-type attach_disk_request() :: #{binary() => any()}.

%% Example:
%% create_instances_from_snapshot_request() :: #{
%%   <<"addOns">> => list(add_on_request()),
%%   <<"attachedDiskMapping">> => map(),
%%   <<"availabilityZone">> := string(),
%%   <<"bundleId">> := string(),
%%   <<"instanceNames">> := list(string()),
%%   <<"instanceSnapshotName">> => string(),
%%   <<"ipAddressType">> => list(any()),
%%   <<"keyPairName">> => string(),
%%   <<"restoreDate">> => string(),
%%   <<"sourceInstanceName">> => string(),
%%   <<"tags">> => list(tag()),
%%   <<"useLatestRestorableAutoSnapshot">> => boolean(),
%%   <<"userData">> => string()
%% }
-type create_instances_from_snapshot_request() :: #{binary() => any()}.

%% Example:
%% update_bucket_bundle_request() :: #{
%%   <<"bucketName">> := string(),
%%   <<"bundleId">> := string()
%% }
-type update_bucket_bundle_request() :: #{binary() => any()}.

%% Example:
%% delete_container_service_request() :: #{

%% }
-type delete_container_service_request() :: #{binary() => any()}.

%% Example:
%% operation() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"errorCode">> => string(),
%%   <<"errorDetails">> => string(),
%%   <<"id">> => string(),
%%   <<"isTerminal">> => boolean(),
%%   <<"location">> => resource_location(),
%%   <<"operationDetails">> => string(),
%%   <<"operationType">> => list(any()),
%%   <<"resourceName">> => string(),
%%   <<"resourceType">> => list(any()),
%%   <<"status">> => list(any()),
%%   <<"statusChangedAt">> => non_neg_integer()
%% }
-type operation() :: #{binary() => any()}.

%% Example:
%% create_container_service_deployment_request() :: #{
%%   <<"containers">> => map(),
%%   <<"publicEndpoint">> => endpoint_request()
%% }
-type create_container_service_deployment_request() :: #{binary() => any()}.

%% Example:
%% get_distribution_latest_cache_reset_request() :: #{
%%   <<"distributionName">> => string()
%% }
-type get_distribution_latest_cache_reset_request() :: #{binary() => any()}.

%% Example:
%% disable_add_on_result() :: #{
%%   <<"operations">> => list(operation())
%% }
-type disable_add_on_result() :: #{binary() => any()}.

%% Example:
%% container_service_registry_login() :: #{
%%   <<"expiresAt">> => non_neg_integer(),
%%   <<"password">> => string(),
%%   <<"registry">> => string(),
%%   <<"username">> => string()
%% }
-type container_service_registry_login() :: #{binary() => any()}.

%% Example:
%% distribution_bundle() :: #{
%%   <<"bundleId">> => string(),
%%   <<"isActive">> => boolean(),
%%   <<"name">> => string(),
%%   <<"price">> => float(),
%%   <<"transferPerMonthInGb">> => integer()
%% }
-type distribution_bundle() :: #{binary() => any()}.

%% Example:
%% delete_disk_snapshot_result() :: #{
%%   <<"operations">> => list(operation())
%% }
-type delete_disk_snapshot_result() :: #{binary() => any()}.

%% Example:
%% register_container_image_request() :: #{
%%   <<"digest">> := string(),
%%   <<"label">> := string()
%% }
-type register_container_image_request() :: #{binary() => any()}.

%% Example:
%% pending_maintenance_action() :: #{
%%   <<"action">> => string(),
%%   <<"currentApplyDate">> => non_neg_integer(),
%%   <<"description">> => string()
%% }
-type pending_maintenance_action() :: #{binary() => any()}.

%% Example:
%% get_domain_request() :: #{
%%   <<"domainName">> := string()
%% }
-type get_domain_request() :: #{binary() => any()}.

%% Example:
%% set_resource_access_for_bucket_request() :: #{
%%   <<"access">> := list(any()),
%%   <<"bucketName">> := string(),
%%   <<"resourceName">> := string()
%% }
-type set_resource_access_for_bucket_request() :: #{binary() => any()}.

%% Example:
%% delete_contact_method_request() :: #{
%%   <<"protocol">> := list(any())
%% }
-type delete_contact_method_request() :: #{binary() => any()}.

%% Example:
%% get_regions_result() :: #{
%%   <<"regions">> => list(region())
%% }
-type get_regions_result() :: #{binary() => any()}.

%% Example:
%% test_alarm_request() :: #{
%%   <<"state">> := list(any())
%% }
-type test_alarm_request() :: #{binary() => any()}.

%% Example:
%% contact_method() :: #{
%%   <<"arn">> => string(),
%%   <<"contactEndpoint">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"location">> => resource_location(),
%%   <<"name">> => string(),
%%   <<"protocol">> => list(any()),
%%   <<"resourceType">> => list(any()),
%%   <<"status">> => list(any()),
%%   <<"supportCode">> => string()
%% }
-type contact_method() :: #{binary() => any()}.

%% Example:
%% enable_add_on_request() :: #{
%%   <<"addOnRequest">> := add_on_request(),
%%   <<"resourceName">> := string()
%% }
-type enable_add_on_request() :: #{binary() => any()}.

%% Example:
%% disk_snapshot_info() :: #{
%%   <<"sizeInGb">> => integer()
%% }
-type disk_snapshot_info() :: #{binary() => any()}.

%% Example:
%% dns_record_creation_state() :: #{
%%   <<"code">> => list(any()),
%%   <<"message">> => string()
%% }
-type dns_record_creation_state() :: #{binary() => any()}.

%% Example:
%% get_load_balancer_result() :: #{
%%   <<"loadBalancer">> => load_balancer()
%% }
-type get_load_balancer_result() :: #{binary() => any()}.

%% Example:
%% tag_resource_request() :: #{
%%   <<"resourceArn">> => string(),
%%   <<"resourceName">> := string(),
%%   <<"tags">> := list(tag())
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% get_static_ip_result() :: #{
%%   <<"staticIp">> => static_ip()
%% }
-type get_static_ip_result() :: #{binary() => any()}.

%% Example:
%% put_instance_public_ports_request() :: #{
%%   <<"instanceName">> := string(),
%%   <<"portInfos">> := list(port_info())
%% }
-type put_instance_public_ports_request() :: #{binary() => any()}.

%% Example:
%% get_export_snapshot_records_result() :: #{
%%   <<"exportSnapshotRecords">> => list(export_snapshot_record()),
%%   <<"nextPageToken">> => string()
%% }
-type get_export_snapshot_records_result() :: #{binary() => any()}.

%% Example:
%% load_balancer_tls_policy() :: #{
%%   <<"ciphers">> => list(string()),
%%   <<"description">> => string(),
%%   <<"isDefault">> => boolean(),
%%   <<"name">> => string(),
%%   <<"protocols">> => list(string())
%% }
-type load_balancer_tls_policy() :: #{binary() => any()}.

%% Example:
%% access_rules() :: #{
%%   <<"allowPublicOverrides">> => boolean(),
%%   <<"getObject">> => list(any())
%% }
-type access_rules() :: #{binary() => any()}.

%% Example:
%% container() :: #{
%%   <<"command">> => list(string()),
%%   <<"environment">> => map(),
%%   <<"image">> => string(),
%%   <<"ports">> => map()
%% }
-type container() :: #{binary() => any()}.

%% Example:
%% domain_validation_record() :: #{
%%   <<"dnsRecordCreationState">> => dns_record_creation_state(),
%%   <<"domainName">> => string(),
%%   <<"resourceRecord">> => resource_record(),
%%   <<"validationStatus">> => list(any())
%% }
-type domain_validation_record() :: #{binary() => any()}.

%% Example:
%% create_container_service_registry_login_result() :: #{
%%   <<"registryLogin">> => container_service_registry_login()
%% }
-type create_container_service_registry_login_result() :: #{binary() => any()}.

%% Example:
%% attach_instances_to_load_balancer_result() :: #{
%%   <<"operations">> => list(operation())
%% }
-type attach_instances_to_load_balancer_result() :: #{binary() => any()}.

%% Example:
%% start_instance_result() :: #{
%%   <<"operations">> => list(operation())
%% }
-type start_instance_result() :: #{binary() => any()}.

%% Example:
%% send_contact_method_verification_request() :: #{
%%   <<"protocol">> := list(any())
%% }
-type send_contact_method_verification_request() :: #{binary() => any()}.

%% Example:
%% availability_zone() :: #{
%%   <<"state">> => string(),
%%   <<"zoneName">> => string()
%% }
-type availability_zone() :: #{binary() => any()}.

%% Example:
%% put_alarm_request() :: #{
%%   <<"alarmName">> := string(),
%%   <<"comparisonOperator">> := list(any()),
%%   <<"contactProtocols">> => list(list(any())()),
%%   <<"datapointsToAlarm">> => integer(),
%%   <<"evaluationPeriods">> := integer(),
%%   <<"metricName">> := list(any()),
%%   <<"monitoredResourceName">> := string(),
%%   <<"notificationEnabled">> => boolean(),
%%   <<"notificationTriggers">> => list(list(any())()),
%%   <<"threshold">> := float(),
%%   <<"treatMissingData">> => list(any())
%% }
-type put_alarm_request() :: #{binary() => any()}.

%% Example:
%% add_on() :: #{
%%   <<"duration">> => string(),
%%   <<"name">> => string(),
%%   <<"nextSnapshotTimeOfDay">> => string(),
%%   <<"snapshotTimeOfDay">> => string(),
%%   <<"status">> => string(),
%%   <<"threshold">> => string()
%% }
-type add_on() :: #{binary() => any()}.

%% Example:
%% delete_load_balancer_tls_certificate_request() :: #{
%%   <<"certificateName">> := string(),
%%   <<"force">> => boolean(),
%%   <<"loadBalancerName">> := string()
%% }
-type delete_load_balancer_tls_certificate_request() :: #{binary() => any()}.

%% Example:
%% create_instances_from_snapshot_result() :: #{
%%   <<"operations">> => list(operation())
%% }
-type create_instances_from_snapshot_result() :: #{binary() => any()}.

%% Example:
%% get_load_balancer_request() :: #{
%%   <<"loadBalancerName">> := string()
%% }
-type get_load_balancer_request() :: #{binary() => any()}.

%% Example:
%% get_regions_request() :: #{
%%   <<"includeAvailabilityZones">> => boolean(),
%%   <<"includeRelationalDatabaseAvailabilityZones">> => boolean()
%% }
-type get_regions_request() :: #{binary() => any()}.

%% Example:
%% region_setup_in_progress_exception() :: #{
%%   <<"code">> => string(),
%%   <<"docs">> => string(),
%%   <<"message">> => string(),
%%   <<"tip">> => string()
%% }
-type region_setup_in_progress_exception() :: #{binary() => any()}.

%% Example:
%% untag_resource_result() :: #{
%%   <<"operations">> => list(operation())
%% }
-type untag_resource_result() :: #{binary() => any()}.

%% Example:
%% get_instance_port_states_result() :: #{
%%   <<"portStates">> => list(instance_port_state())
%% }
-type get_instance_port_states_result() :: #{binary() => any()}.

%% Example:
%% get_relational_database_master_user_password_result() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"masterUserPassword">> => string()
%% }
-type get_relational_database_master_user_password_result() :: #{binary() => any()}.

%% Example:
%% update_relational_database_request() :: #{
%%   <<"applyImmediately">> => boolean(),
%%   <<"caCertificateIdentifier">> => string(),
%%   <<"disableBackupRetention">> => boolean(),
%%   <<"enableBackupRetention">> => boolean(),
%%   <<"masterUserPassword">> => string(),
%%   <<"preferredBackupWindow">> => string(),
%%   <<"preferredMaintenanceWindow">> => string(),
%%   <<"publiclyAccessible">> => boolean(),
%%   <<"relationalDatabaseBlueprintId">> => string(),
%%   <<"relationalDatabaseName">> := string(),
%%   <<"rotateMasterUserPassword">> => boolean()
%% }
-type update_relational_database_request() :: #{binary() => any()}.

%% Example:
%% container_service_health_check_config() :: #{
%%   <<"healthyThreshold">> => integer(),
%%   <<"intervalSeconds">> => integer(),
%%   <<"path">> => string(),
%%   <<"successCodes">> => string(),
%%   <<"timeoutSeconds">> => integer(),
%%   <<"unhealthyThreshold">> => integer()
%% }
-type container_service_health_check_config() :: #{binary() => any()}.

%% Example:
%% detach_instances_from_load_balancer_result() :: #{
%%   <<"operations">> => list(operation())
%% }
-type detach_instances_from_load_balancer_result() :: #{binary() => any()}.

%% Example:
%% get_bucket_bundles_result() :: #{
%%   <<"bundles">> => list(bucket_bundle())
%% }
-type get_bucket_bundles_result() :: #{binary() => any()}.

%% Example:
%% update_load_balancer_attribute_request() :: #{
%%   <<"attributeName">> := list(any()),
%%   <<"attributeValue">> := string(),
%%   <<"loadBalancerName">> := string()
%% }
-type update_load_balancer_attribute_request() :: #{binary() => any()}.

%% Example:
%% create_certificate_result() :: #{
%%   <<"certificate">> => certificate_summary(),
%%   <<"operations">> => list(operation())
%% }
-type create_certificate_result() :: #{binary() => any()}.

%% Example:
%% load_balancer_tls_certificate_domain_validation_record() :: #{
%%   <<"dnsRecordCreationState">> => load_balancer_tls_certificate_dns_record_creation_state(),
%%   <<"domainName">> => string(),
%%   <<"name">> => string(),
%%   <<"type">> => string(),
%%   <<"validationStatus">> => list(any()),
%%   <<"value">> => string()
%% }
-type load_balancer_tls_certificate_domain_validation_record() :: #{binary() => any()}.

%% Example:
%% lightsail_distribution() :: #{
%%   <<"ableToUpdateBundle">> => boolean(),
%%   <<"alternativeDomainNames">> => list(string()),
%%   <<"arn">> => string(),
%%   <<"bundleId">> => string(),
%%   <<"cacheBehaviorSettings">> => cache_settings(),
%%   <<"cacheBehaviors">> => list(cache_behavior_per_path()),
%%   <<"certificateName">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"defaultCacheBehavior">> => cache_behavior(),
%%   <<"domainName">> => string(),
%%   <<"ipAddressType">> => list(any()),
%%   <<"isEnabled">> => boolean(),
%%   <<"location">> => resource_location(),
%%   <<"name">> => string(),
%%   <<"origin">> => origin(),
%%   <<"originPublicDNS">> => string(),
%%   <<"resourceType">> => list(any()),
%%   <<"status">> => string(),
%%   <<"supportCode">> => string(),
%%   <<"tags">> => list(tag()),
%%   <<"viewerMinimumTlsProtocolVersion">> => string()
%% }
-type lightsail_distribution() :: #{binary() => any()}.

%% Example:
%% container_service_e_c_r_image_puller_role_request() :: #{
%%   <<"isActive">> => boolean()
%% }
-type container_service_e_c_r_image_puller_role_request() :: #{binary() => any()}.

%% Example:
%% get_container_services_request() :: #{
%%   <<"serviceName">> => string()
%% }
-type get_container_services_request() :: #{binary() => any()}.

%% Example:
%% cloud_formation_stack_record_source_info() :: #{
%%   <<"arn">> => string(),
%%   <<"name">> => string(),
%%   <<"resourceType">> => list(any())
%% }
-type cloud_formation_stack_record_source_info() :: #{binary() => any()}.

%% Example:
%% load_balancer_tls_certificate() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"domainName">> => string(),
%%   <<"domainValidationRecords">> => list(load_balancer_tls_certificate_domain_validation_record()),
%%   <<"failureReason">> => list(any()),
%%   <<"isAttached">> => boolean(),
%%   <<"issuedAt">> => non_neg_integer(),
%%   <<"issuer">> => string(),
%%   <<"keyAlgorithm">> => string(),
%%   <<"loadBalancerName">> => string(),
%%   <<"location">> => resource_location(),
%%   <<"name">> => string(),
%%   <<"notAfter">> => non_neg_integer(),
%%   <<"notBefore">> => non_neg_integer(),
%%   <<"renewalSummary">> => load_balancer_tls_certificate_renewal_summary(),
%%   <<"resourceType">> => list(any()),
%%   <<"revocationReason">> => list(any()),
%%   <<"revokedAt">> => non_neg_integer(),
%%   <<"serial">> => string(),
%%   <<"signatureAlgorithm">> => string(),
%%   <<"status">> => list(any()),
%%   <<"subject">> => string(),
%%   <<"subjectAlternativeNames">> => list(string()),
%%   <<"supportCode">> => string(),
%%   <<"tags">> => list(tag())
%% }
-type load_balancer_tls_certificate() :: #{binary() => any()}.

%% Example:
%% stop_instance_request() :: #{
%%   <<"force">> => boolean(),
%%   <<"instanceName">> := string()
%% }
-type stop_instance_request() :: #{binary() => any()}.

%% Example:
%% get_bucket_bundles_request() :: #{
%%   <<"includeInactive">> => boolean()
%% }
-type get_bucket_bundles_request() :: #{binary() => any()}.

%% Example:
%% delete_distribution_result() :: #{
%%   <<"operation">> => operation()
%% }
-type delete_distribution_result() :: #{binary() => any()}.

%% Example:
%% create_load_balancer_result() :: #{
%%   <<"operations">> => list(operation())
%% }
-type create_load_balancer_result() :: #{binary() => any()}.

%% Example:
%% delete_instance_snapshot_result() :: #{
%%   <<"operations">> => list(operation())
%% }
-type delete_instance_snapshot_result() :: #{binary() => any()}.

%% Example:
%% delete_alarm_request() :: #{

%% }
-type delete_alarm_request() :: #{binary() => any()}.

%% Example:
%% get_relational_database_events_request() :: #{
%%   <<"durationInMinutes">> => integer(),
%%   <<"pageToken">> => string(),
%%   <<"relationalDatabaseName">> := string()
%% }
-type get_relational_database_events_request() :: #{binary() => any()}.

%% Example:
%% stop_instance_result() :: #{
%%   <<"operations">> => list(operation())
%% }
-type stop_instance_result() :: #{binary() => any()}.

%% Example:
%% create_load_balancer_tls_certificate_result() :: #{
%%   <<"operations">> => list(operation())
%% }
-type create_load_balancer_tls_certificate_result() :: #{binary() => any()}.

%% Example:
%% create_disk_snapshot_request() :: #{
%%   <<"diskName">> => string(),
%%   <<"diskSnapshotName">> := string(),
%%   <<"instanceName">> => string(),
%%   <<"tags">> => list(tag())
%% }
-type create_disk_snapshot_request() :: #{binary() => any()}.

%% Example:
%% relational_database() :: #{
%%   <<"arn">> => string(),
%%   <<"backupRetentionEnabled">> => boolean(),
%%   <<"caCertificateIdentifier">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"engine">> => string(),
%%   <<"engineVersion">> => string(),
%%   <<"hardware">> => relational_database_hardware(),
%%   <<"latestRestorableTime">> => non_neg_integer(),
%%   <<"location">> => resource_location(),
%%   <<"masterDatabaseName">> => string(),
%%   <<"masterEndpoint">> => relational_database_endpoint(),
%%   <<"masterUsername">> => string(),
%%   <<"name">> => string(),
%%   <<"parameterApplyStatus">> => string(),
%%   <<"pendingMaintenanceActions">> => list(pending_maintenance_action()),
%%   <<"pendingModifiedValues">> => pending_modified_relational_database_values(),
%%   <<"preferredBackupWindow">> => string(),
%%   <<"preferredMaintenanceWindow">> => string(),
%%   <<"publiclyAccessible">> => boolean(),
%%   <<"relationalDatabaseBlueprintId">> => string(),
%%   <<"relationalDatabaseBundleId">> => string(),
%%   <<"resourceType">> => list(any()),
%%   <<"secondaryAvailabilityZone">> => string(),
%%   <<"state">> => string(),
%%   <<"supportCode">> => string(),
%%   <<"tags">> => list(tag())
%% }
-type relational_database() :: #{binary() => any()}.

%% Example:
%% stop_g_ui_session_result() :: #{
%%   <<"operations">> => list(operation())
%% }
-type stop_g_ui_session_result() :: #{binary() => any()}.

%% Example:
%% get_instance_snapshots_result() :: #{
%%   <<"instanceSnapshots">> => list(instance_snapshot()),
%%   <<"nextPageToken">> => string()
%% }
-type get_instance_snapshots_result() :: #{binary() => any()}.

%% Example:
%% create_bucket_access_key_request() :: #{
%%   <<"bucketName">> := string()
%% }
-type create_bucket_access_key_request() :: #{binary() => any()}.

%% Example:
%% delete_disk_result() :: #{
%%   <<"operations">> => list(operation())
%% }
-type delete_disk_result() :: #{binary() => any()}.

%% Example:
%% get_distributions_request() :: #{
%%   <<"distributionName">> => string(),
%%   <<"pageToken">> => string()
%% }
-type get_distributions_request() :: #{binary() => any()}.

%% Example:
%% alarm() :: #{
%%   <<"arn">> => string(),
%%   <<"comparisonOperator">> => list(any()),
%%   <<"contactProtocols">> => list(list(any())()),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"datapointsToAlarm">> => integer(),
%%   <<"evaluationPeriods">> => integer(),
%%   <<"location">> => resource_location(),
%%   <<"metricName">> => list(any()),
%%   <<"monitoredResourceInfo">> => monitored_resource_info(),
%%   <<"name">> => string(),
%%   <<"notificationEnabled">> => boolean(),
%%   <<"notificationTriggers">> => list(list(any())()),
%%   <<"period">> => integer(),
%%   <<"resourceType">> => list(any()),
%%   <<"state">> => list(any()),
%%   <<"statistic">> => list(any()),
%%   <<"supportCode">> => string(),
%%   <<"threshold">> => float(),
%%   <<"treatMissingData">> => list(any()),
%%   <<"unit">> => list(any())
%% }
-type alarm() :: #{binary() => any()}.

%% Example:
%% get_operations_result() :: #{
%%   <<"nextPageToken">> => string(),
%%   <<"operations">> => list(operation())
%% }
-type get_operations_result() :: #{binary() => any()}.

%% Example:
%% get_cost_estimate_request() :: #{
%%   <<"endTime">> := non_neg_integer(),
%%   <<"resourceName">> := string(),
%%   <<"startTime">> := non_neg_integer()
%% }
-type get_cost_estimate_request() :: #{binary() => any()}.

%% Example:
%% delete_relational_database_request() :: #{
%%   <<"finalRelationalDatabaseSnapshotName">> => string(),
%%   <<"relationalDatabaseName">> := string(),
%%   <<"skipFinalSnapshot">> => boolean()
%% }
-type delete_relational_database_request() :: #{binary() => any()}.

%% Example:
%% get_static_ip_request() :: #{
%%   <<"staticIpName">> := string()
%% }
-type get_static_ip_request() :: #{binary() => any()}.

%% Example:
%% unauthenticated_exception() :: #{
%%   <<"code">> => string(),
%%   <<"docs">> => string(),
%%   <<"message">> => string(),
%%   <<"tip">> => string()
%% }
-type unauthenticated_exception() :: #{binary() => any()}.

%% Example:
%% create_container_service_request() :: #{
%%   <<"deployment">> => container_service_deployment_request(),
%%   <<"power">> := list(any()),
%%   <<"privateRegistryAccess">> => private_registry_access_request(),
%%   <<"publicDomainNames">> => map(),
%%   <<"scale">> := integer(),
%%   <<"serviceName">> := string(),
%%   <<"tags">> => list(tag())
%% }
-type create_container_service_request() :: #{binary() => any()}.

%% Example:
%% stop_relational_database_result() :: #{
%%   <<"operations">> => list(operation())
%% }
-type stop_relational_database_result() :: #{binary() => any()}.

%% Example:
%% instance_port_state() :: #{
%%   <<"cidrListAliases">> => list(string()),
%%   <<"cidrs">> => list(string()),
%%   <<"fromPort">> => integer(),
%%   <<"ipv6Cidrs">> => list(string()),
%%   <<"protocol">> => list(any()),
%%   <<"state">> => list(any()),
%%   <<"toPort">> => integer()
%% }
-type instance_port_state() :: #{binary() => any()}.

%% Example:
%% get_domain_result() :: #{
%%   <<"domain">> => domain()
%% }
-type get_domain_result() :: #{binary() => any()}.

%% Example:
%% get_auto_snapshots_result() :: #{
%%   <<"autoSnapshots">> => list(auto_snapshot_details()),
%%   <<"resourceName">> => string(),
%%   <<"resourceType">> => list(any())
%% }
-type get_auto_snapshots_result() :: #{binary() => any()}.

%% Example:
%% create_instance_snapshot_request() :: #{
%%   <<"instanceName">> := string(),
%%   <<"instanceSnapshotName">> := string(),
%%   <<"tags">> => list(tag())
%% }
-type create_instance_snapshot_request() :: #{binary() => any()}.

%% Example:
%% get_key_pair_result() :: #{
%%   <<"keyPair">> => key_pair()
%% }
-type get_key_pair_result() :: #{binary() => any()}.

%% Example:
%% delete_key_pair_result() :: #{
%%   <<"operation">> => operation()
%% }
-type delete_key_pair_result() :: #{binary() => any()}.

%% Example:
%% setup_history() :: #{
%%   <<"executionDetails">> => list(setup_execution_details()),
%%   <<"operationId">> => string(),
%%   <<"request">> => setup_request(),
%%   <<"resource">> => setup_history_resource(),
%%   <<"status">> => list(any())
%% }
-type setup_history() :: #{binary() => any()}.

%% Example:
%% container_service_deployment_request() :: #{
%%   <<"containers">> => map(),
%%   <<"publicEndpoint">> => endpoint_request()
%% }
-type container_service_deployment_request() :: #{binary() => any()}.

%% Example:
%% get_auto_snapshots_request() :: #{
%%   <<"resourceName">> := string()
%% }
-type get_auto_snapshots_request() :: #{binary() => any()}.

%% Example:
%% delete_relational_database_snapshot_request() :: #{
%%   <<"relationalDatabaseSnapshotName">> := string()
%% }
-type delete_relational_database_snapshot_request() :: #{binary() => any()}.

%% Example:
%% get_container_service_metric_data_result() :: #{
%%   <<"metricData">> => list(metric_datapoint()),
%%   <<"metricName">> => list(any())
%% }
-type get_container_service_metric_data_result() :: #{binary() => any()}.

%% Example:
%% send_contact_method_verification_result() :: #{
%%   <<"operations">> => list(operation())
%% }
-type send_contact_method_verification_result() :: #{binary() => any()}.

%% Example:
%% get_container_api_metadata_result() :: #{
%%   <<"metadata">> => list(map())
%% }
-type get_container_api_metadata_result() :: #{binary() => any()}.

%% Example:
%% set_ip_address_type_request() :: #{
%%   <<"acceptBundleUpdate">> => boolean(),
%%   <<"ipAddressType">> := list(any()),
%%   <<"resourceName">> := string(),
%%   <<"resourceType">> := list(any())
%% }
-type set_ip_address_type_request() :: #{binary() => any()}.

%% Example:
%% stop_g_ui_session_request() :: #{
%%   <<"resourceName">> := string()
%% }
-type stop_g_ui_session_request() :: #{binary() => any()}.

%% Example:
%% domain() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"domainEntries">> => list(domain_entry()),
%%   <<"location">> => resource_location(),
%%   <<"name">> => string(),
%%   <<"registeredDomainDelegationInfo">> => registered_domain_delegation_info(),
%%   <<"resourceType">> => list(any()),
%%   <<"supportCode">> => string(),
%%   <<"tags">> => list(tag())
%% }
-type domain() :: #{binary() => any()}.

%% Example:
%% delete_load_balancer_request() :: #{
%%   <<"loadBalancerName">> := string()
%% }
-type delete_load_balancer_request() :: #{binary() => any()}.

%% Example:
%% get_buckets_request() :: #{
%%   <<"bucketName">> => string(),
%%   <<"includeConnectedResources">> => boolean(),
%%   <<"pageToken">> => string()
%% }
-type get_buckets_request() :: #{binary() => any()}.

%% Example:
%% bucket_state() :: #{
%%   <<"code">> => string(),
%%   <<"message">> => string()
%% }
-type bucket_state() :: #{binary() => any()}.

%% Example:
%% attach_disk_result() :: #{
%%   <<"operations">> => list(operation())
%% }
-type attach_disk_result() :: #{binary() => any()}.

%% Example:
%% start_relational_database_request() :: #{
%%   <<"relationalDatabaseName">> := string()
%% }
-type start_relational_database_request() :: #{binary() => any()}.

%% Example:
%% update_bucket_bundle_result() :: #{
%%   <<"operations">> => list(operation())
%% }
-type update_bucket_bundle_result() :: #{binary() => any()}.

%% Example:
%% reboot_instance_result() :: #{
%%   <<"operations">> => list(operation())
%% }
-type reboot_instance_result() :: #{binary() => any()}.

%% Example:
%% get_disk_snapshots_request() :: #{
%%   <<"pageToken">> => string()
%% }
-type get_disk_snapshots_request() :: #{binary() => any()}.

%% Example:
%% reset_distribution_cache_request() :: #{
%%   <<"distributionName">> => string()
%% }
-type reset_distribution_cache_request() :: #{binary() => any()}.

%% Example:
%% container_service_power() :: #{
%%   <<"cpuCount">> => float(),
%%   <<"isActive">> => boolean(),
%%   <<"name">> => string(),
%%   <<"powerId">> => string(),
%%   <<"price">> => float(),
%%   <<"ramSizeInGb">> => float()
%% }
-type container_service_power() :: #{binary() => any()}.

%% Example:
%% cache_behavior_per_path() :: #{
%%   <<"behavior">> => list(any()),
%%   <<"path">> => string()
%% }
-type cache_behavior_per_path() :: #{binary() => any()}.

%% Example:
%% get_buckets_result() :: #{
%%   <<"accountLevelBpaSync">> => account_level_bpa_sync(),
%%   <<"buckets">> => list(bucket()),
%%   <<"nextPageToken">> => string()
%% }
-type get_buckets_result() :: #{binary() => any()}.

%% Example:
%% create_domain_result() :: #{
%%   <<"operation">> => operation()
%% }
-type create_domain_result() :: #{binary() => any()}.

%% Example:
%% create_relational_database_result() :: #{
%%   <<"operations">> => list(operation())
%% }
-type create_relational_database_result() :: #{binary() => any()}.

%% Example:
%% attach_load_balancer_tls_certificate_result() :: #{
%%   <<"operations">> => list(operation())
%% }
-type attach_load_balancer_tls_certificate_result() :: #{binary() => any()}.

%% Example:
%% delete_disk_request() :: #{
%%   <<"diskName">> := string(),
%%   <<"forceDeleteAddOns">> => boolean()
%% }
-type delete_disk_request() :: #{binary() => any()}.

%% Example:
%% reset_distribution_cache_result() :: #{
%%   <<"createTime">> => non_neg_integer(),
%%   <<"operation">> => operation(),
%%   <<"status">> => string()
%% }
-type reset_distribution_cache_result() :: #{binary() => any()}.

%% Example:
%% get_load_balancer_tls_certificates_result() :: #{
%%   <<"tlsCertificates">> => list(load_balancer_tls_certificate())
%% }
-type get_load_balancer_tls_certificates_result() :: #{binary() => any()}.

%% Example:
%% account_level_bpa_sync() :: #{
%%   <<"bpaImpactsLightsail">> => boolean(),
%%   <<"lastSyncedAt">> => non_neg_integer(),
%%   <<"message">> => list(any()),
%%   <<"status">> => list(any())
%% }
-type account_level_bpa_sync() :: #{binary() => any()}.

%% Example:
%% delete_contact_method_result() :: #{
%%   <<"operations">> => list(operation())
%% }
-type delete_contact_method_result() :: #{binary() => any()}.

%% Example:
%% create_relational_database_request() :: #{
%%   <<"availabilityZone">> => string(),
%%   <<"masterDatabaseName">> := string(),
%%   <<"masterUserPassword">> => string(),
%%   <<"masterUsername">> := string(),
%%   <<"preferredBackupWindow">> => string(),
%%   <<"preferredMaintenanceWindow">> => string(),
%%   <<"publiclyAccessible">> => boolean(),
%%   <<"relationalDatabaseBlueprintId">> := string(),
%%   <<"relationalDatabaseBundleId">> := string(),
%%   <<"relationalDatabaseName">> := string(),
%%   <<"tags">> => list(tag())
%% }
-type create_relational_database_request() :: #{binary() => any()}.

%% Example:
%% get_relational_database_log_events_result() :: #{
%%   <<"nextBackwardToken">> => string(),
%%   <<"nextForwardToken">> => string(),
%%   <<"resourceLogEvents">> => list(log_event())
%% }
-type get_relational_database_log_events_result() :: #{binary() => any()}.

%% Example:
%% renewal_summary() :: #{
%%   <<"domainValidationRecords">> => list(domain_validation_record()),
%%   <<"renewalStatus">> => list(any()),
%%   <<"renewalStatusReason">> => string(),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type renewal_summary() :: #{binary() => any()}.

%% Example:
%% create_distribution_request() :: #{
%%   <<"bundleId">> := string(),
%%   <<"cacheBehaviorSettings">> => cache_settings(),
%%   <<"cacheBehaviors">> => list(cache_behavior_per_path()),
%%   <<"certificateName">> => string(),
%%   <<"defaultCacheBehavior">> := cache_behavior(),
%%   <<"distributionName">> := string(),
%%   <<"ipAddressType">> => list(any()),
%%   <<"origin">> := input_origin(),
%%   <<"tags">> => list(tag()),
%%   <<"viewerMinimumTlsProtocolVersion">> => list(any())
%% }
-type create_distribution_request() :: #{binary() => any()}.

%% Example:
%% create_instances_request() :: #{
%%   <<"addOns">> => list(add_on_request()),
%%   <<"availabilityZone">> := string(),
%%   <<"blueprintId">> := string(),
%%   <<"bundleId">> := string(),
%%   <<"customImageName">> => string(),
%%   <<"instanceNames">> := list(string()),
%%   <<"ipAddressType">> => list(any()),
%%   <<"keyPairName">> => string(),
%%   <<"tags">> => list(tag()),
%%   <<"userData">> => string()
%% }
-type create_instances_request() :: #{binary() => any()}.

%% Example:
%% relational_database_hardware() :: #{
%%   <<"cpuCount">> => integer(),
%%   <<"diskSizeInGb">> => integer(),
%%   <<"ramSizeInGb">> => float()
%% }
-type relational_database_hardware() :: #{binary() => any()}.

%% Example:
%% delete_instance_snapshot_request() :: #{
%%   <<"instanceSnapshotName">> := string()
%% }
-type delete_instance_snapshot_request() :: #{binary() => any()}.

%% Example:
%% create_certificate_request() :: #{
%%   <<"certificateName">> := string(),
%%   <<"domainName">> := string(),
%%   <<"subjectAlternativeNames">> => list(string()),
%%   <<"tags">> => list(tag())
%% }
-type create_certificate_request() :: #{binary() => any()}.

%% Example:
%% get_container_service_powers_result() :: #{
%%   <<"powers">> => list(container_service_power())
%% }
-type get_container_service_powers_result() :: #{binary() => any()}.

%% Example:
%% get_relational_database_request() :: #{
%%   <<"relationalDatabaseName">> := string()
%% }
-type get_relational_database_request() :: #{binary() => any()}.

%% Example:
%% untag_resource_request() :: #{
%%   <<"resourceArn">> => string(),
%%   <<"resourceName">> := string(),
%%   <<"tagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% get_distribution_metric_data_request() :: #{
%%   <<"distributionName">> := string(),
%%   <<"endTime">> := non_neg_integer(),
%%   <<"metricName">> := list(any()),
%%   <<"period">> := integer(),
%%   <<"startTime">> := non_neg_integer(),
%%   <<"statistics">> := list(list(any())()),
%%   <<"unit">> := list(any())
%% }
-type get_distribution_metric_data_request() :: #{binary() => any()}.

%% Example:
%% instance_hardware() :: #{
%%   <<"cpuCount">> => integer(),
%%   <<"disks">> => list(disk()),
%%   <<"ramSizeInGb">> => float()
%% }
-type instance_hardware() :: #{binary() => any()}.

%% Example:
%% get_relational_database_snapshot_result() :: #{
%%   <<"relationalDatabaseSnapshot">> => relational_database_snapshot()
%% }
-type get_relational_database_snapshot_result() :: #{binary() => any()}.

%% Example:
%% get_instance_snapshots_request() :: #{
%%   <<"pageToken">> => string()
%% }
-type get_instance_snapshots_request() :: #{binary() => any()}.

%% Example:
%% get_bundles_result() :: #{
%%   <<"bundles">> => list(bundle()),
%%   <<"nextPageToken">> => string()
%% }
-type get_bundles_result() :: #{binary() => any()}.

%% Example:
%% get_load_balancer_tls_policies_request() :: #{
%%   <<"pageToken">> => string()
%% }
-type get_load_balancer_tls_policies_request() :: #{binary() => any()}.

%% Example:
%% time_period() :: #{
%%   <<"end">> => non_neg_integer(),
%%   <<"start">> => non_neg_integer()
%% }
-type time_period() :: #{binary() => any()}.

%% Example:
%% delete_known_host_keys_request() :: #{
%%   <<"instanceName">> := string()
%% }
-type delete_known_host_keys_request() :: #{binary() => any()}.

%% Example:
%% get_disk_snapshot_result() :: #{
%%   <<"diskSnapshot">> => disk_snapshot()
%% }
-type get_disk_snapshot_result() :: #{binary() => any()}.

%% Example:
%% create_relational_database_from_snapshot_result() :: #{
%%   <<"operations">> => list(operation())
%% }
-type create_relational_database_from_snapshot_result() :: #{binary() => any()}.

%% Example:
%% delete_key_pair_request() :: #{
%%   <<"expectedFingerprint">> => string(),
%%   <<"keyPairName">> := string()
%% }
-type delete_key_pair_request() :: #{binary() => any()}.

%% Example:
%% load_balancer_tls_certificate_domain_validation_option() :: #{
%%   <<"domainName">> => string(),
%%   <<"validationStatus">> => list(any())
%% }
-type load_balancer_tls_certificate_domain_validation_option() :: #{binary() => any()}.

%% Example:
%% get_instance_request() :: #{
%%   <<"instanceName">> := string()
%% }
-type get_instance_request() :: #{binary() => any()}.

%% Example:
%% create_disk_snapshot_result() :: #{
%%   <<"operations">> => list(operation())
%% }
-type create_disk_snapshot_result() :: #{binary() => any()}.

%% Example:
%% bundle() :: #{
%%   <<"bundleId">> => string(),
%%   <<"cpuCount">> => integer(),
%%   <<"diskSizeInGb">> => integer(),
%%   <<"instanceType">> => string(),
%%   <<"isActive">> => boolean(),
%%   <<"name">> => string(),
%%   <<"power">> => integer(),
%%   <<"price">> => float(),
%%   <<"publicIpv4AddressCount">> => integer(),
%%   <<"ramSizeInGb">> => float(),
%%   <<"supportedAppCategories">> => list(list(any())()),
%%   <<"supportedPlatforms">> => list(list(any())()),
%%   <<"transferPerMonthInGb">> => integer()
%% }
-type bundle() :: #{binary() => any()}.

%% Example:
%% instance_snapshot() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"fromAttachedDisks">> => list(disk()),
%%   <<"fromBlueprintId">> => string(),
%%   <<"fromBundleId">> => string(),
%%   <<"fromInstanceArn">> => string(),
%%   <<"fromInstanceName">> => string(),
%%   <<"isFromAutoSnapshot">> => boolean(),
%%   <<"location">> => resource_location(),
%%   <<"name">> => string(),
%%   <<"progress">> => string(),
%%   <<"resourceType">> => list(any()),
%%   <<"sizeInGb">> => integer(),
%%   <<"state">> => list(any()),
%%   <<"supportCode">> => string(),
%%   <<"tags">> => list(tag())
%% }
-type instance_snapshot() :: #{binary() => any()}.

%% Example:
%% create_g_ui_session_access_details_request() :: #{
%%   <<"resourceName">> := string()
%% }
-type create_g_ui_session_access_details_request() :: #{binary() => any()}.

%% Example:
%% resource_location() :: #{
%%   <<"availabilityZone">> => string(),
%%   <<"regionName">> => list(any())
%% }
-type resource_location() :: #{binary() => any()}.

%% Example:
%% get_relational_database_metric_data_request() :: #{
%%   <<"endTime">> := non_neg_integer(),
%%   <<"metricName">> := list(any()),
%%   <<"period">> := integer(),
%%   <<"relationalDatabaseName">> := string(),
%%   <<"startTime">> := non_neg_integer(),
%%   <<"statistics">> := list(list(any())()),
%%   <<"unit">> := list(any())
%% }
-type get_relational_database_metric_data_request() :: #{binary() => any()}.

%% Example:
%% create_contact_method_request() :: #{
%%   <<"contactEndpoint">> := string(),
%%   <<"protocol">> := list(any())
%% }
-type create_contact_method_request() :: #{binary() => any()}.

%% Example:
%% auto_snapshot_details() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"date">> => string(),
%%   <<"fromAttachedDisks">> => list(attached_disk()),
%%   <<"status">> => list(any())
%% }
-type auto_snapshot_details() :: #{binary() => any()}.

%% Example:
%% certificate_summary() :: #{
%%   <<"certificateArn">> => string(),
%%   <<"certificateDetail">> => certificate(),
%%   <<"certificateName">> => string(),
%%   <<"domainName">> => string(),
%%   <<"tags">> => list(tag())
%% }
-type certificate_summary() :: #{binary() => any()}.

%% Example:
%% get_export_snapshot_records_request() :: #{
%%   <<"pageToken">> => string()
%% }
-type get_export_snapshot_records_request() :: #{binary() => any()}.

%% Example:
%% bucket_bundle() :: #{
%%   <<"bundleId">> => string(),
%%   <<"isActive">> => boolean(),
%%   <<"name">> => string(),
%%   <<"price">> => float(),
%%   <<"storagePerMonthInGb">> => integer(),
%%   <<"transferPerMonthInGb">> => integer()
%% }
-type bucket_bundle() :: #{binary() => any()}.

%% Example:
%% create_load_balancer_request() :: #{
%%   <<"certificateAlternativeNames">> => list(string()),
%%   <<"certificateDomainName">> => string(),
%%   <<"certificateName">> => string(),
%%   <<"healthCheckPath">> => string(),
%%   <<"instancePort">> := integer(),
%%   <<"ipAddressType">> => list(any()),
%%   <<"loadBalancerName">> := string(),
%%   <<"tags">> => list(tag()),
%%   <<"tlsPolicyName">> => string()
%% }
-type create_load_balancer_request() :: #{binary() => any()}.

%% Example:
%% relational_database_snapshot() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"engine">> => string(),
%%   <<"engineVersion">> => string(),
%%   <<"fromRelationalDatabaseArn">> => string(),
%%   <<"fromRelationalDatabaseBlueprintId">> => string(),
%%   <<"fromRelationalDatabaseBundleId">> => string(),
%%   <<"fromRelationalDatabaseName">> => string(),
%%   <<"location">> => resource_location(),
%%   <<"name">> => string(),
%%   <<"resourceType">> => list(any()),
%%   <<"sizeInGb">> => integer(),
%%   <<"state">> => string(),
%%   <<"supportCode">> => string(),
%%   <<"tags">> => list(tag())
%% }
-type relational_database_snapshot() :: #{binary() => any()}.

%% Example:
%% delete_bucket_request() :: #{
%%   <<"bucketName">> := string(),
%%   <<"forceDelete">> => boolean()
%% }
-type delete_bucket_request() :: #{binary() => any()}.

%% Example:
%% set_ip_address_type_result() :: #{
%%   <<"operations">> => list(operation())
%% }
-type set_ip_address_type_result() :: #{binary() => any()}.

%% Example:
%% name_servers_update_state() :: #{
%%   <<"code">> => list(any()),
%%   <<"message">> => string()
%% }
-type name_servers_update_state() :: #{binary() => any()}.

%% Example:
%% reboot_instance_request() :: #{
%%   <<"instanceName">> := string()
%% }
-type reboot_instance_request() :: #{binary() => any()}.

%% Example:
%% instance_networking() :: #{
%%   <<"monthlyTransfer">> => monthly_transfer(),
%%   <<"ports">> => list(instance_port_info())
%% }
-type instance_networking() :: #{binary() => any()}.

%% Example:
%% get_active_names_result() :: #{
%%   <<"activeNames">> => list(string()),
%%   <<"nextPageToken">> => string()
%% }
-type get_active_names_result() :: #{binary() => any()}.

%% Example:
%% reboot_relational_database_result() :: #{
%%   <<"operations">> => list(operation())
%% }
-type reboot_relational_database_result() :: #{binary() => any()}.

%% Example:
%% setup_instance_https_result() :: #{
%%   <<"operations">> => list(operation())
%% }
-type setup_instance_https_result() :: #{binary() => any()}.

%% Example:
%% get_bucket_metric_data_request() :: #{
%%   <<"bucketName">> := string(),
%%   <<"endTime">> := non_neg_integer(),
%%   <<"metricName">> := list(any()),
%%   <<"period">> := integer(),
%%   <<"startTime">> := non_neg_integer(),
%%   <<"statistics">> := list(list(any())()),
%%   <<"unit">> := list(any())
%% }
-type get_bucket_metric_data_request() :: #{binary() => any()}.

%% Example:
%% delete_domain_request() :: #{
%%   <<"domainName">> := string()
%% }
-type delete_domain_request() :: #{binary() => any()}.

%% Example:
%% get_instance_snapshot_request() :: #{
%%   <<"instanceSnapshotName">> := string()
%% }
-type get_instance_snapshot_request() :: #{binary() => any()}.

%% Example:
%% container_service_deployment() :: #{
%%   <<"containers">> => map(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"publicEndpoint">> => container_service_endpoint(),
%%   <<"state">> => list(any()),
%%   <<"version">> => integer()
%% }
-type container_service_deployment() :: #{binary() => any()}.

%% Example:
%% instance_health_summary() :: #{
%%   <<"instanceHealth">> => list(any()),
%%   <<"instanceHealthReason">> => list(any()),
%%   <<"instanceName">> => string()
%% }
-type instance_health_summary() :: #{binary() => any()}.

%% Example:
%% delete_relational_database_result() :: #{
%%   <<"operations">> => list(operation())
%% }
-type delete_relational_database_result() :: #{binary() => any()}.

%% Example:
%% region() :: #{
%%   <<"availabilityZones">> => list(availability_zone()),
%%   <<"continentCode">> => string(),
%%   <<"description">> => string(),
%%   <<"displayName">> => string(),
%%   <<"name">> => list(any()),
%%   <<"relationalDatabaseAvailabilityZones">> => list(availability_zone())
%% }
-type region() :: #{binary() => any()}.

%% Example:
%% get_relational_database_parameters_request() :: #{
%%   <<"pageToken">> => string(),
%%   <<"relationalDatabaseName">> := string()
%% }
-type get_relational_database_parameters_request() :: #{binary() => any()}.

%% Example:
%% export_snapshot_result() :: #{
%%   <<"operations">> => list(operation())
%% }
-type export_snapshot_result() :: #{binary() => any()}.

%% Example:
%% get_key_pairs_request() :: #{
%%   <<"includeDefaultKeyPair">> => boolean(),
%%   <<"pageToken">> => string()
%% }
-type get_key_pairs_request() :: #{binary() => any()}.

%% Example:
%% get_static_ips_request() :: #{
%%   <<"pageToken">> => string()
%% }
-type get_static_ips_request() :: #{binary() => any()}.

%% Example:
%% update_instance_metadata_options_result() :: #{
%%   <<"operation">> => operation()
%% }
-type update_instance_metadata_options_result() :: #{binary() => any()}.

%% Example:
%% detach_static_ip_result() :: #{
%%   <<"operations">> => list(operation())
%% }
-type detach_static_ip_result() :: #{binary() => any()}.

%% Example:
%% destination_info() :: #{
%%   <<"id">> => string(),
%%   <<"service">> => string()
%% }
-type destination_info() :: #{binary() => any()}.

%% Example:
%% get_distribution_metric_data_result() :: #{
%%   <<"metricData">> => list(metric_datapoint()),
%%   <<"metricName">> => list(any())
%% }
-type get_distribution_metric_data_result() :: #{binary() => any()}.

%% Example:
%% get_operations_for_resource_request() :: #{
%%   <<"pageToken">> => string(),
%%   <<"resourceName">> := string()
%% }
-type get_operations_for_resource_request() :: #{binary() => any()}.

%% Example:
%% monthly_transfer() :: #{
%%   <<"gbPerMonthAllocated">> => integer()
%% }
-type monthly_transfer() :: #{binary() => any()}.

%% Example:
%% get_load_balancer_tls_policies_result() :: #{
%%   <<"nextPageToken">> => string(),
%%   <<"tlsPolicies">> => list(load_balancer_tls_policy())
%% }
-type get_load_balancer_tls_policies_result() :: #{binary() => any()}.

%% Example:
%% resource_budget_estimate() :: #{
%%   <<"costEstimates">> => list(cost_estimate()),
%%   <<"endTime">> => non_neg_integer(),
%%   <<"resourceName">> => string(),
%%   <<"resourceType">> => list(any()),
%%   <<"startTime">> => non_neg_integer()
%% }
-type resource_budget_estimate() :: #{binary() => any()}.

%% Example:
%% get_relational_database_metric_data_result() :: #{
%%   <<"metricData">> => list(metric_datapoint()),
%%   <<"metricName">> => list(any())
%% }
-type get_relational_database_metric_data_result() :: #{binary() => any()}.

%% Example:
%% update_distribution_bundle_result() :: #{
%%   <<"operation">> => operation()
%% }
-type update_distribution_bundle_result() :: #{binary() => any()}.

%% Example:
%% create_disk_from_snapshot_request() :: #{
%%   <<"addOns">> => list(add_on_request()),
%%   <<"availabilityZone">> := string(),
%%   <<"diskName">> := string(),
%%   <<"diskSnapshotName">> => string(),
%%   <<"restoreDate">> => string(),
%%   <<"sizeInGb">> := integer(),
%%   <<"sourceDiskName">> => string(),
%%   <<"tags">> => list(tag()),
%%   <<"useLatestRestorableAutoSnapshot">> => boolean()
%% }
-type create_disk_from_snapshot_request() :: #{binary() => any()}.

%% Example:
%% attach_certificate_to_distribution_request() :: #{
%%   <<"certificateName">> := string(),
%%   <<"distributionName">> := string()
%% }
-type attach_certificate_to_distribution_request() :: #{binary() => any()}.

%% Example:
%% create_domain_request() :: #{
%%   <<"domainName">> := string(),
%%   <<"tags">> => list(tag())
%% }
-type create_domain_request() :: #{binary() => any()}.

%% Example:
%% test_alarm_result() :: #{
%%   <<"operations">> => list(operation())
%% }
-type test_alarm_result() :: #{binary() => any()}.

%% Example:
%% get_instance_access_details_result() :: #{
%%   <<"accessDetails">> => instance_access_details()
%% }
-type get_instance_access_details_result() :: #{binary() => any()}.

%% Example:
%% create_cloud_formation_stack_request() :: #{
%%   <<"instances">> := list(instance_entry())
%% }
-type create_cloud_formation_stack_request() :: #{binary() => any()}.

%% Example:
%% delete_known_host_keys_result() :: #{
%%   <<"operations">> => list(operation())
%% }
-type delete_known_host_keys_result() :: #{binary() => any()}.

%% Example:
%% setup_request() :: #{
%%   <<"certificateProvider">> => list(any()),
%%   <<"domainNames">> => list(string()),
%%   <<"instanceName">> => string()
%% }
-type setup_request() :: #{binary() => any()}.

%% Example:
%% reboot_relational_database_request() :: #{
%%   <<"relationalDatabaseName">> := string()
%% }
-type reboot_relational_database_request() :: #{binary() => any()}.

%% Example:
%% allocate_static_ip_request() :: #{
%%   <<"staticIpName">> := string()
%% }
-type allocate_static_ip_request() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"key">> => string(),
%%   <<"value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% put_alarm_result() :: #{
%%   <<"operations">> => list(operation())
%% }
-type put_alarm_result() :: #{binary() => any()}.

%% Example:
%% close_instance_public_ports_result() :: #{
%%   <<"operation">> => operation()
%% }
-type close_instance_public_ports_result() :: #{binary() => any()}.

%% Example:
%% create_container_service_deployment_result() :: #{
%%   <<"containerService">> => container_service()
%% }
-type create_container_service_deployment_result() :: #{binary() => any()}.

%% Example:
%% update_distribution_request() :: #{
%%   <<"cacheBehaviorSettings">> => cache_settings(),
%%   <<"cacheBehaviors">> => list(cache_behavior_per_path()),
%%   <<"certificateName">> => string(),
%%   <<"defaultCacheBehavior">> => cache_behavior(),
%%   <<"distributionName">> := string(),
%%   <<"isEnabled">> => boolean(),
%%   <<"origin">> => input_origin(),
%%   <<"useDefaultCertificate">> => boolean(),
%%   <<"viewerMinimumTlsProtocolVersion">> => list(any())
%% }
-type update_distribution_request() :: #{binary() => any()}.

%% Example:
%% delete_domain_entry_result() :: #{
%%   <<"operation">> => operation()
%% }
-type delete_domain_entry_result() :: #{binary() => any()}.

%% Example:
%% setup_history_resource() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"location">> => resource_location(),
%%   <<"name">> => string(),
%%   <<"resourceType">> => list(any())
%% }
-type setup_history_resource() :: #{binary() => any()}.

%% Example:
%% attached_disk() :: #{
%%   <<"path">> => string(),
%%   <<"sizeInGb">> => integer()
%% }
-type attached_disk() :: #{binary() => any()}.

%% Example:
%% get_operation_request() :: #{
%%   <<"operationId">> := string()
%% }
-type get_operation_request() :: #{binary() => any()}.

%% Example:
%% container_service() :: #{
%%   <<"arn">> => string(),
%%   <<"containerServiceName">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"currentDeployment">> => container_service_deployment(),
%%   <<"isDisabled">> => boolean(),
%%   <<"location">> => resource_location(),
%%   <<"nextDeployment">> => container_service_deployment(),
%%   <<"power">> => list(any()),
%%   <<"powerId">> => string(),
%%   <<"principalArn">> => string(),
%%   <<"privateDomainName">> => string(),
%%   <<"privateRegistryAccess">> => private_registry_access(),
%%   <<"publicDomainNames">> => map(),
%%   <<"resourceType">> => list(any()),
%%   <<"scale">> => integer(),
%%   <<"state">> => list(any()),
%%   <<"stateDetail">> => container_service_state_detail(),
%%   <<"tags">> => list(tag()),
%%   <<"url">> => string()
%% }
-type container_service() :: #{binary() => any()}.

%% Example:
%% get_relational_database_bundles_result() :: #{
%%   <<"bundles">> => list(relational_database_bundle()),
%%   <<"nextPageToken">> => string()
%% }
-type get_relational_database_bundles_result() :: #{binary() => any()}.

%% Example:
%% access_key() :: #{
%%   <<"accessKeyId">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"lastUsed">> => access_key_last_used(),
%%   <<"secretAccessKey">> => string(),
%%   <<"status">> => list(any())
%% }
-type access_key() :: #{binary() => any()}.

%% Example:
%% update_bucket_request() :: #{
%%   <<"accessLogConfig">> => bucket_access_log_config(),
%%   <<"accessRules">> => access_rules(),
%%   <<"bucketName">> := string(),
%%   <<"readonlyAccessAccounts">> => list(string()),
%%   <<"versioning">> => string()
%% }
-type update_bucket_request() :: #{binary() => any()}.

%% Example:
%% delete_domain_result() :: #{
%%   <<"operation">> => operation()
%% }
-type delete_domain_result() :: #{binary() => any()}.

%% Example:
%% create_instance_snapshot_result() :: #{
%%   <<"operations">> => list(operation())
%% }
-type create_instance_snapshot_result() :: #{binary() => any()}.

%% Example:
%% attach_instances_to_load_balancer_request() :: #{
%%   <<"instanceNames">> := list(string()),
%%   <<"loadBalancerName">> := string()
%% }
-type attach_instances_to_load_balancer_request() :: #{binary() => any()}.

%% Example:
%% create_disk_request() :: #{
%%   <<"addOns">> => list(add_on_request()),
%%   <<"availabilityZone">> := string(),
%%   <<"diskName">> := string(),
%%   <<"sizeInGb">> := integer(),
%%   <<"tags">> => list(tag())
%% }
-type create_disk_request() :: #{binary() => any()}.

%% Example:
%% release_static_ip_request() :: #{
%%   <<"staticIpName">> := string()
%% }
-type release_static_ip_request() :: #{binary() => any()}.

%% Example:
%% is_vpc_peered_result() :: #{
%%   <<"isPeered">> => boolean()
%% }
-type is_vpc_peered_result() :: #{binary() => any()}.

%% Example:
%% get_instance_port_states_request() :: #{
%%   <<"instanceName">> := string()
%% }
-type get_instance_port_states_request() :: #{binary() => any()}.

%% Example:
%% disable_add_on_request() :: #{
%%   <<"addOnType">> := list(any()),
%%   <<"resourceName">> := string()
%% }
-type disable_add_on_request() :: #{binary() => any()}.

%% Example:
%% create_relational_database_snapshot_request() :: #{
%%   <<"relationalDatabaseName">> := string(),
%%   <<"relationalDatabaseSnapshotName">> := string(),
%%   <<"tags">> => list(tag())
%% }
-type create_relational_database_snapshot_request() :: #{binary() => any()}.

%% Example:
%% monitored_resource_info() :: #{
%%   <<"arn">> => string(),
%%   <<"name">> => string(),
%%   <<"resourceType">> => list(any())
%% }
-type monitored_resource_info() :: #{binary() => any()}.

%% Example:
%% get_contact_methods_request() :: #{
%%   <<"protocols">> => list(list(any())())
%% }
-type get_contact_methods_request() :: #{binary() => any()}.

%% Example:
%% load_balancer_tls_certificate_renewal_summary() :: #{
%%   <<"domainValidationOptions">> => list(load_balancer_tls_certificate_domain_validation_option()),
%%   <<"renewalStatus">> => list(any())
%% }
-type load_balancer_tls_certificate_renewal_summary() :: #{binary() => any()}.

%% Example:
%% instance_snapshot_info() :: #{
%%   <<"fromBlueprintId">> => string(),
%%   <<"fromBundleId">> => string(),
%%   <<"fromDiskInfo">> => list(disk_info())
%% }
-type instance_snapshot_info() :: #{binary() => any()}.

%% Example:
%% not_found_exception() :: #{
%%   <<"code">> => string(),
%%   <<"docs">> => string(),
%%   <<"message">> => string(),
%%   <<"tip">> => string()
%% }
-type not_found_exception() :: #{binary() => any()}.

%% Example:
%% get_cost_estimate_result() :: #{
%%   <<"resourcesBudgetEstimate">> => list(resource_budget_estimate())
%% }
-type get_cost_estimate_result() :: #{binary() => any()}.

%% Example:
%% r53_hosted_zone_deletion_state() :: #{
%%   <<"code">> => list(any()),
%%   <<"message">> => string()
%% }
-type r53_hosted_zone_deletion_state() :: #{binary() => any()}.

%% Example:
%% container_image() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"digest">> => string(),
%%   <<"image">> => string()
%% }
-type container_image() :: #{binary() => any()}.

%% Example:
%% create_domain_entry_request() :: #{
%%   <<"domainEntry">> := domain_entry(),
%%   <<"domainName">> := string()
%% }
-type create_domain_entry_request() :: #{binary() => any()}.

%% Example:
%% resource_receiving_access() :: #{
%%   <<"name">> => string(),
%%   <<"resourceType">> => string()
%% }
-type resource_receiving_access() :: #{binary() => any()}.

%% Example:
%% service_exception() :: #{
%%   <<"code">> => string(),
%%   <<"docs">> => string(),
%%   <<"message">> => string(),
%%   <<"tip">> => string()
%% }
-type service_exception() :: #{binary() => any()}.

%% Example:
%% peer_vpc_result() :: #{
%%   <<"operation">> => operation()
%% }
-type peer_vpc_result() :: #{binary() => any()}.

%% Example:
%% get_distribution_bundles_request() :: #{

%% }
-type get_distribution_bundles_request() :: #{binary() => any()}.

%% Example:
%% invalid_input_exception() :: #{
%%   <<"code">> => string(),
%%   <<"docs">> => string(),
%%   <<"message">> => string(),
%%   <<"tip">> => string()
%% }
-type invalid_input_exception() :: #{binary() => any()}.

%% Example:
%% create_disk_from_snapshot_result() :: #{
%%   <<"operations">> => list(operation())
%% }
-type create_disk_from_snapshot_result() :: #{binary() => any()}.

%% Example:
%% get_operation_result() :: #{
%%   <<"operation">> => operation()
%% }
-type get_operation_result() :: #{binary() => any()}.

%% Example:
%% get_relational_database_log_streams_request() :: #{
%%   <<"relationalDatabaseName">> := string()
%% }
-type get_relational_database_log_streams_request() :: #{binary() => any()}.

%% Example:
%% get_domains_result() :: #{
%%   <<"domains">> => list(domain()),
%%   <<"nextPageToken">> => string()
%% }
-type get_domains_result() :: #{binary() => any()}.

%% Example:
%% get_bucket_access_keys_result() :: #{
%%   <<"accessKeys">> => list(access_key())
%% }
-type get_bucket_access_keys_result() :: #{binary() => any()}.

%% Example:
%% disk_snapshot() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"fromDiskArn">> => string(),
%%   <<"fromDiskName">> => string(),
%%   <<"fromInstanceArn">> => string(),
%%   <<"fromInstanceName">> => string(),
%%   <<"isFromAutoSnapshot">> => boolean(),
%%   <<"location">> => resource_location(),
%%   <<"name">> => string(),
%%   <<"progress">> => string(),
%%   <<"resourceType">> => list(any()),
%%   <<"sizeInGb">> => integer(),
%%   <<"state">> => list(any()),
%%   <<"supportCode">> => string(),
%%   <<"tags">> => list(tag())
%% }
-type disk_snapshot() :: #{binary() => any()}.

%% Example:
%% delete_bucket_result() :: #{
%%   <<"operations">> => list(operation())
%% }
-type delete_bucket_result() :: #{binary() => any()}.

%% Example:
%% instance_access_details() :: #{
%%   <<"certKey">> => string(),
%%   <<"expiresAt">> => non_neg_integer(),
%%   <<"hostKeys">> => list(host_key_attributes()),
%%   <<"instanceName">> => string(),
%%   <<"ipAddress">> => string(),
%%   <<"ipv6Addresses">> => list(string()),
%%   <<"password">> => string(),
%%   <<"passwordData">> => password_data(),
%%   <<"privateKey">> => string(),
%%   <<"protocol">> => list(any()),
%%   <<"username">> => string()
%% }
-type instance_access_details() :: #{binary() => any()}.

%% Example:
%% get_key_pairs_result() :: #{
%%   <<"keyPairs">> => list(key_pair()),
%%   <<"nextPageToken">> => string()
%% }
-type get_key_pairs_result() :: #{binary() => any()}.

%% Example:
%% container_service_log_event() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"message">> => string()
%% }
-type container_service_log_event() :: #{binary() => any()}.

%% Example:
%% delete_container_image_request() :: #{

%% }
-type delete_container_image_request() :: #{binary() => any()}.

%% Example:
%% blueprint() :: #{
%%   <<"appCategory">> => list(any()),
%%   <<"blueprintId">> => string(),
%%   <<"description">> => string(),
%%   <<"group">> => string(),
%%   <<"isActive">> => boolean(),
%%   <<"licenseUrl">> => string(),
%%   <<"minPower">> => integer(),
%%   <<"name">> => string(),
%%   <<"platform">> => list(any()),
%%   <<"productUrl">> => string(),
%%   <<"type">> => list(any()),
%%   <<"version">> => string(),
%%   <<"versionCode">> => string()
%% }
-type blueprint() :: #{binary() => any()}.

%% Example:
%% get_instance_metric_data_request() :: #{
%%   <<"endTime">> := non_neg_integer(),
%%   <<"instanceName">> := string(),
%%   <<"metricName">> := list(any()),
%%   <<"period">> := integer(),
%%   <<"startTime">> := non_neg_integer(),
%%   <<"statistics">> := list(list(any())()),
%%   <<"unit">> := list(any())
%% }
-type get_instance_metric_data_request() :: #{binary() => any()}.

%% Example:
%% update_load_balancer_attribute_result() :: #{
%%   <<"operations">> => list(operation())
%% }
-type update_load_balancer_attribute_result() :: #{binary() => any()}.

%% Example:
%% delete_bucket_access_key_result() :: #{
%%   <<"operations">> => list(operation())
%% }
-type delete_bucket_access_key_result() :: #{binary() => any()}.

%% Example:
%% get_blueprints_request() :: #{
%%   <<"appCategory">> => list(any()),
%%   <<"includeInactive">> => boolean(),
%%   <<"pageToken">> => string()
%% }
-type get_blueprints_request() :: #{binary() => any()}.

%% Example:
%% get_instance_metric_data_result() :: #{
%%   <<"metricData">> => list(metric_datapoint()),
%%   <<"metricName">> => list(any())
%% }
-type get_instance_metric_data_result() :: #{binary() => any()}.

%% Example:
%% password_data() :: #{
%%   <<"ciphertext">> => string(),
%%   <<"keyPairName">> => string()
%% }
-type password_data() :: #{binary() => any()}.

%% Example:
%% get_disk_request() :: #{
%%   <<"diskName">> := string()
%% }
-type get_disk_request() :: #{binary() => any()}.

%% Example:
%% static_ip() :: #{
%%   <<"arn">> => string(),
%%   <<"attachedTo">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"ipAddress">> => string(),
%%   <<"isAttached">> => boolean(),
%%   <<"location">> => resource_location(),
%%   <<"name">> => string(),
%%   <<"resourceType">> => list(any()),
%%   <<"supportCode">> => string()
%% }
-type static_ip() :: #{binary() => any()}.

%% Example:
%% delete_load_balancer_result() :: #{
%%   <<"operations">> => list(operation())
%% }
-type delete_load_balancer_result() :: #{binary() => any()}.

%% Example:
%% get_instances_result() :: #{
%%   <<"instances">> => list(instance()),
%%   <<"nextPageToken">> => string()
%% }
-type get_instances_result() :: #{binary() => any()}.

%% Example:
%% update_bucket_result() :: #{
%%   <<"bucket">> => bucket(),
%%   <<"operations">> => list(operation())
%% }
-type update_bucket_result() :: #{binary() => any()}.

%% Example:
%% put_instance_public_ports_result() :: #{
%%   <<"operation">> => operation()
%% }
-type put_instance_public_ports_result() :: #{binary() => any()}.

%% Example:
%% delete_domain_entry_request() :: #{
%%   <<"domainEntry">> := domain_entry(),
%%   <<"domainName">> := string()
%% }
-type delete_domain_entry_request() :: #{binary() => any()}.

%% Example:
%% detach_static_ip_request() :: #{
%%   <<"staticIpName">> := string()
%% }
-type detach_static_ip_request() :: #{binary() => any()}.

%% Example:
%% detach_disk_result() :: #{
%%   <<"operations">> => list(operation())
%% }
-type detach_disk_result() :: #{binary() => any()}.

%% Example:
%% session() :: #{
%%   <<"isPrimary">> => boolean(),
%%   <<"name">> => string(),
%%   <<"url">> => string()
%% }
-type session() :: #{binary() => any()}.

%% Example:
%% get_distributions_result() :: #{
%%   <<"distributions">> => list(lightsail_distribution()),
%%   <<"nextPageToken">> => string()
%% }
-type get_distributions_result() :: #{binary() => any()}.

%% Example:
%% key_pair() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"fingerprint">> => string(),
%%   <<"location">> => resource_location(),
%%   <<"name">> => string(),
%%   <<"resourceType">> => list(any()),
%%   <<"supportCode">> => string(),
%%   <<"tags">> => list(tag())
%% }
-type key_pair() :: #{binary() => any()}.

%% Example:
%% get_relational_databases_request() :: #{
%%   <<"pageToken">> => string()
%% }
-type get_relational_databases_request() :: #{binary() => any()}.

%% Example:
%% stop_instance_on_idle_request() :: #{
%%   <<"duration">> => string(),
%%   <<"threshold">> => string()
%% }
-type stop_instance_on_idle_request() :: #{binary() => any()}.

%% Example:
%% instance_state() :: #{
%%   <<"code">> => integer(),
%%   <<"name">> => string()
%% }
-type instance_state() :: #{binary() => any()}.

%% Example:
%% export_snapshot_request() :: #{
%%   <<"sourceSnapshotName">> := string()
%% }
-type export_snapshot_request() :: #{binary() => any()}.

%% Example:
%% create_bucket_result() :: #{
%%   <<"bucket">> => bucket(),
%%   <<"operations">> => list(operation())
%% }
-type create_bucket_result() :: #{binary() => any()}.

%% Example:
%% delete_disk_snapshot_request() :: #{
%%   <<"diskSnapshotName">> := string()
%% }
-type delete_disk_snapshot_request() :: #{binary() => any()}.

%% Example:
%% get_container_service_deployments_request() :: #{

%% }
-type get_container_service_deployments_request() :: #{binary() => any()}.

%% Example:
%% allocate_static_ip_result() :: #{
%%   <<"operations">> => list(operation())
%% }
-type allocate_static_ip_result() :: #{binary() => any()}.

%% Example:
%% get_instance_snapshot_result() :: #{
%%   <<"instanceSnapshot">> => instance_snapshot()
%% }
-type get_instance_snapshot_result() :: #{binary() => any()}.

%% Example:
%% load_balancer_tls_certificate_dns_record_creation_state() :: #{
%%   <<"code">> => list(any()),
%%   <<"message">> => string()
%% }
-type load_balancer_tls_certificate_dns_record_creation_state() :: #{binary() => any()}.

%% Example:
%% download_default_key_pair_request() :: #{

%% }
-type download_default_key_pair_request() :: #{binary() => any()}.

%% Example:
%% pending_modified_relational_database_values() :: #{
%%   <<"backupRetentionEnabled">> => boolean(),
%%   <<"engineVersion">> => string(),
%%   <<"masterUserPassword">> => string()
%% }
-type pending_modified_relational_database_values() :: #{binary() => any()}.

%% Example:
%% get_load_balancer_tls_certificates_request() :: #{
%%   <<"loadBalancerName">> := string()
%% }
-type get_load_balancer_tls_certificates_request() :: #{binary() => any()}.

%% Example:
%% load_balancer_tls_certificate_summary() :: #{
%%   <<"isAttached">> => boolean(),
%%   <<"name">> => string()
%% }
-type load_balancer_tls_certificate_summary() :: #{binary() => any()}.

%% Example:
%% copy_snapshot_result() :: #{
%%   <<"operations">> => list(operation())
%% }
-type copy_snapshot_result() :: #{binary() => any()}.

%% Example:
%% get_relational_database_log_events_request() :: #{
%%   <<"endTime">> => non_neg_integer(),
%%   <<"logStreamName">> := string(),
%%   <<"pageToken">> => string(),
%%   <<"relationalDatabaseName">> := string(),
%%   <<"startFromHead">> => boolean(),
%%   <<"startTime">> => non_neg_integer()
%% }
-type get_relational_database_log_events_request() :: #{binary() => any()}.

%% Example:
%% container_service_state_detail() :: #{
%%   <<"code">> => list(any()),
%%   <<"message">> => string()
%% }
-type container_service_state_detail() :: #{binary() => any()}.

%% Example:
%% setup_instance_https_request() :: #{
%%   <<"certificateProvider">> := list(any()),
%%   <<"domainNames">> := list(string()),
%%   <<"emailAddress">> := string(),
%%   <<"instanceName">> := string()
%% }
-type setup_instance_https_request() :: #{binary() => any()}.

%% Example:
%% container_service_e_c_r_image_puller_role() :: #{
%%   <<"isActive">> => boolean(),
%%   <<"principalArn">> => string()
%% }
-type container_service_e_c_r_image_puller_role() :: #{binary() => any()}.

%% Example:
%% get_relational_database_log_streams_result() :: #{
%%   <<"logStreams">> => list(string())
%% }
-type get_relational_database_log_streams_result() :: #{binary() => any()}.

%% Example:
%% get_distribution_bundles_result() :: #{
%%   <<"bundles">> => list(distribution_bundle())
%% }
-type get_distribution_bundles_result() :: #{binary() => any()}.

%% Example:
%% delete_auto_snapshot_request() :: #{
%%   <<"date">> := string(),
%%   <<"resourceName">> := string()
%% }
-type delete_auto_snapshot_request() :: #{binary() => any()}.

%% Example:
%% get_relational_database_snapshots_result() :: #{
%%   <<"nextPageToken">> => string(),
%%   <<"relationalDatabaseSnapshots">> => list(relational_database_snapshot())
%% }
-type get_relational_database_snapshots_result() :: #{binary() => any()}.

%% Example:
%% container_services_list_result() :: #{
%%   <<"containerServices">> => list(container_service())
%% }
-type container_services_list_result() :: #{binary() => any()}.

%% Example:
%% delete_container_image_result() :: #{

%% }
-type delete_container_image_result() :: #{binary() => any()}.

%% Example:
%% certificate() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"domainName">> => string(),
%%   <<"domainValidationRecords">> => list(domain_validation_record()),
%%   <<"eligibleToRenew">> => string(),
%%   <<"inUseResourceCount">> => integer(),
%%   <<"issuedAt">> => non_neg_integer(),
%%   <<"issuerCA">> => string(),
%%   <<"keyAlgorithm">> => string(),
%%   <<"name">> => string(),
%%   <<"notAfter">> => non_neg_integer(),
%%   <<"notBefore">> => non_neg_integer(),
%%   <<"renewalSummary">> => renewal_summary(),
%%   <<"requestFailureReason">> => string(),
%%   <<"revocationReason">> => string(),
%%   <<"revokedAt">> => non_neg_integer(),
%%   <<"serialNumber">> => string(),
%%   <<"status">> => list(any()),
%%   <<"subjectAlternativeNames">> => list(string()),
%%   <<"supportCode">> => string(),
%%   <<"tags">> => list(tag())
%% }
-type certificate() :: #{binary() => any()}.

%% Example:
%% update_domain_entry_request() :: #{
%%   <<"domainEntry">> := domain_entry(),
%%   <<"domainName">> := string()
%% }
-type update_domain_entry_request() :: #{binary() => any()}.

%% Example:
%% enable_add_on_result() :: #{
%%   <<"operations">> => list(operation())
%% }
-type enable_add_on_result() :: #{binary() => any()}.

%% Example:
%% import_key_pair_result() :: #{
%%   <<"operation">> => operation()
%% }
-type import_key_pair_result() :: #{binary() => any()}.

%% Example:
%% get_domains_request() :: #{
%%   <<"pageToken">> => string()
%% }
-type get_domains_request() :: #{binary() => any()}.

%% Example:
%% update_domain_entry_result() :: #{
%%   <<"operations">> => list(operation())
%% }
-type update_domain_entry_result() :: #{binary() => any()}.

%% Example:
%% get_bucket_metric_data_result() :: #{
%%   <<"metricData">> => list(metric_datapoint()),
%%   <<"metricName">> => list(any())
%% }
-type get_bucket_metric_data_result() :: #{binary() => any()}.

%% Example:
%% delete_container_service_result() :: #{

%% }
-type delete_container_service_result() :: #{binary() => any()}.

%% Example:
%% bucket() :: #{
%%   <<"ableToUpdateBundle">> => boolean(),
%%   <<"accessLogConfig">> => bucket_access_log_config(),
%%   <<"accessRules">> => access_rules(),
%%   <<"arn">> => string(),
%%   <<"bundleId">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"location">> => resource_location(),
%%   <<"name">> => string(),
%%   <<"objectVersioning">> => string(),
%%   <<"readonlyAccessAccounts">> => list(string()),
%%   <<"resourceType">> => string(),
%%   <<"resourcesReceivingAccess">> => list(resource_receiving_access()),
%%   <<"state">> => bucket_state(),
%%   <<"supportCode">> => string(),
%%   <<"tags">> => list(tag()),
%%   <<"url">> => string()
%% }
-type bucket() :: #{binary() => any()}.

%% Example:
%% get_container_images_request() :: #{

%% }
-type get_container_images_request() :: #{binary() => any()}.

%% Example:
%% create_bucket_request() :: #{
%%   <<"bucketName">> := string(),
%%   <<"bundleId">> := string(),
%%   <<"enableObjectVersioning">> => boolean(),
%%   <<"tags">> => list(tag())
%% }
-type create_bucket_request() :: #{binary() => any()}.

%% Example:
%% input_origin() :: #{
%%   <<"name">> => string(),
%%   <<"protocolPolicy">> => list(any()),
%%   <<"regionName">> => list(any()),
%%   <<"responseTimeout">> => integer()
%% }
-type input_origin() :: #{binary() => any()}.

%% Example:
%% disk_map() :: #{
%%   <<"newDiskName">> => string(),
%%   <<"originalDiskPath">> => string()
%% }
-type disk_map() :: #{binary() => any()}.

%% Example:
%% create_distribution_result() :: #{
%%   <<"distribution">> => lightsail_distribution(),
%%   <<"operation">> => operation()
%% }
-type create_distribution_result() :: #{binary() => any()}.

%% Example:
%% get_bundles_request() :: #{
%%   <<"appCategory">> => list(any()),
%%   <<"includeInactive">> => boolean(),
%%   <<"pageToken">> => string()
%% }
-type get_bundles_request() :: #{binary() => any()}.

%% Example:
%% instance() :: #{
%%   <<"addOns">> => list(add_on()),
%%   <<"arn">> => string(),
%%   <<"blueprintId">> => string(),
%%   <<"blueprintName">> => string(),
%%   <<"bundleId">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"hardware">> => instance_hardware(),
%%   <<"ipAddressType">> => list(any()),
%%   <<"ipv6Addresses">> => list(string()),
%%   <<"isStaticIp">> => boolean(),
%%   <<"location">> => resource_location(),
%%   <<"metadataOptions">> => instance_metadata_options(),
%%   <<"name">> => string(),
%%   <<"networking">> => instance_networking(),
%%   <<"privateIpAddress">> => string(),
%%   <<"publicIpAddress">> => string(),
%%   <<"resourceType">> => list(any()),
%%   <<"sshKeyName">> => string(),
%%   <<"state">> => instance_state(),
%%   <<"supportCode">> => string(),
%%   <<"tags">> => list(tag()),
%%   <<"username">> => string()
%% }
-type instance() :: #{binary() => any()}.

%% Example:
%% instance_metadata_options() :: #{
%%   <<"httpEndpoint">> => list(any()),
%%   <<"httpProtocolIpv6">> => list(any()),
%%   <<"httpPutResponseHopLimit">> => integer(),
%%   <<"httpTokens">> => list(any()),
%%   <<"state">> => list(any())
%% }
-type instance_metadata_options() :: #{binary() => any()}.

%% Example:
%% access_denied_exception() :: #{
%%   <<"code">> => string(),
%%   <<"docs">> => string(),
%%   <<"message">> => string(),
%%   <<"tip">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% import_key_pair_request() :: #{
%%   <<"keyPairName">> := string(),
%%   <<"publicKeyBase64">> := string()
%% }
-type import_key_pair_request() :: #{binary() => any()}.

%% Example:
%% create_instances_result() :: #{
%%   <<"operations">> => list(operation())
%% }
-type create_instances_result() :: #{binary() => any()}.

%% Example:
%% add_on_request() :: #{
%%   <<"addOnType">> => list(any()),
%%   <<"autoSnapshotAddOnRequest">> => auto_snapshot_add_on_request(),
%%   <<"stopInstanceOnIdleRequest">> => stop_instance_on_idle_request()
%% }
-type add_on_request() :: #{binary() => any()}.

%% Example:
%% delete_certificate_request() :: #{
%%   <<"certificateName">> := string()
%% }
-type delete_certificate_request() :: #{binary() => any()}.

%% Example:
%% get_active_names_request() :: #{
%%   <<"pageToken">> => string()
%% }
-type get_active_names_request() :: #{binary() => any()}.

%% Example:
%% create_key_pair_request() :: #{
%%   <<"keyPairName">> := string(),
%%   <<"tags">> => list(tag())
%% }
-type create_key_pair_request() :: #{binary() => any()}.

%% Example:
%% attach_load_balancer_tls_certificate_request() :: #{
%%   <<"certificateName">> := string(),
%%   <<"loadBalancerName">> := string()
%% }
-type attach_load_balancer_tls_certificate_request() :: #{binary() => any()}.

%% Example:
%% get_container_log_request() :: #{
%%   <<"endTime">> => non_neg_integer(),
%%   <<"filterPattern">> => string(),
%%   <<"pageToken">> => string(),
%%   <<"startTime">> => non_neg_integer()
%% }
-type get_container_log_request() :: #{binary() => any()}.

%% Example:
%% get_setup_history_result() :: #{
%%   <<"nextPageToken">> => string(),
%%   <<"setupHistory">> => list(setup_history())
%% }
-type get_setup_history_result() :: #{binary() => any()}.

%% Example:
%% origin() :: #{
%%   <<"name">> => string(),
%%   <<"protocolPolicy">> => list(any()),
%%   <<"regionName">> => list(any()),
%%   <<"resourceType">> => list(any()),
%%   <<"responseTimeout">> => integer()
%% }
-type origin() :: #{binary() => any()}.

%% Example:
%% get_disk_snapshot_request() :: #{
%%   <<"diskSnapshotName">> := string()
%% }
-type get_disk_snapshot_request() :: #{binary() => any()}.

%% Example:
%% update_relational_database_parameters_result() :: #{
%%   <<"operations">> => list(operation())
%% }
-type update_relational_database_parameters_result() :: #{binary() => any()}.

%% Example:
%% delete_instance_result() :: #{
%%   <<"operations">> => list(operation())
%% }
-type delete_instance_result() :: #{binary() => any()}.

%% Example:
%% get_bucket_access_keys_request() :: #{
%%   <<"bucketName">> := string()
%% }
-type get_bucket_access_keys_request() :: #{binary() => any()}.

%% Example:
%% port_info() :: #{
%%   <<"cidrListAliases">> => list(string()),
%%   <<"cidrs">> => list(string()),
%%   <<"fromPort">> => integer(),
%%   <<"ipv6Cidrs">> => list(string()),
%%   <<"protocol">> => list(any()),
%%   <<"toPort">> => integer()
%% }
-type port_info() :: #{binary() => any()}.

%% Example:
%% download_default_key_pair_result() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"privateKeyBase64">> => string(),
%%   <<"publicKeyBase64">> => string()
%% }
-type download_default_key_pair_result() :: #{binary() => any()}.

%% Example:
%% update_relational_database_result() :: #{
%%   <<"operations">> => list(operation())
%% }
-type update_relational_database_result() :: #{binary() => any()}.

%% Example:
%% get_load_balancer_metric_data_request() :: #{
%%   <<"endTime">> := non_neg_integer(),
%%   <<"loadBalancerName">> := string(),
%%   <<"metricName">> := list(any()),
%%   <<"period">> := integer(),
%%   <<"startTime">> := non_neg_integer(),
%%   <<"statistics">> := list(list(any())()),
%%   <<"unit">> := list(any())
%% }
-type get_load_balancer_metric_data_request() :: #{binary() => any()}.

%% Example:
%% get_relational_database_snapshot_request() :: #{
%%   <<"relationalDatabaseSnapshotName">> := string()
%% }
-type get_relational_database_snapshot_request() :: #{binary() => any()}.

%% Example:
%% update_instance_metadata_options_request() :: #{
%%   <<"httpEndpoint">> => list(any()),
%%   <<"httpProtocolIpv6">> => list(any()),
%%   <<"httpPutResponseHopLimit">> => integer(),
%%   <<"httpTokens">> => list(any()),
%%   <<"instanceName">> := string()
%% }
-type update_instance_metadata_options_request() :: #{binary() => any()}.

%% Example:
%% delete_certificate_result() :: #{
%%   <<"operations">> => list(operation())
%% }
-type delete_certificate_result() :: #{binary() => any()}.

%% Example:
%% copy_snapshot_request() :: #{
%%   <<"restoreDate">> => string(),
%%   <<"sourceRegion">> := list(any()),
%%   <<"sourceResourceName">> => string(),
%%   <<"sourceSnapshotName">> => string(),
%%   <<"targetSnapshotName">> := string(),
%%   <<"useLatestRestorableAutoSnapshot">> => boolean()
%% }
-type copy_snapshot_request() :: #{binary() => any()}.

%% Example:
%% detach_disk_request() :: #{
%%   <<"diskName">> := string()
%% }
-type detach_disk_request() :: #{binary() => any()}.

%% Example:
%% peer_vpc_request() :: #{

%% }
-type peer_vpc_request() :: #{binary() => any()}.

%% Example:
%% load_balancer() :: #{
%%   <<"arn">> => string(),
%%   <<"configurationOptions">> => map(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"dnsName">> => string(),
%%   <<"healthCheckPath">> => string(),
%%   <<"httpsRedirectionEnabled">> => boolean(),
%%   <<"instanceHealthSummary">> => list(instance_health_summary()),
%%   <<"instancePort">> => integer(),
%%   <<"ipAddressType">> => list(any()),
%%   <<"location">> => resource_location(),
%%   <<"name">> => string(),
%%   <<"protocol">> => list(any()),
%%   <<"publicPorts">> => list(integer()),
%%   <<"resourceType">> => list(any()),
%%   <<"state">> => list(any()),
%%   <<"supportCode">> => string(),
%%   <<"tags">> => list(tag()),
%%   <<"tlsCertificateSummaries">> => list(load_balancer_tls_certificate_summary()),
%%   <<"tlsPolicyName">> => string()
%% }
-type load_balancer() :: #{binary() => any()}.

%% Example:
%% get_relational_database_bundles_request() :: #{
%%   <<"includeInactive">> => boolean(),
%%   <<"pageToken">> => string()
%% }
-type get_relational_database_bundles_request() :: #{binary() => any()}.

%% Example:
%% disk() :: #{
%%   <<"addOns">> => list(add_on()),
%%   <<"arn">> => string(),
%%   <<"attachedTo">> => string(),
%%   <<"attachmentState">> => string(),
%%   <<"autoMountStatus">> => list(any()),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"gbInUse">> => integer(),
%%   <<"iops">> => integer(),
%%   <<"isAttached">> => boolean(),
%%   <<"isSystemDisk">> => boolean(),
%%   <<"location">> => resource_location(),
%%   <<"name">> => string(),
%%   <<"path">> => string(),
%%   <<"resourceType">> => list(any()),
%%   <<"sizeInGb">> => integer(),
%%   <<"state">> => list(any()),
%%   <<"supportCode">> => string(),
%%   <<"tags">> => list(tag())
%% }
-type disk() :: #{binary() => any()}.

%% Example:
%% create_cloud_formation_stack_result() :: #{
%%   <<"operations">> => list(operation())
%% }
-type create_cloud_formation_stack_result() :: #{binary() => any()}.

%% Example:
%% cloud_formation_stack_record() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"destinationInfo">> => destination_info(),
%%   <<"location">> => resource_location(),
%%   <<"name">> => string(),
%%   <<"resourceType">> => list(any()),
%%   <<"sourceInfo">> => list(cloud_formation_stack_record_source_info()),
%%   <<"state">> => list(any())
%% }
-type cloud_formation_stack_record() :: #{binary() => any()}.

%% Example:
%% create_relational_database_snapshot_result() :: #{
%%   <<"operations">> => list(operation())
%% }
-type create_relational_database_snapshot_result() :: #{binary() => any()}.

%% Example:
%% create_load_balancer_tls_certificate_request() :: #{
%%   <<"certificateAlternativeNames">> => list(string()),
%%   <<"certificateDomainName">> := string(),
%%   <<"certificateName">> := string(),
%%   <<"loadBalancerName">> := string(),
%%   <<"tags">> => list(tag())
%% }
-type create_load_balancer_tls_certificate_request() :: #{binary() => any()}.

%% Example:
%% get_relational_database_parameters_result() :: #{
%%   <<"nextPageToken">> => string(),
%%   <<"parameters">> => list(relational_database_parameter())
%% }
-type get_relational_database_parameters_result() :: #{binary() => any()}.

%% Example:
%% get_key_pair_request() :: #{
%%   <<"keyPairName">> := string()
%% }
-type get_key_pair_request() :: #{binary() => any()}.

%% Example:
%% cache_settings() :: #{
%%   <<"allowedHTTPMethods">> => string(),
%%   <<"cachedHTTPMethods">> => string(),
%%   <<"defaultTTL">> => float(),
%%   <<"forwardedCookies">> => cookie_object(),
%%   <<"forwardedHeaders">> => header_object(),
%%   <<"forwardedQueryStrings">> => query_string_object(),
%%   <<"maximumTTL">> => float(),
%%   <<"minimumTTL">> => float()
%% }
-type cache_settings() :: #{binary() => any()}.

%% Example:
%% get_instance_access_details_request() :: #{
%%   <<"instanceName">> := string(),
%%   <<"protocol">> => list(any())
%% }
-type get_instance_access_details_request() :: #{binary() => any()}.

%% Example:
%% attach_static_ip_request() :: #{
%%   <<"instanceName">> := string(),
%%   <<"staticIpName">> := string()
%% }
-type attach_static_ip_request() :: #{binary() => any()}.

%% Example:
%% private_registry_access_request() :: #{
%%   <<"ecrImagePullerRole">> => container_service_e_c_r_image_puller_role_request()
%% }
-type private_registry_access_request() :: #{binary() => any()}.

%% Example:
%% unpeer_vpc_result() :: #{
%%   <<"operation">> => operation()
%% }
-type unpeer_vpc_result() :: #{binary() => any()}.

%% Example:
%% get_instances_request() :: #{
%%   <<"pageToken">> => string()
%% }
-type get_instances_request() :: #{binary() => any()}.

%% Example:
%% get_alarms_result() :: #{
%%   <<"alarms">> => list(alarm()),
%%   <<"nextPageToken">> => string()
%% }
-type get_alarms_result() :: #{binary() => any()}.

%% Example:
%% endpoint_request() :: #{
%%   <<"containerName">> => string(),
%%   <<"containerPort">> => integer(),
%%   <<"healthCheck">> => container_service_health_check_config()
%% }
-type endpoint_request() :: #{binary() => any()}.

%% Example:
%% instance_port_info() :: #{
%%   <<"accessDirection">> => list(any()),
%%   <<"accessFrom">> => string(),
%%   <<"accessType">> => list(any()),
%%   <<"cidrListAliases">> => list(string()),
%%   <<"cidrs">> => list(string()),
%%   <<"commonName">> => string(),
%%   <<"fromPort">> => integer(),
%%   <<"ipv6Cidrs">> => list(string()),
%%   <<"protocol">> => list(any()),
%%   <<"toPort">> => integer()
%% }
-type instance_port_info() :: #{binary() => any()}.

%% Example:
%% get_relational_database_events_result() :: #{
%%   <<"nextPageToken">> => string(),
%%   <<"relationalDatabaseEvents">> => list(relational_database_event())
%% }
-type get_relational_database_events_result() :: #{binary() => any()}.

%% Example:
%% get_container_log_result() :: #{
%%   <<"logEvents">> => list(container_service_log_event()),
%%   <<"nextPageToken">> => string()
%% }
-type get_container_log_result() :: #{binary() => any()}.

%% Example:
%% get_load_balancers_result() :: #{
%%   <<"loadBalancers">> => list(load_balancer()),
%%   <<"nextPageToken">> => string()
%% }
-type get_load_balancers_result() :: #{binary() => any()}.

%% Example:
%% delete_instance_request() :: #{
%%   <<"forceDeleteAddOns">> => boolean(),
%%   <<"instanceName">> := string()
%% }
-type delete_instance_request() :: #{binary() => any()}.

%% Example:
%% get_certificates_result() :: #{
%%   <<"certificates">> => list(certificate_summary()),
%%   <<"nextPageToken">> => string()
%% }
-type get_certificates_result() :: #{binary() => any()}.

%% Example:
%% update_relational_database_parameters_request() :: #{
%%   <<"parameters">> := list(relational_database_parameter()),
%%   <<"relationalDatabaseName">> := string()
%% }
-type update_relational_database_parameters_request() :: #{binary() => any()}.

%% Example:
%% get_container_service_metric_data_request() :: #{
%%   <<"endTime">> := non_neg_integer(),
%%   <<"metricName">> := list(any()),
%%   <<"period">> := integer(),
%%   <<"startTime">> := non_neg_integer(),
%%   <<"statistics">> := list(list(any())())
%% }
-type get_container_service_metric_data_request() :: #{binary() => any()}.

%% Example:
%% get_alarms_request() :: #{
%%   <<"alarmName">> => string(),
%%   <<"monitoredResourceName">> => string(),
%%   <<"pageToken">> => string()
%% }
-type get_alarms_request() :: #{binary() => any()}.

%% Example:
%% open_instance_public_ports_result() :: #{
%%   <<"operation">> => operation()
%% }
-type open_instance_public_ports_result() :: #{binary() => any()}.

%% Example:
%% detach_instances_from_load_balancer_request() :: #{
%%   <<"instanceNames">> := list(string()),
%%   <<"loadBalancerName">> := string()
%% }
-type detach_instances_from_load_balancer_request() :: #{binary() => any()}.

%% Example:
%% update_container_service_request() :: #{
%%   <<"isDisabled">> => boolean(),
%%   <<"power">> => list(any()),
%%   <<"privateRegistryAccess">> => private_registry_access_request(),
%%   <<"publicDomainNames">> => map(),
%%   <<"scale">> => integer()
%% }
-type update_container_service_request() :: #{binary() => any()}.

%% Example:
%% start_g_ui_session_request() :: #{
%%   <<"resourceName">> := string()
%% }
-type start_g_ui_session_request() :: #{binary() => any()}.

%% Example:
%% update_distribution_result() :: #{
%%   <<"operation">> => operation()
%% }
-type update_distribution_result() :: #{binary() => any()}.

%% Example:
%% get_container_images_result() :: #{
%%   <<"containerImages">> => list(container_image())
%% }
-type get_container_images_result() :: #{binary() => any()}.

%% Example:
%% create_container_service_registry_login_request() :: #{

%% }
-type create_container_service_registry_login_request() :: #{binary() => any()}.

%% Example:
%% create_g_ui_session_access_details_result() :: #{
%%   <<"failureReason">> => string(),
%%   <<"percentageComplete">> => integer(),
%%   <<"resourceName">> => string(),
%%   <<"sessions">> => list(session()),
%%   <<"status">> => list(any())
%% }
-type create_g_ui_session_access_details_result() :: #{binary() => any()}.

%% Example:
%% get_load_balancers_request() :: #{
%%   <<"pageToken">> => string()
%% }
-type get_load_balancers_request() :: #{binary() => any()}.

%% Example:
%% is_vpc_peered_request() :: #{

%% }
-type is_vpc_peered_request() :: #{binary() => any()}.

%% Example:
%% get_disks_request() :: #{
%%   <<"pageToken">> => string()
%% }
-type get_disks_request() :: #{binary() => any()}.

%% Example:
%% get_operations_for_resource_result() :: #{
%%   <<"nextPageCount">> => string(),
%%   <<"nextPageToken">> => string(),
%%   <<"operations">> => list(operation())
%% }
-type get_operations_for_resource_result() :: #{binary() => any()}.

%% Example:
%% get_distribution_latest_cache_reset_result() :: #{
%%   <<"createTime">> => non_neg_integer(),
%%   <<"status">> => string()
%% }
-type get_distribution_latest_cache_reset_result() :: #{binary() => any()}.

%% Example:
%% create_bucket_access_key_result() :: #{
%%   <<"accessKey">> => access_key(),
%%   <<"operations">> => list(operation())
%% }
-type create_bucket_access_key_result() :: #{binary() => any()}.

%% Example:
%% tag_resource_result() :: #{
%%   <<"operations">> => list(operation())
%% }
-type tag_resource_result() :: #{binary() => any()}.

%% Example:
%% get_instance_state_result() :: #{
%%   <<"state">> => instance_state()
%% }
-type get_instance_state_result() :: #{binary() => any()}.

%% Example:
%% unpeer_vpc_request() :: #{

%% }
-type unpeer_vpc_request() :: #{binary() => any()}.

%% Example:
%% open_instance_public_ports_request() :: #{
%%   <<"instanceName">> := string(),
%%   <<"portInfo">> := port_info()
%% }
-type open_instance_public_ports_request() :: #{binary() => any()}.

%% Example:
%% get_cloud_formation_stack_records_request() :: #{
%%   <<"pageToken">> => string()
%% }
-type get_cloud_formation_stack_records_request() :: #{binary() => any()}.

%% Example:
%% update_distribution_bundle_request() :: #{
%%   <<"bundleId">> => string(),
%%   <<"distributionName">> => string()
%% }
-type update_distribution_bundle_request() :: #{binary() => any()}.

%% Example:
%% get_operations_request() :: #{
%%   <<"pageToken">> => string()
%% }
-type get_operations_request() :: #{binary() => any()}.

%% Example:
%% get_relational_databases_result() :: #{
%%   <<"nextPageToken">> => string(),
%%   <<"relationalDatabases">> => list(relational_database())
%% }
-type get_relational_databases_result() :: #{binary() => any()}.

%% Example:
%% delete_distribution_request() :: #{
%%   <<"distributionName">> => string()
%% }
-type delete_distribution_request() :: #{binary() => any()}.

%% Example:
%% get_relational_database_blueprints_result() :: #{
%%   <<"blueprints">> => list(relational_database_blueprint()),
%%   <<"nextPageToken">> => string()
%% }
-type get_relational_database_blueprints_result() :: #{binary() => any()}.

%% Example:
%% create_key_pair_result() :: #{
%%   <<"keyPair">> => key_pair(),
%%   <<"operation">> => operation(),
%%   <<"privateKeyBase64">> => string(),
%%   <<"publicKeyBase64">> => string()
%% }
-type create_key_pair_result() :: #{binary() => any()}.

%% Example:
%% attach_static_ip_result() :: #{
%%   <<"operations">> => list(operation())
%% }
-type attach_static_ip_result() :: #{binary() => any()}.

%% Example:
%% get_relational_database_result() :: #{
%%   <<"relationalDatabase">> => relational_database()
%% }
-type get_relational_database_result() :: #{binary() => any()}.

%% Example:
%% metric_datapoint() :: #{
%%   <<"average">> => float(),
%%   <<"maximum">> => float(),
%%   <<"minimum">> => float(),
%%   <<"sampleCount">> => float(),
%%   <<"sum">> => float(),
%%   <<"timestamp">> => non_neg_integer(),
%%   <<"unit">> => list(any())
%% }
-type metric_datapoint() :: #{binary() => any()}.

%% Example:
%% start_g_ui_session_result() :: #{
%%   <<"operations">> => list(operation())
%% }
-type start_g_ui_session_result() :: #{binary() => any()}.

%% Example:
%% delete_load_balancer_tls_certificate_result() :: #{
%%   <<"operations">> => list(operation())
%% }
-type delete_load_balancer_tls_certificate_result() :: #{binary() => any()}.

%% Example:
%% relational_database_parameter() :: #{
%%   <<"allowedValues">> => string(),
%%   <<"applyMethod">> => string(),
%%   <<"applyType">> => string(),
%%   <<"dataType">> => string(),
%%   <<"description">> => string(),
%%   <<"isModifiable">> => boolean(),
%%   <<"parameterName">> => string(),
%%   <<"parameterValue">> => string()
%% }
-type relational_database_parameter() :: #{binary() => any()}.

%% Example:
%% get_setup_history_request() :: #{
%%   <<"pageToken">> => string(),
%%   <<"resourceName">> := string()
%% }
-type get_setup_history_request() :: #{binary() => any()}.

%% Example:
%% get_static_ips_result() :: #{
%%   <<"nextPageToken">> => string(),
%%   <<"staticIps">> => list(static_ip())
%% }
-type get_static_ips_result() :: #{binary() => any()}.

%% Example:
%% get_cloud_formation_stack_records_result() :: #{
%%   <<"cloudFormationStackRecords">> => list(cloud_formation_stack_record()),
%%   <<"nextPageToken">> => string()
%% }
-type get_cloud_formation_stack_records_result() :: #{binary() => any()}.

%% Example:
%% get_relational_database_master_user_password_request() :: #{
%%   <<"passwordVersion">> => list(any()),
%%   <<"relationalDatabaseName">> := string()
%% }
-type get_relational_database_master_user_password_request() :: #{binary() => any()}.

%% Example:
%% get_relational_database_snapshots_request() :: #{
%%   <<"pageToken">> => string()
%% }
-type get_relational_database_snapshots_request() :: #{binary() => any()}.

%% Example:
%% export_snapshot_record_source_info() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"diskSnapshotInfo">> => disk_snapshot_info(),
%%   <<"fromResourceArn">> => string(),
%%   <<"fromResourceName">> => string(),
%%   <<"instanceSnapshotInfo">> => instance_snapshot_info(),
%%   <<"name">> => string(),
%%   <<"resourceType">> => list(any())
%% }
-type export_snapshot_record_source_info() :: #{binary() => any()}.

%% Example:
%% get_disks_result() :: #{
%%   <<"disks">> => list(disk()),
%%   <<"nextPageToken">> => string()
%% }
-type get_disks_result() :: #{binary() => any()}.

%% Example:
%% get_instance_result() :: #{
%%   <<"instance">> => instance()
%% }
-type get_instance_result() :: #{binary() => any()}.

%% Example:
%% get_instance_state_request() :: #{
%%   <<"instanceName">> := string()
%% }
-type get_instance_state_request() :: #{binary() => any()}.

%% Example:
%% get_load_balancer_metric_data_result() :: #{
%%   <<"metricData">> => list(metric_datapoint()),
%%   <<"metricName">> => list(any())
%% }
-type get_load_balancer_metric_data_result() :: #{binary() => any()}.

%% Example:
%% delete_bucket_access_key_request() :: #{
%%   <<"accessKeyId">> := string(),
%%   <<"bucketName">> := string()
%% }
-type delete_bucket_access_key_request() :: #{binary() => any()}.

%% Example:
%% get_blueprints_result() :: #{
%%   <<"blueprints">> => list(blueprint()),
%%   <<"nextPageToken">> => string()
%% }
-type get_blueprints_result() :: #{binary() => any()}.

%% Example:
%% query_string_object() :: #{
%%   <<"option">> => boolean(),
%%   <<"queryStringsAllowList">> => list(string())
%% }
-type query_string_object() :: #{binary() => any()}.

%% Example:
%% detach_certificate_from_distribution_request() :: #{
%%   <<"distributionName">> := string()
%% }
-type detach_certificate_from_distribution_request() :: #{binary() => any()}.

%% Example:
%% start_instance_request() :: #{
%%   <<"instanceName">> := string()
%% }
-type start_instance_request() :: #{binary() => any()}.

%% Example:
%% get_disk_result() :: #{
%%   <<"disk">> => disk()
%% }
-type get_disk_result() :: #{binary() => any()}.

%% Example:
%% domain_entry() :: #{
%%   <<"id">> => string(),
%%   <<"isAlias">> => boolean(),
%%   <<"name">> => string(),
%%   <<"options">> => map(),
%%   <<"target">> => string(),
%%   <<"type">> => string()
%% }
-type domain_entry() :: #{binary() => any()}.

%% Example:
%% disk_info() :: #{
%%   <<"isSystemDisk">> => boolean(),
%%   <<"name">> => string(),
%%   <<"path">> => string(),
%%   <<"sizeInGb">> => integer()
%% }
-type disk_info() :: #{binary() => any()}.

%% Example:
%% create_domain_entry_result() :: #{
%%   <<"operation">> => operation()
%% }
-type create_domain_entry_result() :: #{binary() => any()}.

%% Example:
%% resource_record() :: #{
%%   <<"name">> => string(),
%%   <<"type">> => string(),
%%   <<"value">> => string()
%% }
-type resource_record() :: #{binary() => any()}.

%% Example:
%% registered_domain_delegation_info() :: #{
%%   <<"nameServersUpdateState">> => name_servers_update_state(),
%%   <<"r53HostedZoneDeletionState">> => r53_hosted_zone_deletion_state()
%% }
-type registered_domain_delegation_info() :: #{binary() => any()}.

%% Example:
%% header_object() :: #{
%%   <<"headersAllowList">> => list(list(any())()),
%%   <<"option">> => list(any())
%% }
-type header_object() :: #{binary() => any()}.

%% Example:
%% get_certificates_request() :: #{
%%   <<"certificateName">> => string(),
%%   <<"certificateStatuses">> => list(list(any())()),
%%   <<"includeCertificateDetails">> => boolean(),
%%   <<"pageToken">> => string()
%% }
-type get_certificates_request() :: #{binary() => any()}.

%% Example:
%% host_key_attributes() :: #{
%%   <<"algorithm">> => string(),
%%   <<"fingerprintSHA1">> => string(),
%%   <<"fingerprintSHA256">> => string(),
%%   <<"notValidAfter">> => non_neg_integer(),
%%   <<"notValidBefore">> => non_neg_integer(),
%%   <<"publicKey">> => string(),
%%   <<"witnessedAt">> => non_neg_integer()
%% }
-type host_key_attributes() :: #{binary() => any()}.

%% Example:
%% cache_behavior() :: #{
%%   <<"behavior">> => list(any())
%% }
-type cache_behavior() :: #{binary() => any()}.

%% Example:
%% access_key_last_used() :: #{
%%   <<"lastUsedDate">> => non_neg_integer(),
%%   <<"region">> => string(),
%%   <<"serviceName">> => string()
%% }
-type access_key_last_used() :: #{binary() => any()}.

%% Example:
%% relational_database_endpoint() :: #{
%%   <<"address">> => string(),
%%   <<"port">> => integer()
%% }
-type relational_database_endpoint() :: #{binary() => any()}.

%% Example:
%% get_container_api_metadata_request() :: #{

%% }
-type get_container_api_metadata_request() :: #{binary() => any()}.

%% Example:
%% stop_relational_database_request() :: #{
%%   <<"relationalDatabaseName">> := string(),
%%   <<"relationalDatabaseSnapshotName">> => string()
%% }
-type stop_relational_database_request() :: #{binary() => any()}.

%% Example:
%% create_container_service_result() :: #{
%%   <<"containerService">> => container_service()
%% }
-type create_container_service_result() :: #{binary() => any()}.

%% Example:
%% container_service_endpoint() :: #{
%%   <<"containerName">> => string(),
%%   <<"containerPort">> => integer(),
%%   <<"healthCheck">> => container_service_health_check_config()
%% }
-type container_service_endpoint() :: #{binary() => any()}.

%% Example:
%% estimate_by_time() :: #{
%%   <<"currency">> => list(any()),
%%   <<"pricingUnit">> => list(any()),
%%   <<"timePeriod">> => time_period(),
%%   <<"unit">> => float(),
%%   <<"usageCost">> => float()
%% }
-type estimate_by_time() :: #{binary() => any()}.

%% Example:
%% cost_estimate() :: #{
%%   <<"resultsByTime">> => list(estimate_by_time()),
%%   <<"usageType">> => string()
%% }
-type cost_estimate() :: #{binary() => any()}.

%% Example:
%% relational_database_bundle() :: #{
%%   <<"bundleId">> => string(),
%%   <<"cpuCount">> => integer(),
%%   <<"diskSizeInGb">> => integer(),
%%   <<"isActive">> => boolean(),
%%   <<"isEncrypted">> => boolean(),
%%   <<"name">> => string(),
%%   <<"price">> => float(),
%%   <<"ramSizeInGb">> => float(),
%%   <<"transferPerMonthInGb">> => integer()
%% }
-type relational_database_bundle() :: #{binary() => any()}.

%% Example:
%% get_disk_snapshots_result() :: #{
%%   <<"diskSnapshots">> => list(disk_snapshot()),
%%   <<"nextPageToken">> => string()
%% }
-type get_disk_snapshots_result() :: #{binary() => any()}.

%% Example:
%% get_container_service_powers_request() :: #{

%% }
-type get_container_service_powers_request() :: #{binary() => any()}.

%% Example:
%% detach_certificate_from_distribution_result() :: #{
%%   <<"operation">> => operation()
%% }
-type detach_certificate_from_distribution_result() :: #{binary() => any()}.

%% Example:
%% create_relational_database_from_snapshot_request() :: #{
%%   <<"availabilityZone">> => string(),
%%   <<"publiclyAccessible">> => boolean(),
%%   <<"relationalDatabaseBundleId">> => string(),
%%   <<"relationalDatabaseName">> := string(),
%%   <<"relationalDatabaseSnapshotName">> => string(),
%%   <<"restoreTime">> => non_neg_integer(),
%%   <<"sourceRelationalDatabaseName">> => string(),
%%   <<"tags">> => list(tag()),
%%   <<"useLatestRestorableTime">> => boolean()
%% }
-type create_relational_database_from_snapshot_request() :: #{binary() => any()}.

%% Example:
%% get_relational_database_blueprints_request() :: #{
%%   <<"pageToken">> => string()
%% }
-type get_relational_database_blueprints_request() :: #{binary() => any()}.

%% Example:
%% instance_entry() :: #{
%%   <<"availabilityZone">> => string(),
%%   <<"instanceType">> => string(),
%%   <<"portInfoSource">> => list(any()),
%%   <<"sourceName">> => string(),
%%   <<"userData">> => string()
%% }
-type instance_entry() :: #{binary() => any()}.

%% Example:
%% set_resource_access_for_bucket_result() :: #{
%%   <<"operations">> => list(operation())
%% }
-type set_resource_access_for_bucket_result() :: #{binary() => any()}.

%% Example:
%% cookie_object() :: #{
%%   <<"cookiesAllowList">> => list(string()),
%%   <<"option">> => list(any())
%% }
-type cookie_object() :: #{binary() => any()}.

%% Example:
%% delete_auto_snapshot_result() :: #{
%%   <<"operations">> => list(operation())
%% }
-type delete_auto_snapshot_result() :: #{binary() => any()}.

%% Example:
%% relational_database_blueprint() :: #{
%%   <<"blueprintId">> => string(),
%%   <<"engine">> => list(any()),
%%   <<"engineDescription">> => string(),
%%   <<"engineVersion">> => string(),
%%   <<"engineVersionDescription">> => string(),
%%   <<"isEngineDefault">> => boolean()
%% }
-type relational_database_blueprint() :: #{binary() => any()}.

%% Example:
%% delete_alarm_result() :: #{
%%   <<"operations">> => list(operation())
%% }
-type delete_alarm_result() :: #{binary() => any()}.

%% Example:
%% attach_certificate_to_distribution_result() :: #{
%%   <<"operation">> => operation()
%% }
-type attach_certificate_to_distribution_result() :: #{binary() => any()}.

%% Example:
%% auto_snapshot_add_on_request() :: #{
%%   <<"snapshotTimeOfDay">> => string()
%% }
-type auto_snapshot_add_on_request() :: #{binary() => any()}.

%% Example:
%% update_container_service_result() :: #{
%%   <<"containerService">> => container_service()
%% }
-type update_container_service_result() :: #{binary() => any()}.

%% Example:
%% export_snapshot_record() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"destinationInfo">> => destination_info(),
%%   <<"location">> => resource_location(),
%%   <<"name">> => string(),
%%   <<"resourceType">> => list(any()),
%%   <<"sourceInfo">> => export_snapshot_record_source_info(),
%%   <<"state">> => list(any())
%% }
-type export_snapshot_record() :: #{binary() => any()}.

%% Example:
%% private_registry_access() :: #{
%%   <<"ecrImagePullerRole">> => container_service_e_c_r_image_puller_role()
%% }
-type private_registry_access() :: #{binary() => any()}.

%% Example:
%% close_instance_public_ports_request() :: #{
%%   <<"instanceName">> := string(),
%%   <<"portInfo">> := port_info()
%% }
-type close_instance_public_ports_request() :: #{binary() => any()}.

%% Example:
%% create_contact_method_result() :: #{
%%   <<"operations">> => list(operation())
%% }
-type create_contact_method_result() :: #{binary() => any()}.

%% Example:
%% start_relational_database_result() :: #{
%%   <<"operations">> => list(operation())
%% }
-type start_relational_database_result() :: #{binary() => any()}.

%% Example:
%% delete_relational_database_snapshot_result() :: #{
%%   <<"operations">> => list(operation())
%% }
-type delete_relational_database_snapshot_result() :: #{binary() => any()}.

%% Example:
%% account_setup_in_progress_exception() :: #{
%%   <<"code">> => string(),
%%   <<"docs">> => string(),
%%   <<"message">> => string(),
%%   <<"tip">> => string()
%% }
-type account_setup_in_progress_exception() :: #{binary() => any()}.

%% Example:
%% bucket_access_log_config() :: #{
%%   <<"destination">> => string(),
%%   <<"enabled">> => boolean(),
%%   <<"prefix">> => string()
%% }
-type bucket_access_log_config() :: #{binary() => any()}.

%% Example:
%% create_disk_result() :: #{
%%   <<"operations">> => list(operation())
%% }
-type create_disk_result() :: #{binary() => any()}.

%% Example:
%% relational_database_event() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"eventCategories">> => list(string()),
%%   <<"message">> => string(),
%%   <<"resource">> => string()
%% }
-type relational_database_event() :: #{binary() => any()}.

%% Example:
%% release_static_ip_result() :: #{
%%   <<"operations">> => list(operation())
%% }
-type release_static_ip_result() :: #{binary() => any()}.

%% Example:
%% get_container_service_deployments_result() :: #{
%%   <<"deployments">> => list(container_service_deployment())
%% }
-type get_container_service_deployments_result() :: #{binary() => any()}.

%% Example:
%% operation_failure_exception() :: #{
%%   <<"code">> => string(),
%%   <<"docs">> => string(),
%%   <<"message">> => string(),
%%   <<"tip">> => string()
%% }
-type operation_failure_exception() :: #{binary() => any()}.

%% Example:
%% log_event() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"message">> => string()
%% }
-type log_event() :: #{binary() => any()}.

%% Example:
%% setup_execution_details() :: #{
%%   <<"command">> => string(),
%%   <<"dateTime">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"standardError">> => string(),
%%   <<"standardOutput">> => string(),
%%   <<"status">> => list(any()),
%%   <<"version">> => string()
%% }
-type setup_execution_details() :: #{binary() => any()}.

%% Example:
%% get_contact_methods_result() :: #{
%%   <<"contactMethods">> => list(contact_method())
%% }
-type get_contact_methods_result() :: #{binary() => any()}.

%% Example:
%% register_container_image_result() :: #{
%%   <<"containerImage">> => container_image()
%% }
-type register_container_image_result() :: #{binary() => any()}.

-type allocate_static_ip_errors() ::
    operation_failure_exception() | 
    account_setup_in_progress_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type attach_certificate_to_distribution_errors() ::
    operation_failure_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception().

-type attach_disk_errors() ::
    operation_failure_exception() | 
    account_setup_in_progress_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type attach_instances_to_load_balancer_errors() ::
    operation_failure_exception() | 
    account_setup_in_progress_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type attach_load_balancer_tls_certificate_errors() ::
    operation_failure_exception() | 
    account_setup_in_progress_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type attach_static_ip_errors() ::
    operation_failure_exception() | 
    account_setup_in_progress_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type close_instance_public_ports_errors() ::
    operation_failure_exception() | 
    account_setup_in_progress_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type copy_snapshot_errors() ::
    operation_failure_exception() | 
    account_setup_in_progress_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type create_bucket_errors() ::
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type create_bucket_access_key_errors() ::
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type create_certificate_errors() ::
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type create_cloud_formation_stack_errors() ::
    operation_failure_exception() | 
    account_setup_in_progress_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type create_contact_method_errors() ::
    operation_failure_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type create_container_service_errors() ::
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type create_container_service_deployment_errors() ::
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type create_container_service_registry_login_errors() ::
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type create_disk_errors() ::
    operation_failure_exception() | 
    account_setup_in_progress_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type create_disk_from_snapshot_errors() ::
    operation_failure_exception() | 
    account_setup_in_progress_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type create_disk_snapshot_errors() ::
    operation_failure_exception() | 
    account_setup_in_progress_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type create_distribution_errors() ::
    operation_failure_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception().

-type create_domain_errors() ::
    operation_failure_exception() | 
    account_setup_in_progress_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type create_domain_entry_errors() ::
    operation_failure_exception() | 
    account_setup_in_progress_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type create_g_ui_session_access_details_errors() ::
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type create_instance_snapshot_errors() ::
    operation_failure_exception() | 
    account_setup_in_progress_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type create_instances_errors() ::
    operation_failure_exception() | 
    account_setup_in_progress_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type create_instances_from_snapshot_errors() ::
    operation_failure_exception() | 
    account_setup_in_progress_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type create_key_pair_errors() ::
    operation_failure_exception() | 
    account_setup_in_progress_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type create_load_balancer_errors() ::
    operation_failure_exception() | 
    account_setup_in_progress_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type create_load_balancer_tls_certificate_errors() ::
    operation_failure_exception() | 
    account_setup_in_progress_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type create_relational_database_errors() ::
    operation_failure_exception() | 
    account_setup_in_progress_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type create_relational_database_from_snapshot_errors() ::
    operation_failure_exception() | 
    account_setup_in_progress_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type create_relational_database_snapshot_errors() ::
    operation_failure_exception() | 
    account_setup_in_progress_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type delete_alarm_errors() ::
    operation_failure_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type delete_auto_snapshot_errors() ::
    operation_failure_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type delete_bucket_errors() ::
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type delete_bucket_access_key_errors() ::
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type delete_certificate_errors() ::
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type delete_contact_method_errors() ::
    operation_failure_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type delete_container_image_errors() ::
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type delete_container_service_errors() ::
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type delete_disk_errors() ::
    operation_failure_exception() | 
    account_setup_in_progress_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type delete_disk_snapshot_errors() ::
    operation_failure_exception() | 
    account_setup_in_progress_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type delete_distribution_errors() ::
    operation_failure_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception().

-type delete_domain_errors() ::
    operation_failure_exception() | 
    account_setup_in_progress_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type delete_domain_entry_errors() ::
    operation_failure_exception() | 
    account_setup_in_progress_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type delete_instance_errors() ::
    operation_failure_exception() | 
    account_setup_in_progress_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type delete_instance_snapshot_errors() ::
    operation_failure_exception() | 
    account_setup_in_progress_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type delete_key_pair_errors() ::
    operation_failure_exception() | 
    account_setup_in_progress_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type delete_known_host_keys_errors() ::
    operation_failure_exception() | 
    account_setup_in_progress_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type delete_load_balancer_errors() ::
    operation_failure_exception() | 
    account_setup_in_progress_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type delete_load_balancer_tls_certificate_errors() ::
    operation_failure_exception() | 
    account_setup_in_progress_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type delete_relational_database_errors() ::
    operation_failure_exception() | 
    account_setup_in_progress_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type delete_relational_database_snapshot_errors() ::
    operation_failure_exception() | 
    account_setup_in_progress_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type detach_certificate_from_distribution_errors() ::
    operation_failure_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception().

-type detach_disk_errors() ::
    operation_failure_exception() | 
    account_setup_in_progress_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type detach_instances_from_load_balancer_errors() ::
    operation_failure_exception() | 
    account_setup_in_progress_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type detach_static_ip_errors() ::
    operation_failure_exception() | 
    account_setup_in_progress_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type disable_add_on_errors() ::
    operation_failure_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type download_default_key_pair_errors() ::
    operation_failure_exception() | 
    account_setup_in_progress_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type enable_add_on_errors() ::
    operation_failure_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type export_snapshot_errors() ::
    operation_failure_exception() | 
    account_setup_in_progress_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type get_active_names_errors() ::
    operation_failure_exception() | 
    account_setup_in_progress_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type get_alarms_errors() ::
    operation_failure_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type get_auto_snapshots_errors() ::
    operation_failure_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type get_blueprints_errors() ::
    operation_failure_exception() | 
    account_setup_in_progress_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type get_bucket_access_keys_errors() ::
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type get_bucket_bundles_errors() ::
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type get_bucket_metric_data_errors() ::
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type get_buckets_errors() ::
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type get_bundles_errors() ::
    operation_failure_exception() | 
    account_setup_in_progress_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type get_certificates_errors() ::
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type get_cloud_formation_stack_records_errors() ::
    operation_failure_exception() | 
    account_setup_in_progress_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type get_contact_methods_errors() ::
    operation_failure_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type get_container_api_metadata_errors() ::
    access_denied_exception() | 
    service_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type get_container_images_errors() ::
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type get_container_log_errors() ::
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type get_container_service_deployments_errors() ::
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type get_container_service_metric_data_errors() ::
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type get_container_service_powers_errors() ::
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type get_container_services_errors() ::
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type get_cost_estimate_errors() ::
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type get_disk_errors() ::
    operation_failure_exception() | 
    account_setup_in_progress_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type get_disk_snapshot_errors() ::
    operation_failure_exception() | 
    account_setup_in_progress_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type get_disk_snapshots_errors() ::
    operation_failure_exception() | 
    account_setup_in_progress_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type get_disks_errors() ::
    operation_failure_exception() | 
    account_setup_in_progress_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type get_distribution_bundles_errors() ::
    operation_failure_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception().

-type get_distribution_latest_cache_reset_errors() ::
    operation_failure_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception().

-type get_distribution_metric_data_errors() ::
    operation_failure_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception().

-type get_distributions_errors() ::
    operation_failure_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception().

-type get_domain_errors() ::
    operation_failure_exception() | 
    account_setup_in_progress_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type get_domains_errors() ::
    operation_failure_exception() | 
    account_setup_in_progress_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type get_export_snapshot_records_errors() ::
    operation_failure_exception() | 
    account_setup_in_progress_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type get_instance_errors() ::
    operation_failure_exception() | 
    account_setup_in_progress_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type get_instance_access_details_errors() ::
    operation_failure_exception() | 
    account_setup_in_progress_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type get_instance_metric_data_errors() ::
    operation_failure_exception() | 
    account_setup_in_progress_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type get_instance_port_states_errors() ::
    operation_failure_exception() | 
    account_setup_in_progress_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type get_instance_snapshot_errors() ::
    operation_failure_exception() | 
    account_setup_in_progress_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type get_instance_snapshots_errors() ::
    operation_failure_exception() | 
    account_setup_in_progress_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type get_instance_state_errors() ::
    operation_failure_exception() | 
    account_setup_in_progress_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type get_instances_errors() ::
    operation_failure_exception() | 
    account_setup_in_progress_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type get_key_pair_errors() ::
    operation_failure_exception() | 
    account_setup_in_progress_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type get_key_pairs_errors() ::
    operation_failure_exception() | 
    account_setup_in_progress_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type get_load_balancer_errors() ::
    operation_failure_exception() | 
    account_setup_in_progress_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type get_load_balancer_metric_data_errors() ::
    operation_failure_exception() | 
    account_setup_in_progress_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type get_load_balancer_tls_certificates_errors() ::
    operation_failure_exception() | 
    account_setup_in_progress_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type get_load_balancer_tls_policies_errors() ::
    account_setup_in_progress_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type get_load_balancers_errors() ::
    operation_failure_exception() | 
    account_setup_in_progress_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type get_operation_errors() ::
    operation_failure_exception() | 
    account_setup_in_progress_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type get_operations_errors() ::
    operation_failure_exception() | 
    account_setup_in_progress_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type get_operations_for_resource_errors() ::
    operation_failure_exception() | 
    account_setup_in_progress_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type get_regions_errors() ::
    operation_failure_exception() | 
    account_setup_in_progress_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type get_relational_database_errors() ::
    operation_failure_exception() | 
    account_setup_in_progress_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type get_relational_database_blueprints_errors() ::
    operation_failure_exception() | 
    account_setup_in_progress_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type get_relational_database_bundles_errors() ::
    operation_failure_exception() | 
    account_setup_in_progress_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type get_relational_database_events_errors() ::
    operation_failure_exception() | 
    account_setup_in_progress_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type get_relational_database_log_events_errors() ::
    operation_failure_exception() | 
    account_setup_in_progress_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type get_relational_database_log_streams_errors() ::
    operation_failure_exception() | 
    account_setup_in_progress_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type get_relational_database_master_user_password_errors() ::
    operation_failure_exception() | 
    account_setup_in_progress_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type get_relational_database_metric_data_errors() ::
    operation_failure_exception() | 
    account_setup_in_progress_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type get_relational_database_parameters_errors() ::
    operation_failure_exception() | 
    account_setup_in_progress_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type get_relational_database_snapshot_errors() ::
    operation_failure_exception() | 
    account_setup_in_progress_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type get_relational_database_snapshots_errors() ::
    operation_failure_exception() | 
    account_setup_in_progress_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type get_relational_databases_errors() ::
    operation_failure_exception() | 
    account_setup_in_progress_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type get_setup_history_errors() ::
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type get_static_ip_errors() ::
    operation_failure_exception() | 
    account_setup_in_progress_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type get_static_ips_errors() ::
    operation_failure_exception() | 
    account_setup_in_progress_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type import_key_pair_errors() ::
    operation_failure_exception() | 
    account_setup_in_progress_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type is_vpc_peered_errors() ::
    operation_failure_exception() | 
    account_setup_in_progress_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type open_instance_public_ports_errors() ::
    operation_failure_exception() | 
    account_setup_in_progress_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type peer_vpc_errors() ::
    operation_failure_exception() | 
    account_setup_in_progress_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type put_alarm_errors() ::
    operation_failure_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type put_instance_public_ports_errors() ::
    operation_failure_exception() | 
    account_setup_in_progress_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type reboot_instance_errors() ::
    operation_failure_exception() | 
    account_setup_in_progress_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type reboot_relational_database_errors() ::
    operation_failure_exception() | 
    account_setup_in_progress_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type register_container_image_errors() ::
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type release_static_ip_errors() ::
    operation_failure_exception() | 
    account_setup_in_progress_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type reset_distribution_cache_errors() ::
    operation_failure_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception().

-type send_contact_method_verification_errors() ::
    operation_failure_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type set_ip_address_type_errors() ::
    operation_failure_exception() | 
    account_setup_in_progress_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type set_resource_access_for_bucket_errors() ::
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type setup_instance_https_errors() ::
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type start_g_ui_session_errors() ::
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type start_instance_errors() ::
    operation_failure_exception() | 
    account_setup_in_progress_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type start_relational_database_errors() ::
    operation_failure_exception() | 
    account_setup_in_progress_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type stop_g_ui_session_errors() ::
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type stop_instance_errors() ::
    operation_failure_exception() | 
    account_setup_in_progress_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type stop_relational_database_errors() ::
    operation_failure_exception() | 
    account_setup_in_progress_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type tag_resource_errors() ::
    operation_failure_exception() | 
    account_setup_in_progress_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type test_alarm_errors() ::
    operation_failure_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type unpeer_vpc_errors() ::
    operation_failure_exception() | 
    account_setup_in_progress_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type untag_resource_errors() ::
    operation_failure_exception() | 
    account_setup_in_progress_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type update_bucket_errors() ::
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type update_bucket_bundle_errors() ::
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type update_container_service_errors() ::
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type update_distribution_errors() ::
    operation_failure_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception().

-type update_distribution_bundle_errors() ::
    operation_failure_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception().

-type update_domain_entry_errors() ::
    operation_failure_exception() | 
    account_setup_in_progress_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type update_instance_metadata_options_errors() ::
    operation_failure_exception() | 
    account_setup_in_progress_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type update_load_balancer_attribute_errors() ::
    operation_failure_exception() | 
    account_setup_in_progress_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type update_relational_database_errors() ::
    operation_failure_exception() | 
    account_setup_in_progress_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

-type update_relational_database_parameters_errors() ::
    operation_failure_exception() | 
    account_setup_in_progress_exception() | 
    access_denied_exception() | 
    invalid_input_exception() | 
    service_exception() | 
    not_found_exception() | 
    unauthenticated_exception() | 
    region_setup_in_progress_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Allocates a static IP address.
-spec allocate_static_ip(aws_client:aws_client(), allocate_static_ip_request()) ->
    {ok, allocate_static_ip_result(), tuple()} |
    {error, any()} |
    {error, allocate_static_ip_errors(), tuple()}.
allocate_static_ip(Client, Input)
  when is_map(Client), is_map(Input) ->
    allocate_static_ip(Client, Input, []).

-spec allocate_static_ip(aws_client:aws_client(), allocate_static_ip_request(), proplists:proplist()) ->
    {ok, allocate_static_ip_result(), tuple()} |
    {error, any()} |
    {error, allocate_static_ip_errors(), tuple()}.
allocate_static_ip(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AllocateStaticIp">>, Input, Options).

%% @doc Attaches an SSL/TLS certificate to your Amazon Lightsail content
%% delivery network (CDN)
%% distribution.
%%
%% After the certificate is attached, your distribution accepts HTTPS traffic
%% for all of the
%% domains that are associated with the certificate.
%%
%% Use the `CreateCertificate' action to create a certificate that you
%% can attach
%% to your distribution.
%%
%% Only certificates created in the `us-east-1'
%% Amazon Web Services Region can be attached to Lightsail distributions.
%% Lightsail
%% distributions are global resources that can reference an origin in any
%% Amazon Web Services
%% Region, and distribute its content globally. However, all distributions
%% are located in the
%% `us-east-1' Region.
-spec attach_certificate_to_distribution(aws_client:aws_client(), attach_certificate_to_distribution_request()) ->
    {ok, attach_certificate_to_distribution_result(), tuple()} |
    {error, any()} |
    {error, attach_certificate_to_distribution_errors(), tuple()}.
attach_certificate_to_distribution(Client, Input)
  when is_map(Client), is_map(Input) ->
    attach_certificate_to_distribution(Client, Input, []).

-spec attach_certificate_to_distribution(aws_client:aws_client(), attach_certificate_to_distribution_request(), proplists:proplist()) ->
    {ok, attach_certificate_to_distribution_result(), tuple()} |
    {error, any()} |
    {error, attach_certificate_to_distribution_errors(), tuple()}.
attach_certificate_to_distribution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AttachCertificateToDistribution">>, Input, Options).

%% @doc Attaches a block storage disk to a running or stopped Lightsail
%% instance and exposes it
%% to the instance with the specified disk name.
%%
%% The `attach disk' operation supports tag-based access control via
%% resource tags
%% applied to the resource identified by `disk name'. For more
%% information, see the
%% Amazon Lightsail Developer Guide:
%% https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags.
-spec attach_disk(aws_client:aws_client(), attach_disk_request()) ->
    {ok, attach_disk_result(), tuple()} |
    {error, any()} |
    {error, attach_disk_errors(), tuple()}.
attach_disk(Client, Input)
  when is_map(Client), is_map(Input) ->
    attach_disk(Client, Input, []).

-spec attach_disk(aws_client:aws_client(), attach_disk_request(), proplists:proplist()) ->
    {ok, attach_disk_result(), tuple()} |
    {error, any()} |
    {error, attach_disk_errors(), tuple()}.
attach_disk(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AttachDisk">>, Input, Options).

%% @doc Attaches one or more Lightsail instances to a load balancer.
%%
%% After some time, the instances are attached to the load balancer and the
%% health check
%% status is available.
%%
%% The `attach instances to load balancer' operation supports tag-based
%% access
%% control via resource tags applied to the resource identified by
%% ```
%% load balancer name'''. For more information, see the Lightsail
%% Developer Guide:
%% https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags.
-spec attach_instances_to_load_balancer(aws_client:aws_client(), attach_instances_to_load_balancer_request()) ->
    {ok, attach_instances_to_load_balancer_result(), tuple()} |
    {error, any()} |
    {error, attach_instances_to_load_balancer_errors(), tuple()}.
attach_instances_to_load_balancer(Client, Input)
  when is_map(Client), is_map(Input) ->
    attach_instances_to_load_balancer(Client, Input, []).

-spec attach_instances_to_load_balancer(aws_client:aws_client(), attach_instances_to_load_balancer_request(), proplists:proplist()) ->
    {ok, attach_instances_to_load_balancer_result(), tuple()} |
    {error, any()} |
    {error, attach_instances_to_load_balancer_errors(), tuple()}.
attach_instances_to_load_balancer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AttachInstancesToLoadBalancer">>, Input, Options).

%% @doc Attaches a Transport Layer Security (TLS) certificate to your load
%% balancer.
%%
%% TLS is just
%% an updated, more secure version of Secure Socket Layer (SSL).
%%
%% Once you create and validate your certificate, you can attach it to your
%% load balancer.
%% You can also use this API to rotate the certificates on your account. Use
%% the
%% `AttachLoadBalancerTlsCertificate' action with the non-attached
%% certificate, and
%% it will replace the existing one and become the attached certificate.
%%
%% The `AttachLoadBalancerTlsCertificate' operation supports tag-based
%% access
%% control via resource tags applied to the resource identified by
%% ```
%% load balancer name'''. For more information, see the Amazon
%% Lightsail Developer Guide:
%% https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags.
-spec attach_load_balancer_tls_certificate(aws_client:aws_client(), attach_load_balancer_tls_certificate_request()) ->
    {ok, attach_load_balancer_tls_certificate_result(), tuple()} |
    {error, any()} |
    {error, attach_load_balancer_tls_certificate_errors(), tuple()}.
attach_load_balancer_tls_certificate(Client, Input)
  when is_map(Client), is_map(Input) ->
    attach_load_balancer_tls_certificate(Client, Input, []).

-spec attach_load_balancer_tls_certificate(aws_client:aws_client(), attach_load_balancer_tls_certificate_request(), proplists:proplist()) ->
    {ok, attach_load_balancer_tls_certificate_result(), tuple()} |
    {error, any()} |
    {error, attach_load_balancer_tls_certificate_errors(), tuple()}.
attach_load_balancer_tls_certificate(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AttachLoadBalancerTlsCertificate">>, Input, Options).

%% @doc Attaches a static IP address to a specific Amazon Lightsail instance.
-spec attach_static_ip(aws_client:aws_client(), attach_static_ip_request()) ->
    {ok, attach_static_ip_result(), tuple()} |
    {error, any()} |
    {error, attach_static_ip_errors(), tuple()}.
attach_static_ip(Client, Input)
  when is_map(Client), is_map(Input) ->
    attach_static_ip(Client, Input, []).

-spec attach_static_ip(aws_client:aws_client(), attach_static_ip_request(), proplists:proplist()) ->
    {ok, attach_static_ip_result(), tuple()} |
    {error, any()} |
    {error, attach_static_ip_errors(), tuple()}.
attach_static_ip(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AttachStaticIp">>, Input, Options).

%% @doc Closes ports for a specific Amazon Lightsail instance.
%%
%% The `CloseInstancePublicPorts' action supports tag-based access
%% control via
%% resource tags applied to the resource identified by `instanceName'.
%% For more
%% information, see the Amazon Lightsail Developer Guide:
%% https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags.
-spec close_instance_public_ports(aws_client:aws_client(), close_instance_public_ports_request()) ->
    {ok, close_instance_public_ports_result(), tuple()} |
    {error, any()} |
    {error, close_instance_public_ports_errors(), tuple()}.
close_instance_public_ports(Client, Input)
  when is_map(Client), is_map(Input) ->
    close_instance_public_ports(Client, Input, []).

-spec close_instance_public_ports(aws_client:aws_client(), close_instance_public_ports_request(), proplists:proplist()) ->
    {ok, close_instance_public_ports_result(), tuple()} |
    {error, any()} |
    {error, close_instance_public_ports_errors(), tuple()}.
close_instance_public_ports(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CloseInstancePublicPorts">>, Input, Options).

%% @doc Copies a manual snapshot of an instance or disk as another manual
%% snapshot, or copies an
%% automatic snapshot of an instance or disk as a manual snapshot.
%%
%% This operation can also be
%% used to copy a manual or automatic snapshot of an instance or a disk from
%% one Amazon Web Services Region to another in Amazon Lightsail.
%%
%% When copying a manual snapshot, be sure to define the
%% ```
%% source region''', `source snapshot name', and `target
%% snapshot name'
%% parameters.
%%
%% When copying an automatic snapshot, be sure to define the
%% `source region', `source resource name',
%% ```
%% target snapshot name''', and either the `restore date' or
%% the
%% ```
%% use latest restorable auto snapshot''' parameters.
-spec copy_snapshot(aws_client:aws_client(), copy_snapshot_request()) ->
    {ok, copy_snapshot_result(), tuple()} |
    {error, any()} |
    {error, copy_snapshot_errors(), tuple()}.
copy_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    copy_snapshot(Client, Input, []).

-spec copy_snapshot(aws_client:aws_client(), copy_snapshot_request(), proplists:proplist()) ->
    {ok, copy_snapshot_result(), tuple()} |
    {error, any()} |
    {error, copy_snapshot_errors(), tuple()}.
copy_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CopySnapshot">>, Input, Options).

%% @doc Creates an Amazon Lightsail bucket.
%%
%% A bucket is a cloud storage resource available in the Lightsail object
%% storage service.
%% Use buckets to store objects such as data and its descriptive metadata.
%% For more information
%% about buckets, see Buckets in Amazon Lightsail:
%% https://docs.aws.amazon.com/lightsail/latest/userguide/buckets-in-amazon-lightsail
%% in the Amazon Lightsail Developer
%% Guide.
-spec create_bucket(aws_client:aws_client(), create_bucket_request()) ->
    {ok, create_bucket_result(), tuple()} |
    {error, any()} |
    {error, create_bucket_errors(), tuple()}.
create_bucket(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_bucket(Client, Input, []).

-spec create_bucket(aws_client:aws_client(), create_bucket_request(), proplists:proplist()) ->
    {ok, create_bucket_result(), tuple()} |
    {error, any()} |
    {error, create_bucket_errors(), tuple()}.
create_bucket(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateBucket">>, Input, Options).

%% @doc Creates a new access key for the specified Amazon Lightsail bucket.
%%
%% Access keys consist of
%% an access key ID and corresponding secret access key.
%%
%% Access keys grant full programmatic access to the specified bucket and its
%% objects. You
%% can have a maximum of two access keys per bucket. Use the
%% GetBucketAccessKeys:
%% https://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_GetBucketAccessKeys.html
%% action to get a list of current access keys for a specific bucket. For
%% more
%% information about access keys, see Creating access keys for a bucket in
%% Amazon Lightsail:
%% https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-creating-bucket-access-keys
%% in the
%% Amazon Lightsail Developer Guide.
%%
%% The `secretAccessKey' value is returned only in response to the
%% `CreateBucketAccessKey' action. You can get a secret access key only
%% when you
%% first create an access key; you cannot get the secret access key later. If
%% you lose the
%% secret access key, you must create a new access key.
-spec create_bucket_access_key(aws_client:aws_client(), create_bucket_access_key_request()) ->
    {ok, create_bucket_access_key_result(), tuple()} |
    {error, any()} |
    {error, create_bucket_access_key_errors(), tuple()}.
create_bucket_access_key(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_bucket_access_key(Client, Input, []).

-spec create_bucket_access_key(aws_client:aws_client(), create_bucket_access_key_request(), proplists:proplist()) ->
    {ok, create_bucket_access_key_result(), tuple()} |
    {error, any()} |
    {error, create_bucket_access_key_errors(), tuple()}.
create_bucket_access_key(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateBucketAccessKey">>, Input, Options).

%% @doc Creates an SSL/TLS certificate for an Amazon Lightsail content
%% delivery network (CDN)
%% distribution and a container service.
%%
%% After the certificate is valid, use the
%% `AttachCertificateToDistribution'
%% action to use the certificate and its domains with your distribution. Or
%% use the
%% `UpdateContainerService' action to use the certificate and its domains
%% with your
%% container service.
%%
%% Only certificates created in the `us-east-1'
%% Amazon Web Services Region can be attached to Lightsail distributions.
%% Lightsail
%% distributions are global resources that can reference an origin in any
%% Amazon Web Services
%% Region, and distribute its content globally. However, all distributions
%% are located in the
%% `us-east-1' Region.
-spec create_certificate(aws_client:aws_client(), create_certificate_request()) ->
    {ok, create_certificate_result(), tuple()} |
    {error, any()} |
    {error, create_certificate_errors(), tuple()}.
create_certificate(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_certificate(Client, Input, []).

-spec create_certificate(aws_client:aws_client(), create_certificate_request(), proplists:proplist()) ->
    {ok, create_certificate_result(), tuple()} |
    {error, any()} |
    {error, create_certificate_errors(), tuple()}.
create_certificate(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateCertificate">>, Input, Options).

%% @doc Creates an AWS CloudFormation stack, which creates a new Amazon EC2
%% instance from an exported
%% Amazon Lightsail snapshot.
%%
%% This operation results in a CloudFormation stack record that can be
%% used to track the AWS CloudFormation stack created. Use the
%% ```
%% get cloud formation stack records''' operation to get a list
%% of the CloudFormation stacks created.
%%
%% Wait until after your new Amazon EC2 instance is created before running
%% the
%% ```
%% create cloud formation stack''' operation again with the same
%% export snapshot record.
-spec create_cloud_formation_stack(aws_client:aws_client(), create_cloud_formation_stack_request()) ->
    {ok, create_cloud_formation_stack_result(), tuple()} |
    {error, any()} |
    {error, create_cloud_formation_stack_errors(), tuple()}.
create_cloud_formation_stack(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_cloud_formation_stack(Client, Input, []).

-spec create_cloud_formation_stack(aws_client:aws_client(), create_cloud_formation_stack_request(), proplists:proplist()) ->
    {ok, create_cloud_formation_stack_result(), tuple()} |
    {error, any()} |
    {error, create_cloud_formation_stack_errors(), tuple()}.
create_cloud_formation_stack(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateCloudFormationStack">>, Input, Options).

%% @doc Creates an email or SMS text message contact method.
%%
%% A contact method is used to send you notifications about your Amazon
%% Lightsail resources.
%% You can add one email address and one mobile phone number contact method
%% in each Amazon Web Services Region. However, SMS text messaging is not
%% supported in some Amazon Web Services
%% Regions, and SMS text messages cannot be sent to some countries/regions.
%% For more information,
%% see Notifications in Amazon Lightsail:
%% https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-notifications.
-spec create_contact_method(aws_client:aws_client(), create_contact_method_request()) ->
    {ok, create_contact_method_result(), tuple()} |
    {error, any()} |
    {error, create_contact_method_errors(), tuple()}.
create_contact_method(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_contact_method(Client, Input, []).

-spec create_contact_method(aws_client:aws_client(), create_contact_method_request(), proplists:proplist()) ->
    {ok, create_contact_method_result(), tuple()} |
    {error, any()} |
    {error, create_contact_method_errors(), tuple()}.
create_contact_method(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateContactMethod">>, Input, Options).

%% @doc Creates an Amazon Lightsail container service.
%%
%% A Lightsail container service is a compute resource to which you can
%% deploy containers.
%% For more information, see Container services in Amazon Lightsail:
%% https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-container-services
%% in the Lightsail Dev
%% Guide.
-spec create_container_service(aws_client:aws_client(), create_container_service_request()) ->
    {ok, create_container_service_result(), tuple()} |
    {error, any()} |
    {error, create_container_service_errors(), tuple()}.
create_container_service(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_container_service(Client, Input, []).

-spec create_container_service(aws_client:aws_client(), create_container_service_request(), proplists:proplist()) ->
    {ok, create_container_service_result(), tuple()} |
    {error, any()} |
    {error, create_container_service_errors(), tuple()}.
create_container_service(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateContainerService">>, Input, Options).

%% @doc Creates a deployment for your Amazon Lightsail container service.
%%
%% A deployment specifies the containers that will be launched on the
%% container service and
%% their settings, such as the ports to open, the environment variables to
%% apply, and the launch
%% command to run. It also specifies the container that will serve as the
%% public endpoint of the
%% deployment and its settings, such as the HTTP or HTTPS port to use, and
%% the health check
%% configuration.
%%
%% You can deploy containers to your container service using container images
%% from a public
%% registry such as Amazon ECR Public, or from your local machine. For more
%% information, see
%% Creating container images for your Amazon Lightsail container services:
%% https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-creating-container-images
%% in the
%% Amazon Lightsail Developer Guide.
-spec create_container_service_deployment(aws_client:aws_client(), create_container_service_deployment_request()) ->
    {ok, create_container_service_deployment_result(), tuple()} |
    {error, any()} |
    {error, create_container_service_deployment_errors(), tuple()}.
create_container_service_deployment(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_container_service_deployment(Client, Input, []).

-spec create_container_service_deployment(aws_client:aws_client(), create_container_service_deployment_request(), proplists:proplist()) ->
    {ok, create_container_service_deployment_result(), tuple()} |
    {error, any()} |
    {error, create_container_service_deployment_errors(), tuple()}.
create_container_service_deployment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateContainerServiceDeployment">>, Input, Options).

%% @doc Creates a temporary set of log in credentials that you can use to log
%% in to the Docker
%% process on your local machine.
%%
%% After you're logged in, you can use the native Docker commands
%% to push your local container images to the container image registry of
%% your Amazon Lightsail
%% account so that you can use them with your Lightsail container service.
%% The log in
%% credentials expire 12 hours after they are created, at which point you
%% will need to create a
%% new set of log in credentials.
%%
%% You can only push container images to the container service registry of
%% your Lightsail
%% account. You cannot pull container images or perform any other container
%% image management
%% actions on the container service registry.
%%
%% After you push your container images to the container image registry of
%% your Lightsail
%% account, use the `RegisterContainerImage' action to register the
%% pushed images to a
%% specific Lightsail container service.
%%
%% This action is not required if you install and use the Lightsail Control
%% (lightsailctl) plugin to push container images to your Lightsail container
%% service. For
%% more information, see Pushing and managing container images on your Amazon
%% Lightsail container services:
%% https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-pushing-container-images
%% in the Amazon Lightsail Developer Guide.
-spec create_container_service_registry_login(aws_client:aws_client(), create_container_service_registry_login_request()) ->
    {ok, create_container_service_registry_login_result(), tuple()} |
    {error, any()} |
    {error, create_container_service_registry_login_errors(), tuple()}.
create_container_service_registry_login(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_container_service_registry_login(Client, Input, []).

-spec create_container_service_registry_login(aws_client:aws_client(), create_container_service_registry_login_request(), proplists:proplist()) ->
    {ok, create_container_service_registry_login_result(), tuple()} |
    {error, any()} |
    {error, create_container_service_registry_login_errors(), tuple()}.
create_container_service_registry_login(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateContainerServiceRegistryLogin">>, Input, Options).

%% @doc Creates a block storage disk that can be attached to an Amazon
%% Lightsail instance in the
%% same Availability Zone (`us-east-2a').
%%
%% The `create disk' operation supports tag-based access control via
%% request tags.
%% For more information, see the Amazon Lightsail Developer Guide:
%% https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags.
-spec create_disk(aws_client:aws_client(), create_disk_request()) ->
    {ok, create_disk_result(), tuple()} |
    {error, any()} |
    {error, create_disk_errors(), tuple()}.
create_disk(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_disk(Client, Input, []).

-spec create_disk(aws_client:aws_client(), create_disk_request(), proplists:proplist()) ->
    {ok, create_disk_result(), tuple()} |
    {error, any()} |
    {error, create_disk_errors(), tuple()}.
create_disk(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDisk">>, Input, Options).

%% @doc Creates a block storage disk from a manual or automatic snapshot of a
%% disk.
%%
%% The resulting
%% disk can be attached to an Amazon Lightsail instance in the same
%% Availability Zone
%% (`us-east-2a').
%%
%% The `create disk from snapshot' operation supports tag-based access
%% control via
%% request tags and resource tags applied to the resource identified by
%% ```
%% disk snapshot name'''. For more information, see the Amazon
%% Lightsail Developer Guide:
%% https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags.
-spec create_disk_from_snapshot(aws_client:aws_client(), create_disk_from_snapshot_request()) ->
    {ok, create_disk_from_snapshot_result(), tuple()} |
    {error, any()} |
    {error, create_disk_from_snapshot_errors(), tuple()}.
create_disk_from_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_disk_from_snapshot(Client, Input, []).

-spec create_disk_from_snapshot(aws_client:aws_client(), create_disk_from_snapshot_request(), proplists:proplist()) ->
    {ok, create_disk_from_snapshot_result(), tuple()} |
    {error, any()} |
    {error, create_disk_from_snapshot_errors(), tuple()}.
create_disk_from_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDiskFromSnapshot">>, Input, Options).

%% @doc Creates a snapshot of a block storage disk.
%%
%% You can use snapshots for backups, to make
%% copies of disks, and to save data before shutting down a Lightsail
%% instance.
%%
%% You can take a snapshot of an attached disk that is in use; however,
%% snapshots only
%% capture data that has been written to your disk at the time the snapshot
%% command is issued.
%% This may exclude any data that has been cached by any applications or the
%% operating system. If
%% you can pause any file systems on the disk long enough to take a snapshot,
%% your snapshot
%% should be complete. Nevertheless, if you cannot pause all file writes to
%% the disk, you should
%% unmount the disk from within the Lightsail instance, issue the create disk
%% snapshot command,
%% and then remount the disk to ensure a consistent and complete snapshot.
%% You may remount and
%% use your disk while the snapshot status is pending.
%%
%% You can also use this operation to create a snapshot of an instance's
%% system volume. You
%% might want to do this, for example, to recover data from the system volume
%% of a botched
%% instance or to create a backup of the system volume like you would for a
%% block storage disk.
%% To create a snapshot of a system volume, just define the `instance
%% name' parameter
%% when issuing the snapshot command, and a snapshot of the defined
%% instance's system volume will
%% be created. After the snapshot is available, you can create a block
%% storage disk from the
%% snapshot and attach it to a running instance to access the data on the
%% disk.
%%
%% The `create disk snapshot' operation supports tag-based access control
%% via
%% request tags. For more information, see the Amazon Lightsail Developer
%% Guide:
%% https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags.
-spec create_disk_snapshot(aws_client:aws_client(), create_disk_snapshot_request()) ->
    {ok, create_disk_snapshot_result(), tuple()} |
    {error, any()} |
    {error, create_disk_snapshot_errors(), tuple()}.
create_disk_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_disk_snapshot(Client, Input, []).

-spec create_disk_snapshot(aws_client:aws_client(), create_disk_snapshot_request(), proplists:proplist()) ->
    {ok, create_disk_snapshot_result(), tuple()} |
    {error, any()} |
    {error, create_disk_snapshot_errors(), tuple()}.
create_disk_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDiskSnapshot">>, Input, Options).

%% @doc Creates an Amazon Lightsail content delivery network (CDN)
%% distribution.
%%
%% A distribution is a globally distributed network of caching servers that
%% improve the
%% performance of your website or web application hosted on a Lightsail
%% instance. For more
%% information, see Content delivery networks in Amazon Lightsail:
%% https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-content-delivery-network-distributions.
-spec create_distribution(aws_client:aws_client(), create_distribution_request()) ->
    {ok, create_distribution_result(), tuple()} |
    {error, any()} |
    {error, create_distribution_errors(), tuple()}.
create_distribution(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_distribution(Client, Input, []).

-spec create_distribution(aws_client:aws_client(), create_distribution_request(), proplists:proplist()) ->
    {ok, create_distribution_result(), tuple()} |
    {error, any()} |
    {error, create_distribution_errors(), tuple()}.
create_distribution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDistribution">>, Input, Options).

%% @doc Creates a domain resource for the specified domain (example.com).
%%
%% The `create domain' operation supports tag-based access control via
%% request
%% tags. For more information, see the Amazon Lightsail Developer Guide:
%% https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags.
-spec create_domain(aws_client:aws_client(), create_domain_request()) ->
    {ok, create_domain_result(), tuple()} |
    {error, any()} |
    {error, create_domain_errors(), tuple()}.
create_domain(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_domain(Client, Input, []).

-spec create_domain(aws_client:aws_client(), create_domain_request(), proplists:proplist()) ->
    {ok, create_domain_result(), tuple()} |
    {error, any()} |
    {error, create_domain_errors(), tuple()}.
create_domain(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDomain">>, Input, Options).

%% @doc Creates one of the following domain name system (DNS) records in a
%% domain DNS zone:
%% Address (A), canonical name (CNAME), mail exchanger (MX), name server
%% (NS), start of authority
%% (SOA), service locator (SRV), or text (TXT).
%%
%% The `create domain entry' operation supports tag-based access control
%% via
%% resource tags applied to the resource identified by `domain name'. For
%% more
%% information, see the Amazon Lightsail Developer Guide:
%% https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags.
-spec create_domain_entry(aws_client:aws_client(), create_domain_entry_request()) ->
    {ok, create_domain_entry_result(), tuple()} |
    {error, any()} |
    {error, create_domain_entry_errors(), tuple()}.
create_domain_entry(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_domain_entry(Client, Input, []).

-spec create_domain_entry(aws_client:aws_client(), create_domain_entry_request(), proplists:proplist()) ->
    {ok, create_domain_entry_result(), tuple()} |
    {error, any()} |
    {error, create_domain_entry_errors(), tuple()}.
create_domain_entry(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDomainEntry">>, Input, Options).

%% @doc Creates two URLs that are used to access a virtual computer’s
%% graphical user interface
%% (GUI) session.
%%
%% The primary URL initiates a web-based Amazon DCV session to the virtual
%% computer's application. The secondary URL initiates a web-based Amazon
%% DCV session to the
%% virtual computer's operating session.
%%
%% Use `StartGUISession' to open the session.
-spec create_g_ui_session_access_details(aws_client:aws_client(), create_g_ui_session_access_details_request()) ->
    {ok, create_g_ui_session_access_details_result(), tuple()} |
    {error, any()} |
    {error, create_g_ui_session_access_details_errors(), tuple()}.
create_g_ui_session_access_details(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_g_ui_session_access_details(Client, Input, []).

-spec create_g_ui_session_access_details(aws_client:aws_client(), create_g_ui_session_access_details_request(), proplists:proplist()) ->
    {ok, create_g_ui_session_access_details_result(), tuple()} |
    {error, any()} |
    {error, create_g_ui_session_access_details_errors(), tuple()}.
create_g_ui_session_access_details(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateGUISessionAccessDetails">>, Input, Options).

%% @doc Creates a snapshot of a specific virtual private server, or instance.
%%
%% You can use a snapshot to create a new instance that is based on that
%% snapshot.
%%
%% The `create instance snapshot' operation supports tag-based access
%% control via
%% request tags. For more information, see the Amazon Lightsail Developer
%% Guide:
%% https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags.
-spec create_instance_snapshot(aws_client:aws_client(), create_instance_snapshot_request()) ->
    {ok, create_instance_snapshot_result(), tuple()} |
    {error, any()} |
    {error, create_instance_snapshot_errors(), tuple()}.
create_instance_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_instance_snapshot(Client, Input, []).

-spec create_instance_snapshot(aws_client:aws_client(), create_instance_snapshot_request(), proplists:proplist()) ->
    {ok, create_instance_snapshot_result(), tuple()} |
    {error, any()} |
    {error, create_instance_snapshot_errors(), tuple()}.
create_instance_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateInstanceSnapshot">>, Input, Options).

%% @doc Creates one or more Amazon Lightsail instances.
%%
%% The `create instances' operation supports tag-based access control via
%% request
%% tags. For more information, see the Lightsail Developer Guide:
%% https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags.
-spec create_instances(aws_client:aws_client(), create_instances_request()) ->
    {ok, create_instances_result(), tuple()} |
    {error, any()} |
    {error, create_instances_errors(), tuple()}.
create_instances(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_instances(Client, Input, []).

-spec create_instances(aws_client:aws_client(), create_instances_request(), proplists:proplist()) ->
    {ok, create_instances_result(), tuple()} |
    {error, any()} |
    {error, create_instances_errors(), tuple()}.
create_instances(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateInstances">>, Input, Options).

%% @doc Creates one or more new instances from a manual or automatic snapshot
%% of an
%% instance.
%%
%% The `create instances from snapshot' operation supports tag-based
%% access
%% control via request tags and resource tags applied to the resource
%% identified by
%% `instance snapshot name'. For more information, see the Amazon
%% Lightsail Developer Guide:
%% https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags.
-spec create_instances_from_snapshot(aws_client:aws_client(), create_instances_from_snapshot_request()) ->
    {ok, create_instances_from_snapshot_result(), tuple()} |
    {error, any()} |
    {error, create_instances_from_snapshot_errors(), tuple()}.
create_instances_from_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_instances_from_snapshot(Client, Input, []).

-spec create_instances_from_snapshot(aws_client:aws_client(), create_instances_from_snapshot_request(), proplists:proplist()) ->
    {ok, create_instances_from_snapshot_result(), tuple()} |
    {error, any()} |
    {error, create_instances_from_snapshot_errors(), tuple()}.
create_instances_from_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateInstancesFromSnapshot">>, Input, Options).

%% @doc Creates a custom SSH key pair that you can use with an Amazon
%% Lightsail
%% instance.
%%
%% Use the DownloadDefaultKeyPair:
%% https://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_DownloadDefaultKeyPair.html
%% action to create a Lightsail default key
%% pair in an Amazon Web Services Region where a default key pair does not
%% currently
%% exist.
%%
%% The `create key pair' operation supports tag-based access control via
%% request
%% tags. For more information, see the Amazon Lightsail Developer Guide:
%% https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags.
-spec create_key_pair(aws_client:aws_client(), create_key_pair_request()) ->
    {ok, create_key_pair_result(), tuple()} |
    {error, any()} |
    {error, create_key_pair_errors(), tuple()}.
create_key_pair(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_key_pair(Client, Input, []).

-spec create_key_pair(aws_client:aws_client(), create_key_pair_request(), proplists:proplist()) ->
    {ok, create_key_pair_result(), tuple()} |
    {error, any()} |
    {error, create_key_pair_errors(), tuple()}.
create_key_pair(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateKeyPair">>, Input, Options).

%% @doc Creates a Lightsail load balancer.
%%
%% To learn more about deciding whether to load balance
%% your application, see Configure your Lightsail instances for load
%% balancing:
%% https://docs.aws.amazon.com/lightsail/latest/userguide/configure-lightsail-instances-for-load-balancing.
%% You can create up to 5
%% load balancers per AWS Region in your account.
%%
%% When you create a load balancer, you can specify a unique name and port
%% settings. To
%% change additional load balancer settings, use the
%% `UpdateLoadBalancerAttribute'
%% operation.
%%
%% The `create load balancer' operation supports tag-based access control
%% via
%% request tags. For more information, see the Amazon Lightsail Developer
%% Guide:
%% https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags.
-spec create_load_balancer(aws_client:aws_client(), create_load_balancer_request()) ->
    {ok, create_load_balancer_result(), tuple()} |
    {error, any()} |
    {error, create_load_balancer_errors(), tuple()}.
create_load_balancer(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_load_balancer(Client, Input, []).

-spec create_load_balancer(aws_client:aws_client(), create_load_balancer_request(), proplists:proplist()) ->
    {ok, create_load_balancer_result(), tuple()} |
    {error, any()} |
    {error, create_load_balancer_errors(), tuple()}.
create_load_balancer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateLoadBalancer">>, Input, Options).

%% @doc Creates an SSL/TLS certificate for an Amazon Lightsail load balancer.
%%
%% TLS is just an updated, more secure version of Secure Socket Layer (SSL).
%%
%% The `CreateLoadBalancerTlsCertificate' operation supports tag-based
%% access
%% control via resource tags applied to the resource identified by
%% ```
%% load balancer name'''. For more information, see the Amazon
%% Lightsail Developer Guide:
%% https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags.
-spec create_load_balancer_tls_certificate(aws_client:aws_client(), create_load_balancer_tls_certificate_request()) ->
    {ok, create_load_balancer_tls_certificate_result(), tuple()} |
    {error, any()} |
    {error, create_load_balancer_tls_certificate_errors(), tuple()}.
create_load_balancer_tls_certificate(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_load_balancer_tls_certificate(Client, Input, []).

-spec create_load_balancer_tls_certificate(aws_client:aws_client(), create_load_balancer_tls_certificate_request(), proplists:proplist()) ->
    {ok, create_load_balancer_tls_certificate_result(), tuple()} |
    {error, any()} |
    {error, create_load_balancer_tls_certificate_errors(), tuple()}.
create_load_balancer_tls_certificate(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateLoadBalancerTlsCertificate">>, Input, Options).

%% @doc Creates a new database in Amazon Lightsail.
%%
%% The `create relational database' operation supports tag-based access
%% control
%% via request tags. For more information, see the Amazon Lightsail Developer
%% Guide:
%% https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags.
-spec create_relational_database(aws_client:aws_client(), create_relational_database_request()) ->
    {ok, create_relational_database_result(), tuple()} |
    {error, any()} |
    {error, create_relational_database_errors(), tuple()}.
create_relational_database(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_relational_database(Client, Input, []).

-spec create_relational_database(aws_client:aws_client(), create_relational_database_request(), proplists:proplist()) ->
    {ok, create_relational_database_result(), tuple()} |
    {error, any()} |
    {error, create_relational_database_errors(), tuple()}.
create_relational_database(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateRelationalDatabase">>, Input, Options).

%% @doc Creates a new database from an existing database snapshot in Amazon
%% Lightsail.
%%
%% You can create a new database from a snapshot in if something goes wrong
%% with your
%% original database, or to change it to a different plan, such as a high
%% availability or
%% standard plan.
%%
%% The `create relational database from snapshot' operation supports
%% tag-based
%% access control via request tags and resource tags applied to the resource
%% identified by
%% relationalDatabaseSnapshotName. For more information, see the Amazon
%% Lightsail Developer Guide:
%% https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags.
-spec create_relational_database_from_snapshot(aws_client:aws_client(), create_relational_database_from_snapshot_request()) ->
    {ok, create_relational_database_from_snapshot_result(), tuple()} |
    {error, any()} |
    {error, create_relational_database_from_snapshot_errors(), tuple()}.
create_relational_database_from_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_relational_database_from_snapshot(Client, Input, []).

-spec create_relational_database_from_snapshot(aws_client:aws_client(), create_relational_database_from_snapshot_request(), proplists:proplist()) ->
    {ok, create_relational_database_from_snapshot_result(), tuple()} |
    {error, any()} |
    {error, create_relational_database_from_snapshot_errors(), tuple()}.
create_relational_database_from_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateRelationalDatabaseFromSnapshot">>, Input, Options).

%% @doc Creates a snapshot of your database in Amazon Lightsail.
%%
%% You can use snapshots for backups,
%% to make copies of a database, and to save data before deleting a database.
%%
%% The `create relational database snapshot' operation supports tag-based
%% access
%% control via request tags. For more information, see the Amazon Lightsail
%% Developer Guide:
%% https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags.
-spec create_relational_database_snapshot(aws_client:aws_client(), create_relational_database_snapshot_request()) ->
    {ok, create_relational_database_snapshot_result(), tuple()} |
    {error, any()} |
    {error, create_relational_database_snapshot_errors(), tuple()}.
create_relational_database_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_relational_database_snapshot(Client, Input, []).

-spec create_relational_database_snapshot(aws_client:aws_client(), create_relational_database_snapshot_request(), proplists:proplist()) ->
    {ok, create_relational_database_snapshot_result(), tuple()} |
    {error, any()} |
    {error, create_relational_database_snapshot_errors(), tuple()}.
create_relational_database_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateRelationalDatabaseSnapshot">>, Input, Options).

%% @doc Deletes an alarm.
%%
%% An alarm is used to monitor a single metric for one of your resources.
%% When a metric
%% condition is met, the alarm can notify you by email, SMS text message, and
%% a banner displayed
%% on the Amazon Lightsail console. For more information, see Alarms
%% in Amazon Lightsail:
%% https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-alarms.
-spec delete_alarm(aws_client:aws_client(), delete_alarm_request()) ->
    {ok, delete_alarm_result(), tuple()} |
    {error, any()} |
    {error, delete_alarm_errors(), tuple()}.
delete_alarm(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_alarm(Client, Input, []).

-spec delete_alarm(aws_client:aws_client(), delete_alarm_request(), proplists:proplist()) ->
    {ok, delete_alarm_result(), tuple()} |
    {error, any()} |
    {error, delete_alarm_errors(), tuple()}.
delete_alarm(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAlarm">>, Input, Options).

%% @doc Deletes an automatic snapshot of an instance or disk.
%%
%% For more information, see the Amazon Lightsail Developer Guide:
%% https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-configuring-automatic-snapshots.
-spec delete_auto_snapshot(aws_client:aws_client(), delete_auto_snapshot_request()) ->
    {ok, delete_auto_snapshot_result(), tuple()} |
    {error, any()} |
    {error, delete_auto_snapshot_errors(), tuple()}.
delete_auto_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_auto_snapshot(Client, Input, []).

-spec delete_auto_snapshot(aws_client:aws_client(), delete_auto_snapshot_request(), proplists:proplist()) ->
    {ok, delete_auto_snapshot_result(), tuple()} |
    {error, any()} |
    {error, delete_auto_snapshot_errors(), tuple()}.
delete_auto_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAutoSnapshot">>, Input, Options).

%% @doc Deletes a Amazon Lightsail bucket.
%%
%% When you delete your bucket, the bucket name is released and can be reused
%% for a new
%% bucket in your account or another Amazon Web Services account.
-spec delete_bucket(aws_client:aws_client(), delete_bucket_request()) ->
    {ok, delete_bucket_result(), tuple()} |
    {error, any()} |
    {error, delete_bucket_errors(), tuple()}.
delete_bucket(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_bucket(Client, Input, []).

-spec delete_bucket(aws_client:aws_client(), delete_bucket_request(), proplists:proplist()) ->
    {ok, delete_bucket_result(), tuple()} |
    {error, any()} |
    {error, delete_bucket_errors(), tuple()}.
delete_bucket(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteBucket">>, Input, Options).

%% @doc Deletes an access key for the specified Amazon Lightsail bucket.
%%
%% We recommend that you delete an access key if the secret access key is
%% compromised.
%%
%% For more information about access keys, see Creating access keys for a
%% bucket in Amazon Lightsail:
%% https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-creating-bucket-access-keys
%% in the
%% Amazon Lightsail Developer Guide.
-spec delete_bucket_access_key(aws_client:aws_client(), delete_bucket_access_key_request()) ->
    {ok, delete_bucket_access_key_result(), tuple()} |
    {error, any()} |
    {error, delete_bucket_access_key_errors(), tuple()}.
delete_bucket_access_key(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_bucket_access_key(Client, Input, []).

-spec delete_bucket_access_key(aws_client:aws_client(), delete_bucket_access_key_request(), proplists:proplist()) ->
    {ok, delete_bucket_access_key_result(), tuple()} |
    {error, any()} |
    {error, delete_bucket_access_key_errors(), tuple()}.
delete_bucket_access_key(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteBucketAccessKey">>, Input, Options).

%% @doc Deletes an SSL/TLS certificate for your Amazon Lightsail content
%% delivery network (CDN)
%% distribution.
%%
%% Certificates that are currently attached to a distribution cannot be
%% deleted. Use the
%% `DetachCertificateFromDistribution' action to detach a certificate
%% from a
%% distribution.
-spec delete_certificate(aws_client:aws_client(), delete_certificate_request()) ->
    {ok, delete_certificate_result(), tuple()} |
    {error, any()} |
    {error, delete_certificate_errors(), tuple()}.
delete_certificate(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_certificate(Client, Input, []).

-spec delete_certificate(aws_client:aws_client(), delete_certificate_request(), proplists:proplist()) ->
    {ok, delete_certificate_result(), tuple()} |
    {error, any()} |
    {error, delete_certificate_errors(), tuple()}.
delete_certificate(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteCertificate">>, Input, Options).

%% @doc Deletes a contact method.
%%
%% A contact method is used to send you notifications about your Amazon
%% Lightsail resources.
%% You can add one email address and one mobile phone number contact method
%% in each Amazon Web Services Region. However, SMS text messaging is not
%% supported in some Amazon Web Services
%% Regions, and SMS text messages cannot be sent to some countries/regions.
%% For more information,
%% see Notifications in Amazon Lightsail:
%% https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-notifications.
-spec delete_contact_method(aws_client:aws_client(), delete_contact_method_request()) ->
    {ok, delete_contact_method_result(), tuple()} |
    {error, any()} |
    {error, delete_contact_method_errors(), tuple()}.
delete_contact_method(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_contact_method(Client, Input, []).

-spec delete_contact_method(aws_client:aws_client(), delete_contact_method_request(), proplists:proplist()) ->
    {ok, delete_contact_method_result(), tuple()} |
    {error, any()} |
    {error, delete_contact_method_errors(), tuple()}.
delete_contact_method(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteContactMethod">>, Input, Options).

%% @doc Deletes a container image that is registered to your Amazon Lightsail
%% container
%% service.
-spec delete_container_image(aws_client:aws_client(), delete_container_image_request()) ->
    {ok, delete_container_image_result(), tuple()} |
    {error, any()} |
    {error, delete_container_image_errors(), tuple()}.
delete_container_image(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_container_image(Client, Input, []).

-spec delete_container_image(aws_client:aws_client(), delete_container_image_request(), proplists:proplist()) ->
    {ok, delete_container_image_result(), tuple()} |
    {error, any()} |
    {error, delete_container_image_errors(), tuple()}.
delete_container_image(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteContainerImage">>, Input, Options).

%% @doc Deletes your Amazon Lightsail container service.
-spec delete_container_service(aws_client:aws_client(), delete_container_service_request()) ->
    {ok, delete_container_service_result(), tuple()} |
    {error, any()} |
    {error, delete_container_service_errors(), tuple()}.
delete_container_service(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_container_service(Client, Input, []).

-spec delete_container_service(aws_client:aws_client(), delete_container_service_request(), proplists:proplist()) ->
    {ok, delete_container_service_result(), tuple()} |
    {error, any()} |
    {error, delete_container_service_errors(), tuple()}.
delete_container_service(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteContainerService">>, Input, Options).

%% @doc Deletes the specified block storage disk.
%%
%% The disk must be in the `available'
%% state (not attached to a Lightsail instance).
%%
%% The disk may remain in the `deleting' state for several minutes.
%%
%% The `delete disk' operation supports tag-based access control via
%% resource tags
%% applied to the resource identified by `disk name'. For more
%% information, see the
%% Amazon Lightsail Developer Guide:
%% https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags.
-spec delete_disk(aws_client:aws_client(), delete_disk_request()) ->
    {ok, delete_disk_result(), tuple()} |
    {error, any()} |
    {error, delete_disk_errors(), tuple()}.
delete_disk(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_disk(Client, Input, []).

-spec delete_disk(aws_client:aws_client(), delete_disk_request(), proplists:proplist()) ->
    {ok, delete_disk_result(), tuple()} |
    {error, any()} |
    {error, delete_disk_errors(), tuple()}.
delete_disk(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDisk">>, Input, Options).

%% @doc Deletes the specified disk snapshot.
%%
%% When you make periodic snapshots of a disk, the snapshots are incremental,
%% and only the
%% blocks on the device that have changed since your last snapshot are saved
%% in the new snapshot.
%% When you delete a snapshot, only the data not needed for any other
%% snapshot is removed. So
%% regardless of which prior snapshots have been deleted, all active
%% snapshots will have access
%% to all the information needed to restore the disk.
%%
%% The `delete disk snapshot' operation supports tag-based access control
%% via
%% resource tags applied to the resource identified by `disk snapshot
%% name'. For more
%% information, see the Amazon Lightsail Developer Guide:
%% https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags.
-spec delete_disk_snapshot(aws_client:aws_client(), delete_disk_snapshot_request()) ->
    {ok, delete_disk_snapshot_result(), tuple()} |
    {error, any()} |
    {error, delete_disk_snapshot_errors(), tuple()}.
delete_disk_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_disk_snapshot(Client, Input, []).

-spec delete_disk_snapshot(aws_client:aws_client(), delete_disk_snapshot_request(), proplists:proplist()) ->
    {ok, delete_disk_snapshot_result(), tuple()} |
    {error, any()} |
    {error, delete_disk_snapshot_errors(), tuple()}.
delete_disk_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDiskSnapshot">>, Input, Options).

%% @doc Deletes your Amazon Lightsail content delivery network (CDN)
%% distribution.
-spec delete_distribution(aws_client:aws_client(), delete_distribution_request()) ->
    {ok, delete_distribution_result(), tuple()} |
    {error, any()} |
    {error, delete_distribution_errors(), tuple()}.
delete_distribution(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_distribution(Client, Input, []).

-spec delete_distribution(aws_client:aws_client(), delete_distribution_request(), proplists:proplist()) ->
    {ok, delete_distribution_result(), tuple()} |
    {error, any()} |
    {error, delete_distribution_errors(), tuple()}.
delete_distribution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDistribution">>, Input, Options).

%% @doc Deletes the specified domain recordset and all of its domain records.
%%
%% The `delete domain' operation supports tag-based access control via
%% resource
%% tags applied to the resource identified by `domain name'. For more
%% information, see
%% the Amazon Lightsail Developer Guide:
%% https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags.
-spec delete_domain(aws_client:aws_client(), delete_domain_request()) ->
    {ok, delete_domain_result(), tuple()} |
    {error, any()} |
    {error, delete_domain_errors(), tuple()}.
delete_domain(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_domain(Client, Input, []).

-spec delete_domain(aws_client:aws_client(), delete_domain_request(), proplists:proplist()) ->
    {ok, delete_domain_result(), tuple()} |
    {error, any()} |
    {error, delete_domain_errors(), tuple()}.
delete_domain(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDomain">>, Input, Options).

%% @doc Deletes a specific domain entry.
%%
%% The `delete domain entry' operation supports tag-based access control
%% via
%% resource tags applied to the resource identified by `domain name'. For
%% more
%% information, see the Amazon Lightsail Developer Guide:
%% https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags.
-spec delete_domain_entry(aws_client:aws_client(), delete_domain_entry_request()) ->
    {ok, delete_domain_entry_result(), tuple()} |
    {error, any()} |
    {error, delete_domain_entry_errors(), tuple()}.
delete_domain_entry(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_domain_entry(Client, Input, []).

-spec delete_domain_entry(aws_client:aws_client(), delete_domain_entry_request(), proplists:proplist()) ->
    {ok, delete_domain_entry_result(), tuple()} |
    {error, any()} |
    {error, delete_domain_entry_errors(), tuple()}.
delete_domain_entry(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDomainEntry">>, Input, Options).

%% @doc Deletes an Amazon Lightsail instance.
%%
%% The `delete instance' operation supports tag-based access control via
%% resource
%% tags applied to the resource identified by `instance name'. For more
%% information,
%% see the Amazon Lightsail Developer Guide:
%% https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags.
-spec delete_instance(aws_client:aws_client(), delete_instance_request()) ->
    {ok, delete_instance_result(), tuple()} |
    {error, any()} |
    {error, delete_instance_errors(), tuple()}.
delete_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_instance(Client, Input, []).

-spec delete_instance(aws_client:aws_client(), delete_instance_request(), proplists:proplist()) ->
    {ok, delete_instance_result(), tuple()} |
    {error, any()} |
    {error, delete_instance_errors(), tuple()}.
delete_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteInstance">>, Input, Options).

%% @doc Deletes a specific snapshot of a virtual private server (or
%% instance).
%%
%% The `delete instance snapshot' operation supports tag-based access
%% control via
%% resource tags applied to the resource identified by `instance snapshot
%% name'. For
%% more information, see the Amazon Lightsail Developer Guide:
%% https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags.
-spec delete_instance_snapshot(aws_client:aws_client(), delete_instance_snapshot_request()) ->
    {ok, delete_instance_snapshot_result(), tuple()} |
    {error, any()} |
    {error, delete_instance_snapshot_errors(), tuple()}.
delete_instance_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_instance_snapshot(Client, Input, []).

-spec delete_instance_snapshot(aws_client:aws_client(), delete_instance_snapshot_request(), proplists:proplist()) ->
    {ok, delete_instance_snapshot_result(), tuple()} |
    {error, any()} |
    {error, delete_instance_snapshot_errors(), tuple()}.
delete_instance_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteInstanceSnapshot">>, Input, Options).

%% @doc Deletes the specified key pair by removing the public key from Amazon
%% Lightsail.
%%
%% You can delete key pairs that were created using the ImportKeyPair:
%% https://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_ImportKeyPair.html
%% and
%% CreateKeyPair:
%% https://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_CreateKeyPair.html
%% actions, as well as the Lightsail default key pair. A new default
%% key pair will not be created unless you launch an instance without
%% specifying a custom key
%% pair, or you call the DownloadDefaultKeyPair:
%% https://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_DownloadDefaultKeyPair.html
%% API.
%%
%% The `delete key pair' operation supports tag-based access control via
%% resource
%% tags applied to the resource identified by `key pair name'. For more
%% information,
%% see the Amazon Lightsail Developer Guide:
%% https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags.
-spec delete_key_pair(aws_client:aws_client(), delete_key_pair_request()) ->
    {ok, delete_key_pair_result(), tuple()} |
    {error, any()} |
    {error, delete_key_pair_errors(), tuple()}.
delete_key_pair(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_key_pair(Client, Input, []).

-spec delete_key_pair(aws_client:aws_client(), delete_key_pair_request(), proplists:proplist()) ->
    {ok, delete_key_pair_result(), tuple()} |
    {error, any()} |
    {error, delete_key_pair_errors(), tuple()}.
delete_key_pair(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteKeyPair">>, Input, Options).

%% @doc Deletes the known host key or certificate used by the Amazon
%% Lightsail browser-based SSH or
%% RDP clients to authenticate an instance.
%%
%% This operation enables the Lightsail browser-based
%% SSH or RDP clients to connect to the instance after a host key mismatch.
%%
%% Perform this operation only if you were expecting the host key or
%% certificate mismatch
%% or if you are familiar with the new host key or certificate on the
%% instance. For more
%% information, see Troubleshooting connection issues when using the Amazon
%% Lightsail browser-based SSH or RDP
%% client:
%% https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-troubleshooting-browser-based-ssh-rdp-client-connection.
-spec delete_known_host_keys(aws_client:aws_client(), delete_known_host_keys_request()) ->
    {ok, delete_known_host_keys_result(), tuple()} |
    {error, any()} |
    {error, delete_known_host_keys_errors(), tuple()}.
delete_known_host_keys(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_known_host_keys(Client, Input, []).

-spec delete_known_host_keys(aws_client:aws_client(), delete_known_host_keys_request(), proplists:proplist()) ->
    {ok, delete_known_host_keys_result(), tuple()} |
    {error, any()} |
    {error, delete_known_host_keys_errors(), tuple()}.
delete_known_host_keys(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteKnownHostKeys">>, Input, Options).

%% @doc Deletes a Lightsail load balancer and all its associated SSL/TLS
%% certificates.
%%
%% Once the
%% load balancer is deleted, you will need to create a new load balancer,
%% create a new
%% certificate, and verify domain ownership again.
%%
%% The `delete load balancer' operation supports tag-based access control
%% via
%% resource tags applied to the resource identified by `load balancer
%% name'. For more
%% information, see the Amazon Lightsail Developer Guide:
%% https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags.
-spec delete_load_balancer(aws_client:aws_client(), delete_load_balancer_request()) ->
    {ok, delete_load_balancer_result(), tuple()} |
    {error, any()} |
    {error, delete_load_balancer_errors(), tuple()}.
delete_load_balancer(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_load_balancer(Client, Input, []).

-spec delete_load_balancer(aws_client:aws_client(), delete_load_balancer_request(), proplists:proplist()) ->
    {ok, delete_load_balancer_result(), tuple()} |
    {error, any()} |
    {error, delete_load_balancer_errors(), tuple()}.
delete_load_balancer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteLoadBalancer">>, Input, Options).

%% @doc Deletes an SSL/TLS certificate associated with a Lightsail load
%% balancer.
%%
%% The `DeleteLoadBalancerTlsCertificate' operation supports tag-based
%% access
%% control via resource tags applied to the resource identified by
%% ```
%% load balancer name'''. For more information, see the Amazon
%% Lightsail Developer Guide:
%% https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags.
-spec delete_load_balancer_tls_certificate(aws_client:aws_client(), delete_load_balancer_tls_certificate_request()) ->
    {ok, delete_load_balancer_tls_certificate_result(), tuple()} |
    {error, any()} |
    {error, delete_load_balancer_tls_certificate_errors(), tuple()}.
delete_load_balancer_tls_certificate(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_load_balancer_tls_certificate(Client, Input, []).

-spec delete_load_balancer_tls_certificate(aws_client:aws_client(), delete_load_balancer_tls_certificate_request(), proplists:proplist()) ->
    {ok, delete_load_balancer_tls_certificate_result(), tuple()} |
    {error, any()} |
    {error, delete_load_balancer_tls_certificate_errors(), tuple()}.
delete_load_balancer_tls_certificate(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteLoadBalancerTlsCertificate">>, Input, Options).

%% @doc Deletes a database in Amazon Lightsail.
%%
%% The `delete relational database' operation supports tag-based access
%% control
%% via resource tags applied to the resource identified by
%% relationalDatabaseName. For more
%% information, see the Amazon Lightsail Developer Guide:
%% https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags.
-spec delete_relational_database(aws_client:aws_client(), delete_relational_database_request()) ->
    {ok, delete_relational_database_result(), tuple()} |
    {error, any()} |
    {error, delete_relational_database_errors(), tuple()}.
delete_relational_database(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_relational_database(Client, Input, []).

-spec delete_relational_database(aws_client:aws_client(), delete_relational_database_request(), proplists:proplist()) ->
    {ok, delete_relational_database_result(), tuple()} |
    {error, any()} |
    {error, delete_relational_database_errors(), tuple()}.
delete_relational_database(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteRelationalDatabase">>, Input, Options).

%% @doc Deletes a database snapshot in Amazon Lightsail.
%%
%% The `delete relational database snapshot' operation supports tag-based
%% access
%% control via resource tags applied to the resource identified by
%% relationalDatabaseName. For
%% more information, see the Amazon Lightsail Developer Guide:
%% https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags.
-spec delete_relational_database_snapshot(aws_client:aws_client(), delete_relational_database_snapshot_request()) ->
    {ok, delete_relational_database_snapshot_result(), tuple()} |
    {error, any()} |
    {error, delete_relational_database_snapshot_errors(), tuple()}.
delete_relational_database_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_relational_database_snapshot(Client, Input, []).

-spec delete_relational_database_snapshot(aws_client:aws_client(), delete_relational_database_snapshot_request(), proplists:proplist()) ->
    {ok, delete_relational_database_snapshot_result(), tuple()} |
    {error, any()} |
    {error, delete_relational_database_snapshot_errors(), tuple()}.
delete_relational_database_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteRelationalDatabaseSnapshot">>, Input, Options).

%% @doc Detaches an SSL/TLS certificate from your Amazon Lightsail content
%% delivery network (CDN)
%% distribution.
%%
%% After the certificate is detached, your distribution stops accepting
%% traffic for all of
%% the domains that are associated with the certificate.
-spec detach_certificate_from_distribution(aws_client:aws_client(), detach_certificate_from_distribution_request()) ->
    {ok, detach_certificate_from_distribution_result(), tuple()} |
    {error, any()} |
    {error, detach_certificate_from_distribution_errors(), tuple()}.
detach_certificate_from_distribution(Client, Input)
  when is_map(Client), is_map(Input) ->
    detach_certificate_from_distribution(Client, Input, []).

-spec detach_certificate_from_distribution(aws_client:aws_client(), detach_certificate_from_distribution_request(), proplists:proplist()) ->
    {ok, detach_certificate_from_distribution_result(), tuple()} |
    {error, any()} |
    {error, detach_certificate_from_distribution_errors(), tuple()}.
detach_certificate_from_distribution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DetachCertificateFromDistribution">>, Input, Options).

%% @doc Detaches a stopped block storage disk from a Lightsail instance.
%%
%% Make sure to unmount
%% any file systems on the device within your operating system before
%% stopping the instance and
%% detaching the disk.
%%
%% The `detach disk' operation supports tag-based access control via
%% resource tags
%% applied to the resource identified by `disk name'. For more
%% information, see the
%% Amazon Lightsail Developer Guide:
%% https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags.
-spec detach_disk(aws_client:aws_client(), detach_disk_request()) ->
    {ok, detach_disk_result(), tuple()} |
    {error, any()} |
    {error, detach_disk_errors(), tuple()}.
detach_disk(Client, Input)
  when is_map(Client), is_map(Input) ->
    detach_disk(Client, Input, []).

-spec detach_disk(aws_client:aws_client(), detach_disk_request(), proplists:proplist()) ->
    {ok, detach_disk_result(), tuple()} |
    {error, any()} |
    {error, detach_disk_errors(), tuple()}.
detach_disk(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DetachDisk">>, Input, Options).

%% @doc Detaches the specified instances from a Lightsail load balancer.
%%
%% This operation waits until the instances are no longer needed before they
%% are detached
%% from the load balancer.
%%
%% The `detach instances from load balancer' operation supports tag-based
%% access
%% control via resource tags applied to the resource identified by
%% ```
%% load balancer name'''. For more information, see the Amazon
%% Lightsail Developer Guide:
%% https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags.
-spec detach_instances_from_load_balancer(aws_client:aws_client(), detach_instances_from_load_balancer_request()) ->
    {ok, detach_instances_from_load_balancer_result(), tuple()} |
    {error, any()} |
    {error, detach_instances_from_load_balancer_errors(), tuple()}.
detach_instances_from_load_balancer(Client, Input)
  when is_map(Client), is_map(Input) ->
    detach_instances_from_load_balancer(Client, Input, []).

-spec detach_instances_from_load_balancer(aws_client:aws_client(), detach_instances_from_load_balancer_request(), proplists:proplist()) ->
    {ok, detach_instances_from_load_balancer_result(), tuple()} |
    {error, any()} |
    {error, detach_instances_from_load_balancer_errors(), tuple()}.
detach_instances_from_load_balancer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DetachInstancesFromLoadBalancer">>, Input, Options).

%% @doc Detaches a static IP from the Amazon Lightsail instance to which it
%% is attached.
-spec detach_static_ip(aws_client:aws_client(), detach_static_ip_request()) ->
    {ok, detach_static_ip_result(), tuple()} |
    {error, any()} |
    {error, detach_static_ip_errors(), tuple()}.
detach_static_ip(Client, Input)
  when is_map(Client), is_map(Input) ->
    detach_static_ip(Client, Input, []).

-spec detach_static_ip(aws_client:aws_client(), detach_static_ip_request(), proplists:proplist()) ->
    {ok, detach_static_ip_result(), tuple()} |
    {error, any()} |
    {error, detach_static_ip_errors(), tuple()}.
detach_static_ip(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DetachStaticIp">>, Input, Options).

%% @doc Disables an add-on for an Amazon Lightsail resource.
%%
%% For more information, see the Amazon Lightsail Developer Guide:
%% https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-configuring-automatic-snapshots.
-spec disable_add_on(aws_client:aws_client(), disable_add_on_request()) ->
    {ok, disable_add_on_result(), tuple()} |
    {error, any()} |
    {error, disable_add_on_errors(), tuple()}.
disable_add_on(Client, Input)
  when is_map(Client), is_map(Input) ->
    disable_add_on(Client, Input, []).

-spec disable_add_on(aws_client:aws_client(), disable_add_on_request(), proplists:proplist()) ->
    {ok, disable_add_on_result(), tuple()} |
    {error, any()} |
    {error, disable_add_on_errors(), tuple()}.
disable_add_on(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisableAddOn">>, Input, Options).

%% @doc Downloads the regional Amazon Lightsail default key pair.
%%
%% This action also creates a Lightsail default key pair if a default key
%% pair
%% does not currently exist in the Amazon Web Services Region.
-spec download_default_key_pair(aws_client:aws_client(), download_default_key_pair_request()) ->
    {ok, download_default_key_pair_result(), tuple()} |
    {error, any()} |
    {error, download_default_key_pair_errors(), tuple()}.
download_default_key_pair(Client, Input)
  when is_map(Client), is_map(Input) ->
    download_default_key_pair(Client, Input, []).

-spec download_default_key_pair(aws_client:aws_client(), download_default_key_pair_request(), proplists:proplist()) ->
    {ok, download_default_key_pair_result(), tuple()} |
    {error, any()} |
    {error, download_default_key_pair_errors(), tuple()}.
download_default_key_pair(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DownloadDefaultKeyPair">>, Input, Options).

%% @doc Enables or modifies an add-on for an Amazon Lightsail resource.
%%
%% For more information, see
%% the Amazon Lightsail Developer Guide:
%% https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-configuring-automatic-snapshots.
-spec enable_add_on(aws_client:aws_client(), enable_add_on_request()) ->
    {ok, enable_add_on_result(), tuple()} |
    {error, any()} |
    {error, enable_add_on_errors(), tuple()}.
enable_add_on(Client, Input)
  when is_map(Client), is_map(Input) ->
    enable_add_on(Client, Input, []).

-spec enable_add_on(aws_client:aws_client(), enable_add_on_request(), proplists:proplist()) ->
    {ok, enable_add_on_result(), tuple()} |
    {error, any()} |
    {error, enable_add_on_errors(), tuple()}.
enable_add_on(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"EnableAddOn">>, Input, Options).

%% @doc Exports an Amazon Lightsail instance or block storage disk snapshot
%% to Amazon Elastic Compute Cloud (Amazon EC2).
%%
%% This operation results in an export snapshot record that can be used with
%% the
%% ```
%% create cloud formation stack''' operation to create new Amazon
%% EC2 instances.
%%
%% Exported instance snapshots appear in Amazon EC2 as Amazon Machine Images
%% (AMIs), and the
%% instance system disk appears as an Amazon Elastic Block Store (Amazon EBS)
%% volume. Exported disk snapshots appear in
%% Amazon EC2 as Amazon EBS volumes. Snapshots are exported to the same
%% Amazon Web Services Region in
%% Amazon EC2 as the source Lightsail snapshot.
%%
%% The `export snapshot' operation supports tag-based access control via
%% resource
%% tags applied to the resource identified by `source snapshot name'. For
%% more
%% information, see the Amazon Lightsail Developer Guide:
%% https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags.
%%
%% Use the `get instance snapshots' or `get disk snapshots'
%% operations to get a list of snapshots that you can export to Amazon EC2.
-spec export_snapshot(aws_client:aws_client(), export_snapshot_request()) ->
    {ok, export_snapshot_result(), tuple()} |
    {error, any()} |
    {error, export_snapshot_errors(), tuple()}.
export_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    export_snapshot(Client, Input, []).

-spec export_snapshot(aws_client:aws_client(), export_snapshot_request(), proplists:proplist()) ->
    {ok, export_snapshot_result(), tuple()} |
    {error, any()} |
    {error, export_snapshot_errors(), tuple()}.
export_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ExportSnapshot">>, Input, Options).

%% @doc Returns the names of all active (not deleted) resources.
-spec get_active_names(aws_client:aws_client(), get_active_names_request()) ->
    {ok, get_active_names_result(), tuple()} |
    {error, any()} |
    {error, get_active_names_errors(), tuple()}.
get_active_names(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_active_names(Client, Input, []).

-spec get_active_names(aws_client:aws_client(), get_active_names_request(), proplists:proplist()) ->
    {ok, get_active_names_result(), tuple()} |
    {error, any()} |
    {error, get_active_names_errors(), tuple()}.
get_active_names(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetActiveNames">>, Input, Options).

%% @doc Returns information about the configured alarms.
%%
%% Specify an alarm name in your request to
%% return information about a specific alarm, or specify a monitored resource
%% name to return
%% information about all alarms for a specific resource.
%%
%% An alarm is used to monitor a single metric for one of your resources.
%% When a metric
%% condition is met, the alarm can notify you by email, SMS text message, and
%% a banner displayed
%% on the Amazon Lightsail console. For more information, see Alarms
%% in Amazon Lightsail:
%% https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-alarms.
-spec get_alarms(aws_client:aws_client(), get_alarms_request()) ->
    {ok, get_alarms_result(), tuple()} |
    {error, any()} |
    {error, get_alarms_errors(), tuple()}.
get_alarms(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_alarms(Client, Input, []).

-spec get_alarms(aws_client:aws_client(), get_alarms_request(), proplists:proplist()) ->
    {ok, get_alarms_result(), tuple()} |
    {error, any()} |
    {error, get_alarms_errors(), tuple()}.
get_alarms(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAlarms">>, Input, Options).

%% @doc Returns the available automatic snapshots for an instance or disk.
%%
%% For more information,
%% see the Amazon Lightsail Developer Guide:
%% https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-configuring-automatic-snapshots.
-spec get_auto_snapshots(aws_client:aws_client(), get_auto_snapshots_request()) ->
    {ok, get_auto_snapshots_result(), tuple()} |
    {error, any()} |
    {error, get_auto_snapshots_errors(), tuple()}.
get_auto_snapshots(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_auto_snapshots(Client, Input, []).

-spec get_auto_snapshots(aws_client:aws_client(), get_auto_snapshots_request(), proplists:proplist()) ->
    {ok, get_auto_snapshots_result(), tuple()} |
    {error, any()} |
    {error, get_auto_snapshots_errors(), tuple()}.
get_auto_snapshots(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAutoSnapshots">>, Input, Options).

%% @doc Returns the list of available instance images, or blueprints.
%%
%% You can
%% use a blueprint to create a new instance already running a specific
%% operating system, as well
%% as a preinstalled app or development stack. The software each instance is
%% running depends on
%% the blueprint image you choose.
%%
%% Use active blueprints when creating new instances. Inactive blueprints are
%% listed to
%% support customers with existing instances and are not necessarily
%% available to create new
%% instances. Blueprints are marked inactive when they become outdated due to
%% operating system
%% updates or new application releases.
-spec get_blueprints(aws_client:aws_client(), get_blueprints_request()) ->
    {ok, get_blueprints_result(), tuple()} |
    {error, any()} |
    {error, get_blueprints_errors(), tuple()}.
get_blueprints(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_blueprints(Client, Input, []).

-spec get_blueprints(aws_client:aws_client(), get_blueprints_request(), proplists:proplist()) ->
    {ok, get_blueprints_result(), tuple()} |
    {error, any()} |
    {error, get_blueprints_errors(), tuple()}.
get_blueprints(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetBlueprints">>, Input, Options).

%% @doc Returns the existing access key IDs for the specified Amazon
%% Lightsail bucket.
%%
%% This action does not return the secret access key value of an access key.
%% You can get a
%% secret access key only when you create it from the response of the
%% CreateBucketAccessKey:
%% https://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_CreateBucketAccessKey.html
%% action. If you lose the secret access key, you must create
%% a new access key.
-spec get_bucket_access_keys(aws_client:aws_client(), get_bucket_access_keys_request()) ->
    {ok, get_bucket_access_keys_result(), tuple()} |
    {error, any()} |
    {error, get_bucket_access_keys_errors(), tuple()}.
get_bucket_access_keys(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_bucket_access_keys(Client, Input, []).

-spec get_bucket_access_keys(aws_client:aws_client(), get_bucket_access_keys_request(), proplists:proplist()) ->
    {ok, get_bucket_access_keys_result(), tuple()} |
    {error, any()} |
    {error, get_bucket_access_keys_errors(), tuple()}.
get_bucket_access_keys(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetBucketAccessKeys">>, Input, Options).

%% @doc Returns the bundles that you can apply to a Amazon Lightsail bucket.
%%
%% The bucket bundle specifies the monthly cost, storage quota, and data
%% transfer quota for a
%% bucket.
%%
%% Use the UpdateBucketBundle:
%% https://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_UpdateBucketBundle.html
%% action to update the
%% bundle for a bucket.
-spec get_bucket_bundles(aws_client:aws_client(), get_bucket_bundles_request()) ->
    {ok, get_bucket_bundles_result(), tuple()} |
    {error, any()} |
    {error, get_bucket_bundles_errors(), tuple()}.
get_bucket_bundles(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_bucket_bundles(Client, Input, []).

-spec get_bucket_bundles(aws_client:aws_client(), get_bucket_bundles_request(), proplists:proplist()) ->
    {ok, get_bucket_bundles_result(), tuple()} |
    {error, any()} |
    {error, get_bucket_bundles_errors(), tuple()}.
get_bucket_bundles(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetBucketBundles">>, Input, Options).

%% @doc Returns the data points of a specific metric for an Amazon Lightsail
%% bucket.
%%
%% Metrics report the utilization of a bucket. View and collect metric data
%% regularly to
%% monitor the number of objects stored in a bucket (including object
%% versions) and the storage
%% space used by those objects.
-spec get_bucket_metric_data(aws_client:aws_client(), get_bucket_metric_data_request()) ->
    {ok, get_bucket_metric_data_result(), tuple()} |
    {error, any()} |
    {error, get_bucket_metric_data_errors(), tuple()}.
get_bucket_metric_data(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_bucket_metric_data(Client, Input, []).

-spec get_bucket_metric_data(aws_client:aws_client(), get_bucket_metric_data_request(), proplists:proplist()) ->
    {ok, get_bucket_metric_data_result(), tuple()} |
    {error, any()} |
    {error, get_bucket_metric_data_errors(), tuple()}.
get_bucket_metric_data(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetBucketMetricData">>, Input, Options).

%% @doc Returns information about one or more Amazon Lightsail buckets.
%%
%% The information returned
%% includes the synchronization status of the Amazon Simple Storage Service
%% (Amazon S3)
%% account-level block public access feature for your Lightsail buckets.
%%
%% For more information about buckets, see Buckets in Amazon Lightsail:
%% https://docs.aws.amazon.com/lightsail/latest/userguide/buckets-in-amazon-lightsail
%% in the Amazon Lightsail Developer
%% Guide.
-spec get_buckets(aws_client:aws_client(), get_buckets_request()) ->
    {ok, get_buckets_result(), tuple()} |
    {error, any()} |
    {error, get_buckets_errors(), tuple()}.
get_buckets(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_buckets(Client, Input, []).

-spec get_buckets(aws_client:aws_client(), get_buckets_request(), proplists:proplist()) ->
    {ok, get_buckets_result(), tuple()} |
    {error, any()} |
    {error, get_buckets_errors(), tuple()}.
get_buckets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetBuckets">>, Input, Options).

%% @doc Returns the bundles that you can apply to an Amazon Lightsail
%% instance when you create
%% it.
%%
%% A bundle describes the specifications of an instance, such as the monthly
%% cost, amount of
%% memory, the number of vCPUs, amount of storage space, and monthly network
%% data transfer
%% quota.
%%
%% Bundles are referred to as instance plans in the Lightsail
%% console.
-spec get_bundles(aws_client:aws_client(), get_bundles_request()) ->
    {ok, get_bundles_result(), tuple()} |
    {error, any()} |
    {error, get_bundles_errors(), tuple()}.
get_bundles(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_bundles(Client, Input, []).

-spec get_bundles(aws_client:aws_client(), get_bundles_request(), proplists:proplist()) ->
    {ok, get_bundles_result(), tuple()} |
    {error, any()} |
    {error, get_bundles_errors(), tuple()}.
get_bundles(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetBundles">>, Input, Options).

%% @doc Returns information about one or more Amazon Lightsail SSL/TLS
%% certificates.
%%
%% To get a summary of a certificate, omit `includeCertificateDetails'
%% from your
%% request. The response will include only the certificate Amazon Resource
%% Name (ARN),
%% certificate name, domain name, and tags.
-spec get_certificates(aws_client:aws_client(), get_certificates_request()) ->
    {ok, get_certificates_result(), tuple()} |
    {error, any()} |
    {error, get_certificates_errors(), tuple()}.
get_certificates(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_certificates(Client, Input, []).

-spec get_certificates(aws_client:aws_client(), get_certificates_request(), proplists:proplist()) ->
    {ok, get_certificates_result(), tuple()} |
    {error, any()} |
    {error, get_certificates_errors(), tuple()}.
get_certificates(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetCertificates">>, Input, Options).

%% @doc Returns the CloudFormation stack record created as a result of the
%% ```
%% create cloud formation stack''' operation.
%%
%% An AWS CloudFormation stack is used to create a new Amazon EC2 instance
%% from an exported Lightsail
%% snapshot.
-spec get_cloud_formation_stack_records(aws_client:aws_client(), get_cloud_formation_stack_records_request()) ->
    {ok, get_cloud_formation_stack_records_result(), tuple()} |
    {error, any()} |
    {error, get_cloud_formation_stack_records_errors(), tuple()}.
get_cloud_formation_stack_records(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_cloud_formation_stack_records(Client, Input, []).

-spec get_cloud_formation_stack_records(aws_client:aws_client(), get_cloud_formation_stack_records_request(), proplists:proplist()) ->
    {ok, get_cloud_formation_stack_records_result(), tuple()} |
    {error, any()} |
    {error, get_cloud_formation_stack_records_errors(), tuple()}.
get_cloud_formation_stack_records(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetCloudFormationStackRecords">>, Input, Options).

%% @doc Returns information about the configured contact methods.
%%
%% Specify a protocol in your
%% request to return information about a specific contact method.
%%
%% A contact method is used to send you notifications about your Amazon
%% Lightsail resources.
%% You can add one email address and one mobile phone number contact method
%% in each Amazon Web Services Region. However, SMS text messaging is not
%% supported in some Amazon Web Services
%% Regions, and SMS text messages cannot be sent to some countries/regions.
%% For more information,
%% see Notifications in Amazon Lightsail:
%% https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-notifications.
-spec get_contact_methods(aws_client:aws_client(), get_contact_methods_request()) ->
    {ok, get_contact_methods_result(), tuple()} |
    {error, any()} |
    {error, get_contact_methods_errors(), tuple()}.
get_contact_methods(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_contact_methods(Client, Input, []).

-spec get_contact_methods(aws_client:aws_client(), get_contact_methods_request(), proplists:proplist()) ->
    {ok, get_contact_methods_result(), tuple()} |
    {error, any()} |
    {error, get_contact_methods_errors(), tuple()}.
get_contact_methods(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetContactMethods">>, Input, Options).

%% @doc Returns information about Amazon Lightsail containers, such as the
%% current version of the
%% Lightsail Control (lightsailctl) plugin.
-spec get_container_api_metadata(aws_client:aws_client(), get_container_api_metadata_request()) ->
    {ok, get_container_api_metadata_result(), tuple()} |
    {error, any()} |
    {error, get_container_api_metadata_errors(), tuple()}.
get_container_api_metadata(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_container_api_metadata(Client, Input, []).

-spec get_container_api_metadata(aws_client:aws_client(), get_container_api_metadata_request(), proplists:proplist()) ->
    {ok, get_container_api_metadata_result(), tuple()} |
    {error, any()} |
    {error, get_container_api_metadata_errors(), tuple()}.
get_container_api_metadata(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetContainerAPIMetadata">>, Input, Options).

%% @doc Returns the container images that are registered to your Amazon
%% Lightsail container
%% service.
%%
%% If you created a deployment on your Lightsail container service that uses
%% container
%% images from a public registry like Docker Hub, those images are not
%% returned as part of this
%% action. Those images are not registered to your Lightsail container
%% service.
-spec get_container_images(aws_client:aws_client(), get_container_images_request()) ->
    {ok, get_container_images_result(), tuple()} |
    {error, any()} |
    {error, get_container_images_errors(), tuple()}.
get_container_images(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_container_images(Client, Input, []).

-spec get_container_images(aws_client:aws_client(), get_container_images_request(), proplists:proplist()) ->
    {ok, get_container_images_result(), tuple()} |
    {error, any()} |
    {error, get_container_images_errors(), tuple()}.
get_container_images(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetContainerImages">>, Input, Options).

%% @doc Returns the log events of a container of your Amazon Lightsail
%% container service.
%%
%% If your container service has more than one node (i.e., a scale greater
%% than 1), then the
%% log events that are returned for the specified container are merged from
%% all nodes on your
%% container service.
%%
%% Container logs are retained for a certain amount of time. For more
%% information, see
%% Amazon Lightsail
%% endpoints and quotas:
%% https://docs.aws.amazon.com/general/latest/gr/lightsail.html in the Amazon
%% Web Services General
%% Reference.
-spec get_container_log(aws_client:aws_client(), get_container_log_request()) ->
    {ok, get_container_log_result(), tuple()} |
    {error, any()} |
    {error, get_container_log_errors(), tuple()}.
get_container_log(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_container_log(Client, Input, []).

-spec get_container_log(aws_client:aws_client(), get_container_log_request(), proplists:proplist()) ->
    {ok, get_container_log_result(), tuple()} |
    {error, any()} |
    {error, get_container_log_errors(), tuple()}.
get_container_log(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetContainerLog">>, Input, Options).

%% @doc Returns the deployments for your Amazon Lightsail container service
%%
%% A deployment specifies the settings, such as the ports and launch command,
%% of containers
%% that are deployed to your container service.
%%
%% The deployments are ordered by version in ascending order. The newest
%% version is listed at
%% the top of the response.
%%
%% A set number of deployments are kept before the oldest one is replaced
%% with the newest
%% one. For more information, see Amazon Lightsail
%% endpoints and quotas:
%% https://docs.aws.amazon.com/general/latest/gr/lightsail.html in the Amazon
%% Web Services General
%% Reference.
-spec get_container_service_deployments(aws_client:aws_client(), get_container_service_deployments_request()) ->
    {ok, get_container_service_deployments_result(), tuple()} |
    {error, any()} |
    {error, get_container_service_deployments_errors(), tuple()}.
get_container_service_deployments(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_container_service_deployments(Client, Input, []).

-spec get_container_service_deployments(aws_client:aws_client(), get_container_service_deployments_request(), proplists:proplist()) ->
    {ok, get_container_service_deployments_result(), tuple()} |
    {error, any()} |
    {error, get_container_service_deployments_errors(), tuple()}.
get_container_service_deployments(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetContainerServiceDeployments">>, Input, Options).

%% @doc Returns the data points of a specific metric of your Amazon Lightsail
%% container
%% service.
%%
%% Metrics report the utilization of your resources. Monitor and collect
%% metric data
%% regularly to maintain the reliability, availability, and performance of
%% your resources.
-spec get_container_service_metric_data(aws_client:aws_client(), get_container_service_metric_data_request()) ->
    {ok, get_container_service_metric_data_result(), tuple()} |
    {error, any()} |
    {error, get_container_service_metric_data_errors(), tuple()}.
get_container_service_metric_data(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_container_service_metric_data(Client, Input, []).

-spec get_container_service_metric_data(aws_client:aws_client(), get_container_service_metric_data_request(), proplists:proplist()) ->
    {ok, get_container_service_metric_data_result(), tuple()} |
    {error, any()} |
    {error, get_container_service_metric_data_errors(), tuple()}.
get_container_service_metric_data(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetContainerServiceMetricData">>, Input, Options).

%% @doc Returns the list of powers that can be specified for your Amazon
%% Lightsail container
%% services.
%%
%% The power specifies the amount of memory, the number of vCPUs, and the
%% base price of the
%% container service.
-spec get_container_service_powers(aws_client:aws_client(), get_container_service_powers_request()) ->
    {ok, get_container_service_powers_result(), tuple()} |
    {error, any()} |
    {error, get_container_service_powers_errors(), tuple()}.
get_container_service_powers(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_container_service_powers(Client, Input, []).

-spec get_container_service_powers(aws_client:aws_client(), get_container_service_powers_request(), proplists:proplist()) ->
    {ok, get_container_service_powers_result(), tuple()} |
    {error, any()} |
    {error, get_container_service_powers_errors(), tuple()}.
get_container_service_powers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetContainerServicePowers">>, Input, Options).

%% @doc Returns information about one or more of your Amazon Lightsail
%% container services.
-spec get_container_services(aws_client:aws_client(), get_container_services_request()) ->
    {ok, container_services_list_result(), tuple()} |
    {error, any()} |
    {error, get_container_services_errors(), tuple()}.
get_container_services(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_container_services(Client, Input, []).

-spec get_container_services(aws_client:aws_client(), get_container_services_request(), proplists:proplist()) ->
    {ok, container_services_list_result(), tuple()} |
    {error, any()} |
    {error, get_container_services_errors(), tuple()}.
get_container_services(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetContainerServices">>, Input, Options).

%% @doc Retrieves information about the cost estimate for a specified
%% resource.
%%
%% A cost estimate
%% will not generate for a resource that has been deleted.
-spec get_cost_estimate(aws_client:aws_client(), get_cost_estimate_request()) ->
    {ok, get_cost_estimate_result(), tuple()} |
    {error, any()} |
    {error, get_cost_estimate_errors(), tuple()}.
get_cost_estimate(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_cost_estimate(Client, Input, []).

-spec get_cost_estimate(aws_client:aws_client(), get_cost_estimate_request(), proplists:proplist()) ->
    {ok, get_cost_estimate_result(), tuple()} |
    {error, any()} |
    {error, get_cost_estimate_errors(), tuple()}.
get_cost_estimate(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetCostEstimate">>, Input, Options).

%% @doc Returns information about a specific block storage disk.
-spec get_disk(aws_client:aws_client(), get_disk_request()) ->
    {ok, get_disk_result(), tuple()} |
    {error, any()} |
    {error, get_disk_errors(), tuple()}.
get_disk(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_disk(Client, Input, []).

-spec get_disk(aws_client:aws_client(), get_disk_request(), proplists:proplist()) ->
    {ok, get_disk_result(), tuple()} |
    {error, any()} |
    {error, get_disk_errors(), tuple()}.
get_disk(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDisk">>, Input, Options).

%% @doc Returns information about a specific block storage disk snapshot.
-spec get_disk_snapshot(aws_client:aws_client(), get_disk_snapshot_request()) ->
    {ok, get_disk_snapshot_result(), tuple()} |
    {error, any()} |
    {error, get_disk_snapshot_errors(), tuple()}.
get_disk_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_disk_snapshot(Client, Input, []).

-spec get_disk_snapshot(aws_client:aws_client(), get_disk_snapshot_request(), proplists:proplist()) ->
    {ok, get_disk_snapshot_result(), tuple()} |
    {error, any()} |
    {error, get_disk_snapshot_errors(), tuple()}.
get_disk_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDiskSnapshot">>, Input, Options).

%% @doc Returns information about all block storage disk snapshots in your
%% AWS account and
%% region.
-spec get_disk_snapshots(aws_client:aws_client(), get_disk_snapshots_request()) ->
    {ok, get_disk_snapshots_result(), tuple()} |
    {error, any()} |
    {error, get_disk_snapshots_errors(), tuple()}.
get_disk_snapshots(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_disk_snapshots(Client, Input, []).

-spec get_disk_snapshots(aws_client:aws_client(), get_disk_snapshots_request(), proplists:proplist()) ->
    {ok, get_disk_snapshots_result(), tuple()} |
    {error, any()} |
    {error, get_disk_snapshots_errors(), tuple()}.
get_disk_snapshots(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDiskSnapshots">>, Input, Options).

%% @doc Returns information about all block storage disks in your AWS account
%% and region.
-spec get_disks(aws_client:aws_client(), get_disks_request()) ->
    {ok, get_disks_result(), tuple()} |
    {error, any()} |
    {error, get_disks_errors(), tuple()}.
get_disks(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_disks(Client, Input, []).

-spec get_disks(aws_client:aws_client(), get_disks_request(), proplists:proplist()) ->
    {ok, get_disks_result(), tuple()} |
    {error, any()} |
    {error, get_disks_errors(), tuple()}.
get_disks(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDisks">>, Input, Options).

%% @doc Returns the bundles that can be applied to your Amazon Lightsail
%% content delivery network
%% (CDN) distributions.
%%
%% A distribution bundle specifies the monthly network transfer quota and
%% monthly cost of
%% your distribution.
-spec get_distribution_bundles(aws_client:aws_client(), get_distribution_bundles_request()) ->
    {ok, get_distribution_bundles_result(), tuple()} |
    {error, any()} |
    {error, get_distribution_bundles_errors(), tuple()}.
get_distribution_bundles(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_distribution_bundles(Client, Input, []).

-spec get_distribution_bundles(aws_client:aws_client(), get_distribution_bundles_request(), proplists:proplist()) ->
    {ok, get_distribution_bundles_result(), tuple()} |
    {error, any()} |
    {error, get_distribution_bundles_errors(), tuple()}.
get_distribution_bundles(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDistributionBundles">>, Input, Options).

%% @doc Returns the timestamp and status of the last cache reset of a
%% specific Amazon Lightsail
%% content delivery network (CDN) distribution.
-spec get_distribution_latest_cache_reset(aws_client:aws_client(), get_distribution_latest_cache_reset_request()) ->
    {ok, get_distribution_latest_cache_reset_result(), tuple()} |
    {error, any()} |
    {error, get_distribution_latest_cache_reset_errors(), tuple()}.
get_distribution_latest_cache_reset(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_distribution_latest_cache_reset(Client, Input, []).

-spec get_distribution_latest_cache_reset(aws_client:aws_client(), get_distribution_latest_cache_reset_request(), proplists:proplist()) ->
    {ok, get_distribution_latest_cache_reset_result(), tuple()} |
    {error, any()} |
    {error, get_distribution_latest_cache_reset_errors(), tuple()}.
get_distribution_latest_cache_reset(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDistributionLatestCacheReset">>, Input, Options).

%% @doc Returns the data points of a specific metric for an Amazon Lightsail
%% content delivery
%% network (CDN) distribution.
%%
%% Metrics report the utilization of your resources, and the error counts
%% generated by them.
%% Monitor and collect metric data regularly to maintain the reliability,
%% availability, and
%% performance of your resources.
-spec get_distribution_metric_data(aws_client:aws_client(), get_distribution_metric_data_request()) ->
    {ok, get_distribution_metric_data_result(), tuple()} |
    {error, any()} |
    {error, get_distribution_metric_data_errors(), tuple()}.
get_distribution_metric_data(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_distribution_metric_data(Client, Input, []).

-spec get_distribution_metric_data(aws_client:aws_client(), get_distribution_metric_data_request(), proplists:proplist()) ->
    {ok, get_distribution_metric_data_result(), tuple()} |
    {error, any()} |
    {error, get_distribution_metric_data_errors(), tuple()}.
get_distribution_metric_data(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDistributionMetricData">>, Input, Options).

%% @doc Returns information about one or more of your Amazon Lightsail
%% content delivery network
%% (CDN) distributions.
-spec get_distributions(aws_client:aws_client(), get_distributions_request()) ->
    {ok, get_distributions_result(), tuple()} |
    {error, any()} |
    {error, get_distributions_errors(), tuple()}.
get_distributions(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_distributions(Client, Input, []).

-spec get_distributions(aws_client:aws_client(), get_distributions_request(), proplists:proplist()) ->
    {ok, get_distributions_result(), tuple()} |
    {error, any()} |
    {error, get_distributions_errors(), tuple()}.
get_distributions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDistributions">>, Input, Options).

%% @doc Returns information about a specific domain recordset.
-spec get_domain(aws_client:aws_client(), get_domain_request()) ->
    {ok, get_domain_result(), tuple()} |
    {error, any()} |
    {error, get_domain_errors(), tuple()}.
get_domain(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_domain(Client, Input, []).

-spec get_domain(aws_client:aws_client(), get_domain_request(), proplists:proplist()) ->
    {ok, get_domain_result(), tuple()} |
    {error, any()} |
    {error, get_domain_errors(), tuple()}.
get_domain(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDomain">>, Input, Options).

%% @doc Returns a list of all domains in the user's account.
-spec get_domains(aws_client:aws_client(), get_domains_request()) ->
    {ok, get_domains_result(), tuple()} |
    {error, any()} |
    {error, get_domains_errors(), tuple()}.
get_domains(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_domains(Client, Input, []).

-spec get_domains(aws_client:aws_client(), get_domains_request(), proplists:proplist()) ->
    {ok, get_domains_result(), tuple()} |
    {error, any()} |
    {error, get_domains_errors(), tuple()}.
get_domains(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDomains">>, Input, Options).

%% @doc Returns all export snapshot records created as a result of the
%% ```
%% export snapshot''' operation.
%%
%% An export snapshot record can be used to create a new Amazon EC2 instance
%% and its related
%% resources with the CreateCloudFormationStack:
%% https://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_CreateCloudFormationStack.html
%% action.
-spec get_export_snapshot_records(aws_client:aws_client(), get_export_snapshot_records_request()) ->
    {ok, get_export_snapshot_records_result(), tuple()} |
    {error, any()} |
    {error, get_export_snapshot_records_errors(), tuple()}.
get_export_snapshot_records(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_export_snapshot_records(Client, Input, []).

-spec get_export_snapshot_records(aws_client:aws_client(), get_export_snapshot_records_request(), proplists:proplist()) ->
    {ok, get_export_snapshot_records_result(), tuple()} |
    {error, any()} |
    {error, get_export_snapshot_records_errors(), tuple()}.
get_export_snapshot_records(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetExportSnapshotRecords">>, Input, Options).

%% @doc Returns information about a specific Amazon Lightsail instance, which
%% is a virtual private
%% server.
-spec get_instance(aws_client:aws_client(), get_instance_request()) ->
    {ok, get_instance_result(), tuple()} |
    {error, any()} |
    {error, get_instance_errors(), tuple()}.
get_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_instance(Client, Input, []).

-spec get_instance(aws_client:aws_client(), get_instance_request(), proplists:proplist()) ->
    {ok, get_instance_result(), tuple()} |
    {error, any()} |
    {error, get_instance_errors(), tuple()}.
get_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetInstance">>, Input, Options).

%% @doc Returns temporary SSH keys you can use to connect to a specific
%% virtual private server, or
%% instance.
%%
%% The `get instance access details' operation supports tag-based access
%% control
%% via resource tags applied to the resource identified by `instance
%% name'. For more
%% information, see the Amazon Lightsail Developer Guide:
%% https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags.
-spec get_instance_access_details(aws_client:aws_client(), get_instance_access_details_request()) ->
    {ok, get_instance_access_details_result(), tuple()} |
    {error, any()} |
    {error, get_instance_access_details_errors(), tuple()}.
get_instance_access_details(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_instance_access_details(Client, Input, []).

-spec get_instance_access_details(aws_client:aws_client(), get_instance_access_details_request(), proplists:proplist()) ->
    {ok, get_instance_access_details_result(), tuple()} |
    {error, any()} |
    {error, get_instance_access_details_errors(), tuple()}.
get_instance_access_details(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetInstanceAccessDetails">>, Input, Options).

%% @doc Returns the data points for the specified Amazon Lightsail instance
%% metric, given an
%% instance name.
%%
%% Metrics report the utilization of your resources, and the error counts
%% generated by them.
%% Monitor and collect metric data regularly to maintain the reliability,
%% availability, and
%% performance of your resources.
-spec get_instance_metric_data(aws_client:aws_client(), get_instance_metric_data_request()) ->
    {ok, get_instance_metric_data_result(), tuple()} |
    {error, any()} |
    {error, get_instance_metric_data_errors(), tuple()}.
get_instance_metric_data(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_instance_metric_data(Client, Input, []).

-spec get_instance_metric_data(aws_client:aws_client(), get_instance_metric_data_request(), proplists:proplist()) ->
    {ok, get_instance_metric_data_result(), tuple()} |
    {error, any()} |
    {error, get_instance_metric_data_errors(), tuple()}.
get_instance_metric_data(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetInstanceMetricData">>, Input, Options).

%% @doc Returns the firewall port states for a specific Amazon Lightsail
%% instance, the IP addresses
%% allowed to connect to the instance through the ports, and the protocol.
-spec get_instance_port_states(aws_client:aws_client(), get_instance_port_states_request()) ->
    {ok, get_instance_port_states_result(), tuple()} |
    {error, any()} |
    {error, get_instance_port_states_errors(), tuple()}.
get_instance_port_states(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_instance_port_states(Client, Input, []).

-spec get_instance_port_states(aws_client:aws_client(), get_instance_port_states_request(), proplists:proplist()) ->
    {ok, get_instance_port_states_result(), tuple()} |
    {error, any()} |
    {error, get_instance_port_states_errors(), tuple()}.
get_instance_port_states(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetInstancePortStates">>, Input, Options).

%% @doc Returns information about a specific instance snapshot.
-spec get_instance_snapshot(aws_client:aws_client(), get_instance_snapshot_request()) ->
    {ok, get_instance_snapshot_result(), tuple()} |
    {error, any()} |
    {error, get_instance_snapshot_errors(), tuple()}.
get_instance_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_instance_snapshot(Client, Input, []).

-spec get_instance_snapshot(aws_client:aws_client(), get_instance_snapshot_request(), proplists:proplist()) ->
    {ok, get_instance_snapshot_result(), tuple()} |
    {error, any()} |
    {error, get_instance_snapshot_errors(), tuple()}.
get_instance_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetInstanceSnapshot">>, Input, Options).

%% @doc Returns all instance snapshots for the user's account.
-spec get_instance_snapshots(aws_client:aws_client(), get_instance_snapshots_request()) ->
    {ok, get_instance_snapshots_result(), tuple()} |
    {error, any()} |
    {error, get_instance_snapshots_errors(), tuple()}.
get_instance_snapshots(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_instance_snapshots(Client, Input, []).

-spec get_instance_snapshots(aws_client:aws_client(), get_instance_snapshots_request(), proplists:proplist()) ->
    {ok, get_instance_snapshots_result(), tuple()} |
    {error, any()} |
    {error, get_instance_snapshots_errors(), tuple()}.
get_instance_snapshots(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetInstanceSnapshots">>, Input, Options).

%% @doc Returns the state of a specific instance.
%%
%% Works on one instance at a time.
-spec get_instance_state(aws_client:aws_client(), get_instance_state_request()) ->
    {ok, get_instance_state_result(), tuple()} |
    {error, any()} |
    {error, get_instance_state_errors(), tuple()}.
get_instance_state(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_instance_state(Client, Input, []).

-spec get_instance_state(aws_client:aws_client(), get_instance_state_request(), proplists:proplist()) ->
    {ok, get_instance_state_result(), tuple()} |
    {error, any()} |
    {error, get_instance_state_errors(), tuple()}.
get_instance_state(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetInstanceState">>, Input, Options).

%% @doc Returns information about all Amazon Lightsail virtual private
%% servers, or
%% instances.
-spec get_instances(aws_client:aws_client(), get_instances_request()) ->
    {ok, get_instances_result(), tuple()} |
    {error, any()} |
    {error, get_instances_errors(), tuple()}.
get_instances(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_instances(Client, Input, []).

-spec get_instances(aws_client:aws_client(), get_instances_request(), proplists:proplist()) ->
    {ok, get_instances_result(), tuple()} |
    {error, any()} |
    {error, get_instances_errors(), tuple()}.
get_instances(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetInstances">>, Input, Options).

%% @doc Returns information about a specific key pair.
-spec get_key_pair(aws_client:aws_client(), get_key_pair_request()) ->
    {ok, get_key_pair_result(), tuple()} |
    {error, any()} |
    {error, get_key_pair_errors(), tuple()}.
get_key_pair(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_key_pair(Client, Input, []).

-spec get_key_pair(aws_client:aws_client(), get_key_pair_request(), proplists:proplist()) ->
    {ok, get_key_pair_result(), tuple()} |
    {error, any()} |
    {error, get_key_pair_errors(), tuple()}.
get_key_pair(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetKeyPair">>, Input, Options).

%% @doc Returns information about all key pairs in the user's account.
-spec get_key_pairs(aws_client:aws_client(), get_key_pairs_request()) ->
    {ok, get_key_pairs_result(), tuple()} |
    {error, any()} |
    {error, get_key_pairs_errors(), tuple()}.
get_key_pairs(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_key_pairs(Client, Input, []).

-spec get_key_pairs(aws_client:aws_client(), get_key_pairs_request(), proplists:proplist()) ->
    {ok, get_key_pairs_result(), tuple()} |
    {error, any()} |
    {error, get_key_pairs_errors(), tuple()}.
get_key_pairs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetKeyPairs">>, Input, Options).

%% @doc Returns information about the specified Lightsail load balancer.
-spec get_load_balancer(aws_client:aws_client(), get_load_balancer_request()) ->
    {ok, get_load_balancer_result(), tuple()} |
    {error, any()} |
    {error, get_load_balancer_errors(), tuple()}.
get_load_balancer(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_load_balancer(Client, Input, []).

-spec get_load_balancer(aws_client:aws_client(), get_load_balancer_request(), proplists:proplist()) ->
    {ok, get_load_balancer_result(), tuple()} |
    {error, any()} |
    {error, get_load_balancer_errors(), tuple()}.
get_load_balancer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetLoadBalancer">>, Input, Options).

%% @doc Returns information about health metrics for your Lightsail load
%% balancer.
%%
%% Metrics report the utilization of your resources, and the error counts
%% generated by them.
%% Monitor and collect metric data regularly to maintain the reliability,
%% availability, and
%% performance of your resources.
-spec get_load_balancer_metric_data(aws_client:aws_client(), get_load_balancer_metric_data_request()) ->
    {ok, get_load_balancer_metric_data_result(), tuple()} |
    {error, any()} |
    {error, get_load_balancer_metric_data_errors(), tuple()}.
get_load_balancer_metric_data(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_load_balancer_metric_data(Client, Input, []).

-spec get_load_balancer_metric_data(aws_client:aws_client(), get_load_balancer_metric_data_request(), proplists:proplist()) ->
    {ok, get_load_balancer_metric_data_result(), tuple()} |
    {error, any()} |
    {error, get_load_balancer_metric_data_errors(), tuple()}.
get_load_balancer_metric_data(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetLoadBalancerMetricData">>, Input, Options).

%% @doc Returns information about the TLS certificates that are associated
%% with the specified
%% Lightsail load balancer.
%%
%% TLS is just an updated, more secure version of Secure Socket Layer (SSL).
%%
%% You can have a maximum of 2 certificates associated with a Lightsail load
%% balancer. One
%% is active and the other is inactive.
-spec get_load_balancer_tls_certificates(aws_client:aws_client(), get_load_balancer_tls_certificates_request()) ->
    {ok, get_load_balancer_tls_certificates_result(), tuple()} |
    {error, any()} |
    {error, get_load_balancer_tls_certificates_errors(), tuple()}.
get_load_balancer_tls_certificates(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_load_balancer_tls_certificates(Client, Input, []).

-spec get_load_balancer_tls_certificates(aws_client:aws_client(), get_load_balancer_tls_certificates_request(), proplists:proplist()) ->
    {ok, get_load_balancer_tls_certificates_result(), tuple()} |
    {error, any()} |
    {error, get_load_balancer_tls_certificates_errors(), tuple()}.
get_load_balancer_tls_certificates(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetLoadBalancerTlsCertificates">>, Input, Options).

%% @doc Returns a list of TLS security policies that you can apply to
%% Lightsail load
%% balancers.
%%
%% For more information about load balancer TLS security policies, see
%% Configuring TLS security policies on your Amazon Lightsail load
%% balancers:
%% https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-configure-load-balancer-tls-security-policy
%% in the Amazon Lightsail Developer Guide.
-spec get_load_balancer_tls_policies(aws_client:aws_client(), get_load_balancer_tls_policies_request()) ->
    {ok, get_load_balancer_tls_policies_result(), tuple()} |
    {error, any()} |
    {error, get_load_balancer_tls_policies_errors(), tuple()}.
get_load_balancer_tls_policies(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_load_balancer_tls_policies(Client, Input, []).

-spec get_load_balancer_tls_policies(aws_client:aws_client(), get_load_balancer_tls_policies_request(), proplists:proplist()) ->
    {ok, get_load_balancer_tls_policies_result(), tuple()} |
    {error, any()} |
    {error, get_load_balancer_tls_policies_errors(), tuple()}.
get_load_balancer_tls_policies(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetLoadBalancerTlsPolicies">>, Input, Options).

%% @doc Returns information about all load balancers in an account.
-spec get_load_balancers(aws_client:aws_client(), get_load_balancers_request()) ->
    {ok, get_load_balancers_result(), tuple()} |
    {error, any()} |
    {error, get_load_balancers_errors(), tuple()}.
get_load_balancers(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_load_balancers(Client, Input, []).

-spec get_load_balancers(aws_client:aws_client(), get_load_balancers_request(), proplists:proplist()) ->
    {ok, get_load_balancers_result(), tuple()} |
    {error, any()} |
    {error, get_load_balancers_errors(), tuple()}.
get_load_balancers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetLoadBalancers">>, Input, Options).

%% @doc Returns information about a specific operation.
%%
%% Operations include events such as when you
%% create an instance, allocate a static IP, attach a static IP, and so on.
-spec get_operation(aws_client:aws_client(), get_operation_request()) ->
    {ok, get_operation_result(), tuple()} |
    {error, any()} |
    {error, get_operation_errors(), tuple()}.
get_operation(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_operation(Client, Input, []).

-spec get_operation(aws_client:aws_client(), get_operation_request(), proplists:proplist()) ->
    {ok, get_operation_result(), tuple()} |
    {error, any()} |
    {error, get_operation_errors(), tuple()}.
get_operation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetOperation">>, Input, Options).

%% @doc Returns information about all operations.
%%
%% Results are returned from oldest to newest, up to a maximum of 200.
%% Results can be paged
%% by making each subsequent call to `GetOperations' use the maximum
%% (last)
%% `statusChangedAt' value from the previous request.
-spec get_operations(aws_client:aws_client(), get_operations_request()) ->
    {ok, get_operations_result(), tuple()} |
    {error, any()} |
    {error, get_operations_errors(), tuple()}.
get_operations(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_operations(Client, Input, []).

-spec get_operations(aws_client:aws_client(), get_operations_request(), proplists:proplist()) ->
    {ok, get_operations_result(), tuple()} |
    {error, any()} |
    {error, get_operations_errors(), tuple()}.
get_operations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetOperations">>, Input, Options).

%% @doc Gets operations for a specific resource (an instance or a static IP).
-spec get_operations_for_resource(aws_client:aws_client(), get_operations_for_resource_request()) ->
    {ok, get_operations_for_resource_result(), tuple()} |
    {error, any()} |
    {error, get_operations_for_resource_errors(), tuple()}.
get_operations_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_operations_for_resource(Client, Input, []).

-spec get_operations_for_resource(aws_client:aws_client(), get_operations_for_resource_request(), proplists:proplist()) ->
    {ok, get_operations_for_resource_result(), tuple()} |
    {error, any()} |
    {error, get_operations_for_resource_errors(), tuple()}.
get_operations_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetOperationsForResource">>, Input, Options).

%% @doc Returns a list of all valid regions for Amazon Lightsail.
%%
%% Use the
%% ```
%% include availability zones''' parameter to also return the
%% Availability Zones in a
%% region.
-spec get_regions(aws_client:aws_client(), get_regions_request()) ->
    {ok, get_regions_result(), tuple()} |
    {error, any()} |
    {error, get_regions_errors(), tuple()}.
get_regions(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_regions(Client, Input, []).

-spec get_regions(aws_client:aws_client(), get_regions_request(), proplists:proplist()) ->
    {ok, get_regions_result(), tuple()} |
    {error, any()} |
    {error, get_regions_errors(), tuple()}.
get_regions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRegions">>, Input, Options).

%% @doc Returns information about a specific database in Amazon Lightsail.
-spec get_relational_database(aws_client:aws_client(), get_relational_database_request()) ->
    {ok, get_relational_database_result(), tuple()} |
    {error, any()} |
    {error, get_relational_database_errors(), tuple()}.
get_relational_database(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_relational_database(Client, Input, []).

-spec get_relational_database(aws_client:aws_client(), get_relational_database_request(), proplists:proplist()) ->
    {ok, get_relational_database_result(), tuple()} |
    {error, any()} |
    {error, get_relational_database_errors(), tuple()}.
get_relational_database(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRelationalDatabase">>, Input, Options).

%% @doc Returns a list of available database blueprints in Amazon Lightsail.
%%
%% A blueprint describes
%% the major engine version of a database.
%%
%% You can use a blueprint ID to create a new database that runs a specific
%% database
%% engine.
-spec get_relational_database_blueprints(aws_client:aws_client(), get_relational_database_blueprints_request()) ->
    {ok, get_relational_database_blueprints_result(), tuple()} |
    {error, any()} |
    {error, get_relational_database_blueprints_errors(), tuple()}.
get_relational_database_blueprints(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_relational_database_blueprints(Client, Input, []).

-spec get_relational_database_blueprints(aws_client:aws_client(), get_relational_database_blueprints_request(), proplists:proplist()) ->
    {ok, get_relational_database_blueprints_result(), tuple()} |
    {error, any()} |
    {error, get_relational_database_blueprints_errors(), tuple()}.
get_relational_database_blueprints(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRelationalDatabaseBlueprints">>, Input, Options).

%% @doc Returns the list of bundles that are available in Amazon Lightsail.
%%
%% A bundle describes the
%% performance specifications for a database.
%%
%% You can use a bundle ID to create a new database with explicit performance
%% specifications.
-spec get_relational_database_bundles(aws_client:aws_client(), get_relational_database_bundles_request()) ->
    {ok, get_relational_database_bundles_result(), tuple()} |
    {error, any()} |
    {error, get_relational_database_bundles_errors(), tuple()}.
get_relational_database_bundles(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_relational_database_bundles(Client, Input, []).

-spec get_relational_database_bundles(aws_client:aws_client(), get_relational_database_bundles_request(), proplists:proplist()) ->
    {ok, get_relational_database_bundles_result(), tuple()} |
    {error, any()} |
    {error, get_relational_database_bundles_errors(), tuple()}.
get_relational_database_bundles(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRelationalDatabaseBundles">>, Input, Options).

%% @doc Returns a list of events for a specific database in Amazon Lightsail.
-spec get_relational_database_events(aws_client:aws_client(), get_relational_database_events_request()) ->
    {ok, get_relational_database_events_result(), tuple()} |
    {error, any()} |
    {error, get_relational_database_events_errors(), tuple()}.
get_relational_database_events(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_relational_database_events(Client, Input, []).

-spec get_relational_database_events(aws_client:aws_client(), get_relational_database_events_request(), proplists:proplist()) ->
    {ok, get_relational_database_events_result(), tuple()} |
    {error, any()} |
    {error, get_relational_database_events_errors(), tuple()}.
get_relational_database_events(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRelationalDatabaseEvents">>, Input, Options).

%% @doc Returns a list of log events for a database in Amazon Lightsail.
-spec get_relational_database_log_events(aws_client:aws_client(), get_relational_database_log_events_request()) ->
    {ok, get_relational_database_log_events_result(), tuple()} |
    {error, any()} |
    {error, get_relational_database_log_events_errors(), tuple()}.
get_relational_database_log_events(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_relational_database_log_events(Client, Input, []).

-spec get_relational_database_log_events(aws_client:aws_client(), get_relational_database_log_events_request(), proplists:proplist()) ->
    {ok, get_relational_database_log_events_result(), tuple()} |
    {error, any()} |
    {error, get_relational_database_log_events_errors(), tuple()}.
get_relational_database_log_events(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRelationalDatabaseLogEvents">>, Input, Options).

%% @doc Returns a list of available log streams for a specific database in
%% Amazon Lightsail.
-spec get_relational_database_log_streams(aws_client:aws_client(), get_relational_database_log_streams_request()) ->
    {ok, get_relational_database_log_streams_result(), tuple()} |
    {error, any()} |
    {error, get_relational_database_log_streams_errors(), tuple()}.
get_relational_database_log_streams(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_relational_database_log_streams(Client, Input, []).

-spec get_relational_database_log_streams(aws_client:aws_client(), get_relational_database_log_streams_request(), proplists:proplist()) ->
    {ok, get_relational_database_log_streams_result(), tuple()} |
    {error, any()} |
    {error, get_relational_database_log_streams_errors(), tuple()}.
get_relational_database_log_streams(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRelationalDatabaseLogStreams">>, Input, Options).

%% @doc Returns the current, previous, or pending versions of the master user
%% password for a
%% Lightsail database.
%%
%% The `GetRelationalDatabaseMasterUserPassword' operation supports
%% tag-based
%% access control via resource tags applied to the resource identified by
%% relationalDatabaseName.
-spec get_relational_database_master_user_password(aws_client:aws_client(), get_relational_database_master_user_password_request()) ->
    {ok, get_relational_database_master_user_password_result(), tuple()} |
    {error, any()} |
    {error, get_relational_database_master_user_password_errors(), tuple()}.
get_relational_database_master_user_password(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_relational_database_master_user_password(Client, Input, []).

-spec get_relational_database_master_user_password(aws_client:aws_client(), get_relational_database_master_user_password_request(), proplists:proplist()) ->
    {ok, get_relational_database_master_user_password_result(), tuple()} |
    {error, any()} |
    {error, get_relational_database_master_user_password_errors(), tuple()}.
get_relational_database_master_user_password(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRelationalDatabaseMasterUserPassword">>, Input, Options).

%% @doc Returns the data points of the specified metric for a database in
%% Amazon Lightsail.
%%
%% Metrics report the utilization of your resources, and the error counts
%% generated by them.
%% Monitor and collect metric data regularly to maintain the reliability,
%% availability, and
%% performance of your resources.
-spec get_relational_database_metric_data(aws_client:aws_client(), get_relational_database_metric_data_request()) ->
    {ok, get_relational_database_metric_data_result(), tuple()} |
    {error, any()} |
    {error, get_relational_database_metric_data_errors(), tuple()}.
get_relational_database_metric_data(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_relational_database_metric_data(Client, Input, []).

-spec get_relational_database_metric_data(aws_client:aws_client(), get_relational_database_metric_data_request(), proplists:proplist()) ->
    {ok, get_relational_database_metric_data_result(), tuple()} |
    {error, any()} |
    {error, get_relational_database_metric_data_errors(), tuple()}.
get_relational_database_metric_data(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRelationalDatabaseMetricData">>, Input, Options).

%% @doc Returns all of the runtime parameters offered by the underlying
%% database software, or
%% engine, for a specific database in Amazon Lightsail.
%%
%% In addition to the parameter names and values, this operation returns
%% other information
%% about each parameter. This information includes whether changes require a
%% reboot, whether the
%% parameter is modifiable, the allowed values, and the data types.
-spec get_relational_database_parameters(aws_client:aws_client(), get_relational_database_parameters_request()) ->
    {ok, get_relational_database_parameters_result(), tuple()} |
    {error, any()} |
    {error, get_relational_database_parameters_errors(), tuple()}.
get_relational_database_parameters(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_relational_database_parameters(Client, Input, []).

-spec get_relational_database_parameters(aws_client:aws_client(), get_relational_database_parameters_request(), proplists:proplist()) ->
    {ok, get_relational_database_parameters_result(), tuple()} |
    {error, any()} |
    {error, get_relational_database_parameters_errors(), tuple()}.
get_relational_database_parameters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRelationalDatabaseParameters">>, Input, Options).

%% @doc Returns information about a specific database snapshot in Amazon
%% Lightsail.
-spec get_relational_database_snapshot(aws_client:aws_client(), get_relational_database_snapshot_request()) ->
    {ok, get_relational_database_snapshot_result(), tuple()} |
    {error, any()} |
    {error, get_relational_database_snapshot_errors(), tuple()}.
get_relational_database_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_relational_database_snapshot(Client, Input, []).

-spec get_relational_database_snapshot(aws_client:aws_client(), get_relational_database_snapshot_request(), proplists:proplist()) ->
    {ok, get_relational_database_snapshot_result(), tuple()} |
    {error, any()} |
    {error, get_relational_database_snapshot_errors(), tuple()}.
get_relational_database_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRelationalDatabaseSnapshot">>, Input, Options).

%% @doc Returns information about all of your database snapshots in Amazon
%% Lightsail.
-spec get_relational_database_snapshots(aws_client:aws_client(), get_relational_database_snapshots_request()) ->
    {ok, get_relational_database_snapshots_result(), tuple()} |
    {error, any()} |
    {error, get_relational_database_snapshots_errors(), tuple()}.
get_relational_database_snapshots(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_relational_database_snapshots(Client, Input, []).

-spec get_relational_database_snapshots(aws_client:aws_client(), get_relational_database_snapshots_request(), proplists:proplist()) ->
    {ok, get_relational_database_snapshots_result(), tuple()} |
    {error, any()} |
    {error, get_relational_database_snapshots_errors(), tuple()}.
get_relational_database_snapshots(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRelationalDatabaseSnapshots">>, Input, Options).

%% @doc Returns information about all of your databases in Amazon Lightsail.
-spec get_relational_databases(aws_client:aws_client(), get_relational_databases_request()) ->
    {ok, get_relational_databases_result(), tuple()} |
    {error, any()} |
    {error, get_relational_databases_errors(), tuple()}.
get_relational_databases(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_relational_databases(Client, Input, []).

-spec get_relational_databases(aws_client:aws_client(), get_relational_databases_request(), proplists:proplist()) ->
    {ok, get_relational_databases_result(), tuple()} |
    {error, any()} |
    {error, get_relational_databases_errors(), tuple()}.
get_relational_databases(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRelationalDatabases">>, Input, Options).

%% @doc Returns detailed information for five of the most recent
%% `SetupInstanceHttps'
%% requests that were ran on the target instance.
-spec get_setup_history(aws_client:aws_client(), get_setup_history_request()) ->
    {ok, get_setup_history_result(), tuple()} |
    {error, any()} |
    {error, get_setup_history_errors(), tuple()}.
get_setup_history(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_setup_history(Client, Input, []).

-spec get_setup_history(aws_client:aws_client(), get_setup_history_request(), proplists:proplist()) ->
    {ok, get_setup_history_result(), tuple()} |
    {error, any()} |
    {error, get_setup_history_errors(), tuple()}.
get_setup_history(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSetupHistory">>, Input, Options).

%% @doc Returns information about an Amazon Lightsail static IP.
-spec get_static_ip(aws_client:aws_client(), get_static_ip_request()) ->
    {ok, get_static_ip_result(), tuple()} |
    {error, any()} |
    {error, get_static_ip_errors(), tuple()}.
get_static_ip(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_static_ip(Client, Input, []).

-spec get_static_ip(aws_client:aws_client(), get_static_ip_request(), proplists:proplist()) ->
    {ok, get_static_ip_result(), tuple()} |
    {error, any()} |
    {error, get_static_ip_errors(), tuple()}.
get_static_ip(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetStaticIp">>, Input, Options).

%% @doc Returns information about all static IPs in the user's account.
-spec get_static_ips(aws_client:aws_client(), get_static_ips_request()) ->
    {ok, get_static_ips_result(), tuple()} |
    {error, any()} |
    {error, get_static_ips_errors(), tuple()}.
get_static_ips(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_static_ips(Client, Input, []).

-spec get_static_ips(aws_client:aws_client(), get_static_ips_request(), proplists:proplist()) ->
    {ok, get_static_ips_result(), tuple()} |
    {error, any()} |
    {error, get_static_ips_errors(), tuple()}.
get_static_ips(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetStaticIps">>, Input, Options).

%% @doc Imports a public SSH key from a specific key pair.
-spec import_key_pair(aws_client:aws_client(), import_key_pair_request()) ->
    {ok, import_key_pair_result(), tuple()} |
    {error, any()} |
    {error, import_key_pair_errors(), tuple()}.
import_key_pair(Client, Input)
  when is_map(Client), is_map(Input) ->
    import_key_pair(Client, Input, []).

-spec import_key_pair(aws_client:aws_client(), import_key_pair_request(), proplists:proplist()) ->
    {ok, import_key_pair_result(), tuple()} |
    {error, any()} |
    {error, import_key_pair_errors(), tuple()}.
import_key_pair(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ImportKeyPair">>, Input, Options).

%% @doc Returns a Boolean value indicating whether your Lightsail VPC is
%% peered.
-spec is_vpc_peered(aws_client:aws_client(), is_vpc_peered_request()) ->
    {ok, is_vpc_peered_result(), tuple()} |
    {error, any()} |
    {error, is_vpc_peered_errors(), tuple()}.
is_vpc_peered(Client, Input)
  when is_map(Client), is_map(Input) ->
    is_vpc_peered(Client, Input, []).

-spec is_vpc_peered(aws_client:aws_client(), is_vpc_peered_request(), proplists:proplist()) ->
    {ok, is_vpc_peered_result(), tuple()} |
    {error, any()} |
    {error, is_vpc_peered_errors(), tuple()}.
is_vpc_peered(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"IsVpcPeered">>, Input, Options).

%% @doc Opens ports for a specific Amazon Lightsail instance, and specifies
%% the IP addresses
%% allowed to connect to the instance through the ports, and the protocol.
%%
%% The `OpenInstancePublicPorts' action supports tag-based access control
%% via
%% resource tags applied to the resource identified by `instanceName'.
%% For more
%% information, see the Amazon Lightsail Developer Guide:
%% https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags.
-spec open_instance_public_ports(aws_client:aws_client(), open_instance_public_ports_request()) ->
    {ok, open_instance_public_ports_result(), tuple()} |
    {error, any()} |
    {error, open_instance_public_ports_errors(), tuple()}.
open_instance_public_ports(Client, Input)
  when is_map(Client), is_map(Input) ->
    open_instance_public_ports(Client, Input, []).

-spec open_instance_public_ports(aws_client:aws_client(), open_instance_public_ports_request(), proplists:proplist()) ->
    {ok, open_instance_public_ports_result(), tuple()} |
    {error, any()} |
    {error, open_instance_public_ports_errors(), tuple()}.
open_instance_public_ports(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"OpenInstancePublicPorts">>, Input, Options).

%% @doc Peers the Lightsail VPC with the user's default VPC.
-spec peer_vpc(aws_client:aws_client(), peer_vpc_request()) ->
    {ok, peer_vpc_result(), tuple()} |
    {error, any()} |
    {error, peer_vpc_errors(), tuple()}.
peer_vpc(Client, Input)
  when is_map(Client), is_map(Input) ->
    peer_vpc(Client, Input, []).

-spec peer_vpc(aws_client:aws_client(), peer_vpc_request(), proplists:proplist()) ->
    {ok, peer_vpc_result(), tuple()} |
    {error, any()} |
    {error, peer_vpc_errors(), tuple()}.
peer_vpc(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PeerVpc">>, Input, Options).

%% @doc Creates or updates an alarm, and associates it with the specified
%% metric.
%%
%% An alarm is used to monitor a single metric for one of your resources.
%% When a metric
%% condition is met, the alarm can notify you by email, SMS text message, and
%% a banner displayed
%% on the Amazon Lightsail console. For more information, see Alarms
%% in Amazon Lightsail:
%% https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-alarms.
%%
%% When this action creates an alarm, the alarm state is immediately set to
%% `INSUFFICIENT_DATA'. The alarm is then evaluated and its state is set
%% appropriately. Any actions associated with the new state are then
%% executed.
%%
%% When you update an existing alarm, its state is left unchanged, but the
%% update completely
%% overwrites the previous configuration of the alarm. The alarm is then
%% evaluated with the
%% updated configuration.
-spec put_alarm(aws_client:aws_client(), put_alarm_request()) ->
    {ok, put_alarm_result(), tuple()} |
    {error, any()} |
    {error, put_alarm_errors(), tuple()}.
put_alarm(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_alarm(Client, Input, []).

-spec put_alarm(aws_client:aws_client(), put_alarm_request(), proplists:proplist()) ->
    {ok, put_alarm_result(), tuple()} |
    {error, any()} |
    {error, put_alarm_errors(), tuple()}.
put_alarm(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutAlarm">>, Input, Options).

%% @doc Opens ports for a specific Amazon Lightsail instance, and specifies
%% the IP addresses
%% allowed to connect to the instance through the ports, and the protocol.
%%
%% This action also
%% closes all currently open ports that are not included in the request.
%% Include all of the ports
%% and the protocols you want to open in your
%% `PutInstancePublicPorts'request. Or use
%% the `OpenInstancePublicPorts' action to open ports without closing
%% currently open
%% ports.
%%
%% The `PutInstancePublicPorts' action supports tag-based access control
%% via
%% resource tags applied to the resource identified by `instanceName'.
%% For more
%% information, see the Amazon Lightsail Developer Guide:
%% https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags.
-spec put_instance_public_ports(aws_client:aws_client(), put_instance_public_ports_request()) ->
    {ok, put_instance_public_ports_result(), tuple()} |
    {error, any()} |
    {error, put_instance_public_ports_errors(), tuple()}.
put_instance_public_ports(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_instance_public_ports(Client, Input, []).

-spec put_instance_public_ports(aws_client:aws_client(), put_instance_public_ports_request(), proplists:proplist()) ->
    {ok, put_instance_public_ports_result(), tuple()} |
    {error, any()} |
    {error, put_instance_public_ports_errors(), tuple()}.
put_instance_public_ports(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutInstancePublicPorts">>, Input, Options).

%% @doc Restarts a specific instance.
%%
%% The `reboot instance' operation supports tag-based access control via
%% resource
%% tags applied to the resource identified by `instance name'. For more
%% information,
%% see the Amazon Lightsail Developer Guide:
%% https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags.
-spec reboot_instance(aws_client:aws_client(), reboot_instance_request()) ->
    {ok, reboot_instance_result(), tuple()} |
    {error, any()} |
    {error, reboot_instance_errors(), tuple()}.
reboot_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    reboot_instance(Client, Input, []).

-spec reboot_instance(aws_client:aws_client(), reboot_instance_request(), proplists:proplist()) ->
    {ok, reboot_instance_result(), tuple()} |
    {error, any()} |
    {error, reboot_instance_errors(), tuple()}.
reboot_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RebootInstance">>, Input, Options).

%% @doc Restarts a specific database in Amazon Lightsail.
%%
%% The `reboot relational database' operation supports tag-based access
%% control
%% via resource tags applied to the resource identified by
%% relationalDatabaseName. For more
%% information, see the Amazon Lightsail Developer Guide:
%% https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags.
-spec reboot_relational_database(aws_client:aws_client(), reboot_relational_database_request()) ->
    {ok, reboot_relational_database_result(), tuple()} |
    {error, any()} |
    {error, reboot_relational_database_errors(), tuple()}.
reboot_relational_database(Client, Input)
  when is_map(Client), is_map(Input) ->
    reboot_relational_database(Client, Input, []).

-spec reboot_relational_database(aws_client:aws_client(), reboot_relational_database_request(), proplists:proplist()) ->
    {ok, reboot_relational_database_result(), tuple()} |
    {error, any()} |
    {error, reboot_relational_database_errors(), tuple()}.
reboot_relational_database(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RebootRelationalDatabase">>, Input, Options).

%% @doc Registers a container image to your Amazon Lightsail container
%% service.
%%
%% This action is not required if you install and use the Lightsail Control
%% (lightsailctl) plugin to push container images to your Lightsail container
%% service. For
%% more information, see Pushing and managing container images on your Amazon
%% Lightsail container services:
%% https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-pushing-container-images
%% in the Amazon Lightsail Developer Guide.
-spec register_container_image(aws_client:aws_client(), register_container_image_request()) ->
    {ok, register_container_image_result(), tuple()} |
    {error, any()} |
    {error, register_container_image_errors(), tuple()}.
register_container_image(Client, Input)
  when is_map(Client), is_map(Input) ->
    register_container_image(Client, Input, []).

-spec register_container_image(aws_client:aws_client(), register_container_image_request(), proplists:proplist()) ->
    {ok, register_container_image_result(), tuple()} |
    {error, any()} |
    {error, register_container_image_errors(), tuple()}.
register_container_image(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RegisterContainerImage">>, Input, Options).

%% @doc Deletes a specific static IP from your account.
-spec release_static_ip(aws_client:aws_client(), release_static_ip_request()) ->
    {ok, release_static_ip_result(), tuple()} |
    {error, any()} |
    {error, release_static_ip_errors(), tuple()}.
release_static_ip(Client, Input)
  when is_map(Client), is_map(Input) ->
    release_static_ip(Client, Input, []).

-spec release_static_ip(aws_client:aws_client(), release_static_ip_request(), proplists:proplist()) ->
    {ok, release_static_ip_result(), tuple()} |
    {error, any()} |
    {error, release_static_ip_errors(), tuple()}.
release_static_ip(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ReleaseStaticIp">>, Input, Options).

%% @doc Deletes currently cached content from your Amazon Lightsail content
%% delivery network (CDN)
%% distribution.
%%
%% After resetting the cache, the next time a content request is made, your
%% distribution
%% pulls, serves, and caches it from the origin.
-spec reset_distribution_cache(aws_client:aws_client(), reset_distribution_cache_request()) ->
    {ok, reset_distribution_cache_result(), tuple()} |
    {error, any()} |
    {error, reset_distribution_cache_errors(), tuple()}.
reset_distribution_cache(Client, Input)
  when is_map(Client), is_map(Input) ->
    reset_distribution_cache(Client, Input, []).

-spec reset_distribution_cache(aws_client:aws_client(), reset_distribution_cache_request(), proplists:proplist()) ->
    {ok, reset_distribution_cache_result(), tuple()} |
    {error, any()} |
    {error, reset_distribution_cache_errors(), tuple()}.
reset_distribution_cache(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ResetDistributionCache">>, Input, Options).

%% @doc Sends a verification request to an email contact method to ensure
%% it's owned by the
%% requester.
%%
%% SMS contact methods don't need to be verified.
%%
%% A contact method is used to send you notifications about your Amazon
%% Lightsail resources.
%% You can add one email address and one mobile phone number contact method
%% in each Amazon Web Services Region. However, SMS text messaging is not
%% supported in some Amazon Web Services
%% Regions, and SMS text messages cannot be sent to some countries/regions.
%% For more information,
%% see Notifications in Amazon Lightsail:
%% https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-notifications.
%%
%% A verification request is sent to the contact method when you initially
%% create it. Use
%% this action to send another verification request if a previous
%% verification request was
%% deleted, or has expired.
%%
%% Notifications are not sent to an email contact method until after it is
%% verified, and
%% confirmed as valid.
-spec send_contact_method_verification(aws_client:aws_client(), send_contact_method_verification_request()) ->
    {ok, send_contact_method_verification_result(), tuple()} |
    {error, any()} |
    {error, send_contact_method_verification_errors(), tuple()}.
send_contact_method_verification(Client, Input)
  when is_map(Client), is_map(Input) ->
    send_contact_method_verification(Client, Input, []).

-spec send_contact_method_verification(aws_client:aws_client(), send_contact_method_verification_request(), proplists:proplist()) ->
    {ok, send_contact_method_verification_result(), tuple()} |
    {error, any()} |
    {error, send_contact_method_verification_errors(), tuple()}.
send_contact_method_verification(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SendContactMethodVerification">>, Input, Options).

%% @doc Sets the IP address type for an Amazon Lightsail resource.
%%
%% Use this action to enable dual-stack for a resource, which enables IPv4
%% and IPv6 for the
%% specified resource. Alternately, you can use this action to disable
%% dual-stack, and enable
%% IPv4 only.
-spec set_ip_address_type(aws_client:aws_client(), set_ip_address_type_request()) ->
    {ok, set_ip_address_type_result(), tuple()} |
    {error, any()} |
    {error, set_ip_address_type_errors(), tuple()}.
set_ip_address_type(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_ip_address_type(Client, Input, []).

-spec set_ip_address_type(aws_client:aws_client(), set_ip_address_type_request(), proplists:proplist()) ->
    {ok, set_ip_address_type_result(), tuple()} |
    {error, any()} |
    {error, set_ip_address_type_errors(), tuple()}.
set_ip_address_type(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetIpAddressType">>, Input, Options).

%% @doc Sets the Amazon Lightsail resources that can access the specified
%% Lightsail
%% bucket.
%%
%% Lightsail buckets currently support setting access for Lightsail instances
%% in the same
%% Amazon Web Services Region.
-spec set_resource_access_for_bucket(aws_client:aws_client(), set_resource_access_for_bucket_request()) ->
    {ok, set_resource_access_for_bucket_result(), tuple()} |
    {error, any()} |
    {error, set_resource_access_for_bucket_errors(), tuple()}.
set_resource_access_for_bucket(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_resource_access_for_bucket(Client, Input, []).

-spec set_resource_access_for_bucket(aws_client:aws_client(), set_resource_access_for_bucket_request(), proplists:proplist()) ->
    {ok, set_resource_access_for_bucket_result(), tuple()} |
    {error, any()} |
    {error, set_resource_access_for_bucket_errors(), tuple()}.
set_resource_access_for_bucket(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetResourceAccessForBucket">>, Input, Options).

%% @doc Creates an SSL/TLS certificate that secures traffic for your website.
%%
%% After the
%% certificate is created, it is installed on the specified Lightsail
%% instance.
%%
%% If you provide more than one domain name in the request, at least one name
%% must be less
%% than or equal to 63 characters in length.
-spec setup_instance_https(aws_client:aws_client(), setup_instance_https_request()) ->
    {ok, setup_instance_https_result(), tuple()} |
    {error, any()} |
    {error, setup_instance_https_errors(), tuple()}.
setup_instance_https(Client, Input)
  when is_map(Client), is_map(Input) ->
    setup_instance_https(Client, Input, []).

-spec setup_instance_https(aws_client:aws_client(), setup_instance_https_request(), proplists:proplist()) ->
    {ok, setup_instance_https_result(), tuple()} |
    {error, any()} |
    {error, setup_instance_https_errors(), tuple()}.
setup_instance_https(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetupInstanceHttps">>, Input, Options).

%% @doc Initiates a graphical user interface (GUI) session that’s used to
%% access a virtual
%% computer’s operating system and application.
%%
%% The session will be active for 1 hour. Use this
%% action to resume the session after it expires.
-spec start_g_ui_session(aws_client:aws_client(), start_g_ui_session_request()) ->
    {ok, start_g_ui_session_result(), tuple()} |
    {error, any()} |
    {error, start_g_ui_session_errors(), tuple()}.
start_g_ui_session(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_g_ui_session(Client, Input, []).

-spec start_g_ui_session(aws_client:aws_client(), start_g_ui_session_request(), proplists:proplist()) ->
    {ok, start_g_ui_session_result(), tuple()} |
    {error, any()} |
    {error, start_g_ui_session_errors(), tuple()}.
start_g_ui_session(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartGUISession">>, Input, Options).

%% @doc Starts a specific Amazon Lightsail instance from a stopped state.
%%
%% To restart an instance,
%% use the `reboot instance' operation.
%%
%% When you start a stopped instance, Lightsail assigns a new public IP
%% address to the
%% instance. To use the same IP address after stopping and starting an
%% instance, create a
%% static IP address and attach it to the instance. For more information, see
%% the Amazon Lightsail Developer Guide:
%% https://docs.aws.amazon.com/lightsail/latest/userguide/lightsail-create-static-ip.
%%
%% The `start instance' operation supports tag-based access control via
%% resource
%% tags applied to the resource identified by `instance name'. For more
%% information,
%% see the Amazon Lightsail Developer Guide:
%% https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags.
-spec start_instance(aws_client:aws_client(), start_instance_request()) ->
    {ok, start_instance_result(), tuple()} |
    {error, any()} |
    {error, start_instance_errors(), tuple()}.
start_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_instance(Client, Input, []).

-spec start_instance(aws_client:aws_client(), start_instance_request(), proplists:proplist()) ->
    {ok, start_instance_result(), tuple()} |
    {error, any()} |
    {error, start_instance_errors(), tuple()}.
start_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartInstance">>, Input, Options).

%% @doc Starts a specific database from a stopped state in Amazon Lightsail.
%%
%% To restart a database,
%% use the `reboot relational database' operation.
%%
%% The `start relational database' operation supports tag-based access
%% control via
%% resource tags applied to the resource identified by
%% relationalDatabaseName. For more
%% information, see the Amazon Lightsail Developer Guide:
%% https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags.
-spec start_relational_database(aws_client:aws_client(), start_relational_database_request()) ->
    {ok, start_relational_database_result(), tuple()} |
    {error, any()} |
    {error, start_relational_database_errors(), tuple()}.
start_relational_database(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_relational_database(Client, Input, []).

-spec start_relational_database(aws_client:aws_client(), start_relational_database_request(), proplists:proplist()) ->
    {ok, start_relational_database_result(), tuple()} |
    {error, any()} |
    {error, start_relational_database_errors(), tuple()}.
start_relational_database(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartRelationalDatabase">>, Input, Options).

%% @doc Terminates a web-based Amazon DCV session that’s used to access a
%% virtual computer’s
%% operating system or application.
%%
%% The session will close and any unsaved data will be
%% lost.
-spec stop_g_ui_session(aws_client:aws_client(), stop_g_ui_session_request()) ->
    {ok, stop_g_ui_session_result(), tuple()} |
    {error, any()} |
    {error, stop_g_ui_session_errors(), tuple()}.
stop_g_ui_session(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_g_ui_session(Client, Input, []).

-spec stop_g_ui_session(aws_client:aws_client(), stop_g_ui_session_request(), proplists:proplist()) ->
    {ok, stop_g_ui_session_result(), tuple()} |
    {error, any()} |
    {error, stop_g_ui_session_errors(), tuple()}.
stop_g_ui_session(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopGUISession">>, Input, Options).

%% @doc Stops a specific Amazon Lightsail instance that is currently running.
%%
%% When you start a stopped instance, Lightsail assigns a new public IP
%% address to the
%% instance. To use the same IP address after stopping and starting an
%% instance, create a
%% static IP address and attach it to the instance. For more information, see
%% the Amazon Lightsail Developer Guide:
%% https://docs.aws.amazon.com/lightsail/latest/userguide/lightsail-create-static-ip.
%%
%% The `stop instance' operation supports tag-based access control via
%% resource
%% tags applied to the resource identified by `instance name'. For more
%% information,
%% see the Amazon Lightsail Developer Guide:
%% https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags.
-spec stop_instance(aws_client:aws_client(), stop_instance_request()) ->
    {ok, stop_instance_result(), tuple()} |
    {error, any()} |
    {error, stop_instance_errors(), tuple()}.
stop_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_instance(Client, Input, []).

-spec stop_instance(aws_client:aws_client(), stop_instance_request(), proplists:proplist()) ->
    {ok, stop_instance_result(), tuple()} |
    {error, any()} |
    {error, stop_instance_errors(), tuple()}.
stop_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopInstance">>, Input, Options).

%% @doc Stops a specific database that is currently running in Amazon
%% Lightsail.
%%
%% If you don't manually start your database instance after it has been
%% stopped for seven
%% consecutive days, Amazon Lightsail automatically starts it for you. This
%% action helps ensure
%% that your database instance doesn't fall behind on any required
%% maintenance updates.
%%
%% The `stop relational database' operation supports tag-based access
%% control via
%% resource tags applied to the resource identified by
%% relationalDatabaseName. For more
%% information, see the Amazon Lightsail Developer Guide:
%% https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags.
-spec stop_relational_database(aws_client:aws_client(), stop_relational_database_request()) ->
    {ok, stop_relational_database_result(), tuple()} |
    {error, any()} |
    {error, stop_relational_database_errors(), tuple()}.
stop_relational_database(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_relational_database(Client, Input, []).

-spec stop_relational_database(aws_client:aws_client(), stop_relational_database_request(), proplists:proplist()) ->
    {ok, stop_relational_database_result(), tuple()} |
    {error, any()} |
    {error, stop_relational_database_errors(), tuple()}.
stop_relational_database(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopRelationalDatabase">>, Input, Options).

%% @doc Adds one or more tags to the specified Amazon Lightsail resource.
%%
%% Each resource can have a
%% maximum of 50 tags. Each tag consists of a key and an optional value. Tag
%% keys must be unique
%% per resource. For more information about tags, see the Amazon Lightsail
%% Developer Guide:
%% https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-tags.
%%
%% The `tag resource' operation supports tag-based access control via
%% request tags
%% and resource tags applied to the resource identified by `resource
%% name'. For more
%% information, see the Amazon Lightsail Developer Guide:
%% https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags.
-spec tag_resource(aws_client:aws_client(), tag_resource_request()) ->
    {ok, tag_resource_result(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).

-spec tag_resource(aws_client:aws_client(), tag_resource_request(), proplists:proplist()) ->
    {ok, tag_resource_result(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Tests an alarm by displaying a banner on the Amazon Lightsail
%% console.
%%
%% If a notification
%% trigger is configured for the specified alarm, the test also sends a
%% notification to the
%% notification protocol (`Email' and/or `SMS') configured for the
%% alarm.
%%
%% An alarm is used to monitor a single metric for one of your resources.
%% When a metric
%% condition is met, the alarm can notify you by email, SMS text message, and
%% a banner displayed
%% on the Amazon Lightsail console. For more information, see Alarms
%% in Amazon Lightsail:
%% https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-alarms.
-spec test_alarm(aws_client:aws_client(), test_alarm_request()) ->
    {ok, test_alarm_result(), tuple()} |
    {error, any()} |
    {error, test_alarm_errors(), tuple()}.
test_alarm(Client, Input)
  when is_map(Client), is_map(Input) ->
    test_alarm(Client, Input, []).

-spec test_alarm(aws_client:aws_client(), test_alarm_request(), proplists:proplist()) ->
    {ok, test_alarm_result(), tuple()} |
    {error, any()} |
    {error, test_alarm_errors(), tuple()}.
test_alarm(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TestAlarm">>, Input, Options).

%% @doc Unpeers the Lightsail VPC from the user's default VPC.
-spec unpeer_vpc(aws_client:aws_client(), unpeer_vpc_request()) ->
    {ok, unpeer_vpc_result(), tuple()} |
    {error, any()} |
    {error, unpeer_vpc_errors(), tuple()}.
unpeer_vpc(Client, Input)
  when is_map(Client), is_map(Input) ->
    unpeer_vpc(Client, Input, []).

-spec unpeer_vpc(aws_client:aws_client(), unpeer_vpc_request(), proplists:proplist()) ->
    {ok, unpeer_vpc_result(), tuple()} |
    {error, any()} |
    {error, unpeer_vpc_errors(), tuple()}.
unpeer_vpc(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UnpeerVpc">>, Input, Options).

%% @doc Deletes the specified set of tag keys and their values from the
%% specified Amazon Lightsail
%% resource.
%%
%% The `untag resource' operation supports tag-based access control via
%% request
%% tags and resource tags applied to the resource identified by `resource
%% name'. For
%% more information, see the Amazon Lightsail Developer Guide:
%% https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags.
-spec untag_resource(aws_client:aws_client(), untag_resource_request()) ->
    {ok, untag_resource_result(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).

-spec untag_resource(aws_client:aws_client(), untag_resource_request(), proplists:proplist()) ->
    {ok, untag_resource_result(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc Updates an existing Amazon Lightsail bucket.
%%
%% Use this action to update the configuration of an existing bucket, such as
%% versioning,
%% public accessibility, and the Amazon Web Services accounts that can access
%% the bucket.
-spec update_bucket(aws_client:aws_client(), update_bucket_request()) ->
    {ok, update_bucket_result(), tuple()} |
    {error, any()} |
    {error, update_bucket_errors(), tuple()}.
update_bucket(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_bucket(Client, Input, []).

-spec update_bucket(aws_client:aws_client(), update_bucket_request(), proplists:proplist()) ->
    {ok, update_bucket_result(), tuple()} |
    {error, any()} |
    {error, update_bucket_errors(), tuple()}.
update_bucket(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateBucket">>, Input, Options).

%% @doc Updates the bundle, or storage plan, of an existing Amazon Lightsail
%% bucket.
%%
%% A bucket bundle specifies the monthly cost, storage space, and data
%% transfer quota for a
%% bucket. You can update a bucket's bundle only one time within a
%% monthly Amazon Web Services
%% billing cycle. To determine if you can update a bucket's bundle, use
%% the GetBuckets:
%% https://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_GetBuckets.html
%% action. The
%% `ableToUpdateBundle' parameter in the response will indicate whether
%% you can
%% currently update a bucket's bundle.
%%
%% Update a bucket's bundle if it's consistently going over its
%% storage space or data
%% transfer quota, or if a bucket's usage is consistently in the lower
%% range of its storage space
%% or data transfer quota. Due to the unpredictable usage fluctuations that a
%% bucket might
%% experience, we strongly recommend that you update a bucket's bundle
%% only as a long-term
%% strategy, instead of as a short-term, monthly cost-cutting measure. Choose
%% a bucket bundle
%% that will provide the bucket with ample storage space and data transfer
%% for a long time to
%% come.
-spec update_bucket_bundle(aws_client:aws_client(), update_bucket_bundle_request()) ->
    {ok, update_bucket_bundle_result(), tuple()} |
    {error, any()} |
    {error, update_bucket_bundle_errors(), tuple()}.
update_bucket_bundle(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_bucket_bundle(Client, Input, []).

-spec update_bucket_bundle(aws_client:aws_client(), update_bucket_bundle_request(), proplists:proplist()) ->
    {ok, update_bucket_bundle_result(), tuple()} |
    {error, any()} |
    {error, update_bucket_bundle_errors(), tuple()}.
update_bucket_bundle(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateBucketBundle">>, Input, Options).

%% @doc Updates the configuration of your Amazon Lightsail container service,
%% such as its power,
%% scale, and public domain names.
-spec update_container_service(aws_client:aws_client(), update_container_service_request()) ->
    {ok, update_container_service_result(), tuple()} |
    {error, any()} |
    {error, update_container_service_errors(), tuple()}.
update_container_service(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_container_service(Client, Input, []).

-spec update_container_service(aws_client:aws_client(), update_container_service_request(), proplists:proplist()) ->
    {ok, update_container_service_result(), tuple()} |
    {error, any()} |
    {error, update_container_service_errors(), tuple()}.
update_container_service(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateContainerService">>, Input, Options).

%% @doc Updates an existing Amazon Lightsail content delivery network (CDN)
%% distribution.
%%
%% Use this action to update the configuration of your existing distribution.
-spec update_distribution(aws_client:aws_client(), update_distribution_request()) ->
    {ok, update_distribution_result(), tuple()} |
    {error, any()} |
    {error, update_distribution_errors(), tuple()}.
update_distribution(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_distribution(Client, Input, []).

-spec update_distribution(aws_client:aws_client(), update_distribution_request(), proplists:proplist()) ->
    {ok, update_distribution_result(), tuple()} |
    {error, any()} |
    {error, update_distribution_errors(), tuple()}.
update_distribution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateDistribution">>, Input, Options).

%% @doc Updates the bundle of your Amazon Lightsail content delivery network
%% (CDN)
%% distribution.
%%
%% A distribution bundle specifies the monthly network transfer quota and
%% monthly cost of
%% your distribution.
%%
%% Update your distribution's bundle if your distribution is going over
%% its monthly network
%% transfer quota and is incurring an overage fee.
%%
%% You can update your distribution's bundle only one time within your
%% monthly Amazon Web Services billing cycle. To determine if you can update
%% your distribution's bundle, use the
%% `GetDistributions' action. The `ableToUpdateBundle' parameter in
%% the
%% result will indicate whether you can currently update your
%% distribution's bundle.
-spec update_distribution_bundle(aws_client:aws_client(), update_distribution_bundle_request()) ->
    {ok, update_distribution_bundle_result(), tuple()} |
    {error, any()} |
    {error, update_distribution_bundle_errors(), tuple()}.
update_distribution_bundle(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_distribution_bundle(Client, Input, []).

-spec update_distribution_bundle(aws_client:aws_client(), update_distribution_bundle_request(), proplists:proplist()) ->
    {ok, update_distribution_bundle_result(), tuple()} |
    {error, any()} |
    {error, update_distribution_bundle_errors(), tuple()}.
update_distribution_bundle(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateDistributionBundle">>, Input, Options).

%% @doc Updates a domain recordset after it is created.
%%
%% The `update domain entry' operation supports tag-based access control
%% via
%% resource tags applied to the resource identified by `domain name'. For
%% more
%% information, see the Amazon Lightsail Developer Guide:
%% https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags.
-spec update_domain_entry(aws_client:aws_client(), update_domain_entry_request()) ->
    {ok, update_domain_entry_result(), tuple()} |
    {error, any()} |
    {error, update_domain_entry_errors(), tuple()}.
update_domain_entry(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_domain_entry(Client, Input, []).

-spec update_domain_entry(aws_client:aws_client(), update_domain_entry_request(), proplists:proplist()) ->
    {ok, update_domain_entry_result(), tuple()} |
    {error, any()} |
    {error, update_domain_entry_errors(), tuple()}.
update_domain_entry(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateDomainEntry">>, Input, Options).

%% @doc Modifies the Amazon Lightsail instance metadata parameters on a
%% running or stopped
%% instance.
%%
%% When you modify the parameters on a running instance, the
%% `GetInstance'
%% or `GetInstances' API operation initially responds with a state of
%% `pending'. After the parameter modifications are successfully applied,
%% the state
%% changes to `applied' in subsequent `GetInstance' or
%% `GetInstances' API calls. For more information, see Use IMDSv2 with an
%% Amazon Lightsail instance:
%% https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-configuring-instance-metadata-service
%% in the Amazon Lightsail Developer Guide.
-spec update_instance_metadata_options(aws_client:aws_client(), update_instance_metadata_options_request()) ->
    {ok, update_instance_metadata_options_result(), tuple()} |
    {error, any()} |
    {error, update_instance_metadata_options_errors(), tuple()}.
update_instance_metadata_options(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_instance_metadata_options(Client, Input, []).

-spec update_instance_metadata_options(aws_client:aws_client(), update_instance_metadata_options_request(), proplists:proplist()) ->
    {ok, update_instance_metadata_options_result(), tuple()} |
    {error, any()} |
    {error, update_instance_metadata_options_errors(), tuple()}.
update_instance_metadata_options(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateInstanceMetadataOptions">>, Input, Options).

%% @doc Updates the specified attribute for a load balancer.
%%
%% You can only update one attribute at
%% a time.
%%
%% The `update load balancer attribute' operation supports tag-based
%% access
%% control via resource tags applied to the resource identified by
%% ```
%% load balancer name'''. For more information, see the Amazon
%% Lightsail Developer Guide:
%% https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags.
-spec update_load_balancer_attribute(aws_client:aws_client(), update_load_balancer_attribute_request()) ->
    {ok, update_load_balancer_attribute_result(), tuple()} |
    {error, any()} |
    {error, update_load_balancer_attribute_errors(), tuple()}.
update_load_balancer_attribute(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_load_balancer_attribute(Client, Input, []).

-spec update_load_balancer_attribute(aws_client:aws_client(), update_load_balancer_attribute_request(), proplists:proplist()) ->
    {ok, update_load_balancer_attribute_result(), tuple()} |
    {error, any()} |
    {error, update_load_balancer_attribute_errors(), tuple()}.
update_load_balancer_attribute(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateLoadBalancerAttribute">>, Input, Options).

%% @doc Allows the update of one or more attributes of a database in Amazon
%% Lightsail.
%%
%% Updates are applied immediately, or in cases where the updates could
%% result in an outage,
%% are applied during the database's predefined maintenance window.
%%
%% The `update relational database' operation supports tag-based access
%% control
%% via resource tags applied to the resource identified by
%% relationalDatabaseName. For more
%% information, see the Amazon Lightsail Developer Guide:
%% https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags.
-spec update_relational_database(aws_client:aws_client(), update_relational_database_request()) ->
    {ok, update_relational_database_result(), tuple()} |
    {error, any()} |
    {error, update_relational_database_errors(), tuple()}.
update_relational_database(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_relational_database(Client, Input, []).

-spec update_relational_database(aws_client:aws_client(), update_relational_database_request(), proplists:proplist()) ->
    {ok, update_relational_database_result(), tuple()} |
    {error, any()} |
    {error, update_relational_database_errors(), tuple()}.
update_relational_database(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateRelationalDatabase">>, Input, Options).

%% @doc Allows the update of one or more parameters of a database in Amazon
%% Lightsail.
%%
%% Parameter updates don't cause outages; therefore, their application is
%% not subject to the
%% preferred maintenance window. However, there are two ways in which
%% parameter updates are
%% applied: `dynamic' or `pending-reboot'. Parameters marked with a
%% `dynamic' apply type are applied immediately. Parameters marked with a
%% `pending-reboot' apply type are applied only after the database is
%% rebooted using
%% the `reboot relational database' operation.
%%
%% The `update relational database parameters' operation supports
%% tag-based access
%% control via resource tags applied to the resource identified by
%% relationalDatabaseName. For
%% more information, see the Amazon Lightsail Developer Guide:
%% https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags.
-spec update_relational_database_parameters(aws_client:aws_client(), update_relational_database_parameters_request()) ->
    {ok, update_relational_database_parameters_result(), tuple()} |
    {error, any()} |
    {error, update_relational_database_parameters_errors(), tuple()}.
update_relational_database_parameters(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_relational_database_parameters(Client, Input, []).

-spec update_relational_database_parameters(aws_client:aws_client(), update_relational_database_parameters_request(), proplists:proplist()) ->
    {ok, update_relational_database_parameters_result(), tuple()} |
    {error, any()} |
    {error, update_relational_database_parameters_errors(), tuple()}.
update_relational_database_parameters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateRelationalDatabaseParameters">>, Input, Options).

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
    Client1 = Client#{service => <<"lightsail">>},
    Host = build_host(<<"lightsail">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"Lightsail_20161128.", Action/binary>>}
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
