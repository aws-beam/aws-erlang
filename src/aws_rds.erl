%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Relational Database Service
%%
%% Amazon Relational Database Service (Amazon RDS) is a web service that
%% makes it easier to set up, operate, and
%% scale a relational database in the cloud.
%%
%% It provides cost-efficient, resizeable capacity for an industry-standard
%% relational
%% database and manages common database administration tasks, freeing up
%% developers to focus on what makes their applications
%% and businesses unique.
%%
%% Amazon RDS gives you access to the capabilities of a MySQL, MariaDB,
%% PostgreSQL, Microsoft SQL Server,
%% Oracle, Db2, or Amazon Aurora database server. These capabilities mean
%% that the code, applications, and tools
%% you already use today with your existing databases work with Amazon RDS
%% without modification. Amazon RDS
%% automatically backs up your database and maintains the database software
%% that powers your DB instance. Amazon RDS
%% is flexible: you can scale your DB instance's compute resources and
%% storage capacity to meet your
%% application's demand. As with all Amazon Web Services, there are no
%% up-front investments, and you pay only for
%% the resources you use.
%%
%% This interface reference for Amazon RDS contains documentation for a
%% programming or command line interface
%% you can use to manage Amazon RDS. Amazon RDS is asynchronous, which means
%% that some interfaces might
%% require techniques such as polling or callback functions to determine when
%% a command has been applied. In this
%% reference, the parameter descriptions indicate whether a command is
%% applied immediately, on the next instance reboot,
%% or during the maintenance window. The reference structure is as follows,
%% and we list following some related topics
%% from the user guide.
%%
%% Amazon RDS API Reference
%%
%% For the alphabetical list of API actions, see
%% API Actions:
%% https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_Operations.html.
%%
%% For the alphabetical list of data types, see
%% Data Types:
%% https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_Types.html.
%%
%% For a list of common query parameters, see
%% Common Parameters:
%% https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/CommonParameters.html.
%%
%% For descriptions of the error codes, see
%% Common Errors:
%% https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/CommonErrors.html.
%%
%% Amazon RDS User Guide
%%
%% For a summary of the Amazon RDS interfaces, see
%% Available RDS Interfaces:
%% https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Welcome.html#Welcome.Interfaces.
%%
%% For more information about how to use the Query API, see
%% Using the Query API:
%% https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Using_the_Query_API.html.
-module(aws_rds).

-export([add_role_to_db_cluster/2,
         add_role_to_db_cluster/3,
         add_role_to_db_instance/2,
         add_role_to_db_instance/3,
         add_source_identifier_to_subscription/2,
         add_source_identifier_to_subscription/3,
         add_tags_to_resource/2,
         add_tags_to_resource/3,
         apply_pending_maintenance_action/2,
         apply_pending_maintenance_action/3,
         authorize_db_security_group_ingress/2,
         authorize_db_security_group_ingress/3,
         backtrack_db_cluster/2,
         backtrack_db_cluster/3,
         cancel_export_task/2,
         cancel_export_task/3,
         copy_db_cluster_parameter_group/2,
         copy_db_cluster_parameter_group/3,
         copy_db_cluster_snapshot/2,
         copy_db_cluster_snapshot/3,
         copy_db_parameter_group/2,
         copy_db_parameter_group/3,
         copy_db_snapshot/2,
         copy_db_snapshot/3,
         copy_option_group/2,
         copy_option_group/3,
         create_blue_green_deployment/2,
         create_blue_green_deployment/3,
         create_custom_db_engine_version/2,
         create_custom_db_engine_version/3,
         create_db_cluster/2,
         create_db_cluster/3,
         create_db_cluster_endpoint/2,
         create_db_cluster_endpoint/3,
         create_db_cluster_parameter_group/2,
         create_db_cluster_parameter_group/3,
         create_db_cluster_snapshot/2,
         create_db_cluster_snapshot/3,
         create_db_instance/2,
         create_db_instance/3,
         create_db_instance_read_replica/2,
         create_db_instance_read_replica/3,
         create_db_parameter_group/2,
         create_db_parameter_group/3,
         create_db_proxy/2,
         create_db_proxy/3,
         create_db_proxy_endpoint/2,
         create_db_proxy_endpoint/3,
         create_db_security_group/2,
         create_db_security_group/3,
         create_db_shard_group/2,
         create_db_shard_group/3,
         create_db_snapshot/2,
         create_db_snapshot/3,
         create_db_subnet_group/2,
         create_db_subnet_group/3,
         create_event_subscription/2,
         create_event_subscription/3,
         create_global_cluster/2,
         create_global_cluster/3,
         create_integration/2,
         create_integration/3,
         create_option_group/2,
         create_option_group/3,
         create_tenant_database/2,
         create_tenant_database/3,
         delete_blue_green_deployment/2,
         delete_blue_green_deployment/3,
         delete_custom_db_engine_version/2,
         delete_custom_db_engine_version/3,
         delete_db_cluster/2,
         delete_db_cluster/3,
         delete_db_cluster_automated_backup/2,
         delete_db_cluster_automated_backup/3,
         delete_db_cluster_endpoint/2,
         delete_db_cluster_endpoint/3,
         delete_db_cluster_parameter_group/2,
         delete_db_cluster_parameter_group/3,
         delete_db_cluster_snapshot/2,
         delete_db_cluster_snapshot/3,
         delete_db_instance/2,
         delete_db_instance/3,
         delete_db_instance_automated_backup/2,
         delete_db_instance_automated_backup/3,
         delete_db_parameter_group/2,
         delete_db_parameter_group/3,
         delete_db_proxy/2,
         delete_db_proxy/3,
         delete_db_proxy_endpoint/2,
         delete_db_proxy_endpoint/3,
         delete_db_security_group/2,
         delete_db_security_group/3,
         delete_db_shard_group/2,
         delete_db_shard_group/3,
         delete_db_snapshot/2,
         delete_db_snapshot/3,
         delete_db_subnet_group/2,
         delete_db_subnet_group/3,
         delete_event_subscription/2,
         delete_event_subscription/3,
         delete_global_cluster/2,
         delete_global_cluster/3,
         delete_integration/2,
         delete_integration/3,
         delete_option_group/2,
         delete_option_group/3,
         delete_tenant_database/2,
         delete_tenant_database/3,
         deregister_db_proxy_targets/2,
         deregister_db_proxy_targets/3,
         describe_account_attributes/2,
         describe_account_attributes/3,
         describe_blue_green_deployments/2,
         describe_blue_green_deployments/3,
         describe_certificates/2,
         describe_certificates/3,
         describe_db_cluster_automated_backups/2,
         describe_db_cluster_automated_backups/3,
         describe_db_cluster_backtracks/2,
         describe_db_cluster_backtracks/3,
         describe_db_cluster_endpoints/2,
         describe_db_cluster_endpoints/3,
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
         describe_db_instance_automated_backups/2,
         describe_db_instance_automated_backups/3,
         describe_db_instances/2,
         describe_db_instances/3,
         describe_db_log_files/2,
         describe_db_log_files/3,
         describe_db_parameter_groups/2,
         describe_db_parameter_groups/3,
         describe_db_parameters/2,
         describe_db_parameters/3,
         describe_db_proxies/2,
         describe_db_proxies/3,
         describe_db_proxy_endpoints/2,
         describe_db_proxy_endpoints/3,
         describe_db_proxy_target_groups/2,
         describe_db_proxy_target_groups/3,
         describe_db_proxy_targets/2,
         describe_db_proxy_targets/3,
         describe_db_recommendations/2,
         describe_db_recommendations/3,
         describe_db_security_groups/2,
         describe_db_security_groups/3,
         describe_db_shard_groups/2,
         describe_db_shard_groups/3,
         describe_db_snapshot_attributes/2,
         describe_db_snapshot_attributes/3,
         describe_db_snapshot_tenant_databases/2,
         describe_db_snapshot_tenant_databases/3,
         describe_db_snapshots/2,
         describe_db_snapshots/3,
         describe_db_subnet_groups/2,
         describe_db_subnet_groups/3,
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
         describe_integrations/2,
         describe_integrations/3,
         describe_option_group_options/2,
         describe_option_group_options/3,
         describe_option_groups/2,
         describe_option_groups/3,
         describe_orderable_db_instance_options/2,
         describe_orderable_db_instance_options/3,
         describe_pending_maintenance_actions/2,
         describe_pending_maintenance_actions/3,
         describe_reserved_db_instances/2,
         describe_reserved_db_instances/3,
         describe_reserved_db_instances_offerings/2,
         describe_reserved_db_instances_offerings/3,
         describe_source_regions/2,
         describe_source_regions/3,
         describe_tenant_databases/2,
         describe_tenant_databases/3,
         describe_valid_db_instance_modifications/2,
         describe_valid_db_instance_modifications/3,
         disable_http_endpoint/2,
         disable_http_endpoint/3,
         download_db_log_file_portion/2,
         download_db_log_file_portion/3,
         enable_http_endpoint/2,
         enable_http_endpoint/3,
         failover_db_cluster/2,
         failover_db_cluster/3,
         failover_global_cluster/2,
         failover_global_cluster/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         modify_activity_stream/2,
         modify_activity_stream/3,
         modify_certificates/2,
         modify_certificates/3,
         modify_current_db_cluster_capacity/2,
         modify_current_db_cluster_capacity/3,
         modify_custom_db_engine_version/2,
         modify_custom_db_engine_version/3,
         modify_db_cluster/2,
         modify_db_cluster/3,
         modify_db_cluster_endpoint/2,
         modify_db_cluster_endpoint/3,
         modify_db_cluster_parameter_group/2,
         modify_db_cluster_parameter_group/3,
         modify_db_cluster_snapshot_attribute/2,
         modify_db_cluster_snapshot_attribute/3,
         modify_db_instance/2,
         modify_db_instance/3,
         modify_db_parameter_group/2,
         modify_db_parameter_group/3,
         modify_db_proxy/2,
         modify_db_proxy/3,
         modify_db_proxy_endpoint/2,
         modify_db_proxy_endpoint/3,
         modify_db_proxy_target_group/2,
         modify_db_proxy_target_group/3,
         modify_db_recommendation/2,
         modify_db_recommendation/3,
         modify_db_shard_group/2,
         modify_db_shard_group/3,
         modify_db_snapshot/2,
         modify_db_snapshot/3,
         modify_db_snapshot_attribute/2,
         modify_db_snapshot_attribute/3,
         modify_db_subnet_group/2,
         modify_db_subnet_group/3,
         modify_event_subscription/2,
         modify_event_subscription/3,
         modify_global_cluster/2,
         modify_global_cluster/3,
         modify_integration/2,
         modify_integration/3,
         modify_option_group/2,
         modify_option_group/3,
         modify_tenant_database/2,
         modify_tenant_database/3,
         promote_read_replica/2,
         promote_read_replica/3,
         promote_read_replica_db_cluster/2,
         promote_read_replica_db_cluster/3,
         purchase_reserved_db_instances_offering/2,
         purchase_reserved_db_instances_offering/3,
         reboot_db_cluster/2,
         reboot_db_cluster/3,
         reboot_db_instance/2,
         reboot_db_instance/3,
         reboot_db_shard_group/2,
         reboot_db_shard_group/3,
         register_db_proxy_targets/2,
         register_db_proxy_targets/3,
         remove_from_global_cluster/2,
         remove_from_global_cluster/3,
         remove_role_from_db_cluster/2,
         remove_role_from_db_cluster/3,
         remove_role_from_db_instance/2,
         remove_role_from_db_instance/3,
         remove_source_identifier_from_subscription/2,
         remove_source_identifier_from_subscription/3,
         remove_tags_from_resource/2,
         remove_tags_from_resource/3,
         reset_db_cluster_parameter_group/2,
         reset_db_cluster_parameter_group/3,
         reset_db_parameter_group/2,
         reset_db_parameter_group/3,
         restore_db_cluster_from_s3/2,
         restore_db_cluster_from_s3/3,
         restore_db_cluster_from_snapshot/2,
         restore_db_cluster_from_snapshot/3,
         restore_db_cluster_to_point_in_time/2,
         restore_db_cluster_to_point_in_time/3,
         restore_db_instance_from_db_snapshot/2,
         restore_db_instance_from_db_snapshot/3,
         restore_db_instance_from_s3/2,
         restore_db_instance_from_s3/3,
         restore_db_instance_to_point_in_time/2,
         restore_db_instance_to_point_in_time/3,
         revoke_db_security_group_ingress/2,
         revoke_db_security_group_ingress/3,
         start_activity_stream/2,
         start_activity_stream/3,
         start_db_cluster/2,
         start_db_cluster/3,
         start_db_instance/2,
         start_db_instance/3,
         start_db_instance_automated_backups_replication/2,
         start_db_instance_automated_backups_replication/3,
         start_export_task/2,
         start_export_task/3,
         stop_activity_stream/2,
         stop_activity_stream/3,
         stop_db_cluster/2,
         stop_db_cluster/3,
         stop_db_instance/2,
         stop_db_instance/3,
         stop_db_instance_automated_backups_replication/2,
         stop_db_instance_automated_backups_replication/3,
         switchover_blue_green_deployment/2,
         switchover_blue_green_deployment/3,
         switchover_global_cluster/2,
         switchover_global_cluster/3,
         switchover_read_replica/2,
         switchover_read_replica/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% restore_db_cluster_from_snapshot_message() :: #{
%%   <<"Port">> => integer(),
%%   <<"ServerlessV2ScalingConfiguration">> => serverless_v2_scaling_configuration(),
%%   <<"EngineLifecycleSupport">> => string(),
%%   <<"EnableIAMDatabaseAuthentication">> => boolean(),
%%   <<"Iops">> => integer(),
%%   <<"DBClusterParameterGroupName">> => string(),
%%   <<"DBSubnetGroupName">> => string(),
%%   <<"RdsCustomClusterConfiguration">> => rds_custom_cluster_configuration(),
%%   <<"DBClusterInstanceClass">> => string(),
%%   <<"PerformanceInsightsKMSKeyId">> => string(),
%%   <<"ScalingConfiguration">> => scaling_configuration(),
%%   <<"CopyTagsToSnapshot">> => boolean(),
%%   <<"OptionGroupName">> => string(),
%%   <<"StorageType">> => string(),
%%   <<"MonitoringRoleArn">> => string(),
%%   <<"EngineVersion">> => string(),
%%   <<"PubliclyAccessible">> => boolean(),
%%   <<"EngineMode">> => string(),
%%   <<"VpcSecurityGroupIds">> => list(string()()),
%%   <<"Engine">> := string(),
%%   <<"DBClusterIdentifier">> := string(),
%%   <<"AvailabilityZones">> => list(string()()),
%%   <<"Tags">> => list(tag()()),
%%   <<"SnapshotIdentifier">> := string(),
%%   <<"EnableCloudwatchLogsExports">> => list(string()()),
%%   <<"DatabaseName">> => string(),
%%   <<"KmsKeyId">> => string(),
%%   <<"PerformanceInsightsRetentionPeriod">> => integer(),
%%   <<"Domain">> => string(),
%%   <<"DomainIAMRoleName">> => string(),
%%   <<"EnablePerformanceInsights">> => boolean(),
%%   <<"BacktrackWindow">> => float(),
%%   <<"NetworkType">> => string(),
%%   <<"MonitoringInterval">> => integer(),
%%   <<"DeletionProtection">> => boolean()
%% }
-type restore_db_cluster_from_snapshot_message() :: #{binary() => any()}.

%% Example:
%% reboot_db_cluster_result() :: #{
%%   <<"DBCluster">> => db_cluster()
%% }
-type reboot_db_cluster_result() :: #{binary() => any()}.

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
%% db_parameter_group_details() :: #{
%%   <<"Marker">> => string(),
%%   <<"Parameters">> => list(parameter()())
%% }
-type db_parameter_group_details() :: #{binary() => any()}.

%% Example:
%% db_cluster_quota_exceeded_fault() :: #{
%%   <<"message">> => string()
%% }
-type db_cluster_quota_exceeded_fault() :: #{binary() => any()}.

%% Example:
%% event_subscriptions_message() :: #{
%%   <<"EventSubscriptionsList">> => list(event_subscription()()),
%%   <<"Marker">> => string()
%% }
-type event_subscriptions_message() :: #{binary() => any()}.

%% Example:
%% db_proxy_target_already_registered_fault() :: #{
%%   <<"message">> => string()
%% }
-type db_proxy_target_already_registered_fault() :: #{binary() => any()}.

%% Example:
%% db_snapshot_attribute() :: #{
%%   <<"AttributeName">> => string(),
%%   <<"AttributeValues">> => list(string()())
%% }
-type db_snapshot_attribute() :: #{binary() => any()}.

%% Example:
%% resource_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type resource_not_found_fault() :: #{binary() => any()}.

%% Example:
%% delete_db_snapshot_message() :: #{
%%   <<"DBSnapshotIdentifier">> := string()
%% }
-type delete_db_snapshot_message() :: #{binary() => any()}.

%% Example:
%% delete_db_cluster_snapshot_result() :: #{
%%   <<"DBClusterSnapshot">> => db_cluster_snapshot()
%% }
-type delete_db_cluster_snapshot_result() :: #{binary() => any()}.

%% Example:
%% recommended_action() :: #{
%%   <<"ActionId">> => string(),
%%   <<"ApplyModes">> => list(string()()),
%%   <<"ContextAttributes">> => list(context_attribute()()),
%%   <<"Description">> => string(),
%%   <<"IssueDetails">> => issue_details(),
%%   <<"Operation">> => string(),
%%   <<"Parameters">> => list(recommended_action_parameter()()),
%%   <<"Status">> => string(),
%%   <<"Title">> => string()
%% }
-type recommended_action() :: #{binary() => any()}.

%% Example:
%% invalid_resource_state_fault() :: #{
%%   <<"message">> => string()
%% }
-type invalid_resource_state_fault() :: #{binary() => any()}.

%% Example:
%% option_group_membership() :: #{
%%   <<"OptionGroupName">> => string(),
%%   <<"Status">> => string()
%% }
-type option_group_membership() :: #{binary() => any()}.

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
%% target_health() :: #{
%%   <<"Description">> => string(),
%%   <<"Reason">> => list(any()),
%%   <<"State">> => list(any())
%% }
-type target_health() :: #{binary() => any()}.

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
%%   <<"ResourceIdentifier">> := string()
%% }
-type apply_pending_maintenance_action_message() :: #{binary() => any()}.

%% Example:
%% subnet_already_in_use() :: #{
%%   <<"message">> => string()
%% }
-type subnet_already_in_use() :: #{binary() => any()}.

%% Example:
%% invalid_db_proxy_endpoint_state_fault() :: #{
%%   <<"message">> => string()
%% }
-type invalid_db_proxy_endpoint_state_fault() :: #{binary() => any()}.

%% Example:
%% db_cluster_snapshot() :: #{
%%   <<"AllocatedStorage">> => integer(),
%%   <<"AvailabilityZones">> => list(string()()),
%%   <<"ClusterCreateTime">> => non_neg_integer(),
%%   <<"DBClusterIdentifier">> => string(),
%%   <<"DBClusterSnapshotArn">> => string(),
%%   <<"DBClusterSnapshotIdentifier">> => string(),
%%   <<"DBSystemId">> => string(),
%%   <<"DbClusterResourceId">> => string(),
%%   <<"Engine">> => string(),
%%   <<"EngineMode">> => string(),
%%   <<"EngineVersion">> => string(),
%%   <<"IAMDatabaseAuthenticationEnabled">> => boolean(),
%%   <<"KmsKeyId">> => string(),
%%   <<"LicenseModel">> => string(),
%%   <<"MasterUsername">> => string(),
%%   <<"PercentProgress">> => integer(),
%%   <<"Port">> => integer(),
%%   <<"SnapshotCreateTime">> => non_neg_integer(),
%%   <<"SnapshotType">> => string(),
%%   <<"SourceDBClusterSnapshotArn">> => string(),
%%   <<"Status">> => string(),
%%   <<"StorageEncrypted">> => boolean(),
%%   <<"StorageThroughput">> => integer(),
%%   <<"StorageType">> => string(),
%%   <<"TagList">> => list(tag()()),
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
%% db_cluster_capacity_info() :: #{
%%   <<"CurrentCapacity">> => integer(),
%%   <<"DBClusterIdentifier">> => string(),
%%   <<"PendingCapacity">> => integer(),
%%   <<"SecondsBeforeTimeout">> => integer(),
%%   <<"TimeoutAction">> => string()
%% }
-type db_cluster_capacity_info() :: #{binary() => any()}.

%% Example:
%% modify_db_subnet_group_message() :: #{
%%   <<"DBSubnetGroupDescription">> => string(),
%%   <<"DBSubnetGroupName">> := string(),
%%   <<"SubnetIds">> := list(string()())
%% }
-type modify_db_subnet_group_message() :: #{binary() => any()}.

%% Example:
%% db_subnet_group_message() :: #{
%%   <<"DBSubnetGroups">> => list(db_subnet_group()()),
%%   <<"Marker">> => string()
%% }
-type db_subnet_group_message() :: #{binary() => any()}.

%% Example:
%% db_proxy_endpoint() :: #{
%%   <<"CreatedDate">> => non_neg_integer(),
%%   <<"DBProxyEndpointArn">> => string(),
%%   <<"DBProxyEndpointName">> => string(),
%%   <<"DBProxyName">> => string(),
%%   <<"Endpoint">> => string(),
%%   <<"IsDefault">> => boolean(),
%%   <<"Status">> => list(any()),
%%   <<"TargetRole">> => list(any()),
%%   <<"VpcId">> => string(),
%%   <<"VpcSecurityGroupIds">> => list(string()()),
%%   <<"VpcSubnetIds">> => list(string()())
%% }
-type db_proxy_endpoint() :: #{binary() => any()}.

%% Example:
%% describe_db_cluster_parameters_message() :: #{
%%   <<"DBClusterParameterGroupName">> := string(),
%%   <<"Filters">> => list(filter()()),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer(),
%%   <<"Source">> => string()
%% }
-type describe_db_cluster_parameters_message() :: #{binary() => any()}.

%% Example:
%% resource_pending_maintenance_actions() :: #{
%%   <<"PendingMaintenanceActionDetails">> => list(pending_maintenance_action()()),
%%   <<"ResourceIdentifier">> => string()
%% }
-type resource_pending_maintenance_actions() :: #{binary() => any()}.

%% Example:
%% stop_activity_stream_request() :: #{
%%   <<"ApplyImmediately">> => boolean(),
%%   <<"ResourceArn">> := string()
%% }
-type stop_activity_stream_request() :: #{binary() => any()}.

%% Example:
%% event_categories_map() :: #{
%%   <<"EventCategories">> => list(string()()),
%%   <<"SourceType">> => string()
%% }
-type event_categories_map() :: #{binary() => any()}.

%% Example:
%% create_db_proxy_request() :: #{
%%   <<"Auth">> := list(user_auth_config()()),
%%   <<"DBProxyName">> := string(),
%%   <<"DebugLogging">> => boolean(),
%%   <<"EngineFamily">> := list(any()),
%%   <<"IdleClientTimeout">> => integer(),
%%   <<"RequireTLS">> => boolean(),
%%   <<"RoleArn">> := string(),
%%   <<"Tags">> => list(tag()()),
%%   <<"VpcSecurityGroupIds">> => list(string()()),
%%   <<"VpcSubnetIds">> := list(string()())
%% }
-type create_db_proxy_request() :: #{binary() => any()}.

%% Example:
%% modify_db_proxy_target_group_request() :: #{
%%   <<"ConnectionPoolConfig">> => connection_pool_configuration(),
%%   <<"DBProxyName">> := string(),
%%   <<"NewName">> => string(),
%%   <<"TargetGroupName">> := string()
%% }
-type modify_db_proxy_target_group_request() :: #{binary() => any()}.

%% Example:
%% range() :: #{
%%   <<"From">> => integer(),
%%   <<"Step">> => integer(),
%%   <<"To">> => integer()
%% }
-type range() :: #{binary() => any()}.

%% Example:
%% connection_pool_configuration_info() :: #{
%%   <<"ConnectionBorrowTimeout">> => integer(),
%%   <<"InitQuery">> => string(),
%%   <<"MaxConnectionsPercent">> => integer(),
%%   <<"MaxIdleConnectionsPercent">> => integer(),
%%   <<"SessionPinningFilters">> => list(string()())
%% }
-type connection_pool_configuration_info() :: #{binary() => any()}.

%% Example:
%% delete_global_cluster_result() :: #{
%%   <<"GlobalCluster">> => global_cluster()
%% }
-type delete_global_cluster_result() :: #{binary() => any()}.

%% Example:
%% iam_role_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type iam_role_not_found_fault() :: #{binary() => any()}.

%% Example:
%% create_tenant_database_message() :: #{
%%   <<"CharacterSetName">> => string(),
%%   <<"DBInstanceIdentifier">> := string(),
%%   <<"MasterUserPassword">> := string(),
%%   <<"MasterUsername">> := string(),
%%   <<"NcharCharacterSetName">> => string(),
%%   <<"Tags">> => list(tag()()),
%%   <<"TenantDBName">> := string()
%% }
-type create_tenant_database_message() :: #{binary() => any()}.

%% Example:
%% performance_insights_metric_dimension_group() :: #{
%%   <<"Dimensions">> => list(string()()),
%%   <<"Group">> => string(),
%%   <<"Limit">> => integer()
%% }
-type performance_insights_metric_dimension_group() :: #{binary() => any()}.

%% Example:
%% max_db_shard_group_limit_reached() :: #{
%%   <<"message">> => string()
%% }
-type max_db_shard_group_limit_reached() :: #{binary() => any()}.

%% Example:
%% db_cluster_parameter_group_name_message() :: #{
%%   <<"DBClusterParameterGroupName">> => string()
%% }
-type db_cluster_parameter_group_name_message() :: #{binary() => any()}.

%% Example:
%% db_instance_automated_backup_quota_exceeded_fault() :: #{
%%   <<"message">> => string()
%% }
-type db_instance_automated_backup_quota_exceeded_fault() :: #{binary() => any()}.

%% Example:
%% integration_already_exists_fault() :: #{
%%   <<"message">> => string()
%% }
-type integration_already_exists_fault() :: #{binary() => any()}.

%% Example:
%% describe_db_snapshot_attributes_result() :: #{
%%   <<"DBSnapshotAttributesResult">> => db_snapshot_attributes_result()
%% }
-type describe_db_snapshot_attributes_result() :: #{binary() => any()}.

%% Example:
%% stop_db_instance_result() :: #{
%%   <<"DBInstance">> => db_instance()
%% }
-type stop_db_instance_result() :: #{binary() => any()}.

%% Example:
%% availability_zone() :: #{
%%   <<"Name">> => string()
%% }
-type availability_zone() :: #{binary() => any()}.

%% Example:
%% reserved_db_instance_message() :: #{
%%   <<"Marker">> => string(),
%%   <<"ReservedDBInstances">> => list(reserved_db_instance()())
%% }
-type reserved_db_instance_message() :: #{binary() => any()}.

%% Example:
%% create_db_instance_read_replica_message() :: #{
%%   <<"Port">> => integer(),
%%   <<"StorageThroughput">> => integer(),
%%   <<"DomainOu">> => string(),
%%   <<"EnableIAMDatabaseAuthentication">> => boolean(),
%%   <<"PreSignedUrl">> => string(),
%%   <<"EnableCustomerOwnedIp">> => boolean(),
%%   <<"Iops">> => integer(),
%%   <<"DBSubnetGroupName">> => string(),
%%   <<"DBInstanceClass">> => string(),
%%   <<"UpgradeStorageConfig">> => boolean(),
%%   <<"PerformanceInsightsKMSKeyId">> => string(),
%%   <<"SourceDBInstanceIdentifier">> => string(),
%%   <<"CopyTagsToSnapshot">> => boolean(),
%%   <<"SourceDBClusterIdentifier">> => string(),
%%   <<"OptionGroupName">> => string(),
%%   <<"StorageType">> => string(),
%%   <<"UseDefaultProcessorFeatures">> => boolean(),
%%   <<"MonitoringRoleArn">> => string(),
%%   <<"AvailabilityZone">> => string(),
%%   <<"PubliclyAccessible">> => boolean(),
%%   <<"VpcSecurityGroupIds">> => list(string()()),
%%   <<"DomainAuthSecretArn">> => string(),
%%   <<"DedicatedLogVolume">> => boolean(),
%%   <<"DomainDnsIps">> => list(string()()),
%%   <<"Tags">> => list(tag()()),
%%   <<"EnableCloudwatchLogsExports">> => list(string()()),
%%   <<"DBInstanceIdentifier">> := string(),
%%   <<"KmsKeyId">> => string(),
%%   <<"ReplicaMode">> => list(any()),
%%   <<"DBParameterGroupName">> => string(),
%%   <<"PerformanceInsightsRetentionPeriod">> => integer(),
%%   <<"ProcessorFeatures">> => list(processor_feature()()),
%%   <<"Domain">> => string(),
%%   <<"DomainIAMRoleName">> => string(),
%%   <<"DomainFqdn">> => string(),
%%   <<"EnablePerformanceInsights">> => boolean(),
%%   <<"AutoMinorVersionUpgrade">> => boolean(),
%%   <<"NetworkType">> => string(),
%%   <<"AllocatedStorage">> => integer(),
%%   <<"MonitoringInterval">> => integer(),
%%   <<"CACertificateIdentifier">> => string(),
%%   <<"CustomIamInstanceProfile">> => string(),
%%   <<"MaxAllocatedStorage">> => integer(),
%%   <<"MultiAZ">> => boolean(),
%%   <<"DeletionProtection">> => boolean()
%% }
-type create_db_instance_read_replica_message() :: #{binary() => any()}.

%% Example:
%% start_db_instance_message() :: #{
%%   <<"DBInstanceIdentifier">> := string()
%% }
-type start_db_instance_message() :: #{binary() => any()}.

%% Example:
%% db_snapshot_already_exists_fault() :: #{
%%   <<"message">> => string()
%% }
-type db_snapshot_already_exists_fault() :: #{binary() => any()}.

%% Example:
%% describe_db_instances_message() :: #{
%%   <<"DBInstanceIdentifier">> => string(),
%%   <<"Filters">> => list(filter()()),
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
%% db_recommendation_message() :: #{
%%   <<"DBRecommendation">> => db_recommendation()
%% }
-type db_recommendation_message() :: #{binary() => any()}.

%% Example:
%% modify_db_proxy_request() :: #{
%%   <<"Auth">> => list(user_auth_config()()),
%%   <<"DBProxyName">> := string(),
%%   <<"DebugLogging">> => boolean(),
%%   <<"IdleClientTimeout">> => integer(),
%%   <<"NewDBProxyName">> => string(),
%%   <<"RequireTLS">> => boolean(),
%%   <<"RoleArn">> => string(),
%%   <<"SecurityGroups">> => list(string()())
%% }
-type modify_db_proxy_request() :: #{binary() => any()}.

%% Example:
%% db_security_group_not_supported_fault() :: #{
%%   <<"message">> => string()
%% }
-type db_security_group_not_supported_fault() :: #{binary() => any()}.

%% Example:
%% create_db_parameter_group_message() :: #{
%%   <<"DBParameterGroupFamily">> := string(),
%%   <<"DBParameterGroupName">> := string(),
%%   <<"Description">> := string(),
%%   <<"Tags">> => list(tag()())
%% }
-type create_db_parameter_group_message() :: #{binary() => any()}.

%% Example:
%% blue_green_deployment() :: #{
%%   <<"BlueGreenDeploymentIdentifier">> => string(),
%%   <<"BlueGreenDeploymentName">> => string(),
%%   <<"CreateTime">> => non_neg_integer(),
%%   <<"DeleteTime">> => non_neg_integer(),
%%   <<"Source">> => string(),
%%   <<"Status">> => string(),
%%   <<"StatusDetails">> => string(),
%%   <<"SwitchoverDetails">> => list(switchover_detail()()),
%%   <<"TagList">> => list(tag()()),
%%   <<"Target">> => string(),
%%   <<"Tasks">> => list(blue_green_deployment_task()())
%% }
-type blue_green_deployment() :: #{binary() => any()}.

%% Example:
%% blue_green_deployment_task() :: #{
%%   <<"Name">> => string(),
%%   <<"Status">> => string()
%% }
-type blue_green_deployment_task() :: #{binary() => any()}.

%% Example:
%% performance_issue_details() :: #{
%%   <<"Analysis">> => string(),
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"Metrics">> => list(metric()()),
%%   <<"StartTime">> => non_neg_integer()
%% }
-type performance_issue_details() :: #{binary() => any()}.

%% Example:
%% delete_db_instance_automated_backup_message() :: #{
%%   <<"DBInstanceAutomatedBackupsArn">> => string(),
%%   <<"DbiResourceId">> => string()
%% }
-type delete_db_instance_automated_backup_message() :: #{binary() => any()}.

%% Example:
%% integration() :: #{
%%   <<"AdditionalEncryptionContext">> => map(),
%%   <<"CreateTime">> => non_neg_integer(),
%%   <<"DataFilter">> => string(),
%%   <<"Description">> => string(),
%%   <<"Errors">> => list(integration_error()()),
%%   <<"IntegrationArn">> => string(),
%%   <<"IntegrationName">> => string(),
%%   <<"KMSKeyId">> => string(),
%%   <<"SourceArn">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"Tags">> => list(tag()()),
%%   <<"TargetArn">> => string()
%% }
-type integration() :: #{binary() => any()}.

%% Example:
%% tenant_database() :: #{
%%   <<"CharacterSetName">> => string(),
%%   <<"DBInstanceIdentifier">> => string(),
%%   <<"DbiResourceId">> => string(),
%%   <<"DeletionProtection">> => boolean(),
%%   <<"MasterUsername">> => string(),
%%   <<"NcharCharacterSetName">> => string(),
%%   <<"PendingModifiedValues">> => tenant_database_pending_modified_values(),
%%   <<"Status">> => string(),
%%   <<"TagList">> => list(tag()()),
%%   <<"TenantDBName">> => string(),
%%   <<"TenantDatabaseARN">> => string(),
%%   <<"TenantDatabaseCreateTime">> => non_neg_integer(),
%%   <<"TenantDatabaseResourceId">> => string()
%% }
-type tenant_database() :: #{binary() => any()}.

%% Example:
%% reboot_db_cluster_message() :: #{
%%   <<"DBClusterIdentifier">> := string()
%% }
-type reboot_db_cluster_message() :: #{binary() => any()}.

%% Example:
%% create_db_cluster_parameter_group_message() :: #{
%%   <<"DBClusterParameterGroupName">> := string(),
%%   <<"DBParameterGroupFamily">> := string(),
%%   <<"Description">> := string(),
%%   <<"Tags">> => list(tag()())
%% }
-type create_db_cluster_parameter_group_message() :: #{binary() => any()}.

%% Example:
%% connection_pool_configuration() :: #{
%%   <<"ConnectionBorrowTimeout">> => integer(),
%%   <<"InitQuery">> => string(),
%%   <<"MaxConnectionsPercent">> => integer(),
%%   <<"MaxIdleConnectionsPercent">> => integer(),
%%   <<"SessionPinningFilters">> => list(string()())
%% }
-type connection_pool_configuration() :: #{binary() => any()}.

%% Example:
%% copy_db_cluster_parameter_group_result() :: #{
%%   <<"DBClusterParameterGroup">> => db_cluster_parameter_group()
%% }
-type copy_db_cluster_parameter_group_result() :: #{binary() => any()}.

%% Example:
%% stop_db_instance_message() :: #{
%%   <<"DBInstanceIdentifier">> := string(),
%%   <<"DBSnapshotIdentifier">> => string()
%% }
-type stop_db_instance_message() :: #{binary() => any()}.

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
%% copy_db_cluster_parameter_group_message() :: #{
%%   <<"SourceDBClusterParameterGroupIdentifier">> := string(),
%%   <<"Tags">> => list(tag()()),
%%   <<"TargetDBClusterParameterGroupDescription">> := string(),
%%   <<"TargetDBClusterParameterGroupIdentifier">> := string()
%% }
-type copy_db_cluster_parameter_group_message() :: #{binary() => any()}.

%% Example:
%% processor_feature() :: #{
%%   <<"Name">> => string(),
%%   <<"Value">> => string()
%% }
-type processor_feature() :: #{binary() => any()}.

%% Example:
%% describe_pending_maintenance_actions_message() :: #{
%%   <<"Filters">> => list(filter()()),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer(),
%%   <<"ResourceIdentifier">> => string()
%% }
-type describe_pending_maintenance_actions_message() :: #{binary() => any()}.

%% Example:
%% describe_orderable_db_instance_options_message() :: #{
%%   <<"AvailabilityZoneGroup">> => string(),
%%   <<"DBInstanceClass">> => string(),
%%   <<"Engine">> := string(),
%%   <<"EngineVersion">> => string(),
%%   <<"Filters">> => list(filter()()),
%%   <<"LicenseModel">> => string(),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer(),
%%   <<"Vpc">> => boolean()
%% }
-type describe_orderable_db_instance_options_message() :: #{binary() => any()}.

%% Example:
%% modify_activity_stream_response() :: #{
%%   <<"EngineNativeAuditFieldsIncluded">> => boolean(),
%%   <<"KinesisStreamName">> => string(),
%%   <<"KmsKeyId">> => string(),
%%   <<"Mode">> => list(any()),
%%   <<"PolicyStatus">> => list(any()),
%%   <<"Status">> => list(any())
%% }
-type modify_activity_stream_response() :: #{binary() => any()}.

%% Example:
%% pending_cloudwatch_logs_exports() :: #{
%%   <<"LogTypesToDisable">> => list(string()()),
%%   <<"LogTypesToEnable">> => list(string()())
%% }
-type pending_cloudwatch_logs_exports() :: #{binary() => any()}.

%% Example:
%% metric() :: #{
%%   <<"MetricQuery">> => metric_query(),
%%   <<"Name">> => string(),
%%   <<"References">> => list(metric_reference()()),
%%   <<"StatisticsDetails">> => string()
%% }
-type metric() :: #{binary() => any()}.

%% Example:
%% restore_db_instance_from_s3_message() :: #{
%%   <<"PreferredBackupWindow">> => string(),
%%   <<"Port">> => integer(),
%%   <<"StorageThroughput">> => integer(),
%%   <<"S3IngestionRoleArn">> := string(),
%%   <<"EngineLifecycleSupport">> => string(),
%%   <<"EnableIAMDatabaseAuthentication">> => boolean(),
%%   <<"MasterUserSecretKmsKeyId">> => string(),
%%   <<"Iops">> => integer(),
%%   <<"DBSubnetGroupName">> => string(),
%%   <<"SourceEngineVersion">> := string(),
%%   <<"PerformanceInsightsKMSKeyId">> => string(),
%%   <<"CopyTagsToSnapshot">> => boolean(),
%%   <<"DBSecurityGroups">> => list(string()()),
%%   <<"OptionGroupName">> => string(),
%%   <<"StorageType">> => string(),
%%   <<"UseDefaultProcessorFeatures">> => boolean(),
%%   <<"S3BucketName">> := string(),
%%   <<"MonitoringRoleArn">> => string(),
%%   <<"AvailabilityZone">> => string(),
%%   <<"MasterUsername">> => string(),
%%   <<"EngineVersion">> => string(),
%%   <<"DBName">> => string(),
%%   <<"PubliclyAccessible">> => boolean(),
%%   <<"VpcSecurityGroupIds">> => list(string()()),
%%   <<"Engine">> := string(),
%%   <<"DedicatedLogVolume">> => boolean(),
%%   <<"MasterUserPassword">> => string(),
%%   <<"BackupRetentionPeriod">> => integer(),
%%   <<"Tags">> => list(tag()()),
%%   <<"LicenseModel">> => string(),
%%   <<"EnableCloudwatchLogsExports">> => list(string()()),
%%   <<"DBInstanceIdentifier">> := string(),
%%   <<"ManageMasterUserPassword">> => boolean(),
%%   <<"KmsKeyId">> => string(),
%%   <<"DBParameterGroupName">> => string(),
%%   <<"DBInstanceClass">> := string(),
%%   <<"PerformanceInsightsRetentionPeriod">> => integer(),
%%   <<"S3Prefix">> => string(),
%%   <<"PreferredMaintenanceWindow">> => string(),
%%   <<"ProcessorFeatures">> => list(processor_feature()()),
%%   <<"SourceEngine">> := string(),
%%   <<"EnablePerformanceInsights">> => boolean(),
%%   <<"AutoMinorVersionUpgrade">> => boolean(),
%%   <<"NetworkType">> => string(),
%%   <<"AllocatedStorage">> => integer(),
%%   <<"MonitoringInterval">> => integer(),
%%   <<"CACertificateIdentifier">> => string(),
%%   <<"StorageEncrypted">> => boolean(),
%%   <<"MaxAllocatedStorage">> => integer(),
%%   <<"MultiAZ">> => boolean(),
%%   <<"DeletionProtection">> => boolean()
%% }
-type restore_db_instance_from_s3_message() :: #{binary() => any()}.

%% Example:
%% invalid_export_task_state_fault() :: #{
%%   <<"message">> => string()
%% }
-type invalid_export_task_state_fault() :: #{binary() => any()}.

%% Example:
%% describe_db_proxy_targets_response() :: #{
%%   <<"Marker">> => string(),
%%   <<"Targets">> => list(db_proxy_target()())
%% }
-type describe_db_proxy_targets_response() :: #{binary() => any()}.

%% Example:
%% double_range() :: #{
%%   <<"From">> => float(),
%%   <<"To">> => float()
%% }
-type double_range() :: #{binary() => any()}.

%% Example:
%% engine_defaults() :: #{
%%   <<"DBParameterGroupFamily">> => string(),
%%   <<"Marker">> => string(),
%%   <<"Parameters">> => list(parameter()())
%% }
-type engine_defaults() :: #{binary() => any()}.

%% Example:
%% purchase_reserved_db_instances_offering_message() :: #{
%%   <<"DBInstanceCount">> => integer(),
%%   <<"ReservedDBInstanceId">> => string(),
%%   <<"ReservedDBInstancesOfferingId">> := string(),
%%   <<"Tags">> => list(tag()())
%% }
-type purchase_reserved_db_instances_offering_message() :: #{binary() => any()}.

%% Example:
%% backtrack_db_cluster_message() :: #{
%%   <<"BacktrackTo">> := non_neg_integer(),
%%   <<"DBClusterIdentifier">> := string(),
%%   <<"Force">> => boolean(),
%%   <<"UseEarliestTimeOnPointInTimeUnavailable">> => boolean()
%% }
-type backtrack_db_cluster_message() :: #{binary() => any()}.

%% Example:
%% db_cluster_backtrack_message() :: #{
%%   <<"DBClusterBacktracks">> => list(db_cluster_backtrack()()),
%%   <<"Marker">> => string()
%% }
-type db_cluster_backtrack_message() :: #{binary() => any()}.

%% Example:
%% db_snapshot_attributes_result() :: #{
%%   <<"DBSnapshotAttributes">> => list(db_snapshot_attribute()()),
%%   <<"DBSnapshotIdentifier">> => string()
%% }
-type db_snapshot_attributes_result() :: #{binary() => any()}.

%% Example:
%% create_db_subnet_group_result() :: #{
%%   <<"DBSubnetGroup">> => db_subnet_group()
%% }
-type create_db_subnet_group_result() :: #{binary() => any()}.

%% Example:
%% reference_details() :: #{
%%   <<"ScalarReferenceDetails">> => scalar_reference_details()
%% }
-type reference_details() :: #{binary() => any()}.

%% Example:
%% switchover_global_cluster_result() :: #{
%%   <<"GlobalCluster">> => global_cluster()
%% }
-type switchover_global_cluster_result() :: #{binary() => any()}.

%% Example:
%% cloudwatch_logs_export_configuration() :: #{
%%   <<"DisableLogTypes">> => list(string()()),
%%   <<"EnableLogTypes">> => list(string()())
%% }
-type cloudwatch_logs_export_configuration() :: #{binary() => any()}.

%% Example:
%% delete_tenant_database_message() :: #{
%%   <<"DBInstanceIdentifier">> := string(),
%%   <<"FinalDBSnapshotIdentifier">> => string(),
%%   <<"SkipFinalSnapshot">> => boolean(),
%%   <<"TenantDBName">> := string()
%% }
-type delete_tenant_database_message() :: #{binary() => any()}.

%% Example:
%% disable_http_endpoint_response() :: #{
%%   <<"HttpEndpointEnabled">> => boolean(),
%%   <<"ResourceArn">> => string()
%% }
-type disable_http_endpoint_response() :: #{binary() => any()}.

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
%%   <<"FeatureName">> => string(),
%%   <<"RoleArn">> => string(),
%%   <<"Status">> => string()
%% }
-type db_cluster_role() :: #{binary() => any()}.

%% Example:
%% promote_read_replica_result() :: #{
%%   <<"DBInstance">> => db_instance()
%% }
-type promote_read_replica_result() :: #{binary() => any()}.

%% Example:
%% describe_db_snapshots_message() :: #{
%%   <<"DBInstanceIdentifier">> => string(),
%%   <<"DBSnapshotIdentifier">> => string(),
%%   <<"DbiResourceId">> => string(),
%%   <<"Filters">> => list(filter()()),
%%   <<"IncludePublic">> => boolean(),
%%   <<"IncludeShared">> => boolean(),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer(),
%%   <<"SnapshotType">> => string()
%% }
-type describe_db_snapshots_message() :: #{binary() => any()}.

%% Example:
%% db_proxy_target_group_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type db_proxy_target_group_not_found_fault() :: #{binary() => any()}.

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
%%   <<"EventCategoriesList">> => list(string()()),
%%   <<"EventSubscriptionArn">> => string(),
%%   <<"SnsTopicArn">> => string(),
%%   <<"SourceIdsList">> => list(string()()),
%%   <<"SourceType">> => string(),
%%   <<"Status">> => string(),
%%   <<"SubscriptionCreationTime">> => string()
%% }
-type event_subscription() :: #{binary() => any()}.

%% Example:
%% describe_blue_green_deployments_request() :: #{
%%   <<"BlueGreenDeploymentIdentifier">> => string(),
%%   <<"Filters">> => list(filter()()),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer()
%% }
-type describe_blue_green_deployments_request() :: #{binary() => any()}.

%% Example:
%% ec2_security_group() :: #{
%%   <<"EC2SecurityGroupId">> => string(),
%%   <<"EC2SecurityGroupName">> => string(),
%%   <<"EC2SecurityGroupOwnerId">> => string(),
%%   <<"Status">> => string()
%% }
-type ec2_security_group() :: #{binary() => any()}.

%% Example:
%% global_cluster_member() :: #{
%%   <<"DBClusterArn">> => string(),
%%   <<"GlobalWriteForwardingStatus">> => list(any()),
%%   <<"IsWriter">> => boolean(),
%%   <<"Readers">> => list(string()()),
%%   <<"SynchronizationStatus">> => list(any())
%% }
-type global_cluster_member() :: #{binary() => any()}.

%% Example:
%% recurring_charge() :: #{
%%   <<"RecurringChargeAmount">> => float(),
%%   <<"RecurringChargeFrequency">> => string()
%% }
-type recurring_charge() :: #{binary() => any()}.

%% Example:
%% invalid_db_shard_group_state_fault() :: #{
%%   <<"message">> => string()
%% }
-type invalid_db_shard_group_state_fault() :: #{binary() => any()}.

%% Example:
%% modify_db_cluster_snapshot_attribute_message() :: #{
%%   <<"AttributeName">> := string(),
%%   <<"DBClusterSnapshotIdentifier">> := string(),
%%   <<"ValuesToAdd">> => list(string()()),
%%   <<"ValuesToRemove">> => list(string()())
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
%% invalid_db_subnet_group_fault() :: #{
%%   <<"message">> => string()
%% }
-type invalid_db_subnet_group_fault() :: #{binary() => any()}.

%% Example:
%% custom_db_engine_version_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type custom_db_engine_version_not_found_fault() :: #{binary() => any()}.

%% Example:
%% describe_blue_green_deployments_response() :: #{
%%   <<"BlueGreenDeployments">> => list(blue_green_deployment()()),
%%   <<"Marker">> => string()
%% }
-type describe_blue_green_deployments_response() :: #{binary() => any()}.

%% Example:
%% db_cluster_backtrack_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type db_cluster_backtrack_not_found_fault() :: #{binary() => any()}.

%% Example:
%% describe_certificates_message() :: #{
%%   <<"CertificateIdentifier">> => string(),
%%   <<"Filters">> => list(filter()()),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer()
%% }
-type describe_certificates_message() :: #{binary() => any()}.

%% Example:
%% modify_activity_stream_request() :: #{
%%   <<"AuditPolicyState">> => list(any()),
%%   <<"ResourceArn">> => string()
%% }
-type modify_activity_stream_request() :: #{binary() => any()}.

%% Example:
%% restore_db_cluster_to_point_in_time_message() :: #{
%%   <<"Port">> => integer(),
%%   <<"ServerlessV2ScalingConfiguration">> => serverless_v2_scaling_configuration(),
%%   <<"EngineLifecycleSupport">> => string(),
%%   <<"EnableIAMDatabaseAuthentication">> => boolean(),
%%   <<"Iops">> => integer(),
%%   <<"DBClusterParameterGroupName">> => string(),
%%   <<"DBSubnetGroupName">> => string(),
%%   <<"RdsCustomClusterConfiguration">> => rds_custom_cluster_configuration(),
%%   <<"DBClusterInstanceClass">> => string(),
%%   <<"PerformanceInsightsKMSKeyId">> => string(),
%%   <<"SourceDbClusterResourceId">> => string(),
%%   <<"ScalingConfiguration">> => scaling_configuration(),
%%   <<"CopyTagsToSnapshot">> => boolean(),
%%   <<"SourceDBClusterIdentifier">> => string(),
%%   <<"OptionGroupName">> => string(),
%%   <<"StorageType">> => string(),
%%   <<"MonitoringRoleArn">> => string(),
%%   <<"PubliclyAccessible">> => boolean(),
%%   <<"EngineMode">> => string(),
%%   <<"VpcSecurityGroupIds">> => list(string()()),
%%   <<"DBClusterIdentifier">> := string(),
%%   <<"Tags">> => list(tag()()),
%%   <<"RestoreToTime">> => non_neg_integer(),
%%   <<"EnableCloudwatchLogsExports">> => list(string()()),
%%   <<"KmsKeyId">> => string(),
%%   <<"PerformanceInsightsRetentionPeriod">> => integer(),
%%   <<"UseLatestRestorableTime">> => boolean(),
%%   <<"Domain">> => string(),
%%   <<"DomainIAMRoleName">> => string(),
%%   <<"EnablePerformanceInsights">> => boolean(),
%%   <<"BacktrackWindow">> => float(),
%%   <<"NetworkType">> => string(),
%%   <<"MonitoringInterval">> => integer(),
%%   <<"RestoreType">> => string(),
%%   <<"DeletionProtection">> => boolean()
%% }
-type restore_db_cluster_to_point_in_time_message() :: #{binary() => any()}.

%% Example:
%% scaling_configuration_info() :: #{
%%   <<"AutoPause">> => boolean(),
%%   <<"MaxCapacity">> => integer(),
%%   <<"MinCapacity">> => integer(),
%%   <<"SecondsBeforeTimeout">> => integer(),
%%   <<"SecondsUntilAutoPause">> => integer(),
%%   <<"TimeoutAction">> => string()
%% }
-type scaling_configuration_info() :: #{binary() => any()}.

%% Example:
%% invalid_db_subnet_group_state_fault() :: #{
%%   <<"message">> => string()
%% }
-type invalid_db_subnet_group_state_fault() :: #{binary() => any()}.

%% Example:
%% integration_error() :: #{
%%   <<"ErrorCode">> => string(),
%%   <<"ErrorMessage">> => string()
%% }
-type integration_error() :: #{binary() => any()}.

%% Example:
%% create_db_security_group_message() :: #{
%%   <<"DBSecurityGroupDescription">> := string(),
%%   <<"DBSecurityGroupName">> := string(),
%%   <<"Tags">> => list(tag()())
%% }
-type create_db_security_group_message() :: #{binary() => any()}.

%% Example:
%% db_proxy_already_exists_fault() :: #{
%%   <<"message">> => string()
%% }
-type db_proxy_already_exists_fault() :: #{binary() => any()}.

%% Example:
%% subnet() :: #{
%%   <<"SubnetAvailabilityZone">> => availability_zone(),
%%   <<"SubnetIdentifier">> => string(),
%%   <<"SubnetOutpost">> => outpost(),
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
%%   <<"DBClusterSnapshots">> => list(db_cluster_snapshot()()),
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
%%   <<"Filters">> => list(filter()()),
%%   <<"ResourceName">> := string()
%% }
-type list_tags_for_resource_message() :: #{binary() => any()}.

%% Example:
%% describe_db_cluster_snapshots_message() :: #{
%%   <<"DBClusterIdentifier">> => string(),
%%   <<"DBClusterSnapshotIdentifier">> => string(),
%%   <<"DbClusterResourceId">> => string(),
%%   <<"Filters">> => list(filter()()),
%%   <<"IncludePublic">> => boolean(),
%%   <<"IncludeShared">> => boolean(),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer(),
%%   <<"SnapshotType">> => string()
%% }
-type describe_db_cluster_snapshots_message() :: #{binary() => any()}.

%% Example:
%% db_shard_group_already_exists_fault() :: #{
%%   <<"message">> => string()
%% }
-type db_shard_group_already_exists_fault() :: #{binary() => any()}.

%% Example:
%% create_custom_db_engine_version_message() :: #{
%%   <<"DatabaseInstallationFilesS3BucketName">> => string(),
%%   <<"DatabaseInstallationFilesS3Prefix">> => string(),
%%   <<"Description">> => string(),
%%   <<"Engine">> := string(),
%%   <<"EngineVersion">> := string(),
%%   <<"ImageId">> => string(),
%%   <<"KMSKeyId">> => string(),
%%   <<"Manifest">> => string(),
%%   <<"SourceCustomDbEngineVersionIdentifier">> => string(),
%%   <<"Tags">> => list(tag()()),
%%   <<"UseAwsProvidedLatestImage">> => boolean()
%% }
-type create_custom_db_engine_version_message() :: #{binary() => any()}.

%% Example:
%% db_security_group_quota_exceeded_fault() :: #{
%%   <<"message">> => string()
%% }
-type db_security_group_quota_exceeded_fault() :: #{binary() => any()}.

%% Example:
%% create_db_instance_message() :: #{
%%   <<"PreferredBackupWindow">> => string(),
%%   <<"Port">> => integer(),
%%   <<"Timezone">> => string(),
%%   <<"NcharCharacterSetName">> => string(),
%%   <<"PromotionTier">> => integer(),
%%   <<"StorageThroughput">> => integer(),
%%   <<"DomainOu">> => string(),
%%   <<"EngineLifecycleSupport">> => string(),
%%   <<"EnableIAMDatabaseAuthentication">> => boolean(),
%%   <<"MasterUserSecretKmsKeyId">> => string(),
%%   <<"EnableCustomerOwnedIp">> => boolean(),
%%   <<"Iops">> => integer(),
%%   <<"DBSubnetGroupName">> => string(),
%%   <<"MultiTenant">> => boolean(),
%%   <<"BackupTarget">> => string(),
%%   <<"CharacterSetName">> => string(),
%%   <<"PerformanceInsightsKMSKeyId">> => string(),
%%   <<"CopyTagsToSnapshot">> => boolean(),
%%   <<"DBSecurityGroups">> => list(string()()),
%%   <<"OptionGroupName">> => string(),
%%   <<"StorageType">> => string(),
%%   <<"MonitoringRoleArn">> => string(),
%%   <<"AvailabilityZone">> => string(),
%%   <<"MasterUsername">> => string(),
%%   <<"EngineVersion">> => string(),
%%   <<"DBName">> => string(),
%%   <<"PubliclyAccessible">> => boolean(),
%%   <<"VpcSecurityGroupIds">> => list(string()()),
%%   <<"DomainAuthSecretArn">> => string(),
%%   <<"Engine">> := string(),
%%   <<"TdeCredentialPassword">> => string(),
%%   <<"DedicatedLogVolume">> => boolean(),
%%   <<"DomainDnsIps">> => list(string()()),
%%   <<"MasterUserPassword">> => string(),
%%   <<"BackupRetentionPeriod">> => integer(),
%%   <<"Tags">> => list(tag()()),
%%   <<"LicenseModel">> => string(),
%%   <<"EnableCloudwatchLogsExports">> => list(string()()),
%%   <<"DBInstanceIdentifier">> := string(),
%%   <<"ManageMasterUserPassword">> => boolean(),
%%   <<"KmsKeyId">> => string(),
%%   <<"DBParameterGroupName">> => string(),
%%   <<"DBInstanceClass">> := string(),
%%   <<"PerformanceInsightsRetentionPeriod">> => integer(),
%%   <<"DBClusterIdentifier">> => string(),
%%   <<"PreferredMaintenanceWindow">> => string(),
%%   <<"ProcessorFeatures">> => list(processor_feature()()),
%%   <<"TdeCredentialArn">> => string(),
%%   <<"Domain">> => string(),
%%   <<"DomainIAMRoleName">> => string(),
%%   <<"DomainFqdn">> => string(),
%%   <<"EnablePerformanceInsights">> => boolean(),
%%   <<"AutoMinorVersionUpgrade">> => boolean(),
%%   <<"NetworkType">> => string(),
%%   <<"AllocatedStorage">> => integer(),
%%   <<"MonitoringInterval">> => integer(),
%%   <<"CACertificateIdentifier">> => string(),
%%   <<"StorageEncrypted">> => boolean(),
%%   <<"CustomIamInstanceProfile">> => string(),
%%   <<"MaxAllocatedStorage">> => integer(),
%%   <<"DBSystemId">> => string(),
%%   <<"MultiAZ">> => boolean(),
%%   <<"DeletionProtection">> => boolean()
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
%% delete_db_proxy_response() :: #{
%%   <<"DBProxy">> => db_proxy()
%% }
-type delete_db_proxy_response() :: #{binary() => any()}.

%% Example:
%% metric_reference() :: #{
%%   <<"Name">> => string(),
%%   <<"ReferenceDetails">> => reference_details()
%% }
-type metric_reference() :: #{binary() => any()}.

%% Example:
%% describe_option_group_options_message() :: #{
%%   <<"EngineName">> := string(),
%%   <<"Filters">> => list(filter()()),
%%   <<"MajorEngineVersion">> => string(),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer()
%% }
-type describe_option_group_options_message() :: #{binary() => any()}.

%% Example:
%% custom_db_engine_version_quota_exceeded_fault() :: #{
%%   <<"message">> => string()
%% }
-type custom_db_engine_version_quota_exceeded_fault() :: #{binary() => any()}.

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
%% delete_db_security_group_message() :: #{
%%   <<"DBSecurityGroupName">> := string()
%% }
-type delete_db_security_group_message() :: #{binary() => any()}.

%% Example:
%% db_subnet_quota_exceeded_fault() :: #{
%%   <<"message">> => string()
%% }
-type db_subnet_quota_exceeded_fault() :: #{binary() => any()}.

%% Example:
%% db_instance() :: #{
%%   <<"PreferredBackupWindow">> => string(),
%%   <<"Timezone">> => string(),
%%   <<"ResumeFullAutomationModeTime">> => non_neg_integer(),
%%   <<"NcharCharacterSetName">> => string(),
%%   <<"Engine">> => string(),
%%   <<"PromotionTier">> => integer(),
%%   <<"StorageThroughput">> => integer(),
%%   <<"EngineLifecycleSupport">> => string(),
%%   <<"DBInstanceIdentifier">> => string(),
%%   <<"ActivityStreamMode">> => list(any()),
%%   <<"MasterUserSecret">> => master_user_secret(),
%%   <<"ActivityStreamPolicyStatus">> => list(any()),
%%   <<"DBParameterGroups">> => list(db_parameter_group_status()()),
%%   <<"AutomaticRestartTime">> => non_neg_integer(),
%%   <<"ListenerEndpoint">> => endpoint(),
%%   <<"Iops">> => integer(),
%%   <<"ActivityStreamKmsKeyId">> => string(),
%%   <<"StatusInfos">> => list(db_instance_status_info()()),
%%   <<"MultiTenant">> => boolean(),
%%   <<"DBInstanceArn">> => string(),
%%   <<"BackupTarget">> => string(),
%%   <<"DomainMemberships">> => list(domain_membership()()),
%%   <<"DBInstanceClass">> => string(),
%%   <<"CharacterSetName">> => string(),
%%   <<"PendingModifiedValues">> => pending_modified_values(),
%%   <<"ActivityStreamStatus">> => list(any()),
%%   <<"PerformanceInsightsKMSKeyId">> => string(),
%%   <<"SecondaryAvailabilityZone">> => string(),
%%   <<"CustomerOwnedIpEnabled">> => boolean(),
%%   <<"DBSubnetGroup">> => db_subnet_group(),
%%   <<"DbiResourceId">> => string(),
%%   <<"CopyTagsToSnapshot">> => boolean(),
%%   <<"PerformanceInsightsEnabled">> => boolean(),
%%   <<"DBSecurityGroups">> => list(db_security_group_membership()()),
%%   <<"ActivityStreamKinesisStreamName">> => string(),
%%   <<"StorageType">> => string(),
%%   <<"MonitoringRoleArn">> => string(),
%%   <<"AvailabilityZone">> => string(),
%%   <<"MasterUsername">> => string(),
%%   <<"EngineVersion">> => string(),
%%   <<"EnabledCloudwatchLogsExports">> => list(string()()),
%%   <<"DBName">> => string(),
%%   <<"PubliclyAccessible">> => boolean(),
%%   <<"IAMDatabaseAuthenticationEnabled">> => boolean(),
%%   <<"IsStorageConfigUpgradeAvailable">> => boolean(),
%%   <<"DedicatedLogVolume">> => boolean(),
%%   <<"LatestRestorableTime">> => non_neg_integer(),
%%   <<"EnhancedMonitoringResourceArn">> => string(),
%%   <<"AutomationMode">> => list(any()),
%%   <<"DBInstanceStatus">> => string(),
%%   <<"BackupRetentionPeriod">> => integer(),
%%   <<"LicenseModel">> => string(),
%%   <<"OptionGroupMemberships">> => list(option_group_membership()()),
%%   <<"AssociatedRoles">> => list(db_instance_role()()),
%%   <<"TagList">> => list(tag()()),
%%   <<"DbInstancePort">> => integer(),
%%   <<"ReadReplicaSourceDBInstanceIdentifier">> => string(),
%%   <<"KmsKeyId">> => string(),
%%   <<"ReplicaMode">> => list(any()),
%%   <<"PerformanceInsightsRetentionPeriod">> => integer(),
%%   <<"DBClusterIdentifier">> => string(),
%%   <<"Endpoint">> => endpoint(),
%%   <<"PercentProgress">> => string(),
%%   <<"PreferredMaintenanceWindow">> => string(),
%%   <<"ReadReplicaDBClusterIdentifiers">> => list(string()()),
%%   <<"InstanceCreateTime">> => non_neg_integer(),
%%   <<"ProcessorFeatures">> => list(processor_feature()()),
%%   <<"VpcSecurityGroups">> => list(vpc_security_group_membership()()),
%%   <<"TdeCredentialArn">> => string(),
%%   <<"AutoMinorVersionUpgrade">> => boolean(),
%%   <<"NetworkType">> => string(),
%%   <<"AllocatedStorage">> => integer(),
%%   <<"ReadReplicaDBInstanceIdentifiers">> => list(string()()),
%%   <<"MonitoringInterval">> => integer(),
%%   <<"AwsBackupRecoveryPointArn">> => string(),
%%   <<"CACertificateIdentifier">> => string(),
%%   <<"StorageEncrypted">> => boolean(),
%%   <<"CustomIamInstanceProfile">> => string(),
%%   <<"CertificateDetails">> => certificate_details(),
%%   <<"MaxAllocatedStorage">> => integer(),
%%   <<"ReadReplicaSourceDBClusterIdentifier">> => string(),
%%   <<"ActivityStreamEngineNativeAuditFieldsIncluded">> => boolean(),
%%   <<"DBInstanceAutomatedBackupsReplications">> => list(db_instance_automated_backups_replication()()),
%%   <<"DBSystemId">> => string(),
%%   <<"MultiAZ">> => boolean(),
%%   <<"DeletionProtection">> => boolean()
%% }
-type db_instance() :: #{binary() => any()}.

%% Example:
%% db_proxy_endpoint_already_exists_fault() :: #{
%%   <<"message">> => string()
%% }
-type db_proxy_endpoint_already_exists_fault() :: #{binary() => any()}.

%% Example:
%% add_role_to_db_cluster_message() :: #{
%%   <<"DBClusterIdentifier">> := string(),
%%   <<"FeatureName">> => string(),
%%   <<"RoleArn">> := string()
%% }
-type add_role_to_db_cluster_message() :: #{binary() => any()}.

%% Example:
%% db_cluster_automated_backup_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type db_cluster_automated_backup_not_found_fault() :: #{binary() => any()}.

%% Example:
%% describe_engine_default_cluster_parameters_result() :: #{
%%   <<"EngineDefaults">> => engine_defaults()
%% }
-type describe_engine_default_cluster_parameters_result() :: #{binary() => any()}.

%% Example:
%% db_proxy_target() :: #{
%%   <<"Endpoint">> => string(),
%%   <<"Port">> => integer(),
%%   <<"RdsResourceId">> => string(),
%%   <<"Role">> => list(any()),
%%   <<"TargetArn">> => string(),
%%   <<"TargetHealth">> => target_health(),
%%   <<"TrackedClusterId">> => string(),
%%   <<"Type">> => list(any())
%% }
-type db_proxy_target() :: #{binary() => any()}.

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
%% recommended_action_parameter() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type recommended_action_parameter() :: #{binary() => any()}.

%% Example:
%% delete_blue_green_deployment_response() :: #{
%%   <<"BlueGreenDeployment">> => blue_green_deployment()
%% }
-type delete_blue_green_deployment_response() :: #{binary() => any()}.

%% Example:
%% db_cluster_message() :: #{
%%   <<"DBClusters">> => list(db_cluster()()),
%%   <<"Marker">> => string()
%% }
-type db_cluster_message() :: #{binary() => any()}.

%% Example:
%% create_db_snapshot_message() :: #{
%%   <<"DBInstanceIdentifier">> := string(),
%%   <<"DBSnapshotIdentifier">> := string(),
%%   <<"Tags">> => list(tag()())
%% }
-type create_db_snapshot_message() :: #{binary() => any()}.

%% Example:
%% minimum_engine_version_per_allowed_value() :: #{
%%   <<"AllowedValue">> => string(),
%%   <<"MinimumEngineVersion">> => string()
%% }
-type minimum_engine_version_per_allowed_value() :: #{binary() => any()}.

%% Example:
%% describe_valid_db_instance_modifications_result() :: #{
%%   <<"ValidDBInstanceModificationsMessage">> => valid_db_instance_modifications_message()
%% }
-type describe_valid_db_instance_modifications_result() :: #{binary() => any()}.

%% Example:
%% ec2_image_properties_not_supported_fault() :: #{
%%   <<"message">> => string()
%% }
-type ec2_image_properties_not_supported_fault() :: #{binary() => any()}.

%% Example:
%% copy_option_group_message() :: #{
%%   <<"SourceOptionGroupIdentifier">> := string(),
%%   <<"Tags">> => list(tag()()),
%%   <<"TargetOptionGroupDescription">> := string(),
%%   <<"TargetOptionGroupIdentifier">> := string()
%% }
-type copy_option_group_message() :: #{binary() => any()}.

%% Example:
%% describe_engine_default_parameters_message() :: #{
%%   <<"DBParameterGroupFamily">> := string(),
%%   <<"Filters">> => list(filter()()),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer()
%% }
-type describe_engine_default_parameters_message() :: #{binary() => any()}.

%% Example:
%% db_subnet_group_quota_exceeded_fault() :: #{
%%   <<"message">> => string()
%% }
-type db_subnet_group_quota_exceeded_fault() :: #{binary() => any()}.

%% Example:
%% describe_valid_db_instance_modifications_message() :: #{
%%   <<"DBInstanceIdentifier">> := string()
%% }
-type describe_valid_db_instance_modifications_message() :: #{binary() => any()}.

%% Example:
%% delete_tenant_database_result() :: #{
%%   <<"TenantDatabase">> => tenant_database()
%% }
-type delete_tenant_database_result() :: #{binary() => any()}.

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
%% invalid_db_instance_automated_backup_state_fault() :: #{
%%   <<"message">> => string()
%% }
-type invalid_db_instance_automated_backup_state_fault() :: #{binary() => any()}.

%% Example:
%% invalid_db_cluster_endpoint_state_fault() :: #{
%%   <<"message">> => string()
%% }
-type invalid_db_cluster_endpoint_state_fault() :: #{binary() => any()}.

%% Example:
%% describe_db_engine_versions_message() :: #{
%%   <<"DBParameterGroupFamily">> => string(),
%%   <<"DefaultOnly">> => boolean(),
%%   <<"Engine">> => string(),
%%   <<"EngineVersion">> => string(),
%%   <<"Filters">> => list(filter()()),
%%   <<"IncludeAll">> => boolean(),
%%   <<"ListSupportedCharacterSets">> => boolean(),
%%   <<"ListSupportedTimezones">> => boolean(),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer()
%% }
-type describe_db_engine_versions_message() :: #{binary() => any()}.

%% Example:
%% promote_read_replica_db_cluster_message() :: #{
%%   <<"DBClusterIdentifier">> := string()
%% }
-type promote_read_replica_db_cluster_message() :: #{binary() => any()}.

%% Example:
%% create_blue_green_deployment_request() :: #{
%%   <<"BlueGreenDeploymentName">> := string(),
%%   <<"Source">> := string(),
%%   <<"Tags">> => list(tag()()),
%%   <<"TargetDBClusterParameterGroupName">> => string(),
%%   <<"TargetDBInstanceClass">> => string(),
%%   <<"TargetDBParameterGroupName">> => string(),
%%   <<"TargetEngineVersion">> => string(),
%%   <<"UpgradeTargetStorageConfig">> => boolean()
%% }
-type create_blue_green_deployment_request() :: #{binary() => any()}.

%% Example:
%% domain_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type domain_not_found_fault() :: #{binary() => any()}.

%% Example:
%% create_db_instance_read_replica_result() :: #{
%%   <<"DBInstance">> => db_instance()
%% }
-type create_db_instance_read_replica_result() :: #{binary() => any()}.

%% Example:
%% restore_db_cluster_from_s3_result() :: #{
%%   <<"DBCluster">> => db_cluster()
%% }
-type restore_db_cluster_from_s3_result() :: #{binary() => any()}.

%% Example:
%% db_cluster_endpoint_message() :: #{
%%   <<"DBClusterEndpoints">> => list(db_cluster_endpoint()()),
%%   <<"Marker">> => string()
%% }
-type db_cluster_endpoint_message() :: #{binary() => any()}.

%% Example:
%% download_db_log_file_portion_details() :: #{
%%   <<"AdditionalDataPending">> => boolean(),
%%   <<"LogFileData">> => string(),
%%   <<"Marker">> => string()
%% }
-type download_db_log_file_portion_details() :: #{binary() => any()}.

%% Example:
%% modify_certificates_message() :: #{
%%   <<"CertificateIdentifier">> => string(),
%%   <<"RemoveCustomerOverride">> => boolean()
%% }
-type modify_certificates_message() :: #{binary() => any()}.

%% Example:
%% db_security_group_already_exists_fault() :: #{
%%   <<"message">> => string()
%% }
-type db_security_group_already_exists_fault() :: #{binary() => any()}.

%% Example:
%% character_set() :: #{
%%   <<"CharacterSetDescription">> => string(),
%%   <<"CharacterSetName">> => string()
%% }
-type character_set() :: #{binary() => any()}.

%% Example:
%% delete_db_cluster_message() :: #{
%%   <<"DBClusterIdentifier">> := string(),
%%   <<"DeleteAutomatedBackups">> => boolean(),
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
%% switchover_blue_green_deployment_request() :: #{
%%   <<"BlueGreenDeploymentIdentifier">> := string(),
%%   <<"SwitchoverTimeout">> => integer()
%% }
-type switchover_blue_green_deployment_request() :: #{binary() => any()}.

%% Example:
%% db_instance_automated_backup_message() :: #{
%%   <<"DBInstanceAutomatedBackups">> => list(db_instance_automated_backup()()),
%%   <<"Marker">> => string()
%% }
-type db_instance_automated_backup_message() :: #{binary() => any()}.

%% Example:
%% db_security_group() :: #{
%%   <<"DBSecurityGroupArn">> => string(),
%%   <<"DBSecurityGroupDescription">> => string(),
%%   <<"DBSecurityGroupName">> => string(),
%%   <<"EC2SecurityGroups">> => list(ec2_security_group()()),
%%   <<"IPRanges">> => list(ip_range()()),
%%   <<"OwnerId">> => string(),
%%   <<"VpcId">> => string()
%% }
-type db_security_group() :: #{binary() => any()}.

%% Example:
%% describe_db_proxy_endpoints_response() :: #{
%%   <<"DBProxyEndpoints">> => list(db_proxy_endpoint()()),
%%   <<"Marker">> => string()
%% }
-type describe_db_proxy_endpoints_response() :: #{binary() => any()}.

%% Example:
%% invalid_export_source_state_fault() :: #{
%%   <<"message">> => string()
%% }
-type invalid_export_source_state_fault() :: #{binary() => any()}.

%% Example:
%% export_task_already_exists_fault() :: #{
%%   <<"message">> => string()
%% }
-type export_task_already_exists_fault() :: #{binary() => any()}.

%% Example:
%% add_source_identifier_to_subscription_result() :: #{
%%   <<"EventSubscription">> => event_subscription()
%% }
-type add_source_identifier_to_subscription_result() :: #{binary() => any()}.

%% Example:
%% db_shard_group_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type db_shard_group_not_found_fault() :: #{binary() => any()}.

%% Example:
%% describe_account_attributes_message() :: #{

%% }
-type describe_account_attributes_message() :: #{binary() => any()}.

%% Example:
%% db_parameter_group() :: #{
%%   <<"DBParameterGroupArn">> => string(),
%%   <<"DBParameterGroupFamily">> => string(),
%%   <<"DBParameterGroupName">> => string(),
%%   <<"Description">> => string()
%% }
-type db_parameter_group() :: #{binary() => any()}.

%% Example:
%% describe_reserved_db_instances_offerings_message() :: #{
%%   <<"DBInstanceClass">> => string(),
%%   <<"Duration">> => string(),
%%   <<"Filters">> => list(filter()()),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer(),
%%   <<"MultiAZ">> => boolean(),
%%   <<"OfferingType">> => string(),
%%   <<"ProductDescription">> => string(),
%%   <<"ReservedDBInstancesOfferingId">> => string()
%% }
-type describe_reserved_db_instances_offerings_message() :: #{binary() => any()}.

%% Example:
%% custom_db_engine_version_a_m_i() :: #{
%%   <<"ImageId">> => string(),
%%   <<"Status">> => string()
%% }
-type custom_db_engine_version_a_m_i() :: #{binary() => any()}.

%% Example:
%% db_parameter_group_already_exists_fault() :: #{
%%   <<"message">> => string()
%% }
-type db_parameter_group_already_exists_fault() :: #{binary() => any()}.

%% Example:
%% delete_db_instance_message() :: #{
%%   <<"DBInstanceIdentifier">> := string(),
%%   <<"DeleteAutomatedBackups">> => boolean(),
%%   <<"FinalDBSnapshotIdentifier">> => string(),
%%   <<"SkipFinalSnapshot">> => boolean()
%% }
-type delete_db_instance_message() :: #{binary() => any()}.

%% Example:
%% stop_db_instance_automated_backups_replication_result() :: #{
%%   <<"DBInstanceAutomatedBackup">> => db_instance_automated_backup()
%% }
-type stop_db_instance_automated_backups_replication_result() :: #{binary() => any()}.

%% Example:
%% invalid_vpc_network_state_fault() :: #{
%%   <<"message">> => string()
%% }
-type invalid_vpc_network_state_fault() :: #{binary() => any()}.

%% Example:
%% option_group_quota_exceeded_fault() :: #{
%%   <<"message">> => string()
%% }
-type option_group_quota_exceeded_fault() :: #{binary() => any()}.

%% Example:
%% source_region() :: #{
%%   <<"Endpoint">> => string(),
%%   <<"RegionName">> => string(),
%%   <<"Status">> => string(),
%%   <<"SupportsDBInstanceAutomatedBackupsReplication">> => boolean()
%% }
-type source_region() :: #{binary() => any()}.

%% Example:
%% iam_role_missing_permissions_fault() :: #{
%%   <<"message">> => string()
%% }
-type iam_role_missing_permissions_fault() :: #{binary() => any()}.

%% Example:
%% reset_db_parameter_group_message() :: #{
%%   <<"DBParameterGroupName">> := string(),
%%   <<"Parameters">> => list(parameter()()),
%%   <<"ResetAllParameters">> => boolean()
%% }
-type reset_db_parameter_group_message() :: #{binary() => any()}.

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
%% switchover_read_replica_message() :: #{
%%   <<"DBInstanceIdentifier">> := string()
%% }
-type switchover_read_replica_message() :: #{binary() => any()}.

%% Example:
%% db_security_group_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type db_security_group_not_found_fault() :: #{binary() => any()}.

%% Example:
%% describe_db_proxies_request() :: #{
%%   <<"DBProxyName">> => string(),
%%   <<"Filters">> => list(filter()()),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer()
%% }
-type describe_db_proxies_request() :: #{binary() => any()}.

%% Example:
%% describe_db_cluster_endpoints_message() :: #{
%%   <<"DBClusterEndpointIdentifier">> => string(),
%%   <<"DBClusterIdentifier">> => string(),
%%   <<"Filters">> => list(filter()()),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer()
%% }
-type describe_db_cluster_endpoints_message() :: #{binary() => any()}.

%% Example:
%% tenant_database_quota_exceeded_fault() :: #{
%%   <<"message">> => string()
%% }
-type tenant_database_quota_exceeded_fault() :: #{binary() => any()}.

%% Example:
%% modify_db_cluster_result() :: #{
%%   <<"DBCluster">> => db_cluster()
%% }
-type modify_db_cluster_result() :: #{binary() => any()}.

%% Example:
%% orderable_db_instance_options_message() :: #{
%%   <<"Marker">> => string(),
%%   <<"OrderableDBInstanceOptions">> => list(orderable_db_instance_option()())
%% }
-type orderable_db_instance_options_message() :: #{binary() => any()}.

%% Example:
%% promote_read_replica_db_cluster_result() :: #{
%%   <<"DBCluster">> => db_cluster()
%% }
-type promote_read_replica_db_cluster_result() :: #{binary() => any()}.

%% Example:
%% authorize_db_security_group_ingress_message() :: #{
%%   <<"CIDRIP">> => string(),
%%   <<"DBSecurityGroupName">> := string(),
%%   <<"EC2SecurityGroupId">> => string(),
%%   <<"EC2SecurityGroupName">> => string(),
%%   <<"EC2SecurityGroupOwnerId">> => string()
%% }
-type authorize_db_security_group_ingress_message() :: #{binary() => any()}.

%% Example:
%% switchover_detail() :: #{
%%   <<"SourceMember">> => string(),
%%   <<"Status">> => string(),
%%   <<"TargetMember">> => string()
%% }
-type switchover_detail() :: #{binary() => any()}.

%% Example:
%% integration_conflict_operation_fault() :: #{
%%   <<"message">> => string()
%% }
-type integration_conflict_operation_fault() :: #{binary() => any()}.

%% Example:
%% db_recommendations_message() :: #{
%%   <<"DBRecommendations">> => list(db_recommendation()()),
%%   <<"Marker">> => string()
%% }
-type db_recommendations_message() :: #{binary() => any()}.

%% Example:
%% describe_event_subscriptions_message() :: #{
%%   <<"Filters">> => list(filter()()),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer(),
%%   <<"SubscriptionName">> => string()
%% }
-type describe_event_subscriptions_message() :: #{binary() => any()}.

%% Example:
%% create_db_shard_group_message() :: #{
%%   <<"ComputeRedundancy">> => integer(),
%%   <<"DBClusterIdentifier">> := string(),
%%   <<"DBShardGroupIdentifier">> := string(),
%%   <<"MaxACU">> := float(),
%%   <<"MinACU">> => float(),
%%   <<"PubliclyAccessible">> => boolean(),
%%   <<"Tags">> => list(tag()())
%% }
-type create_db_shard_group_message() :: #{binary() => any()}.

%% Example:
%% describe_db_instance_automated_backups_message() :: #{
%%   <<"DBInstanceAutomatedBackupsArn">> => string(),
%%   <<"DBInstanceIdentifier">> => string(),
%%   <<"DbiResourceId">> => string(),
%%   <<"Filters">> => list(filter()()),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer()
%% }
-type describe_db_instance_automated_backups_message() :: #{binary() => any()}.

%% Example:
%% invalid_custom_db_engine_version_state_fault() :: #{
%%   <<"message">> => string()
%% }
-type invalid_custom_db_engine_version_state_fault() :: #{binary() => any()}.

%% Example:
%% db_cluster_snapshot_already_exists_fault() :: #{
%%   <<"message">> => string()
%% }
-type db_cluster_snapshot_already_exists_fault() :: #{binary() => any()}.

%% Example:
%% create_db_cluster_endpoint_message() :: #{
%%   <<"DBClusterEndpointIdentifier">> := string(),
%%   <<"DBClusterIdentifier">> := string(),
%%   <<"EndpointType">> := string(),
%%   <<"ExcludedMembers">> => list(string()()),
%%   <<"StaticMembers">> => list(string()()),
%%   <<"Tags">> => list(tag()())
%% }
-type create_db_cluster_endpoint_message() :: #{binary() => any()}.

%% Example:
%% modify_db_cluster_snapshot_attribute_result() :: #{
%%   <<"DBClusterSnapshotAttributesResult">> => db_cluster_snapshot_attributes_result()
%% }
-type modify_db_cluster_snapshot_attribute_result() :: #{binary() => any()}.

%% Example:
%% delete_integration_message() :: #{
%%   <<"IntegrationIdentifier">> := string()
%% }
-type delete_integration_message() :: #{binary() => any()}.

%% Example:
%% db_cluster_snapshot_attribute() :: #{
%%   <<"AttributeName">> => string(),
%%   <<"AttributeValues">> => list(string()())
%% }
-type db_cluster_snapshot_attribute() :: #{binary() => any()}.

%% Example:
%% start_activity_stream_request() :: #{
%%   <<"ApplyImmediately">> => boolean(),
%%   <<"EngineNativeAuditFieldsIncluded">> => boolean(),
%%   <<"KmsKeyId">> := string(),
%%   <<"Mode">> := list(any()),
%%   <<"ResourceArn">> := string()
%% }
-type start_activity_stream_request() :: #{binary() => any()}.

%% Example:
%% db_subnet_group_does_not_cover_enough_a_zs() :: #{
%%   <<"message">> => string()
%% }
-type db_subnet_group_does_not_cover_enough_a_zs() :: #{binary() => any()}.

%% Example:
%% describe_db_security_groups_message() :: #{
%%   <<"DBSecurityGroupName">> => string(),
%%   <<"Filters">> => list(filter()()),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer()
%% }
-type describe_db_security_groups_message() :: #{binary() => any()}.

%% Example:
%% pending_modified_values() :: #{
%%   <<"AllocatedStorage">> => integer(),
%%   <<"AutomationMode">> => list(any()),
%%   <<"BackupRetentionPeriod">> => integer(),
%%   <<"CACertificateIdentifier">> => string(),
%%   <<"DBInstanceClass">> => string(),
%%   <<"DBInstanceIdentifier">> => string(),
%%   <<"DBSubnetGroupName">> => string(),
%%   <<"DedicatedLogVolume">> => boolean(),
%%   <<"Engine">> => string(),
%%   <<"EngineVersion">> => string(),
%%   <<"IAMDatabaseAuthenticationEnabled">> => boolean(),
%%   <<"Iops">> => integer(),
%%   <<"LicenseModel">> => string(),
%%   <<"MasterUserPassword">> => string(),
%%   <<"MultiAZ">> => boolean(),
%%   <<"MultiTenant">> => boolean(),
%%   <<"PendingCloudwatchLogsExports">> => pending_cloudwatch_logs_exports(),
%%   <<"Port">> => integer(),
%%   <<"ProcessorFeatures">> => list(processor_feature()()),
%%   <<"ResumeFullAutomationModeTime">> => non_neg_integer(),
%%   <<"StorageThroughput">> => integer(),
%%   <<"StorageType">> => string()
%% }
-type pending_modified_values() :: #{binary() => any()}.

%% Example:
%% network_type_not_supported() :: #{
%%   <<"message">> => string()
%% }
-type network_type_not_supported() :: #{binary() => any()}.

%% Example:
%% orderable_db_instance_option() :: #{
%%   <<"SupportedEngineModes">> => list(string()()),
%%   <<"AvailabilityZoneGroup">> => string(),
%%   <<"SupportsIAMDatabaseAuthentication">> => boolean(),
%%   <<"Engine">> => string(),
%%   <<"SupportedActivityStreamModes">> => list(string()()),
%%   <<"SupportsStorageEncryption">> => boolean(),
%%   <<"SupportsStorageThroughput">> => boolean(),
%%   <<"DBInstanceClass">> => string(),
%%   <<"MaxStorageThroughputPerIops">> => float(),
%%   <<"ReadReplicaCapable">> => boolean(),
%%   <<"SupportsClusters">> => boolean(),
%%   <<"StorageType">> => string(),
%%   <<"MaxIopsPerGib">> => float(),
%%   <<"EngineVersion">> => string(),
%%   <<"MinIopsPerGib">> => float(),
%%   <<"MinStorageThroughputPerDbInstance">> => integer(),
%%   <<"SupportsDedicatedLogVolume">> => boolean(),
%%   <<"SupportsStorageAutoscaling">> => boolean(),
%%   <<"MinStorageThroughputPerIops">> => float(),
%%   <<"MinIopsPerDbInstance">> => integer(),
%%   <<"MinStorageSize">> => integer(),
%%   <<"AvailableProcessorFeatures">> => list(available_processor_feature()()),
%%   <<"AvailabilityZones">> => list(availability_zone()()),
%%   <<"MaxStorageThroughputPerDbInstance">> => integer(),
%%   <<"SupportsEnhancedMonitoring">> => boolean(),
%%   <<"LicenseModel">> => string(),
%%   <<"MaxIopsPerDbInstance">> => integer(),
%%   <<"SupportsKerberosAuthentication">> => boolean(),
%%   <<"SupportedNetworkTypes">> => list(string()()),
%%   <<"SupportsGlobalDatabases">> => boolean(),
%%   <<"MultiAZCapable">> => boolean(),
%%   <<"SupportsPerformanceInsights">> => boolean(),
%%   <<"Vpc">> => boolean(),
%%   <<"OutpostCapable">> => boolean(),
%%   <<"MaxStorageSize">> => integer(),
%%   <<"SupportsIops">> => boolean()
%% }
-type orderable_db_instance_option() :: #{binary() => any()}.

%% Example:
%% backup_policy_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type backup_policy_not_found_fault() :: #{binary() => any()}.

%% Example:
%% delete_db_parameter_group_message() :: #{
%%   <<"DBParameterGroupName">> := string()
%% }
-type delete_db_parameter_group_message() :: #{binary() => any()}.

%% Example:
%% option_group_option_setting() :: #{
%%   <<"AllowedValues">> => string(),
%%   <<"ApplyType">> => string(),
%%   <<"DefaultValue">> => string(),
%%   <<"IsModifiable">> => boolean(),
%%   <<"IsRequired">> => boolean(),
%%   <<"MinimumEngineVersionPerAllowedValue">> => list(minimum_engine_version_per_allowed_value()()),
%%   <<"SettingDescription">> => string(),
%%   <<"SettingName">> => string()
%% }
-type option_group_option_setting() :: #{binary() => any()}.

%% Example:
%% db_instance_not_ready_fault() :: #{
%%   <<"message">> => string()
%% }
-type db_instance_not_ready_fault() :: #{binary() => any()}.

%% Example:
%% db_cluster_parameter_groups_message() :: #{
%%   <<"DBClusterParameterGroups">> => list(db_cluster_parameter_group()()),
%%   <<"Marker">> => string()
%% }
-type db_cluster_parameter_groups_message() :: #{binary() => any()}.

%% Example:
%% db_instance_automated_backup_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type db_instance_automated_backup_not_found_fault() :: #{binary() => any()}.

%% Example:
%% restore_db_instance_from_db_snapshot_result() :: #{
%%   <<"DBInstance">> => db_instance()
%% }
-type restore_db_instance_from_db_snapshot_result() :: #{binary() => any()}.

%% Example:
%% describe_db_cluster_parameter_groups_message() :: #{
%%   <<"DBClusterParameterGroupName">> => string(),
%%   <<"Filters">> => list(filter()()),
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
%% db_security_group_message() :: #{
%%   <<"DBSecurityGroups">> => list(db_security_group()()),
%%   <<"Marker">> => string()
%% }
-type db_security_group_message() :: #{binary() => any()}.

%% Example:
%% integration_quota_exceeded_fault() :: #{
%%   <<"message">> => string()
%% }
-type integration_quota_exceeded_fault() :: #{binary() => any()}.

%% Example:
%% available_processor_feature() :: #{
%%   <<"AllowedValues">> => string(),
%%   <<"DefaultValue">> => string(),
%%   <<"Name">> => string()
%% }
-type available_processor_feature() :: #{binary() => any()}.

%% Example:
%% describe_db_recommendations_message() :: #{
%%   <<"Filters">> => list(filter()()),
%%   <<"LastUpdatedAfter">> => non_neg_integer(),
%%   <<"LastUpdatedBefore">> => non_neg_integer(),
%%   <<"Locale">> => string(),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer()
%% }
-type describe_db_recommendations_message() :: #{binary() => any()}.

%% Example:
%% db_instance_role_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type db_instance_role_not_found_fault() :: #{binary() => any()}.

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
%%   <<"Tags">> => list(tag()()),
%%   <<"TargetDBClusterSnapshotIdentifier">> := string()
%% }
-type copy_db_cluster_snapshot_message() :: #{binary() => any()}.

%% Example:
%% db_instance_role_quota_exceeded_fault() :: #{
%%   <<"message">> => string()
%% }
-type db_instance_role_quota_exceeded_fault() :: #{binary() => any()}.

%% Example:
%% revoke_db_security_group_ingress_result() :: #{
%%   <<"DBSecurityGroup">> => db_security_group()
%% }
-type revoke_db_security_group_ingress_result() :: #{binary() => any()}.

%% Example:
%% global_cluster() :: #{
%%   <<"DatabaseName">> => string(),
%%   <<"DeletionProtection">> => boolean(),
%%   <<"Endpoint">> => string(),
%%   <<"Engine">> => string(),
%%   <<"EngineLifecycleSupport">> => string(),
%%   <<"EngineVersion">> => string(),
%%   <<"FailoverState">> => failover_state(),
%%   <<"GlobalClusterArn">> => string(),
%%   <<"GlobalClusterIdentifier">> => string(),
%%   <<"GlobalClusterMembers">> => list(global_cluster_member()()),
%%   <<"GlobalClusterResourceId">> => string(),
%%   <<"Status">> => string(),
%%   <<"StorageEncrypted">> => boolean(),
%%   <<"TagList">> => list(tag()())
%% }
-type global_cluster() :: #{binary() => any()}.

%% Example:
%% enable_http_endpoint_response() :: #{
%%   <<"HttpEndpointEnabled">> => boolean(),
%%   <<"ResourceArn">> => string()
%% }
-type enable_http_endpoint_response() :: #{binary() => any()}.

%% Example:
%% db_instance_automated_backups_replication() :: #{
%%   <<"DBInstanceAutomatedBackupsArn">> => string()
%% }
-type db_instance_automated_backups_replication() :: #{binary() => any()}.

%% Example:
%% describe_db_proxies_response() :: #{
%%   <<"DBProxies">> => list(db_proxy()()),
%%   <<"Marker">> => string()
%% }
-type describe_db_proxies_response() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% master_user_secret() :: #{
%%   <<"KmsKeyId">> => string(),
%%   <<"SecretArn">> => string(),
%%   <<"SecretStatus">> => string()
%% }
-type master_user_secret() :: #{binary() => any()}.

%% Example:
%% authorization_already_exists_fault() :: #{
%%   <<"message">> => string()
%% }
-type authorization_already_exists_fault() :: #{binary() => any()}.

%% Example:
%% db_instance_role_already_exists_fault() :: #{
%%   <<"message">> => string()
%% }
-type db_instance_role_already_exists_fault() :: #{binary() => any()}.

%% Example:
%% create_global_cluster_result() :: #{
%%   <<"GlobalCluster">> => global_cluster()
%% }
-type create_global_cluster_result() :: #{binary() => any()}.

%% Example:
%% certificate_message() :: #{
%%   <<"Certificates">> => list(certificate()()),
%%   <<"DefaultCertificateForNewLaunches">> => string(),
%%   <<"Marker">> => string()
%% }
-type certificate_message() :: #{binary() => any()}.

%% Example:
%% serverless_v2_features_support() :: #{
%%   <<"MaxCapacity">> => float(),
%%   <<"MinCapacity">> => float()
%% }
-type serverless_v2_features_support() :: #{binary() => any()}.

%% Example:
%% deregister_db_proxy_targets_request() :: #{
%%   <<"DBClusterIdentifiers">> => list(string()()),
%%   <<"DBInstanceIdentifiers">> => list(string()()),
%%   <<"DBProxyName">> := string(),
%%   <<"TargetGroupName">> => string()
%% }
-type deregister_db_proxy_targets_request() :: #{binary() => any()}.

%% Example:
%% db_upgrade_dependency_failure_fault() :: #{
%%   <<"message">> => string()
%% }
-type db_upgrade_dependency_failure_fault() :: #{binary() => any()}.

%% Example:
%% global_clusters_message() :: #{
%%   <<"GlobalClusters">> => list(global_cluster()()),
%%   <<"Marker">> => string()
%% }
-type global_clusters_message() :: #{binary() => any()}.

%% Example:
%% deregister_db_proxy_targets_response() :: #{

%% }
-type deregister_db_proxy_targets_response() :: #{binary() => any()}.

%% Example:
%% certificate_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type certificate_not_found_fault() :: #{binary() => any()}.

%% Example:
%% authorize_db_security_group_ingress_result() :: #{
%%   <<"DBSecurityGroup">> => db_security_group()
%% }
-type authorize_db_security_group_ingress_result() :: #{binary() => any()}.

%% Example:
%% modify_global_cluster_result() :: #{
%%   <<"GlobalCluster">> => global_cluster()
%% }
-type modify_global_cluster_result() :: #{binary() => any()}.

%% Example:
%% remove_from_global_cluster_message() :: #{
%%   <<"DbClusterIdentifier">> => string(),
%%   <<"GlobalClusterIdentifier">> => string()
%% }
-type remove_from_global_cluster_message() :: #{binary() => any()}.

%% Example:
%% ip_range() :: #{
%%   <<"CIDRIP">> => string(),
%%   <<"Status">> => string()
%% }
-type ip_range() :: #{binary() => any()}.

%% Example:
%% failover_state() :: #{
%%   <<"FromDbClusterArn">> => string(),
%%   <<"IsDataLossAllowed">> => boolean(),
%%   <<"Status">> => list(any()),
%%   <<"ToDbClusterArn">> => string()
%% }
-type failover_state() :: #{binary() => any()}.

%% Example:
%% db_instance_role() :: #{
%%   <<"FeatureName">> => string(),
%%   <<"RoleArn">> => string(),
%%   <<"Status">> => string()
%% }
-type db_instance_role() :: #{binary() => any()}.

%% Example:
%% db_snapshot_tenant_databases_message() :: #{
%%   <<"DBSnapshotTenantDatabases">> => list(db_snapshot_tenant_database()()),
%%   <<"Marker">> => string()
%% }
-type db_snapshot_tenant_databases_message() :: #{binary() => any()}.

%% Example:
%% reboot_db_instance_message() :: #{
%%   <<"DBInstanceIdentifier">> := string(),
%%   <<"ForceFailover">> => boolean()
%% }
-type reboot_db_instance_message() :: #{binary() => any()}.

%% Example:
%% describe_db_parameters_message() :: #{
%%   <<"DBParameterGroupName">> := string(),
%%   <<"Filters">> => list(filter()()),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer(),
%%   <<"Source">> => string()
%% }
-type describe_db_parameters_message() :: #{binary() => any()}.

%% Example:
%% describe_db_proxy_target_groups_request() :: #{
%%   <<"DBProxyName">> := string(),
%%   <<"Filters">> => list(filter()()),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer(),
%%   <<"TargetGroupName">> => string()
%% }
-type describe_db_proxy_target_groups_request() :: #{binary() => any()}.

%% Example:
%% db_cluster_role_already_exists_fault() :: #{
%%   <<"message">> => string()
%% }
-type db_cluster_role_already_exists_fault() :: #{binary() => any()}.

%% Example:
%% source_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type source_not_found_fault() :: #{binary() => any()}.

%% Example:
%% db_engine_version_message() :: #{
%%   <<"DBEngineVersions">> => list(db_engine_version()()),
%%   <<"Marker">> => string()
%% }
-type db_engine_version_message() :: #{binary() => any()}.

%% Example:
%% db_cluster_endpoint_quota_exceeded_fault() :: #{
%%   <<"message">> => string()
%% }
-type db_cluster_endpoint_quota_exceeded_fault() :: #{binary() => any()}.

%% Example:
%% switchover_read_replica_result() :: #{
%%   <<"DBInstance">> => db_instance()
%% }
-type switchover_read_replica_result() :: #{binary() => any()}.

%% Example:
%% modify_global_cluster_message() :: #{
%%   <<"AllowMajorVersionUpgrade">> => boolean(),
%%   <<"DeletionProtection">> => boolean(),
%%   <<"EngineVersion">> => string(),
%%   <<"GlobalClusterIdentifier">> => string(),
%%   <<"NewGlobalClusterIdentifier">> => string()
%% }
-type modify_global_cluster_message() :: #{binary() => any()}.

%% Example:
%% db_engine_version() :: #{
%%   <<"SupportedEngineModes">> => list(string()()),
%%   <<"SupportsBabelfish">> => boolean(),
%%   <<"Engine">> => string(),
%%   <<"SupportedCACertificateIdentifiers">> => list(string()()),
%%   <<"SupportsLimitlessDatabase">> => boolean(),
%%   <<"ServerlessV2FeaturesSupport">> => serverless_v2_features_support(),
%%   <<"DatabaseInstallationFilesS3BucketName">> => string(),
%%   <<"SupportsLogExportsToCloudwatchLogs">> => boolean(),
%%   <<"CreateTime">> => non_neg_integer(),
%%   <<"DefaultCharacterSet">> => character_set(),
%%   <<"SupportsCertificateRotationWithoutRestart">> => boolean(),
%%   <<"Image">> => custom_db_engine_version_a_m_i(),
%%   <<"DBEngineMediaType">> => string(),
%%   <<"DBEngineVersionDescription">> => string(),
%%   <<"ValidUpgradeTarget">> => list(upgrade_target()()),
%%   <<"SupportsLocalWriteForwarding">> => boolean(),
%%   <<"DBEngineVersionArn">> => string(),
%%   <<"SupportsReadReplica">> => boolean(),
%%   <<"SupportedFeatureNames">> => list(string()()),
%%   <<"EngineVersion">> => string(),
%%   <<"DatabaseInstallationFilesS3Prefix">> => string(),
%%   <<"SupportedTimezones">> => list(timezone()()),
%%   <<"CustomDBEngineVersionManifest">> => string(),
%%   <<"SupportedNcharCharacterSets">> => list(character_set()()),
%%   <<"SupportedCharacterSets">> => list(character_set()()),
%%   <<"TagList">> => list(tag()()),
%%   <<"MajorEngineVersion">> => string(),
%%   <<"SupportsGlobalDatabases">> => boolean(),
%%   <<"DBParameterGroupFamily">> => string(),
%%   <<"SupportsIntegrations">> => boolean(),
%%   <<"Status">> => string(),
%%   <<"ExportableLogTypes">> => list(string()()),
%%   <<"DBEngineDescription">> => string(),
%%   <<"KMSKeyId">> => string(),
%%   <<"SupportsParallelQuery">> => boolean()
%% }
-type db_engine_version() :: #{binary() => any()}.

%% Example:
%% modify_db_proxy_endpoint_request() :: #{
%%   <<"DBProxyEndpointName">> := string(),
%%   <<"NewDBProxyEndpointName">> => string(),
%%   <<"VpcSecurityGroupIds">> => list(string()())
%% }
-type modify_db_proxy_endpoint_request() :: #{binary() => any()}.

%% Example:
%% modify_tenant_database_message() :: #{
%%   <<"DBInstanceIdentifier">> := string(),
%%   <<"MasterUserPassword">> => string(),
%%   <<"NewTenantDBName">> => string(),
%%   <<"TenantDBName">> := string()
%% }
-type modify_tenant_database_message() :: #{binary() => any()}.

%% Example:
%% cancel_export_task_message() :: #{
%%   <<"ExportTaskIdentifier">> := string()
%% }
-type cancel_export_task_message() :: #{binary() => any()}.

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
%%   <<"Source">> => string(),
%%   <<"SupportedEngineModes">> => list(string()())
%% }
-type parameter() :: #{binary() => any()}.

%% Example:
%% promote_read_replica_message() :: #{
%%   <<"BackupRetentionPeriod">> => integer(),
%%   <<"DBInstanceIdentifier">> := string(),
%%   <<"PreferredBackupWindow">> => string()
%% }
-type promote_read_replica_message() :: #{binary() => any()}.

%% Example:
%% describe_db_shard_groups_message() :: #{
%%   <<"DBShardGroupIdentifier">> => string(),
%%   <<"Filters">> => list(filter()()),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer()
%% }
-type describe_db_shard_groups_message() :: #{binary() => any()}.

%% Example:
%% add_role_to_db_instance_message() :: #{
%%   <<"DBInstanceIdentifier">> := string(),
%%   <<"FeatureName">> := string(),
%%   <<"RoleArn">> := string()
%% }
-type add_role_to_db_instance_message() :: #{binary() => any()}.

%% Example:
%% db_subnet_group_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type db_subnet_group_not_found_fault() :: #{binary() => any()}.

%% Example:
%% describe_db_snapshot_attributes_message() :: #{
%%   <<"DBSnapshotIdentifier">> := string()
%% }
-type describe_db_snapshot_attributes_message() :: #{binary() => any()}.

%% Example:
%% invalid_event_subscription_state_fault() :: #{
%%   <<"message">> => string()
%% }
-type invalid_event_subscription_state_fault() :: #{binary() => any()}.

%% Example:
%% point_in_time_restore_not_enabled_fault() :: #{
%%   <<"message">> => string()
%% }
-type point_in_time_restore_not_enabled_fault() :: #{binary() => any()}.

%% Example:
%% describe_source_regions_message() :: #{
%%   <<"Filters">> => list(filter()()),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer(),
%%   <<"RegionName">> => string()
%% }
-type describe_source_regions_message() :: #{binary() => any()}.

%% Example:
%% create_db_cluster_snapshot_message() :: #{
%%   <<"DBClusterIdentifier">> := string(),
%%   <<"DBClusterSnapshotIdentifier">> := string(),
%%   <<"Tags">> => list(tag()())
%% }
-type create_db_cluster_snapshot_message() :: #{binary() => any()}.

%% Example:
%% db_shard_group() :: #{
%%   <<"ComputeRedundancy">> => integer(),
%%   <<"DBClusterIdentifier">> => string(),
%%   <<"DBShardGroupArn">> => string(),
%%   <<"DBShardGroupIdentifier">> => string(),
%%   <<"DBShardGroupResourceId">> => string(),
%%   <<"Endpoint">> => string(),
%%   <<"MaxACU">> => float(),
%%   <<"MinACU">> => float(),
%%   <<"PubliclyAccessible">> => boolean(),
%%   <<"Status">> => string(),
%%   <<"TagList">> => list(tag()())
%% }
-type db_shard_group() :: #{binary() => any()}.

%% Example:
%% db_snapshot() :: #{
%%   <<"Encrypted">> => boolean(),
%%   <<"Port">> => integer(),
%%   <<"Timezone">> => string(),
%%   <<"SourceRegion">> => string(),
%%   <<"DBSnapshotArn">> => string(),
%%   <<"Engine">> => string(),
%%   <<"StorageThroughput">> => integer(),
%%   <<"DBInstanceIdentifier">> => string(),
%%   <<"SnapshotDatabaseTime">> => non_neg_integer(),
%%   <<"Iops">> => integer(),
%%   <<"MultiTenant">> => boolean(),
%%   <<"SnapshotType">> => string(),
%%   <<"DbiResourceId">> => string(),
%%   <<"SourceDBSnapshotIdentifier">> => string(),
%%   <<"OptionGroupName">> => string(),
%%   <<"StorageType">> => string(),
%%   <<"AvailabilityZone">> => string(),
%%   <<"MasterUsername">> => string(),
%%   <<"EngineVersion">> => string(),
%%   <<"DBSnapshotIdentifier">> => string(),
%%   <<"IAMDatabaseAuthenticationEnabled">> => boolean(),
%%   <<"SnapshotCreateTime">> => non_neg_integer(),
%%   <<"DedicatedLogVolume">> => boolean(),
%%   <<"LicenseModel">> => string(),
%%   <<"OriginalSnapshotCreateTime">> => non_neg_integer(),
%%   <<"VpcId">> => string(),
%%   <<"SnapshotTarget">> => string(),
%%   <<"TagList">> => list(tag()()),
%%   <<"KmsKeyId">> => string(),
%%   <<"PercentProgress">> => integer(),
%%   <<"InstanceCreateTime">> => non_neg_integer(),
%%   <<"ProcessorFeatures">> => list(processor_feature()()),
%%   <<"TdeCredentialArn">> => string(),
%%   <<"AllocatedStorage">> => integer(),
%%   <<"Status">> => string(),
%%   <<"DBSystemId">> => string()
%% }
-type db_snapshot() :: #{binary() => any()}.

%% Example:
%% db_security_group_membership() :: #{
%%   <<"DBSecurityGroupName">> => string(),
%%   <<"Status">> => string()
%% }
-type db_security_group_membership() :: #{binary() => any()}.

%% Example:
%% delete_custom_db_engine_version_message() :: #{
%%   <<"Engine">> := string(),
%%   <<"EngineVersion">> := string()
%% }
-type delete_custom_db_engine_version_message() :: #{binary() => any()}.

%% Example:
%% delete_db_cluster_parameter_group_message() :: #{
%%   <<"DBClusterParameterGroupName">> := string()
%% }
-type delete_db_cluster_parameter_group_message() :: #{binary() => any()}.

%% Example:
%% modify_db_snapshot_message() :: #{
%%   <<"DBSnapshotIdentifier">> := string(),
%%   <<"EngineVersion">> => string(),
%%   <<"OptionGroupName">> => string()
%% }
-type modify_db_snapshot_message() :: #{binary() => any()}.

%% Example:
%% db_proxy_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type db_proxy_not_found_fault() :: #{binary() => any()}.

%% Example:
%% describe_db_clusters_message() :: #{
%%   <<"DBClusterIdentifier">> => string(),
%%   <<"Filters">> => list(filter()()),
%%   <<"IncludeShared">> => boolean(),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer()
%% }
-type describe_db_clusters_message() :: #{binary() => any()}.

%% Example:
%% invalid_export_only_fault() :: #{
%%   <<"message">> => string()
%% }
-type invalid_export_only_fault() :: #{binary() => any()}.

%% Example:
%% db_subnet_group_not_allowed_fault() :: #{
%%   <<"message">> => string()
%% }
-type db_subnet_group_not_allowed_fault() :: #{binary() => any()}.

%% Example:
%% cluster_pending_modified_values() :: #{
%%   <<"AllocatedStorage">> => integer(),
%%   <<"BackupRetentionPeriod">> => integer(),
%%   <<"CertificateDetails">> => certificate_details(),
%%   <<"DBClusterIdentifier">> => string(),
%%   <<"EngineVersion">> => string(),
%%   <<"IAMDatabaseAuthenticationEnabled">> => boolean(),
%%   <<"Iops">> => integer(),
%%   <<"MasterUserPassword">> => string(),
%%   <<"PendingCloudwatchLogsExports">> => pending_cloudwatch_logs_exports(),
%%   <<"RdsCustomClusterConfiguration">> => rds_custom_cluster_configuration(),
%%   <<"StorageType">> => string()
%% }
-type cluster_pending_modified_values() :: #{binary() => any()}.

%% Example:
%% modify_certificates_result() :: #{
%%   <<"Certificate">> => certificate()
%% }
-type modify_certificates_result() :: #{binary() => any()}.

%% Example:
%% db_cluster_endpoint() :: #{
%%   <<"CustomEndpointType">> => string(),
%%   <<"DBClusterEndpointArn">> => string(),
%%   <<"DBClusterEndpointIdentifier">> => string(),
%%   <<"DBClusterEndpointResourceIdentifier">> => string(),
%%   <<"DBClusterIdentifier">> => string(),
%%   <<"Endpoint">> => string(),
%%   <<"EndpointType">> => string(),
%%   <<"ExcludedMembers">> => list(string()()),
%%   <<"StaticMembers">> => list(string()()),
%%   <<"Status">> => string()
%% }
-type db_cluster_endpoint() :: #{binary() => any()}.

%% Example:
%% db_cluster_endpoint_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type db_cluster_endpoint_not_found_fault() :: #{binary() => any()}.

%% Example:
%% describe_db_log_files_response() :: #{
%%   <<"DescribeDBLogFiles">> => list(describe_db_log_files_details()()),
%%   <<"Marker">> => string()
%% }
-type describe_db_log_files_response() :: #{binary() => any()}.

%% Example:
%% start_export_task_message() :: #{
%%   <<"ExportOnly">> => list(string()()),
%%   <<"ExportTaskIdentifier">> := string(),
%%   <<"IamRoleArn">> := string(),
%%   <<"KmsKeyId">> := string(),
%%   <<"S3BucketName">> := string(),
%%   <<"S3Prefix">> => string(),
%%   <<"SourceArn">> := string()
%% }
-type start_export_task_message() :: #{binary() => any()}.

%% Example:
%% describe_db_parameter_groups_message() :: #{
%%   <<"DBParameterGroupName">> => string(),
%%   <<"Filters">> => list(filter()()),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer()
%% }
-type describe_db_parameter_groups_message() :: #{binary() => any()}.

%% Example:
%% modify_option_group_result() :: #{
%%   <<"OptionGroup">> => option_group()
%% }
-type modify_option_group_result() :: #{binary() => any()}.

%% Example:
%% modify_db_parameter_group_message() :: #{
%%   <<"DBParameterGroupName">> := string(),
%%   <<"Parameters">> := list(parameter()())
%% }
-type modify_db_parameter_group_message() :: #{binary() => any()}.

%% Example:
%% create_db_snapshot_result() :: #{
%%   <<"DBSnapshot">> => db_snapshot()
%% }
-type create_db_snapshot_result() :: #{binary() => any()}.

%% Example:
%% switchover_global_cluster_message() :: #{
%%   <<"GlobalClusterIdentifier">> := string(),
%%   <<"TargetDbClusterIdentifier">> := string()
%% }
-type switchover_global_cluster_message() :: #{binary() => any()}.

%% Example:
%% restore_db_instance_to_point_in_time_message() :: #{
%%   <<"Port">> => integer(),
%%   <<"Engine">> => string(),
%%   <<"StorageThroughput">> => integer(),
%%   <<"DomainOu">> => string(),
%%   <<"EngineLifecycleSupport">> => string(),
%%   <<"EnableIAMDatabaseAuthentication">> => boolean(),
%%   <<"EnableCustomerOwnedIp">> => boolean(),
%%   <<"Iops">> => integer(),
%%   <<"DBSubnetGroupName">> => string(),
%%   <<"BackupTarget">> => string(),
%%   <<"DBInstanceClass">> => string(),
%%   <<"SourceDbiResourceId">> => string(),
%%   <<"SourceDBInstanceIdentifier">> => string(),
%%   <<"CopyTagsToSnapshot">> => boolean(),
%%   <<"OptionGroupName">> => string(),
%%   <<"StorageType">> => string(),
%%   <<"UseDefaultProcessorFeatures">> => boolean(),
%%   <<"TargetDBInstanceIdentifier">> := string(),
%%   <<"AvailabilityZone">> => string(),
%%   <<"RestoreTime">> => non_neg_integer(),
%%   <<"DBName">> => string(),
%%   <<"PubliclyAccessible">> => boolean(),
%%   <<"VpcSecurityGroupIds">> => list(string()()),
%%   <<"DomainAuthSecretArn">> => string(),
%%   <<"TdeCredentialPassword">> => string(),
%%   <<"DedicatedLogVolume">> => boolean(),
%%   <<"DomainDnsIps">> => list(string()()),
%%   <<"Tags">> => list(tag()()),
%%   <<"LicenseModel">> => string(),
%%   <<"EnableCloudwatchLogsExports">> => list(string()()),
%%   <<"DBParameterGroupName">> => string(),
%%   <<"SourceDBInstanceAutomatedBackupsArn">> => string(),
%%   <<"UseLatestRestorableTime">> => boolean(),
%%   <<"ProcessorFeatures">> => list(processor_feature()()),
%%   <<"TdeCredentialArn">> => string(),
%%   <<"Domain">> => string(),
%%   <<"DomainIAMRoleName">> => string(),
%%   <<"DomainFqdn">> => string(),
%%   <<"AutoMinorVersionUpgrade">> => boolean(),
%%   <<"NetworkType">> => string(),
%%   <<"AllocatedStorage">> => integer(),
%%   <<"CACertificateIdentifier">> => string(),
%%   <<"CustomIamInstanceProfile">> => string(),
%%   <<"MaxAllocatedStorage">> => integer(),
%%   <<"MultiAZ">> => boolean(),
%%   <<"DeletionProtection">> => boolean()
%% }
-type restore_db_instance_to_point_in_time_message() :: #{binary() => any()}.

%% Example:
%% export_tasks_message() :: #{
%%   <<"ExportTasks">> => list(export_task()()),
%%   <<"Marker">> => string()
%% }
-type export_tasks_message() :: #{binary() => any()}.

%% Example:
%% describe_option_groups_message() :: #{
%%   <<"EngineName">> => string(),
%%   <<"Filters">> => list(filter()()),
%%   <<"MajorEngineVersion">> => string(),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer(),
%%   <<"OptionGroupName">> => string()
%% }
-type describe_option_groups_message() :: #{binary() => any()}.

%% Example:
%% disable_http_endpoint_request() :: #{
%%   <<"ResourceArn">> := string()
%% }
-type disable_http_endpoint_request() :: #{binary() => any()}.

%% Example:
%% modify_db_cluster_parameter_group_message() :: #{
%%   <<"DBClusterParameterGroupName">> := string(),
%%   <<"Parameters">> := list(parameter()())
%% }
-type modify_db_cluster_parameter_group_message() :: #{binary() => any()}.

%% Example:
%% subscription_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type subscription_not_found_fault() :: #{binary() => any()}.

%% Example:
%% domain_membership() :: #{
%%   <<"AuthSecretArn">> => string(),
%%   <<"DnsIps">> => list(string()()),
%%   <<"Domain">> => string(),
%%   <<"FQDN">> => string(),
%%   <<"IAMRoleName">> => string(),
%%   <<"OU">> => string(),
%%   <<"Status">> => string()
%% }
-type domain_membership() :: #{binary() => any()}.

%% Example:
%% source_region_message() :: #{
%%   <<"Marker">> => string(),
%%   <<"SourceRegions">> => list(source_region()())
%% }
-type source_region_message() :: #{binary() => any()}.

%% Example:
%% enable_http_endpoint_request() :: #{
%%   <<"ResourceArn">> := string()
%% }
-type enable_http_endpoint_request() :: #{binary() => any()}.

%% Example:
%% source_database_not_supported_fault() :: #{
%%   <<"message">> => string()
%% }
-type source_database_not_supported_fault() :: #{binary() => any()}.

%% Example:
%% delete_db_cluster_endpoint_message() :: #{
%%   <<"DBClusterEndpointIdentifier">> := string()
%% }
-type delete_db_cluster_endpoint_message() :: #{binary() => any()}.

%% Example:
%% invalid_option_group_state_fault() :: #{
%%   <<"message">> => string()
%% }
-type invalid_option_group_state_fault() :: #{binary() => any()}.

%% Example:
%% create_db_cluster_message() :: #{
%%   <<"PreferredBackupWindow">> => string(),
%%   <<"Port">> => integer(),
%%   <<"ServerlessV2ScalingConfiguration">> => serverless_v2_scaling_configuration(),
%%   <<"EngineLifecycleSupport">> => string(),
%%   <<"EnableIAMDatabaseAuthentication">> => boolean(),
%%   <<"PreSignedUrl">> => string(),
%%   <<"MasterUserSecretKmsKeyId">> => string(),
%%   <<"Iops">> => integer(),
%%   <<"DBClusterParameterGroupName">> => string(),
%%   <<"DBSubnetGroupName">> => string(),
%%   <<"RdsCustomClusterConfiguration">> => rds_custom_cluster_configuration(),
%%   <<"CharacterSetName">> => string(),
%%   <<"GlobalClusterIdentifier">> => string(),
%%   <<"DBClusterInstanceClass">> => string(),
%%   <<"PerformanceInsightsKMSKeyId">> => string(),
%%   <<"ScalingConfiguration">> => scaling_configuration(),
%%   <<"EnableHttpEndpoint">> => boolean(),
%%   <<"ReplicationSourceIdentifier">> => string(),
%%   <<"CopyTagsToSnapshot">> => boolean(),
%%   <<"OptionGroupName">> => string(),
%%   <<"StorageType">> => string(),
%%   <<"MonitoringRoleArn">> => string(),
%%   <<"MasterUsername">> => string(),
%%   <<"EngineVersion">> => string(),
%%   <<"PubliclyAccessible">> => boolean(),
%%   <<"EngineMode">> => string(),
%%   <<"VpcSecurityGroupIds">> => list(string()()),
%%   <<"Engine">> := string(),
%%   <<"DBClusterIdentifier">> := string(),
%%   <<"EnableLocalWriteForwarding">> => boolean(),
%%   <<"AvailabilityZones">> => list(string()()),
%%   <<"EnableLimitlessDatabase">> => boolean(),
%%   <<"MasterUserPassword">> => string(),
%%   <<"BackupRetentionPeriod">> => integer(),
%%   <<"Tags">> => list(tag()()),
%%   <<"EnableCloudwatchLogsExports">> => list(string()()),
%%   <<"DatabaseName">> => string(),
%%   <<"ManageMasterUserPassword">> => boolean(),
%%   <<"KmsKeyId">> => string(),
%%   <<"PerformanceInsightsRetentionPeriod">> => integer(),
%%   <<"PreferredMaintenanceWindow">> => string(),
%%   <<"Domain">> => string(),
%%   <<"DomainIAMRoleName">> => string(),
%%   <<"EnablePerformanceInsights">> => boolean(),
%%   <<"BacktrackWindow">> => float(),
%%   <<"AutoMinorVersionUpgrade">> => boolean(),
%%   <<"NetworkType">> => string(),
%%   <<"AllocatedStorage">> => integer(),
%%   <<"MonitoringInterval">> => integer(),
%%   <<"CACertificateIdentifier">> => string(),
%%   <<"StorageEncrypted">> => boolean(),
%%   <<"EnableGlobalWriteForwarding">> => boolean(),
%%   <<"DBSystemId">> => string(),
%%   <<"DeletionProtection">> => boolean(),
%%   <<"ClusterScalabilityType">> => list(any())
%% }
-type create_db_cluster_message() :: #{binary() => any()}.

%% Example:
%% valid_storage_options() :: #{
%%   <<"IopsToStorageRatio">> => list(double_range()()),
%%   <<"ProvisionedIops">> => list(range()()),
%%   <<"ProvisionedStorageThroughput">> => list(range()()),
%%   <<"StorageSize">> => list(range()()),
%%   <<"StorageThroughputToIopsRatio">> => list(double_range()()),
%%   <<"StorageType">> => string(),
%%   <<"SupportsStorageAutoscaling">> => boolean()
%% }
-type valid_storage_options() :: #{binary() => any()}.

%% Example:
%% doc_link() :: #{
%%   <<"Text">> => string(),
%%   <<"Url">> => string()
%% }
-type doc_link() :: #{binary() => any()}.

%% Example:
%% stop_db_instance_automated_backups_replication_message() :: #{
%%   <<"SourceDBInstanceArn">> := string()
%% }
-type stop_db_instance_automated_backups_replication_message() :: #{binary() => any()}.

%% Example:
%% db_parameter_groups_message() :: #{
%%   <<"DBParameterGroups">> => list(db_parameter_group()()),
%%   <<"Marker">> => string()
%% }
-type db_parameter_groups_message() :: #{binary() => any()}.

%% Example:
%% filter() :: #{
%%   <<"Name">> => string(),
%%   <<"Values">> => list(string()())
%% }
-type filter() :: #{binary() => any()}.

%% Example:
%% reserved_db_instances_offering_message() :: #{
%%   <<"Marker">> => string(),
%%   <<"ReservedDBInstancesOfferings">> => list(reserved_db_instances_offering()())
%% }
-type reserved_db_instances_offering_message() :: #{binary() => any()}.

%% Example:
%% instance_quota_exceeded_fault() :: #{
%%   <<"message">> => string()
%% }
-type instance_quota_exceeded_fault() :: #{binary() => any()}.

%% Example:
%% modify_db_recommendation_message() :: #{
%%   <<"Locale">> => string(),
%%   <<"RecommendationId">> := string(),
%%   <<"RecommendedActionUpdates">> => list(recommended_action_update()()),
%%   <<"Status">> => string()
%% }
-type modify_db_recommendation_message() :: #{binary() => any()}.

%% Example:
%% valid_db_instance_modifications_message() :: #{
%%   <<"Storage">> => list(valid_storage_options()()),
%%   <<"SupportsDedicatedLogVolume">> => boolean(),
%%   <<"ValidProcessorFeatures">> => list(available_processor_feature()())
%% }
-type valid_db_instance_modifications_message() :: #{binary() => any()}.

%% Example:
%% db_proxy_endpoint_quota_exceeded_fault() :: #{
%%   <<"message">> => string()
%% }
-type db_proxy_endpoint_quota_exceeded_fault() :: #{binary() => any()}.

%% Example:
%% describe_db_shard_groups_response() :: #{
%%   <<"DBShardGroups">> => list(db_shard_group()()),
%%   <<"Marker">> => string()
%% }
-type describe_db_shard_groups_response() :: #{binary() => any()}.

%% Example:
%% create_global_cluster_message() :: #{
%%   <<"DatabaseName">> => string(),
%%   <<"DeletionProtection">> => boolean(),
%%   <<"Engine">> => string(),
%%   <<"EngineLifecycleSupport">> => string(),
%%   <<"EngineVersion">> => string(),
%%   <<"GlobalClusterIdentifier">> => string(),
%%   <<"SourceDBClusterIdentifier">> => string(),
%%   <<"StorageEncrypted">> => boolean(),
%%   <<"Tags">> => list(tag()())
%% }
-type create_global_cluster_message() :: #{binary() => any()}.

%% Example:
%% create_option_group_result() :: #{
%%   <<"OptionGroup">> => option_group()
%% }
-type create_option_group_result() :: #{binary() => any()}.

%% Example:
%% db_proxy_endpoint_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type db_proxy_endpoint_not_found_fault() :: #{binary() => any()}.

%% Example:
%% modify_tenant_database_result() :: #{
%%   <<"TenantDatabase">> => tenant_database()
%% }
-type modify_tenant_database_result() :: #{binary() => any()}.

%% Example:
%% option_version() :: #{
%%   <<"IsDefault">> => boolean(),
%%   <<"Version">> => string()
%% }
-type option_version() :: #{binary() => any()}.

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
%% user_auth_config() :: #{
%%   <<"AuthScheme">> => list(any()),
%%   <<"ClientPasswordAuthType">> => list(any()),
%%   <<"Description">> => string(),
%%   <<"IAMAuth">> => list(any()),
%%   <<"SecretArn">> => string(),
%%   <<"UserName">> => string()
%% }
-type user_auth_config() :: #{binary() => any()}.

%% Example:
%% create_db_cluster_snapshot_result() :: #{
%%   <<"DBClusterSnapshot">> => db_cluster_snapshot()
%% }
-type create_db_cluster_snapshot_result() :: #{binary() => any()}.

%% Example:
%% integration_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type integration_not_found_fault() :: #{binary() => any()}.

%% Example:
%% option_configuration() :: #{
%%   <<"DBSecurityGroupMemberships">> => list(string()()),
%%   <<"OptionName">> => string(),
%%   <<"OptionSettings">> => list(option_setting()()),
%%   <<"OptionVersion">> => string(),
%%   <<"Port">> => integer(),
%%   <<"VpcSecurityGroupMemberships">> => list(string()())
%% }
-type option_configuration() :: #{binary() => any()}.

%% Example:
%% create_db_parameter_group_result() :: #{
%%   <<"DBParameterGroup">> => db_parameter_group()
%% }
-type create_db_parameter_group_result() :: #{binary() => any()}.

%% Example:
%% metric_query() :: #{
%%   <<"PerformanceInsightsMetricQuery">> => performance_insights_metric_query()
%% }
-type metric_query() :: #{binary() => any()}.

%% Example:
%% describe_reserved_db_instances_message() :: #{
%%   <<"DBInstanceClass">> => string(),
%%   <<"Duration">> => string(),
%%   <<"Filters">> => list(filter()()),
%%   <<"LeaseId">> => string(),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer(),
%%   <<"MultiAZ">> => boolean(),
%%   <<"OfferingType">> => string(),
%%   <<"ProductDescription">> => string(),
%%   <<"ReservedDBInstanceId">> => string(),
%%   <<"ReservedDBInstancesOfferingId">> => string()
%% }
-type describe_reserved_db_instances_message() :: #{binary() => any()}.

%% Example:
%% endpoint() :: #{
%%   <<"Address">> => string(),
%%   <<"HostedZoneId">> => string(),
%%   <<"Port">> => integer()
%% }
-type endpoint() :: #{binary() => any()}.

%% Example:
%% modify_integration_message() :: #{
%%   <<"DataFilter">> => string(),
%%   <<"Description">> => string(),
%%   <<"IntegrationIdentifier">> := string(),
%%   <<"IntegrationName">> => string()
%% }
-type modify_integration_message() :: #{binary() => any()}.

%% Example:
%% events_message() :: #{
%%   <<"Events">> => list(event()()),
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
%%   <<"Parameters">> => list(parameter()()),
%%   <<"ResetAllParameters">> => boolean()
%% }
-type reset_db_cluster_parameter_group_message() :: #{binary() => any()}.

%% Example:
%% export_task() :: #{
%%   <<"ExportOnly">> => list(string()()),
%%   <<"ExportTaskIdentifier">> => string(),
%%   <<"FailureCause">> => string(),
%%   <<"IamRoleArn">> => string(),
%%   <<"KmsKeyId">> => string(),
%%   <<"PercentProgress">> => integer(),
%%   <<"S3Bucket">> => string(),
%%   <<"S3Prefix">> => string(),
%%   <<"SnapshotTime">> => non_neg_integer(),
%%   <<"SourceArn">> => string(),
%%   <<"SourceType">> => list(any()),
%%   <<"Status">> => string(),
%%   <<"TaskEndTime">> => non_neg_integer(),
%%   <<"TaskStartTime">> => non_neg_integer(),
%%   <<"TotalExtractedDataInGB">> => integer(),
%%   <<"WarningMessage">> => string()
%% }
-type export_task() :: #{binary() => any()}.

%% Example:
%% delete_db_cluster_automated_backup_result() :: #{
%%   <<"DBClusterAutomatedBackup">> => db_cluster_automated_backup()
%% }
-type delete_db_cluster_automated_backup_result() :: #{binary() => any()}.

%% Example:
%% tenant_database_already_exists_fault() :: #{
%%   <<"message">> => string()
%% }
-type tenant_database_already_exists_fault() :: #{binary() => any()}.

%% Example:
%% restore_db_instance_from_s3_result() :: #{
%%   <<"DBInstance">> => db_instance()
%% }
-type restore_db_instance_from_s3_result() :: #{binary() => any()}.

%% Example:
%% delete_global_cluster_message() :: #{
%%   <<"GlobalClusterIdentifier">> := string()
%% }
-type delete_global_cluster_message() :: #{binary() => any()}.

%% Example:
%% option_group() :: #{
%%   <<"AllowsVpcAndNonVpcInstanceMemberships">> => boolean(),
%%   <<"CopyTimestamp">> => non_neg_integer(),
%%   <<"EngineName">> => string(),
%%   <<"MajorEngineVersion">> => string(),
%%   <<"OptionGroupArn">> => string(),
%%   <<"OptionGroupDescription">> => string(),
%%   <<"OptionGroupName">> => string(),
%%   <<"Options">> => list(option()()),
%%   <<"SourceAccountId">> => string(),
%%   <<"SourceOptionGroup">> => string(),
%%   <<"VpcId">> => string()
%% }
-type option_group() :: #{binary() => any()}.

%% Example:
%% delete_event_subscription_message() :: #{
%%   <<"SubscriptionName">> := string()
%% }
-type delete_event_subscription_message() :: #{binary() => any()}.

%% Example:
%% describe_db_proxy_target_groups_response() :: #{
%%   <<"Marker">> => string(),
%%   <<"TargetGroups">> => list(db_proxy_target_group()())
%% }
-type describe_db_proxy_target_groups_response() :: #{binary() => any()}.

%% Example:
%% db_proxy_target_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type db_proxy_target_not_found_fault() :: #{binary() => any()}.

%% Example:
%% subscription_category_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type subscription_category_not_found_fault() :: #{binary() => any()}.

%% Example:
%% register_db_proxy_targets_request() :: #{
%%   <<"DBClusterIdentifiers">> => list(string()()),
%%   <<"DBInstanceIdentifiers">> => list(string()()),
%%   <<"DBProxyName">> := string(),
%%   <<"TargetGroupName">> => string()
%% }
-type register_db_proxy_targets_request() :: #{binary() => any()}.

%% Example:
%% certificate() :: #{
%%   <<"CertificateArn">> => string(),
%%   <<"CertificateIdentifier">> => string(),
%%   <<"CertificateType">> => string(),
%%   <<"CustomerOverride">> => boolean(),
%%   <<"CustomerOverrideValidTill">> => non_neg_integer(),
%%   <<"Thumbprint">> => string(),
%%   <<"ValidFrom">> => non_neg_integer(),
%%   <<"ValidTill">> => non_neg_integer()
%% }
-type certificate() :: #{binary() => any()}.

%% Example:
%% copy_option_group_result() :: #{
%%   <<"OptionGroup">> => option_group()
%% }
-type copy_option_group_result() :: #{binary() => any()}.

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
%% create_integration_message() :: #{
%%   <<"AdditionalEncryptionContext">> => map(),
%%   <<"DataFilter">> => string(),
%%   <<"Description">> => string(),
%%   <<"IntegrationName">> := string(),
%%   <<"KMSKeyId">> => string(),
%%   <<"SourceArn">> := string(),
%%   <<"Tags">> => list(tag()()),
%%   <<"TargetArn">> := string()
%% }
-type create_integration_message() :: #{binary() => any()}.

%% Example:
%% remove_role_from_db_cluster_message() :: #{
%%   <<"DBClusterIdentifier">> := string(),
%%   <<"FeatureName">> => string(),
%%   <<"RoleArn">> := string()
%% }
-type remove_role_from_db_cluster_message() :: #{binary() => any()}.

%% Example:
%% describe_engine_default_parameters_result() :: #{
%%   <<"EngineDefaults">> => engine_defaults()
%% }
-type describe_engine_default_parameters_result() :: #{binary() => any()}.

%% Example:
%% invalid_db_proxy_state_fault() :: #{
%%   <<"message">> => string()
%% }
-type invalid_db_proxy_state_fault() :: #{binary() => any()}.

%% Example:
%% invalid_db_cluster_state_fault() :: #{
%%   <<"message">> => string()
%% }
-type invalid_db_cluster_state_fault() :: #{binary() => any()}.

%% Example:
%% option_group_already_exists_fault() :: #{
%%   <<"message">> => string()
%% }
-type option_group_already_exists_fault() :: #{binary() => any()}.

%% Example:
%% reboot_db_shard_group_message() :: #{
%%   <<"DBShardGroupIdentifier">> := string()
%% }
-type reboot_db_shard_group_message() :: #{binary() => any()}.

%% Example:
%% unsupported_db_engine_version_fault() :: #{
%%   <<"message">> => string()
%% }
-type unsupported_db_engine_version_fault() :: #{binary() => any()}.

%% Example:
%% create_db_cluster_parameter_group_result() :: #{
%%   <<"DBClusterParameterGroup">> => db_cluster_parameter_group()
%% }
-type create_db_cluster_parameter_group_result() :: #{binary() => any()}.

%% Example:
%% event() :: #{
%%   <<"Date">> => non_neg_integer(),
%%   <<"EventCategories">> => list(string()()),
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
%% reserved_db_instances_offering() :: #{
%%   <<"CurrencyCode">> => string(),
%%   <<"DBInstanceClass">> => string(),
%%   <<"Duration">> => integer(),
%%   <<"FixedPrice">> => float(),
%%   <<"MultiAZ">> => boolean(),
%%   <<"OfferingType">> => string(),
%%   <<"ProductDescription">> => string(),
%%   <<"RecurringCharges">> => list(recurring_charge()()),
%%   <<"ReservedDBInstancesOfferingId">> => string(),
%%   <<"UsagePrice">> => float()
%% }
-type reserved_db_instances_offering() :: #{binary() => any()}.

%% Example:
%% modify_db_shard_group_message() :: #{
%%   <<"ComputeRedundancy">> => integer(),
%%   <<"DBShardGroupIdentifier">> := string(),
%%   <<"MaxACU">> => float(),
%%   <<"MinACU">> => float()
%% }
-type modify_db_shard_group_message() :: #{binary() => any()}.

%% Example:
%% delete_db_proxy_endpoint_response() :: #{
%%   <<"DBProxyEndpoint">> => db_proxy_endpoint()
%% }
-type delete_db_proxy_endpoint_response() :: #{binary() => any()}.

%% Example:
%% modify_db_snapshot_attribute_message() :: #{
%%   <<"AttributeName">> := string(),
%%   <<"DBSnapshotIdentifier">> := string(),
%%   <<"ValuesToAdd">> => list(string()()),
%%   <<"ValuesToRemove">> => list(string()())
%% }
-type modify_db_snapshot_attribute_message() :: #{binary() => any()}.

%% Example:
%% performance_insights_metric_query() :: #{
%%   <<"GroupBy">> => performance_insights_metric_dimension_group(),
%%   <<"Metric">> => string()
%% }
-type performance_insights_metric_query() :: #{binary() => any()}.

%% Example:
%% context_attribute() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type context_attribute() :: #{binary() => any()}.

%% Example:
%% db_instance_message() :: #{
%%   <<"DBInstances">> => list(db_instance()()),
%%   <<"Marker">> => string()
%% }
-type db_instance_message() :: #{binary() => any()}.

%% Example:
%% describe_engine_default_cluster_parameters_message() :: #{
%%   <<"DBParameterGroupFamily">> := string(),
%%   <<"Filters">> => list(filter()()),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer()
%% }
-type describe_engine_default_cluster_parameters_message() :: #{binary() => any()}.

%% Example:
%% tag_list_message() :: #{
%%   <<"TagList">> => list(tag()())
%% }
-type tag_list_message() :: #{binary() => any()}.

%% Example:
%% describe_db_proxy_targets_request() :: #{
%%   <<"DBProxyName">> := string(),
%%   <<"Filters">> => list(filter()()),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer(),
%%   <<"TargetGroupName">> => string()
%% }
-type describe_db_proxy_targets_request() :: #{binary() => any()}.

%% Example:
%% describe_tenant_databases_message() :: #{
%%   <<"DBInstanceIdentifier">> => string(),
%%   <<"Filters">> => list(filter()()),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer(),
%%   <<"TenantDBName">> => string()
%% }
-type describe_tenant_databases_message() :: #{binary() => any()}.

%% Example:
%% delete_option_group_message() :: #{
%%   <<"OptionGroupName">> := string()
%% }
-type delete_option_group_message() :: #{binary() => any()}.

%% Example:
%% restore_db_instance_to_point_in_time_result() :: #{
%%   <<"DBInstance">> => db_instance()
%% }
-type restore_db_instance_to_point_in_time_result() :: #{binary() => any()}.

%% Example:
%% invalid_integration_state_fault() :: #{
%%   <<"message">> => string()
%% }
-type invalid_integration_state_fault() :: #{binary() => any()}.

%% Example:
%% db_cluster() :: #{
%%   <<"PreferredBackupWindow">> => string(),
%%   <<"HttpEndpointEnabled">> => boolean(),
%%   <<"Port">> => integer(),
%%   <<"IOOptimizedNextAllowedModificationTime">> => non_neg_integer(),
%%   <<"Engine">> => string(),
%%   <<"ServerlessV2ScalingConfiguration">> => serverless_v2_scaling_configuration_info(),
%%   <<"StorageThroughput">> => integer(),
%%   <<"EngineLifecycleSupport">> => string(),
%%   <<"ActivityStreamMode">> => list(any()),
%%   <<"DBClusterMembers">> => list(db_cluster_member()()),
%%   <<"ClusterCreateTime">> => non_neg_integer(),
%%   <<"MasterUserSecret">> => master_user_secret(),
%%   <<"AutomaticRestartTime">> => non_neg_integer(),
%%   <<"Iops">> => integer(),
%%   <<"DBClusterParameterGroup">> => string(),
%%   <<"ActivityStreamKmsKeyId">> => string(),
%%   <<"StatusInfos">> => list(db_cluster_status_info()()),
%%   <<"HostedZoneId">> => string(),
%%   <<"DomainMemberships">> => list(domain_membership()()),
%%   <<"RdsCustomClusterConfiguration">> => rds_custom_cluster_configuration(),
%%   <<"CharacterSetName">> => string(),
%%   <<"PendingModifiedValues">> => cluster_pending_modified_values(),
%%   <<"DBClusterInstanceClass">> => string(),
%%   <<"ActivityStreamStatus">> => list(any()),
%%   <<"PerformanceInsightsKMSKeyId">> => string(),
%%   <<"LimitlessDatabase">> => limitless_database(),
%%   <<"BacktrackConsumedChangeRecords">> => float(),
%%   <<"DBSubnetGroup">> => string(),
%%   <<"ReplicationSourceIdentifier">> => string(),
%%   <<"CopyTagsToSnapshot">> => boolean(),
%%   <<"PerformanceInsightsEnabled">> => boolean(),
%%   <<"ActivityStreamKinesisStreamName">> => string(),
%%   <<"LocalWriteForwardingStatus">> => list(any()),
%%   <<"EarliestRestorableTime">> => non_neg_integer(),
%%   <<"ScalingConfigurationInfo">> => scaling_configuration_info(),
%%   <<"StorageType">> => string(),
%%   <<"MonitoringRoleArn">> => string(),
%%   <<"CrossAccountClone">> => boolean(),
%%   <<"DBClusterOptionGroupMemberships">> => list(db_cluster_option_group_status()()),
%%   <<"MasterUsername">> => string(),
%%   <<"EngineVersion">> => string(),
%%   <<"EnabledCloudwatchLogsExports">> => list(string()()),
%%   <<"PubliclyAccessible">> => boolean(),
%%   <<"EngineMode">> => string(),
%%   <<"IAMDatabaseAuthenticationEnabled">> => boolean(),
%%   <<"GlobalWriteForwardingRequested">> => boolean(),
%%   <<"GlobalWriteForwardingStatus">> => list(any()),
%%   <<"LatestRestorableTime">> => non_neg_integer(),
%%   <<"CloneGroupId">> => string(),
%%   <<"AvailabilityZones">> => list(string()()),
%%   <<"ReaderEndpoint">> => string(),
%%   <<"BackupRetentionPeriod">> => integer(),
%%   <<"AssociatedRoles">> => list(db_cluster_role()()),
%%   <<"DBClusterArn">> => string(),
%%   <<"TagList">> => list(tag()()),
%%   <<"CustomEndpoints">> => list(string()()),
%%   <<"DatabaseName">> => string(),
%%   <<"KmsKeyId">> => string(),
%%   <<"DbClusterResourceId">> => string(),
%%   <<"PerformanceInsightsRetentionPeriod">> => integer(),
%%   <<"DBClusterIdentifier">> => string(),
%%   <<"Endpoint">> => string(),
%%   <<"PercentProgress">> => string(),
%%   <<"PreferredMaintenanceWindow">> => string(),
%%   <<"VpcSecurityGroups">> => list(vpc_security_group_membership()()),
%%   <<"BacktrackWindow">> => float(),
%%   <<"EarliestBacktrackTime">> => non_neg_integer(),
%%   <<"AutoMinorVersionUpgrade">> => boolean(),
%%   <<"NetworkType">> => string(),
%%   <<"Capacity">> => integer(),
%%   <<"AllocatedStorage">> => integer(),
%%   <<"Status">> => string(),
%%   <<"MonitoringInterval">> => integer(),
%%   <<"AwsBackupRecoveryPointArn">> => string(),
%%   <<"StorageEncrypted">> => boolean(),
%%   <<"CertificateDetails">> => certificate_details(),
%%   <<"ReadReplicaIdentifiers">> => list(string()()),
%%   <<"DBSystemId">> => string(),
%%   <<"MultiAZ">> => boolean(),
%%   <<"DeletionProtection">> => boolean(),
%%   <<"ClusterScalabilityType">> => list(any())
%% }
-type db_cluster() :: #{binary() => any()}.

%% Example:
%% switchover_blue_green_deployment_response() :: #{
%%   <<"BlueGreenDeployment">> => blue_green_deployment()
%% }
-type switchover_blue_green_deployment_response() :: #{binary() => any()}.

%% Example:
%% s_n_s_topic_arn_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type s_n_s_topic_arn_not_found_fault() :: #{binary() => any()}.

%% Example:
%% delete_db_snapshot_result() :: #{
%%   <<"DBSnapshot">> => db_snapshot()
%% }
-type delete_db_snapshot_result() :: #{binary() => any()}.

%% Example:
%% modify_option_group_message() :: #{
%%   <<"ApplyImmediately">> => boolean(),
%%   <<"OptionGroupName">> := string(),
%%   <<"OptionsToInclude">> => list(option_configuration()()),
%%   <<"OptionsToRemove">> => list(string()())
%% }
-type modify_option_group_message() :: #{binary() => any()}.

%% Example:
%% invalid_s3_bucket_fault() :: #{
%%   <<"message">> => string()
%% }
-type invalid_s3_bucket_fault() :: #{binary() => any()}.

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
%% option_setting() :: #{
%%   <<"AllowedValues">> => string(),
%%   <<"ApplyType">> => string(),
%%   <<"DataType">> => string(),
%%   <<"DefaultValue">> => string(),
%%   <<"Description">> => string(),
%%   <<"IsCollection">> => boolean(),
%%   <<"IsModifiable">> => boolean(),
%%   <<"Name">> => string(),
%%   <<"Value">> => string()
%% }
-type option_setting() :: #{binary() => any()}.

%% Example:
%% start_db_instance_automated_backups_replication_result() :: #{
%%   <<"DBInstanceAutomatedBackup">> => db_instance_automated_backup()
%% }
-type start_db_instance_automated_backups_replication_result() :: #{binary() => any()}.

%% Example:
%% remove_role_from_db_instance_message() :: #{
%%   <<"DBInstanceIdentifier">> := string(),
%%   <<"FeatureName">> := string(),
%%   <<"RoleArn">> := string()
%% }
-type remove_role_from_db_instance_message() :: #{binary() => any()}.

%% Example:
%% create_db_security_group_result() :: #{
%%   <<"DBSecurityGroup">> => db_security_group()
%% }
-type create_db_security_group_result() :: #{binary() => any()}.

%% Example:
%% start_db_instance_result() :: #{
%%   <<"DBInstance">> => db_instance()
%% }
-type start_db_instance_result() :: #{binary() => any()}.

%% Example:
%% stop_activity_stream_response() :: #{
%%   <<"KinesisStreamName">> => string(),
%%   <<"KmsKeyId">> => string(),
%%   <<"Status">> => list(any())
%% }
-type stop_activity_stream_response() :: #{binary() => any()}.

%% Example:
%% modify_db_proxy_target_group_response() :: #{
%%   <<"DBProxyTargetGroup">> => db_proxy_target_group()
%% }
-type modify_db_proxy_target_group_response() :: #{binary() => any()}.

%% Example:
%% add_tags_to_resource_message() :: #{
%%   <<"ResourceName">> := string(),
%%   <<"Tags">> := list(tag()())
%% }
-type add_tags_to_resource_message() :: #{binary() => any()}.

%% Example:
%% register_db_proxy_targets_response() :: #{
%%   <<"DBProxyTargets">> => list(db_proxy_target()())
%% }
-type register_db_proxy_targets_response() :: #{binary() => any()}.

%% Example:
%% copy_db_snapshot_result() :: #{
%%   <<"DBSnapshot">> => db_snapshot()
%% }
-type copy_db_snapshot_result() :: #{binary() => any()}.

%% Example:
%% event_categories_message() :: #{
%%   <<"EventCategoriesMapList">> => list(event_categories_map()())
%% }
-type event_categories_message() :: #{binary() => any()}.

%% Example:
%% db_cluster_already_exists_fault() :: #{
%%   <<"message">> => string()
%% }
-type db_cluster_already_exists_fault() :: #{binary() => any()}.

%% Example:
%% scaling_configuration() :: #{
%%   <<"AutoPause">> => boolean(),
%%   <<"MaxCapacity">> => integer(),
%%   <<"MinCapacity">> => integer(),
%%   <<"SecondsBeforeTimeout">> => integer(),
%%   <<"SecondsUntilAutoPause">> => integer(),
%%   <<"TimeoutAction">> => string()
%% }
-type scaling_configuration() :: #{binary() => any()}.

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
%% modify_current_db_cluster_capacity_message() :: #{
%%   <<"Capacity">> => integer(),
%%   <<"DBClusterIdentifier">> := string(),
%%   <<"SecondsBeforeTimeout">> => integer(),
%%   <<"TimeoutAction">> => string()
%% }
-type modify_current_db_cluster_capacity_message() :: #{binary() => any()}.

%% Example:
%% create_db_subnet_group_message() :: #{
%%   <<"DBSubnetGroupDescription">> := string(),
%%   <<"DBSubnetGroupName">> := string(),
%%   <<"SubnetIds">> := list(string()()),
%%   <<"Tags">> => list(tag()())
%% }
-type create_db_subnet_group_message() :: #{binary() => any()}.

%% Example:
%% restore_db_cluster_from_snapshot_result() :: #{
%%   <<"DBCluster">> => db_cluster()
%% }
-type restore_db_cluster_from_snapshot_result() :: #{binary() => any()}.

%% Example:
%% describe_db_cluster_backtracks_message() :: #{
%%   <<"BacktrackIdentifier">> => string(),
%%   <<"DBClusterIdentifier">> := string(),
%%   <<"Filters">> => list(filter()()),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer()
%% }
-type describe_db_cluster_backtracks_message() :: #{binary() => any()}.

%% Example:
%% tenant_database_pending_modified_values() :: #{
%%   <<"MasterUserPassword">> => string(),
%%   <<"TenantDBName">> => string()
%% }
-type tenant_database_pending_modified_values() :: #{binary() => any()}.

%% Example:
%% restore_db_instance_from_db_snapshot_message() :: #{
%%   <<"Port">> => integer(),
%%   <<"Engine">> => string(),
%%   <<"StorageThroughput">> => integer(),
%%   <<"DomainOu">> => string(),
%%   <<"EngineLifecycleSupport">> => string(),
%%   <<"EnableIAMDatabaseAuthentication">> => boolean(),
%%   <<"EnableCustomerOwnedIp">> => boolean(),
%%   <<"Iops">> => integer(),
%%   <<"DBClusterSnapshotIdentifier">> => string(),
%%   <<"DBSubnetGroupName">> => string(),
%%   <<"BackupTarget">> => string(),
%%   <<"DBInstanceClass">> => string(),
%%   <<"CopyTagsToSnapshot">> => boolean(),
%%   <<"OptionGroupName">> => string(),
%%   <<"StorageType">> => string(),
%%   <<"UseDefaultProcessorFeatures">> => boolean(),
%%   <<"AvailabilityZone">> => string(),
%%   <<"DBName">> => string(),
%%   <<"PubliclyAccessible">> => boolean(),
%%   <<"DBSnapshotIdentifier">> => string(),
%%   <<"VpcSecurityGroupIds">> => list(string()()),
%%   <<"DomainAuthSecretArn">> => string(),
%%   <<"TdeCredentialPassword">> => string(),
%%   <<"DedicatedLogVolume">> => boolean(),
%%   <<"DomainDnsIps">> => list(string()()),
%%   <<"Tags">> => list(tag()()),
%%   <<"LicenseModel">> => string(),
%%   <<"EnableCloudwatchLogsExports">> => list(string()()),
%%   <<"DBInstanceIdentifier">> := string(),
%%   <<"DBParameterGroupName">> => string(),
%%   <<"ProcessorFeatures">> => list(processor_feature()()),
%%   <<"TdeCredentialArn">> => string(),
%%   <<"Domain">> => string(),
%%   <<"DomainIAMRoleName">> => string(),
%%   <<"DomainFqdn">> => string(),
%%   <<"AutoMinorVersionUpgrade">> => boolean(),
%%   <<"NetworkType">> => string(),
%%   <<"AllocatedStorage">> => integer(),
%%   <<"CACertificateIdentifier">> => string(),
%%   <<"CustomIamInstanceProfile">> => string(),
%%   <<"MultiAZ">> => boolean(),
%%   <<"DeletionProtection">> => boolean()
%% }
-type restore_db_instance_from_db_snapshot_message() :: #{binary() => any()}.

%% Example:
%% describe_integrations_response() :: #{
%%   <<"Integrations">> => list(integration()()),
%%   <<"Marker">> => string()
%% }
-type describe_integrations_response() :: #{binary() => any()}.

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
%% describe_db_log_files_message() :: #{
%%   <<"DBInstanceIdentifier">> := string(),
%%   <<"FileLastWritten">> => float(),
%%   <<"FileSize">> => float(),
%%   <<"FilenameContains">> => string(),
%%   <<"Filters">> => list(filter()()),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer()
%% }
-type describe_db_log_files_message() :: #{binary() => any()}.

%% Example:
%% describe_global_clusters_message() :: #{
%%   <<"Filters">> => list(filter()()),
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
%% purchase_reserved_db_instances_offering_result() :: #{
%%   <<"ReservedDBInstance">> => reserved_db_instance()
%% }
-type purchase_reserved_db_instances_offering_result() :: #{binary() => any()}.

%% Example:
%% recommended_action_update() :: #{
%%   <<"ActionId">> => string(),
%%   <<"Status">> => string()
%% }
-type recommended_action_update() :: #{binary() => any()}.

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
%% describe_db_snapshot_tenant_databases_message() :: #{
%%   <<"DBInstanceIdentifier">> => string(),
%%   <<"DBSnapshotIdentifier">> => string(),
%%   <<"DbiResourceId">> => string(),
%%   <<"Filters">> => list(filter()()),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer(),
%%   <<"SnapshotType">> => string()
%% }
-type describe_db_snapshot_tenant_databases_message() :: #{binary() => any()}.

%% Example:
%% copy_db_snapshot_message() :: #{
%%   <<"CopyOptionGroup">> => boolean(),
%%   <<"CopyTags">> => boolean(),
%%   <<"KmsKeyId">> => string(),
%%   <<"OptionGroupName">> => string(),
%%   <<"PreSignedUrl">> => string(),
%%   <<"SourceDBSnapshotIdentifier">> := string(),
%%   <<"Tags">> => list(tag()()),
%%   <<"TargetCustomAvailabilityZone">> => string(),
%%   <<"TargetDBSnapshotIdentifier">> := string()
%% }
-type copy_db_snapshot_message() :: #{binary() => any()}.

%% Example:
%% db_cluster_backtrack() :: #{
%%   <<"BacktrackIdentifier">> => string(),
%%   <<"BacktrackRequestCreationTime">> => non_neg_integer(),
%%   <<"BacktrackTo">> => non_neg_integer(),
%%   <<"BacktrackedFrom">> => non_neg_integer(),
%%   <<"DBClusterIdentifier">> => string(),
%%   <<"Status">> => string()
%% }
-type db_cluster_backtrack() :: #{binary() => any()}.

%% Example:
%% delete_db_proxy_request() :: #{
%%   <<"DBProxyName">> := string()
%% }
-type delete_db_proxy_request() :: #{binary() => any()}.

%% Example:
%% delete_db_proxy_endpoint_request() :: #{
%%   <<"DBProxyEndpointName">> := string()
%% }
-type delete_db_proxy_endpoint_request() :: #{binary() => any()}.

%% Example:
%% option_group_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type option_group_not_found_fault() :: #{binary() => any()}.

%% Example:
%% option_groups() :: #{
%%   <<"Marker">> => string(),
%%   <<"OptionGroupsList">> => list(option_group()())
%% }
-type option_groups() :: #{binary() => any()}.

%% Example:
%% modify_db_proxy_response() :: #{
%%   <<"DBProxy">> => db_proxy()
%% }
-type modify_db_proxy_response() :: #{binary() => any()}.

%% Example:
%% account_attributes_message() :: #{
%%   <<"AccountQuotas">> => list(account_quota()())
%% }
-type account_attributes_message() :: #{binary() => any()}.

%% Example:
%% blue_green_deployment_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type blue_green_deployment_not_found_fault() :: #{binary() => any()}.

%% Example:
%% global_cluster_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type global_cluster_not_found_fault() :: #{binary() => any()}.

%% Example:
%% db_cluster_snapshot_attributes_result() :: #{
%%   <<"DBClusterSnapshotAttributes">> => list(db_cluster_snapshot_attribute()()),
%%   <<"DBClusterSnapshotIdentifier">> => string()
%% }
-type db_cluster_snapshot_attributes_result() :: #{binary() => any()}.

%% Example:
%% export_task_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type export_task_not_found_fault() :: #{binary() => any()}.

%% Example:
%% custom_db_engine_version_already_exists_fault() :: #{
%%   <<"message">> => string()
%% }
-type custom_db_engine_version_already_exists_fault() :: #{binary() => any()}.

%% Example:
%% modify_event_subscription_result() :: #{
%%   <<"EventSubscription">> => event_subscription()
%% }
-type modify_event_subscription_result() :: #{binary() => any()}.

%% Example:
%% insufficient_available_ips_in_subnet_fault() :: #{
%%   <<"message">> => string()
%% }
-type insufficient_available_ips_in_subnet_fault() :: #{binary() => any()}.

%% Example:
%% global_cluster_already_exists_fault() :: #{
%%   <<"message">> => string()
%% }
-type global_cluster_already_exists_fault() :: #{binary() => any()}.

%% Example:
%% db_cluster_automated_backup_message() :: #{
%%   <<"DBClusterAutomatedBackups">> => list(db_cluster_automated_backup()()),
%%   <<"Marker">> => string()
%% }
-type db_cluster_automated_backup_message() :: #{binary() => any()}.

%% Example:
%% apply_pending_maintenance_action_result() :: #{
%%   <<"ResourcePendingMaintenanceActions">> => resource_pending_maintenance_actions()
%% }
-type apply_pending_maintenance_action_result() :: #{binary() => any()}.

%% Example:
%% create_blue_green_deployment_response() :: #{
%%   <<"BlueGreenDeployment">> => blue_green_deployment()
%% }
-type create_blue_green_deployment_response() :: #{binary() => any()}.

%% Example:
%% source_cluster_not_supported_fault() :: #{
%%   <<"message">> => string()
%% }
-type source_cluster_not_supported_fault() :: #{binary() => any()}.

%% Example:
%% upgrade_target() :: #{
%%   <<"AutoUpgrade">> => boolean(),
%%   <<"Description">> => string(),
%%   <<"Engine">> => string(),
%%   <<"EngineVersion">> => string(),
%%   <<"IsMajorVersionUpgrade">> => boolean(),
%%   <<"SupportedEngineModes">> => list(string()()),
%%   <<"SupportsBabelfish">> => boolean(),
%%   <<"SupportsGlobalDatabases">> => boolean(),
%%   <<"SupportsIntegrations">> => boolean(),
%%   <<"SupportsLimitlessDatabase">> => boolean(),
%%   <<"SupportsLocalWriteForwarding">> => boolean(),
%%   <<"SupportsParallelQuery">> => boolean()
%% }
-type upgrade_target() :: #{binary() => any()}.

%% Example:
%% reserved_db_instance_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type reserved_db_instance_not_found_fault() :: #{binary() => any()}.

%% Example:
%% copy_db_parameter_group_result() :: #{
%%   <<"DBParameterGroup">> => db_parameter_group()
%% }
-type copy_db_parameter_group_result() :: #{binary() => any()}.

%% Example:
%% delete_event_subscription_result() :: #{
%%   <<"EventSubscription">> => event_subscription()
%% }
-type delete_event_subscription_result() :: #{binary() => any()}.

%% Example:
%% limitless_database() :: #{
%%   <<"MinRequiredACU">> => float(),
%%   <<"Status">> => list(any())
%% }
-type limitless_database() :: #{binary() => any()}.

%% Example:
%% option_group_option() :: #{
%%   <<"CopyableCrossAccount">> => boolean(),
%%   <<"DefaultPort">> => integer(),
%%   <<"Description">> => string(),
%%   <<"EngineName">> => string(),
%%   <<"MajorEngineVersion">> => string(),
%%   <<"MinimumRequiredMinorEngineVersion">> => string(),
%%   <<"Name">> => string(),
%%   <<"OptionGroupOptionSettings">> => list(option_group_option_setting()()),
%%   <<"OptionGroupOptionVersions">> => list(option_version()()),
%%   <<"OptionsConflictsWith">> => list(string()()),
%%   <<"OptionsDependedOn">> => list(string()()),
%%   <<"Permanent">> => boolean(),
%%   <<"Persistent">> => boolean(),
%%   <<"PortRequired">> => boolean(),
%%   <<"RequiresAutoMinorEngineVersionUpgrade">> => boolean(),
%%   <<"SupportsOptionVersionDowngrade">> => boolean(),
%%   <<"VpcOnly">> => boolean()
%% }
-type option_group_option() :: #{binary() => any()}.

%% Example:
%% download_db_log_file_portion_message() :: #{
%%   <<"DBInstanceIdentifier">> := string(),
%%   <<"LogFileName">> := string(),
%%   <<"Marker">> => string(),
%%   <<"NumberOfLines">> => integer()
%% }
-type download_db_log_file_portion_message() :: #{binary() => any()}.

%% Example:
%% db_instance_automated_backup() :: #{
%%   <<"AllocatedStorage">> => integer(),
%%   <<"AvailabilityZone">> => string(),
%%   <<"AwsBackupRecoveryPointArn">> => string(),
%%   <<"BackupRetentionPeriod">> => integer(),
%%   <<"BackupTarget">> => string(),
%%   <<"DBInstanceArn">> => string(),
%%   <<"DBInstanceAutomatedBackupsArn">> => string(),
%%   <<"DBInstanceAutomatedBackupsReplications">> => list(db_instance_automated_backups_replication()()),
%%   <<"DBInstanceIdentifier">> => string(),
%%   <<"DbiResourceId">> => string(),
%%   <<"DedicatedLogVolume">> => boolean(),
%%   <<"Encrypted">> => boolean(),
%%   <<"Engine">> => string(),
%%   <<"EngineVersion">> => string(),
%%   <<"IAMDatabaseAuthenticationEnabled">> => boolean(),
%%   <<"InstanceCreateTime">> => non_neg_integer(),
%%   <<"Iops">> => integer(),
%%   <<"KmsKeyId">> => string(),
%%   <<"LicenseModel">> => string(),
%%   <<"MasterUsername">> => string(),
%%   <<"MultiTenant">> => boolean(),
%%   <<"OptionGroupName">> => string(),
%%   <<"Port">> => integer(),
%%   <<"Region">> => string(),
%%   <<"RestoreWindow">> => restore_window(),
%%   <<"Status">> => string(),
%%   <<"StorageThroughput">> => integer(),
%%   <<"StorageType">> => string(),
%%   <<"TdeCredentialArn">> => string(),
%%   <<"Timezone">> => string(),
%%   <<"VpcId">> => string()
%% }
-type db_instance_automated_backup() :: #{binary() => any()}.

%% Example:
%% db_cluster_status_info() :: #{
%%   <<"Message">> => string(),
%%   <<"Normal">> => boolean(),
%%   <<"Status">> => string(),
%%   <<"StatusType">> => string()
%% }
-type db_cluster_status_info() :: #{binary() => any()}.

%% Example:
%% start_db_instance_automated_backups_replication_message() :: #{
%%   <<"BackupRetentionPeriod">> => integer(),
%%   <<"KmsKeyId">> => string(),
%%   <<"PreSignedUrl">> => string(),
%%   <<"SourceDBInstanceArn">> := string()
%% }
-type start_db_instance_automated_backups_replication_message() :: #{binary() => any()}.

%% Example:
%% delete_db_instance_automated_backup_result() :: #{
%%   <<"DBInstanceAutomatedBackup">> => db_instance_automated_backup()
%% }
-type delete_db_instance_automated_backup_result() :: #{binary() => any()}.

%% Example:
%% certificate_details() :: #{
%%   <<"CAIdentifier">> => string(),
%%   <<"ValidTill">> => non_neg_integer()
%% }
-type certificate_details() :: #{binary() => any()}.

%% Example:
%% db_cluster_option_group_status() :: #{
%%   <<"DBClusterOptionGroupName">> => string(),
%%   <<"Status">> => string()
%% }
-type db_cluster_option_group_status() :: #{binary() => any()}.

%% Example:
%% describe_export_tasks_message() :: #{
%%   <<"ExportTaskIdentifier">> => string(),
%%   <<"Filters">> => list(filter()()),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer(),
%%   <<"SourceArn">> => string(),
%%   <<"SourceType">> => list(any())
%% }
-type describe_export_tasks_message() :: #{binary() => any()}.

%% Example:
%% option() :: #{
%%   <<"DBSecurityGroupMemberships">> => list(db_security_group_membership()()),
%%   <<"OptionDescription">> => string(),
%%   <<"OptionName">> => string(),
%%   <<"OptionSettings">> => list(option_setting()()),
%%   <<"OptionVersion">> => string(),
%%   <<"Permanent">> => boolean(),
%%   <<"Persistent">> => boolean(),
%%   <<"Port">> => integer(),
%%   <<"VpcSecurityGroupMemberships">> => list(vpc_security_group_membership()())
%% }
-type option() :: #{binary() => any()}.

%% Example:
%% delete_blue_green_deployment_request() :: #{
%%   <<"BlueGreenDeploymentIdentifier">> := string(),
%%   <<"DeleteTarget">> => boolean()
%% }
-type delete_blue_green_deployment_request() :: #{binary() => any()}.

%% Example:
%% create_tenant_database_result() :: #{
%%   <<"TenantDatabase">> => tenant_database()
%% }
-type create_tenant_database_result() :: #{binary() => any()}.

%% Example:
%% provisioned_iops_not_available_in_a_z_fault() :: #{
%%   <<"message">> => string()
%% }
-type provisioned_iops_not_available_in_a_z_fault() :: #{binary() => any()}.

%% Example:
%% scalar_reference_details() :: #{
%%   <<"Value">> => float()
%% }
-type scalar_reference_details() :: #{binary() => any()}.

%% Example:
%% invalid_db_cluster_automated_backup_state_fault() :: #{
%%   <<"message">> => string()
%% }
-type invalid_db_cluster_automated_backup_state_fault() :: #{binary() => any()}.

%% Example:
%% describe_db_proxy_endpoints_request() :: #{
%%   <<"DBProxyEndpointName">> => string(),
%%   <<"DBProxyName">> => string(),
%%   <<"Filters">> => list(filter()()),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer()
%% }
-type describe_db_proxy_endpoints_request() :: #{binary() => any()}.

%% Example:
%% describe_db_subnet_groups_message() :: #{
%%   <<"DBSubnetGroupName">> => string(),
%%   <<"Filters">> => list(filter()()),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer()
%% }
-type describe_db_subnet_groups_message() :: #{binary() => any()}.

%% Example:
%% user_auth_config_info() :: #{
%%   <<"AuthScheme">> => list(any()),
%%   <<"ClientPasswordAuthType">> => list(any()),
%%   <<"Description">> => string(),
%%   <<"IAMAuth">> => list(any()),
%%   <<"SecretArn">> => string(),
%%   <<"UserName">> => string()
%% }
-type user_auth_config_info() :: #{binary() => any()}.

%% Example:
%% db_recommendation() :: #{
%%   <<"AdditionalInfo">> => string(),
%%   <<"Category">> => string(),
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"Detection">> => string(),
%%   <<"Impact">> => string(),
%%   <<"IssueDetails">> => issue_details(),
%%   <<"Links">> => list(doc_link()()),
%%   <<"Reason">> => string(),
%%   <<"Recommendation">> => string(),
%%   <<"RecommendationId">> => string(),
%%   <<"RecommendedActions">> => list(recommended_action()()),
%%   <<"ResourceArn">> => string(),
%%   <<"Severity">> => string(),
%%   <<"Source">> => string(),
%%   <<"Status">> => string(),
%%   <<"TypeDetection">> => string(),
%%   <<"TypeId">> => string(),
%%   <<"TypeRecommendation">> => string(),
%%   <<"UpdatedTime">> => non_neg_integer()
%% }
-type db_recommendation() :: #{binary() => any()}.

%% Example:
%% modify_db_subnet_group_result() :: #{
%%   <<"DBSubnetGroup">> => db_subnet_group()
%% }
-type modify_db_subnet_group_result() :: #{binary() => any()}.

%% Example:
%% option_group_options_message() :: #{
%%   <<"Marker">> => string(),
%%   <<"OptionGroupOptions">> => list(option_group_option()())
%% }
-type option_group_options_message() :: #{binary() => any()}.

%% Example:
%% describe_db_log_files_details() :: #{
%%   <<"LastWritten">> => float(),
%%   <<"LogFileName">> => string(),
%%   <<"Size">> => float()
%% }
-type describe_db_log_files_details() :: #{binary() => any()}.

%% Example:
%% modify_db_snapshot_result() :: #{
%%   <<"DBSnapshot">> => db_snapshot()
%% }
-type modify_db_snapshot_result() :: #{binary() => any()}.

%% Example:
%% reserved_db_instance_quota_exceeded_fault() :: #{
%%   <<"message">> => string()
%% }
-type reserved_db_instance_quota_exceeded_fault() :: #{binary() => any()}.

%% Example:
%% db_snapshot_tenant_database_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type db_snapshot_tenant_database_not_found_fault() :: #{binary() => any()}.

%% Example:
%% serverless_v2_scaling_configuration_info() :: #{
%%   <<"MaxCapacity">> => float(),
%%   <<"MinCapacity">> => float(),
%%   <<"SecondsUntilAutoPause">> => integer()
%% }
-type serverless_v2_scaling_configuration_info() :: #{binary() => any()}.

%% Example:
%% db_proxy_quota_exceeded_fault() :: #{
%%   <<"message">> => string()
%% }
-type db_proxy_quota_exceeded_fault() :: #{binary() => any()}.

%% Example:
%% describe_integrations_message() :: #{
%%   <<"Filters">> => list(filter()()),
%%   <<"IntegrationIdentifier">> => string(),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer()
%% }
-type describe_integrations_message() :: #{binary() => any()}.

%% Example:
%% restore_db_cluster_from_s3_message() :: #{
%%   <<"PreferredBackupWindow">> => string(),
%%   <<"Port">> => integer(),
%%   <<"ServerlessV2ScalingConfiguration">> => serverless_v2_scaling_configuration(),
%%   <<"S3IngestionRoleArn">> := string(),
%%   <<"EngineLifecycleSupport">> => string(),
%%   <<"EnableIAMDatabaseAuthentication">> => boolean(),
%%   <<"MasterUserSecretKmsKeyId">> => string(),
%%   <<"DBClusterParameterGroupName">> => string(),
%%   <<"DBSubnetGroupName">> => string(),
%%   <<"SourceEngineVersion">> := string(),
%%   <<"CharacterSetName">> => string(),
%%   <<"CopyTagsToSnapshot">> => boolean(),
%%   <<"OptionGroupName">> => string(),
%%   <<"StorageType">> => string(),
%%   <<"MasterUsername">> := string(),
%%   <<"S3BucketName">> := string(),
%%   <<"EngineVersion">> => string(),
%%   <<"VpcSecurityGroupIds">> => list(string()()),
%%   <<"Engine">> := string(),
%%   <<"DBClusterIdentifier">> := string(),
%%   <<"AvailabilityZones">> => list(string()()),
%%   <<"MasterUserPassword">> => string(),
%%   <<"BackupRetentionPeriod">> => integer(),
%%   <<"Tags">> => list(tag()()),
%%   <<"EnableCloudwatchLogsExports">> => list(string()()),
%%   <<"DatabaseName">> => string(),
%%   <<"ManageMasterUserPassword">> => boolean(),
%%   <<"KmsKeyId">> => string(),
%%   <<"S3Prefix">> => string(),
%%   <<"PreferredMaintenanceWindow">> => string(),
%%   <<"SourceEngine">> := string(),
%%   <<"Domain">> => string(),
%%   <<"DomainIAMRoleName">> => string(),
%%   <<"BacktrackWindow">> => float(),
%%   <<"NetworkType">> => string(),
%%   <<"StorageEncrypted">> => boolean(),
%%   <<"DeletionProtection">> => boolean()
%% }
-type restore_db_cluster_from_s3_message() :: #{binary() => any()}.

%% Example:
%% modify_db_proxy_endpoint_response() :: #{
%%   <<"DBProxyEndpoint">> => db_proxy_endpoint()
%% }
-type modify_db_proxy_endpoint_response() :: #{binary() => any()}.

%% Example:
%% db_cluster_automated_backup_quota_exceeded_fault() :: #{
%%   <<"message">> => string()
%% }
-type db_cluster_automated_backup_quota_exceeded_fault() :: #{binary() => any()}.

%% Example:
%% db_snapshot_message() :: #{
%%   <<"DBSnapshots">> => list(db_snapshot()()),
%%   <<"Marker">> => string()
%% }
-type db_snapshot_message() :: #{binary() => any()}.

%% Example:
%% db_subnet_group() :: #{
%%   <<"DBSubnetGroupArn">> => string(),
%%   <<"DBSubnetGroupDescription">> => string(),
%%   <<"DBSubnetGroupName">> => string(),
%%   <<"SubnetGroupStatus">> => string(),
%%   <<"Subnets">> => list(subnet()()),
%%   <<"SupportedNetworkTypes">> => list(string()()),
%%   <<"VpcId">> => string()
%% }
-type db_subnet_group() :: #{binary() => any()}.

%% Example:
%% db_snapshot_tenant_database() :: #{
%%   <<"CharacterSetName">> => string(),
%%   <<"DBInstanceIdentifier">> => string(),
%%   <<"DBSnapshotIdentifier">> => string(),
%%   <<"DBSnapshotTenantDatabaseARN">> => string(),
%%   <<"DbiResourceId">> => string(),
%%   <<"EngineName">> => string(),
%%   <<"MasterUsername">> => string(),
%%   <<"NcharCharacterSetName">> => string(),
%%   <<"SnapshotType">> => string(),
%%   <<"TagList">> => list(tag()()),
%%   <<"TenantDBName">> => string(),
%%   <<"TenantDatabaseCreateTime">> => non_neg_integer(),
%%   <<"TenantDatabaseResourceId">> => string()
%% }
-type db_snapshot_tenant_database() :: #{binary() => any()}.

%% Example:
%% modify_custom_db_engine_version_message() :: #{
%%   <<"Description">> => string(),
%%   <<"Engine">> := string(),
%%   <<"EngineVersion">> := string(),
%%   <<"Status">> => list(any())
%% }
-type modify_custom_db_engine_version_message() :: #{binary() => any()}.

%% Example:
%% invalid_db_subnet_state_fault() :: #{
%%   <<"message">> => string()
%% }
-type invalid_db_subnet_state_fault() :: #{binary() => any()}.

%% Example:
%% failover_db_cluster_message() :: #{
%%   <<"DBClusterIdentifier">> := string(),
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
%% tenant_database_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type tenant_database_not_found_fault() :: #{binary() => any()}.

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
%%   <<"TagKeys">> := list(string()())
%% }
-type remove_tags_from_resource_message() :: #{binary() => any()}.

%% Example:
%% db_proxy() :: #{
%%   <<"Auth">> => list(user_auth_config_info()()),
%%   <<"CreatedDate">> => non_neg_integer(),
%%   <<"DBProxyArn">> => string(),
%%   <<"DBProxyName">> => string(),
%%   <<"DebugLogging">> => boolean(),
%%   <<"Endpoint">> => string(),
%%   <<"EngineFamily">> => string(),
%%   <<"IdleClientTimeout">> => integer(),
%%   <<"RequireTLS">> => boolean(),
%%   <<"RoleArn">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"UpdatedDate">> => non_neg_integer(),
%%   <<"VpcId">> => string(),
%%   <<"VpcSecurityGroupIds">> => list(string()()),
%%   <<"VpcSubnetIds">> => list(string()())
%% }
-type db_proxy() :: #{binary() => any()}.

%% Example:
%% storage_type_not_available_fault() :: #{
%%   <<"message">> => string()
%% }
-type storage_type_not_available_fault() :: #{binary() => any()}.

%% Example:
%% invalid_db_cluster_capacity_fault() :: #{
%%   <<"message">> => string()
%% }
-type invalid_db_cluster_capacity_fault() :: #{binary() => any()}.

%% Example:
%% modify_db_snapshot_attribute_result() :: #{
%%   <<"DBSnapshotAttributesResult">> => db_snapshot_attributes_result()
%% }
-type modify_db_snapshot_attribute_result() :: #{binary() => any()}.

%% Example:
%% authorization_quota_exceeded_fault() :: #{
%%   <<"message">> => string()
%% }
-type authorization_quota_exceeded_fault() :: #{binary() => any()}.

%% Example:
%% event_subscription_quota_exceeded_fault() :: #{
%%   <<"message">> => string()
%% }
-type event_subscription_quota_exceeded_fault() :: #{binary() => any()}.

%% Example:
%% modify_db_cluster_message() :: #{
%%   <<"PreferredBackupWindow">> => string(),
%%   <<"Port">> => integer(),
%%   <<"ServerlessV2ScalingConfiguration">> => serverless_v2_scaling_configuration(),
%%   <<"DBInstanceParameterGroupName">> => string(),
%%   <<"EnableIAMDatabaseAuthentication">> => boolean(),
%%   <<"MasterUserSecretKmsKeyId">> => string(),
%%   <<"Iops">> => integer(),
%%   <<"DBClusterParameterGroupName">> => string(),
%%   <<"DBClusterInstanceClass">> => string(),
%%   <<"PerformanceInsightsKMSKeyId">> => string(),
%%   <<"ScalingConfiguration">> => scaling_configuration(),
%%   <<"EnableHttpEndpoint">> => boolean(),
%%   <<"CopyTagsToSnapshot">> => boolean(),
%%   <<"OptionGroupName">> => string(),
%%   <<"StorageType">> => string(),
%%   <<"MonitoringRoleArn">> => string(),
%%   <<"EngineVersion">> => string(),
%%   <<"EngineMode">> => string(),
%%   <<"ApplyImmediately">> => boolean(),
%%   <<"VpcSecurityGroupIds">> => list(string()()),
%%   <<"DBClusterIdentifier">> := string(),
%%   <<"RotateMasterUserPassword">> => boolean(),
%%   <<"EnableLocalWriteForwarding">> => boolean(),
%%   <<"EnableLimitlessDatabase">> => boolean(),
%%   <<"AllowMajorVersionUpgrade">> => boolean(),
%%   <<"MasterUserPassword">> => string(),
%%   <<"BackupRetentionPeriod">> => integer(),
%%   <<"AllowEngineModeChange">> => boolean(),
%%   <<"CloudwatchLogsExportConfiguration">> => cloudwatch_logs_export_configuration(),
%%   <<"ManageMasterUserPassword">> => boolean(),
%%   <<"PerformanceInsightsRetentionPeriod">> => integer(),
%%   <<"PreferredMaintenanceWindow">> => string(),
%%   <<"NewDBClusterIdentifier">> => string(),
%%   <<"Domain">> => string(),
%%   <<"DomainIAMRoleName">> => string(),
%%   <<"EnablePerformanceInsights">> => boolean(),
%%   <<"BacktrackWindow">> => float(),
%%   <<"AutoMinorVersionUpgrade">> => boolean(),
%%   <<"NetworkType">> => string(),
%%   <<"AllocatedStorage">> => integer(),
%%   <<"MonitoringInterval">> => integer(),
%%   <<"AwsBackupRecoveryPointArn">> => string(),
%%   <<"CACertificateIdentifier">> => string(),
%%   <<"EnableGlobalWriteForwarding">> => boolean(),
%%   <<"DeletionProtection">> => boolean()
%% }
-type modify_db_cluster_message() :: #{binary() => any()}.

%% Example:
%% db_log_file_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type db_log_file_not_found_fault() :: #{binary() => any()}.

%% Example:
%% describe_event_categories_message() :: #{
%%   <<"Filters">> => list(filter()()),
%%   <<"SourceType">> => string()
%% }
-type describe_event_categories_message() :: #{binary() => any()}.

%% Example:
%% rds_custom_cluster_configuration() :: #{
%%   <<"InterconnectSubnetId">> => string(),
%%   <<"ReplicaMode">> => list(any()),
%%   <<"TransitGatewayMulticastDomainId">> => string()
%% }
-type rds_custom_cluster_configuration() :: #{binary() => any()}.

%% Example:
%% reserved_db_instances_offering_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type reserved_db_instances_offering_not_found_fault() :: #{binary() => any()}.

%% Example:
%% db_cluster_parameter_group() :: #{
%%   <<"DBClusterParameterGroupArn">> => string(),
%%   <<"DBClusterParameterGroupName">> => string(),
%%   <<"DBParameterGroupFamily">> => string(),
%%   <<"Description">> => string()
%% }
-type db_cluster_parameter_group() :: #{binary() => any()}.

%% Example:
%% describe_db_cluster_automated_backups_message() :: #{
%%   <<"DBClusterIdentifier">> => string(),
%%   <<"DbClusterResourceId">> => string(),
%%   <<"Filters">> => list(filter()()),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer()
%% }
-type describe_db_cluster_automated_backups_message() :: #{binary() => any()}.

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
%% db_parameter_group_status() :: #{
%%   <<"DBParameterGroupName">> => string(),
%%   <<"ParameterApplyStatus">> => string()
%% }
-type db_parameter_group_status() :: #{binary() => any()}.

%% Example:
%% db_parameter_group_name_message() :: #{
%%   <<"DBParameterGroupName">> => string()
%% }
-type db_parameter_group_name_message() :: #{binary() => any()}.

%% Example:
%% outpost() :: #{
%%   <<"Arn">> => string()
%% }
-type outpost() :: #{binary() => any()}.

%% Example:
%% s_n_s_no_authorization_fault() :: #{
%%   <<"message">> => string()
%% }
-type s_n_s_no_authorization_fault() :: #{binary() => any()}.

%% Example:
%% modify_db_cluster_endpoint_message() :: #{
%%   <<"DBClusterEndpointIdentifier">> := string(),
%%   <<"EndpointType">> => string(),
%%   <<"ExcludedMembers">> => list(string()()),
%%   <<"StaticMembers">> => list(string()())
%% }
-type modify_db_cluster_endpoint_message() :: #{binary() => any()}.

%% Example:
%% create_custom_db_engine_version_fault() :: #{
%%   <<"message">> => string()
%% }
-type create_custom_db_engine_version_fault() :: #{binary() => any()}.

%% Example:
%% vpc_security_group_membership() :: #{
%%   <<"Status">> => string(),
%%   <<"VpcSecurityGroupId">> => string()
%% }
-type vpc_security_group_membership() :: #{binary() => any()}.

%% Example:
%% issue_details() :: #{
%%   <<"PerformanceIssueDetails">> => performance_issue_details()
%% }
-type issue_details() :: #{binary() => any()}.

%% Example:
%% delete_db_shard_group_message() :: #{
%%   <<"DBShardGroupIdentifier">> := string()
%% }
-type delete_db_shard_group_message() :: #{binary() => any()}.

%% Example:
%% custom_availability_zone_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type custom_availability_zone_not_found_fault() :: #{binary() => any()}.

%% Example:
%% db_proxy_target_group() :: #{
%%   <<"ConnectionPoolConfig">> => connection_pool_configuration_info(),
%%   <<"CreatedDate">> => non_neg_integer(),
%%   <<"DBProxyName">> => string(),
%%   <<"IsDefault">> => boolean(),
%%   <<"Status">> => string(),
%%   <<"TargetGroupArn">> => string(),
%%   <<"TargetGroupName">> => string(),
%%   <<"UpdatedDate">> => non_neg_integer()
%% }
-type db_proxy_target_group() :: #{binary() => any()}.

%% Example:
%% create_db_proxy_response() :: #{
%%   <<"DBProxy">> => db_proxy()
%% }
-type create_db_proxy_response() :: #{binary() => any()}.

%% Example:
%% revoke_db_security_group_ingress_message() :: #{
%%   <<"CIDRIP">> => string(),
%%   <<"DBSecurityGroupName">> := string(),
%%   <<"EC2SecurityGroupId">> => string(),
%%   <<"EC2SecurityGroupName">> => string(),
%%   <<"EC2SecurityGroupOwnerId">> => string()
%% }
-type revoke_db_security_group_ingress_message() :: #{binary() => any()}.

%% Example:
%% delete_db_cluster_snapshot_message() :: #{
%%   <<"DBClusterSnapshotIdentifier">> := string()
%% }
-type delete_db_cluster_snapshot_message() :: #{binary() => any()}.

%% Example:
%% reserved_db_instance_already_exists_fault() :: #{
%%   <<"message">> => string()
%% }
-type reserved_db_instance_already_exists_fault() :: #{binary() => any()}.

%% Example:
%% reserved_db_instance() :: #{
%%   <<"CurrencyCode">> => string(),
%%   <<"DBInstanceClass">> => string(),
%%   <<"DBInstanceCount">> => integer(),
%%   <<"Duration">> => integer(),
%%   <<"FixedPrice">> => float(),
%%   <<"LeaseId">> => string(),
%%   <<"MultiAZ">> => boolean(),
%%   <<"OfferingType">> => string(),
%%   <<"ProductDescription">> => string(),
%%   <<"RecurringCharges">> => list(recurring_charge()()),
%%   <<"ReservedDBInstanceArn">> => string(),
%%   <<"ReservedDBInstanceId">> => string(),
%%   <<"ReservedDBInstancesOfferingId">> => string(),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"State">> => string(),
%%   <<"UsagePrice">> => float()
%% }
-type reserved_db_instance() :: #{binary() => any()}.

%% Example:
%% db_cluster_automated_backup() :: #{
%%   <<"AllocatedStorage">> => integer(),
%%   <<"AvailabilityZones">> => list(string()()),
%%   <<"AwsBackupRecoveryPointArn">> => string(),
%%   <<"BackupRetentionPeriod">> => integer(),
%%   <<"ClusterCreateTime">> => non_neg_integer(),
%%   <<"DBClusterArn">> => string(),
%%   <<"DBClusterAutomatedBackupsArn">> => string(),
%%   <<"DBClusterIdentifier">> => string(),
%%   <<"DbClusterResourceId">> => string(),
%%   <<"Engine">> => string(),
%%   <<"EngineMode">> => string(),
%%   <<"EngineVersion">> => string(),
%%   <<"IAMDatabaseAuthenticationEnabled">> => boolean(),
%%   <<"Iops">> => integer(),
%%   <<"KmsKeyId">> => string(),
%%   <<"LicenseModel">> => string(),
%%   <<"MasterUsername">> => string(),
%%   <<"Port">> => integer(),
%%   <<"Region">> => string(),
%%   <<"RestoreWindow">> => restore_window(),
%%   <<"Status">> => string(),
%%   <<"StorageEncrypted">> => boolean(),
%%   <<"StorageThroughput">> => integer(),
%%   <<"StorageType">> => string(),
%%   <<"VpcId">> => string()
%% }
-type db_cluster_automated_backup() :: #{binary() => any()}.

%% Example:
%% invalid_blue_green_deployment_state_fault() :: #{
%%   <<"message">> => string()
%% }
-type invalid_blue_green_deployment_state_fault() :: #{binary() => any()}.

%% Example:
%% failover_db_cluster_result() :: #{
%%   <<"DBCluster">> => db_cluster()
%% }
-type failover_db_cluster_result() :: #{binary() => any()}.

%% Example:
%% restore_window() :: #{
%%   <<"EarliestTime">> => non_neg_integer(),
%%   <<"LatestTime">> => non_neg_integer()
%% }
-type restore_window() :: #{binary() => any()}.

%% Example:
%% modify_db_instance_message() :: #{
%%   <<"NewDBInstanceIdentifier">> => string(),
%%   <<"PreferredBackupWindow">> => string(),
%%   <<"Engine">> => string(),
%%   <<"PromotionTier">> => integer(),
%%   <<"StorageThroughput">> => integer(),
%%   <<"DomainOu">> => string(),
%%   <<"EnableIAMDatabaseAuthentication">> => boolean(),
%%   <<"MasterUserSecretKmsKeyId">> => string(),
%%   <<"EnableCustomerOwnedIp">> => boolean(),
%%   <<"Iops">> => integer(),
%%   <<"DBSubnetGroupName">> => string(),
%%   <<"MultiTenant">> => boolean(),
%%   <<"DBInstanceClass">> => string(),
%%   <<"CertificateRotationRestart">> => boolean(),
%%   <<"PerformanceInsightsKMSKeyId">> => string(),
%%   <<"DBPortNumber">> => integer(),
%%   <<"ResumeFullAutomationModeMinutes">> => integer(),
%%   <<"CopyTagsToSnapshot">> => boolean(),
%%   <<"DBSecurityGroups">> => list(string()()),
%%   <<"OptionGroupName">> => string(),
%%   <<"StorageType">> => string(),
%%   <<"UseDefaultProcessorFeatures">> => boolean(),
%%   <<"MonitoringRoleArn">> => string(),
%%   <<"EngineVersion">> => string(),
%%   <<"PubliclyAccessible">> => boolean(),
%%   <<"ApplyImmediately">> => boolean(),
%%   <<"VpcSecurityGroupIds">> => list(string()()),
%%   <<"DomainAuthSecretArn">> => string(),
%%   <<"TdeCredentialPassword">> => string(),
%%   <<"RotateMasterUserPassword">> => boolean(),
%%   <<"DedicatedLogVolume">> => boolean(),
%%   <<"AutomationMode">> => list(any()),
%%   <<"DisableDomain">> => boolean(),
%%   <<"DomainDnsIps">> => list(string()()),
%%   <<"AllowMajorVersionUpgrade">> => boolean(),
%%   <<"MasterUserPassword">> => string(),
%%   <<"BackupRetentionPeriod">> => integer(),
%%   <<"LicenseModel">> => string(),
%%   <<"CloudwatchLogsExportConfiguration">> => cloudwatch_logs_export_configuration(),
%%   <<"DBInstanceIdentifier">> := string(),
%%   <<"ManageMasterUserPassword">> => boolean(),
%%   <<"ReplicaMode">> => list(any()),
%%   <<"DBParameterGroupName">> => string(),
%%   <<"PerformanceInsightsRetentionPeriod">> => integer(),
%%   <<"PreferredMaintenanceWindow">> => string(),
%%   <<"ProcessorFeatures">> => list(processor_feature()()),
%%   <<"TdeCredentialArn">> => string(),
%%   <<"Domain">> => string(),
%%   <<"DomainIAMRoleName">> => string(),
%%   <<"DomainFqdn">> => string(),
%%   <<"EnablePerformanceInsights">> => boolean(),
%%   <<"AutoMinorVersionUpgrade">> => boolean(),
%%   <<"NetworkType">> => string(),
%%   <<"AllocatedStorage">> => integer(),
%%   <<"MonitoringInterval">> => integer(),
%%   <<"AwsBackupRecoveryPointArn">> => string(),
%%   <<"CACertificateIdentifier">> => string(),
%%   <<"MaxAllocatedStorage">> => integer(),
%%   <<"MultiAZ">> => boolean(),
%%   <<"DeletionProtection">> => boolean()
%% }
-type modify_db_instance_message() :: #{binary() => any()}.

%% Example:
%% tenant_databases_message() :: #{
%%   <<"Marker">> => string(),
%%   <<"TenantDatabases">> => list(tenant_database()())
%% }
-type tenant_databases_message() :: #{binary() => any()}.

%% Example:
%% db_cluster_endpoint_already_exists_fault() :: #{
%%   <<"message">> => string()
%% }
-type db_cluster_endpoint_already_exists_fault() :: #{binary() => any()}.

%% Example:
%% serverless_v2_scaling_configuration() :: #{
%%   <<"MaxCapacity">> => float(),
%%   <<"MinCapacity">> => float(),
%%   <<"SecondsUntilAutoPause">> => integer()
%% }
-type serverless_v2_scaling_configuration() :: #{binary() => any()}.

%% Example:
%% create_db_instance_result() :: #{
%%   <<"DBInstance">> => db_instance()
%% }
-type create_db_instance_result() :: #{binary() => any()}.

%% Example:
%% create_db_proxy_endpoint_response() :: #{
%%   <<"DBProxyEndpoint">> => db_proxy_endpoint()
%% }
-type create_db_proxy_endpoint_response() :: #{binary() => any()}.

%% Example:
%% blue_green_deployment_already_exists_fault() :: #{
%%   <<"message">> => string()
%% }
-type blue_green_deployment_already_exists_fault() :: #{binary() => any()}.

%% Example:
%% failover_global_cluster_message() :: #{
%%   <<"AllowDataLoss">> => boolean(),
%%   <<"GlobalClusterIdentifier">> := string(),
%%   <<"Switchover">> => boolean(),
%%   <<"TargetDbClusterIdentifier">> := string()
%% }
-type failover_global_cluster_message() :: #{binary() => any()}.

%% Example:
%% db_cluster_role_quota_exceeded_fault() :: #{
%%   <<"message">> => string()
%% }
-type db_cluster_role_quota_exceeded_fault() :: #{binary() => any()}.

%% Example:
%% db_cluster_parameter_group_details() :: #{
%%   <<"Marker">> => string(),
%%   <<"Parameters">> => list(parameter()())
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
%%   <<"PendingMaintenanceActions">> => list(resource_pending_maintenance_actions()())
%% }
-type pending_maintenance_actions_message() :: #{binary() => any()}.

%% Example:
%% timezone() :: #{
%%   <<"TimezoneName">> => string()
%% }
-type timezone() :: #{binary() => any()}.

%% Example:
%% create_option_group_message() :: #{
%%   <<"EngineName">> := string(),
%%   <<"MajorEngineVersion">> := string(),
%%   <<"OptionGroupDescription">> := string(),
%%   <<"OptionGroupName">> := string(),
%%   <<"Tags">> => list(tag()())
%% }
-type create_option_group_message() :: #{binary() => any()}.

%% Example:
%% invalid_db_instance_state_fault() :: #{
%%   <<"message">> => string()
%% }
-type invalid_db_instance_state_fault() :: #{binary() => any()}.

%% Example:
%% db_cluster_role_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type db_cluster_role_not_found_fault() :: #{binary() => any()}.

%% Example:
%% create_db_proxy_endpoint_request() :: #{
%%   <<"DBProxyEndpointName">> := string(),
%%   <<"DBProxyName">> := string(),
%%   <<"Tags">> => list(tag()()),
%%   <<"TargetRole">> => list(any()),
%%   <<"VpcSecurityGroupIds">> => list(string()()),
%%   <<"VpcSubnetIds">> := list(string()())
%% }
-type create_db_proxy_endpoint_request() :: #{binary() => any()}.

%% Example:
%% copy_db_parameter_group_message() :: #{
%%   <<"SourceDBParameterGroupIdentifier">> := string(),
%%   <<"Tags">> => list(tag()()),
%%   <<"TargetDBParameterGroupDescription">> := string(),
%%   <<"TargetDBParameterGroupIdentifier">> := string()
%% }
-type copy_db_parameter_group_message() :: #{binary() => any()}.

%% Example:
%% start_activity_stream_response() :: #{
%%   <<"ApplyImmediately">> => boolean(),
%%   <<"EngineNativeAuditFieldsIncluded">> => boolean(),
%%   <<"KinesisStreamName">> => string(),
%%   <<"KmsKeyId">> => string(),
%%   <<"Mode">> => list(any()),
%%   <<"Status">> => list(any())
%% }
-type start_activity_stream_response() :: #{binary() => any()}.

%% Example:
%% delete_db_cluster_automated_backup_message() :: #{
%%   <<"DbClusterResourceId">> := string()
%% }
-type delete_db_cluster_automated_backup_message() :: #{binary() => any()}.

%% Example:
%% insufficient_storage_cluster_capacity_fault() :: #{
%%   <<"message">> => string()
%% }
-type insufficient_storage_cluster_capacity_fault() :: #{binary() => any()}.

-type add_role_to_db_cluster_errors() ::
    db_cluster_role_quota_exceeded_fault() | 
    db_cluster_not_found_fault() | 
    invalid_db_cluster_state_fault() | 
    db_cluster_role_already_exists_fault().

-type add_role_to_db_instance_errors() ::
    invalid_db_instance_state_fault() | 
    db_instance_role_already_exists_fault() | 
    db_instance_role_quota_exceeded_fault() | 
    db_instance_not_found_fault().

-type add_source_identifier_to_subscription_errors() ::
    subscription_not_found_fault() | 
    source_not_found_fault().

-type add_tags_to_resource_errors() ::
    tenant_database_not_found_fault() | 
    db_snapshot_tenant_database_not_found_fault() | 
    blue_green_deployment_not_found_fault() | 
    db_cluster_not_found_fault() | 
    db_snapshot_not_found_fault() | 
    integration_not_found_fault() | 
    db_proxy_not_found_fault() | 
    db_instance_not_found_fault() | 
    db_proxy_target_group_not_found_fault().

-type apply_pending_maintenance_action_errors() ::
    invalid_db_instance_state_fault() | 
    invalid_db_cluster_state_fault() | 
    resource_not_found_fault().

-type authorize_db_security_group_ingress_errors() ::
    authorization_quota_exceeded_fault() | 
    invalid_db_security_group_state_fault() | 
    authorization_already_exists_fault() | 
    db_security_group_not_found_fault().

-type backtrack_db_cluster_errors() ::
    db_cluster_not_found_fault() | 
    invalid_db_cluster_state_fault().

-type cancel_export_task_errors() ::
    export_task_not_found_fault() | 
    invalid_export_task_state_fault().

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

-type copy_db_parameter_group_errors() ::
    db_parameter_group_already_exists_fault() | 
    db_parameter_group_quota_exceeded_fault() | 
    db_parameter_group_not_found_fault().

-type copy_db_snapshot_errors() ::
    custom_availability_zone_not_found_fault() | 
    kms_key_not_accessible_fault() | 
    db_snapshot_not_found_fault() | 
    invalid_db_snapshot_state_fault() | 
    db_snapshot_already_exists_fault() | 
    snapshot_quota_exceeded_fault().

-type copy_option_group_errors() ::
    option_group_not_found_fault() | 
    option_group_already_exists_fault() | 
    option_group_quota_exceeded_fault().

-type create_blue_green_deployment_errors() ::
    invalid_db_instance_state_fault() | 
    blue_green_deployment_already_exists_fault() | 
    source_cluster_not_supported_fault() | 
    db_cluster_not_found_fault() | 
    invalid_db_cluster_state_fault() | 
    db_cluster_parameter_group_not_found_fault() | 
    instance_quota_exceeded_fault() | 
    source_database_not_supported_fault() | 
    db_instance_not_found_fault() | 
    db_parameter_group_not_found_fault() | 
    db_cluster_quota_exceeded_fault().

-type create_custom_db_engine_version_errors() ::
    create_custom_db_engine_version_fault() | 
    custom_db_engine_version_already_exists_fault() | 
    kms_key_not_accessible_fault() | 
    ec2_image_properties_not_supported_fault() | 
    custom_db_engine_version_quota_exceeded_fault().

-type create_db_cluster_errors() ::
    insufficient_storage_cluster_capacity_fault() | 
    invalid_db_instance_state_fault() | 
    global_cluster_not_found_fault() | 
    option_group_not_found_fault() | 
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
    domain_not_found_fault() | 
    invalid_global_cluster_state_fault() | 
    invalid_subnet() | 
    invalid_db_subnet_group_state_fault() | 
    invalid_db_subnet_group_fault() | 
    insufficient_db_instance_capacity_fault() | 
    db_cluster_quota_exceeded_fault().

-type create_db_cluster_endpoint_errors() ::
    invalid_db_instance_state_fault() | 
    db_cluster_endpoint_already_exists_fault() | 
    db_cluster_not_found_fault() | 
    invalid_db_cluster_state_fault() | 
    db_cluster_endpoint_quota_exceeded_fault() | 
    db_instance_not_found_fault().

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
    provisioned_iops_not_available_in_a_z_fault() | 
    option_group_not_found_fault() | 
    db_cluster_not_found_fault() | 
    invalid_db_cluster_state_fault() | 
    kms_key_not_accessible_fault() | 
    storage_quota_exceeded_fault() | 
    instance_quota_exceeded_fault() | 
    db_subnet_group_not_found_fault() | 
    certificate_not_found_fault() | 
    authorization_not_found_fault() | 
    backup_policy_not_found_fault() | 
    network_type_not_supported() | 
    db_subnet_group_does_not_cover_enough_a_zs() | 
    tenant_database_quota_exceeded_fault() | 
    db_security_group_not_found_fault() | 
    invalid_vpc_network_state_fault() | 
    domain_not_found_fault() | 
    storage_type_not_supported_fault() | 
    invalid_subnet() | 
    insufficient_db_instance_capacity_fault() | 
    db_instance_already_exists_fault() | 
    db_parameter_group_not_found_fault().

-type create_db_instance_read_replica_errors() ::
    invalid_db_instance_state_fault() | 
    provisioned_iops_not_available_in_a_z_fault() | 
    option_group_not_found_fault() | 
    db_cluster_not_found_fault() | 
    invalid_db_cluster_state_fault() | 
    kms_key_not_accessible_fault() | 
    storage_quota_exceeded_fault() | 
    instance_quota_exceeded_fault() | 
    db_subnet_group_not_allowed_fault() | 
    db_subnet_group_not_found_fault() | 
    certificate_not_found_fault() | 
    db_instance_not_found_fault() | 
    network_type_not_supported() | 
    db_subnet_group_does_not_cover_enough_a_zs() | 
    tenant_database_quota_exceeded_fault() | 
    db_security_group_not_found_fault() | 
    invalid_vpc_network_state_fault() | 
    domain_not_found_fault() | 
    storage_type_not_supported_fault() | 
    invalid_subnet() | 
    invalid_db_subnet_group_fault() | 
    insufficient_db_instance_capacity_fault() | 
    db_instance_already_exists_fault() | 
    db_parameter_group_not_found_fault().

-type create_db_parameter_group_errors() ::
    db_parameter_group_already_exists_fault() | 
    db_parameter_group_quota_exceeded_fault().

-type create_db_proxy_errors() ::
    db_proxy_quota_exceeded_fault() | 
    invalid_subnet() | 
    db_proxy_already_exists_fault().

-type create_db_proxy_endpoint_errors() ::
    invalid_db_proxy_state_fault() | 
    db_proxy_endpoint_quota_exceeded_fault() | 
    db_proxy_not_found_fault() | 
    db_proxy_endpoint_already_exists_fault() | 
    invalid_subnet().

-type create_db_security_group_errors() ::
    db_security_group_already_exists_fault() | 
    db_security_group_quota_exceeded_fault() | 
    db_security_group_not_supported_fault().

-type create_db_shard_group_errors() ::
    db_cluster_not_found_fault() | 
    unsupported_db_engine_version_fault() | 
    invalid_db_cluster_state_fault() | 
    network_type_not_supported() | 
    invalid_vpc_network_state_fault() | 
    db_shard_group_already_exists_fault() | 
    max_db_shard_group_limit_reached().

-type create_db_snapshot_errors() ::
    invalid_db_instance_state_fault() | 
    db_instance_not_found_fault() | 
    db_snapshot_already_exists_fault() | 
    snapshot_quota_exceeded_fault().

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

-type create_integration_errors() ::
    db_cluster_not_found_fault() | 
    kms_key_not_accessible_fault() | 
    db_instance_not_found_fault() | 
    integration_quota_exceeded_fault() | 
    integration_conflict_operation_fault() | 
    integration_already_exists_fault().

-type create_option_group_errors() ::
    option_group_already_exists_fault() | 
    option_group_quota_exceeded_fault().

-type create_tenant_database_errors() ::
    invalid_db_instance_state_fault() | 
    tenant_database_already_exists_fault() | 
    db_instance_not_found_fault() | 
    tenant_database_quota_exceeded_fault().

-type delete_blue_green_deployment_errors() ::
    invalid_blue_green_deployment_state_fault() | 
    blue_green_deployment_not_found_fault().

-type delete_custom_db_engine_version_errors() ::
    invalid_custom_db_engine_version_state_fault() | 
    custom_db_engine_version_not_found_fault().

-type delete_db_cluster_errors() ::
    db_cluster_automated_backup_quota_exceeded_fault() | 
    db_cluster_not_found_fault() | 
    invalid_db_cluster_state_fault() | 
    invalid_db_cluster_snapshot_state_fault() | 
    db_cluster_snapshot_already_exists_fault() | 
    snapshot_quota_exceeded_fault().

-type delete_db_cluster_automated_backup_errors() ::
    invalid_db_cluster_automated_backup_state_fault() | 
    db_cluster_automated_backup_not_found_fault().

-type delete_db_cluster_endpoint_errors() ::
    invalid_db_cluster_state_fault() | 
    db_cluster_endpoint_not_found_fault() | 
    invalid_db_cluster_endpoint_state_fault().

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
    db_instance_automated_backup_quota_exceeded_fault() | 
    snapshot_quota_exceeded_fault().

-type delete_db_instance_automated_backup_errors() ::
    db_instance_automated_backup_not_found_fault() | 
    invalid_db_instance_automated_backup_state_fault().

-type delete_db_parameter_group_errors() ::
    invalid_db_parameter_group_state_fault() | 
    db_parameter_group_not_found_fault().

-type delete_db_proxy_errors() ::
    invalid_db_proxy_state_fault() | 
    db_proxy_not_found_fault().

-type delete_db_proxy_endpoint_errors() ::
    db_proxy_endpoint_not_found_fault() | 
    invalid_db_proxy_endpoint_state_fault().

-type delete_db_security_group_errors() ::
    invalid_db_security_group_state_fault() | 
    db_security_group_not_found_fault().

-type delete_db_shard_group_errors() ::
    invalid_db_cluster_state_fault() | 
    db_shard_group_not_found_fault() | 
    invalid_db_shard_group_state_fault().

-type delete_db_snapshot_errors() ::
    db_snapshot_not_found_fault() | 
    invalid_db_snapshot_state_fault().

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

-type delete_integration_errors() ::
    invalid_integration_state_fault() | 
    integration_not_found_fault() | 
    integration_conflict_operation_fault().

-type delete_option_group_errors() ::
    option_group_not_found_fault() | 
    invalid_option_group_state_fault().

-type delete_tenant_database_errors() ::
    invalid_db_instance_state_fault() | 
    tenant_database_not_found_fault() | 
    db_instance_not_found_fault().

-type deregister_db_proxy_targets_errors() ::
    invalid_db_proxy_state_fault() | 
    db_proxy_target_not_found_fault() | 
    db_proxy_not_found_fault() | 
    db_proxy_target_group_not_found_fault().

-type describe_blue_green_deployments_errors() ::
    blue_green_deployment_not_found_fault().

-type describe_certificates_errors() ::
    certificate_not_found_fault().

-type describe_db_cluster_automated_backups_errors() ::
    db_cluster_automated_backup_not_found_fault().

-type describe_db_cluster_backtracks_errors() ::
    db_cluster_not_found_fault() | 
    db_cluster_backtrack_not_found_fault().

-type describe_db_cluster_endpoints_errors() ::
    db_cluster_not_found_fault().

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

-type describe_db_instance_automated_backups_errors() ::
    db_instance_automated_backup_not_found_fault().

-type describe_db_instances_errors() ::
    db_instance_not_found_fault().

-type describe_db_log_files_errors() ::
    db_instance_not_found_fault() | 
    db_instance_not_ready_fault().

-type describe_db_parameter_groups_errors() ::
    db_parameter_group_not_found_fault().

-type describe_db_parameters_errors() ::
    db_parameter_group_not_found_fault().

-type describe_db_proxies_errors() ::
    db_proxy_not_found_fault().

-type describe_db_proxy_endpoints_errors() ::
    db_proxy_endpoint_not_found_fault() | 
    db_proxy_not_found_fault().

-type describe_db_proxy_target_groups_errors() ::
    invalid_db_proxy_state_fault() | 
    db_proxy_not_found_fault() | 
    db_proxy_target_group_not_found_fault().

-type describe_db_proxy_targets_errors() ::
    invalid_db_proxy_state_fault() | 
    db_proxy_target_not_found_fault() | 
    db_proxy_not_found_fault() | 
    db_proxy_target_group_not_found_fault().

-type describe_db_security_groups_errors() ::
    db_security_group_not_found_fault().

-type describe_db_shard_groups_errors() ::
    db_cluster_not_found_fault() | 
    db_shard_group_not_found_fault().

-type describe_db_snapshot_attributes_errors() ::
    db_snapshot_not_found_fault().

-type describe_db_snapshot_tenant_databases_errors() ::
    db_snapshot_not_found_fault().

-type describe_db_snapshots_errors() ::
    db_snapshot_not_found_fault().

-type describe_db_subnet_groups_errors() ::
    db_subnet_group_not_found_fault().

-type describe_event_subscriptions_errors() ::
    subscription_not_found_fault().

-type describe_export_tasks_errors() ::
    export_task_not_found_fault().

-type describe_global_clusters_errors() ::
    global_cluster_not_found_fault().

-type describe_integrations_errors() ::
    integration_not_found_fault().

-type describe_option_groups_errors() ::
    option_group_not_found_fault().

-type describe_pending_maintenance_actions_errors() ::
    resource_not_found_fault().

-type describe_reserved_db_instances_errors() ::
    reserved_db_instance_not_found_fault().

-type describe_reserved_db_instances_offerings_errors() ::
    reserved_db_instances_offering_not_found_fault().

-type describe_tenant_databases_errors() ::
    db_instance_not_found_fault().

-type describe_valid_db_instance_modifications_errors() ::
    invalid_db_instance_state_fault() | 
    db_instance_not_found_fault().

-type disable_http_endpoint_errors() ::
    invalid_resource_state_fault() | 
    resource_not_found_fault().

-type download_db_log_file_portion_errors() ::
    db_log_file_not_found_fault() | 
    db_instance_not_found_fault() | 
    db_instance_not_ready_fault().

-type enable_http_endpoint_errors() ::
    invalid_resource_state_fault() | 
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
    tenant_database_not_found_fault() | 
    db_snapshot_tenant_database_not_found_fault() | 
    blue_green_deployment_not_found_fault() | 
    db_cluster_not_found_fault() | 
    db_snapshot_not_found_fault() | 
    integration_not_found_fault() | 
    db_proxy_not_found_fault() | 
    db_instance_not_found_fault() | 
    db_proxy_target_group_not_found_fault().

-type modify_activity_stream_errors() ::
    invalid_db_instance_state_fault() | 
    db_instance_not_found_fault() | 
    resource_not_found_fault().

-type modify_certificates_errors() ::
    certificate_not_found_fault().

-type modify_current_db_cluster_capacity_errors() ::
    invalid_db_cluster_capacity_fault() | 
    db_cluster_not_found_fault() | 
    invalid_db_cluster_state_fault().

-type modify_custom_db_engine_version_errors() ::
    invalid_custom_db_engine_version_state_fault() | 
    custom_db_engine_version_not_found_fault().

-type modify_db_cluster_errors() ::
    invalid_db_instance_state_fault() | 
    storage_type_not_available_fault() | 
    option_group_not_found_fault() | 
    db_cluster_not_found_fault() | 
    db_cluster_already_exists_fault() | 
    invalid_db_security_group_state_fault() | 
    invalid_db_cluster_state_fault() | 
    db_cluster_parameter_group_not_found_fault() | 
    storage_quota_exceeded_fault() | 
    db_subnet_group_not_found_fault() | 
    invalid_vpc_network_state_fault() | 
    domain_not_found_fault() | 
    invalid_subnet() | 
    invalid_db_subnet_group_state_fault() | 
    db_instance_already_exists_fault().

-type modify_db_cluster_endpoint_errors() ::
    invalid_db_instance_state_fault() | 
    invalid_db_cluster_state_fault() | 
    db_cluster_endpoint_not_found_fault() | 
    db_instance_not_found_fault() | 
    invalid_db_cluster_endpoint_state_fault().

-type modify_db_cluster_parameter_group_errors() ::
    invalid_db_parameter_group_state_fault() | 
    db_parameter_group_not_found_fault().

-type modify_db_cluster_snapshot_attribute_errors() ::
    db_cluster_snapshot_not_found_fault() | 
    invalid_db_cluster_snapshot_state_fault() | 
    shared_snapshot_quota_exceeded_fault().

-type modify_db_instance_errors() ::
    invalid_db_instance_state_fault() | 
    provisioned_iops_not_available_in_a_z_fault() | 
    option_group_not_found_fault() | 
    invalid_db_security_group_state_fault() | 
    invalid_db_cluster_state_fault() | 
    kms_key_not_accessible_fault() | 
    storage_quota_exceeded_fault() | 
    certificate_not_found_fault() | 
    db_upgrade_dependency_failure_fault() | 
    db_instance_not_found_fault() | 
    authorization_not_found_fault() | 
    backup_policy_not_found_fault() | 
    network_type_not_supported() | 
    tenant_database_quota_exceeded_fault() | 
    db_security_group_not_found_fault() | 
    invalid_vpc_network_state_fault() | 
    domain_not_found_fault() | 
    storage_type_not_supported_fault() | 
    insufficient_db_instance_capacity_fault() | 
    db_instance_already_exists_fault() | 
    db_parameter_group_not_found_fault().

-type modify_db_parameter_group_errors() ::
    invalid_db_parameter_group_state_fault() | 
    db_parameter_group_not_found_fault().

-type modify_db_proxy_errors() ::
    invalid_db_proxy_state_fault() | 
    db_proxy_not_found_fault() | 
    db_proxy_already_exists_fault().

-type modify_db_proxy_endpoint_errors() ::
    invalid_db_proxy_state_fault() | 
    db_proxy_endpoint_not_found_fault() | 
    db_proxy_endpoint_already_exists_fault() | 
    invalid_db_proxy_endpoint_state_fault().

-type modify_db_proxy_target_group_errors() ::
    invalid_db_proxy_state_fault() | 
    db_proxy_not_found_fault() | 
    db_proxy_target_group_not_found_fault().

-type modify_db_shard_group_errors() ::
    invalid_db_cluster_state_fault() | 
    db_shard_group_not_found_fault() | 
    db_shard_group_already_exists_fault().

-type modify_db_snapshot_errors() ::
    db_snapshot_not_found_fault().

-type modify_db_snapshot_attribute_errors() ::
    db_snapshot_not_found_fault() | 
    invalid_db_snapshot_state_fault() | 
    shared_snapshot_quota_exceeded_fault().

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
    invalid_db_instance_state_fault() | 
    global_cluster_already_exists_fault() | 
    global_cluster_not_found_fault() | 
    invalid_db_cluster_state_fault() | 
    invalid_global_cluster_state_fault().

-type modify_integration_errors() ::
    invalid_integration_state_fault() | 
    integration_not_found_fault() | 
    integration_conflict_operation_fault().

-type modify_option_group_errors() ::
    option_group_not_found_fault() | 
    invalid_option_group_state_fault().

-type modify_tenant_database_errors() ::
    invalid_db_instance_state_fault() | 
    tenant_database_not_found_fault() | 
    tenant_database_already_exists_fault() | 
    db_instance_not_found_fault().

-type promote_read_replica_errors() ::
    invalid_db_instance_state_fault() | 
    db_instance_not_found_fault().

-type promote_read_replica_db_cluster_errors() ::
    db_cluster_not_found_fault() | 
    invalid_db_cluster_state_fault().

-type purchase_reserved_db_instances_offering_errors() ::
    reserved_db_instance_already_exists_fault() | 
    reserved_db_instances_offering_not_found_fault() | 
    reserved_db_instance_quota_exceeded_fault().

-type reboot_db_cluster_errors() ::
    invalid_db_instance_state_fault() | 
    db_cluster_not_found_fault() | 
    invalid_db_cluster_state_fault().

-type reboot_db_instance_errors() ::
    invalid_db_instance_state_fault() | 
    db_instance_not_found_fault().

-type reboot_db_shard_group_errors() ::
    db_shard_group_not_found_fault() | 
    invalid_db_shard_group_state_fault().

-type register_db_proxy_targets_errors() ::
    invalid_db_instance_state_fault() | 
    insufficient_available_ips_in_subnet_fault() | 
    db_cluster_not_found_fault() | 
    invalid_db_cluster_state_fault() | 
    invalid_db_proxy_state_fault() | 
    db_proxy_not_found_fault() | 
    db_instance_not_found_fault() | 
    db_proxy_target_group_not_found_fault() | 
    db_proxy_target_already_registered_fault().

-type remove_from_global_cluster_errors() ::
    global_cluster_not_found_fault() | 
    db_cluster_not_found_fault() | 
    invalid_global_cluster_state_fault().

-type remove_role_from_db_cluster_errors() ::
    db_cluster_role_not_found_fault() | 
    db_cluster_not_found_fault() | 
    invalid_db_cluster_state_fault().

-type remove_role_from_db_instance_errors() ::
    invalid_db_instance_state_fault() | 
    db_instance_not_found_fault() | 
    db_instance_role_not_found_fault().

-type remove_source_identifier_from_subscription_errors() ::
    subscription_not_found_fault() | 
    source_not_found_fault().

-type remove_tags_from_resource_errors() ::
    tenant_database_not_found_fault() | 
    db_snapshot_tenant_database_not_found_fault() | 
    blue_green_deployment_not_found_fault() | 
    db_cluster_not_found_fault() | 
    db_snapshot_not_found_fault() | 
    integration_not_found_fault() | 
    db_proxy_not_found_fault() | 
    db_instance_not_found_fault() | 
    db_proxy_target_group_not_found_fault().

-type reset_db_cluster_parameter_group_errors() ::
    invalid_db_parameter_group_state_fault() | 
    db_parameter_group_not_found_fault().

-type reset_db_parameter_group_errors() ::
    invalid_db_parameter_group_state_fault() | 
    db_parameter_group_not_found_fault().

-type restore_db_cluster_from_s3_errors() ::
    insufficient_storage_cluster_capacity_fault() | 
    db_cluster_not_found_fault() | 
    db_cluster_already_exists_fault() | 
    invalid_s3_bucket_fault() | 
    invalid_db_cluster_state_fault() | 
    kms_key_not_accessible_fault() | 
    db_cluster_parameter_group_not_found_fault() | 
    storage_quota_exceeded_fault() | 
    db_subnet_group_not_found_fault() | 
    invalid_vpc_network_state_fault() | 
    domain_not_found_fault() | 
    storage_type_not_supported_fault() | 
    invalid_subnet() | 
    invalid_db_subnet_group_state_fault() | 
    db_cluster_quota_exceeded_fault().

-type restore_db_cluster_from_snapshot_errors() ::
    insufficient_storage_cluster_capacity_fault() | 
    invalid_db_instance_state_fault() | 
    db_cluster_snapshot_not_found_fault() | 
    option_group_not_found_fault() | 
    insufficient_db_cluster_capacity_fault() | 
    db_cluster_already_exists_fault() | 
    kms_key_not_accessible_fault() | 
    db_cluster_parameter_group_not_found_fault() | 
    db_snapshot_not_found_fault() | 
    invalid_db_snapshot_state_fault() | 
    storage_quota_exceeded_fault() | 
    db_subnet_group_not_found_fault() | 
    invalid_db_cluster_snapshot_state_fault() | 
    db_subnet_group_does_not_cover_enough_a_zs() | 
    invalid_vpc_network_state_fault() | 
    domain_not_found_fault() | 
    invalid_subnet() | 
    invalid_restore_fault() | 
    insufficient_db_instance_capacity_fault() | 
    db_cluster_quota_exceeded_fault().

-type restore_db_cluster_to_point_in_time_errors() ::
    insufficient_storage_cluster_capacity_fault() | 
    db_cluster_snapshot_not_found_fault() | 
    option_group_not_found_fault() | 
    insufficient_db_cluster_capacity_fault() | 
    db_cluster_not_found_fault() | 
    db_cluster_already_exists_fault() | 
    invalid_db_cluster_state_fault() | 
    kms_key_not_accessible_fault() | 
    db_cluster_parameter_group_not_found_fault() | 
    invalid_db_snapshot_state_fault() | 
    storage_quota_exceeded_fault() | 
    db_subnet_group_not_found_fault() | 
    invalid_db_cluster_snapshot_state_fault() | 
    invalid_vpc_network_state_fault() | 
    domain_not_found_fault() | 
    db_cluster_automated_backup_not_found_fault() | 
    invalid_subnet() | 
    invalid_restore_fault() | 
    insufficient_db_instance_capacity_fault() | 
    db_cluster_quota_exceeded_fault().

-type restore_db_instance_from_db_snapshot_errors() ::
    db_cluster_snapshot_not_found_fault() | 
    provisioned_iops_not_available_in_a_z_fault() | 
    option_group_not_found_fault() | 
    kms_key_not_accessible_fault() | 
    db_snapshot_not_found_fault() | 
    invalid_db_snapshot_state_fault() | 
    storage_quota_exceeded_fault() | 
    instance_quota_exceeded_fault() | 
    db_subnet_group_not_found_fault() | 
    certificate_not_found_fault() | 
    authorization_not_found_fault() | 
    backup_policy_not_found_fault() | 
    network_type_not_supported() | 
    db_subnet_group_does_not_cover_enough_a_zs() | 
    tenant_database_quota_exceeded_fault() | 
    db_security_group_not_found_fault() | 
    invalid_vpc_network_state_fault() | 
    domain_not_found_fault() | 
    storage_type_not_supported_fault() | 
    invalid_subnet() | 
    invalid_restore_fault() | 
    insufficient_db_instance_capacity_fault() | 
    db_instance_already_exists_fault() | 
    db_parameter_group_not_found_fault().

-type restore_db_instance_from_s3_errors() ::
    provisioned_iops_not_available_in_a_z_fault() | 
    option_group_not_found_fault() | 
    invalid_s3_bucket_fault() | 
    kms_key_not_accessible_fault() | 
    storage_quota_exceeded_fault() | 
    instance_quota_exceeded_fault() | 
    db_subnet_group_not_found_fault() | 
    certificate_not_found_fault() | 
    authorization_not_found_fault() | 
    backup_policy_not_found_fault() | 
    network_type_not_supported() | 
    db_subnet_group_does_not_cover_enough_a_zs() | 
    db_security_group_not_found_fault() | 
    invalid_vpc_network_state_fault() | 
    storage_type_not_supported_fault() | 
    invalid_subnet() | 
    insufficient_db_instance_capacity_fault() | 
    db_instance_already_exists_fault() | 
    db_parameter_group_not_found_fault().

-type restore_db_instance_to_point_in_time_errors() ::
    invalid_db_instance_state_fault() | 
    provisioned_iops_not_available_in_a_z_fault() | 
    option_group_not_found_fault() | 
    kms_key_not_accessible_fault() | 
    storage_quota_exceeded_fault() | 
    instance_quota_exceeded_fault() | 
    point_in_time_restore_not_enabled_fault() | 
    db_subnet_group_not_found_fault() | 
    certificate_not_found_fault() | 
    db_instance_not_found_fault() | 
    authorization_not_found_fault() | 
    db_instance_automated_backup_not_found_fault() | 
    backup_policy_not_found_fault() | 
    network_type_not_supported() | 
    db_subnet_group_does_not_cover_enough_a_zs() | 
    tenant_database_quota_exceeded_fault() | 
    db_security_group_not_found_fault() | 
    invalid_vpc_network_state_fault() | 
    domain_not_found_fault() | 
    storage_type_not_supported_fault() | 
    invalid_subnet() | 
    invalid_restore_fault() | 
    insufficient_db_instance_capacity_fault() | 
    db_instance_already_exists_fault() | 
    db_parameter_group_not_found_fault().

-type revoke_db_security_group_ingress_errors() ::
    invalid_db_security_group_state_fault() | 
    authorization_not_found_fault() | 
    db_security_group_not_found_fault().

-type start_activity_stream_errors() ::
    invalid_db_instance_state_fault() | 
    db_cluster_not_found_fault() | 
    invalid_db_cluster_state_fault() | 
    kms_key_not_accessible_fault() | 
    db_instance_not_found_fault() | 
    resource_not_found_fault().

-type start_db_cluster_errors() ::
    invalid_db_instance_state_fault() | 
    db_cluster_not_found_fault() | 
    invalid_db_cluster_state_fault().

-type start_db_instance_errors() ::
    invalid_db_instance_state_fault() | 
    db_cluster_not_found_fault() | 
    invalid_db_cluster_state_fault() | 
    kms_key_not_accessible_fault() | 
    db_subnet_group_not_found_fault() | 
    db_instance_not_found_fault() | 
    authorization_not_found_fault() | 
    db_subnet_group_does_not_cover_enough_a_zs() | 
    invalid_vpc_network_state_fault() | 
    invalid_subnet() | 
    insufficient_db_instance_capacity_fault().

-type start_db_instance_automated_backups_replication_errors() ::
    invalid_db_instance_state_fault() | 
    kms_key_not_accessible_fault() | 
    db_instance_not_found_fault() | 
    storage_type_not_supported_fault() | 
    db_instance_automated_backup_quota_exceeded_fault().

-type start_export_task_errors() ::
    db_cluster_snapshot_not_found_fault() | 
    db_cluster_not_found_fault() | 
    invalid_s3_bucket_fault() | 
    kms_key_not_accessible_fault() | 
    db_snapshot_not_found_fault() | 
    invalid_export_only_fault() | 
    iam_role_missing_permissions_fault() | 
    export_task_already_exists_fault() | 
    invalid_export_source_state_fault() | 
    iam_role_not_found_fault().

-type stop_activity_stream_errors() ::
    invalid_db_instance_state_fault() | 
    db_cluster_not_found_fault() | 
    invalid_db_cluster_state_fault() | 
    db_instance_not_found_fault() | 
    resource_not_found_fault().

-type stop_db_cluster_errors() ::
    invalid_db_instance_state_fault() | 
    db_cluster_not_found_fault() | 
    invalid_db_cluster_state_fault().

-type stop_db_instance_errors() ::
    invalid_db_instance_state_fault() | 
    invalid_db_cluster_state_fault() | 
    db_instance_not_found_fault() | 
    db_snapshot_already_exists_fault() | 
    snapshot_quota_exceeded_fault().

-type stop_db_instance_automated_backups_replication_errors() ::
    invalid_db_instance_state_fault() | 
    db_instance_not_found_fault().

-type switchover_blue_green_deployment_errors() ::
    invalid_blue_green_deployment_state_fault() | 
    blue_green_deployment_not_found_fault().

-type switchover_global_cluster_errors() ::
    global_cluster_not_found_fault() | 
    db_cluster_not_found_fault() | 
    invalid_db_cluster_state_fault() | 
    invalid_global_cluster_state_fault().

-type switchover_read_replica_errors() ::
    invalid_db_instance_state_fault() | 
    db_instance_not_found_fault().

%%====================================================================
%% API
%%====================================================================

%% @doc Associates an Identity and Access Management (IAM) role with a DB
%% cluster.
-spec add_role_to_db_cluster(aws_client:aws_client(), add_role_to_db_cluster_message()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, add_role_to_db_cluster_errors(), tuple()}.
add_role_to_db_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_role_to_db_cluster(Client, Input, []).

-spec add_role_to_db_cluster(aws_client:aws_client(), add_role_to_db_cluster_message(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, add_role_to_db_cluster_errors(), tuple()}.
add_role_to_db_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddRoleToDBCluster">>, Input, Options).

%% @doc Associates an Amazon Web Services Identity and Access Management
%% (IAM) role with a DB instance.
%%
%% To add a role to a DB instance, the status of the DB instance must be
%% `available'.
%%
%% This command doesn't apply to RDS Custom.
-spec add_role_to_db_instance(aws_client:aws_client(), add_role_to_db_instance_message()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, add_role_to_db_instance_errors(), tuple()}.
add_role_to_db_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_role_to_db_instance(Client, Input, []).

-spec add_role_to_db_instance(aws_client:aws_client(), add_role_to_db_instance_message(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, add_role_to_db_instance_errors(), tuple()}.
add_role_to_db_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddRoleToDBInstance">>, Input, Options).

%% @doc Adds a source identifier to an existing RDS event notification
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

%% @doc Adds metadata tags to an Amazon RDS resource.
%%
%% These tags can also be used with cost allocation reporting to track cost
%% associated with Amazon RDS resources, or used in a Condition statement in
%% an IAM policy for Amazon RDS.
%%
%% For an overview on tagging your relational database resources,
%% see Tagging Amazon RDS Resources:
%% https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html
%% or Tagging Amazon Aurora and Amazon RDS Resources:
%% https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_Tagging.html.
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

%% @doc Applies a pending maintenance action to a resource (for example, to a
%% DB instance).
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

%% @doc Enables ingress to a DBSecurityGroup using one of two forms of
%% authorization.
%%
%% First, EC2 or VPC security
%% groups can be added to the DBSecurityGroup if the application using the
%% database is running on EC2 or VPC
%% instances. Second, IP ranges are available if the application accessing
%% your database is running on the internet.
%% Required parameters for this API are one of CIDR range, EC2SecurityGroupId
%% for VPC, or (EC2SecurityGroupOwnerId
%% and either EC2SecurityGroupName or EC2SecurityGroupId for non-VPC).
%%
%% You can't authorize ingress from an EC2 security group in one Amazon
%% Web Services Region to an Amazon RDS DB instance in
%% another. You can't authorize ingress from a VPC security group in one
%% VPC to an Amazon RDS DB instance in another.
%%
%% For an overview of CIDR ranges, go to the
%% Wikipedia Tutorial:
%% http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing.
%%
%% EC2-Classic was retired on August 15, 2022. If you haven't migrated
%% from EC2-Classic to a VPC, we recommend that
%% you migrate as soon as possible. For more information, see Migrate from
%% EC2-Classic to a VPC:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-migrate.html in
%% the
%% Amazon EC2 User Guide, the blog EC2-Classic Networking is Retiring –
%% Here’s How to Prepare:
%% http://aws.amazon.com/blogs/aws/ec2-classic-is-retiring-heres-how-to-prepare/,
%% and Moving a DB instance not in a VPC
%% into a VPC:
%% https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_VPC.Non-VPC2VPC.html
%% in the Amazon RDS User Guide.
-spec authorize_db_security_group_ingress(aws_client:aws_client(), authorize_db_security_group_ingress_message()) ->
    {ok, authorize_db_security_group_ingress_result(), tuple()} |
    {error, any()} |
    {error, authorize_db_security_group_ingress_errors(), tuple()}.
authorize_db_security_group_ingress(Client, Input)
  when is_map(Client), is_map(Input) ->
    authorize_db_security_group_ingress(Client, Input, []).

-spec authorize_db_security_group_ingress(aws_client:aws_client(), authorize_db_security_group_ingress_message(), proplists:proplist()) ->
    {ok, authorize_db_security_group_ingress_result(), tuple()} |
    {error, any()} |
    {error, authorize_db_security_group_ingress_errors(), tuple()}.
authorize_db_security_group_ingress(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AuthorizeDBSecurityGroupIngress">>, Input, Options).

%% @doc Backtracks a DB cluster to a specific time, without creating a new DB
%% cluster.
%%
%% For more information on backtracking, see
%%
%% Backtracking an Aurora DB Cluster:
%% https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/AuroraMySQL.Managing.Backtrack.html
%% in the
%% Amazon Aurora User Guide.
%%
%% This action applies only to Aurora MySQL DB clusters.
-spec backtrack_db_cluster(aws_client:aws_client(), backtrack_db_cluster_message()) ->
    {ok, db_cluster_backtrack(), tuple()} |
    {error, any()} |
    {error, backtrack_db_cluster_errors(), tuple()}.
backtrack_db_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    backtrack_db_cluster(Client, Input, []).

-spec backtrack_db_cluster(aws_client:aws_client(), backtrack_db_cluster_message(), proplists:proplist()) ->
    {ok, db_cluster_backtrack(), tuple()} |
    {error, any()} |
    {error, backtrack_db_cluster_errors(), tuple()}.
backtrack_db_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BacktrackDBCluster">>, Input, Options).

%% @doc Cancels an export task in progress that is exporting a snapshot or
%% cluster to Amazon S3.
%%
%% Any data that has already been written to the S3 bucket isn't removed.
-spec cancel_export_task(aws_client:aws_client(), cancel_export_task_message()) ->
    {ok, export_task(), tuple()} |
    {error, any()} |
    {error, cancel_export_task_errors(), tuple()}.
cancel_export_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    cancel_export_task(Client, Input, []).

-spec cancel_export_task(aws_client:aws_client(), cancel_export_task_message(), proplists:proplist()) ->
    {ok, export_task(), tuple()} |
    {error, any()} |
    {error, cancel_export_task_errors(), tuple()}.
cancel_export_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CancelExportTask">>, Input, Options).

%% @doc Copies the specified DB cluster parameter group.
%%
%% You can't copy a default DB cluster parameter group. Instead, create a
%% new custom DB cluster parameter group, which copies
%% the default parameters and values for the specified DB cluster parameter
%% group family.
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

%% @doc Copies a snapshot of a DB cluster.
%%
%% To copy a DB cluster snapshot from a shared manual DB cluster snapshot,
%% `SourceDBClusterSnapshotIdentifier'
%% must be the Amazon Resource Name (ARN) of the shared DB cluster snapshot.
%%
%% You can copy an encrypted DB cluster snapshot from another Amazon Web
%% Services Region. In that case,
%% the Amazon Web Services Region where you call the
%% `CopyDBClusterSnapshot' operation is the
%% destination Amazon Web Services Region for the encrypted DB cluster
%% snapshot to be copied to. To copy
%% an encrypted DB cluster snapshot from another Amazon Web Services Region,
%% you must provide the
%% following values:
%%
%% `KmsKeyId' - The Amazon Web Services Key Management System (Amazon Web
%% Services KMS) key identifier for the key to use to
%% encrypt the copy of the DB cluster snapshot in the destination Amazon Web
%% Services Region.
%%
%% `TargetDBClusterSnapshotIdentifier' - The identifier for the new copy
%% of the DB cluster snapshot in the destination Amazon Web Services Region.
%%
%% `SourceDBClusterSnapshotIdentifier' - The DB cluster snapshot
%% identifier for the encrypted DB cluster snapshot to be copied. This
%% identifier
%% must be in the ARN format for the source Amazon Web Services Region and is
%% the same value as
%% the `SourceDBClusterSnapshotIdentifier' in the presigned URL.
%%
%% To cancel the copy operation once it is in progress, delete the target DB
%% cluster snapshot identified
%% by `TargetDBClusterSnapshotIdentifier' while that DB cluster snapshot
%% is in &quot;copying&quot; status.
%%
%% For more information on copying encrypted Amazon Aurora DB cluster
%% snapshots from one Amazon Web Services Region to another, see
%%
%% Copying a Snapshot:
%% https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_CopySnapshot.html
%% in the Amazon Aurora User Guide.
%%
%% For more information on Amazon Aurora DB clusters, see
%%
%% What is Amazon Aurora?:
%% https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html
%% in the Amazon Aurora User Guide.
%%
%% For more information on Multi-AZ DB clusters, see Multi-AZ DB
%% cluster deployments:
%% https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/multi-az-db-clusters-concepts.html
%% in the Amazon RDS User
%% Guide.
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

%% @doc Copies the specified DB parameter group.
%%
%% You can't copy a default DB parameter group. Instead, create a new
%% custom DB parameter group, which copies the default
%% parameters and values for the specified DB parameter group family.
-spec copy_db_parameter_group(aws_client:aws_client(), copy_db_parameter_group_message()) ->
    {ok, copy_db_parameter_group_result(), tuple()} |
    {error, any()} |
    {error, copy_db_parameter_group_errors(), tuple()}.
copy_db_parameter_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    copy_db_parameter_group(Client, Input, []).

-spec copy_db_parameter_group(aws_client:aws_client(), copy_db_parameter_group_message(), proplists:proplist()) ->
    {ok, copy_db_parameter_group_result(), tuple()} |
    {error, any()} |
    {error, copy_db_parameter_group_errors(), tuple()}.
copy_db_parameter_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CopyDBParameterGroup">>, Input, Options).

%% @doc Copies the specified DB snapshot.
%%
%% The source DB snapshot must be in the `available' state.
%%
%% You can copy a snapshot from one Amazon Web Services Region to another. In
%% that case, the
%% Amazon Web Services Region where you call the `CopyDBSnapshot'
%% operation is the destination
%% Amazon Web Services Region for the DB snapshot copy.
%%
%% This command doesn't apply to RDS Custom.
%%
%% For more information about copying snapshots, see
%% Copying a DB Snapshot:
%% https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_CopySnapshot.html#USER_CopyDBSnapshot
%% in the Amazon RDS User Guide.
-spec copy_db_snapshot(aws_client:aws_client(), copy_db_snapshot_message()) ->
    {ok, copy_db_snapshot_result(), tuple()} |
    {error, any()} |
    {error, copy_db_snapshot_errors(), tuple()}.
copy_db_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    copy_db_snapshot(Client, Input, []).

-spec copy_db_snapshot(aws_client:aws_client(), copy_db_snapshot_message(), proplists:proplist()) ->
    {ok, copy_db_snapshot_result(), tuple()} |
    {error, any()} |
    {error, copy_db_snapshot_errors(), tuple()}.
copy_db_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CopyDBSnapshot">>, Input, Options).

%% @doc Copies the specified option group.
-spec copy_option_group(aws_client:aws_client(), copy_option_group_message()) ->
    {ok, copy_option_group_result(), tuple()} |
    {error, any()} |
    {error, copy_option_group_errors(), tuple()}.
copy_option_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    copy_option_group(Client, Input, []).

-spec copy_option_group(aws_client:aws_client(), copy_option_group_message(), proplists:proplist()) ->
    {ok, copy_option_group_result(), tuple()} |
    {error, any()} |
    {error, copy_option_group_errors(), tuple()}.
copy_option_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CopyOptionGroup">>, Input, Options).

%% @doc Creates a blue/green deployment.
%%
%% A blue/green deployment creates a staging environment that copies the
%% production environment.
%% In a blue/green deployment, the blue environment is the current production
%% environment.
%% The green environment is the staging environment. The staging environment
%% stays in sync
%% with the current production environment using logical replication.
%%
%% You can make changes to the databases in the green environment without
%% affecting
%% production workloads. For example, you can upgrade the major or minor DB
%% engine version, change
%% database parameters, or make schema changes in the staging environment.
%% You can thoroughly test
%% changes in the green environment. When ready, you can switch over the
%% environments to promote the
%% green environment to be the new production environment. The switchover
%% typically takes under a minute.
%%
%% For more information, see Using Amazon RDS Blue/Green Deployments
%% for database updates:
%% https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/blue-green-deployments.html
%% in the Amazon RDS User Guide and
%%
%% Using Amazon RDS Blue/Green Deployments for database updates:
%% https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/blue-green-deployments.html
%% in the Amazon Aurora
%% User Guide.
-spec create_blue_green_deployment(aws_client:aws_client(), create_blue_green_deployment_request()) ->
    {ok, create_blue_green_deployment_response(), tuple()} |
    {error, any()} |
    {error, create_blue_green_deployment_errors(), tuple()}.
create_blue_green_deployment(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_blue_green_deployment(Client, Input, []).

-spec create_blue_green_deployment(aws_client:aws_client(), create_blue_green_deployment_request(), proplists:proplist()) ->
    {ok, create_blue_green_deployment_response(), tuple()} |
    {error, any()} |
    {error, create_blue_green_deployment_errors(), tuple()}.
create_blue_green_deployment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateBlueGreenDeployment">>, Input, Options).

%% @doc Creates a custom DB engine version (CEV).
-spec create_custom_db_engine_version(aws_client:aws_client(), create_custom_db_engine_version_message()) ->
    {ok, db_engine_version(), tuple()} |
    {error, any()} |
    {error, create_custom_db_engine_version_errors(), tuple()}.
create_custom_db_engine_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_custom_db_engine_version(Client, Input, []).

-spec create_custom_db_engine_version(aws_client:aws_client(), create_custom_db_engine_version_message(), proplists:proplist()) ->
    {ok, db_engine_version(), tuple()} |
    {error, any()} |
    {error, create_custom_db_engine_version_errors(), tuple()}.
create_custom_db_engine_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateCustomDBEngineVersion">>, Input, Options).

%% @doc Creates a new Amazon Aurora DB cluster or Multi-AZ DB cluster.
%%
%% If you create an Aurora DB cluster, the request creates an empty cluster.
%% You must
%% explicitly create the writer instance for your DB cluster using the
%% CreateDBInstance:
%% https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_CreateDBInstance.html
%% operation. If you create a Multi-AZ DB cluster, the
%% request creates a writer and two reader DB instances for you, each in a
%% different
%% Availability Zone.
%%
%% You can use the `ReplicationSourceIdentifier' parameter to create an
%% Amazon
%% Aurora DB cluster as a read replica of another DB cluster or Amazon RDS
%% for MySQL or
%% PostgreSQL DB instance. For more information about Amazon Aurora, see What
%% is Amazon Aurora?:
%% https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html
%% in the Amazon Aurora User
%% Guide.
%%
%% You can also use the `ReplicationSourceIdentifier' parameter to create
%% a
%% Multi-AZ DB cluster read replica with an RDS for MySQL or PostgreSQL DB
%% instance as the
%% source. For more information about Multi-AZ DB clusters, see Multi-AZ DB
%% cluster deployments:
%% https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/multi-az-db-clusters-concepts.html
%% in the Amazon RDS User
%% Guide.
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

%% @doc Creates a new custom endpoint and associates it with an Amazon Aurora
%% DB cluster.
%%
%% This action applies only to Aurora DB clusters.
-spec create_db_cluster_endpoint(aws_client:aws_client(), create_db_cluster_endpoint_message()) ->
    {ok, db_cluster_endpoint(), tuple()} |
    {error, any()} |
    {error, create_db_cluster_endpoint_errors(), tuple()}.
create_db_cluster_endpoint(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_db_cluster_endpoint(Client, Input, []).

-spec create_db_cluster_endpoint(aws_client:aws_client(), create_db_cluster_endpoint_message(), proplists:proplist()) ->
    {ok, db_cluster_endpoint(), tuple()} |
    {error, any()} |
    {error, create_db_cluster_endpoint_errors(), tuple()}.
create_db_cluster_endpoint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDBClusterEndpoint">>, Input, Options).

%% @doc Creates a new DB cluster parameter group.
%%
%% Parameters in a DB cluster parameter group apply to all of the instances
%% in a DB cluster.
%%
%% A DB cluster parameter group is initially created with the default
%% parameters for the
%% database engine used by instances in the DB cluster. To provide custom
%% values for any of the
%% parameters, you must modify the group after creating it using
%% `ModifyDBClusterParameterGroup'. Once you've created a DB cluster
%% parameter group, you need to
%% associate it with your DB cluster using `ModifyDBCluster'.
%%
%% When you associate a new DB cluster parameter group with a running Aurora
%% DB cluster, reboot the DB
%% instances in the DB cluster without failover for the new DB cluster
%% parameter group and
%% associated settings to take effect.
%%
%% When you associate a new DB cluster parameter group with a running
%% Multi-AZ DB cluster, reboot the DB
%% cluster without failover for the new DB cluster parameter group and
%% associated settings to take effect.
%%
%% After you create a DB cluster parameter group, you should wait at least 5
%% minutes
%% before creating your first DB cluster that uses that DB cluster parameter
%% group as
%% the default parameter group. This allows Amazon RDS to fully complete the
%% create
%% action before the DB cluster parameter group is used as the default for a
%% new DB
%% cluster. This is especially important for parameters that are critical
%% when creating
%% the default database for a DB cluster, such as the character set for the
%% default
%% database defined by the `character_set_database' parameter. You can
%% use
%% the Parameter Groups option of the Amazon RDS console:
%% https://console.aws.amazon.com/rds/ or the
%% `DescribeDBClusterParameters' operation to verify that your DB
%% cluster parameter group has been created or modified.
%%
%% For more information on Amazon Aurora, see
%%
%% What is Amazon Aurora?:
%% https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html
%% in the Amazon Aurora User Guide.
%%
%% For more information on Multi-AZ DB clusters, see Multi-AZ DB
%% cluster deployments:
%% https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/multi-az-db-clusters-concepts.html
%% in the Amazon RDS User
%% Guide.
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

%% @doc Creates a snapshot of a DB cluster.
%%
%% For more information on Amazon Aurora, see What is Amazon
%% Aurora?:
%% https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html
%% in the Amazon Aurora User Guide.
%%
%% For more information on Multi-AZ DB clusters, see Multi-AZ DB
%% cluster deployments:
%% https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/multi-az-db-clusters-concepts.html
%% in the Amazon RDS User
%% Guide.
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

%% @doc Creates a new DB instance.
%%
%% The new DB instance can be an RDS DB instance, or it can be a DB instance
%% in an Aurora DB cluster.
%% For an Aurora DB cluster, you can call this operation multiple times to
%% add more than one DB instance
%% to the cluster.
%%
%% For more information about creating an RDS DB instance, see
%% Creating an Amazon RDS DB instance:
%% https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_CreateDBInstance.html
%% in the Amazon RDS User Guide.
%%
%% For more information about creating a DB instance in an Aurora DB cluster,
%% see
%%
%% Creating an Amazon Aurora DB cluster:
%% https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.CreateInstance.html
%% in the Amazon Aurora User Guide.
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

%% @doc Creates a new DB instance that acts as a read replica for an existing
%% source DB
%% instance or Multi-AZ DB cluster.
%%
%% You can create a read replica for a DB instance running
%% Db2, MariaDB, MySQL, Oracle, PostgreSQL, or SQL Server. You can create a
%% read replica for a
%% Multi-AZ DB cluster running MySQL or PostgreSQL. For more information, see
%% Working
%% with read replicas:
%% https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_ReadRepl.html
%% and Migrating from a Multi-AZ DB cluster to a DB instance using a read
%% replica:
%% https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/multi-az-db-clusters-concepts.html#multi-az-db-clusters-migrating-to-instance-with-read-replica
%% in the Amazon RDS User Guide.
%%
%% Amazon Aurora doesn't support this operation. To create a DB instance
%% for an Aurora DB cluster, use the `CreateDBInstance'
%% operation.
%%
%% All read replica DB instances are created with backups disabled. All other
%% attributes
%% (including DB security groups and DB parameter groups) are inherited from
%% the source DB
%% instance or cluster, except as specified.
%%
%% Your source DB instance or cluster must have backup retention enabled.
-spec create_db_instance_read_replica(aws_client:aws_client(), create_db_instance_read_replica_message()) ->
    {ok, create_db_instance_read_replica_result(), tuple()} |
    {error, any()} |
    {error, create_db_instance_read_replica_errors(), tuple()}.
create_db_instance_read_replica(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_db_instance_read_replica(Client, Input, []).

-spec create_db_instance_read_replica(aws_client:aws_client(), create_db_instance_read_replica_message(), proplists:proplist()) ->
    {ok, create_db_instance_read_replica_result(), tuple()} |
    {error, any()} |
    {error, create_db_instance_read_replica_errors(), tuple()}.
create_db_instance_read_replica(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDBInstanceReadReplica">>, Input, Options).

%% @doc Creates a new DB parameter group.
%%
%% A DB parameter group is initially created with the default parameters for
%% the
%% database engine used by the DB instance. To provide custom values for any
%% of the
%% parameters, you must modify the group after creating it using
%% `ModifyDBParameterGroup'. Once you've created a DB parameter
%% group, you need to
%% associate it with your DB instance using `ModifyDBInstance'. When you
%% associate
%% a new DB parameter group with a running DB instance, you need to reboot
%% the DB
%% instance without failover for the new DB parameter group and associated
%% settings to take effect.
%%
%% This command doesn't apply to RDS Custom.
%%
%% After you create a DB parameter group, you should wait at least 5 minutes
%% before creating your first DB instance that uses that DB parameter group
%% as the default parameter
%% group. This allows Amazon RDS to fully complete the create action before
%% the parameter
%% group is used as the default for a new DB instance. This is especially
%% important for parameters
%% that are critical when creating the default database for a DB instance,
%% such as the character set
%% for the default database defined by the `character_set_database'
%% parameter. You can use the
%% Parameter Groups option of the Amazon RDS console:
%% https://console.aws.amazon.com/rds/ or the
%% DescribeDBParameters command to verify
%% that your DB parameter group has been created or modified.
-spec create_db_parameter_group(aws_client:aws_client(), create_db_parameter_group_message()) ->
    {ok, create_db_parameter_group_result(), tuple()} |
    {error, any()} |
    {error, create_db_parameter_group_errors(), tuple()}.
create_db_parameter_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_db_parameter_group(Client, Input, []).

-spec create_db_parameter_group(aws_client:aws_client(), create_db_parameter_group_message(), proplists:proplist()) ->
    {ok, create_db_parameter_group_result(), tuple()} |
    {error, any()} |
    {error, create_db_parameter_group_errors(), tuple()}.
create_db_parameter_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDBParameterGroup">>, Input, Options).

%% @doc Creates a new DB proxy.
-spec create_db_proxy(aws_client:aws_client(), create_db_proxy_request()) ->
    {ok, create_db_proxy_response(), tuple()} |
    {error, any()} |
    {error, create_db_proxy_errors(), tuple()}.
create_db_proxy(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_db_proxy(Client, Input, []).

-spec create_db_proxy(aws_client:aws_client(), create_db_proxy_request(), proplists:proplist()) ->
    {ok, create_db_proxy_response(), tuple()} |
    {error, any()} |
    {error, create_db_proxy_errors(), tuple()}.
create_db_proxy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDBProxy">>, Input, Options).

%% @doc Creates a `DBProxyEndpoint'.
%%
%% Only applies to proxies that are associated with Aurora DB clusters.
%% You can use DB proxy endpoints to specify read/write or read-only access
%% to the DB cluster. You can also use
%% DB proxy endpoints to access a DB proxy through a different VPC than the
%% proxy's default VPC.
-spec create_db_proxy_endpoint(aws_client:aws_client(), create_db_proxy_endpoint_request()) ->
    {ok, create_db_proxy_endpoint_response(), tuple()} |
    {error, any()} |
    {error, create_db_proxy_endpoint_errors(), tuple()}.
create_db_proxy_endpoint(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_db_proxy_endpoint(Client, Input, []).

-spec create_db_proxy_endpoint(aws_client:aws_client(), create_db_proxy_endpoint_request(), proplists:proplist()) ->
    {ok, create_db_proxy_endpoint_response(), tuple()} |
    {error, any()} |
    {error, create_db_proxy_endpoint_errors(), tuple()}.
create_db_proxy_endpoint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDBProxyEndpoint">>, Input, Options).

%% @doc Creates a new DB security group.
%%
%% DB security groups control access to a DB instance.
%%
%% A DB security group controls access to EC2-Classic DB instances that are
%% not in a VPC.
%%
%% EC2-Classic was retired on August 15, 2022. If you haven't migrated
%% from EC2-Classic to a VPC, we recommend that
%% you migrate as soon as possible. For more information, see Migrate from
%% EC2-Classic to a VPC:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-migrate.html in
%% the
%% Amazon EC2 User Guide, the blog EC2-Classic Networking is Retiring –
%% Here’s How to Prepare:
%% http://aws.amazon.com/blogs/aws/ec2-classic-is-retiring-heres-how-to-prepare/,
%% and Moving a DB instance not in a VPC
%% into a VPC:
%% https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_VPC.Non-VPC2VPC.html
%% in the Amazon RDS User Guide.
-spec create_db_security_group(aws_client:aws_client(), create_db_security_group_message()) ->
    {ok, create_db_security_group_result(), tuple()} |
    {error, any()} |
    {error, create_db_security_group_errors(), tuple()}.
create_db_security_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_db_security_group(Client, Input, []).

-spec create_db_security_group(aws_client:aws_client(), create_db_security_group_message(), proplists:proplist()) ->
    {ok, create_db_security_group_result(), tuple()} |
    {error, any()} |
    {error, create_db_security_group_errors(), tuple()}.
create_db_security_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDBSecurityGroup">>, Input, Options).

%% @doc Creates a new DB shard group for Aurora Limitless Database.
%%
%% You must enable Aurora Limitless Database to create a DB shard group.
%%
%% Valid for: Aurora DB clusters only
-spec create_db_shard_group(aws_client:aws_client(), create_db_shard_group_message()) ->
    {ok, db_shard_group(), tuple()} |
    {error, any()} |
    {error, create_db_shard_group_errors(), tuple()}.
create_db_shard_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_db_shard_group(Client, Input, []).

-spec create_db_shard_group(aws_client:aws_client(), create_db_shard_group_message(), proplists:proplist()) ->
    {ok, db_shard_group(), tuple()} |
    {error, any()} |
    {error, create_db_shard_group_errors(), tuple()}.
create_db_shard_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDBShardGroup">>, Input, Options).

%% @doc Creates a snapshot of a DB instance.
%%
%% The source DB instance must be in the `available' or
%% `storage-optimization' state.
-spec create_db_snapshot(aws_client:aws_client(), create_db_snapshot_message()) ->
    {ok, create_db_snapshot_result(), tuple()} |
    {error, any()} |
    {error, create_db_snapshot_errors(), tuple()}.
create_db_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_db_snapshot(Client, Input, []).

-spec create_db_snapshot(aws_client:aws_client(), create_db_snapshot_message(), proplists:proplist()) ->
    {ok, create_db_snapshot_result(), tuple()} |
    {error, any()} |
    {error, create_db_snapshot_errors(), tuple()}.
create_db_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDBSnapshot">>, Input, Options).

%% @doc Creates a new DB subnet group.
%%
%% DB subnet groups must contain at least one subnet in at least two AZs in
%% the Amazon Web Services Region.
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

%% @doc Creates an RDS event notification subscription.
%%
%% This operation requires a topic Amazon
%% Resource Name (ARN) created by either the RDS console, the SNS console, or
%% the SNS API.
%% To obtain an ARN with SNS, you must create a topic in Amazon SNS and
%% subscribe to the
%% topic. The ARN is displayed in the SNS console.
%%
%% You can specify the type of source (`SourceType') that you want to be
%% notified of and provide a list of RDS sources (`SourceIds') that
%% triggers the
%% events. You can also provide a list of event categories
%% (`EventCategories')
%% for events that you want to be notified of. For example, you can specify
%% `SourceType' = `db-instance', `SourceIds' =
%% `mydbinstance1', `mydbinstance2' and
%% `EventCategories' = `Availability',
%% `Backup'.
%%
%% If you specify both the `SourceType' and `SourceIds', such as
%% `SourceType' = `db-instance'
%% and `SourceIds' = `myDBInstance1', you are notified of all the
%% `db-instance' events for
%% the specified source. If you specify a `SourceType' but do not specify
%% `SourceIds',
%% you receive notice of the events for that source type for all your RDS
%% sources. If you
%% don't specify either the SourceType or the `SourceIds', you are
%% notified of events
%% generated from all RDS sources belonging to your customer account.
%%
%% For more information about subscribing to an event for RDS DB engines, see
%%
%% Subscribing to Amazon RDS event notification:
%% https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Events.Subscribing.html
%% in the Amazon RDS User Guide.
%%
%% For more information about subscribing to an event for Aurora DB engines,
%% see
%%
%% Subscribing to Amazon RDS event notification:
%% https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_Events.Subscribing.html
%% in the Amazon Aurora User Guide.
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

%% @doc Creates an Aurora global database
%% spread across multiple Amazon Web Services Regions.
%%
%% The global database
%% contains a single primary cluster with read-write capability,
%% and a read-only secondary cluster that receives
%% data from the primary cluster through high-speed replication
%% performed by the Aurora storage subsystem.
%%
%% You can create a global database that is initially empty, and then
%% create the primary and secondary DB clusters in the global database.
%% Or you can specify an existing Aurora cluster during the create operation,
%% and this cluster becomes the primary cluster of the global database.
%%
%% This operation applies only to Aurora DB clusters.
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

%% @doc Creates a zero-ETL integration with Amazon Redshift.
-spec create_integration(aws_client:aws_client(), create_integration_message()) ->
    {ok, integration(), tuple()} |
    {error, any()} |
    {error, create_integration_errors(), tuple()}.
create_integration(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_integration(Client, Input, []).

-spec create_integration(aws_client:aws_client(), create_integration_message(), proplists:proplist()) ->
    {ok, integration(), tuple()} |
    {error, any()} |
    {error, create_integration_errors(), tuple()}.
create_integration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateIntegration">>, Input, Options).

%% @doc Creates a new option group.
%%
%% You can create up to 20 option groups.
%%
%% This command doesn't apply to RDS Custom.
-spec create_option_group(aws_client:aws_client(), create_option_group_message()) ->
    {ok, create_option_group_result(), tuple()} |
    {error, any()} |
    {error, create_option_group_errors(), tuple()}.
create_option_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_option_group(Client, Input, []).

-spec create_option_group(aws_client:aws_client(), create_option_group_message(), proplists:proplist()) ->
    {ok, create_option_group_result(), tuple()} |
    {error, any()} |
    {error, create_option_group_errors(), tuple()}.
create_option_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateOptionGroup">>, Input, Options).

%% @doc Creates a tenant database in a DB instance that uses the multi-tenant
%% configuration.
%%
%% Only RDS for Oracle container database (CDB) instances are supported.
-spec create_tenant_database(aws_client:aws_client(), create_tenant_database_message()) ->
    {ok, create_tenant_database_result(), tuple()} |
    {error, any()} |
    {error, create_tenant_database_errors(), tuple()}.
create_tenant_database(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_tenant_database(Client, Input, []).

-spec create_tenant_database(aws_client:aws_client(), create_tenant_database_message(), proplists:proplist()) ->
    {ok, create_tenant_database_result(), tuple()} |
    {error, any()} |
    {error, create_tenant_database_errors(), tuple()}.
create_tenant_database(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateTenantDatabase">>, Input, Options).

%% @doc Deletes a blue/green deployment.
%%
%% For more information, see Using Amazon RDS
%% Blue/Green Deployments for database updates:
%% https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/blue-green-deployments.html
%% in the Amazon RDS User
%% Guide and Using Amazon RDS
%% Blue/Green Deployments for database updates:
%% https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/blue-green-deployments.html
%% in the Amazon Aurora
%% User Guide.
-spec delete_blue_green_deployment(aws_client:aws_client(), delete_blue_green_deployment_request()) ->
    {ok, delete_blue_green_deployment_response(), tuple()} |
    {error, any()} |
    {error, delete_blue_green_deployment_errors(), tuple()}.
delete_blue_green_deployment(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_blue_green_deployment(Client, Input, []).

-spec delete_blue_green_deployment(aws_client:aws_client(), delete_blue_green_deployment_request(), proplists:proplist()) ->
    {ok, delete_blue_green_deployment_response(), tuple()} |
    {error, any()} |
    {error, delete_blue_green_deployment_errors(), tuple()}.
delete_blue_green_deployment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteBlueGreenDeployment">>, Input, Options).

%% @doc Deletes a custom engine version.
%%
%% To run this command, make sure you meet the following prerequisites:
%%
%% The CEV must not be the default for RDS Custom. If it is, change the
%% default
%% before running this command.
%%
%% The CEV must not be associated with an RDS Custom DB instance, RDS Custom
%% instance snapshot,
%% or automated backup of your RDS Custom instance.
%%
%% Typically, deletion takes a few minutes.
%%
%% The MediaImport service that imports files from Amazon S3 to create CEVs
%% isn't integrated with
%% Amazon Web Services CloudTrail. If you turn on data logging for Amazon RDS
%% in CloudTrail, calls to the
%% `DeleteCustomDbEngineVersion' event aren't logged. However, you
%% might see calls from the
%% API gateway that accesses your Amazon S3 bucket. These calls originate
%% from the MediaImport service for
%% the `DeleteCustomDbEngineVersion' event.
%%
%% For more information, see Deleting a
%% CEV:
%% https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/custom-cev.html#custom-cev.delete
%% in the Amazon RDS User Guide.
-spec delete_custom_db_engine_version(aws_client:aws_client(), delete_custom_db_engine_version_message()) ->
    {ok, db_engine_version(), tuple()} |
    {error, any()} |
    {error, delete_custom_db_engine_version_errors(), tuple()}.
delete_custom_db_engine_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_custom_db_engine_version(Client, Input, []).

-spec delete_custom_db_engine_version(aws_client:aws_client(), delete_custom_db_engine_version_message(), proplists:proplist()) ->
    {ok, db_engine_version(), tuple()} |
    {error, any()} |
    {error, delete_custom_db_engine_version_errors(), tuple()}.
delete_custom_db_engine_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteCustomDBEngineVersion">>, Input, Options).

%% @doc The DeleteDBCluster action deletes a previously provisioned DB
%% cluster.
%%
%% When you delete a DB cluster, all automated backups for that DB cluster
%% are deleted and can't be recovered.
%% Manual DB cluster snapshots of the specified DB cluster are not deleted.
%%
%% If you're deleting a Multi-AZ DB cluster with read replicas, all
%% cluster members are
%% terminated and read replicas are promoted to standalone instances.
%%
%% For more information on Amazon Aurora, see
%%
%% What is Amazon Aurora?:
%% https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html
%% in the Amazon Aurora User Guide.
%%
%% For more information on Multi-AZ DB clusters, see Multi-AZ DB
%% cluster deployments:
%% https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/multi-az-db-clusters-concepts.html
%% in the Amazon RDS User
%% Guide.
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

%% @doc Deletes automated backups using the `DbClusterResourceId' value
%% of the source DB cluster or the Amazon
%% Resource Name (ARN) of the automated backups.
-spec delete_db_cluster_automated_backup(aws_client:aws_client(), delete_db_cluster_automated_backup_message()) ->
    {ok, delete_db_cluster_automated_backup_result(), tuple()} |
    {error, any()} |
    {error, delete_db_cluster_automated_backup_errors(), tuple()}.
delete_db_cluster_automated_backup(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_db_cluster_automated_backup(Client, Input, []).

-spec delete_db_cluster_automated_backup(aws_client:aws_client(), delete_db_cluster_automated_backup_message(), proplists:proplist()) ->
    {ok, delete_db_cluster_automated_backup_result(), tuple()} |
    {error, any()} |
    {error, delete_db_cluster_automated_backup_errors(), tuple()}.
delete_db_cluster_automated_backup(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDBClusterAutomatedBackup">>, Input, Options).

%% @doc Deletes a custom endpoint and removes it from an Amazon Aurora DB
%% cluster.
%%
%% This action only applies to Aurora DB clusters.
-spec delete_db_cluster_endpoint(aws_client:aws_client(), delete_db_cluster_endpoint_message()) ->
    {ok, db_cluster_endpoint(), tuple()} |
    {error, any()} |
    {error, delete_db_cluster_endpoint_errors(), tuple()}.
delete_db_cluster_endpoint(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_db_cluster_endpoint(Client, Input, []).

-spec delete_db_cluster_endpoint(aws_client:aws_client(), delete_db_cluster_endpoint_message(), proplists:proplist()) ->
    {ok, db_cluster_endpoint(), tuple()} |
    {error, any()} |
    {error, delete_db_cluster_endpoint_errors(), tuple()}.
delete_db_cluster_endpoint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDBClusterEndpoint">>, Input, Options).

%% @doc Deletes a specified DB cluster parameter group.
%%
%% The DB cluster parameter group to be deleted can't be associated with
%% any DB clusters.
%%
%% For more information on Amazon Aurora, see
%%
%% What is Amazon Aurora?:
%% https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html
%% in the Amazon Aurora User Guide.
%%
%% For more information on Multi-AZ DB clusters, see Multi-AZ DB
%% cluster deployments:
%% https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/multi-az-db-clusters-concepts.html
%% in the Amazon RDS User
%% Guide.
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

%% @doc Deletes a DB cluster snapshot.
%%
%% If the snapshot is being copied, the copy operation is terminated.
%%
%% The DB cluster snapshot must be in the `available' state to be
%% deleted.
%%
%% For more information on Amazon Aurora, see
%%
%% What is Amazon Aurora?:
%% https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html
%% in the Amazon Aurora User Guide.
%%
%% For more information on Multi-AZ DB clusters, see Multi-AZ DB
%% cluster deployments:
%% https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/multi-az-db-clusters-concepts.html
%% in the Amazon RDS User
%% Guide.
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

%% @doc Deletes a previously provisioned DB instance.
%%
%% When you delete a DB instance, all automated backups for that instance are
%% deleted and can't be recovered.
%% However, manual DB snapshots of the DB instance aren't deleted.
%%
%% If you request a final DB snapshot, the status of the Amazon RDS DB
%% instance is `deleting' until the DB snapshot is created.
%% This operation can't be canceled or reverted after it begins. To
%% monitor the status of this operation, use `DescribeDBInstance'.
%%
%% When a DB instance is in a failure state and has a status of `failed',
%% `incompatible-restore',
%% or `incompatible-network', you can only delete it when you skip
%% creation of the final snapshot with the `SkipFinalSnapshot' parameter.
%%
%% If the specified DB instance is part of an Amazon Aurora DB cluster, you
%% can't delete the DB instance if both of the following
%% conditions are true:
%%
%% The DB cluster is a read replica of another Amazon Aurora DB cluster.
%%
%% The DB instance is the only instance in the DB cluster.
%%
%% To delete a DB instance in this case, first use the
%% `PromoteReadReplicaDBCluster' operation to promote the DB cluster so
%% that it's no longer a read replica.
%% After the promotion completes, use the `DeleteDBInstance' operation to
%% delete the final instance in the DB cluster.
%%
%% For RDS Custom DB instances, deleting the DB instance permanently deletes
%% the EC2 instance and the associated EBS volumes. Make sure that you
%% don't terminate or delete
%% these resources before you delete the DB instance. Otherwise, deleting the
%% DB instance and creation of the final snapshot might fail.
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

%% @doc Deletes automated backups using the `DbiResourceId' value of the
%% source DB instance or the Amazon Resource Name (ARN) of the automated
%% backups.
-spec delete_db_instance_automated_backup(aws_client:aws_client(), delete_db_instance_automated_backup_message()) ->
    {ok, delete_db_instance_automated_backup_result(), tuple()} |
    {error, any()} |
    {error, delete_db_instance_automated_backup_errors(), tuple()}.
delete_db_instance_automated_backup(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_db_instance_automated_backup(Client, Input, []).

-spec delete_db_instance_automated_backup(aws_client:aws_client(), delete_db_instance_automated_backup_message(), proplists:proplist()) ->
    {ok, delete_db_instance_automated_backup_result(), tuple()} |
    {error, any()} |
    {error, delete_db_instance_automated_backup_errors(), tuple()}.
delete_db_instance_automated_backup(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDBInstanceAutomatedBackup">>, Input, Options).

%% @doc Deletes a specified DB parameter group.
%%
%% The DB parameter group to be deleted can't be associated with any DB
%% instances.
-spec delete_db_parameter_group(aws_client:aws_client(), delete_db_parameter_group_message()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_db_parameter_group_errors(), tuple()}.
delete_db_parameter_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_db_parameter_group(Client, Input, []).

-spec delete_db_parameter_group(aws_client:aws_client(), delete_db_parameter_group_message(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_db_parameter_group_errors(), tuple()}.
delete_db_parameter_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDBParameterGroup">>, Input, Options).

%% @doc Deletes an existing DB proxy.
-spec delete_db_proxy(aws_client:aws_client(), delete_db_proxy_request()) ->
    {ok, delete_db_proxy_response(), tuple()} |
    {error, any()} |
    {error, delete_db_proxy_errors(), tuple()}.
delete_db_proxy(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_db_proxy(Client, Input, []).

-spec delete_db_proxy(aws_client:aws_client(), delete_db_proxy_request(), proplists:proplist()) ->
    {ok, delete_db_proxy_response(), tuple()} |
    {error, any()} |
    {error, delete_db_proxy_errors(), tuple()}.
delete_db_proxy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDBProxy">>, Input, Options).

%% @doc Deletes a `DBProxyEndpoint'.
%%
%% Doing so removes the ability to access the DB proxy using the
%% endpoint that you defined. The endpoint that you delete might have
%% provided capabilities such as read/write
%% or read-only operations, or using a different VPC than the DB proxy's
%% default VPC.
-spec delete_db_proxy_endpoint(aws_client:aws_client(), delete_db_proxy_endpoint_request()) ->
    {ok, delete_db_proxy_endpoint_response(), tuple()} |
    {error, any()} |
    {error, delete_db_proxy_endpoint_errors(), tuple()}.
delete_db_proxy_endpoint(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_db_proxy_endpoint(Client, Input, []).

-spec delete_db_proxy_endpoint(aws_client:aws_client(), delete_db_proxy_endpoint_request(), proplists:proplist()) ->
    {ok, delete_db_proxy_endpoint_response(), tuple()} |
    {error, any()} |
    {error, delete_db_proxy_endpoint_errors(), tuple()}.
delete_db_proxy_endpoint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDBProxyEndpoint">>, Input, Options).

%% @doc Deletes a DB security group.
%%
%% The specified DB security group must not be associated with any DB
%% instances.
%%
%% EC2-Classic was retired on August 15, 2022. If you haven't migrated
%% from EC2-Classic to a VPC, we recommend that
%% you migrate as soon as possible. For more information, see Migrate from
%% EC2-Classic to a VPC:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-migrate.html in
%% the
%% Amazon EC2 User Guide, the blog EC2-Classic Networking is Retiring –
%% Here’s How to Prepare:
%% http://aws.amazon.com/blogs/aws/ec2-classic-is-retiring-heres-how-to-prepare/,
%% and Moving a DB instance not in a VPC
%% into a VPC:
%% https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_VPC.Non-VPC2VPC.html
%% in the Amazon RDS User Guide.
-spec delete_db_security_group(aws_client:aws_client(), delete_db_security_group_message()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_db_security_group_errors(), tuple()}.
delete_db_security_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_db_security_group(Client, Input, []).

-spec delete_db_security_group(aws_client:aws_client(), delete_db_security_group_message(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_db_security_group_errors(), tuple()}.
delete_db_security_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDBSecurityGroup">>, Input, Options).

%% @doc Deletes an Aurora Limitless Database DB shard group.
-spec delete_db_shard_group(aws_client:aws_client(), delete_db_shard_group_message()) ->
    {ok, db_shard_group(), tuple()} |
    {error, any()} |
    {error, delete_db_shard_group_errors(), tuple()}.
delete_db_shard_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_db_shard_group(Client, Input, []).

-spec delete_db_shard_group(aws_client:aws_client(), delete_db_shard_group_message(), proplists:proplist()) ->
    {ok, db_shard_group(), tuple()} |
    {error, any()} |
    {error, delete_db_shard_group_errors(), tuple()}.
delete_db_shard_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDBShardGroup">>, Input, Options).

%% @doc Deletes a DB snapshot.
%%
%% If the snapshot is being copied, the copy operation is
%% terminated.
%%
%% The DB snapshot must be in the `available' state to be deleted.
-spec delete_db_snapshot(aws_client:aws_client(), delete_db_snapshot_message()) ->
    {ok, delete_db_snapshot_result(), tuple()} |
    {error, any()} |
    {error, delete_db_snapshot_errors(), tuple()}.
delete_db_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_db_snapshot(Client, Input, []).

-spec delete_db_snapshot(aws_client:aws_client(), delete_db_snapshot_message(), proplists:proplist()) ->
    {ok, delete_db_snapshot_result(), tuple()} |
    {error, any()} |
    {error, delete_db_snapshot_errors(), tuple()}.
delete_db_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDBSnapshot">>, Input, Options).

%% @doc Deletes a DB subnet group.
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

%% @doc Deletes an RDS event notification subscription.
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

%% @doc Deletes a global database cluster.
%%
%% The primary and secondary clusters must already be detached or
%% destroyed first.
%%
%% This action only applies to Aurora DB clusters.
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

%% @doc Deletes a zero-ETL integration with Amazon Redshift.
-spec delete_integration(aws_client:aws_client(), delete_integration_message()) ->
    {ok, integration(), tuple()} |
    {error, any()} |
    {error, delete_integration_errors(), tuple()}.
delete_integration(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_integration(Client, Input, []).

-spec delete_integration(aws_client:aws_client(), delete_integration_message(), proplists:proplist()) ->
    {ok, integration(), tuple()} |
    {error, any()} |
    {error, delete_integration_errors(), tuple()}.
delete_integration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteIntegration">>, Input, Options).

%% @doc Deletes an existing option group.
-spec delete_option_group(aws_client:aws_client(), delete_option_group_message()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_option_group_errors(), tuple()}.
delete_option_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_option_group(Client, Input, []).

-spec delete_option_group(aws_client:aws_client(), delete_option_group_message(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_option_group_errors(), tuple()}.
delete_option_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteOptionGroup">>, Input, Options).

%% @doc Deletes a tenant database from your DB instance.
%%
%% This command only applies to RDS for
%% Oracle container database (CDB) instances.
%%
%% You can't delete a tenant database when it is the only tenant in the
%% DB
%% instance.
-spec delete_tenant_database(aws_client:aws_client(), delete_tenant_database_message()) ->
    {ok, delete_tenant_database_result(), tuple()} |
    {error, any()} |
    {error, delete_tenant_database_errors(), tuple()}.
delete_tenant_database(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_tenant_database(Client, Input, []).

-spec delete_tenant_database(aws_client:aws_client(), delete_tenant_database_message(), proplists:proplist()) ->
    {ok, delete_tenant_database_result(), tuple()} |
    {error, any()} |
    {error, delete_tenant_database_errors(), tuple()}.
delete_tenant_database(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteTenantDatabase">>, Input, Options).

%% @doc Remove the association between one or more `DBProxyTarget' data
%% structures and a `DBProxyTargetGroup'.
-spec deregister_db_proxy_targets(aws_client:aws_client(), deregister_db_proxy_targets_request()) ->
    {ok, deregister_db_proxy_targets_response(), tuple()} |
    {error, any()} |
    {error, deregister_db_proxy_targets_errors(), tuple()}.
deregister_db_proxy_targets(Client, Input)
  when is_map(Client), is_map(Input) ->
    deregister_db_proxy_targets(Client, Input, []).

-spec deregister_db_proxy_targets(aws_client:aws_client(), deregister_db_proxy_targets_request(), proplists:proplist()) ->
    {ok, deregister_db_proxy_targets_response(), tuple()} |
    {error, any()} |
    {error, deregister_db_proxy_targets_errors(), tuple()}.
deregister_db_proxy_targets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeregisterDBProxyTargets">>, Input, Options).

%% @doc Lists all of the attributes for a customer account.
%%
%% The attributes include Amazon RDS quotas for the account, such as the
%% number of DB instances allowed. The description for a quota includes the
%% quota name, current usage toward that quota, and the quota's maximum
%% value.
%%
%% This command doesn't take any parameters.
-spec describe_account_attributes(aws_client:aws_client(), describe_account_attributes_message()) ->
    {ok, account_attributes_message(), tuple()} |
    {error, any()}.
describe_account_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_account_attributes(Client, Input, []).

-spec describe_account_attributes(aws_client:aws_client(), describe_account_attributes_message(), proplists:proplist()) ->
    {ok, account_attributes_message(), tuple()} |
    {error, any()}.
describe_account_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAccountAttributes">>, Input, Options).

%% @doc Describes one or more blue/green deployments.
%%
%% For more information, see Using Amazon RDS Blue/Green Deployments
%% for database updates:
%% https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/blue-green-deployments.html
%% in the Amazon RDS User Guide and
%%
%% Using Amazon RDS Blue/Green Deployments for database updates:
%% https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/blue-green-deployments.html
%% in the Amazon Aurora
%% User Guide.
-spec describe_blue_green_deployments(aws_client:aws_client(), describe_blue_green_deployments_request()) ->
    {ok, describe_blue_green_deployments_response(), tuple()} |
    {error, any()} |
    {error, describe_blue_green_deployments_errors(), tuple()}.
describe_blue_green_deployments(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_blue_green_deployments(Client, Input, []).

-spec describe_blue_green_deployments(aws_client:aws_client(), describe_blue_green_deployments_request(), proplists:proplist()) ->
    {ok, describe_blue_green_deployments_response(), tuple()} |
    {error, any()} |
    {error, describe_blue_green_deployments_errors(), tuple()}.
describe_blue_green_deployments(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeBlueGreenDeployments">>, Input, Options).

%% @doc Lists the set of certificate authority (CA) certificates provided by
%% Amazon RDS for this Amazon Web Services account.
%%
%% For more information, see Using SSL/TLS to encrypt a connection to a DB
%% instance:
%% https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.SSL.html
%% in the Amazon RDS User Guide and
%%
%% Using SSL/TLS to encrypt a connection to a DB cluster:
%% https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/UsingWithRDS.SSL.html
%% in the Amazon Aurora
%% User Guide.
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

%% @doc Displays backups for both current and deleted DB clusters.
%%
%% For example, use this operation to find details
%% about automated backups for previously deleted clusters. Current clusters
%% are returned for both the
%% `DescribeDBClusterAutomatedBackups' and `DescribeDBClusters'
%% operations.
%%
%% All parameters are optional.
-spec describe_db_cluster_automated_backups(aws_client:aws_client(), describe_db_cluster_automated_backups_message()) ->
    {ok, db_cluster_automated_backup_message(), tuple()} |
    {error, any()} |
    {error, describe_db_cluster_automated_backups_errors(), tuple()}.
describe_db_cluster_automated_backups(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_db_cluster_automated_backups(Client, Input, []).

-spec describe_db_cluster_automated_backups(aws_client:aws_client(), describe_db_cluster_automated_backups_message(), proplists:proplist()) ->
    {ok, db_cluster_automated_backup_message(), tuple()} |
    {error, any()} |
    {error, describe_db_cluster_automated_backups_errors(), tuple()}.
describe_db_cluster_automated_backups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDBClusterAutomatedBackups">>, Input, Options).

%% @doc Returns information about backtracks for a DB cluster.
%%
%% For more information on Amazon Aurora, see
%%
%% What is Amazon Aurora?:
%% https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html
%% in the Amazon Aurora User Guide.
%%
%% This action only applies to Aurora MySQL DB clusters.
-spec describe_db_cluster_backtracks(aws_client:aws_client(), describe_db_cluster_backtracks_message()) ->
    {ok, db_cluster_backtrack_message(), tuple()} |
    {error, any()} |
    {error, describe_db_cluster_backtracks_errors(), tuple()}.
describe_db_cluster_backtracks(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_db_cluster_backtracks(Client, Input, []).

-spec describe_db_cluster_backtracks(aws_client:aws_client(), describe_db_cluster_backtracks_message(), proplists:proplist()) ->
    {ok, db_cluster_backtrack_message(), tuple()} |
    {error, any()} |
    {error, describe_db_cluster_backtracks_errors(), tuple()}.
describe_db_cluster_backtracks(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDBClusterBacktracks">>, Input, Options).

%% @doc Returns information about endpoints for an Amazon Aurora DB cluster.
%%
%% This action only applies to Aurora DB clusters.
-spec describe_db_cluster_endpoints(aws_client:aws_client(), describe_db_cluster_endpoints_message()) ->
    {ok, db_cluster_endpoint_message(), tuple()} |
    {error, any()} |
    {error, describe_db_cluster_endpoints_errors(), tuple()}.
describe_db_cluster_endpoints(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_db_cluster_endpoints(Client, Input, []).

-spec describe_db_cluster_endpoints(aws_client:aws_client(), describe_db_cluster_endpoints_message(), proplists:proplist()) ->
    {ok, db_cluster_endpoint_message(), tuple()} |
    {error, any()} |
    {error, describe_db_cluster_endpoints_errors(), tuple()}.
describe_db_cluster_endpoints(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDBClusterEndpoints">>, Input, Options).

%% @doc Returns a list of `DBClusterParameterGroup' descriptions.
%%
%% If a
%% `DBClusterParameterGroupName' parameter is specified,
%% the list will contain only the description of the specified DB cluster
%% parameter group.
%%
%% For more information on Amazon Aurora, see
%%
%% What is Amazon Aurora?:
%% https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html
%% in the Amazon Aurora User Guide.
%%
%% For more information on Multi-AZ DB clusters, see Multi-AZ DB
%% cluster deployments:
%% https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/multi-az-db-clusters-concepts.html
%% in the Amazon RDS User
%% Guide.
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

%% @doc Returns the detailed parameter list for a particular DB cluster
%% parameter group.
%%
%% For more information on Amazon Aurora, see
%%
%% What is Amazon Aurora?:
%% https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html
%% in the Amazon Aurora User Guide.
%%
%% For more information on Multi-AZ DB clusters, see Multi-AZ DB
%% cluster deployments:
%% https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/multi-az-db-clusters-concepts.html
%% in the Amazon RDS User
%% Guide.
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

%% @doc Returns a list of DB cluster snapshot attribute names and values for
%% a manual DB cluster snapshot.
%%
%% When sharing snapshots with other Amazon Web Services accounts,
%% `DescribeDBClusterSnapshotAttributes'
%% returns the `restore' attribute and a list of IDs for the Amazon Web
%% Services accounts that are
%% authorized to copy or restore the manual DB cluster snapshot. If `all'
%% is included in the list of
%% values for the `restore' attribute, then the manual DB cluster
%% snapshot is public and
%% can be copied or restored by all Amazon Web Services accounts.
%%
%% To add or remove access for an Amazon Web Services account to copy or
%% restore a manual DB cluster snapshot, or to make the
%% manual DB cluster snapshot public or private, use the
%% `ModifyDBClusterSnapshotAttribute' API action.
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

%% @doc Returns information about DB cluster snapshots.
%%
%% This API action supports pagination.
%%
%% For more information on Amazon Aurora DB clusters, see
%%
%% What is Amazon Aurora?:
%% https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html
%% in the Amazon Aurora User Guide.
%%
%% For more information on Multi-AZ DB clusters, see Multi-AZ DB
%% cluster deployments:
%% https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/multi-az-db-clusters-concepts.html
%% in the Amazon RDS User
%% Guide.
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

%% @doc Describes existing Amazon Aurora DB clusters and Multi-AZ DB
%% clusters.
%%
%% This API supports pagination.
%%
%% For more information on Amazon Aurora DB clusters, see
%%
%% What is Amazon Aurora?:
%% https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html
%% in the Amazon Aurora User Guide.
%%
%% For more information on Multi-AZ DB clusters, see Multi-AZ DB
%% cluster deployments:
%% https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/multi-az-db-clusters-concepts.html
%% in the Amazon RDS User
%% Guide.
%%
%% This operation can also return information for Amazon Neptune DB instances
%% and Amazon DocumentDB instances.
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

%% @doc Describes the properties of specific versions of DB engines.
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

%% @doc Displays backups for both current and deleted
%% instances.
%%
%% For example, use this operation to
%% find details about automated backups for previously deleted instances.
%% Current instances
%% with retention periods greater than zero (0) are returned for both the
%% `DescribeDBInstanceAutomatedBackups' and
%% `DescribeDBInstances' operations.
%%
%% All parameters are optional.
-spec describe_db_instance_automated_backups(aws_client:aws_client(), describe_db_instance_automated_backups_message()) ->
    {ok, db_instance_automated_backup_message(), tuple()} |
    {error, any()} |
    {error, describe_db_instance_automated_backups_errors(), tuple()}.
describe_db_instance_automated_backups(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_db_instance_automated_backups(Client, Input, []).

-spec describe_db_instance_automated_backups(aws_client:aws_client(), describe_db_instance_automated_backups_message(), proplists:proplist()) ->
    {ok, db_instance_automated_backup_message(), tuple()} |
    {error, any()} |
    {error, describe_db_instance_automated_backups_errors(), tuple()}.
describe_db_instance_automated_backups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDBInstanceAutomatedBackups">>, Input, Options).

%% @doc Describes provisioned RDS instances.
%%
%% This API supports pagination.
%%
%% This operation can also return information for Amazon Neptune DB instances
%% and Amazon DocumentDB instances.
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

%% @doc Returns a list of DB log files for the DB instance.
%%
%% This command doesn't apply to RDS Custom.
-spec describe_db_log_files(aws_client:aws_client(), describe_db_log_files_message()) ->
    {ok, describe_db_log_files_response(), tuple()} |
    {error, any()} |
    {error, describe_db_log_files_errors(), tuple()}.
describe_db_log_files(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_db_log_files(Client, Input, []).

-spec describe_db_log_files(aws_client:aws_client(), describe_db_log_files_message(), proplists:proplist()) ->
    {ok, describe_db_log_files_response(), tuple()} |
    {error, any()} |
    {error, describe_db_log_files_errors(), tuple()}.
describe_db_log_files(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDBLogFiles">>, Input, Options).

%% @doc Returns a list of `DBParameterGroup' descriptions.
%%
%% If a `DBParameterGroupName' is specified,
%% the list will contain only the description of the specified DB parameter
%% group.
-spec describe_db_parameter_groups(aws_client:aws_client(), describe_db_parameter_groups_message()) ->
    {ok, db_parameter_groups_message(), tuple()} |
    {error, any()} |
    {error, describe_db_parameter_groups_errors(), tuple()}.
describe_db_parameter_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_db_parameter_groups(Client, Input, []).

-spec describe_db_parameter_groups(aws_client:aws_client(), describe_db_parameter_groups_message(), proplists:proplist()) ->
    {ok, db_parameter_groups_message(), tuple()} |
    {error, any()} |
    {error, describe_db_parameter_groups_errors(), tuple()}.
describe_db_parameter_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDBParameterGroups">>, Input, Options).

%% @doc Returns the detailed parameter list for a particular DB parameter
%% group.
-spec describe_db_parameters(aws_client:aws_client(), describe_db_parameters_message()) ->
    {ok, db_parameter_group_details(), tuple()} |
    {error, any()} |
    {error, describe_db_parameters_errors(), tuple()}.
describe_db_parameters(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_db_parameters(Client, Input, []).

-spec describe_db_parameters(aws_client:aws_client(), describe_db_parameters_message(), proplists:proplist()) ->
    {ok, db_parameter_group_details(), tuple()} |
    {error, any()} |
    {error, describe_db_parameters_errors(), tuple()}.
describe_db_parameters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDBParameters">>, Input, Options).

%% @doc Returns information about DB proxies.
-spec describe_db_proxies(aws_client:aws_client(), describe_db_proxies_request()) ->
    {ok, describe_db_proxies_response(), tuple()} |
    {error, any()} |
    {error, describe_db_proxies_errors(), tuple()}.
describe_db_proxies(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_db_proxies(Client, Input, []).

-spec describe_db_proxies(aws_client:aws_client(), describe_db_proxies_request(), proplists:proplist()) ->
    {ok, describe_db_proxies_response(), tuple()} |
    {error, any()} |
    {error, describe_db_proxies_errors(), tuple()}.
describe_db_proxies(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDBProxies">>, Input, Options).

%% @doc Returns information about DB proxy endpoints.
-spec describe_db_proxy_endpoints(aws_client:aws_client(), describe_db_proxy_endpoints_request()) ->
    {ok, describe_db_proxy_endpoints_response(), tuple()} |
    {error, any()} |
    {error, describe_db_proxy_endpoints_errors(), tuple()}.
describe_db_proxy_endpoints(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_db_proxy_endpoints(Client, Input, []).

-spec describe_db_proxy_endpoints(aws_client:aws_client(), describe_db_proxy_endpoints_request(), proplists:proplist()) ->
    {ok, describe_db_proxy_endpoints_response(), tuple()} |
    {error, any()} |
    {error, describe_db_proxy_endpoints_errors(), tuple()}.
describe_db_proxy_endpoints(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDBProxyEndpoints">>, Input, Options).

%% @doc Returns information about DB proxy target groups, represented by
%% `DBProxyTargetGroup' data structures.
-spec describe_db_proxy_target_groups(aws_client:aws_client(), describe_db_proxy_target_groups_request()) ->
    {ok, describe_db_proxy_target_groups_response(), tuple()} |
    {error, any()} |
    {error, describe_db_proxy_target_groups_errors(), tuple()}.
describe_db_proxy_target_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_db_proxy_target_groups(Client, Input, []).

-spec describe_db_proxy_target_groups(aws_client:aws_client(), describe_db_proxy_target_groups_request(), proplists:proplist()) ->
    {ok, describe_db_proxy_target_groups_response(), tuple()} |
    {error, any()} |
    {error, describe_db_proxy_target_groups_errors(), tuple()}.
describe_db_proxy_target_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDBProxyTargetGroups">>, Input, Options).

%% @doc Returns information about `DBProxyTarget' objects.
%%
%% This API supports pagination.
-spec describe_db_proxy_targets(aws_client:aws_client(), describe_db_proxy_targets_request()) ->
    {ok, describe_db_proxy_targets_response(), tuple()} |
    {error, any()} |
    {error, describe_db_proxy_targets_errors(), tuple()}.
describe_db_proxy_targets(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_db_proxy_targets(Client, Input, []).

-spec describe_db_proxy_targets(aws_client:aws_client(), describe_db_proxy_targets_request(), proplists:proplist()) ->
    {ok, describe_db_proxy_targets_response(), tuple()} |
    {error, any()} |
    {error, describe_db_proxy_targets_errors(), tuple()}.
describe_db_proxy_targets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDBProxyTargets">>, Input, Options).

%% @doc Describes the recommendations to resolve the issues for your DB
%% instances, DB clusters, and DB parameter groups.
-spec describe_db_recommendations(aws_client:aws_client(), describe_db_recommendations_message()) ->
    {ok, db_recommendations_message(), tuple()} |
    {error, any()}.
describe_db_recommendations(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_db_recommendations(Client, Input, []).

-spec describe_db_recommendations(aws_client:aws_client(), describe_db_recommendations_message(), proplists:proplist()) ->
    {ok, db_recommendations_message(), tuple()} |
    {error, any()}.
describe_db_recommendations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDBRecommendations">>, Input, Options).

%% @doc Returns a list of `DBSecurityGroup' descriptions.
%%
%% If a `DBSecurityGroupName' is specified,
%% the list will contain only the descriptions of the specified DB security
%% group.
%%
%% EC2-Classic was retired on August 15, 2022. If you haven't migrated
%% from EC2-Classic to a VPC, we recommend that
%% you migrate as soon as possible. For more information, see Migrate from
%% EC2-Classic to a VPC:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-migrate.html in
%% the
%% Amazon EC2 User Guide, the blog EC2-Classic Networking is Retiring –
%% Here’s How to Prepare:
%% http://aws.amazon.com/blogs/aws/ec2-classic-is-retiring-heres-how-to-prepare/,
%% and Moving a DB instance not in a VPC
%% into a VPC:
%% https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_VPC.Non-VPC2VPC.html
%% in the Amazon RDS User Guide.
-spec describe_db_security_groups(aws_client:aws_client(), describe_db_security_groups_message()) ->
    {ok, db_security_group_message(), tuple()} |
    {error, any()} |
    {error, describe_db_security_groups_errors(), tuple()}.
describe_db_security_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_db_security_groups(Client, Input, []).

-spec describe_db_security_groups(aws_client:aws_client(), describe_db_security_groups_message(), proplists:proplist()) ->
    {ok, db_security_group_message(), tuple()} |
    {error, any()} |
    {error, describe_db_security_groups_errors(), tuple()}.
describe_db_security_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDBSecurityGroups">>, Input, Options).

%% @doc Describes existing Aurora Limitless Database DB shard groups.
-spec describe_db_shard_groups(aws_client:aws_client(), describe_db_shard_groups_message()) ->
    {ok, describe_db_shard_groups_response(), tuple()} |
    {error, any()} |
    {error, describe_db_shard_groups_errors(), tuple()}.
describe_db_shard_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_db_shard_groups(Client, Input, []).

-spec describe_db_shard_groups(aws_client:aws_client(), describe_db_shard_groups_message(), proplists:proplist()) ->
    {ok, describe_db_shard_groups_response(), tuple()} |
    {error, any()} |
    {error, describe_db_shard_groups_errors(), tuple()}.
describe_db_shard_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDBShardGroups">>, Input, Options).

%% @doc Returns a list of DB snapshot attribute names and values for a manual
%% DB snapshot.
%%
%% When sharing snapshots with other Amazon Web Services accounts,
%% `DescribeDBSnapshotAttributes'
%% returns the `restore' attribute and a list of IDs for the Amazon Web
%% Services accounts that are
%% authorized to copy or restore the manual DB snapshot. If `all' is
%% included in the list of
%% values for the `restore' attribute, then the manual DB snapshot is
%% public and
%% can be copied or restored by all Amazon Web Services accounts.
%%
%% To add or remove access for an Amazon Web Services account to copy or
%% restore a manual DB snapshot, or to make the
%% manual DB snapshot public or private, use the
%% `ModifyDBSnapshotAttribute' API action.
-spec describe_db_snapshot_attributes(aws_client:aws_client(), describe_db_snapshot_attributes_message()) ->
    {ok, describe_db_snapshot_attributes_result(), tuple()} |
    {error, any()} |
    {error, describe_db_snapshot_attributes_errors(), tuple()}.
describe_db_snapshot_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_db_snapshot_attributes(Client, Input, []).

-spec describe_db_snapshot_attributes(aws_client:aws_client(), describe_db_snapshot_attributes_message(), proplists:proplist()) ->
    {ok, describe_db_snapshot_attributes_result(), tuple()} |
    {error, any()} |
    {error, describe_db_snapshot_attributes_errors(), tuple()}.
describe_db_snapshot_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDBSnapshotAttributes">>, Input, Options).

%% @doc Describes the tenant databases that exist in a DB snapshot.
%%
%% This command only applies
%% to RDS for Oracle DB instances in the multi-tenant configuration.
%%
%% You can use this command to inspect the tenant databases within a snapshot
%% before
%% restoring it. You can't directly interact with the tenant databases in
%% a DB snapshot. If
%% you restore a snapshot that was taken from DB instance using the
%% multi-tenant
%% configuration, you restore all its tenant databases.
-spec describe_db_snapshot_tenant_databases(aws_client:aws_client(), describe_db_snapshot_tenant_databases_message()) ->
    {ok, db_snapshot_tenant_databases_message(), tuple()} |
    {error, any()} |
    {error, describe_db_snapshot_tenant_databases_errors(), tuple()}.
describe_db_snapshot_tenant_databases(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_db_snapshot_tenant_databases(Client, Input, []).

-spec describe_db_snapshot_tenant_databases(aws_client:aws_client(), describe_db_snapshot_tenant_databases_message(), proplists:proplist()) ->
    {ok, db_snapshot_tenant_databases_message(), tuple()} |
    {error, any()} |
    {error, describe_db_snapshot_tenant_databases_errors(), tuple()}.
describe_db_snapshot_tenant_databases(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDBSnapshotTenantDatabases">>, Input, Options).

%% @doc Returns information about DB snapshots.
%%
%% This API action supports pagination.
-spec describe_db_snapshots(aws_client:aws_client(), describe_db_snapshots_message()) ->
    {ok, db_snapshot_message(), tuple()} |
    {error, any()} |
    {error, describe_db_snapshots_errors(), tuple()}.
describe_db_snapshots(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_db_snapshots(Client, Input, []).

-spec describe_db_snapshots(aws_client:aws_client(), describe_db_snapshots_message(), proplists:proplist()) ->
    {ok, db_snapshot_message(), tuple()} |
    {error, any()} |
    {error, describe_db_snapshots_errors(), tuple()}.
describe_db_snapshots(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDBSnapshots">>, Input, Options).

%% @doc Returns a list of DBSubnetGroup descriptions.
%%
%% If a DBSubnetGroupName is specified, the list will contain only the
%% descriptions of the specified DBSubnetGroup.
%%
%% For an overview of CIDR ranges, go to the
%% Wikipedia Tutorial:
%% http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing.
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
%% cluster database engine.
%%
%% For more information on Amazon Aurora, see
%%
%% What is Amazon Aurora?:
%% https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html
%% in the Amazon Aurora User Guide.
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

%% @doc Returns the default engine and system parameter information for the
%% specified database engine.
-spec describe_engine_default_parameters(aws_client:aws_client(), describe_engine_default_parameters_message()) ->
    {ok, describe_engine_default_parameters_result(), tuple()} |
    {error, any()}.
describe_engine_default_parameters(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_engine_default_parameters(Client, Input, []).

-spec describe_engine_default_parameters(aws_client:aws_client(), describe_engine_default_parameters_message(), proplists:proplist()) ->
    {ok, describe_engine_default_parameters_result(), tuple()} |
    {error, any()}.
describe_engine_default_parameters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEngineDefaultParameters">>, Input, Options).

%% @doc Displays a list of categories for all event source types, or, if
%% specified, for a specified source type.
%%
%% You can also see this list in the &quot;Amazon RDS event categories and
%% event messages&quot; section of the
%% Amazon RDS User Guide
%% :
%% https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Events.Messages.html
%% or the
%%
%% Amazon Aurora User Guide
%% :
%% https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_Events.Messages.html.
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
%% The description for a subscription includes
%% `SubscriptionName', `SNSTopicARN', `CustomerID',
%% `SourceType', `SourceID', `CreationTime', and `Status'.
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

%% @doc Returns events related to DB instances, DB clusters, DB parameter
%% groups, DB security groups, DB snapshots, DB cluster snapshots, and RDS
%% Proxies for the past 14 days.
%%
%% Events specific to a particular DB instance, DB cluster, DB parameter
%% group, DB security group, DB snapshot, DB cluster snapshot group, or RDS
%% Proxy can be
%% obtained by providing the name as a parameter.
%%
%% For more information on working with events, see Monitoring Amazon RDS
%% events:
%% https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/working-with-events.html
%% in the Amazon RDS User Guide and Monitoring Amazon Aurora
%% events:
%% https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/working-with-events.html
%% in the Amazon Aurora User Guide.
%%
%% By default, RDS returns events that were generated in the past hour.
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

%% @doc Returns information about a snapshot or cluster export to Amazon S3.
%%
%% This API operation supports
%% pagination.
-spec describe_export_tasks(aws_client:aws_client(), describe_export_tasks_message()) ->
    {ok, export_tasks_message(), tuple()} |
    {error, any()} |
    {error, describe_export_tasks_errors(), tuple()}.
describe_export_tasks(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_export_tasks(Client, Input, []).

-spec describe_export_tasks(aws_client:aws_client(), describe_export_tasks_message(), proplists:proplist()) ->
    {ok, export_tasks_message(), tuple()} |
    {error, any()} |
    {error, describe_export_tasks_errors(), tuple()}.
describe_export_tasks(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeExportTasks">>, Input, Options).

%% @doc Returns information about Aurora global database clusters.
%%
%% This API supports pagination.
%%
%% For more information on Amazon Aurora, see What is Amazon Aurora?:
%% https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html
%% in the
%% Amazon Aurora User Guide.
%%
%% This action only applies to Aurora DB clusters.
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

%% @doc Describe one or more zero-ETL integrations with Amazon Redshift.
-spec describe_integrations(aws_client:aws_client(), describe_integrations_message()) ->
    {ok, describe_integrations_response(), tuple()} |
    {error, any()} |
    {error, describe_integrations_errors(), tuple()}.
describe_integrations(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_integrations(Client, Input, []).

-spec describe_integrations(aws_client:aws_client(), describe_integrations_message(), proplists:proplist()) ->
    {ok, describe_integrations_response(), tuple()} |
    {error, any()} |
    {error, describe_integrations_errors(), tuple()}.
describe_integrations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeIntegrations">>, Input, Options).

%% @doc Describes all available options for the specified engine.
-spec describe_option_group_options(aws_client:aws_client(), describe_option_group_options_message()) ->
    {ok, option_group_options_message(), tuple()} |
    {error, any()}.
describe_option_group_options(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_option_group_options(Client, Input, []).

-spec describe_option_group_options(aws_client:aws_client(), describe_option_group_options_message(), proplists:proplist()) ->
    {ok, option_group_options_message(), tuple()} |
    {error, any()}.
describe_option_group_options(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeOptionGroupOptions">>, Input, Options).

%% @doc Describes the available option groups.
-spec describe_option_groups(aws_client:aws_client(), describe_option_groups_message()) ->
    {ok, option_groups(), tuple()} |
    {error, any()} |
    {error, describe_option_groups_errors(), tuple()}.
describe_option_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_option_groups(Client, Input, []).

-spec describe_option_groups(aws_client:aws_client(), describe_option_groups_message(), proplists:proplist()) ->
    {ok, option_groups(), tuple()} |
    {error, any()} |
    {error, describe_option_groups_errors(), tuple()}.
describe_option_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeOptionGroups">>, Input, Options).

%% @doc Describes the orderable DB instance options for a specified DB
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

%% @doc Returns a list of resources (for example, DB instances) that have at
%% least one pending maintenance action.
%%
%% This API follows an eventual consistency model. This means that the result
%% of the
%% `DescribePendingMaintenanceActions' command might not be immediately
%% visible to all subsequent RDS commands. Keep this in mind when you use
%% `DescribePendingMaintenanceActions' immediately after using a previous
%% API command such as `ApplyPendingMaintenanceActions'.
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

%% @doc Returns information about reserved DB instances for this account, or
%% about a specified reserved DB instance.
-spec describe_reserved_db_instances(aws_client:aws_client(), describe_reserved_db_instances_message()) ->
    {ok, reserved_db_instance_message(), tuple()} |
    {error, any()} |
    {error, describe_reserved_db_instances_errors(), tuple()}.
describe_reserved_db_instances(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_reserved_db_instances(Client, Input, []).

-spec describe_reserved_db_instances(aws_client:aws_client(), describe_reserved_db_instances_message(), proplists:proplist()) ->
    {ok, reserved_db_instance_message(), tuple()} |
    {error, any()} |
    {error, describe_reserved_db_instances_errors(), tuple()}.
describe_reserved_db_instances(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeReservedDBInstances">>, Input, Options).

%% @doc Lists available reserved DB instance offerings.
-spec describe_reserved_db_instances_offerings(aws_client:aws_client(), describe_reserved_db_instances_offerings_message()) ->
    {ok, reserved_db_instances_offering_message(), tuple()} |
    {error, any()} |
    {error, describe_reserved_db_instances_offerings_errors(), tuple()}.
describe_reserved_db_instances_offerings(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_reserved_db_instances_offerings(Client, Input, []).

-spec describe_reserved_db_instances_offerings(aws_client:aws_client(), describe_reserved_db_instances_offerings_message(), proplists:proplist()) ->
    {ok, reserved_db_instances_offering_message(), tuple()} |
    {error, any()} |
    {error, describe_reserved_db_instances_offerings_errors(), tuple()}.
describe_reserved_db_instances_offerings(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeReservedDBInstancesOfferings">>, Input, Options).

%% @doc Returns a list of the source Amazon Web Services Regions where the
%% current Amazon Web Services Region can create a read replica,
%% copy a DB snapshot from, or replicate automated backups from.
%%
%% Use this operation to determine whether cross-Region features are
%% supported between other Regions
%% and your current Region. This operation supports pagination.
%%
%% To return information about the Regions that are enabled for your account,
%% or all Regions,
%% use the EC2 operation `DescribeRegions'. For more information, see
%%
%% DescribeRegions:
%% https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeRegions.html
%% in the Amazon EC2 API Reference.
-spec describe_source_regions(aws_client:aws_client(), describe_source_regions_message()) ->
    {ok, source_region_message(), tuple()} |
    {error, any()}.
describe_source_regions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_source_regions(Client, Input, []).

-spec describe_source_regions(aws_client:aws_client(), describe_source_regions_message(), proplists:proplist()) ->
    {ok, source_region_message(), tuple()} |
    {error, any()}.
describe_source_regions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeSourceRegions">>, Input, Options).

%% @doc Describes the tenant databases in a DB instance that uses the
%% multi-tenant
%% configuration.
%%
%% Only RDS for Oracle CDB instances are supported.
-spec describe_tenant_databases(aws_client:aws_client(), describe_tenant_databases_message()) ->
    {ok, tenant_databases_message(), tuple()} |
    {error, any()} |
    {error, describe_tenant_databases_errors(), tuple()}.
describe_tenant_databases(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_tenant_databases(Client, Input, []).

-spec describe_tenant_databases(aws_client:aws_client(), describe_tenant_databases_message(), proplists:proplist()) ->
    {ok, tenant_databases_message(), tuple()} |
    {error, any()} |
    {error, describe_tenant_databases_errors(), tuple()}.
describe_tenant_databases(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTenantDatabases">>, Input, Options).

%% @doc You can call `DescribeValidDBInstanceModifications' to learn what
%% modifications you can make to
%% your DB instance.
%%
%% You can use this information when you call `ModifyDBInstance'.
%%
%% This command doesn't apply to RDS Custom.
-spec describe_valid_db_instance_modifications(aws_client:aws_client(), describe_valid_db_instance_modifications_message()) ->
    {ok, describe_valid_db_instance_modifications_result(), tuple()} |
    {error, any()} |
    {error, describe_valid_db_instance_modifications_errors(), tuple()}.
describe_valid_db_instance_modifications(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_valid_db_instance_modifications(Client, Input, []).

-spec describe_valid_db_instance_modifications(aws_client:aws_client(), describe_valid_db_instance_modifications_message(), proplists:proplist()) ->
    {ok, describe_valid_db_instance_modifications_result(), tuple()} |
    {error, any()} |
    {error, describe_valid_db_instance_modifications_errors(), tuple()}.
describe_valid_db_instance_modifications(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeValidDBInstanceModifications">>, Input, Options).

%% @doc Disables the HTTP endpoint for the specified DB cluster.
%%
%% Disabling this endpoint disables RDS Data API.
%%
%% For more information, see Using RDS Data API:
%% https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/data-api.html
%% in the
%% Amazon Aurora User Guide.
%%
%% This operation applies only to Aurora PostgreSQL Serverless v2 and
%% provisioned DB clusters. To disable the HTTP endpoint for Aurora
%% Serverless v1 DB clusters,
%% use the `EnableHttpEndpoint' parameter of the `ModifyDBCluster'
%% operation.
-spec disable_http_endpoint(aws_client:aws_client(), disable_http_endpoint_request()) ->
    {ok, disable_http_endpoint_response(), tuple()} |
    {error, any()} |
    {error, disable_http_endpoint_errors(), tuple()}.
disable_http_endpoint(Client, Input)
  when is_map(Client), is_map(Input) ->
    disable_http_endpoint(Client, Input, []).

-spec disable_http_endpoint(aws_client:aws_client(), disable_http_endpoint_request(), proplists:proplist()) ->
    {ok, disable_http_endpoint_response(), tuple()} |
    {error, any()} |
    {error, disable_http_endpoint_errors(), tuple()}.
disable_http_endpoint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisableHttpEndpoint">>, Input, Options).

%% @doc Downloads all or a portion of the specified log file, up to 1 MB in
%% size.
%%
%% This command doesn't apply to RDS Custom.
-spec download_db_log_file_portion(aws_client:aws_client(), download_db_log_file_portion_message()) ->
    {ok, download_db_log_file_portion_details(), tuple()} |
    {error, any()} |
    {error, download_db_log_file_portion_errors(), tuple()}.
download_db_log_file_portion(Client, Input)
  when is_map(Client), is_map(Input) ->
    download_db_log_file_portion(Client, Input, []).

-spec download_db_log_file_portion(aws_client:aws_client(), download_db_log_file_portion_message(), proplists:proplist()) ->
    {ok, download_db_log_file_portion_details(), tuple()} |
    {error, any()} |
    {error, download_db_log_file_portion_errors(), tuple()}.
download_db_log_file_portion(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DownloadDBLogFilePortion">>, Input, Options).

%% @doc Enables the HTTP endpoint for the DB cluster.
%%
%% By default, the HTTP endpoint
%% isn't enabled.
%%
%% When enabled, this endpoint provides a connectionless web service API (RDS
%% Data API)
%% for running SQL queries on the Aurora DB cluster. You can also query your
%% database from inside the RDS console
%% with the RDS query editor.
%%
%% For more information, see Using RDS Data API:
%% https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/data-api.html
%% in the
%% Amazon Aurora User Guide.
%%
%% This operation applies only to Aurora PostgreSQL Serverless v2 and
%% provisioned DB clusters. To enable the HTTP endpoint for Aurora Serverless
%% v1 DB clusters,
%% use the `EnableHttpEndpoint' parameter of the `ModifyDBCluster'
%% operation.
-spec enable_http_endpoint(aws_client:aws_client(), enable_http_endpoint_request()) ->
    {ok, enable_http_endpoint_response(), tuple()} |
    {error, any()} |
    {error, enable_http_endpoint_errors(), tuple()}.
enable_http_endpoint(Client, Input)
  when is_map(Client), is_map(Input) ->
    enable_http_endpoint(Client, Input, []).

-spec enable_http_endpoint(aws_client:aws_client(), enable_http_endpoint_request(), proplists:proplist()) ->
    {ok, enable_http_endpoint_response(), tuple()} |
    {error, any()} |
    {error, enable_http_endpoint_errors(), tuple()}.
enable_http_endpoint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"EnableHttpEndpoint">>, Input, Options).

%% @doc Forces a failover for a DB cluster.
%%
%% For an Aurora DB cluster, failover for a DB cluster promotes one of the
%% Aurora Replicas (read-only instances)
%% in the DB cluster to be the primary DB instance (the cluster writer).
%%
%% For a Multi-AZ DB cluster, after RDS terminates the primary DB instance,
%% the
%% internal monitoring system detects that the primary DB instance is
%% unhealthy and promotes a readable standby (read-only instances)
%% in the DB cluster to be the primary DB instance (the cluster writer).
%% Failover times are typically less than 35 seconds.
%%
%% An Amazon Aurora DB cluster automatically fails over to an Aurora Replica,
%% if one exists,
%% when the primary DB instance fails. A Multi-AZ DB cluster automatically
%% fails over to a readable standby
%% DB instance when the primary DB instance fails.
%%
%% To simulate a failure of a primary instance for testing, you can force a
%% failover.
%% Because each instance in a DB cluster has its own endpoint address, make
%% sure to clean up and re-establish any existing
%% connections that use those endpoint addresses when the failover is
%% complete.
%%
%% For more information on Amazon Aurora DB clusters, see
%%
%% What is Amazon Aurora?:
%% https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html
%% in the Amazon Aurora User Guide.
%%
%% For more information on Multi-AZ DB clusters, see Multi-AZ DB
%% cluster deployments:
%% https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/multi-az-db-clusters-concepts.html
%% in the Amazon RDS User
%% Guide.
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
%% cluster in the global database cluster to fail over or switch over a
%% global database.
%%
%% Switchover operations were previously called &quot;managed planned
%% failovers.&quot;
%%
%% Although this operation can be used either to fail over or to switch over
%% a global database cluster, its intended use is for global database
%% failover.
%% To switch over a global database cluster, we recommend that you use the
%% `SwitchoverGlobalCluster' operation instead.
%%
%% How you use this operation depends on whether you are failing over or
%% switching over your global database cluster:
%%
%% Failing over - Specify the `AllowDataLoss' parameter and don't
%% specify the `Switchover' parameter.
%%
%% Switching over - Specify the `Switchover' parameter or omit it, but
%% don't specify the `AllowDataLoss' parameter.
%%
%% About failing over and switching over
%%
%% While failing over and switching over a global database cluster both
%% change the primary DB cluster, you use these operations for different
%% reasons:
%%
%% Failing over - Use this operation to respond to an unplanned event, such
%% as a Regional disaster in the primary Region.
%% Failing over can result in a loss of write transaction data that
%% wasn't replicated to the chosen secondary before the failover event
%% occurred.
%% However, the recovery process that promotes a DB instance on the chosen
%% seconday DB cluster to be the primary writer DB instance guarantees
%% that the data is in a transactionally consistent state.
%%
%% For more information about failing over an Amazon Aurora global database,
%% see
%% Performing managed failovers for Aurora global databases:
%% https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-global-database-disaster-recovery.html#aurora-global-database-failover.managed-unplanned
%% in the Amazon Aurora User Guide.
%%
%% Switching over - Use this operation on a healthy global database cluster
%% for planned events, such as Regional rotation or to
%% fail back to the original primary DB cluster after a failover operation.
%% With this operation, there is no data loss.
%%
%% For more information about switching over an Amazon Aurora global
%% database, see
%% Performing switchovers for Aurora global databases:
%% https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-global-database-disaster-recovery.html#aurora-global-database-disaster-recovery.managed-failover
%% in the Amazon Aurora User Guide.
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

%% @doc Lists all tags on an Amazon RDS resource.
%%
%% For an overview on tagging an Amazon RDS resource,
%% see Tagging Amazon RDS Resources:
%% https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html
%% in the Amazon RDS User Guide
%% or Tagging Amazon Aurora and Amazon RDS Resources:
%% https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_Tagging.html
%% in the Amazon Aurora User Guide.
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

%% @doc Changes the audit policy state of a database activity stream to
%% either locked (default) or unlocked.
%%
%% A locked policy is read-only,
%% whereas an unlocked policy is read/write. If your activity stream is
%% started and locked, you can unlock it, customize your audit policy,
%% and then lock your activity stream. Restarting the activity stream
%% isn't required. For more information, see Modifying a database
%% activity stream:
%% https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/DBActivityStreams.Modifying.html
%% in the
%% Amazon RDS User Guide.
%%
%% This operation is supported for RDS for Oracle and Microsoft SQL Server.
-spec modify_activity_stream(aws_client:aws_client(), modify_activity_stream_request()) ->
    {ok, modify_activity_stream_response(), tuple()} |
    {error, any()} |
    {error, modify_activity_stream_errors(), tuple()}.
modify_activity_stream(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_activity_stream(Client, Input, []).

-spec modify_activity_stream(aws_client:aws_client(), modify_activity_stream_request(), proplists:proplist()) ->
    {ok, modify_activity_stream_response(), tuple()} |
    {error, any()} |
    {error, modify_activity_stream_errors(), tuple()}.
modify_activity_stream(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyActivityStream">>, Input, Options).

%% @doc Override the system-default Secure Sockets Layer/Transport Layer
%% Security (SSL/TLS)
%% certificate for Amazon RDS for new DB instances, or remove the override.
%%
%% By using this operation, you can specify an RDS-approved SSL/TLS
%% certificate for new DB
%% instances that is different from the default certificate provided by RDS.
%% You can also
%% use this operation to remove the override, so that new DB instances use
%% the default
%% certificate provided by RDS.
%%
%% You might need to override the default certificate in the following
%% situations:
%%
%% You already migrated your applications to support the latest certificate
%% authority (CA) certificate, but the new CA certificate is not yet
%% the RDS default CA certificate for the specified Amazon Web Services
%% Region.
%%
%% RDS has already moved to a new default CA certificate for the specified
%% Amazon Web Services
%% Region, but you are still in the process of supporting the new CA
%% certificate.
%% In this case, you temporarily need additional time to finish your
%% application
%% changes.
%%
%% For more information about rotating your SSL/TLS certificate for RDS DB
%% engines, see
%%
%% Rotating Your SSL/TLS Certificate:
%% https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.SSL-certificate-rotation.html
%% in the Amazon RDS User Guide.
%%
%% For more information about rotating your SSL/TLS certificate for Aurora DB
%% engines, see
%%
%% Rotating Your SSL/TLS Certificate:
%% https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/UsingWithRDS.SSL-certificate-rotation.html
%% in the Amazon Aurora User Guide.
-spec modify_certificates(aws_client:aws_client(), modify_certificates_message()) ->
    {ok, modify_certificates_result(), tuple()} |
    {error, any()} |
    {error, modify_certificates_errors(), tuple()}.
modify_certificates(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_certificates(Client, Input, []).

-spec modify_certificates(aws_client:aws_client(), modify_certificates_message(), proplists:proplist()) ->
    {ok, modify_certificates_result(), tuple()} |
    {error, any()} |
    {error, modify_certificates_errors(), tuple()}.
modify_certificates(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyCertificates">>, Input, Options).

%% @doc Set the capacity of an Aurora Serverless v1 DB cluster to a specific
%% value.
%%
%% Aurora Serverless v1 scales seamlessly based on the workload on the DB
%% cluster. In some cases, the capacity might not scale
%% fast enough to meet a sudden change in workload, such as a large number of
%% new transactions. Call `ModifyCurrentDBClusterCapacity'
%% to set the capacity explicitly.
%%
%% After this call sets the DB cluster capacity, Aurora Serverless v1 can
%% automatically scale
%% the DB cluster based on the cooldown period for scaling up and the
%% cooldown period
%% for scaling down.
%%
%% For more information about Aurora Serverless v1, see Using Amazon Aurora
%% Serverless v1:
%% https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless.html
%% in the
%% Amazon Aurora User Guide.
%%
%% If you call `ModifyCurrentDBClusterCapacity' with the default
%% `TimeoutAction', connections that
%% prevent Aurora Serverless v1 from finding a scaling point might be
%% dropped. For more information about scaling points,
%% see
%% Autoscaling for Aurora Serverless v1:
%% https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless.how-it-works.html#aurora-serverless.how-it-works.auto-scaling
%% in the Amazon Aurora User Guide.
%%
%% This operation only applies to Aurora Serverless v1 DB clusters.
-spec modify_current_db_cluster_capacity(aws_client:aws_client(), modify_current_db_cluster_capacity_message()) ->
    {ok, db_cluster_capacity_info(), tuple()} |
    {error, any()} |
    {error, modify_current_db_cluster_capacity_errors(), tuple()}.
modify_current_db_cluster_capacity(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_current_db_cluster_capacity(Client, Input, []).

-spec modify_current_db_cluster_capacity(aws_client:aws_client(), modify_current_db_cluster_capacity_message(), proplists:proplist()) ->
    {ok, db_cluster_capacity_info(), tuple()} |
    {error, any()} |
    {error, modify_current_db_cluster_capacity_errors(), tuple()}.
modify_current_db_cluster_capacity(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyCurrentDBClusterCapacity">>, Input, Options).

%% @doc Modifies the status of a custom engine version (CEV).
%%
%% You can find CEVs to modify by calling
%% `DescribeDBEngineVersions'.
%%
%% The MediaImport service that imports files from Amazon S3 to create CEVs
%% isn't integrated with
%% Amazon Web Services CloudTrail. If you turn on data logging for Amazon RDS
%% in CloudTrail, calls to the
%% `ModifyCustomDbEngineVersion' event aren't logged. However, you
%% might see calls from the
%% API gateway that accesses your Amazon S3 bucket. These calls originate
%% from the MediaImport service for
%% the `ModifyCustomDbEngineVersion' event.
%%
%% For more information, see Modifying CEV status:
%% https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/custom-cev.html#custom-cev.modify
%% in the Amazon RDS User Guide.
-spec modify_custom_db_engine_version(aws_client:aws_client(), modify_custom_db_engine_version_message()) ->
    {ok, db_engine_version(), tuple()} |
    {error, any()} |
    {error, modify_custom_db_engine_version_errors(), tuple()}.
modify_custom_db_engine_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_custom_db_engine_version(Client, Input, []).

-spec modify_custom_db_engine_version(aws_client:aws_client(), modify_custom_db_engine_version_message(), proplists:proplist()) ->
    {ok, db_engine_version(), tuple()} |
    {error, any()} |
    {error, modify_custom_db_engine_version_errors(), tuple()}.
modify_custom_db_engine_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyCustomDBEngineVersion">>, Input, Options).

%% @doc Modifies the settings of an Amazon Aurora DB cluster or a Multi-AZ DB
%% cluster.
%%
%% You can change one or more settings by specifying these parameters and the
%% new values in the
%% request.
%%
%% For more information on Amazon Aurora DB clusters, see
%%
%% What is Amazon Aurora?:
%% https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html
%% in the Amazon Aurora User Guide.
%%
%% For more information on Multi-AZ DB clusters, see Multi-AZ DB
%% cluster deployments:
%% https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/multi-az-db-clusters-concepts.html
%% in the Amazon RDS User
%% Guide.
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

%% @doc Modifies the properties of an endpoint in an Amazon Aurora DB
%% cluster.
%%
%% This operation only applies to Aurora DB clusters.
-spec modify_db_cluster_endpoint(aws_client:aws_client(), modify_db_cluster_endpoint_message()) ->
    {ok, db_cluster_endpoint(), tuple()} |
    {error, any()} |
    {error, modify_db_cluster_endpoint_errors(), tuple()}.
modify_db_cluster_endpoint(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_db_cluster_endpoint(Client, Input, []).

-spec modify_db_cluster_endpoint(aws_client:aws_client(), modify_db_cluster_endpoint_message(), proplists:proplist()) ->
    {ok, db_cluster_endpoint(), tuple()} |
    {error, any()} |
    {error, modify_db_cluster_endpoint_errors(), tuple()}.
modify_db_cluster_endpoint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyDBClusterEndpoint">>, Input, Options).

%% @doc Modifies the parameters of a DB cluster parameter group.
%%
%% To modify more than one parameter,
%% submit a list of the following: `ParameterName', `ParameterValue',
%% and `ApplyMethod'. A maximum of 20
%% parameters can be modified in a single request.
%%
%% After you create a DB cluster parameter group, you should wait at least 5
%% minutes
%% before creating your first DB cluster that uses that DB cluster parameter
%% group as the default parameter
%% group. This allows Amazon RDS to fully complete the create operation
%% before the parameter
%% group is used as the default for a new DB cluster. This is especially
%% important for parameters
%% that are critical when creating the default database for a DB cluster,
%% such as the character set
%% for the default database defined by the `character_set_database'
%% parameter. You can use the
%% Parameter Groups option of the Amazon RDS console:
%% https://console.aws.amazon.com/rds/ or the
%% `DescribeDBClusterParameters' operation to verify
%% that your DB cluster parameter group has been created or modified.
%%
%% If the modified DB cluster parameter group is used by an Aurora Serverless
%% v1 cluster, Aurora
%% applies the update immediately. The cluster restart might interrupt your
%% workload. In that case,
%% your application must reopen any connections and retry any transactions
%% that were active
%% when the parameter changes took effect.
%%
%% For more information on Amazon Aurora DB clusters, see
%%
%% What is Amazon Aurora?:
%% https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html
%% in the Amazon Aurora User Guide.
%%
%% For more information on Multi-AZ DB clusters, see Multi-AZ DB
%% cluster deployments:
%% https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/multi-az-db-clusters-concepts.html
%% in the Amazon RDS User
%% Guide.
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
%% from, a manual DB cluster snapshot.
%%
%% To share a manual DB cluster snapshot with other Amazon Web Services
%% accounts, specify
%% `restore' as the `AttributeName' and use the
%% `ValuesToAdd' parameter to add a list of IDs of the Amazon Web
%% Services accounts that are
%% authorized to restore the manual DB cluster snapshot. Use the value
%% `all' to
%% make the manual DB cluster snapshot public, which means that it can be
%% copied or
%% restored by all Amazon Web Services accounts.
%%
%% Don't add the `all' value for any manual DB cluster snapshots
%% that contain private information that you don't want available to all
%% Amazon Web Services
%% accounts.
%%
%% If a manual DB cluster snapshot is encrypted, it can be shared, but only
%% by
%% specifying a list of authorized Amazon Web Services account IDs for the
%% `ValuesToAdd'
%% parameter. You can't use `all' as a value for that parameter in
%% this
%% case.
%%
%% To view which Amazon Web Services accounts have access to copy or restore
%% a manual DB cluster
%% snapshot, or whether a manual DB cluster snapshot is public or private,
%% use the `DescribeDBClusterSnapshotAttributes' API operation. The
%% accounts are
%% returned as values for the `restore' attribute.
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

%% @doc Modifies settings for a DB instance.
%%
%% You can change one or more database configuration parameters by specifying
%% these parameters and the new values in the request.
%% To learn what modifications you can make to your DB instance,
%% call `DescribeValidDBInstanceModifications'
%% before you call `ModifyDBInstance'.
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

%% @doc Modifies the parameters of a DB parameter group.
%%
%% To modify more than one parameter,
%% submit a list of the following: `ParameterName', `ParameterValue',
%% and
%% `ApplyMethod'. A maximum of 20 parameters can be modified in a single
%% request.
%%
%% After you modify a DB parameter group, you should wait at least 5 minutes
%% before creating your first DB instance that uses that DB parameter group
%% as the default parameter
%% group. This allows Amazon RDS to fully complete the modify operation
%% before the parameter
%% group is used as the default for a new DB instance. This is especially
%% important for parameters
%% that are critical when creating the default database for a DB instance,
%% such as the character set
%% for the default database defined by the `character_set_database'
%% parameter. You can use the
%% Parameter Groups option of the Amazon RDS console:
%% https://console.aws.amazon.com/rds/ or the
%% DescribeDBParameters command to verify
%% that your DB parameter group has been created or modified.
-spec modify_db_parameter_group(aws_client:aws_client(), modify_db_parameter_group_message()) ->
    {ok, db_parameter_group_name_message(), tuple()} |
    {error, any()} |
    {error, modify_db_parameter_group_errors(), tuple()}.
modify_db_parameter_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_db_parameter_group(Client, Input, []).

-spec modify_db_parameter_group(aws_client:aws_client(), modify_db_parameter_group_message(), proplists:proplist()) ->
    {ok, db_parameter_group_name_message(), tuple()} |
    {error, any()} |
    {error, modify_db_parameter_group_errors(), tuple()}.
modify_db_parameter_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyDBParameterGroup">>, Input, Options).

%% @doc Changes the settings for an existing DB proxy.
-spec modify_db_proxy(aws_client:aws_client(), modify_db_proxy_request()) ->
    {ok, modify_db_proxy_response(), tuple()} |
    {error, any()} |
    {error, modify_db_proxy_errors(), tuple()}.
modify_db_proxy(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_db_proxy(Client, Input, []).

-spec modify_db_proxy(aws_client:aws_client(), modify_db_proxy_request(), proplists:proplist()) ->
    {ok, modify_db_proxy_response(), tuple()} |
    {error, any()} |
    {error, modify_db_proxy_errors(), tuple()}.
modify_db_proxy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyDBProxy">>, Input, Options).

%% @doc Changes the settings for an existing DB proxy endpoint.
-spec modify_db_proxy_endpoint(aws_client:aws_client(), modify_db_proxy_endpoint_request()) ->
    {ok, modify_db_proxy_endpoint_response(), tuple()} |
    {error, any()} |
    {error, modify_db_proxy_endpoint_errors(), tuple()}.
modify_db_proxy_endpoint(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_db_proxy_endpoint(Client, Input, []).

-spec modify_db_proxy_endpoint(aws_client:aws_client(), modify_db_proxy_endpoint_request(), proplists:proplist()) ->
    {ok, modify_db_proxy_endpoint_response(), tuple()} |
    {error, any()} |
    {error, modify_db_proxy_endpoint_errors(), tuple()}.
modify_db_proxy_endpoint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyDBProxyEndpoint">>, Input, Options).

%% @doc Modifies the properties of a `DBProxyTargetGroup'.
-spec modify_db_proxy_target_group(aws_client:aws_client(), modify_db_proxy_target_group_request()) ->
    {ok, modify_db_proxy_target_group_response(), tuple()} |
    {error, any()} |
    {error, modify_db_proxy_target_group_errors(), tuple()}.
modify_db_proxy_target_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_db_proxy_target_group(Client, Input, []).

-spec modify_db_proxy_target_group(aws_client:aws_client(), modify_db_proxy_target_group_request(), proplists:proplist()) ->
    {ok, modify_db_proxy_target_group_response(), tuple()} |
    {error, any()} |
    {error, modify_db_proxy_target_group_errors(), tuple()}.
modify_db_proxy_target_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyDBProxyTargetGroup">>, Input, Options).

%% @doc Updates the recommendation status and recommended action status for
%% the specified recommendation.
-spec modify_db_recommendation(aws_client:aws_client(), modify_db_recommendation_message()) ->
    {ok, db_recommendation_message(), tuple()} |
    {error, any()}.
modify_db_recommendation(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_db_recommendation(Client, Input, []).

-spec modify_db_recommendation(aws_client:aws_client(), modify_db_recommendation_message(), proplists:proplist()) ->
    {ok, db_recommendation_message(), tuple()} |
    {error, any()}.
modify_db_recommendation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyDBRecommendation">>, Input, Options).

%% @doc Modifies the settings of an Aurora Limitless Database DB shard group.
%%
%% You can change one or more settings by
%% specifying these parameters and the new values in the request.
-spec modify_db_shard_group(aws_client:aws_client(), modify_db_shard_group_message()) ->
    {ok, db_shard_group(), tuple()} |
    {error, any()} |
    {error, modify_db_shard_group_errors(), tuple()}.
modify_db_shard_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_db_shard_group(Client, Input, []).

-spec modify_db_shard_group(aws_client:aws_client(), modify_db_shard_group_message(), proplists:proplist()) ->
    {ok, db_shard_group(), tuple()} |
    {error, any()} |
    {error, modify_db_shard_group_errors(), tuple()}.
modify_db_shard_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyDBShardGroup">>, Input, Options).

%% @doc Updates a manual DB snapshot with a new engine version.
%%
%% The snapshot can be encrypted
%% or unencrypted, but not shared or public.
%%
%% Amazon RDS supports upgrading DB snapshots for MySQL, PostgreSQL, and
%% Oracle. This operation
%% doesn't apply to RDS Custom or RDS for Db2.
-spec modify_db_snapshot(aws_client:aws_client(), modify_db_snapshot_message()) ->
    {ok, modify_db_snapshot_result(), tuple()} |
    {error, any()} |
    {error, modify_db_snapshot_errors(), tuple()}.
modify_db_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_db_snapshot(Client, Input, []).

-spec modify_db_snapshot(aws_client:aws_client(), modify_db_snapshot_message(), proplists:proplist()) ->
    {ok, modify_db_snapshot_result(), tuple()} |
    {error, any()} |
    {error, modify_db_snapshot_errors(), tuple()}.
modify_db_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyDBSnapshot">>, Input, Options).

%% @doc Adds an attribute and values to, or removes an attribute and values
%% from, a manual DB snapshot.
%%
%% To share a manual DB snapshot with other Amazon Web Services accounts,
%% specify `restore'
%% as the `AttributeName' and use the `ValuesToAdd' parameter to add
%% a list of IDs of the Amazon Web Services accounts that are authorized to
%% restore the manual DB snapshot.
%% Uses the value `all' to make the manual DB snapshot public, which
%% means it
%% can be copied or restored by all Amazon Web Services accounts.
%%
%% Don't add the `all' value for any manual DB snapshots that
%% contain private information that you don't want available to all
%% Amazon Web Services
%% accounts.
%%
%% If the manual DB snapshot is encrypted, it can be shared, but only by
%% specifying a
%% list of authorized Amazon Web Services account IDs for the
%% `ValuesToAdd' parameter. You
%% can't use `all' as a value for that parameter in this case.
%%
%% To view which Amazon Web Services accounts have access to copy or restore
%% a manual DB snapshot, or
%% whether a manual DB snapshot public or private, use the
%% `DescribeDBSnapshotAttributes' API operation. The accounts are
%% returned as
%% values for the `restore' attribute.
-spec modify_db_snapshot_attribute(aws_client:aws_client(), modify_db_snapshot_attribute_message()) ->
    {ok, modify_db_snapshot_attribute_result(), tuple()} |
    {error, any()} |
    {error, modify_db_snapshot_attribute_errors(), tuple()}.
modify_db_snapshot_attribute(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_db_snapshot_attribute(Client, Input, []).

-spec modify_db_snapshot_attribute(aws_client:aws_client(), modify_db_snapshot_attribute_message(), proplists:proplist()) ->
    {ok, modify_db_snapshot_attribute_result(), tuple()} |
    {error, any()} |
    {error, modify_db_snapshot_attribute_errors(), tuple()}.
modify_db_snapshot_attribute(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyDBSnapshotAttribute">>, Input, Options).

%% @doc Modifies an existing DB subnet group.
%%
%% DB subnet groups must contain at least one subnet in at least two AZs in
%% the Amazon Web Services Region.
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

%% @doc Modifies an existing RDS event notification subscription.
%%
%% You can't modify the source identifiers using this call. To change
%% source identifiers for a subscription, use the
%% `AddSourceIdentifierToSubscription' and
%% `RemoveSourceIdentifierFromSubscription' calls.
%%
%% You can see a list of the event categories for a given source type
%% (`SourceType')
%% in Events:
%% https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Events.html in
%% the Amazon RDS User Guide
%% or by using the `DescribeEventCategories' operation.
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

%% @doc Modifies a setting for an Amazon Aurora global database cluster.
%%
%% You can change one or more database configuration
%% parameters by specifying these parameters and the new values in the
%% request. For more information on
%% Amazon Aurora, see What is Amazon Aurora?:
%% https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html
%% in the
%% Amazon Aurora User Guide.
%%
%% This operation only applies to Aurora global database clusters.
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

%% @doc Modifies a zero-ETL integration with Amazon Redshift.
%%
%% Currently, you can only modify integrations that have Aurora MySQL source
%% DB clusters. Integrations with Aurora PostgreSQL and RDS sources currently
%% don't support modifying the integration.
-spec modify_integration(aws_client:aws_client(), modify_integration_message()) ->
    {ok, integration(), tuple()} |
    {error, any()} |
    {error, modify_integration_errors(), tuple()}.
modify_integration(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_integration(Client, Input, []).

-spec modify_integration(aws_client:aws_client(), modify_integration_message(), proplists:proplist()) ->
    {ok, integration(), tuple()} |
    {error, any()} |
    {error, modify_integration_errors(), tuple()}.
modify_integration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyIntegration">>, Input, Options).

%% @doc Modifies an existing option group.
-spec modify_option_group(aws_client:aws_client(), modify_option_group_message()) ->
    {ok, modify_option_group_result(), tuple()} |
    {error, any()} |
    {error, modify_option_group_errors(), tuple()}.
modify_option_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_option_group(Client, Input, []).

-spec modify_option_group(aws_client:aws_client(), modify_option_group_message(), proplists:proplist()) ->
    {ok, modify_option_group_result(), tuple()} |
    {error, any()} |
    {error, modify_option_group_errors(), tuple()}.
modify_option_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyOptionGroup">>, Input, Options).

%% @doc Modifies an existing tenant database in a DB instance.
%%
%% You can change the tenant
%% database name or the master user password. This operation is supported
%% only for RDS for
%% Oracle CDB instances using the multi-tenant configuration.
-spec modify_tenant_database(aws_client:aws_client(), modify_tenant_database_message()) ->
    {ok, modify_tenant_database_result(), tuple()} |
    {error, any()} |
    {error, modify_tenant_database_errors(), tuple()}.
modify_tenant_database(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_tenant_database(Client, Input, []).

-spec modify_tenant_database(aws_client:aws_client(), modify_tenant_database_message(), proplists:proplist()) ->
    {ok, modify_tenant_database_result(), tuple()} |
    {error, any()} |
    {error, modify_tenant_database_errors(), tuple()}.
modify_tenant_database(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyTenantDatabase">>, Input, Options).

%% @doc Promotes a read replica DB instance to a standalone DB instance.
%%
%% Backup duration is a function of the amount of changes to the database
%% since the previous
%% backup. If you plan to promote a read replica to a standalone instance, we
%% recommend that you enable backups and complete at least one backup prior
%% to
%% promotion. In addition, a read replica cannot be promoted to a standalone
%% instance when it is in the `backing-up' status. If you have
%% enabled backups on your read replica, configure the automated backup
%% window
%% so that daily backups do not interfere with read replica
%% promotion.
%%
%% This command doesn't apply to Aurora MySQL, Aurora PostgreSQL, or RDS
%% Custom.
-spec promote_read_replica(aws_client:aws_client(), promote_read_replica_message()) ->
    {ok, promote_read_replica_result(), tuple()} |
    {error, any()} |
    {error, promote_read_replica_errors(), tuple()}.
promote_read_replica(Client, Input)
  when is_map(Client), is_map(Input) ->
    promote_read_replica(Client, Input, []).

-spec promote_read_replica(aws_client:aws_client(), promote_read_replica_message(), proplists:proplist()) ->
    {ok, promote_read_replica_result(), tuple()} |
    {error, any()} |
    {error, promote_read_replica_errors(), tuple()}.
promote_read_replica(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PromoteReadReplica">>, Input, Options).

%% @doc Promotes a read replica DB cluster to a standalone DB cluster.
-spec promote_read_replica_db_cluster(aws_client:aws_client(), promote_read_replica_db_cluster_message()) ->
    {ok, promote_read_replica_db_cluster_result(), tuple()} |
    {error, any()} |
    {error, promote_read_replica_db_cluster_errors(), tuple()}.
promote_read_replica_db_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    promote_read_replica_db_cluster(Client, Input, []).

-spec promote_read_replica_db_cluster(aws_client:aws_client(), promote_read_replica_db_cluster_message(), proplists:proplist()) ->
    {ok, promote_read_replica_db_cluster_result(), tuple()} |
    {error, any()} |
    {error, promote_read_replica_db_cluster_errors(), tuple()}.
promote_read_replica_db_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PromoteReadReplicaDBCluster">>, Input, Options).

%% @doc Purchases a reserved DB instance offering.
-spec purchase_reserved_db_instances_offering(aws_client:aws_client(), purchase_reserved_db_instances_offering_message()) ->
    {ok, purchase_reserved_db_instances_offering_result(), tuple()} |
    {error, any()} |
    {error, purchase_reserved_db_instances_offering_errors(), tuple()}.
purchase_reserved_db_instances_offering(Client, Input)
  when is_map(Client), is_map(Input) ->
    purchase_reserved_db_instances_offering(Client, Input, []).

-spec purchase_reserved_db_instances_offering(aws_client:aws_client(), purchase_reserved_db_instances_offering_message(), proplists:proplist()) ->
    {ok, purchase_reserved_db_instances_offering_result(), tuple()} |
    {error, any()} |
    {error, purchase_reserved_db_instances_offering_errors(), tuple()}.
purchase_reserved_db_instances_offering(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PurchaseReservedDBInstancesOffering">>, Input, Options).

%% @doc You might need to reboot your DB cluster, usually for maintenance
%% reasons.
%%
%% For example, if you make certain modifications,
%% or if you change the DB cluster parameter group associated with the DB
%% cluster,
%% reboot the DB cluster for the changes to take effect.
%%
%% Rebooting a DB cluster restarts the database engine service. Rebooting a
%% DB
%% cluster results in a momentary outage, during which the DB cluster status
%% is set to rebooting.
%%
%% Use this operation only for a non-Aurora Multi-AZ DB cluster.
%%
%% For more information on Multi-AZ DB clusters, see Multi-AZ DB
%% cluster deployments:
%% https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/multi-az-db-clusters-concepts.html
%% in the Amazon RDS User
%% Guide.
-spec reboot_db_cluster(aws_client:aws_client(), reboot_db_cluster_message()) ->
    {ok, reboot_db_cluster_result(), tuple()} |
    {error, any()} |
    {error, reboot_db_cluster_errors(), tuple()}.
reboot_db_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    reboot_db_cluster(Client, Input, []).

-spec reboot_db_cluster(aws_client:aws_client(), reboot_db_cluster_message(), proplists:proplist()) ->
    {ok, reboot_db_cluster_result(), tuple()} |
    {error, any()} |
    {error, reboot_db_cluster_errors(), tuple()}.
reboot_db_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RebootDBCluster">>, Input, Options).

%% @doc You might need to reboot your DB instance, usually for maintenance
%% reasons.
%%
%% For example, if you make certain modifications,
%% or if you change the DB parameter group associated with the DB instance,
%% you must reboot the instance for the changes to take effect.
%%
%% Rebooting a DB instance restarts the database engine service.
%% Rebooting a DB instance results in a momentary outage, during which the DB
%% instance status is set to rebooting.
%%
%% For more information about rebooting, see Rebooting a DB Instance:
%% https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_RebootInstance.html
%% in the Amazon RDS User Guide.
%%
%% This command doesn't apply to RDS Custom.
%%
%% If your DB instance is part of a Multi-AZ DB cluster, you can reboot the
%% DB cluster with the `RebootDBCluster' operation.
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

%% @doc You might need to reboot your DB shard group, usually for maintenance
%% reasons.
%%
%% For example, if you make certain modifications, reboot
%% the DB shard group for the changes to take effect.
%%
%% This operation applies only to Aurora Limitless Database DBb shard groups.
-spec reboot_db_shard_group(aws_client:aws_client(), reboot_db_shard_group_message()) ->
    {ok, db_shard_group(), tuple()} |
    {error, any()} |
    {error, reboot_db_shard_group_errors(), tuple()}.
reboot_db_shard_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    reboot_db_shard_group(Client, Input, []).

-spec reboot_db_shard_group(aws_client:aws_client(), reboot_db_shard_group_message(), proplists:proplist()) ->
    {ok, db_shard_group(), tuple()} |
    {error, any()} |
    {error, reboot_db_shard_group_errors(), tuple()}.
reboot_db_shard_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RebootDBShardGroup">>, Input, Options).

%% @doc Associate one or more `DBProxyTarget' data structures with a
%% `DBProxyTargetGroup'.
-spec register_db_proxy_targets(aws_client:aws_client(), register_db_proxy_targets_request()) ->
    {ok, register_db_proxy_targets_response(), tuple()} |
    {error, any()} |
    {error, register_db_proxy_targets_errors(), tuple()}.
register_db_proxy_targets(Client, Input)
  when is_map(Client), is_map(Input) ->
    register_db_proxy_targets(Client, Input, []).

-spec register_db_proxy_targets(aws_client:aws_client(), register_db_proxy_targets_request(), proplists:proplist()) ->
    {ok, register_db_proxy_targets_response(), tuple()} |
    {error, any()} |
    {error, register_db_proxy_targets_errors(), tuple()}.
register_db_proxy_targets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RegisterDBProxyTargets">>, Input, Options).

%% @doc Detaches an Aurora secondary cluster from an Aurora global database
%% cluster.
%%
%% The cluster becomes a
%% standalone cluster with read-write capability instead of being read-only
%% and receiving data from a
%% primary cluster in a different Region.
%%
%% This operation only applies to Aurora DB clusters.
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

%% @doc Removes the asssociation of an Amazon Web Services Identity and
%% Access Management (IAM) role from a
%% DB cluster.
%%
%% For more information on Amazon Aurora DB clusters, see
%%
%% What is Amazon Aurora?:
%% https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html
%% in the Amazon Aurora User Guide.
%%
%% For more information on Multi-AZ DB clusters, see Multi-AZ DB
%% cluster deployments:
%% https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/multi-az-db-clusters-concepts.html
%% in the Amazon RDS User
%% Guide.
-spec remove_role_from_db_cluster(aws_client:aws_client(), remove_role_from_db_cluster_message()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, remove_role_from_db_cluster_errors(), tuple()}.
remove_role_from_db_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    remove_role_from_db_cluster(Client, Input, []).

-spec remove_role_from_db_cluster(aws_client:aws_client(), remove_role_from_db_cluster_message(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, remove_role_from_db_cluster_errors(), tuple()}.
remove_role_from_db_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RemoveRoleFromDBCluster">>, Input, Options).

%% @doc Disassociates an Amazon Web Services Identity and Access Management
%% (IAM) role from a DB instance.
-spec remove_role_from_db_instance(aws_client:aws_client(), remove_role_from_db_instance_message()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, remove_role_from_db_instance_errors(), tuple()}.
remove_role_from_db_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    remove_role_from_db_instance(Client, Input, []).

-spec remove_role_from_db_instance(aws_client:aws_client(), remove_role_from_db_instance_message(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, remove_role_from_db_instance_errors(), tuple()}.
remove_role_from_db_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RemoveRoleFromDBInstance">>, Input, Options).

%% @doc Removes a source identifier from an existing RDS event notification
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

%% @doc Removes metadata tags from an Amazon RDS resource.
%%
%% For an overview on tagging an Amazon RDS resource,
%% see Tagging Amazon RDS Resources:
%% https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html
%% in the Amazon RDS User Guide
%% or Tagging Amazon Aurora and Amazon RDS Resources:
%% https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_Tagging.html
%% in the Amazon Aurora User Guide.
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

%% @doc Modifies the parameters of a DB cluster parameter group to the
%% default value.
%%
%% To
%% reset specific parameters submit a list of the following:
%% `ParameterName'
%% and `ApplyMethod'. To reset the
%% entire DB cluster parameter group, specify the
%% `DBClusterParameterGroupName'
%% and `ResetAllParameters' parameters.
%%
%% When resetting the entire group, dynamic parameters are updated
%% immediately and static parameters
%% are set to `pending-reboot' to take effect on the next DB instance
%% restart
%% or `RebootDBInstance' request. You must call `RebootDBInstance'
%% for every
%% DB instance in your DB cluster that you want the updated static parameter
%% to apply to.
%%
%% For more information on Amazon Aurora DB clusters, see
%%
%% What is Amazon Aurora?:
%% https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html
%% in the Amazon Aurora User Guide.
%%
%% For more information on Multi-AZ DB clusters, see Multi-AZ DB
%% cluster deployments:
%% https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/multi-az-db-clusters-concepts.html
%% in the Amazon RDS User
%% Guide.
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

%% @doc Modifies the parameters of a DB parameter group to the engine/system
%% default value.
%%
%% To reset specific parameters, provide a list of the following:
%% `ParameterName' and `ApplyMethod'. To reset the entire DB
%% parameter group, specify the `DBParameterGroup' name and
%% `ResetAllParameters' parameters. When resetting the entire group,
%% dynamic
%% parameters are updated immediately and static parameters are set to
%% `pending-reboot' to take effect on the next DB instance restart or
%% `RebootDBInstance' request.
-spec reset_db_parameter_group(aws_client:aws_client(), reset_db_parameter_group_message()) ->
    {ok, db_parameter_group_name_message(), tuple()} |
    {error, any()} |
    {error, reset_db_parameter_group_errors(), tuple()}.
reset_db_parameter_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    reset_db_parameter_group(Client, Input, []).

-spec reset_db_parameter_group(aws_client:aws_client(), reset_db_parameter_group_message(), proplists:proplist()) ->
    {ok, db_parameter_group_name_message(), tuple()} |
    {error, any()} |
    {error, reset_db_parameter_group_errors(), tuple()}.
reset_db_parameter_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ResetDBParameterGroup">>, Input, Options).

%% @doc Creates an Amazon Aurora DB cluster from MySQL data stored in an
%% Amazon S3 bucket.
%%
%% Amazon RDS must be authorized to access the Amazon S3 bucket and the data
%% must be
%% created using the Percona XtraBackup utility as described in Migrating
%% Data from MySQL by Using an Amazon S3 Bucket:
%% https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/AuroraMySQL.Migrating.ExtMySQL.html#AuroraMySQL.Migrating.ExtMySQL.S3
%% in the
%% Amazon Aurora User Guide.
%%
%% This operation only restores the DB cluster, not the DB instances for that
%% DB
%% cluster. You must invoke the `CreateDBInstance' operation to create DB
%% instances for the restored DB cluster, specifying the identifier of the
%% restored DB
%% cluster in `DBClusterIdentifier'. You can create DB instances only
%% after
%% the `RestoreDBClusterFromS3' operation has completed and the DB
%% cluster is available.
%%
%% For more information on Amazon Aurora, see
%%
%% What is Amazon Aurora?:
%% https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html
%% in the Amazon Aurora User Guide.
%%
%% This operation only applies to Aurora DB clusters. The source DB engine
%% must be MySQL.
-spec restore_db_cluster_from_s3(aws_client:aws_client(), restore_db_cluster_from_s3_message()) ->
    {ok, restore_db_cluster_from_s3_result(), tuple()} |
    {error, any()} |
    {error, restore_db_cluster_from_s3_errors(), tuple()}.
restore_db_cluster_from_s3(Client, Input)
  when is_map(Client), is_map(Input) ->
    restore_db_cluster_from_s3(Client, Input, []).

-spec restore_db_cluster_from_s3(aws_client:aws_client(), restore_db_cluster_from_s3_message(), proplists:proplist()) ->
    {ok, restore_db_cluster_from_s3_result(), tuple()} |
    {error, any()} |
    {error, restore_db_cluster_from_s3_errors(), tuple()}.
restore_db_cluster_from_s3(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RestoreDBClusterFromS3">>, Input, Options).

%% @doc Creates a new DB cluster from a DB snapshot or DB cluster snapshot.
%%
%% The target DB cluster is created from the source snapshot with a default
%% configuration. If you don't specify a security group, the new DB
%% cluster is
%% associated with the default security group.
%%
%% This operation only restores the DB cluster, not the DB instances for that
%% DB
%% cluster. You must invoke the `CreateDBInstance' operation to create DB
%% instances for the restored DB cluster, specifying the identifier of the
%% restored DB
%% cluster in `DBClusterIdentifier'. You can create DB instances only
%% after
%% the `RestoreDBClusterFromSnapshot' operation has completed and the DB
%% cluster is available.
%%
%% For more information on Amazon Aurora DB clusters, see
%%
%% What is Amazon Aurora?:
%% https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html
%% in the Amazon Aurora User Guide.
%%
%% For more information on Multi-AZ DB clusters, see Multi-AZ DB
%% cluster deployments:
%% https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/multi-az-db-clusters-concepts.html
%% in the Amazon RDS User
%% Guide.
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

%% @doc Restores a DB cluster to an arbitrary point in time.
%%
%% Users can restore to any point
%% in time before `LatestRestorableTime' for up to
%% `BackupRetentionPeriod' days. The target DB cluster is created from
%% the
%% source DB cluster with the same configuration as the original DB cluster,
%% except that
%% the new DB cluster is created with the default DB security group.
%%
%% For Aurora, this operation only restores the DB cluster, not the DB
%% instances for that DB
%% cluster. You must invoke the `CreateDBInstance' operation to create DB
%% instances for the restored DB cluster, specifying the identifier of the
%% restored DB
%% cluster in `DBClusterIdentifier'. You can create DB instances only
%% after
%% the `RestoreDBClusterToPointInTime' operation has completed and the DB
%% cluster is available.
%%
%% For more information on Amazon Aurora DB clusters, see
%%
%% What is Amazon Aurora?:
%% https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html
%% in the Amazon Aurora User Guide.
%%
%% For more information on Multi-AZ DB clusters, see Multi-AZ DB
%% cluster deployments:
%% https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/multi-az-db-clusters-concepts.html
%% in the Amazon RDS User
%% Guide.
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

%% @doc Creates a new DB instance from a DB snapshot.
%%
%% The target database is created from the source database restore point with
%% most
%% of the source's original configuration, including the default security
%% group and DB parameter group. By default, the new DB
%% instance is created as a Single-AZ deployment, except when the instance is
%% a SQL Server instance that has an option group
%% associated with mirroring. In this case, the instance becomes a Multi-AZ
%% deployment, not a Single-AZ deployment.
%%
%% If you want to replace your original DB instance with the new, restored DB
%% instance, then rename your original DB instance
%% before you call the `RestoreDBInstanceFromDBSnapshot' operation. RDS
%% doesn't allow two DB instances with the same name. After you
%% have renamed your original DB instance with a different identifier, then
%% you can pass the original name of the DB instance as
%% the `DBInstanceIdentifier' in the call to the
%% `RestoreDBInstanceFromDBSnapshot' operation. The result is that you
%% replace the original
%% DB instance with the DB instance created from the snapshot.
%%
%% If you are restoring from a shared manual DB snapshot, the
%% `DBSnapshotIdentifier'
%% must be the ARN of the shared DB snapshot.
%%
%% To restore from a DB snapshot with an unsupported engine version, you must
%% first upgrade the
%% engine version of the snapshot. For more information about upgrading a RDS
%% for MySQL DB snapshot engine version, see Upgrading a MySQL DB snapshot
%% engine version:
%% https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/mysql-upgrade-snapshot.html.
%% For more information about upgrading a RDS for PostgreSQL DB snapshot
%% engine version, Upgrading a PostgreSQL DB snapshot engine version:
%% https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_UpgradeDBSnapshot.PostgreSQL.html.
%%
%% This command doesn't apply to Aurora MySQL and Aurora PostgreSQL. For
%% Aurora, use `RestoreDBClusterFromSnapshot'.
-spec restore_db_instance_from_db_snapshot(aws_client:aws_client(), restore_db_instance_from_db_snapshot_message()) ->
    {ok, restore_db_instance_from_db_snapshot_result(), tuple()} |
    {error, any()} |
    {error, restore_db_instance_from_db_snapshot_errors(), tuple()}.
restore_db_instance_from_db_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    restore_db_instance_from_db_snapshot(Client, Input, []).

-spec restore_db_instance_from_db_snapshot(aws_client:aws_client(), restore_db_instance_from_db_snapshot_message(), proplists:proplist()) ->
    {ok, restore_db_instance_from_db_snapshot_result(), tuple()} |
    {error, any()} |
    {error, restore_db_instance_from_db_snapshot_errors(), tuple()}.
restore_db_instance_from_db_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RestoreDBInstanceFromDBSnapshot">>, Input, Options).

%% @doc Amazon Relational Database Service (Amazon RDS)
%% supports importing MySQL databases by using backup files.
%%
%% You can create a backup of your on-premises database,
%% store it on Amazon Simple Storage Service (Amazon S3),
%% and then restore the backup file onto a new Amazon RDS DB instance running
%% MySQL.
%% For more information, see Importing Data into an Amazon RDS MySQL DB
%% Instance:
%% https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/MySQL.Procedural.Importing.html
%% in the Amazon RDS User Guide.
%%
%% This operation doesn't apply to RDS Custom.
-spec restore_db_instance_from_s3(aws_client:aws_client(), restore_db_instance_from_s3_message()) ->
    {ok, restore_db_instance_from_s3_result(), tuple()} |
    {error, any()} |
    {error, restore_db_instance_from_s3_errors(), tuple()}.
restore_db_instance_from_s3(Client, Input)
  when is_map(Client), is_map(Input) ->
    restore_db_instance_from_s3(Client, Input, []).

-spec restore_db_instance_from_s3(aws_client:aws_client(), restore_db_instance_from_s3_message(), proplists:proplist()) ->
    {ok, restore_db_instance_from_s3_result(), tuple()} |
    {error, any()} |
    {error, restore_db_instance_from_s3_errors(), tuple()}.
restore_db_instance_from_s3(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RestoreDBInstanceFromS3">>, Input, Options).

%% @doc Restores a DB instance to an arbitrary point in time.
%%
%% You can restore to any point in time before the time identified by the
%% `LatestRestorableTime' property. You can restore to a point up to the
%% number of days specified by the `BackupRetentionPeriod' property.
%%
%% The target database is created with most of the original configuration,
%% but in a
%% system-selected Availability Zone, with the default security group, the
%% default subnet
%% group, and the default DB parameter group. By default, the new DB instance
%% is created as
%% a single-AZ deployment except when the instance is a SQL Server instance
%% that has an
%% option group that is associated with mirroring; in this case, the instance
%% becomes a
%% mirrored deployment and not a single-AZ deployment.
%%
%% This operation doesn't apply to Aurora MySQL and Aurora PostgreSQL.
%% For Aurora, use `RestoreDBClusterToPointInTime'.
-spec restore_db_instance_to_point_in_time(aws_client:aws_client(), restore_db_instance_to_point_in_time_message()) ->
    {ok, restore_db_instance_to_point_in_time_result(), tuple()} |
    {error, any()} |
    {error, restore_db_instance_to_point_in_time_errors(), tuple()}.
restore_db_instance_to_point_in_time(Client, Input)
  when is_map(Client), is_map(Input) ->
    restore_db_instance_to_point_in_time(Client, Input, []).

-spec restore_db_instance_to_point_in_time(aws_client:aws_client(), restore_db_instance_to_point_in_time_message(), proplists:proplist()) ->
    {ok, restore_db_instance_to_point_in_time_result(), tuple()} |
    {error, any()} |
    {error, restore_db_instance_to_point_in_time_errors(), tuple()}.
restore_db_instance_to_point_in_time(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RestoreDBInstanceToPointInTime">>, Input, Options).

%% @doc Revokes ingress from a DBSecurityGroup for previously authorized IP
%% ranges or EC2 or VPC security groups.
%%
%% Required
%% parameters for this API are one of CIDRIP, EC2SecurityGroupId for VPC, or
%% (EC2SecurityGroupOwnerId and either
%% EC2SecurityGroupName or EC2SecurityGroupId).
%%
%% EC2-Classic was retired on August 15, 2022. If you haven't migrated
%% from EC2-Classic to a VPC, we recommend that
%% you migrate as soon as possible. For more information, see Migrate from
%% EC2-Classic to a VPC:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-migrate.html in
%% the
%% Amazon EC2 User Guide, the blog EC2-Classic Networking is Retiring –
%% Here’s How to Prepare:
%% http://aws.amazon.com/blogs/aws/ec2-classic-is-retiring-heres-how-to-prepare/,
%% and Moving a DB instance not in a VPC
%% into a VPC:
%% https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_VPC.Non-VPC2VPC.html
%% in the Amazon RDS User Guide.
-spec revoke_db_security_group_ingress(aws_client:aws_client(), revoke_db_security_group_ingress_message()) ->
    {ok, revoke_db_security_group_ingress_result(), tuple()} |
    {error, any()} |
    {error, revoke_db_security_group_ingress_errors(), tuple()}.
revoke_db_security_group_ingress(Client, Input)
  when is_map(Client), is_map(Input) ->
    revoke_db_security_group_ingress(Client, Input, []).

-spec revoke_db_security_group_ingress(aws_client:aws_client(), revoke_db_security_group_ingress_message(), proplists:proplist()) ->
    {ok, revoke_db_security_group_ingress_result(), tuple()} |
    {error, any()} |
    {error, revoke_db_security_group_ingress_errors(), tuple()}.
revoke_db_security_group_ingress(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RevokeDBSecurityGroupIngress">>, Input, Options).

%% @doc Starts a database activity stream to monitor activity on the
%% database.
%%
%% For more information, see
%%
%% Monitoring Amazon Aurora with Database Activity Streams:
%% https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/DBActivityStreams.html
%% in the Amazon Aurora User Guide or
%%
%% Monitoring Amazon RDS with Database Activity Streams:
%% https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/DBActivityStreams.html
%% in the Amazon RDS User Guide.
-spec start_activity_stream(aws_client:aws_client(), start_activity_stream_request()) ->
    {ok, start_activity_stream_response(), tuple()} |
    {error, any()} |
    {error, start_activity_stream_errors(), tuple()}.
start_activity_stream(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_activity_stream(Client, Input, []).

-spec start_activity_stream(aws_client:aws_client(), start_activity_stream_request(), proplists:proplist()) ->
    {ok, start_activity_stream_response(), tuple()} |
    {error, any()} |
    {error, start_activity_stream_errors(), tuple()}.
start_activity_stream(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartActivityStream">>, Input, Options).

%% @doc Starts an Amazon Aurora DB cluster that was stopped using the Amazon
%% Web Services console, the stop-db-cluster
%% CLI command, or the `StopDBCluster' operation.
%%
%% For more information, see
%%
%% Stopping and Starting an Aurora Cluster:
%% https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-cluster-stop-start.html
%% in the Amazon Aurora User Guide.
%%
%% This operation only applies to Aurora DB clusters.
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

%% @doc Starts an Amazon RDS DB instance that was stopped using the Amazon
%% Web Services console, the stop-db-instance CLI command, or the
%% `StopDBInstance' operation.
%%
%% For more information, see
%%
%% Starting an Amazon RDS DB instance That Was Previously Stopped:
%% https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_StartInstance.html
%% in the
%% Amazon RDS User Guide.
%%
%% This command doesn't apply to RDS Custom, Aurora MySQL, and Aurora
%% PostgreSQL.
%% For Aurora DB clusters, use `StartDBCluster' instead.
-spec start_db_instance(aws_client:aws_client(), start_db_instance_message()) ->
    {ok, start_db_instance_result(), tuple()} |
    {error, any()} |
    {error, start_db_instance_errors(), tuple()}.
start_db_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_db_instance(Client, Input, []).

-spec start_db_instance(aws_client:aws_client(), start_db_instance_message(), proplists:proplist()) ->
    {ok, start_db_instance_result(), tuple()} |
    {error, any()} |
    {error, start_db_instance_errors(), tuple()}.
start_db_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartDBInstance">>, Input, Options).

%% @doc Enables replication of automated backups to a different Amazon Web
%% Services Region.
%%
%% This command doesn't apply to RDS Custom.
%%
%% For more information, see
%% Replicating Automated Backups to Another Amazon Web Services Region:
%% https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_ReplicateBackups.html
%% in the Amazon RDS User Guide.
-spec start_db_instance_automated_backups_replication(aws_client:aws_client(), start_db_instance_automated_backups_replication_message()) ->
    {ok, start_db_instance_automated_backups_replication_result(), tuple()} |
    {error, any()} |
    {error, start_db_instance_automated_backups_replication_errors(), tuple()}.
start_db_instance_automated_backups_replication(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_db_instance_automated_backups_replication(Client, Input, []).

-spec start_db_instance_automated_backups_replication(aws_client:aws_client(), start_db_instance_automated_backups_replication_message(), proplists:proplist()) ->
    {ok, start_db_instance_automated_backups_replication_result(), tuple()} |
    {error, any()} |
    {error, start_db_instance_automated_backups_replication_errors(), tuple()}.
start_db_instance_automated_backups_replication(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartDBInstanceAutomatedBackupsReplication">>, Input, Options).

%% @doc Starts an export of DB snapshot or DB cluster data to Amazon S3.
%%
%% The provided IAM role must have access to the S3 bucket.
%%
%% You can't export snapshot data from Db2 or RDS Custom DB instances.
%%
%% For more information on exporting DB snapshot data, see
%% Exporting DB snapshot
%% data to Amazon S3:
%% https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_ExportSnapshot.html
%% in the Amazon RDS User Guide
%% or Exporting DB
%% cluster snapshot data to Amazon S3:
%% https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-export-snapshot.html
%% in the Amazon Aurora User Guide.
%%
%% For more information on exporting DB cluster data, see
%% Exporting DB
%% cluster data to Amazon S3:
%% https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/export-cluster-data.html
%% in the Amazon Aurora User Guide.
-spec start_export_task(aws_client:aws_client(), start_export_task_message()) ->
    {ok, export_task(), tuple()} |
    {error, any()} |
    {error, start_export_task_errors(), tuple()}.
start_export_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_export_task(Client, Input, []).

-spec start_export_task(aws_client:aws_client(), start_export_task_message(), proplists:proplist()) ->
    {ok, export_task(), tuple()} |
    {error, any()} |
    {error, start_export_task_errors(), tuple()}.
start_export_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartExportTask">>, Input, Options).

%% @doc Stops a database activity stream that was started using the Amazon
%% Web Services console,
%% the `start-activity-stream' CLI command, or the
%% `StartActivityStream' operation.
%%
%% For more information, see
%%
%% Monitoring Amazon Aurora with Database Activity Streams:
%% https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/DBActivityStreams.html
%% in the Amazon Aurora User Guide
%% or
%% Monitoring Amazon RDS with Database Activity Streams:
%% https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/DBActivityStreams.html
%% in the Amazon RDS User Guide.
-spec stop_activity_stream(aws_client:aws_client(), stop_activity_stream_request()) ->
    {ok, stop_activity_stream_response(), tuple()} |
    {error, any()} |
    {error, stop_activity_stream_errors(), tuple()}.
stop_activity_stream(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_activity_stream(Client, Input, []).

-spec stop_activity_stream(aws_client:aws_client(), stop_activity_stream_request(), proplists:proplist()) ->
    {ok, stop_activity_stream_response(), tuple()} |
    {error, any()} |
    {error, stop_activity_stream_errors(), tuple()}.
stop_activity_stream(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopActivityStream">>, Input, Options).

%% @doc Stops an Amazon Aurora DB cluster.
%%
%% When you stop a DB cluster, Aurora retains the DB cluster's
%% metadata, including its endpoints and DB parameter groups. Aurora also
%% retains the transaction logs so you can do a point-in-time restore if
%% necessary.
%%
%% For more information, see
%%
%% Stopping and Starting an Aurora Cluster:
%% https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-cluster-stop-start.html
%% in the Amazon Aurora User Guide.
%%
%% This operation only applies to Aurora DB clusters.
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

%% @doc Stops an Amazon RDS DB instance.
%%
%% When you stop a DB instance, Amazon RDS retains the DB instance's
%% metadata, including its endpoint,
%% DB parameter group, and option group membership. Amazon RDS also retains
%% the transaction logs so you can do a point-in-time restore if
%% necessary.
%%
%% For more information, see
%%
%% Stopping an Amazon RDS DB Instance Temporarily:
%% https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_StopInstance.html
%% in the
%% Amazon RDS User Guide.
%%
%% This command doesn't apply to RDS Custom, Aurora MySQL, and Aurora
%% PostgreSQL.
%% For Aurora clusters, use `StopDBCluster' instead.
-spec stop_db_instance(aws_client:aws_client(), stop_db_instance_message()) ->
    {ok, stop_db_instance_result(), tuple()} |
    {error, any()} |
    {error, stop_db_instance_errors(), tuple()}.
stop_db_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_db_instance(Client, Input, []).

-spec stop_db_instance(aws_client:aws_client(), stop_db_instance_message(), proplists:proplist()) ->
    {ok, stop_db_instance_result(), tuple()} |
    {error, any()} |
    {error, stop_db_instance_errors(), tuple()}.
stop_db_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopDBInstance">>, Input, Options).

%% @doc Stops automated backup replication for a DB instance.
%%
%% This command doesn't apply to RDS Custom, Aurora MySQL, and Aurora
%% PostgreSQL.
%%
%% For more information, see
%% Replicating Automated Backups to Another Amazon Web Services Region:
%% https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_ReplicateBackups.html
%% in the Amazon RDS User Guide.
-spec stop_db_instance_automated_backups_replication(aws_client:aws_client(), stop_db_instance_automated_backups_replication_message()) ->
    {ok, stop_db_instance_automated_backups_replication_result(), tuple()} |
    {error, any()} |
    {error, stop_db_instance_automated_backups_replication_errors(), tuple()}.
stop_db_instance_automated_backups_replication(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_db_instance_automated_backups_replication(Client, Input, []).

-spec stop_db_instance_automated_backups_replication(aws_client:aws_client(), stop_db_instance_automated_backups_replication_message(), proplists:proplist()) ->
    {ok, stop_db_instance_automated_backups_replication_result(), tuple()} |
    {error, any()} |
    {error, stop_db_instance_automated_backups_replication_errors(), tuple()}.
stop_db_instance_automated_backups_replication(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopDBInstanceAutomatedBackupsReplication">>, Input, Options).

%% @doc Switches over a blue/green deployment.
%%
%% Before you switch over, production traffic is routed to the databases in
%% the blue environment.
%% After you switch over, production traffic is routed to the databases in
%% the green environment.
%%
%% For more information, see Using Amazon RDS
%% Blue/Green Deployments for database updates:
%% https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/blue-green-deployments.html
%% in the Amazon RDS User
%% Guide and Using Amazon RDS
%% Blue/Green Deployments for database updates:
%% https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/blue-green-deployments.html
%% in the Amazon Aurora
%% User Guide.
-spec switchover_blue_green_deployment(aws_client:aws_client(), switchover_blue_green_deployment_request()) ->
    {ok, switchover_blue_green_deployment_response(), tuple()} |
    {error, any()} |
    {error, switchover_blue_green_deployment_errors(), tuple()}.
switchover_blue_green_deployment(Client, Input)
  when is_map(Client), is_map(Input) ->
    switchover_blue_green_deployment(Client, Input, []).

-spec switchover_blue_green_deployment(aws_client:aws_client(), switchover_blue_green_deployment_request(), proplists:proplist()) ->
    {ok, switchover_blue_green_deployment_response(), tuple()} |
    {error, any()} |
    {error, switchover_blue_green_deployment_errors(), tuple()}.
switchover_blue_green_deployment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SwitchoverBlueGreenDeployment">>, Input, Options).

%% @doc Switches over the specified secondary DB cluster to be the new
%% primary DB cluster in the global database cluster.
%%
%% Switchover operations were previously called &quot;managed planned
%% failovers.&quot;
%%
%% Aurora promotes the specified secondary cluster to assume full read/write
%% capabilities and demotes the current primary cluster
%% to a secondary (read-only) cluster, maintaining the orginal replication
%% topology. All secondary clusters are synchronized with the primary
%% at the beginning of the process so the new primary continues operations
%% for the Aurora global database without losing any data. Your database
%% is unavailable for a short time while the primary and selected secondary
%% clusters are assuming their new roles. For more information about
%% switching over an Aurora global database, see Performing switchovers for
%% Amazon Aurora global databases:
%% https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-global-database-disaster-recovery.html#aurora-global-database-disaster-recovery.managed-failover
%% in the Amazon Aurora User Guide.
%%
%% This operation is intended for controlled environments, for operations
%% such as &quot;regional rotation&quot; or to fall back to the original
%% primary after a global database failover.
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

%% @doc Switches over an Oracle standby database in an Oracle Data Guard
%% environment, making it the new
%% primary database.
%%
%% Issue this command in the Region that hosts the current standby database.
-spec switchover_read_replica(aws_client:aws_client(), switchover_read_replica_message()) ->
    {ok, switchover_read_replica_result(), tuple()} |
    {error, any()} |
    {error, switchover_read_replica_errors(), tuple()}.
switchover_read_replica(Client, Input)
  when is_map(Client), is_map(Input) ->
    switchover_read_replica(Client, Input, []).

-spec switchover_read_replica(aws_client:aws_client(), switchover_read_replica_message(), proplists:proplist()) ->
    {ok, switchover_read_replica_result(), tuple()} |
    {error, any()} |
    {error, switchover_read_replica_errors(), tuple()}.
switchover_read_replica(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SwitchoverReadReplica">>, Input, Options).

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
