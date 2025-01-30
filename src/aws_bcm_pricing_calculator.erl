%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc
%% You can use the Pricing Calculator API to programmatically create
%% estimates for your planned cloud use.
%%
%% You can model usage and commitments such as Savings Plans and
%% Reserved Instances, and generate estimated costs using your discounts and
%% benefit sharing preferences.
%%
%% The Pricing Calculator API provides the following endpoint:
%%
%% `https://bcm-pricing-calculator.us-east-1.api.aws'
-module(aws_bcm_pricing_calculator).

-export([batch_create_bill_scenario_commitment_modification/2,
         batch_create_bill_scenario_commitment_modification/3,
         batch_create_bill_scenario_usage_modification/2,
         batch_create_bill_scenario_usage_modification/3,
         batch_create_workload_estimate_usage/2,
         batch_create_workload_estimate_usage/3,
         batch_delete_bill_scenario_commitment_modification/2,
         batch_delete_bill_scenario_commitment_modification/3,
         batch_delete_bill_scenario_usage_modification/2,
         batch_delete_bill_scenario_usage_modification/3,
         batch_delete_workload_estimate_usage/2,
         batch_delete_workload_estimate_usage/3,
         batch_update_bill_scenario_commitment_modification/2,
         batch_update_bill_scenario_commitment_modification/3,
         batch_update_bill_scenario_usage_modification/2,
         batch_update_bill_scenario_usage_modification/3,
         batch_update_workload_estimate_usage/2,
         batch_update_workload_estimate_usage/3,
         create_bill_estimate/2,
         create_bill_estimate/3,
         create_bill_scenario/2,
         create_bill_scenario/3,
         create_workload_estimate/2,
         create_workload_estimate/3,
         delete_bill_estimate/2,
         delete_bill_estimate/3,
         delete_bill_scenario/2,
         delete_bill_scenario/3,
         delete_workload_estimate/2,
         delete_workload_estimate/3,
         get_bill_estimate/2,
         get_bill_estimate/3,
         get_bill_scenario/2,
         get_bill_scenario/3,
         get_preferences/2,
         get_preferences/3,
         get_workload_estimate/2,
         get_workload_estimate/3,
         list_bill_estimate_commitments/2,
         list_bill_estimate_commitments/3,
         list_bill_estimate_input_commitment_modifications/2,
         list_bill_estimate_input_commitment_modifications/3,
         list_bill_estimate_input_usage_modifications/2,
         list_bill_estimate_input_usage_modifications/3,
         list_bill_estimate_line_items/2,
         list_bill_estimate_line_items/3,
         list_bill_estimates/2,
         list_bill_estimates/3,
         list_bill_scenario_commitment_modifications/2,
         list_bill_scenario_commitment_modifications/3,
         list_bill_scenario_usage_modifications/2,
         list_bill_scenario_usage_modifications/3,
         list_bill_scenarios/2,
         list_bill_scenarios/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         list_workload_estimate_usage/2,
         list_workload_estimate_usage/3,
         list_workload_estimates/2,
         list_workload_estimates/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_bill_estimate/2,
         update_bill_estimate/3,
         update_bill_scenario/2,
         update_bill_scenario/3,
         update_preferences/2,
         update_preferences/3,
         update_workload_estimate/2,
         update_workload_estimate/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% usage_amount() :: #{
%%   <<"amount">> => [float()],
%%   <<"startHour">> => [non_neg_integer()]
%% }
-type usage_amount() :: #{binary() => any()}.

%% Example:
%% batch_update_workload_estimate_usage_error() :: #{
%%   <<"errorCode">> => list(any()),
%%   <<"errorMessage">> => [string()],
%%   <<"id">> => string()
%% }
-type batch_update_workload_estimate_usage_error() :: #{binary() => any()}.

%% Example:
%% add_reserved_instance_action() :: #{
%%   <<"instanceCount">> => integer(),
%%   <<"reservedInstancesOfferingId">> => string()
%% }
-type add_reserved_instance_action() :: #{binary() => any()}.

%% Example:
%% get_workload_estimate_request() :: #{
%%   <<"identifier">> := string()
%% }
-type get_workload_estimate_request() :: #{binary() => any()}.

%% Example:
%% tag_resource_request() :: #{
%%   <<"arn">> := string(),
%%   <<"tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% batch_update_bill_scenario_commitment_modification_response() :: #{
%%   <<"errors">> => list(batch_update_bill_scenario_commitment_modification_error()()),
%%   <<"items">> => list(bill_scenario_commitment_modification_item()())
%% }
-type batch_update_bill_scenario_commitment_modification_response() :: #{binary() => any()}.

%% Example:
%% list_bill_estimates_filter() :: #{
%%   <<"matchOption">> => list(any()),
%%   <<"name">> => list(any()),
%%   <<"values">> => list([string()]())
%% }
-type list_bill_estimates_filter() :: #{binary() => any()}.

%% Example:
%% list_workload_estimate_usage_response() :: #{
%%   <<"items">> => list(workload_estimate_usage_item()()),
%%   <<"nextToken">> => string()
%% }
-type list_workload_estimate_usage_response() :: #{binary() => any()}.

%% Example:
%% list_bill_scenarios_request() :: #{
%%   <<"createdAtFilter">> => filter_timestamp(),
%%   <<"expiresAtFilter">> => filter_timestamp(),
%%   <<"filters">> => list(list_bill_scenarios_filter()()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_bill_scenarios_request() :: #{binary() => any()}.

%% Example:
%% list_bill_estimate_input_usage_modifications_request() :: #{
%%   <<"billEstimateId">> := string(),
%%   <<"filters">> => list(list_usage_filter()()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_bill_estimate_input_usage_modifications_request() :: #{binary() => any()}.

%% Example:
%% filter_timestamp() :: #{
%%   <<"afterTimestamp">> => [non_neg_integer()],
%%   <<"beforeTimestamp">> => [non_neg_integer()]
%% }
-type filter_timestamp() :: #{binary() => any()}.

%% Example:
%% create_bill_estimate_response() :: #{
%%   <<"billInterval">> => bill_interval(),
%%   <<"costSummary">> => bill_estimate_cost_summary(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"expiresAt">> => [non_neg_integer()],
%%   <<"failureMessage">> => [string()],
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"status">> => list(any())
%% }
-type create_bill_estimate_response() :: #{binary() => any()}.

%% Example:
%% batch_update_bill_scenario_usage_modification_response() :: #{
%%   <<"errors">> => list(batch_update_bill_scenario_usage_modification_error()()),
%%   <<"items">> => list(bill_scenario_usage_modification_item()())
%% }
-type batch_update_bill_scenario_usage_modification_response() :: #{binary() => any()}.

%% Example:
%% cost_difference() :: #{
%%   <<"estimatedCost">> => cost_amount(),
%%   <<"historicalCost">> => cost_amount()
%% }
-type cost_difference() :: #{binary() => any()}.

%% Example:
%% get_bill_estimate_request() :: #{
%%   <<"identifier">> := string()
%% }
-type get_bill_estimate_request() :: #{binary() => any()}.

%% Example:
%% get_preferences_request() :: #{

%% }
-type get_preferences_request() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{

%% }
-type untag_resource_response() :: #{binary() => any()}.

%% Example:
%% update_bill_estimate_response() :: #{
%%   <<"billInterval">> => bill_interval(),
%%   <<"costSummary">> => bill_estimate_cost_summary(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"expiresAt">> => [non_neg_integer()],
%%   <<"failureMessage">> => [string()],
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"status">> => list(any())
%% }
-type update_bill_estimate_response() :: #{binary() => any()}.

%% Example:
%% delete_workload_estimate_response() :: #{

%% }
-type delete_workload_estimate_response() :: #{binary() => any()}.

%% Example:
%% update_bill_estimate_request() :: #{
%%   <<"expiresAt">> => [non_neg_integer()],
%%   <<"identifier">> := string(),
%%   <<"name">> => string()
%% }
-type update_bill_estimate_request() :: #{binary() => any()}.

%% Example:
%% bill_scenario_commitment_modification_item() :: #{
%%   <<"commitmentAction">> => list(),
%%   <<"group">> => string(),
%%   <<"id">> => string(),
%%   <<"usageAccountId">> => string()
%% }
-type bill_scenario_commitment_modification_item() :: #{binary() => any()}.

%% Example:
%% list_bill_estimate_line_items_request() :: #{
%%   <<"billEstimateId">> := string(),
%%   <<"filters">> => list(list_bill_estimate_line_items_filter()()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_bill_estimate_line_items_request() :: #{binary() => any()}.

%% Example:
%% batch_create_bill_scenario_usage_modification_error() :: #{
%%   <<"errorCode">> => list(any()),
%%   <<"errorMessage">> => [string()],
%%   <<"key">> => string()
%% }
-type batch_create_bill_scenario_usage_modification_error() :: #{binary() => any()}.

%% Example:
%% batch_create_workload_estimate_usage_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"usage">> := list(batch_create_workload_estimate_usage_entry()()),
%%   <<"workloadEstimateId">> := string()
%% }
-type batch_create_workload_estimate_usage_request() :: #{binary() => any()}.

%% Example:
%% bill_estimate_summary() :: #{
%%   <<"billInterval">> => bill_interval(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"expiresAt">> => [non_neg_integer()],
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"status">> => list(any())
%% }
-type bill_estimate_summary() :: #{binary() => any()}.

%% Example:
%% batch_create_workload_estimate_usage_response() :: #{
%%   <<"errors">> => list(batch_create_workload_estimate_usage_error()()),
%%   <<"items">> => list(batch_create_workload_estimate_usage_item()())
%% }
-type batch_create_workload_estimate_usage_response() :: #{binary() => any()}.

%% Example:
%% expression_filter() :: #{
%%   <<"key">> => [string()],
%%   <<"matchOptions">> => list([string()]()),
%%   <<"values">> => list([string()]())
%% }
-type expression_filter() :: #{binary() => any()}.

%% Example:
%% list_workload_estimates_response() :: #{
%%   <<"items">> => list(workload_estimate_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_workload_estimates_response() :: #{binary() => any()}.

%% Example:
%% batch_create_workload_estimate_usage_error() :: #{
%%   <<"errorCode">> => list(any()),
%%   <<"errorMessage">> => [string()],
%%   <<"key">> => string()
%% }
-type batch_create_workload_estimate_usage_error() :: #{binary() => any()}.

%% Example:
%% list_bill_estimates_request() :: #{
%%   <<"createdAtFilter">> => filter_timestamp(),
%%   <<"expiresAtFilter">> => filter_timestamp(),
%%   <<"filters">> => list(list_bill_estimates_filter()()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_bill_estimates_request() :: #{binary() => any()}.

%% Example:
%% get_bill_estimate_response() :: #{
%%   <<"billInterval">> => bill_interval(),
%%   <<"costSummary">> => bill_estimate_cost_summary(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"expiresAt">> => [non_neg_integer()],
%%   <<"failureMessage">> => [string()],
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"status">> => list(any())
%% }
-type get_bill_estimate_response() :: #{binary() => any()}.

%% Example:
%% list_bill_scenario_commitment_modifications_response() :: #{
%%   <<"items">> => list(bill_scenario_commitment_modification_item()()),
%%   <<"nextToken">> => string()
%% }
-type list_bill_scenario_commitment_modifications_response() :: #{binary() => any()}.

%% Example:
%% update_workload_estimate_response() :: #{
%%   <<"costCurrency">> => list(any()),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"expiresAt">> => [non_neg_integer()],
%%   <<"failureMessage">> => [string()],
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"rateTimestamp">> => [non_neg_integer()],
%%   <<"rateType">> => list(any()),
%%   <<"status">> => list(any()),
%%   <<"totalCost">> => [float()]
%% }
-type update_workload_estimate_response() :: #{binary() => any()}.

%% Example:
%% bill_estimate_cost_summary() :: #{
%%   <<"serviceCostDifferences">> => map(),
%%   <<"totalCostDifference">> => cost_difference()
%% }
-type bill_estimate_cost_summary() :: #{binary() => any()}.

%% Example:
%% batch_update_bill_scenario_commitment_modification_error() :: #{
%%   <<"errorCode">> => list(any()),
%%   <<"errorMessage">> => [string()],
%%   <<"id">> => string()
%% }
-type batch_update_bill_scenario_commitment_modification_error() :: #{binary() => any()}.

%% Example:
%% bill_estimate_line_item_summary() :: #{
%%   <<"availabilityZone">> => string(),
%%   <<"estimatedCost">> => cost_amount(),
%%   <<"estimatedUsageQuantity">> => usage_quantity_result(),
%%   <<"historicalCost">> => cost_amount(),
%%   <<"historicalUsageQuantity">> => usage_quantity_result(),
%%   <<"id">> => string(),
%%   <<"lineItemId">> => [string()],
%%   <<"lineItemType">> => [string()],
%%   <<"location">> => [string()],
%%   <<"operation">> => string(),
%%   <<"payerAccountId">> => string(),
%%   <<"savingsPlanArns">> => list([string()]()),
%%   <<"serviceCode">> => string(),
%%   <<"usageAccountId">> => string(),
%%   <<"usageType">> => string()
%% }
-type bill_estimate_line_item_summary() :: #{binary() => any()}.

%% Example:
%% list_bill_scenarios_response() :: #{
%%   <<"items">> => list(bill_scenario_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_bill_scenarios_response() :: #{binary() => any()}.

%% Example:
%% batch_update_workload_estimate_usage_entry() :: #{
%%   <<"amount">> => [float()],
%%   <<"group">> => string(),
%%   <<"id">> => string()
%% }
-type batch_update_workload_estimate_usage_entry() :: #{binary() => any()}.

%% Example:
%% untag_resource_request() :: #{
%%   <<"arn">> := string(),
%%   <<"tagKeys">> := list(string()())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% bill_estimate_input_usage_modification_summary() :: #{
%%   <<"availabilityZone">> => string(),
%%   <<"group">> => string(),
%%   <<"historicalUsage">> => historical_usage_entity(),
%%   <<"id">> => string(),
%%   <<"location">> => [string()],
%%   <<"operation">> => string(),
%%   <<"quantities">> => list(usage_quantity()()),
%%   <<"serviceCode">> => string(),
%%   <<"usageAccountId">> => string(),
%%   <<"usageType">> => string()
%% }
-type bill_estimate_input_usage_modification_summary() :: #{binary() => any()}.

%% Example:
%% list_bill_estimate_line_items_filter() :: #{
%%   <<"matchOption">> => list(any()),
%%   <<"name">> => list(any()),
%%   <<"values">> => list([string()]())
%% }
-type list_bill_estimate_line_items_filter() :: #{binary() => any()}.

%% Example:
%% bill_scenario_usage_modification_item() :: #{
%%   <<"availabilityZone">> => string(),
%%   <<"group">> => string(),
%%   <<"historicalUsage">> => historical_usage_entity(),
%%   <<"id">> => string(),
%%   <<"location">> => [string()],
%%   <<"operation">> => string(),
%%   <<"quantities">> => list(usage_quantity()()),
%%   <<"serviceCode">> => string(),
%%   <<"usageAccountId">> => string(),
%%   <<"usageType">> => string()
%% }
-type bill_scenario_usage_modification_item() :: #{binary() => any()}.

%% Example:
%% get_workload_estimate_response() :: #{
%%   <<"costCurrency">> => list(any()),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"expiresAt">> => [non_neg_integer()],
%%   <<"failureMessage">> => [string()],
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"rateTimestamp">> => [non_neg_integer()],
%%   <<"rateType">> => list(any()),
%%   <<"status">> => list(any()),
%%   <<"totalCost">> => [float()]
%% }
-type get_workload_estimate_response() :: #{binary() => any()}.

%% Example:
%% bill_estimate_input_commitment_modification_summary() :: #{
%%   <<"commitmentAction">> => list(),
%%   <<"group">> => string(),
%%   <<"id">> => string(),
%%   <<"usageAccountId">> => string()
%% }
-type bill_estimate_input_commitment_modification_summary() :: #{binary() => any()}.

%% Example:
%% batch_update_workload_estimate_usage_response() :: #{
%%   <<"errors">> => list(batch_update_workload_estimate_usage_error()()),
%%   <<"items">> => list(workload_estimate_usage_item()())
%% }
-type batch_update_workload_estimate_usage_response() :: #{binary() => any()}.

%% Example:
%% batch_create_bill_scenario_commitment_modification_error() :: #{
%%   <<"errorCode">> => list(any()),
%%   <<"errorMessage">> => [string()],
%%   <<"key">> => string()
%% }
-type batch_create_bill_scenario_commitment_modification_error() :: #{binary() => any()}.

%% Example:
%% negate_savings_plan_action() :: #{
%%   <<"savingsPlanId">> => string()
%% }
-type negate_savings_plan_action() :: #{binary() => any()}.

%% Example:
%% bill_estimate_commitment_summary() :: #{
%%   <<"id">> => string(),
%%   <<"monthlyPayment">> => cost_amount(),
%%   <<"offeringId">> => string(),
%%   <<"paymentOption">> => [string()],
%%   <<"purchaseAgreementType">> => list(any()),
%%   <<"region">> => [string()],
%%   <<"termLength">> => [string()],
%%   <<"upfrontPayment">> => cost_amount(),
%%   <<"usageAccountId">> => string()
%% }
-type bill_estimate_commitment_summary() :: #{binary() => any()}.

%% Example:
%% get_preferences_response() :: #{
%%   <<"managementAccountRateTypeSelections">> => list(list(any())()),
%%   <<"memberAccountRateTypeSelections">> => list(list(any())())
%% }
-type get_preferences_response() :: #{binary() => any()}.

%% Example:
%% batch_create_bill_scenario_commitment_modification_item() :: #{
%%   <<"commitmentAction">> => list(),
%%   <<"group">> => string(),
%%   <<"id">> => string(),
%%   <<"key">> => string(),
%%   <<"usageAccountId">> => string()
%% }
-type batch_create_bill_scenario_commitment_modification_item() :: #{binary() => any()}.

%% Example:
%% list_bill_estimate_line_items_response() :: #{
%%   <<"items">> => list(bill_estimate_line_item_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_bill_estimate_line_items_response() :: #{binary() => any()}.

%% Example:
%% historical_usage_entity() :: #{
%%   <<"billInterval">> => bill_interval(),
%%   <<"filterExpression">> => expression(),
%%   <<"location">> => [string()],
%%   <<"operation">> => string(),
%%   <<"serviceCode">> => string(),
%%   <<"usageAccountId">> => string(),
%%   <<"usageType">> => string()
%% }
-type historical_usage_entity() :: #{binary() => any()}.

%% Example:
%% list_workload_estimate_usage_request() :: #{
%%   <<"filters">> => list(list_usage_filter()()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"workloadEstimateId">> := string()
%% }
-type list_workload_estimate_usage_request() :: #{binary() => any()}.

%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"resourceId">> => [string()],
%%   <<"resourceType">> => [string()]
%% }
-type conflict_exception() :: #{binary() => any()}.

%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"resourceId">> => [string()],
%%   <<"resourceType">> => [string()]
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% usage_quantity_result() :: #{
%%   <<"amount">> => [float()],
%%   <<"unit">> => [string()]
%% }
-type usage_quantity_result() :: #{binary() => any()}.

%% Example:
%% get_bill_scenario_response() :: #{
%%   <<"billInterval">> => bill_interval(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"expiresAt">> => [non_neg_integer()],
%%   <<"failureMessage">> => [string()],
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"status">> => list(any())
%% }
-type get_bill_scenario_response() :: #{binary() => any()}.

%% Example:
%% update_bill_scenario_response() :: #{
%%   <<"billInterval">> => bill_interval(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"expiresAt">> => [non_neg_integer()],
%%   <<"failureMessage">> => [string()],
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"status">> => list(any())
%% }
-type update_bill_scenario_response() :: #{binary() => any()}.

%% Example:
%% list_bill_estimate_commitments_request() :: #{
%%   <<"billEstimateId">> := string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_bill_estimate_commitments_request() :: #{binary() => any()}.

%% Example:
%% workload_estimate_usage_item() :: #{
%%   <<"cost">> => [float()],
%%   <<"currency">> => list(any()),
%%   <<"group">> => string(),
%%   <<"historicalUsage">> => historical_usage_entity(),
%%   <<"id">> => string(),
%%   <<"location">> => [string()],
%%   <<"operation">> => string(),
%%   <<"quantity">> => workload_estimate_usage_quantity(),
%%   <<"serviceCode">> => string(),
%%   <<"status">> => list(any()),
%%   <<"usageAccountId">> => string(),
%%   <<"usageType">> => string()
%% }
-type workload_estimate_usage_item() :: #{binary() => any()}.

%% Example:
%% list_bill_estimate_input_commitment_modifications_request() :: #{
%%   <<"billEstimateId">> := string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_bill_estimate_input_commitment_modifications_request() :: #{binary() => any()}.

%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"quotaCode">> => [string()],
%%   <<"resourceId">> => [string()],
%%   <<"resourceType">> => [string()],
%%   <<"serviceCode">> => [string()]
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% add_savings_plan_action() :: #{
%%   <<"commitment">> => float(),
%%   <<"savingsPlanOfferingId">> => string()
%% }
-type add_savings_plan_action() :: #{binary() => any()}.

%% Example:
%% update_preferences_request() :: #{
%%   <<"managementAccountRateTypeSelections">> => list(list(any())()),
%%   <<"memberAccountRateTypeSelections">> => list(list(any())())
%% }
-type update_preferences_request() :: #{binary() => any()}.

%% Example:
%% list_bill_estimate_input_usage_modifications_response() :: #{
%%   <<"items">> => list(bill_estimate_input_usage_modification_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_bill_estimate_input_usage_modifications_response() :: #{binary() => any()}.

%% Example:
%% batch_create_bill_scenario_usage_modification_item() :: #{
%%   <<"availabilityZone">> => string(),
%%   <<"group">> => string(),
%%   <<"historicalUsage">> => historical_usage_entity(),
%%   <<"id">> => string(),
%%   <<"key">> => string(),
%%   <<"location">> => [string()],
%%   <<"operation">> => string(),
%%   <<"quantities">> => list(usage_quantity()()),
%%   <<"serviceCode">> => string(),
%%   <<"usageAccountId">> => string(),
%%   <<"usageType">> => string()
%% }
-type batch_create_bill_scenario_usage_modification_item() :: #{binary() => any()}.

%% Example:
%% update_preferences_response() :: #{
%%   <<"managementAccountRateTypeSelections">> => list(list(any())()),
%%   <<"memberAccountRateTypeSelections">> => list(list(any())())
%% }
-type update_preferences_response() :: #{binary() => any()}.

%% Example:
%% delete_bill_scenario_response() :: #{

%% }
-type delete_bill_scenario_response() :: #{binary() => any()}.

%% Example:
%% list_bill_scenarios_filter() :: #{
%%   <<"matchOption">> => list(any()),
%%   <<"name">> => list(any()),
%%   <<"values">> => list([string()]())
%% }
-type list_bill_scenarios_filter() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.

%% Example:
%% batch_delete_bill_scenario_usage_modification_response() :: #{
%%   <<"errors">> => list(batch_delete_bill_scenario_usage_modification_error()())
%% }
-type batch_delete_bill_scenario_usage_modification_response() :: #{binary() => any()}.

%% Example:
%% bill_interval() :: #{
%%   <<"end">> => [non_neg_integer()],
%%   <<"start">> => [non_neg_integer()]
%% }
-type bill_interval() :: #{binary() => any()}.

%% Example:
%% batch_create_bill_scenario_usage_modification_entry() :: #{
%%   <<"amounts">> => list(usage_amount()()),
%%   <<"availabilityZone">> => string(),
%%   <<"group">> => string(),
%%   <<"historicalUsage">> => historical_usage_entity(),
%%   <<"key">> => string(),
%%   <<"operation">> => string(),
%%   <<"serviceCode">> => string(),
%%   <<"usageAccountId">> => string(),
%%   <<"usageType">> => string()
%% }
-type batch_create_bill_scenario_usage_modification_entry() :: #{binary() => any()}.

%% Example:
%% batch_delete_workload_estimate_usage_error() :: #{
%%   <<"errorCode">> => list(any()),
%%   <<"errorMessage">> => [string()],
%%   <<"id">> => string()
%% }
-type batch_delete_workload_estimate_usage_error() :: #{binary() => any()}.

%% Example:
%% batch_update_bill_scenario_usage_modification_entry() :: #{
%%   <<"amounts">> => list(usage_amount()()),
%%   <<"group">> => string(),
%%   <<"id">> => string()
%% }
-type batch_update_bill_scenario_usage_modification_entry() :: #{binary() => any()}.

%% Example:
%% validation_exception_field() :: #{
%%   <<"message">> => [string()],
%%   <<"name">> => [string()]
%% }
-type validation_exception_field() :: #{binary() => any()}.

%% Example:
%% list_workload_estimates_request() :: #{
%%   <<"createdAtFilter">> => filter_timestamp(),
%%   <<"expiresAtFilter">> => filter_timestamp(),
%%   <<"filters">> => list(list_workload_estimates_filter()()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_workload_estimates_request() :: #{binary() => any()}.

%% Example:
%% batch_delete_bill_scenario_usage_modification_request() :: #{
%%   <<"billScenarioId">> := string(),
%%   <<"ids">> := list(string()())
%% }
-type batch_delete_bill_scenario_usage_modification_request() :: #{binary() => any()}.

%% Example:
%% delete_workload_estimate_request() :: #{
%%   <<"identifier">> := string()
%% }
-type delete_workload_estimate_request() :: #{binary() => any()}.

%% Example:
%% batch_update_bill_scenario_commitment_modification_request() :: #{
%%   <<"billScenarioId">> := string(),
%%   <<"commitmentModifications">> := list(batch_update_bill_scenario_commitment_modification_entry()())
%% }
-type batch_update_bill_scenario_commitment_modification_request() :: #{binary() => any()}.

%% Example:
%% bill_scenario_summary() :: #{
%%   <<"billInterval">> => bill_interval(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"expiresAt">> => [non_neg_integer()],
%%   <<"failureMessage">> => [string()],
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"status">> => list(any())
%% }
-type bill_scenario_summary() :: #{binary() => any()}.

%% Example:
%% update_bill_scenario_request() :: #{
%%   <<"expiresAt">> => [non_neg_integer()],
%%   <<"identifier">> := string(),
%%   <<"name">> => string()
%% }
-type update_bill_scenario_request() :: #{binary() => any()}.

%% Example:
%% list_bill_scenario_commitment_modifications_request() :: #{
%%   <<"billScenarioId">> := string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_bill_scenario_commitment_modifications_request() :: #{binary() => any()}.

%% Example:
%% batch_update_workload_estimate_usage_request() :: #{
%%   <<"usage">> := list(batch_update_workload_estimate_usage_entry()()),
%%   <<"workloadEstimateId">> := string()
%% }
-type batch_update_workload_estimate_usage_request() :: #{binary() => any()}.

%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"retryAfterSeconds">> => [integer()]
%% }
-type internal_server_exception() :: #{binary() => any()}.

%% Example:
%% batch_delete_bill_scenario_commitment_modification_error() :: #{
%%   <<"errorCode">> => list(any()),
%%   <<"errorMessage">> => [string()],
%%   <<"id">> => string()
%% }
-type batch_delete_bill_scenario_commitment_modification_error() :: #{binary() => any()}.

%% Example:
%% list_workload_estimates_filter() :: #{
%%   <<"matchOption">> => list(any()),
%%   <<"name">> => list(any()),
%%   <<"values">> => list([string()]())
%% }
-type list_workload_estimates_filter() :: #{binary() => any()}.

%% Example:
%% list_bill_scenario_usage_modifications_response() :: #{
%%   <<"items">> => list(bill_scenario_usage_modification_item()()),
%%   <<"nextToken">> => string()
%% }
-type list_bill_scenario_usage_modifications_response() :: #{binary() => any()}.

%% Example:
%% list_bill_estimates_response() :: #{
%%   <<"items">> => list(bill_estimate_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_bill_estimates_response() :: #{binary() => any()}.

%% Example:
%% batch_update_bill_scenario_usage_modification_request() :: #{
%%   <<"billScenarioId">> := string(),
%%   <<"usageModifications">> := list(batch_update_bill_scenario_usage_modification_entry()())
%% }
-type batch_update_bill_scenario_usage_modification_request() :: #{binary() => any()}.

%% Example:
%% delete_bill_estimate_request() :: #{
%%   <<"identifier">> := string()
%% }
-type delete_bill_estimate_request() :: #{binary() => any()}.

%% Example:
%% data_unavailable_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type data_unavailable_exception() :: #{binary() => any()}.

%% Example:
%% list_bill_scenario_usage_modifications_request() :: #{
%%   <<"billScenarioId">> := string(),
%%   <<"filters">> => list(list_usage_filter()()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_bill_scenario_usage_modifications_request() :: #{binary() => any()}.

%% Example:
%% list_bill_estimate_input_commitment_modifications_response() :: #{
%%   <<"items">> => list(bill_estimate_input_commitment_modification_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_bill_estimate_input_commitment_modifications_response() :: #{binary() => any()}.

%% Example:
%% negate_reserved_instance_action() :: #{
%%   <<"reservedInstancesId">> => string()
%% }
-type negate_reserved_instance_action() :: #{binary() => any()}.

%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% create_workload_estimate_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"name">> := string(),
%%   <<"rateType">> => list(any()),
%%   <<"tags">> => map()
%% }
-type create_workload_estimate_request() :: #{binary() => any()}.

%% Example:
%% batch_create_bill_scenario_usage_modification_response() :: #{
%%   <<"errors">> => list(batch_create_bill_scenario_usage_modification_error()()),
%%   <<"items">> => list(batch_create_bill_scenario_usage_modification_item()())
%% }
-type batch_create_bill_scenario_usage_modification_response() :: #{binary() => any()}.

%% Example:
%% batch_create_bill_scenario_usage_modification_request() :: #{
%%   <<"billScenarioId">> := string(),
%%   <<"clientToken">> => string(),
%%   <<"usageModifications">> := list(batch_create_bill_scenario_usage_modification_entry()())
%% }
-type batch_create_bill_scenario_usage_modification_request() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{

%% }
-type tag_resource_response() :: #{binary() => any()}.

%% Example:
%% batch_create_workload_estimate_usage_entry() :: #{
%%   <<"amount">> => [float()],
%%   <<"group">> => string(),
%%   <<"historicalUsage">> => historical_usage_entity(),
%%   <<"key">> => string(),
%%   <<"operation">> => string(),
%%   <<"serviceCode">> => string(),
%%   <<"usageAccountId">> => string(),
%%   <<"usageType">> => string()
%% }
-type batch_create_workload_estimate_usage_entry() :: #{binary() => any()}.

%% Example:
%% batch_delete_workload_estimate_usage_request() :: #{
%%   <<"ids">> := list(string()()),
%%   <<"workloadEstimateId">> := string()
%% }
-type batch_delete_workload_estimate_usage_request() :: #{binary() => any()}.

%% Example:
%% validation_exception() :: #{
%%   <<"fieldList">> => list(validation_exception_field()()),
%%   <<"message">> => [string()],
%%   <<"reason">> => list(any())
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{
%%   <<"arn">> := string()
%% }
-type list_tags_for_resource_request() :: #{binary() => any()}.

%% Example:
%% batch_create_workload_estimate_usage_item() :: #{
%%   <<"cost">> => [float()],
%%   <<"currency">> => list(any()),
%%   <<"group">> => string(),
%%   <<"historicalUsage">> => historical_usage_entity(),
%%   <<"id">> => string(),
%%   <<"key">> => string(),
%%   <<"location">> => [string()],
%%   <<"operation">> => string(),
%%   <<"quantity">> => workload_estimate_usage_quantity(),
%%   <<"serviceCode">> => string(),
%%   <<"status">> => list(any()),
%%   <<"usageAccountId">> => string(),
%%   <<"usageType">> => string()
%% }
-type batch_create_workload_estimate_usage_item() :: #{binary() => any()}.

%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"quotaCode">> => [string()],
%%   <<"retryAfterSeconds">> => [integer()],
%%   <<"serviceCode">> => [string()]
%% }
-type throttling_exception() :: #{binary() => any()}.

%% Example:
%% cost_amount() :: #{
%%   <<"amount">> => [float()],
%%   <<"currency">> => list(any())
%% }
-type cost_amount() :: #{binary() => any()}.

%% Example:
%% expression() :: #{
%%   <<"and">> => list(expression()()),
%%   <<"costCategories">> => expression_filter(),
%%   <<"dimensions">> => expression_filter(),
%%   <<"not">> => expression(),
%%   <<"or">> => list(expression()()),
%%   <<"tags">> => expression_filter()
%% }
-type expression() :: #{binary() => any()}.

%% Example:
%% batch_delete_workload_estimate_usage_response() :: #{
%%   <<"errors">> => list(batch_delete_workload_estimate_usage_error()())
%% }
-type batch_delete_workload_estimate_usage_response() :: #{binary() => any()}.

%% Example:
%% batch_create_bill_scenario_commitment_modification_request() :: #{
%%   <<"billScenarioId">> := string(),
%%   <<"clientToken">> => string(),
%%   <<"commitmentModifications">> := list(batch_create_bill_scenario_commitment_modification_entry()())
%% }
-type batch_create_bill_scenario_commitment_modification_request() :: #{binary() => any()}.

%% Example:
%% create_bill_estimate_request() :: #{
%%   <<"billScenarioId">> := string(),
%%   <<"clientToken">> => string(),
%%   <<"name">> := string(),
%%   <<"tags">> => map()
%% }
-type create_bill_estimate_request() :: #{binary() => any()}.

%% Example:
%% batch_update_bill_scenario_commitment_modification_entry() :: #{
%%   <<"group">> => string(),
%%   <<"id">> => string()
%% }
-type batch_update_bill_scenario_commitment_modification_entry() :: #{binary() => any()}.

%% Example:
%% usage_quantity() :: #{
%%   <<"amount">> => [float()],
%%   <<"startHour">> => [non_neg_integer()],
%%   <<"unit">> => [string()]
%% }
-type usage_quantity() :: #{binary() => any()}.

%% Example:
%% batch_update_bill_scenario_usage_modification_error() :: #{
%%   <<"errorCode">> => list(any()),
%%   <<"errorMessage">> => [string()],
%%   <<"id">> => string()
%% }
-type batch_update_bill_scenario_usage_modification_error() :: #{binary() => any()}.

%% Example:
%% get_bill_scenario_request() :: #{
%%   <<"identifier">> := string()
%% }
-type get_bill_scenario_request() :: #{binary() => any()}.

%% Example:
%% delete_bill_estimate_response() :: #{

%% }
-type delete_bill_estimate_response() :: #{binary() => any()}.

%% Example:
%% batch_delete_bill_scenario_usage_modification_error() :: #{
%%   <<"errorCode">> => list(any()),
%%   <<"errorMessage">> => [string()],
%%   <<"id">> => string()
%% }
-type batch_delete_bill_scenario_usage_modification_error() :: #{binary() => any()}.

%% Example:
%% batch_create_bill_scenario_commitment_modification_response() :: #{
%%   <<"errors">> => list(batch_create_bill_scenario_commitment_modification_error()()),
%%   <<"items">> => list(batch_create_bill_scenario_commitment_modification_item()())
%% }
-type batch_create_bill_scenario_commitment_modification_response() :: #{binary() => any()}.

%% Example:
%% create_bill_scenario_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"name">> := string(),
%%   <<"tags">> => map()
%% }
-type create_bill_scenario_request() :: #{binary() => any()}.

%% Example:
%% workload_estimate_summary() :: #{
%%   <<"costCurrency">> => list(any()),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"expiresAt">> => [non_neg_integer()],
%%   <<"failureMessage">> => [string()],
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"rateTimestamp">> => [non_neg_integer()],
%%   <<"rateType">> => list(any()),
%%   <<"status">> => list(any()),
%%   <<"totalCost">> => [float()]
%% }
-type workload_estimate_summary() :: #{binary() => any()}.

%% Example:
%% batch_create_bill_scenario_commitment_modification_entry() :: #{
%%   <<"commitmentAction">> => list(),
%%   <<"group">> => string(),
%%   <<"key">> => string(),
%%   <<"usageAccountId">> => string()
%% }
-type batch_create_bill_scenario_commitment_modification_entry() :: #{binary() => any()}.

%% Example:
%% batch_delete_bill_scenario_commitment_modification_request() :: #{
%%   <<"billScenarioId">> := string(),
%%   <<"ids">> := list(string()())
%% }
-type batch_delete_bill_scenario_commitment_modification_request() :: #{binary() => any()}.

%% Example:
%% create_workload_estimate_response() :: #{
%%   <<"costCurrency">> => list(any()),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"expiresAt">> => [non_neg_integer()],
%%   <<"failureMessage">> => [string()],
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"rateTimestamp">> => [non_neg_integer()],
%%   <<"rateType">> => list(any()),
%%   <<"status">> => list(any()),
%%   <<"totalCost">> => [float()]
%% }
-type create_workload_estimate_response() :: #{binary() => any()}.

%% Example:
%% list_usage_filter() :: #{
%%   <<"matchOption">> => list(any()),
%%   <<"name">> => list(any()),
%%   <<"values">> => list([string()]())
%% }
-type list_usage_filter() :: #{binary() => any()}.

%% Example:
%% update_workload_estimate_request() :: #{
%%   <<"expiresAt">> => [non_neg_integer()],
%%   <<"identifier">> := string(),
%%   <<"name">> => string()
%% }
-type update_workload_estimate_request() :: #{binary() => any()}.

%% Example:
%% delete_bill_scenario_request() :: #{
%%   <<"identifier">> := string()
%% }
-type delete_bill_scenario_request() :: #{binary() => any()}.

%% Example:
%% workload_estimate_usage_quantity() :: #{
%%   <<"amount">> => [float()],
%%   <<"unit">> => [string()]
%% }
-type workload_estimate_usage_quantity() :: #{binary() => any()}.

%% Example:
%% create_bill_scenario_response() :: #{
%%   <<"billInterval">> => bill_interval(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"expiresAt">> => [non_neg_integer()],
%%   <<"failureMessage">> => [string()],
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"status">> => list(any())
%% }
-type create_bill_scenario_response() :: #{binary() => any()}.

%% Example:
%% batch_delete_bill_scenario_commitment_modification_response() :: #{
%%   <<"errors">> => list(batch_delete_bill_scenario_commitment_modification_error()())
%% }
-type batch_delete_bill_scenario_commitment_modification_response() :: #{binary() => any()}.

%% Example:
%% list_bill_estimate_commitments_response() :: #{
%%   <<"items">> => list(bill_estimate_commitment_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_bill_estimate_commitments_response() :: #{binary() => any()}.

-type batch_create_bill_scenario_commitment_modification_errors() ::
    data_unavailable_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type batch_create_bill_scenario_usage_modification_errors() ::
    data_unavailable_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type batch_create_workload_estimate_usage_errors() ::
    data_unavailable_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type batch_delete_bill_scenario_commitment_modification_errors() ::
    data_unavailable_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type batch_delete_bill_scenario_usage_modification_errors() ::
    data_unavailable_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type batch_delete_workload_estimate_usage_errors() ::
    data_unavailable_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type batch_update_bill_scenario_commitment_modification_errors() ::
    data_unavailable_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type batch_update_bill_scenario_usage_modification_errors() ::
    data_unavailable_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type batch_update_workload_estimate_usage_errors() ::
    data_unavailable_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type create_bill_estimate_errors() ::
    data_unavailable_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_bill_scenario_errors() ::
    data_unavailable_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_workload_estimate_errors() ::
    data_unavailable_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type delete_bill_estimate_errors() ::
    data_unavailable_exception() | 
    conflict_exception().

-type delete_bill_scenario_errors() ::
    data_unavailable_exception() | 
    conflict_exception().

-type delete_workload_estimate_errors() ::
    data_unavailable_exception().

-type get_bill_estimate_errors() ::
    data_unavailable_exception() | 
    resource_not_found_exception().

-type get_bill_scenario_errors() ::
    data_unavailable_exception() | 
    resource_not_found_exception().

-type get_preferences_errors() ::
    data_unavailable_exception().

-type get_workload_estimate_errors() ::
    data_unavailable_exception() | 
    resource_not_found_exception().

-type list_bill_estimate_commitments_errors() ::
    data_unavailable_exception() | 
    resource_not_found_exception().

-type list_bill_estimate_input_commitment_modifications_errors() ::
    data_unavailable_exception() | 
    resource_not_found_exception().

-type list_bill_estimate_input_usage_modifications_errors() ::
    data_unavailable_exception() | 
    resource_not_found_exception().

-type list_bill_estimate_line_items_errors() ::
    data_unavailable_exception() | 
    resource_not_found_exception().

-type list_bill_estimates_errors() ::
    data_unavailable_exception().

-type list_bill_scenario_commitment_modifications_errors() ::
    data_unavailable_exception() | 
    resource_not_found_exception().

-type list_bill_scenario_usage_modifications_errors() ::
    data_unavailable_exception() | 
    resource_not_found_exception().

-type list_bill_scenarios_errors() ::
    data_unavailable_exception().

-type list_tags_for_resource_errors() ::
    resource_not_found_exception().

-type list_workload_estimate_usage_errors() ::
    data_unavailable_exception() | 
    resource_not_found_exception().

-type list_workload_estimates_errors() ::
    data_unavailable_exception().

-type tag_resource_errors() ::
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    resource_not_found_exception().

-type update_bill_estimate_errors() ::
    data_unavailable_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_bill_scenario_errors() ::
    data_unavailable_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_preferences_errors() ::
    data_unavailable_exception() | 
    service_quota_exceeded_exception().

-type update_workload_estimate_errors() ::
    data_unavailable_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc
%% Create Compute Savings Plans, EC2 Instance Savings Plans, or EC2 Reserved
%% Instances commitments that you want to model in a Bill Scenario.
%%
%% The `BatchCreateBillScenarioCommitmentModification' operation
%% doesn't have its own IAM permission. To authorize this operation for
%% Amazon Web Services principals,
%% include the permission
%% `bcm-pricing-calculator:CreateBillScenarioCommitmentModification' in
%% your policies.
-spec batch_create_bill_scenario_commitment_modification(aws_client:aws_client(), batch_create_bill_scenario_commitment_modification_request()) ->
    {ok, batch_create_bill_scenario_commitment_modification_response(), tuple()} |
    {error, any()} |
    {error, batch_create_bill_scenario_commitment_modification_errors(), tuple()}.
batch_create_bill_scenario_commitment_modification(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_create_bill_scenario_commitment_modification(Client, Input, []).

-spec batch_create_bill_scenario_commitment_modification(aws_client:aws_client(), batch_create_bill_scenario_commitment_modification_request(), proplists:proplist()) ->
    {ok, batch_create_bill_scenario_commitment_modification_response(), tuple()} |
    {error, any()} |
    {error, batch_create_bill_scenario_commitment_modification_errors(), tuple()}.
batch_create_bill_scenario_commitment_modification(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchCreateBillScenarioCommitmentModification">>, Input, Options).

%% @doc
%% Create Amazon Web Services service usage that you want to model in a Bill
%% Scenario.
%%
%% The `BatchCreateBillScenarioUsageModification' operation doesn't
%% have its own IAM permission. To authorize this operation for Amazon Web
%% Services principals,
%% include the permission
%% `bcm-pricing-calculator:CreateBillScenarioUsageModification' in your
%% policies.
-spec batch_create_bill_scenario_usage_modification(aws_client:aws_client(), batch_create_bill_scenario_usage_modification_request()) ->
    {ok, batch_create_bill_scenario_usage_modification_response(), tuple()} |
    {error, any()} |
    {error, batch_create_bill_scenario_usage_modification_errors(), tuple()}.
batch_create_bill_scenario_usage_modification(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_create_bill_scenario_usage_modification(Client, Input, []).

-spec batch_create_bill_scenario_usage_modification(aws_client:aws_client(), batch_create_bill_scenario_usage_modification_request(), proplists:proplist()) ->
    {ok, batch_create_bill_scenario_usage_modification_response(), tuple()} |
    {error, any()} |
    {error, batch_create_bill_scenario_usage_modification_errors(), tuple()}.
batch_create_bill_scenario_usage_modification(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchCreateBillScenarioUsageModification">>, Input, Options).

%% @doc
%% Create Amazon Web Services service usage that you want to model in a
%% Workload Estimate.
%%
%% The `BatchCreateWorkloadEstimateUsage' operation doesn't have its
%% own IAM permission. To authorize this operation for Amazon Web Services
%% principals,
%% include the permission
%% `bcm-pricing-calculator:CreateWorkloadEstimateUsage' in your policies.
-spec batch_create_workload_estimate_usage(aws_client:aws_client(), batch_create_workload_estimate_usage_request()) ->
    {ok, batch_create_workload_estimate_usage_response(), tuple()} |
    {error, any()} |
    {error, batch_create_workload_estimate_usage_errors(), tuple()}.
batch_create_workload_estimate_usage(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_create_workload_estimate_usage(Client, Input, []).

-spec batch_create_workload_estimate_usage(aws_client:aws_client(), batch_create_workload_estimate_usage_request(), proplists:proplist()) ->
    {ok, batch_create_workload_estimate_usage_response(), tuple()} |
    {error, any()} |
    {error, batch_create_workload_estimate_usage_errors(), tuple()}.
batch_create_workload_estimate_usage(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchCreateWorkloadEstimateUsage">>, Input, Options).

%% @doc
%% Delete commitment that you have created in a Bill Scenario.
%%
%% You can only delete a commitment that you had
%% added and cannot model deletion (or removal) of a existing commitment. If
%% you want model deletion of an existing
%% commitment, see the negate
%% BillScenarioCommitmentModificationAction:
%% https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_AWSBCMPricingCalculator_BillScenarioCommitmentModificationAction.html
%% of
%%
%% BatchCreateBillScenarioCommitmentModification:
%% https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_AWSBCMPricingCalculator_BatchCreateBillScenarioUsageModification.html
%% operation.
%%
%% The `BatchDeleteBillScenarioCommitmentModification' operation
%% doesn't have its own IAM permission. To authorize this operation for
%% Amazon Web Services principals,
%% include the permission
%% `bcm-pricing-calculator:DeleteBillScenarioCommitmentModification' in
%% your policies.
-spec batch_delete_bill_scenario_commitment_modification(aws_client:aws_client(), batch_delete_bill_scenario_commitment_modification_request()) ->
    {ok, batch_delete_bill_scenario_commitment_modification_response(), tuple()} |
    {error, any()} |
    {error, batch_delete_bill_scenario_commitment_modification_errors(), tuple()}.
batch_delete_bill_scenario_commitment_modification(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_delete_bill_scenario_commitment_modification(Client, Input, []).

-spec batch_delete_bill_scenario_commitment_modification(aws_client:aws_client(), batch_delete_bill_scenario_commitment_modification_request(), proplists:proplist()) ->
    {ok, batch_delete_bill_scenario_commitment_modification_response(), tuple()} |
    {error, any()} |
    {error, batch_delete_bill_scenario_commitment_modification_errors(), tuple()}.
batch_delete_bill_scenario_commitment_modification(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchDeleteBillScenarioCommitmentModification">>, Input, Options).

%% @doc
%% Delete usage that you have created in a Bill Scenario.
%%
%% You can only delete usage that you had added and cannot model
%% deletion (or removal) of a existing usage. If you want model removal of an
%% existing usage, see
%%
%% BatchUpdateBillScenarioUsageModification:
%% https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_AWSBCMPricingCalculator_BatchUpdateBillScenarioUsageModification.html.
%%
%% The `BatchDeleteBillScenarioUsageModification' operation doesn't
%% have its own IAM permission. To authorize this operation for Amazon Web
%% Services principals,
%% include the permission
%% `bcm-pricing-calculator:DeleteBillScenarioUsageModification' in your
%% policies.
-spec batch_delete_bill_scenario_usage_modification(aws_client:aws_client(), batch_delete_bill_scenario_usage_modification_request()) ->
    {ok, batch_delete_bill_scenario_usage_modification_response(), tuple()} |
    {error, any()} |
    {error, batch_delete_bill_scenario_usage_modification_errors(), tuple()}.
batch_delete_bill_scenario_usage_modification(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_delete_bill_scenario_usage_modification(Client, Input, []).

-spec batch_delete_bill_scenario_usage_modification(aws_client:aws_client(), batch_delete_bill_scenario_usage_modification_request(), proplists:proplist()) ->
    {ok, batch_delete_bill_scenario_usage_modification_response(), tuple()} |
    {error, any()} |
    {error, batch_delete_bill_scenario_usage_modification_errors(), tuple()}.
batch_delete_bill_scenario_usage_modification(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchDeleteBillScenarioUsageModification">>, Input, Options).

%% @doc
%% Delete usage that you have created in a Workload estimate.
%%
%% You can only delete usage that you had added and cannot model deletion
%% (or removal) of a existing usage. If you want model removal of an existing
%% usage, see
%%
%% BatchUpdateWorkloadEstimateUsage:
%% https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_AWSBCMPricingCalculator_BatchUpdateWorkloadEstimateUsage.html.
%%
%% The `BatchDeleteWorkloadEstimateUsage' operation doesn't have its
%% own IAM permission. To authorize this operation for Amazon Web Services
%% principals,
%% include the permission
%% `bcm-pricing-calculator:DeleteWorkloadEstimateUsage' in your policies.
-spec batch_delete_workload_estimate_usage(aws_client:aws_client(), batch_delete_workload_estimate_usage_request()) ->
    {ok, batch_delete_workload_estimate_usage_response(), tuple()} |
    {error, any()} |
    {error, batch_delete_workload_estimate_usage_errors(), tuple()}.
batch_delete_workload_estimate_usage(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_delete_workload_estimate_usage(Client, Input, []).

-spec batch_delete_workload_estimate_usage(aws_client:aws_client(), batch_delete_workload_estimate_usage_request(), proplists:proplist()) ->
    {ok, batch_delete_workload_estimate_usage_response(), tuple()} |
    {error, any()} |
    {error, batch_delete_workload_estimate_usage_errors(), tuple()}.
batch_delete_workload_estimate_usage(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchDeleteWorkloadEstimateUsage">>, Input, Options).

%% @doc
%% Update a newly added or existing commitment.
%%
%% You can update the commitment group based on a commitment ID and a Bill
%% scenario ID.
%%
%% The `BatchUpdateBillScenarioCommitmentModification' operation
%% doesn't have its own IAM permission. To authorize this operation for
%% Amazon Web Services principals,
%% include the permission
%% `bcm-pricing-calculator:UpdateBillScenarioCommitmentModification' in
%% your policies.
-spec batch_update_bill_scenario_commitment_modification(aws_client:aws_client(), batch_update_bill_scenario_commitment_modification_request()) ->
    {ok, batch_update_bill_scenario_commitment_modification_response(), tuple()} |
    {error, any()} |
    {error, batch_update_bill_scenario_commitment_modification_errors(), tuple()}.
batch_update_bill_scenario_commitment_modification(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_update_bill_scenario_commitment_modification(Client, Input, []).

-spec batch_update_bill_scenario_commitment_modification(aws_client:aws_client(), batch_update_bill_scenario_commitment_modification_request(), proplists:proplist()) ->
    {ok, batch_update_bill_scenario_commitment_modification_response(), tuple()} |
    {error, any()} |
    {error, batch_update_bill_scenario_commitment_modification_errors(), tuple()}.
batch_update_bill_scenario_commitment_modification(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchUpdateBillScenarioCommitmentModification">>, Input, Options).

%% @doc
%% Update a newly added or existing usage lines.
%%
%% You can update the usage amounts, usage hour, and usage group based on a
%% usage ID and a Bill scenario ID.
%%
%% The `BatchUpdateBillScenarioUsageModification' operation doesn't
%% have its own IAM permission. To authorize this operation for Amazon Web
%% Services principals,
%% include the permission
%% `bcm-pricing-calculator:UpdateBillScenarioUsageModification' in your
%% policies.
-spec batch_update_bill_scenario_usage_modification(aws_client:aws_client(), batch_update_bill_scenario_usage_modification_request()) ->
    {ok, batch_update_bill_scenario_usage_modification_response(), tuple()} |
    {error, any()} |
    {error, batch_update_bill_scenario_usage_modification_errors(), tuple()}.
batch_update_bill_scenario_usage_modification(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_update_bill_scenario_usage_modification(Client, Input, []).

-spec batch_update_bill_scenario_usage_modification(aws_client:aws_client(), batch_update_bill_scenario_usage_modification_request(), proplists:proplist()) ->
    {ok, batch_update_bill_scenario_usage_modification_response(), tuple()} |
    {error, any()} |
    {error, batch_update_bill_scenario_usage_modification_errors(), tuple()}.
batch_update_bill_scenario_usage_modification(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchUpdateBillScenarioUsageModification">>, Input, Options).

%% @doc
%% Update a newly added or existing usage lines.
%%
%% You can update the usage amounts and usage group based on a usage ID and a
%% Workload estimate ID.
%%
%% The `BatchUpdateWorkloadEstimateUsage' operation doesn't have its
%% own IAM permission. To authorize this operation for Amazon Web Services
%% principals,
%% include the permission
%% `bcm-pricing-calculator:UpdateWorkloadEstimateUsage' in your policies.
-spec batch_update_workload_estimate_usage(aws_client:aws_client(), batch_update_workload_estimate_usage_request()) ->
    {ok, batch_update_workload_estimate_usage_response(), tuple()} |
    {error, any()} |
    {error, batch_update_workload_estimate_usage_errors(), tuple()}.
batch_update_workload_estimate_usage(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_update_workload_estimate_usage(Client, Input, []).

-spec batch_update_workload_estimate_usage(aws_client:aws_client(), batch_update_workload_estimate_usage_request(), proplists:proplist()) ->
    {ok, batch_update_workload_estimate_usage_response(), tuple()} |
    {error, any()} |
    {error, batch_update_workload_estimate_usage_errors(), tuple()}.
batch_update_workload_estimate_usage(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchUpdateWorkloadEstimateUsage">>, Input, Options).

%% @doc
%% Create a Bill estimate from a Bill scenario.
%%
%% In the Bill scenario you can model usage addition, usage changes, and
%% usage removal. You can also model commitment addition and commitment
%% removal. After all changes in a Bill scenario is made satisfactorily, you
%% can call this API with a Bill scenario ID to generate the Bill estimate.
%% Bill estimate calculates the pre-tax cost for your consolidated billing
%% family, incorporating all modeled usage and commitments alongside existing
%% usage and commitments from your most recent completed anniversary bill,
%% with any applicable discounts applied.
-spec create_bill_estimate(aws_client:aws_client(), create_bill_estimate_request()) ->
    {ok, create_bill_estimate_response(), tuple()} |
    {error, any()} |
    {error, create_bill_estimate_errors(), tuple()}.
create_bill_estimate(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_bill_estimate(Client, Input, []).

-spec create_bill_estimate(aws_client:aws_client(), create_bill_estimate_request(), proplists:proplist()) ->
    {ok, create_bill_estimate_response(), tuple()} |
    {error, any()} |
    {error, create_bill_estimate_errors(), tuple()}.
create_bill_estimate(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateBillEstimate">>, Input, Options).

%% @doc
%% Creates a new bill scenario to model potential changes to Amazon Web
%% Services usage and costs.
-spec create_bill_scenario(aws_client:aws_client(), create_bill_scenario_request()) ->
    {ok, create_bill_scenario_response(), tuple()} |
    {error, any()} |
    {error, create_bill_scenario_errors(), tuple()}.
create_bill_scenario(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_bill_scenario(Client, Input, []).

-spec create_bill_scenario(aws_client:aws_client(), create_bill_scenario_request(), proplists:proplist()) ->
    {ok, create_bill_scenario_response(), tuple()} |
    {error, any()} |
    {error, create_bill_scenario_errors(), tuple()}.
create_bill_scenario(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateBillScenario">>, Input, Options).

%% @doc
%% Creates a new workload estimate to model costs for a specific workload.
-spec create_workload_estimate(aws_client:aws_client(), create_workload_estimate_request()) ->
    {ok, create_workload_estimate_response(), tuple()} |
    {error, any()} |
    {error, create_workload_estimate_errors(), tuple()}.
create_workload_estimate(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_workload_estimate(Client, Input, []).

-spec create_workload_estimate(aws_client:aws_client(), create_workload_estimate_request(), proplists:proplist()) ->
    {ok, create_workload_estimate_response(), tuple()} |
    {error, any()} |
    {error, create_workload_estimate_errors(), tuple()}.
create_workload_estimate(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateWorkloadEstimate">>, Input, Options).

%% @doc
%% Deletes an existing bill estimate.
-spec delete_bill_estimate(aws_client:aws_client(), delete_bill_estimate_request()) ->
    {ok, delete_bill_estimate_response(), tuple()} |
    {error, any()} |
    {error, delete_bill_estimate_errors(), tuple()}.
delete_bill_estimate(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_bill_estimate(Client, Input, []).

-spec delete_bill_estimate(aws_client:aws_client(), delete_bill_estimate_request(), proplists:proplist()) ->
    {ok, delete_bill_estimate_response(), tuple()} |
    {error, any()} |
    {error, delete_bill_estimate_errors(), tuple()}.
delete_bill_estimate(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteBillEstimate">>, Input, Options).

%% @doc
%% Deletes an existing bill scenario.
-spec delete_bill_scenario(aws_client:aws_client(), delete_bill_scenario_request()) ->
    {ok, delete_bill_scenario_response(), tuple()} |
    {error, any()} |
    {error, delete_bill_scenario_errors(), tuple()}.
delete_bill_scenario(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_bill_scenario(Client, Input, []).

-spec delete_bill_scenario(aws_client:aws_client(), delete_bill_scenario_request(), proplists:proplist()) ->
    {ok, delete_bill_scenario_response(), tuple()} |
    {error, any()} |
    {error, delete_bill_scenario_errors(), tuple()}.
delete_bill_scenario(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteBillScenario">>, Input, Options).

%% @doc
%% Deletes an existing workload estimate.
-spec delete_workload_estimate(aws_client:aws_client(), delete_workload_estimate_request()) ->
    {ok, delete_workload_estimate_response(), tuple()} |
    {error, any()} |
    {error, delete_workload_estimate_errors(), tuple()}.
delete_workload_estimate(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_workload_estimate(Client, Input, []).

-spec delete_workload_estimate(aws_client:aws_client(), delete_workload_estimate_request(), proplists:proplist()) ->
    {ok, delete_workload_estimate_response(), tuple()} |
    {error, any()} |
    {error, delete_workload_estimate_errors(), tuple()}.
delete_workload_estimate(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteWorkloadEstimate">>, Input, Options).

%% @doc
%% Retrieves details of a specific bill estimate.
-spec get_bill_estimate(aws_client:aws_client(), get_bill_estimate_request()) ->
    {ok, get_bill_estimate_response(), tuple()} |
    {error, any()} |
    {error, get_bill_estimate_errors(), tuple()}.
get_bill_estimate(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_bill_estimate(Client, Input, []).

-spec get_bill_estimate(aws_client:aws_client(), get_bill_estimate_request(), proplists:proplist()) ->
    {ok, get_bill_estimate_response(), tuple()} |
    {error, any()} |
    {error, get_bill_estimate_errors(), tuple()}.
get_bill_estimate(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetBillEstimate">>, Input, Options).

%% @doc
%% Retrieves details of a specific bill scenario.
-spec get_bill_scenario(aws_client:aws_client(), get_bill_scenario_request()) ->
    {ok, get_bill_scenario_response(), tuple()} |
    {error, any()} |
    {error, get_bill_scenario_errors(), tuple()}.
get_bill_scenario(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_bill_scenario(Client, Input, []).

-spec get_bill_scenario(aws_client:aws_client(), get_bill_scenario_request(), proplists:proplist()) ->
    {ok, get_bill_scenario_response(), tuple()} |
    {error, any()} |
    {error, get_bill_scenario_errors(), tuple()}.
get_bill_scenario(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetBillScenario">>, Input, Options).

%% @doc
%% Retrieves the current preferences for the Amazon Web Services Cost
%% Explorer service.
-spec get_preferences(aws_client:aws_client(), get_preferences_request()) ->
    {ok, get_preferences_response(), tuple()} |
    {error, any()} |
    {error, get_preferences_errors(), tuple()}.
get_preferences(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_preferences(Client, Input, []).

-spec get_preferences(aws_client:aws_client(), get_preferences_request(), proplists:proplist()) ->
    {ok, get_preferences_response(), tuple()} |
    {error, any()} |
    {error, get_preferences_errors(), tuple()}.
get_preferences(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetPreferences">>, Input, Options).

%% @doc
%% Retrieves details of a specific workload estimate.
-spec get_workload_estimate(aws_client:aws_client(), get_workload_estimate_request()) ->
    {ok, get_workload_estimate_response(), tuple()} |
    {error, any()} |
    {error, get_workload_estimate_errors(), tuple()}.
get_workload_estimate(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_workload_estimate(Client, Input, []).

-spec get_workload_estimate(aws_client:aws_client(), get_workload_estimate_request(), proplists:proplist()) ->
    {ok, get_workload_estimate_response(), tuple()} |
    {error, any()} |
    {error, get_workload_estimate_errors(), tuple()}.
get_workload_estimate(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetWorkloadEstimate">>, Input, Options).

%% @doc
%% Lists the commitments associated with a bill estimate.
-spec list_bill_estimate_commitments(aws_client:aws_client(), list_bill_estimate_commitments_request()) ->
    {ok, list_bill_estimate_commitments_response(), tuple()} |
    {error, any()} |
    {error, list_bill_estimate_commitments_errors(), tuple()}.
list_bill_estimate_commitments(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_bill_estimate_commitments(Client, Input, []).

-spec list_bill_estimate_commitments(aws_client:aws_client(), list_bill_estimate_commitments_request(), proplists:proplist()) ->
    {ok, list_bill_estimate_commitments_response(), tuple()} |
    {error, any()} |
    {error, list_bill_estimate_commitments_errors(), tuple()}.
list_bill_estimate_commitments(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListBillEstimateCommitments">>, Input, Options).

%% @doc
%% Lists the input commitment modifications associated with a bill estimate.
-spec list_bill_estimate_input_commitment_modifications(aws_client:aws_client(), list_bill_estimate_input_commitment_modifications_request()) ->
    {ok, list_bill_estimate_input_commitment_modifications_response(), tuple()} |
    {error, any()} |
    {error, list_bill_estimate_input_commitment_modifications_errors(), tuple()}.
list_bill_estimate_input_commitment_modifications(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_bill_estimate_input_commitment_modifications(Client, Input, []).

-spec list_bill_estimate_input_commitment_modifications(aws_client:aws_client(), list_bill_estimate_input_commitment_modifications_request(), proplists:proplist()) ->
    {ok, list_bill_estimate_input_commitment_modifications_response(), tuple()} |
    {error, any()} |
    {error, list_bill_estimate_input_commitment_modifications_errors(), tuple()}.
list_bill_estimate_input_commitment_modifications(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListBillEstimateInputCommitmentModifications">>, Input, Options).

%% @doc
%% Lists the input usage modifications associated with a bill estimate.
-spec list_bill_estimate_input_usage_modifications(aws_client:aws_client(), list_bill_estimate_input_usage_modifications_request()) ->
    {ok, list_bill_estimate_input_usage_modifications_response(), tuple()} |
    {error, any()} |
    {error, list_bill_estimate_input_usage_modifications_errors(), tuple()}.
list_bill_estimate_input_usage_modifications(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_bill_estimate_input_usage_modifications(Client, Input, []).

-spec list_bill_estimate_input_usage_modifications(aws_client:aws_client(), list_bill_estimate_input_usage_modifications_request(), proplists:proplist()) ->
    {ok, list_bill_estimate_input_usage_modifications_response(), tuple()} |
    {error, any()} |
    {error, list_bill_estimate_input_usage_modifications_errors(), tuple()}.
list_bill_estimate_input_usage_modifications(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListBillEstimateInputUsageModifications">>, Input, Options).

%% @doc
%% Lists the line items associated with a bill estimate.
-spec list_bill_estimate_line_items(aws_client:aws_client(), list_bill_estimate_line_items_request()) ->
    {ok, list_bill_estimate_line_items_response(), tuple()} |
    {error, any()} |
    {error, list_bill_estimate_line_items_errors(), tuple()}.
list_bill_estimate_line_items(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_bill_estimate_line_items(Client, Input, []).

-spec list_bill_estimate_line_items(aws_client:aws_client(), list_bill_estimate_line_items_request(), proplists:proplist()) ->
    {ok, list_bill_estimate_line_items_response(), tuple()} |
    {error, any()} |
    {error, list_bill_estimate_line_items_errors(), tuple()}.
list_bill_estimate_line_items(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListBillEstimateLineItems">>, Input, Options).

%% @doc
%% Lists all bill estimates for the account.
-spec list_bill_estimates(aws_client:aws_client(), list_bill_estimates_request()) ->
    {ok, list_bill_estimates_response(), tuple()} |
    {error, any()} |
    {error, list_bill_estimates_errors(), tuple()}.
list_bill_estimates(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_bill_estimates(Client, Input, []).

-spec list_bill_estimates(aws_client:aws_client(), list_bill_estimates_request(), proplists:proplist()) ->
    {ok, list_bill_estimates_response(), tuple()} |
    {error, any()} |
    {error, list_bill_estimates_errors(), tuple()}.
list_bill_estimates(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListBillEstimates">>, Input, Options).

%% @doc
%% Lists the commitment modifications associated with a bill scenario.
-spec list_bill_scenario_commitment_modifications(aws_client:aws_client(), list_bill_scenario_commitment_modifications_request()) ->
    {ok, list_bill_scenario_commitment_modifications_response(), tuple()} |
    {error, any()} |
    {error, list_bill_scenario_commitment_modifications_errors(), tuple()}.
list_bill_scenario_commitment_modifications(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_bill_scenario_commitment_modifications(Client, Input, []).

-spec list_bill_scenario_commitment_modifications(aws_client:aws_client(), list_bill_scenario_commitment_modifications_request(), proplists:proplist()) ->
    {ok, list_bill_scenario_commitment_modifications_response(), tuple()} |
    {error, any()} |
    {error, list_bill_scenario_commitment_modifications_errors(), tuple()}.
list_bill_scenario_commitment_modifications(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListBillScenarioCommitmentModifications">>, Input, Options).

%% @doc
%% Lists the usage modifications associated with a bill scenario.
-spec list_bill_scenario_usage_modifications(aws_client:aws_client(), list_bill_scenario_usage_modifications_request()) ->
    {ok, list_bill_scenario_usage_modifications_response(), tuple()} |
    {error, any()} |
    {error, list_bill_scenario_usage_modifications_errors(), tuple()}.
list_bill_scenario_usage_modifications(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_bill_scenario_usage_modifications(Client, Input, []).

-spec list_bill_scenario_usage_modifications(aws_client:aws_client(), list_bill_scenario_usage_modifications_request(), proplists:proplist()) ->
    {ok, list_bill_scenario_usage_modifications_response(), tuple()} |
    {error, any()} |
    {error, list_bill_scenario_usage_modifications_errors(), tuple()}.
list_bill_scenario_usage_modifications(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListBillScenarioUsageModifications">>, Input, Options).

%% @doc
%% Lists all bill scenarios for the account.
-spec list_bill_scenarios(aws_client:aws_client(), list_bill_scenarios_request()) ->
    {ok, list_bill_scenarios_response(), tuple()} |
    {error, any()} |
    {error, list_bill_scenarios_errors(), tuple()}.
list_bill_scenarios(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_bill_scenarios(Client, Input, []).

-spec list_bill_scenarios(aws_client:aws_client(), list_bill_scenarios_request(), proplists:proplist()) ->
    {ok, list_bill_scenarios_response(), tuple()} |
    {error, any()} |
    {error, list_bill_scenarios_errors(), tuple()}.
list_bill_scenarios(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListBillScenarios">>, Input, Options).

%% @doc
%% Lists all tags associated with a specified resource.
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

%% @doc
%% Lists the usage associated with a workload estimate.
-spec list_workload_estimate_usage(aws_client:aws_client(), list_workload_estimate_usage_request()) ->
    {ok, list_workload_estimate_usage_response(), tuple()} |
    {error, any()} |
    {error, list_workload_estimate_usage_errors(), tuple()}.
list_workload_estimate_usage(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_workload_estimate_usage(Client, Input, []).

-spec list_workload_estimate_usage(aws_client:aws_client(), list_workload_estimate_usage_request(), proplists:proplist()) ->
    {ok, list_workload_estimate_usage_response(), tuple()} |
    {error, any()} |
    {error, list_workload_estimate_usage_errors(), tuple()}.
list_workload_estimate_usage(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListWorkloadEstimateUsage">>, Input, Options).

%% @doc
%% Lists all workload estimates for the account.
-spec list_workload_estimates(aws_client:aws_client(), list_workload_estimates_request()) ->
    {ok, list_workload_estimates_response(), tuple()} |
    {error, any()} |
    {error, list_workload_estimates_errors(), tuple()}.
list_workload_estimates(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_workload_estimates(Client, Input, []).

-spec list_workload_estimates(aws_client:aws_client(), list_workload_estimates_request(), proplists:proplist()) ->
    {ok, list_workload_estimates_response(), tuple()} |
    {error, any()} |
    {error, list_workload_estimates_errors(), tuple()}.
list_workload_estimates(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListWorkloadEstimates">>, Input, Options).

%% @doc
%% Adds one or more tags to a specified resource.
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

%% @doc
%% Removes one or more tags from a specified resource.
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

%% @doc
%% Updates an existing bill estimate.
-spec update_bill_estimate(aws_client:aws_client(), update_bill_estimate_request()) ->
    {ok, update_bill_estimate_response(), tuple()} |
    {error, any()} |
    {error, update_bill_estimate_errors(), tuple()}.
update_bill_estimate(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_bill_estimate(Client, Input, []).

-spec update_bill_estimate(aws_client:aws_client(), update_bill_estimate_request(), proplists:proplist()) ->
    {ok, update_bill_estimate_response(), tuple()} |
    {error, any()} |
    {error, update_bill_estimate_errors(), tuple()}.
update_bill_estimate(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateBillEstimate">>, Input, Options).

%% @doc
%% Updates an existing bill scenario.
-spec update_bill_scenario(aws_client:aws_client(), update_bill_scenario_request()) ->
    {ok, update_bill_scenario_response(), tuple()} |
    {error, any()} |
    {error, update_bill_scenario_errors(), tuple()}.
update_bill_scenario(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_bill_scenario(Client, Input, []).

-spec update_bill_scenario(aws_client:aws_client(), update_bill_scenario_request(), proplists:proplist()) ->
    {ok, update_bill_scenario_response(), tuple()} |
    {error, any()} |
    {error, update_bill_scenario_errors(), tuple()}.
update_bill_scenario(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateBillScenario">>, Input, Options).

%% @doc
%% Updates the preferences for the Amazon Web Services Cost Explorer service.
-spec update_preferences(aws_client:aws_client(), update_preferences_request()) ->
    {ok, update_preferences_response(), tuple()} |
    {error, any()} |
    {error, update_preferences_errors(), tuple()}.
update_preferences(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_preferences(Client, Input, []).

-spec update_preferences(aws_client:aws_client(), update_preferences_request(), proplists:proplist()) ->
    {ok, update_preferences_response(), tuple()} |
    {error, any()} |
    {error, update_preferences_errors(), tuple()}.
update_preferences(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdatePreferences">>, Input, Options).

%% @doc
%% Updates an existing workload estimate.
-spec update_workload_estimate(aws_client:aws_client(), update_workload_estimate_request()) ->
    {ok, update_workload_estimate_response(), tuple()} |
    {error, any()} |
    {error, update_workload_estimate_errors(), tuple()}.
update_workload_estimate(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_workload_estimate(Client, Input, []).

-spec update_workload_estimate(aws_client:aws_client(), update_workload_estimate_request(), proplists:proplist()) ->
    {ok, update_workload_estimate_response(), tuple()} |
    {error, any()} |
    {error, update_workload_estimate_errors(), tuple()}.
update_workload_estimate(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateWorkloadEstimate">>, Input, Options).

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
    Client1 = Client#{service => <<"bcm-pricing-calculator">>},
    Host = build_host(<<"bcm-pricing-calculator">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.0">>},
        {<<"X-Amz-Target">>, <<"AWSBCMPricingCalculator.", Action/binary>>}
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
