%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Provides APIs for creating and managing Amazon Forecast resources.
-module(aws_forecast).

-export([create_auto_predictor/2,
         create_auto_predictor/3,
         create_dataset/2,
         create_dataset/3,
         create_dataset_group/2,
         create_dataset_group/3,
         create_dataset_import_job/2,
         create_dataset_import_job/3,
         create_explainability/2,
         create_explainability/3,
         create_explainability_export/2,
         create_explainability_export/3,
         create_forecast/2,
         create_forecast/3,
         create_forecast_export_job/2,
         create_forecast_export_job/3,
         create_monitor/2,
         create_monitor/3,
         create_predictor/2,
         create_predictor/3,
         create_predictor_backtest_export_job/2,
         create_predictor_backtest_export_job/3,
         create_what_if_analysis/2,
         create_what_if_analysis/3,
         create_what_if_forecast/2,
         create_what_if_forecast/3,
         create_what_if_forecast_export/2,
         create_what_if_forecast_export/3,
         delete_dataset/2,
         delete_dataset/3,
         delete_dataset_group/2,
         delete_dataset_group/3,
         delete_dataset_import_job/2,
         delete_dataset_import_job/3,
         delete_explainability/2,
         delete_explainability/3,
         delete_explainability_export/2,
         delete_explainability_export/3,
         delete_forecast/2,
         delete_forecast/3,
         delete_forecast_export_job/2,
         delete_forecast_export_job/3,
         delete_monitor/2,
         delete_monitor/3,
         delete_predictor/2,
         delete_predictor/3,
         delete_predictor_backtest_export_job/2,
         delete_predictor_backtest_export_job/3,
         delete_resource_tree/2,
         delete_resource_tree/3,
         delete_what_if_analysis/2,
         delete_what_if_analysis/3,
         delete_what_if_forecast/2,
         delete_what_if_forecast/3,
         delete_what_if_forecast_export/2,
         delete_what_if_forecast_export/3,
         describe_auto_predictor/2,
         describe_auto_predictor/3,
         describe_dataset/2,
         describe_dataset/3,
         describe_dataset_group/2,
         describe_dataset_group/3,
         describe_dataset_import_job/2,
         describe_dataset_import_job/3,
         describe_explainability/2,
         describe_explainability/3,
         describe_explainability_export/2,
         describe_explainability_export/3,
         describe_forecast/2,
         describe_forecast/3,
         describe_forecast_export_job/2,
         describe_forecast_export_job/3,
         describe_monitor/2,
         describe_monitor/3,
         describe_predictor/2,
         describe_predictor/3,
         describe_predictor_backtest_export_job/2,
         describe_predictor_backtest_export_job/3,
         describe_what_if_analysis/2,
         describe_what_if_analysis/3,
         describe_what_if_forecast/2,
         describe_what_if_forecast/3,
         describe_what_if_forecast_export/2,
         describe_what_if_forecast_export/3,
         get_accuracy_metrics/2,
         get_accuracy_metrics/3,
         list_dataset_groups/2,
         list_dataset_groups/3,
         list_dataset_import_jobs/2,
         list_dataset_import_jobs/3,
         list_datasets/2,
         list_datasets/3,
         list_explainabilities/2,
         list_explainabilities/3,
         list_explainability_exports/2,
         list_explainability_exports/3,
         list_forecast_export_jobs/2,
         list_forecast_export_jobs/3,
         list_forecasts/2,
         list_forecasts/3,
         list_monitor_evaluations/2,
         list_monitor_evaluations/3,
         list_monitors/2,
         list_monitors/3,
         list_predictor_backtest_export_jobs/2,
         list_predictor_backtest_export_jobs/3,
         list_predictors/2,
         list_predictors/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         list_what_if_analyses/2,
         list_what_if_analyses/3,
         list_what_if_forecast_exports/2,
         list_what_if_forecast_exports/3,
         list_what_if_forecasts/2,
         list_what_if_forecasts/3,
         resume_resource/2,
         resume_resource/3,
         stop_resource/2,
         stop_resource/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_dataset_group/2,
         update_dataset_group/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% list_forecast_export_jobs_request() :: #{
%%   <<"Filters">> => list(filter()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_forecast_export_jobs_request() :: #{binary() => any()}.

%% Example:
%% weighted_quantile_loss() :: #{
%%   <<"LossValue">> => float(),
%%   <<"Quantile">> => float()
%% }
-type weighted_quantile_loss() :: #{binary() => any()}.

%% Example:
%% list_what_if_forecasts_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"WhatIfForecasts">> => list(what_if_forecast_summary())
%% }
-type list_what_if_forecasts_response() :: #{binary() => any()}.

%% Example:
%% describe_explainability_export_request() :: #{
%%   <<"ExplainabilityExportArn">> := string()
%% }
-type describe_explainability_export_request() :: #{binary() => any()}.

%% Example:
%% tag_resource_request() :: #{
%%   <<"ResourceArn">> := string(),
%%   <<"Tags">> := list(tag())
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% create_predictor_request() :: #{
%%   <<"AlgorithmArn">> => string(),
%%   <<"AutoMLOverrideStrategy">> => list(any()),
%%   <<"EncryptionConfig">> => encryption_config(),
%%   <<"EvaluationParameters">> => evaluation_parameters(),
%%   <<"FeaturizationConfig">> := featurization_config(),
%%   <<"ForecastHorizon">> := integer(),
%%   <<"ForecastTypes">> => list(string()),
%%   <<"HPOConfig">> => hyper_parameter_tuning_job_config(),
%%   <<"InputDataConfig">> := input_data_config(),
%%   <<"OptimizationMetric">> => list(any()),
%%   <<"PerformAutoML">> => boolean(),
%%   <<"PerformHPO">> => boolean(),
%%   <<"PredictorName">> := string(),
%%   <<"Tags">> => list(tag()),
%%   <<"TrainingParameters">> => map()
%% }
-type create_predictor_request() :: #{binary() => any()}.

%% Example:
%% integer_parameter_range() :: #{
%%   <<"MaxValue">> => integer(),
%%   <<"MinValue">> => integer(),
%%   <<"Name">> => string(),
%%   <<"ScalingType">> => list(any())
%% }
-type integer_parameter_range() :: #{binary() => any()}.

%% Example:
%% describe_explainability_export_response() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"Destination">> => data_destination(),
%%   <<"ExplainabilityArn">> => string(),
%%   <<"ExplainabilityExportArn">> => string(),
%%   <<"ExplainabilityExportName">> => string(),
%%   <<"Format">> => string(),
%%   <<"LastModificationTime">> => non_neg_integer(),
%%   <<"Message">> => string(),
%%   <<"Status">> => string()
%% }
-type describe_explainability_export_response() :: #{binary() => any()}.

%% Example:
%% encryption_config() :: #{
%%   <<"KMSKeyArn">> => string(),
%%   <<"RoleArn">> => string()
%% }
-type encryption_config() :: #{binary() => any()}.

%% Example:
%% reference_predictor_summary() :: #{
%%   <<"Arn">> => string(),
%%   <<"State">> => list(any())
%% }
-type reference_predictor_summary() :: #{binary() => any()}.

%% Example:
%% delete_monitor_request() :: #{
%%   <<"MonitorArn">> := string()
%% }
-type delete_monitor_request() :: #{binary() => any()}.

%% Example:
%% list_monitors_response() :: #{
%%   <<"Monitors">> => list(monitor_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_monitors_response() :: #{binary() => any()}.

%% Example:
%% list_monitor_evaluations_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"PredictorMonitorEvaluations">> => list(predictor_monitor_evaluation())
%% }
-type list_monitor_evaluations_response() :: #{binary() => any()}.

%% Example:
%% delete_forecast_request() :: #{
%%   <<"ForecastArn">> := string()
%% }
-type delete_forecast_request() :: #{binary() => any()}.

%% Example:
%% describe_forecast_request() :: #{
%%   <<"ForecastArn">> := string()
%% }
-type describe_forecast_request() :: #{binary() => any()}.

%% Example:
%% get_accuracy_metrics_response() :: #{
%%   <<"AutoMLOverrideStrategy">> => list(any()),
%%   <<"IsAutoPredictor">> => boolean(),
%%   <<"OptimizationMetric">> => list(any()),
%%   <<"PredictorEvaluationResults">> => list(evaluation_result())
%% }
-type get_accuracy_metrics_response() :: #{binary() => any()}.

%% Example:
%% predictor_monitor_evaluation() :: #{
%%   <<"EvaluationState">> => string(),
%%   <<"EvaluationTime">> => non_neg_integer(),
%%   <<"Message">> => string(),
%%   <<"MetricResults">> => list(metric_result()),
%%   <<"MonitorArn">> => string(),
%%   <<"MonitorDataSource">> => monitor_data_source(),
%%   <<"NumItemsEvaluated">> => float(),
%%   <<"PredictorEvent">> => predictor_event(),
%%   <<"ResourceArn">> => string(),
%%   <<"WindowEndDatetime">> => non_neg_integer(),
%%   <<"WindowStartDatetime">> => non_neg_integer()
%% }
-type predictor_monitor_evaluation() :: #{binary() => any()}.

%% Example:
%% input_data_config() :: #{
%%   <<"DatasetGroupArn">> => string(),
%%   <<"SupplementaryFeatures">> => list(supplementary_feature())
%% }
-type input_data_config() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{

%% }
-type untag_resource_response() :: #{binary() => any()}.

%% Example:
%% resource_in_use_exception() :: #{
%%   <<"Message">> => string()
%% }
-type resource_in_use_exception() :: #{binary() => any()}.

%% Example:
%% describe_auto_predictor_response() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"DataConfig">> => data_config(),
%%   <<"DatasetImportJobArns">> => list(string()),
%%   <<"EncryptionConfig">> => encryption_config(),
%%   <<"EstimatedTimeRemainingInMinutes">> => float(),
%%   <<"ExplainabilityInfo">> => explainability_info(),
%%   <<"ForecastDimensions">> => list(string()),
%%   <<"ForecastFrequency">> => string(),
%%   <<"ForecastHorizon">> => integer(),
%%   <<"ForecastTypes">> => list(string()),
%%   <<"LastModificationTime">> => non_neg_integer(),
%%   <<"Message">> => string(),
%%   <<"MonitorInfo">> => monitor_info(),
%%   <<"OptimizationMetric">> => list(any()),
%%   <<"PredictorArn">> => string(),
%%   <<"PredictorName">> => string(),
%%   <<"ReferencePredictorSummary">> => reference_predictor_summary(),
%%   <<"Status">> => string(),
%%   <<"TimeAlignmentBoundary">> => time_alignment_boundary()
%% }
-type describe_auto_predictor_response() :: #{binary() => any()}.

%% Example:
%% monitor_config() :: #{
%%   <<"MonitorName">> => string()
%% }
-type monitor_config() :: #{binary() => any()}.

%% Example:
%% describe_dataset_import_job_response() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"DataSize">> => float(),
%%   <<"DataSource">> => data_source(),
%%   <<"DatasetArn">> => string(),
%%   <<"DatasetImportJobArn">> => string(),
%%   <<"DatasetImportJobName">> => string(),
%%   <<"EstimatedTimeRemainingInMinutes">> => float(),
%%   <<"FieldStatistics">> => map(),
%%   <<"Format">> => string(),
%%   <<"GeolocationFormat">> => string(),
%%   <<"ImportMode">> => list(any()),
%%   <<"LastModificationTime">> => non_neg_integer(),
%%   <<"Message">> => string(),
%%   <<"Status">> => string(),
%%   <<"TimeZone">> => string(),
%%   <<"TimestampFormat">> => string(),
%%   <<"UseGeolocationForTimeZone">> => boolean()
%% }
-type describe_dataset_import_job_response() :: #{binary() => any()}.

%% Example:
%% attribute_config() :: #{
%%   <<"AttributeName">> => string(),
%%   <<"Transformations">> => map()
%% }
-type attribute_config() :: #{binary() => any()}.

%% Example:
%% list_what_if_analyses_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"WhatIfAnalyses">> => list(what_if_analysis_summary())
%% }
-type list_what_if_analyses_response() :: #{binary() => any()}.

%% Example:
%% featurization_method() :: #{
%%   <<"FeaturizationMethodName">> => list(any()),
%%   <<"FeaturizationMethodParameters">> => map()
%% }
-type featurization_method() :: #{binary() => any()}.

%% Example:
%% parameter_ranges() :: #{
%%   <<"CategoricalParameterRanges">> => list(categorical_parameter_range()),
%%   <<"ContinuousParameterRanges">> => list(continuous_parameter_range()),
%%   <<"IntegerParameterRanges">> => list(integer_parameter_range())
%% }
-type parameter_ranges() :: #{binary() => any()}.

%% Example:
%% create_predictor_response() :: #{
%%   <<"PredictorArn">> => string()
%% }
-type create_predictor_response() :: #{binary() => any()}.

%% Example:
%% list_forecast_export_jobs_response() :: #{
%%   <<"ForecastExportJobs">> => list(forecast_export_job_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_forecast_export_jobs_response() :: #{binary() => any()}.

%% Example:
%% create_explainability_export_request() :: #{
%%   <<"Destination">> := data_destination(),
%%   <<"ExplainabilityArn">> := string(),
%%   <<"ExplainabilityExportName">> := string(),
%%   <<"Format">> => string(),
%%   <<"Tags">> => list(tag())
%% }
-type create_explainability_export_request() :: #{binary() => any()}.

%% Example:
%% update_dataset_group_response() :: #{

%% }
-type update_dataset_group_response() :: #{binary() => any()}.

%% Example:
%% list_datasets_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_datasets_request() :: #{binary() => any()}.

%% Example:
%% list_what_if_forecast_exports_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"WhatIfForecastExports">> => list(what_if_forecast_export_summary())
%% }
-type list_what_if_forecast_exports_response() :: #{binary() => any()}.

%% Example:
%% evaluation_parameters() :: #{
%%   <<"BackTestWindowOffset">> => integer(),
%%   <<"NumberOfBacktestWindows">> => integer()
%% }
-type evaluation_parameters() :: #{binary() => any()}.

%% Example:
%% featurization_config() :: #{
%%   <<"Featurizations">> => list(featurization()),
%%   <<"ForecastDimensions">> => list(string()),
%%   <<"ForecastFrequency">> => string()
%% }
-type featurization_config() :: #{binary() => any()}.

%% Example:
%% list_monitors_request() :: #{
%%   <<"Filters">> => list(filter()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_monitors_request() :: #{binary() => any()}.

%% Example:
%% list_predictors_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Predictors">> => list(predictor_summary())
%% }
-type list_predictors_response() :: #{binary() => any()}.

%% Example:
%% create_predictor_backtest_export_job_response() :: #{
%%   <<"PredictorBacktestExportJobArn">> => string()
%% }
-type create_predictor_backtest_export_job_response() :: #{binary() => any()}.

%% Example:
%% untag_resource_request() :: #{
%%   <<"ResourceArn">> := string(),
%%   <<"TagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% monitor_info() :: #{
%%   <<"MonitorArn">> => string(),
%%   <<"Status">> => string()
%% }
-type monitor_info() :: #{binary() => any()}.

%% Example:
%% create_monitor_response() :: #{
%%   <<"MonitorArn">> => string()
%% }
-type create_monitor_response() :: #{binary() => any()}.

%% Example:
%% list_what_if_forecasts_request() :: #{
%%   <<"Filters">> => list(filter()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_what_if_forecasts_request() :: #{binary() => any()}.

%% Example:
%% explainability_summary() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"ExplainabilityArn">> => string(),
%%   <<"ExplainabilityConfig">> => explainability_config(),
%%   <<"ExplainabilityName">> => string(),
%%   <<"LastModificationTime">> => non_neg_integer(),
%%   <<"Message">> => string(),
%%   <<"ResourceArn">> => string(),
%%   <<"Status">> => string()
%% }
-type explainability_summary() :: #{binary() => any()}.

%% Example:
%% create_dataset_group_request() :: #{
%%   <<"DatasetArns">> => list(string()),
%%   <<"DatasetGroupName">> := string(),
%%   <<"Domain">> := list(any()),
%%   <<"Tags">> => list(tag())
%% }
-type create_dataset_group_request() :: #{binary() => any()}.

%% Example:
%% describe_forecast_response() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"DatasetGroupArn">> => string(),
%%   <<"EstimatedTimeRemainingInMinutes">> => float(),
%%   <<"ForecastArn">> => string(),
%%   <<"ForecastName">> => string(),
%%   <<"ForecastTypes">> => list(string()),
%%   <<"LastModificationTime">> => non_neg_integer(),
%%   <<"Message">> => string(),
%%   <<"PredictorArn">> => string(),
%%   <<"Status">> => string(),
%%   <<"TimeSeriesSelector">> => time_series_selector()
%% }
-type describe_forecast_response() :: #{binary() => any()}.

%% Example:
%% describe_what_if_forecast_export_request() :: #{
%%   <<"WhatIfForecastExportArn">> := string()
%% }
-type describe_what_if_forecast_export_request() :: #{binary() => any()}.

%% Example:
%% baseline() :: #{
%%   <<"PredictorBaseline">> => predictor_baseline()
%% }
-type baseline() :: #{binary() => any()}.

%% Example:
%% time_series_selector() :: #{
%%   <<"TimeSeriesIdentifiers">> => time_series_identifiers()
%% }
-type time_series_selector() :: #{binary() => any()}.

%% Example:
%% predictor_execution_details() :: #{
%%   <<"PredictorExecutions">> => list(predictor_execution())
%% }
-type predictor_execution_details() :: #{binary() => any()}.

%% Example:
%% forecast_summary() :: #{
%%   <<"CreatedUsingAutoPredictor">> => boolean(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"DatasetGroupArn">> => string(),
%%   <<"ForecastArn">> => string(),
%%   <<"ForecastName">> => string(),
%%   <<"LastModificationTime">> => non_neg_integer(),
%%   <<"Message">> => string(),
%%   <<"PredictorArn">> => string(),
%%   <<"Status">> => string()
%% }
-type forecast_summary() :: #{binary() => any()}.

%% Example:
%% describe_predictor_response() :: #{
%%   <<"AlgorithmArn">> => string(),
%%   <<"AutoMLAlgorithmArns">> => list(string()),
%%   <<"AutoMLOverrideStrategy">> => list(any()),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"DatasetImportJobArns">> => list(string()),
%%   <<"EncryptionConfig">> => encryption_config(),
%%   <<"EstimatedTimeRemainingInMinutes">> => float(),
%%   <<"EvaluationParameters">> => evaluation_parameters(),
%%   <<"FeaturizationConfig">> => featurization_config(),
%%   <<"ForecastHorizon">> => integer(),
%%   <<"ForecastTypes">> => list(string()),
%%   <<"HPOConfig">> => hyper_parameter_tuning_job_config(),
%%   <<"InputDataConfig">> => input_data_config(),
%%   <<"IsAutoPredictor">> => boolean(),
%%   <<"LastModificationTime">> => non_neg_integer(),
%%   <<"Message">> => string(),
%%   <<"OptimizationMetric">> => list(any()),
%%   <<"PerformAutoML">> => boolean(),
%%   <<"PerformHPO">> => boolean(),
%%   <<"PredictorArn">> => string(),
%%   <<"PredictorExecutionDetails">> => predictor_execution_details(),
%%   <<"PredictorName">> => string(),
%%   <<"Status">> => string(),
%%   <<"TrainingParameters">> => map()
%% }
-type describe_predictor_response() :: #{binary() => any()}.

%% Example:
%% what_if_forecast_export_summary() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"Destination">> => data_destination(),
%%   <<"LastModificationTime">> => non_neg_integer(),
%%   <<"Message">> => string(),
%%   <<"Status">> => string(),
%%   <<"WhatIfForecastArns">> => list(string()),
%%   <<"WhatIfForecastExportArn">> => string(),
%%   <<"WhatIfForecastExportName">> => string()
%% }
-type what_if_forecast_export_summary() :: #{binary() => any()}.

%% Example:
%% test_window_summary() :: #{
%%   <<"Message">> => string(),
%%   <<"Status">> => string(),
%%   <<"TestWindowEnd">> => non_neg_integer(),
%%   <<"TestWindowStart">> => non_neg_integer()
%% }
-type test_window_summary() :: #{binary() => any()}.

%% Example:
%% stop_resource_request() :: #{
%%   <<"ResourceArn">> := string()
%% }
-type stop_resource_request() :: #{binary() => any()}.

%% Example:
%% list_explainability_exports_response() :: #{
%%   <<"ExplainabilityExports">> => list(explainability_export_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_explainability_exports_response() :: #{binary() => any()}.

%% Example:
%% create_auto_predictor_response() :: #{
%%   <<"PredictorArn">> => string()
%% }
-type create_auto_predictor_response() :: #{binary() => any()}.

%% Example:
%% create_dataset_response() :: #{
%%   <<"DatasetArn">> => string()
%% }
-type create_dataset_response() :: #{binary() => any()}.

%% Example:
%% metrics() :: #{
%%   <<"AverageWeightedQuantileLoss">> => float(),
%%   <<"ErrorMetrics">> => list(error_metric()),
%%   <<"RMSE">> => float(),
%%   <<"WeightedQuantileLosses">> => list(weighted_quantile_loss())
%% }
-type metrics() :: #{binary() => any()}.

%% Example:
%% explainability_export_summary() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"Destination">> => data_destination(),
%%   <<"ExplainabilityExportArn">> => string(),
%%   <<"ExplainabilityExportName">> => string(),
%%   <<"LastModificationTime">> => non_neg_integer(),
%%   <<"Message">> => string(),
%%   <<"Status">> => string()
%% }
-type explainability_export_summary() :: #{binary() => any()}.

%% Example:
%% describe_what_if_forecast_response() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"EstimatedTimeRemainingInMinutes">> => float(),
%%   <<"ForecastTypes">> => list(string()),
%%   <<"LastModificationTime">> => non_neg_integer(),
%%   <<"Message">> => string(),
%%   <<"Status">> => string(),
%%   <<"TimeSeriesReplacementsDataSource">> => time_series_replacements_data_source(),
%%   <<"TimeSeriesTransformations">> => list(time_series_transformation()),
%%   <<"WhatIfAnalysisArn">> => string(),
%%   <<"WhatIfForecastArn">> => string(),
%%   <<"WhatIfForecastName">> => string()
%% }
-type describe_what_if_forecast_response() :: #{binary() => any()}.

%% Example:
%% supplementary_feature() :: #{
%%   <<"Name">> => string(),
%%   <<"Value">> => string()
%% }
-type supplementary_feature() :: #{binary() => any()}.

%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% list_dataset_import_jobs_request() :: #{
%%   <<"Filters">> => list(filter()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_dataset_import_jobs_request() :: #{binary() => any()}.

%% Example:
%% create_what_if_forecast_response() :: #{
%%   <<"WhatIfForecastArn">> => string()
%% }
-type create_what_if_forecast_response() :: #{binary() => any()}.

%% Example:
%% forecast_export_job_summary() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"Destination">> => data_destination(),
%%   <<"ForecastExportJobArn">> => string(),
%%   <<"ForecastExportJobName">> => string(),
%%   <<"LastModificationTime">> => non_neg_integer(),
%%   <<"Message">> => string(),
%%   <<"Status">> => string()
%% }
-type forecast_export_job_summary() :: #{binary() => any()}.

%% Example:
%% describe_explainability_response() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"DataSource">> => data_source(),
%%   <<"EnableVisualization">> => boolean(),
%%   <<"EndDateTime">> => string(),
%%   <<"EstimatedTimeRemainingInMinutes">> => float(),
%%   <<"ExplainabilityArn">> => string(),
%%   <<"ExplainabilityConfig">> => explainability_config(),
%%   <<"ExplainabilityName">> => string(),
%%   <<"LastModificationTime">> => non_neg_integer(),
%%   <<"Message">> => string(),
%%   <<"ResourceArn">> => string(),
%%   <<"Schema">> => schema(),
%%   <<"StartDateTime">> => string(),
%%   <<"Status">> => string()
%% }
-type describe_explainability_response() :: #{binary() => any()}.

%% Example:
%% explainability_info() :: #{
%%   <<"ExplainabilityArn">> => string(),
%%   <<"Status">> => string()
%% }
-type explainability_info() :: #{binary() => any()}.

%% Example:
%% get_accuracy_metrics_request() :: #{
%%   <<"PredictorArn">> := string()
%% }
-type get_accuracy_metrics_request() :: #{binary() => any()}.

%% Example:
%% dataset_summary() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"DatasetArn">> => string(),
%%   <<"DatasetName">> => string(),
%%   <<"DatasetType">> => list(any()),
%%   <<"Domain">> => list(any()),
%%   <<"LastModificationTime">> => non_neg_integer()
%% }
-type dataset_summary() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% describe_auto_predictor_request() :: #{
%%   <<"PredictorArn">> := string()
%% }
-type describe_auto_predictor_request() :: #{binary() => any()}.

%% Example:
%% resume_resource_request() :: #{
%%   <<"ResourceArn">> := string()
%% }
-type resume_resource_request() :: #{binary() => any()}.

%% Example:
%% s3_config() :: #{
%%   <<"KMSKeyArn">> => string(),
%%   <<"Path">> => string(),
%%   <<"RoleArn">> => string()
%% }
-type s3_config() :: #{binary() => any()}.

%% Example:
%% delete_dataset_import_job_request() :: #{
%%   <<"DatasetImportJobArn">> := string()
%% }
-type delete_dataset_import_job_request() :: #{binary() => any()}.

%% Example:
%% delete_forecast_export_job_request() :: #{
%%   <<"ForecastExportJobArn">> := string()
%% }
-type delete_forecast_export_job_request() :: #{binary() => any()}.

%% Example:
%% time_series_transformation() :: #{
%%   <<"Action">> => action(),
%%   <<"TimeSeriesConditions">> => list(time_series_condition())
%% }
-type time_series_transformation() :: #{binary() => any()}.

%% Example:
%% data_config() :: #{
%%   <<"AdditionalDatasets">> => list(additional_dataset()),
%%   <<"AttributeConfigs">> => list(attribute_config()),
%%   <<"DatasetGroupArn">> => string()
%% }
-type data_config() :: #{binary() => any()}.

%% Example:
%% invalid_next_token_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_next_token_exception() :: #{binary() => any()}.

%% Example:
%% create_forecast_export_job_response() :: #{
%%   <<"ForecastExportJobArn">> => string()
%% }
-type create_forecast_export_job_response() :: #{binary() => any()}.

%% Example:
%% create_what_if_forecast_request() :: #{
%%   <<"Tags">> => list(tag()),
%%   <<"TimeSeriesReplacementsDataSource">> => time_series_replacements_data_source(),
%%   <<"TimeSeriesTransformations">> => list(time_series_transformation()),
%%   <<"WhatIfAnalysisArn">> := string(),
%%   <<"WhatIfForecastName">> := string()
%% }
-type create_what_if_forecast_request() :: #{binary() => any()}.

%% Example:
%% create_auto_predictor_request() :: #{
%%   <<"DataConfig">> => data_config(),
%%   <<"EncryptionConfig">> => encryption_config(),
%%   <<"ExplainPredictor">> => boolean(),
%%   <<"ForecastDimensions">> => list(string()),
%%   <<"ForecastFrequency">> => string(),
%%   <<"ForecastHorizon">> => integer(),
%%   <<"ForecastTypes">> => list(string()),
%%   <<"MonitorConfig">> => monitor_config(),
%%   <<"OptimizationMetric">> => list(any()),
%%   <<"PredictorName">> := string(),
%%   <<"ReferencePredictorArn">> => string(),
%%   <<"Tags">> => list(tag()),
%%   <<"TimeAlignmentBoundary">> => time_alignment_boundary()
%% }
-type create_auto_predictor_request() :: #{binary() => any()}.

%% Example:
%% list_dataset_groups_response() :: #{
%%   <<"DatasetGroups">> => list(dataset_group_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_dataset_groups_response() :: #{binary() => any()}.

%% Example:
%% create_what_if_analysis_response() :: #{
%%   <<"WhatIfAnalysisArn">> => string()
%% }
-type create_what_if_analysis_response() :: #{binary() => any()}.

%% Example:
%% list_what_if_analyses_request() :: #{
%%   <<"Filters">> => list(filter()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_what_if_analyses_request() :: #{binary() => any()}.

%% Example:
%% list_predictors_request() :: #{
%%   <<"Filters">> => list(filter()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_predictors_request() :: #{binary() => any()}.

%% Example:
%% describe_what_if_analysis_response() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"EstimatedTimeRemainingInMinutes">> => float(),
%%   <<"ForecastArn">> => string(),
%%   <<"LastModificationTime">> => non_neg_integer(),
%%   <<"Message">> => string(),
%%   <<"Status">> => string(),
%%   <<"TimeSeriesSelector">> => time_series_selector(),
%%   <<"WhatIfAnalysisArn">> => string(),
%%   <<"WhatIfAnalysisName">> => string()
%% }
-type describe_what_if_analysis_response() :: #{binary() => any()}.

%% Example:
%% schema() :: #{
%%   <<"Attributes">> => list(schema_attribute())
%% }
-type schema() :: #{binary() => any()}.

%% Example:
%% list_dataset_groups_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_dataset_groups_request() :: #{binary() => any()}.

%% Example:
%% list_forecasts_response() :: #{
%%   <<"Forecasts">> => list(forecast_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_forecasts_response() :: #{binary() => any()}.

%% Example:
%% invalid_input_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_input_exception() :: #{binary() => any()}.

%% Example:
%% delete_explainability_request() :: #{
%%   <<"ExplainabilityArn">> := string()
%% }
-type delete_explainability_request() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"Tags">> => list(tag())
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.

%% Example:
%% list_predictor_backtest_export_jobs_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"PredictorBacktestExportJobs">> => list(predictor_backtest_export_job_summary())
%% }
-type list_predictor_backtest_export_jobs_response() :: #{binary() => any()}.

%% Example:
%% create_what_if_analysis_request() :: #{
%%   <<"ForecastArn">> := string(),
%%   <<"Tags">> => list(tag()),
%%   <<"TimeSeriesSelector">> => time_series_selector(),
%%   <<"WhatIfAnalysisName">> := string()
%% }
-type create_what_if_analysis_request() :: #{binary() => any()}.

%% Example:
%% describe_what_if_analysis_request() :: #{
%%   <<"WhatIfAnalysisArn">> := string()
%% }
-type describe_what_if_analysis_request() :: #{binary() => any()}.

%% Example:
%% baseline_metric() :: #{
%%   <<"Name">> => string(),
%%   <<"Value">> => float()
%% }
-type baseline_metric() :: #{binary() => any()}.

%% Example:
%% categorical_parameter_range() :: #{
%%   <<"Name">> => string(),
%%   <<"Values">> => list(string())
%% }
-type categorical_parameter_range() :: #{binary() => any()}.

%% Example:
%% describe_predictor_backtest_export_job_response() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"Destination">> => data_destination(),
%%   <<"Format">> => string(),
%%   <<"LastModificationTime">> => non_neg_integer(),
%%   <<"Message">> => string(),
%%   <<"PredictorArn">> => string(),
%%   <<"PredictorBacktestExportJobArn">> => string(),
%%   <<"PredictorBacktestExportJobName">> => string(),
%%   <<"Status">> => string()
%% }
-type describe_predictor_backtest_export_job_response() :: #{binary() => any()}.

%% Example:
%% filter() :: #{
%%   <<"Condition">> => list(any()),
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type filter() :: #{binary() => any()}.

%% Example:
%% list_explainabilities_request() :: #{
%%   <<"Filters">> => list(filter()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_explainabilities_request() :: #{binary() => any()}.

%% Example:
%% time_series_condition() :: #{
%%   <<"AttributeName">> => string(),
%%   <<"AttributeValue">> => string(),
%%   <<"Condition">> => list(any())
%% }
-type time_series_condition() :: #{binary() => any()}.

%% Example:
%% create_explainability_request() :: #{
%%   <<"DataSource">> => data_source(),
%%   <<"EnableVisualization">> => boolean(),
%%   <<"EndDateTime">> => string(),
%%   <<"ExplainabilityConfig">> := explainability_config(),
%%   <<"ExplainabilityName">> := string(),
%%   <<"ResourceArn">> := string(),
%%   <<"Schema">> => schema(),
%%   <<"StartDateTime">> => string(),
%%   <<"Tags">> => list(tag())
%% }
-type create_explainability_request() :: #{binary() => any()}.

%% Example:
%% delete_predictor_request() :: #{
%%   <<"PredictorArn">> := string()
%% }
-type delete_predictor_request() :: #{binary() => any()}.

%% Example:
%% metric_result() :: #{
%%   <<"MetricName">> => string(),
%%   <<"MetricValue">> => float()
%% }
-type metric_result() :: #{binary() => any()}.

%% Example:
%% data_destination() :: #{
%%   <<"S3Config">> => s3_config()
%% }
-type data_destination() :: #{binary() => any()}.

%% Example:
%% explainability_config() :: #{
%%   <<"TimePointGranularity">> => list(any()),
%%   <<"TimeSeriesGranularity">> => list(any())
%% }
-type explainability_config() :: #{binary() => any()}.

%% Example:
%% predictor_execution() :: #{
%%   <<"AlgorithmArn">> => string(),
%%   <<"TestWindows">> => list(test_window_summary())
%% }
-type predictor_execution() :: #{binary() => any()}.

%% Example:
%% monitor_data_source() :: #{
%%   <<"DatasetImportJobArn">> => string(),
%%   <<"ForecastArn">> => string(),
%%   <<"PredictorArn">> => string()
%% }
-type monitor_data_source() :: #{binary() => any()}.

%% Example:
%% create_what_if_forecast_export_response() :: #{
%%   <<"WhatIfForecastExportArn">> => string()
%% }
-type create_what_if_forecast_export_response() :: #{binary() => any()}.

%% Example:
%% action() :: #{
%%   <<"AttributeName">> => string(),
%%   <<"Operation">> => list(any()),
%%   <<"Value">> => float()
%% }
-type action() :: #{binary() => any()}.

%% Example:
%% schema_attribute() :: #{
%%   <<"AttributeName">> => string(),
%%   <<"AttributeType">> => list(any())
%% }
-type schema_attribute() :: #{binary() => any()}.

%% Example:
%% create_explainability_export_response() :: #{
%%   <<"ExplainabilityExportArn">> => string()
%% }
-type create_explainability_export_response() :: #{binary() => any()}.

%% Example:
%% dataset_import_job_summary() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"DataSource">> => data_source(),
%%   <<"DatasetImportJobArn">> => string(),
%%   <<"DatasetImportJobName">> => string(),
%%   <<"ImportMode">> => list(any()),
%%   <<"LastModificationTime">> => non_neg_integer(),
%%   <<"Message">> => string(),
%%   <<"Status">> => string()
%% }
-type dataset_import_job_summary() :: #{binary() => any()}.

%% Example:
%% describe_predictor_backtest_export_job_request() :: #{
%%   <<"PredictorBacktestExportJobArn">> := string()
%% }
-type describe_predictor_backtest_export_job_request() :: #{binary() => any()}.

%% Example:
%% list_dataset_import_jobs_response() :: #{
%%   <<"DatasetImportJobs">> => list(dataset_import_job_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_dataset_import_jobs_response() :: #{binary() => any()}.

%% Example:
%% error_metric() :: #{
%%   <<"ForecastType">> => string(),
%%   <<"MAPE">> => float(),
%%   <<"MASE">> => float(),
%%   <<"RMSE">> => float(),
%%   <<"WAPE">> => float()
%% }
-type error_metric() :: #{binary() => any()}.

%% Example:
%% delete_dataset_group_request() :: #{
%%   <<"DatasetGroupArn">> := string()
%% }
-type delete_dataset_group_request() :: #{binary() => any()}.

%% Example:
%% predictor_summary() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"DatasetGroupArn">> => string(),
%%   <<"IsAutoPredictor">> => boolean(),
%%   <<"LastModificationTime">> => non_neg_integer(),
%%   <<"Message">> => string(),
%%   <<"PredictorArn">> => string(),
%%   <<"PredictorName">> => string(),
%%   <<"ReferencePredictorSummary">> => reference_predictor_summary(),
%%   <<"Status">> => string()
%% }
-type predictor_summary() :: #{binary() => any()}.

%% Example:
%% update_dataset_group_request() :: #{
%%   <<"DatasetArns">> := list(string()),
%%   <<"DatasetGroupArn">> := string()
%% }
-type update_dataset_group_request() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{

%% }
-type tag_resource_response() :: #{binary() => any()}.

%% Example:
%% describe_predictor_request() :: #{
%%   <<"PredictorArn">> := string()
%% }
-type describe_predictor_request() :: #{binary() => any()}.

%% Example:
%% list_what_if_forecast_exports_request() :: #{
%%   <<"Filters">> => list(filter()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_what_if_forecast_exports_request() :: #{binary() => any()}.

%% Example:
%% create_forecast_export_job_request() :: #{
%%   <<"Destination">> := data_destination(),
%%   <<"ForecastArn">> := string(),
%%   <<"ForecastExportJobName">> := string(),
%%   <<"Format">> => string(),
%%   <<"Tags">> => list(tag())
%% }
-type create_forecast_export_job_request() :: #{binary() => any()}.

%% Example:
%% create_predictor_backtest_export_job_request() :: #{
%%   <<"Destination">> := data_destination(),
%%   <<"Format">> => string(),
%%   <<"PredictorArn">> := string(),
%%   <<"PredictorBacktestExportJobName">> := string(),
%%   <<"Tags">> => list(tag())
%% }
-type create_predictor_backtest_export_job_request() :: #{binary() => any()}.

%% Example:
%% create_dataset_group_response() :: #{
%%   <<"DatasetGroupArn">> => string()
%% }
-type create_dataset_group_response() :: #{binary() => any()}.

%% Example:
%% statistics() :: #{
%%   <<"Avg">> => float(),
%%   <<"Count">> => integer(),
%%   <<"CountDistinct">> => integer(),
%%   <<"CountDistinctLong">> => float(),
%%   <<"CountLong">> => float(),
%%   <<"CountNan">> => integer(),
%%   <<"CountNanLong">> => float(),
%%   <<"CountNull">> => integer(),
%%   <<"CountNullLong">> => float(),
%%   <<"Max">> => string(),
%%   <<"Min">> => string(),
%%   <<"Stddev">> => float()
%% }
-type statistics() :: #{binary() => any()}.

%% Example:
%% delete_what_if_forecast_request() :: #{
%%   <<"WhatIfForecastArn">> := string()
%% }
-type delete_what_if_forecast_request() :: #{binary() => any()}.

%% Example:
%% predictor_backtest_export_job_summary() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"Destination">> => data_destination(),
%%   <<"LastModificationTime">> => non_neg_integer(),
%%   <<"Message">> => string(),
%%   <<"PredictorBacktestExportJobArn">> => string(),
%%   <<"PredictorBacktestExportJobName">> => string(),
%%   <<"Status">> => string()
%% }
-type predictor_backtest_export_job_summary() :: #{binary() => any()}.

%% Example:
%% describe_dataset_response() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"DataFrequency">> => string(),
%%   <<"DatasetArn">> => string(),
%%   <<"DatasetName">> => string(),
%%   <<"DatasetType">> => list(any()),
%%   <<"Domain">> => list(any()),
%%   <<"EncryptionConfig">> => encryption_config(),
%%   <<"LastModificationTime">> => non_neg_integer(),
%%   <<"Schema">> => schema(),
%%   <<"Status">> => string()
%% }
-type describe_dataset_response() :: #{binary() => any()}.

%% Example:
%% describe_what_if_forecast_export_response() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"Destination">> => data_destination(),
%%   <<"EstimatedTimeRemainingInMinutes">> => float(),
%%   <<"Format">> => string(),
%%   <<"LastModificationTime">> => non_neg_integer(),
%%   <<"Message">> => string(),
%%   <<"Status">> => string(),
%%   <<"WhatIfForecastArns">> => list(string()),
%%   <<"WhatIfForecastExportArn">> => string(),
%%   <<"WhatIfForecastExportName">> => string()
%% }
-type describe_what_if_forecast_export_response() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{
%%   <<"ResourceArn">> := string()
%% }
-type list_tags_for_resource_request() :: #{binary() => any()}.

%% Example:
%% describe_what_if_forecast_request() :: #{
%%   <<"WhatIfForecastArn">> := string()
%% }
-type describe_what_if_forecast_request() :: #{binary() => any()}.

%% Example:
%% delete_what_if_analysis_request() :: #{
%%   <<"WhatIfAnalysisArn">> := string()
%% }
-type delete_what_if_analysis_request() :: #{binary() => any()}.

%% Example:
%% create_dataset_request() :: #{
%%   <<"DataFrequency">> => string(),
%%   <<"DatasetName">> := string(),
%%   <<"DatasetType">> := list(any()),
%%   <<"Domain">> := list(any()),
%%   <<"EncryptionConfig">> => encryption_config(),
%%   <<"Schema">> := schema(),
%%   <<"Tags">> => list(tag())
%% }
-type create_dataset_request() :: #{binary() => any()}.

%% Example:
%% describe_dataset_group_request() :: #{
%%   <<"DatasetGroupArn">> := string()
%% }
-type describe_dataset_group_request() :: #{binary() => any()}.

%% Example:
%% delete_predictor_backtest_export_job_request() :: #{
%%   <<"PredictorBacktestExportJobArn">> := string()
%% }
-type delete_predictor_backtest_export_job_request() :: #{binary() => any()}.

%% Example:
%% continuous_parameter_range() :: #{
%%   <<"MaxValue">> => float(),
%%   <<"MinValue">> => float(),
%%   <<"Name">> => string(),
%%   <<"ScalingType">> => list(any())
%% }
-type continuous_parameter_range() :: #{binary() => any()}.

%% Example:
%% create_dataset_import_job_request() :: #{
%%   <<"DataSource">> := data_source(),
%%   <<"DatasetArn">> := string(),
%%   <<"DatasetImportJobName">> := string(),
%%   <<"Format">> => string(),
%%   <<"GeolocationFormat">> => string(),
%%   <<"ImportMode">> => list(any()),
%%   <<"Tags">> => list(tag()),
%%   <<"TimeZone">> => string(),
%%   <<"TimestampFormat">> => string(),
%%   <<"UseGeolocationForTimeZone">> => boolean()
%% }
-type create_dataset_import_job_request() :: #{binary() => any()}.

%% Example:
%% describe_monitor_request() :: #{
%%   <<"MonitorArn">> := string()
%% }
-type describe_monitor_request() :: #{binary() => any()}.

%% Example:
%% predictor_event() :: #{
%%   <<"Datetime">> => non_neg_integer(),
%%   <<"Detail">> => string()
%% }
-type predictor_event() :: #{binary() => any()}.

%% Example:
%% describe_explainability_request() :: #{
%%   <<"ExplainabilityArn">> := string()
%% }
-type describe_explainability_request() :: #{binary() => any()}.

%% Example:
%% describe_forecast_export_job_response() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"Destination">> => data_destination(),
%%   <<"ForecastArn">> => string(),
%%   <<"ForecastExportJobArn">> => string(),
%%   <<"ForecastExportJobName">> => string(),
%%   <<"Format">> => string(),
%%   <<"LastModificationTime">> => non_neg_integer(),
%%   <<"Message">> => string(),
%%   <<"Status">> => string()
%% }
-type describe_forecast_export_job_response() :: #{binary() => any()}.

%% Example:
%% create_explainability_response() :: #{
%%   <<"ExplainabilityArn">> => string()
%% }
-type create_explainability_response() :: #{binary() => any()}.

%% Example:
%% describe_monitor_response() :: #{
%%   <<"Baseline">> => baseline(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"EstimatedEvaluationTimeRemainingInMinutes">> => float(),
%%   <<"LastEvaluationState">> => string(),
%%   <<"LastEvaluationTime">> => non_neg_integer(),
%%   <<"LastModificationTime">> => non_neg_integer(),
%%   <<"Message">> => string(),
%%   <<"MonitorArn">> => string(),
%%   <<"MonitorName">> => string(),
%%   <<"ResourceArn">> => string(),
%%   <<"Status">> => string()
%% }
-type describe_monitor_response() :: #{binary() => any()}.

%% Example:
%% describe_dataset_import_job_request() :: #{
%%   <<"DatasetImportJobArn">> := string()
%% }
-type describe_dataset_import_job_request() :: #{binary() => any()}.

%% Example:
%% limit_exceeded_exception() :: #{
%%   <<"Message">> => string()
%% }
-type limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% describe_forecast_export_job_request() :: #{
%%   <<"ForecastExportJobArn">> := string()
%% }
-type describe_forecast_export_job_request() :: #{binary() => any()}.

%% Example:
%% create_what_if_forecast_export_request() :: #{
%%   <<"Destination">> := data_destination(),
%%   <<"Format">> => string(),
%%   <<"Tags">> => list(tag()),
%%   <<"WhatIfForecastArns">> := list(string()),
%%   <<"WhatIfForecastExportName">> := string()
%% }
-type create_what_if_forecast_export_request() :: #{binary() => any()}.

%% Example:
%% what_if_analysis_summary() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"ForecastArn">> => string(),
%%   <<"LastModificationTime">> => non_neg_integer(),
%%   <<"Message">> => string(),
%%   <<"Status">> => string(),
%%   <<"WhatIfAnalysisArn">> => string(),
%%   <<"WhatIfAnalysisName">> => string()
%% }
-type what_if_analysis_summary() :: #{binary() => any()}.

%% Example:
%% list_monitor_evaluations_request() :: #{
%%   <<"Filters">> => list(filter()),
%%   <<"MaxResults">> => integer(),
%%   <<"MonitorArn">> := string(),
%%   <<"NextToken">> => string()
%% }
-type list_monitor_evaluations_request() :: #{binary() => any()}.

%% Example:
%% describe_dataset_group_response() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"DatasetArns">> => list(string()),
%%   <<"DatasetGroupArn">> => string(),
%%   <<"DatasetGroupName">> => string(),
%%   <<"Domain">> => list(any()),
%%   <<"LastModificationTime">> => non_neg_integer(),
%%   <<"Status">> => string()
%% }
-type describe_dataset_group_response() :: #{binary() => any()}.

%% Example:
%% evaluation_result() :: #{
%%   <<"AlgorithmArn">> => string(),
%%   <<"TestWindows">> => list(window_summary())
%% }
-type evaluation_result() :: #{binary() => any()}.

%% Example:
%% list_forecasts_request() :: #{
%%   <<"Filters">> => list(filter()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_forecasts_request() :: #{binary() => any()}.

%% Example:
%% describe_dataset_request() :: #{
%%   <<"DatasetArn">> := string()
%% }
-type describe_dataset_request() :: #{binary() => any()}.

%% Example:
%% delete_dataset_request() :: #{
%%   <<"DatasetArn">> := string()
%% }
-type delete_dataset_request() :: #{binary() => any()}.

%% Example:
%% list_datasets_response() :: #{
%%   <<"Datasets">> => list(dataset_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_datasets_response() :: #{binary() => any()}.

%% Example:
%% what_if_forecast_summary() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"LastModificationTime">> => non_neg_integer(),
%%   <<"Message">> => string(),
%%   <<"Status">> => string(),
%%   <<"WhatIfAnalysisArn">> => string(),
%%   <<"WhatIfForecastArn">> => string(),
%%   <<"WhatIfForecastName">> => string()
%% }
-type what_if_forecast_summary() :: #{binary() => any()}.

%% Example:
%% create_forecast_request() :: #{
%%   <<"ForecastName">> := string(),
%%   <<"ForecastTypes">> => list(string()),
%%   <<"PredictorArn">> := string(),
%%   <<"Tags">> => list(tag()),
%%   <<"TimeSeriesSelector">> => time_series_selector()
%% }
-type create_forecast_request() :: #{binary() => any()}.

%% Example:
%% additional_dataset() :: #{
%%   <<"Configuration">> => map(),
%%   <<"Name">> => string()
%% }
-type additional_dataset() :: #{binary() => any()}.

%% Example:
%% delete_explainability_export_request() :: #{
%%   <<"ExplainabilityExportArn">> := string()
%% }
-type delete_explainability_export_request() :: #{binary() => any()}.

%% Example:
%% resource_already_exists_exception() :: #{
%%   <<"Message">> => string()
%% }
-type resource_already_exists_exception() :: #{binary() => any()}.

%% Example:
%% create_monitor_request() :: #{
%%   <<"MonitorName">> := string(),
%%   <<"ResourceArn">> := string(),
%%   <<"Tags">> => list(tag())
%% }
-type create_monitor_request() :: #{binary() => any()}.

%% Example:
%% list_explainability_exports_request() :: #{
%%   <<"Filters">> => list(filter()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_explainability_exports_request() :: #{binary() => any()}.

%% Example:
%% data_source() :: #{
%%   <<"S3Config">> => s3_config()
%% }
-type data_source() :: #{binary() => any()}.

%% Example:
%% delete_resource_tree_request() :: #{
%%   <<"ResourceArn">> := string()
%% }
-type delete_resource_tree_request() :: #{binary() => any()}.

%% Example:
%% window_summary() :: #{
%%   <<"EvaluationType">> => list(any()),
%%   <<"ItemCount">> => integer(),
%%   <<"Metrics">> => metrics(),
%%   <<"TestWindowEnd">> => non_neg_integer(),
%%   <<"TestWindowStart">> => non_neg_integer()
%% }
-type window_summary() :: #{binary() => any()}.

%% Example:
%% list_explainabilities_response() :: #{
%%   <<"Explainabilities">> => list(explainability_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_explainabilities_response() :: #{binary() => any()}.

%% Example:
%% predictor_baseline() :: #{
%%   <<"BaselineMetrics">> => list(baseline_metric())
%% }
-type predictor_baseline() :: #{binary() => any()}.

%% Example:
%% hyper_parameter_tuning_job_config() :: #{
%%   <<"ParameterRanges">> => parameter_ranges()
%% }
-type hyper_parameter_tuning_job_config() :: #{binary() => any()}.

%% Example:
%% create_forecast_response() :: #{
%%   <<"ForecastArn">> => string()
%% }
-type create_forecast_response() :: #{binary() => any()}.

%% Example:
%% time_series_replacements_data_source() :: #{
%%   <<"Format">> => string(),
%%   <<"S3Config">> => s3_config(),
%%   <<"Schema">> => schema(),
%%   <<"TimestampFormat">> => string()
%% }
-type time_series_replacements_data_source() :: #{binary() => any()}.

%% Example:
%% delete_what_if_forecast_export_request() :: #{
%%   <<"WhatIfForecastExportArn">> := string()
%% }
-type delete_what_if_forecast_export_request() :: #{binary() => any()}.

%% Example:
%% monitor_summary() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"LastModificationTime">> => non_neg_integer(),
%%   <<"MonitorArn">> => string(),
%%   <<"MonitorName">> => string(),
%%   <<"ResourceArn">> => string(),
%%   <<"Status">> => string()
%% }
-type monitor_summary() :: #{binary() => any()}.

%% Example:
%% time_alignment_boundary() :: #{
%%   <<"DayOfMonth">> => integer(),
%%   <<"DayOfWeek">> => list(any()),
%%   <<"Hour">> => integer(),
%%   <<"Month">> => list(any())
%% }
-type time_alignment_boundary() :: #{binary() => any()}.

%% Example:
%% featurization() :: #{
%%   <<"AttributeName">> => string(),
%%   <<"FeaturizationPipeline">> => list(featurization_method())
%% }
-type featurization() :: #{binary() => any()}.

%% Example:
%% list_predictor_backtest_export_jobs_request() :: #{
%%   <<"Filters">> => list(filter()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_predictor_backtest_export_jobs_request() :: #{binary() => any()}.

%% Example:
%% time_series_identifiers() :: #{
%%   <<"DataSource">> => data_source(),
%%   <<"Format">> => string(),
%%   <<"Schema">> => schema()
%% }
-type time_series_identifiers() :: #{binary() => any()}.

%% Example:
%% create_dataset_import_job_response() :: #{
%%   <<"DatasetImportJobArn">> => string()
%% }
-type create_dataset_import_job_response() :: #{binary() => any()}.

%% Example:
%% dataset_group_summary() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"DatasetGroupArn">> => string(),
%%   <<"DatasetGroupName">> => string(),
%%   <<"LastModificationTime">> => non_neg_integer()
%% }
-type dataset_group_summary() :: #{binary() => any()}.

-type create_auto_predictor_errors() ::
    resource_already_exists_exception() | 
    limit_exceeded_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type create_dataset_errors() ::
    resource_already_exists_exception() | 
    limit_exceeded_exception() | 
    invalid_input_exception().

-type create_dataset_group_errors() ::
    resource_already_exists_exception() | 
    limit_exceeded_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type create_dataset_import_job_errors() ::
    resource_already_exists_exception() | 
    limit_exceeded_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type create_explainability_errors() ::
    resource_already_exists_exception() | 
    limit_exceeded_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type create_explainability_export_errors() ::
    resource_already_exists_exception() | 
    limit_exceeded_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type create_forecast_errors() ::
    resource_already_exists_exception() | 
    limit_exceeded_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type create_forecast_export_job_errors() ::
    resource_already_exists_exception() | 
    limit_exceeded_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type create_monitor_errors() ::
    resource_already_exists_exception() | 
    limit_exceeded_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type create_predictor_errors() ::
    resource_already_exists_exception() | 
    limit_exceeded_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type create_predictor_backtest_export_job_errors() ::
    resource_already_exists_exception() | 
    limit_exceeded_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type create_what_if_analysis_errors() ::
    resource_already_exists_exception() | 
    limit_exceeded_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type create_what_if_forecast_errors() ::
    resource_already_exists_exception() | 
    limit_exceeded_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type create_what_if_forecast_export_errors() ::
    resource_already_exists_exception() | 
    limit_exceeded_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type delete_dataset_errors() ::
    invalid_input_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type delete_dataset_group_errors() ::
    invalid_input_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type delete_dataset_import_job_errors() ::
    invalid_input_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type delete_explainability_errors() ::
    invalid_input_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type delete_explainability_export_errors() ::
    invalid_input_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type delete_forecast_errors() ::
    invalid_input_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type delete_forecast_export_job_errors() ::
    invalid_input_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type delete_monitor_errors() ::
    invalid_input_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type delete_predictor_errors() ::
    invalid_input_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type delete_predictor_backtest_export_job_errors() ::
    invalid_input_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type delete_resource_tree_errors() ::
    invalid_input_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type delete_what_if_analysis_errors() ::
    invalid_input_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type delete_what_if_forecast_errors() ::
    invalid_input_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type delete_what_if_forecast_export_errors() ::
    invalid_input_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type describe_auto_predictor_errors() ::
    invalid_input_exception() | 
    resource_not_found_exception().

-type describe_dataset_errors() ::
    invalid_input_exception() | 
    resource_not_found_exception().

-type describe_dataset_group_errors() ::
    invalid_input_exception() | 
    resource_not_found_exception().

-type describe_dataset_import_job_errors() ::
    invalid_input_exception() | 
    resource_not_found_exception().

-type describe_explainability_errors() ::
    invalid_input_exception() | 
    resource_not_found_exception().

-type describe_explainability_export_errors() ::
    invalid_input_exception() | 
    resource_not_found_exception().

-type describe_forecast_errors() ::
    invalid_input_exception() | 
    resource_not_found_exception().

-type describe_forecast_export_job_errors() ::
    invalid_input_exception() | 
    resource_not_found_exception().

-type describe_monitor_errors() ::
    invalid_input_exception() | 
    resource_not_found_exception().

-type describe_predictor_errors() ::
    invalid_input_exception() | 
    resource_not_found_exception().

-type describe_predictor_backtest_export_job_errors() ::
    invalid_input_exception() | 
    resource_not_found_exception().

-type describe_what_if_analysis_errors() ::
    invalid_input_exception() | 
    resource_not_found_exception().

-type describe_what_if_forecast_errors() ::
    invalid_input_exception() | 
    resource_not_found_exception().

-type describe_what_if_forecast_export_errors() ::
    invalid_input_exception() | 
    resource_not_found_exception().

-type get_accuracy_metrics_errors() ::
    invalid_input_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type list_dataset_groups_errors() ::
    invalid_next_token_exception().

-type list_dataset_import_jobs_errors() ::
    invalid_input_exception() | 
    invalid_next_token_exception().

-type list_datasets_errors() ::
    invalid_next_token_exception().

-type list_explainabilities_errors() ::
    invalid_input_exception() | 
    invalid_next_token_exception().

-type list_explainability_exports_errors() ::
    invalid_input_exception() | 
    invalid_next_token_exception().

-type list_forecast_export_jobs_errors() ::
    invalid_input_exception() | 
    invalid_next_token_exception().

-type list_forecasts_errors() ::
    invalid_input_exception() | 
    invalid_next_token_exception().

-type list_monitor_evaluations_errors() ::
    invalid_input_exception() | 
    invalid_next_token_exception() | 
    resource_not_found_exception().

-type list_monitors_errors() ::
    invalid_input_exception() | 
    invalid_next_token_exception().

-type list_predictor_backtest_export_jobs_errors() ::
    invalid_input_exception() | 
    invalid_next_token_exception().

-type list_predictors_errors() ::
    invalid_input_exception() | 
    invalid_next_token_exception().

-type list_tags_for_resource_errors() ::
    invalid_input_exception() | 
    resource_not_found_exception().

-type list_what_if_analyses_errors() ::
    invalid_input_exception() | 
    invalid_next_token_exception().

-type list_what_if_forecast_exports_errors() ::
    invalid_input_exception() | 
    invalid_next_token_exception().

-type list_what_if_forecasts_errors() ::
    invalid_input_exception() | 
    invalid_next_token_exception().

-type resume_resource_errors() ::
    limit_exceeded_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type stop_resource_errors() ::
    limit_exceeded_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception().

-type tag_resource_errors() ::
    limit_exceeded_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    invalid_input_exception() | 
    resource_not_found_exception().

-type update_dataset_group_errors() ::
    invalid_input_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Creates an Amazon Forecast predictor.
%%
%% Amazon Forecast creates predictors with AutoPredictor, which involves
%% applying the
%% optimal combination of algorithms to each time series in your datasets.
%% You can use
%% `CreateAutoPredictor' to create new predictors or upgrade/retrain
%% existing predictors.
%%
%% Creating new predictors
%%
%% The following parameters are required when creating a new predictor:
%%
%% `PredictorName' - A unique name for the predictor.
%%
%% `DatasetGroupArn' - The ARN of the dataset group used to train the
%% predictor.
%%
%% `ForecastFrequency' - The granularity of your forecasts (hourly,
%% daily, weekly, etc).
%%
%% `ForecastHorizon' - The number of time-steps that the model
%% predicts. The forecast horizon is also called the prediction length.
%%
%% When creating a new predictor, do not specify a value for
%% `ReferencePredictorArn'.
%%
%% Upgrading and retraining predictors
%%
%% The following parameters are required when retraining or upgrading a
%% predictor:
%%
%% `PredictorName' - A unique name for the predictor.
%%
%% `ReferencePredictorArn' - The ARN of the predictor to retrain or
%% upgrade.
%%
%% When upgrading or retraining a predictor, only specify values for the
%% `ReferencePredictorArn' and `PredictorName'.
-spec create_auto_predictor(aws_client:aws_client(), create_auto_predictor_request()) ->
    {ok, create_auto_predictor_response(), tuple()} |
    {error, any()} |
    {error, create_auto_predictor_errors(), tuple()}.
create_auto_predictor(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_auto_predictor(Client, Input, []).

-spec create_auto_predictor(aws_client:aws_client(), create_auto_predictor_request(), proplists:proplist()) ->
    {ok, create_auto_predictor_response(), tuple()} |
    {error, any()} |
    {error, create_auto_predictor_errors(), tuple()}.
create_auto_predictor(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateAutoPredictor">>, Input, Options).

%% @doc Creates an Amazon Forecast dataset.
%%
%% The information about the dataset that you provide helps
%% Forecast understand how to consume the data for model training. This
%% includes the
%% following:
%%
%% `DataFrequency'
%% - How frequently your historical
%% time-series data is collected.
%%
%% `Domain'
%% and
%%
%% `DatasetType'
%% - Each dataset has an associated dataset
%% domain and a type within the domain. Amazon Forecast provides a list of
%% predefined domains and
%% types within each domain. For each unique dataset domain and type within
%% the domain,
%% Amazon Forecast requires your data to include a minimum set of predefined
%% fields.
%%
%% `Schema'
%% - A schema specifies the fields in the dataset,
%% including the field name and data type.
%%
%% After creating a dataset, you import your training data into it and add
%% the dataset to a
%% dataset group. You use the dataset group to create a predictor. For more
%% information, see
%% Importing datasets:
%% https://docs.aws.amazon.com/forecast/latest/dg/howitworks-datasets-groups.html.
%%
%% To get a list of all your datasets, use the ListDatasets:
%% https://docs.aws.amazon.com/forecast/latest/dg/API_ListDatasets.html
%% operation.
%%
%% For example Forecast datasets, see the Amazon Forecast Sample GitHub
%% repository: https://github.com/aws-samples/amazon-forecast-samples.
%%
%% The `Status' of a dataset must be `ACTIVE' before you can import
%% training data. Use the DescribeDataset:
%% https://docs.aws.amazon.com/forecast/latest/dg/API_DescribeDataset.html
%% operation to get
%% the status.
-spec create_dataset(aws_client:aws_client(), create_dataset_request()) ->
    {ok, create_dataset_response(), tuple()} |
    {error, any()} |
    {error, create_dataset_errors(), tuple()}.
create_dataset(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_dataset(Client, Input, []).

-spec create_dataset(aws_client:aws_client(), create_dataset_request(), proplists:proplist()) ->
    {ok, create_dataset_response(), tuple()} |
    {error, any()} |
    {error, create_dataset_errors(), tuple()}.
create_dataset(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDataset">>, Input, Options).

%% @doc Creates a dataset group, which holds a collection of related
%% datasets.
%%
%% You can add
%% datasets to the dataset group when you create the dataset group, or later
%% by using the UpdateDatasetGroup:
%% https://docs.aws.amazon.com/forecast/latest/dg/API_UpdateDatasetGroup.html
%% operation.
%%
%% After creating a dataset group and adding datasets, you use the dataset
%% group when you
%% create a predictor. For more information, see Dataset groups:
%% https://docs.aws.amazon.com/forecast/latest/dg/howitworks-datasets-groups.html.
%%
%% To get a list of all your datasets groups, use the ListDatasetGroups:
%% https://docs.aws.amazon.com/forecast/latest/dg/API_ListDatasetGroups.html
%% operation.
%%
%% The `Status' of a dataset group must be `ACTIVE' before you can
%% use the dataset group to create a predictor. To get the status, use the
%% DescribeDatasetGroup:
%% https://docs.aws.amazon.com/forecast/latest/dg/API_DescribeDatasetGroup.html
%% operation.
-spec create_dataset_group(aws_client:aws_client(), create_dataset_group_request()) ->
    {ok, create_dataset_group_response(), tuple()} |
    {error, any()} |
    {error, create_dataset_group_errors(), tuple()}.
create_dataset_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_dataset_group(Client, Input, []).

-spec create_dataset_group(aws_client:aws_client(), create_dataset_group_request(), proplists:proplist()) ->
    {ok, create_dataset_group_response(), tuple()} |
    {error, any()} |
    {error, create_dataset_group_errors(), tuple()}.
create_dataset_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDatasetGroup">>, Input, Options).

%% @doc Imports your training data to an Amazon Forecast dataset.
%%
%% You provide the location of your
%% training data in an Amazon Simple Storage Service (Amazon S3) bucket and
%% the Amazon Resource Name (ARN) of the dataset
%% that you want to import the data to.
%%
%% You must specify a DataSource:
%% https://docs.aws.amazon.com/forecast/latest/dg/API_DataSource.html object
%% that includes an
%% Identity and Access Management (IAM) role that Amazon Forecast can assume
%% to access the data, as Amazon Forecast makes a copy
%% of your data and processes it in an internal Amazon Web Services system.
%% For more information, see Set up
%% permissions:
%% https://docs.aws.amazon.com/forecast/latest/dg/aws-forecast-iam-roles.html.
%%
%% The training data must be in CSV or Parquet format. The delimiter must be
%% a comma (,).
%%
%% You can specify the path to a specific file, the S3 bucket, or to a folder
%% in the S3
%% bucket. For the latter two cases, Amazon Forecast imports all files up to
%% the limit of 10,000
%% files.
%%
%% Because dataset imports are not aggregated, your most recent dataset
%% import is the one
%% that is used when training a predictor or generating a forecast. Make sure
%% that your most
%% recent dataset import contains all of the data you want to model off of,
%% and not just the new
%% data collected since the previous import.
%%
%% To get a list of all your dataset import jobs, filtered by specified
%% criteria, use the
%% ListDatasetImportJobs:
%% https://docs.aws.amazon.com/forecast/latest/dg/API_ListDatasetImportJobs.html
%% operation.
-spec create_dataset_import_job(aws_client:aws_client(), create_dataset_import_job_request()) ->
    {ok, create_dataset_import_job_response(), tuple()} |
    {error, any()} |
    {error, create_dataset_import_job_errors(), tuple()}.
create_dataset_import_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_dataset_import_job(Client, Input, []).

-spec create_dataset_import_job(aws_client:aws_client(), create_dataset_import_job_request(), proplists:proplist()) ->
    {ok, create_dataset_import_job_response(), tuple()} |
    {error, any()} |
    {error, create_dataset_import_job_errors(), tuple()}.
create_dataset_import_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDatasetImportJob">>, Input, Options).

%% @doc
%% Explainability is only available for Forecasts and Predictors generated
%% from an
%% AutoPredictor (`CreateAutoPredictor')
%%
%% Creates an Amazon Forecast Explainability.
%%
%% Explainability helps you better understand how the attributes in your
%% datasets impact
%% forecast. Amazon Forecast uses a metric called Impact scores to quantify
%% the relative
%% impact of each attribute and determine whether they increase or decrease
%% forecast
%% values.
%%
%% To enable Forecast Explainability, your predictor must include at least
%% one of the
%% following: related time series, item metadata, or additional datasets like
%% Holidays and
%% the Weather Index.
%%
%% CreateExplainability accepts either a Predictor ARN or Forecast ARN. To
%% receive
%% aggregated Impact scores for all time series and time points in your
%% datasets, provide a
%% Predictor ARN. To receive Impact scores for specific time series and time
%% points,
%% provide a Forecast ARN.
%%
%% CreateExplainability with a Predictor ARN
%%
%% You can only have one Explainability resource per predictor. If you
%% already
%% enabled `ExplainPredictor' in `CreateAutoPredictor', that
%% predictor already has an Explainability resource.
%%
%% The following parameters are required when providing a Predictor ARN:
%%
%% `ExplainabilityName' - A unique name for the Explainability.
%%
%% `ResourceArn' - The Arn of the predictor.
%%
%% `TimePointGranularity' - Must be set to “ALL”.
%%
%% `TimeSeriesGranularity' - Must be set to “ALL”.
%%
%% Do not specify a value for the following parameters:
%%
%% `DataSource' - Only valid when TimeSeriesGranularity is
%% “SPECIFIC”.
%%
%% `Schema' - Only valid when TimeSeriesGranularity is
%% “SPECIFIC”.
%%
%% `StartDateTime' - Only valid when TimePointGranularity is
%% “SPECIFIC”.
%%
%% `EndDateTime' - Only valid when TimePointGranularity is
%% “SPECIFIC”.
%%
%% CreateExplainability with a Forecast ARN
%%
%% You can specify a maximum of 50 time series and 500 time points.
%%
%% The following parameters are required when providing a Predictor ARN:
%%
%% `ExplainabilityName' - A unique name for the Explainability.
%%
%% `ResourceArn' - The Arn of the forecast.
%%
%% `TimePointGranularity' - Either “ALL” or “SPECIFIC”.
%%
%% `TimeSeriesGranularity' - Either “ALL” or “SPECIFIC”.
%%
%% If you set TimeSeriesGranularity to “SPECIFIC”, you must also provide the
%% following:
%%
%% `DataSource' - The S3 location of the CSV file specifying your time
%% series.
%%
%% `Schema' - The Schema defines the attributes and attribute types
%% listed in the Data Source.
%%
%% If you set TimePointGranularity to “SPECIFIC”, you must also provide the
%% following:
%%
%% `StartDateTime' - The first timestamp in the range of time
%% points.
%%
%% `EndDateTime' - The last timestamp in the range of time
%% points.
-spec create_explainability(aws_client:aws_client(), create_explainability_request()) ->
    {ok, create_explainability_response(), tuple()} |
    {error, any()} |
    {error, create_explainability_errors(), tuple()}.
create_explainability(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_explainability(Client, Input, []).

-spec create_explainability(aws_client:aws_client(), create_explainability_request(), proplists:proplist()) ->
    {ok, create_explainability_response(), tuple()} |
    {error, any()} |
    {error, create_explainability_errors(), tuple()}.
create_explainability(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateExplainability">>, Input, Options).

%% @doc Exports an Explainability resource created by the
%% `CreateExplainability' operation.
%%
%% Exported files are exported to an Amazon Simple Storage Service (Amazon
%% S3) bucket.
%%
%% You must specify a `DataDestination' object that includes an Amazon S3
%% bucket and an Identity and Access Management (IAM) role that Amazon
%% Forecast can assume to access the Amazon S3
%% bucket. For more information, see `aws-forecast-iam-roles'.
%%
%% The `Status' of the export job must be `ACTIVE' before you
%% can access the export in your Amazon S3 bucket. To get the status, use the
%% `DescribeExplainabilityExport' operation.
-spec create_explainability_export(aws_client:aws_client(), create_explainability_export_request()) ->
    {ok, create_explainability_export_response(), tuple()} |
    {error, any()} |
    {error, create_explainability_export_errors(), tuple()}.
create_explainability_export(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_explainability_export(Client, Input, []).

-spec create_explainability_export(aws_client:aws_client(), create_explainability_export_request(), proplists:proplist()) ->
    {ok, create_explainability_export_response(), tuple()} |
    {error, any()} |
    {error, create_explainability_export_errors(), tuple()}.
create_explainability_export(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateExplainabilityExport">>, Input, Options).

%% @doc Creates a forecast for each item in the `TARGET_TIME_SERIES'
%% dataset that was
%% used to train the predictor.
%%
%% This is known as inference. To retrieve the forecast for a single
%% item at low latency, use the operation. To
%% export the complete forecast into your Amazon Simple Storage Service
%% (Amazon S3) bucket, use the `CreateForecastExportJob' operation.
%%
%% The range of the forecast is determined by the `ForecastHorizon'
%% value, which
%% you specify in the `CreatePredictor' request. When you query a
%% forecast, you
%% can request a specific date range within the forecast.
%%
%% To get a list of all your forecasts, use the `ListForecasts'
%% operation.
%%
%% The forecasts generated by Amazon Forecast are in the same time zone as
%% the dataset that was
%% used to create the predictor.
%%
%% For more information, see `howitworks-forecast'.
%%
%% The `Status' of the forecast must be `ACTIVE' before you can query
%% or export the forecast. Use the `DescribeForecast' operation to get
%% the
%% status.
%%
%% By default, a forecast includes predictions for every item (`item_id')
%% in the dataset group that was used to train the predictor.
%% However, you can use the `TimeSeriesSelector' object to generate a
%% forecast on a subset of time series. Forecast creation is skipped for any
%% time series that you specify that are not in the input dataset. The
%% forecast export file will not contain these time series or their
%% forecasted values.
-spec create_forecast(aws_client:aws_client(), create_forecast_request()) ->
    {ok, create_forecast_response(), tuple()} |
    {error, any()} |
    {error, create_forecast_errors(), tuple()}.
create_forecast(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_forecast(Client, Input, []).

-spec create_forecast(aws_client:aws_client(), create_forecast_request(), proplists:proplist()) ->
    {ok, create_forecast_response(), tuple()} |
    {error, any()} |
    {error, create_forecast_errors(), tuple()}.
create_forecast(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateForecast">>, Input, Options).

%% @doc Exports a forecast created by the `CreateForecast' operation to
%% your
%% Amazon Simple Storage Service (Amazon S3) bucket.
%%
%% The forecast file name will match the following conventions:
%%
%% __
%%
%% where the component is in Java SimpleDateFormat
%% (yyyy-MM-ddTHH-mm-ssZ).
%%
%% You must specify a `DataDestination' object that includes an Identity
%% and Access Management
%% (IAM) role that Amazon Forecast can assume to access the Amazon S3 bucket.
%% For more information, see
%% `aws-forecast-iam-roles'.
%%
%% For more information, see `howitworks-forecast'.
%%
%% To get a list of all your forecast export jobs, use the
%% `ListForecastExportJobs' operation.
%%
%% The `Status' of the forecast export job must be `ACTIVE' before
%% you can access the forecast in your Amazon S3 bucket. To get the status,
%% use the `DescribeForecastExportJob' operation.
-spec create_forecast_export_job(aws_client:aws_client(), create_forecast_export_job_request()) ->
    {ok, create_forecast_export_job_response(), tuple()} |
    {error, any()} |
    {error, create_forecast_export_job_errors(), tuple()}.
create_forecast_export_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_forecast_export_job(Client, Input, []).

-spec create_forecast_export_job(aws_client:aws_client(), create_forecast_export_job_request(), proplists:proplist()) ->
    {ok, create_forecast_export_job_response(), tuple()} |
    {error, any()} |
    {error, create_forecast_export_job_errors(), tuple()}.
create_forecast_export_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateForecastExportJob">>, Input, Options).

%% @doc Creates a predictor monitor resource for an existing auto predictor.
%%
%% Predictor monitoring allows you to see how your predictor's
%% performance changes over time.
%% For more information, see Predictor Monitoring:
%% https://docs.aws.amazon.com/forecast/latest/dg/predictor-monitoring.html.
-spec create_monitor(aws_client:aws_client(), create_monitor_request()) ->
    {ok, create_monitor_response(), tuple()} |
    {error, any()} |
    {error, create_monitor_errors(), tuple()}.
create_monitor(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_monitor(Client, Input, []).

-spec create_monitor(aws_client:aws_client(), create_monitor_request(), proplists:proplist()) ->
    {ok, create_monitor_response(), tuple()} |
    {error, any()} |
    {error, create_monitor_errors(), tuple()}.
create_monitor(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateMonitor">>, Input, Options).

%% @doc
%% This operation creates a legacy predictor that does not include all the
%% predictor
%% functionalities provided by Amazon Forecast.
%%
%% To create a predictor that is compatible with all
%% aspects of Forecast, use `CreateAutoPredictor'.
%%
%% Creates an Amazon Forecast predictor.
%%
%% In the request, provide a dataset group and either specify an algorithm or
%% let Amazon Forecast
%% choose an algorithm for you using AutoML. If you specify an algorithm, you
%% also can override
%% algorithm-specific hyperparameters.
%%
%% Amazon Forecast uses the algorithm to train a predictor using the latest
%% version of the datasets
%% in the specified dataset group. You can then generate a forecast using the
%% `CreateForecast' operation.
%%
%% To see the evaluation metrics, use the `GetAccuracyMetrics' operation.
%%
%% You can specify a featurization configuration to fill and aggregate the
%% data fields in the
%% `TARGET_TIME_SERIES' dataset to improve model training. For more
%% information, see
%% `FeaturizationConfig'.
%%
%% For RELATED_TIME_SERIES datasets, `CreatePredictor' verifies that the
%% `DataFrequency' specified when the dataset was created matches the
%% `ForecastFrequency'. TARGET_TIME_SERIES datasets don't have this
%% restriction.
%% Amazon Forecast also verifies the delimiter and timestamp format. For more
%% information, see `howitworks-datasets-groups'.
%%
%% By default, predictors are trained and evaluated at the 0.1 (P10), 0.5
%% (P50), and 0.9
%% (P90) quantiles. You can choose custom forecast types to train and
%% evaluate your predictor by
%% setting the `ForecastTypes'.
%%
%% AutoML
%%
%% If you want Amazon Forecast to evaluate each algorithm and choose the one
%% that minimizes the
%% `objective function', set `PerformAutoML' to `true'. The
%% `objective function' is defined as the mean of the weighted losses
%% over the
%% forecast types. By default, these are the p10, p50, and p90 quantile
%% losses. For more
%% information, see `EvaluationResult'.
%%
%% When AutoML is enabled, the following properties are disallowed:
%%
%% `AlgorithmArn'
%%
%% `HPOConfig'
%%
%% `PerformHPO'
%%
%% `TrainingParameters'
%%
%% To get a list of all of your predictors, use the `ListPredictors'
%% operation.
%%
%% Before you can use the predictor to create a forecast, the `Status' of
%% the
%% predictor must be `ACTIVE', signifying that training has completed. To
%% get the
%% status, use the `DescribePredictor' operation.
-spec create_predictor(aws_client:aws_client(), create_predictor_request()) ->
    {ok, create_predictor_response(), tuple()} |
    {error, any()} |
    {error, create_predictor_errors(), tuple()}.
create_predictor(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_predictor(Client, Input, []).

-spec create_predictor(aws_client:aws_client(), create_predictor_request(), proplists:proplist()) ->
    {ok, create_predictor_response(), tuple()} |
    {error, any()} |
    {error, create_predictor_errors(), tuple()}.
create_predictor(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreatePredictor">>, Input, Options).

%% @doc Exports backtest forecasts and accuracy metrics generated by the
%% `CreateAutoPredictor' or `CreatePredictor' operations.
%%
%% Two
%% folders containing CSV or Parquet files are exported to your specified S3
%% bucket.
%%
%% The export file names will match the following conventions:
%%
%% `__.csv'
%%
%% The component is in Java SimpleDate format
%% (yyyy-MM-ddTHH-mm-ssZ).
%%
%% You must specify a `DataDestination' object that includes an Amazon S3
%% bucket and an Identity and Access Management (IAM) role that Amazon
%% Forecast can assume to access the Amazon S3
%% bucket. For more information, see `aws-forecast-iam-roles'.
%%
%% The `Status' of the export job must be `ACTIVE' before you
%% can access the export in your Amazon S3 bucket. To get the status, use the
%% `DescribePredictorBacktestExportJob' operation.
-spec create_predictor_backtest_export_job(aws_client:aws_client(), create_predictor_backtest_export_job_request()) ->
    {ok, create_predictor_backtest_export_job_response(), tuple()} |
    {error, any()} |
    {error, create_predictor_backtest_export_job_errors(), tuple()}.
create_predictor_backtest_export_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_predictor_backtest_export_job(Client, Input, []).

-spec create_predictor_backtest_export_job(aws_client:aws_client(), create_predictor_backtest_export_job_request(), proplists:proplist()) ->
    {ok, create_predictor_backtest_export_job_response(), tuple()} |
    {error, any()} |
    {error, create_predictor_backtest_export_job_errors(), tuple()}.
create_predictor_backtest_export_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreatePredictorBacktestExportJob">>, Input, Options).

%% @doc What-if analysis is a scenario modeling technique where you make a
%% hypothetical change to a time series and
%% compare the forecasts generated by these changes against the baseline,
%% unchanged time series.
%%
%% It is important to
%% remember that the purpose of a what-if analysis is to understand how a
%% forecast can change given different
%% modifications to the baseline time series.
%%
%% For example, imagine you are a clothing retailer who is considering an end
%% of season sale
%% to clear space for new styles. After creating a baseline forecast, you can
%% use a what-if
%% analysis to investigate how different sales tactics might affect your
%% goals.
%%
%% You could create a scenario where everything is given a 25% markdown, and
%% another where
%% everything is given a fixed dollar markdown. You could create a scenario
%% where the sale lasts for one week and
%% another where the sale lasts for one month.
%% With a what-if analysis, you can compare many different scenarios against
%% each other.
%%
%% Note that a what-if analysis is meant to display what the forecasting
%% model has learned and how it will behave in the scenarios that you are
%% evaluating. Do not blindly use the results of the what-if analysis to make
%% business decisions. For instance, forecasts might not be accurate for
%% novel scenarios where there is no reference available to determine whether
%% a forecast is good.
%%
%% The `TimeSeriesSelector' object defines the items that you want in the
%% what-if analysis.
-spec create_what_if_analysis(aws_client:aws_client(), create_what_if_analysis_request()) ->
    {ok, create_what_if_analysis_response(), tuple()} |
    {error, any()} |
    {error, create_what_if_analysis_errors(), tuple()}.
create_what_if_analysis(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_what_if_analysis(Client, Input, []).

-spec create_what_if_analysis(aws_client:aws_client(), create_what_if_analysis_request(), proplists:proplist()) ->
    {ok, create_what_if_analysis_response(), tuple()} |
    {error, any()} |
    {error, create_what_if_analysis_errors(), tuple()}.
create_what_if_analysis(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateWhatIfAnalysis">>, Input, Options).

%% @doc A what-if forecast is a forecast that is created from a modified
%% version of the baseline forecast.
%%
%% Each
%% what-if forecast incorporates either a replacement dataset or a set of
%% transformations to the original dataset.
-spec create_what_if_forecast(aws_client:aws_client(), create_what_if_forecast_request()) ->
    {ok, create_what_if_forecast_response(), tuple()} |
    {error, any()} |
    {error, create_what_if_forecast_errors(), tuple()}.
create_what_if_forecast(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_what_if_forecast(Client, Input, []).

-spec create_what_if_forecast(aws_client:aws_client(), create_what_if_forecast_request(), proplists:proplist()) ->
    {ok, create_what_if_forecast_response(), tuple()} |
    {error, any()} |
    {error, create_what_if_forecast_errors(), tuple()}.
create_what_if_forecast(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateWhatIfForecast">>, Input, Options).

%% @doc Exports a forecast created by the `CreateWhatIfForecast'
%% operation to your
%% Amazon Simple Storage Service (Amazon S3) bucket.
%%
%% The forecast file name will match the following conventions:
%%
%% `≈__'
%%
%% The component is in Java SimpleDateFormat
%% (yyyy-MM-ddTHH-mm-ssZ).
%%
%% You must specify a `DataDestination' object that includes an Identity
%% and Access Management
%% (IAM) role that Amazon Forecast can assume to access the Amazon S3 bucket.
%% For more information, see
%% `aws-forecast-iam-roles'.
%%
%% For more information, see `howitworks-forecast'.
%%
%% To get a list of all your what-if forecast export jobs, use the
%% `ListWhatIfForecastExports'
%% operation.
%%
%% The `Status' of the forecast export job must be `ACTIVE' before
%% you can access the forecast in your Amazon S3 bucket. To get the status,
%% use the `DescribeWhatIfForecastExport' operation.
-spec create_what_if_forecast_export(aws_client:aws_client(), create_what_if_forecast_export_request()) ->
    {ok, create_what_if_forecast_export_response(), tuple()} |
    {error, any()} |
    {error, create_what_if_forecast_export_errors(), tuple()}.
create_what_if_forecast_export(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_what_if_forecast_export(Client, Input, []).

-spec create_what_if_forecast_export(aws_client:aws_client(), create_what_if_forecast_export_request(), proplists:proplist()) ->
    {ok, create_what_if_forecast_export_response(), tuple()} |
    {error, any()} |
    {error, create_what_if_forecast_export_errors(), tuple()}.
create_what_if_forecast_export(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateWhatIfForecastExport">>, Input, Options).

%% @doc Deletes an Amazon Forecast dataset that was created using the
%% CreateDataset:
%% https://docs.aws.amazon.com/forecast/latest/dg/API_CreateDataset.html
%% operation.
%%
%% You can
%% only delete datasets that have a status of `ACTIVE' or
%% `CREATE_FAILED'.
%% To get the status use the DescribeDataset:
%% https://docs.aws.amazon.com/forecast/latest/dg/API_DescribeDataset.html
%% operation.
%%
%% Forecast does not automatically update any dataset groups that contain the
%% deleted dataset.
%% In order to update the dataset group, use the UpdateDatasetGroup:
%% https://docs.aws.amazon.com/forecast/latest/dg/API_UpdateDatasetGroup.html
%% operation,
%% omitting the deleted dataset's ARN.
-spec delete_dataset(aws_client:aws_client(), delete_dataset_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_dataset_errors(), tuple()}.
delete_dataset(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_dataset(Client, Input, []).

-spec delete_dataset(aws_client:aws_client(), delete_dataset_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_dataset_errors(), tuple()}.
delete_dataset(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDataset">>, Input, Options).

%% @doc Deletes a dataset group created using the CreateDatasetGroup:
%% https://docs.aws.amazon.com/forecast/latest/dg/API_CreateDatasetGroup.html
%% operation.
%%
%% You can only delete dataset groups that have a status of `ACTIVE',
%% `CREATE_FAILED', or `UPDATE_FAILED'. To get the status, use the
%% DescribeDatasetGroup:
%% https://docs.aws.amazon.com/forecast/latest/dg/API_DescribeDatasetGroup.html
%% operation.
%%
%% This operation deletes only the dataset group, not the datasets in the
%% group.
-spec delete_dataset_group(aws_client:aws_client(), delete_dataset_group_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_dataset_group_errors(), tuple()}.
delete_dataset_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_dataset_group(Client, Input, []).

-spec delete_dataset_group(aws_client:aws_client(), delete_dataset_group_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_dataset_group_errors(), tuple()}.
delete_dataset_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDatasetGroup">>, Input, Options).

%% @doc Deletes a dataset import job created using the
%% CreateDatasetImportJob:
%% https://docs.aws.amazon.com/forecast/latest/dg/API_CreateDatasetImportJob.html
%% operation.
%%
%% You can delete only dataset import jobs that have a status of `ACTIVE'
%% or `CREATE_FAILED'. To get the status, use the
%% DescribeDatasetImportJob:
%% https://docs.aws.amazon.com/forecast/latest/dg/API_DescribeDatasetImportJob.html
%% operation.
-spec delete_dataset_import_job(aws_client:aws_client(), delete_dataset_import_job_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_dataset_import_job_errors(), tuple()}.
delete_dataset_import_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_dataset_import_job(Client, Input, []).

-spec delete_dataset_import_job(aws_client:aws_client(), delete_dataset_import_job_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_dataset_import_job_errors(), tuple()}.
delete_dataset_import_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDatasetImportJob">>, Input, Options).

%% @doc Deletes an Explainability resource.
%%
%% You can delete only predictor that have a status of `ACTIVE' or
%% `CREATE_FAILED'. To get the status, use the
%% `DescribeExplainability' operation.
-spec delete_explainability(aws_client:aws_client(), delete_explainability_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_explainability_errors(), tuple()}.
delete_explainability(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_explainability(Client, Input, []).

-spec delete_explainability(aws_client:aws_client(), delete_explainability_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_explainability_errors(), tuple()}.
delete_explainability(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteExplainability">>, Input, Options).

%% @doc Deletes an Explainability export.
-spec delete_explainability_export(aws_client:aws_client(), delete_explainability_export_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_explainability_export_errors(), tuple()}.
delete_explainability_export(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_explainability_export(Client, Input, []).

-spec delete_explainability_export(aws_client:aws_client(), delete_explainability_export_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_explainability_export_errors(), tuple()}.
delete_explainability_export(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteExplainabilityExport">>, Input, Options).

%% @doc Deletes a forecast created using the `CreateForecast' operation.
%%
%% You can
%% delete only forecasts that have a status of `ACTIVE' or
%% `CREATE_FAILED'.
%% To get the status, use the `DescribeForecast' operation.
%%
%% You can't delete a forecast while it is being exported. After a
%% forecast is deleted, you
%% can no longer query the forecast.
-spec delete_forecast(aws_client:aws_client(), delete_forecast_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_forecast_errors(), tuple()}.
delete_forecast(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_forecast(Client, Input, []).

-spec delete_forecast(aws_client:aws_client(), delete_forecast_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_forecast_errors(), tuple()}.
delete_forecast(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteForecast">>, Input, Options).

%% @doc Deletes a forecast export job created using the
%% `CreateForecastExportJob'
%% operation.
%%
%% You can delete only export jobs that have a status of `ACTIVE' or
%% `CREATE_FAILED'. To get the status, use the
%% `DescribeForecastExportJob' operation.
-spec delete_forecast_export_job(aws_client:aws_client(), delete_forecast_export_job_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_forecast_export_job_errors(), tuple()}.
delete_forecast_export_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_forecast_export_job(Client, Input, []).

-spec delete_forecast_export_job(aws_client:aws_client(), delete_forecast_export_job_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_forecast_export_job_errors(), tuple()}.
delete_forecast_export_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteForecastExportJob">>, Input, Options).

%% @doc Deletes a monitor resource.
%%
%% You can only delete a monitor resource with a status of `ACTIVE',
%% `ACTIVE_STOPPED', `CREATE_FAILED', or `CREATE_STOPPED'.
-spec delete_monitor(aws_client:aws_client(), delete_monitor_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_monitor_errors(), tuple()}.
delete_monitor(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_monitor(Client, Input, []).

-spec delete_monitor(aws_client:aws_client(), delete_monitor_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_monitor_errors(), tuple()}.
delete_monitor(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteMonitor">>, Input, Options).

%% @doc Deletes a predictor created using the `DescribePredictor' or
%% `CreatePredictor' operations.
%%
%% You can delete only predictor that have a status of
%% `ACTIVE' or `CREATE_FAILED'. To get the status, use the
%% `DescribePredictor' operation.
-spec delete_predictor(aws_client:aws_client(), delete_predictor_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_predictor_errors(), tuple()}.
delete_predictor(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_predictor(Client, Input, []).

-spec delete_predictor(aws_client:aws_client(), delete_predictor_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_predictor_errors(), tuple()}.
delete_predictor(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeletePredictor">>, Input, Options).

%% @doc Deletes a predictor backtest export job.
-spec delete_predictor_backtest_export_job(aws_client:aws_client(), delete_predictor_backtest_export_job_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_predictor_backtest_export_job_errors(), tuple()}.
delete_predictor_backtest_export_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_predictor_backtest_export_job(Client, Input, []).

-spec delete_predictor_backtest_export_job(aws_client:aws_client(), delete_predictor_backtest_export_job_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_predictor_backtest_export_job_errors(), tuple()}.
delete_predictor_backtest_export_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeletePredictorBacktestExportJob">>, Input, Options).

%% @doc Deletes an entire resource tree.
%%
%% This operation will delete the parent resource and
%% its child resources.
%%
%% Child resources are resources that were created from another resource. For
%% example,
%% when a forecast is generated from a predictor, the forecast is the child
%% resource and
%% the predictor is the parent resource.
%%
%% Amazon Forecast resources possess the following parent-child resource
%% hierarchies:
%%
%% Dataset: dataset import jobs
%%
%% Dataset Group: predictors, predictor backtest
%% export jobs, forecasts, forecast export jobs
%%
%% Predictor: predictor backtest export jobs,
%% forecasts, forecast export jobs
%%
%% Forecast: forecast export jobs
%%
%% `DeleteResourceTree' will only delete Amazon Forecast resources, and
%% will not
%% delete datasets or exported files stored in Amazon S3.
-spec delete_resource_tree(aws_client:aws_client(), delete_resource_tree_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_resource_tree_errors(), tuple()}.
delete_resource_tree(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_resource_tree(Client, Input, []).

-spec delete_resource_tree(aws_client:aws_client(), delete_resource_tree_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_resource_tree_errors(), tuple()}.
delete_resource_tree(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteResourceTree">>, Input, Options).

%% @doc Deletes a what-if analysis created using the
%% `CreateWhatIfAnalysis'
%% operation.
%%
%% You can delete only what-if analyses that have a status of `ACTIVE' or
%% `CREATE_FAILED'. To get the status, use the
%% `DescribeWhatIfAnalysis' operation.
%%
%% You can't delete a what-if analysis while any of its forecasts are
%% being exported.
-spec delete_what_if_analysis(aws_client:aws_client(), delete_what_if_analysis_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_what_if_analysis_errors(), tuple()}.
delete_what_if_analysis(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_what_if_analysis(Client, Input, []).

-spec delete_what_if_analysis(aws_client:aws_client(), delete_what_if_analysis_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_what_if_analysis_errors(), tuple()}.
delete_what_if_analysis(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteWhatIfAnalysis">>, Input, Options).

%% @doc Deletes a what-if forecast created using the
%% `CreateWhatIfForecast'
%% operation.
%%
%% You can delete only what-if forecasts that have a status of `ACTIVE'
%% or `CREATE_FAILED'. To get the status, use the
%% `DescribeWhatIfForecast' operation.
%%
%% You can't delete a what-if forecast while it is being exported. After
%% a what-if forecast is deleted, you can no longer query the what-if
%% analysis.
-spec delete_what_if_forecast(aws_client:aws_client(), delete_what_if_forecast_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_what_if_forecast_errors(), tuple()}.
delete_what_if_forecast(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_what_if_forecast(Client, Input, []).

-spec delete_what_if_forecast(aws_client:aws_client(), delete_what_if_forecast_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_what_if_forecast_errors(), tuple()}.
delete_what_if_forecast(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteWhatIfForecast">>, Input, Options).

%% @doc Deletes a what-if forecast export created using the
%% `CreateWhatIfForecastExport'
%% operation.
%%
%% You can delete only what-if forecast exports that have a status of
%% `ACTIVE' or `CREATE_FAILED'. To get the status, use the
%% `DescribeWhatIfForecastExport' operation.
-spec delete_what_if_forecast_export(aws_client:aws_client(), delete_what_if_forecast_export_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_what_if_forecast_export_errors(), tuple()}.
delete_what_if_forecast_export(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_what_if_forecast_export(Client, Input, []).

-spec delete_what_if_forecast_export(aws_client:aws_client(), delete_what_if_forecast_export_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_what_if_forecast_export_errors(), tuple()}.
delete_what_if_forecast_export(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteWhatIfForecastExport">>, Input, Options).

%% @doc Describes a predictor created using the CreateAutoPredictor
%% operation.
-spec describe_auto_predictor(aws_client:aws_client(), describe_auto_predictor_request()) ->
    {ok, describe_auto_predictor_response(), tuple()} |
    {error, any()} |
    {error, describe_auto_predictor_errors(), tuple()}.
describe_auto_predictor(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_auto_predictor(Client, Input, []).

-spec describe_auto_predictor(aws_client:aws_client(), describe_auto_predictor_request(), proplists:proplist()) ->
    {ok, describe_auto_predictor_response(), tuple()} |
    {error, any()} |
    {error, describe_auto_predictor_errors(), tuple()}.
describe_auto_predictor(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAutoPredictor">>, Input, Options).

%% @doc Describes an Amazon Forecast dataset created using the CreateDataset:
%% https://docs.aws.amazon.com/forecast/latest/dg/API_CreateDataset.html
%% operation.
%%
%% In addition to listing the parameters specified in the `CreateDataset'
%% request,
%% this operation includes the following dataset properties:
%%
%% `CreationTime'
%%
%% `LastModificationTime'
%%
%% `Status'
-spec describe_dataset(aws_client:aws_client(), describe_dataset_request()) ->
    {ok, describe_dataset_response(), tuple()} |
    {error, any()} |
    {error, describe_dataset_errors(), tuple()}.
describe_dataset(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_dataset(Client, Input, []).

-spec describe_dataset(aws_client:aws_client(), describe_dataset_request(), proplists:proplist()) ->
    {ok, describe_dataset_response(), tuple()} |
    {error, any()} |
    {error, describe_dataset_errors(), tuple()}.
describe_dataset(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDataset">>, Input, Options).

%% @doc Describes a dataset group created using the CreateDatasetGroup:
%% https://docs.aws.amazon.com/forecast/latest/dg/API_CreateDatasetGroup.html
%% operation.
%%
%% In addition to listing the parameters provided in the
%% `CreateDatasetGroup'
%% request, this operation includes the following properties:
%%
%% `DatasetArns' - The datasets belonging to the group.
%%
%% `CreationTime'
%%
%% `LastModificationTime'
%%
%% `Status'
-spec describe_dataset_group(aws_client:aws_client(), describe_dataset_group_request()) ->
    {ok, describe_dataset_group_response(), tuple()} |
    {error, any()} |
    {error, describe_dataset_group_errors(), tuple()}.
describe_dataset_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_dataset_group(Client, Input, []).

-spec describe_dataset_group(aws_client:aws_client(), describe_dataset_group_request(), proplists:proplist()) ->
    {ok, describe_dataset_group_response(), tuple()} |
    {error, any()} |
    {error, describe_dataset_group_errors(), tuple()}.
describe_dataset_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDatasetGroup">>, Input, Options).

%% @doc Describes a dataset import job created using the
%% CreateDatasetImportJob:
%% https://docs.aws.amazon.com/forecast/latest/dg/API_CreateDatasetImportJob.html
%% operation.
%%
%% In addition to listing the parameters provided in the
%% `CreateDatasetImportJob'
%% request, this operation includes the following properties:
%%
%% `CreationTime'
%%
%% `LastModificationTime'
%%
%% `DataSize'
%%
%% `FieldStatistics'
%%
%% `Status'
%%
%% `Message' - If an error occurred, information about the error.
-spec describe_dataset_import_job(aws_client:aws_client(), describe_dataset_import_job_request()) ->
    {ok, describe_dataset_import_job_response(), tuple()} |
    {error, any()} |
    {error, describe_dataset_import_job_errors(), tuple()}.
describe_dataset_import_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_dataset_import_job(Client, Input, []).

-spec describe_dataset_import_job(aws_client:aws_client(), describe_dataset_import_job_request(), proplists:proplist()) ->
    {ok, describe_dataset_import_job_response(), tuple()} |
    {error, any()} |
    {error, describe_dataset_import_job_errors(), tuple()}.
describe_dataset_import_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDatasetImportJob">>, Input, Options).

%% @doc Describes an Explainability resource created using the
%% `CreateExplainability' operation.
-spec describe_explainability(aws_client:aws_client(), describe_explainability_request()) ->
    {ok, describe_explainability_response(), tuple()} |
    {error, any()} |
    {error, describe_explainability_errors(), tuple()}.
describe_explainability(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_explainability(Client, Input, []).

-spec describe_explainability(aws_client:aws_client(), describe_explainability_request(), proplists:proplist()) ->
    {ok, describe_explainability_response(), tuple()} |
    {error, any()} |
    {error, describe_explainability_errors(), tuple()}.
describe_explainability(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeExplainability">>, Input, Options).

%% @doc Describes an Explainability export created using the
%% `CreateExplainabilityExport' operation.
-spec describe_explainability_export(aws_client:aws_client(), describe_explainability_export_request()) ->
    {ok, describe_explainability_export_response(), tuple()} |
    {error, any()} |
    {error, describe_explainability_export_errors(), tuple()}.
describe_explainability_export(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_explainability_export(Client, Input, []).

-spec describe_explainability_export(aws_client:aws_client(), describe_explainability_export_request(), proplists:proplist()) ->
    {ok, describe_explainability_export_response(), tuple()} |
    {error, any()} |
    {error, describe_explainability_export_errors(), tuple()}.
describe_explainability_export(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeExplainabilityExport">>, Input, Options).

%% @doc Describes a forecast created using the `CreateForecast'
%% operation.
%%
%% In addition to listing the properties provided in the `CreateForecast'
%% request,
%% this operation lists the following properties:
%%
%% `DatasetGroupArn' - The dataset group that provided the training
%% data.
%%
%% `CreationTime'
%%
%% `LastModificationTime'
%%
%% `Status'
%%
%% `Message' - If an error occurred, information about the error.
-spec describe_forecast(aws_client:aws_client(), describe_forecast_request()) ->
    {ok, describe_forecast_response(), tuple()} |
    {error, any()} |
    {error, describe_forecast_errors(), tuple()}.
describe_forecast(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_forecast(Client, Input, []).

-spec describe_forecast(aws_client:aws_client(), describe_forecast_request(), proplists:proplist()) ->
    {ok, describe_forecast_response(), tuple()} |
    {error, any()} |
    {error, describe_forecast_errors(), tuple()}.
describe_forecast(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeForecast">>, Input, Options).

%% @doc Describes a forecast export job created using the
%% `CreateForecastExportJob' operation.
%%
%% In addition to listing the properties provided by the user in the
%% `CreateForecastExportJob' request, this operation lists the following
%% properties:
%%
%% `CreationTime'
%%
%% `LastModificationTime'
%%
%% `Status'
%%
%% `Message' - If an error occurred, information about the error.
-spec describe_forecast_export_job(aws_client:aws_client(), describe_forecast_export_job_request()) ->
    {ok, describe_forecast_export_job_response(), tuple()} |
    {error, any()} |
    {error, describe_forecast_export_job_errors(), tuple()}.
describe_forecast_export_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_forecast_export_job(Client, Input, []).

-spec describe_forecast_export_job(aws_client:aws_client(), describe_forecast_export_job_request(), proplists:proplist()) ->
    {ok, describe_forecast_export_job_response(), tuple()} |
    {error, any()} |
    {error, describe_forecast_export_job_errors(), tuple()}.
describe_forecast_export_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeForecastExportJob">>, Input, Options).

%% @doc Describes a monitor resource.
%%
%% In addition to listing the properties provided in the `CreateMonitor'
%% request, this operation lists the following properties:
%%
%% `Baseline'
%%
%% `CreationTime'
%%
%% `LastEvaluationTime'
%%
%% `LastEvaluationState'
%%
%% `LastModificationTime'
%%
%% `Message'
%%
%% `Status'
-spec describe_monitor(aws_client:aws_client(), describe_monitor_request()) ->
    {ok, describe_monitor_response(), tuple()} |
    {error, any()} |
    {error, describe_monitor_errors(), tuple()}.
describe_monitor(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_monitor(Client, Input, []).

-spec describe_monitor(aws_client:aws_client(), describe_monitor_request(), proplists:proplist()) ->
    {ok, describe_monitor_response(), tuple()} |
    {error, any()} |
    {error, describe_monitor_errors(), tuple()}.
describe_monitor(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeMonitor">>, Input, Options).

%% @doc
%% This operation is only valid for legacy predictors created with
%% CreatePredictor.
%%
%% If you
%% are not using a legacy predictor, use `DescribeAutoPredictor'.
%%
%% Describes a predictor created using the `CreatePredictor'
%% operation.
%%
%% In addition to listing the properties provided in the
%% `CreatePredictor'
%% request, this operation lists the following properties:
%%
%% `DatasetImportJobArns' - The dataset import jobs used to import
%% training
%% data.
%%
%% `AutoMLAlgorithmArns' - If AutoML is performed, the algorithms that
%% were
%% evaluated.
%%
%% `CreationTime'
%%
%% `LastModificationTime'
%%
%% `Status'
%%
%% `Message' - If an error occurred, information about the error.
-spec describe_predictor(aws_client:aws_client(), describe_predictor_request()) ->
    {ok, describe_predictor_response(), tuple()} |
    {error, any()} |
    {error, describe_predictor_errors(), tuple()}.
describe_predictor(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_predictor(Client, Input, []).

-spec describe_predictor(aws_client:aws_client(), describe_predictor_request(), proplists:proplist()) ->
    {ok, describe_predictor_response(), tuple()} |
    {error, any()} |
    {error, describe_predictor_errors(), tuple()}.
describe_predictor(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribePredictor">>, Input, Options).

%% @doc Describes a predictor backtest export job created using the
%% `CreatePredictorBacktestExportJob' operation.
%%
%% In addition to listing the properties provided by the user in the
%% `CreatePredictorBacktestExportJob' request, this operation lists the
%% following properties:
%%
%% `CreationTime'
%%
%% `LastModificationTime'
%%
%% `Status'
%%
%% `Message' (if an error occurred)
-spec describe_predictor_backtest_export_job(aws_client:aws_client(), describe_predictor_backtest_export_job_request()) ->
    {ok, describe_predictor_backtest_export_job_response(), tuple()} |
    {error, any()} |
    {error, describe_predictor_backtest_export_job_errors(), tuple()}.
describe_predictor_backtest_export_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_predictor_backtest_export_job(Client, Input, []).

-spec describe_predictor_backtest_export_job(aws_client:aws_client(), describe_predictor_backtest_export_job_request(), proplists:proplist()) ->
    {ok, describe_predictor_backtest_export_job_response(), tuple()} |
    {error, any()} |
    {error, describe_predictor_backtest_export_job_errors(), tuple()}.
describe_predictor_backtest_export_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribePredictorBacktestExportJob">>, Input, Options).

%% @doc Describes the what-if analysis created using the
%% `CreateWhatIfAnalysis' operation.
%%
%% In addition to listing the properties provided in the
%% `CreateWhatIfAnalysis' request, this operation lists the following
%% properties:
%%
%% `CreationTime'
%%
%% `LastModificationTime'
%%
%% `Message' - If an error occurred, information about the error.
%%
%% `Status'
-spec describe_what_if_analysis(aws_client:aws_client(), describe_what_if_analysis_request()) ->
    {ok, describe_what_if_analysis_response(), tuple()} |
    {error, any()} |
    {error, describe_what_if_analysis_errors(), tuple()}.
describe_what_if_analysis(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_what_if_analysis(Client, Input, []).

-spec describe_what_if_analysis(aws_client:aws_client(), describe_what_if_analysis_request(), proplists:proplist()) ->
    {ok, describe_what_if_analysis_response(), tuple()} |
    {error, any()} |
    {error, describe_what_if_analysis_errors(), tuple()}.
describe_what_if_analysis(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeWhatIfAnalysis">>, Input, Options).

%% @doc Describes the what-if forecast created using the
%% `CreateWhatIfForecast' operation.
%%
%% In addition to listing the properties provided in the
%% `CreateWhatIfForecast' request, this operation lists the following
%% properties:
%%
%% `CreationTime'
%%
%% `LastModificationTime'
%%
%% `Message' - If an error occurred, information about the error.
%%
%% `Status'
-spec describe_what_if_forecast(aws_client:aws_client(), describe_what_if_forecast_request()) ->
    {ok, describe_what_if_forecast_response(), tuple()} |
    {error, any()} |
    {error, describe_what_if_forecast_errors(), tuple()}.
describe_what_if_forecast(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_what_if_forecast(Client, Input, []).

-spec describe_what_if_forecast(aws_client:aws_client(), describe_what_if_forecast_request(), proplists:proplist()) ->
    {ok, describe_what_if_forecast_response(), tuple()} |
    {error, any()} |
    {error, describe_what_if_forecast_errors(), tuple()}.
describe_what_if_forecast(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeWhatIfForecast">>, Input, Options).

%% @doc Describes the what-if forecast export created using the
%% `CreateWhatIfForecastExport' operation.
%%
%% In addition to listing the properties provided in the
%% `CreateWhatIfForecastExport' request, this operation lists the
%% following properties:
%%
%% `CreationTime'
%%
%% `LastModificationTime'
%%
%% `Message' - If an error occurred, information about the error.
%%
%% `Status'
-spec describe_what_if_forecast_export(aws_client:aws_client(), describe_what_if_forecast_export_request()) ->
    {ok, describe_what_if_forecast_export_response(), tuple()} |
    {error, any()} |
    {error, describe_what_if_forecast_export_errors(), tuple()}.
describe_what_if_forecast_export(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_what_if_forecast_export(Client, Input, []).

-spec describe_what_if_forecast_export(aws_client:aws_client(), describe_what_if_forecast_export_request(), proplists:proplist()) ->
    {ok, describe_what_if_forecast_export_response(), tuple()} |
    {error, any()} |
    {error, describe_what_if_forecast_export_errors(), tuple()}.
describe_what_if_forecast_export(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeWhatIfForecastExport">>, Input, Options).

%% @doc Provides metrics on the accuracy of the models that were trained by
%% the `CreatePredictor' operation.
%%
%% Use metrics to see how well the model performed and
%% to decide whether to use the predictor to generate a forecast. For more
%% information, see
%% Predictor
%% Metrics: https://docs.aws.amazon.com/forecast/latest/dg/metrics.html.
%%
%% This operation generates metrics for each backtest window that was
%% evaluated. The number
%% of backtest windows (`NumberOfBacktestWindows') is specified using the
%% `EvaluationParameters' object, which is optionally included in the
%% `CreatePredictor' request. If `NumberOfBacktestWindows' isn't
%% specified, the number defaults to one.
%%
%% The parameters of the `filling' method determine which items
%% contribute to the
%% metrics. If you want all items to contribute, specify `zero'. If you
%% want only
%% those items that have complete data in the range being evaluated to
%% contribute, specify
%% `nan'. For more information, see `FeaturizationMethod'.
%%
%% Before you can get accuracy metrics, the `Status' of the predictor
%% must be
%% `ACTIVE', signifying that training has completed. To get the status,
%% use the
%% `DescribePredictor' operation.
-spec get_accuracy_metrics(aws_client:aws_client(), get_accuracy_metrics_request()) ->
    {ok, get_accuracy_metrics_response(), tuple()} |
    {error, any()} |
    {error, get_accuracy_metrics_errors(), tuple()}.
get_accuracy_metrics(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_accuracy_metrics(Client, Input, []).

-spec get_accuracy_metrics(aws_client:aws_client(), get_accuracy_metrics_request(), proplists:proplist()) ->
    {ok, get_accuracy_metrics_response(), tuple()} |
    {error, any()} |
    {error, get_accuracy_metrics_errors(), tuple()}.
get_accuracy_metrics(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAccuracyMetrics">>, Input, Options).

%% @doc Returns a list of dataset groups created using the
%% CreateDatasetGroup:
%% https://docs.aws.amazon.com/forecast/latest/dg/API_CreateDatasetGroup.html
%% operation.
%%
%% For each dataset group, this operation returns a summary of its
%% properties, including its
%% Amazon Resource Name (ARN). You can retrieve the complete set of
%% properties by using the
%% dataset group ARN with the DescribeDatasetGroup:
%% https://docs.aws.amazon.com/forecast/latest/dg/API_DescribeDatasetGroup.html
%% operation.
-spec list_dataset_groups(aws_client:aws_client(), list_dataset_groups_request()) ->
    {ok, list_dataset_groups_response(), tuple()} |
    {error, any()} |
    {error, list_dataset_groups_errors(), tuple()}.
list_dataset_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_dataset_groups(Client, Input, []).

-spec list_dataset_groups(aws_client:aws_client(), list_dataset_groups_request(), proplists:proplist()) ->
    {ok, list_dataset_groups_response(), tuple()} |
    {error, any()} |
    {error, list_dataset_groups_errors(), tuple()}.
list_dataset_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDatasetGroups">>, Input, Options).

%% @doc Returns a list of dataset import jobs created using the
%% CreateDatasetImportJob:
%% https://docs.aws.amazon.com/forecast/latest/dg/API_CreateDatasetImportJob.html
%% operation.
%%
%% For each import job, this operation returns a summary of its properties,
%% including
%% its Amazon Resource Name (ARN). You can retrieve the complete set of
%% properties by using the
%% ARN with the DescribeDatasetImportJob:
%% https://docs.aws.amazon.com/forecast/latest/dg/API_DescribeDatasetImportJob.html
%% operation. You can filter the list by providing an array of Filter:
%% https://docs.aws.amazon.com/forecast/latest/dg/API_Filter.html objects.
-spec list_dataset_import_jobs(aws_client:aws_client(), list_dataset_import_jobs_request()) ->
    {ok, list_dataset_import_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_dataset_import_jobs_errors(), tuple()}.
list_dataset_import_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_dataset_import_jobs(Client, Input, []).

-spec list_dataset_import_jobs(aws_client:aws_client(), list_dataset_import_jobs_request(), proplists:proplist()) ->
    {ok, list_dataset_import_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_dataset_import_jobs_errors(), tuple()}.
list_dataset_import_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDatasetImportJobs">>, Input, Options).

%% @doc Returns a list of datasets created using the CreateDataset:
%% https://docs.aws.amazon.com/forecast/latest/dg/API_CreateDataset.html
%% operation.
%%
%% For each
%% dataset, a summary of its properties, including its Amazon Resource Name
%% (ARN), is returned.
%% To retrieve the complete set of properties, use the ARN with the
%% DescribeDataset:
%% https://docs.aws.amazon.com/forecast/latest/dg/API_DescribeDataset.html
%% operation.
-spec list_datasets(aws_client:aws_client(), list_datasets_request()) ->
    {ok, list_datasets_response(), tuple()} |
    {error, any()} |
    {error, list_datasets_errors(), tuple()}.
list_datasets(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_datasets(Client, Input, []).

-spec list_datasets(aws_client:aws_client(), list_datasets_request(), proplists:proplist()) ->
    {ok, list_datasets_response(), tuple()} |
    {error, any()} |
    {error, list_datasets_errors(), tuple()}.
list_datasets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDatasets">>, Input, Options).

%% @doc Returns a list of Explainability resources created using the
%% `CreateExplainability' operation.
%%
%% This operation returns a summary for
%% each Explainability. You can filter the list using an array of
%% `Filter'
%% objects.
%%
%% To retrieve the complete set of properties for a particular Explainability
%% resource,
%% use the ARN with the `DescribeExplainability' operation.
-spec list_explainabilities(aws_client:aws_client(), list_explainabilities_request()) ->
    {ok, list_explainabilities_response(), tuple()} |
    {error, any()} |
    {error, list_explainabilities_errors(), tuple()}.
list_explainabilities(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_explainabilities(Client, Input, []).

-spec list_explainabilities(aws_client:aws_client(), list_explainabilities_request(), proplists:proplist()) ->
    {ok, list_explainabilities_response(), tuple()} |
    {error, any()} |
    {error, list_explainabilities_errors(), tuple()}.
list_explainabilities(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListExplainabilities">>, Input, Options).

%% @doc Returns a list of Explainability exports created using the
%% `CreateExplainabilityExport' operation.
%%
%% This operation returns a summary
%% for each Explainability export. You can filter the list using an array of
%% `Filter' objects.
%%
%% To retrieve the complete set of properties for a particular Explainability
%% export, use
%% the ARN with the `DescribeExplainability' operation.
-spec list_explainability_exports(aws_client:aws_client(), list_explainability_exports_request()) ->
    {ok, list_explainability_exports_response(), tuple()} |
    {error, any()} |
    {error, list_explainability_exports_errors(), tuple()}.
list_explainability_exports(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_explainability_exports(Client, Input, []).

-spec list_explainability_exports(aws_client:aws_client(), list_explainability_exports_request(), proplists:proplist()) ->
    {ok, list_explainability_exports_response(), tuple()} |
    {error, any()} |
    {error, list_explainability_exports_errors(), tuple()}.
list_explainability_exports(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListExplainabilityExports">>, Input, Options).

%% @doc Returns a list of forecast export jobs created using the
%% `CreateForecastExportJob' operation.
%%
%% For each forecast export job, this operation
%% returns a summary of its properties, including its Amazon Resource Name
%% (ARN). To retrieve the
%% complete set of properties, use the ARN with the
%% `DescribeForecastExportJob'
%% operation. You can filter the list using an array of `Filter' objects.
-spec list_forecast_export_jobs(aws_client:aws_client(), list_forecast_export_jobs_request()) ->
    {ok, list_forecast_export_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_forecast_export_jobs_errors(), tuple()}.
list_forecast_export_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_forecast_export_jobs(Client, Input, []).

-spec list_forecast_export_jobs(aws_client:aws_client(), list_forecast_export_jobs_request(), proplists:proplist()) ->
    {ok, list_forecast_export_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_forecast_export_jobs_errors(), tuple()}.
list_forecast_export_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListForecastExportJobs">>, Input, Options).

%% @doc Returns a list of forecasts created using the `CreateForecast'
%% operation.
%%
%% For each forecast, this operation returns a summary of its properties,
%% including its Amazon
%% Resource Name (ARN). To retrieve the complete set of properties, specify
%% the ARN with the
%% `DescribeForecast' operation. You can filter the list using an array
%% of
%% `Filter' objects.
-spec list_forecasts(aws_client:aws_client(), list_forecasts_request()) ->
    {ok, list_forecasts_response(), tuple()} |
    {error, any()} |
    {error, list_forecasts_errors(), tuple()}.
list_forecasts(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_forecasts(Client, Input, []).

-spec list_forecasts(aws_client:aws_client(), list_forecasts_request(), proplists:proplist()) ->
    {ok, list_forecasts_response(), tuple()} |
    {error, any()} |
    {error, list_forecasts_errors(), tuple()}.
list_forecasts(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListForecasts">>, Input, Options).

%% @doc Returns a list of the monitoring evaluation results and predictor
%% events collected by
%% the monitor resource during different windows of time.
%%
%% For information about monitoring see `predictor-monitoring'. For
%% more information about retrieving monitoring results see Viewing
%% Monitoring Results:
%% https://docs.aws.amazon.com/forecast/latest/dg/predictor-monitoring-results.html.
-spec list_monitor_evaluations(aws_client:aws_client(), list_monitor_evaluations_request()) ->
    {ok, list_monitor_evaluations_response(), tuple()} |
    {error, any()} |
    {error, list_monitor_evaluations_errors(), tuple()}.
list_monitor_evaluations(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_monitor_evaluations(Client, Input, []).

-spec list_monitor_evaluations(aws_client:aws_client(), list_monitor_evaluations_request(), proplists:proplist()) ->
    {ok, list_monitor_evaluations_response(), tuple()} |
    {error, any()} |
    {error, list_monitor_evaluations_errors(), tuple()}.
list_monitor_evaluations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListMonitorEvaluations">>, Input, Options).

%% @doc Returns a list of monitors created with the `CreateMonitor'
%% operation and `CreateAutoPredictor' operation.
%%
%% For each monitor resource, this operation returns of a summary of its
%% properties, including its Amazon Resource Name (ARN). You
%% can retrieve a complete set of properties of a monitor resource by specify
%% the monitor's ARN in the `DescribeMonitor' operation.
-spec list_monitors(aws_client:aws_client(), list_monitors_request()) ->
    {ok, list_monitors_response(), tuple()} |
    {error, any()} |
    {error, list_monitors_errors(), tuple()}.
list_monitors(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_monitors(Client, Input, []).

-spec list_monitors(aws_client:aws_client(), list_monitors_request(), proplists:proplist()) ->
    {ok, list_monitors_response(), tuple()} |
    {error, any()} |
    {error, list_monitors_errors(), tuple()}.
list_monitors(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListMonitors">>, Input, Options).

%% @doc Returns a list of predictor backtest export jobs created using the
%% `CreatePredictorBacktestExportJob' operation.
%%
%% This operation returns a
%% summary for each backtest export job. You can filter the list using an
%% array of `Filter' objects.
%%
%% To retrieve the complete set of properties for a particular backtest
%% export job, use
%% the ARN with the `DescribePredictorBacktestExportJob' operation.
-spec list_predictor_backtest_export_jobs(aws_client:aws_client(), list_predictor_backtest_export_jobs_request()) ->
    {ok, list_predictor_backtest_export_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_predictor_backtest_export_jobs_errors(), tuple()}.
list_predictor_backtest_export_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_predictor_backtest_export_jobs(Client, Input, []).

-spec list_predictor_backtest_export_jobs(aws_client:aws_client(), list_predictor_backtest_export_jobs_request(), proplists:proplist()) ->
    {ok, list_predictor_backtest_export_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_predictor_backtest_export_jobs_errors(), tuple()}.
list_predictor_backtest_export_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPredictorBacktestExportJobs">>, Input, Options).

%% @doc Returns a list of predictors created using the
%% `CreateAutoPredictor' or
%% `CreatePredictor' operations.
%%
%% For each predictor, this operation returns a
%% summary of its properties, including its Amazon Resource Name (ARN).
%%
%% You can retrieve the complete set of properties by using the ARN with the
%% `DescribeAutoPredictor' and `DescribePredictor' operations. You
%% can filter the list using an array of `Filter' objects.
-spec list_predictors(aws_client:aws_client(), list_predictors_request()) ->
    {ok, list_predictors_response(), tuple()} |
    {error, any()} |
    {error, list_predictors_errors(), tuple()}.
list_predictors(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_predictors(Client, Input, []).

-spec list_predictors(aws_client:aws_client(), list_predictors_request(), proplists:proplist()) ->
    {ok, list_predictors_response(), tuple()} |
    {error, any()} |
    {error, list_predictors_errors(), tuple()}.
list_predictors(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPredictors">>, Input, Options).

%% @doc Lists the tags for an Amazon Forecast resource.
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

%% @doc Returns a list of what-if analyses created using the
%% `CreateWhatIfAnalysis' operation.
%%
%% For each what-if analysis, this operation returns a summary of its
%% properties, including its Amazon Resource Name (ARN). You can retrieve the
%% complete set of properties by using the what-if analysis ARN with the
%% `DescribeWhatIfAnalysis' operation.
-spec list_what_if_analyses(aws_client:aws_client(), list_what_if_analyses_request()) ->
    {ok, list_what_if_analyses_response(), tuple()} |
    {error, any()} |
    {error, list_what_if_analyses_errors(), tuple()}.
list_what_if_analyses(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_what_if_analyses(Client, Input, []).

-spec list_what_if_analyses(aws_client:aws_client(), list_what_if_analyses_request(), proplists:proplist()) ->
    {ok, list_what_if_analyses_response(), tuple()} |
    {error, any()} |
    {error, list_what_if_analyses_errors(), tuple()}.
list_what_if_analyses(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListWhatIfAnalyses">>, Input, Options).

%% @doc Returns a list of what-if forecast exports created using the
%% `CreateWhatIfForecastExport' operation.
%%
%% For each what-if forecast export, this operation returns a summary of its
%% properties, including its Amazon Resource Name (ARN). You can retrieve the
%% complete set of properties by using the what-if forecast export ARN with
%% the `DescribeWhatIfForecastExport' operation.
-spec list_what_if_forecast_exports(aws_client:aws_client(), list_what_if_forecast_exports_request()) ->
    {ok, list_what_if_forecast_exports_response(), tuple()} |
    {error, any()} |
    {error, list_what_if_forecast_exports_errors(), tuple()}.
list_what_if_forecast_exports(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_what_if_forecast_exports(Client, Input, []).

-spec list_what_if_forecast_exports(aws_client:aws_client(), list_what_if_forecast_exports_request(), proplists:proplist()) ->
    {ok, list_what_if_forecast_exports_response(), tuple()} |
    {error, any()} |
    {error, list_what_if_forecast_exports_errors(), tuple()}.
list_what_if_forecast_exports(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListWhatIfForecastExports">>, Input, Options).

%% @doc Returns a list of what-if forecasts created using the
%% `CreateWhatIfForecast' operation.
%%
%% For each what-if forecast, this operation returns a summary of its
%% properties, including its Amazon Resource Name (ARN). You can retrieve the
%% complete set of properties by using the what-if forecast ARN with the
%% `DescribeWhatIfForecast' operation.
-spec list_what_if_forecasts(aws_client:aws_client(), list_what_if_forecasts_request()) ->
    {ok, list_what_if_forecasts_response(), tuple()} |
    {error, any()} |
    {error, list_what_if_forecasts_errors(), tuple()}.
list_what_if_forecasts(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_what_if_forecasts(Client, Input, []).

-spec list_what_if_forecasts(aws_client:aws_client(), list_what_if_forecasts_request(), proplists:proplist()) ->
    {ok, list_what_if_forecasts_response(), tuple()} |
    {error, any()} |
    {error, list_what_if_forecasts_errors(), tuple()}.
list_what_if_forecasts(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListWhatIfForecasts">>, Input, Options).

%% @doc Resumes a stopped monitor resource.
-spec resume_resource(aws_client:aws_client(), resume_resource_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, resume_resource_errors(), tuple()}.
resume_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    resume_resource(Client, Input, []).

-spec resume_resource(aws_client:aws_client(), resume_resource_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, resume_resource_errors(), tuple()}.
resume_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ResumeResource">>, Input, Options).

%% @doc Stops a resource.
%%
%% The resource undergoes the following states: `CREATE_STOPPING' and
%% `CREATE_STOPPED'. You cannot resume a resource once it has been
%% stopped.
%%
%% This operation can be applied to the following resources (and their
%% corresponding child
%% resources):
%%
%% Dataset Import Job
%%
%% Predictor Job
%%
%% Forecast Job
%%
%% Forecast Export Job
%%
%% Predictor Backtest Export Job
%%
%% Explainability Job
%%
%% Explainability Export Job
-spec stop_resource(aws_client:aws_client(), stop_resource_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, stop_resource_errors(), tuple()}.
stop_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_resource(Client, Input, []).

-spec stop_resource(aws_client:aws_client(), stop_resource_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, stop_resource_errors(), tuple()}.
stop_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopResource">>, Input, Options).

%% @doc Associates the specified tags to a resource with the specified
%% `resourceArn'.
%%
%% If existing tags on a resource are not specified in the request
%% parameters, they are not
%% changed. When a resource is deleted, the tags associated with that
%% resource are also
%% deleted.
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

%% @doc Deletes the specified tags from a resource.
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

%% @doc Replaces the datasets in a dataset group with the specified datasets.
%%
%% The `Status' of the dataset group must be `ACTIVE' before you can
%% use the dataset group to create a predictor. Use the DescribeDatasetGroup:
%% https://docs.aws.amazon.com/forecast/latest/dg/API_DescribeDatasetGroup.html
%% operation to get the status.
-spec update_dataset_group(aws_client:aws_client(), update_dataset_group_request()) ->
    {ok, update_dataset_group_response(), tuple()} |
    {error, any()} |
    {error, update_dataset_group_errors(), tuple()}.
update_dataset_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_dataset_group(Client, Input, []).

-spec update_dataset_group(aws_client:aws_client(), update_dataset_group_request(), proplists:proplist()) ->
    {ok, update_dataset_group_response(), tuple()} |
    {error, any()} |
    {error, update_dataset_group_errors(), tuple()}.
update_dataset_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateDatasetGroup">>, Input, Options).

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
    Client1 = Client#{service => <<"forecast">>},
    Host = build_host(<<"forecast">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"AmazonForecast.", Action/binary>>}
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
