%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc You can use the Cost Optimization Hub API to programmatically
%% identify, filter, aggregate, and quantify savings for your cost
%% optimization recommendations across multiple Amazon Web Services Regions
%% and Amazon Web Services accounts in your organization.
%%
%% The Cost Optimization Hub API provides the following endpoint:
%%
%% https://cost-optimization-hub.us-east-1.amazonaws.com
-module(aws_cost_optimization_hub).

-export([get_preferences/2,
         get_preferences/3,
         get_recommendation/2,
         get_recommendation/3,
         list_enrollment_statuses/2,
         list_enrollment_statuses/3,
         list_recommendation_summaries/2,
         list_recommendation_summaries/3,
         list_recommendations/2,
         list_recommendations/3,
         update_enrollment_status/2,
         update_enrollment_status/3,
         update_preferences/2,
         update_preferences/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% ebs_volume_configuration() :: #{
%%   <<"attachmentState">> => [string()],
%%   <<"performance">> => block_storage_performance_configuration(),
%%   <<"storage">> => storage_configuration()
%% }
-type ebs_volume_configuration() :: #{binary() => any()}.

%% Example:
%% aurora_db_cluster_storage_configuration() :: #{
%%   <<"storageType">> => [string()]
%% }
-type aurora_db_cluster_storage_configuration() :: #{binary() => any()}.

%% Example:
%% summary_metrics_result() :: #{
%%   <<"savingsPercentage">> => [string()]
%% }
-type summary_metrics_result() :: #{binary() => any()}.

%% Example:
%% ec2_instance_savings_plans() :: #{
%%   <<"configuration">> => ec2_instance_savings_plans_configuration(),
%%   <<"costCalculation">> => savings_plans_cost_calculation()
%% }
-type ec2_instance_savings_plans() :: #{binary() => any()}.

%% Example:
%% ecs_service_configuration() :: #{
%%   <<"compute">> => compute_configuration()
%% }
-type ecs_service_configuration() :: #{binary() => any()}.

%% Example:
%% account_enrollment_status() :: #{
%%   <<"accountId">> => string(),
%%   <<"createdTimestamp">> => [non_neg_integer()],
%%   <<"lastUpdatedTimestamp">> => [non_neg_integer()],
%%   <<"status">> => list(any())
%% }
-type account_enrollment_status() :: #{binary() => any()}.

%% Example:
%% resource_cost_calculation() :: #{
%%   <<"pricing">> => resource_pricing(),
%%   <<"usages">> => list(usage()())
%% }
-type resource_cost_calculation() :: #{binary() => any()}.

%% Example:
%% rds_db_instance_storage_configuration() :: #{
%%   <<"allocatedStorageInGb">> => [float()],
%%   <<"iops">> => [float()],
%%   <<"storageThroughput">> => [float()],
%%   <<"storageType">> => [string()]
%% }
-type rds_db_instance_storage_configuration() :: #{binary() => any()}.

%% Example:
%% rds_reserved_instances_configuration() :: #{
%%   <<"accountScope">> => [string()],
%%   <<"currentGeneration">> => [string()],
%%   <<"databaseEdition">> => [string()],
%%   <<"databaseEngine">> => [string()],
%%   <<"deploymentOption">> => [string()],
%%   <<"instanceFamily">> => [string()],
%%   <<"instanceType">> => [string()],
%%   <<"licenseModel">> => [string()],
%%   <<"monthlyRecurringCost">> => [string()],
%%   <<"normalizedUnitsToPurchase">> => [string()],
%%   <<"numberOfInstancesToPurchase">> => [string()],
%%   <<"paymentOption">> => [string()],
%%   <<"reservedInstancesRegion">> => [string()],
%%   <<"service">> => [string()],
%%   <<"sizeFlexEligible">> => [boolean()],
%%   <<"term">> => [string()],
%%   <<"upfrontCost">> => [string()]
%% }
-type rds_reserved_instances_configuration() :: #{binary() => any()}.

%% Example:
%% ec2_auto_scaling_group() :: #{
%%   <<"configuration">> => ec2_auto_scaling_group_configuration(),
%%   <<"costCalculation">> => resource_cost_calculation()
%% }
-type ec2_auto_scaling_group() :: #{binary() => any()}.

%% Example:
%% memory_db_reserved_instances() :: #{
%%   <<"configuration">> => memory_db_reserved_instances_configuration(),
%%   <<"costCalculation">> => reserved_instances_cost_calculation()
%% }
-type memory_db_reserved_instances() :: #{binary() => any()}.

%% Example:
%% list_enrollment_statuses_response() :: #{
%%   <<"includeMemberAccounts">> => [boolean()],
%%   <<"items">> => list(account_enrollment_status()()),
%%   <<"nextToken">> => [string()]
%% }
-type list_enrollment_statuses_response() :: #{binary() => any()}.

%% Example:
%% get_preferences_request() :: #{

%% }
-type get_preferences_request() :: #{binary() => any()}.

%% Example:
%% savings_plans_pricing() :: #{
%%   <<"estimatedMonthlyCommitment">> => [float()],
%%   <<"estimatedOnDemandCost">> => [float()],
%%   <<"monthlySavingsPlansEligibleCost">> => [float()],
%%   <<"savingsPercentage">> => [float()]
%% }
-type savings_plans_pricing() :: #{binary() => any()}.

%% Example:
%% ecs_service() :: #{
%%   <<"configuration">> => ecs_service_configuration(),
%%   <<"costCalculation">> => resource_cost_calculation()
%% }
-type ecs_service() :: #{binary() => any()}.

%% Example:
%% reserved_instances_pricing() :: #{
%%   <<"estimatedMonthlyAmortizedReservationCost">> => [float()],
%%   <<"estimatedOnDemandCost">> => [float()],
%%   <<"monthlyReservationEligibleCost">> => [float()],
%%   <<"savingsPercentage">> => [float()]
%% }
-type reserved_instances_pricing() :: #{binary() => any()}.

%% Example:
%% lambda_function() :: #{
%%   <<"configuration">> => lambda_function_configuration(),
%%   <<"costCalculation">> => resource_cost_calculation()
%% }
-type lambda_function() :: #{binary() => any()}.

%% Example:
%% list_enrollment_statuses_request() :: #{
%%   <<"accountId">> => string(),
%%   <<"includeOrganizationInfo">> => [boolean()],
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => [string()]
%% }
-type list_enrollment_statuses_request() :: #{binary() => any()}.

%% Example:
%% lambda_function_configuration() :: #{
%%   <<"compute">> => compute_configuration()
%% }
-type lambda_function_configuration() :: #{binary() => any()}.

%% Example:
%% get_recommendation_request() :: #{
%%   <<"recommendationId">> := [string()]
%% }
-type get_recommendation_request() :: #{binary() => any()}.

%% Example:
%% preferred_commitment() :: #{
%%   <<"paymentOption">> => list(any()),
%%   <<"term">> => list(any())
%% }
-type preferred_commitment() :: #{binary() => any()}.

%% Example:
%% redshift_reserved_instances() :: #{
%%   <<"configuration">> => redshift_reserved_instances_configuration(),
%%   <<"costCalculation">> => reserved_instances_cost_calculation()
%% }
-type redshift_reserved_instances() :: #{binary() => any()}.

%% Example:
%% order_by() :: #{
%%   <<"dimension">> => [string()],
%%   <<"order">> => list(any())
%% }
-type order_by() :: #{binary() => any()}.

%% Example:
%% update_enrollment_status_request() :: #{
%%   <<"includeMemberAccounts">> => [boolean()],
%%   <<"status">> := list(any())
%% }
-type update_enrollment_status_request() :: #{binary() => any()}.

%% Example:
%% rds_reserved_instances() :: #{
%%   <<"configuration">> => rds_reserved_instances_configuration(),
%%   <<"costCalculation">> => reserved_instances_cost_calculation()
%% }
-type rds_reserved_instances() :: #{binary() => any()}.

%% Example:
%% usage() :: #{
%%   <<"operation">> => [string()],
%%   <<"productCode">> => [string()],
%%   <<"unit">> => [string()],
%%   <<"usageAmount">> => [float()],
%%   <<"usageType">> => [string()]
%% }
-type usage() :: #{binary() => any()}.

%% Example:
%% resource_pricing() :: #{
%%   <<"estimatedCostAfterDiscounts">> => [float()],
%%   <<"estimatedCostBeforeDiscounts">> => [float()],
%%   <<"estimatedDiscounts">> => estimated_discounts(),
%%   <<"estimatedNetUnusedAmortizedCommitments">> => [float()]
%% }
-type resource_pricing() :: #{binary() => any()}.

%% Example:
%% open_search_reserved_instances() :: #{
%%   <<"configuration">> => open_search_reserved_instances_configuration(),
%%   <<"costCalculation">> => reserved_instances_cost_calculation()
%% }
-type open_search_reserved_instances() :: #{binary() => any()}.

%% Example:
%% update_enrollment_status_response() :: #{
%%   <<"status">> => [string()]
%% }
-type update_enrollment_status_response() :: #{binary() => any()}.

%% Example:
%% dynamo_db_reserved_capacity_configuration() :: #{
%%   <<"accountScope">> => [string()],
%%   <<"capacityUnits">> => [string()],
%%   <<"monthlyRecurringCost">> => [string()],
%%   <<"numberOfCapacityUnitsToPurchase">> => [string()],
%%   <<"paymentOption">> => [string()],
%%   <<"reservedInstancesRegion">> => [string()],
%%   <<"service">> => [string()],
%%   <<"term">> => [string()],
%%   <<"upfrontCost">> => [string()]
%% }
-type dynamo_db_reserved_capacity_configuration() :: #{binary() => any()}.

%% Example:
%% get_preferences_response() :: #{
%%   <<"memberAccountDiscountVisibility">> => list(any()),
%%   <<"preferredCommitment">> => preferred_commitment(),
%%   <<"savingsEstimationMode">> => list(any())
%% }
-type get_preferences_response() :: #{binary() => any()}.

%% Example:
%% elasti_cache_reserved_instances() :: #{
%%   <<"configuration">> => elasti_cache_reserved_instances_configuration(),
%%   <<"costCalculation">> => reserved_instances_cost_calculation()
%% }
-type elasti_cache_reserved_instances() :: #{binary() => any()}.

%% Example:
%% redshift_reserved_instances_configuration() :: #{
%%   <<"accountScope">> => [string()],
%%   <<"currentGeneration">> => [string()],
%%   <<"instanceFamily">> => [string()],
%%   <<"instanceType">> => [string()],
%%   <<"monthlyRecurringCost">> => [string()],
%%   <<"normalizedUnitsToPurchase">> => [string()],
%%   <<"numberOfInstancesToPurchase">> => [string()],
%%   <<"paymentOption">> => [string()],
%%   <<"reservedInstancesRegion">> => [string()],
%%   <<"service">> => [string()],
%%   <<"sizeFlexEligible">> => [boolean()],
%%   <<"term">> => [string()],
%%   <<"upfrontCost">> => [string()]
%% }
-type redshift_reserved_instances_configuration() :: #{binary() => any()}.

%% Example:
%% list_recommendation_summaries_response() :: #{
%%   <<"currencyCode">> => [string()],
%%   <<"estimatedTotalDedupedSavings">> => [float()],
%%   <<"groupBy">> => [string()],
%%   <<"items">> => list(recommendation_summary()()),
%%   <<"metrics">> => summary_metrics_result(),
%%   <<"nextToken">> => [string()]
%% }
-type list_recommendation_summaries_response() :: #{binary() => any()}.

%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"resourceId">> => [string()]
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"key">> => [string()],
%%   <<"value">> => [string()]
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% ebs_volume() :: #{
%%   <<"configuration">> => ebs_volume_configuration(),
%%   <<"costCalculation">> => resource_cost_calculation()
%% }
-type ebs_volume() :: #{binary() => any()}.

%% Example:
%% ec2_reserved_instances() :: #{
%%   <<"configuration">> => ec2_reserved_instances_configuration(),
%%   <<"costCalculation">> => reserved_instances_cost_calculation()
%% }
-type ec2_reserved_instances() :: #{binary() => any()}.

%% Example:
%% ec2_reserved_instances_configuration() :: #{
%%   <<"accountScope">> => [string()],
%%   <<"currentGeneration">> => [string()],
%%   <<"instanceFamily">> => [string()],
%%   <<"instanceType">> => [string()],
%%   <<"monthlyRecurringCost">> => [string()],
%%   <<"normalizedUnitsToPurchase">> => [string()],
%%   <<"numberOfInstancesToPurchase">> => [string()],
%%   <<"offeringClass">> => [string()],
%%   <<"paymentOption">> => [string()],
%%   <<"platform">> => [string()],
%%   <<"reservedInstancesRegion">> => [string()],
%%   <<"service">> => [string()],
%%   <<"sizeFlexEligible">> => [boolean()],
%%   <<"tenancy">> => [string()],
%%   <<"term">> => [string()],
%%   <<"upfrontCost">> => [string()]
%% }
-type ec2_reserved_instances_configuration() :: #{binary() => any()}.

%% Example:
%% recommendation() :: #{
%%   <<"accountId">> => [string()],
%%   <<"actionType">> => [string()],
%%   <<"currencyCode">> => [string()],
%%   <<"currentResourceSummary">> => [string()],
%%   <<"currentResourceType">> => [string()],
%%   <<"estimatedMonthlyCost">> => [float()],
%%   <<"estimatedMonthlySavings">> => [float()],
%%   <<"estimatedSavingsPercentage">> => [float()],
%%   <<"implementationEffort">> => [string()],
%%   <<"lastRefreshTimestamp">> => non_neg_integer(),
%%   <<"recommendationId">> => [string()],
%%   <<"recommendationLookbackPeriodInDays">> => [integer()],
%%   <<"recommendedResourceSummary">> => [string()],
%%   <<"recommendedResourceType">> => [string()],
%%   <<"region">> => [string()],
%%   <<"resourceArn">> => [string()],
%%   <<"resourceId">> => [string()],
%%   <<"restartNeeded">> => [boolean()],
%%   <<"rollbackPossible">> => [boolean()],
%%   <<"source">> => list(any()),
%%   <<"tags">> => list(tag()())
%% }
-type recommendation() :: #{binary() => any()}.

%% Example:
%% compute_savings_plans_configuration() :: #{
%%   <<"accountScope">> => [string()],
%%   <<"hourlyCommitment">> => [string()],
%%   <<"paymentOption">> => [string()],
%%   <<"term">> => [string()]
%% }
-type compute_savings_plans_configuration() :: #{binary() => any()}.

%% Example:
%% update_preferences_request() :: #{
%%   <<"memberAccountDiscountVisibility">> => list(any()),
%%   <<"preferredCommitment">> => preferred_commitment(),
%%   <<"savingsEstimationMode">> => list(any())
%% }
-type update_preferences_request() :: #{binary() => any()}.

%% Example:
%% update_preferences_response() :: #{
%%   <<"memberAccountDiscountVisibility">> => list(any()),
%%   <<"preferredCommitment">> => preferred_commitment(),
%%   <<"savingsEstimationMode">> => list(any())
%% }
-type update_preferences_response() :: #{binary() => any()}.

%% Example:
%% storage_configuration() :: #{
%%   <<"sizeInGb">> => [float()],
%%   <<"type">> => [string()]
%% }
-type storage_configuration() :: #{binary() => any()}.

%% Example:
%% memory_db_reserved_instances_configuration() :: #{
%%   <<"accountScope">> => [string()],
%%   <<"currentGeneration">> => [string()],
%%   <<"instanceFamily">> => [string()],
%%   <<"instanceType">> => [string()],
%%   <<"monthlyRecurringCost">> => [string()],
%%   <<"normalizedUnitsToPurchase">> => [string()],
%%   <<"numberOfInstancesToPurchase">> => [string()],
%%   <<"paymentOption">> => [string()],
%%   <<"reservedInstancesRegion">> => [string()],
%%   <<"service">> => [string()],
%%   <<"sizeFlexEligible">> => [boolean()],
%%   <<"term">> => [string()],
%%   <<"upfrontCost">> => [string()]
%% }
-type memory_db_reserved_instances_configuration() :: #{binary() => any()}.

%% Example:
%% block_storage_performance_configuration() :: #{
%%   <<"iops">> => [float()],
%%   <<"throughput">> => [float()]
%% }
-type block_storage_performance_configuration() :: #{binary() => any()}.

%% Example:
%% reserved_instances_cost_calculation() :: #{
%%   <<"pricing">> => reserved_instances_pricing()
%% }
-type reserved_instances_cost_calculation() :: #{binary() => any()}.

%% Example:
%% mixed_instance_configuration() :: #{
%%   <<"type">> => [string()]
%% }
-type mixed_instance_configuration() :: #{binary() => any()}.

%% Example:
%% elasti_cache_reserved_instances_configuration() :: #{
%%   <<"accountScope">> => [string()],
%%   <<"currentGeneration">> => [string()],
%%   <<"instanceFamily">> => [string()],
%%   <<"instanceType">> => [string()],
%%   <<"monthlyRecurringCost">> => [string()],
%%   <<"normalizedUnitsToPurchase">> => [string()],
%%   <<"numberOfInstancesToPurchase">> => [string()],
%%   <<"paymentOption">> => [string()],
%%   <<"reservedInstancesRegion">> => [string()],
%%   <<"service">> => [string()],
%%   <<"sizeFlexEligible">> => [boolean()],
%%   <<"term">> => [string()],
%%   <<"upfrontCost">> => [string()]
%% }
-type elasti_cache_reserved_instances_configuration() :: #{binary() => any()}.

%% Example:
%% ec2_instance() :: #{
%%   <<"configuration">> => ec2_instance_configuration(),
%%   <<"costCalculation">> => resource_cost_calculation()
%% }
-type ec2_instance() :: #{binary() => any()}.

%% Example:
%% savings_plans_cost_calculation() :: #{
%%   <<"pricing">> => savings_plans_pricing()
%% }
-type savings_plans_cost_calculation() :: #{binary() => any()}.

%% Example:
%% aurora_db_cluster_storage() :: #{
%%   <<"configuration">> => aurora_db_cluster_storage_configuration(),
%%   <<"costCalculation">> => resource_cost_calculation()
%% }
-type aurora_db_cluster_storage() :: #{binary() => any()}.

%% Example:
%% filter() :: #{
%%   <<"accountIds">> => list(string()()),
%%   <<"actionTypes">> => list(list(any())()),
%%   <<"implementationEfforts">> => list(list(any())()),
%%   <<"recommendationIds">> => list([string()]()),
%%   <<"regions">> => list([string()]()),
%%   <<"resourceArns">> => list([string()]()),
%%   <<"resourceIds">> => list([string()]()),
%%   <<"resourceTypes">> => list(list(any())()),
%%   <<"restartNeeded">> => [boolean()],
%%   <<"rollbackPossible">> => [boolean()],
%%   <<"tags">> => list(tag()())
%% }
-type filter() :: #{binary() => any()}.

%% Example:
%% validation_exception_detail() :: #{
%%   <<"fieldName">> => [string()],
%%   <<"message">> => [string()]
%% }
-type validation_exception_detail() :: #{binary() => any()}.

%% Example:
%% ec2_auto_scaling_group_configuration() :: #{
%%   <<"allocationStrategy">> => list(any()),
%%   <<"instance">> => instance_configuration(),
%%   <<"mixedInstances">> => list(mixed_instance_configuration()()),
%%   <<"type">> => list(any())
%% }
-type ec2_auto_scaling_group_configuration() :: #{binary() => any()}.

%% Example:
%% rds_db_instance_configuration() :: #{
%%   <<"instance">> => db_instance_configuration()
%% }
-type rds_db_instance_configuration() :: #{binary() => any()}.

%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type internal_server_exception() :: #{binary() => any()}.

%% Example:
%% sage_maker_savings_plans() :: #{
%%   <<"configuration">> => sage_maker_savings_plans_configuration(),
%%   <<"costCalculation">> => savings_plans_cost_calculation()
%% }
-type sage_maker_savings_plans() :: #{binary() => any()}.

%% Example:
%% ec2_instance_configuration() :: #{
%%   <<"instance">> => instance_configuration()
%% }
-type ec2_instance_configuration() :: #{binary() => any()}.

%% Example:
%% db_instance_configuration() :: #{
%%   <<"dbInstanceClass">> => [string()]
%% }
-type db_instance_configuration() :: #{binary() => any()}.

%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% compute_savings_plans() :: #{
%%   <<"configuration">> => compute_savings_plans_configuration(),
%%   <<"costCalculation">> => savings_plans_cost_calculation()
%% }
-type compute_savings_plans() :: #{binary() => any()}.

%% Example:
%% estimated_discounts() :: #{
%%   <<"otherDiscount">> => [float()],
%%   <<"reservedInstancesDiscount">> => [float()],
%%   <<"savingsPlansDiscount">> => [float()]
%% }
-type estimated_discounts() :: #{binary() => any()}.

%% Example:
%% sage_maker_savings_plans_configuration() :: #{
%%   <<"accountScope">> => [string()],
%%   <<"hourlyCommitment">> => [string()],
%%   <<"paymentOption">> => [string()],
%%   <<"term">> => [string()]
%% }
-type sage_maker_savings_plans_configuration() :: #{binary() => any()}.

%% Example:
%% instance_configuration() :: #{
%%   <<"type">> => [string()]
%% }
-type instance_configuration() :: #{binary() => any()}.

%% Example:
%% validation_exception() :: #{
%%   <<"fields">> => list(validation_exception_detail()()),
%%   <<"message">> => [string()],
%%   <<"reason">> => list(any())
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type throttling_exception() :: #{binary() => any()}.

%% Example:
%% ec2_instance_savings_plans_configuration() :: #{
%%   <<"accountScope">> => [string()],
%%   <<"hourlyCommitment">> => [string()],
%%   <<"instanceFamily">> => [string()],
%%   <<"paymentOption">> => [string()],
%%   <<"savingsPlansRegion">> => [string()],
%%   <<"term">> => [string()]
%% }
-type ec2_instance_savings_plans_configuration() :: #{binary() => any()}.

%% Example:
%% rds_db_instance() :: #{
%%   <<"configuration">> => rds_db_instance_configuration(),
%%   <<"costCalculation">> => resource_cost_calculation()
%% }
-type rds_db_instance() :: #{binary() => any()}.

%% Example:
%% list_recommendation_summaries_request() :: #{
%%   <<"filter">> => filter(),
%%   <<"groupBy">> := [string()],
%%   <<"maxResults">> => integer(),
%%   <<"metrics">> => list(list(any())()),
%%   <<"nextToken">> => [string()]
%% }
-type list_recommendation_summaries_request() :: #{binary() => any()}.

%% Example:
%% open_search_reserved_instances_configuration() :: #{
%%   <<"accountScope">> => [string()],
%%   <<"currentGeneration">> => [string()],
%%   <<"instanceType">> => [string()],
%%   <<"monthlyRecurringCost">> => [string()],
%%   <<"normalizedUnitsToPurchase">> => [string()],
%%   <<"numberOfInstancesToPurchase">> => [string()],
%%   <<"paymentOption">> => [string()],
%%   <<"reservedInstancesRegion">> => [string()],
%%   <<"service">> => [string()],
%%   <<"sizeFlexEligible">> => [boolean()],
%%   <<"term">> => [string()],
%%   <<"upfrontCost">> => [string()]
%% }
-type open_search_reserved_instances_configuration() :: #{binary() => any()}.

%% Example:
%% recommendation_summary() :: #{
%%   <<"estimatedMonthlySavings">> => [float()],
%%   <<"group">> => [string()],
%%   <<"recommendationCount">> => [integer()]
%% }
-type recommendation_summary() :: #{binary() => any()}.

%% Example:
%% list_recommendations_response() :: #{
%%   <<"items">> => list(recommendation()()),
%%   <<"nextToken">> => [string()]
%% }
-type list_recommendations_response() :: #{binary() => any()}.

%% Example:
%% get_recommendation_response() :: #{
%%   <<"accountId">> => [string()],
%%   <<"actionType">> => list(any()),
%%   <<"costCalculationLookbackPeriodInDays">> => [integer()],
%%   <<"currencyCode">> => [string()],
%%   <<"currentResourceDetails">> => list(),
%%   <<"currentResourceType">> => list(any()),
%%   <<"estimatedMonthlyCost">> => [float()],
%%   <<"estimatedMonthlySavings">> => [float()],
%%   <<"estimatedSavingsOverCostCalculationLookbackPeriod">> => [float()],
%%   <<"estimatedSavingsPercentage">> => [float()],
%%   <<"implementationEffort">> => list(any()),
%%   <<"lastRefreshTimestamp">> => non_neg_integer(),
%%   <<"recommendationId">> => [string()],
%%   <<"recommendationLookbackPeriodInDays">> => [integer()],
%%   <<"recommendedResourceDetails">> => list(),
%%   <<"recommendedResourceType">> => list(any()),
%%   <<"region">> => [string()],
%%   <<"resourceArn">> => [string()],
%%   <<"resourceId">> => [string()],
%%   <<"restartNeeded">> => [boolean()],
%%   <<"rollbackPossible">> => [boolean()],
%%   <<"source">> => list(any()),
%%   <<"tags">> => list(tag()())
%% }
-type get_recommendation_response() :: #{binary() => any()}.

%% Example:
%% dynamo_db_reserved_capacity() :: #{
%%   <<"configuration">> => dynamo_db_reserved_capacity_configuration(),
%%   <<"costCalculation">> => reserved_instances_cost_calculation()
%% }
-type dynamo_db_reserved_capacity() :: #{binary() => any()}.

%% Example:
%% rds_db_instance_storage() :: #{
%%   <<"configuration">> => rds_db_instance_storage_configuration(),
%%   <<"costCalculation">> => resource_cost_calculation()
%% }
-type rds_db_instance_storage() :: #{binary() => any()}.

%% Example:
%% list_recommendations_request() :: #{
%%   <<"filter">> => filter(),
%%   <<"includeAllRecommendations">> => [boolean()],
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => [string()],
%%   <<"orderBy">> => order_by()
%% }
-type list_recommendations_request() :: #{binary() => any()}.

%% Example:
%% compute_configuration() :: #{
%%   <<"architecture">> => [string()],
%%   <<"memorySizeInMB">> => [integer()],
%%   <<"platform">> => [string()],
%%   <<"vCpu">> => [float()]
%% }
-type compute_configuration() :: #{binary() => any()}.

-type get_preferences_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type get_recommendation_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_enrollment_statuses_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_recommendation_summaries_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_recommendations_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type update_enrollment_status_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type update_preferences_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Returns a set of preferences for an account in order to add
%% account-specific preferences into the service.
%%
%% These preferences impact how the savings associated with recommendations
%% are presented—estimated savings after discounts or estimated savings
%% before discounts, for example.
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

%% @doc Returns both the current and recommended resource configuration and
%% the estimated cost impact for a recommendation.
%%
%% The `recommendationId' is only valid for up to a maximum of 24 hours
%% as recommendations are refreshed daily. To retrieve the
%% `recommendationId', use the `ListRecommendations' API.
-spec get_recommendation(aws_client:aws_client(), get_recommendation_request()) ->
    {ok, get_recommendation_response(), tuple()} |
    {error, any()} |
    {error, get_recommendation_errors(), tuple()}.
get_recommendation(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_recommendation(Client, Input, []).

-spec get_recommendation(aws_client:aws_client(), get_recommendation_request(), proplists:proplist()) ->
    {ok, get_recommendation_response(), tuple()} |
    {error, any()} |
    {error, get_recommendation_errors(), tuple()}.
get_recommendation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRecommendation">>, Input, Options).

%% @doc Retrieves the enrollment status for an account.
%%
%% It can also return the list of accounts that are enrolled under the
%% organization.
-spec list_enrollment_statuses(aws_client:aws_client(), list_enrollment_statuses_request()) ->
    {ok, list_enrollment_statuses_response(), tuple()} |
    {error, any()} |
    {error, list_enrollment_statuses_errors(), tuple()}.
list_enrollment_statuses(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_enrollment_statuses(Client, Input, []).

-spec list_enrollment_statuses(aws_client:aws_client(), list_enrollment_statuses_request(), proplists:proplist()) ->
    {ok, list_enrollment_statuses_response(), tuple()} |
    {error, any()} |
    {error, list_enrollment_statuses_errors(), tuple()}.
list_enrollment_statuses(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListEnrollmentStatuses">>, Input, Options).

%% @doc Returns a concise representation of savings estimates for resources.
%%
%% Also returns de-duped savings across different types of recommendations.
%%
%% The following filters are not supported for this API:
%% `recommendationIds', `resourceArns', and `resourceIds'.
-spec list_recommendation_summaries(aws_client:aws_client(), list_recommendation_summaries_request()) ->
    {ok, list_recommendation_summaries_response(), tuple()} |
    {error, any()} |
    {error, list_recommendation_summaries_errors(), tuple()}.
list_recommendation_summaries(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_recommendation_summaries(Client, Input, []).

-spec list_recommendation_summaries(aws_client:aws_client(), list_recommendation_summaries_request(), proplists:proplist()) ->
    {ok, list_recommendation_summaries_response(), tuple()} |
    {error, any()} |
    {error, list_recommendation_summaries_errors(), tuple()}.
list_recommendation_summaries(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListRecommendationSummaries">>, Input, Options).

%% @doc Returns a list of recommendations.
-spec list_recommendations(aws_client:aws_client(), list_recommendations_request()) ->
    {ok, list_recommendations_response(), tuple()} |
    {error, any()} |
    {error, list_recommendations_errors(), tuple()}.
list_recommendations(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_recommendations(Client, Input, []).

-spec list_recommendations(aws_client:aws_client(), list_recommendations_request(), proplists:proplist()) ->
    {ok, list_recommendations_response(), tuple()} |
    {error, any()} |
    {error, list_recommendations_errors(), tuple()}.
list_recommendations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListRecommendations">>, Input, Options).

%% @doc Updates the enrollment (opt in and opt out) status of an account to
%% the Cost Optimization Hub service.
%%
%% If the account is a management account or delegated administrator of an
%% organization, this action can also be used to enroll member accounts of
%% the organization.
%%
%% You must have the appropriate permissions to opt in to Cost Optimization
%% Hub and to view its recommendations. When you opt in, Cost Optimization
%% Hub automatically creates a service-linked role in your account to access
%% its data.
-spec update_enrollment_status(aws_client:aws_client(), update_enrollment_status_request()) ->
    {ok, update_enrollment_status_response(), tuple()} |
    {error, any()} |
    {error, update_enrollment_status_errors(), tuple()}.
update_enrollment_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_enrollment_status(Client, Input, []).

-spec update_enrollment_status(aws_client:aws_client(), update_enrollment_status_request(), proplists:proplist()) ->
    {ok, update_enrollment_status_response(), tuple()} |
    {error, any()} |
    {error, update_enrollment_status_errors(), tuple()}.
update_enrollment_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateEnrollmentStatus">>, Input, Options).

%% @doc Updates a set of preferences for an account in order to add
%% account-specific preferences into the service.
%%
%% These preferences impact how the savings associated with recommendations
%% are presented.
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
    Client1 = Client#{service => <<"cost-optimization-hub">>},
    Host = build_host(<<"cost-optimization-hub">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.0">>},
        {<<"X-Amz-Target">>, <<"CostOptimizationHubService.", Action/binary>>}
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
