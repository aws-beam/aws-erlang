%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/jkakar/aws-codegen for more details.

%% @doc <fullname>AWS OpsWorks</fullname>
%%
%% Welcome to the <i>AWS OpsWorks API Reference</i>. This guide provides
%% descriptions, syntax, and usage examples about AWS OpsWorks actions and
%% data types, including common parameters and error codes.
%%
%% AWS OpsWorks is an application management service that provides an
%% integrated experience for overseeing the complete application lifecycle.
%% For information about this product, go to the <a
%% href="http://aws.amazon.com/opsworks/">AWS OpsWorks</a> details page.
%%
%% <b>SDKs and CLI</b>
%%
%% The most common way to use the AWS OpsWorks API is by using the AWS
%% Command Line Interface (CLI) or by using one of the AWS SDKs to implement
%% applications in your preferred language. For more information, see:
%%
%% <ul> <li> <a
%% href="http://docs.aws.amazon.com/cli/latest/userguide/cli-chap-welcome.html">AWS
%% CLI</a> </li> <li> <a
%% href="http://docs.aws.amazon.com/AWSJavaSDK/latest/javadoc/com/amazonaws/services/opsworks/AWSOpsWorksClient.html">AWS
%% SDK for Java</a> </li> <li> <a
%% href="http://docs.aws.amazon.com/sdkfornet/latest/apidocs/html/N_Amazon_OpsWorks.htm">AWS
%% SDK for .NET</a> </li> <li> <a
%% href="http://docs.aws.amazon.com/aws-sdk-php-2/latest/class-Aws.OpsWorks.OpsWorksClient.html">AWS
%% SDK for PHP 2</a> </li> <li> <a
%% href="http://docs.aws.amazon.com/AWSRubySDK/latest/AWS/OpsWorks/Client.html">AWS
%% SDK for Ruby</a> </li> <li> <a
%% href="http://aws.amazon.com/documentation/sdkforjavascript/">AWS SDK for
%% Node.js</a> </li> <li> <a
%% href="http://docs.pythonboto.org/en/latest/ref/opsworks.html">AWS SDK for
%% Python(Boto)</a> </li> </ul> <b>Endpoints</b>
%%
%% AWS OpsWorks supports only one endpoint, opsworks.us-east-1.amazonaws.com
%% (HTTPS), so you must connect to that endpoint. You can then use the API to
%% direct AWS OpsWorks to create stacks in any AWS Region.
%%
%% <b>Chef Versions</b>
%%
%% When you call <a>CreateStack</a>, <a>CloneStack</a>, or <a>UpdateStack</a>
%% we recommend you use the <code>ConfigurationManager</code> parameter to
%% specify the Chef version. The recommended value for Linux stacks, which is
%% also the default value, is currently 11.10. Windows stacks use Chef 12.2.
%% For more information, see <a
%% href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook-chef11.html">Chef
%% Versions</a>.
%%
%% <note>You can also specify Chef 11.4 or Chef 0.9 for your Linux stack.
%% However, Chef 0.9 has been deprecated. We do not recommend using Chef 0.9
%% for new stacks, and we recommend migrating your existing Chef 0.9 stacks
%% to Chef 11.10 as soon as possible.</note>
-module(aws_ops_works).

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
         unassign_instance/2,
         unassign_instance/3,
         unassign_volume/2,
         unassign_volume/3,
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
%% <ul> <li>You can assign registered on-premises instances to any layer
%% type.</li> <li>You can assign registered Amazon EC2 instances only to
%% custom layers.</li> <li>You cannot use this action with instances that
%% were created with AWS OpsWorks.</li> </ul> <b>Required Permissions</b>: To
%% use this action, an AWS Identity and Access Management (IAM) user must
%% have a Manage permissions level for the stack or an attached policy that
%% explicitly grants permissions. For more information on user permissions,
%% see <a
%% href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing
%% User Permissions</a>.
assign_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    assign_instance(Client, Input, []).
assign_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssignInstance">>, Input, Options).

%% @doc Assigns one of the stack's registered Amazon EBS volumes to a
%% specified instance. The volume must first be registered with the stack by
%% calling <a>RegisterVolume</a>. After you register the volume, you must
%% call <a>UpdateVolume</a> to specify a mount point before calling
%% <code>AssignVolume</code>. For more information, see <a
%% href="http://docs.aws.amazon.com/opsworks/latest/userguide/resources.html">Resource
%% Management</a>.
%%
%% <b>Required Permissions</b>: To use this action, an IAM user must have a
%% Manage permissions level for the stack, or an attached policy that
%% explicitly grants permissions. For more information on user permissions,
%% see <a
%% href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing
%% User Permissions</a>.
assign_volume(Client, Input)
  when is_map(Client), is_map(Input) ->
    assign_volume(Client, Input, []).
assign_volume(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssignVolume">>, Input, Options).

%% @doc Associates one of the stack's registered Elastic IP addresses with a
%% specified instance. The address must first be registered with the stack by
%% calling <a>RegisterElasticIp</a>. For more information, see <a
%% href="http://docs.aws.amazon.com/opsworks/latest/userguide/resources.html">Resource
%% Management</a>.
%%
%% <b>Required Permissions</b>: To use this action, an IAM user must have a
%% Manage permissions level for the stack, or an attached policy that
%% explicitly grants permissions. For more information on user permissions,
%% see <a
%% href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing
%% User Permissions</a>.
associate_elastic_ip(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_elastic_ip(Client, Input, []).
associate_elastic_ip(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateElasticIp">>, Input, Options).

%% @doc Attaches an Elastic Load Balancing load balancer to a specified
%% layer. For more information, see <a
%% href="http://docs.aws.amazon.com/opsworks/latest/userguide/load-balancer-elb.html">Elastic
%% Load Balancing</a>.
%%
%% <note> You must create the Elastic Load Balancing instance separately, by
%% using the Elastic Load Balancing console, API, or CLI. For more
%% information, see <a
%% href="http://docs.aws.amazon.com/ElasticLoadBalancing/latest/DeveloperGuide/Welcome.html">
%% Elastic Load Balancing Developer Guide</a>.
%%
%% </note> <b>Required Permissions</b>: To use this action, an IAM user must
%% have a Manage permissions level for the stack, or an attached policy that
%% explicitly grants permissions. For more information on user permissions,
%% see <a
%% href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing
%% User Permissions</a>.
attach_elastic_load_balancer(Client, Input)
  when is_map(Client), is_map(Input) ->
    attach_elastic_load_balancer(Client, Input, []).
attach_elastic_load_balancer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AttachElasticLoadBalancer">>, Input, Options).

%% @doc Creates a clone of a specified stack. For more information, see <a
%% href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-cloning.html">Clone
%% a Stack</a>. By default, all parameters are set to the values used by the
%% parent stack.
%%
%% <b>Required Permissions</b>: To use this action, an IAM user must have an
%% attached policy that explicitly grants permissions. For more information
%% on user permissions, see <a
%% href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing
%% User Permissions</a>.
clone_stack(Client, Input)
  when is_map(Client), is_map(Input) ->
    clone_stack(Client, Input, []).
clone_stack(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CloneStack">>, Input, Options).

%% @doc Creates an app for a specified stack. For more information, see <a
%% href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html">Creating
%% Apps</a>.
%%
%% <b>Required Permissions</b>: To use this action, an IAM user must have a
%% Manage permissions level for the stack, or an attached policy that
%% explicitly grants permissions. For more information on user permissions,
%% see <a
%% href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing
%% User Permissions</a>.
create_app(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_app(Client, Input, []).
create_app(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateApp">>, Input, Options).

%% @doc Runs deployment or stack commands. For more information, see <a
%% href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-deploying.html">Deploying
%% Apps</a> and <a
%% href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-commands.html">Run
%% Stack Commands</a>.
%%
%% <b>Required Permissions</b>: To use this action, an IAM user must have a
%% Deploy or Manage permissions level for the stack, or an attached policy
%% that explicitly grants permissions. For more information on user
%% permissions, see <a
%% href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing
%% User Permissions</a>.
create_deployment(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_deployment(Client, Input, []).
create_deployment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDeployment">>, Input, Options).

%% @doc Creates an instance in a specified stack. For more information, see
%% <a
%% href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-add.html">Adding
%% an Instance to a Layer</a>.
%%
%% <b>Required Permissions</b>: To use this action, an IAM user must have a
%% Manage permissions level for the stack, or an attached policy that
%% explicitly grants permissions. For more information on user permissions,
%% see <a
%% href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing
%% User Permissions</a>.
create_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_instance(Client, Input, []).
create_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateInstance">>, Input, Options).

%% @doc Creates a layer. For more information, see <a
%% href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-create.html">How
%% to Create a Layer</a>.
%%
%% <note> You should use <b>CreateLayer</b> for noncustom layer types such as
%% PHP App Server only if the stack does not have an existing layer of that
%% type. A stack can have at most one instance of each noncustom layer; if
%% you attempt to create a second instance, <b>CreateLayer</b> fails. A stack
%% can have an arbitrary number of custom layers, so you can call
%% <b>CreateLayer</b> as many times as you like for that layer type.
%%
%% </note> <b>Required Permissions</b>: To use this action, an IAM user must
%% have a Manage permissions level for the stack, or an attached policy that
%% explicitly grants permissions. For more information on user permissions,
%% see <a
%% href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing
%% User Permissions</a>.
create_layer(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_layer(Client, Input, []).
create_layer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateLayer">>, Input, Options).

%% @doc Creates a new stack. For more information, see <a
%% href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-edit.html">Create
%% a New Stack</a>.
%%
%% <b>Required Permissions</b>: To use this action, an IAM user must have an
%% attached policy that explicitly grants permissions. For more information
%% on user permissions, see <a
%% href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing
%% User Permissions</a>.
create_stack(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_stack(Client, Input, []).
create_stack(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateStack">>, Input, Options).

%% @doc Creates a new user profile.
%%
%% <b>Required Permissions</b>: To use this action, an IAM user must have an
%% attached policy that explicitly grants permissions. For more information
%% on user permissions, see <a
%% href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing
%% User Permissions</a>.
create_user_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_user_profile(Client, Input, []).
create_user_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateUserProfile">>, Input, Options).

%% @doc Deletes a specified app.
%%
%% <b>Required Permissions</b>: To use this action, an IAM user must have a
%% Manage permissions level for the stack, or an attached policy that
%% explicitly grants permissions. For more information on user permissions,
%% see <a
%% href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing
%% User Permissions</a>.
delete_app(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_app(Client, Input, []).
delete_app(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteApp">>, Input, Options).

%% @doc Deletes a specified instance, which terminates the associated Amazon
%% EC2 instance. You must stop an instance before you can delete it.
%%
%% For more information, see <a
%% href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-delete.html">Deleting
%% Instances</a>.
%%
%% <b>Required Permissions</b>: To use this action, an IAM user must have a
%% Manage permissions level for the stack, or an attached policy that
%% explicitly grants permissions. For more information on user permissions,
%% see <a
%% href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing
%% User Permissions</a>.
delete_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_instance(Client, Input, []).
delete_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteInstance">>, Input, Options).

%% @doc Deletes a specified layer. You must first stop and then delete all
%% associated instances or unassign registered instances. For more
%% information, see <a
%% href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-delete.html">How
%% to Delete a Layer</a>.
%%
%% <b>Required Permissions</b>: To use this action, an IAM user must have a
%% Manage permissions level for the stack, or an attached policy that
%% explicitly grants permissions. For more information on user permissions,
%% see <a
%% href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing
%% User Permissions</a>.
delete_layer(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_layer(Client, Input, []).
delete_layer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteLayer">>, Input, Options).

%% @doc Deletes a specified stack. You must first delete all instances,
%% layers, and apps or deregister registered instances. For more information,
%% see <a
%% href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-shutting.html">Shut
%% Down a Stack</a>.
%%
%% <b>Required Permissions</b>: To use this action, an IAM user must have a
%% Manage permissions level for the stack, or an attached policy that
%% explicitly grants permissions. For more information on user permissions,
%% see <a
%% href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing
%% User Permissions</a>.
delete_stack(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_stack(Client, Input, []).
delete_stack(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteStack">>, Input, Options).

%% @doc Deletes a user profile.
%%
%% <b>Required Permissions</b>: To use this action, an IAM user must have an
%% attached policy that explicitly grants permissions. For more information
%% on user permissions, see <a
%% href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing
%% User Permissions</a>.
delete_user_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_user_profile(Client, Input, []).
delete_user_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteUserProfile">>, Input, Options).

%% @doc Deregisters a specified Amazon ECS cluster from a stack. For more
%% information, see <a
%% href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-ecscluster.html#workinglayers-ecscluster-delete">
%% Resource Management</a>.
%%
%% <b>Required Permissions</b>: To use this action, an IAM user must have a
%% Manage permissions level for the stack or an attached policy that
%% explicitly grants permissions. For more information on user permissions,
%% see <a
%% href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html"></a>.
deregister_ecs_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    deregister_ecs_cluster(Client, Input, []).
deregister_ecs_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeregisterEcsCluster">>, Input, Options).

%% @doc Deregisters a specified Elastic IP address. The address can then be
%% registered by another stack. For more information, see <a
%% href="http://docs.aws.amazon.com/opsworks/latest/userguide/resources.html">Resource
%% Management</a>.
%%
%% <b>Required Permissions</b>: To use this action, an IAM user must have a
%% Manage permissions level for the stack, or an attached policy that
%% explicitly grants permissions. For more information on user permissions,
%% see <a
%% href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing
%% User Permissions</a>.
deregister_elastic_ip(Client, Input)
  when is_map(Client), is_map(Input) ->
    deregister_elastic_ip(Client, Input, []).
deregister_elastic_ip(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeregisterElasticIp">>, Input, Options).

%% @doc Deregister a registered Amazon EC2 or on-premises instance. This
%% action removes the instance from the stack and returns it to your control.
%% This action can not be used with instances that were created with AWS
%% OpsWorks.
%%
%% <b>Required Permissions</b>: To use this action, an IAM user must have a
%% Manage permissions level for the stack or an attached policy that
%% explicitly grants permissions. For more information on user permissions,
%% see <a
%% href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing
%% User Permissions</a>.
deregister_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    deregister_instance(Client, Input, []).
deregister_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeregisterInstance">>, Input, Options).

%% @doc Deregisters an Amazon RDS instance.
%%
%% <b>Required Permissions</b>: To use this action, an IAM user must have a
%% Manage permissions level for the stack, or an attached policy that
%% explicitly grants permissions. For more information on user permissions,
%% see <a
%% href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing
%% User Permissions</a>.
deregister_rds_db_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    deregister_rds_db_instance(Client, Input, []).
deregister_rds_db_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeregisterRdsDbInstance">>, Input, Options).

%% @doc Deregisters an Amazon EBS volume. The volume can then be registered
%% by another stack. For more information, see <a
%% href="http://docs.aws.amazon.com/opsworks/latest/userguide/resources.html">Resource
%% Management</a>.
%%
%% <b>Required Permissions</b>: To use this action, an IAM user must have a
%% Manage permissions level for the stack, or an attached policy that
%% explicitly grants permissions. For more information on user permissions,
%% see <a
%% href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing
%% User Permissions</a>.
deregister_volume(Client, Input)
  when is_map(Client), is_map(Input) ->
    deregister_volume(Client, Input, []).
deregister_volume(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeregisterVolume">>, Input, Options).

%% @doc Describes the available AWS OpsWorks agent versions. You must specify
%% a stack ID or a configuration manager. <code>DescribeAgentVersions</code>
%% returns a list of available agent versions for the specified stack or
%% configuration manager.
describe_agent_versions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_agent_versions(Client, Input, []).
describe_agent_versions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAgentVersions">>, Input, Options).

%% @doc Requests a description of a specified set of apps.
%%
%% <note> You must specify at least one of the parameters.
%%
%% </note> <b>Required Permissions</b>: To use this action, an IAM user must
%% have a Show, Deploy, or Manage permissions level for the stack, or an
%% attached policy that explicitly grants permissions. For more information
%% on user permissions, see <a
%% href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing
%% User Permissions</a>.
describe_apps(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_apps(Client, Input, []).
describe_apps(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeApps">>, Input, Options).

%% @doc Describes the results of specified commands.
%%
%% <note> You must specify at least one of the parameters.
%%
%% </note> <b>Required Permissions</b>: To use this action, an IAM user must
%% have a Show, Deploy, or Manage permissions level for the stack, or an
%% attached policy that explicitly grants permissions. For more information
%% on user permissions, see <a
%% href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing
%% User Permissions</a>.
describe_commands(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_commands(Client, Input, []).
describe_commands(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeCommands">>, Input, Options).

%% @doc Requests a description of a specified set of deployments.
%%
%% <note> You must specify at least one of the parameters.
%%
%% </note> <b>Required Permissions</b>: To use this action, an IAM user must
%% have a Show, Deploy, or Manage permissions level for the stack, or an
%% attached policy that explicitly grants permissions. For more information
%% on user permissions, see <a
%% href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing
%% User Permissions</a>.
describe_deployments(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_deployments(Client, Input, []).
describe_deployments(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDeployments">>, Input, Options).

%% @doc Describes Amazon ECS clusters that are registered with a stack. If
%% you specify only a stack ID, you can use the <code>MaxResults</code> and
%% <code>NextToken</code> parameters to paginate the response. However, AWS
%% OpsWorks currently supports only one cluster per layer, so the result set
%% has a maximum of one element.
%%
%% <b>Required Permissions</b>: To use this action, an IAM user must have a
%% Show, Deploy, or Manage permissions level for the stack or an attached
%% policy that explicitly grants permission. For more information on user
%% permissions, see <a
%% href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing
%% User Permissions</a>.
describe_ecs_clusters(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_ecs_clusters(Client, Input, []).
describe_ecs_clusters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEcsClusters">>, Input, Options).

%% @doc Describes <a
%% href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html">Elastic
%% IP addresses</a>.
%%
%% <note> You must specify at least one of the parameters.
%%
%% </note> <b>Required Permissions</b>: To use this action, an IAM user must
%% have a Show, Deploy, or Manage permissions level for the stack, or an
%% attached policy that explicitly grants permissions. For more information
%% on user permissions, see <a
%% href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing
%% User Permissions</a>.
describe_elastic_ips(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_elastic_ips(Client, Input, []).
describe_elastic_ips(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeElasticIps">>, Input, Options).

%% @doc Describes a stack's Elastic Load Balancing instances.
%%
%% <note> You must specify at least one of the parameters.
%%
%% </note> <b>Required Permissions</b>: To use this action, an IAM user must
%% have a Show, Deploy, or Manage permissions level for the stack, or an
%% attached policy that explicitly grants permissions. For more information
%% on user permissions, see <a
%% href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing
%% User Permissions</a>.
describe_elastic_load_balancers(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_elastic_load_balancers(Client, Input, []).
describe_elastic_load_balancers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeElasticLoadBalancers">>, Input, Options).

%% @doc Requests a description of a set of instances.
%%
%% <note> You must specify at least one of the parameters.
%%
%% </note> <b>Required Permissions</b>: To use this action, an IAM user must
%% have a Show, Deploy, or Manage permissions level for the stack, or an
%% attached policy that explicitly grants permissions. For more information
%% on user permissions, see <a
%% href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing
%% User Permissions</a>.
describe_instances(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_instances(Client, Input, []).
describe_instances(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeInstances">>, Input, Options).

%% @doc Requests a description of one or more layers in a specified stack.
%%
%% <note> You must specify at least one of the parameters.
%%
%% </note> <b>Required Permissions</b>: To use this action, an IAM user must
%% have a Show, Deploy, or Manage permissions level for the stack, or an
%% attached policy that explicitly grants permissions. For more information
%% on user permissions, see <a
%% href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing
%% User Permissions</a>.
describe_layers(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_layers(Client, Input, []).
describe_layers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeLayers">>, Input, Options).

%% @doc Describes load-based auto scaling configurations for specified
%% layers.
%%
%% <note> You must specify at least one of the parameters.
%%
%% </note> <b>Required Permissions</b>: To use this action, an IAM user must
%% have a Show, Deploy, or Manage permissions level for the stack, or an
%% attached policy that explicitly grants permissions. For more information
%% on user permissions, see <a
%% href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing
%% User Permissions</a>.
describe_load_based_auto_scaling(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_load_based_auto_scaling(Client, Input, []).
describe_load_based_auto_scaling(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeLoadBasedAutoScaling">>, Input, Options).

%% @doc Describes a user's SSH information.
%%
%% <b>Required Permissions</b>: To use this action, an IAM user must have
%% self-management enabled or an attached policy that explicitly grants
%% permissions. For more information on user permissions, see <a
%% href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing
%% User Permissions</a>.
describe_my_user_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_my_user_profile(Client, Input, []).
describe_my_user_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeMyUserProfile">>, Input, Options).

%% @doc Describes the permissions for a specified stack.
%%
%% <b>Required Permissions</b>: To use this action, an IAM user must have a
%% Manage permissions level for the stack, or an attached policy that
%% explicitly grants permissions. For more information on user permissions,
%% see <a
%% href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing
%% User Permissions</a>.
describe_permissions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_permissions(Client, Input, []).
describe_permissions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribePermissions">>, Input, Options).

%% @doc Describe an instance's RAID arrays.
%%
%% <note> You must specify at least one of the parameters.
%%
%% </note> <b>Required Permissions</b>: To use this action, an IAM user must
%% have a Show, Deploy, or Manage permissions level for the stack, or an
%% attached policy that explicitly grants permissions. For more information
%% on user permissions, see <a
%% href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing
%% User Permissions</a>.
describe_raid_arrays(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_raid_arrays(Client, Input, []).
describe_raid_arrays(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeRaidArrays">>, Input, Options).

%% @doc Describes Amazon RDS instances.
%%
%% <b>Required Permissions</b>: To use this action, an IAM user must have a
%% Show, Deploy, or Manage permissions level for the stack, or an attached
%% policy that explicitly grants permissions. For more information on user
%% permissions, see <a
%% href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing
%% User Permissions</a>.
describe_rds_db_instances(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_rds_db_instances(Client, Input, []).
describe_rds_db_instances(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeRdsDbInstances">>, Input, Options).

%% @doc Describes AWS OpsWorks service errors.
%%
%% <b>Required Permissions</b>: To use this action, an IAM user must have a
%% Show, Deploy, or Manage permissions level for the stack, or an attached
%% policy that explicitly grants permissions. For more information on user
%% permissions, see <a
%% href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing
%% User Permissions</a>.
describe_service_errors(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_service_errors(Client, Input, []).
describe_service_errors(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeServiceErrors">>, Input, Options).

%% @doc Requests a description of a stack's provisioning parameters.
%%
%% <b>Required Permissions</b>: To use this action, an IAM user must have a
%% Show, Deploy, or Manage permissions level for the stack or an attached
%% policy that explicitly grants permissions. For more information on user
%% permissions, see <a
%% href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing
%% User Permissions</a>.
describe_stack_provisioning_parameters(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_stack_provisioning_parameters(Client, Input, []).
describe_stack_provisioning_parameters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeStackProvisioningParameters">>, Input, Options).

%% @doc Describes the number of layers and apps in a specified stack, and the
%% number of instances in each state, such as <code>running_setup</code> or
%% <code>online</code>.
%%
%% <b>Required Permissions</b>: To use this action, an IAM user must have a
%% Show, Deploy, or Manage permissions level for the stack, or an attached
%% policy that explicitly grants permissions. For more information on user
%% permissions, see <a
%% href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing
%% User Permissions</a>.
describe_stack_summary(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_stack_summary(Client, Input, []).
describe_stack_summary(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeStackSummary">>, Input, Options).

%% @doc Requests a description of one or more stacks.
%%
%% <b>Required Permissions</b>: To use this action, an IAM user must have a
%% Show, Deploy, or Manage permissions level for the stack, or an attached
%% policy that explicitly grants permissions. For more information on user
%% permissions, see <a
%% href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing
%% User Permissions</a>.
describe_stacks(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_stacks(Client, Input, []).
describe_stacks(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeStacks">>, Input, Options).

%% @doc Describes time-based auto scaling configurations for specified
%% instances.
%%
%% <note> You must specify at least one of the parameters.
%%
%% </note> <b>Required Permissions</b>: To use this action, an IAM user must
%% have a Show, Deploy, or Manage permissions level for the stack, or an
%% attached policy that explicitly grants permissions. For more information
%% on user permissions, see <a
%% href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing
%% User Permissions</a>.
describe_time_based_auto_scaling(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_time_based_auto_scaling(Client, Input, []).
describe_time_based_auto_scaling(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTimeBasedAutoScaling">>, Input, Options).

%% @doc Describe specified users.
%%
%% <b>Required Permissions</b>: To use this action, an IAM user must have an
%% attached policy that explicitly grants permissions. For more information
%% on user permissions, see <a
%% href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing
%% User Permissions</a>.
describe_user_profiles(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_user_profiles(Client, Input, []).
describe_user_profiles(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeUserProfiles">>, Input, Options).

%% @doc Describes an instance's Amazon EBS volumes.
%%
%% <note> You must specify at least one of the parameters.
%%
%% </note> <b>Required Permissions</b>: To use this action, an IAM user must
%% have a Show, Deploy, or Manage permissions level for the stack, or an
%% attached policy that explicitly grants permissions. For more information
%% on user permissions, see <a
%% href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing
%% User Permissions</a>.
describe_volumes(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_volumes(Client, Input, []).
describe_volumes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeVolumes">>, Input, Options).

%% @doc Detaches a specified Elastic Load Balancing instance from its layer.
%%
%% <b>Required Permissions</b>: To use this action, an IAM user must have a
%% Manage permissions level for the stack, or an attached policy that
%% explicitly grants permissions. For more information on user permissions,
%% see <a
%% href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing
%% User Permissions</a>.
detach_elastic_load_balancer(Client, Input)
  when is_map(Client), is_map(Input) ->
    detach_elastic_load_balancer(Client, Input, []).
detach_elastic_load_balancer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DetachElasticLoadBalancer">>, Input, Options).

%% @doc Disassociates an Elastic IP address from its instance. The address
%% remains registered with the stack. For more information, see <a
%% href="http://docs.aws.amazon.com/opsworks/latest/userguide/resources.html">Resource
%% Management</a>.
%%
%% <b>Required Permissions</b>: To use this action, an IAM user must have a
%% Manage permissions level for the stack, or an attached policy that
%% explicitly grants permissions. For more information on user permissions,
%% see <a
%% href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing
%% User Permissions</a>.
disassociate_elastic_ip(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_elastic_ip(Client, Input, []).
disassociate_elastic_ip(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateElasticIp">>, Input, Options).

%% @doc Gets a generated host name for the specified layer, based on the
%% current host name theme.
%%
%% <b>Required Permissions</b>: To use this action, an IAM user must have a
%% Manage permissions level for the stack, or an attached policy that
%% explicitly grants permissions. For more information on user permissions,
%% see <a
%% href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing
%% User Permissions</a>.
get_hostname_suggestion(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_hostname_suggestion(Client, Input, []).
get_hostname_suggestion(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetHostnameSuggestion">>, Input, Options).

%% @doc <note>This action can be used only with Windows stacks.</note> Grants
%% RDP access to a Windows instance for a specified time period.
grant_access(Client, Input)
  when is_map(Client), is_map(Input) ->
    grant_access(Client, Input, []).
grant_access(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GrantAccess">>, Input, Options).

%% @doc Reboots a specified instance. For more information, see <a
%% href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-starting.html">Starting,
%% Stopping, and Rebooting Instances</a>.
%%
%% <b>Required Permissions</b>: To use this action, an IAM user must have a
%% Manage permissions level for the stack, or an attached policy that
%% explicitly grants permissions. For more information on user permissions,
%% see <a
%% href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing
%% User Permissions</a>.
reboot_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    reboot_instance(Client, Input, []).
reboot_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RebootInstance">>, Input, Options).

%% @doc Registers a specified Amazon ECS cluster with a stack. You can
%% register only one cluster with a stack. A cluster can be registered with
%% only one stack. For more information, see <a
%% href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-ecscluster.html">
%% Resource Management</a>.
%%
%% <b>Required Permissions</b>: To use this action, an IAM user must have a
%% Manage permissions level for the stack or an attached policy that
%% explicitly grants permissions. For more information on user permissions,
%% see <a
%% href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">
%% Managing User Permissions</a>.
register_ecs_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    register_ecs_cluster(Client, Input, []).
register_ecs_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RegisterEcsCluster">>, Input, Options).

%% @doc Registers an Elastic IP address with a specified stack. An address
%% can be registered with only one stack at a time. If the address is already
%% registered, you must first deregister it by calling
%% <a>DeregisterElasticIp</a>. For more information, see <a
%% href="http://docs.aws.amazon.com/opsworks/latest/userguide/resources.html">Resource
%% Management</a>.
%%
%% <b>Required Permissions</b>: To use this action, an IAM user must have a
%% Manage permissions level for the stack, or an attached policy that
%% explicitly grants permissions. For more information on user permissions,
%% see <a
%% href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing
%% User Permissions</a>.
register_elastic_ip(Client, Input)
  when is_map(Client), is_map(Input) ->
    register_elastic_ip(Client, Input, []).
register_elastic_ip(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RegisterElasticIp">>, Input, Options).

%% @doc Registers instances with a specified stack that were created outside
%% of AWS OpsWorks.
%%
%% <note>We do not recommend using this action to register instances. The
%% complete registration operation has two primary steps, installing the AWS
%% OpsWorks agent on the instance and registering the instance with the
%% stack. <code>RegisterInstance</code> handles only the second step. You
%% should instead use the AWS CLI <code>register</code> command, which
%% performs the entire registration operation. For more information, see <a
%% href="http://docs.aws.amazon.com/opsworks/latest/userguide/registered-instances-register.html">
%% Registering an Instance with an AWS OpsWorks Stack</a>.</note> <b>Required
%% Permissions</b>: To use this action, an IAM user must have a Manage
%% permissions level for the stack or an attached policy that explicitly
%% grants permissions. For more information on user permissions, see <a
%% href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing
%% User Permissions</a>.
register_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    register_instance(Client, Input, []).
register_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RegisterInstance">>, Input, Options).

%% @doc Registers an Amazon RDS instance with a stack.
%%
%% <b>Required Permissions</b>: To use this action, an IAM user must have a
%% Manage permissions level for the stack, or an attached policy that
%% explicitly grants permissions. For more information on user permissions,
%% see <a
%% href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing
%% User Permissions</a>.
register_rds_db_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    register_rds_db_instance(Client, Input, []).
register_rds_db_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RegisterRdsDbInstance">>, Input, Options).

%% @doc Registers an Amazon EBS volume with a specified stack. A volume can
%% be registered with only one stack at a time. If the volume is already
%% registered, you must first deregister it by calling
%% <a>DeregisterVolume</a>. For more information, see <a
%% href="http://docs.aws.amazon.com/opsworks/latest/userguide/resources.html">Resource
%% Management</a>.
%%
%% <b>Required Permissions</b>: To use this action, an IAM user must have a
%% Manage permissions level for the stack, or an attached policy that
%% explicitly grants permissions. For more information on user permissions,
%% see <a
%% href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing
%% User Permissions</a>.
register_volume(Client, Input)
  when is_map(Client), is_map(Input) ->
    register_volume(Client, Input, []).
register_volume(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RegisterVolume">>, Input, Options).

%% @doc Specify the load-based auto scaling configuration for a specified
%% layer. For more information, see <a
%% href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-autoscaling.html">Managing
%% Load with Time-based and Load-based Instances</a>.
%%
%% <note> To use load-based auto scaling, you must create a set of load-based
%% auto scaling instances. Load-based auto scaling operates only on the
%% instances from that set, so you must ensure that you have created enough
%% instances to handle the maximum anticipated load.
%%
%% </note> <b>Required Permissions</b>: To use this action, an IAM user must
%% have a Manage permissions level for the stack, or an attached policy that
%% explicitly grants permissions. For more information on user permissions,
%% see <a
%% href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing
%% User Permissions</a>.
set_load_based_auto_scaling(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_load_based_auto_scaling(Client, Input, []).
set_load_based_auto_scaling(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetLoadBasedAutoScaling">>, Input, Options).

%% @doc Specifies a user's permissions. For more information, see <a
%% href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingsecurity.html">Security
%% and Permissions</a>.
%%
%% <b>Required Permissions</b>: To use this action, an IAM user must have a
%% Manage permissions level for the stack, or an attached policy that
%% explicitly grants permissions. For more information on user permissions,
%% see <a
%% href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing
%% User Permissions</a>.
set_permission(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_permission(Client, Input, []).
set_permission(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetPermission">>, Input, Options).

%% @doc Specify the time-based auto scaling configuration for a specified
%% instance. For more information, see <a
%% href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-autoscaling.html">Managing
%% Load with Time-based and Load-based Instances</a>.
%%
%% <b>Required Permissions</b>: To use this action, an IAM user must have a
%% Manage permissions level for the stack, or an attached policy that
%% explicitly grants permissions. For more information on user permissions,
%% see <a
%% href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing
%% User Permissions</a>.
set_time_based_auto_scaling(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_time_based_auto_scaling(Client, Input, []).
set_time_based_auto_scaling(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetTimeBasedAutoScaling">>, Input, Options).

%% @doc Starts a specified instance. For more information, see <a
%% href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-starting.html">Starting,
%% Stopping, and Rebooting Instances</a>.
%%
%% <b>Required Permissions</b>: To use this action, an IAM user must have a
%% Manage permissions level for the stack, or an attached policy that
%% explicitly grants permissions. For more information on user permissions,
%% see <a
%% href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing
%% User Permissions</a>.
start_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_instance(Client, Input, []).
start_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartInstance">>, Input, Options).

%% @doc Starts a stack's instances.
%%
%% <b>Required Permissions</b>: To use this action, an IAM user must have a
%% Manage permissions level for the stack, or an attached policy that
%% explicitly grants permissions. For more information on user permissions,
%% see <a
%% href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing
%% User Permissions</a>.
start_stack(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_stack(Client, Input, []).
start_stack(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartStack">>, Input, Options).

%% @doc Stops a specified instance. When you stop a standard instance, the
%% data disappears and must be reinstalled when you restart the instance. You
%% can stop an Amazon EBS-backed instance without losing data. For more
%% information, see <a
%% href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-starting.html">Starting,
%% Stopping, and Rebooting Instances</a>.
%%
%% <b>Required Permissions</b>: To use this action, an IAM user must have a
%% Manage permissions level for the stack, or an attached policy that
%% explicitly grants permissions. For more information on user permissions,
%% see <a
%% href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing
%% User Permissions</a>.
stop_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_instance(Client, Input, []).
stop_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopInstance">>, Input, Options).

%% @doc Stops a specified stack.
%%
%% <b>Required Permissions</b>: To use this action, an IAM user must have a
%% Manage permissions level for the stack, or an attached policy that
%% explicitly grants permissions. For more information on user permissions,
%% see <a
%% href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing
%% User Permissions</a>.
stop_stack(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_stack(Client, Input, []).
stop_stack(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopStack">>, Input, Options).

%% @doc Unassigns a registered instance from all of it's layers. The instance
%% remains in the stack as an unassigned instance and can be assigned to
%% another layer, as needed. You cannot use this action with instances that
%% were created with AWS OpsWorks.
%%
%% <b>Required Permissions</b>: To use this action, an IAM user must have a
%% Manage permissions level for the stack or an attached policy that
%% explicitly grants permissions. For more information on user permissions,
%% see <a
%% href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing
%% User Permissions</a>.
unassign_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    unassign_instance(Client, Input, []).
unassign_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UnassignInstance">>, Input, Options).

%% @doc Unassigns an assigned Amazon EBS volume. The volume remains
%% registered with the stack. For more information, see <a
%% href="http://docs.aws.amazon.com/opsworks/latest/userguide/resources.html">Resource
%% Management</a>.
%%
%% <b>Required Permissions</b>: To use this action, an IAM user must have a
%% Manage permissions level for the stack, or an attached policy that
%% explicitly grants permissions. For more information on user permissions,
%% see <a
%% href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing
%% User Permissions</a>.
unassign_volume(Client, Input)
  when is_map(Client), is_map(Input) ->
    unassign_volume(Client, Input, []).
unassign_volume(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UnassignVolume">>, Input, Options).

%% @doc Updates a specified app.
%%
%% <b>Required Permissions</b>: To use this action, an IAM user must have a
%% Deploy or Manage permissions level for the stack, or an attached policy
%% that explicitly grants permissions. For more information on user
%% permissions, see <a
%% href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing
%% User Permissions</a>.
update_app(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_app(Client, Input, []).
update_app(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateApp">>, Input, Options).

%% @doc Updates a registered Elastic IP address's name. For more information,
%% see <a
%% href="http://docs.aws.amazon.com/opsworks/latest/userguide/resources.html">Resource
%% Management</a>.
%%
%% <b>Required Permissions</b>: To use this action, an IAM user must have a
%% Manage permissions level for the stack, or an attached policy that
%% explicitly grants permissions. For more information on user permissions,
%% see <a
%% href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing
%% User Permissions</a>.
update_elastic_ip(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_elastic_ip(Client, Input, []).
update_elastic_ip(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateElasticIp">>, Input, Options).

%% @doc Updates a specified instance.
%%
%% <b>Required Permissions</b>: To use this action, an IAM user must have a
%% Manage permissions level for the stack, or an attached policy that
%% explicitly grants permissions. For more information on user permissions,
%% see <a
%% href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing
%% User Permissions</a>.
update_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_instance(Client, Input, []).
update_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateInstance">>, Input, Options).

%% @doc Updates a specified layer.
%%
%% <b>Required Permissions</b>: To use this action, an IAM user must have a
%% Manage permissions level for the stack, or an attached policy that
%% explicitly grants permissions. For more information on user permissions,
%% see <a
%% href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing
%% User Permissions</a>.
update_layer(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_layer(Client, Input, []).
update_layer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateLayer">>, Input, Options).

%% @doc Updates a user's SSH public key.
%%
%% <b>Required Permissions</b>: To use this action, an IAM user must have
%% self-management enabled or an attached policy that explicitly grants
%% permissions. For more information on user permissions, see <a
%% href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing
%% User Permissions</a>.
update_my_user_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_my_user_profile(Client, Input, []).
update_my_user_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateMyUserProfile">>, Input, Options).

%% @doc Updates an Amazon RDS instance.
%%
%% <b>Required Permissions</b>: To use this action, an IAM user must have a
%% Manage permissions level for the stack, or an attached policy that
%% explicitly grants permissions. For more information on user permissions,
%% see <a
%% href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing
%% User Permissions</a>.
update_rds_db_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_rds_db_instance(Client, Input, []).
update_rds_db_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateRdsDbInstance">>, Input, Options).

%% @doc Updates a specified stack.
%%
%% <b>Required Permissions</b>: To use this action, an IAM user must have a
%% Manage permissions level for the stack, or an attached policy that
%% explicitly grants permissions. For more information on user permissions,
%% see <a
%% href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing
%% User Permissions</a>.
update_stack(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_stack(Client, Input, []).
update_stack(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateStack">>, Input, Options).

%% @doc Updates a specified user profile.
%%
%% <b>Required Permissions</b>: To use this action, an IAM user must have an
%% attached policy that explicitly grants permissions. For more information
%% on user permissions, see <a
%% href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing
%% User Permissions</a>.
update_user_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_user_profile(Client, Input, []).
update_user_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateUserProfile">>, Input, Options).

%% @doc Updates an Amazon EBS volume's name or mount point. For more
%% information, see <a
%% href="http://docs.aws.amazon.com/opsworks/latest/userguide/resources.html">Resource
%% Management</a>.
%%
%% <b>Required Permissions</b>: To use this action, an IAM user must have a
%% Manage permissions level for the stack, or an attached policy that
%% explicitly grants permissions. For more information on user permissions,
%% see <a
%% href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing
%% User Permissions</a>.
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
    Error :: {binary(), binary()}.
request(Client, Action, Input, Options) ->
    Client1 = Client#{service => <<"opsworks">>},
    Host = aws_util:binary_join([<<"opsworks.">>,
                                 maps:get(region, Client1),
                                 <<".">>,
                                 maps:get(endpoint, Client1)],
                                <<"">>),
    URL = aws_util:binary_join([<<"https://">>, Host, <<"/">>], <<"">>),
    Headers = [{<<"Host">>, Host},
               {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
               {<<"X-Amz-Target">>, << <<"OpsWorks_20130218.">>/binary, Action/binary>>}],
    Payload = jsx:encode(Input),
    Headers1 = aws_request:sign_request(Client1, <<"POST">>, URL, Headers, Payload),
    Response = hackney:request(post, URL, Headers1, Payload, Options),
    handle_response(Response).

handle_response({ok, 200, ResponseHeaders, Client}) ->
    case hackney:body(Client) of
        {ok, <<>>} ->
            {ok, undefined, {200, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = jsx:decode(Body, [return_maps]),
            {ok, Result, {200, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}) ->
    {ok, Body} = hackney:body(Client),
    #{<<"__type">> := Exception,
      <<"message">> := Reason} = jsx:decode(Body, [return_maps]),
    {error, {Exception, Reason}, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}) ->
    {error, Reason}.
