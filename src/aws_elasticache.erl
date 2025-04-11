%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon ElastiCache
%%
%% Amazon ElastiCache is a web service that makes it easier to set up,
%% operate, and scale
%% a distributed cache in the cloud.
%%
%% With ElastiCache, customers get all of the benefits of a high-performance,
%% in-memory
%% cache with less of the administrative burden involved in launching and
%% managing a
%% distributed cache. The service makes setup, scaling, and cluster failure
%% handling much
%% simpler than in a self-managed cache deployment.
%%
%% In addition, through integration with Amazon CloudWatch, customers get
%% enhanced
%% visibility into the key performance statistics associated with their cache
%% and can
%% receive alarms if a part of their cache runs hot.
-module(aws_elasticache).

-export([add_tags_to_resource/2,
         add_tags_to_resource/3,
         authorize_cache_security_group_ingress/2,
         authorize_cache_security_group_ingress/3,
         batch_apply_update_action/2,
         batch_apply_update_action/3,
         batch_stop_update_action/2,
         batch_stop_update_action/3,
         complete_migration/2,
         complete_migration/3,
         copy_serverless_cache_snapshot/2,
         copy_serverless_cache_snapshot/3,
         copy_snapshot/2,
         copy_snapshot/3,
         create_cache_cluster/2,
         create_cache_cluster/3,
         create_cache_parameter_group/2,
         create_cache_parameter_group/3,
         create_cache_security_group/2,
         create_cache_security_group/3,
         create_cache_subnet_group/2,
         create_cache_subnet_group/3,
         create_global_replication_group/2,
         create_global_replication_group/3,
         create_replication_group/2,
         create_replication_group/3,
         create_serverless_cache/2,
         create_serverless_cache/3,
         create_serverless_cache_snapshot/2,
         create_serverless_cache_snapshot/3,
         create_snapshot/2,
         create_snapshot/3,
         create_user/2,
         create_user/3,
         create_user_group/2,
         create_user_group/3,
         decrease_node_groups_in_global_replication_group/2,
         decrease_node_groups_in_global_replication_group/3,
         decrease_replica_count/2,
         decrease_replica_count/3,
         delete_cache_cluster/2,
         delete_cache_cluster/3,
         delete_cache_parameter_group/2,
         delete_cache_parameter_group/3,
         delete_cache_security_group/2,
         delete_cache_security_group/3,
         delete_cache_subnet_group/2,
         delete_cache_subnet_group/3,
         delete_global_replication_group/2,
         delete_global_replication_group/3,
         delete_replication_group/2,
         delete_replication_group/3,
         delete_serverless_cache/2,
         delete_serverless_cache/3,
         delete_serverless_cache_snapshot/2,
         delete_serverless_cache_snapshot/3,
         delete_snapshot/2,
         delete_snapshot/3,
         delete_user/2,
         delete_user/3,
         delete_user_group/2,
         delete_user_group/3,
         describe_cache_clusters/2,
         describe_cache_clusters/3,
         describe_cache_engine_versions/2,
         describe_cache_engine_versions/3,
         describe_cache_parameter_groups/2,
         describe_cache_parameter_groups/3,
         describe_cache_parameters/2,
         describe_cache_parameters/3,
         describe_cache_security_groups/2,
         describe_cache_security_groups/3,
         describe_cache_subnet_groups/2,
         describe_cache_subnet_groups/3,
         describe_engine_default_parameters/2,
         describe_engine_default_parameters/3,
         describe_events/2,
         describe_events/3,
         describe_global_replication_groups/2,
         describe_global_replication_groups/3,
         describe_replication_groups/2,
         describe_replication_groups/3,
         describe_reserved_cache_nodes/2,
         describe_reserved_cache_nodes/3,
         describe_reserved_cache_nodes_offerings/2,
         describe_reserved_cache_nodes_offerings/3,
         describe_serverless_cache_snapshots/2,
         describe_serverless_cache_snapshots/3,
         describe_serverless_caches/2,
         describe_serverless_caches/3,
         describe_service_updates/2,
         describe_service_updates/3,
         describe_snapshots/2,
         describe_snapshots/3,
         describe_update_actions/2,
         describe_update_actions/3,
         describe_user_groups/2,
         describe_user_groups/3,
         describe_users/2,
         describe_users/3,
         disassociate_global_replication_group/2,
         disassociate_global_replication_group/3,
         export_serverless_cache_snapshot/2,
         export_serverless_cache_snapshot/3,
         failover_global_replication_group/2,
         failover_global_replication_group/3,
         increase_node_groups_in_global_replication_group/2,
         increase_node_groups_in_global_replication_group/3,
         increase_replica_count/2,
         increase_replica_count/3,
         list_allowed_node_type_modifications/2,
         list_allowed_node_type_modifications/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         modify_cache_cluster/2,
         modify_cache_cluster/3,
         modify_cache_parameter_group/2,
         modify_cache_parameter_group/3,
         modify_cache_subnet_group/2,
         modify_cache_subnet_group/3,
         modify_global_replication_group/2,
         modify_global_replication_group/3,
         modify_replication_group/2,
         modify_replication_group/3,
         modify_replication_group_shard_configuration/2,
         modify_replication_group_shard_configuration/3,
         modify_serverless_cache/2,
         modify_serverless_cache/3,
         modify_user/2,
         modify_user/3,
         modify_user_group/2,
         modify_user_group/3,
         purchase_reserved_cache_nodes_offering/2,
         purchase_reserved_cache_nodes_offering/3,
         rebalance_slots_in_global_replication_group/2,
         rebalance_slots_in_global_replication_group/3,
         reboot_cache_cluster/2,
         reboot_cache_cluster/3,
         remove_tags_from_resource/2,
         remove_tags_from_resource/3,
         reset_cache_parameter_group/2,
         reset_cache_parameter_group/3,
         revoke_cache_security_group_ingress/2,
         revoke_cache_security_group_ingress/3,
         start_migration/2,
         start_migration/3,
         test_failover/2,
         test_failover/3,
         test_migration/2,
         test_migration/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% cache_parameter_group_name_message() :: #{
%%   <<"CacheParameterGroupName">> => string()
%% }
-type cache_parameter_group_name_message() :: #{binary() => any()}.

%% Example:
%% invalid_user_state_fault() :: #{
%%   <<"message">> => string()
%% }
-type invalid_user_state_fault() :: #{binary() => any()}.

%% Example:
%% batch_apply_update_action_message() :: #{
%%   <<"CacheClusterIds">> => list(string()()),
%%   <<"ReplicationGroupIds">> => list(string()()),
%%   <<"ServiceUpdateName">> := string()
%% }
-type batch_apply_update_action_message() :: #{binary() => any()}.

%% Example:
%% describe_update_actions_message() :: #{
%%   <<"CacheClusterIds">> => list(string()()),
%%   <<"Engine">> => string(),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer(),
%%   <<"ReplicationGroupIds">> => list(string()()),
%%   <<"ServiceUpdateName">> => string(),
%%   <<"ServiceUpdateStatus">> => list(list(any())()),
%%   <<"ServiceUpdateTimeRange">> => time_range_filter(),
%%   <<"ShowNodeLevelUpdateStatus">> => boolean(),
%%   <<"UpdateActionStatus">> => list(list(any())())
%% }
-type describe_update_actions_message() :: #{binary() => any()}.

%% Example:
%% unprocessed_update_action() :: #{
%%   <<"CacheClusterId">> => string(),
%%   <<"ErrorMessage">> => string(),
%%   <<"ErrorType">> => string(),
%%   <<"ReplicationGroupId">> => string(),
%%   <<"ServiceUpdateName">> => string()
%% }
-type unprocessed_update_action() :: #{binary() => any()}.

%% Example:
%% node_quota_for_customer_exceeded_fault() :: #{
%%   <<"message">> => string()
%% }
-type node_quota_for_customer_exceeded_fault() :: #{binary() => any()}.

%% Example:
%% reserved_cache_node() :: #{
%%   <<"CacheNodeCount">> => integer(),
%%   <<"CacheNodeType">> => string(),
%%   <<"Duration">> => integer(),
%%   <<"FixedPrice">> => float(),
%%   <<"OfferingType">> => string(),
%%   <<"ProductDescription">> => string(),
%%   <<"RecurringCharges">> => list(recurring_charge()()),
%%   <<"ReservationARN">> => string(),
%%   <<"ReservedCacheNodeId">> => string(),
%%   <<"ReservedCacheNodesOfferingId">> => string(),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"State">> => string(),
%%   <<"UsagePrice">> => float()
%% }
-type reserved_cache_node() :: #{binary() => any()}.

%% Example:
%% snapshot_quota_exceeded_fault() :: #{
%%   <<"message">> => string()
%% }
-type snapshot_quota_exceeded_fault() :: #{binary() => any()}.

%% Example:
%% snapshot_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type snapshot_not_found_fault() :: #{binary() => any()}.

%% Example:
%% reserved_cache_nodes_offering_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type reserved_cache_nodes_offering_not_found_fault() :: #{binary() => any()}.

%% Example:
%% disassociate_global_replication_group_result() :: #{
%%   <<"GlobalReplicationGroup">> => global_replication_group()
%% }
-type disassociate_global_replication_group_result() :: #{binary() => any()}.

%% Example:
%% describe_cache_engine_versions_message() :: #{
%%   <<"CacheParameterGroupFamily">> => string(),
%%   <<"DefaultOnly">> => boolean(),
%%   <<"Engine">> => string(),
%%   <<"EngineVersion">> => string(),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer()
%% }
-type describe_cache_engine_versions_message() :: #{binary() => any()}.

%% Example:
%% data_storage() :: #{
%%   <<"Maximum">> => integer(),
%%   <<"Minimum">> => integer(),
%%   <<"Unit">> => list(any())
%% }
-type data_storage() :: #{binary() => any()}.

%% Example:
%% e_c_p_u_per_second() :: #{
%%   <<"Maximum">> => integer(),
%%   <<"Minimum">> => integer()
%% }
-type e_c_p_u_per_second() :: #{binary() => any()}.

%% Example:
%% cache_parameter_group_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type cache_parameter_group_not_found_fault() :: #{binary() => any()}.

%% Example:
%% cache_security_group_message() :: #{
%%   <<"CacheSecurityGroups">> => list(cache_security_group()()),
%%   <<"Marker">> => string()
%% }
-type cache_security_group_message() :: #{binary() => any()}.

%% Example:
%% cache_usage_limits() :: #{
%%   <<"DataStorage">> => data_storage(),
%%   <<"ECPUPerSecond">> => e_c_p_u_per_second()
%% }
-type cache_usage_limits() :: #{binary() => any()}.

%% Example:
%% describe_user_groups_message() :: #{
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer(),
%%   <<"UserGroupId">> => string()
%% }
-type describe_user_groups_message() :: #{binary() => any()}.

%% Example:
%% describe_user_groups_result() :: #{
%%   <<"Marker">> => string(),
%%   <<"UserGroups">> => list(user_group()())
%% }
-type describe_user_groups_result() :: #{binary() => any()}.

%% Example:
%% cache_node_type_specific_parameter() :: #{
%%   <<"AllowedValues">> => string(),
%%   <<"CacheNodeTypeSpecificValues">> => list(cache_node_type_specific_value()()),
%%   <<"ChangeType">> => list(any()),
%%   <<"DataType">> => string(),
%%   <<"Description">> => string(),
%%   <<"IsModifiable">> => boolean(),
%%   <<"MinimumEngineVersion">> => string(),
%%   <<"ParameterName">> => string(),
%%   <<"Source">> => string()
%% }
-type cache_node_type_specific_parameter() :: #{binary() => any()}.

%% Example:
%% describe_global_replication_groups_result() :: #{
%%   <<"GlobalReplicationGroups">> => list(global_replication_group()()),
%%   <<"Marker">> => string()
%% }
-type describe_global_replication_groups_result() :: #{binary() => any()}.

%% Example:
%% serverless_cache() :: #{
%%   <<"ARN">> => string(),
%%   <<"CacheUsageLimits">> => cache_usage_limits(),
%%   <<"CreateTime">> => non_neg_integer(),
%%   <<"DailySnapshotTime">> => string(),
%%   <<"Description">> => string(),
%%   <<"Endpoint">> => endpoint(),
%%   <<"Engine">> => string(),
%%   <<"FullEngineVersion">> => string(),
%%   <<"KmsKeyId">> => string(),
%%   <<"MajorEngineVersion">> => string(),
%%   <<"ReaderEndpoint">> => endpoint(),
%%   <<"SecurityGroupIds">> => list(string()()),
%%   <<"ServerlessCacheName">> => string(),
%%   <<"SnapshotRetentionLimit">> => integer(),
%%   <<"Status">> => string(),
%%   <<"SubnetIds">> => list(string()()),
%%   <<"UserGroupId">> => string()
%% }
-type serverless_cache() :: #{binary() => any()}.

%% Example:
%% cache_parameter_groups_message() :: #{
%%   <<"CacheParameterGroups">> => list(cache_parameter_group()()),
%%   <<"Marker">> => string()
%% }
-type cache_parameter_groups_message() :: #{binary() => any()}.

%% Example:
%% cache_subnet_group_quota_exceeded_fault() :: #{
%%   <<"message">> => string()
%% }
-type cache_subnet_group_quota_exceeded_fault() :: #{binary() => any()}.

%% Example:
%% availability_zone() :: #{
%%   <<"Name">> => string()
%% }
-type availability_zone() :: #{binary() => any()}.

%% Example:
%% modify_replication_group_result() :: #{
%%   <<"ReplicationGroup">> => replication_group()
%% }
-type modify_replication_group_result() :: #{binary() => any()}.

%% Example:
%% allowed_node_type_modifications_message() :: #{
%%   <<"ScaleDownModifications">> => list(string()()),
%%   <<"ScaleUpModifications">> => list(string()())
%% }
-type allowed_node_type_modifications_message() :: #{binary() => any()}.

%% Example:
%% modify_replication_group_shard_configuration_message() :: #{
%%   <<"ApplyImmediately">> := boolean(),
%%   <<"NodeGroupCount">> := integer(),
%%   <<"NodeGroupsToRemove">> => list(string()()),
%%   <<"NodeGroupsToRetain">> => list(string()()),
%%   <<"ReplicationGroupId">> := string(),
%%   <<"ReshardingConfiguration">> => list(resharding_configuration()())
%% }
-type modify_replication_group_shard_configuration_message() :: #{binary() => any()}.

%% Example:
%% modify_user_group_message() :: #{
%%   <<"Engine">> => string(),
%%   <<"UserGroupId">> := string(),
%%   <<"UserIdsToAdd">> => list(string()()),
%%   <<"UserIdsToRemove">> => list(string()())
%% }
-type modify_user_group_message() :: #{binary() => any()}.

%% Example:
%% global_node_group() :: #{
%%   <<"GlobalNodeGroupId">> => string(),
%%   <<"Slots">> => string()
%% }
-type global_node_group() :: #{binary() => any()}.

%% Example:
%% invalid_cache_cluster_state_fault() :: #{
%%   <<"message">> => string()
%% }
-type invalid_cache_cluster_state_fault() :: #{binary() => any()}.

%% Example:
%% delete_replication_group_result() :: #{
%%   <<"ReplicationGroup">> => replication_group()
%% }
-type delete_replication_group_result() :: #{binary() => any()}.

%% Example:
%% reset_cache_parameter_group_message() :: #{
%%   <<"CacheParameterGroupName">> := string(),
%%   <<"ParameterNameValues">> => list(parameter_name_value()()),
%%   <<"ResetAllParameters">> => boolean()
%% }
-type reset_cache_parameter_group_message() :: #{binary() => any()}.

%% Example:
%% log_delivery_configuration_request() :: #{
%%   <<"DestinationDetails">> => destination_details(),
%%   <<"DestinationType">> => list(any()),
%%   <<"Enabled">> => boolean(),
%%   <<"LogFormat">> => list(any()),
%%   <<"LogType">> => list(any())
%% }
-type log_delivery_configuration_request() :: #{binary() => any()}.

%% Example:
%% node_snapshot() :: #{
%%   <<"CacheClusterId">> => string(),
%%   <<"CacheNodeCreateTime">> => non_neg_integer(),
%%   <<"CacheNodeId">> => string(),
%%   <<"CacheSize">> => string(),
%%   <<"NodeGroupConfiguration">> => node_group_configuration(),
%%   <<"NodeGroupId">> => string(),
%%   <<"SnapshotCreateTime">> => non_neg_integer()
%% }
-type node_snapshot() :: #{binary() => any()}.

%% Example:
%% user_group() :: #{
%%   <<"ARN">> => string(),
%%   <<"Engine">> => string(),
%%   <<"MinimumEngineVersion">> => string(),
%%   <<"PendingChanges">> => user_group_pending_changes(),
%%   <<"ReplicationGroups">> => list(string()()),
%%   <<"ServerlessCaches">> => list(string()()),
%%   <<"Status">> => string(),
%%   <<"UserGroupId">> => string(),
%%   <<"UserIds">> => list(string()())
%% }
-type user_group() :: #{binary() => any()}.

%% Example:
%% service_update_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type service_update_not_found_fault() :: #{binary() => any()}.

%% Example:
%% engine_defaults() :: #{
%%   <<"CacheNodeTypeSpecificParameters">> => list(cache_node_type_specific_parameter()()),
%%   <<"CacheParameterGroupFamily">> => string(),
%%   <<"Marker">> => string(),
%%   <<"Parameters">> => list(parameter()())
%% }
-type engine_defaults() :: #{binary() => any()}.

%% Example:
%% revoke_cache_security_group_ingress_result() :: #{
%%   <<"CacheSecurityGroup">> => cache_security_group()
%% }
-type revoke_cache_security_group_ingress_result() :: #{binary() => any()}.

%% Example:
%% delete_user_group_message() :: #{
%%   <<"UserGroupId">> := string()
%% }
-type delete_user_group_message() :: #{binary() => any()}.

%% Example:
%% serverless_cache_already_exists_fault() :: #{
%%   <<"message">> => string()
%% }
-type serverless_cache_already_exists_fault() :: #{binary() => any()}.

%% Example:
%% cache_parameter_group_details() :: #{
%%   <<"CacheNodeTypeSpecificParameters">> => list(cache_node_type_specific_parameter()()),
%%   <<"Marker">> => string(),
%%   <<"Parameters">> => list(parameter()())
%% }
-type cache_parameter_group_details() :: #{binary() => any()}.

%% Example:
%% describe_global_replication_groups_message() :: #{
%%   <<"GlobalReplicationGroupId">> => string(),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer(),
%%   <<"ShowMemberInfo">> => boolean()
%% }
-type describe_global_replication_groups_message() :: #{binary() => any()}.

%% Example:
%% security_group_membership() :: #{
%%   <<"SecurityGroupId">> => string(),
%%   <<"Status">> => string()
%% }
-type security_group_membership() :: #{binary() => any()}.

%% Example:
%% ec2_security_group() :: #{
%%   <<"EC2SecurityGroupName">> => string(),
%%   <<"EC2SecurityGroupOwnerId">> => string(),
%%   <<"Status">> => string()
%% }
-type ec2_security_group() :: #{binary() => any()}.

%% Example:
%% delete_replication_group_message() :: #{
%%   <<"FinalSnapshotIdentifier">> => string(),
%%   <<"ReplicationGroupId">> := string(),
%%   <<"RetainPrimaryCluster">> => boolean()
%% }
-type delete_replication_group_message() :: #{binary() => any()}.

%% Example:
%% recurring_charge() :: #{
%%   <<"RecurringChargeAmount">> => float(),
%%   <<"RecurringChargeFrequency">> => string()
%% }
-type recurring_charge() :: #{binary() => any()}.

%% Example:
%% reserved_cache_nodes_offering() :: #{
%%   <<"CacheNodeType">> => string(),
%%   <<"Duration">> => integer(),
%%   <<"FixedPrice">> => float(),
%%   <<"OfferingType">> => string(),
%%   <<"ProductDescription">> => string(),
%%   <<"RecurringCharges">> => list(recurring_charge()()),
%%   <<"ReservedCacheNodesOfferingId">> => string(),
%%   <<"UsagePrice">> => float()
%% }
-type reserved_cache_nodes_offering() :: #{binary() => any()}.

%% Example:
%% create_serverless_cache_snapshot_request() :: #{
%%   <<"KmsKeyId">> => string(),
%%   <<"ServerlessCacheName">> := string(),
%%   <<"ServerlessCacheSnapshotName">> := string(),
%%   <<"Tags">> => list(tag()())
%% }
-type create_serverless_cache_snapshot_request() :: #{binary() => any()}.

%% Example:
%% increase_node_groups_in_global_replication_group_message() :: #{
%%   <<"ApplyImmediately">> := boolean(),
%%   <<"GlobalReplicationGroupId">> := string(),
%%   <<"NodeGroupCount">> := integer(),
%%   <<"RegionalConfigurations">> => list(regional_configuration()())
%% }
-type increase_node_groups_in_global_replication_group_message() :: #{binary() => any()}.

%% Example:
%% describe_serverless_caches_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"ServerlessCaches">> => list(serverless_cache()())
%% }
-type describe_serverless_caches_response() :: #{binary() => any()}.

%% Example:
%% invalid_kms_key_fault() :: #{
%%   <<"message">> => string()
%% }
-type invalid_kms_key_fault() :: #{binary() => any()}.

%% Example:
%% user_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type user_not_found_fault() :: #{binary() => any()}.

%% Example:
%% complete_migration_message() :: #{
%%   <<"Force">> => boolean(),
%%   <<"ReplicationGroupId">> := string()
%% }
-type complete_migration_message() :: #{binary() => any()}.

%% Example:
%% create_user_group_message() :: #{
%%   <<"Engine">> := string(),
%%   <<"Tags">> => list(tag()()),
%%   <<"UserGroupId">> := string(),
%%   <<"UserIds">> => list(string()())
%% }
-type create_user_group_message() :: #{binary() => any()}.

%% Example:
%% subnet() :: #{
%%   <<"SubnetAvailabilityZone">> => availability_zone(),
%%   <<"SubnetIdentifier">> => string(),
%%   <<"SubnetOutpost">> => subnet_outpost(),
%%   <<"SupportedNetworkTypes">> => list(list(any())())
%% }
-type subnet() :: #{binary() => any()}.

%% Example:
%% invalid_subnet() :: #{
%%   <<"message">> => string()
%% }
-type invalid_subnet() :: #{binary() => any()}.

%% Example:
%% cache_parameter_group() :: #{
%%   <<"ARN">> => string(),
%%   <<"CacheParameterGroupFamily">> => string(),
%%   <<"CacheParameterGroupName">> => string(),
%%   <<"Description">> => string(),
%%   <<"IsGlobal">> => boolean()
%% }
-type cache_parameter_group() :: #{binary() => any()}.

%% Example:
%% parameter_name_value() :: #{
%%   <<"ParameterName">> => string(),
%%   <<"ParameterValue">> => string()
%% }
-type parameter_name_value() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_message() :: #{
%%   <<"ResourceName">> := string()
%% }
-type list_tags_for_resource_message() :: #{binary() => any()}.

%% Example:
%% cache_parameter_group_status() :: #{
%%   <<"CacheNodeIdsToReboot">> => list(string()()),
%%   <<"CacheParameterGroupName">> => string(),
%%   <<"ParameterApplyStatus">> => string()
%% }
-type cache_parameter_group_status() :: #{binary() => any()}.

%% Example:
%% user_group_pending_changes() :: #{
%%   <<"UserIdsToAdd">> => list(string()()),
%%   <<"UserIdsToRemove">> => list(string()())
%% }
-type user_group_pending_changes() :: #{binary() => any()}.

%% Example:
%% global_replication_group_info() :: #{
%%   <<"GlobalReplicationGroupId">> => string(),
%%   <<"GlobalReplicationGroupMemberRole">> => string()
%% }
-type global_replication_group_info() :: #{binary() => any()}.

%% Example:
%% resharding_status() :: #{
%%   <<"SlotMigration">> => slot_migration()
%% }
-type resharding_status() :: #{binary() => any()}.

%% Example:
%% describe_serverless_cache_snapshots_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"ServerlessCacheSnapshots">> => list(serverless_cache_snapshot()())
%% }
-type describe_serverless_cache_snapshots_response() :: #{binary() => any()}.

%% Example:
%% rebalance_slots_in_global_replication_group_result() :: #{
%%   <<"GlobalReplicationGroup">> => global_replication_group()
%% }
-type rebalance_slots_in_global_replication_group_result() :: #{binary() => any()}.

%% Example:
%% decrease_replica_count_result() :: #{
%%   <<"ReplicationGroup">> => replication_group()
%% }
-type decrease_replica_count_result() :: #{binary() => any()}.

%% Example:
%% cache_parameter_group_already_exists_fault() :: #{
%%   <<"message">> => string()
%% }
-type cache_parameter_group_already_exists_fault() :: #{binary() => any()}.

%% Example:
%% delete_cache_parameter_group_message() :: #{
%%   <<"CacheParameterGroupName">> := string()
%% }
-type delete_cache_parameter_group_message() :: #{binary() => any()}.

%% Example:
%% node_group() :: #{
%%   <<"NodeGroupId">> => string(),
%%   <<"NodeGroupMembers">> => list(node_group_member()()),
%%   <<"PrimaryEndpoint">> => endpoint(),
%%   <<"ReaderEndpoint">> => endpoint(),
%%   <<"Slots">> => string(),
%%   <<"Status">> => string()
%% }
-type node_group() :: #{binary() => any()}.

%% Example:
%% describe_engine_default_parameters_message() :: #{
%%   <<"CacheParameterGroupFamily">> := string(),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer()
%% }
-type describe_engine_default_parameters_message() :: #{binary() => any()}.

%% Example:
%% list_allowed_node_type_modifications_message() :: #{
%%   <<"CacheClusterId">> => string(),
%%   <<"ReplicationGroupId">> => string()
%% }
-type list_allowed_node_type_modifications_message() :: #{binary() => any()}.

%% Example:
%% decrease_node_groups_in_global_replication_group_result() :: #{
%%   <<"GlobalReplicationGroup">> => global_replication_group()
%% }
-type decrease_node_groups_in_global_replication_group_result() :: #{binary() => any()}.

%% Example:
%% cloud_watch_logs_destination_details() :: #{
%%   <<"LogGroup">> => string()
%% }
-type cloud_watch_logs_destination_details() :: #{binary() => any()}.

%% Example:
%% revoke_cache_security_group_ingress_message() :: #{
%%   <<"CacheSecurityGroupName">> := string(),
%%   <<"EC2SecurityGroupName">> := string(),
%%   <<"EC2SecurityGroupOwnerId">> := string()
%% }
-type revoke_cache_security_group_ingress_message() :: #{binary() => any()}.

%% Example:
%% copy_serverless_cache_snapshot_response() :: #{
%%   <<"ServerlessCacheSnapshot">> => serverless_cache_snapshot()
%% }
-type copy_serverless_cache_snapshot_response() :: #{binary() => any()}.

%% Example:
%% reserved_cache_node_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type reserved_cache_node_not_found_fault() :: #{binary() => any()}.

%% Example:
%% update_action_results_message() :: #{
%%   <<"ProcessedUpdateActions">> => list(processed_update_action()()),
%%   <<"UnprocessedUpdateActions">> => list(unprocessed_update_action()())
%% }
-type update_action_results_message() :: #{binary() => any()}.

%% Example:
%% cache_cluster_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type cache_cluster_not_found_fault() :: #{binary() => any()}.

%% Example:
%% tag_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type tag_not_found_fault() :: #{binary() => any()}.

%% Example:
%% create_cache_cluster_message() :: #{
%%   <<"AZMode">> => list(any()),
%%   <<"AuthToken">> => string(),
%%   <<"AutoMinorVersionUpgrade">> => boolean(),
%%   <<"CacheClusterId">> := string(),
%%   <<"CacheNodeType">> => string(),
%%   <<"CacheParameterGroupName">> => string(),
%%   <<"CacheSecurityGroupNames">> => list(string()()),
%%   <<"CacheSubnetGroupName">> => string(),
%%   <<"Engine">> => string(),
%%   <<"EngineVersion">> => string(),
%%   <<"IpDiscovery">> => list(any()),
%%   <<"LogDeliveryConfigurations">> => list(log_delivery_configuration_request()()),
%%   <<"NetworkType">> => list(any()),
%%   <<"NotificationTopicArn">> => string(),
%%   <<"NumCacheNodes">> => integer(),
%%   <<"OutpostMode">> => list(any()),
%%   <<"Port">> => integer(),
%%   <<"PreferredAvailabilityZone">> => string(),
%%   <<"PreferredAvailabilityZones">> => list(string()()),
%%   <<"PreferredMaintenanceWindow">> => string(),
%%   <<"PreferredOutpostArn">> => string(),
%%   <<"PreferredOutpostArns">> => list(string()()),
%%   <<"ReplicationGroupId">> => string(),
%%   <<"SecurityGroupIds">> => list(string()()),
%%   <<"SnapshotArns">> => list(string()()),
%%   <<"SnapshotName">> => string(),
%%   <<"SnapshotRetentionLimit">> => integer(),
%%   <<"SnapshotWindow">> => string(),
%%   <<"Tags">> => list(tag()()),
%%   <<"TransitEncryptionEnabled">> => boolean()
%% }
-type create_cache_cluster_message() :: #{binary() => any()}.

%% Example:
%% create_cache_subnet_group_result() :: #{
%%   <<"CacheSubnetGroup">> => cache_subnet_group()
%% }
-type create_cache_subnet_group_result() :: #{binary() => any()}.

%% Example:
%% cache_security_group_membership() :: #{
%%   <<"CacheSecurityGroupName">> => string(),
%%   <<"Status">> => string()
%% }
-type cache_security_group_membership() :: #{binary() => any()}.

%% Example:
%% invalid_cache_parameter_group_state_fault() :: #{
%%   <<"message">> => string()
%% }
-type invalid_cache_parameter_group_state_fault() :: #{binary() => any()}.

%% Example:
%% test_failover_result() :: #{
%%   <<"ReplicationGroup">> => replication_group()
%% }
-type test_failover_result() :: #{binary() => any()}.

%% Example:
%% invalid_parameter_combination_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_parameter_combination_exception() :: #{binary() => any()}.

%% Example:
%% serverless_cache_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type serverless_cache_not_found_fault() :: #{binary() => any()}.

%% Example:
%% reserved_cache_node_already_exists_fault() :: #{
%%   <<"message">> => string()
%% }
-type reserved_cache_node_already_exists_fault() :: #{binary() => any()}.

%% Example:
%% reserved_cache_nodes_offering_message() :: #{
%%   <<"Marker">> => string(),
%%   <<"ReservedCacheNodesOfferings">> => list(reserved_cache_nodes_offering()())
%% }
-type reserved_cache_nodes_offering_message() :: #{binary() => any()}.

%% Example:
%% invalid_vpc_network_state_fault() :: #{
%%   <<"message">> => string()
%% }
-type invalid_vpc_network_state_fault() :: #{binary() => any()}.

%% Example:
%% tag_quota_per_resource_exceeded() :: #{
%%   <<"message">> => string()
%% }
-type tag_quota_per_resource_exceeded() :: #{binary() => any()}.

%% Example:
%% invalid_user_group_state_fault() :: #{
%%   <<"message">> => string()
%% }
-type invalid_user_group_state_fault() :: #{binary() => any()}.

%% Example:
%% serverless_cache_snapshot() :: #{
%%   <<"ARN">> => string(),
%%   <<"BytesUsedForCache">> => string(),
%%   <<"CreateTime">> => non_neg_integer(),
%%   <<"ExpiryTime">> => non_neg_integer(),
%%   <<"KmsKeyId">> => string(),
%%   <<"ServerlessCacheConfiguration">> => serverless_cache_configuration(),
%%   <<"ServerlessCacheSnapshotName">> => string(),
%%   <<"SnapshotType">> => string(),
%%   <<"Status">> => string()
%% }
-type serverless_cache_snapshot() :: #{binary() => any()}.

%% Example:
%% subnet_not_allowed_fault() :: #{
%%   <<"message">> => string()
%% }
-type subnet_not_allowed_fault() :: #{binary() => any()}.

%% Example:
%% cache_cluster_already_exists_fault() :: #{
%%   <<"message">> => string()
%% }
-type cache_cluster_already_exists_fault() :: #{binary() => any()}.

%% Example:
%% create_serverless_cache_response() :: #{
%%   <<"ServerlessCache">> => serverless_cache()
%% }
-type create_serverless_cache_response() :: #{binary() => any()}.

%% Example:
%% decrease_replica_count_message() :: #{
%%   <<"ApplyImmediately">> := boolean(),
%%   <<"NewReplicaCount">> => integer(),
%%   <<"ReplicaConfiguration">> => list(configure_shard()()),
%%   <<"ReplicasToRemove">> => list(string()()),
%%   <<"ReplicationGroupId">> := string()
%% }
-type decrease_replica_count_message() :: #{binary() => any()}.

%% Example:
%% modify_cache_subnet_group_result() :: #{
%%   <<"CacheSubnetGroup">> => cache_subnet_group()
%% }
-type modify_cache_subnet_group_result() :: #{binary() => any()}.

%% Example:
%% failover_global_replication_group_result() :: #{
%%   <<"GlobalReplicationGroup">> => global_replication_group()
%% }
-type failover_global_replication_group_result() :: #{binary() => any()}.

%% Example:
%% modify_global_replication_group_result() :: #{
%%   <<"GlobalReplicationGroup">> => global_replication_group()
%% }
-type modify_global_replication_group_result() :: #{binary() => any()}.

%% Example:
%% cache_engine_version() :: #{
%%   <<"CacheEngineDescription">> => string(),
%%   <<"CacheEngineVersionDescription">> => string(),
%%   <<"CacheParameterGroupFamily">> => string(),
%%   <<"Engine">> => string(),
%%   <<"EngineVersion">> => string()
%% }
-type cache_engine_version() :: #{binary() => any()}.

%% Example:
%% describe_service_updates_message() :: #{
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer(),
%%   <<"ServiceUpdateName">> => string(),
%%   <<"ServiceUpdateStatus">> => list(list(any())())
%% }
-type describe_service_updates_message() :: #{binary() => any()}.

%% Example:
%% modify_global_replication_group_message() :: #{
%%   <<"ApplyImmediately">> := boolean(),
%%   <<"AutomaticFailoverEnabled">> => boolean(),
%%   <<"CacheNodeType">> => string(),
%%   <<"CacheParameterGroupName">> => string(),
%%   <<"Engine">> => string(),
%%   <<"EngineVersion">> => string(),
%%   <<"GlobalReplicationGroupDescription">> => string(),
%%   <<"GlobalReplicationGroupId">> := string()
%% }
-type modify_global_replication_group_message() :: #{binary() => any()}.

%% Example:
%% describe_cache_parameters_message() :: #{
%%   <<"CacheParameterGroupName">> := string(),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer(),
%%   <<"Source">> => string()
%% }
-type describe_cache_parameters_message() :: #{binary() => any()}.

%% Example:
%% serverless_cache_snapshot_already_exists_fault() :: #{
%%   <<"message">> => string()
%% }
-type serverless_cache_snapshot_already_exists_fault() :: #{binary() => any()}.

%% Example:
%% replication_group_not_under_migration_fault() :: #{
%%   <<"message">> => string()
%% }
-type replication_group_not_under_migration_fault() :: #{binary() => any()}.

%% Example:
%% create_global_replication_group_result() :: #{
%%   <<"GlobalReplicationGroup">> => global_replication_group()
%% }
-type create_global_replication_group_result() :: #{binary() => any()}.

%% Example:
%% increase_replica_count_message() :: #{
%%   <<"ApplyImmediately">> := boolean(),
%%   <<"NewReplicaCount">> => integer(),
%%   <<"ReplicaConfiguration">> => list(configure_shard()()),
%%   <<"ReplicationGroupId">> := string()
%% }
-type increase_replica_count_message() :: #{binary() => any()}.

%% Example:
%% invalid_global_replication_group_state_fault() :: #{
%%   <<"message">> => string()
%% }
-type invalid_global_replication_group_state_fault() :: #{binary() => any()}.

%% Example:
%% cache_subnet_group_in_use() :: #{
%%   <<"message">> => string()
%% }
-type cache_subnet_group_in_use() :: #{binary() => any()}.

%% Example:
%% test_migration_message() :: #{
%%   <<"CustomerNodeEndpointList">> := list(customer_node_endpoint()()),
%%   <<"ReplicationGroupId">> := string()
%% }
-type test_migration_message() :: #{binary() => any()}.

%% Example:
%% pending_modified_values() :: #{
%%   <<"AuthTokenStatus">> => list(any()),
%%   <<"CacheNodeIdsToRemove">> => list(string()()),
%%   <<"CacheNodeType">> => string(),
%%   <<"EngineVersion">> => string(),
%%   <<"LogDeliveryConfigurations">> => list(pending_log_delivery_configuration()()),
%%   <<"NumCacheNodes">> => integer(),
%%   <<"ScaleConfig">> => scale_config(),
%%   <<"TransitEncryptionEnabled">> => boolean(),
%%   <<"TransitEncryptionMode">> => list(any())
%% }
-type pending_modified_values() :: #{binary() => any()}.

%% Example:
%% test_failover_message() :: #{
%%   <<"NodeGroupId">> := string(),
%%   <<"ReplicationGroupId">> := string()
%% }
-type test_failover_message() :: #{binary() => any()}.

%% Example:
%% authorization_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type authorization_not_found_fault() :: #{binary() => any()}.

%% Example:
%% cache_node() :: #{
%%   <<"CacheNodeCreateTime">> => non_neg_integer(),
%%   <<"CacheNodeId">> => string(),
%%   <<"CacheNodeStatus">> => string(),
%%   <<"CustomerAvailabilityZone">> => string(),
%%   <<"CustomerOutpostArn">> => string(),
%%   <<"Endpoint">> => endpoint(),
%%   <<"ParameterGroupStatus">> => string(),
%%   <<"SourceCacheNodeId">> => string()
%% }
-type cache_node() :: #{binary() => any()}.

%% Example:
%% increase_replica_count_result() :: #{
%%   <<"ReplicationGroup">> => replication_group()
%% }
-type increase_replica_count_result() :: #{binary() => any()}.

%% Example:
%% reboot_cache_cluster_result() :: #{
%%   <<"CacheCluster">> => cache_cluster()
%% }
-type reboot_cache_cluster_result() :: #{binary() => any()}.

%% Example:
%% describe_snapshots_message() :: #{
%%   <<"CacheClusterId">> => string(),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer(),
%%   <<"ReplicationGroupId">> => string(),
%%   <<"ShowNodeGroupConfig">> => boolean(),
%%   <<"SnapshotName">> => string(),
%%   <<"SnapshotSource">> => string()
%% }
-type describe_snapshots_message() :: #{binary() => any()}.

%% Example:
%% describe_cache_parameter_groups_message() :: #{
%%   <<"CacheParameterGroupName">> => string(),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer()
%% }
-type describe_cache_parameter_groups_message() :: #{binary() => any()}.

%% Example:
%% cache_security_group_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type cache_security_group_not_found_fault() :: #{binary() => any()}.

%% Example:
%% cache_security_group() :: #{
%%   <<"ARN">> => string(),
%%   <<"CacheSecurityGroupName">> => string(),
%%   <<"Description">> => string(),
%%   <<"EC2SecurityGroups">> => list(ec2_security_group()()),
%%   <<"OwnerId">> => string()
%% }
-type cache_security_group() :: #{binary() => any()}.

%% Example:
%% node_group_member_update_status() :: #{
%%   <<"CacheClusterId">> => string(),
%%   <<"CacheNodeId">> => string(),
%%   <<"NodeDeletionDate">> => non_neg_integer(),
%%   <<"NodeUpdateEndDate">> => non_neg_integer(),
%%   <<"NodeUpdateInitiatedBy">> => list(any()),
%%   <<"NodeUpdateInitiatedDate">> => non_neg_integer(),
%%   <<"NodeUpdateStartDate">> => non_neg_integer(),
%%   <<"NodeUpdateStatus">> => list(any()),
%%   <<"NodeUpdateStatusModifiedDate">> => non_neg_integer()
%% }
-type node_group_member_update_status() :: #{binary() => any()}.

%% Example:
%% node_group_configuration() :: #{
%%   <<"NodeGroupId">> => string(),
%%   <<"PrimaryAvailabilityZone">> => string(),
%%   <<"PrimaryOutpostArn">> => string(),
%%   <<"ReplicaAvailabilityZones">> => list(string()()),
%%   <<"ReplicaCount">> => integer(),
%%   <<"ReplicaOutpostArns">> => list(string()()),
%%   <<"Slots">> => string()
%% }
-type node_group_configuration() :: #{binary() => any()}.

%% Example:
%% subnet_outpost() :: #{
%%   <<"SubnetOutpostArn">> => string()
%% }
-type subnet_outpost() :: #{binary() => any()}.

%% Example:
%% delete_user_message() :: #{
%%   <<"UserId">> := string()
%% }
-type delete_user_message() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% reserved_cache_node_message() :: #{
%%   <<"Marker">> => string(),
%%   <<"ReservedCacheNodes">> => list(reserved_cache_node()())
%% }
-type reserved_cache_node_message() :: #{binary() => any()}.

%% Example:
%% authorization_already_exists_fault() :: #{
%%   <<"message">> => string()
%% }
-type authorization_already_exists_fault() :: #{binary() => any()}.

%% Example:
%% export_serverless_cache_snapshot_request() :: #{
%%   <<"S3BucketName">> := string(),
%%   <<"ServerlessCacheSnapshotName">> := string()
%% }
-type export_serverless_cache_snapshot_request() :: #{binary() => any()}.

%% Example:
%% failover_global_replication_group_message() :: #{
%%   <<"GlobalReplicationGroupId">> := string(),
%%   <<"PrimaryRegion">> := string(),
%%   <<"PrimaryReplicationGroupId">> := string()
%% }
-type failover_global_replication_group_message() :: #{binary() => any()}.

%% Example:
%% describe_reserved_cache_nodes_offerings_message() :: #{
%%   <<"CacheNodeType">> => string(),
%%   <<"Duration">> => string(),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer(),
%%   <<"OfferingType">> => string(),
%%   <<"ProductDescription">> => string(),
%%   <<"ReservedCacheNodesOfferingId">> => string()
%% }
-type describe_reserved_cache_nodes_offerings_message() :: #{binary() => any()}.

%% Example:
%% no_operation_fault() :: #{
%%   <<"message">> => string()
%% }
-type no_operation_fault() :: #{binary() => any()}.

%% Example:
%% modify_replication_group_shard_configuration_result() :: #{
%%   <<"ReplicationGroup">> => replication_group()
%% }
-type modify_replication_group_shard_configuration_result() :: #{binary() => any()}.

%% Example:
%% invalid_snapshot_state_fault() :: #{
%%   <<"message">> => string()
%% }
-type invalid_snapshot_state_fault() :: #{binary() => any()}.

%% Example:
%% test_failover_not_available_fault() :: #{
%%   <<"message">> => string()
%% }
-type test_failover_not_available_fault() :: #{binary() => any()}.

%% Example:
%% batch_stop_update_action_message() :: #{
%%   <<"CacheClusterIds">> => list(string()()),
%%   <<"ReplicationGroupIds">> => list(string()()),
%%   <<"ServiceUpdateName">> := string()
%% }
-type batch_stop_update_action_message() :: #{binary() => any()}.

%% Example:
%% invalid_parameter_value_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_parameter_value_exception() :: #{binary() => any()}.

%% Example:
%% modify_replication_group_message() :: #{
%%   <<"ApplyImmediately">> => boolean(),
%%   <<"AuthToken">> => string(),
%%   <<"AuthTokenUpdateStrategy">> => list(any()),
%%   <<"AutoMinorVersionUpgrade">> => boolean(),
%%   <<"AutomaticFailoverEnabled">> => boolean(),
%%   <<"CacheNodeType">> => string(),
%%   <<"CacheParameterGroupName">> => string(),
%%   <<"CacheSecurityGroupNames">> => list(string()()),
%%   <<"ClusterMode">> => list(any()),
%%   <<"Engine">> => string(),
%%   <<"EngineVersion">> => string(),
%%   <<"IpDiscovery">> => list(any()),
%%   <<"LogDeliveryConfigurations">> => list(log_delivery_configuration_request()()),
%%   <<"MultiAZEnabled">> => boolean(),
%%   <<"NodeGroupId">> => string(),
%%   <<"NotificationTopicArn">> => string(),
%%   <<"NotificationTopicStatus">> => string(),
%%   <<"PreferredMaintenanceWindow">> => string(),
%%   <<"PrimaryClusterId">> => string(),
%%   <<"RemoveUserGroups">> => boolean(),
%%   <<"ReplicationGroupDescription">> => string(),
%%   <<"ReplicationGroupId">> := string(),
%%   <<"SecurityGroupIds">> => list(string()()),
%%   <<"SnapshotRetentionLimit">> => integer(),
%%   <<"SnapshotWindow">> => string(),
%%   <<"SnapshottingClusterId">> => string(),
%%   <<"TransitEncryptionEnabled">> => boolean(),
%%   <<"TransitEncryptionMode">> => list(any()),
%%   <<"UserGroupIdsToAdd">> => list(string()()),
%%   <<"UserGroupIdsToRemove">> => list(string()())
%% }
-type modify_replication_group_message() :: #{binary() => any()}.

%% Example:
%% user_group_quota_exceeded_fault() :: #{
%%   <<"message">> => string()
%% }
-type user_group_quota_exceeded_fault() :: #{binary() => any()}.

%% Example:
%% log_delivery_configuration() :: #{
%%   <<"DestinationDetails">> => destination_details(),
%%   <<"DestinationType">> => list(any()),
%%   <<"LogFormat">> => list(any()),
%%   <<"LogType">> => list(any()),
%%   <<"Message">> => string(),
%%   <<"Status">> => list(any())
%% }
-type log_delivery_configuration() :: #{binary() => any()}.

%% Example:
%% service_updates_message() :: #{
%%   <<"Marker">> => string(),
%%   <<"ServiceUpdates">> => list(service_update()())
%% }
-type service_updates_message() :: #{binary() => any()}.

%% Example:
%% copy_snapshot_message() :: #{
%%   <<"KmsKeyId">> => string(),
%%   <<"SourceSnapshotName">> := string(),
%%   <<"Tags">> => list(tag()()),
%%   <<"TargetBucket">> => string(),
%%   <<"TargetSnapshotName">> := string()
%% }
-type copy_snapshot_message() :: #{binary() => any()}.

%% Example:
%% modify_cache_cluster_result() :: #{
%%   <<"CacheCluster">> => cache_cluster()
%% }
-type modify_cache_cluster_result() :: #{binary() => any()}.

%% Example:
%% pending_log_delivery_configuration() :: #{
%%   <<"DestinationDetails">> => destination_details(),
%%   <<"DestinationType">> => list(any()),
%%   <<"LogFormat">> => list(any()),
%%   <<"LogType">> => list(any())
%% }
-type pending_log_delivery_configuration() :: #{binary() => any()}.

%% Example:
%% scale_config() :: #{
%%   <<"ScaleIntervalMinutes">> => integer(),
%%   <<"ScalePercentage">> => integer()
%% }
-type scale_config() :: #{binary() => any()}.

%% Example:
%% parameter() :: #{
%%   <<"AllowedValues">> => string(),
%%   <<"ChangeType">> => list(any()),
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
%% copy_serverless_cache_snapshot_request() :: #{
%%   <<"KmsKeyId">> => string(),
%%   <<"SourceServerlessCacheSnapshotName">> := string(),
%%   <<"Tags">> => list(tag()()),
%%   <<"TargetServerlessCacheSnapshotName">> := string()
%% }
-type copy_serverless_cache_snapshot_request() :: #{binary() => any()}.

%% Example:
%% reboot_cache_cluster_message() :: #{
%%   <<"CacheClusterId">> := string(),
%%   <<"CacheNodeIdsToReboot">> := list(string()())
%% }
-type reboot_cache_cluster_message() :: #{binary() => any()}.

%% Example:
%% invalid_arn_fault() :: #{
%%   <<"message">> => string()
%% }
-type invalid_arn_fault() :: #{binary() => any()}.

%% Example:
%% authentication() :: #{
%%   <<"PasswordCount">> => integer(),
%%   <<"Type">> => list(any())
%% }
-type authentication() :: #{binary() => any()}.

%% Example:
%% delete_snapshot_message() :: #{
%%   <<"SnapshotName">> := string()
%% }
-type delete_snapshot_message() :: #{binary() => any()}.

%% Example:
%% serverless_cache_configuration() :: #{
%%   <<"Engine">> => string(),
%%   <<"MajorEngineVersion">> => string(),
%%   <<"ServerlessCacheName">> => string()
%% }
-type serverless_cache_configuration() :: #{binary() => any()}.

%% Example:
%% cache_cluster() :: #{
%%   <<"AuthTokenEnabled">> => boolean(),
%%   <<"ReplicationGroupLogDeliveryEnabled">> => boolean(),
%%   <<"Engine">> => string(),
%%   <<"ReplicationGroupId">> => string(),
%%   <<"CacheClusterId">> => string(),
%%   <<"IpDiscovery">> => list(any()),
%%   <<"TransitEncryptionEnabled">> => boolean(),
%%   <<"PreferredAvailabilityZone">> => string(),
%%   <<"ClientDownloadLandingPage">> => string(),
%%   <<"PendingModifiedValues">> => pending_modified_values(),
%%   <<"AtRestEncryptionEnabled">> => boolean(),
%%   <<"ARN">> => string(),
%%   <<"SnapshotRetentionLimit">> => integer(),
%%   <<"LogDeliveryConfigurations">> => list(log_delivery_configuration()()),
%%   <<"CacheClusterStatus">> => string(),
%%   <<"ConfigurationEndpoint">> => endpoint(),
%%   <<"EngineVersion">> => string(),
%%   <<"CacheNodeType">> => string(),
%%   <<"CacheNodes">> => list(cache_node()()),
%%   <<"AuthTokenLastModifiedDate">> => non_neg_integer(),
%%   <<"CacheSecurityGroups">> => list(cache_security_group_membership()()),
%%   <<"SecurityGroups">> => list(security_group_membership()()),
%%   <<"PreferredOutpostArn">> => string(),
%%   <<"CacheSubnetGroupName">> => string(),
%%   <<"PreferredMaintenanceWindow">> => string(),
%%   <<"NumCacheNodes">> => integer(),
%%   <<"NotificationConfiguration">> => notification_configuration(),
%%   <<"AutoMinorVersionUpgrade">> => boolean(),
%%   <<"NetworkType">> => list(any()),
%%   <<"CacheParameterGroup">> => cache_parameter_group_status(),
%%   <<"TransitEncryptionMode">> => list(any()),
%%   <<"CacheClusterCreateTime">> => non_neg_integer(),
%%   <<"SnapshotWindow">> => string()
%% }
-type cache_cluster() :: #{binary() => any()}.

%% Example:
%% create_user_message() :: #{
%%   <<"AccessString">> := string(),
%%   <<"AuthenticationMode">> => authentication_mode(),
%%   <<"Engine">> := string(),
%%   <<"NoPasswordRequired">> => boolean(),
%%   <<"Passwords">> => list(string()()),
%%   <<"Tags">> => list(tag()()),
%%   <<"UserId">> := string(),
%%   <<"UserName">> := string()
%% }
-type create_user_message() :: #{binary() => any()}.

%% Example:
%% cache_subnet_group() :: #{
%%   <<"ARN">> => string(),
%%   <<"CacheSubnetGroupDescription">> => string(),
%%   <<"CacheSubnetGroupName">> => string(),
%%   <<"Subnets">> => list(subnet()()),
%%   <<"SupportedNetworkTypes">> => list(list(any())()),
%%   <<"VpcId">> => string()
%% }
-type cache_subnet_group() :: #{binary() => any()}.

%% Example:
%% describe_cache_subnet_groups_message() :: #{
%%   <<"CacheSubnetGroupName">> => string(),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer()
%% }
-type describe_cache_subnet_groups_message() :: #{binary() => any()}.

%% Example:
%% invalid_serverless_cache_state_fault() :: #{
%%   <<"message">> => string()
%% }
-type invalid_serverless_cache_state_fault() :: #{binary() => any()}.

%% Example:
%% node_group_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type node_group_not_found_fault() :: #{binary() => any()}.

%% Example:
%% reserved_cache_node_quota_exceeded_fault() :: #{
%%   <<"message">> => string()
%% }
-type reserved_cache_node_quota_exceeded_fault() :: #{binary() => any()}.

%% Example:
%% node_group_member() :: #{
%%   <<"CacheClusterId">> => string(),
%%   <<"CacheNodeId">> => string(),
%%   <<"CurrentRole">> => string(),
%%   <<"PreferredAvailabilityZone">> => string(),
%%   <<"PreferredOutpostArn">> => string(),
%%   <<"ReadEndpoint">> => endpoint()
%% }
-type node_group_member() :: #{binary() => any()}.

%% Example:
%% api_call_rate_for_customer_exceeded_fault() :: #{
%%   <<"message">> => string()
%% }
-type api_call_rate_for_customer_exceeded_fault() :: #{binary() => any()}.

%% Example:
%% replication_group_already_exists_fault() :: #{
%%   <<"message">> => string()
%% }
-type replication_group_already_exists_fault() :: #{binary() => any()}.

%% Example:
%% describe_replication_groups_message() :: #{
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer(),
%%   <<"ReplicationGroupId">> => string()
%% }
-type describe_replication_groups_message() :: #{binary() => any()}.

%% Example:
%% create_replication_group_result() :: #{
%%   <<"ReplicationGroup">> => replication_group()
%% }
-type create_replication_group_result() :: #{binary() => any()}.

%% Example:
%% destination_details() :: #{
%%   <<"CloudWatchLogsDetails">> => cloud_watch_logs_destination_details(),
%%   <<"KinesisFirehoseDetails">> => kinesis_firehose_destination_details()
%% }
-type destination_details() :: #{binary() => any()}.

%% Example:
%% purchase_reserved_cache_nodes_offering_result() :: #{
%%   <<"ReservedCacheNode">> => reserved_cache_node()
%% }
-type purchase_reserved_cache_nodes_offering_result() :: #{binary() => any()}.

%% Example:
%% filter() :: #{
%%   <<"Name">> => string(),
%%   <<"Values">> => list(string()())
%% }
-type filter() :: #{binary() => any()}.

%% Example:
%% replication_group() :: #{
%%   <<"ARN">> => string(),
%%   <<"AtRestEncryptionEnabled">> => boolean(),
%%   <<"AuthTokenEnabled">> => boolean(),
%%   <<"AuthTokenLastModifiedDate">> => non_neg_integer(),
%%   <<"AutoMinorVersionUpgrade">> => boolean(),
%%   <<"AutomaticFailover">> => list(any()),
%%   <<"CacheNodeType">> => string(),
%%   <<"ClusterEnabled">> => boolean(),
%%   <<"ClusterMode">> => list(any()),
%%   <<"ConfigurationEndpoint">> => endpoint(),
%%   <<"DataTiering">> => list(any()),
%%   <<"Description">> => string(),
%%   <<"Engine">> => string(),
%%   <<"GlobalReplicationGroupInfo">> => global_replication_group_info(),
%%   <<"IpDiscovery">> => list(any()),
%%   <<"KmsKeyId">> => string(),
%%   <<"LogDeliveryConfigurations">> => list(log_delivery_configuration()()),
%%   <<"MemberClusters">> => list(string()()),
%%   <<"MemberClustersOutpostArns">> => list(string()()),
%%   <<"MultiAZ">> => list(any()),
%%   <<"NetworkType">> => list(any()),
%%   <<"NodeGroups">> => list(node_group()()),
%%   <<"PendingModifiedValues">> => replication_group_pending_modified_values(),
%%   <<"ReplicationGroupCreateTime">> => non_neg_integer(),
%%   <<"ReplicationGroupId">> => string(),
%%   <<"SnapshotRetentionLimit">> => integer(),
%%   <<"SnapshotWindow">> => string(),
%%   <<"SnapshottingClusterId">> => string(),
%%   <<"Status">> => string(),
%%   <<"TransitEncryptionEnabled">> => boolean(),
%%   <<"TransitEncryptionMode">> => list(any()),
%%   <<"UserGroupIds">> => list(string()())
%% }
-type replication_group() :: #{binary() => any()}.

%% Example:
%% delete_serverless_cache_request() :: #{
%%   <<"FinalSnapshotName">> => string(),
%%   <<"ServerlessCacheName">> := string()
%% }
-type delete_serverless_cache_request() :: #{binary() => any()}.

%% Example:
%% modify_user_message() :: #{
%%   <<"AccessString">> => string(),
%%   <<"AppendAccessString">> => string(),
%%   <<"AuthenticationMode">> => authentication_mode(),
%%   <<"Engine">> => string(),
%%   <<"NoPasswordRequired">> => boolean(),
%%   <<"Passwords">> => list(string()()),
%%   <<"UserId">> := string()
%% }
-type modify_user_message() :: #{binary() => any()}.

%% Example:
%% replication_group_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type replication_group_not_found_fault() :: #{binary() => any()}.

%% Example:
%% create_snapshot_message() :: #{
%%   <<"CacheClusterId">> => string(),
%%   <<"KmsKeyId">> => string(),
%%   <<"ReplicationGroupId">> => string(),
%%   <<"SnapshotName">> := string(),
%%   <<"Tags">> => list(tag()())
%% }
-type create_snapshot_message() :: #{binary() => any()}.

%% Example:
%% cluster_quota_for_customer_exceeded_fault() :: #{
%%   <<"message">> => string()
%% }
-type cluster_quota_for_customer_exceeded_fault() :: #{binary() => any()}.

%% Example:
%% user_already_exists_fault() :: #{
%%   <<"message">> => string()
%% }
-type user_already_exists_fault() :: #{binary() => any()}.

%% Example:
%% notification_configuration() :: #{
%%   <<"TopicArn">> => string(),
%%   <<"TopicStatus">> => string()
%% }
-type notification_configuration() :: #{binary() => any()}.

%% Example:
%% modify_cache_parameter_group_message() :: #{
%%   <<"CacheParameterGroupName">> := string(),
%%   <<"ParameterNameValues">> := list(parameter_name_value()())
%% }
-type modify_cache_parameter_group_message() :: #{binary() => any()}.

%% Example:
%% invalid_cache_security_group_state_fault() :: #{
%%   <<"message">> => string()
%% }
-type invalid_cache_security_group_state_fault() :: #{binary() => any()}.

%% Example:
%% endpoint() :: #{
%%   <<"Address">> => string(),
%%   <<"Port">> => integer()
%% }
-type endpoint() :: #{binary() => any()}.

%% Example:
%% modify_cache_subnet_group_message() :: #{
%%   <<"CacheSubnetGroupDescription">> => string(),
%%   <<"CacheSubnetGroupName">> := string(),
%%   <<"SubnetIds">> => list(string()())
%% }
-type modify_cache_subnet_group_message() :: #{binary() => any()}.

%% Example:
%% copy_snapshot_result() :: #{
%%   <<"Snapshot">> => snapshot()
%% }
-type copy_snapshot_result() :: #{binary() => any()}.

%% Example:
%% replication_group_pending_modified_values() :: #{
%%   <<"AuthTokenStatus">> => list(any()),
%%   <<"AutomaticFailoverStatus">> => list(any()),
%%   <<"ClusterMode">> => list(any()),
%%   <<"LogDeliveryConfigurations">> => list(pending_log_delivery_configuration()()),
%%   <<"PrimaryClusterId">> => string(),
%%   <<"Resharding">> => resharding_status(),
%%   <<"TransitEncryptionEnabled">> => boolean(),
%%   <<"TransitEncryptionMode">> => list(any()),
%%   <<"UserGroups">> => user_groups_update_status()
%% }
-type replication_group_pending_modified_values() :: #{binary() => any()}.

%% Example:
%% cache_security_group_quota_exceeded_fault() :: #{
%%   <<"message">> => string()
%% }
-type cache_security_group_quota_exceeded_fault() :: #{binary() => any()}.

%% Example:
%% events_message() :: #{
%%   <<"Events">> => list(event()()),
%%   <<"Marker">> => string()
%% }
-type events_message() :: #{binary() => any()}.

%% Example:
%% resharding_configuration() :: #{
%%   <<"NodeGroupId">> => string(),
%%   <<"PreferredAvailabilityZones">> => list(string()())
%% }
-type resharding_configuration() :: #{binary() => any()}.

%% Example:
%% user_quota_exceeded_fault() :: #{
%%   <<"message">> => string()
%% }
-type user_quota_exceeded_fault() :: #{binary() => any()}.

%% Example:
%% purchase_reserved_cache_nodes_offering_message() :: #{
%%   <<"CacheNodeCount">> => integer(),
%%   <<"ReservedCacheNodeId">> => string(),
%%   <<"ReservedCacheNodesOfferingId">> := string(),
%%   <<"Tags">> => list(tag()())
%% }
-type purchase_reserved_cache_nodes_offering_message() :: #{binary() => any()}.

%% Example:
%% describe_serverless_caches_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ServerlessCacheName">> => string()
%% }
-type describe_serverless_caches_request() :: #{binary() => any()}.

%% Example:
%% cache_parameter_group_quota_exceeded_fault() :: #{
%%   <<"message">> => string()
%% }
-type cache_parameter_group_quota_exceeded_fault() :: #{binary() => any()}.

%% Example:
%% processed_update_action() :: #{
%%   <<"CacheClusterId">> => string(),
%%   <<"ReplicationGroupId">> => string(),
%%   <<"ServiceUpdateName">> => string(),
%%   <<"UpdateActionStatus">> => list(any())
%% }
-type processed_update_action() :: #{binary() => any()}.

%% Example:
%% describe_engine_default_parameters_result() :: #{
%%   <<"EngineDefaults">> => engine_defaults()
%% }
-type describe_engine_default_parameters_result() :: #{binary() => any()}.

%% Example:
%% test_migration_response() :: #{
%%   <<"ReplicationGroup">> => replication_group()
%% }
-type test_migration_response() :: #{binary() => any()}.

%% Example:
%% delete_snapshot_result() :: #{
%%   <<"Snapshot">> => snapshot()
%% }
-type delete_snapshot_result() :: #{binary() => any()}.

%% Example:
%% start_migration_response() :: #{
%%   <<"ReplicationGroup">> => replication_group()
%% }
-type start_migration_response() :: #{binary() => any()}.

%% Example:
%% duplicate_user_name_fault() :: #{
%%   <<"message">> => string()
%% }
-type duplicate_user_name_fault() :: #{binary() => any()}.

%% Example:
%% event() :: #{
%%   <<"Date">> => non_neg_integer(),
%%   <<"Message">> => string(),
%%   <<"SourceIdentifier">> => string(),
%%   <<"SourceType">> => list(any())
%% }
-type event() :: #{binary() => any()}.

%% Example:
%% cache_subnet_group_message() :: #{
%%   <<"CacheSubnetGroups">> => list(cache_subnet_group()()),
%%   <<"Marker">> => string()
%% }
-type cache_subnet_group_message() :: #{binary() => any()}.

%% Example:
%% create_global_replication_group_message() :: #{
%%   <<"GlobalReplicationGroupDescription">> => string(),
%%   <<"GlobalReplicationGroupIdSuffix">> := string(),
%%   <<"PrimaryReplicationGroupId">> := string()
%% }
-type create_global_replication_group_message() :: #{binary() => any()}.

%% Example:
%% describe_users_result() :: #{
%%   <<"Marker">> => string(),
%%   <<"Users">> => list(user()())
%% }
-type describe_users_result() :: #{binary() => any()}.

%% Example:
%% configure_shard() :: #{
%%   <<"NewReplicaCount">> => integer(),
%%   <<"NodeGroupId">> => string(),
%%   <<"PreferredAvailabilityZones">> => list(string()()),
%%   <<"PreferredOutpostArns">> => list(string()())
%% }
-type configure_shard() :: #{binary() => any()}.

%% Example:
%% describe_cache_security_groups_message() :: #{
%%   <<"CacheSecurityGroupName">> => string(),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer()
%% }
-type describe_cache_security_groups_message() :: #{binary() => any()}.

%% Example:
%% delete_global_replication_group_message() :: #{
%%   <<"GlobalReplicationGroupId">> := string(),
%%   <<"RetainPrimaryReplicationGroup">> := boolean()
%% }
-type delete_global_replication_group_message() :: #{binary() => any()}.

%% Example:
%% update_action() :: #{
%%   <<"CacheClusterId">> => string(),
%%   <<"CacheNodeUpdateStatus">> => list(cache_node_update_status()()),
%%   <<"Engine">> => string(),
%%   <<"EstimatedUpdateTime">> => string(),
%%   <<"NodeGroupUpdateStatus">> => list(node_group_update_status()()),
%%   <<"NodesUpdated">> => string(),
%%   <<"ReplicationGroupId">> => string(),
%%   <<"ServiceUpdateName">> => string(),
%%   <<"ServiceUpdateRecommendedApplyByDate">> => non_neg_integer(),
%%   <<"ServiceUpdateReleaseDate">> => non_neg_integer(),
%%   <<"ServiceUpdateSeverity">> => list(any()),
%%   <<"ServiceUpdateStatus">> => list(any()),
%%   <<"ServiceUpdateType">> => list(any()),
%%   <<"SlaMet">> => list(any()),
%%   <<"UpdateActionAvailableDate">> => non_neg_integer(),
%%   <<"UpdateActionStatus">> => list(any()),
%%   <<"UpdateActionStatusModifiedDate">> => non_neg_integer()
%% }
-type update_action() :: #{binary() => any()}.

%% Example:
%% node_group_update_status() :: #{
%%   <<"NodeGroupId">> => string(),
%%   <<"NodeGroupMemberUpdateStatus">> => list(node_group_member_update_status()())
%% }
-type node_group_update_status() :: #{binary() => any()}.

%% Example:
%% update_actions_message() :: #{
%%   <<"Marker">> => string(),
%%   <<"UpdateActions">> => list(update_action()())
%% }
-type update_actions_message() :: #{binary() => any()}.

%% Example:
%% delete_cache_cluster_message() :: #{
%%   <<"CacheClusterId">> := string(),
%%   <<"FinalSnapshotIdentifier">> => string()
%% }
-type delete_cache_cluster_message() :: #{binary() => any()}.

%% Example:
%% snapshot() :: #{
%%   <<"ARN">> => string(),
%%   <<"AutoMinorVersionUpgrade">> => boolean(),
%%   <<"AutomaticFailover">> => list(any()),
%%   <<"CacheClusterCreateTime">> => non_neg_integer(),
%%   <<"CacheClusterId">> => string(),
%%   <<"CacheNodeType">> => string(),
%%   <<"CacheParameterGroupName">> => string(),
%%   <<"CacheSubnetGroupName">> => string(),
%%   <<"DataTiering">> => list(any()),
%%   <<"Engine">> => string(),
%%   <<"EngineVersion">> => string(),
%%   <<"KmsKeyId">> => string(),
%%   <<"NodeSnapshots">> => list(node_snapshot()()),
%%   <<"NumCacheNodes">> => integer(),
%%   <<"NumNodeGroups">> => integer(),
%%   <<"Port">> => integer(),
%%   <<"PreferredAvailabilityZone">> => string(),
%%   <<"PreferredMaintenanceWindow">> => string(),
%%   <<"PreferredOutpostArn">> => string(),
%%   <<"ReplicationGroupDescription">> => string(),
%%   <<"ReplicationGroupId">> => string(),
%%   <<"SnapshotName">> => string(),
%%   <<"SnapshotRetentionLimit">> => integer(),
%%   <<"SnapshotSource">> => string(),
%%   <<"SnapshotStatus">> => string(),
%%   <<"SnapshotWindow">> => string(),
%%   <<"TopicArn">> => string(),
%%   <<"VpcId">> => string()
%% }
-type snapshot() :: #{binary() => any()}.

%% Example:
%% describe_reserved_cache_nodes_message() :: #{
%%   <<"CacheNodeType">> => string(),
%%   <<"Duration">> => string(),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer(),
%%   <<"OfferingType">> => string(),
%%   <<"ProductDescription">> => string(),
%%   <<"ReservedCacheNodeId">> => string(),
%%   <<"ReservedCacheNodesOfferingId">> => string()
%% }
-type describe_reserved_cache_nodes_message() :: #{binary() => any()}.

%% Example:
%% global_replication_group() :: #{
%%   <<"ARN">> => string(),
%%   <<"AtRestEncryptionEnabled">> => boolean(),
%%   <<"AuthTokenEnabled">> => boolean(),
%%   <<"CacheNodeType">> => string(),
%%   <<"ClusterEnabled">> => boolean(),
%%   <<"Engine">> => string(),
%%   <<"EngineVersion">> => string(),
%%   <<"GlobalNodeGroups">> => list(global_node_group()()),
%%   <<"GlobalReplicationGroupDescription">> => string(),
%%   <<"GlobalReplicationGroupId">> => string(),
%%   <<"Members">> => list(global_replication_group_member()()),
%%   <<"Status">> => string(),
%%   <<"TransitEncryptionEnabled">> => boolean()
%% }
-type global_replication_group() :: #{binary() => any()}.

%% Example:
%% tag_list_message() :: #{
%%   <<"TagList">> => list(tag()())
%% }
-type tag_list_message() :: #{binary() => any()}.

%% Example:
%% subnet_in_use() :: #{
%%   <<"message">> => string()
%% }
-type subnet_in_use() :: #{binary() => any()}.

%% Example:
%% create_cache_subnet_group_message() :: #{
%%   <<"CacheSubnetGroupDescription">> := string(),
%%   <<"CacheSubnetGroupName">> := string(),
%%   <<"SubnetIds">> := list(string()()),
%%   <<"Tags">> => list(tag()())
%% }
-type create_cache_subnet_group_message() :: #{binary() => any()}.

%% Example:
%% service_linked_role_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type service_linked_role_not_found_fault() :: #{binary() => any()}.

%% Example:
%% default_user_associated_to_user_group_fault() :: #{
%%   <<"message">> => string()
%% }
-type default_user_associated_to_user_group_fault() :: #{binary() => any()}.

%% Example:
%% cache_subnet_group_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type cache_subnet_group_not_found_fault() :: #{binary() => any()}.

%% Example:
%% add_tags_to_resource_message() :: #{
%%   <<"ResourceName">> := string(),
%%   <<"Tags">> := list(tag()())
%% }
-type add_tags_to_resource_message() :: #{binary() => any()}.

%% Example:
%% delete_cache_subnet_group_message() :: #{
%%   <<"CacheSubnetGroupName">> := string()
%% }
-type delete_cache_subnet_group_message() :: #{binary() => any()}.

%% Example:
%% serverless_cache_snapshot_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type serverless_cache_snapshot_not_found_fault() :: #{binary() => any()}.

%% Example:
%% create_cache_security_group_message() :: #{
%%   <<"CacheSecurityGroupName">> := string(),
%%   <<"Description">> := string(),
%%   <<"Tags">> => list(tag()())
%% }
-type create_cache_security_group_message() :: #{binary() => any()}.

%% Example:
%% create_replication_group_message() :: #{
%%   <<"Port">> => integer(),
%%   <<"NodeGroupConfiguration">> => list(node_group_configuration()()),
%%   <<"Engine">> => string(),
%%   <<"GlobalReplicationGroupId">> => string(),
%%   <<"IpDiscovery">> => list(any()),
%%   <<"PrimaryClusterId">> => string(),
%%   <<"ClusterMode">> => list(any()),
%%   <<"TransitEncryptionEnabled">> => boolean(),
%%   <<"DataTieringEnabled">> => boolean(),
%%   <<"ReplicationGroupDescription">> := string(),
%%   <<"AtRestEncryptionEnabled">> => boolean(),
%%   <<"CacheParameterGroupName">> => string(),
%%   <<"NumCacheClusters">> => integer(),
%%   <<"NumNodeGroups">> => integer(),
%%   <<"SnapshotRetentionLimit">> => integer(),
%%   <<"ReplicationGroupId">> := string(),
%%   <<"LogDeliveryConfigurations">> => list(log_delivery_configuration_request()()),
%%   <<"ServerlessCacheSnapshotName">> => string(),
%%   <<"AuthToken">> => string(),
%%   <<"AutomaticFailoverEnabled">> => boolean(),
%%   <<"EngineVersion">> => string(),
%%   <<"CacheNodeType">> => string(),
%%   <<"UserGroupIds">> => list(string()()),
%%   <<"ReplicasPerNodeGroup">> => integer(),
%%   <<"Tags">> => list(tag()()),
%%   <<"SnapshotName">> => string(),
%%   <<"CacheSubnetGroupName">> => string(),
%%   <<"KmsKeyId">> => string(),
%%   <<"PreferredMaintenanceWindow">> => string(),
%%   <<"SecurityGroupIds">> => list(string()()),
%%   <<"MultiAZEnabled">> => boolean(),
%%   <<"PreferredCacheClusterAZs">> => list(string()()),
%%   <<"CacheSecurityGroupNames">> => list(string()()),
%%   <<"AutoMinorVersionUpgrade">> => boolean(),
%%   <<"SnapshotArns">> => list(string()()),
%%   <<"NetworkType">> => list(any()),
%%   <<"NotificationTopicArn">> => string(),
%%   <<"TransitEncryptionMode">> => list(any()),
%%   <<"SnapshotWindow">> => string()
%% }
-type create_replication_group_message() :: #{binary() => any()}.

%% Example:
%% invalid_serverless_cache_snapshot_state_fault() :: #{
%%   <<"message">> => string()
%% }
-type invalid_serverless_cache_snapshot_state_fault() :: #{binary() => any()}.

%% Example:
%% describe_events_message() :: #{
%%   <<"Duration">> => integer(),
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer(),
%%   <<"SourceIdentifier">> => string(),
%%   <<"SourceType">> => list(any()),
%%   <<"StartTime">> => non_neg_integer()
%% }
-type describe_events_message() :: #{binary() => any()}.

%% Example:
%% create_cache_security_group_result() :: #{
%%   <<"CacheSecurityGroup">> => cache_security_group()
%% }
-type create_cache_security_group_result() :: #{binary() => any()}.

%% Example:
%% snapshot_already_exists_fault() :: #{
%%   <<"message">> => string()
%% }
-type snapshot_already_exists_fault() :: #{binary() => any()}.

%% Example:
%% cache_cluster_message() :: #{
%%   <<"CacheClusters">> => list(cache_cluster()()),
%%   <<"Marker">> => string()
%% }
-type cache_cluster_message() :: #{binary() => any()}.

%% Example:
%% create_snapshot_result() :: #{
%%   <<"Snapshot">> => snapshot()
%% }
-type create_snapshot_result() :: #{binary() => any()}.

%% Example:
%% customer_node_endpoint() :: #{
%%   <<"Address">> => string(),
%%   <<"Port">> => integer()
%% }
-type customer_node_endpoint() :: #{binary() => any()}.

%% Example:
%% complete_migration_response() :: #{
%%   <<"ReplicationGroup">> => replication_group()
%% }
-type complete_migration_response() :: #{binary() => any()}.

%% Example:
%% describe_serverless_cache_snapshots_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ServerlessCacheName">> => string(),
%%   <<"ServerlessCacheSnapshotName">> => string(),
%%   <<"SnapshotType">> => string()
%% }
-type describe_serverless_cache_snapshots_request() :: #{binary() => any()}.

%% Example:
%% time_range_filter() :: #{
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"StartTime">> => non_neg_integer()
%% }
-type time_range_filter() :: #{binary() => any()}.

%% Example:
%% describe_snapshots_list_message() :: #{
%%   <<"Marker">> => string(),
%%   <<"Snapshots">> => list(snapshot()())
%% }
-type describe_snapshots_list_message() :: #{binary() => any()}.

%% Example:
%% describe_users_message() :: #{
%%   <<"Engine">> => string(),
%%   <<"Filters">> => list(filter()()),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer(),
%%   <<"UserId">> => string()
%% }
-type describe_users_message() :: #{binary() => any()}.

%% Example:
%% authorize_cache_security_group_ingress_message() :: #{
%%   <<"CacheSecurityGroupName">> := string(),
%%   <<"EC2SecurityGroupName">> := string(),
%%   <<"EC2SecurityGroupOwnerId">> := string()
%% }
-type authorize_cache_security_group_ingress_message() :: #{binary() => any()}.

%% Example:
%% modify_serverless_cache_response() :: #{
%%   <<"ServerlessCache">> => serverless_cache()
%% }
-type modify_serverless_cache_response() :: #{binary() => any()}.

%% Example:
%% user() :: #{
%%   <<"ARN">> => string(),
%%   <<"AccessString">> => string(),
%%   <<"Authentication">> => authentication(),
%%   <<"Engine">> => string(),
%%   <<"MinimumEngineVersion">> => string(),
%%   <<"Status">> => string(),
%%   <<"UserGroupIds">> => list(string()()),
%%   <<"UserId">> => string(),
%%   <<"UserName">> => string()
%% }
-type user() :: #{binary() => any()}.

%% Example:
%% create_cache_parameter_group_message() :: #{
%%   <<"CacheParameterGroupFamily">> := string(),
%%   <<"CacheParameterGroupName">> := string(),
%%   <<"Description">> := string(),
%%   <<"Tags">> => list(tag()())
%% }
-type create_cache_parameter_group_message() :: #{binary() => any()}.

%% Example:
%% service_update() :: #{
%%   <<"AutoUpdateAfterRecommendedApplyByDate">> => boolean(),
%%   <<"Engine">> => string(),
%%   <<"EngineVersion">> => string(),
%%   <<"EstimatedUpdateTime">> => string(),
%%   <<"ServiceUpdateDescription">> => string(),
%%   <<"ServiceUpdateEndDate">> => non_neg_integer(),
%%   <<"ServiceUpdateName">> => string(),
%%   <<"ServiceUpdateRecommendedApplyByDate">> => non_neg_integer(),
%%   <<"ServiceUpdateReleaseDate">> => non_neg_integer(),
%%   <<"ServiceUpdateSeverity">> => list(any()),
%%   <<"ServiceUpdateStatus">> => list(any()),
%%   <<"ServiceUpdateType">> => list(any())
%% }
-type service_update() :: #{binary() => any()}.

%% Example:
%% authorize_cache_security_group_ingress_result() :: #{
%%   <<"CacheSecurityGroup">> => cache_security_group()
%% }
-type authorize_cache_security_group_ingress_result() :: #{binary() => any()}.

%% Example:
%% create_serverless_cache_request() :: #{
%%   <<"CacheUsageLimits">> => cache_usage_limits(),
%%   <<"DailySnapshotTime">> => string(),
%%   <<"Description">> => string(),
%%   <<"Engine">> := string(),
%%   <<"KmsKeyId">> => string(),
%%   <<"MajorEngineVersion">> => string(),
%%   <<"SecurityGroupIds">> => list(string()()),
%%   <<"ServerlessCacheName">> := string(),
%%   <<"SnapshotArnsToRestore">> => list(string()()),
%%   <<"SnapshotRetentionLimit">> => integer(),
%%   <<"SubnetIds">> => list(string()()),
%%   <<"Tags">> => list(tag()()),
%%   <<"UserGroupId">> => string()
%% }
-type create_serverless_cache_request() :: #{binary() => any()}.

%% Example:
%% default_user_required() :: #{
%%   <<"message">> => string()
%% }
-type default_user_required() :: #{binary() => any()}.

%% Example:
%% create_serverless_cache_snapshot_response() :: #{
%%   <<"ServerlessCacheSnapshot">> => serverless_cache_snapshot()
%% }
-type create_serverless_cache_snapshot_response() :: #{binary() => any()}.

%% Example:
%% invalid_replication_group_state_fault() :: #{
%%   <<"message">> => string()
%% }
-type invalid_replication_group_state_fault() :: #{binary() => any()}.

%% Example:
%% create_cache_parameter_group_result() :: #{
%%   <<"CacheParameterGroup">> => cache_parameter_group()
%% }
-type create_cache_parameter_group_result() :: #{binary() => any()}.

%% Example:
%% global_replication_group_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type global_replication_group_not_found_fault() :: #{binary() => any()}.

%% Example:
%% user_group_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type user_group_not_found_fault() :: #{binary() => any()}.

%% Example:
%% cache_engine_version_message() :: #{
%%   <<"CacheEngineVersions">> => list(cache_engine_version()()),
%%   <<"Marker">> => string()
%% }
-type cache_engine_version_message() :: #{binary() => any()}.

%% Example:
%% authentication_mode() :: #{
%%   <<"Passwords">> => list(string()()),
%%   <<"Type">> => list(any())
%% }
-type authentication_mode() :: #{binary() => any()}.

%% Example:
%% insufficient_cache_cluster_capacity_fault() :: #{
%%   <<"message">> => string()
%% }
-type insufficient_cache_cluster_capacity_fault() :: #{binary() => any()}.

%% Example:
%% modify_serverless_cache_request() :: #{
%%   <<"CacheUsageLimits">> => cache_usage_limits(),
%%   <<"DailySnapshotTime">> => string(),
%%   <<"Description">> => string(),
%%   <<"Engine">> => string(),
%%   <<"MajorEngineVersion">> => string(),
%%   <<"RemoveUserGroup">> => boolean(),
%%   <<"SecurityGroupIds">> => list(string()()),
%%   <<"ServerlessCacheName">> := string(),
%%   <<"SnapshotRetentionLimit">> => integer(),
%%   <<"UserGroupId">> => string()
%% }
-type modify_serverless_cache_request() :: #{binary() => any()}.

%% Example:
%% describe_cache_clusters_message() :: #{
%%   <<"CacheClusterId">> => string(),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer(),
%%   <<"ShowCacheClustersNotInReplicationGroups">> => boolean(),
%%   <<"ShowCacheNodeInfo">> => boolean()
%% }
-type describe_cache_clusters_message() :: #{binary() => any()}.

%% Example:
%% remove_tags_from_resource_message() :: #{
%%   <<"ResourceName">> := string(),
%%   <<"TagKeys">> := list(string()())
%% }
-type remove_tags_from_resource_message() :: #{binary() => any()}.

%% Example:
%% cache_node_update_status() :: #{
%%   <<"CacheNodeId">> => string(),
%%   <<"NodeDeletionDate">> => non_neg_integer(),
%%   <<"NodeUpdateEndDate">> => non_neg_integer(),
%%   <<"NodeUpdateInitiatedBy">> => list(any()),
%%   <<"NodeUpdateInitiatedDate">> => non_neg_integer(),
%%   <<"NodeUpdateStartDate">> => non_neg_integer(),
%%   <<"NodeUpdateStatus">> => list(any()),
%%   <<"NodeUpdateStatusModifiedDate">> => non_neg_integer()
%% }
-type cache_node_update_status() :: #{binary() => any()}.

%% Example:
%% delete_serverless_cache_snapshot_response() :: #{
%%   <<"ServerlessCacheSnapshot">> => serverless_cache_snapshot()
%% }
-type delete_serverless_cache_snapshot_response() :: #{binary() => any()}.

%% Example:
%% replication_group_already_under_migration_fault() :: #{
%%   <<"message">> => string()
%% }
-type replication_group_already_under_migration_fault() :: #{binary() => any()}.

%% Example:
%% delete_cache_security_group_message() :: #{
%%   <<"CacheSecurityGroupName">> := string()
%% }
-type delete_cache_security_group_message() :: #{binary() => any()}.

%% Example:
%% export_serverless_cache_snapshot_response() :: #{
%%   <<"ServerlessCacheSnapshot">> => serverless_cache_snapshot()
%% }
-type export_serverless_cache_snapshot_response() :: #{binary() => any()}.

%% Example:
%% rebalance_slots_in_global_replication_group_message() :: #{
%%   <<"ApplyImmediately">> := boolean(),
%%   <<"GlobalReplicationGroupId">> := string()
%% }
-type rebalance_slots_in_global_replication_group_message() :: #{binary() => any()}.

%% Example:
%% decrease_node_groups_in_global_replication_group_message() :: #{
%%   <<"ApplyImmediately">> := boolean(),
%%   <<"GlobalNodeGroupsToRemove">> => list(string()()),
%%   <<"GlobalNodeGroupsToRetain">> => list(string()()),
%%   <<"GlobalReplicationGroupId">> := string(),
%%   <<"NodeGroupCount">> := integer()
%% }
-type decrease_node_groups_in_global_replication_group_message() :: #{binary() => any()}.

%% Example:
%% cache_security_group_already_exists_fault() :: #{
%%   <<"message">> => string()
%% }
-type cache_security_group_already_exists_fault() :: #{binary() => any()}.

%% Example:
%% snapshot_feature_not_supported_fault() :: #{
%%   <<"message">> => string()
%% }
-type snapshot_feature_not_supported_fault() :: #{binary() => any()}.

%% Example:
%% delete_global_replication_group_result() :: #{
%%   <<"GlobalReplicationGroup">> => global_replication_group()
%% }
-type delete_global_replication_group_result() :: #{binary() => any()}.

%% Example:
%% invalid_credentials_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_credentials_exception() :: #{binary() => any()}.

%% Example:
%% serverless_cache_snapshot_quota_exceeded_fault() :: #{
%%   <<"message">> => string()
%% }
-type serverless_cache_snapshot_quota_exceeded_fault() :: #{binary() => any()}.

%% Example:
%% user_groups_update_status() :: #{
%%   <<"UserGroupIdsToAdd">> => list(string()()),
%%   <<"UserGroupIdsToRemove">> => list(string()())
%% }
-type user_groups_update_status() :: #{binary() => any()}.

%% Example:
%% global_replication_group_member() :: #{
%%   <<"AutomaticFailover">> => list(any()),
%%   <<"ReplicationGroupId">> => string(),
%%   <<"ReplicationGroupRegion">> => string(),
%%   <<"Role">> => string(),
%%   <<"Status">> => string()
%% }
-type global_replication_group_member() :: #{binary() => any()}.

%% Example:
%% delete_serverless_cache_snapshot_request() :: #{
%%   <<"ServerlessCacheSnapshotName">> := string()
%% }
-type delete_serverless_cache_snapshot_request() :: #{binary() => any()}.

%% Example:
%% cache_node_type_specific_value() :: #{
%%   <<"CacheNodeType">> => string(),
%%   <<"Value">> => string()
%% }
-type cache_node_type_specific_value() :: #{binary() => any()}.

%% Example:
%% start_migration_message() :: #{
%%   <<"CustomerNodeEndpointList">> := list(customer_node_endpoint()()),
%%   <<"ReplicationGroupId">> := string()
%% }
-type start_migration_message() :: #{binary() => any()}.

%% Example:
%% node_groups_per_replication_group_quota_exceeded_fault() :: #{
%%   <<"message">> => string()
%% }
-type node_groups_per_replication_group_quota_exceeded_fault() :: #{binary() => any()}.

%% Example:
%% slot_migration() :: #{
%%   <<"ProgressPercentage">> => float()
%% }
-type slot_migration() :: #{binary() => any()}.

%% Example:
%% create_cache_cluster_result() :: #{
%%   <<"CacheCluster">> => cache_cluster()
%% }
-type create_cache_cluster_result() :: #{binary() => any()}.

%% Example:
%% global_replication_group_already_exists_fault() :: #{
%%   <<"message">> => string()
%% }
-type global_replication_group_already_exists_fault() :: #{binary() => any()}.

%% Example:
%% replication_group_message() :: #{
%%   <<"Marker">> => string(),
%%   <<"ReplicationGroups">> => list(replication_group()())
%% }
-type replication_group_message() :: #{binary() => any()}.

%% Example:
%% disassociate_global_replication_group_message() :: #{
%%   <<"GlobalReplicationGroupId">> := string(),
%%   <<"ReplicationGroupId">> := string(),
%%   <<"ReplicationGroupRegion">> := string()
%% }
-type disassociate_global_replication_group_message() :: #{binary() => any()}.

%% Example:
%% user_group_already_exists_fault() :: #{
%%   <<"message">> => string()
%% }
-type user_group_already_exists_fault() :: #{binary() => any()}.

%% Example:
%% serverless_cache_quota_for_customer_exceeded_fault() :: #{
%%   <<"message">> => string()
%% }
-type serverless_cache_quota_for_customer_exceeded_fault() :: #{binary() => any()}.

%% Example:
%% delete_cache_cluster_result() :: #{
%%   <<"CacheCluster">> => cache_cluster()
%% }
-type delete_cache_cluster_result() :: #{binary() => any()}.

%% Example:
%% modify_cache_cluster_message() :: #{
%%   <<"AZMode">> => list(any()),
%%   <<"ApplyImmediately">> => boolean(),
%%   <<"AuthToken">> => string(),
%%   <<"AuthTokenUpdateStrategy">> => list(any()),
%%   <<"AutoMinorVersionUpgrade">> => boolean(),
%%   <<"CacheClusterId">> := string(),
%%   <<"CacheNodeIdsToRemove">> => list(string()()),
%%   <<"CacheNodeType">> => string(),
%%   <<"CacheParameterGroupName">> => string(),
%%   <<"CacheSecurityGroupNames">> => list(string()()),
%%   <<"Engine">> => string(),
%%   <<"EngineVersion">> => string(),
%%   <<"IpDiscovery">> => list(any()),
%%   <<"LogDeliveryConfigurations">> => list(log_delivery_configuration_request()()),
%%   <<"NewAvailabilityZones">> => list(string()()),
%%   <<"NotificationTopicArn">> => string(),
%%   <<"NotificationTopicStatus">> => string(),
%%   <<"NumCacheNodes">> => integer(),
%%   <<"PreferredMaintenanceWindow">> => string(),
%%   <<"ScaleConfig">> => scale_config(),
%%   <<"SecurityGroupIds">> => list(string()()),
%%   <<"SnapshotRetentionLimit">> => integer(),
%%   <<"SnapshotWindow">> => string()
%% }
-type modify_cache_cluster_message() :: #{binary() => any()}.

%% Example:
%% kinesis_firehose_destination_details() :: #{
%%   <<"DeliveryStream">> => string()
%% }
-type kinesis_firehose_destination_details() :: #{binary() => any()}.

%% Example:
%% increase_node_groups_in_global_replication_group_result() :: #{
%%   <<"GlobalReplicationGroup">> => global_replication_group()
%% }
-type increase_node_groups_in_global_replication_group_result() :: #{binary() => any()}.

%% Example:
%% cache_subnet_group_already_exists_fault() :: #{
%%   <<"message">> => string()
%% }
-type cache_subnet_group_already_exists_fault() :: #{binary() => any()}.

%% Example:
%% cache_subnet_quota_exceeded_fault() :: #{
%%   <<"message">> => string()
%% }
-type cache_subnet_quota_exceeded_fault() :: #{binary() => any()}.

%% Example:
%% regional_configuration() :: #{
%%   <<"ReplicationGroupId">> => string(),
%%   <<"ReplicationGroupRegion">> => string(),
%%   <<"ReshardingConfiguration">> => list(resharding_configuration()())
%% }
-type regional_configuration() :: #{binary() => any()}.

%% Example:
%% node_quota_for_cluster_exceeded_fault() :: #{
%%   <<"message">> => string()
%% }
-type node_quota_for_cluster_exceeded_fault() :: #{binary() => any()}.

%% Example:
%% delete_serverless_cache_response() :: #{
%%   <<"ServerlessCache">> => serverless_cache()
%% }
-type delete_serverless_cache_response() :: #{binary() => any()}.

-type add_tags_to_resource_errors() ::
    user_group_not_found_fault() | 
    invalid_replication_group_state_fault() | 
    invalid_serverless_cache_snapshot_state_fault() | 
    serverless_cache_snapshot_not_found_fault() | 
    cache_subnet_group_not_found_fault() | 
    replication_group_not_found_fault() | 
    invalid_serverless_cache_state_fault() | 
    invalid_arn_fault() | 
    cache_security_group_not_found_fault() | 
    tag_quota_per_resource_exceeded() | 
    serverless_cache_not_found_fault() | 
    cache_cluster_not_found_fault() | 
    reserved_cache_node_not_found_fault() | 
    user_not_found_fault() | 
    cache_parameter_group_not_found_fault() | 
    snapshot_not_found_fault().

-type authorize_cache_security_group_ingress_errors() ::
    invalid_cache_security_group_state_fault() | 
    invalid_parameter_value_exception() | 
    authorization_already_exists_fault() | 
    cache_security_group_not_found_fault() | 
    invalid_parameter_combination_exception().

-type batch_apply_update_action_errors() ::
    invalid_parameter_value_exception() | 
    service_update_not_found_fault().

-type batch_stop_update_action_errors() ::
    invalid_parameter_value_exception() | 
    service_update_not_found_fault().

-type complete_migration_errors() ::
    invalid_replication_group_state_fault() | 
    replication_group_not_found_fault() | 
    replication_group_not_under_migration_fault().

-type copy_serverless_cache_snapshot_errors() ::
    serverless_cache_snapshot_quota_exceeded_fault() | 
    invalid_serverless_cache_snapshot_state_fault() | 
    serverless_cache_snapshot_not_found_fault() | 
    service_linked_role_not_found_fault() | 
    invalid_parameter_value_exception() | 
    serverless_cache_snapshot_already_exists_fault() | 
    tag_quota_per_resource_exceeded() | 
    invalid_parameter_combination_exception().

-type copy_snapshot_errors() ::
    snapshot_already_exists_fault() | 
    invalid_parameter_value_exception() | 
    invalid_snapshot_state_fault() | 
    tag_quota_per_resource_exceeded() | 
    invalid_parameter_combination_exception() | 
    snapshot_not_found_fault() | 
    snapshot_quota_exceeded_fault().

-type create_cache_cluster_errors() ::
    node_quota_for_cluster_exceeded_fault() | 
    insufficient_cache_cluster_capacity_fault() | 
    invalid_replication_group_state_fault() | 
    cache_subnet_group_not_found_fault() | 
    cluster_quota_for_customer_exceeded_fault() | 
    replication_group_not_found_fault() | 
    invalid_parameter_value_exception() | 
    cache_security_group_not_found_fault() | 
    cache_cluster_already_exists_fault() | 
    tag_quota_per_resource_exceeded() | 
    invalid_vpc_network_state_fault() | 
    invalid_parameter_combination_exception() | 
    cache_parameter_group_not_found_fault() | 
    node_quota_for_customer_exceeded_fault().

-type create_cache_parameter_group_errors() ::
    cache_parameter_group_quota_exceeded_fault() | 
    invalid_parameter_value_exception() | 
    tag_quota_per_resource_exceeded() | 
    invalid_parameter_combination_exception() | 
    invalid_cache_parameter_group_state_fault() | 
    cache_parameter_group_already_exists_fault().

-type create_cache_security_group_errors() ::
    cache_security_group_already_exists_fault() | 
    cache_security_group_quota_exceeded_fault() | 
    invalid_parameter_value_exception() | 
    tag_quota_per_resource_exceeded() | 
    invalid_parameter_combination_exception().

-type create_cache_subnet_group_errors() ::
    cache_subnet_quota_exceeded_fault() | 
    cache_subnet_group_already_exists_fault() | 
    subnet_not_allowed_fault() | 
    tag_quota_per_resource_exceeded() | 
    invalid_subnet() | 
    cache_subnet_group_quota_exceeded_fault().

-type create_global_replication_group_errors() ::
    global_replication_group_already_exists_fault() | 
    invalid_replication_group_state_fault() | 
    service_linked_role_not_found_fault() | 
    replication_group_not_found_fault() | 
    invalid_parameter_value_exception().

-type create_replication_group_errors() ::
    node_quota_for_cluster_exceeded_fault() | 
    node_groups_per_replication_group_quota_exceeded_fault() | 
    insufficient_cache_cluster_capacity_fault() | 
    user_group_not_found_fault() | 
    global_replication_group_not_found_fault() | 
    cache_subnet_group_not_found_fault() | 
    cluster_quota_for_customer_exceeded_fault() | 
    replication_group_already_exists_fault() | 
    invalid_parameter_value_exception() | 
    cache_security_group_not_found_fault() | 
    invalid_global_replication_group_state_fault() | 
    invalid_user_group_state_fault() | 
    tag_quota_per_resource_exceeded() | 
    invalid_vpc_network_state_fault() | 
    invalid_parameter_combination_exception() | 
    cache_cluster_not_found_fault() | 
    invalid_cache_cluster_state_fault() | 
    cache_parameter_group_not_found_fault() | 
    node_quota_for_customer_exceeded_fault().

-type create_serverless_cache_errors() ::
    serverless_cache_quota_for_customer_exceeded_fault() | 
    invalid_credentials_exception() | 
    user_group_not_found_fault() | 
    service_linked_role_not_found_fault() | 
    invalid_serverless_cache_state_fault() | 
    invalid_parameter_value_exception() | 
    invalid_user_group_state_fault() | 
    tag_quota_per_resource_exceeded() | 
    serverless_cache_not_found_fault() | 
    invalid_parameter_combination_exception() | 
    serverless_cache_already_exists_fault().

-type create_serverless_cache_snapshot_errors() ::
    serverless_cache_snapshot_quota_exceeded_fault() | 
    service_linked_role_not_found_fault() | 
    invalid_serverless_cache_state_fault() | 
    invalid_parameter_value_exception() | 
    serverless_cache_snapshot_already_exists_fault() | 
    tag_quota_per_resource_exceeded() | 
    serverless_cache_not_found_fault() | 
    invalid_parameter_combination_exception().

-type create_snapshot_errors() ::
    snapshot_feature_not_supported_fault() | 
    invalid_replication_group_state_fault() | 
    snapshot_already_exists_fault() | 
    replication_group_not_found_fault() | 
    invalid_parameter_value_exception() | 
    tag_quota_per_resource_exceeded() | 
    invalid_parameter_combination_exception() | 
    cache_cluster_not_found_fault() | 
    invalid_cache_cluster_state_fault() | 
    snapshot_quota_exceeded_fault().

-type create_user_errors() ::
    service_linked_role_not_found_fault() | 
    duplicate_user_name_fault() | 
    user_quota_exceeded_fault() | 
    user_already_exists_fault() | 
    invalid_parameter_value_exception() | 
    tag_quota_per_resource_exceeded() | 
    invalid_parameter_combination_exception().

-type create_user_group_errors() ::
    user_group_already_exists_fault() | 
    default_user_required() | 
    service_linked_role_not_found_fault() | 
    duplicate_user_name_fault() | 
    user_group_quota_exceeded_fault() | 
    invalid_parameter_value_exception() | 
    tag_quota_per_resource_exceeded() | 
    user_not_found_fault().

-type decrease_node_groups_in_global_replication_group_errors() ::
    global_replication_group_not_found_fault() | 
    invalid_parameter_value_exception() | 
    invalid_global_replication_group_state_fault() | 
    invalid_parameter_combination_exception().

-type decrease_replica_count_errors() ::
    node_groups_per_replication_group_quota_exceeded_fault() | 
    insufficient_cache_cluster_capacity_fault() | 
    invalid_replication_group_state_fault() | 
    service_linked_role_not_found_fault() | 
    cluster_quota_for_customer_exceeded_fault() | 
    replication_group_not_found_fault() | 
    invalid_parameter_value_exception() | 
    no_operation_fault() | 
    invalid_vpc_network_state_fault() | 
    invalid_parameter_combination_exception() | 
    invalid_cache_cluster_state_fault() | 
    node_quota_for_customer_exceeded_fault().

-type delete_cache_cluster_errors() ::
    snapshot_feature_not_supported_fault() | 
    snapshot_already_exists_fault() | 
    invalid_parameter_value_exception() | 
    invalid_parameter_combination_exception() | 
    cache_cluster_not_found_fault() | 
    invalid_cache_cluster_state_fault() | 
    snapshot_quota_exceeded_fault().

-type delete_cache_parameter_group_errors() ::
    invalid_parameter_value_exception() | 
    invalid_parameter_combination_exception() | 
    invalid_cache_parameter_group_state_fault() | 
    cache_parameter_group_not_found_fault().

-type delete_cache_security_group_errors() ::
    invalid_cache_security_group_state_fault() | 
    invalid_parameter_value_exception() | 
    cache_security_group_not_found_fault() | 
    invalid_parameter_combination_exception().

-type delete_cache_subnet_group_errors() ::
    cache_subnet_group_not_found_fault() | 
    cache_subnet_group_in_use().

-type delete_global_replication_group_errors() ::
    global_replication_group_not_found_fault() | 
    invalid_parameter_value_exception() | 
    invalid_global_replication_group_state_fault().

-type delete_replication_group_errors() ::
    snapshot_feature_not_supported_fault() | 
    invalid_replication_group_state_fault() | 
    snapshot_already_exists_fault() | 
    replication_group_not_found_fault() | 
    invalid_parameter_value_exception() | 
    invalid_parameter_combination_exception() | 
    snapshot_quota_exceeded_fault().

-type delete_serverless_cache_errors() ::
    invalid_credentials_exception() | 
    service_linked_role_not_found_fault() | 
    invalid_serverless_cache_state_fault() | 
    invalid_parameter_value_exception() | 
    serverless_cache_snapshot_already_exists_fault() | 
    serverless_cache_not_found_fault() | 
    invalid_parameter_combination_exception().

-type delete_serverless_cache_snapshot_errors() ::
    invalid_serverless_cache_snapshot_state_fault() | 
    serverless_cache_snapshot_not_found_fault() | 
    service_linked_role_not_found_fault() | 
    invalid_parameter_value_exception().

-type delete_snapshot_errors() ::
    invalid_parameter_value_exception() | 
    invalid_snapshot_state_fault() | 
    invalid_parameter_combination_exception() | 
    snapshot_not_found_fault().

-type delete_user_errors() ::
    default_user_associated_to_user_group_fault() | 
    service_linked_role_not_found_fault() | 
    invalid_parameter_value_exception() | 
    user_not_found_fault() | 
    invalid_user_state_fault().

-type delete_user_group_errors() ::
    user_group_not_found_fault() | 
    service_linked_role_not_found_fault() | 
    invalid_parameter_value_exception() | 
    invalid_user_group_state_fault().

-type describe_cache_clusters_errors() ::
    invalid_parameter_value_exception() | 
    invalid_parameter_combination_exception() | 
    cache_cluster_not_found_fault().

-type describe_cache_parameter_groups_errors() ::
    invalid_parameter_value_exception() | 
    invalid_parameter_combination_exception() | 
    cache_parameter_group_not_found_fault().

-type describe_cache_parameters_errors() ::
    invalid_parameter_value_exception() | 
    invalid_parameter_combination_exception() | 
    cache_parameter_group_not_found_fault().

-type describe_cache_security_groups_errors() ::
    invalid_parameter_value_exception() | 
    cache_security_group_not_found_fault() | 
    invalid_parameter_combination_exception().

-type describe_cache_subnet_groups_errors() ::
    cache_subnet_group_not_found_fault().

-type describe_engine_default_parameters_errors() ::
    invalid_parameter_value_exception() | 
    invalid_parameter_combination_exception().

-type describe_events_errors() ::
    invalid_parameter_value_exception() | 
    invalid_parameter_combination_exception().

-type describe_global_replication_groups_errors() ::
    global_replication_group_not_found_fault() | 
    invalid_parameter_value_exception() | 
    invalid_parameter_combination_exception().

-type describe_replication_groups_errors() ::
    replication_group_not_found_fault() | 
    invalid_parameter_value_exception() | 
    invalid_parameter_combination_exception().

-type describe_reserved_cache_nodes_errors() ::
    invalid_parameter_value_exception() | 
    invalid_parameter_combination_exception() | 
    reserved_cache_node_not_found_fault().

-type describe_reserved_cache_nodes_offerings_errors() ::
    invalid_parameter_value_exception() | 
    invalid_parameter_combination_exception() | 
    reserved_cache_nodes_offering_not_found_fault().

-type describe_serverless_cache_snapshots_errors() ::
    serverless_cache_snapshot_not_found_fault() | 
    invalid_parameter_value_exception() | 
    serverless_cache_not_found_fault() | 
    invalid_parameter_combination_exception().

-type describe_serverless_caches_errors() ::
    invalid_parameter_value_exception() | 
    serverless_cache_not_found_fault() | 
    invalid_parameter_combination_exception().

-type describe_service_updates_errors() ::
    invalid_parameter_value_exception() | 
    invalid_parameter_combination_exception() | 
    service_update_not_found_fault().

-type describe_snapshots_errors() ::
    invalid_parameter_value_exception() | 
    invalid_parameter_combination_exception() | 
    cache_cluster_not_found_fault() | 
    snapshot_not_found_fault().

-type describe_update_actions_errors() ::
    invalid_parameter_value_exception() | 
    invalid_parameter_combination_exception().

-type describe_user_groups_errors() ::
    user_group_not_found_fault() | 
    service_linked_role_not_found_fault() | 
    invalid_parameter_combination_exception().

-type describe_users_errors() ::
    service_linked_role_not_found_fault() | 
    invalid_parameter_combination_exception() | 
    user_not_found_fault().

-type disassociate_global_replication_group_errors() ::
    global_replication_group_not_found_fault() | 
    invalid_parameter_value_exception() | 
    invalid_global_replication_group_state_fault() | 
    invalid_parameter_combination_exception().

-type export_serverless_cache_snapshot_errors() ::
    invalid_serverless_cache_snapshot_state_fault() | 
    serverless_cache_snapshot_not_found_fault() | 
    service_linked_role_not_found_fault() | 
    invalid_parameter_value_exception().

-type failover_global_replication_group_errors() ::
    global_replication_group_not_found_fault() | 
    invalid_parameter_value_exception() | 
    invalid_global_replication_group_state_fault() | 
    invalid_parameter_combination_exception().

-type increase_node_groups_in_global_replication_group_errors() ::
    global_replication_group_not_found_fault() | 
    invalid_parameter_value_exception() | 
    invalid_global_replication_group_state_fault().

-type increase_replica_count_errors() ::
    node_groups_per_replication_group_quota_exceeded_fault() | 
    insufficient_cache_cluster_capacity_fault() | 
    invalid_replication_group_state_fault() | 
    cluster_quota_for_customer_exceeded_fault() | 
    replication_group_not_found_fault() | 
    invalid_parameter_value_exception() | 
    no_operation_fault() | 
    invalid_vpc_network_state_fault() | 
    invalid_parameter_combination_exception() | 
    invalid_kms_key_fault() | 
    invalid_cache_cluster_state_fault() | 
    node_quota_for_customer_exceeded_fault().

-type list_allowed_node_type_modifications_errors() ::
    replication_group_not_found_fault() | 
    invalid_parameter_value_exception() | 
    invalid_parameter_combination_exception() | 
    cache_cluster_not_found_fault().

-type list_tags_for_resource_errors() ::
    user_group_not_found_fault() | 
    invalid_replication_group_state_fault() | 
    invalid_serverless_cache_snapshot_state_fault() | 
    serverless_cache_snapshot_not_found_fault() | 
    cache_subnet_group_not_found_fault() | 
    replication_group_not_found_fault() | 
    invalid_serverless_cache_state_fault() | 
    invalid_arn_fault() | 
    cache_security_group_not_found_fault() | 
    serverless_cache_not_found_fault() | 
    cache_cluster_not_found_fault() | 
    reserved_cache_node_not_found_fault() | 
    user_not_found_fault() | 
    cache_parameter_group_not_found_fault() | 
    snapshot_not_found_fault().

-type modify_cache_cluster_errors() ::
    node_quota_for_cluster_exceeded_fault() | 
    insufficient_cache_cluster_capacity_fault() | 
    invalid_cache_security_group_state_fault() | 
    invalid_parameter_value_exception() | 
    cache_security_group_not_found_fault() | 
    invalid_vpc_network_state_fault() | 
    invalid_parameter_combination_exception() | 
    cache_cluster_not_found_fault() | 
    invalid_cache_cluster_state_fault() | 
    cache_parameter_group_not_found_fault() | 
    node_quota_for_customer_exceeded_fault().

-type modify_cache_parameter_group_errors() ::
    invalid_parameter_value_exception() | 
    invalid_global_replication_group_state_fault() | 
    invalid_parameter_combination_exception() | 
    invalid_cache_parameter_group_state_fault() | 
    cache_parameter_group_not_found_fault().

-type modify_cache_subnet_group_errors() ::
    cache_subnet_quota_exceeded_fault() | 
    cache_subnet_group_not_found_fault() | 
    subnet_in_use() | 
    subnet_not_allowed_fault() | 
    invalid_subnet().

-type modify_global_replication_group_errors() ::
    global_replication_group_not_found_fault() | 
    invalid_parameter_value_exception() | 
    invalid_global_replication_group_state_fault().

-type modify_replication_group_errors() ::
    node_quota_for_cluster_exceeded_fault() | 
    insufficient_cache_cluster_capacity_fault() | 
    user_group_not_found_fault() | 
    invalid_replication_group_state_fault() | 
    invalid_cache_security_group_state_fault() | 
    replication_group_not_found_fault() | 
    invalid_parameter_value_exception() | 
    cache_security_group_not_found_fault() | 
    invalid_user_group_state_fault() | 
    invalid_vpc_network_state_fault() | 
    invalid_parameter_combination_exception() | 
    cache_cluster_not_found_fault() | 
    invalid_kms_key_fault() | 
    invalid_cache_cluster_state_fault() | 
    cache_parameter_group_not_found_fault() | 
    node_quota_for_customer_exceeded_fault().

-type modify_replication_group_shard_configuration_errors() ::
    node_groups_per_replication_group_quota_exceeded_fault() | 
    insufficient_cache_cluster_capacity_fault() | 
    invalid_replication_group_state_fault() | 
    replication_group_not_found_fault() | 
    invalid_parameter_value_exception() | 
    invalid_vpc_network_state_fault() | 
    invalid_parameter_combination_exception() | 
    invalid_kms_key_fault() | 
    invalid_cache_cluster_state_fault() | 
    node_quota_for_customer_exceeded_fault().

-type modify_serverless_cache_errors() ::
    invalid_credentials_exception() | 
    user_group_not_found_fault() | 
    service_linked_role_not_found_fault() | 
    invalid_serverless_cache_state_fault() | 
    invalid_parameter_value_exception() | 
    invalid_user_group_state_fault() | 
    serverless_cache_not_found_fault() | 
    invalid_parameter_combination_exception().

-type modify_user_errors() ::
    service_linked_role_not_found_fault() | 
    invalid_parameter_value_exception() | 
    invalid_parameter_combination_exception() | 
    user_not_found_fault() | 
    invalid_user_state_fault().

-type modify_user_group_errors() ::
    user_group_not_found_fault() | 
    default_user_required() | 
    service_linked_role_not_found_fault() | 
    duplicate_user_name_fault() | 
    invalid_parameter_value_exception() | 
    invalid_user_group_state_fault() | 
    invalid_parameter_combination_exception() | 
    user_not_found_fault().

-type purchase_reserved_cache_nodes_offering_errors() ::
    reserved_cache_node_quota_exceeded_fault() | 
    invalid_parameter_value_exception() | 
    tag_quota_per_resource_exceeded() | 
    reserved_cache_node_already_exists_fault() | 
    invalid_parameter_combination_exception() | 
    reserved_cache_nodes_offering_not_found_fault().

-type rebalance_slots_in_global_replication_group_errors() ::
    global_replication_group_not_found_fault() | 
    invalid_parameter_value_exception() | 
    invalid_global_replication_group_state_fault().

-type reboot_cache_cluster_errors() ::
    cache_cluster_not_found_fault() | 
    invalid_cache_cluster_state_fault().

-type remove_tags_from_resource_errors() ::
    user_group_not_found_fault() | 
    invalid_replication_group_state_fault() | 
    invalid_serverless_cache_snapshot_state_fault() | 
    serverless_cache_snapshot_not_found_fault() | 
    cache_subnet_group_not_found_fault() | 
    replication_group_not_found_fault() | 
    invalid_serverless_cache_state_fault() | 
    invalid_arn_fault() | 
    cache_security_group_not_found_fault() | 
    serverless_cache_not_found_fault() | 
    tag_not_found_fault() | 
    cache_cluster_not_found_fault() | 
    reserved_cache_node_not_found_fault() | 
    user_not_found_fault() | 
    cache_parameter_group_not_found_fault() | 
    snapshot_not_found_fault().

-type reset_cache_parameter_group_errors() ::
    invalid_parameter_value_exception() | 
    invalid_global_replication_group_state_fault() | 
    invalid_parameter_combination_exception() | 
    invalid_cache_parameter_group_state_fault() | 
    cache_parameter_group_not_found_fault().

-type revoke_cache_security_group_ingress_errors() ::
    invalid_cache_security_group_state_fault() | 
    invalid_parameter_value_exception() | 
    cache_security_group_not_found_fault() | 
    authorization_not_found_fault() | 
    invalid_parameter_combination_exception().

-type start_migration_errors() ::
    replication_group_already_under_migration_fault() | 
    invalid_replication_group_state_fault() | 
    replication_group_not_found_fault() | 
    invalid_parameter_value_exception().

-type test_failover_errors() ::
    invalid_replication_group_state_fault() | 
    replication_group_not_found_fault() | 
    api_call_rate_for_customer_exceeded_fault() | 
    node_group_not_found_fault() | 
    invalid_parameter_value_exception() | 
    test_failover_not_available_fault() | 
    invalid_parameter_combination_exception() | 
    invalid_kms_key_fault() | 
    invalid_cache_cluster_state_fault().

-type test_migration_errors() ::
    replication_group_already_under_migration_fault() | 
    invalid_replication_group_state_fault() | 
    replication_group_not_found_fault() | 
    invalid_parameter_value_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc A tag is a key-value pair where the key and value are case-sensitive.
%%
%% You can use tags
%% to categorize and track all your ElastiCache resources, with the exception
%% of global
%% replication group. When you add or remove tags on replication groups,
%% those actions will
%% be replicated to all nodes in the replication group. For more information,
%% see Resource-level permissions:
%% http://docs.aws.amazon.com/AmazonElastiCache/latest/dg/IAM.ResourceLevelPermissions.html.
%%
%% For example, you can use cost-allocation tags to your ElastiCache
%% resources, Amazon
%% generates a cost allocation report as a comma-separated value (CSV) file
%% with your usage
%% and costs aggregated by your tags. You can apply tags that represent
%% business categories
%% (such as cost centers, application names, or owners) to organize your
%% costs across
%% multiple services.
%%
%% For more information, see Using Cost Allocation Tags in
%% Amazon ElastiCache:
%% https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/Tagging.html in
%% the ElastiCache User
%% Guide.
-spec add_tags_to_resource(aws_client:aws_client(), add_tags_to_resource_message()) ->
    {ok, tag_list_message(), tuple()} |
    {error, any()} |
    {error, add_tags_to_resource_errors(), tuple()}.
add_tags_to_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_tags_to_resource(Client, Input, []).

-spec add_tags_to_resource(aws_client:aws_client(), add_tags_to_resource_message(), proplists:proplist()) ->
    {ok, tag_list_message(), tuple()} |
    {error, any()} |
    {error, add_tags_to_resource_errors(), tuple()}.
add_tags_to_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddTagsToResource">>, Input, Options).

%% @doc Allows network ingress to a cache security group.
%%
%% Applications using ElastiCache must
%% be running on Amazon EC2, and Amazon EC2 security groups are used as the
%% authorization
%% mechanism.
%%
%% You cannot authorize ingress from an Amazon EC2 security group in one
%% region to an
%% ElastiCache cluster in another region.
-spec authorize_cache_security_group_ingress(aws_client:aws_client(), authorize_cache_security_group_ingress_message()) ->
    {ok, authorize_cache_security_group_ingress_result(), tuple()} |
    {error, any()} |
    {error, authorize_cache_security_group_ingress_errors(), tuple()}.
authorize_cache_security_group_ingress(Client, Input)
  when is_map(Client), is_map(Input) ->
    authorize_cache_security_group_ingress(Client, Input, []).

-spec authorize_cache_security_group_ingress(aws_client:aws_client(), authorize_cache_security_group_ingress_message(), proplists:proplist()) ->
    {ok, authorize_cache_security_group_ingress_result(), tuple()} |
    {error, any()} |
    {error, authorize_cache_security_group_ingress_errors(), tuple()}.
authorize_cache_security_group_ingress(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AuthorizeCacheSecurityGroupIngress">>, Input, Options).

%% @doc Apply the service update.
%%
%% For more information on service updates and applying them,
%% see Applying Service
%% Updates:
%% https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/applying-updates.html.
-spec batch_apply_update_action(aws_client:aws_client(), batch_apply_update_action_message()) ->
    {ok, update_action_results_message(), tuple()} |
    {error, any()} |
    {error, batch_apply_update_action_errors(), tuple()}.
batch_apply_update_action(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_apply_update_action(Client, Input, []).

-spec batch_apply_update_action(aws_client:aws_client(), batch_apply_update_action_message(), proplists:proplist()) ->
    {ok, update_action_results_message(), tuple()} |
    {error, any()} |
    {error, batch_apply_update_action_errors(), tuple()}.
batch_apply_update_action(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchApplyUpdateAction">>, Input, Options).

%% @doc Stop the service update.
%%
%% For more information on service updates and stopping them,
%% see Stopping
%% Service Updates:
%% https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/stopping-self-service-updates.html.
-spec batch_stop_update_action(aws_client:aws_client(), batch_stop_update_action_message()) ->
    {ok, update_action_results_message(), tuple()} |
    {error, any()} |
    {error, batch_stop_update_action_errors(), tuple()}.
batch_stop_update_action(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_stop_update_action(Client, Input, []).

-spec batch_stop_update_action(aws_client:aws_client(), batch_stop_update_action_message(), proplists:proplist()) ->
    {ok, update_action_results_message(), tuple()} |
    {error, any()} |
    {error, batch_stop_update_action_errors(), tuple()}.
batch_stop_update_action(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchStopUpdateAction">>, Input, Options).

%% @doc Complete the migration of data.
-spec complete_migration(aws_client:aws_client(), complete_migration_message()) ->
    {ok, complete_migration_response(), tuple()} |
    {error, any()} |
    {error, complete_migration_errors(), tuple()}.
complete_migration(Client, Input)
  when is_map(Client), is_map(Input) ->
    complete_migration(Client, Input, []).

-spec complete_migration(aws_client:aws_client(), complete_migration_message(), proplists:proplist()) ->
    {ok, complete_migration_response(), tuple()} |
    {error, any()} |
    {error, complete_migration_errors(), tuple()}.
complete_migration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CompleteMigration">>, Input, Options).

%% @doc Creates a copy of an existing serverless cache’s snapshot.
%%
%% Available for Valkey, Redis OSS and Serverless Memcached only.
-spec copy_serverless_cache_snapshot(aws_client:aws_client(), copy_serverless_cache_snapshot_request()) ->
    {ok, copy_serverless_cache_snapshot_response(), tuple()} |
    {error, any()} |
    {error, copy_serverless_cache_snapshot_errors(), tuple()}.
copy_serverless_cache_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    copy_serverless_cache_snapshot(Client, Input, []).

-spec copy_serverless_cache_snapshot(aws_client:aws_client(), copy_serverless_cache_snapshot_request(), proplists:proplist()) ->
    {ok, copy_serverless_cache_snapshot_response(), tuple()} |
    {error, any()} |
    {error, copy_serverless_cache_snapshot_errors(), tuple()}.
copy_serverless_cache_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CopyServerlessCacheSnapshot">>, Input, Options).

%% @doc Makes a copy of an existing snapshot.
%%
%% This operation is valid for Valkey or Redis OSS only.
%%
%% Users or groups that have permissions to use the `CopySnapshot'
%% operation can create their own Amazon S3 buckets and copy snapshots to it.
%% To
%% control access to your snapshots, use an IAM policy to control who has the
%% ability
%% to use the `CopySnapshot' operation. For more information about using
%% IAM
%% to control the use of ElastiCache operations, see Exporting
%% Snapshots:
%% https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/backups-exporting.html
%% and Authentication &amp; Access
%% Control: https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/IAM.html.
%%
%% You could receive the following error messages.
%%
%% == Error Messages ==
%%
%% Error Message: The S3 bucket %s is outside of
%% the region.
%%
%% Solution: Create an Amazon S3 bucket in the
%% same region as your snapshot. For more information, see Step 1: Create an
%% Amazon S3 Bucket:
%% https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/backups-exporting.html#backups-exporting-create-s3-bucket
%% in the ElastiCache User
%% Guide.
%%
%% Error Message: The S3 bucket %s does not
%% exist.
%%
%% Solution: Create an Amazon S3 bucket in the
%% same region as your snapshot. For more information, see Step 1: Create an
%% Amazon S3 Bucket:
%% https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/backups-exporting.html#backups-exporting-create-s3-bucket
%% in the ElastiCache User
%% Guide.
%%
%% Error Message: The S3 bucket %s is not owned
%% by the authenticated user.
%%
%% Solution: Create an Amazon S3 bucket in the
%% same region as your snapshot. For more information, see Step 1: Create an
%% Amazon S3 Bucket:
%% https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/backups-exporting.html#backups-exporting-create-s3-bucket
%% in the ElastiCache User
%% Guide.
%%
%% Error Message: The authenticated user does
%% not have sufficient permissions to perform the desired activity.
%%
%% Solution: Contact your system administrator
%% to get the needed permissions.
%%
%% Error Message: The S3 bucket %s already
%% contains an object with key %s.
%%
%% Solution: Give the
%% `TargetSnapshotName' a new and unique value. If exporting a
%% snapshot, you could alternatively create a new Amazon S3 bucket and use
%% this
%% same value for `TargetSnapshotName'.
%%
%% Error Message: ElastiCache has not been
%% granted READ permissions %s on the S3 Bucket.
%%
%% Solution: Add List and Read permissions on
%% the bucket. For more information, see Step 2: Grant ElastiCache Access to
%% Your Amazon S3 Bucket:
%% https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/backups-exporting.html#backups-exporting-grant-access
%% in the
%% ElastiCache User Guide.
%%
%% Error Message: ElastiCache has not been
%% granted WRITE permissions %s on the S3 Bucket.
%%
%% Solution: Add Upload/Delete permissions on
%% the bucket. For more information, see Step 2: Grant ElastiCache Access to
%% Your Amazon S3 Bucket:
%% https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/backups-exporting.html#backups-exporting-grant-access
%% in the
%% ElastiCache User Guide.
%%
%% Error Message: ElastiCache has not been
%% granted READ_ACP permissions %s on the S3 Bucket.
%%
%% Solution: Add View Permissions on the bucket.
%% For more information, see Step 2: Grant ElastiCache Access to Your Amazon
%% S3 Bucket:
%% https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/backups-exporting.html#backups-exporting-grant-access
%% in the
%% ElastiCache User Guide.
-spec copy_snapshot(aws_client:aws_client(), copy_snapshot_message()) ->
    {ok, copy_snapshot_result(), tuple()} |
    {error, any()} |
    {error, copy_snapshot_errors(), tuple()}.
copy_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    copy_snapshot(Client, Input, []).

-spec copy_snapshot(aws_client:aws_client(), copy_snapshot_message(), proplists:proplist()) ->
    {ok, copy_snapshot_result(), tuple()} |
    {error, any()} |
    {error, copy_snapshot_errors(), tuple()}.
copy_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CopySnapshot">>, Input, Options).

%% @doc Creates a cluster.
%%
%% All nodes in the cluster run the same protocol-compliant cache
%% engine software, either Memcached, Valkey or Redis OSS.
%%
%% This operation is not supported for Valkey or Redis OSS (cluster mode
%% enabled) clusters.
-spec create_cache_cluster(aws_client:aws_client(), create_cache_cluster_message()) ->
    {ok, create_cache_cluster_result(), tuple()} |
    {error, any()} |
    {error, create_cache_cluster_errors(), tuple()}.
create_cache_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_cache_cluster(Client, Input, []).

-spec create_cache_cluster(aws_client:aws_client(), create_cache_cluster_message(), proplists:proplist()) ->
    {ok, create_cache_cluster_result(), tuple()} |
    {error, any()} |
    {error, create_cache_cluster_errors(), tuple()}.
create_cache_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateCacheCluster">>, Input, Options).

%% @doc Creates a new Amazon ElastiCache cache parameter group.
%%
%% An ElastiCache cache parameter
%% group is a collection of parameters and their values that are applied to
%% all of the
%% nodes in any cluster or replication group using the CacheParameterGroup.
%%
%% A newly created CacheParameterGroup is an exact duplicate of the default
%% parameter
%% group for the CacheParameterGroupFamily. To customize the newly created
%% CacheParameterGroup you can change the values of specific parameters. For
%% more
%% information, see:
%%
%% ModifyCacheParameterGroup:
%% https://docs.aws.amazon.com/AmazonElastiCache/latest/APIReference/API_ModifyCacheParameterGroup.html
%% in the ElastiCache API Reference.
%%
%% Parameters and
%% Parameter Groups:
%% https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/ParameterGroups.html
%% in the ElastiCache User Guide.
-spec create_cache_parameter_group(aws_client:aws_client(), create_cache_parameter_group_message()) ->
    {ok, create_cache_parameter_group_result(), tuple()} |
    {error, any()} |
    {error, create_cache_parameter_group_errors(), tuple()}.
create_cache_parameter_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_cache_parameter_group(Client, Input, []).

-spec create_cache_parameter_group(aws_client:aws_client(), create_cache_parameter_group_message(), proplists:proplist()) ->
    {ok, create_cache_parameter_group_result(), tuple()} |
    {error, any()} |
    {error, create_cache_parameter_group_errors(), tuple()}.
create_cache_parameter_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateCacheParameterGroup">>, Input, Options).

%% @doc Creates a new cache security group.
%%
%% Use a cache security group to control access to
%% one or more clusters.
%%
%% Cache security groups are only used when you are creating a cluster
%% outside of an
%% Amazon Virtual Private Cloud (Amazon VPC). If you are creating a cluster
%% inside of a
%% VPC, use a cache subnet group instead. For more information, see
%% CreateCacheSubnetGroup:
%% https://docs.aws.amazon.com/AmazonElastiCache/latest/APIReference/API_CreateCacheSubnetGroup.html.
-spec create_cache_security_group(aws_client:aws_client(), create_cache_security_group_message()) ->
    {ok, create_cache_security_group_result(), tuple()} |
    {error, any()} |
    {error, create_cache_security_group_errors(), tuple()}.
create_cache_security_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_cache_security_group(Client, Input, []).

-spec create_cache_security_group(aws_client:aws_client(), create_cache_security_group_message(), proplists:proplist()) ->
    {ok, create_cache_security_group_result(), tuple()} |
    {error, any()} |
    {error, create_cache_security_group_errors(), tuple()}.
create_cache_security_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateCacheSecurityGroup">>, Input, Options).

%% @doc Creates a new cache subnet group.
%%
%% Use this parameter only when you are creating a cluster in an Amazon
%% Virtual Private
%% Cloud (Amazon VPC).
-spec create_cache_subnet_group(aws_client:aws_client(), create_cache_subnet_group_message()) ->
    {ok, create_cache_subnet_group_result(), tuple()} |
    {error, any()} |
    {error, create_cache_subnet_group_errors(), tuple()}.
create_cache_subnet_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_cache_subnet_group(Client, Input, []).

-spec create_cache_subnet_group(aws_client:aws_client(), create_cache_subnet_group_message(), proplists:proplist()) ->
    {ok, create_cache_subnet_group_result(), tuple()} |
    {error, any()} |
    {error, create_cache_subnet_group_errors(), tuple()}.
create_cache_subnet_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateCacheSubnetGroup">>, Input, Options).

%% @doc Global Datastore offers fully managed, fast, reliable and secure
%% cross-region replication.
%%
%% Using Global Datastore with Valkey or Redis OSS, you can create
%% cross-region
%% read replica clusters for ElastiCache to enable low-latency reads and
%% disaster
%% recovery across regions. For more information, see Replication
%% Across Regions Using Global Datastore:
%% https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/Redis-Global-Datastore.html.
%%
%% The GlobalReplicationGroupIdSuffix is the
%% name of the Global datastore.
%%
%% The PrimaryReplicationGroupId represents the
%% name of the primary cluster that accepts writes and will replicate updates
%% to
%% the secondary cluster.
-spec create_global_replication_group(aws_client:aws_client(), create_global_replication_group_message()) ->
    {ok, create_global_replication_group_result(), tuple()} |
    {error, any()} |
    {error, create_global_replication_group_errors(), tuple()}.
create_global_replication_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_global_replication_group(Client, Input, []).

-spec create_global_replication_group(aws_client:aws_client(), create_global_replication_group_message(), proplists:proplist()) ->
    {ok, create_global_replication_group_result(), tuple()} |
    {error, any()} |
    {error, create_global_replication_group_errors(), tuple()}.
create_global_replication_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateGlobalReplicationGroup">>, Input, Options).

%% @doc Creates a Valkey or Redis OSS (cluster mode disabled) or a Valkey or
%% Redis OSS (cluster mode enabled) replication
%% group.
%%
%% This API can be used to create a standalone regional replication group or
%% a secondary
%% replication group associated with a Global datastore.
%%
%% A Valkey or Redis OSS (cluster mode disabled) replication group is a
%% collection of nodes, where
%% one of the nodes is a read/write primary and the others are read-only
%% replicas.
%% Writes to the primary are asynchronously propagated to the replicas.
%%
%% A Valkey or Redis OSS cluster-mode enabled cluster is comprised of from 1
%% to 90 shards (API/CLI:
%% node groups). Each shard has a primary node and up to 5 read-only replica
%% nodes. The
%% configuration can range from 90 shards and 0 replicas to 15 shards and 5
%% replicas, which
%% is the maximum number or replicas allowed.
%%
%% The node or shard limit can be increased to a maximum of 500 per cluster
%% if the Valkey or Redis OSS
%% engine version is 5.0.6 or higher. For example, you can choose to
%% configure a 500 node
%% cluster that ranges between 83 shards (one primary and 5 replicas per
%% shard) and 500
%% shards (single primary and no replicas). Make sure there are enough
%% available IP
%% addresses to accommodate the increase. Common pitfalls include the subnets
%% in the subnet
%% group have too small a CIDR range or the subnets are shared and heavily
%% used by other
%% clusters. For more information, see Creating a Subnet
%% Group:
%% https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/SubnetGroups.Creating.html.
%% For versions below 5.0.6, the limit is 250 per cluster.
%%
%% To request a limit increase, see Amazon Service Limits:
%% https://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html and
%% choose the limit type Nodes per cluster per instance
%% type.
%%
%% When a Valkey or Redis OSS (cluster mode disabled) replication group has
%% been successfully created,
%% you can add one or more read replicas to it, up to a total of 5 read
%% replicas. If you
%% need to increase or decrease the number of node groups (console: shards),
%% you can use scaling.
%% For more information, see Scaling self-designed clusters:
%% https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/Scaling.html in
%% the ElastiCache User
%% Guide.
%%
%% This operation is valid for Valkey and Redis OSS only.
-spec create_replication_group(aws_client:aws_client(), create_replication_group_message()) ->
    {ok, create_replication_group_result(), tuple()} |
    {error, any()} |
    {error, create_replication_group_errors(), tuple()}.
create_replication_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_replication_group(Client, Input, []).

-spec create_replication_group(aws_client:aws_client(), create_replication_group_message(), proplists:proplist()) ->
    {ok, create_replication_group_result(), tuple()} |
    {error, any()} |
    {error, create_replication_group_errors(), tuple()}.
create_replication_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateReplicationGroup">>, Input, Options).

%% @doc Creates a serverless cache.
-spec create_serverless_cache(aws_client:aws_client(), create_serverless_cache_request()) ->
    {ok, create_serverless_cache_response(), tuple()} |
    {error, any()} |
    {error, create_serverless_cache_errors(), tuple()}.
create_serverless_cache(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_serverless_cache(Client, Input, []).

-spec create_serverless_cache(aws_client:aws_client(), create_serverless_cache_request(), proplists:proplist()) ->
    {ok, create_serverless_cache_response(), tuple()} |
    {error, any()} |
    {error, create_serverless_cache_errors(), tuple()}.
create_serverless_cache(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateServerlessCache">>, Input, Options).

%% @doc This API creates a copy of an entire ServerlessCache at a specific
%% moment in time.
%%
%% Available for Valkey, Redis OSS and Serverless Memcached only.
-spec create_serverless_cache_snapshot(aws_client:aws_client(), create_serverless_cache_snapshot_request()) ->
    {ok, create_serverless_cache_snapshot_response(), tuple()} |
    {error, any()} |
    {error, create_serverless_cache_snapshot_errors(), tuple()}.
create_serverless_cache_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_serverless_cache_snapshot(Client, Input, []).

-spec create_serverless_cache_snapshot(aws_client:aws_client(), create_serverless_cache_snapshot_request(), proplists:proplist()) ->
    {ok, create_serverless_cache_snapshot_response(), tuple()} |
    {error, any()} |
    {error, create_serverless_cache_snapshot_errors(), tuple()}.
create_serverless_cache_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateServerlessCacheSnapshot">>, Input, Options).

%% @doc Creates a copy of an entire cluster or replication group at a
%% specific moment in
%% time.
%%
%% This operation is valid for Valkey or Redis OSS only.
-spec create_snapshot(aws_client:aws_client(), create_snapshot_message()) ->
    {ok, create_snapshot_result(), tuple()} |
    {error, any()} |
    {error, create_snapshot_errors(), tuple()}.
create_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_snapshot(Client, Input, []).

-spec create_snapshot(aws_client:aws_client(), create_snapshot_message(), proplists:proplist()) ->
    {ok, create_snapshot_result(), tuple()} |
    {error, any()} |
    {error, create_snapshot_errors(), tuple()}.
create_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateSnapshot">>, Input, Options).

%% @doc For Valkey engine version 7.2 onwards and Redis OSS 6.0 to 7.1:
%% Creates a user.
%%
%% For more information, see
%% Using Role Based Access Control (RBAC):
%% http://docs.aws.amazon.com/AmazonElastiCache/latest/dg/Clusters.RBAC.html.
-spec create_user(aws_client:aws_client(), create_user_message()) ->
    {ok, user(), tuple()} |
    {error, any()} |
    {error, create_user_errors(), tuple()}.
create_user(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_user(Client, Input, []).

-spec create_user(aws_client:aws_client(), create_user_message(), proplists:proplist()) ->
    {ok, user(), tuple()} |
    {error, any()} |
    {error, create_user_errors(), tuple()}.
create_user(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateUser">>, Input, Options).

%% @doc For Valkey engine version 7.2 onwards and Redis OSS 6.0 to 7.1:
%% Creates a user group.
%%
%% For more
%% information, see Using Role Based Access Control (RBAC):
%% http://docs.aws.amazon.com/AmazonElastiCache/latest/dg/Clusters.RBAC.html
-spec create_user_group(aws_client:aws_client(), create_user_group_message()) ->
    {ok, user_group(), tuple()} |
    {error, any()} |
    {error, create_user_group_errors(), tuple()}.
create_user_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_user_group(Client, Input, []).

-spec create_user_group(aws_client:aws_client(), create_user_group_message(), proplists:proplist()) ->
    {ok, user_group(), tuple()} |
    {error, any()} |
    {error, create_user_group_errors(), tuple()}.
create_user_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateUserGroup">>, Input, Options).

%% @doc Decreases the number of node groups in a Global datastore
-spec decrease_node_groups_in_global_replication_group(aws_client:aws_client(), decrease_node_groups_in_global_replication_group_message()) ->
    {ok, decrease_node_groups_in_global_replication_group_result(), tuple()} |
    {error, any()} |
    {error, decrease_node_groups_in_global_replication_group_errors(), tuple()}.
decrease_node_groups_in_global_replication_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    decrease_node_groups_in_global_replication_group(Client, Input, []).

-spec decrease_node_groups_in_global_replication_group(aws_client:aws_client(), decrease_node_groups_in_global_replication_group_message(), proplists:proplist()) ->
    {ok, decrease_node_groups_in_global_replication_group_result(), tuple()} |
    {error, any()} |
    {error, decrease_node_groups_in_global_replication_group_errors(), tuple()}.
decrease_node_groups_in_global_replication_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DecreaseNodeGroupsInGlobalReplicationGroup">>, Input, Options).

%% @doc Dynamically decreases the number of replicas in a Valkey or Redis OSS
%% (cluster mode disabled)
%% replication group or the number of replica nodes in one or more node
%% groups (shards) of
%% a Valkey or Redis OSS (cluster mode enabled) replication group.
%%
%% This operation is performed with no
%% cluster down time.
-spec decrease_replica_count(aws_client:aws_client(), decrease_replica_count_message()) ->
    {ok, decrease_replica_count_result(), tuple()} |
    {error, any()} |
    {error, decrease_replica_count_errors(), tuple()}.
decrease_replica_count(Client, Input)
  when is_map(Client), is_map(Input) ->
    decrease_replica_count(Client, Input, []).

-spec decrease_replica_count(aws_client:aws_client(), decrease_replica_count_message(), proplists:proplist()) ->
    {ok, decrease_replica_count_result(), tuple()} |
    {error, any()} |
    {error, decrease_replica_count_errors(), tuple()}.
decrease_replica_count(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DecreaseReplicaCount">>, Input, Options).

%% @doc Deletes a previously provisioned cluster.
%%
%% `DeleteCacheCluster' deletes all
%% associated cache nodes, node endpoints and the cluster itself. When you
%% receive a
%% successful response from this operation, Amazon ElastiCache immediately
%% begins deleting
%% the cluster; you cannot cancel or revert this operation.
%%
%% This operation is not valid for:
%%
%% Valkey or Redis OSS (cluster mode enabled) clusters
%%
%% Valkey or Redis OSS (cluster mode disabled) clusters
%%
%% A cluster that is the last read replica of a replication group
%%
%% A cluster that is the primary node of a replication group
%%
%% A node group (shard) that has Multi-AZ mode enabled
%%
%% A cluster from a Valkey or Redis OSS (cluster mode enabled) replication
%% group
%%
%% A cluster that is not in the `available' state
-spec delete_cache_cluster(aws_client:aws_client(), delete_cache_cluster_message()) ->
    {ok, delete_cache_cluster_result(), tuple()} |
    {error, any()} |
    {error, delete_cache_cluster_errors(), tuple()}.
delete_cache_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_cache_cluster(Client, Input, []).

-spec delete_cache_cluster(aws_client:aws_client(), delete_cache_cluster_message(), proplists:proplist()) ->
    {ok, delete_cache_cluster_result(), tuple()} |
    {error, any()} |
    {error, delete_cache_cluster_errors(), tuple()}.
delete_cache_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteCacheCluster">>, Input, Options).

%% @doc Deletes the specified cache parameter group.
%%
%% You cannot delete a cache parameter group
%% if it is associated with any cache clusters. You cannot delete the default
%% cache
%% parameter groups in your account.
-spec delete_cache_parameter_group(aws_client:aws_client(), delete_cache_parameter_group_message()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_cache_parameter_group_errors(), tuple()}.
delete_cache_parameter_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_cache_parameter_group(Client, Input, []).

-spec delete_cache_parameter_group(aws_client:aws_client(), delete_cache_parameter_group_message(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_cache_parameter_group_errors(), tuple()}.
delete_cache_parameter_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteCacheParameterGroup">>, Input, Options).

%% @doc Deletes a cache security group.
%%
%% You cannot delete a cache security group if it is associated with any
%% clusters.
-spec delete_cache_security_group(aws_client:aws_client(), delete_cache_security_group_message()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_cache_security_group_errors(), tuple()}.
delete_cache_security_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_cache_security_group(Client, Input, []).

-spec delete_cache_security_group(aws_client:aws_client(), delete_cache_security_group_message(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_cache_security_group_errors(), tuple()}.
delete_cache_security_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteCacheSecurityGroup">>, Input, Options).

%% @doc Deletes a cache subnet group.
%%
%% You cannot delete a default cache subnet group or one that is associated
%% with any
%% clusters.
-spec delete_cache_subnet_group(aws_client:aws_client(), delete_cache_subnet_group_message()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_cache_subnet_group_errors(), tuple()}.
delete_cache_subnet_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_cache_subnet_group(Client, Input, []).

-spec delete_cache_subnet_group(aws_client:aws_client(), delete_cache_subnet_group_message(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_cache_subnet_group_errors(), tuple()}.
delete_cache_subnet_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteCacheSubnetGroup">>, Input, Options).

%% @doc Deleting a Global datastore is a two-step process:
%%
%% First, you must `DisassociateGlobalReplicationGroup' to remove
%% the secondary clusters in the Global datastore.
%%
%% Once the Global datastore contains only the primary cluster, you can use
%% the
%% `DeleteGlobalReplicationGroup' API to delete the Global datastore
%% while retainining the primary cluster using
%% `RetainPrimaryReplicationGroup=true'.
%%
%% Since the Global Datastore has only a primary cluster, you can delete the
%% Global
%% Datastore while retaining the primary by setting
%% `RetainPrimaryReplicationGroup=true'. The primary cluster is never
%% deleted when deleting a Global Datastore. It can only be deleted when it
%% no longer is
%% associated with any Global Datastore.
%%
%% When you receive a successful response from this operation, Amazon
%% ElastiCache
%% immediately begins deleting the selected resources; you cannot cancel or
%% revert this
%% operation.
-spec delete_global_replication_group(aws_client:aws_client(), delete_global_replication_group_message()) ->
    {ok, delete_global_replication_group_result(), tuple()} |
    {error, any()} |
    {error, delete_global_replication_group_errors(), tuple()}.
delete_global_replication_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_global_replication_group(Client, Input, []).

-spec delete_global_replication_group(aws_client:aws_client(), delete_global_replication_group_message(), proplists:proplist()) ->
    {ok, delete_global_replication_group_result(), tuple()} |
    {error, any()} |
    {error, delete_global_replication_group_errors(), tuple()}.
delete_global_replication_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteGlobalReplicationGroup">>, Input, Options).

%% @doc Deletes an existing replication group.
%%
%% By default, this operation deletes the entire
%% replication group, including the primary/primaries and all of the read
%% replicas. If the
%% replication group has only one primary, you can optionally delete only the
%% read
%% replicas, while retaining the primary by setting
%% `RetainPrimaryCluster=true'.
%%
%% When you receive a successful response from this operation, Amazon
%% ElastiCache
%% immediately begins deleting the selected resources; you cannot cancel or
%% revert this
%% operation.
%%
%% `CreateSnapshot' permission is required to create a final snapshot.
%% Without this permission, the API call will fail with an `Access
%% Denied' exception.
%%
%% This operation is valid for Redis OSS only.
-spec delete_replication_group(aws_client:aws_client(), delete_replication_group_message()) ->
    {ok, delete_replication_group_result(), tuple()} |
    {error, any()} |
    {error, delete_replication_group_errors(), tuple()}.
delete_replication_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_replication_group(Client, Input, []).

-spec delete_replication_group(aws_client:aws_client(), delete_replication_group_message(), proplists:proplist()) ->
    {ok, delete_replication_group_result(), tuple()} |
    {error, any()} |
    {error, delete_replication_group_errors(), tuple()}.
delete_replication_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteReplicationGroup">>, Input, Options).

%% @doc Deletes a specified existing serverless cache.
%%
%% `CreateServerlessCacheSnapshot' permission is required to create a
%% final snapshot.
%% Without this permission, the API call will fail with an `Access
%% Denied' exception.
-spec delete_serverless_cache(aws_client:aws_client(), delete_serverless_cache_request()) ->
    {ok, delete_serverless_cache_response(), tuple()} |
    {error, any()} |
    {error, delete_serverless_cache_errors(), tuple()}.
delete_serverless_cache(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_serverless_cache(Client, Input, []).

-spec delete_serverless_cache(aws_client:aws_client(), delete_serverless_cache_request(), proplists:proplist()) ->
    {ok, delete_serverless_cache_response(), tuple()} |
    {error, any()} |
    {error, delete_serverless_cache_errors(), tuple()}.
delete_serverless_cache(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteServerlessCache">>, Input, Options).

%% @doc Deletes an existing serverless cache snapshot.
%%
%% Available for Valkey, Redis OSS and Serverless Memcached only.
-spec delete_serverless_cache_snapshot(aws_client:aws_client(), delete_serverless_cache_snapshot_request()) ->
    {ok, delete_serverless_cache_snapshot_response(), tuple()} |
    {error, any()} |
    {error, delete_serverless_cache_snapshot_errors(), tuple()}.
delete_serverless_cache_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_serverless_cache_snapshot(Client, Input, []).

-spec delete_serverless_cache_snapshot(aws_client:aws_client(), delete_serverless_cache_snapshot_request(), proplists:proplist()) ->
    {ok, delete_serverless_cache_snapshot_response(), tuple()} |
    {error, any()} |
    {error, delete_serverless_cache_snapshot_errors(), tuple()}.
delete_serverless_cache_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteServerlessCacheSnapshot">>, Input, Options).

%% @doc Deletes an existing snapshot.
%%
%% When you receive a successful response from this
%% operation, ElastiCache immediately begins deleting the snapshot; you
%% cannot cancel or
%% revert this operation.
%%
%% This operation is valid for Valkey or Redis OSS only.
-spec delete_snapshot(aws_client:aws_client(), delete_snapshot_message()) ->
    {ok, delete_snapshot_result(), tuple()} |
    {error, any()} |
    {error, delete_snapshot_errors(), tuple()}.
delete_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_snapshot(Client, Input, []).

-spec delete_snapshot(aws_client:aws_client(), delete_snapshot_message(), proplists:proplist()) ->
    {ok, delete_snapshot_result(), tuple()} |
    {error, any()} |
    {error, delete_snapshot_errors(), tuple()}.
delete_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteSnapshot">>, Input, Options).

%% @doc For Valkey engine version 7.2 onwards and Redis OSS 6.0 onwards:
%% Deletes a user.
%%
%% The user will be removed from
%% all user groups and in turn removed from all replication groups. For more
%% information,
%% see Using Role Based Access Control (RBAC):
%% http://docs.aws.amazon.com/AmazonElastiCache/latest/dg/Clusters.RBAC.html.
-spec delete_user(aws_client:aws_client(), delete_user_message()) ->
    {ok, user(), tuple()} |
    {error, any()} |
    {error, delete_user_errors(), tuple()}.
delete_user(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_user(Client, Input, []).

-spec delete_user(aws_client:aws_client(), delete_user_message(), proplists:proplist()) ->
    {ok, user(), tuple()} |
    {error, any()} |
    {error, delete_user_errors(), tuple()}.
delete_user(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteUser">>, Input, Options).

%% @doc For Valkey engine version 7.2 onwards and Redis OSS 6.0 onwards:
%% Deletes a user group.
%%
%% The user group must first
%% be disassociated from the replication group before it can be deleted. For
%% more
%% information, see Using Role Based Access Control (RBAC):
%% http://docs.aws.amazon.com/AmazonElastiCache/latest/dg/Clusters.RBAC.html.
-spec delete_user_group(aws_client:aws_client(), delete_user_group_message()) ->
    {ok, user_group(), tuple()} |
    {error, any()} |
    {error, delete_user_group_errors(), tuple()}.
delete_user_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_user_group(Client, Input, []).

-spec delete_user_group(aws_client:aws_client(), delete_user_group_message(), proplists:proplist()) ->
    {ok, user_group(), tuple()} |
    {error, any()} |
    {error, delete_user_group_errors(), tuple()}.
delete_user_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteUserGroup">>, Input, Options).

%% @doc Returns information about all provisioned clusters if no cluster
%% identifier is
%% specified, or about a specific cache cluster if a cluster identifier is
%% supplied.
%%
%% By default, abbreviated information about the clusters is returned. You
%% can use the
%% optional ShowCacheNodeInfo flag to retrieve detailed information
%% about the cache nodes associated with the clusters. These details include
%% the DNS
%% address and port for the cache node endpoint.
%%
%% If the cluster is in the creating state, only cluster-level
%% information is displayed until all of the nodes are successfully
%% provisioned.
%%
%% If the cluster is in the deleting state, only cluster-level
%% information is displayed.
%%
%% If cache nodes are currently being added to the cluster, node endpoint
%% information and
%% creation time for the additional nodes are not displayed until they are
%% completely
%% provisioned. When the cluster state is available, the cluster is
%% ready for use.
%%
%% If cache nodes are currently being removed from the cluster, no endpoint
%% information
%% for the removed nodes is displayed.
-spec describe_cache_clusters(aws_client:aws_client(), describe_cache_clusters_message()) ->
    {ok, cache_cluster_message(), tuple()} |
    {error, any()} |
    {error, describe_cache_clusters_errors(), tuple()}.
describe_cache_clusters(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_cache_clusters(Client, Input, []).

-spec describe_cache_clusters(aws_client:aws_client(), describe_cache_clusters_message(), proplists:proplist()) ->
    {ok, cache_cluster_message(), tuple()} |
    {error, any()} |
    {error, describe_cache_clusters_errors(), tuple()}.
describe_cache_clusters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeCacheClusters">>, Input, Options).

%% @doc Returns a list of the available cache engines and their versions.
-spec describe_cache_engine_versions(aws_client:aws_client(), describe_cache_engine_versions_message()) ->
    {ok, cache_engine_version_message(), tuple()} |
    {error, any()}.
describe_cache_engine_versions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_cache_engine_versions(Client, Input, []).

-spec describe_cache_engine_versions(aws_client:aws_client(), describe_cache_engine_versions_message(), proplists:proplist()) ->
    {ok, cache_engine_version_message(), tuple()} |
    {error, any()}.
describe_cache_engine_versions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeCacheEngineVersions">>, Input, Options).

%% @doc Returns a list of cache parameter group descriptions.
%%
%% If a cache parameter group name
%% is specified, the list contains only the descriptions for that group.
-spec describe_cache_parameter_groups(aws_client:aws_client(), describe_cache_parameter_groups_message()) ->
    {ok, cache_parameter_groups_message(), tuple()} |
    {error, any()} |
    {error, describe_cache_parameter_groups_errors(), tuple()}.
describe_cache_parameter_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_cache_parameter_groups(Client, Input, []).

-spec describe_cache_parameter_groups(aws_client:aws_client(), describe_cache_parameter_groups_message(), proplists:proplist()) ->
    {ok, cache_parameter_groups_message(), tuple()} |
    {error, any()} |
    {error, describe_cache_parameter_groups_errors(), tuple()}.
describe_cache_parameter_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeCacheParameterGroups">>, Input, Options).

%% @doc Returns the detailed parameter list for a particular cache parameter
%% group.
-spec describe_cache_parameters(aws_client:aws_client(), describe_cache_parameters_message()) ->
    {ok, cache_parameter_group_details(), tuple()} |
    {error, any()} |
    {error, describe_cache_parameters_errors(), tuple()}.
describe_cache_parameters(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_cache_parameters(Client, Input, []).

-spec describe_cache_parameters(aws_client:aws_client(), describe_cache_parameters_message(), proplists:proplist()) ->
    {ok, cache_parameter_group_details(), tuple()} |
    {error, any()} |
    {error, describe_cache_parameters_errors(), tuple()}.
describe_cache_parameters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeCacheParameters">>, Input, Options).

%% @doc Returns a list of cache security group descriptions.
%%
%% If a cache security group name is
%% specified, the list contains only the description of that group. This
%% applicable only
%% when you have ElastiCache in Classic setup
-spec describe_cache_security_groups(aws_client:aws_client(), describe_cache_security_groups_message()) ->
    {ok, cache_security_group_message(), tuple()} |
    {error, any()} |
    {error, describe_cache_security_groups_errors(), tuple()}.
describe_cache_security_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_cache_security_groups(Client, Input, []).

-spec describe_cache_security_groups(aws_client:aws_client(), describe_cache_security_groups_message(), proplists:proplist()) ->
    {ok, cache_security_group_message(), tuple()} |
    {error, any()} |
    {error, describe_cache_security_groups_errors(), tuple()}.
describe_cache_security_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeCacheSecurityGroups">>, Input, Options).

%% @doc Returns a list of cache subnet group descriptions.
%%
%% If a subnet group name is
%% specified, the list contains only the description of that group. This is
%% applicable only
%% when you have ElastiCache in VPC setup. All ElastiCache clusters now
%% launch in VPC by
%% default.
-spec describe_cache_subnet_groups(aws_client:aws_client(), describe_cache_subnet_groups_message()) ->
    {ok, cache_subnet_group_message(), tuple()} |
    {error, any()} |
    {error, describe_cache_subnet_groups_errors(), tuple()}.
describe_cache_subnet_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_cache_subnet_groups(Client, Input, []).

-spec describe_cache_subnet_groups(aws_client:aws_client(), describe_cache_subnet_groups_message(), proplists:proplist()) ->
    {ok, cache_subnet_group_message(), tuple()} |
    {error, any()} |
    {error, describe_cache_subnet_groups_errors(), tuple()}.
describe_cache_subnet_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeCacheSubnetGroups">>, Input, Options).

%% @doc Returns the default engine and system parameter information for the
%% specified cache
%% engine.
-spec describe_engine_default_parameters(aws_client:aws_client(), describe_engine_default_parameters_message()) ->
    {ok, describe_engine_default_parameters_result(), tuple()} |
    {error, any()} |
    {error, describe_engine_default_parameters_errors(), tuple()}.
describe_engine_default_parameters(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_engine_default_parameters(Client, Input, []).

-spec describe_engine_default_parameters(aws_client:aws_client(), describe_engine_default_parameters_message(), proplists:proplist()) ->
    {ok, describe_engine_default_parameters_result(), tuple()} |
    {error, any()} |
    {error, describe_engine_default_parameters_errors(), tuple()}.
describe_engine_default_parameters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEngineDefaultParameters">>, Input, Options).

%% @doc Returns events related to clusters, cache security groups, and cache
%% parameter groups.
%%
%% You can obtain events specific to a particular cluster, cache security
%% group, or cache
%% parameter group by providing the name as a parameter.
%%
%% By default, only the events occurring within the last hour are returned;
%% however, you
%% can retrieve up to 14 days' worth of events if necessary.
-spec describe_events(aws_client:aws_client(), describe_events_message()) ->
    {ok, events_message(), tuple()} |
    {error, any()} |
    {error, describe_events_errors(), tuple()}.
describe_events(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_events(Client, Input, []).

-spec describe_events(aws_client:aws_client(), describe_events_message(), proplists:proplist()) ->
    {ok, events_message(), tuple()} |
    {error, any()} |
    {error, describe_events_errors(), tuple()}.
describe_events(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEvents">>, Input, Options).

%% @doc Returns information about a particular global replication group.
%%
%% If no identifier is
%% specified, returns information about all Global datastores.
-spec describe_global_replication_groups(aws_client:aws_client(), describe_global_replication_groups_message()) ->
    {ok, describe_global_replication_groups_result(), tuple()} |
    {error, any()} |
    {error, describe_global_replication_groups_errors(), tuple()}.
describe_global_replication_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_global_replication_groups(Client, Input, []).

-spec describe_global_replication_groups(aws_client:aws_client(), describe_global_replication_groups_message(), proplists:proplist()) ->
    {ok, describe_global_replication_groups_result(), tuple()} |
    {error, any()} |
    {error, describe_global_replication_groups_errors(), tuple()}.
describe_global_replication_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeGlobalReplicationGroups">>, Input, Options).

%% @doc Returns information about a particular replication group.
%%
%% If no identifier is
%% specified, `DescribeReplicationGroups' returns information about all
%% replication groups.
%%
%% This operation is valid for Valkey or Redis OSS only.
-spec describe_replication_groups(aws_client:aws_client(), describe_replication_groups_message()) ->
    {ok, replication_group_message(), tuple()} |
    {error, any()} |
    {error, describe_replication_groups_errors(), tuple()}.
describe_replication_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_replication_groups(Client, Input, []).

-spec describe_replication_groups(aws_client:aws_client(), describe_replication_groups_message(), proplists:proplist()) ->
    {ok, replication_group_message(), tuple()} |
    {error, any()} |
    {error, describe_replication_groups_errors(), tuple()}.
describe_replication_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeReplicationGroups">>, Input, Options).

%% @doc Returns information about reserved cache nodes for this account, or
%% about a specified
%% reserved cache node.
-spec describe_reserved_cache_nodes(aws_client:aws_client(), describe_reserved_cache_nodes_message()) ->
    {ok, reserved_cache_node_message(), tuple()} |
    {error, any()} |
    {error, describe_reserved_cache_nodes_errors(), tuple()}.
describe_reserved_cache_nodes(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_reserved_cache_nodes(Client, Input, []).

-spec describe_reserved_cache_nodes(aws_client:aws_client(), describe_reserved_cache_nodes_message(), proplists:proplist()) ->
    {ok, reserved_cache_node_message(), tuple()} |
    {error, any()} |
    {error, describe_reserved_cache_nodes_errors(), tuple()}.
describe_reserved_cache_nodes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeReservedCacheNodes">>, Input, Options).

%% @doc Lists available reserved cache node offerings.
-spec describe_reserved_cache_nodes_offerings(aws_client:aws_client(), describe_reserved_cache_nodes_offerings_message()) ->
    {ok, reserved_cache_nodes_offering_message(), tuple()} |
    {error, any()} |
    {error, describe_reserved_cache_nodes_offerings_errors(), tuple()}.
describe_reserved_cache_nodes_offerings(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_reserved_cache_nodes_offerings(Client, Input, []).

-spec describe_reserved_cache_nodes_offerings(aws_client:aws_client(), describe_reserved_cache_nodes_offerings_message(), proplists:proplist()) ->
    {ok, reserved_cache_nodes_offering_message(), tuple()} |
    {error, any()} |
    {error, describe_reserved_cache_nodes_offerings_errors(), tuple()}.
describe_reserved_cache_nodes_offerings(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeReservedCacheNodesOfferings">>, Input, Options).

%% @doc Returns information about serverless cache snapshots.
%%
%% By default, this API lists all of the customer’s serverless cache
%% snapshots.
%% It can also describe a single serverless cache snapshot, or the snapshots
%% associated with
%% a particular serverless cache. Available for Valkey, Redis OSS and
%% Serverless Memcached only.
-spec describe_serverless_cache_snapshots(aws_client:aws_client(), describe_serverless_cache_snapshots_request()) ->
    {ok, describe_serverless_cache_snapshots_response(), tuple()} |
    {error, any()} |
    {error, describe_serverless_cache_snapshots_errors(), tuple()}.
describe_serverless_cache_snapshots(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_serverless_cache_snapshots(Client, Input, []).

-spec describe_serverless_cache_snapshots(aws_client:aws_client(), describe_serverless_cache_snapshots_request(), proplists:proplist()) ->
    {ok, describe_serverless_cache_snapshots_response(), tuple()} |
    {error, any()} |
    {error, describe_serverless_cache_snapshots_errors(), tuple()}.
describe_serverless_cache_snapshots(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeServerlessCacheSnapshots">>, Input, Options).

%% @doc Returns information about a specific serverless cache.
%%
%% If no identifier is specified, then the API returns information on all the
%% serverless caches belonging to
%% this Amazon Web Services account.
-spec describe_serverless_caches(aws_client:aws_client(), describe_serverless_caches_request()) ->
    {ok, describe_serverless_caches_response(), tuple()} |
    {error, any()} |
    {error, describe_serverless_caches_errors(), tuple()}.
describe_serverless_caches(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_serverless_caches(Client, Input, []).

-spec describe_serverless_caches(aws_client:aws_client(), describe_serverless_caches_request(), proplists:proplist()) ->
    {ok, describe_serverless_caches_response(), tuple()} |
    {error, any()} |
    {error, describe_serverless_caches_errors(), tuple()}.
describe_serverless_caches(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeServerlessCaches">>, Input, Options).

%% @doc Returns details of the service updates
-spec describe_service_updates(aws_client:aws_client(), describe_service_updates_message()) ->
    {ok, service_updates_message(), tuple()} |
    {error, any()} |
    {error, describe_service_updates_errors(), tuple()}.
describe_service_updates(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_service_updates(Client, Input, []).

-spec describe_service_updates(aws_client:aws_client(), describe_service_updates_message(), proplists:proplist()) ->
    {ok, service_updates_message(), tuple()} |
    {error, any()} |
    {error, describe_service_updates_errors(), tuple()}.
describe_service_updates(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeServiceUpdates">>, Input, Options).

%% @doc Returns information about cluster or replication group snapshots.
%%
%% By default,
%% `DescribeSnapshots' lists all of your snapshots; it can optionally
%% describe a single snapshot, or just the snapshots associated with a
%% particular cache
%% cluster.
%%
%% This operation is valid for Valkey or Redis OSS only.
-spec describe_snapshots(aws_client:aws_client(), describe_snapshots_message()) ->
    {ok, describe_snapshots_list_message(), tuple()} |
    {error, any()} |
    {error, describe_snapshots_errors(), tuple()}.
describe_snapshots(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_snapshots(Client, Input, []).

-spec describe_snapshots(aws_client:aws_client(), describe_snapshots_message(), proplists:proplist()) ->
    {ok, describe_snapshots_list_message(), tuple()} |
    {error, any()} |
    {error, describe_snapshots_errors(), tuple()}.
describe_snapshots(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeSnapshots">>, Input, Options).

%% @doc Returns details of the update actions
-spec describe_update_actions(aws_client:aws_client(), describe_update_actions_message()) ->
    {ok, update_actions_message(), tuple()} |
    {error, any()} |
    {error, describe_update_actions_errors(), tuple()}.
describe_update_actions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_update_actions(Client, Input, []).

-spec describe_update_actions(aws_client:aws_client(), describe_update_actions_message(), proplists:proplist()) ->
    {ok, update_actions_message(), tuple()} |
    {error, any()} |
    {error, describe_update_actions_errors(), tuple()}.
describe_update_actions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeUpdateActions">>, Input, Options).

%% @doc Returns a list of user groups.
-spec describe_user_groups(aws_client:aws_client(), describe_user_groups_message()) ->
    {ok, describe_user_groups_result(), tuple()} |
    {error, any()} |
    {error, describe_user_groups_errors(), tuple()}.
describe_user_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_user_groups(Client, Input, []).

-spec describe_user_groups(aws_client:aws_client(), describe_user_groups_message(), proplists:proplist()) ->
    {ok, describe_user_groups_result(), tuple()} |
    {error, any()} |
    {error, describe_user_groups_errors(), tuple()}.
describe_user_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeUserGroups">>, Input, Options).

%% @doc Returns a list of users.
-spec describe_users(aws_client:aws_client(), describe_users_message()) ->
    {ok, describe_users_result(), tuple()} |
    {error, any()} |
    {error, describe_users_errors(), tuple()}.
describe_users(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_users(Client, Input, []).

-spec describe_users(aws_client:aws_client(), describe_users_message(), proplists:proplist()) ->
    {ok, describe_users_result(), tuple()} |
    {error, any()} |
    {error, describe_users_errors(), tuple()}.
describe_users(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeUsers">>, Input, Options).

%% @doc Remove a secondary cluster from the Global datastore using the Global
%% datastore name.
%%
%% The secondary cluster will no longer receive updates from the primary
%% cluster, but will
%% remain as a standalone cluster in that Amazon region.
-spec disassociate_global_replication_group(aws_client:aws_client(), disassociate_global_replication_group_message()) ->
    {ok, disassociate_global_replication_group_result(), tuple()} |
    {error, any()} |
    {error, disassociate_global_replication_group_errors(), tuple()}.
disassociate_global_replication_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_global_replication_group(Client, Input, []).

-spec disassociate_global_replication_group(aws_client:aws_client(), disassociate_global_replication_group_message(), proplists:proplist()) ->
    {ok, disassociate_global_replication_group_result(), tuple()} |
    {error, any()} |
    {error, disassociate_global_replication_group_errors(), tuple()}.
disassociate_global_replication_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateGlobalReplicationGroup">>, Input, Options).

%% @doc Provides the functionality to export the serverless cache snapshot
%% data to Amazon S3.
%%
%% Available for Valkey and Redis OSS only.
-spec export_serverless_cache_snapshot(aws_client:aws_client(), export_serverless_cache_snapshot_request()) ->
    {ok, export_serverless_cache_snapshot_response(), tuple()} |
    {error, any()} |
    {error, export_serverless_cache_snapshot_errors(), tuple()}.
export_serverless_cache_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    export_serverless_cache_snapshot(Client, Input, []).

-spec export_serverless_cache_snapshot(aws_client:aws_client(), export_serverless_cache_snapshot_request(), proplists:proplist()) ->
    {ok, export_serverless_cache_snapshot_response(), tuple()} |
    {error, any()} |
    {error, export_serverless_cache_snapshot_errors(), tuple()}.
export_serverless_cache_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ExportServerlessCacheSnapshot">>, Input, Options).

%% @doc Used to failover the primary region to a secondary region.
%%
%% The secondary region will
%% become primary, and all other clusters will become secondary.
-spec failover_global_replication_group(aws_client:aws_client(), failover_global_replication_group_message()) ->
    {ok, failover_global_replication_group_result(), tuple()} |
    {error, any()} |
    {error, failover_global_replication_group_errors(), tuple()}.
failover_global_replication_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    failover_global_replication_group(Client, Input, []).

-spec failover_global_replication_group(aws_client:aws_client(), failover_global_replication_group_message(), proplists:proplist()) ->
    {ok, failover_global_replication_group_result(), tuple()} |
    {error, any()} |
    {error, failover_global_replication_group_errors(), tuple()}.
failover_global_replication_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"FailoverGlobalReplicationGroup">>, Input, Options).

%% @doc Increase the number of node groups in the Global datastore
-spec increase_node_groups_in_global_replication_group(aws_client:aws_client(), increase_node_groups_in_global_replication_group_message()) ->
    {ok, increase_node_groups_in_global_replication_group_result(), tuple()} |
    {error, any()} |
    {error, increase_node_groups_in_global_replication_group_errors(), tuple()}.
increase_node_groups_in_global_replication_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    increase_node_groups_in_global_replication_group(Client, Input, []).

-spec increase_node_groups_in_global_replication_group(aws_client:aws_client(), increase_node_groups_in_global_replication_group_message(), proplists:proplist()) ->
    {ok, increase_node_groups_in_global_replication_group_result(), tuple()} |
    {error, any()} |
    {error, increase_node_groups_in_global_replication_group_errors(), tuple()}.
increase_node_groups_in_global_replication_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"IncreaseNodeGroupsInGlobalReplicationGroup">>, Input, Options).

%% @doc Dynamically increases the number of replicas in a Valkey or Redis OSS
%% (cluster mode disabled)
%% replication group or the number of replica nodes in one or more node
%% groups (shards) of
%% a Valkey or Redis OSS (cluster mode enabled) replication group.
%%
%% This operation is performed with no
%% cluster down time.
-spec increase_replica_count(aws_client:aws_client(), increase_replica_count_message()) ->
    {ok, increase_replica_count_result(), tuple()} |
    {error, any()} |
    {error, increase_replica_count_errors(), tuple()}.
increase_replica_count(Client, Input)
  when is_map(Client), is_map(Input) ->
    increase_replica_count(Client, Input, []).

-spec increase_replica_count(aws_client:aws_client(), increase_replica_count_message(), proplists:proplist()) ->
    {ok, increase_replica_count_result(), tuple()} |
    {error, any()} |
    {error, increase_replica_count_errors(), tuple()}.
increase_replica_count(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"IncreaseReplicaCount">>, Input, Options).

%% @doc Lists all available node types that you can scale with your
%% cluster's replication
%% group's current node type.
%%
%% When you use the `ModifyCacheCluster' or
%% `ModifyReplicationGroup' operations to scale your cluster or
%% replication
%% group, the value of the `CacheNodeType' parameter must be one of the
%% node
%% types returned by this operation.
-spec list_allowed_node_type_modifications(aws_client:aws_client(), list_allowed_node_type_modifications_message()) ->
    {ok, allowed_node_type_modifications_message(), tuple()} |
    {error, any()} |
    {error, list_allowed_node_type_modifications_errors(), tuple()}.
list_allowed_node_type_modifications(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_allowed_node_type_modifications(Client, Input, []).

-spec list_allowed_node_type_modifications(aws_client:aws_client(), list_allowed_node_type_modifications_message(), proplists:proplist()) ->
    {ok, allowed_node_type_modifications_message(), tuple()} |
    {error, any()} |
    {error, list_allowed_node_type_modifications_errors(), tuple()}.
list_allowed_node_type_modifications(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAllowedNodeTypeModifications">>, Input, Options).

%% @doc Lists all tags currently on a named resource.
%%
%% A tag is a key-value pair where the key and value are case-sensitive. You
%% can use
%% tags to categorize and track all your ElastiCache resources, with the
%% exception of
%% global replication group. When you add or remove tags on replication
%% groups, those
%% actions will be replicated to all nodes in the replication group. For more
%% information,
%% see Resource-level permissions:
%% http://docs.aws.amazon.com/AmazonElastiCache/latest/dg/IAM.ResourceLevelPermissions.html.
%%
%% If the cluster is not in the available state,
%% `ListTagsForResource' returns an error.
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

%% @doc Modifies the settings for a cluster.
%%
%% You can use this operation to change one or more
%% cluster configuration parameters by specifying the parameters and the new
%% values.
-spec modify_cache_cluster(aws_client:aws_client(), modify_cache_cluster_message()) ->
    {ok, modify_cache_cluster_result(), tuple()} |
    {error, any()} |
    {error, modify_cache_cluster_errors(), tuple()}.
modify_cache_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_cache_cluster(Client, Input, []).

-spec modify_cache_cluster(aws_client:aws_client(), modify_cache_cluster_message(), proplists:proplist()) ->
    {ok, modify_cache_cluster_result(), tuple()} |
    {error, any()} |
    {error, modify_cache_cluster_errors(), tuple()}.
modify_cache_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyCacheCluster">>, Input, Options).

%% @doc Modifies the parameters of a cache parameter group.
%%
%% You can modify up to 20 parameters
%% in a single request by submitting a list parameter name and value pairs.
-spec modify_cache_parameter_group(aws_client:aws_client(), modify_cache_parameter_group_message()) ->
    {ok, cache_parameter_group_name_message(), tuple()} |
    {error, any()} |
    {error, modify_cache_parameter_group_errors(), tuple()}.
modify_cache_parameter_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_cache_parameter_group(Client, Input, []).

-spec modify_cache_parameter_group(aws_client:aws_client(), modify_cache_parameter_group_message(), proplists:proplist()) ->
    {ok, cache_parameter_group_name_message(), tuple()} |
    {error, any()} |
    {error, modify_cache_parameter_group_errors(), tuple()}.
modify_cache_parameter_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyCacheParameterGroup">>, Input, Options).

%% @doc Modifies an existing cache subnet group.
-spec modify_cache_subnet_group(aws_client:aws_client(), modify_cache_subnet_group_message()) ->
    {ok, modify_cache_subnet_group_result(), tuple()} |
    {error, any()} |
    {error, modify_cache_subnet_group_errors(), tuple()}.
modify_cache_subnet_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_cache_subnet_group(Client, Input, []).

-spec modify_cache_subnet_group(aws_client:aws_client(), modify_cache_subnet_group_message(), proplists:proplist()) ->
    {ok, modify_cache_subnet_group_result(), tuple()} |
    {error, any()} |
    {error, modify_cache_subnet_group_errors(), tuple()}.
modify_cache_subnet_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyCacheSubnetGroup">>, Input, Options).

%% @doc Modifies the settings for a Global datastore.
-spec modify_global_replication_group(aws_client:aws_client(), modify_global_replication_group_message()) ->
    {ok, modify_global_replication_group_result(), tuple()} |
    {error, any()} |
    {error, modify_global_replication_group_errors(), tuple()}.
modify_global_replication_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_global_replication_group(Client, Input, []).

-spec modify_global_replication_group(aws_client:aws_client(), modify_global_replication_group_message(), proplists:proplist()) ->
    {ok, modify_global_replication_group_result(), tuple()} |
    {error, any()} |
    {error, modify_global_replication_group_errors(), tuple()}.
modify_global_replication_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyGlobalReplicationGroup">>, Input, Options).

%% @doc Modifies the settings for a replication group.
%%
%% This is limited to Valkey and Redis OSS 7 and above.
%%
%% Scaling for Valkey or Redis OSS (cluster mode enabled):
%% https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/scaling-redis-cluster-mode-enabled.html
%% in
%% the ElastiCache User Guide
%%
%% ModifyReplicationGroupShardConfiguration:
%% https://docs.aws.amazon.com/AmazonElastiCache/latest/APIReference/API_ModifyReplicationGroupShardConfiguration.html
%% in the ElastiCache API
%% Reference
%%
%% This operation is valid for Valkey or Redis OSS only.
-spec modify_replication_group(aws_client:aws_client(), modify_replication_group_message()) ->
    {ok, modify_replication_group_result(), tuple()} |
    {error, any()} |
    {error, modify_replication_group_errors(), tuple()}.
modify_replication_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_replication_group(Client, Input, []).

-spec modify_replication_group(aws_client:aws_client(), modify_replication_group_message(), proplists:proplist()) ->
    {ok, modify_replication_group_result(), tuple()} |
    {error, any()} |
    {error, modify_replication_group_errors(), tuple()}.
modify_replication_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyReplicationGroup">>, Input, Options).

%% @doc Modifies a replication group's shards (node groups) by allowing
%% you to add shards,
%% remove shards, or rebalance the keyspaces among existing shards.
-spec modify_replication_group_shard_configuration(aws_client:aws_client(), modify_replication_group_shard_configuration_message()) ->
    {ok, modify_replication_group_shard_configuration_result(), tuple()} |
    {error, any()} |
    {error, modify_replication_group_shard_configuration_errors(), tuple()}.
modify_replication_group_shard_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_replication_group_shard_configuration(Client, Input, []).

-spec modify_replication_group_shard_configuration(aws_client:aws_client(), modify_replication_group_shard_configuration_message(), proplists:proplist()) ->
    {ok, modify_replication_group_shard_configuration_result(), tuple()} |
    {error, any()} |
    {error, modify_replication_group_shard_configuration_errors(), tuple()}.
modify_replication_group_shard_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyReplicationGroupShardConfiguration">>, Input, Options).

%% @doc This API modifies the attributes of a serverless cache.
-spec modify_serverless_cache(aws_client:aws_client(), modify_serverless_cache_request()) ->
    {ok, modify_serverless_cache_response(), tuple()} |
    {error, any()} |
    {error, modify_serverless_cache_errors(), tuple()}.
modify_serverless_cache(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_serverless_cache(Client, Input, []).

-spec modify_serverless_cache(aws_client:aws_client(), modify_serverless_cache_request(), proplists:proplist()) ->
    {ok, modify_serverless_cache_response(), tuple()} |
    {error, any()} |
    {error, modify_serverless_cache_errors(), tuple()}.
modify_serverless_cache(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyServerlessCache">>, Input, Options).

%% @doc Changes user password(s) and/or access string.
-spec modify_user(aws_client:aws_client(), modify_user_message()) ->
    {ok, user(), tuple()} |
    {error, any()} |
    {error, modify_user_errors(), tuple()}.
modify_user(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_user(Client, Input, []).

-spec modify_user(aws_client:aws_client(), modify_user_message(), proplists:proplist()) ->
    {ok, user(), tuple()} |
    {error, any()} |
    {error, modify_user_errors(), tuple()}.
modify_user(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyUser">>, Input, Options).

%% @doc Changes the list of users that belong to the user group.
-spec modify_user_group(aws_client:aws_client(), modify_user_group_message()) ->
    {ok, user_group(), tuple()} |
    {error, any()} |
    {error, modify_user_group_errors(), tuple()}.
modify_user_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_user_group(Client, Input, []).

-spec modify_user_group(aws_client:aws_client(), modify_user_group_message(), proplists:proplist()) ->
    {ok, user_group(), tuple()} |
    {error, any()} |
    {error, modify_user_group_errors(), tuple()}.
modify_user_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyUserGroup">>, Input, Options).

%% @doc Allows you to purchase a reserved cache node offering.
%%
%% Reserved nodes are not eligible
%% for cancellation and are non-refundable. For more information, see
%% Managing Costs with Reserved Nodes:
%% https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/reserved-nodes.html.
-spec purchase_reserved_cache_nodes_offering(aws_client:aws_client(), purchase_reserved_cache_nodes_offering_message()) ->
    {ok, purchase_reserved_cache_nodes_offering_result(), tuple()} |
    {error, any()} |
    {error, purchase_reserved_cache_nodes_offering_errors(), tuple()}.
purchase_reserved_cache_nodes_offering(Client, Input)
  when is_map(Client), is_map(Input) ->
    purchase_reserved_cache_nodes_offering(Client, Input, []).

-spec purchase_reserved_cache_nodes_offering(aws_client:aws_client(), purchase_reserved_cache_nodes_offering_message(), proplists:proplist()) ->
    {ok, purchase_reserved_cache_nodes_offering_result(), tuple()} |
    {error, any()} |
    {error, purchase_reserved_cache_nodes_offering_errors(), tuple()}.
purchase_reserved_cache_nodes_offering(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PurchaseReservedCacheNodesOffering">>, Input, Options).

%% @doc Redistribute slots to ensure uniform distribution across existing
%% shards in the
%% cluster.
-spec rebalance_slots_in_global_replication_group(aws_client:aws_client(), rebalance_slots_in_global_replication_group_message()) ->
    {ok, rebalance_slots_in_global_replication_group_result(), tuple()} |
    {error, any()} |
    {error, rebalance_slots_in_global_replication_group_errors(), tuple()}.
rebalance_slots_in_global_replication_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    rebalance_slots_in_global_replication_group(Client, Input, []).

-spec rebalance_slots_in_global_replication_group(aws_client:aws_client(), rebalance_slots_in_global_replication_group_message(), proplists:proplist()) ->
    {ok, rebalance_slots_in_global_replication_group_result(), tuple()} |
    {error, any()} |
    {error, rebalance_slots_in_global_replication_group_errors(), tuple()}.
rebalance_slots_in_global_replication_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RebalanceSlotsInGlobalReplicationGroup">>, Input, Options).

%% @doc Reboots some, or all, of the cache nodes within a provisioned
%% cluster.
%%
%% This operation
%% applies any modified cache parameter groups to the cluster. The reboot
%% operation takes
%% place as soon as possible, and results in a momentary outage to the
%% cluster. During the
%% reboot, the cluster status is set to REBOOTING.
%%
%% The reboot causes the contents of the cache (for each cache node being
%% rebooted) to be
%% lost.
%%
%% When the reboot is complete, a cluster event is created.
%%
%% Rebooting a cluster is currently supported on Memcached, Valkey and Redis
%% OSS (cluster mode
%% disabled) clusters. Rebooting is not supported on Valkey or Redis OSS
%% (cluster mode enabled)
%% clusters.
%%
%% If you make changes to parameters that require a Valkey or Redis OSS
%% (cluster mode enabled) cluster
%% reboot for the changes to be applied, see Rebooting a Cluster:
%% http://docs.aws.amazon.com/AmazonElastiCache/latest/dg/nodes.rebooting.html
%% for an alternate process.
-spec reboot_cache_cluster(aws_client:aws_client(), reboot_cache_cluster_message()) ->
    {ok, reboot_cache_cluster_result(), tuple()} |
    {error, any()} |
    {error, reboot_cache_cluster_errors(), tuple()}.
reboot_cache_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    reboot_cache_cluster(Client, Input, []).

-spec reboot_cache_cluster(aws_client:aws_client(), reboot_cache_cluster_message(), proplists:proplist()) ->
    {ok, reboot_cache_cluster_result(), tuple()} |
    {error, any()} |
    {error, reboot_cache_cluster_errors(), tuple()}.
reboot_cache_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RebootCacheCluster">>, Input, Options).

%% @doc Removes the tags identified by the `TagKeys' list from the named
%% resource.
%%
%% A tag is a key-value pair where the key and value are case-sensitive. You
%% can use tags
%% to categorize and track all your ElastiCache resources, with the exception
%% of global
%% replication group. When you add or remove tags on replication groups,
%% those actions will
%% be replicated to all nodes in the replication group. For more information,
%% see Resource-level permissions:
%% http://docs.aws.amazon.com/AmazonElastiCache/latest/dg/IAM.ResourceLevelPermissions.html.
-spec remove_tags_from_resource(aws_client:aws_client(), remove_tags_from_resource_message()) ->
    {ok, tag_list_message(), tuple()} |
    {error, any()} |
    {error, remove_tags_from_resource_errors(), tuple()}.
remove_tags_from_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    remove_tags_from_resource(Client, Input, []).

-spec remove_tags_from_resource(aws_client:aws_client(), remove_tags_from_resource_message(), proplists:proplist()) ->
    {ok, tag_list_message(), tuple()} |
    {error, any()} |
    {error, remove_tags_from_resource_errors(), tuple()}.
remove_tags_from_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RemoveTagsFromResource">>, Input, Options).

%% @doc Modifies the parameters of a cache parameter group to the engine or
%% system default
%% value.
%%
%% You can reset specific parameters by submitting a list of parameter names.
%% To
%% reset the entire cache parameter group, specify the
%% `ResetAllParameters' and
%% `CacheParameterGroupName' parameters.
-spec reset_cache_parameter_group(aws_client:aws_client(), reset_cache_parameter_group_message()) ->
    {ok, cache_parameter_group_name_message(), tuple()} |
    {error, any()} |
    {error, reset_cache_parameter_group_errors(), tuple()}.
reset_cache_parameter_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    reset_cache_parameter_group(Client, Input, []).

-spec reset_cache_parameter_group(aws_client:aws_client(), reset_cache_parameter_group_message(), proplists:proplist()) ->
    {ok, cache_parameter_group_name_message(), tuple()} |
    {error, any()} |
    {error, reset_cache_parameter_group_errors(), tuple()}.
reset_cache_parameter_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ResetCacheParameterGroup">>, Input, Options).

%% @doc Revokes ingress from a cache security group.
%%
%% Use this operation to disallow access
%% from an Amazon EC2 security group that had been previously authorized.
-spec revoke_cache_security_group_ingress(aws_client:aws_client(), revoke_cache_security_group_ingress_message()) ->
    {ok, revoke_cache_security_group_ingress_result(), tuple()} |
    {error, any()} |
    {error, revoke_cache_security_group_ingress_errors(), tuple()}.
revoke_cache_security_group_ingress(Client, Input)
  when is_map(Client), is_map(Input) ->
    revoke_cache_security_group_ingress(Client, Input, []).

-spec revoke_cache_security_group_ingress(aws_client:aws_client(), revoke_cache_security_group_ingress_message(), proplists:proplist()) ->
    {ok, revoke_cache_security_group_ingress_result(), tuple()} |
    {error, any()} |
    {error, revoke_cache_security_group_ingress_errors(), tuple()}.
revoke_cache_security_group_ingress(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RevokeCacheSecurityGroupIngress">>, Input, Options).

%% @doc Start the migration of data.
-spec start_migration(aws_client:aws_client(), start_migration_message()) ->
    {ok, start_migration_response(), tuple()} |
    {error, any()} |
    {error, start_migration_errors(), tuple()}.
start_migration(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_migration(Client, Input, []).

-spec start_migration(aws_client:aws_client(), start_migration_message(), proplists:proplist()) ->
    {ok, start_migration_response(), tuple()} |
    {error, any()} |
    {error, start_migration_errors(), tuple()}.
start_migration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartMigration">>, Input, Options).

%% @doc Represents the input of a `TestFailover' operation which tests
%% automatic
%% failover on a specified node group (called shard in the console) in a
%% replication group
%% (called cluster in the console).
%%
%% This API is designed for testing the behavior of your application in case
%% of
%% ElastiCache failover. It is not designed to be an operational tool for
%% initiating a
%% failover to overcome a problem you may have with the cluster. Moreover, in
%% certain
%% conditions such as large-scale operational events, Amazon may block this
%% API.
%%
%% == Note the following ==
%%
%% A customer can use this operation to test automatic failover on up to 15
%% shards
%% (called node groups in the ElastiCache API and Amazon CLI) in any rolling
%% 24-hour period.
%%
%% If calling this operation on shards in different clusters (called
%% replication
%% groups in the API and CLI), the calls can be made concurrently.
%%
%% If calling this operation multiple times on different shards in the same
%% Valkey or Redis OSS (cluster mode enabled) replication group, the first
%% node replacement must
%% complete before a subsequent call can be made.
%%
%% To determine whether the node replacement is complete you can check Events
%% using the Amazon ElastiCache console, the Amazon CLI, or the ElastiCache
%% API.
%% Look for the following automatic failover related events, listed here in
%% order
%% of occurrance:
%%
%% Replication group message:
%% ```
%% Test Failover API called for node group '''
%%
%% Cache cluster message:
%% ```
%% Failover from primary node to replica node completed'''
%%
%% Replication group message:
%% ```
%% Failover from primary node to replica node completed'''
%%
%% Cache cluster message:
%% ```
%% Recovering cache nodes '''
%%
%% Cache cluster message:
%% ```
%% Finished recovery for cache nodes '''
%%
%% For more information see:
%%
%% Viewing
%% ElastiCache Events:
%% https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/ECEvents.Viewing.html
%% in the ElastiCache User
%% Guide
%%
%% DescribeEvents:
%% https://docs.aws.amazon.com/AmazonElastiCache/latest/APIReference/API_DescribeEvents.html
%% in the ElastiCache API Reference
%%
%% Also see, Testing
%% Multi-AZ :
%% https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/AutoFailover.html#auto-failover-test
%% in the ElastiCache User Guide.
-spec test_failover(aws_client:aws_client(), test_failover_message()) ->
    {ok, test_failover_result(), tuple()} |
    {error, any()} |
    {error, test_failover_errors(), tuple()}.
test_failover(Client, Input)
  when is_map(Client), is_map(Input) ->
    test_failover(Client, Input, []).

-spec test_failover(aws_client:aws_client(), test_failover_message(), proplists:proplist()) ->
    {ok, test_failover_result(), tuple()} |
    {error, any()} |
    {error, test_failover_errors(), tuple()}.
test_failover(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TestFailover">>, Input, Options).

%% @doc Async API to test connection between source and target replication
%% group.
-spec test_migration(aws_client:aws_client(), test_migration_message()) ->
    {ok, test_migration_response(), tuple()} |
    {error, any()} |
    {error, test_migration_errors(), tuple()}.
test_migration(Client, Input)
  when is_map(Client), is_map(Input) ->
    test_migration(Client, Input, []).

-spec test_migration(aws_client:aws_client(), test_migration_message(), proplists:proplist()) ->
    {ok, test_migration_response(), tuple()} |
    {error, any()} |
    {error, test_migration_errors(), tuple()}.
test_migration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TestMigration">>, Input, Options).

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
    Client1 = Client#{service => <<"elasticache">>},
    Host = build_host(<<"elasticache">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-www-form-urlencoded">>}
    ],

    Input = Input0#{ <<"Action">> => Action
                   , <<"Version">> => <<"2015-02-02">>
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
