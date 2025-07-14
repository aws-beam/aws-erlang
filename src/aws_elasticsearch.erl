%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Elasticsearch Configuration Service
%%
%% Use the Amazon Elasticsearch Configuration API to create, configure, and
%% manage Elasticsearch domains.
%%
%% For sample code that uses the Configuration API, see the Amazon
%% Elasticsearch Service Developer Guide:
%% https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-configuration-samples.html.
%% The guide also contains sample code for sending signed HTTP requests to
%% the Elasticsearch APIs:
%% https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-request-signing.html.
%%
%% The endpoint for configuration service requests is region-specific:
%% es.region.amazonaws.com.
%% For example, es.us-east-1.amazonaws.com. For a current list of supported
%% regions and endpoints,
%% see Regions and Endpoints:
%% http://docs.aws.amazon.com/general/latest/gr/rande.html#elasticsearch-service-regions.
-module(aws_elasticsearch).

-export([accept_inbound_cross_cluster_search_connection/3,
         accept_inbound_cross_cluster_search_connection/4,
         add_tags/2,
         add_tags/3,
         associate_package/4,
         associate_package/5,
         authorize_vpc_endpoint_access/3,
         authorize_vpc_endpoint_access/4,
         cancel_domain_config_change/3,
         cancel_domain_config_change/4,
         cancel_elasticsearch_service_software_update/2,
         cancel_elasticsearch_service_software_update/3,
         create_elasticsearch_domain/2,
         create_elasticsearch_domain/3,
         create_outbound_cross_cluster_search_connection/2,
         create_outbound_cross_cluster_search_connection/3,
         create_package/2,
         create_package/3,
         create_vpc_endpoint/2,
         create_vpc_endpoint/3,
         delete_elasticsearch_domain/3,
         delete_elasticsearch_domain/4,
         delete_elasticsearch_service_role/2,
         delete_elasticsearch_service_role/3,
         delete_inbound_cross_cluster_search_connection/3,
         delete_inbound_cross_cluster_search_connection/4,
         delete_outbound_cross_cluster_search_connection/3,
         delete_outbound_cross_cluster_search_connection/4,
         delete_package/3,
         delete_package/4,
         delete_vpc_endpoint/3,
         delete_vpc_endpoint/4,
         describe_domain_auto_tunes/2,
         describe_domain_auto_tunes/4,
         describe_domain_auto_tunes/5,
         describe_domain_change_progress/2,
         describe_domain_change_progress/4,
         describe_domain_change_progress/5,
         describe_elasticsearch_domain/2,
         describe_elasticsearch_domain/4,
         describe_elasticsearch_domain/5,
         describe_elasticsearch_domain_config/2,
         describe_elasticsearch_domain_config/4,
         describe_elasticsearch_domain_config/5,
         describe_elasticsearch_domains/2,
         describe_elasticsearch_domains/3,
         describe_elasticsearch_instance_type_limits/3,
         describe_elasticsearch_instance_type_limits/5,
         describe_elasticsearch_instance_type_limits/6,
         describe_inbound_cross_cluster_search_connections/2,
         describe_inbound_cross_cluster_search_connections/3,
         describe_outbound_cross_cluster_search_connections/2,
         describe_outbound_cross_cluster_search_connections/3,
         describe_packages/2,
         describe_packages/3,
         describe_reserved_elasticsearch_instance_offerings/1,
         describe_reserved_elasticsearch_instance_offerings/3,
         describe_reserved_elasticsearch_instance_offerings/4,
         describe_reserved_elasticsearch_instances/1,
         describe_reserved_elasticsearch_instances/3,
         describe_reserved_elasticsearch_instances/4,
         describe_vpc_endpoints/2,
         describe_vpc_endpoints/3,
         dissociate_package/4,
         dissociate_package/5,
         get_compatible_elasticsearch_versions/1,
         get_compatible_elasticsearch_versions/3,
         get_compatible_elasticsearch_versions/4,
         get_package_version_history/2,
         get_package_version_history/4,
         get_package_version_history/5,
         get_upgrade_history/2,
         get_upgrade_history/4,
         get_upgrade_history/5,
         get_upgrade_status/2,
         get_upgrade_status/4,
         get_upgrade_status/5,
         list_domain_names/1,
         list_domain_names/3,
         list_domain_names/4,
         list_domains_for_package/2,
         list_domains_for_package/4,
         list_domains_for_package/5,
         list_elasticsearch_instance_types/2,
         list_elasticsearch_instance_types/4,
         list_elasticsearch_instance_types/5,
         list_elasticsearch_versions/1,
         list_elasticsearch_versions/3,
         list_elasticsearch_versions/4,
         list_packages_for_domain/2,
         list_packages_for_domain/4,
         list_packages_for_domain/5,
         list_tags/2,
         list_tags/4,
         list_tags/5,
         list_vpc_endpoint_access/2,
         list_vpc_endpoint_access/4,
         list_vpc_endpoint_access/5,
         list_vpc_endpoints/1,
         list_vpc_endpoints/3,
         list_vpc_endpoints/4,
         list_vpc_endpoints_for_domain/2,
         list_vpc_endpoints_for_domain/4,
         list_vpc_endpoints_for_domain/5,
         purchase_reserved_elasticsearch_instance_offering/2,
         purchase_reserved_elasticsearch_instance_offering/3,
         reject_inbound_cross_cluster_search_connection/3,
         reject_inbound_cross_cluster_search_connection/4,
         remove_tags/2,
         remove_tags/3,
         revoke_vpc_endpoint_access/3,
         revoke_vpc_endpoint_access/4,
         start_elasticsearch_service_software_update/2,
         start_elasticsearch_service_software_update/3,
         update_elasticsearch_domain_config/3,
         update_elasticsearch_domain_config/4,
         update_package/2,
         update_package/3,
         update_vpc_endpoint/2,
         update_vpc_endpoint/3,
         upgrade_elasticsearch_domain/2,
         upgrade_elasticsearch_domain/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% describe_elasticsearch_domain_request() :: #{}
-type describe_elasticsearch_domain_request() :: #{}.


%% Example:
%% list_domain_names_request() :: #{
%%   <<"EngineType">> => list(any())
%% }
-type list_domain_names_request() :: #{binary() => any()}.


%% Example:
%% upgrade_elasticsearch_domain_response() :: #{
%%   <<"ChangeProgressDetails">> => change_progress_details(),
%%   <<"DomainName">> => string(),
%%   <<"PerformCheckOnly">> => boolean(),
%%   <<"TargetVersion">> => string()
%% }
-type upgrade_elasticsearch_domain_response() :: #{binary() => any()}.


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
%%   <<"State">> => list(any())
%% }
-type auto_tune_options_output() :: #{binary() => any()}.


%% Example:
%% describe_domain_auto_tunes_response() :: #{
%%   <<"AutoTunes">> => list(auto_tune()),
%%   <<"NextToken">> => string()
%% }
-type describe_domain_auto_tunes_response() :: #{binary() => any()}.


%% Example:
%% get_compatible_elasticsearch_versions_response() :: #{
%%   <<"CompatibleElasticsearchVersions">> => list(compatible_versions_map())
%% }
-type get_compatible_elasticsearch_versions_response() :: #{binary() => any()}.


%% Example:
%% list_vpc_endpoints_for_domain_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"VpcEndpointSummaryList">> => list(vpc_endpoint_summary())
%% }
-type list_vpc_endpoints_for_domain_response() :: #{binary() => any()}.


%% Example:
%% describe_elasticsearch_domains_request() :: #{
%%   <<"DomainNames">> := list(string())
%% }
-type describe_elasticsearch_domains_request() :: #{binary() => any()}.


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
%% compatible_versions_map() :: #{
%%   <<"SourceVersion">> => string(),
%%   <<"TargetVersions">> => list(string())
%% }
-type compatible_versions_map() :: #{binary() => any()}.


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
%% describe_outbound_cross_cluster_search_connections_request() :: #{
%%   <<"Filters">> => list(filter()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type describe_outbound_cross_cluster_search_connections_request() :: #{binary() => any()}.


%% Example:
%% authorize_vpc_endpoint_access_response() :: #{
%%   <<"AuthorizedPrincipal">> => authorized_principal()
%% }
-type authorize_vpc_endpoint_access_response() :: #{binary() => any()}.


%% Example:
%% elasticsearch_cluster_config_status() :: #{
%%   <<"Options">> => elasticsearch_cluster_config(),
%%   <<"Status">> => option_status()
%% }
-type elasticsearch_cluster_config_status() :: #{binary() => any()}.


%% Example:
%% package_details() :: #{
%%   <<"AvailablePackageVersion">> => string(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"ErrorDetails">> => error_details(),
%%   <<"LastUpdatedAt">> => non_neg_integer(),
%%   <<"PackageDescription">> => string(),
%%   <<"PackageID">> => string(),
%%   <<"PackageName">> => string(),
%%   <<"PackageStatus">> => list(any()),
%%   <<"PackageType">> => list(any())
%% }
-type package_details() :: #{binary() => any()}.


%% Example:
%% describe_domain_change_progress_request() :: #{
%%   <<"ChangeId">> => string()
%% }
-type describe_domain_change_progress_request() :: #{binary() => any()}.


%% Example:
%% create_package_request() :: #{
%%   <<"PackageDescription">> => string(),
%%   <<"PackageName">> := string(),
%%   <<"PackageSource">> := package_source(),
%%   <<"PackageType">> := list(any())
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
%% elasticsearch_cluster_config() :: #{
%%   <<"ColdStorageOptions">> => cold_storage_options(),
%%   <<"DedicatedMasterCount">> => integer(),
%%   <<"DedicatedMasterEnabled">> => boolean(),
%%   <<"DedicatedMasterType">> => list(any()),
%%   <<"InstanceCount">> => integer(),
%%   <<"InstanceType">> => list(any()),
%%   <<"WarmCount">> => integer(),
%%   <<"WarmEnabled">> => boolean(),
%%   <<"WarmType">> => list(any()),
%%   <<"ZoneAwarenessConfig">> => zone_awareness_config(),
%%   <<"ZoneAwarenessEnabled">> => boolean()
%% }
-type elasticsearch_cluster_config() :: #{binary() => any()}.


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
%%   <<"VpcEndpointIds">> := list(string())
%% }
-type describe_vpc_endpoints_request() :: #{binary() => any()}.


%% Example:
%% auto_tune_options_status() :: #{
%%   <<"Options">> => auto_tune_options(),
%%   <<"Status">> => auto_tune_status()
%% }
-type auto_tune_options_status() :: #{binary() => any()}.


%% Example:
%% purchase_reserved_elasticsearch_instance_offering_request() :: #{
%%   <<"InstanceCount">> => integer(),
%%   <<"ReservationName">> := string(),
%%   <<"ReservedElasticsearchInstanceOfferingId">> := string()
%% }
-type purchase_reserved_elasticsearch_instance_offering_request() :: #{binary() => any()}.

%% Example:
%% accept_inbound_cross_cluster_search_connection_request() :: #{}
-type accept_inbound_cross_cluster_search_connection_request() :: #{}.


%% Example:
%% snapshot_options_status() :: #{
%%   <<"Options">> => snapshot_options(),
%%   <<"Status">> => option_status()
%% }
-type snapshot_options_status() :: #{binary() => any()}.


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
%% list_vpc_endpoints_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"VpcEndpointSummaryList">> => list(vpc_endpoint_summary())
%% }
-type list_vpc_endpoints_response() :: #{binary() => any()}.


%% Example:
%% vpc_derived_info() :: #{
%%   <<"AvailabilityZones">> => list(string()),
%%   <<"SecurityGroupIds">> => list(string()),
%%   <<"SubnetIds">> => list(string()),
%%   <<"VPCId">> => string()
%% }
-type vpc_derived_info() :: #{binary() => any()}.


%% Example:
%% describe_reserved_elasticsearch_instances_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ReservedElasticsearchInstanceId">> => string()
%% }
-type describe_reserved_elasticsearch_instances_request() :: #{binary() => any()}.


%% Example:
%% saml_idp() :: #{
%%   <<"EntityId">> => string(),
%%   <<"MetadataContent">> => string()
%% }
-type saml_idp() :: #{binary() => any()}.


%% Example:
%% describe_elasticsearch_instance_type_limits_response() :: #{
%%   <<"LimitsByRole">> => map()
%% }
-type describe_elasticsearch_instance_type_limits_response() :: #{binary() => any()}.


%% Example:
%% list_tags_response() :: #{
%%   <<"TagList">> => list(tag())
%% }
-type list_tags_response() :: #{binary() => any()}.


%% Example:
%% storage_type_limit() :: #{
%%   <<"LimitName">> => string(),
%%   <<"LimitValues">> => list(string())
%% }
-type storage_type_limit() :: #{binary() => any()}.


%% Example:
%% create_outbound_cross_cluster_search_connection_response() :: #{
%%   <<"ConnectionAlias">> => string(),
%%   <<"ConnectionStatus">> => outbound_cross_cluster_search_connection_status(),
%%   <<"CrossClusterSearchConnectionId">> => string(),
%%   <<"DestinationDomainInfo">> => domain_information(),
%%   <<"SourceDomainInfo">> => domain_information()
%% }
-type create_outbound_cross_cluster_search_connection_response() :: #{binary() => any()}.


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
%% delete_elasticsearch_domain_request() :: #{}
-type delete_elasticsearch_domain_request() :: #{}.


%% Example:
%% storage_type() :: #{
%%   <<"StorageSubTypeName">> => string(),
%%   <<"StorageTypeLimits">> => list(storage_type_limit()),
%%   <<"StorageTypeName">> => string()
%% }
-type storage_type() :: #{binary() => any()}.


%% Example:
%% update_package_response() :: #{
%%   <<"PackageDetails">> => package_details()
%% }
-type update_package_response() :: #{binary() => any()}.


%% Example:
%% create_elasticsearch_domain_request() :: #{
%%   <<"AccessPolicies">> => string(),
%%   <<"AdvancedOptions">> => map(),
%%   <<"AdvancedSecurityOptions">> => advanced_security_options_input(),
%%   <<"AutoTuneOptions">> => auto_tune_options_input(),
%%   <<"CognitoOptions">> => cognito_options(),
%%   <<"DomainEndpointOptions">> => domain_endpoint_options(),
%%   <<"DomainName">> := string(),
%%   <<"EBSOptions">> => ebs_options(),
%%   <<"ElasticsearchClusterConfig">> => elasticsearch_cluster_config(),
%%   <<"ElasticsearchVersion">> => string(),
%%   <<"EncryptionAtRestOptions">> => encryption_at_rest_options(),
%%   <<"LogPublishingOptions">> => map(),
%%   <<"NodeToNodeEncryptionOptions">> => node_to_node_encryption_options(),
%%   <<"SnapshotOptions">> => snapshot_options(),
%%   <<"TagList">> => list(tag()),
%%   <<"VPCOptions">> => vpc_options()
%% }
-type create_elasticsearch_domain_request() :: #{binary() => any()}.


%% Example:
%% additional_limit() :: #{
%%   <<"LimitName">> => string(),
%%   <<"LimitValues">> => list(string())
%% }
-type additional_limit() :: #{binary() => any()}.


%% Example:
%% vpc_derived_info_status() :: #{
%%   <<"Options">> => vpc_derived_info(),
%%   <<"Status">> => option_status()
%% }
-type vpc_derived_info_status() :: #{binary() => any()}.


%% Example:
%% inbound_cross_cluster_search_connection_status() :: #{
%%   <<"Message">> => string(),
%%   <<"StatusCode">> => list(any())
%% }
-type inbound_cross_cluster_search_connection_status() :: #{binary() => any()}.


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
%% describe_inbound_cross_cluster_search_connections_response() :: #{
%%   <<"CrossClusterSearchConnections">> => list(inbound_cross_cluster_search_connection()),
%%   <<"NextToken">> => string()
%% }
-type describe_inbound_cross_cluster_search_connections_response() :: #{binary() => any()}.


%% Example:
%% auto_tune_maintenance_schedule() :: #{
%%   <<"CronExpressionForRecurrence">> => string(),
%%   <<"Duration">> => duration(),
%%   <<"StartAt">> => non_neg_integer()
%% }
-type auto_tune_maintenance_schedule() :: #{binary() => any()}.


%% Example:
%% list_packages_for_domain_response() :: #{
%%   <<"DomainPackageDetailsList">> => list(domain_package_details()),
%%   <<"NextToken">> => string()
%% }
-type list_packages_for_domain_response() :: #{binary() => any()}.


%% Example:
%% change_progress_status_details() :: #{
%%   <<"ChangeId">> => string(),
%%   <<"ChangeProgressStages">> => list(change_progress_stage()),
%%   <<"CompletedProperties">> => list(string()),
%%   <<"ConfigChangeStatus">> => list(any()),
%%   <<"InitiatedBy">> => list(any()),
%%   <<"LastUpdatedTime">> => non_neg_integer(),
%%   <<"PendingProperties">> => list(string()),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"Status">> => list(any()),
%%   <<"TotalNumberOfStages">> => integer()
%% }
-type change_progress_status_details() :: #{binary() => any()}.


%% Example:
%% describe_elasticsearch_domain_config_response() :: #{
%%   <<"DomainConfig">> => elasticsearch_domain_config()
%% }
-type describe_elasticsearch_domain_config_response() :: #{binary() => any()}.


%% Example:
%% add_tags_request() :: #{
%%   <<"ARN">> := string(),
%%   <<"TagList">> := list(tag())
%% }
-type add_tags_request() :: #{binary() => any()}.


%% Example:
%% describe_reserved_elasticsearch_instance_offerings_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"ReservedElasticsearchInstanceOfferings">> => list(reserved_elasticsearch_instance_offering())
%% }
-type describe_reserved_elasticsearch_instance_offerings_response() :: #{binary() => any()}.


%% Example:
%% upgrade_history() :: #{
%%   <<"StartTimestamp">> => non_neg_integer(),
%%   <<"StepsList">> => list(upgrade_step_item()),
%%   <<"UpgradeName">> => string(),
%%   <<"UpgradeStatus">> => list(any())
%% }
-type upgrade_history() :: #{binary() => any()}.


%% Example:
%% list_elasticsearch_instance_types_request() :: #{
%%   <<"DomainName">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_elasticsearch_instance_types_request() :: #{binary() => any()}.


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
%% describe_packages_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"PackageDetailsList">> => list(package_details())
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
%% advanced_security_options() :: #{
%%   <<"AnonymousAuthDisableDate">> => non_neg_integer(),
%%   <<"AnonymousAuthEnabled">> => boolean(),
%%   <<"Enabled">> => boolean(),
%%   <<"InternalUserDatabaseEnabled">> => boolean(),
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
%% reject_inbound_cross_cluster_search_connection_request() :: #{}
-type reject_inbound_cross_cluster_search_connection_request() :: #{}.


%% Example:
%% cancel_domain_config_change_response() :: #{
%%   <<"CancelledChangeIds">> => list(string()),
%%   <<"CancelledChangeProperties">> => list(cancelled_change_property()),
%%   <<"DryRun">> => boolean()
%% }
-type cancel_domain_config_change_response() :: #{binary() => any()}.


%% Example:
%% delete_inbound_cross_cluster_search_connection_response() :: #{
%%   <<"CrossClusterSearchConnection">> => inbound_cross_cluster_search_connection()
%% }
-type delete_inbound_cross_cluster_search_connection_response() :: #{binary() => any()}.


%% Example:
%% node_to_node_encryption_options_status() :: #{
%%   <<"Options">> => node_to_node_encryption_options(),
%%   <<"Status">> => option_status()
%% }
-type node_to_node_encryption_options_status() :: #{binary() => any()}.


%% Example:
%% get_upgrade_history_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"UpgradeHistories">> => list(upgrade_history())
%% }
-type get_upgrade_history_response() :: #{binary() => any()}.


%% Example:
%% describe_elasticsearch_instance_type_limits_request() :: #{
%%   <<"DomainName">> => string()
%% }
-type describe_elasticsearch_instance_type_limits_request() :: #{binary() => any()}.


%% Example:
%% create_elasticsearch_domain_response() :: #{
%%   <<"DomainStatus">> => elasticsearch_domain_status()
%% }
-type create_elasticsearch_domain_response() :: #{binary() => any()}.


%% Example:
%% describe_elasticsearch_domain_response() :: #{
%%   <<"DomainStatus">> => elasticsearch_domain_status()
%% }
-type describe_elasticsearch_domain_response() :: #{binary() => any()}.


%% Example:
%% delete_elasticsearch_domain_response() :: #{
%%   <<"DomainStatus">> => elasticsearch_domain_status()
%% }
-type delete_elasticsearch_domain_response() :: #{binary() => any()}.


%% Example:
%% cancel_elasticsearch_service_software_update_request() :: #{
%%   <<"DomainName">> := string()
%% }
-type cancel_elasticsearch_service_software_update_request() :: #{binary() => any()}.


%% Example:
%% describe_vpc_endpoints_response() :: #{
%%   <<"VpcEndpointErrors">> => list(vpc_endpoint_error()),
%%   <<"VpcEndpoints">> => list(vpc_endpoint())
%% }
-type describe_vpc_endpoints_response() :: #{binary() => any()}.


%% Example:
%% start_elasticsearch_service_software_update_request() :: #{
%%   <<"DomainName">> := string()
%% }
-type start_elasticsearch_service_software_update_request() :: #{binary() => any()}.


%% Example:
%% describe_packages_filter() :: #{
%%   <<"Name">> => list(any()),
%%   <<"Value">> => list(string())
%% }
-type describe_packages_filter() :: #{binary() => any()}.


%% Example:
%% update_elasticsearch_domain_config_request() :: #{
%%   <<"AccessPolicies">> => string(),
%%   <<"AdvancedOptions">> => map(),
%%   <<"AdvancedSecurityOptions">> => advanced_security_options_input(),
%%   <<"AutoTuneOptions">> => auto_tune_options(),
%%   <<"CognitoOptions">> => cognito_options(),
%%   <<"DomainEndpointOptions">> => domain_endpoint_options(),
%%   <<"DryRun">> => boolean(),
%%   <<"EBSOptions">> => ebs_options(),
%%   <<"ElasticsearchClusterConfig">> => elasticsearch_cluster_config(),
%%   <<"EncryptionAtRestOptions">> => encryption_at_rest_options(),
%%   <<"LogPublishingOptions">> => map(),
%%   <<"NodeToNodeEncryptionOptions">> => node_to_node_encryption_options(),
%%   <<"SnapshotOptions">> => snapshot_options(),
%%   <<"VPCOptions">> => vpc_options()
%% }
-type update_elasticsearch_domain_config_request() :: #{binary() => any()}.


%% Example:
%% update_vpc_endpoint_response() :: #{
%%   <<"VpcEndpoint">> => vpc_endpoint()
%% }
-type update_vpc_endpoint_response() :: #{binary() => any()}.


%% Example:
%% error_details() :: #{
%%   <<"ErrorMessage">> => string(),
%%   <<"ErrorType">> => string()
%% }
-type error_details() :: #{binary() => any()}.


%% Example:
%% encryption_at_rest_options() :: #{
%%   <<"Enabled">> => boolean(),
%%   <<"KmsKeyId">> => string()
%% }
-type encryption_at_rest_options() :: #{binary() => any()}.


%% Example:
%% get_package_version_history_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"PackageID">> => string(),
%%   <<"PackageVersionHistoryList">> => list(package_version_history())
%% }
-type get_package_version_history_response() :: #{binary() => any()}.


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
%%   <<"PackageDescription">> => string(),
%%   <<"PackageID">> := string(),
%%   <<"PackageSource">> := package_source()
%% }
-type update_package_request() :: #{binary() => any()}.


%% Example:
%% list_domain_names_response() :: #{
%%   <<"DomainNames">> => list(domain_info())
%% }
-type list_domain_names_response() :: #{binary() => any()}.


%% Example:
%% reserved_elasticsearch_instance() :: #{
%%   <<"CurrencyCode">> => string(),
%%   <<"Duration">> => integer(),
%%   <<"ElasticsearchInstanceCount">> => integer(),
%%   <<"ElasticsearchInstanceType">> => list(any()),
%%   <<"FixedPrice">> => float(),
%%   <<"PaymentOption">> => list(any()),
%%   <<"RecurringCharges">> => list(recurring_charge()),
%%   <<"ReservationName">> => string(),
%%   <<"ReservedElasticsearchInstanceId">> => string(),
%%   <<"ReservedElasticsearchInstanceOfferingId">> => string(),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"State">> => string(),
%%   <<"UsagePrice">> => float()
%% }
-type reserved_elasticsearch_instance() :: #{binary() => any()}.

%% Example:
%% associate_package_request() :: #{}
-type associate_package_request() :: #{}.


%% Example:
%% elasticsearch_domain_config() :: #{
%%   <<"AccessPolicies">> => access_policies_status(),
%%   <<"AdvancedOptions">> => advanced_options_status(),
%%   <<"AdvancedSecurityOptions">> => advanced_security_options_status(),
%%   <<"AutoTuneOptions">> => auto_tune_options_status(),
%%   <<"ChangeProgressDetails">> => change_progress_details(),
%%   <<"CognitoOptions">> => cognito_options_status(),
%%   <<"DomainEndpointOptions">> => domain_endpoint_options_status(),
%%   <<"EBSOptions">> => ebs_options_status(),
%%   <<"ElasticsearchClusterConfig">> => elasticsearch_cluster_config_status(),
%%   <<"ElasticsearchVersion">> => elasticsearch_version_status(),
%%   <<"EncryptionAtRestOptions">> => encryption_at_rest_options_status(),
%%   <<"LogPublishingOptions">> => log_publishing_options_status(),
%%   <<"ModifyingProperties">> => list(modifying_properties()),
%%   <<"NodeToNodeEncryptionOptions">> => node_to_node_encryption_options_status(),
%%   <<"SnapshotOptions">> => snapshot_options_status(),
%%   <<"VPCOptions">> => vpc_derived_info_status()
%% }
-type elasticsearch_domain_config() :: #{binary() => any()}.


%% Example:
%% filter() :: #{
%%   <<"Name">> => string(),
%%   <<"Values">> => list(string())
%% }
-type filter() :: #{binary() => any()}.

%% Example:
%% dissociate_package_request() :: #{}
-type dissociate_package_request() :: #{}.


%% Example:
%% describe_outbound_cross_cluster_search_connections_response() :: #{
%%   <<"CrossClusterSearchConnections">> => list(outbound_cross_cluster_search_connection()),
%%   <<"NextToken">> => string()
%% }
-type describe_outbound_cross_cluster_search_connections_response() :: #{binary() => any()}.

%% Example:
%% delete_outbound_cross_cluster_search_connection_request() :: #{}
-type delete_outbound_cross_cluster_search_connection_request() :: #{}.


%% Example:
%% start_elasticsearch_service_software_update_response() :: #{
%%   <<"ServiceSoftwareOptions">> => service_software_options()
%% }
-type start_elasticsearch_service_software_update_response() :: #{binary() => any()}.


%% Example:
%% cancel_elasticsearch_service_software_update_response() :: #{
%%   <<"ServiceSoftwareOptions">> => service_software_options()
%% }
-type cancel_elasticsearch_service_software_update_response() :: #{binary() => any()}.


%% Example:
%% domain_information() :: #{
%%   <<"DomainName">> := string(),
%%   <<"OwnerId">> => string(),
%%   <<"Region">> => string()
%% }
-type domain_information() :: #{binary() => any()}.


%% Example:
%% advanced_security_options_input() :: #{
%%   <<"AnonymousAuthEnabled">> => boolean(),
%%   <<"Enabled">> => boolean(),
%%   <<"InternalUserDatabaseEnabled">> => boolean(),
%%   <<"MasterUserOptions">> => master_user_options(),
%%   <<"SAMLOptions">> => saml_options_input()
%% }
-type advanced_security_options_input() :: #{binary() => any()}.


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
%%   <<"MaintenanceSchedules">> => list(auto_tune_maintenance_schedule())
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
%% change_progress_stage() :: #{
%%   <<"Description">> => string(),
%%   <<"LastUpdated">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"Status">> => string()
%% }
-type change_progress_stage() :: #{binary() => any()}.


%% Example:
%% dissociate_package_response() :: #{
%%   <<"DomainPackageDetails">> => domain_package_details()
%% }
-type dissociate_package_response() :: #{binary() => any()}.

%% Example:
%% delete_package_request() :: #{}
-type delete_package_request() :: #{}.


%% Example:
%% describe_reserved_elasticsearch_instance_offerings_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ReservedElasticsearchInstanceOfferingId">> => string()
%% }
-type describe_reserved_elasticsearch_instance_offerings_request() :: #{binary() => any()}.


%% Example:
%% internal_exception() :: #{
%%   <<"message">> => string()
%% }
-type internal_exception() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% get_compatible_elasticsearch_versions_request() :: #{
%%   <<"DomainName">> => string()
%% }
-type get_compatible_elasticsearch_versions_request() :: #{binary() => any()}.


%% Example:
%% upgrade_elasticsearch_domain_request() :: #{
%%   <<"DomainName">> := string(),
%%   <<"PerformCheckOnly">> => boolean(),
%%   <<"TargetVersion">> := string()
%% }
-type upgrade_elasticsearch_domain_request() :: #{binary() => any()}.

%% Example:
%% describe_elasticsearch_domain_config_request() :: #{}
-type describe_elasticsearch_domain_config_request() :: #{}.


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
%% purchase_reserved_elasticsearch_instance_offering_response() :: #{
%%   <<"ReservationName">> => string(),
%%   <<"ReservedElasticsearchInstanceId">> => string()
%% }
-type purchase_reserved_elasticsearch_instance_offering_response() :: #{binary() => any()}.


%% Example:
%% list_domains_for_package_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_domains_for_package_request() :: #{binary() => any()}.


%% Example:
%% authorize_vpc_endpoint_access_request() :: #{
%%   <<"Account">> := string()
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
%% validation_exception() :: #{
%%   <<"message">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.


%% Example:
%% delete_outbound_cross_cluster_search_connection_response() :: #{
%%   <<"CrossClusterSearchConnection">> => outbound_cross_cluster_search_connection()
%% }
-type delete_outbound_cross_cluster_search_connection_response() :: #{binary() => any()}.


%% Example:
%% auto_tune_options() :: #{
%%   <<"DesiredState">> => list(any()),
%%   <<"MaintenanceSchedules">> => list(auto_tune_maintenance_schedule()),
%%   <<"RollbackOnDisable">> => list(any())
%% }
-type auto_tune_options() :: #{binary() => any()}.


%% Example:
%% elasticsearch_domain_status() :: #{
%%   <<"ARN">> => string(),
%%   <<"AccessPolicies">> => string(),
%%   <<"AdvancedOptions">> => map(),
%%   <<"AdvancedSecurityOptions">> => advanced_security_options(),
%%   <<"AutoTuneOptions">> => auto_tune_options_output(),
%%   <<"ChangeProgressDetails">> => change_progress_details(),
%%   <<"CognitoOptions">> => cognito_options(),
%%   <<"Created">> => boolean(),
%%   <<"Deleted">> => boolean(),
%%   <<"DomainEndpointOptions">> => domain_endpoint_options(),
%%   <<"DomainId">> => string(),
%%   <<"DomainName">> => string(),
%%   <<"DomainProcessingStatus">> => list(any()),
%%   <<"EBSOptions">> => ebs_options(),
%%   <<"ElasticsearchClusterConfig">> => elasticsearch_cluster_config(),
%%   <<"ElasticsearchVersion">> => string(),
%%   <<"EncryptionAtRestOptions">> => encryption_at_rest_options(),
%%   <<"Endpoint">> => string(),
%%   <<"Endpoints">> => map(),
%%   <<"LogPublishingOptions">> => map(),
%%   <<"ModifyingProperties">> => list(modifying_properties()),
%%   <<"NodeToNodeEncryptionOptions">> => node_to_node_encryption_options(),
%%   <<"Processing">> => boolean(),
%%   <<"ServiceSoftwareOptions">> => service_software_options(),
%%   <<"SnapshotOptions">> => snapshot_options(),
%%   <<"UpgradeProcessing">> => boolean(),
%%   <<"VPCOptions">> => vpc_derived_info()
%% }
-type elasticsearch_domain_status() :: #{binary() => any()}.

%% Example:
%% get_upgrade_status_request() :: #{}
-type get_upgrade_status_request() :: #{}.

%% Example:
%% delete_vpc_endpoint_request() :: #{}
-type delete_vpc_endpoint_request() :: #{}.


%% Example:
%% inbound_cross_cluster_search_connection() :: #{
%%   <<"ConnectionStatus">> => inbound_cross_cluster_search_connection_status(),
%%   <<"CrossClusterSearchConnectionId">> => string(),
%%   <<"DestinationDomainInfo">> => domain_information(),
%%   <<"SourceDomainInfo">> => domain_information()
%% }
-type inbound_cross_cluster_search_connection() :: #{binary() => any()}.


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
%% create_package_response() :: #{
%%   <<"PackageDetails">> => package_details()
%% }
-type create_package_response() :: #{binary() => any()}.


%% Example:
%% limits() :: #{
%%   <<"AdditionalLimits">> => list(additional_limit()),
%%   <<"InstanceLimits">> => instance_limits(),
%%   <<"StorageTypes">> => list(storage_type())
%% }
-type limits() :: #{binary() => any()}.


%% Example:
%% revoke_vpc_endpoint_access_request() :: #{
%%   <<"Account">> := string()
%% }
-type revoke_vpc_endpoint_access_request() :: #{binary() => any()}.


%% Example:
%% elasticsearch_version_status() :: #{
%%   <<"Options">> => string(),
%%   <<"Status">> => option_status()
%% }
-type elasticsearch_version_status() :: #{binary() => any()}.


%% Example:
%% vpc_options() :: #{
%%   <<"SecurityGroupIds">> => list(string()),
%%   <<"SubnetIds">> => list(string())
%% }
-type vpc_options() :: #{binary() => any()}.


%% Example:
%% outbound_cross_cluster_search_connection_status() :: #{
%%   <<"Message">> => string(),
%%   <<"StatusCode">> => list(any())
%% }
-type outbound_cross_cluster_search_connection_status() :: #{binary() => any()}.


%% Example:
%% limit_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type limit_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% describe_inbound_cross_cluster_search_connections_request() :: #{
%%   <<"Filters">> => list(filter()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type describe_inbound_cross_cluster_search_connections_request() :: #{binary() => any()}.


%% Example:
%% create_vpc_endpoint_response() :: #{
%%   <<"VpcEndpoint">> => vpc_endpoint()
%% }
-type create_vpc_endpoint_response() :: #{binary() => any()}.


%% Example:
%% domain_endpoint_options_status() :: #{
%%   <<"Options">> => domain_endpoint_options(),
%%   <<"Status">> => option_status()
%% }
-type domain_endpoint_options_status() :: #{binary() => any()}.


%% Example:
%% domain_package_details() :: #{
%%   <<"DomainName">> => string(),
%%   <<"DomainPackageStatus">> => list(any()),
%%   <<"ErrorDetails">> => error_details(),
%%   <<"LastUpdated">> => non_neg_integer(),
%%   <<"PackageID">> => string(),
%%   <<"PackageName">> => string(),
%%   <<"PackageType">> => list(any()),
%%   <<"PackageVersion">> => string(),
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
%% package_version_history() :: #{
%%   <<"CommitMessage">> => string(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"PackageVersion">> => string()
%% }
-type package_version_history() :: #{binary() => any()}.


%% Example:
%% list_elasticsearch_versions_response() :: #{
%%   <<"ElasticsearchVersions">> => list(string()),
%%   <<"NextToken">> => string()
%% }
-type list_elasticsearch_versions_response() :: #{binary() => any()}.


%% Example:
%% resource_already_exists_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_already_exists_exception() :: #{binary() => any()}.


%% Example:
%% update_vpc_endpoint_request() :: #{
%%   <<"VpcEndpointId">> := string(),
%%   <<"VpcOptions">> := vpc_options()
%% }
-type update_vpc_endpoint_request() :: #{binary() => any()}.


%% Example:
%% remove_tags_request() :: #{
%%   <<"ARN">> := string(),
%%   <<"TagKeys">> := list(string())
%% }
-type remove_tags_request() :: #{binary() => any()}.


%% Example:
%% list_tags_request() :: #{
%%   <<"ARN">> := string()
%% }
-type list_tags_request() :: #{binary() => any()}.


%% Example:
%% auto_tune() :: #{
%%   <<"AutoTuneDetails">> => auto_tune_details(),
%%   <<"AutoTuneType">> => list(any())
%% }
-type auto_tune() :: #{binary() => any()}.


%% Example:
%% describe_packages_request() :: #{
%%   <<"Filters">> => list(describe_packages_filter()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type describe_packages_request() :: #{binary() => any()}.


%% Example:
%% create_outbound_cross_cluster_search_connection_request() :: #{
%%   <<"ConnectionAlias">> := string(),
%%   <<"DestinationDomainInfo">> := domain_information(),
%%   <<"SourceDomainInfo">> := domain_information()
%% }
-type create_outbound_cross_cluster_search_connection_request() :: #{binary() => any()}.


%% Example:
%% upgrade_step_item() :: #{
%%   <<"Issues">> => list(string()),
%%   <<"ProgressPercent">> => float(),
%%   <<"UpgradeStep">> => list(any()),
%%   <<"UpgradeStepStatus">> => list(any())
%% }
-type upgrade_step_item() :: #{binary() => any()}.


%% Example:
%% outbound_cross_cluster_search_connection() :: #{
%%   <<"ConnectionAlias">> => string(),
%%   <<"ConnectionStatus">> => outbound_cross_cluster_search_connection_status(),
%%   <<"CrossClusterSearchConnectionId">> => string(),
%%   <<"DestinationDomainInfo">> => domain_information(),
%%   <<"SourceDomainInfo">> => domain_information()
%% }
-type outbound_cross_cluster_search_connection() :: #{binary() => any()}.


%% Example:
%% log_publishing_option() :: #{
%%   <<"CloudWatchLogsLogGroupArn">> => string(),
%%   <<"Enabled">> => boolean()
%% }
-type log_publishing_option() :: #{binary() => any()}.


%% Example:
%% accept_inbound_cross_cluster_search_connection_response() :: #{
%%   <<"CrossClusterSearchConnection">> => inbound_cross_cluster_search_connection()
%% }
-type accept_inbound_cross_cluster_search_connection_response() :: #{binary() => any()}.


%% Example:
%% list_elasticsearch_versions_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_elasticsearch_versions_request() :: #{binary() => any()}.


%% Example:
%% list_vpc_endpoint_access_response() :: #{
%%   <<"AuthorizedPrincipalList">> => list(authorized_principal()),
%%   <<"NextToken">> => string()
%% }
-type list_vpc_endpoint_access_response() :: #{binary() => any()}.


%% Example:
%% describe_reserved_elasticsearch_instances_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"ReservedElasticsearchInstances">> => list(reserved_elasticsearch_instance())
%% }
-type describe_reserved_elasticsearch_instances_response() :: #{binary() => any()}.


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
%% update_elasticsearch_domain_config_response() :: #{
%%   <<"DomainConfig">> => elasticsearch_domain_config(),
%%   <<"DryRunResults">> => dry_run_results()
%% }
-type update_elasticsearch_domain_config_response() :: #{binary() => any()}.


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
%% associate_package_response() :: #{
%%   <<"DomainPackageDetails">> => domain_package_details()
%% }
-type associate_package_response() :: #{binary() => any()}.


%% Example:
%% describe_elasticsearch_domains_response() :: #{
%%   <<"DomainStatusList">> => list(elasticsearch_domain_status())
%% }
-type describe_elasticsearch_domains_response() :: #{binary() => any()}.


%% Example:
%% encryption_at_rest_options_status() :: #{
%%   <<"Options">> => encryption_at_rest_options(),
%%   <<"Status">> => option_status()
%% }
-type encryption_at_rest_options_status() :: #{binary() => any()}.


%% Example:
%% list_elasticsearch_instance_types_response() :: #{
%%   <<"ElasticsearchInstanceTypes">> => list(list(any())()),
%%   <<"NextToken">> => string()
%% }
-type list_elasticsearch_instance_types_response() :: #{binary() => any()}.


%% Example:
%% instance_count_limits() :: #{
%%   <<"MaximumInstanceCount">> => integer(),
%%   <<"MinimumInstanceCount">> => integer()
%% }
-type instance_count_limits() :: #{binary() => any()}.

%% Example:
%% revoke_vpc_endpoint_access_response() :: #{}
-type revoke_vpc_endpoint_access_response() :: #{}.

%% Example:
%% delete_inbound_cross_cluster_search_connection_request() :: #{}
-type delete_inbound_cross_cluster_search_connection_request() :: #{}.


%% Example:
%% list_domains_for_package_response() :: #{
%%   <<"DomainPackageDetailsList">> => list(domain_package_details()),
%%   <<"NextToken">> => string()
%% }
-type list_domains_for_package_response() :: #{binary() => any()}.


%% Example:
%% invalid_pagination_token_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_pagination_token_exception() :: #{binary() => any()}.


%% Example:
%% reserved_elasticsearch_instance_offering() :: #{
%%   <<"CurrencyCode">> => string(),
%%   <<"Duration">> => integer(),
%%   <<"ElasticsearchInstanceType">> => list(any()),
%%   <<"FixedPrice">> => float(),
%%   <<"PaymentOption">> => list(any()),
%%   <<"RecurringCharges">> => list(recurring_charge()),
%%   <<"ReservedElasticsearchInstanceOfferingId">> => string(),
%%   <<"UsagePrice">> => float()
%% }
-type reserved_elasticsearch_instance_offering() :: #{binary() => any()}.


%% Example:
%% master_user_options() :: #{
%%   <<"MasterUserARN">> => string(),
%%   <<"MasterUserName">> => string(),
%%   <<"MasterUserPassword">> => string()
%% }
-type master_user_options() :: #{binary() => any()}.


%% Example:
%% reject_inbound_cross_cluster_search_connection_response() :: #{
%%   <<"CrossClusterSearchConnection">> => inbound_cross_cluster_search_connection()
%% }
-type reject_inbound_cross_cluster_search_connection_response() :: #{binary() => any()}.

-type accept_inbound_cross_cluster_search_connection_errors() ::
    limit_exceeded_exception() | 
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

-type cancel_elasticsearch_service_software_update_errors() ::
    base_exception() | 
    validation_exception() | 
    internal_exception() | 
    resource_not_found_exception().

-type create_elasticsearch_domain_errors() ::
    resource_already_exists_exception() | 
    limit_exceeded_exception() | 
    base_exception() | 
    validation_exception() | 
    internal_exception() | 
    invalid_type_exception() | 
    disabled_operation_exception().

-type create_outbound_cross_cluster_search_connection_errors() ::
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

-type delete_elasticsearch_domain_errors() ::
    base_exception() | 
    validation_exception() | 
    internal_exception() | 
    resource_not_found_exception().

-type delete_elasticsearch_service_role_errors() ::
    base_exception() | 
    validation_exception() | 
    internal_exception().

-type delete_inbound_cross_cluster_search_connection_errors() ::
    resource_not_found_exception() | 
    disabled_operation_exception().

-type delete_outbound_cross_cluster_search_connection_errors() ::
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

-type describe_elasticsearch_domain_errors() ::
    base_exception() | 
    validation_exception() | 
    internal_exception() | 
    resource_not_found_exception().

-type describe_elasticsearch_domain_config_errors() ::
    base_exception() | 
    validation_exception() | 
    internal_exception() | 
    resource_not_found_exception().

-type describe_elasticsearch_domains_errors() ::
    base_exception() | 
    validation_exception() | 
    internal_exception().

-type describe_elasticsearch_instance_type_limits_errors() ::
    limit_exceeded_exception() | 
    base_exception() | 
    validation_exception() | 
    internal_exception() | 
    invalid_type_exception() | 
    resource_not_found_exception().

-type describe_inbound_cross_cluster_search_connections_errors() ::
    invalid_pagination_token_exception() | 
    disabled_operation_exception().

-type describe_outbound_cross_cluster_search_connections_errors() ::
    invalid_pagination_token_exception() | 
    disabled_operation_exception().

-type describe_packages_errors() ::
    base_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_exception() | 
    resource_not_found_exception().

-type describe_reserved_elasticsearch_instance_offerings_errors() ::
    validation_exception() | 
    internal_exception() | 
    resource_not_found_exception() | 
    disabled_operation_exception().

-type describe_reserved_elasticsearch_instances_errors() ::
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

-type get_compatible_elasticsearch_versions_errors() ::
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

-type list_domain_names_errors() ::
    base_exception() | 
    validation_exception().

-type list_domains_for_package_errors() ::
    base_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_exception() | 
    resource_not_found_exception().

-type list_elasticsearch_instance_types_errors() ::
    base_exception() | 
    validation_exception() | 
    internal_exception() | 
    resource_not_found_exception().

-type list_elasticsearch_versions_errors() ::
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

-type list_tags_errors() ::
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

-type purchase_reserved_elasticsearch_instance_offering_errors() ::
    resource_already_exists_exception() | 
    limit_exceeded_exception() | 
    validation_exception() | 
    internal_exception() | 
    resource_not_found_exception() | 
    disabled_operation_exception().

-type reject_inbound_cross_cluster_search_connection_errors() ::
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

-type start_elasticsearch_service_software_update_errors() ::
    base_exception() | 
    validation_exception() | 
    internal_exception() | 
    resource_not_found_exception().

-type update_elasticsearch_domain_config_errors() ::
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

-type update_vpc_endpoint_errors() ::
    base_exception() | 
    validation_exception() | 
    internal_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    disabled_operation_exception().

-type upgrade_elasticsearch_domain_errors() ::
    resource_already_exists_exception() | 
    base_exception() | 
    validation_exception() | 
    internal_exception() | 
    resource_not_found_exception() | 
    disabled_operation_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Allows the destination domain owner to accept an inbound
%% cross-cluster search connection request.
-spec accept_inbound_cross_cluster_search_connection(aws_client:aws_client(), binary() | list(), accept_inbound_cross_cluster_search_connection_request()) ->
    {ok, accept_inbound_cross_cluster_search_connection_response(), tuple()} |
    {error, any()} |
    {error, accept_inbound_cross_cluster_search_connection_errors(), tuple()}.
accept_inbound_cross_cluster_search_connection(Client, CrossClusterSearchConnectionId, Input) ->
    accept_inbound_cross_cluster_search_connection(Client, CrossClusterSearchConnectionId, Input, []).

-spec accept_inbound_cross_cluster_search_connection(aws_client:aws_client(), binary() | list(), accept_inbound_cross_cluster_search_connection_request(), proplists:proplist()) ->
    {ok, accept_inbound_cross_cluster_search_connection_response(), tuple()} |
    {error, any()} |
    {error, accept_inbound_cross_cluster_search_connection_errors(), tuple()}.
accept_inbound_cross_cluster_search_connection(Client, CrossClusterSearchConnectionId, Input0, Options0) ->
    Method = put,
    Path = ["/2015-01-01/es/ccs/inboundConnection/", aws_util:encode_uri(CrossClusterSearchConnectionId), "/accept"],
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

%% @doc Attaches tags to an existing Elasticsearch domain.
%%
%% Tags are a set of case-sensitive key value pairs. An Elasticsearch domain
%% may have up to 10 tags. See
%% Tagging Amazon Elasticsearch Service Domains for more information.:
%% http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-managedomains.html#es-managedomains-awsresorcetagging
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
    Path = ["/2015-01-01/tags"],
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

%% @doc Associates a package with an Amazon ES domain.
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
    Path = ["/2015-01-01/packages/associate/", aws_util:encode_uri(PackageID), "/", aws_util:encode_uri(DomainName), ""],
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
%% use of an interface VPC endpoint.
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
    Path = ["/2015-01-01/es/domain/", aws_util:encode_uri(DomainName), "/authorizeVpcEndpointAccess"],
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
    Path = ["/2015-01-01/es/domain/", aws_util:encode_uri(DomainName), "/config/cancel"],
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

%% @doc Cancels a scheduled service software update for an Amazon ES domain.
%%
%% You can only perform this operation before the `AutomatedUpdateDate'
%% and when the `UpdateStatus' is in the `PENDING_UPDATE' state.
-spec cancel_elasticsearch_service_software_update(aws_client:aws_client(), cancel_elasticsearch_service_software_update_request()) ->
    {ok, cancel_elasticsearch_service_software_update_response(), tuple()} |
    {error, any()} |
    {error, cancel_elasticsearch_service_software_update_errors(), tuple()}.
cancel_elasticsearch_service_software_update(Client, Input) ->
    cancel_elasticsearch_service_software_update(Client, Input, []).

-spec cancel_elasticsearch_service_software_update(aws_client:aws_client(), cancel_elasticsearch_service_software_update_request(), proplists:proplist()) ->
    {ok, cancel_elasticsearch_service_software_update_response(), tuple()} |
    {error, any()} |
    {error, cancel_elasticsearch_service_software_update_errors(), tuple()}.
cancel_elasticsearch_service_software_update(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2015-01-01/es/serviceSoftwareUpdate/cancel"],
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

%% @doc Creates a new Elasticsearch domain.
%%
%% For more information,
%% see Creating Elasticsearch Domains:
%% http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomains
%% in the Amazon Elasticsearch Service Developer Guide.
-spec create_elasticsearch_domain(aws_client:aws_client(), create_elasticsearch_domain_request()) ->
    {ok, create_elasticsearch_domain_response(), tuple()} |
    {error, any()} |
    {error, create_elasticsearch_domain_errors(), tuple()}.
create_elasticsearch_domain(Client, Input) ->
    create_elasticsearch_domain(Client, Input, []).

-spec create_elasticsearch_domain(aws_client:aws_client(), create_elasticsearch_domain_request(), proplists:proplist()) ->
    {ok, create_elasticsearch_domain_response(), tuple()} |
    {error, any()} |
    {error, create_elasticsearch_domain_errors(), tuple()}.
create_elasticsearch_domain(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2015-01-01/es/domain"],
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

%% @doc Creates a new cross-cluster search connection from a source domain to
%% a destination domain.
-spec create_outbound_cross_cluster_search_connection(aws_client:aws_client(), create_outbound_cross_cluster_search_connection_request()) ->
    {ok, create_outbound_cross_cluster_search_connection_response(), tuple()} |
    {error, any()} |
    {error, create_outbound_cross_cluster_search_connection_errors(), tuple()}.
create_outbound_cross_cluster_search_connection(Client, Input) ->
    create_outbound_cross_cluster_search_connection(Client, Input, []).

-spec create_outbound_cross_cluster_search_connection(aws_client:aws_client(), create_outbound_cross_cluster_search_connection_request(), proplists:proplist()) ->
    {ok, create_outbound_cross_cluster_search_connection_response(), tuple()} |
    {error, any()} |
    {error, create_outbound_cross_cluster_search_connection_errors(), tuple()}.
create_outbound_cross_cluster_search_connection(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2015-01-01/es/ccs/outboundConnection"],
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

%% @doc Create a package for use with Amazon ES domains.
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
    Path = ["/2015-01-01/packages"],
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
    Path = ["/2015-01-01/es/vpcEndpoints"],
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

%% @doc Permanently deletes the specified Elasticsearch domain and all of its
%% data.
%%
%% Once a domain is deleted, it cannot be recovered.
-spec delete_elasticsearch_domain(aws_client:aws_client(), binary() | list(), delete_elasticsearch_domain_request()) ->
    {ok, delete_elasticsearch_domain_response(), tuple()} |
    {error, any()} |
    {error, delete_elasticsearch_domain_errors(), tuple()}.
delete_elasticsearch_domain(Client, DomainName, Input) ->
    delete_elasticsearch_domain(Client, DomainName, Input, []).

-spec delete_elasticsearch_domain(aws_client:aws_client(), binary() | list(), delete_elasticsearch_domain_request(), proplists:proplist()) ->
    {ok, delete_elasticsearch_domain_response(), tuple()} |
    {error, any()} |
    {error, delete_elasticsearch_domain_errors(), tuple()}.
delete_elasticsearch_domain(Client, DomainName, Input0, Options0) ->
    Method = delete,
    Path = ["/2015-01-01/es/domain/", aws_util:encode_uri(DomainName), ""],
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

%% @doc Deletes the service-linked role that Elasticsearch Service uses to
%% manage and maintain VPC domains.
%%
%% Role deletion will fail if any existing VPC domains use the role. You must
%% delete any such Elasticsearch domains before deleting the role. See
%% Deleting Elasticsearch Service Role:
%% http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-vpc.html#es-enabling-slr
%% in VPC Endpoints for Amazon Elasticsearch Service Domains.
-spec delete_elasticsearch_service_role(aws_client:aws_client(), #{}) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_elasticsearch_service_role_errors(), tuple()}.
delete_elasticsearch_service_role(Client, Input) ->
    delete_elasticsearch_service_role(Client, Input, []).

-spec delete_elasticsearch_service_role(aws_client:aws_client(), #{}, proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_elasticsearch_service_role_errors(), tuple()}.
delete_elasticsearch_service_role(Client, Input0, Options0) ->
    Method = delete,
    Path = ["/2015-01-01/es/role"],
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

%% @doc Allows the destination domain owner to delete an existing inbound
%% cross-cluster search connection.
-spec delete_inbound_cross_cluster_search_connection(aws_client:aws_client(), binary() | list(), delete_inbound_cross_cluster_search_connection_request()) ->
    {ok, delete_inbound_cross_cluster_search_connection_response(), tuple()} |
    {error, any()} |
    {error, delete_inbound_cross_cluster_search_connection_errors(), tuple()}.
delete_inbound_cross_cluster_search_connection(Client, CrossClusterSearchConnectionId, Input) ->
    delete_inbound_cross_cluster_search_connection(Client, CrossClusterSearchConnectionId, Input, []).

-spec delete_inbound_cross_cluster_search_connection(aws_client:aws_client(), binary() | list(), delete_inbound_cross_cluster_search_connection_request(), proplists:proplist()) ->
    {ok, delete_inbound_cross_cluster_search_connection_response(), tuple()} |
    {error, any()} |
    {error, delete_inbound_cross_cluster_search_connection_errors(), tuple()}.
delete_inbound_cross_cluster_search_connection(Client, CrossClusterSearchConnectionId, Input0, Options0) ->
    Method = delete,
    Path = ["/2015-01-01/es/ccs/inboundConnection/", aws_util:encode_uri(CrossClusterSearchConnectionId), ""],
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

%% @doc Allows the source domain owner to delete an existing outbound
%% cross-cluster search connection.
-spec delete_outbound_cross_cluster_search_connection(aws_client:aws_client(), binary() | list(), delete_outbound_cross_cluster_search_connection_request()) ->
    {ok, delete_outbound_cross_cluster_search_connection_response(), tuple()} |
    {error, any()} |
    {error, delete_outbound_cross_cluster_search_connection_errors(), tuple()}.
delete_outbound_cross_cluster_search_connection(Client, CrossClusterSearchConnectionId, Input) ->
    delete_outbound_cross_cluster_search_connection(Client, CrossClusterSearchConnectionId, Input, []).

-spec delete_outbound_cross_cluster_search_connection(aws_client:aws_client(), binary() | list(), delete_outbound_cross_cluster_search_connection_request(), proplists:proplist()) ->
    {ok, delete_outbound_cross_cluster_search_connection_response(), tuple()} |
    {error, any()} |
    {error, delete_outbound_cross_cluster_search_connection_errors(), tuple()}.
delete_outbound_cross_cluster_search_connection(Client, CrossClusterSearchConnectionId, Input0, Options0) ->
    Method = delete,
    Path = ["/2015-01-01/es/ccs/outboundConnection/", aws_util:encode_uri(CrossClusterSearchConnectionId), ""],
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

%% @doc Delete the package.
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
    Path = ["/2015-01-01/packages/", aws_util:encode_uri(PackageID), ""],
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
    Path = ["/2015-01-01/es/vpcEndpoints/", aws_util:encode_uri(VpcEndpointId), ""],
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

%% @doc Provides scheduled Auto-Tune action details for the Elasticsearch
%% domain, such as Auto-Tune action type, description, severity, and
%% scheduled date.
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
    Path = ["/2015-01-01/es/domain/", aws_util:encode_uri(DomainName), "/autoTunes"],
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
%% on a domain, including
%% a change ID, status, and progress stages.
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
    Path = ["/2015-01-01/es/domain/", aws_util:encode_uri(DomainName), "/progress"],
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

%% @doc Returns domain configuration information about the specified
%% Elasticsearch domain, including the domain ID, domain endpoint, and domain
%% ARN.
-spec describe_elasticsearch_domain(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_elasticsearch_domain_response(), tuple()} |
    {error, any()} |
    {error, describe_elasticsearch_domain_errors(), tuple()}.
describe_elasticsearch_domain(Client, DomainName)
  when is_map(Client) ->
    describe_elasticsearch_domain(Client, DomainName, #{}, #{}).

-spec describe_elasticsearch_domain(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_elasticsearch_domain_response(), tuple()} |
    {error, any()} |
    {error, describe_elasticsearch_domain_errors(), tuple()}.
describe_elasticsearch_domain(Client, DomainName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_elasticsearch_domain(Client, DomainName, QueryMap, HeadersMap, []).

-spec describe_elasticsearch_domain(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_elasticsearch_domain_response(), tuple()} |
    {error, any()} |
    {error, describe_elasticsearch_domain_errors(), tuple()}.
describe_elasticsearch_domain(Client, DomainName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2015-01-01/es/domain/", aws_util:encode_uri(DomainName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Provides cluster configuration information about the specified
%% Elasticsearch domain, such as the state, creation date, update version,
%% and update date for cluster options.
-spec describe_elasticsearch_domain_config(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_elasticsearch_domain_config_response(), tuple()} |
    {error, any()} |
    {error, describe_elasticsearch_domain_config_errors(), tuple()}.
describe_elasticsearch_domain_config(Client, DomainName)
  when is_map(Client) ->
    describe_elasticsearch_domain_config(Client, DomainName, #{}, #{}).

-spec describe_elasticsearch_domain_config(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_elasticsearch_domain_config_response(), tuple()} |
    {error, any()} |
    {error, describe_elasticsearch_domain_config_errors(), tuple()}.
describe_elasticsearch_domain_config(Client, DomainName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_elasticsearch_domain_config(Client, DomainName, QueryMap, HeadersMap, []).

-spec describe_elasticsearch_domain_config(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_elasticsearch_domain_config_response(), tuple()} |
    {error, any()} |
    {error, describe_elasticsearch_domain_config_errors(), tuple()}.
describe_elasticsearch_domain_config(Client, DomainName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2015-01-01/es/domain/", aws_util:encode_uri(DomainName), "/config"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns domain configuration information about the specified
%% Elasticsearch domains, including the domain ID, domain endpoint, and
%% domain ARN.
-spec describe_elasticsearch_domains(aws_client:aws_client(), describe_elasticsearch_domains_request()) ->
    {ok, describe_elasticsearch_domains_response(), tuple()} |
    {error, any()} |
    {error, describe_elasticsearch_domains_errors(), tuple()}.
describe_elasticsearch_domains(Client, Input) ->
    describe_elasticsearch_domains(Client, Input, []).

-spec describe_elasticsearch_domains(aws_client:aws_client(), describe_elasticsearch_domains_request(), proplists:proplist()) ->
    {ok, describe_elasticsearch_domains_response(), tuple()} |
    {error, any()} |
    {error, describe_elasticsearch_domains_errors(), tuple()}.
describe_elasticsearch_domains(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2015-01-01/es/domain-info"],
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
%% Describe Elasticsearch Limits for a given InstanceType and
%% ElasticsearchVersion.
%%
%% When modifying existing Domain, specify the
%%
%% ```
%% `DomainName' '''
%% to know what Limits are supported for modifying.
-spec describe_elasticsearch_instance_type_limits(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_elasticsearch_instance_type_limits_response(), tuple()} |
    {error, any()} |
    {error, describe_elasticsearch_instance_type_limits_errors(), tuple()}.
describe_elasticsearch_instance_type_limits(Client, ElasticsearchVersion, InstanceType)
  when is_map(Client) ->
    describe_elasticsearch_instance_type_limits(Client, ElasticsearchVersion, InstanceType, #{}, #{}).

-spec describe_elasticsearch_instance_type_limits(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_elasticsearch_instance_type_limits_response(), tuple()} |
    {error, any()} |
    {error, describe_elasticsearch_instance_type_limits_errors(), tuple()}.
describe_elasticsearch_instance_type_limits(Client, ElasticsearchVersion, InstanceType, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_elasticsearch_instance_type_limits(Client, ElasticsearchVersion, InstanceType, QueryMap, HeadersMap, []).

-spec describe_elasticsearch_instance_type_limits(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_elasticsearch_instance_type_limits_response(), tuple()} |
    {error, any()} |
    {error, describe_elasticsearch_instance_type_limits_errors(), tuple()}.
describe_elasticsearch_instance_type_limits(Client, ElasticsearchVersion, InstanceType, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2015-01-01/es/instanceTypeLimits/", aws_util:encode_uri(ElasticsearchVersion), "/", aws_util:encode_uri(InstanceType), ""],
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

%% @doc Lists all the inbound cross-cluster search connections for a
%% destination domain.
-spec describe_inbound_cross_cluster_search_connections(aws_client:aws_client(), describe_inbound_cross_cluster_search_connections_request()) ->
    {ok, describe_inbound_cross_cluster_search_connections_response(), tuple()} |
    {error, any()} |
    {error, describe_inbound_cross_cluster_search_connections_errors(), tuple()}.
describe_inbound_cross_cluster_search_connections(Client, Input) ->
    describe_inbound_cross_cluster_search_connections(Client, Input, []).

-spec describe_inbound_cross_cluster_search_connections(aws_client:aws_client(), describe_inbound_cross_cluster_search_connections_request(), proplists:proplist()) ->
    {ok, describe_inbound_cross_cluster_search_connections_response(), tuple()} |
    {error, any()} |
    {error, describe_inbound_cross_cluster_search_connections_errors(), tuple()}.
describe_inbound_cross_cluster_search_connections(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2015-01-01/es/ccs/inboundConnection/search"],
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

%% @doc Lists all the outbound cross-cluster search connections for a source
%% domain.
-spec describe_outbound_cross_cluster_search_connections(aws_client:aws_client(), describe_outbound_cross_cluster_search_connections_request()) ->
    {ok, describe_outbound_cross_cluster_search_connections_response(), tuple()} |
    {error, any()} |
    {error, describe_outbound_cross_cluster_search_connections_errors(), tuple()}.
describe_outbound_cross_cluster_search_connections(Client, Input) ->
    describe_outbound_cross_cluster_search_connections(Client, Input, []).

-spec describe_outbound_cross_cluster_search_connections(aws_client:aws_client(), describe_outbound_cross_cluster_search_connections_request(), proplists:proplist()) ->
    {ok, describe_outbound_cross_cluster_search_connections_response(), tuple()} |
    {error, any()} |
    {error, describe_outbound_cross_cluster_search_connections_errors(), tuple()}.
describe_outbound_cross_cluster_search_connections(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2015-01-01/es/ccs/outboundConnection/search"],
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

%% @doc Describes all packages available to Amazon ES.
%%
%% Includes options for filtering, limiting the number of results, and
%% pagination.
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
    Path = ["/2015-01-01/packages/describe"],
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

%% @doc Lists available reserved Elasticsearch instance offerings.
-spec describe_reserved_elasticsearch_instance_offerings(aws_client:aws_client()) ->
    {ok, describe_reserved_elasticsearch_instance_offerings_response(), tuple()} |
    {error, any()} |
    {error, describe_reserved_elasticsearch_instance_offerings_errors(), tuple()}.
describe_reserved_elasticsearch_instance_offerings(Client)
  when is_map(Client) ->
    describe_reserved_elasticsearch_instance_offerings(Client, #{}, #{}).

-spec describe_reserved_elasticsearch_instance_offerings(aws_client:aws_client(), map(), map()) ->
    {ok, describe_reserved_elasticsearch_instance_offerings_response(), tuple()} |
    {error, any()} |
    {error, describe_reserved_elasticsearch_instance_offerings_errors(), tuple()}.
describe_reserved_elasticsearch_instance_offerings(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_reserved_elasticsearch_instance_offerings(Client, QueryMap, HeadersMap, []).

-spec describe_reserved_elasticsearch_instance_offerings(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, describe_reserved_elasticsearch_instance_offerings_response(), tuple()} |
    {error, any()} |
    {error, describe_reserved_elasticsearch_instance_offerings_errors(), tuple()}.
describe_reserved_elasticsearch_instance_offerings(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2015-01-01/es/reservedInstanceOfferings"],
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

%% @doc Returns information about reserved Elasticsearch instances for this
%% account.
-spec describe_reserved_elasticsearch_instances(aws_client:aws_client()) ->
    {ok, describe_reserved_elasticsearch_instances_response(), tuple()} |
    {error, any()} |
    {error, describe_reserved_elasticsearch_instances_errors(), tuple()}.
describe_reserved_elasticsearch_instances(Client)
  when is_map(Client) ->
    describe_reserved_elasticsearch_instances(Client, #{}, #{}).

-spec describe_reserved_elasticsearch_instances(aws_client:aws_client(), map(), map()) ->
    {ok, describe_reserved_elasticsearch_instances_response(), tuple()} |
    {error, any()} |
    {error, describe_reserved_elasticsearch_instances_errors(), tuple()}.
describe_reserved_elasticsearch_instances(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_reserved_elasticsearch_instances(Client, QueryMap, HeadersMap, []).

-spec describe_reserved_elasticsearch_instances(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, describe_reserved_elasticsearch_instances_response(), tuple()} |
    {error, any()} |
    {error, describe_reserved_elasticsearch_instances_errors(), tuple()}.
describe_reserved_elasticsearch_instances(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2015-01-01/es/reservedInstances"],
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
    Path = ["/2015-01-01/es/vpcEndpoints/describe"],
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

%% @doc Dissociates a package from the Amazon ES domain.
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
    Path = ["/2015-01-01/packages/dissociate/", aws_util:encode_uri(PackageID), "/", aws_util:encode_uri(DomainName), ""],
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
%% Returns a list of upgrade compatible Elastisearch versions.
%%
%% You can optionally pass a
%%
%% ```
%% `DomainName' '''
%% to get all upgrade compatible Elasticsearch versions for that specific
%% domain.
-spec get_compatible_elasticsearch_versions(aws_client:aws_client()) ->
    {ok, get_compatible_elasticsearch_versions_response(), tuple()} |
    {error, any()} |
    {error, get_compatible_elasticsearch_versions_errors(), tuple()}.
get_compatible_elasticsearch_versions(Client)
  when is_map(Client) ->
    get_compatible_elasticsearch_versions(Client, #{}, #{}).

-spec get_compatible_elasticsearch_versions(aws_client:aws_client(), map(), map()) ->
    {ok, get_compatible_elasticsearch_versions_response(), tuple()} |
    {error, any()} |
    {error, get_compatible_elasticsearch_versions_errors(), tuple()}.
get_compatible_elasticsearch_versions(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_compatible_elasticsearch_versions(Client, QueryMap, HeadersMap, []).

-spec get_compatible_elasticsearch_versions(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, get_compatible_elasticsearch_versions_response(), tuple()} |
    {error, any()} |
    {error, get_compatible_elasticsearch_versions_errors(), tuple()}.
get_compatible_elasticsearch_versions(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2015-01-01/es/compatibleVersions"],
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

%% @doc Returns a list of versions of the package, along with their creation
%% time and commit message.
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
    Path = ["/2015-01-01/packages/", aws_util:encode_uri(PackageID), "/history"],
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

%% @doc Retrieves the complete history of the last 10 upgrades that were
%% performed on the domain.
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
    Path = ["/2015-01-01/es/upgradeDomain/", aws_util:encode_uri(DomainName), "/history"],
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

%% @doc Retrieves the latest status of the last upgrade or upgrade
%% eligibility check that was performed on the domain.
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
    Path = ["/2015-01-01/es/upgradeDomain/", aws_util:encode_uri(DomainName), "/status"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the name of all Elasticsearch domains owned by the current
%% user's account.
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
    Path = ["/2015-01-01/domain"],
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

%% @doc Lists all Amazon ES domains associated with the package.
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
    Path = ["/2015-01-01/packages/", aws_util:encode_uri(PackageID), "/domains"],
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

%% @doc List all Elasticsearch instance types that are supported for given
%% ElasticsearchVersion
-spec list_elasticsearch_instance_types(aws_client:aws_client(), binary() | list()) ->
    {ok, list_elasticsearch_instance_types_response(), tuple()} |
    {error, any()} |
    {error, list_elasticsearch_instance_types_errors(), tuple()}.
list_elasticsearch_instance_types(Client, ElasticsearchVersion)
  when is_map(Client) ->
    list_elasticsearch_instance_types(Client, ElasticsearchVersion, #{}, #{}).

-spec list_elasticsearch_instance_types(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_elasticsearch_instance_types_response(), tuple()} |
    {error, any()} |
    {error, list_elasticsearch_instance_types_errors(), tuple()}.
list_elasticsearch_instance_types(Client, ElasticsearchVersion, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_elasticsearch_instance_types(Client, ElasticsearchVersion, QueryMap, HeadersMap, []).

-spec list_elasticsearch_instance_types(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_elasticsearch_instance_types_response(), tuple()} |
    {error, any()} |
    {error, list_elasticsearch_instance_types_errors(), tuple()}.
list_elasticsearch_instance_types(Client, ElasticsearchVersion, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2015-01-01/es/instanceTypes/", aws_util:encode_uri(ElasticsearchVersion), ""],
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
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List all supported Elasticsearch versions
-spec list_elasticsearch_versions(aws_client:aws_client()) ->
    {ok, list_elasticsearch_versions_response(), tuple()} |
    {error, any()} |
    {error, list_elasticsearch_versions_errors(), tuple()}.
list_elasticsearch_versions(Client)
  when is_map(Client) ->
    list_elasticsearch_versions(Client, #{}, #{}).

-spec list_elasticsearch_versions(aws_client:aws_client(), map(), map()) ->
    {ok, list_elasticsearch_versions_response(), tuple()} |
    {error, any()} |
    {error, list_elasticsearch_versions_errors(), tuple()}.
list_elasticsearch_versions(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_elasticsearch_versions(Client, QueryMap, HeadersMap, []).

-spec list_elasticsearch_versions(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_elasticsearch_versions_response(), tuple()} |
    {error, any()} |
    {error, list_elasticsearch_versions_errors(), tuple()}.
list_elasticsearch_versions(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2015-01-01/es/versions"],
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

%% @doc Lists all packages associated with the Amazon ES domain.
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
    Path = ["/2015-01-01/domain/", aws_util:encode_uri(DomainName), "/packages"],
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

%% @doc Returns all tags for the given Elasticsearch domain.
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
    Path = ["/2015-01-01/tags"],
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

%% @doc Retrieves information about each principal that is allowed to access
%% a
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
    Path = ["/2015-01-01/es/domain/", aws_util:encode_uri(DomainName), "/listVpcEndpointAccess"],
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
%% current account and Region.
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
    Path = ["/2015-01-01/es/vpcEndpoints"],
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
%% associated with a particular domain.
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
    Path = ["/2015-01-01/es/domain/", aws_util:encode_uri(DomainName), "/vpcEndpoints"],
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

%% @doc Allows you to purchase reserved Elasticsearch instances.
-spec purchase_reserved_elasticsearch_instance_offering(aws_client:aws_client(), purchase_reserved_elasticsearch_instance_offering_request()) ->
    {ok, purchase_reserved_elasticsearch_instance_offering_response(), tuple()} |
    {error, any()} |
    {error, purchase_reserved_elasticsearch_instance_offering_errors(), tuple()}.
purchase_reserved_elasticsearch_instance_offering(Client, Input) ->
    purchase_reserved_elasticsearch_instance_offering(Client, Input, []).

-spec purchase_reserved_elasticsearch_instance_offering(aws_client:aws_client(), purchase_reserved_elasticsearch_instance_offering_request(), proplists:proplist()) ->
    {ok, purchase_reserved_elasticsearch_instance_offering_response(), tuple()} |
    {error, any()} |
    {error, purchase_reserved_elasticsearch_instance_offering_errors(), tuple()}.
purchase_reserved_elasticsearch_instance_offering(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2015-01-01/es/purchaseReservedInstanceOffering"],
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

%% @doc Allows the destination domain owner to reject an inbound
%% cross-cluster search connection request.
-spec reject_inbound_cross_cluster_search_connection(aws_client:aws_client(), binary() | list(), reject_inbound_cross_cluster_search_connection_request()) ->
    {ok, reject_inbound_cross_cluster_search_connection_response(), tuple()} |
    {error, any()} |
    {error, reject_inbound_cross_cluster_search_connection_errors(), tuple()}.
reject_inbound_cross_cluster_search_connection(Client, CrossClusterSearchConnectionId, Input) ->
    reject_inbound_cross_cluster_search_connection(Client, CrossClusterSearchConnectionId, Input, []).

-spec reject_inbound_cross_cluster_search_connection(aws_client:aws_client(), binary() | list(), reject_inbound_cross_cluster_search_connection_request(), proplists:proplist()) ->
    {ok, reject_inbound_cross_cluster_search_connection_response(), tuple()} |
    {error, any()} |
    {error, reject_inbound_cross_cluster_search_connection_errors(), tuple()}.
reject_inbound_cross_cluster_search_connection(Client, CrossClusterSearchConnectionId, Input0, Options0) ->
    Method = put,
    Path = ["/2015-01-01/es/ccs/inboundConnection/", aws_util:encode_uri(CrossClusterSearchConnectionId), "/reject"],
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

%% @doc Removes the specified set of tags from the specified Elasticsearch
%% domain.
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
    Path = ["/2015-01-01/tags-removal"],
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
    Path = ["/2015-01-01/es/domain/", aws_util:encode_uri(DomainName), "/revokeVpcEndpointAccess"],
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

%% @doc Schedules a service software update for an Amazon ES domain.
-spec start_elasticsearch_service_software_update(aws_client:aws_client(), start_elasticsearch_service_software_update_request()) ->
    {ok, start_elasticsearch_service_software_update_response(), tuple()} |
    {error, any()} |
    {error, start_elasticsearch_service_software_update_errors(), tuple()}.
start_elasticsearch_service_software_update(Client, Input) ->
    start_elasticsearch_service_software_update(Client, Input, []).

-spec start_elasticsearch_service_software_update(aws_client:aws_client(), start_elasticsearch_service_software_update_request(), proplists:proplist()) ->
    {ok, start_elasticsearch_service_software_update_response(), tuple()} |
    {error, any()} |
    {error, start_elasticsearch_service_software_update_errors(), tuple()}.
start_elasticsearch_service_software_update(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2015-01-01/es/serviceSoftwareUpdate/start"],
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

%% @doc Modifies the cluster configuration of the specified Elasticsearch
%% domain, setting as setting the instance type and the number of instances.
-spec update_elasticsearch_domain_config(aws_client:aws_client(), binary() | list(), update_elasticsearch_domain_config_request()) ->
    {ok, update_elasticsearch_domain_config_response(), tuple()} |
    {error, any()} |
    {error, update_elasticsearch_domain_config_errors(), tuple()}.
update_elasticsearch_domain_config(Client, DomainName, Input) ->
    update_elasticsearch_domain_config(Client, DomainName, Input, []).

-spec update_elasticsearch_domain_config(aws_client:aws_client(), binary() | list(), update_elasticsearch_domain_config_request(), proplists:proplist()) ->
    {ok, update_elasticsearch_domain_config_response(), tuple()} |
    {error, any()} |
    {error, update_elasticsearch_domain_config_errors(), tuple()}.
update_elasticsearch_domain_config(Client, DomainName, Input0, Options0) ->
    Method = post,
    Path = ["/2015-01-01/es/domain/", aws_util:encode_uri(DomainName), "/config"],
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

%% @doc Updates a package for use with Amazon ES domains.
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
    Path = ["/2015-01-01/packages/update"],
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
    Path = ["/2015-01-01/es/vpcEndpoints/update"],
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

%% @doc Allows you to either upgrade your domain or perform an Upgrade
%% eligibility check to a compatible Elasticsearch version.
-spec upgrade_elasticsearch_domain(aws_client:aws_client(), upgrade_elasticsearch_domain_request()) ->
    {ok, upgrade_elasticsearch_domain_response(), tuple()} |
    {error, any()} |
    {error, upgrade_elasticsearch_domain_errors(), tuple()}.
upgrade_elasticsearch_domain(Client, Input) ->
    upgrade_elasticsearch_domain(Client, Input, []).

-spec upgrade_elasticsearch_domain(aws_client:aws_client(), upgrade_elasticsearch_domain_request(), proplists:proplist()) ->
    {ok, upgrade_elasticsearch_domain_response(), tuple()} |
    {error, any()} |
    {error, upgrade_elasticsearch_domain_errors(), tuple()}.
upgrade_elasticsearch_domain(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2015-01-01/es/upgradeDomain"],
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
