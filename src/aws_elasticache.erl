%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc <fullname>Amazon ElastiCache</fullname>
%%
%% Amazon ElastiCache is a web service that makes it easier to set up,
%% operate, and scale a distributed cache in the cloud.
%%
%% With ElastiCache, customers get all of the benefits of a high-performance,
%% in-memory cache with less of the administrative burden involved in
%% launching and managing a distributed cache. The service makes setup,
%% scaling, and cluster failure handling much simpler than in a self-managed
%% cache deployment.
%%
%% In addition, through integration with Amazon CloudWatch, customers get
%% enhanced visibility into the key performance statistics associated with
%% their cache and can receive alarms if a part of their cache runs hot.
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
         create_snapshot/2,
         create_snapshot/3,
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
         delete_snapshot/2,
         delete_snapshot/3,
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
         describe_service_updates/2,
         describe_service_updates/3,
         describe_snapshots/2,
         describe_snapshots/3,
         describe_update_actions/2,
         describe_update_actions/3,
         disassociate_global_replication_group/2,
         disassociate_global_replication_group/3,
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
         test_failover/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Adds up to 50 cost allocation tags to the named resource. A cost
%% allocation tag is a key-value pair where the key and value are
%% case-sensitive. You can use cost allocation tags to categorize and track
%% your AWS costs.
%%
%% When you apply tags to your ElastiCache resources, AWS generates a cost
%% allocation report as a comma-separated value (CSV) file with your usage
%% and costs aggregated by your tags. You can apply tags that represent
%% business categories (such as cost centers, application names, or owners)
%% to organize your costs across multiple services. For more information, see
%% <a
%% href="https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Tagging.html">Using
%% Cost Allocation Tags in Amazon ElastiCache</a> in the <i>ElastiCache User
%% Guide</i>.
add_tags_to_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_tags_to_resource(Client, Input, []).
add_tags_to_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddTagsToResource">>, Input, Options).

%% @doc Allows network ingress to a cache security group. Applications using
%% ElastiCache must be running on Amazon EC2, and Amazon EC2 security groups
%% are used as the authorization mechanism.
%%
%% <note> You cannot authorize ingress from an Amazon EC2 security group in
%% one region to an ElastiCache cluster in another region.
%%
%% </note>
authorize_cache_security_group_ingress(Client, Input)
  when is_map(Client), is_map(Input) ->
    authorize_cache_security_group_ingress(Client, Input, []).
authorize_cache_security_group_ingress(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AuthorizeCacheSecurityGroupIngress">>, Input, Options).

%% @doc Apply the service update. For more information on service updates and
%% applying them, see <a
%% href="https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/applying-updates.html">Applying
%% Service Updates</a>.
batch_apply_update_action(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_apply_update_action(Client, Input, []).
batch_apply_update_action(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchApplyUpdateAction">>, Input, Options).

%% @doc Stop the service update. For more information on service updates and
%% stopping them, see <a
%% href="https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/stopping-self-service-updates.html">Stopping
%% Service Updates</a>.
batch_stop_update_action(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_stop_update_action(Client, Input, []).
batch_stop_update_action(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchStopUpdateAction">>, Input, Options).

%% @doc Complete the migration of data.
complete_migration(Client, Input)
  when is_map(Client), is_map(Input) ->
    complete_migration(Client, Input, []).
complete_migration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CompleteMigration">>, Input, Options).

%% @doc Makes a copy of an existing snapshot.
%%
%% <note> This operation is valid for Redis only.
%%
%% </note> <important> Users or groups that have permissions to use the
%% <code>CopySnapshot</code> operation can create their own Amazon S3 buckets
%% and copy snapshots to it. To control access to your snapshots, use an IAM
%% policy to control who has the ability to use the <code>CopySnapshot</code>
%% operation. For more information about using IAM to control the use of
%% ElastiCache operations, see <a
%% href="https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/backups-exporting.html">Exporting
%% Snapshots</a> and <a
%% href="https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/IAM.html">Authentication
%% &amp; Access Control</a>.
%%
%% </important> You could receive the following error messages.
%%
%% <p class="title"> <b>Error Messages</b>
%%
%% <ul> <li> <b>Error Message:</b> The S3 bucket %s is outside of the region.
%%
%% <b>Solution:</b> Create an Amazon S3 bucket in the same region as your
%% snapshot. For more information, see <a
%% href="https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/backups-exporting.html#backups-exporting-create-s3-bucket">Step
%% 1: Create an Amazon S3 Bucket</a> in the ElastiCache User Guide.
%%
%% </li> <li> <b>Error Message:</b> The S3 bucket %s does not exist.
%%
%% <b>Solution:</b> Create an Amazon S3 bucket in the same region as your
%% snapshot. For more information, see <a
%% href="https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/backups-exporting.html#backups-exporting-create-s3-bucket">Step
%% 1: Create an Amazon S3 Bucket</a> in the ElastiCache User Guide.
%%
%% </li> <li> <b>Error Message:</b> The S3 bucket %s is not owned by the
%% authenticated user.
%%
%% <b>Solution:</b> Create an Amazon S3 bucket in the same region as your
%% snapshot. For more information, see <a
%% href="https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/backups-exporting.html#backups-exporting-create-s3-bucket">Step
%% 1: Create an Amazon S3 Bucket</a> in the ElastiCache User Guide.
%%
%% </li> <li> <b>Error Message:</b> The authenticated user does not have
%% sufficient permissions to perform the desired activity.
%%
%% <b>Solution:</b> Contact your system administrator to get the needed
%% permissions.
%%
%% </li> <li> <b>Error Message:</b> The S3 bucket %s already contains an
%% object with key %s.
%%
%% <b>Solution:</b> Give the <code>TargetSnapshotName</code> a new and unique
%% value. If exporting a snapshot, you could alternatively create a new
%% Amazon S3 bucket and use this same value for
%% <code>TargetSnapshotName</code>.
%%
%% </li> <li> <b>Error Message: </b> ElastiCache has not been granted READ
%% permissions %s on the S3 Bucket.
%%
%% <b>Solution:</b> Add List and Read permissions on the bucket. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/backups-exporting.html#backups-exporting-grant-access">Step
%% 2: Grant ElastiCache Access to Your Amazon S3 Bucket</a> in the
%% ElastiCache User Guide.
%%
%% </li> <li> <b>Error Message: </b> ElastiCache has not been granted WRITE
%% permissions %s on the S3 Bucket.
%%
%% <b>Solution:</b> Add Upload/Delete permissions on the bucket. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/backups-exporting.html#backups-exporting-grant-access">Step
%% 2: Grant ElastiCache Access to Your Amazon S3 Bucket</a> in the
%% ElastiCache User Guide.
%%
%% </li> <li> <b>Error Message: </b> ElastiCache has not been granted
%% READ_ACP permissions %s on the S3 Bucket.
%%
%% <b>Solution:</b> Add View Permissions on the bucket. For more information,
%% see <a
%% href="https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/backups-exporting.html#backups-exporting-grant-access">Step
%% 2: Grant ElastiCache Access to Your Amazon S3 Bucket</a> in the
%% ElastiCache User Guide.
%%
%% </li> </ul>
copy_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    copy_snapshot(Client, Input, []).
copy_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CopySnapshot">>, Input, Options).

%% @doc Creates a cluster. All nodes in the cluster run the same
%% protocol-compliant cache engine software, either Memcached or Redis.
%%
%% This operation is not supported for Redis (cluster mode enabled) clusters.
create_cache_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_cache_cluster(Client, Input, []).
create_cache_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateCacheCluster">>, Input, Options).

%% @doc Creates a new Amazon ElastiCache cache parameter group. An
%% ElastiCache cache parameter group is a collection of parameters and their
%% values that are applied to all of the nodes in any cluster or replication
%% group using the CacheParameterGroup.
%%
%% A newly created CacheParameterGroup is an exact duplicate of the default
%% parameter group for the CacheParameterGroupFamily. To customize the newly
%% created CacheParameterGroup you can change the values of specific
%% parameters. For more information, see:
%%
%% <ul> <li> <a
%% href="https://docs.aws.amazon.com/AmazonElastiCache/latest/APIReference/API_ModifyCacheParameterGroup.html">ModifyCacheParameterGroup</a>
%% in the ElastiCache API Reference.
%%
%% </li> <li> <a
%% href="https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/ParameterGroups.html">Parameters
%% and Parameter Groups</a> in the ElastiCache User Guide.
%%
%% </li> </ul>
create_cache_parameter_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_cache_parameter_group(Client, Input, []).
create_cache_parameter_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateCacheParameterGroup">>, Input, Options).

%% @doc Creates a new cache security group. Use a cache security group to
%% control access to one or more clusters.
%%
%% Cache security groups are only used when you are creating a cluster
%% outside of an Amazon Virtual Private Cloud (Amazon VPC). If you are
%% creating a cluster inside of a VPC, use a cache subnet group instead. For
%% more information, see <a
%% href="https://docs.aws.amazon.com/AmazonElastiCache/latest/APIReference/API_CreateCacheSubnetGroup.html">CreateCacheSubnetGroup</a>.
create_cache_security_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_cache_security_group(Client, Input, []).
create_cache_security_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateCacheSecurityGroup">>, Input, Options).

%% @doc Creates a new cache subnet group.
%%
%% Use this parameter only when you are creating a cluster in an Amazon
%% Virtual Private Cloud (Amazon VPC).
create_cache_subnet_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_cache_subnet_group(Client, Input, []).
create_cache_subnet_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateCacheSubnetGroup">>, Input, Options).

%% @doc Global Datastore for Redis offers fully managed, fast, reliable and
%% secure cross-region replication. Using Global Datastore for Redis, you can
%% create cross-region read replica clusters for ElastiCache for Redis to
%% enable low-latency reads and disaster recovery across regions. For more
%% information, see <a
%% href="/AmazonElastiCache/latest/red-ug/Redis-Global-Clusters.html">Replication
%% Across Regions Using Global Datastore</a>.
%%
%% <ul> <li> The <b>GlobalReplicationGroupIdSuffix</b> is the name of the
%% Global Datastore.
%%
%% </li> <li> The <b>PrimaryReplicationGroupId</b> represents the name of the
%% primary cluster that accepts writes and will replicate updates to the
%% secondary cluster.
%%
%% </li> </ul>
create_global_replication_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_global_replication_group(Client, Input, []).
create_global_replication_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateGlobalReplicationGroup">>, Input, Options).

%% @doc Creates a Redis (cluster mode disabled) or a Redis (cluster mode
%% enabled) replication group.
%%
%% This API can be used to create a standalone regional replication group or
%% a secondary replication group associated with a Global Datastore.
%%
%% A Redis (cluster mode disabled) replication group is a collection of
%% clusters, where one of the clusters is a read/write primary and the others
%% are read-only replicas. Writes to the primary are asynchronously
%% propagated to the replicas.
%%
%% A Redis (cluster mode enabled) replication group is a collection of 1 to
%% 90 node groups (shards). Each node group (shard) has one read/write
%% primary node and up to 5 read-only replica nodes. Writes to the primary
%% are asynchronously propagated to the replicas. Redis (cluster mode
%% enabled) replication groups partition the data across node groups
%% (shards).
%%
%% When a Redis (cluster mode disabled) replication group has been
%% successfully created, you can add one or more read replicas to it, up to a
%% total of 5 read replicas. If you need to increase or decrease the number
%% of node groups (console: shards), you can avail yourself of ElastiCache
%% for Redis' scaling. For more information, see <a
%% href="https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Scaling.html">Scaling
%% ElastiCache for Redis Clusters</a> in the <i>ElastiCache User Guide</i>.
%%
%% <note> This operation is valid for Redis only.
%%
%% </note>
create_replication_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_replication_group(Client, Input, []).
create_replication_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateReplicationGroup">>, Input, Options).

%% @doc Creates a copy of an entire cluster or replication group at a
%% specific moment in time.
%%
%% <note> This operation is valid for Redis only.
%%
%% </note>
create_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_snapshot(Client, Input, []).
create_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateSnapshot">>, Input, Options).

%% @doc Decreases the number of node groups in a Global Datastore
decrease_node_groups_in_global_replication_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    decrease_node_groups_in_global_replication_group(Client, Input, []).
decrease_node_groups_in_global_replication_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DecreaseNodeGroupsInGlobalReplicationGroup">>, Input, Options).

%% @doc Dynamically decreases the number of replicas in a Redis (cluster mode
%% disabled) replication group or the number of replica nodes in one or more
%% node groups (shards) of a Redis (cluster mode enabled) replication group.
%% This operation is performed with no cluster down time.
decrease_replica_count(Client, Input)
  when is_map(Client), is_map(Input) ->
    decrease_replica_count(Client, Input, []).
decrease_replica_count(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DecreaseReplicaCount">>, Input, Options).

%% @doc Deletes a previously provisioned cluster.
%% <code>DeleteCacheCluster</code> deletes all associated cache nodes, node
%% endpoints and the cluster itself. When you receive a successful response
%% from this operation, Amazon ElastiCache immediately begins deleting the
%% cluster; you cannot cancel or revert this operation.
%%
%% This operation is not valid for:
%%
%% <ul> <li> Redis (cluster mode enabled) clusters
%%
%% </li> <li> A cluster that is the last read replica of a replication group
%%
%% </li> <li> A node group (shard) that has Multi-AZ mode enabled
%%
%% </li> <li> A cluster from a Redis (cluster mode enabled) replication group
%%
%% </li> <li> A cluster that is not in the <code>available</code> state
%%
%% </li> </ul>
delete_cache_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_cache_cluster(Client, Input, []).
delete_cache_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteCacheCluster">>, Input, Options).

%% @doc Deletes the specified cache parameter group. You cannot delete a
%% cache parameter group if it is associated with any cache clusters.
delete_cache_parameter_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_cache_parameter_group(Client, Input, []).
delete_cache_parameter_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteCacheParameterGroup">>, Input, Options).

%% @doc Deletes a cache security group.
%%
%% <note> You cannot delete a cache security group if it is associated with
%% any clusters.
%%
%% </note>
delete_cache_security_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_cache_security_group(Client, Input, []).
delete_cache_security_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteCacheSecurityGroup">>, Input, Options).

%% @doc Deletes a cache subnet group.
%%
%% <note> You cannot delete a cache subnet group if it is associated with any
%% clusters.
%%
%% </note>
delete_cache_subnet_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_cache_subnet_group(Client, Input, []).
delete_cache_subnet_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteCacheSubnetGroup">>, Input, Options).

%% @doc Deleting a Global Datastore is a two-step process:
%%
%% <ul> <li> First, you must <a>DisassociateGlobalReplicationGroup</a> to
%% remove the secondary clusters in the Global Datastore.
%%
%% </li> <li> Once the Global Datastore contains only the primary cluster,
%% you can use DeleteGlobalReplicationGroup API to delete the Global
%% Datastore while retainining the primary cluster using Retain…= true.
%%
%% </li> </ul> Since the Global Datastore has only a primary cluster, you can
%% delete the Global Datastore while retaining the primary by setting
%% <code>RetainPrimaryCluster=true</code>.
%%
%% When you receive a successful response from this operation, Amazon
%% ElastiCache immediately begins deleting the selected resources; you cannot
%% cancel or revert this operation.
delete_global_replication_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_global_replication_group(Client, Input, []).
delete_global_replication_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteGlobalReplicationGroup">>, Input, Options).

%% @doc Deletes an existing replication group. By default, this operation
%% deletes the entire replication group, including the primary/primaries and
%% all of the read replicas. If the replication group has only one primary,
%% you can optionally delete only the read replicas, while retaining the
%% primary by setting <code>RetainPrimaryCluster=true</code>.
%%
%% When you receive a successful response from this operation, Amazon
%% ElastiCache immediately begins deleting the selected resources; you cannot
%% cancel or revert this operation.
%%
%% <note> This operation is valid for Redis only.
%%
%% </note>
delete_replication_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_replication_group(Client, Input, []).
delete_replication_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteReplicationGroup">>, Input, Options).

%% @doc Deletes an existing snapshot. When you receive a successful response
%% from this operation, ElastiCache immediately begins deleting the snapshot;
%% you cannot cancel or revert this operation.
%%
%% <note> This operation is valid for Redis only.
%%
%% </note>
delete_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_snapshot(Client, Input, []).
delete_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteSnapshot">>, Input, Options).

%% @doc Returns information about all provisioned clusters if no cluster
%% identifier is specified, or about a specific cache cluster if a cluster
%% identifier is supplied.
%%
%% By default, abbreviated information about the clusters is returned. You
%% can use the optional <i>ShowCacheNodeInfo</i> flag to retrieve detailed
%% information about the cache nodes associated with the clusters. These
%% details include the DNS address and port for the cache node endpoint.
%%
%% If the cluster is in the <i>creating</i> state, only cluster-level
%% information is displayed until all of the nodes are successfully
%% provisioned.
%%
%% If the cluster is in the <i>deleting</i> state, only cluster-level
%% information is displayed.
%%
%% If cache nodes are currently being added to the cluster, node endpoint
%% information and creation time for the additional nodes are not displayed
%% until they are completely provisioned. When the cluster state is
%% <i>available</i>, the cluster is ready for use.
%%
%% If cache nodes are currently being removed from the cluster, no endpoint
%% information for the removed nodes is displayed.
describe_cache_clusters(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_cache_clusters(Client, Input, []).
describe_cache_clusters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeCacheClusters">>, Input, Options).

%% @doc Returns a list of the available cache engines and their versions.
describe_cache_engine_versions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_cache_engine_versions(Client, Input, []).
describe_cache_engine_versions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeCacheEngineVersions">>, Input, Options).

%% @doc Returns a list of cache parameter group descriptions. If a cache
%% parameter group name is specified, the list contains only the descriptions
%% for that group.
describe_cache_parameter_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_cache_parameter_groups(Client, Input, []).
describe_cache_parameter_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeCacheParameterGroups">>, Input, Options).

%% @doc Returns the detailed parameter list for a particular cache parameter
%% group.
describe_cache_parameters(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_cache_parameters(Client, Input, []).
describe_cache_parameters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeCacheParameters">>, Input, Options).

%% @doc Returns a list of cache security group descriptions. If a cache
%% security group name is specified, the list contains only the description
%% of that group. This applicable only when you have ElastiCache in Classic
%% setup
describe_cache_security_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_cache_security_groups(Client, Input, []).
describe_cache_security_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeCacheSecurityGroups">>, Input, Options).

%% @doc Returns a list of cache subnet group descriptions. If a subnet group
%% name is specified, the list contains only the description of that group.
%% This is applicable only when you have ElastiCache in VPC setup. All
%% ElastiCache clusters now launch in VPC by default.
describe_cache_subnet_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_cache_subnet_groups(Client, Input, []).
describe_cache_subnet_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeCacheSubnetGroups">>, Input, Options).

%% @doc Returns the default engine and system parameter information for the
%% specified cache engine.
describe_engine_default_parameters(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_engine_default_parameters(Client, Input, []).
describe_engine_default_parameters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEngineDefaultParameters">>, Input, Options).

%% @doc Returns events related to clusters, cache security groups, and cache
%% parameter groups. You can obtain events specific to a particular cluster,
%% cache security group, or cache parameter group by providing the name as a
%% parameter.
%%
%% By default, only the events occurring within the last hour are returned;
%% however, you can retrieve up to 14 days' worth of events if necessary.
describe_events(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_events(Client, Input, []).
describe_events(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEvents">>, Input, Options).

%% @doc Returns information about a particular global replication group. If
%% no identifier is specified, returns information about all Global
%% Datastores.
describe_global_replication_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_global_replication_groups(Client, Input, []).
describe_global_replication_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeGlobalReplicationGroups">>, Input, Options).

%% @doc Returns information about a particular replication group. If no
%% identifier is specified, <code>DescribeReplicationGroups</code> returns
%% information about all replication groups.
%%
%% <note> This operation is valid for Redis only.
%%
%% </note>
describe_replication_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_replication_groups(Client, Input, []).
describe_replication_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeReplicationGroups">>, Input, Options).

%% @doc Returns information about reserved cache nodes for this account, or
%% about a specified reserved cache node.
describe_reserved_cache_nodes(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_reserved_cache_nodes(Client, Input, []).
describe_reserved_cache_nodes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeReservedCacheNodes">>, Input, Options).

%% @doc Lists available reserved cache node offerings.
describe_reserved_cache_nodes_offerings(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_reserved_cache_nodes_offerings(Client, Input, []).
describe_reserved_cache_nodes_offerings(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeReservedCacheNodesOfferings">>, Input, Options).

%% @doc Returns details of the service updates
describe_service_updates(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_service_updates(Client, Input, []).
describe_service_updates(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeServiceUpdates">>, Input, Options).

%% @doc Returns information about cluster or replication group snapshots. By
%% default, <code>DescribeSnapshots</code> lists all of your snapshots; it
%% can optionally describe a single snapshot, or just the snapshots
%% associated with a particular cache cluster.
%%
%% <note> This operation is valid for Redis only.
%%
%% </note>
describe_snapshots(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_snapshots(Client, Input, []).
describe_snapshots(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeSnapshots">>, Input, Options).

%% @doc Returns details of the update actions
describe_update_actions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_update_actions(Client, Input, []).
describe_update_actions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeUpdateActions">>, Input, Options).

%% @doc Remove a secondary cluster from the Global Datastore using the Global
%% Datastore name. The secondary cluster will no longer receive updates from
%% the primary cluster, but will remain as a standalone cluster in that AWS
%% region.
disassociate_global_replication_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_global_replication_group(Client, Input, []).
disassociate_global_replication_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateGlobalReplicationGroup">>, Input, Options).

%% @doc Used to failover the primary region to a selected secondary region.
%% The selected secondary region will become primary, and all other clusters
%% will become secondary.
failover_global_replication_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    failover_global_replication_group(Client, Input, []).
failover_global_replication_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"FailoverGlobalReplicationGroup">>, Input, Options).

%% @doc Increase the number of node groups in the Global Datastore
increase_node_groups_in_global_replication_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    increase_node_groups_in_global_replication_group(Client, Input, []).
increase_node_groups_in_global_replication_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"IncreaseNodeGroupsInGlobalReplicationGroup">>, Input, Options).

%% @doc Dynamically increases the number of replics in a Redis (cluster mode
%% disabled) replication group or the number of replica nodes in one or more
%% node groups (shards) of a Redis (cluster mode enabled) replication group.
%% This operation is performed with no cluster down time.
increase_replica_count(Client, Input)
  when is_map(Client), is_map(Input) ->
    increase_replica_count(Client, Input, []).
increase_replica_count(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"IncreaseReplicaCount">>, Input, Options).

%% @doc Lists all available node types that you can scale your Redis
%% cluster's or replication group's current node type.
%%
%% When you use the <code>ModifyCacheCluster</code> or
%% <code>ModifyReplicationGroup</code> operations to scale your cluster or
%% replication group, the value of the <code>CacheNodeType</code> parameter
%% must be one of the node types returned by this operation.
list_allowed_node_type_modifications(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_allowed_node_type_modifications(Client, Input, []).
list_allowed_node_type_modifications(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAllowedNodeTypeModifications">>, Input, Options).

%% @doc Lists all cost allocation tags currently on the named resource. A
%% <code>cost allocation tag</code> is a key-value pair where the key is
%% case-sensitive and the value is optional. You can use cost allocation tags
%% to categorize and track your AWS costs.
%%
%% If the cluster is not in the <i>available</i> state,
%% <code>ListTagsForResource</code> returns an error.
%%
%% You can have a maximum of 50 cost allocation tags on an ElastiCache
%% resource. For more information, see <a
%% href="https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Tagging.html">Monitoring
%% Costs with Tags</a>.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Modifies the settings for a cluster. You can use this operation to
%% change one or more cluster configuration parameters by specifying the
%% parameters and the new values.
modify_cache_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_cache_cluster(Client, Input, []).
modify_cache_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyCacheCluster">>, Input, Options).

%% @doc Modifies the parameters of a cache parameter group. You can modify up
%% to 20 parameters in a single request by submitting a list parameter name
%% and value pairs.
modify_cache_parameter_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_cache_parameter_group(Client, Input, []).
modify_cache_parameter_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyCacheParameterGroup">>, Input, Options).

%% @doc Modifies an existing cache subnet group.
modify_cache_subnet_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_cache_subnet_group(Client, Input, []).
modify_cache_subnet_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyCacheSubnetGroup">>, Input, Options).

%% @doc Modifies the settings for a Global Datastore.
modify_global_replication_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_global_replication_group(Client, Input, []).
modify_global_replication_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyGlobalReplicationGroup">>, Input, Options).

%% @doc Modifies the settings for a replication group.
%%
%% <ul> <li> <a
%% href="https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/scaling-redis-cluster-mode-enabled.html">Scaling
%% for Amazon ElastiCache for Redis (cluster mode enabled)</a> in the
%% ElastiCache User Guide
%%
%% </li> <li> <a
%% href="https://docs.aws.amazon.com/AmazonElastiCache/latest/APIReference/API_ModifyReplicationGroupShardConfiguration.html">ModifyReplicationGroupShardConfiguration</a>
%% in the ElastiCache API Reference
%%
%% </li> </ul> <note> This operation is valid for Redis only.
%%
%% </note>
modify_replication_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_replication_group(Client, Input, []).
modify_replication_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyReplicationGroup">>, Input, Options).

%% @doc Modifies a replication group's shards (node groups) by allowing you
%% to add shards, remove shards, or rebalance the keyspaces among exisiting
%% shards.
modify_replication_group_shard_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_replication_group_shard_configuration(Client, Input, []).
modify_replication_group_shard_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyReplicationGroupShardConfiguration">>, Input, Options).

%% @doc Allows you to purchase a reserved cache node offering.
purchase_reserved_cache_nodes_offering(Client, Input)
  when is_map(Client), is_map(Input) ->
    purchase_reserved_cache_nodes_offering(Client, Input, []).
purchase_reserved_cache_nodes_offering(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PurchaseReservedCacheNodesOffering">>, Input, Options).

%% @doc Redistribute slots to ensure uniform distribution across existing
%% shards in the cluster.
rebalance_slots_in_global_replication_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    rebalance_slots_in_global_replication_group(Client, Input, []).
rebalance_slots_in_global_replication_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RebalanceSlotsInGlobalReplicationGroup">>, Input, Options).

%% @doc Reboots some, or all, of the cache nodes within a provisioned
%% cluster. This operation applies any modified cache parameter groups to the
%% cluster. The reboot operation takes place as soon as possible, and results
%% in a momentary outage to the cluster. During the reboot, the cluster
%% status is set to REBOOTING.
%%
%% The reboot causes the contents of the cache (for each cache node being
%% rebooted) to be lost.
%%
%% When the reboot is complete, a cluster event is created.
%%
%% Rebooting a cluster is currently supported on Memcached and Redis (cluster
%% mode disabled) clusters. Rebooting is not supported on Redis (cluster mode
%% enabled) clusters.
%%
%% If you make changes to parameters that require a Redis (cluster mode
%% enabled) cluster reboot for the changes to be applied, see <a
%% href="http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Clusters.Rebooting.html">Rebooting
%% a Cluster</a> for an alternate process.
reboot_cache_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    reboot_cache_cluster(Client, Input, []).
reboot_cache_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RebootCacheCluster">>, Input, Options).

%% @doc Removes the tags identified by the <code>TagKeys</code> list from the
%% named resource.
remove_tags_from_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    remove_tags_from_resource(Client, Input, []).
remove_tags_from_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RemoveTagsFromResource">>, Input, Options).

%% @doc Modifies the parameters of a cache parameter group to the engine or
%% system default value. You can reset specific parameters by submitting a
%% list of parameter names. To reset the entire cache parameter group,
%% specify the <code>ResetAllParameters</code> and
%% <code>CacheParameterGroupName</code> parameters.
reset_cache_parameter_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    reset_cache_parameter_group(Client, Input, []).
reset_cache_parameter_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ResetCacheParameterGroup">>, Input, Options).

%% @doc Revokes ingress from a cache security group. Use this operation to
%% disallow access from an Amazon EC2 security group that had been previously
%% authorized.
revoke_cache_security_group_ingress(Client, Input)
  when is_map(Client), is_map(Input) ->
    revoke_cache_security_group_ingress(Client, Input, []).
revoke_cache_security_group_ingress(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RevokeCacheSecurityGroupIngress">>, Input, Options).

%% @doc Start the migration of data.
start_migration(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_migration(Client, Input, []).
start_migration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartMigration">>, Input, Options).

%% @doc Represents the input of a <code>TestFailover</code> operation which
%% test automatic failover on a specified node group (called shard in the
%% console) in a replication group (called cluster in the console).
%%
%% <p class="title"> <b>Note the following</b>
%%
%% <ul> <li> A customer can use this operation to test automatic failover on
%% up to 5 shards (called node groups in the ElastiCache API and AWS CLI) in
%% any rolling 24-hour period.
%%
%% </li> <li> If calling this operation on shards in different clusters
%% (called replication groups in the API and CLI), the calls can be made
%% concurrently.
%%
%% </li> <li> If calling this operation multiple times on different shards in
%% the same Redis (cluster mode enabled) replication group, the first node
%% replacement must complete before a subsequent call can be made.
%%
%% </li> <li> To determine whether the node replacement is complete you can
%% check Events using the Amazon ElastiCache console, the AWS CLI, or the
%% ElastiCache API. Look for the following automatic failover related events,
%% listed here in order of occurrance:
%%
%% <ol> <li> Replication group message: <code>Test Failover API called for
%% node group &lt;node-group-id&gt;</code>
%%
%% </li> <li> Cache cluster message: <code>Failover from master node
%% &lt;primary-node-id&gt; to replica node &lt;node-id&gt; completed</code>
%%
%% </li> <li> Replication group message: <code>Failover from master node
%% &lt;primary-node-id&gt; to replica node &lt;node-id&gt; completed</code>
%%
%% </li> <li> Cache cluster message: <code>Recovering cache nodes
%% &lt;node-id&gt;</code>
%%
%% </li> <li> Cache cluster message: <code>Finished recovery for cache nodes
%% &lt;node-id&gt;</code>
%%
%% </li> </ol> For more information see:
%%
%% <ul> <li> <a
%% href="https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/ECEvents.Viewing.html">Viewing
%% ElastiCache Events</a> in the <i>ElastiCache User Guide</i>
%%
%% </li> <li> <a
%% href="https://docs.aws.amazon.com/AmazonElastiCache/latest/APIReference/API_DescribeEvents.html">DescribeEvents</a>
%% in the ElastiCache API Reference
%%
%% </li> </ul> </li> </ul> Also see, <a
%% href="https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/AutoFailover.html#auto-failover-test">Testing
%% Multi-AZ </a> in the <i>ElastiCache User Guide</i>.
test_failover(Client, Input)
  when is_map(Client), is_map(Input) ->
    test_failover(Client, Input, []).
test_failover(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TestFailover">>, Input, Options).

%%====================================================================
%% Internal functions
%%====================================================================

-spec request(aws_client:aws_client(), binary(), map(), list()) ->
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map() | undefined,
    Error :: {binary(), binary()}.
request(Client, Action, Input0, Options) ->
    Client1 = Client#{service => <<"elasticache">>},
    Host = get_host(<<"elasticache">>, Client1),
    URL = get_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-www-form-urlencoded">>}
    ],
    Input = Input0#{ <<"Action">> => Action
                   , <<"Version">> => <<"2015-02-02">>
                   },
    Payload = uri_string:compose_query(maps:to_list(Input)),
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
    CodePath = [<<"ErrorResponse">>, <<"Error">>, <<"Code">>],
    Exception = aws_util:get_in(CodePath, Error),
    MessagePath = [<<"ErrorResponse">>, <<"Error">>, <<"Message">>],
    Reason = aws_util:get_in(MessagePath, Error),
    {error, {Exception, Reason}, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}) ->
    {error, Reason}.

get_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
get_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, <<".">>, Region, <<".">>, Endpoint], <<"">>).

get_url(Host, Client) ->
    Proto = maps:get(proto, Client),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
