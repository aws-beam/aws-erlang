%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc <fullname>Amazon Relational Database Service</fullname>
%%
%% Amazon Relational Database Service (Amazon RDS) is a web service that
%% makes it easier to set up, operate, and scale a relational database in the
%% cloud. It provides cost-efficient, resizeable capacity for an
%% industry-standard relational database and manages common database
%% administration tasks, freeing up developers to focus on what makes their
%% applications and businesses unique.
%%
%% Amazon RDS gives you access to the capabilities of a MySQL, MariaDB,
%% PostgreSQL, Microsoft SQL Server, Oracle, or Amazon Aurora database
%% server. These capabilities mean that the code, applications, and tools you
%% already use today with your existing databases work with Amazon RDS
%% without modification. Amazon RDS automatically backs up your database and
%% maintains the database software that powers your DB instance. Amazon RDS
%% is flexible: you can scale your DB instance's compute resources and
%% storage capacity to meet your application's demand. As with all Amazon Web
%% Services, there are no up-front investments, and you pay only for the
%% resources you use.
%%
%% This interface reference for Amazon RDS contains documentation for a
%% programming or command line interface you can use to manage Amazon RDS.
%% Amazon RDS is asynchronous, which means that some interfaces might require
%% techniques such as polling or callback functions to determine when a
%% command has been applied. In this reference, the parameter descriptions
%% indicate whether a command is applied immediately, on the next instance
%% reboot, or during the maintenance window. The reference structure is as
%% follows, and we list following some related topics from the user guide.
%%
%% <b>Amazon RDS API Reference</b>
%%
%% <ul> <li> For the alphabetical list of API actions, see <a
%% href="https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_Operations.html">API
%% Actions</a>.
%%
%% </li> <li> For the alphabetical list of data types, see <a
%% href="https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_Types.html">Data
%% Types</a>.
%%
%% </li> <li> For a list of common query parameters, see <a
%% href="https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/CommonParameters.html">Common
%% Parameters</a>.
%%
%% </li> <li> For descriptions of the error codes, see <a
%% href="https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/CommonErrors.html">Common
%% Errors</a>.
%%
%% </li> </ul> <b>Amazon RDS User Guide</b>
%%
%% <ul> <li> For a summary of the Amazon RDS interfaces, see <a
%% href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Welcome.html#Welcome.Interfaces">Available
%% RDS Interfaces</a>.
%%
%% </li> <li> For more information about how to use the Query API, see <a
%% href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Using_the_Query_API.html">Using
%% the Query API</a>.
%%
%% </li> </ul>
-module(aws_rds).

-export([add_role_to_d_b_cluster/2,
         add_role_to_d_b_cluster/3,
         add_role_to_d_b_instance/2,
         add_role_to_d_b_instance/3,
         add_source_identifier_to_subscription/2,
         add_source_identifier_to_subscription/3,
         add_tags_to_resource/2,
         add_tags_to_resource/3,
         apply_pending_maintenance_action/2,
         apply_pending_maintenance_action/3,
         authorize_d_b_security_group_ingress/2,
         authorize_d_b_security_group_ingress/3,
         backtrack_d_b_cluster/2,
         backtrack_d_b_cluster/3,
         cancel_export_task/2,
         cancel_export_task/3,
         copy_d_b_cluster_parameter_group/2,
         copy_d_b_cluster_parameter_group/3,
         copy_d_b_cluster_snapshot/2,
         copy_d_b_cluster_snapshot/3,
         copy_d_b_parameter_group/2,
         copy_d_b_parameter_group/3,
         copy_d_b_snapshot/2,
         copy_d_b_snapshot/3,
         copy_option_group/2,
         copy_option_group/3,
         create_custom_availability_zone/2,
         create_custom_availability_zone/3,
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
         create_d_b_instance_read_replica/2,
         create_d_b_instance_read_replica/3,
         create_d_b_parameter_group/2,
         create_d_b_parameter_group/3,
         create_d_b_proxy/2,
         create_d_b_proxy/3,
         create_d_b_security_group/2,
         create_d_b_security_group/3,
         create_d_b_snapshot/2,
         create_d_b_snapshot/3,
         create_d_b_subnet_group/2,
         create_d_b_subnet_group/3,
         create_event_subscription/2,
         create_event_subscription/3,
         create_global_cluster/2,
         create_global_cluster/3,
         create_option_group/2,
         create_option_group/3,
         delete_custom_availability_zone/2,
         delete_custom_availability_zone/3,
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
         delete_d_b_instance_automated_backup/2,
         delete_d_b_instance_automated_backup/3,
         delete_d_b_parameter_group/2,
         delete_d_b_parameter_group/3,
         delete_d_b_proxy/2,
         delete_d_b_proxy/3,
         delete_d_b_security_group/2,
         delete_d_b_security_group/3,
         delete_d_b_snapshot/2,
         delete_d_b_snapshot/3,
         delete_d_b_subnet_group/2,
         delete_d_b_subnet_group/3,
         delete_event_subscription/2,
         delete_event_subscription/3,
         delete_global_cluster/2,
         delete_global_cluster/3,
         delete_installation_media/2,
         delete_installation_media/3,
         delete_option_group/2,
         delete_option_group/3,
         deregister_d_b_proxy_targets/2,
         deregister_d_b_proxy_targets/3,
         describe_account_attributes/2,
         describe_account_attributes/3,
         describe_certificates/2,
         describe_certificates/3,
         describe_custom_availability_zones/2,
         describe_custom_availability_zones/3,
         describe_d_b_cluster_backtracks/2,
         describe_d_b_cluster_backtracks/3,
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
         describe_d_b_instance_automated_backups/2,
         describe_d_b_instance_automated_backups/3,
         describe_d_b_instances/2,
         describe_d_b_instances/3,
         describe_d_b_log_files/2,
         describe_d_b_log_files/3,
         describe_d_b_parameter_groups/2,
         describe_d_b_parameter_groups/3,
         describe_d_b_parameters/2,
         describe_d_b_parameters/3,
         describe_d_b_proxies/2,
         describe_d_b_proxies/3,
         describe_d_b_proxy_target_groups/2,
         describe_d_b_proxy_target_groups/3,
         describe_d_b_proxy_targets/2,
         describe_d_b_proxy_targets/3,
         describe_d_b_security_groups/2,
         describe_d_b_security_groups/3,
         describe_d_b_snapshot_attributes/2,
         describe_d_b_snapshot_attributes/3,
         describe_d_b_snapshots/2,
         describe_d_b_snapshots/3,
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
         describe_export_tasks/2,
         describe_export_tasks/3,
         describe_global_clusters/2,
         describe_global_clusters/3,
         describe_installation_media/2,
         describe_installation_media/3,
         describe_option_group_options/2,
         describe_option_group_options/3,
         describe_option_groups/2,
         describe_option_groups/3,
         describe_orderable_d_b_instance_options/2,
         describe_orderable_d_b_instance_options/3,
         describe_pending_maintenance_actions/2,
         describe_pending_maintenance_actions/3,
         describe_reserved_d_b_instances/2,
         describe_reserved_d_b_instances/3,
         describe_reserved_d_b_instances_offerings/2,
         describe_reserved_d_b_instances_offerings/3,
         describe_source_regions/2,
         describe_source_regions/3,
         describe_valid_d_b_instance_modifications/2,
         describe_valid_d_b_instance_modifications/3,
         download_d_b_log_file_portion/2,
         download_d_b_log_file_portion/3,
         failover_d_b_cluster/2,
         failover_d_b_cluster/3,
         import_installation_media/2,
         import_installation_media/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         modify_certificates/2,
         modify_certificates/3,
         modify_current_d_b_cluster_capacity/2,
         modify_current_d_b_cluster_capacity/3,
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
         modify_d_b_proxy/2,
         modify_d_b_proxy/3,
         modify_d_b_proxy_target_group/2,
         modify_d_b_proxy_target_group/3,
         modify_d_b_snapshot/2,
         modify_d_b_snapshot/3,
         modify_d_b_snapshot_attribute/2,
         modify_d_b_snapshot_attribute/3,
         modify_d_b_subnet_group/2,
         modify_d_b_subnet_group/3,
         modify_event_subscription/2,
         modify_event_subscription/3,
         modify_global_cluster/2,
         modify_global_cluster/3,
         modify_option_group/2,
         modify_option_group/3,
         promote_read_replica/2,
         promote_read_replica/3,
         promote_read_replica_d_b_cluster/2,
         promote_read_replica_d_b_cluster/3,
         purchase_reserved_d_b_instances_offering/2,
         purchase_reserved_d_b_instances_offering/3,
         reboot_d_b_instance/2,
         reboot_d_b_instance/3,
         register_d_b_proxy_targets/2,
         register_d_b_proxy_targets/3,
         remove_from_global_cluster/2,
         remove_from_global_cluster/3,
         remove_role_from_d_b_cluster/2,
         remove_role_from_d_b_cluster/3,
         remove_role_from_d_b_instance/2,
         remove_role_from_d_b_instance/3,
         remove_source_identifier_from_subscription/2,
         remove_source_identifier_from_subscription/3,
         remove_tags_from_resource/2,
         remove_tags_from_resource/3,
         reset_d_b_cluster_parameter_group/2,
         reset_d_b_cluster_parameter_group/3,
         reset_d_b_parameter_group/2,
         reset_d_b_parameter_group/3,
         restore_d_b_cluster_from_s3/2,
         restore_d_b_cluster_from_s3/3,
         restore_d_b_cluster_from_snapshot/2,
         restore_d_b_cluster_from_snapshot/3,
         restore_d_b_cluster_to_point_in_time/2,
         restore_d_b_cluster_to_point_in_time/3,
         restore_d_b_instance_from_d_b_snapshot/2,
         restore_d_b_instance_from_d_b_snapshot/3,
         restore_d_b_instance_from_s3/2,
         restore_d_b_instance_from_s3/3,
         restore_d_b_instance_to_point_in_time/2,
         restore_d_b_instance_to_point_in_time/3,
         revoke_d_b_security_group_ingress/2,
         revoke_d_b_security_group_ingress/3,
         start_activity_stream/2,
         start_activity_stream/3,
         start_d_b_cluster/2,
         start_d_b_cluster/3,
         start_d_b_instance/2,
         start_d_b_instance/3,
         start_export_task/2,
         start_export_task/3,
         stop_activity_stream/2,
         stop_activity_stream/3,
         stop_d_b_cluster/2,
         stop_d_b_cluster/3,
         stop_d_b_instance/2,
         stop_d_b_instance/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Associates an Identity and Access Management (IAM) role from an
%% Amazon Aurora DB cluster. For more information, see <a
%% href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/AuroraMySQL.Integrating.Authorizing.html">Authorizing
%% Amazon Aurora MySQL to Access Other AWS Services on Your Behalf</a> in the
%% <i>Amazon Aurora User Guide</i>.
%%
%% <note> This action only applies to Aurora DB clusters.
%%
%% </note>
add_role_to_d_b_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_role_to_d_b_cluster(Client, Input, []).
add_role_to_d_b_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddRoleToDBCluster">>, Input, Options).

%% @doc Associates an AWS Identity and Access Management (IAM) role with a DB
%% instance.
%%
%% <note> To add a role to a DB instance, the status of the DB instance must
%% be <code>available</code>.
%%
%% </note>
add_role_to_d_b_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_role_to_d_b_instance(Client, Input, []).
add_role_to_d_b_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddRoleToDBInstance">>, Input, Options).

%% @doc Adds a source identifier to an existing RDS event notification
%% subscription.
add_source_identifier_to_subscription(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_source_identifier_to_subscription(Client, Input, []).
add_source_identifier_to_subscription(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddSourceIdentifierToSubscription">>, Input, Options).

%% @doc Adds metadata tags to an Amazon RDS resource. These tags can also be
%% used with cost allocation reporting to track cost associated with Amazon
%% RDS resources, or used in a Condition statement in an IAM policy for
%% Amazon RDS.
%%
%% For an overview on tagging Amazon RDS resources, see <a
%% href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Overview.Tagging.html">Tagging
%% Amazon RDS Resources</a>.
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

%% @doc Enables ingress to a DBSecurityGroup using one of two forms of
%% authorization. First, EC2 or VPC security groups can be added to the
%% DBSecurityGroup if the application using the database is running on EC2 or
%% VPC instances. Second, IP ranges are available if the application
%% accessing your database is running on the Internet. Required parameters
%% for this API are one of CIDR range, EC2SecurityGroupId for VPC, or
%% (EC2SecurityGroupOwnerId and either EC2SecurityGroupName or
%% EC2SecurityGroupId for non-VPC).
%%
%% <note> You can't authorize ingress from an EC2 security group in one AWS
%% Region to an Amazon RDS DB instance in another. You can't authorize
%% ingress from a VPC security group in one VPC to an Amazon RDS DB instance
%% in another.
%%
%% </note> For an overview of CIDR ranges, go to the <a
%% href="http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing">Wikipedia
%% Tutorial</a>.
authorize_d_b_security_group_ingress(Client, Input)
  when is_map(Client), is_map(Input) ->
    authorize_d_b_security_group_ingress(Client, Input, []).
authorize_d_b_security_group_ingress(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AuthorizeDBSecurityGroupIngress">>, Input, Options).

%% @doc Backtracks a DB cluster to a specific time, without creating a new DB
%% cluster.
%%
%% For more information on backtracking, see <a
%% href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/AuroraMySQL.Managing.Backtrack.html">
%% Backtracking an Aurora DB Cluster</a> in the <i>Amazon Aurora User
%% Guide.</i>
%%
%% <note> This action only applies to Aurora MySQL DB clusters.
%%
%% </note>
backtrack_d_b_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    backtrack_d_b_cluster(Client, Input, []).
backtrack_d_b_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BacktrackDBCluster">>, Input, Options).

%% @doc Cancels an export task in progress that is exporting a snapshot to
%% Amazon S3. Any data that has already been written to the S3 bucket isn't
%% removed.
cancel_export_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    cancel_export_task(Client, Input, []).
cancel_export_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CancelExportTask">>, Input, Options).

%% @doc Copies the specified DB cluster parameter group.
%%
%% <note> This action only applies to Aurora DB clusters.
%%
%% </note>
copy_d_b_cluster_parameter_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    copy_d_b_cluster_parameter_group(Client, Input, []).
copy_d_b_cluster_parameter_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CopyDBClusterParameterGroup">>, Input, Options).

%% @doc Copies a snapshot of a DB cluster.
%%
%% To copy a DB cluster snapshot from a shared manual DB cluster snapshot,
%% <code>SourceDBClusterSnapshotIdentifier</code> must be the Amazon Resource
%% Name (ARN) of the shared DB cluster snapshot.
%%
%% You can copy an encrypted DB cluster snapshot from another AWS Region. In
%% that case, the AWS Region where you call the
%% <code>CopyDBClusterSnapshot</code> action is the destination AWS Region
%% for the encrypted DB cluster snapshot to be copied to. To copy an
%% encrypted DB cluster snapshot from another AWS Region, you must provide
%% the following values:
%%
%% <ul> <li> <code>KmsKeyId</code> - The AWS Key Management System (AWS KMS)
%% key identifier for the key to use to encrypt the copy of the DB cluster
%% snapshot in the destination AWS Region.
%%
%% </li> <li> <code>PreSignedUrl</code> - A URL that contains a Signature
%% Version 4 signed request for the <code>CopyDBClusterSnapshot</code> action
%% to be called in the source AWS Region where the DB cluster snapshot is
%% copied from. The pre-signed URL must be a valid request for the
%% <code>CopyDBClusterSnapshot</code> API action that can be executed in the
%% source AWS Region that contains the encrypted DB cluster snapshot to be
%% copied.
%%
%% The pre-signed URL request must contain the following parameter values:
%%
%% <ul> <li> <code>KmsKeyId</code> - The KMS key identifier for the key to
%% use to encrypt the copy of the DB cluster snapshot in the destination AWS
%% Region. This is the same identifier for both the
%% <code>CopyDBClusterSnapshot</code> action that is called in the
%% destination AWS Region, and the action contained in the pre-signed URL.
%%
%% </li> <li> <code>DestinationRegion</code> - The name of the AWS Region
%% that the DB cluster snapshot is to be created in.
%%
%% </li> <li> <code>SourceDBClusterSnapshotIdentifier</code> - The DB cluster
%% snapshot identifier for the encrypted DB cluster snapshot to be copied.
%% This identifier must be in the Amazon Resource Name (ARN) format for the
%% source AWS Region. For example, if you are copying an encrypted DB cluster
%% snapshot from the us-west-2 AWS Region, then your
%% <code>SourceDBClusterSnapshotIdentifier</code> looks like the following
%% example:
%% <code>arn:aws:rds:us-west-2:123456789012:cluster-snapshot:aurora-cluster1-snapshot-20161115</code>.
%%
%% </li> </ul> To learn how to generate a Signature Version 4 signed request,
%% see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html">
%% Authenticating Requests: Using Query Parameters (AWS Signature Version
%% 4)</a> and <a
%% href="https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html">
%% Signature Version 4 Signing Process</a>.
%%
%% <note> If you are using an AWS SDK tool or the AWS CLI, you can specify
%% <code>SourceRegion</code> (or <code>--source-region</code> for the AWS
%% CLI) instead of specifying <code>PreSignedUrl</code> manually. Specifying
%% <code>SourceRegion</code> autogenerates a pre-signed URL that is a valid
%% request for the operation that can be executed in the source AWS Region.
%%
%% </note> </li> <li> <code>TargetDBClusterSnapshotIdentifier</code> - The
%% identifier for the new copy of the DB cluster snapshot in the destination
%% AWS Region.
%%
%% </li> <li> <code>SourceDBClusterSnapshotIdentifier</code> - The DB cluster
%% snapshot identifier for the encrypted DB cluster snapshot to be copied.
%% This identifier must be in the ARN format for the source AWS Region and is
%% the same value as the <code>SourceDBClusterSnapshotIdentifier</code> in
%% the pre-signed URL.
%%
%% </li> </ul> To cancel the copy operation once it is in progress, delete
%% the target DB cluster snapshot identified by
%% <code>TargetDBClusterSnapshotIdentifier</code> while that DB cluster
%% snapshot is in "copying" status.
%%
%% For more information on copying encrypted DB cluster snapshots from one
%% AWS Region to another, see <a
%% href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_CopySnapshot.html">
%% Copying a Snapshot</a> in the <i>Amazon Aurora User Guide.</i>
%%
%% For more information on Amazon Aurora, see <a
%% href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html">
%% What Is Amazon Aurora?</a> in the <i>Amazon Aurora User Guide.</i>
%%
%% <note> This action only applies to Aurora DB clusters.
%%
%% </note>
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

%% @doc Copies the specified DB snapshot. The source DB snapshot must be in
%% the "available" state.
%%
%% You can copy a snapshot from one AWS Region to another. In that case, the
%% AWS Region where you call the <code>CopyDBSnapshot</code> action is the
%% destination AWS Region for the DB snapshot copy.
%%
%% For more information about copying snapshots, see <a
%% href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_CopySnapshot.html#USER_CopyDBSnapshot">Copying
%% a DB Snapshot</a> in the <i>Amazon RDS User Guide.</i>
copy_d_b_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    copy_d_b_snapshot(Client, Input, []).
copy_d_b_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CopyDBSnapshot">>, Input, Options).

%% @doc Copies the specified option group.
copy_option_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    copy_option_group(Client, Input, []).
copy_option_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CopyOptionGroup">>, Input, Options).

%% @doc Creates a custom Availability Zone (AZ).
%%
%% A custom AZ is an on-premises AZ that is integrated with a VMware vSphere
%% cluster.
%%
%% For more information about RDS on VMware, see the <a
%% href="https://docs.aws.amazon.com/AmazonRDS/latest/RDSonVMwareUserGuide/rds-on-vmware.html">
%% <i>RDS on VMware User Guide.</i> </a>
create_custom_availability_zone(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_custom_availability_zone(Client, Input, []).
create_custom_availability_zone(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateCustomAvailabilityZone">>, Input, Options).

%% @doc Creates a new Amazon Aurora DB cluster.
%%
%% You can use the <code>ReplicationSourceIdentifier</code> parameter to
%% create the DB cluster as a read replica of another DB cluster or Amazon
%% RDS MySQL DB instance. For cross-region replication where the DB cluster
%% identified by <code>ReplicationSourceIdentifier</code> is encrypted, you
%% must also specify the <code>PreSignedUrl</code> parameter.
%%
%% For more information on Amazon Aurora, see <a
%% href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html">
%% What Is Amazon Aurora?</a> in the <i>Amazon Aurora User Guide.</i>
%%
%% <note> This action only applies to Aurora DB clusters.
%%
%% </note>
create_d_b_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_d_b_cluster(Client, Input, []).
create_d_b_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDBCluster">>, Input, Options).

%% @doc Creates a new custom endpoint and associates it with an Amazon Aurora
%% DB cluster.
%%
%% <note> This action only applies to Aurora DB clusters.
%%
%% </note>
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
%% after creating it using <code>ModifyDBClusterParameterGroup</code>. Once
%% you've created a DB cluster parameter group, you need to associate it with
%% your DB cluster using <code>ModifyDBCluster</code>. When you associate a
%% new DB cluster parameter group with a running DB cluster, you need to
%% reboot the DB instances in the DB cluster without failover for the new DB
%% cluster parameter group and associated settings to take effect.
%%
%% <important> After you create a DB cluster parameter group, you should wait
%% at least 5 minutes before creating your first DB cluster that uses that DB
%% cluster parameter group as the default parameter group. This allows Amazon
%% RDS to fully complete the create action before the DB cluster parameter
%% group is used as the default for a new DB cluster. This is especially
%% important for parameters that are critical when creating the default
%% database for a DB cluster, such as the character set for the default
%% database defined by the <code>character_set_database</code> parameter. You
%% can use the <i>Parameter Groups</i> option of the <a
%% href="https://console.aws.amazon.com/rds/">Amazon RDS console</a> or the
%% <code>DescribeDBClusterParameters</code> action to verify that your DB
%% cluster parameter group has been created or modified.
%%
%% </important> For more information on Amazon Aurora, see <a
%% href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html">
%% What Is Amazon Aurora?</a> in the <i>Amazon Aurora User Guide.</i>
%%
%% <note> This action only applies to Aurora DB clusters.
%%
%% </note>
create_d_b_cluster_parameter_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_d_b_cluster_parameter_group(Client, Input, []).
create_d_b_cluster_parameter_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDBClusterParameterGroup">>, Input, Options).

%% @doc Creates a snapshot of a DB cluster. For more information on Amazon
%% Aurora, see <a
%% href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html">
%% What Is Amazon Aurora?</a> in the <i>Amazon Aurora User Guide.</i>
%%
%% <note> This action only applies to Aurora DB clusters.
%%
%% </note>
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

%% @doc Creates a new DB instance that acts as a read replica for an existing
%% source DB instance. You can create a read replica for a DB instance
%% running MySQL, MariaDB, Oracle, PostgreSQL, or SQL Server. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_ReadRepl.html">Working
%% with Read Replicas</a> in the <i>Amazon RDS User Guide</i>.
%%
%% Amazon Aurora doesn't support this action. Call the
%% <code>CreateDBInstance</code> action to create a DB instance for an Aurora
%% DB cluster.
%%
%% All read replica DB instances are created with backups disabled. All other
%% DB instance attributes (including DB security groups and DB parameter
%% groups) are inherited from the source DB instance, except as specified.
%%
%% <important> Your source DB instance must have backup retention enabled.
%%
%% </important>
create_d_b_instance_read_replica(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_d_b_instance_read_replica(Client, Input, []).
create_d_b_instance_read_replica(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDBInstanceReadReplica">>, Input, Options).

%% @doc Creates a new DB parameter group.
%%
%% A DB parameter group is initially created with the default parameters for
%% the database engine used by the DB instance. To provide custom values for
%% any of the parameters, you must modify the group after creating it using
%% <i>ModifyDBParameterGroup</i>. Once you've created a DB parameter group,
%% you need to associate it with your DB instance using
%% <i>ModifyDBInstance</i>. When you associate a new DB parameter group with
%% a running DB instance, you need to reboot the DB instance without failover
%% for the new DB parameter group and associated settings to take effect.
%%
%% <important> After you create a DB parameter group, you should wait at
%% least 5 minutes before creating your first DB instance that uses that DB
%% parameter group as the default parameter group. This allows Amazon RDS to
%% fully complete the create action before the parameter group is used as the
%% default for a new DB instance. This is especially important for parameters
%% that are critical when creating the default database for a DB instance,
%% such as the character set for the default database defined by the
%% <code>character_set_database</code> parameter. You can use the
%% <i>Parameter Groups</i> option of the <a
%% href="https://console.aws.amazon.com/rds/">Amazon RDS console</a> or the
%% <i>DescribeDBParameters</i> command to verify that your DB parameter group
%% has been created or modified.
%%
%% </important>
create_d_b_parameter_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_d_b_parameter_group(Client, Input, []).
create_d_b_parameter_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDBParameterGroup">>, Input, Options).

%% @doc Creates a new DB proxy.
create_d_b_proxy(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_d_b_proxy(Client, Input, []).
create_d_b_proxy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDBProxy">>, Input, Options).

%% @doc Creates a new DB security group. DB security groups control access to
%% a DB instance.
%%
%% <note> A DB security group controls access to EC2-Classic DB instances
%% that are not in a VPC.
%%
%% </note>
create_d_b_security_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_d_b_security_group(Client, Input, []).
create_d_b_security_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDBSecurityGroup">>, Input, Options).

%% @doc Creates a DBSnapshot. The source DBInstance must be in "available"
%% state.
create_d_b_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_d_b_snapshot(Client, Input, []).
create_d_b_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDBSnapshot">>, Input, Options).

%% @doc Creates a new DB subnet group. DB subnet groups must contain at least
%% one subnet in at least two AZs in the AWS Region.
create_d_b_subnet_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_d_b_subnet_group(Client, Input, []).
create_d_b_subnet_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDBSubnetGroup">>, Input, Options).

%% @doc Creates an RDS event notification subscription. This action requires
%% a topic Amazon Resource Name (ARN) created by either the RDS console, the
%% SNS console, or the SNS API. To obtain an ARN with SNS, you must create a
%% topic in Amazon SNS and subscribe to the topic. The ARN is displayed in
%% the SNS console.
%%
%% You can specify the type of source (SourceType) you want to be notified
%% of, provide a list of RDS sources (SourceIds) that triggers the events,
%% and provide a list of event categories (EventCategories) for events you
%% want to be notified of. For example, you can specify SourceType =
%% db-instance, SourceIds = mydbinstance1, mydbinstance2 and EventCategories
%% = Availability, Backup.
%%
%% If you specify both the SourceType and SourceIds, such as SourceType =
%% db-instance and SourceIdentifier = myDBInstance1, you are notified of all
%% the db-instance events for the specified source. If you specify a
%% SourceType but do not specify a SourceIdentifier, you receive notice of
%% the events for that source type for all your RDS sources. If you don't
%% specify either the SourceType or the SourceIdentifier, you are notified of
%% events generated from all RDS sources belonging to your customer account.
%%
%% <note> RDS event notification is only available for unencrypted SNS
%% topics. If you specify an encrypted SNS topic, event notifications aren't
%% sent for the topic.
%%
%% </note>
create_event_subscription(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_event_subscription(Client, Input, []).
create_event_subscription(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateEventSubscription">>, Input, Options).

%% @doc Creates an Aurora global database spread across multiple regions. The
%% global database contains a single primary cluster with read-write
%% capability, and a read-only secondary cluster that receives data from the
%% primary cluster through high-speed replication performed by the Aurora
%% storage subsystem.
%%
%% You can create a global database that is initially empty, and then add a
%% primary cluster and a secondary cluster to it. Or you can specify an
%% existing Aurora cluster during the create operation, and this cluster
%% becomes the primary cluster of the global database.
%%
%% <note> This action only applies to Aurora DB clusters.
%%
%% </note>
create_global_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_global_cluster(Client, Input, []).
create_global_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateGlobalCluster">>, Input, Options).

%% @doc Creates a new option group. You can create up to 20 option groups.
create_option_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_option_group(Client, Input, []).
create_option_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateOptionGroup">>, Input, Options).

%% @doc Deletes a custom Availability Zone (AZ).
%%
%% A custom AZ is an on-premises AZ that is integrated with a VMware vSphere
%% cluster.
%%
%% For more information about RDS on VMware, see the <a
%% href="https://docs.aws.amazon.com/AmazonRDS/latest/RDSonVMwareUserGuide/rds-on-vmware.html">
%% <i>RDS on VMware User Guide.</i> </a>
delete_custom_availability_zone(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_custom_availability_zone(Client, Input, []).
delete_custom_availability_zone(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteCustomAvailabilityZone">>, Input, Options).

%% @doc The DeleteDBCluster action deletes a previously provisioned DB
%% cluster. When you delete a DB cluster, all automated backups for that DB
%% cluster are deleted and can't be recovered. Manual DB cluster snapshots of
%% the specified DB cluster are not deleted.
%%
%% <p/> For more information on Amazon Aurora, see <a
%% href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html">
%% What Is Amazon Aurora?</a> in the <i>Amazon Aurora User Guide.</i>
%%
%% <note> This action only applies to Aurora DB clusters.
%%
%% </note>
delete_d_b_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_d_b_cluster(Client, Input, []).
delete_d_b_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDBCluster">>, Input, Options).

%% @doc Deletes a custom endpoint and removes it from an Amazon Aurora DB
%% cluster.
%%
%% <note> This action only applies to Aurora DB clusters.
%%
%% </note>
delete_d_b_cluster_endpoint(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_d_b_cluster_endpoint(Client, Input, []).
delete_d_b_cluster_endpoint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDBClusterEndpoint">>, Input, Options).

%% @doc Deletes a specified DB cluster parameter group. The DB cluster
%% parameter group to be deleted can't be associated with any DB clusters.
%%
%% For more information on Amazon Aurora, see <a
%% href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html">
%% What Is Amazon Aurora?</a> in the <i>Amazon Aurora User Guide.</i>
%%
%% <note> This action only applies to Aurora DB clusters.
%%
%% </note>
delete_d_b_cluster_parameter_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_d_b_cluster_parameter_group(Client, Input, []).
delete_d_b_cluster_parameter_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDBClusterParameterGroup">>, Input, Options).

%% @doc Deletes a DB cluster snapshot. If the snapshot is being copied, the
%% copy operation is terminated.
%%
%% <note> The DB cluster snapshot must be in the <code>available</code> state
%% to be deleted.
%%
%% </note> For more information on Amazon Aurora, see <a
%% href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html">
%% What Is Amazon Aurora?</a> in the <i>Amazon Aurora User Guide.</i>
%%
%% <note> This action only applies to Aurora DB clusters.
%%
%% </note>
delete_d_b_cluster_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_d_b_cluster_snapshot(Client, Input, []).
delete_d_b_cluster_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDBClusterSnapshot">>, Input, Options).

%% @doc The DeleteDBInstance action deletes a previously provisioned DB
%% instance. When you delete a DB instance, all automated backups for that
%% instance are deleted and can't be recovered. Manual DB snapshots of the DB
%% instance to be deleted by <code>DeleteDBInstance</code> are not deleted.
%%
%% If you request a final DB snapshot the status of the Amazon RDS DB
%% instance is <code>deleting</code> until the DB snapshot is created. The
%% API action <code>DescribeDBInstance</code> is used to monitor the status
%% of this operation. The action can't be canceled or reverted once
%% submitted.
%%
%% When a DB instance is in a failure state and has a status of
%% <code>failed</code>, <code>incompatible-restore</code>, or
%% <code>incompatible-network</code>, you can only delete it when you skip
%% creation of the final snapshot with the <code>SkipFinalSnapshot</code>
%% parameter.
%%
%% If the specified DB instance is part of an Amazon Aurora DB cluster, you
%% can't delete the DB instance if both of the following conditions are true:
%%
%% <ul> <li> The DB cluster is a read replica of another Amazon Aurora DB
%% cluster.
%%
%% </li> <li> The DB instance is the only instance in the DB cluster.
%%
%% </li> </ul> To delete a DB instance in this case, first call the
%% <code>PromoteReadReplicaDBCluster</code> API action to promote the DB
%% cluster so it's no longer a read replica. After the promotion completes,
%% then call the <code>DeleteDBInstance</code> API action to delete the final
%% instance in the DB cluster.
delete_d_b_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_d_b_instance(Client, Input, []).
delete_d_b_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDBInstance">>, Input, Options).

%% @doc Deletes automated backups based on the source instance's
%% <code>DbiResourceId</code> value or the restorable instance's resource ID.
delete_d_b_instance_automated_backup(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_d_b_instance_automated_backup(Client, Input, []).
delete_d_b_instance_automated_backup(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDBInstanceAutomatedBackup">>, Input, Options).

%% @doc Deletes a specified DB parameter group. The DB parameter group to be
%% deleted can't be associated with any DB instances.
delete_d_b_parameter_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_d_b_parameter_group(Client, Input, []).
delete_d_b_parameter_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDBParameterGroup">>, Input, Options).

%% @doc Deletes an existing proxy.
delete_d_b_proxy(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_d_b_proxy(Client, Input, []).
delete_d_b_proxy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDBProxy">>, Input, Options).

%% @doc Deletes a DB security group.
%%
%% <note> The specified DB security group must not be associated with any DB
%% instances.
%%
%% </note>
delete_d_b_security_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_d_b_security_group(Client, Input, []).
delete_d_b_security_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDBSecurityGroup">>, Input, Options).

%% @doc Deletes a DB snapshot. If the snapshot is being copied, the copy
%% operation is terminated.
%%
%% <note> The DB snapshot must be in the <code>available</code> state to be
%% deleted.
%%
%% </note>
delete_d_b_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_d_b_snapshot(Client, Input, []).
delete_d_b_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDBSnapshot">>, Input, Options).

%% @doc Deletes a DB subnet group.
%%
%% <note> The specified database subnet group must not be associated with any
%% DB instances.
%%
%% </note>
delete_d_b_subnet_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_d_b_subnet_group(Client, Input, []).
delete_d_b_subnet_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDBSubnetGroup">>, Input, Options).

%% @doc Deletes an RDS event notification subscription.
delete_event_subscription(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_event_subscription(Client, Input, []).
delete_event_subscription(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteEventSubscription">>, Input, Options).

%% @doc Deletes a global database cluster. The primary and secondary clusters
%% must already be detached or destroyed first.
%%
%% <note> This action only applies to Aurora DB clusters.
%%
%% </note>
delete_global_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_global_cluster(Client, Input, []).
delete_global_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteGlobalCluster">>, Input, Options).

%% @doc Deletes the installation medium for a DB engine that requires an
%% on-premises customer provided license, such as Microsoft SQL Server.
delete_installation_media(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_installation_media(Client, Input, []).
delete_installation_media(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteInstallationMedia">>, Input, Options).

%% @doc Deletes an existing option group.
delete_option_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_option_group(Client, Input, []).
delete_option_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteOptionGroup">>, Input, Options).

%% @doc Remove the association between one or more <code>DBProxyTarget</code>
%% data structures and a <code>DBProxyTargetGroup</code>.
deregister_d_b_proxy_targets(Client, Input)
  when is_map(Client), is_map(Input) ->
    deregister_d_b_proxy_targets(Client, Input, []).
deregister_d_b_proxy_targets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeregisterDBProxyTargets">>, Input, Options).

%% @doc Lists all of the attributes for a customer account. The attributes
%% include Amazon RDS quotas for the account, such as the number of DB
%% instances allowed. The description for a quota includes the quota name,
%% current usage toward that quota, and the quota's maximum value.
%%
%% This command doesn't take any parameters.
describe_account_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_account_attributes(Client, Input, []).
describe_account_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAccountAttributes">>, Input, Options).

%% @doc Lists the set of CA certificates provided by Amazon RDS for this AWS
%% account.
describe_certificates(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_certificates(Client, Input, []).
describe_certificates(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeCertificates">>, Input, Options).

%% @doc Returns information about custom Availability Zones (AZs).
%%
%% A custom AZ is an on-premises AZ that is integrated with a VMware vSphere
%% cluster.
%%
%% For more information about RDS on VMware, see the <a
%% href="https://docs.aws.amazon.com/AmazonRDS/latest/RDSonVMwareUserGuide/rds-on-vmware.html">
%% <i>RDS on VMware User Guide.</i> </a>
describe_custom_availability_zones(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_custom_availability_zones(Client, Input, []).
describe_custom_availability_zones(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeCustomAvailabilityZones">>, Input, Options).

%% @doc Returns information about backtracks for a DB cluster.
%%
%% For more information on Amazon Aurora, see <a
%% href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html">
%% What Is Amazon Aurora?</a> in the <i>Amazon Aurora User Guide.</i>
%%
%% <note> This action only applies to Aurora MySQL DB clusters.
%%
%% </note>
describe_d_b_cluster_backtracks(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_d_b_cluster_backtracks(Client, Input, []).
describe_d_b_cluster_backtracks(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDBClusterBacktracks">>, Input, Options).

%% @doc Returns information about endpoints for an Amazon Aurora DB cluster.
%%
%% <note> This action only applies to Aurora DB clusters.
%%
%% </note>
describe_d_b_cluster_endpoints(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_d_b_cluster_endpoints(Client, Input, []).
describe_d_b_cluster_endpoints(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDBClusterEndpoints">>, Input, Options).

%% @doc Returns a list of <code>DBClusterParameterGroup</code> descriptions.
%% If a <code>DBClusterParameterGroupName</code> parameter is specified, the
%% list will contain only the description of the specified DB cluster
%% parameter group.
%%
%% For more information on Amazon Aurora, see <a
%% href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html">
%% What Is Amazon Aurora?</a> in the <i>Amazon Aurora User Guide.</i>
%%
%% <note> This action only applies to Aurora DB clusters.
%%
%% </note>
describe_d_b_cluster_parameter_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_d_b_cluster_parameter_groups(Client, Input, []).
describe_d_b_cluster_parameter_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDBClusterParameterGroups">>, Input, Options).

%% @doc Returns the detailed parameter list for a particular DB cluster
%% parameter group.
%%
%% For more information on Amazon Aurora, see <a
%% href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html">
%% What Is Amazon Aurora?</a> in the <i>Amazon Aurora User Guide.</i>
%%
%% <note> This action only applies to Aurora DB clusters.
%%
%% </note>
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
%% <code>DescribeDBClusterSnapshotAttributes</code> returns the
%% <code>restore</code> attribute and a list of IDs for the AWS accounts that
%% are authorized to copy or restore the manual DB cluster snapshot. If
%% <code>all</code> is included in the list of values for the
%% <code>restore</code> attribute, then the manual DB cluster snapshot is
%% public and can be copied or restored by all AWS accounts.
%%
%% To add or remove access for an AWS account to copy or restore a manual DB
%% cluster snapshot, or to make the manual DB cluster snapshot public or
%% private, use the <code>ModifyDBClusterSnapshotAttribute</code> API action.
%%
%% <note> This action only applies to Aurora DB clusters.
%%
%% </note>
describe_d_b_cluster_snapshot_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_d_b_cluster_snapshot_attributes(Client, Input, []).
describe_d_b_cluster_snapshot_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDBClusterSnapshotAttributes">>, Input, Options).

%% @doc Returns information about DB cluster snapshots. This API action
%% supports pagination.
%%
%% For more information on Amazon Aurora, see <a
%% href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html">
%% What Is Amazon Aurora?</a> in the <i>Amazon Aurora User Guide.</i>
%%
%% <note> This action only applies to Aurora DB clusters.
%%
%% </note>
describe_d_b_cluster_snapshots(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_d_b_cluster_snapshots(Client, Input, []).
describe_d_b_cluster_snapshots(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDBClusterSnapshots">>, Input, Options).

%% @doc Returns information about provisioned Aurora DB clusters. This API
%% supports pagination.
%%
%% For more information on Amazon Aurora, see <a
%% href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html">
%% What Is Amazon Aurora?</a> in the <i>Amazon Aurora User Guide.</i>
%%
%% <note> This operation can also return information for Amazon Neptune DB
%% instances and Amazon DocumentDB instances.
%%
%% </note>
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

%% @doc Displays backups for both current and deleted instances. For example,
%% use this operation to find details about automated backups for previously
%% deleted instances. Current instances with retention periods greater than
%% zero (0) are returned for both the
%% <code>DescribeDBInstanceAutomatedBackups</code> and
%% <code>DescribeDBInstances</code> operations.
%%
%% All parameters are optional.
describe_d_b_instance_automated_backups(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_d_b_instance_automated_backups(Client, Input, []).
describe_d_b_instance_automated_backups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDBInstanceAutomatedBackups">>, Input, Options).

%% @doc Returns information about provisioned RDS instances. This API
%% supports pagination.
%%
%% <note> This operation can also return information for Amazon Neptune DB
%% instances and Amazon DocumentDB instances.
%%
%% </note>
describe_d_b_instances(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_d_b_instances(Client, Input, []).
describe_d_b_instances(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDBInstances">>, Input, Options).

%% @doc Returns a list of DB log files for the DB instance.
describe_d_b_log_files(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_d_b_log_files(Client, Input, []).
describe_d_b_log_files(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDBLogFiles">>, Input, Options).

%% @doc Returns a list of <code>DBParameterGroup</code> descriptions. If a
%% <code>DBParameterGroupName</code> is specified, the list will contain only
%% the description of the specified DB parameter group.
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

%% @doc Returns information about DB proxies.
describe_d_b_proxies(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_d_b_proxies(Client, Input, []).
describe_d_b_proxies(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDBProxies">>, Input, Options).

%% @doc Returns information about DB proxy target groups, represented by
%% <code>DBProxyTargetGroup</code> data structures.
describe_d_b_proxy_target_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_d_b_proxy_target_groups(Client, Input, []).
describe_d_b_proxy_target_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDBProxyTargetGroups">>, Input, Options).

%% @doc Returns information about <code>DBProxyTarget</code> objects. This
%% API supports pagination.
describe_d_b_proxy_targets(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_d_b_proxy_targets(Client, Input, []).
describe_d_b_proxy_targets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDBProxyTargets">>, Input, Options).

%% @doc Returns a list of <code>DBSecurityGroup</code> descriptions. If a
%% <code>DBSecurityGroupName</code> is specified, the list will contain only
%% the descriptions of the specified DB security group.
describe_d_b_security_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_d_b_security_groups(Client, Input, []).
describe_d_b_security_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDBSecurityGroups">>, Input, Options).

%% @doc Returns a list of DB snapshot attribute names and values for a manual
%% DB snapshot.
%%
%% When sharing snapshots with other AWS accounts,
%% <code>DescribeDBSnapshotAttributes</code> returns the <code>restore</code>
%% attribute and a list of IDs for the AWS accounts that are authorized to
%% copy or restore the manual DB snapshot. If <code>all</code> is included in
%% the list of values for the <code>restore</code> attribute, then the manual
%% DB snapshot is public and can be copied or restored by all AWS accounts.
%%
%% To add or remove access for an AWS account to copy or restore a manual DB
%% snapshot, or to make the manual DB snapshot public or private, use the
%% <code>ModifyDBSnapshotAttribute</code> API action.
describe_d_b_snapshot_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_d_b_snapshot_attributes(Client, Input, []).
describe_d_b_snapshot_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDBSnapshotAttributes">>, Input, Options).

%% @doc Returns information about DB snapshots. This API action supports
%% pagination.
describe_d_b_snapshots(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_d_b_snapshots(Client, Input, []).
describe_d_b_snapshots(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDBSnapshots">>, Input, Options).

%% @doc Returns a list of DBSubnetGroup descriptions. If a DBSubnetGroupName
%% is specified, the list will contain only the descriptions of the specified
%% DBSubnetGroup.
%%
%% For an overview of CIDR ranges, go to the <a
%% href="http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing">Wikipedia
%% Tutorial</a>.
describe_d_b_subnet_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_d_b_subnet_groups(Client, Input, []).
describe_d_b_subnet_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDBSubnetGroups">>, Input, Options).

%% @doc Returns the default engine and system parameter information for the
%% cluster database engine.
%%
%% For more information on Amazon Aurora, see <a
%% href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html">
%% What Is Amazon Aurora?</a> in the <i>Amazon Aurora User Guide.</i>
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
%% specified, for a specified source type. You can see a list of the event
%% categories and source types in the <a
%% href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Events.html">
%% Events</a> topic in the <i>Amazon RDS User Guide.</i>
describe_event_categories(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_event_categories(Client, Input, []).
describe_event_categories(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEventCategories">>, Input, Options).

%% @doc Lists all the subscription descriptions for a customer account. The
%% description for a subscription includes SubscriptionName, SNSTopicARN,
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
%% snapshots, and DB parameter groups for the past 14 days. Events specific
%% to a particular DB instance, DB security group, database snapshot, or DB
%% parameter group can be obtained by providing the name as a parameter. By
%% default, the past hour of events are returned.
describe_events(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_events(Client, Input, []).
describe_events(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEvents">>, Input, Options).

%% @doc Returns information about a snapshot export to Amazon S3. This API
%% operation supports pagination.
describe_export_tasks(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_export_tasks(Client, Input, []).
describe_export_tasks(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeExportTasks">>, Input, Options).

%% @doc Returns information about Aurora global database clusters. This API
%% supports pagination.
%%
%% For more information on Amazon Aurora, see <a
%% href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html">
%% What Is Amazon Aurora?</a> in the <i>Amazon Aurora User Guide.</i>
%%
%% <note> This action only applies to Aurora DB clusters.
%%
%% </note>
describe_global_clusters(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_global_clusters(Client, Input, []).
describe_global_clusters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeGlobalClusters">>, Input, Options).

%% @doc Describes the available installation media for a DB engine that
%% requires an on-premises customer provided license, such as Microsoft SQL
%% Server.
describe_installation_media(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_installation_media(Client, Input, []).
describe_installation_media(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeInstallationMedia">>, Input, Options).

%% @doc Describes all available options.
describe_option_group_options(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_option_group_options(Client, Input, []).
describe_option_group_options(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeOptionGroupOptions">>, Input, Options).

%% @doc Describes the available option groups.
describe_option_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_option_groups(Client, Input, []).
describe_option_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeOptionGroups">>, Input, Options).

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

%% @doc Returns information about reserved DB instances for this account, or
%% about a specified reserved DB instance.
describe_reserved_d_b_instances(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_reserved_d_b_instances(Client, Input, []).
describe_reserved_d_b_instances(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeReservedDBInstances">>, Input, Options).

%% @doc Lists available reserved DB instance offerings.
describe_reserved_d_b_instances_offerings(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_reserved_d_b_instances_offerings(Client, Input, []).
describe_reserved_d_b_instances_offerings(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeReservedDBInstancesOfferings">>, Input, Options).

%% @doc Returns a list of the source AWS Regions where the current AWS Region
%% can create a read replica or copy a DB snapshot from. This API action
%% supports pagination.
describe_source_regions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_source_regions(Client, Input, []).
describe_source_regions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeSourceRegions">>, Input, Options).

%% @doc You can call <code>DescribeValidDBInstanceModifications</code> to
%% learn what modifications you can make to your DB instance. You can use
%% this information when you call <code>ModifyDBInstance</code>.
describe_valid_d_b_instance_modifications(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_valid_d_b_instance_modifications(Client, Input, []).
describe_valid_d_b_instance_modifications(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeValidDBInstanceModifications">>, Input, Options).

%% @doc Downloads all or a portion of the specified log file, up to 1 MB in
%% size.
download_d_b_log_file_portion(Client, Input)
  when is_map(Client), is_map(Input) ->
    download_d_b_log_file_portion(Client, Input, []).
download_d_b_log_file_portion(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DownloadDBLogFilePortion">>, Input, Options).

%% @doc Forces a failover for a DB cluster.
%%
%% A failover for a DB cluster promotes one of the Aurora Replicas (read-only
%% instances) in the DB cluster to be the primary instance (the cluster
%% writer).
%%
%% Amazon Aurora will automatically fail over to an Aurora Replica, if one
%% exists, when the primary instance fails. You can force a failover when you
%% want to simulate a failure of a primary instance for testing. Because each
%% instance in a DB cluster has its own endpoint address, you will need to
%% clean up and re-establish any existing connections that use those endpoint
%% addresses when the failover is complete.
%%
%% For more information on Amazon Aurora, see <a
%% href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html">
%% What Is Amazon Aurora?</a> in the <i>Amazon Aurora User Guide.</i>
%%
%% <note> This action only applies to Aurora DB clusters.
%%
%% </note>
failover_d_b_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    failover_d_b_cluster(Client, Input, []).
failover_d_b_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"FailoverDBCluster">>, Input, Options).

%% @doc Imports the installation media for a DB engine that requires an
%% on-premises customer provided license, such as SQL Server.
import_installation_media(Client, Input)
  when is_map(Client), is_map(Input) ->
    import_installation_media(Client, Input, []).
import_installation_media(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ImportInstallationMedia">>, Input, Options).

%% @doc Lists all tags on an Amazon RDS resource.
%%
%% For an overview on tagging an Amazon RDS resource, see <a
%% href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Overview.Tagging.html">Tagging
%% Amazon RDS Resources</a> in the <i>Amazon RDS User Guide</i>.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Override the system-default Secure Sockets Layer/Transport Layer
%% Security (SSL/TLS) certificate for Amazon RDS for new DB instances
%% temporarily, or remove the override.
%%
%% By using this operation, you can specify an RDS-approved SSL/TLS
%% certificate for new DB instances that is different from the default
%% certificate provided by RDS. You can also use this operation to remove the
%% override, so that new DB instances use the default certificate provided by
%% RDS.
%%
%% You might need to override the default certificate in the following
%% situations:
%%
%% <ul> <li> You already migrated your applications to support the latest
%% certificate authority (CA) certificate, but the new CA certificate is not
%% yet the RDS default CA certificate for the specified AWS Region.
%%
%% </li> <li> RDS has already moved to a new default CA certificate for the
%% specified AWS Region, but you are still in the process of supporting the
%% new CA certificate. In this case, you temporarily need additional time to
%% finish your application changes.
%%
%% </li> </ul> For more information about rotating your SSL/TLS certificate
%% for RDS DB engines, see <a
%% href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.SSL-certificate-rotation.html">
%% Rotating Your SSL/TLS Certificate</a> in the <i>Amazon RDS User Guide</i>.
%%
%% For more information about rotating your SSL/TLS certificate for Aurora DB
%% engines, see <a
%% href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/UsingWithRDS.SSL-certificate-rotation.html">
%% Rotating Your SSL/TLS Certificate</a> in the <i>Amazon Aurora User
%% Guide</i>.
modify_certificates(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_certificates(Client, Input, []).
modify_certificates(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyCertificates">>, Input, Options).

%% @doc Set the capacity of an Aurora Serverless DB cluster to a specific
%% value.
%%
%% Aurora Serverless scales seamlessly based on the workload on the DB
%% cluster. In some cases, the capacity might not scale fast enough to meet a
%% sudden change in workload, such as a large number of new transactions.
%% Call <code>ModifyCurrentDBClusterCapacity</code> to set the capacity
%% explicitly.
%%
%% After this call sets the DB cluster capacity, Aurora Serverless can
%% automatically scale the DB cluster based on the cooldown period for
%% scaling up and the cooldown period for scaling down.
%%
%% For more information about Aurora Serverless, see <a
%% href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless.html">Using
%% Amazon Aurora Serverless</a> in the <i>Amazon Aurora User Guide</i>.
%%
%% <important> If you call <code>ModifyCurrentDBClusterCapacity</code> with
%% the default <code>TimeoutAction</code>, connections that prevent Aurora
%% Serverless from finding a scaling point might be dropped. For more
%% information about scaling points, see <a
%% href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless.how-it-works.html#aurora-serverless.how-it-works.auto-scaling">
%% Autoscaling for Aurora Serverless</a> in the <i>Amazon Aurora User
%% Guide</i>.
%%
%% </important> <note> This action only applies to Aurora DB clusters.
%%
%% </note>
modify_current_d_b_cluster_capacity(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_current_d_b_cluster_capacity(Client, Input, []).
modify_current_d_b_cluster_capacity(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyCurrentDBClusterCapacity">>, Input, Options).

%% @doc Modify a setting for an Amazon Aurora DB cluster. You can change one
%% or more database configuration parameters by specifying these parameters
%% and the new values in the request. For more information on Amazon Aurora,
%% see <a
%% href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html">
%% What Is Amazon Aurora?</a> in the <i>Amazon Aurora User Guide.</i>
%%
%% <note> This action only applies to Aurora DB clusters.
%%
%% </note>
modify_d_b_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_d_b_cluster(Client, Input, []).
modify_d_b_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyDBCluster">>, Input, Options).

%% @doc Modifies the properties of an endpoint in an Amazon Aurora DB
%% cluster.
%%
%% <note> This action only applies to Aurora DB clusters.
%%
%% </note>
modify_d_b_cluster_endpoint(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_d_b_cluster_endpoint(Client, Input, []).
modify_d_b_cluster_endpoint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyDBClusterEndpoint">>, Input, Options).

%% @doc Modifies the parameters of a DB cluster parameter group. To modify
%% more than one parameter, submit a list of the following:
%% <code>ParameterName</code>, <code>ParameterValue</code>, and
%% <code>ApplyMethod</code>. A maximum of 20 parameters can be modified in a
%% single request.
%%
%% For more information on Amazon Aurora, see <a
%% href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html">
%% What Is Amazon Aurora?</a> in the <i>Amazon Aurora User Guide.</i>
%%
%% <note> Changes to dynamic parameters are applied immediately. Changes to
%% static parameters require a reboot without failover to the DB cluster
%% associated with the parameter group before the change can take effect.
%%
%% </note> <important> After you create a DB cluster parameter group, you
%% should wait at least 5 minutes before creating your first DB cluster that
%% uses that DB cluster parameter group as the default parameter group. This
%% allows Amazon RDS to fully complete the create action before the parameter
%% group is used as the default for a new DB cluster. This is especially
%% important for parameters that are critical when creating the default
%% database for a DB cluster, such as the character set for the default
%% database defined by the <code>character_set_database</code> parameter. You
%% can use the <i>Parameter Groups</i> option of the <a
%% href="https://console.aws.amazon.com/rds/">Amazon RDS console</a> or the
%% <code>DescribeDBClusterParameters</code> action to verify that your DB
%% cluster parameter group has been created or modified.
%%
%% If the modified DB cluster parameter group is used by an Aurora Serverless
%% cluster, Aurora applies the update immediately. The cluster restart might
%% interrupt your workload. In that case, your application must reopen any
%% connections and retry any transactions that were active when the parameter
%% changes took effect.
%%
%% </important> <note> This action only applies to Aurora DB clusters.
%%
%% </note>
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
%% <code>restore</code> as the <code>AttributeName</code> and use the
%% <code>ValuesToAdd</code> parameter to add a list of IDs of the AWS
%% accounts that are authorized to restore the manual DB cluster snapshot.
%% Use the value <code>all</code> to make the manual DB cluster snapshot
%% public, which means that it can be copied or restored by all AWS accounts.
%%
%% <note> Don't add the <code>all</code> value for any manual DB cluster
%% snapshots that contain private information that you don't want available
%% to all AWS accounts.
%%
%% </note> If a manual DB cluster snapshot is encrypted, it can be shared,
%% but only by specifying a list of authorized AWS account IDs for the
%% <code>ValuesToAdd</code> parameter. You can't use <code>all</code> as a
%% value for that parameter in this case.
%%
%% To view which AWS accounts have access to copy or restore a manual DB
%% cluster snapshot, or whether a manual DB cluster snapshot is public or
%% private, use the <a>DescribeDBClusterSnapshotAttributes</a> API action.
%% The accounts are returned as values for the <code>restore</code>
%% attribute.
%%
%% <note> This action only applies to Aurora DB clusters.
%%
%% </note>
modify_d_b_cluster_snapshot_attribute(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_d_b_cluster_snapshot_attribute(Client, Input, []).
modify_d_b_cluster_snapshot_attribute(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyDBClusterSnapshotAttribute">>, Input, Options).

%% @doc Modifies settings for a DB instance. You can change one or more
%% database configuration parameters by specifying these parameters and the
%% new values in the request. To learn what modifications you can make to
%% your DB instance, call <code>DescribeValidDBInstanceModifications</code>
%% before you call <code>ModifyDBInstance</code>.
modify_d_b_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_d_b_instance(Client, Input, []).
modify_d_b_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyDBInstance">>, Input, Options).

%% @doc Modifies the parameters of a DB parameter group. To modify more than
%% one parameter, submit a list of the following: <code>ParameterName</code>,
%% <code>ParameterValue</code>, and <code>ApplyMethod</code>. A maximum of 20
%% parameters can be modified in a single request.
%%
%% <note> Changes to dynamic parameters are applied immediately. Changes to
%% static parameters require a reboot without failover to the DB instance
%% associated with the parameter group before the change can take effect.
%%
%% </note> <important> After you modify a DB parameter group, you should wait
%% at least 5 minutes before creating your first DB instance that uses that
%% DB parameter group as the default parameter group. This allows Amazon RDS
%% to fully complete the modify action before the parameter group is used as
%% the default for a new DB instance. This is especially important for
%% parameters that are critical when creating the default database for a DB
%% instance, such as the character set for the default database defined by
%% the <code>character_set_database</code> parameter. You can use the
%% <i>Parameter Groups</i> option of the <a
%% href="https://console.aws.amazon.com/rds/">Amazon RDS console</a> or the
%% <i>DescribeDBParameters</i> command to verify that your DB parameter group
%% has been created or modified.
%%
%% </important>
modify_d_b_parameter_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_d_b_parameter_group(Client, Input, []).
modify_d_b_parameter_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyDBParameterGroup">>, Input, Options).

%% @doc Changes the settings for an existing DB proxy.
modify_d_b_proxy(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_d_b_proxy(Client, Input, []).
modify_d_b_proxy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyDBProxy">>, Input, Options).

%% @doc Modifies the properties of a <code>DBProxyTargetGroup</code>.
modify_d_b_proxy_target_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_d_b_proxy_target_group(Client, Input, []).
modify_d_b_proxy_target_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyDBProxyTargetGroup">>, Input, Options).

%% @doc Updates a manual DB snapshot with a new engine version. The snapshot
%% can be encrypted or unencrypted, but not shared or public.
%%
%% Amazon RDS supports upgrading DB snapshots for MySQL, Oracle, and
%% PostgreSQL.
modify_d_b_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_d_b_snapshot(Client, Input, []).
modify_d_b_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyDBSnapshot">>, Input, Options).

%% @doc Adds an attribute and values to, or removes an attribute and values
%% from, a manual DB snapshot.
%%
%% To share a manual DB snapshot with other AWS accounts, specify
%% <code>restore</code> as the <code>AttributeName</code> and use the
%% <code>ValuesToAdd</code> parameter to add a list of IDs of the AWS
%% accounts that are authorized to restore the manual DB snapshot. Uses the
%% value <code>all</code> to make the manual DB snapshot public, which means
%% it can be copied or restored by all AWS accounts.
%%
%% <note> Don't add the <code>all</code> value for any manual DB snapshots
%% that contain private information that you don't want available to all AWS
%% accounts.
%%
%% </note> If the manual DB snapshot is encrypted, it can be shared, but only
%% by specifying a list of authorized AWS account IDs for the
%% <code>ValuesToAdd</code> parameter. You can't use <code>all</code> as a
%% value for that parameter in this case.
%%
%% To view which AWS accounts have access to copy or restore a manual DB
%% snapshot, or whether a manual DB snapshot public or private, use the
%% <a>DescribeDBSnapshotAttributes</a> API action. The accounts are returned
%% as values for the <code>restore</code> attribute.
modify_d_b_snapshot_attribute(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_d_b_snapshot_attribute(Client, Input, []).
modify_d_b_snapshot_attribute(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyDBSnapshotAttribute">>, Input, Options).

%% @doc Modifies an existing DB subnet group. DB subnet groups must contain
%% at least one subnet in at least two AZs in the AWS Region.
modify_d_b_subnet_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_d_b_subnet_group(Client, Input, []).
modify_d_b_subnet_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyDBSubnetGroup">>, Input, Options).

%% @doc Modifies an existing RDS event notification subscription. You can't
%% modify the source identifiers using this call. To change source
%% identifiers for a subscription, use the
%% <code>AddSourceIdentifierToSubscription</code> and
%% <code>RemoveSourceIdentifierFromSubscription</code> calls.
%%
%% You can see a list of the event categories for a given SourceType in the
%% <a
%% href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Events.html">Events</a>
%% topic in the <i>Amazon RDS User Guide</i> or by using the
%% <b>DescribeEventCategories</b> action.
modify_event_subscription(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_event_subscription(Client, Input, []).
modify_event_subscription(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyEventSubscription">>, Input, Options).

%% @doc Modify a setting for an Amazon Aurora global cluster. You can change
%% one or more database configuration parameters by specifying these
%% parameters and the new values in the request. For more information on
%% Amazon Aurora, see <a
%% href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html">
%% What Is Amazon Aurora?</a> in the <i>Amazon Aurora User Guide.</i>
%%
%% <note> This action only applies to Aurora DB clusters.
%%
%% </note>
modify_global_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_global_cluster(Client, Input, []).
modify_global_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyGlobalCluster">>, Input, Options).

%% @doc Modifies an existing option group.
modify_option_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_option_group(Client, Input, []).
modify_option_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyOptionGroup">>, Input, Options).

%% @doc Promotes a read replica DB instance to a standalone DB instance.
%%
%% <note> <ul> <li> Backup duration is a function of the amount of changes to
%% the database since the previous backup. If you plan to promote a read
%% replica to a standalone instance, we recommend that you enable backups and
%% complete at least one backup prior to promotion. In addition, a read
%% replica cannot be promoted to a standalone instance when it is in the
%% <code>backing-up</code> status. If you have enabled backups on your read
%% replica, configure the automated backup window so that daily backups do
%% not interfere with read replica promotion.
%%
%% </li> <li> This command doesn't apply to Aurora MySQL and Aurora
%% PostgreSQL.
%%
%% </li> </ul> </note>
promote_read_replica(Client, Input)
  when is_map(Client), is_map(Input) ->
    promote_read_replica(Client, Input, []).
promote_read_replica(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PromoteReadReplica">>, Input, Options).

%% @doc Promotes a read replica DB cluster to a standalone DB cluster.
%%
%% <note> This action only applies to Aurora DB clusters.
%%
%% </note>
promote_read_replica_d_b_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    promote_read_replica_d_b_cluster(Client, Input, []).
promote_read_replica_d_b_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PromoteReadReplicaDBCluster">>, Input, Options).

%% @doc Purchases a reserved DB instance offering.
purchase_reserved_d_b_instances_offering(Client, Input)
  when is_map(Client), is_map(Input) ->
    purchase_reserved_d_b_instances_offering(Client, Input, []).
purchase_reserved_d_b_instances_offering(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PurchaseReservedDBInstancesOffering">>, Input, Options).

%% @doc You might need to reboot your DB instance, usually for maintenance
%% reasons. For example, if you make certain modifications, or if you change
%% the DB parameter group associated with the DB instance, you must reboot
%% the instance for the changes to take effect.
%%
%% Rebooting a DB instance restarts the database engine service. Rebooting a
%% DB instance results in a momentary outage, during which the DB instance
%% status is set to rebooting.
%%
%% For more information about rebooting, see <a
%% href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_RebootInstance.html">Rebooting
%% a DB Instance</a> in the <i>Amazon RDS User Guide.</i>
reboot_d_b_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    reboot_d_b_instance(Client, Input, []).
reboot_d_b_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RebootDBInstance">>, Input, Options).

%% @doc Associate one or more <code>DBProxyTarget</code> data structures with
%% a <code>DBProxyTargetGroup</code>.
register_d_b_proxy_targets(Client, Input)
  when is_map(Client), is_map(Input) ->
    register_d_b_proxy_targets(Client, Input, []).
register_d_b_proxy_targets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RegisterDBProxyTargets">>, Input, Options).

%% @doc Detaches an Aurora secondary cluster from an Aurora global database
%% cluster. The cluster becomes a standalone cluster with read-write
%% capability instead of being read-only and receiving data from a primary
%% cluster in a different region.
%%
%% <note> This action only applies to Aurora DB clusters.
%%
%% </note>
remove_from_global_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    remove_from_global_cluster(Client, Input, []).
remove_from_global_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RemoveFromGlobalCluster">>, Input, Options).

%% @doc Disassociates an AWS Identity and Access Management (IAM) role from
%% an Amazon Aurora DB cluster. For more information, see <a
%% href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/AuroraMySQL.Integrating.Authorizing.html">Authorizing
%% Amazon Aurora MySQL to Access Other AWS Services on Your Behalf </a> in
%% the <i>Amazon Aurora User Guide</i>.
%%
%% <note> This action only applies to Aurora DB clusters.
%%
%% </note>
remove_role_from_d_b_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    remove_role_from_d_b_cluster(Client, Input, []).
remove_role_from_d_b_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RemoveRoleFromDBCluster">>, Input, Options).

%% @doc Disassociates an AWS Identity and Access Management (IAM) role from a
%% DB instance.
remove_role_from_d_b_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    remove_role_from_d_b_instance(Client, Input, []).
remove_role_from_d_b_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RemoveRoleFromDBInstance">>, Input, Options).

%% @doc Removes a source identifier from an existing RDS event notification
%% subscription.
remove_source_identifier_from_subscription(Client, Input)
  when is_map(Client), is_map(Input) ->
    remove_source_identifier_from_subscription(Client, Input, []).
remove_source_identifier_from_subscription(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RemoveSourceIdentifierFromSubscription">>, Input, Options).

%% @doc Removes metadata tags from an Amazon RDS resource.
%%
%% For an overview on tagging an Amazon RDS resource, see <a
%% href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Overview.Tagging.html">Tagging
%% Amazon RDS Resources</a> in the <i>Amazon RDS User Guide.</i>
remove_tags_from_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    remove_tags_from_resource(Client, Input, []).
remove_tags_from_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RemoveTagsFromResource">>, Input, Options).

%% @doc Modifies the parameters of a DB cluster parameter group to the
%% default value. To reset specific parameters submit a list of the
%% following: <code>ParameterName</code> and <code>ApplyMethod</code>. To
%% reset the entire DB cluster parameter group, specify the
%% <code>DBClusterParameterGroupName</code> and
%% <code>ResetAllParameters</code> parameters.
%%
%% When resetting the entire group, dynamic parameters are updated
%% immediately and static parameters are set to <code>pending-reboot</code>
%% to take effect on the next DB instance restart or
%% <code>RebootDBInstance</code> request. You must call
%% <code>RebootDBInstance</code> for every DB instance in your DB cluster
%% that you want the updated static parameter to apply to.
%%
%% For more information on Amazon Aurora, see <a
%% href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html">
%% What Is Amazon Aurora?</a> in the <i>Amazon Aurora User Guide.</i>
%%
%% <note> This action only applies to Aurora DB clusters.
%%
%% </note>
reset_d_b_cluster_parameter_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    reset_d_b_cluster_parameter_group(Client, Input, []).
reset_d_b_cluster_parameter_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ResetDBClusterParameterGroup">>, Input, Options).

%% @doc Modifies the parameters of a DB parameter group to the engine/system
%% default value. To reset specific parameters, provide a list of the
%% following: <code>ParameterName</code> and <code>ApplyMethod</code>. To
%% reset the entire DB parameter group, specify the
%% <code>DBParameterGroup</code> name and <code>ResetAllParameters</code>
%% parameters. When resetting the entire group, dynamic parameters are
%% updated immediately and static parameters are set to
%% <code>pending-reboot</code> to take effect on the next DB instance restart
%% or <code>RebootDBInstance</code> request.
reset_d_b_parameter_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    reset_d_b_parameter_group(Client, Input, []).
reset_d_b_parameter_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ResetDBParameterGroup">>, Input, Options).

%% @doc Creates an Amazon Aurora DB cluster from data stored in an Amazon S3
%% bucket. Amazon RDS must be authorized to access the Amazon S3 bucket and
%% the data must be created using the Percona XtraBackup utility as described
%% in <a
%% href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/AuroraMySQL.Migrating.html">
%% Migrating Data to an Amazon Aurora MySQL DB Cluster</a> in the <i>Amazon
%% Aurora User Guide</i>.
%%
%% <note> This action only restores the DB cluster, not the DB instances for
%% that DB cluster. You must invoke the <code>CreateDBInstance</code> action
%% to create DB instances for the restored DB cluster, specifying the
%% identifier of the restored DB cluster in <code>DBClusterIdentifier</code>.
%% You can create DB instances only after the
%% <code>RestoreDBClusterFromS3</code> action has completed and the DB
%% cluster is available.
%%
%% </note> For more information on Amazon Aurora, see <a
%% href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html">
%% What Is Amazon Aurora?</a> in the <i>Amazon Aurora User Guide.</i>
%%
%% <note> This action only applies to Aurora DB clusters.
%%
%% </note>
restore_d_b_cluster_from_s3(Client, Input)
  when is_map(Client), is_map(Input) ->
    restore_d_b_cluster_from_s3(Client, Input, []).
restore_d_b_cluster_from_s3(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RestoreDBClusterFromS3">>, Input, Options).

%% @doc Creates a new DB cluster from a DB snapshot or DB cluster snapshot.
%% This action only applies to Aurora DB clusters.
%%
%% The target DB cluster is created from the source snapshot with a default
%% configuration. If you don't specify a security group, the new DB cluster
%% is associated with the default security group.
%%
%% <note> This action only restores the DB cluster, not the DB instances for
%% that DB cluster. You must invoke the <code>CreateDBInstance</code> action
%% to create DB instances for the restored DB cluster, specifying the
%% identifier of the restored DB cluster in <code>DBClusterIdentifier</code>.
%% You can create DB instances only after the
%% <code>RestoreDBClusterFromSnapshot</code> action has completed and the DB
%% cluster is available.
%%
%% </note> For more information on Amazon Aurora, see <a
%% href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html">
%% What Is Amazon Aurora?</a> in the <i>Amazon Aurora User Guide.</i>
%%
%% <note> This action only applies to Aurora DB clusters.
%%
%% </note>
restore_d_b_cluster_from_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    restore_d_b_cluster_from_snapshot(Client, Input, []).
restore_d_b_cluster_from_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RestoreDBClusterFromSnapshot">>, Input, Options).

%% @doc Restores a DB cluster to an arbitrary point in time. Users can
%% restore to any point in time before <code>LatestRestorableTime</code> for
%% up to <code>BackupRetentionPeriod</code> days. The target DB cluster is
%% created from the source DB cluster with the same configuration as the
%% original DB cluster, except that the new DB cluster is created with the
%% default DB security group.
%%
%% <note> This action only restores the DB cluster, not the DB instances for
%% that DB cluster. You must invoke the <code>CreateDBInstance</code> action
%% to create DB instances for the restored DB cluster, specifying the
%% identifier of the restored DB cluster in <code>DBClusterIdentifier</code>.
%% You can create DB instances only after the
%% <code>RestoreDBClusterToPointInTime</code> action has completed and the DB
%% cluster is available.
%%
%% </note> For more information on Amazon Aurora, see <a
%% href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html">
%% What Is Amazon Aurora?</a> in the <i>Amazon Aurora User Guide.</i>
%%
%% <note> This action only applies to Aurora DB clusters.
%%
%% </note>
restore_d_b_cluster_to_point_in_time(Client, Input)
  when is_map(Client), is_map(Input) ->
    restore_d_b_cluster_to_point_in_time(Client, Input, []).
restore_d_b_cluster_to_point_in_time(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RestoreDBClusterToPointInTime">>, Input, Options).

%% @doc Creates a new DB instance from a DB snapshot. The target database is
%% created from the source database restore point with the most of original
%% configuration with the default security group and the default DB parameter
%% group. By default, the new DB instance is created as a single-AZ
%% deployment except when the instance is a SQL Server instance that has an
%% option group that is associated with mirroring; in this case, the instance
%% becomes a mirrored AZ deployment and not a single-AZ deployment.
%%
%% If your intent is to replace your original DB instance with the new,
%% restored DB instance, then rename your original DB instance before you
%% call the RestoreDBInstanceFromDBSnapshot action. RDS doesn't allow two DB
%% instances with the same name. Once you have renamed your original DB
%% instance with a different identifier, then you can pass the original name
%% of the DB instance as the DBInstanceIdentifier in the call to the
%% RestoreDBInstanceFromDBSnapshot action. The result is that you will
%% replace the original DB instance with the DB instance created from the
%% snapshot.
%%
%% If you are restoring from a shared manual DB snapshot, the
%% <code>DBSnapshotIdentifier</code> must be the ARN of the shared DB
%% snapshot.
%%
%% <note> This command doesn't apply to Aurora MySQL and Aurora PostgreSQL.
%% For Aurora, use <code>RestoreDBClusterFromSnapshot</code>.
%%
%% </note>
restore_d_b_instance_from_d_b_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    restore_d_b_instance_from_d_b_snapshot(Client, Input, []).
restore_d_b_instance_from_d_b_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RestoreDBInstanceFromDBSnapshot">>, Input, Options).

%% @doc Amazon Relational Database Service (Amazon RDS) supports importing
%% MySQL databases by using backup files. You can create a backup of your
%% on-premises database, store it on Amazon Simple Storage Service (Amazon
%% S3), and then restore the backup file onto a new Amazon RDS DB instance
%% running MySQL. For more information, see <a
%% href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/MySQL.Procedural.Importing.html">Importing
%% Data into an Amazon RDS MySQL DB Instance</a> in the <i>Amazon RDS User
%% Guide.</i>
restore_d_b_instance_from_s3(Client, Input)
  when is_map(Client), is_map(Input) ->
    restore_d_b_instance_from_s3(Client, Input, []).
restore_d_b_instance_from_s3(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RestoreDBInstanceFromS3">>, Input, Options).

%% @doc Restores a DB instance to an arbitrary point in time. You can restore
%% to any point in time before the time identified by the
%% LatestRestorableTime property. You can restore to a point up to the number
%% of days specified by the BackupRetentionPeriod property.
%%
%% The target database is created with most of the original configuration,
%% but in a system-selected Availability Zone, with the default security
%% group, the default subnet group, and the default DB parameter group. By
%% default, the new DB instance is created as a single-AZ deployment except
%% when the instance is a SQL Server instance that has an option group that
%% is associated with mirroring; in this case, the instance becomes a
%% mirrored deployment and not a single-AZ deployment.
%%
%% <note> This command doesn't apply to Aurora MySQL and Aurora PostgreSQL.
%% For Aurora, use <code>RestoreDBClusterToPointInTime</code>.
%%
%% </note>
restore_d_b_instance_to_point_in_time(Client, Input)
  when is_map(Client), is_map(Input) ->
    restore_d_b_instance_to_point_in_time(Client, Input, []).
restore_d_b_instance_to_point_in_time(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RestoreDBInstanceToPointInTime">>, Input, Options).

%% @doc Revokes ingress from a DBSecurityGroup for previously authorized IP
%% ranges or EC2 or VPC Security Groups. Required parameters for this API are
%% one of CIDRIP, EC2SecurityGroupId for VPC, or (EC2SecurityGroupOwnerId and
%% either EC2SecurityGroupName or EC2SecurityGroupId).
revoke_d_b_security_group_ingress(Client, Input)
  when is_map(Client), is_map(Input) ->
    revoke_d_b_security_group_ingress(Client, Input, []).
revoke_d_b_security_group_ingress(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RevokeDBSecurityGroupIngress">>, Input, Options).

%% @doc Starts a database activity stream to monitor activity on the
%% database. For more information, see <a
%% href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/DBActivityStreams.html">Database
%% Activity Streams</a> in the <i>Amazon Aurora User Guide</i>.
start_activity_stream(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_activity_stream(Client, Input, []).
start_activity_stream(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartActivityStream">>, Input, Options).

%% @doc Starts an Amazon Aurora DB cluster that was stopped using the AWS
%% console, the stop-db-cluster AWS CLI command, or the StopDBCluster action.
%%
%% For more information, see <a
%% href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-cluster-stop-start.html">
%% Stopping and Starting an Aurora Cluster</a> in the <i>Amazon Aurora User
%% Guide.</i>
%%
%% <note> This action only applies to Aurora DB clusters.
%%
%% </note>
start_d_b_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_d_b_cluster(Client, Input, []).
start_d_b_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartDBCluster">>, Input, Options).

%% @doc Starts an Amazon RDS DB instance that was stopped using the AWS
%% console, the stop-db-instance AWS CLI command, or the StopDBInstance
%% action.
%%
%% For more information, see <a
%% href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_StartInstance.html">
%% Starting an Amazon RDS DB instance That Was Previously Stopped</a> in the
%% <i>Amazon RDS User Guide.</i>
%%
%% <note> This command doesn't apply to Aurora MySQL and Aurora PostgreSQL.
%% For Aurora DB clusters, use <code>StartDBCluster</code> instead.
%%
%% </note>
start_d_b_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_d_b_instance(Client, Input, []).
start_d_b_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartDBInstance">>, Input, Options).

%% @doc Starts an export of a snapshot to Amazon S3. The provided IAM role
%% must have access to the S3 bucket.
start_export_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_export_task(Client, Input, []).
start_export_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartExportTask">>, Input, Options).

%% @doc Stops a database activity stream that was started using the AWS
%% console, the <code>start-activity-stream</code> AWS CLI command, or the
%% <code>StartActivityStream</code> action.
%%
%% For more information, see <a
%% href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/DBActivityStreams.html">Database
%% Activity Streams</a> in the <i>Amazon Aurora User Guide</i>.
stop_activity_stream(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_activity_stream(Client, Input, []).
stop_activity_stream(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopActivityStream">>, Input, Options).

%% @doc Stops an Amazon Aurora DB cluster. When you stop a DB cluster, Aurora
%% retains the DB cluster's metadata, including its endpoints and DB
%% parameter groups. Aurora also retains the transaction logs so you can do a
%% point-in-time restore if necessary.
%%
%% For more information, see <a
%% href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-cluster-stop-start.html">
%% Stopping and Starting an Aurora Cluster</a> in the <i>Amazon Aurora User
%% Guide.</i>
%%
%% <note> This action only applies to Aurora DB clusters.
%%
%% </note>
stop_d_b_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_d_b_cluster(Client, Input, []).
stop_d_b_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopDBCluster">>, Input, Options).

%% @doc Stops an Amazon RDS DB instance. When you stop a DB instance, Amazon
%% RDS retains the DB instance's metadata, including its endpoint, DB
%% parameter group, and option group membership. Amazon RDS also retains the
%% transaction logs so you can do a point-in-time restore if necessary.
%%
%% For more information, see <a
%% href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_StopInstance.html">
%% Stopping an Amazon RDS DB Instance Temporarily</a> in the <i>Amazon RDS
%% User Guide.</i>
%%
%% <note> This command doesn't apply to Aurora MySQL and Aurora PostgreSQL.
%% For Aurora clusters, use <code>StopDBCluster</code> instead.
%%
%% </note>
stop_d_b_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_d_b_instance(Client, Input, []).
stop_d_b_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopDBInstance">>, Input, Options).

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
    Host = get_host(<<"rds">>, Client1),
    URL = get_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-www-form-urlencoded">>}
    ],
    Input = Input0#{ <<"Action">> => Action
                   , <<"Version">> => <<"2014-10-31">>
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
    {error, Error, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}) ->
    {error, Reason}.

get_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
get_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

get_url(Host, Client) ->
    Proto = maps:get(proto, Client),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
