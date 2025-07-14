%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc AWS Elastic Disaster Recovery Service.
-module(aws_drs).

-export([associate_source_network_stack/2,
         associate_source_network_stack/3,
         create_extended_source_server/2,
         create_extended_source_server/3,
         create_launch_configuration_template/2,
         create_launch_configuration_template/3,
         create_replication_configuration_template/2,
         create_replication_configuration_template/3,
         create_source_network/2,
         create_source_network/3,
         delete_job/2,
         delete_job/3,
         delete_launch_action/2,
         delete_launch_action/3,
         delete_launch_configuration_template/2,
         delete_launch_configuration_template/3,
         delete_recovery_instance/2,
         delete_recovery_instance/3,
         delete_replication_configuration_template/2,
         delete_replication_configuration_template/3,
         delete_source_network/2,
         delete_source_network/3,
         delete_source_server/2,
         delete_source_server/3,
         describe_job_log_items/2,
         describe_job_log_items/3,
         describe_jobs/2,
         describe_jobs/3,
         describe_launch_configuration_templates/2,
         describe_launch_configuration_templates/3,
         describe_recovery_instances/2,
         describe_recovery_instances/3,
         describe_recovery_snapshots/2,
         describe_recovery_snapshots/3,
         describe_replication_configuration_templates/2,
         describe_replication_configuration_templates/3,
         describe_source_networks/2,
         describe_source_networks/3,
         describe_source_servers/2,
         describe_source_servers/3,
         disconnect_recovery_instance/2,
         disconnect_recovery_instance/3,
         disconnect_source_server/2,
         disconnect_source_server/3,
         export_source_network_cfn_template/2,
         export_source_network_cfn_template/3,
         get_failback_replication_configuration/2,
         get_failback_replication_configuration/3,
         get_launch_configuration/2,
         get_launch_configuration/3,
         get_replication_configuration/2,
         get_replication_configuration/3,
         initialize_service/2,
         initialize_service/3,
         list_extensible_source_servers/2,
         list_extensible_source_servers/3,
         list_launch_actions/2,
         list_launch_actions/3,
         list_staging_accounts/1,
         list_staging_accounts/3,
         list_staging_accounts/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         put_launch_action/2,
         put_launch_action/3,
         retry_data_replication/2,
         retry_data_replication/3,
         reverse_replication/2,
         reverse_replication/3,
         start_failback_launch/2,
         start_failback_launch/3,
         start_recovery/2,
         start_recovery/3,
         start_replication/2,
         start_replication/3,
         start_source_network_recovery/2,
         start_source_network_recovery/3,
         start_source_network_replication/2,
         start_source_network_replication/3,
         stop_failback/2,
         stop_failback/3,
         stop_replication/2,
         stop_replication/3,
         stop_source_network_replication/2,
         stop_source_network_replication/3,
         tag_resource/3,
         tag_resource/4,
         terminate_recovery_instances/2,
         terminate_recovery_instances/3,
         untag_resource/3,
         untag_resource/4,
         update_failback_replication_configuration/2,
         update_failback_replication_configuration/3,
         update_launch_configuration/2,
         update_launch_configuration/3,
         update_launch_configuration_template/2,
         update_launch_configuration_template/3,
         update_replication_configuration/2,
         update_replication_configuration/3,
         update_replication_configuration_template/2,
         update_replication_configuration_template/3]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% describe_job_log_items_request() :: #{
%%   <<"jobID">> := string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type describe_job_log_items_request() :: #{binary() => any()}.


%% Example:
%% update_failback_replication_configuration_request() :: #{
%%   <<"bandwidthThrottling">> => float(),
%%   <<"name">> => string(),
%%   <<"recoveryInstanceID">> := string(),
%%   <<"usePrivateIP">> => [boolean()]
%% }
-type update_failback_replication_configuration_request() :: #{binary() => any()}.


%% Example:
%% describe_recovery_instances_request_filters() :: #{
%%   <<"recoveryInstanceIDs">> => list(string()),
%%   <<"sourceServerIDs">> => list(string())
%% }
-type describe_recovery_instances_request_filters() :: #{binary() => any()}.


%% Example:
%% describe_source_servers_request() :: #{
%%   <<"filters">> => describe_source_servers_request_filters(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type describe_source_servers_request() :: #{binary() => any()}.


%% Example:
%% list_staging_accounts_response() :: #{
%%   <<"accounts">> => list(account()),
%%   <<"nextToken">> => string()
%% }
-type list_staging_accounts_response() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% start_recovery_request_source_server() :: #{
%%   <<"recoverySnapshotID">> => string(),
%%   <<"sourceServerID">> => string()
%% }
-type start_recovery_request_source_server() :: #{binary() => any()}.


%% Example:
%% life_cycle() :: #{
%%   <<"addedToServiceDateTime">> => string(),
%%   <<"elapsedReplicationDuration">> => string(),
%%   <<"firstByteDateTime">> => string(),
%%   <<"lastLaunch">> => life_cycle_last_launch(),
%%   <<"lastSeenByServiceDateTime">> => string()
%% }
-type life_cycle() :: #{binary() => any()}.


%% Example:
%% recovery_life_cycle() :: #{
%%   <<"apiCallDateTime">> => [non_neg_integer()],
%%   <<"jobID">> => string(),
%%   <<"lastRecoveryResult">> => string()
%% }
-type recovery_life_cycle() :: #{binary() => any()}.


%% Example:
%% export_source_network_cfn_template_request() :: #{
%%   <<"sourceNetworkID">> := string()
%% }
-type export_source_network_cfn_template_request() :: #{binary() => any()}.


%% Example:
%% source_cloud_properties() :: #{
%%   <<"originAccountID">> => string(),
%%   <<"originAvailabilityZone">> => string(),
%%   <<"originRegion">> => string(),
%%   <<"sourceOutpostArn">> => string()
%% }
-type source_cloud_properties() :: #{binary() => any()}.


%% Example:
%% list_extensible_source_servers_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"stagingAccountID">> := string()
%% }
-type list_extensible_source_servers_request() :: #{binary() => any()}.


%% Example:
%% describe_launch_configuration_templates_request() :: #{
%%   <<"launchConfigurationTemplateIDs">> => list(string()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type describe_launch_configuration_templates_request() :: #{binary() => any()}.

%% Example:
%% delete_source_server_response() :: #{}
-type delete_source_server_response() :: #{}.


%% Example:
%% delete_source_server_request() :: #{
%%   <<"sourceServerID">> := string()
%% }
-type delete_source_server_request() :: #{binary() => any()}.


%% Example:
%% describe_recovery_instances_response() :: #{
%%   <<"items">> => list(recovery_instance()),
%%   <<"nextToken">> => string()
%% }
-type describe_recovery_instances_response() :: #{binary() => any()}.


%% Example:
%% replication_configuration_template() :: #{
%%   <<"arn">> => string(),
%%   <<"associateDefaultSecurityGroup">> => [boolean()],
%%   <<"autoReplicateNewDisks">> => [boolean()],
%%   <<"bandwidthThrottling">> => float(),
%%   <<"createPublicIP">> => [boolean()],
%%   <<"dataPlaneRouting">> => string(),
%%   <<"defaultLargeStagingDiskType">> => string(),
%%   <<"ebsEncryption">> => string(),
%%   <<"ebsEncryptionKeyArn">> => string(),
%%   <<"pitPolicy">> => list(p_i_t_policy_rule()),
%%   <<"replicationConfigurationTemplateID">> := string(),
%%   <<"replicationServerInstanceType">> => string(),
%%   <<"replicationServersSecurityGroupsIDs">> => list(string()),
%%   <<"stagingAreaSubnetId">> => string(),
%%   <<"stagingAreaTags">> => map(),
%%   <<"tags">> => map(),
%%   <<"useDedicatedReplicationServer">> => [boolean()]
%% }
-type replication_configuration_template() :: #{binary() => any()}.


%% Example:
%% recovery_instance_properties() :: #{
%%   <<"cpus">> => list(c_p_u()),
%%   <<"disks">> => list(recovery_instance_disk()),
%%   <<"identificationHints">> => identification_hints(),
%%   <<"lastUpdatedDateTime">> => string(),
%%   <<"networkInterfaces">> => list(network_interface()),
%%   <<"os">> => o_s(),
%%   <<"ramBytes">> => float()
%% }
-type recovery_instance_properties() :: #{binary() => any()}.


%% Example:
%% recovery_instance_disk() :: #{
%%   <<"bytes">> => float(),
%%   <<"ebsVolumeID">> => string(),
%%   <<"internalDeviceName">> => string()
%% }
-type recovery_instance_disk() :: #{binary() => any()}.


%% Example:
%% update_replication_configuration_template_request() :: #{
%%   <<"arn">> => string(),
%%   <<"associateDefaultSecurityGroup">> => [boolean()],
%%   <<"autoReplicateNewDisks">> => [boolean()],
%%   <<"bandwidthThrottling">> => float(),
%%   <<"createPublicIP">> => [boolean()],
%%   <<"dataPlaneRouting">> => string(),
%%   <<"defaultLargeStagingDiskType">> => string(),
%%   <<"ebsEncryption">> => string(),
%%   <<"ebsEncryptionKeyArn">> => string(),
%%   <<"pitPolicy">> => list(p_i_t_policy_rule()),
%%   <<"replicationConfigurationTemplateID">> := string(),
%%   <<"replicationServerInstanceType">> => string(),
%%   <<"replicationServersSecurityGroupsIDs">> => list(string()),
%%   <<"stagingAreaSubnetId">> => string(),
%%   <<"stagingAreaTags">> => map(),
%%   <<"useDedicatedReplicationServer">> => [boolean()]
%% }
-type update_replication_configuration_template_request() :: #{binary() => any()}.


%% Example:
%% replication_configuration_replicated_disk() :: #{
%%   <<"deviceName">> => string(),
%%   <<"iops">> => float(),
%%   <<"isBootDisk">> => [boolean()],
%%   <<"optimizedStagingDiskType">> => string(),
%%   <<"stagingDiskType">> => string(),
%%   <<"throughput">> => float()
%% }
-type replication_configuration_replicated_disk() :: #{binary() => any()}.


%% Example:
%% terminate_recovery_instances_response() :: #{
%%   <<"job">> => job()
%% }
-type terminate_recovery_instances_response() :: #{binary() => any()}.


%% Example:
%% participating_resource() :: #{
%%   <<"launchStatus">> => string(),
%%   <<"participatingResourceID">> => list()
%% }
-type participating_resource() :: #{binary() => any()}.


%% Example:
%% put_launch_action_request() :: #{
%%   <<"actionCode">> := string(),
%%   <<"actionId">> := string(),
%%   <<"actionVersion">> := string(),
%%   <<"active">> := [boolean()],
%%   <<"category">> := string(),
%%   <<"description">> := string(),
%%   <<"name">> := string(),
%%   <<"optional">> := [boolean()],
%%   <<"order">> := integer(),
%%   <<"parameters">> => map(),
%%   <<"resourceId">> := string()
%% }
-type put_launch_action_request() :: #{binary() => any()}.


%% Example:
%% stop_failback_request() :: #{
%%   <<"recoveryInstanceID">> := string()
%% }
-type stop_failback_request() :: #{binary() => any()}.


%% Example:
%% delete_source_network_request() :: #{
%%   <<"sourceNetworkID">> := string()
%% }
-type delete_source_network_request() :: #{binary() => any()}.


%% Example:
%% network_interface() :: #{
%%   <<"ips">> => list(string()),
%%   <<"isPrimary">> => [boolean()],
%%   <<"macAddress">> => string()
%% }
-type network_interface() :: #{binary() => any()}.


%% Example:
%% describe_source_networks_response() :: #{
%%   <<"items">> => list(source_network()),
%%   <<"nextToken">> => string()
%% }
-type describe_source_networks_response() :: #{binary() => any()}.


%% Example:
%% create_replication_configuration_template_request() :: #{
%%   <<"associateDefaultSecurityGroup">> := [boolean()],
%%   <<"autoReplicateNewDisks">> => [boolean()],
%%   <<"bandwidthThrottling">> := float(),
%%   <<"createPublicIP">> := [boolean()],
%%   <<"dataPlaneRouting">> := string(),
%%   <<"defaultLargeStagingDiskType">> := string(),
%%   <<"ebsEncryption">> := string(),
%%   <<"ebsEncryptionKeyArn">> => string(),
%%   <<"pitPolicy">> := list(p_i_t_policy_rule()),
%%   <<"replicationServerInstanceType">> := string(),
%%   <<"replicationServersSecurityGroupsIDs">> := list(string()),
%%   <<"stagingAreaSubnetId">> := string(),
%%   <<"stagingAreaTags">> := map(),
%%   <<"tags">> => map(),
%%   <<"useDedicatedReplicationServer">> := [boolean()]
%% }
-type create_replication_configuration_template_request() :: #{binary() => any()}.


%% Example:
%% put_launch_action_response() :: #{
%%   <<"actionCode">> => string(),
%%   <<"actionId">> => string(),
%%   <<"actionVersion">> => string(),
%%   <<"active">> => [boolean()],
%%   <<"category">> => string(),
%%   <<"description">> => string(),
%%   <<"name">> => string(),
%%   <<"optional">> => [boolean()],
%%   <<"order">> => integer(),
%%   <<"parameters">> => map(),
%%   <<"resourceId">> => string(),
%%   <<"type">> => string()
%% }
-type put_launch_action_response() :: #{binary() => any()}.


%% Example:
%% staging_source_server() :: #{
%%   <<"arn">> => string(),
%%   <<"hostname">> => string(),
%%   <<"tags">> => map()
%% }
-type staging_source_server() :: #{binary() => any()}.


%% Example:
%% launch_action_parameter() :: #{
%%   <<"type">> => string(),
%%   <<"value">> => string()
%% }
-type launch_action_parameter() :: #{binary() => any()}.


%% Example:
%% retry_data_replication_request() :: #{
%%   <<"sourceServerID">> => string()
%% }
-type retry_data_replication_request() :: #{binary() => any()}.


%% Example:
%% get_replication_configuration_request() :: #{
%%   <<"sourceServerID">> := string()
%% }
-type get_replication_configuration_request() :: #{binary() => any()}.


%% Example:
%% start_replication_request() :: #{
%%   <<"sourceServerID">> := string()
%% }
-type start_replication_request() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"tagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% delete_launch_action_response() :: #{}
-type delete_launch_action_response() :: #{}.


%% Example:
%% start_source_network_replication_request() :: #{
%%   <<"sourceNetworkID">> := string()
%% }
-type start_source_network_replication_request() :: #{binary() => any()}.


%% Example:
%% stop_replication_request() :: #{
%%   <<"sourceServerID">> := string()
%% }
-type stop_replication_request() :: #{binary() => any()}.


%% Example:
%% start_failback_launch_response() :: #{
%%   <<"job">> => job()
%% }
-type start_failback_launch_response() :: #{binary() => any()}.


%% Example:
%% launch_configuration_template() :: #{
%%   <<"arn">> => string(),
%%   <<"copyPrivateIp">> => [boolean()],
%%   <<"copyTags">> => [boolean()],
%%   <<"exportBucketArn">> => string(),
%%   <<"launchConfigurationTemplateID">> => string(),
%%   <<"launchDisposition">> => string(),
%%   <<"launchIntoSourceInstance">> => [boolean()],
%%   <<"licensing">> => licensing(),
%%   <<"postLaunchEnabled">> => [boolean()],
%%   <<"tags">> => map(),
%%   <<"targetInstanceTypeRightSizingMethod">> => string()
%% }
-type launch_configuration_template() :: #{binary() => any()}.


%% Example:
%% describe_recovery_snapshots_request() :: #{
%%   <<"filters">> => describe_recovery_snapshots_request_filters(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"order">> => string(),
%%   <<"sourceServerID">> := string()
%% }
-type describe_recovery_snapshots_request() :: #{binary() => any()}.


%% Example:
%% launch_actions_request_filters() :: #{
%%   <<"actionIds">> => list(string())
%% }
-type launch_actions_request_filters() :: #{binary() => any()}.


%% Example:
%% licensing() :: #{
%%   <<"osByol">> => [boolean()]
%% }
-type licensing() :: #{binary() => any()}.


%% Example:
%% p_i_t_policy_rule() :: #{
%%   <<"enabled">> => [boolean()],
%%   <<"interval">> => integer(),
%%   <<"retentionDuration">> => integer(),
%%   <<"ruleID">> => float(),
%%   <<"units">> => string()
%% }
-type p_i_t_policy_rule() :: #{binary() => any()}.


%% Example:
%% recovery_instance_failback() :: #{
%%   <<"agentLastSeenByServiceDateTime">> => string(),
%%   <<"elapsedReplicationDuration">> => string(),
%%   <<"failbackClientID">> => string(),
%%   <<"failbackClientLastSeenByServiceDateTime">> => string(),
%%   <<"failbackInitiationTime">> => string(),
%%   <<"failbackJobID">> => string(),
%%   <<"failbackLaunchType">> => string(),
%%   <<"failbackToOriginalServer">> => [boolean()],
%%   <<"firstByteDateTime">> => string(),
%%   <<"state">> => string()
%% }
-type recovery_instance_failback() :: #{binary() => any()}.


%% Example:
%% start_recovery_request() :: #{
%%   <<"isDrill">> => [boolean()],
%%   <<"sourceServers">> := list(start_recovery_request_source_server()),
%%   <<"tags">> => map()
%% }
-type start_recovery_request() :: #{binary() => any()}.


%% Example:
%% identification_hints() :: #{
%%   <<"awsInstanceID">> => string(),
%%   <<"fqdn">> => string(),
%%   <<"hostname">> => string(),
%%   <<"vmWareUuid">> => string()
%% }
-type identification_hints() :: #{binary() => any()}.


%% Example:
%% launch_action() :: #{
%%   <<"actionCode">> => string(),
%%   <<"actionId">> => string(),
%%   <<"actionVersion">> => string(),
%%   <<"active">> => [boolean()],
%%   <<"category">> => string(),
%%   <<"description">> => string(),
%%   <<"name">> => string(),
%%   <<"optional">> => [boolean()],
%%   <<"order">> => integer(),
%%   <<"parameters">> => map(),
%%   <<"type">> => string()
%% }
-type launch_action() :: #{binary() => any()}.


%% Example:
%% source_properties() :: #{
%%   <<"cpus">> => list(c_p_u()),
%%   <<"disks">> => list(disk()),
%%   <<"identificationHints">> => identification_hints(),
%%   <<"lastUpdatedDateTime">> => string(),
%%   <<"networkInterfaces">> => list(network_interface()),
%%   <<"os">> => o_s(),
%%   <<"ramBytes">> => float(),
%%   <<"recommendedInstanceType">> => string(),
%%   <<"supportsNitroInstances">> => [boolean()]
%% }
-type source_properties() :: #{binary() => any()}.


%% Example:
%% describe_source_servers_response() :: #{
%%   <<"items">> => list(source_server()),
%%   <<"nextToken">> => string()
%% }
-type describe_source_servers_response() :: #{binary() => any()}.


%% Example:
%% reverse_replication_request() :: #{
%%   <<"recoveryInstanceID">> := string()
%% }
-type reverse_replication_request() :: #{binary() => any()}.


%% Example:
%% describe_replication_configuration_templates_response() :: #{
%%   <<"items">> => list(replication_configuration_template()),
%%   <<"nextToken">> => string()
%% }
-type describe_replication_configuration_templates_response() :: #{binary() => any()}.


%% Example:
%% recovery_instance_data_replication_info_replicated_disk() :: #{
%%   <<"backloggedStorageBytes">> => float(),
%%   <<"deviceName">> => string(),
%%   <<"replicatedStorageBytes">> => float(),
%%   <<"rescannedStorageBytes">> => float(),
%%   <<"totalStorageBytes">> => float()
%% }
-type recovery_instance_data_replication_info_replicated_disk() :: #{binary() => any()}.

%% Example:
%% delete_replication_configuration_template_response() :: #{}
-type delete_replication_configuration_template_response() :: #{}.


%% Example:
%% replication_configuration() :: #{
%%   <<"associateDefaultSecurityGroup">> => [boolean()],
%%   <<"autoReplicateNewDisks">> => [boolean()],
%%   <<"bandwidthThrottling">> => float(),
%%   <<"createPublicIP">> => [boolean()],
%%   <<"dataPlaneRouting">> => string(),
%%   <<"defaultLargeStagingDiskType">> => string(),
%%   <<"ebsEncryption">> => string(),
%%   <<"ebsEncryptionKeyArn">> => string(),
%%   <<"name">> => string(),
%%   <<"pitPolicy">> => list(p_i_t_policy_rule()),
%%   <<"replicatedDisks">> => list(replication_configuration_replicated_disk()),
%%   <<"replicationServerInstanceType">> => string(),
%%   <<"replicationServersSecurityGroupsIDs">> => list(string()),
%%   <<"sourceServerID">> => string(),
%%   <<"stagingAreaSubnetId">> => string(),
%%   <<"stagingAreaTags">> => map(),
%%   <<"useDedicatedReplicationServer">> => [boolean()]
%% }
-type replication_configuration() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"code">> => string(),
%%   <<"message">> => string(),
%%   <<"resourceId">> => string(),
%%   <<"resourceType">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"code">> => string(),
%%   <<"message">> => string(),
%%   <<"resourceId">> => string(),
%%   <<"resourceType">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% describe_source_networks_request() :: #{
%%   <<"filters">> => describe_source_networks_request_filters(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type describe_source_networks_request() :: #{binary() => any()}.


%% Example:
%% data_replication_error() :: #{
%%   <<"error">> => string(),
%%   <<"rawError">> => string()
%% }
-type data_replication_error() :: #{binary() => any()}.


%% Example:
%% disconnect_recovery_instance_request() :: #{
%%   <<"recoveryInstanceID">> := string()
%% }
-type disconnect_recovery_instance_request() :: #{binary() => any()}.


%% Example:
%% list_launch_actions_request() :: #{
%%   <<"filters">> => launch_actions_request_filters(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"resourceId">> := string()
%% }
-type list_launch_actions_request() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"code">> => string(),
%%   <<"message">> => string(),
%%   <<"quotaCode">> => string(),
%%   <<"resourceId">> => string(),
%%   <<"resourceType">> => string(),
%%   <<"serviceCode">> => string()
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% start_source_network_recovery_request_network_entry() :: #{
%%   <<"cfnStackName">> => string(),
%%   <<"sourceNetworkID">> => string()
%% }
-type start_source_network_recovery_request_network_entry() :: #{binary() => any()}.


%% Example:
%% c_p_u() :: #{
%%   <<"cores">> => float(),
%%   <<"modelName">> => string()
%% }
-type c_p_u() :: #{binary() => any()}.


%% Example:
%% uninitialized_account_exception() :: #{
%%   <<"code">> => string(),
%%   <<"message">> => string()
%% }
-type uninitialized_account_exception() :: #{binary() => any()}.


%% Example:
%% launch_action_run() :: #{
%%   <<"action">> => launch_action(),
%%   <<"failureReason">> => string(),
%%   <<"runId">> => string(),
%%   <<"status">> => string()
%% }
-type launch_action_run() :: #{binary() => any()}.


%% Example:
%% delete_recovery_instance_request() :: #{
%%   <<"recoveryInstanceID">> := string()
%% }
-type delete_recovery_instance_request() :: #{binary() => any()}.


%% Example:
%% account() :: #{
%%   <<"accountID">> => string()
%% }
-type account() :: #{binary() => any()}.


%% Example:
%% recovery_instance_data_replication_initiation() :: #{
%%   <<"startDateTime">> => string(),
%%   <<"steps">> => list(recovery_instance_data_replication_initiation_step())
%% }
-type recovery_instance_data_replication_initiation() :: #{binary() => any()}.

%% Example:
%% initialize_service_request() :: #{}
-type initialize_service_request() :: #{}.


%% Example:
%% create_launch_configuration_template_request() :: #{
%%   <<"copyPrivateIp">> => [boolean()],
%%   <<"copyTags">> => [boolean()],
%%   <<"exportBucketArn">> => string(),
%%   <<"launchDisposition">> => string(),
%%   <<"launchIntoSourceInstance">> => [boolean()],
%%   <<"licensing">> => licensing(),
%%   <<"postLaunchEnabled">> => [boolean()],
%%   <<"tags">> => map(),
%%   <<"targetInstanceTypeRightSizingMethod">> => string()
%% }
-type create_launch_configuration_template_request() :: #{binary() => any()}.


%% Example:
%% recovery_instance_data_replication_info() :: #{
%%   <<"dataReplicationError">> => recovery_instance_data_replication_error(),
%%   <<"dataReplicationInitiation">> => recovery_instance_data_replication_initiation(),
%%   <<"dataReplicationState">> => string(),
%%   <<"etaDateTime">> => string(),
%%   <<"lagDuration">> => string(),
%%   <<"replicatedDisks">> => list(recovery_instance_data_replication_info_replicated_disk()),
%%   <<"stagingAvailabilityZone">> => string(),
%%   <<"stagingOutpostArn">> => string()
%% }
-type recovery_instance_data_replication_info() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% create_source_network_request() :: #{
%%   <<"originAccountID">> := string(),
%%   <<"originRegion">> := string(),
%%   <<"tags">> => map(),
%%   <<"vpcID">> := string()
%% }
-type create_source_network_request() :: #{binary() => any()}.


%% Example:
%% update_launch_configuration_template_response() :: #{
%%   <<"launchConfigurationTemplate">> => launch_configuration_template()
%% }
-type update_launch_configuration_template_response() :: #{binary() => any()}.


%% Example:
%% source_network() :: #{
%%   <<"arn">> => string(),
%%   <<"cfnStackName">> => string(),
%%   <<"lastRecovery">> => recovery_life_cycle(),
%%   <<"launchedVpcID">> => string(),
%%   <<"replicationStatus">> => string(),
%%   <<"replicationStatusDetails">> => string(),
%%   <<"sourceAccountID">> => string(),
%%   <<"sourceNetworkID">> => string(),
%%   <<"sourceRegion">> => string(),
%%   <<"sourceVpcID">> => string(),
%%   <<"tags">> => map()
%% }
-type source_network() :: #{binary() => any()}.


%% Example:
%% data_replication_info() :: #{
%%   <<"dataReplicationError">> => data_replication_error(),
%%   <<"dataReplicationInitiation">> => data_replication_initiation(),
%%   <<"dataReplicationState">> => string(),
%%   <<"etaDateTime">> => string(),
%%   <<"lagDuration">> => string(),
%%   <<"replicatedDisks">> => list(data_replication_info_replicated_disk()),
%%   <<"stagingAvailabilityZone">> => string(),
%%   <<"stagingOutpostArn">> => string()
%% }
-type data_replication_info() :: #{binary() => any()}.


%% Example:
%% validation_exception_field() :: #{
%%   <<"message">> => string(),
%%   <<"name">> => string()
%% }
-type validation_exception_field() :: #{binary() => any()}.


%% Example:
%% describe_source_servers_request_filters() :: #{
%%   <<"hardwareId">> => string(),
%%   <<"sourceServerIDs">> => list(string()),
%%   <<"stagingAccountIDs">> => list(string())
%% }
-type describe_source_servers_request_filters() :: #{binary() => any()}.


%% Example:
%% reverse_replication_response() :: #{
%%   <<"reversedDirectionSourceServerArn">> => string()
%% }
-type reverse_replication_response() :: #{binary() => any()}.


%% Example:
%% terminate_recovery_instances_request() :: #{
%%   <<"recoveryInstanceIDs">> := list(string())
%% }
-type terminate_recovery_instances_request() :: #{binary() => any()}.


%% Example:
%% data_replication_info_replicated_disk() :: #{
%%   <<"backloggedStorageBytes">> => float(),
%%   <<"deviceName">> => string(),
%%   <<"replicatedStorageBytes">> => float(),
%%   <<"rescannedStorageBytes">> => float(),
%%   <<"totalStorageBytes">> => float(),
%%   <<"volumeStatus">> => string()
%% }
-type data_replication_info_replicated_disk() :: #{binary() => any()}.


%% Example:
%% disconnect_source_server_request() :: #{
%%   <<"sourceServerID">> := string()
%% }
-type disconnect_source_server_request() :: #{binary() => any()}.

%% Example:
%% initialize_service_response() :: #{}
-type initialize_service_response() :: #{}.


%% Example:
%% launch_actions_status() :: #{
%%   <<"runs">> => list(launch_action_run()),
%%   <<"ssmAgentDiscoveryDatetime">> => string()
%% }
-type launch_actions_status() :: #{binary() => any()}.


%% Example:
%% conversion_properties() :: #{
%%   <<"dataTimestamp">> => string(),
%%   <<"forceUefi">> => [boolean()],
%%   <<"rootVolumeName">> => string(),
%%   <<"volumeToConversionMap">> => map(),
%%   <<"volumeToProductCodes">> => map(),
%%   <<"volumeToVolumeSize">> => map()
%% }
-type conversion_properties() :: #{binary() => any()}.


%% Example:
%% product_code() :: #{
%%   <<"productCodeId">> => string(),
%%   <<"productCodeMode">> => string()
%% }
-type product_code() :: #{binary() => any()}.


%% Example:
%% export_source_network_cfn_template_response() :: #{
%%   <<"s3DestinationUrl">> => string()
%% }
-type export_source_network_cfn_template_response() :: #{binary() => any()}.


%% Example:
%% describe_jobs_request_filters() :: #{
%%   <<"fromDate">> => string(),
%%   <<"jobIDs">> => list(string()),
%%   <<"toDate">> => string()
%% }
-type describe_jobs_request_filters() :: #{binary() => any()}.


%% Example:
%% data_replication_initiation() :: #{
%%   <<"nextAttemptDateTime">> => string(),
%%   <<"startDateTime">> => string(),
%%   <<"steps">> => list(data_replication_initiation_step())
%% }
-type data_replication_initiation() :: #{binary() => any()}.


%% Example:
%% describe_launch_configuration_templates_response() :: #{
%%   <<"items">> => list(launch_configuration_template()),
%%   <<"nextToken">> => string()
%% }
-type describe_launch_configuration_templates_response() :: #{binary() => any()}.


%% Example:
%% delete_launch_action_request() :: #{
%%   <<"actionId">> := string(),
%%   <<"resourceId">> := string()
%% }
-type delete_launch_action_request() :: #{binary() => any()}.


%% Example:
%% get_launch_configuration_request() :: #{
%%   <<"sourceServerID">> := string()
%% }
-type get_launch_configuration_request() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => string(),
%%   <<"retryAfterSeconds">> => float()
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% describe_source_networks_request_filters() :: #{
%%   <<"originAccountID">> => string(),
%%   <<"originRegion">> => string(),
%%   <<"sourceNetworkIDs">> => list(string())
%% }
-type describe_source_networks_request_filters() :: #{binary() => any()}.


%% Example:
%% associate_source_network_stack_request() :: #{
%%   <<"cfnStackName">> := string(),
%%   <<"sourceNetworkID">> := string()
%% }
-type associate_source_network_stack_request() :: #{binary() => any()}.


%% Example:
%% participating_server() :: #{
%%   <<"launchActionsStatus">> => launch_actions_status(),
%%   <<"launchStatus">> => string(),
%%   <<"recoveryInstanceID">> => string(),
%%   <<"sourceServerID">> => string()
%% }
-type participating_server() :: #{binary() => any()}.


%% Example:
%% data_replication_initiation_step() :: #{
%%   <<"name">> => string(),
%%   <<"status">> => string()
%% }
-type data_replication_initiation_step() :: #{binary() => any()}.


%% Example:
%% start_source_network_recovery_request() :: #{
%%   <<"deployAsNew">> => [boolean()],
%%   <<"sourceNetworks">> := list(start_source_network_recovery_request_network_entry()),
%%   <<"tags">> => map()
%% }
-type start_source_network_recovery_request() :: #{binary() => any()}.


%% Example:
%% stop_source_network_replication_response() :: #{
%%   <<"sourceNetwork">> => source_network()
%% }
-type stop_source_network_replication_response() :: #{binary() => any()}.


%% Example:
%% staging_area() :: #{
%%   <<"errorMessage">> => string(),
%%   <<"stagingAccountID">> => string(),
%%   <<"stagingSourceServerArn">> => string(),
%%   <<"status">> => string()
%% }
-type staging_area() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"code">> => string(),
%%   <<"message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% recovery_instance_data_replication_initiation_step() :: #{
%%   <<"name">> => string(),
%%   <<"status">> => string()
%% }
-type recovery_instance_data_replication_initiation_step() :: #{binary() => any()}.


%% Example:
%% life_cycle_last_launch_initiated() :: #{
%%   <<"apiCallDateTime">> => string(),
%%   <<"jobID">> => string(),
%%   <<"type">> => string()
%% }
-type life_cycle_last_launch_initiated() :: #{binary() => any()}.


%% Example:
%% list_launch_actions_response() :: #{
%%   <<"items">> => list(launch_action()),
%%   <<"nextToken">> => string()
%% }
-type list_launch_actions_response() :: #{binary() => any()}.


%% Example:
%% stop_replication_response() :: #{
%%   <<"sourceServer">> => source_server()
%% }
-type stop_replication_response() :: #{binary() => any()}.


%% Example:
%% start_replication_response() :: #{
%%   <<"sourceServer">> => source_server()
%% }
-type start_replication_response() :: #{binary() => any()}.


%% Example:
%% delete_job_request() :: #{
%%   <<"jobID">> := string()
%% }
-type delete_job_request() :: #{binary() => any()}.


%% Example:
%% start_source_network_replication_response() :: #{
%%   <<"sourceNetwork">> => source_network()
%% }
-type start_source_network_replication_response() :: #{binary() => any()}.


%% Example:
%% get_failback_replication_configuration_response() :: #{
%%   <<"bandwidthThrottling">> => float(),
%%   <<"name">> => string(),
%%   <<"recoveryInstanceID">> := string(),
%%   <<"usePrivateIP">> => [boolean()]
%% }
-type get_failback_replication_configuration_response() :: #{binary() => any()}.


%% Example:
%% describe_jobs_response() :: #{
%%   <<"items">> => list(job()),
%%   <<"nextToken">> => string()
%% }
-type describe_jobs_response() :: #{binary() => any()}.


%% Example:
%% disk() :: #{
%%   <<"bytes">> => float(),
%%   <<"deviceName">> => string()
%% }
-type disk() :: #{binary() => any()}.


%% Example:
%% update_launch_configuration_request() :: #{
%%   <<"copyPrivateIp">> => [boolean()],
%%   <<"copyTags">> => [boolean()],
%%   <<"launchDisposition">> => string(),
%%   <<"launchIntoInstanceProperties">> => launch_into_instance_properties(),
%%   <<"licensing">> => licensing(),
%%   <<"name">> => string(),
%%   <<"postLaunchEnabled">> => [boolean()],
%%   <<"sourceServerID">> := string(),
%%   <<"targetInstanceTypeRightSizingMethod">> => string()
%% }
-type update_launch_configuration_request() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"code">> => string(),
%%   <<"fieldList">> => list(validation_exception_field()),
%%   <<"message">> => string(),
%%   <<"reason">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% delete_replication_configuration_template_request() :: #{
%%   <<"replicationConfigurationTemplateID">> := string()
%% }
-type delete_replication_configuration_template_request() :: #{binary() => any()}.


%% Example:
%% job() :: #{
%%   <<"arn">> => string(),
%%   <<"creationDateTime">> => string(),
%%   <<"endDateTime">> => string(),
%%   <<"initiatedBy">> => string(),
%%   <<"jobID">> => string(),
%%   <<"participatingResources">> => list(participating_resource()),
%%   <<"participatingServers">> => list(participating_server()),
%%   <<"status">> => string(),
%%   <<"tags">> => map(),
%%   <<"type">> => string()
%% }
-type job() :: #{binary() => any()}.


%% Example:
%% get_failback_replication_configuration_request() :: #{
%%   <<"recoveryInstanceID">> := string()
%% }
-type get_failback_replication_configuration_request() :: #{binary() => any()}.


%% Example:
%% recovery_instance() :: #{
%%   <<"agentVersion">> => string(),
%%   <<"arn">> => string(),
%%   <<"dataReplicationInfo">> => recovery_instance_data_replication_info(),
%%   <<"ec2InstanceID">> => string(),
%%   <<"ec2InstanceState">> => string(),
%%   <<"failback">> => recovery_instance_failback(),
%%   <<"isDrill">> => [boolean()],
%%   <<"jobID">> => string(),
%%   <<"originAvailabilityZone">> => string(),
%%   <<"originEnvironment">> => string(),
%%   <<"pointInTimeSnapshotDateTime">> => string(),
%%   <<"recoveryInstanceID">> => string(),
%%   <<"recoveryInstanceProperties">> => recovery_instance_properties(),
%%   <<"sourceOutpostArn">> => string(),
%%   <<"sourceServerID">> => string(),
%%   <<"tags">> => map()
%% }
-type recovery_instance() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => string(),
%%   <<"quotaCode">> => string(),
%%   <<"retryAfterSeconds">> => string(),
%%   <<"serviceCode">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% launch_into_instance_properties() :: #{
%%   <<"launchIntoEC2InstanceID">> => string()
%% }
-type launch_into_instance_properties() :: #{binary() => any()}.


%% Example:
%% start_failback_launch_request() :: #{
%%   <<"recoveryInstanceIDs">> := list(string()),
%%   <<"tags">> => map()
%% }
-type start_failback_launch_request() :: #{binary() => any()}.


%% Example:
%% start_recovery_response() :: #{
%%   <<"job">> => job()
%% }
-type start_recovery_response() :: #{binary() => any()}.


%% Example:
%% list_staging_accounts_request() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string()
%% }
-type list_staging_accounts_request() :: #{binary() => any()}.


%% Example:
%% job_log_event_data() :: #{
%%   <<"conversionProperties">> => conversion_properties(),
%%   <<"conversionServerID">> => string(),
%%   <<"eventResourceData">> => list(),
%%   <<"rawError">> => string(),
%%   <<"sourceServerID">> => string(),
%%   <<"targetInstanceID">> => string()
%% }
-type job_log_event_data() :: #{binary() => any()}.


%% Example:
%% describe_jobs_request() :: #{
%%   <<"filters">> => describe_jobs_request_filters(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type describe_jobs_request() :: #{binary() => any()}.


%% Example:
%% launch_configuration() :: #{
%%   <<"copyPrivateIp">> => [boolean()],
%%   <<"copyTags">> => [boolean()],
%%   <<"ec2LaunchTemplateID">> => string(),
%%   <<"launchDisposition">> => string(),
%%   <<"launchIntoInstanceProperties">> => launch_into_instance_properties(),
%%   <<"licensing">> => licensing(),
%%   <<"name">> => string(),
%%   <<"postLaunchEnabled">> => [boolean()],
%%   <<"sourceServerID">> => string(),
%%   <<"targetInstanceTypeRightSizingMethod">> => string()
%% }
-type launch_configuration() :: #{binary() => any()}.


%% Example:
%% list_extensible_source_servers_response() :: #{
%%   <<"items">> => list(staging_source_server()),
%%   <<"nextToken">> => string()
%% }
-type list_extensible_source_servers_response() :: #{binary() => any()}.


%% Example:
%% recovery_snapshot() :: #{
%%   <<"ebsSnapshots">> => list(string()),
%%   <<"expectedTimestamp">> => string(),
%%   <<"snapshotID">> => string(),
%%   <<"sourceServerID">> => string(),
%%   <<"timestamp">> => string()
%% }
-type recovery_snapshot() :: #{binary() => any()}.


%% Example:
%% update_replication_configuration_request() :: #{
%%   <<"associateDefaultSecurityGroup">> => [boolean()],
%%   <<"autoReplicateNewDisks">> => [boolean()],
%%   <<"bandwidthThrottling">> => float(),
%%   <<"createPublicIP">> => [boolean()],
%%   <<"dataPlaneRouting">> => string(),
%%   <<"defaultLargeStagingDiskType">> => string(),
%%   <<"ebsEncryption">> => string(),
%%   <<"ebsEncryptionKeyArn">> => string(),
%%   <<"name">> => string(),
%%   <<"pitPolicy">> => list(p_i_t_policy_rule()),
%%   <<"replicatedDisks">> => list(replication_configuration_replicated_disk()),
%%   <<"replicationServerInstanceType">> => string(),
%%   <<"replicationServersSecurityGroupsIDs">> => list(string()),
%%   <<"sourceServerID">> := string(),
%%   <<"stagingAreaSubnetId">> => string(),
%%   <<"stagingAreaTags">> => map(),
%%   <<"useDedicatedReplicationServer">> => [boolean()]
%% }
-type update_replication_configuration_request() :: #{binary() => any()}.


%% Example:
%% source_network_data() :: #{
%%   <<"sourceNetworkID">> => string(),
%%   <<"sourceVpc">> => string(),
%%   <<"stackName">> => string(),
%%   <<"targetVpc">> => string()
%% }
-type source_network_data() :: #{binary() => any()}.


%% Example:
%% source_server() :: #{
%%   <<"agentVersion">> => string(),
%%   <<"arn">> => string(),
%%   <<"dataReplicationInfo">> => data_replication_info(),
%%   <<"lastLaunchResult">> => string(),
%%   <<"lifeCycle">> => life_cycle(),
%%   <<"recoveryInstanceId">> => string(),
%%   <<"replicationDirection">> => string(),
%%   <<"reversedDirectionSourceServerArn">> => string(),
%%   <<"sourceCloudProperties">> => source_cloud_properties(),
%%   <<"sourceNetworkID">> => string(),
%%   <<"sourceProperties">> => source_properties(),
%%   <<"sourceServerID">> => string(),
%%   <<"stagingArea">> => staging_area(),
%%   <<"tags">> => map()
%% }
-type source_server() :: #{binary() => any()}.

%% Example:
%% delete_source_network_response() :: #{}
-type delete_source_network_response() :: #{}.


%% Example:
%% stop_source_network_replication_request() :: #{
%%   <<"sourceNetworkID">> := string()
%% }
-type stop_source_network_replication_request() :: #{binary() => any()}.


%% Example:
%% start_source_network_recovery_response() :: #{
%%   <<"job">> => job()
%% }
-type start_source_network_recovery_response() :: #{binary() => any()}.


%% Example:
%% life_cycle_last_launch() :: #{
%%   <<"initiated">> => life_cycle_last_launch_initiated(),
%%   <<"status">> => string()
%% }
-type life_cycle_last_launch() :: #{binary() => any()}.


%% Example:
%% describe_recovery_instances_request() :: #{
%%   <<"filters">> => describe_recovery_instances_request_filters(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type describe_recovery_instances_request() :: #{binary() => any()}.


%% Example:
%% associate_source_network_stack_response() :: #{
%%   <<"job">> => job()
%% }
-type associate_source_network_stack_response() :: #{binary() => any()}.

%% Example:
%% delete_launch_configuration_template_response() :: #{}
-type delete_launch_configuration_template_response() :: #{}.

%% Example:
%% delete_job_response() :: #{}
-type delete_job_response() :: #{}.


%% Example:
%% describe_replication_configuration_templates_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"replicationConfigurationTemplateIDs">> => list(string())
%% }
-type describe_replication_configuration_templates_request() :: #{binary() => any()}.


%% Example:
%% o_s() :: #{
%%   <<"fullString">> => string()
%% }
-type o_s() :: #{binary() => any()}.


%% Example:
%% create_extended_source_server_response() :: #{
%%   <<"sourceServer">> => source_server()
%% }
-type create_extended_source_server_response() :: #{binary() => any()}.


%% Example:
%% describe_job_log_items_response() :: #{
%%   <<"items">> => list(job_log()),
%%   <<"nextToken">> => string()
%% }
-type describe_job_log_items_response() :: #{binary() => any()}.


%% Example:
%% recovery_instance_data_replication_error() :: #{
%%   <<"error">> => string(),
%%   <<"rawError">> => string()
%% }
-type recovery_instance_data_replication_error() :: #{binary() => any()}.


%% Example:
%% update_launch_configuration_template_request() :: #{
%%   <<"copyPrivateIp">> => [boolean()],
%%   <<"copyTags">> => [boolean()],
%%   <<"exportBucketArn">> => string(),
%%   <<"launchConfigurationTemplateID">> := string(),
%%   <<"launchDisposition">> => string(),
%%   <<"launchIntoSourceInstance">> => [boolean()],
%%   <<"licensing">> => licensing(),
%%   <<"postLaunchEnabled">> => [boolean()],
%%   <<"targetInstanceTypeRightSizingMethod">> => string()
%% }
-type update_launch_configuration_template_request() :: #{binary() => any()}.


%% Example:
%% create_launch_configuration_template_response() :: #{
%%   <<"launchConfigurationTemplate">> => launch_configuration_template()
%% }
-type create_launch_configuration_template_response() :: #{binary() => any()}.


%% Example:
%% create_extended_source_server_request() :: #{
%%   <<"sourceServerArn">> := string(),
%%   <<"tags">> => map()
%% }
-type create_extended_source_server_request() :: #{binary() => any()}.


%% Example:
%% describe_recovery_snapshots_response() :: #{
%%   <<"items">> => list(recovery_snapshot()),
%%   <<"nextToken">> => string()
%% }
-type describe_recovery_snapshots_response() :: #{binary() => any()}.


%% Example:
%% job_log() :: #{
%%   <<"event">> => string(),
%%   <<"eventData">> => job_log_event_data(),
%%   <<"logDateTime">> => string()
%% }
-type job_log() :: #{binary() => any()}.


%% Example:
%% describe_recovery_snapshots_request_filters() :: #{
%%   <<"fromDateTime">> => string(),
%%   <<"toDateTime">> => string()
%% }
-type describe_recovery_snapshots_request_filters() :: #{binary() => any()}.


%% Example:
%% create_source_network_response() :: #{
%%   <<"sourceNetworkID">> => string()
%% }
-type create_source_network_response() :: #{binary() => any()}.


%% Example:
%% delete_launch_configuration_template_request() :: #{
%%   <<"launchConfigurationTemplateID">> := string()
%% }
-type delete_launch_configuration_template_request() :: #{binary() => any()}.

-type associate_source_network_stack_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    uninitialized_account_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_extended_source_server_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    uninitialized_account_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type create_launch_configuration_template_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    uninitialized_account_exception() | 
    service_quota_exceeded_exception().

-type create_replication_configuration_template_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    uninitialized_account_exception() | 
    service_quota_exceeded_exception().

-type create_source_network_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    uninitialized_account_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_job_errors() ::
    throttling_exception() | 
    internal_server_exception() | 
    uninitialized_account_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_launch_action_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    uninitialized_account_exception() | 
    resource_not_found_exception().

-type delete_launch_configuration_template_errors() ::
    throttling_exception() | 
    internal_server_exception() | 
    uninitialized_account_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_recovery_instance_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    uninitialized_account_exception() | 
    conflict_exception().

-type delete_replication_configuration_template_errors() ::
    throttling_exception() | 
    internal_server_exception() | 
    uninitialized_account_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_source_network_errors() ::
    throttling_exception() | 
    internal_server_exception() | 
    uninitialized_account_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_source_server_errors() ::
    throttling_exception() | 
    internal_server_exception() | 
    uninitialized_account_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type describe_job_log_items_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    uninitialized_account_exception().

-type describe_jobs_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    uninitialized_account_exception().

-type describe_launch_configuration_templates_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    uninitialized_account_exception() | 
    resource_not_found_exception().

-type describe_recovery_instances_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    uninitialized_account_exception().

-type describe_recovery_snapshots_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    uninitialized_account_exception().

-type describe_replication_configuration_templates_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    uninitialized_account_exception() | 
    resource_not_found_exception().

-type describe_source_networks_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    uninitialized_account_exception().

-type describe_source_servers_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    uninitialized_account_exception().

-type disconnect_recovery_instance_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    uninitialized_account_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type disconnect_source_server_errors() ::
    throttling_exception() | 
    internal_server_exception() | 
    uninitialized_account_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type export_source_network_cfn_template_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    uninitialized_account_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_failback_replication_configuration_errors() ::
    throttling_exception() | 
    internal_server_exception() | 
    uninitialized_account_exception() | 
    resource_not_found_exception().

-type get_launch_configuration_errors() ::
    throttling_exception() | 
    internal_server_exception() | 
    uninitialized_account_exception() | 
    resource_not_found_exception().

-type get_replication_configuration_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    uninitialized_account_exception() | 
    resource_not_found_exception().

-type initialize_service_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_extensible_source_servers_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    uninitialized_account_exception().

-type list_launch_actions_errors() ::
    throttling_exception() | 
    internal_server_exception() | 
    uninitialized_account_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type list_staging_accounts_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    uninitialized_account_exception().

-type list_tags_for_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type put_launch_action_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    uninitialized_account_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type retry_data_replication_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    uninitialized_account_exception() | 
    resource_not_found_exception().

-type reverse_replication_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    uninitialized_account_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type start_failback_launch_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    uninitialized_account_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type start_recovery_errors() ::
    throttling_exception() | 
    internal_server_exception() | 
    uninitialized_account_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type start_replication_errors() ::
    throttling_exception() | 
    internal_server_exception() | 
    uninitialized_account_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type start_source_network_recovery_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    uninitialized_account_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type start_source_network_replication_errors() ::
    throttling_exception() | 
    internal_server_exception() | 
    uninitialized_account_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type stop_failback_errors() ::
    throttling_exception() | 
    internal_server_exception() | 
    uninitialized_account_exception() | 
    resource_not_found_exception().

-type stop_replication_errors() ::
    throttling_exception() | 
    internal_server_exception() | 
    uninitialized_account_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type stop_source_network_replication_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    uninitialized_account_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type tag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type terminate_recovery_instances_errors() ::
    throttling_exception() | 
    internal_server_exception() | 
    uninitialized_account_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type untag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_failback_replication_configuration_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    uninitialized_account_exception() | 
    resource_not_found_exception().

-type update_launch_configuration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    uninitialized_account_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_launch_configuration_template_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    uninitialized_account_exception() | 
    resource_not_found_exception().

-type update_replication_configuration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    uninitialized_account_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_replication_configuration_template_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    uninitialized_account_exception() | 
    resource_not_found_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Associate a Source Network to an existing CloudFormation Stack and
%% modify launch templates to use this network.
%%
%% Can be used for reverting to previously deployed CloudFormation stacks.
-spec associate_source_network_stack(aws_client:aws_client(), associate_source_network_stack_request()) ->
    {ok, associate_source_network_stack_response(), tuple()} |
    {error, any()} |
    {error, associate_source_network_stack_errors(), tuple()}.
associate_source_network_stack(Client, Input) ->
    associate_source_network_stack(Client, Input, []).

-spec associate_source_network_stack(aws_client:aws_client(), associate_source_network_stack_request(), proplists:proplist()) ->
    {ok, associate_source_network_stack_response(), tuple()} |
    {error, any()} |
    {error, associate_source_network_stack_errors(), tuple()}.
associate_source_network_stack(Client, Input0, Options0) ->
    Method = post,
    Path = ["/AssociateSourceNetworkStack"],
    SuccessStatusCode = 202,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Create an extended source server in the target Account based on the
%% source server in staging account.
-spec create_extended_source_server(aws_client:aws_client(), create_extended_source_server_request()) ->
    {ok, create_extended_source_server_response(), tuple()} |
    {error, any()} |
    {error, create_extended_source_server_errors(), tuple()}.
create_extended_source_server(Client, Input) ->
    create_extended_source_server(Client, Input, []).

-spec create_extended_source_server(aws_client:aws_client(), create_extended_source_server_request(), proplists:proplist()) ->
    {ok, create_extended_source_server_response(), tuple()} |
    {error, any()} |
    {error, create_extended_source_server_errors(), tuple()}.
create_extended_source_server(Client, Input0, Options0) ->
    Method = post,
    Path = ["/CreateExtendedSourceServer"],
    SuccessStatusCode = 201,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new Launch Configuration Template.
-spec create_launch_configuration_template(aws_client:aws_client(), create_launch_configuration_template_request()) ->
    {ok, create_launch_configuration_template_response(), tuple()} |
    {error, any()} |
    {error, create_launch_configuration_template_errors(), tuple()}.
create_launch_configuration_template(Client, Input) ->
    create_launch_configuration_template(Client, Input, []).

-spec create_launch_configuration_template(aws_client:aws_client(), create_launch_configuration_template_request(), proplists:proplist()) ->
    {ok, create_launch_configuration_template_response(), tuple()} |
    {error, any()} |
    {error, create_launch_configuration_template_errors(), tuple()}.
create_launch_configuration_template(Client, Input0, Options0) ->
    Method = post,
    Path = ["/CreateLaunchConfigurationTemplate"],
    SuccessStatusCode = 201,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new ReplicationConfigurationTemplate.
-spec create_replication_configuration_template(aws_client:aws_client(), create_replication_configuration_template_request()) ->
    {ok, replication_configuration_template(), tuple()} |
    {error, any()} |
    {error, create_replication_configuration_template_errors(), tuple()}.
create_replication_configuration_template(Client, Input) ->
    create_replication_configuration_template(Client, Input, []).

-spec create_replication_configuration_template(aws_client:aws_client(), create_replication_configuration_template_request(), proplists:proplist()) ->
    {ok, replication_configuration_template(), tuple()} |
    {error, any()} |
    {error, create_replication_configuration_template_errors(), tuple()}.
create_replication_configuration_template(Client, Input0, Options0) ->
    Method = post,
    Path = ["/CreateReplicationConfigurationTemplate"],
    SuccessStatusCode = 201,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Create a new Source Network resource for a provided VPC ID.
-spec create_source_network(aws_client:aws_client(), create_source_network_request()) ->
    {ok, create_source_network_response(), tuple()} |
    {error, any()} |
    {error, create_source_network_errors(), tuple()}.
create_source_network(Client, Input) ->
    create_source_network(Client, Input, []).

-spec create_source_network(aws_client:aws_client(), create_source_network_request(), proplists:proplist()) ->
    {ok, create_source_network_response(), tuple()} |
    {error, any()} |
    {error, create_source_network_errors(), tuple()}.
create_source_network(Client, Input0, Options0) ->
    Method = post,
    Path = ["/CreateSourceNetwork"],
    SuccessStatusCode = 201,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a single Job by ID.
-spec delete_job(aws_client:aws_client(), delete_job_request()) ->
    {ok, delete_job_response(), tuple()} |
    {error, any()} |
    {error, delete_job_errors(), tuple()}.
delete_job(Client, Input) ->
    delete_job(Client, Input, []).

-spec delete_job(aws_client:aws_client(), delete_job_request(), proplists:proplist()) ->
    {ok, delete_job_response(), tuple()} |
    {error, any()} |
    {error, delete_job_errors(), tuple()}.
delete_job(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DeleteJob"],
    SuccessStatusCode = 204,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a resource launch action.
-spec delete_launch_action(aws_client:aws_client(), delete_launch_action_request()) ->
    {ok, delete_launch_action_response(), tuple()} |
    {error, any()} |
    {error, delete_launch_action_errors(), tuple()}.
delete_launch_action(Client, Input) ->
    delete_launch_action(Client, Input, []).

-spec delete_launch_action(aws_client:aws_client(), delete_launch_action_request(), proplists:proplist()) ->
    {ok, delete_launch_action_response(), tuple()} |
    {error, any()} |
    {error, delete_launch_action_errors(), tuple()}.
delete_launch_action(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DeleteLaunchAction"],
    SuccessStatusCode = 204,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a single Launch Configuration Template by ID.
-spec delete_launch_configuration_template(aws_client:aws_client(), delete_launch_configuration_template_request()) ->
    {ok, delete_launch_configuration_template_response(), tuple()} |
    {error, any()} |
    {error, delete_launch_configuration_template_errors(), tuple()}.
delete_launch_configuration_template(Client, Input) ->
    delete_launch_configuration_template(Client, Input, []).

-spec delete_launch_configuration_template(aws_client:aws_client(), delete_launch_configuration_template_request(), proplists:proplist()) ->
    {ok, delete_launch_configuration_template_response(), tuple()} |
    {error, any()} |
    {error, delete_launch_configuration_template_errors(), tuple()}.
delete_launch_configuration_template(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DeleteLaunchConfigurationTemplate"],
    SuccessStatusCode = 204,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a single Recovery Instance by ID.
%%
%% This deletes the Recovery Instance resource from Elastic Disaster
%% Recovery. The Recovery Instance must be disconnected first in order to
%% delete it.
-spec delete_recovery_instance(aws_client:aws_client(), delete_recovery_instance_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_recovery_instance_errors(), tuple()}.
delete_recovery_instance(Client, Input) ->
    delete_recovery_instance(Client, Input, []).

-spec delete_recovery_instance(aws_client:aws_client(), delete_recovery_instance_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_recovery_instance_errors(), tuple()}.
delete_recovery_instance(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DeleteRecoveryInstance"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a single Replication Configuration Template by ID
-spec delete_replication_configuration_template(aws_client:aws_client(), delete_replication_configuration_template_request()) ->
    {ok, delete_replication_configuration_template_response(), tuple()} |
    {error, any()} |
    {error, delete_replication_configuration_template_errors(), tuple()}.
delete_replication_configuration_template(Client, Input) ->
    delete_replication_configuration_template(Client, Input, []).

-spec delete_replication_configuration_template(aws_client:aws_client(), delete_replication_configuration_template_request(), proplists:proplist()) ->
    {ok, delete_replication_configuration_template_response(), tuple()} |
    {error, any()} |
    {error, delete_replication_configuration_template_errors(), tuple()}.
delete_replication_configuration_template(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DeleteReplicationConfigurationTemplate"],
    SuccessStatusCode = 204,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Delete Source Network resource.
-spec delete_source_network(aws_client:aws_client(), delete_source_network_request()) ->
    {ok, delete_source_network_response(), tuple()} |
    {error, any()} |
    {error, delete_source_network_errors(), tuple()}.
delete_source_network(Client, Input) ->
    delete_source_network(Client, Input, []).

-spec delete_source_network(aws_client:aws_client(), delete_source_network_request(), proplists:proplist()) ->
    {ok, delete_source_network_response(), tuple()} |
    {error, any()} |
    {error, delete_source_network_errors(), tuple()}.
delete_source_network(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DeleteSourceNetwork"],
    SuccessStatusCode = 204,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a single Source Server by ID.
%%
%% The Source Server must be disconnected first.
-spec delete_source_server(aws_client:aws_client(), delete_source_server_request()) ->
    {ok, delete_source_server_response(), tuple()} |
    {error, any()} |
    {error, delete_source_server_errors(), tuple()}.
delete_source_server(Client, Input) ->
    delete_source_server(Client, Input, []).

-spec delete_source_server(aws_client:aws_client(), delete_source_server_request(), proplists:proplist()) ->
    {ok, delete_source_server_response(), tuple()} |
    {error, any()} |
    {error, delete_source_server_errors(), tuple()}.
delete_source_server(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DeleteSourceServer"],
    SuccessStatusCode = 204,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves a detailed Job log with pagination.
-spec describe_job_log_items(aws_client:aws_client(), describe_job_log_items_request()) ->
    {ok, describe_job_log_items_response(), tuple()} |
    {error, any()} |
    {error, describe_job_log_items_errors(), tuple()}.
describe_job_log_items(Client, Input) ->
    describe_job_log_items(Client, Input, []).

-spec describe_job_log_items(aws_client:aws_client(), describe_job_log_items_request(), proplists:proplist()) ->
    {ok, describe_job_log_items_response(), tuple()} |
    {error, any()} |
    {error, describe_job_log_items_errors(), tuple()}.
describe_job_log_items(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DescribeJobLogItems"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Returns a list of Jobs.
%%
%% Use the JobsID and fromDate and toDate filters to limit which jobs are
%% returned. The response is sorted by creationDataTime - latest date first.
%% Jobs are created by the StartRecovery, TerminateRecoveryInstances and
%% StartFailbackLaunch APIs. Jobs are also created by DiagnosticLaunch and
%% TerminateDiagnosticInstances, which are APIs available only to *Support*
%% and only used in response to relevant support tickets.
-spec describe_jobs(aws_client:aws_client(), describe_jobs_request()) ->
    {ok, describe_jobs_response(), tuple()} |
    {error, any()} |
    {error, describe_jobs_errors(), tuple()}.
describe_jobs(Client, Input) ->
    describe_jobs(Client, Input, []).

-spec describe_jobs(aws_client:aws_client(), describe_jobs_request(), proplists:proplist()) ->
    {ok, describe_jobs_response(), tuple()} |
    {error, any()} |
    {error, describe_jobs_errors(), tuple()}.
describe_jobs(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DescribeJobs"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Lists all Launch Configuration Templates, filtered by Launch
%% Configuration Template IDs
-spec describe_launch_configuration_templates(aws_client:aws_client(), describe_launch_configuration_templates_request()) ->
    {ok, describe_launch_configuration_templates_response(), tuple()} |
    {error, any()} |
    {error, describe_launch_configuration_templates_errors(), tuple()}.
describe_launch_configuration_templates(Client, Input) ->
    describe_launch_configuration_templates(Client, Input, []).

-spec describe_launch_configuration_templates(aws_client:aws_client(), describe_launch_configuration_templates_request(), proplists:proplist()) ->
    {ok, describe_launch_configuration_templates_response(), tuple()} |
    {error, any()} |
    {error, describe_launch_configuration_templates_errors(), tuple()}.
describe_launch_configuration_templates(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DescribeLaunchConfigurationTemplates"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Lists all Recovery Instances or multiple Recovery Instances by ID.
-spec describe_recovery_instances(aws_client:aws_client(), describe_recovery_instances_request()) ->
    {ok, describe_recovery_instances_response(), tuple()} |
    {error, any()} |
    {error, describe_recovery_instances_errors(), tuple()}.
describe_recovery_instances(Client, Input) ->
    describe_recovery_instances(Client, Input, []).

-spec describe_recovery_instances(aws_client:aws_client(), describe_recovery_instances_request(), proplists:proplist()) ->
    {ok, describe_recovery_instances_response(), tuple()} |
    {error, any()} |
    {error, describe_recovery_instances_errors(), tuple()}.
describe_recovery_instances(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DescribeRecoveryInstances"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Lists all Recovery Snapshots for a single Source Server.
-spec describe_recovery_snapshots(aws_client:aws_client(), describe_recovery_snapshots_request()) ->
    {ok, describe_recovery_snapshots_response(), tuple()} |
    {error, any()} |
    {error, describe_recovery_snapshots_errors(), tuple()}.
describe_recovery_snapshots(Client, Input) ->
    describe_recovery_snapshots(Client, Input, []).

-spec describe_recovery_snapshots(aws_client:aws_client(), describe_recovery_snapshots_request(), proplists:proplist()) ->
    {ok, describe_recovery_snapshots_response(), tuple()} |
    {error, any()} |
    {error, describe_recovery_snapshots_errors(), tuple()}.
describe_recovery_snapshots(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DescribeRecoverySnapshots"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Lists all ReplicationConfigurationTemplates, filtered by Source
%% Server IDs.
-spec describe_replication_configuration_templates(aws_client:aws_client(), describe_replication_configuration_templates_request()) ->
    {ok, describe_replication_configuration_templates_response(), tuple()} |
    {error, any()} |
    {error, describe_replication_configuration_templates_errors(), tuple()}.
describe_replication_configuration_templates(Client, Input) ->
    describe_replication_configuration_templates(Client, Input, []).

-spec describe_replication_configuration_templates(aws_client:aws_client(), describe_replication_configuration_templates_request(), proplists:proplist()) ->
    {ok, describe_replication_configuration_templates_response(), tuple()} |
    {error, any()} |
    {error, describe_replication_configuration_templates_errors(), tuple()}.
describe_replication_configuration_templates(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DescribeReplicationConfigurationTemplates"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Lists all Source Networks or multiple Source Networks filtered by ID.
-spec describe_source_networks(aws_client:aws_client(), describe_source_networks_request()) ->
    {ok, describe_source_networks_response(), tuple()} |
    {error, any()} |
    {error, describe_source_networks_errors(), tuple()}.
describe_source_networks(Client, Input) ->
    describe_source_networks(Client, Input, []).

-spec describe_source_networks(aws_client:aws_client(), describe_source_networks_request(), proplists:proplist()) ->
    {ok, describe_source_networks_response(), tuple()} |
    {error, any()} |
    {error, describe_source_networks_errors(), tuple()}.
describe_source_networks(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DescribeSourceNetworks"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Lists all Source Servers or multiple Source Servers filtered by ID.
-spec describe_source_servers(aws_client:aws_client(), describe_source_servers_request()) ->
    {ok, describe_source_servers_response(), tuple()} |
    {error, any()} |
    {error, describe_source_servers_errors(), tuple()}.
describe_source_servers(Client, Input) ->
    describe_source_servers(Client, Input, []).

-spec describe_source_servers(aws_client:aws_client(), describe_source_servers_request(), proplists:proplist()) ->
    {ok, describe_source_servers_response(), tuple()} |
    {error, any()} |
    {error, describe_source_servers_errors(), tuple()}.
describe_source_servers(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DescribeSourceServers"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Disconnect a Recovery Instance from Elastic Disaster Recovery.
%%
%% Data replication is stopped immediately. All AWS resources created by
%% Elastic Disaster Recovery for enabling the replication of the Recovery
%% Instance will be terminated / deleted within 90 minutes. If the agent on
%% the Recovery Instance has not been prevented from communicating with the
%% Elastic Disaster Recovery service, then it will receive a command to
%% uninstall itself (within approximately 10 minutes). The following
%% properties of the Recovery Instance will be changed immediately:
%% dataReplicationInfo.dataReplicationState will be set to DISCONNECTED; The
%% totalStorageBytes property for each of dataReplicationInfo.replicatedDisks
%% will be set to zero; dataReplicationInfo.lagDuration and
%% dataReplicationInfo.lagDuration will be nullified.
-spec disconnect_recovery_instance(aws_client:aws_client(), disconnect_recovery_instance_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, disconnect_recovery_instance_errors(), tuple()}.
disconnect_recovery_instance(Client, Input) ->
    disconnect_recovery_instance(Client, Input, []).

-spec disconnect_recovery_instance(aws_client:aws_client(), disconnect_recovery_instance_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, disconnect_recovery_instance_errors(), tuple()}.
disconnect_recovery_instance(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DisconnectRecoveryInstance"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Disconnects a specific Source Server from Elastic Disaster Recovery.
%%
%% Data replication is stopped immediately. All AWS resources created by
%% Elastic Disaster Recovery for enabling the replication of the Source
%% Server will be terminated / deleted within 90 minutes. You cannot
%% disconnect a Source Server if it has a Recovery Instance. If the agent on
%% the Source Server has not been prevented from communicating with the
%% Elastic Disaster Recovery service, then it will receive a command to
%% uninstall itself (within approximately 10 minutes). The following
%% properties of the SourceServer will be changed immediately:
%% dataReplicationInfo.dataReplicationState will be set to DISCONNECTED; The
%% totalStorageBytes property for each of dataReplicationInfo.replicatedDisks
%% will be set to zero; dataReplicationInfo.lagDuration and
%% dataReplicationInfo.lagDuration will be nullified.
-spec disconnect_source_server(aws_client:aws_client(), disconnect_source_server_request()) ->
    {ok, source_server(), tuple()} |
    {error, any()} |
    {error, disconnect_source_server_errors(), tuple()}.
disconnect_source_server(Client, Input) ->
    disconnect_source_server(Client, Input, []).

-spec disconnect_source_server(aws_client:aws_client(), disconnect_source_server_request(), proplists:proplist()) ->
    {ok, source_server(), tuple()} |
    {error, any()} |
    {error, disconnect_source_server_errors(), tuple()}.
disconnect_source_server(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DisconnectSourceServer"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Export the Source Network CloudFormation template to an S3 bucket.
-spec export_source_network_cfn_template(aws_client:aws_client(), export_source_network_cfn_template_request()) ->
    {ok, export_source_network_cfn_template_response(), tuple()} |
    {error, any()} |
    {error, export_source_network_cfn_template_errors(), tuple()}.
export_source_network_cfn_template(Client, Input) ->
    export_source_network_cfn_template(Client, Input, []).

-spec export_source_network_cfn_template(aws_client:aws_client(), export_source_network_cfn_template_request(), proplists:proplist()) ->
    {ok, export_source_network_cfn_template_response(), tuple()} |
    {error, any()} |
    {error, export_source_network_cfn_template_errors(), tuple()}.
export_source_network_cfn_template(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ExportSourceNetworkCfnTemplate"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Lists all Failback ReplicationConfigurations, filtered by Recovery
%% Instance ID.
-spec get_failback_replication_configuration(aws_client:aws_client(), get_failback_replication_configuration_request()) ->
    {ok, get_failback_replication_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_failback_replication_configuration_errors(), tuple()}.
get_failback_replication_configuration(Client, Input) ->
    get_failback_replication_configuration(Client, Input, []).

-spec get_failback_replication_configuration(aws_client:aws_client(), get_failback_replication_configuration_request(), proplists:proplist()) ->
    {ok, get_failback_replication_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_failback_replication_configuration_errors(), tuple()}.
get_failback_replication_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetFailbackReplicationConfiguration"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Gets a LaunchConfiguration, filtered by Source Server IDs.
-spec get_launch_configuration(aws_client:aws_client(), get_launch_configuration_request()) ->
    {ok, launch_configuration(), tuple()} |
    {error, any()} |
    {error, get_launch_configuration_errors(), tuple()}.
get_launch_configuration(Client, Input) ->
    get_launch_configuration(Client, Input, []).

-spec get_launch_configuration(aws_client:aws_client(), get_launch_configuration_request(), proplists:proplist()) ->
    {ok, launch_configuration(), tuple()} |
    {error, any()} |
    {error, get_launch_configuration_errors(), tuple()}.
get_launch_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetLaunchConfiguration"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Gets a ReplicationConfiguration, filtered by Source Server ID.
-spec get_replication_configuration(aws_client:aws_client(), get_replication_configuration_request()) ->
    {ok, replication_configuration(), tuple()} |
    {error, any()} |
    {error, get_replication_configuration_errors(), tuple()}.
get_replication_configuration(Client, Input) ->
    get_replication_configuration(Client, Input, []).

-spec get_replication_configuration(aws_client:aws_client(), get_replication_configuration_request(), proplists:proplist()) ->
    {ok, replication_configuration(), tuple()} |
    {error, any()} |
    {error, get_replication_configuration_errors(), tuple()}.
get_replication_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetReplicationConfiguration"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Initialize Elastic Disaster Recovery.
-spec initialize_service(aws_client:aws_client(), initialize_service_request()) ->
    {ok, initialize_service_response(), tuple()} |
    {error, any()} |
    {error, initialize_service_errors(), tuple()}.
initialize_service(Client, Input) ->
    initialize_service(Client, Input, []).

-spec initialize_service(aws_client:aws_client(), initialize_service_request(), proplists:proplist()) ->
    {ok, initialize_service_response(), tuple()} |
    {error, any()} |
    {error, initialize_service_errors(), tuple()}.
initialize_service(Client, Input0, Options0) ->
    Method = post,
    Path = ["/InitializeService"],
    SuccessStatusCode = 204,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Returns a list of source servers on a staging account that are
%% extensible, which means that:
%% a.
%%
%% The source server is not already extended into this Account.
%% b. The source server on the Account we’re reading from is not an extension
%% of another source server.
-spec list_extensible_source_servers(aws_client:aws_client(), list_extensible_source_servers_request()) ->
    {ok, list_extensible_source_servers_response(), tuple()} |
    {error, any()} |
    {error, list_extensible_source_servers_errors(), tuple()}.
list_extensible_source_servers(Client, Input) ->
    list_extensible_source_servers(Client, Input, []).

-spec list_extensible_source_servers(aws_client:aws_client(), list_extensible_source_servers_request(), proplists:proplist()) ->
    {ok, list_extensible_source_servers_response(), tuple()} |
    {error, any()} |
    {error, list_extensible_source_servers_errors(), tuple()}.
list_extensible_source_servers(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListExtensibleSourceServers"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Lists resource launch actions.
-spec list_launch_actions(aws_client:aws_client(), list_launch_actions_request()) ->
    {ok, list_launch_actions_response(), tuple()} |
    {error, any()} |
    {error, list_launch_actions_errors(), tuple()}.
list_launch_actions(Client, Input) ->
    list_launch_actions(Client, Input, []).

-spec list_launch_actions(aws_client:aws_client(), list_launch_actions_request(), proplists:proplist()) ->
    {ok, list_launch_actions_response(), tuple()} |
    {error, any()} |
    {error, list_launch_actions_errors(), tuple()}.
list_launch_actions(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListLaunchActions"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Returns an array of staging accounts for existing extended source
%% servers.
-spec list_staging_accounts(aws_client:aws_client()) ->
    {ok, list_staging_accounts_response(), tuple()} |
    {error, any()} |
    {error, list_staging_accounts_errors(), tuple()}.
list_staging_accounts(Client)
  when is_map(Client) ->
    list_staging_accounts(Client, #{}, #{}).

-spec list_staging_accounts(aws_client:aws_client(), map(), map()) ->
    {ok, list_staging_accounts_response(), tuple()} |
    {error, any()} |
    {error, list_staging_accounts_errors(), tuple()}.
list_staging_accounts(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_staging_accounts(Client, QueryMap, HeadersMap, []).

-spec list_staging_accounts(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_staging_accounts_response(), tuple()} |
    {error, any()} |
    {error, list_staging_accounts_errors(), tuple()}.
list_staging_accounts(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/ListStagingAccounts"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List all tags for your Elastic Disaster Recovery resources.
-spec list_tags_for_resource(aws_client:aws_client(), binary() | list()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Puts a resource launch action.
-spec put_launch_action(aws_client:aws_client(), put_launch_action_request()) ->
    {ok, put_launch_action_response(), tuple()} |
    {error, any()} |
    {error, put_launch_action_errors(), tuple()}.
put_launch_action(Client, Input) ->
    put_launch_action(Client, Input, []).

-spec put_launch_action(aws_client:aws_client(), put_launch_action_request(), proplists:proplist()) ->
    {ok, put_launch_action_response(), tuple()} |
    {error, any()} |
    {error, put_launch_action_errors(), tuple()}.
put_launch_action(Client, Input0, Options0) ->
    Method = post,
    Path = ["/PutLaunchAction"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc WARNING: RetryDataReplication is deprecated.
%%
%% Causes the data replication initiation sequence to begin immediately upon
%% next Handshake for the specified Source Server ID, regardless of when the
%% previous initiation started. This command will work only if the Source
%% Server is stalled or is in a DISCONNECTED or STOPPED state.
-spec retry_data_replication(aws_client:aws_client(), retry_data_replication_request()) ->
    {ok, source_server(), tuple()} |
    {error, any()} |
    {error, retry_data_replication_errors(), tuple()}.
retry_data_replication(Client, Input) ->
    retry_data_replication(Client, Input, []).

-spec retry_data_replication(aws_client:aws_client(), retry_data_replication_request(), proplists:proplist()) ->
    {ok, source_server(), tuple()} |
    {error, any()} |
    {error, retry_data_replication_errors(), tuple()}.
retry_data_replication(Client, Input0, Options0) ->
    Method = post,
    Path = ["/RetryDataReplication"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Start replication to origin / target region - applies only to
%% protected instances that originated in EC2.
%%
%% For recovery instances on target region - starts replication back to
%% origin region.
%% For failback instances on origin region - starts replication to target
%% region to re-protect them.
-spec reverse_replication(aws_client:aws_client(), reverse_replication_request()) ->
    {ok, reverse_replication_response(), tuple()} |
    {error, any()} |
    {error, reverse_replication_errors(), tuple()}.
reverse_replication(Client, Input) ->
    reverse_replication(Client, Input, []).

-spec reverse_replication(aws_client:aws_client(), reverse_replication_request(), proplists:proplist()) ->
    {ok, reverse_replication_response(), tuple()} |
    {error, any()} |
    {error, reverse_replication_errors(), tuple()}.
reverse_replication(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ReverseReplication"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Initiates a Job for launching the machine that is being failed back
%% to from the specified Recovery Instance.
%%
%% This will run conversion on the failback client and will reboot your
%% machine, thus completing the failback process.
-spec start_failback_launch(aws_client:aws_client(), start_failback_launch_request()) ->
    {ok, start_failback_launch_response(), tuple()} |
    {error, any()} |
    {error, start_failback_launch_errors(), tuple()}.
start_failback_launch(Client, Input) ->
    start_failback_launch(Client, Input, []).

-spec start_failback_launch(aws_client:aws_client(), start_failback_launch_request(), proplists:proplist()) ->
    {ok, start_failback_launch_response(), tuple()} |
    {error, any()} |
    {error, start_failback_launch_errors(), tuple()}.
start_failback_launch(Client, Input0, Options0) ->
    Method = post,
    Path = ["/StartFailbackLaunch"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Launches Recovery Instances for the specified Source Servers.
%%
%% For each Source Server you may choose a point in time snapshot to launch
%% from, or use an on demand snapshot.
-spec start_recovery(aws_client:aws_client(), start_recovery_request()) ->
    {ok, start_recovery_response(), tuple()} |
    {error, any()} |
    {error, start_recovery_errors(), tuple()}.
start_recovery(Client, Input) ->
    start_recovery(Client, Input, []).

-spec start_recovery(aws_client:aws_client(), start_recovery_request(), proplists:proplist()) ->
    {ok, start_recovery_response(), tuple()} |
    {error, any()} |
    {error, start_recovery_errors(), tuple()}.
start_recovery(Client, Input0, Options0) ->
    Method = post,
    Path = ["/StartRecovery"],
    SuccessStatusCode = 202,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Starts replication for a stopped Source Server.
%%
%% This action would make the Source Server protected again and restart
%% billing for it.
-spec start_replication(aws_client:aws_client(), start_replication_request()) ->
    {ok, start_replication_response(), tuple()} |
    {error, any()} |
    {error, start_replication_errors(), tuple()}.
start_replication(Client, Input) ->
    start_replication(Client, Input, []).

-spec start_replication(aws_client:aws_client(), start_replication_request(), proplists:proplist()) ->
    {ok, start_replication_response(), tuple()} |
    {error, any()} |
    {error, start_replication_errors(), tuple()}.
start_replication(Client, Input0, Options0) ->
    Method = post,
    Path = ["/StartReplication"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deploy VPC for the specified Source Network and modify launch
%% templates to use this network.
%%
%% The VPC will be deployed using a dedicated CloudFormation stack.
-spec start_source_network_recovery(aws_client:aws_client(), start_source_network_recovery_request()) ->
    {ok, start_source_network_recovery_response(), tuple()} |
    {error, any()} |
    {error, start_source_network_recovery_errors(), tuple()}.
start_source_network_recovery(Client, Input) ->
    start_source_network_recovery(Client, Input, []).

-spec start_source_network_recovery(aws_client:aws_client(), start_source_network_recovery_request(), proplists:proplist()) ->
    {ok, start_source_network_recovery_response(), tuple()} |
    {error, any()} |
    {error, start_source_network_recovery_errors(), tuple()}.
start_source_network_recovery(Client, Input0, Options0) ->
    Method = post,
    Path = ["/StartSourceNetworkRecovery"],
    SuccessStatusCode = 202,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Starts replication for a Source Network.
%%
%% This action would make the Source Network protected.
-spec start_source_network_replication(aws_client:aws_client(), start_source_network_replication_request()) ->
    {ok, start_source_network_replication_response(), tuple()} |
    {error, any()} |
    {error, start_source_network_replication_errors(), tuple()}.
start_source_network_replication(Client, Input) ->
    start_source_network_replication(Client, Input, []).

-spec start_source_network_replication(aws_client:aws_client(), start_source_network_replication_request(), proplists:proplist()) ->
    {ok, start_source_network_replication_response(), tuple()} |
    {error, any()} |
    {error, start_source_network_replication_errors(), tuple()}.
start_source_network_replication(Client, Input0, Options0) ->
    Method = post,
    Path = ["/StartSourceNetworkReplication"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Stops the failback process for a specified Recovery Instance.
%%
%% This changes the Failback State of the Recovery Instance back to
%% FAILBACK_NOT_STARTED.
-spec stop_failback(aws_client:aws_client(), stop_failback_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, stop_failback_errors(), tuple()}.
stop_failback(Client, Input) ->
    stop_failback(Client, Input, []).

-spec stop_failback(aws_client:aws_client(), stop_failback_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, stop_failback_errors(), tuple()}.
stop_failback(Client, Input0, Options0) ->
    Method = post,
    Path = ["/StopFailback"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Stops replication for a Source Server.
%%
%% This action would make the Source Server unprotected, delete its existing
%% snapshots and stop billing for it.
-spec stop_replication(aws_client:aws_client(), stop_replication_request()) ->
    {ok, stop_replication_response(), tuple()} |
    {error, any()} |
    {error, stop_replication_errors(), tuple()}.
stop_replication(Client, Input) ->
    stop_replication(Client, Input, []).

-spec stop_replication(aws_client:aws_client(), stop_replication_request(), proplists:proplist()) ->
    {ok, stop_replication_response(), tuple()} |
    {error, any()} |
    {error, stop_replication_errors(), tuple()}.
stop_replication(Client, Input0, Options0) ->
    Method = post,
    Path = ["/StopReplication"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Stops replication for a Source Network.
%%
%% This action would make the Source Network unprotected.
-spec stop_source_network_replication(aws_client:aws_client(), stop_source_network_replication_request()) ->
    {ok, stop_source_network_replication_response(), tuple()} |
    {error, any()} |
    {error, stop_source_network_replication_errors(), tuple()}.
stop_source_network_replication(Client, Input) ->
    stop_source_network_replication(Client, Input, []).

-spec stop_source_network_replication(aws_client:aws_client(), stop_source_network_replication_request(), proplists:proplist()) ->
    {ok, stop_source_network_replication_response(), tuple()} |
    {error, any()} |
    {error, stop_source_network_replication_errors(), tuple()}.
stop_source_network_replication(Client, Input0, Options0) ->
    Method = post,
    Path = ["/StopSourceNetworkReplication"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Adds or overwrites only the specified tags for the specified Elastic
%% Disaster Recovery resource or resources.
%%
%% When you specify an existing tag key, the value is overwritten with the
%% new value. Each resource can have a maximum of 50 tags. Each tag consists
%% of a key and optional value.
-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).

-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Initiates a Job for terminating the EC2 resources associated with the
%% specified Recovery Instances, and then will delete the Recovery Instances
%% from the Elastic Disaster Recovery service.
-spec terminate_recovery_instances(aws_client:aws_client(), terminate_recovery_instances_request()) ->
    {ok, terminate_recovery_instances_response(), tuple()} |
    {error, any()} |
    {error, terminate_recovery_instances_errors(), tuple()}.
terminate_recovery_instances(Client, Input) ->
    terminate_recovery_instances(Client, Input, []).

-spec terminate_recovery_instances(aws_client:aws_client(), terminate_recovery_instances_request(), proplists:proplist()) ->
    {ok, terminate_recovery_instances_response(), tuple()} |
    {error, any()} |
    {error, terminate_recovery_instances_errors(), tuple()}.
terminate_recovery_instances(Client, Input0, Options0) ->
    Method = post,
    Path = ["/TerminateRecoveryInstances"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the specified set of tags from the specified set of Elastic
%% Disaster Recovery resources.
-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).

-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"tagKeys">>, <<"tagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Allows you to update the failback replication configuration of a
%% Recovery Instance by ID.
-spec update_failback_replication_configuration(aws_client:aws_client(), update_failback_replication_configuration_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_failback_replication_configuration_errors(), tuple()}.
update_failback_replication_configuration(Client, Input) ->
    update_failback_replication_configuration(Client, Input, []).

-spec update_failback_replication_configuration(aws_client:aws_client(), update_failback_replication_configuration_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_failback_replication_configuration_errors(), tuple()}.
update_failback_replication_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/UpdateFailbackReplicationConfiguration"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a LaunchConfiguration by Source Server ID.
-spec update_launch_configuration(aws_client:aws_client(), update_launch_configuration_request()) ->
    {ok, launch_configuration(), tuple()} |
    {error, any()} |
    {error, update_launch_configuration_errors(), tuple()}.
update_launch_configuration(Client, Input) ->
    update_launch_configuration(Client, Input, []).

-spec update_launch_configuration(aws_client:aws_client(), update_launch_configuration_request(), proplists:proplist()) ->
    {ok, launch_configuration(), tuple()} |
    {error, any()} |
    {error, update_launch_configuration_errors(), tuple()}.
update_launch_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/UpdateLaunchConfiguration"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an existing Launch Configuration Template by ID.
-spec update_launch_configuration_template(aws_client:aws_client(), update_launch_configuration_template_request()) ->
    {ok, update_launch_configuration_template_response(), tuple()} |
    {error, any()} |
    {error, update_launch_configuration_template_errors(), tuple()}.
update_launch_configuration_template(Client, Input) ->
    update_launch_configuration_template(Client, Input, []).

-spec update_launch_configuration_template(aws_client:aws_client(), update_launch_configuration_template_request(), proplists:proplist()) ->
    {ok, update_launch_configuration_template_response(), tuple()} |
    {error, any()} |
    {error, update_launch_configuration_template_errors(), tuple()}.
update_launch_configuration_template(Client, Input0, Options0) ->
    Method = post,
    Path = ["/UpdateLaunchConfigurationTemplate"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Allows you to update a ReplicationConfiguration by Source Server ID.
-spec update_replication_configuration(aws_client:aws_client(), update_replication_configuration_request()) ->
    {ok, replication_configuration(), tuple()} |
    {error, any()} |
    {error, update_replication_configuration_errors(), tuple()}.
update_replication_configuration(Client, Input) ->
    update_replication_configuration(Client, Input, []).

-spec update_replication_configuration(aws_client:aws_client(), update_replication_configuration_request(), proplists:proplist()) ->
    {ok, replication_configuration(), tuple()} |
    {error, any()} |
    {error, update_replication_configuration_errors(), tuple()}.
update_replication_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/UpdateReplicationConfiguration"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a ReplicationConfigurationTemplate by ID.
-spec update_replication_configuration_template(aws_client:aws_client(), update_replication_configuration_template_request()) ->
    {ok, replication_configuration_template(), tuple()} |
    {error, any()} |
    {error, update_replication_configuration_template_errors(), tuple()}.
update_replication_configuration_template(Client, Input) ->
    update_replication_configuration_template(Client, Input, []).

-spec update_replication_configuration_template(aws_client:aws_client(), update_replication_configuration_template_request(), proplists:proplist()) ->
    {ok, replication_configuration_template(), tuple()} |
    {error, any()} |
    {error, update_replication_configuration_template_errors(), tuple()}.
update_replication_configuration_template(Client, Input0, Options0) ->
    Method = post,
    Path = ["/UpdateReplicationConfigurationTemplate"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%%====================================================================
%% Internal functions
%%====================================================================

-spec proplists_take(any(), proplists:proplist(), any()) -> {any(), proplists:proplist()}.
proplists_take(Key, Proplist, Default) ->
  Value = proplists:get_value(Key, Proplist, Default),
  {Value, proplists:delete(Key, Proplist)}.

-spec request(aws_client:aws_client(), atom(), iolist(), list(),
              list(), map() | undefined, list(), pos_integer() | undefined) ->
    {ok, {integer(), list()}} |
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map(),
    Error :: map().
request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) ->
  RequestFun = fun() -> do_request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) end,
  aws_request:request(RequestFun, Options).

do_request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) ->
    Client1 = Client#{service => <<"drs">>},
    Host = build_host(<<"drs">>, Client1),
    URL0 = build_url(Host, Path, Client1),
    URL = aws_request:add_query(URL0, Query),
    AdditionalHeaders1 = [ {<<"Host">>, Host}
                         , {<<"Content-Type">>, <<"application/x-amz-json-1.1">>}
                         ],
    Payload =
      case proplists:get_value(send_body_as_binary, Options) of
        true ->
          maps:get(<<"Body">>, Input, <<"">>);
        false ->
          encode_payload(Input)
      end,
    AdditionalHeaders = case proplists:get_value(append_sha256_content_hash, Options, false) of
                          true ->
                            add_checksum_hash_header(AdditionalHeaders1, Payload);
                          false ->
                            AdditionalHeaders1
                        end,
    Headers1 = aws_request:add_headers(AdditionalHeaders, Headers0),

    MethodBin = aws_request:method_to_binary(Method),
    SignedHeaders = aws_request:sign_request(Client1, MethodBin, URL, Headers1, Payload),
    Response = hackney:request(Method, URL, SignedHeaders, Payload, Options),
    DecodeBody = not proplists:get_value(receive_body_as_binary, Options),
    handle_response(Response, SuccessStatusCode, DecodeBody).

add_checksum_hash_header(Headers, Body) ->
  [ {<<"X-Amz-CheckSum-SHA256">>, base64:encode(crypto:hash(sha256, Body))}
  | Headers
  ].

handle_response({ok, StatusCode, ResponseHeaders}, SuccessStatusCode, _DecodeBody)
  when StatusCode =:= 200;
       StatusCode =:= 202;
       StatusCode =:= 204;
       StatusCode =:= 206;
       StatusCode =:= SuccessStatusCode ->
    {ok, {StatusCode, ResponseHeaders}};
handle_response({ok, StatusCode, ResponseHeaders}, _, _DecodeBody) ->
    {error, {StatusCode, ResponseHeaders}};
handle_response({ok, StatusCode, ResponseHeaders, Client}, SuccessStatusCode, DecodeBody)
  when StatusCode =:= 200;
       StatusCode =:= 202;
       StatusCode =:= 204;
       StatusCode =:= 206;
       StatusCode =:= SuccessStatusCode ->
    case hackney:body(Client) of
        {ok, <<>>} when StatusCode =:= 200;
                        StatusCode =:= SuccessStatusCode ->
            {ok, #{}, {StatusCode, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = case DecodeBody of
                       true ->
                         try
                           jsx:decode(Body)
                         catch
                           Error:Reason:Stack ->
                             erlang:raise(error, {body_decode_failed, Error, Reason, StatusCode, Body}, Stack)
                         end;
                       false -> #{<<"Body">> => Body}
                     end,
            {ok, Result, {StatusCode, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, _ResponseHeaders, _Client}, _, _DecodeBody)
  when StatusCode =:= 503 ->
  %% Retriable error if retries are enabled
  {error, service_unavailable};
handle_response({ok, StatusCode, ResponseHeaders, Client}, _, _DecodeBody) ->
    {ok, Body} = hackney:body(Client),
    try
      DecodedError = jsx:decode(Body),
      {error, DecodedError, {StatusCode, ResponseHeaders, Client}}
    catch
      Error:Reason:Stack ->
        erlang:raise(error, {body_decode_failed, Error, Reason, StatusCode, Body}, Stack)
    end;
handle_response({error, Reason}, _, _DecodeBody) ->
  {error, Reason}.

build_host(_EndpointPrefix, #{region := <<"local">>, endpoint := Endpoint}) ->
    Endpoint;
build_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
build_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

build_url(Host, Path0, Client) ->
    Proto = aws_client:proto(Client),
    Path = erlang:iolist_to_binary(Path0),
    Port = aws_client:port(Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, Path], <<"">>).

-spec encode_payload(undefined | map()) -> binary().
encode_payload(undefined) ->
  <<>>;
encode_payload(Input) ->
  jsx:encode(Input).
