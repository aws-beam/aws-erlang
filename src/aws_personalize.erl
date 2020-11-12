%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Personalize is a machine learning service that makes it easy
%% to add individualized recommendations to customers.
-module(aws_personalize).

-export([create_batch_inference_job/2,
         create_batch_inference_job/3,
         create_campaign/2,
         create_campaign/3,
         create_dataset/2,
         create_dataset/3,
         create_dataset_group/2,
         create_dataset_group/3,
         create_dataset_import_job/2,
         create_dataset_import_job/3,
         create_event_tracker/2,
         create_event_tracker/3,
         create_filter/2,
         create_filter/3,
         create_schema/2,
         create_schema/3,
         create_solution/2,
         create_solution/3,
         create_solution_version/2,
         create_solution_version/3,
         delete_campaign/2,
         delete_campaign/3,
         delete_dataset/2,
         delete_dataset/3,
         delete_dataset_group/2,
         delete_dataset_group/3,
         delete_event_tracker/2,
         delete_event_tracker/3,
         delete_filter/2,
         delete_filter/3,
         delete_schema/2,
         delete_schema/3,
         delete_solution/2,
         delete_solution/3,
         describe_algorithm/2,
         describe_algorithm/3,
         describe_batch_inference_job/2,
         describe_batch_inference_job/3,
         describe_campaign/2,
         describe_campaign/3,
         describe_dataset/2,
         describe_dataset/3,
         describe_dataset_group/2,
         describe_dataset_group/3,
         describe_dataset_import_job/2,
         describe_dataset_import_job/3,
         describe_event_tracker/2,
         describe_event_tracker/3,
         describe_feature_transformation/2,
         describe_feature_transformation/3,
         describe_filter/2,
         describe_filter/3,
         describe_recipe/2,
         describe_recipe/3,
         describe_schema/2,
         describe_schema/3,
         describe_solution/2,
         describe_solution/3,
         describe_solution_version/2,
         describe_solution_version/3,
         get_solution_metrics/2,
         get_solution_metrics/3,
         list_batch_inference_jobs/2,
         list_batch_inference_jobs/3,
         list_campaigns/2,
         list_campaigns/3,
         list_dataset_groups/2,
         list_dataset_groups/3,
         list_dataset_import_jobs/2,
         list_dataset_import_jobs/3,
         list_datasets/2,
         list_datasets/3,
         list_event_trackers/2,
         list_event_trackers/3,
         list_filters/2,
         list_filters/3,
         list_recipes/2,
         list_recipes/3,
         list_schemas/2,
         list_schemas/3,
         list_solution_versions/2,
         list_solution_versions/3,
         list_solutions/2,
         list_solutions/3,
         update_campaign/2,
         update_campaign/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a batch inference job.
%%
%% The operation can handle up to 50 million records and the input file must
%% be in JSON format. For more information, see `recommendations-batch'.
create_batch_inference_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_batch_inference_job(Client, Input, []).
create_batch_inference_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateBatchInferenceJob">>, Input, Options).

%% @doc Creates a campaign by deploying a solution version.
%%
%% When a client calls the GetRecommendations and GetPersonalizedRanking
%% APIs, a campaign is specified in the request.
%%
%% Minimum Provisioned TPS and Auto-Scaling
%%
%% A transaction is a single `GetRecommendations' or `GetPersonalizedRanking'
%% call. Transactions per second (TPS) is the throughput and unit of billing
%% for Amazon Personalize. The minimum provisioned TPS (`minProvisionedTPS')
%% specifies the baseline throughput provisioned by Amazon Personalize, and
%% thus, the minimum billing charge. If your TPS increases beyond
%% `minProvisionedTPS', Amazon Personalize auto-scales the provisioned
%% capacity up and down, but never below `minProvisionedTPS', to maintain a
%% 70% utilization. There's a short time delay while the capacity is
%% increased that might cause loss of transactions. It's recommended to start
%% with a low `minProvisionedTPS', track your usage using Amazon CloudWatch
%% metrics, and then increase the `minProvisionedTPS' as necessary.
%%
%% Status
%%
%% A campaign can be in one of the following states:
%%
%% <ul> <li> CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE FAILED
%%
%% </li> <li> DELETE PENDING > DELETE IN_PROGRESS
%%
%% </li> </ul> To get the campaign status, call `DescribeCampaign'.
%%
%% Wait until the `status' of the campaign is `ACTIVE' before asking the
%% campaign for recommendations.
%%
%% == Related APIs ==
%%
%% <ul> <li> `ListCampaigns'
%%
%% </li> <li> `DescribeCampaign'
%%
%% </li> <li> `UpdateCampaign'
%%
%% </li> <li> `DeleteCampaign'
%%
%% </li> </ul>
create_campaign(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_campaign(Client, Input, []).
create_campaign(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateCampaign">>, Input, Options).

%% @doc Creates an empty dataset and adds it to the specified dataset group.
%%
%% Use `CreateDatasetImportJob' to import your training data to a dataset.
%%
%% There are three types of datasets:
%%
%% <ul> <li> Interactions
%%
%% </li> <li> Items
%%
%% </li> <li> Users
%%
%% </li> </ul> Each dataset type has an associated schema with required field
%% types. Only the `Interactions' dataset is required in order to train a
%% model (also referred to as creating a solution).
%%
%% A dataset can be in one of the following states:
%%
%% <ul> <li> CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE FAILED
%%
%% </li> <li> DELETE PENDING > DELETE IN_PROGRESS
%%
%% </li> </ul> To get the status of the dataset, call `DescribeDataset'.
%%
%% == Related APIs ==
%%
%% <ul> <li> `CreateDatasetGroup'
%%
%% </li> <li> `ListDatasets'
%%
%% </li> <li> `DescribeDataset'
%%
%% </li> <li> `DeleteDataset'
%%
%% </li> </ul>
create_dataset(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_dataset(Client, Input, []).
create_dataset(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDataset">>, Input, Options).

%% @doc Creates an empty dataset group.
%%
%% A dataset group contains related datasets that supply data for training a
%% model. A dataset group can contain at most three datasets, one for each
%% type of dataset:
%%
%% <ul> <li> Interactions
%%
%% </li> <li> Items
%%
%% </li> <li> Users
%%
%% </li> </ul> To train a model (create a solution), a dataset group that
%% contains an `Interactions' dataset is required. Call `CreateDataset' to
%% add a dataset to the group.
%%
%% A dataset group can be in one of the following states:
%%
%% <ul> <li> CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE FAILED
%%
%% </li> <li> DELETE PENDING
%%
%% </li> </ul> To get the status of the dataset group, call
%% `DescribeDatasetGroup'. If the status shows as CREATE FAILED, the response
%% includes a `failureReason' key, which describes why the creation failed.
%%
%% You must wait until the `status' of the dataset group is `ACTIVE' before
%% adding a dataset to the group.
%%
%% You can specify an AWS Key Management Service (KMS) key to encrypt the
%% datasets in the group. If you specify a KMS key, you must also include an
%% AWS Identity and Access Management (IAM) role that has permission to
%% access the key.
%%
%% == APIs that require a dataset group ARN in the request ==
%%
%% <ul> <li> `CreateDataset'
%%
%% </li> <li> `CreateEventTracker'
%%
%% </li> <li> `CreateSolution'
%%
%% </li> </ul> == Related APIs ==
%%
%% <ul> <li> `ListDatasetGroups'
%%
%% </li> <li> `DescribeDatasetGroup'
%%
%% </li> <li> `DeleteDatasetGroup'
%%
%% </li> </ul>
create_dataset_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_dataset_group(Client, Input, []).
create_dataset_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDatasetGroup">>, Input, Options).

%% @doc Creates a job that imports training data from your data source (an
%% Amazon S3 bucket) to an Amazon Personalize dataset.
%%
%% To allow Amazon Personalize to import the training data, you must specify
%% an AWS Identity and Access Management (IAM) role that has permission to
%% read from the data source, as Amazon Personalize makes a copy of your data
%% and processes it in an internal AWS system.
%%
%% The dataset import job replaces any previous data in the dataset.
%%
%% Status
%%
%% A dataset import job can be in one of the following states:
%%
%% <ul> <li> CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE FAILED
%%
%% </li> </ul> To get the status of the import job, call
%% `DescribeDatasetImportJob', providing the Amazon Resource Name (ARN) of
%% the dataset import job. The dataset import is complete when the status
%% shows as ACTIVE. If the status shows as CREATE FAILED, the response
%% includes a `failureReason' key, which describes why the job failed.
%%
%% Importing takes time. You must wait until the status shows as ACTIVE
%% before training a model using the dataset.
%%
%% == Related APIs ==
%%
%% <ul> <li> `ListDatasetImportJobs'
%%
%% </li> <li> `DescribeDatasetImportJob'
%%
%% </li> </ul>
create_dataset_import_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_dataset_import_job(Client, Input, []).
create_dataset_import_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDatasetImportJob">>, Input, Options).

%% @doc Creates an event tracker that you use when sending event data to the
%% specified dataset group using the PutEvents API.
%%
%% When Amazon Personalize creates an event tracker, it also creates an
%% event-interactions dataset in the dataset group associated with the event
%% tracker. The event-interactions dataset stores the event data from the
%% `PutEvents' call. The contents of this dataset are not available to the
%% user.
%%
%% Only one event tracker can be associated with a dataset group. You will
%% get an error if you call `CreateEventTracker' using the same dataset group
%% as an existing event tracker.
%%
%% When you send event data you include your tracking ID. The tracking ID
%% identifies the customer and authorizes the customer to send the data.
%%
%% The event tracker can be in one of the following states:
%%
%% <ul> <li> CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE FAILED
%%
%% </li> <li> DELETE PENDING > DELETE IN_PROGRESS
%%
%% </li> </ul> To get the status of the event tracker, call
%% `DescribeEventTracker'.
%%
%% The event tracker must be in the ACTIVE state before using the tracking
%% ID.
%%
%% == Related APIs ==
%%
%% <ul> <li> `ListEventTrackers'
%%
%% </li> <li> `DescribeEventTracker'
%%
%% </li> <li> `DeleteEventTracker'
%%
%% </li> </ul>
create_event_tracker(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_event_tracker(Client, Input, []).
create_event_tracker(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateEventTracker">>, Input, Options).

%% @doc Creates a recommendation filter.
%%
%% For more information, see Using Filters with Amazon Personalize.
create_filter(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_filter(Client, Input, []).
create_filter(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateFilter">>, Input, Options).

%% @doc Creates an Amazon Personalize schema from the specified schema
%% string.
%%
%% The schema you create must be in Avro JSON format.
%%
%% Amazon Personalize recognizes three schema variants. Each schema is
%% associated with a dataset type and has a set of required field and
%% keywords. You specify a schema when you call `CreateDataset'.
%%
%% == Related APIs ==
%%
%% <ul> <li> `ListSchemas'
%%
%% </li> <li> `DescribeSchema'
%%
%% </li> <li> `DeleteSchema'
%%
%% </li> </ul>
create_schema(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_schema(Client, Input, []).
create_schema(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateSchema">>, Input, Options).

%% @doc Creates the configuration for training a model.
%%
%% A trained model is known as a solution. After the configuration is
%% created, you train the model (create a solution) by calling the
%% `CreateSolutionVersion' operation. Every time you call
%% `CreateSolutionVersion', a new version of the solution is created.
%%
%% After creating a solution version, you check its accuracy by calling
%% `GetSolutionMetrics'. When you are satisfied with the version, you deploy
%% it using `CreateCampaign'. The campaign provides recommendations to a
%% client through the GetRecommendations API.
%%
%% To train a model, Amazon Personalize requires training data and a recipe.
%% The training data comes from the dataset group that you provide in the
%% request. A recipe specifies the training algorithm and a feature
%% transformation. You can specify one of the predefined recipes provided by
%% Amazon Personalize. Alternatively, you can specify `performAutoML' and
%% Amazon Personalize will analyze your data and select the optimum
%% USER_PERSONALIZATION recipe for you.
%%
%% Status
%%
%% A solution can be in one of the following states:
%%
%% <ul> <li> CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE FAILED
%%
%% </li> <li> DELETE PENDING > DELETE IN_PROGRESS
%%
%% </li> </ul> To get the status of the solution, call `DescribeSolution'.
%% Wait until the status shows as ACTIVE before calling
%% `CreateSolutionVersion'.
%%
%% == Related APIs ==
%%
%% <ul> <li> `ListSolutions'
%%
%% </li> <li> `CreateSolutionVersion'
%%
%% </li> <li> `DescribeSolution'
%%
%% </li> <li> `DeleteSolution'
%%
%% </li> </ul> <ul> <li> `ListSolutionVersions'
%%
%% </li> <li> `DescribeSolutionVersion'
%%
%% </li> </ul>
create_solution(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_solution(Client, Input, []).
create_solution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateSolution">>, Input, Options).

%% @doc Trains or retrains an active solution.
%%
%% A solution is created using the `CreateSolution' operation and must be in
%% the ACTIVE state before calling `CreateSolutionVersion'. A new version of
%% the solution is created every time you call this operation.
%%
%% Status
%%
%% A solution version can be in one of the following states:
%%
%% <ul> <li> CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE FAILED
%%
%% </li> </ul> To get the status of the version, call
%% `DescribeSolutionVersion'. Wait until the status shows as ACTIVE before
%% calling `CreateCampaign'.
%%
%% If the status shows as CREATE FAILED, the response includes a
%% `failureReason' key, which describes why the job failed.
%%
%% == Related APIs ==
%%
%% <ul> <li> `ListSolutionVersions'
%%
%% </li> <li> `DescribeSolutionVersion'
%%
%% </li> </ul> <ul> <li> `ListSolutions'
%%
%% </li> <li> `CreateSolution'
%%
%% </li> <li> `DescribeSolution'
%%
%% </li> <li> `DeleteSolution'
%%
%% </li> </ul>
create_solution_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_solution_version(Client, Input, []).
create_solution_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateSolutionVersion">>, Input, Options).

%% @doc Removes a campaign by deleting the solution deployment.
%%
%% The solution that the campaign is based on is not deleted and can be
%% redeployed when needed. A deleted campaign can no longer be specified in a
%% GetRecommendations request. For more information on campaigns, see
%% `CreateCampaign'.
delete_campaign(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_campaign(Client, Input, []).
delete_campaign(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteCampaign">>, Input, Options).

%% @doc Deletes a dataset.
%%
%% You can't delete a dataset if an associated `DatasetImportJob' or
%% `SolutionVersion' is in the CREATE PENDING or IN PROGRESS state. For more
%% information on datasets, see `CreateDataset'.
delete_dataset(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_dataset(Client, Input, []).
delete_dataset(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDataset">>, Input, Options).

%% @doc Deletes a dataset group.
%%
%% Before you delete a dataset group, you must delete the following:
%%
%% <ul> <li> All associated event trackers.
%%
%% </li> <li> All associated solutions.
%%
%% </li> <li> All datasets in the dataset group.
%%
%% </li> </ul>
delete_dataset_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_dataset_group(Client, Input, []).
delete_dataset_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDatasetGroup">>, Input, Options).

%% @doc Deletes the event tracker.
%%
%% Does not delete the event-interactions dataset from the associated dataset
%% group. For more information on event trackers, see `CreateEventTracker'.
delete_event_tracker(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_event_tracker(Client, Input, []).
delete_event_tracker(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteEventTracker">>, Input, Options).

%% @doc Deletes a filter.
delete_filter(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_filter(Client, Input, []).
delete_filter(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteFilter">>, Input, Options).

%% @doc Deletes a schema.
%%
%% Before deleting a schema, you must delete all datasets referencing the
%% schema. For more information on schemas, see `CreateSchema'.
delete_schema(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_schema(Client, Input, []).
delete_schema(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteSchema">>, Input, Options).

%% @doc Deletes all versions of a solution and the `Solution' object itself.
%%
%% Before deleting a solution, you must delete all campaigns based on the
%% solution. To determine what campaigns are using the solution, call
%% `ListCampaigns' and supply the Amazon Resource Name (ARN) of the solution.
%% You can't delete a solution if an associated `SolutionVersion' is in the
%% CREATE PENDING or IN PROGRESS state. For more information on solutions,
%% see `CreateSolution'.
delete_solution(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_solution(Client, Input, []).
delete_solution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteSolution">>, Input, Options).

%% @doc Describes the given algorithm.
describe_algorithm(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_algorithm(Client, Input, []).
describe_algorithm(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAlgorithm">>, Input, Options).

%% @doc Gets the properties of a batch inference job including name, Amazon
%% Resource Name (ARN), status, input and output configurations, and the ARN
%% of the solution version used to generate the recommendations.
describe_batch_inference_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_batch_inference_job(Client, Input, []).
describe_batch_inference_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeBatchInferenceJob">>, Input, Options).

%% @doc Describes the given campaign, including its status.
%%
%% A campaign can be in one of the following states:
%%
%% <ul> <li> CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE FAILED
%%
%% </li> <li> DELETE PENDING > DELETE IN_PROGRESS
%%
%% </li> </ul> When the `status' is `CREATE FAILED', the response includes
%% the `failureReason' key, which describes why.
%%
%% For more information on campaigns, see `CreateCampaign'.
describe_campaign(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_campaign(Client, Input, []).
describe_campaign(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeCampaign">>, Input, Options).

%% @doc Describes the given dataset.
%%
%% For more information on datasets, see `CreateDataset'.
describe_dataset(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_dataset(Client, Input, []).
describe_dataset(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDataset">>, Input, Options).

%% @doc Describes the given dataset group.
%%
%% For more information on dataset groups, see `CreateDatasetGroup'.
describe_dataset_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_dataset_group(Client, Input, []).
describe_dataset_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDatasetGroup">>, Input, Options).

%% @doc Describes the dataset import job created by `CreateDatasetImportJob',
%% including the import job status.
describe_dataset_import_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_dataset_import_job(Client, Input, []).
describe_dataset_import_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDatasetImportJob">>, Input, Options).

%% @doc Describes an event tracker.
%%
%% The response includes the `trackingId' and `status' of the event tracker.
%% For more information on event trackers, see `CreateEventTracker'.
describe_event_tracker(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_event_tracker(Client, Input, []).
describe_event_tracker(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEventTracker">>, Input, Options).

%% @doc Describes the given feature transformation.
describe_feature_transformation(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_feature_transformation(Client, Input, []).
describe_feature_transformation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeFeatureTransformation">>, Input, Options).

%% @doc Describes a filter's properties.
describe_filter(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_filter(Client, Input, []).
describe_filter(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeFilter">>, Input, Options).

%% @doc Describes a recipe.
%%
%% A recipe contains three items:
%%
%% <ul> <li> An algorithm that trains a model.
%%
%% </li> <li> Hyperparameters that govern the training.
%%
%% </li> <li> Feature transformation information for modifying the input data
%% before training.
%%
%% </li> </ul> Amazon Personalize provides a set of predefined recipes. You
%% specify a recipe when you create a solution with the `CreateSolution' API.
%% `CreateSolution' trains a model by using the algorithm in the specified
%% recipe and a training dataset. The solution, when deployed as a campaign,
%% can provide recommendations using the GetRecommendations API.
describe_recipe(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_recipe(Client, Input, []).
describe_recipe(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeRecipe">>, Input, Options).

%% @doc Describes a schema.
%%
%% For more information on schemas, see `CreateSchema'.
describe_schema(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_schema(Client, Input, []).
describe_schema(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeSchema">>, Input, Options).

%% @doc Describes a solution.
%%
%% For more information on solutions, see `CreateSolution'.
describe_solution(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_solution(Client, Input, []).
describe_solution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeSolution">>, Input, Options).

%% @doc Describes a specific version of a solution.
%%
%% For more information on solutions, see `CreateSolution'.
describe_solution_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_solution_version(Client, Input, []).
describe_solution_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeSolutionVersion">>, Input, Options).

%% @doc Gets the metrics for the specified solution version.
get_solution_metrics(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_solution_metrics(Client, Input, []).
get_solution_metrics(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSolutionMetrics">>, Input, Options).

%% @doc Gets a list of the batch inference jobs that have been performed off
%% of a solution version.
list_batch_inference_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_batch_inference_jobs(Client, Input, []).
list_batch_inference_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListBatchInferenceJobs">>, Input, Options).

%% @doc Returns a list of campaigns that use the given solution.
%%
%% When a solution is not specified, all the campaigns associated with the
%% account are listed. The response provides the properties for each
%% campaign, including the Amazon Resource Name (ARN). For more information
%% on campaigns, see `CreateCampaign'.
list_campaigns(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_campaigns(Client, Input, []).
list_campaigns(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListCampaigns">>, Input, Options).

%% @doc Returns a list of dataset groups.
%%
%% The response provides the properties for each dataset group, including the
%% Amazon Resource Name (ARN). For more information on dataset groups, see
%% `CreateDatasetGroup'.
list_dataset_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_dataset_groups(Client, Input, []).
list_dataset_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDatasetGroups">>, Input, Options).

%% @doc Returns a list of dataset import jobs that use the given dataset.
%%
%% When a dataset is not specified, all the dataset import jobs associated
%% with the account are listed. The response provides the properties for each
%% dataset import job, including the Amazon Resource Name (ARN). For more
%% information on dataset import jobs, see `CreateDatasetImportJob'. For more
%% information on datasets, see `CreateDataset'.
list_dataset_import_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_dataset_import_jobs(Client, Input, []).
list_dataset_import_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDatasetImportJobs">>, Input, Options).

%% @doc Returns the list of datasets contained in the given dataset group.
%%
%% The response provides the properties for each dataset, including the
%% Amazon Resource Name (ARN). For more information on datasets, see
%% `CreateDataset'.
list_datasets(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_datasets(Client, Input, []).
list_datasets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDatasets">>, Input, Options).

%% @doc Returns the list of event trackers associated with the account.
%%
%% The response provides the properties for each event tracker, including the
%% Amazon Resource Name (ARN) and tracking ID. For more information on event
%% trackers, see `CreateEventTracker'.
list_event_trackers(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_event_trackers(Client, Input, []).
list_event_trackers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListEventTrackers">>, Input, Options).

%% @doc Lists all filters that belong to a given dataset group.
list_filters(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_filters(Client, Input, []).
list_filters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListFilters">>, Input, Options).

%% @doc Returns a list of available recipes.
%%
%% The response provides the properties for each recipe, including the
%% recipe's Amazon Resource Name (ARN).
list_recipes(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_recipes(Client, Input, []).
list_recipes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListRecipes">>, Input, Options).

%% @doc Returns the list of schemas associated with the account.
%%
%% The response provides the properties for each schema, including the Amazon
%% Resource Name (ARN). For more information on schemas, see `CreateSchema'.
list_schemas(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_schemas(Client, Input, []).
list_schemas(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListSchemas">>, Input, Options).

%% @doc Returns a list of solution versions for the given solution.
%%
%% When a solution is not specified, all the solution versions associated
%% with the account are listed. The response provides the properties for each
%% solution version, including the Amazon Resource Name (ARN). For more
%% information on solutions, see `CreateSolution'.
list_solution_versions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_solution_versions(Client, Input, []).
list_solution_versions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListSolutionVersions">>, Input, Options).

%% @doc Returns a list of solutions that use the given dataset group.
%%
%% When a dataset group is not specified, all the solutions associated with
%% the account are listed. The response provides the properties for each
%% solution, including the Amazon Resource Name (ARN). For more information
%% on solutions, see `CreateSolution'.
list_solutions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_solutions(Client, Input, []).
list_solutions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListSolutions">>, Input, Options).

%% @doc Updates a campaign by either deploying a new solution or changing the
%% value of the campaign's `minProvisionedTPS' parameter.
%%
%% To update a campaign, the campaign status must be ACTIVE or CREATE FAILED.
%% Check the campaign status using the `DescribeCampaign' API.
%%
%% You must wait until the `status' of the updated campaign is `ACTIVE'
%% before asking the campaign for recommendations.
%%
%% For more information on campaigns, see `CreateCampaign'.
update_campaign(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_campaign(Client, Input, []).
update_campaign(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateCampaign">>, Input, Options).

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
    Client1 = Client#{service => <<"personalize">>},
    Host = build_host(<<"personalize">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"AmazonPersonalize.", Action/binary>>}
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
