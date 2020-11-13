%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Neptune
%%
%% Amazon Neptune is a fast, reliable, fully-managed graph database service
%% that makes it easy to build and run applications that work with highly
%% connected datasets.
%%
%% The core of Amazon Neptune is a purpose-built, high-performance graph
%% database engine optimized for storing billions of relationships and
%% querying the graph with milliseconds latency. Amazon Neptune supports
%% popular graph models Property Graph and W3C's RDF, and their respective
%% query languages Apache TinkerPop Gremlin and SPARQL, allowing you to
%% easily build queries that efficiently navigate highly connected datasets.
%% Neptune powers graph use cases such as recommendation engines, fraud
%% detection, knowledge graphs, drug discovery, and network security.
%%
%% This interface reference for Amazon Neptune contains documentation for a
%% programming or command line interface you can use to manage Amazon
%% Neptune. Note that Amazon Neptune is asynchronous, which means that some
%% interfaces might require techniques such as polling or callback functions
%% to determine when a command has been applied. In this reference, the
%% parameter descriptions indicate whether a command is applied immediately,
%% on the next instance reboot, or during the maintenance window. The
%% reference structure is as follows, and we list following some related
%% topics from the user guide.
-module(aws_neptune).

-export([add_role_to_d_b_cluster/2,
         add_role_to_d_b_cluster/3,
         add_source_identifier_to_subscription/2,
         add_source_identifier_to_subscription/3,
         add_tags_to_resource/2,
         add_tags_to_resource/3,
         apply_pending_maintenance_action/2,
         apply_pending_maintenance_action/3,
         copy_d_b_cluster_parameter_group/2,
         copy_d_b_cluster_parameter_group/3,
         copy_d_b_cluster_snapshot/2,
         copy_d_b_cluster_snapshot/3,
         copy_d_b_parameter_group/2,
         copy_d_b_parameter_group/3,
         create_d_b_cluster/2,
         create_d_b_cluster/3,
         create_d_b_cluster_endpoint/2,
         create_d_b_cluster_endpoint/3,
         create_d_b_cluster_parameter_group/2,
         create_d_b_cluster_parameter_group/3,
         create_d_b_cluster_snapshot/2,
         create_d_b_cluster_snapshot/3,
         create_d_b_instance/2,
         create_d_b_instance/3,
         create_d_b_parameter_group/2,
         create_d_b_parameter_group/3,
         create_d_b_subnet_group/2,
         create_d_b_subnet_group/3,
         create_event_subscription/2,
         create_event_subscription/3,
         delete_d_b_cluster/2,
         delete_d_b_cluster/3,
         delete_d_b_cluster_endpoint/2,
         delete_d_b_cluster_endpoint/3,
         delete_d_b_cluster_parameter_group/2,
         delete_d_b_cluster_parameter_group/3,
         delete_d_b_cluster_snapshot/2,
         delete_d_b_cluster_snapshot/3,
         delete_d_b_instance/2,
         delete_d_b_instance/3,
         delete_d_b_parameter_group/2,
         delete_d_b_parameter_group/3,
         delete_d_b_subnet_group/2,
         delete_d_b_subnet_group/3,
         delete_event_subscription/2,
         delete_event_subscription/3,
         describe_d_b_cluster_endpoints/2,
         describe_d_b_cluster_endpoints/3,
         describe_d_b_cluster_parameter_groups/2,
         describe_d_b_cluster_parameter_groups/3,
         describe_d_b_cluster_parameters/2,
         describe_d_b_cluster_parameters/3,
         describe_d_b_cluster_snapshot_attributes/2,
         describe_d_b_cluster_snapshot_attributes/3,
         describe_d_b_cluster_snapshots/2,
         describe_d_b_cluster_snapshots/3,
         describe_d_b_clusters/2,
         describe_d_b_clusters/3,
         describe_d_b_engine_versions/2,
         describe_d_b_engine_versions/3,
         describe_d_b_instances/2,
         describe_d_b_instances/3,
         describe_d_b_parameter_groups/2,
         describe_d_b_parameter_groups/3,
         describe_d_b_parameters/2,
         describe_d_b_parameters/3,
         describe_d_b_subnet_groups/2,
         describe_d_b_subnet_groups/3,
         describe_engine_default_cluster_parameters/2,
         describe_engine_default_cluster_parameters/3,
         describe_engine_default_parameters/2,
         describe_engine_default_parameters/3,
         describe_event_categories/2,
         describe_event_categories/3,
         describe_event_subscriptions/2,
         describe_event_subscriptions/3,
         describe_events/2,
         describe_events/3,
         describe_orderable_d_b_instance_options/2,
         describe_orderable_d_b_instance_options/3,
         describe_pending_maintenance_actions/2,
         describe_pending_maintenance_actions/3,
         describe_valid_d_b_instance_modifications/2,
         describe_valid_d_b_instance_modifications/3,
         failover_d_b_cluster/2,
         failover_d_b_cluster/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         modify_d_b_cluster/2,
         modify_d_b_cluster/3,
         modify_d_b_cluster_endpoint/2,
         modify_d_b_cluster_endpoint/3,
         modify_d_b_cluster_parameter_group/2,
         modify_d_b_cluster_parameter_group/3,
         modify_d_b_cluster_snapshot_attribute/2,
         modify_d_b_cluster_snapshot_attribute/3,
         modify_d_b_instance/2,
         modify_d_b_instance/3,
         modify_d_b_parameter_group/2,
         modify_d_b_parameter_group/3,
         modify_d_b_subnet_group/2,
         modify_d_b_subnet_group/3,
         modify_event_subscription/2,
         modify_event_subscription/3,
         promote_read_replica_d_b_cluster/2,
         promote_read_replica_d_b_cluster/3,
         reboot_d_b_instance/2,
         reboot_d_b_instance/3,
         remove_role_from_d_b_cluster/2,
         remove_role_from_d_b_cluster/3,
         remove_source_identifier_from_subscription/2,
         remove_source_identifier_from_subscription/3,
         remove_tags_from_resource/2,
         remove_tags_from_resource/3,
         reset_d_b_cluster_parameter_group/2,
         reset_d_b_cluster_parameter_group/3,
         reset_d_b_parameter_group/2,
         reset_d_b_parameter_group/3,
         restore_d_b_cluster_from_snapshot/2,
         restore_d_b_cluster_from_snapshot/3,
         restore_d_b_cluster_to_point_in_time/2,
         restore_d_b_cluster_to_point_in_time/3,
         start_d_b_cluster/2,
         start_d_b_cluster/3,
         stop_d_b_cluster/2,
         stop_d_b_cluster/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Associates an Identity and Access Management (IAM) role from an
%% Neptune DB cluster.
add_role_to_d_b_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_role_to_d_b_cluster(Client, Input, []).
add_role_to_d_b_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddRoleToDBCluster">>, Input, Options).

%% @doc Adds a source identifier to an existing event notification
%% subscription.
add_source_identifier_to_subscription(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_source_identifier_to_subscription(Client, Input, []).
add_source_identifier_to_subscription(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddSourceIdentifierToSubscription">>, Input, Options).

%% @doc Adds metadata tags to an Amazon Neptune resource.
%%
%% These tags can also be used with cost allocation reporting to track cost
%% associated with Amazon Neptune resources, or used in a Condition statement
%% in an IAM policy for Amazon Neptune.
add_tags_to_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_tags_to_resource(Client, Input, []).
add_tags_to_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddTagsToResource">>, Input, Options).

%% @doc Applies a pending maintenance action to a resource (for example, to a
%% DB instance).
apply_pending_maintenance_action(Client, Input)
  when is_map(Client), is_map(Input) ->
    apply_pending_maintenance_action(Client, Input, []).
apply_pending_maintenance_action(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ApplyPendingMaintenanceAction">>, Input, Options).

%% @doc Copies the specified DB cluster parameter group.
copy_d_b_cluster_parameter_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    copy_d_b_cluster_parameter_group(Client, Input, []).
copy_d_b_cluster_parameter_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CopyDBClusterParameterGroup">>, Input, Options).

%% @doc Copies a snapshot of a DB cluster.
%%
%% To copy a DB cluster snapshot from a shared manual DB cluster snapshot,
%% `SourceDBClusterSnapshotIdentifier' must be the Amazon Resource Name (ARN)
%% of the shared DB cluster snapshot.
copy_d_b_cluster_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    copy_d_b_cluster_snapshot(Client, Input, []).
copy_d_b_cluster_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CopyDBClusterSnapshot">>, Input, Options).

%% @doc Copies the specified DB parameter group.
copy_d_b_parameter_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    copy_d_b_parameter_group(Client, Input, []).
copy_d_b_parameter_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CopyDBParameterGroup">>, Input, Options).

%% @doc Creates a new Amazon Neptune DB cluster.
%%
%% You can use the `ReplicationSourceIdentifier' parameter to create the DB
%% cluster as a Read Replica of another DB cluster or Amazon Neptune DB
%% instance.
%%
%% Note that when you create a new cluster using `CreateDBCluster' directly,
%% deletion protection is disabled by default (when you create a new
%% production cluster in the console, deletion protection is enabled by
%% default). You can only delete a DB cluster if its `DeletionProtection'
%% field is set to `false'.
create_d_b_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_d_b_cluster(Client, Input, []).
create_d_b_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDBCluster">>, Input, Options).

%% @doc Creates a new custom endpoint and associates it with an Amazon
%% Neptune DB cluster.
create_d_b_cluster_endpoint(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_d_b_cluster_endpoint(Client, Input, []).
create_d_b_cluster_endpoint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDBClusterEndpoint">>, Input, Options).

%% @doc Creates a new DB cluster parameter group.
%%
%% Parameters in a DB cluster parameter group apply to all of the instances
%% in a DB cluster.
%%
%% A DB cluster parameter group is initially created with the default
%% parameters for the database engine used by instances in the DB cluster. To
%% provide custom values for any of the parameters, you must modify the group
%% after creating it using `ModifyDBClusterParameterGroup'. Once you've
%% created a DB cluster parameter group, you need to associate it with your
%% DB cluster using `ModifyDBCluster'. When you associate a new DB cluster
%% parameter group with a running DB cluster, you need to reboot the DB
%% instances in the DB cluster without failover for the new DB cluster
%% parameter group and associated settings to take effect.
%%
%% After you create a DB cluster parameter group, you should wait at least 5
%% minutes before creating your first DB cluster that uses that DB cluster
%% parameter group as the default parameter group. This allows Amazon Neptune
%% to fully complete the create action before the DB cluster parameter group
%% is used as the default for a new DB cluster. This is especially important
%% for parameters that are critical when creating the default database for a
%% DB cluster, such as the character set for the default database defined by
%% the `character_set_database' parameter. You can use the Parameter Groups
%% option of the Amazon Neptune console or the `DescribeDBClusterParameters'
%% command to verify that your DB cluster parameter group has been created or
%% modified.
create_d_b_cluster_parameter_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_d_b_cluster_parameter_group(Client, Input, []).
create_d_b_cluster_parameter_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDBClusterParameterGroup">>, Input, Options).

%% @doc Creates a snapshot of a DB cluster.
create_d_b_cluster_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_d_b_cluster_snapshot(Client, Input, []).
create_d_b_cluster_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDBClusterSnapshot">>, Input, Options).

%% @doc Creates a new DB instance.
create_d_b_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_d_b_instance(Client, Input, []).
create_d_b_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDBInstance">>, Input, Options).

%% @doc Creates a new DB parameter group.
%%
%% A DB parameter group is initially created with the default parameters for
%% the database engine used by the DB instance. To provide custom values for
%% any of the parameters, you must modify the group after creating it using
%% ModifyDBParameterGroup. Once you've created a DB parameter group, you need
%% to associate it with your DB instance using ModifyDBInstance. When you
%% associate a new DB parameter group with a running DB instance, you need to
%% reboot the DB instance without failover for the new DB parameter group and
%% associated settings to take effect.
%%
%% After you create a DB parameter group, you should wait at least 5 minutes
%% before creating your first DB instance that uses that DB parameter group
%% as the default parameter group. This allows Amazon Neptune to fully
%% complete the create action before the parameter group is used as the
%% default for a new DB instance. This is especially important for parameters
%% that are critical when creating the default database for a DB instance,
%% such as the character set for the default database defined by the
%% `character_set_database' parameter. You can use the Parameter Groups
%% option of the Amazon Neptune console or the DescribeDBParameters command
%% to verify that your DB parameter group has been created or modified.
create_d_b_parameter_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_d_b_parameter_group(Client, Input, []).
create_d_b_parameter_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDBParameterGroup">>, Input, Options).

%% @doc Creates a new DB subnet group.
%%
%% DB subnet groups must contain at least one subnet in at least two AZs in
%% the AWS Region.
create_d_b_subnet_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_d_b_subnet_group(Client, Input, []).
create_d_b_subnet_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDBSubnetGroup">>, Input, Options).

%% @doc Creates an event notification subscription.
%%
%% This action requires a topic ARN (Amazon Resource Name) created by either
%% the Neptune console, the SNS console, or the SNS API. To obtain an ARN
%% with SNS, you must create a topic in Amazon SNS and subscribe to the
%% topic. The ARN is displayed in the SNS console.
%%
%% You can specify the type of source (SourceType) you want to be notified
%% of, provide a list of Neptune sources (SourceIds) that triggers the
%% events, and provide a list of event categories (EventCategories) for
%% events you want to be notified of. For example, you can specify SourceType
%% = db-instance, SourceIds = mydbinstance1, mydbinstance2 and
%% EventCategories = Availability, Backup.
%%
%% If you specify both the SourceType and SourceIds, such as SourceType =
%% db-instance and SourceIdentifier = myDBInstance1, you are notified of all
%% the db-instance events for the specified source. If you specify a
%% SourceType but do not specify a SourceIdentifier, you receive notice of
%% the events for that source type for all your Neptune sources. If you do
%% not specify either the SourceType nor the SourceIdentifier, you are
%% notified of events generated from all Neptune sources belonging to your
%% customer account.
create_event_subscription(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_event_subscription(Client, Input, []).
create_event_subscription(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateEventSubscription">>, Input, Options).

%% @doc The DeleteDBCluster action deletes a previously provisioned DB
%% cluster.
%%
%% When you delete a DB cluster, all automated backups for that DB cluster
%% are deleted and can't be recovered. Manual DB cluster snapshots of the
%% specified DB cluster are not deleted.
%%
%% Note that the DB Cluster cannot be deleted if deletion protection is
%% enabled. To delete it, you must first set its `DeletionProtection' field
%% to `False'.
delete_d_b_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_d_b_cluster(Client, Input, []).
delete_d_b_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDBCluster">>, Input, Options).

%% @doc Deletes a custom endpoint and removes it from an Amazon Neptune DB
%% cluster.
delete_d_b_cluster_endpoint(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_d_b_cluster_endpoint(Client, Input, []).
delete_d_b_cluster_endpoint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDBClusterEndpoint">>, Input, Options).

%% @doc Deletes a specified DB cluster parameter group.
%%
%% The DB cluster parameter group to be deleted can't be associated with any
%% DB clusters.
delete_d_b_cluster_parameter_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_d_b_cluster_parameter_group(Client, Input, []).
delete_d_b_cluster_parameter_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDBClusterParameterGroup">>, Input, Options).

%% @doc Deletes a DB cluster snapshot.
%%
%% If the snapshot is being copied, the copy operation is terminated.
%%
%% The DB cluster snapshot must be in the `available' state to be deleted.
delete_d_b_cluster_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_d_b_cluster_snapshot(Client, Input, []).
delete_d_b_cluster_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDBClusterSnapshot">>, Input, Options).

%% @doc The DeleteDBInstance action deletes a previously provisioned DB
%% instance.
%%
%% When you delete a DB instance, all automated backups for that instance are
%% deleted and can't be recovered. Manual DB snapshots of the DB instance to
%% be deleted by `DeleteDBInstance' are not deleted.
%%
%% If you request a final DB snapshot the status of the Amazon Neptune DB
%% instance is `deleting' until the DB snapshot is created. The API action
%% `DescribeDBInstance' is used to monitor the status of this operation. The
%% action can't be canceled or reverted once submitted.
%%
%% Note that when a DB instance is in a failure state and has a status of
%% `failed', `incompatible-restore', or `incompatible-network', you can only
%% delete it when the `SkipFinalSnapshot' parameter is set to `true'.
%%
%% You can't delete a DB instance if it is the only instance in the DB
%% cluster, or if it has deletion protection enabled.
delete_d_b_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_d_b_instance(Client, Input, []).
delete_d_b_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDBInstance">>, Input, Options).

%% @doc Deletes a specified DBParameterGroup.
%%
%% The DBParameterGroup to be deleted can't be associated with any DB
%% instances.
delete_d_b_parameter_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_d_b_parameter_group(Client, Input, []).
delete_d_b_parameter_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDBParameterGroup">>, Input, Options).

%% @doc Deletes a DB subnet group.
%%
%% The specified database subnet group must not be associated with any DB
%% instances.
delete_d_b_subnet_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_d_b_subnet_group(Client, Input, []).
delete_d_b_subnet_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDBSubnetGroup">>, Input, Options).

%% @doc Deletes an event notification subscription.
delete_event_subscription(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_event_subscription(Client, Input, []).
delete_event_subscription(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteEventSubscription">>, Input, Options).

%% @doc Returns information about endpoints for an Amazon Neptune DB cluster.
%%
%% This operation can also return information for Amazon RDS clusters and
%% Amazon DocDB clusters.
describe_d_b_cluster_endpoints(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_d_b_cluster_endpoints(Client, Input, []).
describe_d_b_cluster_endpoints(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDBClusterEndpoints">>, Input, Options).

%% @doc Returns a list of `DBClusterParameterGroup' descriptions.
%%
%% If a `DBClusterParameterGroupName' parameter is specified, the list will
%% contain only the description of the specified DB cluster parameter group.
describe_d_b_cluster_parameter_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_d_b_cluster_parameter_groups(Client, Input, []).
describe_d_b_cluster_parameter_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDBClusterParameterGroups">>, Input, Options).

%% @doc Returns the detailed parameter list for a particular DB cluster
%% parameter group.
describe_d_b_cluster_parameters(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_d_b_cluster_parameters(Client, Input, []).
describe_d_b_cluster_parameters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDBClusterParameters">>, Input, Options).

%% @doc Returns a list of DB cluster snapshot attribute names and values for
%% a manual DB cluster snapshot.
%%
%% When sharing snapshots with other AWS accounts,
%% `DescribeDBClusterSnapshotAttributes' returns the `restore' attribute and
%% a list of IDs for the AWS accounts that are authorized to copy or restore
%% the manual DB cluster snapshot. If `all' is included in the list of values
%% for the `restore' attribute, then the manual DB cluster snapshot is public
%% and can be copied or restored by all AWS accounts.
%%
%% To add or remove access for an AWS account to copy or restore a manual DB
%% cluster snapshot, or to make the manual DB cluster snapshot public or
%% private, use the `ModifyDBClusterSnapshotAttribute' API action.
describe_d_b_cluster_snapshot_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_d_b_cluster_snapshot_attributes(Client, Input, []).
describe_d_b_cluster_snapshot_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDBClusterSnapshotAttributes">>, Input, Options).

%% @doc Returns information about DB cluster snapshots.
%%
%% This API action supports pagination.
describe_d_b_cluster_snapshots(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_d_b_cluster_snapshots(Client, Input, []).
describe_d_b_cluster_snapshots(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDBClusterSnapshots">>, Input, Options).

%% @doc Returns information about provisioned DB clusters, and supports
%% pagination.
%%
%% This operation can also return information for Amazon RDS clusters and
%% Amazon DocDB clusters.
describe_d_b_clusters(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_d_b_clusters(Client, Input, []).
describe_d_b_clusters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDBClusters">>, Input, Options).

%% @doc Returns a list of the available DB engines.
describe_d_b_engine_versions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_d_b_engine_versions(Client, Input, []).
describe_d_b_engine_versions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDBEngineVersions">>, Input, Options).

%% @doc Returns information about provisioned instances, and supports
%% pagination.
%%
%% This operation can also return information for Amazon RDS instances and
%% Amazon DocDB instances.
describe_d_b_instances(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_d_b_instances(Client, Input, []).
describe_d_b_instances(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDBInstances">>, Input, Options).

%% @doc Returns a list of `DBParameterGroup' descriptions.
%%
%% If a `DBParameterGroupName' is specified, the list will contain only the
%% description of the specified DB parameter group.
describe_d_b_parameter_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_d_b_parameter_groups(Client, Input, []).
describe_d_b_parameter_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDBParameterGroups">>, Input, Options).

%% @doc Returns the detailed parameter list for a particular DB parameter
%% group.
describe_d_b_parameters(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_d_b_parameters(Client, Input, []).
describe_d_b_parameters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDBParameters">>, Input, Options).

%% @doc Returns a list of DBSubnetGroup descriptions.
%%
%% If a DBSubnetGroupName is specified, the list will contain only the
%% descriptions of the specified DBSubnetGroup.
%%
%% For an overview of CIDR ranges, go to the Wikipedia Tutorial.
describe_d_b_subnet_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_d_b_subnet_groups(Client, Input, []).
describe_d_b_subnet_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDBSubnetGroups">>, Input, Options).

%% @doc Returns the default engine and system parameter information for the
%% cluster database engine.
describe_engine_default_cluster_parameters(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_engine_default_cluster_parameters(Client, Input, []).
describe_engine_default_cluster_parameters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEngineDefaultClusterParameters">>, Input, Options).

%% @doc Returns the default engine and system parameter information for the
%% specified database engine.
describe_engine_default_parameters(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_engine_default_parameters(Client, Input, []).
describe_engine_default_parameters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEngineDefaultParameters">>, Input, Options).

%% @doc Displays a list of categories for all event source types, or, if
%% specified, for a specified source type.
describe_event_categories(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_event_categories(Client, Input, []).
describe_event_categories(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEventCategories">>, Input, Options).

%% @doc Lists all the subscription descriptions for a customer account.
%%
%% The description for a subscription includes SubscriptionName, SNSTopicARN,
%% CustomerID, SourceType, SourceID, CreationTime, and Status.
%%
%% If you specify a SubscriptionName, lists the description for that
%% subscription.
describe_event_subscriptions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_event_subscriptions(Client, Input, []).
describe_event_subscriptions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEventSubscriptions">>, Input, Options).

%% @doc Returns events related to DB instances, DB security groups, DB
%% snapshots, and DB parameter groups for the past 14 days.
%%
%% Events specific to a particular DB instance, DB security group, database
%% snapshot, or DB parameter group can be obtained by providing the name as a
%% parameter. By default, the past hour of events are returned.
describe_events(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_events(Client, Input, []).
describe_events(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEvents">>, Input, Options).

%% @doc Returns a list of orderable DB instance options for the specified
%% engine.
describe_orderable_d_b_instance_options(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_orderable_d_b_instance_options(Client, Input, []).
describe_orderable_d_b_instance_options(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeOrderableDBInstanceOptions">>, Input, Options).

%% @doc Returns a list of resources (for example, DB instances) that have at
%% least one pending maintenance action.
describe_pending_maintenance_actions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_pending_maintenance_actions(Client, Input, []).
describe_pending_maintenance_actions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribePendingMaintenanceActions">>, Input, Options).

%% @doc You can call `DescribeValidDBInstanceModifications' to learn what
%% modifications you can make to your DB instance.
%%
%% You can use this information when you call `ModifyDBInstance'.
describe_valid_d_b_instance_modifications(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_valid_d_b_instance_modifications(Client, Input, []).
describe_valid_d_b_instance_modifications(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeValidDBInstanceModifications">>, Input, Options).

%% @doc Forces a failover for a DB cluster.
%%
%% A failover for a DB cluster promotes one of the Read Replicas (read-only
%% instances) in the DB cluster to be the primary instance (the cluster
%% writer).
%%
%% Amazon Neptune will automatically fail over to a Read Replica, if one
%% exists, when the primary instance fails. You can force a failover when you
%% want to simulate a failure of a primary instance for testing. Because each
%% instance in a DB cluster has its own endpoint address, you will need to
%% clean up and re-establish any existing connections that use those endpoint
%% addresses when the failover is complete.
failover_d_b_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    failover_d_b_cluster(Client, Input, []).
failover_d_b_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"FailoverDBCluster">>, Input, Options).

%% @doc Lists all tags on an Amazon Neptune resource.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Modify a setting for a DB cluster.
%%
%% You can change one or more database configuration parameters by specifying
%% these parameters and the new values in the request.
modify_d_b_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_d_b_cluster(Client, Input, []).
modify_d_b_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyDBCluster">>, Input, Options).

%% @doc Modifies the properties of an endpoint in an Amazon Neptune DB
%% cluster.
modify_d_b_cluster_endpoint(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_d_b_cluster_endpoint(Client, Input, []).
modify_d_b_cluster_endpoint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyDBClusterEndpoint">>, Input, Options).

%% @doc Modifies the parameters of a DB cluster parameter group.
%%
%% To modify more than one parameter, submit a list of the following:
%% `ParameterName', `ParameterValue', and `ApplyMethod'. A maximum of 20
%% parameters can be modified in a single request.
%%
%% Changes to dynamic parameters are applied immediately. Changes to static
%% parameters require a reboot without failover to the DB cluster associated
%% with the parameter group before the change can take effect.
%%
%% After you create a DB cluster parameter group, you should wait at least 5
%% minutes before creating your first DB cluster that uses that DB cluster
%% parameter group as the default parameter group. This allows Amazon Neptune
%% to fully complete the create action before the parameter group is used as
%% the default for a new DB cluster. This is especially important for
%% parameters that are critical when creating the default database for a DB
%% cluster, such as the character set for the default database defined by the
%% `character_set_database' parameter. You can use the Parameter Groups
%% option of the Amazon Neptune console or the `DescribeDBClusterParameters'
%% command to verify that your DB cluster parameter group has been created or
%% modified.
modify_d_b_cluster_parameter_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_d_b_cluster_parameter_group(Client, Input, []).
modify_d_b_cluster_parameter_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyDBClusterParameterGroup">>, Input, Options).

%% @doc Adds an attribute and values to, or removes an attribute and values
%% from, a manual DB cluster snapshot.
%%
%% To share a manual DB cluster snapshot with other AWS accounts, specify
%% `restore' as the `AttributeName' and use the `ValuesToAdd' parameter to
%% add a list of IDs of the AWS accounts that are authorized to restore the
%% manual DB cluster snapshot. Use the value `all' to make the manual DB
%% cluster snapshot public, which means that it can be copied or restored by
%% all AWS accounts. Do not add the `all' value for any manual DB cluster
%% snapshots that contain private information that you don't want available
%% to all AWS accounts. If a manual DB cluster snapshot is encrypted, it can
%% be shared, but only by specifying a list of authorized AWS account IDs for
%% the `ValuesToAdd' parameter. You can't use `all' as a value for that
%% parameter in this case.
%%
%% To view which AWS accounts have access to copy or restore a manual DB
%% cluster snapshot, or whether a manual DB cluster snapshot public or
%% private, use the `DescribeDBClusterSnapshotAttributes' API action.
modify_d_b_cluster_snapshot_attribute(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_d_b_cluster_snapshot_attribute(Client, Input, []).
modify_d_b_cluster_snapshot_attribute(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyDBClusterSnapshotAttribute">>, Input, Options).

%% @doc Modifies settings for a DB instance.
%%
%% You can change one or more database configuration parameters by specifying
%% these parameters and the new values in the request. To learn what
%% modifications you can make to your DB instance, call
%% `DescribeValidDBInstanceModifications' before you call `ModifyDBInstance'.
modify_d_b_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_d_b_instance(Client, Input, []).
modify_d_b_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyDBInstance">>, Input, Options).

%% @doc Modifies the parameters of a DB parameter group.
%%
%% To modify more than one parameter, submit a list of the following:
%% `ParameterName', `ParameterValue', and `ApplyMethod'. A maximum of 20
%% parameters can be modified in a single request.
%%
%% Changes to dynamic parameters are applied immediately. Changes to static
%% parameters require a reboot without failover to the DB instance associated
%% with the parameter group before the change can take effect.
%%
%% After you modify a DB parameter group, you should wait at least 5 minutes
%% before creating your first DB instance that uses that DB parameter group
%% as the default parameter group. This allows Amazon Neptune to fully
%% complete the modify action before the parameter group is used as the
%% default for a new DB instance. This is especially important for parameters
%% that are critical when creating the default database for a DB instance,
%% such as the character set for the default database defined by the
%% `character_set_database' parameter. You can use the Parameter Groups
%% option of the Amazon Neptune console or the DescribeDBParameters command
%% to verify that your DB parameter group has been created or modified.
modify_d_b_parameter_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_d_b_parameter_group(Client, Input, []).
modify_d_b_parameter_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyDBParameterGroup">>, Input, Options).

%% @doc Modifies an existing DB subnet group.
%%
%% DB subnet groups must contain at least one subnet in at least two AZs in
%% the AWS Region.
modify_d_b_subnet_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_d_b_subnet_group(Client, Input, []).
modify_d_b_subnet_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyDBSubnetGroup">>, Input, Options).

%% @doc Modifies an existing event notification subscription.
%%
%% Note that you can't modify the source identifiers using this call; to
%% change source identifiers for a subscription, use the
%% `AddSourceIdentifierToSubscription' and
%% `RemoveSourceIdentifierFromSubscription' calls.
%%
%% You can see a list of the event categories for a given SourceType by using
%% the DescribeEventCategories action.
modify_event_subscription(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_event_subscription(Client, Input, []).
modify_event_subscription(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyEventSubscription">>, Input, Options).

%% @doc Not supported.
promote_read_replica_d_b_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    promote_read_replica_d_b_cluster(Client, Input, []).
promote_read_replica_d_b_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PromoteReadReplicaDBCluster">>, Input, Options).

%% @doc You might need to reboot your DB instance, usually for maintenance
%% reasons.
%%
%% For example, if you make certain modifications, or if you change the DB
%% parameter group associated with the DB instance, you must reboot the
%% instance for the changes to take effect.
%%
%% Rebooting a DB instance restarts the database engine service. Rebooting a
%% DB instance results in a momentary outage, during which the DB instance
%% status is set to rebooting.
reboot_d_b_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    reboot_d_b_instance(Client, Input, []).
reboot_d_b_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RebootDBInstance">>, Input, Options).

%% @doc Disassociates an Identity and Access Management (IAM) role from a DB
%% cluster.
remove_role_from_d_b_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    remove_role_from_d_b_cluster(Client, Input, []).
remove_role_from_d_b_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RemoveRoleFromDBCluster">>, Input, Options).

%% @doc Removes a source identifier from an existing event notification
%% subscription.
remove_source_identifier_from_subscription(Client, Input)
  when is_map(Client), is_map(Input) ->
    remove_source_identifier_from_subscription(Client, Input, []).
remove_source_identifier_from_subscription(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RemoveSourceIdentifierFromSubscription">>, Input, Options).

%% @doc Removes metadata tags from an Amazon Neptune resource.
remove_tags_from_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    remove_tags_from_resource(Client, Input, []).
remove_tags_from_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RemoveTagsFromResource">>, Input, Options).

%% @doc Modifies the parameters of a DB cluster parameter group to the
%% default value.
%%
%% To reset specific parameters submit a list of the following:
%% `ParameterName' and `ApplyMethod'. To reset the entire DB cluster
%% parameter group, specify the `DBClusterParameterGroupName' and
%% `ResetAllParameters' parameters.
%%
%% When resetting the entire group, dynamic parameters are updated
%% immediately and static parameters are set to `pending-reboot' to take
%% effect on the next DB instance restart or `RebootDBInstance' request. You
%% must call `RebootDBInstance' for every DB instance in your DB cluster that
%% you want the updated static parameter to apply to.
reset_d_b_cluster_parameter_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    reset_d_b_cluster_parameter_group(Client, Input, []).
reset_d_b_cluster_parameter_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ResetDBClusterParameterGroup">>, Input, Options).

%% @doc Modifies the parameters of a DB parameter group to the engine/system
%% default value.
%%
%% To reset specific parameters, provide a list of the following:
%% `ParameterName' and `ApplyMethod'. To reset the entire DB parameter group,
%% specify the `DBParameterGroup' name and `ResetAllParameters' parameters.
%% When resetting the entire group, dynamic parameters are updated
%% immediately and static parameters are set to `pending-reboot' to take
%% effect on the next DB instance restart or `RebootDBInstance' request.
reset_d_b_parameter_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    reset_d_b_parameter_group(Client, Input, []).
reset_d_b_parameter_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ResetDBParameterGroup">>, Input, Options).

%% @doc Creates a new DB cluster from a DB snapshot or DB cluster snapshot.
%%
%% If a DB snapshot is specified, the target DB cluster is created from the
%% source DB snapshot with a default configuration and default security
%% group.
%%
%% If a DB cluster snapshot is specified, the target DB cluster is created
%% from the source DB cluster restore point with the same configuration as
%% the original source DB cluster, except that the new DB cluster is created
%% with the default security group.
restore_d_b_cluster_from_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    restore_d_b_cluster_from_snapshot(Client, Input, []).
restore_d_b_cluster_from_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RestoreDBClusterFromSnapshot">>, Input, Options).

%% @doc Restores a DB cluster to an arbitrary point in time.
%%
%% Users can restore to any point in time before `LatestRestorableTime' for
%% up to `BackupRetentionPeriod' days. The target DB cluster is created from
%% the source DB cluster with the same configuration as the original DB
%% cluster, except that the new DB cluster is created with the default DB
%% security group.
%%
%% This action only restores the DB cluster, not the DB instances for that DB
%% cluster. You must invoke the `CreateDBInstance' action to create DB
%% instances for the restored DB cluster, specifying the identifier of the
%% restored DB cluster in `DBClusterIdentifier'. You can create DB instances
%% only after the `RestoreDBClusterToPointInTime' action has completed and
%% the DB cluster is available.
restore_d_b_cluster_to_point_in_time(Client, Input)
  when is_map(Client), is_map(Input) ->
    restore_d_b_cluster_to_point_in_time(Client, Input, []).
restore_d_b_cluster_to_point_in_time(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RestoreDBClusterToPointInTime">>, Input, Options).

%% @doc Starts an Amazon Neptune DB cluster that was stopped using the AWS
%% console, the AWS CLI stop-db-cluster command, or the StopDBCluster API.
start_d_b_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_d_b_cluster(Client, Input, []).
start_d_b_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartDBCluster">>, Input, Options).

%% @doc Stops an Amazon Neptune DB cluster.
%%
%% When you stop a DB cluster, Neptune retains the DB cluster's metadata,
%% including its endpoints and DB parameter groups.
%%
%% Neptune also retains the transaction logs so you can do a point-in-time
%% restore if necessary.
stop_d_b_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_d_b_cluster(Client, Input, []).
stop_d_b_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopDBCluster">>, Input, Options).

%%====================================================================
%% Internal functions
%%====================================================================

-spec request(aws_client:aws_client(), binary(), map(), list()) ->
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map() | undefined,
    Error :: map().
request(Client, Action, Input0, Options) ->
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
    Proto = maps:get(proto, Client),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
