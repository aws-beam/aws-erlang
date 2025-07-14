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
%% To learn more about Amazon Redshift Serverless, see What is Amazon
%% Redshift Serverless?:
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
         create_reservation/2,
         create_reservation/3,
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
         get_reservation/2,
         get_reservation/3,
         get_reservation_offering/2,
         get_reservation_offering/3,
         get_resource_policy/2,
         get_resource_policy/3,
         get_scheduled_action/2,
         get_scheduled_action/3,
         get_snapshot/2,
         get_snapshot/3,
         get_table_restore_status/2,
         get_table_restore_status/3,
         get_track/2,
         get_track/3,
         get_usage_limit/2,
         get_usage_limit/3,
         get_workgroup/2,
         get_workgroup/3,
         list_custom_domain_associations/2,
         list_custom_domain_associations/3,
         list_endpoint_access/2,
         list_endpoint_access/3,
         list_managed_workgroups/2,
         list_managed_workgroups/3,
         list_namespaces/2,
         list_namespaces/3,
         list_recovery_points/2,
         list_recovery_points/3,
         list_reservation_offerings/2,
         list_reservation_offerings/3,
         list_reservations/2,
         list_reservations/3,
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
         list_tracks/2,
         list_tracks/3,
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


%% Example:
%% delete_namespace_response() :: #{
%%   <<"namespace">> => namespace()
%% }
-type delete_namespace_response() :: #{binary() => any()}.

%% Example:
%% table_restore_status() :: #{
%%   <<"message">> => [string()],
%%   <<"namespaceName">> => [string()],
%%   <<"newTableName">> => [string()],
%%   <<"progressInMegaBytes">> => [float()],
%%   <<"recoveryPointId">> => [string()],
%%   <<"requestTime">> => [non_neg_integer()],
%%   <<"snapshotName">> => [string()],
%%   <<"sourceDatabaseName">> => [string()],
%%   <<"sourceSchemaName">> => [string()],
%%   <<"sourceTableName">> => [string()],
%%   <<"status">> => [string()],
%%   <<"tableRestoreRequestId">> => [string()],
%%   <<"targetDatabaseName">> => [string()],
%%   <<"targetSchemaName">> => [string()],
%%   <<"totalDataInMegaBytes">> => [float()],
%%   <<"workgroupName">> => [string()]
%% }
-type table_restore_status() :: #{binary() => any()}.

%% Example:
%% get_track_response() :: #{
%%   <<"track">> => serverless_track()
%% }
-type get_track_response() :: #{binary() => any()}.

%% Example:
%% get_reservation_offering_request() :: #{
%%   <<"offeringId">> := string()
%% }
-type get_reservation_offering_request() :: #{binary() => any()}.

%% Example:
%% update_endpoint_access_request() :: #{
%%   <<"endpointName">> := [string()],
%%   <<"vpcSecurityGroupIds">> => list(string())
%% }
-type update_endpoint_access_request() :: #{binary() => any()}.

%% Example:
%% delete_snapshot_request() :: #{
%%   <<"snapshotName">> := [string()]
%% }
-type delete_snapshot_request() :: #{binary() => any()}.

%% Example:
%% tag_resource_request() :: #{
%%   <<"resourceArn">> := string(),
%%   <<"tags">> := list(tag())
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% delete_resource_policy_response() :: #{

%% }
-type delete_resource_policy_response() :: #{binary() => any()}.

%% Example:
%% delete_snapshot_copy_configuration_request() :: #{
%%   <<"snapshotCopyConfigurationId">> := [string()]
%% }
-type delete_snapshot_copy_configuration_request() :: #{binary() => any()}.

%% Example:
%% get_reservation_response() :: #{
%%   <<"reservation">> => reservation()
%% }
-type get_reservation_response() :: #{binary() => any()}.

%% Example:
%% get_usage_limit_response() :: #{
%%   <<"usageLimit">> => usage_limit()
%% }
-type get_usage_limit_response() :: #{binary() => any()}.

%% Example:
%% scheduled_action_association() :: #{
%%   <<"namespaceName">> => string(),
%%   <<"scheduledActionName">> => string()
%% }
-type scheduled_action_association() :: #{binary() => any()}.

%% Example:
%% get_table_restore_status_request() :: #{
%%   <<"tableRestoreRequestId">> := [string()]
%% }
-type get_table_restore_status_request() :: #{binary() => any()}.

%% Example:
%% get_reservation_request() :: #{
%%   <<"reservationId">> := string()
%% }
-type get_reservation_request() :: #{binary() => any()}.

%% Example:
%% update_usage_limit_request() :: #{
%%   <<"amount">> => [float()],
%%   <<"breachAction">> => string(),
%%   <<"usageLimitId">> := [string()]
%% }
-type update_usage_limit_request() :: #{binary() => any()}.

%% Example:
%% delete_scheduled_action_response() :: #{
%%   <<"scheduledAction">> => scheduled_action_response()
%% }
-type delete_scheduled_action_response() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{

%% }
-type untag_resource_response() :: #{binary() => any()}.

%% Example:
%% get_custom_domain_association_request() :: #{
%%   <<"customDomainName">> := string(),
%%   <<"workgroupName">> := string()
%% }
-type get_custom_domain_association_request() :: #{binary() => any()}.

%% Example:
%% update_snapshot_request() :: #{
%%   <<"retentionPeriod">> => [integer()],
%%   <<"snapshotName">> := [string()]
%% }
-type update_snapshot_request() :: #{binary() => any()}.

%% Example:
%% list_namespaces_request() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => [string()]
%% }
-type list_namespaces_request() :: #{binary() => any()}.

%% Example:
%% delete_usage_limit_request() :: #{
%%   <<"usageLimitId">> := [string()]
%% }
-type delete_usage_limit_request() :: #{binary() => any()}.

%% Example:
%% ipv6_cidr_block_not_found_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type ipv6_cidr_block_not_found_exception() :: #{binary() => any()}.

%% Example:
%% list_managed_workgroups_response() :: #{
%%   <<"managedWorkgroups">> => list(managed_workgroup_list_item()),
%%   <<"nextToken">> => string()
%% }
-type list_managed_workgroups_response() :: #{binary() => any()}.

%% Example:
%% create_snapshot_request() :: #{
%%   <<"namespaceName">> := [string()],
%%   <<"retentionPeriod">> => [integer()],
%%   <<"snapshotName">> := [string()],
%%   <<"tags">> => list(tag())
%% }
-type create_snapshot_request() :: #{binary() => any()}.

%% Example:
%% list_reservations_request() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string()
%% }
-type list_reservations_request() :: #{binary() => any()}.

%% Example:
%% delete_snapshot_copy_configuration_response() :: #{
%%   <<"snapshotCopyConfiguration">> => snapshot_copy_configuration()
%% }
-type delete_snapshot_copy_configuration_response() :: #{binary() => any()}.

%% Example:
%% config_parameter() :: #{
%%   <<"parameterKey">> => string(),
%%   <<"parameterValue">> => string()
%% }
-type config_parameter() :: #{binary() => any()}.

%% Example:
%% restore_table_from_recovery_point_response() :: #{
%%   <<"tableRestoreStatus">> => table_restore_status()
%% }
-type restore_table_from_recovery_point_response() :: #{binary() => any()}.

%% Example:
%% restore_from_snapshot_request() :: #{
%%   <<"adminPasswordSecretKmsKeyId">> => string(),
%%   <<"manageAdminPassword">> => [boolean()],
%%   <<"namespaceName">> := string(),
%%   <<"ownerAccount">> => [string()],
%%   <<"snapshotArn">> => [string()],
%%   <<"snapshotName">> => [string()],
%%   <<"workgroupName">> := string()
%% }
-type restore_from_snapshot_request() :: #{binary() => any()}.

%% Example:
%% create_snapshot_response() :: #{
%%   <<"snapshot">> => snapshot()
%% }
-type create_snapshot_response() :: #{binary() => any()}.

%% Example:
%% network_interface() :: #{
%%   <<"availabilityZone">> => [string()],
%%   <<"ipv6Address">> => [string()],
%%   <<"networkInterfaceId">> => [string()],
%%   <<"privateIpAddress">> => [string()],
%%   <<"subnetId">> => [string()]
%% }
-type network_interface() :: #{binary() => any()}.

%% Example:
%% get_snapshot_response() :: #{
%%   <<"snapshot">> => snapshot()
%% }
-type get_snapshot_response() :: #{binary() => any()}.

%% Example:
%% delete_custom_domain_association_request() :: #{
%%   <<"customDomainName">> := string(),
%%   <<"workgroupName">> := string()
%% }
-type delete_custom_domain_association_request() :: #{binary() => any()}.

%% Example:
%% delete_workgroup_response() :: #{
%%   <<"workgroup">> => workgroup()
%% }
-type delete_workgroup_response() :: #{binary() => any()}.

%% Example:
%% restore_table_from_snapshot_response() :: #{
%%   <<"tableRestoreStatus">> => table_restore_status()
%% }
-type restore_table_from_snapshot_response() :: #{binary() => any()}.

%% Example:
%% restore_from_snapshot_response() :: #{
%%   <<"namespace">> => namespace(),
%%   <<"ownerAccount">> => [string()],
%%   <<"snapshotName">> => [string()]
%% }
-type restore_from_snapshot_response() :: #{binary() => any()}.

%% Example:
%% get_resource_policy_response() :: #{
%%   <<"resourcePolicy">> => resource_policy()
%% }
-type get_resource_policy_response() :: #{binary() => any()}.

%% Example:
%% delete_workgroup_request() :: #{
%%   <<"workgroupName">> := string()
%% }
-type delete_workgroup_request() :: #{binary() => any()}.

%% Example:
%% create_usage_limit_request() :: #{
%%   <<"amount">> := [float()],
%%   <<"breachAction">> => string(),
%%   <<"period">> => string(),
%%   <<"resourceArn">> := [string()],
%%   <<"usageType">> := string()
%% }
-type create_usage_limit_request() :: #{binary() => any()}.

%% Example:
%% restore_from_recovery_point_response() :: #{
%%   <<"namespace">> => namespace(),
%%   <<"recoveryPointId">> => [string()]
%% }
-type restore_from_recovery_point_response() :: #{binary() => any()}.

%% Example:
%% scheduled_action_response() :: #{
%%   <<"endTime">> => [non_neg_integer()],
%%   <<"namespaceName">> => string(),
%%   <<"nextInvocations">> => list([non_neg_integer()]()),
%%   <<"roleArn">> => string(),
%%   <<"schedule">> => list(),
%%   <<"scheduledActionDescription">> => [string()],
%%   <<"scheduledActionName">> => string(),
%%   <<"scheduledActionUuid">> => [string()],
%%   <<"startTime">> => [non_neg_integer()],
%%   <<"state">> => string(),
%%   <<"targetAction">> => list()
%% }
-type scheduled_action_response() :: #{binary() => any()}.

%% Example:
%% create_reservation_response() :: #{
%%   <<"reservation">> => reservation()
%% }
-type create_reservation_response() :: #{binary() => any()}.

%% Example:
%% list_table_restore_status_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"tableRestoreStatuses">> => list(table_restore_status())
%% }
-type list_table_restore_status_response() :: #{binary() => any()}.

%% Example:
%% untag_resource_request() :: #{
%%   <<"resourceArn">> := string(),
%%   <<"tagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% update_usage_limit_response() :: #{
%%   <<"usageLimit">> => usage_limit()
%% }
-type update_usage_limit_response() :: #{binary() => any()}.

%% Example:
%% create_endpoint_access_request() :: #{
%%   <<"endpointName">> := [string()],
%%   <<"ownerAccount">> => string(),
%%   <<"subnetIds">> := list(string()),
%%   <<"vpcSecurityGroupIds">> => list(string()),
%%   <<"workgroupName">> := [string()]
%% }
-type create_endpoint_access_request() :: #{binary() => any()}.

%% Example:
%% update_custom_domain_association_request() :: #{
%%   <<"customDomainCertificateArn">> := string(),
%%   <<"customDomainName">> := string(),
%%   <<"workgroupName">> := string()
%% }
-type update_custom_domain_association_request() :: #{binary() => any()}.

%% Example:
%% invalid_pagination_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type invalid_pagination_exception() :: #{binary() => any()}.

%% Example:
%% update_scheduled_action_response() :: #{
%%   <<"scheduledAction">> => scheduled_action_response()
%% }
-type update_scheduled_action_response() :: #{binary() => any()}.

%% Example:
%% get_track_request() :: #{
%%   <<"trackName">> := string()
%% }
-type get_track_request() :: #{binary() => any()}.

%% Example:
%% restore_table_from_recovery_point_request() :: #{
%%   <<"activateCaseSensitiveIdentifier">> => [boolean()],
%%   <<"namespaceName">> := [string()],
%%   <<"newTableName">> := [string()],
%%   <<"recoveryPointId">> := [string()],
%%   <<"sourceDatabaseName">> := [string()],
%%   <<"sourceSchemaName">> => [string()],
%%   <<"sourceTableName">> := [string()],
%%   <<"targetDatabaseName">> => [string()],
%%   <<"targetSchemaName">> => [string()],
%%   <<"workgroupName">> := [string()]
%% }
-type restore_table_from_recovery_point_request() :: #{binary() => any()}.

%% Example:
%% get_recovery_point_response() :: #{
%%   <<"recoveryPoint">> => recovery_point()
%% }
-type get_recovery_point_response() :: #{binary() => any()}.

%% Example:
%% insufficient_capacity_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type insufficient_capacity_exception() :: #{binary() => any()}.

%% Example:
%% create_scheduled_action_response() :: #{
%%   <<"scheduledAction">> => scheduled_action_response()
%% }
-type create_scheduled_action_response() :: #{binary() => any()}.

%% Example:
%% get_namespace_response() :: #{
%%   <<"namespace">> => namespace()
%% }
-type get_namespace_response() :: #{binary() => any()}.

%% Example:
%% get_recovery_point_request() :: #{
%%   <<"recoveryPointId">> := [string()]
%% }
-type get_recovery_point_request() :: #{binary() => any()}.

%% Example:
%% serverless_track() :: #{
%%   <<"trackName">> => string(),
%%   <<"updateTargets">> => list(update_target()),
%%   <<"workgroupVersion">> => [string()]
%% }
-type serverless_track() :: #{binary() => any()}.

%% Example:
%% list_scheduled_actions_request() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"namespaceName">> => string(),
%%   <<"nextToken">> => string()
%% }
-type list_scheduled_actions_request() :: #{binary() => any()}.

%% Example:
%% get_workgroup_request() :: #{
%%   <<"workgroupName">> := string()
%% }
-type get_workgroup_request() :: #{binary() => any()}.

%% Example:
%% get_usage_limit_request() :: #{
%%   <<"usageLimitId">> := [string()]
%% }
-type get_usage_limit_request() :: #{binary() => any()}.

%% Example:
%% get_endpoint_access_request() :: #{
%%   <<"endpointName">> := [string()]
%% }
-type get_endpoint_access_request() :: #{binary() => any()}.

%% Example:
%% create_namespace_request() :: #{
%%   <<"adminPasswordSecretKmsKeyId">> => string(),
%%   <<"adminUserPassword">> => string(),
%%   <<"adminUsername">> => string(),
%%   <<"dbName">> => [string()],
%%   <<"defaultIamRoleArn">> => [string()],
%%   <<"iamRoles">> => list(string()),
%%   <<"kmsKeyId">> => [string()],
%%   <<"logExports">> => list(string()),
%%   <<"manageAdminPassword">> => [boolean()],
%%   <<"namespaceName">> := string(),
%%   <<"redshiftIdcApplicationArn">> => string(),
%%   <<"tags">> => list(tag())
%% }
-type create_namespace_request() :: #{binary() => any()}.

%% Example:
%% list_tracks_request() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string()
%% }
-type list_tracks_request() :: #{binary() => any()}.

%% Example:
%% update_scheduled_action_request() :: #{
%%   <<"enabled">> => [boolean()],
%%   <<"endTime">> => [non_neg_integer()],
%%   <<"roleArn">> => string(),
%%   <<"schedule">> => list(),
%%   <<"scheduledActionDescription">> => [string()],
%%   <<"scheduledActionName">> := string(),
%%   <<"startTime">> => [non_neg_integer()],
%%   <<"targetAction">> => list()
%% }
-type update_scheduled_action_request() :: #{binary() => any()}.

%% Example:
%% list_endpoint_access_response() :: #{
%%   <<"endpoints">> => list(endpoint_access()),
%%   <<"nextToken">> => [string()]
%% }
-type list_endpoint_access_response() :: #{binary() => any()}.

%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type conflict_exception() :: #{binary() => any()}.

%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"resourceName">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% workgroup() :: #{
%%   <<"baseCapacity">> => [integer()],
%%   <<"configParameters">> => list(config_parameter()),
%%   <<"creationDate">> => [non_neg_integer()],
%%   <<"crossAccountVpcs">> => list([string()]()),
%%   <<"customDomainCertificateArn">> => string(),
%%   <<"customDomainCertificateExpiryTime">> => [non_neg_integer()],
%%   <<"customDomainName">> => string(),
%%   <<"endpoint">> => endpoint(),
%%   <<"enhancedVpcRouting">> => [boolean()],
%%   <<"ipAddressType">> => string(),
%%   <<"maxCapacity">> => [integer()],
%%   <<"namespaceName">> => [string()],
%%   <<"patchVersion">> => [string()],
%%   <<"pendingTrackName">> => string(),
%%   <<"port">> => [integer()],
%%   <<"pricePerformanceTarget">> => performance_target(),
%%   <<"publiclyAccessible">> => [boolean()],
%%   <<"securityGroupIds">> => list(string()),
%%   <<"status">> => string(),
%%   <<"subnetIds">> => list(string()),
%%   <<"trackName">> => string(),
%%   <<"workgroupArn">> => [string()],
%%   <<"workgroupId">> => [string()],
%%   <<"workgroupName">> => string(),
%%   <<"workgroupVersion">> => [string()]
%% }
-type workgroup() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"key">> => string(),
%%   <<"value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% list_usage_limits_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"usageLimits">> => list(usage_limit())
%% }
-type list_usage_limits_response() :: #{binary() => any()}.

%% Example:
%% list_snapshots_response() :: #{
%%   <<"nextToken">> => [string()],
%%   <<"snapshots">> => list(snapshot())
%% }
-type list_snapshots_response() :: #{binary() => any()}.

%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% convert_recovery_point_to_snapshot_request() :: #{
%%   <<"recoveryPointId">> := [string()],
%%   <<"retentionPeriod">> => [integer()],
%%   <<"snapshotName">> := [string()],
%%   <<"tags">> => list(tag())
%% }
-type convert_recovery_point_to_snapshot_request() :: #{binary() => any()}.

%% Example:
%% list_managed_workgroups_request() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string(),
%%   <<"sourceArn">> => string()
%% }
-type list_managed_workgroups_request() :: #{binary() => any()}.

%% Example:
%% snapshot_copy_configuration() :: #{
%%   <<"destinationKmsKeyId">> => string(),
%%   <<"destinationRegion">> => [string()],
%%   <<"namespaceName">> => string(),
%%   <<"snapshotCopyConfigurationArn">> => [string()],
%%   <<"snapshotCopyConfigurationId">> => [string()],
%%   <<"snapshotRetentionPeriod">> => [integer()]
%% }
-type snapshot_copy_configuration() :: #{binary() => any()}.

%% Example:
%% list_recovery_points_response() :: #{
%%   <<"nextToken">> => [string()],
%%   <<"recoveryPoints">> => list(recovery_point())
%% }
-type list_recovery_points_response() :: #{binary() => any()}.

%% Example:
%% list_scheduled_actions_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"scheduledActions">> => list(scheduled_action_association())
%% }
-type list_scheduled_actions_response() :: #{binary() => any()}.

%% Example:
%% get_table_restore_status_response() :: #{
%%   <<"tableRestoreStatus">> => table_restore_status()
%% }
-type get_table_restore_status_response() :: #{binary() => any()}.

%% Example:
%% delete_endpoint_access_response() :: #{
%%   <<"endpoint">> => endpoint_access()
%% }
-type delete_endpoint_access_response() :: #{binary() => any()}.

%% Example:
%% list_reservation_offerings_request() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string()
%% }
-type list_reservation_offerings_request() :: #{binary() => any()}.

%% Example:
%% restore_table_from_snapshot_request() :: #{
%%   <<"activateCaseSensitiveIdentifier">> => [boolean()],
%%   <<"namespaceName">> := [string()],
%%   <<"newTableName">> := [string()],
%%   <<"snapshotName">> := [string()],
%%   <<"sourceDatabaseName">> := [string()],
%%   <<"sourceSchemaName">> => [string()],
%%   <<"sourceTableName">> := [string()],
%%   <<"targetDatabaseName">> => [string()],
%%   <<"targetSchemaName">> => [string()],
%%   <<"workgroupName">> := [string()]
%% }
-type restore_table_from_snapshot_request() :: #{binary() => any()}.

%% Example:
%% association() :: #{
%%   <<"customDomainCertificateArn">> => string(),
%%   <<"customDomainCertificateExpiryTime">> => [non_neg_integer()],
%%   <<"customDomainName">> => string(),
%%   <<"workgroupName">> => string()
%% }
-type association() :: #{binary() => any()}.

%% Example:
%% create_snapshot_schedule_action_parameters() :: #{
%%   <<"namespaceName">> => string(),
%%   <<"retentionPeriod">> => [integer()],
%%   <<"snapshotNamePrefix">> => string(),
%%   <<"tags">> => list(tag())
%% }
-type create_snapshot_schedule_action_parameters() :: #{binary() => any()}.

%% Example:
%% list_table_restore_status_request() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"namespaceName">> => [string()],
%%   <<"nextToken">> => string(),
%%   <<"workgroupName">> => [string()]
%% }
-type list_table_restore_status_request() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> => list(tag())
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.

%% Example:
%% delete_endpoint_access_request() :: #{
%%   <<"endpointName">> := [string()]
%% }
-type delete_endpoint_access_request() :: #{binary() => any()}.

%% Example:
%% reservation() :: #{
%%   <<"capacity">> => integer(),
%%   <<"endDate">> => [non_neg_integer()],
%%   <<"offering">> => reservation_offering(),
%%   <<"reservationArn">> => string(),
%%   <<"reservationId">> => string(),
%%   <<"startDate">> => [non_neg_integer()],
%%   <<"status">> => string()
%% }
-type reservation() :: #{binary() => any()}.

%% Example:
%% vpc_endpoint() :: #{
%%   <<"networkInterfaces">> => list(network_interface()),
%%   <<"vpcEndpointId">> => [string()],
%%   <<"vpcId">> => [string()]
%% }
-type vpc_endpoint() :: #{binary() => any()}.

%% Example:
%% create_snapshot_copy_configuration_request() :: #{
%%   <<"destinationKmsKeyId">> => string(),
%%   <<"destinationRegion">> := [string()],
%%   <<"namespaceName">> := string(),
%%   <<"snapshotRetentionPeriod">> => [integer()]
%% }
-type create_snapshot_copy_configuration_request() :: #{binary() => any()}.

%% Example:
%% list_snapshots_request() :: #{
%%   <<"endTime">> => [non_neg_integer()],
%%   <<"maxResults">> => [integer()],
%%   <<"namespaceArn">> => [string()],
%%   <<"namespaceName">> => [string()],
%%   <<"nextToken">> => [string()],
%%   <<"ownerAccount">> => [string()],
%%   <<"startTime">> => [non_neg_integer()]
%% }
-type list_snapshots_request() :: #{binary() => any()}.

%% Example:
%% get_resource_policy_request() :: #{
%%   <<"resourceArn">> := [string()]
%% }
-type get_resource_policy_request() :: #{binary() => any()}.

%% Example:
%% create_workgroup_response() :: #{
%%   <<"workgroup">> => workgroup()
%% }
-type create_workgroup_response() :: #{binary() => any()}.

%% Example:
%% create_scheduled_action_request() :: #{
%%   <<"enabled">> => [boolean()],
%%   <<"endTime">> => [non_neg_integer()],
%%   <<"namespaceName">> := string(),
%%   <<"roleArn">> := string(),
%%   <<"schedule">> := list(),
%%   <<"scheduledActionDescription">> => [string()],
%%   <<"scheduledActionName">> := string(),
%%   <<"startTime">> => [non_neg_integer()],
%%   <<"targetAction">> := list()
%% }
-type create_scheduled_action_request() :: #{binary() => any()}.

%% Example:
%% create_workgroup_request() :: #{
%%   <<"baseCapacity">> => [integer()],
%%   <<"configParameters">> => list(config_parameter()),
%%   <<"enhancedVpcRouting">> => [boolean()],
%%   <<"ipAddressType">> => string(),
%%   <<"maxCapacity">> => [integer()],
%%   <<"namespaceName">> := string(),
%%   <<"port">> => [integer()],
%%   <<"pricePerformanceTarget">> => performance_target(),
%%   <<"publiclyAccessible">> => [boolean()],
%%   <<"securityGroupIds">> => list(string()),
%%   <<"subnetIds">> => list(string()),
%%   <<"tags">> => list(tag()),
%%   <<"trackName">> => string(),
%%   <<"workgroupName">> := string()
%% }
-type create_workgroup_request() :: #{binary() => any()}.

%% Example:
%% convert_recovery_point_to_snapshot_response() :: #{
%%   <<"snapshot">> => snapshot()
%% }
-type convert_recovery_point_to_snapshot_response() :: #{binary() => any()}.

%% Example:
%% get_reservation_offering_response() :: #{
%%   <<"reservationOffering">> => reservation_offering()
%% }
-type get_reservation_offering_response() :: #{binary() => any()}.

%% Example:
%% restore_from_recovery_point_request() :: #{
%%   <<"namespaceName">> := string(),
%%   <<"recoveryPointId">> := [string()],
%%   <<"workgroupName">> := string()
%% }
-type restore_from_recovery_point_request() :: #{binary() => any()}.

%% Example:
%% update_endpoint_access_response() :: #{
%%   <<"endpoint">> => endpoint_access()
%% }
-type update_endpoint_access_response() :: #{binary() => any()}.

%% Example:
%% list_usage_limits_request() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string(),
%%   <<"resourceArn">> => [string()],
%%   <<"usageType">> => string()
%% }
-type list_usage_limits_request() :: #{binary() => any()}.

%% Example:
%% create_custom_domain_association_response() :: #{
%%   <<"customDomainCertificateArn">> => string(),
%%   <<"customDomainCertificateExpiryTime">> => [non_neg_integer()],
%%   <<"customDomainName">> => string(),
%%   <<"workgroupName">> => string()
%% }
-type create_custom_domain_association_response() :: #{binary() => any()}.

%% Example:
%% endpoint() :: #{
%%   <<"address">> => [string()],
%%   <<"port">> => [integer()],
%%   <<"vpcEndpoints">> => list(vpc_endpoint())
%% }
-type endpoint() :: #{binary() => any()}.

%% Example:
%% update_custom_domain_association_response() :: #{
%%   <<"customDomainCertificateArn">> => string(),
%%   <<"customDomainCertificateExpiryTime">> => [non_neg_integer()],
%%   <<"customDomainName">> => string(),
%%   <<"workgroupName">> => string()
%% }
-type update_custom_domain_association_response() :: #{binary() => any()}.

%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type internal_server_exception() :: #{binary() => any()}.

%% Example:
%% resource_policy() :: #{
%%   <<"policy">> => [string()],
%%   <<"resourceArn">> => [string()]
%% }
-type resource_policy() :: #{binary() => any()}.

%% Example:
%% list_reservation_offerings_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"reservationOfferingsList">> => list(reservation_offering())
%% }
-type list_reservation_offerings_response() :: #{binary() => any()}.

%% Example:
%% get_scheduled_action_response() :: #{
%%   <<"scheduledAction">> => scheduled_action_response()
%% }
-type get_scheduled_action_response() :: #{binary() => any()}.

%% Example:
%% delete_custom_domain_association_response() :: #{

%% }
-type delete_custom_domain_association_response() :: #{binary() => any()}.

%% Example:
%% get_credentials_request() :: #{
%%   <<"customDomainName">> => string(),
%%   <<"dbName">> => string(),
%%   <<"durationSeconds">> => [integer()],
%%   <<"workgroupName">> => string()
%% }
-type get_credentials_request() :: #{binary() => any()}.

%% Example:
%% snapshot() :: #{
%%   <<"accountsWithProvisionedRestoreAccess">> => list([string()]()),
%%   <<"accountsWithRestoreAccess">> => list([string()]()),
%%   <<"actualIncrementalBackupSizeInMegaBytes">> => [float()],
%%   <<"adminPasswordSecretArn">> => [string()],
%%   <<"adminPasswordSecretKmsKeyId">> => string(),
%%   <<"adminUsername">> => [string()],
%%   <<"backupProgressInMegaBytes">> => [float()],
%%   <<"currentBackupRateInMegaBytesPerSecond">> => [float()],
%%   <<"elapsedTimeInSeconds">> => [float()],
%%   <<"estimatedSecondsToCompletion">> => [float()],
%%   <<"kmsKeyId">> => string(),
%%   <<"namespaceArn">> => [string()],
%%   <<"namespaceName">> => [string()],
%%   <<"ownerAccount">> => [string()],
%%   <<"snapshotArn">> => [string()],
%%   <<"snapshotCreateTime">> => [non_neg_integer()],
%%   <<"snapshotName">> => [string()],
%%   <<"snapshotRemainingDays">> => [integer()],
%%   <<"snapshotRetentionPeriod">> => [integer()],
%%   <<"snapshotRetentionStartTime">> => [non_neg_integer()],
%%   <<"status">> => string(),
%%   <<"totalBackupSizeInMegaBytes">> => [float()]
%% }
-type snapshot() :: #{binary() => any()}.

%% Example:
%% list_custom_domain_associations_response() :: #{
%%   <<"associations">> => list(association()),
%%   <<"nextToken">> => string()
%% }
-type list_custom_domain_associations_response() :: #{binary() => any()}.

%% Example:
%% managed_workgroup_list_item() :: #{
%%   <<"creationDate">> => [non_neg_integer()],
%%   <<"managedWorkgroupId">> => [string()],
%%   <<"managedWorkgroupName">> => string(),
%%   <<"sourceArn">> => string(),
%%   <<"status">> => list(any())
%% }
-type managed_workgroup_list_item() :: #{binary() => any()}.

%% Example:
%% put_resource_policy_request() :: #{
%%   <<"policy">> := [string()],
%%   <<"resourceArn">> := [string()]
%% }
-type put_resource_policy_request() :: #{binary() => any()}.

%% Example:
%% create_snapshot_copy_configuration_response() :: #{
%%   <<"snapshotCopyConfiguration">> => snapshot_copy_configuration()
%% }
-type create_snapshot_copy_configuration_response() :: #{binary() => any()}.

%% Example:
%% access_denied_exception() :: #{
%%   <<"code">> => [string()],
%%   <<"message">> => [string()]
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% list_reservations_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"reservationsList">> => list(reservation())
%% }
-type list_reservations_response() :: #{binary() => any()}.

%% Example:
%% get_custom_domain_association_response() :: #{
%%   <<"customDomainCertificateArn">> => string(),
%%   <<"customDomainCertificateExpiryTime">> => [non_neg_integer()],
%%   <<"customDomainName">> => string(),
%%   <<"workgroupName">> => string()
%% }
-type get_custom_domain_association_response() :: #{binary() => any()}.

%% Example:
%% list_recovery_points_request() :: #{
%%   <<"endTime">> => [non_neg_integer()],
%%   <<"maxResults">> => [integer()],
%%   <<"namespaceArn">> => [string()],
%%   <<"namespaceName">> => string(),
%%   <<"nextToken">> => [string()],
%%   <<"startTime">> => [non_neg_integer()]
%% }
-type list_recovery_points_request() :: #{binary() => any()}.

%% Example:
%% list_custom_domain_associations_request() :: #{
%%   <<"customDomainCertificateArn">> => string(),
%%   <<"customDomainName">> => string(),
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string()
%% }
-type list_custom_domain_associations_request() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{

%% }
-type tag_resource_response() :: #{binary() => any()}.

%% Example:
%% update_workgroup_response() :: #{
%%   <<"workgroup">> => workgroup()
%% }
-type update_workgroup_response() :: #{binary() => any()}.

%% Example:
%% create_namespace_response() :: #{
%%   <<"namespace">> => namespace()
%% }
-type create_namespace_response() :: #{binary() => any()}.

%% Example:
%% usage_limit() :: #{
%%   <<"amount">> => [float()],
%%   <<"breachAction">> => string(),
%%   <<"period">> => string(),
%%   <<"resourceArn">> => [string()],
%%   <<"usageLimitArn">> => [string()],
%%   <<"usageLimitId">> => [string()],
%%   <<"usageType">> => string()
%% }
-type usage_limit() :: #{binary() => any()}.

%% Example:
%% get_snapshot_request() :: #{
%%   <<"ownerAccount">> => [string()],
%%   <<"snapshotArn">> => [string()],
%%   <<"snapshotName">> => [string()]
%% }
-type get_snapshot_request() :: #{binary() => any()}.

%% Example:
%% create_reservation_request() :: #{
%%   <<"capacity">> := integer(),
%%   <<"clientToken">> => [string()],
%%   <<"offeringId">> := string()
%% }
-type create_reservation_request() :: #{binary() => any()}.

%% Example:
%% validation_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{
%%   <<"resourceArn">> := string()
%% }
-type list_tags_for_resource_request() :: #{binary() => any()}.

%% Example:
%% get_credentials_response() :: #{
%%   <<"dbPassword">> => string(),
%%   <<"dbUser">> => string(),
%%   <<"expiration">> => [non_neg_integer()],
%%   <<"nextRefreshTime">> => [non_neg_integer()]
%% }
-type get_credentials_response() :: #{binary() => any()}.

%% Example:
%% get_scheduled_action_request() :: #{
%%   <<"scheduledActionName">> := string()
%% }
-type get_scheduled_action_request() :: #{binary() => any()}.

%% Example:
%% update_target() :: #{
%%   <<"trackName">> => string(),
%%   <<"workgroupVersion">> => [string()]
%% }
-type update_target() :: #{binary() => any()}.

%% Example:
%% create_custom_domain_association_request() :: #{
%%   <<"customDomainCertificateArn">> := string(),
%%   <<"customDomainName">> := string(),
%%   <<"workgroupName">> := string()
%% }
-type create_custom_domain_association_request() :: #{binary() => any()}.

%% Example:
%% list_namespaces_response() :: #{
%%   <<"namespaces">> => list(namespace()),
%%   <<"nextToken">> => [string()]
%% }
-type list_namespaces_response() :: #{binary() => any()}.

%% Example:
%% throttling_exception() :: #{
%%   <<"code">> => [string()],
%%   <<"message">> => [string()]
%% }
-type throttling_exception() :: #{binary() => any()}.

%% Example:
%% get_endpoint_access_response() :: #{
%%   <<"endpoint">> => endpoint_access()
%% }
-type get_endpoint_access_response() :: #{binary() => any()}.

%% Example:
%% delete_namespace_request() :: #{
%%   <<"finalSnapshotName">> => [string()],
%%   <<"finalSnapshotRetentionPeriod">> => [integer()],
%%   <<"namespaceName">> := string()
%% }
-type delete_namespace_request() :: #{binary() => any()}.

%% Example:
%% update_namespace_request() :: #{
%%   <<"adminPasswordSecretKmsKeyId">> => string(),
%%   <<"adminUserPassword">> => string(),
%%   <<"adminUsername">> => string(),
%%   <<"defaultIamRoleArn">> => [string()],
%%   <<"iamRoles">> => list(string()),
%%   <<"kmsKeyId">> => [string()],
%%   <<"logExports">> => list(string()),
%%   <<"manageAdminPassword">> => [boolean()],
%%   <<"namespaceName">> := string()
%% }
-type update_namespace_request() :: #{binary() => any()}.

%% Example:
%% update_snapshot_copy_configuration_response() :: #{
%%   <<"snapshotCopyConfiguration">> => snapshot_copy_configuration()
%% }
-type update_snapshot_copy_configuration_response() :: #{binary() => any()}.

%% Example:
%% list_snapshot_copy_configurations_request() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"namespaceName">> => string(),
%%   <<"nextToken">> => string()
%% }
-type list_snapshot_copy_configurations_request() :: #{binary() => any()}.

%% Example:
%% create_endpoint_access_response() :: #{
%%   <<"endpoint">> => endpoint_access()
%% }
-type create_endpoint_access_response() :: #{binary() => any()}.

%% Example:
%% list_snapshot_copy_configurations_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"snapshotCopyConfigurations">> => list(snapshot_copy_configuration())
%% }
-type list_snapshot_copy_configurations_response() :: #{binary() => any()}.

%% Example:
%% update_snapshot_response() :: #{
%%   <<"snapshot">> => snapshot()
%% }
-type update_snapshot_response() :: #{binary() => any()}.

%% Example:
%% put_resource_policy_response() :: #{
%%   <<"resourcePolicy">> => resource_policy()
%% }
-type put_resource_policy_response() :: #{binary() => any()}.

%% Example:
%% delete_usage_limit_response() :: #{
%%   <<"usageLimit">> => usage_limit()
%% }
-type delete_usage_limit_response() :: #{binary() => any()}.

%% Example:
%% delete_scheduled_action_request() :: #{
%%   <<"scheduledActionName">> := string()
%% }
-type delete_scheduled_action_request() :: #{binary() => any()}.

%% Example:
%% update_workgroup_request() :: #{
%%   <<"baseCapacity">> => [integer()],
%%   <<"configParameters">> => list(config_parameter()),
%%   <<"enhancedVpcRouting">> => [boolean()],
%%   <<"ipAddressType">> => string(),
%%   <<"maxCapacity">> => [integer()],
%%   <<"port">> => [integer()],
%%   <<"pricePerformanceTarget">> => performance_target(),
%%   <<"publiclyAccessible">> => [boolean()],
%%   <<"securityGroupIds">> => list(string()),
%%   <<"subnetIds">> => list(string()),
%%   <<"trackName">> => string(),
%%   <<"workgroupName">> := string()
%% }
-type update_workgroup_request() :: #{binary() => any()}.

%% Example:
%% delete_resource_policy_request() :: #{
%%   <<"resourceArn">> := [string()]
%% }
-type delete_resource_policy_request() :: #{binary() => any()}.

%% Example:
%% update_namespace_response() :: #{
%%   <<"namespace">> => namespace()
%% }
-type update_namespace_response() :: #{binary() => any()}.

%% Example:
%% endpoint_access() :: #{
%%   <<"address">> => [string()],
%%   <<"endpointArn">> => [string()],
%%   <<"endpointCreateTime">> => [non_neg_integer()],
%%   <<"endpointName">> => [string()],
%%   <<"endpointStatus">> => [string()],
%%   <<"port">> => [integer()],
%%   <<"subnetIds">> => list(string()),
%%   <<"vpcEndpoint">> => vpc_endpoint(),
%%   <<"vpcSecurityGroups">> => list(vpc_security_group_membership()),
%%   <<"workgroupName">> => [string()]
%% }
-type endpoint_access() :: #{binary() => any()}.

%% Example:
%% create_usage_limit_response() :: #{
%%   <<"usageLimit">> => usage_limit()
%% }
-type create_usage_limit_response() :: #{binary() => any()}.

%% Example:
%% performance_target() :: #{
%%   <<"level">> => [integer()],
%%   <<"status">> => string()
%% }
-type performance_target() :: #{binary() => any()}.

%% Example:
%% list_tracks_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"tracks">> => list(serverless_track())
%% }
-type list_tracks_response() :: #{binary() => any()}.

%% Example:
%% namespace() :: #{
%%   <<"adminPasswordSecretArn">> => [string()],
%%   <<"adminPasswordSecretKmsKeyId">> => string(),
%%   <<"adminUsername">> => string(),
%%   <<"creationDate">> => [non_neg_integer()],
%%   <<"dbName">> => [string()],
%%   <<"defaultIamRoleArn">> => [string()],
%%   <<"iamRoles">> => list(string()),
%%   <<"kmsKeyId">> => [string()],
%%   <<"logExports">> => list(string()),
%%   <<"namespaceArn">> => [string()],
%%   <<"namespaceId">> => [string()],
%%   <<"namespaceName">> => string(),
%%   <<"status">> => string()
%% }
-type namespace() :: #{binary() => any()}.

%% Example:
%% vpc_security_group_membership() :: #{
%%   <<"status">> => [string()],
%%   <<"vpcSecurityGroupId">> => string()
%% }
-type vpc_security_group_membership() :: #{binary() => any()}.

%% Example:
%% list_endpoint_access_request() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => [string()],
%%   <<"ownerAccount">> => string(),
%%   <<"vpcId">> => [string()],
%%   <<"workgroupName">> => [string()]
%% }
-type list_endpoint_access_request() :: #{binary() => any()}.

%% Example:
%% update_snapshot_copy_configuration_request() :: #{
%%   <<"snapshotCopyConfigurationId">> := [string()],
%%   <<"snapshotRetentionPeriod">> => [integer()]
%% }
-type update_snapshot_copy_configuration_request() :: #{binary() => any()}.

%% Example:
%% list_workgroups_response() :: #{
%%   <<"nextToken">> => [string()],
%%   <<"workgroups">> => list(workgroup())
%% }
-type list_workgroups_response() :: #{binary() => any()}.

%% Example:
%% reservation_offering() :: #{
%%   <<"currencyCode">> => string(),
%%   <<"duration">> => integer(),
%%   <<"hourlyCharge">> => float(),
%%   <<"offeringId">> => string(),
%%   <<"offeringType">> => string(),
%%   <<"upfrontCharge">> => float()
%% }
-type reservation_offering() :: #{binary() => any()}.

%% Example:
%% get_workgroup_response() :: #{
%%   <<"workgroup">> => workgroup()
%% }
-type get_workgroup_response() :: #{binary() => any()}.

%% Example:
%% list_workgroups_request() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => [string()],
%%   <<"ownerAccount">> => string()
%% }
-type list_workgroups_request() :: #{binary() => any()}.

%% Example:
%% too_many_tags_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"resourceName">> => string()
%% }
-type too_many_tags_exception() :: #{binary() => any()}.

%% Example:
%% get_namespace_request() :: #{
%%   <<"namespaceName">> := string()
%% }
-type get_namespace_request() :: #{binary() => any()}.

%% Example:
%% recovery_point() :: #{
%%   <<"namespaceArn">> => [string()],
%%   <<"namespaceName">> => string(),
%%   <<"recoveryPointCreateTime">> => [non_neg_integer()],
%%   <<"recoveryPointId">> => [string()],
%%   <<"totalSizeInMegaBytes">> => [float()],
%%   <<"workgroupName">> => string()
%% }
-type recovery_point() :: #{binary() => any()}.

%% Example:
%% delete_snapshot_response() :: #{
%%   <<"snapshot">> => snapshot()
%% }
-type delete_snapshot_response() :: #{binary() => any()}.

-type convert_recovery_point_to_snapshot_errors() ::
    too_many_tags_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_custom_domain_association_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_endpoint_access_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_namespace_errors() ::
    too_many_tags_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type create_reservation_errors() ::
    too_many_tags_exception() | 
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_scheduled_action_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_snapshot_errors() ::
    too_many_tags_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_snapshot_copy_configuration_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_usage_limit_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_workgroup_errors() ::
    too_many_tags_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    insufficient_capacity_exception() | 
    ipv6_cidr_block_not_found_exception().

-type delete_custom_domain_association_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_endpoint_access_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_namespace_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_resource_policy_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_scheduled_action_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_snapshot_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_snapshot_copy_configuration_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_usage_limit_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_workgroup_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_credentials_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_custom_domain_association_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_endpoint_access_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_namespace_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_recovery_point_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_reservation_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_reservation_offering_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_resource_policy_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_scheduled_action_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_snapshot_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_table_restore_status_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type get_track_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_usage_limit_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_workgroup_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_custom_domain_associations_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    invalid_pagination_exception().

-type list_endpoint_access_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type list_managed_workgroups_errors() ::
    access_denied_exception() | 
    internal_server_exception().

-type list_namespaces_errors() ::
    validation_exception() | 
    internal_server_exception().

-type list_recovery_points_errors() ::
    validation_exception() | 
    internal_server_exception().

-type list_reservation_offerings_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception().

-type list_reservations_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception().

-type list_scheduled_actions_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    invalid_pagination_exception().

-type list_snapshot_copy_configurations_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    invalid_pagination_exception().

-type list_snapshots_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_table_restore_status_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    invalid_pagination_exception().

-type list_tags_for_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_tracks_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    invalid_pagination_exception().

-type list_usage_limits_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    invalid_pagination_exception().

-type list_workgroups_errors() ::
    validation_exception() | 
    internal_server_exception().

-type put_resource_policy_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type restore_from_recovery_point_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type restore_from_snapshot_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type restore_table_from_recovery_point_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type restore_table_from_snapshot_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type tag_resource_errors() ::
    too_many_tags_exception() | 
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_custom_domain_association_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_endpoint_access_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_namespace_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_scheduled_action_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_snapshot_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_snapshot_copy_configuration_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_usage_limit_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_workgroup_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    insufficient_capacity_exception() | 
    ipv6_cidr_block_not_found_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Converts a recovery point to a snapshot.
%%
%% For more information about recovery points and snapshots,
%% see Working with snapshots and recovery points:
%% https://docs.aws.amazon.com/redshift/latest/mgmt/serverless-snapshots-recovery-points.html.
-spec convert_recovery_point_to_snapshot(aws_client:aws_client(), convert_recovery_point_to_snapshot_request()) ->
    {ok, convert_recovery_point_to_snapshot_response(), tuple()} |
    {error, any()} |
    {error, convert_recovery_point_to_snapshot_errors(), tuple()}.
convert_recovery_point_to_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    convert_recovery_point_to_snapshot(Client, Input, []).

-spec convert_recovery_point_to_snapshot(aws_client:aws_client(), convert_recovery_point_to_snapshot_request(), proplists:proplist()) ->
    {ok, convert_recovery_point_to_snapshot_response(), tuple()} |
    {error, any()} |
    {error, convert_recovery_point_to_snapshot_errors(), tuple()}.
convert_recovery_point_to_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ConvertRecoveryPointToSnapshot">>, Input, Options).

%% @doc Creates a custom domain association for Amazon Redshift Serverless.
-spec create_custom_domain_association(aws_client:aws_client(), create_custom_domain_association_request()) ->
    {ok, create_custom_domain_association_response(), tuple()} |
    {error, any()} |
    {error, create_custom_domain_association_errors(), tuple()}.
create_custom_domain_association(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_custom_domain_association(Client, Input, []).

-spec create_custom_domain_association(aws_client:aws_client(), create_custom_domain_association_request(), proplists:proplist()) ->
    {ok, create_custom_domain_association_response(), tuple()} |
    {error, any()} |
    {error, create_custom_domain_association_errors(), tuple()}.
create_custom_domain_association(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateCustomDomainAssociation">>, Input, Options).

%% @doc Creates an Amazon Redshift Serverless managed VPC endpoint.
-spec create_endpoint_access(aws_client:aws_client(), create_endpoint_access_request()) ->
    {ok, create_endpoint_access_response(), tuple()} |
    {error, any()} |
    {error, create_endpoint_access_errors(), tuple()}.
create_endpoint_access(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_endpoint_access(Client, Input, []).

-spec create_endpoint_access(aws_client:aws_client(), create_endpoint_access_request(), proplists:proplist()) ->
    {ok, create_endpoint_access_response(), tuple()} |
    {error, any()} |
    {error, create_endpoint_access_errors(), tuple()}.
create_endpoint_access(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateEndpointAccess">>, Input, Options).

%% @doc Creates a namespace in Amazon Redshift Serverless.
-spec create_namespace(aws_client:aws_client(), create_namespace_request()) ->
    {ok, create_namespace_response(), tuple()} |
    {error, any()} |
    {error, create_namespace_errors(), tuple()}.
create_namespace(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_namespace(Client, Input, []).

-spec create_namespace(aws_client:aws_client(), create_namespace_request(), proplists:proplist()) ->
    {ok, create_namespace_response(), tuple()} |
    {error, any()} |
    {error, create_namespace_errors(), tuple()}.
create_namespace(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateNamespace">>, Input, Options).

%% @doc Creates an Amazon Redshift Serverless reservation, which gives you
%% the option to commit to a specified number of Redshift Processing Units
%% (RPUs)
%% for a year at a discount from Serverless on-demand (OD) rates.
-spec create_reservation(aws_client:aws_client(), create_reservation_request()) ->
    {ok, create_reservation_response(), tuple()} |
    {error, any()} |
    {error, create_reservation_errors(), tuple()}.
create_reservation(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_reservation(Client, Input, []).

-spec create_reservation(aws_client:aws_client(), create_reservation_request(), proplists:proplist()) ->
    {ok, create_reservation_response(), tuple()} |
    {error, any()} |
    {error, create_reservation_errors(), tuple()}.
create_reservation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateReservation">>, Input, Options).

%% @doc Creates a scheduled action.
%%
%% A scheduled action contains a schedule and an Amazon Redshift API action.
%% For example, you can create a schedule of when to run the
%% `CreateSnapshot' API operation.
-spec create_scheduled_action(aws_client:aws_client(), create_scheduled_action_request()) ->
    {ok, create_scheduled_action_response(), tuple()} |
    {error, any()} |
    {error, create_scheduled_action_errors(), tuple()}.
create_scheduled_action(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_scheduled_action(Client, Input, []).

-spec create_scheduled_action(aws_client:aws_client(), create_scheduled_action_request(), proplists:proplist()) ->
    {ok, create_scheduled_action_response(), tuple()} |
    {error, any()} |
    {error, create_scheduled_action_errors(), tuple()}.
create_scheduled_action(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateScheduledAction">>, Input, Options).

%% @doc Creates a snapshot of all databases in a namespace.
%%
%% For more information about snapshots, see
%%
%% Working with snapshots and recovery points:
%% https://docs.aws.amazon.com/redshift/latest/mgmt/serverless-snapshots-recovery-points.html.
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

%% @doc Creates a snapshot copy configuration that lets you copy snapshots to
%% another Amazon Web Services Region.
-spec create_snapshot_copy_configuration(aws_client:aws_client(), create_snapshot_copy_configuration_request()) ->
    {ok, create_snapshot_copy_configuration_response(), tuple()} |
    {error, any()} |
    {error, create_snapshot_copy_configuration_errors(), tuple()}.
create_snapshot_copy_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_snapshot_copy_configuration(Client, Input, []).

-spec create_snapshot_copy_configuration(aws_client:aws_client(), create_snapshot_copy_configuration_request(), proplists:proplist()) ->
    {ok, create_snapshot_copy_configuration_response(), tuple()} |
    {error, any()} |
    {error, create_snapshot_copy_configuration_errors(), tuple()}.
create_snapshot_copy_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateSnapshotCopyConfiguration">>, Input, Options).

%% @doc Creates a usage limit for a specified Amazon Redshift Serverless
%% usage type.
%%
%% The usage limit is identified by the returned usage limit identifier.
-spec create_usage_limit(aws_client:aws_client(), create_usage_limit_request()) ->
    {ok, create_usage_limit_response(), tuple()} |
    {error, any()} |
    {error, create_usage_limit_errors(), tuple()}.
create_usage_limit(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_usage_limit(Client, Input, []).

-spec create_usage_limit(aws_client:aws_client(), create_usage_limit_request(), proplists:proplist()) ->
    {ok, create_usage_limit_response(), tuple()} |
    {error, any()} |
    {error, create_usage_limit_errors(), tuple()}.
create_usage_limit(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateUsageLimit">>, Input, Options).

%% @doc Creates an workgroup in Amazon Redshift Serverless.
%%
%% VPC Block Public Access (BPA) enables you to block resources in VPCs and
%% subnets that
%% you own in a Region from reaching or being reached from the internet
%% through internet
%% gateways and egress-only internet gateways. If a workgroup is in an
%% account with VPC BPA
%% turned on, the following capabilities are blocked:
%%
%% Creating a public access workgroup
%%
%% Modifying a private workgroup to public
%%
%% Adding a subnet with VPC BPA turned on to the workgroup when the workgroup
%% is
%% public
%%
%% For more information about VPC BPA, see Block public access to VPCs and
%% subnets:
%% https://docs.aws.amazon.com/vpc/latest/userguide/security-vpc-bpa.html in
%% the Amazon VPC User Guide.
-spec create_workgroup(aws_client:aws_client(), create_workgroup_request()) ->
    {ok, create_workgroup_response(), tuple()} |
    {error, any()} |
    {error, create_workgroup_errors(), tuple()}.
create_workgroup(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_workgroup(Client, Input, []).

-spec create_workgroup(aws_client:aws_client(), create_workgroup_request(), proplists:proplist()) ->
    {ok, create_workgroup_response(), tuple()} |
    {error, any()} |
    {error, create_workgroup_errors(), tuple()}.
create_workgroup(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateWorkgroup">>, Input, Options).

%% @doc Deletes a custom domain association for Amazon Redshift Serverless.
-spec delete_custom_domain_association(aws_client:aws_client(), delete_custom_domain_association_request()) ->
    {ok, delete_custom_domain_association_response(), tuple()} |
    {error, any()} |
    {error, delete_custom_domain_association_errors(), tuple()}.
delete_custom_domain_association(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_custom_domain_association(Client, Input, []).

-spec delete_custom_domain_association(aws_client:aws_client(), delete_custom_domain_association_request(), proplists:proplist()) ->
    {ok, delete_custom_domain_association_response(), tuple()} |
    {error, any()} |
    {error, delete_custom_domain_association_errors(), tuple()}.
delete_custom_domain_association(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteCustomDomainAssociation">>, Input, Options).

%% @doc Deletes an Amazon Redshift Serverless managed VPC endpoint.
-spec delete_endpoint_access(aws_client:aws_client(), delete_endpoint_access_request()) ->
    {ok, delete_endpoint_access_response(), tuple()} |
    {error, any()} |
    {error, delete_endpoint_access_errors(), tuple()}.
delete_endpoint_access(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_endpoint_access(Client, Input, []).

-spec delete_endpoint_access(aws_client:aws_client(), delete_endpoint_access_request(), proplists:proplist()) ->
    {ok, delete_endpoint_access_response(), tuple()} |
    {error, any()} |
    {error, delete_endpoint_access_errors(), tuple()}.
delete_endpoint_access(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteEndpointAccess">>, Input, Options).

%% @doc Deletes a namespace from Amazon Redshift Serverless.
%%
%% Before you delete the namespace, you can create a final snapshot that has
%% all of the data within the namespace.
-spec delete_namespace(aws_client:aws_client(), delete_namespace_request()) ->
    {ok, delete_namespace_response(), tuple()} |
    {error, any()} |
    {error, delete_namespace_errors(), tuple()}.
delete_namespace(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_namespace(Client, Input, []).

-spec delete_namespace(aws_client:aws_client(), delete_namespace_request(), proplists:proplist()) ->
    {ok, delete_namespace_response(), tuple()} |
    {error, any()} |
    {error, delete_namespace_errors(), tuple()}.
delete_namespace(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteNamespace">>, Input, Options).

%% @doc Deletes the specified resource policy.
-spec delete_resource_policy(aws_client:aws_client(), delete_resource_policy_request()) ->
    {ok, delete_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, delete_resource_policy_errors(), tuple()}.
delete_resource_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_resource_policy(Client, Input, []).

-spec delete_resource_policy(aws_client:aws_client(), delete_resource_policy_request(), proplists:proplist()) ->
    {ok, delete_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, delete_resource_policy_errors(), tuple()}.
delete_resource_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteResourcePolicy">>, Input, Options).

%% @doc Deletes a scheduled action.
-spec delete_scheduled_action(aws_client:aws_client(), delete_scheduled_action_request()) ->
    {ok, delete_scheduled_action_response(), tuple()} |
    {error, any()} |
    {error, delete_scheduled_action_errors(), tuple()}.
delete_scheduled_action(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_scheduled_action(Client, Input, []).

-spec delete_scheduled_action(aws_client:aws_client(), delete_scheduled_action_request(), proplists:proplist()) ->
    {ok, delete_scheduled_action_response(), tuple()} |
    {error, any()} |
    {error, delete_scheduled_action_errors(), tuple()}.
delete_scheduled_action(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteScheduledAction">>, Input, Options).

%% @doc Deletes a snapshot from Amazon Redshift Serverless.
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

%% @doc Deletes a snapshot copy configuration
-spec delete_snapshot_copy_configuration(aws_client:aws_client(), delete_snapshot_copy_configuration_request()) ->
    {ok, delete_snapshot_copy_configuration_response(), tuple()} |
    {error, any()} |
    {error, delete_snapshot_copy_configuration_errors(), tuple()}.
delete_snapshot_copy_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_snapshot_copy_configuration(Client, Input, []).

-spec delete_snapshot_copy_configuration(aws_client:aws_client(), delete_snapshot_copy_configuration_request(), proplists:proplist()) ->
    {ok, delete_snapshot_copy_configuration_response(), tuple()} |
    {error, any()} |
    {error, delete_snapshot_copy_configuration_errors(), tuple()}.
delete_snapshot_copy_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteSnapshotCopyConfiguration">>, Input, Options).

%% @doc Deletes a usage limit from Amazon Redshift Serverless.
-spec delete_usage_limit(aws_client:aws_client(), delete_usage_limit_request()) ->
    {ok, delete_usage_limit_response(), tuple()} |
    {error, any()} |
    {error, delete_usage_limit_errors(), tuple()}.
delete_usage_limit(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_usage_limit(Client, Input, []).

-spec delete_usage_limit(aws_client:aws_client(), delete_usage_limit_request(), proplists:proplist()) ->
    {ok, delete_usage_limit_response(), tuple()} |
    {error, any()} |
    {error, delete_usage_limit_errors(), tuple()}.
delete_usage_limit(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteUsageLimit">>, Input, Options).

%% @doc Deletes a workgroup.
-spec delete_workgroup(aws_client:aws_client(), delete_workgroup_request()) ->
    {ok, delete_workgroup_response(), tuple()} |
    {error, any()} |
    {error, delete_workgroup_errors(), tuple()}.
delete_workgroup(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_workgroup(Client, Input, []).

-spec delete_workgroup(aws_client:aws_client(), delete_workgroup_request(), proplists:proplist()) ->
    {ok, delete_workgroup_response(), tuple()} |
    {error, any()} |
    {error, delete_workgroup_errors(), tuple()}.
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
-spec get_credentials(aws_client:aws_client(), get_credentials_request()) ->
    {ok, get_credentials_response(), tuple()} |
    {error, any()} |
    {error, get_credentials_errors(), tuple()}.
get_credentials(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_credentials(Client, Input, []).

-spec get_credentials(aws_client:aws_client(), get_credentials_request(), proplists:proplist()) ->
    {ok, get_credentials_response(), tuple()} |
    {error, any()} |
    {error, get_credentials_errors(), tuple()}.
get_credentials(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetCredentials">>, Input, Options).

%% @doc Gets information about a specific custom domain association.
-spec get_custom_domain_association(aws_client:aws_client(), get_custom_domain_association_request()) ->
    {ok, get_custom_domain_association_response(), tuple()} |
    {error, any()} |
    {error, get_custom_domain_association_errors(), tuple()}.
get_custom_domain_association(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_custom_domain_association(Client, Input, []).

-spec get_custom_domain_association(aws_client:aws_client(), get_custom_domain_association_request(), proplists:proplist()) ->
    {ok, get_custom_domain_association_response(), tuple()} |
    {error, any()} |
    {error, get_custom_domain_association_errors(), tuple()}.
get_custom_domain_association(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetCustomDomainAssociation">>, Input, Options).

%% @doc Returns information, such as the name, about a VPC endpoint.
-spec get_endpoint_access(aws_client:aws_client(), get_endpoint_access_request()) ->
    {ok, get_endpoint_access_response(), tuple()} |
    {error, any()} |
    {error, get_endpoint_access_errors(), tuple()}.
get_endpoint_access(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_endpoint_access(Client, Input, []).

-spec get_endpoint_access(aws_client:aws_client(), get_endpoint_access_request(), proplists:proplist()) ->
    {ok, get_endpoint_access_response(), tuple()} |
    {error, any()} |
    {error, get_endpoint_access_errors(), tuple()}.
get_endpoint_access(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetEndpointAccess">>, Input, Options).

%% @doc Returns information about a namespace in Amazon Redshift Serverless.
-spec get_namespace(aws_client:aws_client(), get_namespace_request()) ->
    {ok, get_namespace_response(), tuple()} |
    {error, any()} |
    {error, get_namespace_errors(), tuple()}.
get_namespace(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_namespace(Client, Input, []).

-spec get_namespace(aws_client:aws_client(), get_namespace_request(), proplists:proplist()) ->
    {ok, get_namespace_response(), tuple()} |
    {error, any()} |
    {error, get_namespace_errors(), tuple()}.
get_namespace(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetNamespace">>, Input, Options).

%% @doc Returns information about a recovery point.
-spec get_recovery_point(aws_client:aws_client(), get_recovery_point_request()) ->
    {ok, get_recovery_point_response(), tuple()} |
    {error, any()} |
    {error, get_recovery_point_errors(), tuple()}.
get_recovery_point(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_recovery_point(Client, Input, []).

-spec get_recovery_point(aws_client:aws_client(), get_recovery_point_request(), proplists:proplist()) ->
    {ok, get_recovery_point_response(), tuple()} |
    {error, any()} |
    {error, get_recovery_point_errors(), tuple()}.
get_recovery_point(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRecoveryPoint">>, Input, Options).

%% @doc Gets an Amazon Redshift Serverless reservation.
%%
%% A reservation gives you the option to commit to a specified number of
%% Redshift Processing Units (RPUs)
%% for a year at a discount from Serverless on-demand (OD) rates.
-spec get_reservation(aws_client:aws_client(), get_reservation_request()) ->
    {ok, get_reservation_response(), tuple()} |
    {error, any()} |
    {error, get_reservation_errors(), tuple()}.
get_reservation(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_reservation(Client, Input, []).

-spec get_reservation(aws_client:aws_client(), get_reservation_request(), proplists:proplist()) ->
    {ok, get_reservation_response(), tuple()} |
    {error, any()} |
    {error, get_reservation_errors(), tuple()}.
get_reservation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetReservation">>, Input, Options).

%% @doc Returns the reservation offering.
%%
%% The offering determines the payment schedule for the reservation.
-spec get_reservation_offering(aws_client:aws_client(), get_reservation_offering_request()) ->
    {ok, get_reservation_offering_response(), tuple()} |
    {error, any()} |
    {error, get_reservation_offering_errors(), tuple()}.
get_reservation_offering(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_reservation_offering(Client, Input, []).

-spec get_reservation_offering(aws_client:aws_client(), get_reservation_offering_request(), proplists:proplist()) ->
    {ok, get_reservation_offering_response(), tuple()} |
    {error, any()} |
    {error, get_reservation_offering_errors(), tuple()}.
get_reservation_offering(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetReservationOffering">>, Input, Options).

%% @doc Returns a resource policy.
-spec get_resource_policy(aws_client:aws_client(), get_resource_policy_request()) ->
    {ok, get_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, get_resource_policy_errors(), tuple()}.
get_resource_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_resource_policy(Client, Input, []).

-spec get_resource_policy(aws_client:aws_client(), get_resource_policy_request(), proplists:proplist()) ->
    {ok, get_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, get_resource_policy_errors(), tuple()}.
get_resource_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetResourcePolicy">>, Input, Options).

%% @doc Returns information about a scheduled action.
-spec get_scheduled_action(aws_client:aws_client(), get_scheduled_action_request()) ->
    {ok, get_scheduled_action_response(), tuple()} |
    {error, any()} |
    {error, get_scheduled_action_errors(), tuple()}.
get_scheduled_action(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_scheduled_action(Client, Input, []).

-spec get_scheduled_action(aws_client:aws_client(), get_scheduled_action_request(), proplists:proplist()) ->
    {ok, get_scheduled_action_response(), tuple()} |
    {error, any()} |
    {error, get_scheduled_action_errors(), tuple()}.
get_scheduled_action(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetScheduledAction">>, Input, Options).

%% @doc Returns information about a specific snapshot.
-spec get_snapshot(aws_client:aws_client(), get_snapshot_request()) ->
    {ok, get_snapshot_response(), tuple()} |
    {error, any()} |
    {error, get_snapshot_errors(), tuple()}.
get_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_snapshot(Client, Input, []).

-spec get_snapshot(aws_client:aws_client(), get_snapshot_request(), proplists:proplist()) ->
    {ok, get_snapshot_response(), tuple()} |
    {error, any()} |
    {error, get_snapshot_errors(), tuple()}.
get_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSnapshot">>, Input, Options).

%% @doc Returns information about a `TableRestoreStatus' object.
-spec get_table_restore_status(aws_client:aws_client(), get_table_restore_status_request()) ->
    {ok, get_table_restore_status_response(), tuple()} |
    {error, any()} |
    {error, get_table_restore_status_errors(), tuple()}.
get_table_restore_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_table_restore_status(Client, Input, []).

-spec get_table_restore_status(aws_client:aws_client(), get_table_restore_status_request(), proplists:proplist()) ->
    {ok, get_table_restore_status_response(), tuple()} |
    {error, any()} |
    {error, get_table_restore_status_errors(), tuple()}.
get_table_restore_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetTableRestoreStatus">>, Input, Options).

%% @doc Get the Redshift Serverless version for a specified track.
-spec get_track(aws_client:aws_client(), get_track_request()) ->
    {ok, get_track_response(), tuple()} |
    {error, any()} |
    {error, get_track_errors(), tuple()}.
get_track(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_track(Client, Input, []).

-spec get_track(aws_client:aws_client(), get_track_request(), proplists:proplist()) ->
    {ok, get_track_response(), tuple()} |
    {error, any()} |
    {error, get_track_errors(), tuple()}.
get_track(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetTrack">>, Input, Options).

%% @doc Returns information about a usage limit.
-spec get_usage_limit(aws_client:aws_client(), get_usage_limit_request()) ->
    {ok, get_usage_limit_response(), tuple()} |
    {error, any()} |
    {error, get_usage_limit_errors(), tuple()}.
get_usage_limit(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_usage_limit(Client, Input, []).

-spec get_usage_limit(aws_client:aws_client(), get_usage_limit_request(), proplists:proplist()) ->
    {ok, get_usage_limit_response(), tuple()} |
    {error, any()} |
    {error, get_usage_limit_errors(), tuple()}.
get_usage_limit(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetUsageLimit">>, Input, Options).

%% @doc Returns information about a specific workgroup.
-spec get_workgroup(aws_client:aws_client(), get_workgroup_request()) ->
    {ok, get_workgroup_response(), tuple()} |
    {error, any()} |
    {error, get_workgroup_errors(), tuple()}.
get_workgroup(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_workgroup(Client, Input, []).

-spec get_workgroup(aws_client:aws_client(), get_workgroup_request(), proplists:proplist()) ->
    {ok, get_workgroup_response(), tuple()} |
    {error, any()} |
    {error, get_workgroup_errors(), tuple()}.
get_workgroup(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetWorkgroup">>, Input, Options).

%% @doc Lists custom domain associations for Amazon Redshift Serverless.
-spec list_custom_domain_associations(aws_client:aws_client(), list_custom_domain_associations_request()) ->
    {ok, list_custom_domain_associations_response(), tuple()} |
    {error, any()} |
    {error, list_custom_domain_associations_errors(), tuple()}.
list_custom_domain_associations(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_custom_domain_associations(Client, Input, []).

-spec list_custom_domain_associations(aws_client:aws_client(), list_custom_domain_associations_request(), proplists:proplist()) ->
    {ok, list_custom_domain_associations_response(), tuple()} |
    {error, any()} |
    {error, list_custom_domain_associations_errors(), tuple()}.
list_custom_domain_associations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListCustomDomainAssociations">>, Input, Options).

%% @doc Returns an array of `EndpointAccess' objects and relevant
%% information.
-spec list_endpoint_access(aws_client:aws_client(), list_endpoint_access_request()) ->
    {ok, list_endpoint_access_response(), tuple()} |
    {error, any()} |
    {error, list_endpoint_access_errors(), tuple()}.
list_endpoint_access(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_endpoint_access(Client, Input, []).

-spec list_endpoint_access(aws_client:aws_client(), list_endpoint_access_request(), proplists:proplist()) ->
    {ok, list_endpoint_access_response(), tuple()} |
    {error, any()} |
    {error, list_endpoint_access_errors(), tuple()}.
list_endpoint_access(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListEndpointAccess">>, Input, Options).

%% @doc Returns information about a list of specified managed workgroups in
%% your account.
-spec list_managed_workgroups(aws_client:aws_client(), list_managed_workgroups_request()) ->
    {ok, list_managed_workgroups_response(), tuple()} |
    {error, any()} |
    {error, list_managed_workgroups_errors(), tuple()}.
list_managed_workgroups(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_managed_workgroups(Client, Input, []).

-spec list_managed_workgroups(aws_client:aws_client(), list_managed_workgroups_request(), proplists:proplist()) ->
    {ok, list_managed_workgroups_response(), tuple()} |
    {error, any()} |
    {error, list_managed_workgroups_errors(), tuple()}.
list_managed_workgroups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListManagedWorkgroups">>, Input, Options).

%% @doc Returns information about a list of specified namespaces.
-spec list_namespaces(aws_client:aws_client(), list_namespaces_request()) ->
    {ok, list_namespaces_response(), tuple()} |
    {error, any()} |
    {error, list_namespaces_errors(), tuple()}.
list_namespaces(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_namespaces(Client, Input, []).

-spec list_namespaces(aws_client:aws_client(), list_namespaces_request(), proplists:proplist()) ->
    {ok, list_namespaces_response(), tuple()} |
    {error, any()} |
    {error, list_namespaces_errors(), tuple()}.
list_namespaces(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListNamespaces">>, Input, Options).

%% @doc Returns an array of recovery points.
-spec list_recovery_points(aws_client:aws_client(), list_recovery_points_request()) ->
    {ok, list_recovery_points_response(), tuple()} |
    {error, any()} |
    {error, list_recovery_points_errors(), tuple()}.
list_recovery_points(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_recovery_points(Client, Input, []).

-spec list_recovery_points(aws_client:aws_client(), list_recovery_points_request(), proplists:proplist()) ->
    {ok, list_recovery_points_response(), tuple()} |
    {error, any()} |
    {error, list_recovery_points_errors(), tuple()}.
list_recovery_points(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListRecoveryPoints">>, Input, Options).

%% @doc Returns the current reservation offerings in your account.
-spec list_reservation_offerings(aws_client:aws_client(), list_reservation_offerings_request()) ->
    {ok, list_reservation_offerings_response(), tuple()} |
    {error, any()} |
    {error, list_reservation_offerings_errors(), tuple()}.
list_reservation_offerings(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_reservation_offerings(Client, Input, []).

-spec list_reservation_offerings(aws_client:aws_client(), list_reservation_offerings_request(), proplists:proplist()) ->
    {ok, list_reservation_offerings_response(), tuple()} |
    {error, any()} |
    {error, list_reservation_offerings_errors(), tuple()}.
list_reservation_offerings(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListReservationOfferings">>, Input, Options).

%% @doc Returns a list of Reservation objects.
-spec list_reservations(aws_client:aws_client(), list_reservations_request()) ->
    {ok, list_reservations_response(), tuple()} |
    {error, any()} |
    {error, list_reservations_errors(), tuple()}.
list_reservations(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_reservations(Client, Input, []).

-spec list_reservations(aws_client:aws_client(), list_reservations_request(), proplists:proplist()) ->
    {ok, list_reservations_response(), tuple()} |
    {error, any()} |
    {error, list_reservations_errors(), tuple()}.
list_reservations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListReservations">>, Input, Options).

%% @doc Returns a list of scheduled actions.
%%
%% You can use the flags to filter the list of returned scheduled actions.
-spec list_scheduled_actions(aws_client:aws_client(), list_scheduled_actions_request()) ->
    {ok, list_scheduled_actions_response(), tuple()} |
    {error, any()} |
    {error, list_scheduled_actions_errors(), tuple()}.
list_scheduled_actions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_scheduled_actions(Client, Input, []).

-spec list_scheduled_actions(aws_client:aws_client(), list_scheduled_actions_request(), proplists:proplist()) ->
    {ok, list_scheduled_actions_response(), tuple()} |
    {error, any()} |
    {error, list_scheduled_actions_errors(), tuple()}.
list_scheduled_actions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListScheduledActions">>, Input, Options).

%% @doc Returns a list of snapshot copy configurations.
-spec list_snapshot_copy_configurations(aws_client:aws_client(), list_snapshot_copy_configurations_request()) ->
    {ok, list_snapshot_copy_configurations_response(), tuple()} |
    {error, any()} |
    {error, list_snapshot_copy_configurations_errors(), tuple()}.
list_snapshot_copy_configurations(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_snapshot_copy_configurations(Client, Input, []).

-spec list_snapshot_copy_configurations(aws_client:aws_client(), list_snapshot_copy_configurations_request(), proplists:proplist()) ->
    {ok, list_snapshot_copy_configurations_response(), tuple()} |
    {error, any()} |
    {error, list_snapshot_copy_configurations_errors(), tuple()}.
list_snapshot_copy_configurations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListSnapshotCopyConfigurations">>, Input, Options).

%% @doc Returns a list of snapshots.
-spec list_snapshots(aws_client:aws_client(), list_snapshots_request()) ->
    {ok, list_snapshots_response(), tuple()} |
    {error, any()} |
    {error, list_snapshots_errors(), tuple()}.
list_snapshots(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_snapshots(Client, Input, []).

-spec list_snapshots(aws_client:aws_client(), list_snapshots_request(), proplists:proplist()) ->
    {ok, list_snapshots_response(), tuple()} |
    {error, any()} |
    {error, list_snapshots_errors(), tuple()}.
list_snapshots(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListSnapshots">>, Input, Options).

%% @doc Returns information about an array of `TableRestoreStatus'
%% objects.
-spec list_table_restore_status(aws_client:aws_client(), list_table_restore_status_request()) ->
    {ok, list_table_restore_status_response(), tuple()} |
    {error, any()} |
    {error, list_table_restore_status_errors(), tuple()}.
list_table_restore_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_table_restore_status(Client, Input, []).

-spec list_table_restore_status(aws_client:aws_client(), list_table_restore_status_request(), proplists:proplist()) ->
    {ok, list_table_restore_status_response(), tuple()} |
    {error, any()} |
    {error, list_table_restore_status_errors(), tuple()}.
list_table_restore_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTableRestoreStatus">>, Input, Options).

%% @doc Lists the tags assigned to a resource.
-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_request()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).

-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_request(), proplists:proplist()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc List the Amazon Redshift Serverless versions.
-spec list_tracks(aws_client:aws_client(), list_tracks_request()) ->
    {ok, list_tracks_response(), tuple()} |
    {error, any()} |
    {error, list_tracks_errors(), tuple()}.
list_tracks(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tracks(Client, Input, []).

-spec list_tracks(aws_client:aws_client(), list_tracks_request(), proplists:proplist()) ->
    {ok, list_tracks_response(), tuple()} |
    {error, any()} |
    {error, list_tracks_errors(), tuple()}.
list_tracks(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTracks">>, Input, Options).

%% @doc Lists all usage limits within Amazon Redshift Serverless.
-spec list_usage_limits(aws_client:aws_client(), list_usage_limits_request()) ->
    {ok, list_usage_limits_response(), tuple()} |
    {error, any()} |
    {error, list_usage_limits_errors(), tuple()}.
list_usage_limits(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_usage_limits(Client, Input, []).

-spec list_usage_limits(aws_client:aws_client(), list_usage_limits_request(), proplists:proplist()) ->
    {ok, list_usage_limits_response(), tuple()} |
    {error, any()} |
    {error, list_usage_limits_errors(), tuple()}.
list_usage_limits(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListUsageLimits">>, Input, Options).

%% @doc Returns information about a list of specified workgroups.
-spec list_workgroups(aws_client:aws_client(), list_workgroups_request()) ->
    {ok, list_workgroups_response(), tuple()} |
    {error, any()} |
    {error, list_workgroups_errors(), tuple()}.
list_workgroups(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_workgroups(Client, Input, []).

-spec list_workgroups(aws_client:aws_client(), list_workgroups_request(), proplists:proplist()) ->
    {ok, list_workgroups_response(), tuple()} |
    {error, any()} |
    {error, list_workgroups_errors(), tuple()}.
list_workgroups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListWorkgroups">>, Input, Options).

%% @doc Creates or updates a resource policy.
%%
%% Currently, you can use policies to share snapshots across Amazon Web
%% Services accounts.
-spec put_resource_policy(aws_client:aws_client(), put_resource_policy_request()) ->
    {ok, put_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, put_resource_policy_errors(), tuple()}.
put_resource_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_resource_policy(Client, Input, []).

-spec put_resource_policy(aws_client:aws_client(), put_resource_policy_request(), proplists:proplist()) ->
    {ok, put_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, put_resource_policy_errors(), tuple()}.
put_resource_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutResourcePolicy">>, Input, Options).

%% @doc Restore the data from a recovery point.
-spec restore_from_recovery_point(aws_client:aws_client(), restore_from_recovery_point_request()) ->
    {ok, restore_from_recovery_point_response(), tuple()} |
    {error, any()} |
    {error, restore_from_recovery_point_errors(), tuple()}.
restore_from_recovery_point(Client, Input)
  when is_map(Client), is_map(Input) ->
    restore_from_recovery_point(Client, Input, []).

-spec restore_from_recovery_point(aws_client:aws_client(), restore_from_recovery_point_request(), proplists:proplist()) ->
    {ok, restore_from_recovery_point_response(), tuple()} |
    {error, any()} |
    {error, restore_from_recovery_point_errors(), tuple()}.
restore_from_recovery_point(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RestoreFromRecoveryPoint">>, Input, Options).

%% @doc Restores a namespace from a snapshot.
-spec restore_from_snapshot(aws_client:aws_client(), restore_from_snapshot_request()) ->
    {ok, restore_from_snapshot_response(), tuple()} |
    {error, any()} |
    {error, restore_from_snapshot_errors(), tuple()}.
restore_from_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    restore_from_snapshot(Client, Input, []).

-spec restore_from_snapshot(aws_client:aws_client(), restore_from_snapshot_request(), proplists:proplist()) ->
    {ok, restore_from_snapshot_response(), tuple()} |
    {error, any()} |
    {error, restore_from_snapshot_errors(), tuple()}.
restore_from_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RestoreFromSnapshot">>, Input, Options).

%% @doc Restores a table from a recovery point to your Amazon Redshift
%% Serverless instance.
%%
%% You can't use this operation to restore tables with interleaved sort
%% keys.
-spec restore_table_from_recovery_point(aws_client:aws_client(), restore_table_from_recovery_point_request()) ->
    {ok, restore_table_from_recovery_point_response(), tuple()} |
    {error, any()} |
    {error, restore_table_from_recovery_point_errors(), tuple()}.
restore_table_from_recovery_point(Client, Input)
  when is_map(Client), is_map(Input) ->
    restore_table_from_recovery_point(Client, Input, []).

-spec restore_table_from_recovery_point(aws_client:aws_client(), restore_table_from_recovery_point_request(), proplists:proplist()) ->
    {ok, restore_table_from_recovery_point_response(), tuple()} |
    {error, any()} |
    {error, restore_table_from_recovery_point_errors(), tuple()}.
restore_table_from_recovery_point(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RestoreTableFromRecoveryPoint">>, Input, Options).

%% @doc Restores a table from a snapshot to your Amazon Redshift Serverless
%% instance.
%%
%% You can't use this operation to
%% restore tables with interleaved sort keys:
%% https://docs.aws.amazon.com/redshift/latest/dg/t_Sorting_data.html#t_Sorting_data-interleaved.
-spec restore_table_from_snapshot(aws_client:aws_client(), restore_table_from_snapshot_request()) ->
    {ok, restore_table_from_snapshot_response(), tuple()} |
    {error, any()} |
    {error, restore_table_from_snapshot_errors(), tuple()}.
restore_table_from_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    restore_table_from_snapshot(Client, Input, []).

-spec restore_table_from_snapshot(aws_client:aws_client(), restore_table_from_snapshot_request(), proplists:proplist()) ->
    {ok, restore_table_from_snapshot_response(), tuple()} |
    {error, any()} |
    {error, restore_table_from_snapshot_errors(), tuple()}.
restore_table_from_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RestoreTableFromSnapshot">>, Input, Options).

%% @doc Assigns one or more tags to a resource.
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

%% @doc Removes a tag or set of tags from a resource.
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

%% @doc Updates an Amazon Redshift Serverless certificate associated with a
%% custom domain.
-spec update_custom_domain_association(aws_client:aws_client(), update_custom_domain_association_request()) ->
    {ok, update_custom_domain_association_response(), tuple()} |
    {error, any()} |
    {error, update_custom_domain_association_errors(), tuple()}.
update_custom_domain_association(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_custom_domain_association(Client, Input, []).

-spec update_custom_domain_association(aws_client:aws_client(), update_custom_domain_association_request(), proplists:proplist()) ->
    {ok, update_custom_domain_association_response(), tuple()} |
    {error, any()} |
    {error, update_custom_domain_association_errors(), tuple()}.
update_custom_domain_association(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateCustomDomainAssociation">>, Input, Options).

%% @doc Updates an Amazon Redshift Serverless managed endpoint.
-spec update_endpoint_access(aws_client:aws_client(), update_endpoint_access_request()) ->
    {ok, update_endpoint_access_response(), tuple()} |
    {error, any()} |
    {error, update_endpoint_access_errors(), tuple()}.
update_endpoint_access(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_endpoint_access(Client, Input, []).

-spec update_endpoint_access(aws_client:aws_client(), update_endpoint_access_request(), proplists:proplist()) ->
    {ok, update_endpoint_access_response(), tuple()} |
    {error, any()} |
    {error, update_endpoint_access_errors(), tuple()}.
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
-spec update_namespace(aws_client:aws_client(), update_namespace_request()) ->
    {ok, update_namespace_response(), tuple()} |
    {error, any()} |
    {error, update_namespace_errors(), tuple()}.
update_namespace(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_namespace(Client, Input, []).

-spec update_namespace(aws_client:aws_client(), update_namespace_request(), proplists:proplist()) ->
    {ok, update_namespace_response(), tuple()} |
    {error, any()} |
    {error, update_namespace_errors(), tuple()}.
update_namespace(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateNamespace">>, Input, Options).

%% @doc Updates a scheduled action.
-spec update_scheduled_action(aws_client:aws_client(), update_scheduled_action_request()) ->
    {ok, update_scheduled_action_response(), tuple()} |
    {error, any()} |
    {error, update_scheduled_action_errors(), tuple()}.
update_scheduled_action(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_scheduled_action(Client, Input, []).

-spec update_scheduled_action(aws_client:aws_client(), update_scheduled_action_request(), proplists:proplist()) ->
    {ok, update_scheduled_action_response(), tuple()} |
    {error, any()} |
    {error, update_scheduled_action_errors(), tuple()}.
update_scheduled_action(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateScheduledAction">>, Input, Options).

%% @doc Updates a snapshot.
-spec update_snapshot(aws_client:aws_client(), update_snapshot_request()) ->
    {ok, update_snapshot_response(), tuple()} |
    {error, any()} |
    {error, update_snapshot_errors(), tuple()}.
update_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_snapshot(Client, Input, []).

-spec update_snapshot(aws_client:aws_client(), update_snapshot_request(), proplists:proplist()) ->
    {ok, update_snapshot_response(), tuple()} |
    {error, any()} |
    {error, update_snapshot_errors(), tuple()}.
update_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateSnapshot">>, Input, Options).

%% @doc Updates a snapshot copy configuration.
-spec update_snapshot_copy_configuration(aws_client:aws_client(), update_snapshot_copy_configuration_request()) ->
    {ok, update_snapshot_copy_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_snapshot_copy_configuration_errors(), tuple()}.
update_snapshot_copy_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_snapshot_copy_configuration(Client, Input, []).

-spec update_snapshot_copy_configuration(aws_client:aws_client(), update_snapshot_copy_configuration_request(), proplists:proplist()) ->
    {ok, update_snapshot_copy_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_snapshot_copy_configuration_errors(), tuple()}.
update_snapshot_copy_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateSnapshotCopyConfiguration">>, Input, Options).

%% @doc Update a usage limit in Amazon Redshift Serverless.
%%
%% You can't update the usage type or period of a usage limit.
-spec update_usage_limit(aws_client:aws_client(), update_usage_limit_request()) ->
    {ok, update_usage_limit_response(), tuple()} |
    {error, any()} |
    {error, update_usage_limit_errors(), tuple()}.
update_usage_limit(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_usage_limit(Client, Input, []).

-spec update_usage_limit(aws_client:aws_client(), update_usage_limit_request(), proplists:proplist()) ->
    {ok, update_usage_limit_response(), tuple()} |
    {error, any()} |
    {error, update_usage_limit_errors(), tuple()}.
update_usage_limit(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateUsageLimit">>, Input, Options).

%% @doc Updates a workgroup with the specified configuration settings.
%%
%% You can't update multiple parameters in one request. For example,
%% you can update `baseCapacity' or `port' in a single request, but
%% you can't update both in the same request.
%%
%% VPC Block Public Access (BPA) enables you to block resources in VPCs and
%% subnets that
%% you own in a Region from reaching or being reached from the internet
%% through internet
%% gateways and egress-only internet gateways. If a workgroup is in an
%% account with VPC BPA
%% turned on, the following capabilities are blocked:
%%
%% Creating a public access workgroup
%%
%% Modifying a private workgroup to public
%%
%% Adding a subnet with VPC BPA turned on to the workgroup when the workgroup
%% is
%% public
%%
%% For more information about VPC BPA, see Block public access to VPCs and
%% subnets:
%% https://docs.aws.amazon.com/vpc/latest/userguide/security-vpc-bpa.html in
%% the Amazon VPC User Guide.
-spec update_workgroup(aws_client:aws_client(), update_workgroup_request()) ->
    {ok, update_workgroup_response(), tuple()} |
    {error, any()} |
    {error, update_workgroup_errors(), tuple()}.
update_workgroup(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_workgroup(Client, Input, []).

-spec update_workgroup(aws_client:aws_client(), update_workgroup_request(), proplists:proplist()) ->
    {ok, update_workgroup_response(), tuple()} |
    {error, any()} |
    {error, update_workgroup_errors(), tuple()}.
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
