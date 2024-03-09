%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Personalize is a machine learning service that makes it easy
%% to add individualized
%% recommendations to customers.
-module(aws_personalize).

-export([create_batch_inference_job/2,
         create_batch_inference_job/3,
         create_batch_segment_job/2,
         create_batch_segment_job/3,
         create_campaign/2,
         create_campaign/3,
         create_dataset/2,
         create_dataset/3,
         create_dataset_export_job/2,
         create_dataset_export_job/3,
         create_dataset_group/2,
         create_dataset_group/3,
         create_dataset_import_job/2,
         create_dataset_import_job/3,
         create_event_tracker/2,
         create_event_tracker/3,
         create_filter/2,
         create_filter/3,
         create_metric_attribution/2,
         create_metric_attribution/3,
         create_recommender/2,
         create_recommender/3,
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
         delete_metric_attribution/2,
         delete_metric_attribution/3,
         delete_recommender/2,
         delete_recommender/3,
         delete_schema/2,
         delete_schema/3,
         delete_solution/2,
         delete_solution/3,
         describe_algorithm/2,
         describe_algorithm/3,
         describe_batch_inference_job/2,
         describe_batch_inference_job/3,
         describe_batch_segment_job/2,
         describe_batch_segment_job/3,
         describe_campaign/2,
         describe_campaign/3,
         describe_dataset/2,
         describe_dataset/3,
         describe_dataset_export_job/2,
         describe_dataset_export_job/3,
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
         describe_metric_attribution/2,
         describe_metric_attribution/3,
         describe_recipe/2,
         describe_recipe/3,
         describe_recommender/2,
         describe_recommender/3,
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
         list_batch_segment_jobs/2,
         list_batch_segment_jobs/3,
         list_campaigns/2,
         list_campaigns/3,
         list_dataset_export_jobs/2,
         list_dataset_export_jobs/3,
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
         list_metric_attribution_metrics/2,
         list_metric_attribution_metrics/3,
         list_metric_attributions/2,
         list_metric_attributions/3,
         list_recipes/2,
         list_recipes/3,
         list_recommenders/2,
         list_recommenders/3,
         list_schemas/2,
         list_schemas/3,
         list_solution_versions/2,
         list_solution_versions/3,
         list_solutions/2,
         list_solutions/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         start_recommender/2,
         start_recommender/3,
         stop_recommender/2,
         stop_recommender/3,
         stop_solution_version_creation/2,
         stop_solution_version_creation/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_campaign/2,
         update_campaign/3,
         update_dataset/2,
         update_dataset/3,
         update_metric_attribution/2,
         update_metric_attribution/3,
         update_recommender/2,
         update_recommender/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Generates batch recommendations based on a list of items or users
%% stored in Amazon S3
%% and exports the recommendations to an Amazon S3 bucket.
%%
%% To generate batch recommendations, specify the ARN of a solution version
%% and an Amazon S3 URI for the input and output data.
%% For user personalization, popular items, and personalized ranking
%% solutions, the batch inference job generates a list of
%% recommended items for each user ID in the input file. For related items
%% solutions, the job generates a list of recommended
%% items for each item ID in the input file.
%%
%% For more information, see Creating a batch inference job
%% :
%% https://docs.aws.amazon.com/personalize/latest/dg/getting-batch-recommendations.html.
%%
%% If you use the Similar-Items recipe, Amazon Personalize can add
%% descriptive themes to batch recommendations.
%% To generate themes, set the job's mode to
%% `THEME_GENERATION' and specify the name of the field that contains
%% item names in the
%% input data.
%%
%% For more information about generating themes, see Batch recommendations
%% with themes from Content Generator
%% :
%% https://docs.aws.amazon.com/personalize/latest/dg/themed-batch-recommendations.html.
%%
%% You can't get batch recommendations with the Trending-Now or
%% Next-Best-Action recipes.
create_batch_inference_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_batch_inference_job(Client, Input, []).
create_batch_inference_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateBatchInferenceJob">>, Input, Options).

%% @doc Creates a batch segment job.
%%
%% The operation can handle up to 50 million records and the
%% input file must be in JSON format. For more information, see
%% Getting batch recommendations and user segments:
%% https://docs.aws.amazon.com/personalize/latest/dg/recommendations-batch.html.
create_batch_segment_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_batch_segment_job(Client, Input, []).
create_batch_segment_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateBatchSegmentJob">>, Input, Options).

%% @doc Creates a campaign that deploys a solution version.
%%
%% When a client calls the
%% GetRecommendations:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_RS_GetRecommendations.html
%% and
%% GetPersonalizedRanking:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_RS_GetPersonalizedRanking.html
%% APIs, a campaign is specified in the request.
%%
%% Minimum Provisioned TPS and Auto-Scaling
%%
%% A high `minProvisionedTPS' will increase your cost. We recommend
%% starting with 1 for `minProvisionedTPS' (the default). Track
%% your usage using Amazon CloudWatch metrics, and increase the
%% `minProvisionedTPS'
%% as necessary.
%%
%% When you create an Amazon Personalize campaign, you can specify the
%% minimum provisioned transactions per second
%% (`minProvisionedTPS') for the campaign. This is the baseline
%% transaction throughput for the campaign provisioned by
%% Amazon Personalize. It sets the minimum billing charge for the campaign
%% while it is active. A transaction is a single `GetRecommendations' or
%% `GetPersonalizedRanking' request. The default `minProvisionedTPS'
%% is 1.
%%
%% If your TPS increases beyond the `minProvisionedTPS', Amazon
%% Personalize auto-scales the provisioned capacity up
%% and down, but never below `minProvisionedTPS'.
%% There's a short time delay while the capacity is increased
%% that might cause loss of transactions. When your traffic reduces, capacity
%% returns to the `minProvisionedTPS'.
%%
%% You are charged for the
%% the minimum provisioned TPS or, if your requests exceed the
%% `minProvisionedTPS', the actual TPS.
%% The actual TPS is the total number of recommendation requests you make.
%% We recommend starting with a low `minProvisionedTPS', track
%% your usage using Amazon CloudWatch metrics, and then increase the
%% `minProvisionedTPS' as necessary.
%%
%% For more information about campaign costs, see Amazon Personalize pricing:
%% https://aws.amazon.com/personalize/pricing/.
%%
%% Status
%%
%% A campaign can be in one of the following states:
%%
%% CREATE PENDING &gt; CREATE IN_PROGRESS &gt; ACTIVE -or- CREATE FAILED
%%
%% DELETE PENDING &gt; DELETE IN_PROGRESS
%%
%% To get the campaign status, call DescribeCampaign:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeCampaign.html.
%%
%% Wait until the `status' of the campaign
%% is `ACTIVE' before asking the campaign for recommendations.
%%
%% == Related APIs ==
%%
%% ListCampaigns:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_ListCampaigns.html
%%
%% DescribeCampaign:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeCampaign.html
%%
%% UpdateCampaign:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_UpdateCampaign.html
%%
%% DeleteCampaign:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_DeleteCampaign.html
create_campaign(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_campaign(Client, Input, []).
create_campaign(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateCampaign">>, Input, Options).

%% @doc Creates an empty dataset and adds it to the specified dataset group.
%%
%% Use CreateDatasetImportJob:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_CreateDatasetImportJob.html
%% to import your training data to a
%% dataset.
%%
%% There are 5 types of datasets:
%%
%% Item interactions
%%
%% Items
%%
%% Users
%%
%% Action interactions
%%
%% Actions
%%
%% Each dataset type has an associated schema with required field types.
%% Only the `Item interactions' dataset is required in order to train a
%% model (also referred to as creating a solution).
%%
%% A dataset can be in one of the following states:
%%
%% CREATE PENDING &gt; CREATE IN_PROGRESS &gt; ACTIVE -or- CREATE
%% FAILED
%%
%% DELETE PENDING &gt; DELETE IN_PROGRESS
%%
%% To get the status of the dataset, call DescribeDataset:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeDataset.html.
%%
%% == Related APIs ==
%%
%% CreateDatasetGroup:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_CreateDatasetGroup.html
%%
%% ListDatasets:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_ListDatasets.html
%%
%% DescribeDataset:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeDataset.html
%%
%% DeleteDataset:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_DeleteDataset.html
create_dataset(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_dataset(Client, Input, []).
create_dataset(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDataset">>, Input, Options).

%% @doc Creates a job that exports data from your dataset to an Amazon S3
%% bucket.
%%
%% To allow Amazon Personalize to export the training data, you must specify
%% an
%% service-linked IAM role that gives Amazon Personalize `PutObject'
%% permissions for your Amazon S3 bucket. For information, see Exporting a
%% dataset:
%% https://docs.aws.amazon.com/personalize/latest/dg/export-data.html in the
%% Amazon Personalize developer guide.
%%
%% Status
%%
%% A dataset export job can be in one of the following states:
%%
%% CREATE PENDING &gt; CREATE IN_PROGRESS &gt; ACTIVE -or- CREATE
%% FAILED
%%
%% To get the status of the export job, call DescribeDatasetExportJob:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeDatasetExportJob.html,
%% and specify the Amazon Resource Name
%% (ARN) of the dataset export job. The dataset export is complete when the
%% status shows as ACTIVE. If the status shows as CREATE FAILED, the response
%% includes a `failureReason' key, which describes why the job
%% failed.
create_dataset_export_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_dataset_export_job(Client, Input, []).
create_dataset_export_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDatasetExportJob">>, Input, Options).

%% @doc Creates an empty dataset group.
%%
%% A dataset group is a container for
%% Amazon Personalize resources. A dataset group can contain at most three
%% datasets, one
%% for each type of dataset:
%%
%% Item interactions
%%
%% Items
%%
%% Users
%%
%% Actions
%%
%% Action interactions
%%
%% A dataset group can be a Domain dataset group, where you specify a
%% domain and use pre-configured resources like recommenders, or a
%% Custom dataset group, where you use custom resources, such as a solution
%% with a solution version, that you deploy with a campaign. If you start
%% with a Domain dataset group, you can still add custom resources such as
%% solutions and solution versions trained with recipes for custom use cases
%% and deployed with campaigns.
%%
%% A dataset group can be in one of the following states:
%%
%% CREATE PENDING &gt; CREATE IN_PROGRESS &gt; ACTIVE -or- CREATE
%% FAILED
%%
%% DELETE PENDING
%%
%% To get the status of the dataset group, call DescribeDatasetGroup:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeDatasetGroup.html.
%% If the status shows as CREATE FAILED, the
%% response includes a `failureReason' key, which describes why
%% the creation failed.
%%
%% You must wait until the `status' of the dataset group is
%% `ACTIVE' before adding a dataset to the group.
%%
%% You can specify an Key Management Service (KMS) key to encrypt the
%% datasets in
%% the group. If you specify a KMS key, you must also include an Identity and
%% Access Management
%% (IAM) role that has permission to access the key.
%%
%% == APIs that require a dataset group ARN in the request ==
%%
%% CreateDataset:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_CreateDataset.html
%%
%% CreateEventTracker:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_CreateEventTracker.html
%%
%% CreateSolution:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_CreateSolution.html
%%
%% == Related APIs ==
%%
%% ListDatasetGroups:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_ListDatasetGroups.html
%%
%% DescribeDatasetGroup:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeDatasetGroup.html
%%
%% DeleteDatasetGroup:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_DeleteDatasetGroup.html
create_dataset_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_dataset_group(Client, Input, []).
create_dataset_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDatasetGroup">>, Input, Options).

%% @doc Creates a job that imports training data from your data source (an
%% Amazon S3 bucket) to an Amazon Personalize dataset.
%%
%% To allow Amazon Personalize to import the
%% training data, you must specify an IAM service role that has permission to
%% read from the data source, as Amazon Personalize makes a copy of your data
%% and
%% processes it internally. For information on granting access to your Amazon
%% S3
%% bucket, see Giving
%% Amazon Personalize Access to Amazon S3 Resources:
%% https://docs.aws.amazon.com/personalize/latest/dg/granting-personalize-s3-access.html.
%%
%% If you already created a recommender or deployed a custom solution version
%% with a campaign, how new bulk records
%% influence recommendations depends on the domain use case or recipe that
%% you use. For more information, see How new data influences
%% real-time recommendations:
%% https://docs.aws.amazon.com/personalize/latest/dg/how-new-data-influences-recommendations.html.
%%
%% By default, a dataset import job replaces any existing data in the
%% dataset that you imported in bulk. To add new records without replacing
%% existing data, specify INCREMENTAL for the import mode in the
%% CreateDatasetImportJob operation.
%%
%% Status
%%
%% A dataset import job can be in one of the following states:
%%
%% CREATE PENDING &gt; CREATE IN_PROGRESS &gt; ACTIVE -or- CREATE
%% FAILED
%%
%% To get the status of the import job, call DescribeDatasetImportJob:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeDatasetImportJob.html,
%% providing the Amazon Resource Name
%% (ARN) of the dataset import job. The dataset import is complete when the
%% status shows as ACTIVE. If the status shows as CREATE FAILED, the response
%% includes a `failureReason' key, which describes why the job
%% failed.
%%
%% Importing takes time. You must wait until the status shows as ACTIVE
%% before training a model using the dataset.
%%
%% == Related APIs ==
%%
%% ListDatasetImportJobs:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_ListDatasetImportJobs.html
%%
%% DescribeDatasetImportJob:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeDatasetImportJob.html
create_dataset_import_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_dataset_import_job(Client, Input, []).
create_dataset_import_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDatasetImportJob">>, Input, Options).

%% @doc Creates an event tracker that you use when adding event data to a
%% specified dataset
%% group using the
%% PutEvents:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_UBS_PutEvents.html
%% API.
%%
%% Only one event tracker can be associated with a dataset group. You will
%% get
%% an error if you call `CreateEventTracker' using the same dataset group
%% as an
%% existing event tracker.
%%
%% When you create an event tracker, the response includes a tracking ID,
%% which you pass as a parameter when you use the
%% PutEvents:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_UBS_PutEvents.html
%% operation.
%% Amazon Personalize then appends the event data to the Item interactions
%% dataset of the dataset group you specify
%% in your event tracker.
%%
%% The event tracker can be in one of the following states:
%%
%% CREATE PENDING &gt; CREATE IN_PROGRESS &gt; ACTIVE -or- CREATE FAILED
%%
%% DELETE PENDING &gt; DELETE IN_PROGRESS
%%
%% To get the status of the event tracker, call DescribeEventTracker:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeEventTracker.html.
%%
%% The event tracker must be in the ACTIVE state before using the tracking
%% ID.
%%
%% == Related APIs ==
%%
%% ListEventTrackers:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_ListEventTrackers.html
%%
%% DescribeEventTracker:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeEventTracker.html
%%
%% DeleteEventTracker:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_DeleteEventTracker.html
create_event_tracker(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_event_tracker(Client, Input, []).
create_event_tracker(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateEventTracker">>, Input, Options).

%% @doc Creates a recommendation filter.
%%
%% For more information, see Filtering recommendations and user segments:
%% https://docs.aws.amazon.com/personalize/latest/dg/filter.html.
create_filter(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_filter(Client, Input, []).
create_filter(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateFilter">>, Input, Options).

%% @doc Creates a metric attribution.
%%
%% A metric attribution creates reports on the data that you import into
%% Amazon Personalize. Depending on how you imported the data, you can view
%% reports in Amazon CloudWatch or Amazon S3.
%% For more information, see Measuring impact of recommendations:
%% https://docs.aws.amazon.com/personalize/latest/dg/measuring-recommendation-impact.html.
create_metric_attribution(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_metric_attribution(Client, Input, []).
create_metric_attribution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateMetricAttribution">>, Input, Options).

%% @doc Creates a recommender with the recipe (a Domain dataset group use
%% case) you specify.
%%
%% You create recommenders for a Domain dataset group and specify the
%% recommender's Amazon Resource Name (ARN) when you make a
%% GetRecommendations:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_RS_GetRecommendations.html
%% request.
%%
%% Minimum recommendation requests per second
%%
%% A high `minRecommendationRequestsPerSecond' will increase your bill.
%% We recommend starting with 1 for `minRecommendationRequestsPerSecond'
%% (the default). Track
%% your usage using Amazon CloudWatch metrics, and increase the
%% `minRecommendationRequestsPerSecond'
%% as necessary.
%%
%% When you create a recommender, you can configure the recommender's
%% minimum recommendation requests per second. The minimum recommendation
%% requests per second
%% (`minRecommendationRequestsPerSecond') specifies the baseline
%% recommendation request throughput provisioned by
%% Amazon Personalize. The default minRecommendationRequestsPerSecond is
%% `1'. A recommendation request is a single `GetRecommendations'
%% operation.
%% Request throughput is measured in requests per second and Amazon
%% Personalize uses your requests per second to derive
%% your requests per hour and the price of your recommender usage.
%%
%% If your requests per second increases beyond
%% `minRecommendationRequestsPerSecond', Amazon Personalize auto-scales
%% the provisioned capacity up and down,
%% but never below `minRecommendationRequestsPerSecond'.
%% There's a short time delay while the capacity is increased that might
%% cause loss of
%% requests.
%%
%% Your bill is the greater of either the minimum requests per hour (based on
%% minRecommendationRequestsPerSecond)
%% or the actual number of requests. The actual request throughput used is
%% calculated as the average requests/second within a one-hour window.
%%
%% We recommend starting with the default
%% `minRecommendationRequestsPerSecond', track
%% your usage using Amazon CloudWatch metrics, and then increase the
%% `minRecommendationRequestsPerSecond'
%% as necessary.
%%
%% Status
%%
%% A recommender can be in one of the following states:
%%
%% CREATE PENDING &gt; CREATE IN_PROGRESS &gt; ACTIVE -or- CREATE FAILED
%%
%% STOP PENDING &gt; STOP IN_PROGRESS &gt; INACTIVE &gt; START PENDING &gt;
%% START IN_PROGRESS &gt; ACTIVE
%%
%% DELETE PENDING &gt; DELETE IN_PROGRESS
%%
%% To get the recommender status, call DescribeRecommender:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeRecommender.html.
%%
%% Wait until the `status' of the recommender
%% is `ACTIVE' before asking the recommender for recommendations.
%%
%% == Related APIs ==
%%
%% ListRecommenders:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_ListRecommenders.html
%%
%% DescribeRecommender:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeRecommender.html
%%
%% UpdateRecommender:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_UpdateRecommender.html
%%
%% DeleteRecommender:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_DeleteRecommender.html
create_recommender(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_recommender(Client, Input, []).
create_recommender(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateRecommender">>, Input, Options).

%% @doc Creates an Amazon Personalize schema from the specified schema
%% string.
%%
%% The schema you create
%% must be in Avro JSON format.
%%
%% Amazon Personalize recognizes three schema variants. Each schema is
%% associated with a dataset
%% type and has a set of required field and keywords. If you are creating a
%% schema for a dataset in a Domain dataset group, you
%% provide the domain of the Domain dataset group.
%% You specify a schema when you call CreateDataset:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_CreateDataset.html.
%%
%% == Related APIs ==
%%
%% ListSchemas:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_ListSchemas.html
%%
%% DescribeSchema:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeSchema.html
%%
%% DeleteSchema:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_DeleteSchema.html
create_schema(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_schema(Client, Input, []).
create_schema(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateSchema">>, Input, Options).

%% @doc Creates the configuration for training a model.
%%
%% A trained model is known as
%% a solution version. After the configuration is created, you train the
%% model (create a solution version)
%% by calling the CreateSolutionVersion:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_CreateSolutionVersion.html
%% operation. Every time you call
%% `CreateSolutionVersion', a new version of the solution is created.
%%
%% After creating a solution version, you check its accuracy by calling
%% GetSolutionMetrics:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_GetSolutionMetrics.html.
%% When you are satisfied with the version, you
%% deploy it using CreateCampaign:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_CreateCampaign.html.
%% The campaign provides recommendations
%% to a client through the
%% GetRecommendations:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_RS_GetRecommendations.html
%% API.
%%
%% To train a model, Amazon Personalize requires training data and a recipe.
%% The training data
%% comes from the dataset group that you provide in the request. A recipe
%% specifies
%% the training algorithm and a feature transformation. You can specify one
%% of the predefined
%% recipes provided by Amazon Personalize.
%%
%% Amazon Personalize doesn't support configuring the `hpoObjective'
%% for solution hyperparameter optimization at this time.
%%
%% Status
%%
%% A solution can be in one of the following states:
%%
%% CREATE PENDING &gt; CREATE IN_PROGRESS &gt; ACTIVE -or- CREATE FAILED
%%
%% DELETE PENDING &gt; DELETE IN_PROGRESS
%%
%% To get the status of the solution, call DescribeSolution:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeSolution.html.
%% Wait
%% until the status shows as ACTIVE before calling
%% `CreateSolutionVersion'.
%%
%% == Related APIs ==
%%
%% ListSolutions:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_ListSolutions.html
%%
%% CreateSolutionVersion:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_CreateSolutionVersion.html
%%
%% DescribeSolution:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeSolution.html
%%
%% DeleteSolution:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_DeleteSolution.html
%%
%% ListSolutionVersions:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_ListSolutionVersions.html
%%
%% DescribeSolutionVersion:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeSolutionVersion.html
create_solution(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_solution(Client, Input, []).
create_solution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateSolution">>, Input, Options).

%% @doc Trains or retrains an active solution in a Custom dataset group.
%%
%% A solution is created using the CreateSolution:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_CreateSolution.html
%% operation and must be in the ACTIVE state before calling
%% `CreateSolutionVersion'. A new version of the solution is created
%% every time you
%% call this operation.
%%
%% Status
%%
%% A solution version can be in one of the following states:
%%
%% CREATE PENDING
%%
%% CREATE IN_PROGRESS
%%
%% ACTIVE
%%
%% CREATE FAILED
%%
%% CREATE STOPPING
%%
%% CREATE STOPPED
%%
%% To get the status of the version, call DescribeSolutionVersion:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeSolutionVersion.html.
%% Wait
%% until the status shows as ACTIVE before calling `CreateCampaign'.
%%
%% If the status shows as CREATE FAILED, the response includes a
%% `failureReason'
%% key, which describes why the job failed.
%%
%% == Related APIs ==
%%
%% ListSolutionVersions:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_ListSolutionVersions.html
%%
%% DescribeSolutionVersion:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeSolutionVersion.html
%%
%% ListSolutions:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_ListSolutions.html
%%
%% CreateSolution:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_CreateSolution.html
%%
%% DescribeSolution:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeSolution.html
%%
%% DeleteSolution:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_DeleteSolution.html
create_solution_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_solution_version(Client, Input, []).
create_solution_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateSolutionVersion">>, Input, Options).

%% @doc Removes a campaign by deleting the solution deployment.
%%
%% The solution that
%% the campaign is based on is not deleted and can be redeployed when needed.
%% A deleted campaign can no
%% longer be specified in a
%% GetRecommendations:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_RS_GetRecommendations.html
%% request.
%% For information on creating campaigns, see CreateCampaign:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_CreateCampaign.html.
delete_campaign(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_campaign(Client, Input, []).
delete_campaign(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteCampaign">>, Input, Options).

%% @doc Deletes a dataset.
%%
%% You can't delete a dataset if an associated
%% `DatasetImportJob' or `SolutionVersion' is in the
%% CREATE PENDING or IN PROGRESS state. For more information on datasets, see
%% CreateDataset:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_CreateDataset.html.
delete_dataset(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_dataset(Client, Input, []).
delete_dataset(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDataset">>, Input, Options).

%% @doc Deletes a dataset group.
%%
%% Before you delete a dataset group, you must
%% delete the following:
%%
%% All associated event trackers.
%%
%% All associated solutions.
%%
%% All datasets in the dataset group.
delete_dataset_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_dataset_group(Client, Input, []).
delete_dataset_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDatasetGroup">>, Input, Options).

%% @doc Deletes the event tracker.
%%
%% Does not delete the dataset from
%% the dataset group. For more
%% information on event trackers, see CreateEventTracker:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_CreateEventTracker.html.
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

%% @doc Deletes a metric attribution.
delete_metric_attribution(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_metric_attribution(Client, Input, []).
delete_metric_attribution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteMetricAttribution">>, Input, Options).

%% @doc Deactivates and removes a recommender.
%%
%% A deleted recommender can no longer be specified in a GetRecommendations:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_RS_GetRecommendations.html
%% request.
delete_recommender(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_recommender(Client, Input, []).
delete_recommender(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteRecommender">>, Input, Options).

%% @doc Deletes a schema.
%%
%% Before deleting a schema, you must delete all
%% datasets referencing the schema. For more information on schemas, see
%% CreateSchema:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_CreateSchema.html.
delete_schema(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_schema(Client, Input, []).
delete_schema(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteSchema">>, Input, Options).

%% @doc Deletes all versions of a solution and the `Solution' object
%% itself.
%%
%% Before deleting a solution, you must delete all campaigns based on
%% the solution. To determine what campaigns are using the solution, call
%% ListCampaigns:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_ListCampaigns.html
%% and supply the Amazon Resource Name (ARN) of the solution.
%% You can't delete a solution if an associated `SolutionVersion' is
%% in the
%% CREATE PENDING or IN PROGRESS state.
%% For more information on solutions, see CreateSolution:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_CreateSolution.html.
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
%% Resource Name (ARN),
%% status, input and output configurations, and the ARN of the solution
%% version used to generate
%% the recommendations.
describe_batch_inference_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_batch_inference_job(Client, Input, []).
describe_batch_inference_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeBatchInferenceJob">>, Input, Options).

%% @doc Gets the properties of a batch segment job including name, Amazon
%% Resource Name (ARN),
%% status, input and output configurations, and the ARN of the solution
%% version used to generate
%% segments.
describe_batch_segment_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_batch_segment_job(Client, Input, []).
describe_batch_segment_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeBatchSegmentJob">>, Input, Options).

%% @doc Describes the given campaign, including its status.
%%
%% A campaign can be in one of the following states:
%%
%% CREATE PENDING &gt; CREATE IN_PROGRESS &gt; ACTIVE -or- CREATE FAILED
%%
%% DELETE PENDING &gt; DELETE IN_PROGRESS
%%
%% When the `status' is `CREATE FAILED', the response includes the
%% `failureReason' key, which describes why.
%%
%% For more information on campaigns, see CreateCampaign:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_CreateCampaign.html.
describe_campaign(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_campaign(Client, Input, []).
describe_campaign(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeCampaign">>, Input, Options).

%% @doc Describes the given dataset.
%%
%% For more information on datasets, see
%% CreateDataset:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_CreateDataset.html.
describe_dataset(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_dataset(Client, Input, []).
describe_dataset(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDataset">>, Input, Options).

%% @doc Describes the dataset export job created by CreateDatasetExportJob:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_CreateDatasetExportJob.html,
%% including the export job status.
describe_dataset_export_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_dataset_export_job(Client, Input, []).
describe_dataset_export_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDatasetExportJob">>, Input, Options).

%% @doc Describes the given dataset group.
%%
%% For more information on dataset
%% groups, see CreateDatasetGroup:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_CreateDatasetGroup.html.
describe_dataset_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_dataset_group(Client, Input, []).
describe_dataset_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDatasetGroup">>, Input, Options).

%% @doc Describes the dataset import job created by CreateDatasetImportJob:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_CreateDatasetImportJob.html,
%% including the import job status.
describe_dataset_import_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_dataset_import_job(Client, Input, []).
describe_dataset_import_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDatasetImportJob">>, Input, Options).

%% @doc Describes an event tracker.
%%
%% The response includes the `trackingId' and
%% `status' of the event tracker.
%% For more information on event trackers, see CreateEventTracker:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_CreateEventTracker.html.
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

%% @doc Describes a metric attribution.
describe_metric_attribution(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_metric_attribution(Client, Input, []).
describe_metric_attribution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeMetricAttribution">>, Input, Options).

%% @doc Describes a recipe.
%%
%% A recipe contains three items:
%%
%% An algorithm that trains a model.
%%
%% Hyperparameters that govern the training.
%%
%% Feature transformation information for modifying the input data before
%% training.
%%
%% Amazon Personalize provides a set of predefined recipes. You specify a
%% recipe when you create a
%% solution with the CreateSolution:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_CreateSolution.html
%% API.
%% `CreateSolution' trains a model by using the algorithm
%% in the specified recipe and a training dataset. The solution, when
%% deployed as a campaign,
%% can provide recommendations using the
%% GetRecommendations:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_RS_GetRecommendations.html
%% API.
describe_recipe(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_recipe(Client, Input, []).
describe_recipe(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeRecipe">>, Input, Options).

%% @doc Describes the given recommender, including its status.
%%
%% A recommender can be in one of the following states:
%%
%% CREATE PENDING &gt; CREATE IN_PROGRESS &gt; ACTIVE -or- CREATE FAILED
%%
%% STOP PENDING &gt; STOP IN_PROGRESS &gt; INACTIVE &gt; START PENDING &gt;
%% START IN_PROGRESS &gt; ACTIVE
%%
%% DELETE PENDING &gt; DELETE IN_PROGRESS
%%
%% When the `status' is `CREATE FAILED', the response includes the
%% `failureReason' key, which describes why.
%%
%% The `modelMetrics' key is null when
%% the recommender is being created or deleted.
%%
%% For more information on recommenders, see CreateRecommender:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_CreateRecommender.html.
describe_recommender(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_recommender(Client, Input, []).
describe_recommender(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeRecommender">>, Input, Options).

%% @doc Describes a schema.
%%
%% For more information on schemas, see
%% CreateSchema:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_CreateSchema.html.
describe_schema(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_schema(Client, Input, []).
describe_schema(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeSchema">>, Input, Options).

%% @doc Describes a solution.
%%
%% For more information on solutions, see CreateSolution:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_CreateSolution.html.
describe_solution(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_solution(Client, Input, []).
describe_solution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeSolution">>, Input, Options).

%% @doc Describes a specific version of a solution.
%%
%% For more information on solutions, see CreateSolution:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_CreateSolution.html
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
%% of a solution
%% version.
list_batch_inference_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_batch_inference_jobs(Client, Input, []).
list_batch_inference_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListBatchInferenceJobs">>, Input, Options).

%% @doc Gets a list of the batch segment jobs that have been performed off of
%% a solution
%% version that you specify.
list_batch_segment_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_batch_segment_jobs(Client, Input, []).
list_batch_segment_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListBatchSegmentJobs">>, Input, Options).

%% @doc Returns a list of campaigns that use the given solution.
%%
%% When a solution is not specified, all the campaigns associated with the
%% account are listed.
%% The response provides the properties for each campaign, including the
%% Amazon Resource Name (ARN).
%% For more information on campaigns, see CreateCampaign:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_CreateCampaign.html.
list_campaigns(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_campaigns(Client, Input, []).
list_campaigns(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListCampaigns">>, Input, Options).

%% @doc Returns a list of dataset export jobs that use the given dataset.
%%
%% When
%% a dataset is not specified, all the dataset export jobs associated with
%% the account are listed. The response provides the properties for each
%% dataset export job, including the Amazon Resource Name (ARN). For more
%% information on dataset export jobs, see CreateDatasetExportJob:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_CreateDatasetExportJob.html.
%% For more information on datasets, see
%% CreateDataset:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_CreateDataset.html.
list_dataset_export_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_dataset_export_jobs(Client, Input, []).
list_dataset_export_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDatasetExportJobs">>, Input, Options).

%% @doc Returns a list of dataset groups.
%%
%% The response provides the properties
%% for each dataset group, including the Amazon Resource Name (ARN). For more
%% information on dataset groups, see CreateDatasetGroup:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_CreateDatasetGroup.html.
list_dataset_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_dataset_groups(Client, Input, []).
list_dataset_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDatasetGroups">>, Input, Options).

%% @doc Returns a list of dataset import jobs that use the given dataset.
%%
%% When
%% a dataset is not specified, all the dataset import jobs associated with
%% the account are listed. The response provides the properties for each
%% dataset import job, including the Amazon Resource Name (ARN). For more
%% information on dataset import jobs, see CreateDatasetImportJob:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_CreateDatasetImportJob.html.
%% For more information on datasets, see
%% CreateDataset:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_CreateDataset.html.
list_dataset_import_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_dataset_import_jobs(Client, Input, []).
list_dataset_import_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDatasetImportJobs">>, Input, Options).

%% @doc Returns the list of datasets contained in the given dataset group.
%%
%% The
%% response provides the properties for each dataset, including the Amazon
%% Resource Name (ARN). For more information on datasets, see CreateDataset:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_CreateDataset.html.
list_datasets(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_datasets(Client, Input, []).
list_datasets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDatasets">>, Input, Options).

%% @doc Returns the list of event trackers associated with the account.
%%
%% The response provides the properties for each event tracker, including the
%% Amazon Resource
%% Name (ARN) and tracking ID. For more
%% information on event trackers, see CreateEventTracker:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_CreateEventTracker.html.
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

%% @doc Lists the metrics for the metric attribution.
list_metric_attribution_metrics(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_metric_attribution_metrics(Client, Input, []).
list_metric_attribution_metrics(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListMetricAttributionMetrics">>, Input, Options).

%% @doc Lists metric attributions.
list_metric_attributions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_metric_attributions(Client, Input, []).
list_metric_attributions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListMetricAttributions">>, Input, Options).

%% @doc Returns a list of available recipes.
%%
%% The response provides the properties
%% for each recipe, including the recipe's Amazon Resource Name (ARN).
list_recipes(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_recipes(Client, Input, []).
list_recipes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListRecipes">>, Input, Options).

%% @doc Returns a list of recommenders in a given Domain dataset group.
%%
%% When a Domain dataset group is not specified, all the recommenders
%% associated with the account are listed.
%% The response provides the properties for each recommender, including the
%% Amazon Resource Name (ARN).
%% For more information on recommenders, see CreateRecommender:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_CreateRecommender.html.
list_recommenders(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_recommenders(Client, Input, []).
list_recommenders(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListRecommenders">>, Input, Options).

%% @doc Returns the list of schemas associated with the account.
%%
%% The response provides the
%% properties for each schema, including the Amazon Resource Name (ARN).
%% For more information on schemas, see CreateSchema:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_CreateSchema.html.
list_schemas(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_schemas(Client, Input, []).
list_schemas(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListSchemas">>, Input, Options).

%% @doc Returns a list of solution versions for the given solution.
%%
%% When a solution is not
%% specified, all the solution versions associated with the account are
%% listed. The response
%% provides the properties for each solution version, including the Amazon
%% Resource Name (ARN).
list_solution_versions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_solution_versions(Client, Input, []).
list_solution_versions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListSolutionVersions">>, Input, Options).

%% @doc Returns a list of solutions that use the given dataset group.
%%
%% When a dataset group is not specified, all the solutions associated with
%% the account are listed.
%% The response provides the properties for each solution, including the
%% Amazon Resource Name (ARN).
%% For more information on solutions, see CreateSolution:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_CreateSolution.html.
list_solutions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_solutions(Client, Input, []).
list_solutions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListSolutions">>, Input, Options).

%% @doc Get a list of tags:
%% https://docs.aws.amazon.com/personalize/latest/dg/tagging-resources.html
%% attached to a resource.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Starts a recommender that is INACTIVE.
%%
%% Starting a recommender does not
%% create any new models, but resumes billing and automatic retraining for
%% the recommender.
start_recommender(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_recommender(Client, Input, []).
start_recommender(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartRecommender">>, Input, Options).

%% @doc Stops a recommender that is ACTIVE.
%%
%% Stopping a recommender halts billing and automatic retraining for the
%% recommender.
stop_recommender(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_recommender(Client, Input, []).
stop_recommender(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopRecommender">>, Input, Options).

%% @doc Stops creating a solution version that is in a state of
%% CREATE_PENDING or CREATE IN_PROGRESS.
%%
%% Depending on the current state of the solution version, the solution
%% version state changes as follows:
%%
%% CREATE_PENDING &gt; CREATE_STOPPED
%%
%% or
%%
%% CREATE_IN_PROGRESS &gt; CREATE_STOPPING &gt; CREATE_STOPPED
%%
%% You are billed for all of the training completed up
%% until you stop the solution version creation. You cannot resume creating a
%% solution version once it has been stopped.
stop_solution_version_creation(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_solution_version_creation(Client, Input, []).
stop_solution_version_creation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopSolutionVersionCreation">>, Input, Options).

%% @doc Add a list of tags to a resource.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Remove tags:
%% https://docs.aws.amazon.com/personalize/latest/dg/tagging-resources.html
%% that are attached to a resource.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc
%% Updates a campaign to deploy a retrained solution version with an existing
%% campaign, change your campaign's `minProvisionedTPS',
%% or modify your campaign's configuration, such as the exploration
%% configuration.
%%
%% To update a campaign, the campaign status must be ACTIVE or CREATE FAILED.
%% Check the campaign status using the DescribeCampaign:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeCampaign.html
%% operation.
%%
%% You can still get recommendations from a campaign while an update is in
%% progress.
%% The campaign will use the previous solution version and campaign
%% configuration to generate recommendations until the latest campaign update
%% status is `Active'.
%%
%% For more information about updating a campaign, including code samples,
%% see Updating a campaign:
%% https://docs.aws.amazon.com/personalize/latest/dg/update-campaigns.html.
%% For more information about campaigns, see Creating a campaign:
%% https://docs.aws.amazon.com/personalize/latest/dg/campaigns.html.
update_campaign(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_campaign(Client, Input, []).
update_campaign(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateCampaign">>, Input, Options).

%% @doc Update a dataset to replace its schema with a new or existing one.
%%
%% For more information, see Replacing a dataset's schema:
%% https://docs.aws.amazon.com/personalize/latest/dg/updating-dataset-schema.html.
update_dataset(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_dataset(Client, Input, []).
update_dataset(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateDataset">>, Input, Options).

%% @doc Updates a metric attribution.
update_metric_attribution(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_metric_attribution(Client, Input, []).
update_metric_attribution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateMetricAttribution">>, Input, Options).

%% @doc Updates the recommender to modify the recommender configuration.
%%
%% If you update the recommender to modify the columns used in training,
%% Amazon Personalize automatically starts a full retraining of
%% the models backing your recommender. While the update completes, you can
%% still get recommendations from the recommender. The recommender
%% uses the previous configuration until the update completes.
%% To track the status of this update,
%% use the `latestRecommenderUpdate' returned in the DescribeRecommender:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeRecommender.html
%% operation.
update_recommender(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_recommender(Client, Input, []).
update_recommender(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateRecommender">>, Input, Options).

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
    Proto = aws_client:proto(Client),
    Port = aws_client:port(Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
