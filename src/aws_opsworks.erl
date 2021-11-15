%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc AWS OpsWorks
%%
%% Welcome to the AWS OpsWorks Stacks API Reference.
%%
%% This guide provides descriptions, syntax, and usage examples for AWS
%% OpsWorks Stacks actions and data types, including common parameters and
%% error codes.
%%
%% AWS OpsWorks Stacks is an application management service that provides an
%% integrated experience for overseeing the complete application lifecycle.
%% For information about this product, go to the AWS OpsWorks details page.
%%
%% SDKs and CLI
%%
%% The most common way to use the AWS OpsWorks Stacks API is by using the AWS
%% Command Line Interface (CLI) or by using one of the AWS SDKs to implement
%% applications in your preferred language. For more information, see:
%%
%% <ul> <li> AWS CLI
%%
%% </li> <li> AWS SDK for Java
%%
%% </li> <li> AWS SDK for .NET
%%
%% </li> <li> AWS SDK for PHP 2
%%
%% </li> <li> AWS SDK for Ruby
%%
%% </li> <li> AWS SDK for Node.js
%%
%% </li> <li> AWS SDK for Python(Boto)
%%
%% </li> </ul> Endpoints
%%
%% AWS OpsWorks Stacks supports the following endpoints, all HTTPS. You must
%% connect to one of the following endpoints. Stacks can only be accessed or
%% managed within the endpoint in which they are created.
%%
%% <ul> <li> opsworks.us-east-1.amazonaws.com
%%
%% </li> <li> opsworks.us-east-2.amazonaws.com
%%
%% </li> <li> opsworks.us-west-1.amazonaws.com
%%
%% </li> <li> opsworks.us-west-2.amazonaws.com
%%
%% </li> <li> opsworks.ca-central-1.amazonaws.com (API only; not available in
%% the AWS console)
%%
%% </li> <li> opsworks.eu-west-1.amazonaws.com
%%
%% </li> <li> opsworks.eu-west-2.amazonaws.com
%%
%% </li> <li> opsworks.eu-west-3.amazonaws.com
%%
%% </li> <li> opsworks.eu-central-1.amazonaws.com
%%
%% </li> <li> opsworks.ap-northeast-1.amazonaws.com
%%
%% </li> <li> opsworks.ap-northeast-2.amazonaws.com
%%
%% </li> <li> opsworks.ap-south-1.amazonaws.com
%%
%% </li> <li> opsworks.ap-southeast-1.amazonaws.com
%%
%% </li> <li> opsworks.ap-southeast-2.amazonaws.com
%%
%% </li> <li> opsworks.sa-east-1.amazonaws.com
%%
%% </li> </ul> Chef Versions
%%
%% When you call `CreateStack', `CloneStack', or `UpdateStack' we recommend
%% you use the `ConfigurationManager' parameter to specify the Chef version.
%% The recommended and default value for Linux stacks is currently 12.
%% Windows stacks use Chef 12.2. For more information, see Chef Versions.
%%
%% You can specify Chef 12, 11.10, or 11.4 for your Linux stack. We recommend
%% migrating your existing Linux stacks to Chef 12 as soon as possible.
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

%%====================================================================
%% API
%%====================================================================

%% @doc Assign a registered instance to a layer.
%%
%% <ul> <li> You can assign registered on-premises instances to any layer
%% type.
%%
%% </li> <li> You can assign registered Amazon EC2 instances only to custom
%% layers.
%%
%% </li> <li> You cannot use this action with instances that were created
%% with AWS OpsWorks Stacks.
%%
%% </li> </ul> Required Permissions: To use this action, an AWS Identity and
%% Access Management (IAM) user must have a Manage permissions level for the
%% stack or an attached policy that explicitly grants permissions. For more
%% information on user permissions, see Managing User Permissions.
assign_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    assign_instance(Client, Input, []).
assign_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssignInstance">>, Input, Options).

%% @doc Assigns one of the stack's registered Amazon EBS volumes to a
%% specified instance.
%%
%% The volume must first be registered with the stack by calling
%% `RegisterVolume'. After you register the volume, you must call
%% `UpdateVolume' to specify a mount point before calling `AssignVolume'. For
%% more information, see Resource Management.
%%
%% Required Permissions: To use this action, an IAM user must have a Manage
%% permissions level for the stack, or an attached policy that explicitly
%% grants permissions. For more information on user permissions, see Managing
%% User Permissions.
assign_volume(Client, Input)
  when is_map(Client), is_map(Input) ->
    assign_volume(Client, Input, []).
assign_volume(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssignVolume">>, Input, Options).

%% @doc Associates one of the stack's registered Elastic IP addresses with a
%% specified instance.
%%
%% The address must first be registered with the stack by calling
%% `RegisterElasticIp'. For more information, see Resource Management.
%%
%% Required Permissions: To use this action, an IAM user must have a Manage
%% permissions level for the stack, or an attached policy that explicitly
%% grants permissions. For more information on user permissions, see Managing
%% User Permissions.
associate_elastic_ip(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_elastic_ip(Client, Input, []).
associate_elastic_ip(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateElasticIp">>, Input, Options).

%% @doc Attaches an Elastic Load Balancing load balancer to a specified
%% layer.
%%
%% AWS OpsWorks Stacks does not support Application Load Balancer. You can
%% only use Classic Load Balancer with AWS OpsWorks Stacks. For more
%% information, see Elastic Load Balancing.
%%
%% You must create the Elastic Load Balancing instance separately, by using
%% the Elastic Load Balancing console, API, or CLI. For more information, see
%% Elastic Load Balancing Developer Guide.
%%
%% Required Permissions: To use this action, an IAM user must have a Manage
%% permissions level for the stack, or an attached policy that explicitly
%% grants permissions. For more information on user permissions, see Managing
%% User Permissions.
attach_elastic_load_balancer(Client, Input)
  when is_map(Client), is_map(Input) ->
    attach_elastic_load_balancer(Client, Input, []).
attach_elastic_load_balancer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AttachElasticLoadBalancer">>, Input, Options).

%% @doc Creates a clone of a specified stack.
%%
%% For more information, see Clone a Stack. By default, all parameters are
%% set to the values used by the parent stack.
%%
%% Required Permissions: To use this action, an IAM user must have an
%% attached policy that explicitly grants permissions. For more information
%% about user permissions, see Managing User Permissions.
clone_stack(Client, Input)
  when is_map(Client), is_map(Input) ->
    clone_stack(Client, Input, []).
clone_stack(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CloneStack">>, Input, Options).

%% @doc Creates an app for a specified stack.
%%
%% For more information, see Creating Apps.
%%
%% Required Permissions: To use this action, an IAM user must have a Manage
%% permissions level for the stack, or an attached policy that explicitly
%% grants permissions. For more information on user permissions, see Managing
%% User Permissions.
create_app(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_app(Client, Input, []).
create_app(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateApp">>, Input, Options).

%% @doc Runs deployment or stack commands.
%%
%% For more information, see Deploying Apps and Run Stack Commands.
%%
%% Required Permissions: To use this action, an IAM user must have a Deploy
%% or Manage permissions level for the stack, or an attached policy that
%% explicitly grants permissions. For more information on user permissions,
%% see Managing User Permissions.
create_deployment(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_deployment(Client, Input, []).
create_deployment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDeployment">>, Input, Options).

%% @doc Creates an instance in a specified stack.
%%
%% For more information, see Adding an Instance to a Layer.
%%
%% Required Permissions: To use this action, an IAM user must have a Manage
%% permissions level for the stack, or an attached policy that explicitly
%% grants permissions. For more information on user permissions, see Managing
%% User Permissions.
create_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_instance(Client, Input, []).
create_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateInstance">>, Input, Options).

%% @doc Creates a layer.
%%
%% For more information, see How to Create a Layer.
%%
%% You should use CreateLayer for noncustom layer types such as PHP App
%% Server only if the stack does not have an existing layer of that type. A
%% stack can have at most one instance of each noncustom layer; if you
%% attempt to create a second instance, CreateLayer fails. A stack can have
%% an arbitrary number of custom layers, so you can call CreateLayer as many
%% times as you like for that layer type.
%%
%% Required Permissions: To use this action, an IAM user must have a Manage
%% permissions level for the stack, or an attached policy that explicitly
%% grants permissions. For more information on user permissions, see Managing
%% User Permissions.
create_layer(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_layer(Client, Input, []).
create_layer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateLayer">>, Input, Options).

%% @doc Creates a new stack.
%%
%% For more information, see Create a New Stack.
%%
%% Required Permissions: To use this action, an IAM user must have an
%% attached policy that explicitly grants permissions. For more information
%% about user permissions, see Managing User Permissions.
create_stack(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_stack(Client, Input, []).
create_stack(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateStack">>, Input, Options).

%% @doc Creates a new user profile.
%%
%% Required Permissions: To use this action, an IAM user must have an
%% attached policy that explicitly grants permissions. For more information
%% about user permissions, see Managing User Permissions.
create_user_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_user_profile(Client, Input, []).
create_user_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateUserProfile">>, Input, Options).

%% @doc Deletes a specified app.
%%
%% Required Permissions: To use this action, an IAM user must have a Manage
%% permissions level for the stack, or an attached policy that explicitly
%% grants permissions. For more information on user permissions, see Managing
%% User Permissions.
delete_app(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_app(Client, Input, []).
delete_app(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteApp">>, Input, Options).

%% @doc Deletes a specified instance, which terminates the associated Amazon
%% EC2 instance.
%%
%% You must stop an instance before you can delete it.
%%
%% For more information, see Deleting Instances.
%%
%% Required Permissions: To use this action, an IAM user must have a Manage
%% permissions level for the stack, or an attached policy that explicitly
%% grants permissions. For more information on user permissions, see Managing
%% User Permissions.
delete_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_instance(Client, Input, []).
delete_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteInstance">>, Input, Options).

%% @doc Deletes a specified layer.
%%
%% You must first stop and then delete all associated instances or unassign
%% registered instances. For more information, see How to Delete a Layer.
%%
%% Required Permissions: To use this action, an IAM user must have a Manage
%% permissions level for the stack, or an attached policy that explicitly
%% grants permissions. For more information on user permissions, see Managing
%% User Permissions.
delete_layer(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_layer(Client, Input, []).
delete_layer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteLayer">>, Input, Options).

%% @doc Deletes a specified stack.
%%
%% You must first delete all instances, layers, and apps or deregister
%% registered instances. For more information, see Shut Down a Stack.
%%
%% Required Permissions: To use this action, an IAM user must have a Manage
%% permissions level for the stack, or an attached policy that explicitly
%% grants permissions. For more information on user permissions, see Managing
%% User Permissions.
delete_stack(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_stack(Client, Input, []).
delete_stack(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteStack">>, Input, Options).

%% @doc Deletes a user profile.
%%
%% Required Permissions: To use this action, an IAM user must have an
%% attached policy that explicitly grants permissions. For more information
%% about user permissions, see Managing User Permissions.
delete_user_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_user_profile(Client, Input, []).
delete_user_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteUserProfile">>, Input, Options).

%% @doc Deregisters a specified Amazon ECS cluster from a stack.
%%
%% For more information, see Resource Management.
%%
%% Required Permissions: To use this action, an IAM user must have a Manage
%% permissions level for the stack or an attached policy that explicitly
%% grants permissions. For more information on user permissions, see
%% [https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html].
deregister_ecs_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    deregister_ecs_cluster(Client, Input, []).
deregister_ecs_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeregisterEcsCluster">>, Input, Options).

%% @doc Deregisters a specified Elastic IP address.
%%
%% The address can then be registered by another stack. For more information,
%% see Resource Management.
%%
%% Required Permissions: To use this action, an IAM user must have a Manage
%% permissions level for the stack, or an attached policy that explicitly
%% grants permissions. For more information on user permissions, see Managing
%% User Permissions.
deregister_elastic_ip(Client, Input)
  when is_map(Client), is_map(Input) ->
    deregister_elastic_ip(Client, Input, []).
deregister_elastic_ip(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeregisterElasticIp">>, Input, Options).

%% @doc Deregister a registered Amazon EC2 or on-premises instance.
%%
%% This action removes the instance from the stack and returns it to your
%% control. This action cannot be used with instances that were created with
%% AWS OpsWorks Stacks.
%%
%% Required Permissions: To use this action, an IAM user must have a Manage
%% permissions level for the stack or an attached policy that explicitly
%% grants permissions. For more information on user permissions, see Managing
%% User Permissions.
deregister_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    deregister_instance(Client, Input, []).
deregister_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeregisterInstance">>, Input, Options).

%% @doc Deregisters an Amazon RDS instance.
%%
%% Required Permissions: To use this action, an IAM user must have a Manage
%% permissions level for the stack, or an attached policy that explicitly
%% grants permissions. For more information on user permissions, see Managing
%% User Permissions.
deregister_rds_db_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    deregister_rds_db_instance(Client, Input, []).
deregister_rds_db_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeregisterRdsDbInstance">>, Input, Options).

%% @doc Deregisters an Amazon EBS volume.
%%
%% The volume can then be registered by another stack. For more information,
%% see Resource Management.
%%
%% Required Permissions: To use this action, an IAM user must have a Manage
%% permissions level for the stack, or an attached policy that explicitly
%% grants permissions. For more information on user permissions, see Managing
%% User Permissions.
deregister_volume(Client, Input)
  when is_map(Client), is_map(Input) ->
    deregister_volume(Client, Input, []).
deregister_volume(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeregisterVolume">>, Input, Options).

%% @doc Describes the available AWS OpsWorks Stacks agent versions.
%%
%% You must specify a stack ID or a configuration manager.
%% `DescribeAgentVersions' returns a list of available agent versions for the
%% specified stack or configuration manager.
describe_agent_versions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_agent_versions(Client, Input, []).
describe_agent_versions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAgentVersions">>, Input, Options).

%% @doc Requests a description of a specified set of apps.
%%
%% This call accepts only one resource-identifying parameter.
%%
%% Required Permissions: To use this action, an IAM user must have a Show,
%% Deploy, or Manage permissions level for the stack, or an attached policy
%% that explicitly grants permissions. For more information about user
%% permissions, see Managing User Permissions.
describe_apps(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_apps(Client, Input, []).
describe_apps(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeApps">>, Input, Options).

%% @doc Describes the results of specified commands.
%%
%% This call accepts only one resource-identifying parameter.
%%
%% Required Permissions: To use this action, an IAM user must have a Show,
%% Deploy, or Manage permissions level for the stack, or an attached policy
%% that explicitly grants permissions. For more information about user
%% permissions, see Managing User Permissions.
describe_commands(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_commands(Client, Input, []).
describe_commands(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeCommands">>, Input, Options).

%% @doc Requests a description of a specified set of deployments.
%%
%% This call accepts only one resource-identifying parameter.
%%
%% Required Permissions: To use this action, an IAM user must have a Show,
%% Deploy, or Manage permissions level for the stack, or an attached policy
%% that explicitly grants permissions. For more information about user
%% permissions, see Managing User Permissions.
describe_deployments(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_deployments(Client, Input, []).
describe_deployments(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDeployments">>, Input, Options).

%% @doc Describes Amazon ECS clusters that are registered with a stack.
%%
%% If you specify only a stack ID, you can use the `MaxResults' and
%% `NextToken' parameters to paginate the response. However, AWS OpsWorks
%% Stacks currently supports only one cluster per layer, so the result set
%% has a maximum of one element.
%%
%% Required Permissions: To use this action, an IAM user must have a Show,
%% Deploy, or Manage permissions level for the stack or an attached policy
%% that explicitly grants permission. For more information about user
%% permissions, see Managing User Permissions.
%%
%% This call accepts only one resource-identifying parameter.
describe_ecs_clusters(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_ecs_clusters(Client, Input, []).
describe_ecs_clusters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEcsClusters">>, Input, Options).

%% @doc Describes Elastic IP addresses.
%%
%% This call accepts only one resource-identifying parameter.
%%
%% Required Permissions: To use this action, an IAM user must have a Show,
%% Deploy, or Manage permissions level for the stack, or an attached policy
%% that explicitly grants permissions. For more information about user
%% permissions, see Managing User Permissions.
describe_elastic_ips(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_elastic_ips(Client, Input, []).
describe_elastic_ips(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeElasticIps">>, Input, Options).

%% @doc Describes a stack's Elastic Load Balancing instances.
%%
%% This call accepts only one resource-identifying parameter.
%%
%% Required Permissions: To use this action, an IAM user must have a Show,
%% Deploy, or Manage permissions level for the stack, or an attached policy
%% that explicitly grants permissions. For more information about user
%% permissions, see Managing User Permissions.
describe_elastic_load_balancers(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_elastic_load_balancers(Client, Input, []).
describe_elastic_load_balancers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeElasticLoadBalancers">>, Input, Options).

%% @doc Requests a description of a set of instances.
%%
%% This call accepts only one resource-identifying parameter.
%%
%% Required Permissions: To use this action, an IAM user must have a Show,
%% Deploy, or Manage permissions level for the stack, or an attached policy
%% that explicitly grants permissions. For more information about user
%% permissions, see Managing User Permissions.
describe_instances(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_instances(Client, Input, []).
describe_instances(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeInstances">>, Input, Options).

%% @doc Requests a description of one or more layers in a specified stack.
%%
%% This call accepts only one resource-identifying parameter.
%%
%% Required Permissions: To use this action, an IAM user must have a Show,
%% Deploy, or Manage permissions level for the stack, or an attached policy
%% that explicitly grants permissions. For more information about user
%% permissions, see Managing User Permissions.
describe_layers(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_layers(Client, Input, []).
describe_layers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeLayers">>, Input, Options).

%% @doc Describes load-based auto scaling configurations for specified
%% layers.
%%
%% You must specify at least one of the parameters.
%%
%% Required Permissions: To use this action, an IAM user must have a Show,
%% Deploy, or Manage permissions level for the stack, or an attached policy
%% that explicitly grants permissions. For more information about user
%% permissions, see Managing User Permissions.
describe_load_based_auto_scaling(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_load_based_auto_scaling(Client, Input, []).
describe_load_based_auto_scaling(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeLoadBasedAutoScaling">>, Input, Options).

%% @doc Describes a user's SSH information.
%%
%% Required Permissions: To use this action, an IAM user must have
%% self-management enabled or an attached policy that explicitly grants
%% permissions. For more information about user permissions, see Managing
%% User Permissions.
describe_my_user_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_my_user_profile(Client, Input, []).
describe_my_user_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeMyUserProfile">>, Input, Options).

%% @doc Describes the operating systems that are supported by AWS OpsWorks
%% Stacks.
describe_operating_systems(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_operating_systems(Client, Input, []).
describe_operating_systems(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeOperatingSystems">>, Input, Options).

%% @doc Describes the permissions for a specified stack.
%%
%% Required Permissions: To use this action, an IAM user must have a Manage
%% permissions level for the stack, or an attached policy that explicitly
%% grants permissions. For more information on user permissions, see Managing
%% User Permissions.
describe_permissions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_permissions(Client, Input, []).
describe_permissions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribePermissions">>, Input, Options).

%% @doc Describe an instance's RAID arrays.
%%
%% This call accepts only one resource-identifying parameter.
%%
%% Required Permissions: To use this action, an IAM user must have a Show,
%% Deploy, or Manage permissions level for the stack, or an attached policy
%% that explicitly grants permissions. For more information about user
%% permissions, see Managing User Permissions.
describe_raid_arrays(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_raid_arrays(Client, Input, []).
describe_raid_arrays(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeRaidArrays">>, Input, Options).

%% @doc Describes Amazon RDS instances.
%%
%% Required Permissions: To use this action, an IAM user must have a Show,
%% Deploy, or Manage permissions level for the stack, or an attached policy
%% that explicitly grants permissions. For more information about user
%% permissions, see Managing User Permissions.
%%
%% This call accepts only one resource-identifying parameter.
describe_rds_db_instances(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_rds_db_instances(Client, Input, []).
describe_rds_db_instances(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeRdsDbInstances">>, Input, Options).

%% @doc Describes AWS OpsWorks Stacks service errors.
%%
%% Required Permissions: To use this action, an IAM user must have a Show,
%% Deploy, or Manage permissions level for the stack, or an attached policy
%% that explicitly grants permissions. For more information about user
%% permissions, see Managing User Permissions.
%%
%% This call accepts only one resource-identifying parameter.
describe_service_errors(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_service_errors(Client, Input, []).
describe_service_errors(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeServiceErrors">>, Input, Options).

%% @doc Requests a description of a stack's provisioning parameters.
%%
%% Required Permissions: To use this action, an IAM user must have a Show,
%% Deploy, or Manage permissions level for the stack or an attached policy
%% that explicitly grants permissions. For more information about user
%% permissions, see Managing User Permissions.
describe_stack_provisioning_parameters(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_stack_provisioning_parameters(Client, Input, []).
describe_stack_provisioning_parameters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeStackProvisioningParameters">>, Input, Options).

%% @doc Describes the number of layers and apps in a specified stack, and the
%% number of instances in each state, such as `running_setup' or `online'.
%%
%% Required Permissions: To use this action, an IAM user must have a Show,
%% Deploy, or Manage permissions level for the stack, or an attached policy
%% that explicitly grants permissions. For more information about user
%% permissions, see Managing User Permissions.
describe_stack_summary(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_stack_summary(Client, Input, []).
describe_stack_summary(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeStackSummary">>, Input, Options).

%% @doc Requests a description of one or more stacks.
%%
%% Required Permissions: To use this action, an IAM user must have a Show,
%% Deploy, or Manage permissions level for the stack, or an attached policy
%% that explicitly grants permissions. For more information about user
%% permissions, see Managing User Permissions.
describe_stacks(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_stacks(Client, Input, []).
describe_stacks(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeStacks">>, Input, Options).

%% @doc Describes time-based auto scaling configurations for specified
%% instances.
%%
%% You must specify at least one of the parameters.
%%
%% Required Permissions: To use this action, an IAM user must have a Show,
%% Deploy, or Manage permissions level for the stack, or an attached policy
%% that explicitly grants permissions. For more information about user
%% permissions, see Managing User Permissions.
describe_time_based_auto_scaling(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_time_based_auto_scaling(Client, Input, []).
describe_time_based_auto_scaling(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTimeBasedAutoScaling">>, Input, Options).

%% @doc Describe specified users.
%%
%% Required Permissions: To use this action, an IAM user must have an
%% attached policy that explicitly grants permissions. For more information
%% about user permissions, see Managing User Permissions.
describe_user_profiles(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_user_profiles(Client, Input, []).
describe_user_profiles(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeUserProfiles">>, Input, Options).

%% @doc Describes an instance's Amazon EBS volumes.
%%
%% This call accepts only one resource-identifying parameter.
%%
%% Required Permissions: To use this action, an IAM user must have a Show,
%% Deploy, or Manage permissions level for the stack, or an attached policy
%% that explicitly grants permissions. For more information about user
%% permissions, see Managing User Permissions.
describe_volumes(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_volumes(Client, Input, []).
describe_volumes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeVolumes">>, Input, Options).

%% @doc Detaches a specified Elastic Load Balancing instance from its layer.
%%
%% Required Permissions: To use this action, an IAM user must have a Manage
%% permissions level for the stack, or an attached policy that explicitly
%% grants permissions. For more information on user permissions, see Managing
%% User Permissions.
detach_elastic_load_balancer(Client, Input)
  when is_map(Client), is_map(Input) ->
    detach_elastic_load_balancer(Client, Input, []).
detach_elastic_load_balancer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DetachElasticLoadBalancer">>, Input, Options).

%% @doc Disassociates an Elastic IP address from its instance.
%%
%% The address remains registered with the stack. For more information, see
%% Resource Management.
%%
%% Required Permissions: To use this action, an IAM user must have a Manage
%% permissions level for the stack, or an attached policy that explicitly
%% grants permissions. For more information on user permissions, see Managing
%% User Permissions.
disassociate_elastic_ip(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_elastic_ip(Client, Input, []).
disassociate_elastic_ip(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateElasticIp">>, Input, Options).

%% @doc Gets a generated host name for the specified layer, based on the
%% current host name theme.
%%
%% Required Permissions: To use this action, an IAM user must have a Manage
%% permissions level for the stack, or an attached policy that explicitly
%% grants permissions. For more information on user permissions, see Managing
%% User Permissions.
get_hostname_suggestion(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_hostname_suggestion(Client, Input, []).
get_hostname_suggestion(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetHostnameSuggestion">>, Input, Options).

%% @doc This action can be used only with Windows stacks.
%%
%% Grants RDP access to a Windows instance for a specified time period.
grant_access(Client, Input)
  when is_map(Client), is_map(Input) ->
    grant_access(Client, Input, []).
grant_access(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GrantAccess">>, Input, Options).

%% @doc Returns a list of tags that are applied to the specified stack or
%% layer.
list_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags(Client, Input, []).
list_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTags">>, Input, Options).

%% @doc Reboots a specified instance.
%%
%% For more information, see Starting, Stopping, and Rebooting Instances.
%%
%% Required Permissions: To use this action, an IAM user must have a Manage
%% permissions level for the stack, or an attached policy that explicitly
%% grants permissions. For more information on user permissions, see Managing
%% User Permissions.
reboot_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    reboot_instance(Client, Input, []).
reboot_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RebootInstance">>, Input, Options).

%% @doc Registers a specified Amazon ECS cluster with a stack.
%%
%% You can register only one cluster with a stack. A cluster can be
%% registered with only one stack. For more information, see Resource
%% Management.
%%
%% Required Permissions: To use this action, an IAM user must have a Manage
%% permissions level for the stack or an attached policy that explicitly
%% grants permissions. For more information on user permissions, see Managing
%% User Permissions.
register_ecs_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    register_ecs_cluster(Client, Input, []).
register_ecs_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RegisterEcsCluster">>, Input, Options).

%% @doc Registers an Elastic IP address with a specified stack.
%%
%% An address can be registered with only one stack at a time. If the address
%% is already registered, you must first deregister it by calling
%% `DeregisterElasticIp'. For more information, see Resource Management.
%%
%% Required Permissions: To use this action, an IAM user must have a Manage
%% permissions level for the stack, or an attached policy that explicitly
%% grants permissions. For more information on user permissions, see Managing
%% User Permissions.
register_elastic_ip(Client, Input)
  when is_map(Client), is_map(Input) ->
    register_elastic_ip(Client, Input, []).
register_elastic_ip(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RegisterElasticIp">>, Input, Options).

%% @doc Registers instances that were created outside of AWS OpsWorks Stacks
%% with a specified stack.
%%
%% We do not recommend using this action to register instances. The complete
%% registration operation includes two tasks: installing the AWS OpsWorks
%% Stacks agent on the instance, and registering the instance with the stack.
%% `RegisterInstance' handles only the second step. You should instead use
%% the AWS CLI `register' command, which performs the entire registration
%% operation. For more information, see Registering an Instance with an AWS
%% OpsWorks Stacks Stack.
%%
%% Registered instances have the same requirements as instances that are
%% created by using the `CreateInstance' API. For example, registered
%% instances must be running a supported Linux-based operating system, and
%% they must have a supported instance type. For more information about
%% requirements for instances that you want to register, see Preparing the
%% Instance.
%%
%% Required Permissions: To use this action, an IAM user must have a Manage
%% permissions level for the stack or an attached policy that explicitly
%% grants permissions. For more information on user permissions, see Managing
%% User Permissions.
register_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    register_instance(Client, Input, []).
register_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RegisterInstance">>, Input, Options).

%% @doc Registers an Amazon RDS instance with a stack.
%%
%% Required Permissions: To use this action, an IAM user must have a Manage
%% permissions level for the stack, or an attached policy that explicitly
%% grants permissions. For more information on user permissions, see Managing
%% User Permissions.
register_rds_db_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    register_rds_db_instance(Client, Input, []).
register_rds_db_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RegisterRdsDbInstance">>, Input, Options).

%% @doc Registers an Amazon EBS volume with a specified stack.
%%
%% A volume can be registered with only one stack at a time. If the volume is
%% already registered, you must first deregister it by calling
%% `DeregisterVolume'. For more information, see Resource Management.
%%
%% Required Permissions: To use this action, an IAM user must have a Manage
%% permissions level for the stack, or an attached policy that explicitly
%% grants permissions. For more information on user permissions, see Managing
%% User Permissions.
register_volume(Client, Input)
  when is_map(Client), is_map(Input) ->
    register_volume(Client, Input, []).
register_volume(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RegisterVolume">>, Input, Options).

%% @doc Specify the load-based auto scaling configuration for a specified
%% layer.
%%
%% For more information, see Managing Load with Time-based and Load-based
%% Instances.
%%
%% To use load-based auto scaling, you must create a set of load-based auto
%% scaling instances. Load-based auto scaling operates only on the instances
%% from that set, so you must ensure that you have created enough instances
%% to handle the maximum anticipated load.
%%
%% Required Permissions: To use this action, an IAM user must have a Manage
%% permissions level for the stack, or an attached policy that explicitly
%% grants permissions. For more information on user permissions, see Managing
%% User Permissions.
set_load_based_auto_scaling(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_load_based_auto_scaling(Client, Input, []).
set_load_based_auto_scaling(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetLoadBasedAutoScaling">>, Input, Options).

%% @doc Specifies a user's permissions.
%%
%% For more information, see Security and Permissions.
%%
%% Required Permissions: To use this action, an IAM user must have a Manage
%% permissions level for the stack, or an attached policy that explicitly
%% grants permissions. For more information on user permissions, see Managing
%% User Permissions.
set_permission(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_permission(Client, Input, []).
set_permission(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetPermission">>, Input, Options).

%% @doc Specify the time-based auto scaling configuration for a specified
%% instance.
%%
%% For more information, see Managing Load with Time-based and Load-based
%% Instances.
%%
%% Required Permissions: To use this action, an IAM user must have a Manage
%% permissions level for the stack, or an attached policy that explicitly
%% grants permissions. For more information on user permissions, see Managing
%% User Permissions.
set_time_based_auto_scaling(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_time_based_auto_scaling(Client, Input, []).
set_time_based_auto_scaling(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetTimeBasedAutoScaling">>, Input, Options).

%% @doc Starts a specified instance.
%%
%% For more information, see Starting, Stopping, and Rebooting Instances.
%%
%% Required Permissions: To use this action, an IAM user must have a Manage
%% permissions level for the stack, or an attached policy that explicitly
%% grants permissions. For more information on user permissions, see Managing
%% User Permissions.
start_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_instance(Client, Input, []).
start_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartInstance">>, Input, Options).

%% @doc Starts a stack's instances.
%%
%% Required Permissions: To use this action, an IAM user must have a Manage
%% permissions level for the stack, or an attached policy that explicitly
%% grants permissions. For more information on user permissions, see Managing
%% User Permissions.
start_stack(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_stack(Client, Input, []).
start_stack(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartStack">>, Input, Options).

%% @doc Stops a specified instance.
%%
%% When you stop a standard instance, the data disappears and must be
%% reinstalled when you restart the instance. You can stop an Amazon
%% EBS-backed instance without losing data. For more information, see
%% Starting, Stopping, and Rebooting Instances.
%%
%% Required Permissions: To use this action, an IAM user must have a Manage
%% permissions level for the stack, or an attached policy that explicitly
%% grants permissions. For more information on user permissions, see Managing
%% User Permissions.
stop_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_instance(Client, Input, []).
stop_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopInstance">>, Input, Options).

%% @doc Stops a specified stack.
%%
%% Required Permissions: To use this action, an IAM user must have a Manage
%% permissions level for the stack, or an attached policy that explicitly
%% grants permissions. For more information on user permissions, see Managing
%% User Permissions.
stop_stack(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_stack(Client, Input, []).
stop_stack(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopStack">>, Input, Options).

%% @doc Apply cost-allocation tags to a specified stack or layer in AWS
%% OpsWorks Stacks.
%%
%% For more information about how tagging works, see Tags in the AWS OpsWorks
%% User Guide.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Unassigns a registered instance from all layers that are using the
%% instance.
%%
%% The instance remains in the stack as an unassigned instance, and can be
%% assigned to another layer as needed. You cannot use this action with
%% instances that were created with AWS OpsWorks Stacks.
%%
%% Required Permissions: To use this action, an IAM user must have a Manage
%% permissions level for the stack or an attached policy that explicitly
%% grants permissions. For more information about user permissions, see
%% Managing User Permissions.
unassign_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    unassign_instance(Client, Input, []).
unassign_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UnassignInstance">>, Input, Options).

%% @doc Unassigns an assigned Amazon EBS volume.
%%
%% The volume remains registered with the stack. For more information, see
%% Resource Management.
%%
%% Required Permissions: To use this action, an IAM user must have a Manage
%% permissions level for the stack, or an attached policy that explicitly
%% grants permissions. For more information on user permissions, see Managing
%% User Permissions.
unassign_volume(Client, Input)
  when is_map(Client), is_map(Input) ->
    unassign_volume(Client, Input, []).
unassign_volume(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UnassignVolume">>, Input, Options).

%% @doc Removes tags from a specified stack or layer.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc Updates a specified app.
%%
%% Required Permissions: To use this action, an IAM user must have a Deploy
%% or Manage permissions level for the stack, or an attached policy that
%% explicitly grants permissions. For more information on user permissions,
%% see Managing User Permissions.
update_app(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_app(Client, Input, []).
update_app(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateApp">>, Input, Options).

%% @doc Updates a registered Elastic IP address's name.
%%
%% For more information, see Resource Management.
%%
%% Required Permissions: To use this action, an IAM user must have a Manage
%% permissions level for the stack, or an attached policy that explicitly
%% grants permissions. For more information on user permissions, see Managing
%% User Permissions.
update_elastic_ip(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_elastic_ip(Client, Input, []).
update_elastic_ip(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateElasticIp">>, Input, Options).

%% @doc Updates a specified instance.
%%
%% Required Permissions: To use this action, an IAM user must have a Manage
%% permissions level for the stack, or an attached policy that explicitly
%% grants permissions. For more information on user permissions, see Managing
%% User Permissions.
update_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_instance(Client, Input, []).
update_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateInstance">>, Input, Options).

%% @doc Updates a specified layer.
%%
%% Required Permissions: To use this action, an IAM user must have a Manage
%% permissions level for the stack, or an attached policy that explicitly
%% grants permissions. For more information on user permissions, see Managing
%% User Permissions.
update_layer(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_layer(Client, Input, []).
update_layer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateLayer">>, Input, Options).

%% @doc Updates a user's SSH public key.
%%
%% Required Permissions: To use this action, an IAM user must have
%% self-management enabled or an attached policy that explicitly grants
%% permissions. For more information about user permissions, see Managing
%% User Permissions.
update_my_user_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_my_user_profile(Client, Input, []).
update_my_user_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateMyUserProfile">>, Input, Options).

%% @doc Updates an Amazon RDS instance.
%%
%% Required Permissions: To use this action, an IAM user must have a Manage
%% permissions level for the stack, or an attached policy that explicitly
%% grants permissions. For more information on user permissions, see Managing
%% User Permissions.
update_rds_db_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_rds_db_instance(Client, Input, []).
update_rds_db_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateRdsDbInstance">>, Input, Options).

%% @doc Updates a specified stack.
%%
%% Required Permissions: To use this action, an IAM user must have a Manage
%% permissions level for the stack, or an attached policy that explicitly
%% grants permissions. For more information on user permissions, see Managing
%% User Permissions.
update_stack(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_stack(Client, Input, []).
update_stack(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateStack">>, Input, Options).

%% @doc Updates a specified user profile.
%%
%% Required Permissions: To use this action, an IAM user must have an
%% attached policy that explicitly grants permissions. For more information
%% about user permissions, see Managing User Permissions.
update_user_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_user_profile(Client, Input, []).
update_user_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateUserProfile">>, Input, Options).

%% @doc Updates an Amazon EBS volume's name or mount point.
%%
%% For more information, see Resource Management.
%%
%% Required Permissions: To use this action, an IAM user must have a Manage
%% permissions level for the stack, or an attached policy that explicitly
%% grants permissions. For more information on user permissions, see Managing
%% User Permissions.
update_volume(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_volume(Client, Input, []).
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
    Proto = maps:get(proto, Client),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
