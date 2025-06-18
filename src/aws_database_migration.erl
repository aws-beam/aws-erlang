%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Database Migration Service
%%
%% Database Migration Service (DMS) can migrate your data to and from the
%% most
%% widely used commercial and open-source databases such as Oracle,
%% PostgreSQL, Microsoft SQL
%% Server, Amazon Redshift, MariaDB, Amazon Aurora, MySQL, and SAP Adaptive
%% Server Enterprise
%% (ASE).
%%
%% The service supports homogeneous migrations such as Oracle to Oracle, as
%% well as
%% heterogeneous migrations between different database platforms, such as
%% Oracle to MySQL or
%% SQL Server to PostgreSQL.
%%
%% For more information about DMS, see What Is Database Migration Service?:
%% https://docs.aws.amazon.com/dms/latest/userguide/Welcome.html
%% in the Database Migration Service User Guide.
-module(aws_database_migration).

-export([add_tags_to_resource/2,
         add_tags_to_resource/3,
         apply_pending_maintenance_action/2,
         apply_pending_maintenance_action/3,
         batch_start_recommendations/2,
         batch_start_recommendations/3,
         cancel_replication_task_assessment_run/2,
         cancel_replication_task_assessment_run/3,
         create_data_migration/2,
         create_data_migration/3,
         create_data_provider/2,
         create_data_provider/3,
         create_endpoint/2,
         create_endpoint/3,
         create_event_subscription/2,
         create_event_subscription/3,
         create_fleet_advisor_collector/2,
         create_fleet_advisor_collector/3,
         create_instance_profile/2,
         create_instance_profile/3,
         create_migration_project/2,
         create_migration_project/3,
         create_replication_config/2,
         create_replication_config/3,
         create_replication_instance/2,
         create_replication_instance/3,
         create_replication_subnet_group/2,
         create_replication_subnet_group/3,
         create_replication_task/2,
         create_replication_task/3,
         delete_certificate/2,
         delete_certificate/3,
         delete_connection/2,
         delete_connection/3,
         delete_data_migration/2,
         delete_data_migration/3,
         delete_data_provider/2,
         delete_data_provider/3,
         delete_endpoint/2,
         delete_endpoint/3,
         delete_event_subscription/2,
         delete_event_subscription/3,
         delete_fleet_advisor_collector/2,
         delete_fleet_advisor_collector/3,
         delete_fleet_advisor_databases/2,
         delete_fleet_advisor_databases/3,
         delete_instance_profile/2,
         delete_instance_profile/3,
         delete_migration_project/2,
         delete_migration_project/3,
         delete_replication_config/2,
         delete_replication_config/3,
         delete_replication_instance/2,
         delete_replication_instance/3,
         delete_replication_subnet_group/2,
         delete_replication_subnet_group/3,
         delete_replication_task/2,
         delete_replication_task/3,
         delete_replication_task_assessment_run/2,
         delete_replication_task_assessment_run/3,
         describe_account_attributes/2,
         describe_account_attributes/3,
         describe_applicable_individual_assessments/2,
         describe_applicable_individual_assessments/3,
         describe_certificates/2,
         describe_certificates/3,
         describe_connections/2,
         describe_connections/3,
         describe_conversion_configuration/2,
         describe_conversion_configuration/3,
         describe_data_migrations/2,
         describe_data_migrations/3,
         describe_data_providers/2,
         describe_data_providers/3,
         describe_endpoint_settings/2,
         describe_endpoint_settings/3,
         describe_endpoint_types/2,
         describe_endpoint_types/3,
         describe_endpoints/2,
         describe_endpoints/3,
         describe_engine_versions/2,
         describe_engine_versions/3,
         describe_event_categories/2,
         describe_event_categories/3,
         describe_event_subscriptions/2,
         describe_event_subscriptions/3,
         describe_events/2,
         describe_events/3,
         describe_extension_pack_associations/2,
         describe_extension_pack_associations/3,
         describe_fleet_advisor_collectors/2,
         describe_fleet_advisor_collectors/3,
         describe_fleet_advisor_databases/2,
         describe_fleet_advisor_databases/3,
         describe_fleet_advisor_lsa_analysis/2,
         describe_fleet_advisor_lsa_analysis/3,
         describe_fleet_advisor_schema_object_summary/2,
         describe_fleet_advisor_schema_object_summary/3,
         describe_fleet_advisor_schemas/2,
         describe_fleet_advisor_schemas/3,
         describe_instance_profiles/2,
         describe_instance_profiles/3,
         describe_metadata_model_assessments/2,
         describe_metadata_model_assessments/3,
         describe_metadata_model_conversions/2,
         describe_metadata_model_conversions/3,
         describe_metadata_model_exports_as_script/2,
         describe_metadata_model_exports_as_script/3,
         describe_metadata_model_exports_to_target/2,
         describe_metadata_model_exports_to_target/3,
         describe_metadata_model_imports/2,
         describe_metadata_model_imports/3,
         describe_migration_projects/2,
         describe_migration_projects/3,
         describe_orderable_replication_instances/2,
         describe_orderable_replication_instances/3,
         describe_pending_maintenance_actions/2,
         describe_pending_maintenance_actions/3,
         describe_recommendation_limitations/2,
         describe_recommendation_limitations/3,
         describe_recommendations/2,
         describe_recommendations/3,
         describe_refresh_schemas_status/2,
         describe_refresh_schemas_status/3,
         describe_replication_configs/2,
         describe_replication_configs/3,
         describe_replication_instance_task_logs/2,
         describe_replication_instance_task_logs/3,
         describe_replication_instances/2,
         describe_replication_instances/3,
         describe_replication_subnet_groups/2,
         describe_replication_subnet_groups/3,
         describe_replication_table_statistics/2,
         describe_replication_table_statistics/3,
         describe_replication_task_assessment_results/2,
         describe_replication_task_assessment_results/3,
         describe_replication_task_assessment_runs/2,
         describe_replication_task_assessment_runs/3,
         describe_replication_task_individual_assessments/2,
         describe_replication_task_individual_assessments/3,
         describe_replication_tasks/2,
         describe_replication_tasks/3,
         describe_replications/2,
         describe_replications/3,
         describe_schemas/2,
         describe_schemas/3,
         describe_table_statistics/2,
         describe_table_statistics/3,
         export_metadata_model_assessment/2,
         export_metadata_model_assessment/3,
         import_certificate/2,
         import_certificate/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         modify_conversion_configuration/2,
         modify_conversion_configuration/3,
         modify_data_migration/2,
         modify_data_migration/3,
         modify_data_provider/2,
         modify_data_provider/3,
         modify_endpoint/2,
         modify_endpoint/3,
         modify_event_subscription/2,
         modify_event_subscription/3,
         modify_instance_profile/2,
         modify_instance_profile/3,
         modify_migration_project/2,
         modify_migration_project/3,
         modify_replication_config/2,
         modify_replication_config/3,
         modify_replication_instance/2,
         modify_replication_instance/3,
         modify_replication_subnet_group/2,
         modify_replication_subnet_group/3,
         modify_replication_task/2,
         modify_replication_task/3,
         move_replication_task/2,
         move_replication_task/3,
         reboot_replication_instance/2,
         reboot_replication_instance/3,
         refresh_schemas/2,
         refresh_schemas/3,
         reload_replication_tables/2,
         reload_replication_tables/3,
         reload_tables/2,
         reload_tables/3,
         remove_tags_from_resource/2,
         remove_tags_from_resource/3,
         run_fleet_advisor_lsa_analysis/2,
         run_fleet_advisor_lsa_analysis/3,
         start_data_migration/2,
         start_data_migration/3,
         start_extension_pack_association/2,
         start_extension_pack_association/3,
         start_metadata_model_assessment/2,
         start_metadata_model_assessment/3,
         start_metadata_model_conversion/2,
         start_metadata_model_conversion/3,
         start_metadata_model_export_as_script/2,
         start_metadata_model_export_as_script/3,
         start_metadata_model_export_to_target/2,
         start_metadata_model_export_to_target/3,
         start_metadata_model_import/2,
         start_metadata_model_import/3,
         start_recommendations/2,
         start_recommendations/3,
         start_replication/2,
         start_replication/3,
         start_replication_task/2,
         start_replication_task/3,
         start_replication_task_assessment/2,
         start_replication_task_assessment/3,
         start_replication_task_assessment_run/2,
         start_replication_task_assessment_run/3,
         stop_data_migration/2,
         stop_data_migration/3,
         stop_replication/2,
         stop_replication/3,
         stop_replication_task/2,
         stop_replication_task/3,
         test_connection/2,
         test_connection/3,
         update_subscriptions_to_event_bridge/2,
         update_subscriptions_to_event_bridge/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% redshift_settings() :: #{
%%   <<"AcceptAnyDate">> => boolean(),
%%   <<"AfterConnectScript">> => string(),
%%   <<"BucketFolder">> => string(),
%%   <<"BucketName">> => string(),
%%   <<"CaseSensitiveNames">> => boolean(),
%%   <<"CompUpdate">> => boolean(),
%%   <<"ConnectionTimeout">> => integer(),
%%   <<"DatabaseName">> => string(),
%%   <<"DateFormat">> => string(),
%%   <<"EmptyAsNull">> => boolean(),
%%   <<"EncryptionMode">> => list(any()),
%%   <<"ExplicitIds">> => boolean(),
%%   <<"FileTransferUploadStreams">> => integer(),
%%   <<"LoadTimeout">> => integer(),
%%   <<"MapBooleanAsBoolean">> => boolean(),
%%   <<"MaxFileSize">> => integer(),
%%   <<"Password">> => string(),
%%   <<"Port">> => integer(),
%%   <<"RemoveQuotes">> => boolean(),
%%   <<"ReplaceChars">> => string(),
%%   <<"ReplaceInvalidChars">> => string(),
%%   <<"SecretsManagerAccessRoleArn">> => string(),
%%   <<"SecretsManagerSecretId">> => string(),
%%   <<"ServerName">> => string(),
%%   <<"ServerSideEncryptionKmsKeyId">> => string(),
%%   <<"ServiceAccessRoleArn">> => string(),
%%   <<"TimeFormat">> => string(),
%%   <<"TrimBlanks">> => boolean(),
%%   <<"TruncateColumns">> => boolean(),
%%   <<"Username">> => string(),
%%   <<"WriteBufferSize">> => integer()
%% }
-type redshift_settings() :: #{binary() => any()}.

%% Example:
%% collector_response() :: #{
%%   <<"CollectorHealthCheck">> => collector_health_check(),
%%   <<"CollectorName">> => string(),
%%   <<"CollectorReferencedId">> => string(),
%%   <<"CollectorVersion">> => string(),
%%   <<"CreatedDate">> => string(),
%%   <<"Description">> => string(),
%%   <<"InventoryData">> => inventory_data(),
%%   <<"LastDataReceived">> => string(),
%%   <<"ModifiedDate">> => string(),
%%   <<"RegisteredDate">> => string(),
%%   <<"S3BucketName">> => string(),
%%   <<"ServiceAccessRoleArn">> => string(),
%%   <<"VersionStatus">> => list(any())
%% }
-type collector_response() :: #{binary() => any()}.

%% Example:
%% fleet_advisor_schema_object_response() :: #{
%%   <<"CodeLineCount">> => float(),
%%   <<"CodeSize">> => float(),
%%   <<"NumberOfObjects">> => float(),
%%   <<"ObjectType">> => string(),
%%   <<"SchemaId">> => string()
%% }
-type fleet_advisor_schema_object_response() :: #{binary() => any()}.

%% Example:
%% resource_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type resource_not_found_fault() :: #{binary() => any()}.

%% Example:
%% describe_fleet_advisor_databases_request() :: #{
%%   <<"Filters">> => list(filter()()),
%%   <<"MaxRecords">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type describe_fleet_advisor_databases_request() :: #{binary() => any()}.

%% Example:
%% describe_table_statistics_message() :: #{
%%   <<"Filters">> => list(filter()()),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer(),
%%   <<"ReplicationTaskArn">> := string()
%% }
-type describe_table_statistics_message() :: #{binary() => any()}.

%% Example:
%% kinesis_settings() :: #{
%%   <<"IncludeControlDetails">> => boolean(),
%%   <<"IncludeNullAndEmpty">> => boolean(),
%%   <<"IncludePartitionValue">> => boolean(),
%%   <<"IncludeTableAlterOperations">> => boolean(),
%%   <<"IncludeTransactionDetails">> => boolean(),
%%   <<"MessageFormat">> => list(any()),
%%   <<"NoHexPrefix">> => boolean(),
%%   <<"PartitionIncludeSchemaTable">> => boolean(),
%%   <<"ServiceAccessRoleArn">> => string(),
%%   <<"StreamArn">> => string(),
%%   <<"UseLargeIntegerValue">> => boolean()
%% }
-type kinesis_settings() :: #{binary() => any()}.

%% Example:
%% invalid_resource_state_fault() :: #{
%%   <<"message">> => string()
%% }
-type invalid_resource_state_fault() :: #{binary() => any()}.

%% Example:
%% data_provider() :: #{
%%   <<"DataProviderArn">> => string(),
%%   <<"DataProviderCreationTime">> => non_neg_integer(),
%%   <<"DataProviderName">> => string(),
%%   <<"Description">> => string(),
%%   <<"Engine">> => string(),
%%   <<"Settings">> => list(),
%%   <<"Virtual">> => boolean()
%% }
-type data_provider() :: #{binary() => any()}.

%% Example:
%% delete_data_provider_message() :: #{
%%   <<"DataProviderIdentifier">> := string()
%% }
-type delete_data_provider_message() :: #{binary() => any()}.

%% Example:
%% pending_maintenance_action() :: #{
%%   <<"Action">> => string(),
%%   <<"AutoAppliedAfterDate">> => non_neg_integer(),
%%   <<"CurrentApplyDate">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"ForcedApplyDate">> => non_neg_integer(),
%%   <<"OptInStatus">> => string()
%% }
-type pending_maintenance_action() :: #{binary() => any()}.

%% Example:
%% account_quota() :: #{
%%   <<"AccountQuotaName">> => string(),
%%   <<"Max">> => float(),
%%   <<"Used">> => float()
%% }
-type account_quota() :: #{binary() => any()}.

%% Example:
%% apply_pending_maintenance_action_message() :: #{
%%   <<"ApplyAction">> := string(),
%%   <<"OptInType">> := string(),
%%   <<"ReplicationInstanceArn">> := string()
%% }
-type apply_pending_maintenance_action_message() :: #{binary() => any()}.

%% Example:
%% upgrade_dependency_failure_fault() :: #{
%%   <<"message">> => string()
%% }
-type upgrade_dependency_failure_fault() :: #{binary() => any()}.

%% Example:
%% subnet_already_in_use() :: #{
%%   <<"message">> => string()
%% }
-type subnet_already_in_use() :: #{binary() => any()}.

%% Example:
%% describe_engine_versions_message() :: #{
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer()
%% }
-type describe_engine_versions_message() :: #{binary() => any()}.

%% Example:
%% describe_endpoints_message() :: #{
%%   <<"Filters">> => list(filter()()),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer()
%% }
-type describe_endpoints_message() :: #{binary() => any()}.

%% Example:
%% oracle_data_provider_settings() :: #{
%%   <<"AsmServer">> => string(),
%%   <<"CertificateArn">> => string(),
%%   <<"DatabaseName">> => string(),
%%   <<"Port">> => integer(),
%%   <<"S3AccessRoleArn">> => string(),
%%   <<"S3Path">> => string(),
%%   <<"SecretsManagerOracleAsmAccessRoleArn">> => string(),
%%   <<"SecretsManagerOracleAsmSecretId">> => string(),
%%   <<"SecretsManagerSecurityDbEncryptionAccessRoleArn">> => string(),
%%   <<"SecretsManagerSecurityDbEncryptionSecretId">> => string(),
%%   <<"ServerName">> => string(),
%%   <<"SslMode">> => list(any())
%% }
-type oracle_data_provider_settings() :: #{binary() => any()}.

%% Example:
%% describe_orderable_replication_instances_message() :: #{
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer()
%% }
-type describe_orderable_replication_instances_message() :: #{binary() => any()}.

%% Example:
%% export_metadata_model_assessment_result_entry() :: #{
%%   <<"ObjectURL">> => string(),
%%   <<"S3ObjectKey">> => string()
%% }
-type export_metadata_model_assessment_result_entry() :: #{binary() => any()}.

%% Example:
%% describe_replication_configs_message() :: #{
%%   <<"Filters">> => list(filter()()),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer()
%% }
-type describe_replication_configs_message() :: #{binary() => any()}.

%% Example:
%% resource_pending_maintenance_actions() :: #{
%%   <<"PendingMaintenanceActionDetails">> => list(pending_maintenance_action()()),
%%   <<"ResourceIdentifier">> => string()
%% }
-type resource_pending_maintenance_actions() :: #{binary() => any()}.

%% Example:
%% start_metadata_model_import_message() :: #{
%%   <<"MigrationProjectIdentifier">> := string(),
%%   <<"Origin">> := list(any()),
%%   <<"Refresh">> => boolean(),
%%   <<"SelectionRules">> := string()
%% }
-type start_metadata_model_import_message() :: #{binary() => any()}.

%% Example:
%% create_replication_subnet_group_response() :: #{
%%   <<"ReplicationSubnetGroup">> => replication_subnet_group()
%% }
-type create_replication_subnet_group_response() :: #{binary() => any()}.

%% Example:
%% describe_fleet_advisor_collectors_response() :: #{
%%   <<"Collectors">> => list(collector_response()()),
%%   <<"NextToken">> => string()
%% }
-type describe_fleet_advisor_collectors_response() :: #{binary() => any()}.

%% Example:
%% access_denied_fault() :: #{
%%   <<"message">> => string()
%% }
-type access_denied_fault() :: #{binary() => any()}.

%% Example:
%% kms_invalid_state_fault() :: #{
%%   <<"message">> => string()
%% }
-type kms_invalid_state_fault() :: #{binary() => any()}.

%% Example:
%% describe_metadata_model_imports_response() :: #{
%%   <<"Marker">> => string(),
%%   <<"Requests">> => list(schema_conversion_request()())
%% }
-type describe_metadata_model_imports_response() :: #{binary() => any()}.

%% Example:
%% start_replication_task_message() :: #{
%%   <<"CdcStartPosition">> => string(),
%%   <<"CdcStartTime">> => non_neg_integer(),
%%   <<"CdcStopPosition">> => string(),
%%   <<"ReplicationTaskArn">> := string(),
%%   <<"StartReplicationTaskType">> := list(any())
%% }
-type start_replication_task_message() :: #{binary() => any()}.

%% Example:
%% delete_instance_profile_response() :: #{
%%   <<"InstanceProfile">> => instance_profile()
%% }
-type delete_instance_profile_response() :: #{binary() => any()}.

%% Example:
%% rds_recommendation() :: #{
%%   <<"RequirementsToTarget">> => rds_requirements(),
%%   <<"TargetConfiguration">> => rds_configuration()
%% }
-type rds_recommendation() :: #{binary() => any()}.

%% Example:
%% instance_profile() :: #{
%%   <<"AvailabilityZone">> => string(),
%%   <<"Description">> => string(),
%%   <<"InstanceProfileArn">> => string(),
%%   <<"InstanceProfileCreationTime">> => non_neg_integer(),
%%   <<"InstanceProfileName">> => string(),
%%   <<"KmsKeyArn">> => string(),
%%   <<"NetworkType">> => string(),
%%   <<"PubliclyAccessible">> => boolean(),
%%   <<"SubnetGroupIdentifier">> => string(),
%%   <<"VpcSecurityGroups">> => list(string()())
%% }
-type instance_profile() :: #{binary() => any()}.

%% Example:
%% default_error_details() :: #{
%%   <<"Message">> => string()
%% }
-type default_error_details() :: #{binary() => any()}.

%% Example:
%% modify_instance_profile_response() :: #{
%%   <<"InstanceProfile">> => instance_profile()
%% }
-type modify_instance_profile_response() :: #{binary() => any()}.

%% Example:
%% create_migration_project_message() :: #{
%%   <<"Description">> => string(),
%%   <<"InstanceProfileIdentifier">> := string(),
%%   <<"MigrationProjectName">> => string(),
%%   <<"SchemaConversionApplicationAttributes">> => s_capplication_attributes(),
%%   <<"SourceDataProviderDescriptors">> := list(data_provider_descriptor_definition()()),
%%   <<"Tags">> => list(tag()()),
%%   <<"TargetDataProviderDescriptors">> := list(data_provider_descriptor_definition()()),
%%   <<"TransformationRules">> => string()
%% }
-type create_migration_project_message() :: #{binary() => any()}.

%% Example:
%% endpoint_setting() :: #{
%%   <<"Applicability">> => string(),
%%   <<"DefaultValue">> => string(),
%%   <<"EnumValues">> => list(string()()),
%%   <<"IntValueMax">> => integer(),
%%   <<"IntValueMin">> => integer(),
%%   <<"Name">> => string(),
%%   <<"Sensitive">> => boolean(),
%%   <<"Type">> => list(any()),
%%   <<"Units">> => string()
%% }
-type endpoint_setting() :: #{binary() => any()}.

%% Example:
%% availability_zone() :: #{
%%   <<"Name">> => string()
%% }
-type availability_zone() :: #{binary() => any()}.

%% Example:
%% replication_stats() :: #{
%%   <<"ElapsedTimeMillis">> => float(),
%%   <<"FreshStartDate">> => non_neg_integer(),
%%   <<"FullLoadFinishDate">> => non_neg_integer(),
%%   <<"FullLoadProgressPercent">> => integer(),
%%   <<"FullLoadStartDate">> => non_neg_integer(),
%%   <<"StartDate">> => non_neg_integer(),
%%   <<"StopDate">> => non_neg_integer(),
%%   <<"TablesErrored">> => integer(),
%%   <<"TablesLoaded">> => integer(),
%%   <<"TablesLoading">> => integer(),
%%   <<"TablesQueued">> => integer()
%% }
-type replication_stats() :: #{binary() => any()}.

%% Example:
%% inventory_data() :: #{
%%   <<"NumberOfDatabases">> => integer(),
%%   <<"NumberOfSchemas">> => integer()
%% }
-type inventory_data() :: #{binary() => any()}.

%% Example:
%% delete_replication_task_assessment_run_message() :: #{
%%   <<"ReplicationTaskAssessmentRunArn">> := string()
%% }
-type delete_replication_task_assessment_run_message() :: #{binary() => any()}.

%% Example:
%% describe_recommendation_limitations_response() :: #{
%%   <<"Limitations">> => list(limitation()()),
%%   <<"NextToken">> => string()
%% }
-type describe_recommendation_limitations_response() :: #{binary() => any()}.

%% Example:
%% describe_event_categories_response() :: #{
%%   <<"EventCategoryGroupList">> => list(event_category_group()())
%% }
-type describe_event_categories_response() :: #{binary() => any()}.

%% Example:
%% create_fleet_advisor_collector_request() :: #{
%%   <<"CollectorName">> := string(),
%%   <<"Description">> => string(),
%%   <<"S3BucketName">> := string(),
%%   <<"ServiceAccessRoleArn">> := string()
%% }
-type create_fleet_advisor_collector_request() :: #{binary() => any()}.

%% Example:
%% describe_metadata_model_conversions_message() :: #{
%%   <<"Filters">> => list(filter()()),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer(),
%%   <<"MigrationProjectIdentifier">> := string()
%% }
-type describe_metadata_model_conversions_message() :: #{binary() => any()}.

%% Example:
%% sybase_settings() :: #{
%%   <<"DatabaseName">> => string(),
%%   <<"Password">> => string(),
%%   <<"Port">> => integer(),
%%   <<"SecretsManagerAccessRoleArn">> => string(),
%%   <<"SecretsManagerSecretId">> => string(),
%%   <<"ServerName">> => string(),
%%   <<"Username">> => string()
%% }
-type sybase_settings() :: #{binary() => any()}.

%% Example:
%% create_replication_subnet_group_message() :: #{
%%   <<"ReplicationSubnetGroupDescription">> := string(),
%%   <<"ReplicationSubnetGroupIdentifier">> := string(),
%%   <<"SubnetIds">> := list(string()()),
%%   <<"Tags">> => list(tag()())
%% }
-type create_replication_subnet_group_message() :: #{binary() => any()}.

%% Example:
%% delete_migration_project_message() :: #{
%%   <<"MigrationProjectIdentifier">> := string()
%% }
-type delete_migration_project_message() :: #{binary() => any()}.

%% Example:
%% delete_fleet_advisor_databases_request() :: #{
%%   <<"DatabaseIds">> := list(string()())
%% }
-type delete_fleet_advisor_databases_request() :: #{binary() => any()}.

%% Example:
%% describe_fleet_advisor_databases_response() :: #{
%%   <<"Databases">> => list(database_response()()),
%%   <<"NextToken">> => string()
%% }
-type describe_fleet_advisor_databases_response() :: #{binary() => any()}.

%% Example:
%% schema_short_info_response() :: #{
%%   <<"DatabaseId">> => string(),
%%   <<"DatabaseIpAddress">> => string(),
%%   <<"DatabaseName">> => string(),
%%   <<"SchemaId">> => string(),
%%   <<"SchemaName">> => string()
%% }
-type schema_short_info_response() :: #{binary() => any()}.

%% Example:
%% engine_version() :: #{
%%   <<"AutoUpgradeDate">> => non_neg_integer(),
%%   <<"AvailableUpgrades">> => list(string()()),
%%   <<"DeprecationDate">> => non_neg_integer(),
%%   <<"ForceUpgradeDate">> => non_neg_integer(),
%%   <<"LaunchDate">> => non_neg_integer(),
%%   <<"Lifecycle">> => string(),
%%   <<"ReleaseStatus">> => list(any()),
%%   <<"Version">> => string()
%% }
-type engine_version() :: #{binary() => any()}.

%% Example:
%% remove_tags_from_resource_response() :: #{

%% }
-type remove_tags_from_resource_response() :: #{binary() => any()}.

%% Example:
%% describe_replication_table_statistics_response() :: #{
%%   <<"Marker">> => string(),
%%   <<"ReplicationConfigArn">> => string(),
%%   <<"ReplicationTableStatistics">> => list(table_statistics()())
%% }
-type describe_replication_table_statistics_response() :: #{binary() => any()}.

%% Example:
%% modify_event_subscription_message() :: #{
%%   <<"Enabled">> => boolean(),
%%   <<"EventCategories">> => list(string()()),
%%   <<"SnsTopicArn">> => string(),
%%   <<"SourceType">> => string(),
%%   <<"SubscriptionName">> := string()
%% }
-type modify_event_subscription_message() :: #{binary() => any()}.

%% Example:
%% start_metadata_model_export_as_script_message() :: #{
%%   <<"FileName">> => string(),
%%   <<"MigrationProjectIdentifier">> := string(),
%%   <<"Origin">> := list(any()),
%%   <<"SelectionRules">> := string()
%% }
-type start_metadata_model_export_as_script_message() :: #{binary() => any()}.

%% Example:
%% describe_replication_task_assessment_results_message() :: #{
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer(),
%%   <<"ReplicationTaskArn">> => string()
%% }
-type describe_replication_task_assessment_results_message() :: #{binary() => any()}.

%% Example:
%% describe_replication_tasks_message() :: #{
%%   <<"Filters">> => list(filter()()),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer(),
%%   <<"WithoutSettings">> => boolean()
%% }
-type describe_replication_tasks_message() :: #{binary() => any()}.

%% Example:
%% describe_pending_maintenance_actions_message() :: #{
%%   <<"Filters">> => list(filter()()),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer(),
%%   <<"ReplicationInstanceArn">> => string()
%% }
-type describe_pending_maintenance_actions_message() :: #{binary() => any()}.

%% Example:
%% start_metadata_model_import_response() :: #{
%%   <<"RequestIdentifier">> => string()
%% }
-type start_metadata_model_import_response() :: #{binary() => any()}.

%% Example:
%% stop_replication_task_message() :: #{
%%   <<"ReplicationTaskArn">> := string()
%% }
-type stop_replication_task_message() :: #{binary() => any()}.

%% Example:
%% describe_replication_instance_task_logs_message() :: #{
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer(),
%%   <<"ReplicationInstanceArn">> := string()
%% }
-type describe_replication_instance_task_logs_message() :: #{binary() => any()}.

%% Example:
%% delete_data_migration_response() :: #{
%%   <<"DataMigration">> => data_migration()
%% }
-type delete_data_migration_response() :: #{binary() => any()}.

%% Example:
%% describe_metadata_model_exports_to_target_message() :: #{
%%   <<"Filters">> => list(filter()()),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer(),
%%   <<"MigrationProjectIdentifier">> := string()
%% }
-type describe_metadata_model_exports_to_target_message() :: #{binary() => any()}.

%% Example:
%% delete_replication_subnet_group_response() :: #{

%% }
-type delete_replication_subnet_group_response() :: #{binary() => any()}.

%% Example:
%% s_capplication_attributes() :: #{
%%   <<"S3BucketPath">> => string(),
%%   <<"S3BucketRoleArn">> => string()
%% }
-type s_capplication_attributes() :: #{binary() => any()}.

%% Example:
%% start_metadata_model_assessment_message() :: #{
%%   <<"MigrationProjectIdentifier">> := string(),
%%   <<"SelectionRules">> := string()
%% }
-type start_metadata_model_assessment_message() :: #{binary() => any()}.

%% Example:
%% move_replication_task_message() :: #{
%%   <<"ReplicationTaskArn">> := string(),
%%   <<"TargetReplicationInstanceArn">> := string()
%% }
-type move_replication_task_message() :: #{binary() => any()}.

%% Example:
%% modify_replication_subnet_group_response() :: #{
%%   <<"ReplicationSubnetGroup">> => replication_subnet_group()
%% }
-type modify_replication_subnet_group_response() :: #{binary() => any()}.

%% Example:
%% describe_fleet_advisor_lsa_analysis_response() :: #{
%%   <<"Analysis">> => list(fleet_advisor_lsa_analysis_response()()),
%%   <<"NextToken">> => string()
%% }
-type describe_fleet_advisor_lsa_analysis_response() :: #{binary() => any()}.

%% Example:
%% describe_fleet_advisor_schema_object_summary_request() :: #{
%%   <<"Filters">> => list(filter()()),
%%   <<"MaxRecords">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type describe_fleet_advisor_schema_object_summary_request() :: #{binary() => any()}.

%% Example:
%% replication_instance() :: #{
%%   <<"AllocatedStorage">> => integer(),
%%   <<"AutoMinorVersionUpgrade">> => boolean(),
%%   <<"AvailabilityZone">> => string(),
%%   <<"DnsNameServers">> => string(),
%%   <<"EngineVersion">> => string(),
%%   <<"FreeUntil">> => non_neg_integer(),
%%   <<"InstanceCreateTime">> => non_neg_integer(),
%%   <<"KerberosAuthenticationSettings">> => kerberos_authentication_settings(),
%%   <<"KmsKeyId">> => string(),
%%   <<"MultiAZ">> => boolean(),
%%   <<"NetworkType">> => string(),
%%   <<"PendingModifiedValues">> => replication_pending_modified_values(),
%%   <<"PreferredMaintenanceWindow">> => string(),
%%   <<"PubliclyAccessible">> => boolean(),
%%   <<"ReplicationInstanceArn">> => string(),
%%   <<"ReplicationInstanceClass">> => string(),
%%   <<"ReplicationInstanceIdentifier">> => string(),
%%   <<"ReplicationInstanceIpv6Addresses">> => list(string()()),
%%   <<"ReplicationInstancePrivateIpAddress">> => string(),
%%   <<"ReplicationInstancePrivateIpAddresses">> => list(string()()),
%%   <<"ReplicationInstancePublicIpAddress">> => string(),
%%   <<"ReplicationInstancePublicIpAddresses">> => list(string()()),
%%   <<"ReplicationInstanceStatus">> => string(),
%%   <<"ReplicationSubnetGroup">> => replication_subnet_group(),
%%   <<"SecondaryAvailabilityZone">> => string(),
%%   <<"VpcSecurityGroups">> => list(vpc_security_group_membership()())
%% }
-type replication_instance() :: #{binary() => any()}.

%% Example:
%% describe_schemas_message() :: #{
%%   <<"EndpointArn">> := string(),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer()
%% }
-type describe_schemas_message() :: #{binary() => any()}.

%% Example:
%% modify_endpoint_response() :: #{
%%   <<"Endpoint">> => endpoint()
%% }
-type modify_endpoint_response() :: #{binary() => any()}.

%% Example:
%% event_subscription() :: #{
%%   <<"CustSubscriptionId">> => string(),
%%   <<"CustomerAwsId">> => string(),
%%   <<"Enabled">> => boolean(),
%%   <<"EventCategoriesList">> => list(string()()),
%%   <<"SnsTopicArn">> => string(),
%%   <<"SourceIdsList">> => list(string()()),
%%   <<"SourceType">> => string(),
%%   <<"Status">> => string(),
%%   <<"SubscriptionCreationTime">> => string()
%% }
-type event_subscription() :: #{binary() => any()}.

%% Example:
%% premigration_assessment_status() :: #{
%%   <<"AssessmentProgress">> => replication_task_assessment_run_progress(),
%%   <<"FailOnAssessmentFailure">> => boolean(),
%%   <<"LastFailureMessage">> => string(),
%%   <<"PremigrationAssessmentRunArn">> => string(),
%%   <<"PremigrationAssessmentRunCreationDate">> => non_neg_integer(),
%%   <<"ResultEncryptionMode">> => string(),
%%   <<"ResultKmsKeyArn">> => string(),
%%   <<"ResultLocationBucket">> => string(),
%%   <<"ResultLocationFolder">> => string(),
%%   <<"ResultStatistic">> => replication_task_assessment_run_result_statistic(),
%%   <<"Status">> => string()
%% }
-type premigration_assessment_status() :: #{binary() => any()}.

%% Example:
%% describe_replication_task_assessment_results_response() :: #{
%%   <<"BucketName">> => string(),
%%   <<"Marker">> => string(),
%%   <<"ReplicationTaskAssessmentResults">> => list(replication_task_assessment_result()())
%% }
-type describe_replication_task_assessment_results_response() :: #{binary() => any()}.

%% Example:
%% describe_data_providers_message() :: #{
%%   <<"Filters">> => list(filter()()),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer()
%% }
-type describe_data_providers_message() :: #{binary() => any()}.

%% Example:
%% describe_certificates_message() :: #{
%%   <<"Filters">> => list(filter()()),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer()
%% }
-type describe_certificates_message() :: #{binary() => any()}.

%% Example:
%% dynamo_db_settings() :: #{
%%   <<"ServiceAccessRoleArn">> => string()
%% }
-type dynamo_db_settings() :: #{binary() => any()}.

%% Example:
%% ibm_db2z_os_data_provider_settings() :: #{
%%   <<"CertificateArn">> => string(),
%%   <<"DatabaseName">> => string(),
%%   <<"Port">> => integer(),
%%   <<"S3AccessRoleArn">> => string(),
%%   <<"S3Path">> => string(),
%%   <<"ServerName">> => string(),
%%   <<"SslMode">> => list(any())
%% }
-type ibm_db2z_os_data_provider_settings() :: #{binary() => any()}.

%% Example:
%% subnet() :: #{
%%   <<"SubnetAvailabilityZone">> => availability_zone(),
%%   <<"SubnetIdentifier">> => string(),
%%   <<"SubnetStatus">> => string()
%% }
-type subnet() :: #{binary() => any()}.

%% Example:
%% describe_migration_projects_message() :: #{
%%   <<"Filters">> => list(filter()()),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer()
%% }
-type describe_migration_projects_message() :: #{binary() => any()}.

%% Example:
%% describe_metadata_model_conversions_response() :: #{
%%   <<"Marker">> => string(),
%%   <<"Requests">> => list(schema_conversion_request()())
%% }
-type describe_metadata_model_conversions_response() :: #{binary() => any()}.

%% Example:
%% elasticsearch_settings() :: #{
%%   <<"EndpointUri">> => string(),
%%   <<"ErrorRetryDuration">> => integer(),
%%   <<"FullLoadErrorPercentage">> => integer(),
%%   <<"ServiceAccessRoleArn">> => string(),
%%   <<"UseNewMappingType">> => boolean()
%% }
-type elasticsearch_settings() :: #{binary() => any()}.

%% Example:
%% create_instance_profile_response() :: #{
%%   <<"InstanceProfile">> => instance_profile()
%% }
-type create_instance_profile_response() :: #{binary() => any()}.

%% Example:
%% start_replication_message() :: #{
%%   <<"CdcStartPosition">> => string(),
%%   <<"CdcStartTime">> => non_neg_integer(),
%%   <<"CdcStopPosition">> => string(),
%%   <<"PremigrationAssessmentSettings">> => string(),
%%   <<"ReplicationConfigArn">> := string(),
%%   <<"StartReplicationType">> := string()
%% }
-type start_replication_message() :: #{binary() => any()}.

%% Example:
%% invalid_subnet() :: #{
%%   <<"message">> => string()
%% }
-type invalid_subnet() :: #{binary() => any()}.

%% Example:
%% describe_endpoints_response() :: #{
%%   <<"Endpoints">> => list(endpoint()()),
%%   <<"Marker">> => string()
%% }
-type describe_endpoints_response() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_message() :: #{
%%   <<"ResourceArn">> => string(),
%%   <<"ResourceArnList">> => list(string()())
%% }
-type list_tags_for_resource_message() :: #{binary() => any()}.

%% Example:
%% database_response() :: #{
%%   <<"Collectors">> => list(collector_short_info_response()()),
%%   <<"DatabaseId">> => string(),
%%   <<"DatabaseName">> => string(),
%%   <<"IpAddress">> => string(),
%%   <<"NumberOfSchemas">> => float(),
%%   <<"Server">> => server_short_info_response(),
%%   <<"SoftwareDetails">> => database_instance_software_details_response()
%% }
-type database_response() :: #{binary() => any()}.

%% Example:
%% recommendation_data() :: #{
%%   <<"RdsEngine">> => rds_recommendation()
%% }
-type recommendation_data() :: #{binary() => any()}.

%% Example:
%% describe_metadata_model_exports_as_script_response() :: #{
%%   <<"Marker">> => string(),
%%   <<"Requests">> => list(schema_conversion_request()())
%% }
-type describe_metadata_model_exports_as_script_response() :: #{binary() => any()}.

%% Example:
%% doc_db_data_provider_settings() :: #{
%%   <<"CertificateArn">> => string(),
%%   <<"DatabaseName">> => string(),
%%   <<"Port">> => integer(),
%%   <<"ServerName">> => string(),
%%   <<"SslMode">> => list(any())
%% }
-type doc_db_data_provider_settings() :: #{binary() => any()}.

%% Example:
%% replication_task_stats() :: #{
%%   <<"ElapsedTimeMillis">> => float(),
%%   <<"FreshStartDate">> => non_neg_integer(),
%%   <<"FullLoadFinishDate">> => non_neg_integer(),
%%   <<"FullLoadProgressPercent">> => integer(),
%%   <<"FullLoadStartDate">> => non_neg_integer(),
%%   <<"StartDate">> => non_neg_integer(),
%%   <<"StopDate">> => non_neg_integer(),
%%   <<"TablesErrored">> => integer(),
%%   <<"TablesLoaded">> => integer(),
%%   <<"TablesLoading">> => integer(),
%%   <<"TablesQueued">> => integer()
%% }
-type replication_task_stats() :: #{binary() => any()}.

%% Example:
%% server_short_info_response() :: #{
%%   <<"IpAddress">> => string(),
%%   <<"ServerId">> => string(),
%%   <<"ServerName">> => string()
%% }
-type server_short_info_response() :: #{binary() => any()}.

%% Example:
%% describe_applicable_individual_assessments_response() :: #{
%%   <<"IndividualAssessmentNames">> => list(string()()),
%%   <<"Marker">> => string()
%% }
-type describe_applicable_individual_assessments_response() :: #{binary() => any()}.

%% Example:
%% stop_data_migration_message() :: #{
%%   <<"DataMigrationIdentifier">> := string()
%% }
-type stop_data_migration_message() :: #{binary() => any()}.

%% Example:
%% import_certificate_response() :: #{
%%   <<"Certificate">> => certificate()
%% }
-type import_certificate_response() :: #{binary() => any()}.

%% Example:
%% refresh_schemas_message() :: #{
%%   <<"EndpointArn">> := string(),
%%   <<"ReplicationInstanceArn">> := string()
%% }
-type refresh_schemas_message() :: #{binary() => any()}.

%% Example:
%% delete_replication_config_response() :: #{
%%   <<"ReplicationConfig">> => replication_config()
%% }
-type delete_replication_config_response() :: #{binary() => any()}.

%% Example:
%% collector_health_check() :: #{
%%   <<"CollectorStatus">> => list(any()),
%%   <<"LocalCollectorS3Access">> => boolean(),
%%   <<"WebCollectorGrantedRoleBasedAccess">> => boolean(),
%%   <<"WebCollectorS3Access">> => boolean()
%% }
-type collector_health_check() :: #{binary() => any()}.

%% Example:
%% describe_instance_profiles_message() :: #{
%%   <<"Filters">> => list(filter()()),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer()
%% }
-type describe_instance_profiles_message() :: #{binary() => any()}.

%% Example:
%% timestream_settings() :: #{
%%   <<"CdcInsertsAndUpdates">> => boolean(),
%%   <<"DatabaseName">> => string(),
%%   <<"EnableMagneticStoreWrites">> => boolean(),
%%   <<"MagneticDuration">> => integer(),
%%   <<"MemoryDuration">> => integer()
%% }
-type timestream_settings() :: #{binary() => any()}.

%% Example:
%% describe_recommendations_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Recommendations">> => list(recommendation()())
%% }
-type describe_recommendations_response() :: #{binary() => any()}.

%% Example:
%% describe_fleet_advisor_collectors_request() :: #{
%%   <<"Filters">> => list(filter()()),
%%   <<"MaxRecords">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type describe_fleet_advisor_collectors_request() :: #{binary() => any()}.

%% Example:
%% update_subscriptions_to_event_bridge_message() :: #{
%%   <<"ForceMove">> => boolean()
%% }
-type update_subscriptions_to_event_bridge_message() :: #{binary() => any()}.

%% Example:
%% start_recommendations_request() :: #{
%%   <<"DatabaseId">> := string(),
%%   <<"Settings">> := recommendation_settings()
%% }
-type start_recommendations_request() :: #{binary() => any()}.

%% Example:
%% delete_data_migration_message() :: #{
%%   <<"DataMigrationIdentifier">> := string()
%% }
-type delete_data_migration_message() :: #{binary() => any()}.

%% Example:
%% modify_replication_task_message() :: #{
%%   <<"CdcStartPosition">> => string(),
%%   <<"CdcStartTime">> => non_neg_integer(),
%%   <<"CdcStopPosition">> => string(),
%%   <<"MigrationType">> => list(any()),
%%   <<"ReplicationTaskArn">> := string(),
%%   <<"ReplicationTaskIdentifier">> => string(),
%%   <<"ReplicationTaskSettings">> => string(),
%%   <<"TableMappings">> => string(),
%%   <<"TaskData">> => string()
%% }
-type modify_replication_task_message() :: #{binary() => any()}.

%% Example:
%% replication_subnet_group_does_not_cover_enough_a_zs() :: #{
%%   <<"message">> => string()
%% }
-type replication_subnet_group_does_not_cover_enough_a_zs() :: #{binary() => any()}.

%% Example:
%% describe_extension_pack_associations_message() :: #{
%%   <<"Filters">> => list(filter()()),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer(),
%%   <<"MigrationProjectIdentifier">> := string()
%% }
-type describe_extension_pack_associations_message() :: #{binary() => any()}.

%% Example:
%% rds_configuration() :: #{
%%   <<"DeploymentOption">> => string(),
%%   <<"EngineEdition">> => string(),
%%   <<"EngineVersion">> => string(),
%%   <<"InstanceMemory">> => float(),
%%   <<"InstanceType">> => string(),
%%   <<"InstanceVcpu">> => float(),
%%   <<"StorageIops">> => integer(),
%%   <<"StorageSize">> => integer(),
%%   <<"StorageType">> => string()
%% }
-type rds_configuration() :: #{binary() => any()}.

%% Example:
%% replication_task() :: #{
%%   <<"CdcStartPosition">> => string(),
%%   <<"CdcStopPosition">> => string(),
%%   <<"LastFailureMessage">> => string(),
%%   <<"MigrationType">> => list(any()),
%%   <<"RecoveryCheckpoint">> => string(),
%%   <<"ReplicationInstanceArn">> => string(),
%%   <<"ReplicationTaskArn">> => string(),
%%   <<"ReplicationTaskCreationDate">> => non_neg_integer(),
%%   <<"ReplicationTaskIdentifier">> => string(),
%%   <<"ReplicationTaskSettings">> => string(),
%%   <<"ReplicationTaskStartDate">> => non_neg_integer(),
%%   <<"ReplicationTaskStats">> => replication_task_stats(),
%%   <<"SourceEndpointArn">> => string(),
%%   <<"Status">> => string(),
%%   <<"StopReason">> => string(),
%%   <<"TableMappings">> => string(),
%%   <<"TargetEndpointArn">> => string(),
%%   <<"TargetReplicationInstanceArn">> => string(),
%%   <<"TaskData">> => string()
%% }
-type replication_task() :: #{binary() => any()}.

%% Example:
%% modify_data_migration_message() :: #{
%%   <<"DataMigrationIdentifier">> := string(),
%%   <<"DataMigrationName">> => string(),
%%   <<"DataMigrationType">> => list(any()),
%%   <<"EnableCloudwatchLogs">> => boolean(),
%%   <<"NumberOfJobs">> => integer(),
%%   <<"SelectionRules">> => string(),
%%   <<"ServiceAccessRoleArn">> => string(),
%%   <<"SourceDataSettings">> => list(source_data_setting()()),
%%   <<"TargetDataSettings">> => list(target_data_setting()())
%% }
-type modify_data_migration_message() :: #{binary() => any()}.

%% Example:
%% table_statistics() :: #{
%%   <<"AppliedDdls">> => float(),
%%   <<"AppliedDeletes">> => float(),
%%   <<"AppliedInserts">> => float(),
%%   <<"AppliedUpdates">> => float(),
%%   <<"Ddls">> => float(),
%%   <<"Deletes">> => float(),
%%   <<"FullLoadCondtnlChkFailedRows">> => float(),
%%   <<"FullLoadEndTime">> => non_neg_integer(),
%%   <<"FullLoadErrorRows">> => float(),
%%   <<"FullLoadReloaded">> => boolean(),
%%   <<"FullLoadRows">> => float(),
%%   <<"FullLoadStartTime">> => non_neg_integer(),
%%   <<"Inserts">> => float(),
%%   <<"LastUpdateTime">> => non_neg_integer(),
%%   <<"ResyncProgress">> => float(),
%%   <<"ResyncRowsAttempted">> => float(),
%%   <<"ResyncRowsFailed">> => float(),
%%   <<"ResyncRowsSucceeded">> => float(),
%%   <<"ResyncState">> => string(),
%%   <<"SchemaName">> => string(),
%%   <<"TableName">> => string(),
%%   <<"TableState">> => string(),
%%   <<"Updates">> => float(),
%%   <<"ValidationFailedRecords">> => float(),
%%   <<"ValidationPendingRecords">> => float(),
%%   <<"ValidationState">> => string(),
%%   <<"ValidationStateDetails">> => string(),
%%   <<"ValidationSuspendedRecords">> => float()
%% }
-type table_statistics() :: #{binary() => any()}.

%% Example:
%% mongo_db_data_provider_settings() :: #{
%%   <<"AuthMechanism">> => list(any()),
%%   <<"AuthSource">> => string(),
%%   <<"AuthType">> => list(any()),
%%   <<"CertificateArn">> => string(),
%%   <<"DatabaseName">> => string(),
%%   <<"Port">> => integer(),
%%   <<"ServerName">> => string(),
%%   <<"SslMode">> => list(any())
%% }
-type mongo_db_data_provider_settings() :: #{binary() => any()}.

%% Example:
%% start_recommendations_request_entry() :: #{
%%   <<"DatabaseId">> => string(),
%%   <<"Settings">> => recommendation_settings()
%% }
-type start_recommendations_request_entry() :: #{binary() => any()}.

%% Example:
%% describe_replication_subnet_groups_response() :: #{
%%   <<"Marker">> => string(),
%%   <<"ReplicationSubnetGroups">> => list(replication_subnet_group()())
%% }
-type describe_replication_subnet_groups_response() :: #{binary() => any()}.

%% Example:
%% modify_data_migration_response() :: #{
%%   <<"DataMigration">> => data_migration()
%% }
-type modify_data_migration_response() :: #{binary() => any()}.

%% Example:
%% delete_event_subscription_response() :: #{
%%   <<"EventSubscription">> => event_subscription()
%% }
-type delete_event_subscription_response() :: #{binary() => any()}.

%% Example:
%% dms_transfer_settings() :: #{
%%   <<"BucketName">> => string(),
%%   <<"ServiceAccessRoleArn">> => string()
%% }
-type dms_transfer_settings() :: #{binary() => any()}.

%% Example:
%% s3_settings() :: #{
%%   <<"CsvNullValue">> => string(),
%%   <<"RowGroupLength">> => integer(),
%%   <<"GlueCatalogGeneration">> => boolean(),
%%   <<"EncodingType">> => list(any()),
%%   <<"ServerSideEncryptionKmsKeyId">> => string(),
%%   <<"CompressionType">> => list(any()),
%%   <<"MaxFileSize">> => integer(),
%%   <<"CsvDelimiter">> => string(),
%%   <<"ParquetTimestampInMillisecond">> => boolean(),
%%   <<"UseTaskStartTimeForFullLoadTimestamp">> => boolean(),
%%   <<"TimestampColumnName">> => string(),
%%   <<"DatePartitionTimezone">> => string(),
%%   <<"EnableStatistics">> => boolean(),
%%   <<"DatePartitionDelimiter">> => list(any()),
%%   <<"DatePartitionSequence">> => list(any()),
%%   <<"IgnoreHeaderRows">> => integer(),
%%   <<"PreserveTransactions">> => boolean(),
%%   <<"Rfc4180">> => boolean(),
%%   <<"CdcMaxBatchInterval">> => integer(),
%%   <<"ExpectedBucketOwner">> => string(),
%%   <<"CdcMinFileSize">> => integer(),
%%   <<"CdcPath">> => string(),
%%   <<"BucketFolder">> => string(),
%%   <<"DictPageSizeLimit">> => integer(),
%%   <<"CdcInsertsOnly">> => boolean(),
%%   <<"DataPageSize">> => integer(),
%%   <<"DatePartitionEnabled">> => boolean(),
%%   <<"ExternalTableDefinition">> => string(),
%%   <<"AddColumnName">> => boolean(),
%%   <<"ParquetVersion">> => list(any()),
%%   <<"CsvRowDelimiter">> => string(),
%%   <<"IncludeOpForFullLoad">> => boolean(),
%%   <<"CdcInsertsAndUpdates">> => boolean(),
%%   <<"ServiceAccessRoleArn">> => string(),
%%   <<"EncryptionMode">> => list(any()),
%%   <<"UseCsvNoSupValue">> => boolean(),
%%   <<"CsvNoSupValue">> => string(),
%%   <<"BucketName">> => string(),
%%   <<"AddTrailingPaddingCharacter">> => boolean(),
%%   <<"DataFormat">> => list(any()),
%%   <<"CannedAclForObjects">> => list(any())
%% }
-type s3_settings() :: #{binary() => any()}.

%% Example:
%% modify_replication_subnet_group_message() :: #{
%%   <<"ReplicationSubnetGroupDescription">> => string(),
%%   <<"ReplicationSubnetGroupIdentifier">> := string(),
%%   <<"SubnetIds">> := list(string()())
%% }
-type modify_replication_subnet_group_message() :: #{binary() => any()}.

%% Example:
%% schema_conversion_request() :: #{
%%   <<"Error">> => list(),
%%   <<"ExportSqlDetails">> => export_sql_details(),
%%   <<"MigrationProjectArn">> => string(),
%%   <<"RequestIdentifier">> => string(),
%%   <<"Status">> => string()
%% }
-type schema_conversion_request() :: #{binary() => any()}.

%% Example:
%% export_metadata_model_assessment_message() :: #{
%%   <<"AssessmentReportTypes">> => list(list(any())()),
%%   <<"FileName">> => string(),
%%   <<"MigrationProjectIdentifier">> := string(),
%%   <<"SelectionRules">> := string()
%% }
-type export_metadata_model_assessment_message() :: #{binary() => any()}.

%% Example:
%% describe_connections_response() :: #{
%%   <<"Connections">> => list(connection()()),
%%   <<"Marker">> => string()
%% }
-type describe_connections_response() :: #{binary() => any()}.

%% Example:
%% modify_replication_config_response() :: #{
%%   <<"ReplicationConfig">> => replication_config()
%% }
-type modify_replication_config_response() :: #{binary() => any()}.

%% Example:
%% describe_account_attributes_message() :: #{

%% }
-type describe_account_attributes_message() :: #{binary() => any()}.

%% Example:
%% describe_metadata_model_assessments_response() :: #{
%%   <<"Marker">> => string(),
%%   <<"Requests">> => list(schema_conversion_request()())
%% }
-type describe_metadata_model_assessments_response() :: #{binary() => any()}.

%% Example:
%% describe_replication_instances_response() :: #{
%%   <<"Marker">> => string(),
%%   <<"ReplicationInstances">> => list(replication_instance()())
%% }
-type describe_replication_instances_response() :: #{binary() => any()}.

%% Example:
%% kms_access_denied_fault() :: #{
%%   <<"message">> => string()
%% }
-type kms_access_denied_fault() :: #{binary() => any()}.

%% Example:
%% create_replication_task_message() :: #{
%%   <<"CdcStartPosition">> => string(),
%%   <<"CdcStartTime">> => non_neg_integer(),
%%   <<"CdcStopPosition">> => string(),
%%   <<"MigrationType">> := list(any()),
%%   <<"ReplicationInstanceArn">> := string(),
%%   <<"ReplicationTaskIdentifier">> := string(),
%%   <<"ReplicationTaskSettings">> => string(),
%%   <<"ResourceIdentifier">> => string(),
%%   <<"SourceEndpointArn">> := string(),
%%   <<"TableMappings">> := string(),
%%   <<"Tags">> => list(tag()()),
%%   <<"TargetEndpointArn">> := string(),
%%   <<"TaskData">> => string()
%% }
-type create_replication_task_message() :: #{binary() => any()}.

%% Example:
%% failed_dependency_fault() :: #{
%%   <<"message">> => string()
%% }
-type failed_dependency_fault() :: #{binary() => any()}.

%% Example:
%% ibm_db2_luw_data_provider_settings() :: #{
%%   <<"CertificateArn">> => string(),
%%   <<"DatabaseName">> => string(),
%%   <<"Port">> => integer(),
%%   <<"S3AccessRoleArn">> => string(),
%%   <<"S3Path">> => string(),
%%   <<"ServerName">> => string(),
%%   <<"SslMode">> => list(any())
%% }
-type ibm_db2_luw_data_provider_settings() :: #{binary() => any()}.

%% Example:
%% stop_replication_task_response() :: #{
%%   <<"ReplicationTask">> => replication_task()
%% }
-type stop_replication_task_response() :: #{binary() => any()}.

%% Example:
%% data_migration_statistics() :: #{
%%   <<"CDCLatency">> => integer(),
%%   <<"ElapsedTimeMillis">> => float(),
%%   <<"FullLoadPercentage">> => integer(),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"StopTime">> => non_neg_integer(),
%%   <<"TablesErrored">> => integer(),
%%   <<"TablesLoaded">> => integer(),
%%   <<"TablesLoading">> => integer(),
%%   <<"TablesQueued">> => integer()
%% }
-type data_migration_statistics() :: #{binary() => any()}.

%% Example:
%% create_event_subscription_message() :: #{
%%   <<"Enabled">> => boolean(),
%%   <<"EventCategories">> => list(string()()),
%%   <<"SnsTopicArn">> := string(),
%%   <<"SourceIds">> => list(string()()),
%%   <<"SourceType">> => string(),
%%   <<"SubscriptionName">> := string(),
%%   <<"Tags">> => list(tag()())
%% }
-type create_event_subscription_message() :: #{binary() => any()}.

%% Example:
%% delete_instance_profile_message() :: #{
%%   <<"InstanceProfileIdentifier">> := string()
%% }
-type delete_instance_profile_message() :: #{binary() => any()}.

%% Example:
%% describe_replication_configs_response() :: #{
%%   <<"Marker">> => string(),
%%   <<"ReplicationConfigs">> => list(replication_config()())
%% }
-type describe_replication_configs_response() :: #{binary() => any()}.

%% Example:
%% describe_event_subscriptions_message() :: #{
%%   <<"Filters">> => list(filter()()),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer(),
%%   <<"SubscriptionName">> => string()
%% }
-type describe_event_subscriptions_message() :: #{binary() => any()}.

%% Example:
%% describe_schemas_response() :: #{
%%   <<"Marker">> => string(),
%%   <<"Schemas">> => list(string()())
%% }
-type describe_schemas_response() :: #{binary() => any()}.

%% Example:
%% replication_task_assessment_run_progress() :: #{
%%   <<"IndividualAssessmentCompletedCount">> => integer(),
%%   <<"IndividualAssessmentCount">> => integer()
%% }
-type replication_task_assessment_run_progress() :: #{binary() => any()}.

%% Example:
%% replication_task_individual_assessment() :: #{
%%   <<"IndividualAssessmentName">> => string(),
%%   <<"ReplicationTaskAssessmentRunArn">> => string(),
%%   <<"ReplicationTaskIndividualAssessmentArn">> => string(),
%%   <<"ReplicationTaskIndividualAssessmentStartDate">> => non_neg_integer(),
%%   <<"Status">> => string()
%% }
-type replication_task_individual_assessment() :: #{binary() => any()}.

%% Example:
%% describe_data_providers_response() :: #{
%%   <<"DataProviders">> => list(data_provider()()),
%%   <<"Marker">> => string()
%% }
-type describe_data_providers_response() :: #{binary() => any()}.

%% Example:
%% create_data_provider_message() :: #{
%%   <<"DataProviderName">> => string(),
%%   <<"Description">> => string(),
%%   <<"Engine">> := string(),
%%   <<"Settings">> := list(),
%%   <<"Tags">> => list(tag()()),
%%   <<"Virtual">> => boolean()
%% }
-type create_data_provider_message() :: #{binary() => any()}.

%% Example:
%% reload_tables_response() :: #{
%%   <<"ReplicationTaskArn">> => string()
%% }
-type reload_tables_response() :: #{binary() => any()}.

%% Example:
%% microsoft_sql_server_data_provider_settings() :: #{
%%   <<"CertificateArn">> => string(),
%%   <<"DatabaseName">> => string(),
%%   <<"Port">> => integer(),
%%   <<"S3AccessRoleArn">> => string(),
%%   <<"S3Path">> => string(),
%%   <<"ServerName">> => string(),
%%   <<"SslMode">> => list(any())
%% }
-type microsoft_sql_server_data_provider_settings() :: #{binary() => any()}.

%% Example:
%% replication() :: #{
%%   <<"CdcStartPosition">> => string(),
%%   <<"CdcStartTime">> => non_neg_integer(),
%%   <<"CdcStopPosition">> => string(),
%%   <<"FailureMessages">> => list(string()()),
%%   <<"PremigrationAssessmentStatuses">> => list(premigration_assessment_status()()),
%%   <<"ProvisionData">> => provision_data(),
%%   <<"RecoveryCheckpoint">> => string(),
%%   <<"ReplicationConfigArn">> => string(),
%%   <<"ReplicationConfigIdentifier">> => string(),
%%   <<"ReplicationCreateTime">> => non_neg_integer(),
%%   <<"ReplicationDeprovisionTime">> => non_neg_integer(),
%%   <<"ReplicationLastStopTime">> => non_neg_integer(),
%%   <<"ReplicationStats">> => replication_stats(),
%%   <<"ReplicationType">> => list(any()),
%%   <<"ReplicationUpdateTime">> => non_neg_integer(),
%%   <<"SourceEndpointArn">> => string(),
%%   <<"StartReplicationType">> => string(),
%%   <<"Status">> => string(),
%%   <<"StopReason">> => string(),
%%   <<"TargetEndpointArn">> => string()
%% }
-type replication() :: #{binary() => any()}.

%% Example:
%% describe_recommendations_request() :: #{
%%   <<"Filters">> => list(filter()()),
%%   <<"MaxRecords">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type describe_recommendations_request() :: #{binary() => any()}.

%% Example:
%% describe_fleet_advisor_lsa_analysis_request() :: #{
%%   <<"MaxRecords">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type describe_fleet_advisor_lsa_analysis_request() :: #{binary() => any()}.

%% Example:
%% create_event_subscription_response() :: #{
%%   <<"EventSubscription">> => event_subscription()
%% }
-type create_event_subscription_response() :: #{binary() => any()}.

%% Example:
%% recommendation_settings() :: #{
%%   <<"InstanceSizingType">> => string(),
%%   <<"WorkloadType">> => string()
%% }
-type recommendation_settings() :: #{binary() => any()}.

%% Example:
%% i_b_m_db2_settings() :: #{
%%   <<"CurrentLsn">> => string(),
%%   <<"DatabaseName">> => string(),
%%   <<"KeepCsvFiles">> => boolean(),
%%   <<"LoadTimeout">> => integer(),
%%   <<"MaxFileSize">> => integer(),
%%   <<"MaxKBytesPerRead">> => integer(),
%%   <<"Password">> => string(),
%%   <<"Port">> => integer(),
%%   <<"SecretsManagerAccessRoleArn">> => string(),
%%   <<"SecretsManagerSecretId">> => string(),
%%   <<"ServerName">> => string(),
%%   <<"SetDataCaptureChanges">> => boolean(),
%%   <<"Username">> => string(),
%%   <<"WriteBufferSize">> => integer()
%% }
-type i_b_m_db2_settings() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"ResourceArn">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% delete_endpoint_message() :: #{
%%   <<"EndpointArn">> := string()
%% }
-type delete_endpoint_message() :: #{binary() => any()}.

%% Example:
%% describe_replication_task_assessment_runs_response() :: #{
%%   <<"Marker">> => string(),
%%   <<"ReplicationTaskAssessmentRuns">> => list(replication_task_assessment_run()())
%% }
-type describe_replication_task_assessment_runs_response() :: #{binary() => any()}.

%% Example:
%% delete_endpoint_response() :: #{
%%   <<"Endpoint">> => endpoint()
%% }
-type delete_endpoint_response() :: #{binary() => any()}.

%% Example:
%% describe_fleet_advisor_schemas_response() :: #{
%%   <<"FleetAdvisorSchemas">> => list(schema_response()()),
%%   <<"NextToken">> => string()
%% }
-type describe_fleet_advisor_schemas_response() :: #{binary() => any()}.

%% Example:
%% modify_data_provider_message() :: #{
%%   <<"DataProviderIdentifier">> := string(),
%%   <<"DataProviderName">> => string(),
%%   <<"Description">> => string(),
%%   <<"Engine">> => string(),
%%   <<"ExactSettings">> => boolean(),
%%   <<"Settings">> => list(),
%%   <<"Virtual">> => boolean()
%% }
-type modify_data_provider_message() :: #{binary() => any()}.

%% Example:
%% delete_replication_config_message() :: #{
%%   <<"ReplicationConfigArn">> := string()
%% }
-type delete_replication_config_message() :: #{binary() => any()}.

%% Example:
%% create_replication_config_message() :: #{
%%   <<"ComputeConfig">> := compute_config(),
%%   <<"ReplicationConfigIdentifier">> := string(),
%%   <<"ReplicationSettings">> => string(),
%%   <<"ReplicationType">> := list(any()),
%%   <<"ResourceIdentifier">> => string(),
%%   <<"SourceEndpointArn">> := string(),
%%   <<"SupplementalSettings">> => string(),
%%   <<"TableMappings">> := string(),
%%   <<"Tags">> => list(tag()()),
%%   <<"TargetEndpointArn">> := string()
%% }
-type create_replication_config_message() :: #{binary() => any()}.

%% Example:
%% start_data_migration_response() :: #{
%%   <<"DataMigration">> => data_migration()
%% }
-type start_data_migration_response() :: #{binary() => any()}.

%% Example:
%% connection() :: #{
%%   <<"EndpointArn">> => string(),
%%   <<"EndpointIdentifier">> => string(),
%%   <<"LastFailureMessage">> => string(),
%%   <<"ReplicationInstanceArn">> => string(),
%%   <<"ReplicationInstanceIdentifier">> => string(),
%%   <<"Status">> => string()
%% }
-type connection() :: #{binary() => any()}.

%% Example:
%% event_category_group() :: #{
%%   <<"EventCategories">> => list(string()()),
%%   <<"SourceType">> => string()
%% }
-type event_category_group() :: #{binary() => any()}.

%% Example:
%% reboot_replication_instance_response() :: #{
%%   <<"ReplicationInstance">> => replication_instance()
%% }
-type reboot_replication_instance_response() :: #{binary() => any()}.

%% Example:
%% describe_endpoint_settings_response() :: #{
%%   <<"EndpointSettings">> => list(endpoint_setting()()),
%%   <<"Marker">> => string()
%% }
-type describe_endpoint_settings_response() :: #{binary() => any()}.

%% Example:
%% reboot_replication_instance_message() :: #{
%%   <<"ForceFailover">> => boolean(),
%%   <<"ForcePlannedFailover">> => boolean(),
%%   <<"ReplicationInstanceArn">> := string()
%% }
-type reboot_replication_instance_message() :: #{binary() => any()}.

%% Example:
%% delete_replication_task_assessment_run_response() :: #{
%%   <<"ReplicationTaskAssessmentRun">> => replication_task_assessment_run()
%% }
-type delete_replication_task_assessment_run_response() :: #{binary() => any()}.

%% Example:
%% describe_pending_maintenance_actions_response() :: #{
%%   <<"Marker">> => string(),
%%   <<"PendingMaintenanceActions">> => list(resource_pending_maintenance_actions()())
%% }
-type describe_pending_maintenance_actions_response() :: #{binary() => any()}.

%% Example:
%% target_data_setting() :: #{
%%   <<"TablePreparationMode">> => list(any())
%% }
-type target_data_setting() :: #{binary() => any()}.

%% Example:
%% recommendation() :: #{
%%   <<"CreatedDate">> => string(),
%%   <<"Data">> => recommendation_data(),
%%   <<"DatabaseId">> => string(),
%%   <<"EngineName">> => string(),
%%   <<"Preferred">> => boolean(),
%%   <<"Settings">> => recommendation_settings(),
%%   <<"Status">> => string()
%% }
-type recommendation() :: #{binary() => any()}.

%% Example:
%% table_to_reload() :: #{
%%   <<"SchemaName">> => string(),
%%   <<"TableName">> => string()
%% }
-type table_to_reload() :: #{binary() => any()}.

%% Example:
%% describe_endpoint_types_response() :: #{
%%   <<"Marker">> => string(),
%%   <<"SupportedEndpointTypes">> => list(supported_endpoint_type()())
%% }
-type describe_endpoint_types_response() :: #{binary() => any()}.

%% Example:
%% neptune_settings() :: #{
%%   <<"ErrorRetryDuration">> => integer(),
%%   <<"IamAuthEnabled">> => boolean(),
%%   <<"MaxFileSize">> => integer(),
%%   <<"MaxRetryCount">> => integer(),
%%   <<"S3BucketFolder">> => string(),
%%   <<"S3BucketName">> => string(),
%%   <<"ServiceAccessRoleArn">> => string()
%% }
-type neptune_settings() :: #{binary() => any()}.

%% Example:
%% describe_applicable_individual_assessments_message() :: #{
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer(),
%%   <<"MigrationType">> => list(any()),
%%   <<"ReplicationConfigArn">> => string(),
%%   <<"ReplicationInstanceArn">> => string(),
%%   <<"ReplicationTaskArn">> => string(),
%%   <<"SourceEngineName">> => string(),
%%   <<"TargetEngineName">> => string()
%% }
-type describe_applicable_individual_assessments_message() :: #{binary() => any()}.

%% Example:
%% export_metadata_model_assessment_response() :: #{
%%   <<"CsvReport">> => export_metadata_model_assessment_result_entry(),
%%   <<"PdfReport">> => export_metadata_model_assessment_result_entry()
%% }
-type export_metadata_model_assessment_response() :: #{binary() => any()}.

%% Example:
%% describe_table_statistics_response() :: #{
%%   <<"Marker">> => string(),
%%   <<"ReplicationTaskArn">> => string(),
%%   <<"TableStatistics">> => list(table_statistics()())
%% }
-type describe_table_statistics_response() :: #{binary() => any()}.

%% Example:
%% create_fleet_advisor_collector_response() :: #{
%%   <<"CollectorName">> => string(),
%%   <<"CollectorReferencedId">> => string(),
%%   <<"Description">> => string(),
%%   <<"S3BucketName">> => string(),
%%   <<"ServiceAccessRoleArn">> => string()
%% }
-type create_fleet_advisor_collector_response() :: #{binary() => any()}.

%% Example:
%% modify_data_provider_response() :: #{
%%   <<"DataProvider">> => data_provider()
%% }
-type modify_data_provider_response() :: #{binary() => any()}.

%% Example:
%% rds_requirements() :: #{
%%   <<"DeploymentOption">> => string(),
%%   <<"EngineEdition">> => string(),
%%   <<"EngineVersion">> => string(),
%%   <<"InstanceMemory">> => float(),
%%   <<"InstanceVcpu">> => float(),
%%   <<"StorageIops">> => integer(),
%%   <<"StorageSize">> => integer()
%% }
-type rds_requirements() :: #{binary() => any()}.

%% Example:
%% invalid_certificate_fault() :: #{
%%   <<"message">> => string()
%% }
-type invalid_certificate_fault() :: #{binary() => any()}.

%% Example:
%% start_metadata_model_conversion_response() :: #{
%%   <<"RequestIdentifier">> => string()
%% }
-type start_metadata_model_conversion_response() :: #{binary() => any()}.

%% Example:
%% describe_extension_pack_associations_response() :: #{
%%   <<"Marker">> => string(),
%%   <<"Requests">> => list(schema_conversion_request()())
%% }
-type describe_extension_pack_associations_response() :: #{binary() => any()}.

%% Example:
%% kerberos_authentication_settings() :: #{
%%   <<"KeyCacheSecretIamArn">> => string(),
%%   <<"KeyCacheSecretId">> => string(),
%%   <<"Krb5FileContents">> => string()
%% }
-type kerberos_authentication_settings() :: #{binary() => any()}.

%% Example:
%% move_replication_task_response() :: #{
%%   <<"ReplicationTask">> => replication_task()
%% }
-type move_replication_task_response() :: #{binary() => any()}.

%% Example:
%% delete_collector_request() :: #{
%%   <<"CollectorReferencedId">> := string()
%% }
-type delete_collector_request() :: #{binary() => any()}.

%% Example:
%% kms_fault() :: #{
%%   <<"message">> => string()
%% }
-type kms_fault() :: #{binary() => any()}.

%% Example:
%% source_data_setting() :: #{
%%   <<"CDCStartPosition">> => string(),
%%   <<"CDCStartTime">> => non_neg_integer(),
%%   <<"CDCStopTime">> => non_neg_integer(),
%%   <<"SlotName">> => string()
%% }
-type source_data_setting() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"TagList">> => list(tag()())
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.

%% Example:
%% redis_settings() :: #{
%%   <<"AuthPassword">> => string(),
%%   <<"AuthType">> => list(any()),
%%   <<"AuthUserName">> => string(),
%%   <<"Port">> => integer(),
%%   <<"ServerName">> => string(),
%%   <<"SslCaCertificateArn">> => string(),
%%   <<"SslSecurityProtocol">> => list(any())
%% }
-type redis_settings() :: #{binary() => any()}.

%% Example:
%% describe_replication_instances_message() :: #{
%%   <<"Filters">> => list(filter()()),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer()
%% }
-type describe_replication_instances_message() :: #{binary() => any()}.

%% Example:
%% orderable_replication_instance() :: #{
%%   <<"AvailabilityZones">> => list(string()()),
%%   <<"DefaultAllocatedStorage">> => integer(),
%%   <<"EngineVersion">> => string(),
%%   <<"IncludedAllocatedStorage">> => integer(),
%%   <<"MaxAllocatedStorage">> => integer(),
%%   <<"MinAllocatedStorage">> => integer(),
%%   <<"ReleaseStatus">> => list(any()),
%%   <<"ReplicationInstanceClass">> => string(),
%%   <<"StorageType">> => string()
%% }
-type orderable_replication_instance() :: #{binary() => any()}.

%% Example:
%% describe_account_attributes_response() :: #{
%%   <<"AccountQuotas">> => list(account_quota()()),
%%   <<"UniqueAccountIdentifier">> => string()
%% }
-type describe_account_attributes_response() :: #{binary() => any()}.

%% Example:
%% delete_connection_message() :: #{
%%   <<"EndpointArn">> := string(),
%%   <<"ReplicationInstanceArn">> := string()
%% }
-type delete_connection_message() :: #{binary() => any()}.

%% Example:
%% describe_fleet_advisor_schema_object_summary_response() :: #{
%%   <<"FleetAdvisorSchemaObjects">> => list(fleet_advisor_schema_object_response()()),
%%   <<"NextToken">> => string()
%% }
-type describe_fleet_advisor_schema_object_summary_response() :: #{binary() => any()}.

%% Example:
%% start_replication_task_response() :: #{
%%   <<"ReplicationTask">> => replication_task()
%% }
-type start_replication_task_response() :: #{binary() => any()}.

%% Example:
%% create_instance_profile_message() :: #{
%%   <<"AvailabilityZone">> => string(),
%%   <<"Description">> => string(),
%%   <<"InstanceProfileName">> => string(),
%%   <<"KmsKeyArn">> => string(),
%%   <<"NetworkType">> => string(),
%%   <<"PubliclyAccessible">> => boolean(),
%%   <<"SubnetGroupIdentifier">> => string(),
%%   <<"Tags">> => list(tag()()),
%%   <<"VpcSecurityGroups">> => list(string()())
%% }
-type create_instance_profile_message() :: #{binary() => any()}.

%% Example:
%% describe_metadata_model_assessments_message() :: #{
%%   <<"Filters">> => list(filter()()),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer(),
%%   <<"MigrationProjectIdentifier">> := string()
%% }
-type describe_metadata_model_assessments_message() :: #{binary() => any()}.

%% Example:
%% describe_refresh_schemas_status_message() :: #{
%%   <<"EndpointArn">> := string()
%% }
-type describe_refresh_schemas_status_message() :: #{binary() => any()}.

%% Example:
%% replication_instance_task_log() :: #{
%%   <<"ReplicationInstanceTaskLogSize">> => float(),
%%   <<"ReplicationTaskArn">> => string(),
%%   <<"ReplicationTaskName">> => string()
%% }
-type replication_instance_task_log() :: #{binary() => any()}.

%% Example:
%% insufficient_resource_capacity_fault() :: #{
%%   <<"message">> => string()
%% }
-type insufficient_resource_capacity_fault() :: #{binary() => any()}.

%% Example:
%% describe_metadata_model_exports_as_script_message() :: #{
%%   <<"Filters">> => list(filter()()),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer(),
%%   <<"MigrationProjectIdentifier">> := string()
%% }
-type describe_metadata_model_exports_as_script_message() :: #{binary() => any()}.

%% Example:
%% filter() :: #{
%%   <<"Name">> => string(),
%%   <<"Values">> => list(string()())
%% }
-type filter() :: #{binary() => any()}.

%% Example:
%% delete_replication_subnet_group_message() :: #{
%%   <<"ReplicationSubnetGroupIdentifier">> := string()
%% }
-type delete_replication_subnet_group_message() :: #{binary() => any()}.

%% Example:
%% add_tags_to_resource_response() :: #{

%% }
-type add_tags_to_resource_response() :: #{binary() => any()}.

%% Example:
%% doc_db_settings() :: #{
%%   <<"DatabaseName">> => string(),
%%   <<"DocsToInvestigate">> => integer(),
%%   <<"ExtractDocId">> => boolean(),
%%   <<"KmsKeyId">> => string(),
%%   <<"NestingLevel">> => list(any()),
%%   <<"Password">> => string(),
%%   <<"Port">> => integer(),
%%   <<"ReplicateShardCollections">> => boolean(),
%%   <<"SecretsManagerAccessRoleArn">> => string(),
%%   <<"SecretsManagerSecretId">> => string(),
%%   <<"ServerName">> => string(),
%%   <<"UseUpdateLookUp">> => boolean(),
%%   <<"Username">> => string()
%% }
-type doc_db_settings() :: #{binary() => any()}.

%% Example:
%% kms_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type kms_not_found_fault() :: #{binary() => any()}.

%% Example:
%% modify_endpoint_message() :: #{
%%   <<"Port">> => integer(),
%%   <<"GcpMySQLSettings">> => gcp_my_s_q_l_settings(),
%%   <<"OracleSettings">> => oracle_settings(),
%%   <<"KafkaSettings">> => kafka_settings(),
%%   <<"IBMDb2Settings">> => i_b_m_db2_settings(),
%%   <<"DmsTransferSettings">> => dms_transfer_settings(),
%%   <<"ExtraConnectionAttributes">> => string(),
%%   <<"DocDbSettings">> => doc_db_settings(),
%%   <<"Password">> => string(),
%%   <<"TimestreamSettings">> => timestream_settings(),
%%   <<"PostgreSQLSettings">> => postgre_s_q_l_settings(),
%%   <<"ServerName">> => string(),
%%   <<"EndpointIdentifier">> => string(),
%%   <<"EndpointType">> => list(any()),
%%   <<"EngineName">> => string(),
%%   <<"CertificateArn">> => string(),
%%   <<"NeptuneSettings">> => neptune_settings(),
%%   <<"MySQLSettings">> => my_s_q_l_settings(),
%%   <<"Username">> => string(),
%%   <<"ExternalTableDefinition">> => string(),
%%   <<"SslMode">> => list(any()),
%%   <<"S3Settings">> => s3_settings(),
%%   <<"ElasticsearchSettings">> => elasticsearch_settings(),
%%   <<"DatabaseName">> => string(),
%%   <<"DynamoDbSettings">> => dynamo_db_settings(),
%%   <<"ServiceAccessRoleArn">> => string(),
%%   <<"MicrosoftSQLServerSettings">> => microsoft_s_q_l_server_settings(),
%%   <<"RedshiftSettings">> => redshift_settings(),
%%   <<"MongoDbSettings">> => mongo_db_settings(),
%%   <<"EndpointArn">> := string(),
%%   <<"RedisSettings">> => redis_settings(),
%%   <<"KinesisSettings">> => kinesis_settings(),
%%   <<"SybaseSettings">> => sybase_settings(),
%%   <<"ExactSettings">> => boolean()
%% }
-type modify_endpoint_message() :: #{binary() => any()}.

%% Example:
%% describe_connections_message() :: #{
%%   <<"Filters">> => list(filter()()),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer()
%% }
-type describe_connections_message() :: #{binary() => any()}.

%% Example:
%% s3_access_denied_fault() :: #{
%%   <<"message">> => string()
%% }
-type s3_access_denied_fault() :: #{binary() => any()}.

%% Example:
%% storage_quota_exceeded_fault() :: #{
%%   <<"message">> => string()
%% }
-type storage_quota_exceeded_fault() :: #{binary() => any()}.

%% Example:
%% modify_event_subscription_response() :: #{
%%   <<"EventSubscription">> => event_subscription()
%% }
-type modify_event_subscription_response() :: #{binary() => any()}.

%% Example:
%% describe_replication_task_individual_assessments_message() :: #{
%%   <<"Filters">> => list(filter()()),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer()
%% }
-type describe_replication_task_individual_assessments_message() :: #{binary() => any()}.

%% Example:
%% data_migration() :: #{
%%   <<"DataMigrationArn">> => string(),
%%   <<"DataMigrationCidrBlocks">> => list(string()()),
%%   <<"DataMigrationCreateTime">> => non_neg_integer(),
%%   <<"DataMigrationEndTime">> => non_neg_integer(),
%%   <<"DataMigrationName">> => string(),
%%   <<"DataMigrationSettings">> => data_migration_settings(),
%%   <<"DataMigrationStartTime">> => non_neg_integer(),
%%   <<"DataMigrationStatistics">> => data_migration_statistics(),
%%   <<"DataMigrationStatus">> => string(),
%%   <<"DataMigrationType">> => list(any()),
%%   <<"LastFailureMessage">> => string(),
%%   <<"MigrationProjectArn">> => string(),
%%   <<"PublicIpAddresses">> => list(string()()),
%%   <<"ServiceAccessRoleArn">> => string(),
%%   <<"SourceDataSettings">> => list(source_data_setting()()),
%%   <<"StopReason">> => string(),
%%   <<"TargetDataSettings">> => list(target_data_setting()())
%% }
-type data_migration() :: #{binary() => any()}.

%% Example:
%% stop_data_migration_response() :: #{
%%   <<"DataMigration">> => data_migration()
%% }
-type stop_data_migration_response() :: #{binary() => any()}.

%% Example:
%% redshift_data_provider_settings() :: #{
%%   <<"DatabaseName">> => string(),
%%   <<"Port">> => integer(),
%%   <<"S3AccessRoleArn">> => string(),
%%   <<"S3Path">> => string(),
%%   <<"ServerName">> => string()
%% }
-type redshift_data_provider_settings() :: #{binary() => any()}.

%% Example:
%% endpoint() :: #{
%%   <<"Port">> => integer(),
%%   <<"GcpMySQLSettings">> => gcp_my_s_q_l_settings(),
%%   <<"EndpointArn">> => string(),
%%   <<"OracleSettings">> => oracle_settings(),
%%   <<"KafkaSettings">> => kafka_settings(),
%%   <<"IBMDb2Settings">> => i_b_m_db2_settings(),
%%   <<"DmsTransferSettings">> => dms_transfer_settings(),
%%   <<"ExtraConnectionAttributes">> => string(),
%%   <<"DocDbSettings">> => doc_db_settings(),
%%   <<"TimestreamSettings">> => timestream_settings(),
%%   <<"PostgreSQLSettings">> => postgre_s_q_l_settings(),
%%   <<"ExternalId">> => string(),
%%   <<"ServerName">> => string(),
%%   <<"EndpointIdentifier">> => string(),
%%   <<"EndpointType">> => list(any()),
%%   <<"EngineName">> => string(),
%%   <<"EngineDisplayName">> => string(),
%%   <<"CertificateArn">> => string(),
%%   <<"NeptuneSettings">> => neptune_settings(),
%%   <<"MySQLSettings">> => my_s_q_l_settings(),
%%   <<"Username">> => string(),
%%   <<"ExternalTableDefinition">> => string(),
%%   <<"SslMode">> => list(any()),
%%   <<"S3Settings">> => s3_settings(),
%%   <<"ElasticsearchSettings">> => elasticsearch_settings(),
%%   <<"DatabaseName">> => string(),
%%   <<"KmsKeyId">> => string(),
%%   <<"DynamoDbSettings">> => dynamo_db_settings(),
%%   <<"ServiceAccessRoleArn">> => string(),
%%   <<"MicrosoftSQLServerSettings">> => microsoft_s_q_l_server_settings(),
%%   <<"RedshiftSettings">> => redshift_settings(),
%%   <<"MongoDbSettings">> => mongo_db_settings(),
%%   <<"RedisSettings">> => redis_settings(),
%%   <<"Status">> => string(),
%%   <<"KinesisSettings">> => kinesis_settings(),
%%   <<"SybaseSettings">> => sybase_settings()
%% }
-type endpoint() :: #{binary() => any()}.

%% Example:
%% describe_replication_task_individual_assessments_response() :: #{
%%   <<"Marker">> => string(),
%%   <<"ReplicationTaskIndividualAssessments">> => list(replication_task_individual_assessment()())
%% }
-type describe_replication_task_individual_assessments_response() :: #{binary() => any()}.

%% Example:
%% delete_certificate_message() :: #{
%%   <<"CertificateArn">> := string()
%% }
-type delete_certificate_message() :: #{binary() => any()}.

%% Example:
%% create_data_migration_response() :: #{
%%   <<"DataMigration">> => data_migration()
%% }
-type create_data_migration_response() :: #{binary() => any()}.

%% Example:
%% start_metadata_model_export_to_target_message() :: #{
%%   <<"MigrationProjectIdentifier">> := string(),
%%   <<"OverwriteExtensionPack">> => boolean(),
%%   <<"SelectionRules">> := string()
%% }
-type start_metadata_model_export_to_target_message() :: #{binary() => any()}.

%% Example:
%% create_replication_instance_response() :: #{
%%   <<"ReplicationInstance">> => replication_instance()
%% }
-type create_replication_instance_response() :: #{binary() => any()}.

%% Example:
%% delete_event_subscription_message() :: #{
%%   <<"SubscriptionName">> := string()
%% }
-type delete_event_subscription_message() :: #{binary() => any()}.

%% Example:
%% replication_task_assessment_result() :: #{
%%   <<"AssessmentResults">> => string(),
%%   <<"AssessmentResultsFile">> => string(),
%%   <<"AssessmentStatus">> => string(),
%%   <<"ReplicationTaskArn">> => string(),
%%   <<"ReplicationTaskIdentifier">> => string(),
%%   <<"ReplicationTaskLastAssessmentDate">> => non_neg_integer(),
%%   <<"S3ObjectUrl">> => string()
%% }
-type replication_task_assessment_result() :: #{binary() => any()}.

%% Example:
%% test_connection_response() :: #{
%%   <<"Connection">> => connection()
%% }
-type test_connection_response() :: #{binary() => any()}.

%% Example:
%% replication_task_assessment_run_result_statistic() :: #{
%%   <<"Cancelled">> => integer(),
%%   <<"Error">> => integer(),
%%   <<"Failed">> => integer(),
%%   <<"Passed">> => integer(),
%%   <<"Skipped">> => integer(),
%%   <<"Warning">> => integer()
%% }
-type replication_task_assessment_run_result_statistic() :: #{binary() => any()}.

%% Example:
%% create_replication_instance_message() :: #{
%%   <<"AllocatedStorage">> => integer(),
%%   <<"AutoMinorVersionUpgrade">> => boolean(),
%%   <<"AvailabilityZone">> => string(),
%%   <<"DnsNameServers">> => string(),
%%   <<"EngineVersion">> => string(),
%%   <<"KerberosAuthenticationSettings">> => kerberos_authentication_settings(),
%%   <<"KmsKeyId">> => string(),
%%   <<"MultiAZ">> => boolean(),
%%   <<"NetworkType">> => string(),
%%   <<"PreferredMaintenanceWindow">> => string(),
%%   <<"PubliclyAccessible">> => boolean(),
%%   <<"ReplicationInstanceClass">> := string(),
%%   <<"ReplicationInstanceIdentifier">> := string(),
%%   <<"ReplicationSubnetGroupIdentifier">> => string(),
%%   <<"ResourceIdentifier">> => string(),
%%   <<"Tags">> => list(tag()()),
%%   <<"VpcSecurityGroupIds">> => list(string()())
%% }
-type create_replication_instance_message() :: #{binary() => any()}.

%% Example:
%% start_replication_task_assessment_run_response() :: #{
%%   <<"ReplicationTaskAssessmentRun">> => replication_task_assessment_run()
%% }
-type start_replication_task_assessment_run_response() :: #{binary() => any()}.

%% Example:
%% my_s_q_l_settings() :: #{
%%   <<"AfterConnectScript">> => string(),
%%   <<"AuthenticationMethod">> => list(any()),
%%   <<"CleanSourceMetadataOnMismatch">> => boolean(),
%%   <<"DatabaseName">> => string(),
%%   <<"EventsPollInterval">> => integer(),
%%   <<"ExecuteTimeout">> => integer(),
%%   <<"MaxFileSize">> => integer(),
%%   <<"ParallelLoadThreads">> => integer(),
%%   <<"Password">> => string(),
%%   <<"Port">> => integer(),
%%   <<"SecretsManagerAccessRoleArn">> => string(),
%%   <<"SecretsManagerSecretId">> => string(),
%%   <<"ServerName">> => string(),
%%   <<"ServerTimezone">> => string(),
%%   <<"ServiceAccessRoleArn">> => string(),
%%   <<"TargetDbType">> => list(any()),
%%   <<"Username">> => string()
%% }
-type my_s_q_l_settings() :: #{binary() => any()}.

%% Example:
%% certificate() :: #{
%%   <<"CertificateArn">> => string(),
%%   <<"CertificateCreationDate">> => non_neg_integer(),
%%   <<"CertificateIdentifier">> => string(),
%%   <<"CertificateOwner">> => string(),
%%   <<"CertificatePem">> => string(),
%%   <<"CertificateWallet">> => binary(),
%%   <<"KeyLength">> => integer(),
%%   <<"SigningAlgorithm">> => string(),
%%   <<"ValidFromDate">> => non_neg_integer(),
%%   <<"ValidToDate">> => non_neg_integer()
%% }
-type certificate() :: #{binary() => any()}.

%% Example:
%% stop_replication_message() :: #{
%%   <<"ReplicationConfigArn">> := string()
%% }
-type stop_replication_message() :: #{binary() => any()}.

%% Example:
%% kms_key_not_accessible_fault() :: #{
%%   <<"message">> => string()
%% }
-type kms_key_not_accessible_fault() :: #{binary() => any()}.

%% Example:
%% s_n_s_invalid_topic_fault() :: #{
%%   <<"message">> => string()
%% }
-type s_n_s_invalid_topic_fault() :: #{binary() => any()}.

%% Example:
%% describe_replication_table_statistics_message() :: #{
%%   <<"Filters">> => list(filter()()),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer(),
%%   <<"ReplicationConfigArn">> := string()
%% }
-type describe_replication_table_statistics_message() :: #{binary() => any()}.

%% Example:
%% describe_event_subscriptions_response() :: #{
%%   <<"EventSubscriptionsList">> => list(event_subscription()()),
%%   <<"Marker">> => string()
%% }
-type describe_event_subscriptions_response() :: #{binary() => any()}.

%% Example:
%% describe_replications_response() :: #{
%%   <<"Marker">> => string(),
%%   <<"Replications">> => list(replication()())
%% }
-type describe_replications_response() :: #{binary() => any()}.

%% Example:
%% event() :: #{
%%   <<"Date">> => non_neg_integer(),
%%   <<"EventCategories">> => list(string()()),
%%   <<"Message">> => string(),
%%   <<"SourceIdentifier">> => string(),
%%   <<"SourceType">> => list(any())
%% }
-type event() :: #{binary() => any()}.

%% Example:
%% collector_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type collector_not_found_fault() :: #{binary() => any()}.

%% Example:
%% test_connection_message() :: #{
%%   <<"EndpointArn">> := string(),
%%   <<"ReplicationInstanceArn">> := string()
%% }
-type test_connection_message() :: #{binary() => any()}.

%% Example:
%% resource_already_exists_fault() :: #{
%%   <<"message">> => string(),
%%   <<"resourceArn">> => string()
%% }
-type resource_already_exists_fault() :: #{binary() => any()}.

%% Example:
%% start_metadata_model_assessment_response() :: #{
%%   <<"RequestIdentifier">> => string()
%% }
-type start_metadata_model_assessment_response() :: #{binary() => any()}.

%% Example:
%% delete_fleet_advisor_databases_response() :: #{
%%   <<"DatabaseIds">> => list(string()())
%% }
-type delete_fleet_advisor_databases_response() :: #{binary() => any()}.

%% Example:
%% describe_recommendation_limitations_request() :: #{
%%   <<"Filters">> => list(filter()()),
%%   <<"MaxRecords">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type describe_recommendation_limitations_request() :: #{binary() => any()}.

%% Example:
%% describe_data_migrations_message() :: #{
%%   <<"Filters">> => list(filter()()),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer(),
%%   <<"WithoutSettings">> => boolean(),
%%   <<"WithoutStatistics">> => boolean()
%% }
-type describe_data_migrations_message() :: #{binary() => any()}.

%% Example:
%% data_migration_settings() :: #{
%%   <<"CloudwatchLogsEnabled">> => boolean(),
%%   <<"NumberOfJobs">> => integer(),
%%   <<"SelectionRules">> => string()
%% }
-type data_migration_settings() :: #{binary() => any()}.

%% Example:
%% mongo_db_settings() :: #{
%%   <<"AuthMechanism">> => list(any()),
%%   <<"AuthSource">> => string(),
%%   <<"AuthType">> => list(any()),
%%   <<"DatabaseName">> => string(),
%%   <<"DocsToInvestigate">> => string(),
%%   <<"ExtractDocId">> => string(),
%%   <<"KmsKeyId">> => string(),
%%   <<"NestingLevel">> => list(any()),
%%   <<"Password">> => string(),
%%   <<"Port">> => integer(),
%%   <<"ReplicateShardCollections">> => boolean(),
%%   <<"SecretsManagerAccessRoleArn">> => string(),
%%   <<"SecretsManagerSecretId">> => string(),
%%   <<"ServerName">> => string(),
%%   <<"UseUpdateLookUp">> => boolean(),
%%   <<"Username">> => string()
%% }
-type mongo_db_settings() :: #{binary() => any()}.

%% Example:
%% cancel_replication_task_assessment_run_message() :: #{
%%   <<"ReplicationTaskAssessmentRunArn">> := string()
%% }
-type cancel_replication_task_assessment_run_message() :: #{binary() => any()}.

%% Example:
%% start_metadata_model_export_as_script_response() :: #{
%%   <<"RequestIdentifier">> => string()
%% }
-type start_metadata_model_export_as_script_response() :: #{binary() => any()}.

%% Example:
%% compute_config() :: #{
%%   <<"AvailabilityZone">> => string(),
%%   <<"DnsNameServers">> => string(),
%%   <<"KmsKeyId">> => string(),
%%   <<"MaxCapacityUnits">> => integer(),
%%   <<"MinCapacityUnits">> => integer(),
%%   <<"MultiAZ">> => boolean(),
%%   <<"PreferredMaintenanceWindow">> => string(),
%%   <<"ReplicationSubnetGroupId">> => string(),
%%   <<"VpcSecurityGroupIds">> => list(string()())
%% }
-type compute_config() :: #{binary() => any()}.

%% Example:
%% add_tags_to_resource_message() :: #{
%%   <<"ResourceArn">> := string(),
%%   <<"Tags">> := list(tag()())
%% }
-type add_tags_to_resource_message() :: #{binary() => any()}.

%% Example:
%% oracle_settings() :: #{
%%   <<"Port">> => integer(),
%%   <<"UsePathPrefix">> => string(),
%%   <<"ArchivedLogsOnly">> => boolean(),
%%   <<"RetryInterval">> => integer(),
%%   <<"ReplacePathPrefix">> => boolean(),
%%   <<"SecretsManagerSecretId">> => string(),
%%   <<"EnableHomogenousTablespace">> => boolean(),
%%   <<"CharLengthSemantics">> => list(any()),
%%   <<"NumberDatatypeScale">> => integer(),
%%   <<"SecurityDbEncryption">> => string(),
%%   <<"SpatialDataOptionToGeoJsonFunctionName">> => string(),
%%   <<"FailTasksOnLobTruncation">> => boolean(),
%%   <<"ReadAheadBlocks">> => integer(),
%%   <<"TrimSpaceInChar">> => boolean(),
%%   <<"Password">> => string(),
%%   <<"AsmPassword">> => string(),
%%   <<"UseLogminerReader">> => boolean(),
%%   <<"AccessAlternateDirectly">> => boolean(),
%%   <<"SecretsManagerAccessRoleArn">> => string(),
%%   <<"ServerName">> => string(),
%%   <<"ConvertTimestampWithZoneToUTC">> => boolean(),
%%   <<"DirectPathNoLog">> => boolean(),
%%   <<"AddSupplementalLogging">> => boolean(),
%%   <<"ParallelAsmReadThreads">> => integer(),
%%   <<"SecretsManagerOracleAsmAccessRoleArn">> => string(),
%%   <<"UseAlternateFolderForOnline">> => boolean(),
%%   <<"OraclePathPrefix">> => string(),
%%   <<"Username">> => string(),
%%   <<"ExtraArchivedLogDestIds">> => list(integer()()),
%%   <<"DirectPathParallelLoad">> => boolean(),
%%   <<"SecurityDbEncryptionName">> => string(),
%%   <<"DatabaseName">> => string(),
%%   <<"UseBFile">> => boolean(),
%%   <<"StandbyDelayTime">> => integer(),
%%   <<"OpenTransactionWindow">> => integer(),
%%   <<"ReadTableSpaceName">> => boolean(),
%%   <<"AllowSelectNestedTables">> => boolean(),
%%   <<"AuthenticationMethod">> => list(any()),
%%   <<"ArchivedLogDestId">> => integer(),
%%   <<"AsmUser">> => string(),
%%   <<"AdditionalArchivedLogDestId">> => integer(),
%%   <<"UseDirectPathFullLoad">> => boolean(),
%%   <<"AsmServer">> => string(),
%%   <<"SecretsManagerOracleAsmSecretId">> => string()
%% }
-type oracle_settings() :: #{binary() => any()}.

%% Example:
%% modify_conversion_configuration_response() :: #{
%%   <<"MigrationProjectIdentifier">> => string()
%% }
-type modify_conversion_configuration_response() :: #{binary() => any()}.

%% Example:
%% stop_replication_response() :: #{
%%   <<"Replication">> => replication()
%% }
-type stop_replication_response() :: #{binary() => any()}.

%% Example:
%% start_replication_response() :: #{
%%   <<"Replication">> => replication()
%% }
-type start_replication_response() :: #{binary() => any()}.

%% Example:
%% kafka_settings() :: #{
%%   <<"Broker">> => string(),
%%   <<"IncludeControlDetails">> => boolean(),
%%   <<"IncludeNullAndEmpty">> => boolean(),
%%   <<"IncludePartitionValue">> => boolean(),
%%   <<"IncludeTableAlterOperations">> => boolean(),
%%   <<"IncludeTransactionDetails">> => boolean(),
%%   <<"MessageFormat">> => list(any()),
%%   <<"MessageMaxBytes">> => integer(),
%%   <<"NoHexPrefix">> => boolean(),
%%   <<"PartitionIncludeSchemaTable">> => boolean(),
%%   <<"SaslMechanism">> => list(any()),
%%   <<"SaslPassword">> => string(),
%%   <<"SaslUsername">> => string(),
%%   <<"SecurityProtocol">> => list(any()),
%%   <<"SslCaCertificateArn">> => string(),
%%   <<"SslClientCertificateArn">> => string(),
%%   <<"SslClientKeyArn">> => string(),
%%   <<"SslClientKeyPassword">> => string(),
%%   <<"SslEndpointIdentificationAlgorithm">> => list(any()),
%%   <<"Topic">> => string(),
%%   <<"UseLargeIntegerValue">> => boolean()
%% }
-type kafka_settings() :: #{binary() => any()}.

%% Example:
%% describe_metadata_model_imports_message() :: #{
%%   <<"Filters">> => list(filter()()),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer(),
%%   <<"MigrationProjectIdentifier">> := string()
%% }
-type describe_metadata_model_imports_message() :: #{binary() => any()}.

%% Example:
%% gcp_my_s_q_l_settings() :: #{
%%   <<"AfterConnectScript">> => string(),
%%   <<"CleanSourceMetadataOnMismatch">> => boolean(),
%%   <<"DatabaseName">> => string(),
%%   <<"EventsPollInterval">> => integer(),
%%   <<"MaxFileSize">> => integer(),
%%   <<"ParallelLoadThreads">> => integer(),
%%   <<"Password">> => string(),
%%   <<"Port">> => integer(),
%%   <<"SecretsManagerAccessRoleArn">> => string(),
%%   <<"SecretsManagerSecretId">> => string(),
%%   <<"ServerName">> => string(),
%%   <<"ServerTimezone">> => string(),
%%   <<"TargetDbType">> => list(any()),
%%   <<"Username">> => string()
%% }
-type gcp_my_s_q_l_settings() :: #{binary() => any()}.

%% Example:
%% describe_conversion_configuration_response() :: #{
%%   <<"ConversionConfiguration">> => string(),
%%   <<"MigrationProjectIdentifier">> => string()
%% }
-type describe_conversion_configuration_response() :: #{binary() => any()}.

%% Example:
%% describe_orderable_replication_instances_response() :: #{
%%   <<"Marker">> => string(),
%%   <<"OrderableReplicationInstances">> => list(orderable_replication_instance()())
%% }
-type describe_orderable_replication_instances_response() :: #{binary() => any()}.

%% Example:
%% limitation() :: #{
%%   <<"DatabaseId">> => string(),
%%   <<"Description">> => string(),
%%   <<"EngineName">> => string(),
%%   <<"Impact">> => string(),
%%   <<"Name">> => string(),
%%   <<"Type">> => string()
%% }
-type limitation() :: #{binary() => any()}.

%% Example:
%% delete_replication_instance_message() :: #{
%%   <<"ReplicationInstanceArn">> := string()
%% }
-type delete_replication_instance_message() :: #{binary() => any()}.

%% Example:
%% describe_events_message() :: #{
%%   <<"Duration">> => integer(),
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"EventCategories">> => list(string()()),
%%   <<"Filters">> => list(filter()()),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer(),
%%   <<"SourceIdentifier">> => string(),
%%   <<"SourceType">> => list(any()),
%%   <<"StartTime">> => non_neg_integer()
%% }
-type describe_events_message() :: #{binary() => any()}.

%% Example:
%% describe_endpoint_types_message() :: #{
%%   <<"Filters">> => list(filter()()),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer()
%% }
-type describe_endpoint_types_message() :: #{binary() => any()}.

%% Example:
%% modify_migration_project_message() :: #{
%%   <<"Description">> => string(),
%%   <<"InstanceProfileIdentifier">> => string(),
%%   <<"MigrationProjectIdentifier">> := string(),
%%   <<"MigrationProjectName">> => string(),
%%   <<"SchemaConversionApplicationAttributes">> => s_capplication_attributes(),
%%   <<"SourceDataProviderDescriptors">> => list(data_provider_descriptor_definition()()),
%%   <<"TargetDataProviderDescriptors">> => list(data_provider_descriptor_definition()()),
%%   <<"TransformationRules">> => string()
%% }
-type modify_migration_project_message() :: #{binary() => any()}.

%% Example:
%% create_replication_task_response() :: #{
%%   <<"ReplicationTask">> => replication_task()
%% }
-type create_replication_task_response() :: #{binary() => any()}.

%% Example:
%% start_metadata_model_export_to_target_response() :: #{
%%   <<"RequestIdentifier">> => string()
%% }
-type start_metadata_model_export_to_target_response() :: #{binary() => any()}.

%% Example:
%% database_instance_software_details_response() :: #{
%%   <<"Engine">> => string(),
%%   <<"EngineEdition">> => string(),
%%   <<"EngineVersion">> => string(),
%%   <<"OsArchitecture">> => integer(),
%%   <<"ServicePack">> => string(),
%%   <<"SupportLevel">> => string(),
%%   <<"Tooltip">> => string()
%% }
-type database_instance_software_details_response() :: #{binary() => any()}.

%% Example:
%% modify_replication_instance_response() :: #{
%%   <<"ReplicationInstance">> => replication_instance()
%% }
-type modify_replication_instance_response() :: #{binary() => any()}.

%% Example:
%% describe_instance_profiles_response() :: #{
%%   <<"InstanceProfiles">> => list(instance_profile()()),
%%   <<"Marker">> => string()
%% }
-type describe_instance_profiles_response() :: #{binary() => any()}.

%% Example:
%% delete_connection_response() :: #{
%%   <<"Connection">> => connection()
%% }
-type delete_connection_response() :: #{binary() => any()}.

%% Example:
%% maria_db_data_provider_settings() :: #{
%%   <<"CertificateArn">> => string(),
%%   <<"Port">> => integer(),
%%   <<"S3AccessRoleArn">> => string(),
%%   <<"S3Path">> => string(),
%%   <<"ServerName">> => string(),
%%   <<"SslMode">> => list(any())
%% }
-type maria_db_data_provider_settings() :: #{binary() => any()}.

%% Example:
%% create_data_migration_message() :: #{
%%   <<"DataMigrationName">> => string(),
%%   <<"DataMigrationType">> := list(any()),
%%   <<"EnableCloudwatchLogs">> => boolean(),
%%   <<"MigrationProjectIdentifier">> := string(),
%%   <<"NumberOfJobs">> => integer(),
%%   <<"SelectionRules">> => string(),
%%   <<"ServiceAccessRoleArn">> := string(),
%%   <<"SourceDataSettings">> => list(source_data_setting()()),
%%   <<"Tags">> => list(tag()()),
%%   <<"TargetDataSettings">> => list(target_data_setting()())
%% }
-type create_data_migration_message() :: #{binary() => any()}.

%% Example:
%% replication_subnet_group() :: #{
%%   <<"ReplicationSubnetGroupDescription">> => string(),
%%   <<"ReplicationSubnetGroupIdentifier">> => string(),
%%   <<"SubnetGroupStatus">> => string(),
%%   <<"Subnets">> => list(subnet()()),
%%   <<"SupportedNetworkTypes">> => list(string()()),
%%   <<"VpcId">> => string()
%% }
-type replication_subnet_group() :: #{binary() => any()}.

%% Example:
%% start_replication_task_assessment_response() :: #{
%%   <<"ReplicationTask">> => replication_task()
%% }
-type start_replication_task_assessment_response() :: #{binary() => any()}.

%% Example:
%% create_migration_project_response() :: #{
%%   <<"MigrationProject">> => migration_project()
%% }
-type create_migration_project_response() :: #{binary() => any()}.

%% Example:
%% provision_data() :: #{
%%   <<"DateNewProvisioningDataAvailable">> => non_neg_integer(),
%%   <<"DateProvisioned">> => non_neg_integer(),
%%   <<"IsNewProvisioningAvailable">> => boolean(),
%%   <<"ProvisionState">> => string(),
%%   <<"ProvisionedCapacityUnits">> => integer(),
%%   <<"ReasonForNewProvisioningData">> => string()
%% }
-type provision_data() :: #{binary() => any()}.

%% Example:
%% start_replication_task_assessment_run_message() :: #{
%%   <<"AssessmentRunName">> := string(),
%%   <<"Exclude">> => list(string()()),
%%   <<"IncludeOnly">> => list(string()()),
%%   <<"ReplicationTaskArn">> := string(),
%%   <<"ResultEncryptionMode">> => string(),
%%   <<"ResultKmsKeyArn">> => string(),
%%   <<"ResultLocationBucket">> := string(),
%%   <<"ResultLocationFolder">> => string(),
%%   <<"ServiceAccessRoleArn">> := string(),
%%   <<"Tags">> => list(tag()())
%% }
-type start_replication_task_assessment_run_message() :: #{binary() => any()}.

%% Example:
%% batch_start_recommendations_error_entry() :: #{
%%   <<"Code">> => string(),
%%   <<"DatabaseId">> => string(),
%%   <<"Message">> => string()
%% }
-type batch_start_recommendations_error_entry() :: #{binary() => any()}.

%% Example:
%% run_fleet_advisor_lsa_analysis_response() :: #{
%%   <<"LsaAnalysisId">> => string(),
%%   <<"Status">> => string()
%% }
-type run_fleet_advisor_lsa_analysis_response() :: #{binary() => any()}.

%% Example:
%% create_replication_config_response() :: #{
%%   <<"ReplicationConfig">> => replication_config()
%% }
-type create_replication_config_response() :: #{binary() => any()}.

%% Example:
%% invalid_operation_fault() :: #{
%%   <<"message">> => string()
%% }
-type invalid_operation_fault() :: #{binary() => any()}.

%% Example:
%% describe_data_migrations_response() :: #{
%%   <<"DataMigrations">> => list(data_migration()()),
%%   <<"Marker">> => string()
%% }
-type describe_data_migrations_response() :: #{binary() => any()}.

%% Example:
%% describe_replication_tasks_response() :: #{
%%   <<"Marker">> => string(),
%%   <<"ReplicationTasks">> => list(replication_task()())
%% }
-type describe_replication_tasks_response() :: #{binary() => any()}.

%% Example:
%% refresh_schemas_response() :: #{
%%   <<"RefreshSchemasStatus">> => refresh_schemas_status()
%% }
-type refresh_schemas_response() :: #{binary() => any()}.

%% Example:
%% start_extension_pack_association_message() :: #{
%%   <<"MigrationProjectIdentifier">> := string()
%% }
-type start_extension_pack_association_message() :: #{binary() => any()}.

%% Example:
%% delete_replication_task_message() :: #{
%%   <<"ReplicationTaskArn">> := string()
%% }
-type delete_replication_task_message() :: #{binary() => any()}.

%% Example:
%% modify_replication_config_message() :: #{
%%   <<"ComputeConfig">> => compute_config(),
%%   <<"ReplicationConfigArn">> := string(),
%%   <<"ReplicationConfigIdentifier">> => string(),
%%   <<"ReplicationSettings">> => string(),
%%   <<"ReplicationType">> => list(any()),
%%   <<"SourceEndpointArn">> => string(),
%%   <<"SupplementalSettings">> => string(),
%%   <<"TableMappings">> => string(),
%%   <<"TargetEndpointArn">> => string()
%% }
-type modify_replication_config_message() :: #{binary() => any()}.

%% Example:
%% schema_response() :: #{
%%   <<"CodeLineCount">> => float(),
%%   <<"CodeSize">> => float(),
%%   <<"Complexity">> => string(),
%%   <<"DatabaseInstance">> => database_short_info_response(),
%%   <<"OriginalSchema">> => schema_short_info_response(),
%%   <<"SchemaId">> => string(),
%%   <<"SchemaName">> => string(),
%%   <<"Server">> => server_short_info_response(),
%%   <<"Similarity">> => float()
%% }
-type schema_response() :: #{binary() => any()}.

%% Example:
%% modify_replication_task_response() :: #{
%%   <<"ReplicationTask">> => replication_task()
%% }
-type modify_replication_task_response() :: #{binary() => any()}.

%% Example:
%% modify_conversion_configuration_message() :: #{
%%   <<"ConversionConfiguration">> := string(),
%%   <<"MigrationProjectIdentifier">> := string()
%% }
-type modify_conversion_configuration_message() :: #{binary() => any()}.

%% Example:
%% import_certificate_message() :: #{
%%   <<"CertificateIdentifier">> := string(),
%%   <<"CertificatePem">> => string(),
%%   <<"CertificateWallet">> => binary(),
%%   <<"Tags">> => list(tag()())
%% }
-type import_certificate_message() :: #{binary() => any()}.

%% Example:
%% postgre_sql_data_provider_settings() :: #{
%%   <<"CertificateArn">> => string(),
%%   <<"DatabaseName">> => string(),
%%   <<"Port">> => integer(),
%%   <<"S3AccessRoleArn">> => string(),
%%   <<"S3Path">> => string(),
%%   <<"ServerName">> => string(),
%%   <<"SslMode">> => list(any())
%% }
-type postgre_sql_data_provider_settings() :: #{binary() => any()}.

%% Example:
%% start_data_migration_message() :: #{
%%   <<"DataMigrationIdentifier">> := string(),
%%   <<"StartType">> := list(any())
%% }
-type start_data_migration_message() :: #{binary() => any()}.

%% Example:
%% modify_instance_profile_message() :: #{
%%   <<"AvailabilityZone">> => string(),
%%   <<"Description">> => string(),
%%   <<"InstanceProfileIdentifier">> := string(),
%%   <<"InstanceProfileName">> => string(),
%%   <<"KmsKeyArn">> => string(),
%%   <<"NetworkType">> => string(),
%%   <<"PubliclyAccessible">> => boolean(),
%%   <<"SubnetGroupIdentifier">> => string(),
%%   <<"VpcSecurityGroups">> => list(string()())
%% }
-type modify_instance_profile_message() :: #{binary() => any()}.

%% Example:
%% database_short_info_response() :: #{
%%   <<"DatabaseEngine">> => string(),
%%   <<"DatabaseId">> => string(),
%%   <<"DatabaseIpAddress">> => string(),
%%   <<"DatabaseName">> => string()
%% }
-type database_short_info_response() :: #{binary() => any()}.

%% Example:
%% start_metadata_model_conversion_message() :: #{
%%   <<"MigrationProjectIdentifier">> := string(),
%%   <<"SelectionRules">> := string()
%% }
-type start_metadata_model_conversion_message() :: #{binary() => any()}.

%% Example:
%% start_extension_pack_association_response() :: #{
%%   <<"RequestIdentifier">> => string()
%% }
-type start_extension_pack_association_response() :: #{binary() => any()}.

%% Example:
%% describe_migration_projects_response() :: #{
%%   <<"Marker">> => string(),
%%   <<"MigrationProjects">> => list(migration_project()())
%% }
-type describe_migration_projects_response() :: #{binary() => any()}.

%% Example:
%% kms_disabled_fault() :: #{
%%   <<"message">> => string()
%% }
-type kms_disabled_fault() :: #{binary() => any()}.

%% Example:
%% create_endpoint_message() :: #{
%%   <<"EndpointType">> := list(any()),
%%   <<"Port">> => integer(),
%%   <<"GcpMySQLSettings">> => gcp_my_s_q_l_settings(),
%%   <<"EngineName">> := string(),
%%   <<"OracleSettings">> => oracle_settings(),
%%   <<"KafkaSettings">> => kafka_settings(),
%%   <<"IBMDb2Settings">> => i_b_m_db2_settings(),
%%   <<"DmsTransferSettings">> => dms_transfer_settings(),
%%   <<"ExtraConnectionAttributes">> => string(),
%%   <<"DocDbSettings">> => doc_db_settings(),
%%   <<"Password">> => string(),
%%   <<"TimestreamSettings">> => timestream_settings(),
%%   <<"PostgreSQLSettings">> => postgre_s_q_l_settings(),
%%   <<"ServerName">> => string(),
%%   <<"EndpointIdentifier">> := string(),
%%   <<"CertificateArn">> => string(),
%%   <<"NeptuneSettings">> => neptune_settings(),
%%   <<"MySQLSettings">> => my_s_q_l_settings(),
%%   <<"Username">> => string(),
%%   <<"ResourceIdentifier">> => string(),
%%   <<"ExternalTableDefinition">> => string(),
%%   <<"SslMode">> => list(any()),
%%   <<"Tags">> => list(tag()()),
%%   <<"S3Settings">> => s3_settings(),
%%   <<"ElasticsearchSettings">> => elasticsearch_settings(),
%%   <<"DatabaseName">> => string(),
%%   <<"KmsKeyId">> => string(),
%%   <<"DynamoDbSettings">> => dynamo_db_settings(),
%%   <<"ServiceAccessRoleArn">> => string(),
%%   <<"MicrosoftSQLServerSettings">> => microsoft_s_q_l_server_settings(),
%%   <<"RedshiftSettings">> => redshift_settings(),
%%   <<"MongoDbSettings">> => mongo_db_settings(),
%%   <<"RedisSettings">> => redis_settings(),
%%   <<"KinesisSettings">> => kinesis_settings(),
%%   <<"SybaseSettings">> => sybase_settings()
%% }
-type create_endpoint_message() :: #{binary() => any()}.

%% Example:
%% modify_migration_project_response() :: #{
%%   <<"MigrationProject">> => migration_project()
%% }
-type modify_migration_project_response() :: #{binary() => any()}.

%% Example:
%% remove_tags_from_resource_message() :: #{
%%   <<"ResourceArn">> := string(),
%%   <<"TagKeys">> := list(string()())
%% }
-type remove_tags_from_resource_message() :: #{binary() => any()}.

%% Example:
%% create_endpoint_response() :: #{
%%   <<"Endpoint">> => endpoint()
%% }
-type create_endpoint_response() :: #{binary() => any()}.

%% Example:
%% microsoft_s_q_l_server_settings() :: #{
%%   <<"AuthenticationMethod">> => list(any()),
%%   <<"BcpPacketSize">> => integer(),
%%   <<"ControlTablesFileGroup">> => string(),
%%   <<"DatabaseName">> => string(),
%%   <<"ForceLobLookup">> => boolean(),
%%   <<"Password">> => string(),
%%   <<"Port">> => integer(),
%%   <<"QuerySingleAlwaysOnNode">> => boolean(),
%%   <<"ReadBackupOnly">> => boolean(),
%%   <<"SafeguardPolicy">> => list(any()),
%%   <<"SecretsManagerAccessRoleArn">> => string(),
%%   <<"SecretsManagerSecretId">> => string(),
%%   <<"ServerName">> => string(),
%%   <<"TlogAccessMode">> => list(any()),
%%   <<"TrimSpaceInChar">> => boolean(),
%%   <<"UseBcpFullLoad">> => boolean(),
%%   <<"UseThirdPartyBackupDevice">> => boolean(),
%%   <<"Username">> => string()
%% }
-type microsoft_s_q_l_server_settings() :: #{binary() => any()}.

%% Example:
%% apply_pending_maintenance_action_response() :: #{
%%   <<"ResourcePendingMaintenanceActions">> => resource_pending_maintenance_actions()
%% }
-type apply_pending_maintenance_action_response() :: #{binary() => any()}.

%% Example:
%% resource_quota_exceeded_fault() :: #{
%%   <<"message">> => string()
%% }
-type resource_quota_exceeded_fault() :: #{binary() => any()}.

%% Example:
%% reload_replication_tables_response() :: #{
%%   <<"ReplicationConfigArn">> => string()
%% }
-type reload_replication_tables_response() :: #{binary() => any()}.

%% Example:
%% describe_replication_subnet_groups_message() :: #{
%%   <<"Filters">> => list(filter()()),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer()
%% }
-type describe_replication_subnet_groups_message() :: #{binary() => any()}.

%% Example:
%% data_provider_descriptor_definition() :: #{
%%   <<"DataProviderIdentifier">> => string(),
%%   <<"SecretsManagerAccessRoleArn">> => string(),
%%   <<"SecretsManagerSecretId">> => string()
%% }
-type data_provider_descriptor_definition() :: #{binary() => any()}.

%% Example:
%% describe_event_categories_message() :: #{
%%   <<"Filters">> => list(filter()()),
%%   <<"SourceType">> => string()
%% }
-type describe_event_categories_message() :: #{binary() => any()}.

%% Example:
%% postgre_s_q_l_settings() :: #{
%%   <<"AfterConnectScript">> => string(),
%%   <<"AuthenticationMethod">> => list(any()),
%%   <<"BabelfishDatabaseName">> => string(),
%%   <<"CaptureDdls">> => boolean(),
%%   <<"DatabaseMode">> => list(any()),
%%   <<"DatabaseName">> => string(),
%%   <<"DdlArtifactsSchema">> => string(),
%%   <<"DisableUnicodeSourceFilter">> => boolean(),
%%   <<"ExecuteTimeout">> => integer(),
%%   <<"FailTasksOnLobTruncation">> => boolean(),
%%   <<"HeartbeatEnable">> => boolean(),
%%   <<"HeartbeatFrequency">> => integer(),
%%   <<"HeartbeatSchema">> => string(),
%%   <<"MapBooleanAsBoolean">> => boolean(),
%%   <<"MapJsonbAsClob">> => boolean(),
%%   <<"MapLongVarcharAs">> => list(any()),
%%   <<"MaxFileSize">> => integer(),
%%   <<"Password">> => string(),
%%   <<"PluginName">> => list(any()),
%%   <<"Port">> => integer(),
%%   <<"SecretsManagerAccessRoleArn">> => string(),
%%   <<"SecretsManagerSecretId">> => string(),
%%   <<"ServerName">> => string(),
%%   <<"ServiceAccessRoleArn">> => string(),
%%   <<"SlotName">> => string(),
%%   <<"TrimSpaceInChar">> => boolean(),
%%   <<"Username">> => string()
%% }
-type postgre_s_q_l_settings() :: #{binary() => any()}.

%% Example:
%% describe_refresh_schemas_status_response() :: #{
%%   <<"RefreshSchemasStatus">> => refresh_schemas_status()
%% }
-type describe_refresh_schemas_status_response() :: #{binary() => any()}.

%% Example:
%% batch_start_recommendations_response() :: #{
%%   <<"ErrorEntries">> => list(batch_start_recommendations_error_entry()())
%% }
-type batch_start_recommendations_response() :: #{binary() => any()}.

%% Example:
%% delete_data_provider_response() :: #{
%%   <<"DataProvider">> => data_provider()
%% }
-type delete_data_provider_response() :: #{binary() => any()}.

%% Example:
%% describe_replications_message() :: #{
%%   <<"Filters">> => list(filter()()),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer()
%% }
-type describe_replications_message() :: #{binary() => any()}.

%% Example:
%% reload_replication_tables_message() :: #{
%%   <<"ReloadOption">> => list(any()),
%%   <<"ReplicationConfigArn">> := string(),
%%   <<"TablesToReload">> := list(table_to_reload()())
%% }
-type reload_replication_tables_message() :: #{binary() => any()}.

%% Example:
%% batch_start_recommendations_request() :: #{
%%   <<"Data">> => list(start_recommendations_request_entry()())
%% }
-type batch_start_recommendations_request() :: #{binary() => any()}.

%% Example:
%% describe_metadata_model_exports_to_target_response() :: #{
%%   <<"Marker">> => string(),
%%   <<"Requests">> => list(schema_conversion_request()())
%% }
-type describe_metadata_model_exports_to_target_response() :: #{binary() => any()}.

%% Example:
%% refresh_schemas_status() :: #{
%%   <<"EndpointArn">> => string(),
%%   <<"LastFailureMessage">> => string(),
%%   <<"LastRefreshDate">> => non_neg_integer(),
%%   <<"ReplicationInstanceArn">> => string(),
%%   <<"Status">> => list(any())
%% }
-type refresh_schemas_status() :: #{binary() => any()}.

%% Example:
%% describe_engine_versions_response() :: #{
%%   <<"EngineVersions">> => list(engine_version()()),
%%   <<"Marker">> => string()
%% }
-type describe_engine_versions_response() :: #{binary() => any()}.

%% Example:
%% s_n_s_no_authorization_fault() :: #{
%%   <<"message">> => string()
%% }
-type s_n_s_no_authorization_fault() :: #{binary() => any()}.

%% Example:
%% modify_replication_instance_message() :: #{
%%   <<"AllocatedStorage">> => integer(),
%%   <<"AllowMajorVersionUpgrade">> => boolean(),
%%   <<"ApplyImmediately">> => boolean(),
%%   <<"AutoMinorVersionUpgrade">> => boolean(),
%%   <<"EngineVersion">> => string(),
%%   <<"KerberosAuthenticationSettings">> => kerberos_authentication_settings(),
%%   <<"MultiAZ">> => boolean(),
%%   <<"NetworkType">> => string(),
%%   <<"PreferredMaintenanceWindow">> => string(),
%%   <<"ReplicationInstanceArn">> := string(),
%%   <<"ReplicationInstanceClass">> => string(),
%%   <<"ReplicationInstanceIdentifier">> => string(),
%%   <<"VpcSecurityGroupIds">> => list(string()())
%% }
-type modify_replication_instance_message() :: #{binary() => any()}.

%% Example:
%% describe_replication_instance_task_logs_response() :: #{
%%   <<"Marker">> => string(),
%%   <<"ReplicationInstanceArn">> => string(),
%%   <<"ReplicationInstanceTaskLogs">> => list(replication_instance_task_log()())
%% }
-type describe_replication_instance_task_logs_response() :: #{binary() => any()}.

%% Example:
%% delete_replication_instance_response() :: #{
%%   <<"ReplicationInstance">> => replication_instance()
%% }
-type delete_replication_instance_response() :: #{binary() => any()}.

%% Example:
%% describe_certificates_response() :: #{
%%   <<"Certificates">> => list(certificate()()),
%%   <<"Marker">> => string()
%% }
-type describe_certificates_response() :: #{binary() => any()}.

%% Example:
%% collector_short_info_response() :: #{
%%   <<"CollectorName">> => string(),
%%   <<"CollectorReferencedId">> => string()
%% }
-type collector_short_info_response() :: #{binary() => any()}.

%% Example:
%% export_sql_details() :: #{
%%   <<"ObjectURL">> => string(),
%%   <<"S3ObjectKey">> => string()
%% }
-type export_sql_details() :: #{binary() => any()}.

%% Example:
%% vpc_security_group_membership() :: #{
%%   <<"Status">> => string(),
%%   <<"VpcSecurityGroupId">> => string()
%% }
-type vpc_security_group_membership() :: #{binary() => any()}.

%% Example:
%% delete_replication_task_response() :: #{
%%   <<"ReplicationTask">> => replication_task()
%% }
-type delete_replication_task_response() :: #{binary() => any()}.

%% Example:
%% replication_config() :: #{
%%   <<"ComputeConfig">> => compute_config(),
%%   <<"ReplicationConfigArn">> => string(),
%%   <<"ReplicationConfigCreateTime">> => non_neg_integer(),
%%   <<"ReplicationConfigIdentifier">> => string(),
%%   <<"ReplicationConfigUpdateTime">> => non_neg_integer(),
%%   <<"ReplicationSettings">> => string(),
%%   <<"ReplicationType">> => list(any()),
%%   <<"SourceEndpointArn">> => string(),
%%   <<"SupplementalSettings">> => string(),
%%   <<"TableMappings">> => string(),
%%   <<"TargetEndpointArn">> => string()
%% }
-type replication_config() :: #{binary() => any()}.

%% Example:
%% migration_project() :: #{
%%   <<"Description">> => string(),
%%   <<"InstanceProfileArn">> => string(),
%%   <<"InstanceProfileName">> => string(),
%%   <<"MigrationProjectArn">> => string(),
%%   <<"MigrationProjectCreationTime">> => non_neg_integer(),
%%   <<"MigrationProjectName">> => string(),
%%   <<"SchemaConversionApplicationAttributes">> => s_capplication_attributes(),
%%   <<"SourceDataProviderDescriptors">> => list(data_provider_descriptor()()),
%%   <<"TargetDataProviderDescriptors">> => list(data_provider_descriptor()()),
%%   <<"TransformationRules">> => string()
%% }
-type migration_project() :: #{binary() => any()}.

%% Example:
%% fleet_advisor_lsa_analysis_response() :: #{
%%   <<"LsaAnalysisId">> => string(),
%%   <<"Status">> => string()
%% }
-type fleet_advisor_lsa_analysis_response() :: #{binary() => any()}.

%% Example:
%% kms_throttling_fault() :: #{
%%   <<"message">> => string()
%% }
-type kms_throttling_fault() :: #{binary() => any()}.

%% Example:
%% delete_migration_project_response() :: #{
%%   <<"MigrationProject">> => migration_project()
%% }
-type delete_migration_project_response() :: #{binary() => any()}.

%% Example:
%% describe_fleet_advisor_schemas_request() :: #{
%%   <<"Filters">> => list(filter()()),
%%   <<"MaxRecords">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type describe_fleet_advisor_schemas_request() :: #{binary() => any()}.

%% Example:
%% describe_replication_task_assessment_runs_message() :: #{
%%   <<"Filters">> => list(filter()()),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer()
%% }
-type describe_replication_task_assessment_runs_message() :: #{binary() => any()}.

%% Example:
%% data_provider_descriptor() :: #{
%%   <<"DataProviderArn">> => string(),
%%   <<"DataProviderName">> => string(),
%%   <<"SecretsManagerAccessRoleArn">> => string(),
%%   <<"SecretsManagerSecretId">> => string()
%% }
-type data_provider_descriptor() :: #{binary() => any()}.

%% Example:
%% my_sql_data_provider_settings() :: #{
%%   <<"CertificateArn">> => string(),
%%   <<"Port">> => integer(),
%%   <<"S3AccessRoleArn">> => string(),
%%   <<"S3Path">> => string(),
%%   <<"ServerName">> => string(),
%%   <<"SslMode">> => list(any())
%% }
-type my_sql_data_provider_settings() :: #{binary() => any()}.

%% Example:
%% replication_pending_modified_values() :: #{
%%   <<"AllocatedStorage">> => integer(),
%%   <<"EngineVersion">> => string(),
%%   <<"MultiAZ">> => boolean(),
%%   <<"NetworkType">> => string(),
%%   <<"ReplicationInstanceClass">> => string()
%% }
-type replication_pending_modified_values() :: #{binary() => any()}.

%% Example:
%% s3_resource_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type s3_resource_not_found_fault() :: #{binary() => any()}.

%% Example:
%% update_subscriptions_to_event_bridge_response() :: #{
%%   <<"Result">> => string()
%% }
-type update_subscriptions_to_event_bridge_response() :: #{binary() => any()}.

%% Example:
%% describe_endpoint_settings_message() :: #{
%%   <<"EngineName">> := string(),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer()
%% }
-type describe_endpoint_settings_message() :: #{binary() => any()}.

%% Example:
%% describe_events_response() :: #{
%%   <<"Events">> => list(event()()),
%%   <<"Marker">> => string()
%% }
-type describe_events_response() :: #{binary() => any()}.

%% Example:
%% describe_conversion_configuration_message() :: #{
%%   <<"MigrationProjectIdentifier">> := string()
%% }
-type describe_conversion_configuration_message() :: #{binary() => any()}.

%% Example:
%% reload_tables_message() :: #{
%%   <<"ReloadOption">> => list(any()),
%%   <<"ReplicationTaskArn">> := string(),
%%   <<"TablesToReload">> := list(table_to_reload()())
%% }
-type reload_tables_message() :: #{binary() => any()}.

%% Example:
%% start_replication_task_assessment_message() :: #{
%%   <<"ReplicationTaskArn">> := string()
%% }
-type start_replication_task_assessment_message() :: #{binary() => any()}.

%% Example:
%% cancel_replication_task_assessment_run_response() :: #{
%%   <<"ReplicationTaskAssessmentRun">> => replication_task_assessment_run()
%% }
-type cancel_replication_task_assessment_run_response() :: #{binary() => any()}.

%% Example:
%% delete_certificate_response() :: #{
%%   <<"Certificate">> => certificate()
%% }
-type delete_certificate_response() :: #{binary() => any()}.

%% Example:
%% create_data_provider_response() :: #{
%%   <<"DataProvider">> => data_provider()
%% }
-type create_data_provider_response() :: #{binary() => any()}.

%% Example:
%% supported_endpoint_type() :: #{
%%   <<"EndpointType">> => list(any()),
%%   <<"EngineDisplayName">> => string(),
%%   <<"EngineName">> => string(),
%%   <<"ReplicationInstanceEngineMinimumVersion">> => string(),
%%   <<"SupportsCDC">> => boolean()
%% }
-type supported_endpoint_type() :: #{binary() => any()}.

%% Example:
%% replication_task_assessment_run() :: #{
%%   <<"AssessmentProgress">> => replication_task_assessment_run_progress(),
%%   <<"AssessmentRunName">> => string(),
%%   <<"IsLatestTaskAssessmentRun">> => boolean(),
%%   <<"LastFailureMessage">> => string(),
%%   <<"ReplicationTaskArn">> => string(),
%%   <<"ReplicationTaskAssessmentRunArn">> => string(),
%%   <<"ReplicationTaskAssessmentRunCreationDate">> => non_neg_integer(),
%%   <<"ResultEncryptionMode">> => string(),
%%   <<"ResultKmsKeyArn">> => string(),
%%   <<"ResultLocationBucket">> => string(),
%%   <<"ResultLocationFolder">> => string(),
%%   <<"ResultStatistic">> => replication_task_assessment_run_result_statistic(),
%%   <<"ServiceAccessRoleArn">> => string(),
%%   <<"Status">> => string()
%% }
-type replication_task_assessment_run() :: #{binary() => any()}.

-type add_tags_to_resource_errors() ::
    invalid_resource_state_fault() | 
    resource_not_found_fault().

-type apply_pending_maintenance_action_errors() ::
    resource_not_found_fault().

-type batch_start_recommendations_errors() ::
    access_denied_fault() | 
    invalid_resource_state_fault() | 
    resource_not_found_fault().

-type cancel_replication_task_assessment_run_errors() ::
    access_denied_fault() | 
    invalid_resource_state_fault() | 
    resource_not_found_fault().

-type create_data_migration_errors() ::
    resource_quota_exceeded_fault() | 
    invalid_operation_fault() | 
    resource_already_exists_fault() | 
    failed_dependency_fault() | 
    resource_not_found_fault().

-type create_data_provider_errors() ::
    resource_quota_exceeded_fault() | 
    resource_already_exists_fault() | 
    failed_dependency_fault() | 
    access_denied_fault().

-type create_endpoint_errors() ::
    resource_quota_exceeded_fault() | 
    resource_already_exists_fault() | 
    kms_key_not_accessible_fault() | 
    s3_access_denied_fault() | 
    access_denied_fault() | 
    invalid_resource_state_fault() | 
    resource_not_found_fault().

-type create_event_subscription_errors() ::
    kms_throttling_fault() | 
    s_n_s_no_authorization_fault() | 
    resource_quota_exceeded_fault() | 
    kms_disabled_fault() | 
    resource_already_exists_fault() | 
    s_n_s_invalid_topic_fault() | 
    kms_not_found_fault() | 
    kms_access_denied_fault() | 
    kms_invalid_state_fault() | 
    resource_not_found_fault().

-type create_fleet_advisor_collector_errors() ::
    s3_resource_not_found_fault() | 
    resource_quota_exceeded_fault() | 
    s3_access_denied_fault() | 
    access_denied_fault() | 
    invalid_resource_state_fault().

-type create_instance_profile_errors() ::
    s3_resource_not_found_fault() | 
    resource_quota_exceeded_fault() | 
    resource_already_exists_fault() | 
    kms_key_not_accessible_fault() | 
    s3_access_denied_fault() | 
    failed_dependency_fault() | 
    access_denied_fault() | 
    invalid_resource_state_fault() | 
    resource_not_found_fault().

-type create_migration_project_errors() ::
    s3_resource_not_found_fault() | 
    resource_quota_exceeded_fault() | 
    resource_already_exists_fault() | 
    s3_access_denied_fault() | 
    failed_dependency_fault() | 
    access_denied_fault() | 
    resource_not_found_fault().

-type create_replication_config_errors() ::
    resource_quota_exceeded_fault() | 
    resource_already_exists_fault() | 
    kms_key_not_accessible_fault() | 
    replication_subnet_group_does_not_cover_enough_a_zs() | 
    invalid_subnet() | 
    access_denied_fault() | 
    invalid_resource_state_fault() | 
    resource_not_found_fault().

-type create_replication_instance_errors() ::
    resource_quota_exceeded_fault() | 
    resource_already_exists_fault() | 
    kms_key_not_accessible_fault() | 
    storage_quota_exceeded_fault() | 
    insufficient_resource_capacity_fault() | 
    replication_subnet_group_does_not_cover_enough_a_zs() | 
    invalid_subnet() | 
    access_denied_fault() | 
    invalid_resource_state_fault() | 
    resource_not_found_fault().

-type create_replication_subnet_group_errors() ::
    resource_quota_exceeded_fault() | 
    resource_already_exists_fault() | 
    replication_subnet_group_does_not_cover_enough_a_zs() | 
    invalid_subnet() | 
    access_denied_fault() | 
    resource_not_found_fault().

-type create_replication_task_errors() ::
    resource_quota_exceeded_fault() | 
    resource_already_exists_fault() | 
    kms_key_not_accessible_fault() | 
    access_denied_fault() | 
    invalid_resource_state_fault() | 
    resource_not_found_fault().

-type delete_certificate_errors() ::
    invalid_resource_state_fault() | 
    resource_not_found_fault().

-type delete_connection_errors() ::
    access_denied_fault() | 
    invalid_resource_state_fault() | 
    resource_not_found_fault().

-type delete_data_migration_errors() ::
    failed_dependency_fault() | 
    invalid_resource_state_fault() | 
    resource_not_found_fault().

-type delete_data_provider_errors() ::
    failed_dependency_fault() | 
    access_denied_fault() | 
    invalid_resource_state_fault() | 
    resource_not_found_fault().

-type delete_endpoint_errors() ::
    invalid_resource_state_fault() | 
    resource_not_found_fault().

-type delete_event_subscription_errors() ::
    access_denied_fault() | 
    invalid_resource_state_fault() | 
    resource_not_found_fault().

-type delete_fleet_advisor_collector_errors() ::
    collector_not_found_fault() | 
    access_denied_fault() | 
    invalid_resource_state_fault().

-type delete_fleet_advisor_databases_errors() ::
    invalid_operation_fault() | 
    access_denied_fault() | 
    resource_not_found_fault().

-type delete_instance_profile_errors() ::
    failed_dependency_fault() | 
    access_denied_fault() | 
    invalid_resource_state_fault() | 
    resource_not_found_fault().

-type delete_migration_project_errors() ::
    failed_dependency_fault() | 
    access_denied_fault() | 
    invalid_resource_state_fault() | 
    resource_not_found_fault().

-type delete_replication_config_errors() ::
    access_denied_fault() | 
    invalid_resource_state_fault() | 
    resource_not_found_fault().

-type delete_replication_instance_errors() ::
    invalid_resource_state_fault() | 
    resource_not_found_fault().

-type delete_replication_subnet_group_errors() ::
    access_denied_fault() | 
    invalid_resource_state_fault() | 
    resource_not_found_fault().

-type delete_replication_task_errors() ::
    invalid_resource_state_fault() | 
    resource_not_found_fault().

-type delete_replication_task_assessment_run_errors() ::
    access_denied_fault() | 
    invalid_resource_state_fault() | 
    resource_not_found_fault().

-type describe_applicable_individual_assessments_errors() ::
    access_denied_fault() | 
    invalid_resource_state_fault() | 
    resource_not_found_fault().

-type describe_certificates_errors() ::
    resource_not_found_fault().

-type describe_connections_errors() ::
    resource_not_found_fault().

-type describe_conversion_configuration_errors() ::
    resource_not_found_fault().

-type describe_data_migrations_errors() ::
    failed_dependency_fault() | 
    invalid_resource_state_fault() | 
    resource_not_found_fault().

-type describe_data_providers_errors() ::
    failed_dependency_fault() | 
    access_denied_fault() | 
    resource_not_found_fault().

-type describe_endpoints_errors() ::
    resource_not_found_fault().

-type describe_event_subscriptions_errors() ::
    resource_not_found_fault().

-type describe_fleet_advisor_collectors_errors() ::
    invalid_resource_state_fault().

-type describe_fleet_advisor_databases_errors() ::
    invalid_resource_state_fault().

-type describe_fleet_advisor_lsa_analysis_errors() ::
    invalid_resource_state_fault().

-type describe_fleet_advisor_schema_object_summary_errors() ::
    invalid_resource_state_fault().

-type describe_fleet_advisor_schemas_errors() ::
    invalid_resource_state_fault().

-type describe_instance_profiles_errors() ::
    failed_dependency_fault() | 
    access_denied_fault() | 
    resource_not_found_fault().

-type describe_metadata_model_assessments_errors() ::
    resource_not_found_fault().

-type describe_metadata_model_conversions_errors() ::
    resource_not_found_fault().

-type describe_metadata_model_exports_as_script_errors() ::
    resource_not_found_fault().

-type describe_metadata_model_exports_to_target_errors() ::
    resource_not_found_fault().

-type describe_metadata_model_imports_errors() ::
    resource_not_found_fault().

-type describe_migration_projects_errors() ::
    failed_dependency_fault() | 
    access_denied_fault() | 
    resource_not_found_fault().

-type describe_pending_maintenance_actions_errors() ::
    resource_not_found_fault().

-type describe_recommendation_limitations_errors() ::
    access_denied_fault() | 
    invalid_resource_state_fault().

-type describe_recommendations_errors() ::
    access_denied_fault() | 
    invalid_resource_state_fault().

-type describe_refresh_schemas_status_errors() ::
    invalid_resource_state_fault() | 
    resource_not_found_fault().

-type describe_replication_configs_errors() ::
    resource_not_found_fault().

-type describe_replication_instance_task_logs_errors() ::
    invalid_resource_state_fault() | 
    resource_not_found_fault().

-type describe_replication_instances_errors() ::
    resource_not_found_fault().

-type describe_replication_subnet_groups_errors() ::
    resource_not_found_fault().

-type describe_replication_table_statistics_errors() ::
    invalid_resource_state_fault() | 
    resource_not_found_fault().

-type describe_replication_task_assessment_results_errors() ::
    resource_not_found_fault().

-type describe_replication_task_assessment_runs_errors() ::
    resource_not_found_fault().

-type describe_replication_task_individual_assessments_errors() ::
    resource_not_found_fault().

-type describe_replication_tasks_errors() ::
    resource_not_found_fault().

-type describe_replications_errors() ::
    resource_not_found_fault().

-type describe_schemas_errors() ::
    invalid_resource_state_fault() | 
    resource_not_found_fault().

-type describe_table_statistics_errors() ::
    access_denied_fault() | 
    invalid_resource_state_fault() | 
    resource_not_found_fault().

-type export_metadata_model_assessment_errors() ::
    resource_not_found_fault().

-type import_certificate_errors() ::
    resource_quota_exceeded_fault() | 
    resource_already_exists_fault() | 
    invalid_certificate_fault().

-type list_tags_for_resource_errors() ::
    invalid_resource_state_fault() | 
    resource_not_found_fault().

-type modify_conversion_configuration_errors() ::
    invalid_resource_state_fault() | 
    resource_not_found_fault().

-type modify_data_migration_errors() ::
    failed_dependency_fault() | 
    invalid_resource_state_fault() | 
    resource_not_found_fault().

-type modify_data_provider_errors() ::
    failed_dependency_fault() | 
    access_denied_fault() | 
    invalid_resource_state_fault() | 
    resource_not_found_fault().

-type modify_endpoint_errors() ::
    resource_already_exists_fault() | 
    kms_key_not_accessible_fault() | 
    access_denied_fault() | 
    invalid_resource_state_fault() | 
    resource_not_found_fault().

-type modify_event_subscription_errors() ::
    kms_throttling_fault() | 
    s_n_s_no_authorization_fault() | 
    resource_quota_exceeded_fault() | 
    kms_disabled_fault() | 
    s_n_s_invalid_topic_fault() | 
    kms_not_found_fault() | 
    kms_access_denied_fault() | 
    kms_invalid_state_fault() | 
    access_denied_fault() | 
    resource_not_found_fault().

-type modify_instance_profile_errors() ::
    s3_resource_not_found_fault() | 
    kms_key_not_accessible_fault() | 
    s3_access_denied_fault() | 
    failed_dependency_fault() | 
    access_denied_fault() | 
    invalid_resource_state_fault() | 
    resource_not_found_fault().

-type modify_migration_project_errors() ::
    s3_resource_not_found_fault() | 
    s3_access_denied_fault() | 
    failed_dependency_fault() | 
    access_denied_fault() | 
    invalid_resource_state_fault() | 
    resource_not_found_fault().

-type modify_replication_config_errors() ::
    kms_key_not_accessible_fault() | 
    replication_subnet_group_does_not_cover_enough_a_zs() | 
    invalid_subnet() | 
    access_denied_fault() | 
    invalid_resource_state_fault() | 
    resource_not_found_fault().

-type modify_replication_instance_errors() ::
    resource_already_exists_fault() | 
    storage_quota_exceeded_fault() | 
    insufficient_resource_capacity_fault() | 
    access_denied_fault() | 
    upgrade_dependency_failure_fault() | 
    invalid_resource_state_fault() | 
    resource_not_found_fault().

-type modify_replication_subnet_group_errors() ::
    resource_quota_exceeded_fault() | 
    replication_subnet_group_does_not_cover_enough_a_zs() | 
    invalid_subnet() | 
    access_denied_fault() | 
    subnet_already_in_use() | 
    resource_not_found_fault().

-type modify_replication_task_errors() ::
    resource_already_exists_fault() | 
    kms_key_not_accessible_fault() | 
    invalid_resource_state_fault() | 
    resource_not_found_fault().

-type move_replication_task_errors() ::
    resource_quota_exceeded_fault() | 
    kms_key_not_accessible_fault() | 
    access_denied_fault() | 
    invalid_resource_state_fault() | 
    resource_not_found_fault().

-type reboot_replication_instance_errors() ::
    invalid_resource_state_fault() | 
    resource_not_found_fault().

-type refresh_schemas_errors() ::
    resource_quota_exceeded_fault() | 
    kms_key_not_accessible_fault() | 
    invalid_resource_state_fault() | 
    resource_not_found_fault().

-type reload_replication_tables_errors() ::
    invalid_resource_state_fault() | 
    resource_not_found_fault().

-type reload_tables_errors() ::
    invalid_resource_state_fault() | 
    resource_not_found_fault().

-type remove_tags_from_resource_errors() ::
    invalid_resource_state_fault() | 
    resource_not_found_fault().

-type run_fleet_advisor_lsa_analysis_errors() ::
    invalid_resource_state_fault() | 
    resource_not_found_fault().

-type start_data_migration_errors() ::
    resource_quota_exceeded_fault() | 
    invalid_operation_fault() | 
    failed_dependency_fault() | 
    invalid_resource_state_fault() | 
    resource_not_found_fault().

-type start_extension_pack_association_errors() ::
    s3_resource_not_found_fault() | 
    resource_quota_exceeded_fault() | 
    resource_already_exists_fault() | 
    kms_key_not_accessible_fault() | 
    s3_access_denied_fault() | 
    access_denied_fault() | 
    invalid_resource_state_fault() | 
    resource_not_found_fault().

-type start_metadata_model_assessment_errors() ::
    s3_resource_not_found_fault() | 
    resource_quota_exceeded_fault() | 
    resource_already_exists_fault() | 
    kms_key_not_accessible_fault() | 
    s3_access_denied_fault() | 
    access_denied_fault() | 
    invalid_resource_state_fault() | 
    resource_not_found_fault().

-type start_metadata_model_conversion_errors() ::
    s3_resource_not_found_fault() | 
    resource_quota_exceeded_fault() | 
    resource_already_exists_fault() | 
    kms_key_not_accessible_fault() | 
    s3_access_denied_fault() | 
    access_denied_fault() | 
    invalid_resource_state_fault() | 
    resource_not_found_fault().

-type start_metadata_model_export_as_script_errors() ::
    s3_resource_not_found_fault() | 
    resource_quota_exceeded_fault() | 
    resource_already_exists_fault() | 
    kms_key_not_accessible_fault() | 
    s3_access_denied_fault() | 
    access_denied_fault() | 
    invalid_resource_state_fault() | 
    resource_not_found_fault().

-type start_metadata_model_export_to_target_errors() ::
    s3_resource_not_found_fault() | 
    resource_quota_exceeded_fault() | 
    resource_already_exists_fault() | 
    kms_key_not_accessible_fault() | 
    s3_access_denied_fault() | 
    access_denied_fault() | 
    invalid_resource_state_fault() | 
    resource_not_found_fault().

-type start_metadata_model_import_errors() ::
    s3_resource_not_found_fault() | 
    resource_quota_exceeded_fault() | 
    resource_already_exists_fault() | 
    kms_key_not_accessible_fault() | 
    s3_access_denied_fault() | 
    access_denied_fault() | 
    invalid_resource_state_fault() | 
    resource_not_found_fault().

-type start_recommendations_errors() ::
    access_denied_fault() | 
    invalid_resource_state_fault() | 
    resource_not_found_fault().

-type start_replication_errors() ::
    access_denied_fault() | 
    invalid_resource_state_fault() | 
    resource_not_found_fault().

-type start_replication_task_errors() ::
    access_denied_fault() | 
    invalid_resource_state_fault() | 
    resource_not_found_fault().

-type start_replication_task_assessment_errors() ::
    invalid_resource_state_fault() | 
    resource_not_found_fault().

-type start_replication_task_assessment_run_errors() ::
    s3_resource_not_found_fault() | 
    kms_disabled_fault() | 
    resource_already_exists_fault() | 
    kms_key_not_accessible_fault() | 
    s3_access_denied_fault() | 
    kms_not_found_fault() | 
    kms_fault() | 
    kms_access_denied_fault() | 
    kms_invalid_state_fault() | 
    access_denied_fault() | 
    invalid_resource_state_fault() | 
    resource_not_found_fault().

-type stop_data_migration_errors() ::
    failed_dependency_fault() | 
    invalid_resource_state_fault() | 
    resource_not_found_fault().

-type stop_replication_errors() ::
    access_denied_fault() | 
    invalid_resource_state_fault() | 
    resource_not_found_fault().

-type stop_replication_task_errors() ::
    invalid_resource_state_fault() | 
    resource_not_found_fault().

-type test_connection_errors() ::
    resource_quota_exceeded_fault() | 
    kms_key_not_accessible_fault() | 
    access_denied_fault() | 
    invalid_resource_state_fault() | 
    resource_not_found_fault().

-type update_subscriptions_to_event_bridge_errors() ::
    access_denied_fault() | 
    invalid_resource_state_fault().

%%====================================================================
%% API
%%====================================================================

%% @doc Adds metadata tags to an DMS resource, including replication
%% instance, endpoint,
%% subnet group, and migration task.
%%
%% These tags can also be used with cost allocation
%% reporting to track cost associated with DMS resources, or used in a
%% Condition statement in
%% an IAM policy for DMS. For more information, see
%% `Tag'
%% : https://docs.aws.amazon.com/dms/latest/APIReference/API_Tag.html data
%% type
%% description.
-spec add_tags_to_resource(aws_client:aws_client(), add_tags_to_resource_message()) ->
    {ok, add_tags_to_resource_response(), tuple()} |
    {error, any()} |
    {error, add_tags_to_resource_errors(), tuple()}.
add_tags_to_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_tags_to_resource(Client, Input, []).

-spec add_tags_to_resource(aws_client:aws_client(), add_tags_to_resource_message(), proplists:proplist()) ->
    {ok, add_tags_to_resource_response(), tuple()} |
    {error, any()} |
    {error, add_tags_to_resource_errors(), tuple()}.
add_tags_to_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddTagsToResource">>, Input, Options).

%% @doc Applies a pending maintenance action to a resource (for example, to a
%% replication
%% instance).
-spec apply_pending_maintenance_action(aws_client:aws_client(), apply_pending_maintenance_action_message()) ->
    {ok, apply_pending_maintenance_action_response(), tuple()} |
    {error, any()} |
    {error, apply_pending_maintenance_action_errors(), tuple()}.
apply_pending_maintenance_action(Client, Input)
  when is_map(Client), is_map(Input) ->
    apply_pending_maintenance_action(Client, Input, []).

-spec apply_pending_maintenance_action(aws_client:aws_client(), apply_pending_maintenance_action_message(), proplists:proplist()) ->
    {ok, apply_pending_maintenance_action_response(), tuple()} |
    {error, any()} |
    {error, apply_pending_maintenance_action_errors(), tuple()}.
apply_pending_maintenance_action(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ApplyPendingMaintenanceAction">>, Input, Options).

%% @doc
%%
%% End of support notice: On May 20, 2026, Amazon Web Services will end
%% support for Amazon Web Services DMS Fleet Advisor;.
%%
%% After May 20, 2026, you will no longer be able to access the Amazon Web
%% Services DMS Fleet Advisor; console or Amazon Web Services DMS Fleet
%% Advisor; resources. For more information, see Amazon Web Services DMS
%% Fleet Advisor end of support:
%% https://docs.aws.amazon.com/dms/latest/userguide/dms_fleet.advisor-end-of-support.html.
%%
%% Starts the analysis of up to 20 source databases to recommend target
%% engines for each
%% source database. This is a batch version of StartRecommendations:
%% https://docs.aws.amazon.com/dms/latest/APIReference/API_StartRecommendations.html.
%%
%% The result of analysis of each source database is reported individually in
%% the
%% response. Because the batch request can result in a combination of
%% successful and
%% unsuccessful actions, you should check for batch errors even when the call
%% returns an
%% HTTP status code of `200'.
-spec batch_start_recommendations(aws_client:aws_client(), batch_start_recommendations_request()) ->
    {ok, batch_start_recommendations_response(), tuple()} |
    {error, any()} |
    {error, batch_start_recommendations_errors(), tuple()}.
batch_start_recommendations(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_start_recommendations(Client, Input, []).

-spec batch_start_recommendations(aws_client:aws_client(), batch_start_recommendations_request(), proplists:proplist()) ->
    {ok, batch_start_recommendations_response(), tuple()} |
    {error, any()} |
    {error, batch_start_recommendations_errors(), tuple()}.
batch_start_recommendations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchStartRecommendations">>, Input, Options).

%% @doc Cancels a single premigration assessment run.
%%
%% This operation prevents any individual assessments from running if they
%% haven't started
%% running. It also attempts to cancel any individual assessments that are
%% currently
%% running.
-spec cancel_replication_task_assessment_run(aws_client:aws_client(), cancel_replication_task_assessment_run_message()) ->
    {ok, cancel_replication_task_assessment_run_response(), tuple()} |
    {error, any()} |
    {error, cancel_replication_task_assessment_run_errors(), tuple()}.
cancel_replication_task_assessment_run(Client, Input)
  when is_map(Client), is_map(Input) ->
    cancel_replication_task_assessment_run(Client, Input, []).

-spec cancel_replication_task_assessment_run(aws_client:aws_client(), cancel_replication_task_assessment_run_message(), proplists:proplist()) ->
    {ok, cancel_replication_task_assessment_run_response(), tuple()} |
    {error, any()} |
    {error, cancel_replication_task_assessment_run_errors(), tuple()}.
cancel_replication_task_assessment_run(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CancelReplicationTaskAssessmentRun">>, Input, Options).

%% @doc Creates a data migration using the provided settings.
-spec create_data_migration(aws_client:aws_client(), create_data_migration_message()) ->
    {ok, create_data_migration_response(), tuple()} |
    {error, any()} |
    {error, create_data_migration_errors(), tuple()}.
create_data_migration(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_data_migration(Client, Input, []).

-spec create_data_migration(aws_client:aws_client(), create_data_migration_message(), proplists:proplist()) ->
    {ok, create_data_migration_response(), tuple()} |
    {error, any()} |
    {error, create_data_migration_errors(), tuple()}.
create_data_migration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDataMigration">>, Input, Options).

%% @doc Creates a data provider using the provided settings.
%%
%% A data provider stores a data store
%% type and location information about your database.
-spec create_data_provider(aws_client:aws_client(), create_data_provider_message()) ->
    {ok, create_data_provider_response(), tuple()} |
    {error, any()} |
    {error, create_data_provider_errors(), tuple()}.
create_data_provider(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_data_provider(Client, Input, []).

-spec create_data_provider(aws_client:aws_client(), create_data_provider_message(), proplists:proplist()) ->
    {ok, create_data_provider_response(), tuple()} |
    {error, any()} |
    {error, create_data_provider_errors(), tuple()}.
create_data_provider(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDataProvider">>, Input, Options).

%% @doc Creates an endpoint using the provided settings.
%%
%% For a MySQL source or target endpoint, don't explicitly specify the
%% database using
%% the `DatabaseName' request parameter on the `CreateEndpoint' API
%% call. Specifying `DatabaseName' when you create a MySQL endpoint
%% replicates
%% all the task tables to this single database. For MySQL endpoints, you
%% specify the
%% database only when you specify the schema in the table-mapping rules of
%% the DMS
%% task.
-spec create_endpoint(aws_client:aws_client(), create_endpoint_message()) ->
    {ok, create_endpoint_response(), tuple()} |
    {error, any()} |
    {error, create_endpoint_errors(), tuple()}.
create_endpoint(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_endpoint(Client, Input, []).

-spec create_endpoint(aws_client:aws_client(), create_endpoint_message(), proplists:proplist()) ->
    {ok, create_endpoint_response(), tuple()} |
    {error, any()} |
    {error, create_endpoint_errors(), tuple()}.
create_endpoint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateEndpoint">>, Input, Options).

%% @doc Creates an DMS event notification subscription.
%%
%% You can specify the type of source (`SourceType') you want to be
%% notified of,
%% provide a list of DMS source IDs (`SourceIds') that triggers the
%% events, and
%% provide a list of event categories (`EventCategories') for events you
%% want to be
%% notified of. If you specify both the `SourceType' and `SourceIds',
%% such as `SourceType = replication-instance' and
%% ```
%% SourceIdentifier = my-replinstance''', you will be notified of
%% all the replication instance events for
%% the specified source. If you specify a `SourceType' but don't
%% specify a
%% `SourceIdentifier', you receive notice of the events for that source
%% type for
%% all your DMS sources. If you don't specify either `SourceType' nor
%% `SourceIdentifier', you will be notified of events generated from all
%% DMS
%% sources belonging to your customer account.
%%
%% For more information about DMS events, see Working with Events and
%% Notifications:
%% https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Events.html in the
%% Database Migration Service User Guide.
-spec create_event_subscription(aws_client:aws_client(), create_event_subscription_message()) ->
    {ok, create_event_subscription_response(), tuple()} |
    {error, any()} |
    {error, create_event_subscription_errors(), tuple()}.
create_event_subscription(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_event_subscription(Client, Input, []).

-spec create_event_subscription(aws_client:aws_client(), create_event_subscription_message(), proplists:proplist()) ->
    {ok, create_event_subscription_response(), tuple()} |
    {error, any()} |
    {error, create_event_subscription_errors(), tuple()}.
create_event_subscription(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateEventSubscription">>, Input, Options).

%% @doc
%%
%% End of support notice: On May 20, 2026, Amazon Web Services will end
%% support for Amazon Web Services DMS Fleet Advisor;.
%%
%% After May 20, 2026, you will no longer be able to access the Amazon Web
%% Services DMS Fleet Advisor; console or Amazon Web Services DMS Fleet
%% Advisor; resources. For more information, see Amazon Web Services DMS
%% Fleet Advisor end of support:
%% https://docs.aws.amazon.com/dms/latest/userguide/dms_fleet.advisor-end-of-support.html.
%%
%% Creates a Fleet Advisor collector using the specified parameters.
-spec create_fleet_advisor_collector(aws_client:aws_client(), create_fleet_advisor_collector_request()) ->
    {ok, create_fleet_advisor_collector_response(), tuple()} |
    {error, any()} |
    {error, create_fleet_advisor_collector_errors(), tuple()}.
create_fleet_advisor_collector(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_fleet_advisor_collector(Client, Input, []).

-spec create_fleet_advisor_collector(aws_client:aws_client(), create_fleet_advisor_collector_request(), proplists:proplist()) ->
    {ok, create_fleet_advisor_collector_response(), tuple()} |
    {error, any()} |
    {error, create_fleet_advisor_collector_errors(), tuple()}.
create_fleet_advisor_collector(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateFleetAdvisorCollector">>, Input, Options).

%% @doc Creates the instance profile using the specified parameters.
-spec create_instance_profile(aws_client:aws_client(), create_instance_profile_message()) ->
    {ok, create_instance_profile_response(), tuple()} |
    {error, any()} |
    {error, create_instance_profile_errors(), tuple()}.
create_instance_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_instance_profile(Client, Input, []).

-spec create_instance_profile(aws_client:aws_client(), create_instance_profile_message(), proplists:proplist()) ->
    {ok, create_instance_profile_response(), tuple()} |
    {error, any()} |
    {error, create_instance_profile_errors(), tuple()}.
create_instance_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateInstanceProfile">>, Input, Options).

%% @doc Creates the migration project using the specified parameters.
%%
%% You can run this action only after you create an instance profile and data
%% providers
%% using CreateInstanceProfile:
%% https://docs.aws.amazon.com/dms/latest/APIReference/API_CreateInstanceProfile.html
%% and CreateDataProvider:
%% https://docs.aws.amazon.com/dms/latest/APIReference/API_CreateDataProvider.html.
-spec create_migration_project(aws_client:aws_client(), create_migration_project_message()) ->
    {ok, create_migration_project_response(), tuple()} |
    {error, any()} |
    {error, create_migration_project_errors(), tuple()}.
create_migration_project(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_migration_project(Client, Input, []).

-spec create_migration_project(aws_client:aws_client(), create_migration_project_message(), proplists:proplist()) ->
    {ok, create_migration_project_response(), tuple()} |
    {error, any()} |
    {error, create_migration_project_errors(), tuple()}.
create_migration_project(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateMigrationProject">>, Input, Options).

%% @doc Creates a configuration that you can later provide to configure and
%% start an DMS
%% Serverless replication.
%%
%% You can also provide options to validate the configuration inputs
%% before you start the replication.
-spec create_replication_config(aws_client:aws_client(), create_replication_config_message()) ->
    {ok, create_replication_config_response(), tuple()} |
    {error, any()} |
    {error, create_replication_config_errors(), tuple()}.
create_replication_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_replication_config(Client, Input, []).

-spec create_replication_config(aws_client:aws_client(), create_replication_config_message(), proplists:proplist()) ->
    {ok, create_replication_config_response(), tuple()} |
    {error, any()} |
    {error, create_replication_config_errors(), tuple()}.
create_replication_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateReplicationConfig">>, Input, Options).

%% @doc Creates the replication instance using the specified parameters.
%%
%% DMS requires that your account have certain roles with appropriate
%% permissions before
%% you can create a replication instance. For information on the required
%% roles, see Creating the IAM Roles to Use With the CLI and DMS API:
%% https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Security.html#CHAP_Security.APIRole.
%% For information on
%% the required permissions, see IAM
%% Permissions Needed to Use DMS:
%% https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Security.html#CHAP_Security.IAMPermissions.
%%
%% If you don't specify a version when creating a replication instance,
%% DMS will
%% create the instance using the default engine version. For information
%% about the default
%% engine version, see Release Notes:
%% https://docs.aws.amazon.com/dms/latest/userguide/CHAP_ReleaseNotes.html.
-spec create_replication_instance(aws_client:aws_client(), create_replication_instance_message()) ->
    {ok, create_replication_instance_response(), tuple()} |
    {error, any()} |
    {error, create_replication_instance_errors(), tuple()}.
create_replication_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_replication_instance(Client, Input, []).

-spec create_replication_instance(aws_client:aws_client(), create_replication_instance_message(), proplists:proplist()) ->
    {ok, create_replication_instance_response(), tuple()} |
    {error, any()} |
    {error, create_replication_instance_errors(), tuple()}.
create_replication_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateReplicationInstance">>, Input, Options).

%% @doc Creates a replication subnet group given a list of the subnet IDs in
%% a VPC.
%%
%% The VPC needs to have at least one subnet in at least two availability
%% zones in the
%% Amazon Web Services Region, otherwise the service will throw a
%% `ReplicationSubnetGroupDoesNotCoverEnoughAZs' exception.
%%
%% If a replication subnet group exists in your Amazon Web Services account,
%% the
%% CreateReplicationSubnetGroup action returns the following error message:
%% The Replication
%% Subnet Group already exists. In this case, delete the existing replication
%% subnet group. To
%% do so, use the DeleteReplicationSubnetGroup:
%% https://docs.aws.amazon.com/en_us/dms/latest/APIReference/API_DeleteReplicationSubnetGroup.html
%% action. Optionally, choose Subnet groups in the
%% DMS console, then choose your subnet group. Next, choose Delete from
%% Actions.
-spec create_replication_subnet_group(aws_client:aws_client(), create_replication_subnet_group_message()) ->
    {ok, create_replication_subnet_group_response(), tuple()} |
    {error, any()} |
    {error, create_replication_subnet_group_errors(), tuple()}.
create_replication_subnet_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_replication_subnet_group(Client, Input, []).

-spec create_replication_subnet_group(aws_client:aws_client(), create_replication_subnet_group_message(), proplists:proplist()) ->
    {ok, create_replication_subnet_group_response(), tuple()} |
    {error, any()} |
    {error, create_replication_subnet_group_errors(), tuple()}.
create_replication_subnet_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateReplicationSubnetGroup">>, Input, Options).

%% @doc Creates a replication task using the specified parameters.
-spec create_replication_task(aws_client:aws_client(), create_replication_task_message()) ->
    {ok, create_replication_task_response(), tuple()} |
    {error, any()} |
    {error, create_replication_task_errors(), tuple()}.
create_replication_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_replication_task(Client, Input, []).

-spec create_replication_task(aws_client:aws_client(), create_replication_task_message(), proplists:proplist()) ->
    {ok, create_replication_task_response(), tuple()} |
    {error, any()} |
    {error, create_replication_task_errors(), tuple()}.
create_replication_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateReplicationTask">>, Input, Options).

%% @doc Deletes the specified certificate.
-spec delete_certificate(aws_client:aws_client(), delete_certificate_message()) ->
    {ok, delete_certificate_response(), tuple()} |
    {error, any()} |
    {error, delete_certificate_errors(), tuple()}.
delete_certificate(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_certificate(Client, Input, []).

-spec delete_certificate(aws_client:aws_client(), delete_certificate_message(), proplists:proplist()) ->
    {ok, delete_certificate_response(), tuple()} |
    {error, any()} |
    {error, delete_certificate_errors(), tuple()}.
delete_certificate(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteCertificate">>, Input, Options).

%% @doc Deletes the connection between a replication instance and an
%% endpoint.
-spec delete_connection(aws_client:aws_client(), delete_connection_message()) ->
    {ok, delete_connection_response(), tuple()} |
    {error, any()} |
    {error, delete_connection_errors(), tuple()}.
delete_connection(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_connection(Client, Input, []).

-spec delete_connection(aws_client:aws_client(), delete_connection_message(), proplists:proplist()) ->
    {ok, delete_connection_response(), tuple()} |
    {error, any()} |
    {error, delete_connection_errors(), tuple()}.
delete_connection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteConnection">>, Input, Options).

%% @doc Deletes the specified data migration.
-spec delete_data_migration(aws_client:aws_client(), delete_data_migration_message()) ->
    {ok, delete_data_migration_response(), tuple()} |
    {error, any()} |
    {error, delete_data_migration_errors(), tuple()}.
delete_data_migration(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_data_migration(Client, Input, []).

-spec delete_data_migration(aws_client:aws_client(), delete_data_migration_message(), proplists:proplist()) ->
    {ok, delete_data_migration_response(), tuple()} |
    {error, any()} |
    {error, delete_data_migration_errors(), tuple()}.
delete_data_migration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDataMigration">>, Input, Options).

%% @doc Deletes the specified data provider.
%%
%% All migration projects associated with the data provider must be deleted
%% or modified
%% before you can delete the data provider.
-spec delete_data_provider(aws_client:aws_client(), delete_data_provider_message()) ->
    {ok, delete_data_provider_response(), tuple()} |
    {error, any()} |
    {error, delete_data_provider_errors(), tuple()}.
delete_data_provider(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_data_provider(Client, Input, []).

-spec delete_data_provider(aws_client:aws_client(), delete_data_provider_message(), proplists:proplist()) ->
    {ok, delete_data_provider_response(), tuple()} |
    {error, any()} |
    {error, delete_data_provider_errors(), tuple()}.
delete_data_provider(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDataProvider">>, Input, Options).

%% @doc Deletes the specified endpoint.
%%
%% All tasks associated with the endpoint must be deleted before you can
%% delete the
%% endpoint.
-spec delete_endpoint(aws_client:aws_client(), delete_endpoint_message()) ->
    {ok, delete_endpoint_response(), tuple()} |
    {error, any()} |
    {error, delete_endpoint_errors(), tuple()}.
delete_endpoint(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_endpoint(Client, Input, []).

-spec delete_endpoint(aws_client:aws_client(), delete_endpoint_message(), proplists:proplist()) ->
    {ok, delete_endpoint_response(), tuple()} |
    {error, any()} |
    {error, delete_endpoint_errors(), tuple()}.
delete_endpoint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteEndpoint">>, Input, Options).

%% @doc Deletes an DMS event subscription.
-spec delete_event_subscription(aws_client:aws_client(), delete_event_subscription_message()) ->
    {ok, delete_event_subscription_response(), tuple()} |
    {error, any()} |
    {error, delete_event_subscription_errors(), tuple()}.
delete_event_subscription(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_event_subscription(Client, Input, []).

-spec delete_event_subscription(aws_client:aws_client(), delete_event_subscription_message(), proplists:proplist()) ->
    {ok, delete_event_subscription_response(), tuple()} |
    {error, any()} |
    {error, delete_event_subscription_errors(), tuple()}.
delete_event_subscription(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteEventSubscription">>, Input, Options).

%% @doc
%%
%% End of support notice: On May 20, 2026, Amazon Web Services will end
%% support for Amazon Web Services DMS Fleet Advisor;.
%%
%% After May 20, 2026, you will no longer be able to access the Amazon Web
%% Services DMS Fleet Advisor; console or Amazon Web Services DMS Fleet
%% Advisor; resources. For more information, see Amazon Web Services DMS
%% Fleet Advisor end of support:
%% https://docs.aws.amazon.com/dms/latest/userguide/dms_fleet.advisor-end-of-support.html.
%%
%% Deletes the specified Fleet Advisor collector.
-spec delete_fleet_advisor_collector(aws_client:aws_client(), delete_collector_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_fleet_advisor_collector_errors(), tuple()}.
delete_fleet_advisor_collector(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_fleet_advisor_collector(Client, Input, []).

-spec delete_fleet_advisor_collector(aws_client:aws_client(), delete_collector_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_fleet_advisor_collector_errors(), tuple()}.
delete_fleet_advisor_collector(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteFleetAdvisorCollector">>, Input, Options).

%% @doc
%%
%% End of support notice: On May 20, 2026, Amazon Web Services will end
%% support for Amazon Web Services DMS Fleet Advisor;.
%%
%% After May 20, 2026, you will no longer be able to access the Amazon Web
%% Services DMS Fleet Advisor; console or Amazon Web Services DMS Fleet
%% Advisor; resources. For more information, see Amazon Web Services DMS
%% Fleet Advisor end of support:
%% https://docs.aws.amazon.com/dms/latest/userguide/dms_fleet.advisor-end-of-support.html.
%%
%% Deletes the specified Fleet Advisor collector databases.
-spec delete_fleet_advisor_databases(aws_client:aws_client(), delete_fleet_advisor_databases_request()) ->
    {ok, delete_fleet_advisor_databases_response(), tuple()} |
    {error, any()} |
    {error, delete_fleet_advisor_databases_errors(), tuple()}.
delete_fleet_advisor_databases(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_fleet_advisor_databases(Client, Input, []).

-spec delete_fleet_advisor_databases(aws_client:aws_client(), delete_fleet_advisor_databases_request(), proplists:proplist()) ->
    {ok, delete_fleet_advisor_databases_response(), tuple()} |
    {error, any()} |
    {error, delete_fleet_advisor_databases_errors(), tuple()}.
delete_fleet_advisor_databases(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteFleetAdvisorDatabases">>, Input, Options).

%% @doc Deletes the specified instance profile.
%%
%% All migration projects associated with the instance profile must be
%% deleted or
%% modified before you can delete the instance profile.
-spec delete_instance_profile(aws_client:aws_client(), delete_instance_profile_message()) ->
    {ok, delete_instance_profile_response(), tuple()} |
    {error, any()} |
    {error, delete_instance_profile_errors(), tuple()}.
delete_instance_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_instance_profile(Client, Input, []).

-spec delete_instance_profile(aws_client:aws_client(), delete_instance_profile_message(), proplists:proplist()) ->
    {ok, delete_instance_profile_response(), tuple()} |
    {error, any()} |
    {error, delete_instance_profile_errors(), tuple()}.
delete_instance_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteInstanceProfile">>, Input, Options).

%% @doc Deletes the specified migration project.
%%
%% The migration project must be closed before you can delete it.
-spec delete_migration_project(aws_client:aws_client(), delete_migration_project_message()) ->
    {ok, delete_migration_project_response(), tuple()} |
    {error, any()} |
    {error, delete_migration_project_errors(), tuple()}.
delete_migration_project(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_migration_project(Client, Input, []).

-spec delete_migration_project(aws_client:aws_client(), delete_migration_project_message(), proplists:proplist()) ->
    {ok, delete_migration_project_response(), tuple()} |
    {error, any()} |
    {error, delete_migration_project_errors(), tuple()}.
delete_migration_project(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteMigrationProject">>, Input, Options).

%% @doc Deletes an DMS Serverless replication configuration.
%%
%% This effectively deprovisions any
%% and all replications that use this configuration. You can't delete the
%% configuration for an
%% DMS Serverless replication that is ongoing. You can delete the
%% configuration when the
%% replication is in a non-RUNNING and non-STARTING state.
-spec delete_replication_config(aws_client:aws_client(), delete_replication_config_message()) ->
    {ok, delete_replication_config_response(), tuple()} |
    {error, any()} |
    {error, delete_replication_config_errors(), tuple()}.
delete_replication_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_replication_config(Client, Input, []).

-spec delete_replication_config(aws_client:aws_client(), delete_replication_config_message(), proplists:proplist()) ->
    {ok, delete_replication_config_response(), tuple()} |
    {error, any()} |
    {error, delete_replication_config_errors(), tuple()}.
delete_replication_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteReplicationConfig">>, Input, Options).

%% @doc Deletes the specified replication instance.
%%
%% You must delete any migration tasks that are associated with the
%% replication instance
%% before you can delete it.
-spec delete_replication_instance(aws_client:aws_client(), delete_replication_instance_message()) ->
    {ok, delete_replication_instance_response(), tuple()} |
    {error, any()} |
    {error, delete_replication_instance_errors(), tuple()}.
delete_replication_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_replication_instance(Client, Input, []).

-spec delete_replication_instance(aws_client:aws_client(), delete_replication_instance_message(), proplists:proplist()) ->
    {ok, delete_replication_instance_response(), tuple()} |
    {error, any()} |
    {error, delete_replication_instance_errors(), tuple()}.
delete_replication_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteReplicationInstance">>, Input, Options).

%% @doc Deletes a subnet group.
-spec delete_replication_subnet_group(aws_client:aws_client(), delete_replication_subnet_group_message()) ->
    {ok, delete_replication_subnet_group_response(), tuple()} |
    {error, any()} |
    {error, delete_replication_subnet_group_errors(), tuple()}.
delete_replication_subnet_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_replication_subnet_group(Client, Input, []).

-spec delete_replication_subnet_group(aws_client:aws_client(), delete_replication_subnet_group_message(), proplists:proplist()) ->
    {ok, delete_replication_subnet_group_response(), tuple()} |
    {error, any()} |
    {error, delete_replication_subnet_group_errors(), tuple()}.
delete_replication_subnet_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteReplicationSubnetGroup">>, Input, Options).

%% @doc Deletes the specified replication task.
-spec delete_replication_task(aws_client:aws_client(), delete_replication_task_message()) ->
    {ok, delete_replication_task_response(), tuple()} |
    {error, any()} |
    {error, delete_replication_task_errors(), tuple()}.
delete_replication_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_replication_task(Client, Input, []).

-spec delete_replication_task(aws_client:aws_client(), delete_replication_task_message(), proplists:proplist()) ->
    {ok, delete_replication_task_response(), tuple()} |
    {error, any()} |
    {error, delete_replication_task_errors(), tuple()}.
delete_replication_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteReplicationTask">>, Input, Options).

%% @doc Deletes the record of a single premigration assessment run.
%%
%% This operation removes all metadata that DMS maintains about this
%% assessment run.
%% However, the operation leaves untouched all information about this
%% assessment run that is
%% stored in your Amazon S3 bucket.
-spec delete_replication_task_assessment_run(aws_client:aws_client(), delete_replication_task_assessment_run_message()) ->
    {ok, delete_replication_task_assessment_run_response(), tuple()} |
    {error, any()} |
    {error, delete_replication_task_assessment_run_errors(), tuple()}.
delete_replication_task_assessment_run(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_replication_task_assessment_run(Client, Input, []).

-spec delete_replication_task_assessment_run(aws_client:aws_client(), delete_replication_task_assessment_run_message(), proplists:proplist()) ->
    {ok, delete_replication_task_assessment_run_response(), tuple()} |
    {error, any()} |
    {error, delete_replication_task_assessment_run_errors(), tuple()}.
delete_replication_task_assessment_run(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteReplicationTaskAssessmentRun">>, Input, Options).

%% @doc Lists all of the DMS attributes for a customer account.
%%
%% These attributes include DMS
%% quotas for the account and a unique account identifier in a particular DMS
%% region. DMS
%% quotas include a list of resource quotas supported by the account, such as
%% the number of
%% replication instances allowed. The description for each resource quota,
%% includes the quota
%% name, current usage toward that quota, and the quota's maximum value.
%% DMS uses the unique
%% account identifier to name each artifact used by DMS in the given region.
%%
%% This command does not take any parameters.
-spec describe_account_attributes(aws_client:aws_client(), describe_account_attributes_message()) ->
    {ok, describe_account_attributes_response(), tuple()} |
    {error, any()}.
describe_account_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_account_attributes(Client, Input, []).

-spec describe_account_attributes(aws_client:aws_client(), describe_account_attributes_message(), proplists:proplist()) ->
    {ok, describe_account_attributes_response(), tuple()} |
    {error, any()}.
describe_account_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAccountAttributes">>, Input, Options).

%% @doc Provides a list of individual assessments that you can specify for a
%% new premigration
%% assessment run, given one or more parameters.
%%
%% If you specify an existing migration task, this operation provides the
%% default
%% individual assessments you can specify for that task. Otherwise, the
%% specified parameters
%% model elements of a possible migration task on which to base a
%% premigration assessment
%% run.
%%
%% To use these migration task modeling parameters, you must specify an
%% existing
%% replication instance, a source database engine, a target database engine,
%% and a migration
%% type. This combination of parameters potentially limits the default
%% individual assessments
%% available for an assessment run created for a corresponding migration
%% task.
%%
%% If you specify no parameters, this operation provides a list of all
%% possible individual
%% assessments that you can specify for an assessment run. If you specify any
%% one of the task
%% modeling parameters, you must specify all of them or the operation cannot
%% provide a list of
%% individual assessments. The only parameter that you can specify alone is
%% for an existing
%% migration task. The specified task definition then determines the default
%% list of
%% individual assessments that you can specify in an assessment run for the
%% task.
-spec describe_applicable_individual_assessments(aws_client:aws_client(), describe_applicable_individual_assessments_message()) ->
    {ok, describe_applicable_individual_assessments_response(), tuple()} |
    {error, any()} |
    {error, describe_applicable_individual_assessments_errors(), tuple()}.
describe_applicable_individual_assessments(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_applicable_individual_assessments(Client, Input, []).

-spec describe_applicable_individual_assessments(aws_client:aws_client(), describe_applicable_individual_assessments_message(), proplists:proplist()) ->
    {ok, describe_applicable_individual_assessments_response(), tuple()} |
    {error, any()} |
    {error, describe_applicable_individual_assessments_errors(), tuple()}.
describe_applicable_individual_assessments(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeApplicableIndividualAssessments">>, Input, Options).

%% @doc Provides a description of the certificate.
-spec describe_certificates(aws_client:aws_client(), describe_certificates_message()) ->
    {ok, describe_certificates_response(), tuple()} |
    {error, any()} |
    {error, describe_certificates_errors(), tuple()}.
describe_certificates(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_certificates(Client, Input, []).

-spec describe_certificates(aws_client:aws_client(), describe_certificates_message(), proplists:proplist()) ->
    {ok, describe_certificates_response(), tuple()} |
    {error, any()} |
    {error, describe_certificates_errors(), tuple()}.
describe_certificates(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeCertificates">>, Input, Options).

%% @doc Describes the status of the connections that have been made between
%% the replication
%% instance and an endpoint.
%%
%% Connections are created when you test an endpoint.
-spec describe_connections(aws_client:aws_client(), describe_connections_message()) ->
    {ok, describe_connections_response(), tuple()} |
    {error, any()} |
    {error, describe_connections_errors(), tuple()}.
describe_connections(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_connections(Client, Input, []).

-spec describe_connections(aws_client:aws_client(), describe_connections_message(), proplists:proplist()) ->
    {ok, describe_connections_response(), tuple()} |
    {error, any()} |
    {error, describe_connections_errors(), tuple()}.
describe_connections(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeConnections">>, Input, Options).

%% @doc Returns configuration parameters for a schema conversion project.
-spec describe_conversion_configuration(aws_client:aws_client(), describe_conversion_configuration_message()) ->
    {ok, describe_conversion_configuration_response(), tuple()} |
    {error, any()} |
    {error, describe_conversion_configuration_errors(), tuple()}.
describe_conversion_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_conversion_configuration(Client, Input, []).

-spec describe_conversion_configuration(aws_client:aws_client(), describe_conversion_configuration_message(), proplists:proplist()) ->
    {ok, describe_conversion_configuration_response(), tuple()} |
    {error, any()} |
    {error, describe_conversion_configuration_errors(), tuple()}.
describe_conversion_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeConversionConfiguration">>, Input, Options).

%% @doc Returns information about data migrations.
-spec describe_data_migrations(aws_client:aws_client(), describe_data_migrations_message()) ->
    {ok, describe_data_migrations_response(), tuple()} |
    {error, any()} |
    {error, describe_data_migrations_errors(), tuple()}.
describe_data_migrations(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_data_migrations(Client, Input, []).

-spec describe_data_migrations(aws_client:aws_client(), describe_data_migrations_message(), proplists:proplist()) ->
    {ok, describe_data_migrations_response(), tuple()} |
    {error, any()} |
    {error, describe_data_migrations_errors(), tuple()}.
describe_data_migrations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDataMigrations">>, Input, Options).

%% @doc Returns a paginated list of data providers for your account in the
%% current
%% region.
-spec describe_data_providers(aws_client:aws_client(), describe_data_providers_message()) ->
    {ok, describe_data_providers_response(), tuple()} |
    {error, any()} |
    {error, describe_data_providers_errors(), tuple()}.
describe_data_providers(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_data_providers(Client, Input, []).

-spec describe_data_providers(aws_client:aws_client(), describe_data_providers_message(), proplists:proplist()) ->
    {ok, describe_data_providers_response(), tuple()} |
    {error, any()} |
    {error, describe_data_providers_errors(), tuple()}.
describe_data_providers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDataProviders">>, Input, Options).

%% @doc Returns information about the possible endpoint settings available
%% when you create an
%% endpoint for a specific database engine.
-spec describe_endpoint_settings(aws_client:aws_client(), describe_endpoint_settings_message()) ->
    {ok, describe_endpoint_settings_response(), tuple()} |
    {error, any()}.
describe_endpoint_settings(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_endpoint_settings(Client, Input, []).

-spec describe_endpoint_settings(aws_client:aws_client(), describe_endpoint_settings_message(), proplists:proplist()) ->
    {ok, describe_endpoint_settings_response(), tuple()} |
    {error, any()}.
describe_endpoint_settings(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEndpointSettings">>, Input, Options).

%% @doc Returns information about the type of endpoints available.
-spec describe_endpoint_types(aws_client:aws_client(), describe_endpoint_types_message()) ->
    {ok, describe_endpoint_types_response(), tuple()} |
    {error, any()}.
describe_endpoint_types(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_endpoint_types(Client, Input, []).

-spec describe_endpoint_types(aws_client:aws_client(), describe_endpoint_types_message(), proplists:proplist()) ->
    {ok, describe_endpoint_types_response(), tuple()} |
    {error, any()}.
describe_endpoint_types(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEndpointTypes">>, Input, Options).

%% @doc Returns information about the endpoints for your account in the
%% current region.
-spec describe_endpoints(aws_client:aws_client(), describe_endpoints_message()) ->
    {ok, describe_endpoints_response(), tuple()} |
    {error, any()} |
    {error, describe_endpoints_errors(), tuple()}.
describe_endpoints(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_endpoints(Client, Input, []).

-spec describe_endpoints(aws_client:aws_client(), describe_endpoints_message(), proplists:proplist()) ->
    {ok, describe_endpoints_response(), tuple()} |
    {error, any()} |
    {error, describe_endpoints_errors(), tuple()}.
describe_endpoints(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEndpoints">>, Input, Options).

%% @doc Returns information about the replication instance versions used in
%% the project.
-spec describe_engine_versions(aws_client:aws_client(), describe_engine_versions_message()) ->
    {ok, describe_engine_versions_response(), tuple()} |
    {error, any()}.
describe_engine_versions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_engine_versions(Client, Input, []).

-spec describe_engine_versions(aws_client:aws_client(), describe_engine_versions_message(), proplists:proplist()) ->
    {ok, describe_engine_versions_response(), tuple()} |
    {error, any()}.
describe_engine_versions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEngineVersions">>, Input, Options).

%% @doc Lists categories for all event source types, or, if specified, for a
%% specified source
%% type.
%%
%% You can see a list of the event categories and source types in Working
%% with Events
%% and Notifications:
%% https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Events.html in the
%% Database Migration Service User Guide.
-spec describe_event_categories(aws_client:aws_client(), describe_event_categories_message()) ->
    {ok, describe_event_categories_response(), tuple()} |
    {error, any()}.
describe_event_categories(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_event_categories(Client, Input, []).

-spec describe_event_categories(aws_client:aws_client(), describe_event_categories_message(), proplists:proplist()) ->
    {ok, describe_event_categories_response(), tuple()} |
    {error, any()}.
describe_event_categories(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEventCategories">>, Input, Options).

%% @doc Lists all the event subscriptions for a customer account.
%%
%% The description of a
%% subscription includes `SubscriptionName', `SNSTopicARN',
%% `CustomerID', `SourceType', `SourceID',
%% `CreationTime', and `Status'.
%%
%% If you specify `SubscriptionName', this action lists the description
%% for that
%% subscription.
-spec describe_event_subscriptions(aws_client:aws_client(), describe_event_subscriptions_message()) ->
    {ok, describe_event_subscriptions_response(), tuple()} |
    {error, any()} |
    {error, describe_event_subscriptions_errors(), tuple()}.
describe_event_subscriptions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_event_subscriptions(Client, Input, []).

-spec describe_event_subscriptions(aws_client:aws_client(), describe_event_subscriptions_message(), proplists:proplist()) ->
    {ok, describe_event_subscriptions_response(), tuple()} |
    {error, any()} |
    {error, describe_event_subscriptions_errors(), tuple()}.
describe_event_subscriptions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEventSubscriptions">>, Input, Options).

%% @doc Lists events for a given source identifier and source type.
%%
%% You can also specify a
%% start and end time. For more information on DMS events, see Working with
%% Events and
%% Notifications:
%% https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Events.html in the
%% Database Migration Service User Guide.
-spec describe_events(aws_client:aws_client(), describe_events_message()) ->
    {ok, describe_events_response(), tuple()} |
    {error, any()}.
describe_events(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_events(Client, Input, []).

-spec describe_events(aws_client:aws_client(), describe_events_message(), proplists:proplist()) ->
    {ok, describe_events_response(), tuple()} |
    {error, any()}.
describe_events(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEvents">>, Input, Options).

%% @doc Returns a paginated list of extension pack associations for the
%% specified migration
%% project.
%%
%% An extension pack is an add-on module that emulates functions present in a
%% source
%% database that are required when converting objects to the target database.
-spec describe_extension_pack_associations(aws_client:aws_client(), describe_extension_pack_associations_message()) ->
    {ok, describe_extension_pack_associations_response(), tuple()} |
    {error, any()}.
describe_extension_pack_associations(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_extension_pack_associations(Client, Input, []).

-spec describe_extension_pack_associations(aws_client:aws_client(), describe_extension_pack_associations_message(), proplists:proplist()) ->
    {ok, describe_extension_pack_associations_response(), tuple()} |
    {error, any()}.
describe_extension_pack_associations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeExtensionPackAssociations">>, Input, Options).

%% @doc
%%
%% End of support notice: On May 20, 2026, Amazon Web Services will end
%% support for Amazon Web Services DMS Fleet Advisor;.
%%
%% After May 20, 2026, you will no longer be able to access the Amazon Web
%% Services DMS Fleet Advisor; console or Amazon Web Services DMS Fleet
%% Advisor; resources. For more information, see Amazon Web Services DMS
%% Fleet Advisor end of support:
%% https://docs.aws.amazon.com/dms/latest/userguide/dms_fleet.advisor-end-of-support.html.
%%
%% Returns a list of the Fleet Advisor collectors in your account.
-spec describe_fleet_advisor_collectors(aws_client:aws_client(), describe_fleet_advisor_collectors_request()) ->
    {ok, describe_fleet_advisor_collectors_response(), tuple()} |
    {error, any()} |
    {error, describe_fleet_advisor_collectors_errors(), tuple()}.
describe_fleet_advisor_collectors(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_fleet_advisor_collectors(Client, Input, []).

-spec describe_fleet_advisor_collectors(aws_client:aws_client(), describe_fleet_advisor_collectors_request(), proplists:proplist()) ->
    {ok, describe_fleet_advisor_collectors_response(), tuple()} |
    {error, any()} |
    {error, describe_fleet_advisor_collectors_errors(), tuple()}.
describe_fleet_advisor_collectors(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeFleetAdvisorCollectors">>, Input, Options).

%% @doc
%%
%% End of support notice: On May 20, 2026, Amazon Web Services will end
%% support for Amazon Web Services DMS Fleet Advisor;.
%%
%% After May 20, 2026, you will no longer be able to access the Amazon Web
%% Services DMS Fleet Advisor; console or Amazon Web Services DMS Fleet
%% Advisor; resources. For more information, see Amazon Web Services DMS
%% Fleet Advisor end of support:
%% https://docs.aws.amazon.com/dms/latest/userguide/dms_fleet.advisor-end-of-support.html.
%%
%% Returns a list of Fleet Advisor databases in your account.
-spec describe_fleet_advisor_databases(aws_client:aws_client(), describe_fleet_advisor_databases_request()) ->
    {ok, describe_fleet_advisor_databases_response(), tuple()} |
    {error, any()} |
    {error, describe_fleet_advisor_databases_errors(), tuple()}.
describe_fleet_advisor_databases(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_fleet_advisor_databases(Client, Input, []).

-spec describe_fleet_advisor_databases(aws_client:aws_client(), describe_fleet_advisor_databases_request(), proplists:proplist()) ->
    {ok, describe_fleet_advisor_databases_response(), tuple()} |
    {error, any()} |
    {error, describe_fleet_advisor_databases_errors(), tuple()}.
describe_fleet_advisor_databases(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeFleetAdvisorDatabases">>, Input, Options).

%% @doc
%%
%% End of support notice: On May 20, 2026, Amazon Web Services will end
%% support for Amazon Web Services DMS Fleet Advisor;.
%%
%% After May 20, 2026, you will no longer be able to access the Amazon Web
%% Services DMS Fleet Advisor; console or Amazon Web Services DMS Fleet
%% Advisor; resources. For more information, see Amazon Web Services DMS
%% Fleet Advisor end of support:
%% https://docs.aws.amazon.com/dms/latest/userguide/dms_fleet.advisor-end-of-support.html.
%%
%% Provides descriptions of large-scale assessment (LSA) analyses produced by
%% your Fleet
%% Advisor collectors.
-spec describe_fleet_advisor_lsa_analysis(aws_client:aws_client(), describe_fleet_advisor_lsa_analysis_request()) ->
    {ok, describe_fleet_advisor_lsa_analysis_response(), tuple()} |
    {error, any()} |
    {error, describe_fleet_advisor_lsa_analysis_errors(), tuple()}.
describe_fleet_advisor_lsa_analysis(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_fleet_advisor_lsa_analysis(Client, Input, []).

-spec describe_fleet_advisor_lsa_analysis(aws_client:aws_client(), describe_fleet_advisor_lsa_analysis_request(), proplists:proplist()) ->
    {ok, describe_fleet_advisor_lsa_analysis_response(), tuple()} |
    {error, any()} |
    {error, describe_fleet_advisor_lsa_analysis_errors(), tuple()}.
describe_fleet_advisor_lsa_analysis(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeFleetAdvisorLsaAnalysis">>, Input, Options).

%% @doc
%%
%% End of support notice: On May 20, 2026, Amazon Web Services will end
%% support for Amazon Web Services DMS Fleet Advisor;.
%%
%% After May 20, 2026, you will no longer be able to access the Amazon Web
%% Services DMS Fleet Advisor; console or Amazon Web Services DMS Fleet
%% Advisor; resources. For more information, see Amazon Web Services DMS
%% Fleet Advisor end of support:
%% https://docs.aws.amazon.com/dms/latest/userguide/dms_fleet.advisor-end-of-support.html.
%%
%% Provides descriptions of the schemas discovered by your Fleet Advisor
%% collectors.
-spec describe_fleet_advisor_schema_object_summary(aws_client:aws_client(), describe_fleet_advisor_schema_object_summary_request()) ->
    {ok, describe_fleet_advisor_schema_object_summary_response(), tuple()} |
    {error, any()} |
    {error, describe_fleet_advisor_schema_object_summary_errors(), tuple()}.
describe_fleet_advisor_schema_object_summary(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_fleet_advisor_schema_object_summary(Client, Input, []).

-spec describe_fleet_advisor_schema_object_summary(aws_client:aws_client(), describe_fleet_advisor_schema_object_summary_request(), proplists:proplist()) ->
    {ok, describe_fleet_advisor_schema_object_summary_response(), tuple()} |
    {error, any()} |
    {error, describe_fleet_advisor_schema_object_summary_errors(), tuple()}.
describe_fleet_advisor_schema_object_summary(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeFleetAdvisorSchemaObjectSummary">>, Input, Options).

%% @doc
%%
%% End of support notice: On May 20, 2026, Amazon Web Services will end
%% support for Amazon Web Services DMS Fleet Advisor;.
%%
%% After May 20, 2026, you will no longer be able to access the Amazon Web
%% Services DMS Fleet Advisor; console or Amazon Web Services DMS Fleet
%% Advisor; resources. For more information, see Amazon Web Services DMS
%% Fleet Advisor end of support:
%% https://docs.aws.amazon.com/dms/latest/userguide/dms_fleet.advisor-end-of-support.html.
%%
%% Returns a list of schemas detected by Fleet Advisor Collectors in your
%% account.
-spec describe_fleet_advisor_schemas(aws_client:aws_client(), describe_fleet_advisor_schemas_request()) ->
    {ok, describe_fleet_advisor_schemas_response(), tuple()} |
    {error, any()} |
    {error, describe_fleet_advisor_schemas_errors(), tuple()}.
describe_fleet_advisor_schemas(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_fleet_advisor_schemas(Client, Input, []).

-spec describe_fleet_advisor_schemas(aws_client:aws_client(), describe_fleet_advisor_schemas_request(), proplists:proplist()) ->
    {ok, describe_fleet_advisor_schemas_response(), tuple()} |
    {error, any()} |
    {error, describe_fleet_advisor_schemas_errors(), tuple()}.
describe_fleet_advisor_schemas(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeFleetAdvisorSchemas">>, Input, Options).

%% @doc Returns a paginated list of instance profiles for your account in the
%% current
%% region.
-spec describe_instance_profiles(aws_client:aws_client(), describe_instance_profiles_message()) ->
    {ok, describe_instance_profiles_response(), tuple()} |
    {error, any()} |
    {error, describe_instance_profiles_errors(), tuple()}.
describe_instance_profiles(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_instance_profiles(Client, Input, []).

-spec describe_instance_profiles(aws_client:aws_client(), describe_instance_profiles_message(), proplists:proplist()) ->
    {ok, describe_instance_profiles_response(), tuple()} |
    {error, any()} |
    {error, describe_instance_profiles_errors(), tuple()}.
describe_instance_profiles(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeInstanceProfiles">>, Input, Options).

%% @doc Returns a paginated list of metadata model assessments for your
%% account in the current
%% region.
-spec describe_metadata_model_assessments(aws_client:aws_client(), describe_metadata_model_assessments_message()) ->
    {ok, describe_metadata_model_assessments_response(), tuple()} |
    {error, any()} |
    {error, describe_metadata_model_assessments_errors(), tuple()}.
describe_metadata_model_assessments(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_metadata_model_assessments(Client, Input, []).

-spec describe_metadata_model_assessments(aws_client:aws_client(), describe_metadata_model_assessments_message(), proplists:proplist()) ->
    {ok, describe_metadata_model_assessments_response(), tuple()} |
    {error, any()} |
    {error, describe_metadata_model_assessments_errors(), tuple()}.
describe_metadata_model_assessments(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeMetadataModelAssessments">>, Input, Options).

%% @doc Returns a paginated list of metadata model conversions for a
%% migration project.
-spec describe_metadata_model_conversions(aws_client:aws_client(), describe_metadata_model_conversions_message()) ->
    {ok, describe_metadata_model_conversions_response(), tuple()} |
    {error, any()} |
    {error, describe_metadata_model_conversions_errors(), tuple()}.
describe_metadata_model_conversions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_metadata_model_conversions(Client, Input, []).

-spec describe_metadata_model_conversions(aws_client:aws_client(), describe_metadata_model_conversions_message(), proplists:proplist()) ->
    {ok, describe_metadata_model_conversions_response(), tuple()} |
    {error, any()} |
    {error, describe_metadata_model_conversions_errors(), tuple()}.
describe_metadata_model_conversions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeMetadataModelConversions">>, Input, Options).

%% @doc Returns a paginated list of metadata model exports.
-spec describe_metadata_model_exports_as_script(aws_client:aws_client(), describe_metadata_model_exports_as_script_message()) ->
    {ok, describe_metadata_model_exports_as_script_response(), tuple()} |
    {error, any()} |
    {error, describe_metadata_model_exports_as_script_errors(), tuple()}.
describe_metadata_model_exports_as_script(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_metadata_model_exports_as_script(Client, Input, []).

-spec describe_metadata_model_exports_as_script(aws_client:aws_client(), describe_metadata_model_exports_as_script_message(), proplists:proplist()) ->
    {ok, describe_metadata_model_exports_as_script_response(), tuple()} |
    {error, any()} |
    {error, describe_metadata_model_exports_as_script_errors(), tuple()}.
describe_metadata_model_exports_as_script(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeMetadataModelExportsAsScript">>, Input, Options).

%% @doc Returns a paginated list of metadata model exports.
-spec describe_metadata_model_exports_to_target(aws_client:aws_client(), describe_metadata_model_exports_to_target_message()) ->
    {ok, describe_metadata_model_exports_to_target_response(), tuple()} |
    {error, any()} |
    {error, describe_metadata_model_exports_to_target_errors(), tuple()}.
describe_metadata_model_exports_to_target(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_metadata_model_exports_to_target(Client, Input, []).

-spec describe_metadata_model_exports_to_target(aws_client:aws_client(), describe_metadata_model_exports_to_target_message(), proplists:proplist()) ->
    {ok, describe_metadata_model_exports_to_target_response(), tuple()} |
    {error, any()} |
    {error, describe_metadata_model_exports_to_target_errors(), tuple()}.
describe_metadata_model_exports_to_target(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeMetadataModelExportsToTarget">>, Input, Options).

%% @doc Returns a paginated list of metadata model imports.
-spec describe_metadata_model_imports(aws_client:aws_client(), describe_metadata_model_imports_message()) ->
    {ok, describe_metadata_model_imports_response(), tuple()} |
    {error, any()} |
    {error, describe_metadata_model_imports_errors(), tuple()}.
describe_metadata_model_imports(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_metadata_model_imports(Client, Input, []).

-spec describe_metadata_model_imports(aws_client:aws_client(), describe_metadata_model_imports_message(), proplists:proplist()) ->
    {ok, describe_metadata_model_imports_response(), tuple()} |
    {error, any()} |
    {error, describe_metadata_model_imports_errors(), tuple()}.
describe_metadata_model_imports(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeMetadataModelImports">>, Input, Options).

%% @doc Returns a paginated list of migration projects for your account in
%% the current
%% region.
-spec describe_migration_projects(aws_client:aws_client(), describe_migration_projects_message()) ->
    {ok, describe_migration_projects_response(), tuple()} |
    {error, any()} |
    {error, describe_migration_projects_errors(), tuple()}.
describe_migration_projects(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_migration_projects(Client, Input, []).

-spec describe_migration_projects(aws_client:aws_client(), describe_migration_projects_message(), proplists:proplist()) ->
    {ok, describe_migration_projects_response(), tuple()} |
    {error, any()} |
    {error, describe_migration_projects_errors(), tuple()}.
describe_migration_projects(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeMigrationProjects">>, Input, Options).

%% @doc Returns information about the replication instance types that can be
%% created in the
%% specified region.
-spec describe_orderable_replication_instances(aws_client:aws_client(), describe_orderable_replication_instances_message()) ->
    {ok, describe_orderable_replication_instances_response(), tuple()} |
    {error, any()}.
describe_orderable_replication_instances(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_orderable_replication_instances(Client, Input, []).

-spec describe_orderable_replication_instances(aws_client:aws_client(), describe_orderable_replication_instances_message(), proplists:proplist()) ->
    {ok, describe_orderable_replication_instances_response(), tuple()} |
    {error, any()}.
describe_orderable_replication_instances(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeOrderableReplicationInstances">>, Input, Options).

%% @doc Returns a list of upcoming maintenance events for replication
%% instances in your account
%% in the current Region.
-spec describe_pending_maintenance_actions(aws_client:aws_client(), describe_pending_maintenance_actions_message()) ->
    {ok, describe_pending_maintenance_actions_response(), tuple()} |
    {error, any()} |
    {error, describe_pending_maintenance_actions_errors(), tuple()}.
describe_pending_maintenance_actions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_pending_maintenance_actions(Client, Input, []).

-spec describe_pending_maintenance_actions(aws_client:aws_client(), describe_pending_maintenance_actions_message(), proplists:proplist()) ->
    {ok, describe_pending_maintenance_actions_response(), tuple()} |
    {error, any()} |
    {error, describe_pending_maintenance_actions_errors(), tuple()}.
describe_pending_maintenance_actions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribePendingMaintenanceActions">>, Input, Options).

%% @doc
%%
%% End of support notice: On May 20, 2026, Amazon Web Services will end
%% support for Amazon Web Services DMS Fleet Advisor;.
%%
%% After May 20, 2026, you will no longer be able to access the Amazon Web
%% Services DMS Fleet Advisor; console or Amazon Web Services DMS Fleet
%% Advisor; resources. For more information, see Amazon Web Services DMS
%% Fleet Advisor end of support:
%% https://docs.aws.amazon.com/dms/latest/userguide/dms_fleet.advisor-end-of-support.html.
%%
%% Returns a paginated list of limitations for recommendations of target
%% Amazon Web Services
%% engines.
-spec describe_recommendation_limitations(aws_client:aws_client(), describe_recommendation_limitations_request()) ->
    {ok, describe_recommendation_limitations_response(), tuple()} |
    {error, any()} |
    {error, describe_recommendation_limitations_errors(), tuple()}.
describe_recommendation_limitations(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_recommendation_limitations(Client, Input, []).

-spec describe_recommendation_limitations(aws_client:aws_client(), describe_recommendation_limitations_request(), proplists:proplist()) ->
    {ok, describe_recommendation_limitations_response(), tuple()} |
    {error, any()} |
    {error, describe_recommendation_limitations_errors(), tuple()}.
describe_recommendation_limitations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeRecommendationLimitations">>, Input, Options).

%% @doc
%%
%% End of support notice: On May 20, 2026, Amazon Web Services will end
%% support for Amazon Web Services DMS Fleet Advisor;.
%%
%% After May 20, 2026, you will no longer be able to access the Amazon Web
%% Services DMS Fleet Advisor; console or Amazon Web Services DMS Fleet
%% Advisor; resources. For more information, see Amazon Web Services DMS
%% Fleet Advisor end of support:
%% https://docs.aws.amazon.com/dms/latest/userguide/dms_fleet.advisor-end-of-support.html.
%%
%% Returns a paginated list of target engine recommendations for your source
%% databases.
-spec describe_recommendations(aws_client:aws_client(), describe_recommendations_request()) ->
    {ok, describe_recommendations_response(), tuple()} |
    {error, any()} |
    {error, describe_recommendations_errors(), tuple()}.
describe_recommendations(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_recommendations(Client, Input, []).

-spec describe_recommendations(aws_client:aws_client(), describe_recommendations_request(), proplists:proplist()) ->
    {ok, describe_recommendations_response(), tuple()} |
    {error, any()} |
    {error, describe_recommendations_errors(), tuple()}.
describe_recommendations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeRecommendations">>, Input, Options).

%% @doc Returns the status of the RefreshSchemas operation.
-spec describe_refresh_schemas_status(aws_client:aws_client(), describe_refresh_schemas_status_message()) ->
    {ok, describe_refresh_schemas_status_response(), tuple()} |
    {error, any()} |
    {error, describe_refresh_schemas_status_errors(), tuple()}.
describe_refresh_schemas_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_refresh_schemas_status(Client, Input, []).

-spec describe_refresh_schemas_status(aws_client:aws_client(), describe_refresh_schemas_status_message(), proplists:proplist()) ->
    {ok, describe_refresh_schemas_status_response(), tuple()} |
    {error, any()} |
    {error, describe_refresh_schemas_status_errors(), tuple()}.
describe_refresh_schemas_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeRefreshSchemasStatus">>, Input, Options).

%% @doc Returns one or more existing DMS Serverless replication
%% configurations as a list of
%% structures.
-spec describe_replication_configs(aws_client:aws_client(), describe_replication_configs_message()) ->
    {ok, describe_replication_configs_response(), tuple()} |
    {error, any()} |
    {error, describe_replication_configs_errors(), tuple()}.
describe_replication_configs(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_replication_configs(Client, Input, []).

-spec describe_replication_configs(aws_client:aws_client(), describe_replication_configs_message(), proplists:proplist()) ->
    {ok, describe_replication_configs_response(), tuple()} |
    {error, any()} |
    {error, describe_replication_configs_errors(), tuple()}.
describe_replication_configs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeReplicationConfigs">>, Input, Options).

%% @doc Returns information about the task logs for the specified task.
-spec describe_replication_instance_task_logs(aws_client:aws_client(), describe_replication_instance_task_logs_message()) ->
    {ok, describe_replication_instance_task_logs_response(), tuple()} |
    {error, any()} |
    {error, describe_replication_instance_task_logs_errors(), tuple()}.
describe_replication_instance_task_logs(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_replication_instance_task_logs(Client, Input, []).

-spec describe_replication_instance_task_logs(aws_client:aws_client(), describe_replication_instance_task_logs_message(), proplists:proplist()) ->
    {ok, describe_replication_instance_task_logs_response(), tuple()} |
    {error, any()} |
    {error, describe_replication_instance_task_logs_errors(), tuple()}.
describe_replication_instance_task_logs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeReplicationInstanceTaskLogs">>, Input, Options).

%% @doc Returns information about replication instances for your account in
%% the current
%% region.
-spec describe_replication_instances(aws_client:aws_client(), describe_replication_instances_message()) ->
    {ok, describe_replication_instances_response(), tuple()} |
    {error, any()} |
    {error, describe_replication_instances_errors(), tuple()}.
describe_replication_instances(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_replication_instances(Client, Input, []).

-spec describe_replication_instances(aws_client:aws_client(), describe_replication_instances_message(), proplists:proplist()) ->
    {ok, describe_replication_instances_response(), tuple()} |
    {error, any()} |
    {error, describe_replication_instances_errors(), tuple()}.
describe_replication_instances(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeReplicationInstances">>, Input, Options).

%% @doc Returns information about the replication subnet groups.
-spec describe_replication_subnet_groups(aws_client:aws_client(), describe_replication_subnet_groups_message()) ->
    {ok, describe_replication_subnet_groups_response(), tuple()} |
    {error, any()} |
    {error, describe_replication_subnet_groups_errors(), tuple()}.
describe_replication_subnet_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_replication_subnet_groups(Client, Input, []).

-spec describe_replication_subnet_groups(aws_client:aws_client(), describe_replication_subnet_groups_message(), proplists:proplist()) ->
    {ok, describe_replication_subnet_groups_response(), tuple()} |
    {error, any()} |
    {error, describe_replication_subnet_groups_errors(), tuple()}.
describe_replication_subnet_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeReplicationSubnetGroups">>, Input, Options).

%% @doc Returns table and schema statistics for one or more provisioned
%% replications that use a
%% given DMS Serverless replication configuration.
-spec describe_replication_table_statistics(aws_client:aws_client(), describe_replication_table_statistics_message()) ->
    {ok, describe_replication_table_statistics_response(), tuple()} |
    {error, any()} |
    {error, describe_replication_table_statistics_errors(), tuple()}.
describe_replication_table_statistics(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_replication_table_statistics(Client, Input, []).

-spec describe_replication_table_statistics(aws_client:aws_client(), describe_replication_table_statistics_message(), proplists:proplist()) ->
    {ok, describe_replication_table_statistics_response(), tuple()} |
    {error, any()} |
    {error, describe_replication_table_statistics_errors(), tuple()}.
describe_replication_table_statistics(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeReplicationTableStatistics">>, Input, Options).

%% @doc Returns the task assessment results from the Amazon S3 bucket that
%% DMS creates in your
%% Amazon Web Services account.
%%
%% This action always returns the latest results.
%%
%% For more information about DMS task assessments, see Creating a task
%% assessment
%% report:
%% https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.AssessmentReport.html
%% in the Database Migration Service User Guide.
-spec describe_replication_task_assessment_results(aws_client:aws_client(), describe_replication_task_assessment_results_message()) ->
    {ok, describe_replication_task_assessment_results_response(), tuple()} |
    {error, any()} |
    {error, describe_replication_task_assessment_results_errors(), tuple()}.
describe_replication_task_assessment_results(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_replication_task_assessment_results(Client, Input, []).

-spec describe_replication_task_assessment_results(aws_client:aws_client(), describe_replication_task_assessment_results_message(), proplists:proplist()) ->
    {ok, describe_replication_task_assessment_results_response(), tuple()} |
    {error, any()} |
    {error, describe_replication_task_assessment_results_errors(), tuple()}.
describe_replication_task_assessment_results(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeReplicationTaskAssessmentResults">>, Input, Options).

%% @doc Returns a paginated list of premigration assessment runs based on
%% filter
%% settings.
%%
%% These filter settings can specify a combination of premigration assessment
%% runs,
%% migration tasks, replication instances, and assessment run status values.
%%
%% This operation doesn't return information about individual
%% assessments. For this
%% information, see the `DescribeReplicationTaskIndividualAssessments'
%% operation.
-spec describe_replication_task_assessment_runs(aws_client:aws_client(), describe_replication_task_assessment_runs_message()) ->
    {ok, describe_replication_task_assessment_runs_response(), tuple()} |
    {error, any()} |
    {error, describe_replication_task_assessment_runs_errors(), tuple()}.
describe_replication_task_assessment_runs(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_replication_task_assessment_runs(Client, Input, []).

-spec describe_replication_task_assessment_runs(aws_client:aws_client(), describe_replication_task_assessment_runs_message(), proplists:proplist()) ->
    {ok, describe_replication_task_assessment_runs_response(), tuple()} |
    {error, any()} |
    {error, describe_replication_task_assessment_runs_errors(), tuple()}.
describe_replication_task_assessment_runs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeReplicationTaskAssessmentRuns">>, Input, Options).

%% @doc Returns a paginated list of individual assessments based on filter
%% settings.
%%
%% These filter settings can specify a combination of premigration assessment
%% runs,
%% migration tasks, and assessment status values.
-spec describe_replication_task_individual_assessments(aws_client:aws_client(), describe_replication_task_individual_assessments_message()) ->
    {ok, describe_replication_task_individual_assessments_response(), tuple()} |
    {error, any()} |
    {error, describe_replication_task_individual_assessments_errors(), tuple()}.
describe_replication_task_individual_assessments(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_replication_task_individual_assessments(Client, Input, []).

-spec describe_replication_task_individual_assessments(aws_client:aws_client(), describe_replication_task_individual_assessments_message(), proplists:proplist()) ->
    {ok, describe_replication_task_individual_assessments_response(), tuple()} |
    {error, any()} |
    {error, describe_replication_task_individual_assessments_errors(), tuple()}.
describe_replication_task_individual_assessments(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeReplicationTaskIndividualAssessments">>, Input, Options).

%% @doc Returns information about replication tasks for your account in the
%% current
%% region.
-spec describe_replication_tasks(aws_client:aws_client(), describe_replication_tasks_message()) ->
    {ok, describe_replication_tasks_response(), tuple()} |
    {error, any()} |
    {error, describe_replication_tasks_errors(), tuple()}.
describe_replication_tasks(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_replication_tasks(Client, Input, []).

-spec describe_replication_tasks(aws_client:aws_client(), describe_replication_tasks_message(), proplists:proplist()) ->
    {ok, describe_replication_tasks_response(), tuple()} |
    {error, any()} |
    {error, describe_replication_tasks_errors(), tuple()}.
describe_replication_tasks(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeReplicationTasks">>, Input, Options).

%% @doc Provides details on replication progress by returning status
%% information for one or more
%% provisioned DMS Serverless replications.
-spec describe_replications(aws_client:aws_client(), describe_replications_message()) ->
    {ok, describe_replications_response(), tuple()} |
    {error, any()} |
    {error, describe_replications_errors(), tuple()}.
describe_replications(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_replications(Client, Input, []).

-spec describe_replications(aws_client:aws_client(), describe_replications_message(), proplists:proplist()) ->
    {ok, describe_replications_response(), tuple()} |
    {error, any()} |
    {error, describe_replications_errors(), tuple()}.
describe_replications(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeReplications">>, Input, Options).

%% @doc Returns information about the schema for the specified endpoint.
-spec describe_schemas(aws_client:aws_client(), describe_schemas_message()) ->
    {ok, describe_schemas_response(), tuple()} |
    {error, any()} |
    {error, describe_schemas_errors(), tuple()}.
describe_schemas(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_schemas(Client, Input, []).

-spec describe_schemas(aws_client:aws_client(), describe_schemas_message(), proplists:proplist()) ->
    {ok, describe_schemas_response(), tuple()} |
    {error, any()} |
    {error, describe_schemas_errors(), tuple()}.
describe_schemas(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeSchemas">>, Input, Options).

%% @doc Returns table statistics on the database migration task, including
%% table name, rows
%% inserted, rows updated, and rows deleted.
%%
%% Note that the &quot;last updated&quot; column the DMS console only
%% indicates the time that DMS
%% last updated the table statistics record for a table. It does not indicate
%% the time of the
%% last update to the table.
-spec describe_table_statistics(aws_client:aws_client(), describe_table_statistics_message()) ->
    {ok, describe_table_statistics_response(), tuple()} |
    {error, any()} |
    {error, describe_table_statistics_errors(), tuple()}.
describe_table_statistics(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_table_statistics(Client, Input, []).

-spec describe_table_statistics(aws_client:aws_client(), describe_table_statistics_message(), proplists:proplist()) ->
    {ok, describe_table_statistics_response(), tuple()} |
    {error, any()} |
    {error, describe_table_statistics_errors(), tuple()}.
describe_table_statistics(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTableStatistics">>, Input, Options).

%% @doc Saves a copy of a database migration assessment report to your Amazon
%% S3 bucket.
%%
%% DMS can
%% save your assessment report as a comma-separated value (CSV) or a PDF
%% file.
-spec export_metadata_model_assessment(aws_client:aws_client(), export_metadata_model_assessment_message()) ->
    {ok, export_metadata_model_assessment_response(), tuple()} |
    {error, any()} |
    {error, export_metadata_model_assessment_errors(), tuple()}.
export_metadata_model_assessment(Client, Input)
  when is_map(Client), is_map(Input) ->
    export_metadata_model_assessment(Client, Input, []).

-spec export_metadata_model_assessment(aws_client:aws_client(), export_metadata_model_assessment_message(), proplists:proplist()) ->
    {ok, export_metadata_model_assessment_response(), tuple()} |
    {error, any()} |
    {error, export_metadata_model_assessment_errors(), tuple()}.
export_metadata_model_assessment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ExportMetadataModelAssessment">>, Input, Options).

%% @doc Uploads the specified certificate.
-spec import_certificate(aws_client:aws_client(), import_certificate_message()) ->
    {ok, import_certificate_response(), tuple()} |
    {error, any()} |
    {error, import_certificate_errors(), tuple()}.
import_certificate(Client, Input)
  when is_map(Client), is_map(Input) ->
    import_certificate(Client, Input, []).

-spec import_certificate(aws_client:aws_client(), import_certificate_message(), proplists:proplist()) ->
    {ok, import_certificate_response(), tuple()} |
    {error, any()} |
    {error, import_certificate_errors(), tuple()}.
import_certificate(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ImportCertificate">>, Input, Options).

%% @doc Lists all metadata tags attached to an DMS resource, including
%% replication instance,
%% endpoint, subnet group, and migration task.
%%
%% For more information, see
%% `Tag'
%% : https://docs.aws.amazon.com/dms/latest/APIReference/API_Tag.html
%% data type description.
-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_message()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).

-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_message(), proplists:proplist()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Modifies the specified schema conversion configuration using the
%% provided parameters.
-spec modify_conversion_configuration(aws_client:aws_client(), modify_conversion_configuration_message()) ->
    {ok, modify_conversion_configuration_response(), tuple()} |
    {error, any()} |
    {error, modify_conversion_configuration_errors(), tuple()}.
modify_conversion_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_conversion_configuration(Client, Input, []).

-spec modify_conversion_configuration(aws_client:aws_client(), modify_conversion_configuration_message(), proplists:proplist()) ->
    {ok, modify_conversion_configuration_response(), tuple()} |
    {error, any()} |
    {error, modify_conversion_configuration_errors(), tuple()}.
modify_conversion_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyConversionConfiguration">>, Input, Options).

%% @doc Modifies an existing DMS data migration.
-spec modify_data_migration(aws_client:aws_client(), modify_data_migration_message()) ->
    {ok, modify_data_migration_response(), tuple()} |
    {error, any()} |
    {error, modify_data_migration_errors(), tuple()}.
modify_data_migration(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_data_migration(Client, Input, []).

-spec modify_data_migration(aws_client:aws_client(), modify_data_migration_message(), proplists:proplist()) ->
    {ok, modify_data_migration_response(), tuple()} |
    {error, any()} |
    {error, modify_data_migration_errors(), tuple()}.
modify_data_migration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyDataMigration">>, Input, Options).

%% @doc Modifies the specified data provider using the provided settings.
%%
%% You must remove the data provider from all migration projects before you
%% can modify
%% it.
-spec modify_data_provider(aws_client:aws_client(), modify_data_provider_message()) ->
    {ok, modify_data_provider_response(), tuple()} |
    {error, any()} |
    {error, modify_data_provider_errors(), tuple()}.
modify_data_provider(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_data_provider(Client, Input, []).

-spec modify_data_provider(aws_client:aws_client(), modify_data_provider_message(), proplists:proplist()) ->
    {ok, modify_data_provider_response(), tuple()} |
    {error, any()} |
    {error, modify_data_provider_errors(), tuple()}.
modify_data_provider(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyDataProvider">>, Input, Options).

%% @doc Modifies the specified endpoint.
%%
%% For a MySQL source or target endpoint, don't explicitly specify the
%% database using
%% the `DatabaseName' request parameter on the `ModifyEndpoint' API
%% call. Specifying `DatabaseName' when you modify a MySQL endpoint
%% replicates
%% all the task tables to this single database. For MySQL endpoints, you
%% specify the
%% database only when you specify the schema in the table-mapping rules of
%% the DMS
%% task.
-spec modify_endpoint(aws_client:aws_client(), modify_endpoint_message()) ->
    {ok, modify_endpoint_response(), tuple()} |
    {error, any()} |
    {error, modify_endpoint_errors(), tuple()}.
modify_endpoint(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_endpoint(Client, Input, []).

-spec modify_endpoint(aws_client:aws_client(), modify_endpoint_message(), proplists:proplist()) ->
    {ok, modify_endpoint_response(), tuple()} |
    {error, any()} |
    {error, modify_endpoint_errors(), tuple()}.
modify_endpoint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyEndpoint">>, Input, Options).

%% @doc Modifies an existing DMS event notification subscription.
-spec modify_event_subscription(aws_client:aws_client(), modify_event_subscription_message()) ->
    {ok, modify_event_subscription_response(), tuple()} |
    {error, any()} |
    {error, modify_event_subscription_errors(), tuple()}.
modify_event_subscription(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_event_subscription(Client, Input, []).

-spec modify_event_subscription(aws_client:aws_client(), modify_event_subscription_message(), proplists:proplist()) ->
    {ok, modify_event_subscription_response(), tuple()} |
    {error, any()} |
    {error, modify_event_subscription_errors(), tuple()}.
modify_event_subscription(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyEventSubscription">>, Input, Options).

%% @doc Modifies the specified instance profile using the provided
%% parameters.
%%
%% All migration projects associated with the instance profile must be
%% deleted or
%% modified before you can modify the instance profile.
-spec modify_instance_profile(aws_client:aws_client(), modify_instance_profile_message()) ->
    {ok, modify_instance_profile_response(), tuple()} |
    {error, any()} |
    {error, modify_instance_profile_errors(), tuple()}.
modify_instance_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_instance_profile(Client, Input, []).

-spec modify_instance_profile(aws_client:aws_client(), modify_instance_profile_message(), proplists:proplist()) ->
    {ok, modify_instance_profile_response(), tuple()} |
    {error, any()} |
    {error, modify_instance_profile_errors(), tuple()}.
modify_instance_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyInstanceProfile">>, Input, Options).

%% @doc Modifies the specified migration project using the provided
%% parameters.
%%
%% The migration project must be closed before you can modify it.
-spec modify_migration_project(aws_client:aws_client(), modify_migration_project_message()) ->
    {ok, modify_migration_project_response(), tuple()} |
    {error, any()} |
    {error, modify_migration_project_errors(), tuple()}.
modify_migration_project(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_migration_project(Client, Input, []).

-spec modify_migration_project(aws_client:aws_client(), modify_migration_project_message(), proplists:proplist()) ->
    {ok, modify_migration_project_response(), tuple()} |
    {error, any()} |
    {error, modify_migration_project_errors(), tuple()}.
modify_migration_project(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyMigrationProject">>, Input, Options).

%% @doc Modifies an existing DMS Serverless replication configuration that
%% you can use to
%% start a replication.
%%
%% This command includes input validation and logic to check the state of
%% any replication that uses this configuration. You can only modify a
%% replication
%% configuration before any replication that uses it has started. As soon as
%% you have
%% initially started a replication with a given configuiration, you can't
%% modify that
%% configuration, even if you stop it.
%%
%% Other run statuses that allow you to run this command include FAILED and
%% CREATED. A
%% provisioning state that allows you to run this command is
%% FAILED_PROVISION.
-spec modify_replication_config(aws_client:aws_client(), modify_replication_config_message()) ->
    {ok, modify_replication_config_response(), tuple()} |
    {error, any()} |
    {error, modify_replication_config_errors(), tuple()}.
modify_replication_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_replication_config(Client, Input, []).

-spec modify_replication_config(aws_client:aws_client(), modify_replication_config_message(), proplists:proplist()) ->
    {ok, modify_replication_config_response(), tuple()} |
    {error, any()} |
    {error, modify_replication_config_errors(), tuple()}.
modify_replication_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyReplicationConfig">>, Input, Options).

%% @doc Modifies the replication instance to apply new settings.
%%
%% You can change one or more
%% parameters by specifying these parameters and the new values in the
%% request.
%%
%% Some settings are applied during the maintenance window.
-spec modify_replication_instance(aws_client:aws_client(), modify_replication_instance_message()) ->
    {ok, modify_replication_instance_response(), tuple()} |
    {error, any()} |
    {error, modify_replication_instance_errors(), tuple()}.
modify_replication_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_replication_instance(Client, Input, []).

-spec modify_replication_instance(aws_client:aws_client(), modify_replication_instance_message(), proplists:proplist()) ->
    {ok, modify_replication_instance_response(), tuple()} |
    {error, any()} |
    {error, modify_replication_instance_errors(), tuple()}.
modify_replication_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyReplicationInstance">>, Input, Options).

%% @doc Modifies the settings for the specified replication subnet group.
-spec modify_replication_subnet_group(aws_client:aws_client(), modify_replication_subnet_group_message()) ->
    {ok, modify_replication_subnet_group_response(), tuple()} |
    {error, any()} |
    {error, modify_replication_subnet_group_errors(), tuple()}.
modify_replication_subnet_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_replication_subnet_group(Client, Input, []).

-spec modify_replication_subnet_group(aws_client:aws_client(), modify_replication_subnet_group_message(), proplists:proplist()) ->
    {ok, modify_replication_subnet_group_response(), tuple()} |
    {error, any()} |
    {error, modify_replication_subnet_group_errors(), tuple()}.
modify_replication_subnet_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyReplicationSubnetGroup">>, Input, Options).

%% @doc Modifies the specified replication task.
%%
%% You can't modify the task endpoints. The task must be stopped before
%% you can modify it.
%%
%% For more information about DMS tasks, see Working with Migration Tasks:
%% https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.html in the
%% Database Migration Service User Guide.
-spec modify_replication_task(aws_client:aws_client(), modify_replication_task_message()) ->
    {ok, modify_replication_task_response(), tuple()} |
    {error, any()} |
    {error, modify_replication_task_errors(), tuple()}.
modify_replication_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_replication_task(Client, Input, []).

-spec modify_replication_task(aws_client:aws_client(), modify_replication_task_message(), proplists:proplist()) ->
    {ok, modify_replication_task_response(), tuple()} |
    {error, any()} |
    {error, modify_replication_task_errors(), tuple()}.
modify_replication_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyReplicationTask">>, Input, Options).

%% @doc Moves a replication task from its current replication instance to a
%% different target
%% replication instance using the specified parameters.
%%
%% The target replication instance must
%% be created with the same or later DMS version as the current replication
%% instance.
-spec move_replication_task(aws_client:aws_client(), move_replication_task_message()) ->
    {ok, move_replication_task_response(), tuple()} |
    {error, any()} |
    {error, move_replication_task_errors(), tuple()}.
move_replication_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    move_replication_task(Client, Input, []).

-spec move_replication_task(aws_client:aws_client(), move_replication_task_message(), proplists:proplist()) ->
    {ok, move_replication_task_response(), tuple()} |
    {error, any()} |
    {error, move_replication_task_errors(), tuple()}.
move_replication_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"MoveReplicationTask">>, Input, Options).

%% @doc Reboots a replication instance.
%%
%% Rebooting results in a momentary outage, until the
%% replication instance becomes available again.
-spec reboot_replication_instance(aws_client:aws_client(), reboot_replication_instance_message()) ->
    {ok, reboot_replication_instance_response(), tuple()} |
    {error, any()} |
    {error, reboot_replication_instance_errors(), tuple()}.
reboot_replication_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    reboot_replication_instance(Client, Input, []).

-spec reboot_replication_instance(aws_client:aws_client(), reboot_replication_instance_message(), proplists:proplist()) ->
    {ok, reboot_replication_instance_response(), tuple()} |
    {error, any()} |
    {error, reboot_replication_instance_errors(), tuple()}.
reboot_replication_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RebootReplicationInstance">>, Input, Options).

%% @doc Populates the schema for the specified endpoint.
%%
%% This is an asynchronous operation and
%% can take several minutes. You can check the status of this operation by
%% calling the
%% DescribeRefreshSchemasStatus operation.
-spec refresh_schemas(aws_client:aws_client(), refresh_schemas_message()) ->
    {ok, refresh_schemas_response(), tuple()} |
    {error, any()} |
    {error, refresh_schemas_errors(), tuple()}.
refresh_schemas(Client, Input)
  when is_map(Client), is_map(Input) ->
    refresh_schemas(Client, Input, []).

-spec refresh_schemas(aws_client:aws_client(), refresh_schemas_message(), proplists:proplist()) ->
    {ok, refresh_schemas_response(), tuple()} |
    {error, any()} |
    {error, refresh_schemas_errors(), tuple()}.
refresh_schemas(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RefreshSchemas">>, Input, Options).

%% @doc Reloads the target database table with the source data for a given
%% DMS Serverless
%% replication configuration.
%%
%% You can only use this operation with a task in the RUNNING state,
%% otherwise the service
%% will throw an `InvalidResourceStateFault' exception.
-spec reload_replication_tables(aws_client:aws_client(), reload_replication_tables_message()) ->
    {ok, reload_replication_tables_response(), tuple()} |
    {error, any()} |
    {error, reload_replication_tables_errors(), tuple()}.
reload_replication_tables(Client, Input)
  when is_map(Client), is_map(Input) ->
    reload_replication_tables(Client, Input, []).

-spec reload_replication_tables(aws_client:aws_client(), reload_replication_tables_message(), proplists:proplist()) ->
    {ok, reload_replication_tables_response(), tuple()} |
    {error, any()} |
    {error, reload_replication_tables_errors(), tuple()}.
reload_replication_tables(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ReloadReplicationTables">>, Input, Options).

%% @doc Reloads the target database table with the source data.
%%
%% You can only use this operation with a task in the `RUNNING' state,
%% otherwise
%% the service will throw an `InvalidResourceStateFault' exception.
-spec reload_tables(aws_client:aws_client(), reload_tables_message()) ->
    {ok, reload_tables_response(), tuple()} |
    {error, any()} |
    {error, reload_tables_errors(), tuple()}.
reload_tables(Client, Input)
  when is_map(Client), is_map(Input) ->
    reload_tables(Client, Input, []).

-spec reload_tables(aws_client:aws_client(), reload_tables_message(), proplists:proplist()) ->
    {ok, reload_tables_response(), tuple()} |
    {error, any()} |
    {error, reload_tables_errors(), tuple()}.
reload_tables(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ReloadTables">>, Input, Options).

%% @doc Removes metadata tags from an DMS resource, including replication
%% instance, endpoint,
%% subnet group, and migration task.
%%
%% For more information, see
%% `Tag'
%% : https://docs.aws.amazon.com/dms/latest/APIReference/API_Tag.html data
%% type
%% description.
-spec remove_tags_from_resource(aws_client:aws_client(), remove_tags_from_resource_message()) ->
    {ok, remove_tags_from_resource_response(), tuple()} |
    {error, any()} |
    {error, remove_tags_from_resource_errors(), tuple()}.
remove_tags_from_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    remove_tags_from_resource(Client, Input, []).

-spec remove_tags_from_resource(aws_client:aws_client(), remove_tags_from_resource_message(), proplists:proplist()) ->
    {ok, remove_tags_from_resource_response(), tuple()} |
    {error, any()} |
    {error, remove_tags_from_resource_errors(), tuple()}.
remove_tags_from_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RemoveTagsFromResource">>, Input, Options).

%% @doc
%%
%% End of support notice: On May 20, 2026, Amazon Web Services will end
%% support for Amazon Web Services DMS Fleet Advisor;.
%%
%% After May 20, 2026, you will no longer be able to access the Amazon Web
%% Services DMS Fleet Advisor; console or Amazon Web Services DMS Fleet
%% Advisor; resources. For more information, see Amazon Web Services DMS
%% Fleet Advisor end of support:
%% https://docs.aws.amazon.com/dms/latest/userguide/dms_fleet.advisor-end-of-support.html.
%%
%% Runs large-scale assessment (LSA) analysis on every Fleet Advisor
%% collector in your account.
-spec run_fleet_advisor_lsa_analysis(aws_client:aws_client(), #{}) ->
    {ok, run_fleet_advisor_lsa_analysis_response(), tuple()} |
    {error, any()} |
    {error, run_fleet_advisor_lsa_analysis_errors(), tuple()}.
run_fleet_advisor_lsa_analysis(Client, Input)
  when is_map(Client), is_map(Input) ->
    run_fleet_advisor_lsa_analysis(Client, Input, []).

-spec run_fleet_advisor_lsa_analysis(aws_client:aws_client(), #{}, proplists:proplist()) ->
    {ok, run_fleet_advisor_lsa_analysis_response(), tuple()} |
    {error, any()} |
    {error, run_fleet_advisor_lsa_analysis_errors(), tuple()}.
run_fleet_advisor_lsa_analysis(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RunFleetAdvisorLsaAnalysis">>, Input, Options).

%% @doc Starts the specified data migration.
-spec start_data_migration(aws_client:aws_client(), start_data_migration_message()) ->
    {ok, start_data_migration_response(), tuple()} |
    {error, any()} |
    {error, start_data_migration_errors(), tuple()}.
start_data_migration(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_data_migration(Client, Input, []).

-spec start_data_migration(aws_client:aws_client(), start_data_migration_message(), proplists:proplist()) ->
    {ok, start_data_migration_response(), tuple()} |
    {error, any()} |
    {error, start_data_migration_errors(), tuple()}.
start_data_migration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartDataMigration">>, Input, Options).

%% @doc Applies the extension pack to your target database.
%%
%% An extension pack is an add-on
%% module that emulates functions present in a source database that are
%% required when
%% converting objects to the target database.
-spec start_extension_pack_association(aws_client:aws_client(), start_extension_pack_association_message()) ->
    {ok, start_extension_pack_association_response(), tuple()} |
    {error, any()} |
    {error, start_extension_pack_association_errors(), tuple()}.
start_extension_pack_association(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_extension_pack_association(Client, Input, []).

-spec start_extension_pack_association(aws_client:aws_client(), start_extension_pack_association_message(), proplists:proplist()) ->
    {ok, start_extension_pack_association_response(), tuple()} |
    {error, any()} |
    {error, start_extension_pack_association_errors(), tuple()}.
start_extension_pack_association(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartExtensionPackAssociation">>, Input, Options).

%% @doc Creates a database migration assessment report by assessing the
%% migration complexity for
%% your source database.
%%
%% A database migration assessment report summarizes all of the schema
%% conversion tasks. It also details the action items for database objects
%% that can't be
%% converted to the database engine of your target database instance.
-spec start_metadata_model_assessment(aws_client:aws_client(), start_metadata_model_assessment_message()) ->
    {ok, start_metadata_model_assessment_response(), tuple()} |
    {error, any()} |
    {error, start_metadata_model_assessment_errors(), tuple()}.
start_metadata_model_assessment(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_metadata_model_assessment(Client, Input, []).

-spec start_metadata_model_assessment(aws_client:aws_client(), start_metadata_model_assessment_message(), proplists:proplist()) ->
    {ok, start_metadata_model_assessment_response(), tuple()} |
    {error, any()} |
    {error, start_metadata_model_assessment_errors(), tuple()}.
start_metadata_model_assessment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartMetadataModelAssessment">>, Input, Options).

%% @doc Converts your source database objects to a format compatible with the
%% target database.
-spec start_metadata_model_conversion(aws_client:aws_client(), start_metadata_model_conversion_message()) ->
    {ok, start_metadata_model_conversion_response(), tuple()} |
    {error, any()} |
    {error, start_metadata_model_conversion_errors(), tuple()}.
start_metadata_model_conversion(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_metadata_model_conversion(Client, Input, []).

-spec start_metadata_model_conversion(aws_client:aws_client(), start_metadata_model_conversion_message(), proplists:proplist()) ->
    {ok, start_metadata_model_conversion_response(), tuple()} |
    {error, any()} |
    {error, start_metadata_model_conversion_errors(), tuple()}.
start_metadata_model_conversion(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartMetadataModelConversion">>, Input, Options).

%% @doc Saves your converted code to a file as a SQL script, and stores this
%% file on your Amazon S3
%% bucket.
-spec start_metadata_model_export_as_script(aws_client:aws_client(), start_metadata_model_export_as_script_message()) ->
    {ok, start_metadata_model_export_as_script_response(), tuple()} |
    {error, any()} |
    {error, start_metadata_model_export_as_script_errors(), tuple()}.
start_metadata_model_export_as_script(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_metadata_model_export_as_script(Client, Input, []).

-spec start_metadata_model_export_as_script(aws_client:aws_client(), start_metadata_model_export_as_script_message(), proplists:proplist()) ->
    {ok, start_metadata_model_export_as_script_response(), tuple()} |
    {error, any()} |
    {error, start_metadata_model_export_as_script_errors(), tuple()}.
start_metadata_model_export_as_script(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartMetadataModelExportAsScript">>, Input, Options).

%% @doc Applies converted database objects to your target database.
-spec start_metadata_model_export_to_target(aws_client:aws_client(), start_metadata_model_export_to_target_message()) ->
    {ok, start_metadata_model_export_to_target_response(), tuple()} |
    {error, any()} |
    {error, start_metadata_model_export_to_target_errors(), tuple()}.
start_metadata_model_export_to_target(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_metadata_model_export_to_target(Client, Input, []).

-spec start_metadata_model_export_to_target(aws_client:aws_client(), start_metadata_model_export_to_target_message(), proplists:proplist()) ->
    {ok, start_metadata_model_export_to_target_response(), tuple()} |
    {error, any()} |
    {error, start_metadata_model_export_to_target_errors(), tuple()}.
start_metadata_model_export_to_target(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartMetadataModelExportToTarget">>, Input, Options).

%% @doc Loads the metadata for all the dependent database objects of the
%% parent object.
%%
%% This operation uses your project's Amazon S3 bucket as a metadata
%% cache to improve
%% performance.
-spec start_metadata_model_import(aws_client:aws_client(), start_metadata_model_import_message()) ->
    {ok, start_metadata_model_import_response(), tuple()} |
    {error, any()} |
    {error, start_metadata_model_import_errors(), tuple()}.
start_metadata_model_import(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_metadata_model_import(Client, Input, []).

-spec start_metadata_model_import(aws_client:aws_client(), start_metadata_model_import_message(), proplists:proplist()) ->
    {ok, start_metadata_model_import_response(), tuple()} |
    {error, any()} |
    {error, start_metadata_model_import_errors(), tuple()}.
start_metadata_model_import(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartMetadataModelImport">>, Input, Options).

%% @doc
%%
%% End of support notice: On May 20, 2026, Amazon Web Services will end
%% support for Amazon Web Services DMS Fleet Advisor;.
%%
%% After May 20, 2026, you will no longer be able to access the Amazon Web
%% Services DMS Fleet Advisor; console or Amazon Web Services DMS Fleet
%% Advisor; resources. For more information, see Amazon Web Services DMS
%% Fleet Advisor end of support:
%% https://docs.aws.amazon.com/dms/latest/userguide/dms_fleet.advisor-end-of-support.html.
%%
%% Starts the analysis of your source database to provide recommendations of
%% target
%% engines.
%%
%% You can create recommendations for multiple source databases using
%% BatchStartRecommendations:
%% https://docs.aws.amazon.com/dms/latest/APIReference/API_BatchStartRecommendations.html.
-spec start_recommendations(aws_client:aws_client(), start_recommendations_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, start_recommendations_errors(), tuple()}.
start_recommendations(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_recommendations(Client, Input, []).

-spec start_recommendations(aws_client:aws_client(), start_recommendations_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, start_recommendations_errors(), tuple()}.
start_recommendations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartRecommendations">>, Input, Options).

%% @doc For a given DMS Serverless replication configuration, DMS connects to
%% the source
%% endpoint and collects the metadata to analyze the replication workload.
%%
%% Using this
%% metadata, DMS then computes and provisions the required capacity and
%% starts replicating
%% to the target endpoint using the server resources that DMS has provisioned
%% for the DMS
%% Serverless replication.
-spec start_replication(aws_client:aws_client(), start_replication_message()) ->
    {ok, start_replication_response(), tuple()} |
    {error, any()} |
    {error, start_replication_errors(), tuple()}.
start_replication(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_replication(Client, Input, []).

-spec start_replication(aws_client:aws_client(), start_replication_message(), proplists:proplist()) ->
    {ok, start_replication_response(), tuple()} |
    {error, any()} |
    {error, start_replication_errors(), tuple()}.
start_replication(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartReplication">>, Input, Options).

%% @doc Starts the replication task.
%%
%% For more information about DMS tasks, see Working with Migration Tasks :
%% https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.html in the
%% Database Migration Service User Guide.
-spec start_replication_task(aws_client:aws_client(), start_replication_task_message()) ->
    {ok, start_replication_task_response(), tuple()} |
    {error, any()} |
    {error, start_replication_task_errors(), tuple()}.
start_replication_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_replication_task(Client, Input, []).

-spec start_replication_task(aws_client:aws_client(), start_replication_task_message(), proplists:proplist()) ->
    {ok, start_replication_task_response(), tuple()} |
    {error, any()} |
    {error, start_replication_task_errors(), tuple()}.
start_replication_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartReplicationTask">>, Input, Options).

%% @doc Starts the replication task assessment for unsupported data types in
%% the source
%% database.
%%
%% You can only use this operation for a task if the following conditions are
%% true:
%%
%% The task must be in the `stopped' state.
%%
%% The task must have successful connections to the source and target.
%%
%% If either of these conditions are not met, an
%% `InvalidResourceStateFault'
%% error will result.
%%
%% For information about DMS task assessments, see Creating a task assessment
%% report:
%% https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.AssessmentReport.html
%% in the Database Migration Service User
%% Guide.
-spec start_replication_task_assessment(aws_client:aws_client(), start_replication_task_assessment_message()) ->
    {ok, start_replication_task_assessment_response(), tuple()} |
    {error, any()} |
    {error, start_replication_task_assessment_errors(), tuple()}.
start_replication_task_assessment(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_replication_task_assessment(Client, Input, []).

-spec start_replication_task_assessment(aws_client:aws_client(), start_replication_task_assessment_message(), proplists:proplist()) ->
    {ok, start_replication_task_assessment_response(), tuple()} |
    {error, any()} |
    {error, start_replication_task_assessment_errors(), tuple()}.
start_replication_task_assessment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartReplicationTaskAssessment">>, Input, Options).

%% @doc Starts a new premigration assessment run for one or more individual
%% assessments of a
%% migration task.
%%
%% The assessments that you can specify depend on the source and target
%% database engine and
%% the migration type defined for the given task. To run this operation, your
%% migration task
%% must already be created. After you run this operation, you can review the
%% status of each
%% individual assessment. You can also run the migration task manually after
%% the assessment
%% run and its individual assessments complete.
-spec start_replication_task_assessment_run(aws_client:aws_client(), start_replication_task_assessment_run_message()) ->
    {ok, start_replication_task_assessment_run_response(), tuple()} |
    {error, any()} |
    {error, start_replication_task_assessment_run_errors(), tuple()}.
start_replication_task_assessment_run(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_replication_task_assessment_run(Client, Input, []).

-spec start_replication_task_assessment_run(aws_client:aws_client(), start_replication_task_assessment_run_message(), proplists:proplist()) ->
    {ok, start_replication_task_assessment_run_response(), tuple()} |
    {error, any()} |
    {error, start_replication_task_assessment_run_errors(), tuple()}.
start_replication_task_assessment_run(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartReplicationTaskAssessmentRun">>, Input, Options).

%% @doc Stops the specified data migration.
-spec stop_data_migration(aws_client:aws_client(), stop_data_migration_message()) ->
    {ok, stop_data_migration_response(), tuple()} |
    {error, any()} |
    {error, stop_data_migration_errors(), tuple()}.
stop_data_migration(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_data_migration(Client, Input, []).

-spec stop_data_migration(aws_client:aws_client(), stop_data_migration_message(), proplists:proplist()) ->
    {ok, stop_data_migration_response(), tuple()} |
    {error, any()} |
    {error, stop_data_migration_errors(), tuple()}.
stop_data_migration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopDataMigration">>, Input, Options).

%% @doc For a given DMS Serverless replication configuration, DMS stops any
%% and all ongoing
%% DMS Serverless replications.
%%
%% This command doesn't deprovision the stopped
%% replications.
-spec stop_replication(aws_client:aws_client(), stop_replication_message()) ->
    {ok, stop_replication_response(), tuple()} |
    {error, any()} |
    {error, stop_replication_errors(), tuple()}.
stop_replication(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_replication(Client, Input, []).

-spec stop_replication(aws_client:aws_client(), stop_replication_message(), proplists:proplist()) ->
    {ok, stop_replication_response(), tuple()} |
    {error, any()} |
    {error, stop_replication_errors(), tuple()}.
stop_replication(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopReplication">>, Input, Options).

%% @doc Stops the replication task.
-spec stop_replication_task(aws_client:aws_client(), stop_replication_task_message()) ->
    {ok, stop_replication_task_response(), tuple()} |
    {error, any()} |
    {error, stop_replication_task_errors(), tuple()}.
stop_replication_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_replication_task(Client, Input, []).

-spec stop_replication_task(aws_client:aws_client(), stop_replication_task_message(), proplists:proplist()) ->
    {ok, stop_replication_task_response(), tuple()} |
    {error, any()} |
    {error, stop_replication_task_errors(), tuple()}.
stop_replication_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopReplicationTask">>, Input, Options).

%% @doc Tests the connection between the replication instance and the
%% endpoint.
-spec test_connection(aws_client:aws_client(), test_connection_message()) ->
    {ok, test_connection_response(), tuple()} |
    {error, any()} |
    {error, test_connection_errors(), tuple()}.
test_connection(Client, Input)
  when is_map(Client), is_map(Input) ->
    test_connection(Client, Input, []).

-spec test_connection(aws_client:aws_client(), test_connection_message(), proplists:proplist()) ->
    {ok, test_connection_response(), tuple()} |
    {error, any()} |
    {error, test_connection_errors(), tuple()}.
test_connection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TestConnection">>, Input, Options).

%% @doc Migrates 10 active and enabled Amazon SNS subscriptions at a time and
%% converts them to
%% corresponding Amazon EventBridge rules.
%%
%% By default, this operation migrates subscriptions
%% only when all your replication instance versions are 3.4.5 or higher. If
%% any replication
%% instances are from versions earlier than 3.4.5, the operation raises an
%% error and tells you
%% to upgrade these instances to version 3.4.5 or higher. To enable migration
%% regardless of
%% version, set the `Force' option to true. However, if you don't
%% upgrade instances
%% earlier than version 3.4.5, some types of events might not be available
%% when you use Amazon
%% EventBridge.
%%
%% To call this operation, make sure that you have certain permissions added
%% to your user
%% account. For more information, see Migrating event subscriptions to Amazon
%% EventBridge:
%% https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Events.html#CHAP_Events-migrate-to-eventbridge
%% in the
%% Amazon Web Services Database Migration Service User Guide.
-spec update_subscriptions_to_event_bridge(aws_client:aws_client(), update_subscriptions_to_event_bridge_message()) ->
    {ok, update_subscriptions_to_event_bridge_response(), tuple()} |
    {error, any()} |
    {error, update_subscriptions_to_event_bridge_errors(), tuple()}.
update_subscriptions_to_event_bridge(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_subscriptions_to_event_bridge(Client, Input, []).

-spec update_subscriptions_to_event_bridge(aws_client:aws_client(), update_subscriptions_to_event_bridge_message(), proplists:proplist()) ->
    {ok, update_subscriptions_to_event_bridge_response(), tuple()} |
    {error, any()} |
    {error, update_subscriptions_to_event_bridge_errors(), tuple()}.
update_subscriptions_to_event_bridge(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateSubscriptionsToEventBridge">>, Input, Options).

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
    Client1 = Client#{service => <<"dms">>},
    Host = build_host(<<"dms">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"AmazonDMSv20160101.", Action/binary>>}
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
