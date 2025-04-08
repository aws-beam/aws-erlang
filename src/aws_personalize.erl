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
         create_data_deletion_job/2,
         create_data_deletion_job/3,
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
         describe_data_deletion_job/2,
         describe_data_deletion_job/3,
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
         list_data_deletion_jobs/2,
         list_data_deletion_jobs/3,
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
         update_recommender/3,
         update_solution/2,
         update_solution/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% hyper_parameter_ranges() :: #{
%%   <<"categoricalHyperParameterRanges">> => list(categorical_hyper_parameter_range()()),
%%   <<"continuousHyperParameterRanges">> => list(continuous_hyper_parameter_range()()),
%%   <<"integerHyperParameterRanges">> => list(integer_hyper_parameter_range()())
%% }
-type hyper_parameter_ranges() :: #{binary() => any()}.

%% Example:
%% data_deletion_job() :: #{
%%   <<"creationDateTime">> => non_neg_integer(),
%%   <<"dataDeletionJobArn">> => string(),
%%   <<"dataSource">> => data_source(),
%%   <<"datasetGroupArn">> => string(),
%%   <<"failureReason">> => string(),
%%   <<"jobName">> => string(),
%%   <<"lastUpdatedDateTime">> => non_neg_integer(),
%%   <<"numDeleted">> => integer(),
%%   <<"roleArn">> => string(),
%%   <<"status">> => string()
%% }
-type data_deletion_job() :: #{binary() => any()}.

%% Example:
%% create_event_tracker_request() :: #{
%%   <<"datasetGroupArn">> := string(),
%%   <<"name">> := string(),
%%   <<"tags">> => list(tag()())
%% }
-type create_event_tracker_request() :: #{binary() => any()}.

%% Example:
%% describe_event_tracker_request() :: #{
%%   <<"eventTrackerArn">> := string()
%% }
-type describe_event_tracker_request() :: #{binary() => any()}.

%% Example:
%% delete_metric_attribution_request() :: #{
%%   <<"metricAttributionArn">> := string()
%% }
-type delete_metric_attribution_request() :: #{binary() => any()}.

%% Example:
%% describe_solution_response() :: #{
%%   <<"solution">> => solution()
%% }
-type describe_solution_response() :: #{binary() => any()}.

%% Example:
%% describe_metric_attribution_request() :: #{
%%   <<"metricAttributionArn">> := string()
%% }
-type describe_metric_attribution_request() :: #{binary() => any()}.

%% Example:
%% update_solution_request() :: #{
%%   <<"performAutoTraining">> => boolean(),
%%   <<"solutionArn">> := string(),
%%   <<"solutionUpdateConfig">> => solution_update_config()
%% }
-type update_solution_request() :: #{binary() => any()}.

%% Example:
%% list_batch_segment_jobs_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"solutionVersionArn">> => string()
%% }
-type list_batch_segment_jobs_request() :: #{binary() => any()}.

%% Example:
%% describe_campaign_response() :: #{
%%   <<"campaign">> => campaign()
%% }
-type describe_campaign_response() :: #{binary() => any()}.

%% Example:
%% update_campaign_response() :: #{
%%   <<"campaignArn">> => string()
%% }
-type update_campaign_response() :: #{binary() => any()}.

%% Example:
%% describe_batch_inference_job_response() :: #{
%%   <<"batchInferenceJob">> => batch_inference_job()
%% }
-type describe_batch_inference_job_response() :: #{binary() => any()}.

%% Example:
%% create_batch_inference_job_request() :: #{
%%   <<"batchInferenceJobConfig">> => batch_inference_job_config(),
%%   <<"batchInferenceJobMode">> => list(any()),
%%   <<"filterArn">> => string(),
%%   <<"jobInput">> := batch_inference_job_input(),
%%   <<"jobName">> := string(),
%%   <<"jobOutput">> := batch_inference_job_output(),
%%   <<"numResults">> => integer(),
%%   <<"roleArn">> := string(),
%%   <<"solutionVersionArn">> := string(),
%%   <<"tags">> => list(tag()()),
%%   <<"themeGenerationConfig">> => theme_generation_config()
%% }
-type create_batch_inference_job_request() :: #{binary() => any()}.

%% Example:
%% filter_summary() :: #{
%%   <<"creationDateTime">> => non_neg_integer(),
%%   <<"datasetGroupArn">> => string(),
%%   <<"failureReason">> => string(),
%%   <<"filterArn">> => string(),
%%   <<"lastUpdatedDateTime">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"status">> => string()
%% }
-type filter_summary() :: #{binary() => any()}.

%% Example:
%% tag_resource_request() :: #{
%%   <<"resourceArn">> := string(),
%%   <<"tags">> := list(tag()())
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% list_batch_inference_jobs_response() :: #{
%%   <<"batchInferenceJobs">> => list(batch_inference_job_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_batch_inference_jobs_response() :: #{binary() => any()}.

%% Example:
%% list_data_deletion_jobs_request() :: #{
%%   <<"datasetGroupArn">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_data_deletion_jobs_request() :: #{binary() => any()}.

%% Example:
%% create_schema_request() :: #{
%%   <<"domain">> => list(any()),
%%   <<"name">> := string(),
%%   <<"schema">> := string()
%% }
-type create_schema_request() :: #{binary() => any()}.

%% Example:
%% campaign() :: #{
%%   <<"campaignArn">> => string(),
%%   <<"campaignConfig">> => campaign_config(),
%%   <<"creationDateTime">> => non_neg_integer(),
%%   <<"failureReason">> => string(),
%%   <<"lastUpdatedDateTime">> => non_neg_integer(),
%%   <<"latestCampaignUpdate">> => campaign_update_summary(),
%%   <<"minProvisionedTPS">> => integer(),
%%   <<"name">> => string(),
%%   <<"solutionVersionArn">> => string(),
%%   <<"status">> => string()
%% }
-type campaign() :: #{binary() => any()}.

%% Example:
%% list_recipes_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"recipes">> => list(recipe_summary()())
%% }
-type list_recipes_response() :: #{binary() => any()}.

%% Example:
%% recommender_update_summary() :: #{
%%   <<"creationDateTime">> => non_neg_integer(),
%%   <<"failureReason">> => string(),
%%   <<"lastUpdatedDateTime">> => non_neg_integer(),
%%   <<"recommenderConfig">> => recommender_config(),
%%   <<"status">> => string()
%% }
-type recommender_update_summary() :: #{binary() => any()}.

%% Example:
%% create_event_tracker_response() :: #{
%%   <<"eventTrackerArn">> => string(),
%%   <<"trackingId">> => string()
%% }
-type create_event_tracker_response() :: #{binary() => any()}.

%% Example:
%% create_recommender_request() :: #{
%%   <<"datasetGroupArn">> := string(),
%%   <<"name">> := string(),
%%   <<"recipeArn">> := string(),
%%   <<"recommenderConfig">> => recommender_config(),
%%   <<"tags">> => list(tag()())
%% }
-type create_recommender_request() :: #{binary() => any()}.

%% Example:
%% default_integer_hyper_parameter_range() :: #{
%%   <<"isTunable">> => boolean(),
%%   <<"maxValue">> => integer(),
%%   <<"minValue">> => integer(),
%%   <<"name">> => string()
%% }
-type default_integer_hyper_parameter_range() :: #{binary() => any()}.

%% Example:
%% update_recommender_response() :: #{
%%   <<"recommenderArn">> => string()
%% }
-type update_recommender_response() :: #{binary() => any()}.

%% Example:
%% describe_schema_request() :: #{
%%   <<"schemaArn">> := string()
%% }
-type describe_schema_request() :: #{binary() => any()}.

%% Example:
%% auto_training_config() :: #{
%%   <<"schedulingExpression">> => string()
%% }
-type auto_training_config() :: #{binary() => any()}.

%% Example:
%% update_dataset_response() :: #{
%%   <<"datasetArn">> => string()
%% }
-type update_dataset_response() :: #{binary() => any()}.

%% Example:
%% default_categorical_hyper_parameter_range() :: #{
%%   <<"isTunable">> => boolean(),
%%   <<"name">> => string(),
%%   <<"values">> => list(string()())
%% }
-type default_categorical_hyper_parameter_range() :: #{binary() => any()}.

%% Example:
%% describe_solution_version_request() :: #{
%%   <<"solutionVersionArn">> := string()
%% }
-type describe_solution_version_request() :: #{binary() => any()}.

%% Example:
%% continuous_hyper_parameter_range() :: #{
%%   <<"maxValue">> => float(),
%%   <<"minValue">> => float(),
%%   <<"name">> => string()
%% }
-type continuous_hyper_parameter_range() :: #{binary() => any()}.

%% Example:
%% create_solution_request() :: #{
%%   <<"datasetGroupArn">> := string(),
%%   <<"eventType">> => string(),
%%   <<"name">> := string(),
%%   <<"performAutoML">> => boolean(),
%%   <<"performAutoTraining">> => boolean(),
%%   <<"performHPO">> => boolean(),
%%   <<"recipeArn">> => string(),
%%   <<"solutionConfig">> => solution_config(),
%%   <<"tags">> => list(tag()())
%% }
-type create_solution_request() :: #{binary() => any()}.

%% Example:
%% create_metric_attribution_response() :: #{
%%   <<"metricAttributionArn">> => string()
%% }
-type create_metric_attribution_response() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{

%% }
-type untag_resource_response() :: #{binary() => any()}.

%% Example:
%% delete_schema_request() :: #{
%%   <<"schemaArn">> := string()
%% }
-type delete_schema_request() :: #{binary() => any()}.

%% Example:
%% create_data_deletion_job_response() :: #{
%%   <<"dataDeletionJobArn">> => string()
%% }
-type create_data_deletion_job_response() :: #{binary() => any()}.

%% Example:
%% metric_attribution_summary() :: #{
%%   <<"creationDateTime">> => non_neg_integer(),
%%   <<"failureReason">> => string(),
%%   <<"lastUpdatedDateTime">> => non_neg_integer(),
%%   <<"metricAttributionArn">> => string(),
%%   <<"name">> => string(),
%%   <<"status">> => string()
%% }
-type metric_attribution_summary() :: #{binary() => any()}.

%% Example:
%% resource_in_use_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_in_use_exception() :: #{binary() => any()}.

%% Example:
%% batch_segment_job_output() :: #{
%%   <<"s3DataDestination">> => s3_data_config()
%% }
-type batch_segment_job_output() :: #{binary() => any()}.

%% Example:
%% describe_dataset_import_job_response() :: #{
%%   <<"datasetImportJob">> => dataset_import_job()
%% }
-type describe_dataset_import_job_response() :: #{binary() => any()}.

%% Example:
%% solution() :: #{
%%   <<"autoMLResult">> => auto_ml_result(),
%%   <<"creationDateTime">> => non_neg_integer(),
%%   <<"datasetGroupArn">> => string(),
%%   <<"eventType">> => string(),
%%   <<"lastUpdatedDateTime">> => non_neg_integer(),
%%   <<"latestSolutionUpdate">> => solution_update_summary(),
%%   <<"latestSolutionVersion">> => solution_version_summary(),
%%   <<"name">> => string(),
%%   <<"performAutoML">> => boolean(),
%%   <<"performAutoTraining">> => boolean(),
%%   <<"performHPO">> => boolean(),
%%   <<"recipeArn">> => string(),
%%   <<"solutionArn">> => string(),
%%   <<"solutionConfig">> => solution_config(),
%%   <<"status">> => string()
%% }
-type solution() :: #{binary() => any()}.

%% Example:
%% create_batch_segment_job_response() :: #{
%%   <<"batchSegmentJobArn">> => string()
%% }
-type create_batch_segment_job_response() :: #{binary() => any()}.

%% Example:
%% start_recommender_response() :: #{
%%   <<"recommenderArn">> => string()
%% }
-type start_recommender_response() :: #{binary() => any()}.

%% Example:
%% dataset_schema() :: #{
%%   <<"creationDateTime">> => non_neg_integer(),
%%   <<"domain">> => list(any()),
%%   <<"lastUpdatedDateTime">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"schema">> => string(),
%%   <<"schemaArn">> => string()
%% }
-type dataset_schema() :: #{binary() => any()}.

%% Example:
%% algorithm() :: #{
%%   <<"algorithmArn">> => string(),
%%   <<"algorithmImage">> => algorithm_image(),
%%   <<"creationDateTime">> => non_neg_integer(),
%%   <<"defaultHyperParameterRanges">> => default_hyper_parameter_ranges(),
%%   <<"defaultHyperParameters">> => map(),
%%   <<"defaultResourceConfig">> => map(),
%%   <<"lastUpdatedDateTime">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"roleArn">> => string(),
%%   <<"trainingInputMode">> => string()
%% }
-type algorithm() :: #{binary() => any()}.

%% Example:
%% recipe_summary() :: #{
%%   <<"creationDateTime">> => non_neg_integer(),
%%   <<"domain">> => list(any()),
%%   <<"lastUpdatedDateTime">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"recipeArn">> => string(),
%%   <<"status">> => string()
%% }
-type recipe_summary() :: #{binary() => any()}.

%% Example:
%% list_datasets_request() :: #{
%%   <<"datasetGroupArn">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_datasets_request() :: #{binary() => any()}.

%% Example:
%% list_campaigns_response() :: #{
%%   <<"campaigns">> => list(campaign_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_campaigns_response() :: #{binary() => any()}.

%% Example:
%% event_parameters() :: #{
%%   <<"eventType">> => string(),
%%   <<"eventValueThreshold">> => float(),
%%   <<"weight">> => float()
%% }
-type event_parameters() :: #{binary() => any()}.

%% Example:
%% create_filter_response() :: #{
%%   <<"filterArn">> => string()
%% }
-type create_filter_response() :: #{binary() => any()}.

%% Example:
%% theme_generation_config() :: #{
%%   <<"fieldsForThemeGeneration">> => fields_for_theme_generation()
%% }
-type theme_generation_config() :: #{binary() => any()}.

%% Example:
%% default_hyper_parameter_ranges() :: #{
%%   <<"categoricalHyperParameterRanges">> => list(default_categorical_hyper_parameter_range()()),
%%   <<"continuousHyperParameterRanges">> => list(default_continuous_hyper_parameter_range()()),
%%   <<"integerHyperParameterRanges">> => list(default_integer_hyper_parameter_range()())
%% }
-type default_hyper_parameter_ranges() :: #{binary() => any()}.

%% Example:
%% describe_schema_response() :: #{
%%   <<"schema">> => dataset_schema()
%% }
-type describe_schema_response() :: #{binary() => any()}.

%% Example:
%% delete_campaign_request() :: #{
%%   <<"campaignArn">> := string()
%% }
-type delete_campaign_request() :: #{binary() => any()}.

%% Example:
%% describe_campaign_request() :: #{
%%   <<"campaignArn">> := string()
%% }
-type describe_campaign_request() :: #{binary() => any()}.

%% Example:
%% list_metric_attribution_metrics_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"metricAttributionArn">> => string(),
%%   <<"nextToken">> => string()
%% }
-type list_metric_attribution_metrics_request() :: #{binary() => any()}.

%% Example:
%% list_solutions_request() :: #{
%%   <<"datasetGroupArn">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_solutions_request() :: #{binary() => any()}.

%% Example:
%% describe_algorithm_request() :: #{
%%   <<"algorithmArn">> := string()
%% }
-type describe_algorithm_request() :: #{binary() => any()}.

%% Example:
%% create_schema_response() :: #{
%%   <<"schemaArn">> => string()
%% }
-type create_schema_response() :: #{binary() => any()}.

%% Example:
%% untag_resource_request() :: #{
%%   <<"resourceArn">> := string(),
%%   <<"tagKeys">> := list(string()())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% batch_inference_job_input() :: #{
%%   <<"s3DataSource">> => s3_data_config()
%% }
-type batch_inference_job_input() :: #{binary() => any()}.

%% Example:
%% batch_inference_job_config() :: #{
%%   <<"itemExplorationConfig">> => map()
%% }
-type batch_inference_job_config() :: #{binary() => any()}.

%% Example:
%% get_solution_metrics_request() :: #{
%%   <<"solutionVersionArn">> := string()
%% }
-type get_solution_metrics_request() :: #{binary() => any()}.

%% Example:
%% campaign_config() :: #{
%%   <<"enableMetadataWithRecommendations">> => boolean(),
%%   <<"itemExplorationConfig">> => map(),
%%   <<"syncWithLatestSolutionVersion">> => boolean()
%% }
-type campaign_config() :: #{binary() => any()}.

%% Example:
%% describe_data_deletion_job_response() :: #{
%%   <<"dataDeletionJob">> => data_deletion_job()
%% }
-type describe_data_deletion_job_response() :: #{binary() => any()}.

%% Example:
%% list_data_deletion_jobs_response() :: #{
%%   <<"dataDeletionJobs">> => list(data_deletion_job_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_data_deletion_jobs_response() :: #{binary() => any()}.

%% Example:
%% list_event_trackers_request() :: #{
%%   <<"datasetGroupArn">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_event_trackers_request() :: #{binary() => any()}.

%% Example:
%% create_dataset_group_request() :: #{
%%   <<"domain">> => list(any()),
%%   <<"kmsKeyArn">> => string(),
%%   <<"name">> := string(),
%%   <<"roleArn">> => string(),
%%   <<"tags">> => list(tag()())
%% }
-type create_dataset_group_request() :: #{binary() => any()}.

%% Example:
%% too_many_tag_keys_exception() :: #{
%%   <<"message">> => string()
%% }
-type too_many_tag_keys_exception() :: #{binary() => any()}.

%% Example:
%% solution_summary() :: #{
%%   <<"creationDateTime">> => non_neg_integer(),
%%   <<"lastUpdatedDateTime">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"recipeArn">> => string(),
%%   <<"solutionArn">> => string(),
%%   <<"status">> => string()
%% }
-type solution_summary() :: #{binary() => any()}.

%% Example:
%% list_schemas_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_schemas_request() :: #{binary() => any()}.

%% Example:
%% recommender_summary() :: #{
%%   <<"creationDateTime">> => non_neg_integer(),
%%   <<"datasetGroupArn">> => string(),
%%   <<"lastUpdatedDateTime">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"recipeArn">> => string(),
%%   <<"recommenderArn">> => string(),
%%   <<"recommenderConfig">> => recommender_config(),
%%   <<"status">> => string()
%% }
-type recommender_summary() :: #{binary() => any()}.

%% Example:
%% describe_solution_request() :: #{
%%   <<"solutionArn">> := string()
%% }
-type describe_solution_request() :: #{binary() => any()}.

%% Example:
%% update_recommender_request() :: #{
%%   <<"recommenderArn">> := string(),
%%   <<"recommenderConfig">> := recommender_config()
%% }
-type update_recommender_request() :: #{binary() => any()}.

%% Example:
%% create_metric_attribution_request() :: #{
%%   <<"datasetGroupArn">> := string(),
%%   <<"metrics">> := list(metric_attribute()()),
%%   <<"metricsOutputConfig">> := metric_attribution_output(),
%%   <<"name">> := string()
%% }
-type create_metric_attribution_request() :: #{binary() => any()}.

%% Example:
%% batch_inference_job() :: #{
%%   <<"batchInferenceJobArn">> => string(),
%%   <<"batchInferenceJobConfig">> => batch_inference_job_config(),
%%   <<"batchInferenceJobMode">> => list(any()),
%%   <<"creationDateTime">> => non_neg_integer(),
%%   <<"failureReason">> => string(),
%%   <<"filterArn">> => string(),
%%   <<"jobInput">> => batch_inference_job_input(),
%%   <<"jobName">> => string(),
%%   <<"jobOutput">> => batch_inference_job_output(),
%%   <<"lastUpdatedDateTime">> => non_neg_integer(),
%%   <<"numResults">> => integer(),
%%   <<"roleArn">> => string(),
%%   <<"solutionVersionArn">> => string(),
%%   <<"status">> => string(),
%%   <<"themeGenerationConfig">> => theme_generation_config()
%% }
-type batch_inference_job() :: #{binary() => any()}.

%% Example:
%% dataset() :: #{
%%   <<"creationDateTime">> => non_neg_integer(),
%%   <<"datasetArn">> => string(),
%%   <<"datasetGroupArn">> => string(),
%%   <<"datasetType">> => string(),
%%   <<"lastUpdatedDateTime">> => non_neg_integer(),
%%   <<"latestDatasetUpdate">> => dataset_update_summary(),
%%   <<"name">> => string(),
%%   <<"schemaArn">> => string(),
%%   <<"status">> => string(),
%%   <<"trackingId">> => string()
%% }
-type dataset() :: #{binary() => any()}.

%% Example:
%% describe_dataset_export_job_response() :: #{
%%   <<"datasetExportJob">> => dataset_export_job()
%% }
-type describe_dataset_export_job_response() :: #{binary() => any()}.

%% Example:
%% create_dataset_response() :: #{
%%   <<"datasetArn">> => string()
%% }
-type create_dataset_response() :: #{binary() => any()}.

%% Example:
%% list_campaigns_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"solutionArn">> => string()
%% }
-type list_campaigns_request() :: #{binary() => any()}.

%% Example:
%% batch_segment_job_summary() :: #{
%%   <<"batchSegmentJobArn">> => string(),
%%   <<"creationDateTime">> => non_neg_integer(),
%%   <<"failureReason">> => string(),
%%   <<"jobName">> => string(),
%%   <<"lastUpdatedDateTime">> => non_neg_integer(),
%%   <<"solutionVersionArn">> => string(),
%%   <<"status">> => string()
%% }
-type batch_segment_job_summary() :: #{binary() => any()}.

%% Example:
%% describe_batch_segment_job_response() :: #{
%%   <<"batchSegmentJob">> => batch_segment_job()
%% }
-type describe_batch_segment_job_response() :: #{binary() => any()}.

%% Example:
%% campaign_update_summary() :: #{
%%   <<"campaignConfig">> => campaign_config(),
%%   <<"creationDateTime">> => non_neg_integer(),
%%   <<"failureReason">> => string(),
%%   <<"lastUpdatedDateTime">> => non_neg_integer(),
%%   <<"minProvisionedTPS">> => integer(),
%%   <<"solutionVersionArn">> => string(),
%%   <<"status">> => string()
%% }
-type campaign_update_summary() :: #{binary() => any()}.

%% Example:
%% batch_inference_job_output() :: #{
%%   <<"s3DataDestination">> => s3_data_config()
%% }
-type batch_inference_job_output() :: #{binary() => any()}.

%% Example:
%% dataset_import_job() :: #{
%%   <<"creationDateTime">> => non_neg_integer(),
%%   <<"dataSource">> => data_source(),
%%   <<"datasetArn">> => string(),
%%   <<"datasetImportJobArn">> => string(),
%%   <<"failureReason">> => string(),
%%   <<"importMode">> => list(any()),
%%   <<"jobName">> => string(),
%%   <<"lastUpdatedDateTime">> => non_neg_integer(),
%%   <<"publishAttributionMetricsToS3">> => boolean(),
%%   <<"roleArn">> => string(),
%%   <<"status">> => string()
%% }
-type dataset_import_job() :: #{binary() => any()}.

%% Example:
%% metric_attribute() :: #{
%%   <<"eventType">> => string(),
%%   <<"expression">> => string(),
%%   <<"metricName">> => string()
%% }
-type metric_attribute() :: #{binary() => any()}.

%% Example:
%% solution_version() :: #{
%%   <<"creationDateTime">> => non_neg_integer(),
%%   <<"datasetGroupArn">> => string(),
%%   <<"eventType">> => string(),
%%   <<"failureReason">> => string(),
%%   <<"lastUpdatedDateTime">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"performAutoML">> => boolean(),
%%   <<"performHPO">> => boolean(),
%%   <<"recipeArn">> => string(),
%%   <<"solutionArn">> => string(),
%%   <<"solutionConfig">> => solution_config(),
%%   <<"solutionVersionArn">> => string(),
%%   <<"status">> => string(),
%%   <<"trainingHours">> => float(),
%%   <<"trainingMode">> => list(any()),
%%   <<"trainingType">> => list(any()),
%%   <<"tunedHPOParams">> => tuned_h_p_o_params()
%% }
-type solution_version() :: #{binary() => any()}.

%% Example:
%% dataset_export_job_summary() :: #{
%%   <<"creationDateTime">> => non_neg_integer(),
%%   <<"datasetExportJobArn">> => string(),
%%   <<"failureReason">> => string(),
%%   <<"jobName">> => string(),
%%   <<"lastUpdatedDateTime">> => non_neg_integer(),
%%   <<"status">> => string()
%% }
-type dataset_export_job_summary() :: #{binary() => any()}.

%% Example:
%% fields_for_theme_generation() :: #{
%%   <<"itemName">> => string()
%% }
-type fields_for_theme_generation() :: #{binary() => any()}.

%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% list_dataset_import_jobs_request() :: #{
%%   <<"datasetArn">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_dataset_import_jobs_request() :: #{binary() => any()}.

%% Example:
%% delete_event_tracker_request() :: #{
%%   <<"eventTrackerArn">> := string()
%% }
-type delete_event_tracker_request() :: #{binary() => any()}.

%% Example:
%% create_filter_request() :: #{
%%   <<"datasetGroupArn">> := string(),
%%   <<"filterExpression">> := string(),
%%   <<"name">> := string(),
%%   <<"tags">> => list(tag()())
%% }
-type create_filter_request() :: #{binary() => any()}.

%% Example:
%% recommender() :: #{
%%   <<"creationDateTime">> => non_neg_integer(),
%%   <<"datasetGroupArn">> => string(),
%%   <<"failureReason">> => string(),
%%   <<"lastUpdatedDateTime">> => non_neg_integer(),
%%   <<"latestRecommenderUpdate">> => recommender_update_summary(),
%%   <<"modelMetrics">> => map(),
%%   <<"name">> => string(),
%%   <<"recipeArn">> => string(),
%%   <<"recommenderArn">> => string(),
%%   <<"recommenderConfig">> => recommender_config(),
%%   <<"status">> => string()
%% }
-type recommender() :: #{binary() => any()}.

%% Example:
%% create_solution_version_request() :: #{
%%   <<"name">> => string(),
%%   <<"solutionArn">> := string(),
%%   <<"tags">> => list(tag()()),
%%   <<"trainingMode">> => list(any())
%% }
-type create_solution_version_request() :: #{binary() => any()}.

%% Example:
%% metric_attribution() :: #{
%%   <<"creationDateTime">> => non_neg_integer(),
%%   <<"datasetGroupArn">> => string(),
%%   <<"failureReason">> => string(),
%%   <<"lastUpdatedDateTime">> => non_neg_integer(),
%%   <<"metricAttributionArn">> => string(),
%%   <<"metricsOutputConfig">> => metric_attribution_output(),
%%   <<"name">> => string(),
%%   <<"status">> => string()
%% }
-type metric_attribution() :: #{binary() => any()}.

%% Example:
%% describe_solution_version_response() :: #{
%%   <<"solutionVersion">> => solution_version()
%% }
-type describe_solution_version_response() :: #{binary() => any()}.

%% Example:
%% describe_batch_segment_job_request() :: #{
%%   <<"batchSegmentJobArn">> := string()
%% }
-type describe_batch_segment_job_request() :: #{binary() => any()}.

%% Example:
%% dataset_summary() :: #{
%%   <<"creationDateTime">> => non_neg_integer(),
%%   <<"datasetArn">> => string(),
%%   <<"datasetType">> => string(),
%%   <<"lastUpdatedDateTime">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"status">> => string()
%% }
-type dataset_summary() :: #{binary() => any()}.

%% Example:
%% tuned_h_p_o_params() :: #{
%%   <<"algorithmHyperParameters">> => map()
%% }
-type tuned_h_p_o_params() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"tagKey">> => string(),
%%   <<"tagValue">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% batch_segment_job_input() :: #{
%%   <<"s3DataSource">> => s3_data_config()
%% }
-type batch_segment_job_input() :: #{binary() => any()}.

%% Example:
%% create_solution_version_response() :: #{
%%   <<"solutionVersionArn">> => string()
%% }
-type create_solution_version_response() :: #{binary() => any()}.

%% Example:
%% create_batch_inference_job_response() :: #{
%%   <<"batchInferenceJobArn">> => string()
%% }
-type create_batch_inference_job_response() :: #{binary() => any()}.

%% Example:
%% solution_version_summary() :: #{
%%   <<"creationDateTime">> => non_neg_integer(),
%%   <<"failureReason">> => string(),
%%   <<"lastUpdatedDateTime">> => non_neg_integer(),
%%   <<"solutionVersionArn">> => string(),
%%   <<"status">> => string(),
%%   <<"trainingMode">> => list(any()),
%%   <<"trainingType">> => list(any())
%% }
-type solution_version_summary() :: #{binary() => any()}.

%% Example:
%% delete_recommender_request() :: #{
%%   <<"recommenderArn">> := string()
%% }
-type delete_recommender_request() :: #{binary() => any()}.

%% Example:
%% invalid_next_token_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_next_token_exception() :: #{binary() => any()}.

%% Example:
%% describe_recipe_response() :: #{
%%   <<"recipe">> => recipe()
%% }
-type describe_recipe_response() :: #{binary() => any()}.

%% Example:
%% list_metric_attributions_request() :: #{
%%   <<"datasetGroupArn">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_metric_attributions_request() :: #{binary() => any()}.

%% Example:
%% list_dataset_groups_response() :: #{
%%   <<"datasetGroups">> => list(dataset_group_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_dataset_groups_response() :: #{binary() => any()}.

%% Example:
%% recipe() :: #{
%%   <<"algorithmArn">> => string(),
%%   <<"creationDateTime">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"featureTransformationArn">> => string(),
%%   <<"lastUpdatedDateTime">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"recipeArn">> => string(),
%%   <<"recipeType">> => string(),
%%   <<"status">> => string()
%% }
-type recipe() :: #{binary() => any()}.

%% Example:
%% batch_segment_job() :: #{
%%   <<"batchSegmentJobArn">> => string(),
%%   <<"creationDateTime">> => non_neg_integer(),
%%   <<"failureReason">> => string(),
%%   <<"filterArn">> => string(),
%%   <<"jobInput">> => batch_segment_job_input(),
%%   <<"jobName">> => string(),
%%   <<"jobOutput">> => batch_segment_job_output(),
%%   <<"lastUpdatedDateTime">> => non_neg_integer(),
%%   <<"numResults">> => integer(),
%%   <<"roleArn">> => string(),
%%   <<"solutionVersionArn">> => string(),
%%   <<"status">> => string()
%% }
-type batch_segment_job() :: #{binary() => any()}.

%% Example:
%% optimization_objective() :: #{
%%   <<"itemAttribute">> => string(),
%%   <<"objectiveSensitivity">> => list(any())
%% }
-type optimization_objective() :: #{binary() => any()}.

%% Example:
%% list_metric_attribution_metrics_response() :: #{
%%   <<"metrics">> => list(metric_attribute()()),
%%   <<"nextToken">> => string()
%% }
-type list_metric_attribution_metrics_response() :: #{binary() => any()}.

%% Example:
%% list_dataset_groups_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_dataset_groups_request() :: #{binary() => any()}.

%% Example:
%% invalid_input_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_input_exception() :: #{binary() => any()}.

%% Example:
%% start_recommender_request() :: #{
%%   <<"recommenderArn">> := string()
%% }
-type start_recommender_request() :: #{binary() => any()}.

%% Example:
%% stop_recommender_response() :: #{
%%   <<"recommenderArn">> => string()
%% }
-type stop_recommender_response() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> => list(tag()())
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.

%% Example:
%% events_config() :: #{
%%   <<"eventParametersList">> => list(event_parameters()())
%% }
-type events_config() :: #{binary() => any()}.

%% Example:
%% integer_hyper_parameter_range() :: #{
%%   <<"maxValue">> => integer(),
%%   <<"minValue">> => integer(),
%%   <<"name">> => string()
%% }
-type integer_hyper_parameter_range() :: #{binary() => any()}.

%% Example:
%% categorical_hyper_parameter_range() :: #{
%%   <<"name">> => string(),
%%   <<"values">> => list(string()())
%% }
-type categorical_hyper_parameter_range() :: #{binary() => any()}.

%% Example:
%% describe_recommender_request() :: #{
%%   <<"recommenderArn">> := string()
%% }
-type describe_recommender_request() :: #{binary() => any()}.

%% Example:
%% list_batch_segment_jobs_response() :: #{
%%   <<"batchSegmentJobs">> => list(batch_segment_job_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_batch_segment_jobs_response() :: #{binary() => any()}.

%% Example:
%% update_dataset_request() :: #{
%%   <<"datasetArn">> := string(),
%%   <<"schemaArn">> := string()
%% }
-type update_dataset_request() :: #{binary() => any()}.

%% Example:
%% list_solutions_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"solutions">> => list(solution_summary()())
%% }
-type list_solutions_response() :: #{binary() => any()}.

%% Example:
%% delete_solution_request() :: #{
%%   <<"solutionArn">> := string()
%% }
-type delete_solution_request() :: #{binary() => any()}.

%% Example:
%% filter() :: #{
%%   <<"creationDateTime">> => non_neg_integer(),
%%   <<"datasetGroupArn">> => string(),
%%   <<"failureReason">> => string(),
%%   <<"filterArn">> => string(),
%%   <<"filterExpression">> => string(),
%%   <<"lastUpdatedDateTime">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"status">> => string()
%% }
-type filter() :: #{binary() => any()}.

%% Example:
%% describe_feature_transformation_request() :: #{
%%   <<"featureTransformationArn">> := string()
%% }
-type describe_feature_transformation_request() :: #{binary() => any()}.

%% Example:
%% dataset_update_summary() :: #{
%%   <<"creationDateTime">> => non_neg_integer(),
%%   <<"failureReason">> => string(),
%%   <<"lastUpdatedDateTime">> => non_neg_integer(),
%%   <<"schemaArn">> => string(),
%%   <<"status">> => string()
%% }
-type dataset_update_summary() :: #{binary() => any()}.

%% Example:
%% describe_algorithm_response() :: #{
%%   <<"algorithm">> => algorithm()
%% }
-type describe_algorithm_response() :: #{binary() => any()}.

%% Example:
%% describe_recipe_request() :: #{
%%   <<"recipeArn">> := string()
%% }
-type describe_recipe_request() :: #{binary() => any()}.

%% Example:
%% describe_filter_request() :: #{
%%   <<"filterArn">> := string()
%% }
-type describe_filter_request() :: #{binary() => any()}.

%% Example:
%% h_p_o_objective() :: #{
%%   <<"metricName">> => string(),
%%   <<"metricRegex">> => string(),
%%   <<"type">> => string()
%% }
-type h_p_o_objective() :: #{binary() => any()}.

%% Example:
%% create_data_deletion_job_request() :: #{
%%   <<"dataSource">> := data_source(),
%%   <<"datasetGroupArn">> := string(),
%%   <<"jobName">> := string(),
%%   <<"roleArn">> := string(),
%%   <<"tags">> => list(tag()())
%% }
-type create_data_deletion_job_request() :: #{binary() => any()}.

%% Example:
%% create_recommender_response() :: #{
%%   <<"recommenderArn">> => string()
%% }
-type create_recommender_response() :: #{binary() => any()}.

%% Example:
%% describe_recommender_response() :: #{
%%   <<"recommender">> => recommender()
%% }
-type describe_recommender_response() :: #{binary() => any()}.

%% Example:
%% list_batch_inference_jobs_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"solutionVersionArn">> => string()
%% }
-type list_batch_inference_jobs_request() :: #{binary() => any()}.

%% Example:
%% dataset_export_job() :: #{
%%   <<"creationDateTime">> => non_neg_integer(),
%%   <<"datasetArn">> => string(),
%%   <<"datasetExportJobArn">> => string(),
%%   <<"failureReason">> => string(),
%%   <<"ingestionMode">> => list(any()),
%%   <<"jobName">> => string(),
%%   <<"jobOutput">> => dataset_export_job_output(),
%%   <<"lastUpdatedDateTime">> => non_neg_integer(),
%%   <<"roleArn">> => string(),
%%   <<"status">> => string()
%% }
-type dataset_export_job() :: #{binary() => any()}.

%% Example:
%% auto_ml_config() :: #{
%%   <<"metricName">> => string(),
%%   <<"recipeList">> => list(string()())
%% }
-type auto_ml_config() :: #{binary() => any()}.

%% Example:
%% stop_recommender_request() :: #{
%%   <<"recommenderArn">> := string()
%% }
-type stop_recommender_request() :: #{binary() => any()}.

%% Example:
%% describe_batch_inference_job_request() :: #{
%%   <<"batchInferenceJobArn">> := string()
%% }
-type describe_batch_inference_job_request() :: #{binary() => any()}.

%% Example:
%% dataset_import_job_summary() :: #{
%%   <<"creationDateTime">> => non_neg_integer(),
%%   <<"datasetImportJobArn">> => string(),
%%   <<"failureReason">> => string(),
%%   <<"importMode">> => list(any()),
%%   <<"jobName">> => string(),
%%   <<"lastUpdatedDateTime">> => non_neg_integer(),
%%   <<"status">> => string()
%% }
-type dataset_import_job_summary() :: #{binary() => any()}.

%% Example:
%% create_batch_segment_job_request() :: #{
%%   <<"filterArn">> => string(),
%%   <<"jobInput">> := batch_segment_job_input(),
%%   <<"jobName">> := string(),
%%   <<"jobOutput">> := batch_segment_job_output(),
%%   <<"numResults">> => integer(),
%%   <<"roleArn">> := string(),
%%   <<"solutionVersionArn">> := string(),
%%   <<"tags">> => list(tag()())
%% }
-type create_batch_segment_job_request() :: #{binary() => any()}.

%% Example:
%% data_deletion_job_summary() :: #{
%%   <<"creationDateTime">> => non_neg_integer(),
%%   <<"dataDeletionJobArn">> => string(),
%%   <<"datasetGroupArn">> => string(),
%%   <<"failureReason">> => string(),
%%   <<"jobName">> => string(),
%%   <<"lastUpdatedDateTime">> => non_neg_integer(),
%%   <<"status">> => string()
%% }
-type data_deletion_job_summary() :: #{binary() => any()}.

%% Example:
%% list_dataset_import_jobs_response() :: #{
%%   <<"datasetImportJobs">> => list(dataset_import_job_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_dataset_import_jobs_response() :: #{binary() => any()}.

%% Example:
%% h_p_o_resource_config() :: #{
%%   <<"maxNumberOfTrainingJobs">> => string(),
%%   <<"maxParallelTrainingJobs">> => string()
%% }
-type h_p_o_resource_config() :: #{binary() => any()}.

%% Example:
%% event_tracker_summary() :: #{
%%   <<"creationDateTime">> => non_neg_integer(),
%%   <<"eventTrackerArn">> => string(),
%%   <<"lastUpdatedDateTime">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"status">> => string()
%% }
-type event_tracker_summary() :: #{binary() => any()}.

%% Example:
%% delete_dataset_group_request() :: #{
%%   <<"datasetGroupArn">> := string()
%% }
-type delete_dataset_group_request() :: #{binary() => any()}.

%% Example:
%% solution_update_config() :: #{
%%   <<"autoTrainingConfig">> => auto_training_config(),
%%   <<"eventsConfig">> => events_config()
%% }
-type solution_update_config() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{

%% }
-type tag_resource_response() :: #{binary() => any()}.

%% Example:
%% create_campaign_request() :: #{
%%   <<"campaignConfig">> => campaign_config(),
%%   <<"minProvisionedTPS">> => integer(),
%%   <<"name">> := string(),
%%   <<"solutionVersionArn">> := string(),
%%   <<"tags">> => list(tag()())
%% }
-type create_campaign_request() :: #{binary() => any()}.

%% Example:
%% list_dataset_export_jobs_response() :: #{
%%   <<"datasetExportJobs">> => list(dataset_export_job_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_dataset_export_jobs_response() :: #{binary() => any()}.

%% Example:
%% event_tracker() :: #{
%%   <<"accountId">> => string(),
%%   <<"creationDateTime">> => non_neg_integer(),
%%   <<"datasetGroupArn">> => string(),
%%   <<"eventTrackerArn">> => string(),
%%   <<"lastUpdatedDateTime">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"status">> => string(),
%%   <<"trackingId">> => string()
%% }
-type event_tracker() :: #{binary() => any()}.

%% Example:
%% create_dataset_group_response() :: #{
%%   <<"datasetGroupArn">> => string(),
%%   <<"domain">> => list(any())
%% }
-type create_dataset_group_response() :: #{binary() => any()}.

%% Example:
%% batch_inference_job_summary() :: #{
%%   <<"batchInferenceJobArn">> => string(),
%%   <<"batchInferenceJobMode">> => list(any()),
%%   <<"creationDateTime">> => non_neg_integer(),
%%   <<"failureReason">> => string(),
%%   <<"jobName">> => string(),
%%   <<"lastUpdatedDateTime">> => non_neg_integer(),
%%   <<"solutionVersionArn">> => string(),
%%   <<"status">> => string()
%% }
-type batch_inference_job_summary() :: #{binary() => any()}.

%% Example:
%% describe_feature_transformation_response() :: #{
%%   <<"featureTransformation">> => feature_transformation()
%% }
-type describe_feature_transformation_response() :: #{binary() => any()}.

%% Example:
%% describe_event_tracker_response() :: #{
%%   <<"eventTracker">> => event_tracker()
%% }
-type describe_event_tracker_response() :: #{binary() => any()}.

%% Example:
%% list_recommenders_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"recommenders">> => list(recommender_summary()())
%% }
-type list_recommenders_response() :: #{binary() => any()}.

%% Example:
%% describe_metric_attribution_response() :: #{
%%   <<"metricAttribution">> => metric_attribution()
%% }
-type describe_metric_attribution_response() :: #{binary() => any()}.

%% Example:
%% describe_dataset_response() :: #{
%%   <<"dataset">> => dataset()
%% }
-type describe_dataset_response() :: #{binary() => any()}.

%% Example:
%% recommender_config() :: #{
%%   <<"enableMetadataWithRecommendations">> => boolean(),
%%   <<"itemExplorationConfig">> => map(),
%%   <<"minRecommendationRequestsPerSecond">> => integer(),
%%   <<"trainingDataConfig">> => training_data_config()
%% }
-type recommender_config() :: #{binary() => any()}.

%% Example:
%% auto_ml_result() :: #{
%%   <<"bestRecipeArn">> => string()
%% }
-type auto_ml_result() :: #{binary() => any()}.

%% Example:
%% stop_solution_version_creation_request() :: #{
%%   <<"solutionVersionArn">> := string()
%% }
-type stop_solution_version_creation_request() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{
%%   <<"resourceArn">> := string()
%% }
-type list_tags_for_resource_request() :: #{binary() => any()}.

%% Example:
%% create_dataset_request() :: #{
%%   <<"datasetGroupArn">> := string(),
%%   <<"datasetType">> := string(),
%%   <<"name">> := string(),
%%   <<"schemaArn">> := string(),
%%   <<"tags">> => list(tag()())
%% }
-type create_dataset_request() :: #{binary() => any()}.

%% Example:
%% describe_dataset_group_request() :: #{
%%   <<"datasetGroupArn">> := string()
%% }
-type describe_dataset_group_request() :: #{binary() => any()}.

%% Example:
%% list_metric_attributions_response() :: #{
%%   <<"metricAttributions">> => list(metric_attribution_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_metric_attributions_response() :: #{binary() => any()}.

%% Example:
%% list_event_trackers_response() :: #{
%%   <<"eventTrackers">> => list(event_tracker_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_event_trackers_response() :: #{binary() => any()}.

%% Example:
%% feature_transformation() :: #{
%%   <<"creationDateTime">> => non_neg_integer(),
%%   <<"defaultParameters">> => map(),
%%   <<"featureTransformationArn">> => string(),
%%   <<"lastUpdatedDateTime">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"status">> => string()
%% }
-type feature_transformation() :: #{binary() => any()}.

%% Example:
%% create_dataset_import_job_request() :: #{
%%   <<"dataSource">> := data_source(),
%%   <<"datasetArn">> := string(),
%%   <<"importMode">> => list(any()),
%%   <<"jobName">> := string(),
%%   <<"publishAttributionMetricsToS3">> => boolean(),
%%   <<"roleArn">> := string(),
%%   <<"tags">> => list(tag()())
%% }
-type create_dataset_import_job_request() :: #{binary() => any()}.

%% Example:
%% solution_config() :: #{
%%   <<"algorithmHyperParameters">> => map(),
%%   <<"autoMLConfig">> => auto_ml_config(),
%%   <<"autoTrainingConfig">> => auto_training_config(),
%%   <<"eventValueThreshold">> => string(),
%%   <<"eventsConfig">> => events_config(),
%%   <<"featureTransformationParameters">> => map(),
%%   <<"hpoConfig">> => h_p_o_config(),
%%   <<"optimizationObjective">> => optimization_objective(),
%%   <<"trainingDataConfig">> => training_data_config()
%% }
-type solution_config() :: #{binary() => any()}.

%% Example:
%% list_solution_versions_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"solutionVersions">> => list(solution_version_summary()())
%% }
-type list_solution_versions_response() :: #{binary() => any()}.

%% Example:
%% dataset_schema_summary() :: #{
%%   <<"creationDateTime">> => non_neg_integer(),
%%   <<"domain">> => list(any()),
%%   <<"lastUpdatedDateTime">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"schemaArn">> => string()
%% }
-type dataset_schema_summary() :: #{binary() => any()}.

%% Example:
%% describe_dataset_import_job_request() :: #{
%%   <<"datasetImportJobArn">> := string()
%% }
-type describe_dataset_import_job_request() :: #{binary() => any()}.

%% Example:
%% limit_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% update_metric_attribution_request() :: #{
%%   <<"addMetrics">> => list(metric_attribute()()),
%%   <<"metricAttributionArn">> => string(),
%%   <<"metricsOutputConfig">> => metric_attribution_output(),
%%   <<"removeMetrics">> => list(string()())
%% }
-type update_metric_attribution_request() :: #{binary() => any()}.

%% Example:
%% s3_data_config() :: #{
%%   <<"kmsKeyArn">> => string(),
%%   <<"path">> => string()
%% }
-type s3_data_config() :: #{binary() => any()}.

%% Example:
%% create_solution_response() :: #{
%%   <<"solutionArn">> => string()
%% }
-type create_solution_response() :: #{binary() => any()}.

%% Example:
%% metric_attribution_output() :: #{
%%   <<"roleArn">> => string(),
%%   <<"s3DataDestination">> => s3_data_config()
%% }
-type metric_attribution_output() :: #{binary() => any()}.

%% Example:
%% update_metric_attribution_response() :: #{
%%   <<"metricAttributionArn">> => string()
%% }
-type update_metric_attribution_response() :: #{binary() => any()}.

%% Example:
%% describe_dataset_group_response() :: #{
%%   <<"datasetGroup">> => dataset_group()
%% }
-type describe_dataset_group_response() :: #{binary() => any()}.

%% Example:
%% default_continuous_hyper_parameter_range() :: #{
%%   <<"isTunable">> => boolean(),
%%   <<"maxValue">> => float(),
%%   <<"minValue">> => float(),
%%   <<"name">> => string()
%% }
-type default_continuous_hyper_parameter_range() :: #{binary() => any()}.

%% Example:
%% get_solution_metrics_response() :: #{
%%   <<"metrics">> => map(),
%%   <<"solutionVersionArn">> => string()
%% }
-type get_solution_metrics_response() :: #{binary() => any()}.

%% Example:
%% solution_update_summary() :: #{
%%   <<"creationDateTime">> => non_neg_integer(),
%%   <<"failureReason">> => string(),
%%   <<"lastUpdatedDateTime">> => non_neg_integer(),
%%   <<"performAutoTraining">> => boolean(),
%%   <<"solutionUpdateConfig">> => solution_update_config(),
%%   <<"status">> => string()
%% }
-type solution_update_summary() :: #{binary() => any()}.

%% Example:
%% update_campaign_request() :: #{
%%   <<"campaignArn">> := string(),
%%   <<"campaignConfig">> => campaign_config(),
%%   <<"minProvisionedTPS">> => integer(),
%%   <<"solutionVersionArn">> => string()
%% }
-type update_campaign_request() :: #{binary() => any()}.

%% Example:
%% describe_dataset_request() :: #{
%%   <<"datasetArn">> := string()
%% }
-type describe_dataset_request() :: #{binary() => any()}.

%% Example:
%% delete_dataset_request() :: #{
%%   <<"datasetArn">> := string()
%% }
-type delete_dataset_request() :: #{binary() => any()}.

%% Example:
%% list_datasets_response() :: #{
%%   <<"datasets">> => list(dataset_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_datasets_response() :: #{binary() => any()}.

%% Example:
%% algorithm_image() :: #{
%%   <<"dockerURI">> => string(),
%%   <<"name">> => string()
%% }
-type algorithm_image() :: #{binary() => any()}.

%% Example:
%% resource_already_exists_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_already_exists_exception() :: #{binary() => any()}.

%% Example:
%% list_dataset_export_jobs_request() :: #{
%%   <<"datasetArn">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_dataset_export_jobs_request() :: #{binary() => any()}.

%% Example:
%% h_p_o_config() :: #{
%%   <<"algorithmHyperParameterRanges">> => hyper_parameter_ranges(),
%%   <<"hpoObjective">> => h_p_o_objective(),
%%   <<"hpoResourceConfig">> => h_p_o_resource_config()
%% }
-type h_p_o_config() :: #{binary() => any()}.

%% Example:
%% data_source() :: #{
%%   <<"dataLocation">> => string()
%% }
-type data_source() :: #{binary() => any()}.

%% Example:
%% update_solution_response() :: #{
%%   <<"solutionArn">> => string()
%% }
-type update_solution_response() :: #{binary() => any()}.

%% Example:
%% describe_data_deletion_job_request() :: #{
%%   <<"dataDeletionJobArn">> := string()
%% }
-type describe_data_deletion_job_request() :: #{binary() => any()}.

%% Example:
%% dataset_export_job_output() :: #{
%%   <<"s3DataDestination">> => s3_data_config()
%% }
-type dataset_export_job_output() :: #{binary() => any()}.

%% Example:
%% create_campaign_response() :: #{
%%   <<"campaignArn">> => string()
%% }
-type create_campaign_response() :: #{binary() => any()}.

%% Example:
%% list_schemas_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"schemas">> => list(dataset_schema_summary()())
%% }
-type list_schemas_response() :: #{binary() => any()}.

%% Example:
%% create_dataset_export_job_response() :: #{
%%   <<"datasetExportJobArn">> => string()
%% }
-type create_dataset_export_job_response() :: #{binary() => any()}.

%% Example:
%% create_dataset_export_job_request() :: #{
%%   <<"datasetArn">> := string(),
%%   <<"ingestionMode">> => list(any()),
%%   <<"jobName">> := string(),
%%   <<"jobOutput">> := dataset_export_job_output(),
%%   <<"roleArn">> := string(),
%%   <<"tags">> => list(tag()())
%% }
-type create_dataset_export_job_request() :: #{binary() => any()}.

%% Example:
%% training_data_config() :: #{
%%   <<"excludedDatasetColumns">> => map()
%% }
-type training_data_config() :: #{binary() => any()}.

%% Example:
%% list_recipes_request() :: #{
%%   <<"domain">> => list(any()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"recipeProvider">> => list(any())
%% }
-type list_recipes_request() :: #{binary() => any()}.

%% Example:
%% list_solution_versions_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"solutionArn">> => string()
%% }
-type list_solution_versions_request() :: #{binary() => any()}.

%% Example:
%% list_filters_response() :: #{
%%   <<"Filters">> => list(filter_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_filters_response() :: #{binary() => any()}.

%% Example:
%% describe_filter_response() :: #{
%%   <<"filter">> => filter()
%% }
-type describe_filter_response() :: #{binary() => any()}.

%% Example:
%% dataset_group() :: #{
%%   <<"creationDateTime">> => non_neg_integer(),
%%   <<"datasetGroupArn">> => string(),
%%   <<"domain">> => list(any()),
%%   <<"failureReason">> => string(),
%%   <<"kmsKeyArn">> => string(),
%%   <<"lastUpdatedDateTime">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"roleArn">> => string(),
%%   <<"status">> => string()
%% }
-type dataset_group() :: #{binary() => any()}.

%% Example:
%% campaign_summary() :: #{
%%   <<"campaignArn">> => string(),
%%   <<"creationDateTime">> => non_neg_integer(),
%%   <<"failureReason">> => string(),
%%   <<"lastUpdatedDateTime">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"status">> => string()
%% }
-type campaign_summary() :: #{binary() => any()}.

%% Example:
%% describe_dataset_export_job_request() :: #{
%%   <<"datasetExportJobArn">> := string()
%% }
-type describe_dataset_export_job_request() :: #{binary() => any()}.

%% Example:
%% too_many_tags_exception() :: #{
%%   <<"message">> => string()
%% }
-type too_many_tags_exception() :: #{binary() => any()}.

%% Example:
%% delete_filter_request() :: #{
%%   <<"filterArn">> := string()
%% }
-type delete_filter_request() :: #{binary() => any()}.

%% Example:
%% list_recommenders_request() :: #{
%%   <<"datasetGroupArn">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_recommenders_request() :: #{binary() => any()}.

%% Example:
%% create_dataset_import_job_response() :: #{
%%   <<"datasetImportJobArn">> => string()
%% }
-type create_dataset_import_job_response() :: #{binary() => any()}.

%% Example:
%% list_filters_request() :: #{
%%   <<"datasetGroupArn">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_filters_request() :: #{binary() => any()}.

%% Example:
%% dataset_group_summary() :: #{
%%   <<"creationDateTime">> => non_neg_integer(),
%%   <<"datasetGroupArn">> => string(),
%%   <<"domain">> => list(any()),
%%   <<"failureReason">> => string(),
%%   <<"lastUpdatedDateTime">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"status">> => string()
%% }
-type dataset_group_summary() :: #{binary() => any()}.

-type create_batch_inference_job_errors() ::
    too_many_tags_exception() | 
    resource_already_exists_exception() | 
    limit_exceeded_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type create_batch_segment_job_errors() ::
    too_many_tags_exception() | 
    resource_already_exists_exception() | 
    limit_exceeded_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type create_campaign_errors() ::
    too_many_tags_exception() | 
    resource_already_exists_exception() | 
    limit_exceeded_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type create_data_deletion_job_errors() ::
    too_many_tags_exception() | 
    resource_already_exists_exception() | 
    limit_exceeded_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type create_dataset_errors() ::
    too_many_tags_exception() | 
    resource_already_exists_exception() | 
    limit_exceeded_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type create_dataset_export_job_errors() ::
    too_many_tags_exception() | 
    resource_already_exists_exception() | 
    limit_exceeded_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type create_dataset_group_errors() ::
    too_many_tags_exception() | 
    resource_already_exists_exception() | 
    limit_exceeded_exception() | 
    invalid_input_exception().

-type create_dataset_import_job_errors() ::
    too_many_tags_exception() | 
    resource_already_exists_exception() | 
    limit_exceeded_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type create_event_tracker_errors() ::
    too_many_tags_exception() | 
    resource_already_exists_exception() | 
    limit_exceeded_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type create_filter_errors() ::
    too_many_tags_exception() | 
    resource_already_exists_exception() | 
    limit_exceeded_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception().

-type create_metric_attribution_errors() ::
    resource_already_exists_exception() | 
    limit_exceeded_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type create_recommender_errors() ::
    too_many_tags_exception() | 
    resource_already_exists_exception() | 
    limit_exceeded_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type create_schema_errors() ::
    resource_already_exists_exception() | 
    limit_exceeded_exception() | 
    invalid_input_exception().

-type create_solution_errors() ::
    too_many_tags_exception() | 
    resource_already_exists_exception() | 
    limit_exceeded_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type create_solution_version_errors() ::
    too_many_tags_exception() | 
    resource_already_exists_exception() | 
    limit_exceeded_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type delete_campaign_errors() ::
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

-type delete_event_tracker_errors() ::
    invalid_input_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type delete_filter_errors() ::
    invalid_input_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type delete_metric_attribution_errors() ::
    invalid_input_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type delete_recommender_errors() ::
    invalid_input_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type delete_schema_errors() ::
    invalid_input_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type delete_solution_errors() ::
    invalid_input_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type describe_algorithm_errors() ::
    invalid_input_exception() | 
    resource_not_found_exception().

-type describe_batch_inference_job_errors() ::
    invalid_input_exception() | 
    resource_not_found_exception().

-type describe_batch_segment_job_errors() ::
    invalid_input_exception() | 
    resource_not_found_exception().

-type describe_campaign_errors() ::
    invalid_input_exception() | 
    resource_not_found_exception().

-type describe_data_deletion_job_errors() ::
    invalid_input_exception() | 
    resource_not_found_exception().

-type describe_dataset_errors() ::
    invalid_input_exception() | 
    resource_not_found_exception().

-type describe_dataset_export_job_errors() ::
    invalid_input_exception() | 
    resource_not_found_exception().

-type describe_dataset_group_errors() ::
    invalid_input_exception() | 
    resource_not_found_exception().

-type describe_dataset_import_job_errors() ::
    invalid_input_exception() | 
    resource_not_found_exception().

-type describe_event_tracker_errors() ::
    invalid_input_exception() | 
    resource_not_found_exception().

-type describe_feature_transformation_errors() ::
    invalid_input_exception() | 
    resource_not_found_exception().

-type describe_filter_errors() ::
    invalid_input_exception() | 
    resource_not_found_exception().

-type describe_metric_attribution_errors() ::
    invalid_input_exception() | 
    resource_not_found_exception().

-type describe_recipe_errors() ::
    invalid_input_exception() | 
    resource_not_found_exception().

-type describe_recommender_errors() ::
    invalid_input_exception() | 
    resource_not_found_exception().

-type describe_schema_errors() ::
    invalid_input_exception() | 
    resource_not_found_exception().

-type describe_solution_errors() ::
    invalid_input_exception() | 
    resource_not_found_exception().

-type describe_solution_version_errors() ::
    invalid_input_exception() | 
    resource_not_found_exception().

-type get_solution_metrics_errors() ::
    invalid_input_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type list_batch_inference_jobs_errors() ::
    invalid_input_exception() | 
    invalid_next_token_exception().

-type list_batch_segment_jobs_errors() ::
    invalid_input_exception() | 
    invalid_next_token_exception().

-type list_campaigns_errors() ::
    invalid_input_exception() | 
    invalid_next_token_exception().

-type list_data_deletion_jobs_errors() ::
    invalid_input_exception() | 
    invalid_next_token_exception().

-type list_dataset_export_jobs_errors() ::
    invalid_input_exception() | 
    invalid_next_token_exception().

-type list_dataset_groups_errors() ::
    invalid_next_token_exception().

-type list_dataset_import_jobs_errors() ::
    invalid_input_exception() | 
    invalid_next_token_exception().

-type list_datasets_errors() ::
    invalid_input_exception() | 
    invalid_next_token_exception().

-type list_event_trackers_errors() ::
    invalid_input_exception() | 
    invalid_next_token_exception().

-type list_filters_errors() ::
    invalid_input_exception() | 
    invalid_next_token_exception().

-type list_metric_attribution_metrics_errors() ::
    invalid_input_exception() | 
    invalid_next_token_exception().

-type list_metric_attributions_errors() ::
    invalid_input_exception() | 
    invalid_next_token_exception().

-type list_recipes_errors() ::
    invalid_input_exception() | 
    invalid_next_token_exception().

-type list_recommenders_errors() ::
    invalid_input_exception() | 
    invalid_next_token_exception().

-type list_schemas_errors() ::
    invalid_next_token_exception().

-type list_solution_versions_errors() ::
    invalid_input_exception() | 
    invalid_next_token_exception() | 
    resource_not_found_exception().

-type list_solutions_errors() ::
    invalid_input_exception() | 
    invalid_next_token_exception().

-type list_tags_for_resource_errors() ::
    invalid_input_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type start_recommender_errors() ::
    invalid_input_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type stop_recommender_errors() ::
    invalid_input_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type stop_solution_version_creation_errors() ::
    invalid_input_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type tag_resource_errors() ::
    too_many_tags_exception() | 
    limit_exceeded_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type untag_resource_errors() ::
    invalid_input_exception() | 
    resource_not_found_exception() | 
    too_many_tag_keys_exception() | 
    resource_in_use_exception().

-type update_campaign_errors() ::
    invalid_input_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type update_dataset_errors() ::
    invalid_input_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type update_metric_attribution_errors() ::
    resource_already_exists_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type update_recommender_errors() ::
    invalid_input_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type update_solution_errors() ::
    limit_exceeded_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

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
-spec create_batch_inference_job(aws_client:aws_client(), create_batch_inference_job_request()) ->
    {ok, create_batch_inference_job_response(), tuple()} |
    {error, any()} |
    {error, create_batch_inference_job_errors(), tuple()}.
create_batch_inference_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_batch_inference_job(Client, Input, []).

-spec create_batch_inference_job(aws_client:aws_client(), create_batch_inference_job_request(), proplists:proplist()) ->
    {ok, create_batch_inference_job_response(), tuple()} |
    {error, any()} |
    {error, create_batch_inference_job_errors(), tuple()}.
create_batch_inference_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateBatchInferenceJob">>, Input, Options).

%% @doc Creates a batch segment job.
%%
%% The operation can handle up to 50 million records and the
%% input file must be in JSON format. For more information, see
%% Getting batch recommendations and user segments:
%% https://docs.aws.amazon.com/personalize/latest/dg/recommendations-batch.html.
-spec create_batch_segment_job(aws_client:aws_client(), create_batch_segment_job_request()) ->
    {ok, create_batch_segment_job_response(), tuple()} |
    {error, any()} |
    {error, create_batch_segment_job_errors(), tuple()}.
create_batch_segment_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_batch_segment_job(Client, Input, []).

-spec create_batch_segment_job(aws_client:aws_client(), create_batch_segment_job_request(), proplists:proplist()) ->
    {ok, create_batch_segment_job_response(), tuple()} |
    {error, any()} |
    {error, create_batch_segment_job_errors(), tuple()}.
create_batch_segment_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateBatchSegmentJob">>, Input, Options).

%% @doc
%% You incur campaign costs while it is active.
%%
%% To avoid unnecessary costs, make sure to delete the campaign when you are
%% finished. For information about campaign
%% costs, see Amazon Personalize pricing:
%% https://aws.amazon.com/personalize/pricing/.
%%
%% Creates a campaign that deploys a solution version. When a client calls
%% the
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
-spec create_campaign(aws_client:aws_client(), create_campaign_request()) ->
    {ok, create_campaign_response(), tuple()} |
    {error, any()} |
    {error, create_campaign_errors(), tuple()}.
create_campaign(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_campaign(Client, Input, []).

-spec create_campaign(aws_client:aws_client(), create_campaign_request(), proplists:proplist()) ->
    {ok, create_campaign_response(), tuple()} |
    {error, any()} |
    {error, create_campaign_errors(), tuple()}.
create_campaign(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateCampaign">>, Input, Options).

%% @doc Creates a batch job that deletes all
%% references to specific users from an Amazon Personalize dataset group in
%% batches.
%%
%% You specify the users to delete in a CSV file of userIds in
%% an Amazon S3 bucket. After a job completes, Amazon Personalize no longer
%% trains
%% on the users’ data and no longer considers the users when generating user
%% segments.
%% For more information about creating a data deletion job, see Deleting
%% users:
%% https://docs.aws.amazon.com/personalize/latest/dg/delete-records.html.
%%
%% Your input file must be a CSV file with a single USER_ID column that lists
%% the users IDs. For more information
%% about preparing the CSV file, see Preparing your data deletion file and
%% uploading it to Amazon S3:
%% https://docs.aws.amazon.com/personalize/latest/dg/prepare-deletion-input-file.html.
%%
%% To give Amazon Personalize permission to access your input CSV file of
%% userIds, you must specify an IAM service role that has permission to
%% read from the data source. This role
%% needs `GetObject' and `ListBucket' permissions for the bucket and
%% its content.
%% These permissions are the same as importing data. For information on
%% granting access to your Amazon S3
%% bucket, see Giving
%% Amazon Personalize Access to Amazon S3 Resources:
%% https://docs.aws.amazon.com/personalize/latest/dg/granting-personalize-s3-access.html.
%%
%% After you create a job, it can take up to a day to delete all references
%% to the users from datasets and models. Until the job completes,
%% Amazon Personalize continues to use the data when training. And if you use
%% a User Segmentation recipe, the users might appear in user segments.
%%
%% Status
%%
%% A data deletion job can have one of the following statuses:
%%
%% PENDING &gt; IN_PROGRESS &gt; COMPLETED -or- FAILED
%%
%% To get the status of the data deletion job, call DescribeDataDeletionJob:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeDataDeletionJob.html
%% API operation and specify the Amazon Resource Name
%% (ARN) of the job. If the status is FAILED, the response
%% includes a `failureReason' key, which describes why the job
%% failed.
%%
%% == Related APIs ==
%%
%% ListDataDeletionJobs:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_ListDataDeletionJobs.html
%%
%% DescribeDataDeletionJob:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeDataDeletionJob.html
-spec create_data_deletion_job(aws_client:aws_client(), create_data_deletion_job_request()) ->
    {ok, create_data_deletion_job_response(), tuple()} |
    {error, any()} |
    {error, create_data_deletion_job_errors(), tuple()}.
create_data_deletion_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_data_deletion_job(Client, Input, []).

-spec create_data_deletion_job(aws_client:aws_client(), create_data_deletion_job_request(), proplists:proplist()) ->
    {ok, create_data_deletion_job_response(), tuple()} |
    {error, any()} |
    {error, create_data_deletion_job_errors(), tuple()}.
create_data_deletion_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDataDeletionJob">>, Input, Options).

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
-spec create_dataset_export_job(aws_client:aws_client(), create_dataset_export_job_request()) ->
    {ok, create_dataset_export_job_response(), tuple()} |
    {error, any()} |
    {error, create_dataset_export_job_errors(), tuple()}.
create_dataset_export_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_dataset_export_job(Client, Input, []).

-spec create_dataset_export_job(aws_client:aws_client(), create_dataset_export_job_request(), proplists:proplist()) ->
    {ok, create_dataset_export_job_response(), tuple()} |
    {error, any()} |
    {error, create_dataset_export_job_errors(), tuple()}.
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
-spec create_event_tracker(aws_client:aws_client(), create_event_tracker_request()) ->
    {ok, create_event_tracker_response(), tuple()} |
    {error, any()} |
    {error, create_event_tracker_errors(), tuple()}.
create_event_tracker(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_event_tracker(Client, Input, []).

-spec create_event_tracker(aws_client:aws_client(), create_event_tracker_request(), proplists:proplist()) ->
    {ok, create_event_tracker_response(), tuple()} |
    {error, any()} |
    {error, create_event_tracker_errors(), tuple()}.
create_event_tracker(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateEventTracker">>, Input, Options).

%% @doc Creates a recommendation filter.
%%
%% For more information, see Filtering recommendations and user segments:
%% https://docs.aws.amazon.com/personalize/latest/dg/filter.html.
-spec create_filter(aws_client:aws_client(), create_filter_request()) ->
    {ok, create_filter_response(), tuple()} |
    {error, any()} |
    {error, create_filter_errors(), tuple()}.
create_filter(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_filter(Client, Input, []).

-spec create_filter(aws_client:aws_client(), create_filter_request(), proplists:proplist()) ->
    {ok, create_filter_response(), tuple()} |
    {error, any()} |
    {error, create_filter_errors(), tuple()}.
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
-spec create_metric_attribution(aws_client:aws_client(), create_metric_attribution_request()) ->
    {ok, create_metric_attribution_response(), tuple()} |
    {error, any()} |
    {error, create_metric_attribution_errors(), tuple()}.
create_metric_attribution(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_metric_attribution(Client, Input, []).

-spec create_metric_attribution(aws_client:aws_client(), create_metric_attribution_request(), proplists:proplist()) ->
    {ok, create_metric_attribution_response(), tuple()} |
    {error, any()} |
    {error, create_metric_attribution_errors(), tuple()}.
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
-spec create_recommender(aws_client:aws_client(), create_recommender_request()) ->
    {ok, create_recommender_response(), tuple()} |
    {error, any()} |
    {error, create_recommender_errors(), tuple()}.
create_recommender(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_recommender(Client, Input, []).

-spec create_recommender(aws_client:aws_client(), create_recommender_request(), proplists:proplist()) ->
    {ok, create_recommender_response(), tuple()} |
    {error, any()} |
    {error, create_recommender_errors(), tuple()}.
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
-spec create_schema(aws_client:aws_client(), create_schema_request()) ->
    {ok, create_schema_response(), tuple()} |
    {error, any()} |
    {error, create_schema_errors(), tuple()}.
create_schema(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_schema(Client, Input, []).

-spec create_schema(aws_client:aws_client(), create_schema_request(), proplists:proplist()) ->
    {ok, create_schema_response(), tuple()} |
    {error, any()} |
    {error, create_schema_errors(), tuple()}.
create_schema(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateSchema">>, Input, Options).

%% @doc
%% By default, all new solutions use automatic training.
%%
%% With automatic training, you incur training costs while
%% your solution is active. To avoid unnecessary costs, when you are finished
%% you can
%% update the solution:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_UpdateSolution.html
%% to turn off automatic training.
%% For information about training
%% costs, see Amazon Personalize pricing:
%% https://aws.amazon.com/personalize/pricing/.
%%
%% Creates the configuration for training a model (creating a solution
%% version). This configuration
%% includes the recipe to use for model training and optional training
%% configuration, such as columns to use
%% in training and feature transformation parameters. For more information
%% about configuring a solution, see Creating and configuring a solution:
%% https://docs.aws.amazon.com/personalize/latest/dg/customizing-solution-config.html.
%%
%% By default, new solutions use automatic training to create solution
%% versions every 7 days. You can change the training frequency.
%% Automatic solution version creation starts within one hour after the
%% solution is ACTIVE. If you manually create a solution version within
%% the hour, the solution skips the first automatic training. For more
%% information,
%% see Configuring automatic training:
%% https://docs.aws.amazon.com/personalize/latest/dg/solution-config-auto-training.html.
%%
%% To turn off automatic training, set `performAutoTraining' to false. If
%% you turn off automatic training, you must manually create a solution
%% version
%% by calling the CreateSolutionVersion:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_CreateSolutionVersion.html
%% operation.
%%
%% After training starts, you can
%% get the solution version's Amazon Resource Name (ARN) with the
%% ListSolutionVersions:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_ListSolutionVersions.html
%% API operation.
%% To get its status, use the DescribeSolutionVersion:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeSolutionVersion.html.
%%
%% After training completes you can evaluate model accuracy by calling
%% GetSolutionMetrics:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_GetSolutionMetrics.html.
%% When you are satisfied with the solution version, you
%% deploy it using CreateCampaign:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_CreateCampaign.html.
%% The campaign provides recommendations
%% to a client through the
%% GetRecommendations:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_RS_GetRecommendations.html
%% API.
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
%% If you use
%% manual training, the status must be ACTIVE before you call
%% `CreateSolutionVersion'.
%%
%% == Related APIs ==
%%
%% UpdateSolution:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_UpdateSolution.html
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
-spec create_solution(aws_client:aws_client(), create_solution_request()) ->
    {ok, create_solution_response(), tuple()} |
    {error, any()} |
    {error, create_solution_errors(), tuple()}.
create_solution(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_solution(Client, Input, []).

-spec create_solution(aws_client:aws_client(), create_solution_request(), proplists:proplist()) ->
    {ok, create_solution_response(), tuple()} |
    {error, any()} |
    {error, create_solution_errors(), tuple()}.
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
-spec create_solution_version(aws_client:aws_client(), create_solution_version_request()) ->
    {ok, create_solution_version_response(), tuple()} |
    {error, any()} |
    {error, create_solution_version_errors(), tuple()}.
create_solution_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_solution_version(Client, Input, []).

-spec create_solution_version(aws_client:aws_client(), create_solution_version_request(), proplists:proplist()) ->
    {ok, create_solution_version_response(), tuple()} |
    {error, any()} |
    {error, create_solution_version_errors(), tuple()}.
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
-spec delete_campaign(aws_client:aws_client(), delete_campaign_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_campaign_errors(), tuple()}.
delete_campaign(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_campaign(Client, Input, []).

-spec delete_campaign(aws_client:aws_client(), delete_campaign_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_campaign_errors(), tuple()}.
delete_campaign(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteCampaign">>, Input, Options).

%% @doc Deletes a dataset.
%%
%% You can't delete a dataset if an associated
%% `DatasetImportJob' or `SolutionVersion' is in the
%% CREATE PENDING or IN PROGRESS state. For more information about deleting
%% datasets,
%% see Deleting a dataset:
%% https://docs.aws.amazon.com/personalize/latest/dg/delete-dataset.html.
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

%% @doc Deletes the event tracker.
%%
%% Does not delete the dataset from
%% the dataset group. For more
%% information on event trackers, see CreateEventTracker:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_CreateEventTracker.html.
-spec delete_event_tracker(aws_client:aws_client(), delete_event_tracker_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_event_tracker_errors(), tuple()}.
delete_event_tracker(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_event_tracker(Client, Input, []).

-spec delete_event_tracker(aws_client:aws_client(), delete_event_tracker_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_event_tracker_errors(), tuple()}.
delete_event_tracker(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteEventTracker">>, Input, Options).

%% @doc Deletes a filter.
-spec delete_filter(aws_client:aws_client(), delete_filter_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_filter_errors(), tuple()}.
delete_filter(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_filter(Client, Input, []).

-spec delete_filter(aws_client:aws_client(), delete_filter_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_filter_errors(), tuple()}.
delete_filter(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteFilter">>, Input, Options).

%% @doc Deletes a metric attribution.
-spec delete_metric_attribution(aws_client:aws_client(), delete_metric_attribution_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_metric_attribution_errors(), tuple()}.
delete_metric_attribution(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_metric_attribution(Client, Input, []).

-spec delete_metric_attribution(aws_client:aws_client(), delete_metric_attribution_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_metric_attribution_errors(), tuple()}.
delete_metric_attribution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteMetricAttribution">>, Input, Options).

%% @doc Deactivates and removes a recommender.
%%
%% A deleted recommender can no longer be specified in a GetRecommendations:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_RS_GetRecommendations.html
%% request.
-spec delete_recommender(aws_client:aws_client(), delete_recommender_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_recommender_errors(), tuple()}.
delete_recommender(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_recommender(Client, Input, []).

-spec delete_recommender(aws_client:aws_client(), delete_recommender_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_recommender_errors(), tuple()}.
delete_recommender(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteRecommender">>, Input, Options).

%% @doc Deletes a schema.
%%
%% Before deleting a schema, you must delete all
%% datasets referencing the schema. For more information on schemas, see
%% CreateSchema:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_CreateSchema.html.
-spec delete_schema(aws_client:aws_client(), delete_schema_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_schema_errors(), tuple()}.
delete_schema(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_schema(Client, Input, []).

-spec delete_schema(aws_client:aws_client(), delete_schema_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_schema_errors(), tuple()}.
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
-spec delete_solution(aws_client:aws_client(), delete_solution_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_solution_errors(), tuple()}.
delete_solution(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_solution(Client, Input, []).

-spec delete_solution(aws_client:aws_client(), delete_solution_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_solution_errors(), tuple()}.
delete_solution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteSolution">>, Input, Options).

%% @doc Describes the given algorithm.
-spec describe_algorithm(aws_client:aws_client(), describe_algorithm_request()) ->
    {ok, describe_algorithm_response(), tuple()} |
    {error, any()} |
    {error, describe_algorithm_errors(), tuple()}.
describe_algorithm(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_algorithm(Client, Input, []).

-spec describe_algorithm(aws_client:aws_client(), describe_algorithm_request(), proplists:proplist()) ->
    {ok, describe_algorithm_response(), tuple()} |
    {error, any()} |
    {error, describe_algorithm_errors(), tuple()}.
describe_algorithm(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAlgorithm">>, Input, Options).

%% @doc Gets the properties of a batch inference job including name, Amazon
%% Resource Name (ARN),
%% status, input and output configurations, and the ARN of the solution
%% version used to generate
%% the recommendations.
-spec describe_batch_inference_job(aws_client:aws_client(), describe_batch_inference_job_request()) ->
    {ok, describe_batch_inference_job_response(), tuple()} |
    {error, any()} |
    {error, describe_batch_inference_job_errors(), tuple()}.
describe_batch_inference_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_batch_inference_job(Client, Input, []).

-spec describe_batch_inference_job(aws_client:aws_client(), describe_batch_inference_job_request(), proplists:proplist()) ->
    {ok, describe_batch_inference_job_response(), tuple()} |
    {error, any()} |
    {error, describe_batch_inference_job_errors(), tuple()}.
describe_batch_inference_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeBatchInferenceJob">>, Input, Options).

%% @doc Gets the properties of a batch segment job including name, Amazon
%% Resource Name (ARN),
%% status, input and output configurations, and the ARN of the solution
%% version used to generate
%% segments.
-spec describe_batch_segment_job(aws_client:aws_client(), describe_batch_segment_job_request()) ->
    {ok, describe_batch_segment_job_response(), tuple()} |
    {error, any()} |
    {error, describe_batch_segment_job_errors(), tuple()}.
describe_batch_segment_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_batch_segment_job(Client, Input, []).

-spec describe_batch_segment_job(aws_client:aws_client(), describe_batch_segment_job_request(), proplists:proplist()) ->
    {ok, describe_batch_segment_job_response(), tuple()} |
    {error, any()} |
    {error, describe_batch_segment_job_errors(), tuple()}.
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
-spec describe_campaign(aws_client:aws_client(), describe_campaign_request()) ->
    {ok, describe_campaign_response(), tuple()} |
    {error, any()} |
    {error, describe_campaign_errors(), tuple()}.
describe_campaign(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_campaign(Client, Input, []).

-spec describe_campaign(aws_client:aws_client(), describe_campaign_request(), proplists:proplist()) ->
    {ok, describe_campaign_response(), tuple()} |
    {error, any()} |
    {error, describe_campaign_errors(), tuple()}.
describe_campaign(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeCampaign">>, Input, Options).

%% @doc Describes the data deletion job created by CreateDataDeletionJob:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_CreateDataDeletionJob.html,
%% including the job status.
-spec describe_data_deletion_job(aws_client:aws_client(), describe_data_deletion_job_request()) ->
    {ok, describe_data_deletion_job_response(), tuple()} |
    {error, any()} |
    {error, describe_data_deletion_job_errors(), tuple()}.
describe_data_deletion_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_data_deletion_job(Client, Input, []).

-spec describe_data_deletion_job(aws_client:aws_client(), describe_data_deletion_job_request(), proplists:proplist()) ->
    {ok, describe_data_deletion_job_response(), tuple()} |
    {error, any()} |
    {error, describe_data_deletion_job_errors(), tuple()}.
describe_data_deletion_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDataDeletionJob">>, Input, Options).

%% @doc Describes the given dataset.
%%
%% For more information on datasets, see
%% CreateDataset:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_CreateDataset.html.
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

%% @doc Describes the dataset export job created by CreateDatasetExportJob:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_CreateDatasetExportJob.html,
%% including the export job status.
-spec describe_dataset_export_job(aws_client:aws_client(), describe_dataset_export_job_request()) ->
    {ok, describe_dataset_export_job_response(), tuple()} |
    {error, any()} |
    {error, describe_dataset_export_job_errors(), tuple()}.
describe_dataset_export_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_dataset_export_job(Client, Input, []).

-spec describe_dataset_export_job(aws_client:aws_client(), describe_dataset_export_job_request(), proplists:proplist()) ->
    {ok, describe_dataset_export_job_response(), tuple()} |
    {error, any()} |
    {error, describe_dataset_export_job_errors(), tuple()}.
describe_dataset_export_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDatasetExportJob">>, Input, Options).

%% @doc Describes the given dataset group.
%%
%% For more information on dataset
%% groups, see CreateDatasetGroup:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_CreateDatasetGroup.html.
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

%% @doc Describes the dataset import job created by CreateDatasetImportJob:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_CreateDatasetImportJob.html,
%% including the import job status.
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

%% @doc Describes an event tracker.
%%
%% The response includes the `trackingId' and
%% `status' of the event tracker.
%% For more information on event trackers, see CreateEventTracker:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_CreateEventTracker.html.
-spec describe_event_tracker(aws_client:aws_client(), describe_event_tracker_request()) ->
    {ok, describe_event_tracker_response(), tuple()} |
    {error, any()} |
    {error, describe_event_tracker_errors(), tuple()}.
describe_event_tracker(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_event_tracker(Client, Input, []).

-spec describe_event_tracker(aws_client:aws_client(), describe_event_tracker_request(), proplists:proplist()) ->
    {ok, describe_event_tracker_response(), tuple()} |
    {error, any()} |
    {error, describe_event_tracker_errors(), tuple()}.
describe_event_tracker(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEventTracker">>, Input, Options).

%% @doc Describes the given feature transformation.
-spec describe_feature_transformation(aws_client:aws_client(), describe_feature_transformation_request()) ->
    {ok, describe_feature_transformation_response(), tuple()} |
    {error, any()} |
    {error, describe_feature_transformation_errors(), tuple()}.
describe_feature_transformation(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_feature_transformation(Client, Input, []).

-spec describe_feature_transformation(aws_client:aws_client(), describe_feature_transformation_request(), proplists:proplist()) ->
    {ok, describe_feature_transformation_response(), tuple()} |
    {error, any()} |
    {error, describe_feature_transformation_errors(), tuple()}.
describe_feature_transformation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeFeatureTransformation">>, Input, Options).

%% @doc Describes a filter's properties.
-spec describe_filter(aws_client:aws_client(), describe_filter_request()) ->
    {ok, describe_filter_response(), tuple()} |
    {error, any()} |
    {error, describe_filter_errors(), tuple()}.
describe_filter(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_filter(Client, Input, []).

-spec describe_filter(aws_client:aws_client(), describe_filter_request(), proplists:proplist()) ->
    {ok, describe_filter_response(), tuple()} |
    {error, any()} |
    {error, describe_filter_errors(), tuple()}.
describe_filter(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeFilter">>, Input, Options).

%% @doc Describes a metric attribution.
-spec describe_metric_attribution(aws_client:aws_client(), describe_metric_attribution_request()) ->
    {ok, describe_metric_attribution_response(), tuple()} |
    {error, any()} |
    {error, describe_metric_attribution_errors(), tuple()}.
describe_metric_attribution(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_metric_attribution(Client, Input, []).

-spec describe_metric_attribution(aws_client:aws_client(), describe_metric_attribution_request(), proplists:proplist()) ->
    {ok, describe_metric_attribution_response(), tuple()} |
    {error, any()} |
    {error, describe_metric_attribution_errors(), tuple()}.
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
-spec describe_recipe(aws_client:aws_client(), describe_recipe_request()) ->
    {ok, describe_recipe_response(), tuple()} |
    {error, any()} |
    {error, describe_recipe_errors(), tuple()}.
describe_recipe(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_recipe(Client, Input, []).

-spec describe_recipe(aws_client:aws_client(), describe_recipe_request(), proplists:proplist()) ->
    {ok, describe_recipe_response(), tuple()} |
    {error, any()} |
    {error, describe_recipe_errors(), tuple()}.
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
-spec describe_recommender(aws_client:aws_client(), describe_recommender_request()) ->
    {ok, describe_recommender_response(), tuple()} |
    {error, any()} |
    {error, describe_recommender_errors(), tuple()}.
describe_recommender(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_recommender(Client, Input, []).

-spec describe_recommender(aws_client:aws_client(), describe_recommender_request(), proplists:proplist()) ->
    {ok, describe_recommender_response(), tuple()} |
    {error, any()} |
    {error, describe_recommender_errors(), tuple()}.
describe_recommender(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeRecommender">>, Input, Options).

%% @doc Describes a schema.
%%
%% For more information on schemas, see
%% CreateSchema:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_CreateSchema.html.
-spec describe_schema(aws_client:aws_client(), describe_schema_request()) ->
    {ok, describe_schema_response(), tuple()} |
    {error, any()} |
    {error, describe_schema_errors(), tuple()}.
describe_schema(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_schema(Client, Input, []).

-spec describe_schema(aws_client:aws_client(), describe_schema_request(), proplists:proplist()) ->
    {ok, describe_schema_response(), tuple()} |
    {error, any()} |
    {error, describe_schema_errors(), tuple()}.
describe_schema(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeSchema">>, Input, Options).

%% @doc Describes a solution.
%%
%% For more information on solutions, see CreateSolution:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_CreateSolution.html.
-spec describe_solution(aws_client:aws_client(), describe_solution_request()) ->
    {ok, describe_solution_response(), tuple()} |
    {error, any()} |
    {error, describe_solution_errors(), tuple()}.
describe_solution(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_solution(Client, Input, []).

-spec describe_solution(aws_client:aws_client(), describe_solution_request(), proplists:proplist()) ->
    {ok, describe_solution_response(), tuple()} |
    {error, any()} |
    {error, describe_solution_errors(), tuple()}.
describe_solution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeSolution">>, Input, Options).

%% @doc Describes a specific version of a solution.
%%
%% For more information on solutions, see CreateSolution:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_CreateSolution.html
-spec describe_solution_version(aws_client:aws_client(), describe_solution_version_request()) ->
    {ok, describe_solution_version_response(), tuple()} |
    {error, any()} |
    {error, describe_solution_version_errors(), tuple()}.
describe_solution_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_solution_version(Client, Input, []).

-spec describe_solution_version(aws_client:aws_client(), describe_solution_version_request(), proplists:proplist()) ->
    {ok, describe_solution_version_response(), tuple()} |
    {error, any()} |
    {error, describe_solution_version_errors(), tuple()}.
describe_solution_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeSolutionVersion">>, Input, Options).

%% @doc Gets the metrics for the specified solution version.
-spec get_solution_metrics(aws_client:aws_client(), get_solution_metrics_request()) ->
    {ok, get_solution_metrics_response(), tuple()} |
    {error, any()} |
    {error, get_solution_metrics_errors(), tuple()}.
get_solution_metrics(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_solution_metrics(Client, Input, []).

-spec get_solution_metrics(aws_client:aws_client(), get_solution_metrics_request(), proplists:proplist()) ->
    {ok, get_solution_metrics_response(), tuple()} |
    {error, any()} |
    {error, get_solution_metrics_errors(), tuple()}.
get_solution_metrics(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSolutionMetrics">>, Input, Options).

%% @doc Gets a list of the batch inference jobs that have been performed off
%% of a solution
%% version.
-spec list_batch_inference_jobs(aws_client:aws_client(), list_batch_inference_jobs_request()) ->
    {ok, list_batch_inference_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_batch_inference_jobs_errors(), tuple()}.
list_batch_inference_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_batch_inference_jobs(Client, Input, []).

-spec list_batch_inference_jobs(aws_client:aws_client(), list_batch_inference_jobs_request(), proplists:proplist()) ->
    {ok, list_batch_inference_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_batch_inference_jobs_errors(), tuple()}.
list_batch_inference_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListBatchInferenceJobs">>, Input, Options).

%% @doc Gets a list of the batch segment jobs that have been performed off of
%% a solution
%% version that you specify.
-spec list_batch_segment_jobs(aws_client:aws_client(), list_batch_segment_jobs_request()) ->
    {ok, list_batch_segment_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_batch_segment_jobs_errors(), tuple()}.
list_batch_segment_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_batch_segment_jobs(Client, Input, []).

-spec list_batch_segment_jobs(aws_client:aws_client(), list_batch_segment_jobs_request(), proplists:proplist()) ->
    {ok, list_batch_segment_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_batch_segment_jobs_errors(), tuple()}.
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
-spec list_campaigns(aws_client:aws_client(), list_campaigns_request()) ->
    {ok, list_campaigns_response(), tuple()} |
    {error, any()} |
    {error, list_campaigns_errors(), tuple()}.
list_campaigns(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_campaigns(Client, Input, []).

-spec list_campaigns(aws_client:aws_client(), list_campaigns_request(), proplists:proplist()) ->
    {ok, list_campaigns_response(), tuple()} |
    {error, any()} |
    {error, list_campaigns_errors(), tuple()}.
list_campaigns(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListCampaigns">>, Input, Options).

%% @doc Returns a list of data deletion jobs for a dataset group ordered by
%% creation time,
%% with the most recent first.
%%
%% When
%% a dataset group is not specified, all the data deletion jobs associated
%% with
%% the account are listed. The response provides the properties for each
%% job, including the Amazon Resource Name (ARN). For more
%% information on data deletion jobs, see Deleting users:
%% https://docs.aws.amazon.com/personalize/latest/dg/delete-records.html.
-spec list_data_deletion_jobs(aws_client:aws_client(), list_data_deletion_jobs_request()) ->
    {ok, list_data_deletion_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_data_deletion_jobs_errors(), tuple()}.
list_data_deletion_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_data_deletion_jobs(Client, Input, []).

-spec list_data_deletion_jobs(aws_client:aws_client(), list_data_deletion_jobs_request(), proplists:proplist()) ->
    {ok, list_data_deletion_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_data_deletion_jobs_errors(), tuple()}.
list_data_deletion_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDataDeletionJobs">>, Input, Options).

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
-spec list_dataset_export_jobs(aws_client:aws_client(), list_dataset_export_jobs_request()) ->
    {ok, list_dataset_export_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_dataset_export_jobs_errors(), tuple()}.
list_dataset_export_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_dataset_export_jobs(Client, Input, []).

-spec list_dataset_export_jobs(aws_client:aws_client(), list_dataset_export_jobs_request(), proplists:proplist()) ->
    {ok, list_dataset_export_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_dataset_export_jobs_errors(), tuple()}.
list_dataset_export_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDatasetExportJobs">>, Input, Options).

%% @doc Returns a list of dataset groups.
%%
%% The response provides the properties
%% for each dataset group, including the Amazon Resource Name (ARN). For more
%% information on dataset groups, see CreateDatasetGroup:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_CreateDatasetGroup.html.
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

%% @doc Returns the list of datasets contained in the given dataset group.
%%
%% The
%% response provides the properties for each dataset, including the Amazon
%% Resource Name (ARN). For more information on datasets, see CreateDataset:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_CreateDataset.html.
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

%% @doc Returns the list of event trackers associated with the account.
%%
%% The response provides the properties for each event tracker, including the
%% Amazon Resource
%% Name (ARN) and tracking ID. For more
%% information on event trackers, see CreateEventTracker:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_CreateEventTracker.html.
-spec list_event_trackers(aws_client:aws_client(), list_event_trackers_request()) ->
    {ok, list_event_trackers_response(), tuple()} |
    {error, any()} |
    {error, list_event_trackers_errors(), tuple()}.
list_event_trackers(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_event_trackers(Client, Input, []).

-spec list_event_trackers(aws_client:aws_client(), list_event_trackers_request(), proplists:proplist()) ->
    {ok, list_event_trackers_response(), tuple()} |
    {error, any()} |
    {error, list_event_trackers_errors(), tuple()}.
list_event_trackers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListEventTrackers">>, Input, Options).

%% @doc Lists all filters that belong to a given dataset group.
-spec list_filters(aws_client:aws_client(), list_filters_request()) ->
    {ok, list_filters_response(), tuple()} |
    {error, any()} |
    {error, list_filters_errors(), tuple()}.
list_filters(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_filters(Client, Input, []).

-spec list_filters(aws_client:aws_client(), list_filters_request(), proplists:proplist()) ->
    {ok, list_filters_response(), tuple()} |
    {error, any()} |
    {error, list_filters_errors(), tuple()}.
list_filters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListFilters">>, Input, Options).

%% @doc Lists the metrics for the metric attribution.
-spec list_metric_attribution_metrics(aws_client:aws_client(), list_metric_attribution_metrics_request()) ->
    {ok, list_metric_attribution_metrics_response(), tuple()} |
    {error, any()} |
    {error, list_metric_attribution_metrics_errors(), tuple()}.
list_metric_attribution_metrics(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_metric_attribution_metrics(Client, Input, []).

-spec list_metric_attribution_metrics(aws_client:aws_client(), list_metric_attribution_metrics_request(), proplists:proplist()) ->
    {ok, list_metric_attribution_metrics_response(), tuple()} |
    {error, any()} |
    {error, list_metric_attribution_metrics_errors(), tuple()}.
list_metric_attribution_metrics(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListMetricAttributionMetrics">>, Input, Options).

%% @doc Lists metric attributions.
-spec list_metric_attributions(aws_client:aws_client(), list_metric_attributions_request()) ->
    {ok, list_metric_attributions_response(), tuple()} |
    {error, any()} |
    {error, list_metric_attributions_errors(), tuple()}.
list_metric_attributions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_metric_attributions(Client, Input, []).

-spec list_metric_attributions(aws_client:aws_client(), list_metric_attributions_request(), proplists:proplist()) ->
    {ok, list_metric_attributions_response(), tuple()} |
    {error, any()} |
    {error, list_metric_attributions_errors(), tuple()}.
list_metric_attributions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListMetricAttributions">>, Input, Options).

%% @doc Returns a list of available recipes.
%%
%% The response provides the properties
%% for each recipe, including the recipe's Amazon Resource Name (ARN).
-spec list_recipes(aws_client:aws_client(), list_recipes_request()) ->
    {ok, list_recipes_response(), tuple()} |
    {error, any()} |
    {error, list_recipes_errors(), tuple()}.
list_recipes(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_recipes(Client, Input, []).

-spec list_recipes(aws_client:aws_client(), list_recipes_request(), proplists:proplist()) ->
    {ok, list_recipes_response(), tuple()} |
    {error, any()} |
    {error, list_recipes_errors(), tuple()}.
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
-spec list_recommenders(aws_client:aws_client(), list_recommenders_request()) ->
    {ok, list_recommenders_response(), tuple()} |
    {error, any()} |
    {error, list_recommenders_errors(), tuple()}.
list_recommenders(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_recommenders(Client, Input, []).

-spec list_recommenders(aws_client:aws_client(), list_recommenders_request(), proplists:proplist()) ->
    {ok, list_recommenders_response(), tuple()} |
    {error, any()} |
    {error, list_recommenders_errors(), tuple()}.
list_recommenders(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListRecommenders">>, Input, Options).

%% @doc Returns the list of schemas associated with the account.
%%
%% The response provides the
%% properties for each schema, including the Amazon Resource Name (ARN).
%% For more information on schemas, see CreateSchema:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_CreateSchema.html.
-spec list_schemas(aws_client:aws_client(), list_schemas_request()) ->
    {ok, list_schemas_response(), tuple()} |
    {error, any()} |
    {error, list_schemas_errors(), tuple()}.
list_schemas(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_schemas(Client, Input, []).

-spec list_schemas(aws_client:aws_client(), list_schemas_request(), proplists:proplist()) ->
    {ok, list_schemas_response(), tuple()} |
    {error, any()} |
    {error, list_schemas_errors(), tuple()}.
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
-spec list_solution_versions(aws_client:aws_client(), list_solution_versions_request()) ->
    {ok, list_solution_versions_response(), tuple()} |
    {error, any()} |
    {error, list_solution_versions_errors(), tuple()}.
list_solution_versions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_solution_versions(Client, Input, []).

-spec list_solution_versions(aws_client:aws_client(), list_solution_versions_request(), proplists:proplist()) ->
    {ok, list_solution_versions_response(), tuple()} |
    {error, any()} |
    {error, list_solution_versions_errors(), tuple()}.
list_solution_versions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListSolutionVersions">>, Input, Options).

%% @doc Returns a list of solutions in a given dataset group.
%%
%% When a dataset group is not specified, all the solutions associated with
%% the account are listed.
%% The response provides the properties for each solution, including the
%% Amazon Resource Name (ARN).
%% For more information on solutions, see CreateSolution:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_CreateSolution.html.
-spec list_solutions(aws_client:aws_client(), list_solutions_request()) ->
    {ok, list_solutions_response(), tuple()} |
    {error, any()} |
    {error, list_solutions_errors(), tuple()}.
list_solutions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_solutions(Client, Input, []).

-spec list_solutions(aws_client:aws_client(), list_solutions_request(), proplists:proplist()) ->
    {ok, list_solutions_response(), tuple()} |
    {error, any()} |
    {error, list_solutions_errors(), tuple()}.
list_solutions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListSolutions">>, Input, Options).

%% @doc Get a list of tags:
%% https://docs.aws.amazon.com/personalize/latest/dg/tagging-resources.html
%% attached to a resource.
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

%% @doc Starts a recommender that is INACTIVE.
%%
%% Starting a recommender does not
%% create any new models, but resumes billing and automatic retraining for
%% the recommender.
-spec start_recommender(aws_client:aws_client(), start_recommender_request()) ->
    {ok, start_recommender_response(), tuple()} |
    {error, any()} |
    {error, start_recommender_errors(), tuple()}.
start_recommender(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_recommender(Client, Input, []).

-spec start_recommender(aws_client:aws_client(), start_recommender_request(), proplists:proplist()) ->
    {ok, start_recommender_response(), tuple()} |
    {error, any()} |
    {error, start_recommender_errors(), tuple()}.
start_recommender(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartRecommender">>, Input, Options).

%% @doc Stops a recommender that is ACTIVE.
%%
%% Stopping a recommender halts billing and automatic retraining for the
%% recommender.
-spec stop_recommender(aws_client:aws_client(), stop_recommender_request()) ->
    {ok, stop_recommender_response(), tuple()} |
    {error, any()} |
    {error, stop_recommender_errors(), tuple()}.
stop_recommender(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_recommender(Client, Input, []).

-spec stop_recommender(aws_client:aws_client(), stop_recommender_request(), proplists:proplist()) ->
    {ok, stop_recommender_response(), tuple()} |
    {error, any()} |
    {error, stop_recommender_errors(), tuple()}.
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
-spec stop_solution_version_creation(aws_client:aws_client(), stop_solution_version_creation_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, stop_solution_version_creation_errors(), tuple()}.
stop_solution_version_creation(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_solution_version_creation(Client, Input, []).

-spec stop_solution_version_creation(aws_client:aws_client(), stop_solution_version_creation_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, stop_solution_version_creation_errors(), tuple()}.
stop_solution_version_creation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopSolutionVersionCreation">>, Input, Options).

%% @doc Add a list of tags to a resource.
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

%% @doc Removes the specified tags that are attached to a resource.
%%
%% For more information, see Removing tags from Amazon Personalize resources:
%% https://docs.aws.amazon.com/personalize/latest/dg/tags-remove.html.
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
%% Updates a campaign to deploy a retrained solution version with an existing
%% campaign, change your campaign's `minProvisionedTPS',
%% or modify your campaign's configuration.
%%
%% For example, you can set `enableMetadataWithRecommendations' to true
%% for an existing campaign.
%%
%% To update a campaign to start automatically using the latest solution
%% version, specify the following:
%%
%% For the `SolutionVersionArn' parameter, specify the Amazon Resource
%% Name (ARN) of your solution in
%% `SolutionArn/$LATEST' format.
%%
%% In the `campaignConfig', set `syncWithLatestSolutionVersion' to
%% `true'.
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
-spec update_campaign(aws_client:aws_client(), update_campaign_request()) ->
    {ok, update_campaign_response(), tuple()} |
    {error, any()} |
    {error, update_campaign_errors(), tuple()}.
update_campaign(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_campaign(Client, Input, []).

-spec update_campaign(aws_client:aws_client(), update_campaign_request(), proplists:proplist()) ->
    {ok, update_campaign_response(), tuple()} |
    {error, any()} |
    {error, update_campaign_errors(), tuple()}.
update_campaign(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateCampaign">>, Input, Options).

%% @doc Update a dataset to replace its schema with a new or existing one.
%%
%% For more information, see Replacing a dataset's schema:
%% https://docs.aws.amazon.com/personalize/latest/dg/updating-dataset-schema.html.
-spec update_dataset(aws_client:aws_client(), update_dataset_request()) ->
    {ok, update_dataset_response(), tuple()} |
    {error, any()} |
    {error, update_dataset_errors(), tuple()}.
update_dataset(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_dataset(Client, Input, []).

-spec update_dataset(aws_client:aws_client(), update_dataset_request(), proplists:proplist()) ->
    {ok, update_dataset_response(), tuple()} |
    {error, any()} |
    {error, update_dataset_errors(), tuple()}.
update_dataset(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateDataset">>, Input, Options).

%% @doc Updates a metric attribution.
-spec update_metric_attribution(aws_client:aws_client(), update_metric_attribution_request()) ->
    {ok, update_metric_attribution_response(), tuple()} |
    {error, any()} |
    {error, update_metric_attribution_errors(), tuple()}.
update_metric_attribution(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_metric_attribution(Client, Input, []).

-spec update_metric_attribution(aws_client:aws_client(), update_metric_attribution_request(), proplists:proplist()) ->
    {ok, update_metric_attribution_response(), tuple()} |
    {error, any()} |
    {error, update_metric_attribution_errors(), tuple()}.
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
-spec update_recommender(aws_client:aws_client(), update_recommender_request()) ->
    {ok, update_recommender_response(), tuple()} |
    {error, any()} |
    {error, update_recommender_errors(), tuple()}.
update_recommender(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_recommender(Client, Input, []).

-spec update_recommender(aws_client:aws_client(), update_recommender_request(), proplists:proplist()) ->
    {ok, update_recommender_response(), tuple()} |
    {error, any()} |
    {error, update_recommender_errors(), tuple()}.
update_recommender(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateRecommender">>, Input, Options).

%% @doc Updates an Amazon Personalize solution to use a different automatic
%% training configuration.
%%
%% When you update a solution,
%% you can change whether the solution uses
%% automatic training, and you can change the training frequency. For more
%% information about updating a solution, see
%% Updating a solution:
%% https://docs.aws.amazon.com/personalize/latest/dg/updating-solution.html.
%%
%% A solution update can be in one of the
%% following states:
%%
%% CREATE PENDING &gt; CREATE IN_PROGRESS &gt; ACTIVE -or- CREATE FAILED
%%
%% To get the status of a solution update, call the
%% DescribeSolution:
%% https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeSolution.html
%% API operation and find the status
%% in the `latestSolutionUpdate'.
-spec update_solution(aws_client:aws_client(), update_solution_request()) ->
    {ok, update_solution_response(), tuple()} |
    {error, any()} |
    {error, update_solution_errors(), tuple()}.
update_solution(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_solution(Client, Input, []).

-spec update_solution(aws_client:aws_client(), update_solution_request(), proplists:proplist()) ->
    {ok, update_solution_response(), tuple()} |
    {error, any()} |
    {error, update_solution_errors(), tuple()}.
update_solution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateSolution">>, Input, Options).

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
