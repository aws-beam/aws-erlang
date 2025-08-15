%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Application Recovery Controller (ARC) Region switch helps you
%% to quickly and reliably shift traffic away from an impaired Amazon Web
%% Services Region to a healthy Region.
%%
%% With Region switch, you can create plans that define the steps to shift
%% traffic for your application from one Amazon Web Services Region to
%% another. You can test your plans in practice mode before using them in a
%% real recovery scenario.
%%
%% Region switch provides a structured approach to multi-Region failover,
%% helping you to meet your recovery time objectives (RTOs) and maintain
%% business continuity during regional disruptions.
%%
%% For more information, see Region switch in ARC:
%% https://docs.aws.amazon.com/r53recovery/latest/dg/region-switch.html in
%% the Amazon Application Recovery Controller User Guide.
-module(aws_arc_region_switch).

-export([approve_plan_execution_step/2,
         approve_plan_execution_step/3,
         cancel_plan_execution/2,
         cancel_plan_execution/3,
         create_plan/2,
         create_plan/3,
         delete_plan/2,
         delete_plan/3,
         get_plan/2,
         get_plan/3,
         get_plan_evaluation_status/2,
         get_plan_evaluation_status/3,
         get_plan_execution/2,
         get_plan_execution/3,
         get_plan_in_region/2,
         get_plan_in_region/3,
         list_plan_execution_events/2,
         list_plan_execution_events/3,
         list_plan_executions/2,
         list_plan_executions/3,
         list_plans/2,
         list_plans/3,
         list_plans_in_region/2,
         list_plans_in_region/3,
         list_route53_health_checks/2,
         list_route53_health_checks/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         start_plan_execution/2,
         start_plan_execution/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_plan/2,
         update_plan/3,
         update_plan_execution/2,
         update_plan_execution/3,
         update_plan_execution_step/2,
         update_plan_execution_step/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% global_aurora_configuration() :: #{
%%   <<"behavior">> => list(any()),
%%   <<"crossAccountRole">> => string(),
%%   <<"databaseClusterArns">> => list(string()),
%%   <<"externalId">> => [string()],
%%   <<"globalClusterIdentifier">> => string(),
%%   <<"timeoutMinutes">> => [integer()],
%%   <<"ungraceful">> => global_aurora_ungraceful()
%% }
-type global_aurora_configuration() :: #{binary() => any()}.

%% Example:
%% lambda_ungraceful() :: #{
%%   <<"behavior">> => list(any())
%% }
-type lambda_ungraceful() :: #{binary() => any()}.

%% Example:
%% tag_resource_request() :: #{
%%   <<"arn">> := string(),
%%   <<"tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% arc_routing_control_state() :: #{
%%   <<"routingControlArn">> => string(),
%%   <<"state">> => list(any())
%% }
-type arc_routing_control_state() :: #{binary() => any()}.

%% Example:
%% lambdas() :: #{
%%   <<"arn">> => string(),
%%   <<"crossAccountRole">> => string(),
%%   <<"externalId">> => [string()]
%% }
-type lambdas() :: #{binary() => any()}.

%% Example:
%% trigger() :: #{
%%   <<"action">> => list(any()),
%%   <<"conditions">> => list(trigger_condition()),
%%   <<"description">> => [string()],
%%   <<"minDelayMinutesBetweenExecutions">> => [integer()],
%%   <<"targetRegion">> => string()
%% }
-type trigger() :: #{binary() => any()}.

%% Example:
%% eks_resource_scaling_ungraceful() :: #{
%%   <<"minimumSuccessPercentage">> => [integer()]
%% }
-type eks_resource_scaling_ungraceful() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{

%% }
-type untag_resource_response() :: #{binary() => any()}.

%% Example:
%% illegal_state_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type illegal_state_exception() :: #{binary() => any()}.

%% Example:
%% list_route53_health_checks_response() :: #{
%%   <<"healthChecks">> => list(route53_health_check()),
%%   <<"nextToken">> => string()
%% }
-type list_route53_health_checks_response() :: #{binary() => any()}.

%% Example:
%% list_plans_in_region_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_plans_in_region_request() :: #{binary() => any()}.

%% Example:
%% update_plan_execution_step_request() :: #{
%%   <<"actionToTake">> := list(any()),
%%   <<"comment">> := string(),
%%   <<"executionId">> := string(),
%%   <<"planArn">> := string(),
%%   <<"stepName">> := [string()]
%% }
-type update_plan_execution_step_request() :: #{binary() => any()}.

%% Example:
%% ecs_ungraceful() :: #{
%%   <<"minimumSuccessPercentage">> => [integer()]
%% }
-type ecs_ungraceful() :: #{binary() => any()}.

%% Example:
%% region_switch_plan_configuration() :: #{
%%   <<"arn">> => string(),
%%   <<"crossAccountRole">> => string(),
%%   <<"externalId">> => [string()]
%% }
-type region_switch_plan_configuration() :: #{binary() => any()}.

%% Example:
%% eks_resource_scaling_configuration() :: #{
%%   <<"capacityMonitoringApproach">> => list(any()),
%%   <<"eksClusters">> => list(eks_cluster()),
%%   <<"kubernetesResourceType">> => kubernetes_resource_type(),
%%   <<"scalingResources">> => list(map()),
%%   <<"targetPercent">> => [integer()],
%%   <<"timeoutMinutes">> => [integer()],
%%   <<"ungraceful">> => eks_resource_scaling_ungraceful()
%% }
-type eks_resource_scaling_configuration() :: #{binary() => any()}.

%% Example:
%% service() :: #{
%%   <<"clusterArn">> => string(),
%%   <<"crossAccountRole">> => string(),
%%   <<"externalId">> => [string()],
%%   <<"serviceArn">> => string()
%% }
-type service() :: #{binary() => any()}.

%% Example:
%% get_plan_request() :: #{
%%   <<"arn">> := string()
%% }
-type get_plan_request() :: #{binary() => any()}.

%% Example:
%% list_plans_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_plans_request() :: #{binary() => any()}.

%% Example:
%% illegal_argument_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type illegal_argument_exception() :: #{binary() => any()}.

%% Example:
%% untag_resource_request() :: #{
%%   <<"arn">> := string(),
%%   <<"resourceTagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% update_plan_execution_step_response() :: #{

%% }
-type update_plan_execution_step_response() :: #{binary() => any()}.

%% Example:
%% ec2_ungraceful() :: #{
%%   <<"minimumSuccessPercentage">> => [integer()]
%% }
-type ec2_ungraceful() :: #{binary() => any()}.

%% Example:
%% list_route53_health_checks_request() :: #{
%%   <<"arn">> := string(),
%%   <<"hostedZoneId">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"recordName">> => string()
%% }
-type list_route53_health_checks_request() :: #{binary() => any()}.

%% Example:
%% associated_alarm() :: #{
%%   <<"alarmType">> => list(any()),
%%   <<"crossAccountRole">> => string(),
%%   <<"externalId">> => [string()],
%%   <<"resourceIdentifier">> => [string()]
%% }
-type associated_alarm() :: #{binary() => any()}.

%% Example:
%% execution_event() :: #{
%%   <<"description">> => [string()],
%%   <<"error">> => [string()],
%%   <<"eventId">> => [string()],
%%   <<"executionBlockType">> => list(any()),
%%   <<"previousEventId">> => [string()],
%%   <<"resources">> => list([string()]()),
%%   <<"stepName">> => string(),
%%   <<"timestamp">> => [non_neg_integer()],
%%   <<"type">> => list(any())
%% }
-type execution_event() :: #{binary() => any()}.

%% Example:
%% route53_resource_record_set() :: #{
%%   <<"recordSetIdentifier">> => string(),
%%   <<"region">> => string()
%% }
-type route53_resource_record_set() :: #{binary() => any()}.

%% Example:
%% trigger_condition() :: #{
%%   <<"associatedAlarmName">> => [string()],
%%   <<"condition">> => list(any())
%% }
-type trigger_condition() :: #{binary() => any()}.

%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% get_plan_execution_request() :: #{
%%   <<"executionId">> := string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => [string()],
%%   <<"planArn">> := string()
%% }
-type get_plan_execution_request() :: #{binary() => any()}.

%% Example:
%% list_plan_execution_events_response() :: #{
%%   <<"items">> => list(execution_event()),
%%   <<"nextToken">> => [string()]
%% }
-type list_plan_execution_events_response() :: #{binary() => any()}.

%% Example:
%% kubernetes_resource_type() :: #{
%%   <<"apiVersion">> => [string()],
%%   <<"kind">> => [string()]
%% }
-type kubernetes_resource_type() :: #{binary() => any()}.

%% Example:
%% execution_approval_configuration() :: #{
%%   <<"approvalRole">> => string(),
%%   <<"timeoutMinutes">> => [integer()]
%% }
-type execution_approval_configuration() :: #{binary() => any()}.

%% Example:
%% parallel_execution_block_configuration() :: #{
%%   <<"steps">> => list(step())
%% }
-type parallel_execution_block_configuration() :: #{binary() => any()}.

%% Example:
%% update_plan_execution_response() :: #{

%% }
-type update_plan_execution_response() :: #{binary() => any()}.

%% Example:
%% kubernetes_scaling_resource() :: #{
%%   <<"hpaName">> => [string()],
%%   <<"name">> => [string()],
%%   <<"namespace">> => string()
%% }
-type kubernetes_scaling_resource() :: #{binary() => any()}.

%% Example:
%% eks_cluster() :: #{
%%   <<"clusterArn">> => string(),
%%   <<"crossAccountRole">> => string(),
%%   <<"externalId">> => [string()]
%% }
-type eks_cluster() :: #{binary() => any()}.

%% Example:
%% workflow() :: #{
%%   <<"steps">> => list(step()),
%%   <<"workflowDescription">> => [string()],
%%   <<"workflowTargetAction">> => list(any()),
%%   <<"workflowTargetRegion">> => string()
%% }
-type workflow() :: #{binary() => any()}.

%% Example:
%% get_plan_evaluation_status_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"planArn">> := string()
%% }
-type get_plan_evaluation_status_request() :: #{binary() => any()}.

%% Example:
%% cancel_plan_execution_request() :: #{
%%   <<"comment">> => string(),
%%   <<"executionId">> := string(),
%%   <<"planArn">> := string()
%% }
-type cancel_plan_execution_request() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"resourceTags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.

%% Example:
%% update_plan_response() :: #{
%%   <<"plan">> => plan()
%% }
-type update_plan_response() :: #{binary() => any()}.

%% Example:
%% update_plan_request() :: #{
%%   <<"arn">> := string(),
%%   <<"associatedAlarms">> => map(),
%%   <<"description">> => [string()],
%%   <<"executionRole">> := string(),
%%   <<"recoveryTimeObjectiveMinutes">> => [integer()],
%%   <<"triggers">> => list(trigger()),
%%   <<"workflows">> := list(workflow())
%% }
-type update_plan_request() :: #{binary() => any()}.

%% Example:
%% resource_warning() :: #{
%%   <<"resourceArn">> => string(),
%%   <<"stepName">> => string(),
%%   <<"version">> => [string()],
%%   <<"warningMessage">> => [string()],
%%   <<"warningStatus">> => list(any()),
%%   <<"warningUpdatedTime">> => [non_neg_integer()],
%%   <<"workflow">> => minimal_workflow()
%% }
-type resource_warning() :: #{binary() => any()}.

%% Example:
%% ecs_capacity_increase_configuration() :: #{
%%   <<"capacityMonitoringApproach">> => list(any()),
%%   <<"services">> => list(service()),
%%   <<"targetPercent">> => [integer()],
%%   <<"timeoutMinutes">> => [integer()],
%%   <<"ungraceful">> => ecs_ungraceful()
%% }
-type ecs_capacity_increase_configuration() :: #{binary() => any()}.

%% Example:
%% list_plan_executions_response() :: #{
%%   <<"items">> => list(abbreviated_execution()),
%%   <<"nextToken">> => [string()]
%% }
-type list_plan_executions_response() :: #{binary() => any()}.

%% Example:
%% arc_routing_control_configuration() :: #{
%%   <<"crossAccountRole">> => string(),
%%   <<"externalId">> => [string()],
%%   <<"regionAndRoutingControls">> => map(),
%%   <<"timeoutMinutes">> => [integer()]
%% }
-type arc_routing_control_configuration() :: #{binary() => any()}.

%% Example:
%% create_plan_response() :: #{
%%   <<"plan">> => plan()
%% }
-type create_plan_response() :: #{binary() => any()}.

%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type internal_server_exception() :: #{binary() => any()}.

%% Example:
%% get_plan_execution_response() :: #{
%%   <<"actualRecoveryTime">> => string(),
%%   <<"comment">> => [string()],
%%   <<"endTime">> => [non_neg_integer()],
%%   <<"executionAction">> => list(any()),
%%   <<"executionId">> => string(),
%%   <<"executionRegion">> => [string()],
%%   <<"executionState">> => list(any()),
%%   <<"mode">> => list(any()),
%%   <<"nextToken">> => [string()],
%%   <<"plan">> => plan(),
%%   <<"planArn">> => string(),
%%   <<"startTime">> => [non_neg_integer()],
%%   <<"stepStates">> => list(step_state()),
%%   <<"updatedAt">> => [non_neg_integer()],
%%   <<"version">> => [string()]
%% }
-type get_plan_execution_response() :: #{binary() => any()}.

%% Example:
%% cancel_plan_execution_response() :: #{

%% }
-type cancel_plan_execution_response() :: #{binary() => any()}.

%% Example:
%% list_plans_in_region_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"plans">> => list(abbreviated_plan())
%% }
-type list_plans_in_region_response() :: #{binary() => any()}.

%% Example:
%% asg() :: #{
%%   <<"arn">> => string(),
%%   <<"crossAccountRole">> => string(),
%%   <<"externalId">> => [string()]
%% }
-type asg() :: #{binary() => any()}.

%% Example:
%% list_plans_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"plans">> => list(abbreviated_plan())
%% }
-type list_plans_response() :: #{binary() => any()}.

%% Example:
%% get_plan_response() :: #{
%%   <<"plan">> => plan()
%% }
-type get_plan_response() :: #{binary() => any()}.

%% Example:
%% route53_health_check() :: #{
%%   <<"healthCheckId">> => string(),
%%   <<"hostedZoneId">> => string(),
%%   <<"recordName">> => string(),
%%   <<"region">> => string()
%% }
-type route53_health_check() :: #{binary() => any()}.

%% Example:
%% get_plan_in_region_response() :: #{
%%   <<"plan">> => plan()
%% }
-type get_plan_in_region_response() :: #{binary() => any()}.

%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{

%% }
-type tag_resource_response() :: #{binary() => any()}.

%% Example:
%% delete_plan_request() :: #{
%%   <<"arn">> := string()
%% }
-type delete_plan_request() :: #{binary() => any()}.

%% Example:
%% delete_plan_response() :: #{

%% }
-type delete_plan_response() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{
%%   <<"arn">> := string()
%% }
-type list_tags_for_resource_request() :: #{binary() => any()}.

%% Example:
%% global_aurora_ungraceful() :: #{
%%   <<"ungraceful">> => list(any())
%% }
-type global_aurora_ungraceful() :: #{binary() => any()}.

%% Example:
%% get_plan_in_region_request() :: #{
%%   <<"arn">> := string()
%% }
-type get_plan_in_region_request() :: #{binary() => any()}.

%% Example:
%% step_state() :: #{
%%   <<"endTime">> => [non_neg_integer()],
%%   <<"name">> => string(),
%%   <<"startTime">> => [non_neg_integer()],
%%   <<"status">> => list(any()),
%%   <<"stepMode">> => list(any())
%% }
-type step_state() :: #{binary() => any()}.

%% Example:
%% abbreviated_execution() :: #{
%%   <<"actualRecoveryTime">> => string(),
%%   <<"comment">> => [string()],
%%   <<"endTime">> => [non_neg_integer()],
%%   <<"executionAction">> => list(any()),
%%   <<"executionId">> => string(),
%%   <<"executionRegion">> => [string()],
%%   <<"executionState">> => list(any()),
%%   <<"mode">> => list(any()),
%%   <<"planArn">> => string(),
%%   <<"startTime">> => [non_neg_integer()],
%%   <<"updatedAt">> => [non_neg_integer()],
%%   <<"version">> => [string()]
%% }
-type abbreviated_execution() :: #{binary() => any()}.

%% Example:
%% start_plan_execution_request() :: #{
%%   <<"action">> := list(any()),
%%   <<"comment">> => string(),
%%   <<"latestVersion">> => [string()],
%%   <<"mode">> => list(any()),
%%   <<"planArn">> := string(),
%%   <<"targetRegion">> := [string()]
%% }
-type start_plan_execution_request() :: #{binary() => any()}.

%% Example:
%% create_plan_request() :: #{
%%   <<"associatedAlarms">> => map(),
%%   <<"description">> => [string()],
%%   <<"executionRole">> := string(),
%%   <<"name">> := string(),
%%   <<"primaryRegion">> => string(),
%%   <<"recoveryApproach">> := list(any()),
%%   <<"recoveryTimeObjectiveMinutes">> => [integer()],
%%   <<"regions">> := list(string()),
%%   <<"tags">> => map(),
%%   <<"triggers">> => list(trigger()),
%%   <<"workflows">> := list(workflow())
%% }
-type create_plan_request() :: #{binary() => any()}.

%% Example:
%% approve_plan_execution_step_request() :: #{
%%   <<"approval">> := list(any()),
%%   <<"comment">> => string(),
%%   <<"executionId">> := string(),
%%   <<"planArn">> := string(),
%%   <<"stepName">> := string()
%% }
-type approve_plan_execution_step_request() :: #{binary() => any()}.

%% Example:
%% start_plan_execution_response() :: #{
%%   <<"activateRegion">> => [string()],
%%   <<"deactivateRegion">> => [string()],
%%   <<"executionId">> => string(),
%%   <<"plan">> => string(),
%%   <<"planVersion">> => [string()]
%% }
-type start_plan_execution_response() :: #{binary() => any()}.

%% Example:
%% step() :: #{
%%   <<"description">> => [string()],
%%   <<"executionBlockConfiguration">> => list(),
%%   <<"executionBlockType">> => list(any()),
%%   <<"name">> => string()
%% }
-type step() :: #{binary() => any()}.

%% Example:
%% minimal_workflow() :: #{
%%   <<"action">> => list(any()),
%%   <<"name">> => [string()]
%% }
-type minimal_workflow() :: #{binary() => any()}.

%% Example:
%% ec2_asg_capacity_increase_configuration() :: #{
%%   <<"asgs">> => list(asg()),
%%   <<"capacityMonitoringApproach">> => list(any()),
%%   <<"targetPercent">> => [integer()],
%%   <<"timeoutMinutes">> => [integer()],
%%   <<"ungraceful">> => ec2_ungraceful()
%% }
-type ec2_asg_capacity_increase_configuration() :: #{binary() => any()}.

%% Example:
%% get_plan_evaluation_status_response() :: #{
%%   <<"evaluationState">> => list(any()),
%%   <<"lastEvaluatedVersion">> => [string()],
%%   <<"lastEvaluationTime">> => [non_neg_integer()],
%%   <<"nextToken">> => string(),
%%   <<"planArn">> => string(),
%%   <<"region">> => string(),
%%   <<"warnings">> => list(resource_warning())
%% }
-type get_plan_evaluation_status_response() :: #{binary() => any()}.

%% Example:
%% route53_health_check_configuration() :: #{
%%   <<"crossAccountRole">> => string(),
%%   <<"externalId">> => [string()],
%%   <<"hostedZoneId">> => string(),
%%   <<"recordName">> => string(),
%%   <<"recordSets">> => list(route53_resource_record_set()),
%%   <<"timeoutMinutes">> => [integer()]
%% }
-type route53_health_check_configuration() :: #{binary() => any()}.

%% Example:
%% list_plan_executions_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => [string()],
%%   <<"planArn">> := string(),
%%   <<"state">> => list(any())
%% }
-type list_plan_executions_request() :: #{binary() => any()}.

%% Example:
%% list_plan_execution_events_request() :: #{
%%   <<"executionId">> := string(),
%%   <<"maxResults">> => integer(),
%%   <<"name">> => string(),
%%   <<"nextToken">> => [string()],
%%   <<"planArn">> := string()
%% }
-type list_plan_execution_events_request() :: #{binary() => any()}.

%% Example:
%% update_plan_execution_request() :: #{
%%   <<"action">> := list(any()),
%%   <<"comment">> => string(),
%%   <<"executionId">> := string(),
%%   <<"planArn">> := string()
%% }
-type update_plan_execution_request() :: #{binary() => any()}.

%% Example:
%% abbreviated_plan() :: #{
%%   <<"activePlanExecution">> => string(),
%%   <<"arn">> => string(),
%%   <<"description">> => [string()],
%%   <<"executionRole">> => [string()],
%%   <<"name">> => string(),
%%   <<"owner">> => string(),
%%   <<"primaryRegion">> => string(),
%%   <<"recoveryApproach">> => list(any()),
%%   <<"recoveryTimeObjectiveMinutes">> => [integer()],
%%   <<"regions">> => list(string()),
%%   <<"updatedAt">> => [non_neg_integer()],
%%   <<"version">> => [string()]
%% }
-type abbreviated_plan() :: #{binary() => any()}.

%% Example:
%% approve_plan_execution_step_response() :: #{

%% }
-type approve_plan_execution_step_response() :: #{binary() => any()}.

%% Example:
%% custom_action_lambda_configuration() :: #{
%%   <<"lambdas">> => list(lambdas()),
%%   <<"regionToRun">> => list(any()),
%%   <<"retryIntervalMinutes">> => [float()],
%%   <<"timeoutMinutes">> => [integer()],
%%   <<"ungraceful">> => lambda_ungraceful()
%% }
-type custom_action_lambda_configuration() :: #{binary() => any()}.

%% Example:
%% plan() :: #{
%%   <<"arn">> => string(),
%%   <<"associatedAlarms">> => map(),
%%   <<"description">> => [string()],
%%   <<"executionRole">> => string(),
%%   <<"name">> => string(),
%%   <<"owner">> => string(),
%%   <<"primaryRegion">> => string(),
%%   <<"recoveryApproach">> => list(any()),
%%   <<"recoveryTimeObjectiveMinutes">> => [integer()],
%%   <<"regions">> => list(string()),
%%   <<"triggers">> => list(trigger()),
%%   <<"updatedAt">> => [non_neg_integer()],
%%   <<"version">> => [string()],
%%   <<"workflows">> => list(workflow())
%% }
-type plan() :: #{binary() => any()}.

-type approve_plan_execution_step_errors() ::
    access_denied_exception() | 
    resource_not_found_exception().

-type cancel_plan_execution_errors() ::
    access_denied_exception() | 
    resource_not_found_exception().

-type delete_plan_errors() ::
    resource_not_found_exception() | 
    illegal_state_exception().

-type get_plan_errors() ::
    resource_not_found_exception().

-type get_plan_evaluation_status_errors() ::
    access_denied_exception() | 
    resource_not_found_exception().

-type get_plan_execution_errors() ::
    access_denied_exception() | 
    resource_not_found_exception().

-type get_plan_in_region_errors() ::
    access_denied_exception() | 
    resource_not_found_exception().

-type list_plan_execution_events_errors() ::
    access_denied_exception() | 
    resource_not_found_exception().

-type list_plan_executions_errors() ::
    access_denied_exception() | 
    resource_not_found_exception().

-type list_plans_in_region_errors() ::
    access_denied_exception().

-type list_route53_health_checks_errors() ::
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_tags_for_resource_errors() ::
    internal_server_exception() | 
    resource_not_found_exception().

-type start_plan_execution_errors() ::
    access_denied_exception() | 
    resource_not_found_exception() | 
    illegal_argument_exception() | 
    illegal_state_exception().

-type tag_resource_errors() ::
    internal_server_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    internal_server_exception() | 
    resource_not_found_exception().

-type update_plan_errors() ::
    resource_not_found_exception().

-type update_plan_execution_errors() ::
    access_denied_exception() | 
    resource_not_found_exception() | 
    illegal_state_exception().

-type update_plan_execution_step_errors() ::
    access_denied_exception() | 
    resource_not_found_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Approves a step in a plan execution that requires manual approval.
%%
%% When you create a plan, you can include approval steps that require manual
%% intervention before the execution can proceed. This operation allows you
%% to provide that approval.
%%
%% You must specify the plan ARN, execution ID, step name, and approval
%% status. You can also provide an optional comment explaining the approval
%% decision.
-spec approve_plan_execution_step(aws_client:aws_client(), approve_plan_execution_step_request()) ->
    {ok, approve_plan_execution_step_response(), tuple()} |
    {error, any()} |
    {error, approve_plan_execution_step_errors(), tuple()}.
approve_plan_execution_step(Client, Input)
  when is_map(Client), is_map(Input) ->
    approve_plan_execution_step(Client, Input, []).

-spec approve_plan_execution_step(aws_client:aws_client(), approve_plan_execution_step_request(), proplists:proplist()) ->
    {ok, approve_plan_execution_step_response(), tuple()} |
    {error, any()} |
    {error, approve_plan_execution_step_errors(), tuple()}.
approve_plan_execution_step(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ApprovePlanExecutionStep">>, Input, Options).

%% @doc Cancels an in-progress plan execution.
%%
%% This operation stops the execution of the plan and prevents any further
%% steps from being processed.
%%
%% You must specify the plan ARN and execution ID. You can also provide an
%% optional comment explaining why the execution was canceled.
-spec cancel_plan_execution(aws_client:aws_client(), cancel_plan_execution_request()) ->
    {ok, cancel_plan_execution_response(), tuple()} |
    {error, any()} |
    {error, cancel_plan_execution_errors(), tuple()}.
cancel_plan_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    cancel_plan_execution(Client, Input, []).

-spec cancel_plan_execution(aws_client:aws_client(), cancel_plan_execution_request(), proplists:proplist()) ->
    {ok, cancel_plan_execution_response(), tuple()} |
    {error, any()} |
    {error, cancel_plan_execution_errors(), tuple()}.
cancel_plan_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CancelPlanExecution">>, Input, Options).

%% @doc Creates a new Region switch plan.
%%
%% A plan defines the steps required to shift traffic from one Amazon Web
%% Services Region to another.
%%
%% You must specify a name for the plan, the primary Region, and at least one
%% additional Region. You can also provide a description, execution role,
%% recovery time objective, associated alarms, triggers, and workflows that
%% define the steps to execute during a Region switch.
-spec create_plan(aws_client:aws_client(), create_plan_request()) ->
    {ok, create_plan_response(), tuple()} |
    {error, any()}.
create_plan(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_plan(Client, Input, []).

-spec create_plan(aws_client:aws_client(), create_plan_request(), proplists:proplist()) ->
    {ok, create_plan_response(), tuple()} |
    {error, any()}.
create_plan(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreatePlan">>, Input, Options).

%% @doc Deletes a Region switch plan.
%%
%% You must specify the ARN of the plan to delete.
%%
%% You cannot delete a plan that has an active execution in progress.
-spec delete_plan(aws_client:aws_client(), delete_plan_request()) ->
    {ok, delete_plan_response(), tuple()} |
    {error, any()} |
    {error, delete_plan_errors(), tuple()}.
delete_plan(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_plan(Client, Input, []).

-spec delete_plan(aws_client:aws_client(), delete_plan_request(), proplists:proplist()) ->
    {ok, delete_plan_response(), tuple()} |
    {error, any()} |
    {error, delete_plan_errors(), tuple()}.
delete_plan(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeletePlan">>, Input, Options).

%% @doc Retrieves detailed information about a Region switch plan.
%%
%% You must specify the ARN of the plan.
-spec get_plan(aws_client:aws_client(), get_plan_request()) ->
    {ok, get_plan_response(), tuple()} |
    {error, any()} |
    {error, get_plan_errors(), tuple()}.
get_plan(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_plan(Client, Input, []).

-spec get_plan(aws_client:aws_client(), get_plan_request(), proplists:proplist()) ->
    {ok, get_plan_response(), tuple()} |
    {error, any()} |
    {error, get_plan_errors(), tuple()}.
get_plan(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetPlan">>, Input, Options).

%% @doc Retrieves the evaluation status of a Region switch plan.
%%
%% The evaluation status provides information about the last time the plan
%% was evaluated and any warnings or issues detected.
-spec get_plan_evaluation_status(aws_client:aws_client(), get_plan_evaluation_status_request()) ->
    {ok, get_plan_evaluation_status_response(), tuple()} |
    {error, any()} |
    {error, get_plan_evaluation_status_errors(), tuple()}.
get_plan_evaluation_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_plan_evaluation_status(Client, Input, []).

-spec get_plan_evaluation_status(aws_client:aws_client(), get_plan_evaluation_status_request(), proplists:proplist()) ->
    {ok, get_plan_evaluation_status_response(), tuple()} |
    {error, any()} |
    {error, get_plan_evaluation_status_errors(), tuple()}.
get_plan_evaluation_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetPlanEvaluationStatus">>, Input, Options).

%% @doc Retrieves detailed information about a specific plan execution.
%%
%% You must specify the plan ARN and execution ID.
-spec get_plan_execution(aws_client:aws_client(), get_plan_execution_request()) ->
    {ok, get_plan_execution_response(), tuple()} |
    {error, any()} |
    {error, get_plan_execution_errors(), tuple()}.
get_plan_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_plan_execution(Client, Input, []).

-spec get_plan_execution(aws_client:aws_client(), get_plan_execution_request(), proplists:proplist()) ->
    {ok, get_plan_execution_response(), tuple()} |
    {error, any()} |
    {error, get_plan_execution_errors(), tuple()}.
get_plan_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetPlanExecution">>, Input, Options).

%% @doc Retrieves information about a Region switch plan in a specific Amazon
%% Web Services Region.
%%
%% This operation is useful for getting Region-specific information about a
%% plan.
-spec get_plan_in_region(aws_client:aws_client(), get_plan_in_region_request()) ->
    {ok, get_plan_in_region_response(), tuple()} |
    {error, any()} |
    {error, get_plan_in_region_errors(), tuple()}.
get_plan_in_region(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_plan_in_region(Client, Input, []).

-spec get_plan_in_region(aws_client:aws_client(), get_plan_in_region_request(), proplists:proplist()) ->
    {ok, get_plan_in_region_response(), tuple()} |
    {error, any()} |
    {error, get_plan_in_region_errors(), tuple()}.
get_plan_in_region(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetPlanInRegion">>, Input, Options).

%% @doc Lists the events that occurred during a plan execution.
%%
%% These events provide a detailed timeline of the execution process.
-spec list_plan_execution_events(aws_client:aws_client(), list_plan_execution_events_request()) ->
    {ok, list_plan_execution_events_response(), tuple()} |
    {error, any()} |
    {error, list_plan_execution_events_errors(), tuple()}.
list_plan_execution_events(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_plan_execution_events(Client, Input, []).

-spec list_plan_execution_events(aws_client:aws_client(), list_plan_execution_events_request(), proplists:proplist()) ->
    {ok, list_plan_execution_events_response(), tuple()} |
    {error, any()} |
    {error, list_plan_execution_events_errors(), tuple()}.
list_plan_execution_events(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPlanExecutionEvents">>, Input, Options).

%% @doc Lists the executions of a Region switch plan.
%%
%% This operation returns information about both current and historical
%% executions.
-spec list_plan_executions(aws_client:aws_client(), list_plan_executions_request()) ->
    {ok, list_plan_executions_response(), tuple()} |
    {error, any()} |
    {error, list_plan_executions_errors(), tuple()}.
list_plan_executions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_plan_executions(Client, Input, []).

-spec list_plan_executions(aws_client:aws_client(), list_plan_executions_request(), proplists:proplist()) ->
    {ok, list_plan_executions_response(), tuple()} |
    {error, any()} |
    {error, list_plan_executions_errors(), tuple()}.
list_plan_executions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPlanExecutions">>, Input, Options).

%% @doc Lists all Region switch plans in your Amazon Web Services account.
-spec list_plans(aws_client:aws_client(), list_plans_request()) ->
    {ok, list_plans_response(), tuple()} |
    {error, any()}.
list_plans(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_plans(Client, Input, []).

-spec list_plans(aws_client:aws_client(), list_plans_request(), proplists:proplist()) ->
    {ok, list_plans_response(), tuple()} |
    {error, any()}.
list_plans(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPlans">>, Input, Options).

%% @doc Lists all Region switch plans in your Amazon Web Services account
%% that are available in the current Amazon Web Services Region.
-spec list_plans_in_region(aws_client:aws_client(), list_plans_in_region_request()) ->
    {ok, list_plans_in_region_response(), tuple()} |
    {error, any()} |
    {error, list_plans_in_region_errors(), tuple()}.
list_plans_in_region(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_plans_in_region(Client, Input, []).

-spec list_plans_in_region(aws_client:aws_client(), list_plans_in_region_request(), proplists:proplist()) ->
    {ok, list_plans_in_region_response(), tuple()} |
    {error, any()} |
    {error, list_plans_in_region_errors(), tuple()}.
list_plans_in_region(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPlansInRegion">>, Input, Options).

%% @doc List the Amazon Route 53 health checks.
-spec list_route53_health_checks(aws_client:aws_client(), list_route53_health_checks_request()) ->
    {ok, list_route53_health_checks_response(), tuple()} |
    {error, any()} |
    {error, list_route53_health_checks_errors(), tuple()}.
list_route53_health_checks(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_route53_health_checks(Client, Input, []).

-spec list_route53_health_checks(aws_client:aws_client(), list_route53_health_checks_request(), proplists:proplist()) ->
    {ok, list_route53_health_checks_response(), tuple()} |
    {error, any()} |
    {error, list_route53_health_checks_errors(), tuple()}.
list_route53_health_checks(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListRoute53HealthChecks">>, Input, Options).

%% @doc Lists the tags attached to a Region switch resource.
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

%% @doc Starts the execution of a Region switch plan.
%%
%% You can execute a plan in either PRACTICE or RECOVERY mode.
%%
%% In PRACTICE mode, the execution simulates the steps without making actual
%% changes to your application's traffic routing. In RECOVERY mode, the
%% execution performs actual changes to shift traffic between Regions.
-spec start_plan_execution(aws_client:aws_client(), start_plan_execution_request()) ->
    {ok, start_plan_execution_response(), tuple()} |
    {error, any()} |
    {error, start_plan_execution_errors(), tuple()}.
start_plan_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_plan_execution(Client, Input, []).

-spec start_plan_execution(aws_client:aws_client(), start_plan_execution_request(), proplists:proplist()) ->
    {ok, start_plan_execution_response(), tuple()} |
    {error, any()} |
    {error, start_plan_execution_errors(), tuple()}.
start_plan_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartPlanExecution">>, Input, Options).

%% @doc Adds or updates tags for a Region switch resource.
%%
%% You can assign metadata to your resources in the form of tags, which are
%% key-value pairs.
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

%% @doc Removes tags from a Region switch resource.
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

%% @doc Updates an existing Region switch plan.
%%
%% You can modify the plan's description, workflows, execution role,
%% recovery time objective, associated alarms, and triggers.
-spec update_plan(aws_client:aws_client(), update_plan_request()) ->
    {ok, update_plan_response(), tuple()} |
    {error, any()} |
    {error, update_plan_errors(), tuple()}.
update_plan(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_plan(Client, Input, []).

-spec update_plan(aws_client:aws_client(), update_plan_request(), proplists:proplist()) ->
    {ok, update_plan_response(), tuple()} |
    {error, any()} |
    {error, update_plan_errors(), tuple()}.
update_plan(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdatePlan">>, Input, Options).

%% @doc Updates an in-progress plan execution.
%%
%% This operation allows you to modify certain aspects of the execution, such
%% as adding a comment or changing the action.
-spec update_plan_execution(aws_client:aws_client(), update_plan_execution_request()) ->
    {ok, update_plan_execution_response(), tuple()} |
    {error, any()} |
    {error, update_plan_execution_errors(), tuple()}.
update_plan_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_plan_execution(Client, Input, []).

-spec update_plan_execution(aws_client:aws_client(), update_plan_execution_request(), proplists:proplist()) ->
    {ok, update_plan_execution_response(), tuple()} |
    {error, any()} |
    {error, update_plan_execution_errors(), tuple()}.
update_plan_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdatePlanExecution">>, Input, Options).

%% @doc Updates a specific step in an in-progress plan execution.
%%
%% This operation allows you to modify the step's comment or action.
-spec update_plan_execution_step(aws_client:aws_client(), update_plan_execution_step_request()) ->
    {ok, update_plan_execution_step_response(), tuple()} |
    {error, any()} |
    {error, update_plan_execution_step_errors(), tuple()}.
update_plan_execution_step(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_plan_execution_step(Client, Input, []).

-spec update_plan_execution_step(aws_client:aws_client(), update_plan_execution_step_request(), proplists:proplist()) ->
    {ok, update_plan_execution_step_response(), tuple()} |
    {error, any()} |
    {error, update_plan_execution_step_errors(), tuple()}.
update_plan_execution_step(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdatePlanExecutionStep">>, Input, Options).

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
    Client1 = Client#{service => <<"arc-region-switch">>},
    Host = build_host(<<"arc-region-switch">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.0">>},
        {<<"X-Amz-Target">>, <<"ArcRegionSwitch.", Action/binary>>}
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
