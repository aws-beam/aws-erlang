%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc MemoryDB is a fully managed, Redis OSS-compatible, in-memory database
%% that delivers ultra-fast performance and Multi-AZ durability for modern
%% applications built using microservices architectures.
%%
%% MemoryDB stores the entire database in-memory, enabling low latency and
%% high throughput data access. It is compatible with Redis OSS, a popular
%% open source data store, enabling you to leverage Redis OSS’ flexible and
%% friendly data structures, APIs, and commands.
-module(aws_memorydb).

-export([batch_update_cluster/2,
         batch_update_cluster/3,
         copy_snapshot/2,
         copy_snapshot/3,
         create_acl/2,
         create_acl/3,
         create_cluster/2,
         create_cluster/3,
         create_multi_region_cluster/2,
         create_multi_region_cluster/3,
         create_parameter_group/2,
         create_parameter_group/3,
         create_snapshot/2,
         create_snapshot/3,
         create_subnet_group/2,
         create_subnet_group/3,
         create_user/2,
         create_user/3,
         delete_acl/2,
         delete_acl/3,
         delete_cluster/2,
         delete_cluster/3,
         delete_multi_region_cluster/2,
         delete_multi_region_cluster/3,
         delete_parameter_group/2,
         delete_parameter_group/3,
         delete_snapshot/2,
         delete_snapshot/3,
         delete_subnet_group/2,
         delete_subnet_group/3,
         delete_user/2,
         delete_user/3,
         describe_acls/2,
         describe_acls/3,
         describe_clusters/2,
         describe_clusters/3,
         describe_engine_versions/2,
         describe_engine_versions/3,
         describe_events/2,
         describe_events/3,
         describe_multi_region_clusters/2,
         describe_multi_region_clusters/3,
         describe_parameter_groups/2,
         describe_parameter_groups/3,
         describe_parameters/2,
         describe_parameters/3,
         describe_reserved_nodes/2,
         describe_reserved_nodes/3,
         describe_reserved_nodes_offerings/2,
         describe_reserved_nodes_offerings/3,
         describe_service_updates/2,
         describe_service_updates/3,
         describe_snapshots/2,
         describe_snapshots/3,
         describe_subnet_groups/2,
         describe_subnet_groups/3,
         describe_users/2,
         describe_users/3,
         failover_shard/2,
         failover_shard/3,
         list_allowed_multi_region_cluster_updates/2,
         list_allowed_multi_region_cluster_updates/3,
         list_allowed_node_type_updates/2,
         list_allowed_node_type_updates/3,
         list_tags/2,
         list_tags/3,
         purchase_reserved_nodes_offering/2,
         purchase_reserved_nodes_offering/3,
         reset_parameter_group/2,
         reset_parameter_group/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_acl/2,
         update_acl/3,
         update_cluster/2,
         update_cluster/3,
         update_multi_region_cluster/2,
         update_multi_region_cluster/3,
         update_parameter_group/2,
         update_parameter_group/3,
         update_subnet_group/2,
         update_subnet_group/3,
         update_user/2,
         update_user/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% batch_update_cluster_response() :: #{
%%   <<"ProcessedClusters">> => list(cluster()),
%%   <<"UnprocessedClusters">> => list(unprocessed_cluster())
%% }
-type batch_update_cluster_response() :: #{binary() => any()}.

%% Example:
%% update_acl_request() :: #{
%%   <<"ACLName">> := string(),
%%   <<"UserNamesToAdd">> => list(string()),
%%   <<"UserNamesToRemove">> => list(string())
%% }
-type update_acl_request() :: #{binary() => any()}.

%% Example:
%% invalid_user_state_fault() :: #{
%%   <<"message">> => string()
%% }
-type invalid_user_state_fault() :: #{binary() => any()}.

%% Example:
%% node_quota_for_customer_exceeded_fault() :: #{
%%   <<"message">> => string()
%% }
-type node_quota_for_customer_exceeded_fault() :: #{binary() => any()}.

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
%% delete_snapshot_request() :: #{
%%   <<"SnapshotName">> := string()
%% }
-type delete_snapshot_request() :: #{binary() => any()}.

%% Example:
%% create_subnet_group_response() :: #{
%%   <<"SubnetGroup">> => subnet_group()
%% }
-type create_subnet_group_response() :: #{binary() => any()}.

%% Example:
%% tag_resource_request() :: #{
%%   <<"ResourceArn">> := string(),
%%   <<"Tags">> := list(tag())
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% multi_region_cluster_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type multi_region_cluster_not_found_fault() :: #{binary() => any()}.

%% Example:
%% failover_shard_response() :: #{
%%   <<"Cluster">> => cluster()
%% }
-type failover_shard_response() :: #{binary() => any()}.

%% Example:
%% describe_engine_versions_request() :: #{
%%   <<"DefaultOnly">> => boolean(),
%%   <<"Engine">> => string(),
%%   <<"EngineVersion">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ParameterGroupFamily">> => string()
%% }
-type describe_engine_versions_request() :: #{binary() => any()}.

%% Example:
%% create_parameter_group_request() :: #{
%%   <<"Description">> => string(),
%%   <<"Family">> := string(),
%%   <<"ParameterGroupName">> := string(),
%%   <<"Tags">> => list(tag())
%% }
-type create_parameter_group_request() :: #{binary() => any()}.

%% Example:
%% availability_zone() :: #{
%%   <<"Name">> => string()
%% }
-type availability_zone() :: #{binary() => any()}.

%% Example:
%% invalid_multi_region_cluster_state_fault() :: #{
%%   <<"message">> => string()
%% }
-type invalid_multi_region_cluster_state_fault() :: #{binary() => any()}.

%% Example:
%% describe_parameter_groups_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"ParameterGroups">> => list(parameter_group())
%% }
-type describe_parameter_groups_response() :: #{binary() => any()}.

%% Example:
%% update_user_response() :: #{
%%   <<"User">> => user()
%% }
-type update_user_response() :: #{binary() => any()}.

%% Example:
%% describe_service_updates_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"ServiceUpdates">> => list(service_update())
%% }
-type describe_service_updates_response() :: #{binary() => any()}.

%% Example:
%% describe_reserved_nodes_request() :: #{
%%   <<"Duration">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"NodeType">> => string(),
%%   <<"OfferingType">> => string(),
%%   <<"ReservationId">> => string(),
%%   <<"ReservedNodesOfferingId">> => string()
%% }
-type describe_reserved_nodes_request() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{
%%   <<"TagList">> => list(tag())
%% }
-type untag_resource_response() :: #{binary() => any()}.

%% Example:
%% create_cluster_response() :: #{
%%   <<"Cluster">> => cluster()
%% }
-type create_cluster_response() :: #{binary() => any()}.

%% Example:
%% unprocessed_cluster() :: #{
%%   <<"ClusterName">> => string(),
%%   <<"ErrorMessage">> => string(),
%%   <<"ErrorType">> => string()
%% }
-type unprocessed_cluster() :: #{binary() => any()}.

%% Example:
%% service_update_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type service_update_not_found_fault() :: #{binary() => any()}.

%% Example:
%% subnet_group_already_exists_fault() :: #{
%%   <<"message">> => string()
%% }
-type subnet_group_already_exists_fault() :: #{binary() => any()}.

%% Example:
%% create_parameter_group_response() :: #{
%%   <<"ParameterGroup">> => parameter_group()
%% }
-type create_parameter_group_response() :: #{binary() => any()}.

%% Example:
%% create_snapshot_request() :: #{
%%   <<"ClusterName">> := string(),
%%   <<"KmsKeyId">> => string(),
%%   <<"SnapshotName">> := string(),
%%   <<"Tags">> => list(tag())
%% }
-type create_snapshot_request() :: #{binary() => any()}.

%% Example:
%% describe_users_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Users">> => list(user())
%% }
-type describe_users_response() :: #{binary() => any()}.

%% Example:
%% reserved_node_already_exists_fault() :: #{
%%   <<"message">> => string()
%% }
-type reserved_node_already_exists_fault() :: #{binary() => any()}.

%% Example:
%% reserved_nodes_offering() :: #{
%%   <<"Duration">> => integer(),
%%   <<"FixedPrice">> => float(),
%%   <<"NodeType">> => string(),
%%   <<"OfferingType">> => string(),
%%   <<"RecurringCharges">> => list(recurring_charge()),
%%   <<"ReservedNodesOfferingId">> => string()
%% }
-type reserved_nodes_offering() :: #{binary() => any()}.

%% Example:
%% delete_acl_request() :: #{
%%   <<"ACLName">> := string()
%% }
-type delete_acl_request() :: #{binary() => any()}.

%% Example:
%% describe_parameters_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ParameterGroupName">> := string()
%% }
-type describe_parameters_request() :: #{binary() => any()}.

%% Example:
%% describe_multi_region_clusters_response() :: #{
%%   <<"MultiRegionClusters">> => list(multi_region_cluster()),
%%   <<"NextToken">> => string()
%% }
-type describe_multi_region_clusters_response() :: #{binary() => any()}.

%% Example:
%% security_group_membership() :: #{
%%   <<"SecurityGroupId">> => string(),
%%   <<"Status">> => string()
%% }
-type security_group_membership() :: #{binary() => any()}.

%% Example:
%% describe_snapshots_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Snapshots">> => list(snapshot())
%% }
-type describe_snapshots_response() :: #{binary() => any()}.

%% Example:
%% recurring_charge() :: #{
%%   <<"RecurringChargeAmount">> => float(),
%%   <<"RecurringChargeFrequency">> => string()
%% }
-type recurring_charge() :: #{binary() => any()}.

%% Example:
%% reset_parameter_group_request() :: #{
%%   <<"AllParameters">> => boolean(),
%%   <<"ParameterGroupName">> := string(),
%%   <<"ParameterNames">> => list(string())
%% }
-type reset_parameter_group_request() :: #{binary() => any()}.

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
%% cluster_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type cluster_not_found_fault() :: #{binary() => any()}.

%% Example:
%% create_snapshot_response() :: #{
%%   <<"Snapshot">> => snapshot()
%% }
-type create_snapshot_response() :: #{binary() => any()}.

%% Example:
%% list_allowed_multi_region_cluster_updates_request() :: #{
%%   <<"MultiRegionClusterName">> := string()
%% }
-type list_allowed_multi_region_cluster_updates_request() :: #{binary() => any()}.

%% Example:
%% acls_update_status() :: #{
%%   <<"ACLToApply">> => string()
%% }
-type acls_update_status() :: #{binary() => any()}.

%% Example:
%% subnet() :: #{
%%   <<"AvailabilityZone">> => availability_zone(),
%%   <<"Identifier">> => string(),
%%   <<"SupportedNetworkTypes">> => list(list(any())())
%% }
-type subnet() :: #{binary() => any()}.

%% Example:
%% update_multi_region_cluster_request() :: #{
%%   <<"Description">> => string(),
%%   <<"EngineVersion">> => string(),
%%   <<"MultiRegionClusterName">> := string(),
%%   <<"MultiRegionParameterGroupName">> => string(),
%%   <<"NodeType">> => string(),
%%   <<"ShardConfiguration">> => shard_configuration_request(),
%%   <<"UpdateStrategy">> => list(any())
%% }
-type update_multi_region_cluster_request() :: #{binary() => any()}.

%% Example:
%% invalid_subnet() :: #{
%%   <<"message">> => string()
%% }
-type invalid_subnet() :: #{binary() => any()}.

%% Example:
%% parameter_name_value() :: #{
%%   <<"ParameterName">> => string(),
%%   <<"ParameterValue">> => string()
%% }
-type parameter_name_value() :: #{binary() => any()}.

%% Example:
%% list_allowed_node_type_updates_response() :: #{
%%   <<"ScaleDownNodeTypes">> => list(string()),
%%   <<"ScaleUpNodeTypes">> => list(string())
%% }
-type list_allowed_node_type_updates_response() :: #{binary() => any()}.

%% Example:
%% list_tags_response() :: #{
%%   <<"TagList">> => list(tag())
%% }
-type list_tags_response() :: #{binary() => any()}.

%% Example:
%% describe_users_request() :: #{
%%   <<"Filters">> => list(filter()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"UserName">> => string()
%% }
-type describe_users_request() :: #{binary() => any()}.

%% Example:
%% resharding_status() :: #{
%%   <<"SlotMigration">> => slot_migration()
%% }
-type resharding_status() :: #{binary() => any()}.

%% Example:
%% describe_parameters_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Parameters">> => list(parameter())
%% }
-type describe_parameters_response() :: #{binary() => any()}.

%% Example:
%% update_acl_response() :: #{
%%   <<"ACL">> => acl()
%% }
-type update_acl_response() :: #{binary() => any()}.

%% Example:
%% reset_parameter_group_response() :: #{
%%   <<"ParameterGroup">> => parameter_group()
%% }
-type reset_parameter_group_response() :: #{binary() => any()}.

%% Example:
%% invalid_parameter_group_state_fault() :: #{
%%   <<"message">> => string()
%% }
-type invalid_parameter_group_state_fault() :: #{binary() => any()}.

%% Example:
%% create_acl_request() :: #{
%%   <<"ACLName">> := string(),
%%   <<"Tags">> => list(tag()),
%%   <<"UserNames">> => list(string())
%% }
-type create_acl_request() :: #{binary() => any()}.

%% Example:
%% acl() :: #{
%%   <<"ARN">> => string(),
%%   <<"Clusters">> => list(string()),
%%   <<"MinimumEngineVersion">> => string(),
%%   <<"Name">> => string(),
%%   <<"PendingChanges">> => acl_pending_changes(),
%%   <<"Status">> => string(),
%%   <<"UserNames">> => list(string())
%% }
-type acl() :: #{binary() => any()}.

%% Example:
%% memorydb_node() :: #{
%%   <<"AvailabilityZone">> => string(),
%%   <<"CreateTime">> => non_neg_integer(),
%%   <<"Endpoint">> => endpoint(),
%%   <<"Name">> => string(),
%%   <<"Status">> => string()
%% }
-type memorydb_node() :: #{binary() => any()}.

%% Example:
%% subnet_group_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type subnet_group_not_found_fault() :: #{binary() => any()}.

%% Example:
%% untag_resource_request() :: #{
%%   <<"ResourceArn">> := string(),
%%   <<"TagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% delete_parameter_group_request() :: #{
%%   <<"ParameterGroupName">> := string()
%% }
-type delete_parameter_group_request() :: #{binary() => any()}.

%% Example:
%% acl_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type acl_not_found_fault() :: #{binary() => any()}.

%% Example:
%% describe_reserved_nodes_offerings_request() :: #{
%%   <<"Duration">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"NodeType">> => string(),
%%   <<"OfferingType">> => string(),
%%   <<"ReservedNodesOfferingId">> => string()
%% }
-type describe_reserved_nodes_offerings_request() :: #{binary() => any()}.

%% Example:
%% tag_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type tag_not_found_fault() :: #{binary() => any()}.

%% Example:
%% update_cluster_request() :: #{
%%   <<"ACLName">> => string(),
%%   <<"ClusterName">> := string(),
%%   <<"Description">> => string(),
%%   <<"Engine">> => string(),
%%   <<"EngineVersion">> => string(),
%%   <<"IpDiscovery">> => list(any()),
%%   <<"MaintenanceWindow">> => string(),
%%   <<"NodeType">> => string(),
%%   <<"ParameterGroupName">> => string(),
%%   <<"ReplicaConfiguration">> => replica_configuration_request(),
%%   <<"SecurityGroupIds">> => list(string()),
%%   <<"ShardConfiguration">> => shard_configuration_request(),
%%   <<"SnapshotRetentionLimit">> => integer(),
%%   <<"SnapshotWindow">> => string(),
%%   <<"SnsTopicArn">> => string(),
%%   <<"SnsTopicStatus">> => string()
%% }
-type update_cluster_request() :: #{binary() => any()}.

%% Example:
%% invalid_parameter_combination_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_parameter_combination_exception() :: #{binary() => any()}.

%% Example:
%% cluster_configuration() :: #{
%%   <<"Description">> => string(),
%%   <<"Engine">> => string(),
%%   <<"EngineVersion">> => string(),
%%   <<"MaintenanceWindow">> => string(),
%%   <<"MultiRegionClusterName">> => string(),
%%   <<"MultiRegionParameterGroupName">> => string(),
%%   <<"Name">> => string(),
%%   <<"NodeType">> => string(),
%%   <<"NumShards">> => integer(),
%%   <<"ParameterGroupName">> => string(),
%%   <<"Port">> => integer(),
%%   <<"Shards">> => list(shard_detail()),
%%   <<"SnapshotRetentionLimit">> => integer(),
%%   <<"SnapshotWindow">> => string(),
%%   <<"SubnetGroupName">> => string(),
%%   <<"TopicArn">> => string(),
%%   <<"VpcId">> => string()
%% }
-type cluster_configuration() :: #{binary() => any()}.

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
%% subnet_not_allowed_fault() :: #{
%%   <<"message">> => string()
%% }
-type subnet_not_allowed_fault() :: #{binary() => any()}.

%% Example:
%% list_allowed_multi_region_cluster_updates_response() :: #{
%%   <<"ScaleDownNodeTypes">> => list(string()),
%%   <<"ScaleUpNodeTypes">> => list(string())
%% }
-type list_allowed_multi_region_cluster_updates_response() :: #{binary() => any()}.

%% Example:
%% delete_subnet_group_request() :: #{
%%   <<"SubnetGroupName">> := string()
%% }
-type delete_subnet_group_request() :: #{binary() => any()}.

%% Example:
%% shards_per_cluster_quota_exceeded_fault() :: #{
%%   <<"message">> => string()
%% }
-type shards_per_cluster_quota_exceeded_fault() :: #{binary() => any()}.

%% Example:
%% subnet_group() :: #{
%%   <<"ARN">> => string(),
%%   <<"Description">> => string(),
%%   <<"Name">> => string(),
%%   <<"Subnets">> => list(subnet()),
%%   <<"SupportedNetworkTypes">> => list(list(any())()),
%%   <<"VpcId">> => string()
%% }
-type subnet_group() :: #{binary() => any()}.

%% Example:
%% delete_multi_region_cluster_request() :: #{
%%   <<"MultiRegionClusterName">> := string()
%% }
-type delete_multi_region_cluster_request() :: #{binary() => any()}.

%% Example:
%% create_cluster_request() :: #{
%%   <<"ACLName">> := string(),
%%   <<"AutoMinorVersionUpgrade">> => boolean(),
%%   <<"ClusterName">> := string(),
%%   <<"DataTiering">> => boolean(),
%%   <<"Description">> => string(),
%%   <<"Engine">> => string(),
%%   <<"EngineVersion">> => string(),
%%   <<"IpDiscovery">> => list(any()),
%%   <<"KmsKeyId">> => string(),
%%   <<"MaintenanceWindow">> => string(),
%%   <<"MultiRegionClusterName">> => string(),
%%   <<"NetworkType">> => list(any()),
%%   <<"NodeType">> := string(),
%%   <<"NumReplicasPerShard">> => integer(),
%%   <<"NumShards">> => integer(),
%%   <<"ParameterGroupName">> => string(),
%%   <<"Port">> => integer(),
%%   <<"SecurityGroupIds">> => list(string()),
%%   <<"SnapshotArns">> => list(string()),
%%   <<"SnapshotName">> => string(),
%%   <<"SnapshotRetentionLimit">> => integer(),
%%   <<"SnapshotWindow">> => string(),
%%   <<"SnsTopicArn">> => string(),
%%   <<"SubnetGroupName">> => string(),
%%   <<"TLSEnabled">> => boolean(),
%%   <<"Tags">> => list(tag())
%% }
-type create_cluster_request() :: #{binary() => any()}.

%% Example:
%% engine_version_info() :: #{
%%   <<"Engine">> => string(),
%%   <<"EnginePatchVersion">> => string(),
%%   <<"EngineVersion">> => string(),
%%   <<"ParameterGroupFamily">> => string()
%% }
-type engine_version_info() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% no_operation_fault() :: #{
%%   <<"message">> => string()
%% }
-type no_operation_fault() :: #{binary() => any()}.

%% Example:
%% cluster() :: #{
%%   <<"ACLName">> => string(),
%%   <<"ARN">> => string(),
%%   <<"AutoMinorVersionUpgrade">> => boolean(),
%%   <<"AvailabilityMode">> => list(any()),
%%   <<"ClusterEndpoint">> => endpoint(),
%%   <<"DataTiering">> => list(any()),
%%   <<"Description">> => string(),
%%   <<"Engine">> => string(),
%%   <<"EnginePatchVersion">> => string(),
%%   <<"EngineVersion">> => string(),
%%   <<"IpDiscovery">> => list(any()),
%%   <<"KmsKeyId">> => string(),
%%   <<"MaintenanceWindow">> => string(),
%%   <<"MultiRegionClusterName">> => string(),
%%   <<"Name">> => string(),
%%   <<"NetworkType">> => list(any()),
%%   <<"NodeType">> => string(),
%%   <<"NumberOfShards">> => integer(),
%%   <<"ParameterGroupName">> => string(),
%%   <<"ParameterGroupStatus">> => string(),
%%   <<"PendingUpdates">> => cluster_pending_updates(),
%%   <<"SecurityGroups">> => list(security_group_membership()),
%%   <<"Shards">> => list(shard()),
%%   <<"SnapshotRetentionLimit">> => integer(),
%%   <<"SnapshotWindow">> => string(),
%%   <<"SnsTopicArn">> => string(),
%%   <<"SnsTopicStatus">> => string(),
%%   <<"Status">> => string(),
%%   <<"SubnetGroupName">> => string(),
%%   <<"TLSEnabled">> => boolean()
%% }
-type cluster() :: #{binary() => any()}.

%% Example:
%% subnet_group_quota_exceeded_fault() :: #{
%%   <<"message">> => string()
%% }
-type subnet_group_quota_exceeded_fault() :: #{binary() => any()}.

%% Example:
%% shard_detail() :: #{
%%   <<"Configuration">> => shard_configuration(),
%%   <<"Name">> => string(),
%%   <<"Size">> => string(),
%%   <<"SnapshotCreationTime">> => non_neg_integer()
%% }
-type shard_detail() :: #{binary() => any()}.

%% Example:
%% invalid_snapshot_state_fault() :: #{
%%   <<"message">> => string()
%% }
-type invalid_snapshot_state_fault() :: #{binary() => any()}.

%% Example:
%% describe_acls_request() :: #{
%%   <<"ACLName">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type describe_acls_request() :: #{binary() => any()}.

%% Example:
%% test_failover_not_available_fault() :: #{
%%   <<"message">> => string()
%% }
-type test_failover_not_available_fault() :: #{binary() => any()}.

%% Example:
%% invalid_parameter_value_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_parameter_value_exception() :: #{binary() => any()}.

%% Example:
%% invalid_acl_state_fault() :: #{
%%   <<"message">> => string()
%% }
-type invalid_acl_state_fault() :: #{binary() => any()}.

%% Example:
%% list_allowed_node_type_updates_request() :: #{
%%   <<"ClusterName">> := string()
%% }
-type list_allowed_node_type_updates_request() :: #{binary() => any()}.

%% Example:
%% create_multi_region_cluster_request() :: #{
%%   <<"Description">> => string(),
%%   <<"Engine">> => string(),
%%   <<"EngineVersion">> => string(),
%%   <<"MultiRegionClusterNameSuffix">> := string(),
%%   <<"MultiRegionParameterGroupName">> => string(),
%%   <<"NodeType">> := string(),
%%   <<"NumShards">> => integer(),
%%   <<"TLSEnabled">> => boolean(),
%%   <<"Tags">> => list(tag())
%% }
-type create_multi_region_cluster_request() :: #{binary() => any()}.

%% Example:
%% describe_subnet_groups_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"SubnetGroups">> => list(subnet_group())
%% }
-type describe_subnet_groups_response() :: #{binary() => any()}.

%% Example:
%% service_update_request() :: #{
%%   <<"ServiceUpdateNameToApply">> => string()
%% }
-type service_update_request() :: #{binary() => any()}.

%% Example:
%% delete_multi_region_cluster_response() :: #{
%%   <<"MultiRegionCluster">> => multi_region_cluster()
%% }
-type delete_multi_region_cluster_response() :: #{binary() => any()}.

%% Example:
%% parameter() :: #{
%%   <<"AllowedValues">> => string(),
%%   <<"DataType">> => string(),
%%   <<"Description">> => string(),
%%   <<"MinimumEngineVersion">> => string(),
%%   <<"Name">> => string(),
%%   <<"Value">> => string()
%% }
-type parameter() :: #{binary() => any()}.

%% Example:
%% update_subnet_group_request() :: #{
%%   <<"Description">> => string(),
%%   <<"SubnetGroupName">> := string(),
%%   <<"SubnetIds">> => list(string())
%% }
-type update_subnet_group_request() :: #{binary() => any()}.

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
%% reserved_node() :: #{
%%   <<"ARN">> => string(),
%%   <<"Duration">> => integer(),
%%   <<"FixedPrice">> => float(),
%%   <<"NodeCount">> => integer(),
%%   <<"NodeType">> => string(),
%%   <<"OfferingType">> => string(),
%%   <<"RecurringCharges">> => list(recurring_charge()),
%%   <<"ReservationId">> => string(),
%%   <<"ReservedNodesOfferingId">> => string(),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"State">> => string()
%% }
-type reserved_node() :: #{binary() => any()}.

%% Example:
%% create_subnet_group_request() :: #{
%%   <<"Description">> => string(),
%%   <<"SubnetGroupName">> := string(),
%%   <<"SubnetIds">> := list(string()),
%%   <<"Tags">> => list(tag())
%% }
-type create_subnet_group_request() :: #{binary() => any()}.

%% Example:
%% create_multi_region_cluster_response() :: #{
%%   <<"MultiRegionCluster">> => multi_region_cluster()
%% }
-type create_multi_region_cluster_response() :: #{binary() => any()}.

%% Example:
%% acl_pending_changes() :: #{
%%   <<"UserNamesToAdd">> => list(string()),
%%   <<"UserNamesToRemove">> => list(string())
%% }
-type acl_pending_changes() :: #{binary() => any()}.

%% Example:
%% api_call_rate_for_customer_exceeded_fault() :: #{
%%   <<"message">> => string()
%% }
-type api_call_rate_for_customer_exceeded_fault() :: #{binary() => any()}.

%% Example:
%% batch_update_cluster_request() :: #{
%%   <<"ClusterNames">> := list(string()),
%%   <<"ServiceUpdate">> => service_update_request()
%% }
-type batch_update_cluster_request() :: #{binary() => any()}.

%% Example:
%% parameter_group_already_exists_fault() :: #{
%%   <<"message">> => string()
%% }
-type parameter_group_already_exists_fault() :: #{binary() => any()}.

%% Example:
%% delete_cluster_response() :: #{
%%   <<"Cluster">> => cluster()
%% }
-type delete_cluster_response() :: #{binary() => any()}.

%% Example:
%% delete_subnet_group_response() :: #{
%%   <<"SubnetGroup">> => subnet_group()
%% }
-type delete_subnet_group_response() :: #{binary() => any()}.

%% Example:
%% delete_user_request() :: #{
%%   <<"UserName">> := string()
%% }
-type delete_user_request() :: #{binary() => any()}.

%% Example:
%% filter() :: #{
%%   <<"Name">> => string(),
%%   <<"Values">> => list(string())
%% }
-type filter() :: #{binary() => any()}.

%% Example:
%% create_acl_response() :: #{
%%   <<"ACL">> => acl()
%% }
-type create_acl_response() :: #{binary() => any()}.

%% Example:
%% purchase_reserved_nodes_offering_request() :: #{
%%   <<"NodeCount">> => integer(),
%%   <<"ReservationId">> => string(),
%%   <<"ReservedNodesOfferingId">> := string(),
%%   <<"Tags">> => list(tag())
%% }
-type purchase_reserved_nodes_offering_request() :: #{binary() => any()}.

%% Example:
%% shard_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type shard_not_found_fault() :: #{binary() => any()}.

%% Example:
%% delete_user_response() :: #{
%%   <<"User">> => user()
%% }
-type delete_user_response() :: #{binary() => any()}.

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
%% delete_parameter_group_response() :: #{
%%   <<"ParameterGroup">> => parameter_group()
%% }
-type delete_parameter_group_response() :: #{binary() => any()}.

%% Example:
%% endpoint() :: #{
%%   <<"Address">> => string(),
%%   <<"Port">> => integer()
%% }
-type endpoint() :: #{binary() => any()}.

%% Example:
%% user_quota_exceeded_fault() :: #{
%%   <<"message">> => string()
%% }
-type user_quota_exceeded_fault() :: #{binary() => any()}.

%% Example:
%% describe_acls_response() :: #{
%%   <<"ACLs">> => list(acl()),
%%   <<"NextToken">> => string()
%% }
-type describe_acls_response() :: #{binary() => any()}.

%% Example:
%% purchase_reserved_nodes_offering_response() :: #{
%%   <<"ReservedNode">> => reserved_node()
%% }
-type purchase_reserved_nodes_offering_response() :: #{binary() => any()}.

%% Example:
%% reserved_node_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type reserved_node_not_found_fault() :: #{binary() => any()}.

%% Example:
%% shard() :: #{
%%   <<"Name">> => string(),
%%   <<"Nodes">> => list(node()),
%%   <<"NumberOfNodes">> => integer(),
%%   <<"Slots">> => string(),
%%   <<"Status">> => string()
%% }
-type shard() :: #{binary() => any()}.

%% Example:
%% shard_configuration_request() :: #{
%%   <<"ShardCount">> => integer()
%% }
-type shard_configuration_request() :: #{binary() => any()}.

%% Example:
%% describe_multi_region_clusters_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"MultiRegionClusterName">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"ShowClusterDetails">> => boolean()
%% }
-type describe_multi_region_clusters_request() :: #{binary() => any()}.

%% Example:
%% duplicate_user_name_fault() :: #{
%%   <<"message">> => string()
%% }
-type duplicate_user_name_fault() :: #{binary() => any()}.

%% Example:
%% event() :: #{
%%   <<"Date">> => non_neg_integer(),
%%   <<"Message">> => string(),
%%   <<"SourceName">> => string(),
%%   <<"SourceType">> => list(any())
%% }
-type event() :: #{binary() => any()}.

%% Example:
%% delete_cluster_request() :: #{
%%   <<"ClusterName">> := string(),
%%   <<"FinalSnapshotName">> => string(),
%%   <<"MultiRegionClusterName">> => string()
%% }
-type delete_cluster_request() :: #{binary() => any()}.

%% Example:
%% parameter_group_quota_exceeded_fault() :: #{
%%   <<"message">> => string()
%% }
-type parameter_group_quota_exceeded_fault() :: #{binary() => any()}.

%% Example:
%% describe_events_request() :: #{
%%   <<"Duration">> => integer(),
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"SourceName">> => string(),
%%   <<"SourceType">> => list(any()),
%%   <<"StartTime">> => non_neg_integer()
%% }
-type describe_events_request() :: #{binary() => any()}.

%% Example:
%% snapshot() :: #{
%%   <<"ARN">> => string(),
%%   <<"ClusterConfiguration">> => cluster_configuration(),
%%   <<"DataTiering">> => list(any()),
%%   <<"KmsKeyId">> => string(),
%%   <<"Name">> => string(),
%%   <<"Source">> => string(),
%%   <<"Status">> => string()
%% }
-type snapshot() :: #{binary() => any()}.

%% Example:
%% describe_subnet_groups_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"SubnetGroupName">> => string()
%% }
-type describe_subnet_groups_request() :: #{binary() => any()}.

%% Example:
%% subnet_in_use() :: #{
%%   <<"message">> => string()
%% }
-type subnet_in_use() :: #{binary() => any()}.

%% Example:
%% service_linked_role_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type service_linked_role_not_found_fault() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{
%%   <<"TagList">> => list(tag())
%% }
-type tag_resource_response() :: #{binary() => any()}.

%% Example:
%% update_multi_region_cluster_response() :: #{
%%   <<"MultiRegionCluster">> => multi_region_cluster()
%% }
-type update_multi_region_cluster_response() :: #{binary() => any()}.

%% Example:
%% acl_already_exists_fault() :: #{
%%   <<"message">> => string()
%% }
-type acl_already_exists_fault() :: #{binary() => any()}.

%% Example:
%% describe_reserved_nodes_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"ReservedNodes">> => list(reserved_node())
%% }
-type describe_reserved_nodes_response() :: #{binary() => any()}.

%% Example:
%% regional_cluster() :: #{
%%   <<"ARN">> => string(),
%%   <<"ClusterName">> => string(),
%%   <<"Region">> => string(),
%%   <<"Status">> => string()
%% }
-type regional_cluster() :: #{binary() => any()}.

%% Example:
%% describe_parameter_groups_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ParameterGroupName">> => string()
%% }
-type describe_parameter_groups_request() :: #{binary() => any()}.

%% Example:
%% copy_snapshot_request() :: #{
%%   <<"KmsKeyId">> => string(),
%%   <<"SourceSnapshotName">> := string(),
%%   <<"Tags">> => list(tag()),
%%   <<"TargetBucket">> => string(),
%%   <<"TargetSnapshotName">> := string()
%% }
-type copy_snapshot_request() :: #{binary() => any()}.

%% Example:
%% describe_clusters_response() :: #{
%%   <<"Clusters">> => list(cluster()),
%%   <<"NextToken">> => string()
%% }
-type describe_clusters_response() :: #{binary() => any()}.

%% Example:
%% cluster_pending_updates() :: #{
%%   <<"ACLs">> => acls_update_status(),
%%   <<"Resharding">> => resharding_status(),
%%   <<"ServiceUpdates">> => list(pending_modified_service_update())
%% }
-type cluster_pending_updates() :: #{binary() => any()}.

%% Example:
%% snapshot_already_exists_fault() :: #{
%%   <<"message">> => string()
%% }
-type snapshot_already_exists_fault() :: #{binary() => any()}.

%% Example:
%% update_user_request() :: #{
%%   <<"AccessString">> => string(),
%%   <<"AuthenticationMode">> => authentication_mode(),
%%   <<"UserName">> := string()
%% }
-type update_user_request() :: #{binary() => any()}.

%% Example:
%% replica_configuration_request() :: #{
%%   <<"ReplicaCount">> => integer()
%% }
-type replica_configuration_request() :: #{binary() => any()}.

%% Example:
%% reserved_nodes_offering_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type reserved_nodes_offering_not_found_fault() :: #{binary() => any()}.

%% Example:
%% user() :: #{
%%   <<"ACLNames">> => list(string()),
%%   <<"ARN">> => string(),
%%   <<"AccessString">> => string(),
%%   <<"Authentication">> => authentication(),
%%   <<"MinimumEngineVersion">> => string(),
%%   <<"Name">> => string(),
%%   <<"Status">> => string()
%% }
-type user() :: #{binary() => any()}.

%% Example:
%% service_update() :: #{
%%   <<"AutoUpdateStartDate">> => non_neg_integer(),
%%   <<"ClusterName">> => string(),
%%   <<"Description">> => string(),
%%   <<"Engine">> => string(),
%%   <<"NodesUpdated">> => string(),
%%   <<"ReleaseDate">> => non_neg_integer(),
%%   <<"ServiceUpdateName">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"Type">> => list(any())
%% }
-type service_update() :: #{binary() => any()}.

%% Example:
%% multi_region_cluster() :: #{
%%   <<"ARN">> => string(),
%%   <<"Clusters">> => list(regional_cluster()),
%%   <<"Description">> => string(),
%%   <<"Engine">> => string(),
%%   <<"EngineVersion">> => string(),
%%   <<"MultiRegionClusterName">> => string(),
%%   <<"MultiRegionParameterGroupName">> => string(),
%%   <<"NodeType">> => string(),
%%   <<"NumberOfShards">> => integer(),
%%   <<"Status">> => string(),
%%   <<"TLSEnabled">> => boolean()
%% }
-type multi_region_cluster() :: #{binary() => any()}.

%% Example:
%% invalid_cluster_state_fault() :: #{
%%   <<"message">> => string()
%% }
-type invalid_cluster_state_fault() :: #{binary() => any()}.

%% Example:
%% default_user_required() :: #{
%%   <<"message">> => string()
%% }
-type default_user_required() :: #{binary() => any()}.

%% Example:
%% describe_snapshots_request() :: #{
%%   <<"ClusterName">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ShowDetail">> => boolean(),
%%   <<"SnapshotName">> => string(),
%%   <<"Source">> => string()
%% }
-type describe_snapshots_request() :: #{binary() => any()}.

%% Example:
%% reserved_node_quota_exceeded_fault() :: #{
%%   <<"message">> => string()
%% }
-type reserved_node_quota_exceeded_fault() :: #{binary() => any()}.

%% Example:
%% update_parameter_group_response() :: #{
%%   <<"ParameterGroup">> => parameter_group()
%% }
-type update_parameter_group_response() :: #{binary() => any()}.

%% Example:
%% authentication_mode() :: #{
%%   <<"Passwords">> => list(string()),
%%   <<"Type">> => list(any())
%% }
-type authentication_mode() :: #{binary() => any()}.

%% Example:
%% describe_reserved_nodes_offerings_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"ReservedNodesOfferings">> => list(reserved_nodes_offering())
%% }
-type describe_reserved_nodes_offerings_response() :: #{binary() => any()}.

%% Example:
%% subnet_group_in_use_fault() :: #{
%%   <<"message">> => string()
%% }
-type subnet_group_in_use_fault() :: #{binary() => any()}.

%% Example:
%% update_parameter_group_request() :: #{
%%   <<"ParameterGroupName">> := string(),
%%   <<"ParameterNameValues">> := list(parameter_name_value())
%% }
-type update_parameter_group_request() :: #{binary() => any()}.

%% Example:
%% pending_modified_service_update() :: #{
%%   <<"ServiceUpdateName">> => string(),
%%   <<"Status">> => list(any())
%% }
-type pending_modified_service_update() :: #{binary() => any()}.

%% Example:
%% parameter_group() :: #{
%%   <<"ARN">> => string(),
%%   <<"Description">> => string(),
%%   <<"Family">> => string(),
%%   <<"Name">> => string()
%% }
-type parameter_group() :: #{binary() => any()}.

%% Example:
%% invalid_node_state_fault() :: #{
%%   <<"message">> => string()
%% }
-type invalid_node_state_fault() :: #{binary() => any()}.

%% Example:
%% insufficient_cluster_capacity_fault() :: #{
%%   <<"message">> => string()
%% }
-type insufficient_cluster_capacity_fault() :: #{binary() => any()}.

%% Example:
%% cluster_already_exists_fault() :: #{
%%   <<"message">> => string()
%% }
-type cluster_already_exists_fault() :: #{binary() => any()}.

%% Example:
%% multi_region_cluster_already_exists_fault() :: #{
%%   <<"message">> => string()
%% }
-type multi_region_cluster_already_exists_fault() :: #{binary() => any()}.

%% Example:
%% list_tags_request() :: #{
%%   <<"ResourceArn">> := string()
%% }
-type list_tags_request() :: #{binary() => any()}.

%% Example:
%% copy_snapshot_response() :: #{
%%   <<"Snapshot">> => snapshot()
%% }
-type copy_snapshot_response() :: #{binary() => any()}.

%% Example:
%% describe_service_updates_request() :: #{
%%   <<"ClusterNames">> => list(string()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ServiceUpdateName">> => string(),
%%   <<"Status">> => list(list(any())())
%% }
-type describe_service_updates_request() :: #{binary() => any()}.

%% Example:
%% describe_engine_versions_response() :: #{
%%   <<"EngineVersions">> => list(engine_version_info()),
%%   <<"NextToken">> => string()
%% }
-type describe_engine_versions_response() :: #{binary() => any()}.

%% Example:
%% invalid_credentials_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_credentials_exception() :: #{binary() => any()}.

%% Example:
%% delete_acl_response() :: #{
%%   <<"ACL">> => acl()
%% }
-type delete_acl_response() :: #{binary() => any()}.

%% Example:
%% subnet_quota_exceeded_fault() :: #{
%%   <<"message">> => string()
%% }
-type subnet_quota_exceeded_fault() :: #{binary() => any()}.

%% Example:
%% acl_quota_exceeded_fault() :: #{
%%   <<"message">> => string()
%% }
-type acl_quota_exceeded_fault() :: #{binary() => any()}.

%% Example:
%% create_user_response() :: #{
%%   <<"User">> => user()
%% }
-type create_user_response() :: #{binary() => any()}.

%% Example:
%% slot_migration() :: #{
%%   <<"ProgressPercentage">> => float()
%% }
-type slot_migration() :: #{binary() => any()}.

%% Example:
%% parameter_group_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type parameter_group_not_found_fault() :: #{binary() => any()}.

%% Example:
%% failover_shard_request() :: #{
%%   <<"ClusterName">> := string(),
%%   <<"ShardName">> := string()
%% }
-type failover_shard_request() :: #{binary() => any()}.

%% Example:
%% describe_clusters_request() :: #{
%%   <<"ClusterName">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ShowShardDetails">> => boolean()
%% }
-type describe_clusters_request() :: #{binary() => any()}.

%% Example:
%% describe_events_response() :: #{
%%   <<"Events">> => list(event()),
%%   <<"NextToken">> => string()
%% }
-type describe_events_response() :: #{binary() => any()}.

%% Example:
%% update_subnet_group_response() :: #{
%%   <<"SubnetGroup">> => subnet_group()
%% }
-type update_subnet_group_response() :: #{binary() => any()}.

%% Example:
%% shard_configuration() :: #{
%%   <<"ReplicaCount">> => integer(),
%%   <<"Slots">> => string()
%% }
-type shard_configuration() :: #{binary() => any()}.

%% Example:
%% multi_region_parameter_group_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type multi_region_parameter_group_not_found_fault() :: #{binary() => any()}.

%% Example:
%% delete_snapshot_response() :: #{
%%   <<"Snapshot">> => snapshot()
%% }
-type delete_snapshot_response() :: #{binary() => any()}.

%% Example:
%% create_user_request() :: #{
%%   <<"AccessString">> := string(),
%%   <<"AuthenticationMode">> := authentication_mode(),
%%   <<"Tags">> => list(tag()),
%%   <<"UserName">> := string()
%% }
-type create_user_request() :: #{binary() => any()}.

%% Example:
%% node_quota_for_cluster_exceeded_fault() :: #{
%%   <<"message">> => string()
%% }
-type node_quota_for_cluster_exceeded_fault() :: #{binary() => any()}.

%% Example:
%% update_cluster_response() :: #{
%%   <<"Cluster">> => cluster()
%% }
-type update_cluster_response() :: #{binary() => any()}.

-type batch_update_cluster_errors() ::
    invalid_parameter_value_exception() | 
    service_update_not_found_fault().

-type copy_snapshot_errors() ::
    snapshot_already_exists_fault() | 
    service_linked_role_not_found_fault() | 
    invalid_parameter_value_exception() | 
    invalid_snapshot_state_fault() | 
    tag_quota_per_resource_exceeded() | 
    invalid_parameter_combination_exception() | 
    snapshot_not_found_fault() | 
    snapshot_quota_exceeded_fault().

-type create_acl_errors() ::
    acl_quota_exceeded_fault() | 
    default_user_required() | 
    acl_already_exists_fault() | 
    duplicate_user_name_fault() | 
    invalid_parameter_value_exception() | 
    tag_quota_per_resource_exceeded() | 
    user_not_found_fault().

-type create_cluster_errors() ::
    node_quota_for_cluster_exceeded_fault() | 
    parameter_group_not_found_fault() | 
    invalid_credentials_exception() | 
    cluster_already_exists_fault() | 
    insufficient_cluster_capacity_fault() | 
    service_linked_role_not_found_fault() | 
    cluster_quota_for_customer_exceeded_fault() | 
    invalid_acl_state_fault() | 
    invalid_parameter_value_exception() | 
    shards_per_cluster_quota_exceeded_fault() | 
    tag_quota_per_resource_exceeded() | 
    invalid_vpc_network_state_fault() | 
    invalid_parameter_combination_exception() | 
    acl_not_found_fault() | 
    subnet_group_not_found_fault() | 
    invalid_multi_region_cluster_state_fault() | 
    multi_region_cluster_not_found_fault() | 
    node_quota_for_customer_exceeded_fault().

-type create_multi_region_cluster_errors() ::
    multi_region_parameter_group_not_found_fault() | 
    multi_region_cluster_already_exists_fault() | 
    cluster_quota_for_customer_exceeded_fault() | 
    invalid_parameter_value_exception() | 
    tag_quota_per_resource_exceeded() | 
    invalid_parameter_combination_exception().

-type create_parameter_group_errors() ::
    service_linked_role_not_found_fault() | 
    parameter_group_quota_exceeded_fault() | 
    parameter_group_already_exists_fault() | 
    invalid_parameter_value_exception() | 
    tag_quota_per_resource_exceeded() | 
    invalid_parameter_combination_exception() | 
    invalid_parameter_group_state_fault().

-type create_snapshot_errors() ::
    invalid_cluster_state_fault() | 
    snapshot_already_exists_fault() | 
    service_linked_role_not_found_fault() | 
    invalid_parameter_value_exception() | 
    tag_quota_per_resource_exceeded() | 
    invalid_parameter_combination_exception() | 
    cluster_not_found_fault() | 
    snapshot_quota_exceeded_fault().

-type create_subnet_group_errors() ::
    subnet_quota_exceeded_fault() | 
    service_linked_role_not_found_fault() | 
    subnet_group_quota_exceeded_fault() | 
    subnet_not_allowed_fault() | 
    tag_quota_per_resource_exceeded() | 
    invalid_subnet() | 
    subnet_group_already_exists_fault().

-type create_user_errors() ::
    duplicate_user_name_fault() | 
    user_quota_exceeded_fault() | 
    user_already_exists_fault() | 
    invalid_parameter_value_exception() | 
    tag_quota_per_resource_exceeded() | 
    invalid_parameter_combination_exception().

-type delete_acl_errors() ::
    invalid_acl_state_fault() | 
    invalid_parameter_value_exception() | 
    acl_not_found_fault().

-type delete_cluster_errors() ::
    invalid_cluster_state_fault() | 
    snapshot_already_exists_fault() | 
    service_linked_role_not_found_fault() | 
    invalid_parameter_value_exception() | 
    invalid_parameter_combination_exception() | 
    cluster_not_found_fault().

-type delete_multi_region_cluster_errors() ::
    invalid_parameter_value_exception() | 
    invalid_multi_region_cluster_state_fault() | 
    multi_region_cluster_not_found_fault().

-type delete_parameter_group_errors() ::
    parameter_group_not_found_fault() | 
    service_linked_role_not_found_fault() | 
    invalid_parameter_value_exception() | 
    invalid_parameter_combination_exception() | 
    invalid_parameter_group_state_fault().

-type delete_snapshot_errors() ::
    service_linked_role_not_found_fault() | 
    invalid_parameter_value_exception() | 
    invalid_snapshot_state_fault() | 
    invalid_parameter_combination_exception() | 
    snapshot_not_found_fault().

-type delete_subnet_group_errors() ::
    subnet_group_in_use_fault() | 
    service_linked_role_not_found_fault() | 
    subnet_group_not_found_fault().

-type delete_user_errors() ::
    invalid_parameter_value_exception() | 
    user_not_found_fault() | 
    invalid_user_state_fault().

-type describe_acls_errors() ::
    invalid_parameter_combination_exception() | 
    acl_not_found_fault().

-type describe_clusters_errors() ::
    service_linked_role_not_found_fault() | 
    invalid_parameter_value_exception() | 
    invalid_parameter_combination_exception() | 
    cluster_not_found_fault().

-type describe_engine_versions_errors() ::
    service_linked_role_not_found_fault() | 
    invalid_parameter_value_exception() | 
    invalid_parameter_combination_exception().

-type describe_events_errors() ::
    service_linked_role_not_found_fault() | 
    invalid_parameter_value_exception() | 
    invalid_parameter_combination_exception().

-type describe_multi_region_clusters_errors() ::
    invalid_parameter_value_exception() | 
    invalid_parameter_combination_exception() | 
    cluster_not_found_fault() | 
    multi_region_cluster_not_found_fault().

-type describe_parameter_groups_errors() ::
    parameter_group_not_found_fault() | 
    service_linked_role_not_found_fault() | 
    invalid_parameter_value_exception() | 
    invalid_parameter_combination_exception().

-type describe_parameters_errors() ::
    parameter_group_not_found_fault() | 
    service_linked_role_not_found_fault() | 
    invalid_parameter_value_exception() | 
    invalid_parameter_combination_exception().

-type describe_reserved_nodes_errors() ::
    service_linked_role_not_found_fault() | 
    reserved_node_not_found_fault() | 
    invalid_parameter_value_exception() | 
    invalid_parameter_combination_exception().

-type describe_reserved_nodes_offerings_errors() ::
    reserved_nodes_offering_not_found_fault() | 
    service_linked_role_not_found_fault() | 
    invalid_parameter_value_exception() | 
    invalid_parameter_combination_exception().

-type describe_service_updates_errors() ::
    invalid_parameter_value_exception() | 
    invalid_parameter_combination_exception().

-type describe_snapshots_errors() ::
    service_linked_role_not_found_fault() | 
    invalid_parameter_value_exception() | 
    invalid_parameter_combination_exception() | 
    snapshot_not_found_fault().

-type describe_subnet_groups_errors() ::
    service_linked_role_not_found_fault() | 
    subnet_group_not_found_fault().

-type describe_users_errors() ::
    invalid_parameter_combination_exception() | 
    user_not_found_fault().

-type failover_shard_errors() ::
    invalid_cluster_state_fault() | 
    shard_not_found_fault() | 
    api_call_rate_for_customer_exceeded_fault() | 
    invalid_parameter_value_exception() | 
    test_failover_not_available_fault() | 
    invalid_parameter_combination_exception() | 
    cluster_not_found_fault() | 
    invalid_kms_key_fault().

-type list_allowed_multi_region_cluster_updates_errors() ::
    invalid_parameter_value_exception() | 
    invalid_parameter_combination_exception() | 
    multi_region_cluster_not_found_fault().

-type list_allowed_node_type_updates_errors() ::
    service_linked_role_not_found_fault() | 
    invalid_parameter_value_exception() | 
    invalid_parameter_combination_exception() | 
    cluster_not_found_fault().

-type list_tags_errors() ::
    multi_region_parameter_group_not_found_fault() | 
    parameter_group_not_found_fault() | 
    invalid_cluster_state_fault() | 
    service_linked_role_not_found_fault() | 
    invalid_arn_fault() | 
    acl_not_found_fault() | 
    subnet_group_not_found_fault() | 
    cluster_not_found_fault() | 
    user_not_found_fault() | 
    multi_region_cluster_not_found_fault() | 
    snapshot_not_found_fault().

-type purchase_reserved_nodes_offering_errors() ::
    reserved_node_quota_exceeded_fault() | 
    reserved_nodes_offering_not_found_fault() | 
    service_linked_role_not_found_fault() | 
    invalid_parameter_value_exception() | 
    tag_quota_per_resource_exceeded() | 
    invalid_parameter_combination_exception() | 
    reserved_node_already_exists_fault().

-type reset_parameter_group_errors() ::
    parameter_group_not_found_fault() | 
    service_linked_role_not_found_fault() | 
    invalid_parameter_value_exception() | 
    invalid_parameter_combination_exception() | 
    invalid_parameter_group_state_fault().

-type tag_resource_errors() ::
    multi_region_parameter_group_not_found_fault() | 
    parameter_group_not_found_fault() | 
    invalid_cluster_state_fault() | 
    service_linked_role_not_found_fault() | 
    invalid_arn_fault() | 
    invalid_parameter_value_exception() | 
    tag_quota_per_resource_exceeded() | 
    acl_not_found_fault() | 
    subnet_group_not_found_fault() | 
    cluster_not_found_fault() | 
    user_not_found_fault() | 
    multi_region_cluster_not_found_fault() | 
    snapshot_not_found_fault().

-type untag_resource_errors() ::
    multi_region_parameter_group_not_found_fault() | 
    parameter_group_not_found_fault() | 
    invalid_cluster_state_fault() | 
    service_linked_role_not_found_fault() | 
    invalid_arn_fault() | 
    invalid_parameter_value_exception() | 
    tag_not_found_fault() | 
    acl_not_found_fault() | 
    subnet_group_not_found_fault() | 
    cluster_not_found_fault() | 
    user_not_found_fault() | 
    multi_region_cluster_not_found_fault() | 
    snapshot_not_found_fault().

-type update_acl_errors() ::
    default_user_required() | 
    duplicate_user_name_fault() | 
    invalid_acl_state_fault() | 
    invalid_parameter_value_exception() | 
    invalid_parameter_combination_exception() | 
    acl_not_found_fault() | 
    user_not_found_fault().

-type update_cluster_errors() ::
    node_quota_for_cluster_exceeded_fault() | 
    parameter_group_not_found_fault() | 
    invalid_node_state_fault() | 
    invalid_cluster_state_fault() | 
    service_linked_role_not_found_fault() | 
    cluster_quota_for_customer_exceeded_fault() | 
    invalid_acl_state_fault() | 
    invalid_parameter_value_exception() | 
    no_operation_fault() | 
    shards_per_cluster_quota_exceeded_fault() | 
    invalid_vpc_network_state_fault() | 
    invalid_parameter_combination_exception() | 
    acl_not_found_fault() | 
    cluster_not_found_fault() | 
    invalid_kms_key_fault() | 
    node_quota_for_customer_exceeded_fault().

-type update_multi_region_cluster_errors() ::
    multi_region_parameter_group_not_found_fault() | 
    invalid_parameter_value_exception() | 
    invalid_parameter_combination_exception() | 
    invalid_multi_region_cluster_state_fault() | 
    multi_region_cluster_not_found_fault().

-type update_parameter_group_errors() ::
    parameter_group_not_found_fault() | 
    service_linked_role_not_found_fault() | 
    invalid_parameter_value_exception() | 
    invalid_parameter_combination_exception() | 
    invalid_parameter_group_state_fault().

-type update_subnet_group_errors() ::
    subnet_quota_exceeded_fault() | 
    service_linked_role_not_found_fault() | 
    subnet_in_use() | 
    subnet_not_allowed_fault() | 
    subnet_group_not_found_fault() | 
    invalid_subnet().

-type update_user_errors() ::
    invalid_parameter_value_exception() | 
    invalid_parameter_combination_exception() | 
    user_not_found_fault() | 
    invalid_user_state_fault().

%%====================================================================
%% API
%%====================================================================

%% @doc Apply the service update to a list of clusters supplied.
%%
%% For more information on service updates and applying them, see Applying
%% the service updates:
%% https://docs.aws.amazon.com/MemoryDB/latest/devguide/managing-updates.html#applying-updates.
-spec batch_update_cluster(aws_client:aws_client(), batch_update_cluster_request()) ->
    {ok, batch_update_cluster_response(), tuple()} |
    {error, any()} |
    {error, batch_update_cluster_errors(), tuple()}.
batch_update_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_update_cluster(Client, Input, []).

-spec batch_update_cluster(aws_client:aws_client(), batch_update_cluster_request(), proplists:proplist()) ->
    {ok, batch_update_cluster_response(), tuple()} |
    {error, any()} |
    {error, batch_update_cluster_errors(), tuple()}.
batch_update_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchUpdateCluster">>, Input, Options).

%% @doc Makes a copy of an existing snapshot.
-spec copy_snapshot(aws_client:aws_client(), copy_snapshot_request()) ->
    {ok, copy_snapshot_response(), tuple()} |
    {error, any()} |
    {error, copy_snapshot_errors(), tuple()}.
copy_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    copy_snapshot(Client, Input, []).

-spec copy_snapshot(aws_client:aws_client(), copy_snapshot_request(), proplists:proplist()) ->
    {ok, copy_snapshot_response(), tuple()} |
    {error, any()} |
    {error, copy_snapshot_errors(), tuple()}.
copy_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CopySnapshot">>, Input, Options).

%% @doc Creates an Access Control List.
%%
%% For more information, see Authenticating users with Access Contol Lists
%% (ACLs):
%% https://docs.aws.amazon.com/MemoryDB/latest/devguide/clusters.acls.html.
-spec create_acl(aws_client:aws_client(), create_acl_request()) ->
    {ok, create_acl_response(), tuple()} |
    {error, any()} |
    {error, create_acl_errors(), tuple()}.
create_acl(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_acl(Client, Input, []).

-spec create_acl(aws_client:aws_client(), create_acl_request(), proplists:proplist()) ->
    {ok, create_acl_response(), tuple()} |
    {error, any()} |
    {error, create_acl_errors(), tuple()}.
create_acl(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateACL">>, Input, Options).

%% @doc Creates a cluster.
%%
%% All nodes in the cluster run the same protocol-compliant engine software.
-spec create_cluster(aws_client:aws_client(), create_cluster_request()) ->
    {ok, create_cluster_response(), tuple()} |
    {error, any()} |
    {error, create_cluster_errors(), tuple()}.
create_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_cluster(Client, Input, []).

-spec create_cluster(aws_client:aws_client(), create_cluster_request(), proplists:proplist()) ->
    {ok, create_cluster_response(), tuple()} |
    {error, any()} |
    {error, create_cluster_errors(), tuple()}.
create_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateCluster">>, Input, Options).

%% @doc Creates a new multi-Region cluster.
-spec create_multi_region_cluster(aws_client:aws_client(), create_multi_region_cluster_request()) ->
    {ok, create_multi_region_cluster_response(), tuple()} |
    {error, any()} |
    {error, create_multi_region_cluster_errors(), tuple()}.
create_multi_region_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_multi_region_cluster(Client, Input, []).

-spec create_multi_region_cluster(aws_client:aws_client(), create_multi_region_cluster_request(), proplists:proplist()) ->
    {ok, create_multi_region_cluster_response(), tuple()} |
    {error, any()} |
    {error, create_multi_region_cluster_errors(), tuple()}.
create_multi_region_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateMultiRegionCluster">>, Input, Options).

%% @doc Creates a new MemoryDB parameter group.
%%
%% A parameter group is a collection of parameters and their values that are
%% applied to all of the nodes in any cluster. For
%% more information, see Configuring engine parameters using parameter
%% groups:
%% https://docs.aws.amazon.com/MemoryDB/latest/devguide/parametergroups.html.
-spec create_parameter_group(aws_client:aws_client(), create_parameter_group_request()) ->
    {ok, create_parameter_group_response(), tuple()} |
    {error, any()} |
    {error, create_parameter_group_errors(), tuple()}.
create_parameter_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_parameter_group(Client, Input, []).

-spec create_parameter_group(aws_client:aws_client(), create_parameter_group_request(), proplists:proplist()) ->
    {ok, create_parameter_group_response(), tuple()} |
    {error, any()} |
    {error, create_parameter_group_errors(), tuple()}.
create_parameter_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateParameterGroup">>, Input, Options).

%% @doc Creates a copy of an entire cluster at a specific moment in time.
-spec create_snapshot(aws_client:aws_client(), create_snapshot_request()) ->
    {ok, create_snapshot_response(), tuple()} |
    {error, any()} |
    {error, create_snapshot_errors(), tuple()}.
create_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_snapshot(Client, Input, []).

-spec create_snapshot(aws_client:aws_client(), create_snapshot_request(), proplists:proplist()) ->
    {ok, create_snapshot_response(), tuple()} |
    {error, any()} |
    {error, create_snapshot_errors(), tuple()}.
create_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateSnapshot">>, Input, Options).

%% @doc Creates a subnet group.
%%
%% A subnet group is a collection of subnets (typically private) that you can
%% designate for your clusters running in an Amazon Virtual Private Cloud
%% (VPC) environment.
%%
%% When you create a cluster in an Amazon VPC, you must specify a subnet
%% group. MemoryDB uses that subnet group to choose a subnet and IP addresses
%% within that subnet to associate with your nodes.
%% For more information, see Subnets and subnet groups:
%% https://docs.aws.amazon.com/MemoryDB/latest/devguide/subnetgroups.html.
-spec create_subnet_group(aws_client:aws_client(), create_subnet_group_request()) ->
    {ok, create_subnet_group_response(), tuple()} |
    {error, any()} |
    {error, create_subnet_group_errors(), tuple()}.
create_subnet_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_subnet_group(Client, Input, []).

-spec create_subnet_group(aws_client:aws_client(), create_subnet_group_request(), proplists:proplist()) ->
    {ok, create_subnet_group_response(), tuple()} |
    {error, any()} |
    {error, create_subnet_group_errors(), tuple()}.
create_subnet_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateSubnetGroup">>, Input, Options).

%% @doc Creates a MemoryDB user.
%%
%% For more information, see Authenticating users with Access Contol Lists
%% (ACLs):
%% https://docs.aws.amazon.com/MemoryDB/latest/devguide/clusters.acls.html.
-spec create_user(aws_client:aws_client(), create_user_request()) ->
    {ok, create_user_response(), tuple()} |
    {error, any()} |
    {error, create_user_errors(), tuple()}.
create_user(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_user(Client, Input, []).

-spec create_user(aws_client:aws_client(), create_user_request(), proplists:proplist()) ->
    {ok, create_user_response(), tuple()} |
    {error, any()} |
    {error, create_user_errors(), tuple()}.
create_user(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateUser">>, Input, Options).

%% @doc Deletes an Access Control List.
%%
%% The ACL must first be disassociated from the cluster before it can be
%% deleted. For more information, see Authenticating users with Access Contol
%% Lists (ACLs):
%% https://docs.aws.amazon.com/MemoryDB/latest/devguide/clusters.acls.html.
-spec delete_acl(aws_client:aws_client(), delete_acl_request()) ->
    {ok, delete_acl_response(), tuple()} |
    {error, any()} |
    {error, delete_acl_errors(), tuple()}.
delete_acl(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_acl(Client, Input, []).

-spec delete_acl(aws_client:aws_client(), delete_acl_request(), proplists:proplist()) ->
    {ok, delete_acl_response(), tuple()} |
    {error, any()} |
    {error, delete_acl_errors(), tuple()}.
delete_acl(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteACL">>, Input, Options).

%% @doc Deletes a cluster.
%%
%% It also deletes all associated nodes and node endpoints.
%%
%% `CreateSnapshot' permission is required to create a final snapshot.
%% Without this permission, the API call will fail with an `Access
%% Denied' exception.
-spec delete_cluster(aws_client:aws_client(), delete_cluster_request()) ->
    {ok, delete_cluster_response(), tuple()} |
    {error, any()} |
    {error, delete_cluster_errors(), tuple()}.
delete_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_cluster(Client, Input, []).

-spec delete_cluster(aws_client:aws_client(), delete_cluster_request(), proplists:proplist()) ->
    {ok, delete_cluster_response(), tuple()} |
    {error, any()} |
    {error, delete_cluster_errors(), tuple()}.
delete_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteCluster">>, Input, Options).

%% @doc Deletes an existing multi-Region cluster.
-spec delete_multi_region_cluster(aws_client:aws_client(), delete_multi_region_cluster_request()) ->
    {ok, delete_multi_region_cluster_response(), tuple()} |
    {error, any()} |
    {error, delete_multi_region_cluster_errors(), tuple()}.
delete_multi_region_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_multi_region_cluster(Client, Input, []).

-spec delete_multi_region_cluster(aws_client:aws_client(), delete_multi_region_cluster_request(), proplists:proplist()) ->
    {ok, delete_multi_region_cluster_response(), tuple()} |
    {error, any()} |
    {error, delete_multi_region_cluster_errors(), tuple()}.
delete_multi_region_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteMultiRegionCluster">>, Input, Options).

%% @doc Deletes the specified parameter group.
%%
%% You cannot delete a parameter group if it is associated with any clusters.
%% You cannot delete the default parameter groups in your account.
-spec delete_parameter_group(aws_client:aws_client(), delete_parameter_group_request()) ->
    {ok, delete_parameter_group_response(), tuple()} |
    {error, any()} |
    {error, delete_parameter_group_errors(), tuple()}.
delete_parameter_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_parameter_group(Client, Input, []).

-spec delete_parameter_group(aws_client:aws_client(), delete_parameter_group_request(), proplists:proplist()) ->
    {ok, delete_parameter_group_response(), tuple()} |
    {error, any()} |
    {error, delete_parameter_group_errors(), tuple()}.
delete_parameter_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteParameterGroup">>, Input, Options).

%% @doc Deletes an existing snapshot.
%%
%% When you receive a successful response from this operation, MemoryDB
%% immediately begins deleting the snapshot; you cannot cancel or revert this
%% operation.
-spec delete_snapshot(aws_client:aws_client(), delete_snapshot_request()) ->
    {ok, delete_snapshot_response(), tuple()} |
    {error, any()} |
    {error, delete_snapshot_errors(), tuple()}.
delete_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_snapshot(Client, Input, []).

-spec delete_snapshot(aws_client:aws_client(), delete_snapshot_request(), proplists:proplist()) ->
    {ok, delete_snapshot_response(), tuple()} |
    {error, any()} |
    {error, delete_snapshot_errors(), tuple()}.
delete_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteSnapshot">>, Input, Options).

%% @doc Deletes a subnet group.
%%
%% You cannot delete a default subnet group or one that is associated with
%% any clusters.
-spec delete_subnet_group(aws_client:aws_client(), delete_subnet_group_request()) ->
    {ok, delete_subnet_group_response(), tuple()} |
    {error, any()} |
    {error, delete_subnet_group_errors(), tuple()}.
delete_subnet_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_subnet_group(Client, Input, []).

-spec delete_subnet_group(aws_client:aws_client(), delete_subnet_group_request(), proplists:proplist()) ->
    {ok, delete_subnet_group_response(), tuple()} |
    {error, any()} |
    {error, delete_subnet_group_errors(), tuple()}.
delete_subnet_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteSubnetGroup">>, Input, Options).

%% @doc Deletes a user.
%%
%% The user will be removed from all ACLs and in turn removed from all
%% clusters.
-spec delete_user(aws_client:aws_client(), delete_user_request()) ->
    {ok, delete_user_response(), tuple()} |
    {error, any()} |
    {error, delete_user_errors(), tuple()}.
delete_user(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_user(Client, Input, []).

-spec delete_user(aws_client:aws_client(), delete_user_request(), proplists:proplist()) ->
    {ok, delete_user_response(), tuple()} |
    {error, any()} |
    {error, delete_user_errors(), tuple()}.
delete_user(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteUser">>, Input, Options).

%% @doc Returns a list of ACLs.
-spec describe_acls(aws_client:aws_client(), describe_acls_request()) ->
    {ok, describe_acls_response(), tuple()} |
    {error, any()} |
    {error, describe_acls_errors(), tuple()}.
describe_acls(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_acls(Client, Input, []).

-spec describe_acls(aws_client:aws_client(), describe_acls_request(), proplists:proplist()) ->
    {ok, describe_acls_response(), tuple()} |
    {error, any()} |
    {error, describe_acls_errors(), tuple()}.
describe_acls(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeACLs">>, Input, Options).

%% @doc Returns information about all provisioned clusters if no cluster
%% identifier is specified, or about a specific cluster if a cluster name is
%% supplied.
-spec describe_clusters(aws_client:aws_client(), describe_clusters_request()) ->
    {ok, describe_clusters_response(), tuple()} |
    {error, any()} |
    {error, describe_clusters_errors(), tuple()}.
describe_clusters(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_clusters(Client, Input, []).

-spec describe_clusters(aws_client:aws_client(), describe_clusters_request(), proplists:proplist()) ->
    {ok, describe_clusters_response(), tuple()} |
    {error, any()} |
    {error, describe_clusters_errors(), tuple()}.
describe_clusters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeClusters">>, Input, Options).

%% @doc Returns a list of the available Redis OSS engine versions.
-spec describe_engine_versions(aws_client:aws_client(), describe_engine_versions_request()) ->
    {ok, describe_engine_versions_response(), tuple()} |
    {error, any()} |
    {error, describe_engine_versions_errors(), tuple()}.
describe_engine_versions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_engine_versions(Client, Input, []).

-spec describe_engine_versions(aws_client:aws_client(), describe_engine_versions_request(), proplists:proplist()) ->
    {ok, describe_engine_versions_response(), tuple()} |
    {error, any()} |
    {error, describe_engine_versions_errors(), tuple()}.
describe_engine_versions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEngineVersions">>, Input, Options).

%% @doc Returns events related to clusters, security groups, and parameter
%% groups.
%%
%% You can obtain events specific to a particular cluster, security group, or
%% parameter group by providing the name as a parameter.
%%
%% By default, only the events occurring within the last hour are returned;
%% however, you can retrieve up to 14 days' worth of events if necessary.
-spec describe_events(aws_client:aws_client(), describe_events_request()) ->
    {ok, describe_events_response(), tuple()} |
    {error, any()} |
    {error, describe_events_errors(), tuple()}.
describe_events(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_events(Client, Input, []).

-spec describe_events(aws_client:aws_client(), describe_events_request(), proplists:proplist()) ->
    {ok, describe_events_response(), tuple()} |
    {error, any()} |
    {error, describe_events_errors(), tuple()}.
describe_events(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEvents">>, Input, Options).

%% @doc Returns details about one or more multi-Region clusters.
-spec describe_multi_region_clusters(aws_client:aws_client(), describe_multi_region_clusters_request()) ->
    {ok, describe_multi_region_clusters_response(), tuple()} |
    {error, any()} |
    {error, describe_multi_region_clusters_errors(), tuple()}.
describe_multi_region_clusters(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_multi_region_clusters(Client, Input, []).

-spec describe_multi_region_clusters(aws_client:aws_client(), describe_multi_region_clusters_request(), proplists:proplist()) ->
    {ok, describe_multi_region_clusters_response(), tuple()} |
    {error, any()} |
    {error, describe_multi_region_clusters_errors(), tuple()}.
describe_multi_region_clusters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeMultiRegionClusters">>, Input, Options).

%% @doc Returns a list of parameter group descriptions.
%%
%% If a parameter group name is specified, the list contains only the
%% descriptions for that group.
-spec describe_parameter_groups(aws_client:aws_client(), describe_parameter_groups_request()) ->
    {ok, describe_parameter_groups_response(), tuple()} |
    {error, any()} |
    {error, describe_parameter_groups_errors(), tuple()}.
describe_parameter_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_parameter_groups(Client, Input, []).

-spec describe_parameter_groups(aws_client:aws_client(), describe_parameter_groups_request(), proplists:proplist()) ->
    {ok, describe_parameter_groups_response(), tuple()} |
    {error, any()} |
    {error, describe_parameter_groups_errors(), tuple()}.
describe_parameter_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeParameterGroups">>, Input, Options).

%% @doc Returns the detailed parameter list for a particular parameter group.
-spec describe_parameters(aws_client:aws_client(), describe_parameters_request()) ->
    {ok, describe_parameters_response(), tuple()} |
    {error, any()} |
    {error, describe_parameters_errors(), tuple()}.
describe_parameters(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_parameters(Client, Input, []).

-spec describe_parameters(aws_client:aws_client(), describe_parameters_request(), proplists:proplist()) ->
    {ok, describe_parameters_response(), tuple()} |
    {error, any()} |
    {error, describe_parameters_errors(), tuple()}.
describe_parameters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeParameters">>, Input, Options).

%% @doc Returns information about reserved nodes for this account, or about a
%% specified reserved node.
-spec describe_reserved_nodes(aws_client:aws_client(), describe_reserved_nodes_request()) ->
    {ok, describe_reserved_nodes_response(), tuple()} |
    {error, any()} |
    {error, describe_reserved_nodes_errors(), tuple()}.
describe_reserved_nodes(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_reserved_nodes(Client, Input, []).

-spec describe_reserved_nodes(aws_client:aws_client(), describe_reserved_nodes_request(), proplists:proplist()) ->
    {ok, describe_reserved_nodes_response(), tuple()} |
    {error, any()} |
    {error, describe_reserved_nodes_errors(), tuple()}.
describe_reserved_nodes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeReservedNodes">>, Input, Options).

%% @doc Lists available reserved node offerings.
-spec describe_reserved_nodes_offerings(aws_client:aws_client(), describe_reserved_nodes_offerings_request()) ->
    {ok, describe_reserved_nodes_offerings_response(), tuple()} |
    {error, any()} |
    {error, describe_reserved_nodes_offerings_errors(), tuple()}.
describe_reserved_nodes_offerings(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_reserved_nodes_offerings(Client, Input, []).

-spec describe_reserved_nodes_offerings(aws_client:aws_client(), describe_reserved_nodes_offerings_request(), proplists:proplist()) ->
    {ok, describe_reserved_nodes_offerings_response(), tuple()} |
    {error, any()} |
    {error, describe_reserved_nodes_offerings_errors(), tuple()}.
describe_reserved_nodes_offerings(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeReservedNodesOfferings">>, Input, Options).

%% @doc Returns details of the service updates.
-spec describe_service_updates(aws_client:aws_client(), describe_service_updates_request()) ->
    {ok, describe_service_updates_response(), tuple()} |
    {error, any()} |
    {error, describe_service_updates_errors(), tuple()}.
describe_service_updates(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_service_updates(Client, Input, []).

-spec describe_service_updates(aws_client:aws_client(), describe_service_updates_request(), proplists:proplist()) ->
    {ok, describe_service_updates_response(), tuple()} |
    {error, any()} |
    {error, describe_service_updates_errors(), tuple()}.
describe_service_updates(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeServiceUpdates">>, Input, Options).

%% @doc Returns information about cluster snapshots.
%%
%% By default, DescribeSnapshots lists all of your snapshots; it can
%% optionally describe a single snapshot,
%% or just the snapshots associated with a particular cluster.
-spec describe_snapshots(aws_client:aws_client(), describe_snapshots_request()) ->
    {ok, describe_snapshots_response(), tuple()} |
    {error, any()} |
    {error, describe_snapshots_errors(), tuple()}.
describe_snapshots(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_snapshots(Client, Input, []).

-spec describe_snapshots(aws_client:aws_client(), describe_snapshots_request(), proplists:proplist()) ->
    {ok, describe_snapshots_response(), tuple()} |
    {error, any()} |
    {error, describe_snapshots_errors(), tuple()}.
describe_snapshots(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeSnapshots">>, Input, Options).

%% @doc Returns a list of subnet group descriptions.
%%
%% If a subnet group name is specified, the list contains only the
%% description of that group.
-spec describe_subnet_groups(aws_client:aws_client(), describe_subnet_groups_request()) ->
    {ok, describe_subnet_groups_response(), tuple()} |
    {error, any()} |
    {error, describe_subnet_groups_errors(), tuple()}.
describe_subnet_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_subnet_groups(Client, Input, []).

-spec describe_subnet_groups(aws_client:aws_client(), describe_subnet_groups_request(), proplists:proplist()) ->
    {ok, describe_subnet_groups_response(), tuple()} |
    {error, any()} |
    {error, describe_subnet_groups_errors(), tuple()}.
describe_subnet_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeSubnetGroups">>, Input, Options).

%% @doc Returns a list of users.
-spec describe_users(aws_client:aws_client(), describe_users_request()) ->
    {ok, describe_users_response(), tuple()} |
    {error, any()} |
    {error, describe_users_errors(), tuple()}.
describe_users(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_users(Client, Input, []).

-spec describe_users(aws_client:aws_client(), describe_users_request(), proplists:proplist()) ->
    {ok, describe_users_response(), tuple()} |
    {error, any()} |
    {error, describe_users_errors(), tuple()}.
describe_users(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeUsers">>, Input, Options).

%% @doc Used to failover a shard.
%%
%% This API is designed for testing the behavior of your application in case
%% of MemoryDB failover. It is not designed to be used as a production-level
%% tool for initiating
%% a failover to overcome a problem you may have with the cluster. Moreover,
%% in certain conditions such as large scale operational events, Amazon may
%% block this API.
-spec failover_shard(aws_client:aws_client(), failover_shard_request()) ->
    {ok, failover_shard_response(), tuple()} |
    {error, any()} |
    {error, failover_shard_errors(), tuple()}.
failover_shard(Client, Input)
  when is_map(Client), is_map(Input) ->
    failover_shard(Client, Input, []).

-spec failover_shard(aws_client:aws_client(), failover_shard_request(), proplists:proplist()) ->
    {ok, failover_shard_response(), tuple()} |
    {error, any()} |
    {error, failover_shard_errors(), tuple()}.
failover_shard(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"FailoverShard">>, Input, Options).

%% @doc Lists the allowed updates for a multi-Region cluster.
-spec list_allowed_multi_region_cluster_updates(aws_client:aws_client(), list_allowed_multi_region_cluster_updates_request()) ->
    {ok, list_allowed_multi_region_cluster_updates_response(), tuple()} |
    {error, any()} |
    {error, list_allowed_multi_region_cluster_updates_errors(), tuple()}.
list_allowed_multi_region_cluster_updates(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_allowed_multi_region_cluster_updates(Client, Input, []).

-spec list_allowed_multi_region_cluster_updates(aws_client:aws_client(), list_allowed_multi_region_cluster_updates_request(), proplists:proplist()) ->
    {ok, list_allowed_multi_region_cluster_updates_response(), tuple()} |
    {error, any()} |
    {error, list_allowed_multi_region_cluster_updates_errors(), tuple()}.
list_allowed_multi_region_cluster_updates(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAllowedMultiRegionClusterUpdates">>, Input, Options).

%% @doc Lists all available node types that you can scale to from your
%% cluster's current node type.
%%
%% When you use the UpdateCluster operation to scale your cluster, the value
%% of the NodeType parameter must be one of the node types returned by this
%% operation.
-spec list_allowed_node_type_updates(aws_client:aws_client(), list_allowed_node_type_updates_request()) ->
    {ok, list_allowed_node_type_updates_response(), tuple()} |
    {error, any()} |
    {error, list_allowed_node_type_updates_errors(), tuple()}.
list_allowed_node_type_updates(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_allowed_node_type_updates(Client, Input, []).

-spec list_allowed_node_type_updates(aws_client:aws_client(), list_allowed_node_type_updates_request(), proplists:proplist()) ->
    {ok, list_allowed_node_type_updates_response(), tuple()} |
    {error, any()} |
    {error, list_allowed_node_type_updates_errors(), tuple()}.
list_allowed_node_type_updates(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAllowedNodeTypeUpdates">>, Input, Options).

%% @doc Lists all tags currently on a named resource.
%%
%% A tag is a key-value pair where the key and value are case-sensitive. You
%% can use tags to categorize and track your MemoryDB resources. For more
%% information, see Tagging your MemoryDB resources:
%% https://docs.aws.amazon.com/MemoryDB/latest/devguide/Tagging-Resources.html.
%%
%% When you add or remove tags from multi region clusters, you might not
%% immediately see the latest effective tags in the ListTags API response due
%% to it being eventually consistent specifically for multi region clusters.
%% For more information, see Tagging your MemoryDB resources:
%% https://docs.aws.amazon.com/MemoryDB/latest/devguide/Tagging-Resources.html.
-spec list_tags(aws_client:aws_client(), list_tags_request()) ->
    {ok, list_tags_response(), tuple()} |
    {error, any()} |
    {error, list_tags_errors(), tuple()}.
list_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags(Client, Input, []).

-spec list_tags(aws_client:aws_client(), list_tags_request(), proplists:proplist()) ->
    {ok, list_tags_response(), tuple()} |
    {error, any()} |
    {error, list_tags_errors(), tuple()}.
list_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTags">>, Input, Options).

%% @doc Allows you to purchase a reserved node offering.
%%
%% Reserved nodes are not eligible for cancellation and are non-refundable.
-spec purchase_reserved_nodes_offering(aws_client:aws_client(), purchase_reserved_nodes_offering_request()) ->
    {ok, purchase_reserved_nodes_offering_response(), tuple()} |
    {error, any()} |
    {error, purchase_reserved_nodes_offering_errors(), tuple()}.
purchase_reserved_nodes_offering(Client, Input)
  when is_map(Client), is_map(Input) ->
    purchase_reserved_nodes_offering(Client, Input, []).

-spec purchase_reserved_nodes_offering(aws_client:aws_client(), purchase_reserved_nodes_offering_request(), proplists:proplist()) ->
    {ok, purchase_reserved_nodes_offering_response(), tuple()} |
    {error, any()} |
    {error, purchase_reserved_nodes_offering_errors(), tuple()}.
purchase_reserved_nodes_offering(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PurchaseReservedNodesOffering">>, Input, Options).

%% @doc Modifies the parameters of a parameter group to the engine or system
%% default value.
%%
%% You can reset specific parameters by submitting a list of parameter names.
%% To reset the entire parameter group, specify the AllParameters and
%% ParameterGroupName parameters.
-spec reset_parameter_group(aws_client:aws_client(), reset_parameter_group_request()) ->
    {ok, reset_parameter_group_response(), tuple()} |
    {error, any()} |
    {error, reset_parameter_group_errors(), tuple()}.
reset_parameter_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    reset_parameter_group(Client, Input, []).

-spec reset_parameter_group(aws_client:aws_client(), reset_parameter_group_request(), proplists:proplist()) ->
    {ok, reset_parameter_group_response(), tuple()} |
    {error, any()} |
    {error, reset_parameter_group_errors(), tuple()}.
reset_parameter_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ResetParameterGroup">>, Input, Options).

%% @doc Use this operation to add tags to a resource.
%%
%% A tag is a key-value pair where the key and value are case-sensitive. You
%% can use tags to categorize and track all your MemoryDB resources. For more
%% information, see Tagging your MemoryDB resources:
%% https://docs.aws.amazon.com/MemoryDB/latest/devguide/Tagging-Resources.html.
%%
%% When you add tags to multi region clusters, you might not immediately see
%% the latest effective tags in the ListTags API response due to it being
%% eventually consistent specifically for multi region clusters. For more
%% information, see Tagging your MemoryDB resources:
%% https://docs.aws.amazon.com/MemoryDB/latest/devguide/Tagging-Resources.html.
%%
%% You can specify cost-allocation tags for your MemoryDB resources, Amazon
%% generates a cost allocation report as a comma-separated value
%% (CSV) file with your usage and costs aggregated by your tags. You can
%% apply tags that represent business categories
%% (such as cost centers, application names, or owners) to organize your
%% costs across multiple services.
%%
%% For more information, see Using Cost Allocation Tags:
%% https://docs.aws.amazon.com/MemoryDB/latest/devguide/tagging.html.
-spec tag_resource(aws_client:aws_client(), tag_resource_request()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).

-spec tag_resource(aws_client:aws_client(), tag_resource_request(), proplists:proplist()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Use this operation to remove tags on a resource.
%%
%% A tag is a key-value pair where the key and value are case-sensitive. You
%% can use tags to categorize and track all your MemoryDB resources. For more
%% information, see Tagging your MemoryDB resources:
%% https://docs.aws.amazon.com/MemoryDB/latest/devguide/Tagging-Resources.html.
%%
%% When you remove tags from multi region clusters, you might not immediately
%% see the latest effective tags in the ListTags API response due to it being
%% eventually consistent specifically for multi region clusters. For more
%% information, see Tagging your MemoryDB resources:
%% https://docs.aws.amazon.com/MemoryDB/latest/devguide/Tagging-Resources.html.
%%
%% You can specify cost-allocation tags for your MemoryDB resources, Amazon
%% generates a cost allocation report as a comma-separated value
%% (CSV) file with your usage and costs aggregated by your tags. You can
%% apply tags that represent business categories
%% (such as cost centers, application names, or owners) to organize your
%% costs across multiple services.
%%
%% For more information, see Using Cost Allocation Tags:
%% https://docs.aws.amazon.com/MemoryDB/latest/devguide/tagging.html.
-spec untag_resource(aws_client:aws_client(), untag_resource_request()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).

-spec untag_resource(aws_client:aws_client(), untag_resource_request(), proplists:proplist()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc Changes the list of users that belong to the Access Control List.
-spec update_acl(aws_client:aws_client(), update_acl_request()) ->
    {ok, update_acl_response(), tuple()} |
    {error, any()} |
    {error, update_acl_errors(), tuple()}.
update_acl(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_acl(Client, Input, []).

-spec update_acl(aws_client:aws_client(), update_acl_request(), proplists:proplist()) ->
    {ok, update_acl_response(), tuple()} |
    {error, any()} |
    {error, update_acl_errors(), tuple()}.
update_acl(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateACL">>, Input, Options).

%% @doc Modifies the settings for a cluster.
%%
%% You can use this operation to change one or more cluster configuration
%% settings by specifying the settings and the new values.
-spec update_cluster(aws_client:aws_client(), update_cluster_request()) ->
    {ok, update_cluster_response(), tuple()} |
    {error, any()} |
    {error, update_cluster_errors(), tuple()}.
update_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_cluster(Client, Input, []).

-spec update_cluster(aws_client:aws_client(), update_cluster_request(), proplists:proplist()) ->
    {ok, update_cluster_response(), tuple()} |
    {error, any()} |
    {error, update_cluster_errors(), tuple()}.
update_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateCluster">>, Input, Options).

%% @doc Updates the configuration of an existing multi-Region cluster.
-spec update_multi_region_cluster(aws_client:aws_client(), update_multi_region_cluster_request()) ->
    {ok, update_multi_region_cluster_response(), tuple()} |
    {error, any()} |
    {error, update_multi_region_cluster_errors(), tuple()}.
update_multi_region_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_multi_region_cluster(Client, Input, []).

-spec update_multi_region_cluster(aws_client:aws_client(), update_multi_region_cluster_request(), proplists:proplist()) ->
    {ok, update_multi_region_cluster_response(), tuple()} |
    {error, any()} |
    {error, update_multi_region_cluster_errors(), tuple()}.
update_multi_region_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateMultiRegionCluster">>, Input, Options).

%% @doc Updates the parameters of a parameter group.
%%
%% You can modify up to 20 parameters in a single request by submitting a
%% list parameter name and value pairs.
-spec update_parameter_group(aws_client:aws_client(), update_parameter_group_request()) ->
    {ok, update_parameter_group_response(), tuple()} |
    {error, any()} |
    {error, update_parameter_group_errors(), tuple()}.
update_parameter_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_parameter_group(Client, Input, []).

-spec update_parameter_group(aws_client:aws_client(), update_parameter_group_request(), proplists:proplist()) ->
    {ok, update_parameter_group_response(), tuple()} |
    {error, any()} |
    {error, update_parameter_group_errors(), tuple()}.
update_parameter_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateParameterGroup">>, Input, Options).

%% @doc Updates a subnet group.
%%
%% For more information, see Updating a subnet group:
%% https://docs.aws.amazon.com/MemoryDB/latest/devguide/ubnetGroups.Modifying.html
-spec update_subnet_group(aws_client:aws_client(), update_subnet_group_request()) ->
    {ok, update_subnet_group_response(), tuple()} |
    {error, any()} |
    {error, update_subnet_group_errors(), tuple()}.
update_subnet_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_subnet_group(Client, Input, []).

-spec update_subnet_group(aws_client:aws_client(), update_subnet_group_request(), proplists:proplist()) ->
    {ok, update_subnet_group_response(), tuple()} |
    {error, any()} |
    {error, update_subnet_group_errors(), tuple()}.
update_subnet_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateSubnetGroup">>, Input, Options).

%% @doc Changes user password(s) and/or access string.
-spec update_user(aws_client:aws_client(), update_user_request()) ->
    {ok, update_user_response(), tuple()} |
    {error, any()} |
    {error, update_user_errors(), tuple()}.
update_user(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_user(Client, Input, []).

-spec update_user(aws_client:aws_client(), update_user_request(), proplists:proplist()) ->
    {ok, update_user_response(), tuple()} |
    {error, any()} |
    {error, update_user_errors(), tuple()}.
update_user(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateUser">>, Input, Options).

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
    Client1 = Client#{service => <<"memorydb">>},
    Host = build_host(<<"memory-db">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"AmazonMemoryDB.", Action/binary>>}
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
