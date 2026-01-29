%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Automation is a feature within Amazon Web Services Compute Optimizer
%% that enables you to apply optimization recommendations to your Amazon Web
%% Services resources, reducing costs and improving performance.
%%
%% You can apply recommended actions directly or create automation rules that
%% implement recommendations on a recurring schedule when they match your
%% specified criteria. With automation rules, set criteria such as Amazon Web
%% Services Region and Resource Tags to target specific geographies and
%% workloads. Configure rules to run daily, weekly, or monthly, and Compute
%% Optimizer continuously evaluates new recommendations against your
%% criteria. Track automation events over time, examine detailed step
%% history, estimate savings achieved, and reverse actions directly from
%% Compute Optimizer when needed.
-module(aws_compute_optimizer_automation).

-export([associate_accounts/2,
         associate_accounts/3,
         create_automation_rule/2,
         create_automation_rule/3,
         delete_automation_rule/2,
         delete_automation_rule/3,
         disassociate_accounts/2,
         disassociate_accounts/3,
         get_automation_event/2,
         get_automation_event/3,
         get_automation_rule/2,
         get_automation_rule/3,
         get_enrollment_configuration/2,
         get_enrollment_configuration/3,
         list_accounts/2,
         list_accounts/3,
         list_automation_event_steps/2,
         list_automation_event_steps/3,
         list_automation_event_summaries/2,
         list_automation_event_summaries/3,
         list_automation_events/2,
         list_automation_events/3,
         list_automation_rule_preview/2,
         list_automation_rule_preview/3,
         list_automation_rule_preview_summaries/2,
         list_automation_rule_preview_summaries/3,
         list_automation_rules/2,
         list_automation_rules/3,
         list_recommended_action_summaries/2,
         list_recommended_action_summaries/3,
         list_recommended_actions/2,
         list_recommended_actions/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         rollback_automation_event/2,
         rollback_automation_event/3,
         start_automation_event/2,
         start_automation_event/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_automation_rule/2,
         update_automation_rule/3,
         update_enrollment_configuration/2,
         update_enrollment_configuration/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% automation_event() :: #{
%%   <<"accountId">> => string(),
%%   <<"completedTimestamp">> => [non_neg_integer()],
%%   <<"createdTimestamp">> => [non_neg_integer()],
%%   <<"estimatedMonthlySavings">> => estimated_monthly_savings(),
%%   <<"eventDescription">> => [string()],
%%   <<"eventId">> => string(),
%%   <<"eventStatus">> => list(any()),
%%   <<"eventStatusReason">> => [string()],
%%   <<"eventType">> => list(any()),
%%   <<"recommendedActionId">> => string(),
%%   <<"region">> => [string()],
%%   <<"resourceArn">> => string(),
%%   <<"resourceId">> => string(),
%%   <<"resourceType">> => list(any()),
%%   <<"ruleId">> => string()
%% }
-type automation_event() :: #{binary() => any()}.

%% Example:
%% recommended_action() :: #{
%%   <<"accountId">> => string(),
%%   <<"currentResourceDetails">> => list(),
%%   <<"currentResourceSummary">> => [string()],
%%   <<"estimatedMonthlySavings">> => estimated_monthly_savings(),
%%   <<"lookBackPeriodInDays">> => [integer()],
%%   <<"recommendedActionId">> => string(),
%%   <<"recommendedActionType">> => list(any()),
%%   <<"recommendedResourceDetails">> => list(),
%%   <<"recommendedResourceSummary">> => [string()],
%%   <<"region">> => [string()],
%%   <<"resourceArn">> => string(),
%%   <<"resourceId">> => string(),
%%   <<"resourceTags">> => list(tag()),
%%   <<"resourceType">> => list(any()),
%%   <<"restartNeeded">> => [boolean()]
%% }
-type recommended_action() :: #{binary() => any()}.

%% Example:
%% ebs_volume_configuration() :: #{
%%   <<"iops">> => [integer()],
%%   <<"sizeInGib">> => [integer()],
%%   <<"throughput">> => [integer()],
%%   <<"type">> => [string()]
%% }
-type ebs_volume_configuration() :: #{binary() => any()}.

%% Example:
%% summary_dimension() :: #{
%%   <<"key">> => string(),
%%   <<"value">> => [string()]
%% }
-type summary_dimension() :: #{binary() => any()}.

%% Example:
%% list_recommended_actions_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"recommendedActions">> => list(recommended_action())
%% }
-type list_recommended_actions_response() :: #{binary() => any()}.

%% Example:
%% rule_preview_total() :: #{
%%   <<"estimatedMonthlySavings">> => estimated_monthly_savings(),
%%   <<"recommendedActionCount">> => [integer()]
%% }
-type rule_preview_total() :: #{binary() => any()}.

%% Example:
%% tag_resource_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"resourceArn">> := string(),
%%   <<"ruleRevision">> := [float()],
%%   <<"tags">> := list(tag())
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% associate_accounts_response() :: #{
%%   <<"accountIds">> => list(string()),
%%   <<"errors">> => list([string()]())
%% }
-type associate_accounts_response() :: #{binary() => any()}.

%% Example:
%% list_automation_rule_preview_summaries_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"previewResultSummaries">> => list(preview_result_summary())
%% }
-type list_automation_rule_preview_summaries_response() :: #{binary() => any()}.

%% Example:
%% list_automation_rule_preview_summaries_request() :: #{
%%   <<"criteria">> => criteria(),
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string(),
%%   <<"organizationScope">> => organization_scope(),
%%   <<"recommendedActionTypes">> := list(list(any())()),
%%   <<"ruleType">> := list(any())
%% }
-type list_automation_rule_preview_summaries_request() :: #{binary() => any()}.

%% Example:
%% list_automation_event_steps_request() :: #{
%%   <<"eventId">> := string(),
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string()
%% }
-type list_automation_event_steps_request() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{

%% }
-type untag_resource_response() :: #{binary() => any()}.

%% Example:
%% recommended_action_total() :: #{
%%   <<"estimatedMonthlySavings">> => estimated_monthly_savings(),
%%   <<"recommendedActionCount">> => [integer()]
%% }
-type recommended_action_total() :: #{binary() => any()}.

%% Example:
%% not_management_account_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type not_management_account_exception() :: #{binary() => any()}.

%% Example:
%% forbidden_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type forbidden_exception() :: #{binary() => any()}.

%% Example:
%% organization_configuration() :: #{
%%   <<"accountIds">> => list(string()),
%%   <<"ruleApplyOrder">> => list(any())
%% }
-type organization_configuration() :: #{binary() => any()}.

%% Example:
%% list_automation_rule_preview_request() :: #{
%%   <<"criteria">> => criteria(),
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string(),
%%   <<"organizationScope">> => organization_scope(),
%%   <<"recommendedActionTypes">> := list(list(any())()),
%%   <<"ruleType">> := list(any())
%% }
-type list_automation_rule_preview_request() :: #{binary() => any()}.

%% Example:
%% start_automation_event_response() :: #{
%%   <<"eventId">> => string(),
%%   <<"eventStatus">> => list(any()),
%%   <<"recommendedActionId">> => string()
%% }
-type start_automation_event_response() :: #{binary() => any()}.

%% Example:
%% account_info() :: #{
%%   <<"accountId">> => string(),
%%   <<"lastUpdatedTimestamp">> => [non_neg_integer()],
%%   <<"organizationRuleMode">> => list(any()),
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => [string()]
%% }
-type account_info() :: #{binary() => any()}.

%% Example:
%% string_criteria_condition() :: #{
%%   <<"comparison">> => list(any()),
%%   <<"values">> => list(string())
%% }
-type string_criteria_condition() :: #{binary() => any()}.

%% Example:
%% preview_result_summary() :: #{
%%   <<"key">> => [string()],
%%   <<"total">> => rule_preview_total()
%% }
-type preview_result_summary() :: #{binary() => any()}.

%% Example:
%% automation_event_summary() :: #{
%%   <<"dimensions">> => list(summary_dimension()),
%%   <<"key">> => [string()],
%%   <<"timePeriod">> => time_period(),
%%   <<"total">> => summary_totals()
%% }
-type automation_event_summary() :: #{binary() => any()}.

%% Example:
%% get_automation_rule_response() :: #{
%%   <<"accountId">> => string(),
%%   <<"createdTimestamp">> => [non_neg_integer()],
%%   <<"criteria">> => criteria(),
%%   <<"description">> => [string()],
%%   <<"lastUpdatedTimestamp">> => [non_neg_integer()],
%%   <<"name">> => string(),
%%   <<"organizationConfiguration">> => organization_configuration(),
%%   <<"priority">> => [string()],
%%   <<"recommendedActionTypes">> => list(list(any())()),
%%   <<"ruleArn">> => string(),
%%   <<"ruleId">> => string(),
%%   <<"ruleRevision">> => [float()],
%%   <<"ruleType">> => list(any()),
%%   <<"schedule">> => schedule(),
%%   <<"status">> => list(any()),
%%   <<"tags">> => list(tag())
%% }
-type get_automation_rule_response() :: #{binary() => any()}.

%% Example:
%% disassociate_accounts_request() :: #{
%%   <<"accountIds">> := list(string()),
%%   <<"clientToken">> => string()
%% }
-type disassociate_accounts_request() :: #{binary() => any()}.

%% Example:
%% untag_resource_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"resourceArn">> := string(),
%%   <<"ruleRevision">> := [float()],
%%   <<"tagKeys">> := list([string()]())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% time_period() :: #{
%%   <<"endTimeExclusive">> => [non_neg_integer()],
%%   <<"startTimeInclusive">> => [non_neg_integer()]
%% }
-type time_period() :: #{binary() => any()}.

%% Example:
%% list_automation_event_summaries_request() :: #{
%%   <<"endDateExclusive">> => [string()],
%%   <<"filters">> => list(automation_event_filter()),
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string(),
%%   <<"startDateInclusive">> => [string()]
%% }
-type list_automation_event_summaries_request() :: #{binary() => any()}.

%% Example:
%% update_automation_rule_response() :: #{
%%   <<"createdTimestamp">> => [non_neg_integer()],
%%   <<"criteria">> => criteria(),
%%   <<"description">> => [string()],
%%   <<"lastUpdatedTimestamp">> => [non_neg_integer()],
%%   <<"name">> => string(),
%%   <<"organizationConfiguration">> => organization_configuration(),
%%   <<"priority">> => [string()],
%%   <<"recommendedActionTypes">> => list(list(any())()),
%%   <<"ruleArn">> => string(),
%%   <<"ruleRevision">> => [float()],
%%   <<"ruleType">> => list(any()),
%%   <<"schedule">> => schedule(),
%%   <<"status">> => list(any())
%% }
-type update_automation_rule_response() :: #{binary() => any()}.

%% Example:
%% recommended_action_filter() :: #{
%%   <<"name">> => string(),
%%   <<"values">> => list(string())
%% }
-type recommended_action_filter() :: #{binary() => any()}.

%% Example:
%% rollback_automation_event_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"eventId">> := string()
%% }
-type rollback_automation_event_request() :: #{binary() => any()}.

%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% opt_in_required_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type opt_in_required_exception() :: #{binary() => any()}.

%% Example:
%% list_accounts_response() :: #{
%%   <<"accounts">> => list(account_info()),
%%   <<"nextToken">> => string()
%% }
-type list_accounts_response() :: #{binary() => any()}.

%% Example:
%% disassociate_accounts_response() :: #{
%%   <<"accountIds">> => list(string()),
%%   <<"errors">> => list([string()]())
%% }
-type disassociate_accounts_response() :: #{binary() => any()}.

%% Example:
%% delete_automation_rule_response() :: #{

%% }
-type delete_automation_rule_response() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"key">> => string(),
%%   <<"value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% ebs_volume() :: #{
%%   <<"configuration">> => ebs_volume_configuration()
%% }
-type ebs_volume() :: #{binary() => any()}.

%% Example:
%% preview_result() :: #{
%%   <<"accountId">> => string(),
%%   <<"currentResourceDetails">> => list(),
%%   <<"currentResourceSummary">> => [string()],
%%   <<"estimatedMonthlySavings">> => estimated_monthly_savings(),
%%   <<"lookBackPeriodInDays">> => [integer()],
%%   <<"recommendedActionId">> => string(),
%%   <<"recommendedActionType">> => list(any()),
%%   <<"recommendedResourceDetails">> => list(),
%%   <<"recommendedResourceSummary">> => [string()],
%%   <<"region">> => [string()],
%%   <<"resourceArn">> => string(),
%%   <<"resourceId">> => string(),
%%   <<"resourceTags">> => list(tag()),
%%   <<"resourceType">> => list(any()),
%%   <<"restartNeeded">> => [boolean()]
%% }
-type preview_result() :: #{binary() => any()}.

%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% criteria() :: #{
%%   <<"ebsVolumeSizeInGib">> => list(integer_criteria_condition()),
%%   <<"ebsVolumeType">> => list(string_criteria_condition()),
%%   <<"estimatedMonthlySavings">> => list(double_criteria_condition()),
%%   <<"lookBackPeriodInDays">> => list(integer_criteria_condition()),
%%   <<"region">> => list(string_criteria_condition()),
%%   <<"resourceArn">> => list(string_criteria_condition()),
%%   <<"resourceTag">> => list(resource_tags_criteria_condition()),
%%   <<"restartNeeded">> => list(string_criteria_condition())
%% }
-type criteria() :: #{binary() => any()}.

%% Example:
%% idempotent_parameter_mismatch_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type idempotent_parameter_mismatch_exception() :: #{binary() => any()}.

%% Example:
%% invalid_parameter_value_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type invalid_parameter_value_exception() :: #{binary() => any()}.

%% Example:
%% automation_rule() :: #{
%%   <<"accountId">> => string(),
%%   <<"createdTimestamp">> => [non_neg_integer()],
%%   <<"description">> => [string()],
%%   <<"lastUpdatedTimestamp">> => [non_neg_integer()],
%%   <<"name">> => string(),
%%   <<"organizationConfiguration">> => organization_configuration(),
%%   <<"priority">> => [string()],
%%   <<"recommendedActionTypes">> => list(list(any())()),
%%   <<"ruleArn">> => string(),
%%   <<"ruleId">> => string(),
%%   <<"ruleRevision">> => [float()],
%%   <<"ruleType">> => list(any()),
%%   <<"schedule">> => schedule(),
%%   <<"status">> => list(any())
%% }
-type automation_rule() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> => list(tag())
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.

%% Example:
%% service_unavailable_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type service_unavailable_exception() :: #{binary() => any()}.

%% Example:
%% update_automation_rule_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"criteria">> => criteria(),
%%   <<"description">> => string(),
%%   <<"name">> => string(),
%%   <<"organizationConfiguration">> => organization_configuration(),
%%   <<"priority">> => [string()],
%%   <<"recommendedActionTypes">> => list(list(any())()),
%%   <<"ruleArn">> := string(),
%%   <<"ruleRevision">> := [float()],
%%   <<"ruleType">> => list(any()),
%%   <<"schedule">> => schedule(),
%%   <<"status">> => list(any())
%% }
-type update_automation_rule_request() :: #{binary() => any()}.

%% Example:
%% create_automation_rule_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"criteria">> => criteria(),
%%   <<"description">> => string(),
%%   <<"name">> := string(),
%%   <<"organizationConfiguration">> => organization_configuration(),
%%   <<"priority">> => [string()],
%%   <<"recommendedActionTypes">> := list(list(any())()),
%%   <<"ruleType">> := list(any()),
%%   <<"schedule">> := schedule(),
%%   <<"status">> := list(any()),
%%   <<"tags">> => list(tag())
%% }
-type create_automation_rule_request() :: #{binary() => any()}.

%% Example:
%% idempotency_token_in_use_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type idempotency_token_in_use_exception() :: #{binary() => any()}.

%% Example:
%% filter() :: #{
%%   <<"name">> => string(),
%%   <<"values">> => list(string())
%% }
-type filter() :: #{binary() => any()}.

%% Example:
%% start_automation_event_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"recommendedActionId">> := string()
%% }
-type start_automation_event_request() :: #{binary() => any()}.

%% Example:
%% update_enrollment_configuration_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"status">> := list(any())
%% }
-type update_enrollment_configuration_request() :: #{binary() => any()}.

%% Example:
%% list_automation_rules_request() :: #{
%%   <<"filters">> => list(filter()),
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string()
%% }
-type list_automation_rules_request() :: #{binary() => any()}.

%% Example:
%% get_automation_event_request() :: #{
%%   <<"eventId">> := string()
%% }
-type get_automation_event_request() :: #{binary() => any()}.

%% Example:
%% get_enrollment_configuration_response() :: #{
%%   <<"lastUpdatedTimestamp">> => [non_neg_integer()],
%%   <<"organizationRuleMode">> => list(any()),
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => [string()]
%% }
-type get_enrollment_configuration_response() :: #{binary() => any()}.

%% Example:
%% estimated_monthly_savings() :: #{
%%   <<"afterDiscountSavings">> => [float()],
%%   <<"beforeDiscountSavings">> => [float()],
%%   <<"currency">> => [string()],
%%   <<"savingsEstimationMode">> => list(any())
%% }
-type estimated_monthly_savings() :: #{binary() => any()}.

%% Example:
%% organization_scope() :: #{
%%   <<"accountIds">> => list(string())
%% }
-type organization_scope() :: #{binary() => any()}.

%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type internal_server_exception() :: #{binary() => any()}.

%% Example:
%% get_automation_rule_request() :: #{
%%   <<"ruleArn">> := string()
%% }
-type get_automation_rule_request() :: #{binary() => any()}.

%% Example:
%% schedule() :: #{
%%   <<"executionWindowInMinutes">> => [integer()],
%%   <<"scheduleExpression">> => [string()],
%%   <<"scheduleExpressionTimezone">> => [string()]
%% }
-type schedule() :: #{binary() => any()}.

%% Example:
%% summary_totals() :: #{
%%   <<"automationEventCount">> => [integer()],
%%   <<"estimatedMonthlySavings">> => estimated_monthly_savings()
%% }
-type summary_totals() :: #{binary() => any()}.

%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% list_recommended_action_summaries_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"recommendedActionSummaries">> => list(recommended_action_summary())
%% }
-type list_recommended_action_summaries_response() :: #{binary() => any()}.

%% Example:
%% list_automation_events_request() :: #{
%%   <<"endTimeExclusive">> => [non_neg_integer()],
%%   <<"filters">> => list(automation_event_filter()),
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string(),
%%   <<"startTimeInclusive">> => [non_neg_integer()]
%% }
-type list_automation_events_request() :: #{binary() => any()}.

%% Example:
%% list_automation_event_steps_response() :: #{
%%   <<"automationEventSteps">> => list(automation_event_step()),
%%   <<"nextToken">> => string()
%% }
-type list_automation_event_steps_response() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{

%% }
-type tag_resource_response() :: #{binary() => any()}.

%% Example:
%% automation_event_filter() :: #{
%%   <<"name">> => string(),
%%   <<"values">> => list(string())
%% }
-type automation_event_filter() :: #{binary() => any()}.

%% Example:
%% rollback_automation_event_response() :: #{
%%   <<"eventId">> => string(),
%%   <<"eventStatus">> => list(any())
%% }
-type rollback_automation_event_response() :: #{binary() => any()}.

%% Example:
%% list_automation_events_response() :: #{
%%   <<"automationEvents">> => list(automation_event()),
%%   <<"nextToken">> => string()
%% }
-type list_automation_events_response() :: #{binary() => any()}.

%% Example:
%% double_criteria_condition() :: #{
%%   <<"comparison">> => list(any()),
%%   <<"values">> => list([float()]())
%% }
-type double_criteria_condition() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{
%%   <<"resourceArn">> := string()
%% }
-type list_tags_for_resource_request() :: #{binary() => any()}.

%% Example:
%% update_enrollment_configuration_response() :: #{
%%   <<"lastUpdatedTimestamp">> => [non_neg_integer()],
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => [string()]
%% }
-type update_enrollment_configuration_response() :: #{binary() => any()}.

%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type throttling_exception() :: #{binary() => any()}.

%% Example:
%% get_automation_event_response() :: #{
%%   <<"accountId">> => string(),
%%   <<"completedTimestamp">> => [non_neg_integer()],
%%   <<"createdTimestamp">> => [non_neg_integer()],
%%   <<"estimatedMonthlySavings">> => estimated_monthly_savings(),
%%   <<"eventDescription">> => [string()],
%%   <<"eventId">> => string(),
%%   <<"eventStatus">> => list(any()),
%%   <<"eventStatusReason">> => [string()],
%%   <<"eventType">> => list(any()),
%%   <<"recommendedActionId">> => string(),
%%   <<"region">> => [string()],
%%   <<"resourceArn">> => string(),
%%   <<"resourceId">> => string(),
%%   <<"resourceType">> => list(any()),
%%   <<"ruleId">> => string()
%% }
-type get_automation_event_response() :: #{binary() => any()}.

%% Example:
%% create_automation_rule_response() :: #{
%%   <<"createdTimestamp">> => [non_neg_integer()],
%%   <<"criteria">> => criteria(),
%%   <<"description">> => [string()],
%%   <<"name">> => string(),
%%   <<"organizationConfiguration">> => organization_configuration(),
%%   <<"priority">> => [string()],
%%   <<"recommendedActionTypes">> => list(list(any())()),
%%   <<"ruleArn">> => string(),
%%   <<"ruleId">> => string(),
%%   <<"ruleRevision">> => [float()],
%%   <<"ruleType">> => list(any()),
%%   <<"schedule">> => schedule(),
%%   <<"status">> => list(any()),
%%   <<"tags">> => list(tag())
%% }
-type create_automation_rule_response() :: #{binary() => any()}.

%% Example:
%% resource_tags_criteria_condition() :: #{
%%   <<"comparison">> => list(any()),
%%   <<"key">> => string(),
%%   <<"values">> => list(string())
%% }
-type resource_tags_criteria_condition() :: #{binary() => any()}.

%% Example:
%% delete_automation_rule_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"ruleArn">> := string(),
%%   <<"ruleRevision">> := [float()]
%% }
-type delete_automation_rule_request() :: #{binary() => any()}.

%% Example:
%% list_recommended_action_summaries_request() :: #{
%%   <<"filters">> => list(recommended_action_filter()),
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string()
%% }
-type list_recommended_action_summaries_request() :: #{binary() => any()}.

%% Example:
%% list_automation_rule_preview_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"previewResults">> => list(preview_result())
%% }
-type list_automation_rule_preview_response() :: #{binary() => any()}.

%% Example:
%% list_recommended_actions_request() :: #{
%%   <<"filters">> => list(recommended_action_filter()),
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string()
%% }
-type list_recommended_actions_request() :: #{binary() => any()}.

%% Example:
%% list_accounts_request() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string()
%% }
-type list_accounts_request() :: #{binary() => any()}.

%% Example:
%% integer_criteria_condition() :: #{
%%   <<"comparison">> => list(any()),
%%   <<"values">> => list([integer()]())
%% }
-type integer_criteria_condition() :: #{binary() => any()}.

%% Example:
%% associate_accounts_request() :: #{
%%   <<"accountIds">> := list(string()),
%%   <<"clientToken">> => string()
%% }
-type associate_accounts_request() :: #{binary() => any()}.

%% Example:
%% get_enrollment_configuration_request() :: #{

%% }
-type get_enrollment_configuration_request() :: #{binary() => any()}.

%% Example:
%% automation_event_step() :: #{
%%   <<"completedTimestamp">> => [non_neg_integer()],
%%   <<"estimatedMonthlySavings">> => estimated_monthly_savings(),
%%   <<"eventId">> => string(),
%%   <<"resourceId">> => string(),
%%   <<"startTimestamp">> => [non_neg_integer()],
%%   <<"stepId">> => string(),
%%   <<"stepStatus">> => list(any()),
%%   <<"stepType">> => list(any())
%% }
-type automation_event_step() :: #{binary() => any()}.

%% Example:
%% list_automation_rules_response() :: #{
%%   <<"automationRules">> => list(automation_rule()),
%%   <<"nextToken">> => string()
%% }
-type list_automation_rules_response() :: #{binary() => any()}.

%% Example:
%% list_automation_event_summaries_response() :: #{
%%   <<"automationEventSummaries">> => list(automation_event_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_automation_event_summaries_response() :: #{binary() => any()}.

%% Example:
%% recommended_action_summary() :: #{
%%   <<"key">> => [string()],
%%   <<"total">> => recommended_action_total()
%% }
-type recommended_action_summary() :: #{binary() => any()}.

-type associate_accounts_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    idempotency_token_in_use_exception() | 
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    idempotent_parameter_mismatch_exception() | 
    opt_in_required_exception() | 
    forbidden_exception() | 
    not_management_account_exception().

-type create_automation_rule_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    idempotency_token_in_use_exception() | 
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    idempotent_parameter_mismatch_exception() | 
    service_quota_exceeded_exception() | 
    opt_in_required_exception() | 
    resource_not_found_exception() | 
    forbidden_exception().

-type delete_automation_rule_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    idempotency_token_in_use_exception() | 
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    idempotent_parameter_mismatch_exception() | 
    opt_in_required_exception() | 
    resource_not_found_exception() | 
    forbidden_exception().

-type disassociate_accounts_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    idempotency_token_in_use_exception() | 
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    idempotent_parameter_mismatch_exception() | 
    opt_in_required_exception() | 
    forbidden_exception() | 
    not_management_account_exception().

-type get_automation_event_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    opt_in_required_exception() | 
    resource_not_found_exception() | 
    forbidden_exception().

-type get_automation_rule_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    opt_in_required_exception() | 
    resource_not_found_exception() | 
    forbidden_exception().

-type get_enrollment_configuration_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    opt_in_required_exception() | 
    resource_not_found_exception() | 
    forbidden_exception().

-type list_accounts_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    opt_in_required_exception() | 
    forbidden_exception() | 
    not_management_account_exception().

-type list_automation_event_steps_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    opt_in_required_exception() | 
    resource_not_found_exception() | 
    forbidden_exception().

-type list_automation_event_summaries_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    opt_in_required_exception() | 
    forbidden_exception().

-type list_automation_events_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    opt_in_required_exception() | 
    forbidden_exception().

-type list_automation_rule_preview_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    opt_in_required_exception() | 
    forbidden_exception().

-type list_automation_rule_preview_summaries_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    opt_in_required_exception() | 
    forbidden_exception().

-type list_automation_rules_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    opt_in_required_exception() | 
    forbidden_exception().

-type list_recommended_action_summaries_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    opt_in_required_exception() | 
    forbidden_exception().

-type list_recommended_actions_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    opt_in_required_exception() | 
    forbidden_exception().

-type list_tags_for_resource_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    opt_in_required_exception() | 
    resource_not_found_exception() | 
    forbidden_exception().

-type rollback_automation_event_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    idempotency_token_in_use_exception() | 
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    idempotent_parameter_mismatch_exception() | 
    opt_in_required_exception() | 
    resource_not_found_exception() | 
    forbidden_exception().

-type start_automation_event_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    idempotency_token_in_use_exception() | 
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    idempotent_parameter_mismatch_exception() | 
    service_quota_exceeded_exception() | 
    opt_in_required_exception() | 
    resource_not_found_exception() | 
    forbidden_exception().

-type tag_resource_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    idempotency_token_in_use_exception() | 
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    idempotent_parameter_mismatch_exception() | 
    opt_in_required_exception() | 
    resource_not_found_exception() | 
    forbidden_exception().

-type untag_resource_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    idempotency_token_in_use_exception() | 
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    idempotent_parameter_mismatch_exception() | 
    opt_in_required_exception() | 
    resource_not_found_exception() | 
    forbidden_exception().

-type update_automation_rule_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    idempotency_token_in_use_exception() | 
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    idempotent_parameter_mismatch_exception() | 
    opt_in_required_exception() | 
    resource_not_found_exception() | 
    forbidden_exception().

-type update_enrollment_configuration_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    idempotency_token_in_use_exception() | 
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    idempotent_parameter_mismatch_exception() | 
    opt_in_required_exception() | 
    resource_not_found_exception() | 
    forbidden_exception() | 
    not_management_account_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Associates one or more member accounts with your organization's
%% management account, enabling centralized implementation of optimization
%% actions across those accounts.
%%
%% Once associated, the management account (or a delegated administrator) can
%% apply recommended actions to the member account. When you associate a
%% member account, its organization rule mode is automatically set to
%% &quot;Any allowed,&quot; which permits the management account to create
%% Automation rules that automatically apply actions to that account. If the
%% member account has not previously enabled the Automation feature, the
%% association process automatically enables it.
%%
%% Only the management account or a delegated administrator can perform this
%% action.
-spec associate_accounts(aws_client:aws_client(), associate_accounts_request()) ->
    {ok, associate_accounts_response(), tuple()} |
    {error, any()} |
    {error, associate_accounts_errors(), tuple()}.
associate_accounts(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_accounts(Client, Input, []).

-spec associate_accounts(aws_client:aws_client(), associate_accounts_request(), proplists:proplist()) ->
    {ok, associate_accounts_response(), tuple()} |
    {error, any()} |
    {error, associate_accounts_errors(), tuple()}.
associate_accounts(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateAccounts">>, Input, Options).

%% @doc Creates a new automation rule to apply recommended actions to
%% resources based on specified criteria.
-spec create_automation_rule(aws_client:aws_client(), create_automation_rule_request()) ->
    {ok, create_automation_rule_response(), tuple()} |
    {error, any()} |
    {error, create_automation_rule_errors(), tuple()}.
create_automation_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_automation_rule(Client, Input, []).

-spec create_automation_rule(aws_client:aws_client(), create_automation_rule_request(), proplists:proplist()) ->
    {ok, create_automation_rule_response(), tuple()} |
    {error, any()} |
    {error, create_automation_rule_errors(), tuple()}.
create_automation_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateAutomationRule">>, Input, Options).

%% @doc Deletes an existing automation rule.
-spec delete_automation_rule(aws_client:aws_client(), delete_automation_rule_request()) ->
    {ok, delete_automation_rule_response(), tuple()} |
    {error, any()} |
    {error, delete_automation_rule_errors(), tuple()}.
delete_automation_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_automation_rule(Client, Input, []).

-spec delete_automation_rule(aws_client:aws_client(), delete_automation_rule_request(), proplists:proplist()) ->
    {ok, delete_automation_rule_response(), tuple()} |
    {error, any()} |
    {error, delete_automation_rule_errors(), tuple()}.
delete_automation_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAutomationRule">>, Input, Options).

%% @doc Disassociates member accounts from your organization's management
%% account, removing centralized automation capabilities.
%%
%% Once disassociated, organization rules no longer apply to the member
%% account, and the management account (or delegated administrator) cannot
%% create Automation rules for that account.
%%
%% Only the management account or a delegated administrator can perform this
%% action.
-spec disassociate_accounts(aws_client:aws_client(), disassociate_accounts_request()) ->
    {ok, disassociate_accounts_response(), tuple()} |
    {error, any()} |
    {error, disassociate_accounts_errors(), tuple()}.
disassociate_accounts(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_accounts(Client, Input, []).

-spec disassociate_accounts(aws_client:aws_client(), disassociate_accounts_request(), proplists:proplist()) ->
    {ok, disassociate_accounts_response(), tuple()} |
    {error, any()} |
    {error, disassociate_accounts_errors(), tuple()}.
disassociate_accounts(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateAccounts">>, Input, Options).

%% @doc Retrieves details about a specific automation event.
-spec get_automation_event(aws_client:aws_client(), get_automation_event_request()) ->
    {ok, get_automation_event_response(), tuple()} |
    {error, any()} |
    {error, get_automation_event_errors(), tuple()}.
get_automation_event(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_automation_event(Client, Input, []).

-spec get_automation_event(aws_client:aws_client(), get_automation_event_request(), proplists:proplist()) ->
    {ok, get_automation_event_response(), tuple()} |
    {error, any()} |
    {error, get_automation_event_errors(), tuple()}.
get_automation_event(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAutomationEvent">>, Input, Options).

%% @doc Retrieves details about a specific automation rule.
-spec get_automation_rule(aws_client:aws_client(), get_automation_rule_request()) ->
    {ok, get_automation_rule_response(), tuple()} |
    {error, any()} |
    {error, get_automation_rule_errors(), tuple()}.
get_automation_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_automation_rule(Client, Input, []).

-spec get_automation_rule(aws_client:aws_client(), get_automation_rule_request(), proplists:proplist()) ->
    {ok, get_automation_rule_response(), tuple()} |
    {error, any()} |
    {error, get_automation_rule_errors(), tuple()}.
get_automation_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAutomationRule">>, Input, Options).

%% @doc Retrieves the current enrollment configuration for Compute Optimizer
%% Automation.
-spec get_enrollment_configuration(aws_client:aws_client(), get_enrollment_configuration_request()) ->
    {ok, get_enrollment_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_enrollment_configuration_errors(), tuple()}.
get_enrollment_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_enrollment_configuration(Client, Input, []).

-spec get_enrollment_configuration(aws_client:aws_client(), get_enrollment_configuration_request(), proplists:proplist()) ->
    {ok, get_enrollment_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_enrollment_configuration_errors(), tuple()}.
get_enrollment_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetEnrollmentConfiguration">>, Input, Options).

%% @doc Lists the accounts in your organization that are enrolled in Compute
%% Optimizer and whether they have enabled Automation.
%%
%% Only the management account or a delegated administrator can perform this
%% action.
-spec list_accounts(aws_client:aws_client(), list_accounts_request()) ->
    {ok, list_accounts_response(), tuple()} |
    {error, any()} |
    {error, list_accounts_errors(), tuple()}.
list_accounts(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_accounts(Client, Input, []).

-spec list_accounts(aws_client:aws_client(), list_accounts_request(), proplists:proplist()) ->
    {ok, list_accounts_response(), tuple()} |
    {error, any()} |
    {error, list_accounts_errors(), tuple()}.
list_accounts(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAccounts">>, Input, Options).

%% @doc Lists the steps for a specific automation event.
%%
%% You can only list steps for events created within the past year.
-spec list_automation_event_steps(aws_client:aws_client(), list_automation_event_steps_request()) ->
    {ok, list_automation_event_steps_response(), tuple()} |
    {error, any()} |
    {error, list_automation_event_steps_errors(), tuple()}.
list_automation_event_steps(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_automation_event_steps(Client, Input, []).

-spec list_automation_event_steps(aws_client:aws_client(), list_automation_event_steps_request(), proplists:proplist()) ->
    {ok, list_automation_event_steps_response(), tuple()} |
    {error, any()} |
    {error, list_automation_event_steps_errors(), tuple()}.
list_automation_event_steps(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAutomationEventSteps">>, Input, Options).

%% @doc Provides a summary of automation events based on specified filters.
%%
%% Only events created within the past year will be included in the summary.
-spec list_automation_event_summaries(aws_client:aws_client(), list_automation_event_summaries_request()) ->
    {ok, list_automation_event_summaries_response(), tuple()} |
    {error, any()} |
    {error, list_automation_event_summaries_errors(), tuple()}.
list_automation_event_summaries(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_automation_event_summaries(Client, Input, []).

-spec list_automation_event_summaries(aws_client:aws_client(), list_automation_event_summaries_request(), proplists:proplist()) ->
    {ok, list_automation_event_summaries_response(), tuple()} |
    {error, any()} |
    {error, list_automation_event_summaries_errors(), tuple()}.
list_automation_event_summaries(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAutomationEventSummaries">>, Input, Options).

%% @doc Lists automation events based on specified filters.
%%
%% You can retrieve events that were created within the past year.
-spec list_automation_events(aws_client:aws_client(), list_automation_events_request()) ->
    {ok, list_automation_events_response(), tuple()} |
    {error, any()} |
    {error, list_automation_events_errors(), tuple()}.
list_automation_events(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_automation_events(Client, Input, []).

-spec list_automation_events(aws_client:aws_client(), list_automation_events_request(), proplists:proplist()) ->
    {ok, list_automation_events_response(), tuple()} |
    {error, any()} |
    {error, list_automation_events_errors(), tuple()}.
list_automation_events(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAutomationEvents">>, Input, Options).

%% @doc Returns a preview of the recommended actions that match your
%% Automation rule's configuration and criteria.
-spec list_automation_rule_preview(aws_client:aws_client(), list_automation_rule_preview_request()) ->
    {ok, list_automation_rule_preview_response(), tuple()} |
    {error, any()} |
    {error, list_automation_rule_preview_errors(), tuple()}.
list_automation_rule_preview(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_automation_rule_preview(Client, Input, []).

-spec list_automation_rule_preview(aws_client:aws_client(), list_automation_rule_preview_request(), proplists:proplist()) ->
    {ok, list_automation_rule_preview_response(), tuple()} |
    {error, any()} |
    {error, list_automation_rule_preview_errors(), tuple()}.
list_automation_rule_preview(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAutomationRulePreview">>, Input, Options).

%% @doc Returns a summary of the recommended actions that match your rule
%% preview configuration and criteria.
-spec list_automation_rule_preview_summaries(aws_client:aws_client(), list_automation_rule_preview_summaries_request()) ->
    {ok, list_automation_rule_preview_summaries_response(), tuple()} |
    {error, any()} |
    {error, list_automation_rule_preview_summaries_errors(), tuple()}.
list_automation_rule_preview_summaries(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_automation_rule_preview_summaries(Client, Input, []).

-spec list_automation_rule_preview_summaries(aws_client:aws_client(), list_automation_rule_preview_summaries_request(), proplists:proplist()) ->
    {ok, list_automation_rule_preview_summaries_response(), tuple()} |
    {error, any()} |
    {error, list_automation_rule_preview_summaries_errors(), tuple()}.
list_automation_rule_preview_summaries(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAutomationRulePreviewSummaries">>, Input, Options).

%% @doc Lists the automation rules that match specified filters.
-spec list_automation_rules(aws_client:aws_client(), list_automation_rules_request()) ->
    {ok, list_automation_rules_response(), tuple()} |
    {error, any()} |
    {error, list_automation_rules_errors(), tuple()}.
list_automation_rules(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_automation_rules(Client, Input, []).

-spec list_automation_rules(aws_client:aws_client(), list_automation_rules_request(), proplists:proplist()) ->
    {ok, list_automation_rules_response(), tuple()} |
    {error, any()} |
    {error, list_automation_rules_errors(), tuple()}.
list_automation_rules(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAutomationRules">>, Input, Options).

%% @doc Provides a summary of recommended actions based on specified filters.
%%
%% Management accounts and delegated administrators can retrieve recommended
%% actions that include associated member accounts. You can associate a
%% member account using `AssociateAccounts'.
-spec list_recommended_action_summaries(aws_client:aws_client(), list_recommended_action_summaries_request()) ->
    {ok, list_recommended_action_summaries_response(), tuple()} |
    {error, any()} |
    {error, list_recommended_action_summaries_errors(), tuple()}.
list_recommended_action_summaries(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_recommended_action_summaries(Client, Input, []).

-spec list_recommended_action_summaries(aws_client:aws_client(), list_recommended_action_summaries_request(), proplists:proplist()) ->
    {ok, list_recommended_action_summaries_response(), tuple()} |
    {error, any()} |
    {error, list_recommended_action_summaries_errors(), tuple()}.
list_recommended_action_summaries(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListRecommendedActionSummaries">>, Input, Options).

%% @doc Lists the recommended actions based that match specified filters.
%%
%% Management accounts and delegated administrators can retrieve recommended
%% actions that include associated member accounts. You can associate a
%% member account using `AssociateAccounts'.
-spec list_recommended_actions(aws_client:aws_client(), list_recommended_actions_request()) ->
    {ok, list_recommended_actions_response(), tuple()} |
    {error, any()} |
    {error, list_recommended_actions_errors(), tuple()}.
list_recommended_actions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_recommended_actions(Client, Input, []).

-spec list_recommended_actions(aws_client:aws_client(), list_recommended_actions_request(), proplists:proplist()) ->
    {ok, list_recommended_actions_response(), tuple()} |
    {error, any()} |
    {error, list_recommended_actions_errors(), tuple()}.
list_recommended_actions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListRecommendedActions">>, Input, Options).

%% @doc Lists the tags for a specified resource.
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

%% @doc Initiates a rollback for a completed automation event.
%%
%% Management accounts and delegated administrators can only initiate a
%% rollback for events belonging to associated member accounts. You can
%% associate a member account using `AssociateAccounts'.
-spec rollback_automation_event(aws_client:aws_client(), rollback_automation_event_request()) ->
    {ok, rollback_automation_event_response(), tuple()} |
    {error, any()} |
    {error, rollback_automation_event_errors(), tuple()}.
rollback_automation_event(Client, Input)
  when is_map(Client), is_map(Input) ->
    rollback_automation_event(Client, Input, []).

-spec rollback_automation_event(aws_client:aws_client(), rollback_automation_event_request(), proplists:proplist()) ->
    {ok, rollback_automation_event_response(), tuple()} |
    {error, any()} |
    {error, rollback_automation_event_errors(), tuple()}.
rollback_automation_event(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RollbackAutomationEvent">>, Input, Options).

%% @doc Initiates a one-time, on-demand automation for the specified
%% recommended action.
%%
%% Management accounts and delegated administrators can only initiate
%% recommended actions for associated member accounts. You can associate a
%% member account using `AssociateAccounts'.
-spec start_automation_event(aws_client:aws_client(), start_automation_event_request()) ->
    {ok, start_automation_event_response(), tuple()} |
    {error, any()} |
    {error, start_automation_event_errors(), tuple()}.
start_automation_event(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_automation_event(Client, Input, []).

-spec start_automation_event(aws_client:aws_client(), start_automation_event_request(), proplists:proplist()) ->
    {ok, start_automation_event_response(), tuple()} |
    {error, any()} |
    {error, start_automation_event_errors(), tuple()}.
start_automation_event(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartAutomationEvent">>, Input, Options).

%% @doc Adds tags to the specified resource.
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

%% @doc Removes tags from the specified resource.
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

%% @doc Updates an existing automation rule.
-spec update_automation_rule(aws_client:aws_client(), update_automation_rule_request()) ->
    {ok, update_automation_rule_response(), tuple()} |
    {error, any()} |
    {error, update_automation_rule_errors(), tuple()}.
update_automation_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_automation_rule(Client, Input, []).

-spec update_automation_rule(aws_client:aws_client(), update_automation_rule_request(), proplists:proplist()) ->
    {ok, update_automation_rule_response(), tuple()} |
    {error, any()} |
    {error, update_automation_rule_errors(), tuple()}.
update_automation_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateAutomationRule">>, Input, Options).

%% @doc Updates your account’s Compute Optimizer Automation enrollment
%% configuration.
-spec update_enrollment_configuration(aws_client:aws_client(), update_enrollment_configuration_request()) ->
    {ok, update_enrollment_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_enrollment_configuration_errors(), tuple()}.
update_enrollment_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_enrollment_configuration(Client, Input, []).

-spec update_enrollment_configuration(aws_client:aws_client(), update_enrollment_configuration_request(), proplists:proplist()) ->
    {ok, update_enrollment_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_enrollment_configuration_errors(), tuple()}.
update_enrollment_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateEnrollmentConfiguration">>, Input, Options).

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
    Client1 = Client#{service => <<"aco-automation">>},
    Host = build_host(<<"aco-automation">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.0">>},
        {<<"X-Amz-Target">>, <<"ComputeOptimizerAutomationService.", Action/binary>>}
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
