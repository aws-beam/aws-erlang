%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc <fullname>Amazon EC2 Auto Scaling</fullname>
%%
%% Amazon EC2 Auto Scaling is designed to automatically launch or terminate
%% EC2 instances based on user-defined scaling policies, scheduled actions,
%% and health checks. Use this service with AWS Auto Scaling, Amazon
%% CloudWatch, and Elastic Load Balancing.
%%
%% For more information, including information about granting IAM users
%% required permissions for Amazon EC2 Auto Scaling actions, see the <a
%% href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/what-is-amazon-ec2-auto-scaling.html">Amazon
%% EC2 Auto Scaling User Guide</a>.
-module(aws_autoscaling).

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
         put_lifecycle_hook/2,
         put_lifecycle_hook/3,
         put_notification_configuration/2,
         put_notification_configuration/3,
         put_scaling_policy/2,
         put_scaling_policy/3,
         put_scheduled_update_group_action/2,
         put_scheduled_update_group_action/3,
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
%% For more information, see <a
%% href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/attach-instance-asg.html">Attach
%% EC2 Instances to Your Auto Scaling Group</a> in the <i>Amazon EC2 Auto
%% Scaling User Guide</i>.
attach_instances(Client, Input)
  when is_map(Client), is_map(Input) ->
    attach_instances(Client, Input, []).
attach_instances(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AttachInstances">>, Input, Options).

%% @doc Attaches one or more target groups to the specified Auto Scaling
%% group.
%%
%% To describe the target groups for an Auto Scaling group, call the
%% <a>DescribeLoadBalancerTargetGroups</a> API. To detach the target group
%% from the Auto Scaling group, call the
%% <a>DetachLoadBalancerTargetGroups</a> API.
%%
%% With Application Load Balancers and Network Load Balancers, instances are
%% registered as targets with a target group. With Classic Load Balancers,
%% instances are registered with the load balancer. For more information, see
%% <a
%% href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/attach-load-balancer-asg.html">Attaching
%% a Load Balancer to Your Auto Scaling Group</a> in the <i>Amazon EC2 Auto
%% Scaling User Guide</i>.
attach_load_balancer_target_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    attach_load_balancer_target_groups(Client, Input, []).
attach_load_balancer_target_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AttachLoadBalancerTargetGroups">>, Input, Options).

%% @doc <note> To attach an Application Load Balancer or a Network Load
%% Balancer, use the <a>AttachLoadBalancerTargetGroups</a> API operation
%% instead.
%%
%% </note> Attaches one or more Classic Load Balancers to the specified Auto
%% Scaling group. Amazon EC2 Auto Scaling registers the running instances
%% with these Classic Load Balancers.
%%
%% To describe the load balancers for an Auto Scaling group, call the
%% <a>DescribeLoadBalancers</a> API. To detach the load balancer from the
%% Auto Scaling group, call the <a>DetachLoadBalancers</a> API.
%%
%% For more information, see <a
%% href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/attach-load-balancer-asg.html">Attaching
%% a Load Balancer to Your Auto Scaling Group</a> in the <i>Amazon EC2 Auto
%% Scaling User Guide</i>.
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
%% Scaling group. If you leave a parameter unspecified when updating a
%% scheduled scaling action, the corresponding value remains unchanged.
batch_put_scheduled_update_group_action(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_put_scheduled_update_group_action(Client, Input, []).
batch_put_scheduled_update_group_action(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchPutScheduledUpdateGroupAction">>, Input, Options).

%% @doc Cancels an instance refresh operation in progress. Cancellation does
%% not roll back any replacements that have already been completed, but it
%% prevents new replacements from being started.
%%
%% For more information, see <a
%% href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-instance-refresh.html">Replacing
%% Auto Scaling Instances Based on an Instance Refresh</a>.
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
%% </li> <li> <b>If you finish before the timeout period ends, complete the
%% lifecycle action.</b>
%%
%% </li> </ol> For more information, see <a
%% href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/lifecycle-hooks.html">Amazon
%% EC2 Auto Scaling Lifecycle Hooks</a> in the <i>Amazon EC2 Auto Scaling
%% User Guide</i>.
complete_lifecycle_action(Client, Input)
  when is_map(Client), is_map(Input) ->
    complete_lifecycle_action(Client, Input, []).
complete_lifecycle_action(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CompleteLifecycleAction">>, Input, Options).

%% @doc Creates an Auto Scaling group with the specified name and attributes.
%%
%% If you exceed your maximum limit of Auto Scaling groups, the call fails.
%% To query this limit, call the <a>DescribeAccountLimits</a> API. For
%% information about updating this limit, see <a
%% href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-account-limits.html">Amazon
%% EC2 Auto Scaling Service Quotas</a> in the <i>Amazon EC2 Auto Scaling User
%% Guide</i>.
%%
%% For introductory exercises for creating an Auto Scaling group, see <a
%% href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/GettingStartedTutorial.html">Getting
%% Started with Amazon EC2 Auto Scaling</a> and <a
%% href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-register-lbs-with-asg.html">Tutorial:
%% Set Up a Scaled and Load-Balanced Application</a> in the <i>Amazon EC2
%% Auto Scaling User Guide</i>. For more information, see <a
%% href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/AutoScalingGroup.html">Auto
%% Scaling Groups</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.
%%
%% Every Auto Scaling group has three size parameters
%% (<code>DesiredCapacity</code>, <code>MaxSize</code>, and
%% <code>MinSize</code>). Usually, you set these sizes based on a specific
%% number of instances. However, if you configure a mixed instances policy
%% that defines weights for the instance types, you must specify these sizes
%% with the same units that you use for weighting instances.
create_auto_scaling_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_auto_scaling_group(Client, Input, []).
create_auto_scaling_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateAutoScalingGroup">>, Input, Options).

%% @doc Creates a launch configuration.
%%
%% If you exceed your maximum limit of launch configurations, the call fails.
%% To query this limit, call the <a>DescribeAccountLimits</a> API. For
%% information about updating this limit, see <a
%% href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-account-limits.html">Amazon
%% EC2 Auto Scaling Service Quotas</a> in the <i>Amazon EC2 Auto Scaling User
%% Guide</i>.
%%
%% For more information, see <a
%% href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/LaunchConfiguration.html">Launch
%% Configurations</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.
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
%% For more information, see <a
%% href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-tagging.html">Tagging
%% Auto Scaling Groups and Instances</a> in the <i>Amazon EC2 Auto Scaling
%% User Guide</i>.
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
%% the <a>DetachInstances</a> API with the list of instances and the option
%% to decrement the desired capacity. This ensures that Amazon EC2 Auto
%% Scaling does not launch replacement instances.
%%
%% To terminate all instances before deleting the Auto Scaling group, call
%% the <a>UpdateAutoScalingGroup</a> API and set the minimum size and desired
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
%% (<code>ABANDON</code> for launching instances, <code>CONTINUE</code> for
%% terminating instances).
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
%% For more information, see <a
%% href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/deleting-scaling-policy.html">Deleting
%% a Scaling Policy</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.
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

%% @doc Describes the current Amazon EC2 Auto Scaling resource quotas for
%% your AWS account.
%%
%% For information about requesting an increase, see <a
%% href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-account-limits.html">Amazon
%% EC2 Auto Scaling Service Quotas</a> in the <i>Amazon EC2 Auto Scaling User
%% Guide</i>.
describe_account_limits(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_account_limits(Client, Input, []).
describe_account_limits(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAccountLimits">>, Input, Options).

%% @doc Describes the available adjustment types for Amazon EC2 Auto Scaling
%% scaling policies. These settings apply to step scaling policies and simple
%% scaling policies; they do not apply to target tracking scaling policies.
%%
%% The following adjustment types are supported:
%%
%% <ul> <li> ChangeInCapacity
%%
%% </li> <li> ExactCapacity
%%
%% </li> <li> PercentChangeInCapacity
%%
%% </li> </ul>
describe_adjustment_types(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_adjustment_types(Client, Input, []).
describe_adjustment_types(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAdjustmentTypes">>, Input, Options).

%% @doc Describes one or more Auto Scaling groups.
describe_auto_scaling_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_auto_scaling_groups(Client, Input, []).
describe_auto_scaling_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAutoScalingGroups">>, Input, Options).

%% @doc Describes one or more Auto Scaling instances.
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

%% @doc Describes one or more instance refreshes.
%%
%% You can determine the status of a request by looking at the
%% <code>Status</code> parameter. The following are the possible statuses:
%%
%% <ul> <li> <code>Pending</code> - The request was created, but the
%% operation has not started.
%%
%% </li> <li> <code>InProgress</code> - The operation is in progress.
%%
%% </li> <li> <code>Successful</code> - The operation completed successfully.
%%
%% </li> <li> <code>Failed</code> - The operation failed to complete. You can
%% troubleshoot using the status reason and the scaling activities.
%%
%% </li> <li> <code>Cancelling</code> - An ongoing operation is being
%% cancelled. Cancellation does not roll back any replacements that have
%% already been completed, but it prevents new replacements from being
%% started.
%%
%% </li> <li> <code>Cancelled</code> - The operation is cancelled.
%%
%% </li> </ul> For more information, see <a
%% href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-instance-refresh.html">Replacing
%% Auto Scaling Instances Based on an Instance Refresh</a>.
describe_instance_refreshes(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_instance_refreshes(Client, Input, []).
describe_instance_refreshes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeInstanceRefreshes">>, Input, Options).

%% @doc Describes one or more launch configurations.
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
%% <ul> <li> autoscaling:EC2_INSTANCE_LAUNCHING
%%
%% </li> <li> autoscaling:EC2_INSTANCE_TERMINATING
%%
%% </li> </ul>
describe_lifecycle_hook_types(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_lifecycle_hook_types(Client, Input, []).
describe_lifecycle_hook_types(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeLifecycleHookTypes">>, Input, Options).

%% @doc Describes the lifecycle hooks for the specified Auto Scaling group.
describe_lifecycle_hooks(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_lifecycle_hooks(Client, Input, []).
describe_lifecycle_hooks(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeLifecycleHooks">>, Input, Options).

%% @doc Describes the target groups for the specified Auto Scaling group.
describe_load_balancer_target_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_load_balancer_target_groups(Client, Input, []).
describe_load_balancer_target_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeLoadBalancerTargetGroups">>, Input, Options).

%% @doc Describes the load balancers for the specified Auto Scaling group.
%%
%% This operation describes only Classic Load Balancers. If you have
%% Application Load Balancers or Network Load Balancers, use the
%% <a>DescribeLoadBalancerTargetGroups</a> API instead.
describe_load_balancers(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_load_balancers(Client, Input, []).
describe_load_balancers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeLoadBalancers">>, Input, Options).

%% @doc Describes the available CloudWatch metrics for Amazon EC2 Auto
%% Scaling.
%%
%% The <code>GroupStandbyInstances</code> metric is not returned by default.
%% You must explicitly request this metric when calling the
%% <a>EnableMetricsCollection</a> API.
describe_metric_collection_types(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_metric_collection_types(Client, Input, []).
describe_metric_collection_types(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeMetricCollectionTypes">>, Input, Options).

%% @doc Describes the notification actions associated with the specified Auto
%% Scaling group.
describe_notification_configurations(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_notification_configurations(Client, Input, []).
describe_notification_configurations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeNotificationConfigurations">>, Input, Options).

%% @doc Describes the policies for the specified Auto Scaling group.
describe_policies(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_policies(Client, Input, []).
describe_policies(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribePolicies">>, Input, Options).

%% @doc Describes one or more scaling activities for the specified Auto
%% Scaling group.
describe_scaling_activities(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_scaling_activities(Client, Input, []).
describe_scaling_activities(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeScalingActivities">>, Input, Options).

%% @doc Describes the scaling process types for use with the
%% <a>ResumeProcesses</a> and <a>SuspendProcesses</a> APIs.
describe_scaling_process_types(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_scaling_process_types(Client, Input, []).
describe_scaling_process_types(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeScalingProcessTypes">>, Input, Options).

%% @doc Describes the actions scheduled for your Auto Scaling group that
%% haven't run or that have not reached their end time. To describe the
%% actions that have already run, call the <a>DescribeScalingActivities</a>
%% API.
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
%% For more information, see <a
%% href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-tagging.html">Tagging
%% Auto Scaling Groups and Instances</a> in the <i>Amazon EC2 Auto Scaling
%% User Guide</i>.
describe_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_tags(Client, Input, []).
describe_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTags">>, Input, Options).

%% @doc Describes the termination policies supported by Amazon EC2 Auto
%% Scaling.
%%
%% For more information, see <a
%% href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-instance-termination.html">Controlling
%% Which Auto Scaling Instances Terminate During Scale In</a> in the
%% <i>Amazon EC2 Auto Scaling User Guide</i>.
describe_termination_policy_types(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_termination_policy_types(Client, Input, []).
describe_termination_policy_types(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTerminationPolicyTypes">>, Input, Options).

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
%% For more information, see <a
%% href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/detach-instance-asg.html">Detach
%% EC2 Instances from Your Auto Scaling Group</a> in the <i>Amazon EC2 Auto
%% Scaling User Guide</i>.
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
%% Application Load Balancers or Network Load Balancers, use the
%% <a>DetachLoadBalancerTargetGroups</a> API instead.
%%
%% When you detach a load balancer, it enters the <code>Removing</code> state
%% while deregistering the instances in the group. When all instances are
%% deregistered, then you can no longer describe the load balancer using the
%% <a>DescribeLoadBalancers</a> API call. The instances remain running.
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

%% @doc Enables group metrics for the specified Auto Scaling group. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-instance-monitoring.html">Monitoring
%% Your Auto Scaling Groups and Instances</a> in the <i>Amazon EC2 Auto
%% Scaling User Guide</i>.
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
%% For more information, see <a
%% href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-enter-exit-standby.html">Temporarily
%% Removing Instances from Your Auto Scaling Group</a> in the <i>Amazon EC2
%% Auto Scaling User Guide</i>.
enter_standby(Client, Input)
  when is_map(Client), is_map(Input) ->
    enter_standby(Client, Input, []).
enter_standby(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"EnterStandby">>, Input, Options).

%% @doc Executes the specified policy. This can be useful for testing the
%% design of your scaling policy.
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
%% For more information, see <a
%% href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-enter-exit-standby.html">Temporarily
%% Removing Instances from Your Auto Scaling Group</a> in the <i>Amazon EC2
%% Auto Scaling User Guide</i>.
exit_standby(Client, Input)
  when is_map(Client), is_map(Input) ->
    exit_standby(Client, Input, []).
exit_standby(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ExitStandby">>, Input, Options).

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
%% </li> <li> <b>Create the lifecycle hook. Specify whether the hook is used
%% when the instances launch or terminate.</b>
%%
%% </li> <li> If you need more time, record the lifecycle action heartbeat to
%% keep the instance in a pending state using the
%% <a>RecordLifecycleActionHeartbeat</a> API call.
%%
%% </li> <li> If you finish before the timeout period ends, complete the
%% lifecycle action using the <a>CompleteLifecycleAction</a> API call.
%%
%% </li> </ol> For more information, see <a
%% href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/lifecycle-hooks.html">Amazon
%% EC2 Auto Scaling Lifecycle Hooks</a> in the <i>Amazon EC2 Auto Scaling
%% User Guide</i>.
%%
%% If you exceed your maximum limit of lifecycle hooks, which by default is
%% 50 per Auto Scaling group, the call fails.
%%
%% You can view the lifecycle hooks for an Auto Scaling group using the
%% <a>DescribeLifecycleHooks</a> API call. If you are no longer using a
%% lifecycle hook, you can delete it by calling the
%% <a>DeleteLifecycleHook</a> API.
put_lifecycle_hook(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_lifecycle_hook(Client, Input, []).
put_lifecycle_hook(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutLifecycleHook">>, Input, Options).

%% @doc Configures an Auto Scaling group to send notifications when specified
%% events take place. Subscribers to the specified topic can have messages
%% delivered to an endpoint such as a web server or an email address.
%%
%% This configuration overwrites any existing configuration.
%%
%% For more information, see <a
%% href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ASGettingNotifications.html">Getting
%% Amazon SNS Notifications When Your Auto Scaling Group Scales</a> in the
%% <i>Amazon EC2 Auto Scaling User Guide</i>.
put_notification_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_notification_configuration(Client, Input, []).
put_notification_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutNotificationConfiguration">>, Input, Options).

%% @doc Creates or updates a scaling policy for an Auto Scaling group.
%%
%% For more information about using scaling policies to scale your Auto
%% Scaling group, see <a
%% href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-scaling-target-tracking.html">Target
%% Tracking Scaling Policies</a> and <a
%% href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-scaling-simple-step.html">Step
%% and Simple Scaling Policies</a> in the <i>Amazon EC2 Auto Scaling User
%% Guide</i>.
put_scaling_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_scaling_policy(Client, Input, []).
put_scaling_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutScalingPolicy">>, Input, Options).

%% @doc Creates or updates a scheduled scaling action for an Auto Scaling
%% group. If you leave a parameter unspecified when updating a scheduled
%% scaling action, the corresponding value remains unchanged.
%%
%% For more information, see <a
%% href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/schedule_time.html">Scheduled
%% Scaling</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.
put_scheduled_update_group_action(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_scheduled_update_group_action(Client, Input, []).
put_scheduled_update_group_action(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutScheduledUpdateGroupAction">>, Input, Options).

%% @doc Records a heartbeat for the lifecycle action associated with the
%% specified token or instance. This extends the timeout by the length of
%% time defined using the <a>PutLifecycleHook</a> API call.
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
%% </li> <li> <b>If you need more time, record the lifecycle action heartbeat
%% to keep the instance in a pending state.</b>
%%
%% </li> <li> If you finish before the timeout period ends, complete the
%% lifecycle action.
%%
%% </li> </ol> For more information, see <a
%% href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/AutoScalingGroupLifecycle.html">Auto
%% Scaling Lifecycle</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.
record_lifecycle_action_heartbeat(Client, Input)
  when is_map(Client), is_map(Input) ->
    record_lifecycle_action_heartbeat(Client, Input, []).
record_lifecycle_action_heartbeat(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RecordLifecycleActionHeartbeat">>, Input, Options).

%% @doc Resumes the specified suspended automatic scaling processes, or all
%% suspended process, for the specified Auto Scaling group.
%%
%% For more information, see <a
%% href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-suspend-resume-processes.html">Suspending
%% and Resuming Scaling Processes</a> in the <i>Amazon EC2 Auto Scaling User
%% Guide</i>.
resume_processes(Client, Input)
  when is_map(Client), is_map(Input) ->
    resume_processes(Client, Input, []).
resume_processes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ResumeProcesses">>, Input, Options).

%% @doc Sets the size of the specified Auto Scaling group.
%%
%% If a scale-in activity occurs as a result of a new
%% <code>DesiredCapacity</code> value that is lower than the current size of
%% the group, the Auto Scaling group uses its termination policy to determine
%% which instances to terminate.
%%
%% For more information, see <a
%% href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-manual-scaling.html">Manual
%% Scaling</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.
set_desired_capacity(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_desired_capacity(Client, Input, []).
set_desired_capacity(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetDesiredCapacity">>, Input, Options).

%% @doc Sets the health status of the specified instance.
%%
%% For more information, see <a
%% href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/healthcheck.html">Health
%% Checks for Auto Scaling Instances</a> in the <i>Amazon EC2 Auto Scaling
%% User Guide</i>.
set_instance_health(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_instance_health(Client, Input, []).
set_instance_health(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetInstanceHealth">>, Input, Options).

%% @doc Updates the instance protection settings of the specified instances.
%%
%% For more information about preventing instances that are part of an Auto
%% Scaling group from terminating on scale in, see <a
%% href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-instance-termination.html#instance-protection">Instance
%% Protection</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.
set_instance_protection(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_instance_protection(Client, Input, []).
set_instance_protection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetInstanceProtection">>, Input, Options).

%% @doc Starts a new instance refresh operation, which triggers a rolling
%% replacement of all previously launched instances in the Auto Scaling group
%% with a new group of instances.
%%
%% If successful, this call creates a new instance refresh request with a
%% unique ID that you can use to track its progress. To query its status,
%% call the <a>DescribeInstanceRefreshes</a> API. To describe the instance
%% refreshes that have already run, call the <a>DescribeInstanceRefreshes</a>
%% API. To cancel an instance refresh operation in progress, use the
%% <a>CancelInstanceRefresh</a> API.
%%
%% For more information, see <a
%% href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-instance-refresh.html">Replacing
%% Auto Scaling Instances Based on an Instance Refresh</a>.
start_instance_refresh(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_instance_refresh(Client, Input, []).
start_instance_refresh(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartInstanceRefresh">>, Input, Options).

%% @doc Suspends the specified automatic scaling processes, or all processes,
%% for the specified Auto Scaling group.
%%
%% If you suspend either the <code>Launch</code> or <code>Terminate</code>
%% process types, it can prevent other process types from functioning
%% properly. For more information, see <a
%% href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-suspend-resume-processes.html">Suspending
%% and Resuming Scaling Processes</a> in the <i>Amazon EC2 Auto Scaling User
%% Guide</i>.
%%
%% To resume processes that have been suspended, call the
%% <a>ResumeProcesses</a> API.
suspend_processes(Client, Input)
  when is_map(Client), is_map(Input) ->
    suspend_processes(Client, Input, []).
suspend_processes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SuspendProcesses">>, Input, Options).

%% @doc Terminates the specified instance and optionally adjusts the desired
%% group size.
%%
%% This call simply makes a termination request. The instance is not
%% terminated immediately. When an instance is terminated, the instance
%% status changes to <code>terminated</code>. You can't connect to or start
%% an instance after you've terminated it.
%%
%% If you do not specify the option to decrement the desired capacity, Amazon
%% EC2 Auto Scaling launches instances to replace the ones that are
%% terminated.
%%
%% By default, Amazon EC2 Auto Scaling balances instances across all
%% Availability Zones. If you decrement the desired capacity, your Auto
%% Scaling group can become unbalanced between Availability Zones. Amazon EC2
%% Auto Scaling tries to rebalance the group, and rebalancing might terminate
%% instances in other zones. For more information, see <a
%% href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/auto-scaling-benefits.html#AutoScalingBehavior.InstanceUsage">Rebalancing
%% Activities</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.
terminate_instance_in_auto_scaling_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    terminate_instance_in_auto_scaling_group(Client, Input, []).
terminate_instance_in_auto_scaling_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TerminateInstanceInAutoScalingGroup">>, Input, Options).

%% @doc Updates the configuration for the specified Auto Scaling group.
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
%% Note the following about changing <code>DesiredCapacity</code>,
%% <code>MaxSize</code>, or <code>MinSize</code>:
%%
%% <ul> <li> If a scale-in activity occurs as a result of a new
%% <code>DesiredCapacity</code> value that is lower than the current size of
%% the group, the Auto Scaling group uses its termination policy to determine
%% which instances to terminate.
%%
%% </li> <li> If you specify a new value for <code>MinSize</code> without
%% specifying a value for <code>DesiredCapacity</code>, and the new
%% <code>MinSize</code> is larger than the current size of the group, this
%% sets the group's <code>DesiredCapacity</code> to the new
%% <code>MinSize</code> value.
%%
%% </li> <li> If you specify a new value for <code>MaxSize</code> without
%% specifying a value for <code>DesiredCapacity</code>, and the new
%% <code>MaxSize</code> is smaller than the current size of the group, this
%% sets the group's <code>DesiredCapacity</code> to the new
%% <code>MaxSize</code> value.
%%
%% </li> </ul> To see which parameters have been set, call the
%% <a>DescribeAutoScalingGroups</a> API. To view the scaling policies for an
%% Auto Scaling group, call the <a>DescribePolicies</a> API. If the group has
%% scaling policies, you can update them by calling the
%% <a>PutScalingPolicy</a> API.
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
    Host = get_host(<<"autoscaling">>, Client1),
    URL = get_url(Host, Client1),
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

get_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
get_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

get_url(Host, Client) ->
    Proto = maps:get(proto, Client),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
