%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon EC2 Auto Scaling
%%
%% The DescribeAutoScalingGroups:
%% https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DescribeAutoScalingGroups.html
%% API operation might be throttled when retrieving details for an Auto
%% Scaling group that contains many instances.
%%
%% By default, this operation returns details for all instances in the group.
%% To help prevent throttling, you can set the `IncludeInstances'
%% parameter to `false' to exclude instance details from the response.
%%
%% Amazon EC2 Auto Scaling is designed to automatically launch and terminate
%% EC2 instances
%% based on user-defined scaling policies, scheduled actions, and health
%% checks.
%%
%% For more information, see the Amazon EC2 Auto Scaling User Guide:
%% https://docs.aws.amazon.com/autoscaling/ec2/userguide/what-is-amazon-ec2-auto-scaling.html
%% and the Amazon EC2 Auto Scaling API Reference:
%% https://docs.aws.amazon.com/autoscaling/ec2/APIReference/Welcome.html.
-module(aws_auto_scaling).

-export([attach_instances/2,
         attach_instances/3,
         attach_load_balancer_target_groups/2,
         attach_load_balancer_target_groups/3,
         attach_load_balancers/2,
         attach_load_balancers/3,
         attach_traffic_sources/2,
         attach_traffic_sources/3,
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
         describe_traffic_sources/2,
         describe_traffic_sources/3,
         describe_warm_pool/2,
         describe_warm_pool/3,
         detach_instances/2,
         detach_instances/3,
         detach_load_balancer_target_groups/2,
         detach_load_balancer_target_groups/3,
         detach_load_balancers/2,
         detach_load_balancers/3,
         detach_traffic_sources/2,
         detach_traffic_sources/3,
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
         rollback_instance_refresh/2,
         rollback_instance_refresh/3,
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


%% Example:
%% step_adjustment() :: #{
%%   <<"MetricIntervalLowerBound">> => float(),
%%   <<"MetricIntervalUpperBound">> => float(),
%%   <<"ScalingAdjustment">> => integer()
%% }
-type step_adjustment() :: #{binary() => any()}.

%% Example:
%% describe_lifecycle_hooks_type() :: #{
%%   <<"AutoScalingGroupName">> := string(),
%%   <<"LifecycleHookNames">> => list(string()())
%% }
-type describe_lifecycle_hooks_type() :: #{binary() => any()}.

%% Example:
%% describe_metric_collection_types_answer() :: #{
%%   <<"Granularities">> => list(metric_granularity_type()()),
%%   <<"Metrics">> => list(metric_collection_type()())
%% }
-type describe_metric_collection_types_answer() :: #{binary() => any()}.

%% Example:
%% describe_account_limits_answer() :: #{
%%   <<"MaxNumberOfAutoScalingGroups">> => integer(),
%%   <<"MaxNumberOfLaunchConfigurations">> => integer(),
%%   <<"NumberOfAutoScalingGroups">> => integer(),
%%   <<"NumberOfLaunchConfigurations">> => integer()
%% }
-type describe_account_limits_answer() :: #{binary() => any()}.

%% Example:
%% adjustment_type() :: #{
%%   <<"AdjustmentType">> => string()
%% }
-type adjustment_type() :: #{binary() => any()}.

%% Example:
%% describe_load_balancers_request() :: #{
%%   <<"AutoScalingGroupName">> := string(),
%%   <<"MaxRecords">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type describe_load_balancers_request() :: #{binary() => any()}.

%% Example:
%% predictive_scaling_metric_specification() :: #{
%%   <<"CustomizedCapacityMetricSpecification">> => predictive_scaling_customized_capacity_metric(),
%%   <<"CustomizedLoadMetricSpecification">> => predictive_scaling_customized_load_metric(),
%%   <<"CustomizedScalingMetricSpecification">> => predictive_scaling_customized_scaling_metric(),
%%   <<"PredefinedLoadMetricSpecification">> => predictive_scaling_predefined_load_metric(),
%%   <<"PredefinedMetricPairSpecification">> => predictive_scaling_predefined_metric_pair(),
%%   <<"PredefinedScalingMetricSpecification">> => predictive_scaling_predefined_scaling_metric(),
%%   <<"TargetValue">> => float()
%% }
-type predictive_scaling_metric_specification() :: #{binary() => any()}.

%% Example:
%% rollback_instance_refresh_answer() :: #{
%%   <<"InstanceRefreshId">> => string()
%% }
-type rollback_instance_refresh_answer() :: #{binary() => any()}.

%% Example:
%% describe_notification_configurations_type() :: #{
%%   <<"AutoScalingGroupNames">> => list(string()()),
%%   <<"MaxRecords">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type describe_notification_configurations_type() :: #{binary() => any()}.

%% Example:
%% policy_arn_type() :: #{
%%   <<"Alarms">> => list(alarm()()),
%%   <<"PolicyARN">> => string()
%% }
-type policy_arn_type() :: #{binary() => any()}.

%% Example:
%% instance_refresh() :: #{
%%   <<"AutoScalingGroupName">> => string(),
%%   <<"DesiredConfiguration">> => desired_configuration(),
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"InstanceRefreshId">> => string(),
%%   <<"InstancesToUpdate">> => integer(),
%%   <<"PercentageComplete">> => integer(),
%%   <<"Preferences">> => refresh_preferences(),
%%   <<"ProgressDetails">> => instance_refresh_progress_details(),
%%   <<"RollbackDetails">> => rollback_details(),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"Status">> => list(any()),
%%   <<"StatusReason">> => string()
%% }
-type instance_refresh() :: #{binary() => any()}.

%% Example:
%% create_launch_configuration_type() :: #{
%%   <<"AssociatePublicIpAddress">> => boolean(),
%%   <<"BlockDeviceMappings">> => list(block_device_mapping()()),
%%   <<"ClassicLinkVPCId">> => string(),
%%   <<"ClassicLinkVPCSecurityGroups">> => list(string()()),
%%   <<"EbsOptimized">> => boolean(),
%%   <<"IamInstanceProfile">> => string(),
%%   <<"ImageId">> => string(),
%%   <<"InstanceId">> => string(),
%%   <<"InstanceMonitoring">> => instance_monitoring(),
%%   <<"InstanceType">> => string(),
%%   <<"KernelId">> => string(),
%%   <<"KeyName">> => string(),
%%   <<"LaunchConfigurationName">> := string(),
%%   <<"MetadataOptions">> => instance_metadata_options(),
%%   <<"PlacementTenancy">> => string(),
%%   <<"RamdiskId">> => string(),
%%   <<"SecurityGroups">> => list(string()()),
%%   <<"SpotPrice">> => string(),
%%   <<"UserData">> => string()
%% }
-type create_launch_configuration_type() :: #{binary() => any()}.

%% Example:
%% delete_warm_pool_answer() :: #{

%% }
-type delete_warm_pool_answer() :: #{binary() => any()}.

%% Example:
%% instance_refresh_progress_details() :: #{
%%   <<"LivePoolProgress">> => instance_refresh_live_pool_progress(),
%%   <<"WarmPoolProgress">> => instance_refresh_warm_pool_progress()
%% }
-type instance_refresh_progress_details() :: #{binary() => any()}.

%% Example:
%% tags_type() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Tags">> => list(tag_description()())
%% }
-type tags_type() :: #{binary() => any()}.

%% Example:
%% traffic_source_identifier() :: #{
%%   <<"Identifier">> => string(),
%%   <<"Type">> => string()
%% }
-type traffic_source_identifier() :: #{binary() => any()}.

%% Example:
%% exit_standby_query() :: #{
%%   <<"AutoScalingGroupName">> := string(),
%%   <<"InstanceIds">> => list(string()())
%% }
-type exit_standby_query() :: #{binary() => any()}.

%% Example:
%% delete_tags_type() :: #{
%%   <<"Tags">> := list(tag()())
%% }
-type delete_tags_type() :: #{binary() => any()}.

%% Example:
%% start_instance_refresh_type() :: #{
%%   <<"AutoScalingGroupName">> := string(),
%%   <<"DesiredConfiguration">> => desired_configuration(),
%%   <<"Preferences">> => refresh_preferences(),
%%   <<"Strategy">> => list(any())
%% }
-type start_instance_refresh_type() :: #{binary() => any()}.

%% Example:
%% process_type() :: #{
%%   <<"ProcessName">> => string()
%% }
-type process_type() :: #{binary() => any()}.

%% Example:
%% describe_scheduled_actions_type() :: #{
%%   <<"AutoScalingGroupName">> => string(),
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"MaxRecords">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ScheduledActionNames">> => list(string()()),
%%   <<"StartTime">> => non_neg_integer()
%% }
-type describe_scheduled_actions_type() :: #{binary() => any()}.

%% Example:
%% block_device_mapping() :: #{
%%   <<"DeviceName">> => string(),
%%   <<"Ebs">> => ebs(),
%%   <<"NoDevice">> => boolean(),
%%   <<"VirtualName">> => string()
%% }
-type block_device_mapping() :: #{binary() => any()}.

%% Example:
%% metric() :: #{
%%   <<"Dimensions">> => list(metric_dimension()()),
%%   <<"MetricName">> => string(),
%%   <<"Namespace">> => string()
%% }
-type metric() :: #{binary() => any()}.

%% Example:
%% predictive_scaling_predefined_metric_pair() :: #{
%%   <<"PredefinedMetricType">> => list(any()),
%%   <<"ResourceLabel">> => string()
%% }
-type predictive_scaling_predefined_metric_pair() :: #{binary() => any()}.

%% Example:
%% enter_standby_answer() :: #{
%%   <<"Activities">> => list(activity()())
%% }
-type enter_standby_answer() :: #{binary() => any()}.

%% Example:
%% instance_reuse_policy() :: #{
%%   <<"ReuseOnScaleIn">> => boolean()
%% }
-type instance_reuse_policy() :: #{binary() => any()}.

%% Example:
%% alarm() :: #{
%%   <<"AlarmARN">> => string(),
%%   <<"AlarmName">> => string()
%% }
-type alarm() :: #{binary() => any()}.

%% Example:
%% traffic_source_state() :: #{
%%   <<"Identifier">> => string(),
%%   <<"State">> => string(),
%%   <<"TrafficSource">> => string(),
%%   <<"Type">> => string()
%% }
-type traffic_source_state() :: #{binary() => any()}.

%% Example:
%% baseline_performance_factors_request() :: #{
%%   <<"Cpu">> => cpu_performance_factor_request()
%% }
-type baseline_performance_factors_request() :: #{binary() => any()}.

%% Example:
%% metric_granularity_type() :: #{
%%   <<"Granularity">> => string()
%% }
-type metric_granularity_type() :: #{binary() => any()}.

%% Example:
%% availability_zone_impairment_policy() :: #{
%%   <<"ImpairedZoneHealthCheckBehavior">> => list(any()),
%%   <<"ZonalShiftEnabled">> => boolean()
%% }
-type availability_zone_impairment_policy() :: #{binary() => any()}.

%% Example:
%% describe_warm_pool_type() :: #{
%%   <<"AutoScalingGroupName">> := string(),
%%   <<"MaxRecords">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type describe_warm_pool_type() :: #{binary() => any()}.

%% Example:
%% lifecycle_hook() :: #{
%%   <<"AutoScalingGroupName">> => string(),
%%   <<"DefaultResult">> => string(),
%%   <<"GlobalTimeout">> => integer(),
%%   <<"HeartbeatTimeout">> => integer(),
%%   <<"LifecycleHookName">> => string(),
%%   <<"LifecycleTransition">> => string(),
%%   <<"NotificationMetadata">> => string(),
%%   <<"NotificationTargetARN">> => string(),
%%   <<"RoleARN">> => string()
%% }
-type lifecycle_hook() :: #{binary() => any()}.

%% Example:
%% limit_exceeded_fault() :: #{
%%   <<"message">> => string()
%% }
-type limit_exceeded_fault() :: #{binary() => any()}.

%% Example:
%% describe_traffic_sources_request() :: #{
%%   <<"AutoScalingGroupName">> := string(),
%%   <<"MaxRecords">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"TrafficSourceType">> => string()
%% }
-type describe_traffic_sources_request() :: #{binary() => any()}.

%% Example:
%% delete_auto_scaling_group_type() :: #{
%%   <<"AutoScalingGroupName">> := string(),
%%   <<"ForceDelete">> => boolean()
%% }
-type delete_auto_scaling_group_type() :: #{binary() => any()}.

%% Example:
%% capacity_reservation_target() :: #{
%%   <<"CapacityReservationIds">> => list(string()()),
%%   <<"CapacityReservationResourceGroupArns">> => list(string()())
%% }
-type capacity_reservation_target() :: #{binary() => any()}.

%% Example:
%% record_lifecycle_action_heartbeat_answer() :: #{

%% }
-type record_lifecycle_action_heartbeat_answer() :: #{binary() => any()}.

%% Example:
%% describe_lifecycle_hooks_answer() :: #{
%%   <<"LifecycleHooks">> => list(lifecycle_hook()())
%% }
-type describe_lifecycle_hooks_answer() :: #{binary() => any()}.

%% Example:
%% put_lifecycle_hook_answer() :: #{

%% }
-type put_lifecycle_hook_answer() :: #{binary() => any()}.

%% Example:
%% memory_gi_b_per_v_cpu_request() :: #{
%%   <<"Max">> => float(),
%%   <<"Min">> => float()
%% }
-type memory_gi_b_per_v_cpu_request() :: #{binary() => any()}.

%% Example:
%% cancel_instance_refresh_answer() :: #{
%%   <<"InstanceRefreshId">> => string()
%% }
-type cancel_instance_refresh_answer() :: #{binary() => any()}.

%% Example:
%% scaling_policy() :: #{
%%   <<"AdjustmentType">> => string(),
%%   <<"Alarms">> => list(alarm()()),
%%   <<"AutoScalingGroupName">> => string(),
%%   <<"Cooldown">> => integer(),
%%   <<"Enabled">> => boolean(),
%%   <<"EstimatedInstanceWarmup">> => integer(),
%%   <<"MetricAggregationType">> => string(),
%%   <<"MinAdjustmentMagnitude">> => integer(),
%%   <<"MinAdjustmentStep">> => integer(),
%%   <<"PolicyARN">> => string(),
%%   <<"PolicyName">> => string(),
%%   <<"PolicyType">> => string(),
%%   <<"PredictiveScalingConfiguration">> => predictive_scaling_configuration(),
%%   <<"ScalingAdjustment">> => integer(),
%%   <<"StepAdjustments">> => list(step_adjustment()()),
%%   <<"TargetTrackingConfiguration">> => target_tracking_configuration()
%% }
-type scaling_policy() :: #{binary() => any()}.

%% Example:
%% describe_notification_configurations_answer() :: #{
%%   <<"NextToken">> => string(),
%%   <<"NotificationConfigurations">> := list(notification_configuration()())
%% }
-type describe_notification_configurations_answer() :: #{binary() => any()}.

%% Example:
%% instance_maintenance_policy() :: #{
%%   <<"MaxHealthyPercentage">> => integer(),
%%   <<"MinHealthyPercentage">> => integer()
%% }
-type instance_maintenance_policy() :: #{binary() => any()}.

%% Example:
%% scheduled_actions_type() :: #{
%%   <<"NextToken">> => string(),
%%   <<"ScheduledUpdateGroupActions">> => list(scheduled_update_group_action()())
%% }
-type scheduled_actions_type() :: #{binary() => any()}.

%% Example:
%% attach_load_balancers_type() :: #{
%%   <<"AutoScalingGroupName">> := string(),
%%   <<"LoadBalancerNames">> := list(string()())
%% }
-type attach_load_balancers_type() :: #{binary() => any()}.

%% Example:
%% lifecycle_hook_specification() :: #{
%%   <<"DefaultResult">> => string(),
%%   <<"HeartbeatTimeout">> => integer(),
%%   <<"LifecycleHookName">> => string(),
%%   <<"LifecycleTransition">> => string(),
%%   <<"NotificationMetadata">> => string(),
%%   <<"NotificationTargetARN">> => string(),
%%   <<"RoleARN">> => string()
%% }
-type lifecycle_hook_specification() :: #{binary() => any()}.

%% Example:
%% describe_load_balancer_target_groups_response() :: #{
%%   <<"LoadBalancerTargetGroups">> => list(load_balancer_target_group_state()()),
%%   <<"NextToken">> => string()
%% }
-type describe_load_balancer_target_groups_response() :: #{binary() => any()}.

%% Example:
%% scaling_process_query() :: #{
%%   <<"AutoScalingGroupName">> := string(),
%%   <<"ScalingProcesses">> => list(string()())
%% }
-type scaling_process_query() :: #{binary() => any()}.

%% Example:
%% launch_configuration_names_type() :: #{
%%   <<"LaunchConfigurationNames">> => list(string()()),
%%   <<"MaxRecords">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type launch_configuration_names_type() :: #{binary() => any()}.

%% Example:
%% attach_load_balancers_result_type() :: #{

%% }
-type attach_load_balancers_result_type() :: #{binary() => any()}.

%% Example:
%% detach_instances_answer() :: #{
%%   <<"Activities">> => list(activity()())
%% }
-type detach_instances_answer() :: #{binary() => any()}.

%% Example:
%% enabled_metric() :: #{
%%   <<"Granularity">> => string(),
%%   <<"Metric">> => string()
%% }
-type enabled_metric() :: #{binary() => any()}.

%% Example:
%% get_predictive_scaling_forecast_answer() :: #{
%%   <<"CapacityForecast">> := capacity_forecast(),
%%   <<"LoadForecast">> := list(load_forecast()()),
%%   <<"UpdateTime">> := non_neg_integer()
%% }
-type get_predictive_scaling_forecast_answer() :: #{binary() => any()}.

%% Example:
%% scaling_activity_in_progress_fault() :: #{
%%   <<"message">> => string()
%% }
-type scaling_activity_in_progress_fault() :: #{binary() => any()}.

%% Example:
%% describe_policies_type() :: #{
%%   <<"AutoScalingGroupName">> => string(),
%%   <<"MaxRecords">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"PolicyNames">> => list(string()()),
%%   <<"PolicyTypes">> => list(string()())
%% }
-type describe_policies_type() :: #{binary() => any()}.

%% Example:
%% mixed_instances_policy() :: #{
%%   <<"InstancesDistribution">> => instances_distribution(),
%%   <<"LaunchTemplate">> => launch_template()
%% }
-type mixed_instances_policy() :: #{binary() => any()}.

%% Example:
%% launch_configurations_type() :: #{
%%   <<"LaunchConfigurations">> := list(launch_configuration()()),
%%   <<"NextToken">> => string()
%% }
-type launch_configurations_type() :: #{binary() => any()}.

%% Example:
%% delete_notification_configuration_type() :: #{
%%   <<"AutoScalingGroupName">> := string(),
%%   <<"TopicARN">> := string()
%% }
-type delete_notification_configuration_type() :: #{binary() => any()}.

%% Example:
%% predictive_scaling_predefined_load_metric() :: #{
%%   <<"PredefinedMetricType">> => list(any()),
%%   <<"ResourceLabel">> => string()
%% }
-type predictive_scaling_predefined_load_metric() :: #{binary() => any()}.

%% Example:
%% customized_metric_specification() :: #{
%%   <<"Dimensions">> => list(metric_dimension()()),
%%   <<"MetricName">> => string(),
%%   <<"Metrics">> => list(target_tracking_metric_data_query()()),
%%   <<"Namespace">> => string(),
%%   <<"Period">> => integer(),
%%   <<"Statistic">> => list(any()),
%%   <<"Unit">> => string()
%% }
-type customized_metric_specification() :: #{binary() => any()}.

%% Example:
%% auto_scaling_group_names_type() :: #{
%%   <<"AutoScalingGroupNames">> => list(string()()),
%%   <<"Filters">> => list(filter()()),
%%   <<"IncludeInstances">> => boolean(),
%%   <<"MaxRecords">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type auto_scaling_group_names_type() :: #{binary() => any()}.

%% Example:
%% describe_traffic_sources_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"TrafficSources">> => list(traffic_source_state()())
%% }
-type describe_traffic_sources_response() :: #{binary() => any()}.

%% Example:
%% describe_instance_refreshes_type() :: #{
%%   <<"AutoScalingGroupName">> := string(),
%%   <<"InstanceRefreshIds">> => list(string()()),
%%   <<"MaxRecords">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type describe_instance_refreshes_type() :: #{binary() => any()}.

%% Example:
%% put_notification_configuration_type() :: #{
%%   <<"AutoScalingGroupName">> := string(),
%%   <<"NotificationTypes">> := list(string()()),
%%   <<"TopicARN">> := string()
%% }
-type put_notification_configuration_type() :: #{binary() => any()}.

%% Example:
%% policies_type() :: #{
%%   <<"NextToken">> => string(),
%%   <<"ScalingPolicies">> => list(scaling_policy()())
%% }
-type policies_type() :: #{binary() => any()}.

%% Example:
%% cancel_instance_refresh_type() :: #{
%%   <<"AutoScalingGroupName">> := string()
%% }
-type cancel_instance_refresh_type() :: #{binary() => any()}.

%% Example:
%% execute_policy_type() :: #{
%%   <<"AutoScalingGroupName">> => string(),
%%   <<"BreachThreshold">> => float(),
%%   <<"HonorCooldown">> => boolean(),
%%   <<"MetricValue">> => float(),
%%   <<"PolicyName">> := string()
%% }
-type execute_policy_type() :: #{binary() => any()}.

%% Example:
%% detach_load_balancers_result_type() :: #{

%% }
-type detach_load_balancers_result_type() :: #{binary() => any()}.

%% Example:
%% active_instance_refresh_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type active_instance_refresh_not_found_fault() :: #{binary() => any()}.

%% Example:
%% predictive_scaling_predefined_scaling_metric() :: #{
%%   <<"PredefinedMetricType">> => list(any()),
%%   <<"ResourceLabel">> => string()
%% }
-type predictive_scaling_predefined_scaling_metric() :: #{binary() => any()}.

%% Example:
%% predictive_scaling_customized_load_metric() :: #{
%%   <<"MetricDataQueries">> => list(metric_data_query()())
%% }
-type predictive_scaling_customized_load_metric() :: #{binary() => any()}.

%% Example:
%% describe_tags_type() :: #{
%%   <<"Filters">> => list(filter()()),
%%   <<"MaxRecords">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type describe_tags_type() :: #{binary() => any()}.

%% Example:
%% warm_pool_configuration() :: #{
%%   <<"InstanceReusePolicy">> => instance_reuse_policy(),
%%   <<"MaxGroupPreparedCapacity">> => integer(),
%%   <<"MinSize">> => integer(),
%%   <<"PoolState">> => list(any()),
%%   <<"Status">> => list(any())
%% }
-type warm_pool_configuration() :: #{binary() => any()}.

%% Example:
%% v_cpu_count_request() :: #{
%%   <<"Max">> => integer(),
%%   <<"Min">> => integer()
%% }
-type v_cpu_count_request() :: #{binary() => any()}.

%% Example:
%% terminate_instance_in_auto_scaling_group_type() :: #{
%%   <<"InstanceId">> := string(),
%%   <<"ShouldDecrementDesiredCapacity">> := boolean()
%% }
-type terminate_instance_in_auto_scaling_group_type() :: #{binary() => any()}.

%% Example:
%% complete_lifecycle_action_type() :: #{
%%   <<"AutoScalingGroupName">> := string(),
%%   <<"InstanceId">> => string(),
%%   <<"LifecycleActionResult">> := string(),
%%   <<"LifecycleActionToken">> => string(),
%%   <<"LifecycleHookName">> := string()
%% }
-type complete_lifecycle_action_type() :: #{binary() => any()}.

%% Example:
%% activity() :: #{
%%   <<"ActivityId">> => string(),
%%   <<"AutoScalingGroupARN">> => string(),
%%   <<"AutoScalingGroupName">> => string(),
%%   <<"AutoScalingGroupState">> => string(),
%%   <<"Cause">> => string(),
%%   <<"Description">> => string(),
%%   <<"Details">> => string(),
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"Progress">> => integer(),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"StatusCode">> => list(any()),
%%   <<"StatusMessage">> => string()
%% }
-type activity() :: #{binary() => any()}.

%% Example:
%% instances_distribution() :: #{
%%   <<"OnDemandAllocationStrategy">> => string(),
%%   <<"OnDemandBaseCapacity">> => integer(),
%%   <<"OnDemandPercentageAboveBaseCapacity">> => integer(),
%%   <<"SpotAllocationStrategy">> => string(),
%%   <<"SpotInstancePools">> => integer(),
%%   <<"SpotMaxPrice">> => string()
%% }
-type instances_distribution() :: #{binary() => any()}.

%% Example:
%% attach_traffic_sources_result_type() :: #{

%% }
-type attach_traffic_sources_result_type() :: #{binary() => any()}.

%% Example:
%% describe_load_balancers_response() :: #{
%%   <<"LoadBalancers">> => list(load_balancer_state()()),
%%   <<"NextToken">> => string()
%% }
-type describe_load_balancers_response() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"PropagateAtLaunch">> => boolean(),
%%   <<"ResourceId">> => string(),
%%   <<"ResourceType">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% scheduled_update_group_action() :: #{
%%   <<"AutoScalingGroupName">> => string(),
%%   <<"DesiredCapacity">> => integer(),
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"MaxSize">> => integer(),
%%   <<"MinSize">> => integer(),
%%   <<"Recurrence">> => string(),
%%   <<"ScheduledActionARN">> => string(),
%%   <<"ScheduledActionName">> => string(),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"Time">> => non_neg_integer(),
%%   <<"TimeZone">> => string()
%% }
-type scheduled_update_group_action() :: #{binary() => any()}.

%% Example:
%% load_forecast() :: #{
%%   <<"MetricSpecification">> => predictive_scaling_metric_specification(),
%%   <<"Timestamps">> => list(non_neg_integer()()),
%%   <<"Values">> => list(float()())
%% }
-type load_forecast() :: #{binary() => any()}.

%% Example:
%% irreversible_instance_refresh_fault() :: #{
%%   <<"message">> => string()
%% }
-type irreversible_instance_refresh_fault() :: #{binary() => any()}.

%% Example:
%% record_lifecycle_action_heartbeat_type() :: #{
%%   <<"AutoScalingGroupName">> := string(),
%%   <<"InstanceId">> => string(),
%%   <<"LifecycleActionToken">> => string(),
%%   <<"LifecycleHookName">> := string()
%% }
-type record_lifecycle_action_heartbeat_type() :: #{binary() => any()}.

%% Example:
%% accelerator_count_request() :: #{
%%   <<"Max">> => integer(),
%%   <<"Min">> => integer()
%% }
-type accelerator_count_request() :: #{binary() => any()}.

%% Example:
%% metric_data_query() :: #{
%%   <<"Expression">> => string(),
%%   <<"Id">> => string(),
%%   <<"Label">> => string(),
%%   <<"MetricStat">> => metric_stat(),
%%   <<"ReturnData">> => boolean()
%% }
-type metric_data_query() :: #{binary() => any()}.

%% Example:
%% ebs() :: #{
%%   <<"DeleteOnTermination">> => boolean(),
%%   <<"Encrypted">> => boolean(),
%%   <<"Iops">> => integer(),
%%   <<"SnapshotId">> => string(),
%%   <<"Throughput">> => integer(),
%%   <<"VolumeSize">> => integer(),
%%   <<"VolumeType">> => string()
%% }
-type ebs() :: #{binary() => any()}.

%% Example:
%% put_scheduled_update_group_action_type() :: #{
%%   <<"AutoScalingGroupName">> := string(),
%%   <<"DesiredCapacity">> => integer(),
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"MaxSize">> => integer(),
%%   <<"MinSize">> => integer(),
%%   <<"Recurrence">> => string(),
%%   <<"ScheduledActionName">> := string(),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"Time">> => non_neg_integer(),
%%   <<"TimeZone">> => string()
%% }
-type put_scheduled_update_group_action_type() :: #{binary() => any()}.

%% Example:
%% tag_description() :: #{
%%   <<"Key">> => string(),
%%   <<"PropagateAtLaunch">> => boolean(),
%%   <<"ResourceId">> => string(),
%%   <<"ResourceType">> => string(),
%%   <<"Value">> => string()
%% }
-type tag_description() :: #{binary() => any()}.

%% Example:
%% target_tracking_metric_stat() :: #{
%%   <<"Metric">> => metric(),
%%   <<"Period">> => integer(),
%%   <<"Stat">> => string(),
%%   <<"Unit">> => string()
%% }
-type target_tracking_metric_stat() :: #{binary() => any()}.

%% Example:
%% detach_traffic_sources_type() :: #{
%%   <<"AutoScalingGroupName">> := string(),
%%   <<"TrafficSources">> := list(traffic_source_identifier()())
%% }
-type detach_traffic_sources_type() :: #{binary() => any()}.

%% Example:
%% detach_load_balancers_type() :: #{
%%   <<"AutoScalingGroupName">> := string(),
%%   <<"LoadBalancerNames">> := list(string()())
%% }
-type detach_load_balancers_type() :: #{binary() => any()}.

%% Example:
%% resource_contention_fault() :: #{
%%   <<"message">> => string()
%% }
-type resource_contention_fault() :: #{binary() => any()}.

%% Example:
%% auto_scaling_instance_details() :: #{
%%   <<"AutoScalingGroupName">> => string(),
%%   <<"AvailabilityZone">> => string(),
%%   <<"HealthStatus">> => string(),
%%   <<"InstanceId">> => string(),
%%   <<"InstanceType">> => string(),
%%   <<"LaunchConfigurationName">> => string(),
%%   <<"LaunchTemplate">> => launch_template_specification(),
%%   <<"LifecycleState">> => string(),
%%   <<"ProtectedFromScaleIn">> => boolean(),
%%   <<"WeightedCapacity">> => string()
%% }
-type auto_scaling_instance_details() :: #{binary() => any()}.

%% Example:
%% load_balancer_state() :: #{
%%   <<"LoadBalancerName">> => string(),
%%   <<"State">> => string()
%% }
-type load_balancer_state() :: #{binary() => any()}.

%% Example:
%% attach_traffic_sources_type() :: #{
%%   <<"AutoScalingGroupName">> := string(),
%%   <<"SkipZonalShiftValidation">> => boolean(),
%%   <<"TrafficSources">> := list(traffic_source_identifier()())
%% }
-type attach_traffic_sources_type() :: #{binary() => any()}.

%% Example:
%% predictive_scaling_customized_scaling_metric() :: #{
%%   <<"MetricDataQueries">> => list(metric_data_query()())
%% }
-type predictive_scaling_customized_scaling_metric() :: #{binary() => any()}.

%% Example:
%% suspended_process() :: #{
%%   <<"ProcessName">> => string(),
%%   <<"SuspensionReason">> => string()
%% }
-type suspended_process() :: #{binary() => any()}.

%% Example:
%% performance_factor_reference_request() :: #{
%%   <<"InstanceFamily">> => string()
%% }
-type performance_factor_reference_request() :: #{binary() => any()}.

%% Example:
%% scheduled_update_group_action_request() :: #{
%%   <<"DesiredCapacity">> => integer(),
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"MaxSize">> => integer(),
%%   <<"MinSize">> => integer(),
%%   <<"Recurrence">> => string(),
%%   <<"ScheduledActionName">> => string(),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"TimeZone">> => string()
%% }
-type scheduled_update_group_action_request() :: #{binary() => any()}.

%% Example:
%% enter_standby_query() :: #{
%%   <<"AutoScalingGroupName">> := string(),
%%   <<"InstanceIds">> => list(string()()),
%%   <<"ShouldDecrementDesiredCapacity">> := boolean()
%% }
-type enter_standby_query() :: #{binary() => any()}.

%% Example:
%% complete_lifecycle_action_answer() :: #{

%% }
-type complete_lifecycle_action_answer() :: #{binary() => any()}.

%% Example:
%% describe_lifecycle_hook_types_answer() :: #{
%%   <<"LifecycleHookTypes">> => list(string()())
%% }
-type describe_lifecycle_hook_types_answer() :: #{binary() => any()}.

%% Example:
%% detach_load_balancer_target_groups_type() :: #{
%%   <<"AutoScalingGroupName">> := string(),
%%   <<"TargetGroupARNs">> := list(string()())
%% }
-type detach_load_balancer_target_groups_type() :: #{binary() => any()}.

%% Example:
%% put_lifecycle_hook_type() :: #{
%%   <<"AutoScalingGroupName">> := string(),
%%   <<"DefaultResult">> => string(),
%%   <<"HeartbeatTimeout">> => integer(),
%%   <<"LifecycleHookName">> := string(),
%%   <<"LifecycleTransition">> => string(),
%%   <<"NotificationMetadata">> => string(),
%%   <<"NotificationTargetARN">> => string(),
%%   <<"RoleARN">> => string()
%% }
-type put_lifecycle_hook_type() :: #{binary() => any()}.

%% Example:
%% capacity_reservation_specification() :: #{
%%   <<"CapacityReservationPreference">> => list(any()),
%%   <<"CapacityReservationTarget">> => capacity_reservation_target()
%% }
-type capacity_reservation_specification() :: #{binary() => any()}.

%% Example:
%% launch_template_overrides() :: #{
%%   <<"InstanceRequirements">> => instance_requirements(),
%%   <<"InstanceType">> => string(),
%%   <<"LaunchTemplateSpecification">> => launch_template_specification(),
%%   <<"WeightedCapacity">> => string()
%% }
-type launch_template_overrides() :: #{binary() => any()}.

%% Example:
%% describe_termination_policy_types_answer() :: #{
%%   <<"TerminationPolicyTypes">> => list(string()())
%% }
-type describe_termination_policy_types_answer() :: #{binary() => any()}.

%% Example:
%% create_or_update_tags_type() :: #{
%%   <<"Tags">> := list(tag()())
%% }
-type create_or_update_tags_type() :: #{binary() => any()}.

%% Example:
%% failed_scheduled_update_group_action_request() :: #{
%%   <<"ErrorCode">> => string(),
%%   <<"ErrorMessage">> => string(),
%%   <<"ScheduledActionName">> => string()
%% }
-type failed_scheduled_update_group_action_request() :: #{binary() => any()}.

%% Example:
%% filter() :: #{
%%   <<"Name">> => string(),
%%   <<"Values">> => list(string()())
%% }
-type filter() :: #{binary() => any()}.

%% Example:
%% metric_dimension() :: #{
%%   <<"Name">> => string(),
%%   <<"Value">> => string()
%% }
-type metric_dimension() :: #{binary() => any()}.

%% Example:
%% create_auto_scaling_group_type() :: #{
%%   <<"AutoScalingGroupName">> := string(),
%%   <<"AvailabilityZoneDistribution">> => availability_zone_distribution(),
%%   <<"AvailabilityZoneImpairmentPolicy">> => availability_zone_impairment_policy(),
%%   <<"AvailabilityZones">> => list(string()()),
%%   <<"CapacityRebalance">> => boolean(),
%%   <<"CapacityReservationSpecification">> => capacity_reservation_specification(),
%%   <<"Context">> => string(),
%%   <<"DefaultCooldown">> => integer(),
%%   <<"DefaultInstanceWarmup">> => integer(),
%%   <<"DesiredCapacity">> => integer(),
%%   <<"DesiredCapacityType">> => string(),
%%   <<"HealthCheckGracePeriod">> => integer(),
%%   <<"HealthCheckType">> => string(),
%%   <<"InstanceId">> => string(),
%%   <<"InstanceMaintenancePolicy">> => instance_maintenance_policy(),
%%   <<"LaunchConfigurationName">> => string(),
%%   <<"LaunchTemplate">> => launch_template_specification(),
%%   <<"LifecycleHookSpecificationList">> => list(lifecycle_hook_specification()()),
%%   <<"LoadBalancerNames">> => list(string()()),
%%   <<"MaxInstanceLifetime">> => integer(),
%%   <<"MaxSize">> := integer(),
%%   <<"MinSize">> := integer(),
%%   <<"MixedInstancesPolicy">> => mixed_instances_policy(),
%%   <<"NewInstancesProtectedFromScaleIn">> => boolean(),
%%   <<"PlacementGroup">> => string(),
%%   <<"ServiceLinkedRoleARN">> => string(),
%%   <<"SkipZonalShiftValidation">> => boolean(),
%%   <<"Tags">> => list(tag()()),
%%   <<"TargetGroupARNs">> => list(string()()),
%%   <<"TerminationPolicies">> => list(string()()),
%%   <<"TrafficSources">> => list(traffic_source_identifier()()),
%%   <<"VPCZoneIdentifier">> => string()
%% }
-type create_auto_scaling_group_type() :: #{binary() => any()}.

%% Example:
%% get_predictive_scaling_forecast_type() :: #{
%%   <<"AutoScalingGroupName">> := string(),
%%   <<"EndTime">> := non_neg_integer(),
%%   <<"PolicyName">> := string(),
%%   <<"StartTime">> := non_neg_integer()
%% }
-type get_predictive_scaling_forecast_type() :: #{binary() => any()}.

%% Example:
%% network_bandwidth_gbps_request() :: #{
%%   <<"Max">> => float(),
%%   <<"Min">> => float()
%% }
-type network_bandwidth_gbps_request() :: #{binary() => any()}.

%% Example:
%% put_warm_pool_type() :: #{
%%   <<"AutoScalingGroupName">> := string(),
%%   <<"InstanceReusePolicy">> => instance_reuse_policy(),
%%   <<"MaxGroupPreparedCapacity">> => integer(),
%%   <<"MinSize">> => integer(),
%%   <<"PoolState">> => list(any())
%% }
-type put_warm_pool_type() :: #{binary() => any()}.

%% Example:
%% start_instance_refresh_answer() :: #{
%%   <<"InstanceRefreshId">> => string()
%% }
-type start_instance_refresh_answer() :: #{binary() => any()}.

%% Example:
%% notification_configuration() :: #{
%%   <<"AutoScalingGroupName">> => string(),
%%   <<"NotificationType">> => string(),
%%   <<"TopicARN">> => string()
%% }
-type notification_configuration() :: #{binary() => any()}.

%% Example:
%% resource_in_use_fault() :: #{
%%   <<"message">> => string()
%% }
-type resource_in_use_fault() :: #{binary() => any()}.

%% Example:
%% instance_refresh_warm_pool_progress() :: #{
%%   <<"InstancesToUpdate">> => integer(),
%%   <<"PercentageComplete">> => integer()
%% }
-type instance_refresh_warm_pool_progress() :: #{binary() => any()}.

%% Example:
%% batch_delete_scheduled_action_type() :: #{
%%   <<"AutoScalingGroupName">> := string(),
%%   <<"ScheduledActionNames">> := list(string()())
%% }
-type batch_delete_scheduled_action_type() :: #{binary() => any()}.

%% Example:
%% exit_standby_answer() :: #{
%%   <<"Activities">> => list(activity()())
%% }
-type exit_standby_answer() :: #{binary() => any()}.

%% Example:
%% describe_adjustment_types_answer() :: #{
%%   <<"AdjustmentTypes">> => list(adjustment_type()())
%% }
-type describe_adjustment_types_answer() :: #{binary() => any()}.

%% Example:
%% already_exists_fault() :: #{
%%   <<"message">> => string()
%% }
-type already_exists_fault() :: #{binary() => any()}.

%% Example:
%% launch_configuration_name_type() :: #{
%%   <<"LaunchConfigurationName">> := string()
%% }
-type launch_configuration_name_type() :: #{binary() => any()}.

%% Example:
%% accelerator_total_memory_mi_b_request() :: #{
%%   <<"Max">> => integer(),
%%   <<"Min">> => integer()
%% }
-type accelerator_total_memory_mi_b_request() :: #{binary() => any()}.

%% Example:
%% activity_type() :: #{
%%   <<"Activity">> => activity()
%% }
-type activity_type() :: #{binary() => any()}.

%% Example:
%% processes_type() :: #{
%%   <<"Processes">> => list(process_type()())
%% }
-type processes_type() :: #{binary() => any()}.

%% Example:
%% detach_traffic_sources_result_type() :: #{

%% }
-type detach_traffic_sources_result_type() :: #{binary() => any()}.

%% Example:
%% delete_warm_pool_type() :: #{
%%   <<"AutoScalingGroupName">> := string(),
%%   <<"ForceDelete">> => boolean()
%% }
-type delete_warm_pool_type() :: #{binary() => any()}.

%% Example:
%% describe_warm_pool_answer() :: #{
%%   <<"Instances">> => list(instance()()),
%%   <<"NextToken">> => string(),
%%   <<"WarmPoolConfiguration">> => warm_pool_configuration()
%% }
-type describe_warm_pool_answer() :: #{binary() => any()}.

%% Example:
%% instance() :: #{
%%   <<"AvailabilityZone">> => string(),
%%   <<"HealthStatus">> => string(),
%%   <<"InstanceId">> => string(),
%%   <<"InstanceType">> => string(),
%%   <<"LaunchConfigurationName">> => string(),
%%   <<"LaunchTemplate">> => launch_template_specification(),
%%   <<"LifecycleState">> => list(any()),
%%   <<"ProtectedFromScaleIn">> => boolean(),
%%   <<"WeightedCapacity">> => string()
%% }
-type instance() :: #{binary() => any()}.

%% Example:
%% detach_instances_query() :: #{
%%   <<"AutoScalingGroupName">> := string(),
%%   <<"InstanceIds">> => list(string()()),
%%   <<"ShouldDecrementDesiredCapacity">> := boolean()
%% }
-type detach_instances_query() :: #{binary() => any()}.

%% Example:
%% instance_metadata_options() :: #{
%%   <<"HttpEndpoint">> => list(any()),
%%   <<"HttpPutResponseHopLimit">> => integer(),
%%   <<"HttpTokens">> => list(any())
%% }
-type instance_metadata_options() :: #{binary() => any()}.

%% Example:
%% load_balancer_target_group_state() :: #{
%%   <<"LoadBalancerTargetGroupARN">> => string(),
%%   <<"State">> => string()
%% }
-type load_balancer_target_group_state() :: #{binary() => any()}.

%% Example:
%% predefined_metric_specification() :: #{
%%   <<"PredefinedMetricType">> => list(any()),
%%   <<"ResourceLabel">> => string()
%% }
-type predefined_metric_specification() :: #{binary() => any()}.

%% Example:
%% metric_stat() :: #{
%%   <<"Metric">> => metric(),
%%   <<"Stat">> => string(),
%%   <<"Unit">> => string()
%% }
-type metric_stat() :: #{binary() => any()}.

%% Example:
%% activities_type() :: #{
%%   <<"Activities">> := list(activity()()),
%%   <<"NextToken">> => string()
%% }
-type activities_type() :: #{binary() => any()}.

%% Example:
%% attach_instances_query() :: #{
%%   <<"AutoScalingGroupName">> := string(),
%%   <<"InstanceIds">> => list(string()())
%% }
-type attach_instances_query() :: #{binary() => any()}.

%% Example:
%% instance_requirements() :: #{
%%   <<"AcceleratorCount">> => accelerator_count_request(),
%%   <<"AcceleratorManufacturers">> => list(list(any())()),
%%   <<"AcceleratorNames">> => list(list(any())()),
%%   <<"AcceleratorTotalMemoryMiB">> => accelerator_total_memory_mi_b_request(),
%%   <<"AcceleratorTypes">> => list(list(any())()),
%%   <<"AllowedInstanceTypes">> => list(string()()),
%%   <<"BareMetal">> => list(any()),
%%   <<"BaselineEbsBandwidthMbps">> => baseline_ebs_bandwidth_mbps_request(),
%%   <<"BaselinePerformanceFactors">> => baseline_performance_factors_request(),
%%   <<"BurstablePerformance">> => list(any()),
%%   <<"CpuManufacturers">> => list(list(any())()),
%%   <<"ExcludedInstanceTypes">> => list(string()()),
%%   <<"InstanceGenerations">> => list(list(any())()),
%%   <<"LocalStorage">> => list(any()),
%%   <<"LocalStorageTypes">> => list(list(any())()),
%%   <<"MaxSpotPriceAsPercentageOfOptimalOnDemandPrice">> => integer(),
%%   <<"MemoryGiBPerVCpu">> => memory_gi_b_per_v_cpu_request(),
%%   <<"MemoryMiB">> => memory_mi_b_request(),
%%   <<"NetworkBandwidthGbps">> => network_bandwidth_gbps_request(),
%%   <<"NetworkInterfaceCount">> => network_interface_count_request(),
%%   <<"OnDemandMaxPricePercentageOverLowestPrice">> => integer(),
%%   <<"RequireHibernateSupport">> => boolean(),
%%   <<"SpotMaxPricePercentageOverLowestPrice">> => integer(),
%%   <<"TotalLocalStorageGB">> => total_local_storage_g_b_request(),
%%   <<"VCpuCount">> => v_cpu_count_request()
%% }
-type instance_requirements() :: #{binary() => any()}.

%% Example:
%% instance_monitoring() :: #{
%%   <<"Enabled">> => boolean()
%% }
-type instance_monitoring() :: #{binary() => any()}.

%% Example:
%% set_desired_capacity_type() :: #{
%%   <<"AutoScalingGroupName">> := string(),
%%   <<"DesiredCapacity">> := integer(),
%%   <<"HonorCooldown">> => boolean()
%% }
-type set_desired_capacity_type() :: #{binary() => any()}.

%% Example:
%% auto_scaling_group() :: #{
%%   <<"ServiceLinkedRoleARN">> => string(),
%%   <<"Instances">> => list(instance()()),
%%   <<"MaxSize">> => integer(),
%%   <<"SuspendedProcesses">> => list(suspended_process()()),
%%   <<"EnabledMetrics">> => list(enabled_metric()()),
%%   <<"MixedInstancesPolicy">> => mixed_instances_policy(),
%%   <<"TargetGroupARNs">> => list(string()()),
%%   <<"TerminationPolicies">> => list(string()()),
%%   <<"AvailabilityZoneDistribution">> => availability_zone_distribution(),
%%   <<"CapacityReservationSpecification">> => capacity_reservation_specification(),
%%   <<"LaunchConfigurationName">> => string(),
%%   <<"DesiredCapacityType">> => string(),
%%   <<"AutoScalingGroupName">> => string(),
%%   <<"VPCZoneIdentifier">> => string(),
%%   <<"NewInstancesProtectedFromScaleIn">> => boolean(),
%%   <<"AutoScalingGroupARN">> => string(),
%%   <<"PlacementGroup">> => string(),
%%   <<"HealthCheckType">> => string(),
%%   <<"Context">> => string(),
%%   <<"MaxInstanceLifetime">> => integer(),
%%   <<"HealthCheckGracePeriod">> => integer(),
%%   <<"LaunchTemplate">> => launch_template_specification(),
%%   <<"AvailabilityZones">> => list(string()()),
%%   <<"LoadBalancerNames">> => list(string()()),
%%   <<"Tags">> => list(tag_description()()),
%%   <<"CapacityRebalance">> => boolean(),
%%   <<"TrafficSources">> => list(traffic_source_identifier()()),
%%   <<"AvailabilityZoneImpairmentPolicy">> => availability_zone_impairment_policy(),
%%   <<"InstanceMaintenancePolicy">> => instance_maintenance_policy(),
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"DefaultCooldown">> => integer(),
%%   <<"WarmPoolConfiguration">> => warm_pool_configuration(),
%%   <<"Status">> => string(),
%%   <<"PredictedCapacity">> => integer(),
%%   <<"MinSize">> => integer(),
%%   <<"DesiredCapacity">> => integer(),
%%   <<"DefaultInstanceWarmup">> => integer(),
%%   <<"WarmPoolSize">> => integer()
%% }
-type auto_scaling_group() :: #{binary() => any()}.

%% Example:
%% batch_put_scheduled_update_group_action_answer() :: #{
%%   <<"FailedScheduledUpdateGroupActions">> => list(failed_scheduled_update_group_action_request()())
%% }
-type batch_put_scheduled_update_group_action_answer() :: #{binary() => any()}.

%% Example:
%% describe_auto_scaling_notification_types_answer() :: #{
%%   <<"AutoScalingNotificationTypes">> => list(string()())
%% }
-type describe_auto_scaling_notification_types_answer() :: #{binary() => any()}.

%% Example:
%% refresh_preferences() :: #{
%%   <<"AlarmSpecification">> => alarm_specification(),
%%   <<"AutoRollback">> => boolean(),
%%   <<"BakeTime">> => integer(),
%%   <<"CheckpointDelay">> => integer(),
%%   <<"CheckpointPercentages">> => list(integer()()),
%%   <<"InstanceWarmup">> => integer(),
%%   <<"MaxHealthyPercentage">> => integer(),
%%   <<"MinHealthyPercentage">> => integer(),
%%   <<"ScaleInProtectedInstances">> => list(any()),
%%   <<"SkipMatching">> => boolean(),
%%   <<"StandbyInstances">> => list(any())
%% }
-type refresh_preferences() :: #{binary() => any()}.

%% Example:
%% launch_template() :: #{
%%   <<"LaunchTemplateSpecification">> => launch_template_specification(),
%%   <<"Overrides">> => list(launch_template_overrides()())
%% }
-type launch_template() :: #{binary() => any()}.

%% Example:
%% batch_put_scheduled_update_group_action_type() :: #{
%%   <<"AutoScalingGroupName">> := string(),
%%   <<"ScheduledUpdateGroupActions">> := list(scheduled_update_group_action_request()())
%% }
-type batch_put_scheduled_update_group_action_type() :: #{binary() => any()}.

%% Example:
%% describe_instance_refreshes_answer() :: #{
%%   <<"InstanceRefreshes">> => list(instance_refresh()()),
%%   <<"NextToken">> => string()
%% }
-type describe_instance_refreshes_answer() :: #{binary() => any()}.

%% Example:
%% put_warm_pool_answer() :: #{

%% }
-type put_warm_pool_answer() :: #{binary() => any()}.

%% Example:
%% update_auto_scaling_group_type() :: #{
%%   <<"AutoScalingGroupName">> := string(),
%%   <<"AvailabilityZoneDistribution">> => availability_zone_distribution(),
%%   <<"AvailabilityZoneImpairmentPolicy">> => availability_zone_impairment_policy(),
%%   <<"AvailabilityZones">> => list(string()()),
%%   <<"CapacityRebalance">> => boolean(),
%%   <<"CapacityReservationSpecification">> => capacity_reservation_specification(),
%%   <<"Context">> => string(),
%%   <<"DefaultCooldown">> => integer(),
%%   <<"DefaultInstanceWarmup">> => integer(),
%%   <<"DesiredCapacity">> => integer(),
%%   <<"DesiredCapacityType">> => string(),
%%   <<"HealthCheckGracePeriod">> => integer(),
%%   <<"HealthCheckType">> => string(),
%%   <<"InstanceMaintenancePolicy">> => instance_maintenance_policy(),
%%   <<"LaunchConfigurationName">> => string(),
%%   <<"LaunchTemplate">> => launch_template_specification(),
%%   <<"MaxInstanceLifetime">> => integer(),
%%   <<"MaxSize">> => integer(),
%%   <<"MinSize">> => integer(),
%%   <<"MixedInstancesPolicy">> => mixed_instances_policy(),
%%   <<"NewInstancesProtectedFromScaleIn">> => boolean(),
%%   <<"PlacementGroup">> => string(),
%%   <<"ServiceLinkedRoleARN">> => string(),
%%   <<"SkipZonalShiftValidation">> => boolean(),
%%   <<"TerminationPolicies">> => list(string()()),
%%   <<"VPCZoneIdentifier">> => string()
%% }
-type update_auto_scaling_group_type() :: #{binary() => any()}.

%% Example:
%% describe_load_balancer_target_groups_request() :: #{
%%   <<"AutoScalingGroupName">> := string(),
%%   <<"MaxRecords">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type describe_load_balancer_target_groups_request() :: #{binary() => any()}.

%% Example:
%% instance_refresh_in_progress_fault() :: #{
%%   <<"message">> => string()
%% }
-type instance_refresh_in_progress_fault() :: #{binary() => any()}.

%% Example:
%% delete_scheduled_action_type() :: #{
%%   <<"AutoScalingGroupName">> := string(),
%%   <<"ScheduledActionName">> := string()
%% }
-type delete_scheduled_action_type() :: #{binary() => any()}.

%% Example:
%% launch_configuration() :: #{
%%   <<"AssociatePublicIpAddress">> => boolean(),
%%   <<"BlockDeviceMappings">> => list(block_device_mapping()()),
%%   <<"ClassicLinkVPCId">> => string(),
%%   <<"ClassicLinkVPCSecurityGroups">> => list(string()()),
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"EbsOptimized">> => boolean(),
%%   <<"IamInstanceProfile">> => string(),
%%   <<"ImageId">> => string(),
%%   <<"InstanceMonitoring">> => instance_monitoring(),
%%   <<"InstanceType">> => string(),
%%   <<"KernelId">> => string(),
%%   <<"KeyName">> => string(),
%%   <<"LaunchConfigurationARN">> => string(),
%%   <<"LaunchConfigurationName">> => string(),
%%   <<"MetadataOptions">> => instance_metadata_options(),
%%   <<"PlacementTenancy">> => string(),
%%   <<"RamdiskId">> => string(),
%%   <<"SecurityGroups">> => list(string()()),
%%   <<"SpotPrice">> => string(),
%%   <<"UserData">> => string()
%% }
-type launch_configuration() :: #{binary() => any()}.

%% Example:
%% cpu_performance_factor_request() :: #{
%%   <<"References">> => list(performance_factor_reference_request()())
%% }
-type cpu_performance_factor_request() :: #{binary() => any()}.

%% Example:
%% attach_load_balancer_target_groups_type() :: #{
%%   <<"AutoScalingGroupName">> := string(),
%%   <<"TargetGroupARNs">> := list(string()())
%% }
-type attach_load_balancer_target_groups_type() :: #{binary() => any()}.

%% Example:
%% launch_template_specification() :: #{
%%   <<"LaunchTemplateId">> => string(),
%%   <<"LaunchTemplateName">> => string(),
%%   <<"Version">> => string()
%% }
-type launch_template_specification() :: #{binary() => any()}.

%% Example:
%% rollback_details() :: #{
%%   <<"InstancesToUpdateOnRollback">> => integer(),
%%   <<"PercentageCompleteOnRollback">> => integer(),
%%   <<"ProgressDetailsOnRollback">> => instance_refresh_progress_details(),
%%   <<"RollbackReason">> => string(),
%%   <<"RollbackStartTime">> => non_neg_integer()
%% }
-type rollback_details() :: #{binary() => any()}.

%% Example:
%% set_instance_protection_query() :: #{
%%   <<"AutoScalingGroupName">> := string(),
%%   <<"InstanceIds">> := list(string()()),
%%   <<"ProtectedFromScaleIn">> := boolean()
%% }
-type set_instance_protection_query() :: #{binary() => any()}.

%% Example:
%% memory_mi_b_request() :: #{
%%   <<"Max">> => integer(),
%%   <<"Min">> => integer()
%% }
-type memory_mi_b_request() :: #{binary() => any()}.

%% Example:
%% network_interface_count_request() :: #{
%%   <<"Max">> => integer(),
%%   <<"Min">> => integer()
%% }
-type network_interface_count_request() :: #{binary() => any()}.

%% Example:
%% set_instance_health_query() :: #{
%%   <<"HealthStatus">> := string(),
%%   <<"InstanceId">> := string(),
%%   <<"ShouldRespectGracePeriod">> => boolean()
%% }
-type set_instance_health_query() :: #{binary() => any()}.

%% Example:
%% delete_lifecycle_hook_type() :: #{
%%   <<"AutoScalingGroupName">> := string(),
%%   <<"LifecycleHookName">> := string()
%% }
-type delete_lifecycle_hook_type() :: #{binary() => any()}.

%% Example:
%% disable_metrics_collection_query() :: #{
%%   <<"AutoScalingGroupName">> := string(),
%%   <<"Metrics">> => list(string()())
%% }
-type disable_metrics_collection_query() :: #{binary() => any()}.

%% Example:
%% total_local_storage_g_b_request() :: #{
%%   <<"Max">> => float(),
%%   <<"Min">> => float()
%% }
-type total_local_storage_g_b_request() :: #{binary() => any()}.

%% Example:
%% service_linked_role_failure() :: #{
%%   <<"message">> => string()
%% }
-type service_linked_role_failure() :: #{binary() => any()}.

%% Example:
%% set_instance_protection_answer() :: #{

%% }
-type set_instance_protection_answer() :: #{binary() => any()}.

%% Example:
%% predictive_scaling_customized_capacity_metric() :: #{
%%   <<"MetricDataQueries">> => list(metric_data_query()())
%% }
-type predictive_scaling_customized_capacity_metric() :: #{binary() => any()}.

%% Example:
%% rollback_instance_refresh_type() :: #{
%%   <<"AutoScalingGroupName">> := string()
%% }
-type rollback_instance_refresh_type() :: #{binary() => any()}.

%% Example:
%% availability_zone_distribution() :: #{
%%   <<"CapacityDistributionStrategy">> => list(any())
%% }
-type availability_zone_distribution() :: #{binary() => any()}.

%% Example:
%% target_tracking_metric_data_query() :: #{
%%   <<"Expression">> => string(),
%%   <<"Id">> => string(),
%%   <<"Label">> => string(),
%%   <<"MetricStat">> => target_tracking_metric_stat(),
%%   <<"Period">> => integer(),
%%   <<"ReturnData">> => boolean()
%% }
-type target_tracking_metric_data_query() :: #{binary() => any()}.

%% Example:
%% capacity_forecast() :: #{
%%   <<"Timestamps">> => list(non_neg_integer()()),
%%   <<"Values">> => list(float()())
%% }
-type capacity_forecast() :: #{binary() => any()}.

%% Example:
%% auto_scaling_instances_type() :: #{
%%   <<"AutoScalingInstances">> => list(auto_scaling_instance_details()()),
%%   <<"NextToken">> => string()
%% }
-type auto_scaling_instances_type() :: #{binary() => any()}.

%% Example:
%% detach_load_balancer_target_groups_result_type() :: #{

%% }
-type detach_load_balancer_target_groups_result_type() :: #{binary() => any()}.

%% Example:
%% alarm_specification() :: #{
%%   <<"Alarms">> => list(string()())
%% }
-type alarm_specification() :: #{binary() => any()}.

%% Example:
%% describe_scaling_activities_type() :: #{
%%   <<"ActivityIds">> => list(string()()),
%%   <<"AutoScalingGroupName">> => string(),
%%   <<"IncludeDeletedGroups">> => boolean(),
%%   <<"MaxRecords">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type describe_scaling_activities_type() :: #{binary() => any()}.

%% Example:
%% delete_lifecycle_hook_answer() :: #{

%% }
-type delete_lifecycle_hook_answer() :: #{binary() => any()}.

%% Example:
%% describe_auto_scaling_instances_type() :: #{
%%   <<"InstanceIds">> => list(string()()),
%%   <<"MaxRecords">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type describe_auto_scaling_instances_type() :: #{binary() => any()}.

%% Example:
%% instance_refresh_live_pool_progress() :: #{
%%   <<"InstancesToUpdate">> => integer(),
%%   <<"PercentageComplete">> => integer()
%% }
-type instance_refresh_live_pool_progress() :: #{binary() => any()}.

%% Example:
%% auto_scaling_groups_type() :: #{
%%   <<"AutoScalingGroups">> := list(auto_scaling_group()()),
%%   <<"NextToken">> => string()
%% }
-type auto_scaling_groups_type() :: #{binary() => any()}.

%% Example:
%% metric_collection_type() :: #{
%%   <<"Metric">> => string()
%% }
-type metric_collection_type() :: #{binary() => any()}.

%% Example:
%% batch_delete_scheduled_action_answer() :: #{
%%   <<"FailedScheduledActions">> => list(failed_scheduled_update_group_action_request()())
%% }
-type batch_delete_scheduled_action_answer() :: #{binary() => any()}.

%% Example:
%% enable_metrics_collection_query() :: #{
%%   <<"AutoScalingGroupName">> := string(),
%%   <<"Granularity">> := string(),
%%   <<"Metrics">> => list(string()())
%% }
-type enable_metrics_collection_query() :: #{binary() => any()}.

%% Example:
%% desired_configuration() :: #{
%%   <<"LaunchTemplate">> => launch_template_specification(),
%%   <<"MixedInstancesPolicy">> => mixed_instances_policy()
%% }
-type desired_configuration() :: #{binary() => any()}.

%% Example:
%% invalid_next_token() :: #{
%%   <<"message">> => string()
%% }
-type invalid_next_token() :: #{binary() => any()}.

%% Example:
%% baseline_ebs_bandwidth_mbps_request() :: #{
%%   <<"Max">> => integer(),
%%   <<"Min">> => integer()
%% }
-type baseline_ebs_bandwidth_mbps_request() :: #{binary() => any()}.

%% Example:
%% put_scaling_policy_type() :: #{
%%   <<"AdjustmentType">> => string(),
%%   <<"AutoScalingGroupName">> := string(),
%%   <<"Cooldown">> => integer(),
%%   <<"Enabled">> => boolean(),
%%   <<"EstimatedInstanceWarmup">> => integer(),
%%   <<"MetricAggregationType">> => string(),
%%   <<"MinAdjustmentMagnitude">> => integer(),
%%   <<"MinAdjustmentStep">> => integer(),
%%   <<"PolicyName">> := string(),
%%   <<"PolicyType">> => string(),
%%   <<"PredictiveScalingConfiguration">> => predictive_scaling_configuration(),
%%   <<"ScalingAdjustment">> => integer(),
%%   <<"StepAdjustments">> => list(step_adjustment()()),
%%   <<"TargetTrackingConfiguration">> => target_tracking_configuration()
%% }
-type put_scaling_policy_type() :: #{binary() => any()}.

%% Example:
%% attach_load_balancer_target_groups_result_type() :: #{

%% }
-type attach_load_balancer_target_groups_result_type() :: #{binary() => any()}.

%% Example:
%% predictive_scaling_configuration() :: #{
%%   <<"MaxCapacityBreachBehavior">> => list(any()),
%%   <<"MaxCapacityBuffer">> => integer(),
%%   <<"MetricSpecifications">> => list(predictive_scaling_metric_specification()()),
%%   <<"Mode">> => list(any()),
%%   <<"SchedulingBufferTime">> => integer()
%% }
-type predictive_scaling_configuration() :: #{binary() => any()}.

%% Example:
%% target_tracking_configuration() :: #{
%%   <<"CustomizedMetricSpecification">> => customized_metric_specification(),
%%   <<"DisableScaleIn">> => boolean(),
%%   <<"PredefinedMetricSpecification">> => predefined_metric_specification(),
%%   <<"TargetValue">> => float()
%% }
-type target_tracking_configuration() :: #{binary() => any()}.

%% Example:
%% delete_policy_type() :: #{
%%   <<"AutoScalingGroupName">> => string(),
%%   <<"PolicyName">> := string()
%% }
-type delete_policy_type() :: #{binary() => any()}.

-type attach_instances_errors() ::
    service_linked_role_failure() | 
    resource_contention_fault().

-type attach_load_balancer_target_groups_errors() ::
    service_linked_role_failure() | 
    resource_contention_fault().

-type attach_load_balancers_errors() ::
    service_linked_role_failure() | 
    resource_contention_fault().

-type attach_traffic_sources_errors() ::
    service_linked_role_failure() | 
    resource_contention_fault().

-type batch_delete_scheduled_action_errors() ::
    resource_contention_fault().

-type batch_put_scheduled_update_group_action_errors() ::
    already_exists_fault() | 
    resource_contention_fault() | 
    limit_exceeded_fault().

-type cancel_instance_refresh_errors() ::
    resource_contention_fault() | 
    active_instance_refresh_not_found_fault() | 
    limit_exceeded_fault().

-type complete_lifecycle_action_errors() ::
    resource_contention_fault().

-type create_auto_scaling_group_errors() ::
    service_linked_role_failure() | 
    already_exists_fault() | 
    resource_contention_fault() | 
    limit_exceeded_fault().

-type create_launch_configuration_errors() ::
    already_exists_fault() | 
    resource_contention_fault() | 
    limit_exceeded_fault().

-type create_or_update_tags_errors() ::
    already_exists_fault() | 
    resource_in_use_fault() | 
    resource_contention_fault() | 
    limit_exceeded_fault().

-type delete_auto_scaling_group_errors() ::
    resource_in_use_fault() | 
    resource_contention_fault() | 
    scaling_activity_in_progress_fault().

-type delete_launch_configuration_errors() ::
    resource_in_use_fault() | 
    resource_contention_fault().

-type delete_lifecycle_hook_errors() ::
    resource_contention_fault().

-type delete_notification_configuration_errors() ::
    resource_contention_fault().

-type delete_policy_errors() ::
    service_linked_role_failure() | 
    resource_contention_fault().

-type delete_scheduled_action_errors() ::
    resource_contention_fault().

-type delete_tags_errors() ::
    resource_in_use_fault() | 
    resource_contention_fault().

-type delete_warm_pool_errors() ::
    resource_in_use_fault() | 
    resource_contention_fault() | 
    scaling_activity_in_progress_fault() | 
    limit_exceeded_fault().

-type describe_account_limits_errors() ::
    resource_contention_fault().

-type describe_adjustment_types_errors() ::
    resource_contention_fault().

-type describe_auto_scaling_groups_errors() ::
    invalid_next_token() | 
    resource_contention_fault().

-type describe_auto_scaling_instances_errors() ::
    invalid_next_token() | 
    resource_contention_fault().

-type describe_auto_scaling_notification_types_errors() ::
    resource_contention_fault().

-type describe_instance_refreshes_errors() ::
    invalid_next_token() | 
    resource_contention_fault().

-type describe_launch_configurations_errors() ::
    invalid_next_token() | 
    resource_contention_fault().

-type describe_lifecycle_hook_types_errors() ::
    resource_contention_fault().

-type describe_lifecycle_hooks_errors() ::
    resource_contention_fault().

-type describe_load_balancer_target_groups_errors() ::
    invalid_next_token() | 
    resource_contention_fault().

-type describe_load_balancers_errors() ::
    invalid_next_token() | 
    resource_contention_fault().

-type describe_metric_collection_types_errors() ::
    resource_contention_fault().

-type describe_notification_configurations_errors() ::
    invalid_next_token() | 
    resource_contention_fault().

-type describe_policies_errors() ::
    invalid_next_token() | 
    service_linked_role_failure() | 
    resource_contention_fault().

-type describe_scaling_activities_errors() ::
    invalid_next_token() | 
    resource_contention_fault().

-type describe_scaling_process_types_errors() ::
    resource_contention_fault().

-type describe_scheduled_actions_errors() ::
    invalid_next_token() | 
    resource_contention_fault().

-type describe_tags_errors() ::
    invalid_next_token() | 
    resource_contention_fault().

-type describe_termination_policy_types_errors() ::
    resource_contention_fault().

-type describe_traffic_sources_errors() ::
    invalid_next_token() | 
    resource_contention_fault().

-type describe_warm_pool_errors() ::
    invalid_next_token() | 
    resource_contention_fault() | 
    limit_exceeded_fault().

-type detach_instances_errors() ::
    resource_contention_fault().

-type detach_load_balancer_target_groups_errors() ::
    resource_contention_fault().

-type detach_load_balancers_errors() ::
    resource_contention_fault().

-type detach_traffic_sources_errors() ::
    resource_contention_fault().

-type disable_metrics_collection_errors() ::
    resource_contention_fault().

-type enable_metrics_collection_errors() ::
    resource_contention_fault().

-type enter_standby_errors() ::
    resource_contention_fault().

-type execute_policy_errors() ::
    resource_contention_fault() | 
    scaling_activity_in_progress_fault().

-type exit_standby_errors() ::
    resource_contention_fault().

-type get_predictive_scaling_forecast_errors() ::
    resource_contention_fault().

-type put_lifecycle_hook_errors() ::
    resource_contention_fault() | 
    limit_exceeded_fault().

-type put_notification_configuration_errors() ::
    service_linked_role_failure() | 
    resource_contention_fault() | 
    limit_exceeded_fault().

-type put_scaling_policy_errors() ::
    service_linked_role_failure() | 
    resource_contention_fault() | 
    limit_exceeded_fault().

-type put_scheduled_update_group_action_errors() ::
    already_exists_fault() | 
    resource_contention_fault() | 
    limit_exceeded_fault().

-type put_warm_pool_errors() ::
    resource_contention_fault() | 
    limit_exceeded_fault().

-type record_lifecycle_action_heartbeat_errors() ::
    resource_contention_fault().

-type resume_processes_errors() ::
    resource_in_use_fault() | 
    resource_contention_fault().

-type rollback_instance_refresh_errors() ::
    resource_contention_fault() | 
    irreversible_instance_refresh_fault() | 
    active_instance_refresh_not_found_fault() | 
    limit_exceeded_fault().

-type set_desired_capacity_errors() ::
    resource_contention_fault() | 
    scaling_activity_in_progress_fault().

-type set_instance_health_errors() ::
    resource_contention_fault().

-type set_instance_protection_errors() ::
    resource_contention_fault() | 
    limit_exceeded_fault().

-type start_instance_refresh_errors() ::
    instance_refresh_in_progress_fault() | 
    resource_contention_fault() | 
    limit_exceeded_fault().

-type suspend_processes_errors() ::
    resource_in_use_fault() | 
    resource_contention_fault().

-type terminate_instance_in_auto_scaling_group_errors() ::
    resource_contention_fault() | 
    scaling_activity_in_progress_fault().

-type update_auto_scaling_group_errors() ::
    service_linked_role_failure() | 
    resource_contention_fault() | 
    scaling_activity_in_progress_fault().

%%====================================================================
%% API
%%====================================================================

%% @doc Attaches one or more EC2 instances to the specified Auto Scaling
%% group.
%%
%% When you attach instances, Amazon EC2 Auto Scaling increases the desired
%% capacity of the group by the
%% number of instances being attached. If the number of instances being
%% attached plus the
%% desired capacity of the group exceeds the maximum size of the group, the
%% operation
%% fails.
%%
%% If there is a Classic Load Balancer attached to your Auto Scaling group,
%% the instances are
%% also registered with the load balancer. If there are target groups
%% attached to your Auto Scaling
%% group, the instances are also registered with the target groups.
%%
%% For more information, see Detach
%% or attach instances:
%% https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-detach-attach-instances.html
%% in the Amazon EC2 Auto Scaling User Guide.
-spec attach_instances(aws_client:aws_client(), attach_instances_query()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, attach_instances_errors(), tuple()}.
attach_instances(Client, Input)
  when is_map(Client), is_map(Input) ->
    attach_instances(Client, Input, []).

-spec attach_instances(aws_client:aws_client(), attach_instances_query(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, attach_instances_errors(), tuple()}.
attach_instances(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AttachInstances">>, Input, Options).

%% @doc
%% This API operation is superseded by AttachTrafficSources:
%% https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_AttachTrafficSources.html,
%% which
%% can attach multiple traffic sources types.
%%
%% We recommend using
%% `AttachTrafficSources' to simplify how you manage traffic sources.
%% However, we continue to support `AttachLoadBalancerTargetGroups'. You
%% can
%% use both the original `AttachLoadBalancerTargetGroups' API operation
%% and
%% `AttachTrafficSources' on the same Auto Scaling group.
%%
%% Attaches one or more target groups to the specified Auto Scaling group.
%%
%% This operation is used with the following load balancer types:
%%
%% Application Load Balancer - Operates at the application layer (layer 7)
%% and supports HTTP and
%% HTTPS.
%%
%% Network Load Balancer - Operates at the transport layer (layer 4) and
%% supports TCP, TLS, and
%% UDP.
%%
%% Gateway Load Balancer - Operates at the network layer (layer 3).
%%
%% To describe the target groups for an Auto Scaling group, call the
%% DescribeLoadBalancerTargetGroups:
%% https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DescribeLoadBalancerTargetGroups.html
%% API. To detach the target group from
%% the Auto Scaling group, call the DetachLoadBalancerTargetGroups:
%% https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DetachLoadBalancerTargetGroups.html
%% API.
%%
%% This operation is additive and does not detach existing target groups or
%% Classic Load
%% Balancers from the Auto Scaling group.
%%
%% For more information, see Use Elastic Load Balancing to
%% distribute traffic across the instances in your Auto Scaling group:
%% https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-load-balancer.html
%% in the
%% Amazon EC2 Auto Scaling User Guide.
-spec attach_load_balancer_target_groups(aws_client:aws_client(), attach_load_balancer_target_groups_type()) ->
    {ok, attach_load_balancer_target_groups_result_type(), tuple()} |
    {error, any()} |
    {error, attach_load_balancer_target_groups_errors(), tuple()}.
attach_load_balancer_target_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    attach_load_balancer_target_groups(Client, Input, []).

-spec attach_load_balancer_target_groups(aws_client:aws_client(), attach_load_balancer_target_groups_type(), proplists:proplist()) ->
    {ok, attach_load_balancer_target_groups_result_type(), tuple()} |
    {error, any()} |
    {error, attach_load_balancer_target_groups_errors(), tuple()}.
attach_load_balancer_target_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AttachLoadBalancerTargetGroups">>, Input, Options).

%% @doc
%% This API operation is superseded by
%% [https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_AttachTrafficSources.html],
%% which
%% can attach multiple traffic sources types.
%%
%% We recommend using
%% `AttachTrafficSources' to simplify how you manage traffic sources.
%% However, we continue to support `AttachLoadBalancers'. You can use
%% both
%% the original `AttachLoadBalancers' API operation and
%% `AttachTrafficSources' on the same Auto Scaling group.
%%
%% Attaches one or more Classic Load Balancers to the specified Auto Scaling
%% group. Amazon EC2 Auto Scaling registers the
%% running instances with these Classic Load Balancers.
%%
%% To describe the load balancers for an Auto Scaling group, call the
%% DescribeLoadBalancers:
%% https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DescribeLoadBalancers.html
%% API.
%% To detach a load balancer from the Auto Scaling group, call the
%% DetachLoadBalancers:
%% https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DetachLoadBalancers.html
%% API.
%%
%% This operation is additive and does not detach existing Classic Load
%% Balancers or
%% target groups from the Auto Scaling group.
%%
%% For more information, see Use Elastic Load Balancing to
%% distribute traffic across the instances in your Auto Scaling group:
%% https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-load-balancer.html
%% in the
%% Amazon EC2 Auto Scaling User Guide.
-spec attach_load_balancers(aws_client:aws_client(), attach_load_balancers_type()) ->
    {ok, attach_load_balancers_result_type(), tuple()} |
    {error, any()} |
    {error, attach_load_balancers_errors(), tuple()}.
attach_load_balancers(Client, Input)
  when is_map(Client), is_map(Input) ->
    attach_load_balancers(Client, Input, []).

-spec attach_load_balancers(aws_client:aws_client(), attach_load_balancers_type(), proplists:proplist()) ->
    {ok, attach_load_balancers_result_type(), tuple()} |
    {error, any()} |
    {error, attach_load_balancers_errors(), tuple()}.
attach_load_balancers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AttachLoadBalancers">>, Input, Options).

%% @doc Attaches one or more traffic sources to the specified Auto Scaling
%% group.
%%
%% You can use any of the following as traffic sources for an Auto Scaling
%% group:
%%
%% Application Load Balancer
%%
%% Classic Load Balancer
%%
%% Gateway Load Balancer
%%
%% Network Load Balancer
%%
%% VPC Lattice
%%
%% This operation is additive and does not detach existing traffic sources
%% from the Auto Scaling
%% group.
%%
%% After the operation completes, use the DescribeTrafficSources:
%% https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DescribeTrafficSources.html
%% API to
%% return details about the state of the attachments between traffic sources
%% and your Auto Scaling
%% group. To detach a traffic source from the Auto Scaling group, call the
%% DetachTrafficSources:
%% https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DetachTrafficSources.html
%% API.
-spec attach_traffic_sources(aws_client:aws_client(), attach_traffic_sources_type()) ->
    {ok, attach_traffic_sources_result_type(), tuple()} |
    {error, any()} |
    {error, attach_traffic_sources_errors(), tuple()}.
attach_traffic_sources(Client, Input)
  when is_map(Client), is_map(Input) ->
    attach_traffic_sources(Client, Input, []).

-spec attach_traffic_sources(aws_client:aws_client(), attach_traffic_sources_type(), proplists:proplist()) ->
    {ok, attach_traffic_sources_result_type(), tuple()} |
    {error, any()} |
    {error, attach_traffic_sources_errors(), tuple()}.
attach_traffic_sources(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AttachTrafficSources">>, Input, Options).

%% @doc Deletes one or more scheduled actions for the specified Auto Scaling
%% group.
-spec batch_delete_scheduled_action(aws_client:aws_client(), batch_delete_scheduled_action_type()) ->
    {ok, batch_delete_scheduled_action_answer(), tuple()} |
    {error, any()} |
    {error, batch_delete_scheduled_action_errors(), tuple()}.
batch_delete_scheduled_action(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_delete_scheduled_action(Client, Input, []).

-spec batch_delete_scheduled_action(aws_client:aws_client(), batch_delete_scheduled_action_type(), proplists:proplist()) ->
    {ok, batch_delete_scheduled_action_answer(), tuple()} |
    {error, any()} |
    {error, batch_delete_scheduled_action_errors(), tuple()}.
batch_delete_scheduled_action(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchDeleteScheduledAction">>, Input, Options).

%% @doc Creates or updates one or more scheduled scaling actions for an Auto
%% Scaling group.
-spec batch_put_scheduled_update_group_action(aws_client:aws_client(), batch_put_scheduled_update_group_action_type()) ->
    {ok, batch_put_scheduled_update_group_action_answer(), tuple()} |
    {error, any()} |
    {error, batch_put_scheduled_update_group_action_errors(), tuple()}.
batch_put_scheduled_update_group_action(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_put_scheduled_update_group_action(Client, Input, []).

-spec batch_put_scheduled_update_group_action(aws_client:aws_client(), batch_put_scheduled_update_group_action_type(), proplists:proplist()) ->
    {ok, batch_put_scheduled_update_group_action_answer(), tuple()} |
    {error, any()} |
    {error, batch_put_scheduled_update_group_action_errors(), tuple()}.
batch_put_scheduled_update_group_action(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchPutScheduledUpdateGroupAction">>, Input, Options).

%% @doc Cancels an instance refresh or rollback that is in progress.
%%
%% If an instance refresh or
%% rollback is not in progress, an `ActiveInstanceRefreshNotFound' error
%% occurs.
%%
%% This operation is part of the instance refresh
%% feature:
%% https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-instance-refresh.html
%% in Amazon EC2 Auto Scaling, which helps you update instances in your Auto
%% Scaling group
%% after you make configuration changes.
%%
%% When you cancel an instance refresh, this does not roll back any changes
%% that it made.
%% Use the RollbackInstanceRefresh:
%% https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_RollbackInstanceRefresh.html
%% API to roll back instead.
-spec cancel_instance_refresh(aws_client:aws_client(), cancel_instance_refresh_type()) ->
    {ok, cancel_instance_refresh_answer(), tuple()} |
    {error, any()} |
    {error, cancel_instance_refresh_errors(), tuple()}.
cancel_instance_refresh(Client, Input)
  when is_map(Client), is_map(Input) ->
    cancel_instance_refresh(Client, Input, []).

-spec cancel_instance_refresh(aws_client:aws_client(), cancel_instance_refresh_type(), proplists:proplist()) ->
    {ok, cancel_instance_refresh_answer(), tuple()} |
    {error, any()} |
    {error, cancel_instance_refresh_errors(), tuple()}.
cancel_instance_refresh(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CancelInstanceRefresh">>, Input, Options).

%% @doc Completes the lifecycle action for the specified token or instance
%% with the specified
%% result.
%%
%% This step is a part of the procedure for adding a lifecycle hook to an
%% Auto Scaling
%% group:
%%
%% (Optional) Create a launch template or launch configuration with a user
%% data
%% script that runs while an instance is in a wait state due to a lifecycle
%% hook.
%%
%% (Optional) Create a Lambda function and a rule that allows Amazon
%% EventBridge to invoke
%% your Lambda function when an instance is put into a wait state due to a
%% lifecycle hook.
%%
%% (Optional) Create a notification target and an IAM role. The target can be
%% either an Amazon SQS queue or an Amazon SNS topic. The role allows Amazon
%% EC2 Auto Scaling to publish
%% lifecycle notifications to the target.
%%
%% Create the lifecycle hook. Specify whether the hook is used when the
%% instances
%% launch or terminate.
%%
%% If you need more time, record the lifecycle action heartbeat to keep the
%% instance in a wait state.
%%
%% If you finish before the timeout period ends, send a
%% callback by using the CompleteLifecycleAction:
%% https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_CompleteLifecycleAction.html
%% API
%% call.
%%
%% For more information, see Complete a lifecycle
%% action:
%% https://docs.aws.amazon.com/autoscaling/ec2/userguide/completing-lifecycle-hooks.html
%% in the Amazon EC2 Auto Scaling User Guide.
-spec complete_lifecycle_action(aws_client:aws_client(), complete_lifecycle_action_type()) ->
    {ok, complete_lifecycle_action_answer(), tuple()} |
    {error, any()} |
    {error, complete_lifecycle_action_errors(), tuple()}.
complete_lifecycle_action(Client, Input)
  when is_map(Client), is_map(Input) ->
    complete_lifecycle_action(Client, Input, []).

-spec complete_lifecycle_action(aws_client:aws_client(), complete_lifecycle_action_type(), proplists:proplist()) ->
    {ok, complete_lifecycle_action_answer(), tuple()} |
    {error, any()} |
    {error, complete_lifecycle_action_errors(), tuple()}.
complete_lifecycle_action(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CompleteLifecycleAction">>, Input, Options).

%% @doc
%% We strongly recommend using a launch template when calling this operation
%% to ensure full functionality for Amazon EC2 Auto Scaling and Amazon EC2.
%%
%% Creates an Auto Scaling group with the specified name and attributes.
%%
%% If you exceed your maximum limit of Auto Scaling groups, the call fails.
%% To query this limit,
%% call the DescribeAccountLimits:
%% https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DescribeAccountLimits.html
%% API. For information about updating
%% this limit, see Quotas for
%% Amazon EC2 Auto Scaling:
%% https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-quotas.html
%% in the Amazon EC2 Auto Scaling User Guide.
%%
%% If you're new to Amazon EC2 Auto Scaling, see the introductory
%% tutorials in Get started
%% with Amazon EC2 Auto Scaling:
%% https://docs.aws.amazon.com/autoscaling/ec2/userguide/get-started-with-ec2-auto-scaling.html
%% in the Amazon EC2 Auto Scaling User Guide.
%%
%% Every Auto Scaling group has three size properties (`DesiredCapacity',
%% `MaxSize', and `MinSize'). Usually, you set these sizes based
%% on a specific number of instances. However, if you configure a mixed
%% instances policy
%% that defines weights for the instance types, you must specify these sizes
%% with the same
%% units that you use for weighting instances.
-spec create_auto_scaling_group(aws_client:aws_client(), create_auto_scaling_group_type()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, create_auto_scaling_group_errors(), tuple()}.
create_auto_scaling_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_auto_scaling_group(Client, Input, []).

-spec create_auto_scaling_group(aws_client:aws_client(), create_auto_scaling_group_type(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, create_auto_scaling_group_errors(), tuple()}.
create_auto_scaling_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateAutoScalingGroup">>, Input, Options).

%% @doc Creates a launch configuration.
%%
%% If you exceed your maximum limit of launch configurations, the call fails.
%% To query
%% this limit, call the DescribeAccountLimits:
%% https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DescribeAccountLimits.html
%% API.
%% For information about updating this limit, see Quotas for
%% Amazon EC2 Auto Scaling:
%% https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-quotas.html
%% in the Amazon EC2 Auto Scaling User Guide.
%%
%% For more information, see Launch
%% configurations:
%% https://docs.aws.amazon.com/autoscaling/ec2/userguide/launch-configurations.html
%% in the Amazon EC2 Auto Scaling User Guide.
%%
%% Amazon EC2 Auto Scaling configures instances launched as part of an Auto
%% Scaling group using either a
%% launch template or a launch configuration. We strongly recommend that you
%% do not use
%% launch configurations. They do not provide full functionality for Amazon
%% EC2 Auto Scaling or Amazon EC2.
%% For information about using launch templates, see Launch templates:
%% https://docs.aws.amazon.com/autoscaling/ec2/userguide/launch-templates.html
%% in the Amazon EC2 Auto Scaling User Guide.
-spec create_launch_configuration(aws_client:aws_client(), create_launch_configuration_type()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, create_launch_configuration_errors(), tuple()}.
create_launch_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_launch_configuration(Client, Input, []).

-spec create_launch_configuration(aws_client:aws_client(), create_launch_configuration_type(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, create_launch_configuration_errors(), tuple()}.
create_launch_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateLaunchConfiguration">>, Input, Options).

%% @doc Creates or updates tags for the specified Auto Scaling group.
%%
%% When you specify a tag with a key that already exists, the operation
%% overwrites the
%% previous tag definition, and you do not get an error message.
%%
%% For more information, see Tag Auto Scaling groups and
%% instances:
%% https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-tagging.html
%% in the Amazon EC2 Auto Scaling User Guide.
-spec create_or_update_tags(aws_client:aws_client(), create_or_update_tags_type()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, create_or_update_tags_errors(), tuple()}.
create_or_update_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_or_update_tags(Client, Input, []).

-spec create_or_update_tags(aws_client:aws_client(), create_or_update_tags_type(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, create_or_update_tags_errors(), tuple()}.
create_or_update_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateOrUpdateTags">>, Input, Options).

%% @doc Deletes the specified Auto Scaling group.
%%
%% If the group has instances or scaling activities in progress, you must
%% specify the
%% option to force the deletion in order for it to succeed. The force delete
%% operation will
%% also terminate the EC2 instances. If the group has a warm pool, the force
%% delete option
%% also deletes the warm pool.
%%
%% To remove instances from the Auto Scaling group before deleting it, call
%% the
%% DetachInstances:
%% https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DetachInstances.html
%% API with the list of instances and the option to
%% decrement the desired capacity. This ensures that Amazon EC2 Auto Scaling
%% does not launch replacement
%% instances.
%%
%% To terminate all instances before deleting the Auto Scaling group, call
%% the
%% UpdateAutoScalingGroup:
%% https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_UpdateAutoScalingGroup.html
%% API and set the minimum size and desired capacity
%% of the Auto Scaling group to
%% zero.
%%
%% If the group has scaling policies, deleting the group deletes the
%% policies, the
%% underlying alarm actions, and any alarm that no longer has an associated
%% action.
%%
%% For more information, see Delete your Auto Scaling
%% infrastructure:
%% https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-process-shutdown.html
%% in the Amazon EC2 Auto Scaling User Guide.
-spec delete_auto_scaling_group(aws_client:aws_client(), delete_auto_scaling_group_type()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_auto_scaling_group_errors(), tuple()}.
delete_auto_scaling_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_auto_scaling_group(Client, Input, []).

-spec delete_auto_scaling_group(aws_client:aws_client(), delete_auto_scaling_group_type(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_auto_scaling_group_errors(), tuple()}.
delete_auto_scaling_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAutoScalingGroup">>, Input, Options).

%% @doc Deletes the specified launch configuration.
%%
%% The launch configuration must not be attached to an Auto Scaling group.
%% When this call
%% completes, the launch configuration is no longer available for use.
-spec delete_launch_configuration(aws_client:aws_client(), launch_configuration_name_type()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_launch_configuration_errors(), tuple()}.
delete_launch_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_launch_configuration(Client, Input, []).

-spec delete_launch_configuration(aws_client:aws_client(), launch_configuration_name_type(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_launch_configuration_errors(), tuple()}.
delete_launch_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteLaunchConfiguration">>, Input, Options).

%% @doc Deletes the specified lifecycle hook.
%%
%% If there are any outstanding lifecycle actions, they are completed first
%% (`ABANDON' for launching instances, `CONTINUE' for terminating
%% instances).
-spec delete_lifecycle_hook(aws_client:aws_client(), delete_lifecycle_hook_type()) ->
    {ok, delete_lifecycle_hook_answer(), tuple()} |
    {error, any()} |
    {error, delete_lifecycle_hook_errors(), tuple()}.
delete_lifecycle_hook(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_lifecycle_hook(Client, Input, []).

-spec delete_lifecycle_hook(aws_client:aws_client(), delete_lifecycle_hook_type(), proplists:proplist()) ->
    {ok, delete_lifecycle_hook_answer(), tuple()} |
    {error, any()} |
    {error, delete_lifecycle_hook_errors(), tuple()}.
delete_lifecycle_hook(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteLifecycleHook">>, Input, Options).

%% @doc Deletes the specified notification.
-spec delete_notification_configuration(aws_client:aws_client(), delete_notification_configuration_type()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_notification_configuration_errors(), tuple()}.
delete_notification_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_notification_configuration(Client, Input, []).

-spec delete_notification_configuration(aws_client:aws_client(), delete_notification_configuration_type(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_notification_configuration_errors(), tuple()}.
delete_notification_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteNotificationConfiguration">>, Input, Options).

%% @doc Deletes the specified scaling policy.
%%
%% Deleting either a step scaling policy or a simple scaling policy deletes
%% the
%% underlying alarm action, but does not delete the alarm, even if it no
%% longer has an
%% associated action.
%%
%% For more information, see Delete a scaling
%% policy:
%% https://docs.aws.amazon.com/autoscaling/ec2/userguide/deleting-scaling-policy.html
%% in the Amazon EC2 Auto Scaling User Guide.
-spec delete_policy(aws_client:aws_client(), delete_policy_type()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_policy_errors(), tuple()}.
delete_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_policy(Client, Input, []).

-spec delete_policy(aws_client:aws_client(), delete_policy_type(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_policy_errors(), tuple()}.
delete_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeletePolicy">>, Input, Options).

%% @doc Deletes the specified scheduled action.
-spec delete_scheduled_action(aws_client:aws_client(), delete_scheduled_action_type()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_scheduled_action_errors(), tuple()}.
delete_scheduled_action(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_scheduled_action(Client, Input, []).

-spec delete_scheduled_action(aws_client:aws_client(), delete_scheduled_action_type(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_scheduled_action_errors(), tuple()}.
delete_scheduled_action(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteScheduledAction">>, Input, Options).

%% @doc Deletes the specified tags.
-spec delete_tags(aws_client:aws_client(), delete_tags_type()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_tags_errors(), tuple()}.
delete_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_tags(Client, Input, []).

-spec delete_tags(aws_client:aws_client(), delete_tags_type(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_tags_errors(), tuple()}.
delete_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteTags">>, Input, Options).

%% @doc Deletes the warm pool for the specified Auto Scaling group.
%%
%% For more information, see Warm pools for
%% Amazon EC2 Auto Scaling:
%% https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-warm-pools.html
%% in the Amazon EC2 Auto Scaling User Guide.
-spec delete_warm_pool(aws_client:aws_client(), delete_warm_pool_type()) ->
    {ok, delete_warm_pool_answer(), tuple()} |
    {error, any()} |
    {error, delete_warm_pool_errors(), tuple()}.
delete_warm_pool(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_warm_pool(Client, Input, []).

-spec delete_warm_pool(aws_client:aws_client(), delete_warm_pool_type(), proplists:proplist()) ->
    {ok, delete_warm_pool_answer(), tuple()} |
    {error, any()} |
    {error, delete_warm_pool_errors(), tuple()}.
delete_warm_pool(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteWarmPool">>, Input, Options).

%% @doc Describes the current Amazon EC2 Auto Scaling resource quotas for
%% your account.
%%
%% When you establish an Amazon Web Services account, the account has initial
%% quotas on the maximum
%% number of Auto Scaling groups and launch configurations that you can
%% create in a given Region.
%% For more information, see Quotas for
%% Amazon EC2 Auto Scaling:
%% https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-quotas.html
%% in the Amazon EC2 Auto Scaling User Guide.
-spec describe_account_limits(aws_client:aws_client(), #{}) ->
    {ok, describe_account_limits_answer(), tuple()} |
    {error, any()} |
    {error, describe_account_limits_errors(), tuple()}.
describe_account_limits(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_account_limits(Client, Input, []).

-spec describe_account_limits(aws_client:aws_client(), #{}, proplists:proplist()) ->
    {ok, describe_account_limits_answer(), tuple()} |
    {error, any()} |
    {error, describe_account_limits_errors(), tuple()}.
describe_account_limits(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAccountLimits">>, Input, Options).

%% @doc Describes the available adjustment types for step scaling and simple
%% scaling
%% policies.
%%
%% The following adjustment types are supported:
%%
%% `ChangeInCapacity'
%%
%% `ExactCapacity'
%%
%% `PercentChangeInCapacity'
-spec describe_adjustment_types(aws_client:aws_client(), #{}) ->
    {ok, describe_adjustment_types_answer(), tuple()} |
    {error, any()} |
    {error, describe_adjustment_types_errors(), tuple()}.
describe_adjustment_types(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_adjustment_types(Client, Input, []).

-spec describe_adjustment_types(aws_client:aws_client(), #{}, proplists:proplist()) ->
    {ok, describe_adjustment_types_answer(), tuple()} |
    {error, any()} |
    {error, describe_adjustment_types_errors(), tuple()}.
describe_adjustment_types(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAdjustmentTypes">>, Input, Options).

%% @doc Gets information about the Auto Scaling groups in the account and
%% Region.
%%
%% If you specify Auto Scaling group names, the output includes information
%% for only the
%% specified Auto Scaling groups. If you specify filters, the output includes
%% information for only
%% those Auto Scaling groups that meet the filter criteria. If you do not
%% specify group names or
%% filters, the output includes information for all Auto Scaling groups.
%%
%% This operation also returns information about instances in Auto Scaling
%% groups. To retrieve
%% information about the instances in a warm pool, you must call the
%% DescribeWarmPool:
%% https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DescribeWarmPool.html
%% API.
-spec describe_auto_scaling_groups(aws_client:aws_client(), auto_scaling_group_names_type()) ->
    {ok, auto_scaling_groups_type(), tuple()} |
    {error, any()} |
    {error, describe_auto_scaling_groups_errors(), tuple()}.
describe_auto_scaling_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_auto_scaling_groups(Client, Input, []).

-spec describe_auto_scaling_groups(aws_client:aws_client(), auto_scaling_group_names_type(), proplists:proplist()) ->
    {ok, auto_scaling_groups_type(), tuple()} |
    {error, any()} |
    {error, describe_auto_scaling_groups_errors(), tuple()}.
describe_auto_scaling_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAutoScalingGroups">>, Input, Options).

%% @doc Gets information about the Auto Scaling instances in the account and
%% Region.
-spec describe_auto_scaling_instances(aws_client:aws_client(), describe_auto_scaling_instances_type()) ->
    {ok, auto_scaling_instances_type(), tuple()} |
    {error, any()} |
    {error, describe_auto_scaling_instances_errors(), tuple()}.
describe_auto_scaling_instances(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_auto_scaling_instances(Client, Input, []).

-spec describe_auto_scaling_instances(aws_client:aws_client(), describe_auto_scaling_instances_type(), proplists:proplist()) ->
    {ok, auto_scaling_instances_type(), tuple()} |
    {error, any()} |
    {error, describe_auto_scaling_instances_errors(), tuple()}.
describe_auto_scaling_instances(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAutoScalingInstances">>, Input, Options).

%% @doc Describes the notification types that are supported by Amazon EC2
%% Auto Scaling.
-spec describe_auto_scaling_notification_types(aws_client:aws_client(), #{}) ->
    {ok, describe_auto_scaling_notification_types_answer(), tuple()} |
    {error, any()} |
    {error, describe_auto_scaling_notification_types_errors(), tuple()}.
describe_auto_scaling_notification_types(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_auto_scaling_notification_types(Client, Input, []).

-spec describe_auto_scaling_notification_types(aws_client:aws_client(), #{}, proplists:proplist()) ->
    {ok, describe_auto_scaling_notification_types_answer(), tuple()} |
    {error, any()} |
    {error, describe_auto_scaling_notification_types_errors(), tuple()}.
describe_auto_scaling_notification_types(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAutoScalingNotificationTypes">>, Input, Options).

%% @doc Gets information about the instance refreshes for the specified Auto
%% Scaling group from the
%% previous six weeks.
%%
%% This operation is part of the instance refresh
%% feature:
%% https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-instance-refresh.html
%% in Amazon EC2 Auto Scaling, which helps you update instances in your Auto
%% Scaling group
%% after you make configuration changes.
%%
%% To help you determine the status of an instance refresh, Amazon EC2 Auto
%% Scaling returns information
%% about the instance refreshes you previously initiated, including their
%% status, start
%% time, end time, the percentage of the instance refresh that is complete,
%% and the number
%% of instances remaining to update before the instance refresh is complete.
%% If a rollback
%% is initiated while an instance refresh is in progress, Amazon EC2 Auto
%% Scaling also returns information
%% about the rollback of the instance refresh.
-spec describe_instance_refreshes(aws_client:aws_client(), describe_instance_refreshes_type()) ->
    {ok, describe_instance_refreshes_answer(), tuple()} |
    {error, any()} |
    {error, describe_instance_refreshes_errors(), tuple()}.
describe_instance_refreshes(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_instance_refreshes(Client, Input, []).

-spec describe_instance_refreshes(aws_client:aws_client(), describe_instance_refreshes_type(), proplists:proplist()) ->
    {ok, describe_instance_refreshes_answer(), tuple()} |
    {error, any()} |
    {error, describe_instance_refreshes_errors(), tuple()}.
describe_instance_refreshes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeInstanceRefreshes">>, Input, Options).

%% @doc Gets information about the launch configurations in the account and
%% Region.
-spec describe_launch_configurations(aws_client:aws_client(), launch_configuration_names_type()) ->
    {ok, launch_configurations_type(), tuple()} |
    {error, any()} |
    {error, describe_launch_configurations_errors(), tuple()}.
describe_launch_configurations(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_launch_configurations(Client, Input, []).

-spec describe_launch_configurations(aws_client:aws_client(), launch_configuration_names_type(), proplists:proplist()) ->
    {ok, launch_configurations_type(), tuple()} |
    {error, any()} |
    {error, describe_launch_configurations_errors(), tuple()}.
describe_launch_configurations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeLaunchConfigurations">>, Input, Options).

%% @doc Describes the available types of lifecycle hooks.
%%
%% The following hook types are supported:
%%
%% `autoscaling:EC2_INSTANCE_LAUNCHING'
%%
%% `autoscaling:EC2_INSTANCE_TERMINATING'
-spec describe_lifecycle_hook_types(aws_client:aws_client(), #{}) ->
    {ok, describe_lifecycle_hook_types_answer(), tuple()} |
    {error, any()} |
    {error, describe_lifecycle_hook_types_errors(), tuple()}.
describe_lifecycle_hook_types(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_lifecycle_hook_types(Client, Input, []).

-spec describe_lifecycle_hook_types(aws_client:aws_client(), #{}, proplists:proplist()) ->
    {ok, describe_lifecycle_hook_types_answer(), tuple()} |
    {error, any()} |
    {error, describe_lifecycle_hook_types_errors(), tuple()}.
describe_lifecycle_hook_types(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeLifecycleHookTypes">>, Input, Options).

%% @doc Gets information about the lifecycle hooks for the specified Auto
%% Scaling group.
-spec describe_lifecycle_hooks(aws_client:aws_client(), describe_lifecycle_hooks_type()) ->
    {ok, describe_lifecycle_hooks_answer(), tuple()} |
    {error, any()} |
    {error, describe_lifecycle_hooks_errors(), tuple()}.
describe_lifecycle_hooks(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_lifecycle_hooks(Client, Input, []).

-spec describe_lifecycle_hooks(aws_client:aws_client(), describe_lifecycle_hooks_type(), proplists:proplist()) ->
    {ok, describe_lifecycle_hooks_answer(), tuple()} |
    {error, any()} |
    {error, describe_lifecycle_hooks_errors(), tuple()}.
describe_lifecycle_hooks(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeLifecycleHooks">>, Input, Options).

%% @doc
%% This API operation is superseded by DescribeTrafficSources:
%% https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DescribeTrafficSources.html,
%% which can describe multiple traffic sources types.
%%
%% We recommend using
%% `DetachTrafficSources' to simplify how you manage traffic sources.
%% However, we continue to support `DescribeLoadBalancerTargetGroups'.
%% You
%% can use both the original `DescribeLoadBalancerTargetGroups' API
%% operation and `DescribeTrafficSources' on the same Auto Scaling group.
%%
%% Gets information about the Elastic Load Balancing target groups for the
%% specified Auto Scaling group.
%%
%% To determine the attachment status of the target group, use the
%% `State'
%% element in the response. When you attach a target group to an Auto Scaling
%% group, the initial
%% `State' value is `Adding'. The state transitions to
%% `Added' after all Auto Scaling instances are registered with the
%% target group. If
%% Elastic Load Balancing health checks are enabled for the Auto Scaling
%% group, the state transitions to
%% `InService' after at least one Auto Scaling instance passes the health
%% check.
%% When the target group is in the `InService' state, Amazon EC2 Auto
%% Scaling can terminate and
%% replace any instances that are reported as unhealthy. If no registered
%% instances pass
%% the health checks, the target group doesn't enter the `InService'
%% state.
%%
%% Target groups also have an `InService' state if you attach them in the
%% CreateAutoScalingGroup:
%% https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_CreateAutoScalingGroup.html
%% API call. If your target group state is
%% `InService', but it is not working properly, check the scaling
%% activities
%% by calling DescribeScalingActivities:
%% https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DescribeScalingActivities.html
%% and take any corrective actions
%% necessary.
%%
%% For help with failed health checks, see Troubleshooting Amazon EC2 Auto
%% Scaling:
%% Health checks:
%% https://docs.aws.amazon.com/autoscaling/ec2/userguide/ts-as-healthchecks.html
%% in the Amazon EC2 Auto Scaling User Guide. For more
%% information, see Use Elastic Load Balancing to
%% distribute traffic across the instances in your Auto Scaling group:
%% https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-load-balancer.html
%% in the
%% Amazon EC2 Auto Scaling User Guide.
%%
%% You can use this operation to describe target groups that were attached by
%% using
%% AttachLoadBalancerTargetGroups:
%% https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_AttachLoadBalancerTargetGroups.html,
%% but not for target groups that
%% were attached by using AttachTrafficSources:
%% https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_AttachTrafficSources.html.
-spec describe_load_balancer_target_groups(aws_client:aws_client(), describe_load_balancer_target_groups_request()) ->
    {ok, describe_load_balancer_target_groups_response(), tuple()} |
    {error, any()} |
    {error, describe_load_balancer_target_groups_errors(), tuple()}.
describe_load_balancer_target_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_load_balancer_target_groups(Client, Input, []).

-spec describe_load_balancer_target_groups(aws_client:aws_client(), describe_load_balancer_target_groups_request(), proplists:proplist()) ->
    {ok, describe_load_balancer_target_groups_response(), tuple()} |
    {error, any()} |
    {error, describe_load_balancer_target_groups_errors(), tuple()}.
describe_load_balancer_target_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeLoadBalancerTargetGroups">>, Input, Options).

%% @doc
%% This API operation is superseded by DescribeTrafficSources:
%% https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DescribeTrafficSources.html,
%% which can describe multiple traffic sources types.
%%
%% We recommend using
%% `DescribeTrafficSources' to simplify how you manage traffic sources.
%% However, we continue to support `DescribeLoadBalancers'. You can use
%% both
%% the original `DescribeLoadBalancers' API operation and
%% `DescribeTrafficSources' on the same Auto Scaling group.
%%
%% Gets information about the load balancers for the specified Auto Scaling
%% group.
%%
%% This operation describes only Classic Load Balancers. If you have
%% Application Load Balancers, Network Load Balancers, or Gateway Load
%% Balancers, use the
%% DescribeLoadBalancerTargetGroups:
%% https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DescribeLoadBalancerTargetGroups.html
%% API instead.
%%
%% To determine the attachment status of the load balancer, use the
%% `State'
%% element in the response. When you attach a load balancer to an Auto
%% Scaling group, the initial
%% `State' value is `Adding'. The state transitions to
%% `Added' after all Auto Scaling instances are registered with the load
%% balancer.
%% If Elastic Load Balancing health checks are enabled for the Auto Scaling
%% group, the state transitions to
%% `InService' after at least one Auto Scaling instance passes the health
%% check.
%% When the load balancer is in the `InService' state, Amazon EC2 Auto
%% Scaling can terminate
%% and replace any instances that are reported as unhealthy. If no registered
%% instances
%% pass the health checks, the load balancer doesn't enter the
%% `InService'
%% state.
%%
%% Load balancers also have an `InService' state if you attach them in
%% the
%% CreateAutoScalingGroup:
%% https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_CreateAutoScalingGroup.html
%% API call. If your load balancer state is
%% `InService', but it is not working properly, check the scaling
%% activities
%% by calling DescribeScalingActivities:
%% https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DescribeScalingActivities.html
%% and take any corrective actions
%% necessary.
%%
%% For help with failed health checks, see Troubleshooting Amazon EC2 Auto
%% Scaling:
%% Health checks:
%% https://docs.aws.amazon.com/autoscaling/ec2/userguide/ts-as-healthchecks.html
%% in the Amazon EC2 Auto Scaling User Guide. For more
%% information, see Use Elastic Load Balancing to
%% distribute traffic across the instances in your Auto Scaling group:
%% https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-load-balancer.html
%% in the
%% Amazon EC2 Auto Scaling User Guide.
-spec describe_load_balancers(aws_client:aws_client(), describe_load_balancers_request()) ->
    {ok, describe_load_balancers_response(), tuple()} |
    {error, any()} |
    {error, describe_load_balancers_errors(), tuple()}.
describe_load_balancers(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_load_balancers(Client, Input, []).

-spec describe_load_balancers(aws_client:aws_client(), describe_load_balancers_request(), proplists:proplist()) ->
    {ok, describe_load_balancers_response(), tuple()} |
    {error, any()} |
    {error, describe_load_balancers_errors(), tuple()}.
describe_load_balancers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeLoadBalancers">>, Input, Options).

%% @doc Describes the available CloudWatch metrics for Amazon EC2 Auto
%% Scaling.
-spec describe_metric_collection_types(aws_client:aws_client(), #{}) ->
    {ok, describe_metric_collection_types_answer(), tuple()} |
    {error, any()} |
    {error, describe_metric_collection_types_errors(), tuple()}.
describe_metric_collection_types(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_metric_collection_types(Client, Input, []).

-spec describe_metric_collection_types(aws_client:aws_client(), #{}, proplists:proplist()) ->
    {ok, describe_metric_collection_types_answer(), tuple()} |
    {error, any()} |
    {error, describe_metric_collection_types_errors(), tuple()}.
describe_metric_collection_types(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeMetricCollectionTypes">>, Input, Options).

%% @doc Gets information about the Amazon SNS notifications that are
%% configured for one or more
%% Auto Scaling groups.
-spec describe_notification_configurations(aws_client:aws_client(), describe_notification_configurations_type()) ->
    {ok, describe_notification_configurations_answer(), tuple()} |
    {error, any()} |
    {error, describe_notification_configurations_errors(), tuple()}.
describe_notification_configurations(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_notification_configurations(Client, Input, []).

-spec describe_notification_configurations(aws_client:aws_client(), describe_notification_configurations_type(), proplists:proplist()) ->
    {ok, describe_notification_configurations_answer(), tuple()} |
    {error, any()} |
    {error, describe_notification_configurations_errors(), tuple()}.
describe_notification_configurations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeNotificationConfigurations">>, Input, Options).

%% @doc Gets information about the scaling policies in the account and
%% Region.
-spec describe_policies(aws_client:aws_client(), describe_policies_type()) ->
    {ok, policies_type(), tuple()} |
    {error, any()} |
    {error, describe_policies_errors(), tuple()}.
describe_policies(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_policies(Client, Input, []).

-spec describe_policies(aws_client:aws_client(), describe_policies_type(), proplists:proplist()) ->
    {ok, policies_type(), tuple()} |
    {error, any()} |
    {error, describe_policies_errors(), tuple()}.
describe_policies(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribePolicies">>, Input, Options).

%% @doc Gets information about the scaling activities in the account and
%% Region.
%%
%% When scaling events occur, you see a record of the scaling activity in the
%% scaling
%% activities. For more information, see Verify a scaling
%% activity for an Auto Scaling group:
%% https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-verify-scaling-activity.html
%% in the Amazon EC2 Auto Scaling User Guide.
%%
%% If the scaling event succeeds, the value of the `StatusCode' element
%% in the
%% response is `Successful'. If an attempt to launch instances failed,
%% the
%% `StatusCode' value is `Failed' or `Cancelled' and
%% the `StatusMessage' element in the response indicates the cause of the
%% failure. For help interpreting the `StatusMessage', see
%% Troubleshooting Amazon EC2 Auto Scaling:
%% https://docs.aws.amazon.com/autoscaling/ec2/userguide/CHAP_Troubleshooting.html
%% in the Amazon EC2 Auto Scaling User Guide.
-spec describe_scaling_activities(aws_client:aws_client(), describe_scaling_activities_type()) ->
    {ok, activities_type(), tuple()} |
    {error, any()} |
    {error, describe_scaling_activities_errors(), tuple()}.
describe_scaling_activities(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_scaling_activities(Client, Input, []).

-spec describe_scaling_activities(aws_client:aws_client(), describe_scaling_activities_type(), proplists:proplist()) ->
    {ok, activities_type(), tuple()} |
    {error, any()} |
    {error, describe_scaling_activities_errors(), tuple()}.
describe_scaling_activities(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeScalingActivities">>, Input, Options).

%% @doc Describes the scaling process types for use with the ResumeProcesses:
%% https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_ResumeProcesses.html
%% and SuspendProcesses:
%% https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_SuspendProcesses.html
%% APIs.
-spec describe_scaling_process_types(aws_client:aws_client(), #{}) ->
    {ok, processes_type(), tuple()} |
    {error, any()} |
    {error, describe_scaling_process_types_errors(), tuple()}.
describe_scaling_process_types(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_scaling_process_types(Client, Input, []).

-spec describe_scaling_process_types(aws_client:aws_client(), #{}, proplists:proplist()) ->
    {ok, processes_type(), tuple()} |
    {error, any()} |
    {error, describe_scaling_process_types_errors(), tuple()}.
describe_scaling_process_types(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeScalingProcessTypes">>, Input, Options).

%% @doc Gets information about the scheduled actions that haven't run or
%% that have not reached
%% their end time.
%%
%% To describe the scaling activities for scheduled actions that have already
%% run, call
%% the DescribeScalingActivities:
%% https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DescribeScalingActivities.html
%% API.
-spec describe_scheduled_actions(aws_client:aws_client(), describe_scheduled_actions_type()) ->
    {ok, scheduled_actions_type(), tuple()} |
    {error, any()} |
    {error, describe_scheduled_actions_errors(), tuple()}.
describe_scheduled_actions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_scheduled_actions(Client, Input, []).

-spec describe_scheduled_actions(aws_client:aws_client(), describe_scheduled_actions_type(), proplists:proplist()) ->
    {ok, scheduled_actions_type(), tuple()} |
    {error, any()} |
    {error, describe_scheduled_actions_errors(), tuple()}.
describe_scheduled_actions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeScheduledActions">>, Input, Options).

%% @doc Describes the specified tags.
%%
%% You can use filters to limit the results. For example, you can query for
%% the tags for
%% a specific Auto Scaling group. You can specify multiple values for a
%% filter. A tag must match at
%% least one of the specified values for it to be included in the results.
%%
%% You can also specify multiple filters. The result includes information for
%% a
%% particular tag only if it matches all the filters. If there's no
%% match, no special
%% message is returned.
%%
%% For more information, see Tag Auto Scaling groups and
%% instances:
%% https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-tagging.html
%% in the Amazon EC2 Auto Scaling User Guide.
-spec describe_tags(aws_client:aws_client(), describe_tags_type()) ->
    {ok, tags_type(), tuple()} |
    {error, any()} |
    {error, describe_tags_errors(), tuple()}.
describe_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_tags(Client, Input, []).

-spec describe_tags(aws_client:aws_client(), describe_tags_type(), proplists:proplist()) ->
    {ok, tags_type(), tuple()} |
    {error, any()} |
    {error, describe_tags_errors(), tuple()}.
describe_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTags">>, Input, Options).

%% @doc Describes the termination policies supported by Amazon EC2 Auto
%% Scaling.
%%
%% For more information, see Configure
%% termination policies for Amazon EC2 Auto Scaling:
%% https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-termination-policies.html
%% in the
%% Amazon EC2 Auto Scaling User Guide.
-spec describe_termination_policy_types(aws_client:aws_client(), #{}) ->
    {ok, describe_termination_policy_types_answer(), tuple()} |
    {error, any()} |
    {error, describe_termination_policy_types_errors(), tuple()}.
describe_termination_policy_types(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_termination_policy_types(Client, Input, []).

-spec describe_termination_policy_types(aws_client:aws_client(), #{}, proplists:proplist()) ->
    {ok, describe_termination_policy_types_answer(), tuple()} |
    {error, any()} |
    {error, describe_termination_policy_types_errors(), tuple()}.
describe_termination_policy_types(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTerminationPolicyTypes">>, Input, Options).

%% @doc Gets information about the traffic sources for the specified Auto
%% Scaling group.
%%
%% You can optionally provide a traffic source type. If you provide a traffic
%% source
%% type, then the results only include that traffic source type.
%%
%% If you do not provide a traffic source type, then the results include all
%% the traffic
%% sources for the specified Auto Scaling group.
-spec describe_traffic_sources(aws_client:aws_client(), describe_traffic_sources_request()) ->
    {ok, describe_traffic_sources_response(), tuple()} |
    {error, any()} |
    {error, describe_traffic_sources_errors(), tuple()}.
describe_traffic_sources(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_traffic_sources(Client, Input, []).

-spec describe_traffic_sources(aws_client:aws_client(), describe_traffic_sources_request(), proplists:proplist()) ->
    {ok, describe_traffic_sources_response(), tuple()} |
    {error, any()} |
    {error, describe_traffic_sources_errors(), tuple()}.
describe_traffic_sources(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTrafficSources">>, Input, Options).

%% @doc Gets information about a warm pool and its instances.
%%
%% For more information, see Warm pools for
%% Amazon EC2 Auto Scaling:
%% https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-warm-pools.html
%% in the Amazon EC2 Auto Scaling User Guide.
-spec describe_warm_pool(aws_client:aws_client(), describe_warm_pool_type()) ->
    {ok, describe_warm_pool_answer(), tuple()} |
    {error, any()} |
    {error, describe_warm_pool_errors(), tuple()}.
describe_warm_pool(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_warm_pool(Client, Input, []).

-spec describe_warm_pool(aws_client:aws_client(), describe_warm_pool_type(), proplists:proplist()) ->
    {ok, describe_warm_pool_answer(), tuple()} |
    {error, any()} |
    {error, describe_warm_pool_errors(), tuple()}.
describe_warm_pool(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeWarmPool">>, Input, Options).

%% @doc Removes one or more instances from the specified Auto Scaling group.
%%
%% After the instances are detached, you can manage them independent of the
%% Auto Scaling
%% group.
%%
%% If you do not specify the option to decrement the desired capacity, Amazon
%% EC2 Auto Scaling launches
%% instances to replace the ones that are detached.
%%
%% If there is a Classic Load Balancer attached to the Auto Scaling group,
%% the instances are
%% deregistered from the load balancer. If there are target groups attached
%% to the Auto Scaling
%% group, the instances are deregistered from the target groups.
%%
%% For more information, see Detach
%% or attach instances:
%% https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-detach-attach-instances.html
%% in the Amazon EC2 Auto Scaling User Guide.
-spec detach_instances(aws_client:aws_client(), detach_instances_query()) ->
    {ok, detach_instances_answer(), tuple()} |
    {error, any()} |
    {error, detach_instances_errors(), tuple()}.
detach_instances(Client, Input)
  when is_map(Client), is_map(Input) ->
    detach_instances(Client, Input, []).

-spec detach_instances(aws_client:aws_client(), detach_instances_query(), proplists:proplist()) ->
    {ok, detach_instances_answer(), tuple()} |
    {error, any()} |
    {error, detach_instances_errors(), tuple()}.
detach_instances(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DetachInstances">>, Input, Options).

%% @doc
%% This API operation is superseded by DetachTrafficSources:
%% https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DescribeTrafficSources.html,
%% which
%% can detach multiple traffic sources types.
%%
%% We recommend using
%% `DetachTrafficSources' to simplify how you manage traffic sources.
%% However, we continue to support `DetachLoadBalancerTargetGroups'. You
%% can
%% use both the original `DetachLoadBalancerTargetGroups' API operation
%% and
%% `DetachTrafficSources' on the same Auto Scaling group.
%%
%% Detaches one or more target groups from the specified Auto Scaling group.
%%
%% When you detach a target group, it enters the `Removing' state while
%% deregistering the instances in the group. When all instances are
%% deregistered, then you
%% can no longer describe the target group using the
%% DescribeLoadBalancerTargetGroups:
%% https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DescribeLoadBalancerTargetGroups.html
%% API call. The instances remain running.
%%
%% You can use this operation to detach target groups that were attached by
%% using
%% AttachLoadBalancerTargetGroups:
%% https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_AttachLoadBalancerTargetGroups.html,
%% but not for target groups that
%% were attached by using AttachTrafficSources:
%% https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_AttachTrafficSources.html.
-spec detach_load_balancer_target_groups(aws_client:aws_client(), detach_load_balancer_target_groups_type()) ->
    {ok, detach_load_balancer_target_groups_result_type(), tuple()} |
    {error, any()} |
    {error, detach_load_balancer_target_groups_errors(), tuple()}.
detach_load_balancer_target_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    detach_load_balancer_target_groups(Client, Input, []).

-spec detach_load_balancer_target_groups(aws_client:aws_client(), detach_load_balancer_target_groups_type(), proplists:proplist()) ->
    {ok, detach_load_balancer_target_groups_result_type(), tuple()} |
    {error, any()} |
    {error, detach_load_balancer_target_groups_errors(), tuple()}.
detach_load_balancer_target_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DetachLoadBalancerTargetGroups">>, Input, Options).

%% @doc
%% This API operation is superseded by DetachTrafficSources:
%% https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DetachTrafficSources.html,
%% which
%% can detach multiple traffic sources types.
%%
%% We recommend using
%% `DetachTrafficSources' to simplify how you manage traffic sources.
%% However, we continue to support `DetachLoadBalancers'. You can use
%% both
%% the original `DetachLoadBalancers' API operation and
%% `DetachTrafficSources' on the same Auto Scaling group.
%%
%% Detaches one or more Classic Load Balancers from the specified Auto
%% Scaling group.
%%
%% This operation detaches only Classic Load Balancers. If you have
%% Application Load Balancers, Network Load Balancers, or
%% Gateway Load Balancers, use the DetachLoadBalancerTargetGroups:
%% https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DetachLoadBalancerTargetGroups.html
%% API instead.
%%
%% When you detach a load balancer, it enters the `Removing' state while
%% deregistering the instances in the group. When all instances are
%% deregistered, then you
%% can no longer describe the load balancer using the DescribeLoadBalancers:
%% https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DescribeLoadBalancers.html
%% API call. The instances remain running.
-spec detach_load_balancers(aws_client:aws_client(), detach_load_balancers_type()) ->
    {ok, detach_load_balancers_result_type(), tuple()} |
    {error, any()} |
    {error, detach_load_balancers_errors(), tuple()}.
detach_load_balancers(Client, Input)
  when is_map(Client), is_map(Input) ->
    detach_load_balancers(Client, Input, []).

-spec detach_load_balancers(aws_client:aws_client(), detach_load_balancers_type(), proplists:proplist()) ->
    {ok, detach_load_balancers_result_type(), tuple()} |
    {error, any()} |
    {error, detach_load_balancers_errors(), tuple()}.
detach_load_balancers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DetachLoadBalancers">>, Input, Options).

%% @doc Detaches one or more traffic sources from the specified Auto Scaling
%% group.
%%
%% When you detach a traffic source, it enters the `Removing' state while
%% deregistering the instances in the group. When all instances are
%% deregistered, then you
%% can no longer describe the traffic source using the
%% DescribeTrafficSources:
%% https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DescribeTrafficSources.html
%% API call. The instances continue to run.
-spec detach_traffic_sources(aws_client:aws_client(), detach_traffic_sources_type()) ->
    {ok, detach_traffic_sources_result_type(), tuple()} |
    {error, any()} |
    {error, detach_traffic_sources_errors(), tuple()}.
detach_traffic_sources(Client, Input)
  when is_map(Client), is_map(Input) ->
    detach_traffic_sources(Client, Input, []).

-spec detach_traffic_sources(aws_client:aws_client(), detach_traffic_sources_type(), proplists:proplist()) ->
    {ok, detach_traffic_sources_result_type(), tuple()} |
    {error, any()} |
    {error, detach_traffic_sources_errors(), tuple()}.
detach_traffic_sources(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DetachTrafficSources">>, Input, Options).

%% @doc Disables group metrics collection for the specified Auto Scaling
%% group.
-spec disable_metrics_collection(aws_client:aws_client(), disable_metrics_collection_query()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, disable_metrics_collection_errors(), tuple()}.
disable_metrics_collection(Client, Input)
  when is_map(Client), is_map(Input) ->
    disable_metrics_collection(Client, Input, []).

-spec disable_metrics_collection(aws_client:aws_client(), disable_metrics_collection_query(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, disable_metrics_collection_errors(), tuple()}.
disable_metrics_collection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisableMetricsCollection">>, Input, Options).

%% @doc Enables group metrics collection for the specified Auto Scaling
%% group.
%%
%% You can use these metrics to track changes in an Auto Scaling group and to
%% set alarms on
%% threshold values. You can view group metrics using the Amazon EC2 Auto
%% Scaling console or the CloudWatch
%% console. For more information, see Monitor
%% CloudWatch metrics for your Auto Scaling groups and instances:
%% https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-cloudwatch-monitoring.html
%% in the
%% Amazon EC2 Auto Scaling User Guide.
-spec enable_metrics_collection(aws_client:aws_client(), enable_metrics_collection_query()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, enable_metrics_collection_errors(), tuple()}.
enable_metrics_collection(Client, Input)
  when is_map(Client), is_map(Input) ->
    enable_metrics_collection(Client, Input, []).

-spec enable_metrics_collection(aws_client:aws_client(), enable_metrics_collection_query(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, enable_metrics_collection_errors(), tuple()}.
enable_metrics_collection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"EnableMetricsCollection">>, Input, Options).

%% @doc Moves the specified instances into the standby state.
%%
%% If you choose to decrement the desired capacity of the Auto Scaling group,
%% the instances can
%% enter standby as long as the desired capacity of the Auto Scaling group
%% after the instances are
%% placed into standby is equal to or greater than the minimum capacity of
%% the
%% group.
%%
%% If you choose not to decrement the desired capacity of the Auto Scaling
%% group, the Auto Scaling group
%% launches new instances to replace the instances on standby.
%%
%% For more information, see Temporarily removing
%% instances from your Auto Scaling group:
%% https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-enter-exit-standby.html
%% in the
%% Amazon EC2 Auto Scaling User Guide.
-spec enter_standby(aws_client:aws_client(), enter_standby_query()) ->
    {ok, enter_standby_answer(), tuple()} |
    {error, any()} |
    {error, enter_standby_errors(), tuple()}.
enter_standby(Client, Input)
  when is_map(Client), is_map(Input) ->
    enter_standby(Client, Input, []).

-spec enter_standby(aws_client:aws_client(), enter_standby_query(), proplists:proplist()) ->
    {ok, enter_standby_answer(), tuple()} |
    {error, any()} |
    {error, enter_standby_errors(), tuple()}.
enter_standby(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"EnterStandby">>, Input, Options).

%% @doc Executes the specified policy.
%%
%% This can be useful for testing the design of your
%% scaling policy.
-spec execute_policy(aws_client:aws_client(), execute_policy_type()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, execute_policy_errors(), tuple()}.
execute_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    execute_policy(Client, Input, []).

-spec execute_policy(aws_client:aws_client(), execute_policy_type(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, execute_policy_errors(), tuple()}.
execute_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ExecutePolicy">>, Input, Options).

%% @doc Moves the specified instances out of the standby state.
%%
%% After you put the instances back in service, the desired capacity is
%% incremented.
%%
%% For more information, see Temporarily removing
%% instances from your Auto Scaling group:
%% https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-enter-exit-standby.html
%% in the
%% Amazon EC2 Auto Scaling User Guide.
-spec exit_standby(aws_client:aws_client(), exit_standby_query()) ->
    {ok, exit_standby_answer(), tuple()} |
    {error, any()} |
    {error, exit_standby_errors(), tuple()}.
exit_standby(Client, Input)
  when is_map(Client), is_map(Input) ->
    exit_standby(Client, Input, []).

-spec exit_standby(aws_client:aws_client(), exit_standby_query(), proplists:proplist()) ->
    {ok, exit_standby_answer(), tuple()} |
    {error, any()} |
    {error, exit_standby_errors(), tuple()}.
exit_standby(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ExitStandby">>, Input, Options).

%% @doc Retrieves the forecast data for a predictive scaling policy.
%%
%% Load forecasts are predictions of the hourly load values using historical
%% load data
%% from CloudWatch and an analysis of historical trends. Capacity forecasts
%% are represented as
%% predicted values for the minimum capacity that is needed on an hourly
%% basis, based on
%% the hourly load forecast.
%%
%% A minimum of 24 hours of data is required to create the initial forecasts.
%% However,
%% having a full 14 days of historical data results in more accurate
%% forecasts.
%%
%% For more information, see Predictive
%% scaling for Amazon EC2 Auto Scaling:
%% https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-predictive-scaling.html
%% in the Amazon EC2 Auto Scaling User Guide.
-spec get_predictive_scaling_forecast(aws_client:aws_client(), get_predictive_scaling_forecast_type()) ->
    {ok, get_predictive_scaling_forecast_answer(), tuple()} |
    {error, any()} |
    {error, get_predictive_scaling_forecast_errors(), tuple()}.
get_predictive_scaling_forecast(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_predictive_scaling_forecast(Client, Input, []).

-spec get_predictive_scaling_forecast(aws_client:aws_client(), get_predictive_scaling_forecast_type(), proplists:proplist()) ->
    {ok, get_predictive_scaling_forecast_answer(), tuple()} |
    {error, any()} |
    {error, get_predictive_scaling_forecast_errors(), tuple()}.
get_predictive_scaling_forecast(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetPredictiveScalingForecast">>, Input, Options).

%% @doc Creates or updates a lifecycle hook for the specified Auto Scaling
%% group.
%%
%% Lifecycle hooks let you create solutions that are aware of events in the
%% Auto Scaling instance
%% lifecycle, and then perform a custom action on instances when the
%% corresponding
%% lifecycle event occurs.
%%
%% This step is a part of the procedure for adding a lifecycle hook to an
%% Auto Scaling
%% group:
%%
%% (Optional) Create a launch template or launch configuration with a user
%% data
%% script that runs while an instance is in a wait state due to a lifecycle
%% hook.
%%
%% (Optional) Create a Lambda function and a rule that allows Amazon
%% EventBridge to invoke
%% your Lambda function when an instance is put into a wait state due to a
%% lifecycle hook.
%%
%% (Optional) Create a notification target and an IAM role. The target can be
%% either an Amazon SQS queue or an Amazon SNS topic. The role allows Amazon
%% EC2 Auto Scaling to publish
%% lifecycle notifications to the target.
%%
%% Create the lifecycle hook. Specify whether the hook is
%% used when the instances launch or terminate.
%%
%% If you need more time, record the lifecycle action heartbeat to keep the
%% instance in a wait state using the RecordLifecycleActionHeartbeat:
%% https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_RecordLifecycleActionHeartbeat.html
%% API call.
%%
%% If you finish before the timeout period ends, send a callback by using the
%% CompleteLifecycleAction:
%% https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_CompleteLifecycleAction.html
%% API call.
%%
%% For more information, see Amazon EC2 Auto Scaling lifecycle
%% hooks:
%% https://docs.aws.amazon.com/autoscaling/ec2/userguide/lifecycle-hooks.html
%% in the Amazon EC2 Auto Scaling User Guide.
%%
%% If you exceed your maximum limit of lifecycle hooks, which by default is
%% 50 per Auto Scaling
%% group, the call fails.
%%
%% You can view the lifecycle hooks for an Auto Scaling group using the
%% DescribeLifecycleHooks:
%% https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DescribeLifecycleHooks.html
%% API call. If you are no longer using a lifecycle
%% hook, you can delete it by calling the DeleteLifecycleHook:
%% https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DeleteLifecycleHook.html
%% API.
-spec put_lifecycle_hook(aws_client:aws_client(), put_lifecycle_hook_type()) ->
    {ok, put_lifecycle_hook_answer(), tuple()} |
    {error, any()} |
    {error, put_lifecycle_hook_errors(), tuple()}.
put_lifecycle_hook(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_lifecycle_hook(Client, Input, []).

-spec put_lifecycle_hook(aws_client:aws_client(), put_lifecycle_hook_type(), proplists:proplist()) ->
    {ok, put_lifecycle_hook_answer(), tuple()} |
    {error, any()} |
    {error, put_lifecycle_hook_errors(), tuple()}.
put_lifecycle_hook(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutLifecycleHook">>, Input, Options).

%% @doc Configures an Auto Scaling group to send notifications when specified
%% events take place.
%%
%% Subscribers to the specified topic can have messages delivered to an
%% endpoint such as a
%% web server or an email address.
%%
%% This configuration overwrites any existing configuration.
%%
%% For more information, see Amazon SNS
%% notification options for Amazon EC2 Auto Scaling:
%% https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-sns-notifications.html
%% in the
%% Amazon EC2 Auto Scaling User Guide.
%%
%% If you exceed your maximum limit of SNS topics, which is 10 per Auto
%% Scaling group, the call
%% fails.
-spec put_notification_configuration(aws_client:aws_client(), put_notification_configuration_type()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_notification_configuration_errors(), tuple()}.
put_notification_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_notification_configuration(Client, Input, []).

-spec put_notification_configuration(aws_client:aws_client(), put_notification_configuration_type(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_notification_configuration_errors(), tuple()}.
put_notification_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutNotificationConfiguration">>, Input, Options).

%% @doc Creates or updates a scaling policy for an Auto Scaling group.
%%
%% Scaling policies are used to
%% scale an Auto Scaling group based on configurable metrics. If no policies
%% are defined, the
%% dynamic scaling and predictive scaling features are not used.
%%
%% For more information about using dynamic scaling, see Target tracking
%% scaling policies:
%% https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-scaling-target-tracking.html
%% and Step and simple scaling
%% policies:
%% https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-scaling-simple-step.html
%% in the Amazon EC2 Auto Scaling User Guide.
%%
%% For more information about using predictive scaling, see Predictive
%% scaling for Amazon EC2 Auto Scaling:
%% https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-predictive-scaling.html
%% in the Amazon EC2 Auto Scaling User Guide.
%%
%% You can view the scaling policies for an Auto Scaling group using the
%% DescribePolicies:
%% https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DescribePolicies.html
%% API call. If you are no longer using a scaling policy,
%% you can delete it by calling the DeletePolicy:
%% https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DeletePolicy.html
%% API.
-spec put_scaling_policy(aws_client:aws_client(), put_scaling_policy_type()) ->
    {ok, policy_arn_type(), tuple()} |
    {error, any()} |
    {error, put_scaling_policy_errors(), tuple()}.
put_scaling_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_scaling_policy(Client, Input, []).

-spec put_scaling_policy(aws_client:aws_client(), put_scaling_policy_type(), proplists:proplist()) ->
    {ok, policy_arn_type(), tuple()} |
    {error, any()} |
    {error, put_scaling_policy_errors(), tuple()}.
put_scaling_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutScalingPolicy">>, Input, Options).

%% @doc Creates or updates a scheduled scaling action for an Auto Scaling
%% group.
%%
%% For more information, see Scheduled scaling:
%% https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-scheduled-scaling.html
%% in the
%% Amazon EC2 Auto Scaling User Guide.
%%
%% You can view the scheduled actions for an Auto Scaling group using the
%% DescribeScheduledActions:
%% https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DescribeScheduledActions.html
%% API call. If you are no longer using a scheduled action, you can delete it
%% by calling the
%% DeleteScheduledAction:
%% https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DeleteScheduledAction.html
%% API.
%%
%% If you try to schedule your action in the past, Amazon EC2 Auto Scaling
%% returns an error
%% message.
-spec put_scheduled_update_group_action(aws_client:aws_client(), put_scheduled_update_group_action_type()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_scheduled_update_group_action_errors(), tuple()}.
put_scheduled_update_group_action(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_scheduled_update_group_action(Client, Input, []).

-spec put_scheduled_update_group_action(aws_client:aws_client(), put_scheduled_update_group_action_type(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_scheduled_update_group_action_errors(), tuple()}.
put_scheduled_update_group_action(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutScheduledUpdateGroupAction">>, Input, Options).

%% @doc Creates or updates a warm pool for the specified Auto Scaling group.
%%
%% A warm pool is a pool of
%% pre-initialized EC2 instances that sits alongside the Auto Scaling group.
%% Whenever your
%% application needs to scale out, the Auto Scaling group can draw on the
%% warm pool to meet its new
%% desired capacity.
%%
%% This operation must be called from the Region in which the Auto Scaling
%% group was
%% created.
%%
%% You can view the instances in the warm pool using the DescribeWarmPool:
%% https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DescribeWarmPool.html
%% API call.
%% If you are no longer using a warm pool, you can delete it by calling the
%% DeleteWarmPool:
%% https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DeleteWarmPool.html
%% API.
%%
%% For more information, see Warm pools for
%% Amazon EC2 Auto Scaling:
%% https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-warm-pools.html
%% in the Amazon EC2 Auto Scaling User Guide.
-spec put_warm_pool(aws_client:aws_client(), put_warm_pool_type()) ->
    {ok, put_warm_pool_answer(), tuple()} |
    {error, any()} |
    {error, put_warm_pool_errors(), tuple()}.
put_warm_pool(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_warm_pool(Client, Input, []).

-spec put_warm_pool(aws_client:aws_client(), put_warm_pool_type(), proplists:proplist()) ->
    {ok, put_warm_pool_answer(), tuple()} |
    {error, any()} |
    {error, put_warm_pool_errors(), tuple()}.
put_warm_pool(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutWarmPool">>, Input, Options).

%% @doc Records a heartbeat for the lifecycle action associated with the
%% specified token or
%% instance.
%%
%% This extends the timeout by the length of time defined using the
%% PutLifecycleHook:
%% https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_PutLifecycleHook.html
%% API call.
%%
%% This step is a part of the procedure for adding a lifecycle hook to an
%% Auto Scaling
%% group:
%%
%% (Optional) Create a launch template or launch configuration with a user
%% data
%% script that runs while an instance is in a wait state due to a lifecycle
%% hook.
%%
%% (Optional) Create a Lambda function and a rule that allows Amazon
%% EventBridge to invoke
%% your Lambda function when an instance is put into a wait state due to a
%% lifecycle hook.
%%
%% (Optional) Create a notification target and an IAM role. The target can be
%% either an Amazon SQS queue or an Amazon SNS topic. The role allows Amazon
%% EC2 Auto Scaling to publish
%% lifecycle notifications to the target.
%%
%% Create the lifecycle hook. Specify whether the hook is used when the
%% instances
%% launch or terminate.
%%
%% If you need more time, record the lifecycle action
%% heartbeat to keep the instance in a wait state.
%%
%% If you finish before the timeout period ends, send a callback by using the
%% CompleteLifecycleAction:
%% https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_CompleteLifecycleAction.html
%% API call.
%%
%% For more information, see Amazon EC2 Auto Scaling lifecycle
%% hooks:
%% https://docs.aws.amazon.com/autoscaling/ec2/userguide/lifecycle-hooks.html
%% in the Amazon EC2 Auto Scaling User Guide.
-spec record_lifecycle_action_heartbeat(aws_client:aws_client(), record_lifecycle_action_heartbeat_type()) ->
    {ok, record_lifecycle_action_heartbeat_answer(), tuple()} |
    {error, any()} |
    {error, record_lifecycle_action_heartbeat_errors(), tuple()}.
record_lifecycle_action_heartbeat(Client, Input)
  when is_map(Client), is_map(Input) ->
    record_lifecycle_action_heartbeat(Client, Input, []).

-spec record_lifecycle_action_heartbeat(aws_client:aws_client(), record_lifecycle_action_heartbeat_type(), proplists:proplist()) ->
    {ok, record_lifecycle_action_heartbeat_answer(), tuple()} |
    {error, any()} |
    {error, record_lifecycle_action_heartbeat_errors(), tuple()}.
record_lifecycle_action_heartbeat(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RecordLifecycleActionHeartbeat">>, Input, Options).

%% @doc Resumes the specified suspended auto scaling processes, or all
%% suspended process, for
%% the specified Auto Scaling group.
%%
%% For more information, see Suspend and resume
%% Amazon EC2 Auto Scaling processes:
%% https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-suspend-resume-processes.html
%% in the Amazon EC2 Auto Scaling User Guide.
-spec resume_processes(aws_client:aws_client(), scaling_process_query()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, resume_processes_errors(), tuple()}.
resume_processes(Client, Input)
  when is_map(Client), is_map(Input) ->
    resume_processes(Client, Input, []).

-spec resume_processes(aws_client:aws_client(), scaling_process_query(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, resume_processes_errors(), tuple()}.
resume_processes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ResumeProcesses">>, Input, Options).

%% @doc Cancels an instance refresh that is in progress and rolls back any
%% changes that it
%% made.
%%
%% Amazon EC2 Auto Scaling replaces any instances that were replaced during
%% the instance refresh.
%% This restores your Auto Scaling group to the configuration that it was
%% using before the start of
%% the instance refresh.
%%
%% This operation is part of the instance refresh
%% feature:
%% https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-instance-refresh.html
%% in Amazon EC2 Auto Scaling, which helps you update instances in your Auto
%% Scaling group
%% after you make configuration changes.
%%
%% A rollback is not supported in the following situations:
%%
%% There is no desired configuration specified for the instance refresh.
%%
%% The Auto Scaling group has a launch template that uses an Amazon Web
%% Services Systems Manager parameter instead
%% of an AMI ID for the `ImageId' property.
%%
%% The Auto Scaling group uses the launch template's `$Latest' or
%% `$Default' version.
%%
%% When you receive a successful response from this operation, Amazon EC2
%% Auto Scaling immediately
%% begins replacing instances. You can check the status of this operation
%% through the
%% DescribeInstanceRefreshes:
%% https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DescribeInstanceRefreshes.html
%% API operation.
-spec rollback_instance_refresh(aws_client:aws_client(), rollback_instance_refresh_type()) ->
    {ok, rollback_instance_refresh_answer(), tuple()} |
    {error, any()} |
    {error, rollback_instance_refresh_errors(), tuple()}.
rollback_instance_refresh(Client, Input)
  when is_map(Client), is_map(Input) ->
    rollback_instance_refresh(Client, Input, []).

-spec rollback_instance_refresh(aws_client:aws_client(), rollback_instance_refresh_type(), proplists:proplist()) ->
    {ok, rollback_instance_refresh_answer(), tuple()} |
    {error, any()} |
    {error, rollback_instance_refresh_errors(), tuple()}.
rollback_instance_refresh(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RollbackInstanceRefresh">>, Input, Options).

%% @doc Sets the size of the specified Auto Scaling group.
%%
%% If a scale-in activity occurs as a result of a new `DesiredCapacity'
%% value
%% that is lower than the current size of the group, the Auto Scaling group
%% uses its termination
%% policy to determine which instances to terminate.
%%
%% For more information, see Manual
%% scaling:
%% https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-scaling-manually.html
%% in the Amazon EC2 Auto Scaling User Guide.
-spec set_desired_capacity(aws_client:aws_client(), set_desired_capacity_type()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, set_desired_capacity_errors(), tuple()}.
set_desired_capacity(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_desired_capacity(Client, Input, []).

-spec set_desired_capacity(aws_client:aws_client(), set_desired_capacity_type(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, set_desired_capacity_errors(), tuple()}.
set_desired_capacity(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetDesiredCapacity">>, Input, Options).

%% @doc Sets the health status of the specified instance.
%%
%% For more information, see Set up a custom
%% health check for your Auto Scaling group:
%% https://docs.aws.amazon.com/autoscaling/ec2/userguide/set-up-a-custom-health-check.html
%% in the
%% Amazon EC2 Auto Scaling User Guide.
-spec set_instance_health(aws_client:aws_client(), set_instance_health_query()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, set_instance_health_errors(), tuple()}.
set_instance_health(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_instance_health(Client, Input, []).

-spec set_instance_health(aws_client:aws_client(), set_instance_health_query(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, set_instance_health_errors(), tuple()}.
set_instance_health(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetInstanceHealth">>, Input, Options).

%% @doc Updates the instance protection settings of the specified instances.
%%
%% This operation
%% cannot be called on instances in a warm pool.
%%
%% For more information, see Use
%% instance scale-in protection:
%% https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-instance-protection.html
%% in the
%% Amazon EC2 Auto Scaling User Guide.
%%
%% If you exceed your maximum limit of instance IDs, which is 50 per Auto
%% Scaling group, the call
%% fails.
-spec set_instance_protection(aws_client:aws_client(), set_instance_protection_query()) ->
    {ok, set_instance_protection_answer(), tuple()} |
    {error, any()} |
    {error, set_instance_protection_errors(), tuple()}.
set_instance_protection(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_instance_protection(Client, Input, []).

-spec set_instance_protection(aws_client:aws_client(), set_instance_protection_query(), proplists:proplist()) ->
    {ok, set_instance_protection_answer(), tuple()} |
    {error, any()} |
    {error, set_instance_protection_errors(), tuple()}.
set_instance_protection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetInstanceProtection">>, Input, Options).

%% @doc Starts an instance refresh.
%%
%% This operation is part of the instance refresh
%% feature:
%% https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-instance-refresh.html
%% in Amazon EC2 Auto Scaling, which helps you update instances in your Auto
%% Scaling group.
%% This feature is helpful, for example, when you have a new AMI or a new
%% user data script.
%% You just need to create a new launch template that specifies the new AMI
%% or user data
%% script. Then start an instance refresh to immediately begin the process of
%% updating
%% instances in the group.
%%
%% If successful, the request's response contains a unique ID that you
%% can use to track
%% the progress of the instance refresh. To query its status, call the
%% DescribeInstanceRefreshes:
%% https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DescribeInstanceRefreshes.html
%% API.
%% To describe the instance refreshes that
%% have already run, call the DescribeInstanceRefreshes:
%% https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DescribeInstanceRefreshes.html
%% API. To cancel an
%% instance refresh that is in progress, use the CancelInstanceRefresh:
%% https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_CancelInstanceRefresh.html
%% API.
%%
%% An instance refresh might fail for several reasons, such as EC2 launch
%% failures,
%% misconfigured health checks, or not ignoring or allowing the termination
%% of instances
%% that are in `Standby' state or protected from scale in. You can
%% monitor for
%% failed EC2 launches using the scaling activities. To find the scaling
%% activities, call
%% the DescribeScalingActivities:
%% https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DescribeScalingActivities.html
%% API.
%%
%% If you enable auto rollback, your Auto Scaling group will be rolled back
%% automatically when
%% the instance refresh fails. You can enable this feature before starting an
%% instance
%% refresh by specifying the `AutoRollback' property in the instance
%% refresh
%% preferences. Otherwise, to roll back an instance refresh before it
%% finishes, use the
%% RollbackInstanceRefresh:
%% https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_RollbackInstanceRefresh.html
%% API.
-spec start_instance_refresh(aws_client:aws_client(), start_instance_refresh_type()) ->
    {ok, start_instance_refresh_answer(), tuple()} |
    {error, any()} |
    {error, start_instance_refresh_errors(), tuple()}.
start_instance_refresh(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_instance_refresh(Client, Input, []).

-spec start_instance_refresh(aws_client:aws_client(), start_instance_refresh_type(), proplists:proplist()) ->
    {ok, start_instance_refresh_answer(), tuple()} |
    {error, any()} |
    {error, start_instance_refresh_errors(), tuple()}.
start_instance_refresh(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartInstanceRefresh">>, Input, Options).

%% @doc Suspends the specified auto scaling processes, or all processes, for
%% the specified
%% Auto Scaling group.
%%
%% If you suspend either the `Launch' or `Terminate' process types,
%% it can prevent other process types from functioning properly. For more
%% information, see
%% Suspend and resume
%% Amazon EC2 Auto Scaling processes:
%% https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-suspend-resume-processes.html
%% in the Amazon EC2 Auto Scaling User Guide.
%%
%% To resume processes that have been suspended, call the ResumeProcesses:
%% https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_ResumeProcesses.html
%% API.
-spec suspend_processes(aws_client:aws_client(), scaling_process_query()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, suspend_processes_errors(), tuple()}.
suspend_processes(Client, Input)
  when is_map(Client), is_map(Input) ->
    suspend_processes(Client, Input, []).

-spec suspend_processes(aws_client:aws_client(), scaling_process_query(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, suspend_processes_errors(), tuple()}.
suspend_processes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SuspendProcesses">>, Input, Options).

%% @doc Terminates the specified instance and optionally adjusts the desired
%% group size.
%%
%% This
%% operation cannot be called on instances in a warm pool.
%%
%% This call simply makes a termination request. The instance is not
%% terminated
%% immediately. When an instance is terminated, the instance status changes
%% to
%% `terminated'. You can't connect to or start an instance after
%% you've
%% terminated it.
%%
%% If you do not specify the option to decrement the desired capacity, Amazon
%% EC2 Auto Scaling launches
%% instances to replace the ones that are terminated.
%%
%% By default, Amazon EC2 Auto Scaling balances instances across all
%% Availability Zones. If you
%% decrement the desired capacity, your Auto Scaling group can become
%% unbalanced between
%% Availability Zones. Amazon EC2 Auto Scaling tries to rebalance the group,
%% and rebalancing might
%% terminate instances in other zones. For more information, see Manual
%% scaling:
%% https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-scaling-manually.html
%% in the Amazon EC2 Auto Scaling User Guide.
-spec terminate_instance_in_auto_scaling_group(aws_client:aws_client(), terminate_instance_in_auto_scaling_group_type()) ->
    {ok, activity_type(), tuple()} |
    {error, any()} |
    {error, terminate_instance_in_auto_scaling_group_errors(), tuple()}.
terminate_instance_in_auto_scaling_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    terminate_instance_in_auto_scaling_group(Client, Input, []).

-spec terminate_instance_in_auto_scaling_group(aws_client:aws_client(), terminate_instance_in_auto_scaling_group_type(), proplists:proplist()) ->
    {ok, activity_type(), tuple()} |
    {error, any()} |
    {error, terminate_instance_in_auto_scaling_group_errors(), tuple()}.
terminate_instance_in_auto_scaling_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TerminateInstanceInAutoScalingGroup">>, Input, Options).

%% @doc
%% We strongly recommend that all Auto Scaling groups use launch templates to
%% ensure full functionality for Amazon EC2 Auto Scaling and Amazon EC2.
%%
%% Updates the configuration for the specified Auto Scaling group.
%%
%% To update an Auto Scaling group, specify the name of the group and the
%% property that you want
%% to change. Any properties that you don't specify are not changed by
%% this update request.
%% The new settings take effect on any scaling activities after this call
%% returns.
%%
%% If you associate a new launch configuration or template with an Auto
%% Scaling group, all new
%% instances will get the updated configuration. Existing instances continue
%% to run with
%% the configuration that they were originally launched with. When you update
%% a group to
%% specify a mixed instances policy instead of a launch configuration or
%% template, existing
%% instances may be replaced to match the new purchasing options that you
%% specified in the
%% policy. For example, if the group currently has 100% On-Demand capacity
%% and the policy
%% specifies 50% Spot capacity, this means that half of your instances will
%% be gradually
%% terminated and relaunched as Spot Instances. When replacing instances,
%% Amazon EC2 Auto Scaling launches
%% new instances before terminating the old ones, so that updating your group
%% does not
%% compromise the performance or availability of your application.
%%
%% Note the following about changing `DesiredCapacity', `MaxSize',
%% or `MinSize':
%%
%% If a scale-in activity occurs as a result of a new
%% `DesiredCapacity' value that is lower than the current size of
%% the group, the Auto Scaling group uses its termination policy to determine
%% which
%% instances to terminate.
%%
%% If you specify a new value for `MinSize' without specifying a value
%% for `DesiredCapacity', and the new `MinSize' is larger
%% than the current size of the group, this sets the group's
%% `DesiredCapacity' to the new `MinSize' value.
%%
%% If you specify a new value for `MaxSize' without specifying a value
%% for `DesiredCapacity', and the new `MaxSize' is smaller
%% than the current size of the group, this sets the group's
%% `DesiredCapacity' to the new `MaxSize' value.
%%
%% To see which properties have been set, call the DescribeAutoScalingGroups:
%% https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DescribeAutoScalingGroups.html
%% API.
%% To view the scaling policies for an Auto Scaling
%% group, call the DescribePolicies:
%% https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DescribePolicies.html
%% API. If the group has scaling
%% policies, you can update them by calling the PutScalingPolicy:
%% https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_PutScalingPolicy.html
%% API.
-spec update_auto_scaling_group(aws_client:aws_client(), update_auto_scaling_group_type()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_auto_scaling_group_errors(), tuple()}.
update_auto_scaling_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_auto_scaling_group(Client, Input, []).

-spec update_auto_scaling_group(aws_client:aws_client(), update_auto_scaling_group_type(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_auto_scaling_group_errors(), tuple()}.
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
request(Client, Action, Input, Options) ->
    RequestFun = fun() -> do_request(Client, Action, Input, Options) end,
    aws_request:request(RequestFun, Options).

do_request(Client, Action, Input0, Options) ->
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
    Proto = aws_client:proto(Client),
    Port = aws_client:port(Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
