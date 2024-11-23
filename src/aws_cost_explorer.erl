%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc You can use the Cost Explorer API to programmatically query your cost
%% and usage data.
%%
%% You can query for aggregated data such as total monthly costs or total
%% daily usage. You can
%% also query for granular data. This might include the number of daily write
%% operations for
%% Amazon DynamoDB database tables in your production environment.
%%
%% Service Endpoint
%%
%% The Cost Explorer API provides the following endpoint:
%%
%% `https://ce.us-east-1.amazonaws.com'
%%
%% For information about the costs that are associated with the Cost Explorer
%% API, see
%% Amazon Web Services Cost
%% Management Pricing: http://aws.amazon.com/aws-cost-management/pricing/.
-module(aws_cost_explorer).

-export([create_anomaly_monitor/2,
         create_anomaly_monitor/3,
         create_anomaly_subscription/2,
         create_anomaly_subscription/3,
         create_cost_category_definition/2,
         create_cost_category_definition/3,
         delete_anomaly_monitor/2,
         delete_anomaly_monitor/3,
         delete_anomaly_subscription/2,
         delete_anomaly_subscription/3,
         delete_cost_category_definition/2,
         delete_cost_category_definition/3,
         describe_cost_category_definition/2,
         describe_cost_category_definition/3,
         get_anomalies/2,
         get_anomalies/3,
         get_anomaly_monitors/2,
         get_anomaly_monitors/3,
         get_anomaly_subscriptions/2,
         get_anomaly_subscriptions/3,
         get_approximate_usage_records/2,
         get_approximate_usage_records/3,
         get_commitment_purchase_analysis/2,
         get_commitment_purchase_analysis/3,
         get_cost_and_usage/2,
         get_cost_and_usage/3,
         get_cost_and_usage_with_resources/2,
         get_cost_and_usage_with_resources/3,
         get_cost_categories/2,
         get_cost_categories/3,
         get_cost_forecast/2,
         get_cost_forecast/3,
         get_dimension_values/2,
         get_dimension_values/3,
         get_reservation_coverage/2,
         get_reservation_coverage/3,
         get_reservation_purchase_recommendation/2,
         get_reservation_purchase_recommendation/3,
         get_reservation_utilization/2,
         get_reservation_utilization/3,
         get_rightsizing_recommendation/2,
         get_rightsizing_recommendation/3,
         get_savings_plan_purchase_recommendation_details/2,
         get_savings_plan_purchase_recommendation_details/3,
         get_savings_plans_coverage/2,
         get_savings_plans_coverage/3,
         get_savings_plans_purchase_recommendation/2,
         get_savings_plans_purchase_recommendation/3,
         get_savings_plans_utilization/2,
         get_savings_plans_utilization/3,
         get_savings_plans_utilization_details/2,
         get_savings_plans_utilization_details/3,
         get_tags/2,
         get_tags/3,
         get_usage_forecast/2,
         get_usage_forecast/3,
         list_commitment_purchase_analyses/2,
         list_commitment_purchase_analyses/3,
         list_cost_allocation_tag_backfill_history/2,
         list_cost_allocation_tag_backfill_history/3,
         list_cost_allocation_tags/2,
         list_cost_allocation_tags/3,
         list_cost_category_definitions/2,
         list_cost_category_definitions/3,
         list_savings_plans_purchase_recommendation_generation/2,
         list_savings_plans_purchase_recommendation_generation/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         provide_anomaly_feedback/2,
         provide_anomaly_feedback/3,
         start_commitment_purchase_analysis/2,
         start_commitment_purchase_analysis/3,
         start_cost_allocation_tag_backfill/2,
         start_cost_allocation_tag_backfill/3,
         start_savings_plans_purchase_recommendation_generation/2,
         start_savings_plans_purchase_recommendation_generation/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_anomaly_monitor/2,
         update_anomaly_monitor/3,
         update_anomaly_subscription/2,
         update_anomaly_subscription/3,
         update_cost_allocation_tags_status/2,
         update_cost_allocation_tags_status/3,
         update_cost_category_definition/2,
         update_cost_category_definition/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% create_anomaly_monitor_request() :: #{
%%   <<"AnomalyMonitor">> := anomaly_monitor(),
%%   <<"ResourceTags">> => list(resource_tag()())
%% }
-type create_anomaly_monitor_request() :: #{binary() => any()}.

%% Example:
%% instance_details() :: #{
%%   <<"EC2InstanceDetails">> => ec2_instance_details(),
%%   <<"ESInstanceDetails">> => e_s_instance_details(),
%%   <<"ElastiCacheInstanceDetails">> => elasti_cache_instance_details(),
%%   <<"MemoryDBInstanceDetails">> => memory_db_instance_details(),
%%   <<"RDSInstanceDetails">> => rds_instance_details(),
%%   <<"RedshiftInstanceDetails">> => redshift_instance_details()
%% }
-type instance_details() :: #{binary() => any()}.

%% Example:
%% savings_plans_amortized_commitment() :: #{
%%   <<"AmortizedRecurringCommitment">> => string(),
%%   <<"AmortizedUpfrontCommitment">> => string(),
%%   <<"TotalAmortizedCommitment">> => string()
%% }
-type savings_plans_amortized_commitment() :: #{binary() => any()}.

%% Example:
%% list_cost_allocation_tags_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"TagKeys">> => list(string()()),
%%   <<"Type">> => list(any())
%% }
-type list_cost_allocation_tags_request() :: #{binary() => any()}.

%% Example:
%% list_cost_category_definitions_request() :: #{
%%   <<"EffectiveOn">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_cost_category_definitions_request() :: #{binary() => any()}.

%% Example:
%% reservation_purchase_recommendation_summary() :: #{
%%   <<"CurrencyCode">> => string(),
%%   <<"TotalEstimatedMonthlySavingsAmount">> => string(),
%%   <<"TotalEstimatedMonthlySavingsPercentage">> => string()
%% }
-type reservation_purchase_recommendation_summary() :: #{binary() => any()}.

%% Example:
%% get_reservation_purchase_recommendation_request() :: #{
%%   <<"AccountId">> => string(),
%%   <<"AccountScope">> => list(any()),
%%   <<"Filter">> => expression(),
%%   <<"LookbackPeriodInDays">> => list(any()),
%%   <<"NextPageToken">> => string(),
%%   <<"PageSize">> => integer(),
%%   <<"PaymentOption">> => list(any()),
%%   <<"Service">> := string(),
%%   <<"ServiceSpecification">> => service_specification(),
%%   <<"TermInYears">> => list(any())
%% }
-type get_reservation_purchase_recommendation_request() :: #{binary() => any()}.

%% Example:
%% tag_resource_request() :: #{
%%   <<"ResourceArn">> := string(),
%%   <<"ResourceTags">> := list(resource_tag()())
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% cost_allocation_tag_status_entry() :: #{
%%   <<"Status">> => list(any()),
%%   <<"TagKey">> => string()
%% }
-type cost_allocation_tag_status_entry() :: #{binary() => any()}.

%% Example:
%% get_savings_plans_utilization_details_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"SavingsPlansUtilizationDetails">> => list(savings_plans_utilization_detail()()),
%%   <<"TimePeriod">> => date_interval(),
%%   <<"Total">> => savings_plans_utilization_aggregates()
%% }
-type get_savings_plans_utilization_details_response() :: #{binary() => any()}.

%% Example:
%% get_cost_and_usage_response() :: #{
%%   <<"DimensionValueAttributes">> => list(dimension_values_with_attributes()()),
%%   <<"GroupDefinitions">> => list(group_definition()()),
%%   <<"NextPageToken">> => string(),
%%   <<"ResultsByTime">> => list(result_by_time()())
%% }
-type get_cost_and_usage_response() :: #{binary() => any()}.

%% Example:
%% get_anomaly_subscriptions_response() :: #{
%%   <<"AnomalySubscriptions">> => list(anomaly_subscription()()),
%%   <<"NextPageToken">> => string()
%% }
-type get_anomaly_subscriptions_response() :: #{binary() => any()}.

%% Example:
%% generation_exists_exception() :: #{
%%   <<"Message">> => string()
%% }
-type generation_exists_exception() :: #{binary() => any()}.

%% Example:
%% coverage_by_time() :: #{
%%   <<"Groups">> => list(reservation_coverage_group()()),
%%   <<"TimePeriod">> => date_interval(),
%%   <<"Total">> => coverage()
%% }
-type coverage_by_time() :: #{binary() => any()}.

%% Example:
%% resource_utilization() :: #{
%%   <<"EC2ResourceUtilization">> => ec2_resource_utilization()
%% }
-type resource_utilization() :: #{binary() => any()}.

%% Example:
%% get_tags_request() :: #{
%%   <<"Filter">> => expression(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextPageToken">> => string(),
%%   <<"SearchString">> => string(),
%%   <<"SortBy">> => list(sort_definition()()),
%%   <<"TagKey">> => string(),
%%   <<"TimePeriod">> := date_interval()
%% }
-type get_tags_request() :: #{binary() => any()}.

%% Example:
%% get_cost_and_usage_with_resources_request() :: #{
%%   <<"Filter">> := expression(),
%%   <<"Granularity">> := list(any()),
%%   <<"GroupBy">> => list(group_definition()()),
%%   <<"Metrics">> => list(string()()),
%%   <<"NextPageToken">> => string(),
%%   <<"TimePeriod">> := date_interval()
%% }
-type get_cost_and_usage_with_resources_request() :: #{binary() => any()}.

%% Example:
%% create_anomaly_subscription_request() :: #{
%%   <<"AnomalySubscription">> := anomaly_subscription(),
%%   <<"ResourceTags">> => list(resource_tag()())
%% }
-type create_anomaly_subscription_request() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{

%% }
-type untag_resource_response() :: #{binary() => any()}.

%% Example:
%% get_savings_plans_purchase_recommendation_request() :: #{
%%   <<"AccountScope">> => list(any()),
%%   <<"Filter">> => expression(),
%%   <<"LookbackPeriodInDays">> := list(any()),
%%   <<"NextPageToken">> => string(),
%%   <<"PageSize">> => integer(),
%%   <<"PaymentOption">> := list(any()),
%%   <<"SavingsPlansType">> := list(any()),
%%   <<"TermInYears">> := list(any())
%% }
-type get_savings_plans_purchase_recommendation_request() :: #{binary() => any()}.

%% Example:
%% anomaly_subscription() :: #{
%%   <<"AccountId">> => string(),
%%   <<"Frequency">> => list(any()),
%%   <<"MonitorArnList">> => list(string()()),
%%   <<"Subscribers">> => list(subscriber()()),
%%   <<"SubscriptionArn">> => string(),
%%   <<"SubscriptionName">> => string(),
%%   <<"Threshold">> => float(),
%%   <<"ThresholdExpression">> => expression()
%% }
-type anomaly_subscription() :: #{binary() => any()}.

%% Example:
%% get_anomaly_monitors_response() :: #{
%%   <<"AnomalyMonitors">> => list(anomaly_monitor()()),
%%   <<"NextPageToken">> => string()
%% }
-type get_anomaly_monitors_response() :: #{binary() => any()}.

%% Example:
%% coverage_cost() :: #{
%%   <<"OnDemandCost">> => string()
%% }
-type coverage_cost() :: #{binary() => any()}.

%% Example:
%% delete_anomaly_monitor_response() :: #{

%% }
-type delete_anomaly_monitor_response() :: #{binary() => any()}.

%% Example:
%% get_cost_forecast_response() :: #{
%%   <<"ForecastResultsByTime">> => list(forecast_result()()),
%%   <<"Total">> => metric_value()
%% }
-type get_cost_forecast_response() :: #{binary() => any()}.

%% Example:
%% rightsizing_recommendation_summary() :: #{
%%   <<"EstimatedTotalMonthlySavingsAmount">> => string(),
%%   <<"SavingsCurrencyCode">> => string(),
%%   <<"SavingsPercentage">> => string(),
%%   <<"TotalRecommendationCount">> => string()
%% }
-type rightsizing_recommendation_summary() :: #{binary() => any()}.

%% Example:
%% create_cost_category_definition_request() :: #{
%%   <<"DefaultValue">> => string(),
%%   <<"EffectiveStart">> => string(),
%%   <<"Name">> := string(),
%%   <<"ResourceTags">> => list(resource_tag()()),
%%   <<"RuleVersion">> := list(any()),
%%   <<"Rules">> := list(cost_category_rule()()),
%%   <<"SplitChargeRules">> => list(cost_category_split_charge_rule()())
%% }
-type create_cost_category_definition_request() :: #{binary() => any()}.

%% Example:
%% get_cost_and_usage_with_resources_response() :: #{
%%   <<"DimensionValueAttributes">> => list(dimension_values_with_attributes()()),
%%   <<"GroupDefinitions">> => list(group_definition()()),
%%   <<"NextPageToken">> => string(),
%%   <<"ResultsByTime">> => list(result_by_time()())
%% }
-type get_cost_and_usage_with_resources_response() :: #{binary() => any()}.

%% Example:
%% date_interval() :: #{
%%   <<"End">> => string(),
%%   <<"Start">> => string()
%% }
-type date_interval() :: #{binary() => any()}.

%% Example:
%% savings_plans_purchase_recommendation_summary() :: #{
%%   <<"CurrencyCode">> => string(),
%%   <<"CurrentOnDemandSpend">> => string(),
%%   <<"DailyCommitmentToPurchase">> => string(),
%%   <<"EstimatedMonthlySavingsAmount">> => string(),
%%   <<"EstimatedOnDemandCostWithCurrentCommitment">> => string(),
%%   <<"EstimatedROI">> => string(),
%%   <<"EstimatedSavingsAmount">> => string(),
%%   <<"EstimatedSavingsPercentage">> => string(),
%%   <<"EstimatedTotalCost">> => string(),
%%   <<"HourlyCommitmentToPurchase">> => string(),
%%   <<"TotalRecommendationCount">> => string()
%% }
-type savings_plans_purchase_recommendation_summary() :: #{binary() => any()}.

%% Example:
%% tag_values() :: #{
%%   <<"Key">> => string(),
%%   <<"MatchOptions">> => list(list(any())()),
%%   <<"Values">> => list(string()())
%% }
-type tag_values() :: #{binary() => any()}.

%% Example:
%% recommendation_detail_data() :: #{
%%   <<"AccountId">> => string(),
%%   <<"AccountScope">> => list(any()),
%%   <<"CurrencyCode">> => string(),
%%   <<"CurrentAverageCoverage">> => string(),
%%   <<"CurrentAverageHourlyOnDemandSpend">> => string(),
%%   <<"CurrentMaximumHourlyOnDemandSpend">> => string(),
%%   <<"CurrentMinimumHourlyOnDemandSpend">> => string(),
%%   <<"EstimatedAverageCoverage">> => string(),
%%   <<"EstimatedAverageUtilization">> => string(),
%%   <<"EstimatedMonthlySavingsAmount">> => string(),
%%   <<"EstimatedOnDemandCost">> => string(),
%%   <<"EstimatedOnDemandCostWithCurrentCommitment">> => string(),
%%   <<"EstimatedROI">> => string(),
%%   <<"EstimatedSPCost">> => string(),
%%   <<"EstimatedSavingsAmount">> => string(),
%%   <<"EstimatedSavingsPercentage">> => string(),
%%   <<"ExistingHourlyCommitment">> => string(),
%%   <<"GenerationTimestamp">> => string(),
%%   <<"HourlyCommitmentToPurchase">> => string(),
%%   <<"InstanceFamily">> => string(),
%%   <<"LatestUsageTimestamp">> => string(),
%%   <<"LookbackPeriodInDays">> => list(any()),
%%   <<"MetricsOverLookbackPeriod">> => list(recommendation_detail_hourly_metrics()()),
%%   <<"OfferingId">> => string(),
%%   <<"PaymentOption">> => list(any()),
%%   <<"Region">> => string(),
%%   <<"SavingsPlansType">> => list(any()),
%%   <<"TermInYears">> => list(any()),
%%   <<"UpfrontCost">> => string()
%% }
-type recommendation_detail_data() :: #{binary() => any()}.

%% Example:
%% update_anomaly_monitor_response() :: #{
%%   <<"MonitorArn">> => string()
%% }
-type update_anomaly_monitor_response() :: #{binary() => any()}.

%% Example:
%% get_savings_plans_utilization_details_request() :: #{
%%   <<"DataType">> => list(list(any())()),
%%   <<"Filter">> => expression(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"SortBy">> => sort_definition(),
%%   <<"TimePeriod">> := date_interval()
%% }
-type get_savings_plans_utilization_details_request() :: #{binary() => any()}.

%% Example:
%% update_cost_category_definition_response() :: #{
%%   <<"CostCategoryArn">> => string(),
%%   <<"EffectiveStart">> => string()
%% }
-type update_cost_category_definition_response() :: #{binary() => any()}.

%% Example:
%% e_s_instance_details() :: #{
%%   <<"CurrentGeneration">> => boolean(),
%%   <<"InstanceClass">> => string(),
%%   <<"InstanceSize">> => string(),
%%   <<"Region">> => string(),
%%   <<"SizeFlexEligible">> => boolean()
%% }
-type e_s_instance_details() :: #{binary() => any()}.

%% Example:
%% anomaly_date_interval() :: #{
%%   <<"EndDate">> => string(),
%%   <<"StartDate">> => string()
%% }
-type anomaly_date_interval() :: #{binary() => any()}.

%% Example:
%% utilization_by_time() :: #{
%%   <<"Groups">> => list(reservation_utilization_group()()),
%%   <<"TimePeriod">> => date_interval(),
%%   <<"Total">> => reservation_aggregates()
%% }
-type utilization_by_time() :: #{binary() => any()}.

%% Example:
%% reservation_utilization_group() :: #{
%%   <<"Attributes">> => map(),
%%   <<"Key">> => string(),
%%   <<"Utilization">> => reservation_aggregates(),
%%   <<"Value">> => string()
%% }
-type reservation_utilization_group() :: #{binary() => any()}.

%% Example:
%% analysis_summary() :: #{
%%   <<"AnalysisCompletionTime">> => string(),
%%   <<"AnalysisId">> => string(),
%%   <<"AnalysisStartedTime">> => string(),
%%   <<"AnalysisStatus">> => list(any()),
%%   <<"CommitmentPurchaseAnalysisConfiguration">> => commitment_purchase_analysis_configuration(),
%%   <<"ErrorCode">> => list(any()),
%%   <<"EstimatedCompletionTime">> => string()
%% }
-type analysis_summary() :: #{binary() => any()}.

%% Example:
%% create_cost_category_definition_response() :: #{
%%   <<"CostCategoryArn">> => string(),
%%   <<"EffectiveStart">> => string()
%% }
-type create_cost_category_definition_response() :: #{binary() => any()}.

%% Example:
%% list_cost_category_definitions_response() :: #{
%%   <<"CostCategoryReferences">> => list(cost_category_reference()()),
%%   <<"NextToken">> => string()
%% }
-type list_cost_category_definitions_response() :: #{binary() => any()}.

%% Example:
%% get_reservation_coverage_request() :: #{
%%   <<"Filter">> => expression(),
%%   <<"Granularity">> => list(any()),
%%   <<"GroupBy">> => list(group_definition()()),
%%   <<"MaxResults">> => integer(),
%%   <<"Metrics">> => list(string()()),
%%   <<"NextPageToken">> => string(),
%%   <<"SortBy">> => sort_definition(),
%%   <<"TimePeriod">> := date_interval()
%% }
-type get_reservation_coverage_request() :: #{binary() => any()}.

%% Example:
%% ec2_specification() :: #{
%%   <<"OfferingClass">> => list(any())
%% }
-type ec2_specification() :: #{binary() => any()}.

%% Example:
%% start_cost_allocation_tag_backfill_request() :: #{
%%   <<"BackfillFrom">> := string()
%% }
-type start_cost_allocation_tag_backfill_request() :: #{binary() => any()}.

%% Example:
%% describe_cost_category_definition_request() :: #{
%%   <<"CostCategoryArn">> := string(),
%%   <<"EffectiveOn">> => string()
%% }
-type describe_cost_category_definition_request() :: #{binary() => any()}.

%% Example:
%% cost_category_split_charge_rule_parameter() :: #{
%%   <<"Type">> => list(any()),
%%   <<"Values">> => list(string()())
%% }
-type cost_category_split_charge_rule_parameter() :: #{binary() => any()}.

%% Example:
%% rightsizing_recommendation_metadata() :: #{
%%   <<"AdditionalMetadata">> => string(),
%%   <<"GenerationTimestamp">> => string(),
%%   <<"LookbackPeriodInDays">> => list(any()),
%%   <<"RecommendationId">> => string()
%% }
-type rightsizing_recommendation_metadata() :: #{binary() => any()}.

%% Example:
%% savings_plans_utilization() :: #{
%%   <<"TotalCommitment">> => string(),
%%   <<"UnusedCommitment">> => string(),
%%   <<"UsedCommitment">> => string(),
%%   <<"UtilizationPercentage">> => string()
%% }
-type savings_plans_utilization() :: #{binary() => any()}.

%% Example:
%% ec2_instance_details() :: #{
%%   <<"AvailabilityZone">> => string(),
%%   <<"CurrentGeneration">> => boolean(),
%%   <<"Family">> => string(),
%%   <<"InstanceType">> => string(),
%%   <<"Platform">> => string(),
%%   <<"Region">> => string(),
%%   <<"SizeFlexEligible">> => boolean(),
%%   <<"Tenancy">> => string()
%% }
-type ec2_instance_details() :: #{binary() => any()}.

%% Example:
%% rightsizing_recommendation() :: #{
%%   <<"AccountId">> => string(),
%%   <<"CurrentInstance">> => current_instance(),
%%   <<"FindingReasonCodes">> => list(list(any())()),
%%   <<"ModifyRecommendationDetail">> => modify_recommendation_detail(),
%%   <<"RightsizingType">> => list(any()),
%%   <<"TerminateRecommendationDetail">> => terminate_recommendation_detail()
%% }
-type rightsizing_recommendation() :: #{binary() => any()}.

%% Example:
%% get_approximate_usage_records_response() :: #{
%%   <<"LookbackPeriod">> => date_interval(),
%%   <<"Services">> => map(),
%%   <<"TotalRecords">> => float()
%% }
-type get_approximate_usage_records_response() :: #{binary() => any()}.

%% Example:
%% untag_resource_request() :: #{
%%   <<"ResourceArn">> := string(),
%%   <<"ResourceTagKeys">> := list(string()())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% terminate_recommendation_detail() :: #{
%%   <<"CurrencyCode">> => string(),
%%   <<"EstimatedMonthlySavings">> => string()
%% }
-type terminate_recommendation_detail() :: #{binary() => any()}.

%% Example:
%% get_cost_forecast_request() :: #{
%%   <<"Filter">> => expression(),
%%   <<"Granularity">> := list(any()),
%%   <<"Metric">> := list(any()),
%%   <<"PredictionIntervalLevel">> => integer(),
%%   <<"TimePeriod">> := date_interval()
%% }
-type get_cost_forecast_request() :: #{binary() => any()}.

%% Example:
%% savings_plans_purchase_analysis_details() :: #{
%%   <<"AdditionalMetadata">> => string(),
%%   <<"CurrencyCode">> => string(),
%%   <<"CurrentAverageCoverage">> => string(),
%%   <<"CurrentAverageHourlyOnDemandSpend">> => string(),
%%   <<"CurrentMaximumHourlyOnDemandSpend">> => string(),
%%   <<"CurrentMinimumHourlyOnDemandSpend">> => string(),
%%   <<"CurrentOnDemandSpend">> => string(),
%%   <<"EstimatedAverageCoverage">> => string(),
%%   <<"EstimatedAverageUtilization">> => string(),
%%   <<"EstimatedCommitmentCost">> => string(),
%%   <<"EstimatedMonthlySavingsAmount">> => string(),
%%   <<"EstimatedOnDemandCost">> => string(),
%%   <<"EstimatedOnDemandCostWithCurrentCommitment">> => string(),
%%   <<"EstimatedROI">> => string(),
%%   <<"EstimatedSavingsAmount">> => string(),
%%   <<"EstimatedSavingsPercentage">> => string(),
%%   <<"ExistingHourlyCommitment">> => string(),
%%   <<"HourlyCommitmentToPurchase">> => string(),
%%   <<"LatestUsageTimestamp">> => string(),
%%   <<"LookbackPeriodInHours">> => string(),
%%   <<"MetricsOverLookbackPeriod">> => list(recommendation_detail_hourly_metrics()()),
%%   <<"UpfrontCost">> => string()
%% }
-type savings_plans_purchase_analysis_details() :: #{binary() => any()}.

%% Example:
%% savings_plans_savings() :: #{
%%   <<"NetSavings">> => string(),
%%   <<"OnDemandCostEquivalent">> => string()
%% }
-type savings_plans_savings() :: #{binary() => any()}.

%% Example:
%% generation_summary() :: #{
%%   <<"EstimatedCompletionTime">> => string(),
%%   <<"GenerationCompletionTime">> => string(),
%%   <<"GenerationStartedTime">> => string(),
%%   <<"GenerationStatus">> => list(any()),
%%   <<"RecommendationId">> => string()
%% }
-type generation_summary() :: #{binary() => any()}.

%% Example:
%% dimension_values_with_attributes() :: #{
%%   <<"Attributes">> => map(),
%%   <<"Value">> => string()
%% }
-type dimension_values_with_attributes() :: #{binary() => any()}.

%% Example:
%% group_definition() :: #{
%%   <<"Key">> => string(),
%%   <<"Type">> => list(any())
%% }
-type group_definition() :: #{binary() => any()}.

%% Example:
%% get_reservation_utilization_response() :: #{
%%   <<"NextPageToken">> => string(),
%%   <<"Total">> => reservation_aggregates(),
%%   <<"UtilizationsByTime">> => list(utilization_by_time()())
%% }
-type get_reservation_utilization_response() :: #{binary() => any()}.

%% Example:
%% start_commitment_purchase_analysis_response() :: #{
%%   <<"AnalysisId">> => string(),
%%   <<"AnalysisStartedTime">> => string(),
%%   <<"EstimatedCompletionTime">> => string()
%% }
-type start_commitment_purchase_analysis_response() :: #{binary() => any()}.

%% Example:
%% get_rightsizing_recommendation_request() :: #{
%%   <<"Configuration">> => rightsizing_recommendation_configuration(),
%%   <<"Filter">> => expression(),
%%   <<"NextPageToken">> => string(),
%%   <<"PageSize">> => integer(),
%%   <<"Service">> := string()
%% }
-type get_rightsizing_recommendation_request() :: #{binary() => any()}.

%% Example:
%% delete_anomaly_subscription_response() :: #{

%% }
-type delete_anomaly_subscription_response() :: #{binary() => any()}.

%% Example:
%% disk_resource_utilization() :: #{
%%   <<"DiskReadBytesPerSecond">> => string(),
%%   <<"DiskReadOpsPerSecond">> => string(),
%%   <<"DiskWriteBytesPerSecond">> => string(),
%%   <<"DiskWriteOpsPerSecond">> => string()
%% }
-type disk_resource_utilization() :: #{binary() => any()}.

%% Example:
%% total_impact_filter() :: #{
%%   <<"EndValue">> => float(),
%%   <<"NumericOperator">> => list(any()),
%%   <<"StartValue">> => float()
%% }
-type total_impact_filter() :: #{binary() => any()}.

%% Example:
%% update_anomaly_subscription_request() :: #{
%%   <<"Frequency">> => list(any()),
%%   <<"MonitorArnList">> => list(string()()),
%%   <<"Subscribers">> => list(subscriber()()),
%%   <<"SubscriptionArn">> := string(),
%%   <<"SubscriptionName">> => string(),
%%   <<"Threshold">> => float(),
%%   <<"ThresholdExpression">> => expression()
%% }
-type update_anomaly_subscription_request() :: #{binary() => any()}.

%% Example:
%% forecast_result() :: #{
%%   <<"MeanValue">> => string(),
%%   <<"PredictionIntervalLowerBound">> => string(),
%%   <<"PredictionIntervalUpperBound">> => string(),
%%   <<"TimePeriod">> => date_interval()
%% }
-type forecast_result() :: #{binary() => any()}.

%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"ResourceName">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% sort_definition() :: #{
%%   <<"Key">> => string(),
%%   <<"SortOrder">> => list(any())
%% }
-type sort_definition() :: #{binary() => any()}.

%% Example:
%% get_savings_plans_coverage_request() :: #{
%%   <<"Filter">> => expression(),
%%   <<"Granularity">> => list(any()),
%%   <<"GroupBy">> => list(group_definition()()),
%%   <<"MaxResults">> => integer(),
%%   <<"Metrics">> => list(string()()),
%%   <<"NextToken">> => string(),
%%   <<"SortBy">> => sort_definition(),
%%   <<"TimePeriod">> := date_interval()
%% }
-type get_savings_plans_coverage_request() :: #{binary() => any()}.

%% Example:
%% cost_allocation_tag_backfill_request() :: #{
%%   <<"BackfillFrom">> => string(),
%%   <<"BackfillStatus">> => list(any()),
%%   <<"CompletedAt">> => string(),
%%   <<"LastUpdatedAt">> => string(),
%%   <<"RequestedAt">> => string()
%% }
-type cost_allocation_tag_backfill_request() :: #{binary() => any()}.

%% Example:
%% request_changed_exception() :: #{
%%   <<"Message">> => string()
%% }
-type request_changed_exception() :: #{binary() => any()}.

%% Example:
%% service_specification() :: #{
%%   <<"EC2Specification">> => ec2_specification()
%% }
-type service_specification() :: #{binary() => any()}.

%% Example:
%% dimension_values() :: #{
%%   <<"Key">> => list(any()),
%%   <<"MatchOptions">> => list(list(any())()),
%%   <<"Values">> => list(string()())
%% }
-type dimension_values() :: #{binary() => any()}.

%% Example:
%% rightsizing_recommendation_configuration() :: #{
%%   <<"BenefitsConsidered">> => boolean(),
%%   <<"RecommendationTarget">> => list(any())
%% }
-type rightsizing_recommendation_configuration() :: #{binary() => any()}.

%% Example:
%% ebs_resource_utilization() :: #{
%%   <<"EbsReadBytesPerSecond">> => string(),
%%   <<"EbsReadOpsPerSecond">> => string(),
%%   <<"EbsWriteBytesPerSecond">> => string(),
%%   <<"EbsWriteOpsPerSecond">> => string()
%% }
-type ebs_resource_utilization() :: #{binary() => any()}.

%% Example:
%% get_commitment_purchase_analysis_response() :: #{
%%   <<"AnalysisCompletionTime">> => string(),
%%   <<"AnalysisDetails">> => analysis_details(),
%%   <<"AnalysisId">> => string(),
%%   <<"AnalysisStartedTime">> => string(),
%%   <<"AnalysisStatus">> => list(any()),
%%   <<"CommitmentPurchaseAnalysisConfiguration">> => commitment_purchase_analysis_configuration(),
%%   <<"ErrorCode">> => list(any()),
%%   <<"EstimatedCompletionTime">> => string()
%% }
-type get_commitment_purchase_analysis_response() :: #{binary() => any()}.

%% Example:
%% get_reservation_coverage_response() :: #{
%%   <<"CoveragesByTime">> => list(coverage_by_time()()),
%%   <<"NextPageToken">> => string(),
%%   <<"Total">> => coverage()
%% }
-type get_reservation_coverage_response() :: #{binary() => any()}.

%% Example:
%% cost_category_split_charge_rule() :: #{
%%   <<"Method">> => list(any()),
%%   <<"Parameters">> => list(cost_category_split_charge_rule_parameter()()),
%%   <<"Source">> => string(),
%%   <<"Targets">> => list(string()())
%% }
-type cost_category_split_charge_rule() :: #{binary() => any()}.

%% Example:
%% delete_cost_category_definition_request() :: #{
%%   <<"CostCategoryArn">> := string()
%% }
-type delete_cost_category_definition_request() :: #{binary() => any()}.

%% Example:
%% list_savings_plans_purchase_recommendation_generation_request() :: #{
%%   <<"GenerationStatus">> => list(any()),
%%   <<"NextPageToken">> => string(),
%%   <<"PageSize">> => integer(),
%%   <<"RecommendationIds">> => list(string()())
%% }
-type list_savings_plans_purchase_recommendation_generation_request() :: #{binary() => any()}.

%% Example:
%% get_cost_and_usage_request() :: #{
%%   <<"Filter">> => expression(),
%%   <<"Granularity">> := list(any()),
%%   <<"GroupBy">> => list(group_definition()()),
%%   <<"Metrics">> := list(string()()),
%%   <<"NextPageToken">> => string(),
%%   <<"TimePeriod">> := date_interval()
%% }
-type get_cost_and_usage_request() :: #{binary() => any()}.

%% Example:
%% get_usage_forecast_response() :: #{
%%   <<"ForecastResultsByTime">> => list(forecast_result()()),
%%   <<"Total">> => metric_value()
%% }
-type get_usage_forecast_response() :: #{binary() => any()}.

%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"Message">> => string()
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% root_cause() :: #{
%%   <<"Impact">> => root_cause_impact(),
%%   <<"LinkedAccount">> => string(),
%%   <<"LinkedAccountName">> => string(),
%%   <<"Region">> => string(),
%%   <<"Service">> => string(),
%%   <<"UsageType">> => string()
%% }
-type root_cause() :: #{binary() => any()}.

%% Example:
%% savings_plans_coverage_data() :: #{
%%   <<"CoveragePercentage">> => string(),
%%   <<"OnDemandCost">> => string(),
%%   <<"SpendCoveredBySavingsPlans">> => string(),
%%   <<"TotalCost">> => string()
%% }
-type savings_plans_coverage_data() :: #{binary() => any()}.

%% Example:
%% get_anomalies_request() :: #{
%%   <<"DateInterval">> := anomaly_date_interval(),
%%   <<"Feedback">> => list(any()),
%%   <<"MaxResults">> => integer(),
%%   <<"MonitorArn">> => string(),
%%   <<"NextPageToken">> => string(),
%%   <<"TotalImpact">> => total_impact_filter()
%% }
-type get_anomalies_request() :: #{binary() => any()}.

%% Example:
%% savings_plans_utilization_aggregates() :: #{
%%   <<"AmortizedCommitment">> => savings_plans_amortized_commitment(),
%%   <<"Savings">> => savings_plans_savings(),
%%   <<"Utilization">> => savings_plans_utilization()
%% }
-type savings_plans_utilization_aggregates() :: #{binary() => any()}.

%% Example:
%% invalid_next_token_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_next_token_exception() :: #{binary() => any()}.

%% Example:
%% memory_db_instance_details() :: #{
%%   <<"CurrentGeneration">> => boolean(),
%%   <<"Family">> => string(),
%%   <<"NodeType">> => string(),
%%   <<"Region">> => string(),
%%   <<"SizeFlexEligible">> => boolean()
%% }
-type memory_db_instance_details() :: #{binary() => any()}.

%% Example:
%% delete_cost_category_definition_response() :: #{
%%   <<"CostCategoryArn">> => string(),
%%   <<"EffectiveEnd">> => string()
%% }
-type delete_cost_category_definition_response() :: #{binary() => any()}.

%% Example:
%% coverage_hours() :: #{
%%   <<"CoverageHoursPercentage">> => string(),
%%   <<"OnDemandHours">> => string(),
%%   <<"ReservedHours">> => string(),
%%   <<"TotalRunningHours">> => string()
%% }
-type coverage_hours() :: #{binary() => any()}.

%% Example:
%% get_dimension_values_response() :: #{
%%   <<"DimensionValues">> => list(dimension_values_with_attributes()()),
%%   <<"NextPageToken">> => string(),
%%   <<"ReturnSize">> => integer(),
%%   <<"TotalSize">> => integer()
%% }
-type get_dimension_values_response() :: #{binary() => any()}.

%% Example:
%% cost_category_reference() :: #{
%%   <<"CostCategoryArn">> => string(),
%%   <<"DefaultValue">> => string(),
%%   <<"EffectiveEnd">> => string(),
%%   <<"EffectiveStart">> => string(),
%%   <<"Name">> => string(),
%%   <<"NumberOfRules">> => integer(),
%%   <<"ProcessingStatus">> => list(cost_category_processing_status()()),
%%   <<"Values">> => list(string()())
%% }
-type cost_category_reference() :: #{binary() => any()}.

%% Example:
%% update_anomaly_subscription_response() :: #{
%%   <<"SubscriptionArn">> => string()
%% }
-type update_anomaly_subscription_response() :: #{binary() => any()}.

%% Example:
%% unknown_monitor_exception() :: #{
%%   <<"Message">> => string()
%% }
-type unknown_monitor_exception() :: #{binary() => any()}.

%% Example:
%% get_anomaly_subscriptions_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"MonitorArn">> => string(),
%%   <<"NextPageToken">> => string(),
%%   <<"SubscriptionArnList">> => list(string()())
%% }
-type get_anomaly_subscriptions_request() :: #{binary() => any()}.

%% Example:
%% provide_anomaly_feedback_request() :: #{
%%   <<"AnomalyId">> := string(),
%%   <<"Feedback">> := list(any())
%% }
-type provide_anomaly_feedback_request() :: #{binary() => any()}.

%% Example:
%% get_tags_response() :: #{
%%   <<"NextPageToken">> => string(),
%%   <<"ReturnSize">> => integer(),
%%   <<"Tags">> => list(string()()),
%%   <<"TotalSize">> => integer()
%% }
-type get_tags_response() :: #{binary() => any()}.

%% Example:
%% update_cost_allocation_tags_status_error() :: #{
%%   <<"Code">> => string(),
%%   <<"Message">> => string(),
%%   <<"TagKey">> => string()
%% }
-type update_cost_allocation_tags_status_error() :: #{binary() => any()}.

%% Example:
%% coverage() :: #{
%%   <<"CoverageCost">> => coverage_cost(),
%%   <<"CoverageHours">> => coverage_hours(),
%%   <<"CoverageNormalizedUnits">> => coverage_normalized_units()
%% }
-type coverage() :: #{binary() => any()}.

%% Example:
%% recommendation_detail_hourly_metrics() :: #{
%%   <<"CurrentCoverage">> => string(),
%%   <<"EstimatedCoverage">> => string(),
%%   <<"EstimatedNewCommitmentUtilization">> => string(),
%%   <<"EstimatedOnDemandCost">> => string(),
%%   <<"StartTime">> => string()
%% }
-type recommendation_detail_hourly_metrics() :: #{binary() => any()}.

%% Example:
%% savings_plans_purchase_recommendation_detail() :: #{
%%   <<"AccountId">> => string(),
%%   <<"CurrencyCode">> => string(),
%%   <<"CurrentAverageHourlyOnDemandSpend">> => string(),
%%   <<"CurrentMaximumHourlyOnDemandSpend">> => string(),
%%   <<"CurrentMinimumHourlyOnDemandSpend">> => string(),
%%   <<"EstimatedAverageUtilization">> => string(),
%%   <<"EstimatedMonthlySavingsAmount">> => string(),
%%   <<"EstimatedOnDemandCost">> => string(),
%%   <<"EstimatedOnDemandCostWithCurrentCommitment">> => string(),
%%   <<"EstimatedROI">> => string(),
%%   <<"EstimatedSPCost">> => string(),
%%   <<"EstimatedSavingsAmount">> => string(),
%%   <<"EstimatedSavingsPercentage">> => string(),
%%   <<"HourlyCommitmentToPurchase">> => string(),
%%   <<"RecommendationDetailId">> => string(),
%%   <<"SavingsPlansDetails">> => savings_plans_details(),
%%   <<"UpfrontCost">> => string()
%% }
-type savings_plans_purchase_recommendation_detail() :: #{binary() => any()}.

%% Example:
%% list_commitment_purchase_analyses_response() :: #{
%%   <<"AnalysisSummaryList">> => list(analysis_summary()()),
%%   <<"NextPageToken">> => string()
%% }
-type list_commitment_purchase_analyses_response() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"ResourceTags">> => list(resource_tag()())
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.

%% Example:
%% subscriber() :: #{
%%   <<"Address">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"Type">> => list(any())
%% }
-type subscriber() :: #{binary() => any()}.

%% Example:
%% get_savings_plans_utilization_request() :: #{
%%   <<"Filter">> => expression(),
%%   <<"Granularity">> => list(any()),
%%   <<"SortBy">> => sort_definition(),
%%   <<"TimePeriod">> := date_interval()
%% }
-type get_savings_plans_utilization_request() :: #{binary() => any()}.

%% Example:
%% result_by_time() :: #{
%%   <<"Estimated">> => boolean(),
%%   <<"Groups">> => list(group()()),
%%   <<"TimePeriod">> => date_interval(),
%%   <<"Total">> => map()
%% }
-type result_by_time() :: #{binary() => any()}.

%% Example:
%% ec2_resource_details() :: #{
%%   <<"HourlyOnDemandRate">> => string(),
%%   <<"InstanceType">> => string(),
%%   <<"Memory">> => string(),
%%   <<"NetworkPerformance">> => string(),
%%   <<"Platform">> => string(),
%%   <<"Region">> => string(),
%%   <<"Sku">> => string(),
%%   <<"Storage">> => string(),
%%   <<"Vcpu">> => string()
%% }
-type ec2_resource_details() :: #{binary() => any()}.

%% Example:
%% update_cost_allocation_tags_status_request() :: #{
%%   <<"CostAllocationTagsStatus">> := list(cost_allocation_tag_status_entry()())
%% }
-type update_cost_allocation_tags_status_request() :: #{binary() => any()}.

%% Example:
%% get_usage_forecast_request() :: #{
%%   <<"Filter">> => expression(),
%%   <<"Granularity">> := list(any()),
%%   <<"Metric">> := list(any()),
%%   <<"PredictionIntervalLevel">> => integer(),
%%   <<"TimePeriod">> := date_interval()
%% }
-type get_usage_forecast_request() :: #{binary() => any()}.

%% Example:
%% coverage_normalized_units() :: #{
%%   <<"CoverageNormalizedUnitsPercentage">> => string(),
%%   <<"OnDemandNormalizedUnits">> => string(),
%%   <<"ReservedNormalizedUnits">> => string(),
%%   <<"TotalRunningNormalizedUnits">> => string()
%% }
-type coverage_normalized_units() :: #{binary() => any()}.

%% Example:
%% savings_plans_purchase_recommendation_metadata() :: #{
%%   <<"AdditionalMetadata">> => string(),
%%   <<"GenerationTimestamp">> => string(),
%%   <<"RecommendationId">> => string()
%% }
-type savings_plans_purchase_recommendation_metadata() :: #{binary() => any()}.

%% Example:
%% update_cost_category_definition_request() :: #{
%%   <<"CostCategoryArn">> := string(),
%%   <<"DefaultValue">> => string(),
%%   <<"EffectiveStart">> => string(),
%%   <<"RuleVersion">> := list(any()),
%%   <<"Rules">> := list(cost_category_rule()()),
%%   <<"SplitChargeRules">> => list(cost_category_split_charge_rule()())
%% }
-type update_cost_category_definition_request() :: #{binary() => any()}.

%% Example:
%% cost_category_rule() :: #{
%%   <<"InheritedValue">> => cost_category_inherited_value_dimension(),
%%   <<"Rule">> => expression(),
%%   <<"Type">> => list(any()),
%%   <<"Value">> => string()
%% }
-type cost_category_rule() :: #{binary() => any()}.

%% Example:
%% savings_plans_details() :: #{
%%   <<"InstanceFamily">> => string(),
%%   <<"OfferingId">> => string(),
%%   <<"Region">> => string()
%% }
-type savings_plans_details() :: #{binary() => any()}.

%% Example:
%% start_commitment_purchase_analysis_request() :: #{
%%   <<"CommitmentPurchaseAnalysisConfiguration">> := commitment_purchase_analysis_configuration()
%% }
-type start_commitment_purchase_analysis_request() :: #{binary() => any()}.

%% Example:
%% reservation_purchase_recommendation_detail() :: #{
%%   <<"AccountId">> => string(),
%%   <<"AverageNormalizedUnitsUsedPerHour">> => string(),
%%   <<"AverageNumberOfCapacityUnitsUsedPerHour">> => string(),
%%   <<"AverageNumberOfInstancesUsedPerHour">> => string(),
%%   <<"AverageUtilization">> => string(),
%%   <<"CurrencyCode">> => string(),
%%   <<"EstimatedBreakEvenInMonths">> => string(),
%%   <<"EstimatedMonthlyOnDemandCost">> => string(),
%%   <<"EstimatedMonthlySavingsAmount">> => string(),
%%   <<"EstimatedMonthlySavingsPercentage">> => string(),
%%   <<"EstimatedReservationCostForLookbackPeriod">> => string(),
%%   <<"InstanceDetails">> => instance_details(),
%%   <<"MaximumNormalizedUnitsUsedPerHour">> => string(),
%%   <<"MaximumNumberOfCapacityUnitsUsedPerHour">> => string(),
%%   <<"MaximumNumberOfInstancesUsedPerHour">> => string(),
%%   <<"MinimumNormalizedUnitsUsedPerHour">> => string(),
%%   <<"MinimumNumberOfCapacityUnitsUsedPerHour">> => string(),
%%   <<"MinimumNumberOfInstancesUsedPerHour">> => string(),
%%   <<"RecommendedNormalizedUnitsToPurchase">> => string(),
%%   <<"RecommendedNumberOfCapacityUnitsToPurchase">> => string(),
%%   <<"RecommendedNumberOfInstancesToPurchase">> => string(),
%%   <<"RecurringStandardMonthlyCost">> => string(),
%%   <<"ReservedCapacityDetails">> => reserved_capacity_details(),
%%   <<"UpfrontCost">> => string()
%% }
-type reservation_purchase_recommendation_detail() :: #{binary() => any()}.

%% Example:
%% current_instance() :: #{
%%   <<"CurrencyCode">> => string(),
%%   <<"InstanceName">> => string(),
%%   <<"MonthlyCost">> => string(),
%%   <<"OnDemandHoursInLookbackPeriod">> => string(),
%%   <<"ReservationCoveredHoursInLookbackPeriod">> => string(),
%%   <<"ResourceDetails">> => resource_details(),
%%   <<"ResourceId">> => string(),
%%   <<"ResourceUtilization">> => resource_utilization(),
%%   <<"SavingsPlansCoveredHoursInLookbackPeriod">> => string(),
%%   <<"Tags">> => list(tag_values()()),
%%   <<"TotalRunningHoursInLookbackPeriod">> => string()
%% }
-type current_instance() :: #{binary() => any()}.

%% Example:
%% get_savings_plan_purchase_recommendation_details_request() :: #{
%%   <<"RecommendationDetailId">> := string()
%% }
-type get_savings_plan_purchase_recommendation_details_request() :: #{binary() => any()}.

%% Example:
%% cost_allocation_tag() :: #{
%%   <<"LastUpdatedDate">> => string(),
%%   <<"LastUsedDate">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"TagKey">> => string(),
%%   <<"Type">> => list(any())
%% }
-type cost_allocation_tag() :: #{binary() => any()}.

%% Example:
%% reservation_coverage_group() :: #{
%%   <<"Attributes">> => map(),
%%   <<"Coverage">> => coverage()
%% }
-type reservation_coverage_group() :: #{binary() => any()}.

%% Example:
%% delete_anomaly_subscription_request() :: #{
%%   <<"SubscriptionArn">> := string()
%% }
-type delete_anomaly_subscription_request() :: #{binary() => any()}.

%% Example:
%% impact() :: #{
%%   <<"MaxImpact">> => float(),
%%   <<"TotalActualSpend">> => float(),
%%   <<"TotalExpectedSpend">> => float(),
%%   <<"TotalImpact">> => float(),
%%   <<"TotalImpactPercentage">> => float()
%% }
-type impact() :: #{binary() => any()}.

%% Example:
%% anomaly() :: #{
%%   <<"AnomalyEndDate">> => string(),
%%   <<"AnomalyId">> => string(),
%%   <<"AnomalyScore">> => anomaly_score(),
%%   <<"AnomalyStartDate">> => string(),
%%   <<"DimensionValue">> => string(),
%%   <<"Feedback">> => list(any()),
%%   <<"Impact">> => impact(),
%%   <<"MonitorArn">> => string(),
%%   <<"RootCauses">> => list(root_cause()())
%% }
-type anomaly() :: #{binary() => any()}.

%% Example:
%% create_anomaly_subscription_response() :: #{
%%   <<"SubscriptionArn">> => string()
%% }
-type create_anomaly_subscription_response() :: #{binary() => any()}.

%% Example:
%% resource_tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type resource_tag() :: #{binary() => any()}.

%% Example:
%% savings_plans_utilization_detail() :: #{
%%   <<"AmortizedCommitment">> => savings_plans_amortized_commitment(),
%%   <<"Attributes">> => map(),
%%   <<"Savings">> => savings_plans_savings(),
%%   <<"SavingsPlanArn">> => string(),
%%   <<"Utilization">> => savings_plans_utilization()
%% }
-type savings_plans_utilization_detail() :: #{binary() => any()}.

%% Example:
%% get_savings_plans_coverage_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"SavingsPlansCoverages">> => list(savings_plans_coverage()())
%% }
-type get_savings_plans_coverage_response() :: #{binary() => any()}.

%% Example:
%% cost_category_processing_status() :: #{
%%   <<"Component">> => list(any()),
%%   <<"Status">> => list(any())
%% }
-type cost_category_processing_status() :: #{binary() => any()}.

%% Example:
%% cost_category_values() :: #{
%%   <<"Key">> => string(),
%%   <<"MatchOptions">> => list(list(any())()),
%%   <<"Values">> => list(string()())
%% }
-type cost_category_values() :: #{binary() => any()}.

%% Example:
%% data_unavailable_exception() :: #{
%%   <<"Message">> => string()
%% }
-type data_unavailable_exception() :: #{binary() => any()}.

%% Example:
%% modify_recommendation_detail() :: #{
%%   <<"TargetInstances">> => list(target_instance()())
%% }
-type modify_recommendation_detail() :: #{binary() => any()}.

%% Example:
%% update_cost_allocation_tags_status_response() :: #{
%%   <<"Errors">> => list(update_cost_allocation_tags_status_error()())
%% }
-type update_cost_allocation_tags_status_response() :: #{binary() => any()}.

%% Example:
%% reservation_purchase_recommendation() :: #{
%%   <<"AccountScope">> => list(any()),
%%   <<"LookbackPeriodInDays">> => list(any()),
%%   <<"PaymentOption">> => list(any()),
%%   <<"RecommendationDetails">> => list(reservation_purchase_recommendation_detail()()),
%%   <<"RecommendationSummary">> => reservation_purchase_recommendation_summary(),
%%   <<"ServiceSpecification">> => service_specification(),
%%   <<"TermInYears">> => list(any())
%% }
-type reservation_purchase_recommendation() :: #{binary() => any()}.

%% Example:
%% bill_expiration_exception() :: #{
%%   <<"Message">> => string()
%% }
-type bill_expiration_exception() :: #{binary() => any()}.

%% Example:
%% start_cost_allocation_tag_backfill_response() :: #{
%%   <<"BackfillRequest">> => cost_allocation_tag_backfill_request()
%% }
-type start_cost_allocation_tag_backfill_response() :: #{binary() => any()}.

%% Example:
%% start_savings_plans_purchase_recommendation_generation_response() :: #{
%%   <<"EstimatedCompletionTime">> => string(),
%%   <<"GenerationStartedTime">> => string(),
%%   <<"RecommendationId">> => string()
%% }
-type start_savings_plans_purchase_recommendation_generation_response() :: #{binary() => any()}.

%% Example:
%% get_approximate_usage_records_request() :: #{
%%   <<"ApproximationDimension">> := list(any()),
%%   <<"Granularity">> := list(any()),
%%   <<"Services">> => list(string()())
%% }
-type get_approximate_usage_records_request() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{

%% }
-type tag_resource_response() :: #{binary() => any()}.

%% Example:
%% update_anomaly_monitor_request() :: #{
%%   <<"MonitorArn">> := string(),
%%   <<"MonitorName">> => string()
%% }
-type update_anomaly_monitor_request() :: #{binary() => any()}.

%% Example:
%% get_anomaly_monitors_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"MonitorArnList">> => list(string()()),
%%   <<"NextPageToken">> => string()
%% }
-type get_anomaly_monitors_request() :: #{binary() => any()}.

%% Example:
%% get_anomalies_response() :: #{
%%   <<"Anomalies">> => list(anomaly()()),
%%   <<"NextPageToken">> => string()
%% }
-type get_anomalies_response() :: #{binary() => any()}.

%% Example:
%% get_commitment_purchase_analysis_request() :: #{
%%   <<"AnalysisId">> := string()
%% }
-type get_commitment_purchase_analysis_request() :: #{binary() => any()}.

%% Example:
%% metric_value() :: #{
%%   <<"Amount">> => string(),
%%   <<"Unit">> => string()
%% }
-type metric_value() :: #{binary() => any()}.

%% Example:
%% redshift_instance_details() :: #{
%%   <<"CurrentGeneration">> => boolean(),
%%   <<"Family">> => string(),
%%   <<"NodeType">> => string(),
%%   <<"Region">> => string(),
%%   <<"SizeFlexEligible">> => boolean()
%% }
-type redshift_instance_details() :: #{binary() => any()}.

%% Example:
%% root_cause_impact() :: #{
%%   <<"Contribution">> => float()
%% }
-type root_cause_impact() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{
%%   <<"ResourceArn">> := string()
%% }
-type list_tags_for_resource_request() :: #{binary() => any()}.

%% Example:
%% network_resource_utilization() :: #{
%%   <<"NetworkInBytesPerSecond">> => string(),
%%   <<"NetworkOutBytesPerSecond">> => string(),
%%   <<"NetworkPacketsInPerSecond">> => string(),
%%   <<"NetworkPacketsOutPerSecond">> => string()
%% }
-type network_resource_utilization() :: #{binary() => any()}.

%% Example:
%% get_savings_plans_purchase_recommendation_response() :: #{
%%   <<"Metadata">> => savings_plans_purchase_recommendation_metadata(),
%%   <<"NextPageToken">> => string(),
%%   <<"SavingsPlansPurchaseRecommendation">> => savings_plans_purchase_recommendation()
%% }
-type get_savings_plans_purchase_recommendation_response() :: #{binary() => any()}.

%% Example:
%% unresolvable_usage_unit_exception() :: #{
%%   <<"Message">> => string()
%% }
-type unresolvable_usage_unit_exception() :: #{binary() => any()}.

%% Example:
%% group() :: #{
%%   <<"Keys">> => list(string()()),
%%   <<"Metrics">> => map()
%% }
-type group() :: #{binary() => any()}.

%% Example:
%% target_instance() :: #{
%%   <<"CurrencyCode">> => string(),
%%   <<"DefaultTargetInstance">> => boolean(),
%%   <<"EstimatedMonthlyCost">> => string(),
%%   <<"EstimatedMonthlySavings">> => string(),
%%   <<"ExpectedResourceUtilization">> => resource_utilization(),
%%   <<"PlatformDifferences">> => list(list(any())()),
%%   <<"ResourceDetails">> => resource_details()
%% }
-type target_instance() :: #{binary() => any()}.

%% Example:
%% anomaly_score() :: #{
%%   <<"CurrentScore">> => float(),
%%   <<"MaxScore">> => float()
%% }
-type anomaly_score() :: #{binary() => any()}.

%% Example:
%% expression() :: #{
%%   <<"And">> => list(expression()()),
%%   <<"CostCategories">> => cost_category_values(),
%%   <<"Dimensions">> => dimension_values(),
%%   <<"Not">> => expression(),
%%   <<"Or">> => list(expression()()),
%%   <<"Tags">> => tag_values()
%% }
-type expression() :: #{binary() => any()}.

%% Example:
%% commitment_purchase_analysis_configuration() :: #{
%%   <<"SavingsPlansPurchaseAnalysisConfiguration">> => savings_plans_purchase_analysis_configuration()
%% }
-type commitment_purchase_analysis_configuration() :: #{binary() => any()}.

%% Example:
%% analysis_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type analysis_not_found_exception() :: #{binary() => any()}.

%% Example:
%% create_anomaly_monitor_response() :: #{
%%   <<"MonitorArn">> => string()
%% }
-type create_anomaly_monitor_response() :: #{binary() => any()}.

%% Example:
%% list_cost_allocation_tags_response() :: #{
%%   <<"CostAllocationTags">> => list(cost_allocation_tag()()),
%%   <<"NextToken">> => string()
%% }
-type list_cost_allocation_tags_response() :: #{binary() => any()}.

%% Example:
%% cost_category() :: #{
%%   <<"CostCategoryArn">> => string(),
%%   <<"DefaultValue">> => string(),
%%   <<"EffectiveEnd">> => string(),
%%   <<"EffectiveStart">> => string(),
%%   <<"Name">> => string(),
%%   <<"ProcessingStatus">> => list(cost_category_processing_status()()),
%%   <<"RuleVersion">> => list(any()),
%%   <<"Rules">> => list(cost_category_rule()()),
%%   <<"SplitChargeRules">> => list(cost_category_split_charge_rule()())
%% }
-type cost_category() :: #{binary() => any()}.

%% Example:
%% limit_exceeded_exception() :: #{
%%   <<"Message">> => string()
%% }
-type limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% list_cost_allocation_tag_backfill_history_response() :: #{
%%   <<"BackfillRequests">> => list(cost_allocation_tag_backfill_request()()),
%%   <<"NextToken">> => string()
%% }
-type list_cost_allocation_tag_backfill_history_response() :: #{binary() => any()}.

%% Example:
%% list_cost_allocation_tag_backfill_history_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_cost_allocation_tag_backfill_history_request() :: #{binary() => any()}.

%% Example:
%% get_savings_plan_purchase_recommendation_details_response() :: #{
%%   <<"RecommendationDetailData">> => recommendation_detail_data(),
%%   <<"RecommendationDetailId">> => string()
%% }
-type get_savings_plan_purchase_recommendation_details_response() :: #{binary() => any()}.

%% Example:
%% reservation_aggregates() :: #{
%%   <<"AmortizedRecurringFee">> => string(),
%%   <<"AmortizedUpfrontFee">> => string(),
%%   <<"NetRISavings">> => string(),
%%   <<"OnDemandCostOfRIHoursUsed">> => string(),
%%   <<"PurchasedHours">> => string(),
%%   <<"PurchasedUnits">> => string(),
%%   <<"RICostForUnusedHours">> => string(),
%%   <<"RealizedSavings">> => string(),
%%   <<"TotalActualHours">> => string(),
%%   <<"TotalActualUnits">> => string(),
%%   <<"TotalAmortizedFee">> => string(),
%%   <<"TotalPotentialRISavings">> => string(),
%%   <<"UnrealizedSavings">> => string(),
%%   <<"UnusedHours">> => string(),
%%   <<"UnusedUnits">> => string(),
%%   <<"UtilizationPercentage">> => string(),
%%   <<"UtilizationPercentageInUnits">> => string()
%% }
-type reservation_aggregates() :: #{binary() => any()}.

%% Example:
%% list_commitment_purchase_analyses_request() :: #{
%%   <<"AnalysisIds">> => list(string()()),
%%   <<"AnalysisStatus">> => list(any()),
%%   <<"NextPageToken">> => string(),
%%   <<"PageSize">> => integer()
%% }
-type list_commitment_purchase_analyses_request() :: #{binary() => any()}.

%% Example:
%% savings_plans_purchase_analysis_configuration() :: #{
%%   <<"AccountId">> => string(),
%%   <<"AccountScope">> => list(any()),
%%   <<"AnalysisType">> => list(any()),
%%   <<"LookBackTimePeriod">> => date_interval(),
%%   <<"SavingsPlansToAdd">> => list(savings_plans()()),
%%   <<"SavingsPlansToExclude">> => list(string()())
%% }
-type savings_plans_purchase_analysis_configuration() :: #{binary() => any()}.

%% Example:
%% get_reservation_purchase_recommendation_response() :: #{
%%   <<"Metadata">> => reservation_purchase_recommendation_metadata(),
%%   <<"NextPageToken">> => string(),
%%   <<"Recommendations">> => list(reservation_purchase_recommendation()())
%% }
-type get_reservation_purchase_recommendation_response() :: #{binary() => any()}.

%% Example:
%% savings_plans_utilization_by_time() :: #{
%%   <<"AmortizedCommitment">> => savings_plans_amortized_commitment(),
%%   <<"Savings">> => savings_plans_savings(),
%%   <<"TimePeriod">> => date_interval(),
%%   <<"Utilization">> => savings_plans_utilization()
%% }
-type savings_plans_utilization_by_time() :: #{binary() => any()}.

%% Example:
%% get_reservation_utilization_request() :: #{
%%   <<"Filter">> => expression(),
%%   <<"Granularity">> => list(any()),
%%   <<"GroupBy">> => list(group_definition()()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextPageToken">> => string(),
%%   <<"SortBy">> => sort_definition(),
%%   <<"TimePeriod">> := date_interval()
%% }
-type get_reservation_utilization_request() :: #{binary() => any()}.

%% Example:
%% savings_plans_coverage() :: #{
%%   <<"Attributes">> => map(),
%%   <<"Coverage">> => savings_plans_coverage_data(),
%%   <<"TimePeriod">> => date_interval()
%% }
-type savings_plans_coverage() :: #{binary() => any()}.

%% Example:
%% describe_cost_category_definition_response() :: #{
%%   <<"CostCategory">> => cost_category()
%% }
-type describe_cost_category_definition_response() :: #{binary() => any()}.

%% Example:
%% unknown_subscription_exception() :: #{
%%   <<"Message">> => string()
%% }
-type unknown_subscription_exception() :: #{binary() => any()}.

%% Example:
%% ec2_resource_utilization() :: #{
%%   <<"DiskResourceUtilization">> => disk_resource_utilization(),
%%   <<"EBSResourceUtilization">> => ebs_resource_utilization(),
%%   <<"MaxCpuUtilizationPercentage">> => string(),
%%   <<"MaxMemoryUtilizationPercentage">> => string(),
%%   <<"MaxStorageUtilizationPercentage">> => string(),
%%   <<"NetworkResourceUtilization">> => network_resource_utilization()
%% }
-type ec2_resource_utilization() :: #{binary() => any()}.

%% Example:
%% resource_details() :: #{
%%   <<"EC2ResourceDetails">> => ec2_resource_details()
%% }
-type resource_details() :: #{binary() => any()}.

%% Example:
%% backfill_limit_exceeded_exception() :: #{
%%   <<"Message">> => string()
%% }
-type backfill_limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% get_savings_plans_utilization_response() :: #{
%%   <<"SavingsPlansUtilizationsByTime">> => list(savings_plans_utilization_by_time()()),
%%   <<"Total">> => savings_plans_utilization_aggregates()
%% }
-type get_savings_plans_utilization_response() :: #{binary() => any()}.

%% Example:
%% analysis_details() :: #{
%%   <<"SavingsPlansPurchaseAnalysisDetails">> => savings_plans_purchase_analysis_details()
%% }
-type analysis_details() :: #{binary() => any()}.

%% Example:
%% get_rightsizing_recommendation_response() :: #{
%%   <<"Configuration">> => rightsizing_recommendation_configuration(),
%%   <<"Metadata">> => rightsizing_recommendation_metadata(),
%%   <<"NextPageToken">> => string(),
%%   <<"RightsizingRecommendations">> => list(rightsizing_recommendation()()),
%%   <<"Summary">> => rightsizing_recommendation_summary()
%% }
-type get_rightsizing_recommendation_response() :: #{binary() => any()}.

%% Example:
%% get_dimension_values_request() :: #{
%%   <<"Context">> => list(any()),
%%   <<"Dimension">> := list(any()),
%%   <<"Filter">> => expression(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextPageToken">> => string(),
%%   <<"SearchString">> => string(),
%%   <<"SortBy">> => list(sort_definition()()),
%%   <<"TimePeriod">> := date_interval()
%% }
-type get_dimension_values_request() :: #{binary() => any()}.

%% Example:
%% savings_plans_purchase_recommendation() :: #{
%%   <<"AccountScope">> => list(any()),
%%   <<"LookbackPeriodInDays">> => list(any()),
%%   <<"PaymentOption">> => list(any()),
%%   <<"SavingsPlansPurchaseRecommendationDetails">> => list(savings_plans_purchase_recommendation_detail()()),
%%   <<"SavingsPlansPurchaseRecommendationSummary">> => savings_plans_purchase_recommendation_summary(),
%%   <<"SavingsPlansType">> => list(any()),
%%   <<"TermInYears">> => list(any())
%% }
-type savings_plans_purchase_recommendation() :: #{binary() => any()}.

%% Example:
%% start_savings_plans_purchase_recommendation_generation_request() :: #{

%% }
-type start_savings_plans_purchase_recommendation_generation_request() :: #{binary() => any()}.

%% Example:
%% delete_anomaly_monitor_request() :: #{
%%   <<"MonitorArn">> := string()
%% }
-type delete_anomaly_monitor_request() :: #{binary() => any()}.

%% Example:
%% savings_plans() :: #{
%%   <<"InstanceFamily">> => string(),
%%   <<"OfferingId">> => string(),
%%   <<"PaymentOption">> => list(any()),
%%   <<"Region">> => string(),
%%   <<"SavingsPlansCommitment">> => float(),
%%   <<"SavingsPlansType">> => list(any()),
%%   <<"TermInYears">> => list(any())
%% }
-type savings_plans() :: #{binary() => any()}.

%% Example:
%% too_many_tags_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"ResourceName">> => string()
%% }
-type too_many_tags_exception() :: #{binary() => any()}.

%% Example:
%% provide_anomaly_feedback_response() :: #{
%%   <<"AnomalyId">> => string()
%% }
-type provide_anomaly_feedback_response() :: #{binary() => any()}.

%% Example:
%% elasti_cache_instance_details() :: #{
%%   <<"CurrentGeneration">> => boolean(),
%%   <<"Family">> => string(),
%%   <<"NodeType">> => string(),
%%   <<"ProductDescription">> => string(),
%%   <<"Region">> => string(),
%%   <<"SizeFlexEligible">> => boolean()
%% }
-type elasti_cache_instance_details() :: #{binary() => any()}.

%% Example:
%% dynamo_db_capacity_details() :: #{
%%   <<"CapacityUnits">> => string(),
%%   <<"Region">> => string()
%% }
-type dynamo_db_capacity_details() :: #{binary() => any()}.

%% Example:
%% list_savings_plans_purchase_recommendation_generation_response() :: #{
%%   <<"GenerationSummaryList">> => list(generation_summary()()),
%%   <<"NextPageToken">> => string()
%% }
-type list_savings_plans_purchase_recommendation_generation_response() :: #{binary() => any()}.

%% Example:
%% get_cost_categories_request() :: #{
%%   <<"CostCategoryName">> => string(),
%%   <<"Filter">> => expression(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextPageToken">> => string(),
%%   <<"SearchString">> => string(),
%%   <<"SortBy">> => list(sort_definition()()),
%%   <<"TimePeriod">> := date_interval()
%% }
-type get_cost_categories_request() :: #{binary() => any()}.

%% Example:
%% reserved_capacity_details() :: #{
%%   <<"DynamoDBCapacityDetails">> => dynamo_db_capacity_details()
%% }
-type reserved_capacity_details() :: #{binary() => any()}.

%% Example:
%% reservation_purchase_recommendation_metadata() :: #{
%%   <<"AdditionalMetadata">> => string(),
%%   <<"GenerationTimestamp">> => string(),
%%   <<"RecommendationId">> => string()
%% }
-type reservation_purchase_recommendation_metadata() :: #{binary() => any()}.

%% Example:
%% cost_category_inherited_value_dimension() :: #{
%%   <<"DimensionKey">> => string(),
%%   <<"DimensionName">> => list(any())
%% }
-type cost_category_inherited_value_dimension() :: #{binary() => any()}.

%% Example:
%% anomaly_monitor() :: #{
%%   <<"CreationDate">> => string(),
%%   <<"DimensionalValueCount">> => integer(),
%%   <<"LastEvaluatedDate">> => string(),
%%   <<"LastUpdatedDate">> => string(),
%%   <<"MonitorArn">> => string(),
%%   <<"MonitorDimension">> => list(any()),
%%   <<"MonitorName">> => string(),
%%   <<"MonitorSpecification">> => expression(),
%%   <<"MonitorType">> => list(any())
%% }
-type anomaly_monitor() :: #{binary() => any()}.

%% Example:
%% rds_instance_details() :: #{
%%   <<"CurrentGeneration">> => boolean(),
%%   <<"DatabaseEdition">> => string(),
%%   <<"DatabaseEngine">> => string(),
%%   <<"DeploymentOption">> => string(),
%%   <<"Family">> => string(),
%%   <<"InstanceType">> => string(),
%%   <<"LicenseModel">> => string(),
%%   <<"Region">> => string(),
%%   <<"SizeFlexEligible">> => boolean()
%% }
-type rds_instance_details() :: #{binary() => any()}.

%% Example:
%% get_cost_categories_response() :: #{
%%   <<"CostCategoryNames">> => list(string()()),
%%   <<"CostCategoryValues">> => list(string()()),
%%   <<"NextPageToken">> => string(),
%%   <<"ReturnSize">> => integer(),
%%   <<"TotalSize">> => integer()
%% }
-type get_cost_categories_response() :: #{binary() => any()}.

-type create_anomaly_monitor_errors() ::
    limit_exceeded_exception().

-type create_anomaly_subscription_errors() ::
    limit_exceeded_exception() | 
    unknown_monitor_exception().

-type create_cost_category_definition_errors() ::
    limit_exceeded_exception() | 
    service_quota_exceeded_exception().

-type delete_anomaly_monitor_errors() ::
    limit_exceeded_exception() | 
    unknown_monitor_exception().

-type delete_anomaly_subscription_errors() ::
    unknown_subscription_exception() | 
    limit_exceeded_exception().

-type delete_cost_category_definition_errors() ::
    limit_exceeded_exception() | 
    resource_not_found_exception().

-type describe_cost_category_definition_errors() ::
    limit_exceeded_exception() | 
    resource_not_found_exception().

-type get_anomalies_errors() ::
    limit_exceeded_exception() | 
    invalid_next_token_exception().

-type get_anomaly_monitors_errors() ::
    limit_exceeded_exception() | 
    unknown_monitor_exception() | 
    invalid_next_token_exception().

-type get_anomaly_subscriptions_errors() ::
    unknown_subscription_exception() | 
    limit_exceeded_exception() | 
    invalid_next_token_exception().

-type get_approximate_usage_records_errors() ::
    limit_exceeded_exception() | 
    data_unavailable_exception().

-type get_commitment_purchase_analysis_errors() ::
    limit_exceeded_exception() | 
    analysis_not_found_exception() | 
    data_unavailable_exception().

-type get_cost_and_usage_errors() ::
    limit_exceeded_exception() | 
    bill_expiration_exception() | 
    data_unavailable_exception() | 
    invalid_next_token_exception() | 
    request_changed_exception().

-type get_cost_and_usage_with_resources_errors() ::
    limit_exceeded_exception() | 
    bill_expiration_exception() | 
    data_unavailable_exception() | 
    invalid_next_token_exception() | 
    request_changed_exception().

-type get_cost_categories_errors() ::
    limit_exceeded_exception() | 
    bill_expiration_exception() | 
    data_unavailable_exception() | 
    invalid_next_token_exception() | 
    request_changed_exception().

-type get_cost_forecast_errors() ::
    limit_exceeded_exception() | 
    data_unavailable_exception().

-type get_dimension_values_errors() ::
    limit_exceeded_exception() | 
    bill_expiration_exception() | 
    data_unavailable_exception() | 
    invalid_next_token_exception() | 
    request_changed_exception().

-type get_reservation_coverage_errors() ::
    limit_exceeded_exception() | 
    data_unavailable_exception() | 
    invalid_next_token_exception().

-type get_reservation_purchase_recommendation_errors() ::
    limit_exceeded_exception() | 
    data_unavailable_exception() | 
    invalid_next_token_exception().

-type get_reservation_utilization_errors() ::
    limit_exceeded_exception() | 
    data_unavailable_exception() | 
    invalid_next_token_exception().

-type get_rightsizing_recommendation_errors() ::
    limit_exceeded_exception() | 
    invalid_next_token_exception().

-type get_savings_plan_purchase_recommendation_details_errors() ::
    limit_exceeded_exception() | 
    data_unavailable_exception().

-type get_savings_plans_coverage_errors() ::
    limit_exceeded_exception() | 
    data_unavailable_exception() | 
    invalid_next_token_exception().

-type get_savings_plans_purchase_recommendation_errors() ::
    limit_exceeded_exception() | 
    invalid_next_token_exception().

-type get_savings_plans_utilization_errors() ::
    limit_exceeded_exception() | 
    data_unavailable_exception().

-type get_savings_plans_utilization_details_errors() ::
    limit_exceeded_exception() | 
    data_unavailable_exception() | 
    invalid_next_token_exception().

-type get_tags_errors() ::
    limit_exceeded_exception() | 
    bill_expiration_exception() | 
    data_unavailable_exception() | 
    invalid_next_token_exception() | 
    request_changed_exception().

-type get_usage_forecast_errors() ::
    limit_exceeded_exception() | 
    unresolvable_usage_unit_exception() | 
    data_unavailable_exception().

-type list_commitment_purchase_analyses_errors() ::
    limit_exceeded_exception() | 
    data_unavailable_exception() | 
    invalid_next_token_exception().

-type list_cost_allocation_tag_backfill_history_errors() ::
    limit_exceeded_exception() | 
    invalid_next_token_exception().

-type list_cost_allocation_tags_errors() ::
    limit_exceeded_exception() | 
    invalid_next_token_exception().

-type list_cost_category_definitions_errors() ::
    limit_exceeded_exception().

-type list_savings_plans_purchase_recommendation_generation_errors() ::
    limit_exceeded_exception() | 
    data_unavailable_exception() | 
    invalid_next_token_exception().

-type list_tags_for_resource_errors() ::
    limit_exceeded_exception() | 
    resource_not_found_exception().

-type provide_anomaly_feedback_errors() ::
    limit_exceeded_exception().

-type start_commitment_purchase_analysis_errors() ::
    limit_exceeded_exception() | 
    data_unavailable_exception() | 
    service_quota_exceeded_exception() | 
    generation_exists_exception().

-type start_cost_allocation_tag_backfill_errors() ::
    backfill_limit_exceeded_exception() | 
    limit_exceeded_exception().

-type start_savings_plans_purchase_recommendation_generation_errors() ::
    limit_exceeded_exception() | 
    data_unavailable_exception() | 
    service_quota_exceeded_exception() | 
    generation_exists_exception().

-type tag_resource_errors() ::
    too_many_tags_exception() | 
    limit_exceeded_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    limit_exceeded_exception() | 
    resource_not_found_exception().

-type update_anomaly_monitor_errors() ::
    limit_exceeded_exception() | 
    unknown_monitor_exception().

-type update_anomaly_subscription_errors() ::
    unknown_subscription_exception() | 
    limit_exceeded_exception() | 
    unknown_monitor_exception().

-type update_cost_allocation_tags_status_errors() ::
    limit_exceeded_exception().

-type update_cost_category_definition_errors() ::
    limit_exceeded_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a new cost anomaly detection monitor with the requested type
%% and monitor
%% specification.
-spec create_anomaly_monitor(aws_client:aws_client(), create_anomaly_monitor_request()) ->
    {ok, create_anomaly_monitor_response(), tuple()} |
    {error, any()} |
    {error, create_anomaly_monitor_errors(), tuple()}.
create_anomaly_monitor(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_anomaly_monitor(Client, Input, []).

-spec create_anomaly_monitor(aws_client:aws_client(), create_anomaly_monitor_request(), proplists:proplist()) ->
    {ok, create_anomaly_monitor_response(), tuple()} |
    {error, any()} |
    {error, create_anomaly_monitor_errors(), tuple()}.
create_anomaly_monitor(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateAnomalyMonitor">>, Input, Options).

%% @doc Adds an alert subscription to a cost anomaly detection monitor.
%%
%% You can use each
%% subscription to define subscribers with email or SNS notifications. Email
%% subscribers can set
%% an absolute or percentage threshold and a time frequency for receiving
%% notifications.
-spec create_anomaly_subscription(aws_client:aws_client(), create_anomaly_subscription_request()) ->
    {ok, create_anomaly_subscription_response(), tuple()} |
    {error, any()} |
    {error, create_anomaly_subscription_errors(), tuple()}.
create_anomaly_subscription(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_anomaly_subscription(Client, Input, []).

-spec create_anomaly_subscription(aws_client:aws_client(), create_anomaly_subscription_request(), proplists:proplist()) ->
    {ok, create_anomaly_subscription_response(), tuple()} |
    {error, any()} |
    {error, create_anomaly_subscription_errors(), tuple()}.
create_anomaly_subscription(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateAnomalySubscription">>, Input, Options).

%% @doc Creates a new Cost Category with the requested name and rules.
-spec create_cost_category_definition(aws_client:aws_client(), create_cost_category_definition_request()) ->
    {ok, create_cost_category_definition_response(), tuple()} |
    {error, any()} |
    {error, create_cost_category_definition_errors(), tuple()}.
create_cost_category_definition(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_cost_category_definition(Client, Input, []).

-spec create_cost_category_definition(aws_client:aws_client(), create_cost_category_definition_request(), proplists:proplist()) ->
    {ok, create_cost_category_definition_response(), tuple()} |
    {error, any()} |
    {error, create_cost_category_definition_errors(), tuple()}.
create_cost_category_definition(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateCostCategoryDefinition">>, Input, Options).

%% @doc Deletes a cost anomaly monitor.
-spec delete_anomaly_monitor(aws_client:aws_client(), delete_anomaly_monitor_request()) ->
    {ok, delete_anomaly_monitor_response(), tuple()} |
    {error, any()} |
    {error, delete_anomaly_monitor_errors(), tuple()}.
delete_anomaly_monitor(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_anomaly_monitor(Client, Input, []).

-spec delete_anomaly_monitor(aws_client:aws_client(), delete_anomaly_monitor_request(), proplists:proplist()) ->
    {ok, delete_anomaly_monitor_response(), tuple()} |
    {error, any()} |
    {error, delete_anomaly_monitor_errors(), tuple()}.
delete_anomaly_monitor(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAnomalyMonitor">>, Input, Options).

%% @doc Deletes a cost anomaly subscription.
-spec delete_anomaly_subscription(aws_client:aws_client(), delete_anomaly_subscription_request()) ->
    {ok, delete_anomaly_subscription_response(), tuple()} |
    {error, any()} |
    {error, delete_anomaly_subscription_errors(), tuple()}.
delete_anomaly_subscription(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_anomaly_subscription(Client, Input, []).

-spec delete_anomaly_subscription(aws_client:aws_client(), delete_anomaly_subscription_request(), proplists:proplist()) ->
    {ok, delete_anomaly_subscription_response(), tuple()} |
    {error, any()} |
    {error, delete_anomaly_subscription_errors(), tuple()}.
delete_anomaly_subscription(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAnomalySubscription">>, Input, Options).

%% @doc Deletes a Cost Category.
%%
%% Expenses from this month going forward will no longer be
%% categorized with this Cost Category.
-spec delete_cost_category_definition(aws_client:aws_client(), delete_cost_category_definition_request()) ->
    {ok, delete_cost_category_definition_response(), tuple()} |
    {error, any()} |
    {error, delete_cost_category_definition_errors(), tuple()}.
delete_cost_category_definition(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_cost_category_definition(Client, Input, []).

-spec delete_cost_category_definition(aws_client:aws_client(), delete_cost_category_definition_request(), proplists:proplist()) ->
    {ok, delete_cost_category_definition_response(), tuple()} |
    {error, any()} |
    {error, delete_cost_category_definition_errors(), tuple()}.
delete_cost_category_definition(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteCostCategoryDefinition">>, Input, Options).

%% @doc Returns the name, Amazon Resource Name (ARN), rules, definition, and
%% effective dates of a
%% Cost Category that's defined in the account.
%%
%% You have the option to use `EffectiveOn' to return a Cost Category
%% that's
%% active on a specific date. If there's no `EffectiveOn' specified,
%% you see a Cost
%% Category that's effective on the current date. If Cost Category is
%% still effective,
%% `EffectiveEnd' is omitted in the response.
-spec describe_cost_category_definition(aws_client:aws_client(), describe_cost_category_definition_request()) ->
    {ok, describe_cost_category_definition_response(), tuple()} |
    {error, any()} |
    {error, describe_cost_category_definition_errors(), tuple()}.
describe_cost_category_definition(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_cost_category_definition(Client, Input, []).

-spec describe_cost_category_definition(aws_client:aws_client(), describe_cost_category_definition_request(), proplists:proplist()) ->
    {ok, describe_cost_category_definition_response(), tuple()} |
    {error, any()} |
    {error, describe_cost_category_definition_errors(), tuple()}.
describe_cost_category_definition(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeCostCategoryDefinition">>, Input, Options).

%% @doc Retrieves all of the cost anomalies detected on your account during
%% the time period that's
%% specified by the `DateInterval' object.
%%
%% Anomalies are available for up to 90
%% days.
-spec get_anomalies(aws_client:aws_client(), get_anomalies_request()) ->
    {ok, get_anomalies_response(), tuple()} |
    {error, any()} |
    {error, get_anomalies_errors(), tuple()}.
get_anomalies(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_anomalies(Client, Input, []).

-spec get_anomalies(aws_client:aws_client(), get_anomalies_request(), proplists:proplist()) ->
    {ok, get_anomalies_response(), tuple()} |
    {error, any()} |
    {error, get_anomalies_errors(), tuple()}.
get_anomalies(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAnomalies">>, Input, Options).

%% @doc Retrieves the cost anomaly monitor definitions for your account.
%%
%% You can filter using a
%% list of cost anomaly monitor Amazon Resource Names (ARNs).
-spec get_anomaly_monitors(aws_client:aws_client(), get_anomaly_monitors_request()) ->
    {ok, get_anomaly_monitors_response(), tuple()} |
    {error, any()} |
    {error, get_anomaly_monitors_errors(), tuple()}.
get_anomaly_monitors(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_anomaly_monitors(Client, Input, []).

-spec get_anomaly_monitors(aws_client:aws_client(), get_anomaly_monitors_request(), proplists:proplist()) ->
    {ok, get_anomaly_monitors_response(), tuple()} |
    {error, any()} |
    {error, get_anomaly_monitors_errors(), tuple()}.
get_anomaly_monitors(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAnomalyMonitors">>, Input, Options).

%% @doc Retrieves the cost anomaly subscription objects for your account.
%%
%% You can filter using a
%% list of cost anomaly monitor Amazon Resource Names (ARNs).
-spec get_anomaly_subscriptions(aws_client:aws_client(), get_anomaly_subscriptions_request()) ->
    {ok, get_anomaly_subscriptions_response(), tuple()} |
    {error, any()} |
    {error, get_anomaly_subscriptions_errors(), tuple()}.
get_anomaly_subscriptions(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_anomaly_subscriptions(Client, Input, []).

-spec get_anomaly_subscriptions(aws_client:aws_client(), get_anomaly_subscriptions_request(), proplists:proplist()) ->
    {ok, get_anomaly_subscriptions_response(), tuple()} |
    {error, any()} |
    {error, get_anomaly_subscriptions_errors(), tuple()}.
get_anomaly_subscriptions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAnomalySubscriptions">>, Input, Options).

%% @doc Retrieves estimated usage records for hourly granularity or
%% resource-level data at daily
%% granularity.
-spec get_approximate_usage_records(aws_client:aws_client(), get_approximate_usage_records_request()) ->
    {ok, get_approximate_usage_records_response(), tuple()} |
    {error, any()} |
    {error, get_approximate_usage_records_errors(), tuple()}.
get_approximate_usage_records(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_approximate_usage_records(Client, Input, []).

-spec get_approximate_usage_records(aws_client:aws_client(), get_approximate_usage_records_request(), proplists:proplist()) ->
    {ok, get_approximate_usage_records_response(), tuple()} |
    {error, any()} |
    {error, get_approximate_usage_records_errors(), tuple()}.
get_approximate_usage_records(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetApproximateUsageRecords">>, Input, Options).

%% @doc Retrieves a commitment purchase analysis result based on the
%% `AnalysisId'.
-spec get_commitment_purchase_analysis(aws_client:aws_client(), get_commitment_purchase_analysis_request()) ->
    {ok, get_commitment_purchase_analysis_response(), tuple()} |
    {error, any()} |
    {error, get_commitment_purchase_analysis_errors(), tuple()}.
get_commitment_purchase_analysis(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_commitment_purchase_analysis(Client, Input, []).

-spec get_commitment_purchase_analysis(aws_client:aws_client(), get_commitment_purchase_analysis_request(), proplists:proplist()) ->
    {ok, get_commitment_purchase_analysis_response(), tuple()} |
    {error, any()} |
    {error, get_commitment_purchase_analysis_errors(), tuple()}.
get_commitment_purchase_analysis(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetCommitmentPurchaseAnalysis">>, Input, Options).

%% @doc Retrieves cost and usage metrics for your account.
%%
%% You can specify which cost and
%% usage-related metric that you want the request to return. For example, you
%% can specify
%% `BlendedCosts' or `UsageQuantity'. You can also filter and group
%% your
%% data by various dimensions, such as `SERVICE' or `AZ', in a
%% specific
%% time range. For a complete list of valid dimensions, see the
%% GetDimensionValues:
%% https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_GetDimensionValues.html
%% operation. Management account in an organization in Organizations have
%% access to all member accounts.
%%
%% For information about filter limitations, see Quotas and restrictions:
%% https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/billing-limits.html
%% in the Billing and Cost Management User Guide.
-spec get_cost_and_usage(aws_client:aws_client(), get_cost_and_usage_request()) ->
    {ok, get_cost_and_usage_response(), tuple()} |
    {error, any()} |
    {error, get_cost_and_usage_errors(), tuple()}.
get_cost_and_usage(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_cost_and_usage(Client, Input, []).

-spec get_cost_and_usage(aws_client:aws_client(), get_cost_and_usage_request(), proplists:proplist()) ->
    {ok, get_cost_and_usage_response(), tuple()} |
    {error, any()} |
    {error, get_cost_and_usage_errors(), tuple()}.
get_cost_and_usage(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetCostAndUsage">>, Input, Options).

%% @doc Retrieves cost and usage metrics with resources for your account.
%%
%% You can specify which
%% cost and usage-related metric, such as `BlendedCosts' or
%% `UsageQuantity', that you want the request to return. You can also
%% filter and group
%% your data by various dimensions, such as `SERVICE' or `AZ', in a
%% specific time range. For a complete list of valid dimensions, see the
%% GetDimensionValues:
%% https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_GetDimensionValues.html
%% operation. Management account in an organization in Organizations have
%% access to all member accounts.
%%
%% Hourly granularity is only available for EC2-Instances (Elastic Compute
%% Cloud)
%% resource-level data. All other resource-level data is available at daily
%% granularity.
%%
%% This is an opt-in only feature. You can enable this feature from the Cost
%% Explorer
%% Settings page. For information about how to access the Settings page, see
%% Controlling
%% Access for Cost Explorer:
%% https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/ce-access.html
%% in the Billing and Cost Management User
%% Guide.
-spec get_cost_and_usage_with_resources(aws_client:aws_client(), get_cost_and_usage_with_resources_request()) ->
    {ok, get_cost_and_usage_with_resources_response(), tuple()} |
    {error, any()} |
    {error, get_cost_and_usage_with_resources_errors(), tuple()}.
get_cost_and_usage_with_resources(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_cost_and_usage_with_resources(Client, Input, []).

-spec get_cost_and_usage_with_resources(aws_client:aws_client(), get_cost_and_usage_with_resources_request(), proplists:proplist()) ->
    {ok, get_cost_and_usage_with_resources_response(), tuple()} |
    {error, any()} |
    {error, get_cost_and_usage_with_resources_errors(), tuple()}.
get_cost_and_usage_with_resources(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetCostAndUsageWithResources">>, Input, Options).

%% @doc Retrieves an array of Cost Category names and values incurred cost.
%%
%% If some Cost Category names and values are not associated with any cost,
%% they will not
%% be returned by this API.
-spec get_cost_categories(aws_client:aws_client(), get_cost_categories_request()) ->
    {ok, get_cost_categories_response(), tuple()} |
    {error, any()} |
    {error, get_cost_categories_errors(), tuple()}.
get_cost_categories(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_cost_categories(Client, Input, []).

-spec get_cost_categories(aws_client:aws_client(), get_cost_categories_request(), proplists:proplist()) ->
    {ok, get_cost_categories_response(), tuple()} |
    {error, any()} |
    {error, get_cost_categories_errors(), tuple()}.
get_cost_categories(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetCostCategories">>, Input, Options).

%% @doc Retrieves a forecast for how much Amazon Web Services predicts that
%% you will spend over
%% the forecast time period that you select, based on your past costs.
-spec get_cost_forecast(aws_client:aws_client(), get_cost_forecast_request()) ->
    {ok, get_cost_forecast_response(), tuple()} |
    {error, any()} |
    {error, get_cost_forecast_errors(), tuple()}.
get_cost_forecast(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_cost_forecast(Client, Input, []).

-spec get_cost_forecast(aws_client:aws_client(), get_cost_forecast_request(), proplists:proplist()) ->
    {ok, get_cost_forecast_response(), tuple()} |
    {error, any()} |
    {error, get_cost_forecast_errors(), tuple()}.
get_cost_forecast(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetCostForecast">>, Input, Options).

%% @doc Retrieves all available filter values for a specified filter over a
%% period of time.
%%
%% You
%% can search the dimension values for an arbitrary string.
-spec get_dimension_values(aws_client:aws_client(), get_dimension_values_request()) ->
    {ok, get_dimension_values_response(), tuple()} |
    {error, any()} |
    {error, get_dimension_values_errors(), tuple()}.
get_dimension_values(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_dimension_values(Client, Input, []).

-spec get_dimension_values(aws_client:aws_client(), get_dimension_values_request(), proplists:proplist()) ->
    {ok, get_dimension_values_response(), tuple()} |
    {error, any()} |
    {error, get_dimension_values_errors(), tuple()}.
get_dimension_values(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDimensionValues">>, Input, Options).

%% @doc Retrieves the reservation coverage for your account, which you can
%% use to see how much
%% of your Amazon Elastic Compute Cloud, Amazon ElastiCache, Amazon
%% Relational Database Service,
%% or Amazon Redshift usage is covered by a reservation.
%%
%% An organization's management account can
%% see the coverage of the associated member accounts. This supports
%% dimensions, Cost Categories,
%% and nested expressions. For any time period, you can filter data about
%% reservation usage by
%% the following dimensions:
%%
%% AZ
%%
%% CACHE_ENGINE
%%
%% DATABASE_ENGINE
%%
%% DEPLOYMENT_OPTION
%%
%% INSTANCE_TYPE
%%
%% LINKED_ACCOUNT
%%
%% OPERATING_SYSTEM
%%
%% PLATFORM
%%
%% REGION
%%
%% SERVICE
%%
%% TAG
%%
%% TENANCY
%%
%% To determine valid values for a dimension, use the
%% `GetDimensionValues'
%% operation.
-spec get_reservation_coverage(aws_client:aws_client(), get_reservation_coverage_request()) ->
    {ok, get_reservation_coverage_response(), tuple()} |
    {error, any()} |
    {error, get_reservation_coverage_errors(), tuple()}.
get_reservation_coverage(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_reservation_coverage(Client, Input, []).

-spec get_reservation_coverage(aws_client:aws_client(), get_reservation_coverage_request(), proplists:proplist()) ->
    {ok, get_reservation_coverage_response(), tuple()} |
    {error, any()} |
    {error, get_reservation_coverage_errors(), tuple()}.
get_reservation_coverage(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetReservationCoverage">>, Input, Options).

%% @doc Gets recommendations for reservation purchases.
%%
%% These recommendations might help you to
%% reduce your costs. Reservations provide a discounted hourly rate (up to
%% 75%) compared to
%% On-Demand pricing.
%%
%% Amazon Web Services generates your recommendations by identifying your
%% On-Demand usage
%% during a specific time period and collecting your usage into categories
%% that are eligible for
%% a reservation. After Amazon Web Services has these categories, it
%% simulates every combination
%% of reservations in each category of usage to identify the best number of
%% each type of Reserved
%% Instance (RI) to purchase to maximize your estimated savings.
%%
%% For example, Amazon Web Services automatically aggregates your Amazon EC2
%% Linux, shared
%% tenancy, and c4 family usage in the US West (Oregon) Region and recommends
%% that you buy
%% size-flexible regional reservations to apply to the c4 family usage.
%% Amazon Web Services
%% recommends the smallest size instance in an instance family. This makes it
%% easier to purchase
%% a size-flexible Reserved Instance (RI). Amazon Web Services also shows the
%% equal number of
%% normalized units. This way, you can purchase any instance size that you
%% want. For this
%% example, your RI recommendation is for `c4.large' because that is the
%% smallest size
%% instance in the c4 instance family.
-spec get_reservation_purchase_recommendation(aws_client:aws_client(), get_reservation_purchase_recommendation_request()) ->
    {ok, get_reservation_purchase_recommendation_response(), tuple()} |
    {error, any()} |
    {error, get_reservation_purchase_recommendation_errors(), tuple()}.
get_reservation_purchase_recommendation(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_reservation_purchase_recommendation(Client, Input, []).

-spec get_reservation_purchase_recommendation(aws_client:aws_client(), get_reservation_purchase_recommendation_request(), proplists:proplist()) ->
    {ok, get_reservation_purchase_recommendation_response(), tuple()} |
    {error, any()} |
    {error, get_reservation_purchase_recommendation_errors(), tuple()}.
get_reservation_purchase_recommendation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetReservationPurchaseRecommendation">>, Input, Options).

%% @doc Retrieves the reservation utilization for your account.
%%
%% Management account in an
%% organization have access to member accounts. You can filter data by
%% dimensions in a time
%% period. You can use `GetDimensionValues' to determine the possible
%% dimension
%% values. Currently, you can group only by `SUBSCRIPTION_ID'.
-spec get_reservation_utilization(aws_client:aws_client(), get_reservation_utilization_request()) ->
    {ok, get_reservation_utilization_response(), tuple()} |
    {error, any()} |
    {error, get_reservation_utilization_errors(), tuple()}.
get_reservation_utilization(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_reservation_utilization(Client, Input, []).

-spec get_reservation_utilization(aws_client:aws_client(), get_reservation_utilization_request(), proplists:proplist()) ->
    {ok, get_reservation_utilization_response(), tuple()} |
    {error, any()} |
    {error, get_reservation_utilization_errors(), tuple()}.
get_reservation_utilization(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetReservationUtilization">>, Input, Options).

%% @doc Creates recommendations that help you save cost by identifying idle
%% and underutilized
%% Amazon EC2 instances.
%%
%% Recommendations are generated to either downsize or terminate instances,
%% along with
%% providing savings detail and metrics. For more information about
%% calculation and function, see
%% Optimizing Your Cost with Rightsizing Recommendations:
%% https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/ce-rightsizing.html
%% in the Billing and Cost Management User Guide.
-spec get_rightsizing_recommendation(aws_client:aws_client(), get_rightsizing_recommendation_request()) ->
    {ok, get_rightsizing_recommendation_response(), tuple()} |
    {error, any()} |
    {error, get_rightsizing_recommendation_errors(), tuple()}.
get_rightsizing_recommendation(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_rightsizing_recommendation(Client, Input, []).

-spec get_rightsizing_recommendation(aws_client:aws_client(), get_rightsizing_recommendation_request(), proplists:proplist()) ->
    {ok, get_rightsizing_recommendation_response(), tuple()} |
    {error, any()} |
    {error, get_rightsizing_recommendation_errors(), tuple()}.
get_rightsizing_recommendation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRightsizingRecommendation">>, Input, Options).

%% @doc Retrieves the details for a Savings Plan recommendation.
%%
%% These details include the hourly
%% data-points that construct the cost, coverage, and utilization charts.
-spec get_savings_plan_purchase_recommendation_details(aws_client:aws_client(), get_savings_plan_purchase_recommendation_details_request()) ->
    {ok, get_savings_plan_purchase_recommendation_details_response(), tuple()} |
    {error, any()} |
    {error, get_savings_plan_purchase_recommendation_details_errors(), tuple()}.
get_savings_plan_purchase_recommendation_details(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_savings_plan_purchase_recommendation_details(Client, Input, []).

-spec get_savings_plan_purchase_recommendation_details(aws_client:aws_client(), get_savings_plan_purchase_recommendation_details_request(), proplists:proplist()) ->
    {ok, get_savings_plan_purchase_recommendation_details_response(), tuple()} |
    {error, any()} |
    {error, get_savings_plan_purchase_recommendation_details_errors(), tuple()}.
get_savings_plan_purchase_recommendation_details(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSavingsPlanPurchaseRecommendationDetails">>, Input, Options).

%% @doc Retrieves the Savings Plans covered for your account.
%%
%% This enables you to see how much of
%% your cost is covered by a Savings Plan. An organization’s management
%% account can see the
%% coverage of the associated member accounts. This supports dimensions, Cost
%% Categories, and
%% nested expressions. For any time period, you can filter data for Savings
%% Plans usage with the
%% following dimensions:
%%
%% `LINKED_ACCOUNT'
%%
%% `REGION'
%%
%% `SERVICE'
%%
%% `INSTANCE_FAMILY'
%%
%% To determine valid values for a dimension, use the
%% `GetDimensionValues'
%% operation.
-spec get_savings_plans_coverage(aws_client:aws_client(), get_savings_plans_coverage_request()) ->
    {ok, get_savings_plans_coverage_response(), tuple()} |
    {error, any()} |
    {error, get_savings_plans_coverage_errors(), tuple()}.
get_savings_plans_coverage(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_savings_plans_coverage(Client, Input, []).

-spec get_savings_plans_coverage(aws_client:aws_client(), get_savings_plans_coverage_request(), proplists:proplist()) ->
    {ok, get_savings_plans_coverage_response(), tuple()} |
    {error, any()} |
    {error, get_savings_plans_coverage_errors(), tuple()}.
get_savings_plans_coverage(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSavingsPlansCoverage">>, Input, Options).

%% @doc Retrieves the Savings Plans recommendations for your account.
%%
%% First use
%% `StartSavingsPlansPurchaseRecommendationGeneration' to generate a new
%% set of
%% recommendations, and then use `GetSavingsPlansPurchaseRecommendation'
%% to retrieve
%% them.
-spec get_savings_plans_purchase_recommendation(aws_client:aws_client(), get_savings_plans_purchase_recommendation_request()) ->
    {ok, get_savings_plans_purchase_recommendation_response(), tuple()} |
    {error, any()} |
    {error, get_savings_plans_purchase_recommendation_errors(), tuple()}.
get_savings_plans_purchase_recommendation(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_savings_plans_purchase_recommendation(Client, Input, []).

-spec get_savings_plans_purchase_recommendation(aws_client:aws_client(), get_savings_plans_purchase_recommendation_request(), proplists:proplist()) ->
    {ok, get_savings_plans_purchase_recommendation_response(), tuple()} |
    {error, any()} |
    {error, get_savings_plans_purchase_recommendation_errors(), tuple()}.
get_savings_plans_purchase_recommendation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSavingsPlansPurchaseRecommendation">>, Input, Options).

%% @doc Retrieves the Savings Plans utilization for your account across date
%% ranges with daily or
%% monthly granularity.
%%
%% Management account in an organization have access to member accounts. You
%% can use `GetDimensionValues' in `SAVINGS_PLANS' to determine the
%% possible dimension values.
%%
%% You can't group by any dimension values for
%% `GetSavingsPlansUtilization'.
-spec get_savings_plans_utilization(aws_client:aws_client(), get_savings_plans_utilization_request()) ->
    {ok, get_savings_plans_utilization_response(), tuple()} |
    {error, any()} |
    {error, get_savings_plans_utilization_errors(), tuple()}.
get_savings_plans_utilization(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_savings_plans_utilization(Client, Input, []).

-spec get_savings_plans_utilization(aws_client:aws_client(), get_savings_plans_utilization_request(), proplists:proplist()) ->
    {ok, get_savings_plans_utilization_response(), tuple()} |
    {error, any()} |
    {error, get_savings_plans_utilization_errors(), tuple()}.
get_savings_plans_utilization(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSavingsPlansUtilization">>, Input, Options).

%% @doc Retrieves attribute data along with aggregate utilization and savings
%% data for a given
%% time period.
%%
%% This doesn't support granular or grouped data (daily/monthly) in
%% response. You
%% can't retrieve data by dates in a single response similar to
%% `GetSavingsPlanUtilization', but you have the option to make multiple
%% calls to
%% `GetSavingsPlanUtilizationDetails' by providing individual dates. You
%% can use
%% `GetDimensionValues' in `SAVINGS_PLANS' to determine the possible
%% dimension values.
%%
%% `GetSavingsPlanUtilizationDetails' internally groups data by
%% `SavingsPlansArn'.
-spec get_savings_plans_utilization_details(aws_client:aws_client(), get_savings_plans_utilization_details_request()) ->
    {ok, get_savings_plans_utilization_details_response(), tuple()} |
    {error, any()} |
    {error, get_savings_plans_utilization_details_errors(), tuple()}.
get_savings_plans_utilization_details(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_savings_plans_utilization_details(Client, Input, []).

-spec get_savings_plans_utilization_details(aws_client:aws_client(), get_savings_plans_utilization_details_request(), proplists:proplist()) ->
    {ok, get_savings_plans_utilization_details_response(), tuple()} |
    {error, any()} |
    {error, get_savings_plans_utilization_details_errors(), tuple()}.
get_savings_plans_utilization_details(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSavingsPlansUtilizationDetails">>, Input, Options).

%% @doc Queries for available tag keys and tag values for a specified period.
%%
%% You can search
%% the tag values for an arbitrary string.
-spec get_tags(aws_client:aws_client(), get_tags_request()) ->
    {ok, get_tags_response(), tuple()} |
    {error, any()} |
    {error, get_tags_errors(), tuple()}.
get_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_tags(Client, Input, []).

-spec get_tags(aws_client:aws_client(), get_tags_request(), proplists:proplist()) ->
    {ok, get_tags_response(), tuple()} |
    {error, any()} |
    {error, get_tags_errors(), tuple()}.
get_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetTags">>, Input, Options).

%% @doc Retrieves a forecast for how much Amazon Web Services predicts that
%% you will use
%% over the forecast time period that you select, based on your past usage.
-spec get_usage_forecast(aws_client:aws_client(), get_usage_forecast_request()) ->
    {ok, get_usage_forecast_response(), tuple()} |
    {error, any()} |
    {error, get_usage_forecast_errors(), tuple()}.
get_usage_forecast(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_usage_forecast(Client, Input, []).

-spec get_usage_forecast(aws_client:aws_client(), get_usage_forecast_request(), proplists:proplist()) ->
    {ok, get_usage_forecast_response(), tuple()} |
    {error, any()} |
    {error, get_usage_forecast_errors(), tuple()}.
get_usage_forecast(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetUsageForecast">>, Input, Options).

%% @doc Lists the commitment purchase analyses for your account.
-spec list_commitment_purchase_analyses(aws_client:aws_client(), list_commitment_purchase_analyses_request()) ->
    {ok, list_commitment_purchase_analyses_response(), tuple()} |
    {error, any()} |
    {error, list_commitment_purchase_analyses_errors(), tuple()}.
list_commitment_purchase_analyses(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_commitment_purchase_analyses(Client, Input, []).

-spec list_commitment_purchase_analyses(aws_client:aws_client(), list_commitment_purchase_analyses_request(), proplists:proplist()) ->
    {ok, list_commitment_purchase_analyses_response(), tuple()} |
    {error, any()} |
    {error, list_commitment_purchase_analyses_errors(), tuple()}.
list_commitment_purchase_analyses(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListCommitmentPurchaseAnalyses">>, Input, Options).

%% @doc
%% Retrieves a list of your historical cost allocation tag backfill requests.
-spec list_cost_allocation_tag_backfill_history(aws_client:aws_client(), list_cost_allocation_tag_backfill_history_request()) ->
    {ok, list_cost_allocation_tag_backfill_history_response(), tuple()} |
    {error, any()} |
    {error, list_cost_allocation_tag_backfill_history_errors(), tuple()}.
list_cost_allocation_tag_backfill_history(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_cost_allocation_tag_backfill_history(Client, Input, []).

-spec list_cost_allocation_tag_backfill_history(aws_client:aws_client(), list_cost_allocation_tag_backfill_history_request(), proplists:proplist()) ->
    {ok, list_cost_allocation_tag_backfill_history_response(), tuple()} |
    {error, any()} |
    {error, list_cost_allocation_tag_backfill_history_errors(), tuple()}.
list_cost_allocation_tag_backfill_history(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListCostAllocationTagBackfillHistory">>, Input, Options).

%% @doc Get a list of cost allocation tags.
%%
%% All inputs in the API are optional and serve as
%% filters. By default, all cost allocation tags are returned.
-spec list_cost_allocation_tags(aws_client:aws_client(), list_cost_allocation_tags_request()) ->
    {ok, list_cost_allocation_tags_response(), tuple()} |
    {error, any()} |
    {error, list_cost_allocation_tags_errors(), tuple()}.
list_cost_allocation_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_cost_allocation_tags(Client, Input, []).

-spec list_cost_allocation_tags(aws_client:aws_client(), list_cost_allocation_tags_request(), proplists:proplist()) ->
    {ok, list_cost_allocation_tags_response(), tuple()} |
    {error, any()} |
    {error, list_cost_allocation_tags_errors(), tuple()}.
list_cost_allocation_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListCostAllocationTags">>, Input, Options).

%% @doc Returns the name, Amazon Resource Name (ARN), `NumberOfRules' and
%% effective
%% dates of all Cost Categories defined in the account.
%%
%% You have the option to use
%% `EffectiveOn' to return a list of Cost Categories that were active on
%% a specific
%% date. If there is no `EffectiveOn' specified, you’ll see Cost
%% Categories that are
%% effective on the current date. If Cost Category is still effective,
%% `EffectiveEnd'
%% is omitted in the response. `ListCostCategoryDefinitions' supports
%% pagination. The
%% request can have a `MaxResults' range up to 100.
-spec list_cost_category_definitions(aws_client:aws_client(), list_cost_category_definitions_request()) ->
    {ok, list_cost_category_definitions_response(), tuple()} |
    {error, any()} |
    {error, list_cost_category_definitions_errors(), tuple()}.
list_cost_category_definitions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_cost_category_definitions(Client, Input, []).

-spec list_cost_category_definitions(aws_client:aws_client(), list_cost_category_definitions_request(), proplists:proplist()) ->
    {ok, list_cost_category_definitions_response(), tuple()} |
    {error, any()} |
    {error, list_cost_category_definitions_errors(), tuple()}.
list_cost_category_definitions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListCostCategoryDefinitions">>, Input, Options).

%% @doc Retrieves a list of your historical recommendation generations within
%% the past 30
%% days.
-spec list_savings_plans_purchase_recommendation_generation(aws_client:aws_client(), list_savings_plans_purchase_recommendation_generation_request()) ->
    {ok, list_savings_plans_purchase_recommendation_generation_response(), tuple()} |
    {error, any()} |
    {error, list_savings_plans_purchase_recommendation_generation_errors(), tuple()}.
list_savings_plans_purchase_recommendation_generation(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_savings_plans_purchase_recommendation_generation(Client, Input, []).

-spec list_savings_plans_purchase_recommendation_generation(aws_client:aws_client(), list_savings_plans_purchase_recommendation_generation_request(), proplists:proplist()) ->
    {ok, list_savings_plans_purchase_recommendation_generation_response(), tuple()} |
    {error, any()} |
    {error, list_savings_plans_purchase_recommendation_generation_errors(), tuple()}.
list_savings_plans_purchase_recommendation_generation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListSavingsPlansPurchaseRecommendationGeneration">>, Input, Options).

%% @doc Returns a list of resource tags associated with the resource
%% specified by the Amazon
%% Resource Name (ARN).
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

%% @doc Modifies the feedback property of a given cost anomaly.
-spec provide_anomaly_feedback(aws_client:aws_client(), provide_anomaly_feedback_request()) ->
    {ok, provide_anomaly_feedback_response(), tuple()} |
    {error, any()} |
    {error, provide_anomaly_feedback_errors(), tuple()}.
provide_anomaly_feedback(Client, Input)
  when is_map(Client), is_map(Input) ->
    provide_anomaly_feedback(Client, Input, []).

-spec provide_anomaly_feedback(aws_client:aws_client(), provide_anomaly_feedback_request(), proplists:proplist()) ->
    {ok, provide_anomaly_feedback_response(), tuple()} |
    {error, any()} |
    {error, provide_anomaly_feedback_errors(), tuple()}.
provide_anomaly_feedback(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ProvideAnomalyFeedback">>, Input, Options).

%% @doc Specifies the parameters of a planned commitment purchase and starts
%% the generation of the
%% analysis.
%%
%% This enables you to estimate the cost, coverage, and utilization impact of
%% your
%% planned commitment purchases.
-spec start_commitment_purchase_analysis(aws_client:aws_client(), start_commitment_purchase_analysis_request()) ->
    {ok, start_commitment_purchase_analysis_response(), tuple()} |
    {error, any()} |
    {error, start_commitment_purchase_analysis_errors(), tuple()}.
start_commitment_purchase_analysis(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_commitment_purchase_analysis(Client, Input, []).

-spec start_commitment_purchase_analysis(aws_client:aws_client(), start_commitment_purchase_analysis_request(), proplists:proplist()) ->
    {ok, start_commitment_purchase_analysis_response(), tuple()} |
    {error, any()} |
    {error, start_commitment_purchase_analysis_errors(), tuple()}.
start_commitment_purchase_analysis(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartCommitmentPurchaseAnalysis">>, Input, Options).

%% @doc
%% Request a cost allocation tag backfill.
%%
%% This will backfill the activation status (either `active' or
%% `inactive') for all tag keys from `para:BackfillFrom' up to the
%% when this request is made.
%%
%% You can request a backfill once every 24 hours.
-spec start_cost_allocation_tag_backfill(aws_client:aws_client(), start_cost_allocation_tag_backfill_request()) ->
    {ok, start_cost_allocation_tag_backfill_response(), tuple()} |
    {error, any()} |
    {error, start_cost_allocation_tag_backfill_errors(), tuple()}.
start_cost_allocation_tag_backfill(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_cost_allocation_tag_backfill(Client, Input, []).

-spec start_cost_allocation_tag_backfill(aws_client:aws_client(), start_cost_allocation_tag_backfill_request(), proplists:proplist()) ->
    {ok, start_cost_allocation_tag_backfill_response(), tuple()} |
    {error, any()} |
    {error, start_cost_allocation_tag_backfill_errors(), tuple()}.
start_cost_allocation_tag_backfill(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartCostAllocationTagBackfill">>, Input, Options).

%% @doc Requests a Savings Plans recommendation generation.
%%
%% This enables you to calculate a fresh
%% set of Savings Plans recommendations that takes your latest usage data and
%% current Savings
%% Plans inventory into account. You can refresh Savings Plans
%% recommendations up to three times
%% daily for a consolidated billing family.
%%
%% `StartSavingsPlansPurchaseRecommendationGeneration' has no request
%% syntax
%% because no input parameters are needed to support this operation.
-spec start_savings_plans_purchase_recommendation_generation(aws_client:aws_client(), start_savings_plans_purchase_recommendation_generation_request()) ->
    {ok, start_savings_plans_purchase_recommendation_generation_response(), tuple()} |
    {error, any()} |
    {error, start_savings_plans_purchase_recommendation_generation_errors(), tuple()}.
start_savings_plans_purchase_recommendation_generation(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_savings_plans_purchase_recommendation_generation(Client, Input, []).

-spec start_savings_plans_purchase_recommendation_generation(aws_client:aws_client(), start_savings_plans_purchase_recommendation_generation_request(), proplists:proplist()) ->
    {ok, start_savings_plans_purchase_recommendation_generation_response(), tuple()} |
    {error, any()} |
    {error, start_savings_plans_purchase_recommendation_generation_errors(), tuple()}.
start_savings_plans_purchase_recommendation_generation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartSavingsPlansPurchaseRecommendationGeneration">>, Input, Options).

%% @doc An API operation for adding one or more tags (key-value pairs) to a
%% resource.
%%
%% You can use the `TagResource' operation with a resource that already
%% has tags.
%% If you specify a new tag key for the resource, this tag is appended to the
%% list of tags
%% associated with the resource. If you specify a tag key that is already
%% associated with the
%% resource, the new tag value you specify replaces the previous value for
%% that tag.
%%
%% Although the maximum number of array members is 200, user-tag maximum is
%% 50. The remaining
%% are reserved for Amazon Web Services use.
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

%% @doc Removes one or more tags from a resource.
%%
%% Specify only tag keys in your request. Don't
%% specify the value.
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

%% @doc Updates an existing cost anomaly monitor.
%%
%% The changes made are applied going forward, and
%% doesn't change anomalies detected in the past.
-spec update_anomaly_monitor(aws_client:aws_client(), update_anomaly_monitor_request()) ->
    {ok, update_anomaly_monitor_response(), tuple()} |
    {error, any()} |
    {error, update_anomaly_monitor_errors(), tuple()}.
update_anomaly_monitor(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_anomaly_monitor(Client, Input, []).

-spec update_anomaly_monitor(aws_client:aws_client(), update_anomaly_monitor_request(), proplists:proplist()) ->
    {ok, update_anomaly_monitor_response(), tuple()} |
    {error, any()} |
    {error, update_anomaly_monitor_errors(), tuple()}.
update_anomaly_monitor(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateAnomalyMonitor">>, Input, Options).

%% @doc Updates an existing cost anomaly subscription.
%%
%% Specify the fields that you want to update.
%% Omitted fields are unchanged.
%%
%% The JSON below describes the generic construct for each type. See Request
%% Parameters:
%% https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_UpdateAnomalySubscription.html#API_UpdateAnomalySubscription_RequestParameters
%% for possible values as they apply to
%% `AnomalySubscription'.
-spec update_anomaly_subscription(aws_client:aws_client(), update_anomaly_subscription_request()) ->
    {ok, update_anomaly_subscription_response(), tuple()} |
    {error, any()} |
    {error, update_anomaly_subscription_errors(), tuple()}.
update_anomaly_subscription(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_anomaly_subscription(Client, Input, []).

-spec update_anomaly_subscription(aws_client:aws_client(), update_anomaly_subscription_request(), proplists:proplist()) ->
    {ok, update_anomaly_subscription_response(), tuple()} |
    {error, any()} |
    {error, update_anomaly_subscription_errors(), tuple()}.
update_anomaly_subscription(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateAnomalySubscription">>, Input, Options).

%% @doc Updates status for cost allocation tags in bulk, with maximum batch
%% size of 20.
%%
%% If the tag
%% status that's updated is the same as the existing tag status, the
%% request doesn't fail.
%% Instead, it doesn't have any effect on the tag status (for example,
%% activating the active
%% tag).
-spec update_cost_allocation_tags_status(aws_client:aws_client(), update_cost_allocation_tags_status_request()) ->
    {ok, update_cost_allocation_tags_status_response(), tuple()} |
    {error, any()} |
    {error, update_cost_allocation_tags_status_errors(), tuple()}.
update_cost_allocation_tags_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_cost_allocation_tags_status(Client, Input, []).

-spec update_cost_allocation_tags_status(aws_client:aws_client(), update_cost_allocation_tags_status_request(), proplists:proplist()) ->
    {ok, update_cost_allocation_tags_status_response(), tuple()} |
    {error, any()} |
    {error, update_cost_allocation_tags_status_errors(), tuple()}.
update_cost_allocation_tags_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateCostAllocationTagsStatus">>, Input, Options).

%% @doc Updates an existing Cost Category.
%%
%% Changes made to the Cost Category rules will be used to
%% categorize the current month’s expenses and future expenses. This won’t
%% change categorization
%% for the previous months.
-spec update_cost_category_definition(aws_client:aws_client(), update_cost_category_definition_request()) ->
    {ok, update_cost_category_definition_response(), tuple()} |
    {error, any()} |
    {error, update_cost_category_definition_errors(), tuple()}.
update_cost_category_definition(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_cost_category_definition(Client, Input, []).

-spec update_cost_category_definition(aws_client:aws_client(), update_cost_category_definition_request(), proplists:proplist()) ->
    {ok, update_cost_category_definition_response(), tuple()} |
    {error, any()} |
    {error, update_cost_category_definition_errors(), tuple()}.
update_cost_category_definition(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateCostCategoryDefinition">>, Input, Options).

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
    Client1 = Client#{service => <<"ce">>,
                      region => <<"us-east-1">>},
    Host = build_host(<<"ce">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"AWSInsightsIndexService.", Action/binary>>}
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
