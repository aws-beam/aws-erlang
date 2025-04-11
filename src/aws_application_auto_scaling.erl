%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc With Application Auto Scaling, you can configure automatic scaling
%% for the following
%% resources:
%%
%% Amazon AppStream 2.0 fleets
%%
%% Amazon Aurora Replicas
%%
%% Amazon Comprehend document classification and entity recognizer endpoints
%%
%% Amazon DynamoDB tables and global secondary indexes throughput capacity
%%
%% Amazon ECS services
%%
%% Amazon ElastiCache replication groups (Redis OSS and Valkey) and Memcached
%% clusters
%%
%% Amazon EMR clusters
%%
%% Amazon Keyspaces (for Apache Cassandra) tables
%%
%% Lambda function provisioned concurrency
%%
%% Amazon Managed Streaming for Apache Kafka broker storage
%%
%% Amazon Neptune clusters
%%
%% Amazon SageMaker endpoint variants
%%
%% Amazon SageMaker inference components
%%
%% Amazon SageMaker serverless endpoint provisioned concurrency
%%
%% Spot Fleets (Amazon EC2)
%%
%% Pool of WorkSpaces
%%
%% Custom resources provided by your own applications or services
%%
%% To learn more about Application Auto Scaling, see the Application Auto
%% Scaling User
%% Guide:
%% https://docs.aws.amazon.com/autoscaling/application/userguide/what-is-application-auto-scaling.html.
%%
%% API Summary
%%
%% The Application Auto Scaling service API includes three key sets of
%% actions:
%%
%% Register and manage scalable targets - Register Amazon Web Services or
%% custom resources as scalable
%% targets (a resource that Application Auto Scaling can scale), set minimum
%% and maximum capacity limits, and
%% retrieve information on existing scalable targets.
%%
%% Configure and manage automatic scaling - Define scaling policies to
%% dynamically scale
%% your resources in response to CloudWatch alarms, schedule one-time or
%% recurring scaling actions,
%% and retrieve your recent scaling activity history.
%%
%% Suspend and resume scaling - Temporarily suspend and later resume
%% automatic scaling by
%% calling the RegisterScalableTarget:
%% https://docs.aws.amazon.com/autoscaling/application/APIReference/API_RegisterScalableTarget.html
%% API action for any Application Auto Scaling scalable target. You can
%% suspend and resume (individually or in combination) scale-out activities
%% that are
%% triggered by a scaling policy, scale-in activities that are triggered by a
%% scaling policy,
%% and scheduled scaling.
-module(aws_application_auto_scaling).

-export([delete_scaling_policy/2,
         delete_scaling_policy/3,
         delete_scheduled_action/2,
         delete_scheduled_action/3,
         deregister_scalable_target/2,
         deregister_scalable_target/3,
         describe_scalable_targets/2,
         describe_scalable_targets/3,
         describe_scaling_activities/2,
         describe_scaling_activities/3,
         describe_scaling_policies/2,
         describe_scaling_policies/3,
         describe_scheduled_actions/2,
         describe_scheduled_actions/3,
         get_predictive_scaling_forecast/2,
         get_predictive_scaling_forecast/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         put_scaling_policy/2,
         put_scaling_policy/3,
         put_scheduled_action/2,
         put_scheduled_action/3,
         register_scalable_target/2,
         register_scalable_target/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% step_adjustment() :: #{
%%   <<"MetricIntervalLowerBound">> => float(),
%%   <<"MetricIntervalUpperBound">> => float(),
%%   <<"ScalingAdjustment">> => integer()
%% }
-type step_adjustment() :: #{binary() => any()}.

%% Example:
%% predictive_scaling_metric_specification() :: #{
%%   <<"CustomizedCapacityMetricSpecification">> => predictive_scaling_customized_metric_specification(),
%%   <<"CustomizedLoadMetricSpecification">> => predictive_scaling_customized_metric_specification(),
%%   <<"CustomizedScalingMetricSpecification">> => predictive_scaling_customized_metric_specification(),
%%   <<"PredefinedLoadMetricSpecification">> => predictive_scaling_predefined_load_metric_specification(),
%%   <<"PredefinedMetricPairSpecification">> => predictive_scaling_predefined_metric_pair_specification(),
%%   <<"PredefinedScalingMetricSpecification">> => predictive_scaling_predefined_scaling_metric_specification(),
%%   <<"TargetValue">> => float()
%% }
-type predictive_scaling_metric_specification() :: #{binary() => any()}.

%% Example:
%% tag_resource_request() :: #{
%%   <<"ResourceARN">> := string(),
%%   <<"Tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% get_predictive_scaling_forecast_request() :: #{
%%   <<"EndTime">> := non_neg_integer(),
%%   <<"PolicyName">> := string(),
%%   <<"ResourceId">> := string(),
%%   <<"ScalableDimension">> := list(any()),
%%   <<"ServiceNamespace">> := list(any()),
%%   <<"StartTime">> := non_neg_integer()
%% }
-type get_predictive_scaling_forecast_request() :: #{binary() => any()}.

%% Example:
%% describe_scaling_policies_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"PolicyNames">> => list(string()()),
%%   <<"ResourceId">> => string(),
%%   <<"ScalableDimension">> => list(any()),
%%   <<"ServiceNamespace">> := list(any())
%% }
-type describe_scaling_policies_request() :: #{binary() => any()}.

%% Example:
%% predictive_scaling_metric_dimension() :: #{
%%   <<"Name">> => string(),
%%   <<"Value">> => string()
%% }
-type predictive_scaling_metric_dimension() :: #{binary() => any()}.

%% Example:
%% delete_scheduled_action_response() :: #{

%% }
-type delete_scheduled_action_response() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{

%% }
-type untag_resource_response() :: #{binary() => any()}.

%% Example:
%% predictive_scaling_predefined_scaling_metric_specification() :: #{
%%   <<"PredefinedMetricType">> => string(),
%%   <<"ResourceLabel">> => string()
%% }
-type predictive_scaling_predefined_scaling_metric_specification() :: #{binary() => any()}.

%% Example:
%% alarm() :: #{
%%   <<"AlarmARN">> => string(),
%%   <<"AlarmName">> => string()
%% }
-type alarm() :: #{binary() => any()}.

%% Example:
%% target_tracking_scaling_policy_configuration() :: #{
%%   <<"CustomizedMetricSpecification">> => customized_metric_specification(),
%%   <<"DisableScaleIn">> => boolean(),
%%   <<"PredefinedMetricSpecification">> => predefined_metric_specification(),
%%   <<"ScaleInCooldown">> => integer(),
%%   <<"ScaleOutCooldown">> => integer(),
%%   <<"TargetValue">> => float()
%% }
-type target_tracking_scaling_policy_configuration() :: #{binary() => any()}.

%% Example:
%% get_predictive_scaling_forecast_response() :: #{
%%   <<"CapacityForecast">> => capacity_forecast(),
%%   <<"LoadForecast">> => list(load_forecast()()),
%%   <<"UpdateTime">> => non_neg_integer()
%% }
-type get_predictive_scaling_forecast_response() :: #{binary() => any()}.

%% Example:
%% deregister_scalable_target_request() :: #{
%%   <<"ResourceId">> := string(),
%%   <<"ScalableDimension">> := list(any()),
%%   <<"ServiceNamespace">> := list(any())
%% }
-type deregister_scalable_target_request() :: #{binary() => any()}.

%% Example:
%% scaling_policy() :: #{
%%   <<"Alarms">> => list(alarm()()),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"PolicyARN">> => string(),
%%   <<"PolicyName">> => string(),
%%   <<"PolicyType">> => list(any()),
%%   <<"PredictiveScalingPolicyConfiguration">> => predictive_scaling_policy_configuration(),
%%   <<"ResourceId">> => string(),
%%   <<"ScalableDimension">> => list(any()),
%%   <<"ServiceNamespace">> => list(any()),
%%   <<"StepScalingPolicyConfiguration">> => step_scaling_policy_configuration(),
%%   <<"TargetTrackingScalingPolicyConfiguration">> => target_tracking_scaling_policy_configuration()
%% }
-type scaling_policy() :: #{binary() => any()}.

%% Example:
%% internal_service_exception() :: #{
%%   <<"Message">> => string()
%% }
-type internal_service_exception() :: #{binary() => any()}.

%% Example:
%% describe_scheduled_actions_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"ScheduledActions">> => list(scheduled_action()())
%% }
-type describe_scheduled_actions_response() :: #{binary() => any()}.

%% Example:
%% describe_scheduled_actions_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ResourceId">> => string(),
%%   <<"ScalableDimension">> => list(any()),
%%   <<"ScheduledActionNames">> => list(string()()),
%%   <<"ServiceNamespace">> := list(any())
%% }
-type describe_scheduled_actions_request() :: #{binary() => any()}.

%% Example:
%% untag_resource_request() :: #{
%%   <<"ResourceARN">> := string(),
%%   <<"TagKeys">> := list(string()())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% predictive_scaling_predefined_load_metric_specification() :: #{
%%   <<"PredefinedMetricType">> => string(),
%%   <<"ResourceLabel">> => string()
%% }
-type predictive_scaling_predefined_load_metric_specification() :: #{binary() => any()}.

%% Example:
%% customized_metric_specification() :: #{
%%   <<"Dimensions">> => list(metric_dimension()()),
%%   <<"MetricName">> => string(),
%%   <<"Metrics">> => list(target_tracking_metric_data_query()()),
%%   <<"Namespace">> => string(),
%%   <<"Statistic">> => list(any()),
%%   <<"Unit">> => string()
%% }
-type customized_metric_specification() :: #{binary() => any()}.

%% Example:
%% describe_scaling_activities_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"ScalingActivities">> => list(scaling_activity()())
%% }
-type describe_scaling_activities_response() :: #{binary() => any()}.

%% Example:
%% suspended_state() :: #{
%%   <<"DynamicScalingInSuspended">> => boolean(),
%%   <<"DynamicScalingOutSuspended">> => boolean(),
%%   <<"ScheduledScalingSuspended">> => boolean()
%% }
-type suspended_state() :: #{binary() => any()}.

%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"ResourceName">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% load_forecast() :: #{
%%   <<"MetricSpecification">> => predictive_scaling_metric_specification(),
%%   <<"Timestamps">> => list(non_neg_integer()()),
%%   <<"Values">> => list(float()())
%% }
-type load_forecast() :: #{binary() => any()}.

%% Example:
%% invalid_next_token_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_next_token_exception() :: #{binary() => any()}.

%% Example:
%% target_tracking_metric_stat() :: #{
%%   <<"Metric">> => target_tracking_metric(),
%%   <<"Stat">> => string(),
%%   <<"Unit">> => string()
%% }
-type target_tracking_metric_stat() :: #{binary() => any()}.

%% Example:
%% scheduled_action() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"ResourceId">> => string(),
%%   <<"ScalableDimension">> => list(any()),
%%   <<"ScalableTargetAction">> => scalable_target_action(),
%%   <<"Schedule">> => string(),
%%   <<"ScheduledActionARN">> => string(),
%%   <<"ScheduledActionName">> => string(),
%%   <<"ServiceNamespace">> => list(any()),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"Timezone">> => string()
%% }
-type scheduled_action() :: #{binary() => any()}.

%% Example:
%% predictive_scaling_predefined_metric_pair_specification() :: #{
%%   <<"PredefinedMetricType">> => string(),
%%   <<"ResourceLabel">> => string()
%% }
-type predictive_scaling_predefined_metric_pair_specification() :: #{binary() => any()}.

%% Example:
%% scaling_activity() :: #{
%%   <<"ActivityId">> => string(),
%%   <<"Cause">> => string(),
%%   <<"Description">> => string(),
%%   <<"Details">> => string(),
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"NotScaledReasons">> => list(not_scaled_reason()()),
%%   <<"ResourceId">> => string(),
%%   <<"ScalableDimension">> => list(any()),
%%   <<"ServiceNamespace">> => list(any()),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"StatusCode">> => list(any()),
%%   <<"StatusMessage">> => string()
%% }
-type scaling_activity() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"Tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.

%% Example:
%% register_scalable_target_request() :: #{
%%   <<"MaxCapacity">> => integer(),
%%   <<"MinCapacity">> => integer(),
%%   <<"ResourceId">> := string(),
%%   <<"RoleARN">> => string(),
%%   <<"ScalableDimension">> := list(any()),
%%   <<"ServiceNamespace">> := list(any()),
%%   <<"SuspendedState">> => suspended_state(),
%%   <<"Tags">> => map()
%% }
-type register_scalable_target_request() :: #{binary() => any()}.

%% Example:
%% step_scaling_policy_configuration() :: #{
%%   <<"AdjustmentType">> => list(any()),
%%   <<"Cooldown">> => integer(),
%%   <<"MetricAggregationType">> => list(any()),
%%   <<"MinAdjustmentMagnitude">> => integer(),
%%   <<"StepAdjustments">> => list(step_adjustment()())
%% }
-type step_scaling_policy_configuration() :: #{binary() => any()}.

%% Example:
%% describe_scaling_activities_request() :: #{
%%   <<"IncludeNotScaledActivities">> => boolean(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ResourceId">> => string(),
%%   <<"ScalableDimension">> => list(any()),
%%   <<"ServiceNamespace">> := list(any())
%% }
-type describe_scaling_activities_request() :: #{binary() => any()}.

%% Example:
%% target_tracking_metric() :: #{
%%   <<"Dimensions">> => list(target_tracking_metric_dimension()()),
%%   <<"MetricName">> => string(),
%%   <<"Namespace">> => string()
%% }
-type target_tracking_metric() :: #{binary() => any()}.

%% Example:
%% metric_dimension() :: #{
%%   <<"Name">> => string(),
%%   <<"Value">> => string()
%% }
-type metric_dimension() :: #{binary() => any()}.

%% Example:
%% predictive_scaling_customized_metric_specification() :: #{
%%   <<"MetricDataQueries">> => list(predictive_scaling_metric_data_query()())
%% }
-type predictive_scaling_customized_metric_specification() :: #{binary() => any()}.

%% Example:
%% put_scaling_policy_response() :: #{
%%   <<"Alarms">> => list(alarm()()),
%%   <<"PolicyARN">> => string()
%% }
-type put_scaling_policy_response() :: #{binary() => any()}.

%% Example:
%% predictive_scaling_metric_data_query() :: #{
%%   <<"Expression">> => string(),
%%   <<"Id">> => string(),
%%   <<"Label">> => string(),
%%   <<"MetricStat">> => predictive_scaling_metric_stat(),
%%   <<"ReturnData">> => boolean()
%% }
-type predictive_scaling_metric_data_query() :: #{binary() => any()}.

%% Example:
%% scalable_target_action() :: #{
%%   <<"MaxCapacity">> => integer(),
%%   <<"MinCapacity">> => integer()
%% }
-type scalable_target_action() :: #{binary() => any()}.

%% Example:
%% describe_scalable_targets_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ResourceIds">> => list(string()()),
%%   <<"ScalableDimension">> => list(any()),
%%   <<"ServiceNamespace">> := list(any())
%% }
-type describe_scalable_targets_request() :: #{binary() => any()}.

%% Example:
%% describe_scaling_policies_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"ScalingPolicies">> => list(scaling_policy()())
%% }
-type describe_scaling_policies_response() :: #{binary() => any()}.

%% Example:
%% delete_scaling_policy_request() :: #{
%%   <<"PolicyName">> := string(),
%%   <<"ResourceId">> := string(),
%%   <<"ScalableDimension">> := list(any()),
%%   <<"ServiceNamespace">> := list(any())
%% }
-type delete_scaling_policy_request() :: #{binary() => any()}.

%% Example:
%% put_scheduled_action_request() :: #{
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"ResourceId">> := string(),
%%   <<"ScalableDimension">> := list(any()),
%%   <<"ScalableTargetAction">> => scalable_target_action(),
%%   <<"Schedule">> => string(),
%%   <<"ScheduledActionName">> := string(),
%%   <<"ServiceNamespace">> := list(any()),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"Timezone">> => string()
%% }
-type put_scheduled_action_request() :: #{binary() => any()}.

%% Example:
%% object_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type object_not_found_exception() :: #{binary() => any()}.

%% Example:
%% put_scheduled_action_response() :: #{

%% }
-type put_scheduled_action_response() :: #{binary() => any()}.

%% Example:
%% predefined_metric_specification() :: #{
%%   <<"PredefinedMetricType">> => list(any()),
%%   <<"ResourceLabel">> => string()
%% }
-type predefined_metric_specification() :: #{binary() => any()}.

%% Example:
%% scalable_target() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"MaxCapacity">> => integer(),
%%   <<"MinCapacity">> => integer(),
%%   <<"PredictedCapacity">> => integer(),
%%   <<"ResourceId">> => string(),
%%   <<"RoleARN">> => string(),
%%   <<"ScalableDimension">> => list(any()),
%%   <<"ScalableTargetARN">> => string(),
%%   <<"ServiceNamespace">> => list(any()),
%%   <<"SuspendedState">> => suspended_state()
%% }
-type scalable_target() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{

%% }
-type tag_resource_response() :: #{binary() => any()}.

%% Example:
%% predictive_scaling_policy_configuration() :: #{
%%   <<"MaxCapacityBreachBehavior">> => list(any()),
%%   <<"MaxCapacityBuffer">> => integer(),
%%   <<"MetricSpecifications">> => list(predictive_scaling_metric_specification()()),
%%   <<"Mode">> => list(any()),
%%   <<"SchedulingBufferTime">> => integer()
%% }
-type predictive_scaling_policy_configuration() :: #{binary() => any()}.

%% Example:
%% concurrent_update_exception() :: #{
%%   <<"Message">> => string()
%% }
-type concurrent_update_exception() :: #{binary() => any()}.

%% Example:
%% validation_exception() :: #{
%%   <<"Message">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{
%%   <<"ResourceARN">> := string()
%% }
-type list_tags_for_resource_request() :: #{binary() => any()}.

%% Example:
%% put_scaling_policy_request() :: #{
%%   <<"PolicyName">> := string(),
%%   <<"PolicyType">> => list(any()),
%%   <<"PredictiveScalingPolicyConfiguration">> => predictive_scaling_policy_configuration(),
%%   <<"ResourceId">> := string(),
%%   <<"ScalableDimension">> := list(any()),
%%   <<"ServiceNamespace">> := list(any()),
%%   <<"StepScalingPolicyConfiguration">> => step_scaling_policy_configuration(),
%%   <<"TargetTrackingScalingPolicyConfiguration">> => target_tracking_scaling_policy_configuration()
%% }
-type put_scaling_policy_request() :: #{binary() => any()}.

%% Example:
%% delete_scaling_policy_response() :: #{

%% }
-type delete_scaling_policy_response() :: #{binary() => any()}.

%% Example:
%% limit_exceeded_exception() :: #{
%%   <<"Message">> => string()
%% }
-type limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% delete_scheduled_action_request() :: #{
%%   <<"ResourceId">> := string(),
%%   <<"ScalableDimension">> := list(any()),
%%   <<"ScheduledActionName">> := string(),
%%   <<"ServiceNamespace">> := list(any())
%% }
-type delete_scheduled_action_request() :: #{binary() => any()}.

%% Example:
%% target_tracking_metric_dimension() :: #{
%%   <<"Name">> => string(),
%%   <<"Value">> => string()
%% }
-type target_tracking_metric_dimension() :: #{binary() => any()}.

%% Example:
%% predictive_scaling_metric_stat() :: #{
%%   <<"Metric">> => predictive_scaling_metric(),
%%   <<"Stat">> => string(),
%%   <<"Unit">> => string()
%% }
-type predictive_scaling_metric_stat() :: #{binary() => any()}.

%% Example:
%% describe_scalable_targets_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"ScalableTargets">> => list(scalable_target()())
%% }
-type describe_scalable_targets_response() :: #{binary() => any()}.

%% Example:
%% target_tracking_metric_data_query() :: #{
%%   <<"Expression">> => string(),
%%   <<"Id">> => string(),
%%   <<"Label">> => string(),
%%   <<"MetricStat">> => target_tracking_metric_stat(),
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
%% not_scaled_reason() :: #{
%%   <<"Code">> => string(),
%%   <<"CurrentCapacity">> => integer(),
%%   <<"MaxCapacity">> => integer(),
%%   <<"MinCapacity">> => integer()
%% }
-type not_scaled_reason() :: #{binary() => any()}.

%% Example:
%% predictive_scaling_metric() :: #{
%%   <<"Dimensions">> => list(predictive_scaling_metric_dimension()()),
%%   <<"MetricName">> => string(),
%%   <<"Namespace">> => string()
%% }
-type predictive_scaling_metric() :: #{binary() => any()}.

%% Example:
%% deregister_scalable_target_response() :: #{

%% }
-type deregister_scalable_target_response() :: #{binary() => any()}.

%% Example:
%% too_many_tags_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"ResourceName">> => string()
%% }
-type too_many_tags_exception() :: #{binary() => any()}.

%% Example:
%% failed_resource_access_exception() :: #{
%%   <<"Message">> => string()
%% }
-type failed_resource_access_exception() :: #{binary() => any()}.

%% Example:
%% register_scalable_target_response() :: #{
%%   <<"ScalableTargetARN">> => string()
%% }
-type register_scalable_target_response() :: #{binary() => any()}.

-type delete_scaling_policy_errors() ::
    validation_exception() | 
    concurrent_update_exception() | 
    object_not_found_exception() | 
    internal_service_exception().

-type delete_scheduled_action_errors() ::
    validation_exception() | 
    concurrent_update_exception() | 
    object_not_found_exception() | 
    internal_service_exception().

-type deregister_scalable_target_errors() ::
    validation_exception() | 
    concurrent_update_exception() | 
    object_not_found_exception() | 
    internal_service_exception().

-type describe_scalable_targets_errors() ::
    validation_exception() | 
    concurrent_update_exception() | 
    invalid_next_token_exception() | 
    internal_service_exception().

-type describe_scaling_activities_errors() ::
    validation_exception() | 
    concurrent_update_exception() | 
    invalid_next_token_exception() | 
    internal_service_exception().

-type describe_scaling_policies_errors() ::
    failed_resource_access_exception() | 
    validation_exception() | 
    concurrent_update_exception() | 
    invalid_next_token_exception() | 
    internal_service_exception().

-type describe_scheduled_actions_errors() ::
    validation_exception() | 
    concurrent_update_exception() | 
    invalid_next_token_exception() | 
    internal_service_exception().

-type get_predictive_scaling_forecast_errors() ::
    validation_exception() | 
    internal_service_exception().

-type list_tags_for_resource_errors() ::
    resource_not_found_exception().

-type put_scaling_policy_errors() ::
    failed_resource_access_exception() | 
    limit_exceeded_exception() | 
    validation_exception() | 
    concurrent_update_exception() | 
    object_not_found_exception() | 
    internal_service_exception().

-type put_scheduled_action_errors() ::
    limit_exceeded_exception() | 
    validation_exception() | 
    concurrent_update_exception() | 
    object_not_found_exception() | 
    internal_service_exception().

-type register_scalable_target_errors() ::
    limit_exceeded_exception() | 
    validation_exception() | 
    concurrent_update_exception() | 
    internal_service_exception().

-type tag_resource_errors() ::
    too_many_tags_exception() | 
    validation_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    validation_exception() | 
    resource_not_found_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Deletes the specified scaling policy for an Application Auto Scaling
%% scalable target.
%%
%% Deleting a step scaling policy deletes the underlying alarm action, but
%% does not delete
%% the CloudWatch alarm associated with the scaling policy, even if it no
%% longer has an associated
%% action.
%%
%% For more information, see Delete a step scaling policy:
%% https://docs.aws.amazon.com/autoscaling/application/userguide/create-step-scaling-policy-cli.html#delete-step-scaling-policy
%% and Delete a target tracking scaling policy:
%% https://docs.aws.amazon.com/autoscaling/application/userguide/create-target-tracking-policy-cli.html#delete-target-tracking-policy
%% in the
%% Application Auto Scaling User Guide.
-spec delete_scaling_policy(aws_client:aws_client(), delete_scaling_policy_request()) ->
    {ok, delete_scaling_policy_response(), tuple()} |
    {error, any()} |
    {error, delete_scaling_policy_errors(), tuple()}.
delete_scaling_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_scaling_policy(Client, Input, []).

-spec delete_scaling_policy(aws_client:aws_client(), delete_scaling_policy_request(), proplists:proplist()) ->
    {ok, delete_scaling_policy_response(), tuple()} |
    {error, any()} |
    {error, delete_scaling_policy_errors(), tuple()}.
delete_scaling_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteScalingPolicy">>, Input, Options).

%% @doc Deletes the specified scheduled action for an Application Auto
%% Scaling scalable target.
%%
%% For more information, see Delete a scheduled action:
%% https://docs.aws.amazon.com/autoscaling/application/userguide/scheduled-scaling-additional-cli-commands.html#delete-scheduled-action
%% in the Application Auto Scaling User Guide.
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

%% @doc Deregisters an Application Auto Scaling scalable target when you have
%% finished using it.
%%
%% To see which
%% resources have been registered, use DescribeScalableTargets:
%% https://docs.aws.amazon.com/autoscaling/application/APIReference/API_DescribeScalableTargets.html.
%%
%% Deregistering a scalable target deletes the scaling policies and the
%% scheduled
%% actions that are associated with it.
-spec deregister_scalable_target(aws_client:aws_client(), deregister_scalable_target_request()) ->
    {ok, deregister_scalable_target_response(), tuple()} |
    {error, any()} |
    {error, deregister_scalable_target_errors(), tuple()}.
deregister_scalable_target(Client, Input)
  when is_map(Client), is_map(Input) ->
    deregister_scalable_target(Client, Input, []).

-spec deregister_scalable_target(aws_client:aws_client(), deregister_scalable_target_request(), proplists:proplist()) ->
    {ok, deregister_scalable_target_response(), tuple()} |
    {error, any()} |
    {error, deregister_scalable_target_errors(), tuple()}.
deregister_scalable_target(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeregisterScalableTarget">>, Input, Options).

%% @doc Gets information about the scalable targets in the specified
%% namespace.
%%
%% You can filter the results using `ResourceIds' and
%% `ScalableDimension'.
-spec describe_scalable_targets(aws_client:aws_client(), describe_scalable_targets_request()) ->
    {ok, describe_scalable_targets_response(), tuple()} |
    {error, any()} |
    {error, describe_scalable_targets_errors(), tuple()}.
describe_scalable_targets(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_scalable_targets(Client, Input, []).

-spec describe_scalable_targets(aws_client:aws_client(), describe_scalable_targets_request(), proplists:proplist()) ->
    {ok, describe_scalable_targets_response(), tuple()} |
    {error, any()} |
    {error, describe_scalable_targets_errors(), tuple()}.
describe_scalable_targets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeScalableTargets">>, Input, Options).

%% @doc Provides descriptive information about the scaling activities in the
%% specified namespace
%% from the previous six weeks.
%%
%% You can filter the results using `ResourceId' and
%% `ScalableDimension'.
%%
%% For information about viewing scaling activities using the Amazon Web
%% Services CLI, see Scaling activities for Application Auto Scaling:
%% https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-scaling-activities.html.
-spec describe_scaling_activities(aws_client:aws_client(), describe_scaling_activities_request()) ->
    {ok, describe_scaling_activities_response(), tuple()} |
    {error, any()} |
    {error, describe_scaling_activities_errors(), tuple()}.
describe_scaling_activities(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_scaling_activities(Client, Input, []).

-spec describe_scaling_activities(aws_client:aws_client(), describe_scaling_activities_request(), proplists:proplist()) ->
    {ok, describe_scaling_activities_response(), tuple()} |
    {error, any()} |
    {error, describe_scaling_activities_errors(), tuple()}.
describe_scaling_activities(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeScalingActivities">>, Input, Options).

%% @doc Describes the Application Auto Scaling scaling policies for the
%% specified service namespace.
%%
%% You can filter the results using `ResourceId',
%% `ScalableDimension', and `PolicyNames'.
%%
%% For more information, see Target tracking scaling policies:
%% https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-target-tracking.html
%% and Step scaling policies:
%% https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-step-scaling-policies.html
%% in the Application Auto Scaling User Guide.
-spec describe_scaling_policies(aws_client:aws_client(), describe_scaling_policies_request()) ->
    {ok, describe_scaling_policies_response(), tuple()} |
    {error, any()} |
    {error, describe_scaling_policies_errors(), tuple()}.
describe_scaling_policies(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_scaling_policies(Client, Input, []).

-spec describe_scaling_policies(aws_client:aws_client(), describe_scaling_policies_request(), proplists:proplist()) ->
    {ok, describe_scaling_policies_response(), tuple()} |
    {error, any()} |
    {error, describe_scaling_policies_errors(), tuple()}.
describe_scaling_policies(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeScalingPolicies">>, Input, Options).

%% @doc Describes the Application Auto Scaling scheduled actions for the
%% specified service namespace.
%%
%% You can filter the results using the `ResourceId',
%% `ScalableDimension', and `ScheduledActionNames' parameters.
%%
%% For more information, see Scheduled scaling:
%% https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-scheduled-scaling.html
%% in the Application Auto Scaling User Guide.
-spec describe_scheduled_actions(aws_client:aws_client(), describe_scheduled_actions_request()) ->
    {ok, describe_scheduled_actions_response(), tuple()} |
    {error, any()} |
    {error, describe_scheduled_actions_errors(), tuple()}.
describe_scheduled_actions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_scheduled_actions(Client, Input, []).

-spec describe_scheduled_actions(aws_client:aws_client(), describe_scheduled_actions_request(), proplists:proplist()) ->
    {ok, describe_scheduled_actions_response(), tuple()} |
    {error, any()} |
    {error, describe_scheduled_actions_errors(), tuple()}.
describe_scheduled_actions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeScheduledActions">>, Input, Options).

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
-spec get_predictive_scaling_forecast(aws_client:aws_client(), get_predictive_scaling_forecast_request()) ->
    {ok, get_predictive_scaling_forecast_response(), tuple()} |
    {error, any()} |
    {error, get_predictive_scaling_forecast_errors(), tuple()}.
get_predictive_scaling_forecast(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_predictive_scaling_forecast(Client, Input, []).

-spec get_predictive_scaling_forecast(aws_client:aws_client(), get_predictive_scaling_forecast_request(), proplists:proplist()) ->
    {ok, get_predictive_scaling_forecast_response(), tuple()} |
    {error, any()} |
    {error, get_predictive_scaling_forecast_errors(), tuple()}.
get_predictive_scaling_forecast(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetPredictiveScalingForecast">>, Input, Options).

%% @doc Returns all the tags on the specified Application Auto Scaling
%% scalable target.
%%
%% For general information about tags, including the format and syntax, see
%% Tagging your Amazon Web Services
%% resources: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
%% in the Amazon Web Services General Reference.
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

%% @doc Creates or updates a scaling policy for an Application Auto Scaling
%% scalable target.
%%
%% Each scalable target is identified by a service namespace, resource ID,
%% and scalable
%% dimension. A scaling policy applies to the scalable target identified by
%% those three
%% attributes. You cannot create a scaling policy until you have registered
%% the resource as a
%% scalable target.
%%
%% Multiple scaling policies can be in force at the same time for the same
%% scalable target.
%% You can have one or more target tracking scaling policies, one or more
%% step scaling
%% policies, or both. However, there is a chance that multiple policies could
%% conflict,
%% instructing the scalable target to scale out or in at the same time.
%% Application Auto Scaling gives
%% precedence to the policy that provides the largest capacity for both scale
%% out and scale
%% in. For example, if one policy increases capacity by 3, another policy
%% increases capacity
%% by 200 percent, and the current capacity is 10, Application Auto Scaling
%% uses the policy with the highest
%% calculated capacity (200% of 10 = 20) and scales out to 30.
%%
%% We recommend caution, however, when using target tracking scaling policies
%% with step
%% scaling policies because conflicts between these policies can cause
%% undesirable behavior.
%% For example, if the step scaling policy initiates a scale-in activity
%% before the target
%% tracking policy is ready to scale in, the scale-in activity will not be
%% blocked. After the
%% scale-in activity completes, the target tracking policy could instruct the
%% scalable target
%% to scale out again.
%%
%% For more information, see Target tracking scaling policies:
%% https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-target-tracking.html,
%% Step scaling policies:
%% https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-step-scaling-policies.html,
%% and Predictive scaling policies:
%% https://docs.aws.amazon.com/autoscaling/application/userguide/aas-create-predictive-scaling-policy.html
%% in the Application Auto Scaling User Guide.
%%
%% If a scalable target is deregistered, the scalable target is no longer
%% available to
%% use scaling policies. Any scaling policies that were specified for the
%% scalable target
%% are deleted.
-spec put_scaling_policy(aws_client:aws_client(), put_scaling_policy_request()) ->
    {ok, put_scaling_policy_response(), tuple()} |
    {error, any()} |
    {error, put_scaling_policy_errors(), tuple()}.
put_scaling_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_scaling_policy(Client, Input, []).

-spec put_scaling_policy(aws_client:aws_client(), put_scaling_policy_request(), proplists:proplist()) ->
    {ok, put_scaling_policy_response(), tuple()} |
    {error, any()} |
    {error, put_scaling_policy_errors(), tuple()}.
put_scaling_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutScalingPolicy">>, Input, Options).

%% @doc Creates or updates a scheduled action for an Application Auto Scaling
%% scalable target.
%%
%% Each scalable target is identified by a service namespace, resource ID,
%% and scalable
%% dimension. A scheduled action applies to the scalable target identified by
%% those three
%% attributes. You cannot create a scheduled action until you have registered
%% the resource as
%% a scalable target.
%%
%% When you specify start and end times with a recurring schedule using a
%% cron expression
%% or rates, they form the boundaries for when the recurring action starts
%% and stops.
%%
%% To update a scheduled action, specify the parameters that you want to
%% change. If you
%% don't specify start and end times, the old values are deleted.
%%
%% For more information, see Scheduled scaling:
%% https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-scheduled-scaling.html
%% in the Application Auto Scaling User Guide.
%%
%% If a scalable target is deregistered, the scalable target is no longer
%% available to
%% run scheduled actions. Any scheduled actions that were specified for the
%% scalable target
%% are deleted.
-spec put_scheduled_action(aws_client:aws_client(), put_scheduled_action_request()) ->
    {ok, put_scheduled_action_response(), tuple()} |
    {error, any()} |
    {error, put_scheduled_action_errors(), tuple()}.
put_scheduled_action(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_scheduled_action(Client, Input, []).

-spec put_scheduled_action(aws_client:aws_client(), put_scheduled_action_request(), proplists:proplist()) ->
    {ok, put_scheduled_action_response(), tuple()} |
    {error, any()} |
    {error, put_scheduled_action_errors(), tuple()}.
put_scheduled_action(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutScheduledAction">>, Input, Options).

%% @doc Registers or updates a scalable target, which is the resource that
%% you want to
%% scale.
%%
%% Scalable targets are uniquely identified by the combination of resource
%% ID, scalable
%% dimension, and namespace, which represents some capacity dimension of the
%% underlying
%% service.
%%
%% When you register a new scalable target, you must specify values for the
%% minimum and
%% maximum capacity. If the specified resource is not active in the target
%% service, this
%% operation does not change the resource's current capacity. Otherwise,
%% it changes the
%% resource's current capacity to a value that is inside of this range.
%%
%% If you add a scaling policy, current capacity is adjustable within the
%% specified range
%% when scaling starts. Application Auto Scaling scaling policies will not
%% scale capacity to values that are
%% outside of the minimum and maximum range.
%%
%% After you register a scalable target, you do not need to register it again
%% to use other
%% Application Auto Scaling operations. To see which resources have been
%% registered, use DescribeScalableTargets:
%% https://docs.aws.amazon.com/autoscaling/application/APIReference/API_DescribeScalableTargets.html.
%% You can also view the scaling policies for a service
%% namespace by using DescribeScalableTargets:
%% https://docs.aws.amazon.com/autoscaling/application/APIReference/API_DescribeScalableTargets.html.
%% If you no longer need a scalable target, you can
%% deregister it by using DeregisterScalableTarget:
%% https://docs.aws.amazon.com/autoscaling/application/APIReference/API_DeregisterScalableTarget.html.
%%
%% To update a scalable target, specify the parameters that you want to
%% change. Include the
%% parameters that identify the scalable target: resource ID, scalable
%% dimension, and
%% namespace. Any parameters that you don't specify are not changed by
%% this update request.
%%
%% If you call the `RegisterScalableTarget' API operation to create a
%% scalable target, there might be a brief delay until the operation achieves
%% eventual
%% consistency: https://en.wikipedia.org/wiki/Eventual_consistency. You might
%% become aware of this brief delay if you get unexpected
%% errors when performing sequential operations. The typical strategy is to
%% retry the
%% request, and some Amazon Web Services SDKs include automatic backoff and
%% retry logic.
%%
%% If you call the `RegisterScalableTarget' API operation to update an
%% existing scalable target, Application Auto Scaling retrieves the current
%% capacity of the resource. If
%% it's below the minimum capacity or above the maximum capacity,
%% Application Auto Scaling adjusts the
%% capacity of the scalable target to place it within these bounds, even if
%% you don't
%% include the `MinCapacity' or `MaxCapacity' request
%% parameters.
-spec register_scalable_target(aws_client:aws_client(), register_scalable_target_request()) ->
    {ok, register_scalable_target_response(), tuple()} |
    {error, any()} |
    {error, register_scalable_target_errors(), tuple()}.
register_scalable_target(Client, Input)
  when is_map(Client), is_map(Input) ->
    register_scalable_target(Client, Input, []).

-spec register_scalable_target(aws_client:aws_client(), register_scalable_target_request(), proplists:proplist()) ->
    {ok, register_scalable_target_response(), tuple()} |
    {error, any()} |
    {error, register_scalable_target_errors(), tuple()}.
register_scalable_target(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RegisterScalableTarget">>, Input, Options).

%% @doc Adds or edits tags on an Application Auto Scaling scalable target.
%%
%% Each tag consists of a tag key and a tag value, which are both
%% case-sensitive strings.
%% To add a tag, specify a new tag key and a tag value. To edit a tag,
%% specify an existing tag
%% key and a new tag value.
%%
%% You can use this operation to tag an Application Auto Scaling scalable
%% target, but you cannot tag a
%% scaling policy or scheduled action.
%%
%% You can also add tags to an Application Auto Scaling scalable target while
%% creating it
%% (`RegisterScalableTarget').
%%
%% For general information about tags, including the format and syntax, see
%% Tagging your Amazon Web Services
%% resources: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
%% in the Amazon Web Services General Reference.
%%
%% Use tags to control access to a scalable target. For more information, see
%% Tagging support
%% for Application Auto Scaling:
%% https://docs.aws.amazon.com/autoscaling/application/userguide/resource-tagging-support.html
%% in the Application Auto Scaling User Guide.
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

%% @doc Deletes tags from an Application Auto Scaling scalable target.
%%
%% To delete a tag, specify the tag key and
%% the Application Auto Scaling scalable target.
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
    Client1 = Client#{service => <<"application-autoscaling">>},
    Host = build_host(<<"application-autoscaling">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"AnyScaleFrontendService.", Action/binary>>}
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
