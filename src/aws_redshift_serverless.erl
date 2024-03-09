%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc This is an interface reference for Amazon Redshift Serverless.
%%
%% It contains documentation for one of the programming or command line
%% interfaces you can use to manage Amazon Redshift Serverless.
%%
%% Amazon Redshift Serverless automatically provisions data warehouse
%% capacity and intelligently scales the
%% underlying resources based on workload demands. Amazon Redshift Serverless
%% adjusts capacity in seconds to deliver consistently high
%% performance and simplified operations for even the most demanding and
%% volatile workloads. Amazon Redshift Serverless lets you
%% focus on using your data to acquire new insights for your business and
%% customers.
%%
%% To learn more about Amazon Redshift Serverless,
%% see What is Amazon Redshift Serverless:
%% https://docs.aws.amazon.com/redshift/latest/mgmt/serverless-whatis.html.
-module(aws_redshift_serverless).

-export([convert_recovery_point_to_snapshot/2,
         convert_recovery_point_to_snapshot/3,
         create_custom_domain_association/2,
         create_custom_domain_association/3,
         create_endpoint_access/2,
         create_endpoint_access/3,
         create_namespace/2,
         create_namespace/3,
         create_scheduled_action/2,
         create_scheduled_action/3,
         create_snapshot/2,
         create_snapshot/3,
         create_snapshot_copy_configuration/2,
         create_snapshot_copy_configuration/3,
         create_usage_limit/2,
         create_usage_limit/3,
         create_workgroup/2,
         create_workgroup/3,
         delete_custom_domain_association/2,
         delete_custom_domain_association/3,
         delete_endpoint_access/2,
         delete_endpoint_access/3,
         delete_namespace/2,
         delete_namespace/3,
         delete_resource_policy/2,
         delete_resource_policy/3,
         delete_scheduled_action/2,
         delete_scheduled_action/3,
         delete_snapshot/2,
         delete_snapshot/3,
         delete_snapshot_copy_configuration/2,
         delete_snapshot_copy_configuration/3,
         delete_usage_limit/2,
         delete_usage_limit/3,
         delete_workgroup/2,
         delete_workgroup/3,
         get_credentials/2,
         get_credentials/3,
         get_custom_domain_association/2,
         get_custom_domain_association/3,
         get_endpoint_access/2,
         get_endpoint_access/3,
         get_namespace/2,
         get_namespace/3,
         get_recovery_point/2,
         get_recovery_point/3,
         get_resource_policy/2,
         get_resource_policy/3,
         get_scheduled_action/2,
         get_scheduled_action/3,
         get_snapshot/2,
         get_snapshot/3,
         get_table_restore_status/2,
         get_table_restore_status/3,
         get_usage_limit/2,
         get_usage_limit/3,
         get_workgroup/2,
         get_workgroup/3,
         list_custom_domain_associations/2,
         list_custom_domain_associations/3,
         list_endpoint_access/2,
         list_endpoint_access/3,
         list_namespaces/2,
         list_namespaces/3,
         list_recovery_points/2,
         list_recovery_points/3,
         list_scheduled_actions/2,
         list_scheduled_actions/3,
         list_snapshot_copy_configurations/2,
         list_snapshot_copy_configurations/3,
         list_snapshots/2,
         list_snapshots/3,
         list_table_restore_status/2,
         list_table_restore_status/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         list_usage_limits/2,
         list_usage_limits/3,
         list_workgroups/2,
         list_workgroups/3,
         put_resource_policy/2,
         put_resource_policy/3,
         restore_from_recovery_point/2,
         restore_from_recovery_point/3,
         restore_from_snapshot/2,
         restore_from_snapshot/3,
         restore_table_from_recovery_point/2,
         restore_table_from_recovery_point/3,
         restore_table_from_snapshot/2,
         restore_table_from_snapshot/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_custom_domain_association/2,
         update_custom_domain_association/3,
         update_endpoint_access/2,
         update_endpoint_access/3,
         update_namespace/2,
         update_namespace/3,
         update_scheduled_action/2,
         update_scheduled_action/3,
         update_snapshot/2,
         update_snapshot/3,
         update_snapshot_copy_configuration/2,
         update_snapshot_copy_configuration/3,
         update_usage_limit/2,
         update_usage_limit/3,
         update_workgroup/2,
         update_workgroup/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Converts a recovery point to a snapshot.
%%
%% For more information about recovery points and snapshots,
%% see Working with snapshots and recovery points:
%% https://docs.aws.amazon.com/redshift/latest/mgmt/serverless-snapshots-recovery.html.
convert_recovery_point_to_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    convert_recovery_point_to_snapshot(Client, Input, []).
convert_recovery_point_to_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ConvertRecoveryPointToSnapshot">>, Input, Options).

%% @doc Creates a custom domain association for Amazon Redshift Serverless.
create_custom_domain_association(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_custom_domain_association(Client, Input, []).
create_custom_domain_association(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateCustomDomainAssociation">>, Input, Options).

%% @doc Creates an Amazon Redshift Serverless managed VPC endpoint.
create_endpoint_access(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_endpoint_access(Client, Input, []).
create_endpoint_access(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateEndpointAccess">>, Input, Options).

%% @doc Creates a namespace in Amazon Redshift Serverless.
create_namespace(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_namespace(Client, Input, []).
create_namespace(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateNamespace">>, Input, Options).

%% @doc Creates a scheduled action.
%%
%% A scheduled action contains a schedule and an Amazon Redshift API action.
%% For example, you can create a schedule of when to run the
%% `CreateSnapshot' API operation.
create_scheduled_action(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_scheduled_action(Client, Input, []).
create_scheduled_action(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateScheduledAction">>, Input, Options).

%% @doc Creates a snapshot of all databases in a namespace.
%%
%% For more information about snapshots, see
%%
%% Working with snapshots and recovery points:
%% https://docs.aws.amazon.com/redshift/latest/mgmt/serverless-snapshots-recovery.html.
create_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_snapshot(Client, Input, []).
create_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateSnapshot">>, Input, Options).

%% @doc Creates a snapshot copy configuration that lets you copy snapshots to
%% another Amazon Web Services Region.
create_snapshot_copy_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_snapshot_copy_configuration(Client, Input, []).
create_snapshot_copy_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateSnapshotCopyConfiguration">>, Input, Options).

%% @doc Creates a usage limit for a specified Amazon Redshift Serverless
%% usage type.
%%
%% The usage limit is identified by the returned usage limit identifier.
create_usage_limit(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_usage_limit(Client, Input, []).
create_usage_limit(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateUsageLimit">>, Input, Options).

%% @doc Creates an workgroup in Amazon Redshift Serverless.
create_workgroup(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_workgroup(Client, Input, []).
create_workgroup(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateWorkgroup">>, Input, Options).

%% @doc Deletes a custom domain association for Amazon Redshift Serverless.
delete_custom_domain_association(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_custom_domain_association(Client, Input, []).
delete_custom_domain_association(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteCustomDomainAssociation">>, Input, Options).

%% @doc Deletes an Amazon Redshift Serverless managed VPC endpoint.
delete_endpoint_access(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_endpoint_access(Client, Input, []).
delete_endpoint_access(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteEndpointAccess">>, Input, Options).

%% @doc Deletes a namespace from Amazon Redshift Serverless.
%%
%% Before you delete the namespace, you can create a final snapshot that has
%% all of the data within the namespace.
delete_namespace(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_namespace(Client, Input, []).
delete_namespace(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteNamespace">>, Input, Options).

%% @doc Deletes the specified resource policy.
delete_resource_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_resource_policy(Client, Input, []).
delete_resource_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteResourcePolicy">>, Input, Options).

%% @doc Deletes a scheduled action.
delete_scheduled_action(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_scheduled_action(Client, Input, []).
delete_scheduled_action(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteScheduledAction">>, Input, Options).

%% @doc Deletes a snapshot from Amazon Redshift Serverless.
delete_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_snapshot(Client, Input, []).
delete_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteSnapshot">>, Input, Options).

%% @doc Deletes a snapshot copy configuration
delete_snapshot_copy_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_snapshot_copy_configuration(Client, Input, []).
delete_snapshot_copy_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteSnapshotCopyConfiguration">>, Input, Options).

%% @doc Deletes a usage limit from Amazon Redshift Serverless.
delete_usage_limit(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_usage_limit(Client, Input, []).
delete_usage_limit(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteUsageLimit">>, Input, Options).

%% @doc Deletes a workgroup.
delete_workgroup(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_workgroup(Client, Input, []).
delete_workgroup(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteWorkgroup">>, Input, Options).

%% @doc Returns a database user name and temporary password with
%% temporary authorization to log in to Amazon Redshift Serverless.
%%
%% By default, the temporary credentials expire in 900 seconds.
%% You can optionally specify a duration between 900 seconds (15 minutes) and
%% 3600 seconds (60 minutes).
%%
%% The Identity and Access Management (IAM) user or role that runs
%% GetCredentials must have an IAM policy attached that allows access to all
%% necessary actions and resources.
%%
%% If the `DbName' parameter is specified, the IAM policy must
%% allow access to the resource dbname for the specified database name.
get_credentials(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_credentials(Client, Input, []).
get_credentials(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetCredentials">>, Input, Options).

%% @doc Gets information about a specific custom domain association.
get_custom_domain_association(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_custom_domain_association(Client, Input, []).
get_custom_domain_association(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetCustomDomainAssociation">>, Input, Options).

%% @doc Returns information, such as the name, about a VPC endpoint.
get_endpoint_access(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_endpoint_access(Client, Input, []).
get_endpoint_access(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetEndpointAccess">>, Input, Options).

%% @doc Returns information about a namespace in Amazon Redshift Serverless.
get_namespace(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_namespace(Client, Input, []).
get_namespace(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetNamespace">>, Input, Options).

%% @doc Returns information about a recovery point.
get_recovery_point(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_recovery_point(Client, Input, []).
get_recovery_point(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRecoveryPoint">>, Input, Options).

%% @doc Returns a resource policy.
get_resource_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_resource_policy(Client, Input, []).
get_resource_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetResourcePolicy">>, Input, Options).

%% @doc Returns information about a scheduled action.
get_scheduled_action(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_scheduled_action(Client, Input, []).
get_scheduled_action(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetScheduledAction">>, Input, Options).

%% @doc Returns information about a specific snapshot.
get_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_snapshot(Client, Input, []).
get_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSnapshot">>, Input, Options).

%% @doc Returns information about a `TableRestoreStatus' object.
get_table_restore_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_table_restore_status(Client, Input, []).
get_table_restore_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetTableRestoreStatus">>, Input, Options).

%% @doc Returns information about a usage limit.
get_usage_limit(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_usage_limit(Client, Input, []).
get_usage_limit(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetUsageLimit">>, Input, Options).

%% @doc Returns information about a specific workgroup.
get_workgroup(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_workgroup(Client, Input, []).
get_workgroup(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetWorkgroup">>, Input, Options).

%% @doc Lists custom domain associations for Amazon Redshift Serverless.
list_custom_domain_associations(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_custom_domain_associations(Client, Input, []).
list_custom_domain_associations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListCustomDomainAssociations">>, Input, Options).

%% @doc Returns an array of `EndpointAccess' objects and relevant
%% information.
list_endpoint_access(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_endpoint_access(Client, Input, []).
list_endpoint_access(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListEndpointAccess">>, Input, Options).

%% @doc Returns information about a list of specified namespaces.
list_namespaces(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_namespaces(Client, Input, []).
list_namespaces(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListNamespaces">>, Input, Options).

%% @doc Returns an array of recovery points.
list_recovery_points(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_recovery_points(Client, Input, []).
list_recovery_points(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListRecoveryPoints">>, Input, Options).

%% @doc Returns a list of scheduled actions.
%%
%% You can use the flags to filter the list of returned scheduled actions.
list_scheduled_actions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_scheduled_actions(Client, Input, []).
list_scheduled_actions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListScheduledActions">>, Input, Options).

%% @doc Returns a list of snapshot copy configurations.
list_snapshot_copy_configurations(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_snapshot_copy_configurations(Client, Input, []).
list_snapshot_copy_configurations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListSnapshotCopyConfigurations">>, Input, Options).

%% @doc Returns a list of snapshots.
list_snapshots(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_snapshots(Client, Input, []).
list_snapshots(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListSnapshots">>, Input, Options).

%% @doc Returns information about an array of `TableRestoreStatus'
%% objects.
list_table_restore_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_table_restore_status(Client, Input, []).
list_table_restore_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTableRestoreStatus">>, Input, Options).

%% @doc Lists the tags assigned to a resource.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Lists all usage limits within Amazon Redshift Serverless.
list_usage_limits(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_usage_limits(Client, Input, []).
list_usage_limits(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListUsageLimits">>, Input, Options).

%% @doc Returns information about a list of specified workgroups.
list_workgroups(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_workgroups(Client, Input, []).
list_workgroups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListWorkgroups">>, Input, Options).

%% @doc Creates or updates a resource policy.
%%
%% Currently, you can use policies to share snapshots across Amazon Web
%% Services accounts.
put_resource_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_resource_policy(Client, Input, []).
put_resource_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutResourcePolicy">>, Input, Options).

%% @doc Restore the data from a recovery point.
restore_from_recovery_point(Client, Input)
  when is_map(Client), is_map(Input) ->
    restore_from_recovery_point(Client, Input, []).
restore_from_recovery_point(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RestoreFromRecoveryPoint">>, Input, Options).

%% @doc Restores a namespace from a snapshot.
restore_from_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    restore_from_snapshot(Client, Input, []).
restore_from_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RestoreFromSnapshot">>, Input, Options).

%% @doc Restores a table from a recovery point to your Amazon Redshift
%% Serverless instance.
%%
%% You can't use this operation to restore tables with interleaved sort
%% keys.
restore_table_from_recovery_point(Client, Input)
  when is_map(Client), is_map(Input) ->
    restore_table_from_recovery_point(Client, Input, []).
restore_table_from_recovery_point(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RestoreTableFromRecoveryPoint">>, Input, Options).

%% @doc Restores a table from a snapshot to your Amazon Redshift Serverless
%% instance.
%%
%% You can't use this operation to
%% restore tables with interleaved sort keys:
%% https://docs.aws.amazon.com/redshift/latest/dg/t_Sorting_data.html#t_Sorting_data-interleaved.
restore_table_from_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    restore_table_from_snapshot(Client, Input, []).
restore_table_from_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RestoreTableFromSnapshot">>, Input, Options).

%% @doc Assigns one or more tags to a resource.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Removes a tag or set of tags from a resource.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc Updates an Amazon Redshift Serverless certificate associated with a
%% custom domain.
update_custom_domain_association(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_custom_domain_association(Client, Input, []).
update_custom_domain_association(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateCustomDomainAssociation">>, Input, Options).

%% @doc Updates an Amazon Redshift Serverless managed endpoint.
update_endpoint_access(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_endpoint_access(Client, Input, []).
update_endpoint_access(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateEndpointAccess">>, Input, Options).

%% @doc Updates a namespace with the specified settings.
%%
%% Unless required, you can't update multiple parameters in one request.
%% For example,
%% you must specify both `adminUsername' and `adminUserPassword' to
%% update either field, but you can't update both `kmsKeyId'
%% and `logExports' in a single request.
update_namespace(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_namespace(Client, Input, []).
update_namespace(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateNamespace">>, Input, Options).

%% @doc Updates a scheduled action.
update_scheduled_action(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_scheduled_action(Client, Input, []).
update_scheduled_action(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateScheduledAction">>, Input, Options).

%% @doc Updates a snapshot.
update_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_snapshot(Client, Input, []).
update_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateSnapshot">>, Input, Options).

%% @doc Updates a snapshot copy configuration.
update_snapshot_copy_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_snapshot_copy_configuration(Client, Input, []).
update_snapshot_copy_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateSnapshotCopyConfiguration">>, Input, Options).

%% @doc Update a usage limit in Amazon Redshift Serverless.
%%
%% You can't update the usage type or period of a usage limit.
update_usage_limit(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_usage_limit(Client, Input, []).
update_usage_limit(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateUsageLimit">>, Input, Options).

%% @doc Updates a workgroup with the specified configuration settings.
%%
%% You can't update multiple parameters in one request. For example,
%% you can update `baseCapacity' or `port' in a single request, but
%% you can't update both in the same request.
update_workgroup(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_workgroup(Client, Input, []).
update_workgroup(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateWorkgroup">>, Input, Options).

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
    Client1 = Client#{service => <<"redshift-serverless">>},
    Host = build_host(<<"redshift-serverless">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"RedshiftServerless.", Action/binary>>}
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
