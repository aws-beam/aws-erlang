%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc The Application Migration Service service.
-module(aws_mgn).

-export([archive_application/2,
         archive_application/3,
         archive_wave/2,
         archive_wave/3,
         associate_applications/2,
         associate_applications/3,
         associate_source_servers/2,
         associate_source_servers/3,
         change_server_life_cycle_state/2,
         change_server_life_cycle_state/3,
         create_application/2,
         create_application/3,
         create_connector/2,
         create_connector/3,
         create_launch_configuration_template/2,
         create_launch_configuration_template/3,
         create_replication_configuration_template/2,
         create_replication_configuration_template/3,
         create_wave/2,
         create_wave/3,
         delete_application/2,
         delete_application/3,
         delete_connector/2,
         delete_connector/3,
         delete_job/2,
         delete_job/3,
         delete_launch_configuration_template/2,
         delete_launch_configuration_template/3,
         delete_replication_configuration_template/2,
         delete_replication_configuration_template/3,
         delete_source_server/2,
         delete_source_server/3,
         delete_vcenter_client/2,
         delete_vcenter_client/3,
         delete_wave/2,
         delete_wave/3,
         describe_job_log_items/2,
         describe_job_log_items/3,
         describe_jobs/2,
         describe_jobs/3,
         describe_launch_configuration_templates/2,
         describe_launch_configuration_templates/3,
         describe_replication_configuration_templates/2,
         describe_replication_configuration_templates/3,
         describe_source_servers/2,
         describe_source_servers/3,
         describe_vcenter_clients/1,
         describe_vcenter_clients/3,
         describe_vcenter_clients/4,
         disassociate_applications/2,
         disassociate_applications/3,
         disassociate_source_servers/2,
         disassociate_source_servers/3,
         disconnect_from_service/2,
         disconnect_from_service/3,
         finalize_cutover/2,
         finalize_cutover/3,
         get_launch_configuration/2,
         get_launch_configuration/3,
         get_replication_configuration/2,
         get_replication_configuration/3,
         initialize_service/2,
         initialize_service/3,
         list_applications/2,
         list_applications/3,
         list_connectors/2,
         list_connectors/3,
         list_export_errors/2,
         list_export_errors/3,
         list_exports/2,
         list_exports/3,
         list_import_errors/2,
         list_import_errors/3,
         list_imports/2,
         list_imports/3,
         list_managed_accounts/2,
         list_managed_accounts/3,
         list_source_server_actions/2,
         list_source_server_actions/3,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         list_template_actions/2,
         list_template_actions/3,
         list_waves/2,
         list_waves/3,
         mark_as_archived/2,
         mark_as_archived/3,
         pause_replication/2,
         pause_replication/3,
         put_source_server_action/2,
         put_source_server_action/3,
         put_template_action/2,
         put_template_action/3,
         remove_source_server_action/2,
         remove_source_server_action/3,
         remove_template_action/2,
         remove_template_action/3,
         resume_replication/2,
         resume_replication/3,
         retry_data_replication/2,
         retry_data_replication/3,
         start_cutover/2,
         start_cutover/3,
         start_export/2,
         start_export/3,
         start_import/2,
         start_import/3,
         start_replication/2,
         start_replication/3,
         start_test/2,
         start_test/3,
         stop_replication/2,
         stop_replication/3,
         tag_resource/3,
         tag_resource/4,
         terminate_target_instances/2,
         terminate_target_instances/3,
         unarchive_application/2,
         unarchive_application/3,
         unarchive_wave/2,
         unarchive_wave/3,
         untag_resource/3,
         untag_resource/4,
         update_application/2,
         update_application/3,
         update_connector/2,
         update_connector/3,
         update_launch_configuration/2,
         update_launch_configuration/3,
         update_launch_configuration_template/2,
         update_launch_configuration_template/3,
         update_replication_configuration/2,
         update_replication_configuration/3,
         update_replication_configuration_template/2,
         update_replication_configuration_template/3,
         update_source_server/2,
         update_source_server/3,
         update_source_server_replication_type/2,
         update_source_server_replication_type/3,
         update_wave/2,
         update_wave/3]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% start_cutover_response() :: #{
%%   <<"job">> => job()
%% }
-type start_cutover_response() :: #{binary() => any()}.


%% Example:
%% describe_job_log_items_request() :: #{
%%   <<"accountID">> => string(),
%%   <<"jobID">> := string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type describe_job_log_items_request() :: #{binary() => any()}.


%% Example:
%% change_server_life_cycle_state_source_server_lifecycle() :: #{
%%   <<"state">> => string()
%% }
-type change_server_life_cycle_state_source_server_lifecycle() :: #{binary() => any()}.


%% Example:
%% connector() :: #{
%%   <<"arn">> => string(),
%%   <<"connectorID">> => string(),
%%   <<"name">> => string(),
%%   <<"ssmCommandConfig">> => connector_ssm_command_config(),
%%   <<"ssmInstanceID">> => string(),
%%   <<"tags">> => map()
%% }
-type connector() :: #{binary() => any()}.


%% Example:
%% describe_source_servers_request() :: #{
%%   <<"accountID">> => string(),
%%   <<"filters">> => describe_source_servers_request_filters(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type describe_source_servers_request() :: #{binary() => any()}.


%% Example:
%% describe_vcenter_clients_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type describe_vcenter_clients_request() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% life_cycle() :: #{
%%   <<"addedToServiceDateTime">> => string(),
%%   <<"elapsedReplicationDuration">> => string(),
%%   <<"firstByteDateTime">> => string(),
%%   <<"lastCutover">> => life_cycle_last_cutover(),
%%   <<"lastSeenByServiceDateTime">> => string(),
%%   <<"lastTest">> => life_cycle_last_test(),
%%   <<"state">> => string()
%% }
-type life_cycle() :: #{binary() => any()}.


%% Example:
%% list_exports_request_filters() :: #{
%%   <<"exportIDs">> => list(string())
%% }
-type list_exports_request_filters() :: #{binary() => any()}.


%% Example:
%% unarchive_application_request() :: #{
%%   <<"accountID">> => string(),
%%   <<"applicationID">> := string()
%% }
-type unarchive_application_request() :: #{binary() => any()}.


%% Example:
%% list_connectors_response() :: #{
%%   <<"items">> => list(connector()),
%%   <<"nextToken">> => string()
%% }
-type list_connectors_response() :: #{binary() => any()}.


%% Example:
%% list_waves_request_filters() :: #{
%%   <<"isArchived">> => [boolean()],
%%   <<"waveIDs">> => list(string())
%% }
-type list_waves_request_filters() :: #{binary() => any()}.


%% Example:
%% update_source_server_request() :: #{
%%   <<"accountID">> => string(),
%%   <<"connectorAction">> => source_server_connector_action(),
%%   <<"sourceServerID">> := string()
%% }
-type update_source_server_request() :: #{binary() => any()}.


%% Example:
%% archive_wave_request() :: #{
%%   <<"accountID">> => string(),
%%   <<"waveID">> := string()
%% }
-type archive_wave_request() :: #{binary() => any()}.


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
%%   <<"accountID">> => string(),
%%   <<"sourceServerID">> := string()
%% }
-type delete_source_server_request() :: #{binary() => any()}.


%% Example:
%% application_aggregated_status() :: #{
%%   <<"healthStatus">> => string(),
%%   <<"lastUpdateDateTime">> => string(),
%%   <<"progressStatus">> => string(),
%%   <<"totalSourceServers">> => float()
%% }
-type application_aggregated_status() :: #{binary() => any()}.


%% Example:
%% replication_configuration_template() :: #{
%%   <<"arn">> => string(),
%%   <<"associateDefaultSecurityGroup">> => [boolean()],
%%   <<"bandwidthThrottling">> => float(),
%%   <<"createPublicIP">> => [boolean()],
%%   <<"dataPlaneRouting">> => string(),
%%   <<"defaultLargeStagingDiskType">> => string(),
%%   <<"ebsEncryption">> => string(),
%%   <<"ebsEncryptionKeyArn">> => string(),
%%   <<"replicationConfigurationTemplateID">> := string(),
%%   <<"replicationServerInstanceType">> => string(),
%%   <<"replicationServersSecurityGroupsIDs">> => list(string()),
%%   <<"stagingAreaSubnetId">> => string(),
%%   <<"stagingAreaTags">> => map(),
%%   <<"tags">> => map(),
%%   <<"useDedicatedReplicationServer">> => [boolean()],
%%   <<"useFipsEndpoint">> => [boolean()]
%% }
-type replication_configuration_template() :: #{binary() => any()}.


%% Example:
%% resume_replication_request() :: #{
%%   <<"accountID">> => string(),
%%   <<"sourceServerID">> := string()
%% }
-type resume_replication_request() :: #{binary() => any()}.


%% Example:
%% list_waves_request() :: #{
%%   <<"accountID">> => string(),
%%   <<"filters">> => list_waves_request_filters(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_waves_request() :: #{binary() => any()}.


%% Example:
%% update_replication_configuration_template_request() :: #{
%%   <<"arn">> => string(),
%%   <<"associateDefaultSecurityGroup">> => [boolean()],
%%   <<"bandwidthThrottling">> => float(),
%%   <<"createPublicIP">> => [boolean()],
%%   <<"dataPlaneRouting">> => string(),
%%   <<"defaultLargeStagingDiskType">> => string(),
%%   <<"ebsEncryption">> => string(),
%%   <<"ebsEncryptionKeyArn">> => string(),
%%   <<"replicationConfigurationTemplateID">> := string(),
%%   <<"replicationServerInstanceType">> => string(),
%%   <<"replicationServersSecurityGroupsIDs">> => list(string()),
%%   <<"stagingAreaSubnetId">> => string(),
%%   <<"stagingAreaTags">> => map(),
%%   <<"useDedicatedReplicationServer">> => [boolean()],
%%   <<"useFipsEndpoint">> => [boolean()]
%% }
-type update_replication_configuration_template_request() :: #{binary() => any()}.


%% Example:
%% replication_configuration_replicated_disk() :: #{
%%   <<"deviceName">> => string(),
%%   <<"iops">> => float(),
%%   <<"isBootDisk">> => [boolean()],
%%   <<"stagingDiskType">> => string(),
%%   <<"throughput">> => float()
%% }
-type replication_configuration_replicated_disk() :: #{binary() => any()}.

%% Example:
%% associate_applications_response() :: #{}
-type associate_applications_response() :: #{}.


%% Example:
%% update_connector_request() :: #{
%%   <<"connectorID">> := string(),
%%   <<"name">> => string(),
%%   <<"ssmCommandConfig">> => connector_ssm_command_config()
%% }
-type update_connector_request() :: #{binary() => any()}.


%% Example:
%% pause_replication_request() :: #{
%%   <<"accountID">> => string(),
%%   <<"sourceServerID">> := string()
%% }
-type pause_replication_request() :: #{binary() => any()}.


%% Example:
%% network_interface() :: #{
%%   <<"ips">> => list(string()),
%%   <<"isPrimary">> => [boolean()],
%%   <<"macAddress">> => string()
%% }
-type network_interface() :: #{binary() => any()}.


%% Example:
%% life_cycle_last_test_finalized() :: #{
%%   <<"apiCallDateTime">> => string()
%% }
-type life_cycle_last_test_finalized() :: #{binary() => any()}.


%% Example:
%% create_replication_configuration_template_request() :: #{
%%   <<"associateDefaultSecurityGroup">> := [boolean()],
%%   <<"bandwidthThrottling">> := float(),
%%   <<"createPublicIP">> := [boolean()],
%%   <<"dataPlaneRouting">> := string(),
%%   <<"defaultLargeStagingDiskType">> := string(),
%%   <<"ebsEncryption">> := string(),
%%   <<"ebsEncryptionKeyArn">> => string(),
%%   <<"replicationServerInstanceType">> := string(),
%%   <<"replicationServersSecurityGroupsIDs">> := list(string()),
%%   <<"stagingAreaSubnetId">> := string(),
%%   <<"stagingAreaTags">> := map(),
%%   <<"tags">> => map(),
%%   <<"useDedicatedReplicationServer">> := [boolean()],
%%   <<"useFipsEndpoint">> => [boolean()]
%% }
-type create_replication_configuration_template_request() :: #{binary() => any()}.

%% Example:
%% disassociate_applications_response() :: #{}
-type disassociate_applications_response() :: #{}.


%% Example:
%% remove_source_server_action_request() :: #{
%%   <<"accountID">> => string(),
%%   <<"actionID">> := string(),
%%   <<"sourceServerID">> := string()
%% }
-type remove_source_server_action_request() :: #{binary() => any()}.


%% Example:
%% associate_applications_request() :: #{
%%   <<"accountID">> => string(),
%%   <<"applicationIDs">> := list(string()),
%%   <<"waveID">> := string()
%% }
-type associate_applications_request() :: #{binary() => any()}.


%% Example:
%% source_server_connector_action() :: #{
%%   <<"connectorArn">> => string(),
%%   <<"credentialsSecretArn">> => string()
%% }
-type source_server_connector_action() :: #{binary() => any()}.


%% Example:
%% list_applications_request_filters() :: #{
%%   <<"applicationIDs">> => list(string()),
%%   <<"isArchived">> => [boolean()],
%%   <<"waveIDs">> => list(string())
%% }
-type list_applications_request_filters() :: #{binary() => any()}.


%% Example:
%% connector_ssm_command_config() :: #{
%%   <<"cloudWatchLogGroupName">> => string(),
%%   <<"cloudWatchOutputEnabled">> => [boolean()],
%%   <<"outputS3BucketName">> => string(),
%%   <<"s3OutputEnabled">> => [boolean()]
%% }
-type connector_ssm_command_config() :: #{binary() => any()}.


%% Example:
%% import_task_error() :: #{
%%   <<"errorData">> => import_error_data(),
%%   <<"errorDateTime">> => string(),
%%   <<"errorType">> => string()
%% }
-type import_task_error() :: #{binary() => any()}.


%% Example:
%% launched_instance() :: #{
%%   <<"ec2InstanceID">> => string(),
%%   <<"firstBoot">> => string(),
%%   <<"jobID">> => string()
%% }
-type launched_instance() :: #{binary() => any()}.


%% Example:
%% start_test_request() :: #{
%%   <<"accountID">> => string(),
%%   <<"sourceServerIDs">> := list(string()),
%%   <<"tags">> => map()
%% }
-type start_test_request() :: #{binary() => any()}.


%% Example:
%% list_connectors_request() :: #{
%%   <<"filters">> => list_connectors_request_filters(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_connectors_request() :: #{binary() => any()}.


%% Example:
%% template_action_document() :: #{
%%   <<"actionID">> => string(),
%%   <<"actionName">> => string(),
%%   <<"active">> => [boolean()],
%%   <<"category">> => string(),
%%   <<"description">> => string(),
%%   <<"documentIdentifier">> => string(),
%%   <<"documentVersion">> => string(),
%%   <<"externalParameters">> => map(),
%%   <<"mustSucceedForCutover">> => [boolean()],
%%   <<"operatingSystem">> => string(),
%%   <<"order">> => integer(),
%%   <<"parameters">> => map(),
%%   <<"timeoutSeconds">> => integer()
%% }
-type template_action_document() :: #{binary() => any()}.


%% Example:
%% retry_data_replication_request() :: #{
%%   <<"accountID">> => string(),
%%   <<"sourceServerID">> := string()
%% }
-type retry_data_replication_request() :: #{binary() => any()}.


%% Example:
%% get_replication_configuration_request() :: #{
%%   <<"accountID">> => string(),
%%   <<"sourceServerID">> := string()
%% }
-type get_replication_configuration_request() :: #{binary() => any()}.


%% Example:
%% start_replication_request() :: #{
%%   <<"accountID">> => string(),
%%   <<"sourceServerID">> := string()
%% }
-type start_replication_request() :: #{binary() => any()}.


%% Example:
%% life_cycle_last_test_reverted() :: #{
%%   <<"apiCallDateTime">> => string()
%% }
-type life_cycle_last_test_reverted() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"tagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% list_template_actions_response() :: #{
%%   <<"items">> => list(template_action_document()),
%%   <<"nextToken">> => string()
%% }
-type list_template_actions_response() :: #{binary() => any()}.


%% Example:
%% vcenter_client() :: #{
%%   <<"arn">> => string(),
%%   <<"datacenterName">> => string(),
%%   <<"hostname">> => string(),
%%   <<"lastSeenDatetime">> => string(),
%%   <<"sourceServerTags">> => map(),
%%   <<"tags">> => map(),
%%   <<"vcenterClientID">> => string(),
%%   <<"vcenterUUID">> => string()
%% }
-type vcenter_client() :: #{binary() => any()}.


%% Example:
%% stop_replication_request() :: #{
%%   <<"accountID">> => string(),
%%   <<"sourceServerID">> := string()
%% }
-type stop_replication_request() :: #{binary() => any()}.


%% Example:
%% list_exports_request() :: #{
%%   <<"filters">> => list_exports_request_filters(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_exports_request() :: #{binary() => any()}.


%% Example:
%% list_source_server_actions_response() :: #{
%%   <<"items">> => list(source_server_action_document()),
%%   <<"nextToken">> => string()
%% }
-type list_source_server_actions_response() :: #{binary() => any()}.


%% Example:
%% unarchive_wave_request() :: #{
%%   <<"accountID">> => string(),
%%   <<"waveID">> := string()
%% }
-type unarchive_wave_request() :: #{binary() => any()}.


%% Example:
%% list_source_server_actions_request() :: #{
%%   <<"accountID">> => string(),
%%   <<"filters">> => source_server_actions_request_filters(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"sourceServerID">> := string()
%% }
-type list_source_server_actions_request() :: #{binary() => any()}.


%% Example:
%% launch_configuration_template() :: #{
%%   <<"arn">> => string(),
%%   <<"associatePublicIpAddress">> => [boolean()],
%%   <<"bootMode">> => string(),
%%   <<"copyPrivateIp">> => [boolean()],
%%   <<"copyTags">> => [boolean()],
%%   <<"ec2LaunchTemplateID">> => string(),
%%   <<"enableMapAutoTagging">> => [boolean()],
%%   <<"largeVolumeConf">> => launch_template_disk_conf(),
%%   <<"launchConfigurationTemplateID">> := string(),
%%   <<"launchDisposition">> => string(),
%%   <<"licensing">> => licensing(),
%%   <<"mapAutoTaggingMpeID">> => string(),
%%   <<"postLaunchActions">> => post_launch_actions(),
%%   <<"smallVolumeConf">> => launch_template_disk_conf(),
%%   <<"smallVolumeMaxSize">> => float(),
%%   <<"tags">> => map(),
%%   <<"targetInstanceTypeRightSizingMethod">> => string()
%% }
-type launch_configuration_template() :: #{binary() => any()}.


%% Example:
%% licensing() :: #{
%%   <<"osByol">> => [boolean()]
%% }
-type licensing() :: #{binary() => any()}.


%% Example:
%% start_export_response() :: #{
%%   <<"exportTask">> => export_task()
%% }
-type start_export_response() :: #{binary() => any()}.


%% Example:
%% export_task_summary() :: #{
%%   <<"applicationsCount">> => float(),
%%   <<"serversCount">> => float(),
%%   <<"wavesCount">> => float()
%% }
-type export_task_summary() :: #{binary() => any()}.


%% Example:
%% list_imports_response() :: #{
%%   <<"items">> => list(import_task()),
%%   <<"nextToken">> => string()
%% }
-type list_imports_response() :: #{binary() => any()}.


%% Example:
%% identification_hints() :: #{
%%   <<"awsInstanceID">> => string(),
%%   <<"fqdn">> => string(),
%%   <<"hostname">> => string(),
%%   <<"vmPath">> => string(),
%%   <<"vmWareUuid">> => string()
%% }
-type identification_hints() :: #{binary() => any()}.


%% Example:
%% source_server_actions_request_filters() :: #{
%%   <<"actionIDs">> => list(string())
%% }
-type source_server_actions_request_filters() :: #{binary() => any()}.


%% Example:
%% life_cycle_last_cutover() :: #{
%%   <<"finalized">> => life_cycle_last_cutover_finalized(),
%%   <<"initiated">> => life_cycle_last_cutover_initiated(),
%%   <<"reverted">> => life_cycle_last_cutover_reverted()
%% }
-type life_cycle_last_cutover() :: #{binary() => any()}.


%% Example:
%% source_properties() :: #{
%%   <<"cpus">> => list(c_p_u()),
%%   <<"disks">> => list(disk()),
%%   <<"identificationHints">> => identification_hints(),
%%   <<"lastUpdatedDateTime">> => string(),
%%   <<"networkInterfaces">> => list(network_interface()),
%%   <<"os">> => o_s(),
%%   <<"ramBytes">> => float(),
%%   <<"recommendedInstanceType">> => string()
%% }
-type source_properties() :: #{binary() => any()}.


%% Example:
%% describe_source_servers_response() :: #{
%%   <<"items">> => list(source_server()),
%%   <<"nextToken">> => string()
%% }
-type describe_source_servers_response() :: #{binary() => any()}.


%% Example:
%% describe_replication_configuration_templates_response() :: #{
%%   <<"items">> => list(replication_configuration_template()),
%%   <<"nextToken">> => string()
%% }
-type describe_replication_configuration_templates_response() :: #{binary() => any()}.


%% Example:
%% life_cycle_last_cutover_reverted() :: #{
%%   <<"apiCallDateTime">> => string()
%% }
-type life_cycle_last_cutover_reverted() :: #{binary() => any()}.

%% Example:
%% delete_replication_configuration_template_response() :: #{}
-type delete_replication_configuration_template_response() :: #{}.

%% Example:
%% delete_wave_response() :: #{}
-type delete_wave_response() :: #{}.

%% Example:
%% disassociate_source_servers_response() :: #{}
-type disassociate_source_servers_response() :: #{}.


%% Example:
%% life_cycle_last_test_initiated() :: #{
%%   <<"apiCallDateTime">> => string(),
%%   <<"jobID">> => string()
%% }
-type life_cycle_last_test_initiated() :: #{binary() => any()}.


%% Example:
%% put_source_server_action_request() :: #{
%%   <<"accountID">> => string(),
%%   <<"actionID">> := string(),
%%   <<"actionName">> := string(),
%%   <<"active">> => [boolean()],
%%   <<"category">> => string(),
%%   <<"description">> => string(),
%%   <<"documentIdentifier">> := string(),
%%   <<"documentVersion">> => string(),
%%   <<"externalParameters">> => map(),
%%   <<"mustSucceedForCutover">> => [boolean()],
%%   <<"order">> := integer(),
%%   <<"parameters">> => map(),
%%   <<"sourceServerID">> := string(),
%%   <<"timeoutSeconds">> => integer()
%% }
-type put_source_server_action_request() :: #{binary() => any()}.


%% Example:
%% replication_configuration() :: #{
%%   <<"associateDefaultSecurityGroup">> => [boolean()],
%%   <<"bandwidthThrottling">> => float(),
%%   <<"createPublicIP">> => [boolean()],
%%   <<"dataPlaneRouting">> => string(),
%%   <<"defaultLargeStagingDiskType">> => string(),
%%   <<"ebsEncryption">> => string(),
%%   <<"ebsEncryptionKeyArn">> => string(),
%%   <<"name">> => string(),
%%   <<"replicatedDisks">> => list(replication_configuration_replicated_disk()),
%%   <<"replicationServerInstanceType">> => string(),
%%   <<"replicationServersSecurityGroupsIDs">> => list(string()),
%%   <<"sourceServerID">> => string(),
%%   <<"stagingAreaSubnetId">> => string(),
%%   <<"stagingAreaTags">> => map(),
%%   <<"useDedicatedReplicationServer">> => [boolean()],
%%   <<"useFipsEndpoint">> => [boolean()]
%% }
-type replication_configuration() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"code">> => string(),
%%   <<"errors">> => list(error_details()),
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
%% data_replication_error() :: #{
%%   <<"error">> => string(),
%%   <<"rawError">> => string()
%% }
-type data_replication_error() :: #{binary() => any()}.


%% Example:
%% disassociate_applications_request() :: #{
%%   <<"accountID">> => string(),
%%   <<"applicationIDs">> := list(string()),
%%   <<"waveID">> := string()
%% }
-type disassociate_applications_request() :: #{binary() => any()}.


%% Example:
%% export_task_error() :: #{
%%   <<"errorData">> => export_error_data(),
%%   <<"errorDateTime">> => string()
%% }
-type export_task_error() :: #{binary() => any()}.


%% Example:
%% update_source_server_replication_type_request() :: #{
%%   <<"accountID">> => string(),
%%   <<"replicationType">> := string(),
%%   <<"sourceServerID">> := string()
%% }
-type update_source_server_replication_type_request() :: #{binary() => any()}.


%% Example:
%% post_launch_actions() :: #{
%%   <<"cloudWatchLogGroupName">> => string(),
%%   <<"deployment">> => string(),
%%   <<"s3LogBucket">> => string(),
%%   <<"s3OutputKeyPrefix">> => string(),
%%   <<"ssmDocuments">> => list(ssm_document())
%% }
-type post_launch_actions() :: #{binary() => any()}.


%% Example:
%% delete_wave_request() :: #{
%%   <<"accountID">> => string(),
%%   <<"waveID">> := string()
%% }
-type delete_wave_request() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"code">> => string(),
%%   <<"message">> => string(),
%%   <<"quotaCode">> => string(),
%%   <<"quotaValue">> => integer(),
%%   <<"resourceId">> => string(),
%%   <<"resourceType">> => string(),
%%   <<"serviceCode">> => string()
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% post_launch_actions_status() :: #{
%%   <<"postLaunchActionsLaunchStatusList">> => list(job_post_launch_actions_launch_status()),
%%   <<"ssmAgentDiscoveryDatetime">> => string()
%% }
-type post_launch_actions_status() :: #{binary() => any()}.


%% Example:
%% create_wave_request() :: #{
%%   <<"accountID">> => string(),
%%   <<"description">> => string(),
%%   <<"name">> := string(),
%%   <<"tags">> => map()
%% }
-type create_wave_request() :: #{binary() => any()}.


%% Example:
%% update_wave_request() :: #{
%%   <<"accountID">> => string(),
%%   <<"description">> => string(),
%%   <<"name">> => string(),
%%   <<"waveID">> := string()
%% }
-type update_wave_request() :: #{binary() => any()}.

%% Example:
%% remove_template_action_response() :: #{}
-type remove_template_action_response() :: #{}.


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
%% application() :: #{
%%   <<"applicationAggregatedStatus">> => application_aggregated_status(),
%%   <<"applicationID">> => string(),
%%   <<"arn">> => string(),
%%   <<"creationDateTime">> => string(),
%%   <<"description">> => string(),
%%   <<"isArchived">> => [boolean()],
%%   <<"lastModifiedDateTime">> => string(),
%%   <<"name">> => string(),
%%   <<"tags">> => map(),
%%   <<"waveID">> => string()
%% }
-type application() :: #{binary() => any()}.

%% Example:
%% initialize_service_request() :: #{}
-type initialize_service_request() :: #{}.


%% Example:
%% create_launch_configuration_template_request() :: #{
%%   <<"associatePublicIpAddress">> => [boolean()],
%%   <<"bootMode">> => string(),
%%   <<"copyPrivateIp">> => [boolean()],
%%   <<"copyTags">> => [boolean()],
%%   <<"enableMapAutoTagging">> => [boolean()],
%%   <<"largeVolumeConf">> => launch_template_disk_conf(),
%%   <<"launchDisposition">> => string(),
%%   <<"licensing">> => licensing(),
%%   <<"mapAutoTaggingMpeID">> => string(),
%%   <<"postLaunchActions">> => post_launch_actions(),
%%   <<"smallVolumeConf">> => launch_template_disk_conf(),
%%   <<"smallVolumeMaxSize">> => float(),
%%   <<"tags">> => map(),
%%   <<"targetInstanceTypeRightSizingMethod">> => string()
%% }
-type create_launch_configuration_template_request() :: #{binary() => any()}.


%% Example:
%% error_details() :: #{
%%   <<"code">> => string(),
%%   <<"message">> => string(),
%%   <<"resourceId">> => string(),
%%   <<"resourceType">> => string()
%% }
-type error_details() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% create_application_request() :: #{
%%   <<"accountID">> => string(),
%%   <<"description">> => string(),
%%   <<"name">> := string(),
%%   <<"tags">> => map()
%% }
-type create_application_request() :: #{binary() => any()}.


%% Example:
%% managed_account() :: #{
%%   <<"accountId">> => string()
%% }
-type managed_account() :: #{binary() => any()}.


%% Example:
%% list_template_actions_request() :: #{
%%   <<"filters">> => template_actions_request_filters(),
%%   <<"launchConfigurationTemplateID">> := string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_template_actions_request() :: #{binary() => any()}.


%% Example:
%% data_replication_info() :: #{
%%   <<"dataReplicationError">> => data_replication_error(),
%%   <<"dataReplicationInitiation">> => data_replication_initiation(),
%%   <<"dataReplicationState">> => string(),
%%   <<"etaDateTime">> => string(),
%%   <<"lagDuration">> => string(),
%%   <<"lastSnapshotDateTime">> => string(),
%%   <<"replicatedDisks">> => list(data_replication_info_replicated_disk())
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
%%   <<"applicationIDs">> => list(string()),
%%   <<"isArchived">> => [boolean()],
%%   <<"lifeCycleStates">> => list(string()),
%%   <<"replicationTypes">> => list(string()),
%%   <<"sourceServerIDs">> => list(string())
%% }
-type describe_source_servers_request_filters() :: #{binary() => any()}.


%% Example:
%% associate_source_servers_request() :: #{
%%   <<"accountID">> => string(),
%%   <<"applicationID">> := string(),
%%   <<"sourceServerIDs">> := list(string())
%% }
-type associate_source_servers_request() :: #{binary() => any()}.


%% Example:
%% delete_vcenter_client_request() :: #{
%%   <<"vcenterClientID">> := string()
%% }
-type delete_vcenter_client_request() :: #{binary() => any()}.


%% Example:
%% terminate_target_instances_request() :: #{
%%   <<"accountID">> => string(),
%%   <<"sourceServerIDs">> := list(string()),
%%   <<"tags">> => map()
%% }
-type terminate_target_instances_request() :: #{binary() => any()}.


%% Example:
%% data_replication_info_replicated_disk() :: #{
%%   <<"backloggedStorageBytes">> => float(),
%%   <<"deviceName">> => string(),
%%   <<"replicatedStorageBytes">> => float(),
%%   <<"rescannedStorageBytes">> => float(),
%%   <<"totalStorageBytes">> => float()
%% }
-type data_replication_info_replicated_disk() :: #{binary() => any()}.


%% Example:
%% import_task() :: #{
%%   <<"creationDateTime">> => string(),
%%   <<"endDateTime">> => string(),
%%   <<"importID">> => string(),
%%   <<"progressPercentage">> => [float()],
%%   <<"s3BucketSource">> => s3_bucket_source(),
%%   <<"status">> => string(),
%%   <<"summary">> => import_task_summary()
%% }
-type import_task() :: #{binary() => any()}.

%% Example:
%% initialize_service_response() :: #{}
-type initialize_service_response() :: #{}.

%% Example:
%% remove_source_server_action_response() :: #{}
-type remove_source_server_action_response() :: #{}.


%% Example:
%% import_task_summary() :: #{
%%   <<"applications">> => import_task_summary_applications(),
%%   <<"servers">> => import_task_summary_servers(),
%%   <<"waves">> => import_task_summary_waves()
%% }
-type import_task_summary() :: #{binary() => any()}.


%% Example:
%% mark_as_archived_request() :: #{
%%   <<"accountID">> => string(),
%%   <<"sourceServerID">> := string()
%% }
-type mark_as_archived_request() :: #{binary() => any()}.

%% Example:
%% delete_application_response() :: #{}
-type delete_application_response() :: #{}.


%% Example:
%% describe_vcenter_clients_response() :: #{
%%   <<"items">> => list(vcenter_client()),
%%   <<"nextToken">> => string()
%% }
-type describe_vcenter_clients_response() :: #{binary() => any()}.


%% Example:
%% wave() :: #{
%%   <<"arn">> => string(),
%%   <<"creationDateTime">> => string(),
%%   <<"description">> => string(),
%%   <<"isArchived">> => [boolean()],
%%   <<"lastModifiedDateTime">> => string(),
%%   <<"name">> => string(),
%%   <<"tags">> => map(),
%%   <<"waveAggregatedStatus">> => wave_aggregated_status(),
%%   <<"waveID">> => string()
%% }
-type wave() :: #{binary() => any()}.


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
%% list_managed_accounts_response() :: #{
%%   <<"items">> => list(managed_account()),
%%   <<"nextToken">> => string()
%% }
-type list_managed_accounts_response() :: #{binary() => any()}.


%% Example:
%% export_task() :: #{
%%   <<"creationDateTime">> => string(),
%%   <<"endDateTime">> => string(),
%%   <<"exportID">> => string(),
%%   <<"progressPercentage">> => [float()],
%%   <<"s3Bucket">> => string(),
%%   <<"s3BucketOwner">> => string(),
%%   <<"s3Key">> => string(),
%%   <<"status">> => string(),
%%   <<"summary">> => export_task_summary()
%% }
-type export_task() :: #{binary() => any()}.


%% Example:
%% describe_launch_configuration_templates_response() :: #{
%%   <<"items">> => list(launch_configuration_template()),
%%   <<"nextToken">> => string()
%% }
-type describe_launch_configuration_templates_response() :: #{binary() => any()}.


%% Example:
%% update_application_request() :: #{
%%   <<"accountID">> => string(),
%%   <<"applicationID">> := string(),
%%   <<"description">> => string(),
%%   <<"name">> => string()
%% }
-type update_application_request() :: #{binary() => any()}.


%% Example:
%% get_launch_configuration_request() :: #{
%%   <<"accountID">> => string(),
%%   <<"sourceServerID">> := string()
%% }
-type get_launch_configuration_request() :: #{binary() => any()}.


%% Example:
%% life_cycle_last_cutover_finalized() :: #{
%%   <<"apiCallDateTime">> => string()
%% }
-type life_cycle_last_cutover_finalized() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => string(),
%%   <<"retryAfterSeconds">> => float()
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% participating_server() :: #{
%%   <<"launchStatus">> => string(),
%%   <<"launchedEc2InstanceID">> => string(),
%%   <<"postLaunchActionsStatus">> => post_launch_actions_status(),
%%   <<"sourceServerID">> => string()
%% }
-type participating_server() :: #{binary() => any()}.


%% Example:
%% list_import_errors_request() :: #{
%%   <<"importID">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_import_errors_request() :: #{binary() => any()}.


%% Example:
%% data_replication_initiation_step() :: #{
%%   <<"name">> => string(),
%%   <<"status">> => string()
%% }
-type data_replication_initiation_step() :: #{binary() => any()}.


%% Example:
%% start_export_request() :: #{
%%   <<"s3Bucket">> => string(),
%%   <<"s3BucketOwner">> => string(),
%%   <<"s3Key">> => string()
%% }
-type start_export_request() :: #{binary() => any()}.


%% Example:
%% import_task_summary_applications() :: #{
%%   <<"createdCount">> => float(),
%%   <<"modifiedCount">> => float()
%% }
-type import_task_summary_applications() :: #{binary() => any()}.


%% Example:
%% disconnect_from_service_request() :: #{
%%   <<"accountID">> => string(),
%%   <<"sourceServerID">> := string()
%% }
-type disconnect_from_service_request() :: #{binary() => any()}.


%% Example:
%% life_cycle_last_test() :: #{
%%   <<"finalized">> => life_cycle_last_test_finalized(),
%%   <<"initiated">> => life_cycle_last_test_initiated(),
%%   <<"reverted">> => life_cycle_last_test_reverted()
%% }
-type life_cycle_last_test() :: #{binary() => any()}.


%% Example:
%% import_task_summary_waves() :: #{
%%   <<"createdCount">> => float(),
%%   <<"modifiedCount">> => float()
%% }
-type import_task_summary_waves() :: #{binary() => any()}.


%% Example:
%% list_applications_request() :: #{
%%   <<"accountID">> => string(),
%%   <<"filters">> => list_applications_request_filters(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_applications_request() :: #{binary() => any()}.


%% Example:
%% list_export_errors_request() :: #{
%%   <<"exportID">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_export_errors_request() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"code">> => string(),
%%   <<"message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% create_connector_request() :: #{
%%   <<"name">> := string(),
%%   <<"ssmCommandConfig">> => connector_ssm_command_config(),
%%   <<"ssmInstanceID">> := string(),
%%   <<"tags">> => map()
%% }
-type create_connector_request() :: #{binary() => any()}.


%% Example:
%% remove_template_action_request() :: #{
%%   <<"actionID">> := string(),
%%   <<"launchConfigurationTemplateID">> := string()
%% }
-type remove_template_action_request() :: #{binary() => any()}.


%% Example:
%% export_error_data() :: #{
%%   <<"rawError">> => string()
%% }
-type export_error_data() :: #{binary() => any()}.


%% Example:
%% list_export_errors_response() :: #{
%%   <<"items">> => list(export_task_error()),
%%   <<"nextToken">> => string()
%% }
-type list_export_errors_response() :: #{binary() => any()}.


%% Example:
%% change_server_life_cycle_state_request() :: #{
%%   <<"accountID">> => string(),
%%   <<"lifeCycle">> := change_server_life_cycle_state_source_server_lifecycle(),
%%   <<"sourceServerID">> := string()
%% }
-type change_server_life_cycle_state_request() :: #{binary() => any()}.


%% Example:
%% archive_application_request() :: #{
%%   <<"accountID">> => string(),
%%   <<"applicationID">> := string()
%% }
-type archive_application_request() :: #{binary() => any()}.


%% Example:
%% delete_job_request() :: #{
%%   <<"accountID">> => string(),
%%   <<"jobID">> := string()
%% }
-type delete_job_request() :: #{binary() => any()}.


%% Example:
%% start_test_response() :: #{
%%   <<"job">> => job()
%% }
-type start_test_response() :: #{binary() => any()}.


%% Example:
%% ssm_parameter_store_parameter() :: #{
%%   <<"parameterName">> => string(),
%%   <<"parameterType">> => string()
%% }
-type ssm_parameter_store_parameter() :: #{binary() => any()}.


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
%%   <<"accountID">> => string(),
%%   <<"bootMode">> => string(),
%%   <<"copyPrivateIp">> => [boolean()],
%%   <<"copyTags">> => [boolean()],
%%   <<"enableMapAutoTagging">> => [boolean()],
%%   <<"launchDisposition">> => string(),
%%   <<"licensing">> => licensing(),
%%   <<"mapAutoTaggingMpeID">> => string(),
%%   <<"name">> => string(),
%%   <<"postLaunchActions">> => post_launch_actions(),
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
%%   <<"participatingServers">> => list(participating_server()),
%%   <<"status">> => string(),
%%   <<"tags">> => map(),
%%   <<"type">> => string()
%% }
-type job() :: #{binary() => any()}.


%% Example:
%% launch_template_disk_conf() :: #{
%%   <<"iops">> => float(),
%%   <<"throughput">> => float(),
%%   <<"volumeType">> => string()
%% }
-type launch_template_disk_conf() :: #{binary() => any()}.


%% Example:
%% import_task_summary_servers() :: #{
%%   <<"createdCount">> => float(),
%%   <<"modifiedCount">> => float()
%% }
-type import_task_summary_servers() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => string(),
%%   <<"quotaCode">> => string(),
%%   <<"retryAfterSeconds">> => string(),
%%   <<"serviceCode">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% ssm_document() :: #{
%%   <<"actionName">> => string(),
%%   <<"externalParameters">> => map(),
%%   <<"mustSucceedForCutover">> => [boolean()],
%%   <<"parameters">> => map(),
%%   <<"ssmDocumentName">> => string(),
%%   <<"timeoutSeconds">> => integer()
%% }
-type ssm_document() :: #{binary() => any()}.


%% Example:
%% put_template_action_request() :: #{
%%   <<"actionID">> := string(),
%%   <<"actionName">> := string(),
%%   <<"active">> => [boolean()],
%%   <<"category">> => string(),
%%   <<"description">> => string(),
%%   <<"documentIdentifier">> := string(),
%%   <<"documentVersion">> => string(),
%%   <<"externalParameters">> => map(),
%%   <<"launchConfigurationTemplateID">> := string(),
%%   <<"mustSucceedForCutover">> => [boolean()],
%%   <<"operatingSystem">> => string(),
%%   <<"order">> := integer(),
%%   <<"parameters">> => map(),
%%   <<"timeoutSeconds">> => integer()
%% }
-type put_template_action_request() :: #{binary() => any()}.


%% Example:
%% list_imports_request() :: #{
%%   <<"filters">> => list_imports_request_filters(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_imports_request() :: #{binary() => any()}.


%% Example:
%% list_imports_request_filters() :: #{
%%   <<"importIDs">> => list(string())
%% }
-type list_imports_request_filters() :: #{binary() => any()}.


%% Example:
%% list_managed_accounts_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_managed_accounts_request() :: #{binary() => any()}.


%% Example:
%% job_log_event_data() :: #{
%%   <<"conversionServerID">> => string(),
%%   <<"rawError">> => string(),
%%   <<"sourceServerID">> => string(),
%%   <<"targetInstanceID">> => string()
%% }
-type job_log_event_data() :: #{binary() => any()}.


%% Example:
%% describe_jobs_request() :: #{
%%   <<"accountID">> => string(),
%%   <<"filters">> => describe_jobs_request_filters(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type describe_jobs_request() :: #{binary() => any()}.


%% Example:
%% launch_configuration() :: #{
%%   <<"bootMode">> => string(),
%%   <<"copyPrivateIp">> => [boolean()],
%%   <<"copyTags">> => [boolean()],
%%   <<"ec2LaunchTemplateID">> => string(),
%%   <<"enableMapAutoTagging">> => [boolean()],
%%   <<"launchDisposition">> => string(),
%%   <<"licensing">> => licensing(),
%%   <<"mapAutoTaggingMpeID">> => string(),
%%   <<"name">> => string(),
%%   <<"postLaunchActions">> => post_launch_actions(),
%%   <<"sourceServerID">> => string(),
%%   <<"targetInstanceTypeRightSizingMethod">> => string()
%% }
-type launch_configuration() :: #{binary() => any()}.


%% Example:
%% list_applications_response() :: #{
%%   <<"items">> => list(application()),
%%   <<"nextToken">> => string()
%% }
-type list_applications_response() :: #{binary() => any()}.


%% Example:
%% job_post_launch_actions_launch_status() :: #{
%%   <<"executionID">> => string(),
%%   <<"executionStatus">> => string(),
%%   <<"failureReason">> => string(),
%%   <<"ssmDocument">> => ssm_document(),
%%   <<"ssmDocumentType">> => string()
%% }
-type job_post_launch_actions_launch_status() :: #{binary() => any()}.


%% Example:
%% import_error_data() :: #{
%%   <<"accountID">> => string(),
%%   <<"applicationID">> => string(),
%%   <<"ec2LaunchTemplateID">> => string(),
%%   <<"rawError">> => string(),
%%   <<"rowNumber">> => float(),
%%   <<"sourceServerID">> => string(),
%%   <<"waveID">> => string()
%% }
-type import_error_data() :: #{binary() => any()}.


%% Example:
%% update_replication_configuration_request() :: #{
%%   <<"accountID">> => string(),
%%   <<"associateDefaultSecurityGroup">> => [boolean()],
%%   <<"bandwidthThrottling">> => float(),
%%   <<"createPublicIP">> => [boolean()],
%%   <<"dataPlaneRouting">> => string(),
%%   <<"defaultLargeStagingDiskType">> => string(),
%%   <<"ebsEncryption">> => string(),
%%   <<"ebsEncryptionKeyArn">> => string(),
%%   <<"name">> => string(),
%%   <<"replicatedDisks">> => list(replication_configuration_replicated_disk()),
%%   <<"replicationServerInstanceType">> => string(),
%%   <<"replicationServersSecurityGroupsIDs">> => list(string()),
%%   <<"sourceServerID">> := string(),
%%   <<"stagingAreaSubnetId">> => string(),
%%   <<"stagingAreaTags">> => map(),
%%   <<"useDedicatedReplicationServer">> => [boolean()],
%%   <<"useFipsEndpoint">> => [boolean()]
%% }
-type update_replication_configuration_request() :: #{binary() => any()}.


%% Example:
%% delete_connector_request() :: #{
%%   <<"connectorID">> := string()
%% }
-type delete_connector_request() :: #{binary() => any()}.


%% Example:
%% source_server() :: #{
%%   <<"applicationID">> => string(),
%%   <<"arn">> => string(),
%%   <<"connectorAction">> => source_server_connector_action(),
%%   <<"dataReplicationInfo">> => data_replication_info(),
%%   <<"fqdnForActionFramework">> => string(),
%%   <<"isArchived">> => [boolean()],
%%   <<"launchedInstance">> => launched_instance(),
%%   <<"lifeCycle">> => life_cycle(),
%%   <<"replicationType">> => string(),
%%   <<"sourceProperties">> => source_properties(),
%%   <<"sourceServerID">> => string(),
%%   <<"tags">> => map(),
%%   <<"userProvidedID">> => string(),
%%   <<"vcenterClientID">> => string()
%% }
-type source_server() :: #{binary() => any()}.


%% Example:
%% wave_aggregated_status() :: #{
%%   <<"healthStatus">> => string(),
%%   <<"lastUpdateDateTime">> => string(),
%%   <<"progressStatus">> => string(),
%%   <<"replicationStartedDateTime">> => string(),
%%   <<"totalApplications">> => float()
%% }
-type wave_aggregated_status() :: #{binary() => any()}.


%% Example:
%% list_import_errors_response() :: #{
%%   <<"items">> => list(import_task_error()),
%%   <<"nextToken">> => string()
%% }
-type list_import_errors_response() :: #{binary() => any()}.


%% Example:
%% list_waves_response() :: #{
%%   <<"items">> => list(wave()),
%%   <<"nextToken">> => string()
%% }
-type list_waves_response() :: #{binary() => any()}.


%% Example:
%% source_server_action_document() :: #{
%%   <<"actionID">> => string(),
%%   <<"actionName">> => string(),
%%   <<"active">> => [boolean()],
%%   <<"category">> => string(),
%%   <<"description">> => string(),
%%   <<"documentIdentifier">> => string(),
%%   <<"documentVersion">> => string(),
%%   <<"externalParameters">> => map(),
%%   <<"mustSucceedForCutover">> => [boolean()],
%%   <<"order">> => integer(),
%%   <<"parameters">> => map(),
%%   <<"timeoutSeconds">> => integer()
%% }
-type source_server_action_document() :: #{binary() => any()}.


%% Example:
%% finalize_cutover_request() :: #{
%%   <<"accountID">> => string(),
%%   <<"sourceServerID">> := string()
%% }
-type finalize_cutover_request() :: #{binary() => any()}.

%% Example:
%% associate_source_servers_response() :: #{}
-type associate_source_servers_response() :: #{}.


%% Example:
%% life_cycle_last_cutover_initiated() :: #{
%%   <<"apiCallDateTime">> => string(),
%%   <<"jobID">> => string()
%% }
-type life_cycle_last_cutover_initiated() :: #{binary() => any()}.

%% Example:
%% delete_launch_configuration_template_response() :: #{}
-type delete_launch_configuration_template_response() :: #{}.

%% Example:
%% delete_job_response() :: #{}
-type delete_job_response() :: #{}.


%% Example:
%% disassociate_source_servers_request() :: #{
%%   <<"accountID">> => string(),
%%   <<"applicationID">> := string(),
%%   <<"sourceServerIDs">> := list(string())
%% }
-type disassociate_source_servers_request() :: #{binary() => any()}.


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
%% list_connectors_request_filters() :: #{
%%   <<"connectorIDs">> => list(string())
%% }
-type list_connectors_request_filters() :: #{binary() => any()}.


%% Example:
%% describe_job_log_items_response() :: #{
%%   <<"items">> => list(job_log()),
%%   <<"nextToken">> => string()
%% }
-type describe_job_log_items_response() :: #{binary() => any()}.


%% Example:
%% terminate_target_instances_response() :: #{
%%   <<"job">> => job()
%% }
-type terminate_target_instances_response() :: #{binary() => any()}.


%% Example:
%% start_import_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"s3BucketSource">> => s3_bucket_source()
%% }
-type start_import_request() :: #{binary() => any()}.


%% Example:
%% update_launch_configuration_template_request() :: #{
%%   <<"associatePublicIpAddress">> => [boolean()],
%%   <<"bootMode">> => string(),
%%   <<"copyPrivateIp">> => [boolean()],
%%   <<"copyTags">> => [boolean()],
%%   <<"enableMapAutoTagging">> => [boolean()],
%%   <<"largeVolumeConf">> => launch_template_disk_conf(),
%%   <<"launchConfigurationTemplateID">> := string(),
%%   <<"launchDisposition">> => string(),
%%   <<"licensing">> => licensing(),
%%   <<"mapAutoTaggingMpeID">> => string(),
%%   <<"postLaunchActions">> => post_launch_actions(),
%%   <<"smallVolumeConf">> => launch_template_disk_conf(),
%%   <<"smallVolumeMaxSize">> => float(),
%%   <<"targetInstanceTypeRightSizingMethod">> => string()
%% }
-type update_launch_configuration_template_request() :: #{binary() => any()}.


%% Example:
%% s3_bucket_source() :: #{
%%   <<"s3Bucket">> => string(),
%%   <<"s3BucketOwner">> => string(),
%%   <<"s3Key">> => string()
%% }
-type s3_bucket_source() :: #{binary() => any()}.


%% Example:
%% start_import_response() :: #{
%%   <<"importTask">> => import_task()
%% }
-type start_import_response() :: #{binary() => any()}.


%% Example:
%% start_cutover_request() :: #{
%%   <<"accountID">> => string(),
%%   <<"sourceServerIDs">> := list(string()),
%%   <<"tags">> => map()
%% }
-type start_cutover_request() :: #{binary() => any()}.


%% Example:
%% job_log() :: #{
%%   <<"event">> => string(),
%%   <<"eventData">> => job_log_event_data(),
%%   <<"logDateTime">> => string()
%% }
-type job_log() :: #{binary() => any()}.


%% Example:
%% template_actions_request_filters() :: #{
%%   <<"actionIDs">> => list(string())
%% }
-type template_actions_request_filters() :: #{binary() => any()}.


%% Example:
%% delete_application_request() :: #{
%%   <<"accountID">> => string(),
%%   <<"applicationID">> := string()
%% }
-type delete_application_request() :: #{binary() => any()}.


%% Example:
%% list_exports_response() :: #{
%%   <<"items">> => list(export_task()),
%%   <<"nextToken">> => string()
%% }
-type list_exports_response() :: #{binary() => any()}.


%% Example:
%% delete_launch_configuration_template_request() :: #{
%%   <<"launchConfigurationTemplateID">> := string()
%% }
-type delete_launch_configuration_template_request() :: #{binary() => any()}.

-type archive_application_errors() ::
    uninitialized_account_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type archive_wave_errors() ::
    uninitialized_account_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type associate_applications_errors() ::
    uninitialized_account_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type associate_source_servers_errors() ::
    uninitialized_account_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type change_server_life_cycle_state_errors() ::
    validation_exception() | 
    uninitialized_account_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_application_errors() ::
    uninitialized_account_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_connector_errors() ::
    validation_exception() | 
    uninitialized_account_exception().

-type create_launch_configuration_template_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    uninitialized_account_exception().

-type create_replication_configuration_template_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    uninitialized_account_exception().

-type create_wave_errors() ::
    uninitialized_account_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type delete_application_errors() ::
    uninitialized_account_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_connector_errors() ::
    validation_exception() | 
    uninitialized_account_exception() | 
    resource_not_found_exception().

-type delete_job_errors() ::
    uninitialized_account_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_launch_configuration_template_errors() ::
    uninitialized_account_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_replication_configuration_template_errors() ::
    uninitialized_account_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_source_server_errors() ::
    uninitialized_account_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_vcenter_client_errors() ::
    validation_exception() | 
    uninitialized_account_exception() | 
    resource_not_found_exception().

-type delete_wave_errors() ::
    uninitialized_account_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type describe_job_log_items_errors() ::
    validation_exception() | 
    uninitialized_account_exception().

-type describe_jobs_errors() ::
    validation_exception() | 
    uninitialized_account_exception().

-type describe_launch_configuration_templates_errors() ::
    validation_exception() | 
    uninitialized_account_exception() | 
    resource_not_found_exception().

-type describe_replication_configuration_templates_errors() ::
    validation_exception() | 
    uninitialized_account_exception() | 
    resource_not_found_exception().

-type describe_source_servers_errors() ::
    validation_exception() | 
    uninitialized_account_exception().

-type describe_vcenter_clients_errors() ::
    validation_exception() | 
    uninitialized_account_exception() | 
    resource_not_found_exception().

-type disassociate_applications_errors() ::
    uninitialized_account_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type disassociate_source_servers_errors() ::
    uninitialized_account_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type disconnect_from_service_errors() ::
    uninitialized_account_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type finalize_cutover_errors() ::
    validation_exception() | 
    uninitialized_account_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_launch_configuration_errors() ::
    uninitialized_account_exception() | 
    resource_not_found_exception().

-type get_replication_configuration_errors() ::
    uninitialized_account_exception() | 
    resource_not_found_exception().

-type initialize_service_errors() ::
    validation_exception() | 
    access_denied_exception().

-type list_applications_errors() ::
    uninitialized_account_exception().

-type list_connectors_errors() ::
    validation_exception() | 
    uninitialized_account_exception().

-type list_export_errors_errors() ::
    validation_exception() | 
    uninitialized_account_exception().

-type list_exports_errors() ::
    uninitialized_account_exception().

-type list_import_errors_errors() ::
    validation_exception() | 
    uninitialized_account_exception().

-type list_imports_errors() ::
    validation_exception() | 
    uninitialized_account_exception().

-type list_managed_accounts_errors() ::
    validation_exception() | 
    uninitialized_account_exception().

-type list_source_server_actions_errors() ::
    uninitialized_account_exception() | 
    resource_not_found_exception().

-type list_tags_for_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_template_actions_errors() ::
    uninitialized_account_exception() | 
    resource_not_found_exception().

-type list_waves_errors() ::
    uninitialized_account_exception().

-type mark_as_archived_errors() ::
    uninitialized_account_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type pause_replication_errors() ::
    validation_exception() | 
    uninitialized_account_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type put_source_server_action_errors() ::
    validation_exception() | 
    uninitialized_account_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type put_template_action_errors() ::
    validation_exception() | 
    uninitialized_account_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type remove_source_server_action_errors() ::
    validation_exception() | 
    uninitialized_account_exception() | 
    resource_not_found_exception().

-type remove_template_action_errors() ::
    validation_exception() | 
    uninitialized_account_exception() | 
    resource_not_found_exception().

-type resume_replication_errors() ::
    validation_exception() | 
    uninitialized_account_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type retry_data_replication_errors() ::
    validation_exception() | 
    uninitialized_account_exception() | 
    resource_not_found_exception().

-type start_cutover_errors() ::
    validation_exception() | 
    uninitialized_account_exception() | 
    conflict_exception().

-type start_export_errors() ::
    validation_exception() | 
    uninitialized_account_exception() | 
    service_quota_exceeded_exception().

-type start_import_errors() ::
    validation_exception() | 
    uninitialized_account_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type start_replication_errors() ::
    validation_exception() | 
    uninitialized_account_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type start_test_errors() ::
    validation_exception() | 
    uninitialized_account_exception() | 
    conflict_exception().

-type stop_replication_errors() ::
    validation_exception() | 
    uninitialized_account_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type tag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type terminate_target_instances_errors() ::
    validation_exception() | 
    uninitialized_account_exception() | 
    conflict_exception().

-type unarchive_application_errors() ::
    uninitialized_account_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type unarchive_wave_errors() ::
    uninitialized_account_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_application_errors() ::
    uninitialized_account_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_connector_errors() ::
    validation_exception() | 
    uninitialized_account_exception() | 
    resource_not_found_exception().

-type update_launch_configuration_errors() ::
    validation_exception() | 
    uninitialized_account_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_launch_configuration_template_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    uninitialized_account_exception() | 
    resource_not_found_exception().

-type update_replication_configuration_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    uninitialized_account_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_replication_configuration_template_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    uninitialized_account_exception() | 
    resource_not_found_exception().

-type update_source_server_errors() ::
    uninitialized_account_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_source_server_replication_type_errors() ::
    validation_exception() | 
    uninitialized_account_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_wave_errors() ::
    uninitialized_account_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Archive application.
-spec archive_application(aws_client:aws_client(), archive_application_request()) ->
    {ok, application(), tuple()} |
    {error, any()} |
    {error, archive_application_errors(), tuple()}.
archive_application(Client, Input) ->
    archive_application(Client, Input, []).

-spec archive_application(aws_client:aws_client(), archive_application_request(), proplists:proplist()) ->
    {ok, application(), tuple()} |
    {error, any()} |
    {error, archive_application_errors(), tuple()}.
archive_application(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ArchiveApplication"],
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

%% @doc Archive wave.
-spec archive_wave(aws_client:aws_client(), archive_wave_request()) ->
    {ok, wave(), tuple()} |
    {error, any()} |
    {error, archive_wave_errors(), tuple()}.
archive_wave(Client, Input) ->
    archive_wave(Client, Input, []).

-spec archive_wave(aws_client:aws_client(), archive_wave_request(), proplists:proplist()) ->
    {ok, wave(), tuple()} |
    {error, any()} |
    {error, archive_wave_errors(), tuple()}.
archive_wave(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ArchiveWave"],
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

%% @doc Associate applications to wave.
-spec associate_applications(aws_client:aws_client(), associate_applications_request()) ->
    {ok, associate_applications_response(), tuple()} |
    {error, any()} |
    {error, associate_applications_errors(), tuple()}.
associate_applications(Client, Input) ->
    associate_applications(Client, Input, []).

-spec associate_applications(aws_client:aws_client(), associate_applications_request(), proplists:proplist()) ->
    {ok, associate_applications_response(), tuple()} |
    {error, any()} |
    {error, associate_applications_errors(), tuple()}.
associate_applications(Client, Input0, Options0) ->
    Method = post,
    Path = ["/AssociateApplications"],
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

%% @doc Associate source servers to application.
-spec associate_source_servers(aws_client:aws_client(), associate_source_servers_request()) ->
    {ok, associate_source_servers_response(), tuple()} |
    {error, any()} |
    {error, associate_source_servers_errors(), tuple()}.
associate_source_servers(Client, Input) ->
    associate_source_servers(Client, Input, []).

-spec associate_source_servers(aws_client:aws_client(), associate_source_servers_request(), proplists:proplist()) ->
    {ok, associate_source_servers_response(), tuple()} |
    {error, any()} |
    {error, associate_source_servers_errors(), tuple()}.
associate_source_servers(Client, Input0, Options0) ->
    Method = post,
    Path = ["/AssociateSourceServers"],
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

%% @doc Allows the user to set the SourceServer.LifeCycle.state property for
%% specific Source Server IDs to one of the following: READY_FOR_TEST or
%% READY_FOR_CUTOVER.
%%
%% This command only works if the Source Server is already launchable
%% (dataReplicationInfo.lagDuration is not null.)
-spec change_server_life_cycle_state(aws_client:aws_client(), change_server_life_cycle_state_request()) ->
    {ok, source_server(), tuple()} |
    {error, any()} |
    {error, change_server_life_cycle_state_errors(), tuple()}.
change_server_life_cycle_state(Client, Input) ->
    change_server_life_cycle_state(Client, Input, []).

-spec change_server_life_cycle_state(aws_client:aws_client(), change_server_life_cycle_state_request(), proplists:proplist()) ->
    {ok, source_server(), tuple()} |
    {error, any()} |
    {error, change_server_life_cycle_state_errors(), tuple()}.
change_server_life_cycle_state(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ChangeServerLifeCycleState"],
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

%% @doc Create application.
-spec create_application(aws_client:aws_client(), create_application_request()) ->
    {ok, application(), tuple()} |
    {error, any()} |
    {error, create_application_errors(), tuple()}.
create_application(Client, Input) ->
    create_application(Client, Input, []).

-spec create_application(aws_client:aws_client(), create_application_request(), proplists:proplist()) ->
    {ok, application(), tuple()} |
    {error, any()} |
    {error, create_application_errors(), tuple()}.
create_application(Client, Input0, Options0) ->
    Method = post,
    Path = ["/CreateApplication"],
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

%% @doc Create Connector.
-spec create_connector(aws_client:aws_client(), create_connector_request()) ->
    {ok, connector(), tuple()} |
    {error, any()} |
    {error, create_connector_errors(), tuple()}.
create_connector(Client, Input) ->
    create_connector(Client, Input, []).

-spec create_connector(aws_client:aws_client(), create_connector_request(), proplists:proplist()) ->
    {ok, connector(), tuple()} |
    {error, any()} |
    {error, create_connector_errors(), tuple()}.
create_connector(Client, Input0, Options0) ->
    Method = post,
    Path = ["/CreateConnector"],
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
    {ok, launch_configuration_template(), tuple()} |
    {error, any()} |
    {error, create_launch_configuration_template_errors(), tuple()}.
create_launch_configuration_template(Client, Input) ->
    create_launch_configuration_template(Client, Input, []).

-spec create_launch_configuration_template(aws_client:aws_client(), create_launch_configuration_template_request(), proplists:proplist()) ->
    {ok, launch_configuration_template(), tuple()} |
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

%% @doc Create wave.
-spec create_wave(aws_client:aws_client(), create_wave_request()) ->
    {ok, wave(), tuple()} |
    {error, any()} |
    {error, create_wave_errors(), tuple()}.
create_wave(Client, Input) ->
    create_wave(Client, Input, []).

-spec create_wave(aws_client:aws_client(), create_wave_request(), proplists:proplist()) ->
    {ok, wave(), tuple()} |
    {error, any()} |
    {error, create_wave_errors(), tuple()}.
create_wave(Client, Input0, Options0) ->
    Method = post,
    Path = ["/CreateWave"],
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

%% @doc Delete application.
-spec delete_application(aws_client:aws_client(), delete_application_request()) ->
    {ok, delete_application_response(), tuple()} |
    {error, any()} |
    {error, delete_application_errors(), tuple()}.
delete_application(Client, Input) ->
    delete_application(Client, Input, []).

-spec delete_application(aws_client:aws_client(), delete_application_request(), proplists:proplist()) ->
    {ok, delete_application_response(), tuple()} |
    {error, any()} |
    {error, delete_application_errors(), tuple()}.
delete_application(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DeleteApplication"],
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

%% @doc Delete Connector.
-spec delete_connector(aws_client:aws_client(), delete_connector_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_connector_errors(), tuple()}.
delete_connector(Client, Input) ->
    delete_connector(Client, Input, []).

-spec delete_connector(aws_client:aws_client(), delete_connector_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_connector_errors(), tuple()}.
delete_connector(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DeleteConnector"],
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

%% @doc Deletes a single source server by ID.
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

%% @doc Deletes a given vCenter client by ID.
-spec delete_vcenter_client(aws_client:aws_client(), delete_vcenter_client_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_vcenter_client_errors(), tuple()}.
delete_vcenter_client(Client, Input) ->
    delete_vcenter_client(Client, Input, []).

-spec delete_vcenter_client(aws_client:aws_client(), delete_vcenter_client_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_vcenter_client_errors(), tuple()}.
delete_vcenter_client(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DeleteVcenterClient"],
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

%% @doc Delete wave.
-spec delete_wave(aws_client:aws_client(), delete_wave_request()) ->
    {ok, delete_wave_response(), tuple()} |
    {error, any()} |
    {error, delete_wave_errors(), tuple()}.
delete_wave(Client, Input) ->
    delete_wave(Client, Input, []).

-spec delete_wave(aws_client:aws_client(), delete_wave_request(), proplists:proplist()) ->
    {ok, delete_wave_response(), tuple()} |
    {error, any()} |
    {error, delete_wave_errors(), tuple()}.
delete_wave(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DeleteWave"],
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

%% @doc Retrieves detailed job log items with paging.
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
%% Use the JobsID and fromDate and toData filters to limit which jobs are
%% returned. The response is sorted by creationDataTime - latest date first.
%% Jobs are normally created by the StartTest, StartCutover, and
%% TerminateTargetInstances APIs. Jobs are also created by DiagnosticLaunch
%% and TerminateDiagnosticInstances, which are APIs available only to
%% *Support* and only used in response to relevant support tickets.
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

%% @doc Retrieves all SourceServers or multiple SourceServers by ID.
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

%% @doc Returns a list of the installed vCenter clients.
-spec describe_vcenter_clients(aws_client:aws_client()) ->
    {ok, describe_vcenter_clients_response(), tuple()} |
    {error, any()} |
    {error, describe_vcenter_clients_errors(), tuple()}.
describe_vcenter_clients(Client)
  when is_map(Client) ->
    describe_vcenter_clients(Client, #{}, #{}).

-spec describe_vcenter_clients(aws_client:aws_client(), map(), map()) ->
    {ok, describe_vcenter_clients_response(), tuple()} |
    {error, any()} |
    {error, describe_vcenter_clients_errors(), tuple()}.
describe_vcenter_clients(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_vcenter_clients(Client, QueryMap, HeadersMap, []).

-spec describe_vcenter_clients(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, describe_vcenter_clients_response(), tuple()} |
    {error, any()} |
    {error, describe_vcenter_clients_errors(), tuple()}.
describe_vcenter_clients(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/DescribeVcenterClients"],
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

%% @doc Disassociate applications from wave.
-spec disassociate_applications(aws_client:aws_client(), disassociate_applications_request()) ->
    {ok, disassociate_applications_response(), tuple()} |
    {error, any()} |
    {error, disassociate_applications_errors(), tuple()}.
disassociate_applications(Client, Input) ->
    disassociate_applications(Client, Input, []).

-spec disassociate_applications(aws_client:aws_client(), disassociate_applications_request(), proplists:proplist()) ->
    {ok, disassociate_applications_response(), tuple()} |
    {error, any()} |
    {error, disassociate_applications_errors(), tuple()}.
disassociate_applications(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DisassociateApplications"],
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

%% @doc Disassociate source servers from application.
-spec disassociate_source_servers(aws_client:aws_client(), disassociate_source_servers_request()) ->
    {ok, disassociate_source_servers_response(), tuple()} |
    {error, any()} |
    {error, disassociate_source_servers_errors(), tuple()}.
disassociate_source_servers(Client, Input) ->
    disassociate_source_servers(Client, Input, []).

-spec disassociate_source_servers(aws_client:aws_client(), disassociate_source_servers_request(), proplists:proplist()) ->
    {ok, disassociate_source_servers_response(), tuple()} |
    {error, any()} |
    {error, disassociate_source_servers_errors(), tuple()}.
disassociate_source_servers(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DisassociateSourceServers"],
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

%% @doc Disconnects specific Source Servers from Application Migration
%% Service.
%%
%% Data replication is stopped immediately. All AWS resources created by
%% Application Migration Service for enabling the replication of these source
%% servers will be terminated / deleted within 90 minutes. Launched Test or
%% Cutover instances will NOT be terminated. If the agent on the source
%% server has not been prevented from communicating with the Application
%% Migration Service service, then it will receive a command to uninstall
%% itself (within approximately 10 minutes). The following properties of the
%% SourceServer will be changed immediately:
%% dataReplicationInfo.dataReplicationState will be set to DISCONNECTED; The
%% totalStorageBytes property for each of dataReplicationInfo.replicatedDisks
%% will be set to zero; dataReplicationInfo.lagDuration and
%% dataReplicationInfo.lagDuration will be nullified.
-spec disconnect_from_service(aws_client:aws_client(), disconnect_from_service_request()) ->
    {ok, source_server(), tuple()} |
    {error, any()} |
    {error, disconnect_from_service_errors(), tuple()}.
disconnect_from_service(Client, Input) ->
    disconnect_from_service(Client, Input, []).

-spec disconnect_from_service(aws_client:aws_client(), disconnect_from_service_request(), proplists:proplist()) ->
    {ok, source_server(), tuple()} |
    {error, any()} |
    {error, disconnect_from_service_errors(), tuple()}.
disconnect_from_service(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DisconnectFromService"],
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

%% @doc Finalizes the cutover immediately for specific Source Servers.
%%
%% All AWS resources created by Application Migration Service for enabling
%% the replication of these source servers will be terminated / deleted
%% within 90 minutes. Launched Test or Cutover instances will NOT be
%% terminated. The AWS Replication Agent will receive a command to uninstall
%% itself (within 10 minutes). The following properties of the SourceServer
%% will be changed immediately: dataReplicationInfo.dataReplicationState will
%% be changed to DISCONNECTED; The SourceServer.lifeCycle.state will be
%% changed to CUTOVER; The totalStorageBytes property fo each of
%% dataReplicationInfo.replicatedDisks will be set to zero;
%% dataReplicationInfo.lagDuration and dataReplicationInfo.lagDuration will
%% be nullified.
-spec finalize_cutover(aws_client:aws_client(), finalize_cutover_request()) ->
    {ok, source_server(), tuple()} |
    {error, any()} |
    {error, finalize_cutover_errors(), tuple()}.
finalize_cutover(Client, Input) ->
    finalize_cutover(Client, Input, []).

-spec finalize_cutover(aws_client:aws_client(), finalize_cutover_request(), proplists:proplist()) ->
    {ok, source_server(), tuple()} |
    {error, any()} |
    {error, finalize_cutover_errors(), tuple()}.
finalize_cutover(Client, Input0, Options0) ->
    Method = post,
    Path = ["/FinalizeCutover"],
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

%% @doc Lists all LaunchConfigurations available, filtered by Source Server
%% IDs.
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

%% @doc Lists all ReplicationConfigurations, filtered by Source Server ID.
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

%% @doc Initialize Application Migration Service.
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

%% @doc Retrieves all applications or multiple applications by ID.
-spec list_applications(aws_client:aws_client(), list_applications_request()) ->
    {ok, list_applications_response(), tuple()} |
    {error, any()} |
    {error, list_applications_errors(), tuple()}.
list_applications(Client, Input) ->
    list_applications(Client, Input, []).

-spec list_applications(aws_client:aws_client(), list_applications_request(), proplists:proplist()) ->
    {ok, list_applications_response(), tuple()} |
    {error, any()} |
    {error, list_applications_errors(), tuple()}.
list_applications(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListApplications"],
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

%% @doc List Connectors.
-spec list_connectors(aws_client:aws_client(), list_connectors_request()) ->
    {ok, list_connectors_response(), tuple()} |
    {error, any()} |
    {error, list_connectors_errors(), tuple()}.
list_connectors(Client, Input) ->
    list_connectors(Client, Input, []).

-spec list_connectors(aws_client:aws_client(), list_connectors_request(), proplists:proplist()) ->
    {ok, list_connectors_response(), tuple()} |
    {error, any()} |
    {error, list_connectors_errors(), tuple()}.
list_connectors(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListConnectors"],
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

%% @doc List export errors.
-spec list_export_errors(aws_client:aws_client(), list_export_errors_request()) ->
    {ok, list_export_errors_response(), tuple()} |
    {error, any()} |
    {error, list_export_errors_errors(), tuple()}.
list_export_errors(Client, Input) ->
    list_export_errors(Client, Input, []).

-spec list_export_errors(aws_client:aws_client(), list_export_errors_request(), proplists:proplist()) ->
    {ok, list_export_errors_response(), tuple()} |
    {error, any()} |
    {error, list_export_errors_errors(), tuple()}.
list_export_errors(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListExportErrors"],
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

%% @doc List exports.
-spec list_exports(aws_client:aws_client(), list_exports_request()) ->
    {ok, list_exports_response(), tuple()} |
    {error, any()} |
    {error, list_exports_errors(), tuple()}.
list_exports(Client, Input) ->
    list_exports(Client, Input, []).

-spec list_exports(aws_client:aws_client(), list_exports_request(), proplists:proplist()) ->
    {ok, list_exports_response(), tuple()} |
    {error, any()} |
    {error, list_exports_errors(), tuple()}.
list_exports(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListExports"],
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

%% @doc List import errors.
-spec list_import_errors(aws_client:aws_client(), list_import_errors_request()) ->
    {ok, list_import_errors_response(), tuple()} |
    {error, any()} |
    {error, list_import_errors_errors(), tuple()}.
list_import_errors(Client, Input) ->
    list_import_errors(Client, Input, []).

-spec list_import_errors(aws_client:aws_client(), list_import_errors_request(), proplists:proplist()) ->
    {ok, list_import_errors_response(), tuple()} |
    {error, any()} |
    {error, list_import_errors_errors(), tuple()}.
list_import_errors(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListImportErrors"],
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

%% @doc List imports.
-spec list_imports(aws_client:aws_client(), list_imports_request()) ->
    {ok, list_imports_response(), tuple()} |
    {error, any()} |
    {error, list_imports_errors(), tuple()}.
list_imports(Client, Input) ->
    list_imports(Client, Input, []).

-spec list_imports(aws_client:aws_client(), list_imports_request(), proplists:proplist()) ->
    {ok, list_imports_response(), tuple()} |
    {error, any()} |
    {error, list_imports_errors(), tuple()}.
list_imports(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListImports"],
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

%% @doc List Managed Accounts.
-spec list_managed_accounts(aws_client:aws_client(), list_managed_accounts_request()) ->
    {ok, list_managed_accounts_response(), tuple()} |
    {error, any()} |
    {error, list_managed_accounts_errors(), tuple()}.
list_managed_accounts(Client, Input) ->
    list_managed_accounts(Client, Input, []).

-spec list_managed_accounts(aws_client:aws_client(), list_managed_accounts_request(), proplists:proplist()) ->
    {ok, list_managed_accounts_response(), tuple()} |
    {error, any()} |
    {error, list_managed_accounts_errors(), tuple()}.
list_managed_accounts(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListManagedAccounts"],
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

%% @doc List source server post migration custom actions.
-spec list_source_server_actions(aws_client:aws_client(), list_source_server_actions_request()) ->
    {ok, list_source_server_actions_response(), tuple()} |
    {error, any()} |
    {error, list_source_server_actions_errors(), tuple()}.
list_source_server_actions(Client, Input) ->
    list_source_server_actions(Client, Input, []).

-spec list_source_server_actions(aws_client:aws_client(), list_source_server_actions_request(), proplists:proplist()) ->
    {ok, list_source_server_actions_response(), tuple()} |
    {error, any()} |
    {error, list_source_server_actions_errors(), tuple()}.
list_source_server_actions(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListSourceServerActions"],
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

%% @doc List all tags for your Application Migration Service resources.
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

%% @doc List template post migration custom actions.
-spec list_template_actions(aws_client:aws_client(), list_template_actions_request()) ->
    {ok, list_template_actions_response(), tuple()} |
    {error, any()} |
    {error, list_template_actions_errors(), tuple()}.
list_template_actions(Client, Input) ->
    list_template_actions(Client, Input, []).

-spec list_template_actions(aws_client:aws_client(), list_template_actions_request(), proplists:proplist()) ->
    {ok, list_template_actions_response(), tuple()} |
    {error, any()} |
    {error, list_template_actions_errors(), tuple()}.
list_template_actions(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListTemplateActions"],
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

%% @doc Retrieves all waves or multiple waves by ID.
-spec list_waves(aws_client:aws_client(), list_waves_request()) ->
    {ok, list_waves_response(), tuple()} |
    {error, any()} |
    {error, list_waves_errors(), tuple()}.
list_waves(Client, Input) ->
    list_waves(Client, Input, []).

-spec list_waves(aws_client:aws_client(), list_waves_request(), proplists:proplist()) ->
    {ok, list_waves_response(), tuple()} |
    {error, any()} |
    {error, list_waves_errors(), tuple()}.
list_waves(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListWaves"],
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

%% @doc Archives specific Source Servers by setting the
%% SourceServer.isArchived property to true for specified SourceServers by
%% ID.
%%
%% This command only works for SourceServers with a lifecycle. state which
%% equals DISCONNECTED or CUTOVER.
-spec mark_as_archived(aws_client:aws_client(), mark_as_archived_request()) ->
    {ok, source_server(), tuple()} |
    {error, any()} |
    {error, mark_as_archived_errors(), tuple()}.
mark_as_archived(Client, Input) ->
    mark_as_archived(Client, Input, []).

-spec mark_as_archived(aws_client:aws_client(), mark_as_archived_request(), proplists:proplist()) ->
    {ok, source_server(), tuple()} |
    {error, any()} |
    {error, mark_as_archived_errors(), tuple()}.
mark_as_archived(Client, Input0, Options0) ->
    Method = post,
    Path = ["/MarkAsArchived"],
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

%% @doc Pause Replication.
-spec pause_replication(aws_client:aws_client(), pause_replication_request()) ->
    {ok, source_server(), tuple()} |
    {error, any()} |
    {error, pause_replication_errors(), tuple()}.
pause_replication(Client, Input) ->
    pause_replication(Client, Input, []).

-spec pause_replication(aws_client:aws_client(), pause_replication_request(), proplists:proplist()) ->
    {ok, source_server(), tuple()} |
    {error, any()} |
    {error, pause_replication_errors(), tuple()}.
pause_replication(Client, Input0, Options0) ->
    Method = post,
    Path = ["/PauseReplication"],
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

%% @doc Put source server post migration custom action.
-spec put_source_server_action(aws_client:aws_client(), put_source_server_action_request()) ->
    {ok, source_server_action_document(), tuple()} |
    {error, any()} |
    {error, put_source_server_action_errors(), tuple()}.
put_source_server_action(Client, Input) ->
    put_source_server_action(Client, Input, []).

-spec put_source_server_action(aws_client:aws_client(), put_source_server_action_request(), proplists:proplist()) ->
    {ok, source_server_action_document(), tuple()} |
    {error, any()} |
    {error, put_source_server_action_errors(), tuple()}.
put_source_server_action(Client, Input0, Options0) ->
    Method = post,
    Path = ["/PutSourceServerAction"],
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

%% @doc Put template post migration custom action.
-spec put_template_action(aws_client:aws_client(), put_template_action_request()) ->
    {ok, template_action_document(), tuple()} |
    {error, any()} |
    {error, put_template_action_errors(), tuple()}.
put_template_action(Client, Input) ->
    put_template_action(Client, Input, []).

-spec put_template_action(aws_client:aws_client(), put_template_action_request(), proplists:proplist()) ->
    {ok, template_action_document(), tuple()} |
    {error, any()} |
    {error, put_template_action_errors(), tuple()}.
put_template_action(Client, Input0, Options0) ->
    Method = post,
    Path = ["/PutTemplateAction"],
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

%% @doc Remove source server post migration custom action.
-spec remove_source_server_action(aws_client:aws_client(), remove_source_server_action_request()) ->
    {ok, remove_source_server_action_response(), tuple()} |
    {error, any()} |
    {error, remove_source_server_action_errors(), tuple()}.
remove_source_server_action(Client, Input) ->
    remove_source_server_action(Client, Input, []).

-spec remove_source_server_action(aws_client:aws_client(), remove_source_server_action_request(), proplists:proplist()) ->
    {ok, remove_source_server_action_response(), tuple()} |
    {error, any()} |
    {error, remove_source_server_action_errors(), tuple()}.
remove_source_server_action(Client, Input0, Options0) ->
    Method = post,
    Path = ["/RemoveSourceServerAction"],
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

%% @doc Remove template post migration custom action.
-spec remove_template_action(aws_client:aws_client(), remove_template_action_request()) ->
    {ok, remove_template_action_response(), tuple()} |
    {error, any()} |
    {error, remove_template_action_errors(), tuple()}.
remove_template_action(Client, Input) ->
    remove_template_action(Client, Input, []).

-spec remove_template_action(aws_client:aws_client(), remove_template_action_request(), proplists:proplist()) ->
    {ok, remove_template_action_response(), tuple()} |
    {error, any()} |
    {error, remove_template_action_errors(), tuple()}.
remove_template_action(Client, Input0, Options0) ->
    Method = post,
    Path = ["/RemoveTemplateAction"],
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

%% @doc Resume Replication.
-spec resume_replication(aws_client:aws_client(), resume_replication_request()) ->
    {ok, source_server(), tuple()} |
    {error, any()} |
    {error, resume_replication_errors(), tuple()}.
resume_replication(Client, Input) ->
    resume_replication(Client, Input, []).

-spec resume_replication(aws_client:aws_client(), resume_replication_request(), proplists:proplist()) ->
    {ok, source_server(), tuple()} |
    {error, any()} |
    {error, resume_replication_errors(), tuple()}.
resume_replication(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ResumeReplication"],
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

%% @doc Causes the data replication initiation sequence to begin immediately
%% upon next Handshake for specified SourceServer IDs, regardless of when the
%% previous initiation started.
%%
%% This command will not work if the SourceServer is not stalled or is in a
%% DISCONNECTED or STOPPED state.
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

%% @doc Launches a Cutover Instance for specific Source Servers.
%%
%% This command starts a LAUNCH job whose initiatedBy property is
%% StartCutover and changes the SourceServer.lifeCycle.state property to
%% CUTTING_OVER.
-spec start_cutover(aws_client:aws_client(), start_cutover_request()) ->
    {ok, start_cutover_response(), tuple()} |
    {error, any()} |
    {error, start_cutover_errors(), tuple()}.
start_cutover(Client, Input) ->
    start_cutover(Client, Input, []).

-spec start_cutover(aws_client:aws_client(), start_cutover_request(), proplists:proplist()) ->
    {ok, start_cutover_response(), tuple()} |
    {error, any()} |
    {error, start_cutover_errors(), tuple()}.
start_cutover(Client, Input0, Options0) ->
    Method = post,
    Path = ["/StartCutover"],
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

%% @doc Start export.
-spec start_export(aws_client:aws_client(), start_export_request()) ->
    {ok, start_export_response(), tuple()} |
    {error, any()} |
    {error, start_export_errors(), tuple()}.
start_export(Client, Input) ->
    start_export(Client, Input, []).

-spec start_export(aws_client:aws_client(), start_export_request(), proplists:proplist()) ->
    {ok, start_export_response(), tuple()} |
    {error, any()} |
    {error, start_export_errors(), tuple()}.
start_export(Client, Input0, Options0) ->
    Method = post,
    Path = ["/StartExport"],
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

%% @doc Start import.
-spec start_import(aws_client:aws_client(), start_import_request()) ->
    {ok, start_import_response(), tuple()} |
    {error, any()} |
    {error, start_import_errors(), tuple()}.
start_import(Client, Input) ->
    start_import(Client, Input, []).

-spec start_import(aws_client:aws_client(), start_import_request(), proplists:proplist()) ->
    {ok, start_import_response(), tuple()} |
    {error, any()} |
    {error, start_import_errors(), tuple()}.
start_import(Client, Input0, Options0) ->
    Method = post,
    Path = ["/StartImport"],
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

%% @doc Starts replication for SNAPSHOT_SHIPPING agents.
-spec start_replication(aws_client:aws_client(), start_replication_request()) ->
    {ok, source_server(), tuple()} |
    {error, any()} |
    {error, start_replication_errors(), tuple()}.
start_replication(Client, Input) ->
    start_replication(Client, Input, []).

-spec start_replication(aws_client:aws_client(), start_replication_request(), proplists:proplist()) ->
    {ok, source_server(), tuple()} |
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

%% @doc Launches a Test Instance for specific Source Servers.
%%
%% This command starts a LAUNCH job whose initiatedBy property is StartTest
%% and changes the SourceServer.lifeCycle.state property to TESTING.
-spec start_test(aws_client:aws_client(), start_test_request()) ->
    {ok, start_test_response(), tuple()} |
    {error, any()} |
    {error, start_test_errors(), tuple()}.
start_test(Client, Input) ->
    start_test(Client, Input, []).

-spec start_test(aws_client:aws_client(), start_test_request(), proplists:proplist()) ->
    {ok, start_test_response(), tuple()} |
    {error, any()} |
    {error, start_test_errors(), tuple()}.
start_test(Client, Input0, Options0) ->
    Method = post,
    Path = ["/StartTest"],
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

%% @doc Stop Replication.
-spec stop_replication(aws_client:aws_client(), stop_replication_request()) ->
    {ok, source_server(), tuple()} |
    {error, any()} |
    {error, stop_replication_errors(), tuple()}.
stop_replication(Client, Input) ->
    stop_replication(Client, Input, []).

-spec stop_replication(aws_client:aws_client(), stop_replication_request(), proplists:proplist()) ->
    {ok, source_server(), tuple()} |
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

%% @doc Adds or overwrites only the specified tags for the specified
%% Application Migration Service resource or resources.
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

%% @doc Starts a job that terminates specific launched EC2 Test and Cutover
%% instances.
%%
%% This command will not work for any Source Server with a lifecycle.state of
%% TESTING, CUTTING_OVER, or CUTOVER.
-spec terminate_target_instances(aws_client:aws_client(), terminate_target_instances_request()) ->
    {ok, terminate_target_instances_response(), tuple()} |
    {error, any()} |
    {error, terminate_target_instances_errors(), tuple()}.
terminate_target_instances(Client, Input) ->
    terminate_target_instances(Client, Input, []).

-spec terminate_target_instances(aws_client:aws_client(), terminate_target_instances_request(), proplists:proplist()) ->
    {ok, terminate_target_instances_response(), tuple()} |
    {error, any()} |
    {error, terminate_target_instances_errors(), tuple()}.
terminate_target_instances(Client, Input0, Options0) ->
    Method = post,
    Path = ["/TerminateTargetInstances"],
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

%% @doc Unarchive application.
-spec unarchive_application(aws_client:aws_client(), unarchive_application_request()) ->
    {ok, application(), tuple()} |
    {error, any()} |
    {error, unarchive_application_errors(), tuple()}.
unarchive_application(Client, Input) ->
    unarchive_application(Client, Input, []).

-spec unarchive_application(aws_client:aws_client(), unarchive_application_request(), proplists:proplist()) ->
    {ok, application(), tuple()} |
    {error, any()} |
    {error, unarchive_application_errors(), tuple()}.
unarchive_application(Client, Input0, Options0) ->
    Method = post,
    Path = ["/UnarchiveApplication"],
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

%% @doc Unarchive wave.
-spec unarchive_wave(aws_client:aws_client(), unarchive_wave_request()) ->
    {ok, wave(), tuple()} |
    {error, any()} |
    {error, unarchive_wave_errors(), tuple()}.
unarchive_wave(Client, Input) ->
    unarchive_wave(Client, Input, []).

-spec unarchive_wave(aws_client:aws_client(), unarchive_wave_request(), proplists:proplist()) ->
    {ok, wave(), tuple()} |
    {error, any()} |
    {error, unarchive_wave_errors(), tuple()}.
unarchive_wave(Client, Input0, Options0) ->
    Method = post,
    Path = ["/UnarchiveWave"],
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

%% @doc Deletes the specified set of tags from the specified set of
%% Application Migration Service resources.
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

%% @doc Update application.
-spec update_application(aws_client:aws_client(), update_application_request()) ->
    {ok, application(), tuple()} |
    {error, any()} |
    {error, update_application_errors(), tuple()}.
update_application(Client, Input) ->
    update_application(Client, Input, []).

-spec update_application(aws_client:aws_client(), update_application_request(), proplists:proplist()) ->
    {ok, application(), tuple()} |
    {error, any()} |
    {error, update_application_errors(), tuple()}.
update_application(Client, Input0, Options0) ->
    Method = post,
    Path = ["/UpdateApplication"],
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

%% @doc Update Connector.
-spec update_connector(aws_client:aws_client(), update_connector_request()) ->
    {ok, connector(), tuple()} |
    {error, any()} |
    {error, update_connector_errors(), tuple()}.
update_connector(Client, Input) ->
    update_connector(Client, Input, []).

-spec update_connector(aws_client:aws_client(), update_connector_request(), proplists:proplist()) ->
    {ok, connector(), tuple()} |
    {error, any()} |
    {error, update_connector_errors(), tuple()}.
update_connector(Client, Input0, Options0) ->
    Method = post,
    Path = ["/UpdateConnector"],
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

%% @doc Updates multiple LaunchConfigurations by Source Server ID.
%%
%% bootMode valid values are `LEGACY_BIOS | UEFI'
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
    {ok, launch_configuration_template(), tuple()} |
    {error, any()} |
    {error, update_launch_configuration_template_errors(), tuple()}.
update_launch_configuration_template(Client, Input) ->
    update_launch_configuration_template(Client, Input, []).

-spec update_launch_configuration_template(aws_client:aws_client(), update_launch_configuration_template_request(), proplists:proplist()) ->
    {ok, launch_configuration_template(), tuple()} |
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

%% @doc Allows you to update multiple ReplicationConfigurations by Source
%% Server ID.
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

%% @doc Updates multiple ReplicationConfigurationTemplates by ID.
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

%% @doc Update Source Server.
-spec update_source_server(aws_client:aws_client(), update_source_server_request()) ->
    {ok, source_server(), tuple()} |
    {error, any()} |
    {error, update_source_server_errors(), tuple()}.
update_source_server(Client, Input) ->
    update_source_server(Client, Input, []).

-spec update_source_server(aws_client:aws_client(), update_source_server_request(), proplists:proplist()) ->
    {ok, source_server(), tuple()} |
    {error, any()} |
    {error, update_source_server_errors(), tuple()}.
update_source_server(Client, Input0, Options0) ->
    Method = post,
    Path = ["/UpdateSourceServer"],
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

%% @doc Allows you to change between the AGENT_BASED replication type and the
%% SNAPSHOT_SHIPPING replication type.
-spec update_source_server_replication_type(aws_client:aws_client(), update_source_server_replication_type_request()) ->
    {ok, source_server(), tuple()} |
    {error, any()} |
    {error, update_source_server_replication_type_errors(), tuple()}.
update_source_server_replication_type(Client, Input) ->
    update_source_server_replication_type(Client, Input, []).

-spec update_source_server_replication_type(aws_client:aws_client(), update_source_server_replication_type_request(), proplists:proplist()) ->
    {ok, source_server(), tuple()} |
    {error, any()} |
    {error, update_source_server_replication_type_errors(), tuple()}.
update_source_server_replication_type(Client, Input0, Options0) ->
    Method = post,
    Path = ["/UpdateSourceServerReplicationType"],
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

%% @doc Update wave.
-spec update_wave(aws_client:aws_client(), update_wave_request()) ->
    {ok, wave(), tuple()} |
    {error, any()} |
    {error, update_wave_errors(), tuple()}.
update_wave(Client, Input) ->
    update_wave(Client, Input, []).

-spec update_wave(aws_client:aws_client(), update_wave_request(), proplists:proplist()) ->
    {ok, wave(), tuple()} |
    {error, any()} |
    {error, update_wave_errors(), tuple()}.
update_wave(Client, Input0, Options0) ->
    Method = post,
    Path = ["/UpdateWave"],
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
    Client1 = Client#{service => <<"mgn">>},
    Host = build_host(<<"mgn">>, Client1),
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
