%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc OpsWorks
%%
%% Welcome to the OpsWorks Stacks API Reference.
%%
%% This guide provides descriptions, syntax,
%% and
%% usage examples for OpsWorks Stacks actions and data types, including
%% common parameters and error
%% codes.
%%
%% OpsWorks Stacks is an application management service that provides an
%% integrated experience for
%% managing the complete application lifecycle. For information about
%% OpsWorks, see the
%% OpsWorks: http://aws.amazon.com/opsworks/ information page.
%%
%% SDKs and CLI
%%
%% Use the OpsWorks Stacks API by using the Command Line Interface (CLI) or
%% by using one of the
%% Amazon Web Services SDKs to implement applications in your preferred
%% language. For more information, see:
%%
%% CLI:
%% https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-welcome.html
%%
%% SDK for Java:
%% https://docs.aws.amazon.com/AWSJavaSDK/latest/javadoc/com/amazonaws/services/opsworks/AWSOpsWorksClient.html
%%
%% SDK for .NET:
%% https://docs.aws.amazon.com/sdkfornet/v3/apidocs/items/OpsWorks/NOpsWorks.html
%%
%% SDK for PHP:
%% https://docs.aws.amazon.com/aws-sdk-php/v3/api/class-Aws.OpsWorks.OpsWorksClient.html
%%
%% SDK for Ruby: http://docs.aws.amazon.com/sdkforruby/api/
%%
%% Amazon Web Services SDK for Node.js:
%% http://aws.amazon.com/documentation/sdkforjavascript/
%%
%% SDK for Python (Boto):
%% http://docs.pythonboto.org/en/latest/ref/opsworks.html
%%
%% Endpoints
%%
%% OpsWorks Stacks supports the following endpoints, all HTTPS. You must
%% connect to one of the following endpoints.
%% Stacks can only be accessed or managed within the endpoint in which they
%% are created.
%%
%% opsworks.us-east-1.amazonaws.com
%%
%% opsworks.us-east-2.amazonaws.com
%%
%% opsworks.us-west-1.amazonaws.com
%%
%% opsworks.us-west-2.amazonaws.com
%%
%% opsworks.ca-central-1.amazonaws.com (API only; not available in the Amazon
%% Web Services Management Console)
%%
%% opsworks.eu-west-1.amazonaws.com
%%
%% opsworks.eu-west-2.amazonaws.com
%%
%% opsworks.eu-west-3.amazonaws.com
%%
%% opsworks.eu-central-1.amazonaws.com
%%
%% opsworks.ap-northeast-1.amazonaws.com
%%
%% opsworks.ap-northeast-2.amazonaws.com
%%
%% opsworks.ap-south-1.amazonaws.com
%%
%% opsworks.ap-southeast-1.amazonaws.com
%%
%% opsworks.ap-southeast-2.amazonaws.com
%%
%% opsworks.sa-east-1.amazonaws.com
%%
%% Chef Versions
%%
%% When you call `CreateStack', `CloneStack', or `UpdateStack' we
%% recommend you
%% use the `ConfigurationManager' parameter to specify the Chef version.
%% The recommended and default value for Linux stacks is currently 12.
%% Windows stacks use Chef 12.2. For more information,
%% see Chef Versions:
%% https://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook-chef11.html.
%%
%% You can specify Chef 12, 11.10, or 11.4 for your Linux stack. We recommend
%% migrating your existing Linux stacks
%% to Chef 12 as soon as possible.
-module(aws_opsworks).

-export([assign_instance/2,
         assign_instance/3,
         assign_volume/2,
         assign_volume/3,
         associate_elastic_ip/2,
         associate_elastic_ip/3,
         attach_elastic_load_balancer/2,
         attach_elastic_load_balancer/3,
         clone_stack/2,
         clone_stack/3,
         create_app/2,
         create_app/3,
         create_deployment/2,
         create_deployment/3,
         create_instance/2,
         create_instance/3,
         create_layer/2,
         create_layer/3,
         create_stack/2,
         create_stack/3,
         create_user_profile/2,
         create_user_profile/3,
         delete_app/2,
         delete_app/3,
         delete_instance/2,
         delete_instance/3,
         delete_layer/2,
         delete_layer/3,
         delete_stack/2,
         delete_stack/3,
         delete_user_profile/2,
         delete_user_profile/3,
         deregister_ecs_cluster/2,
         deregister_ecs_cluster/3,
         deregister_elastic_ip/2,
         deregister_elastic_ip/3,
         deregister_instance/2,
         deregister_instance/3,
         deregister_rds_db_instance/2,
         deregister_rds_db_instance/3,
         deregister_volume/2,
         deregister_volume/3,
         describe_agent_versions/2,
         describe_agent_versions/3,
         describe_apps/2,
         describe_apps/3,
         describe_commands/2,
         describe_commands/3,
         describe_deployments/2,
         describe_deployments/3,
         describe_ecs_clusters/2,
         describe_ecs_clusters/3,
         describe_elastic_ips/2,
         describe_elastic_ips/3,
         describe_elastic_load_balancers/2,
         describe_elastic_load_balancers/3,
         describe_instances/2,
         describe_instances/3,
         describe_layers/2,
         describe_layers/3,
         describe_load_based_auto_scaling/2,
         describe_load_based_auto_scaling/3,
         describe_my_user_profile/2,
         describe_my_user_profile/3,
         describe_operating_systems/2,
         describe_operating_systems/3,
         describe_permissions/2,
         describe_permissions/3,
         describe_raid_arrays/2,
         describe_raid_arrays/3,
         describe_rds_db_instances/2,
         describe_rds_db_instances/3,
         describe_service_errors/2,
         describe_service_errors/3,
         describe_stack_provisioning_parameters/2,
         describe_stack_provisioning_parameters/3,
         describe_stack_summary/2,
         describe_stack_summary/3,
         describe_stacks/2,
         describe_stacks/3,
         describe_time_based_auto_scaling/2,
         describe_time_based_auto_scaling/3,
         describe_user_profiles/2,
         describe_user_profiles/3,
         describe_volumes/2,
         describe_volumes/3,
         detach_elastic_load_balancer/2,
         detach_elastic_load_balancer/3,
         disassociate_elastic_ip/2,
         disassociate_elastic_ip/3,
         get_hostname_suggestion/2,
         get_hostname_suggestion/3,
         grant_access/2,
         grant_access/3,
         list_tags/2,
         list_tags/3,
         reboot_instance/2,
         reboot_instance/3,
         register_ecs_cluster/2,
         register_ecs_cluster/3,
         register_elastic_ip/2,
         register_elastic_ip/3,
         register_instance/2,
         register_instance/3,
         register_rds_db_instance/2,
         register_rds_db_instance/3,
         register_volume/2,
         register_volume/3,
         set_load_based_auto_scaling/2,
         set_load_based_auto_scaling/3,
         set_permission/2,
         set_permission/3,
         set_time_based_auto_scaling/2,
         set_time_based_auto_scaling/3,
         start_instance/2,
         start_instance/3,
         start_stack/2,
         start_stack/3,
         stop_instance/2,
         stop_instance/3,
         stop_stack/2,
         stop_stack/3,
         tag_resource/2,
         tag_resource/3,
         unassign_instance/2,
         unassign_instance/3,
         unassign_volume/2,
         unassign_volume/3,
         untag_resource/2,
         untag_resource/3,
         update_app/2,
         update_app/3,
         update_elastic_ip/2,
         update_elastic_ip/3,
         update_instance/2,
         update_instance/3,
         update_layer/2,
         update_layer/3,
         update_my_user_profile/2,
         update_my_user_profile/3,
         update_rds_db_instance/2,
         update_rds_db_instance/3,
         update_stack/2,
         update_stack/3,
         update_user_profile/2,
         update_user_profile/3,
         update_volume/2,
         update_volume/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% describe_operating_systems_response() :: #{
%%   <<"OperatingSystems">> => list(operating_system())
%% }
-type describe_operating_systems_response() :: #{binary() => any()}.

%% Example:
%% app() :: #{
%%   <<"AppId">> => string(),
%%   <<"AppSource">> => source(),
%%   <<"Attributes">> => map(),
%%   <<"CreatedAt">> => string(),
%%   <<"DataSources">> => list(data_source()),
%%   <<"Description">> => string(),
%%   <<"Domains">> => list(string()),
%%   <<"EnableSsl">> => boolean(),
%%   <<"Environment">> => list(environment_variable()),
%%   <<"Name">> => string(),
%%   <<"Shortname">> => string(),
%%   <<"SslConfiguration">> => ssl_configuration(),
%%   <<"StackId">> => string(),
%%   <<"Type">> => list(any())
%% }
-type app() :: #{binary() => any()}.

%% Example:
%% user_profile() :: #{
%%   <<"AllowSelfManagement">> => boolean(),
%%   <<"IamUserArn">> => string(),
%%   <<"Name">> => string(),
%%   <<"SshPublicKey">> => string(),
%%   <<"SshUsername">> => string()
%% }
-type user_profile() :: #{binary() => any()}.

%% Example:
%% describe_apps_request() :: #{
%%   <<"AppIds">> => list(string()),
%%   <<"StackId">> => string()
%% }
-type describe_apps_request() :: #{binary() => any()}.

%% Example:
%% update_user_profile_request() :: #{
%%   <<"AllowSelfManagement">> => boolean(),
%%   <<"IamUserArn">> := string(),
%%   <<"SshPublicKey">> => string(),
%%   <<"SshUsername">> => string()
%% }
-type update_user_profile_request() :: #{binary() => any()}.

%% Example:
%% tag_resource_request() :: #{
%%   <<"ResourceArn">> := string(),
%%   <<"Tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% register_ecs_cluster_request() :: #{
%%   <<"EcsClusterArn">> := string(),
%%   <<"StackId">> := string()
%% }
-type register_ecs_cluster_request() :: #{binary() => any()}.

%% Example:
%% elastic_ip() :: #{
%%   <<"Domain">> => string(),
%%   <<"InstanceId">> => string(),
%%   <<"Ip">> => string(),
%%   <<"Name">> => string(),
%%   <<"Region">> => string()
%% }
-type elastic_ip() :: #{binary() => any()}.

%% Example:
%% create_app_request() :: #{
%%   <<"AppSource">> => source(),
%%   <<"Attributes">> => map(),
%%   <<"DataSources">> => list(data_source()),
%%   <<"Description">> => string(),
%%   <<"Domains">> => list(string()),
%%   <<"EnableSsl">> => boolean(),
%%   <<"Environment">> => list(environment_variable()),
%%   <<"Name">> := string(),
%%   <<"Shortname">> => string(),
%%   <<"SslConfiguration">> => ssl_configuration(),
%%   <<"StackId">> := string(),
%%   <<"Type">> := list(any())
%% }
-type create_app_request() :: #{binary() => any()}.

%% Example:
%% stop_stack_request() :: #{
%%   <<"StackId">> := string()
%% }
-type stop_stack_request() :: #{binary() => any()}.

%% Example:
%% describe_elastic_ips_result() :: #{
%%   <<"ElasticIps">> => list(elastic_ip())
%% }
-type describe_elastic_ips_result() :: #{binary() => any()}.

%% Example:
%% describe_rds_db_instances_request() :: #{
%%   <<"RdsDbInstanceArns">> => list(string()),
%%   <<"StackId">> := string()
%% }
-type describe_rds_db_instances_request() :: #{binary() => any()}.

%% Example:
%% deployment() :: #{
%%   <<"AppId">> => string(),
%%   <<"Command">> => deployment_command(),
%%   <<"Comment">> => string(),
%%   <<"CompletedAt">> => string(),
%%   <<"CreatedAt">> => string(),
%%   <<"CustomJson">> => string(),
%%   <<"DeploymentId">> => string(),
%%   <<"Duration">> => integer(),
%%   <<"IamUserArn">> => string(),
%%   <<"InstanceIds">> => list(string()),
%%   <<"StackId">> => string(),
%%   <<"Status">> => string()
%% }
-type deployment() :: #{binary() => any()}.

%% Example:
%% list_tags_result() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Tags">> => map()
%% }
-type list_tags_result() :: #{binary() => any()}.

%% Example:
%% deregister_ecs_cluster_request() :: #{
%%   <<"EcsClusterArn">> := string()
%% }
-type deregister_ecs_cluster_request() :: #{binary() => any()}.

%% Example:
%% block_device_mapping() :: #{
%%   <<"DeviceName">> => string(),
%%   <<"Ebs">> => ebs_block_device(),
%%   <<"NoDevice">> => string(),
%%   <<"VirtualName">> => string()
%% }
-type block_device_mapping() :: #{binary() => any()}.

%% Example:
%% create_stack_request() :: #{
%%   <<"AgentVersion">> => string(),
%%   <<"Attributes">> => map(),
%%   <<"ChefConfiguration">> => chef_configuration(),
%%   <<"ConfigurationManager">> => stack_configuration_manager(),
%%   <<"CustomCookbooksSource">> => source(),
%%   <<"CustomJson">> => string(),
%%   <<"DefaultAvailabilityZone">> => string(),
%%   <<"DefaultInstanceProfileArn">> := string(),
%%   <<"DefaultOs">> => string(),
%%   <<"DefaultRootDeviceType">> => list(any()),
%%   <<"DefaultSshKeyName">> => string(),
%%   <<"DefaultSubnetId">> => string(),
%%   <<"HostnameTheme">> => string(),
%%   <<"Name">> := string(),
%%   <<"Region">> := string(),
%%   <<"ServiceRoleArn">> := string(),
%%   <<"UseCustomCookbooks">> => boolean(),
%%   <<"UseOpsworksSecurityGroups">> => boolean(),
%%   <<"VpcId">> => string()
%% }
-type create_stack_request() :: #{binary() => any()}.

%% Example:
%% update_stack_request() :: #{
%%   <<"AgentVersion">> => string(),
%%   <<"Attributes">> => map(),
%%   <<"ChefConfiguration">> => chef_configuration(),
%%   <<"ConfigurationManager">> => stack_configuration_manager(),
%%   <<"CustomCookbooksSource">> => source(),
%%   <<"CustomJson">> => string(),
%%   <<"DefaultAvailabilityZone">> => string(),
%%   <<"DefaultInstanceProfileArn">> => string(),
%%   <<"DefaultOs">> => string(),
%%   <<"DefaultRootDeviceType">> => list(any()),
%%   <<"DefaultSshKeyName">> => string(),
%%   <<"DefaultSubnetId">> => string(),
%%   <<"HostnameTheme">> => string(),
%%   <<"Name">> => string(),
%%   <<"ServiceRoleArn">> => string(),
%%   <<"StackId">> := string(),
%%   <<"UseCustomCookbooks">> => boolean(),
%%   <<"UseOpsworksSecurityGroups">> => boolean()
%% }
-type update_stack_request() :: #{binary() => any()}.

%% Example:
%% describe_raid_arrays_result() :: #{
%%   <<"RaidArrays">> => list(raid_array())
%% }
-type describe_raid_arrays_result() :: #{binary() => any()}.

%% Example:
%% stop_instance_request() :: #{
%%   <<"Force">> => boolean(),
%%   <<"InstanceId">> := string()
%% }
-type stop_instance_request() :: #{binary() => any()}.

%% Example:
%% describe_elastic_ips_request() :: #{
%%   <<"InstanceId">> => string(),
%%   <<"Ips">> => list(string()),
%%   <<"StackId">> => string()
%% }
-type describe_elastic_ips_request() :: #{binary() => any()}.

%% Example:
%% describe_commands_result() :: #{
%%   <<"Commands">> => list(command())
%% }
-type describe_commands_result() :: #{binary() => any()}.

%% Example:
%% environment_variable() :: #{
%%   <<"Key">> => string(),
%%   <<"Secure">> => boolean(),
%%   <<"Value">> => string()
%% }
-type environment_variable() :: #{binary() => any()}.

%% Example:
%% lifecycle_event_configuration() :: #{
%%   <<"Shutdown">> => shutdown_event_configuration()
%% }
-type lifecycle_event_configuration() :: #{binary() => any()}.

%% Example:
%% describe_volumes_request() :: #{
%%   <<"InstanceId">> => string(),
%%   <<"RaidArrayId">> => string(),
%%   <<"StackId">> => string(),
%%   <<"VolumeIds">> => list(string())
%% }
-type describe_volumes_request() :: #{binary() => any()}.

%% Example:
%% update_volume_request() :: #{
%%   <<"MountPoint">> => string(),
%%   <<"Name">> => string(),
%%   <<"VolumeId">> := string()
%% }
-type update_volume_request() :: #{binary() => any()}.

%% Example:
%% create_stack_result() :: #{
%%   <<"StackId">> => string()
%% }
-type create_stack_result() :: #{binary() => any()}.

%% Example:
%% create_deployment_request() :: #{
%%   <<"AppId">> => string(),
%%   <<"Command">> := deployment_command(),
%%   <<"Comment">> => string(),
%%   <<"CustomJson">> => string(),
%%   <<"InstanceIds">> => list(string()),
%%   <<"LayerIds">> => list(string()),
%%   <<"StackId">> := string()
%% }
-type create_deployment_request() :: #{binary() => any()}.

%% Example:
%% temporary_credential() :: #{
%%   <<"InstanceId">> => string(),
%%   <<"Password">> => string(),
%%   <<"Username">> => string(),
%%   <<"ValidForInMinutes">> => integer()
%% }
-type temporary_credential() :: #{binary() => any()}.

%% Example:
%% create_layer_result() :: #{
%%   <<"LayerId">> => string()
%% }
-type create_layer_result() :: #{binary() => any()}.

%% Example:
%% describe_stack_provisioning_parameters_result() :: #{
%%   <<"AgentInstallerUrl">> => string(),
%%   <<"Parameters">> => map()
%% }
-type describe_stack_provisioning_parameters_result() :: #{binary() => any()}.

%% Example:
%% shutdown_event_configuration() :: #{
%%   <<"DelayUntilElbConnectionsDrained">> => boolean(),
%%   <<"ExecutionTimeout">> => integer()
%% }
-type shutdown_event_configuration() :: #{binary() => any()}.

%% Example:
%% describe_my_user_profile_result() :: #{
%%   <<"UserProfile">> => self_user_profile()
%% }
-type describe_my_user_profile_result() :: #{binary() => any()}.

%% Example:
%% register_rds_db_instance_request() :: #{
%%   <<"DbPassword">> := string(),
%%   <<"DbUser">> := string(),
%%   <<"RdsDbInstanceArn">> := string(),
%%   <<"StackId">> := string()
%% }
-type register_rds_db_instance_request() :: #{binary() => any()}.

%% Example:
%% describe_permissions_request() :: #{
%%   <<"IamUserArn">> => string(),
%%   <<"StackId">> => string()
%% }
-type describe_permissions_request() :: #{binary() => any()}.

%% Example:
%% operating_system() :: #{
%%   <<"ConfigurationManagers">> => list(operating_system_configuration_manager()),
%%   <<"Id">> => string(),
%%   <<"Name">> => string(),
%%   <<"ReportedName">> => string(),
%%   <<"ReportedVersion">> => string(),
%%   <<"Supported">> => boolean(),
%%   <<"Type">> => string()
%% }
-type operating_system() :: #{binary() => any()}.

%% Example:
%% describe_permissions_result() :: #{
%%   <<"Permissions">> => list(permission())
%% }
-type describe_permissions_result() :: #{binary() => any()}.

%% Example:
%% register_volume_request() :: #{
%%   <<"Ec2VolumeId">> => string(),
%%   <<"StackId">> := string()
%% }
-type register_volume_request() :: #{binary() => any()}.

%% Example:
%% untag_resource_request() :: #{
%%   <<"ResourceArn">> := string(),
%%   <<"TagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% describe_stack_summary_result() :: #{
%%   <<"StackSummary">> => stack_summary()
%% }
-type describe_stack_summary_result() :: #{binary() => any()}.

%% Example:
%% describe_commands_request() :: #{
%%   <<"CommandIds">> => list(string()),
%%   <<"DeploymentId">> => string(),
%%   <<"InstanceId">> => string()
%% }
-type describe_commands_request() :: #{binary() => any()}.

%% Example:
%% deregister_instance_request() :: #{
%%   <<"InstanceId">> := string()
%% }
-type deregister_instance_request() :: #{binary() => any()}.

%% Example:
%% instances_count() :: #{
%%   <<"Assigning">> => integer(),
%%   <<"Booting">> => integer(),
%%   <<"ConnectionLost">> => integer(),
%%   <<"Deregistering">> => integer(),
%%   <<"Online">> => integer(),
%%   <<"Pending">> => integer(),
%%   <<"Rebooting">> => integer(),
%%   <<"Registered">> => integer(),
%%   <<"Registering">> => integer(),
%%   <<"Requested">> => integer(),
%%   <<"RunningSetup">> => integer(),
%%   <<"SetupFailed">> => integer(),
%%   <<"ShuttingDown">> => integer(),
%%   <<"StartFailed">> => integer(),
%%   <<"StopFailed">> => integer(),
%%   <<"Stopped">> => integer(),
%%   <<"Stopping">> => integer(),
%%   <<"Terminated">> => integer(),
%%   <<"Terminating">> => integer(),
%%   <<"Unassigning">> => integer()
%% }
-type instances_count() :: #{binary() => any()}.

%% Example:
%% grant_access_request() :: #{
%%   <<"InstanceId">> := string(),
%%   <<"ValidForInMinutes">> => integer()
%% }
-type grant_access_request() :: #{binary() => any()}.

%% Example:
%% set_load_based_auto_scaling_request() :: #{
%%   <<"DownScaling">> => auto_scaling_thresholds(),
%%   <<"Enable">> => boolean(),
%%   <<"LayerId">> := string(),
%%   <<"UpScaling">> => auto_scaling_thresholds()
%% }
-type set_load_based_auto_scaling_request() :: #{binary() => any()}.

%% Example:
%% unassign_volume_request() :: #{
%%   <<"VolumeId">> := string()
%% }
-type unassign_volume_request() :: #{binary() => any()}.

%% Example:
%% get_hostname_suggestion_request() :: #{
%%   <<"LayerId">> := string()
%% }
-type get_hostname_suggestion_request() :: #{binary() => any()}.

%% Example:
%% cloud_watch_logs_configuration() :: #{
%%   <<"Enabled">> => boolean(),
%%   <<"LogStreams">> => list(cloud_watch_logs_log_stream())
%% }
-type cloud_watch_logs_configuration() :: #{binary() => any()}.

%% Example:
%% set_permission_request() :: #{
%%   <<"AllowSsh">> => boolean(),
%%   <<"AllowSudo">> => boolean(),
%%   <<"IamUserArn">> := string(),
%%   <<"Level">> => string(),
%%   <<"StackId">> := string()
%% }
-type set_permission_request() :: #{binary() => any()}.

%% Example:
%% describe_agent_versions_request() :: #{
%%   <<"ConfigurationManager">> => stack_configuration_manager(),
%%   <<"StackId">> => string()
%% }
-type describe_agent_versions_request() :: #{binary() => any()}.

%% Example:
%% assign_volume_request() :: #{
%%   <<"InstanceId">> => string(),
%%   <<"VolumeId">> := string()
%% }
-type assign_volume_request() :: #{binary() => any()}.

%% Example:
%% reboot_instance_request() :: #{
%%   <<"InstanceId">> := string()
%% }
-type reboot_instance_request() :: #{binary() => any()}.

%% Example:
%% delete_stack_request() :: #{
%%   <<"StackId">> := string()
%% }
-type delete_stack_request() :: #{binary() => any()}.

%% Example:
%% stack() :: #{
%%   <<"AgentVersion">> => string(),
%%   <<"Arn">> => string(),
%%   <<"Attributes">> => map(),
%%   <<"ChefConfiguration">> => chef_configuration(),
%%   <<"ConfigurationManager">> => stack_configuration_manager(),
%%   <<"CreatedAt">> => string(),
%%   <<"CustomCookbooksSource">> => source(),
%%   <<"CustomJson">> => string(),
%%   <<"DefaultAvailabilityZone">> => string(),
%%   <<"DefaultInstanceProfileArn">> => string(),
%%   <<"DefaultOs">> => string(),
%%   <<"DefaultRootDeviceType">> => list(any()),
%%   <<"DefaultSshKeyName">> => string(),
%%   <<"DefaultSubnetId">> => string(),
%%   <<"HostnameTheme">> => string(),
%%   <<"Name">> => string(),
%%   <<"Region">> => string(),
%%   <<"ServiceRoleArn">> => string(),
%%   <<"StackId">> => string(),
%%   <<"UseCustomCookbooks">> => boolean(),
%%   <<"UseOpsworksSecurityGroups">> => boolean(),
%%   <<"VpcId">> => string()
%% }
-type stack() :: #{binary() => any()}.

%% Example:
%% describe_rds_db_instances_result() :: #{
%%   <<"RdsDbInstances">> => list(rds_db_instance())
%% }
-type describe_rds_db_instances_result() :: #{binary() => any()}.

%% Example:
%% describe_elastic_load_balancers_request() :: #{
%%   <<"LayerIds">> => list(string()),
%%   <<"StackId">> => string()
%% }
-type describe_elastic_load_balancers_request() :: #{binary() => any()}.

%% Example:
%% elastic_load_balancer() :: #{
%%   <<"AvailabilityZones">> => list(string()),
%%   <<"DnsName">> => string(),
%%   <<"Ec2InstanceIds">> => list(string()),
%%   <<"ElasticLoadBalancerName">> => string(),
%%   <<"LayerId">> => string(),
%%   <<"Region">> => string(),
%%   <<"StackId">> => string(),
%%   <<"SubnetIds">> => list(string()),
%%   <<"VpcId">> => string()
%% }
-type elastic_load_balancer() :: #{binary() => any()}.

%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% recipes() :: #{
%%   <<"Configure">> => list(string()),
%%   <<"Deploy">> => list(string()),
%%   <<"Setup">> => list(string()),
%%   <<"Shutdown">> => list(string()),
%%   <<"Undeploy">> => list(string())
%% }
-type recipes() :: #{binary() => any()}.

%% Example:
%% associate_elastic_ip_request() :: #{
%%   <<"ElasticIp">> := string(),
%%   <<"InstanceId">> => string()
%% }
-type associate_elastic_ip_request() :: #{binary() => any()}.

%% Example:
%% stack_summary() :: #{
%%   <<"AppsCount">> => integer(),
%%   <<"Arn">> => string(),
%%   <<"InstancesCount">> => instances_count(),
%%   <<"LayersCount">> => integer(),
%%   <<"Name">> => string(),
%%   <<"StackId">> => string()
%% }
-type stack_summary() :: #{binary() => any()}.

%% Example:
%% deployment_command() :: #{
%%   <<"Args">> => map(),
%%   <<"Name">> => list(any())
%% }
-type deployment_command() :: #{binary() => any()}.

%% Example:
%% describe_stacks_request() :: #{
%%   <<"StackIds">> => list(string())
%% }
-type describe_stacks_request() :: #{binary() => any()}.

%% Example:
%% unassign_instance_request() :: #{
%%   <<"InstanceId">> := string()
%% }
-type unassign_instance_request() :: #{binary() => any()}.

%% Example:
%% raid_array() :: #{
%%   <<"AvailabilityZone">> => string(),
%%   <<"CreatedAt">> => string(),
%%   <<"Device">> => string(),
%%   <<"InstanceId">> => string(),
%%   <<"Iops">> => integer(),
%%   <<"MountPoint">> => string(),
%%   <<"Name">> => string(),
%%   <<"NumberOfDisks">> => integer(),
%%   <<"RaidArrayId">> => string(),
%%   <<"RaidLevel">> => integer(),
%%   <<"Size">> => integer(),
%%   <<"StackId">> => string(),
%%   <<"VolumeType">> => string()
%% }
-type raid_array() :: #{binary() => any()}.

%% Example:
%% disassociate_elastic_ip_request() :: #{
%%   <<"ElasticIp">> := string()
%% }
-type disassociate_elastic_ip_request() :: #{binary() => any()}.

%% Example:
%% delete_user_profile_request() :: #{
%%   <<"IamUserArn">> := string()
%% }
-type delete_user_profile_request() :: #{binary() => any()}.

%% Example:
%% create_deployment_result() :: #{
%%   <<"DeploymentId">> => string()
%% }
-type create_deployment_result() :: #{binary() => any()}.

%% Example:
%% describe_user_profiles_result() :: #{
%%   <<"UserProfiles">> => list(user_profile())
%% }
-type describe_user_profiles_result() :: #{binary() => any()}.

%% Example:
%% weekly_auto_scaling_schedule() :: #{
%%   <<"Friday">> => map(),
%%   <<"Monday">> => map(),
%%   <<"Saturday">> => map(),
%%   <<"Sunday">> => map(),
%%   <<"Thursday">> => map(),
%%   <<"Tuesday">> => map(),
%%   <<"Wednesday">> => map()
%% }
-type weekly_auto_scaling_schedule() :: #{binary() => any()}.

%% Example:
%% assign_instance_request() :: #{
%%   <<"InstanceId">> := string(),
%%   <<"LayerIds">> := list(string())
%% }
-type assign_instance_request() :: #{binary() => any()}.

%% Example:
%% create_instance_result() :: #{
%%   <<"InstanceId">> => string()
%% }
-type create_instance_result() :: #{binary() => any()}.

%% Example:
%% describe_load_based_auto_scaling_request() :: #{
%%   <<"LayerIds">> := list(string())
%% }
-type describe_load_based_auto_scaling_request() :: #{binary() => any()}.

%% Example:
%% update_instance_request() :: #{
%%   <<"AgentVersion">> => string(),
%%   <<"AmiId">> => string(),
%%   <<"Architecture">> => list(any()),
%%   <<"AutoScalingType">> => list(any()),
%%   <<"EbsOptimized">> => boolean(),
%%   <<"Hostname">> => string(),
%%   <<"InstallUpdatesOnBoot">> => boolean(),
%%   <<"InstanceId">> := string(),
%%   <<"InstanceType">> => string(),
%%   <<"LayerIds">> => list(string()),
%%   <<"Os">> => string(),
%%   <<"SshKeyName">> => string()
%% }
-type update_instance_request() :: #{binary() => any()}.

%% Example:
%% stack_configuration_manager() :: #{
%%   <<"Name">> => string(),
%%   <<"Version">> => string()
%% }
-type stack_configuration_manager() :: #{binary() => any()}.

%% Example:
%% describe_layers_result() :: #{
%%   <<"Layers">> => list(layer())
%% }
-type describe_layers_result() :: #{binary() => any()}.

%% Example:
%% layer() :: #{
%%   <<"Arn">> => string(),
%%   <<"Attributes">> => map(),
%%   <<"AutoAssignElasticIps">> => boolean(),
%%   <<"AutoAssignPublicIps">> => boolean(),
%%   <<"CloudWatchLogsConfiguration">> => cloud_watch_logs_configuration(),
%%   <<"CreatedAt">> => string(),
%%   <<"CustomInstanceProfileArn">> => string(),
%%   <<"CustomJson">> => string(),
%%   <<"CustomRecipes">> => recipes(),
%%   <<"CustomSecurityGroupIds">> => list(string()),
%%   <<"DefaultRecipes">> => recipes(),
%%   <<"DefaultSecurityGroupNames">> => list(string()),
%%   <<"EnableAutoHealing">> => boolean(),
%%   <<"InstallUpdatesOnBoot">> => boolean(),
%%   <<"LayerId">> => string(),
%%   <<"LifecycleEventConfiguration">> => lifecycle_event_configuration(),
%%   <<"Name">> => string(),
%%   <<"Packages">> => list(string()),
%%   <<"Shortname">> => string(),
%%   <<"StackId">> => string(),
%%   <<"Type">> => list(any()),
%%   <<"UseEbsOptimizedInstances">> => boolean(),
%%   <<"VolumeConfigurations">> => list(volume_configuration())
%% }
-type layer() :: #{binary() => any()}.

%% Example:
%% register_instance_request() :: #{
%%   <<"Hostname">> => string(),
%%   <<"InstanceIdentity">> => instance_identity(),
%%   <<"PrivateIp">> => string(),
%%   <<"PublicIp">> => string(),
%%   <<"RsaPublicKey">> => string(),
%%   <<"RsaPublicKeyFingerprint">> => string(),
%%   <<"StackId">> := string()
%% }
-type register_instance_request() :: #{binary() => any()}.

%% Example:
%% describe_instances_request() :: #{
%%   <<"InstanceIds">> => list(string()),
%%   <<"LayerId">> => string(),
%%   <<"StackId">> => string()
%% }
-type describe_instances_request() :: #{binary() => any()}.

%% Example:
%% ssl_configuration() :: #{
%%   <<"Certificate">> => string(),
%%   <<"Chain">> => string(),
%%   <<"PrivateKey">> => string()
%% }
-type ssl_configuration() :: #{binary() => any()}.

%% Example:
%% describe_user_profiles_request() :: #{
%%   <<"IamUserArns">> => list(string())
%% }
-type describe_user_profiles_request() :: #{binary() => any()}.

%% Example:
%% describe_elastic_load_balancers_result() :: #{
%%   <<"ElasticLoadBalancers">> => list(elastic_load_balancer())
%% }
-type describe_elastic_load_balancers_result() :: #{binary() => any()}.

%% Example:
%% describe_time_based_auto_scaling_request() :: #{
%%   <<"InstanceIds">> := list(string())
%% }
-type describe_time_based_auto_scaling_request() :: #{binary() => any()}.

%% Example:
%% update_elastic_ip_request() :: #{
%%   <<"ElasticIp">> := string(),
%%   <<"Name">> => string()
%% }
-type update_elastic_ip_request() :: #{binary() => any()}.

%% Example:
%% describe_ecs_clusters_request() :: #{
%%   <<"EcsClusterArns">> => list(string()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"StackId">> => string()
%% }
-type describe_ecs_clusters_request() :: #{binary() => any()}.

%% Example:
%% ebs_block_device() :: #{
%%   <<"DeleteOnTermination">> => boolean(),
%%   <<"Iops">> => integer(),
%%   <<"SnapshotId">> => string(),
%%   <<"VolumeSize">> => integer(),
%%   <<"VolumeType">> => list(any())
%% }
-type ebs_block_device() :: #{binary() => any()}.

%% Example:
%% register_elastic_ip_result() :: #{
%%   <<"ElasticIp">> => string()
%% }
-type register_elastic_ip_result() :: #{binary() => any()}.

%% Example:
%% detach_elastic_load_balancer_request() :: #{
%%   <<"ElasticLoadBalancerName">> := string(),
%%   <<"LayerId">> := string()
%% }
-type detach_elastic_load_balancer_request() :: #{binary() => any()}.

%% Example:
%% agent_version() :: #{
%%   <<"ConfigurationManager">> => stack_configuration_manager(),
%%   <<"Version">> => string()
%% }
-type agent_version() :: #{binary() => any()}.

%% Example:
%% describe_deployments_result() :: #{
%%   <<"Deployments">> => list(deployment())
%% }
-type describe_deployments_result() :: #{binary() => any()}.

%% Example:
%% auto_scaling_thresholds() :: #{
%%   <<"Alarms">> => list(string()),
%%   <<"CpuThreshold">> => float(),
%%   <<"IgnoreMetricsTime">> => integer(),
%%   <<"InstanceCount">> => integer(),
%%   <<"LoadThreshold">> => float(),
%%   <<"MemoryThreshold">> => float(),
%%   <<"ThresholdsWaitTime">> => integer()
%% }
-type auto_scaling_thresholds() :: #{binary() => any()}.

%% Example:
%% get_hostname_suggestion_result() :: #{
%%   <<"Hostname">> => string(),
%%   <<"LayerId">> => string()
%% }
-type get_hostname_suggestion_result() :: #{binary() => any()}.

%% Example:
%% describe_apps_result() :: #{
%%   <<"Apps">> => list(app())
%% }
-type describe_apps_result() :: #{binary() => any()}.

%% Example:
%% update_layer_request() :: #{
%%   <<"Attributes">> => map(),
%%   <<"AutoAssignElasticIps">> => boolean(),
%%   <<"AutoAssignPublicIps">> => boolean(),
%%   <<"CloudWatchLogsConfiguration">> => cloud_watch_logs_configuration(),
%%   <<"CustomInstanceProfileArn">> => string(),
%%   <<"CustomJson">> => string(),
%%   <<"CustomRecipes">> => recipes(),
%%   <<"CustomSecurityGroupIds">> => list(string()),
%%   <<"EnableAutoHealing">> => boolean(),
%%   <<"InstallUpdatesOnBoot">> => boolean(),
%%   <<"LayerId">> := string(),
%%   <<"LifecycleEventConfiguration">> => lifecycle_event_configuration(),
%%   <<"Name">> => string(),
%%   <<"Packages">> => list(string()),
%%   <<"Shortname">> => string(),
%%   <<"UseEbsOptimizedInstances">> => boolean(),
%%   <<"VolumeConfigurations">> => list(volume_configuration())
%% }
-type update_layer_request() :: #{binary() => any()}.

%% Example:
%% deregister_elastic_ip_request() :: #{
%%   <<"ElasticIp">> := string()
%% }
-type deregister_elastic_ip_request() :: #{binary() => any()}.

%% Example:
%% source() :: #{
%%   <<"Password">> => string(),
%%   <<"Revision">> => string(),
%%   <<"SshKey">> => string(),
%%   <<"Type">> => list(any()),
%%   <<"Url">> => string(),
%%   <<"Username">> => string()
%% }
-type source() :: #{binary() => any()}.

%% Example:
%% attach_elastic_load_balancer_request() :: #{
%%   <<"ElasticLoadBalancerName">> := string(),
%%   <<"LayerId">> := string()
%% }
-type attach_elastic_load_balancer_request() :: #{binary() => any()}.

%% Example:
%% describe_service_errors_request() :: #{
%%   <<"InstanceId">> => string(),
%%   <<"ServiceErrorIds">> => list(string()),
%%   <<"StackId">> => string()
%% }
-type describe_service_errors_request() :: #{binary() => any()}.

%% Example:
%% describe_stacks_result() :: #{
%%   <<"Stacks">> => list(stack())
%% }
-type describe_stacks_result() :: #{binary() => any()}.

%% Example:
%% clone_stack_request() :: #{
%%   <<"AgentVersion">> => string(),
%%   <<"Attributes">> => map(),
%%   <<"ChefConfiguration">> => chef_configuration(),
%%   <<"CloneAppIds">> => list(string()),
%%   <<"ClonePermissions">> => boolean(),
%%   <<"ConfigurationManager">> => stack_configuration_manager(),
%%   <<"CustomCookbooksSource">> => source(),
%%   <<"CustomJson">> => string(),
%%   <<"DefaultAvailabilityZone">> => string(),
%%   <<"DefaultInstanceProfileArn">> => string(),
%%   <<"DefaultOs">> => string(),
%%   <<"DefaultRootDeviceType">> => list(any()),
%%   <<"DefaultSshKeyName">> => string(),
%%   <<"DefaultSubnetId">> => string(),
%%   <<"HostnameTheme">> => string(),
%%   <<"Name">> => string(),
%%   <<"Region">> => string(),
%%   <<"ServiceRoleArn">> := string(),
%%   <<"SourceStackId">> := string(),
%%   <<"UseCustomCookbooks">> => boolean(),
%%   <<"UseOpsworksSecurityGroups">> => boolean(),
%%   <<"VpcId">> => string()
%% }
-type clone_stack_request() :: #{binary() => any()}.

%% Example:
%% delete_app_request() :: #{
%%   <<"AppId">> := string()
%% }
-type delete_app_request() :: #{binary() => any()}.

%% Example:
%% load_based_auto_scaling_configuration() :: #{
%%   <<"DownScaling">> => auto_scaling_thresholds(),
%%   <<"Enable">> => boolean(),
%%   <<"LayerId">> => string(),
%%   <<"UpScaling">> => auto_scaling_thresholds()
%% }
-type load_based_auto_scaling_configuration() :: #{binary() => any()}.

%% Example:
%% update_my_user_profile_request() :: #{
%%   <<"SshPublicKey">> => string()
%% }
-type update_my_user_profile_request() :: #{binary() => any()}.

%% Example:
%% create_instance_request() :: #{
%%   <<"AgentVersion">> => string(),
%%   <<"AmiId">> => string(),
%%   <<"Architecture">> => list(any()),
%%   <<"AutoScalingType">> => list(any()),
%%   <<"AvailabilityZone">> => string(),
%%   <<"BlockDeviceMappings">> => list(block_device_mapping()),
%%   <<"EbsOptimized">> => boolean(),
%%   <<"Hostname">> => string(),
%%   <<"InstallUpdatesOnBoot">> => boolean(),
%%   <<"InstanceType">> := string(),
%%   <<"LayerIds">> := list(string()),
%%   <<"Os">> => string(),
%%   <<"RootDeviceType">> => list(any()),
%%   <<"SshKeyName">> => string(),
%%   <<"StackId">> := string(),
%%   <<"SubnetId">> => string(),
%%   <<"Tenancy">> => string(),
%%   <<"VirtualizationType">> => string()
%% }
-type create_instance_request() :: #{binary() => any()}.

%% Example:
%% describe_agent_versions_result() :: #{
%%   <<"AgentVersions">> => list(agent_version())
%% }
-type describe_agent_versions_result() :: #{binary() => any()}.

%% Example:
%% register_ecs_cluster_result() :: #{
%%   <<"EcsClusterArn">> => string()
%% }
-type register_ecs_cluster_result() :: #{binary() => any()}.

%% Example:
%% instance() :: #{
%%   <<"Tenancy">> => string(),
%%   <<"SubnetId">> => string(),
%%   <<"ElasticIp">> => string(),
%%   <<"StackId">> => string(),
%%   <<"AutoScalingType">> => list(any()),
%%   <<"PublicIp">> => string(),
%%   <<"Architecture">> => list(any()),
%%   <<"EbsOptimized">> => boolean(),
%%   <<"BlockDeviceMappings">> => list(block_device_mapping()),
%%   <<"AgentVersion">> => string(),
%%   <<"AmiId">> => string(),
%%   <<"PrivateDns">> => string(),
%%   <<"SshHostRsaKeyFingerprint">> => string(),
%%   <<"RootDeviceVolumeId">> => string(),
%%   <<"InstanceId">> => string(),
%%   <<"ReportedOs">> => reported_os(),
%%   <<"InstanceType">> => string(),
%%   <<"VirtualizationType">> => list(any()),
%%   <<"RegisteredBy">> => string(),
%%   <<"AvailabilityZone">> => string(),
%%   <<"EcsClusterArn">> => string(),
%%   <<"Ec2InstanceId">> => string(),
%%   <<"Platform">> => string(),
%%   <<"InstallUpdatesOnBoot">> => boolean(),
%%   <<"ReportedAgentVersion">> => string(),
%%   <<"Arn">> => string(),
%%   <<"PublicDns">> => string(),
%%   <<"PrivateIp">> => string(),
%%   <<"CreatedAt">> => string(),
%%   <<"LayerIds">> => list(string()),
%%   <<"RootDeviceType">> => list(any()),
%%   <<"SshHostDsaKeyFingerprint">> => string(),
%%   <<"EcsContainerInstanceArn">> => string(),
%%   <<"SecurityGroupIds">> => list(string()),
%%   <<"InfrastructureClass">> => string(),
%%   <<"SshKeyName">> => string(),
%%   <<"InstanceProfileArn">> => string(),
%%   <<"Status">> => string(),
%%   <<"Os">> => string(),
%%   <<"LastServiceErrorId">> => string(),
%%   <<"Hostname">> => string()
%% }
-type instance() :: #{binary() => any()}.

%% Example:
%% volume() :: #{
%%   <<"AvailabilityZone">> => string(),
%%   <<"Device">> => string(),
%%   <<"Ec2VolumeId">> => string(),
%%   <<"Encrypted">> => boolean(),
%%   <<"InstanceId">> => string(),
%%   <<"Iops">> => integer(),
%%   <<"MountPoint">> => string(),
%%   <<"Name">> => string(),
%%   <<"RaidArrayId">> => string(),
%%   <<"Region">> => string(),
%%   <<"Size">> => integer(),
%%   <<"Status">> => string(),
%%   <<"VolumeId">> => string(),
%%   <<"VolumeType">> => string()
%% }
-type volume() :: #{binary() => any()}.

%% Example:
%% deregister_volume_request() :: #{
%%   <<"VolumeId">> := string()
%% }
-type deregister_volume_request() :: #{binary() => any()}.

%% Example:
%% chef_configuration() :: #{
%%   <<"BerkshelfVersion">> => string(),
%%   <<"ManageBerkshelf">> => boolean()
%% }
-type chef_configuration() :: #{binary() => any()}.

%% Example:
%% create_user_profile_request() :: #{
%%   <<"AllowSelfManagement">> => boolean(),
%%   <<"IamUserArn">> := string(),
%%   <<"SshPublicKey">> => string(),
%%   <<"SshUsername">> => string()
%% }
-type create_user_profile_request() :: #{binary() => any()}.

%% Example:
%% ecs_cluster() :: #{
%%   <<"EcsClusterArn">> => string(),
%%   <<"EcsClusterName">> => string(),
%%   <<"RegisteredAt">> => string(),
%%   <<"StackId">> => string()
%% }
-type ecs_cluster() :: #{binary() => any()}.

%% Example:
%% create_user_profile_result() :: #{
%%   <<"IamUserArn">> => string()
%% }
-type create_user_profile_result() :: #{binary() => any()}.

%% Example:
%% describe_raid_arrays_request() :: #{
%%   <<"InstanceId">> => string(),
%%   <<"RaidArrayIds">> => list(string()),
%%   <<"StackId">> => string()
%% }
-type describe_raid_arrays_request() :: #{binary() => any()}.

%% Example:
%% create_layer_request() :: #{
%%   <<"Attributes">> => map(),
%%   <<"AutoAssignElasticIps">> => boolean(),
%%   <<"AutoAssignPublicIps">> => boolean(),
%%   <<"CloudWatchLogsConfiguration">> => cloud_watch_logs_configuration(),
%%   <<"CustomInstanceProfileArn">> => string(),
%%   <<"CustomJson">> => string(),
%%   <<"CustomRecipes">> => recipes(),
%%   <<"CustomSecurityGroupIds">> => list(string()),
%%   <<"EnableAutoHealing">> => boolean(),
%%   <<"InstallUpdatesOnBoot">> => boolean(),
%%   <<"LifecycleEventConfiguration">> => lifecycle_event_configuration(),
%%   <<"Name">> := string(),
%%   <<"Packages">> => list(string()),
%%   <<"Shortname">> := string(),
%%   <<"StackId">> := string(),
%%   <<"Type">> := list(any()),
%%   <<"UseEbsOptimizedInstances">> => boolean(),
%%   <<"VolumeConfigurations">> => list(volume_configuration())
%% }
-type create_layer_request() :: #{binary() => any()}.

%% Example:
%% describe_ecs_clusters_result() :: #{
%%   <<"EcsClusters">> => list(ecs_cluster()),
%%   <<"NextToken">> => string()
%% }
-type describe_ecs_clusters_result() :: #{binary() => any()}.

%% Example:
%% delete_layer_request() :: #{
%%   <<"LayerId">> := string()
%% }
-type delete_layer_request() :: #{binary() => any()}.

%% Example:
%% register_instance_result() :: #{
%%   <<"InstanceId">> => string()
%% }
-type register_instance_result() :: #{binary() => any()}.

%% Example:
%% describe_time_based_auto_scaling_result() :: #{
%%   <<"TimeBasedAutoScalingConfigurations">> => list(time_based_auto_scaling_configuration())
%% }
-type describe_time_based_auto_scaling_result() :: #{binary() => any()}.

%% Example:
%% update_rds_db_instance_request() :: #{
%%   <<"DbPassword">> => string(),
%%   <<"DbUser">> => string(),
%%   <<"RdsDbInstanceArn">> := string()
%% }
-type update_rds_db_instance_request() :: #{binary() => any()}.

%% Example:
%% describe_layers_request() :: #{
%%   <<"LayerIds">> => list(string()),
%%   <<"StackId">> => string()
%% }
-type describe_layers_request() :: #{binary() => any()}.

%% Example:
%% validation_exception() :: #{
%%   <<"message">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% update_app_request() :: #{
%%   <<"AppId">> := string(),
%%   <<"AppSource">> => source(),
%%   <<"Attributes">> => map(),
%%   <<"DataSources">> => list(data_source()),
%%   <<"Description">> => string(),
%%   <<"Domains">> => list(string()),
%%   <<"EnableSsl">> => boolean(),
%%   <<"Environment">> => list(environment_variable()),
%%   <<"Name">> => string(),
%%   <<"SslConfiguration">> => ssl_configuration(),
%%   <<"Type">> => list(any())
%% }
-type update_app_request() :: #{binary() => any()}.

%% Example:
%% delete_instance_request() :: #{
%%   <<"DeleteElasticIp">> => boolean(),
%%   <<"DeleteVolumes">> => boolean(),
%%   <<"InstanceId">> := string()
%% }
-type delete_instance_request() :: #{binary() => any()}.

%% Example:
%% register_elastic_ip_request() :: #{
%%   <<"ElasticIp">> := string(),
%%   <<"StackId">> := string()
%% }
-type register_elastic_ip_request() :: #{binary() => any()}.

%% Example:
%% register_volume_result() :: #{
%%   <<"VolumeId">> => string()
%% }
-type register_volume_result() :: #{binary() => any()}.

%% Example:
%% grant_access_result() :: #{
%%   <<"TemporaryCredential">> => temporary_credential()
%% }
-type grant_access_result() :: #{binary() => any()}.

%% Example:
%% describe_stack_summary_request() :: #{
%%   <<"StackId">> := string()
%% }
-type describe_stack_summary_request() :: #{binary() => any()}.

%% Example:
%% describe_instances_result() :: #{
%%   <<"Instances">> => list(instance())
%% }
-type describe_instances_result() :: #{binary() => any()}.

%% Example:
%% rds_db_instance() :: #{
%%   <<"Address">> => string(),
%%   <<"DbInstanceIdentifier">> => string(),
%%   <<"DbPassword">> => string(),
%%   <<"DbUser">> => string(),
%%   <<"Engine">> => string(),
%%   <<"MissingOnRds">> => boolean(),
%%   <<"RdsDbInstanceArn">> => string(),
%%   <<"Region">> => string(),
%%   <<"StackId">> => string()
%% }
-type rds_db_instance() :: #{binary() => any()}.

%% Example:
%% describe_load_based_auto_scaling_result() :: #{
%%   <<"LoadBasedAutoScalingConfigurations">> => list(load_based_auto_scaling_configuration())
%% }
-type describe_load_based_auto_scaling_result() :: #{binary() => any()}.

%% Example:
%% clone_stack_result() :: #{
%%   <<"StackId">> => string()
%% }
-type clone_stack_result() :: #{binary() => any()}.

%% Example:
%% command() :: #{
%%   <<"AcknowledgedAt">> => string(),
%%   <<"CommandId">> => string(),
%%   <<"CompletedAt">> => string(),
%%   <<"CreatedAt">> => string(),
%%   <<"DeploymentId">> => string(),
%%   <<"ExitCode">> => integer(),
%%   <<"InstanceId">> => string(),
%%   <<"LogUrl">> => string(),
%%   <<"Status">> => string(),
%%   <<"Type">> => string()
%% }
-type command() :: #{binary() => any()}.

%% Example:
%% volume_configuration() :: #{
%%   <<"Encrypted">> => boolean(),
%%   <<"Iops">> => integer(),
%%   <<"MountPoint">> => string(),
%%   <<"NumberOfDisks">> => integer(),
%%   <<"RaidLevel">> => integer(),
%%   <<"Size">> => integer(),
%%   <<"VolumeType">> => string()
%% }
-type volume_configuration() :: #{binary() => any()}.

%% Example:
%% describe_volumes_result() :: #{
%%   <<"Volumes">> => list(volume())
%% }
-type describe_volumes_result() :: #{binary() => any()}.

%% Example:
%% operating_system_configuration_manager() :: #{
%%   <<"Name">> => string(),
%%   <<"Version">> => string()
%% }
-type operating_system_configuration_manager() :: #{binary() => any()}.

%% Example:
%% service_error() :: #{
%%   <<"CreatedAt">> => string(),
%%   <<"InstanceId">> => string(),
%%   <<"Message">> => string(),
%%   <<"ServiceErrorId">> => string(),
%%   <<"StackId">> => string(),
%%   <<"Type">> => string()
%% }
-type service_error() :: #{binary() => any()}.

%% Example:
%% data_source() :: #{
%%   <<"Arn">> => string(),
%%   <<"DatabaseName">> => string(),
%%   <<"Type">> => string()
%% }
-type data_source() :: #{binary() => any()}.

%% Example:
%% start_instance_request() :: #{
%%   <<"InstanceId">> := string()
%% }
-type start_instance_request() :: #{binary() => any()}.

%% Example:
%% self_user_profile() :: #{
%%   <<"IamUserArn">> => string(),
%%   <<"Name">> => string(),
%%   <<"SshPublicKey">> => string(),
%%   <<"SshUsername">> => string()
%% }
-type self_user_profile() :: #{binary() => any()}.

%% Example:
%% set_time_based_auto_scaling_request() :: #{
%%   <<"AutoScalingSchedule">> => weekly_auto_scaling_schedule(),
%%   <<"InstanceId">> := string()
%% }
-type set_time_based_auto_scaling_request() :: #{binary() => any()}.

%% Example:
%% list_tags_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ResourceArn">> := string()
%% }
-type list_tags_request() :: #{binary() => any()}.

%% Example:
%% cloud_watch_logs_log_stream() :: #{
%%   <<"BatchCount">> => integer(),
%%   <<"BatchSize">> => integer(),
%%   <<"BufferDuration">> => integer(),
%%   <<"DatetimeFormat">> => string(),
%%   <<"Encoding">> => list(any()),
%%   <<"File">> => string(),
%%   <<"FileFingerprintLines">> => string(),
%%   <<"InitialPosition">> => list(any()),
%%   <<"LogGroupName">> => string(),
%%   <<"MultiLineStartPattern">> => string(),
%%   <<"TimeZone">> => list(any())
%% }
-type cloud_watch_logs_log_stream() :: #{binary() => any()}.

%% Example:
%% describe_stack_provisioning_parameters_request() :: #{
%%   <<"StackId">> := string()
%% }
-type describe_stack_provisioning_parameters_request() :: #{binary() => any()}.

%% Example:
%% instance_identity() :: #{
%%   <<"Document">> => string(),
%%   <<"Signature">> => string()
%% }
-type instance_identity() :: #{binary() => any()}.

%% Example:
%% describe_deployments_request() :: #{
%%   <<"AppId">> => string(),
%%   <<"DeploymentIds">> => list(string()),
%%   <<"StackId">> => string()
%% }
-type describe_deployments_request() :: #{binary() => any()}.

%% Example:
%% create_app_result() :: #{
%%   <<"AppId">> => string()
%% }
-type create_app_result() :: #{binary() => any()}.

%% Example:
%% describe_service_errors_result() :: #{
%%   <<"ServiceErrors">> => list(service_error())
%% }
-type describe_service_errors_result() :: #{binary() => any()}.

%% Example:
%% start_stack_request() :: #{
%%   <<"StackId">> := string()
%% }
-type start_stack_request() :: #{binary() => any()}.

%% Example:
%% time_based_auto_scaling_configuration() :: #{
%%   <<"AutoScalingSchedule">> => weekly_auto_scaling_schedule(),
%%   <<"InstanceId">> => string()
%% }
-type time_based_auto_scaling_configuration() :: #{binary() => any()}.

%% Example:
%% permission() :: #{
%%   <<"AllowSsh">> => boolean(),
%%   <<"AllowSudo">> => boolean(),
%%   <<"IamUserArn">> => string(),
%%   <<"Level">> => string(),
%%   <<"StackId">> => string()
%% }
-type permission() :: #{binary() => any()}.

%% Example:
%% reported_os() :: #{
%%   <<"Family">> => string(),
%%   <<"Name">> => string(),
%%   <<"Version">> => string()
%% }
-type reported_os() :: #{binary() => any()}.

%% Example:
%% deregister_rds_db_instance_request() :: #{
%%   <<"RdsDbInstanceArn">> := string()
%% }
-type deregister_rds_db_instance_request() :: #{binary() => any()}.

-type assign_instance_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type assign_volume_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type associate_elastic_ip_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type attach_elastic_load_balancer_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type clone_stack_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type create_app_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type create_deployment_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type create_instance_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type create_layer_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type create_stack_errors() ::
    validation_exception().

-type create_user_profile_errors() ::
    validation_exception().

-type delete_app_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type delete_instance_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type delete_layer_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type delete_stack_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type delete_user_profile_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type deregister_ecs_cluster_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type deregister_elastic_ip_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type deregister_instance_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type deregister_rds_db_instance_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type deregister_volume_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type describe_agent_versions_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type describe_apps_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type describe_commands_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type describe_deployments_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type describe_ecs_clusters_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type describe_elastic_ips_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type describe_elastic_load_balancers_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type describe_instances_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type describe_layers_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type describe_load_based_auto_scaling_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type describe_permissions_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type describe_raid_arrays_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type describe_rds_db_instances_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type describe_service_errors_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type describe_stack_provisioning_parameters_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type describe_stack_summary_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type describe_stacks_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type describe_time_based_auto_scaling_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type describe_user_profiles_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type describe_volumes_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type detach_elastic_load_balancer_errors() ::
    resource_not_found_exception().

-type disassociate_elastic_ip_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type get_hostname_suggestion_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type grant_access_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type list_tags_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type reboot_instance_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type register_ecs_cluster_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type register_elastic_ip_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type register_instance_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type register_rds_db_instance_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type register_volume_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type set_load_based_auto_scaling_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type set_permission_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type set_time_based_auto_scaling_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type start_instance_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type start_stack_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type stop_instance_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type stop_stack_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type tag_resource_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type unassign_instance_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type unassign_volume_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type update_app_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type update_elastic_ip_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type update_instance_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type update_layer_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type update_my_user_profile_errors() ::
    validation_exception().

-type update_rds_db_instance_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type update_stack_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type update_user_profile_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type update_volume_errors() ::
    validation_exception() | 
    resource_not_found_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Assign a registered instance to a layer.
%%
%% You can assign registered on-premises instances to any layer type.
%%
%% You can assign registered Amazon EC2 instances only to custom layers.
%%
%% You cannot use this action with instances that were created with OpsWorks
%% Stacks.
%%
%% Required Permissions: To use this action, an Identity and Access
%% Management
%% (IAM) user must have a Manage permissions
%% level for the stack or an attached policy that explicitly grants
%% permissions. For more
%% information on user permissions, see Managing User
%% Permissions:
%% https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html.
-spec assign_instance(aws_client:aws_client(), assign_instance_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, assign_instance_errors(), tuple()}.
assign_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    assign_instance(Client, Input, []).

-spec assign_instance(aws_client:aws_client(), assign_instance_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, assign_instance_errors(), tuple()}.
assign_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssignInstance">>, Input, Options).

%% @doc Assigns one of the stack's registered Amazon EBS volumes to a
%% specified instance.
%%
%% The volume must
%% first be registered with the stack by calling `RegisterVolume'. After
%% you register the
%% volume, you must call `UpdateVolume' to specify a mount point before
%% calling
%% `AssignVolume'. For more information, see Resource Management:
%% https://docs.aws.amazon.com/opsworks/latest/userguide/resources.html.
%%
%% Required Permissions: To use this action, an IAM user must have a Manage
%% permissions
%% level for the stack, or an attached policy that explicitly grants
%% permissions. For more
%% information on user permissions, see Managing User
%% Permissions:
%% https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html.
-spec assign_volume(aws_client:aws_client(), assign_volume_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, assign_volume_errors(), tuple()}.
assign_volume(Client, Input)
  when is_map(Client), is_map(Input) ->
    assign_volume(Client, Input, []).

-spec assign_volume(aws_client:aws_client(), assign_volume_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, assign_volume_errors(), tuple()}.
assign_volume(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssignVolume">>, Input, Options).

%% @doc Associates one of the stack's registered Elastic IP addresses
%% with a specified instance.
%%
%% The
%% address must first be registered with the stack by calling
%% `RegisterElasticIp'. For more
%% information, see Resource
%% Management:
%% https://docs.aws.amazon.com/opsworks/latest/userguide/resources.html.
%%
%% Required Permissions: To use this action, an IAM user must have a
%% Manage permissions
%% level for the stack, or an attached policy that explicitly grants
%% permissions. For more
%% information on user permissions, see Managing User
%% Permissions:
%% https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html.
-spec associate_elastic_ip(aws_client:aws_client(), associate_elastic_ip_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, associate_elastic_ip_errors(), tuple()}.
associate_elastic_ip(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_elastic_ip(Client, Input, []).

-spec associate_elastic_ip(aws_client:aws_client(), associate_elastic_ip_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, associate_elastic_ip_errors(), tuple()}.
associate_elastic_ip(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateElasticIp">>, Input, Options).

%% @doc Attaches an Elastic Load Balancing load balancer to a specified
%% layer.
%%
%% OpsWorks Stacks does not support
%% Application Load Balancer. You can only use Classic Load Balancer with
%% OpsWorks Stacks.
%% For more information, see Elastic Load
%% Balancing:
%% https://docs.aws.amazon.com/opsworks/latest/userguide/layers-elb.html.
%%
%% You must create the Elastic Load Balancing instance separately, by using
%% the Elastic Load Balancing console, API, or CLI. For
%% more information, see the Elastic Load Balancing Developer Guide:
%% https://docs.aws.amazon.com/ElasticLoadBalancing/latest/DeveloperGuide/Welcome.html.
%%
%% Required Permissions: To use this action, an IAM user must have a Manage
%% permissions
%% level for the stack, or an attached policy that explicitly grants
%% permissions. For more
%% information on user permissions, see Managing User
%% Permissions:
%% https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html.
-spec attach_elastic_load_balancer(aws_client:aws_client(), attach_elastic_load_balancer_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, attach_elastic_load_balancer_errors(), tuple()}.
attach_elastic_load_balancer(Client, Input)
  when is_map(Client), is_map(Input) ->
    attach_elastic_load_balancer(Client, Input, []).

-spec attach_elastic_load_balancer(aws_client:aws_client(), attach_elastic_load_balancer_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, attach_elastic_load_balancer_errors(), tuple()}.
attach_elastic_load_balancer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AttachElasticLoadBalancer">>, Input, Options).

%% @doc Creates a clone of a specified stack.
%%
%% For more information, see Clone a
%% Stack:
%% https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-cloning.html.
%% By default, all parameters are set to the values used by the parent stack.
%%
%% Required Permissions: To use this action, an IAM user must have an
%% attached policy
%% that explicitly grants permissions. For more information about user
%% permissions, see Managing User
%% Permissions:
%% https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html.
-spec clone_stack(aws_client:aws_client(), clone_stack_request()) ->
    {ok, clone_stack_result(), tuple()} |
    {error, any()} |
    {error, clone_stack_errors(), tuple()}.
clone_stack(Client, Input)
  when is_map(Client), is_map(Input) ->
    clone_stack(Client, Input, []).

-spec clone_stack(aws_client:aws_client(), clone_stack_request(), proplists:proplist()) ->
    {ok, clone_stack_result(), tuple()} |
    {error, any()} |
    {error, clone_stack_errors(), tuple()}.
clone_stack(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CloneStack">>, Input, Options).

%% @doc Creates an app for a specified stack.
%%
%% For more information, see Creating
%% Apps:
%% https://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html.
%%
%% Required Permissions: To use this action, an IAM user must have a Manage
%% permissions
%% level for the stack, or an attached policy that explicitly grants
%% permissions. For more
%% information on user permissions, see Managing User
%% Permissions:
%% https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html.
-spec create_app(aws_client:aws_client(), create_app_request()) ->
    {ok, create_app_result(), tuple()} |
    {error, any()} |
    {error, create_app_errors(), tuple()}.
create_app(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_app(Client, Input, []).

-spec create_app(aws_client:aws_client(), create_app_request(), proplists:proplist()) ->
    {ok, create_app_result(), tuple()} |
    {error, any()} |
    {error, create_app_errors(), tuple()}.
create_app(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateApp">>, Input, Options).

%% @doc Runs deployment or stack commands.
%%
%% For more information, see Deploying
%% Apps:
%% https://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-deploying.html
%% and Run Stack Commands:
%% https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-commands.html.
%%
%% Required Permissions: To use this action, an IAM user must have a Deploy
%% or Manage
%% permissions level for the stack, or an attached policy that explicitly
%% grants permissions. For
%% more information on user permissions, see Managing User
%% Permissions:
%% https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html.
-spec create_deployment(aws_client:aws_client(), create_deployment_request()) ->
    {ok, create_deployment_result(), tuple()} |
    {error, any()} |
    {error, create_deployment_errors(), tuple()}.
create_deployment(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_deployment(Client, Input, []).

-spec create_deployment(aws_client:aws_client(), create_deployment_request(), proplists:proplist()) ->
    {ok, create_deployment_result(), tuple()} |
    {error, any()} |
    {error, create_deployment_errors(), tuple()}.
create_deployment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDeployment">>, Input, Options).

%% @doc Creates an instance in a specified stack.
%%
%% For more information, see Adding an
%% Instance to a Layer:
%% https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-add.html.
%%
%% Required Permissions: To use this action, an IAM user must have a Manage
%% permissions
%% level for the stack, or an attached policy that explicitly grants
%% permissions. For more
%% information on user permissions, see Managing User
%% Permissions:
%% https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html.
-spec create_instance(aws_client:aws_client(), create_instance_request()) ->
    {ok, create_instance_result(), tuple()} |
    {error, any()} |
    {error, create_instance_errors(), tuple()}.
create_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_instance(Client, Input, []).

-spec create_instance(aws_client:aws_client(), create_instance_request(), proplists:proplist()) ->
    {ok, create_instance_result(), tuple()} |
    {error, any()} |
    {error, create_instance_errors(), tuple()}.
create_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateInstance">>, Input, Options).

%% @doc Creates a layer.
%%
%% For more information, see How to
%% Create a Layer:
%% https://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-create.html.
%%
%% You should use CreateLayer for noncustom layer types such as
%% PHP App Server only if the stack
%% does not have an existing layer of that type. A stack can have at most one
%% instance of each
%% noncustom layer; if you attempt to create a second instance, CreateLayer
%% fails. A
%% stack can have an arbitrary number of custom layers, so you can call
%% CreateLayer as
%% many times as you like for that layer type.
%%
%% Required Permissions: To use this action, an IAM user must
%% have a Manage permissions
%% level for the stack, or an attached policy that explicitly grants
%% permissions. For more
%% information on user permissions, see Managing User
%% Permissions:
%% https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html.
-spec create_layer(aws_client:aws_client(), create_layer_request()) ->
    {ok, create_layer_result(), tuple()} |
    {error, any()} |
    {error, create_layer_errors(), tuple()}.
create_layer(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_layer(Client, Input, []).

-spec create_layer(aws_client:aws_client(), create_layer_request(), proplists:proplist()) ->
    {ok, create_layer_result(), tuple()} |
    {error, any()} |
    {error, create_layer_errors(), tuple()}.
create_layer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateLayer">>, Input, Options).

%% @doc Creates a new stack.
%%
%% For more information, see Create a New
%% Stack:
%% https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-edit.html.
%%
%% Required Permissions: To use this action, an IAM user must have an
%% attached policy
%% that explicitly grants permissions. For more information about user
%% permissions, see Managing User
%% Permissions:
%% https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html.
-spec create_stack(aws_client:aws_client(), create_stack_request()) ->
    {ok, create_stack_result(), tuple()} |
    {error, any()} |
    {error, create_stack_errors(), tuple()}.
create_stack(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_stack(Client, Input, []).

-spec create_stack(aws_client:aws_client(), create_stack_request(), proplists:proplist()) ->
    {ok, create_stack_result(), tuple()} |
    {error, any()} |
    {error, create_stack_errors(), tuple()}.
create_stack(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateStack">>, Input, Options).

%% @doc Creates a new user profile.
%%
%% Required Permissions: To use this action, an IAM user must have an
%% attached policy
%% that explicitly grants permissions. For more information about user
%% permissions, see Managing User
%% Permissions:
%% https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html.
-spec create_user_profile(aws_client:aws_client(), create_user_profile_request()) ->
    {ok, create_user_profile_result(), tuple()} |
    {error, any()} |
    {error, create_user_profile_errors(), tuple()}.
create_user_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_user_profile(Client, Input, []).

-spec create_user_profile(aws_client:aws_client(), create_user_profile_request(), proplists:proplist()) ->
    {ok, create_user_profile_result(), tuple()} |
    {error, any()} |
    {error, create_user_profile_errors(), tuple()}.
create_user_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateUserProfile">>, Input, Options).

%% @doc Deletes a specified app.
%%
%% Required Permissions: To use this action, an IAM user must have a
%% Manage permissions
%% level for the stack, or an attached policy that explicitly grants
%% permissions. For more
%% information on user permissions, see Managing User
%% Permissions:
%% https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html.
-spec delete_app(aws_client:aws_client(), delete_app_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_app_errors(), tuple()}.
delete_app(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_app(Client, Input, []).

-spec delete_app(aws_client:aws_client(), delete_app_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_app_errors(), tuple()}.
delete_app(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteApp">>, Input, Options).

%% @doc Deletes a specified instance, which terminates the associated Amazon
%% EC2 instance.
%%
%% You must stop an instance before
%% you can delete it.
%%
%% For more information, see Deleting
%% Instances:
%% https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-delete.html.
%%
%% Required Permissions: To use this action, an IAM user must have a Manage
%% permissions
%% level for the stack, or an attached policy that explicitly grants
%% permissions. For more
%% information on user permissions, see Managing User
%% Permissions:
%% https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html.
-spec delete_instance(aws_client:aws_client(), delete_instance_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_instance_errors(), tuple()}.
delete_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_instance(Client, Input, []).

-spec delete_instance(aws_client:aws_client(), delete_instance_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_instance_errors(), tuple()}.
delete_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteInstance">>, Input, Options).

%% @doc Deletes a specified layer.
%%
%% You must first stop and then delete all associated instances or
%% unassign registered instances. For more information, see How to
%% Delete a Layer:
%% https://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-delete.html.
%%
%% Required Permissions: To use this action, an IAM user must have a
%% Manage permissions
%% level for the stack, or an attached policy that explicitly grants
%% permissions. For more
%% information on user permissions, see Managing User
%% Permissions:
%% https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html.
-spec delete_layer(aws_client:aws_client(), delete_layer_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_layer_errors(), tuple()}.
delete_layer(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_layer(Client, Input, []).

-spec delete_layer(aws_client:aws_client(), delete_layer_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_layer_errors(), tuple()}.
delete_layer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteLayer">>, Input, Options).

%% @doc Deletes a specified stack.
%%
%% You must first delete all instances, layers, and apps or
%% deregister registered instances. For more information, see Shut Down a
%% Stack:
%% https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-shutting.html.
%%
%% Required Permissions: To use this action, an IAM user must have a Manage
%% permissions
%% level for the stack, or an attached policy that explicitly grants
%% permissions. For more
%% information on user permissions, see Managing User
%% Permissions:
%% https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html.
-spec delete_stack(aws_client:aws_client(), delete_stack_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_stack_errors(), tuple()}.
delete_stack(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_stack(Client, Input, []).

-spec delete_stack(aws_client:aws_client(), delete_stack_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_stack_errors(), tuple()}.
delete_stack(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteStack">>, Input, Options).

%% @doc Deletes a user profile.
%%
%% Required Permissions: To use this action, an IAM user must have an
%% attached
%% policy
%% that explicitly grants permissions. For more information about user
%% permissions, see Managing User
%% Permissions:
%% https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html.
-spec delete_user_profile(aws_client:aws_client(), delete_user_profile_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_user_profile_errors(), tuple()}.
delete_user_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_user_profile(Client, Input, []).

-spec delete_user_profile(aws_client:aws_client(), delete_user_profile_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_user_profile_errors(), tuple()}.
delete_user_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteUserProfile">>, Input, Options).

%% @doc Deregisters a specified Amazon ECS cluster from a stack.
%%
%% For more information, see
%%
%% Resource Management:
%% https://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-ecscluster.html#workinglayers-ecscluster-delete.
%%
%% Required Permissions: To use this action, an IAM user must have a Manage
%% permissions
%% level for the stack or an attached policy that explicitly grants
%% permissions. For more
%% information on user permissions, see
%% [https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html].
-spec deregister_ecs_cluster(aws_client:aws_client(), deregister_ecs_cluster_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, deregister_ecs_cluster_errors(), tuple()}.
deregister_ecs_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    deregister_ecs_cluster(Client, Input, []).

-spec deregister_ecs_cluster(aws_client:aws_client(), deregister_ecs_cluster_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, deregister_ecs_cluster_errors(), tuple()}.
deregister_ecs_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeregisterEcsCluster">>, Input, Options).

%% @doc Deregisters a specified Elastic IP address.
%%
%% The address can be registered by another
%% stack after it is deregistered. For more information, see Resource
%% Management:
%% https://docs.aws.amazon.com/opsworks/latest/userguide/resources.html.
%%
%% Required Permissions: To use this action, an IAM user must have a Manage
%% permissions
%% level for the stack, or an attached policy that explicitly grants
%% permissions. For more
%% information on user permissions, see Managing User
%% Permissions:
%% https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html.
-spec deregister_elastic_ip(aws_client:aws_client(), deregister_elastic_ip_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, deregister_elastic_ip_errors(), tuple()}.
deregister_elastic_ip(Client, Input)
  when is_map(Client), is_map(Input) ->
    deregister_elastic_ip(Client, Input, []).

-spec deregister_elastic_ip(aws_client:aws_client(), deregister_elastic_ip_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, deregister_elastic_ip_errors(), tuple()}.
deregister_elastic_ip(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeregisterElasticIp">>, Input, Options).

%% @doc Deregister an instance from OpsWorks Stacks.
%%
%% The instance can be a registered instance (Amazon EC2 or on-premises) or
%% an instance created with OpsWorks.
%% This action removes the instance from the stack and returns it to your
%% control.
%%
%% Required Permissions: To use this action, an IAM user must have a Manage
%% permissions
%% level for the stack or an attached policy that explicitly grants
%% permissions. For more
%% information on user permissions, see Managing User
%% Permissions:
%% https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html.
-spec deregister_instance(aws_client:aws_client(), deregister_instance_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, deregister_instance_errors(), tuple()}.
deregister_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    deregister_instance(Client, Input, []).

-spec deregister_instance(aws_client:aws_client(), deregister_instance_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, deregister_instance_errors(), tuple()}.
deregister_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeregisterInstance">>, Input, Options).

%% @doc Deregisters an Amazon RDS instance.
%%
%% Required Permissions: To use this action, an IAM user must have a Manage
%% permissions
%% level for the stack, or an attached policy that explicitly grants
%% permissions. For more
%% information on user permissions, see Managing User
%% Permissions:
%% https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html.
-spec deregister_rds_db_instance(aws_client:aws_client(), deregister_rds_db_instance_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, deregister_rds_db_instance_errors(), tuple()}.
deregister_rds_db_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    deregister_rds_db_instance(Client, Input, []).

-spec deregister_rds_db_instance(aws_client:aws_client(), deregister_rds_db_instance_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, deregister_rds_db_instance_errors(), tuple()}.
deregister_rds_db_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeregisterRdsDbInstance">>, Input, Options).

%% @doc Deregisters an Amazon EBS volume.
%%
%% The volume can then be registered by another stack. For more
%% information, see Resource
%% Management:
%% https://docs.aws.amazon.com/opsworks/latest/userguide/resources.html.
%%
%% Required Permissions: To use this action, an IAM user must have a Manage
%% permissions
%% level for the stack, or an attached policy that explicitly grants
%% permissions. For more
%% information on user permissions, see Managing User
%% Permissions:
%% https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html.
-spec deregister_volume(aws_client:aws_client(), deregister_volume_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, deregister_volume_errors(), tuple()}.
deregister_volume(Client, Input)
  when is_map(Client), is_map(Input) ->
    deregister_volume(Client, Input, []).

-spec deregister_volume(aws_client:aws_client(), deregister_volume_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, deregister_volume_errors(), tuple()}.
deregister_volume(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeregisterVolume">>, Input, Options).

%% @doc Describes the available OpsWorks Stacks agent versions.
%%
%% You must specify a stack ID or a
%% configuration manager. `DescribeAgentVersions' returns a list of
%% available
%% agent versions for the specified stack or configuration manager.
-spec describe_agent_versions(aws_client:aws_client(), describe_agent_versions_request()) ->
    {ok, describe_agent_versions_result(), tuple()} |
    {error, any()} |
    {error, describe_agent_versions_errors(), tuple()}.
describe_agent_versions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_agent_versions(Client, Input, []).

-spec describe_agent_versions(aws_client:aws_client(), describe_agent_versions_request(), proplists:proplist()) ->
    {ok, describe_agent_versions_result(), tuple()} |
    {error, any()} |
    {error, describe_agent_versions_errors(), tuple()}.
describe_agent_versions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAgentVersions">>, Input, Options).

%% @doc Requests a description of a specified set of apps.
%%
%% This call accepts only one resource-identifying parameter.
%%
%% Required Permissions: To use this action, an IAM user must have a Show,
%% Deploy,
%% or
%% Manage permissions level for the stack, or an attached policy that
%% explicitly grants
%% permissions. For more information about user permissions, see Managing
%% User
%% Permissions:
%% https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html.
-spec describe_apps(aws_client:aws_client(), describe_apps_request()) ->
    {ok, describe_apps_result(), tuple()} |
    {error, any()} |
    {error, describe_apps_errors(), tuple()}.
describe_apps(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_apps(Client, Input, []).

-spec describe_apps(aws_client:aws_client(), describe_apps_request(), proplists:proplist()) ->
    {ok, describe_apps_result(), tuple()} |
    {error, any()} |
    {error, describe_apps_errors(), tuple()}.
describe_apps(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeApps">>, Input, Options).

%% @doc Describes the results of specified commands.
%%
%% This call accepts only one resource-identifying parameter.
%%
%% Required Permissions: To use this action, an IAM user must have a Show,
%% Deploy, or
%% Manage permissions level for the stack, or an attached policy that
%% explicitly grants
%% permissions. For more information about user permissions, see Managing
%% User
%% Permissions:
%% https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html.
-spec describe_commands(aws_client:aws_client(), describe_commands_request()) ->
    {ok, describe_commands_result(), tuple()} |
    {error, any()} |
    {error, describe_commands_errors(), tuple()}.
describe_commands(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_commands(Client, Input, []).

-spec describe_commands(aws_client:aws_client(), describe_commands_request(), proplists:proplist()) ->
    {ok, describe_commands_result(), tuple()} |
    {error, any()} |
    {error, describe_commands_errors(), tuple()}.
describe_commands(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeCommands">>, Input, Options).

%% @doc Requests a description of a specified set of deployments.
%%
%% This call accepts only one resource-identifying parameter.
%%
%% Required Permissions: To use this action, an IAM user must have a Show,
%% Deploy, or
%% Manage permissions level for the stack, or an attached policy that
%% explicitly grants
%% permissions. For more information about user permissions, see Managing
%% User
%% Permissions:
%% https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html.
-spec describe_deployments(aws_client:aws_client(), describe_deployments_request()) ->
    {ok, describe_deployments_result(), tuple()} |
    {error, any()} |
    {error, describe_deployments_errors(), tuple()}.
describe_deployments(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_deployments(Client, Input, []).

-spec describe_deployments(aws_client:aws_client(), describe_deployments_request(), proplists:proplist()) ->
    {ok, describe_deployments_result(), tuple()} |
    {error, any()} |
    {error, describe_deployments_errors(), tuple()}.
describe_deployments(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDeployments">>, Input, Options).

%% @doc Describes Amazon ECS clusters that are registered with a stack.
%%
%% If you specify only a stack ID,
%% you can use the `MaxResults' and `NextToken' parameters to
%% paginate the
%% response. However, OpsWorks Stacks currently supports only one cluster per
%% layer, so the result
%% set has a maximum of one element.
%%
%% Required Permissions: To use this action, an IAM user must have a Show,
%% Deploy, or
%% Manage permissions level for the stack or an attached policy that
%% explicitly grants
%% permission. For more information about user permissions, see Managing User
%% Permissions:
%% https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html.
%%
%% This call accepts only one resource-identifying parameter.
-spec describe_ecs_clusters(aws_client:aws_client(), describe_ecs_clusters_request()) ->
    {ok, describe_ecs_clusters_result(), tuple()} |
    {error, any()} |
    {error, describe_ecs_clusters_errors(), tuple()}.
describe_ecs_clusters(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_ecs_clusters(Client, Input, []).

-spec describe_ecs_clusters(aws_client:aws_client(), describe_ecs_clusters_request(), proplists:proplist()) ->
    {ok, describe_ecs_clusters_result(), tuple()} |
    {error, any()} |
    {error, describe_ecs_clusters_errors(), tuple()}.
describe_ecs_clusters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEcsClusters">>, Input, Options).

%% @doc Describes Elastic IP addresses:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html.
%%
%% This call accepts only one resource-identifying parameter.
%%
%% Required Permissions: To use this action, an IAM user must have a Show,
%% Deploy, or
%% Manage permissions level for the stack, or an attached policy that
%% explicitly grants
%% permissions. For more information about user permissions, see Managing
%% User
%% Permissions:
%% https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html.
-spec describe_elastic_ips(aws_client:aws_client(), describe_elastic_ips_request()) ->
    {ok, describe_elastic_ips_result(), tuple()} |
    {error, any()} |
    {error, describe_elastic_ips_errors(), tuple()}.
describe_elastic_ips(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_elastic_ips(Client, Input, []).

-spec describe_elastic_ips(aws_client:aws_client(), describe_elastic_ips_request(), proplists:proplist()) ->
    {ok, describe_elastic_ips_result(), tuple()} |
    {error, any()} |
    {error, describe_elastic_ips_errors(), tuple()}.
describe_elastic_ips(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeElasticIps">>, Input, Options).

%% @doc Describes a stack's Elastic Load Balancing instances.
%%
%% This call accepts only one resource-identifying parameter.
%%
%% Required Permissions: To use this action, an IAM user must have a Show,
%% Deploy, or
%% Manage permissions level for the stack, or an attached policy that
%% explicitly grants
%% permissions. For more information about user permissions, see Managing
%% User
%% Permissions:
%% https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html.
-spec describe_elastic_load_balancers(aws_client:aws_client(), describe_elastic_load_balancers_request()) ->
    {ok, describe_elastic_load_balancers_result(), tuple()} |
    {error, any()} |
    {error, describe_elastic_load_balancers_errors(), tuple()}.
describe_elastic_load_balancers(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_elastic_load_balancers(Client, Input, []).

-spec describe_elastic_load_balancers(aws_client:aws_client(), describe_elastic_load_balancers_request(), proplists:proplist()) ->
    {ok, describe_elastic_load_balancers_result(), tuple()} |
    {error, any()} |
    {error, describe_elastic_load_balancers_errors(), tuple()}.
describe_elastic_load_balancers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeElasticLoadBalancers">>, Input, Options).

%% @doc Requests a description of a set of instances.
%%
%% This call accepts only one resource-identifying parameter.
%%
%% Required Permissions: To use this action, an IAM user must have a Show,
%% Deploy, or
%% Manage permissions level for the stack, or an attached policy that
%% explicitly grants
%% permissions. For more information about user permissions, see Managing
%% User
%% Permissions:
%% https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html.
-spec describe_instances(aws_client:aws_client(), describe_instances_request()) ->
    {ok, describe_instances_result(), tuple()} |
    {error, any()} |
    {error, describe_instances_errors(), tuple()}.
describe_instances(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_instances(Client, Input, []).

-spec describe_instances(aws_client:aws_client(), describe_instances_request(), proplists:proplist()) ->
    {ok, describe_instances_result(), tuple()} |
    {error, any()} |
    {error, describe_instances_errors(), tuple()}.
describe_instances(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeInstances">>, Input, Options).

%% @doc Requests a description of one or more layers in a specified stack.
%%
%% This call accepts only one resource-identifying parameter.
%%
%% Required Permissions: To use this action, an IAM user must have a Show,
%% Deploy, or
%% Manage permissions level for the stack, or an attached policy that
%% explicitly grants
%% permissions. For more information about user permissions, see Managing
%% User
%% Permissions:
%% https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html.
-spec describe_layers(aws_client:aws_client(), describe_layers_request()) ->
    {ok, describe_layers_result(), tuple()} |
    {error, any()} |
    {error, describe_layers_errors(), tuple()}.
describe_layers(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_layers(Client, Input, []).

-spec describe_layers(aws_client:aws_client(), describe_layers_request(), proplists:proplist()) ->
    {ok, describe_layers_result(), tuple()} |
    {error, any()} |
    {error, describe_layers_errors(), tuple()}.
describe_layers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeLayers">>, Input, Options).

%% @doc Describes load-based auto scaling configurations for specified
%% layers.
%%
%% You must specify at least one of the parameters.
%%
%% Required Permissions: To use this action, an IAM user must have a Show,
%% Deploy, or
%% Manage permissions level for the stack, or an attached policy that
%% explicitly grants
%% permissions. For more information about user permissions, see Managing
%% User
%% Permissions:
%% https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html.
-spec describe_load_based_auto_scaling(aws_client:aws_client(), describe_load_based_auto_scaling_request()) ->
    {ok, describe_load_based_auto_scaling_result(), tuple()} |
    {error, any()} |
    {error, describe_load_based_auto_scaling_errors(), tuple()}.
describe_load_based_auto_scaling(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_load_based_auto_scaling(Client, Input, []).

-spec describe_load_based_auto_scaling(aws_client:aws_client(), describe_load_based_auto_scaling_request(), proplists:proplist()) ->
    {ok, describe_load_based_auto_scaling_result(), tuple()} |
    {error, any()} |
    {error, describe_load_based_auto_scaling_errors(), tuple()}.
describe_load_based_auto_scaling(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeLoadBasedAutoScaling">>, Input, Options).

%% @doc Describes a user's SSH information.
%%
%% Required Permissions: To use this action, an IAM user must have
%% self-management
%% enabled or an attached policy that explicitly grants permissions. For more
%% information about user
%% permissions, see Managing User
%% Permissions:
%% https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html.
-spec describe_my_user_profile(aws_client:aws_client(), #{}) ->
    {ok, describe_my_user_profile_result(), tuple()} |
    {error, any()}.
describe_my_user_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_my_user_profile(Client, Input, []).

-spec describe_my_user_profile(aws_client:aws_client(), #{}, proplists:proplist()) ->
    {ok, describe_my_user_profile_result(), tuple()} |
    {error, any()}.
describe_my_user_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeMyUserProfile">>, Input, Options).

%% @doc Describes the operating systems that are supported by OpsWorks
%% Stacks.
-spec describe_operating_systems(aws_client:aws_client(), #{}) ->
    {ok, describe_operating_systems_response(), tuple()} |
    {error, any()}.
describe_operating_systems(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_operating_systems(Client, Input, []).

-spec describe_operating_systems(aws_client:aws_client(), #{}, proplists:proplist()) ->
    {ok, describe_operating_systems_response(), tuple()} |
    {error, any()}.
describe_operating_systems(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeOperatingSystems">>, Input, Options).

%% @doc Describes the permissions for a specified stack.
%%
%% Required Permissions: To use this action, an IAM user must have a Manage
%% permissions
%% level for the stack, or an attached policy that explicitly grants
%% permissions. For more
%% information on user permissions, see Managing User
%% Permissions:
%% https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html.
-spec describe_permissions(aws_client:aws_client(), describe_permissions_request()) ->
    {ok, describe_permissions_result(), tuple()} |
    {error, any()} |
    {error, describe_permissions_errors(), tuple()}.
describe_permissions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_permissions(Client, Input, []).

-spec describe_permissions(aws_client:aws_client(), describe_permissions_request(), proplists:proplist()) ->
    {ok, describe_permissions_result(), tuple()} |
    {error, any()} |
    {error, describe_permissions_errors(), tuple()}.
describe_permissions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribePermissions">>, Input, Options).

%% @doc Describe an instance's RAID arrays.
%%
%% This call accepts only one resource-identifying parameter.
%%
%% Required Permissions: To use this action, an IAM user must have a Show,
%% Deploy, or
%% Manage permissions level for the stack, or an attached policy that
%% explicitly grants
%% permissions. For more information about user permissions, see Managing
%% User
%% Permissions:
%% https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html.
-spec describe_raid_arrays(aws_client:aws_client(), describe_raid_arrays_request()) ->
    {ok, describe_raid_arrays_result(), tuple()} |
    {error, any()} |
    {error, describe_raid_arrays_errors(), tuple()}.
describe_raid_arrays(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_raid_arrays(Client, Input, []).

-spec describe_raid_arrays(aws_client:aws_client(), describe_raid_arrays_request(), proplists:proplist()) ->
    {ok, describe_raid_arrays_result(), tuple()} |
    {error, any()} |
    {error, describe_raid_arrays_errors(), tuple()}.
describe_raid_arrays(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeRaidArrays">>, Input, Options).

%% @doc Describes Amazon RDS instances.
%%
%% Required Permissions: To use this action, an IAM user must have a Show,
%% Deploy, or
%% Manage permissions level for the stack, or an attached policy that
%% explicitly grants
%% permissions. For more information about user permissions, see Managing
%% User
%% Permissions:
%% https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html.
%%
%% This call accepts only one resource-identifying parameter.
-spec describe_rds_db_instances(aws_client:aws_client(), describe_rds_db_instances_request()) ->
    {ok, describe_rds_db_instances_result(), tuple()} |
    {error, any()} |
    {error, describe_rds_db_instances_errors(), tuple()}.
describe_rds_db_instances(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_rds_db_instances(Client, Input, []).

-spec describe_rds_db_instances(aws_client:aws_client(), describe_rds_db_instances_request(), proplists:proplist()) ->
    {ok, describe_rds_db_instances_result(), tuple()} |
    {error, any()} |
    {error, describe_rds_db_instances_errors(), tuple()}.
describe_rds_db_instances(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeRdsDbInstances">>, Input, Options).

%% @doc Describes OpsWorks Stacks service errors.
%%
%% Required Permissions: To use this action, an IAM user must have a Show,
%% Deploy, or
%% Manage permissions level for the stack, or an attached policy that
%% explicitly grants
%% permissions. For more information about user permissions, see Managing
%% User
%% Permissions:
%% https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html.
%%
%% This call accepts only one resource-identifying parameter.
-spec describe_service_errors(aws_client:aws_client(), describe_service_errors_request()) ->
    {ok, describe_service_errors_result(), tuple()} |
    {error, any()} |
    {error, describe_service_errors_errors(), tuple()}.
describe_service_errors(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_service_errors(Client, Input, []).

-spec describe_service_errors(aws_client:aws_client(), describe_service_errors_request(), proplists:proplist()) ->
    {ok, describe_service_errors_result(), tuple()} |
    {error, any()} |
    {error, describe_service_errors_errors(), tuple()}.
describe_service_errors(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeServiceErrors">>, Input, Options).

%% @doc Requests a description of a stack's provisioning parameters.
%%
%% Required Permissions: To use this action, an IAM user must have a Show,
%% Deploy, or
%% Manage permissions level for the stack or an attached policy that
%% explicitly grants
%% permissions. For more information about user permissions, see Managing
%% User
%% Permissions:
%% https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html.
-spec describe_stack_provisioning_parameters(aws_client:aws_client(), describe_stack_provisioning_parameters_request()) ->
    {ok, describe_stack_provisioning_parameters_result(), tuple()} |
    {error, any()} |
    {error, describe_stack_provisioning_parameters_errors(), tuple()}.
describe_stack_provisioning_parameters(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_stack_provisioning_parameters(Client, Input, []).

-spec describe_stack_provisioning_parameters(aws_client:aws_client(), describe_stack_provisioning_parameters_request(), proplists:proplist()) ->
    {ok, describe_stack_provisioning_parameters_result(), tuple()} |
    {error, any()} |
    {error, describe_stack_provisioning_parameters_errors(), tuple()}.
describe_stack_provisioning_parameters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeStackProvisioningParameters">>, Input, Options).

%% @doc Describes the number of layers and apps in a specified stack, and the
%% number of instances in
%% each state, such as `running_setup' or `online'.
%%
%% Required Permissions: To use this action, an IAM user must have a Show,
%% Deploy, or
%% Manage permissions level for the stack, or an attached policy that
%% explicitly grants
%% permissions. For more information about user permissions, see Managing
%% User
%% Permissions:
%% https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html.
-spec describe_stack_summary(aws_client:aws_client(), describe_stack_summary_request()) ->
    {ok, describe_stack_summary_result(), tuple()} |
    {error, any()} |
    {error, describe_stack_summary_errors(), tuple()}.
describe_stack_summary(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_stack_summary(Client, Input, []).

-spec describe_stack_summary(aws_client:aws_client(), describe_stack_summary_request(), proplists:proplist()) ->
    {ok, describe_stack_summary_result(), tuple()} |
    {error, any()} |
    {error, describe_stack_summary_errors(), tuple()}.
describe_stack_summary(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeStackSummary">>, Input, Options).

%% @doc Requests a description of one or more stacks.
%%
%% Required Permissions: To use this action, an IAM user must have a Show,
%% Deploy, or
%% Manage permissions level for the stack, or an attached policy that
%% explicitly grants
%% permissions. For more information about user permissions, see Managing
%% User
%% Permissions:
%% https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html.
-spec describe_stacks(aws_client:aws_client(), describe_stacks_request()) ->
    {ok, describe_stacks_result(), tuple()} |
    {error, any()} |
    {error, describe_stacks_errors(), tuple()}.
describe_stacks(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_stacks(Client, Input, []).

-spec describe_stacks(aws_client:aws_client(), describe_stacks_request(), proplists:proplist()) ->
    {ok, describe_stacks_result(), tuple()} |
    {error, any()} |
    {error, describe_stacks_errors(), tuple()}.
describe_stacks(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeStacks">>, Input, Options).

%% @doc Describes time-based auto scaling configurations for specified
%% instances.
%%
%% You must specify at least one of the parameters.
%%
%% Required Permissions: To use this action, an IAM user must have a Show,
%% Deploy, or
%% Manage permissions level for the stack, or an attached policy that
%% explicitly grants
%% permissions. For more information about user permissions, see Managing
%% User
%% Permissions:
%% https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html.
-spec describe_time_based_auto_scaling(aws_client:aws_client(), describe_time_based_auto_scaling_request()) ->
    {ok, describe_time_based_auto_scaling_result(), tuple()} |
    {error, any()} |
    {error, describe_time_based_auto_scaling_errors(), tuple()}.
describe_time_based_auto_scaling(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_time_based_auto_scaling(Client, Input, []).

-spec describe_time_based_auto_scaling(aws_client:aws_client(), describe_time_based_auto_scaling_request(), proplists:proplist()) ->
    {ok, describe_time_based_auto_scaling_result(), tuple()} |
    {error, any()} |
    {error, describe_time_based_auto_scaling_errors(), tuple()}.
describe_time_based_auto_scaling(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTimeBasedAutoScaling">>, Input, Options).

%% @doc Describe specified users.
%%
%% Required Permissions: To use this action, an IAM user must have an
%% attached policy
%% that explicitly grants permissions. For more information about user
%% permissions, see Managing User
%% Permissions:
%% https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html.
-spec describe_user_profiles(aws_client:aws_client(), describe_user_profiles_request()) ->
    {ok, describe_user_profiles_result(), tuple()} |
    {error, any()} |
    {error, describe_user_profiles_errors(), tuple()}.
describe_user_profiles(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_user_profiles(Client, Input, []).

-spec describe_user_profiles(aws_client:aws_client(), describe_user_profiles_request(), proplists:proplist()) ->
    {ok, describe_user_profiles_result(), tuple()} |
    {error, any()} |
    {error, describe_user_profiles_errors(), tuple()}.
describe_user_profiles(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeUserProfiles">>, Input, Options).

%% @doc Describes an instance's Amazon EBS volumes.
%%
%% This call accepts only one resource-identifying parameter.
%%
%% Required Permissions: To use this action, an IAM user must have a Show,
%% Deploy, or
%% Manage permissions level for the stack, or an attached policy that
%% explicitly grants
%% permissions. For more information about user permissions, see Managing
%% User
%% Permissions:
%% https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html.
-spec describe_volumes(aws_client:aws_client(), describe_volumes_request()) ->
    {ok, describe_volumes_result(), tuple()} |
    {error, any()} |
    {error, describe_volumes_errors(), tuple()}.
describe_volumes(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_volumes(Client, Input, []).

-spec describe_volumes(aws_client:aws_client(), describe_volumes_request(), proplists:proplist()) ->
    {ok, describe_volumes_result(), tuple()} |
    {error, any()} |
    {error, describe_volumes_errors(), tuple()}.
describe_volumes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeVolumes">>, Input, Options).

%% @doc Detaches a specified Elastic Load Balancing instance from its layer.
%%
%% Required Permissions: To use this action, an IAM user must have a Manage
%% permissions
%% level for the stack, or an attached policy that explicitly grants
%% permissions. For more
%% information on user permissions, see Managing User
%% Permissions:
%% https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html.
-spec detach_elastic_load_balancer(aws_client:aws_client(), detach_elastic_load_balancer_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, detach_elastic_load_balancer_errors(), tuple()}.
detach_elastic_load_balancer(Client, Input)
  when is_map(Client), is_map(Input) ->
    detach_elastic_load_balancer(Client, Input, []).

-spec detach_elastic_load_balancer(aws_client:aws_client(), detach_elastic_load_balancer_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, detach_elastic_load_balancer_errors(), tuple()}.
detach_elastic_load_balancer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DetachElasticLoadBalancer">>, Input, Options).

%% @doc Disassociates an Elastic IP address from its instance.
%%
%% The address remains registered with
%% the stack. For more information, see Resource Management:
%% https://docs.aws.amazon.com/opsworks/latest/userguide/resources.html.
%%
%% Required Permissions: To use this action, an IAM user must have a Manage
%% permissions
%% level for the stack, or an attached policy that explicitly grants
%% permissions. For more
%% information on user permissions, see Managing User
%% Permissions:
%% https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html.
-spec disassociate_elastic_ip(aws_client:aws_client(), disassociate_elastic_ip_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, disassociate_elastic_ip_errors(), tuple()}.
disassociate_elastic_ip(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_elastic_ip(Client, Input, []).

-spec disassociate_elastic_ip(aws_client:aws_client(), disassociate_elastic_ip_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, disassociate_elastic_ip_errors(), tuple()}.
disassociate_elastic_ip(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateElasticIp">>, Input, Options).

%% @doc Gets a generated host name for the specified layer, based on the
%% current host name theme.
%%
%% Required Permissions: To use this action, an IAM user must have a Manage
%% permissions
%% level for the stack, or an attached policy that explicitly grants
%% permissions. For more
%% information on user permissions, see Managing User
%% Permissions:
%% https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html.
-spec get_hostname_suggestion(aws_client:aws_client(), get_hostname_suggestion_request()) ->
    {ok, get_hostname_suggestion_result(), tuple()} |
    {error, any()} |
    {error, get_hostname_suggestion_errors(), tuple()}.
get_hostname_suggestion(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_hostname_suggestion(Client, Input, []).

-spec get_hostname_suggestion(aws_client:aws_client(), get_hostname_suggestion_request(), proplists:proplist()) ->
    {ok, get_hostname_suggestion_result(), tuple()} |
    {error, any()} |
    {error, get_hostname_suggestion_errors(), tuple()}.
get_hostname_suggestion(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetHostnameSuggestion">>, Input, Options).

%% @doc
%% This action can be used only with Windows stacks.
%%
%% Grants RDP access to a Windows instance for a specified time period.
-spec grant_access(aws_client:aws_client(), grant_access_request()) ->
    {ok, grant_access_result(), tuple()} |
    {error, any()} |
    {error, grant_access_errors(), tuple()}.
grant_access(Client, Input)
  when is_map(Client), is_map(Input) ->
    grant_access(Client, Input, []).

-spec grant_access(aws_client:aws_client(), grant_access_request(), proplists:proplist()) ->
    {ok, grant_access_result(), tuple()} |
    {error, any()} |
    {error, grant_access_errors(), tuple()}.
grant_access(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GrantAccess">>, Input, Options).

%% @doc Returns a list of tags that are applied to the specified stack or
%% layer.
-spec list_tags(aws_client:aws_client(), list_tags_request()) ->
    {ok, list_tags_result(), tuple()} |
    {error, any()} |
    {error, list_tags_errors(), tuple()}.
list_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags(Client, Input, []).

-spec list_tags(aws_client:aws_client(), list_tags_request(), proplists:proplist()) ->
    {ok, list_tags_result(), tuple()} |
    {error, any()} |
    {error, list_tags_errors(), tuple()}.
list_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTags">>, Input, Options).

%% @doc Reboots a specified instance.
%%
%% For more information, see Starting,
%% Stopping, and Rebooting Instances:
%% https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-starting.html.
%%
%% Required Permissions: To use this action, an IAM user must have a Manage
%% permissions
%% level for the stack, or an attached policy that explicitly grants
%% permissions. For more
%% information on user permissions, see Managing User
%% Permissions:
%% https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html.
-spec reboot_instance(aws_client:aws_client(), reboot_instance_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, reboot_instance_errors(), tuple()}.
reboot_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    reboot_instance(Client, Input, []).

-spec reboot_instance(aws_client:aws_client(), reboot_instance_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, reboot_instance_errors(), tuple()}.
reboot_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RebootInstance">>, Input, Options).

%% @doc Registers a specified Amazon ECS cluster with a stack.
%%
%% You can register only one
%% cluster with a stack. A cluster can be registered with only one stack.
%% For more information, see
%%
%% Resource Management:
%% https://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-ecscluster.html.
%%
%% Required Permissions: To use this action, an IAM user must have a Manage
%% permissions
%% level for the stack or an attached policy that explicitly grants
%% permissions. For more
%% information on user permissions, see
%%
%% Managing User Permissions:
%% https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html.
-spec register_ecs_cluster(aws_client:aws_client(), register_ecs_cluster_request()) ->
    {ok, register_ecs_cluster_result(), tuple()} |
    {error, any()} |
    {error, register_ecs_cluster_errors(), tuple()}.
register_ecs_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    register_ecs_cluster(Client, Input, []).

-spec register_ecs_cluster(aws_client:aws_client(), register_ecs_cluster_request(), proplists:proplist()) ->
    {ok, register_ecs_cluster_result(), tuple()} |
    {error, any()} |
    {error, register_ecs_cluster_errors(), tuple()}.
register_ecs_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RegisterEcsCluster">>, Input, Options).

%% @doc Registers an Elastic IP address with a specified stack.
%%
%% An address can be registered with
%% only one stack at a time. If the address is already registered, you must
%% first deregister it
%% by calling `DeregisterElasticIp'. For more information, see Resource
%% Management:
%% https://docs.aws.amazon.com/opsworks/latest/userguide/resources.html.
%%
%% Required Permissions: To use this action, an IAM user must have a Manage
%% permissions
%% level for the stack, or an attached policy that explicitly grants
%% permissions. For more
%% information on user permissions, see Managing User
%% Permissions:
%% https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html.
-spec register_elastic_ip(aws_client:aws_client(), register_elastic_ip_request()) ->
    {ok, register_elastic_ip_result(), tuple()} |
    {error, any()} |
    {error, register_elastic_ip_errors(), tuple()}.
register_elastic_ip(Client, Input)
  when is_map(Client), is_map(Input) ->
    register_elastic_ip(Client, Input, []).

-spec register_elastic_ip(aws_client:aws_client(), register_elastic_ip_request(), proplists:proplist()) ->
    {ok, register_elastic_ip_result(), tuple()} |
    {error, any()} |
    {error, register_elastic_ip_errors(), tuple()}.
register_elastic_ip(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RegisterElasticIp">>, Input, Options).

%% @doc Registers instances that were created outside of OpsWorks Stacks with
%% a specified stack.
%%
%% We do not recommend using this action to register instances. The complete
%% registration
%% operation includes two tasks: installing the OpsWorks Stacks agent on the
%% instance, and registering
%% the instance with the stack. `RegisterInstance' handles only the
%% second step. You
%% should instead use the CLI `register' command, which performs the
%% entire
%% registration operation. For more information,
%% see
%% Registering an Instance with an OpsWorks Stacks Stack:
%% https://docs.aws.amazon.com/opsworks/latest/userguide/registered-instances-register.html.
%%
%% Registered instances have the same requirements as instances that are
%% created by using the `CreateInstance'
%% API.
%% For example, registered instances must be running a supported Linux-based
%% operating system, and they must have a supported instance
%% type. For more information about requirements for instances that you want
%% to register, see
%% Preparing the Instance:
%% https://docs.aws.amazon.com/opsworks/latest/userguide/registered-instances-register-registering-preparer.html.
%%
%% Required Permissions: To use this action, an IAM user must have a Manage
%% permissions
%% level for the stack or an attached policy that explicitly grants
%% permissions. For more
%% information on user permissions, see Managing User
%% Permissions:
%% https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html.
-spec register_instance(aws_client:aws_client(), register_instance_request()) ->
    {ok, register_instance_result(), tuple()} |
    {error, any()} |
    {error, register_instance_errors(), tuple()}.
register_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    register_instance(Client, Input, []).

-spec register_instance(aws_client:aws_client(), register_instance_request(), proplists:proplist()) ->
    {ok, register_instance_result(), tuple()} |
    {error, any()} |
    {error, register_instance_errors(), tuple()}.
register_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RegisterInstance">>, Input, Options).

%% @doc Registers an Amazon RDS instance with a stack.
%%
%% Required Permissions: To use this action, an IAM user must have a Manage
%% permissions
%% level for the stack, or an attached policy that explicitly grants
%% permissions. For more
%% information on user permissions, see Managing User
%% Permissions:
%% https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html.
-spec register_rds_db_instance(aws_client:aws_client(), register_rds_db_instance_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, register_rds_db_instance_errors(), tuple()}.
register_rds_db_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    register_rds_db_instance(Client, Input, []).

-spec register_rds_db_instance(aws_client:aws_client(), register_rds_db_instance_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, register_rds_db_instance_errors(), tuple()}.
register_rds_db_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RegisterRdsDbInstance">>, Input, Options).

%% @doc Registers an Amazon EBS volume with a specified stack.
%%
%% A volume can be registered with only one
%% stack at a time. If the volume is already registered, you must first
%% deregister it by calling
%% `DeregisterVolume'. For more information, see Resource Management:
%% https://docs.aws.amazon.com/opsworks/latest/userguide/resources.html.
%%
%% Required Permissions: To use this action, an IAM user must have a Manage
%% permissions
%% level for the stack, or an attached policy that explicitly grants
%% permissions. For more
%% information on user permissions, see Managing User
%% Permissions:
%% https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html.
-spec register_volume(aws_client:aws_client(), register_volume_request()) ->
    {ok, register_volume_result(), tuple()} |
    {error, any()} |
    {error, register_volume_errors(), tuple()}.
register_volume(Client, Input)
  when is_map(Client), is_map(Input) ->
    register_volume(Client, Input, []).

-spec register_volume(aws_client:aws_client(), register_volume_request(), proplists:proplist()) ->
    {ok, register_volume_result(), tuple()} |
    {error, any()} |
    {error, register_volume_errors(), tuple()}.
register_volume(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RegisterVolume">>, Input, Options).

%% @doc Specify the load-based auto scaling configuration for a specified
%% layer.
%%
%% For more
%% information, see Managing
%% Load with Time-based and Load-based Instances:
%% https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-autoscaling.html.
%%
%% To use load-based auto scaling, you must create a set of load-based auto
%% scaling instances.
%% Load-based auto scaling operates only on the instances from that set, so
%% you must ensure that you have created enough
%% instances to handle the maximum anticipated load.
%%
%% Required Permissions: To use this action, an IAM user must have a Manage
%% permissions
%% level for the stack, or an attached policy that explicitly grants
%% permissions. For more
%% information on user permissions, see Managing User
%% Permissions:
%% https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html.
-spec set_load_based_auto_scaling(aws_client:aws_client(), set_load_based_auto_scaling_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, set_load_based_auto_scaling_errors(), tuple()}.
set_load_based_auto_scaling(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_load_based_auto_scaling(Client, Input, []).

-spec set_load_based_auto_scaling(aws_client:aws_client(), set_load_based_auto_scaling_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, set_load_based_auto_scaling_errors(), tuple()}.
set_load_based_auto_scaling(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetLoadBasedAutoScaling">>, Input, Options).

%% @doc Specifies a user's permissions.
%%
%% For more information, see
%% Security and
%% Permissions:
%% https://docs.aws.amazon.com/opsworks/latest/userguide/workingsecurity.html.
%%
%% Required Permissions: To use this action, an IAM user must have a Manage
%% permissions
%% level for the stack, or an attached policy that explicitly grants
%% permissions. For more
%% information on user permissions, see Managing User
%% Permissions:
%% https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html.
-spec set_permission(aws_client:aws_client(), set_permission_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, set_permission_errors(), tuple()}.
set_permission(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_permission(Client, Input, []).

-spec set_permission(aws_client:aws_client(), set_permission_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, set_permission_errors(), tuple()}.
set_permission(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetPermission">>, Input, Options).

%% @doc Specify the time-based auto scaling configuration for a specified
%% instance.
%%
%% For more
%% information, see Managing
%% Load with Time-based and Load-based Instances:
%% https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-autoscaling.html.
%%
%% Required Permissions: To use this action, an IAM user must have a Manage
%% permissions
%% level for the stack, or an attached policy that explicitly grants
%% permissions. For more
%% information on user permissions, see Managing User
%% Permissions:
%% https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html.
-spec set_time_based_auto_scaling(aws_client:aws_client(), set_time_based_auto_scaling_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, set_time_based_auto_scaling_errors(), tuple()}.
set_time_based_auto_scaling(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_time_based_auto_scaling(Client, Input, []).

-spec set_time_based_auto_scaling(aws_client:aws_client(), set_time_based_auto_scaling_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, set_time_based_auto_scaling_errors(), tuple()}.
set_time_based_auto_scaling(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetTimeBasedAutoScaling">>, Input, Options).

%% @doc Starts a specified instance.
%%
%% For more information, see Starting,
%% Stopping, and Rebooting Instances:
%% https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-starting.html.
%%
%% Required Permissions: To use this action, an IAM user must have a Manage
%% permissions
%% level for the stack, or an attached policy that explicitly grants
%% permissions. For more
%% information on user permissions, see Managing User
%% Permissions:
%% https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html.
-spec start_instance(aws_client:aws_client(), start_instance_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, start_instance_errors(), tuple()}.
start_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_instance(Client, Input, []).

-spec start_instance(aws_client:aws_client(), start_instance_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, start_instance_errors(), tuple()}.
start_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartInstance">>, Input, Options).

%% @doc Starts a stack's instances.
%%
%% Required Permissions: To use this action, an IAM user must have a Manage
%% permissions
%% level for the stack, or an attached policy that explicitly grants
%% permissions. For more
%% information on user permissions, see Managing User
%% Permissions:
%% https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html.
-spec start_stack(aws_client:aws_client(), start_stack_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, start_stack_errors(), tuple()}.
start_stack(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_stack(Client, Input, []).

-spec start_stack(aws_client:aws_client(), start_stack_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, start_stack_errors(), tuple()}.
start_stack(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartStack">>, Input, Options).

%% @doc Stops a specified instance.
%%
%% When you stop a standard instance, the data disappears and must
%% be reinstalled when you restart the instance. You can stop an Amazon
%% EBS-backed instance without
%% losing data. For more information, see Starting,
%% Stopping, and Rebooting Instances:
%% https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-starting.html.
%%
%% Required Permissions: To use this action, an IAM user must have a Manage
%% permissions
%% level for the stack, or an attached policy that explicitly grants
%% permissions. For more
%% information on user permissions, see Managing User
%% Permissions:
%% https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html.
-spec stop_instance(aws_client:aws_client(), stop_instance_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, stop_instance_errors(), tuple()}.
stop_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_instance(Client, Input, []).

-spec stop_instance(aws_client:aws_client(), stop_instance_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, stop_instance_errors(), tuple()}.
stop_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopInstance">>, Input, Options).

%% @doc Stops a specified stack.
%%
%% Required Permissions: To use this action, an IAM user must have a Manage
%% permissions
%% level for the stack, or an attached policy that explicitly grants
%% permissions. For more
%% information on user permissions, see Managing User
%% Permissions:
%% https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html.
-spec stop_stack(aws_client:aws_client(), stop_stack_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, stop_stack_errors(), tuple()}.
stop_stack(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_stack(Client, Input, []).

-spec stop_stack(aws_client:aws_client(), stop_stack_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, stop_stack_errors(), tuple()}.
stop_stack(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopStack">>, Input, Options).

%% @doc Apply cost-allocation tags to a specified stack or layer in OpsWorks
%% Stacks.
%%
%% For more information about how
%% tagging works, see Tags:
%% https://docs.aws.amazon.com/opsworks/latest/userguide/tagging.html in the
%% OpsWorks User Guide.
-spec tag_resource(aws_client:aws_client(), tag_resource_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).

-spec tag_resource(aws_client:aws_client(), tag_resource_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Unassigns a registered instance from all layers that are using the
%% instance.
%%
%% The instance remains in the stack as an unassigned instance, and can be
%% assigned to
%% another layer as needed. You cannot use this action with instances that
%% were created
%% with OpsWorks Stacks.
%%
%% Required Permissions: To use this action, an IAM user must
%% have a Manage permissions level for the stack or an attached policy that
%% explicitly
%% grants permissions. For more information about user permissions, see
%% Managing User
%% Permissions:
%% https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html.
-spec unassign_instance(aws_client:aws_client(), unassign_instance_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, unassign_instance_errors(), tuple()}.
unassign_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    unassign_instance(Client, Input, []).

-spec unassign_instance(aws_client:aws_client(), unassign_instance_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, unassign_instance_errors(), tuple()}.
unassign_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UnassignInstance">>, Input, Options).

%% @doc Unassigns an assigned Amazon EBS volume.
%%
%% The volume remains registered with the stack. For more
%% information, see Resource
%% Management:
%% https://docs.aws.amazon.com/opsworks/latest/userguide/resources.html.
%%
%% Required Permissions: To use this action, an IAM user must have a Manage
%% permissions
%% level for the stack, or an attached policy that explicitly grants
%% permissions. For more
%% information on user permissions, see Managing User
%% Permissions:
%% https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html.
-spec unassign_volume(aws_client:aws_client(), unassign_volume_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, unassign_volume_errors(), tuple()}.
unassign_volume(Client, Input)
  when is_map(Client), is_map(Input) ->
    unassign_volume(Client, Input, []).

-spec unassign_volume(aws_client:aws_client(), unassign_volume_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, unassign_volume_errors(), tuple()}.
unassign_volume(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UnassignVolume">>, Input, Options).

%% @doc Removes tags from a specified stack or layer.
-spec untag_resource(aws_client:aws_client(), untag_resource_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).

-spec untag_resource(aws_client:aws_client(), untag_resource_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc Updates a specified app.
%%
%% Required Permissions: To use this action, an IAM user must have a Deploy
%% or Manage
%% permissions level for the stack, or an attached policy that explicitly
%% grants permissions. For
%% more information on user permissions, see Managing User
%% Permissions:
%% https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html.
-spec update_app(aws_client:aws_client(), update_app_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_app_errors(), tuple()}.
update_app(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_app(Client, Input, []).

-spec update_app(aws_client:aws_client(), update_app_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_app_errors(), tuple()}.
update_app(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateApp">>, Input, Options).

%% @doc Updates a registered Elastic IP address's name.
%%
%% For more information, see Resource Management:
%% https://docs.aws.amazon.com/opsworks/latest/userguide/resources.html.
%%
%% Required Permissions: To use this action, an IAM user must have a Manage
%% permissions
%% level for the stack, or an attached policy that explicitly grants
%% permissions. For more
%% information on user permissions, see Managing User
%% Permissions:
%% https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html.
-spec update_elastic_ip(aws_client:aws_client(), update_elastic_ip_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_elastic_ip_errors(), tuple()}.
update_elastic_ip(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_elastic_ip(Client, Input, []).

-spec update_elastic_ip(aws_client:aws_client(), update_elastic_ip_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_elastic_ip_errors(), tuple()}.
update_elastic_ip(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateElasticIp">>, Input, Options).

%% @doc Updates a specified instance.
%%
%% Required Permissions: To use this action, an IAM user must have a Manage
%% permissions
%% level for the stack, or an attached policy that explicitly grants
%% permissions. For more
%% information on user permissions, see Managing User
%% Permissions:
%% https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html.
-spec update_instance(aws_client:aws_client(), update_instance_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_instance_errors(), tuple()}.
update_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_instance(Client, Input, []).

-spec update_instance(aws_client:aws_client(), update_instance_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_instance_errors(), tuple()}.
update_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateInstance">>, Input, Options).

%% @doc Updates a specified layer.
%%
%% Required Permissions: To use this action, an IAM user must have a Manage
%% permissions
%% level for the stack, or an attached policy that explicitly grants
%% permissions. For more
%% information on user permissions, see Managing User
%% Permissions:
%% https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html.
-spec update_layer(aws_client:aws_client(), update_layer_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_layer_errors(), tuple()}.
update_layer(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_layer(Client, Input, []).

-spec update_layer(aws_client:aws_client(), update_layer_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_layer_errors(), tuple()}.
update_layer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateLayer">>, Input, Options).

%% @doc Updates a user's SSH public key.
%%
%% Required Permissions: To use this action, an IAM user must have
%% self-management
%% enabled or an attached policy that explicitly grants permissions. For more
%% information about user
%% permissions, see Managing User
%% Permissions:
%% https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html.
-spec update_my_user_profile(aws_client:aws_client(), update_my_user_profile_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_my_user_profile_errors(), tuple()}.
update_my_user_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_my_user_profile(Client, Input, []).

-spec update_my_user_profile(aws_client:aws_client(), update_my_user_profile_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_my_user_profile_errors(), tuple()}.
update_my_user_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateMyUserProfile">>, Input, Options).

%% @doc Updates an Amazon RDS instance.
%%
%% Required Permissions: To use this action, an IAM user must have a Manage
%% permissions
%% level for the stack, or an attached policy that explicitly grants
%% permissions. For more
%% information on user permissions, see Managing User
%% Permissions:
%% https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html.
-spec update_rds_db_instance(aws_client:aws_client(), update_rds_db_instance_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_rds_db_instance_errors(), tuple()}.
update_rds_db_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_rds_db_instance(Client, Input, []).

-spec update_rds_db_instance(aws_client:aws_client(), update_rds_db_instance_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_rds_db_instance_errors(), tuple()}.
update_rds_db_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateRdsDbInstance">>, Input, Options).

%% @doc Updates a specified stack.
%%
%% Required Permissions: To use this action, an IAM user must have a Manage
%% permissions
%% level for the stack, or an attached policy that explicitly grants
%% permissions. For more
%% information on user permissions, see Managing User
%% Permissions:
%% https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html.
-spec update_stack(aws_client:aws_client(), update_stack_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_stack_errors(), tuple()}.
update_stack(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_stack(Client, Input, []).

-spec update_stack(aws_client:aws_client(), update_stack_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_stack_errors(), tuple()}.
update_stack(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateStack">>, Input, Options).

%% @doc Updates a specified user profile.
%%
%% Required Permissions: To use this action, an IAM user must have an
%% attached policy
%% that explicitly grants permissions. For more information about user
%% permissions, see Managing User
%% Permissions:
%% https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html.
-spec update_user_profile(aws_client:aws_client(), update_user_profile_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_user_profile_errors(), tuple()}.
update_user_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_user_profile(Client, Input, []).

-spec update_user_profile(aws_client:aws_client(), update_user_profile_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_user_profile_errors(), tuple()}.
update_user_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateUserProfile">>, Input, Options).

%% @doc Updates an Amazon EBS volume's name or mount point.
%%
%% For more information, see
%% Resource Management:
%% https://docs.aws.amazon.com/opsworks/latest/userguide/resources.html.
%%
%% Required Permissions: To use this action, an IAM user must have a Manage
%% permissions
%% level for the stack, or an attached policy that explicitly grants
%% permissions. For more
%% information on user permissions, see Managing User
%% Permissions:
%% https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html.
-spec update_volume(aws_client:aws_client(), update_volume_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_volume_errors(), tuple()}.
update_volume(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_volume(Client, Input, []).

-spec update_volume(aws_client:aws_client(), update_volume_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_volume_errors(), tuple()}.
update_volume(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateVolume">>, Input, Options).

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
    Client1 = Client#{service => <<"opsworks">>},
    Host = build_host(<<"opsworks">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"OpsWorks_20130218.", Action/binary>>}
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
