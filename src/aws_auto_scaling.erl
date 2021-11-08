%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon EC2 Auto Scaling
%%
%% Amazon EC2 Auto Scaling is designed to automatically launch or terminate
%% EC2 instances based on user-defined scaling policies, scheduled actions,
%% and health checks.
%%
%% For more information about Amazon EC2 Auto Scaling, see the Amazon EC2
%% Auto Scaling User Guide. For information about granting IAM users required
%% permissions for calls to Amazon EC2 Auto Scaling, see Granting IAM users
%% required permissions for Amazon EC2 Auto Scaling resources in the Amazon
%% EC2 Auto Scaling API Reference.
-module(aws_auto_scaling).

-export([attach_instances/2,
         attach_instances/3,
         attach_load_balancer_target_groups/2,
         attach_load_balancer_target_groups/3,
         attach_load_balancers/2,
         attach_load_balancers/3,
         batch_delete_scheduled_action/2,
         batch_delete_scheduled_action/3,
         batch_put_scheduled_update_group_action/2,
         batch_put_scheduled_update_group_action/3,
         cancel_instance_refresh/2,
         cancel_instance_refresh/3,
         complete_lifecycle_action/2,
         complete_lifecycle_action/3,
         create_auto_scaling_group/2,
         create_auto_scaling_group/3,
         create_launch_configuration/2,
         create_launch_configuration/3,
         create_or_update_tags/2,
         create_or_update_tags/3,
         delete_auto_scaling_group/2,
         delete_auto_scaling_group/3,
         delete_launch_configuration/2,
         delete_launch_configuration/3,
         delete_lifecycle_hook/2,
         delete_lifecycle_hook/3,
         delete_notification_configuration/2,
         delete_notification_configuration/3,
         delete_policy/2,
         delete_policy/3,
         delete_scheduled_action/2,
         delete_scheduled_action/3,
         delete_tags/2,
         delete_tags/3,
         delete_warm_pool/2,
         delete_warm_pool/3,
         describe_account_limits/2,
         describe_account_limits/3,
         describe_adjustment_types/2,
         describe_adjustment_types/3,
         describe_auto_scaling_groups/2,
         describe_auto_scaling_groups/3,
         describe_auto_scaling_instances/2,
         describe_auto_scaling_instances/3,
         describe_auto_scaling_notification_types/2,
         describe_auto_scaling_notification_types/3,
         describe_instance_refreshes/2,
         describe_instance_refreshes/3,
         describe_launch_configurations/2,
         describe_launch_configurations/3,
         describe_lifecycle_hook_types/2,
         describe_lifecycle_hook_types/3,
         describe_lifecycle_hooks/2,
         describe_lifecycle_hooks/3,
         describe_load_balancer_target_groups/2,
         describe_load_balancer_target_groups/3,
         describe_load_balancers/2,
         describe_load_balancers/3,
         describe_metric_collection_types/2,
         describe_metric_collection_types/3,
         describe_notification_configurations/2,
         describe_notification_configurations/3,
         describe_policies/2,
         describe_policies/3,
         describe_scaling_activities/2,
         describe_scaling_activities/3,
         describe_scaling_process_types/2,
         describe_scaling_process_types/3,
         describe_scheduled_actions/2,
         describe_scheduled_actions/3,
         describe_tags/2,
         describe_tags/3,
         describe_termination_policy_types/2,
         describe_termination_policy_types/3,
         describe_warm_pool/2,
         describe_warm_pool/3,
         detach_instances/2,
         detach_instances/3,
         detach_load_balancer_target_groups/2,
         detach_load_balancer_target_groups/3,
         detach_load_balancers/2,
         detach_load_balancers/3,
         disable_metrics_collection/2,
         disable_metrics_collection/3,
         enable_metrics_collection/2,
         enable_metrics_collection/3,
         enter_standby/2,
         enter_standby/3,
         execute_policy/2,
         execute_policy/3,
         exit_standby/2,
         exit_standby/3,
         get_predictive_scaling_forecast/2,
         get_predictive_scaling_forecast/3,
         put_lifecycle_hook/2,
         put_lifecycle_hook/3,
         put_notification_configuration/2,
         put_notification_configuration/3,
         put_scaling_policy/2,
         put_scaling_policy/3,
         put_scheduled_update_group_action/2,
         put_scheduled_update_group_action/3,
         put_warm_pool/2,
         put_warm_pool/3,
         record_lifecycle_action_heartbeat/2,
         record_lifecycle_action_heartbeat/3,
         resume_processes/2,
         resume_processes/3,
         set_desired_capacity/2,
         set_desired_capacity/3,
         set_instance_health/2,
         set_instance_health/3,
         set_instance_protection/2,
         set_instance_protection/3,
         start_instance_refresh/2,
         start_instance_refresh/3,
         suspend_processes/2,
         suspend_processes/3,
         terminate_instance_in_auto_scaling_group/2,
         terminate_instance_in_auto_scaling_group/3,
         update_auto_scaling_group/2,
         update_auto_scaling_group/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Attaches one or more EC2 instances to the specified Auto Scaling
%% group.
%%
%% When you attach instances, Amazon EC2 Auto Scaling increases the desired
%% capacity of the group by the number of instances being attached. If the
%% number of instances being attached plus the desired capacity of the group
%% exceeds the maximum size of the group, the operation fails.
%%
%% If there is a Classic Load Balancer attached to your Auto Scaling group,
%% the instances are also registered with the load balancer. If there are
%% target groups attached to your Auto Scaling group, the instances are also
%% registered with the target groups.
%%
%% For more information, see Attach EC2 instances to your Auto Scaling group
%% in the Amazon EC2 Auto Scaling User Guide.
attach_instances(Client, Input)
  when is_map(Client), is_map(Input) ->
    attach_instances(Client, Input, []).
attach_instances(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AttachInstances">>, Input, Options).

%% @doc Attaches one or more target groups to the specified Auto Scaling
%% group.
%%
%% This operation is used with the following load balancer types:
%%
%% <ul> <li> Application Load Balancer - Operates at the application layer
%% (layer 7) and supports HTTP and HTTPS.
%%
%% </li> <li> Network Load Balancer - Operates at the transport layer (layer
%% 4) and supports TCP, TLS, and UDP.
%%
%% </li> <li> Gateway Load Balancer - Operates at the network layer (layer
%% 3).
%%
%% </li> </ul> To describe the target groups for an Auto Scaling group, call
%% the `DescribeLoadBalancerTargetGroups' API. To detach the target group
%% from the Auto Scaling group, call the `DetachLoadBalancerTargetGroups'
%% API.
%%
%% For more information, see Elastic Load Balancing and Amazon EC2 Auto
%% Scaling in the Amazon EC2 Auto Scaling User Guide.
attach_load_balancer_target_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    attach_load_balancer_target_groups(Client, Input, []).
attach_load_balancer_target_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AttachLoadBalancerTargetGroups">>, Input, Options).

%% @doc To attach an Application Load Balancer, Network Load Balancer, or
%% Gateway Load Balancer, use the `AttachLoadBalancerTargetGroups' API
%% operation instead.
%%
%% Attaches one or more Classic Load Balancers to the specified Auto Scaling
%% group. Amazon EC2 Auto Scaling registers the running instances with these
%% Classic Load Balancers.
%%
%% To describe the load balancers for an Auto Scaling group, call the
%% `DescribeLoadBalancers' API. To detach the load balancer from the Auto
%% Scaling group, call the `DetachLoadBalancers' API.
%%
%% For more information, see Elastic Load Balancing and Amazon EC2 Auto
%% Scaling in the Amazon EC2 Auto Scaling User Guide.
attach_load_balancers(Client, Input)
  when is_map(Client), is_map(Input) ->
    attach_load_balancers(Client, Input, []).
attach_load_balancers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AttachLoadBalancers">>, Input, Options).

%% @doc Deletes one or more scheduled actions for the specified Auto Scaling
%% group.
batch_delete_scheduled_action(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_delete_scheduled_action(Client, Input, []).
batch_delete_scheduled_action(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchDeleteScheduledAction">>, Input, Options).

%% @doc Creates or updates one or more scheduled scaling actions for an Auto
%% Scaling group.
batch_put_scheduled_update_group_action(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_put_scheduled_update_group_action(Client, Input, []).
batch_put_scheduled_update_group_action(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchPutScheduledUpdateGroupAction">>, Input, Options).

%% @doc Cancels an instance refresh operation in progress.
%%
%% Cancellation does not roll back any replacements that have already been
%% completed, but it prevents new replacements from being started.
%%
%% This operation is part of the instance refresh feature in Amazon EC2 Auto
%% Scaling, which helps you update instances in your Auto Scaling group after
%% you make configuration changes.
cancel_instance_refresh(Client, Input)
  when is_map(Client), is_map(Input) ->
    cancel_instance_refresh(Client, Input, []).
cancel_instance_refresh(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CancelInstanceRefresh">>, Input, Options).

%% @doc Completes the lifecycle action for the specified token or instance
%% with the specified result.
%%
%% This step is a part of the procedure for adding a lifecycle hook to an
%% Auto Scaling group:
%%
%% <ol> <li> (Optional) Create a Lambda function and a rule that allows
%% CloudWatch Events to invoke your Lambda function when Amazon EC2 Auto
%% Scaling launches or terminates instances.
%%
%% </li> <li> (Optional) Create a notification target and an IAM role. The
%% target can be either an Amazon SQS queue or an Amazon SNS topic. The role
%% allows Amazon EC2 Auto Scaling to publish lifecycle notifications to the
%% target.
%%
%% </li> <li> Create the lifecycle hook. Specify whether the hook is used
%% when the instances launch or terminate.
%%
%% </li> <li> If you need more time, record the lifecycle action heartbeat to
%% keep the instance in a pending state.
%%
%% </li> <li> If you finish before the timeout period ends, complete the
%% lifecycle action.
%%
%% </li> </ol> For more information, see Amazon EC2 Auto Scaling lifecycle
%% hooks in the Amazon EC2 Auto Scaling User Guide.
complete_lifecycle_action(Client, Input)
  when is_map(Client), is_map(Input) ->
    complete_lifecycle_action(Client, Input, []).
complete_lifecycle_action(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CompleteLifecycleAction">>, Input, Options).

%% @doc We strongly recommend using a launch template when calling this
%% operation to ensure full functionality for Amazon EC2 Auto Scaling and
%% Amazon EC2.
%%
%% Creates an Auto Scaling group with the specified name and attributes.
%%
%% If you exceed your maximum limit of Auto Scaling groups, the call fails.
%% To query this limit, call the `DescribeAccountLimits' API. For information
%% about updating this limit, see Amazon EC2 Auto Scaling service quotas in
%% the Amazon EC2 Auto Scaling User Guide.
%%
%% For introductory exercises for creating an Auto Scaling group, see Getting
%% started with Amazon EC2 Auto Scaling and Tutorial: Set up a scaled and
%% load-balanced application in the Amazon EC2 Auto Scaling User Guide. For
%% more information, see Auto Scaling groups in the Amazon EC2 Auto Scaling
%% User Guide.
%%
%% Every Auto Scaling group has three size parameters (`DesiredCapacity',
%% `MaxSize', and `MinSize'). Usually, you set these sizes based on a
%% specific number of instances. However, if you configure a mixed instances
%% policy that defines weights for the instance types, you must specify these
%% sizes with the same units that you use for weighting instances.
create_auto_scaling_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_auto_scaling_group(Client, Input, []).
create_auto_scaling_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateAutoScalingGroup">>, Input, Options).

%% @doc Creates a launch configuration.
%%
%% If you exceed your maximum limit of launch configurations, the call fails.
%% To query this limit, call the `DescribeAccountLimits' API. For information
%% about updating this limit, see Amazon EC2 Auto Scaling service quotas in
%% the Amazon EC2 Auto Scaling User Guide.
%%
%% For more information, see Launch configurations in the Amazon EC2 Auto
%% Scaling User Guide.
create_launch_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_launch_configuration(Client, Input, []).
create_launch_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateLaunchConfiguration">>, Input, Options).

%% @doc Creates or updates tags for the specified Auto Scaling group.
%%
%% When you specify a tag with a key that already exists, the operation
%% overwrites the previous tag definition, and you do not get an error
%% message.
%%
%% For more information, see Tagging Auto Scaling groups and instances in the
%% Amazon EC2 Auto Scaling User Guide.
create_or_update_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_or_update_tags(Client, Input, []).
create_or_update_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateOrUpdateTags">>, Input, Options).

%% @doc Deletes the specified Auto Scaling group.
%%
%% If the group has instances or scaling activities in progress, you must
%% specify the option to force the deletion in order for it to succeed.
%%
%% If the group has policies, deleting the group deletes the policies, the
%% underlying alarm actions, and any alarm that no longer has an associated
%% action.
%%
%% To remove instances from the Auto Scaling group before deleting it, call
%% the `DetachInstances' API with the list of instances and the option to
%% decrement the desired capacity. This ensures that Amazon EC2 Auto Scaling
%% does not launch replacement instances.
%%
%% To terminate all instances before deleting the Auto Scaling group, call
%% the `UpdateAutoScalingGroup' API and set the minimum size and desired
%% capacity of the Auto Scaling group to zero.
delete_auto_scaling_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_auto_scaling_group(Client, Input, []).
delete_auto_scaling_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAutoScalingGroup">>, Input, Options).

%% @doc Deletes the specified launch configuration.
%%
%% The launch configuration must not be attached to an Auto Scaling group.
%% When this call completes, the launch configuration is no longer available
%% for use.
delete_launch_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_launch_configuration(Client, Input, []).
delete_launch_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteLaunchConfiguration">>, Input, Options).

%% @doc Deletes the specified lifecycle hook.
%%
%% If there are any outstanding lifecycle actions, they are completed first
%% (`ABANDON' for launching instances, `CONTINUE' for terminating instances).
delete_lifecycle_hook(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_lifecycle_hook(Client, Input, []).
delete_lifecycle_hook(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteLifecycleHook">>, Input, Options).

%% @doc Deletes the specified notification.
delete_notification_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_notification_configuration(Client, Input, []).
delete_notification_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteNotificationConfiguration">>, Input, Options).

%% @doc Deletes the specified scaling policy.
%%
%% Deleting either a step scaling policy or a simple scaling policy deletes
%% the underlying alarm action, but does not delete the alarm, even if it no
%% longer has an associated action.
%%
%% For more information, see Deleting a scaling policy in the Amazon EC2 Auto
%% Scaling User Guide.
delete_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_policy(Client, Input, []).
delete_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeletePolicy">>, Input, Options).

%% @doc Deletes the specified scheduled action.
delete_scheduled_action(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_scheduled_action(Client, Input, []).
delete_scheduled_action(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteScheduledAction">>, Input, Options).

%% @doc Deletes the specified tags.
delete_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_tags(Client, Input, []).
delete_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteTags">>, Input, Options).

%% @doc Deletes the warm pool for the specified Auto Scaling group.
%%
%% For more information, see Warm pools for Amazon EC2 Auto Scaling in the
%% Amazon EC2 Auto Scaling User Guide.
delete_warm_pool(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_warm_pool(Client, Input, []).
delete_warm_pool(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteWarmPool">>, Input, Options).

%% @doc Describes the current Amazon EC2 Auto Scaling resource quotas for
%% your account.
%%
%% When you establish an Amazon Web Services account, the account has initial
%% quotas on the maximum number of Auto Scaling groups and launch
%% configurations that you can create in a given Region. For more
%% information, see Amazon EC2 Auto Scaling service quotas in the Amazon EC2
%% Auto Scaling User Guide.
describe_account_limits(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_account_limits(Client, Input, []).
describe_account_limits(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAccountLimits">>, Input, Options).

%% @doc Describes the available adjustment types for step scaling and simple
%% scaling policies.
%%
%% The following adjustment types are supported:
%%
%% <ul> <li> `ChangeInCapacity'
%%
%% </li> <li> `ExactCapacity'
%%
%% </li> <li> `PercentChangeInCapacity'
%%
%% </li> </ul>
describe_adjustment_types(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_adjustment_types(Client, Input, []).
describe_adjustment_types(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAdjustmentTypes">>, Input, Options).

%% @doc Gets information about the Auto Scaling groups in the account and
%% Region.
%%
%% If you specify Auto Scaling group names, the output includes information
%% for only the specified Auto Scaling groups. If you specify filters, the
%% output includes information for only those Auto Scaling groups that meet
%% the filter criteria. If you do not specify group names or filters, the
%% output includes information for all Auto Scaling groups.
%%
%% This operation also returns information about instances in Auto Scaling
%% groups. To retrieve information about the instances in a warm pool, you
%% must call the `DescribeWarmPool' API.
describe_auto_scaling_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_auto_scaling_groups(Client, Input, []).
describe_auto_scaling_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAutoScalingGroups">>, Input, Options).

%% @doc Gets information about the Auto Scaling instances in the account and
%% Region.
describe_auto_scaling_instances(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_auto_scaling_instances(Client, Input, []).
describe_auto_scaling_instances(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAutoScalingInstances">>, Input, Options).

%% @doc Describes the notification types that are supported by Amazon EC2
%% Auto Scaling.
describe_auto_scaling_notification_types(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_auto_scaling_notification_types(Client, Input, []).
describe_auto_scaling_notification_types(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAutoScalingNotificationTypes">>, Input, Options).

%% @doc Gets information about the instance refreshes for the specified Auto
%% Scaling group.
%%
%% This operation is part of the instance refresh feature in Amazon EC2 Auto
%% Scaling, which helps you update instances in your Auto Scaling group after
%% you make configuration changes.
%%
%% To help you determine the status of an instance refresh, this operation
%% returns information about the instance refreshes you previously initiated,
%% including their status, end time, the percentage of the instance refresh
%% that is complete, and the number of instances remaining to update before
%% the instance refresh is complete.
%%
%% The following are the possible statuses:
%%
%% <ul> <li> `Pending' - The request was created, but the operation has not
%% started.
%%
%% </li> <li> `InProgress' - The operation is in progress.
%%
%% </li> <li> `Successful' - The operation completed successfully.
%%
%% </li> <li> `Failed' - The operation failed to complete. You can
%% troubleshoot using the status reason and the scaling activities.
%%
%% </li> <li> `Cancelling' - An ongoing operation is being cancelled.
%% Cancellation does not roll back any replacements that have already been
%% completed, but it prevents new replacements from being started.
%%
%% </li> <li> `Cancelled' - The operation is cancelled.
%%
%% </li> </ul>
describe_instance_refreshes(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_instance_refreshes(Client, Input, []).
describe_instance_refreshes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeInstanceRefreshes">>, Input, Options).

%% @doc Gets information about the launch configurations in the account and
%% Region.
describe_launch_configurations(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_launch_configurations(Client, Input, []).
describe_launch_configurations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeLaunchConfigurations">>, Input, Options).

%% @doc Describes the available types of lifecycle hooks.
%%
%% The following hook types are supported:
%%
%% <ul> <li> `autoscaling:EC2_INSTANCE_LAUNCHING'
%%
%% </li> <li> `autoscaling:EC2_INSTANCE_TERMINATING'
%%
%% </li> </ul>
describe_lifecycle_hook_types(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_lifecycle_hook_types(Client, Input, []).
describe_lifecycle_hook_types(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeLifecycleHookTypes">>, Input, Options).

%% @doc Gets information about the lifecycle hooks for the specified Auto
%% Scaling group.
describe_lifecycle_hooks(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_lifecycle_hooks(Client, Input, []).
describe_lifecycle_hooks(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeLifecycleHooks">>, Input, Options).

%% @doc Gets information about the load balancer target groups for the
%% specified Auto Scaling group.
%%
%% To determine the availability of registered instances, use the `State'
%% element in the response. When you attach a target group to an Auto Scaling
%% group, the initial `State' value is `Adding'. The state transitions to
%% `Added' after all Auto Scaling instances are registered with the target
%% group. If Elastic Load Balancing health checks are enabled for the Auto
%% Scaling group, the state transitions to `InService' after at least one
%% Auto Scaling instance passes the health check. When the target group is in
%% the `InService' state, Amazon EC2 Auto Scaling can terminate and replace
%% any instances that are reported as unhealthy. If no registered instances
%% pass the health checks, the target group doesn't enter the `InService'
%% state.
%%
%% Target groups also have an `InService' state if you attach them in the
%% `CreateAutoScalingGroup' API call. If your target group state is
%% `InService', but it is not working properly, check the scaling activities
%% by calling `DescribeScalingActivities' and take any corrective actions
%% necessary.
%%
%% For help with failed health checks, see Troubleshooting Amazon EC2 Auto
%% Scaling: Health checks in the Amazon EC2 Auto Scaling User Guide. For more
%% information, see Elastic Load Balancing and Amazon EC2 Auto Scaling in the
%% Amazon EC2 Auto Scaling User Guide.
describe_load_balancer_target_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_load_balancer_target_groups(Client, Input, []).
describe_load_balancer_target_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeLoadBalancerTargetGroups">>, Input, Options).

%% @doc Gets information about the load balancers for the specified Auto
%% Scaling group.
%%
%% This operation describes only Classic Load Balancers. If you have
%% Application Load Balancers, Network Load Balancers, or Gateway Load
%% Balancers, use the `DescribeLoadBalancerTargetGroups' API instead.
%%
%% To determine the availability of registered instances, use the `State'
%% element in the response. When you attach a load balancer to an Auto
%% Scaling group, the initial `State' value is `Adding'. The state
%% transitions to `Added' after all Auto Scaling instances are registered
%% with the load balancer. If Elastic Load Balancing health checks are
%% enabled for the Auto Scaling group, the state transitions to `InService'
%% after at least one Auto Scaling instance passes the health check. When the
%% load balancer is in the `InService' state, Amazon EC2 Auto Scaling can
%% terminate and replace any instances that are reported as unhealthy. If no
%% registered instances pass the health checks, the load balancer doesn't
%% enter the `InService' state.
%%
%% Load balancers also have an `InService' state if you attach them in the
%% `CreateAutoScalingGroup' API call. If your load balancer state is
%% `InService', but it is not working properly, check the scaling activities
%% by calling `DescribeScalingActivities' and take any corrective actions
%% necessary.
%%
%% For help with failed health checks, see Troubleshooting Amazon EC2 Auto
%% Scaling: Health checks in the Amazon EC2 Auto Scaling User Guide. For more
%% information, see Elastic Load Balancing and Amazon EC2 Auto Scaling in the
%% Amazon EC2 Auto Scaling User Guide.
describe_load_balancers(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_load_balancers(Client, Input, []).
describe_load_balancers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeLoadBalancers">>, Input, Options).

%% @doc Describes the available CloudWatch metrics for Amazon EC2 Auto
%% Scaling.
%%
%% The `GroupStandbyInstances' metric is not returned by default. You must
%% explicitly request this metric when calling the `EnableMetricsCollection'
%% API.
describe_metric_collection_types(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_metric_collection_types(Client, Input, []).
describe_metric_collection_types(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeMetricCollectionTypes">>, Input, Options).

%% @doc Gets information about the Amazon SNS notifications that are
%% configured for one or more Auto Scaling groups.
describe_notification_configurations(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_notification_configurations(Client, Input, []).
describe_notification_configurations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeNotificationConfigurations">>, Input, Options).

%% @doc Gets information about the scaling policies in the account and
%% Region.
describe_policies(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_policies(Client, Input, []).
describe_policies(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribePolicies">>, Input, Options).

%% @doc Gets information about the scaling activities in the account and
%% Region.
%%
%% When scaling events occur, you see a record of the scaling activity in the
%% scaling activities. For more information, see Verifying a scaling activity
%% for an Auto Scaling group in the Amazon EC2 Auto Scaling User Guide.
%%
%% If the scaling event succeeds, the value of the `StatusCode' element in
%% the response is `Successful'. If an attempt to launch instances failed,
%% the `StatusCode' value is `Failed' or `Cancelled' and the `StatusMessage'
%% element in the response indicates the cause of the failure. For help
%% interpreting the `StatusMessage', see Troubleshooting Amazon EC2 Auto
%% Scaling in the Amazon EC2 Auto Scaling User Guide.
describe_scaling_activities(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_scaling_activities(Client, Input, []).
describe_scaling_activities(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeScalingActivities">>, Input, Options).

%% @doc Describes the scaling process types for use with the
%% `ResumeProcesses' and `SuspendProcesses' APIs.
describe_scaling_process_types(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_scaling_process_types(Client, Input, []).
describe_scaling_process_types(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeScalingProcessTypes">>, Input, Options).

%% @doc Gets information about the scheduled actions that haven't run or that
%% have not reached their end time.
%%
%% To describe the scaling activities for scheduled actions that have already
%% run, call the `DescribeScalingActivities' API.
describe_scheduled_actions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_scheduled_actions(Client, Input, []).
describe_scheduled_actions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeScheduledActions">>, Input, Options).

%% @doc Describes the specified tags.
%%
%% You can use filters to limit the results. For example, you can query for
%% the tags for a specific Auto Scaling group. You can specify multiple
%% values for a filter. A tag must match at least one of the specified values
%% for it to be included in the results.
%%
%% You can also specify multiple filters. The result includes information for
%% a particular tag only if it matches all the filters. If there's no match,
%% no special message is returned.
%%
%% For more information, see Tagging Auto Scaling groups and instances in the
%% Amazon EC2 Auto Scaling User Guide.
describe_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_tags(Client, Input, []).
describe_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTags">>, Input, Options).

%% @doc Describes the termination policies supported by Amazon EC2 Auto
%% Scaling.
%%
%% For more information, see Controlling which Auto Scaling instances
%% terminate during scale in in the Amazon EC2 Auto Scaling User Guide.
describe_termination_policy_types(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_termination_policy_types(Client, Input, []).
describe_termination_policy_types(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTerminationPolicyTypes">>, Input, Options).

%% @doc Gets information about a warm pool and its instances.
%%
%% For more information, see Warm pools for Amazon EC2 Auto Scaling in the
%% Amazon EC2 Auto Scaling User Guide.
describe_warm_pool(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_warm_pool(Client, Input, []).
describe_warm_pool(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeWarmPool">>, Input, Options).

%% @doc Removes one or more instances from the specified Auto Scaling group.
%%
%% After the instances are detached, you can manage them independent of the
%% Auto Scaling group.
%%
%% If you do not specify the option to decrement the desired capacity, Amazon
%% EC2 Auto Scaling launches instances to replace the ones that are detached.
%%
%% If there is a Classic Load Balancer attached to the Auto Scaling group,
%% the instances are deregistered from the load balancer. If there are target
%% groups attached to the Auto Scaling group, the instances are deregistered
%% from the target groups.
%%
%% For more information, see Detach EC2 instances from your Auto Scaling
%% group in the Amazon EC2 Auto Scaling User Guide.
detach_instances(Client, Input)
  when is_map(Client), is_map(Input) ->
    detach_instances(Client, Input, []).
detach_instances(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DetachInstances">>, Input, Options).

%% @doc Detaches one or more target groups from the specified Auto Scaling
%% group.
detach_load_balancer_target_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    detach_load_balancer_target_groups(Client, Input, []).
detach_load_balancer_target_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DetachLoadBalancerTargetGroups">>, Input, Options).

%% @doc Detaches one or more Classic Load Balancers from the specified Auto
%% Scaling group.
%%
%% This operation detaches only Classic Load Balancers. If you have
%% Application Load Balancers, Network Load Balancers, or Gateway Load
%% Balancers, use the `DetachLoadBalancerTargetGroups' API instead.
%%
%% When you detach a load balancer, it enters the `Removing' state while
%% deregistering the instances in the group. When all instances are
%% deregistered, then you can no longer describe the load balancer using the
%% `DescribeLoadBalancers' API call. The instances remain running.
detach_load_balancers(Client, Input)
  when is_map(Client), is_map(Input) ->
    detach_load_balancers(Client, Input, []).
detach_load_balancers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DetachLoadBalancers">>, Input, Options).

%% @doc Disables group metrics for the specified Auto Scaling group.
disable_metrics_collection(Client, Input)
  when is_map(Client), is_map(Input) ->
    disable_metrics_collection(Client, Input, []).
disable_metrics_collection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisableMetricsCollection">>, Input, Options).

%% @doc Enables group metrics for the specified Auto Scaling group.
%%
%% For more information, see Monitoring CloudWatch metrics for your Auto
%% Scaling groups and instances in the Amazon EC2 Auto Scaling User Guide.
enable_metrics_collection(Client, Input)
  when is_map(Client), is_map(Input) ->
    enable_metrics_collection(Client, Input, []).
enable_metrics_collection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"EnableMetricsCollection">>, Input, Options).

%% @doc Moves the specified instances into the standby state.
%%
%% If you choose to decrement the desired capacity of the Auto Scaling group,
%% the instances can enter standby as long as the desired capacity of the
%% Auto Scaling group after the instances are placed into standby is equal to
%% or greater than the minimum capacity of the group.
%%
%% If you choose not to decrement the desired capacity of the Auto Scaling
%% group, the Auto Scaling group launches new instances to replace the
%% instances on standby.
%%
%% For more information, see Temporarily removing instances from your Auto
%% Scaling group in the Amazon EC2 Auto Scaling User Guide.
enter_standby(Client, Input)
  when is_map(Client), is_map(Input) ->
    enter_standby(Client, Input, []).
enter_standby(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"EnterStandby">>, Input, Options).

%% @doc Executes the specified policy.
%%
%% This can be useful for testing the design of your scaling policy.
execute_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    execute_policy(Client, Input, []).
execute_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ExecutePolicy">>, Input, Options).

%% @doc Moves the specified instances out of the standby state.
%%
%% After you put the instances back in service, the desired capacity is
%% incremented.
%%
%% For more information, see Temporarily removing instances from your Auto
%% Scaling group in the Amazon EC2 Auto Scaling User Guide.
exit_standby(Client, Input)
  when is_map(Client), is_map(Input) ->
    exit_standby(Client, Input, []).
exit_standby(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ExitStandby">>, Input, Options).

%% @doc Retrieves the forecast data for a predictive scaling policy.
%%
%% Load forecasts are predictions of the hourly load values using historical
%% load data from CloudWatch and an analysis of historical trends. Capacity
%% forecasts are represented as predicted values for the minimum capacity
%% that is needed on an hourly basis, based on the hourly load forecast.
%%
%% A minimum of 24 hours of data is required to create the initial forecasts.
%% However, having a full 14 days of historical data results in more accurate
%% forecasts.
%%
%% For more information, see Predictive scaling for Amazon EC2 Auto Scaling
%% in the Amazon EC2 Auto Scaling User Guide.
get_predictive_scaling_forecast(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_predictive_scaling_forecast(Client, Input, []).
get_predictive_scaling_forecast(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetPredictiveScalingForecast">>, Input, Options).

%% @doc Creates or updates a lifecycle hook for the specified Auto Scaling
%% group.
%%
%% A lifecycle hook tells Amazon EC2 Auto Scaling to perform an action on an
%% instance when the instance launches (before it is put into service) or as
%% the instance terminates (before it is fully terminated).
%%
%% This step is a part of the procedure for adding a lifecycle hook to an
%% Auto Scaling group:
%%
%% <ol> <li> (Optional) Create a Lambda function and a rule that allows
%% CloudWatch Events to invoke your Lambda function when Amazon EC2 Auto
%% Scaling launches or terminates instances.
%%
%% </li> <li> (Optional) Create a notification target and an IAM role. The
%% target can be either an Amazon SQS queue or an Amazon SNS topic. The role
%% allows Amazon EC2 Auto Scaling to publish lifecycle notifications to the
%% target.
%%
%% </li> <li> Create the lifecycle hook. Specify whether the hook is used
%% when the instances launch or terminate.
%%
%% </li> <li> If you need more time, record the lifecycle action heartbeat to
%% keep the instance in a pending state using the
%% `RecordLifecycleActionHeartbeat' API call.
%%
%% </li> <li> If you finish before the timeout period ends, complete the
%% lifecycle action using the `CompleteLifecycleAction' API call.
%%
%% </li> </ol> For more information, see Amazon EC2 Auto Scaling lifecycle
%% hooks in the Amazon EC2 Auto Scaling User Guide.
%%
%% If you exceed your maximum limit of lifecycle hooks, which by default is
%% 50 per Auto Scaling group, the call fails.
%%
%% You can view the lifecycle hooks for an Auto Scaling group using the
%% `DescribeLifecycleHooks' API call. If you are no longer using a lifecycle
%% hook, you can delete it by calling the `DeleteLifecycleHook' API.
put_lifecycle_hook(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_lifecycle_hook(Client, Input, []).
put_lifecycle_hook(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutLifecycleHook">>, Input, Options).

%% @doc Configures an Auto Scaling group to send notifications when specified
%% events take place.
%%
%% Subscribers to the specified topic can have messages delivered to an
%% endpoint such as a web server or an email address.
%%
%% This configuration overwrites any existing configuration.
%%
%% For more information, see Getting Amazon SNS notifications when your Auto
%% Scaling group scales in the Amazon EC2 Auto Scaling User Guide.
%%
%% If you exceed your maximum limit of SNS topics, which is 10 per Auto
%% Scaling group, the call fails.
put_notification_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_notification_configuration(Client, Input, []).
put_notification_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutNotificationConfiguration">>, Input, Options).

%% @doc Creates or updates a scaling policy for an Auto Scaling group.
%%
%% Scaling policies are used to scale an Auto Scaling group based on
%% configurable metrics. If no policies are defined, the dynamic scaling and
%% predictive scaling features are not used.
%%
%% For more information about using dynamic scaling, see Target tracking
%% scaling policies and Step and simple scaling policies in the Amazon EC2
%% Auto Scaling User Guide.
%%
%% For more information about using predictive scaling, see Predictive
%% scaling for Amazon EC2 Auto Scaling in the Amazon EC2 Auto Scaling User
%% Guide.
%%
%% You can view the scaling policies for an Auto Scaling group using the
%% `DescribePolicies' API call. If you are no longer using a scaling policy,
%% you can delete it by calling the `DeletePolicy' API.
put_scaling_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_scaling_policy(Client, Input, []).
put_scaling_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutScalingPolicy">>, Input, Options).

%% @doc Creates or updates a scheduled scaling action for an Auto Scaling
%% group.
%%
%% For more information, see Scheduled scaling in the Amazon EC2 Auto Scaling
%% User Guide.
%%
%% You can view the scheduled actions for an Auto Scaling group using the
%% `DescribeScheduledActions' API call. If you are no longer using a
%% scheduled action, you can delete it by calling the `DeleteScheduledAction'
%% API.
put_scheduled_update_group_action(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_scheduled_update_group_action(Client, Input, []).
put_scheduled_update_group_action(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutScheduledUpdateGroupAction">>, Input, Options).

%% @doc Creates or updates a warm pool for the specified Auto Scaling group.
%%
%% A warm pool is a pool of pre-initialized EC2 instances that sits alongside
%% the Auto Scaling group. Whenever your application needs to scale out, the
%% Auto Scaling group can draw on the warm pool to meet its new desired
%% capacity. For more information and example configurations, see Warm pools
%% for Amazon EC2 Auto Scaling in the Amazon EC2 Auto Scaling User Guide.
%%
%% This operation must be called from the Region in which the Auto Scaling
%% group was created. This operation cannot be called on an Auto Scaling
%% group that has a mixed instances policy or a launch template or launch
%% configuration that requests Spot Instances.
%%
%% You can view the instances in the warm pool using the `DescribeWarmPool'
%% API call. If you are no longer using a warm pool, you can delete it by
%% calling the `DeleteWarmPool' API.
put_warm_pool(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_warm_pool(Client, Input, []).
put_warm_pool(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutWarmPool">>, Input, Options).

%% @doc Records a heartbeat for the lifecycle action associated with the
%% specified token or instance.
%%
%% This extends the timeout by the length of time defined using the
%% `PutLifecycleHook' API call.
%%
%% This step is a part of the procedure for adding a lifecycle hook to an
%% Auto Scaling group:
%%
%% <ol> <li> (Optional) Create a Lambda function and a rule that allows
%% CloudWatch Events to invoke your Lambda function when Amazon EC2 Auto
%% Scaling launches or terminates instances.
%%
%% </li> <li> (Optional) Create a notification target and an IAM role. The
%% target can be either an Amazon SQS queue or an Amazon SNS topic. The role
%% allows Amazon EC2 Auto Scaling to publish lifecycle notifications to the
%% target.
%%
%% </li> <li> Create the lifecycle hook. Specify whether the hook is used
%% when the instances launch or terminate.
%%
%% </li> <li> If you need more time, record the lifecycle action heartbeat to
%% keep the instance in a pending state.
%%
%% </li> <li> If you finish before the timeout period ends, complete the
%% lifecycle action.
%%
%% </li> </ol> For more information, see Amazon EC2 Auto Scaling lifecycle
%% hooks in the Amazon EC2 Auto Scaling User Guide.
record_lifecycle_action_heartbeat(Client, Input)
  when is_map(Client), is_map(Input) ->
    record_lifecycle_action_heartbeat(Client, Input, []).
record_lifecycle_action_heartbeat(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RecordLifecycleActionHeartbeat">>, Input, Options).

%% @doc Resumes the specified suspended auto scaling processes, or all
%% suspended process, for the specified Auto Scaling group.
%%
%% For more information, see Suspending and resuming scaling processes in the
%% Amazon EC2 Auto Scaling User Guide.
resume_processes(Client, Input)
  when is_map(Client), is_map(Input) ->
    resume_processes(Client, Input, []).
resume_processes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ResumeProcesses">>, Input, Options).

%% @doc Sets the size of the specified Auto Scaling group.
%%
%% If a scale-in activity occurs as a result of a new `DesiredCapacity' value
%% that is lower than the current size of the group, the Auto Scaling group
%% uses its termination policy to determine which instances to terminate.
%%
%% For more information, see Manual scaling in the Amazon EC2 Auto Scaling
%% User Guide.
set_desired_capacity(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_desired_capacity(Client, Input, []).
set_desired_capacity(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetDesiredCapacity">>, Input, Options).

%% @doc Sets the health status of the specified instance.
%%
%% For more information, see Health checks for Auto Scaling instances in the
%% Amazon EC2 Auto Scaling User Guide.
set_instance_health(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_instance_health(Client, Input, []).
set_instance_health(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetInstanceHealth">>, Input, Options).

%% @doc Updates the instance protection settings of the specified instances.
%%
%% This operation cannot be called on instances in a warm pool.
%%
%% For more information about preventing instances that are part of an Auto
%% Scaling group from terminating on scale in, see Instance scale-in
%% protection in the Amazon EC2 Auto Scaling User Guide.
%%
%% If you exceed your maximum limit of instance IDs, which is 50 per Auto
%% Scaling group, the call fails.
set_instance_protection(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_instance_protection(Client, Input, []).
set_instance_protection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetInstanceProtection">>, Input, Options).

%% @doc Starts a new instance refresh operation.
%%
%% An instance refresh performs a rolling replacement of all or some
%% instances in an Auto Scaling group. Each instance is terminated first and
%% then replaced, which temporarily reduces the capacity available within
%% your Auto Scaling group.
%%
%% This operation is part of the instance refresh feature in Amazon EC2 Auto
%% Scaling, which helps you update instances in your Auto Scaling group. This
%% feature is helpful, for example, when you have a new AMI or a new user
%% data script. You just need to create a new launch template that specifies
%% the new AMI or user data script. Then start an instance refresh to
%% immediately begin the process of updating instances in the group.
%%
%% If the call succeeds, it creates a new instance refresh request with a
%% unique ID that you can use to track its progress. To query its status,
%% call the `DescribeInstanceRefreshes' API. To describe the instance
%% refreshes that have already run, call the `DescribeInstanceRefreshes' API.
%% To cancel an instance refresh operation in progress, use the
%% `CancelInstanceRefresh' API.
start_instance_refresh(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_instance_refresh(Client, Input, []).
start_instance_refresh(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartInstanceRefresh">>, Input, Options).

%% @doc Suspends the specified auto scaling processes, or all processes, for
%% the specified Auto Scaling group.
%%
%% If you suspend either the `Launch' or `Terminate' process types, it can
%% prevent other process types from functioning properly. For more
%% information, see Suspending and resuming scaling processes in the Amazon
%% EC2 Auto Scaling User Guide.
%%
%% To resume processes that have been suspended, call the `ResumeProcesses'
%% API.
suspend_processes(Client, Input)
  when is_map(Client), is_map(Input) ->
    suspend_processes(Client, Input, []).
suspend_processes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SuspendProcesses">>, Input, Options).

%% @doc Terminates the specified instance and optionally adjusts the desired
%% group size.
%%
%% This operation cannot be called on instances in a warm pool.
%%
%% This call simply makes a termination request. The instance is not
%% terminated immediately. When an instance is terminated, the instance
%% status changes to `terminated'. You can't connect to or start an instance
%% after you've terminated it.
%%
%% If you do not specify the option to decrement the desired capacity, Amazon
%% EC2 Auto Scaling launches instances to replace the ones that are
%% terminated.
%%
%% By default, Amazon EC2 Auto Scaling balances instances across all
%% Availability Zones. If you decrement the desired capacity, your Auto
%% Scaling group can become unbalanced between Availability Zones. Amazon EC2
%% Auto Scaling tries to rebalance the group, and rebalancing might terminate
%% instances in other zones. For more information, see Rebalancing activities
%% in the Amazon EC2 Auto Scaling User Guide.
terminate_instance_in_auto_scaling_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    terminate_instance_in_auto_scaling_group(Client, Input, []).
terminate_instance_in_auto_scaling_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TerminateInstanceInAutoScalingGroup">>, Input, Options).

%% @doc We strongly recommend that all Auto Scaling groups use launch
%% templates to ensure full functionality for Amazon EC2 Auto Scaling and
%% Amazon EC2.
%%
%% Updates the configuration for the specified Auto Scaling group.
%%
%% To update an Auto Scaling group, specify the name of the group and the
%% parameter that you want to change. Any parameters that you don't specify
%% are not changed by this update request. The new settings take effect on
%% any scaling activities after this call returns.
%%
%% If you associate a new launch configuration or template with an Auto
%% Scaling group, all new instances will get the updated configuration.
%% Existing instances continue to run with the configuration that they were
%% originally launched with. When you update a group to specify a mixed
%% instances policy instead of a launch configuration or template, existing
%% instances may be replaced to match the new purchasing options that you
%% specified in the policy. For example, if the group currently has 100%
%% On-Demand capacity and the policy specifies 50% Spot capacity, this means
%% that half of your instances will be gradually terminated and relaunched as
%% Spot Instances. When replacing instances, Amazon EC2 Auto Scaling launches
%% new instances before terminating the old ones, so that updating your group
%% does not compromise the performance or availability of your application.
%%
%% Note the following about changing `DesiredCapacity', `MaxSize', or
%% `MinSize':
%%
%% <ul> <li> If a scale-in activity occurs as a result of a new
%% `DesiredCapacity' value that is lower than the current size of the group,
%% the Auto Scaling group uses its termination policy to determine which
%% instances to terminate.
%%
%% </li> <li> If you specify a new value for `MinSize' without specifying a
%% value for `DesiredCapacity', and the new `MinSize' is larger than the
%% current size of the group, this sets the group's `DesiredCapacity' to the
%% new `MinSize' value.
%%
%% </li> <li> If you specify a new value for `MaxSize' without specifying a
%% value for `DesiredCapacity', and the new `MaxSize' is smaller than the
%% current size of the group, this sets the group's `DesiredCapacity' to the
%% new `MaxSize' value.
%%
%% </li> </ul> To see which parameters have been set, call the
%% `DescribeAutoScalingGroups' API. To view the scaling policies for an Auto
%% Scaling group, call the `DescribePolicies' API. If the group has scaling
%% policies, you can update them by calling the `PutScalingPolicy' API.
update_auto_scaling_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_auto_scaling_group(Client, Input, []).
update_auto_scaling_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateAutoScalingGroup">>, Input, Options).

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
    Client1 = Client#{service => <<"autoscaling">>},
    Host = build_host(<<"autoscaling">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-www-form-urlencoded">>}
    ],

    Input = Input0#{ <<"Action">> => Action
                   , <<"Version">> => <<"2011-01-01">>
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
