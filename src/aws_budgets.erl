%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Use the Amazon Web Services Budgets API to plan your service usage,
%% service costs, and instance reservations.
%%
%% This API reference provides descriptions, syntax, and usage examples for
%% each of the actions and data types for the Amazon Web Services Budgets
%% feature.
%%
%% Budgets provide you with a way to see the following information:
%%
%% How close your plan is to your budgeted amount or to the free tier limits
%%
%% Your usage-to-date, including how much you've used of your Reserved
%% Instances (RIs)
%%
%% Your current estimated charges from Amazon Web Services, and how much your
%% predicted usage will accrue in charges by the end of the month
%%
%% How much of your budget has been used
%%
%% Amazon Web Services updates your budget status several times a day.
%% Budgets track your unblended costs, subscriptions, refunds, and RIs. You
%% can create the following types of budgets:
%%
%% Cost budgets - Plan how much you want to spend on a service.
%%
%% Usage budgets - Plan how much you want to use one or more services.
%%
%% RI utilization budgets - Define a utilization threshold, and receive
%% alerts when your RI usage falls below that threshold. This lets you see if
%% your RIs are unused or under-utilized.
%%
%% RI coverage budgets - Define a coverage threshold, and receive alerts when
%% the number of your instance hours that are covered by RIs fall below that
%% threshold. This lets you see how much of your instance usage is covered by
%% a reservation.
%%
%% Service Endpoint
%%
%% The Amazon Web Services Budgets API provides the following endpoint:
%%
%% https://budgets.amazonaws.com
%%
%% For information about costs that are associated with the Amazon Web
%% Services Budgets API, see Amazon Web Services Cost Management Pricing:
%% https://aws.amazon.com/aws-cost-management/pricing/.
-module(aws_budgets).

-export([create_budget/2,
         create_budget/3,
         create_budget_action/2,
         create_budget_action/3,
         create_notification/2,
         create_notification/3,
         create_subscriber/2,
         create_subscriber/3,
         delete_budget/2,
         delete_budget/3,
         delete_budget_action/2,
         delete_budget_action/3,
         delete_notification/2,
         delete_notification/3,
         delete_subscriber/2,
         delete_subscriber/3,
         describe_budget/2,
         describe_budget/3,
         describe_budget_action/2,
         describe_budget_action/3,
         describe_budget_action_histories/2,
         describe_budget_action_histories/3,
         describe_budget_actions_for_account/2,
         describe_budget_actions_for_account/3,
         describe_budget_actions_for_budget/2,
         describe_budget_actions_for_budget/3,
         describe_budget_notifications_for_account/2,
         describe_budget_notifications_for_account/3,
         describe_budget_performance_history/2,
         describe_budget_performance_history/3,
         describe_budgets/2,
         describe_budgets/3,
         describe_notifications_for_budget/2,
         describe_notifications_for_budget/3,
         describe_subscribers_for_notification/2,
         describe_subscribers_for_notification/3,
         execute_budget_action/2,
         execute_budget_action/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_budget/2,
         update_budget/3,
         update_budget_action/2,
         update_budget_action/3,
         update_notification/2,
         update_notification/3,
         update_subscriber/2,
         update_subscriber/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% delete_budget_action_request() :: #{
%%   <<"AccountId">> := string(),
%%   <<"ActionId">> := string(),
%%   <<"BudgetName">> := string()
%% }
-type delete_budget_action_request() :: #{binary() => any()}.

%% Example:
%% expression_dimension_values() :: #{
%%   <<"Key">> => list(any()),
%%   <<"MatchOptions">> => list(list(any())()),
%%   <<"Values">> => list(string())
%% }
-type expression_dimension_values() :: #{binary() => any()}.

%% Example:
%% tag_resource_request() :: #{
%%   <<"ResourceARN">> := string(),
%%   <<"ResourceTags">> := list(resource_tag())
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% describe_budgets_response() :: #{
%%   <<"Budgets">> => list(budget()),
%%   <<"NextToken">> => string()
%% }
-type describe_budgets_response() :: #{binary() => any()}.

%% Example:
%% describe_budget_notifications_for_account_request() :: #{
%%   <<"AccountId">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type describe_budget_notifications_for_account_request() :: #{binary() => any()}.

%% Example:
%% delete_budget_response() :: #{

%% }
-type delete_budget_response() :: #{binary() => any()}.

%% Example:
%% delete_subscriber_request() :: #{
%%   <<"AccountId">> := string(),
%%   <<"BudgetName">> := string(),
%%   <<"Notification">> := notification(),
%%   <<"Subscriber">> := subscriber()
%% }
-type delete_subscriber_request() :: #{binary() => any()}.

%% Example:
%% delete_budget_action_response() :: #{
%%   <<"AccountId">> => string(),
%%   <<"Action">> => action(),
%%   <<"BudgetName">> => string()
%% }
-type delete_budget_action_response() :: #{binary() => any()}.

%% Example:
%% describe_budget_action_histories_request() :: #{
%%   <<"AccountId">> := string(),
%%   <<"ActionId">> := string(),
%%   <<"BudgetName">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"TimePeriod">> => time_period()
%% }
-type describe_budget_action_histories_request() :: #{binary() => any()}.

%% Example:
%% create_budget_response() :: #{

%% }
-type create_budget_response() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{

%% }
-type untag_resource_response() :: #{binary() => any()}.

%% Example:
%% update_subscriber_response() :: #{

%% }
-type update_subscriber_response() :: #{binary() => any()}.

%% Example:
%% tag_values() :: #{
%%   <<"Key">> => string(),
%%   <<"MatchOptions">> => list(list(any())()),
%%   <<"Values">> => list(string())
%% }
-type tag_values() :: #{binary() => any()}.

%% Example:
%% action_threshold() :: #{
%%   <<"ActionThresholdType">> => list(any()),
%%   <<"ActionThresholdValue">> => float()
%% }
-type action_threshold() :: #{binary() => any()}.

%% Example:
%% create_subscriber_response() :: #{

%% }
-type create_subscriber_response() :: #{binary() => any()}.

%% Example:
%% untag_resource_request() :: #{
%%   <<"ResourceARN">> := string(),
%%   <<"ResourceTagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% update_budget_action_request() :: #{
%%   <<"AccountId">> := string(),
%%   <<"ActionId">> := string(),
%%   <<"ActionThreshold">> => action_threshold(),
%%   <<"ApprovalModel">> => list(any()),
%%   <<"BudgetName">> := string(),
%%   <<"Definition">> => definition(),
%%   <<"ExecutionRoleArn">> => string(),
%%   <<"NotificationType">> => list(any()),
%%   <<"Subscribers">> => list(subscriber())
%% }
-type update_budget_action_request() :: #{binary() => any()}.

%% Example:
%% describe_budget_actions_for_account_request() :: #{
%%   <<"AccountId">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type describe_budget_actions_for_account_request() :: #{binary() => any()}.

%% Example:
%% describe_budgets_request() :: #{
%%   <<"AccountId">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ShowFilterExpression">> => boolean()
%% }
-type describe_budgets_request() :: #{binary() => any()}.

%% Example:
%% time_period() :: #{
%%   <<"End">> => non_neg_integer(),
%%   <<"Start">> => non_neg_integer()
%% }
-type time_period() :: #{binary() => any()}.

%% Example:
%% create_notification_response() :: #{

%% }
-type create_notification_response() :: #{binary() => any()}.

%% Example:
%% describe_budget_actions_for_budget_response() :: #{
%%   <<"Actions">> => list(action()),
%%   <<"NextToken">> => string()
%% }
-type describe_budget_actions_for_budget_response() :: #{binary() => any()}.

%% Example:
%% describe_budget_actions_for_budget_request() :: #{
%%   <<"AccountId">> := string(),
%%   <<"BudgetName">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type describe_budget_actions_for_budget_request() :: #{binary() => any()}.

%% Example:
%% update_budget_request() :: #{
%%   <<"AccountId">> := string(),
%%   <<"NewBudget">> := budget()
%% }
-type update_budget_request() :: #{binary() => any()}.

%% Example:
%% delete_subscriber_response() :: #{

%% }
-type delete_subscriber_response() :: #{binary() => any()}.

%% Example:
%% expired_next_token_exception() :: #{
%%   <<"Message">> => string()
%% }
-type expired_next_token_exception() :: #{binary() => any()}.

%% Example:
%% describe_subscribers_for_notification_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Subscribers">> => list(subscriber())
%% }
-type describe_subscribers_for_notification_response() :: #{binary() => any()}.

%% Example:
%% describe_budget_notifications_for_account_response() :: #{
%%   <<"BudgetNotificationsForAccount">> => list(budget_notifications_for_account()),
%%   <<"NextToken">> => string()
%% }
-type describe_budget_notifications_for_account_response() :: #{binary() => any()}.

%% Example:
%% execute_budget_action_response() :: #{
%%   <<"AccountId">> => string(),
%%   <<"ActionId">> => string(),
%%   <<"BudgetName">> => string(),
%%   <<"ExecutionType">> => list(any())
%% }
-type execute_budget_action_response() :: #{binary() => any()}.

%% Example:
%% calculated_spend() :: #{
%%   <<"ActualSpend">> => spend(),
%%   <<"ForecastedSpend">> => spend()
%% }
-type calculated_spend() :: #{binary() => any()}.

%% Example:
%% update_subscriber_request() :: #{
%%   <<"AccountId">> := string(),
%%   <<"BudgetName">> := string(),
%%   <<"NewSubscriber">> := subscriber(),
%%   <<"Notification">> := notification(),
%%   <<"OldSubscriber">> := subscriber()
%% }
-type update_subscriber_request() :: #{binary() => any()}.

%% Example:
%% scp_action_definition() :: #{
%%   <<"PolicyId">> => string(),
%%   <<"TargetIds">> => list(string())
%% }
-type scp_action_definition() :: #{binary() => any()}.

%% Example:
%% describe_budget_performance_history_response() :: #{
%%   <<"BudgetPerformanceHistory">> => budget_performance_history(),
%%   <<"NextToken">> => string()
%% }
-type describe_budget_performance_history_response() :: #{binary() => any()}.

%% Example:
%% action_history() :: #{
%%   <<"ActionHistoryDetails">> => action_history_details(),
%%   <<"EventType">> => list(any()),
%%   <<"Status">> => list(any()),
%%   <<"Timestamp">> => non_neg_integer()
%% }
-type action_history() :: #{binary() => any()}.

%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"Message">> => string()
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% ssm_action_definition() :: #{
%%   <<"ActionSubType">> => list(any()),
%%   <<"InstanceIds">> => list(string()),
%%   <<"Region">> => string()
%% }
-type ssm_action_definition() :: #{binary() => any()}.

%% Example:
%% invalid_next_token_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_next_token_exception() :: #{binary() => any()}.

%% Example:
%% describe_budget_action_histories_response() :: #{
%%   <<"ActionHistories">> => list(action_history()),
%%   <<"NextToken">> => string()
%% }
-type describe_budget_action_histories_response() :: #{binary() => any()}.

%% Example:
%% not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type not_found_exception() :: #{binary() => any()}.

%% Example:
%% cost_types() :: #{
%%   <<"IncludeCredit">> => boolean(),
%%   <<"IncludeDiscount">> => boolean(),
%%   <<"IncludeOtherSubscription">> => boolean(),
%%   <<"IncludeRecurring">> => boolean(),
%%   <<"IncludeRefund">> => boolean(),
%%   <<"IncludeSubscription">> => boolean(),
%%   <<"IncludeSupport">> => boolean(),
%%   <<"IncludeTax">> => boolean(),
%%   <<"IncludeUpfront">> => boolean(),
%%   <<"UseAmortized">> => boolean(),
%%   <<"UseBlended">> => boolean()
%% }
-type cost_types() :: #{binary() => any()}.

%% Example:
%% update_budget_response() :: #{

%% }
-type update_budget_response() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"ResourceTags">> => list(resource_tag())
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.

%% Example:
%% auto_adjust_data() :: #{
%%   <<"AutoAdjustType">> => list(any()),
%%   <<"HistoricalOptions">> => historical_options(),
%%   <<"LastAutoAdjustTime">> => non_neg_integer()
%% }
-type auto_adjust_data() :: #{binary() => any()}.

%% Example:
%% notification_with_subscribers() :: #{
%%   <<"Notification">> => notification(),
%%   <<"Subscribers">> => list(subscriber())
%% }
-type notification_with_subscribers() :: #{binary() => any()}.

%% Example:
%% subscriber() :: #{
%%   <<"Address">> => string(),
%%   <<"SubscriptionType">> => list(any())
%% }
-type subscriber() :: #{binary() => any()}.

%% Example:
%% create_budget_action_request() :: #{
%%   <<"AccountId">> := string(),
%%   <<"ActionThreshold">> := action_threshold(),
%%   <<"ActionType">> := list(any()),
%%   <<"ApprovalModel">> := list(any()),
%%   <<"BudgetName">> := string(),
%%   <<"Definition">> := definition(),
%%   <<"ExecutionRoleArn">> := string(),
%%   <<"NotificationType">> := list(any()),
%%   <<"ResourceTags">> => list(resource_tag()),
%%   <<"Subscribers">> := list(subscriber())
%% }
-type create_budget_action_request() :: #{binary() => any()}.

%% Example:
%% describe_notifications_for_budget_request() :: #{
%%   <<"AccountId">> := string(),
%%   <<"BudgetName">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type describe_notifications_for_budget_request() :: #{binary() => any()}.

%% Example:
%% describe_budget_action_request() :: #{
%%   <<"AccountId">> := string(),
%%   <<"ActionId">> := string(),
%%   <<"BudgetName">> := string()
%% }
-type describe_budget_action_request() :: #{binary() => any()}.

%% Example:
%% describe_budget_request() :: #{
%%   <<"AccountId">> := string(),
%%   <<"BudgetName">> := string(),
%%   <<"ShowFilterExpression">> => boolean()
%% }
-type describe_budget_request() :: #{binary() => any()}.

%% Example:
%% update_notification_request() :: #{
%%   <<"AccountId">> := string(),
%%   <<"BudgetName">> := string(),
%%   <<"NewNotification">> := notification(),
%%   <<"OldNotification">> := notification()
%% }
-type update_notification_request() :: #{binary() => any()}.

%% Example:
%% resource_tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type resource_tag() :: #{binary() => any()}.

%% Example:
%% describe_budget_actions_for_account_response() :: #{
%%   <<"Actions">> => list(action()),
%%   <<"NextToken">> => string()
%% }
-type describe_budget_actions_for_account_response() :: #{binary() => any()}.

%% Example:
%% action() :: #{
%%   <<"ActionId">> => string(),
%%   <<"ActionThreshold">> => action_threshold(),
%%   <<"ActionType">> => list(any()),
%%   <<"ApprovalModel">> => list(any()),
%%   <<"BudgetName">> => string(),
%%   <<"Definition">> => definition(),
%%   <<"ExecutionRoleArn">> => string(),
%%   <<"NotificationType">> => list(any()),
%%   <<"Status">> => list(any()),
%%   <<"Subscribers">> => list(subscriber())
%% }
-type action() :: #{binary() => any()}.

%% Example:
%% cost_category_values() :: #{
%%   <<"Key">> => string(),
%%   <<"MatchOptions">> => list(list(any())()),
%%   <<"Values">> => list(string())
%% }
-type cost_category_values() :: #{binary() => any()}.

%% Example:
%% budget() :: #{
%%   <<"AutoAdjustData">> => auto_adjust_data(),
%%   <<"BudgetLimit">> => spend(),
%%   <<"BudgetName">> => string(),
%%   <<"BudgetType">> => list(any()),
%%   <<"CalculatedSpend">> => calculated_spend(),
%%   <<"CostFilters">> => map(),
%%   <<"CostTypes">> => cost_types(),
%%   <<"FilterExpression">> => expression(),
%%   <<"LastUpdatedTime">> => non_neg_integer(),
%%   <<"Metrics">> => list(list(any())()),
%%   <<"PlannedBudgetLimits">> => map(),
%%   <<"TimePeriod">> => time_period(),
%%   <<"TimeUnit">> => list(any())
%% }
-type budget() :: #{binary() => any()}.

%% Example:
%% access_denied_exception() :: #{
%%   <<"Message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% invalid_parameter_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_parameter_exception() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{

%% }
-type tag_resource_response() :: #{binary() => any()}.

%% Example:
%% historical_options() :: #{
%%   <<"BudgetAdjustmentPeriod">> => integer(),
%%   <<"LookBackAvailablePeriods">> => integer()
%% }
-type historical_options() :: #{binary() => any()}.

%% Example:
%% create_budget_request() :: #{
%%   <<"AccountId">> := string(),
%%   <<"Budget">> := budget(),
%%   <<"NotificationsWithSubscribers">> => list(notification_with_subscribers()),
%%   <<"ResourceTags">> => list(resource_tag())
%% }
-type create_budget_request() :: #{binary() => any()}.

%% Example:
%% execute_budget_action_request() :: #{
%%   <<"AccountId">> := string(),
%%   <<"ActionId">> := string(),
%%   <<"BudgetName">> := string(),
%%   <<"ExecutionType">> := list(any())
%% }
-type execute_budget_action_request() :: #{binary() => any()}.

%% Example:
%% delete_notification_response() :: #{

%% }
-type delete_notification_response() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{
%%   <<"ResourceARN">> := string()
%% }
-type list_tags_for_resource_request() :: #{binary() => any()}.

%% Example:
%% describe_budget_response() :: #{
%%   <<"Budget">> => budget()
%% }
-type describe_budget_response() :: #{binary() => any()}.

%% Example:
%% resource_locked_exception() :: #{
%%   <<"Message">> => string()
%% }
-type resource_locked_exception() :: #{binary() => any()}.

%% Example:
%% describe_notifications_for_budget_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Notifications">> => list(notification())
%% }
-type describe_notifications_for_budget_response() :: #{binary() => any()}.

%% Example:
%% create_budget_action_response() :: #{
%%   <<"AccountId">> => string(),
%%   <<"ActionId">> => string(),
%%   <<"BudgetName">> => string()
%% }
-type create_budget_action_response() :: #{binary() => any()}.

%% Example:
%% throttling_exception() :: #{
%%   <<"Message">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.

%% Example:
%% definition() :: #{
%%   <<"IamActionDefinition">> => iam_action_definition(),
%%   <<"ScpActionDefinition">> => scp_action_definition(),
%%   <<"SsmActionDefinition">> => ssm_action_definition()
%% }
-type definition() :: #{binary() => any()}.

%% Example:
%% expression() :: #{
%%   <<"And">> => list(expression()),
%%   <<"CostCategories">> => cost_category_values(),
%%   <<"Dimensions">> => expression_dimension_values(),
%%   <<"Not">> => expression(),
%%   <<"Or">> => list(expression()),
%%   <<"Tags">> => tag_values()
%% }
-type expression() :: #{binary() => any()}.

%% Example:
%% budgeted_and_actual_amounts() :: #{
%%   <<"ActualAmount">> => spend(),
%%   <<"BudgetedAmount">> => spend(),
%%   <<"TimePeriod">> => time_period()
%% }
-type budgeted_and_actual_amounts() :: #{binary() => any()}.

%% Example:
%% update_budget_action_response() :: #{
%%   <<"AccountId">> => string(),
%%   <<"BudgetName">> => string(),
%%   <<"NewAction">> => action(),
%%   <<"OldAction">> => action()
%% }
-type update_budget_action_response() :: #{binary() => any()}.

%% Example:
%% notification() :: #{
%%   <<"ComparisonOperator">> => list(any()),
%%   <<"NotificationState">> => list(any()),
%%   <<"NotificationType">> => list(any()),
%%   <<"Threshold">> => float(),
%%   <<"ThresholdType">> => list(any())
%% }
-type notification() :: #{binary() => any()}.

%% Example:
%% budget_performance_history() :: #{
%%   <<"BudgetName">> => string(),
%%   <<"BudgetType">> => list(any()),
%%   <<"BudgetedAndActualAmountsList">> => list(budgeted_and_actual_amounts()),
%%   <<"CostFilters">> => map(),
%%   <<"CostTypes">> => cost_types(),
%%   <<"TimeUnit">> => list(any())
%% }
-type budget_performance_history() :: #{binary() => any()}.

%% Example:
%% describe_budget_action_response() :: #{
%%   <<"AccountId">> => string(),
%%   <<"Action">> => action(),
%%   <<"BudgetName">> => string()
%% }
-type describe_budget_action_response() :: #{binary() => any()}.

%% Example:
%% delete_budget_request() :: #{
%%   <<"AccountId">> := string(),
%%   <<"BudgetName">> := string()
%% }
-type delete_budget_request() :: #{binary() => any()}.

%% Example:
%% create_subscriber_request() :: #{
%%   <<"AccountId">> := string(),
%%   <<"BudgetName">> := string(),
%%   <<"Notification">> := notification(),
%%   <<"Subscriber">> := subscriber()
%% }
-type create_subscriber_request() :: #{binary() => any()}.

%% Example:
%% iam_action_definition() :: #{
%%   <<"Groups">> => list(string()),
%%   <<"PolicyArn">> => string(),
%%   <<"Roles">> => list(string()),
%%   <<"Users">> => list(string())
%% }
-type iam_action_definition() :: #{binary() => any()}.

%% Example:
%% delete_notification_request() :: #{
%%   <<"AccountId">> := string(),
%%   <<"BudgetName">> := string(),
%%   <<"Notification">> := notification()
%% }
-type delete_notification_request() :: #{binary() => any()}.

%% Example:
%% duplicate_record_exception() :: #{
%%   <<"Message">> => string()
%% }
-type duplicate_record_exception() :: #{binary() => any()}.

%% Example:
%% budget_notifications_for_account() :: #{
%%   <<"BudgetName">> => string(),
%%   <<"Notifications">> => list(notification())
%% }
-type budget_notifications_for_account() :: #{binary() => any()}.

%% Example:
%% update_notification_response() :: #{

%% }
-type update_notification_response() :: #{binary() => any()}.

%% Example:
%% create_notification_request() :: #{
%%   <<"AccountId">> := string(),
%%   <<"BudgetName">> := string(),
%%   <<"Notification">> := notification(),
%%   <<"Subscribers">> := list(subscriber())
%% }
-type create_notification_request() :: #{binary() => any()}.

%% Example:
%% spend() :: #{
%%   <<"Amount">> => string(),
%%   <<"Unit">> => string()
%% }
-type spend() :: #{binary() => any()}.

%% Example:
%% describe_budget_performance_history_request() :: #{
%%   <<"AccountId">> := string(),
%%   <<"BudgetName">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"TimePeriod">> => time_period()
%% }
-type describe_budget_performance_history_request() :: #{binary() => any()}.

%% Example:
%% creation_limit_exceeded_exception() :: #{
%%   <<"Message">> => string()
%% }
-type creation_limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% action_history_details() :: #{
%%   <<"Action">> => action(),
%%   <<"Message">> => string()
%% }
-type action_history_details() :: #{binary() => any()}.

%% Example:
%% describe_subscribers_for_notification_request() :: #{
%%   <<"AccountId">> := string(),
%%   <<"BudgetName">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"Notification">> := notification()
%% }
-type describe_subscribers_for_notification_request() :: #{binary() => any()}.

%% Example:
%% internal_error_exception() :: #{
%%   <<"Message">> => string()
%% }
-type internal_error_exception() :: #{binary() => any()}.

-type create_budget_errors() ::
    internal_error_exception() | 
    creation_limit_exceeded_exception() | 
    duplicate_record_exception() | 
    throttling_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception().

-type create_budget_action_errors() ::
    internal_error_exception() | 
    creation_limit_exceeded_exception() | 
    duplicate_record_exception() | 
    throttling_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    not_found_exception() | 
    service_quota_exceeded_exception().

-type create_notification_errors() ::
    internal_error_exception() | 
    creation_limit_exceeded_exception() | 
    duplicate_record_exception() | 
    throttling_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    not_found_exception().

-type create_subscriber_errors() ::
    internal_error_exception() | 
    creation_limit_exceeded_exception() | 
    duplicate_record_exception() | 
    throttling_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    not_found_exception().

-type delete_budget_errors() ::
    internal_error_exception() | 
    throttling_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    not_found_exception().

-type delete_budget_action_errors() ::
    internal_error_exception() | 
    throttling_exception() | 
    resource_locked_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    not_found_exception().

-type delete_notification_errors() ::
    internal_error_exception() | 
    throttling_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    not_found_exception().

-type delete_subscriber_errors() ::
    internal_error_exception() | 
    throttling_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    not_found_exception().

-type describe_budget_errors() ::
    internal_error_exception() | 
    throttling_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    not_found_exception().

-type describe_budget_action_errors() ::
    internal_error_exception() | 
    throttling_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    not_found_exception().

-type describe_budget_action_histories_errors() ::
    internal_error_exception() | 
    throttling_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    not_found_exception() | 
    invalid_next_token_exception().

-type describe_budget_actions_for_account_errors() ::
    internal_error_exception() | 
    throttling_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    invalid_next_token_exception().

-type describe_budget_actions_for_budget_errors() ::
    internal_error_exception() | 
    throttling_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    not_found_exception() | 
    invalid_next_token_exception().

-type describe_budget_notifications_for_account_errors() ::
    internal_error_exception() | 
    throttling_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    not_found_exception() | 
    invalid_next_token_exception() | 
    expired_next_token_exception().

-type describe_budget_performance_history_errors() ::
    internal_error_exception() | 
    throttling_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    not_found_exception() | 
    invalid_next_token_exception() | 
    expired_next_token_exception().

-type describe_budgets_errors() ::
    internal_error_exception() | 
    throttling_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    not_found_exception() | 
    invalid_next_token_exception() | 
    expired_next_token_exception().

-type describe_notifications_for_budget_errors() ::
    internal_error_exception() | 
    throttling_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    not_found_exception() | 
    invalid_next_token_exception() | 
    expired_next_token_exception().

-type describe_subscribers_for_notification_errors() ::
    internal_error_exception() | 
    throttling_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    not_found_exception() | 
    invalid_next_token_exception() | 
    expired_next_token_exception().

-type execute_budget_action_errors() ::
    internal_error_exception() | 
    throttling_exception() | 
    resource_locked_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    not_found_exception().

-type list_tags_for_resource_errors() ::
    internal_error_exception() | 
    throttling_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    not_found_exception().

-type tag_resource_errors() ::
    internal_error_exception() | 
    throttling_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    not_found_exception() | 
    service_quota_exceeded_exception().

-type untag_resource_errors() ::
    internal_error_exception() | 
    throttling_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    not_found_exception().

-type update_budget_errors() ::
    internal_error_exception() | 
    throttling_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    not_found_exception().

-type update_budget_action_errors() ::
    internal_error_exception() | 
    throttling_exception() | 
    resource_locked_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    not_found_exception().

-type update_notification_errors() ::
    internal_error_exception() | 
    duplicate_record_exception() | 
    throttling_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    not_found_exception().

-type update_subscriber_errors() ::
    internal_error_exception() | 
    duplicate_record_exception() | 
    throttling_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    not_found_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a budget and, if included, notifications and subscribers.
%%
%% Only one of `BudgetLimit' or `PlannedBudgetLimits' can be present
%% in
%% the syntax at one time. Use the syntax that matches your use case. The
%% Request Syntax
%% section shows the `BudgetLimit' syntax. For `PlannedBudgetLimits',
%% see the Examples:
%% https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_budgets_CreateBudget.html#API_CreateBudget_Examples
%% section.
%%
%% Similarly, only one set of filter and metric selections can be present in
%% the syntax
%% at one time. Either `FilterExpression' and `Metrics' or
%% `CostFilters' and `CostTypes', not both or a different
%% combination. We recommend using `FilterExpression' and `Metrics'
%% as they provide more flexible and powerful filtering capabilities. The
%% Request Syntax
%% section shows the `FilterExpression'/`Metrics' syntax.
-spec create_budget(aws_client:aws_client(), create_budget_request()) ->
    {ok, create_budget_response(), tuple()} |
    {error, any()} |
    {error, create_budget_errors(), tuple()}.
create_budget(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_budget(Client, Input, []).

-spec create_budget(aws_client:aws_client(), create_budget_request(), proplists:proplist()) ->
    {ok, create_budget_response(), tuple()} |
    {error, any()} |
    {error, create_budget_errors(), tuple()}.
create_budget(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateBudget">>, Input, Options).

%% @doc
%% Creates a budget action.
-spec create_budget_action(aws_client:aws_client(), create_budget_action_request()) ->
    {ok, create_budget_action_response(), tuple()} |
    {error, any()} |
    {error, create_budget_action_errors(), tuple()}.
create_budget_action(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_budget_action(Client, Input, []).

-spec create_budget_action(aws_client:aws_client(), create_budget_action_request(), proplists:proplist()) ->
    {ok, create_budget_action_response(), tuple()} |
    {error, any()} |
    {error, create_budget_action_errors(), tuple()}.
create_budget_action(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateBudgetAction">>, Input, Options).

%% @doc Creates a notification.
%%
%% You must create the budget before you create the associated notification.
-spec create_notification(aws_client:aws_client(), create_notification_request()) ->
    {ok, create_notification_response(), tuple()} |
    {error, any()} |
    {error, create_notification_errors(), tuple()}.
create_notification(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_notification(Client, Input, []).

-spec create_notification(aws_client:aws_client(), create_notification_request(), proplists:proplist()) ->
    {ok, create_notification_response(), tuple()} |
    {error, any()} |
    {error, create_notification_errors(), tuple()}.
create_notification(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateNotification">>, Input, Options).

%% @doc Creates a subscriber.
%%
%% You must create the associated budget and notification before you create
%% the subscriber.
-spec create_subscriber(aws_client:aws_client(), create_subscriber_request()) ->
    {ok, create_subscriber_response(), tuple()} |
    {error, any()} |
    {error, create_subscriber_errors(), tuple()}.
create_subscriber(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_subscriber(Client, Input, []).

-spec create_subscriber(aws_client:aws_client(), create_subscriber_request(), proplists:proplist()) ->
    {ok, create_subscriber_response(), tuple()} |
    {error, any()} |
    {error, create_subscriber_errors(), tuple()}.
create_subscriber(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateSubscriber">>, Input, Options).

%% @doc Deletes a budget.
%%
%% You can delete your budget at any time.
%%
%% Deleting a budget also deletes the notifications and subscribers that are
%% associated with that budget.
-spec delete_budget(aws_client:aws_client(), delete_budget_request()) ->
    {ok, delete_budget_response(), tuple()} |
    {error, any()} |
    {error, delete_budget_errors(), tuple()}.
delete_budget(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_budget(Client, Input, []).

-spec delete_budget(aws_client:aws_client(), delete_budget_request(), proplists:proplist()) ->
    {ok, delete_budget_response(), tuple()} |
    {error, any()} |
    {error, delete_budget_errors(), tuple()}.
delete_budget(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteBudget">>, Input, Options).

%% @doc
%% Deletes a budget action.
-spec delete_budget_action(aws_client:aws_client(), delete_budget_action_request()) ->
    {ok, delete_budget_action_response(), tuple()} |
    {error, any()} |
    {error, delete_budget_action_errors(), tuple()}.
delete_budget_action(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_budget_action(Client, Input, []).

-spec delete_budget_action(aws_client:aws_client(), delete_budget_action_request(), proplists:proplist()) ->
    {ok, delete_budget_action_response(), tuple()} |
    {error, any()} |
    {error, delete_budget_action_errors(), tuple()}.
delete_budget_action(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteBudgetAction">>, Input, Options).

%% @doc Deletes a notification.
%%
%% Deleting a notification also deletes the subscribers that are associated
%% with the notification.
-spec delete_notification(aws_client:aws_client(), delete_notification_request()) ->
    {ok, delete_notification_response(), tuple()} |
    {error, any()} |
    {error, delete_notification_errors(), tuple()}.
delete_notification(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_notification(Client, Input, []).

-spec delete_notification(aws_client:aws_client(), delete_notification_request(), proplists:proplist()) ->
    {ok, delete_notification_response(), tuple()} |
    {error, any()} |
    {error, delete_notification_errors(), tuple()}.
delete_notification(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteNotification">>, Input, Options).

%% @doc Deletes a subscriber.
%%
%% Deleting the last subscriber to a notification also deletes the
%% notification.
-spec delete_subscriber(aws_client:aws_client(), delete_subscriber_request()) ->
    {ok, delete_subscriber_response(), tuple()} |
    {error, any()} |
    {error, delete_subscriber_errors(), tuple()}.
delete_subscriber(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_subscriber(Client, Input, []).

-spec delete_subscriber(aws_client:aws_client(), delete_subscriber_request(), proplists:proplist()) ->
    {ok, delete_subscriber_response(), tuple()} |
    {error, any()} |
    {error, delete_subscriber_errors(), tuple()}.
delete_subscriber(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteSubscriber">>, Input, Options).

%% @doc Describes a budget.
%%
%% The Request Syntax section shows the `BudgetLimit' syntax. For
%% `PlannedBudgetLimits', see the Examples:
%% https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_budgets_DescribeBudget.html#API_DescribeBudget_Examples
%% section.
-spec describe_budget(aws_client:aws_client(), describe_budget_request()) ->
    {ok, describe_budget_response(), tuple()} |
    {error, any()} |
    {error, describe_budget_errors(), tuple()}.
describe_budget(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_budget(Client, Input, []).

-spec describe_budget(aws_client:aws_client(), describe_budget_request(), proplists:proplist()) ->
    {ok, describe_budget_response(), tuple()} |
    {error, any()} |
    {error, describe_budget_errors(), tuple()}.
describe_budget(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeBudget">>, Input, Options).

%% @doc
%% Describes a budget action detail.
-spec describe_budget_action(aws_client:aws_client(), describe_budget_action_request()) ->
    {ok, describe_budget_action_response(), tuple()} |
    {error, any()} |
    {error, describe_budget_action_errors(), tuple()}.
describe_budget_action(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_budget_action(Client, Input, []).

-spec describe_budget_action(aws_client:aws_client(), describe_budget_action_request(), proplists:proplist()) ->
    {ok, describe_budget_action_response(), tuple()} |
    {error, any()} |
    {error, describe_budget_action_errors(), tuple()}.
describe_budget_action(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeBudgetAction">>, Input, Options).

%% @doc
%% Describes a budget action history detail.
-spec describe_budget_action_histories(aws_client:aws_client(), describe_budget_action_histories_request()) ->
    {ok, describe_budget_action_histories_response(), tuple()} |
    {error, any()} |
    {error, describe_budget_action_histories_errors(), tuple()}.
describe_budget_action_histories(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_budget_action_histories(Client, Input, []).

-spec describe_budget_action_histories(aws_client:aws_client(), describe_budget_action_histories_request(), proplists:proplist()) ->
    {ok, describe_budget_action_histories_response(), tuple()} |
    {error, any()} |
    {error, describe_budget_action_histories_errors(), tuple()}.
describe_budget_action_histories(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeBudgetActionHistories">>, Input, Options).

%% @doc
%% Describes all of the budget actions for an account.
-spec describe_budget_actions_for_account(aws_client:aws_client(), describe_budget_actions_for_account_request()) ->
    {ok, describe_budget_actions_for_account_response(), tuple()} |
    {error, any()} |
    {error, describe_budget_actions_for_account_errors(), tuple()}.
describe_budget_actions_for_account(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_budget_actions_for_account(Client, Input, []).

-spec describe_budget_actions_for_account(aws_client:aws_client(), describe_budget_actions_for_account_request(), proplists:proplist()) ->
    {ok, describe_budget_actions_for_account_response(), tuple()} |
    {error, any()} |
    {error, describe_budget_actions_for_account_errors(), tuple()}.
describe_budget_actions_for_account(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeBudgetActionsForAccount">>, Input, Options).

%% @doc
%% Describes all of the budget actions for a budget.
-spec describe_budget_actions_for_budget(aws_client:aws_client(), describe_budget_actions_for_budget_request()) ->
    {ok, describe_budget_actions_for_budget_response(), tuple()} |
    {error, any()} |
    {error, describe_budget_actions_for_budget_errors(), tuple()}.
describe_budget_actions_for_budget(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_budget_actions_for_budget(Client, Input, []).

-spec describe_budget_actions_for_budget(aws_client:aws_client(), describe_budget_actions_for_budget_request(), proplists:proplist()) ->
    {ok, describe_budget_actions_for_budget_response(), tuple()} |
    {error, any()} |
    {error, describe_budget_actions_for_budget_errors(), tuple()}.
describe_budget_actions_for_budget(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeBudgetActionsForBudget">>, Input, Options).

%% @doc Lists the budget names and notifications that are associated with an
%% account.
-spec describe_budget_notifications_for_account(aws_client:aws_client(), describe_budget_notifications_for_account_request()) ->
    {ok, describe_budget_notifications_for_account_response(), tuple()} |
    {error, any()} |
    {error, describe_budget_notifications_for_account_errors(), tuple()}.
describe_budget_notifications_for_account(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_budget_notifications_for_account(Client, Input, []).

-spec describe_budget_notifications_for_account(aws_client:aws_client(), describe_budget_notifications_for_account_request(), proplists:proplist()) ->
    {ok, describe_budget_notifications_for_account_response(), tuple()} |
    {error, any()} |
    {error, describe_budget_notifications_for_account_errors(), tuple()}.
describe_budget_notifications_for_account(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeBudgetNotificationsForAccount">>, Input, Options).

%% @doc Describes the history for `DAILY', `MONTHLY', and
%% `QUARTERLY' budgets.
%%
%% Budget history isn't available for `ANNUAL' budgets.
-spec describe_budget_performance_history(aws_client:aws_client(), describe_budget_performance_history_request()) ->
    {ok, describe_budget_performance_history_response(), tuple()} |
    {error, any()} |
    {error, describe_budget_performance_history_errors(), tuple()}.
describe_budget_performance_history(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_budget_performance_history(Client, Input, []).

-spec describe_budget_performance_history(aws_client:aws_client(), describe_budget_performance_history_request(), proplists:proplist()) ->
    {ok, describe_budget_performance_history_response(), tuple()} |
    {error, any()} |
    {error, describe_budget_performance_history_errors(), tuple()}.
describe_budget_performance_history(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeBudgetPerformanceHistory">>, Input, Options).

%% @doc Lists the budgets that are associated with an account.
%%
%% The Request Syntax section shows the `BudgetLimit' syntax. For
%% `PlannedBudgetLimits', see the Examples:
%% https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_budgets_DescribeBudgets.html#API_DescribeBudgets_Examples
%% section.
-spec describe_budgets(aws_client:aws_client(), describe_budgets_request()) ->
    {ok, describe_budgets_response(), tuple()} |
    {error, any()} |
    {error, describe_budgets_errors(), tuple()}.
describe_budgets(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_budgets(Client, Input, []).

-spec describe_budgets(aws_client:aws_client(), describe_budgets_request(), proplists:proplist()) ->
    {ok, describe_budgets_response(), tuple()} |
    {error, any()} |
    {error, describe_budgets_errors(), tuple()}.
describe_budgets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeBudgets">>, Input, Options).

%% @doc Lists the notifications that are associated with a budget.
-spec describe_notifications_for_budget(aws_client:aws_client(), describe_notifications_for_budget_request()) ->
    {ok, describe_notifications_for_budget_response(), tuple()} |
    {error, any()} |
    {error, describe_notifications_for_budget_errors(), tuple()}.
describe_notifications_for_budget(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_notifications_for_budget(Client, Input, []).

-spec describe_notifications_for_budget(aws_client:aws_client(), describe_notifications_for_budget_request(), proplists:proplist()) ->
    {ok, describe_notifications_for_budget_response(), tuple()} |
    {error, any()} |
    {error, describe_notifications_for_budget_errors(), tuple()}.
describe_notifications_for_budget(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeNotificationsForBudget">>, Input, Options).

%% @doc Lists the subscribers that are associated with a notification.
-spec describe_subscribers_for_notification(aws_client:aws_client(), describe_subscribers_for_notification_request()) ->
    {ok, describe_subscribers_for_notification_response(), tuple()} |
    {error, any()} |
    {error, describe_subscribers_for_notification_errors(), tuple()}.
describe_subscribers_for_notification(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_subscribers_for_notification(Client, Input, []).

-spec describe_subscribers_for_notification(aws_client:aws_client(), describe_subscribers_for_notification_request(), proplists:proplist()) ->
    {ok, describe_subscribers_for_notification_response(), tuple()} |
    {error, any()} |
    {error, describe_subscribers_for_notification_errors(), tuple()}.
describe_subscribers_for_notification(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeSubscribersForNotification">>, Input, Options).

%% @doc
%% Executes a budget action.
-spec execute_budget_action(aws_client:aws_client(), execute_budget_action_request()) ->
    {ok, execute_budget_action_response(), tuple()} |
    {error, any()} |
    {error, execute_budget_action_errors(), tuple()}.
execute_budget_action(Client, Input)
  when is_map(Client), is_map(Input) ->
    execute_budget_action(Client, Input, []).

-spec execute_budget_action(aws_client:aws_client(), execute_budget_action_request(), proplists:proplist()) ->
    {ok, execute_budget_action_response(), tuple()} |
    {error, any()} |
    {error, execute_budget_action_errors(), tuple()}.
execute_budget_action(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ExecuteBudgetAction">>, Input, Options).

%% @doc Lists tags associated with a budget or budget action resource.
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

%% @doc Creates tags for a budget or budget action resource.
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

%% @doc Deletes tags associated with a budget or budget action resource.
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

%% @doc Updates a budget.
%%
%% You can change every part of a budget except for the `budgetName' and
%% the `calculatedSpend'. When you modify a budget, the
%% `calculatedSpend' drops to zero until Amazon Web Services has new
%% usage data to use for forecasting.
%%
%% Only one of `BudgetLimit' or `PlannedBudgetLimits' can be present
%% in
%% the syntax at one time. Use the syntax that matches your case. The Request
%% Syntax
%% section shows the `BudgetLimit' syntax. For `PlannedBudgetLimits',
%% see the Examples:
%% https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_budgets_UpdateBudget.html#API_UpdateBudget_Examples
%% section.
%%
%% Similarly, only one set of filter and metric selections can be present in
%% the syntax
%% at one time. Either `FilterExpression' and `Metrics' or
%% `CostFilters' and `CostTypes', not both or a different
%% combination. We recommend using `FilterExpression' and `Metrics'
%% as they provide more flexible and powerful filtering capabilities. The
%% Request Syntax
%% section shows the `FilterExpression'/`Metrics' syntax.
-spec update_budget(aws_client:aws_client(), update_budget_request()) ->
    {ok, update_budget_response(), tuple()} |
    {error, any()} |
    {error, update_budget_errors(), tuple()}.
update_budget(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_budget(Client, Input, []).

-spec update_budget(aws_client:aws_client(), update_budget_request(), proplists:proplist()) ->
    {ok, update_budget_response(), tuple()} |
    {error, any()} |
    {error, update_budget_errors(), tuple()}.
update_budget(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateBudget">>, Input, Options).

%% @doc
%% Updates a budget action.
-spec update_budget_action(aws_client:aws_client(), update_budget_action_request()) ->
    {ok, update_budget_action_response(), tuple()} |
    {error, any()} |
    {error, update_budget_action_errors(), tuple()}.
update_budget_action(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_budget_action(Client, Input, []).

-spec update_budget_action(aws_client:aws_client(), update_budget_action_request(), proplists:proplist()) ->
    {ok, update_budget_action_response(), tuple()} |
    {error, any()} |
    {error, update_budget_action_errors(), tuple()}.
update_budget_action(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateBudgetAction">>, Input, Options).

%% @doc Updates a notification.
-spec update_notification(aws_client:aws_client(), update_notification_request()) ->
    {ok, update_notification_response(), tuple()} |
    {error, any()} |
    {error, update_notification_errors(), tuple()}.
update_notification(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_notification(Client, Input, []).

-spec update_notification(aws_client:aws_client(), update_notification_request(), proplists:proplist()) ->
    {ok, update_notification_response(), tuple()} |
    {error, any()} |
    {error, update_notification_errors(), tuple()}.
update_notification(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateNotification">>, Input, Options).

%% @doc Updates a subscriber.
-spec update_subscriber(aws_client:aws_client(), update_subscriber_request()) ->
    {ok, update_subscriber_response(), tuple()} |
    {error, any()} |
    {error, update_subscriber_errors(), tuple()}.
update_subscriber(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_subscriber(Client, Input, []).

-spec update_subscriber(aws_client:aws_client(), update_subscriber_request(), proplists:proplist()) ->
    {ok, update_subscriber_response(), tuple()} |
    {error, any()} |
    {error, update_subscriber_errors(), tuple()}.
update_subscriber(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateSubscriber">>, Input, Options).

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
    Client1 = Client#{service => <<"budgets">>,
                      region => <<"us-east-1">>},
    Host = build_host(<<"budgets">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"AWSBudgetServiceGateway.", Action/binary>>}
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
build_host(EndpointPrefix, #{endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Endpoint], <<".">>).

build_url(Host, Client) ->
    Proto = aws_client:proto(Client),
    Port = aws_client:port(Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
