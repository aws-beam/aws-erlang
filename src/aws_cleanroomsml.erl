%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Welcome to the Amazon Web Services Clean Rooms ML API Reference.
%%
%% Amazon Web Services Clean Rooms ML provides a privacy-enhancing method for
%% two parties to identify similar users in their data without the need to
%% share their data with each other. The first party brings the training data
%% to Clean Rooms so that they can create and configure an audience model
%% (lookalike model) and associate it with a collaboration. The second party
%% then brings their seed data to Clean Rooms and generates an audience
%% (lookalike segment) that resembles the training data.
%%
%% To learn more about Amazon Web Services Clean Rooms ML concepts,
%% procedures, and best practices, see the
%% Clean Rooms User Guide:
%% https://docs.aws.amazon.com/clean-rooms/latest/userguide/machine-learning.html.
%%
%% To learn more about SQL commands, functions, and conditions supported in
%% Clean Rooms, see the
%% Clean Rooms SQL Reference:
%% https://docs.aws.amazon.com/clean-rooms/latest/sql-reference/sql-reference.html.
-module(aws_cleanroomsml).

-export([create_audience_model/2,
         create_audience_model/3,
         create_configured_audience_model/2,
         create_configured_audience_model/3,
         create_training_dataset/2,
         create_training_dataset/3,
         delete_audience_generation_job/3,
         delete_audience_generation_job/4,
         delete_audience_model/3,
         delete_audience_model/4,
         delete_configured_audience_model/3,
         delete_configured_audience_model/4,
         delete_configured_audience_model_policy/3,
         delete_configured_audience_model_policy/4,
         delete_training_dataset/3,
         delete_training_dataset/4,
         get_audience_generation_job/2,
         get_audience_generation_job/4,
         get_audience_generation_job/5,
         get_audience_model/2,
         get_audience_model/4,
         get_audience_model/5,
         get_configured_audience_model/2,
         get_configured_audience_model/4,
         get_configured_audience_model/5,
         get_configured_audience_model_policy/2,
         get_configured_audience_model_policy/4,
         get_configured_audience_model_policy/5,
         get_training_dataset/2,
         get_training_dataset/4,
         get_training_dataset/5,
         list_audience_export_jobs/1,
         list_audience_export_jobs/3,
         list_audience_export_jobs/4,
         list_audience_generation_jobs/1,
         list_audience_generation_jobs/3,
         list_audience_generation_jobs/4,
         list_audience_models/1,
         list_audience_models/3,
         list_audience_models/4,
         list_configured_audience_models/1,
         list_configured_audience_models/3,
         list_configured_audience_models/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         list_training_datasets/1,
         list_training_datasets/3,
         list_training_datasets/4,
         put_configured_audience_model_policy/3,
         put_configured_audience_model_policy/4,
         start_audience_export_job/2,
         start_audience_export_job/3,
         start_audience_generation_job/2,
         start_audience_generation_job/3,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_configured_audience_model/3,
         update_configured_audience_model/4]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% update_configured_audience_model_response() :: #{
%%   <<"configuredAudienceModelArn">> => string()
%% }
-type update_configured_audience_model_response() :: #{binary() => any()}.


%% Example:
%% create_audience_model_response() :: #{
%%   <<"audienceModelArn">> => string()
%% }
-type create_audience_model_response() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% audience_quality_metrics() :: #{
%%   <<"recallMetric">> => [float()],
%%   <<"relevanceMetrics">> => list(relevance_metric()())
%% }
-type audience_quality_metrics() :: #{binary() => any()}.


%% Example:
%% start_audience_generation_job_response() :: #{
%%   <<"audienceGenerationJobArn">> => string()
%% }
-type start_audience_generation_job_response() :: #{binary() => any()}.


%% Example:
%% get_audience_generation_job_response() :: #{
%%   <<"audienceGenerationJobArn">> => string(),
%%   <<"collaborationId">> => string(),
%%   <<"configuredAudienceModelArn">> => string(),
%%   <<"createTime">> => [non_neg_integer()],
%%   <<"description">> => string(),
%%   <<"includeSeedInOutput">> => [boolean()],
%%   <<"metrics">> => audience_quality_metrics(),
%%   <<"name">> => string(),
%%   <<"seedAudience">> => audience_generation_job_data_source(),
%%   <<"startedBy">> => string(),
%%   <<"status">> => list(any()),
%%   <<"statusDetails">> => status_details(),
%%   <<"tags">> => map(),
%%   <<"updateTime">> => [non_neg_integer()]
%% }
-type get_audience_generation_job_response() :: #{binary() => any()}.


%% Example:
%% get_training_dataset_response() :: #{
%%   <<"createTime">> => [non_neg_integer()],
%%   <<"description">> => string(),
%%   <<"name">> => string(),
%%   <<"roleArn">> => string(),
%%   <<"status">> => list(any()),
%%   <<"tags">> => map(),
%%   <<"trainingData">> => list(dataset()()),
%%   <<"trainingDatasetArn">> => string(),
%%   <<"updateTime">> => [non_neg_integer()]
%% }
-type get_training_dataset_response() :: #{binary() => any()}.


%% Example:
%% create_configured_audience_model_response() :: #{
%%   <<"configuredAudienceModelArn">> => string()
%% }
-type create_configured_audience_model_response() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% list_configured_audience_models_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_configured_audience_models_request() :: #{binary() => any()}.


%% Example:
%% list_training_datasets_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_training_datasets_request() :: #{binary() => any()}.

%% Example:
%% get_training_dataset_request() :: #{}
-type get_training_dataset_request() :: #{}.


%% Example:
%% relevance_metric() :: #{
%%   <<"audienceSize">> => audience_size(),
%%   <<"score">> => [float()]
%% }
-type relevance_metric() :: #{binary() => any()}.


%% Example:
%% create_configured_audience_model_request() :: #{
%%   <<"audienceModelArn">> := string(),
%%   <<"audienceSizeConfig">> => audience_size_config(),
%%   <<"childResourceTagOnCreatePolicy">> => list(any()),
%%   <<"description">> => string(),
%%   <<"minMatchingSeedSize">> => integer(),
%%   <<"name">> := string(),
%%   <<"outputConfig">> := configured_audience_model_output_config(),
%%   <<"sharedAudienceMetrics">> := list(list(any())()),
%%   <<"tags">> => map()
%% }
-type create_configured_audience_model_request() :: #{binary() => any()}.

%% Example:
%% delete_configured_audience_model_request() :: #{}
-type delete_configured_audience_model_request() :: #{}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"tagKeys">> := list(string()())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% status_details() :: #{
%%   <<"message">> => [string()],
%%   <<"statusCode">> => [string()]
%% }
-type status_details() :: #{binary() => any()}.


%% Example:
%% start_audience_export_job_request() :: #{
%%   <<"audienceGenerationJobArn">> := string(),
%%   <<"audienceSize">> := audience_size(),
%%   <<"description">> => string(),
%%   <<"name">> := string()
%% }
-type start_audience_export_job_request() :: #{binary() => any()}.

%% Example:
%% delete_training_dataset_request() :: #{}
-type delete_training_dataset_request() :: #{}.


%% Example:
%% list_audience_models_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_audience_models_request() :: #{binary() => any()}.


%% Example:
%% dataset() :: #{
%%   <<"inputConfig">> => dataset_input_config(),
%%   <<"type">> => list(any())
%% }
-type dataset() :: #{binary() => any()}.


%% Example:
%% audience_size() :: #{
%%   <<"type">> => list(any()),
%%   <<"value">> => integer()
%% }
-type audience_size() :: #{binary() => any()}.


%% Example:
%% start_audience_generation_job_request() :: #{
%%   <<"collaborationId">> => string(),
%%   <<"configuredAudienceModelArn">> := string(),
%%   <<"description">> => string(),
%%   <<"includeSeedInOutput">> => [boolean()],
%%   <<"name">> := string(),
%%   <<"seedAudience">> := audience_generation_job_data_source(),
%%   <<"tags">> => map()
%% }
-type start_audience_generation_job_request() :: #{binary() => any()}.


%% Example:
%% audience_generation_job_summary() :: #{
%%   <<"audienceGenerationJobArn">> => string(),
%%   <<"collaborationId">> => string(),
%%   <<"configuredAudienceModelArn">> => string(),
%%   <<"createTime">> => [non_neg_integer()],
%%   <<"description">> => string(),
%%   <<"name">> => string(),
%%   <<"startedBy">> => string(),
%%   <<"status">> => list(any()),
%%   <<"updateTime">> => [non_neg_integer()]
%% }
-type audience_generation_job_summary() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% get_audience_model_request() :: #{}
-type get_audience_model_request() :: #{}.


%% Example:
%% configured_audience_model_output_config() :: #{
%%   <<"destination">> => audience_destination(),
%%   <<"roleArn">> => string()
%% }
-type configured_audience_model_output_config() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% get_configured_audience_model_response() :: #{
%%   <<"audienceModelArn">> => string(),
%%   <<"audienceSizeConfig">> => audience_size_config(),
%%   <<"childResourceTagOnCreatePolicy">> => list(any()),
%%   <<"configuredAudienceModelArn">> => string(),
%%   <<"createTime">> => [non_neg_integer()],
%%   <<"description">> => string(),
%%   <<"minMatchingSeedSize">> => integer(),
%%   <<"name">> => string(),
%%   <<"outputConfig">> => configured_audience_model_output_config(),
%%   <<"sharedAudienceMetrics">> => list(list(any())()),
%%   <<"status">> => list(any()),
%%   <<"tags">> => map(),
%%   <<"updateTime">> => [non_neg_integer()]
%% }
-type get_configured_audience_model_response() :: #{binary() => any()}.


%% Example:
%% audience_model_summary() :: #{
%%   <<"audienceModelArn">> => string(),
%%   <<"createTime">> => [non_neg_integer()],
%%   <<"description">> => string(),
%%   <<"name">> => string(),
%%   <<"status">> => list(any()),
%%   <<"trainingDatasetArn">> => string(),
%%   <<"updateTime">> => [non_neg_integer()]
%% }
-type audience_model_summary() :: #{binary() => any()}.

%% Example:
%% delete_audience_generation_job_request() :: #{}
-type delete_audience_generation_job_request() :: #{}.


%% Example:
%% list_training_datasets_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"trainingDatasets">> => list(training_dataset_summary()())
%% }
-type list_training_datasets_response() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% audience_export_job_summary() :: #{
%%   <<"audienceGenerationJobArn">> => string(),
%%   <<"audienceSize">> => audience_size(),
%%   <<"createTime">> => [non_neg_integer()],
%%   <<"description">> => string(),
%%   <<"name">> => string(),
%%   <<"outputLocation">> => string(),
%%   <<"status">> => list(any()),
%%   <<"statusDetails">> => status_details(),
%%   <<"updateTime">> => [non_neg_integer()]
%% }
-type audience_export_job_summary() :: #{binary() => any()}.

%% Example:
%% delete_audience_model_request() :: #{}
-type delete_audience_model_request() :: #{}.


%% Example:
%% create_training_dataset_response() :: #{
%%   <<"trainingDatasetArn">> => string()
%% }
-type create_training_dataset_response() :: #{binary() => any()}.


%% Example:
%% create_audience_model_request() :: #{
%%   <<"description">> => string(),
%%   <<"kmsKeyArn">> => string(),
%%   <<"name">> := string(),
%%   <<"tags">> => map(),
%%   <<"trainingDataEndTime">> => [non_neg_integer()],
%%   <<"trainingDataStartTime">> => [non_neg_integer()],
%%   <<"trainingDatasetArn">> := string()
%% }
-type create_audience_model_request() :: #{binary() => any()}.


%% Example:
%% list_configured_audience_models_response() :: #{
%%   <<"configuredAudienceModels">> => list(configured_audience_model_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_configured_audience_models_response() :: #{binary() => any()}.


%% Example:
%% s3_config_map() :: #{
%%   <<"s3Uri">> => string()
%% }
-type s3_config_map() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% list_audience_export_jobs_response() :: #{
%%   <<"audienceExportJobs">> => list(audience_export_job_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_audience_export_jobs_response() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.

%% Example:
%% get_configured_audience_model_request() :: #{}
-type get_configured_audience_model_request() :: #{}.


%% Example:
%% validation_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% configured_audience_model_summary() :: #{
%%   <<"audienceModelArn">> => string(),
%%   <<"configuredAudienceModelArn">> => string(),
%%   <<"createTime">> => [non_neg_integer()],
%%   <<"description">> => string(),
%%   <<"name">> => string(),
%%   <<"outputConfig">> => configured_audience_model_output_config(),
%%   <<"status">> => list(any()),
%%   <<"updateTime">> => [non_neg_integer()]
%% }
-type configured_audience_model_summary() :: #{binary() => any()}.


%% Example:
%% get_configured_audience_model_policy_response() :: #{
%%   <<"configuredAudienceModelArn">> => string(),
%%   <<"configuredAudienceModelPolicy">> => string(),
%%   <<"policyHash">> => string()
%% }
-type get_configured_audience_model_policy_response() :: #{binary() => any()}.


%% Example:
%% glue_data_source() :: #{
%%   <<"catalogId">> => string(),
%%   <<"databaseName">> => string(),
%%   <<"tableName">> => string()
%% }
-type glue_data_source() :: #{binary() => any()}.


%% Example:
%% put_configured_audience_model_policy_response() :: #{
%%   <<"configuredAudienceModelPolicy">> => string(),
%%   <<"policyHash">> => string()
%% }
-type put_configured_audience_model_policy_response() :: #{binary() => any()}.


%% Example:
%% create_training_dataset_request() :: #{
%%   <<"description">> => string(),
%%   <<"name">> := string(),
%%   <<"roleArn">> := string(),
%%   <<"tags">> => map(),
%%   <<"trainingData">> := list(dataset()())
%% }
-type create_training_dataset_request() :: #{binary() => any()}.


%% Example:
%% training_dataset_summary() :: #{
%%   <<"createTime">> => [non_neg_integer()],
%%   <<"description">> => string(),
%%   <<"name">> => string(),
%%   <<"status">> => list(any()),
%%   <<"trainingDatasetArn">> => string(),
%%   <<"updateTime">> => [non_neg_integer()]
%% }
-type training_dataset_summary() :: #{binary() => any()}.


%% Example:
%% column_schema() :: #{
%%   <<"columnName">> => string(),
%%   <<"columnTypes">> => list(list(any())())
%% }
-type column_schema() :: #{binary() => any()}.


%% Example:
%% get_audience_model_response() :: #{
%%   <<"audienceModelArn">> => string(),
%%   <<"createTime">> => [non_neg_integer()],
%%   <<"description">> => string(),
%%   <<"kmsKeyArn">> => string(),
%%   <<"name">> => string(),
%%   <<"status">> => list(any()),
%%   <<"statusDetails">> => status_details(),
%%   <<"tags">> => map(),
%%   <<"trainingDataEndTime">> => [non_neg_integer()],
%%   <<"trainingDataStartTime">> => [non_neg_integer()],
%%   <<"trainingDatasetArn">> => string(),
%%   <<"updateTime">> => [non_neg_integer()]
%% }
-type get_audience_model_response() :: #{binary() => any()}.


%% Example:
%% dataset_input_config() :: #{
%%   <<"dataSource">> => data_source(),
%%   <<"schema">> => list(column_schema()())
%% }
-type dataset_input_config() :: #{binary() => any()}.


%% Example:
%% put_configured_audience_model_policy_request() :: #{
%%   <<"configuredAudienceModelPolicy">> := string(),
%%   <<"policyExistenceCondition">> => list(any()),
%%   <<"previousPolicyHash">> => string()
%% }
-type put_configured_audience_model_policy_request() :: #{binary() => any()}.


%% Example:
%% data_source() :: #{
%%   <<"glueDataSource">> => glue_data_source()
%% }
-type data_source() :: #{binary() => any()}.


%% Example:
%% audience_size_config() :: #{
%%   <<"audienceSizeBins">> => list(integer()()),
%%   <<"audienceSizeType">> => list(any())
%% }
-type audience_size_config() :: #{binary() => any()}.


%% Example:
%% audience_destination() :: #{
%%   <<"s3Destination">> => s3_config_map()
%% }
-type audience_destination() :: #{binary() => any()}.


%% Example:
%% audience_generation_job_data_source() :: #{
%%   <<"dataSource">> => s3_config_map(),
%%   <<"roleArn">> => string()
%% }
-type audience_generation_job_data_source() :: #{binary() => any()}.


%% Example:
%% list_audience_generation_jobs_request() :: #{
%%   <<"collaborationId">> => string(),
%%   <<"configuredAudienceModelArn">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_audience_generation_jobs_request() :: #{binary() => any()}.


%% Example:
%% list_audience_generation_jobs_response() :: #{
%%   <<"audienceGenerationJobs">> => list(audience_generation_job_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_audience_generation_jobs_response() :: #{binary() => any()}.


%% Example:
%% list_audience_models_response() :: #{
%%   <<"audienceModels">> => list(audience_model_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_audience_models_response() :: #{binary() => any()}.


%% Example:
%% list_audience_export_jobs_request() :: #{
%%   <<"audienceGenerationJobArn">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_audience_export_jobs_request() :: #{binary() => any()}.

%% Example:
%% delete_configured_audience_model_policy_request() :: #{}
-type delete_configured_audience_model_policy_request() :: #{}.

%% Example:
%% get_configured_audience_model_policy_request() :: #{}
-type get_configured_audience_model_policy_request() :: #{}.


%% Example:
%% update_configured_audience_model_request() :: #{
%%   <<"audienceModelArn">> => string(),
%%   <<"audienceSizeConfig">> => audience_size_config(),
%%   <<"description">> => string(),
%%   <<"minMatchingSeedSize">> => integer(),
%%   <<"outputConfig">> => configured_audience_model_output_config(),
%%   <<"sharedAudienceMetrics">> => list(list(any())())
%% }
-type update_configured_audience_model_request() :: #{binary() => any()}.

%% Example:
%% get_audience_generation_job_request() :: #{}
-type get_audience_generation_job_request() :: #{}.

-type create_audience_model_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_configured_audience_model_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_training_dataset_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    conflict_exception().

-type delete_audience_generation_job_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_audience_model_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_configured_audience_model_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_configured_audience_model_policy_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type delete_training_dataset_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_audience_generation_job_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type get_audience_model_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type get_configured_audience_model_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type get_configured_audience_model_policy_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type get_training_dataset_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type list_audience_export_jobs_errors() ::
    validation_exception() | 
    access_denied_exception().

-type list_audience_generation_jobs_errors() ::
    validation_exception() | 
    access_denied_exception().

-type list_audience_models_errors() ::
    validation_exception() | 
    access_denied_exception().

-type list_configured_audience_models_errors() ::
    validation_exception() | 
    access_denied_exception().

-type list_tags_for_resource_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type list_training_datasets_errors() ::
    validation_exception() | 
    access_denied_exception().

-type put_configured_audience_model_policy_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type start_audience_export_job_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type start_audience_generation_job_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type tag_resource_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type update_configured_audience_model_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Defines the information necessary to create an audience model.
%%
%% An audience model is a machine learning model that Clean Rooms ML trains
%% to measure similarity between users. Clean Rooms ML manages training and
%% storing the audience model. The audience model can be used in multiple
%% calls to the `StartAudienceGenerationJob' API.
-spec create_audience_model(aws_client:aws_client(), create_audience_model_request()) ->
    {ok, create_audience_model_response(), tuple()} |
    {error, any()} |
    {error, create_audience_model_errors(), tuple()}.
create_audience_model(Client, Input) ->
    create_audience_model(Client, Input, []).

-spec create_audience_model(aws_client:aws_client(), create_audience_model_request(), proplists:proplist()) ->
    {ok, create_audience_model_response(), tuple()} |
    {error, any()} |
    {error, create_audience_model_errors(), tuple()}.
create_audience_model(Client, Input0, Options0) ->
    Method = post,
    Path = ["/audience-model"],
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

%% @doc Defines the information necessary to create a configured audience
%% model.
-spec create_configured_audience_model(aws_client:aws_client(), create_configured_audience_model_request()) ->
    {ok, create_configured_audience_model_response(), tuple()} |
    {error, any()} |
    {error, create_configured_audience_model_errors(), tuple()}.
create_configured_audience_model(Client, Input) ->
    create_configured_audience_model(Client, Input, []).

-spec create_configured_audience_model(aws_client:aws_client(), create_configured_audience_model_request(), proplists:proplist()) ->
    {ok, create_configured_audience_model_response(), tuple()} |
    {error, any()} |
    {error, create_configured_audience_model_errors(), tuple()}.
create_configured_audience_model(Client, Input0, Options0) ->
    Method = post,
    Path = ["/configured-audience-model"],
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

%% @doc Defines the information necessary to create a training dataset.
%%
%% In Clean Rooms ML, the `TrainingDataset' is metadata that points to a
%% Glue table, which is read only during `AudienceModel' creation.
-spec create_training_dataset(aws_client:aws_client(), create_training_dataset_request()) ->
    {ok, create_training_dataset_response(), tuple()} |
    {error, any()} |
    {error, create_training_dataset_errors(), tuple()}.
create_training_dataset(Client, Input) ->
    create_training_dataset(Client, Input, []).

-spec create_training_dataset(aws_client:aws_client(), create_training_dataset_request(), proplists:proplist()) ->
    {ok, create_training_dataset_response(), tuple()} |
    {error, any()} |
    {error, create_training_dataset_errors(), tuple()}.
create_training_dataset(Client, Input0, Options0) ->
    Method = post,
    Path = ["/training-dataset"],
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

%% @doc Deletes the specified audience generation job, and removes all data
%% associated with the job.
-spec delete_audience_generation_job(aws_client:aws_client(), binary() | list(), delete_audience_generation_job_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_audience_generation_job_errors(), tuple()}.
delete_audience_generation_job(Client, AudienceGenerationJobArn, Input) ->
    delete_audience_generation_job(Client, AudienceGenerationJobArn, Input, []).

-spec delete_audience_generation_job(aws_client:aws_client(), binary() | list(), delete_audience_generation_job_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_audience_generation_job_errors(), tuple()}.
delete_audience_generation_job(Client, AudienceGenerationJobArn, Input0, Options0) ->
    Method = delete,
    Path = ["/audience-generation-job/", aws_util:encode_uri(AudienceGenerationJobArn), ""],
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

%% @doc Specifies an audience model that you want to delete.
%%
%% You can't delete an audience model if there are any configured
%% audience models that depend on the audience model.
-spec delete_audience_model(aws_client:aws_client(), binary() | list(), delete_audience_model_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_audience_model_errors(), tuple()}.
delete_audience_model(Client, AudienceModelArn, Input) ->
    delete_audience_model(Client, AudienceModelArn, Input, []).

-spec delete_audience_model(aws_client:aws_client(), binary() | list(), delete_audience_model_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_audience_model_errors(), tuple()}.
delete_audience_model(Client, AudienceModelArn, Input0, Options0) ->
    Method = delete,
    Path = ["/audience-model/", aws_util:encode_uri(AudienceModelArn), ""],
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

%% @doc Deletes the specified configured audience model.
%%
%% You can't delete a configured audience model if there are any
%% lookalike models that use the configured audience model. If you delete a
%% configured audience model, it will be removed from any collaborations that
%% it is associated to.
-spec delete_configured_audience_model(aws_client:aws_client(), binary() | list(), delete_configured_audience_model_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_configured_audience_model_errors(), tuple()}.
delete_configured_audience_model(Client, ConfiguredAudienceModelArn, Input) ->
    delete_configured_audience_model(Client, ConfiguredAudienceModelArn, Input, []).

-spec delete_configured_audience_model(aws_client:aws_client(), binary() | list(), delete_configured_audience_model_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_configured_audience_model_errors(), tuple()}.
delete_configured_audience_model(Client, ConfiguredAudienceModelArn, Input0, Options0) ->
    Method = delete,
    Path = ["/configured-audience-model/", aws_util:encode_uri(ConfiguredAudienceModelArn), ""],
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

%% @doc Deletes the specified configured audience model policy.
-spec delete_configured_audience_model_policy(aws_client:aws_client(), binary() | list(), delete_configured_audience_model_policy_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_configured_audience_model_policy_errors(), tuple()}.
delete_configured_audience_model_policy(Client, ConfiguredAudienceModelArn, Input) ->
    delete_configured_audience_model_policy(Client, ConfiguredAudienceModelArn, Input, []).

-spec delete_configured_audience_model_policy(aws_client:aws_client(), binary() | list(), delete_configured_audience_model_policy_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_configured_audience_model_policy_errors(), tuple()}.
delete_configured_audience_model_policy(Client, ConfiguredAudienceModelArn, Input0, Options0) ->
    Method = delete,
    Path = ["/configured-audience-model/", aws_util:encode_uri(ConfiguredAudienceModelArn), "/policy"],
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

%% @doc Specifies a training dataset that you want to delete.
%%
%% You can't delete a training dataset if there are any audience models
%% that depend on the training dataset. In Clean Rooms ML, the
%% `TrainingDataset' is metadata that points to a Glue table, which is
%% read only during `AudienceModel' creation. This action deletes the
%% metadata.
-spec delete_training_dataset(aws_client:aws_client(), binary() | list(), delete_training_dataset_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_training_dataset_errors(), tuple()}.
delete_training_dataset(Client, TrainingDatasetArn, Input) ->
    delete_training_dataset(Client, TrainingDatasetArn, Input, []).

-spec delete_training_dataset(aws_client:aws_client(), binary() | list(), delete_training_dataset_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_training_dataset_errors(), tuple()}.
delete_training_dataset(Client, TrainingDatasetArn, Input0, Options0) ->
    Method = delete,
    Path = ["/training-dataset/", aws_util:encode_uri(TrainingDatasetArn), ""],
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

%% @doc Returns information about an audience generation job.
-spec get_audience_generation_job(aws_client:aws_client(), binary() | list()) ->
    {ok, get_audience_generation_job_response(), tuple()} |
    {error, any()} |
    {error, get_audience_generation_job_errors(), tuple()}.
get_audience_generation_job(Client, AudienceGenerationJobArn)
  when is_map(Client) ->
    get_audience_generation_job(Client, AudienceGenerationJobArn, #{}, #{}).

-spec get_audience_generation_job(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_audience_generation_job_response(), tuple()} |
    {error, any()} |
    {error, get_audience_generation_job_errors(), tuple()}.
get_audience_generation_job(Client, AudienceGenerationJobArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_audience_generation_job(Client, AudienceGenerationJobArn, QueryMap, HeadersMap, []).

-spec get_audience_generation_job(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_audience_generation_job_response(), tuple()} |
    {error, any()} |
    {error, get_audience_generation_job_errors(), tuple()}.
get_audience_generation_job(Client, AudienceGenerationJobArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/audience-generation-job/", aws_util:encode_uri(AudienceGenerationJobArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about an audience model
-spec get_audience_model(aws_client:aws_client(), binary() | list()) ->
    {ok, get_audience_model_response(), tuple()} |
    {error, any()} |
    {error, get_audience_model_errors(), tuple()}.
get_audience_model(Client, AudienceModelArn)
  when is_map(Client) ->
    get_audience_model(Client, AudienceModelArn, #{}, #{}).

-spec get_audience_model(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_audience_model_response(), tuple()} |
    {error, any()} |
    {error, get_audience_model_errors(), tuple()}.
get_audience_model(Client, AudienceModelArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_audience_model(Client, AudienceModelArn, QueryMap, HeadersMap, []).

-spec get_audience_model(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_audience_model_response(), tuple()} |
    {error, any()} |
    {error, get_audience_model_errors(), tuple()}.
get_audience_model(Client, AudienceModelArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/audience-model/", aws_util:encode_uri(AudienceModelArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about a specified configured audience model.
-spec get_configured_audience_model(aws_client:aws_client(), binary() | list()) ->
    {ok, get_configured_audience_model_response(), tuple()} |
    {error, any()} |
    {error, get_configured_audience_model_errors(), tuple()}.
get_configured_audience_model(Client, ConfiguredAudienceModelArn)
  when is_map(Client) ->
    get_configured_audience_model(Client, ConfiguredAudienceModelArn, #{}, #{}).

-spec get_configured_audience_model(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_configured_audience_model_response(), tuple()} |
    {error, any()} |
    {error, get_configured_audience_model_errors(), tuple()}.
get_configured_audience_model(Client, ConfiguredAudienceModelArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_configured_audience_model(Client, ConfiguredAudienceModelArn, QueryMap, HeadersMap, []).

-spec get_configured_audience_model(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_configured_audience_model_response(), tuple()} |
    {error, any()} |
    {error, get_configured_audience_model_errors(), tuple()}.
get_configured_audience_model(Client, ConfiguredAudienceModelArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/configured-audience-model/", aws_util:encode_uri(ConfiguredAudienceModelArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about a configured audience model policy.
-spec get_configured_audience_model_policy(aws_client:aws_client(), binary() | list()) ->
    {ok, get_configured_audience_model_policy_response(), tuple()} |
    {error, any()} |
    {error, get_configured_audience_model_policy_errors(), tuple()}.
get_configured_audience_model_policy(Client, ConfiguredAudienceModelArn)
  when is_map(Client) ->
    get_configured_audience_model_policy(Client, ConfiguredAudienceModelArn, #{}, #{}).

-spec get_configured_audience_model_policy(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_configured_audience_model_policy_response(), tuple()} |
    {error, any()} |
    {error, get_configured_audience_model_policy_errors(), tuple()}.
get_configured_audience_model_policy(Client, ConfiguredAudienceModelArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_configured_audience_model_policy(Client, ConfiguredAudienceModelArn, QueryMap, HeadersMap, []).

-spec get_configured_audience_model_policy(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_configured_audience_model_policy_response(), tuple()} |
    {error, any()} |
    {error, get_configured_audience_model_policy_errors(), tuple()}.
get_configured_audience_model_policy(Client, ConfiguredAudienceModelArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/configured-audience-model/", aws_util:encode_uri(ConfiguredAudienceModelArn), "/policy"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about a training dataset.
-spec get_training_dataset(aws_client:aws_client(), binary() | list()) ->
    {ok, get_training_dataset_response(), tuple()} |
    {error, any()} |
    {error, get_training_dataset_errors(), tuple()}.
get_training_dataset(Client, TrainingDatasetArn)
  when is_map(Client) ->
    get_training_dataset(Client, TrainingDatasetArn, #{}, #{}).

-spec get_training_dataset(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_training_dataset_response(), tuple()} |
    {error, any()} |
    {error, get_training_dataset_errors(), tuple()}.
get_training_dataset(Client, TrainingDatasetArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_training_dataset(Client, TrainingDatasetArn, QueryMap, HeadersMap, []).

-spec get_training_dataset(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_training_dataset_response(), tuple()} |
    {error, any()} |
    {error, get_training_dataset_errors(), tuple()}.
get_training_dataset(Client, TrainingDatasetArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/training-dataset/", aws_util:encode_uri(TrainingDatasetArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of the audience export jobs.
-spec list_audience_export_jobs(aws_client:aws_client()) ->
    {ok, list_audience_export_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_audience_export_jobs_errors(), tuple()}.
list_audience_export_jobs(Client)
  when is_map(Client) ->
    list_audience_export_jobs(Client, #{}, #{}).

-spec list_audience_export_jobs(aws_client:aws_client(), map(), map()) ->
    {ok, list_audience_export_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_audience_export_jobs_errors(), tuple()}.
list_audience_export_jobs(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_audience_export_jobs(Client, QueryMap, HeadersMap, []).

-spec list_audience_export_jobs(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_audience_export_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_audience_export_jobs_errors(), tuple()}.
list_audience_export_jobs(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/audience-export-job"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"audienceGenerationJobArn">>, maps:get(<<"audienceGenerationJobArn">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of audience generation jobs.
-spec list_audience_generation_jobs(aws_client:aws_client()) ->
    {ok, list_audience_generation_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_audience_generation_jobs_errors(), tuple()}.
list_audience_generation_jobs(Client)
  when is_map(Client) ->
    list_audience_generation_jobs(Client, #{}, #{}).

-spec list_audience_generation_jobs(aws_client:aws_client(), map(), map()) ->
    {ok, list_audience_generation_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_audience_generation_jobs_errors(), tuple()}.
list_audience_generation_jobs(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_audience_generation_jobs(Client, QueryMap, HeadersMap, []).

-spec list_audience_generation_jobs(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_audience_generation_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_audience_generation_jobs_errors(), tuple()}.
list_audience_generation_jobs(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/audience-generation-job"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"collaborationId">>, maps:get(<<"collaborationId">>, QueryMap, undefined)},
        {<<"configuredAudienceModelArn">>, maps:get(<<"configuredAudienceModelArn">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of audience models.
-spec list_audience_models(aws_client:aws_client()) ->
    {ok, list_audience_models_response(), tuple()} |
    {error, any()} |
    {error, list_audience_models_errors(), tuple()}.
list_audience_models(Client)
  when is_map(Client) ->
    list_audience_models(Client, #{}, #{}).

-spec list_audience_models(aws_client:aws_client(), map(), map()) ->
    {ok, list_audience_models_response(), tuple()} |
    {error, any()} |
    {error, list_audience_models_errors(), tuple()}.
list_audience_models(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_audience_models(Client, QueryMap, HeadersMap, []).

-spec list_audience_models(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_audience_models_response(), tuple()} |
    {error, any()} |
    {error, list_audience_models_errors(), tuple()}.
list_audience_models(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/audience-model"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of the configured audience models.
-spec list_configured_audience_models(aws_client:aws_client()) ->
    {ok, list_configured_audience_models_response(), tuple()} |
    {error, any()} |
    {error, list_configured_audience_models_errors(), tuple()}.
list_configured_audience_models(Client)
  when is_map(Client) ->
    list_configured_audience_models(Client, #{}, #{}).

-spec list_configured_audience_models(aws_client:aws_client(), map(), map()) ->
    {ok, list_configured_audience_models_response(), tuple()} |
    {error, any()} |
    {error, list_configured_audience_models_errors(), tuple()}.
list_configured_audience_models(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_configured_audience_models(Client, QueryMap, HeadersMap, []).

-spec list_configured_audience_models(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_configured_audience_models_response(), tuple()} |
    {error, any()} |
    {error, list_configured_audience_models_errors(), tuple()}.
list_configured_audience_models(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/configured-audience-model"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of tags for a provided resource.
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
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of training datasets.
-spec list_training_datasets(aws_client:aws_client()) ->
    {ok, list_training_datasets_response(), tuple()} |
    {error, any()} |
    {error, list_training_datasets_errors(), tuple()}.
list_training_datasets(Client)
  when is_map(Client) ->
    list_training_datasets(Client, #{}, #{}).

-spec list_training_datasets(aws_client:aws_client(), map(), map()) ->
    {ok, list_training_datasets_response(), tuple()} |
    {error, any()} |
    {error, list_training_datasets_errors(), tuple()}.
list_training_datasets(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_training_datasets(Client, QueryMap, HeadersMap, []).

-spec list_training_datasets(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_training_datasets_response(), tuple()} |
    {error, any()} |
    {error, list_training_datasets_errors(), tuple()}.
list_training_datasets(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/training-dataset"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Create or update the resource policy for a configured audience model.
-spec put_configured_audience_model_policy(aws_client:aws_client(), binary() | list(), put_configured_audience_model_policy_request()) ->
    {ok, put_configured_audience_model_policy_response(), tuple()} |
    {error, any()} |
    {error, put_configured_audience_model_policy_errors(), tuple()}.
put_configured_audience_model_policy(Client, ConfiguredAudienceModelArn, Input) ->
    put_configured_audience_model_policy(Client, ConfiguredAudienceModelArn, Input, []).

-spec put_configured_audience_model_policy(aws_client:aws_client(), binary() | list(), put_configured_audience_model_policy_request(), proplists:proplist()) ->
    {ok, put_configured_audience_model_policy_response(), tuple()} |
    {error, any()} |
    {error, put_configured_audience_model_policy_errors(), tuple()}.
put_configured_audience_model_policy(Client, ConfiguredAudienceModelArn, Input0, Options0) ->
    Method = put,
    Path = ["/configured-audience-model/", aws_util:encode_uri(ConfiguredAudienceModelArn), "/policy"],
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

%% @doc Export an audience of a specified size after you have generated an
%% audience.
-spec start_audience_export_job(aws_client:aws_client(), start_audience_export_job_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, start_audience_export_job_errors(), tuple()}.
start_audience_export_job(Client, Input) ->
    start_audience_export_job(Client, Input, []).

-spec start_audience_export_job(aws_client:aws_client(), start_audience_export_job_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, start_audience_export_job_errors(), tuple()}.
start_audience_export_job(Client, Input0, Options0) ->
    Method = post,
    Path = ["/audience-export-job"],
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

%% @doc Information necessary to start the audience generation job.
-spec start_audience_generation_job(aws_client:aws_client(), start_audience_generation_job_request()) ->
    {ok, start_audience_generation_job_response(), tuple()} |
    {error, any()} |
    {error, start_audience_generation_job_errors(), tuple()}.
start_audience_generation_job(Client, Input) ->
    start_audience_generation_job(Client, Input, []).

-spec start_audience_generation_job(aws_client:aws_client(), start_audience_generation_job_request(), proplists:proplist()) ->
    {ok, start_audience_generation_job_response(), tuple()} |
    {error, any()} |
    {error, start_audience_generation_job_errors(), tuple()}.
start_audience_generation_job(Client, Input0, Options0) ->
    Method = post,
    Path = ["/audience-generation-job"],
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

%% @doc Adds metadata tags to a specified resource.
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

%% @doc Removes metadata tags from a specified resource.
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

    QueryMapping = [
                     {<<"tagKeys">>, <<"tagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Provides the information necessary to update a configured audience
%% model.
%%
%% Updates that impact audience generation jobs take effect when a new job
%% starts, but do not impact currently running jobs.
-spec update_configured_audience_model(aws_client:aws_client(), binary() | list(), update_configured_audience_model_request()) ->
    {ok, update_configured_audience_model_response(), tuple()} |
    {error, any()} |
    {error, update_configured_audience_model_errors(), tuple()}.
update_configured_audience_model(Client, ConfiguredAudienceModelArn, Input) ->
    update_configured_audience_model(Client, ConfiguredAudienceModelArn, Input, []).

-spec update_configured_audience_model(aws_client:aws_client(), binary() | list(), update_configured_audience_model_request(), proplists:proplist()) ->
    {ok, update_configured_audience_model_response(), tuple()} |
    {error, any()} |
    {error, update_configured_audience_model_errors(), tuple()}.
update_configured_audience_model(Client, ConfiguredAudienceModelArn, Input0, Options0) ->
    Method = patch,
    Path = ["/configured-audience-model/", aws_util:encode_uri(ConfiguredAudienceModelArn), ""],
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
    Client1 = Client#{service => <<"cleanrooms-ml">>},
    Host = build_host(<<"cleanrooms-ml">>, Client1),
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
build_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

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
