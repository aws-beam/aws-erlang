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

%%====================================================================
%% API
%%====================================================================

%% @doc Creates an Amazon Forecast predictor.
%%
%% Amazon Forecast creates predictors with AutoPredictor, which involves
%% applying the optimal combination of algorithms to each time series in your
%% datasets. You can use `CreateAutoPredictor' to create new predictors or
%% upgrade/retrain existing predictors.
%%
%% Creating new predictors
%%
%% The following parameters are required when creating a new predictor:
%%
%% <ul> <li> `PredictorName' - A unique name for the predictor.
%%
%% </li> <li> `DatasetGroupArn' - The ARN of the dataset group used to train
%% the predictor.
%%
%% </li> <li> `ForecastFrequency' - The granularity of your forecasts
%% (hourly, daily, weekly, etc).
%%
%% </li> <li> `ForecastHorizon' - The number of time-steps that the model
%% predicts. The forecast horizon is also called the prediction length.
%%
%% </li> </ul> When creating a new predictor, do not specify a value for
%% `ReferencePredictorArn'.
%%
%% Upgrading and retraining predictors
%%
%% The following parameters are required when retraining or upgrading a
%% predictor:
%%
%% <ul> <li> `PredictorName' - A unique name for the predictor.
%%
%% </li> <li> `ReferencePredictorArn' - The ARN of the predictor to retrain
%% or upgrade.
%%
%% </li> </ul> When upgrading or retraining a predictor, only specify values
%% for the `ReferencePredictorArn' and `PredictorName'.
create_auto_predictor(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_auto_predictor(Client, Input, []).
create_auto_predictor(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateAutoPredictor">>, Input, Options).

%% @doc Creates an Amazon Forecast dataset.
%%
%% The information about the dataset that you provide helps Forecast
%% understand how to consume the data for model training. This includes the
%% following:
%%
%% <ul> <li> `DataFrequency' - How frequently your historical time-series
%% data is collected.
%%
%% </li> <li> `Domain' and `DatasetType' - Each dataset has an associated
%% dataset domain and a type within the domain. Amazon Forecast provides a
%% list of predefined domains and types within each domain. For each unique
%% dataset domain and type within the domain, Amazon Forecast requires your
%% data to include a minimum set of predefined fields.
%%
%% </li> <li> `Schema' - A schema specifies the fields in the dataset,
%% including the field name and data type.
%%
%% </li> </ul> After creating a dataset, you import your training data into
%% it and add the dataset to a dataset group. You use the dataset group to
%% create a predictor. For more information, see Importing datasets.
%%
%% To get a list of all your datasets, use the ListDatasets operation.
%%
%% For example Forecast datasets, see the Amazon Forecast Sample GitHub
%% repository.
%%
%% The `Status' of a dataset must be `ACTIVE' before you can import training
%% data. Use the DescribeDataset operation to get the status.
create_dataset(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_dataset(Client, Input, []).
create_dataset(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDataset">>, Input, Options).

%% @doc Creates a dataset group, which holds a collection of related
%% datasets.
%%
%% You can add datasets to the dataset group when you create the dataset
%% group, or later by using the UpdateDatasetGroup operation.
%%
%% After creating a dataset group and adding datasets, you use the dataset
%% group when you create a predictor. For more information, see Dataset
%% groups.
%%
%% To get a list of all your datasets groups, use the ListDatasetGroups
%% operation.
%%
%% The `Status' of a dataset group must be `ACTIVE' before you can use the
%% dataset group to create a predictor. To get the status, use the
%% DescribeDatasetGroup operation.
create_dataset_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_dataset_group(Client, Input, []).
create_dataset_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDatasetGroup">>, Input, Options).

%% @doc Imports your training data to an Amazon Forecast dataset.
%%
%% You provide the location of your training data in an Amazon Simple Storage
%% Service (Amazon S3) bucket and the Amazon Resource Name (ARN) of the
%% dataset that you want to import the data to.
%%
%% You must specify a DataSource object that includes an AWS Identity and
%% Access Management (IAM) role that Amazon Forecast can assume to access the
%% data, as Amazon Forecast makes a copy of your data and processes it in an
%% internal AWS system. For more information, see Set up permissions.
%%
%% The training data must be in CSV format. The delimiter must be a comma
%% (,).
%%
%% You can specify the path to a specific CSV file, the S3 bucket, or to a
%% folder in the S3 bucket. For the latter two cases, Amazon Forecast imports
%% all files up to the limit of 10,000 files.
%%
%% Because dataset imports are not aggregated, your most recent dataset
%% import is the one that is used when training a predictor or generating a
%% forecast. Make sure that your most recent dataset import contains all of
%% the data you want to model off of, and not just the new data collected
%% since the previous import.
%%
%% To get a list of all your dataset import jobs, filtered by specified
%% criteria, use the ListDatasetImportJobs operation.
create_dataset_import_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_dataset_import_job(Client, Input, []).
create_dataset_import_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDatasetImportJob">>, Input, Options).

%% @doc Explainability is only available for Forecasts and Predictors
%% generated from an AutoPredictor (`CreateAutoPredictor')
%%
%% Creates an Amazon Forecast Explainability.
%%
%% Explainability helps you better understand how the attributes in your
%% datasets impact forecast. Amazon Forecast uses a metric called Impact
%% scores to quantify the relative impact of each attribute and determine
%% whether they increase or decrease forecast values.
%%
%% To enable Forecast Explainability, your predictor must include at least
%% one of the following: related time series, item metadata, or additional
%% datasets like Holidays and the Weather Index.
%%
%% CreateExplainability accepts either a Predictor ARN or Forecast ARN. To
%% receive aggregated Impact scores for all time series and time points in
%% your datasets, provide a Predictor ARN. To receive Impact scores for
%% specific time series and time points, provide a Forecast ARN.
%%
%% CreateExplainability with a Predictor ARN
%%
%% You can only have one Explainability resource per predictor. If you
%% already enabled `ExplainPredictor' in `CreateAutoPredictor', that
%% predictor already has an Explainability resource.
%%
%% The following parameters are required when providing a Predictor ARN:
%%
%% <ul> <li> `ExplainabilityName' - A unique name for the Explainability.
%%
%% </li> <li> `ResourceArn' - The Arn of the predictor.
%%
%% </li> <li> `TimePointGranularity' - Must be set to “ALL”.
%%
%% </li> <li> `TimeSeriesGranularity' - Must be set to “ALL”.
%%
%% </li> </ul> Do not specify a value for the following parameters:
%%
%% <ul> <li> `DataSource' - Only valid when TimeSeriesGranularity is
%% “SPECIFIC”.
%%
%% </li> <li> `Schema' - Only valid when TimeSeriesGranularity is “SPECIFIC”.
%%
%% </li> <li> `StartDateTime' - Only valid when TimePointGranularity is
%% “SPECIFIC”.
%%
%% </li> <li> `EndDateTime' - Only valid when TimePointGranularity is
%% “SPECIFIC”.
%%
%% </li> </ul> CreateExplainability with a Forecast ARN
%%
%% You can specify a maximum of 50 time series and 500 time points.
%%
%% The following parameters are required when providing a Predictor ARN:
%%
%% <ul> <li> `ExplainabilityName' - A unique name for the Explainability.
%%
%% </li> <li> `ResourceArn' - The Arn of the forecast.
%%
%% </li> <li> `TimePointGranularity' - Either “ALL” or “SPECIFIC”.
%%
%% </li> <li> `TimeSeriesGranularity' - Either “ALL” or “SPECIFIC”.
%%
%% </li> </ul> If you set TimeSeriesGranularity to “SPECIFIC”, you must also
%% provide the following:
%%
%% <ul> <li> `DataSource' - The S3 location of the CSV file specifying your
%% time series.
%%
%% </li> <li> `Schema' - The Schema defines the attributes and attribute
%% types listed in the Data Source.
%%
%% </li> </ul> If you set TimePointGranularity to “SPECIFIC”, you must also
%% provide the following:
%%
%% <ul> <li> `StartDateTime' - The first timestamp in the range of time
%% points.
%%
%% </li> <li> `EndDateTime' - The last timestamp in the range of time points.
%%
%% </li> </ul>
create_explainability(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_explainability(Client, Input, []).
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
%% bucket and an AWS Identity and Access Management (IAM) role that Amazon
%% Forecast can assume to access the Amazon S3 bucket. For more information,
%% see `aws-forecast-iam-roles'.
%%
%% The `Status' of the export job must be `ACTIVE' before you can access the
%% export in your Amazon S3 bucket. To get the status, use the
%% `DescribeExplainabilityExport' operation.
create_explainability_export(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_explainability_export(Client, Input, []).
create_explainability_export(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateExplainabilityExport">>, Input, Options).

%% @doc Creates a forecast for each item in the `TARGET_TIME_SERIES' dataset
%% that was used to train the predictor.
%%
%% This is known as inference. To retrieve the forecast for a single item at
%% low latency, use the operation. To export the complete forecast into your
%% Amazon Simple Storage Service (Amazon S3) bucket, use the
%% `CreateForecastExportJob' operation.
%%
%% The range of the forecast is determined by the `ForecastHorizon' value,
%% which you specify in the `CreatePredictor' request. When you query a
%% forecast, you can request a specific date range within the forecast.
%%
%% To get a list of all your forecasts, use the `ListForecasts' operation.
%%
%% The forecasts generated by Amazon Forecast are in the same time zone as
%% the dataset that was used to create the predictor.
%%
%% For more information, see `howitworks-forecast'.
%%
%% The `Status' of the forecast must be `ACTIVE' before you can query or
%% export the forecast. Use the `DescribeForecast' operation to get the
%% status.
create_forecast(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_forecast(Client, Input, []).
create_forecast(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateForecast">>, Input, Options).

%% @doc Exports a forecast created by the `CreateForecast' operation to your
%% Amazon Simple Storage Service (Amazon S3) bucket.
%%
%% The forecast file name will match the following conventions:
%%
%% <ForecastExportJobName>_<ExportTimestamp>_<PartNumber>
%%
%% where the <ExportTimestamp> component is in Java SimpleDateFormat
%% (yyyy-MM-ddTHH-mm-ssZ).
%%
%% You must specify a `DataDestination' object that includes an AWS Identity
%% and Access Management (IAM) role that Amazon Forecast can assume to access
%% the Amazon S3 bucket. For more information, see `aws-forecast-iam-roles'.
%%
%% For more information, see `howitworks-forecast'.
%%
%% To get a list of all your forecast export jobs, use the
%% `ListForecastExportJobs' operation.
%%
%% The `Status' of the forecast export job must be `ACTIVE' before you can
%% access the forecast in your Amazon S3 bucket. To get the status, use the
%% `DescribeForecastExportJob' operation.
create_forecast_export_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_forecast_export_job(Client, Input, []).
create_forecast_export_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateForecastExportJob">>, Input, Options).

%% @doc Creates a predictor monitor resource for an existing auto predictor.
%%
%% Predictor monitoring allows you to see how your predictor's performance
%% changes over time. For more information, see Predictor Monitoring.
create_monitor(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_monitor(Client, Input, []).
create_monitor(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateMonitor">>, Input, Options).

%% @doc This operation creates a legacy predictor that does not include all
%% the predictor functionalities provided by Amazon Forecast.
%%
%% To create a predictor that is compatible with all aspects of Forecast, use
%% `CreateAutoPredictor'.
%%
%% Creates an Amazon Forecast predictor.
%%
%% In the request, provide a dataset group and either specify an algorithm or
%% let Amazon Forecast choose an algorithm for you using AutoML. If you
%% specify an algorithm, you also can override algorithm-specific
%% hyperparameters.
%%
%% Amazon Forecast uses the algorithm to train a predictor using the latest
%% version of the datasets in the specified dataset group. You can then
%% generate a forecast using the `CreateForecast' operation.
%%
%% To see the evaluation metrics, use the `GetAccuracyMetrics' operation.
%%
%% You can specify a featurization configuration to fill and aggregate the
%% data fields in the `TARGET_TIME_SERIES' dataset to improve model training.
%% For more information, see `FeaturizationConfig'.
%%
%% For RELATED_TIME_SERIES datasets, `CreatePredictor' verifies that the
%% `DataFrequency' specified when the dataset was created matches the
%% `ForecastFrequency'. TARGET_TIME_SERIES datasets don't have this
%% restriction. Amazon Forecast also verifies the delimiter and timestamp
%% format. For more information, see `howitworks-datasets-groups'.
%%
%% By default, predictors are trained and evaluated at the 0.1 (P10), 0.5
%% (P50), and 0.9 (P90) quantiles. You can choose custom forecast types to
%% train and evaluate your predictor by setting the `ForecastTypes'.
%%
%% AutoML
%%
%% If you want Amazon Forecast to evaluate each algorithm and choose the one
%% that minimizes the `objective function', set `PerformAutoML' to `true'.
%% The `objective function' is defined as the mean of the weighted losses
%% over the forecast types. By default, these are the p10, p50, and p90
%% quantile losses. For more information, see `EvaluationResult'.
%%
%% When AutoML is enabled, the following properties are disallowed:
%%
%% <ul> <li> `AlgorithmArn'
%%
%% </li> <li> `HPOConfig'
%%
%% </li> <li> `PerformHPO'
%%
%% </li> <li> `TrainingParameters'
%%
%% </li> </ul> To get a list of all of your predictors, use the
%% `ListPredictors' operation.
%%
%% Before you can use the predictor to create a forecast, the `Status' of the
%% predictor must be `ACTIVE', signifying that training has completed. To get
%% the status, use the `DescribePredictor' operation.
create_predictor(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_predictor(Client, Input, []).
create_predictor(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreatePredictor">>, Input, Options).

%% @doc Exports backtest forecasts and accuracy metrics generated by the
%% `CreateAutoPredictor' or `CreatePredictor' operations.
%%
%% Two folders containing CSV files are exported to your specified S3 bucket.
%%
%% The export file names will match the following conventions:
%%
%% `<ExportJobName>_<ExportTimestamp>_<PartNumber>.csv'
%%
%% The <ExportTimestamp> component is in Java SimpleDate format
%% (yyyy-MM-ddTHH-mm-ssZ).
%%
%% You must specify a `DataDestination' object that includes an Amazon S3
%% bucket and an AWS Identity and Access Management (IAM) role that Amazon
%% Forecast can assume to access the Amazon S3 bucket. For more information,
%% see `aws-forecast-iam-roles'.
%%
%% The `Status' of the export job must be `ACTIVE' before you can access the
%% export in your Amazon S3 bucket. To get the status, use the
%% `DescribePredictorBacktestExportJob' operation.
create_predictor_backtest_export_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_predictor_backtest_export_job(Client, Input, []).
create_predictor_backtest_export_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreatePredictorBacktestExportJob">>, Input, Options).

%% @doc Deletes an Amazon Forecast dataset that was created using the
%% CreateDataset operation.
%%
%% You can only delete datasets that have a status of `ACTIVE' or
%% `CREATE_FAILED'. To get the status use the DescribeDataset operation.
%%
%% Forecast does not automatically update any dataset groups that contain the
%% deleted dataset. In order to update the dataset group, use the
%% UpdateDatasetGroup operation, omitting the deleted dataset's ARN.
delete_dataset(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_dataset(Client, Input, []).
delete_dataset(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDataset">>, Input, Options).

%% @doc Deletes a dataset group created using the CreateDatasetGroup
%% operation.
%%
%% You can only delete dataset groups that have a status of `ACTIVE',
%% `CREATE_FAILED', or `UPDATE_FAILED'. To get the status, use the
%% DescribeDatasetGroup operation.
%%
%% This operation deletes only the dataset group, not the datasets in the
%% group.
delete_dataset_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_dataset_group(Client, Input, []).
delete_dataset_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDatasetGroup">>, Input, Options).

%% @doc Deletes a dataset import job created using the CreateDatasetImportJob
%% operation.
%%
%% You can delete only dataset import jobs that have a status of `ACTIVE' or
%% `CREATE_FAILED'. To get the status, use the DescribeDatasetImportJob
%% operation.
delete_dataset_import_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_dataset_import_job(Client, Input, []).
delete_dataset_import_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDatasetImportJob">>, Input, Options).

%% @doc Deletes an Explainability resource.
%%
%% You can delete only predictor that have a status of `ACTIVE' or
%% `CREATE_FAILED'. To get the status, use the `DescribeExplainability'
%% operation.
delete_explainability(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_explainability(Client, Input, []).
delete_explainability(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteExplainability">>, Input, Options).

%% @doc Deletes an Explainability export.
delete_explainability_export(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_explainability_export(Client, Input, []).
delete_explainability_export(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteExplainabilityExport">>, Input, Options).

%% @doc Deletes a forecast created using the `CreateForecast' operation.
%%
%% You can delete only forecasts that have a status of `ACTIVE' or
%% `CREATE_FAILED'. To get the status, use the `DescribeForecast' operation.
%%
%% You can't delete a forecast while it is being exported. After a forecast
%% is deleted, you can no longer query the forecast.
delete_forecast(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_forecast(Client, Input, []).
delete_forecast(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteForecast">>, Input, Options).

%% @doc Deletes a forecast export job created using the
%% `CreateForecastExportJob' operation.
%%
%% You can delete only export jobs that have a status of `ACTIVE' or
%% `CREATE_FAILED'. To get the status, use the `DescribeForecastExportJob'
%% operation.
delete_forecast_export_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_forecast_export_job(Client, Input, []).
delete_forecast_export_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteForecastExportJob">>, Input, Options).

%% @doc Deletes a monitor resource.
%%
%% You can only delete a monitor resource with a status of `ACTIVE',
%% `ACTIVE_STOPPED', `CREATE_FAILED', or `CREATE_STOPPED'.
delete_monitor(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_monitor(Client, Input, []).
delete_monitor(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteMonitor">>, Input, Options).

%% @doc Deletes a predictor created using the `DescribePredictor' or
%% `CreatePredictor' operations.
%%
%% You can delete only predictor that have a status of `ACTIVE' or
%% `CREATE_FAILED'. To get the status, use the `DescribePredictor' operation.
delete_predictor(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_predictor(Client, Input, []).
delete_predictor(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeletePredictor">>, Input, Options).

%% @doc Deletes a predictor backtest export job.
delete_predictor_backtest_export_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_predictor_backtest_export_job(Client, Input, []).
delete_predictor_backtest_export_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeletePredictorBacktestExportJob">>, Input, Options).

%% @doc Deletes an entire resource tree.
%%
%% This operation will delete the parent resource and its child resources.
%%
%% Child resources are resources that were created from another resource. For
%% example, when a forecast is generated from a predictor, the forecast is
%% the child resource and the predictor is the parent resource.
%%
%% Amazon Forecast resources possess the following parent-child resource
%% hierarchies:
%%
%% <ul> <li> Dataset: dataset import jobs
%%
%% </li> <li> Dataset Group: predictors, predictor backtest export jobs,
%% forecasts, forecast export jobs
%%
%% </li> <li> Predictor: predictor backtest export jobs, forecasts, forecast
%% export jobs
%%
%% </li> <li> Forecast: forecast export jobs
%%
%% </li> </ul> `DeleteResourceTree' will only delete Amazon Forecast
%% resources, and will not delete datasets or exported files stored in Amazon
%% S3.
delete_resource_tree(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_resource_tree(Client, Input, []).
delete_resource_tree(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteResourceTree">>, Input, Options).

%% @doc Describes a predictor created using the CreateAutoPredictor
%% operation.
describe_auto_predictor(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_auto_predictor(Client, Input, []).
describe_auto_predictor(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAutoPredictor">>, Input, Options).

%% @doc Describes an Amazon Forecast dataset created using the CreateDataset
%% operation.
%%
%% In addition to listing the parameters specified in the `CreateDataset'
%% request, this operation includes the following dataset properties:
%%
%% <ul> <li> `CreationTime'
%%
%% </li> <li> `LastModificationTime'
%%
%% </li> <li> `Status'
%%
%% </li> </ul>
describe_dataset(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_dataset(Client, Input, []).
describe_dataset(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDataset">>, Input, Options).

%% @doc Describes a dataset group created using the CreateDatasetGroup
%% operation.
%%
%% In addition to listing the parameters provided in the `CreateDatasetGroup'
%% request, this operation includes the following properties:
%%
%% <ul> <li> `DatasetArns' - The datasets belonging to the group.
%%
%% </li> <li> `CreationTime'
%%
%% </li> <li> `LastModificationTime'
%%
%% </li> <li> `Status'
%%
%% </li> </ul>
describe_dataset_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_dataset_group(Client, Input, []).
describe_dataset_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDatasetGroup">>, Input, Options).

%% @doc Describes a dataset import job created using the
%% CreateDatasetImportJob operation.
%%
%% In addition to listing the parameters provided in the
%% `CreateDatasetImportJob' request, this operation includes the following
%% properties:
%%
%% <ul> <li> `CreationTime'
%%
%% </li> <li> `LastModificationTime'
%%
%% </li> <li> `DataSize'
%%
%% </li> <li> `FieldStatistics'
%%
%% </li> <li> `Status'
%%
%% </li> <li> `Message' - If an error occurred, information about the error.
%%
%% </li> </ul>
describe_dataset_import_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_dataset_import_job(Client, Input, []).
describe_dataset_import_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDatasetImportJob">>, Input, Options).

%% @doc Describes an Explainability resource created using the
%% `CreateExplainability' operation.
describe_explainability(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_explainability(Client, Input, []).
describe_explainability(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeExplainability">>, Input, Options).

%% @doc Describes an Explainability export created using the
%% `CreateExplainabilityExport' operation.
describe_explainability_export(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_explainability_export(Client, Input, []).
describe_explainability_export(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeExplainabilityExport">>, Input, Options).

%% @doc Describes a forecast created using the `CreateForecast' operation.
%%
%% In addition to listing the properties provided in the `CreateForecast'
%% request, this operation lists the following properties:
%%
%% <ul> <li> `DatasetGroupArn' - The dataset group that provided the training
%% data.
%%
%% </li> <li> `CreationTime'
%%
%% </li> <li> `LastModificationTime'
%%
%% </li> <li> `Status'
%%
%% </li> <li> `Message' - If an error occurred, information about the error.
%%
%% </li> </ul>
describe_forecast(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_forecast(Client, Input, []).
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
%% <ul> <li> `CreationTime'
%%
%% </li> <li> `LastModificationTime'
%%
%% </li> <li> `Status'
%%
%% </li> <li> `Message' - If an error occurred, information about the error.
%%
%% </li> </ul>
describe_forecast_export_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_forecast_export_job(Client, Input, []).
describe_forecast_export_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeForecastExportJob">>, Input, Options).

%% @doc Describes a monitor resource.
%%
%% In addition to listing the properties provided in the `CreateMonitor'
%% request, this operation lists the following properties:
%%
%% <ul> <li> `Baseline'
%%
%% </li> <li> `CreationTime'
%%
%% </li> <li> `LastEvaluationTime'
%%
%% </li> <li> `LastEvaluationState'
%%
%% </li> <li> `LastModificationTime'
%%
%% </li> <li> `Message'
%%
%% </li> <li> `Status'
%%
%% </li> </ul>
describe_monitor(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_monitor(Client, Input, []).
describe_monitor(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeMonitor">>, Input, Options).

%% @doc This operation is only valid for legacy predictors created with
%% CreatePredictor.
%%
%% If you are not using a legacy predictor, use `DescribeAutoPredictor'.
%%
%% Describes a predictor created using the `CreatePredictor' operation.
%%
%% In addition to listing the properties provided in the `CreatePredictor'
%% request, this operation lists the following properties:
%%
%% <ul> <li> `DatasetImportJobArns' - The dataset import jobs used to import
%% training data.
%%
%% </li> <li> `AutoMLAlgorithmArns' - If AutoML is performed, the algorithms
%% that were evaluated.
%%
%% </li> <li> `CreationTime'
%%
%% </li> <li> `LastModificationTime'
%%
%% </li> <li> `Status'
%%
%% </li> <li> `Message' - If an error occurred, information about the error.
%%
%% </li> </ul>
describe_predictor(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_predictor(Client, Input, []).
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
%% <ul> <li> `CreationTime'
%%
%% </li> <li> `LastModificationTime'
%%
%% </li> <li> `Status'
%%
%% </li> <li> `Message' (if an error occurred)
%%
%% </li> </ul>
describe_predictor_backtest_export_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_predictor_backtest_export_job(Client, Input, []).
describe_predictor_backtest_export_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribePredictorBacktestExportJob">>, Input, Options).

%% @doc Provides metrics on the accuracy of the models that were trained by
%% the `CreatePredictor' operation.
%%
%% Use metrics to see how well the model performed and to decide whether to
%% use the predictor to generate a forecast. For more information, see
%% Predictor Metrics.
%%
%% This operation generates metrics for each backtest window that was
%% evaluated. The number of backtest windows (`NumberOfBacktestWindows') is
%% specified using the `EvaluationParameters' object, which is optionally
%% included in the `CreatePredictor' request. If `NumberOfBacktestWindows'
%% isn't specified, the number defaults to one.
%%
%% The parameters of the `filling' method determine which items contribute to
%% the metrics. If you want all items to contribute, specify `zero'. If you
%% want only those items that have complete data in the range being evaluated
%% to contribute, specify `nan'. For more information, see
%% `FeaturizationMethod'.
%%
%% Before you can get accuracy metrics, the `Status' of the predictor must be
%% `ACTIVE', signifying that training has completed. To get the status, use
%% the `DescribePredictor' operation.
get_accuracy_metrics(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_accuracy_metrics(Client, Input, []).
get_accuracy_metrics(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAccuracyMetrics">>, Input, Options).

%% @doc Returns a list of dataset groups created using the CreateDatasetGroup
%% operation.
%%
%% For each dataset group, this operation returns a summary of its
%% properties, including its Amazon Resource Name (ARN). You can retrieve the
%% complete set of properties by using the dataset group ARN with the
%% DescribeDatasetGroup operation.
list_dataset_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_dataset_groups(Client, Input, []).
list_dataset_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDatasetGroups">>, Input, Options).

%% @doc Returns a list of dataset import jobs created using the
%% CreateDatasetImportJob operation.
%%
%% For each import job, this operation returns a summary of its properties,
%% including its Amazon Resource Name (ARN). You can retrieve the complete
%% set of properties by using the ARN with the DescribeDatasetImportJob
%% operation. You can filter the list by providing an array of Filter
%% objects.
list_dataset_import_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_dataset_import_jobs(Client, Input, []).
list_dataset_import_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDatasetImportJobs">>, Input, Options).

%% @doc Returns a list of datasets created using the CreateDataset operation.
%%
%% For each dataset, a summary of its properties, including its Amazon
%% Resource Name (ARN), is returned. To retrieve the complete set of
%% properties, use the ARN with the DescribeDataset operation.
list_datasets(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_datasets(Client, Input, []).
list_datasets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDatasets">>, Input, Options).

%% @doc Returns a list of Explainability resources created using the
%% `CreateExplainability' operation.
%%
%% This operation returns a summary for each Explainability. You can filter
%% the list using an array of `Filter' objects.
%%
%% To retrieve the complete set of properties for a particular Explainability
%% resource, use the ARN with the `DescribeExplainability' operation.
list_explainabilities(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_explainabilities(Client, Input, []).
list_explainabilities(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListExplainabilities">>, Input, Options).

%% @doc Returns a list of Explainability exports created using the
%% `CreateExplainabilityExport' operation.
%%
%% This operation returns a summary for each Explainability export. You can
%% filter the list using an array of `Filter' objects.
%%
%% To retrieve the complete set of properties for a particular Explainability
%% export, use the ARN with the `DescribeExplainability' operation.
list_explainability_exports(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_explainability_exports(Client, Input, []).
list_explainability_exports(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListExplainabilityExports">>, Input, Options).

%% @doc Returns a list of forecast export jobs created using the
%% `CreateForecastExportJob' operation.
%%
%% For each forecast export job, this operation returns a summary of its
%% properties, including its Amazon Resource Name (ARN). To retrieve the
%% complete set of properties, use the ARN with the
%% `DescribeForecastExportJob' operation. You can filter the list using an
%% array of `Filter' objects.
list_forecast_export_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_forecast_export_jobs(Client, Input, []).
list_forecast_export_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListForecastExportJobs">>, Input, Options).

%% @doc Returns a list of forecasts created using the `CreateForecast'
%% operation.
%%
%% For each forecast, this operation returns a summary of its properties,
%% including its Amazon Resource Name (ARN). To retrieve the complete set of
%% properties, specify the ARN with the `DescribeForecast' operation. You can
%% filter the list using an array of `Filter' objects.
list_forecasts(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_forecasts(Client, Input, []).
list_forecasts(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListForecasts">>, Input, Options).

%% @doc Returns a list of the monitoring evaluation results and predictor
%% events collected by the monitor resource during different windows of time.
%%
%% For information about monitoring see `predictor-monitoring'. For more
%% information about retrieving monitoring results see Viewing Monitoring
%% Results.
list_monitor_evaluations(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_monitor_evaluations(Client, Input, []).
list_monitor_evaluations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListMonitorEvaluations">>, Input, Options).

%% @doc Returns a list of monitors created with the `CreateMonitor' operation
%% and `CreateAutoPredictor' operation.
%%
%% For each monitor resource, this operation returns of a summary of its
%% properties, including its Amazon Resource Name (ARN). You can retrieve a
%% complete set of properties of a monitor resource by specify the monitor's
%% ARN in the `DescribeMonitor' operation.
list_monitors(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_monitors(Client, Input, []).
list_monitors(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListMonitors">>, Input, Options).

%% @doc Returns a list of predictor backtest export jobs created using the
%% `CreatePredictorBacktestExportJob' operation.
%%
%% This operation returns a summary for each backtest export job. You can
%% filter the list using an array of `Filter' objects.
%%
%% To retrieve the complete set of properties for a particular backtest
%% export job, use the ARN with the `DescribePredictorBacktestExportJob'
%% operation.
list_predictor_backtest_export_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_predictor_backtest_export_jobs(Client, Input, []).
list_predictor_backtest_export_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPredictorBacktestExportJobs">>, Input, Options).

%% @doc Returns a list of predictors created using the `CreateAutoPredictor'
%% or `CreatePredictor' operations.
%%
%% For each predictor, this operation returns a summary of its properties,
%% including its Amazon Resource Name (ARN).
%%
%% You can retrieve the complete set of properties by using the ARN with the
%% `DescribeAutoPredictor' and `DescribePredictor' operations. You can filter
%% the list using an array of `Filter' objects.
list_predictors(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_predictors(Client, Input, []).
list_predictors(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPredictors">>, Input, Options).

%% @doc Lists the tags for an Amazon Forecast resource.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Resumes a stopped monitor resource.
resume_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    resume_resource(Client, Input, []).
resume_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ResumeResource">>, Input, Options).

%% @doc Stops a resource.
%%
%% The resource undergoes the following states: `CREATE_STOPPING' and
%% `CREATE_STOPPED'. You cannot resume a resource once it has been stopped.
%%
%% This operation can be applied to the following resources (and their
%% corresponding child resources):
%%
%% <ul> <li> Dataset Import Job
%%
%% </li> <li> Predictor Job
%%
%% </li> <li> Forecast Job
%%
%% </li> <li> Forecast Export Job
%%
%% </li> <li> Predictor Backtest Export Job
%%
%% </li> <li> Explainability Job
%%
%% </li> <li> Explainability Export Job
%%
%% </li> </ul>
stop_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_resource(Client, Input, []).
stop_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopResource">>, Input, Options).

%% @doc Associates the specified tags to a resource with the specified
%% `resourceArn'.
%%
%% If existing tags on a resource are not specified in the request
%% parameters, they are not changed. When a resource is deleted, the tags
%% associated with that resource are also deleted.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Deletes the specified tags from a resource.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc Replaces the datasets in a dataset group with the specified datasets.
%%
%% The `Status' of the dataset group must be `ACTIVE' before you can use the
%% dataset group to create a predictor. Use the DescribeDatasetGroup
%% operation to get the status.
update_dataset_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_dataset_group(Client, Input, []).
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
    Proto = maps:get(proto, Client),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
