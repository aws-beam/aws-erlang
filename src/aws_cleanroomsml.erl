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
%% procedures, and best practices, see the Clean Rooms User Guide:
%% https://docs.aws.amazon.com/clean-rooms/latest/userguide/machine-learning.html.
%%
%% To learn more about SQL commands, functions, and conditions supported in
%% Clean Rooms, see the Clean Rooms SQL Reference:
%% https://docs.aws.amazon.com/clean-rooms/latest/sql-reference/sql-reference.html.
-module(aws_cleanroomsml).

-export([cancel_trained_model/4,
         cancel_trained_model/5,
         cancel_trained_model_inference_job/4,
         cancel_trained_model_inference_job/5,
         create_audience_model/2,
         create_audience_model/3,
         create_configured_audience_model/2,
         create_configured_audience_model/3,
         create_configured_model_algorithm/2,
         create_configured_model_algorithm/3,
         create_configured_model_algorithm_association/3,
         create_configured_model_algorithm_association/4,
         create_ml_input_channel/3,
         create_ml_input_channel/4,
         create_trained_model/3,
         create_trained_model/4,
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
         delete_configured_model_algorithm/3,
         delete_configured_model_algorithm/4,
         delete_configured_model_algorithm_association/4,
         delete_configured_model_algorithm_association/5,
         delete_ml_configuration/3,
         delete_ml_configuration/4,
         delete_ml_input_channel_data/4,
         delete_ml_input_channel_data/5,
         delete_trained_model_output/4,
         delete_trained_model_output/5,
         delete_training_dataset/3,
         delete_training_dataset/4,
         get_audience_generation_job/2,
         get_audience_generation_job/4,
         get_audience_generation_job/5,
         get_audience_model/2,
         get_audience_model/4,
         get_audience_model/5,
         get_collaboration_configured_model_algorithm_association/3,
         get_collaboration_configured_model_algorithm_association/5,
         get_collaboration_configured_model_algorithm_association/6,
         get_collaboration_ml_input_channel/3,
         get_collaboration_ml_input_channel/5,
         get_collaboration_ml_input_channel/6,
         get_collaboration_trained_model/3,
         get_collaboration_trained_model/5,
         get_collaboration_trained_model/6,
         get_configured_audience_model/2,
         get_configured_audience_model/4,
         get_configured_audience_model/5,
         get_configured_audience_model_policy/2,
         get_configured_audience_model_policy/4,
         get_configured_audience_model_policy/5,
         get_configured_model_algorithm/2,
         get_configured_model_algorithm/4,
         get_configured_model_algorithm/5,
         get_configured_model_algorithm_association/3,
         get_configured_model_algorithm_association/5,
         get_configured_model_algorithm_association/6,
         get_ml_configuration/2,
         get_ml_configuration/4,
         get_ml_configuration/5,
         get_ml_input_channel/3,
         get_ml_input_channel/5,
         get_ml_input_channel/6,
         get_trained_model/3,
         get_trained_model/5,
         get_trained_model/6,
         get_trained_model_inference_job/3,
         get_trained_model_inference_job/5,
         get_trained_model_inference_job/6,
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
         list_collaboration_configured_model_algorithm_associations/2,
         list_collaboration_configured_model_algorithm_associations/4,
         list_collaboration_configured_model_algorithm_associations/5,
         list_collaboration_ml_input_channels/2,
         list_collaboration_ml_input_channels/4,
         list_collaboration_ml_input_channels/5,
         list_collaboration_trained_model_export_jobs/3,
         list_collaboration_trained_model_export_jobs/5,
         list_collaboration_trained_model_export_jobs/6,
         list_collaboration_trained_model_inference_jobs/2,
         list_collaboration_trained_model_inference_jobs/4,
         list_collaboration_trained_model_inference_jobs/5,
         list_collaboration_trained_models/2,
         list_collaboration_trained_models/4,
         list_collaboration_trained_models/5,
         list_configured_audience_models/1,
         list_configured_audience_models/3,
         list_configured_audience_models/4,
         list_configured_model_algorithm_associations/2,
         list_configured_model_algorithm_associations/4,
         list_configured_model_algorithm_associations/5,
         list_configured_model_algorithms/1,
         list_configured_model_algorithms/3,
         list_configured_model_algorithms/4,
         list_ml_input_channels/2,
         list_ml_input_channels/4,
         list_ml_input_channels/5,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         list_trained_model_inference_jobs/2,
         list_trained_model_inference_jobs/4,
         list_trained_model_inference_jobs/5,
         list_trained_model_versions/3,
         list_trained_model_versions/5,
         list_trained_model_versions/6,
         list_trained_models/2,
         list_trained_models/4,
         list_trained_models/5,
         list_training_datasets/1,
         list_training_datasets/3,
         list_training_datasets/4,
         put_configured_audience_model_policy/3,
         put_configured_audience_model_policy/4,
         put_ml_configuration/3,
         put_ml_configuration/4,
         start_audience_export_job/2,
         start_audience_export_job/3,
         start_audience_generation_job/2,
         start_audience_generation_job/3,
         start_trained_model_export_job/4,
         start_trained_model_export_job/5,
         start_trained_model_inference_job/3,
         start_trained_model_inference_job/4,
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
%% list_trained_model_inference_jobs_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"trainedModelArn">> => string(),
%%   <<"trainedModelVersionIdentifier">> => string()
%% }
-type list_trained_model_inference_jobs_request() :: #{binary() => any()}.


%% Example:
%% trained_model_summary() :: #{
%%   <<"collaborationIdentifier">> => string(),
%%   <<"configuredModelAlgorithmAssociationArn">> => string(),
%%   <<"createTime">> => [non_neg_integer()],
%%   <<"description">> => string(),
%%   <<"incrementalTrainingDataChannels">> => list(incremental_training_data_channel_output()),
%%   <<"membershipIdentifier">> => string(),
%%   <<"name">> => string(),
%%   <<"status">> => list(any()),
%%   <<"trainedModelArn">> => string(),
%%   <<"updateTime">> => [non_neg_integer()],
%%   <<"versionIdentifier">> => string()
%% }
-type trained_model_summary() :: #{binary() => any()}.


%% Example:
%% start_trained_model_inference_job_response() :: #{
%%   <<"trainedModelInferenceJobArn">> => string()
%% }
-type start_trained_model_inference_job_response() :: #{binary() => any()}.


%% Example:
%% list_configured_model_algorithm_associations_response() :: #{
%%   <<"configuredModelAlgorithmAssociations">> => list(configured_model_algorithm_association_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_configured_model_algorithm_associations_response() :: #{binary() => any()}.


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
%%   <<"relevanceMetrics">> => list(relevance_metric())
%% }
-type audience_quality_metrics() :: #{binary() => any()}.


%% Example:
%% start_audience_generation_job_response() :: #{
%%   <<"audienceGenerationJobArn">> => string()
%% }
-type start_audience_generation_job_response() :: #{binary() => any()}.


%% Example:
%% trained_model_exports_max_size() :: #{
%%   <<"unit">> => list(any()),
%%   <<"value">> => float()
%% }
-type trained_model_exports_max_size() :: #{binary() => any()}.


%% Example:
%% get_configured_model_algorithm_association_response() :: #{
%%   <<"collaborationIdentifier">> => string(),
%%   <<"configuredModelAlgorithmArn">> => string(),
%%   <<"configuredModelAlgorithmAssociationArn">> => string(),
%%   <<"createTime">> => [non_neg_integer()],
%%   <<"description">> => string(),
%%   <<"membershipIdentifier">> => string(),
%%   <<"name">> => string(),
%%   <<"privacyConfiguration">> => privacy_configuration(),
%%   <<"tags">> => map(),
%%   <<"updateTime">> => [non_neg_integer()]
%% }
-type get_configured_model_algorithm_association_response() :: #{binary() => any()}.


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
%%   <<"protectedQueryIdentifier">> => [string()],
%%   <<"seedAudience">> => audience_generation_job_data_source(),
%%   <<"startedBy">> => string(),
%%   <<"status">> => list(any()),
%%   <<"statusDetails">> => status_details(),
%%   <<"tags">> => map(),
%%   <<"updateTime">> => [non_neg_integer()]
%% }
-type get_audience_generation_job_response() :: #{binary() => any()}.


%% Example:
%% list_configured_model_algorithms_response() :: #{
%%   <<"configuredModelAlgorithms">> => list(configured_model_algorithm_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_configured_model_algorithms_response() :: #{binary() => any()}.


%% Example:
%% create_ml_input_channel_request() :: #{
%%   <<"configuredModelAlgorithmAssociations">> := list(string()),
%%   <<"description">> => string(),
%%   <<"inputChannel">> := input_channel(),
%%   <<"kmsKeyArn">> => string(),
%%   <<"name">> := string(),
%%   <<"retentionInDays">> := [integer()],
%%   <<"tags">> => map()
%% }
-type create_ml_input_channel_request() :: #{binary() => any()}.


%% Example:
%% get_trained_model_request() :: #{
%%   <<"versionIdentifier">> => string()
%% }
-type get_trained_model_request() :: #{binary() => any()}.


%% Example:
%% access_budget() :: #{
%%   <<"aggregateRemainingBudget">> => integer(),
%%   <<"details">> => list(access_budget_details()),
%%   <<"resourceArn">> => string()
%% }
-type access_budget() :: #{binary() => any()}.


%% Example:
%% log_redaction_configuration() :: #{
%%   <<"customEntityConfig">> => custom_entity_config(),
%%   <<"entitiesToRedact">> => list(list(any())())
%% }
-type log_redaction_configuration() :: #{binary() => any()}.


%% Example:
%% get_training_dataset_response() :: #{
%%   <<"createTime">> => [non_neg_integer()],
%%   <<"description">> => string(),
%%   <<"name">> => string(),
%%   <<"roleArn">> => string(),
%%   <<"status">> => list(any()),
%%   <<"tags">> => map(),
%%   <<"trainingData">> => list(dataset()),
%%   <<"trainingDatasetArn">> => string(),
%%   <<"updateTime">> => [non_neg_integer()]
%% }
-type get_training_dataset_response() :: #{binary() => any()}.


%% Example:
%% trained_models_configuration_policy() :: #{
%%   <<"containerLogs">> => list(logs_configuration_policy()),
%%   <<"containerMetrics">> => metrics_configuration_policy(),
%%   <<"maxArtifactSize">> => trained_model_artifact_max_size()
%% }
-type trained_models_configuration_policy() :: #{binary() => any()}.


%% Example:
%% trained_model_inference_job_summary() :: #{
%%   <<"collaborationIdentifier">> => string(),
%%   <<"configuredModelAlgorithmAssociationArn">> => string(),
%%   <<"createTime">> => [non_neg_integer()],
%%   <<"description">> => string(),
%%   <<"logsStatus">> => list(any()),
%%   <<"logsStatusDetails">> => [string()],
%%   <<"membershipIdentifier">> => string(),
%%   <<"metricsStatus">> => list(any()),
%%   <<"metricsStatusDetails">> => [string()],
%%   <<"name">> => string(),
%%   <<"outputConfiguration">> => inference_output_configuration(),
%%   <<"status">> => list(any()),
%%   <<"trainedModelArn">> => string(),
%%   <<"trainedModelInferenceJobArn">> => string(),
%%   <<"trainedModelVersionIdentifier">> => string(),
%%   <<"updateTime">> => [non_neg_integer()]
%% }
-type trained_model_inference_job_summary() :: #{binary() => any()}.


%% Example:
%% create_configured_audience_model_response() :: #{
%%   <<"configuredAudienceModelArn">> => string()
%% }
-type create_configured_audience_model_response() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% trained_model_export_receiver_member() :: #{
%%   <<"accountId">> => string()
%% }
-type trained_model_export_receiver_member() :: #{binary() => any()}.


%% Example:
%% inference_output_configuration() :: #{
%%   <<"accept">> => [string()],
%%   <<"members">> => list(inference_receiver_member())
%% }
-type inference_output_configuration() :: #{binary() => any()}.


%% Example:
%% protected_query_input_parameters() :: #{
%%   <<"computeConfiguration">> => list(),
%%   <<"resultFormat">> => list(any()),
%%   <<"sqlParameters">> => protected_query_s_q_l_parameters()
%% }
-type protected_query_input_parameters() :: #{binary() => any()}.


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
%% get_configured_model_algorithm_association_request() :: #{}
-type get_configured_model_algorithm_association_request() :: #{}.


%% Example:
%% create_configured_model_algorithm_association_request() :: #{
%%   <<"configuredModelAlgorithmArn">> := string(),
%%   <<"description">> => string(),
%%   <<"name">> := string(),
%%   <<"privacyConfiguration">> => privacy_configuration(),
%%   <<"tags">> => map()
%% }
-type create_configured_model_algorithm_association_request() :: #{binary() => any()}.


%% Example:
%% put_ml_configuration_request() :: #{
%%   <<"defaultOutputLocation">> := ml_output_configuration()
%% }
-type put_ml_configuration_request() :: #{binary() => any()}.

%% Example:
%% get_training_dataset_request() :: #{}
-type get_training_dataset_request() :: #{}.


%% Example:
%% get_ml_input_channel_response() :: #{
%%   <<"collaborationIdentifier">> => string(),
%%   <<"configuredModelAlgorithmAssociations">> => list(string()),
%%   <<"createTime">> => [non_neg_integer()],
%%   <<"description">> => string(),
%%   <<"inputChannel">> => input_channel(),
%%   <<"kmsKeyArn">> => string(),
%%   <<"membershipIdentifier">> => string(),
%%   <<"mlInputChannelArn">> => string(),
%%   <<"name">> => string(),
%%   <<"numberOfFiles">> => [float()],
%%   <<"numberOfRecords">> => [float()],
%%   <<"privacyBudgets">> => list(),
%%   <<"protectedQueryIdentifier">> => string(),
%%   <<"retentionInDays">> => [integer()],
%%   <<"sizeInGb">> => [float()],
%%   <<"status">> => list(any()),
%%   <<"statusDetails">> => status_details(),
%%   <<"tags">> => map(),
%%   <<"updateTime">> => [non_neg_integer()]
%% }
-type get_ml_input_channel_response() :: #{binary() => any()}.

%% Example:
%% get_ml_configuration_request() :: #{}
-type get_ml_configuration_request() :: #{}.


%% Example:
%% list_ml_input_channels_response() :: #{
%%   <<"mlInputChannelsList">> => list(ml_input_channel_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_ml_input_channels_response() :: #{binary() => any()}.


%% Example:
%% relevance_metric() :: #{
%%   <<"audienceSize">> => audience_size(),
%%   <<"score">> => [float()]
%% }
-type relevance_metric() :: #{binary() => any()}.


%% Example:
%% get_collaboration_trained_model_response() :: #{
%%   <<"collaborationIdentifier">> => string(),
%%   <<"configuredModelAlgorithmAssociationArn">> => string(),
%%   <<"createTime">> => [non_neg_integer()],
%%   <<"creatorAccountId">> => string(),
%%   <<"description">> => string(),
%%   <<"incrementalTrainingDataChannels">> => list(incremental_training_data_channel_output()),
%%   <<"logsStatus">> => list(any()),
%%   <<"logsStatusDetails">> => [string()],
%%   <<"membershipIdentifier">> => string(),
%%   <<"metricsStatus">> => list(any()),
%%   <<"metricsStatusDetails">> => [string()],
%%   <<"name">> => string(),
%%   <<"resourceConfig">> => resource_config(),
%%   <<"status">> => list(any()),
%%   <<"statusDetails">> => status_details(),
%%   <<"stoppingCondition">> => stopping_condition(),
%%   <<"trainedModelArn">> => string(),
%%   <<"trainingContainerImageDigest">> => [string()],
%%   <<"trainingInputMode">> => list(any()),
%%   <<"updateTime">> => [non_neg_integer()],
%%   <<"versionIdentifier">> => string()
%% }
-type get_collaboration_trained_model_response() :: #{binary() => any()}.


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
%% collaboration_ml_input_channel_summary() :: #{
%%   <<"collaborationIdentifier">> => string(),
%%   <<"configuredModelAlgorithmAssociations">> => list(string()),
%%   <<"createTime">> => [non_neg_integer()],
%%   <<"creatorAccountId">> => string(),
%%   <<"description">> => string(),
%%   <<"membershipIdentifier">> => string(),
%%   <<"mlInputChannelArn">> => string(),
%%   <<"name">> => string(),
%%   <<"status">> => list(any()),
%%   <<"updateTime">> => [non_neg_integer()]
%% }
-type collaboration_ml_input_channel_summary() :: #{binary() => any()}.


%% Example:
%% ml_input_channel_summary() :: #{
%%   <<"collaborationIdentifier">> => string(),
%%   <<"configuredModelAlgorithmAssociations">> => list(string()),
%%   <<"createTime">> => [non_neg_integer()],
%%   <<"description">> => string(),
%%   <<"membershipIdentifier">> => string(),
%%   <<"mlInputChannelArn">> => string(),
%%   <<"name">> => string(),
%%   <<"protectedQueryIdentifier">> => string(),
%%   <<"status">> => list(any()),
%%   <<"updateTime">> => [non_neg_integer()]
%% }
-type ml_input_channel_summary() :: #{binary() => any()}.


%% Example:
%% create_configured_model_algorithm_association_response() :: #{
%%   <<"configuredModelAlgorithmAssociationArn">> => string()
%% }
-type create_configured_model_algorithm_association_response() :: #{binary() => any()}.


%% Example:
%% metric_definition() :: #{
%%   <<"name">> => string(),
%%   <<"regex">> => string()
%% }
-type metric_definition() :: #{binary() => any()}.

%% Example:
%% delete_configured_audience_model_request() :: #{}
-type delete_configured_audience_model_request() :: #{}.

%% Example:
%% get_ml_input_channel_request() :: #{}
-type get_ml_input_channel_request() :: #{}.


%% Example:
%% list_collaboration_trained_model_export_jobs_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"trainedModelVersionIdentifier">> => string()
%% }
-type list_collaboration_trained_model_export_jobs_request() :: #{binary() => any()}.


%% Example:
%% internal_service_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type internal_service_exception() :: #{binary() => any()}.


%% Example:
%% list_collaboration_configured_model_algorithm_associations_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_collaboration_configured_model_algorithm_associations_request() :: #{binary() => any()}.


%% Example:
%% get_trained_model_response() :: #{
%%   <<"collaborationIdentifier">> => string(),
%%   <<"configuredModelAlgorithmAssociationArn">> => string(),
%%   <<"createTime">> => [non_neg_integer()],
%%   <<"dataChannels">> => list(model_training_data_channel()),
%%   <<"description">> => string(),
%%   <<"environment">> => map(),
%%   <<"hyperparameters">> => map(),
%%   <<"incrementalTrainingDataChannels">> => list(incremental_training_data_channel_output()),
%%   <<"kmsKeyArn">> => string(),
%%   <<"logsStatus">> => list(any()),
%%   <<"logsStatusDetails">> => [string()],
%%   <<"membershipIdentifier">> => string(),
%%   <<"metricsStatus">> => list(any()),
%%   <<"metricsStatusDetails">> => [string()],
%%   <<"name">> => string(),
%%   <<"resourceConfig">> => resource_config(),
%%   <<"status">> => list(any()),
%%   <<"statusDetails">> => status_details(),
%%   <<"stoppingCondition">> => stopping_condition(),
%%   <<"tags">> => map(),
%%   <<"trainedModelArn">> => string(),
%%   <<"trainingContainerImageDigest">> => [string()],
%%   <<"trainingInputMode">> => list(any()),
%%   <<"updateTime">> => [non_neg_integer()],
%%   <<"versionIdentifier">> => string()
%% }
-type get_trained_model_response() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"tagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% collaboration_trained_model_export_job_summary() :: #{
%%   <<"collaborationIdentifier">> => string(),
%%   <<"createTime">> => [non_neg_integer()],
%%   <<"creatorAccountId">> => string(),
%%   <<"description">> => string(),
%%   <<"membershipIdentifier">> => string(),
%%   <<"name">> => string(),
%%   <<"outputConfiguration">> => trained_model_export_output_configuration(),
%%   <<"status">> => list(any()),
%%   <<"statusDetails">> => status_details(),
%%   <<"trainedModelArn">> => string(),
%%   <<"trainedModelVersionIdentifier">> => string(),
%%   <<"updateTime">> => [non_neg_integer()]
%% }
-type collaboration_trained_model_export_job_summary() :: #{binary() => any()}.


%% Example:
%% list_trained_model_versions_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"trainedModels">> => list(trained_model_summary())
%% }
-type list_trained_model_versions_response() :: #{binary() => any()}.


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
%% list_ml_input_channels_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_ml_input_channels_request() :: #{binary() => any()}.


%% Example:
%% create_configured_model_algorithm_request() :: #{
%%   <<"description">> => string(),
%%   <<"inferenceContainerConfig">> => inference_container_config(),
%%   <<"kmsKeyArn">> => string(),
%%   <<"name">> := string(),
%%   <<"roleArn">> := string(),
%%   <<"tags">> => map(),
%%   <<"trainingContainerConfig">> => container_config()
%% }
-type create_configured_model_algorithm_request() :: #{binary() => any()}.


%% Example:
%% list_audience_models_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_audience_models_request() :: #{binary() => any()}.


%% Example:
%% list_collaboration_ml_input_channels_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_collaboration_ml_input_channels_request() :: #{binary() => any()}.


%% Example:
%% dataset() :: #{
%%   <<"inputConfig">> => dataset_input_config(),
%%   <<"type">> => list(any())
%% }
-type dataset() :: #{binary() => any()}.


%% Example:
%% metrics_configuration_policy() :: #{
%%   <<"noiseLevel">> => list(any())
%% }
-type metrics_configuration_policy() :: #{binary() => any()}.


%% Example:
%% custom_entity_config() :: #{
%%   <<"customDataIdentifiers">> => list(string())
%% }
-type custom_entity_config() :: #{binary() => any()}.


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
%% model_training_data_channel() :: #{
%%   <<"channelName">> => string(),
%%   <<"mlInputChannelArn">> => string(),
%%   <<"s3DataDistributionType">> => list(any())
%% }
-type model_training_data_channel() :: #{binary() => any()}.


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
%% trained_model_inference_jobs_configuration_policy() :: #{
%%   <<"containerLogs">> => list(logs_configuration_policy()),
%%   <<"maxOutputSize">> => trained_model_inference_max_output_size()
%% }
-type trained_model_inference_jobs_configuration_policy() :: #{binary() => any()}.


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
%% container_config() :: #{
%%   <<"arguments">> => list(string()),
%%   <<"entrypoint">> => list(string()),
%%   <<"imageUri">> => string(),
%%   <<"metricDefinitions">> => list(metric_definition())
%% }
-type container_config() :: #{binary() => any()}.

%% Example:
%% get_audience_model_request() :: #{}
-type get_audience_model_request() :: #{}.


%% Example:
%% list_trained_model_inference_jobs_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"trainedModelInferenceJobs">> => list(trained_model_inference_job_summary())
%% }
-type list_trained_model_inference_jobs_response() :: #{binary() => any()}.


%% Example:
%% configured_audience_model_output_config() :: #{
%%   <<"destination">> => audience_destination(),
%%   <<"roleArn">> => string()
%% }
-type configured_audience_model_output_config() :: #{binary() => any()}.

%% Example:
%% get_collaboration_configured_model_algorithm_association_request() :: #{}
-type get_collaboration_configured_model_algorithm_association_request() :: #{}.


%% Example:
%% configured_model_algorithm_summary() :: #{
%%   <<"configuredModelAlgorithmArn">> => string(),
%%   <<"createTime">> => [non_neg_integer()],
%%   <<"description">> => string(),
%%   <<"name">> => string(),
%%   <<"updateTime">> => [non_neg_integer()]
%% }
-type configured_model_algorithm_summary() :: #{binary() => any()}.


%% Example:
%% incremental_training_data_channel() :: #{
%%   <<"channelName">> => string(),
%%   <<"trainedModelArn">> => string(),
%%   <<"versionIdentifier">> => string()
%% }
-type incremental_training_data_channel() :: #{binary() => any()}.


%% Example:
%% trained_model_inference_max_output_size() :: #{
%%   <<"unit">> => list(any()),
%%   <<"value">> => float()
%% }
-type trained_model_inference_max_output_size() :: #{binary() => any()}.


%% Example:
%% get_collaboration_trained_model_request() :: #{
%%   <<"versionIdentifier">> => string()
%% }
-type get_collaboration_trained_model_request() :: #{binary() => any()}.


%% Example:
%% inference_resource_config() :: #{
%%   <<"instanceCount">> => [integer()],
%%   <<"instanceType">> => list(any())
%% }
-type inference_resource_config() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"quotaName">> => [string()],
%%   <<"quotaValue">> => [float()]
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
%% ml_output_configuration() :: #{
%%   <<"destination">> => destination(),
%%   <<"roleArn">> => string()
%% }
-type ml_output_configuration() :: #{binary() => any()}.

%% Example:
%% delete_audience_generation_job_request() :: #{}
-type delete_audience_generation_job_request() :: #{}.


%% Example:
%% get_ml_configuration_response() :: #{
%%   <<"createTime">> => [non_neg_integer()],
%%   <<"defaultOutputLocation">> => ml_output_configuration(),
%%   <<"membershipIdentifier">> => string(),
%%   <<"updateTime">> => [non_neg_integer()]
%% }
-type get_ml_configuration_response() :: #{binary() => any()}.


%% Example:
%% stopping_condition() :: #{
%%   <<"maxRuntimeInSeconds">> => [integer()]
%% }
-type stopping_condition() :: #{binary() => any()}.


%% Example:
%% list_collaboration_trained_model_export_jobs_response() :: #{
%%   <<"collaborationTrainedModelExportJobs">> => list(collaboration_trained_model_export_job_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_collaboration_trained_model_export_jobs_response() :: #{binary() => any()}.


%% Example:
%% create_trained_model_request() :: #{
%%   <<"configuredModelAlgorithmAssociationArn">> := string(),
%%   <<"dataChannels">> := list(model_training_data_channel()),
%%   <<"description">> => string(),
%%   <<"environment">> => map(),
%%   <<"hyperparameters">> => map(),
%%   <<"incrementalTrainingDataChannels">> => list(incremental_training_data_channel()),
%%   <<"kmsKeyArn">> => string(),
%%   <<"name">> := string(),
%%   <<"resourceConfig">> := resource_config(),
%%   <<"stoppingCondition">> => stopping_condition(),
%%   <<"tags">> => map(),
%%   <<"trainingInputMode">> => list(any())
%% }
-type create_trained_model_request() :: #{binary() => any()}.


%% Example:
%% list_training_datasets_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"trainingDatasets">> => list(training_dataset_summary())
%% }
-type list_training_datasets_response() :: #{binary() => any()}.


%% Example:
%% collaboration_trained_model_summary() :: #{
%%   <<"collaborationIdentifier">> => string(),
%%   <<"configuredModelAlgorithmAssociationArn">> => string(),
%%   <<"createTime">> => [non_neg_integer()],
%%   <<"creatorAccountId">> => string(),
%%   <<"description">> => string(),
%%   <<"incrementalTrainingDataChannels">> => list(incremental_training_data_channel_output()),
%%   <<"membershipIdentifier">> => string(),
%%   <<"name">> => string(),
%%   <<"status">> => list(any()),
%%   <<"trainedModelArn">> => string(),
%%   <<"updateTime">> => [non_neg_integer()],
%%   <<"versionIdentifier">> => string()
%% }
-type collaboration_trained_model_summary() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% inference_container_config() :: #{
%%   <<"imageUri">> => string()
%% }
-type inference_container_config() :: #{binary() => any()}.


%% Example:
%% list_configured_model_algorithms_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_configured_model_algorithms_request() :: #{binary() => any()}.


%% Example:
%% configured_model_algorithm_association_summary() :: #{
%%   <<"collaborationIdentifier">> => string(),
%%   <<"configuredModelAlgorithmArn">> => string(),
%%   <<"configuredModelAlgorithmAssociationArn">> => string(),
%%   <<"createTime">> => [non_neg_integer()],
%%   <<"description">> => string(),
%%   <<"membershipIdentifier">> => string(),
%%   <<"name">> => string(),
%%   <<"updateTime">> => [non_neg_integer()]
%% }
-type configured_model_algorithm_association_summary() :: #{binary() => any()}.


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
%% trained_model_exports_configuration_policy() :: #{
%%   <<"filesToExport">> => list(list(any())()),
%%   <<"maxSize">> => trained_model_exports_max_size()
%% }
-type trained_model_exports_configuration_policy() :: #{binary() => any()}.


%% Example:
%% list_configured_model_algorithm_associations_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_configured_model_algorithm_associations_request() :: #{binary() => any()}.


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
%% privacy_configuration() :: #{
%%   <<"policies">> => privacy_configuration_policies()
%% }
-type privacy_configuration() :: #{binary() => any()}.


%% Example:
%% start_trained_model_inference_job_request() :: #{
%%   <<"configuredModelAlgorithmAssociationArn">> => string(),
%%   <<"containerExecutionParameters">> => inference_container_execution_parameters(),
%%   <<"dataSource">> := model_inference_data_source(),
%%   <<"description">> => string(),
%%   <<"environment">> => map(),
%%   <<"kmsKeyArn">> => string(),
%%   <<"name">> := string(),
%%   <<"outputConfiguration">> := inference_output_configuration(),
%%   <<"resourceConfig">> := inference_resource_config(),
%%   <<"tags">> => map(),
%%   <<"trainedModelArn">> := string(),
%%   <<"trainedModelVersionIdentifier">> => string()
%% }
-type start_trained_model_inference_job_request() :: #{binary() => any()}.


%% Example:
%% trained_model_artifact_max_size() :: #{
%%   <<"unit">> => list(any()),
%%   <<"value">> => float()
%% }
-type trained_model_artifact_max_size() :: #{binary() => any()}.


%% Example:
%% inference_receiver_member() :: #{
%%   <<"accountId">> => string()
%% }
-type inference_receiver_member() :: #{binary() => any()}.


%% Example:
%% collaboration_configured_model_algorithm_association_summary() :: #{
%%   <<"collaborationIdentifier">> => string(),
%%   <<"configuredModelAlgorithmArn">> => string(),
%%   <<"configuredModelAlgorithmAssociationArn">> => string(),
%%   <<"createTime">> => [non_neg_integer()],
%%   <<"creatorAccountId">> => string(),
%%   <<"description">> => string(),
%%   <<"membershipIdentifier">> => string(),
%%   <<"name">> => string(),
%%   <<"updateTime">> => [non_neg_integer()]
%% }
-type collaboration_configured_model_algorithm_association_summary() :: #{binary() => any()}.


%% Example:
%% create_ml_input_channel_response() :: #{
%%   <<"mlInputChannelArn">> => string()
%% }
-type create_ml_input_channel_response() :: #{binary() => any()}.

%% Example:
%% get_trained_model_inference_job_request() :: #{}
-type get_trained_model_inference_job_request() :: #{}.


%% Example:
%% list_configured_audience_models_response() :: #{
%%   <<"configuredAudienceModels">> => list(configured_audience_model_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_configured_audience_models_response() :: #{binary() => any()}.


%% Example:
%% resource_config() :: #{
%%   <<"instanceCount">> => [integer()],
%%   <<"instanceType">> => list(any()),
%%   <<"volumeSizeInGB">> => [integer()]
%% }
-type resource_config() :: #{binary() => any()}.


%% Example:
%% get_collaboration_configured_model_algorithm_association_response() :: #{
%%   <<"collaborationIdentifier">> => string(),
%%   <<"configuredModelAlgorithmArn">> => string(),
%%   <<"configuredModelAlgorithmAssociationArn">> => string(),
%%   <<"createTime">> => [non_neg_integer()],
%%   <<"creatorAccountId">> => string(),
%%   <<"description">> => string(),
%%   <<"membershipIdentifier">> => string(),
%%   <<"name">> => string(),
%%   <<"privacyConfiguration">> => privacy_configuration(),
%%   <<"updateTime">> => [non_neg_integer()]
%% }
-type get_collaboration_configured_model_algorithm_association_response() :: #{binary() => any()}.


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
%%   <<"audienceExportJobs">> => list(audience_export_job_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_audience_export_jobs_response() :: #{binary() => any()}.


%% Example:
%% incremental_training_data_channel_output() :: #{
%%   <<"channelName">> => string(),
%%   <<"modelName">> => string(),
%%   <<"versionIdentifier">> => string()
%% }
-type incremental_training_data_channel_output() :: #{binary() => any()}.

%% Example:
%% delete_ml_input_channel_data_request() :: #{}
-type delete_ml_input_channel_data_request() :: #{}.


%% Example:
%% list_trained_models_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"trainedModels">> => list(trained_model_summary())
%% }
-type list_trained_models_response() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% logs_configuration_policy() :: #{
%%   <<"allowedAccountIds">> => list([string()]()),
%%   <<"filterPattern">> => [string()],
%%   <<"logRedactionConfiguration">> => log_redaction_configuration(),
%%   <<"logType">> => list(any())
%% }
-type logs_configuration_policy() :: #{binary() => any()}.


%% Example:
%% create_trained_model_response() :: #{
%%   <<"trainedModelArn">> => string(),
%%   <<"versionIdentifier">> => string()
%% }
-type create_trained_model_response() :: #{binary() => any()}.


%% Example:
%% start_trained_model_export_job_request() :: #{
%%   <<"description">> => string(),
%%   <<"name">> := string(),
%%   <<"outputConfiguration">> := trained_model_export_output_configuration(),
%%   <<"trainedModelVersionIdentifier">> => string()
%% }
-type start_trained_model_export_job_request() :: #{binary() => any()}.


%% Example:
%% worker_compute_configuration() :: #{
%%   <<"number">> => [integer()],
%%   <<"type">> => list(any())
%% }
-type worker_compute_configuration() :: #{binary() => any()}.

%% Example:
%% get_configured_audience_model_request() :: #{}
-type get_configured_audience_model_request() :: #{}.


%% Example:
%% input_channel() :: #{
%%   <<"dataSource">> => list(),
%%   <<"roleArn">> => string()
%% }
-type input_channel() :: #{binary() => any()}.

%% Example:
%% cancel_trained_model_inference_job_request() :: #{}
-type cancel_trained_model_inference_job_request() :: #{}.


%% Example:
%% cancel_trained_model_request() :: #{
%%   <<"versionIdentifier">> => string()
%% }
-type cancel_trained_model_request() :: #{binary() => any()}.


%% Example:
%% list_trained_model_versions_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"status">> => list(any())
%% }
-type list_trained_model_versions_request() :: #{binary() => any()}.


%% Example:
%% list_collaboration_trained_models_response() :: #{
%%   <<"collaborationTrainedModels">> => list(collaboration_trained_model_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_collaboration_trained_models_response() :: #{binary() => any()}.


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
%% list_collaboration_trained_models_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_collaboration_trained_models_request() :: #{binary() => any()}.


%% Example:
%% destination() :: #{
%%   <<"s3Destination">> => s3_config_map()
%% }
-type destination() :: #{binary() => any()}.


%% Example:
%% get_configured_audience_model_policy_response() :: #{
%%   <<"configuredAudienceModelArn">> => string(),
%%   <<"configuredAudienceModelPolicy">> => string(),
%%   <<"policyHash">> => string()
%% }
-type get_configured_audience_model_policy_response() :: #{binary() => any()}.


%% Example:
%% list_collaboration_ml_input_channels_response() :: #{
%%   <<"collaborationMLInputChannelsList">> => list(collaboration_ml_input_channel_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_collaboration_ml_input_channels_response() :: #{binary() => any()}.


%% Example:
%% privacy_configuration_policies() :: #{
%%   <<"trainedModelExports">> => trained_model_exports_configuration_policy(),
%%   <<"trainedModelInferenceJobs">> => trained_model_inference_jobs_configuration_policy(),
%%   <<"trainedModels">> => trained_models_configuration_policy()
%% }
-type privacy_configuration_policies() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% glue_data_source() :: #{
%%   <<"catalogId">> => string(),
%%   <<"databaseName">> => string(),
%%   <<"tableName">> => string()
%% }
-type glue_data_source() :: #{binary() => any()}.


%% Example:
%% protected_query_s_q_l_parameters() :: #{
%%   <<"analysisTemplateArn">> => string(),
%%   <<"parameters">> => map(),
%%   <<"queryString">> => [string()]
%% }
-type protected_query_s_q_l_parameters() :: #{binary() => any()}.


%% Example:
%% collaboration_trained_model_inference_job_summary() :: #{
%%   <<"collaborationIdentifier">> => string(),
%%   <<"configuredModelAlgorithmAssociationArn">> => string(),
%%   <<"createTime">> => [non_neg_integer()],
%%   <<"creatorAccountId">> => string(),
%%   <<"description">> => string(),
%%   <<"logsStatus">> => list(any()),
%%   <<"logsStatusDetails">> => [string()],
%%   <<"membershipIdentifier">> => string(),
%%   <<"metricsStatus">> => list(any()),
%%   <<"metricsStatusDetails">> => [string()],
%%   <<"name">> => string(),
%%   <<"outputConfiguration">> => inference_output_configuration(),
%%   <<"status">> => list(any()),
%%   <<"trainedModelArn">> => string(),
%%   <<"trainedModelInferenceJobArn">> => string(),
%%   <<"trainedModelVersionIdentifier">> => string(),
%%   <<"updateTime">> => [non_neg_integer()]
%% }
-type collaboration_trained_model_inference_job_summary() :: #{binary() => any()}.

%% Example:
%% delete_ml_configuration_request() :: #{}
-type delete_ml_configuration_request() :: #{}.


%% Example:
%% put_configured_audience_model_policy_response() :: #{
%%   <<"configuredAudienceModelPolicy">> => string(),
%%   <<"policyHash">> => string()
%% }
-type put_configured_audience_model_policy_response() :: #{binary() => any()}.


%% Example:
%% get_collaboration_ml_input_channel_response() :: #{
%%   <<"collaborationIdentifier">> => string(),
%%   <<"configuredModelAlgorithmAssociations">> => list(string()),
%%   <<"createTime">> => [non_neg_integer()],
%%   <<"creatorAccountId">> => string(),
%%   <<"description">> => string(),
%%   <<"membershipIdentifier">> => string(),
%%   <<"mlInputChannelArn">> => string(),
%%   <<"name">> => string(),
%%   <<"numberOfRecords">> => [float()],
%%   <<"privacyBudgets">> => list(),
%%   <<"retentionInDays">> => [integer()],
%%   <<"status">> => list(any()),
%%   <<"statusDetails">> => status_details(),
%%   <<"updateTime">> => [non_neg_integer()]
%% }
-type get_collaboration_ml_input_channel_response() :: #{binary() => any()}.

%% Example:
%% get_configured_model_algorithm_request() :: #{}
-type get_configured_model_algorithm_request() :: #{}.


%% Example:
%% model_inference_data_source() :: #{
%%   <<"mlInputChannelArn">> => string()
%% }
-type model_inference_data_source() :: #{binary() => any()}.


%% Example:
%% create_training_dataset_request() :: #{
%%   <<"description">> => string(),
%%   <<"name">> := string(),
%%   <<"roleArn">> := string(),
%%   <<"tags">> => map(),
%%   <<"trainingData">> := list(dataset())
%% }
-type create_training_dataset_request() :: #{binary() => any()}.

%% Example:
%% delete_configured_model_algorithm_association_request() :: #{}
-type delete_configured_model_algorithm_association_request() :: #{}.


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
%% list_collaboration_trained_model_inference_jobs_response() :: #{
%%   <<"collaborationTrainedModelInferenceJobs">> => list(collaboration_trained_model_inference_job_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_collaboration_trained_model_inference_jobs_response() :: #{binary() => any()}.


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
%% delete_configured_model_algorithm_request() :: #{}
-type delete_configured_model_algorithm_request() :: #{}.


%% Example:
%% dataset_input_config() :: #{
%%   <<"dataSource">> => data_source(),
%%   <<"schema">> => list(column_schema())
%% }
-type dataset_input_config() :: #{binary() => any()}.


%% Example:
%% create_configured_model_algorithm_response() :: #{
%%   <<"configuredModelAlgorithmArn">> => string()
%% }
-type create_configured_model_algorithm_response() :: #{binary() => any()}.


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
%%   <<"audienceSizeBins">> => list(integer()),
%%   <<"audienceSizeType">> => list(any())
%% }
-type audience_size_config() :: #{binary() => any()}.


%% Example:
%% audience_destination() :: #{
%%   <<"s3Destination">> => s3_config_map()
%% }
-type audience_destination() :: #{binary() => any()}.


%% Example:
%% access_budget_details() :: #{
%%   <<"autoRefresh">> => list(any()),
%%   <<"budget">> => integer(),
%%   <<"budgetType">> => list(any()),
%%   <<"endTime">> => [non_neg_integer()],
%%   <<"remainingBudget">> => integer(),
%%   <<"startTime">> => [non_neg_integer()]
%% }
-type access_budget_details() :: #{binary() => any()}.


%% Example:
%% get_trained_model_inference_job_response() :: #{
%%   <<"configuredModelAlgorithmAssociationArn">> => string(),
%%   <<"containerExecutionParameters">> => inference_container_execution_parameters(),
%%   <<"createTime">> => [non_neg_integer()],
%%   <<"dataSource">> => model_inference_data_source(),
%%   <<"description">> => string(),
%%   <<"environment">> => map(),
%%   <<"inferenceContainerImageDigest">> => [string()],
%%   <<"kmsKeyArn">> => string(),
%%   <<"logsStatus">> => list(any()),
%%   <<"logsStatusDetails">> => [string()],
%%   <<"membershipIdentifier">> => string(),
%%   <<"metricsStatus">> => list(any()),
%%   <<"metricsStatusDetails">> => [string()],
%%   <<"name">> => string(),
%%   <<"outputConfiguration">> => inference_output_configuration(),
%%   <<"resourceConfig">> => inference_resource_config(),
%%   <<"status">> => list(any()),
%%   <<"statusDetails">> => status_details(),
%%   <<"tags">> => map(),
%%   <<"trainedModelArn">> => string(),
%%   <<"trainedModelInferenceJobArn">> => string(),
%%   <<"trainedModelVersionIdentifier">> => string(),
%%   <<"updateTime">> => [non_neg_integer()]
%% }
-type get_trained_model_inference_job_response() :: #{binary() => any()}.


%% Example:
%% inference_container_execution_parameters() :: #{
%%   <<"maxPayloadInMB">> => [integer()]
%% }
-type inference_container_execution_parameters() :: #{binary() => any()}.


%% Example:
%% audience_generation_job_data_source() :: #{
%%   <<"dataSource">> => s3_config_map(),
%%   <<"roleArn">> => string(),
%%   <<"sqlComputeConfiguration">> => list(),
%%   <<"sqlParameters">> => protected_query_s_q_l_parameters()
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
%% list_collaboration_configured_model_algorithm_associations_response() :: #{
%%   <<"collaborationConfiguredModelAlgorithmAssociations">> => list(collaboration_configured_model_algorithm_association_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_collaboration_configured_model_algorithm_associations_response() :: #{binary() => any()}.


%% Example:
%% get_configured_model_algorithm_response() :: #{
%%   <<"configuredModelAlgorithmArn">> => string(),
%%   <<"createTime">> => [non_neg_integer()],
%%   <<"description">> => string(),
%%   <<"inferenceContainerConfig">> => inference_container_config(),
%%   <<"kmsKeyArn">> => string(),
%%   <<"name">> => string(),
%%   <<"roleArn">> => string(),
%%   <<"tags">> => map(),
%%   <<"trainingContainerConfig">> => container_config(),
%%   <<"updateTime">> => [non_neg_integer()]
%% }
-type get_configured_model_algorithm_response() :: #{binary() => any()}.


%% Example:
%% trained_model_export_output_configuration() :: #{
%%   <<"members">> => list(trained_model_export_receiver_member())
%% }
-type trained_model_export_output_configuration() :: #{binary() => any()}.


%% Example:
%% list_audience_generation_jobs_response() :: #{
%%   <<"audienceGenerationJobs">> => list(audience_generation_job_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_audience_generation_jobs_response() :: #{binary() => any()}.


%% Example:
%% list_audience_models_response() :: #{
%%   <<"audienceModels">> => list(audience_model_summary()),
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
%% get_collaboration_ml_input_channel_request() :: #{}
-type get_collaboration_ml_input_channel_request() :: #{}.


%% Example:
%% list_trained_models_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_trained_models_request() :: #{binary() => any()}.

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
%% delete_trained_model_output_request() :: #{
%%   <<"versionIdentifier">> => string()
%% }
-type delete_trained_model_output_request() :: #{binary() => any()}.

%% Example:
%% get_audience_generation_job_request() :: #{}
-type get_audience_generation_job_request() :: #{}.


%% Example:
%% list_collaboration_trained_model_inference_jobs_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"trainedModelArn">> => string(),
%%   <<"trainedModelVersionIdentifier">> => string()
%% }
-type list_collaboration_trained_model_inference_jobs_request() :: #{binary() => any()}.

-type cancel_trained_model_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type cancel_trained_model_inference_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

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

-type create_configured_model_algorithm_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_configured_model_algorithm_association_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_ml_input_channel_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_trained_model_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    internal_service_exception().

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

-type delete_configured_model_algorithm_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_configured_model_algorithm_association_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_ml_configuration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type delete_ml_input_channel_data_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_trained_model_output_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

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

-type get_collaboration_configured_model_algorithm_association_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type get_collaboration_ml_input_channel_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type get_collaboration_trained_model_errors() ::
    throttling_exception() | 
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

-type get_configured_model_algorithm_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type get_configured_model_algorithm_association_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type get_ml_configuration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type get_ml_input_channel_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type get_trained_model_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type get_trained_model_inference_job_errors() ::
    throttling_exception() | 
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

-type list_collaboration_configured_model_algorithm_associations_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception().

-type list_collaboration_ml_input_channels_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception().

-type list_collaboration_trained_model_export_jobs_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception().

-type list_collaboration_trained_model_inference_jobs_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception().

-type list_collaboration_trained_models_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception().

-type list_configured_audience_models_errors() ::
    validation_exception() | 
    access_denied_exception().

-type list_configured_model_algorithm_associations_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception().

-type list_configured_model_algorithms_errors() ::
    validation_exception() | 
    access_denied_exception().

-type list_ml_input_channels_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception().

-type list_tags_for_resource_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type list_trained_model_inference_jobs_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception().

-type list_trained_model_versions_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type list_trained_models_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception().

-type list_training_datasets_errors() ::
    validation_exception() | 
    access_denied_exception().

-type put_configured_audience_model_policy_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type put_ml_configuration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception().

-type start_audience_export_job_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type start_audience_generation_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type start_trained_model_export_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type start_trained_model_inference_job_errors() ::
    throttling_exception() | 
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

%% @doc Submits a request to cancel the trained model job.
-spec cancel_trained_model(aws_client:aws_client(), binary() | list(), binary() | list(), cancel_trained_model_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, cancel_trained_model_errors(), tuple()}.
cancel_trained_model(Client, MembershipIdentifier, TrainedModelArn, Input) ->
    cancel_trained_model(Client, MembershipIdentifier, TrainedModelArn, Input, []).

-spec cancel_trained_model(aws_client:aws_client(), binary() | list(), binary() | list(), cancel_trained_model_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, cancel_trained_model_errors(), tuple()}.
cancel_trained_model(Client, MembershipIdentifier, TrainedModelArn, Input0, Options0) ->
    Method = patch,
    Path = ["/memberships/", aws_util:encode_uri(MembershipIdentifier), "/trained-models/", aws_util:encode_uri(TrainedModelArn), ""],
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
                     {<<"versionIdentifier">>, <<"versionIdentifier">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Submits a request to cancel a trained model inference job.
-spec cancel_trained_model_inference_job(aws_client:aws_client(), binary() | list(), binary() | list(), cancel_trained_model_inference_job_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, cancel_trained_model_inference_job_errors(), tuple()}.
cancel_trained_model_inference_job(Client, MembershipIdentifier, TrainedModelInferenceJobArn, Input) ->
    cancel_trained_model_inference_job(Client, MembershipIdentifier, TrainedModelInferenceJobArn, Input, []).

-spec cancel_trained_model_inference_job(aws_client:aws_client(), binary() | list(), binary() | list(), cancel_trained_model_inference_job_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, cancel_trained_model_inference_job_errors(), tuple()}.
cancel_trained_model_inference_job(Client, MembershipIdentifier, TrainedModelInferenceJobArn, Input0, Options0) ->
    Method = patch,
    Path = ["/memberships/", aws_util:encode_uri(MembershipIdentifier), "/trained-model-inference-jobs/", aws_util:encode_uri(TrainedModelInferenceJobArn), ""],
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

%% @doc Creates a configured model algorithm using a container image stored
%% in an ECR repository.
-spec create_configured_model_algorithm(aws_client:aws_client(), create_configured_model_algorithm_request()) ->
    {ok, create_configured_model_algorithm_response(), tuple()} |
    {error, any()} |
    {error, create_configured_model_algorithm_errors(), tuple()}.
create_configured_model_algorithm(Client, Input) ->
    create_configured_model_algorithm(Client, Input, []).

-spec create_configured_model_algorithm(aws_client:aws_client(), create_configured_model_algorithm_request(), proplists:proplist()) ->
    {ok, create_configured_model_algorithm_response(), tuple()} |
    {error, any()} |
    {error, create_configured_model_algorithm_errors(), tuple()}.
create_configured_model_algorithm(Client, Input0, Options0) ->
    Method = post,
    Path = ["/configured-model-algorithms"],
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

%% @doc Associates a configured model algorithm to a collaboration for use by
%% any member of the collaboration.
-spec create_configured_model_algorithm_association(aws_client:aws_client(), binary() | list(), create_configured_model_algorithm_association_request()) ->
    {ok, create_configured_model_algorithm_association_response(), tuple()} |
    {error, any()} |
    {error, create_configured_model_algorithm_association_errors(), tuple()}.
create_configured_model_algorithm_association(Client, MembershipIdentifier, Input) ->
    create_configured_model_algorithm_association(Client, MembershipIdentifier, Input, []).

-spec create_configured_model_algorithm_association(aws_client:aws_client(), binary() | list(), create_configured_model_algorithm_association_request(), proplists:proplist()) ->
    {ok, create_configured_model_algorithm_association_response(), tuple()} |
    {error, any()} |
    {error, create_configured_model_algorithm_association_errors(), tuple()}.
create_configured_model_algorithm_association(Client, MembershipIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/memberships/", aws_util:encode_uri(MembershipIdentifier), "/configured-model-algorithm-associations"],
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

%% @doc Provides the information to create an ML input channel.
%%
%% An ML input channel is the result of a query that can be used for ML
%% modeling.
-spec create_ml_input_channel(aws_client:aws_client(), binary() | list(), create_ml_input_channel_request()) ->
    {ok, create_ml_input_channel_response(), tuple()} |
    {error, any()} |
    {error, create_ml_input_channel_errors(), tuple()}.
create_ml_input_channel(Client, MembershipIdentifier, Input) ->
    create_ml_input_channel(Client, MembershipIdentifier, Input, []).

-spec create_ml_input_channel(aws_client:aws_client(), binary() | list(), create_ml_input_channel_request(), proplists:proplist()) ->
    {ok, create_ml_input_channel_response(), tuple()} |
    {error, any()} |
    {error, create_ml_input_channel_errors(), tuple()}.
create_ml_input_channel(Client, MembershipIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/memberships/", aws_util:encode_uri(MembershipIdentifier), "/ml-input-channels"],
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

%% @doc Creates a trained model from an associated configured model algorithm
%% using data from any member of the collaboration.
-spec create_trained_model(aws_client:aws_client(), binary() | list(), create_trained_model_request()) ->
    {ok, create_trained_model_response(), tuple()} |
    {error, any()} |
    {error, create_trained_model_errors(), tuple()}.
create_trained_model(Client, MembershipIdentifier, Input) ->
    create_trained_model(Client, MembershipIdentifier, Input, []).

-spec create_trained_model(aws_client:aws_client(), binary() | list(), create_trained_model_request(), proplists:proplist()) ->
    {ok, create_trained_model_response(), tuple()} |
    {error, any()} |
    {error, create_trained_model_errors(), tuple()}.
create_trained_model(Client, MembershipIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/memberships/", aws_util:encode_uri(MembershipIdentifier), "/trained-models"],
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

%% @doc Deletes a configured model algorithm.
-spec delete_configured_model_algorithm(aws_client:aws_client(), binary() | list(), delete_configured_model_algorithm_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_configured_model_algorithm_errors(), tuple()}.
delete_configured_model_algorithm(Client, ConfiguredModelAlgorithmArn, Input) ->
    delete_configured_model_algorithm(Client, ConfiguredModelAlgorithmArn, Input, []).

-spec delete_configured_model_algorithm(aws_client:aws_client(), binary() | list(), delete_configured_model_algorithm_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_configured_model_algorithm_errors(), tuple()}.
delete_configured_model_algorithm(Client, ConfiguredModelAlgorithmArn, Input0, Options0) ->
    Method = delete,
    Path = ["/configured-model-algorithms/", aws_util:encode_uri(ConfiguredModelAlgorithmArn), ""],
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

%% @doc Deletes a configured model algorithm association.
-spec delete_configured_model_algorithm_association(aws_client:aws_client(), binary() | list(), binary() | list(), delete_configured_model_algorithm_association_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_configured_model_algorithm_association_errors(), tuple()}.
delete_configured_model_algorithm_association(Client, ConfiguredModelAlgorithmAssociationArn, MembershipIdentifier, Input) ->
    delete_configured_model_algorithm_association(Client, ConfiguredModelAlgorithmAssociationArn, MembershipIdentifier, Input, []).

-spec delete_configured_model_algorithm_association(aws_client:aws_client(), binary() | list(), binary() | list(), delete_configured_model_algorithm_association_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_configured_model_algorithm_association_errors(), tuple()}.
delete_configured_model_algorithm_association(Client, ConfiguredModelAlgorithmAssociationArn, MembershipIdentifier, Input0, Options0) ->
    Method = delete,
    Path = ["/memberships/", aws_util:encode_uri(MembershipIdentifier), "/configured-model-algorithm-associations/", aws_util:encode_uri(ConfiguredModelAlgorithmAssociationArn), ""],
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

%% @doc Deletes a ML modeling configuration.
-spec delete_ml_configuration(aws_client:aws_client(), binary() | list(), delete_ml_configuration_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_ml_configuration_errors(), tuple()}.
delete_ml_configuration(Client, MembershipIdentifier, Input) ->
    delete_ml_configuration(Client, MembershipIdentifier, Input, []).

-spec delete_ml_configuration(aws_client:aws_client(), binary() | list(), delete_ml_configuration_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_ml_configuration_errors(), tuple()}.
delete_ml_configuration(Client, MembershipIdentifier, Input0, Options0) ->
    Method = delete,
    Path = ["/memberships/", aws_util:encode_uri(MembershipIdentifier), "/ml-configurations"],
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

%% @doc Provides the information necessary to delete an ML input channel.
-spec delete_ml_input_channel_data(aws_client:aws_client(), binary() | list(), binary() | list(), delete_ml_input_channel_data_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_ml_input_channel_data_errors(), tuple()}.
delete_ml_input_channel_data(Client, MembershipIdentifier, MlInputChannelArn, Input) ->
    delete_ml_input_channel_data(Client, MembershipIdentifier, MlInputChannelArn, Input, []).

-spec delete_ml_input_channel_data(aws_client:aws_client(), binary() | list(), binary() | list(), delete_ml_input_channel_data_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_ml_input_channel_data_errors(), tuple()}.
delete_ml_input_channel_data(Client, MembershipIdentifier, MlInputChannelArn, Input0, Options0) ->
    Method = delete,
    Path = ["/memberships/", aws_util:encode_uri(MembershipIdentifier), "/ml-input-channels/", aws_util:encode_uri(MlInputChannelArn), ""],
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

%% @doc Deletes the model artifacts stored by the service.
-spec delete_trained_model_output(aws_client:aws_client(), binary() | list(), binary() | list(), delete_trained_model_output_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_trained_model_output_errors(), tuple()}.
delete_trained_model_output(Client, MembershipIdentifier, TrainedModelArn, Input) ->
    delete_trained_model_output(Client, MembershipIdentifier, TrainedModelArn, Input, []).

-spec delete_trained_model_output(aws_client:aws_client(), binary() | list(), binary() | list(), delete_trained_model_output_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_trained_model_output_errors(), tuple()}.
delete_trained_model_output(Client, MembershipIdentifier, TrainedModelArn, Input0, Options0) ->
    Method = delete,
    Path = ["/memberships/", aws_util:encode_uri(MembershipIdentifier), "/trained-models/", aws_util:encode_uri(TrainedModelArn), ""],
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
                     {<<"versionIdentifier">>, <<"versionIdentifier">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
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

%% @doc Returns information about the configured model algorithm association
%% in a collaboration.
-spec get_collaboration_configured_model_algorithm_association(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_collaboration_configured_model_algorithm_association_response(), tuple()} |
    {error, any()} |
    {error, get_collaboration_configured_model_algorithm_association_errors(), tuple()}.
get_collaboration_configured_model_algorithm_association(Client, CollaborationIdentifier, ConfiguredModelAlgorithmAssociationArn)
  when is_map(Client) ->
    get_collaboration_configured_model_algorithm_association(Client, CollaborationIdentifier, ConfiguredModelAlgorithmAssociationArn, #{}, #{}).

-spec get_collaboration_configured_model_algorithm_association(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_collaboration_configured_model_algorithm_association_response(), tuple()} |
    {error, any()} |
    {error, get_collaboration_configured_model_algorithm_association_errors(), tuple()}.
get_collaboration_configured_model_algorithm_association(Client, CollaborationIdentifier, ConfiguredModelAlgorithmAssociationArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_collaboration_configured_model_algorithm_association(Client, CollaborationIdentifier, ConfiguredModelAlgorithmAssociationArn, QueryMap, HeadersMap, []).

-spec get_collaboration_configured_model_algorithm_association(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_collaboration_configured_model_algorithm_association_response(), tuple()} |
    {error, any()} |
    {error, get_collaboration_configured_model_algorithm_association_errors(), tuple()}.
get_collaboration_configured_model_algorithm_association(Client, CollaborationIdentifier, ConfiguredModelAlgorithmAssociationArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/collaborations/", aws_util:encode_uri(CollaborationIdentifier), "/configured-model-algorithm-associations/", aws_util:encode_uri(ConfiguredModelAlgorithmAssociationArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about a specific ML input channel in a
%% collaboration.
-spec get_collaboration_ml_input_channel(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_collaboration_ml_input_channel_response(), tuple()} |
    {error, any()} |
    {error, get_collaboration_ml_input_channel_errors(), tuple()}.
get_collaboration_ml_input_channel(Client, CollaborationIdentifier, MlInputChannelArn)
  when is_map(Client) ->
    get_collaboration_ml_input_channel(Client, CollaborationIdentifier, MlInputChannelArn, #{}, #{}).

-spec get_collaboration_ml_input_channel(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_collaboration_ml_input_channel_response(), tuple()} |
    {error, any()} |
    {error, get_collaboration_ml_input_channel_errors(), tuple()}.
get_collaboration_ml_input_channel(Client, CollaborationIdentifier, MlInputChannelArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_collaboration_ml_input_channel(Client, CollaborationIdentifier, MlInputChannelArn, QueryMap, HeadersMap, []).

-spec get_collaboration_ml_input_channel(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_collaboration_ml_input_channel_response(), tuple()} |
    {error, any()} |
    {error, get_collaboration_ml_input_channel_errors(), tuple()}.
get_collaboration_ml_input_channel(Client, CollaborationIdentifier, MlInputChannelArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/collaborations/", aws_util:encode_uri(CollaborationIdentifier), "/ml-input-channels/", aws_util:encode_uri(MlInputChannelArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about a trained model in a collaboration.
-spec get_collaboration_trained_model(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_collaboration_trained_model_response(), tuple()} |
    {error, any()} |
    {error, get_collaboration_trained_model_errors(), tuple()}.
get_collaboration_trained_model(Client, CollaborationIdentifier, TrainedModelArn)
  when is_map(Client) ->
    get_collaboration_trained_model(Client, CollaborationIdentifier, TrainedModelArn, #{}, #{}).

-spec get_collaboration_trained_model(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_collaboration_trained_model_response(), tuple()} |
    {error, any()} |
    {error, get_collaboration_trained_model_errors(), tuple()}.
get_collaboration_trained_model(Client, CollaborationIdentifier, TrainedModelArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_collaboration_trained_model(Client, CollaborationIdentifier, TrainedModelArn, QueryMap, HeadersMap, []).

-spec get_collaboration_trained_model(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_collaboration_trained_model_response(), tuple()} |
    {error, any()} |
    {error, get_collaboration_trained_model_errors(), tuple()}.
get_collaboration_trained_model(Client, CollaborationIdentifier, TrainedModelArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/collaborations/", aws_util:encode_uri(CollaborationIdentifier), "/trained-models/", aws_util:encode_uri(TrainedModelArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"versionIdentifier">>, maps:get(<<"versionIdentifier">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

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

%% @doc Returns information about a configured model algorithm.
-spec get_configured_model_algorithm(aws_client:aws_client(), binary() | list()) ->
    {ok, get_configured_model_algorithm_response(), tuple()} |
    {error, any()} |
    {error, get_configured_model_algorithm_errors(), tuple()}.
get_configured_model_algorithm(Client, ConfiguredModelAlgorithmArn)
  when is_map(Client) ->
    get_configured_model_algorithm(Client, ConfiguredModelAlgorithmArn, #{}, #{}).

-spec get_configured_model_algorithm(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_configured_model_algorithm_response(), tuple()} |
    {error, any()} |
    {error, get_configured_model_algorithm_errors(), tuple()}.
get_configured_model_algorithm(Client, ConfiguredModelAlgorithmArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_configured_model_algorithm(Client, ConfiguredModelAlgorithmArn, QueryMap, HeadersMap, []).

-spec get_configured_model_algorithm(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_configured_model_algorithm_response(), tuple()} |
    {error, any()} |
    {error, get_configured_model_algorithm_errors(), tuple()}.
get_configured_model_algorithm(Client, ConfiguredModelAlgorithmArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/configured-model-algorithms/", aws_util:encode_uri(ConfiguredModelAlgorithmArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about a configured model algorithm association.
-spec get_configured_model_algorithm_association(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_configured_model_algorithm_association_response(), tuple()} |
    {error, any()} |
    {error, get_configured_model_algorithm_association_errors(), tuple()}.
get_configured_model_algorithm_association(Client, ConfiguredModelAlgorithmAssociationArn, MembershipIdentifier)
  when is_map(Client) ->
    get_configured_model_algorithm_association(Client, ConfiguredModelAlgorithmAssociationArn, MembershipIdentifier, #{}, #{}).

-spec get_configured_model_algorithm_association(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_configured_model_algorithm_association_response(), tuple()} |
    {error, any()} |
    {error, get_configured_model_algorithm_association_errors(), tuple()}.
get_configured_model_algorithm_association(Client, ConfiguredModelAlgorithmAssociationArn, MembershipIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_configured_model_algorithm_association(Client, ConfiguredModelAlgorithmAssociationArn, MembershipIdentifier, QueryMap, HeadersMap, []).

-spec get_configured_model_algorithm_association(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_configured_model_algorithm_association_response(), tuple()} |
    {error, any()} |
    {error, get_configured_model_algorithm_association_errors(), tuple()}.
get_configured_model_algorithm_association(Client, ConfiguredModelAlgorithmAssociationArn, MembershipIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/memberships/", aws_util:encode_uri(MembershipIdentifier), "/configured-model-algorithm-associations/", aws_util:encode_uri(ConfiguredModelAlgorithmAssociationArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about a specific ML configuration.
-spec get_ml_configuration(aws_client:aws_client(), binary() | list()) ->
    {ok, get_ml_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_ml_configuration_errors(), tuple()}.
get_ml_configuration(Client, MembershipIdentifier)
  when is_map(Client) ->
    get_ml_configuration(Client, MembershipIdentifier, #{}, #{}).

-spec get_ml_configuration(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_ml_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_ml_configuration_errors(), tuple()}.
get_ml_configuration(Client, MembershipIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_ml_configuration(Client, MembershipIdentifier, QueryMap, HeadersMap, []).

-spec get_ml_configuration(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_ml_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_ml_configuration_errors(), tuple()}.
get_ml_configuration(Client, MembershipIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/memberships/", aws_util:encode_uri(MembershipIdentifier), "/ml-configurations"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about an ML input channel.
-spec get_ml_input_channel(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_ml_input_channel_response(), tuple()} |
    {error, any()} |
    {error, get_ml_input_channel_errors(), tuple()}.
get_ml_input_channel(Client, MembershipIdentifier, MlInputChannelArn)
  when is_map(Client) ->
    get_ml_input_channel(Client, MembershipIdentifier, MlInputChannelArn, #{}, #{}).

-spec get_ml_input_channel(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_ml_input_channel_response(), tuple()} |
    {error, any()} |
    {error, get_ml_input_channel_errors(), tuple()}.
get_ml_input_channel(Client, MembershipIdentifier, MlInputChannelArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_ml_input_channel(Client, MembershipIdentifier, MlInputChannelArn, QueryMap, HeadersMap, []).

-spec get_ml_input_channel(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_ml_input_channel_response(), tuple()} |
    {error, any()} |
    {error, get_ml_input_channel_errors(), tuple()}.
get_ml_input_channel(Client, MembershipIdentifier, MlInputChannelArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/memberships/", aws_util:encode_uri(MembershipIdentifier), "/ml-input-channels/", aws_util:encode_uri(MlInputChannelArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about a trained model.
-spec get_trained_model(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_trained_model_response(), tuple()} |
    {error, any()} |
    {error, get_trained_model_errors(), tuple()}.
get_trained_model(Client, MembershipIdentifier, TrainedModelArn)
  when is_map(Client) ->
    get_trained_model(Client, MembershipIdentifier, TrainedModelArn, #{}, #{}).

-spec get_trained_model(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_trained_model_response(), tuple()} |
    {error, any()} |
    {error, get_trained_model_errors(), tuple()}.
get_trained_model(Client, MembershipIdentifier, TrainedModelArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_trained_model(Client, MembershipIdentifier, TrainedModelArn, QueryMap, HeadersMap, []).

-spec get_trained_model(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_trained_model_response(), tuple()} |
    {error, any()} |
    {error, get_trained_model_errors(), tuple()}.
get_trained_model(Client, MembershipIdentifier, TrainedModelArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/memberships/", aws_util:encode_uri(MembershipIdentifier), "/trained-models/", aws_util:encode_uri(TrainedModelArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"versionIdentifier">>, maps:get(<<"versionIdentifier">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about a trained model inference job.
-spec get_trained_model_inference_job(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_trained_model_inference_job_response(), tuple()} |
    {error, any()} |
    {error, get_trained_model_inference_job_errors(), tuple()}.
get_trained_model_inference_job(Client, MembershipIdentifier, TrainedModelInferenceJobArn)
  when is_map(Client) ->
    get_trained_model_inference_job(Client, MembershipIdentifier, TrainedModelInferenceJobArn, #{}, #{}).

-spec get_trained_model_inference_job(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_trained_model_inference_job_response(), tuple()} |
    {error, any()} |
    {error, get_trained_model_inference_job_errors(), tuple()}.
get_trained_model_inference_job(Client, MembershipIdentifier, TrainedModelInferenceJobArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_trained_model_inference_job(Client, MembershipIdentifier, TrainedModelInferenceJobArn, QueryMap, HeadersMap, []).

-spec get_trained_model_inference_job(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_trained_model_inference_job_response(), tuple()} |
    {error, any()} |
    {error, get_trained_model_inference_job_errors(), tuple()}.
get_trained_model_inference_job(Client, MembershipIdentifier, TrainedModelInferenceJobArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/memberships/", aws_util:encode_uri(MembershipIdentifier), "/trained-model-inference-jobs/", aws_util:encode_uri(TrainedModelInferenceJobArn), ""],
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

%% @doc Returns a list of the configured model algorithm associations in a
%% collaboration.
-spec list_collaboration_configured_model_algorithm_associations(aws_client:aws_client(), binary() | list()) ->
    {ok, list_collaboration_configured_model_algorithm_associations_response(), tuple()} |
    {error, any()} |
    {error, list_collaboration_configured_model_algorithm_associations_errors(), tuple()}.
list_collaboration_configured_model_algorithm_associations(Client, CollaborationIdentifier)
  when is_map(Client) ->
    list_collaboration_configured_model_algorithm_associations(Client, CollaborationIdentifier, #{}, #{}).

-spec list_collaboration_configured_model_algorithm_associations(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_collaboration_configured_model_algorithm_associations_response(), tuple()} |
    {error, any()} |
    {error, list_collaboration_configured_model_algorithm_associations_errors(), tuple()}.
list_collaboration_configured_model_algorithm_associations(Client, CollaborationIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_collaboration_configured_model_algorithm_associations(Client, CollaborationIdentifier, QueryMap, HeadersMap, []).

-spec list_collaboration_configured_model_algorithm_associations(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_collaboration_configured_model_algorithm_associations_response(), tuple()} |
    {error, any()} |
    {error, list_collaboration_configured_model_algorithm_associations_errors(), tuple()}.
list_collaboration_configured_model_algorithm_associations(Client, CollaborationIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/collaborations/", aws_util:encode_uri(CollaborationIdentifier), "/configured-model-algorithm-associations"],
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

%% @doc Returns a list of the ML input channels in a collaboration.
-spec list_collaboration_ml_input_channels(aws_client:aws_client(), binary() | list()) ->
    {ok, list_collaboration_ml_input_channels_response(), tuple()} |
    {error, any()} |
    {error, list_collaboration_ml_input_channels_errors(), tuple()}.
list_collaboration_ml_input_channels(Client, CollaborationIdentifier)
  when is_map(Client) ->
    list_collaboration_ml_input_channels(Client, CollaborationIdentifier, #{}, #{}).

-spec list_collaboration_ml_input_channels(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_collaboration_ml_input_channels_response(), tuple()} |
    {error, any()} |
    {error, list_collaboration_ml_input_channels_errors(), tuple()}.
list_collaboration_ml_input_channels(Client, CollaborationIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_collaboration_ml_input_channels(Client, CollaborationIdentifier, QueryMap, HeadersMap, []).

-spec list_collaboration_ml_input_channels(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_collaboration_ml_input_channels_response(), tuple()} |
    {error, any()} |
    {error, list_collaboration_ml_input_channels_errors(), tuple()}.
list_collaboration_ml_input_channels(Client, CollaborationIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/collaborations/", aws_util:encode_uri(CollaborationIdentifier), "/ml-input-channels"],
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

%% @doc Returns a list of the export jobs for a trained model in a
%% collaboration.
-spec list_collaboration_trained_model_export_jobs(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_collaboration_trained_model_export_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_collaboration_trained_model_export_jobs_errors(), tuple()}.
list_collaboration_trained_model_export_jobs(Client, CollaborationIdentifier, TrainedModelArn)
  when is_map(Client) ->
    list_collaboration_trained_model_export_jobs(Client, CollaborationIdentifier, TrainedModelArn, #{}, #{}).

-spec list_collaboration_trained_model_export_jobs(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_collaboration_trained_model_export_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_collaboration_trained_model_export_jobs_errors(), tuple()}.
list_collaboration_trained_model_export_jobs(Client, CollaborationIdentifier, TrainedModelArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_collaboration_trained_model_export_jobs(Client, CollaborationIdentifier, TrainedModelArn, QueryMap, HeadersMap, []).

-spec list_collaboration_trained_model_export_jobs(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_collaboration_trained_model_export_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_collaboration_trained_model_export_jobs_errors(), tuple()}.
list_collaboration_trained_model_export_jobs(Client, CollaborationIdentifier, TrainedModelArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/collaborations/", aws_util:encode_uri(CollaborationIdentifier), "/trained-models/", aws_util:encode_uri(TrainedModelArn), "/export-jobs"],
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
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"trainedModelVersionIdentifier">>, maps:get(<<"trainedModelVersionIdentifier">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of trained model inference jobs in a specified
%% collaboration.
-spec list_collaboration_trained_model_inference_jobs(aws_client:aws_client(), binary() | list()) ->
    {ok, list_collaboration_trained_model_inference_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_collaboration_trained_model_inference_jobs_errors(), tuple()}.
list_collaboration_trained_model_inference_jobs(Client, CollaborationIdentifier)
  when is_map(Client) ->
    list_collaboration_trained_model_inference_jobs(Client, CollaborationIdentifier, #{}, #{}).

-spec list_collaboration_trained_model_inference_jobs(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_collaboration_trained_model_inference_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_collaboration_trained_model_inference_jobs_errors(), tuple()}.
list_collaboration_trained_model_inference_jobs(Client, CollaborationIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_collaboration_trained_model_inference_jobs(Client, CollaborationIdentifier, QueryMap, HeadersMap, []).

-spec list_collaboration_trained_model_inference_jobs(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_collaboration_trained_model_inference_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_collaboration_trained_model_inference_jobs_errors(), tuple()}.
list_collaboration_trained_model_inference_jobs(Client, CollaborationIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/collaborations/", aws_util:encode_uri(CollaborationIdentifier), "/trained-model-inference-jobs"],
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
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"trainedModelArn">>, maps:get(<<"trainedModelArn">>, QueryMap, undefined)},
        {<<"trainedModelVersionIdentifier">>, maps:get(<<"trainedModelVersionIdentifier">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of the trained models in a collaboration.
-spec list_collaboration_trained_models(aws_client:aws_client(), binary() | list()) ->
    {ok, list_collaboration_trained_models_response(), tuple()} |
    {error, any()} |
    {error, list_collaboration_trained_models_errors(), tuple()}.
list_collaboration_trained_models(Client, CollaborationIdentifier)
  when is_map(Client) ->
    list_collaboration_trained_models(Client, CollaborationIdentifier, #{}, #{}).

-spec list_collaboration_trained_models(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_collaboration_trained_models_response(), tuple()} |
    {error, any()} |
    {error, list_collaboration_trained_models_errors(), tuple()}.
list_collaboration_trained_models(Client, CollaborationIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_collaboration_trained_models(Client, CollaborationIdentifier, QueryMap, HeadersMap, []).

-spec list_collaboration_trained_models(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_collaboration_trained_models_response(), tuple()} |
    {error, any()} |
    {error, list_collaboration_trained_models_errors(), tuple()}.
list_collaboration_trained_models(Client, CollaborationIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/collaborations/", aws_util:encode_uri(CollaborationIdentifier), "/trained-models"],
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

%% @doc Returns a list of configured model algorithm associations.
-spec list_configured_model_algorithm_associations(aws_client:aws_client(), binary() | list()) ->
    {ok, list_configured_model_algorithm_associations_response(), tuple()} |
    {error, any()} |
    {error, list_configured_model_algorithm_associations_errors(), tuple()}.
list_configured_model_algorithm_associations(Client, MembershipIdentifier)
  when is_map(Client) ->
    list_configured_model_algorithm_associations(Client, MembershipIdentifier, #{}, #{}).

-spec list_configured_model_algorithm_associations(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_configured_model_algorithm_associations_response(), tuple()} |
    {error, any()} |
    {error, list_configured_model_algorithm_associations_errors(), tuple()}.
list_configured_model_algorithm_associations(Client, MembershipIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_configured_model_algorithm_associations(Client, MembershipIdentifier, QueryMap, HeadersMap, []).

-spec list_configured_model_algorithm_associations(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_configured_model_algorithm_associations_response(), tuple()} |
    {error, any()} |
    {error, list_configured_model_algorithm_associations_errors(), tuple()}.
list_configured_model_algorithm_associations(Client, MembershipIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/memberships/", aws_util:encode_uri(MembershipIdentifier), "/configured-model-algorithm-associations"],
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

%% @doc Returns a list of configured model algorithms.
-spec list_configured_model_algorithms(aws_client:aws_client()) ->
    {ok, list_configured_model_algorithms_response(), tuple()} |
    {error, any()} |
    {error, list_configured_model_algorithms_errors(), tuple()}.
list_configured_model_algorithms(Client)
  when is_map(Client) ->
    list_configured_model_algorithms(Client, #{}, #{}).

-spec list_configured_model_algorithms(aws_client:aws_client(), map(), map()) ->
    {ok, list_configured_model_algorithms_response(), tuple()} |
    {error, any()} |
    {error, list_configured_model_algorithms_errors(), tuple()}.
list_configured_model_algorithms(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_configured_model_algorithms(Client, QueryMap, HeadersMap, []).

-spec list_configured_model_algorithms(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_configured_model_algorithms_response(), tuple()} |
    {error, any()} |
    {error, list_configured_model_algorithms_errors(), tuple()}.
list_configured_model_algorithms(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/configured-model-algorithms"],
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

%% @doc Returns a list of ML input channels.
-spec list_ml_input_channels(aws_client:aws_client(), binary() | list()) ->
    {ok, list_ml_input_channels_response(), tuple()} |
    {error, any()} |
    {error, list_ml_input_channels_errors(), tuple()}.
list_ml_input_channels(Client, MembershipIdentifier)
  when is_map(Client) ->
    list_ml_input_channels(Client, MembershipIdentifier, #{}, #{}).

-spec list_ml_input_channels(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_ml_input_channels_response(), tuple()} |
    {error, any()} |
    {error, list_ml_input_channels_errors(), tuple()}.
list_ml_input_channels(Client, MembershipIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_ml_input_channels(Client, MembershipIdentifier, QueryMap, HeadersMap, []).

-spec list_ml_input_channels(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_ml_input_channels_response(), tuple()} |
    {error, any()} |
    {error, list_ml_input_channels_errors(), tuple()}.
list_ml_input_channels(Client, MembershipIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/memberships/", aws_util:encode_uri(MembershipIdentifier), "/ml-input-channels"],
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

%% @doc Returns a list of trained model inference jobs that match the request
%% parameters.
-spec list_trained_model_inference_jobs(aws_client:aws_client(), binary() | list()) ->
    {ok, list_trained_model_inference_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_trained_model_inference_jobs_errors(), tuple()}.
list_trained_model_inference_jobs(Client, MembershipIdentifier)
  when is_map(Client) ->
    list_trained_model_inference_jobs(Client, MembershipIdentifier, #{}, #{}).

-spec list_trained_model_inference_jobs(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_trained_model_inference_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_trained_model_inference_jobs_errors(), tuple()}.
list_trained_model_inference_jobs(Client, MembershipIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_trained_model_inference_jobs(Client, MembershipIdentifier, QueryMap, HeadersMap, []).

-spec list_trained_model_inference_jobs(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_trained_model_inference_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_trained_model_inference_jobs_errors(), tuple()}.
list_trained_model_inference_jobs(Client, MembershipIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/memberships/", aws_util:encode_uri(MembershipIdentifier), "/trained-model-inference-jobs"],
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
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"trainedModelArn">>, maps:get(<<"trainedModelArn">>, QueryMap, undefined)},
        {<<"trainedModelVersionIdentifier">>, maps:get(<<"trainedModelVersionIdentifier">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of trained model versions for a specified trained
%% model.
%%
%% This operation allows you to view all versions of a trained model,
%% including information about their status and creation details. You can use
%% this to track the evolution of your trained models and select specific
%% versions for inference or further training.
-spec list_trained_model_versions(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_trained_model_versions_response(), tuple()} |
    {error, any()} |
    {error, list_trained_model_versions_errors(), tuple()}.
list_trained_model_versions(Client, MembershipIdentifier, TrainedModelArn)
  when is_map(Client) ->
    list_trained_model_versions(Client, MembershipIdentifier, TrainedModelArn, #{}, #{}).

-spec list_trained_model_versions(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_trained_model_versions_response(), tuple()} |
    {error, any()} |
    {error, list_trained_model_versions_errors(), tuple()}.
list_trained_model_versions(Client, MembershipIdentifier, TrainedModelArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_trained_model_versions(Client, MembershipIdentifier, TrainedModelArn, QueryMap, HeadersMap, []).

-spec list_trained_model_versions(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_trained_model_versions_response(), tuple()} |
    {error, any()} |
    {error, list_trained_model_versions_errors(), tuple()}.
list_trained_model_versions(Client, MembershipIdentifier, TrainedModelArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/memberships/", aws_util:encode_uri(MembershipIdentifier), "/trained-models/", aws_util:encode_uri(TrainedModelArn), "/versions"],
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
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"status">>, maps:get(<<"status">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of trained models.
-spec list_trained_models(aws_client:aws_client(), binary() | list()) ->
    {ok, list_trained_models_response(), tuple()} |
    {error, any()} |
    {error, list_trained_models_errors(), tuple()}.
list_trained_models(Client, MembershipIdentifier)
  when is_map(Client) ->
    list_trained_models(Client, MembershipIdentifier, #{}, #{}).

-spec list_trained_models(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_trained_models_response(), tuple()} |
    {error, any()} |
    {error, list_trained_models_errors(), tuple()}.
list_trained_models(Client, MembershipIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_trained_models(Client, MembershipIdentifier, QueryMap, HeadersMap, []).

-spec list_trained_models(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_trained_models_response(), tuple()} |
    {error, any()} |
    {error, list_trained_models_errors(), tuple()}.
list_trained_models(Client, MembershipIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/memberships/", aws_util:encode_uri(MembershipIdentifier), "/trained-models"],
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

%% @doc Assigns information about an ML configuration.
-spec put_ml_configuration(aws_client:aws_client(), binary() | list(), put_ml_configuration_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_ml_configuration_errors(), tuple()}.
put_ml_configuration(Client, MembershipIdentifier, Input) ->
    put_ml_configuration(Client, MembershipIdentifier, Input, []).

-spec put_ml_configuration(aws_client:aws_client(), binary() | list(), put_ml_configuration_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_ml_configuration_errors(), tuple()}.
put_ml_configuration(Client, MembershipIdentifier, Input0, Options0) ->
    Method = put,
    Path = ["/memberships/", aws_util:encode_uri(MembershipIdentifier), "/ml-configurations"],
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

%% @doc Provides the information necessary to start a trained model export
%% job.
-spec start_trained_model_export_job(aws_client:aws_client(), binary() | list(), binary() | list(), start_trained_model_export_job_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, start_trained_model_export_job_errors(), tuple()}.
start_trained_model_export_job(Client, MembershipIdentifier, TrainedModelArn, Input) ->
    start_trained_model_export_job(Client, MembershipIdentifier, TrainedModelArn, Input, []).

-spec start_trained_model_export_job(aws_client:aws_client(), binary() | list(), binary() | list(), start_trained_model_export_job_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, start_trained_model_export_job_errors(), tuple()}.
start_trained_model_export_job(Client, MembershipIdentifier, TrainedModelArn, Input0, Options0) ->
    Method = post,
    Path = ["/memberships/", aws_util:encode_uri(MembershipIdentifier), "/trained-models/", aws_util:encode_uri(TrainedModelArn), "/export-jobs"],
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

%% @doc Defines the information necessary to begin a trained model inference
%% job.
-spec start_trained_model_inference_job(aws_client:aws_client(), binary() | list(), start_trained_model_inference_job_request()) ->
    {ok, start_trained_model_inference_job_response(), tuple()} |
    {error, any()} |
    {error, start_trained_model_inference_job_errors(), tuple()}.
start_trained_model_inference_job(Client, MembershipIdentifier, Input) ->
    start_trained_model_inference_job(Client, MembershipIdentifier, Input, []).

-spec start_trained_model_inference_job(aws_client:aws_client(), binary() | list(), start_trained_model_inference_job_request(), proplists:proplist()) ->
    {ok, start_trained_model_inference_job_response(), tuple()} |
    {error, any()} |
    {error, start_trained_model_inference_job_errors(), tuple()}.
start_trained_model_inference_job(Client, MembershipIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/memberships/", aws_util:encode_uri(MembershipIdentifier), "/trained-model-inference-jobs"],
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
