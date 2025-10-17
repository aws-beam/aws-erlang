%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Billing Conductor is a fully managed service that you can use to
%% customize a pro forma:
%% https://docs.aws.amazon.com/billingconductor/latest/userguide/understanding-eb.html#eb-other-definitions
%% version of your billing data each month, to accurately show or chargeback
%% your end customers.
%%
%% Billing Conductor doesn't change the way you're billed by Amazon
%% Web Services each month by design. Instead, it provides you with a
%% mechanism to configure, generate, and display rates to certain customers
%% over a given billing period. You can also analyze the difference between
%% the rates you apply to your accounting groupings relative to your actual
%% rates from Amazon Web Services. As a result of your Billing Conductor
%% configuration, the payer account can also see the custom rate applied on
%% the billing details page of the Billing console:
%% https://console.aws.amazon.com/billing, or configure a cost and usage
%% report per billing group.
%%
%% This documentation shows how you can configure Billing Conductor by using
%% its API. For more information about using the Billing Conductor:
%% https://console.aws.amazon.com/billingconductor/ user interface, see the
%% Billing Conductor User Guide:
%% https://docs.aws.amazon.com/billingconductor/latest/userguide/what-is-billingconductor.html.
-module(aws_billingconductor).

-export([associate_accounts/2,
         associate_accounts/3,
         associate_pricing_rules/2,
         associate_pricing_rules/3,
         batch_associate_resources_to_custom_line_item/2,
         batch_associate_resources_to_custom_line_item/3,
         batch_disassociate_resources_from_custom_line_item/2,
         batch_disassociate_resources_from_custom_line_item/3,
         create_billing_group/2,
         create_billing_group/3,
         create_custom_line_item/2,
         create_custom_line_item/3,
         create_pricing_plan/2,
         create_pricing_plan/3,
         create_pricing_rule/2,
         create_pricing_rule/3,
         delete_billing_group/2,
         delete_billing_group/3,
         delete_custom_line_item/2,
         delete_custom_line_item/3,
         delete_pricing_plan/2,
         delete_pricing_plan/3,
         delete_pricing_rule/2,
         delete_pricing_rule/3,
         disassociate_accounts/2,
         disassociate_accounts/3,
         disassociate_pricing_rules/2,
         disassociate_pricing_rules/3,
         get_billing_group_cost_report/2,
         get_billing_group_cost_report/3,
         list_account_associations/2,
         list_account_associations/3,
         list_billing_group_cost_reports/2,
         list_billing_group_cost_reports/3,
         list_billing_groups/2,
         list_billing_groups/3,
         list_custom_line_item_versions/2,
         list_custom_line_item_versions/3,
         list_custom_line_items/2,
         list_custom_line_items/3,
         list_pricing_plans/2,
         list_pricing_plans/3,
         list_pricing_plans_associated_with_pricing_rule/2,
         list_pricing_plans_associated_with_pricing_rule/3,
         list_pricing_rules/2,
         list_pricing_rules/3,
         list_pricing_rules_associated_to_pricing_plan/2,
         list_pricing_rules_associated_to_pricing_plan/3,
         list_resources_associated_to_custom_line_item/2,
         list_resources_associated_to_custom_line_item/3,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_billing_group/2,
         update_billing_group/3,
         update_custom_line_item/2,
         update_custom_line_item/3,
         update_pricing_plan/2,
         update_pricing_plan/3,
         update_pricing_rule/2,
         update_pricing_rule/3]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% delete_pricing_rule_output() :: #{
%%   <<"Arn">> => string()
%% }
-type delete_pricing_rule_output() :: #{binary() => any()}.


%% Example:
%% list_custom_line_item_percentage_charge_details() :: #{
%%   <<"PercentageValue">> => float()
%% }
-type list_custom_line_item_percentage_charge_details() :: #{binary() => any()}.


%% Example:
%% list_pricing_rules_output() :: #{
%%   <<"BillingPeriod">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"PricingRules">> => list(pricing_rule_list_element())
%% }
-type list_pricing_rules_output() :: #{binary() => any()}.


%% Example:
%% list_resources_associated_to_custom_line_item_input() :: #{
%%   <<"Arn">> := string(),
%%   <<"BillingPeriod">> => string(),
%%   <<"Filters">> => list_resources_associated_to_custom_line_item_filter(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_resources_associated_to_custom_line_item_input() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"Tags">> => map()
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% list_pricing_rules_input() :: #{
%%   <<"BillingPeriod">> => string(),
%%   <<"Filters">> => list_pricing_rules_filter(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_pricing_rules_input() :: #{binary() => any()}.


%% Example:
%% update_custom_line_item_charge_details() :: #{
%%   <<"Flat">> => update_custom_line_item_flat_charge_details(),
%%   <<"LineItemFilters">> => list(line_item_filter()),
%%   <<"Percentage">> => update_custom_line_item_percentage_charge_details()
%% }
-type update_custom_line_item_charge_details() :: #{binary() => any()}.


%% Example:
%% disassociate_pricing_rules_input() :: #{
%%   <<"Arn">> := string(),
%%   <<"PricingRuleArns">> := list(string())
%% }
-type disassociate_pricing_rules_input() :: #{binary() => any()}.


%% Example:
%% update_billing_group_input() :: #{
%%   <<"AccountGrouping">> => update_billing_group_account_grouping(),
%%   <<"Arn">> := string(),
%%   <<"ComputationPreference">> => computation_preference(),
%%   <<"Description">> => string(),
%%   <<"Name">> => string(),
%%   <<"Status">> => list(any())
%% }
-type update_billing_group_input() :: #{binary() => any()}.


%% Example:
%% associate_pricing_rules_output() :: #{
%%   <<"Arn">> => string()
%% }
-type associate_pricing_rules_output() :: #{binary() => any()}.


%% Example:
%% create_free_tier_config() :: #{
%%   <<"Activated">> => boolean()
%% }
-type create_free_tier_config() :: #{binary() => any()}.


%% Example:
%% list_pricing_plans_output() :: #{
%%   <<"BillingPeriod">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"PricingPlans">> => list(pricing_plan_list_element())
%% }
-type list_pricing_plans_output() :: #{binary() => any()}.


%% Example:
%% list_pricing_rules_associated_to_pricing_plan_output() :: #{
%%   <<"BillingPeriod">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"PricingPlanArn">> => string(),
%%   <<"PricingRuleArns">> => list(string())
%% }
-type list_pricing_rules_associated_to_pricing_plan_output() :: #{binary() => any()}.


%% Example:
%% create_billing_group_input() :: #{
%%   <<"AccountGrouping">> := account_grouping(),
%%   <<"ClientToken">> => string(),
%%   <<"ComputationPreference">> := computation_preference(),
%%   <<"Description">> => string(),
%%   <<"Name">> := string(),
%%   <<"PrimaryAccountId">> => string(),
%%   <<"Tags">> => map()
%% }
-type create_billing_group_input() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% delete_pricing_rule_input() :: #{
%%   <<"Arn">> := string()
%% }
-type delete_pricing_rule_input() :: #{binary() => any()}.


%% Example:
%% get_billing_group_cost_report_input() :: #{
%%   <<"Arn">> := string(),
%%   <<"BillingPeriodRange">> => billing_period_range(),
%%   <<"GroupBy">> => list(list(any())()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type get_billing_group_cost_report_input() :: #{binary() => any()}.


%% Example:
%% list_custom_line_item_charge_details() :: #{
%%   <<"Flat">> => list_custom_line_item_flat_charge_details(),
%%   <<"LineItemFilters">> => list(line_item_filter()),
%%   <<"Percentage">> => list_custom_line_item_percentage_charge_details(),
%%   <<"Type">> => list(any())
%% }
-type list_custom_line_item_charge_details() :: #{binary() => any()}.


%% Example:
%% list_pricing_plans_associated_with_pricing_rule_input() :: #{
%%   <<"BillingPeriod">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"PricingRuleArn">> := string()
%% }
-type list_pricing_plans_associated_with_pricing_rule_input() :: #{binary() => any()}.


%% Example:
%% create_pricing_rule_input() :: #{
%%   <<"BillingEntity">> => string(),
%%   <<"ClientToken">> => string(),
%%   <<"Description">> => string(),
%%   <<"ModifierPercentage">> => float(),
%%   <<"Name">> := string(),
%%   <<"Operation">> => string(),
%%   <<"Scope">> := list(any()),
%%   <<"Service">> => string(),
%%   <<"Tags">> => map(),
%%   <<"Tiering">> => create_tiering_input(),
%%   <<"Type">> := list(any()),
%%   <<"UsageType">> => string()
%% }
-type create_pricing_rule_input() :: #{binary() => any()}.


%% Example:
%% update_custom_line_item_percentage_charge_details() :: #{
%%   <<"PercentageValue">> => float()
%% }
-type update_custom_line_item_percentage_charge_details() :: #{binary() => any()}.


%% Example:
%% create_pricing_plan_output() :: #{
%%   <<"Arn">> => string()
%% }
-type create_pricing_plan_output() :: #{binary() => any()}.


%% Example:
%% list_billing_group_cost_reports_input() :: #{
%%   <<"BillingPeriod">> => string(),
%%   <<"Filters">> => list_billing_group_cost_reports_filter(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_billing_group_cost_reports_input() :: #{binary() => any()}.


%% Example:
%% create_pricing_rule_output() :: #{
%%   <<"Arn">> => string()
%% }
-type create_pricing_rule_output() :: #{binary() => any()}.


%% Example:
%% free_tier_config() :: #{
%%   <<"Activated">> => boolean()
%% }
-type free_tier_config() :: #{binary() => any()}.


%% Example:
%% associate_resource_error() :: #{
%%   <<"Message">> => string(),
%%   <<"Reason">> => list(any())
%% }
-type associate_resource_error() :: #{binary() => any()}.


%% Example:
%% create_billing_group_output() :: #{
%%   <<"Arn">> => string()
%% }
-type create_billing_group_output() :: #{binary() => any()}.


%% Example:
%% custom_line_item_charge_details() :: #{
%%   <<"Flat">> => custom_line_item_flat_charge_details(),
%%   <<"LineItemFilters">> => list(line_item_filter()),
%%   <<"Percentage">> => custom_line_item_percentage_charge_details(),
%%   <<"Type">> => list(any())
%% }
-type custom_line_item_charge_details() :: #{binary() => any()}.


%% Example:
%% batch_associate_resources_to_custom_line_item_input() :: #{
%%   <<"BillingPeriodRange">> => custom_line_item_billing_period_range(),
%%   <<"ResourceArns">> := list(string()),
%%   <<"TargetArn">> := string()
%% }
-type batch_associate_resources_to_custom_line_item_input() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"TagKeys">> => list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% list_custom_line_items_input() :: #{
%%   <<"BillingPeriod">> => string(),
%%   <<"Filters">> => list_custom_line_items_filter(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_custom_line_items_input() :: #{binary() => any()}.


%% Example:
%% list_custom_line_item_versions_output() :: #{
%%   <<"CustomLineItemVersions">> => list(custom_line_item_version_list_element()),
%%   <<"NextToken">> => string()
%% }
-type list_custom_line_item_versions_output() :: #{binary() => any()}.


%% Example:
%% associate_pricing_rules_input() :: #{
%%   <<"Arn">> := string(),
%%   <<"PricingRuleArns">> := list(string())
%% }
-type associate_pricing_rules_input() :: #{binary() => any()}.


%% Example:
%% custom_line_item_billing_period_range() :: #{
%%   <<"ExclusiveEndBillingPeriod">> => string(),
%%   <<"InclusiveStartBillingPeriod">> => string()
%% }
-type custom_line_item_billing_period_range() :: #{binary() => any()}.


%% Example:
%% list_custom_line_items_output() :: #{
%%   <<"CustomLineItems">> => list(custom_line_item_list_element()),
%%   <<"NextToken">> => string()
%% }
-type list_custom_line_items_output() :: #{binary() => any()}.


%% Example:
%% presentation_object() :: #{
%%   <<"Service">> => string()
%% }
-type presentation_object() :: #{binary() => any()}.


%% Example:
%% update_pricing_plan_output() :: #{
%%   <<"Arn">> => string(),
%%   <<"Description">> => string(),
%%   <<"LastModifiedTime">> => float(),
%%   <<"Name">> => string(),
%%   <<"Size">> => float()
%% }
-type update_pricing_plan_output() :: #{binary() => any()}.


%% Example:
%% update_billing_group_output() :: #{
%%   <<"AccountGrouping">> => update_billing_group_account_grouping(),
%%   <<"Arn">> => string(),
%%   <<"Description">> => string(),
%%   <<"LastModifiedTime">> => float(),
%%   <<"Name">> => string(),
%%   <<"PricingPlanArn">> => string(),
%%   <<"PrimaryAccountId">> => string(),
%%   <<"Size">> => float(),
%%   <<"Status">> => list(any()),
%%   <<"StatusReason">> => string()
%% }
-type update_billing_group_output() :: #{binary() => any()}.


%% Example:
%% batch_disassociate_resources_from_custom_line_item_output() :: #{
%%   <<"FailedDisassociatedResources">> => list(disassociate_resource_response_element()),
%%   <<"SuccessfullyDisassociatedResources">> => list(disassociate_resource_response_element())
%% }
-type batch_disassociate_resources_from_custom_line_item_output() :: #{binary() => any()}.


%% Example:
%% computation_preference() :: #{
%%   <<"PricingPlanArn">> => string()
%% }
-type computation_preference() :: #{binary() => any()}.


%% Example:
%% pricing_plan_list_element() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreationTime">> => float(),
%%   <<"Description">> => string(),
%%   <<"LastModifiedTime">> => float(),
%%   <<"Name">> => string(),
%%   <<"Size">> => float()
%% }
-type pricing_plan_list_element() :: #{binary() => any()}.


%% Example:
%% list_resources_associated_to_custom_line_item_response_element() :: #{
%%   <<"Arn">> => string(),
%%   <<"EndBillingPeriod">> => string(),
%%   <<"Relationship">> => list(any())
%% }
-type list_resources_associated_to_custom_line_item_response_element() :: #{binary() => any()}.


%% Example:
%% disassociate_pricing_rules_output() :: #{
%%   <<"Arn">> => string()
%% }
-type disassociate_pricing_rules_output() :: #{binary() => any()}.


%% Example:
%% delete_billing_group_output() :: #{
%%   <<"Arn">> => string()
%% }
-type delete_billing_group_output() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"Reason">> => list(any()),
%%   <<"ResourceId">> => string(),
%%   <<"ResourceType">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"ResourceId">> => string(),
%%   <<"ResourceType">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% billing_period_range() :: #{
%%   <<"ExclusiveEndBillingPeriod">> => string(),
%%   <<"InclusiveStartBillingPeriod">> => string()
%% }
-type billing_period_range() :: #{binary() => any()}.


%% Example:
%% list_pricing_plans_associated_with_pricing_rule_output() :: #{
%%   <<"BillingPeriod">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"PricingPlanArns">> => list(string()),
%%   <<"PricingRuleArn">> => string()
%% }
-type list_pricing_plans_associated_with_pricing_rule_output() :: #{binary() => any()}.


%% Example:
%% update_tiering_input() :: #{
%%   <<"FreeTier">> => update_free_tier_config()
%% }
-type update_tiering_input() :: #{binary() => any()}.


%% Example:
%% list_billing_groups_output() :: #{
%%   <<"BillingGroups">> => list(billing_group_list_element()),
%%   <<"NextToken">> => string()
%% }
-type list_billing_groups_output() :: #{binary() => any()}.


%% Example:
%% list_custom_line_item_versions_input() :: #{
%%   <<"Arn">> := string(),
%%   <<"Filters">> => list_custom_line_item_versions_filter(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_custom_line_item_versions_input() :: #{binary() => any()}.


%% Example:
%% delete_pricing_plan_input() :: #{
%%   <<"Arn">> := string()
%% }
-type delete_pricing_plan_input() :: #{binary() => any()}.


%% Example:
%% list_account_associations_input() :: #{
%%   <<"BillingPeriod">> => string(),
%%   <<"Filters">> => list_account_associations_filter(),
%%   <<"NextToken">> => string()
%% }
-type list_account_associations_input() :: #{binary() => any()}.


%% Example:
%% list_custom_line_item_versions_filter() :: #{
%%   <<"BillingPeriodRange">> => list_custom_line_item_versions_billing_period_range_filter()
%% }
-type list_custom_line_item_versions_filter() :: #{binary() => any()}.


%% Example:
%% billing_group_cost_report_result_element() :: #{
%%   <<"AWSCost">> => string(),
%%   <<"Arn">> => string(),
%%   <<"Attributes">> => list(attribute()),
%%   <<"Currency">> => string(),
%%   <<"Margin">> => string(),
%%   <<"MarginPercentage">> => string(),
%%   <<"ProformaCost">> => string()
%% }
-type billing_group_cost_report_result_element() :: #{binary() => any()}.


%% Example:
%% list_pricing_rules_associated_to_pricing_plan_input() :: #{
%%   <<"BillingPeriod">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"PricingPlanArn">> := string()
%% }
-type list_pricing_rules_associated_to_pricing_plan_input() :: #{binary() => any()}.


%% Example:
%% account_grouping() :: #{
%%   <<"AutoAssociate">> => [boolean()],
%%   <<"LinkedAccountIds">> => list(string())
%% }
-type account_grouping() :: #{binary() => any()}.


%% Example:
%% update_custom_line_item_flat_charge_details() :: #{
%%   <<"ChargeValue">> => float()
%% }
-type update_custom_line_item_flat_charge_details() :: #{binary() => any()}.


%% Example:
%% create_pricing_plan_input() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"Description">> => string(),
%%   <<"Name">> := string(),
%%   <<"PricingRuleArns">> => list(string()),
%%   <<"Tags">> => map()
%% }
-type create_pricing_plan_input() :: #{binary() => any()}.


%% Example:
%% list_pricing_plans_filter() :: #{
%%   <<"Arns">> => list(string())
%% }
-type list_pricing_plans_filter() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"Tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% list_custom_line_item_flat_charge_details() :: #{
%%   <<"ChargeValue">> => float()
%% }
-type list_custom_line_item_flat_charge_details() :: #{binary() => any()}.


%% Example:
%% validation_exception_field() :: #{
%%   <<"Message">> => string(),
%%   <<"Name">> => string()
%% }
-type validation_exception_field() :: #{binary() => any()}.


%% Example:
%% list_resources_associated_to_custom_line_item_output() :: #{
%%   <<"Arn">> => string(),
%%   <<"AssociatedResources">> => list(list_resources_associated_to_custom_line_item_response_element()),
%%   <<"NextToken">> => string()
%% }
-type list_resources_associated_to_custom_line_item_output() :: #{binary() => any()}.


%% Example:
%% list_account_associations_output() :: #{
%%   <<"LinkedAccounts">> => list(account_associations_list_element()),
%%   <<"NextToken">> => string()
%% }
-type list_account_associations_output() :: #{binary() => any()}.


%% Example:
%% list_pricing_plans_input() :: #{
%%   <<"BillingPeriod">> => string(),
%%   <<"Filters">> => list_pricing_plans_filter(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_pricing_plans_input() :: #{binary() => any()}.


%% Example:
%% update_pricing_plan_input() :: #{
%%   <<"Arn">> := string(),
%%   <<"Description">> => string(),
%%   <<"Name">> => string()
%% }
-type update_pricing_plan_input() :: #{binary() => any()}.


%% Example:
%% list_account_associations_filter() :: #{
%%   <<"AccountId">> => string(),
%%   <<"AccountIds">> => list(string()),
%%   <<"Association">> => string()
%% }
-type list_account_associations_filter() :: #{binary() => any()}.


%% Example:
%% list_billing_group_cost_reports_filter() :: #{
%%   <<"BillingGroupArns">> => list(string())
%% }
-type list_billing_group_cost_reports_filter() :: #{binary() => any()}.


%% Example:
%% list_pricing_rules_filter() :: #{
%%   <<"Arns">> => list(string())
%% }
-type list_pricing_rules_filter() :: #{binary() => any()}.


%% Example:
%% associate_resource_response_element() :: #{
%%   <<"Arn">> => string(),
%%   <<"Error">> => associate_resource_error()
%% }
-type associate_resource_response_element() :: #{binary() => any()}.


%% Example:
%% custom_line_item_flat_charge_details() :: #{
%%   <<"ChargeValue">> => float()
%% }
-type custom_line_item_flat_charge_details() :: #{binary() => any()}.


%% Example:
%% update_pricing_rule_output() :: #{
%%   <<"Arn">> => string(),
%%   <<"AssociatedPricingPlanCount">> => float(),
%%   <<"BillingEntity">> => string(),
%%   <<"Description">> => string(),
%%   <<"LastModifiedTime">> => float(),
%%   <<"ModifierPercentage">> => float(),
%%   <<"Name">> => string(),
%%   <<"Operation">> => string(),
%%   <<"Scope">> => list(any()),
%%   <<"Service">> => string(),
%%   <<"Tiering">> => update_tiering_input(),
%%   <<"Type">> => list(any()),
%%   <<"UsageType">> => string()
%% }
-type update_pricing_rule_output() :: #{binary() => any()}.


%% Example:
%% delete_custom_line_item_input() :: #{
%%   <<"Arn">> := string(),
%%   <<"BillingPeriodRange">> => custom_line_item_billing_period_range()
%% }
-type delete_custom_line_item_input() :: #{binary() => any()}.


%% Example:
%% line_item_filter() :: #{
%%   <<"Attribute">> => list(any()),
%%   <<"MatchOption">> => list(any()),
%%   <<"Values">> => list(list(any())())
%% }
-type line_item_filter() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"RetryAfterSeconds">> => integer()
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% custom_line_item_percentage_charge_details() :: #{
%%   <<"AssociatedValues">> => list(string()),
%%   <<"PercentageValue">> => float()
%% }
-type custom_line_item_percentage_charge_details() :: #{binary() => any()}.


%% Example:
%% list_billing_groups_filter() :: #{
%%   <<"Arns">> => list(string()),
%%   <<"AutoAssociate">> => [boolean()],
%%   <<"PricingPlan">> => string(),
%%   <<"Statuses">> => list(list(any())())
%% }
-type list_billing_groups_filter() :: #{binary() => any()}.


%% Example:
%% disassociate_accounts_input() :: #{
%%   <<"AccountIds">> := list(string()),
%%   <<"Arn">> := string()
%% }
-type disassociate_accounts_input() :: #{binary() => any()}.


%% Example:
%% list_billing_group_account_grouping() :: #{
%%   <<"AutoAssociate">> => [boolean()]
%% }
-type list_billing_group_account_grouping() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"Message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% get_billing_group_cost_report_output() :: #{
%%   <<"BillingGroupCostReportResults">> => list(billing_group_cost_report_result_element()),
%%   <<"NextToken">> => string()
%% }
-type get_billing_group_cost_report_output() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% list_custom_line_items_filter() :: #{
%%   <<"AccountIds">> => list(string()),
%%   <<"Arns">> => list(string()),
%%   <<"BillingGroups">> => list(string()),
%%   <<"Names">> => list(string())
%% }
-type list_custom_line_items_filter() :: #{binary() => any()}.


%% Example:
%% create_custom_line_item_output() :: #{
%%   <<"Arn">> => string()
%% }
-type create_custom_line_item_output() :: #{binary() => any()}.


%% Example:
%% update_billing_group_account_grouping() :: #{
%%   <<"AutoAssociate">> => [boolean()]
%% }
-type update_billing_group_account_grouping() :: #{binary() => any()}.


%% Example:
%% disassociate_resource_response_element() :: #{
%%   <<"Arn">> => string(),
%%   <<"Error">> => associate_resource_error()
%% }
-type disassociate_resource_response_element() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"Fields">> => list(validation_exception_field()),
%%   <<"Message">> => string(),
%%   <<"Reason">> => list(any())
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% batch_disassociate_resources_from_custom_line_item_input() :: #{
%%   <<"BillingPeriodRange">> => custom_line_item_billing_period_range(),
%%   <<"ResourceArns">> := list(string()),
%%   <<"TargetArn">> := string()
%% }
-type batch_disassociate_resources_from_custom_line_item_input() :: #{binary() => any()}.


%% Example:
%% list_custom_line_item_versions_billing_period_range_filter() :: #{
%%   <<"EndBillingPeriod">> => string(),
%%   <<"StartBillingPeriod">> => string()
%% }
-type list_custom_line_item_versions_billing_period_range_filter() :: #{binary() => any()}.


%% Example:
%% service_limit_exceeded_exception() :: #{
%%   <<"LimitCode">> => string(),
%%   <<"Message">> => string(),
%%   <<"ResourceId">> => string(),
%%   <<"ResourceType">> => string(),
%%   <<"ServiceCode">> => string()
%% }
-type service_limit_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% custom_line_item_list_element() :: #{
%%   <<"AccountId">> => string(),
%%   <<"Arn">> => string(),
%%   <<"AssociationSize">> => float(),
%%   <<"BillingGroupArn">> => string(),
%%   <<"ChargeDetails">> => list_custom_line_item_charge_details(),
%%   <<"ComputationRule">> => list(any()),
%%   <<"CreationTime">> => float(),
%%   <<"CurrencyCode">> => list(any()),
%%   <<"Description">> => string(),
%%   <<"LastModifiedTime">> => float(),
%%   <<"Name">> => string(),
%%   <<"PresentationDetails">> => presentation_object(),
%%   <<"ProductCode">> => string()
%% }
-type custom_line_item_list_element() :: #{binary() => any()}.


%% Example:
%% custom_line_item_version_list_element() :: #{
%%   <<"AccountId">> => string(),
%%   <<"Arn">> => string(),
%%   <<"AssociationSize">> => float(),
%%   <<"BillingGroupArn">> => string(),
%%   <<"ChargeDetails">> => list_custom_line_item_charge_details(),
%%   <<"ComputationRule">> => list(any()),
%%   <<"CreationTime">> => float(),
%%   <<"CurrencyCode">> => list(any()),
%%   <<"Description">> => string(),
%%   <<"EndBillingPeriod">> => string(),
%%   <<"LastModifiedTime">> => float(),
%%   <<"Name">> => string(),
%%   <<"PresentationDetails">> => presentation_object(),
%%   <<"ProductCode">> => string(),
%%   <<"StartBillingPeriod">> => string(),
%%   <<"StartTime">> => float()
%% }
-type custom_line_item_version_list_element() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"RetryAfterSeconds">> => integer()
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% update_custom_line_item_input() :: #{
%%   <<"Arn">> := string(),
%%   <<"BillingPeriodRange">> => custom_line_item_billing_period_range(),
%%   <<"ChargeDetails">> => update_custom_line_item_charge_details(),
%%   <<"Description">> => string(),
%%   <<"Name">> => string()
%% }
-type update_custom_line_item_input() :: #{binary() => any()}.


%% Example:
%% attribute() :: #{
%%   <<"Key">> => [string()],
%%   <<"Value">> => [string()]
%% }
-type attribute() :: #{binary() => any()}.


%% Example:
%% billing_group_list_element() :: #{
%%   <<"AccountGrouping">> => list_billing_group_account_grouping(),
%%   <<"Arn">> => string(),
%%   <<"ComputationPreference">> => computation_preference(),
%%   <<"CreationTime">> => float(),
%%   <<"Description">> => string(),
%%   <<"LastModifiedTime">> => float(),
%%   <<"Name">> => string(),
%%   <<"PrimaryAccountId">> => string(),
%%   <<"Size">> => float(),
%%   <<"Status">> => list(any()),
%%   <<"StatusReason">> => string()
%% }
-type billing_group_list_element() :: #{binary() => any()}.


%% Example:
%% update_pricing_rule_input() :: #{
%%   <<"Arn">> := string(),
%%   <<"Description">> => string(),
%%   <<"ModifierPercentage">> => float(),
%%   <<"Name">> => string(),
%%   <<"Tiering">> => update_tiering_input(),
%%   <<"Type">> => list(any())
%% }
-type update_pricing_rule_input() :: #{binary() => any()}.


%% Example:
%% delete_pricing_plan_output() :: #{
%%   <<"Arn">> => string()
%% }
-type delete_pricing_plan_output() :: #{binary() => any()}.


%% Example:
%% tiering() :: #{
%%   <<"FreeTier">> => free_tier_config()
%% }
-type tiering() :: #{binary() => any()}.


%% Example:
%% create_tiering_input() :: #{
%%   <<"FreeTier">> => create_free_tier_config()
%% }
-type create_tiering_input() :: #{binary() => any()}.


%% Example:
%% associate_accounts_input() :: #{
%%   <<"AccountIds">> := list(string()),
%%   <<"Arn">> := string()
%% }
-type associate_accounts_input() :: #{binary() => any()}.


%% Example:
%% list_resources_associated_to_custom_line_item_filter() :: #{
%%   <<"Relationship">> => list(any())
%% }
-type list_resources_associated_to_custom_line_item_filter() :: #{binary() => any()}.


%% Example:
%% associate_accounts_output() :: #{
%%   <<"Arn">> => string()
%% }
-type associate_accounts_output() :: #{binary() => any()}.


%% Example:
%% pricing_rule_list_element() :: #{
%%   <<"Arn">> => string(),
%%   <<"AssociatedPricingPlanCount">> => float(),
%%   <<"BillingEntity">> => string(),
%%   <<"CreationTime">> => float(),
%%   <<"Description">> => string(),
%%   <<"LastModifiedTime">> => float(),
%%   <<"ModifierPercentage">> => float(),
%%   <<"Name">> => string(),
%%   <<"Operation">> => string(),
%%   <<"Scope">> => list(any()),
%%   <<"Service">> => string(),
%%   <<"Tiering">> => tiering(),
%%   <<"Type">> => list(any()),
%%   <<"UsageType">> => string()
%% }
-type pricing_rule_list_element() :: #{binary() => any()}.


%% Example:
%% update_free_tier_config() :: #{
%%   <<"Activated">> => boolean()
%% }
-type update_free_tier_config() :: #{binary() => any()}.


%% Example:
%% list_billing_groups_input() :: #{
%%   <<"BillingPeriod">> => string(),
%%   <<"Filters">> => list_billing_groups_filter(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_billing_groups_input() :: #{binary() => any()}.


%% Example:
%% disassociate_accounts_output() :: #{
%%   <<"Arn">> => string()
%% }
-type disassociate_accounts_output() :: #{binary() => any()}.


%% Example:
%% account_associations_list_element() :: #{
%%   <<"AccountEmail">> => string(),
%%   <<"AccountId">> => string(),
%%   <<"AccountName">> => string(),
%%   <<"BillingGroupArn">> => string()
%% }
-type account_associations_list_element() :: #{binary() => any()}.


%% Example:
%% delete_billing_group_input() :: #{
%%   <<"Arn">> := string()
%% }
-type delete_billing_group_input() :: #{binary() => any()}.


%% Example:
%% list_billing_group_cost_reports_output() :: #{
%%   <<"BillingGroupCostReports">> => list(billing_group_cost_report_element()),
%%   <<"NextToken">> => string()
%% }
-type list_billing_group_cost_reports_output() :: #{binary() => any()}.


%% Example:
%% batch_associate_resources_to_custom_line_item_output() :: #{
%%   <<"FailedAssociatedResources">> => list(associate_resource_response_element()),
%%   <<"SuccessfullyAssociatedResources">> => list(associate_resource_response_element())
%% }
-type batch_associate_resources_to_custom_line_item_output() :: #{binary() => any()}.


%% Example:
%% delete_custom_line_item_output() :: #{
%%   <<"Arn">> => string()
%% }
-type delete_custom_line_item_output() :: #{binary() => any()}.


%% Example:
%% create_custom_line_item_input() :: #{
%%   <<"AccountId">> => string(),
%%   <<"BillingGroupArn">> => string(),
%%   <<"BillingPeriodRange">> => custom_line_item_billing_period_range(),
%%   <<"ChargeDetails">> => custom_line_item_charge_details(),
%%   <<"ClientToken">> => string(),
%%   <<"ComputationRule">> => list(any()),
%%   <<"Description">> => string(),
%%   <<"Name">> => string(),
%%   <<"PresentationDetails">> => presentation_object(),
%%   <<"Tags">> => map()
%% }
-type create_custom_line_item_input() :: #{binary() => any()}.


%% Example:
%% update_custom_line_item_output() :: #{
%%   <<"Arn">> => string(),
%%   <<"AssociationSize">> => float(),
%%   <<"BillingGroupArn">> => string(),
%%   <<"ChargeDetails">> => list_custom_line_item_charge_details(),
%%   <<"Description">> => string(),
%%   <<"LastModifiedTime">> => float(),
%%   <<"Name">> => string()
%% }
-type update_custom_line_item_output() :: #{binary() => any()}.


%% Example:
%% billing_group_cost_report_element() :: #{
%%   <<"AWSCost">> => string(),
%%   <<"Arn">> => string(),
%%   <<"Currency">> => string(),
%%   <<"Margin">> => string(),
%%   <<"MarginPercentage">> => string(),
%%   <<"ProformaCost">> => string()
%% }
-type billing_group_cost_report_element() :: #{binary() => any()}.

-type associate_accounts_errors() ::
    throttling_exception() | 
    service_limit_exceeded_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type associate_pricing_rules_errors() ::
    throttling_exception() | 
    service_limit_exceeded_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type batch_associate_resources_to_custom_line_item_errors() ::
    throttling_exception() | 
    service_limit_exceeded_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type batch_disassociate_resources_from_custom_line_item_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_billing_group_errors() ::
    throttling_exception() | 
    service_limit_exceeded_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type create_custom_line_item_errors() ::
    throttling_exception() | 
    service_limit_exceeded_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type create_pricing_plan_errors() ::
    throttling_exception() | 
    service_limit_exceeded_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_pricing_rule_errors() ::
    throttling_exception() | 
    service_limit_exceeded_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type delete_billing_group_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type delete_custom_line_item_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type delete_pricing_plan_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type delete_pricing_rule_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type disassociate_accounts_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type disassociate_pricing_rules_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_billing_group_cost_report_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_account_associations_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_billing_group_cost_reports_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_billing_groups_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_custom_line_item_versions_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_custom_line_items_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_pricing_plans_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_pricing_plans_associated_with_pricing_rule_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_pricing_rules_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_pricing_rules_associated_to_pricing_plan_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_resources_associated_to_custom_line_item_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_tags_for_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type tag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_billing_group_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_custom_line_item_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_pricing_plan_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_pricing_rule_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Connects an array of account IDs in a consolidated billing family to
%% a predefined billing group.
%%
%% The account IDs must be a part of the consolidated billing family during
%% the current month, and not already associated with another billing group.
%% The maximum number of accounts that can be associated in one call is 30.
-spec associate_accounts(aws_client:aws_client(), associate_accounts_input()) ->
    {ok, associate_accounts_output(), tuple()} |
    {error, any()} |
    {error, associate_accounts_errors(), tuple()}.
associate_accounts(Client, Input) ->
    associate_accounts(Client, Input, []).

-spec associate_accounts(aws_client:aws_client(), associate_accounts_input(), proplists:proplist()) ->
    {ok, associate_accounts_output(), tuple()} |
    {error, any()} |
    {error, associate_accounts_errors(), tuple()}.
associate_accounts(Client, Input0, Options0) ->
    Method = post,
    Path = ["/associate-accounts"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Connects an array of `PricingRuleArns' to a defined
%% `PricingPlan'.
%%
%% The maximum number `PricingRuleArn' that can be associated in one call
%% is 30.
-spec associate_pricing_rules(aws_client:aws_client(), associate_pricing_rules_input()) ->
    {ok, associate_pricing_rules_output(), tuple()} |
    {error, any()} |
    {error, associate_pricing_rules_errors(), tuple()}.
associate_pricing_rules(Client, Input) ->
    associate_pricing_rules(Client, Input, []).

-spec associate_pricing_rules(aws_client:aws_client(), associate_pricing_rules_input(), proplists:proplist()) ->
    {ok, associate_pricing_rules_output(), tuple()} |
    {error, any()} |
    {error, associate_pricing_rules_errors(), tuple()}.
associate_pricing_rules(Client, Input0, Options0) ->
    Method = put,
    Path = ["/associate-pricing-rules"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Associates a batch of resources to a percentage custom line item.
-spec batch_associate_resources_to_custom_line_item(aws_client:aws_client(), batch_associate_resources_to_custom_line_item_input()) ->
    {ok, batch_associate_resources_to_custom_line_item_output(), tuple()} |
    {error, any()} |
    {error, batch_associate_resources_to_custom_line_item_errors(), tuple()}.
batch_associate_resources_to_custom_line_item(Client, Input) ->
    batch_associate_resources_to_custom_line_item(Client, Input, []).

-spec batch_associate_resources_to_custom_line_item(aws_client:aws_client(), batch_associate_resources_to_custom_line_item_input(), proplists:proplist()) ->
    {ok, batch_associate_resources_to_custom_line_item_output(), tuple()} |
    {error, any()} |
    {error, batch_associate_resources_to_custom_line_item_errors(), tuple()}.
batch_associate_resources_to_custom_line_item(Client, Input0, Options0) ->
    Method = put,
    Path = ["/batch-associate-resources-to-custom-line-item"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Disassociates a batch of resources from a percentage custom line
%% item.
-spec batch_disassociate_resources_from_custom_line_item(aws_client:aws_client(), batch_disassociate_resources_from_custom_line_item_input()) ->
    {ok, batch_disassociate_resources_from_custom_line_item_output(), tuple()} |
    {error, any()} |
    {error, batch_disassociate_resources_from_custom_line_item_errors(), tuple()}.
batch_disassociate_resources_from_custom_line_item(Client, Input) ->
    batch_disassociate_resources_from_custom_line_item(Client, Input, []).

-spec batch_disassociate_resources_from_custom_line_item(aws_client:aws_client(), batch_disassociate_resources_from_custom_line_item_input(), proplists:proplist()) ->
    {ok, batch_disassociate_resources_from_custom_line_item_output(), tuple()} |
    {error, any()} |
    {error, batch_disassociate_resources_from_custom_line_item_errors(), tuple()}.
batch_disassociate_resources_from_custom_line_item(Client, Input0, Options0) ->
    Method = put,
    Path = ["/batch-disassociate-resources-from-custom-line-item"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a billing group that resembles a consolidated billing family
%% that Amazon Web Services charges, based off of the predefined pricing plan
%% computation.
-spec create_billing_group(aws_client:aws_client(), create_billing_group_input()) ->
    {ok, create_billing_group_output(), tuple()} |
    {error, any()} |
    {error, create_billing_group_errors(), tuple()}.
create_billing_group(Client, Input) ->
    create_billing_group(Client, Input, []).

-spec create_billing_group(aws_client:aws_client(), create_billing_group_input(), proplists:proplist()) ->
    {ok, create_billing_group_output(), tuple()} |
    {error, any()} |
    {error, create_billing_group_errors(), tuple()}.
create_billing_group(Client, Input0, Options0) ->
    Method = post,
    Path = ["/create-billing-group"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Amzn-Client-Token">>, <<"ClientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a custom line item that can be used to create a one-time
%% fixed charge that can be applied to a single billing group for the current
%% or previous billing period.
%%
%% The one-time fixed charge is either a fee or discount.
-spec create_custom_line_item(aws_client:aws_client(), create_custom_line_item_input()) ->
    {ok, create_custom_line_item_output(), tuple()} |
    {error, any()} |
    {error, create_custom_line_item_errors(), tuple()}.
create_custom_line_item(Client, Input) ->
    create_custom_line_item(Client, Input, []).

-spec create_custom_line_item(aws_client:aws_client(), create_custom_line_item_input(), proplists:proplist()) ->
    {ok, create_custom_line_item_output(), tuple()} |
    {error, any()} |
    {error, create_custom_line_item_errors(), tuple()}.
create_custom_line_item(Client, Input0, Options0) ->
    Method = post,
    Path = ["/create-custom-line-item"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Amzn-Client-Token">>, <<"ClientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a pricing plan that is used for computing Amazon Web Services
%% charges for billing groups.
-spec create_pricing_plan(aws_client:aws_client(), create_pricing_plan_input()) ->
    {ok, create_pricing_plan_output(), tuple()} |
    {error, any()} |
    {error, create_pricing_plan_errors(), tuple()}.
create_pricing_plan(Client, Input) ->
    create_pricing_plan(Client, Input, []).

-spec create_pricing_plan(aws_client:aws_client(), create_pricing_plan_input(), proplists:proplist()) ->
    {ok, create_pricing_plan_output(), tuple()} |
    {error, any()} |
    {error, create_pricing_plan_errors(), tuple()}.
create_pricing_plan(Client, Input0, Options0) ->
    Method = post,
    Path = ["/create-pricing-plan"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Amzn-Client-Token">>, <<"ClientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a pricing rule can be associated to a pricing plan, or a set
%% of pricing plans.
-spec create_pricing_rule(aws_client:aws_client(), create_pricing_rule_input()) ->
    {ok, create_pricing_rule_output(), tuple()} |
    {error, any()} |
    {error, create_pricing_rule_errors(), tuple()}.
create_pricing_rule(Client, Input) ->
    create_pricing_rule(Client, Input, []).

-spec create_pricing_rule(aws_client:aws_client(), create_pricing_rule_input(), proplists:proplist()) ->
    {ok, create_pricing_rule_output(), tuple()} |
    {error, any()} |
    {error, create_pricing_rule_errors(), tuple()}.
create_pricing_rule(Client, Input0, Options0) ->
    Method = post,
    Path = ["/create-pricing-rule"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Amzn-Client-Token">>, <<"ClientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a billing group.
-spec delete_billing_group(aws_client:aws_client(), delete_billing_group_input()) ->
    {ok, delete_billing_group_output(), tuple()} |
    {error, any()} |
    {error, delete_billing_group_errors(), tuple()}.
delete_billing_group(Client, Input) ->
    delete_billing_group(Client, Input, []).

-spec delete_billing_group(aws_client:aws_client(), delete_billing_group_input(), proplists:proplist()) ->
    {ok, delete_billing_group_output(), tuple()} |
    {error, any()} |
    {error, delete_billing_group_errors(), tuple()}.
delete_billing_group(Client, Input0, Options0) ->
    Method = post,
    Path = ["/delete-billing-group"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the custom line item identified by the given ARN in the
%% current, or previous billing period.
-spec delete_custom_line_item(aws_client:aws_client(), delete_custom_line_item_input()) ->
    {ok, delete_custom_line_item_output(), tuple()} |
    {error, any()} |
    {error, delete_custom_line_item_errors(), tuple()}.
delete_custom_line_item(Client, Input) ->
    delete_custom_line_item(Client, Input, []).

-spec delete_custom_line_item(aws_client:aws_client(), delete_custom_line_item_input(), proplists:proplist()) ->
    {ok, delete_custom_line_item_output(), tuple()} |
    {error, any()} |
    {error, delete_custom_line_item_errors(), tuple()}.
delete_custom_line_item(Client, Input0, Options0) ->
    Method = post,
    Path = ["/delete-custom-line-item"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a pricing plan.
%%
%% The pricing plan must not be associated with any billing groups to delete
%% successfully.
-spec delete_pricing_plan(aws_client:aws_client(), delete_pricing_plan_input()) ->
    {ok, delete_pricing_plan_output(), tuple()} |
    {error, any()} |
    {error, delete_pricing_plan_errors(), tuple()}.
delete_pricing_plan(Client, Input) ->
    delete_pricing_plan(Client, Input, []).

-spec delete_pricing_plan(aws_client:aws_client(), delete_pricing_plan_input(), proplists:proplist()) ->
    {ok, delete_pricing_plan_output(), tuple()} |
    {error, any()} |
    {error, delete_pricing_plan_errors(), tuple()}.
delete_pricing_plan(Client, Input0, Options0) ->
    Method = post,
    Path = ["/delete-pricing-plan"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the pricing rule that's identified by the input Amazon
%% Resource Name (ARN).
-spec delete_pricing_rule(aws_client:aws_client(), delete_pricing_rule_input()) ->
    {ok, delete_pricing_rule_output(), tuple()} |
    {error, any()} |
    {error, delete_pricing_rule_errors(), tuple()}.
delete_pricing_rule(Client, Input) ->
    delete_pricing_rule(Client, Input, []).

-spec delete_pricing_rule(aws_client:aws_client(), delete_pricing_rule_input(), proplists:proplist()) ->
    {ok, delete_pricing_rule_output(), tuple()} |
    {error, any()} |
    {error, delete_pricing_rule_errors(), tuple()}.
delete_pricing_rule(Client, Input0, Options0) ->
    Method = post,
    Path = ["/delete-pricing-rule"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Removes the specified list of account IDs from the given billing
%% group.
-spec disassociate_accounts(aws_client:aws_client(), disassociate_accounts_input()) ->
    {ok, disassociate_accounts_output(), tuple()} |
    {error, any()} |
    {error, disassociate_accounts_errors(), tuple()}.
disassociate_accounts(Client, Input) ->
    disassociate_accounts(Client, Input, []).

-spec disassociate_accounts(aws_client:aws_client(), disassociate_accounts_input(), proplists:proplist()) ->
    {ok, disassociate_accounts_output(), tuple()} |
    {error, any()} |
    {error, disassociate_accounts_errors(), tuple()}.
disassociate_accounts(Client, Input0, Options0) ->
    Method = post,
    Path = ["/disassociate-accounts"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Disassociates a list of pricing rules from a pricing plan.
-spec disassociate_pricing_rules(aws_client:aws_client(), disassociate_pricing_rules_input()) ->
    {ok, disassociate_pricing_rules_output(), tuple()} |
    {error, any()} |
    {error, disassociate_pricing_rules_errors(), tuple()}.
disassociate_pricing_rules(Client, Input) ->
    disassociate_pricing_rules(Client, Input, []).

-spec disassociate_pricing_rules(aws_client:aws_client(), disassociate_pricing_rules_input(), proplists:proplist()) ->
    {ok, disassociate_pricing_rules_output(), tuple()} |
    {error, any()} |
    {error, disassociate_pricing_rules_errors(), tuple()}.
disassociate_pricing_rules(Client, Input0, Options0) ->
    Method = put,
    Path = ["/disassociate-pricing-rules"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves the margin summary report, which includes the Amazon Web
%% Services cost and charged amount (pro forma cost) by Amazon Web Services
%% service for a specific billing group.
-spec get_billing_group_cost_report(aws_client:aws_client(), get_billing_group_cost_report_input()) ->
    {ok, get_billing_group_cost_report_output(), tuple()} |
    {error, any()} |
    {error, get_billing_group_cost_report_errors(), tuple()}.
get_billing_group_cost_report(Client, Input) ->
    get_billing_group_cost_report(Client, Input, []).

-spec get_billing_group_cost_report(aws_client:aws_client(), get_billing_group_cost_report_input(), proplists:proplist()) ->
    {ok, get_billing_group_cost_report_output(), tuple()} |
    {error, any()} |
    {error, get_billing_group_cost_report_errors(), tuple()}.
get_billing_group_cost_report(Client, Input0, Options0) ->
    Method = post,
    Path = ["/get-billing-group-cost-report"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc This is a paginated call to list linked accounts that are linked to
%% the payer account for the specified time period.
%%
%% If no information is provided, the current billing period is used. The
%% response will optionally include the billing group that's associated
%% with the linked account.
-spec list_account_associations(aws_client:aws_client(), list_account_associations_input()) ->
    {ok, list_account_associations_output(), tuple()} |
    {error, any()} |
    {error, list_account_associations_errors(), tuple()}.
list_account_associations(Client, Input) ->
    list_account_associations(Client, Input, []).

-spec list_account_associations(aws_client:aws_client(), list_account_associations_input(), proplists:proplist()) ->
    {ok, list_account_associations_output(), tuple()} |
    {error, any()} |
    {error, list_account_associations_errors(), tuple()}.
list_account_associations(Client, Input0, Options0) ->
    Method = post,
    Path = ["/list-account-associations"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc A paginated call to retrieve a summary report of actual Amazon Web
%% Services charges and the calculated Amazon Web Services charges based on
%% the associated pricing plan of a billing group.
-spec list_billing_group_cost_reports(aws_client:aws_client(), list_billing_group_cost_reports_input()) ->
    {ok, list_billing_group_cost_reports_output(), tuple()} |
    {error, any()} |
    {error, list_billing_group_cost_reports_errors(), tuple()}.
list_billing_group_cost_reports(Client, Input) ->
    list_billing_group_cost_reports(Client, Input, []).

-spec list_billing_group_cost_reports(aws_client:aws_client(), list_billing_group_cost_reports_input(), proplists:proplist()) ->
    {ok, list_billing_group_cost_reports_output(), tuple()} |
    {error, any()} |
    {error, list_billing_group_cost_reports_errors(), tuple()}.
list_billing_group_cost_reports(Client, Input0, Options0) ->
    Method = post,
    Path = ["/list-billing-group-cost-reports"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc A paginated call to retrieve a list of billing groups for the given
%% billing period.
%%
%% If you don't provide a billing group, the current billing period is
%% used.
-spec list_billing_groups(aws_client:aws_client(), list_billing_groups_input()) ->
    {ok, list_billing_groups_output(), tuple()} |
    {error, any()} |
    {error, list_billing_groups_errors(), tuple()}.
list_billing_groups(Client, Input) ->
    list_billing_groups(Client, Input, []).

-spec list_billing_groups(aws_client:aws_client(), list_billing_groups_input(), proplists:proplist()) ->
    {ok, list_billing_groups_output(), tuple()} |
    {error, any()} |
    {error, list_billing_groups_errors(), tuple()}.
list_billing_groups(Client, Input0, Options0) ->
    Method = post,
    Path = ["/list-billing-groups"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc A paginated call to get a list of all custom line item versions.
-spec list_custom_line_item_versions(aws_client:aws_client(), list_custom_line_item_versions_input()) ->
    {ok, list_custom_line_item_versions_output(), tuple()} |
    {error, any()} |
    {error, list_custom_line_item_versions_errors(), tuple()}.
list_custom_line_item_versions(Client, Input) ->
    list_custom_line_item_versions(Client, Input, []).

-spec list_custom_line_item_versions(aws_client:aws_client(), list_custom_line_item_versions_input(), proplists:proplist()) ->
    {ok, list_custom_line_item_versions_output(), tuple()} |
    {error, any()} |
    {error, list_custom_line_item_versions_errors(), tuple()}.
list_custom_line_item_versions(Client, Input0, Options0) ->
    Method = post,
    Path = ["/list-custom-line-item-versions"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc A paginated call to get a list of all custom line items (FFLIs) for
%% the given billing period.
%%
%% If you don't provide a billing period, the current billing period is
%% used.
-spec list_custom_line_items(aws_client:aws_client(), list_custom_line_items_input()) ->
    {ok, list_custom_line_items_output(), tuple()} |
    {error, any()} |
    {error, list_custom_line_items_errors(), tuple()}.
list_custom_line_items(Client, Input) ->
    list_custom_line_items(Client, Input, []).

-spec list_custom_line_items(aws_client:aws_client(), list_custom_line_items_input(), proplists:proplist()) ->
    {ok, list_custom_line_items_output(), tuple()} |
    {error, any()} |
    {error, list_custom_line_items_errors(), tuple()}.
list_custom_line_items(Client, Input0, Options0) ->
    Method = post,
    Path = ["/list-custom-line-items"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc A paginated call to get pricing plans for the given billing period.
%%
%% If you don't provide a billing period, the current billing period is
%% used.
-spec list_pricing_plans(aws_client:aws_client(), list_pricing_plans_input()) ->
    {ok, list_pricing_plans_output(), tuple()} |
    {error, any()} |
    {error, list_pricing_plans_errors(), tuple()}.
list_pricing_plans(Client, Input) ->
    list_pricing_plans(Client, Input, []).

-spec list_pricing_plans(aws_client:aws_client(), list_pricing_plans_input(), proplists:proplist()) ->
    {ok, list_pricing_plans_output(), tuple()} |
    {error, any()} |
    {error, list_pricing_plans_errors(), tuple()}.
list_pricing_plans(Client, Input0, Options0) ->
    Method = post,
    Path = ["/list-pricing-plans"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc A list of the pricing plans that are associated with a pricing rule.
-spec list_pricing_plans_associated_with_pricing_rule(aws_client:aws_client(), list_pricing_plans_associated_with_pricing_rule_input()) ->
    {ok, list_pricing_plans_associated_with_pricing_rule_output(), tuple()} |
    {error, any()} |
    {error, list_pricing_plans_associated_with_pricing_rule_errors(), tuple()}.
list_pricing_plans_associated_with_pricing_rule(Client, Input) ->
    list_pricing_plans_associated_with_pricing_rule(Client, Input, []).

-spec list_pricing_plans_associated_with_pricing_rule(aws_client:aws_client(), list_pricing_plans_associated_with_pricing_rule_input(), proplists:proplist()) ->
    {ok, list_pricing_plans_associated_with_pricing_rule_output(), tuple()} |
    {error, any()} |
    {error, list_pricing_plans_associated_with_pricing_rule_errors(), tuple()}.
list_pricing_plans_associated_with_pricing_rule(Client, Input0, Options0) ->
    Method = post,
    Path = ["/list-pricing-plans-associated-with-pricing-rule"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Describes a pricing rule that can be associated to a pricing plan, or
%% set of pricing plans.
-spec list_pricing_rules(aws_client:aws_client(), list_pricing_rules_input()) ->
    {ok, list_pricing_rules_output(), tuple()} |
    {error, any()} |
    {error, list_pricing_rules_errors(), tuple()}.
list_pricing_rules(Client, Input) ->
    list_pricing_rules(Client, Input, []).

-spec list_pricing_rules(aws_client:aws_client(), list_pricing_rules_input(), proplists:proplist()) ->
    {ok, list_pricing_rules_output(), tuple()} |
    {error, any()} |
    {error, list_pricing_rules_errors(), tuple()}.
list_pricing_rules(Client, Input0, Options0) ->
    Method = post,
    Path = ["/list-pricing-rules"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Lists the pricing rules that are associated with a pricing plan.
-spec list_pricing_rules_associated_to_pricing_plan(aws_client:aws_client(), list_pricing_rules_associated_to_pricing_plan_input()) ->
    {ok, list_pricing_rules_associated_to_pricing_plan_output(), tuple()} |
    {error, any()} |
    {error, list_pricing_rules_associated_to_pricing_plan_errors(), tuple()}.
list_pricing_rules_associated_to_pricing_plan(Client, Input) ->
    list_pricing_rules_associated_to_pricing_plan(Client, Input, []).

-spec list_pricing_rules_associated_to_pricing_plan(aws_client:aws_client(), list_pricing_rules_associated_to_pricing_plan_input(), proplists:proplist()) ->
    {ok, list_pricing_rules_associated_to_pricing_plan_output(), tuple()} |
    {error, any()} |
    {error, list_pricing_rules_associated_to_pricing_plan_errors(), tuple()}.
list_pricing_rules_associated_to_pricing_plan(Client, Input0, Options0) ->
    Method = post,
    Path = ["/list-pricing-rules-associated-to-pricing-plan"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc List the resources that are associated to a custom line item.
-spec list_resources_associated_to_custom_line_item(aws_client:aws_client(), list_resources_associated_to_custom_line_item_input()) ->
    {ok, list_resources_associated_to_custom_line_item_output(), tuple()} |
    {error, any()} |
    {error, list_resources_associated_to_custom_line_item_errors(), tuple()}.
list_resources_associated_to_custom_line_item(Client, Input) ->
    list_resources_associated_to_custom_line_item(Client, Input, []).

-spec list_resources_associated_to_custom_line_item(aws_client:aws_client(), list_resources_associated_to_custom_line_item_input(), proplists:proplist()) ->
    {ok, list_resources_associated_to_custom_line_item_output(), tuple()} |
    {error, any()} |
    {error, list_resources_associated_to_custom_line_item_errors(), tuple()}.
list_resources_associated_to_custom_line_item(Client, Input0, Options0) ->
    Method = post,
    Path = ["/list-resources-associated-to-custom-line-item"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc A list the tags for a resource.
-spec list_tags_for_resource(aws_client:aws_client(), binary() | list()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 204,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Associates the specified tags to a resource with the specified
%% `resourceArn'.
%%
%% If existing tags on a resource are not specified in the request
%% parameters, they are not changed.
-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_request()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).

-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_request(), proplists:proplist()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 204,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes specified tags from a resource.
-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).

-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request(), proplists:proplist()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 204,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"tagKeys">>, <<"TagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc This updates an existing billing group.
-spec update_billing_group(aws_client:aws_client(), update_billing_group_input()) ->
    {ok, update_billing_group_output(), tuple()} |
    {error, any()} |
    {error, update_billing_group_errors(), tuple()}.
update_billing_group(Client, Input) ->
    update_billing_group(Client, Input, []).

-spec update_billing_group(aws_client:aws_client(), update_billing_group_input(), proplists:proplist()) ->
    {ok, update_billing_group_output(), tuple()} |
    {error, any()} |
    {error, update_billing_group_errors(), tuple()}.
update_billing_group(Client, Input0, Options0) ->
    Method = post,
    Path = ["/update-billing-group"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Update an existing custom line item in the current or previous
%% billing period.
-spec update_custom_line_item(aws_client:aws_client(), update_custom_line_item_input()) ->
    {ok, update_custom_line_item_output(), tuple()} |
    {error, any()} |
    {error, update_custom_line_item_errors(), tuple()}.
update_custom_line_item(Client, Input) ->
    update_custom_line_item(Client, Input, []).

-spec update_custom_line_item(aws_client:aws_client(), update_custom_line_item_input(), proplists:proplist()) ->
    {ok, update_custom_line_item_output(), tuple()} |
    {error, any()} |
    {error, update_custom_line_item_errors(), tuple()}.
update_custom_line_item(Client, Input0, Options0) ->
    Method = post,
    Path = ["/update-custom-line-item"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc This updates an existing pricing plan.
-spec update_pricing_plan(aws_client:aws_client(), update_pricing_plan_input()) ->
    {ok, update_pricing_plan_output(), tuple()} |
    {error, any()} |
    {error, update_pricing_plan_errors(), tuple()}.
update_pricing_plan(Client, Input) ->
    update_pricing_plan(Client, Input, []).

-spec update_pricing_plan(aws_client:aws_client(), update_pricing_plan_input(), proplists:proplist()) ->
    {ok, update_pricing_plan_output(), tuple()} |
    {error, any()} |
    {error, update_pricing_plan_errors(), tuple()}.
update_pricing_plan(Client, Input0, Options0) ->
    Method = put,
    Path = ["/update-pricing-plan"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an existing pricing rule.
-spec update_pricing_rule(aws_client:aws_client(), update_pricing_rule_input()) ->
    {ok, update_pricing_rule_output(), tuple()} |
    {error, any()} |
    {error, update_pricing_rule_errors(), tuple()}.
update_pricing_rule(Client, Input) ->
    update_pricing_rule(Client, Input, []).

-spec update_pricing_rule(aws_client:aws_client(), update_pricing_rule_input(), proplists:proplist()) ->
    {ok, update_pricing_rule_output(), tuple()} |
    {error, any()} |
    {error, update_pricing_rule_errors(), tuple()}.
update_pricing_rule(Client, Input0, Options0) ->
    Method = put,
    Path = ["/update-pricing-rule"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%%====================================================================
%% Internal functions
%%====================================================================

-spec proplists_take(any(), proplists:proplist(), any()) -> {any(), proplists:proplist()}.
proplists_take(Key, Proplist, Default) ->
  Value = proplists:get_value(Key, Proplist, Default),
  {Value, proplists:delete(Key, Proplist)}.

-spec request(aws_client:aws_client(), atom(), iolist(), list(),
              list(), map() | undefined, list(), pos_integer() | undefined) ->
    {ok, {integer(), list()}} |
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map(),
    Error :: map().
request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) ->
  RequestFun = fun() -> do_request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) end,
  aws_request:request(RequestFun, Options).

do_request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) ->
    Client1 = Client#{service => <<"billingconductor">>,
                      region => <<"us-east-1">>},
    Host = build_host(<<"billingconductor">>, Client1),
    URL0 = build_url(Host, Path, Client1),
    URL = aws_request:add_query(URL0, Query),
    AdditionalHeaders1 = [ {<<"Host">>, Host}
                         , {<<"Content-Type">>, <<"application/x-amz-json-1.1">>}
                         ],
    Payload =
      case proplists:get_value(send_body_as_binary, Options) of
        true ->
          maps:get(<<"Body">>, Input, <<"">>);
        false ->
          encode_payload(Input)
      end,
    AdditionalHeaders = case proplists:get_value(append_sha256_content_hash, Options, false) of
                          true ->
                            add_checksum_hash_header(AdditionalHeaders1, Payload);
                          false ->
                            AdditionalHeaders1
                        end,
    Headers1 = aws_request:add_headers(AdditionalHeaders, Headers0),

    MethodBin = aws_request:method_to_binary(Method),
    SignedHeaders = aws_request:sign_request(Client1, MethodBin, URL, Headers1, Payload),
    Response = hackney:request(Method, URL, SignedHeaders, Payload, Options),
    DecodeBody = not proplists:get_value(receive_body_as_binary, Options),
    handle_response(Response, SuccessStatusCode, DecodeBody).

add_checksum_hash_header(Headers, Body) ->
  [ {<<"X-Amz-CheckSum-SHA256">>, base64:encode(crypto:hash(sha256, Body))}
  | Headers
  ].

handle_response({ok, StatusCode, ResponseHeaders}, SuccessStatusCode, _DecodeBody)
  when StatusCode =:= 200;
       StatusCode =:= 202;
       StatusCode =:= 204;
       StatusCode =:= 206;
       StatusCode =:= SuccessStatusCode ->
    {ok, {StatusCode, ResponseHeaders}};
handle_response({ok, StatusCode, ResponseHeaders}, _, _DecodeBody) ->
    {error, {StatusCode, ResponseHeaders}};
handle_response({ok, StatusCode, ResponseHeaders, Client}, SuccessStatusCode, DecodeBody)
  when StatusCode =:= 200;
       StatusCode =:= 202;
       StatusCode =:= 204;
       StatusCode =:= 206;
       StatusCode =:= SuccessStatusCode ->
    case hackney:body(Client) of
        {ok, <<>>} when StatusCode =:= 200;
                        StatusCode =:= SuccessStatusCode ->
            {ok, #{}, {StatusCode, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = case DecodeBody of
                       true ->
                         try
                           jsx:decode(Body)
                         catch
                           Error:Reason:Stack ->
                             erlang:raise(error, {body_decode_failed, Error, Reason, StatusCode, Body}, Stack)
                         end;
                       false -> #{<<"Body">> => Body}
                     end,
            {ok, Result, {StatusCode, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, _ResponseHeaders, _Client}, _, _DecodeBody)
  when StatusCode =:= 503 ->
  %% Retriable error if retries are enabled
  {error, service_unavailable};
handle_response({ok, StatusCode, ResponseHeaders, Client}, _, _DecodeBody) ->
    {ok, Body} = hackney:body(Client),
    try
      DecodedError = jsx:decode(Body),
      {error, DecodedError, {StatusCode, ResponseHeaders, Client}}
    catch
      Error:Reason:Stack ->
        erlang:raise(error, {body_decode_failed, Error, Reason, StatusCode, Body}, Stack)
    end;
handle_response({error, Reason}, _, _DecodeBody) ->
  {error, Reason}.

build_host(_EndpointPrefix, #{region := <<"local">>, endpoint := Endpoint}) ->
    Endpoint;
build_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
build_host(EndpointPrefix, #{endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Endpoint], <<".">>).

build_url(Host, Path0, Client) ->
    Proto = aws_client:proto(Client),
    Path = erlang:iolist_to_binary(Path0),
    Port = aws_client:port(Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, Path], <<"">>).

-spec encode_payload(undefined | map()) -> binary().
encode_payload(undefined) ->
  <<>>;
encode_payload(Input) ->
  jsx:encode(Input).
