%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Compute Optimizer is a service that analyzes the configuration and
%% utilization
%% metrics of your Amazon Web Services compute resources, such as Amazon EC2
%% instances, Amazon EC2 Auto Scaling groups, Lambda functions, Amazon EBS
%% volumes, and Amazon ECS services on Fargate.
%%
%% It reports whether your resources are optimal, and generates
%% optimization recommendations to reduce the cost and improve the
%% performance of your
%% workloads. Compute Optimizer also provides recent utilization metric data,
%% in addition
%% to projected utilization metric data for the recommendations, which you
%% can use to
%% evaluate which recommendation provides the best price-performance
%% trade-off. The
%% analysis of your usage patterns can help you decide when to move or resize
%% your running
%% resources, and still meet your performance and capacity requirements. For
%% more
%% information about Compute Optimizer, including the required permissions to
%% use the
%% service, see the Compute Optimizer User Guide:
%% https://docs.aws.amazon.com/compute-optimizer/latest/ug/.
-module(aws_compute_optimizer).

-export([delete_recommendation_preferences/2,
         delete_recommendation_preferences/3,
         describe_recommendation_export_jobs/2,
         describe_recommendation_export_jobs/3,
         export_auto_scaling_group_recommendations/2,
         export_auto_scaling_group_recommendations/3,
         export_e_c_s_service_recommendations/2,
         export_e_c_s_service_recommendations/3,
         export_ebs_volume_recommendations/2,
         export_ebs_volume_recommendations/3,
         export_ec2_instance_recommendations/2,
         export_ec2_instance_recommendations/3,
         export_idle_recommendations/2,
         export_idle_recommendations/3,
         export_lambda_function_recommendations/2,
         export_lambda_function_recommendations/3,
         export_license_recommendations/2,
         export_license_recommendations/3,
         export_rds_database_recommendations/2,
         export_rds_database_recommendations/3,
         get_auto_scaling_group_recommendations/2,
         get_auto_scaling_group_recommendations/3,
         get_e_c_s_service_recommendation_projected_metrics/2,
         get_e_c_s_service_recommendation_projected_metrics/3,
         get_e_c_s_service_recommendations/2,
         get_e_c_s_service_recommendations/3,
         get_ebs_volume_recommendations/2,
         get_ebs_volume_recommendations/3,
         get_ec2_instance_recommendations/2,
         get_ec2_instance_recommendations/3,
         get_ec2_recommendation_projected_metrics/2,
         get_ec2_recommendation_projected_metrics/3,
         get_effective_recommendation_preferences/2,
         get_effective_recommendation_preferences/3,
         get_enrollment_status/2,
         get_enrollment_status/3,
         get_enrollment_statuses_for_organization/2,
         get_enrollment_statuses_for_organization/3,
         get_idle_recommendations/2,
         get_idle_recommendations/3,
         get_lambda_function_recommendations/2,
         get_lambda_function_recommendations/3,
         get_license_recommendations/2,
         get_license_recommendations/3,
         get_rds_database_recommendation_projected_metrics/2,
         get_rds_database_recommendation_projected_metrics/3,
         get_rds_database_recommendations/2,
         get_rds_database_recommendations/3,
         get_recommendation_preferences/2,
         get_recommendation_preferences/3,
         get_recommendation_summaries/2,
         get_recommendation_summaries/3,
         put_recommendation_preferences/2,
         put_recommendation_preferences/3,
         update_enrollment_status/2,
         update_enrollment_status/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% current_performance_risk_ratings() :: #{
%%   <<"high">> => float(),
%%   <<"low">> => float(),
%%   <<"medium">> => float(),
%%   <<"veryLow">> => float()
%% }
-type current_performance_risk_ratings() :: #{binary() => any()}.

%% Example:
%% get_license_recommendations_request() :: #{
%%   <<"accountIds">> => list(string()()),
%%   <<"filters">> => list(license_recommendation_filter()()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"resourceArns">> => list(string()())
%% }
-type get_license_recommendations_request() :: #{binary() => any()}.

%% Example:
%% get_ec2_recommendation_projected_metrics_response() :: #{
%%   <<"recommendedOptionProjectedMetrics">> => list(recommended_option_projected_metric()())
%% }
-type get_ec2_recommendation_projected_metrics_response() :: #{binary() => any()}.

%% Example:
%% get_recommendation_summaries_request() :: #{
%%   <<"accountIds">> => list(string()()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type get_recommendation_summaries_request() :: #{binary() => any()}.

%% Example:
%% get_enrollment_status_request() :: #{

%% }
-type get_enrollment_status_request() :: #{binary() => any()}.

%% Example:
%% rds_db_recommendation() :: #{
%%   <<"accountId">> => string(),
%%   <<"currentDBInstanceClass">> => string(),
%%   <<"currentInstancePerformanceRisk">> => list(any()),
%%   <<"currentStorageConfiguration">> => db_storage_configuration(),
%%   <<"dbClusterIdentifier">> => string(),
%%   <<"effectiveRecommendationPreferences">> => rds_effective_recommendation_preferences(),
%%   <<"engine">> => string(),
%%   <<"engineVersion">> => string(),
%%   <<"idle">> => list(any()),
%%   <<"instanceFinding">> => list(any()),
%%   <<"instanceFindingReasonCodes">> => list(list(any())()),
%%   <<"instanceRecommendationOptions">> => list(rds_db_instance_recommendation_option()()),
%%   <<"lastRefreshTimestamp">> => non_neg_integer(),
%%   <<"lookbackPeriodInDays">> => float(),
%%   <<"promotionTier">> => integer(),
%%   <<"resourceArn">> => string(),
%%   <<"storageFinding">> => list(any()),
%%   <<"storageFindingReasonCodes">> => list(list(any())()),
%%   <<"storageRecommendationOptions">> => list(rds_db_storage_recommendation_option()()),
%%   <<"tags">> => list(tag()()),
%%   <<"utilizationMetrics">> => list(rds_db_utilization_metric()())
%% }
-type rds_db_recommendation() :: #{binary() => any()}.

%% Example:
%% license_configuration() :: #{
%%   <<"instanceType">> => string(),
%%   <<"licenseEdition">> => list(any()),
%%   <<"licenseModel">> => list(any()),
%%   <<"licenseName">> => list(any()),
%%   <<"licenseVersion">> => string(),
%%   <<"metricsSource">> => list(metric_source()()),
%%   <<"numberOfCores">> => integer(),
%%   <<"operatingSystem">> => string()
%% }
-type license_configuration() :: #{binary() => any()}.

%% Example:
%% lambda_estimated_monthly_savings() :: #{
%%   <<"currency">> => list(any()),
%%   <<"value">> => float()
%% }
-type lambda_estimated_monthly_savings() :: #{binary() => any()}.

%% Example:
%% lambda_function_memory_projected_metric() :: #{
%%   <<"name">> => list(any()),
%%   <<"statistic">> => list(any()),
%%   <<"value">> => float()
%% }
-type lambda_function_memory_projected_metric() :: #{binary() => any()}.

%% Example:
%% idle_recommendation() :: #{
%%   <<"accountId">> => string(),
%%   <<"finding">> => list(any()),
%%   <<"findingDescription">> => string(),
%%   <<"lastRefreshTimestamp">> => non_neg_integer(),
%%   <<"lookBackPeriodInDays">> => float(),
%%   <<"resourceArn">> => string(),
%%   <<"resourceId">> => string(),
%%   <<"resourceType">> => list(any()),
%%   <<"savingsOpportunity">> => idle_savings_opportunity(),
%%   <<"savingsOpportunityAfterDiscounts">> => idle_savings_opportunity_after_discounts(),
%%   <<"tags">> => list(tag()()),
%%   <<"utilizationMetrics">> => list(idle_utilization_metric()())
%% }
-type idle_recommendation() :: #{binary() => any()}.

%% Example:
%% get_e_c_s_service_recommendation_projected_metrics_request() :: #{
%%   <<"endTime">> := non_neg_integer(),
%%   <<"period">> := integer(),
%%   <<"serviceArn">> := string(),
%%   <<"startTime">> := non_neg_integer(),
%%   <<"stat">> := list(any())
%% }
-type get_e_c_s_service_recommendation_projected_metrics_request() :: #{binary() => any()}.

%% Example:
%% container_recommendation() :: #{
%%   <<"containerName">> => string(),
%%   <<"cpu">> => integer(),
%%   <<"memorySizeConfiguration">> => memory_size_configuration()
%% }
-type container_recommendation() :: #{binary() => any()}.

%% Example:
%% auto_scaling_group_estimated_monthly_savings() :: #{
%%   <<"currency">> => list(any()),
%%   <<"value">> => float()
%% }
-type auto_scaling_group_estimated_monthly_savings() :: #{binary() => any()}.

%% Example:
%% account_enrollment_status() :: #{
%%   <<"accountId">> => string(),
%%   <<"lastUpdatedTimestamp">> => non_neg_integer(),
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => string()
%% }
-type account_enrollment_status() :: #{binary() => any()}.

%% Example:
%% describe_recommendation_export_jobs_request() :: #{
%%   <<"filters">> => list(job_filter()()),
%%   <<"jobIds">> => list(string()()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type describe_recommendation_export_jobs_request() :: #{binary() => any()}.

%% Example:
%% ebs_effective_recommendation_preferences() :: #{
%%   <<"savingsEstimationMode">> => ebs_savings_estimation_mode()
%% }
-type ebs_effective_recommendation_preferences() :: #{binary() => any()}.

%% Example:
%% get_lambda_function_recommendations_request() :: #{
%%   <<"accountIds">> => list(string()()),
%%   <<"filters">> => list(lambda_function_recommendation_filter()()),
%%   <<"functionArns">> => list(string()()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type get_lambda_function_recommendations_request() :: #{binary() => any()}.

%% Example:
%% get_ebs_volume_recommendations_response() :: #{
%%   <<"errors">> => list(get_recommendation_error()()),
%%   <<"nextToken">> => string(),
%%   <<"volumeRecommendations">> => list(volume_recommendation()())
%% }
-type get_ebs_volume_recommendations_response() :: #{binary() => any()}.

%% Example:
%% lambda_function_recommendation() :: #{
%%   <<"accountId">> => string(),
%%   <<"currentMemorySize">> => integer(),
%%   <<"currentPerformanceRisk">> => list(any()),
%%   <<"effectiveRecommendationPreferences">> => lambda_effective_recommendation_preferences(),
%%   <<"finding">> => list(any()),
%%   <<"findingReasonCodes">> => list(list(any())()),
%%   <<"functionArn">> => string(),
%%   <<"functionVersion">> => string(),
%%   <<"lastRefreshTimestamp">> => non_neg_integer(),
%%   <<"lookbackPeriodInDays">> => float(),
%%   <<"memorySizeRecommendationOptions">> => list(lambda_function_memory_recommendation_option()()),
%%   <<"numberOfInvocations">> => float(),
%%   <<"tags">> => list(tag()()),
%%   <<"utilizationMetrics">> => list(lambda_function_utilization_metric()())
%% }
-type lambda_function_recommendation() :: #{binary() => any()}.

%% Example:
%% idle_utilization_metric() :: #{
%%   <<"name">> => list(any()),
%%   <<"statistic">> => list(any()),
%%   <<"value">> => float()
%% }
-type idle_utilization_metric() :: #{binary() => any()}.

%% Example:
%% db_storage_configuration() :: #{
%%   <<"allocatedStorage">> => integer(),
%%   <<"iops">> => integer(),
%%   <<"maxAllocatedStorage">> => integer(),
%%   <<"storageThroughput">> => integer(),
%%   <<"storageType">> => string()
%% }
-type db_storage_configuration() :: #{binary() => any()}.

%% Example:
%% idle_estimated_monthly_savings() :: #{
%%   <<"currency">> => list(any()),
%%   <<"value">> => float()
%% }
-type idle_estimated_monthly_savings() :: #{binary() => any()}.

%% Example:
%% get_enrollment_statuses_for_organization_request() :: #{
%%   <<"filters">> => list(enrollment_filter()()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type get_enrollment_statuses_for_organization_request() :: #{binary() => any()}.

%% Example:
%% missing_authentication_token() :: #{
%%   <<"message">> => string()
%% }
-type missing_authentication_token() :: #{binary() => any()}.

%% Example:
%% ebs_utilization_metric() :: #{
%%   <<"name">> => list(any()),
%%   <<"statistic">> => list(any()),
%%   <<"value">> => float()
%% }
-type ebs_utilization_metric() :: #{binary() => any()}.

%% Example:
%% get_effective_recommendation_preferences_response() :: #{
%%   <<"enhancedInfrastructureMetrics">> => list(any()),
%%   <<"externalMetricsPreference">> => external_metrics_preference(),
%%   <<"lookBackPeriod">> => list(any()),
%%   <<"preferredResources">> => list(effective_preferred_resource()()),
%%   <<"utilizationPreferences">> => list(utilization_preference()())
%% }
-type get_effective_recommendation_preferences_response() :: #{binary() => any()}.

%% Example:
%% get_recommendation_preferences_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"recommendationPreferencesDetails">> => list(recommendation_preferences_detail()())
%% }
-type get_recommendation_preferences_response() :: #{binary() => any()}.

%% Example:
%% e_c_s_service_recommendation_option() :: #{
%%   <<"containerRecommendations">> => list(container_recommendation()()),
%%   <<"cpu">> => integer(),
%%   <<"memory">> => integer(),
%%   <<"projectedUtilizationMetrics">> => list(e_c_s_service_projected_utilization_metric()()),
%%   <<"savingsOpportunity">> => savings_opportunity(),
%%   <<"savingsOpportunityAfterDiscounts">> => e_c_s_savings_opportunity_after_discounts()
%% }
-type e_c_s_service_recommendation_option() :: #{binary() => any()}.

%% Example:
%% rds_storage_estimated_monthly_savings() :: #{
%%   <<"currency">> => list(any()),
%%   <<"value">> => float()
%% }
-type rds_storage_estimated_monthly_savings() :: #{binary() => any()}.

%% Example:
%% customizable_metric_parameters() :: #{
%%   <<"headroom">> => list(any()),
%%   <<"threshold">> => list(any())
%% }
-type customizable_metric_parameters() :: #{binary() => any()}.

%% Example:
%% ebs_savings_estimation_mode() :: #{
%%   <<"source">> => list(any())
%% }
-type ebs_savings_estimation_mode() :: #{binary() => any()}.

%% Example:
%% recommendation_preferences_detail() :: #{
%%   <<"enhancedInfrastructureMetrics">> => list(any()),
%%   <<"externalMetricsPreference">> => external_metrics_preference(),
%%   <<"inferredWorkloadTypes">> => list(any()),
%%   <<"lookBackPeriod">> => list(any()),
%%   <<"preferredResources">> => list(effective_preferred_resource()()),
%%   <<"resourceType">> => list(any()),
%%   <<"savingsEstimationMode">> => list(any()),
%%   <<"scope">> => scope(),
%%   <<"utilizationPreferences">> => list(utilization_preference()())
%% }
-type recommendation_preferences_detail() :: #{binary() => any()}.

%% Example:
%% e_c_s_estimated_monthly_savings() :: #{
%%   <<"currency">> => list(any()),
%%   <<"value">> => float()
%% }
-type e_c_s_estimated_monthly_savings() :: #{binary() => any()}.

%% Example:
%% idle_savings_opportunity_after_discounts() :: #{
%%   <<"estimatedMonthlySavings">> => idle_estimated_monthly_savings(),
%%   <<"savingsOpportunityPercentage">> => float()
%% }
-type idle_savings_opportunity_after_discounts() :: #{binary() => any()}.

%% Example:
%% rds_effective_recommendation_preferences() :: #{
%%   <<"cpuVendorArchitectures">> => list(list(any())()),
%%   <<"enhancedInfrastructureMetrics">> => list(any()),
%%   <<"lookBackPeriod">> => list(any()),
%%   <<"savingsEstimationMode">> => rds_savings_estimation_mode()
%% }
-type rds_effective_recommendation_preferences() :: #{binary() => any()}.

%% Example:
%% describe_recommendation_export_jobs_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"recommendationExportJobs">> => list(recommendation_export_job()())
%% }
-type describe_recommendation_export_jobs_response() :: #{binary() => any()}.

%% Example:
%% external_metric_status() :: #{
%%   <<"statusCode">> => list(any()),
%%   <<"statusReason">> => string()
%% }
-type external_metric_status() :: #{binary() => any()}.

%% Example:
%% get_recommendation_summaries_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"recommendationSummaries">> => list(recommendation_summary()())
%% }
-type get_recommendation_summaries_response() :: #{binary() => any()}.

%% Example:
%% order_by() :: #{
%%   <<"dimension">> => list(any()),
%%   <<"order">> => list(any())
%% }
-type order_by() :: #{binary() => any()}.

%% Example:
%% instance_savings_estimation_mode() :: #{
%%   <<"source">> => list(any())
%% }
-type instance_savings_estimation_mode() :: #{binary() => any()}.

%% Example:
%% get_e_c_s_service_recommendations_response() :: #{
%%   <<"ecsServiceRecommendations">> => list(e_c_s_service_recommendation()()),
%%   <<"errors">> => list(get_recommendation_error()()),
%%   <<"nextToken">> => string()
%% }
-type get_e_c_s_service_recommendations_response() :: #{binary() => any()}.

%% Example:
%% put_recommendation_preferences_response() :: #{

%% }
-type put_recommendation_preferences_response() :: #{binary() => any()}.

%% Example:
%% update_enrollment_status_request() :: #{
%%   <<"includeMemberAccounts">> => boolean(),
%%   <<"status">> := list(any())
%% }
-type update_enrollment_status_request() :: #{binary() => any()}.

%% Example:
%% auto_scaling_group_savings_opportunity_after_discounts() :: #{
%%   <<"estimatedMonthlySavings">> => auto_scaling_group_estimated_monthly_savings(),
%%   <<"savingsOpportunityPercentage">> => float()
%% }
-type auto_scaling_group_savings_opportunity_after_discounts() :: #{binary() => any()}.

%% Example:
%% delete_recommendation_preferences_request() :: #{
%%   <<"recommendationPreferenceNames">> := list(list(any())()),
%%   <<"resourceType">> := list(any()),
%%   <<"scope">> => scope()
%% }
-type delete_recommendation_preferences_request() :: #{binary() => any()}.

%% Example:
%% lambda_function_memory_recommendation_option() :: #{
%%   <<"memorySize">> => integer(),
%%   <<"projectedUtilizationMetrics">> => list(lambda_function_memory_projected_metric()()),
%%   <<"rank">> => integer(),
%%   <<"savingsOpportunity">> => savings_opportunity(),
%%   <<"savingsOpportunityAfterDiscounts">> => lambda_savings_opportunity_after_discounts()
%% }
-type lambda_function_memory_recommendation_option() :: #{binary() => any()}.

%% Example:
%% update_enrollment_status_response() :: #{
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => string()
%% }
-type update_enrollment_status_response() :: #{binary() => any()}.

%% Example:
%% job_filter() :: #{
%%   <<"name">> => list(any()),
%%   <<"values">> => list(string()())
%% }
-type job_filter() :: #{binary() => any()}.

%% Example:
%% rds_database_projected_metric() :: #{
%%   <<"name">> => list(any()),
%%   <<"timestamps">> => list(non_neg_integer()()),
%%   <<"values">> => list(float()())
%% }
-type rds_database_projected_metric() :: #{binary() => any()}.

%% Example:
%% export_lambda_function_recommendations_request() :: #{
%%   <<"accountIds">> => list(string()()),
%%   <<"fieldsToExport">> => list(list(any())()),
%%   <<"fileFormat">> => list(any()),
%%   <<"filters">> => list(lambda_function_recommendation_filter()()),
%%   <<"includeMemberAccounts">> => boolean(),
%%   <<"s3DestinationConfig">> := s3_destination_config()
%% }
-type export_lambda_function_recommendations_request() :: #{binary() => any()}.

%% Example:
%% get_enrollment_statuses_for_organization_response() :: #{
%%   <<"accountEnrollmentStatuses">> => list(account_enrollment_status()()),
%%   <<"nextToken">> => string()
%% }
-type get_enrollment_statuses_for_organization_response() :: #{binary() => any()}.

%% Example:
%% rds_savings_estimation_mode() :: #{
%%   <<"source">> => list(any())
%% }
-type rds_savings_estimation_mode() :: #{binary() => any()}.

%% Example:
%% lambda_effective_recommendation_preferences() :: #{
%%   <<"savingsEstimationMode">> => lambda_savings_estimation_mode()
%% }
-type lambda_effective_recommendation_preferences() :: #{binary() => any()}.

%% Example:
%% export_e_c_s_service_recommendations_request() :: #{
%%   <<"accountIds">> => list(string()()),
%%   <<"fieldsToExport">> => list(list(any())()),
%%   <<"fileFormat">> => list(any()),
%%   <<"filters">> => list(e_c_s_service_recommendation_filter()()),
%%   <<"includeMemberAccounts">> => boolean(),
%%   <<"s3DestinationConfig">> := s3_destination_config()
%% }
-type export_e_c_s_service_recommendations_request() :: #{binary() => any()}.

%% Example:
%% rds_instance_estimated_monthly_savings() :: #{
%%   <<"currency">> => list(any()),
%%   <<"value">> => float()
%% }
-type rds_instance_estimated_monthly_savings() :: #{binary() => any()}.

%% Example:
%% get_idle_recommendations_response() :: #{
%%   <<"errors">> => list(idle_recommendation_error()()),
%%   <<"idleRecommendations">> => list(idle_recommendation()()),
%%   <<"nextToken">> => string()
%% }
-type get_idle_recommendations_response() :: #{binary() => any()}.

%% Example:
%% get_ec2_instance_recommendations_response() :: #{
%%   <<"errors">> => list(get_recommendation_error()()),
%%   <<"instanceRecommendations">> => list(instance_recommendation()()),
%%   <<"nextToken">> => string()
%% }
-type get_ec2_instance_recommendations_response() :: #{binary() => any()}.

%% Example:
%% idle_summary() :: #{
%%   <<"name">> => list(any()),
%%   <<"value">> => float()
%% }
-type idle_summary() :: #{binary() => any()}.

%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% opt_in_required_exception() :: #{
%%   <<"message">> => string()
%% }
-type opt_in_required_exception() :: #{binary() => any()}.

%% Example:
%% idle_recommendation_filter() :: #{
%%   <<"name">> => list(any()),
%%   <<"values">> => list(string()())
%% }
-type idle_recommendation_filter() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"key">> => string(),
%%   <<"value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% metric_source() :: #{
%%   <<"provider">> => list(any()),
%%   <<"providerArn">> => string()
%% }
-type metric_source() :: #{binary() => any()}.

%% Example:
%% get_e_c_s_service_recommendation_projected_metrics_response() :: #{
%%   <<"recommendedOptionProjectedMetrics">> => list(e_c_s_service_recommended_option_projected_metric()())
%% }
-type get_e_c_s_service_recommendation_projected_metrics_response() :: #{binary() => any()}.

%% Example:
%% lambda_savings_opportunity_after_discounts() :: #{
%%   <<"estimatedMonthlySavings">> => lambda_estimated_monthly_savings(),
%%   <<"savingsOpportunityPercentage">> => float()
%% }
-type lambda_savings_opportunity_after_discounts() :: #{binary() => any()}.

%% Example:
%% export_ebs_volume_recommendations_response() :: #{
%%   <<"jobId">> => string(),
%%   <<"s3Destination">> => s3_destination()
%% }
-type export_ebs_volume_recommendations_response() :: #{binary() => any()}.

%% Example:
%% rds_db_utilization_metric() :: #{
%%   <<"name">> => list(any()),
%%   <<"statistic">> => list(any()),
%%   <<"value">> => float()
%% }
-type rds_db_utilization_metric() :: #{binary() => any()}.

%% Example:
%% put_recommendation_preferences_request() :: #{
%%   <<"enhancedInfrastructureMetrics">> => list(any()),
%%   <<"externalMetricsPreference">> => external_metrics_preference(),
%%   <<"inferredWorkloadTypes">> => list(any()),
%%   <<"lookBackPeriod">> => list(any()),
%%   <<"preferredResources">> => list(preferred_resource()()),
%%   <<"resourceType">> := list(any()),
%%   <<"savingsEstimationMode">> => list(any()),
%%   <<"scope">> => scope(),
%%   <<"utilizationPreferences">> => list(utilization_preference()())
%% }
-type put_recommendation_preferences_request() :: #{binary() => any()}.

%% Example:
%% get_rds_database_recommendations_request() :: #{
%%   <<"accountIds">> => list(string()()),
%%   <<"filters">> => list(rds_db_recommendation_filter()()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"recommendationPreferences">> => recommendation_preferences(),
%%   <<"resourceArns">> => list(string()())
%% }
-type get_rds_database_recommendations_request() :: #{binary() => any()}.

%% Example:
%% invalid_parameter_value_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_parameter_value_exception() :: #{binary() => any()}.

%% Example:
%% export_idle_recommendations_request() :: #{
%%   <<"accountIds">> => list(string()()),
%%   <<"fieldsToExport">> => list(list(any())()),
%%   <<"fileFormat">> => list(any()),
%%   <<"filters">> => list(idle_recommendation_filter()()),
%%   <<"includeMemberAccounts">> => boolean(),
%%   <<"s3DestinationConfig">> := s3_destination_config()
%% }
-type export_idle_recommendations_request() :: #{binary() => any()}.

%% Example:
%% license_recommendation_option() :: #{
%%   <<"licenseEdition">> => list(any()),
%%   <<"licenseModel">> => list(any()),
%%   <<"operatingSystem">> => string(),
%%   <<"rank">> => integer(),
%%   <<"savingsOpportunity">> => savings_opportunity()
%% }
-type license_recommendation_option() :: #{binary() => any()}.

%% Example:
%% idle_savings_opportunity() :: #{
%%   <<"estimatedMonthlySavings">> => idle_estimated_monthly_savings(),
%%   <<"savingsOpportunityPercentage">> => float()
%% }
-type idle_savings_opportunity() :: #{binary() => any()}.

%% Example:
%% volume_recommendation() :: #{
%%   <<"accountId">> => string(),
%%   <<"currentConfiguration">> => volume_configuration(),
%%   <<"currentPerformanceRisk">> => list(any()),
%%   <<"effectiveRecommendationPreferences">> => ebs_effective_recommendation_preferences(),
%%   <<"finding">> => list(any()),
%%   <<"lastRefreshTimestamp">> => non_neg_integer(),
%%   <<"lookBackPeriodInDays">> => float(),
%%   <<"tags">> => list(tag()()),
%%   <<"utilizationMetrics">> => list(ebs_utilization_metric()()),
%%   <<"volumeArn">> => string(),
%%   <<"volumeRecommendationOptions">> => list(volume_recommendation_option()())
%% }
-type volume_recommendation() :: #{binary() => any()}.

%% Example:
%% export_license_recommendations_request() :: #{
%%   <<"accountIds">> => list(string()()),
%%   <<"fieldsToExport">> => list(list(any())()),
%%   <<"fileFormat">> => list(any()),
%%   <<"filters">> => list(license_recommendation_filter()()),
%%   <<"includeMemberAccounts">> => boolean(),
%%   <<"s3DestinationConfig">> := s3_destination_config()
%% }
-type export_license_recommendations_request() :: #{binary() => any()}.

%% Example:
%% e_c_s_service_utilization_metric() :: #{
%%   <<"name">> => list(any()),
%%   <<"statistic">> => list(any()),
%%   <<"value">> => float()
%% }
-type e_c_s_service_utilization_metric() :: #{binary() => any()}.

%% Example:
%% instance_estimated_monthly_savings() :: #{
%%   <<"currency">> => list(any()),
%%   <<"value">> => float()
%% }
-type instance_estimated_monthly_savings() :: #{binary() => any()}.

%% Example:
%% get_recommendation_preferences_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"resourceType">> := list(any()),
%%   <<"scope">> => scope()
%% }
-type get_recommendation_preferences_request() :: #{binary() => any()}.

%% Example:
%% gpu() :: #{
%%   <<"gpuCount">> => integer(),
%%   <<"gpuMemorySizeInMiB">> => integer()
%% }
-type gpu() :: #{binary() => any()}.

%% Example:
%% get_ebs_volume_recommendations_request() :: #{
%%   <<"accountIds">> => list(string()()),
%%   <<"filters">> => list(ebs_filter()()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"volumeArns">> => list(string()())
%% }
-type get_ebs_volume_recommendations_request() :: #{binary() => any()}.

%% Example:
%% instance_savings_opportunity_after_discounts() :: #{
%%   <<"estimatedMonthlySavings">> => instance_estimated_monthly_savings(),
%%   <<"savingsOpportunityPercentage">> => float()
%% }
-type instance_savings_opportunity_after_discounts() :: #{binary() => any()}.

%% Example:
%% export_auto_scaling_group_recommendations_request() :: #{
%%   <<"accountIds">> => list(string()()),
%%   <<"fieldsToExport">> => list(list(any())()),
%%   <<"fileFormat">> => list(any()),
%%   <<"filters">> => list(filter()()),
%%   <<"includeMemberAccounts">> => boolean(),
%%   <<"recommendationPreferences">> => recommendation_preferences(),
%%   <<"s3DestinationConfig">> := s3_destination_config()
%% }
-type export_auto_scaling_group_recommendations_request() :: #{binary() => any()}.

%% Example:
%% get_e_c_s_service_recommendations_request() :: #{
%%   <<"accountIds">> => list(string()()),
%%   <<"filters">> => list(e_c_s_service_recommendation_filter()()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"serviceArns">> => list(string()())
%% }
-type get_e_c_s_service_recommendations_request() :: #{binary() => any()}.

%% Example:
%% utilization_preference() :: #{
%%   <<"metricName">> => list(any()),
%%   <<"metricParameters">> => customizable_metric_parameters()
%% }
-type utilization_preference() :: #{binary() => any()}.

%% Example:
%% service_unavailable_exception() :: #{
%%   <<"message">> => string()
%% }
-type service_unavailable_exception() :: #{binary() => any()}.

%% Example:
%% export_lambda_function_recommendations_response() :: #{
%%   <<"jobId">> => string(),
%%   <<"s3Destination">> => s3_destination()
%% }
-type export_lambda_function_recommendations_response() :: #{binary() => any()}.

%% Example:
%% instance_recommendation() :: #{
%%   <<"accountId">> => string(),
%%   <<"currentInstanceGpuInfo">> => gpu_info(),
%%   <<"currentInstanceType">> => string(),
%%   <<"currentPerformanceRisk">> => list(any()),
%%   <<"effectiveRecommendationPreferences">> => effective_recommendation_preferences(),
%%   <<"externalMetricStatus">> => external_metric_status(),
%%   <<"finding">> => list(any()),
%%   <<"findingReasonCodes">> => list(list(any())()),
%%   <<"idle">> => list(any()),
%%   <<"inferredWorkloadTypes">> => list(list(any())()),
%%   <<"instanceArn">> => string(),
%%   <<"instanceName">> => string(),
%%   <<"instanceState">> => list(any()),
%%   <<"lastRefreshTimestamp">> => non_neg_integer(),
%%   <<"lookBackPeriodInDays">> => float(),
%%   <<"recommendationOptions">> => list(instance_recommendation_option()()),
%%   <<"recommendationSources">> => list(recommendation_source()()),
%%   <<"tags">> => list(tag()()),
%%   <<"utilizationMetrics">> => list(utilization_metric()())
%% }
-type instance_recommendation() :: #{binary() => any()}.

%% Example:
%% container_configuration() :: #{
%%   <<"containerName">> => string(),
%%   <<"cpu">> => integer(),
%%   <<"memorySizeConfiguration">> => memory_size_configuration()
%% }
-type container_configuration() :: #{binary() => any()}.

%% Example:
%% export_rds_database_recommendations_response() :: #{
%%   <<"jobId">> => string(),
%%   <<"s3Destination">> => s3_destination()
%% }
-type export_rds_database_recommendations_response() :: #{binary() => any()}.

%% Example:
%% filter() :: #{
%%   <<"name">> => list(any()),
%%   <<"values">> => list(string()())
%% }
-type filter() :: #{binary() => any()}.

%% Example:
%% s3_destination() :: #{
%%   <<"bucket">> => string(),
%%   <<"key">> => string(),
%%   <<"metadataKey">> => string()
%% }
-type s3_destination() :: #{binary() => any()}.

%% Example:
%% get_recommendation_error() :: #{
%%   <<"code">> => string(),
%%   <<"identifier">> => string(),
%%   <<"message">> => string()
%% }
-type get_recommendation_error() :: #{binary() => any()}.

%% Example:
%% delete_recommendation_preferences_response() :: #{

%% }
-type delete_recommendation_preferences_response() :: #{binary() => any()}.

%% Example:
%% savings_opportunity() :: #{
%%   <<"estimatedMonthlySavings">> => estimated_monthly_savings(),
%%   <<"savingsOpportunityPercentage">> => float()
%% }
-type savings_opportunity() :: #{binary() => any()}.

%% Example:
%% memory_size_configuration() :: #{
%%   <<"memory">> => integer(),
%%   <<"memoryReservation">> => integer()
%% }
-type memory_size_configuration() :: #{binary() => any()}.

%% Example:
%% get_effective_recommendation_preferences_request() :: #{
%%   <<"resourceArn">> := string()
%% }
-type get_effective_recommendation_preferences_request() :: #{binary() => any()}.

%% Example:
%% auto_scaling_group_recommendation() :: #{
%%   <<"accountId">> => string(),
%%   <<"autoScalingGroupArn">> => string(),
%%   <<"autoScalingGroupName">> => string(),
%%   <<"currentConfiguration">> => auto_scaling_group_configuration(),
%%   <<"currentInstanceGpuInfo">> => gpu_info(),
%%   <<"currentPerformanceRisk">> => list(any()),
%%   <<"effectiveRecommendationPreferences">> => effective_recommendation_preferences(),
%%   <<"finding">> => list(any()),
%%   <<"inferredWorkloadTypes">> => list(list(any())()),
%%   <<"lastRefreshTimestamp">> => non_neg_integer(),
%%   <<"lookBackPeriodInDays">> => float(),
%%   <<"recommendationOptions">> => list(auto_scaling_group_recommendation_option()()),
%%   <<"utilizationMetrics">> => list(utilization_metric()())
%% }
-type auto_scaling_group_recommendation() :: #{binary() => any()}.

%% Example:
%% license_recommendation() :: #{
%%   <<"accountId">> => string(),
%%   <<"currentLicenseConfiguration">> => license_configuration(),
%%   <<"finding">> => list(any()),
%%   <<"findingReasonCodes">> => list(list(any())()),
%%   <<"lastRefreshTimestamp">> => non_neg_integer(),
%%   <<"licenseRecommendationOptions">> => list(license_recommendation_option()()),
%%   <<"lookbackPeriodInDays">> => float(),
%%   <<"resourceArn">> => string(),
%%   <<"tags">> => list(tag()())
%% }
-type license_recommendation() :: #{binary() => any()}.

%% Example:
%% estimated_monthly_savings() :: #{
%%   <<"currency">> => list(any()),
%%   <<"value">> => float()
%% }
-type estimated_monthly_savings() :: #{binary() => any()}.

%% Example:
%% get_ec2_instance_recommendations_request() :: #{
%%   <<"accountIds">> => list(string()()),
%%   <<"filters">> => list(filter()()),
%%   <<"instanceArns">> => list(string()()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"recommendationPreferences">> => recommendation_preferences()
%% }
-type get_ec2_instance_recommendations_request() :: #{binary() => any()}.

%% Example:
%% e_c_s_savings_opportunity_after_discounts() :: #{
%%   <<"estimatedMonthlySavings">> => e_c_s_estimated_monthly_savings(),
%%   <<"savingsOpportunityPercentage">> => float()
%% }
-type e_c_s_savings_opportunity_after_discounts() :: #{binary() => any()}.

%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => string()
%% }
-type internal_server_exception() :: #{binary() => any()}.

%% Example:
%% scope() :: #{
%%   <<"name">> => list(any()),
%%   <<"value">> => string()
%% }
-type scope() :: #{binary() => any()}.

%% Example:
%% recommendation_source() :: #{
%%   <<"recommendationSourceArn">> => string(),
%%   <<"recommendationSourceType">> => list(any())
%% }
-type recommendation_source() :: #{binary() => any()}.

%% Example:
%% rds_db_storage_recommendation_option() :: #{
%%   <<"rank">> => integer(),
%%   <<"savingsOpportunity">> => savings_opportunity(),
%%   <<"savingsOpportunityAfterDiscounts">> => rds_storage_savings_opportunity_after_discounts(),
%%   <<"storageConfiguration">> => db_storage_configuration()
%% }
-type rds_db_storage_recommendation_option() :: #{binary() => any()}.

%% Example:
%% get_idle_recommendations_request() :: #{
%%   <<"accountIds">> => list(string()()),
%%   <<"filters">> => list(idle_recommendation_filter()()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"orderBy">> => order_by(),
%%   <<"resourceArns">> => list(string()())
%% }
-type get_idle_recommendations_request() :: #{binary() => any()}.

%% Example:
%% get_auto_scaling_group_recommendations_request() :: #{
%%   <<"accountIds">> => list(string()()),
%%   <<"autoScalingGroupArns">> => list(string()()),
%%   <<"filters">> => list(filter()()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"recommendationPreferences">> => recommendation_preferences()
%% }
-type get_auto_scaling_group_recommendations_request() :: #{binary() => any()}.

%% Example:
%% utilization_metric() :: #{
%%   <<"name">> => list(any()),
%%   <<"statistic">> => list(any()),
%%   <<"value">> => float()
%% }
-type utilization_metric() :: #{binary() => any()}.

%% Example:
%% instance_recommendation_option() :: #{
%%   <<"instanceGpuInfo">> => gpu_info(),
%%   <<"instanceType">> => string(),
%%   <<"migrationEffort">> => list(any()),
%%   <<"performanceRisk">> => float(),
%%   <<"platformDifferences">> => list(list(any())()),
%%   <<"projectedUtilizationMetrics">> => list(utilization_metric()()),
%%   <<"rank">> => integer(),
%%   <<"savingsOpportunity">> => savings_opportunity(),
%%   <<"savingsOpportunityAfterDiscounts">> => instance_savings_opportunity_after_discounts()
%% }
-type instance_recommendation_option() :: #{binary() => any()}.

%% Example:
%% volume_recommendation_option() :: #{
%%   <<"configuration">> => volume_configuration(),
%%   <<"performanceRisk">> => float(),
%%   <<"rank">> => integer(),
%%   <<"savingsOpportunity">> => savings_opportunity(),
%%   <<"savingsOpportunityAfterDiscounts">> => ebs_savings_opportunity_after_discounts()
%% }
-type volume_recommendation_option() :: #{binary() => any()}.

%% Example:
%% e_c_s_service_projected_metric() :: #{
%%   <<"lowerBoundValues">> => list(float()()),
%%   <<"name">> => list(any()),
%%   <<"timestamps">> => list(non_neg_integer()()),
%%   <<"upperBoundValues">> => list(float()())
%% }
-type e_c_s_service_projected_metric() :: #{binary() => any()}.

%% Example:
%% enrollment_filter() :: #{
%%   <<"name">> => list(any()),
%%   <<"values">> => list(string()())
%% }
-type enrollment_filter() :: #{binary() => any()}.

%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% e_c_s_service_recommendation_filter() :: #{
%%   <<"name">> => list(any()),
%%   <<"values">> => list(string()())
%% }
-type e_c_s_service_recommendation_filter() :: #{binary() => any()}.

%% Example:
%% get_license_recommendations_response() :: #{
%%   <<"errors">> => list(get_recommendation_error()()),
%%   <<"licenseRecommendations">> => list(license_recommendation()()),
%%   <<"nextToken">> => string()
%% }
-type get_license_recommendations_response() :: #{binary() => any()}.

%% Example:
%% license_recommendation_filter() :: #{
%%   <<"name">> => list(any()),
%%   <<"values">> => list(string()())
%% }
-type license_recommendation_filter() :: #{binary() => any()}.

%% Example:
%% e_c_s_service_recommended_option_projected_metric() :: #{
%%   <<"projectedMetrics">> => list(e_c_s_service_projected_metric()()),
%%   <<"recommendedCpuUnits">> => integer(),
%%   <<"recommendedMemorySize">> => integer()
%% }
-type e_c_s_service_recommended_option_projected_metric() :: #{binary() => any()}.

%% Example:
%% rds_database_recommended_option_projected_metric() :: #{
%%   <<"projectedMetrics">> => list(rds_database_projected_metric()()),
%%   <<"rank">> => integer(),
%%   <<"recommendedDBInstanceClass">> => string()
%% }
-type rds_database_recommended_option_projected_metric() :: #{binary() => any()}.

%% Example:
%% ebs_estimated_monthly_savings() :: #{
%%   <<"currency">> => list(any()),
%%   <<"value">> => float()
%% }
-type ebs_estimated_monthly_savings() :: #{binary() => any()}.

%% Example:
%% external_metrics_preference() :: #{
%%   <<"source">> => list(any())
%% }
-type external_metrics_preference() :: #{binary() => any()}.

%% Example:
%% export_ebs_volume_recommendations_request() :: #{
%%   <<"accountIds">> => list(string()()),
%%   <<"fieldsToExport">> => list(list(any())()),
%%   <<"fileFormat">> => list(any()),
%%   <<"filters">> => list(ebs_filter()()),
%%   <<"includeMemberAccounts">> => boolean(),
%%   <<"s3DestinationConfig">> := s3_destination_config()
%% }
-type export_ebs_volume_recommendations_request() :: #{binary() => any()}.

%% Example:
%% export_idle_recommendations_response() :: #{
%%   <<"jobId">> => string(),
%%   <<"s3Destination">> => s3_destination()
%% }
-type export_idle_recommendations_response() :: #{binary() => any()}.

%% Example:
%% get_auto_scaling_group_recommendations_response() :: #{
%%   <<"autoScalingGroupRecommendations">> => list(auto_scaling_group_recommendation()()),
%%   <<"errors">> => list(get_recommendation_error()()),
%%   <<"nextToken">> => string()
%% }
-type get_auto_scaling_group_recommendations_response() :: #{binary() => any()}.

%% Example:
%% rds_instance_savings_opportunity_after_discounts() :: #{
%%   <<"estimatedMonthlySavings">> => rds_instance_estimated_monthly_savings(),
%%   <<"savingsOpportunityPercentage">> => float()
%% }
-type rds_instance_savings_opportunity_after_discounts() :: #{binary() => any()}.

%% Example:
%% e_c_s_savings_estimation_mode() :: #{
%%   <<"source">> => list(any())
%% }
-type e_c_s_savings_estimation_mode() :: #{binary() => any()}.

%% Example:
%% get_ec2_recommendation_projected_metrics_request() :: #{
%%   <<"endTime">> := non_neg_integer(),
%%   <<"instanceArn">> := string(),
%%   <<"period">> := integer(),
%%   <<"recommendationPreferences">> => recommendation_preferences(),
%%   <<"startTime">> := non_neg_integer(),
%%   <<"stat">> := list(any())
%% }
-type get_ec2_recommendation_projected_metrics_request() :: #{binary() => any()}.

%% Example:
%% effective_preferred_resource() :: #{
%%   <<"effectiveIncludeList">> => list(string()()),
%%   <<"excludeList">> => list(string()()),
%%   <<"includeList">> => list(string()()),
%%   <<"name">> => list(any())
%% }
-type effective_preferred_resource() :: #{binary() => any()}.

%% Example:
%% e_c_s_effective_recommendation_preferences() :: #{
%%   <<"savingsEstimationMode">> => e_c_s_savings_estimation_mode()
%% }
-type e_c_s_effective_recommendation_preferences() :: #{binary() => any()}.

%% Example:
%% reason_code_summary() :: #{
%%   <<"name">> => list(any()),
%%   <<"value">> => float()
%% }
-type reason_code_summary() :: #{binary() => any()}.

%% Example:
%% get_enrollment_status_response() :: #{
%%   <<"lastUpdatedTimestamp">> => non_neg_integer(),
%%   <<"memberAccountsEnrolled">> => boolean(),
%%   <<"numberOfMemberAccountsOptedIn">> => integer(),
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => string()
%% }
-type get_enrollment_status_response() :: #{binary() => any()}.

%% Example:
%% ebs_savings_opportunity_after_discounts() :: #{
%%   <<"estimatedMonthlySavings">> => ebs_estimated_monthly_savings(),
%%   <<"savingsOpportunityPercentage">> => float()
%% }
-type ebs_savings_opportunity_after_discounts() :: #{binary() => any()}.

%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.

%% Example:
%% export_e_c_s_service_recommendations_response() :: #{
%%   <<"jobId">> => string(),
%%   <<"s3Destination">> => s3_destination()
%% }
-type export_e_c_s_service_recommendations_response() :: #{binary() => any()}.

%% Example:
%% projected_metric() :: #{
%%   <<"name">> => list(any()),
%%   <<"timestamps">> => list(non_neg_integer()()),
%%   <<"values">> => list(float()())
%% }
-type projected_metric() :: #{binary() => any()}.

%% Example:
%% rds_storage_savings_opportunity_after_discounts() :: #{
%%   <<"estimatedMonthlySavings">> => rds_storage_estimated_monthly_savings(),
%%   <<"savingsOpportunityPercentage">> => float()
%% }
-type rds_storage_savings_opportunity_after_discounts() :: #{binary() => any()}.

%% Example:
%% export_license_recommendations_response() :: #{
%%   <<"jobId">> => string(),
%%   <<"s3Destination">> => s3_destination()
%% }
-type export_license_recommendations_response() :: #{binary() => any()}.

%% Example:
%% limit_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% e_c_s_service_projected_utilization_metric() :: #{
%%   <<"lowerBoundValue">> => float(),
%%   <<"name">> => list(any()),
%%   <<"statistic">> => list(any()),
%%   <<"upperBoundValue">> => float()
%% }
-type e_c_s_service_projected_utilization_metric() :: #{binary() => any()}.

%% Example:
%% effective_recommendation_preferences() :: #{
%%   <<"cpuVendorArchitectures">> => list(list(any())()),
%%   <<"enhancedInfrastructureMetrics">> => list(any()),
%%   <<"externalMetricsPreference">> => external_metrics_preference(),
%%   <<"inferredWorkloadTypes">> => list(any()),
%%   <<"lookBackPeriod">> => list(any()),
%%   <<"preferredResources">> => list(effective_preferred_resource()()),
%%   <<"savingsEstimationMode">> => instance_savings_estimation_mode(),
%%   <<"utilizationPreferences">> => list(utilization_preference()())
%% }
-type effective_recommendation_preferences() :: #{binary() => any()}.

%% Example:
%% e_c_s_service_recommendation() :: #{
%%   <<"accountId">> => string(),
%%   <<"currentPerformanceRisk">> => list(any()),
%%   <<"currentServiceConfiguration">> => service_configuration(),
%%   <<"effectiveRecommendationPreferences">> => e_c_s_effective_recommendation_preferences(),
%%   <<"finding">> => list(any()),
%%   <<"findingReasonCodes">> => list(list(any())()),
%%   <<"lastRefreshTimestamp">> => non_neg_integer(),
%%   <<"launchType">> => list(any()),
%%   <<"lookbackPeriodInDays">> => float(),
%%   <<"serviceArn">> => string(),
%%   <<"serviceRecommendationOptions">> => list(e_c_s_service_recommendation_option()()),
%%   <<"tags">> => list(tag()()),
%%   <<"utilizationMetrics">> => list(e_c_s_service_utilization_metric()())
%% }
-type e_c_s_service_recommendation() :: #{binary() => any()}.

%% Example:
%% get_lambda_function_recommendations_response() :: #{
%%   <<"lambdaFunctionRecommendations">> => list(lambda_function_recommendation()()),
%%   <<"nextToken">> => string()
%% }
-type get_lambda_function_recommendations_response() :: #{binary() => any()}.

%% Example:
%% volume_configuration() :: #{
%%   <<"rootVolume">> => boolean(),
%%   <<"volumeBaselineIOPS">> => integer(),
%%   <<"volumeBaselineThroughput">> => integer(),
%%   <<"volumeBurstIOPS">> => integer(),
%%   <<"volumeBurstThroughput">> => integer(),
%%   <<"volumeSize">> => integer(),
%%   <<"volumeType">> => string()
%% }
-type volume_configuration() :: #{binary() => any()}.

%% Example:
%% recommendation_summary() :: #{
%%   <<"accountId">> => string(),
%%   <<"aggregatedSavingsOpportunity">> => savings_opportunity(),
%%   <<"currentPerformanceRiskRatings">> => current_performance_risk_ratings(),
%%   <<"idleSavingsOpportunity">> => savings_opportunity(),
%%   <<"idleSummaries">> => list(idle_summary()()),
%%   <<"inferredWorkloadSavings">> => list(inferred_workload_saving()()),
%%   <<"recommendationResourceType">> => list(any()),
%%   <<"savingsOpportunity">> => savings_opportunity(),
%%   <<"summaries">> => list(summary()())
%% }
-type recommendation_summary() :: #{binary() => any()}.

%% Example:
%% auto_scaling_group_configuration() :: #{
%%   <<"desiredCapacity">> => integer(),
%%   <<"instanceType">> => string(),
%%   <<"maxSize">> => integer(),
%%   <<"minSize">> => integer()
%% }
-type auto_scaling_group_configuration() :: #{binary() => any()}.

%% Example:
%% auto_scaling_group_recommendation_option() :: #{
%%   <<"configuration">> => auto_scaling_group_configuration(),
%%   <<"instanceGpuInfo">> => gpu_info(),
%%   <<"migrationEffort">> => list(any()),
%%   <<"performanceRisk">> => float(),
%%   <<"projectedUtilizationMetrics">> => list(utilization_metric()()),
%%   <<"rank">> => integer(),
%%   <<"savingsOpportunity">> => savings_opportunity(),
%%   <<"savingsOpportunityAfterDiscounts">> => auto_scaling_group_savings_opportunity_after_discounts()
%% }
-type auto_scaling_group_recommendation_option() :: #{binary() => any()}.

%% Example:
%% lambda_function_recommendation_filter() :: #{
%%   <<"name">> => list(any()),
%%   <<"values">> => list(string()())
%% }
-type lambda_function_recommendation_filter() :: #{binary() => any()}.

%% Example:
%% inferred_workload_saving() :: #{
%%   <<"estimatedMonthlySavings">> => estimated_monthly_savings(),
%%   <<"inferredWorkloadTypes">> => list(list(any())())
%% }
-type inferred_workload_saving() :: #{binary() => any()}.

%% Example:
%% rds_db_instance_recommendation_option() :: #{
%%   <<"dbInstanceClass">> => string(),
%%   <<"performanceRisk">> => float(),
%%   <<"projectedUtilizationMetrics">> => list(rds_db_utilization_metric()()),
%%   <<"rank">> => integer(),
%%   <<"savingsOpportunity">> => savings_opportunity(),
%%   <<"savingsOpportunityAfterDiscounts">> => rds_instance_savings_opportunity_after_discounts()
%% }
-type rds_db_instance_recommendation_option() :: #{binary() => any()}.

%% Example:
%% lambda_function_utilization_metric() :: #{
%%   <<"name">> => list(any()),
%%   <<"statistic">> => list(any()),
%%   <<"value">> => float()
%% }
-type lambda_function_utilization_metric() :: #{binary() => any()}.

%% Example:
%% rds_db_recommendation_filter() :: #{
%%   <<"name">> => list(any()),
%%   <<"values">> => list(string()())
%% }
-type rds_db_recommendation_filter() :: #{binary() => any()}.

%% Example:
%% export_rds_database_recommendations_request() :: #{
%%   <<"accountIds">> => list(string()()),
%%   <<"fieldsToExport">> => list(list(any())()),
%%   <<"fileFormat">> => list(any()),
%%   <<"filters">> => list(rds_db_recommendation_filter()()),
%%   <<"includeMemberAccounts">> => boolean(),
%%   <<"recommendationPreferences">> => recommendation_preferences(),
%%   <<"s3DestinationConfig">> := s3_destination_config()
%% }
-type export_rds_database_recommendations_request() :: #{binary() => any()}.

%% Example:
%% ebs_filter() :: #{
%%   <<"name">> => list(any()),
%%   <<"values">> => list(string()())
%% }
-type ebs_filter() :: #{binary() => any()}.

%% Example:
%% lambda_savings_estimation_mode() :: #{
%%   <<"source">> => list(any())
%% }
-type lambda_savings_estimation_mode() :: #{binary() => any()}.

%% Example:
%% export_auto_scaling_group_recommendations_response() :: #{
%%   <<"jobId">> => string(),
%%   <<"s3Destination">> => s3_destination()
%% }
-type export_auto_scaling_group_recommendations_response() :: #{binary() => any()}.

%% Example:
%% export_destination() :: #{
%%   <<"s3">> => s3_destination()
%% }
-type export_destination() :: #{binary() => any()}.

%% Example:
%% recommendation_preferences() :: #{
%%   <<"cpuVendorArchitectures">> => list(list(any())())
%% }
-type recommendation_preferences() :: #{binary() => any()}.

%% Example:
%% recommended_option_projected_metric() :: #{
%%   <<"projectedMetrics">> => list(projected_metric()()),
%%   <<"rank">> => integer(),
%%   <<"recommendedInstanceType">> => string()
%% }
-type recommended_option_projected_metric() :: #{binary() => any()}.

%% Example:
%% export_ec2_instance_recommendations_response() :: #{
%%   <<"jobId">> => string(),
%%   <<"s3Destination">> => s3_destination()
%% }
-type export_ec2_instance_recommendations_response() :: #{binary() => any()}.

%% Example:
%% recommendation_export_job() :: #{
%%   <<"creationTimestamp">> => non_neg_integer(),
%%   <<"destination">> => export_destination(),
%%   <<"failureReason">> => string(),
%%   <<"jobId">> => string(),
%%   <<"lastUpdatedTimestamp">> => non_neg_integer(),
%%   <<"resourceType">> => list(any()),
%%   <<"status">> => list(any())
%% }
-type recommendation_export_job() :: #{binary() => any()}.

%% Example:
%% s3_destination_config() :: #{
%%   <<"bucket">> => string(),
%%   <<"keyPrefix">> => string()
%% }
-type s3_destination_config() :: #{binary() => any()}.

%% Example:
%% summary() :: #{
%%   <<"name">> => list(any()),
%%   <<"reasonCodeSummaries">> => list(reason_code_summary()()),
%%   <<"value">> => float()
%% }
-type summary() :: #{binary() => any()}.

%% Example:
%% get_rds_database_recommendation_projected_metrics_response() :: #{
%%   <<"recommendedOptionProjectedMetrics">> => list(rds_database_recommended_option_projected_metric()())
%% }
-type get_rds_database_recommendation_projected_metrics_response() :: #{binary() => any()}.

%% Example:
%% export_ec2_instance_recommendations_request() :: #{
%%   <<"accountIds">> => list(string()()),
%%   <<"fieldsToExport">> => list(list(any())()),
%%   <<"fileFormat">> => list(any()),
%%   <<"filters">> => list(filter()()),
%%   <<"includeMemberAccounts">> => boolean(),
%%   <<"recommendationPreferences">> => recommendation_preferences(),
%%   <<"s3DestinationConfig">> := s3_destination_config()
%% }
-type export_ec2_instance_recommendations_request() :: #{binary() => any()}.

%% Example:
%% get_rds_database_recommendation_projected_metrics_request() :: #{
%%   <<"endTime">> := non_neg_integer(),
%%   <<"period">> := integer(),
%%   <<"recommendationPreferences">> => recommendation_preferences(),
%%   <<"resourceArn">> := string(),
%%   <<"startTime">> := non_neg_integer(),
%%   <<"stat">> := list(any())
%% }
-type get_rds_database_recommendation_projected_metrics_request() :: #{binary() => any()}.

%% Example:
%% idle_recommendation_error() :: #{
%%   <<"code">> => string(),
%%   <<"identifier">> => string(),
%%   <<"message">> => string(),
%%   <<"resourceType">> => list(any())
%% }
-type idle_recommendation_error() :: #{binary() => any()}.

%% Example:
%% preferred_resource() :: #{
%%   <<"excludeList">> => list(string()()),
%%   <<"includeList">> => list(string()()),
%%   <<"name">> => list(any())
%% }
-type preferred_resource() :: #{binary() => any()}.

%% Example:
%% service_configuration() :: #{
%%   <<"autoScalingConfiguration">> => list(any()),
%%   <<"containerConfigurations">> => list(container_configuration()()),
%%   <<"cpu">> => integer(),
%%   <<"memory">> => integer(),
%%   <<"taskDefinitionArn">> => string()
%% }
-type service_configuration() :: #{binary() => any()}.

%% Example:
%% get_rds_database_recommendations_response() :: #{
%%   <<"errors">> => list(get_recommendation_error()()),
%%   <<"nextToken">> => string(),
%%   <<"rdsDBRecommendations">> => list(rds_db_recommendation()())
%% }
-type get_rds_database_recommendations_response() :: #{binary() => any()}.

%% Example:
%% gpu_info() :: #{
%%   <<"gpus">> => list(gpu()())
%% }
-type gpu_info() :: #{binary() => any()}.

-type delete_recommendation_preferences_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    opt_in_required_exception() | 
    resource_not_found_exception() | 
    missing_authentication_token().

-type describe_recommendation_export_jobs_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    opt_in_required_exception() | 
    resource_not_found_exception() | 
    missing_authentication_token().

-type export_auto_scaling_group_recommendations_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    opt_in_required_exception() | 
    missing_authentication_token().

-type export_e_c_s_service_recommendations_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    opt_in_required_exception() | 
    missing_authentication_token().

-type export_ebs_volume_recommendations_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    opt_in_required_exception() | 
    missing_authentication_token().

-type export_ec2_instance_recommendations_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    opt_in_required_exception() | 
    missing_authentication_token().

-type export_idle_recommendations_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    opt_in_required_exception() | 
    missing_authentication_token().

-type export_lambda_function_recommendations_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    opt_in_required_exception() | 
    missing_authentication_token().

-type export_license_recommendations_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    opt_in_required_exception() | 
    missing_authentication_token().

-type export_rds_database_recommendations_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    opt_in_required_exception() | 
    missing_authentication_token().

-type get_auto_scaling_group_recommendations_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    opt_in_required_exception() | 
    resource_not_found_exception() | 
    missing_authentication_token().

-type get_e_c_s_service_recommendation_projected_metrics_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    opt_in_required_exception() | 
    resource_not_found_exception() | 
    missing_authentication_token().

-type get_e_c_s_service_recommendations_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    opt_in_required_exception() | 
    resource_not_found_exception() | 
    missing_authentication_token().

-type get_ebs_volume_recommendations_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    opt_in_required_exception() | 
    resource_not_found_exception() | 
    missing_authentication_token().

-type get_ec2_instance_recommendations_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    opt_in_required_exception() | 
    resource_not_found_exception() | 
    missing_authentication_token().

-type get_ec2_recommendation_projected_metrics_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    opt_in_required_exception() | 
    resource_not_found_exception() | 
    missing_authentication_token().

-type get_effective_recommendation_preferences_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    opt_in_required_exception() | 
    resource_not_found_exception() | 
    missing_authentication_token().

-type get_enrollment_status_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    missing_authentication_token().

-type get_enrollment_statuses_for_organization_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    missing_authentication_token().

-type get_idle_recommendations_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    opt_in_required_exception() | 
    resource_not_found_exception() | 
    missing_authentication_token().

-type get_lambda_function_recommendations_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    opt_in_required_exception() | 
    missing_authentication_token().

-type get_license_recommendations_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    opt_in_required_exception() | 
    resource_not_found_exception() | 
    missing_authentication_token().

-type get_rds_database_recommendation_projected_metrics_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    opt_in_required_exception() | 
    resource_not_found_exception() | 
    missing_authentication_token().

-type get_rds_database_recommendations_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    opt_in_required_exception() | 
    resource_not_found_exception() | 
    missing_authentication_token().

-type get_recommendation_preferences_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    opt_in_required_exception() | 
    resource_not_found_exception() | 
    missing_authentication_token().

-type get_recommendation_summaries_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    opt_in_required_exception() | 
    missing_authentication_token().

-type put_recommendation_preferences_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    opt_in_required_exception() | 
    resource_not_found_exception() | 
    missing_authentication_token().

-type update_enrollment_status_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    missing_authentication_token().

%%====================================================================
%% API
%%====================================================================

%% @doc Deletes a recommendation preference, such as enhanced infrastructure
%% metrics.
%%
%% For more information, see Activating
%% enhanced infrastructure metrics:
%% https://docs.aws.amazon.com/compute-optimizer/latest/ug/enhanced-infrastructure-metrics.html
%% in the Compute Optimizer User
%% Guide.
-spec delete_recommendation_preferences(aws_client:aws_client(), delete_recommendation_preferences_request()) ->
    {ok, delete_recommendation_preferences_response(), tuple()} |
    {error, any()} |
    {error, delete_recommendation_preferences_errors(), tuple()}.
delete_recommendation_preferences(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_recommendation_preferences(Client, Input, []).

-spec delete_recommendation_preferences(aws_client:aws_client(), delete_recommendation_preferences_request(), proplists:proplist()) ->
    {ok, delete_recommendation_preferences_response(), tuple()} |
    {error, any()} |
    {error, delete_recommendation_preferences_errors(), tuple()}.
delete_recommendation_preferences(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteRecommendationPreferences">>, Input, Options).

%% @doc Describes recommendation export jobs created in the last seven days.
%%
%% Use the `ExportAutoScalingGroupRecommendations' or
%% `ExportEC2InstanceRecommendations' actions to request an export of
%% your
%% recommendations. Then use the `DescribeRecommendationExportJobs'
%% action
%% to view your export jobs.
-spec describe_recommendation_export_jobs(aws_client:aws_client(), describe_recommendation_export_jobs_request()) ->
    {ok, describe_recommendation_export_jobs_response(), tuple()} |
    {error, any()} |
    {error, describe_recommendation_export_jobs_errors(), tuple()}.
describe_recommendation_export_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_recommendation_export_jobs(Client, Input, []).

-spec describe_recommendation_export_jobs(aws_client:aws_client(), describe_recommendation_export_jobs_request(), proplists:proplist()) ->
    {ok, describe_recommendation_export_jobs_response(), tuple()} |
    {error, any()} |
    {error, describe_recommendation_export_jobs_errors(), tuple()}.
describe_recommendation_export_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeRecommendationExportJobs">>, Input, Options).

%% @doc Exports optimization recommendations for Auto Scaling groups.
%%
%% Recommendations are exported in a comma-separated values (.csv) file, and
%% its metadata
%% in a JavaScript Object Notation (JSON) (.json) file, to an existing Amazon
%% Simple Storage Service (Amazon S3) bucket that you specify. For more
%% information, see Exporting
%% Recommendations:
%% https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html
%% in the Compute Optimizer User
%% Guide.
%%
%% You can have only one Auto Scaling group export job in progress per Amazon
%% Web Services Region.
-spec export_auto_scaling_group_recommendations(aws_client:aws_client(), export_auto_scaling_group_recommendations_request()) ->
    {ok, export_auto_scaling_group_recommendations_response(), tuple()} |
    {error, any()} |
    {error, export_auto_scaling_group_recommendations_errors(), tuple()}.
export_auto_scaling_group_recommendations(Client, Input)
  when is_map(Client), is_map(Input) ->
    export_auto_scaling_group_recommendations(Client, Input, []).

-spec export_auto_scaling_group_recommendations(aws_client:aws_client(), export_auto_scaling_group_recommendations_request(), proplists:proplist()) ->
    {ok, export_auto_scaling_group_recommendations_response(), tuple()} |
    {error, any()} |
    {error, export_auto_scaling_group_recommendations_errors(), tuple()}.
export_auto_scaling_group_recommendations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ExportAutoScalingGroupRecommendations">>, Input, Options).

%% @doc
%% Exports optimization recommendations for Amazon ECS services on Fargate.
%%
%% Recommendations are exported in a CSV file, and its metadata
%% in a JSON file, to an existing Amazon Simple Storage Service (Amazon S3)
%% bucket that you specify. For more information, see Exporting
%% Recommendations:
%% https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html
%% in the Compute Optimizer User
%% Guide.
%%
%% You can only have one Amazon ECS service export job in progress per Amazon
%% Web Services Region.
-spec export_e_c_s_service_recommendations(aws_client:aws_client(), export_e_c_s_service_recommendations_request()) ->
    {ok, export_e_c_s_service_recommendations_response(), tuple()} |
    {error, any()} |
    {error, export_e_c_s_service_recommendations_errors(), tuple()}.
export_e_c_s_service_recommendations(Client, Input)
  when is_map(Client), is_map(Input) ->
    export_e_c_s_service_recommendations(Client, Input, []).

-spec export_e_c_s_service_recommendations(aws_client:aws_client(), export_e_c_s_service_recommendations_request(), proplists:proplist()) ->
    {ok, export_e_c_s_service_recommendations_response(), tuple()} |
    {error, any()} |
    {error, export_e_c_s_service_recommendations_errors(), tuple()}.
export_e_c_s_service_recommendations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ExportECSServiceRecommendations">>, Input, Options).

%% @doc Exports optimization recommendations for Amazon EBS volumes.
%%
%% Recommendations are exported in a comma-separated values (.csv) file, and
%% its metadata
%% in a JavaScript Object Notation (JSON) (.json) file, to an existing Amazon
%% Simple Storage Service (Amazon S3) bucket that you specify. For more
%% information, see Exporting
%% Recommendations:
%% https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html
%% in the Compute Optimizer User
%% Guide.
%%
%% You can have only one Amazon EBS volume export job in progress per Amazon
%% Web Services Region.
-spec export_ebs_volume_recommendations(aws_client:aws_client(), export_ebs_volume_recommendations_request()) ->
    {ok, export_ebs_volume_recommendations_response(), tuple()} |
    {error, any()} |
    {error, export_ebs_volume_recommendations_errors(), tuple()}.
export_ebs_volume_recommendations(Client, Input)
  when is_map(Client), is_map(Input) ->
    export_ebs_volume_recommendations(Client, Input, []).

-spec export_ebs_volume_recommendations(aws_client:aws_client(), export_ebs_volume_recommendations_request(), proplists:proplist()) ->
    {ok, export_ebs_volume_recommendations_response(), tuple()} |
    {error, any()} |
    {error, export_ebs_volume_recommendations_errors(), tuple()}.
export_ebs_volume_recommendations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ExportEBSVolumeRecommendations">>, Input, Options).

%% @doc Exports optimization recommendations for Amazon EC2 instances.
%%
%% Recommendations are exported in a comma-separated values (.csv) file, and
%% its metadata
%% in a JavaScript Object Notation (JSON) (.json) file, to an existing Amazon
%% Simple Storage Service (Amazon S3) bucket that you specify. For more
%% information, see Exporting
%% Recommendations:
%% https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html
%% in the Compute Optimizer User
%% Guide.
%%
%% You can have only one Amazon EC2 instance export job in progress per
%% Amazon Web Services Region.
-spec export_ec2_instance_recommendations(aws_client:aws_client(), export_ec2_instance_recommendations_request()) ->
    {ok, export_ec2_instance_recommendations_response(), tuple()} |
    {error, any()} |
    {error, export_ec2_instance_recommendations_errors(), tuple()}.
export_ec2_instance_recommendations(Client, Input)
  when is_map(Client), is_map(Input) ->
    export_ec2_instance_recommendations(Client, Input, []).

-spec export_ec2_instance_recommendations(aws_client:aws_client(), export_ec2_instance_recommendations_request(), proplists:proplist()) ->
    {ok, export_ec2_instance_recommendations_response(), tuple()} |
    {error, any()} |
    {error, export_ec2_instance_recommendations_errors(), tuple()}.
export_ec2_instance_recommendations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ExportEC2InstanceRecommendations">>, Input, Options).

%% @doc
%% Export optimization recommendations for your idle resources.
%%
%% Recommendations are exported in a comma-separated values (CSV) file, and
%% its metadata
%% in a JavaScript Object Notation (JSON) file, to an existing Amazon Simple
%% Storage Service (Amazon S3) bucket that you specify. For more information,
%% see Exporting
%% Recommendations:
%% https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html
%% in the Compute Optimizer User
%% Guide.
%%
%% You can have only one idle resource export job in progress per Amazon Web
%% Services Region.
-spec export_idle_recommendations(aws_client:aws_client(), export_idle_recommendations_request()) ->
    {ok, export_idle_recommendations_response(), tuple()} |
    {error, any()} |
    {error, export_idle_recommendations_errors(), tuple()}.
export_idle_recommendations(Client, Input)
  when is_map(Client), is_map(Input) ->
    export_idle_recommendations(Client, Input, []).

-spec export_idle_recommendations(aws_client:aws_client(), export_idle_recommendations_request(), proplists:proplist()) ->
    {ok, export_idle_recommendations_response(), tuple()} |
    {error, any()} |
    {error, export_idle_recommendations_errors(), tuple()}.
export_idle_recommendations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ExportIdleRecommendations">>, Input, Options).

%% @doc Exports optimization recommendations for Lambda functions.
%%
%% Recommendations are exported in a comma-separated values (.csv) file, and
%% its metadata
%% in a JavaScript Object Notation (JSON) (.json) file, to an existing Amazon
%% Simple Storage Service (Amazon S3) bucket that you specify. For more
%% information, see Exporting
%% Recommendations:
%% https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html
%% in the Compute Optimizer User
%% Guide.
%%
%% You can have only one Lambda function export job in progress per Amazon
%% Web Services Region.
-spec export_lambda_function_recommendations(aws_client:aws_client(), export_lambda_function_recommendations_request()) ->
    {ok, export_lambda_function_recommendations_response(), tuple()} |
    {error, any()} |
    {error, export_lambda_function_recommendations_errors(), tuple()}.
export_lambda_function_recommendations(Client, Input)
  when is_map(Client), is_map(Input) ->
    export_lambda_function_recommendations(Client, Input, []).

-spec export_lambda_function_recommendations(aws_client:aws_client(), export_lambda_function_recommendations_request(), proplists:proplist()) ->
    {ok, export_lambda_function_recommendations_response(), tuple()} |
    {error, any()} |
    {error, export_lambda_function_recommendations_errors(), tuple()}.
export_lambda_function_recommendations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ExportLambdaFunctionRecommendations">>, Input, Options).

%% @doc
%% Export optimization recommendations for your licenses.
%%
%% Recommendations are exported in a comma-separated values (CSV) file, and
%% its metadata
%% in a JavaScript Object Notation (JSON) file, to an existing Amazon Simple
%% Storage Service (Amazon S3) bucket that you specify. For more information,
%% see Exporting
%% Recommendations:
%% https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html
%% in the Compute Optimizer User
%% Guide.
%%
%% You can have only one license export job in progress per Amazon Web
%% Services Region.
-spec export_license_recommendations(aws_client:aws_client(), export_license_recommendations_request()) ->
    {ok, export_license_recommendations_response(), tuple()} |
    {error, any()} |
    {error, export_license_recommendations_errors(), tuple()}.
export_license_recommendations(Client, Input)
  when is_map(Client), is_map(Input) ->
    export_license_recommendations(Client, Input, []).

-spec export_license_recommendations(aws_client:aws_client(), export_license_recommendations_request(), proplists:proplist()) ->
    {ok, export_license_recommendations_response(), tuple()} |
    {error, any()} |
    {error, export_license_recommendations_errors(), tuple()}.
export_license_recommendations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ExportLicenseRecommendations">>, Input, Options).

%% @doc
%% Export optimization recommendations for your Amazon Relational Database
%% Service (Amazon RDS).
%%
%% Recommendations are exported in a comma-separated values (CSV) file, and
%% its metadata
%% in a JavaScript Object Notation (JSON) file, to an existing Amazon Simple
%% Storage Service (Amazon S3) bucket that you specify. For more information,
%% see Exporting
%% Recommendations:
%% https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html
%% in the Compute Optimizer User
%% Guide.
%%
%% You can have only one Amazon RDS export job in progress per Amazon Web
%% Services Region.
-spec export_rds_database_recommendations(aws_client:aws_client(), export_rds_database_recommendations_request()) ->
    {ok, export_rds_database_recommendations_response(), tuple()} |
    {error, any()} |
    {error, export_rds_database_recommendations_errors(), tuple()}.
export_rds_database_recommendations(Client, Input)
  when is_map(Client), is_map(Input) ->
    export_rds_database_recommendations(Client, Input, []).

-spec export_rds_database_recommendations(aws_client:aws_client(), export_rds_database_recommendations_request(), proplists:proplist()) ->
    {ok, export_rds_database_recommendations_response(), tuple()} |
    {error, any()} |
    {error, export_rds_database_recommendations_errors(), tuple()}.
export_rds_database_recommendations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ExportRDSDatabaseRecommendations">>, Input, Options).

%% @doc Returns Auto Scaling group recommendations.
%%
%% Compute Optimizer generates recommendations for Amazon EC2 Auto Scaling
%% groups that
%% meet a specific set of requirements. For more information, see the
%% Supported
%% resources and requirements:
%% https://docs.aws.amazon.com/compute-optimizer/latest/ug/requirements.html
%% in the Compute Optimizer User
%% Guide.
-spec get_auto_scaling_group_recommendations(aws_client:aws_client(), get_auto_scaling_group_recommendations_request()) ->
    {ok, get_auto_scaling_group_recommendations_response(), tuple()} |
    {error, any()} |
    {error, get_auto_scaling_group_recommendations_errors(), tuple()}.
get_auto_scaling_group_recommendations(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_auto_scaling_group_recommendations(Client, Input, []).

-spec get_auto_scaling_group_recommendations(aws_client:aws_client(), get_auto_scaling_group_recommendations_request(), proplists:proplist()) ->
    {ok, get_auto_scaling_group_recommendations_response(), tuple()} |
    {error, any()} |
    {error, get_auto_scaling_group_recommendations_errors(), tuple()}.
get_auto_scaling_group_recommendations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAutoScalingGroupRecommendations">>, Input, Options).

%% @doc
%% Returns the projected metrics of Amazon ECS service recommendations.
-spec get_e_c_s_service_recommendation_projected_metrics(aws_client:aws_client(), get_e_c_s_service_recommendation_projected_metrics_request()) ->
    {ok, get_e_c_s_service_recommendation_projected_metrics_response(), tuple()} |
    {error, any()} |
    {error, get_e_c_s_service_recommendation_projected_metrics_errors(), tuple()}.
get_e_c_s_service_recommendation_projected_metrics(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_e_c_s_service_recommendation_projected_metrics(Client, Input, []).

-spec get_e_c_s_service_recommendation_projected_metrics(aws_client:aws_client(), get_e_c_s_service_recommendation_projected_metrics_request(), proplists:proplist()) ->
    {ok, get_e_c_s_service_recommendation_projected_metrics_response(), tuple()} |
    {error, any()} |
    {error, get_e_c_s_service_recommendation_projected_metrics_errors(), tuple()}.
get_e_c_s_service_recommendation_projected_metrics(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetECSServiceRecommendationProjectedMetrics">>, Input, Options).

%% @doc
%% Returns Amazon ECS service recommendations.
%%
%% Compute Optimizer generates recommendations for Amazon ECS services on
%% Fargate that meet a specific set of requirements. For more
%% information, see the Supported resources and
%% requirements:
%% https://docs.aws.amazon.com/compute-optimizer/latest/ug/requirements.html
%% in the Compute Optimizer User
%% Guide.
-spec get_e_c_s_service_recommendations(aws_client:aws_client(), get_e_c_s_service_recommendations_request()) ->
    {ok, get_e_c_s_service_recommendations_response(), tuple()} |
    {error, any()} |
    {error, get_e_c_s_service_recommendations_errors(), tuple()}.
get_e_c_s_service_recommendations(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_e_c_s_service_recommendations(Client, Input, []).

-spec get_e_c_s_service_recommendations(aws_client:aws_client(), get_e_c_s_service_recommendations_request(), proplists:proplist()) ->
    {ok, get_e_c_s_service_recommendations_response(), tuple()} |
    {error, any()} |
    {error, get_e_c_s_service_recommendations_errors(), tuple()}.
get_e_c_s_service_recommendations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetECSServiceRecommendations">>, Input, Options).

%% @doc Returns Amazon Elastic Block Store (Amazon EBS) volume
%% recommendations.
%%
%% Compute Optimizer generates recommendations for Amazon EBS volumes that
%% meet a specific set of requirements. For more information, see the
%% Supported
%% resources and requirements:
%% https://docs.aws.amazon.com/compute-optimizer/latest/ug/requirements.html
%% in the Compute Optimizer User
%% Guide.
-spec get_ebs_volume_recommendations(aws_client:aws_client(), get_ebs_volume_recommendations_request()) ->
    {ok, get_ebs_volume_recommendations_response(), tuple()} |
    {error, any()} |
    {error, get_ebs_volume_recommendations_errors(), tuple()}.
get_ebs_volume_recommendations(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_ebs_volume_recommendations(Client, Input, []).

-spec get_ebs_volume_recommendations(aws_client:aws_client(), get_ebs_volume_recommendations_request(), proplists:proplist()) ->
    {ok, get_ebs_volume_recommendations_response(), tuple()} |
    {error, any()} |
    {error, get_ebs_volume_recommendations_errors(), tuple()}.
get_ebs_volume_recommendations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetEBSVolumeRecommendations">>, Input, Options).

%% @doc Returns Amazon EC2 instance recommendations.
%%
%% Compute Optimizer generates recommendations for Amazon Elastic Compute
%% Cloud (Amazon EC2) instances that meet a specific set of requirements. For
%% more
%% information, see the Supported resources and
%% requirements:
%% https://docs.aws.amazon.com/compute-optimizer/latest/ug/requirements.html
%% in the Compute Optimizer User
%% Guide.
-spec get_ec2_instance_recommendations(aws_client:aws_client(), get_ec2_instance_recommendations_request()) ->
    {ok, get_ec2_instance_recommendations_response(), tuple()} |
    {error, any()} |
    {error, get_ec2_instance_recommendations_errors(), tuple()}.
get_ec2_instance_recommendations(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_ec2_instance_recommendations(Client, Input, []).

-spec get_ec2_instance_recommendations(aws_client:aws_client(), get_ec2_instance_recommendations_request(), proplists:proplist()) ->
    {ok, get_ec2_instance_recommendations_response(), tuple()} |
    {error, any()} |
    {error, get_ec2_instance_recommendations_errors(), tuple()}.
get_ec2_instance_recommendations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetEC2InstanceRecommendations">>, Input, Options).

%% @doc Returns the projected utilization metrics of Amazon EC2 instance
%% recommendations.
%%
%% The `Cpu' and `Memory' metrics are the only projected
%% utilization metrics returned when you run this action. Additionally, the
%% `Memory' metric is returned only for resources that have the unified
%% CloudWatch agent installed on them. For more information, see Enabling
%% Memory Utilization with the CloudWatch Agent:
%% https://docs.aws.amazon.com/compute-optimizer/latest/ug/metrics.html#cw-agent.
-spec get_ec2_recommendation_projected_metrics(aws_client:aws_client(), get_ec2_recommendation_projected_metrics_request()) ->
    {ok, get_ec2_recommendation_projected_metrics_response(), tuple()} |
    {error, any()} |
    {error, get_ec2_recommendation_projected_metrics_errors(), tuple()}.
get_ec2_recommendation_projected_metrics(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_ec2_recommendation_projected_metrics(Client, Input, []).

-spec get_ec2_recommendation_projected_metrics(aws_client:aws_client(), get_ec2_recommendation_projected_metrics_request(), proplists:proplist()) ->
    {ok, get_ec2_recommendation_projected_metrics_response(), tuple()} |
    {error, any()} |
    {error, get_ec2_recommendation_projected_metrics_errors(), tuple()}.
get_ec2_recommendation_projected_metrics(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetEC2RecommendationProjectedMetrics">>, Input, Options).

%% @doc Returns the recommendation preferences that are in effect for a given
%% resource, such
%% as enhanced infrastructure metrics.
%%
%% Considers all applicable preferences that you might
%% have set at the resource, account, and organization level.
%%
%% When you create a recommendation preference, you can set its status to
%% `Active' or `Inactive'. Use this action to view the
%% recommendation preferences that are in effect, or `Active'.
-spec get_effective_recommendation_preferences(aws_client:aws_client(), get_effective_recommendation_preferences_request()) ->
    {ok, get_effective_recommendation_preferences_response(), tuple()} |
    {error, any()} |
    {error, get_effective_recommendation_preferences_errors(), tuple()}.
get_effective_recommendation_preferences(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_effective_recommendation_preferences(Client, Input, []).

-spec get_effective_recommendation_preferences(aws_client:aws_client(), get_effective_recommendation_preferences_request(), proplists:proplist()) ->
    {ok, get_effective_recommendation_preferences_response(), tuple()} |
    {error, any()} |
    {error, get_effective_recommendation_preferences_errors(), tuple()}.
get_effective_recommendation_preferences(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetEffectiveRecommendationPreferences">>, Input, Options).

%% @doc Returns the enrollment (opt in) status of an account to the Compute
%% Optimizer
%% service.
%%
%% If the account is the management account of an organization, this action
%% also confirms
%% the enrollment status of member accounts of the organization. Use the
%% `GetEnrollmentStatusesForOrganization' action to get detailed
%% information
%% about the enrollment status of member accounts of an organization.
-spec get_enrollment_status(aws_client:aws_client(), get_enrollment_status_request()) ->
    {ok, get_enrollment_status_response(), tuple()} |
    {error, any()} |
    {error, get_enrollment_status_errors(), tuple()}.
get_enrollment_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_enrollment_status(Client, Input, []).

-spec get_enrollment_status(aws_client:aws_client(), get_enrollment_status_request(), proplists:proplist()) ->
    {ok, get_enrollment_status_response(), tuple()} |
    {error, any()} |
    {error, get_enrollment_status_errors(), tuple()}.
get_enrollment_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetEnrollmentStatus">>, Input, Options).

%% @doc Returns the Compute Optimizer enrollment (opt-in) status of
%% organization member
%% accounts, if your account is an organization management account.
%%
%% To get the enrollment status of standalone accounts, use the
%% `GetEnrollmentStatus' action.
-spec get_enrollment_statuses_for_organization(aws_client:aws_client(), get_enrollment_statuses_for_organization_request()) ->
    {ok, get_enrollment_statuses_for_organization_response(), tuple()} |
    {error, any()} |
    {error, get_enrollment_statuses_for_organization_errors(), tuple()}.
get_enrollment_statuses_for_organization(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_enrollment_statuses_for_organization(Client, Input, []).

-spec get_enrollment_statuses_for_organization(aws_client:aws_client(), get_enrollment_statuses_for_organization_request(), proplists:proplist()) ->
    {ok, get_enrollment_statuses_for_organization_response(), tuple()} |
    {error, any()} |
    {error, get_enrollment_statuses_for_organization_errors(), tuple()}.
get_enrollment_statuses_for_organization(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetEnrollmentStatusesForOrganization">>, Input, Options).

%% @doc Returns idle resource recommendations.
%%
%% Compute Optimizer generates recommendations for
%% idle resources that meet a specific set of requirements. For more
%% information, see
%% Resource requirements:
%% https://docs.aws.amazon.com/compute-optimizer/latest/ug/requirements.html
%% in the
%% Compute Optimizer User Guide
-spec get_idle_recommendations(aws_client:aws_client(), get_idle_recommendations_request()) ->
    {ok, get_idle_recommendations_response(), tuple()} |
    {error, any()} |
    {error, get_idle_recommendations_errors(), tuple()}.
get_idle_recommendations(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_idle_recommendations(Client, Input, []).

-spec get_idle_recommendations(aws_client:aws_client(), get_idle_recommendations_request(), proplists:proplist()) ->
    {ok, get_idle_recommendations_response(), tuple()} |
    {error, any()} |
    {error, get_idle_recommendations_errors(), tuple()}.
get_idle_recommendations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetIdleRecommendations">>, Input, Options).

%% @doc Returns Lambda function recommendations.
%%
%% Compute Optimizer generates recommendations for functions that meet a
%% specific set
%% of requirements. For more information, see the Supported resources and
%% requirements:
%% https://docs.aws.amazon.com/compute-optimizer/latest/ug/requirements.html
%% in the Compute Optimizer User
%% Guide.
-spec get_lambda_function_recommendations(aws_client:aws_client(), get_lambda_function_recommendations_request()) ->
    {ok, get_lambda_function_recommendations_response(), tuple()} |
    {error, any()} |
    {error, get_lambda_function_recommendations_errors(), tuple()}.
get_lambda_function_recommendations(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_lambda_function_recommendations(Client, Input, []).

-spec get_lambda_function_recommendations(aws_client:aws_client(), get_lambda_function_recommendations_request(), proplists:proplist()) ->
    {ok, get_lambda_function_recommendations_response(), tuple()} |
    {error, any()} |
    {error, get_lambda_function_recommendations_errors(), tuple()}.
get_lambda_function_recommendations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetLambdaFunctionRecommendations">>, Input, Options).

%% @doc Returns license recommendations for Amazon EC2 instances that run on
%% a specific license.
%%
%% Compute Optimizer generates recommendations for licenses that meet a
%% specific set of requirements. For more
%% information, see the Supported resources and
%% requirements:
%% https://docs.aws.amazon.com/compute-optimizer/latest/ug/requirements.html
%% in the Compute Optimizer User
%% Guide.
-spec get_license_recommendations(aws_client:aws_client(), get_license_recommendations_request()) ->
    {ok, get_license_recommendations_response(), tuple()} |
    {error, any()} |
    {error, get_license_recommendations_errors(), tuple()}.
get_license_recommendations(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_license_recommendations(Client, Input, []).

-spec get_license_recommendations(aws_client:aws_client(), get_license_recommendations_request(), proplists:proplist()) ->
    {ok, get_license_recommendations_response(), tuple()} |
    {error, any()} |
    {error, get_license_recommendations_errors(), tuple()}.
get_license_recommendations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetLicenseRecommendations">>, Input, Options).

%% @doc
%% Returns the projected metrics of Amazon RDS recommendations.
-spec get_rds_database_recommendation_projected_metrics(aws_client:aws_client(), get_rds_database_recommendation_projected_metrics_request()) ->
    {ok, get_rds_database_recommendation_projected_metrics_response(), tuple()} |
    {error, any()} |
    {error, get_rds_database_recommendation_projected_metrics_errors(), tuple()}.
get_rds_database_recommendation_projected_metrics(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_rds_database_recommendation_projected_metrics(Client, Input, []).

-spec get_rds_database_recommendation_projected_metrics(aws_client:aws_client(), get_rds_database_recommendation_projected_metrics_request(), proplists:proplist()) ->
    {ok, get_rds_database_recommendation_projected_metrics_response(), tuple()} |
    {error, any()} |
    {error, get_rds_database_recommendation_projected_metrics_errors(), tuple()}.
get_rds_database_recommendation_projected_metrics(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRDSDatabaseRecommendationProjectedMetrics">>, Input, Options).

%% @doc
%% Returns Amazon RDS recommendations.
%%
%% Compute Optimizer generates recommendations for Amazon RDS that
%% meet a specific set of requirements. For more
%% information, see the Supported resources and
%% requirements:
%% https://docs.aws.amazon.com/compute-optimizer/latest/ug/requirements.html
%% in the Compute Optimizer User
%% Guide.
-spec get_rds_database_recommendations(aws_client:aws_client(), get_rds_database_recommendations_request()) ->
    {ok, get_rds_database_recommendations_response(), tuple()} |
    {error, any()} |
    {error, get_rds_database_recommendations_errors(), tuple()}.
get_rds_database_recommendations(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_rds_database_recommendations(Client, Input, []).

-spec get_rds_database_recommendations(aws_client:aws_client(), get_rds_database_recommendations_request(), proplists:proplist()) ->
    {ok, get_rds_database_recommendations_response(), tuple()} |
    {error, any()} |
    {error, get_rds_database_recommendations_errors(), tuple()}.
get_rds_database_recommendations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRDSDatabaseRecommendations">>, Input, Options).

%% @doc Returns existing recommendation preferences, such as enhanced
%% infrastructure
%% metrics.
%%
%% Use the `scope' parameter to specify which preferences to return. You
%% can
%% specify to return preferences for an organization, a specific account ID,
%% or a specific
%% EC2 instance or Auto Scaling group Amazon Resource Name (ARN).
%%
%% For more information, see Activating
%% enhanced infrastructure metrics:
%% https://docs.aws.amazon.com/compute-optimizer/latest/ug/enhanced-infrastructure-metrics.html
%% in the Compute Optimizer User
%% Guide.
-spec get_recommendation_preferences(aws_client:aws_client(), get_recommendation_preferences_request()) ->
    {ok, get_recommendation_preferences_response(), tuple()} |
    {error, any()} |
    {error, get_recommendation_preferences_errors(), tuple()}.
get_recommendation_preferences(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_recommendation_preferences(Client, Input, []).

-spec get_recommendation_preferences(aws_client:aws_client(), get_recommendation_preferences_request(), proplists:proplist()) ->
    {ok, get_recommendation_preferences_response(), tuple()} |
    {error, any()} |
    {error, get_recommendation_preferences_errors(), tuple()}.
get_recommendation_preferences(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRecommendationPreferences">>, Input, Options).

%% @doc Returns the optimization findings for an account.
%%
%% It returns the number of:
%%
%% Amazon EC2 instances in an account that are
%% `Underprovisioned', `Overprovisioned', or
%% `Optimized'.
%%
%% Auto Scaling groups in an account that are `NotOptimized', or
%% `Optimized'.
%%
%% Amazon EBS volumes in an account that are `NotOptimized',
%% or `Optimized'.
%%
%% Lambda functions in an account that are `NotOptimized',
%% or `Optimized'.
%%
%% Amazon ECS services in an account that are `Underprovisioned',
%% `Overprovisioned', or `Optimized'.
-spec get_recommendation_summaries(aws_client:aws_client(), get_recommendation_summaries_request()) ->
    {ok, get_recommendation_summaries_response(), tuple()} |
    {error, any()} |
    {error, get_recommendation_summaries_errors(), tuple()}.
get_recommendation_summaries(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_recommendation_summaries(Client, Input, []).

-spec get_recommendation_summaries(aws_client:aws_client(), get_recommendation_summaries_request(), proplists:proplist()) ->
    {ok, get_recommendation_summaries_response(), tuple()} |
    {error, any()} |
    {error, get_recommendation_summaries_errors(), tuple()}.
get_recommendation_summaries(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRecommendationSummaries">>, Input, Options).

%% @doc Creates a new recommendation preference or updates an existing
%% recommendation
%% preference, such as enhanced infrastructure metrics.
%%
%% For more information, see Activating
%% enhanced infrastructure metrics:
%% https://docs.aws.amazon.com/compute-optimizer/latest/ug/enhanced-infrastructure-metrics.html
%% in the Compute Optimizer User
%% Guide.
-spec put_recommendation_preferences(aws_client:aws_client(), put_recommendation_preferences_request()) ->
    {ok, put_recommendation_preferences_response(), tuple()} |
    {error, any()} |
    {error, put_recommendation_preferences_errors(), tuple()}.
put_recommendation_preferences(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_recommendation_preferences(Client, Input, []).

-spec put_recommendation_preferences(aws_client:aws_client(), put_recommendation_preferences_request(), proplists:proplist()) ->
    {ok, put_recommendation_preferences_response(), tuple()} |
    {error, any()} |
    {error, put_recommendation_preferences_errors(), tuple()}.
put_recommendation_preferences(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutRecommendationPreferences">>, Input, Options).

%% @doc Updates the enrollment (opt in and opt out) status of an account to
%% the Compute Optimizer service.
%%
%% If the account is a management account of an organization, this action can
%% also be
%% used to enroll member accounts of the organization.
%%
%% You must have the appropriate permissions to opt in to Compute Optimizer,
%% to view its
%% recommendations, and to opt out. For more information, see Controlling
%% access with Amazon Web Services Identity and Access Management:
%% https://docs.aws.amazon.com/compute-optimizer/latest/ug/security-iam.html
%% in the Compute Optimizer User Guide.
%%
%% When you opt in, Compute Optimizer automatically creates a service-linked
%% role in your
%% account to access its data. For more information, see Using
%% Service-Linked Roles for Compute Optimizer:
%% https://docs.aws.amazon.com/compute-optimizer/latest/ug/using-service-linked-roles.html
%% in the Compute Optimizer User Guide.
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
    Client1 = Client#{service => <<"compute-optimizer">>},
    Host = build_host(<<"compute-optimizer">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.0">>},
        {<<"X-Amz-Target">>, <<"ComputeOptimizerService.", Action/binary>>}
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
