%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Provides APIs for creating and managing Amazon Forecast resources.
-module(aws_forecast).

-export([create_dataset/2,
         create_dataset/3,
         create_dataset_group/2,
         create_dataset_group/3,
         create_dataset_import_job/2,
         create_dataset_import_job/3,
         create_forecast/2,
         create_forecast/3,
         create_forecast_export_job/2,
         create_forecast_export_job/3,
         create_predictor/2,
         create_predictor/3,
         delete_dataset/2,
         delete_dataset/3,
         delete_dataset_group/2,
         delete_dataset_group/3,
         delete_dataset_import_job/2,
         delete_dataset_import_job/3,
         delete_forecast/2,
         delete_forecast/3,
         delete_forecast_export_job/2,
         delete_forecast_export_job/3,
         delete_predictor/2,
         delete_predictor/3,
         describe_dataset/2,
         describe_dataset/3,
         describe_dataset_group/2,
         describe_dataset_group/3,
         describe_dataset_import_job/2,
         describe_dataset_import_job/3,
         describe_forecast/2,
         describe_forecast/3,
         describe_forecast_export_job/2,
         describe_forecast_export_job/3,
         describe_predictor/2,
         describe_predictor/3,
         get_accuracy_metrics/2,
         get_accuracy_metrics/3,
         list_dataset_groups/2,
         list_dataset_groups/3,
         list_dataset_import_jobs/2,
         list_dataset_import_jobs/3,
         list_datasets/2,
         list_datasets/3,
         list_forecast_export_jobs/2,
         list_forecast_export_jobs/3,
         list_forecasts/2,
         list_forecasts/3,
         list_predictors/2,
         list_predictors/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
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
%% create a predictor. For more information, see
%% `howitworks-datasets-groups'.
%%
%% To get a list of all your datasets, use the `ListDatasets' operation.
%%
%% For example Forecast datasets, see the Amazon Forecast Sample GitHub
%% repository.
%%
%% The `Status' of a dataset must be `ACTIVE' before you can import training
%% data. Use the `DescribeDataset' operation to get the status.
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
%% group, or later by using the `UpdateDatasetGroup' operation.
%%
%% After creating a dataset group and adding datasets, you use the dataset
%% group when you create a predictor. For more information, see
%% `howitworks-datasets-groups'.
%%
%% To get a list of all your datasets groups, use the `ListDatasetGroups'
%% operation.
%%
%% The `Status' of a dataset group must be `ACTIVE' before you can use the
%% dataset group to create a predictor. To get the status, use the
%% `DescribeDatasetGroup' operation.
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
%% You must specify a `DataSource' object that includes an AWS Identity and
%% Access Management (IAM) role that Amazon Forecast can assume to access the
%% data, as Amazon Forecast makes a copy of your data and processes it in an
%% internal AWS system. For more information, see `aws-forecast-iam-roles'.
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
%% criteria, use the `ListDatasetImportJobs' operation.
create_dataset_import_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_dataset_import_job(Client, Input, []).
create_dataset_import_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDatasetImportJob">>, Input, Options).

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

%% @doc Creates an Amazon Forecast predictor.
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

%% @doc Deletes an Amazon Forecast dataset that was created using the
%% `CreateDataset' operation.
%%
%% You can only delete datasets that have a status of `ACTIVE' or
%% `CREATE_FAILED'. To get the status use the `DescribeDataset' operation.
%%
%% Forecast does not automatically update any dataset groups that contain the
%% deleted dataset. In order to update the dataset group, use the operation,
%% omitting the deleted dataset's ARN.
delete_dataset(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_dataset(Client, Input, []).
delete_dataset(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDataset">>, Input, Options).

%% @doc Deletes a dataset group created using the `CreateDatasetGroup'
%% operation.
%%
%% You can only delete dataset groups that have a status of `ACTIVE',
%% `CREATE_FAILED', or `UPDATE_FAILED'. To get the status, use the
%% `DescribeDatasetGroup' operation.
%%
%% This operation deletes only the dataset group, not the datasets in the
%% group.
delete_dataset_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_dataset_group(Client, Input, []).
delete_dataset_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDatasetGroup">>, Input, Options).

%% @doc Deletes a dataset import job created using the
%% `CreateDatasetImportJob' operation.
%%
%% You can delete only dataset import jobs that have a status of `ACTIVE' or
%% `CREATE_FAILED'. To get the status, use the `DescribeDatasetImportJob'
%% operation.
delete_dataset_import_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_dataset_import_job(Client, Input, []).
delete_dataset_import_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDatasetImportJob">>, Input, Options).

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

%% @doc Deletes a predictor created using the `CreatePredictor' operation.
%%
%% You can delete only predictor that have a status of `ACTIVE' or
%% `CREATE_FAILED'. To get the status, use the `DescribePredictor' operation.
delete_predictor(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_predictor(Client, Input, []).
delete_predictor(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeletePredictor">>, Input, Options).

%% @doc Describes an Amazon Forecast dataset created using the
%% `CreateDataset' operation.
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

%% @doc Describes a dataset group created using the `CreateDatasetGroup'
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
%% `CreateDatasetImportJob' operation.
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

%% @doc Describes a predictor created using the `CreatePredictor' operation.
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

%% @doc Returns a list of dataset groups created using the
%% `CreateDatasetGroup' operation.
%%
%% For each dataset group, this operation returns a summary of its
%% properties, including its Amazon Resource Name (ARN). You can retrieve the
%% complete set of properties by using the dataset group ARN with the
%% `DescribeDatasetGroup' operation.
list_dataset_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_dataset_groups(Client, Input, []).
list_dataset_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDatasetGroups">>, Input, Options).

%% @doc Returns a list of dataset import jobs created using the
%% `CreateDatasetImportJob' operation.
%%
%% For each import job, this operation returns a summary of its properties,
%% including its Amazon Resource Name (ARN). You can retrieve the complete
%% set of properties by using the ARN with the `DescribeDatasetImportJob'
%% operation. You can filter the list by providing an array of `Filter'
%% objects.
list_dataset_import_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_dataset_import_jobs(Client, Input, []).
list_dataset_import_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDatasetImportJobs">>, Input, Options).

%% @doc Returns a list of datasets created using the `CreateDataset'
%% operation.
%%
%% For each dataset, a summary of its properties, including its Amazon
%% Resource Name (ARN), is returned. To retrieve the complete set of
%% properties, use the ARN with the `DescribeDataset' operation.
list_datasets(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_datasets(Client, Input, []).
list_datasets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDatasets">>, Input, Options).

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

%% @doc Returns a list of predictors created using the `CreatePredictor'
%% operation.
%%
%% For each predictor, this operation returns a summary of its properties,
%% including its Amazon Resource Name (ARN). You can retrieve the complete
%% set of properties by using the ARN with the `DescribePredictor' operation.
%% You can filter the list using an array of `Filter' objects.
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
%% dataset group to create a predictor. Use the `DescribeDatasetGroup'
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
request(Client, Action, Input0, Options) ->
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
