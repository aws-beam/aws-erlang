%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Use the Amazon OpenSearch Service configuration API to create,
%% configure, and manage
%% OpenSearch Service domains.
%%
%% The endpoint for configuration service requests is Region specific:
%% es.region.amazonaws.com. For example, es.us-east-1.amazonaws.com. For a
%% current list of supported Regions and endpoints, see Amazon Web Services
%% service
%% endpoints:
%% https://docs.aws.amazon.com/general/latest/gr/rande.html#service-regions.
-module(aws_opensearch).

-export([accept_inbound_connection/3,
         accept_inbound_connection/4,
         add_data_source/3,
         add_data_source/4,
         add_direct_query_data_source/2,
         add_direct_query_data_source/3,
         add_tags/2,
         add_tags/3,
         associate_package/4,
         associate_package/5,
         associate_packages/2,
         associate_packages/3,
         authorize_vpc_endpoint_access/3,
         authorize_vpc_endpoint_access/4,
         cancel_domain_config_change/3,
         cancel_domain_config_change/4,
         cancel_service_software_update/2,
         cancel_service_software_update/3,
         create_application/2,
         create_application/3,
         create_domain/2,
         create_domain/3,
         create_outbound_connection/2,
         create_outbound_connection/3,
         create_package/2,
         create_package/3,
         create_vpc_endpoint/2,
         create_vpc_endpoint/3,
         delete_application/3,
         delete_application/4,
         delete_data_source/4,
         delete_data_source/5,
         delete_direct_query_data_source/3,
         delete_direct_query_data_source/4,
         delete_domain/3,
         delete_domain/4,
         delete_inbound_connection/3,
         delete_inbound_connection/4,
         delete_outbound_connection/3,
         delete_outbound_connection/4,
         delete_package/3,
         delete_package/4,
         delete_vpc_endpoint/3,
         delete_vpc_endpoint/4,
         describe_domain/2,
         describe_domain/4,
         describe_domain/5,
         describe_domain_auto_tunes/2,
         describe_domain_auto_tunes/4,
         describe_domain_auto_tunes/5,
         describe_domain_change_progress/2,
         describe_domain_change_progress/4,
         describe_domain_change_progress/5,
         describe_domain_config/2,
         describe_domain_config/4,
         describe_domain_config/5,
         describe_domain_health/2,
         describe_domain_health/4,
         describe_domain_health/5,
         describe_domain_nodes/2,
         describe_domain_nodes/4,
         describe_domain_nodes/5,
         describe_domains/2,
         describe_domains/3,
         describe_dry_run_progress/2,
         describe_dry_run_progress/4,
         describe_dry_run_progress/5,
         describe_inbound_connections/2,
         describe_inbound_connections/3,
         describe_instance_type_limits/3,
         describe_instance_type_limits/5,
         describe_instance_type_limits/6,
         describe_outbound_connections/2,
         describe_outbound_connections/3,
         describe_packages/2,
         describe_packages/3,
         describe_reserved_instance_offerings/1,
         describe_reserved_instance_offerings/3,
         describe_reserved_instance_offerings/4,
         describe_reserved_instances/1,
         describe_reserved_instances/3,
         describe_reserved_instances/4,
         describe_vpc_endpoints/2,
         describe_vpc_endpoints/3,
         dissociate_package/4,
         dissociate_package/5,
         dissociate_packages/2,
         dissociate_packages/3,
         get_application/2,
         get_application/4,
         get_application/5,
         get_compatible_versions/1,
         get_compatible_versions/3,
         get_compatible_versions/4,
         get_data_source/3,
         get_data_source/5,
         get_data_source/6,
         get_direct_query_data_source/2,
         get_direct_query_data_source/4,
         get_direct_query_data_source/5,
         get_domain_maintenance_status/3,
         get_domain_maintenance_status/5,
         get_domain_maintenance_status/6,
         get_package_version_history/2,
         get_package_version_history/4,
         get_package_version_history/5,
         get_upgrade_history/2,
         get_upgrade_history/4,
         get_upgrade_history/5,
         get_upgrade_status/2,
         get_upgrade_status/4,
         get_upgrade_status/5,
         list_applications/1,
         list_applications/3,
         list_applications/4,
         list_data_sources/2,
         list_data_sources/4,
         list_data_sources/5,
         list_direct_query_data_sources/1,
         list_direct_query_data_sources/3,
         list_direct_query_data_sources/4,
         list_domain_maintenances/2,
         list_domain_maintenances/4,
         list_domain_maintenances/5,
         list_domain_names/1,
         list_domain_names/3,
         list_domain_names/4,
         list_domains_for_package/2,
         list_domains_for_package/4,
         list_domains_for_package/5,
         list_instance_type_details/2,
         list_instance_type_details/4,
         list_instance_type_details/5,
         list_packages_for_domain/2,
         list_packages_for_domain/4,
         list_packages_for_domain/5,
         list_scheduled_actions/2,
         list_scheduled_actions/4,
         list_scheduled_actions/5,
         list_tags/2,
         list_tags/4,
         list_tags/5,
         list_versions/1,
         list_versions/3,
         list_versions/4,
         list_vpc_endpoint_access/2,
         list_vpc_endpoint_access/4,
         list_vpc_endpoint_access/5,
         list_vpc_endpoints/1,
         list_vpc_endpoints/3,
         list_vpc_endpoints/4,
         list_vpc_endpoints_for_domain/2,
         list_vpc_endpoints_for_domain/4,
         list_vpc_endpoints_for_domain/5,
         purchase_reserved_instance_offering/2,
         purchase_reserved_instance_offering/3,
         reject_inbound_connection/3,
         reject_inbound_connection/4,
         remove_tags/2,
         remove_tags/3,
         revoke_vpc_endpoint_access/3,
         revoke_vpc_endpoint_access/4,
         start_domain_maintenance/3,
         start_domain_maintenance/4,
         start_service_software_update/2,
         start_service_software_update/3,
         update_application/3,
         update_application/4,
         update_data_source/4,
         update_data_source/5,
         update_direct_query_data_source/3,
         update_direct_query_data_source/4,
         update_domain_config/3,
         update_domain_config/4,
         update_package/2,
         update_package/3,
         update_package_scope/2,
         update_package_scope/3,
         update_scheduled_action/3,
         update_scheduled_action/4,
         update_vpc_endpoint/2,
         update_vpc_endpoint/3,
         upgrade_domain/2,
         upgrade_domain/3]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% add_data_source_response() :: #{
%%   <<"Message">> => string()
%% }
-type add_data_source_response() :: #{binary() => any()}.


%% Example:
%% inbound_connection_status() :: #{
%%   <<"Message">> => string(),
%%   <<"StatusCode">> => list(any())
%% }
-type inbound_connection_status() :: #{binary() => any()}.


%% Example:
%% dry_run_progress_status() :: #{
%%   <<"CreationDate">> => string(),
%%   <<"DryRunId">> => string(),
%%   <<"DryRunStatus">> => string(),
%%   <<"UpdateDate">> => string(),
%%   <<"ValidationFailures">> => list(validation_failure()())
%% }
-type dry_run_progress_status() :: #{binary() => any()}.


%% Example:
%% window_start_time() :: #{
%%   <<"Hours">> => float(),
%%   <<"Minutes">> => float()
%% }
-type window_start_time() :: #{binary() => any()}.


%% Example:
%% list_domain_names_request() :: #{
%%   <<"EngineType">> => list(any())
%% }
-type list_domain_names_request() :: #{binary() => any()}.


%% Example:
%% outbound_connection() :: #{
%%   <<"ConnectionAlias">> => string(),
%%   <<"ConnectionId">> => string(),
%%   <<"ConnectionMode">> => list(any()),
%%   <<"ConnectionProperties">> => connection_properties(),
%%   <<"ConnectionStatus">> => outbound_connection_status(),
%%   <<"LocalDomainInfo">> => domain_information_container(),
%%   <<"RemoteDomainInfo">> => domain_information_container()
%% }
-type outbound_connection() :: #{binary() => any()}.


%% Example:
%% modifying_properties() :: #{
%%   <<"ActiveValue">> => string(),
%%   <<"Name">> => string(),
%%   <<"PendingValue">> => string(),
%%   <<"ValueType">> => list(any())
%% }
-type modifying_properties() :: #{binary() => any()}.


%% Example:
%% auto_tune_options_output() :: #{
%%   <<"ErrorMessage">> => string(),
%%   <<"State">> => list(any()),
%%   <<"UseOffPeakWindow">> => boolean()
%% }
-type auto_tune_options_output() :: #{binary() => any()}.


%% Example:
%% update_package_scope_request() :: #{
%%   <<"Operation">> := list(any()),
%%   <<"PackageID">> := string(),
%%   <<"PackageUserList">> := list(string()())
%% }
-type update_package_scope_request() :: #{binary() => any()}.


%% Example:
%% delete_domain_response() :: #{
%%   <<"DomainStatus">> => domain_status()
%% }
-type delete_domain_response() :: #{binary() => any()}.


%% Example:
%% describe_domain_auto_tunes_response() :: #{
%%   <<"AutoTunes">> => list(auto_tune()()),
%%   <<"NextToken">> => string()
%% }
-type describe_domain_auto_tunes_response() :: #{binary() => any()}.


%% Example:
%% package_vending_options() :: #{
%%   <<"VendingEnabled">> => boolean()
%% }
-type package_vending_options() :: #{binary() => any()}.


%% Example:
%% list_vpc_endpoints_for_domain_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"VpcEndpointSummaryList">> => list(vpc_endpoint_summary()())
%% }
-type list_vpc_endpoints_for_domain_response() :: #{binary() => any()}.


%% Example:
%% describe_domain_auto_tunes_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type describe_domain_auto_tunes_request() :: #{binary() => any()}.


%% Example:
%% package_source() :: #{
%%   <<"S3BucketName">> => string(),
%%   <<"S3Key">> => string()
%% }
-type package_source() :: #{binary() => any()}.


%% Example:
%% describe_outbound_connections_request() :: #{
%%   <<"Filters">> => list(filter()()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type describe_outbound_connections_request() :: #{binary() => any()}.


%% Example:
%% compatible_versions_map() :: #{
%%   <<"SourceVersion">> => string(),
%%   <<"TargetVersions">> => list(string()())
%% }
-type compatible_versions_map() :: #{binary() => any()}.


%% Example:
%% update_package_scope_response() :: #{
%%   <<"Operation">> => list(any()),
%%   <<"PackageID">> => string(),
%%   <<"PackageUserList">> => list(string()())
%% }
-type update_package_scope_response() :: #{binary() => any()}.


%% Example:
%% snapshot_options() :: #{
%%   <<"AutomatedSnapshotStartHour">> => integer()
%% }
-type snapshot_options() :: #{binary() => any()}.


%% Example:
%% auto_tune_details() :: #{
%%   <<"ScheduledAutoTuneDetails">> => scheduled_auto_tune_details()
%% }
-type auto_tune_details() :: #{binary() => any()}.


%% Example:
%% dissociate_packages_response() :: #{
%%   <<"DomainPackageDetailsList">> => list(domain_package_details()())
%% }
-type dissociate_packages_response() :: #{binary() => any()}.


%% Example:
%% describe_outbound_connections_response() :: #{
%%   <<"Connections">> => list(outbound_connection()()),
%%   <<"NextToken">> => string()
%% }
-type describe_outbound_connections_response() :: #{binary() => any()}.


%% Example:
%% authorize_vpc_endpoint_access_response() :: #{
%%   <<"AuthorizedPrincipal">> => authorized_principal()
%% }
-type authorize_vpc_endpoint_access_response() :: #{binary() => any()}.


%% Example:
%% direct_query_data_source() :: #{
%%   <<"DataSourceArn">> => string(),
%%   <<"DataSourceName">> => string(),
%%   <<"DataSourceType">> => list(),
%%   <<"Description">> => string(),
%%   <<"OpenSearchArns">> => list(string()()),
%%   <<"TagList">> => list(tag()())
%% }
-type direct_query_data_source() :: #{binary() => any()}.


%% Example:
%% package_details() :: #{
%%   <<"AllowListedUserList">> => list(string()()),
%%   <<"AvailablePackageConfiguration">> => package_configuration(),
%%   <<"AvailablePackageVersion">> => string(),
%%   <<"AvailablePluginProperties">> => plugin_properties(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"EngineVersion">> => string(),
%%   <<"ErrorDetails">> => error_details(),
%%   <<"LastUpdatedAt">> => non_neg_integer(),
%%   <<"PackageDescription">> => string(),
%%   <<"PackageEncryptionOptions">> => package_encryption_options(),
%%   <<"PackageID">> => string(),
%%   <<"PackageName">> => string(),
%%   <<"PackageOwner">> => string(),
%%   <<"PackageStatus">> => list(any()),
%%   <<"PackageType">> => list(any()),
%%   <<"PackageVendingOptions">> => package_vending_options()
%% }
-type package_details() :: #{binary() => any()}.


%% Example:
%% describe_domain_change_progress_request() :: #{
%%   <<"ChangeId">> => string()
%% }
-type describe_domain_change_progress_request() :: #{binary() => any()}.


%% Example:
%% cluster_config_status() :: #{
%%   <<"Options">> => cluster_config(),
%%   <<"Status">> => option_status()
%% }
-type cluster_config_status() :: #{binary() => any()}.


%% Example:
%% create_outbound_connection_request() :: #{
%%   <<"ConnectionAlias">> := string(),
%%   <<"ConnectionMode">> => list(any()),
%%   <<"ConnectionProperties">> => connection_properties(),
%%   <<"LocalDomainInfo">> := domain_information_container(),
%%   <<"RemoteDomainInfo">> := domain_information_container()
%% }
-type create_outbound_connection_request() :: #{binary() => any()}.


%% Example:
%% create_package_request() :: #{
%%   <<"EngineVersion">> => string(),
%%   <<"PackageConfiguration">> => package_configuration(),
%%   <<"PackageDescription">> => string(),
%%   <<"PackageEncryptionOptions">> => package_encryption_options(),
%%   <<"PackageName">> := string(),
%%   <<"PackageSource">> := package_source(),
%%   <<"PackageType">> := list(any()),
%%   <<"PackageVendingOptions">> => package_vending_options()
%% }
-type create_package_request() :: #{binary() => any()}.


%% Example:
%% auto_tune_status() :: #{
%%   <<"CreationDate">> => non_neg_integer(),
%%   <<"ErrorMessage">> => string(),
%%   <<"PendingDeletion">> => boolean(),
%%   <<"State">> => list(any()),
%%   <<"UpdateDate">> => non_neg_integer(),
%%   <<"UpdateVersion">> => integer()
%% }
-type auto_tune_status() :: #{binary() => any()}.


%% Example:
%% package_configuration() :: #{
%%   <<"ConfigurationRequirement">> => list(any()),
%%   <<"LicenseFilepath">> => string(),
%%   <<"LicenseRequirement">> => list(any()),
%%   <<"RequiresRestartForConfigurationUpdate">> => boolean()
%% }
-type package_configuration() :: #{binary() => any()}.


%% Example:
%% list_vpc_endpoints_request() :: #{
%%   <<"NextToken">> => string()
%% }
-type list_vpc_endpoints_request() :: #{binary() => any()}.


%% Example:
%% cold_storage_options() :: #{
%%   <<"Enabled">> => boolean()
%% }
-type cold_storage_options() :: #{binary() => any()}.


%% Example:
%% describe_vpc_endpoints_request() :: #{
%%   <<"VpcEndpointIds">> := list(string()())
%% }
-type describe_vpc_endpoints_request() :: #{binary() => any()}.


%% Example:
%% auto_tune_options_status() :: #{
%%   <<"Options">> => auto_tune_options(),
%%   <<"Status">> => auto_tune_status()
%% }
-type auto_tune_options_status() :: #{binary() => any()}.


%% Example:
%% natural_language_query_generation_options_output() :: #{
%%   <<"CurrentState">> => list(any()),
%%   <<"DesiredState">> => list(any())
%% }
-type natural_language_query_generation_options_output() :: #{binary() => any()}.


%% Example:
%% snapshot_options_status() :: #{
%%   <<"Options">> => snapshot_options(),
%%   <<"Status">> => option_status()
%% }
-type snapshot_options_status() :: #{binary() => any()}.


%% Example:
%% cloud_watch_direct_query_data_source() :: #{
%%   <<"RoleArn">> => string()
%% }
-type cloud_watch_direct_query_data_source() :: #{binary() => any()}.


%% Example:
%% vpc_endpoint_summary() :: #{
%%   <<"DomainArn">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"VpcEndpointId">> => string(),
%%   <<"VpcEndpointOwner">> => string()
%% }
-type vpc_endpoint_summary() :: #{binary() => any()}.


%% Example:
%% recurring_charge() :: #{
%%   <<"RecurringChargeAmount">> => float(),
%%   <<"RecurringChargeFrequency">> => string()
%% }
-type recurring_charge() :: #{binary() => any()}.


%% Example:
%% describe_reserved_instance_offerings_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"ReservedInstanceOfferings">> => list(reserved_instance_offering()())
%% }
-type describe_reserved_instance_offerings_response() :: #{binary() => any()}.


%% Example:
%% list_vpc_endpoints_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"VpcEndpointSummaryList">> => list(vpc_endpoint_summary()())
%% }
-type list_vpc_endpoints_response() :: #{binary() => any()}.


%% Example:
%% describe_dry_run_progress_response() :: #{
%%   <<"DryRunConfig">> => domain_status(),
%%   <<"DryRunProgressStatus">> => dry_run_progress_status(),
%%   <<"DryRunResults">> => dry_run_results()
%% }
-type describe_dry_run_progress_response() :: #{binary() => any()}.


%% Example:
%% instance_type_details() :: #{
%%   <<"AdvancedSecurityEnabled">> => boolean(),
%%   <<"AppLogsEnabled">> => boolean(),
%%   <<"AvailabilityZones">> => list(string()()),
%%   <<"CognitoEnabled">> => boolean(),
%%   <<"EncryptionEnabled">> => boolean(),
%%   <<"InstanceRole">> => list(string()()),
%%   <<"InstanceType">> => list(any()),
%%   <<"WarmEnabled">> => boolean()
%% }
-type instance_type_details() :: #{binary() => any()}.


%% Example:
%% package_association_configuration() :: #{
%%   <<"KeyStoreAccessOption">> => key_store_access_option()
%% }
-type package_association_configuration() :: #{binary() => any()}.


%% Example:
%% describe_domains_request() :: #{
%%   <<"DomainNames">> := list(string()())
%% }
-type describe_domains_request() :: #{binary() => any()}.


%% Example:
%% vpc_derived_info() :: #{
%%   <<"AvailabilityZones">> => list(string()()),
%%   <<"SecurityGroupIds">> => list(string()()),
%%   <<"SubnetIds">> => list(string()()),
%%   <<"VPCId">> => string()
%% }
-type vpc_derived_info() :: #{binary() => any()}.

%% Example:
%% reject_inbound_connection_request() :: #{}
-type reject_inbound_connection_request() :: #{}.


%% Example:
%% saml_idp() :: #{
%%   <<"EntityId">> => string(),
%%   <<"MetadataContent">> => string()
%% }
-type saml_idp() :: #{binary() => any()}.


%% Example:
%% domain_config() :: #{
%%   <<"AIMLOptions">> => a_i_ml_options_status(),
%%   <<"AccessPolicies">> => access_policies_status(),
%%   <<"AdvancedOptions">> => advanced_options_status(),
%%   <<"AdvancedSecurityOptions">> => advanced_security_options_status(),
%%   <<"AutoTuneOptions">> => auto_tune_options_status(),
%%   <<"ChangeProgressDetails">> => change_progress_details(),
%%   <<"ClusterConfig">> => cluster_config_status(),
%%   <<"CognitoOptions">> => cognito_options_status(),
%%   <<"DomainEndpointOptions">> => domain_endpoint_options_status(),
%%   <<"EBSOptions">> => ebs_options_status(),
%%   <<"EncryptionAtRestOptions">> => encryption_at_rest_options_status(),
%%   <<"EngineVersion">> => version_status(),
%%   <<"IPAddressType">> => ip_address_type_status(),
%%   <<"IdentityCenterOptions">> => identity_center_options_status(),
%%   <<"LogPublishingOptions">> => log_publishing_options_status(),
%%   <<"ModifyingProperties">> => list(modifying_properties()()),
%%   <<"NodeToNodeEncryptionOptions">> => node_to_node_encryption_options_status(),
%%   <<"OffPeakWindowOptions">> => off_peak_window_options_status(),
%%   <<"SnapshotOptions">> => snapshot_options_status(),
%%   <<"SoftwareUpdateOptions">> => software_update_options_status(),
%%   <<"VPCOptions">> => vpc_derived_info_status()
%% }
-type domain_config() :: #{binary() => any()}.


%% Example:
%% get_domain_maintenance_status_request() :: #{
%%   <<"MaintenanceId">> := string()
%% }
-type get_domain_maintenance_status_request() :: #{binary() => any()}.


%% Example:
%% get_domain_maintenance_status_response() :: #{
%%   <<"Action">> => list(any()),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"NodeId">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"StatusMessage">> => string(),
%%   <<"UpdatedAt">> => non_neg_integer()
%% }
-type get_domain_maintenance_status_response() :: #{binary() => any()}.


%% Example:
%% list_tags_response() :: #{
%%   <<"TagList">> => list(tag()())
%% }
-type list_tags_response() :: #{binary() => any()}.

%% Example:
%% delete_inbound_connection_request() :: #{}
-type delete_inbound_connection_request() :: #{}.


%% Example:
%% outbound_connection_status() :: #{
%%   <<"Message">> => string(),
%%   <<"StatusCode">> => list(any())
%% }
-type outbound_connection_status() :: #{binary() => any()}.


%% Example:
%% start_domain_maintenance_request() :: #{
%%   <<"Action">> := list(any()),
%%   <<"NodeId">> => string()
%% }
-type start_domain_maintenance_request() :: #{binary() => any()}.


%% Example:
%% storage_type_limit() :: #{
%%   <<"LimitName">> => string(),
%%   <<"LimitValues">> => list(string()())
%% }
-type storage_type_limit() :: #{binary() => any()}.


%% Example:
%% list_direct_query_data_sources_response() :: #{
%%   <<"DirectQueryDataSources">> => list(direct_query_data_source()()),
%%   <<"NextToken">> => string()
%% }
-type list_direct_query_data_sources_response() :: #{binary() => any()}.


%% Example:
%% create_outbound_connection_response() :: #{
%%   <<"ConnectionAlias">> => string(),
%%   <<"ConnectionId">> => string(),
%%   <<"ConnectionMode">> => list(any()),
%%   <<"ConnectionProperties">> => connection_properties(),
%%   <<"ConnectionStatus">> => outbound_connection_status(),
%%   <<"LocalDomainInfo">> => domain_information_container(),
%%   <<"RemoteDomainInfo">> => domain_information_container()
%% }
-type create_outbound_connection_response() :: #{binary() => any()}.


%% Example:
%% ebs_options_status() :: #{
%%   <<"Options">> => ebs_options(),
%%   <<"Status">> => option_status()
%% }
-type ebs_options_status() :: #{binary() => any()}.


%% Example:
%% authorized_principal() :: #{
%%   <<"Principal">> => string(),
%%   <<"PrincipalType">> => list(any())
%% }
-type authorized_principal() :: #{binary() => any()}.


%% Example:
%% disabled_operation_exception() :: #{
%%   <<"message">> => string()
%% }
-type disabled_operation_exception() :: #{binary() => any()}.


%% Example:
%% delete_vpc_endpoint_response() :: #{
%%   <<"VpcEndpointSummary">> => vpc_endpoint_summary()
%% }
-type delete_vpc_endpoint_response() :: #{binary() => any()}.


%% Example:
%% storage_type() :: #{
%%   <<"StorageSubTypeName">> => string(),
%%   <<"StorageTypeLimits">> => list(storage_type_limit()()),
%%   <<"StorageTypeName">> => string()
%% }
-type storage_type() :: #{binary() => any()}.


%% Example:
%% update_package_response() :: #{
%%   <<"PackageDetails">> => package_details()
%% }
-type update_package_response() :: #{binary() => any()}.


%% Example:
%% update_data_source_response() :: #{
%%   <<"Message">> => string()
%% }
-type update_data_source_response() :: #{binary() => any()}.


%% Example:
%% associate_packages_response() :: #{
%%   <<"DomainPackageDetailsList">> => list(domain_package_details()())
%% }
-type associate_packages_response() :: #{binary() => any()}.


%% Example:
%% additional_limit() :: #{
%%   <<"LimitName">> => string(),
%%   <<"LimitValues">> => list(string()())
%% }
-type additional_limit() :: #{binary() => any()}.


%% Example:
%% reject_inbound_connection_response() :: #{
%%   <<"Connection">> => inbound_connection()
%% }
-type reject_inbound_connection_response() :: #{binary() => any()}.


%% Example:
%% identity_center_options_input() :: #{
%%   <<"EnabledAPIAccess">> => boolean(),
%%   <<"IdentityCenterInstanceARN">> => string(),
%%   <<"RolesKey">> => list(any()),
%%   <<"SubjectKey">> => list(any())
%% }
-type identity_center_options_input() :: #{binary() => any()}.


%% Example:
%% vpc_derived_info_status() :: #{
%%   <<"Options">> => vpc_derived_info(),
%%   <<"Status">> => option_status()
%% }
-type vpc_derived_info_status() :: #{binary() => any()}.

%% Example:
%% describe_domain_config_request() :: #{}
-type describe_domain_config_request() :: #{}.


%% Example:
%% update_scheduled_action_response() :: #{
%%   <<"ScheduledAction">> => scheduled_action()
%% }
-type update_scheduled_action_response() :: #{binary() => any()}.


%% Example:
%% domain_maintenance_details() :: #{
%%   <<"Action">> => list(any()),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"DomainName">> => string(),
%%   <<"MaintenanceId">> => string(),
%%   <<"NodeId">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"StatusMessage">> => string(),
%%   <<"UpdatedAt">> => non_neg_integer()
%% }
-type domain_maintenance_details() :: #{binary() => any()}.


%% Example:
%% describe_domain_health_response() :: #{
%%   <<"ActiveAvailabilityZoneCount">> => string(),
%%   <<"AvailabilityZoneCount">> => string(),
%%   <<"ClusterHealth">> => list(any()),
%%   <<"DataNodeCount">> => string(),
%%   <<"DedicatedMaster">> => boolean(),
%%   <<"DomainState">> => list(any()),
%%   <<"EnvironmentInformation">> => list(environment_info()()),
%%   <<"MasterEligibleNodeCount">> => string(),
%%   <<"MasterNode">> => list(any()),
%%   <<"StandByAvailabilityZoneCount">> => string(),
%%   <<"TotalShards">> => string(),
%%   <<"TotalUnAssignedShards">> => string(),
%%   <<"WarmNodeCount">> => string()
%% }
-type describe_domain_health_response() :: #{binary() => any()}.


%% Example:
%% start_service_software_update_response() :: #{
%%   <<"ServiceSoftwareOptions">> => service_software_options()
%% }
-type start_service_software_update_response() :: #{binary() => any()}.


%% Example:
%% accept_inbound_connection_response() :: #{
%%   <<"Connection">> => inbound_connection()
%% }
-type accept_inbound_connection_response() :: #{binary() => any()}.


%% Example:
%% describe_inbound_connections_response() :: #{
%%   <<"Connections">> => list(inbound_connection()()),
%%   <<"NextToken">> => string()
%% }
-type describe_inbound_connections_response() :: #{binary() => any()}.


%% Example:
%% cancel_domain_config_change_request() :: #{
%%   <<"DryRun">> => boolean()
%% }
-type cancel_domain_config_change_request() :: #{binary() => any()}.


%% Example:
%% saml_options_output() :: #{
%%   <<"Enabled">> => boolean(),
%%   <<"Idp">> => saml_idp(),
%%   <<"RolesKey">> => string(),
%%   <<"SessionTimeoutMinutes">> => integer(),
%%   <<"SubjectKey">> => string()
%% }
-type saml_options_output() :: #{binary() => any()}.


%% Example:
%% cognito_options_status() :: #{
%%   <<"Options">> => cognito_options(),
%%   <<"Status">> => option_status()
%% }
-type cognito_options_status() :: #{binary() => any()}.


%% Example:
%% list_scheduled_actions_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_scheduled_actions_request() :: #{binary() => any()}.


%% Example:
%% j_w_t_options_input() :: #{
%%   <<"Enabled">> => boolean(),
%%   <<"PublicKey">> => string(),
%%   <<"RolesKey">> => string(),
%%   <<"SubjectKey">> => string()
%% }
-type j_w_t_options_input() :: #{binary() => any()}.

%% Example:
%% delete_domain_request() :: #{}
-type delete_domain_request() :: #{}.


%% Example:
%% auto_tune_maintenance_schedule() :: #{
%%   <<"CronExpressionForRecurrence">> => string(),
%%   <<"Duration">> => duration(),
%%   <<"StartAt">> => non_neg_integer()
%% }
-type auto_tune_maintenance_schedule() :: #{binary() => any()}.


%% Example:
%% list_packages_for_domain_response() :: #{
%%   <<"DomainPackageDetailsList">> => list(domain_package_details()()),
%%   <<"NextToken">> => string()
%% }
-type list_packages_for_domain_response() :: #{binary() => any()}.


%% Example:
%% get_compatible_versions_request() :: #{
%%   <<"DomainName">> => string()
%% }
-type get_compatible_versions_request() :: #{binary() => any()}.

%% Example:
%% list_data_sources_request() :: #{}
-type list_data_sources_request() :: #{}.


%% Example:
%% delete_data_source_response() :: #{
%%   <<"Message">> => string()
%% }
-type delete_data_source_response() :: #{binary() => any()}.


%% Example:
%% change_progress_status_details() :: #{
%%   <<"ChangeId">> => string(),
%%   <<"ChangeProgressStages">> => list(change_progress_stage()()),
%%   <<"CompletedProperties">> => list(string()()),
%%   <<"ConfigChangeStatus">> => list(any()),
%%   <<"InitiatedBy">> => list(any()),
%%   <<"LastUpdatedTime">> => non_neg_integer(),
%%   <<"PendingProperties">> => list(string()()),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"Status">> => list(any()),
%%   <<"TotalNumberOfStages">> => integer()
%% }
-type change_progress_status_details() :: #{binary() => any()}.


%% Example:
%% a_i_ml_options_output() :: #{
%%   <<"NaturalLanguageQueryGenerationOptions">> => natural_language_query_generation_options_output()
%% }
-type a_i_ml_options_output() :: #{binary() => any()}.


%% Example:
%% update_scheduled_action_request() :: #{
%%   <<"ActionID">> := string(),
%%   <<"ActionType">> := list(any()),
%%   <<"DesiredStartTime">> => float(),
%%   <<"ScheduleAt">> := list(any())
%% }
-type update_scheduled_action_request() :: #{binary() => any()}.


%% Example:
%% add_tags_request() :: #{
%%   <<"ARN">> := string(),
%%   <<"TagList">> := list(tag()())
%% }
-type add_tags_request() :: #{binary() => any()}.


%% Example:
%% validation_failure() :: #{
%%   <<"Code">> => string(),
%%   <<"Message">> => string()
%% }
-type validation_failure() :: #{binary() => any()}.


%% Example:
%% describe_reserved_instances_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ReservedInstanceId">> => string()
%% }
-type describe_reserved_instances_request() :: #{binary() => any()}.


%% Example:
%% upgrade_history() :: #{
%%   <<"StartTimestamp">> => non_neg_integer(),
%%   <<"StepsList">> => list(upgrade_step_item()()),
%%   <<"UpgradeName">> => string(),
%%   <<"UpgradeStatus">> => list(any())
%% }
-type upgrade_history() :: #{binary() => any()}.


%% Example:
%% node_config() :: #{
%%   <<"Count">> => integer(),
%%   <<"Enabled">> => boolean(),
%%   <<"Type">> => list(any())
%% }
-type node_config() :: #{binary() => any()}.


%% Example:
%% get_direct_query_data_source_response() :: #{
%%   <<"DataSourceArn">> => string(),
%%   <<"DataSourceName">> => string(),
%%   <<"DataSourceType">> => list(),
%%   <<"Description">> => string(),
%%   <<"OpenSearchArns">> => list(string()())
%% }
-type get_direct_query_data_source_response() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% delete_package_response() :: #{
%%   <<"PackageDetails">> => package_details()
%% }
-type delete_package_response() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% security_lake_direct_query_data_source() :: #{
%%   <<"RoleArn">> => string()
%% }
-type security_lake_direct_query_data_source() :: #{binary() => any()}.


%% Example:
%% create_domain_request() :: #{
%%   <<"AIMLOptions">> => a_i_ml_options_input(),
%%   <<"AccessPolicies">> => string(),
%%   <<"AdvancedOptions">> => map(),
%%   <<"AdvancedSecurityOptions">> => advanced_security_options_input(),
%%   <<"AutoTuneOptions">> => auto_tune_options_input(),
%%   <<"ClusterConfig">> => cluster_config(),
%%   <<"CognitoOptions">> => cognito_options(),
%%   <<"DomainEndpointOptions">> => domain_endpoint_options(),
%%   <<"DomainName">> := string(),
%%   <<"EBSOptions">> => ebs_options(),
%%   <<"EncryptionAtRestOptions">> => encryption_at_rest_options(),
%%   <<"EngineVersion">> => string(),
%%   <<"IPAddressType">> => list(any()),
%%   <<"IdentityCenterOptions">> => identity_center_options_input(),
%%   <<"LogPublishingOptions">> => map(),
%%   <<"NodeToNodeEncryptionOptions">> => node_to_node_encryption_options(),
%%   <<"OffPeakWindowOptions">> => off_peak_window_options(),
%%   <<"SnapshotOptions">> => snapshot_options(),
%%   <<"SoftwareUpdateOptions">> => software_update_options(),
%%   <<"TagList">> => list(tag()()),
%%   <<"VPCOptions">> => vpc_options()
%% }
-type create_domain_request() :: #{binary() => any()}.


%% Example:
%% describe_packages_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"PackageDetailsList">> => list(package_details()())
%% }
-type describe_packages_response() :: #{binary() => any()}.


%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.


%% Example:
%% dry_run_results() :: #{
%%   <<"DeploymentType">> => string(),
%%   <<"Message">> => string()
%% }
-type dry_run_results() :: #{binary() => any()}.


%% Example:
%% availability_zone_info() :: #{
%%   <<"AvailabilityZoneName">> => string(),
%%   <<"AvailableDataNodeCount">> => string(),
%%   <<"ConfiguredDataNodeCount">> => string(),
%%   <<"TotalShards">> => string(),
%%   <<"TotalUnAssignedShards">> => string(),
%%   <<"ZoneStatus">> => list(any())
%% }
-type availability_zone_info() :: #{binary() => any()}.


%% Example:
%% advanced_security_options() :: #{
%%   <<"AnonymousAuthDisableDate">> => non_neg_integer(),
%%   <<"AnonymousAuthEnabled">> => boolean(),
%%   <<"Enabled">> => boolean(),
%%   <<"InternalUserDatabaseEnabled">> => boolean(),
%%   <<"JWTOptions">> => j_w_t_options_output(),
%%   <<"SAMLOptions">> => saml_options_output()
%% }
-type advanced_security_options() :: #{binary() => any()}.


%% Example:
%% option_status() :: #{
%%   <<"CreationDate">> => non_neg_integer(),
%%   <<"PendingDeletion">> => boolean(),
%%   <<"State">> => list(any()),
%%   <<"UpdateDate">> => non_neg_integer(),
%%   <<"UpdateVersion">> => integer()
%% }
-type option_status() :: #{binary() => any()}.


%% Example:
%% off_peak_window_options_status() :: #{
%%   <<"Options">> => off_peak_window_options(),
%%   <<"Status">> => option_status()
%% }
-type off_peak_window_options_status() :: #{binary() => any()}.

%% Example:
%% get_data_source_request() :: #{}
-type get_data_source_request() :: #{}.


%% Example:
%% cancel_domain_config_change_response() :: #{
%%   <<"CancelledChangeIds">> => list(string()()),
%%   <<"CancelledChangeProperties">> => list(cancelled_change_property()()),
%%   <<"DryRun">> => boolean()
%% }
-type cancel_domain_config_change_response() :: #{binary() => any()}.


%% Example:
%% node_to_node_encryption_options_status() :: #{
%%   <<"Options">> => node_to_node_encryption_options(),
%%   <<"Status">> => option_status()
%% }
-type node_to_node_encryption_options_status() :: #{binary() => any()}.


%% Example:
%% get_upgrade_history_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"UpgradeHistories">> => list(upgrade_history()())
%% }
-type get_upgrade_history_response() :: #{binary() => any()}.


%% Example:
%% a_i_ml_options_status() :: #{
%%   <<"Options">> => a_i_ml_options_output(),
%%   <<"Status">> => option_status()
%% }
-type a_i_ml_options_status() :: #{binary() => any()}.


%% Example:
%% update_domain_config_response() :: #{
%%   <<"DomainConfig">> => domain_config(),
%%   <<"DryRunProgressStatus">> => dry_run_progress_status(),
%%   <<"DryRunResults">> => dry_run_results()
%% }
-type update_domain_config_response() :: #{binary() => any()}.


%% Example:
%% add_data_source_request() :: #{
%%   <<"DataSourceType">> := list(),
%%   <<"Description">> => string(),
%%   <<"Name">> := string()
%% }
-type add_data_source_request() :: #{binary() => any()}.


%% Example:
%% update_domain_config_request() :: #{
%%   <<"AIMLOptions">> => a_i_ml_options_input(),
%%   <<"AccessPolicies">> => string(),
%%   <<"AdvancedOptions">> => map(),
%%   <<"AdvancedSecurityOptions">> => advanced_security_options_input(),
%%   <<"AutoTuneOptions">> => auto_tune_options(),
%%   <<"ClusterConfig">> => cluster_config(),
%%   <<"CognitoOptions">> => cognito_options(),
%%   <<"DomainEndpointOptions">> => domain_endpoint_options(),
%%   <<"DryRun">> => boolean(),
%%   <<"DryRunMode">> => list(any()),
%%   <<"EBSOptions">> => ebs_options(),
%%   <<"EncryptionAtRestOptions">> => encryption_at_rest_options(),
%%   <<"IPAddressType">> => list(any()),
%%   <<"IdentityCenterOptions">> => identity_center_options_input(),
%%   <<"LogPublishingOptions">> => map(),
%%   <<"NodeToNodeEncryptionOptions">> => node_to_node_encryption_options(),
%%   <<"OffPeakWindowOptions">> => off_peak_window_options(),
%%   <<"SnapshotOptions">> => snapshot_options(),
%%   <<"SoftwareUpdateOptions">> => software_update_options(),
%%   <<"VPCOptions">> => vpc_options()
%% }
-type update_domain_config_request() :: #{binary() => any()}.


%% Example:
%% scheduled_action() :: #{
%%   <<"Cancellable">> => boolean(),
%%   <<"Description">> => string(),
%%   <<"Id">> => string(),
%%   <<"Mandatory">> => boolean(),
%%   <<"ScheduledBy">> => list(any()),
%%   <<"ScheduledTime">> => float(),
%%   <<"Severity">> => list(any()),
%%   <<"Status">> => list(any()),
%%   <<"Type">> => list(any())
%% }
-type scheduled_action() :: #{binary() => any()}.


%% Example:
%% list_scheduled_actions_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"ScheduledActions">> => list(scheduled_action()())
%% }
-type list_scheduled_actions_response() :: #{binary() => any()}.


%% Example:
%% off_peak_window_options() :: #{
%%   <<"Enabled">> => boolean(),
%%   <<"OffPeakWindow">> => off_peak_window()
%% }
-type off_peak_window_options() :: #{binary() => any()}.


%% Example:
%% connection_properties() :: #{
%%   <<"CrossClusterSearch">> => cross_cluster_search_connection_properties(),
%%   <<"Endpoint">> => string()
%% }
-type connection_properties() :: #{binary() => any()}.


%% Example:
%% dependency_failure_exception() :: #{
%%   <<"message">> => string()
%% }
-type dependency_failure_exception() :: #{binary() => any()}.


%% Example:
%% describe_domain_config_response() :: #{
%%   <<"DomainConfig">> => domain_config()
%% }
-type describe_domain_config_response() :: #{binary() => any()}.


%% Example:
%% describe_instance_type_limits_response() :: #{
%%   <<"LimitsByRole">> => map()
%% }
-type describe_instance_type_limits_response() :: #{binary() => any()}.


%% Example:
%% describe_vpc_endpoints_response() :: #{
%%   <<"VpcEndpointErrors">> => list(vpc_endpoint_error()()),
%%   <<"VpcEndpoints">> => list(vpc_endpoint()())
%% }
-type describe_vpc_endpoints_response() :: #{binary() => any()}.


%% Example:
%% delete_inbound_connection_response() :: #{
%%   <<"Connection">> => inbound_connection()
%% }
-type delete_inbound_connection_response() :: #{binary() => any()}.


%% Example:
%% list_data_sources_response() :: #{
%%   <<"DataSources">> => list(data_source_details()())
%% }
-type list_data_sources_response() :: #{binary() => any()}.

%% Example:
%% delete_data_source_request() :: #{}
-type delete_data_source_request() :: #{}.


%% Example:
%% describe_packages_filter() :: #{
%%   <<"Name">> => list(any()),
%%   <<"Value">> => list(string()())
%% }
-type describe_packages_filter() :: #{binary() => any()}.


%% Example:
%% update_vpc_endpoint_response() :: #{
%%   <<"VpcEndpoint">> => vpc_endpoint()
%% }
-type update_vpc_endpoint_response() :: #{binary() => any()}.

%% Example:
%% describe_domain_nodes_request() :: #{}
-type describe_domain_nodes_request() :: #{}.

%% Example:
%% delete_outbound_connection_request() :: #{}
-type delete_outbound_connection_request() :: #{}.


%% Example:
%% error_details() :: #{
%%   <<"ErrorMessage">> => string(),
%%   <<"ErrorType">> => string()
%% }
-type error_details() :: #{binary() => any()}.


%% Example:
%% describe_instance_type_limits_request() :: #{
%%   <<"DomainName">> => string()
%% }
-type describe_instance_type_limits_request() :: #{binary() => any()}.


%% Example:
%% encryption_at_rest_options() :: #{
%%   <<"Enabled">> => boolean(),
%%   <<"KmsKeyId">> => string()
%% }
-type encryption_at_rest_options() :: #{binary() => any()}.


%% Example:
%% list_direct_query_data_sources_request() :: #{
%%   <<"NextToken">> => string()
%% }
-type list_direct_query_data_sources_request() :: #{binary() => any()}.


%% Example:
%% get_package_version_history_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"PackageID">> => string(),
%%   <<"PackageVersionHistoryList">> => list(package_version_history()())
%% }
-type get_package_version_history_response() :: #{binary() => any()}.


%% Example:
%% describe_domain_response() :: #{
%%   <<"DomainStatus">> => domain_status()
%% }
-type describe_domain_response() :: #{binary() => any()}.


%% Example:
%% create_application_request() :: #{
%%   <<"appConfigs">> => list(app_config()()),
%%   <<"clientToken">> => string(),
%%   <<"dataSources">> => list(data_source()()),
%%   <<"iamIdentityCenterOptions">> => iam_identity_center_options_input(),
%%   <<"name">> := string(),
%%   <<"tagList">> => list(tag()())
%% }
-type create_application_request() :: #{binary() => any()}.


%% Example:
%% version_status() :: #{
%%   <<"Options">> => string(),
%%   <<"Status">> => option_status()
%% }
-type version_status() :: #{binary() => any()}.


%% Example:
%% list_vpc_endpoints_for_domain_request() :: #{
%%   <<"NextToken">> => string()
%% }
-type list_vpc_endpoints_for_domain_request() :: #{binary() => any()}.


%% Example:
%% saml_options_input() :: #{
%%   <<"Enabled">> => boolean(),
%%   <<"Idp">> => saml_idp(),
%%   <<"MasterBackendRole">> => string(),
%%   <<"MasterUserName">> => string(),
%%   <<"RolesKey">> => string(),
%%   <<"SessionTimeoutMinutes">> => integer(),
%%   <<"SubjectKey">> => string()
%% }
-type saml_options_input() :: #{binary() => any()}.


%% Example:
%% describe_reserved_instances_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"ReservedInstances">> => list(reserved_instance()())
%% }
-type describe_reserved_instances_response() :: #{binary() => any()}.

%% Example:
%% accept_inbound_connection_request() :: #{}
-type accept_inbound_connection_request() :: #{}.


%% Example:
%% vpc_endpoint() :: #{
%%   <<"DomainArn">> => string(),
%%   <<"Endpoint">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"VpcEndpointId">> => string(),
%%   <<"VpcEndpointOwner">> => string(),
%%   <<"VpcOptions">> => vpc_derived_info()
%% }
-type vpc_endpoint() :: #{binary() => any()}.


%% Example:
%% get_package_version_history_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type get_package_version_history_request() :: #{binary() => any()}.


%% Example:
%% scheduled_auto_tune_details() :: #{
%%   <<"Action">> => string(),
%%   <<"ActionType">> => list(any()),
%%   <<"Date">> => non_neg_integer(),
%%   <<"Severity">> => list(any())
%% }
-type scheduled_auto_tune_details() :: #{binary() => any()}.


%% Example:
%% create_application_response() :: #{
%%   <<"appConfigs">> => list(app_config()()),
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"dataSources">> => list(data_source()()),
%%   <<"iamIdentityCenterOptions">> => iam_identity_center_options(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"tagList">> => list(tag()())
%% }
-type create_application_response() :: #{binary() => any()}.


%% Example:
%% list_versions_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Versions">> => list(string()())
%% }
-type list_versions_response() :: #{binary() => any()}.


%% Example:
%% ip_address_type_status() :: #{
%%   <<"Options">> => list(any()),
%%   <<"Status">> => option_status()
%% }
-type ip_address_type_status() :: #{binary() => any()}.


%% Example:
%% ebs_options() :: #{
%%   <<"EBSEnabled">> => boolean(),
%%   <<"Iops">> => integer(),
%%   <<"Throughput">> => integer(),
%%   <<"VolumeSize">> => integer(),
%%   <<"VolumeType">> => list(any())
%% }
-type ebs_options() :: #{binary() => any()}.


%% Example:
%% update_package_request() :: #{
%%   <<"CommitMessage">> => string(),
%%   <<"PackageConfiguration">> => package_configuration(),
%%   <<"PackageDescription">> => string(),
%%   <<"PackageEncryptionOptions">> => package_encryption_options(),
%%   <<"PackageID">> := string(),
%%   <<"PackageSource">> := package_source()
%% }
-type update_package_request() :: #{binary() => any()}.


%% Example:
%% list_domain_names_response() :: #{
%%   <<"DomainNames">> => list(domain_info()())
%% }
-type list_domain_names_response() :: #{binary() => any()}.

%% Example:
%% describe_domain_health_request() :: #{}
-type describe_domain_health_request() :: #{}.


%% Example:
%% plugin_properties() :: #{
%%   <<"ClassName">> => string(),
%%   <<"Description">> => string(),
%%   <<"Name">> => string(),
%%   <<"UncompressedSizeInBytes">> => float(),
%%   <<"Version">> => string()
%% }
-type plugin_properties() :: #{binary() => any()}.


%% Example:
%% associate_package_request() :: #{
%%   <<"AssociationConfiguration">> => package_association_configuration(),
%%   <<"PrerequisitePackageIDList">> => list(string()())
%% }
-type associate_package_request() :: #{binary() => any()}.


%% Example:
%% filter() :: #{
%%   <<"Name">> => string(),
%%   <<"Values">> => list(string()())
%% }
-type filter() :: #{binary() => any()}.


%% Example:
%% inbound_connection() :: #{
%%   <<"ConnectionId">> => string(),
%%   <<"ConnectionMode">> => list(any()),
%%   <<"ConnectionStatus">> => inbound_connection_status(),
%%   <<"LocalDomainInfo">> => domain_information_container(),
%%   <<"RemoteDomainInfo">> => domain_information_container()
%% }
-type inbound_connection() :: #{binary() => any()}.

%% Example:
%% delete_application_response() :: #{}
-type delete_application_response() :: #{}.


%% Example:
%% s3_glue_data_catalog() :: #{
%%   <<"RoleArn">> => string()
%% }
-type s3_glue_data_catalog() :: #{binary() => any()}.


%% Example:
%% iam_identity_center_options() :: #{
%%   <<"enabled">> => boolean(),
%%   <<"iamIdentityCenterApplicationArn">> => string(),
%%   <<"iamIdentityCenterInstanceArn">> => string(),
%%   <<"iamRoleForIdentityCenterApplicationArn">> => string()
%% }
-type iam_identity_center_options() :: #{binary() => any()}.

%% Example:
%% dissociate_package_request() :: #{}
-type dissociate_package_request() :: #{}.


%% Example:
%% advanced_security_options_input() :: #{
%%   <<"AnonymousAuthEnabled">> => boolean(),
%%   <<"Enabled">> => boolean(),
%%   <<"InternalUserDatabaseEnabled">> => boolean(),
%%   <<"JWTOptions">> => j_w_t_options_input(),
%%   <<"MasterUserOptions">> => master_user_options(),
%%   <<"SAMLOptions">> => saml_options_input()
%% }
-type advanced_security_options_input() :: #{binary() => any()}.


%% Example:
%% data_source_details() :: #{
%%   <<"DataSourceType">> => list(),
%%   <<"Description">> => string(),
%%   <<"Name">> => string(),
%%   <<"Status">> => list(any())
%% }
-type data_source_details() :: #{binary() => any()}.


%% Example:
%% update_application_request() :: #{
%%   <<"appConfigs">> => list(app_config()()),
%%   <<"dataSources">> => list(data_source()())
%% }
-type update_application_request() :: #{binary() => any()}.


%% Example:
%% update_application_response() :: #{
%%   <<"appConfigs">> => list(app_config()()),
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"dataSources">> => list(data_source()()),
%%   <<"iamIdentityCenterOptions">> => iam_identity_center_options(),
%%   <<"id">> => string(),
%%   <<"lastUpdatedAt">> => non_neg_integer(),
%%   <<"name">> => string()
%% }
-type update_application_response() :: #{binary() => any()}.


%% Example:
%% identity_center_options() :: #{
%%   <<"EnabledAPIAccess">> => boolean(),
%%   <<"IdentityCenterApplicationARN">> => string(),
%%   <<"IdentityCenterInstanceARN">> => string(),
%%   <<"IdentityStoreId">> => string(),
%%   <<"RolesKey">> => list(any()),
%%   <<"SubjectKey">> => list(any())
%% }
-type identity_center_options() :: #{binary() => any()}.


%% Example:
%% domain_status() :: #{
%%   <<"IdentityCenterOptions">> => identity_center_options(),
%%   <<"DomainName">> => string(),
%%   <<"AutoTuneOptions">> => auto_tune_options_output(),
%%   <<"CognitoOptions">> => cognito_options(),
%%   <<"Processing">> => boolean(),
%%   <<"UpgradeProcessing">> => boolean(),
%%   <<"OffPeakWindowOptions">> => off_peak_window_options(),
%%   <<"SnapshotOptions">> => snapshot_options(),
%%   <<"LogPublishingOptions">> => map(),
%%   <<"ARN">> => string(),
%%   <<"DomainId">> => string(),
%%   <<"EndpointV2">> => string(),
%%   <<"ModifyingProperties">> => list(modifying_properties()()),
%%   <<"Created">> => boolean(),
%%   <<"DomainEndpointOptions">> => domain_endpoint_options(),
%%   <<"EngineVersion">> => string(),
%%   <<"AdvancedOptions">> => map(),
%%   <<"ServiceSoftwareOptions">> => service_software_options(),
%%   <<"IPAddressType">> => list(any()),
%%   <<"Endpoints">> => map(),
%%   <<"DomainEndpointV2HostedZoneId">> => string(),
%%   <<"SoftwareUpdateOptions">> => software_update_options(),
%%   <<"VPCOptions">> => vpc_derived_info(),
%%   <<"EncryptionAtRestOptions">> => encryption_at_rest_options(),
%%   <<"AccessPolicies">> => string(),
%%   <<"EBSOptions">> => ebs_options(),
%%   <<"Endpoint">> => string(),
%%   <<"ChangeProgressDetails">> => change_progress_details(),
%%   <<"ClusterConfig">> => cluster_config(),
%%   <<"AdvancedSecurityOptions">> => advanced_security_options(),
%%   <<"DomainProcessingStatus">> => list(any()),
%%   <<"Deleted">> => boolean(),
%%   <<"AIMLOptions">> => a_i_ml_options_output(),
%%   <<"NodeToNodeEncryptionOptions">> => node_to_node_encryption_options()
%% }
-type domain_status() :: #{binary() => any()}.


%% Example:
%% domain_info() :: #{
%%   <<"DomainName">> => string(),
%%   <<"EngineType">> => list(any())
%% }
-type domain_info() :: #{binary() => any()}.


%% Example:
%% cognito_options() :: #{
%%   <<"Enabled">> => boolean(),
%%   <<"IdentityPoolId">> => string(),
%%   <<"RoleArn">> => string(),
%%   <<"UserPoolId">> => string()
%% }
-type cognito_options() :: #{binary() => any()}.


%% Example:
%% list_vpc_endpoint_access_request() :: #{
%%   <<"NextToken">> => string()
%% }
-type list_vpc_endpoint_access_request() :: #{binary() => any()}.


%% Example:
%% create_vpc_endpoint_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"DomainArn">> := string(),
%%   <<"VpcOptions">> := vpc_options()
%% }
-type create_vpc_endpoint_request() :: #{binary() => any()}.


%% Example:
%% auto_tune_options_input() :: #{
%%   <<"DesiredState">> => list(any()),
%%   <<"MaintenanceSchedules">> => list(auto_tune_maintenance_schedule()()),
%%   <<"UseOffPeakWindow">> => boolean()
%% }
-type auto_tune_options_input() :: #{binary() => any()}.


%% Example:
%% cancelled_change_property() :: #{
%%   <<"ActiveValue">> => string(),
%%   <<"CancelledValue">> => string(),
%%   <<"PropertyName">> => string()
%% }
-type cancelled_change_property() :: #{binary() => any()}.


%% Example:
%% get_application_response() :: #{
%%   <<"appConfigs">> => list(app_config()()),
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"dataSources">> => list(data_source()()),
%%   <<"endpoint">> => string(),
%%   <<"iamIdentityCenterOptions">> => iam_identity_center_options(),
%%   <<"id">> => string(),
%%   <<"lastUpdatedAt">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"status">> => list(any())
%% }
-type get_application_response() :: #{binary() => any()}.


%% Example:
%% describe_domain_change_progress_response() :: #{
%%   <<"ChangeProgressStatus">> => change_progress_status_details()
%% }
-type describe_domain_change_progress_response() :: #{binary() => any()}.


%% Example:
%% instance_limits() :: #{
%%   <<"InstanceCountLimits">> => instance_count_limits()
%% }
-type instance_limits() :: #{binary() => any()}.


%% Example:
%% invalid_type_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_type_exception() :: #{binary() => any()}.


%% Example:
%% reserved_instance_offering() :: #{
%%   <<"CurrencyCode">> => string(),
%%   <<"Duration">> => integer(),
%%   <<"FixedPrice">> => float(),
%%   <<"InstanceType">> => list(any()),
%%   <<"PaymentOption">> => list(any()),
%%   <<"RecurringCharges">> => list(recurring_charge()()),
%%   <<"ReservedInstanceOfferingId">> => string(),
%%   <<"UsagePrice">> => float()
%% }
-type reserved_instance_offering() :: #{binary() => any()}.


%% Example:
%% change_progress_details() :: #{
%%   <<"ChangeId">> => string(),
%%   <<"ConfigChangeStatus">> => list(any()),
%%   <<"InitiatedBy">> => list(any()),
%%   <<"LastUpdatedTime">> => non_neg_integer(),
%%   <<"Message">> => string(),
%%   <<"StartTime">> => non_neg_integer()
%% }
-type change_progress_details() :: #{binary() => any()}.


%% Example:
%% describe_reserved_instance_offerings_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ReservedInstanceOfferingId">> => string()
%% }
-type describe_reserved_instance_offerings_request() :: #{binary() => any()}.


%% Example:
%% cancel_service_software_update_request() :: #{
%%   <<"DomainName">> := string()
%% }
-type cancel_service_software_update_request() :: #{binary() => any()}.


%% Example:
%% zone_awareness_config() :: #{
%%   <<"AvailabilityZoneCount">> => integer()
%% }
-type zone_awareness_config() :: #{binary() => any()}.


%% Example:
%% get_upgrade_history_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type get_upgrade_history_request() :: #{binary() => any()}.


%% Example:
%% aws_domain_information() :: #{
%%   <<"DomainName">> => string(),
%%   <<"OwnerId">> => string(),
%%   <<"Region">> => string()
%% }
-type aws_domain_information() :: #{binary() => any()}.


%% Example:
%% change_progress_stage() :: #{
%%   <<"Description">> => string(),
%%   <<"LastUpdated">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"Status">> => string()
%% }
-type change_progress_stage() :: #{binary() => any()}.


%% Example:
%% list_applications_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"statuses">> => list(list(any())())
%% }
-type list_applications_request() :: #{binary() => any()}.


%% Example:
%% key_store_access_option() :: #{
%%   <<"KeyAccessRoleArn">> => string(),
%%   <<"KeyStoreAccessEnabled">> => boolean()
%% }
-type key_store_access_option() :: #{binary() => any()}.


%% Example:
%% dissociate_package_response() :: #{
%%   <<"DomainPackageDetails">> => domain_package_details()
%% }
-type dissociate_package_response() :: #{binary() => any()}.


%% Example:
%% list_domain_maintenances_request() :: #{
%%   <<"Action">> => list(any()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"Status">> => list(any())
%% }
-type list_domain_maintenances_request() :: #{binary() => any()}.

%% Example:
%% delete_package_request() :: #{}
-type delete_package_request() :: #{}.


%% Example:
%% internal_exception() :: #{
%%   <<"message">> => string()
%% }
-type internal_exception() :: #{binary() => any()}.


%% Example:
%% iam_identity_center_options_input() :: #{
%%   <<"enabled">> => boolean(),
%%   <<"iamIdentityCenterInstanceArn">> => string(),
%%   <<"iamRoleForIdentityCenterApplicationArn">> => string()
%% }
-type iam_identity_center_options_input() :: #{binary() => any()}.


%% Example:
%% package_details_for_association() :: #{
%%   <<"AssociationConfiguration">> => package_association_configuration(),
%%   <<"PackageID">> => string(),
%%   <<"PrerequisitePackageIDList">> => list(string()())
%% }
-type package_details_for_association() :: #{binary() => any()}.


%% Example:
%% app_config() :: #{
%%   <<"key">> => list(any()),
%%   <<"value">> => string()
%% }
-type app_config() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% describe_domain_request() :: #{}
-type describe_domain_request() :: #{}.


%% Example:
%% natural_language_query_generation_options_input() :: #{
%%   <<"DesiredState">> => list(any())
%% }
-type natural_language_query_generation_options_input() :: #{binary() => any()}.


%% Example:
%% domain_nodes_status() :: #{
%%   <<"AvailabilityZone">> => string(),
%%   <<"InstanceType">> => list(any()),
%%   <<"NodeId">> => string(),
%%   <<"NodeStatus">> => list(any()),
%%   <<"NodeType">> => list(any()),
%%   <<"StorageSize">> => string(),
%%   <<"StorageType">> => string(),
%%   <<"StorageVolumeType">> => list(any())
%% }
-type domain_nodes_status() :: #{binary() => any()}.


%% Example:
%% list_packages_for_domain_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_packages_for_domain_request() :: #{binary() => any()}.


%% Example:
%% advanced_security_options_status() :: #{
%%   <<"Options">> => advanced_security_options(),
%%   <<"Status">> => option_status()
%% }
-type advanced_security_options_status() :: #{binary() => any()}.


%% Example:
%% duration() :: #{
%%   <<"Unit">> => list(any()),
%%   <<"Value">> => float()
%% }
-type duration() :: #{binary() => any()}.


%% Example:
%% node_option() :: #{
%%   <<"NodeConfig">> => node_config(),
%%   <<"NodeType">> => list(any())
%% }
-type node_option() :: #{binary() => any()}.


%% Example:
%% package_encryption_options() :: #{
%%   <<"EncryptionEnabled">> => boolean(),
%%   <<"KmsKeyIdentifier">> => string()
%% }
-type package_encryption_options() :: #{binary() => any()}.


%% Example:
%% list_domains_for_package_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_domains_for_package_request() :: #{binary() => any()}.


%% Example:
%% purchase_reserved_instance_offering_response() :: #{
%%   <<"ReservationName">> => string(),
%%   <<"ReservedInstanceId">> => string()
%% }
-type purchase_reserved_instance_offering_response() :: #{binary() => any()}.


%% Example:
%% slot_not_available_exception() :: #{
%%   <<"SlotSuggestions">> => list(float()()),
%%   <<"message">> => string()
%% }
-type slot_not_available_exception() :: #{binary() => any()}.


%% Example:
%% authorize_vpc_endpoint_access_request() :: #{
%%   <<"Account">> => string(),
%%   <<"Service">> => list(any())
%% }
-type authorize_vpc_endpoint_access_request() :: #{binary() => any()}.


%% Example:
%% service_software_options() :: #{
%%   <<"AutomatedUpdateDate">> => non_neg_integer(),
%%   <<"Cancellable">> => boolean(),
%%   <<"CurrentVersion">> => string(),
%%   <<"Description">> => string(),
%%   <<"NewVersion">> => string(),
%%   <<"OptionalDeployment">> => boolean(),
%%   <<"UpdateAvailable">> => boolean(),
%%   <<"UpdateStatus">> => list(any())
%% }
-type service_software_options() :: #{binary() => any()}.


%% Example:
%% log_publishing_options_status() :: #{
%%   <<"Options">> => map(),
%%   <<"Status">> => option_status()
%% }
-type log_publishing_options_status() :: #{binary() => any()}.


%% Example:
%% upgrade_domain_request() :: #{
%%   <<"AdvancedOptions">> => map(),
%%   <<"DomainName">> := string(),
%%   <<"PerformCheckOnly">> => boolean(),
%%   <<"TargetVersion">> := string()
%% }
-type upgrade_domain_request() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"message">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.


%% Example:
%% start_service_software_update_request() :: #{
%%   <<"DesiredStartTime">> => float(),
%%   <<"DomainName">> := string(),
%%   <<"ScheduleAt">> => list(any())
%% }
-type start_service_software_update_request() :: #{binary() => any()}.


%% Example:
%% list_instance_type_details_request() :: #{
%%   <<"DomainName">> => string(),
%%   <<"InstanceType">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"RetrieveAZs">> => boolean()
%% }
-type list_instance_type_details_request() :: #{binary() => any()}.


%% Example:
%% j_w_t_options_output() :: #{
%%   <<"Enabled">> => boolean(),
%%   <<"PublicKey">> => string(),
%%   <<"RolesKey">> => string(),
%%   <<"SubjectKey">> => string()
%% }
-type j_w_t_options_output() :: #{binary() => any()}.


%% Example:
%% auto_tune_options() :: #{
%%   <<"DesiredState">> => list(any()),
%%   <<"MaintenanceSchedules">> => list(auto_tune_maintenance_schedule()()),
%%   <<"RollbackOnDisable">> => list(any()),
%%   <<"UseOffPeakWindow">> => boolean()
%% }
-type auto_tune_options() :: #{binary() => any()}.


%% Example:
%% software_update_options() :: #{
%%   <<"AutoSoftwareUpdateEnabled">> => boolean()
%% }
-type software_update_options() :: #{binary() => any()}.


%% Example:
%% update_data_source_request() :: #{
%%   <<"DataSourceType">> := list(),
%%   <<"Description">> => string(),
%%   <<"Status">> => list(any())
%% }
-type update_data_source_request() :: #{binary() => any()}.


%% Example:
%% a_i_ml_options_input() :: #{
%%   <<"NaturalLanguageQueryGenerationOptions">> => natural_language_query_generation_options_input()
%% }
-type a_i_ml_options_input() :: #{binary() => any()}.

%% Example:
%% get_upgrade_status_request() :: #{}
-type get_upgrade_status_request() :: #{}.


%% Example:
%% upgrade_domain_response() :: #{
%%   <<"AdvancedOptions">> => map(),
%%   <<"ChangeProgressDetails">> => change_progress_details(),
%%   <<"DomainName">> => string(),
%%   <<"PerformCheckOnly">> => boolean(),
%%   <<"TargetVersion">> => string(),
%%   <<"UpgradeId">> => string()
%% }
-type upgrade_domain_response() :: #{binary() => any()}.

%% Example:
%% delete_vpc_endpoint_request() :: #{}
-type delete_vpc_endpoint_request() :: #{}.


%% Example:
%% create_domain_response() :: #{
%%   <<"DomainStatus">> => domain_status()
%% }
-type create_domain_response() :: #{binary() => any()}.


%% Example:
%% base_exception() :: #{
%%   <<"message">> => string()
%% }
-type base_exception() :: #{binary() => any()}.


%% Example:
%% node_to_node_encryption_options() :: #{
%%   <<"Enabled">> => boolean()
%% }
-type node_to_node_encryption_options() :: #{binary() => any()}.


%% Example:
%% list_versions_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_versions_request() :: #{binary() => any()}.


%% Example:
%% create_package_response() :: #{
%%   <<"PackageDetails">> => package_details()
%% }
-type create_package_response() :: #{binary() => any()}.


%% Example:
%% limits() :: #{
%%   <<"AdditionalLimits">> => list(additional_limit()()),
%%   <<"InstanceLimits">> => instance_limits(),
%%   <<"StorageTypes">> => list(storage_type()())
%% }
-type limits() :: #{binary() => any()}.


%% Example:
%% describe_dry_run_progress_request() :: #{
%%   <<"DryRunId">> => string(),
%%   <<"LoadDryRunConfig">> => boolean()
%% }
-type describe_dry_run_progress_request() :: #{binary() => any()}.


%% Example:
%% start_domain_maintenance_response() :: #{
%%   <<"MaintenanceId">> => string()
%% }
-type start_domain_maintenance_response() :: #{binary() => any()}.

%% Example:
%% delete_direct_query_data_source_request() :: #{}
-type delete_direct_query_data_source_request() :: #{}.


%% Example:
%% application_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"endpoint">> => string(),
%%   <<"id">> => string(),
%%   <<"lastUpdatedAt">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"status">> => list(any())
%% }
-type application_summary() :: #{binary() => any()}.


%% Example:
%% revoke_vpc_endpoint_access_request() :: #{
%%   <<"Account">> => string(),
%%   <<"Service">> => list(any())
%% }
-type revoke_vpc_endpoint_access_request() :: #{binary() => any()}.


%% Example:
%% environment_info() :: #{
%%   <<"AvailabilityZoneInformation">> => list(availability_zone_info()())
%% }
-type environment_info() :: #{binary() => any()}.


%% Example:
%% vpc_options() :: #{
%%   <<"SecurityGroupIds">> => list(string()()),
%%   <<"SubnetIds">> => list(string()())
%% }
-type vpc_options() :: #{binary() => any()}.


%% Example:
%% describe_domains_response() :: #{
%%   <<"DomainStatusList">> => list(domain_status()())
%% }
-type describe_domains_response() :: #{binary() => any()}.


%% Example:
%% limit_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type limit_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% delete_outbound_connection_response() :: #{
%%   <<"Connection">> => outbound_connection()
%% }
-type delete_outbound_connection_response() :: #{binary() => any()}.


%% Example:
%% cluster_config() :: #{
%%   <<"ColdStorageOptions">> => cold_storage_options(),
%%   <<"DedicatedMasterCount">> => integer(),
%%   <<"DedicatedMasterEnabled">> => boolean(),
%%   <<"DedicatedMasterType">> => list(any()),
%%   <<"InstanceCount">> => integer(),
%%   <<"InstanceType">> => list(any()),
%%   <<"MultiAZWithStandbyEnabled">> => boolean(),
%%   <<"NodeOptions">> => list(node_option()()),
%%   <<"WarmCount">> => integer(),
%%   <<"WarmEnabled">> => boolean(),
%%   <<"WarmType">> => list(any()),
%%   <<"ZoneAwarenessConfig">> => zone_awareness_config(),
%%   <<"ZoneAwarenessEnabled">> => boolean()
%% }
-type cluster_config() :: #{binary() => any()}.


%% Example:
%% create_vpc_endpoint_response() :: #{
%%   <<"VpcEndpoint">> => vpc_endpoint()
%% }
-type create_vpc_endpoint_response() :: #{binary() => any()}.


%% Example:
%% list_applications_response() :: #{
%%   <<"ApplicationSummaries">> => list(application_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_applications_response() :: #{binary() => any()}.


%% Example:
%% identity_center_options_status() :: #{
%%   <<"Options">> => identity_center_options(),
%%   <<"Status">> => option_status()
%% }
-type identity_center_options_status() :: #{binary() => any()}.


%% Example:
%% add_direct_query_data_source_request() :: #{
%%   <<"DataSourceName">> := string(),
%%   <<"DataSourceType">> := list(),
%%   <<"Description">> => string(),
%%   <<"OpenSearchArns">> := list(string()()),
%%   <<"TagList">> => list(tag()())
%% }
-type add_direct_query_data_source_request() :: #{binary() => any()}.


%% Example:
%% domain_endpoint_options_status() :: #{
%%   <<"Options">> => domain_endpoint_options(),
%%   <<"Status">> => option_status()
%% }
-type domain_endpoint_options_status() :: #{binary() => any()}.


%% Example:
%% describe_inbound_connections_request() :: #{
%%   <<"Filters">> => list(filter()()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type describe_inbound_connections_request() :: #{binary() => any()}.


%% Example:
%% update_direct_query_data_source_request() :: #{
%%   <<"DataSourceType">> := list(),
%%   <<"Description">> => string(),
%%   <<"OpenSearchArns">> := list(string()())
%% }
-type update_direct_query_data_source_request() :: #{binary() => any()}.


%% Example:
%% domain_package_details() :: #{
%%   <<"AssociationConfiguration">> => package_association_configuration(),
%%   <<"DomainName">> => string(),
%%   <<"DomainPackageStatus">> => list(any()),
%%   <<"ErrorDetails">> => error_details(),
%%   <<"LastUpdated">> => non_neg_integer(),
%%   <<"PackageID">> => string(),
%%   <<"PackageName">> => string(),
%%   <<"PackageType">> => list(any()),
%%   <<"PackageVersion">> => string(),
%%   <<"PrerequisitePackageIDList">> => list(string()()),
%%   <<"ReferencePath">> => string()
%% }
-type domain_package_details() :: #{binary() => any()}.


%% Example:
%% advanced_options_status() :: #{
%%   <<"Options">> => map(),
%%   <<"Status">> => option_status()
%% }
-type advanced_options_status() :: #{binary() => any()}.


%% Example:
%% access_policies_status() :: #{
%%   <<"Options">> => string(),
%%   <<"Status">> => option_status()
%% }
-type access_policies_status() :: #{binary() => any()}.


%% Example:
%% reserved_instance() :: #{
%%   <<"BillingSubscriptionId">> => float(),
%%   <<"CurrencyCode">> => string(),
%%   <<"Duration">> => integer(),
%%   <<"FixedPrice">> => float(),
%%   <<"InstanceCount">> => integer(),
%%   <<"InstanceType">> => list(any()),
%%   <<"PaymentOption">> => list(any()),
%%   <<"RecurringCharges">> => list(recurring_charge()()),
%%   <<"ReservationName">> => string(),
%%   <<"ReservedInstanceId">> => string(),
%%   <<"ReservedInstanceOfferingId">> => string(),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"State">> => string(),
%%   <<"UsagePrice">> => float()
%% }
-type reserved_instance() :: #{binary() => any()}.


%% Example:
%% package_version_history() :: #{
%%   <<"CommitMessage">> => string(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"PackageConfiguration">> => package_configuration(),
%%   <<"PackageVersion">> => string(),
%%   <<"PluginProperties">> => plugin_properties()
%% }
-type package_version_history() :: #{binary() => any()}.

%% Example:
%% get_direct_query_data_source_request() :: #{}
-type get_direct_query_data_source_request() :: #{}.


%% Example:
%% resource_already_exists_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_already_exists_exception() :: #{binary() => any()}.


%% Example:
%% data_source() :: #{
%%   <<"dataSourceArn">> => string(),
%%   <<"dataSourceDescription">> => string()
%% }
-type data_source() :: #{binary() => any()}.


%% Example:
%% update_vpc_endpoint_request() :: #{
%%   <<"VpcEndpointId">> := string(),
%%   <<"VpcOptions">> := vpc_options()
%% }
-type update_vpc_endpoint_request() :: #{binary() => any()}.


%% Example:
%% remove_tags_request() :: #{
%%   <<"ARN">> := string(),
%%   <<"TagKeys">> := list(string()())
%% }
-type remove_tags_request() :: #{binary() => any()}.


%% Example:
%% associate_packages_request() :: #{
%%   <<"DomainName">> := string(),
%%   <<"PackageList">> := list(package_details_for_association()())
%% }
-type associate_packages_request() :: #{binary() => any()}.


%% Example:
%% list_domain_maintenances_response() :: #{
%%   <<"DomainMaintenances">> => list(domain_maintenance_details()()),
%%   <<"NextToken">> => string()
%% }
-type list_domain_maintenances_response() :: #{binary() => any()}.


%% Example:
%% list_tags_request() :: #{
%%   <<"ARN">> := string()
%% }
-type list_tags_request() :: #{binary() => any()}.


%% Example:
%% cancel_service_software_update_response() :: #{
%%   <<"ServiceSoftwareOptions">> => service_software_options()
%% }
-type cancel_service_software_update_response() :: #{binary() => any()}.


%% Example:
%% auto_tune() :: #{
%%   <<"AutoTuneDetails">> => auto_tune_details(),
%%   <<"AutoTuneType">> => list(any())
%% }
-type auto_tune() :: #{binary() => any()}.


%% Example:
%% purchase_reserved_instance_offering_request() :: #{
%%   <<"InstanceCount">> => integer(),
%%   <<"ReservationName">> := string(),
%%   <<"ReservedInstanceOfferingId">> := string()
%% }
-type purchase_reserved_instance_offering_request() :: #{binary() => any()}.


%% Example:
%% describe_packages_request() :: #{
%%   <<"Filters">> => list(describe_packages_filter()()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type describe_packages_request() :: #{binary() => any()}.


%% Example:
%% cross_cluster_search_connection_properties() :: #{
%%   <<"SkipUnavailable">> => list(any())
%% }
-type cross_cluster_search_connection_properties() :: #{binary() => any()}.


%% Example:
%% upgrade_step_item() :: #{
%%   <<"Issues">> => list(string()()),
%%   <<"ProgressPercent">> => float(),
%%   <<"UpgradeStep">> => list(any()),
%%   <<"UpgradeStepStatus">> => list(any())
%% }
-type upgrade_step_item() :: #{binary() => any()}.


%% Example:
%% log_publishing_option() :: #{
%%   <<"CloudWatchLogsLogGroupArn">> => string(),
%%   <<"Enabled">> => boolean()
%% }
-type log_publishing_option() :: #{binary() => any()}.


%% Example:
%% add_direct_query_data_source_response() :: #{
%%   <<"DataSourceArn">> => string()
%% }
-type add_direct_query_data_source_response() :: #{binary() => any()}.


%% Example:
%% list_vpc_endpoint_access_response() :: #{
%%   <<"AuthorizedPrincipalList">> => list(authorized_principal()()),
%%   <<"NextToken">> => string()
%% }
-type list_vpc_endpoint_access_response() :: #{binary() => any()}.


%% Example:
%% get_data_source_response() :: #{
%%   <<"DataSourceType">> => list(),
%%   <<"Description">> => string(),
%%   <<"Name">> => string(),
%%   <<"Status">> => list(any())
%% }
-type get_data_source_response() :: #{binary() => any()}.


%% Example:
%% list_instance_type_details_response() :: #{
%%   <<"InstanceTypeDetails">> => list(instance_type_details()()),
%%   <<"NextToken">> => string()
%% }
-type list_instance_type_details_response() :: #{binary() => any()}.

%% Example:
%% get_application_request() :: #{}
-type get_application_request() :: #{}.


%% Example:
%% vpc_endpoint_error() :: #{
%%   <<"ErrorCode">> => list(any()),
%%   <<"ErrorMessage">> => string(),
%%   <<"VpcEndpointId">> => string()
%% }
-type vpc_endpoint_error() :: #{binary() => any()}.


%% Example:
%% get_upgrade_status_response() :: #{
%%   <<"StepStatus">> => list(any()),
%%   <<"UpgradeName">> => string(),
%%   <<"UpgradeStep">> => list(any())
%% }
-type get_upgrade_status_response() :: #{binary() => any()}.


%% Example:
%% domain_endpoint_options() :: #{
%%   <<"CustomEndpoint">> => string(),
%%   <<"CustomEndpointCertificateArn">> => string(),
%%   <<"CustomEndpointEnabled">> => boolean(),
%%   <<"EnforceHTTPS">> => boolean(),
%%   <<"TLSSecurityPolicy">> => list(any())
%% }
-type domain_endpoint_options() :: #{binary() => any()}.


%% Example:
%% update_direct_query_data_source_response() :: #{
%%   <<"DataSourceArn">> => string()
%% }
-type update_direct_query_data_source_response() :: #{binary() => any()}.


%% Example:
%% associate_package_response() :: #{
%%   <<"DomainPackageDetails">> => domain_package_details()
%% }
-type associate_package_response() :: #{binary() => any()}.


%% Example:
%% encryption_at_rest_options_status() :: #{
%%   <<"Options">> => encryption_at_rest_options(),
%%   <<"Status">> => option_status()
%% }
-type encryption_at_rest_options_status() :: #{binary() => any()}.


%% Example:
%% domain_information_container() :: #{
%%   <<"AWSDomainInformation">> => aws_domain_information()
%% }
-type domain_information_container() :: #{binary() => any()}.


%% Example:
%% instance_count_limits() :: #{
%%   <<"MaximumInstanceCount">> => integer(),
%%   <<"MinimumInstanceCount">> => integer()
%% }
-type instance_count_limits() :: #{binary() => any()}.


%% Example:
%% describe_domain_nodes_response() :: #{
%%   <<"DomainNodesStatusList">> => list(domain_nodes_status()())
%% }
-type describe_domain_nodes_response() :: #{binary() => any()}.

%% Example:
%% revoke_vpc_endpoint_access_response() :: #{}
-type revoke_vpc_endpoint_access_response() :: #{}.


%% Example:
%% software_update_options_status() :: #{
%%   <<"Options">> => software_update_options(),
%%   <<"Status">> => option_status()
%% }
-type software_update_options_status() :: #{binary() => any()}.


%% Example:
%% off_peak_window() :: #{
%%   <<"WindowStartTime">> => window_start_time()
%% }
-type off_peak_window() :: #{binary() => any()}.

%% Example:
%% delete_application_request() :: #{}
-type delete_application_request() :: #{}.


%% Example:
%% list_domains_for_package_response() :: #{
%%   <<"DomainPackageDetailsList">> => list(domain_package_details()()),
%%   <<"NextToken">> => string()
%% }
-type list_domains_for_package_response() :: #{binary() => any()}.


%% Example:
%% invalid_pagination_token_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_pagination_token_exception() :: #{binary() => any()}.


%% Example:
%% get_compatible_versions_response() :: #{
%%   <<"CompatibleVersions">> => list(compatible_versions_map()())
%% }
-type get_compatible_versions_response() :: #{binary() => any()}.


%% Example:
%% dissociate_packages_request() :: #{
%%   <<"DomainName">> := string(),
%%   <<"PackageList">> := list(string()())
%% }
-type dissociate_packages_request() :: #{binary() => any()}.


%% Example:
%% master_user_options() :: #{
%%   <<"MasterUserARN">> => string(),
%%   <<"MasterUserName">> => string(),
%%   <<"MasterUserPassword">> => string()
%% }
-type master_user_options() :: #{binary() => any()}.

-type accept_inbound_connection_errors() ::
    limit_exceeded_exception() | 
    resource_not_found_exception() | 
    disabled_operation_exception().

-type add_data_source_errors() ::
    limit_exceeded_exception() | 
    base_exception() | 
    validation_exception() | 
    internal_exception() | 
    dependency_failure_exception() | 
    resource_not_found_exception() | 
    disabled_operation_exception().

-type add_direct_query_data_source_errors() ::
    limit_exceeded_exception() | 
    base_exception() | 
    validation_exception() | 
    internal_exception() | 
    resource_not_found_exception() | 
    disabled_operation_exception().

-type add_tags_errors() ::
    limit_exceeded_exception() | 
    base_exception() | 
    validation_exception() | 
    internal_exception().

-type associate_package_errors() ::
    base_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type associate_packages_errors() ::
    base_exception() | 
    validation_exception() | 
    internal_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    disabled_operation_exception().

-type authorize_vpc_endpoint_access_errors() ::
    limit_exceeded_exception() | 
    base_exception() | 
    validation_exception() | 
    internal_exception() | 
    resource_not_found_exception() | 
    disabled_operation_exception().

-type cancel_domain_config_change_errors() ::
    base_exception() | 
    validation_exception() | 
    internal_exception() | 
    resource_not_found_exception() | 
    disabled_operation_exception().

-type cancel_service_software_update_errors() ::
    base_exception() | 
    validation_exception() | 
    internal_exception() | 
    resource_not_found_exception().

-type create_application_errors() ::
    base_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_exception() | 
    conflict_exception() | 
    disabled_operation_exception().

-type create_domain_errors() ::
    resource_already_exists_exception() | 
    limit_exceeded_exception() | 
    base_exception() | 
    validation_exception() | 
    internal_exception() | 
    invalid_type_exception() | 
    disabled_operation_exception().

-type create_outbound_connection_errors() ::
    resource_already_exists_exception() | 
    limit_exceeded_exception() | 
    internal_exception() | 
    disabled_operation_exception().

-type create_package_errors() ::
    resource_already_exists_exception() | 
    limit_exceeded_exception() | 
    base_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_exception() | 
    invalid_type_exception().

-type create_vpc_endpoint_errors() ::
    limit_exceeded_exception() | 
    base_exception() | 
    validation_exception() | 
    internal_exception() | 
    conflict_exception() | 
    disabled_operation_exception().

-type delete_application_errors() ::
    base_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    disabled_operation_exception().

-type delete_data_source_errors() ::
    base_exception() | 
    validation_exception() | 
    internal_exception() | 
    dependency_failure_exception() | 
    resource_not_found_exception() | 
    disabled_operation_exception().

-type delete_direct_query_data_source_errors() ::
    base_exception() | 
    validation_exception() | 
    internal_exception() | 
    resource_not_found_exception() | 
    disabled_operation_exception().

-type delete_domain_errors() ::
    base_exception() | 
    validation_exception() | 
    internal_exception() | 
    resource_not_found_exception().

-type delete_inbound_connection_errors() ::
    resource_not_found_exception() | 
    disabled_operation_exception().

-type delete_outbound_connection_errors() ::
    resource_not_found_exception() | 
    disabled_operation_exception().

-type delete_package_errors() ::
    base_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_vpc_endpoint_errors() ::
    base_exception() | 
    internal_exception() | 
    resource_not_found_exception() | 
    disabled_operation_exception().

-type describe_domain_errors() ::
    base_exception() | 
    validation_exception() | 
    internal_exception() | 
    resource_not_found_exception().

-type describe_domain_auto_tunes_errors() ::
    base_exception() | 
    validation_exception() | 
    internal_exception() | 
    resource_not_found_exception().

-type describe_domain_change_progress_errors() ::
    base_exception() | 
    validation_exception() | 
    internal_exception() | 
    resource_not_found_exception().

-type describe_domain_config_errors() ::
    base_exception() | 
    validation_exception() | 
    internal_exception() | 
    resource_not_found_exception().

-type describe_domain_health_errors() ::
    base_exception() | 
    validation_exception() | 
    internal_exception() | 
    resource_not_found_exception() | 
    disabled_operation_exception().

-type describe_domain_nodes_errors() ::
    base_exception() | 
    validation_exception() | 
    internal_exception() | 
    dependency_failure_exception() | 
    resource_not_found_exception() | 
    disabled_operation_exception().

-type describe_domains_errors() ::
    base_exception() | 
    validation_exception() | 
    internal_exception().

-type describe_dry_run_progress_errors() ::
    base_exception() | 
    validation_exception() | 
    internal_exception() | 
    resource_not_found_exception() | 
    disabled_operation_exception().

-type describe_inbound_connections_errors() ::
    invalid_pagination_token_exception() | 
    disabled_operation_exception().

-type describe_instance_type_limits_errors() ::
    limit_exceeded_exception() | 
    base_exception() | 
    validation_exception() | 
    internal_exception() | 
    invalid_type_exception() | 
    resource_not_found_exception().

-type describe_outbound_connections_errors() ::
    invalid_pagination_token_exception() | 
    disabled_operation_exception().

-type describe_packages_errors() ::
    base_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_exception() | 
    resource_not_found_exception().

-type describe_reserved_instance_offerings_errors() ::
    validation_exception() | 
    internal_exception() | 
    resource_not_found_exception() | 
    disabled_operation_exception().

-type describe_reserved_instances_errors() ::
    validation_exception() | 
    internal_exception() | 
    resource_not_found_exception() | 
    disabled_operation_exception().

-type describe_vpc_endpoints_errors() ::
    base_exception() | 
    validation_exception() | 
    internal_exception() | 
    disabled_operation_exception().

-type dissociate_package_errors() ::
    base_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type dissociate_packages_errors() ::
    base_exception() | 
    validation_exception() | 
    internal_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    disabled_operation_exception().

-type get_application_errors() ::
    base_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_exception() | 
    resource_not_found_exception() | 
    disabled_operation_exception().

-type get_compatible_versions_errors() ::
    base_exception() | 
    validation_exception() | 
    internal_exception() | 
    resource_not_found_exception() | 
    disabled_operation_exception().

-type get_data_source_errors() ::
    base_exception() | 
    validation_exception() | 
    internal_exception() | 
    dependency_failure_exception() | 
    resource_not_found_exception() | 
    disabled_operation_exception().

-type get_direct_query_data_source_errors() ::
    base_exception() | 
    validation_exception() | 
    internal_exception() | 
    resource_not_found_exception() | 
    disabled_operation_exception().

-type get_domain_maintenance_status_errors() ::
    base_exception() | 
    validation_exception() | 
    internal_exception() | 
    resource_not_found_exception() | 
    disabled_operation_exception().

-type get_package_version_history_errors() ::
    base_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_exception() | 
    resource_not_found_exception().

-type get_upgrade_history_errors() ::
    base_exception() | 
    validation_exception() | 
    internal_exception() | 
    resource_not_found_exception() | 
    disabled_operation_exception().

-type get_upgrade_status_errors() ::
    base_exception() | 
    validation_exception() | 
    internal_exception() | 
    resource_not_found_exception() | 
    disabled_operation_exception().

-type list_applications_errors() ::
    base_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_exception() | 
    resource_not_found_exception() | 
    disabled_operation_exception().

-type list_data_sources_errors() ::
    base_exception() | 
    validation_exception() | 
    internal_exception() | 
    dependency_failure_exception() | 
    resource_not_found_exception() | 
    disabled_operation_exception().

-type list_direct_query_data_sources_errors() ::
    base_exception() | 
    validation_exception() | 
    internal_exception() | 
    resource_not_found_exception() | 
    disabled_operation_exception().

-type list_domain_maintenances_errors() ::
    base_exception() | 
    validation_exception() | 
    internal_exception() | 
    resource_not_found_exception() | 
    disabled_operation_exception().

-type list_domain_names_errors() ::
    base_exception() | 
    validation_exception().

-type list_domains_for_package_errors() ::
    base_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_exception() | 
    resource_not_found_exception().

-type list_instance_type_details_errors() ::
    base_exception() | 
    validation_exception() | 
    internal_exception() | 
    resource_not_found_exception().

-type list_packages_for_domain_errors() ::
    base_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_exception() | 
    resource_not_found_exception().

-type list_scheduled_actions_errors() ::
    invalid_pagination_token_exception() | 
    base_exception() | 
    validation_exception() | 
    internal_exception() | 
    resource_not_found_exception().

-type list_tags_errors() ::
    base_exception() | 
    validation_exception() | 
    internal_exception() | 
    resource_not_found_exception().

-type list_versions_errors() ::
    base_exception() | 
    validation_exception() | 
    internal_exception() | 
    resource_not_found_exception().

-type list_vpc_endpoint_access_errors() ::
    base_exception() | 
    internal_exception() | 
    resource_not_found_exception() | 
    disabled_operation_exception().

-type list_vpc_endpoints_errors() ::
    base_exception() | 
    internal_exception() | 
    disabled_operation_exception().

-type list_vpc_endpoints_for_domain_errors() ::
    base_exception() | 
    internal_exception() | 
    resource_not_found_exception() | 
    disabled_operation_exception().

-type purchase_reserved_instance_offering_errors() ::
    resource_already_exists_exception() | 
    limit_exceeded_exception() | 
    validation_exception() | 
    internal_exception() | 
    resource_not_found_exception() | 
    disabled_operation_exception().

-type reject_inbound_connection_errors() ::
    resource_not_found_exception() | 
    disabled_operation_exception().

-type remove_tags_errors() ::
    base_exception() | 
    validation_exception() | 
    internal_exception().

-type revoke_vpc_endpoint_access_errors() ::
    base_exception() | 
    validation_exception() | 
    internal_exception() | 
    resource_not_found_exception() | 
    disabled_operation_exception().

-type start_domain_maintenance_errors() ::
    base_exception() | 
    validation_exception() | 
    internal_exception() | 
    resource_not_found_exception() | 
    disabled_operation_exception().

-type start_service_software_update_errors() ::
    base_exception() | 
    validation_exception() | 
    internal_exception() | 
    resource_not_found_exception().

-type update_application_errors() ::
    base_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    disabled_operation_exception().

-type update_data_source_errors() ::
    base_exception() | 
    validation_exception() | 
    internal_exception() | 
    dependency_failure_exception() | 
    resource_not_found_exception() | 
    disabled_operation_exception().

-type update_direct_query_data_source_errors() ::
    base_exception() | 
    validation_exception() | 
    internal_exception() | 
    resource_not_found_exception() | 
    disabled_operation_exception().

-type update_domain_config_errors() ::
    limit_exceeded_exception() | 
    base_exception() | 
    validation_exception() | 
    internal_exception() | 
    invalid_type_exception() | 
    resource_not_found_exception().

-type update_package_errors() ::
    limit_exceeded_exception() | 
    base_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_exception() | 
    resource_not_found_exception().

-type update_package_scope_errors() ::
    base_exception() | 
    validation_exception() | 
    internal_exception() | 
    resource_not_found_exception() | 
    disabled_operation_exception().

-type update_scheduled_action_errors() ::
    limit_exceeded_exception() | 
    base_exception() | 
    validation_exception() | 
    slot_not_available_exception() | 
    internal_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_vpc_endpoint_errors() ::
    base_exception() | 
    validation_exception() | 
    internal_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    disabled_operation_exception().

-type upgrade_domain_errors() ::
    resource_already_exists_exception() | 
    base_exception() | 
    validation_exception() | 
    internal_exception() | 
    resource_not_found_exception() | 
    disabled_operation_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Allows the destination Amazon OpenSearch Service domain owner to
%% accept an inbound
%% cross-cluster search connection request.
%%
%% For more information, see Cross-cluster search
%% for Amazon OpenSearch Service:
%% https://docs.aws.amazon.com/opensearch-service/latest/developerguide/cross-cluster-search.html.
-spec accept_inbound_connection(aws_client:aws_client(), binary() | list(), accept_inbound_connection_request()) ->
    {ok, accept_inbound_connection_response(), tuple()} |
    {error, any()} |
    {error, accept_inbound_connection_errors(), tuple()}.
accept_inbound_connection(Client, ConnectionId, Input) ->
    accept_inbound_connection(Client, ConnectionId, Input, []).

-spec accept_inbound_connection(aws_client:aws_client(), binary() | list(), accept_inbound_connection_request(), proplists:proplist()) ->
    {ok, accept_inbound_connection_response(), tuple()} |
    {error, any()} |
    {error, accept_inbound_connection_errors(), tuple()}.
accept_inbound_connection(Client, ConnectionId, Input0, Options0) ->
    Method = put,
    Path = ["/2021-01-01/opensearch/cc/inboundConnection/", aws_util:encode_uri(ConnectionId), "/accept"],
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

%% @doc Creates a new direct-query data source to the specified domain.
%%
%% For more information, see
%% Creating Amazon OpenSearch Service data source integrations with Amazon
%% S3:
%% https://docs.aws.amazon.com/opensearch-service/latest/developerguide/direct-query-s3-creating.html.
-spec add_data_source(aws_client:aws_client(), binary() | list(), add_data_source_request()) ->
    {ok, add_data_source_response(), tuple()} |
    {error, any()} |
    {error, add_data_source_errors(), tuple()}.
add_data_source(Client, DomainName, Input) ->
    add_data_source(Client, DomainName, Input, []).

-spec add_data_source(aws_client:aws_client(), binary() | list(), add_data_source_request(), proplists:proplist()) ->
    {ok, add_data_source_response(), tuple()} |
    {error, any()} |
    {error, add_data_source_errors(), tuple()}.
add_data_source(Client, DomainName, Input0, Options0) ->
    Method = post,
    Path = ["/2021-01-01/opensearch/domain/", aws_util:encode_uri(DomainName), "/dataSource"],
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

%% @doc
%% Adds a new data source in Amazon OpenSearch Service
%% so that you can perform direct queries on external data.
-spec add_direct_query_data_source(aws_client:aws_client(), add_direct_query_data_source_request()) ->
    {ok, add_direct_query_data_source_response(), tuple()} |
    {error, any()} |
    {error, add_direct_query_data_source_errors(), tuple()}.
add_direct_query_data_source(Client, Input) ->
    add_direct_query_data_source(Client, Input, []).

-spec add_direct_query_data_source(aws_client:aws_client(), add_direct_query_data_source_request(), proplists:proplist()) ->
    {ok, add_direct_query_data_source_response(), tuple()} |
    {error, any()} |
    {error, add_direct_query_data_source_errors(), tuple()}.
add_direct_query_data_source(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2021-01-01/opensearch/directQueryDataSource"],
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

%% @doc Attaches tags to an existing Amazon OpenSearch Service domain, data
%% source, or application.
%%
%% Tags are a set of case-sensitive key-value pairs. A domain, data source,
%% or application can
%% have up to 10 tags. For more information, see Tagging
%% Amazon OpenSearch Service resources:
%% https://docs.aws.amazon.com/opensearch-service/latest/developerguide/managedomains-awsresourcetagging.html.
-spec add_tags(aws_client:aws_client(), add_tags_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, add_tags_errors(), tuple()}.
add_tags(Client, Input) ->
    add_tags(Client, Input, []).

-spec add_tags(aws_client:aws_client(), add_tags_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, add_tags_errors(), tuple()}.
add_tags(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2021-01-01/tags"],
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

%% @doc Associates a package with an Amazon OpenSearch Service domain.
%%
%% For more information, see
%% Custom packages
%% for Amazon OpenSearch Service:
%% https://docs.aws.amazon.com/opensearch-service/latest/developerguide/custom-packages.html.
-spec associate_package(aws_client:aws_client(), binary() | list(), binary() | list(), associate_package_request()) ->
    {ok, associate_package_response(), tuple()} |
    {error, any()} |
    {error, associate_package_errors(), tuple()}.
associate_package(Client, DomainName, PackageID, Input) ->
    associate_package(Client, DomainName, PackageID, Input, []).

-spec associate_package(aws_client:aws_client(), binary() | list(), binary() | list(), associate_package_request(), proplists:proplist()) ->
    {ok, associate_package_response(), tuple()} |
    {error, any()} |
    {error, associate_package_errors(), tuple()}.
associate_package(Client, DomainName, PackageID, Input0, Options0) ->
    Method = post,
    Path = ["/2021-01-01/packages/associate/", aws_util:encode_uri(PackageID), "/", aws_util:encode_uri(DomainName), ""],
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

%% @doc Operation in the Amazon OpenSearch Service API for associating
%% multiple packages with a domain simultaneously.
-spec associate_packages(aws_client:aws_client(), associate_packages_request()) ->
    {ok, associate_packages_response(), tuple()} |
    {error, any()} |
    {error, associate_packages_errors(), tuple()}.
associate_packages(Client, Input) ->
    associate_packages(Client, Input, []).

-spec associate_packages(aws_client:aws_client(), associate_packages_request(), proplists:proplist()) ->
    {ok, associate_packages_response(), tuple()} |
    {error, any()} |
    {error, associate_packages_errors(), tuple()}.
associate_packages(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2021-01-01/packages/associateMultiple"],
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

%% @doc Provides access to an Amazon OpenSearch Service domain through the
%% use of an interface VPC
%% endpoint.
-spec authorize_vpc_endpoint_access(aws_client:aws_client(), binary() | list(), authorize_vpc_endpoint_access_request()) ->
    {ok, authorize_vpc_endpoint_access_response(), tuple()} |
    {error, any()} |
    {error, authorize_vpc_endpoint_access_errors(), tuple()}.
authorize_vpc_endpoint_access(Client, DomainName, Input) ->
    authorize_vpc_endpoint_access(Client, DomainName, Input, []).

-spec authorize_vpc_endpoint_access(aws_client:aws_client(), binary() | list(), authorize_vpc_endpoint_access_request(), proplists:proplist()) ->
    {ok, authorize_vpc_endpoint_access_response(), tuple()} |
    {error, any()} |
    {error, authorize_vpc_endpoint_access_errors(), tuple()}.
authorize_vpc_endpoint_access(Client, DomainName, Input0, Options0) ->
    Method = post,
    Path = ["/2021-01-01/opensearch/domain/", aws_util:encode_uri(DomainName), "/authorizeVpcEndpointAccess"],
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

%% @doc Cancels a pending configuration change on an Amazon OpenSearch
%% Service domain.
-spec cancel_domain_config_change(aws_client:aws_client(), binary() | list(), cancel_domain_config_change_request()) ->
    {ok, cancel_domain_config_change_response(), tuple()} |
    {error, any()} |
    {error, cancel_domain_config_change_errors(), tuple()}.
cancel_domain_config_change(Client, DomainName, Input) ->
    cancel_domain_config_change(Client, DomainName, Input, []).

-spec cancel_domain_config_change(aws_client:aws_client(), binary() | list(), cancel_domain_config_change_request(), proplists:proplist()) ->
    {ok, cancel_domain_config_change_response(), tuple()} |
    {error, any()} |
    {error, cancel_domain_config_change_errors(), tuple()}.
cancel_domain_config_change(Client, DomainName, Input0, Options0) ->
    Method = post,
    Path = ["/2021-01-01/opensearch/domain/", aws_util:encode_uri(DomainName), "/config/cancel"],
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

%% @doc Cancels a scheduled service software update for an Amazon OpenSearch
%% Service domain.
%%
%% You can
%% only perform this operation before the `AutomatedUpdateDate' and when
%% the domain's
%% `UpdateStatus' is `PENDING_UPDATE'. For more information, see
%% Service software updates in Amazon OpenSearch Service:
%% https://docs.aws.amazon.com/opensearch-service/latest/developerguide/service-software.html.
-spec cancel_service_software_update(aws_client:aws_client(), cancel_service_software_update_request()) ->
    {ok, cancel_service_software_update_response(), tuple()} |
    {error, any()} |
    {error, cancel_service_software_update_errors(), tuple()}.
cancel_service_software_update(Client, Input) ->
    cancel_service_software_update(Client, Input, []).

-spec cancel_service_software_update(aws_client:aws_client(), cancel_service_software_update_request(), proplists:proplist()) ->
    {ok, cancel_service_software_update_response(), tuple()} |
    {error, any()} |
    {error, cancel_service_software_update_errors(), tuple()}.
cancel_service_software_update(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2021-01-01/opensearch/serviceSoftwareUpdate/cancel"],
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

%% @doc Creates an OpenSearch UI application.
%%
%% For more information, see Using the OpenSearch user interface in Amazon
%% OpenSearch Service:
%% https://docs.aws.amazon.com/opensearch-service/latest/developerguide/application.html.
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
    Path = ["/2021-01-01/opensearch/application"],
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

%% @doc Creates an Amazon OpenSearch Service domain.
%%
%% For more information, see Creating and managing Amazon OpenSearch Service
%% domains:
%% https://docs.aws.amazon.com/opensearch-service/latest/developerguide/createupdatedomains.html.
-spec create_domain(aws_client:aws_client(), create_domain_request()) ->
    {ok, create_domain_response(), tuple()} |
    {error, any()} |
    {error, create_domain_errors(), tuple()}.
create_domain(Client, Input) ->
    create_domain(Client, Input, []).

-spec create_domain(aws_client:aws_client(), create_domain_request(), proplists:proplist()) ->
    {ok, create_domain_response(), tuple()} |
    {error, any()} |
    {error, create_domain_errors(), tuple()}.
create_domain(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2021-01-01/opensearch/domain"],
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

%% @doc Creates a new cross-cluster search connection from a source Amazon
%% OpenSearch Service domain
%% to a destination domain.
%%
%% For more information, see Cross-cluster search
%% for Amazon OpenSearch Service:
%% https://docs.aws.amazon.com/opensearch-service/latest/developerguide/cross-cluster-search.html.
-spec create_outbound_connection(aws_client:aws_client(), create_outbound_connection_request()) ->
    {ok, create_outbound_connection_response(), tuple()} |
    {error, any()} |
    {error, create_outbound_connection_errors(), tuple()}.
create_outbound_connection(Client, Input) ->
    create_outbound_connection(Client, Input, []).

-spec create_outbound_connection(aws_client:aws_client(), create_outbound_connection_request(), proplists:proplist()) ->
    {ok, create_outbound_connection_response(), tuple()} |
    {error, any()} |
    {error, create_outbound_connection_errors(), tuple()}.
create_outbound_connection(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2021-01-01/opensearch/cc/outboundConnection"],
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

%% @doc Creates a package for use with Amazon OpenSearch Service domains.
%%
%% For more information, see
%% Custom packages for Amazon OpenSearch Service:
%% https://docs.aws.amazon.com/opensearch-service/latest/developerguide/custom-packages.html.
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
    Path = ["/2021-01-01/packages"],
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

%% @doc Creates an Amazon OpenSearch Service-managed VPC endpoint.
-spec create_vpc_endpoint(aws_client:aws_client(), create_vpc_endpoint_request()) ->
    {ok, create_vpc_endpoint_response(), tuple()} |
    {error, any()} |
    {error, create_vpc_endpoint_errors(), tuple()}.
create_vpc_endpoint(Client, Input) ->
    create_vpc_endpoint(Client, Input, []).

-spec create_vpc_endpoint(aws_client:aws_client(), create_vpc_endpoint_request(), proplists:proplist()) ->
    {ok, create_vpc_endpoint_response(), tuple()} |
    {error, any()} |
    {error, create_vpc_endpoint_errors(), tuple()}.
create_vpc_endpoint(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2021-01-01/opensearch/vpcEndpoints"],
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

%% @doc Deletes a specified OpenSearch application.
-spec delete_application(aws_client:aws_client(), binary() | list(), delete_application_request()) ->
    {ok, delete_application_response(), tuple()} |
    {error, any()} |
    {error, delete_application_errors(), tuple()}.
delete_application(Client, Id, Input) ->
    delete_application(Client, Id, Input, []).

-spec delete_application(aws_client:aws_client(), binary() | list(), delete_application_request(), proplists:proplist()) ->
    {ok, delete_application_response(), tuple()} |
    {error, any()} |
    {error, delete_application_errors(), tuple()}.
delete_application(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/2021-01-01/opensearch/application/", aws_util:encode_uri(Id), ""],
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

%% @doc Deletes a direct-query data source.
%%
%% For more information, see Deleting an Amazon OpenSearch Service data
%% source with Amazon S3:
%% https://docs.aws.amazon.com/opensearch-service/latest/developerguide/direct-query-s3-delete.html.
-spec delete_data_source(aws_client:aws_client(), binary() | list(), binary() | list(), delete_data_source_request()) ->
    {ok, delete_data_source_response(), tuple()} |
    {error, any()} |
    {error, delete_data_source_errors(), tuple()}.
delete_data_source(Client, DomainName, Name, Input) ->
    delete_data_source(Client, DomainName, Name, Input, []).

-spec delete_data_source(aws_client:aws_client(), binary() | list(), binary() | list(), delete_data_source_request(), proplists:proplist()) ->
    {ok, delete_data_source_response(), tuple()} |
    {error, any()} |
    {error, delete_data_source_errors(), tuple()}.
delete_data_source(Client, DomainName, Name, Input0, Options0) ->
    Method = delete,
    Path = ["/2021-01-01/opensearch/domain/", aws_util:encode_uri(DomainName), "/dataSource/", aws_util:encode_uri(Name), ""],
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

%% @doc
%% Deletes a previously configured direct query data
%% source from Amazon OpenSearch Service.
-spec delete_direct_query_data_source(aws_client:aws_client(), binary() | list(), delete_direct_query_data_source_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_direct_query_data_source_errors(), tuple()}.
delete_direct_query_data_source(Client, DataSourceName, Input) ->
    delete_direct_query_data_source(Client, DataSourceName, Input, []).

-spec delete_direct_query_data_source(aws_client:aws_client(), binary() | list(), delete_direct_query_data_source_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_direct_query_data_source_errors(), tuple()}.
delete_direct_query_data_source(Client, DataSourceName, Input0, Options0) ->
    Method = delete,
    Path = ["/2021-01-01/opensearch/directQueryDataSource/", aws_util:encode_uri(DataSourceName), ""],
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

%% @doc Deletes an Amazon OpenSearch Service domain and all of its data.
%%
%% You can't recover a domain
%% after you delete it.
-spec delete_domain(aws_client:aws_client(), binary() | list(), delete_domain_request()) ->
    {ok, delete_domain_response(), tuple()} |
    {error, any()} |
    {error, delete_domain_errors(), tuple()}.
delete_domain(Client, DomainName, Input) ->
    delete_domain(Client, DomainName, Input, []).

-spec delete_domain(aws_client:aws_client(), binary() | list(), delete_domain_request(), proplists:proplist()) ->
    {ok, delete_domain_response(), tuple()} |
    {error, any()} |
    {error, delete_domain_errors(), tuple()}.
delete_domain(Client, DomainName, Input0, Options0) ->
    Method = delete,
    Path = ["/2021-01-01/opensearch/domain/", aws_util:encode_uri(DomainName), ""],
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

%% @doc Allows the destination Amazon OpenSearch Service domain owner to
%% delete an existing inbound
%% cross-cluster search connection.
%%
%% For more information, see Cross-cluster search
%% for Amazon OpenSearch Service:
%% https://docs.aws.amazon.com/opensearch-service/latest/developerguide/cross-cluster-search.html.
-spec delete_inbound_connection(aws_client:aws_client(), binary() | list(), delete_inbound_connection_request()) ->
    {ok, delete_inbound_connection_response(), tuple()} |
    {error, any()} |
    {error, delete_inbound_connection_errors(), tuple()}.
delete_inbound_connection(Client, ConnectionId, Input) ->
    delete_inbound_connection(Client, ConnectionId, Input, []).

-spec delete_inbound_connection(aws_client:aws_client(), binary() | list(), delete_inbound_connection_request(), proplists:proplist()) ->
    {ok, delete_inbound_connection_response(), tuple()} |
    {error, any()} |
    {error, delete_inbound_connection_errors(), tuple()}.
delete_inbound_connection(Client, ConnectionId, Input0, Options0) ->
    Method = delete,
    Path = ["/2021-01-01/opensearch/cc/inboundConnection/", aws_util:encode_uri(ConnectionId), ""],
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

%% @doc Allows the source Amazon OpenSearch Service domain owner to delete an
%% existing outbound
%% cross-cluster search connection.
%%
%% For more information, see Cross-cluster search
%% for Amazon OpenSearch Service:
%% https://docs.aws.amazon.com/opensearch-service/latest/developerguide/cross-cluster-search.html.
-spec delete_outbound_connection(aws_client:aws_client(), binary() | list(), delete_outbound_connection_request()) ->
    {ok, delete_outbound_connection_response(), tuple()} |
    {error, any()} |
    {error, delete_outbound_connection_errors(), tuple()}.
delete_outbound_connection(Client, ConnectionId, Input) ->
    delete_outbound_connection(Client, ConnectionId, Input, []).

-spec delete_outbound_connection(aws_client:aws_client(), binary() | list(), delete_outbound_connection_request(), proplists:proplist()) ->
    {ok, delete_outbound_connection_response(), tuple()} |
    {error, any()} |
    {error, delete_outbound_connection_errors(), tuple()}.
delete_outbound_connection(Client, ConnectionId, Input0, Options0) ->
    Method = delete,
    Path = ["/2021-01-01/opensearch/cc/outboundConnection/", aws_util:encode_uri(ConnectionId), ""],
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

%% @doc Deletes an Amazon OpenSearch Service package.
%%
%% For more information, see Custom
%% packages for Amazon OpenSearch Service:
%% https://docs.aws.amazon.com/opensearch-service/latest/developerguide/custom-packages.html.
-spec delete_package(aws_client:aws_client(), binary() | list(), delete_package_request()) ->
    {ok, delete_package_response(), tuple()} |
    {error, any()} |
    {error, delete_package_errors(), tuple()}.
delete_package(Client, PackageID, Input) ->
    delete_package(Client, PackageID, Input, []).

-spec delete_package(aws_client:aws_client(), binary() | list(), delete_package_request(), proplists:proplist()) ->
    {ok, delete_package_response(), tuple()} |
    {error, any()} |
    {error, delete_package_errors(), tuple()}.
delete_package(Client, PackageID, Input0, Options0) ->
    Method = delete,
    Path = ["/2021-01-01/packages/", aws_util:encode_uri(PackageID), ""],
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

%% @doc Deletes an Amazon OpenSearch Service-managed interface VPC endpoint.
-spec delete_vpc_endpoint(aws_client:aws_client(), binary() | list(), delete_vpc_endpoint_request()) ->
    {ok, delete_vpc_endpoint_response(), tuple()} |
    {error, any()} |
    {error, delete_vpc_endpoint_errors(), tuple()}.
delete_vpc_endpoint(Client, VpcEndpointId, Input) ->
    delete_vpc_endpoint(Client, VpcEndpointId, Input, []).

-spec delete_vpc_endpoint(aws_client:aws_client(), binary() | list(), delete_vpc_endpoint_request(), proplists:proplist()) ->
    {ok, delete_vpc_endpoint_response(), tuple()} |
    {error, any()} |
    {error, delete_vpc_endpoint_errors(), tuple()}.
delete_vpc_endpoint(Client, VpcEndpointId, Input0, Options0) ->
    Method = delete,
    Path = ["/2021-01-01/opensearch/vpcEndpoints/", aws_util:encode_uri(VpcEndpointId), ""],
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

%% @doc Describes the domain configuration for the specified Amazon
%% OpenSearch Service domain,
%% including the domain ID, domain service endpoint, and domain ARN.
-spec describe_domain(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_domain_response(), tuple()} |
    {error, any()} |
    {error, describe_domain_errors(), tuple()}.
describe_domain(Client, DomainName)
  when is_map(Client) ->
    describe_domain(Client, DomainName, #{}, #{}).

-spec describe_domain(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_domain_response(), tuple()} |
    {error, any()} |
    {error, describe_domain_errors(), tuple()}.
describe_domain(Client, DomainName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_domain(Client, DomainName, QueryMap, HeadersMap, []).

-spec describe_domain(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_domain_response(), tuple()} |
    {error, any()} |
    {error, describe_domain_errors(), tuple()}.
describe_domain(Client, DomainName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2021-01-01/opensearch/domain/", aws_util:encode_uri(DomainName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the list of optimizations that Auto-Tune has made to an
%% Amazon OpenSearch Service
%% domain.
%%
%% For more information, see Auto-Tune for Amazon OpenSearch
%% Service:
%% https://docs.aws.amazon.com/opensearch-service/latest/developerguide/auto-tune.html.
-spec describe_domain_auto_tunes(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_domain_auto_tunes_response(), tuple()} |
    {error, any()} |
    {error, describe_domain_auto_tunes_errors(), tuple()}.
describe_domain_auto_tunes(Client, DomainName)
  when is_map(Client) ->
    describe_domain_auto_tunes(Client, DomainName, #{}, #{}).

-spec describe_domain_auto_tunes(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_domain_auto_tunes_response(), tuple()} |
    {error, any()} |
    {error, describe_domain_auto_tunes_errors(), tuple()}.
describe_domain_auto_tunes(Client, DomainName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_domain_auto_tunes(Client, DomainName, QueryMap, HeadersMap, []).

-spec describe_domain_auto_tunes(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_domain_auto_tunes_response(), tuple()} |
    {error, any()} |
    {error, describe_domain_auto_tunes_errors(), tuple()}.
describe_domain_auto_tunes(Client, DomainName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2021-01-01/opensearch/domain/", aws_util:encode_uri(DomainName), "/autoTunes"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about the current blue/green deployment happening
%% on an Amazon
%% OpenSearch Service domain.
%%
%% For more information, see Making configuration changes in Amazon
%% OpenSearch Service:
%% https://docs.aws.amazon.com/opensearch-service/latest/developerguide/managedomains-configuration-changes.html.
-spec describe_domain_change_progress(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_domain_change_progress_response(), tuple()} |
    {error, any()} |
    {error, describe_domain_change_progress_errors(), tuple()}.
describe_domain_change_progress(Client, DomainName)
  when is_map(Client) ->
    describe_domain_change_progress(Client, DomainName, #{}, #{}).

-spec describe_domain_change_progress(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_domain_change_progress_response(), tuple()} |
    {error, any()} |
    {error, describe_domain_change_progress_errors(), tuple()}.
describe_domain_change_progress(Client, DomainName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_domain_change_progress(Client, DomainName, QueryMap, HeadersMap, []).

-spec describe_domain_change_progress(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_domain_change_progress_response(), tuple()} |
    {error, any()} |
    {error, describe_domain_change_progress_errors(), tuple()}.
describe_domain_change_progress(Client, DomainName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2021-01-01/opensearch/domain/", aws_util:encode_uri(DomainName), "/progress"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"changeid">>, maps:get(<<"changeid">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the configuration of an Amazon OpenSearch Service domain.
-spec describe_domain_config(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_domain_config_response(), tuple()} |
    {error, any()} |
    {error, describe_domain_config_errors(), tuple()}.
describe_domain_config(Client, DomainName)
  when is_map(Client) ->
    describe_domain_config(Client, DomainName, #{}, #{}).

-spec describe_domain_config(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_domain_config_response(), tuple()} |
    {error, any()} |
    {error, describe_domain_config_errors(), tuple()}.
describe_domain_config(Client, DomainName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_domain_config(Client, DomainName, QueryMap, HeadersMap, []).

-spec describe_domain_config(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_domain_config_response(), tuple()} |
    {error, any()} |
    {error, describe_domain_config_errors(), tuple()}.
describe_domain_config(Client, DomainName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2021-01-01/opensearch/domain/", aws_util:encode_uri(DomainName), "/config"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about domain and node health, the standby
%% Availability Zone, number of nodes per Availability Zone, and shard count
%% per node.
-spec describe_domain_health(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_domain_health_response(), tuple()} |
    {error, any()} |
    {error, describe_domain_health_errors(), tuple()}.
describe_domain_health(Client, DomainName)
  when is_map(Client) ->
    describe_domain_health(Client, DomainName, #{}, #{}).

-spec describe_domain_health(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_domain_health_response(), tuple()} |
    {error, any()} |
    {error, describe_domain_health_errors(), tuple()}.
describe_domain_health(Client, DomainName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_domain_health(Client, DomainName, QueryMap, HeadersMap, []).

-spec describe_domain_health(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_domain_health_response(), tuple()} |
    {error, any()} |
    {error, describe_domain_health_errors(), tuple()}.
describe_domain_health(Client, DomainName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2021-01-01/opensearch/domain/", aws_util:encode_uri(DomainName), "/health"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about domain and nodes, including data nodes,
%% master nodes, ultrawarm
%% nodes, Availability Zone(s), standby nodes, node configurations, and node
%% states.
-spec describe_domain_nodes(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_domain_nodes_response(), tuple()} |
    {error, any()} |
    {error, describe_domain_nodes_errors(), tuple()}.
describe_domain_nodes(Client, DomainName)
  when is_map(Client) ->
    describe_domain_nodes(Client, DomainName, #{}, #{}).

-spec describe_domain_nodes(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_domain_nodes_response(), tuple()} |
    {error, any()} |
    {error, describe_domain_nodes_errors(), tuple()}.
describe_domain_nodes(Client, DomainName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_domain_nodes(Client, DomainName, QueryMap, HeadersMap, []).

-spec describe_domain_nodes(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_domain_nodes_response(), tuple()} |
    {error, any()} |
    {error, describe_domain_nodes_errors(), tuple()}.
describe_domain_nodes(Client, DomainName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2021-01-01/opensearch/domain/", aws_util:encode_uri(DomainName), "/nodes"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns domain configuration information about the specified Amazon
%% OpenSearch Service
%% domains.
-spec describe_domains(aws_client:aws_client(), describe_domains_request()) ->
    {ok, describe_domains_response(), tuple()} |
    {error, any()} |
    {error, describe_domains_errors(), tuple()}.
describe_domains(Client, Input) ->
    describe_domains(Client, Input, []).

-spec describe_domains(aws_client:aws_client(), describe_domains_request(), proplists:proplist()) ->
    {ok, describe_domains_response(), tuple()} |
    {error, any()} |
    {error, describe_domains_errors(), tuple()}.
describe_domains(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2021-01-01/opensearch/domain-info"],
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

%% @doc Describes the progress of a pre-update dry run analysis on an Amazon
%% OpenSearch
%% Service domain.
%%
%% For more information, see Determining whether a change will cause a
%% blue/green deployment:
%% https://docs.aws.amazon.com/opensearch-service/latest/developerguide/managedomains-configuration-changes#dryrun.
-spec describe_dry_run_progress(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_dry_run_progress_response(), tuple()} |
    {error, any()} |
    {error, describe_dry_run_progress_errors(), tuple()}.
describe_dry_run_progress(Client, DomainName)
  when is_map(Client) ->
    describe_dry_run_progress(Client, DomainName, #{}, #{}).

-spec describe_dry_run_progress(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_dry_run_progress_response(), tuple()} |
    {error, any()} |
    {error, describe_dry_run_progress_errors(), tuple()}.
describe_dry_run_progress(Client, DomainName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_dry_run_progress(Client, DomainName, QueryMap, HeadersMap, []).

-spec describe_dry_run_progress(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_dry_run_progress_response(), tuple()} |
    {error, any()} |
    {error, describe_dry_run_progress_errors(), tuple()}.
describe_dry_run_progress(Client, DomainName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2021-01-01/opensearch/domain/", aws_util:encode_uri(DomainName), "/dryRun"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"dryRunId">>, maps:get(<<"dryRunId">>, QueryMap, undefined)},
        {<<"loadDryRunConfig">>, maps:get(<<"loadDryRunConfig">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all the inbound cross-cluster search connections for a
%% destination (remote) Amazon
%% OpenSearch Service domain.
%%
%% For more information, see Cross-cluster search
%% for Amazon OpenSearch Service:
%% https://docs.aws.amazon.com/opensearch-service/latest/developerguide/cross-cluster-search.html.
-spec describe_inbound_connections(aws_client:aws_client(), describe_inbound_connections_request()) ->
    {ok, describe_inbound_connections_response(), tuple()} |
    {error, any()} |
    {error, describe_inbound_connections_errors(), tuple()}.
describe_inbound_connections(Client, Input) ->
    describe_inbound_connections(Client, Input, []).

-spec describe_inbound_connections(aws_client:aws_client(), describe_inbound_connections_request(), proplists:proplist()) ->
    {ok, describe_inbound_connections_response(), tuple()} |
    {error, any()} |
    {error, describe_inbound_connections_errors(), tuple()}.
describe_inbound_connections(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2021-01-01/opensearch/cc/inboundConnection/search"],
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

%% @doc Describes the instance count, storage, and master node limits for a
%% given OpenSearch or
%% Elasticsearch version and instance type.
-spec describe_instance_type_limits(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_instance_type_limits_response(), tuple()} |
    {error, any()} |
    {error, describe_instance_type_limits_errors(), tuple()}.
describe_instance_type_limits(Client, EngineVersion, InstanceType)
  when is_map(Client) ->
    describe_instance_type_limits(Client, EngineVersion, InstanceType, #{}, #{}).

-spec describe_instance_type_limits(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_instance_type_limits_response(), tuple()} |
    {error, any()} |
    {error, describe_instance_type_limits_errors(), tuple()}.
describe_instance_type_limits(Client, EngineVersion, InstanceType, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_instance_type_limits(Client, EngineVersion, InstanceType, QueryMap, HeadersMap, []).

-spec describe_instance_type_limits(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_instance_type_limits_response(), tuple()} |
    {error, any()} |
    {error, describe_instance_type_limits_errors(), tuple()}.
describe_instance_type_limits(Client, EngineVersion, InstanceType, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2021-01-01/opensearch/instanceTypeLimits/", aws_util:encode_uri(EngineVersion), "/", aws_util:encode_uri(InstanceType), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"domainName">>, maps:get(<<"domainName">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all the outbound cross-cluster connections for a local (source)
%% Amazon OpenSearch
%% Service domain.
%%
%% For more information, see Cross-cluster search
%% for Amazon OpenSearch Service:
%% https://docs.aws.amazon.com/opensearch-service/latest/developerguide/cross-cluster-search.html.
-spec describe_outbound_connections(aws_client:aws_client(), describe_outbound_connections_request()) ->
    {ok, describe_outbound_connections_response(), tuple()} |
    {error, any()} |
    {error, describe_outbound_connections_errors(), tuple()}.
describe_outbound_connections(Client, Input) ->
    describe_outbound_connections(Client, Input, []).

-spec describe_outbound_connections(aws_client:aws_client(), describe_outbound_connections_request(), proplists:proplist()) ->
    {ok, describe_outbound_connections_response(), tuple()} |
    {error, any()} |
    {error, describe_outbound_connections_errors(), tuple()}.
describe_outbound_connections(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2021-01-01/opensearch/cc/outboundConnection/search"],
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

%% @doc Describes all packages available to OpenSearch Service.
%%
%% For more information, see Custom
%% packages for Amazon OpenSearch Service:
%% https://docs.aws.amazon.com/opensearch-service/latest/developerguide/custom-packages.html.
-spec describe_packages(aws_client:aws_client(), describe_packages_request()) ->
    {ok, describe_packages_response(), tuple()} |
    {error, any()} |
    {error, describe_packages_errors(), tuple()}.
describe_packages(Client, Input) ->
    describe_packages(Client, Input, []).

-spec describe_packages(aws_client:aws_client(), describe_packages_request(), proplists:proplist()) ->
    {ok, describe_packages_response(), tuple()} |
    {error, any()} |
    {error, describe_packages_errors(), tuple()}.
describe_packages(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2021-01-01/packages/describe"],
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

%% @doc Describes the available Amazon OpenSearch Service Reserved Instance
%% offerings for a given
%% Region.
%%
%% For more information, see Reserved Instances in Amazon OpenSearch Service:
%% https://docs.aws.amazon.com/opensearch-service/latest/developerguide/ri.html.
-spec describe_reserved_instance_offerings(aws_client:aws_client()) ->
    {ok, describe_reserved_instance_offerings_response(), tuple()} |
    {error, any()} |
    {error, describe_reserved_instance_offerings_errors(), tuple()}.
describe_reserved_instance_offerings(Client)
  when is_map(Client) ->
    describe_reserved_instance_offerings(Client, #{}, #{}).

-spec describe_reserved_instance_offerings(aws_client:aws_client(), map(), map()) ->
    {ok, describe_reserved_instance_offerings_response(), tuple()} |
    {error, any()} |
    {error, describe_reserved_instance_offerings_errors(), tuple()}.
describe_reserved_instance_offerings(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_reserved_instance_offerings(Client, QueryMap, HeadersMap, []).

-spec describe_reserved_instance_offerings(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, describe_reserved_instance_offerings_response(), tuple()} |
    {error, any()} |
    {error, describe_reserved_instance_offerings_errors(), tuple()}.
describe_reserved_instance_offerings(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2021-01-01/opensearch/reservedInstanceOfferings"],
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
        {<<"offeringId">>, maps:get(<<"offeringId">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes the Amazon OpenSearch Service instances that you have
%% reserved in a given Region.
%%
%% For more information, see Reserved Instances in Amazon OpenSearch
%% Service:
%% https://docs.aws.amazon.com/opensearch-service/latest/developerguide/ri.html.
-spec describe_reserved_instances(aws_client:aws_client()) ->
    {ok, describe_reserved_instances_response(), tuple()} |
    {error, any()} |
    {error, describe_reserved_instances_errors(), tuple()}.
describe_reserved_instances(Client)
  when is_map(Client) ->
    describe_reserved_instances(Client, #{}, #{}).

-spec describe_reserved_instances(aws_client:aws_client(), map(), map()) ->
    {ok, describe_reserved_instances_response(), tuple()} |
    {error, any()} |
    {error, describe_reserved_instances_errors(), tuple()}.
describe_reserved_instances(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_reserved_instances(Client, QueryMap, HeadersMap, []).

-spec describe_reserved_instances(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, describe_reserved_instances_response(), tuple()} |
    {error, any()} |
    {error, describe_reserved_instances_errors(), tuple()}.
describe_reserved_instances(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2021-01-01/opensearch/reservedInstances"],
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
        {<<"reservationId">>, maps:get(<<"reservationId">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes one or more Amazon OpenSearch Service-managed VPC
%% endpoints.
-spec describe_vpc_endpoints(aws_client:aws_client(), describe_vpc_endpoints_request()) ->
    {ok, describe_vpc_endpoints_response(), tuple()} |
    {error, any()} |
    {error, describe_vpc_endpoints_errors(), tuple()}.
describe_vpc_endpoints(Client, Input) ->
    describe_vpc_endpoints(Client, Input, []).

-spec describe_vpc_endpoints(aws_client:aws_client(), describe_vpc_endpoints_request(), proplists:proplist()) ->
    {ok, describe_vpc_endpoints_response(), tuple()} |
    {error, any()} |
    {error, describe_vpc_endpoints_errors(), tuple()}.
describe_vpc_endpoints(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2021-01-01/opensearch/vpcEndpoints/describe"],
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

%% @doc Removes a package from the specified Amazon OpenSearch Service
%% domain.
%%
%% The package can't be
%% in use with any OpenSearch index for the dissociation to succeed. The
%% package is still available
%% in OpenSearch Service for association later. For more information, see
%% Custom
%% packages for Amazon OpenSearch Service:
%% https://docs.aws.amazon.com/opensearch-service/latest/developerguide/custom-packages.html.
-spec dissociate_package(aws_client:aws_client(), binary() | list(), binary() | list(), dissociate_package_request()) ->
    {ok, dissociate_package_response(), tuple()} |
    {error, any()} |
    {error, dissociate_package_errors(), tuple()}.
dissociate_package(Client, DomainName, PackageID, Input) ->
    dissociate_package(Client, DomainName, PackageID, Input, []).

-spec dissociate_package(aws_client:aws_client(), binary() | list(), binary() | list(), dissociate_package_request(), proplists:proplist()) ->
    {ok, dissociate_package_response(), tuple()} |
    {error, any()} |
    {error, dissociate_package_errors(), tuple()}.
dissociate_package(Client, DomainName, PackageID, Input0, Options0) ->
    Method = post,
    Path = ["/2021-01-01/packages/dissociate/", aws_util:encode_uri(PackageID), "/", aws_util:encode_uri(DomainName), ""],
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

%% @doc Dissociates multiple packages from a domain simulatneously.
-spec dissociate_packages(aws_client:aws_client(), dissociate_packages_request()) ->
    {ok, dissociate_packages_response(), tuple()} |
    {error, any()} |
    {error, dissociate_packages_errors(), tuple()}.
dissociate_packages(Client, Input) ->
    dissociate_packages(Client, Input, []).

-spec dissociate_packages(aws_client:aws_client(), dissociate_packages_request(), proplists:proplist()) ->
    {ok, dissociate_packages_response(), tuple()} |
    {error, any()} |
    {error, dissociate_packages_errors(), tuple()}.
dissociate_packages(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2021-01-01/packages/dissociateMultiple"],
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

%% @doc Retrieves the configuration and status of an existing OpenSearch
%% application.
-spec get_application(aws_client:aws_client(), binary() | list()) ->
    {ok, get_application_response(), tuple()} |
    {error, any()} |
    {error, get_application_errors(), tuple()}.
get_application(Client, Id)
  when is_map(Client) ->
    get_application(Client, Id, #{}, #{}).

-spec get_application(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_application_response(), tuple()} |
    {error, any()} |
    {error, get_application_errors(), tuple()}.
get_application(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_application(Client, Id, QueryMap, HeadersMap, []).

-spec get_application(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_application_response(), tuple()} |
    {error, any()} |
    {error, get_application_errors(), tuple()}.
get_application(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2021-01-01/opensearch/application/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a map of OpenSearch or Elasticsearch versions and the
%% versions you can upgrade them
%% to.
-spec get_compatible_versions(aws_client:aws_client()) ->
    {ok, get_compatible_versions_response(), tuple()} |
    {error, any()} |
    {error, get_compatible_versions_errors(), tuple()}.
get_compatible_versions(Client)
  when is_map(Client) ->
    get_compatible_versions(Client, #{}, #{}).

-spec get_compatible_versions(aws_client:aws_client(), map(), map()) ->
    {ok, get_compatible_versions_response(), tuple()} |
    {error, any()} |
    {error, get_compatible_versions_errors(), tuple()}.
get_compatible_versions(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_compatible_versions(Client, QueryMap, HeadersMap, []).

-spec get_compatible_versions(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, get_compatible_versions_response(), tuple()} |
    {error, any()} |
    {error, get_compatible_versions_errors(), tuple()}.
get_compatible_versions(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2021-01-01/opensearch/compatibleVersions"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"domainName">>, maps:get(<<"domainName">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about a direct query data source.
-spec get_data_source(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_data_source_response(), tuple()} |
    {error, any()} |
    {error, get_data_source_errors(), tuple()}.
get_data_source(Client, DomainName, Name)
  when is_map(Client) ->
    get_data_source(Client, DomainName, Name, #{}, #{}).

-spec get_data_source(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_data_source_response(), tuple()} |
    {error, any()} |
    {error, get_data_source_errors(), tuple()}.
get_data_source(Client, DomainName, Name, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_data_source(Client, DomainName, Name, QueryMap, HeadersMap, []).

-spec get_data_source(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_data_source_response(), tuple()} |
    {error, any()} |
    {error, get_data_source_errors(), tuple()}.
get_data_source(Client, DomainName, Name, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2021-01-01/opensearch/domain/", aws_util:encode_uri(DomainName), "/dataSource/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc
%% Returns detailed configuration information for
%% a specific direct query data source in Amazon OpenSearch Service.
-spec get_direct_query_data_source(aws_client:aws_client(), binary() | list()) ->
    {ok, get_direct_query_data_source_response(), tuple()} |
    {error, any()} |
    {error, get_direct_query_data_source_errors(), tuple()}.
get_direct_query_data_source(Client, DataSourceName)
  when is_map(Client) ->
    get_direct_query_data_source(Client, DataSourceName, #{}, #{}).

-spec get_direct_query_data_source(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_direct_query_data_source_response(), tuple()} |
    {error, any()} |
    {error, get_direct_query_data_source_errors(), tuple()}.
get_direct_query_data_source(Client, DataSourceName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_direct_query_data_source(Client, DataSourceName, QueryMap, HeadersMap, []).

-spec get_direct_query_data_source(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_direct_query_data_source_response(), tuple()} |
    {error, any()} |
    {error, get_direct_query_data_source_errors(), tuple()}.
get_direct_query_data_source(Client, DataSourceName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2021-01-01/opensearch/directQueryDataSource/", aws_util:encode_uri(DataSourceName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc The status of the maintenance action.
-spec get_domain_maintenance_status(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_domain_maintenance_status_response(), tuple()} |
    {error, any()} |
    {error, get_domain_maintenance_status_errors(), tuple()}.
get_domain_maintenance_status(Client, DomainName, MaintenanceId)
  when is_map(Client) ->
    get_domain_maintenance_status(Client, DomainName, MaintenanceId, #{}, #{}).

-spec get_domain_maintenance_status(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_domain_maintenance_status_response(), tuple()} |
    {error, any()} |
    {error, get_domain_maintenance_status_errors(), tuple()}.
get_domain_maintenance_status(Client, DomainName, MaintenanceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_domain_maintenance_status(Client, DomainName, MaintenanceId, QueryMap, HeadersMap, []).

-spec get_domain_maintenance_status(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_domain_maintenance_status_response(), tuple()} |
    {error, any()} |
    {error, get_domain_maintenance_status_errors(), tuple()}.
get_domain_maintenance_status(Client, DomainName, MaintenanceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2021-01-01/opensearch/domain/", aws_util:encode_uri(DomainName), "/domainMaintenance"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maintenanceId">>, MaintenanceId}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of Amazon OpenSearch Service package versions, along
%% with their creation time, commit message, and plugin properties (if the
%% package is a zip plugin package).
%%
%% For more information, see Custom packages for Amazon
%% OpenSearch Service:
%% https://docs.aws.amazon.com/opensearch-service/latest/developerguide/custom-packages.html.
-spec get_package_version_history(aws_client:aws_client(), binary() | list()) ->
    {ok, get_package_version_history_response(), tuple()} |
    {error, any()} |
    {error, get_package_version_history_errors(), tuple()}.
get_package_version_history(Client, PackageID)
  when is_map(Client) ->
    get_package_version_history(Client, PackageID, #{}, #{}).

-spec get_package_version_history(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_package_version_history_response(), tuple()} |
    {error, any()} |
    {error, get_package_version_history_errors(), tuple()}.
get_package_version_history(Client, PackageID, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_package_version_history(Client, PackageID, QueryMap, HeadersMap, []).

-spec get_package_version_history(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_package_version_history_response(), tuple()} |
    {error, any()} |
    {error, get_package_version_history_errors(), tuple()}.
get_package_version_history(Client, PackageID, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2021-01-01/packages/", aws_util:encode_uri(PackageID), "/history"],
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

%% @doc Retrieves the complete history of the last 10 upgrades performed on
%% an Amazon OpenSearch
%% Service domain.
-spec get_upgrade_history(aws_client:aws_client(), binary() | list()) ->
    {ok, get_upgrade_history_response(), tuple()} |
    {error, any()} |
    {error, get_upgrade_history_errors(), tuple()}.
get_upgrade_history(Client, DomainName)
  when is_map(Client) ->
    get_upgrade_history(Client, DomainName, #{}, #{}).

-spec get_upgrade_history(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_upgrade_history_response(), tuple()} |
    {error, any()} |
    {error, get_upgrade_history_errors(), tuple()}.
get_upgrade_history(Client, DomainName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_upgrade_history(Client, DomainName, QueryMap, HeadersMap, []).

-spec get_upgrade_history(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_upgrade_history_response(), tuple()} |
    {error, any()} |
    {error, get_upgrade_history_errors(), tuple()}.
get_upgrade_history(Client, DomainName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2021-01-01/opensearch/upgradeDomain/", aws_util:encode_uri(DomainName), "/history"],
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

%% @doc Returns the most recent status of the last upgrade or upgrade
%% eligibility check performed on
%% an Amazon OpenSearch Service domain.
-spec get_upgrade_status(aws_client:aws_client(), binary() | list()) ->
    {ok, get_upgrade_status_response(), tuple()} |
    {error, any()} |
    {error, get_upgrade_status_errors(), tuple()}.
get_upgrade_status(Client, DomainName)
  when is_map(Client) ->
    get_upgrade_status(Client, DomainName, #{}, #{}).

-spec get_upgrade_status(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_upgrade_status_response(), tuple()} |
    {error, any()} |
    {error, get_upgrade_status_errors(), tuple()}.
get_upgrade_status(Client, DomainName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_upgrade_status(Client, DomainName, QueryMap, HeadersMap, []).

-spec get_upgrade_status(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_upgrade_status_response(), tuple()} |
    {error, any()} |
    {error, get_upgrade_status_errors(), tuple()}.
get_upgrade_status(Client, DomainName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2021-01-01/opensearch/upgradeDomain/", aws_util:encode_uri(DomainName), "/status"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all OpenSearch applications under your account.
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
    Path = ["/2021-01-01/opensearch/list-applications"],
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
        {<<"statuses">>, maps:get(<<"statuses">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists direct-query data sources for a specific domain.
%%
%% For more information, see
%% For more information, see
%% Working with Amazon OpenSearch Service direct queries with Amazon S3:
%% https://docs.aws.amazon.com/opensearch-service/latest/developerguide/direct-query-s3.html.
-spec list_data_sources(aws_client:aws_client(), binary() | list()) ->
    {ok, list_data_sources_response(), tuple()} |
    {error, any()} |
    {error, list_data_sources_errors(), tuple()}.
list_data_sources(Client, DomainName)
  when is_map(Client) ->
    list_data_sources(Client, DomainName, #{}, #{}).

-spec list_data_sources(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_data_sources_response(), tuple()} |
    {error, any()} |
    {error, list_data_sources_errors(), tuple()}.
list_data_sources(Client, DomainName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_data_sources(Client, DomainName, QueryMap, HeadersMap, []).

-spec list_data_sources(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_data_sources_response(), tuple()} |
    {error, any()} |
    {error, list_data_sources_errors(), tuple()}.
list_data_sources(Client, DomainName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2021-01-01/opensearch/domain/", aws_util:encode_uri(DomainName), "/dataSource"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc
%% Lists an inventory of all the direct query data sources that you
%% have configured within Amazon OpenSearch Service.
-spec list_direct_query_data_sources(aws_client:aws_client()) ->
    {ok, list_direct_query_data_sources_response(), tuple()} |
    {error, any()} |
    {error, list_direct_query_data_sources_errors(), tuple()}.
list_direct_query_data_sources(Client)
  when is_map(Client) ->
    list_direct_query_data_sources(Client, #{}, #{}).

-spec list_direct_query_data_sources(aws_client:aws_client(), map(), map()) ->
    {ok, list_direct_query_data_sources_response(), tuple()} |
    {error, any()} |
    {error, list_direct_query_data_sources_errors(), tuple()}.
list_direct_query_data_sources(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_direct_query_data_sources(Client, QueryMap, HeadersMap, []).

-spec list_direct_query_data_sources(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_direct_query_data_sources_response(), tuple()} |
    {error, any()} |
    {error, list_direct_query_data_sources_errors(), tuple()}.
list_direct_query_data_sources(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2021-01-01/opensearch/directQueryDataSource"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"nexttoken">>, maps:get(<<"nexttoken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc A list of maintenance actions for the domain.
-spec list_domain_maintenances(aws_client:aws_client(), binary() | list()) ->
    {ok, list_domain_maintenances_response(), tuple()} |
    {error, any()} |
    {error, list_domain_maintenances_errors(), tuple()}.
list_domain_maintenances(Client, DomainName)
  when is_map(Client) ->
    list_domain_maintenances(Client, DomainName, #{}, #{}).

-spec list_domain_maintenances(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_domain_maintenances_response(), tuple()} |
    {error, any()} |
    {error, list_domain_maintenances_errors(), tuple()}.
list_domain_maintenances(Client, DomainName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_domain_maintenances(Client, DomainName, QueryMap, HeadersMap, []).

-spec list_domain_maintenances(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_domain_maintenances_response(), tuple()} |
    {error, any()} |
    {error, list_domain_maintenances_errors(), tuple()}.
list_domain_maintenances(Client, DomainName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2021-01-01/opensearch/domain/", aws_util:encode_uri(DomainName), "/domainMaintenances"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"action">>, maps:get(<<"action">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"status">>, maps:get(<<"status">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the names of all Amazon OpenSearch Service domains owned by
%% the current user in the
%% active Region.
-spec list_domain_names(aws_client:aws_client()) ->
    {ok, list_domain_names_response(), tuple()} |
    {error, any()} |
    {error, list_domain_names_errors(), tuple()}.
list_domain_names(Client)
  when is_map(Client) ->
    list_domain_names(Client, #{}, #{}).

-spec list_domain_names(aws_client:aws_client(), map(), map()) ->
    {ok, list_domain_names_response(), tuple()} |
    {error, any()} |
    {error, list_domain_names_errors(), tuple()}.
list_domain_names(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_domain_names(Client, QueryMap, HeadersMap, []).

-spec list_domain_names(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_domain_names_response(), tuple()} |
    {error, any()} |
    {error, list_domain_names_errors(), tuple()}.
list_domain_names(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2021-01-01/domain"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"engineType">>, maps:get(<<"engineType">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all Amazon OpenSearch Service domains associated with a given
%% package.
%%
%% For more
%% information, see Custom packages for Amazon
%% OpenSearch Service:
%% https://docs.aws.amazon.com/opensearch-service/latest/developerguide/custom-packages.html.
-spec list_domains_for_package(aws_client:aws_client(), binary() | list()) ->
    {ok, list_domains_for_package_response(), tuple()} |
    {error, any()} |
    {error, list_domains_for_package_errors(), tuple()}.
list_domains_for_package(Client, PackageID)
  when is_map(Client) ->
    list_domains_for_package(Client, PackageID, #{}, #{}).

-spec list_domains_for_package(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_domains_for_package_response(), tuple()} |
    {error, any()} |
    {error, list_domains_for_package_errors(), tuple()}.
list_domains_for_package(Client, PackageID, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_domains_for_package(Client, PackageID, QueryMap, HeadersMap, []).

-spec list_domains_for_package(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_domains_for_package_response(), tuple()} |
    {error, any()} |
    {error, list_domains_for_package_errors(), tuple()}.
list_domains_for_package(Client, PackageID, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2021-01-01/packages/", aws_util:encode_uri(PackageID), "/domains"],
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

%% @doc Lists all instance types and available features for a given
%% OpenSearch or Elasticsearch
%% version.
-spec list_instance_type_details(aws_client:aws_client(), binary() | list()) ->
    {ok, list_instance_type_details_response(), tuple()} |
    {error, any()} |
    {error, list_instance_type_details_errors(), tuple()}.
list_instance_type_details(Client, EngineVersion)
  when is_map(Client) ->
    list_instance_type_details(Client, EngineVersion, #{}, #{}).

-spec list_instance_type_details(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_instance_type_details_response(), tuple()} |
    {error, any()} |
    {error, list_instance_type_details_errors(), tuple()}.
list_instance_type_details(Client, EngineVersion, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_instance_type_details(Client, EngineVersion, QueryMap, HeadersMap, []).

-spec list_instance_type_details(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_instance_type_details_response(), tuple()} |
    {error, any()} |
    {error, list_instance_type_details_errors(), tuple()}.
list_instance_type_details(Client, EngineVersion, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2021-01-01/opensearch/instanceTypeDetails/", aws_util:encode_uri(EngineVersion), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"domainName">>, maps:get(<<"domainName">>, QueryMap, undefined)},
        {<<"instanceType">>, maps:get(<<"instanceType">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"retrieveAZs">>, maps:get(<<"retrieveAZs">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all packages associated with an Amazon OpenSearch Service
%% domain.
%%
%% For more
%% information, see Custom packages for Amazon
%% OpenSearch Service:
%% https://docs.aws.amazon.com/opensearch-service/latest/developerguide/custom-packages.html.
-spec list_packages_for_domain(aws_client:aws_client(), binary() | list()) ->
    {ok, list_packages_for_domain_response(), tuple()} |
    {error, any()} |
    {error, list_packages_for_domain_errors(), tuple()}.
list_packages_for_domain(Client, DomainName)
  when is_map(Client) ->
    list_packages_for_domain(Client, DomainName, #{}, #{}).

-spec list_packages_for_domain(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_packages_for_domain_response(), tuple()} |
    {error, any()} |
    {error, list_packages_for_domain_errors(), tuple()}.
list_packages_for_domain(Client, DomainName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_packages_for_domain(Client, DomainName, QueryMap, HeadersMap, []).

-spec list_packages_for_domain(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_packages_for_domain_response(), tuple()} |
    {error, any()} |
    {error, list_packages_for_domain_errors(), tuple()}.
list_packages_for_domain(Client, DomainName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2021-01-01/domain/", aws_util:encode_uri(DomainName), "/packages"],
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

%% @doc Retrieves a list of configuration changes that are scheduled for a
%% domain.
%%
%% These changes can
%% be service software
%% updates:
%% https://docs.aws.amazon.com/opensearch-service/latest/developerguide/service-software.html
%% or blue/green
%% Auto-Tune enhancements:
%% https://docs.aws.amazon.com/opensearch-service/latest/developerguide/auto-tune.html#auto-tune-types.
-spec list_scheduled_actions(aws_client:aws_client(), binary() | list()) ->
    {ok, list_scheduled_actions_response(), tuple()} |
    {error, any()} |
    {error, list_scheduled_actions_errors(), tuple()}.
list_scheduled_actions(Client, DomainName)
  when is_map(Client) ->
    list_scheduled_actions(Client, DomainName, #{}, #{}).

-spec list_scheduled_actions(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_scheduled_actions_response(), tuple()} |
    {error, any()} |
    {error, list_scheduled_actions_errors(), tuple()}.
list_scheduled_actions(Client, DomainName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_scheduled_actions(Client, DomainName, QueryMap, HeadersMap, []).

-spec list_scheduled_actions(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_scheduled_actions_response(), tuple()} |
    {error, any()} |
    {error, list_scheduled_actions_errors(), tuple()}.
list_scheduled_actions(Client, DomainName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2021-01-01/opensearch/domain/", aws_util:encode_uri(DomainName), "/scheduledActions"],
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

%% @doc Returns all resource tags for an Amazon OpenSearch Service domain,
%% data source, or
%% application.
%%
%% For more information, see Tagging
%% Amazon OpenSearch Service resources:
%% https://docs.aws.amazon.com/opensearch-service/latest/developerguide/managedomains-awsresourcetagging.html.
-spec list_tags(aws_client:aws_client(), binary() | list()) ->
    {ok, list_tags_response(), tuple()} |
    {error, any()} |
    {error, list_tags_errors(), tuple()}.
list_tags(Client, ARN)
  when is_map(Client) ->
    list_tags(Client, ARN, #{}, #{}).

-spec list_tags(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_tags_response(), tuple()} |
    {error, any()} |
    {error, list_tags_errors(), tuple()}.
list_tags(Client, ARN, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags(Client, ARN, QueryMap, HeadersMap, []).

-spec list_tags(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_tags_response(), tuple()} |
    {error, any()} |
    {error, list_tags_errors(), tuple()}.
list_tags(Client, ARN, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2021-01-01/tags"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"arn">>, ARN}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all versions of OpenSearch and Elasticsearch that Amazon
%% OpenSearch Service
%% supports.
-spec list_versions(aws_client:aws_client()) ->
    {ok, list_versions_response(), tuple()} |
    {error, any()} |
    {error, list_versions_errors(), tuple()}.
list_versions(Client)
  when is_map(Client) ->
    list_versions(Client, #{}, #{}).

-spec list_versions(aws_client:aws_client(), map(), map()) ->
    {ok, list_versions_response(), tuple()} |
    {error, any()} |
    {error, list_versions_errors(), tuple()}.
list_versions(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_versions(Client, QueryMap, HeadersMap, []).

-spec list_versions(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_versions_response(), tuple()} |
    {error, any()} |
    {error, list_versions_errors(), tuple()}.
list_versions(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2021-01-01/opensearch/versions"],
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

%% @doc Retrieves information about each Amazon Web Services principal that
%% is allowed to access a
%% given Amazon OpenSearch Service domain through the use of an interface VPC
%% endpoint.
-spec list_vpc_endpoint_access(aws_client:aws_client(), binary() | list()) ->
    {ok, list_vpc_endpoint_access_response(), tuple()} |
    {error, any()} |
    {error, list_vpc_endpoint_access_errors(), tuple()}.
list_vpc_endpoint_access(Client, DomainName)
  when is_map(Client) ->
    list_vpc_endpoint_access(Client, DomainName, #{}, #{}).

-spec list_vpc_endpoint_access(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_vpc_endpoint_access_response(), tuple()} |
    {error, any()} |
    {error, list_vpc_endpoint_access_errors(), tuple()}.
list_vpc_endpoint_access(Client, DomainName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_vpc_endpoint_access(Client, DomainName, QueryMap, HeadersMap, []).

-spec list_vpc_endpoint_access(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_vpc_endpoint_access_response(), tuple()} |
    {error, any()} |
    {error, list_vpc_endpoint_access_errors(), tuple()}.
list_vpc_endpoint_access(Client, DomainName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2021-01-01/opensearch/domain/", aws_util:encode_uri(DomainName), "/listVpcEndpointAccess"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves all Amazon OpenSearch Service-managed VPC endpoints in the
%% current Amazon Web Services account and Region.
-spec list_vpc_endpoints(aws_client:aws_client()) ->
    {ok, list_vpc_endpoints_response(), tuple()} |
    {error, any()} |
    {error, list_vpc_endpoints_errors(), tuple()}.
list_vpc_endpoints(Client)
  when is_map(Client) ->
    list_vpc_endpoints(Client, #{}, #{}).

-spec list_vpc_endpoints(aws_client:aws_client(), map(), map()) ->
    {ok, list_vpc_endpoints_response(), tuple()} |
    {error, any()} |
    {error, list_vpc_endpoints_errors(), tuple()}.
list_vpc_endpoints(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_vpc_endpoints(Client, QueryMap, HeadersMap, []).

-spec list_vpc_endpoints(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_vpc_endpoints_response(), tuple()} |
    {error, any()} |
    {error, list_vpc_endpoints_errors(), tuple()}.
list_vpc_endpoints(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2021-01-01/opensearch/vpcEndpoints"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves all Amazon OpenSearch Service-managed VPC endpoints
%% associated with a particular
%% domain.
-spec list_vpc_endpoints_for_domain(aws_client:aws_client(), binary() | list()) ->
    {ok, list_vpc_endpoints_for_domain_response(), tuple()} |
    {error, any()} |
    {error, list_vpc_endpoints_for_domain_errors(), tuple()}.
list_vpc_endpoints_for_domain(Client, DomainName)
  when is_map(Client) ->
    list_vpc_endpoints_for_domain(Client, DomainName, #{}, #{}).

-spec list_vpc_endpoints_for_domain(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_vpc_endpoints_for_domain_response(), tuple()} |
    {error, any()} |
    {error, list_vpc_endpoints_for_domain_errors(), tuple()}.
list_vpc_endpoints_for_domain(Client, DomainName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_vpc_endpoints_for_domain(Client, DomainName, QueryMap, HeadersMap, []).

-spec list_vpc_endpoints_for_domain(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_vpc_endpoints_for_domain_response(), tuple()} |
    {error, any()} |
    {error, list_vpc_endpoints_for_domain_errors(), tuple()}.
list_vpc_endpoints_for_domain(Client, DomainName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2021-01-01/opensearch/domain/", aws_util:encode_uri(DomainName), "/vpcEndpoints"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Allows you to purchase Amazon OpenSearch Service Reserved Instances.
-spec purchase_reserved_instance_offering(aws_client:aws_client(), purchase_reserved_instance_offering_request()) ->
    {ok, purchase_reserved_instance_offering_response(), tuple()} |
    {error, any()} |
    {error, purchase_reserved_instance_offering_errors(), tuple()}.
purchase_reserved_instance_offering(Client, Input) ->
    purchase_reserved_instance_offering(Client, Input, []).

-spec purchase_reserved_instance_offering(aws_client:aws_client(), purchase_reserved_instance_offering_request(), proplists:proplist()) ->
    {ok, purchase_reserved_instance_offering_response(), tuple()} |
    {error, any()} |
    {error, purchase_reserved_instance_offering_errors(), tuple()}.
purchase_reserved_instance_offering(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2021-01-01/opensearch/purchaseReservedInstanceOffering"],
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

%% @doc Allows the remote Amazon OpenSearch Service domain owner to reject an
%% inbound cross-cluster
%% connection request.
-spec reject_inbound_connection(aws_client:aws_client(), binary() | list(), reject_inbound_connection_request()) ->
    {ok, reject_inbound_connection_response(), tuple()} |
    {error, any()} |
    {error, reject_inbound_connection_errors(), tuple()}.
reject_inbound_connection(Client, ConnectionId, Input) ->
    reject_inbound_connection(Client, ConnectionId, Input, []).

-spec reject_inbound_connection(aws_client:aws_client(), binary() | list(), reject_inbound_connection_request(), proplists:proplist()) ->
    {ok, reject_inbound_connection_response(), tuple()} |
    {error, any()} |
    {error, reject_inbound_connection_errors(), tuple()}.
reject_inbound_connection(Client, ConnectionId, Input0, Options0) ->
    Method = put,
    Path = ["/2021-01-01/opensearch/cc/inboundConnection/", aws_util:encode_uri(ConnectionId), "/reject"],
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

%% @doc Removes the specified set of tags from an Amazon OpenSearch Service
%% domain, data source, or
%% application.
%%
%% For more information, see Tagging Amazon OpenSearch Service resources:
%% https://docs.aws.amazon.com/opensearch-service/latest/developerguide/managedomains.html#managedomains-awsresorcetagging.
-spec remove_tags(aws_client:aws_client(), remove_tags_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, remove_tags_errors(), tuple()}.
remove_tags(Client, Input) ->
    remove_tags(Client, Input, []).

-spec remove_tags(aws_client:aws_client(), remove_tags_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, remove_tags_errors(), tuple()}.
remove_tags(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2021-01-01/tags-removal"],
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

%% @doc Revokes access to an Amazon OpenSearch Service domain that was
%% provided through an interface
%% VPC endpoint.
-spec revoke_vpc_endpoint_access(aws_client:aws_client(), binary() | list(), revoke_vpc_endpoint_access_request()) ->
    {ok, revoke_vpc_endpoint_access_response(), tuple()} |
    {error, any()} |
    {error, revoke_vpc_endpoint_access_errors(), tuple()}.
revoke_vpc_endpoint_access(Client, DomainName, Input) ->
    revoke_vpc_endpoint_access(Client, DomainName, Input, []).

-spec revoke_vpc_endpoint_access(aws_client:aws_client(), binary() | list(), revoke_vpc_endpoint_access_request(), proplists:proplist()) ->
    {ok, revoke_vpc_endpoint_access_response(), tuple()} |
    {error, any()} |
    {error, revoke_vpc_endpoint_access_errors(), tuple()}.
revoke_vpc_endpoint_access(Client, DomainName, Input0, Options0) ->
    Method = post,
    Path = ["/2021-01-01/opensearch/domain/", aws_util:encode_uri(DomainName), "/revokeVpcEndpointAccess"],
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

%% @doc Starts the node maintenance process on the data node.
%%
%% These processes can include a node reboot, an Opensearch or Elasticsearch
%% process restart,
%% or a Dashboard or Kibana restart.
-spec start_domain_maintenance(aws_client:aws_client(), binary() | list(), start_domain_maintenance_request()) ->
    {ok, start_domain_maintenance_response(), tuple()} |
    {error, any()} |
    {error, start_domain_maintenance_errors(), tuple()}.
start_domain_maintenance(Client, DomainName, Input) ->
    start_domain_maintenance(Client, DomainName, Input, []).

-spec start_domain_maintenance(aws_client:aws_client(), binary() | list(), start_domain_maintenance_request(), proplists:proplist()) ->
    {ok, start_domain_maintenance_response(), tuple()} |
    {error, any()} |
    {error, start_domain_maintenance_errors(), tuple()}.
start_domain_maintenance(Client, DomainName, Input0, Options0) ->
    Method = post,
    Path = ["/2021-01-01/opensearch/domain/", aws_util:encode_uri(DomainName), "/domainMaintenance"],
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

%% @doc Schedules a service software update for an Amazon OpenSearch Service
%% domain.
%%
%% For more
%% information, see Service software updates in
%% Amazon OpenSearch Service:
%% https://docs.aws.amazon.com/opensearch-service/latest/developerguide/service-software.html.
-spec start_service_software_update(aws_client:aws_client(), start_service_software_update_request()) ->
    {ok, start_service_software_update_response(), tuple()} |
    {error, any()} |
    {error, start_service_software_update_errors(), tuple()}.
start_service_software_update(Client, Input) ->
    start_service_software_update(Client, Input, []).

-spec start_service_software_update(aws_client:aws_client(), start_service_software_update_request(), proplists:proplist()) ->
    {ok, start_service_software_update_response(), tuple()} |
    {error, any()} |
    {error, start_service_software_update_errors(), tuple()}.
start_service_software_update(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2021-01-01/opensearch/serviceSoftwareUpdate/start"],
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

%% @doc Updates the configuration and settings of an existing OpenSearch
%% application.
-spec update_application(aws_client:aws_client(), binary() | list(), update_application_request()) ->
    {ok, update_application_response(), tuple()} |
    {error, any()} |
    {error, update_application_errors(), tuple()}.
update_application(Client, Id, Input) ->
    update_application(Client, Id, Input, []).

-spec update_application(aws_client:aws_client(), binary() | list(), update_application_request(), proplists:proplist()) ->
    {ok, update_application_response(), tuple()} |
    {error, any()} |
    {error, update_application_errors(), tuple()}.
update_application(Client, Id, Input0, Options0) ->
    Method = put,
    Path = ["/2021-01-01/opensearch/application/", aws_util:encode_uri(Id), ""],
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

%% @doc Updates a direct-query data source.
%%
%% For more information, see
%% Working with Amazon OpenSearch Service data source integrations with
%% Amazon S3:
%% https://docs.aws.amazon.com/opensearch-service/latest/developerguide/direct-query-s3-creating.html.
-spec update_data_source(aws_client:aws_client(), binary() | list(), binary() | list(), update_data_source_request()) ->
    {ok, update_data_source_response(), tuple()} |
    {error, any()} |
    {error, update_data_source_errors(), tuple()}.
update_data_source(Client, DomainName, Name, Input) ->
    update_data_source(Client, DomainName, Name, Input, []).

-spec update_data_source(aws_client:aws_client(), binary() | list(), binary() | list(), update_data_source_request(), proplists:proplist()) ->
    {ok, update_data_source_response(), tuple()} |
    {error, any()} |
    {error, update_data_source_errors(), tuple()}.
update_data_source(Client, DomainName, Name, Input0, Options0) ->
    Method = put,
    Path = ["/2021-01-01/opensearch/domain/", aws_util:encode_uri(DomainName), "/dataSource/", aws_util:encode_uri(Name), ""],
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

%% @doc
%% Updates the configuration or properties of an existing
%% direct query data source in Amazon OpenSearch Service.
-spec update_direct_query_data_source(aws_client:aws_client(), binary() | list(), update_direct_query_data_source_request()) ->
    {ok, update_direct_query_data_source_response(), tuple()} |
    {error, any()} |
    {error, update_direct_query_data_source_errors(), tuple()}.
update_direct_query_data_source(Client, DataSourceName, Input) ->
    update_direct_query_data_source(Client, DataSourceName, Input, []).

-spec update_direct_query_data_source(aws_client:aws_client(), binary() | list(), update_direct_query_data_source_request(), proplists:proplist()) ->
    {ok, update_direct_query_data_source_response(), tuple()} |
    {error, any()} |
    {error, update_direct_query_data_source_errors(), tuple()}.
update_direct_query_data_source(Client, DataSourceName, Input0, Options0) ->
    Method = put,
    Path = ["/2021-01-01/opensearch/directQueryDataSource/", aws_util:encode_uri(DataSourceName), ""],
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

%% @doc Modifies the cluster configuration of the specified Amazon OpenSearch
%% Service
%% domain.
-spec update_domain_config(aws_client:aws_client(), binary() | list(), update_domain_config_request()) ->
    {ok, update_domain_config_response(), tuple()} |
    {error, any()} |
    {error, update_domain_config_errors(), tuple()}.
update_domain_config(Client, DomainName, Input) ->
    update_domain_config(Client, DomainName, Input, []).

-spec update_domain_config(aws_client:aws_client(), binary() | list(), update_domain_config_request(), proplists:proplist()) ->
    {ok, update_domain_config_response(), tuple()} |
    {error, any()} |
    {error, update_domain_config_errors(), tuple()}.
update_domain_config(Client, DomainName, Input0, Options0) ->
    Method = post,
    Path = ["/2021-01-01/opensearch/domain/", aws_util:encode_uri(DomainName), "/config"],
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

%% @doc Updates a package for use with Amazon OpenSearch Service domains.
%%
%% For more information, see
%% Custom packages for Amazon OpenSearch Service:
%% https://docs.aws.amazon.com/opensearch-service/latest/developerguide/custom-packages.html.
-spec update_package(aws_client:aws_client(), update_package_request()) ->
    {ok, update_package_response(), tuple()} |
    {error, any()} |
    {error, update_package_errors(), tuple()}.
update_package(Client, Input) ->
    update_package(Client, Input, []).

-spec update_package(aws_client:aws_client(), update_package_request(), proplists:proplist()) ->
    {ok, update_package_response(), tuple()} |
    {error, any()} |
    {error, update_package_errors(), tuple()}.
update_package(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2021-01-01/packages/update"],
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

%% @doc Updates the scope of a package.
%%
%% Scope of the package defines users who can view and associate a package.
-spec update_package_scope(aws_client:aws_client(), update_package_scope_request()) ->
    {ok, update_package_scope_response(), tuple()} |
    {error, any()} |
    {error, update_package_scope_errors(), tuple()}.
update_package_scope(Client, Input) ->
    update_package_scope(Client, Input, []).

-spec update_package_scope(aws_client:aws_client(), update_package_scope_request(), proplists:proplist()) ->
    {ok, update_package_scope_response(), tuple()} |
    {error, any()} |
    {error, update_package_scope_errors(), tuple()}.
update_package_scope(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2021-01-01/packages/updateScope"],
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

%% @doc Reschedules a planned domain configuration change for a later time.
%%
%% This change can be a
%% scheduled service software
%% update:
%% https://docs.aws.amazon.com/opensearch-service/latest/developerguide/service-software.html
%% or a blue/green
%% Auto-Tune enhancement:
%% https://docs.aws.amazon.com/opensearch-service/latest/developerguide/auto-tune.html#auto-tune-types.
-spec update_scheduled_action(aws_client:aws_client(), binary() | list(), update_scheduled_action_request()) ->
    {ok, update_scheduled_action_response(), tuple()} |
    {error, any()} |
    {error, update_scheduled_action_errors(), tuple()}.
update_scheduled_action(Client, DomainName, Input) ->
    update_scheduled_action(Client, DomainName, Input, []).

-spec update_scheduled_action(aws_client:aws_client(), binary() | list(), update_scheduled_action_request(), proplists:proplist()) ->
    {ok, update_scheduled_action_response(), tuple()} |
    {error, any()} |
    {error, update_scheduled_action_errors(), tuple()}.
update_scheduled_action(Client, DomainName, Input0, Options0) ->
    Method = put,
    Path = ["/2021-01-01/opensearch/domain/", aws_util:encode_uri(DomainName), "/scheduledAction/update"],
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

%% @doc Modifies an Amazon OpenSearch Service-managed interface VPC endpoint.
-spec update_vpc_endpoint(aws_client:aws_client(), update_vpc_endpoint_request()) ->
    {ok, update_vpc_endpoint_response(), tuple()} |
    {error, any()} |
    {error, update_vpc_endpoint_errors(), tuple()}.
update_vpc_endpoint(Client, Input) ->
    update_vpc_endpoint(Client, Input, []).

-spec update_vpc_endpoint(aws_client:aws_client(), update_vpc_endpoint_request(), proplists:proplist()) ->
    {ok, update_vpc_endpoint_response(), tuple()} |
    {error, any()} |
    {error, update_vpc_endpoint_errors(), tuple()}.
update_vpc_endpoint(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2021-01-01/opensearch/vpcEndpoints/update"],
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

%% @doc Allows you to either upgrade your Amazon OpenSearch Service domain or
%% perform an upgrade
%% eligibility check to a compatible version of OpenSearch or Elasticsearch.
-spec upgrade_domain(aws_client:aws_client(), upgrade_domain_request()) ->
    {ok, upgrade_domain_response(), tuple()} |
    {error, any()} |
    {error, upgrade_domain_errors(), tuple()}.
upgrade_domain(Client, Input) ->
    upgrade_domain(Client, Input, []).

-spec upgrade_domain(aws_client:aws_client(), upgrade_domain_request(), proplists:proplist()) ->
    {ok, upgrade_domain_response(), tuple()} |
    {error, any()} |
    {error, upgrade_domain_errors(), tuple()}.
upgrade_domain(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2021-01-01/opensearch/upgradeDomain"],
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
    Client1 = Client#{service => <<"es">>},
    Host = build_host(<<"es">>, Client1),
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
