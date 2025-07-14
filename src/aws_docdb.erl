%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon DocumentDB is a fast, reliable, and fully managed database
%% service.
%%
%% Amazon DocumentDB makes it easy to set up, operate, and scale
%% MongoDB-compatible databases in the cloud.
%% With Amazon DocumentDB, you can run the same application code and use the
%% same drivers and tools that you use with MongoDB.
-module(aws_docdb).

-export([add_source_identifier_to_subscription/2,
         add_source_identifier_to_subscription/3,
         add_tags_to_resource/2,
         add_tags_to_resource/3,
         apply_pending_maintenance_action/2,
         apply_pending_maintenance_action/3,
         copy_db_cluster_parameter_group/2,
         copy_db_cluster_parameter_group/3,
         copy_db_cluster_snapshot/2,
         copy_db_cluster_snapshot/3,
         create_db_cluster/2,
         create_db_cluster/3,
         create_db_cluster_parameter_group/2,
         create_db_cluster_parameter_group/3,
         create_db_cluster_snapshot/2,
         create_db_cluster_snapshot/3,
         create_db_instance/2,
         create_db_instance/3,
         create_db_subnet_group/2,
         create_db_subnet_group/3,
         create_event_subscription/2,
         create_event_subscription/3,
         create_global_cluster/2,
         create_global_cluster/3,
         delete_db_cluster/2,
         delete_db_cluster/3,
         delete_db_cluster_parameter_group/2,
         delete_db_cluster_parameter_group/3,
         delete_db_cluster_snapshot/2,
         delete_db_cluster_snapshot/3,
         delete_db_instance/2,
         delete_db_instance/3,
         delete_db_subnet_group/2,
         delete_db_subnet_group/3,
         delete_event_subscription/2,
         delete_event_subscription/3,
         delete_global_cluster/2,
         delete_global_cluster/3,
         describe_certificates/2,
         describe_certificates/3,
         describe_db_cluster_parameter_groups/2,
         describe_db_cluster_parameter_groups/3,
         describe_db_cluster_parameters/2,
         describe_db_cluster_parameters/3,
         describe_db_cluster_snapshot_attributes/2,
         describe_db_cluster_snapshot_attributes/3,
         describe_db_cluster_snapshots/2,
         describe_db_cluster_snapshots/3,
         describe_db_clusters/2,
         describe_db_clusters/3,
         describe_db_engine_versions/2,
         describe_db_engine_versions/3,
         describe_db_instances/2,
         describe_db_instances/3,
         describe_db_subnet_groups/2,
         describe_db_subnet_groups/3,
         describe_engine_default_cluster_parameters/2,
         describe_engine_default_cluster_parameters/3,
         describe_event_categories/2,
         describe_event_categories/3,
         describe_event_subscriptions/2,
         describe_event_subscriptions/3,
         describe_events/2,
         describe_events/3,
         describe_global_clusters/2,
         describe_global_clusters/3,
         describe_orderable_db_instance_options/2,
         describe_orderable_db_instance_options/3,
         describe_pending_maintenance_actions/2,
         describe_pending_maintenance_actions/3,
         failover_db_cluster/2,
         failover_db_cluster/3,
         failover_global_cluster/2,
         failover_global_cluster/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         modify_db_cluster/2,
         modify_db_cluster/3,
         modify_db_cluster_parameter_group/2,
         modify_db_cluster_parameter_group/3,
         modify_db_cluster_snapshot_attribute/2,
         modify_db_cluster_snapshot_attribute/3,
         modify_db_instance/2,
         modify_db_instance/3,
         modify_db_subnet_group/2,
         modify_db_subnet_group/3,
         modify_event_subscription/2,
         modify_event_subscription/3,
         modify_global_cluster/2,
         modify_global_cluster/3,
         reboot_db_instance/2,
         reboot_db_instance/3,
         remove_from_global_cluster/2,
         remove_from_global_cluster/3,
         remove_source_identifier_from_subscription/2,
         remove_source_identifier_from_subscription/3,
         remove_tags_from_resource/2,
         remove_tags_from_resource/3,
         reset_db_cluster_parameter_group/2,
         reset_db_cluster_parameter_group/3,
         restore_db_cluster_from_snapshot/2,
         restore_db_cluster_from_snapshot/3,
         restore_db_cluster_to_point_in_time/2,
         restore_db_cluster_to_point_in_time/3,
         start_db_cluster/2,
         start_db_cluster/3,
         stop_db_cluster/2,
         stop_db_cluster/3,
         switchover_global_cluster/2,
         switchover_global_cluster/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% restore_db_cluster_from_snapshot_message() :: #{
%%   <<"AvailabilityZones">> => list(string()),
%%   <<"DBClusterIdentifier">> := string(),
%%   <<"DBClusterParameterGroupName">> => string(),
%%   <<"DBSubnetGroupName">> => string(),
%%   <<"DeletionProtection">> => boolean(),
%%   <<"EnableCloudwatchLogsExports">> => list(string()),
%%   <<"Engine">> := string(),
%%   <<"EngineVersion">> => string(),
%%   <<"KmsKeyId">> => string(),
%%   <<"Port">> => integer(),
%%   <<"SnapshotIdentifier">> := string(),
%%   <<"StorageType">> => string(),
%%   <<"Tags">> => list(tag()),
%%   <<"VpcSecurityGroupIds">> => list(string())
%% }
-type restore_db_cluster_from_snapshot_message() :: #{binary() => any()}.

%% Example:
%% db_subnet_group_already_exists_fault() :: #{
%%   <<"message">> => string()
%% }
-type db_subnet_group_already_exists_fault() :: #{binary() => any()}.

%% Example:
%% start_db_cluster_message() :: #{
%%   <<"DBClusterIdentifier">> := string()
%% }
-type start_db_cluster_message() :: #{binary() => any()}.

%% Example:
%% db_cluster_quota_exceeded_fault() :: #{
%%   <<"message">> => string()
%% }
-type db_cluster_quota_exceeded_fault() :: #{binary() => any()}.

%% Example:
%% event_subscriptions_message() :: #{
%%   <<"EventSubscriptionsList">> => list(event_subscription()),
%%   <<"Marker">> => string()
%% }
-type event_subscriptions_message() :: #{binary() => any()}.

%% Example:
%% resource_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type resource_not_found_fault() :: #{binary() => any()}.

%% Example:
%% delete_db_cluster_snapshot_result() :: #{
%%   <<"DBClusterSnapshot">> => db_cluster_snapshot()
%% }
-type delete_db_cluster_snapshot_result() :: #{binary() => any()}.

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
%% db_parameter_group_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type db_parameter_group_not_found_fault() :: #{binary() => any()}.

%% Example:
%% apply_pending_maintenance_action_message() :: #{
%%   <<"ApplyAction">> := string(),
%%   <<"OptInType">> := string(),
%%   <<"ResourceIdentifier">> := string()
%% }
-type apply_pending_maintenance_action_message() :: #{binary() => any()}.

%% Example:
%% subnet_already_in_use() :: #{
%%   <<"message">> => string()
%% }
-type subnet_already_in_use() :: #{binary() => any()}.

%% Example:
%% db_cluster_snapshot() :: #{
%%   <<"AvailabilityZones">> => list(string()),
%%   <<"ClusterCreateTime">> => non_neg_integer(),
%%   <<"DBClusterIdentifier">> => string(),
%%   <<"DBClusterSnapshotArn">> => string(),
%%   <<"DBClusterSnapshotIdentifier">> => string(),
%%   <<"Engine">> => string(),
%%   <<"EngineVersion">> => string(),
%%   <<"KmsKeyId">> => string(),
%%   <<"MasterUsername">> => string(),
%%   <<"PercentProgress">> => integer(),
%%   <<"Port">> => integer(),
%%   <<"SnapshotCreateTime">> => non_neg_integer(),
%%   <<"SnapshotType">> => string(),
%%   <<"SourceDBClusterSnapshotArn">> => string(),
%%   <<"Status">> => string(),
%%   <<"StorageEncrypted">> => boolean(),
%%   <<"StorageType">> => string(),
%%   <<"VpcId">> => string()
%% }
-type db_cluster_snapshot() :: #{binary() => any()}.

%% Example:
%% delete_db_instance_result() :: #{
%%   <<"DBInstance">> => db_instance()
%% }
-type delete_db_instance_result() :: #{binary() => any()}.

%% Example:
%% snapshot_quota_exceeded_fault() :: #{
%%   <<"message">> => string()
%% }
-type snapshot_quota_exceeded_fault() :: #{binary() => any()}.

%% Example:
%% modify_db_subnet_group_message() :: #{
%%   <<"DBSubnetGroupDescription">> => string(),
%%   <<"DBSubnetGroupName">> := string(),
%%   <<"SubnetIds">> := list(string())
%% }
-type modify_db_subnet_group_message() :: #{binary() => any()}.

%% Example:
%% db_subnet_group_message() :: #{
%%   <<"DBSubnetGroups">> => list(db_subnet_group()),
%%   <<"Marker">> => string()
%% }
-type db_subnet_group_message() :: #{binary() => any()}.

%% Example:
%% describe_db_cluster_parameters_message() :: #{
%%   <<"DBClusterParameterGroupName">> := string(),
%%   <<"Filters">> => list(filter()),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer(),
%%   <<"Source">> => string()
%% }
-type describe_db_cluster_parameters_message() :: #{binary() => any()}.

%% Example:
%% resource_pending_maintenance_actions() :: #{
%%   <<"PendingMaintenanceActionDetails">> => list(pending_maintenance_action()),
%%   <<"ResourceIdentifier">> => string()
%% }
-type resource_pending_maintenance_actions() :: #{binary() => any()}.

%% Example:
%% event_categories_map() :: #{
%%   <<"EventCategories">> => list(string()),
%%   <<"SourceType">> => string()
%% }
-type event_categories_map() :: #{binary() => any()}.

%% Example:
%% delete_global_cluster_result() :: #{
%%   <<"GlobalCluster">> => global_cluster()
%% }
-type delete_global_cluster_result() :: #{binary() => any()}.

%% Example:
%% db_cluster_parameter_group_name_message() :: #{
%%   <<"DBClusterParameterGroupName">> => string()
%% }
-type db_cluster_parameter_group_name_message() :: #{binary() => any()}.

%% Example:
%% availability_zone() :: #{
%%   <<"Name">> => string()
%% }
-type availability_zone() :: #{binary() => any()}.

%% Example:
%% db_snapshot_already_exists_fault() :: #{
%%   <<"message">> => string()
%% }
-type db_snapshot_already_exists_fault() :: #{binary() => any()}.

%% Example:
%% describe_db_instances_message() :: #{
%%   <<"DBInstanceIdentifier">> => string(),
%%   <<"Filters">> => list(filter()),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer()
%% }
-type describe_db_instances_message() :: #{binary() => any()}.

%% Example:
%% shared_snapshot_quota_exceeded_fault() :: #{
%%   <<"message">> => string()
%% }
-type shared_snapshot_quota_exceeded_fault() :: #{binary() => any()}.

%% Example:
%% create_db_cluster_parameter_group_message() :: #{
%%   <<"DBClusterParameterGroupName">> := string(),
%%   <<"DBParameterGroupFamily">> := string(),
%%   <<"Description">> := string(),
%%   <<"Tags">> => list(tag())
%% }
-type create_db_cluster_parameter_group_message() :: #{binary() => any()}.

%% Example:
%% copy_db_cluster_parameter_group_result() :: #{
%%   <<"DBClusterParameterGroup">> => db_cluster_parameter_group()
%% }
-type copy_db_cluster_parameter_group_result() :: #{binary() => any()}.

%% Example:
%% modify_event_subscription_message() :: #{
%%   <<"Enabled">> => boolean(),
%%   <<"EventCategories">> => list(string()),
%%   <<"SnsTopicArn">> => string(),
%%   <<"SourceType">> => string(),
%%   <<"SubscriptionName">> := string()
%% }
-type modify_event_subscription_message() :: #{binary() => any()}.

%% Example:
%% copy_db_cluster_parameter_group_message() :: #{
%%   <<"SourceDBClusterParameterGroupIdentifier">> := string(),
%%   <<"Tags">> => list(tag()),
%%   <<"TargetDBClusterParameterGroupDescription">> := string(),
%%   <<"TargetDBClusterParameterGroupIdentifier">> := string()
%% }
-type copy_db_cluster_parameter_group_message() :: #{binary() => any()}.

%% Example:
%% describe_pending_maintenance_actions_message() :: #{
%%   <<"Filters">> => list(filter()),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer(),
%%   <<"ResourceIdentifier">> => string()
%% }
-type describe_pending_maintenance_actions_message() :: #{binary() => any()}.

%% Example:
%% describe_orderable_db_instance_options_message() :: #{
%%   <<"DBInstanceClass">> => string(),
%%   <<"Engine">> := string(),
%%   <<"EngineVersion">> => string(),
%%   <<"Filters">> => list(filter()),
%%   <<"LicenseModel">> => string(),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer(),
%%   <<"Vpc">> => boolean()
%% }
-type describe_orderable_db_instance_options_message() :: #{binary() => any()}.

%% Example:
%% pending_cloudwatch_logs_exports() :: #{
%%   <<"LogTypesToDisable">> => list(string()),
%%   <<"LogTypesToEnable">> => list(string())
%% }
-type pending_cloudwatch_logs_exports() :: #{binary() => any()}.

%% Example:
%% engine_defaults() :: #{
%%   <<"DBParameterGroupFamily">> => string(),
%%   <<"Marker">> => string(),
%%   <<"Parameters">> => list(parameter())
%% }
-type engine_defaults() :: #{binary() => any()}.

%% Example:
%% create_db_subnet_group_result() :: #{
%%   <<"DBSubnetGroup">> => db_subnet_group()
%% }
-type create_db_subnet_group_result() :: #{binary() => any()}.

%% Example:
%% switchover_global_cluster_result() :: #{
%%   <<"GlobalCluster">> => global_cluster()
%% }
-type switchover_global_cluster_result() :: #{binary() => any()}.

%% Example:
%% cloudwatch_logs_export_configuration() :: #{
%%   <<"DisableLogTypes">> => list(string()),
%%   <<"EnableLogTypes">> => list(string())
%% }
-type cloudwatch_logs_export_configuration() :: #{binary() => any()}.

%% Example:
%% db_instance_already_exists_fault() :: #{
%%   <<"message">> => string()
%% }
-type db_instance_already_exists_fault() :: #{binary() => any()}.

%% Example:
%% insufficient_db_instance_capacity_fault() :: #{
%%   <<"message">> => string()
%% }
-type insufficient_db_instance_capacity_fault() :: #{binary() => any()}.

%% Example:
%% db_cluster_role() :: #{
%%   <<"RoleArn">> => string(),
%%   <<"Status">> => string()
%% }
-type db_cluster_role() :: #{binary() => any()}.

%% Example:
%% modify_db_instance_result() :: #{
%%   <<"DBInstance">> => db_instance()
%% }
-type modify_db_instance_result() :: #{binary() => any()}.

%% Example:
%% event_subscription() :: #{
%%   <<"CustSubscriptionId">> => string(),
%%   <<"CustomerAwsId">> => string(),
%%   <<"Enabled">> => boolean(),
%%   <<"EventCategoriesList">> => list(string()),
%%   <<"EventSubscriptionArn">> => string(),
%%   <<"SnsTopicArn">> => string(),
%%   <<"SourceIdsList">> => list(string()),
%%   <<"SourceType">> => string(),
%%   <<"Status">> => string(),
%%   <<"SubscriptionCreationTime">> => string()
%% }
-type event_subscription() :: #{binary() => any()}.

%% Example:
%% global_cluster_member() :: #{
%%   <<"DBClusterArn">> => string(),
%%   <<"IsWriter">> => boolean(),
%%   <<"Readers">> => list(string())
%% }
-type global_cluster_member() :: #{binary() => any()}.

%% Example:
%% modify_db_cluster_snapshot_attribute_message() :: #{
%%   <<"AttributeName">> := string(),
%%   <<"DBClusterSnapshotIdentifier">> := string(),
%%   <<"ValuesToAdd">> => list(string()),
%%   <<"ValuesToRemove">> => list(string())
%% }
-type modify_db_cluster_snapshot_attribute_message() :: #{binary() => any()}.

%% Example:
%% add_source_identifier_to_subscription_message() :: #{
%%   <<"SourceIdentifier">> := string(),
%%   <<"SubscriptionName">> := string()
%% }
-type add_source_identifier_to_subscription_message() :: #{binary() => any()}.

%% Example:
%% invalid_restore_fault() :: #{
%%   <<"message">> => string()
%% }
-type invalid_restore_fault() :: #{binary() => any()}.

%% Example:
%% describe_certificates_message() :: #{
%%   <<"CertificateIdentifier">> => string(),
%%   <<"Filters">> => list(filter()),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer()
%% }
-type describe_certificates_message() :: #{binary() => any()}.

%% Example:
%% restore_db_cluster_to_point_in_time_message() :: #{
%%   <<"DBClusterIdentifier">> := string(),
%%   <<"DBSubnetGroupName">> => string(),
%%   <<"DeletionProtection">> => boolean(),
%%   <<"EnableCloudwatchLogsExports">> => list(string()),
%%   <<"KmsKeyId">> => string(),
%%   <<"Port">> => integer(),
%%   <<"RestoreToTime">> => non_neg_integer(),
%%   <<"RestoreType">> => string(),
%%   <<"SourceDBClusterIdentifier">> := string(),
%%   <<"StorageType">> => string(),
%%   <<"Tags">> => list(tag()),
%%   <<"UseLatestRestorableTime">> => boolean(),
%%   <<"VpcSecurityGroupIds">> => list(string())
%% }
-type restore_db_cluster_to_point_in_time_message() :: #{binary() => any()}.

%% Example:
%% invalid_db_subnet_group_state_fault() :: #{
%%   <<"message">> => string()
%% }
-type invalid_db_subnet_group_state_fault() :: #{binary() => any()}.

%% Example:
%% subnet() :: #{
%%   <<"SubnetAvailabilityZone">> => availability_zone(),
%%   <<"SubnetIdentifier">> => string(),
%%   <<"SubnetStatus">> => string()
%% }
-type subnet() :: #{binary() => any()}.

%% Example:
%% remove_source_identifier_from_subscription_message() :: #{
%%   <<"SourceIdentifier">> := string(),
%%   <<"SubscriptionName">> := string()
%% }
-type remove_source_identifier_from_subscription_message() :: #{binary() => any()}.

%% Example:
%% db_cluster_snapshot_message() :: #{
%%   <<"DBClusterSnapshots">> => list(db_cluster_snapshot()),
%%   <<"Marker">> => string()
%% }
-type db_cluster_snapshot_message() :: #{binary() => any()}.

%% Example:
%% invalid_subnet() :: #{
%%   <<"message">> => string()
%% }
-type invalid_subnet() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_message() :: #{
%%   <<"Filters">> => list(filter()),
%%   <<"ResourceName">> := string()
%% }
-type list_tags_for_resource_message() :: #{binary() => any()}.

%% Example:
%% describe_db_cluster_snapshots_message() :: #{
%%   <<"DBClusterIdentifier">> => string(),
%%   <<"DBClusterSnapshotIdentifier">> => string(),
%%   <<"Filters">> => list(filter()),
%%   <<"IncludePublic">> => boolean(),
%%   <<"IncludeShared">> => boolean(),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer(),
%%   <<"SnapshotType">> => string()
%% }
-type describe_db_cluster_snapshots_message() :: #{binary() => any()}.

%% Example:
%% create_db_instance_message() :: #{
%%   <<"AutoMinorVersionUpgrade">> => boolean(),
%%   <<"AvailabilityZone">> => string(),
%%   <<"CACertificateIdentifier">> => string(),
%%   <<"CopyTagsToSnapshot">> => boolean(),
%%   <<"DBClusterIdentifier">> := string(),
%%   <<"DBInstanceClass">> := string(),
%%   <<"DBInstanceIdentifier">> := string(),
%%   <<"EnablePerformanceInsights">> => boolean(),
%%   <<"Engine">> := string(),
%%   <<"PerformanceInsightsKMSKeyId">> => string(),
%%   <<"PreferredMaintenanceWindow">> => string(),
%%   <<"PromotionTier">> => integer(),
%%   <<"Tags">> => list(tag())
%% }
-type create_db_instance_message() :: #{binary() => any()}.

%% Example:
%% create_db_cluster_result() :: #{
%%   <<"DBCluster">> => db_cluster()
%% }
-type create_db_cluster_result() :: #{binary() => any()}.

%% Example:
%% restore_db_cluster_to_point_in_time_result() :: #{
%%   <<"DBCluster">> => db_cluster()
%% }
-type restore_db_cluster_to_point_in_time_result() :: #{binary() => any()}.

%% Example:
%% storage_type_not_supported_fault() :: #{
%%   <<"message">> => string()
%% }
-type storage_type_not_supported_fault() :: #{binary() => any()}.

%% Example:
%% describe_db_cluster_snapshot_attributes_result() :: #{
%%   <<"DBClusterSnapshotAttributesResult">> => db_cluster_snapshot_attributes_result()
%% }
-type describe_db_cluster_snapshot_attributes_result() :: #{binary() => any()}.

%% Example:
%% db_subnet_quota_exceeded_fault() :: #{
%%   <<"message">> => string()
%% }
-type db_subnet_quota_exceeded_fault() :: #{binary() => any()}.

%% Example:
%% db_instance() :: #{
%%   <<"AutoMinorVersionUpgrade">> => boolean(),
%%   <<"AvailabilityZone">> => string(),
%%   <<"BackupRetentionPeriod">> => integer(),
%%   <<"CACertificateIdentifier">> => string(),
%%   <<"CertificateDetails">> => certificate_details(),
%%   <<"CopyTagsToSnapshot">> => boolean(),
%%   <<"DBClusterIdentifier">> => string(),
%%   <<"DBInstanceArn">> => string(),
%%   <<"DBInstanceClass">> => string(),
%%   <<"DBInstanceIdentifier">> => string(),
%%   <<"DBInstanceStatus">> => string(),
%%   <<"DBSubnetGroup">> => db_subnet_group(),
%%   <<"DbiResourceId">> => string(),
%%   <<"EnabledCloudwatchLogsExports">> => list(string()),
%%   <<"Endpoint">> => endpoint(),
%%   <<"Engine">> => string(),
%%   <<"EngineVersion">> => string(),
%%   <<"InstanceCreateTime">> => non_neg_integer(),
%%   <<"KmsKeyId">> => string(),
%%   <<"LatestRestorableTime">> => non_neg_integer(),
%%   <<"PendingModifiedValues">> => pending_modified_values(),
%%   <<"PerformanceInsightsEnabled">> => boolean(),
%%   <<"PerformanceInsightsKMSKeyId">> => string(),
%%   <<"PreferredBackupWindow">> => string(),
%%   <<"PreferredMaintenanceWindow">> => string(),
%%   <<"PromotionTier">> => integer(),
%%   <<"PubliclyAccessible">> => boolean(),
%%   <<"StatusInfos">> => list(db_instance_status_info()),
%%   <<"StorageEncrypted">> => boolean(),
%%   <<"VpcSecurityGroups">> => list(vpc_security_group_membership())
%% }
-type db_instance() :: #{binary() => any()}.

%% Example:
%% describe_engine_default_cluster_parameters_result() :: #{
%%   <<"EngineDefaults">> => engine_defaults()
%% }
-type describe_engine_default_cluster_parameters_result() :: #{binary() => any()}.

%% Example:
%% copy_db_cluster_snapshot_result() :: #{
%%   <<"DBClusterSnapshot">> => db_cluster_snapshot()
%% }
-type copy_db_cluster_snapshot_result() :: #{binary() => any()}.

%% Example:
%% subscription_already_exist_fault() :: #{
%%   <<"message">> => string()
%% }
-type subscription_already_exist_fault() :: #{binary() => any()}.

%% Example:
%% db_parameter_group_quota_exceeded_fault() :: #{
%%   <<"message">> => string()
%% }
-type db_parameter_group_quota_exceeded_fault() :: #{binary() => any()}.

%% Example:
%% db_cluster_message() :: #{
%%   <<"DBClusters">> => list(db_cluster()),
%%   <<"Marker">> => string()
%% }
-type db_cluster_message() :: #{binary() => any()}.

%% Example:
%% db_subnet_group_quota_exceeded_fault() :: #{
%%   <<"message">> => string()
%% }
-type db_subnet_group_quota_exceeded_fault() :: #{binary() => any()}.

%% Example:
%% failover_global_cluster_result() :: #{
%%   <<"GlobalCluster">> => global_cluster()
%% }
-type failover_global_cluster_result() :: #{binary() => any()}.

%% Example:
%% invalid_global_cluster_state_fault() :: #{
%%   <<"message">> => string()
%% }
-type invalid_global_cluster_state_fault() :: #{binary() => any()}.

%% Example:
%% describe_db_engine_versions_message() :: #{
%%   <<"DBParameterGroupFamily">> => string(),
%%   <<"DefaultOnly">> => boolean(),
%%   <<"Engine">> => string(),
%%   <<"EngineVersion">> => string(),
%%   <<"Filters">> => list(filter()),
%%   <<"ListSupportedCharacterSets">> => boolean(),
%%   <<"ListSupportedTimezones">> => boolean(),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer()
%% }
-type describe_db_engine_versions_message() :: #{binary() => any()}.

%% Example:
%% delete_db_cluster_message() :: #{
%%   <<"DBClusterIdentifier">> := string(),
%%   <<"FinalDBSnapshotIdentifier">> => string(),
%%   <<"SkipFinalSnapshot">> => boolean()
%% }
-type delete_db_cluster_message() :: #{binary() => any()}.

%% Example:
%% reboot_db_instance_result() :: #{
%%   <<"DBInstance">> => db_instance()
%% }
-type reboot_db_instance_result() :: #{binary() => any()}.

%% Example:
%% add_source_identifier_to_subscription_result() :: #{
%%   <<"EventSubscription">> => event_subscription()
%% }
-type add_source_identifier_to_subscription_result() :: #{binary() => any()}.

%% Example:
%% cluster_master_user_secret() :: #{
%%   <<"KmsKeyId">> => string(),
%%   <<"SecretArn">> => string(),
%%   <<"SecretStatus">> => string()
%% }
-type cluster_master_user_secret() :: #{binary() => any()}.

%% Example:
%% db_parameter_group_already_exists_fault() :: #{
%%   <<"message">> => string()
%% }
-type db_parameter_group_already_exists_fault() :: #{binary() => any()}.

%% Example:
%% delete_db_instance_message() :: #{
%%   <<"DBInstanceIdentifier">> := string()
%% }
-type delete_db_instance_message() :: #{binary() => any()}.

%% Example:
%% invalid_vpc_network_state_fault() :: #{
%%   <<"message">> => string()
%% }
-type invalid_vpc_network_state_fault() :: #{binary() => any()}.

%% Example:
%% create_event_subscription_message() :: #{
%%   <<"Enabled">> => boolean(),
%%   <<"EventCategories">> => list(string()),
%%   <<"SnsTopicArn">> := string(),
%%   <<"SourceIds">> => list(string()),
%%   <<"SourceType">> => string(),
%%   <<"SubscriptionName">> := string(),
%%   <<"Tags">> => list(tag())
%% }
-type create_event_subscription_message() :: #{binary() => any()}.

%% Example:
%% db_security_group_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type db_security_group_not_found_fault() :: #{binary() => any()}.

%% Example:
%% modify_db_cluster_result() :: #{
%%   <<"DBCluster">> => db_cluster()
%% }
-type modify_db_cluster_result() :: #{binary() => any()}.

%% Example:
%% orderable_db_instance_options_message() :: #{
%%   <<"Marker">> => string(),
%%   <<"OrderableDBInstanceOptions">> => list(orderable_db_instance_option())
%% }
-type orderable_db_instance_options_message() :: #{binary() => any()}.

%% Example:
%% describe_event_subscriptions_message() :: #{
%%   <<"Filters">> => list(filter()),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer(),
%%   <<"SubscriptionName">> => string()
%% }
-type describe_event_subscriptions_message() :: #{binary() => any()}.

%% Example:
%% db_cluster_snapshot_already_exists_fault() :: #{
%%   <<"message">> => string()
%% }
-type db_cluster_snapshot_already_exists_fault() :: #{binary() => any()}.

%% Example:
%% modify_db_cluster_snapshot_attribute_result() :: #{
%%   <<"DBClusterSnapshotAttributesResult">> => db_cluster_snapshot_attributes_result()
%% }
-type modify_db_cluster_snapshot_attribute_result() :: #{binary() => any()}.

%% Example:
%% db_cluster_snapshot_attribute() :: #{
%%   <<"AttributeName">> => string(),
%%   <<"AttributeValues">> => list(string())
%% }
-type db_cluster_snapshot_attribute() :: #{binary() => any()}.

%% Example:
%% db_subnet_group_does_not_cover_enough_a_zs() :: #{
%%   <<"message">> => string()
%% }
-type db_subnet_group_does_not_cover_enough_a_zs() :: #{binary() => any()}.

%% Example:
%% pending_modified_values() :: #{
%%   <<"AllocatedStorage">> => integer(),
%%   <<"BackupRetentionPeriod">> => integer(),
%%   <<"CACertificateIdentifier">> => string(),
%%   <<"DBInstanceClass">> => string(),
%%   <<"DBInstanceIdentifier">> => string(),
%%   <<"DBSubnetGroupName">> => string(),
%%   <<"EngineVersion">> => string(),
%%   <<"Iops">> => integer(),
%%   <<"LicenseModel">> => string(),
%%   <<"MasterUserPassword">> => string(),
%%   <<"MultiAZ">> => boolean(),
%%   <<"PendingCloudwatchLogsExports">> => pending_cloudwatch_logs_exports(),
%%   <<"Port">> => integer(),
%%   <<"StorageType">> => string()
%% }
-type pending_modified_values() :: #{binary() => any()}.

%% Example:
%% orderable_db_instance_option() :: #{
%%   <<"AvailabilityZones">> => list(availability_zone()),
%%   <<"DBInstanceClass">> => string(),
%%   <<"Engine">> => string(),
%%   <<"EngineVersion">> => string(),
%%   <<"LicenseModel">> => string(),
%%   <<"StorageType">> => string(),
%%   <<"Vpc">> => boolean()
%% }
-type orderable_db_instance_option() :: #{binary() => any()}.

%% Example:
%% db_cluster_parameter_groups_message() :: #{
%%   <<"DBClusterParameterGroups">> => list(db_cluster_parameter_group()),
%%   <<"Marker">> => string()
%% }
-type db_cluster_parameter_groups_message() :: #{binary() => any()}.

%% Example:
%% describe_db_cluster_parameter_groups_message() :: #{
%%   <<"DBClusterParameterGroupName">> => string(),
%%   <<"Filters">> => list(filter()),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer()
%% }
-type describe_db_cluster_parameter_groups_message() :: #{binary() => any()}.

%% Example:
%% authorization_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type authorization_not_found_fault() :: #{binary() => any()}.

%% Example:
%% db_instance_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type db_instance_not_found_fault() :: #{binary() => any()}.

%% Example:
%% invalid_db_cluster_snapshot_state_fault() :: #{
%%   <<"message">> => string()
%% }
-type invalid_db_cluster_snapshot_state_fault() :: #{binary() => any()}.

%% Example:
%% copy_db_cluster_snapshot_message() :: #{
%%   <<"CopyTags">> => boolean(),
%%   <<"KmsKeyId">> => string(),
%%   <<"PreSignedUrl">> => string(),
%%   <<"SourceDBClusterSnapshotIdentifier">> := string(),
%%   <<"Tags">> => list(tag()),
%%   <<"TargetDBClusterSnapshotIdentifier">> := string()
%% }
-type copy_db_cluster_snapshot_message() :: #{binary() => any()}.

%% Example:
%% global_cluster() :: #{
%%   <<"DatabaseName">> => string(),
%%   <<"DeletionProtection">> => boolean(),
%%   <<"Engine">> => string(),
%%   <<"EngineVersion">> => string(),
%%   <<"GlobalClusterArn">> => string(),
%%   <<"GlobalClusterIdentifier">> => string(),
%%   <<"GlobalClusterMembers">> => list(global_cluster_member()),
%%   <<"GlobalClusterResourceId">> => string(),
%%   <<"Status">> => string(),
%%   <<"StorageEncrypted">> => boolean()
%% }
-type global_cluster() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% create_global_cluster_result() :: #{
%%   <<"GlobalCluster">> => global_cluster()
%% }
-type create_global_cluster_result() :: #{binary() => any()}.

%% Example:
%% certificate_message() :: #{
%%   <<"Certificates">> => list(certificate()),
%%   <<"Marker">> => string()
%% }
-type certificate_message() :: #{binary() => any()}.

%% Example:
%% db_upgrade_dependency_failure_fault() :: #{
%%   <<"message">> => string()
%% }
-type db_upgrade_dependency_failure_fault() :: #{binary() => any()}.

%% Example:
%% global_clusters_message() :: #{
%%   <<"GlobalClusters">> => list(global_cluster()),
%%   <<"Marker">> => string()
%% }
-type global_clusters_message() :: #{binary() => any()}.

%% Example:
%% certificate_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type certificate_not_found_fault() :: #{binary() => any()}.

%% Example:
%% modify_global_cluster_result() :: #{
%%   <<"GlobalCluster">> => global_cluster()
%% }
-type modify_global_cluster_result() :: #{binary() => any()}.

%% Example:
%% remove_from_global_cluster_message() :: #{
%%   <<"DbClusterIdentifier">> := string(),
%%   <<"GlobalClusterIdentifier">> := string()
%% }
-type remove_from_global_cluster_message() :: #{binary() => any()}.

%% Example:
%% reboot_db_instance_message() :: #{
%%   <<"DBInstanceIdentifier">> := string(),
%%   <<"ForceFailover">> => boolean()
%% }
-type reboot_db_instance_message() :: #{binary() => any()}.

%% Example:
%% source_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type source_not_found_fault() :: #{binary() => any()}.

%% Example:
%% db_engine_version_message() :: #{
%%   <<"DBEngineVersions">> => list(db_engine_version()),
%%   <<"Marker">> => string()
%% }
-type db_engine_version_message() :: #{binary() => any()}.

%% Example:
%% modify_global_cluster_message() :: #{
%%   <<"DeletionProtection">> => boolean(),
%%   <<"GlobalClusterIdentifier">> := string(),
%%   <<"NewGlobalClusterIdentifier">> => string()
%% }
-type modify_global_cluster_message() :: #{binary() => any()}.

%% Example:
%% db_engine_version() :: #{
%%   <<"DBEngineDescription">> => string(),
%%   <<"DBEngineVersionDescription">> => string(),
%%   <<"DBParameterGroupFamily">> => string(),
%%   <<"Engine">> => string(),
%%   <<"EngineVersion">> => string(),
%%   <<"ExportableLogTypes">> => list(string()),
%%   <<"SupportedCACertificateIdentifiers">> => list(string()),
%%   <<"SupportsCertificateRotationWithoutRestart">> => boolean(),
%%   <<"SupportsLogExportsToCloudwatchLogs">> => boolean(),
%%   <<"ValidUpgradeTarget">> => list(upgrade_target())
%% }
-type db_engine_version() :: #{binary() => any()}.

%% Example:
%% parameter() :: #{
%%   <<"AllowedValues">> => string(),
%%   <<"ApplyMethod">> => list(any()),
%%   <<"ApplyType">> => string(),
%%   <<"DataType">> => string(),
%%   <<"Description">> => string(),
%%   <<"IsModifiable">> => boolean(),
%%   <<"MinimumEngineVersion">> => string(),
%%   <<"ParameterName">> => string(),
%%   <<"ParameterValue">> => string(),
%%   <<"Source">> => string()
%% }
-type parameter() :: #{binary() => any()}.

%% Example:
%% db_subnet_group_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type db_subnet_group_not_found_fault() :: #{binary() => any()}.

%% Example:
%% invalid_event_subscription_state_fault() :: #{
%%   <<"message">> => string()
%% }
-type invalid_event_subscription_state_fault() :: #{binary() => any()}.

%% Example:
%% create_db_cluster_snapshot_message() :: #{
%%   <<"DBClusterIdentifier">> := string(),
%%   <<"DBClusterSnapshotIdentifier">> := string(),
%%   <<"Tags">> => list(tag())
%% }
-type create_db_cluster_snapshot_message() :: #{binary() => any()}.

%% Example:
%% delete_db_cluster_parameter_group_message() :: #{
%%   <<"DBClusterParameterGroupName">> := string()
%% }
-type delete_db_cluster_parameter_group_message() :: #{binary() => any()}.

%% Example:
%% describe_db_clusters_message() :: #{
%%   <<"DBClusterIdentifier">> => string(),
%%   <<"Filters">> => list(filter()),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer()
%% }
-type describe_db_clusters_message() :: #{binary() => any()}.

%% Example:
%% switchover_global_cluster_message() :: #{
%%   <<"GlobalClusterIdentifier">> := string(),
%%   <<"TargetDbClusterIdentifier">> := string()
%% }
-type switchover_global_cluster_message() :: #{binary() => any()}.

%% Example:
%% modify_db_cluster_parameter_group_message() :: #{
%%   <<"DBClusterParameterGroupName">> := string(),
%%   <<"Parameters">> := list(parameter())
%% }
-type modify_db_cluster_parameter_group_message() :: #{binary() => any()}.

%% Example:
%% subscription_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type subscription_not_found_fault() :: #{binary() => any()}.

%% Example:
%% create_db_cluster_message() :: #{
%%   <<"AvailabilityZones">> => list(string()),
%%   <<"BackupRetentionPeriod">> => integer(),
%%   <<"DBClusterIdentifier">> := string(),
%%   <<"DBClusterParameterGroupName">> => string(),
%%   <<"DBSubnetGroupName">> => string(),
%%   <<"DeletionProtection">> => boolean(),
%%   <<"EnableCloudwatchLogsExports">> => list(string()),
%%   <<"Engine">> := string(),
%%   <<"EngineVersion">> => string(),
%%   <<"GlobalClusterIdentifier">> => string(),
%%   <<"KmsKeyId">> => string(),
%%   <<"ManageMasterUserPassword">> => boolean(),
%%   <<"MasterUserPassword">> => string(),
%%   <<"MasterUserSecretKmsKeyId">> => string(),
%%   <<"MasterUsername">> => string(),
%%   <<"Port">> => integer(),
%%   <<"PreSignedUrl">> => string(),
%%   <<"PreferredBackupWindow">> => string(),
%%   <<"PreferredMaintenanceWindow">> => string(),
%%   <<"StorageEncrypted">> => boolean(),
%%   <<"StorageType">> => string(),
%%   <<"Tags">> => list(tag()),
%%   <<"VpcSecurityGroupIds">> => list(string())
%% }
-type create_db_cluster_message() :: #{binary() => any()}.

%% Example:
%% filter() :: #{
%%   <<"Name">> => string(),
%%   <<"Values">> => list(string())
%% }
-type filter() :: #{binary() => any()}.

%% Example:
%% instance_quota_exceeded_fault() :: #{
%%   <<"message">> => string()
%% }
-type instance_quota_exceeded_fault() :: #{binary() => any()}.

%% Example:
%% create_global_cluster_message() :: #{
%%   <<"DatabaseName">> => string(),
%%   <<"DeletionProtection">> => boolean(),
%%   <<"Engine">> => string(),
%%   <<"EngineVersion">> => string(),
%%   <<"GlobalClusterIdentifier">> := string(),
%%   <<"SourceDBClusterIdentifier">> => string(),
%%   <<"StorageEncrypted">> => boolean()
%% }
-type create_global_cluster_message() :: #{binary() => any()}.

%% Example:
%% storage_quota_exceeded_fault() :: #{
%%   <<"message">> => string()
%% }
-type storage_quota_exceeded_fault() :: #{binary() => any()}.

%% Example:
%% invalid_db_snapshot_state_fault() :: #{
%%   <<"message">> => string()
%% }
-type invalid_db_snapshot_state_fault() :: #{binary() => any()}.

%% Example:
%% create_db_cluster_snapshot_result() :: #{
%%   <<"DBClusterSnapshot">> => db_cluster_snapshot()
%% }
-type create_db_cluster_snapshot_result() :: #{binary() => any()}.

%% Example:
%% endpoint() :: #{
%%   <<"Address">> => string(),
%%   <<"HostedZoneId">> => string(),
%%   <<"Port">> => integer()
%% }
-type endpoint() :: #{binary() => any()}.

%% Example:
%% events_message() :: #{
%%   <<"Events">> => list(event()),
%%   <<"Marker">> => string()
%% }
-type events_message() :: #{binary() => any()}.

%% Example:
%% db_snapshot_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type db_snapshot_not_found_fault() :: #{binary() => any()}.

%% Example:
%% db_cluster_parameter_group_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type db_cluster_parameter_group_not_found_fault() :: #{binary() => any()}.

%% Example:
%% reset_db_cluster_parameter_group_message() :: #{
%%   <<"DBClusterParameterGroupName">> := string(),
%%   <<"Parameters">> => list(parameter()),
%%   <<"ResetAllParameters">> => boolean()
%% }
-type reset_db_cluster_parameter_group_message() :: #{binary() => any()}.

%% Example:
%% delete_global_cluster_message() :: #{
%%   <<"GlobalClusterIdentifier">> := string()
%% }
-type delete_global_cluster_message() :: #{binary() => any()}.

%% Example:
%% delete_event_subscription_message() :: #{
%%   <<"SubscriptionName">> := string()
%% }
-type delete_event_subscription_message() :: #{binary() => any()}.

%% Example:
%% subscription_category_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type subscription_category_not_found_fault() :: #{binary() => any()}.

%% Example:
%% certificate() :: #{
%%   <<"CertificateArn">> => string(),
%%   <<"CertificateIdentifier">> => string(),
%%   <<"CertificateType">> => string(),
%%   <<"Thumbprint">> => string(),
%%   <<"ValidFrom">> => non_neg_integer(),
%%   <<"ValidTill">> => non_neg_integer()
%% }
-type certificate() :: #{binary() => any()}.

%% Example:
%% kms_key_not_accessible_fault() :: #{
%%   <<"message">> => string()
%% }
-type kms_key_not_accessible_fault() :: #{binary() => any()}.

%% Example:
%% invalid_db_parameter_group_state_fault() :: #{
%%   <<"message">> => string()
%% }
-type invalid_db_parameter_group_state_fault() :: #{binary() => any()}.

%% Example:
%% s_n_s_invalid_topic_fault() :: #{
%%   <<"message">> => string()
%% }
-type s_n_s_invalid_topic_fault() :: #{binary() => any()}.

%% Example:
%% invalid_db_cluster_state_fault() :: #{
%%   <<"message">> => string()
%% }
-type invalid_db_cluster_state_fault() :: #{binary() => any()}.

%% Example:
%% create_db_cluster_parameter_group_result() :: #{
%%   <<"DBClusterParameterGroup">> => db_cluster_parameter_group()
%% }
-type create_db_cluster_parameter_group_result() :: #{binary() => any()}.

%% Example:
%% event() :: #{
%%   <<"Date">> => non_neg_integer(),
%%   <<"EventCategories">> => list(string()),
%%   <<"Message">> => string(),
%%   <<"SourceArn">> => string(),
%%   <<"SourceIdentifier">> => string(),
%%   <<"SourceType">> => list(any())
%% }
-type event() :: #{binary() => any()}.

%% Example:
%% create_event_subscription_result() :: #{
%%   <<"EventSubscription">> => event_subscription()
%% }
-type create_event_subscription_result() :: #{binary() => any()}.

%% Example:
%% db_instance_message() :: #{
%%   <<"DBInstances">> => list(db_instance()),
%%   <<"Marker">> => string()
%% }
-type db_instance_message() :: #{binary() => any()}.

%% Example:
%% describe_engine_default_cluster_parameters_message() :: #{
%%   <<"DBParameterGroupFamily">> := string(),
%%   <<"Filters">> => list(filter()),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer()
%% }
-type describe_engine_default_cluster_parameters_message() :: #{binary() => any()}.

%% Example:
%% tag_list_message() :: #{
%%   <<"TagList">> => list(tag())
%% }
-type tag_list_message() :: #{binary() => any()}.

%% Example:
%% db_cluster() :: #{
%%   <<"PreferredBackupWindow">> => string(),
%%   <<"Port">> => integer(),
%%   <<"Engine">> => string(),
%%   <<"DBClusterMembers">> => list(db_cluster_member()),
%%   <<"ClusterCreateTime">> => non_neg_integer(),
%%   <<"MasterUserSecret">> => cluster_master_user_secret(),
%%   <<"DBClusterParameterGroup">> => string(),
%%   <<"HostedZoneId">> => string(),
%%   <<"DBSubnetGroup">> => string(),
%%   <<"ReplicationSourceIdentifier">> => string(),
%%   <<"EarliestRestorableTime">> => non_neg_integer(),
%%   <<"StorageType">> => string(),
%%   <<"MasterUsername">> => string(),
%%   <<"EngineVersion">> => string(),
%%   <<"EnabledCloudwatchLogsExports">> => list(string()),
%%   <<"LatestRestorableTime">> => non_neg_integer(),
%%   <<"CloneGroupId">> => string(),
%%   <<"AvailabilityZones">> => list(string()),
%%   <<"ReaderEndpoint">> => string(),
%%   <<"BackupRetentionPeriod">> => integer(),
%%   <<"AssociatedRoles">> => list(db_cluster_role()),
%%   <<"DBClusterArn">> => string(),
%%   <<"KmsKeyId">> => string(),
%%   <<"DbClusterResourceId">> => string(),
%%   <<"DBClusterIdentifier">> => string(),
%%   <<"Endpoint">> => string(),
%%   <<"PercentProgress">> => string(),
%%   <<"PreferredMaintenanceWindow">> => string(),
%%   <<"VpcSecurityGroups">> => list(vpc_security_group_membership()),
%%   <<"Status">> => string(),
%%   <<"StorageEncrypted">> => boolean(),
%%   <<"ReadReplicaIdentifiers">> => list(string()),
%%   <<"MultiAZ">> => boolean(),
%%   <<"DeletionProtection">> => boolean()
%% }
-type db_cluster() :: #{binary() => any()}.

%% Example:
%% s_n_s_topic_arn_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type s_n_s_topic_arn_not_found_fault() :: #{binary() => any()}.

%% Example:
%% remove_source_identifier_from_subscription_result() :: #{
%%   <<"EventSubscription">> => event_subscription()
%% }
-type remove_source_identifier_from_subscription_result() :: #{binary() => any()}.

%% Example:
%% invalid_db_security_group_state_fault() :: #{
%%   <<"message">> => string()
%% }
-type invalid_db_security_group_state_fault() :: #{binary() => any()}.

%% Example:
%% add_tags_to_resource_message() :: #{
%%   <<"ResourceName">> := string(),
%%   <<"Tags">> := list(tag())
%% }
-type add_tags_to_resource_message() :: #{binary() => any()}.

%% Example:
%% event_categories_message() :: #{
%%   <<"EventCategoriesMapList">> => list(event_categories_map())
%% }
-type event_categories_message() :: #{binary() => any()}.

%% Example:
%% db_cluster_already_exists_fault() :: #{
%%   <<"message">> => string()
%% }
-type db_cluster_already_exists_fault() :: #{binary() => any()}.

%% Example:
%% db_cluster_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type db_cluster_not_found_fault() :: #{binary() => any()}.

%% Example:
%% delete_db_cluster_result() :: #{
%%   <<"DBCluster">> => db_cluster()
%% }
-type delete_db_cluster_result() :: #{binary() => any()}.

%% Example:
%% create_db_subnet_group_message() :: #{
%%   <<"DBSubnetGroupDescription">> := string(),
%%   <<"DBSubnetGroupName">> := string(),
%%   <<"SubnetIds">> := list(string()),
%%   <<"Tags">> => list(tag())
%% }
-type create_db_subnet_group_message() :: #{binary() => any()}.

%% Example:
%% restore_db_cluster_from_snapshot_result() :: #{
%%   <<"DBCluster">> => db_cluster()
%% }
-type restore_db_cluster_from_snapshot_result() :: #{binary() => any()}.

%% Example:
%% insufficient_db_cluster_capacity_fault() :: #{
%%   <<"message">> => string()
%% }
-type insufficient_db_cluster_capacity_fault() :: #{binary() => any()}.

%% Example:
%% db_instance_status_info() :: #{
%%   <<"Message">> => string(),
%%   <<"Normal">> => boolean(),
%%   <<"Status">> => string(),
%%   <<"StatusType">> => string()
%% }
-type db_instance_status_info() :: #{binary() => any()}.

%% Example:
%% describe_global_clusters_message() :: #{
%%   <<"Filters">> => list(filter()),
%%   <<"GlobalClusterIdentifier">> => string(),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer()
%% }
-type describe_global_clusters_message() :: #{binary() => any()}.

%% Example:
%% global_cluster_quota_exceeded_fault() :: #{
%%   <<"message">> => string()
%% }
-type global_cluster_quota_exceeded_fault() :: #{binary() => any()}.

%% Example:
%% describe_events_message() :: #{
%%   <<"Duration">> => integer(),
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"EventCategories">> => list(string()),
%%   <<"Filters">> => list(filter()),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer(),
%%   <<"SourceIdentifier">> => string(),
%%   <<"SourceType">> => list(any()),
%%   <<"StartTime">> => non_neg_integer()
%% }
-type describe_events_message() :: #{binary() => any()}.

%% Example:
%% describe_db_cluster_snapshot_attributes_message() :: #{
%%   <<"DBClusterSnapshotIdentifier">> := string()
%% }
-type describe_db_cluster_snapshot_attributes_message() :: #{binary() => any()}.

%% Example:
%% start_db_cluster_result() :: #{
%%   <<"DBCluster">> => db_cluster()
%% }
-type start_db_cluster_result() :: #{binary() => any()}.

%% Example:
%% global_cluster_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type global_cluster_not_found_fault() :: #{binary() => any()}.

%% Example:
%% db_cluster_snapshot_attributes_result() :: #{
%%   <<"DBClusterSnapshotAttributes">> => list(db_cluster_snapshot_attribute()),
%%   <<"DBClusterSnapshotIdentifier">> => string()
%% }
-type db_cluster_snapshot_attributes_result() :: #{binary() => any()}.

%% Example:
%% modify_event_subscription_result() :: #{
%%   <<"EventSubscription">> => event_subscription()
%% }
-type modify_event_subscription_result() :: #{binary() => any()}.

%% Example:
%% global_cluster_already_exists_fault() :: #{
%%   <<"message">> => string()
%% }
-type global_cluster_already_exists_fault() :: #{binary() => any()}.

%% Example:
%% apply_pending_maintenance_action_result() :: #{
%%   <<"ResourcePendingMaintenanceActions">> => resource_pending_maintenance_actions()
%% }
-type apply_pending_maintenance_action_result() :: #{binary() => any()}.

%% Example:
%% upgrade_target() :: #{
%%   <<"AutoUpgrade">> => boolean(),
%%   <<"Description">> => string(),
%%   <<"Engine">> => string(),
%%   <<"EngineVersion">> => string(),
%%   <<"IsMajorVersionUpgrade">> => boolean()
%% }
-type upgrade_target() :: #{binary() => any()}.

%% Example:
%% delete_event_subscription_result() :: #{
%%   <<"EventSubscription">> => event_subscription()
%% }
-type delete_event_subscription_result() :: #{binary() => any()}.

%% Example:
%% certificate_details() :: #{
%%   <<"CAIdentifier">> => string(),
%%   <<"ValidTill">> => non_neg_integer()
%% }
-type certificate_details() :: #{binary() => any()}.

%% Example:
%% describe_db_subnet_groups_message() :: #{
%%   <<"DBSubnetGroupName">> => string(),
%%   <<"Filters">> => list(filter()),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer()
%% }
-type describe_db_subnet_groups_message() :: #{binary() => any()}.

%% Example:
%% modify_db_subnet_group_result() :: #{
%%   <<"DBSubnetGroup">> => db_subnet_group()
%% }
-type modify_db_subnet_group_result() :: #{binary() => any()}.

%% Example:
%% db_subnet_group() :: #{
%%   <<"DBSubnetGroupArn">> => string(),
%%   <<"DBSubnetGroupDescription">> => string(),
%%   <<"DBSubnetGroupName">> => string(),
%%   <<"SubnetGroupStatus">> => string(),
%%   <<"Subnets">> => list(subnet()),
%%   <<"VpcId">> => string()
%% }
-type db_subnet_group() :: #{binary() => any()}.

%% Example:
%% invalid_db_subnet_state_fault() :: #{
%%   <<"message">> => string()
%% }
-type invalid_db_subnet_state_fault() :: #{binary() => any()}.

%% Example:
%% failover_db_cluster_message() :: #{
%%   <<"DBClusterIdentifier">> => string(),
%%   <<"TargetDBInstanceIdentifier">> => string()
%% }
-type failover_db_cluster_message() :: #{binary() => any()}.

%% Example:
%% delete_db_subnet_group_message() :: #{
%%   <<"DBSubnetGroupName">> := string()
%% }
-type delete_db_subnet_group_message() :: #{binary() => any()}.

%% Example:
%% remove_from_global_cluster_result() :: #{
%%   <<"GlobalCluster">> => global_cluster()
%% }
-type remove_from_global_cluster_result() :: #{binary() => any()}.

%% Example:
%% db_cluster_member() :: #{
%%   <<"DBClusterParameterGroupStatus">> => string(),
%%   <<"DBInstanceIdentifier">> => string(),
%%   <<"IsClusterWriter">> => boolean(),
%%   <<"PromotionTier">> => integer()
%% }
-type db_cluster_member() :: #{binary() => any()}.

%% Example:
%% remove_tags_from_resource_message() :: #{
%%   <<"ResourceName">> := string(),
%%   <<"TagKeys">> := list(string())
%% }
-type remove_tags_from_resource_message() :: #{binary() => any()}.

%% Example:
%% event_subscription_quota_exceeded_fault() :: #{
%%   <<"message">> => string()
%% }
-type event_subscription_quota_exceeded_fault() :: #{binary() => any()}.

%% Example:
%% modify_db_cluster_message() :: #{
%%   <<"AllowMajorVersionUpgrade">> => boolean(),
%%   <<"ApplyImmediately">> => boolean(),
%%   <<"BackupRetentionPeriod">> => integer(),
%%   <<"CloudwatchLogsExportConfiguration">> => cloudwatch_logs_export_configuration(),
%%   <<"DBClusterIdentifier">> := string(),
%%   <<"DBClusterParameterGroupName">> => string(),
%%   <<"DeletionProtection">> => boolean(),
%%   <<"EngineVersion">> => string(),
%%   <<"ManageMasterUserPassword">> => boolean(),
%%   <<"MasterUserPassword">> => string(),
%%   <<"MasterUserSecretKmsKeyId">> => string(),
%%   <<"NewDBClusterIdentifier">> => string(),
%%   <<"Port">> => integer(),
%%   <<"PreferredBackupWindow">> => string(),
%%   <<"PreferredMaintenanceWindow">> => string(),
%%   <<"RotateMasterUserPassword">> => boolean(),
%%   <<"StorageType">> => string(),
%%   <<"VpcSecurityGroupIds">> => list(string())
%% }
-type modify_db_cluster_message() :: #{binary() => any()}.

%% Example:
%% describe_event_categories_message() :: #{
%%   <<"Filters">> => list(filter()),
%%   <<"SourceType">> => string()
%% }
-type describe_event_categories_message() :: #{binary() => any()}.

%% Example:
%% db_cluster_parameter_group() :: #{
%%   <<"DBClusterParameterGroupArn">> => string(),
%%   <<"DBClusterParameterGroupName">> => string(),
%%   <<"DBParameterGroupFamily">> => string(),
%%   <<"Description">> => string()
%% }
-type db_cluster_parameter_group() :: #{binary() => any()}.

%% Example:
%% stop_db_cluster_message() :: #{
%%   <<"DBClusterIdentifier">> := string()
%% }
-type stop_db_cluster_message() :: #{binary() => any()}.

%% Example:
%% db_cluster_snapshot_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type db_cluster_snapshot_not_found_fault() :: #{binary() => any()}.

%% Example:
%% s_n_s_no_authorization_fault() :: #{
%%   <<"message">> => string()
%% }
-type s_n_s_no_authorization_fault() :: #{binary() => any()}.

%% Example:
%% vpc_security_group_membership() :: #{
%%   <<"Status">> => string(),
%%   <<"VpcSecurityGroupId">> => string()
%% }
-type vpc_security_group_membership() :: #{binary() => any()}.

%% Example:
%% delete_db_cluster_snapshot_message() :: #{
%%   <<"DBClusterSnapshotIdentifier">> := string()
%% }
-type delete_db_cluster_snapshot_message() :: #{binary() => any()}.

%% Example:
%% failover_db_cluster_result() :: #{
%%   <<"DBCluster">> => db_cluster()
%% }
-type failover_db_cluster_result() :: #{binary() => any()}.

%% Example:
%% modify_db_instance_message() :: #{
%%   <<"ApplyImmediately">> => boolean(),
%%   <<"AutoMinorVersionUpgrade">> => boolean(),
%%   <<"CACertificateIdentifier">> => string(),
%%   <<"CertificateRotationRestart">> => boolean(),
%%   <<"CopyTagsToSnapshot">> => boolean(),
%%   <<"DBInstanceClass">> => string(),
%%   <<"DBInstanceIdentifier">> := string(),
%%   <<"EnablePerformanceInsights">> => boolean(),
%%   <<"NewDBInstanceIdentifier">> => string(),
%%   <<"PerformanceInsightsKMSKeyId">> => string(),
%%   <<"PreferredMaintenanceWindow">> => string(),
%%   <<"PromotionTier">> => integer()
%% }
-type modify_db_instance_message() :: #{binary() => any()}.

%% Example:
%% create_db_instance_result() :: #{
%%   <<"DBInstance">> => db_instance()
%% }
-type create_db_instance_result() :: #{binary() => any()}.

%% Example:
%% failover_global_cluster_message() :: #{
%%   <<"AllowDataLoss">> => boolean(),
%%   <<"GlobalClusterIdentifier">> := string(),
%%   <<"Switchover">> => boolean(),
%%   <<"TargetDbClusterIdentifier">> := string()
%% }
-type failover_global_cluster_message() :: #{binary() => any()}.

%% Example:
%% db_cluster_parameter_group_details() :: #{
%%   <<"Marker">> => string(),
%%   <<"Parameters">> => list(parameter())
%% }
-type db_cluster_parameter_group_details() :: #{binary() => any()}.

%% Example:
%% stop_db_cluster_result() :: #{
%%   <<"DBCluster">> => db_cluster()
%% }
-type stop_db_cluster_result() :: #{binary() => any()}.

%% Example:
%% pending_maintenance_actions_message() :: #{
%%   <<"Marker">> => string(),
%%   <<"PendingMaintenanceActions">> => list(resource_pending_maintenance_actions())
%% }
-type pending_maintenance_actions_message() :: #{binary() => any()}.

%% Example:
%% invalid_db_instance_state_fault() :: #{
%%   <<"message">> => string()
%% }
-type invalid_db_instance_state_fault() :: #{binary() => any()}.

%% Example:
%% insufficient_storage_cluster_capacity_fault() :: #{
%%   <<"message">> => string()
%% }
-type insufficient_storage_cluster_capacity_fault() :: #{binary() => any()}.

-type add_source_identifier_to_subscription_errors() ::
    subscription_not_found_fault() | 
    source_not_found_fault().

-type add_tags_to_resource_errors() ::
    db_cluster_not_found_fault() | 
    db_snapshot_not_found_fault() | 
    db_instance_not_found_fault().

-type apply_pending_maintenance_action_errors() ::
    invalid_db_instance_state_fault() | 
    invalid_db_cluster_state_fault() | 
    resource_not_found_fault().

-type copy_db_cluster_parameter_group_errors() ::
    db_parameter_group_already_exists_fault() | 
    db_parameter_group_quota_exceeded_fault() | 
    db_parameter_group_not_found_fault().

-type copy_db_cluster_snapshot_errors() ::
    db_cluster_snapshot_not_found_fault() | 
    invalid_db_cluster_state_fault() | 
    kms_key_not_accessible_fault() | 
    invalid_db_cluster_snapshot_state_fault() | 
    db_cluster_snapshot_already_exists_fault() | 
    snapshot_quota_exceeded_fault().

-type create_db_cluster_errors() ::
    insufficient_storage_cluster_capacity_fault() | 
    invalid_db_instance_state_fault() | 
    global_cluster_not_found_fault() | 
    db_cluster_not_found_fault() | 
    db_cluster_already_exists_fault() | 
    invalid_db_cluster_state_fault() | 
    kms_key_not_accessible_fault() | 
    db_cluster_parameter_group_not_found_fault() | 
    storage_quota_exceeded_fault() | 
    db_subnet_group_not_found_fault() | 
    db_instance_not_found_fault() | 
    db_subnet_group_does_not_cover_enough_a_zs() | 
    invalid_vpc_network_state_fault() | 
    invalid_global_cluster_state_fault() | 
    invalid_subnet() | 
    invalid_db_subnet_group_state_fault() | 
    db_cluster_quota_exceeded_fault().

-type create_db_cluster_parameter_group_errors() ::
    db_parameter_group_already_exists_fault() | 
    db_parameter_group_quota_exceeded_fault().

-type create_db_cluster_snapshot_errors() ::
    db_cluster_not_found_fault() | 
    invalid_db_cluster_state_fault() | 
    invalid_db_cluster_snapshot_state_fault() | 
    db_cluster_snapshot_already_exists_fault() | 
    snapshot_quota_exceeded_fault().

-type create_db_instance_errors() ::
    db_cluster_not_found_fault() | 
    invalid_db_cluster_state_fault() | 
    kms_key_not_accessible_fault() | 
    storage_quota_exceeded_fault() | 
    instance_quota_exceeded_fault() | 
    db_subnet_group_not_found_fault() | 
    authorization_not_found_fault() | 
    db_subnet_group_does_not_cover_enough_a_zs() | 
    db_security_group_not_found_fault() | 
    invalid_vpc_network_state_fault() | 
    storage_type_not_supported_fault() | 
    invalid_subnet() | 
    insufficient_db_instance_capacity_fault() | 
    db_instance_already_exists_fault() | 
    db_parameter_group_not_found_fault().

-type create_db_subnet_group_errors() ::
    db_subnet_group_does_not_cover_enough_a_zs() | 
    db_subnet_group_quota_exceeded_fault() | 
    db_subnet_quota_exceeded_fault() | 
    invalid_subnet() | 
    db_subnet_group_already_exists_fault().

-type create_event_subscription_errors() ::
    s_n_s_no_authorization_fault() | 
    event_subscription_quota_exceeded_fault() | 
    s_n_s_topic_arn_not_found_fault() | 
    s_n_s_invalid_topic_fault() | 
    subscription_category_not_found_fault() | 
    source_not_found_fault() | 
    subscription_already_exist_fault().

-type create_global_cluster_errors() ::
    global_cluster_already_exists_fault() | 
    global_cluster_quota_exceeded_fault() | 
    db_cluster_not_found_fault() | 
    invalid_db_cluster_state_fault().

-type delete_db_cluster_errors() ::
    db_cluster_not_found_fault() | 
    invalid_db_cluster_state_fault() | 
    invalid_db_cluster_snapshot_state_fault() | 
    db_cluster_snapshot_already_exists_fault() | 
    snapshot_quota_exceeded_fault().

-type delete_db_cluster_parameter_group_errors() ::
    invalid_db_parameter_group_state_fault() | 
    db_parameter_group_not_found_fault().

-type delete_db_cluster_snapshot_errors() ::
    db_cluster_snapshot_not_found_fault() | 
    invalid_db_cluster_snapshot_state_fault().

-type delete_db_instance_errors() ::
    invalid_db_instance_state_fault() | 
    invalid_db_cluster_state_fault() | 
    db_instance_not_found_fault() | 
    db_snapshot_already_exists_fault() | 
    snapshot_quota_exceeded_fault().

-type delete_db_subnet_group_errors() ::
    invalid_db_subnet_state_fault() | 
    db_subnet_group_not_found_fault() | 
    invalid_db_subnet_group_state_fault().

-type delete_event_subscription_errors() ::
    subscription_not_found_fault() | 
    invalid_event_subscription_state_fault().

-type delete_global_cluster_errors() ::
    global_cluster_not_found_fault() | 
    invalid_global_cluster_state_fault().

-type describe_certificates_errors() ::
    certificate_not_found_fault().

-type describe_db_cluster_parameter_groups_errors() ::
    db_parameter_group_not_found_fault().

-type describe_db_cluster_parameters_errors() ::
    db_parameter_group_not_found_fault().

-type describe_db_cluster_snapshot_attributes_errors() ::
    db_cluster_snapshot_not_found_fault().

-type describe_db_cluster_snapshots_errors() ::
    db_cluster_snapshot_not_found_fault().

-type describe_db_clusters_errors() ::
    db_cluster_not_found_fault().

-type describe_db_instances_errors() ::
    db_instance_not_found_fault().

-type describe_db_subnet_groups_errors() ::
    db_subnet_group_not_found_fault().

-type describe_event_subscriptions_errors() ::
    subscription_not_found_fault().

-type describe_global_clusters_errors() ::
    global_cluster_not_found_fault().

-type describe_pending_maintenance_actions_errors() ::
    resource_not_found_fault().

-type failover_db_cluster_errors() ::
    invalid_db_instance_state_fault() | 
    db_cluster_not_found_fault() | 
    invalid_db_cluster_state_fault().

-type failover_global_cluster_errors() ::
    global_cluster_not_found_fault() | 
    db_cluster_not_found_fault() | 
    invalid_db_cluster_state_fault() | 
    invalid_global_cluster_state_fault().

-type list_tags_for_resource_errors() ::
    db_cluster_not_found_fault() | 
    db_snapshot_not_found_fault() | 
    db_instance_not_found_fault().

-type modify_db_cluster_errors() ::
    invalid_db_instance_state_fault() | 
    db_cluster_not_found_fault() | 
    db_cluster_already_exists_fault() | 
    invalid_db_security_group_state_fault() | 
    invalid_db_cluster_state_fault() | 
    db_cluster_parameter_group_not_found_fault() | 
    storage_quota_exceeded_fault() | 
    db_subnet_group_not_found_fault() | 
    invalid_vpc_network_state_fault() | 
    invalid_subnet() | 
    invalid_db_subnet_group_state_fault().

-type modify_db_cluster_parameter_group_errors() ::
    invalid_db_parameter_group_state_fault() | 
    db_parameter_group_not_found_fault().

-type modify_db_cluster_snapshot_attribute_errors() ::
    db_cluster_snapshot_not_found_fault() | 
    invalid_db_cluster_snapshot_state_fault() | 
    shared_snapshot_quota_exceeded_fault().

-type modify_db_instance_errors() ::
    invalid_db_instance_state_fault() | 
    invalid_db_security_group_state_fault() | 
    storage_quota_exceeded_fault() | 
    certificate_not_found_fault() | 
    db_upgrade_dependency_failure_fault() | 
    db_instance_not_found_fault() | 
    authorization_not_found_fault() | 
    db_security_group_not_found_fault() | 
    invalid_vpc_network_state_fault() | 
    storage_type_not_supported_fault() | 
    insufficient_db_instance_capacity_fault() | 
    db_instance_already_exists_fault() | 
    db_parameter_group_not_found_fault().

-type modify_db_subnet_group_errors() ::
    db_subnet_group_not_found_fault() | 
    db_subnet_group_does_not_cover_enough_a_zs() | 
    db_subnet_quota_exceeded_fault() | 
    invalid_subnet() | 
    subnet_already_in_use().

-type modify_event_subscription_errors() ::
    s_n_s_no_authorization_fault() | 
    event_subscription_quota_exceeded_fault() | 
    s_n_s_topic_arn_not_found_fault() | 
    s_n_s_invalid_topic_fault() | 
    subscription_category_not_found_fault() | 
    subscription_not_found_fault().

-type modify_global_cluster_errors() ::
    global_cluster_not_found_fault() | 
    invalid_global_cluster_state_fault().

-type reboot_db_instance_errors() ::
    invalid_db_instance_state_fault() | 
    db_instance_not_found_fault().

-type remove_from_global_cluster_errors() ::
    global_cluster_not_found_fault() | 
    db_cluster_not_found_fault() | 
    invalid_global_cluster_state_fault().

-type remove_source_identifier_from_subscription_errors() ::
    subscription_not_found_fault() | 
    source_not_found_fault().

-type remove_tags_from_resource_errors() ::
    db_cluster_not_found_fault() | 
    db_snapshot_not_found_fault() | 
    db_instance_not_found_fault().

-type reset_db_cluster_parameter_group_errors() ::
    invalid_db_parameter_group_state_fault() | 
    db_parameter_group_not_found_fault().

-type restore_db_cluster_from_snapshot_errors() ::
    insufficient_storage_cluster_capacity_fault() | 
    db_cluster_snapshot_not_found_fault() | 
    insufficient_db_cluster_capacity_fault() | 
    db_cluster_already_exists_fault() | 
    kms_key_not_accessible_fault() | 
    db_snapshot_not_found_fault() | 
    invalid_db_snapshot_state_fault() | 
    storage_quota_exceeded_fault() | 
    db_subnet_group_not_found_fault() | 
    invalid_db_cluster_snapshot_state_fault() | 
    invalid_vpc_network_state_fault() | 
    invalid_subnet() | 
    invalid_restore_fault() | 
    db_cluster_quota_exceeded_fault().

-type restore_db_cluster_to_point_in_time_errors() ::
    insufficient_storage_cluster_capacity_fault() | 
    db_cluster_snapshot_not_found_fault() | 
    insufficient_db_cluster_capacity_fault() | 
    db_cluster_not_found_fault() | 
    db_cluster_already_exists_fault() | 
    invalid_db_cluster_state_fault() | 
    kms_key_not_accessible_fault() | 
    invalid_db_snapshot_state_fault() | 
    storage_quota_exceeded_fault() | 
    db_subnet_group_not_found_fault() | 
    invalid_db_cluster_snapshot_state_fault() | 
    invalid_vpc_network_state_fault() | 
    invalid_subnet() | 
    invalid_restore_fault() | 
    db_cluster_quota_exceeded_fault().

-type start_db_cluster_errors() ::
    invalid_db_instance_state_fault() | 
    db_cluster_not_found_fault() | 
    invalid_db_cluster_state_fault().

-type stop_db_cluster_errors() ::
    invalid_db_instance_state_fault() | 
    db_cluster_not_found_fault() | 
    invalid_db_cluster_state_fault().

-type switchover_global_cluster_errors() ::
    global_cluster_not_found_fault() | 
    db_cluster_not_found_fault() | 
    invalid_db_cluster_state_fault() | 
    invalid_global_cluster_state_fault().

%%====================================================================
%% API
%%====================================================================

%% @doc Adds a source identifier to an existing event notification
%% subscription.
-spec add_source_identifier_to_subscription(aws_client:aws_client(), add_source_identifier_to_subscription_message()) ->
    {ok, add_source_identifier_to_subscription_result(), tuple()} |
    {error, any()} |
    {error, add_source_identifier_to_subscription_errors(), tuple()}.
add_source_identifier_to_subscription(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_source_identifier_to_subscription(Client, Input, []).

-spec add_source_identifier_to_subscription(aws_client:aws_client(), add_source_identifier_to_subscription_message(), proplists:proplist()) ->
    {ok, add_source_identifier_to_subscription_result(), tuple()} |
    {error, any()} |
    {error, add_source_identifier_to_subscription_errors(), tuple()}.
add_source_identifier_to_subscription(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddSourceIdentifierToSubscription">>, Input, Options).

%% @doc Adds metadata tags to an Amazon DocumentDB resource.
%%
%% You can use these tags
%% with cost allocation reporting to track costs that are associated
%% with Amazon DocumentDB resources or in a `Condition' statement in
%% an Identity and Access Management (IAM) policy for Amazon DocumentDB.
-spec add_tags_to_resource(aws_client:aws_client(), add_tags_to_resource_message()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, add_tags_to_resource_errors(), tuple()}.
add_tags_to_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_tags_to_resource(Client, Input, []).

-spec add_tags_to_resource(aws_client:aws_client(), add_tags_to_resource_message(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, add_tags_to_resource_errors(), tuple()}.
add_tags_to_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddTagsToResource">>, Input, Options).

%% @doc Applies a pending maintenance action to a resource (for example,
%% to an Amazon DocumentDB instance).
-spec apply_pending_maintenance_action(aws_client:aws_client(), apply_pending_maintenance_action_message()) ->
    {ok, apply_pending_maintenance_action_result(), tuple()} |
    {error, any()} |
    {error, apply_pending_maintenance_action_errors(), tuple()}.
apply_pending_maintenance_action(Client, Input)
  when is_map(Client), is_map(Input) ->
    apply_pending_maintenance_action(Client, Input, []).

-spec apply_pending_maintenance_action(aws_client:aws_client(), apply_pending_maintenance_action_message(), proplists:proplist()) ->
    {ok, apply_pending_maintenance_action_result(), tuple()} |
    {error, any()} |
    {error, apply_pending_maintenance_action_errors(), tuple()}.
apply_pending_maintenance_action(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ApplyPendingMaintenanceAction">>, Input, Options).

%% @doc Copies the specified cluster parameter group.
-spec copy_db_cluster_parameter_group(aws_client:aws_client(), copy_db_cluster_parameter_group_message()) ->
    {ok, copy_db_cluster_parameter_group_result(), tuple()} |
    {error, any()} |
    {error, copy_db_cluster_parameter_group_errors(), tuple()}.
copy_db_cluster_parameter_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    copy_db_cluster_parameter_group(Client, Input, []).

-spec copy_db_cluster_parameter_group(aws_client:aws_client(), copy_db_cluster_parameter_group_message(), proplists:proplist()) ->
    {ok, copy_db_cluster_parameter_group_result(), tuple()} |
    {error, any()} |
    {error, copy_db_cluster_parameter_group_errors(), tuple()}.
copy_db_cluster_parameter_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CopyDBClusterParameterGroup">>, Input, Options).

%% @doc Copies a snapshot of a cluster.
%%
%% To copy a cluster snapshot from a shared manual cluster snapshot,
%% `SourceDBClusterSnapshotIdentifier' must be the Amazon
%% Resource Name (ARN) of the shared cluster snapshot. You can only
%% copy a shared DB cluster snapshot, whether encrypted or not, in the
%% same Amazon Web Services Region.
%%
%% To cancel the copy operation after it is in progress, delete the
%% target cluster snapshot identified by
%% `TargetDBClusterSnapshotIdentifier' while that cluster
%% snapshot is in the copying status.
-spec copy_db_cluster_snapshot(aws_client:aws_client(), copy_db_cluster_snapshot_message()) ->
    {ok, copy_db_cluster_snapshot_result(), tuple()} |
    {error, any()} |
    {error, copy_db_cluster_snapshot_errors(), tuple()}.
copy_db_cluster_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    copy_db_cluster_snapshot(Client, Input, []).

-spec copy_db_cluster_snapshot(aws_client:aws_client(), copy_db_cluster_snapshot_message(), proplists:proplist()) ->
    {ok, copy_db_cluster_snapshot_result(), tuple()} |
    {error, any()} |
    {error, copy_db_cluster_snapshot_errors(), tuple()}.
copy_db_cluster_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CopyDBClusterSnapshot">>, Input, Options).

%% @doc Creates a new Amazon DocumentDB cluster.
-spec create_db_cluster(aws_client:aws_client(), create_db_cluster_message()) ->
    {ok, create_db_cluster_result(), tuple()} |
    {error, any()} |
    {error, create_db_cluster_errors(), tuple()}.
create_db_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_db_cluster(Client, Input, []).

-spec create_db_cluster(aws_client:aws_client(), create_db_cluster_message(), proplists:proplist()) ->
    {ok, create_db_cluster_result(), tuple()} |
    {error, any()} |
    {error, create_db_cluster_errors(), tuple()}.
create_db_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDBCluster">>, Input, Options).

%% @doc Creates a new cluster parameter group.
%%
%% Parameters in a cluster parameter group apply to all of the
%% instances in a cluster.
%%
%% A cluster parameter group is initially created with the default
%% parameters for the database engine used by instances in the cluster.
%% In Amazon DocumentDB, you cannot make modifications directly to the
%% `default.docdb3.6' cluster parameter group. If your
%% Amazon DocumentDB cluster is using the default cluster parameter group and
%% you
%% want to modify a value in it, you must first
%% create a new parameter group:
%% https://docs.aws.amazon.com/documentdb/latest/developerguide/cluster_parameter_group-create.html
%% or
%% copy an existing parameter group:
%% https://docs.aws.amazon.com/documentdb/latest/developerguide/cluster_parameter_group-copy.html,
%% modify it, and then apply the modified parameter group to your
%% cluster. For the new cluster parameter group and associated settings
%% to take effect, you must then reboot the instances in the cluster
%% without failover. For more information,
%% see
%% Modifying Amazon DocumentDB Cluster Parameter Groups:
%% https://docs.aws.amazon.com/documentdb/latest/developerguide/cluster_parameter_group-modify.html.
-spec create_db_cluster_parameter_group(aws_client:aws_client(), create_db_cluster_parameter_group_message()) ->
    {ok, create_db_cluster_parameter_group_result(), tuple()} |
    {error, any()} |
    {error, create_db_cluster_parameter_group_errors(), tuple()}.
create_db_cluster_parameter_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_db_cluster_parameter_group(Client, Input, []).

-spec create_db_cluster_parameter_group(aws_client:aws_client(), create_db_cluster_parameter_group_message(), proplists:proplist()) ->
    {ok, create_db_cluster_parameter_group_result(), tuple()} |
    {error, any()} |
    {error, create_db_cluster_parameter_group_errors(), tuple()}.
create_db_cluster_parameter_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDBClusterParameterGroup">>, Input, Options).

%% @doc Creates a snapshot of a cluster.
-spec create_db_cluster_snapshot(aws_client:aws_client(), create_db_cluster_snapshot_message()) ->
    {ok, create_db_cluster_snapshot_result(), tuple()} |
    {error, any()} |
    {error, create_db_cluster_snapshot_errors(), tuple()}.
create_db_cluster_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_db_cluster_snapshot(Client, Input, []).

-spec create_db_cluster_snapshot(aws_client:aws_client(), create_db_cluster_snapshot_message(), proplists:proplist()) ->
    {ok, create_db_cluster_snapshot_result(), tuple()} |
    {error, any()} |
    {error, create_db_cluster_snapshot_errors(), tuple()}.
create_db_cluster_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDBClusterSnapshot">>, Input, Options).

%% @doc Creates a new instance.
-spec create_db_instance(aws_client:aws_client(), create_db_instance_message()) ->
    {ok, create_db_instance_result(), tuple()} |
    {error, any()} |
    {error, create_db_instance_errors(), tuple()}.
create_db_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_db_instance(Client, Input, []).

-spec create_db_instance(aws_client:aws_client(), create_db_instance_message(), proplists:proplist()) ->
    {ok, create_db_instance_result(), tuple()} |
    {error, any()} |
    {error, create_db_instance_errors(), tuple()}.
create_db_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDBInstance">>, Input, Options).

%% @doc Creates a new subnet group.
%%
%% subnet groups must contain at least one subnet in at
%% least two Availability Zones in the Amazon Web Services Region.
-spec create_db_subnet_group(aws_client:aws_client(), create_db_subnet_group_message()) ->
    {ok, create_db_subnet_group_result(), tuple()} |
    {error, any()} |
    {error, create_db_subnet_group_errors(), tuple()}.
create_db_subnet_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_db_subnet_group(Client, Input, []).

-spec create_db_subnet_group(aws_client:aws_client(), create_db_subnet_group_message(), proplists:proplist()) ->
    {ok, create_db_subnet_group_result(), tuple()} |
    {error, any()} |
    {error, create_db_subnet_group_errors(), tuple()}.
create_db_subnet_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDBSubnetGroup">>, Input, Options).

%% @doc Creates an Amazon DocumentDB event notification subscription.
%%
%% This action requires a topic Amazon Resource Name (ARN) created by using
%% the Amazon DocumentDB console, the Amazon SNS console, or the Amazon SNS
%% API. To obtain an ARN with Amazon SNS, you must create a topic in Amazon
%% SNS and subscribe to the topic. The ARN is displayed in the Amazon SNS
%% console.
%%
%% You can specify the type of source (`SourceType') that you want to be
%% notified of. You can also provide a list of Amazon DocumentDB sources
%% (`SourceIds') that trigger the events, and you can provide a list of
%% event categories (`EventCategories') for events that you want to be
%% notified of. For example, you can specify `SourceType = db-instance',
%% `SourceIds = mydbinstance1, mydbinstance2' and `EventCategories =
%% Availability, Backup'.
%%
%% If you specify both the `SourceType' and `SourceIds' (such as
%% `SourceType = db-instance' and `SourceIdentifier =
%% myDBInstance1'), you are notified of all the `db-instance' events
%% for the specified source. If you specify a `SourceType' but do not
%% specify a `SourceIdentifier', you receive notice of the events for
%% that source type for all your Amazon DocumentDB sources. If you do not
%% specify either the `SourceType' or the `SourceIdentifier', you are
%% notified of events generated from all Amazon DocumentDB sources belonging
%% to your customer account.
-spec create_event_subscription(aws_client:aws_client(), create_event_subscription_message()) ->
    {ok, create_event_subscription_result(), tuple()} |
    {error, any()} |
    {error, create_event_subscription_errors(), tuple()}.
create_event_subscription(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_event_subscription(Client, Input, []).

-spec create_event_subscription(aws_client:aws_client(), create_event_subscription_message(), proplists:proplist()) ->
    {ok, create_event_subscription_result(), tuple()} |
    {error, any()} |
    {error, create_event_subscription_errors(), tuple()}.
create_event_subscription(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateEventSubscription">>, Input, Options).

%% @doc Creates an Amazon DocumentDB global cluster that can span multiple
%% multiple Amazon Web Services Regions.
%%
%% The global cluster contains one primary cluster with read-write
%% capability, and up-to give read-only secondary clusters. Global clusters
%% uses storage-based fast replication across regions with latencies less
%% than one second, using dedicated infrastructure with no impact to your
%% workload’s performance.
%%
%% You can create a global cluster that is initially empty, and then add a
%% primary and a secondary to it. Or you can specify an existing cluster
%% during the create operation, and this cluster becomes the primary of the
%% global cluster.
%%
%% This action only applies to Amazon DocumentDB clusters.
-spec create_global_cluster(aws_client:aws_client(), create_global_cluster_message()) ->
    {ok, create_global_cluster_result(), tuple()} |
    {error, any()} |
    {error, create_global_cluster_errors(), tuple()}.
create_global_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_global_cluster(Client, Input, []).

-spec create_global_cluster(aws_client:aws_client(), create_global_cluster_message(), proplists:proplist()) ->
    {ok, create_global_cluster_result(), tuple()} |
    {error, any()} |
    {error, create_global_cluster_errors(), tuple()}.
create_global_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateGlobalCluster">>, Input, Options).

%% @doc Deletes a previously provisioned cluster.
%%
%% When you delete a cluster, all automated backups for that cluster are
%% deleted and can't be recovered. Manual DB cluster snapshots of the
%% specified cluster are not deleted.
-spec delete_db_cluster(aws_client:aws_client(), delete_db_cluster_message()) ->
    {ok, delete_db_cluster_result(), tuple()} |
    {error, any()} |
    {error, delete_db_cluster_errors(), tuple()}.
delete_db_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_db_cluster(Client, Input, []).

-spec delete_db_cluster(aws_client:aws_client(), delete_db_cluster_message(), proplists:proplist()) ->
    {ok, delete_db_cluster_result(), tuple()} |
    {error, any()} |
    {error, delete_db_cluster_errors(), tuple()}.
delete_db_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDBCluster">>, Input, Options).

%% @doc Deletes a specified cluster parameter group.
%%
%% The cluster parameter group to be deleted can't be associated with any
%% clusters.
-spec delete_db_cluster_parameter_group(aws_client:aws_client(), delete_db_cluster_parameter_group_message()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_db_cluster_parameter_group_errors(), tuple()}.
delete_db_cluster_parameter_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_db_cluster_parameter_group(Client, Input, []).

-spec delete_db_cluster_parameter_group(aws_client:aws_client(), delete_db_cluster_parameter_group_message(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_db_cluster_parameter_group_errors(), tuple()}.
delete_db_cluster_parameter_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDBClusterParameterGroup">>, Input, Options).

%% @doc Deletes a cluster snapshot.
%%
%% If the snapshot is being copied, the copy operation is terminated.
%%
%% The cluster snapshot must be in the `available' state to be deleted.
-spec delete_db_cluster_snapshot(aws_client:aws_client(), delete_db_cluster_snapshot_message()) ->
    {ok, delete_db_cluster_snapshot_result(), tuple()} |
    {error, any()} |
    {error, delete_db_cluster_snapshot_errors(), tuple()}.
delete_db_cluster_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_db_cluster_snapshot(Client, Input, []).

-spec delete_db_cluster_snapshot(aws_client:aws_client(), delete_db_cluster_snapshot_message(), proplists:proplist()) ->
    {ok, delete_db_cluster_snapshot_result(), tuple()} |
    {error, any()} |
    {error, delete_db_cluster_snapshot_errors(), tuple()}.
delete_db_cluster_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDBClusterSnapshot">>, Input, Options).

%% @doc Deletes a previously provisioned instance.
-spec delete_db_instance(aws_client:aws_client(), delete_db_instance_message()) ->
    {ok, delete_db_instance_result(), tuple()} |
    {error, any()} |
    {error, delete_db_instance_errors(), tuple()}.
delete_db_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_db_instance(Client, Input, []).

-spec delete_db_instance(aws_client:aws_client(), delete_db_instance_message(), proplists:proplist()) ->
    {ok, delete_db_instance_result(), tuple()} |
    {error, any()} |
    {error, delete_db_instance_errors(), tuple()}.
delete_db_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDBInstance">>, Input, Options).

%% @doc Deletes a subnet group.
%%
%% The specified database subnet group must not be associated with any DB
%% instances.
-spec delete_db_subnet_group(aws_client:aws_client(), delete_db_subnet_group_message()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_db_subnet_group_errors(), tuple()}.
delete_db_subnet_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_db_subnet_group(Client, Input, []).

-spec delete_db_subnet_group(aws_client:aws_client(), delete_db_subnet_group_message(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_db_subnet_group_errors(), tuple()}.
delete_db_subnet_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDBSubnetGroup">>, Input, Options).

%% @doc Deletes an Amazon DocumentDB event notification subscription.
-spec delete_event_subscription(aws_client:aws_client(), delete_event_subscription_message()) ->
    {ok, delete_event_subscription_result(), tuple()} |
    {error, any()} |
    {error, delete_event_subscription_errors(), tuple()}.
delete_event_subscription(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_event_subscription(Client, Input, []).

-spec delete_event_subscription(aws_client:aws_client(), delete_event_subscription_message(), proplists:proplist()) ->
    {ok, delete_event_subscription_result(), tuple()} |
    {error, any()} |
    {error, delete_event_subscription_errors(), tuple()}.
delete_event_subscription(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteEventSubscription">>, Input, Options).

%% @doc Deletes a global cluster.
%%
%% The primary and secondary clusters must already be detached or deleted
%% before attempting to delete a global cluster.
%%
%% This action only applies to Amazon DocumentDB clusters.
-spec delete_global_cluster(aws_client:aws_client(), delete_global_cluster_message()) ->
    {ok, delete_global_cluster_result(), tuple()} |
    {error, any()} |
    {error, delete_global_cluster_errors(), tuple()}.
delete_global_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_global_cluster(Client, Input, []).

-spec delete_global_cluster(aws_client:aws_client(), delete_global_cluster_message(), proplists:proplist()) ->
    {ok, delete_global_cluster_result(), tuple()} |
    {error, any()} |
    {error, delete_global_cluster_errors(), tuple()}.
delete_global_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteGlobalCluster">>, Input, Options).

%% @doc Returns a list of certificate authority (CA) certificates provided by
%% Amazon DocumentDB for this Amazon Web Services account.
-spec describe_certificates(aws_client:aws_client(), describe_certificates_message()) ->
    {ok, certificate_message(), tuple()} |
    {error, any()} |
    {error, describe_certificates_errors(), tuple()}.
describe_certificates(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_certificates(Client, Input, []).

-spec describe_certificates(aws_client:aws_client(), describe_certificates_message(), proplists:proplist()) ->
    {ok, certificate_message(), tuple()} |
    {error, any()} |
    {error, describe_certificates_errors(), tuple()}.
describe_certificates(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeCertificates">>, Input, Options).

%% @doc Returns a list of `DBClusterParameterGroup' descriptions.
%%
%% If a `DBClusterParameterGroupName' parameter is specified, the list
%% contains only the description of the specified cluster parameter group.
-spec describe_db_cluster_parameter_groups(aws_client:aws_client(), describe_db_cluster_parameter_groups_message()) ->
    {ok, db_cluster_parameter_groups_message(), tuple()} |
    {error, any()} |
    {error, describe_db_cluster_parameter_groups_errors(), tuple()}.
describe_db_cluster_parameter_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_db_cluster_parameter_groups(Client, Input, []).

-spec describe_db_cluster_parameter_groups(aws_client:aws_client(), describe_db_cluster_parameter_groups_message(), proplists:proplist()) ->
    {ok, db_cluster_parameter_groups_message(), tuple()} |
    {error, any()} |
    {error, describe_db_cluster_parameter_groups_errors(), tuple()}.
describe_db_cluster_parameter_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDBClusterParameterGroups">>, Input, Options).

%% @doc Returns the detailed parameter list for a particular cluster
%% parameter
%% group.
-spec describe_db_cluster_parameters(aws_client:aws_client(), describe_db_cluster_parameters_message()) ->
    {ok, db_cluster_parameter_group_details(), tuple()} |
    {error, any()} |
    {error, describe_db_cluster_parameters_errors(), tuple()}.
describe_db_cluster_parameters(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_db_cluster_parameters(Client, Input, []).

-spec describe_db_cluster_parameters(aws_client:aws_client(), describe_db_cluster_parameters_message(), proplists:proplist()) ->
    {ok, db_cluster_parameter_group_details(), tuple()} |
    {error, any()} |
    {error, describe_db_cluster_parameters_errors(), tuple()}.
describe_db_cluster_parameters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDBClusterParameters">>, Input, Options).

%% @doc Returns a list of cluster snapshot attribute names and values for a
%% manual DB
%% cluster snapshot.
%%
%% When you share snapshots with other Amazon Web Services accounts,
%% `DescribeDBClusterSnapshotAttributes' returns the `restore'
%% attribute and a list of IDs for the Amazon Web Services accounts that are
%% authorized to copy or restore the manual cluster snapshot. If `all' is
%% included in the list of values for the `restore' attribute, then the
%% manual cluster snapshot is public and can be copied or restored by all
%% Amazon Web Services accounts.
-spec describe_db_cluster_snapshot_attributes(aws_client:aws_client(), describe_db_cluster_snapshot_attributes_message()) ->
    {ok, describe_db_cluster_snapshot_attributes_result(), tuple()} |
    {error, any()} |
    {error, describe_db_cluster_snapshot_attributes_errors(), tuple()}.
describe_db_cluster_snapshot_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_db_cluster_snapshot_attributes(Client, Input, []).

-spec describe_db_cluster_snapshot_attributes(aws_client:aws_client(), describe_db_cluster_snapshot_attributes_message(), proplists:proplist()) ->
    {ok, describe_db_cluster_snapshot_attributes_result(), tuple()} |
    {error, any()} |
    {error, describe_db_cluster_snapshot_attributes_errors(), tuple()}.
describe_db_cluster_snapshot_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDBClusterSnapshotAttributes">>, Input, Options).

%% @doc Returns information about cluster snapshots.
%%
%% This API operation supports pagination.
-spec describe_db_cluster_snapshots(aws_client:aws_client(), describe_db_cluster_snapshots_message()) ->
    {ok, db_cluster_snapshot_message(), tuple()} |
    {error, any()} |
    {error, describe_db_cluster_snapshots_errors(), tuple()}.
describe_db_cluster_snapshots(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_db_cluster_snapshots(Client, Input, []).

-spec describe_db_cluster_snapshots(aws_client:aws_client(), describe_db_cluster_snapshots_message(), proplists:proplist()) ->
    {ok, db_cluster_snapshot_message(), tuple()} |
    {error, any()} |
    {error, describe_db_cluster_snapshots_errors(), tuple()}.
describe_db_cluster_snapshots(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDBClusterSnapshots">>, Input, Options).

%% @doc Returns information about provisioned Amazon DocumentDB clusters.
%%
%% This API
%% operation supports pagination. For certain management features
%% such as cluster and instance lifecycle management, Amazon DocumentDB
%% leverages
%% operational technology that is shared with Amazon RDS and Amazon
%% Neptune. Use the `filterName=engine,Values=docdb' filter
%% parameter to return only Amazon DocumentDB clusters.
-spec describe_db_clusters(aws_client:aws_client(), describe_db_clusters_message()) ->
    {ok, db_cluster_message(), tuple()} |
    {error, any()} |
    {error, describe_db_clusters_errors(), tuple()}.
describe_db_clusters(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_db_clusters(Client, Input, []).

-spec describe_db_clusters(aws_client:aws_client(), describe_db_clusters_message(), proplists:proplist()) ->
    {ok, db_cluster_message(), tuple()} |
    {error, any()} |
    {error, describe_db_clusters_errors(), tuple()}.
describe_db_clusters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDBClusters">>, Input, Options).

%% @doc Returns a list of the available engines.
-spec describe_db_engine_versions(aws_client:aws_client(), describe_db_engine_versions_message()) ->
    {ok, db_engine_version_message(), tuple()} |
    {error, any()}.
describe_db_engine_versions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_db_engine_versions(Client, Input, []).

-spec describe_db_engine_versions(aws_client:aws_client(), describe_db_engine_versions_message(), proplists:proplist()) ->
    {ok, db_engine_version_message(), tuple()} |
    {error, any()}.
describe_db_engine_versions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDBEngineVersions">>, Input, Options).

%% @doc Returns information about provisioned Amazon DocumentDB instances.
%%
%% This API supports pagination.
-spec describe_db_instances(aws_client:aws_client(), describe_db_instances_message()) ->
    {ok, db_instance_message(), tuple()} |
    {error, any()} |
    {error, describe_db_instances_errors(), tuple()}.
describe_db_instances(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_db_instances(Client, Input, []).

-spec describe_db_instances(aws_client:aws_client(), describe_db_instances_message(), proplists:proplist()) ->
    {ok, db_instance_message(), tuple()} |
    {error, any()} |
    {error, describe_db_instances_errors(), tuple()}.
describe_db_instances(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDBInstances">>, Input, Options).

%% @doc Returns a list of `DBSubnetGroup' descriptions.
%%
%% If a
%% `DBSubnetGroupName' is specified, the list will contain only the
%% descriptions of the specified `DBSubnetGroup'.
-spec describe_db_subnet_groups(aws_client:aws_client(), describe_db_subnet_groups_message()) ->
    {ok, db_subnet_group_message(), tuple()} |
    {error, any()} |
    {error, describe_db_subnet_groups_errors(), tuple()}.
describe_db_subnet_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_db_subnet_groups(Client, Input, []).

-spec describe_db_subnet_groups(aws_client:aws_client(), describe_db_subnet_groups_message(), proplists:proplist()) ->
    {ok, db_subnet_group_message(), tuple()} |
    {error, any()} |
    {error, describe_db_subnet_groups_errors(), tuple()}.
describe_db_subnet_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDBSubnetGroups">>, Input, Options).

%% @doc Returns the default engine and system parameter information for the
%% cluster database
%% engine.
-spec describe_engine_default_cluster_parameters(aws_client:aws_client(), describe_engine_default_cluster_parameters_message()) ->
    {ok, describe_engine_default_cluster_parameters_result(), tuple()} |
    {error, any()}.
describe_engine_default_cluster_parameters(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_engine_default_cluster_parameters(Client, Input, []).

-spec describe_engine_default_cluster_parameters(aws_client:aws_client(), describe_engine_default_cluster_parameters_message(), proplists:proplist()) ->
    {ok, describe_engine_default_cluster_parameters_result(), tuple()} |
    {error, any()}.
describe_engine_default_cluster_parameters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEngineDefaultClusterParameters">>, Input, Options).

%% @doc Displays a list of categories for all event source types, or, if
%% specified, for a
%% specified source type.
-spec describe_event_categories(aws_client:aws_client(), describe_event_categories_message()) ->
    {ok, event_categories_message(), tuple()} |
    {error, any()}.
describe_event_categories(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_event_categories(Client, Input, []).

-spec describe_event_categories(aws_client:aws_client(), describe_event_categories_message(), proplists:proplist()) ->
    {ok, event_categories_message(), tuple()} |
    {error, any()}.
describe_event_categories(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEventCategories">>, Input, Options).

%% @doc Lists all the subscription descriptions for a customer account.
%%
%% The description for a subscription includes `SubscriptionName',
%% `SNSTopicARN', `CustomerID', `SourceType', `SourceID',
%% `CreationTime', and `Status'.
%%
%% If you specify a `SubscriptionName', lists the description for that
%% subscription.
-spec describe_event_subscriptions(aws_client:aws_client(), describe_event_subscriptions_message()) ->
    {ok, event_subscriptions_message(), tuple()} |
    {error, any()} |
    {error, describe_event_subscriptions_errors(), tuple()}.
describe_event_subscriptions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_event_subscriptions(Client, Input, []).

-spec describe_event_subscriptions(aws_client:aws_client(), describe_event_subscriptions_message(), proplists:proplist()) ->
    {ok, event_subscriptions_message(), tuple()} |
    {error, any()} |
    {error, describe_event_subscriptions_errors(), tuple()}.
describe_event_subscriptions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEventSubscriptions">>, Input, Options).

%% @doc Returns events related to instances, security groups, snapshots, and
%% DB parameter groups for the past 14 days.
%%
%% You can obtain events specific to a particular DB instance, security
%% group, snapshot, or parameter group by providing the name as a parameter.
%% By default, the events of the past hour are returned.
-spec describe_events(aws_client:aws_client(), describe_events_message()) ->
    {ok, events_message(), tuple()} |
    {error, any()}.
describe_events(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_events(Client, Input, []).

-spec describe_events(aws_client:aws_client(), describe_events_message(), proplists:proplist()) ->
    {ok, events_message(), tuple()} |
    {error, any()}.
describe_events(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEvents">>, Input, Options).

%% @doc Returns information about Amazon DocumentDB global clusters.
%%
%% This API supports pagination.
%%
%% This action only applies to Amazon DocumentDB clusters.
-spec describe_global_clusters(aws_client:aws_client(), describe_global_clusters_message()) ->
    {ok, global_clusters_message(), tuple()} |
    {error, any()} |
    {error, describe_global_clusters_errors(), tuple()}.
describe_global_clusters(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_global_clusters(Client, Input, []).

-spec describe_global_clusters(aws_client:aws_client(), describe_global_clusters_message(), proplists:proplist()) ->
    {ok, global_clusters_message(), tuple()} |
    {error, any()} |
    {error, describe_global_clusters_errors(), tuple()}.
describe_global_clusters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeGlobalClusters">>, Input, Options).

%% @doc Returns a list of orderable instance options for the specified
%% engine.
-spec describe_orderable_db_instance_options(aws_client:aws_client(), describe_orderable_db_instance_options_message()) ->
    {ok, orderable_db_instance_options_message(), tuple()} |
    {error, any()}.
describe_orderable_db_instance_options(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_orderable_db_instance_options(Client, Input, []).

-spec describe_orderable_db_instance_options(aws_client:aws_client(), describe_orderable_db_instance_options_message(), proplists:proplist()) ->
    {ok, orderable_db_instance_options_message(), tuple()} |
    {error, any()}.
describe_orderable_db_instance_options(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeOrderableDBInstanceOptions">>, Input, Options).

%% @doc Returns a list of resources (for example, instances) that have at
%% least one pending
%% maintenance action.
-spec describe_pending_maintenance_actions(aws_client:aws_client(), describe_pending_maintenance_actions_message()) ->
    {ok, pending_maintenance_actions_message(), tuple()} |
    {error, any()} |
    {error, describe_pending_maintenance_actions_errors(), tuple()}.
describe_pending_maintenance_actions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_pending_maintenance_actions(Client, Input, []).

-spec describe_pending_maintenance_actions(aws_client:aws_client(), describe_pending_maintenance_actions_message(), proplists:proplist()) ->
    {ok, pending_maintenance_actions_message(), tuple()} |
    {error, any()} |
    {error, describe_pending_maintenance_actions_errors(), tuple()}.
describe_pending_maintenance_actions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribePendingMaintenanceActions">>, Input, Options).

%% @doc Forces a failover for a cluster.
%%
%% A failover for a cluster promotes one of the Amazon DocumentDB replicas
%% (read-only instances) in the cluster to be the primary instance (the
%% cluster writer).
%%
%% If the primary instance fails, Amazon DocumentDB automatically fails over
%% to an Amazon DocumentDB replica, if one exists. You can force a failover
%% when you want to simulate a failure of a primary instance for testing.
-spec failover_db_cluster(aws_client:aws_client(), failover_db_cluster_message()) ->
    {ok, failover_db_cluster_result(), tuple()} |
    {error, any()} |
    {error, failover_db_cluster_errors(), tuple()}.
failover_db_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    failover_db_cluster(Client, Input, []).

-spec failover_db_cluster(aws_client:aws_client(), failover_db_cluster_message(), proplists:proplist()) ->
    {ok, failover_db_cluster_result(), tuple()} |
    {error, any()} |
    {error, failover_db_cluster_errors(), tuple()}.
failover_db_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"FailoverDBCluster">>, Input, Options).

%% @doc Promotes the specified secondary DB cluster to be the primary DB
%% cluster in the global cluster when failing over a global cluster occurs.
%%
%% Use this operation to respond to an unplanned event, such as a regional
%% disaster in the primary region.
%% Failing over can result in a loss of write transaction data that
%% wasn't replicated to the chosen secondary before the failover event
%% occurred.
%% However, the recovery process that promotes a DB instance on the chosen
%% seconday DB cluster to be the primary writer DB instance guarantees that
%% the data is in a transactionally consistent state.
-spec failover_global_cluster(aws_client:aws_client(), failover_global_cluster_message()) ->
    {ok, failover_global_cluster_result(), tuple()} |
    {error, any()} |
    {error, failover_global_cluster_errors(), tuple()}.
failover_global_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    failover_global_cluster(Client, Input, []).

-spec failover_global_cluster(aws_client:aws_client(), failover_global_cluster_message(), proplists:proplist()) ->
    {ok, failover_global_cluster_result(), tuple()} |
    {error, any()} |
    {error, failover_global_cluster_errors(), tuple()}.
failover_global_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"FailoverGlobalCluster">>, Input, Options).

%% @doc Lists all tags on an Amazon DocumentDB resource.
-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_message()) ->
    {ok, tag_list_message(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).

-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_message(), proplists:proplist()) ->
    {ok, tag_list_message(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Modifies a setting for an Amazon DocumentDB cluster.
%%
%% You can change one or more database
%% configuration parameters by specifying these parameters and the new values
%% in the
%% request.
-spec modify_db_cluster(aws_client:aws_client(), modify_db_cluster_message()) ->
    {ok, modify_db_cluster_result(), tuple()} |
    {error, any()} |
    {error, modify_db_cluster_errors(), tuple()}.
modify_db_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_db_cluster(Client, Input, []).

-spec modify_db_cluster(aws_client:aws_client(), modify_db_cluster_message(), proplists:proplist()) ->
    {ok, modify_db_cluster_result(), tuple()} |
    {error, any()} |
    {error, modify_db_cluster_errors(), tuple()}.
modify_db_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyDBCluster">>, Input, Options).

%% @doc Modifies the parameters of a cluster parameter group.
%%
%% To modify more than one
%% parameter, submit a list of the following: `ParameterName',
%% `ParameterValue', and `ApplyMethod'. A maximum of 20
%% parameters can be modified in a single request.
%%
%% Changes to dynamic parameters are applied immediately. Changes to static
%% parameters require a reboot or maintenance window
%%
%% before the change can take effect.
%%
%% After you create a cluster parameter group, you should wait at least 5
%% minutes
%% before creating your first cluster that uses that cluster parameter group
%% as
%% the default parameter group. This allows Amazon DocumentDB to fully
%% complete the create action
%% before the parameter group is used as the default for a new cluster. This
%% step is
%% especially important for parameters that are critical when creating the
%% default
%% database for a cluster, such as the character set for the default database
%% defined by the `character_set_database' parameter.
-spec modify_db_cluster_parameter_group(aws_client:aws_client(), modify_db_cluster_parameter_group_message()) ->
    {ok, db_cluster_parameter_group_name_message(), tuple()} |
    {error, any()} |
    {error, modify_db_cluster_parameter_group_errors(), tuple()}.
modify_db_cluster_parameter_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_db_cluster_parameter_group(Client, Input, []).

-spec modify_db_cluster_parameter_group(aws_client:aws_client(), modify_db_cluster_parameter_group_message(), proplists:proplist()) ->
    {ok, db_cluster_parameter_group_name_message(), tuple()} |
    {error, any()} |
    {error, modify_db_cluster_parameter_group_errors(), tuple()}.
modify_db_cluster_parameter_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyDBClusterParameterGroup">>, Input, Options).

%% @doc Adds an attribute and values to, or removes an attribute and values
%% from, a manual cluster snapshot.
%%
%% To share a manual cluster snapshot with other Amazon Web Services
%% accounts, specify `restore' as the `AttributeName', and use the
%% `ValuesToAdd' parameter to add a list of IDs of the Amazon Web
%% Services accounts that are authorized to restore the manual cluster
%% snapshot. Use the value `all' to make the manual cluster snapshot
%% public, which means that it can be copied or restored by all Amazon Web
%% Services accounts. Do not add the `all' value for any manual cluster
%% snapshots that contain private information that you don't want
%% available to all Amazon Web Services accounts. If a manual cluster
%% snapshot is encrypted, it can be shared, but only by specifying a list of
%% authorized Amazon Web Services account IDs for the `ValuesToAdd'
%% parameter. You can't use `all' as a value for that parameter in
%% this case.
-spec modify_db_cluster_snapshot_attribute(aws_client:aws_client(), modify_db_cluster_snapshot_attribute_message()) ->
    {ok, modify_db_cluster_snapshot_attribute_result(), tuple()} |
    {error, any()} |
    {error, modify_db_cluster_snapshot_attribute_errors(), tuple()}.
modify_db_cluster_snapshot_attribute(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_db_cluster_snapshot_attribute(Client, Input, []).

-spec modify_db_cluster_snapshot_attribute(aws_client:aws_client(), modify_db_cluster_snapshot_attribute_message(), proplists:proplist()) ->
    {ok, modify_db_cluster_snapshot_attribute_result(), tuple()} |
    {error, any()} |
    {error, modify_db_cluster_snapshot_attribute_errors(), tuple()}.
modify_db_cluster_snapshot_attribute(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyDBClusterSnapshotAttribute">>, Input, Options).

%% @doc Modifies settings for an instance.
%%
%% You can change one or more database configuration parameters by specifying
%% these parameters and the new values in the request.
-spec modify_db_instance(aws_client:aws_client(), modify_db_instance_message()) ->
    {ok, modify_db_instance_result(), tuple()} |
    {error, any()} |
    {error, modify_db_instance_errors(), tuple()}.
modify_db_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_db_instance(Client, Input, []).

-spec modify_db_instance(aws_client:aws_client(), modify_db_instance_message(), proplists:proplist()) ->
    {ok, modify_db_instance_result(), tuple()} |
    {error, any()} |
    {error, modify_db_instance_errors(), tuple()}.
modify_db_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyDBInstance">>, Input, Options).

%% @doc Modifies an existing subnet group.
%%
%% subnet groups must contain at least one subnet in at least two
%% Availability Zones in the Amazon Web Services Region.
-spec modify_db_subnet_group(aws_client:aws_client(), modify_db_subnet_group_message()) ->
    {ok, modify_db_subnet_group_result(), tuple()} |
    {error, any()} |
    {error, modify_db_subnet_group_errors(), tuple()}.
modify_db_subnet_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_db_subnet_group(Client, Input, []).

-spec modify_db_subnet_group(aws_client:aws_client(), modify_db_subnet_group_message(), proplists:proplist()) ->
    {ok, modify_db_subnet_group_result(), tuple()} |
    {error, any()} |
    {error, modify_db_subnet_group_errors(), tuple()}.
modify_db_subnet_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyDBSubnetGroup">>, Input, Options).

%% @doc Modifies an existing Amazon DocumentDB event notification
%% subscription.
-spec modify_event_subscription(aws_client:aws_client(), modify_event_subscription_message()) ->
    {ok, modify_event_subscription_result(), tuple()} |
    {error, any()} |
    {error, modify_event_subscription_errors(), tuple()}.
modify_event_subscription(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_event_subscription(Client, Input, []).

-spec modify_event_subscription(aws_client:aws_client(), modify_event_subscription_message(), proplists:proplist()) ->
    {ok, modify_event_subscription_result(), tuple()} |
    {error, any()} |
    {error, modify_event_subscription_errors(), tuple()}.
modify_event_subscription(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyEventSubscription">>, Input, Options).

%% @doc Modify a setting for an Amazon DocumentDB global cluster.
%%
%% You can change one or more configuration parameters (for example: deletion
%% protection), or the global cluster identifier by specifying these
%% parameters and the new values in the request.
%%
%% This action only applies to Amazon DocumentDB clusters.
-spec modify_global_cluster(aws_client:aws_client(), modify_global_cluster_message()) ->
    {ok, modify_global_cluster_result(), tuple()} |
    {error, any()} |
    {error, modify_global_cluster_errors(), tuple()}.
modify_global_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_global_cluster(Client, Input, []).

-spec modify_global_cluster(aws_client:aws_client(), modify_global_cluster_message(), proplists:proplist()) ->
    {ok, modify_global_cluster_result(), tuple()} |
    {error, any()} |
    {error, modify_global_cluster_errors(), tuple()}.
modify_global_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyGlobalCluster">>, Input, Options).

%% @doc You might need to reboot your instance, usually for maintenance
%% reasons.
%%
%% For
%% example, if you make certain changes, or if you change the cluster
%% parameter group
%% that is associated with the instance, you must reboot the instance for the
%% changes to
%% take effect.
%%
%% Rebooting an instance restarts the database engine service. Rebooting an
%% instance
%% results in a momentary outage, during which the instance status is set to
%% rebooting.
-spec reboot_db_instance(aws_client:aws_client(), reboot_db_instance_message()) ->
    {ok, reboot_db_instance_result(), tuple()} |
    {error, any()} |
    {error, reboot_db_instance_errors(), tuple()}.
reboot_db_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    reboot_db_instance(Client, Input, []).

-spec reboot_db_instance(aws_client:aws_client(), reboot_db_instance_message(), proplists:proplist()) ->
    {ok, reboot_db_instance_result(), tuple()} |
    {error, any()} |
    {error, reboot_db_instance_errors(), tuple()}.
reboot_db_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RebootDBInstance">>, Input, Options).

%% @doc Detaches an Amazon DocumentDB secondary cluster from a global
%% cluster.
%%
%% The cluster becomes a standalone cluster with read-write capability
%% instead of being read-only and receiving data from a primary in a
%% different region.
%%
%% This action only applies to Amazon DocumentDB clusters.
-spec remove_from_global_cluster(aws_client:aws_client(), remove_from_global_cluster_message()) ->
    {ok, remove_from_global_cluster_result(), tuple()} |
    {error, any()} |
    {error, remove_from_global_cluster_errors(), tuple()}.
remove_from_global_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    remove_from_global_cluster(Client, Input, []).

-spec remove_from_global_cluster(aws_client:aws_client(), remove_from_global_cluster_message(), proplists:proplist()) ->
    {ok, remove_from_global_cluster_result(), tuple()} |
    {error, any()} |
    {error, remove_from_global_cluster_errors(), tuple()}.
remove_from_global_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RemoveFromGlobalCluster">>, Input, Options).

%% @doc Removes a source identifier from an existing Amazon DocumentDB event
%% notification
%% subscription.
-spec remove_source_identifier_from_subscription(aws_client:aws_client(), remove_source_identifier_from_subscription_message()) ->
    {ok, remove_source_identifier_from_subscription_result(), tuple()} |
    {error, any()} |
    {error, remove_source_identifier_from_subscription_errors(), tuple()}.
remove_source_identifier_from_subscription(Client, Input)
  when is_map(Client), is_map(Input) ->
    remove_source_identifier_from_subscription(Client, Input, []).

-spec remove_source_identifier_from_subscription(aws_client:aws_client(), remove_source_identifier_from_subscription_message(), proplists:proplist()) ->
    {ok, remove_source_identifier_from_subscription_result(), tuple()} |
    {error, any()} |
    {error, remove_source_identifier_from_subscription_errors(), tuple()}.
remove_source_identifier_from_subscription(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RemoveSourceIdentifierFromSubscription">>, Input, Options).

%% @doc Removes metadata tags from an Amazon DocumentDB resource.
-spec remove_tags_from_resource(aws_client:aws_client(), remove_tags_from_resource_message()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, remove_tags_from_resource_errors(), tuple()}.
remove_tags_from_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    remove_tags_from_resource(Client, Input, []).

-spec remove_tags_from_resource(aws_client:aws_client(), remove_tags_from_resource_message(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, remove_tags_from_resource_errors(), tuple()}.
remove_tags_from_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RemoveTagsFromResource">>, Input, Options).

%% @doc Modifies the parameters of a cluster parameter group to the default
%% value.
%%
%% To
%% reset specific parameters, submit a list of the following:
%% `ParameterName'
%% and `ApplyMethod'. To reset the entire cluster parameter group,
%% specify
%% the `DBClusterParameterGroupName' and `ResetAllParameters'
%% parameters.
%%
%% When you reset the entire group, dynamic parameters are updated
%% immediately and
%% static parameters are set to `pending-reboot' to take effect on the
%% next DB
%% instance reboot.
-spec reset_db_cluster_parameter_group(aws_client:aws_client(), reset_db_cluster_parameter_group_message()) ->
    {ok, db_cluster_parameter_group_name_message(), tuple()} |
    {error, any()} |
    {error, reset_db_cluster_parameter_group_errors(), tuple()}.
reset_db_cluster_parameter_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    reset_db_cluster_parameter_group(Client, Input, []).

-spec reset_db_cluster_parameter_group(aws_client:aws_client(), reset_db_cluster_parameter_group_message(), proplists:proplist()) ->
    {ok, db_cluster_parameter_group_name_message(), tuple()} |
    {error, any()} |
    {error, reset_db_cluster_parameter_group_errors(), tuple()}.
reset_db_cluster_parameter_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ResetDBClusterParameterGroup">>, Input, Options).

%% @doc Creates a new cluster from a snapshot or cluster snapshot.
%%
%% If a snapshot is specified, the target cluster is created from the source
%% DB snapshot with a default configuration and default security group.
%%
%% If a cluster snapshot is specified, the target cluster is created from the
%% source cluster restore point with the same configuration as the original
%% source DB cluster, except that the new cluster is created with the default
%% security group.
-spec restore_db_cluster_from_snapshot(aws_client:aws_client(), restore_db_cluster_from_snapshot_message()) ->
    {ok, restore_db_cluster_from_snapshot_result(), tuple()} |
    {error, any()} |
    {error, restore_db_cluster_from_snapshot_errors(), tuple()}.
restore_db_cluster_from_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    restore_db_cluster_from_snapshot(Client, Input, []).

-spec restore_db_cluster_from_snapshot(aws_client:aws_client(), restore_db_cluster_from_snapshot_message(), proplists:proplist()) ->
    {ok, restore_db_cluster_from_snapshot_result(), tuple()} |
    {error, any()} |
    {error, restore_db_cluster_from_snapshot_errors(), tuple()}.
restore_db_cluster_from_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RestoreDBClusterFromSnapshot">>, Input, Options).

%% @doc Restores a cluster to an arbitrary point in time.
%%
%% Users can restore to any point in
%% time before `LatestRestorableTime' for up to
%% `BackupRetentionPeriod' days. The target cluster is created from the
%% source cluster with the same configuration as the original cluster, except
%% that
%% the new cluster is created with the default security group.
-spec restore_db_cluster_to_point_in_time(aws_client:aws_client(), restore_db_cluster_to_point_in_time_message()) ->
    {ok, restore_db_cluster_to_point_in_time_result(), tuple()} |
    {error, any()} |
    {error, restore_db_cluster_to_point_in_time_errors(), tuple()}.
restore_db_cluster_to_point_in_time(Client, Input)
  when is_map(Client), is_map(Input) ->
    restore_db_cluster_to_point_in_time(Client, Input, []).

-spec restore_db_cluster_to_point_in_time(aws_client:aws_client(), restore_db_cluster_to_point_in_time_message(), proplists:proplist()) ->
    {ok, restore_db_cluster_to_point_in_time_result(), tuple()} |
    {error, any()} |
    {error, restore_db_cluster_to_point_in_time_errors(), tuple()}.
restore_db_cluster_to_point_in_time(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RestoreDBClusterToPointInTime">>, Input, Options).

%% @doc Restarts the stopped cluster that is specified by
%% `DBClusterIdentifier'.
%%
%% For more information, see Stopping and
%% Starting an Amazon DocumentDB Cluster:
%% https://docs.aws.amazon.com/documentdb/latest/developerguide/db-cluster-stop-start.html.
-spec start_db_cluster(aws_client:aws_client(), start_db_cluster_message()) ->
    {ok, start_db_cluster_result(), tuple()} |
    {error, any()} |
    {error, start_db_cluster_errors(), tuple()}.
start_db_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_db_cluster(Client, Input, []).

-spec start_db_cluster(aws_client:aws_client(), start_db_cluster_message(), proplists:proplist()) ->
    {ok, start_db_cluster_result(), tuple()} |
    {error, any()} |
    {error, start_db_cluster_errors(), tuple()}.
start_db_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartDBCluster">>, Input, Options).

%% @doc Stops the running cluster that is specified by
%% `DBClusterIdentifier'.
%%
%% The
%% cluster must be in the available state. For more information, see
%% Stopping and
%% Starting an Amazon DocumentDB Cluster:
%% https://docs.aws.amazon.com/documentdb/latest/developerguide/db-cluster-stop-start.html.
-spec stop_db_cluster(aws_client:aws_client(), stop_db_cluster_message()) ->
    {ok, stop_db_cluster_result(), tuple()} |
    {error, any()} |
    {error, stop_db_cluster_errors(), tuple()}.
stop_db_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_db_cluster(Client, Input, []).

-spec stop_db_cluster(aws_client:aws_client(), stop_db_cluster_message(), proplists:proplist()) ->
    {ok, stop_db_cluster_result(), tuple()} |
    {error, any()} |
    {error, stop_db_cluster_errors(), tuple()}.
stop_db_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopDBCluster">>, Input, Options).

%% @doc Switches over the specified secondary Amazon DocumentDB cluster to be
%% the new primary Amazon DocumentDB cluster in the global database cluster.
-spec switchover_global_cluster(aws_client:aws_client(), switchover_global_cluster_message()) ->
    {ok, switchover_global_cluster_result(), tuple()} |
    {error, any()} |
    {error, switchover_global_cluster_errors(), tuple()}.
switchover_global_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    switchover_global_cluster(Client, Input, []).

-spec switchover_global_cluster(aws_client:aws_client(), switchover_global_cluster_message(), proplists:proplist()) ->
    {ok, switchover_global_cluster_result(), tuple()} |
    {error, any()} |
    {error, switchover_global_cluster_errors(), tuple()}.
switchover_global_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SwitchoverGlobalCluster">>, Input, Options).

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
    Client1 = Client#{service => <<"rds">>},
    Host = build_host(<<"rds">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-www-form-urlencoded">>}
    ],

    Input = Input0#{ <<"Action">> => Action
                   , <<"Version">> => <<"2014-10-31">>
                   },

    Payload = aws_util:encode_query(Input),
    SignedHeaders = aws_request:sign_request(Client1, <<"POST">>, URL, Headers, Payload),
    Response = hackney:request(post, URL, SignedHeaders, Payload, Options),
    handle_response(Response).

handle_response({ok, 200, ResponseHeaders, Client}) ->
    case hackney:body(Client) of
        {ok, <<>>} ->
            {ok, undefined, {200, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = aws_util:decode_xml(Body),
            {ok, Result, {200, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}) ->
    {ok, Body} = hackney:body(Client),
    Error = aws_util:decode_xml(Body),
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
