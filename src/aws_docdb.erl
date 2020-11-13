%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon DocumentDB API documentation
-module(aws_docdb).

-export([add_tags_to_resource/2,
         add_tags_to_resource/3,
         apply_pending_maintenance_action/2,
         apply_pending_maintenance_action/3,
         copy_d_b_cluster_parameter_group/2,
         copy_d_b_cluster_parameter_group/3,
         copy_d_b_cluster_snapshot/2,
         copy_d_b_cluster_snapshot/3,
         create_d_b_cluster/2,
         create_d_b_cluster/3,
         create_d_b_cluster_parameter_group/2,
         create_d_b_cluster_parameter_group/3,
         create_d_b_cluster_snapshot/2,
         create_d_b_cluster_snapshot/3,
         create_d_b_instance/2,
         create_d_b_instance/3,
         create_d_b_subnet_group/2,
         create_d_b_subnet_group/3,
         delete_d_b_cluster/2,
         delete_d_b_cluster/3,
         delete_d_b_cluster_parameter_group/2,
         delete_d_b_cluster_parameter_group/3,
         delete_d_b_cluster_snapshot/2,
         delete_d_b_cluster_snapshot/3,
         delete_d_b_instance/2,
         delete_d_b_instance/3,
         delete_d_b_subnet_group/2,
         delete_d_b_subnet_group/3,
         describe_certificates/2,
         describe_certificates/3,
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
         describe_d_b_subnet_groups/2,
         describe_d_b_subnet_groups/3,
         describe_engine_default_cluster_parameters/2,
         describe_engine_default_cluster_parameters/3,
         describe_event_categories/2,
         describe_event_categories/3,
         describe_events/2,
         describe_events/3,
         describe_orderable_d_b_instance_options/2,
         describe_orderable_d_b_instance_options/3,
         describe_pending_maintenance_actions/2,
         describe_pending_maintenance_actions/3,
         failover_d_b_cluster/2,
         failover_d_b_cluster/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         modify_d_b_cluster/2,
         modify_d_b_cluster/3,
         modify_d_b_cluster_parameter_group/2,
         modify_d_b_cluster_parameter_group/3,
         modify_d_b_cluster_snapshot_attribute/2,
         modify_d_b_cluster_snapshot_attribute/3,
         modify_d_b_instance/2,
         modify_d_b_instance/3,
         modify_d_b_subnet_group/2,
         modify_d_b_subnet_group/3,
         reboot_d_b_instance/2,
         reboot_d_b_instance/3,
         remove_tags_from_resource/2,
         remove_tags_from_resource/3,
         reset_d_b_cluster_parameter_group/2,
         reset_d_b_cluster_parameter_group/3,
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

%% @doc Adds metadata tags to an Amazon DocumentDB resource.
%%
%% You can use these tags with cost allocation reporting to track costs that
%% are associated with Amazon DocumentDB resources. or in a `Condition'
%% statement in an AWS Identity and Access Management (IAM) policy for Amazon
%% DocumentDB.
add_tags_to_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_tags_to_resource(Client, Input, []).
add_tags_to_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddTagsToResource">>, Input, Options).

%% @doc Applies a pending maintenance action to a resource (for example, to
%% an Amazon DocumentDB instance).
apply_pending_maintenance_action(Client, Input)
  when is_map(Client), is_map(Input) ->
    apply_pending_maintenance_action(Client, Input, []).
apply_pending_maintenance_action(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ApplyPendingMaintenanceAction">>, Input, Options).

%% @doc Copies the specified cluster parameter group.
copy_d_b_cluster_parameter_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    copy_d_b_cluster_parameter_group(Client, Input, []).
copy_d_b_cluster_parameter_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CopyDBClusterParameterGroup">>, Input, Options).

%% @doc Copies a snapshot of a cluster.
%%
%% To copy a cluster snapshot from a shared manual cluster snapshot,
%% `SourceDBClusterSnapshotIdentifier' must be the Amazon Resource Name (ARN)
%% of the shared cluster snapshot. You can only copy a shared DB cluster
%% snapshot, whether encrypted or not, in the same AWS Region.
%%
%% To cancel the copy operation after it is in progress, delete the target
%% cluster snapshot identified by `TargetDBClusterSnapshotIdentifier' while
%% that cluster snapshot is in the copying status.
copy_d_b_cluster_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    copy_d_b_cluster_snapshot(Client, Input, []).
copy_d_b_cluster_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CopyDBClusterSnapshot">>, Input, Options).

%% @doc Creates a new Amazon DocumentDB cluster.
create_d_b_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_d_b_cluster(Client, Input, []).
create_d_b_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDBCluster">>, Input, Options).

%% @doc Creates a new cluster parameter group.
%%
%% Parameters in a cluster parameter group apply to all of the instances in a
%% cluster.
%%
%% A cluster parameter group is initially created with the default parameters
%% for the database engine used by instances in the cluster. In Amazon
%% DocumentDB, you cannot make modifications directly to the
%% `default.docdb3.6' cluster parameter group. If your Amazon DocumentDB
%% cluster is using the default cluster parameter group and you want to
%% modify a value in it, you must first create a new parameter group or copy
%% an existing parameter group, modify it, and then apply the modified
%% parameter group to your cluster. For the new cluster parameter group and
%% associated settings to take effect, you must then reboot the instances in
%% the cluster without failover. For more information, see Modifying Amazon
%% DocumentDB Cluster Parameter Groups.
create_d_b_cluster_parameter_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_d_b_cluster_parameter_group(Client, Input, []).
create_d_b_cluster_parameter_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDBClusterParameterGroup">>, Input, Options).

%% @doc Creates a snapshot of a cluster.
create_d_b_cluster_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_d_b_cluster_snapshot(Client, Input, []).
create_d_b_cluster_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDBClusterSnapshot">>, Input, Options).

%% @doc Creates a new instance.
create_d_b_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_d_b_instance(Client, Input, []).
create_d_b_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDBInstance">>, Input, Options).

%% @doc Creates a new subnet group.
%%
%% subnet groups must contain at least one subnet in at least two
%% Availability Zones in the AWS Region.
create_d_b_subnet_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_d_b_subnet_group(Client, Input, []).
create_d_b_subnet_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDBSubnetGroup">>, Input, Options).

%% @doc Deletes a previously provisioned cluster.
%%
%% When you delete a cluster, all automated backups for that cluster are
%% deleted and can't be recovered. Manual DB cluster snapshots of the
%% specified cluster are not deleted.
delete_d_b_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_d_b_cluster(Client, Input, []).
delete_d_b_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDBCluster">>, Input, Options).

%% @doc Deletes a specified cluster parameter group.
%%
%% The cluster parameter group to be deleted can't be associated with any
%% clusters.
delete_d_b_cluster_parameter_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_d_b_cluster_parameter_group(Client, Input, []).
delete_d_b_cluster_parameter_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDBClusterParameterGroup">>, Input, Options).

%% @doc Deletes a cluster snapshot.
%%
%% If the snapshot is being copied, the copy operation is terminated.
%%
%% The cluster snapshot must be in the `available' state to be deleted.
delete_d_b_cluster_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_d_b_cluster_snapshot(Client, Input, []).
delete_d_b_cluster_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDBClusterSnapshot">>, Input, Options).

%% @doc Deletes a previously provisioned instance.
delete_d_b_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_d_b_instance(Client, Input, []).
delete_d_b_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDBInstance">>, Input, Options).

%% @doc Deletes a subnet group.
%%
%% The specified database subnet group must not be associated with any DB
%% instances.
delete_d_b_subnet_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_d_b_subnet_group(Client, Input, []).
delete_d_b_subnet_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDBSubnetGroup">>, Input, Options).

%% @doc Returns a list of certificate authority (CA) certificates provided by
%% Amazon DocumentDB for this AWS account.
describe_certificates(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_certificates(Client, Input, []).
describe_certificates(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeCertificates">>, Input, Options).

%% @doc Returns a list of `DBClusterParameterGroup' descriptions.
%%
%% If a `DBClusterParameterGroupName' parameter is specified, the list
%% contains only the description of the specified cluster parameter group.
describe_d_b_cluster_parameter_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_d_b_cluster_parameter_groups(Client, Input, []).
describe_d_b_cluster_parameter_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDBClusterParameterGroups">>, Input, Options).

%% @doc Returns the detailed parameter list for a particular cluster
%% parameter group.
describe_d_b_cluster_parameters(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_d_b_cluster_parameters(Client, Input, []).
describe_d_b_cluster_parameters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDBClusterParameters">>, Input, Options).

%% @doc Returns a list of cluster snapshot attribute names and values for a
%% manual DB cluster snapshot.
%%
%% When you share snapshots with other AWS accounts,
%% `DescribeDBClusterSnapshotAttributes' returns the `restore' attribute and
%% a list of IDs for the AWS accounts that are authorized to copy or restore
%% the manual cluster snapshot. If `all' is included in the list of values
%% for the `restore' attribute, then the manual cluster snapshot is public
%% and can be copied or restored by all AWS accounts.
describe_d_b_cluster_snapshot_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_d_b_cluster_snapshot_attributes(Client, Input, []).
describe_d_b_cluster_snapshot_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDBClusterSnapshotAttributes">>, Input, Options).

%% @doc Returns information about cluster snapshots.
%%
%% This API operation supports pagination.
describe_d_b_cluster_snapshots(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_d_b_cluster_snapshots(Client, Input, []).
describe_d_b_cluster_snapshots(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDBClusterSnapshots">>, Input, Options).

%% @doc Returns information about provisioned Amazon DocumentDB clusters.
%%
%% This API operation supports pagination. For certain management features
%% such as cluster and instance lifecycle management, Amazon DocumentDB
%% leverages operational technology that is shared with Amazon RDS and Amazon
%% Neptune. Use the `filterName=engine,Values=docdb' filter parameter to
%% return only Amazon DocumentDB clusters.
describe_d_b_clusters(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_d_b_clusters(Client, Input, []).
describe_d_b_clusters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDBClusters">>, Input, Options).

%% @doc Returns a list of the available engines.
describe_d_b_engine_versions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_d_b_engine_versions(Client, Input, []).
describe_d_b_engine_versions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDBEngineVersions">>, Input, Options).

%% @doc Returns information about provisioned Amazon DocumentDB instances.
%%
%% This API supports pagination.
describe_d_b_instances(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_d_b_instances(Client, Input, []).
describe_d_b_instances(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDBInstances">>, Input, Options).

%% @doc Returns a list of `DBSubnetGroup' descriptions.
%%
%% If a `DBSubnetGroupName' is specified, the list will contain only the
%% descriptions of the specified `DBSubnetGroup'.
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

%% @doc Displays a list of categories for all event source types, or, if
%% specified, for a specified source type.
describe_event_categories(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_event_categories(Client, Input, []).
describe_event_categories(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEventCategories">>, Input, Options).

%% @doc Returns events related to instances, security groups, snapshots, and
%% DB parameter groups for the past 14 days.
%%
%% You can obtain events specific to a particular DB instance, security
%% group, snapshot, or parameter group by providing the name as a parameter.
%% By default, the events of the past hour are returned.
describe_events(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_events(Client, Input, []).
describe_events(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEvents">>, Input, Options).

%% @doc Returns a list of orderable instance options for the specified
%% engine.
describe_orderable_d_b_instance_options(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_orderable_d_b_instance_options(Client, Input, []).
describe_orderable_d_b_instance_options(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeOrderableDBInstanceOptions">>, Input, Options).

%% @doc Returns a list of resources (for example, instances) that have at
%% least one pending maintenance action.
describe_pending_maintenance_actions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_pending_maintenance_actions(Client, Input, []).
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
failover_d_b_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    failover_d_b_cluster(Client, Input, []).
failover_d_b_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"FailoverDBCluster">>, Input, Options).

%% @doc Lists all tags on an Amazon DocumentDB resource.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Modifies a setting for an Amazon DocumentDB cluster.
%%
%% You can change one or more database configuration parameters by specifying
%% these parameters and the new values in the request.
modify_d_b_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_d_b_cluster(Client, Input, []).
modify_d_b_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyDBCluster">>, Input, Options).

%% @doc Modifies the parameters of a cluster parameter group.
%%
%% To modify more than one parameter, submit a list of the following:
%% `ParameterName', `ParameterValue', and `ApplyMethod'. A maximum of 20
%% parameters can be modified in a single request.
%%
%% Changes to dynamic parameters are applied immediately. Changes to static
%% parameters require a reboot or maintenance window before the change can
%% take effect.
%%
%% After you create a cluster parameter group, you should wait at least 5
%% minutes before creating your first cluster that uses that cluster
%% parameter group as the default parameter group. This allows Amazon
%% DocumentDB to fully complete the create action before the parameter group
%% is used as the default for a new cluster. This step is especially
%% important for parameters that are critical when creating the default
%% database for a cluster, such as the character set for the default database
%% defined by the `character_set_database' parameter.
modify_d_b_cluster_parameter_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_d_b_cluster_parameter_group(Client, Input, []).
modify_d_b_cluster_parameter_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyDBClusterParameterGroup">>, Input, Options).

%% @doc Adds an attribute and values to, or removes an attribute and values
%% from, a manual DB cluster snapshot.
%%
%% To share a manual cluster snapshot with other AWS accounts, specify
%% `restore' as the `AttributeName', and use the `ValuesToAdd' parameter to
%% add a list of IDs of the AWS accounts that are authorized to restore the
%% manual cluster snapshot. Use the value `all' to make the manual cluster
%% snapshot public, which means that it can be copied or restored by all AWS
%% accounts. Do not add the `all' value for any manual DB cluster snapshots
%% that contain private information that you don't want available to all AWS
%% accounts. If a manual cluster snapshot is encrypted, it can be shared, but
%% only by specifying a list of authorized AWS account IDs for the
%% `ValuesToAdd' parameter. You can't use `all' as a value for that parameter
%% in this case.
modify_d_b_cluster_snapshot_attribute(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_d_b_cluster_snapshot_attribute(Client, Input, []).
modify_d_b_cluster_snapshot_attribute(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyDBClusterSnapshotAttribute">>, Input, Options).

%% @doc Modifies settings for an instance.
%%
%% You can change one or more database configuration parameters by specifying
%% these parameters and the new values in the request.
modify_d_b_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_d_b_instance(Client, Input, []).
modify_d_b_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyDBInstance">>, Input, Options).

%% @doc Modifies an existing subnet group.
%%
%% subnet groups must contain at least one subnet in at least two
%% Availability Zones in the AWS Region.
modify_d_b_subnet_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_d_b_subnet_group(Client, Input, []).
modify_d_b_subnet_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyDBSubnetGroup">>, Input, Options).

%% @doc You might need to reboot your instance, usually for maintenance
%% reasons.
%%
%% For example, if you make certain changes, or if you change the cluster
%% parameter group that is associated with the instance, you must reboot the
%% instance for the changes to take effect.
%%
%% Rebooting an instance restarts the database engine service. Rebooting an
%% instance results in a momentary outage, during which the instance status
%% is set to rebooting.
reboot_d_b_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    reboot_d_b_instance(Client, Input, []).
reboot_d_b_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RebootDBInstance">>, Input, Options).

%% @doc Removes metadata tags from an Amazon DocumentDB resource.
remove_tags_from_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    remove_tags_from_resource(Client, Input, []).
remove_tags_from_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RemoveTagsFromResource">>, Input, Options).

%% @doc Modifies the parameters of a cluster parameter group to the default
%% value.
%%
%% To reset specific parameters, submit a list of the following:
%% `ParameterName' and `ApplyMethod'. To reset the entire cluster parameter
%% group, specify the `DBClusterParameterGroupName' and `ResetAllParameters'
%% parameters.
%%
%% When you reset the entire group, dynamic parameters are updated
%% immediately and static parameters are set to `pending-reboot' to take
%% effect on the next DB instance reboot.
reset_d_b_cluster_parameter_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    reset_d_b_cluster_parameter_group(Client, Input, []).
reset_d_b_cluster_parameter_group(Client, Input, Options)
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
restore_d_b_cluster_from_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    restore_d_b_cluster_from_snapshot(Client, Input, []).
restore_d_b_cluster_from_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RestoreDBClusterFromSnapshot">>, Input, Options).

%% @doc Restores a cluster to an arbitrary point in time.
%%
%% Users can restore to any point in time before `LatestRestorableTime' for
%% up to `BackupRetentionPeriod' days. The target cluster is created from the
%% source cluster with the same configuration as the original cluster, except
%% that the new cluster is created with the default security group.
restore_d_b_cluster_to_point_in_time(Client, Input)
  when is_map(Client), is_map(Input) ->
    restore_d_b_cluster_to_point_in_time(Client, Input, []).
restore_d_b_cluster_to_point_in_time(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RestoreDBClusterToPointInTime">>, Input, Options).

%% @doc Restarts the stopped cluster that is specified by
%% `DBClusterIdentifier'.
%%
%% For more information, see Stopping and Starting an Amazon DocumentDB
%% Cluster.
start_d_b_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_d_b_cluster(Client, Input, []).
start_d_b_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartDBCluster">>, Input, Options).

%% @doc Stops the running cluster that is specified by `DBClusterIdentifier'.
%%
%% The cluster must be in the available state. For more information, see
%% Stopping and Starting an Amazon DocumentDB Cluster.
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
