%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Comprehend is an Amazon Web Services service for gaining
%% insight into the content of documents.
%%
%% Use these actions to determine the topics contained in your documents, the
%% topics they
%% discuss, the predominant sentiment expressed in them, the predominant
%% language used, and
%% more.
-module(aws_comprehend).

-export([batch_detect_dominant_language/2,
         batch_detect_dominant_language/3,
         batch_detect_entities/2,
         batch_detect_entities/3,
         batch_detect_key_phrases/2,
         batch_detect_key_phrases/3,
         batch_detect_sentiment/2,
         batch_detect_sentiment/3,
         batch_detect_syntax/2,
         batch_detect_syntax/3,
         batch_detect_targeted_sentiment/2,
         batch_detect_targeted_sentiment/3,
         classify_document/2,
         classify_document/3,
         contains_pii_entities/2,
         contains_pii_entities/3,
         create_dataset/2,
         create_dataset/3,
         create_document_classifier/2,
         create_document_classifier/3,
         create_endpoint/2,
         create_endpoint/3,
         create_entity_recognizer/2,
         create_entity_recognizer/3,
         create_flywheel/2,
         create_flywheel/3,
         delete_document_classifier/2,
         delete_document_classifier/3,
         delete_endpoint/2,
         delete_endpoint/3,
         delete_entity_recognizer/2,
         delete_entity_recognizer/3,
         delete_flywheel/2,
         delete_flywheel/3,
         delete_resource_policy/2,
         delete_resource_policy/3,
         describe_dataset/2,
         describe_dataset/3,
         describe_document_classification_job/2,
         describe_document_classification_job/3,
         describe_document_classifier/2,
         describe_document_classifier/3,
         describe_dominant_language_detection_job/2,
         describe_dominant_language_detection_job/3,
         describe_endpoint/2,
         describe_endpoint/3,
         describe_entities_detection_job/2,
         describe_entities_detection_job/3,
         describe_entity_recognizer/2,
         describe_entity_recognizer/3,
         describe_events_detection_job/2,
         describe_events_detection_job/3,
         describe_flywheel/2,
         describe_flywheel/3,
         describe_flywheel_iteration/2,
         describe_flywheel_iteration/3,
         describe_key_phrases_detection_job/2,
         describe_key_phrases_detection_job/3,
         describe_pii_entities_detection_job/2,
         describe_pii_entities_detection_job/3,
         describe_resource_policy/2,
         describe_resource_policy/3,
         describe_sentiment_detection_job/2,
         describe_sentiment_detection_job/3,
         describe_targeted_sentiment_detection_job/2,
         describe_targeted_sentiment_detection_job/3,
         describe_topics_detection_job/2,
         describe_topics_detection_job/3,
         detect_dominant_language/2,
         detect_dominant_language/3,
         detect_entities/2,
         detect_entities/3,
         detect_key_phrases/2,
         detect_key_phrases/3,
         detect_pii_entities/2,
         detect_pii_entities/3,
         detect_sentiment/2,
         detect_sentiment/3,
         detect_syntax/2,
         detect_syntax/3,
         detect_targeted_sentiment/2,
         detect_targeted_sentiment/3,
         detect_toxic_content/2,
         detect_toxic_content/3,
         import_model/2,
         import_model/3,
         list_datasets/2,
         list_datasets/3,
         list_document_classification_jobs/2,
         list_document_classification_jobs/3,
         list_document_classifier_summaries/2,
         list_document_classifier_summaries/3,
         list_document_classifiers/2,
         list_document_classifiers/3,
         list_dominant_language_detection_jobs/2,
         list_dominant_language_detection_jobs/3,
         list_endpoints/2,
         list_endpoints/3,
         list_entities_detection_jobs/2,
         list_entities_detection_jobs/3,
         list_entity_recognizer_summaries/2,
         list_entity_recognizer_summaries/3,
         list_entity_recognizers/2,
         list_entity_recognizers/3,
         list_events_detection_jobs/2,
         list_events_detection_jobs/3,
         list_flywheel_iteration_history/2,
         list_flywheel_iteration_history/3,
         list_flywheels/2,
         list_flywheels/3,
         list_key_phrases_detection_jobs/2,
         list_key_phrases_detection_jobs/3,
         list_pii_entities_detection_jobs/2,
         list_pii_entities_detection_jobs/3,
         list_sentiment_detection_jobs/2,
         list_sentiment_detection_jobs/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         list_targeted_sentiment_detection_jobs/2,
         list_targeted_sentiment_detection_jobs/3,
         list_topics_detection_jobs/2,
         list_topics_detection_jobs/3,
         put_resource_policy/2,
         put_resource_policy/3,
         start_document_classification_job/2,
         start_document_classification_job/3,
         start_dominant_language_detection_job/2,
         start_dominant_language_detection_job/3,
         start_entities_detection_job/2,
         start_entities_detection_job/3,
         start_events_detection_job/2,
         start_events_detection_job/3,
         start_flywheel_iteration/2,
         start_flywheel_iteration/3,
         start_key_phrases_detection_job/2,
         start_key_phrases_detection_job/3,
         start_pii_entities_detection_job/2,
         start_pii_entities_detection_job/3,
         start_sentiment_detection_job/2,
         start_sentiment_detection_job/3,
         start_targeted_sentiment_detection_job/2,
         start_targeted_sentiment_detection_job/3,
         start_topics_detection_job/2,
         start_topics_detection_job/3,
         stop_dominant_language_detection_job/2,
         stop_dominant_language_detection_job/3,
         stop_entities_detection_job/2,
         stop_entities_detection_job/3,
         stop_events_detection_job/2,
         stop_events_detection_job/3,
         stop_key_phrases_detection_job/2,
         stop_key_phrases_detection_job/3,
         stop_pii_entities_detection_job/2,
         stop_pii_entities_detection_job/3,
         stop_sentiment_detection_job/2,
         stop_sentiment_detection_job/3,
         stop_targeted_sentiment_detection_job/2,
         stop_targeted_sentiment_detection_job/3,
         stop_training_document_classifier/2,
         stop_training_document_classifier/3,
         stop_training_entity_recognizer/2,
         stop_training_entity_recognizer/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_endpoint/2,
         update_endpoint/3,
         update_flywheel/2,
         update_flywheel/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% flywheel_iteration_filter() :: #{
%%   <<"CreationTimeAfter">> => non_neg_integer(),
%%   <<"CreationTimeBefore">> => non_neg_integer()
%% }
-type flywheel_iteration_filter() :: #{binary() => any()}.

%% Example:
%% invalid_request_detail() :: #{
%%   <<"Reason">> => list(any())
%% }
-type invalid_request_detail() :: #{binary() => any()}.

%% Example:
%% create_document_classifier_request() :: #{
%%   <<"ClientRequestToken">> => string(),
%%   <<"DataAccessRoleArn">> := string(),
%%   <<"DocumentClassifierName">> := string(),
%%   <<"InputDataConfig">> := document_classifier_input_data_config(),
%%   <<"LanguageCode">> := list(any()),
%%   <<"Mode">> => list(any()),
%%   <<"ModelKmsKeyId">> => string(),
%%   <<"ModelPolicy">> => string(),
%%   <<"OutputDataConfig">> => document_classifier_output_data_config(),
%%   <<"Tags">> => list(tag()),
%%   <<"VersionName">> => string(),
%%   <<"VolumeKmsKeyId">> => string(),
%%   <<"VpcConfig">> => vpc_config()
%% }
-type create_document_classifier_request() :: #{binary() => any()}.

%% Example:
%% describe_events_detection_job_response() :: #{
%%   <<"EventsDetectionJobProperties">> => events_detection_job_properties()
%% }
-type describe_events_detection_job_response() :: #{binary() => any()}.

%% Example:
%% update_flywheel_request() :: #{
%%   <<"ActiveModelArn">> => string(),
%%   <<"DataAccessRoleArn">> => string(),
%%   <<"DataSecurityConfig">> => update_data_security_config(),
%%   <<"FlywheelArn">> := string()
%% }
-type update_flywheel_request() :: #{binary() => any()}.

%% Example:
%% contains_pii_entities_request() :: #{
%%   <<"LanguageCode">> := list(any()),
%%   <<"Text">> := string()
%% }
-type contains_pii_entities_request() :: #{binary() => any()}.

%% Example:
%% list_entity_recognizers_response() :: #{
%%   <<"EntityRecognizerPropertiesList">> => list(entity_recognizer_properties()),
%%   <<"NextToken">> => string()
%% }
-type list_entity_recognizers_response() :: #{binary() => any()}.

%% Example:
%% start_flywheel_iteration_request() :: #{
%%   <<"ClientRequestToken">> => string(),
%%   <<"FlywheelArn">> := string()
%% }
-type start_flywheel_iteration_request() :: #{binary() => any()}.

%% Example:
%% list_pii_entities_detection_jobs_request() :: #{
%%   <<"Filter">> => pii_entities_detection_job_filter(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_pii_entities_detection_jobs_request() :: #{binary() => any()}.

%% Example:
%% document_classifier_output_data_config() :: #{
%%   <<"FlywheelStatsS3Prefix">> => string(),
%%   <<"KmsKeyId">> => string(),
%%   <<"S3Uri">> => string()
%% }
-type document_classifier_output_data_config() :: #{binary() => any()}.

%% Example:
%% stop_training_document_classifier_request() :: #{
%%   <<"DocumentClassifierArn">> := string()
%% }
-type stop_training_document_classifier_request() :: #{binary() => any()}.

%% Example:
%% tag_resource_request() :: #{
%%   <<"ResourceArn">> := string(),
%%   <<"Tags">> := list(tag())
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% describe_dominant_language_detection_job_response() :: #{
%%   <<"DominantLanguageDetectionJobProperties">> => dominant_language_detection_job_properties()
%% }
-type describe_dominant_language_detection_job_response() :: #{binary() => any()}.

%% Example:
%% delete_resource_policy_response() :: #{

%% }
-type delete_resource_policy_response() :: #{binary() => any()}.

%% Example:
%% describe_targeted_sentiment_detection_job_response() :: #{
%%   <<"TargetedSentimentDetectionJobProperties">> => targeted_sentiment_detection_job_properties()
%% }
-type describe_targeted_sentiment_detection_job_response() :: #{binary() => any()}.

%% Example:
%% document_classifier_input_data_config() :: #{
%%   <<"AugmentedManifests">> => list(augmented_manifests_list_item()),
%%   <<"DataFormat">> => list(any()),
%%   <<"DocumentReaderConfig">> => document_reader_config(),
%%   <<"DocumentType">> => list(any()),
%%   <<"Documents">> => document_classifier_documents(),
%%   <<"LabelDelimiter">> => string(),
%%   <<"S3Uri">> => string(),
%%   <<"TestS3Uri">> => string()
%% }
-type document_classifier_input_data_config() :: #{binary() => any()}.

%% Example:
%% batch_detect_dominant_language_response() :: #{
%%   <<"ErrorList">> => list(batch_item_error()),
%%   <<"ResultList">> => list(batch_detect_dominant_language_item_result())
%% }
-type batch_detect_dominant_language_response() :: #{binary() => any()}.

%% Example:
%% start_events_detection_job_request() :: #{
%%   <<"ClientRequestToken">> => string(),
%%   <<"DataAccessRoleArn">> := string(),
%%   <<"InputDataConfig">> := input_data_config(),
%%   <<"JobName">> => string(),
%%   <<"LanguageCode">> := list(any()),
%%   <<"OutputDataConfig">> := output_data_config(),
%%   <<"Tags">> => list(tag()),
%%   <<"TargetEventTypes">> := list(string())
%% }
-type start_events_detection_job_request() :: #{binary() => any()}.

%% Example:
%% dataset_document_classifier_input_data_config() :: #{
%%   <<"LabelDelimiter">> => string(),
%%   <<"S3Uri">> => string()
%% }
-type dataset_document_classifier_input_data_config() :: #{binary() => any()}.

%% Example:
%% update_endpoint_response() :: #{
%%   <<"DesiredModelArn">> => string()
%% }
-type update_endpoint_response() :: #{binary() => any()}.

%% Example:
%% classifier_metadata() :: #{
%%   <<"EvaluationMetrics">> => classifier_evaluation_metrics(),
%%   <<"NumberOfLabels">> => integer(),
%%   <<"NumberOfTestDocuments">> => integer(),
%%   <<"NumberOfTrainedDocuments">> => integer()
%% }
-type classifier_metadata() :: #{binary() => any()}.

%% Example:
%% entity_recognizer_summary() :: #{
%%   <<"LatestVersionCreatedAt">> => non_neg_integer(),
%%   <<"LatestVersionName">> => string(),
%%   <<"LatestVersionStatus">> => list(any()),
%%   <<"NumberOfVersions">> => integer(),
%%   <<"RecognizerName">> => string()
%% }
-type entity_recognizer_summary() :: #{binary() => any()}.

%% Example:
%% batch_detect_dominant_language_item_result() :: #{
%%   <<"Index">> => integer(),
%%   <<"Languages">> => list(dominant_language())
%% }
-type batch_detect_dominant_language_item_result() :: #{binary() => any()}.

%% Example:
%% events_detection_job_properties() :: #{
%%   <<"DataAccessRoleArn">> => string(),
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"InputDataConfig">> => input_data_config(),
%%   <<"JobArn">> => string(),
%%   <<"JobId">> => string(),
%%   <<"JobName">> => string(),
%%   <<"JobStatus">> => list(any()),
%%   <<"LanguageCode">> => list(any()),
%%   <<"Message">> => string(),
%%   <<"OutputDataConfig">> => output_data_config(),
%%   <<"SubmitTime">> => non_neg_integer(),
%%   <<"TargetEventTypes">> => list(string())
%% }
-type events_detection_job_properties() :: #{binary() => any()}.

%% Example:
%% input_data_config() :: #{
%%   <<"DocumentReaderConfig">> => document_reader_config(),
%%   <<"InputFormat">> => list(any()),
%%   <<"S3Uri">> => string()
%% }
-type input_data_config() :: #{binary() => any()}.

%% Example:
%% describe_topics_detection_job_request() :: #{
%%   <<"JobId">> := string()
%% }
-type describe_topics_detection_job_request() :: #{binary() => any()}.

%% Example:
%% geometry() :: #{
%%   <<"BoundingBox">> => bounding_box(),
%%   <<"Polygon">> => list(point())
%% }
-type geometry() :: #{binary() => any()}.

%% Example:
%% start_document_classification_job_request() :: #{
%%   <<"ClientRequestToken">> => string(),
%%   <<"DataAccessRoleArn">> := string(),
%%   <<"DocumentClassifierArn">> => string(),
%%   <<"FlywheelArn">> => string(),
%%   <<"InputDataConfig">> := input_data_config(),
%%   <<"JobName">> => string(),
%%   <<"OutputDataConfig">> := output_data_config(),
%%   <<"Tags">> => list(tag()),
%%   <<"VolumeKmsKeyId">> => string(),
%%   <<"VpcConfig">> => vpc_config()
%% }
-type start_document_classification_job_request() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{

%% }
-type untag_resource_response() :: #{binary() => any()}.

%% Example:
%% list_flywheel_iteration_history_response() :: #{
%%   <<"FlywheelIterationPropertiesList">> => list(flywheel_iteration_properties()),
%%   <<"NextToken">> => string()
%% }
-type list_flywheel_iteration_history_response() :: #{binary() => any()}.

%% Example:
%% entity() :: #{
%%   <<"BeginOffset">> => integer(),
%%   <<"BlockReferences">> => list(block_reference()),
%%   <<"EndOffset">> => integer(),
%%   <<"Score">> => float(),
%%   <<"Text">> => string(),
%%   <<"Type">> => list(any())
%% }
-type entity() :: #{binary() => any()}.

%% Example:
%% key_phrases_detection_job_filter() :: #{
%%   <<"JobName">> => string(),
%%   <<"JobStatus">> => list(any()),
%%   <<"SubmitTimeAfter">> => non_neg_integer(),
%%   <<"SubmitTimeBefore">> => non_neg_integer()
%% }
-type key_phrases_detection_job_filter() :: #{binary() => any()}.

%% Example:
%% sentiment_detection_job_filter() :: #{
%%   <<"JobName">> => string(),
%%   <<"JobStatus">> => list(any()),
%%   <<"SubmitTimeAfter">> => non_neg_integer(),
%%   <<"SubmitTimeBefore">> => non_neg_integer()
%% }
-type sentiment_detection_job_filter() :: #{binary() => any()}.

%% Example:
%% import_model_response() :: #{
%%   <<"ModelArn">> => string()
%% }
-type import_model_response() :: #{binary() => any()}.

%% Example:
%% resource_in_use_exception() :: #{
%%   <<"Message">> => string()
%% }
-type resource_in_use_exception() :: #{binary() => any()}.

%% Example:
%% delete_entity_recognizer_request() :: #{
%%   <<"EntityRecognizerArn">> := string()
%% }
-type delete_entity_recognizer_request() :: #{binary() => any()}.

%% Example:
%% data_security_config() :: #{
%%   <<"DataLakeKmsKeyId">> => string(),
%%   <<"ModelKmsKeyId">> => string(),
%%   <<"VolumeKmsKeyId">> => string(),
%%   <<"VpcConfig">> => vpc_config()
%% }
-type data_security_config() :: #{binary() => any()}.

%% Example:
%% document_classifier_properties() :: #{
%%   <<"ClassifierMetadata">> => classifier_metadata(),
%%   <<"DataAccessRoleArn">> => string(),
%%   <<"DocumentClassifierArn">> => string(),
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"FlywheelArn">> => string(),
%%   <<"InputDataConfig">> => document_classifier_input_data_config(),
%%   <<"LanguageCode">> => list(any()),
%%   <<"Message">> => string(),
%%   <<"Mode">> => list(any()),
%%   <<"ModelKmsKeyId">> => string(),
%%   <<"OutputDataConfig">> => document_classifier_output_data_config(),
%%   <<"SourceModelArn">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"SubmitTime">> => non_neg_integer(),
%%   <<"TrainingEndTime">> => non_neg_integer(),
%%   <<"TrainingStartTime">> => non_neg_integer(),
%%   <<"VersionName">> => string(),
%%   <<"VolumeKmsKeyId">> => string(),
%%   <<"VpcConfig">> => vpc_config()
%% }
-type document_classifier_properties() :: #{binary() => any()}.

%% Example:
%% list_flywheels_response() :: #{
%%   <<"FlywheelSummaryList">> => list(flywheel_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_flywheels_response() :: #{binary() => any()}.

%% Example:
%% dataset_augmented_manifests_list_item() :: #{
%%   <<"AnnotationDataS3Uri">> => string(),
%%   <<"AttributeNames">> => list(string()),
%%   <<"DocumentType">> => list(any()),
%%   <<"S3Uri">> => string(),
%%   <<"SourceDocumentsS3Uri">> => string()
%% }
-type dataset_augmented_manifests_list_item() :: #{binary() => any()}.

%% Example:
%% classify_document_request() :: #{
%%   <<"Bytes">> => binary(),
%%   <<"DocumentReaderConfig">> => document_reader_config(),
%%   <<"EndpointArn">> := string(),
%%   <<"Text">> => string()
%% }
-type classify_document_request() :: #{binary() => any()}.

%% Example:
%% resource_unavailable_exception() :: #{
%%   <<"Message">> => string()
%% }
-type resource_unavailable_exception() :: #{binary() => any()}.

%% Example:
%% batch_detect_syntax_item_result() :: #{
%%   <<"Index">> => integer(),
%%   <<"SyntaxTokens">> => list(syntax_token())
%% }
-type batch_detect_syntax_item_result() :: #{binary() => any()}.

%% Example:
%% document_reader_config() :: #{
%%   <<"DocumentReadAction">> => list(any()),
%%   <<"DocumentReadMode">> => list(any()),
%%   <<"FeatureTypes">> => list(list(any())())
%% }
-type document_reader_config() :: #{binary() => any()}.

%% Example:
%% list_document_classifier_summaries_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_document_classifier_summaries_request() :: #{binary() => any()}.

%% Example:
%% create_endpoint_request() :: #{
%%   <<"ClientRequestToken">> => string(),
%%   <<"DataAccessRoleArn">> => string(),
%%   <<"DesiredInferenceUnits">> := integer(),
%%   <<"EndpointName">> := string(),
%%   <<"FlywheelArn">> => string(),
%%   <<"ModelArn">> => string(),
%%   <<"Tags">> => list(tag())
%% }
-type create_endpoint_request() :: #{binary() => any()}.

%% Example:
%% list_datasets_request() :: #{
%%   <<"Filter">> => dataset_filter(),
%%   <<"FlywheelArn">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_datasets_request() :: #{binary() => any()}.

%% Example:
%% detect_key_phrases_request() :: #{
%%   <<"LanguageCode">> := list(any()),
%%   <<"Text">> := string()
%% }
-type detect_key_phrases_request() :: #{binary() => any()}.

%% Example:
%% describe_entities_detection_job_request() :: #{
%%   <<"JobId">> := string()
%% }
-type describe_entities_detection_job_request() :: #{binary() => any()}.

%% Example:
%% list_flywheels_request() :: #{
%%   <<"Filter">> => flywheel_filter(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_flywheels_request() :: #{binary() => any()}.

%% Example:
%% describe_entity_recognizer_response() :: #{
%%   <<"EntityRecognizerProperties">> => entity_recognizer_properties()
%% }
-type describe_entity_recognizer_response() :: #{binary() => any()}.

%% Example:
%% contains_pii_entities_response() :: #{
%%   <<"Labels">> => list(entity_label())
%% }
-type contains_pii_entities_response() :: #{binary() => any()}.

%% Example:
%% stop_training_entity_recognizer_response() :: #{

%% }
-type stop_training_entity_recognizer_response() :: #{binary() => any()}.

%% Example:
%% augmented_manifests_list_item() :: #{
%%   <<"AnnotationDataS3Uri">> => string(),
%%   <<"AttributeNames">> => list(string()),
%%   <<"DocumentType">> => list(any()),
%%   <<"S3Uri">> => string(),
%%   <<"SourceDocumentsS3Uri">> => string(),
%%   <<"Split">> => list(any())
%% }
-type augmented_manifests_list_item() :: #{binary() => any()}.

%% Example:
%% part_of_speech_tag() :: #{
%%   <<"Score">> => float(),
%%   <<"Tag">> => list(any())
%% }
-type part_of_speech_tag() :: #{binary() => any()}.

%% Example:
%% update_endpoint_request() :: #{
%%   <<"DesiredDataAccessRoleArn">> => string(),
%%   <<"DesiredInferenceUnits">> => integer(),
%%   <<"DesiredModelArn">> => string(),
%%   <<"EndpointArn">> := string(),
%%   <<"FlywheelArn">> => string()
%% }
-type update_endpoint_request() :: #{binary() => any()}.

%% Example:
%% stop_sentiment_detection_job_response() :: #{
%%   <<"JobId">> => string(),
%%   <<"JobStatus">> => list(any())
%% }
-type stop_sentiment_detection_job_response() :: #{binary() => any()}.

%% Example:
%% detect_pii_entities_response() :: #{
%%   <<"Entities">> => list(pii_entity())
%% }
-type detect_pii_entities_response() :: #{binary() => any()}.

%% Example:
%% describe_events_detection_job_request() :: #{
%%   <<"JobId">> := string()
%% }
-type describe_events_detection_job_request() :: #{binary() => any()}.

%% Example:
%% untag_resource_request() :: #{
%%   <<"ResourceArn">> := string(),
%%   <<"TagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% too_many_requests_exception() :: #{
%%   <<"Message">> => string()
%% }
-type too_many_requests_exception() :: #{binary() => any()}.

%% Example:
%% describe_sentiment_detection_job_request() :: #{
%%   <<"JobId">> := string()
%% }
-type describe_sentiment_detection_job_request() :: #{binary() => any()}.

%% Example:
%% describe_topics_detection_job_response() :: #{
%%   <<"TopicsDetectionJobProperties">> => topics_detection_job_properties()
%% }
-type describe_topics_detection_job_response() :: #{binary() => any()}.

%% Example:
%% list_entity_recognizers_request() :: #{
%%   <<"Filter">> => entity_recognizer_filter(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_entity_recognizers_request() :: #{binary() => any()}.

%% Example:
%% batch_detect_syntax_request() :: #{
%%   <<"LanguageCode">> := list(any()),
%%   <<"TextList">> := list(string())
%% }
-type batch_detect_syntax_request() :: #{binary() => any()}.

%% Example:
%% invalid_filter_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_filter_exception() :: #{binary() => any()}.

%% Example:
%% dataset_entity_recognizer_documents() :: #{
%%   <<"InputFormat">> => list(any()),
%%   <<"S3Uri">> => string()
%% }
-type dataset_entity_recognizer_documents() :: #{binary() => any()}.

%% Example:
%% entity_recognizer_properties() :: #{
%%   <<"DataAccessRoleArn">> => string(),
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"EntityRecognizerArn">> => string(),
%%   <<"FlywheelArn">> => string(),
%%   <<"InputDataConfig">> => entity_recognizer_input_data_config(),
%%   <<"LanguageCode">> => list(any()),
%%   <<"Message">> => string(),
%%   <<"ModelKmsKeyId">> => string(),
%%   <<"OutputDataConfig">> => entity_recognizer_output_data_config(),
%%   <<"RecognizerMetadata">> => entity_recognizer_metadata(),
%%   <<"SourceModelArn">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"SubmitTime">> => non_neg_integer(),
%%   <<"TrainingEndTime">> => non_neg_integer(),
%%   <<"TrainingStartTime">> => non_neg_integer(),
%%   <<"VersionName">> => string(),
%%   <<"VolumeKmsKeyId">> => string(),
%%   <<"VpcConfig">> => vpc_config()
%% }
-type entity_recognizer_properties() :: #{binary() => any()}.

%% Example:
%% too_many_tag_keys_exception() :: #{
%%   <<"Message">> => string()
%% }
-type too_many_tag_keys_exception() :: #{binary() => any()}.

%% Example:
%% task_config() :: #{
%%   <<"DocumentClassificationConfig">> => document_classification_config(),
%%   <<"EntityRecognitionConfig">> => entity_recognition_config(),
%%   <<"LanguageCode">> => list(any())
%% }
-type task_config() :: #{binary() => any()}.

%% Example:
%% entity_recognizer_evaluation_metrics() :: #{
%%   <<"F1Score">> => float(),
%%   <<"Precision">> => float(),
%%   <<"Recall">> => float()
%% }
-type entity_recognizer_evaluation_metrics() :: #{binary() => any()}.

%% Example:
%% create_entity_recognizer_request() :: #{
%%   <<"ClientRequestToken">> => string(),
%%   <<"DataAccessRoleArn">> := string(),
%%   <<"InputDataConfig">> := entity_recognizer_input_data_config(),
%%   <<"LanguageCode">> := list(any()),
%%   <<"ModelKmsKeyId">> => string(),
%%   <<"ModelPolicy">> => string(),
%%   <<"RecognizerName">> := string(),
%%   <<"Tags">> => list(tag()),
%%   <<"VersionName">> => string(),
%%   <<"VolumeKmsKeyId">> => string(),
%%   <<"VpcConfig">> => vpc_config()
%% }
-type create_entity_recognizer_request() :: #{binary() => any()}.

%% Example:
%% batch_detect_targeted_sentiment_request() :: #{
%%   <<"LanguageCode">> := list(any()),
%%   <<"TextList">> := list(string())
%% }
-type batch_detect_targeted_sentiment_request() :: #{binary() => any()}.

%% Example:
%% start_entities_detection_job_request() :: #{
%%   <<"ClientRequestToken">> => string(),
%%   <<"DataAccessRoleArn">> := string(),
%%   <<"EntityRecognizerArn">> => string(),
%%   <<"FlywheelArn">> => string(),
%%   <<"InputDataConfig">> := input_data_config(),
%%   <<"JobName">> => string(),
%%   <<"LanguageCode">> := list(any()),
%%   <<"OutputDataConfig">> := output_data_config(),
%%   <<"Tags">> => list(tag()),
%%   <<"VolumeKmsKeyId">> => string(),
%%   <<"VpcConfig">> => vpc_config()
%% }
-type start_entities_detection_job_request() :: #{binary() => any()}.

%% Example:
%% describe_document_classification_job_request() :: #{
%%   <<"JobId">> := string()
%% }
-type describe_document_classification_job_request() :: #{binary() => any()}.

%% Example:
%% delete_entity_recognizer_response() :: #{

%% }
-type delete_entity_recognizer_response() :: #{binary() => any()}.

%% Example:
%% classifier_evaluation_metrics() :: #{
%%   <<"Accuracy">> => float(),
%%   <<"F1Score">> => float(),
%%   <<"HammingLoss">> => float(),
%%   <<"MicroF1Score">> => float(),
%%   <<"MicroPrecision">> => float(),
%%   <<"MicroRecall">> => float(),
%%   <<"Precision">> => float(),
%%   <<"Recall">> => float()
%% }
-type classifier_evaluation_metrics() :: #{binary() => any()}.

%% Example:
%% topics_detection_job_properties() :: #{
%%   <<"DataAccessRoleArn">> => string(),
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"InputDataConfig">> => input_data_config(),
%%   <<"JobArn">> => string(),
%%   <<"JobId">> => string(),
%%   <<"JobName">> => string(),
%%   <<"JobStatus">> => list(any()),
%%   <<"Message">> => string(),
%%   <<"NumberOfTopics">> => integer(),
%%   <<"OutputDataConfig">> => output_data_config(),
%%   <<"SubmitTime">> => non_neg_integer(),
%%   <<"VolumeKmsKeyId">> => string(),
%%   <<"VpcConfig">> => vpc_config()
%% }
-type topics_detection_job_properties() :: #{binary() => any()}.

%% Example:
%% stop_sentiment_detection_job_request() :: #{
%%   <<"JobId">> := string()
%% }
-type stop_sentiment_detection_job_request() :: #{binary() => any()}.

%% Example:
%% entity_recognizer_input_data_config() :: #{
%%   <<"Annotations">> => entity_recognizer_annotations(),
%%   <<"AugmentedManifests">> => list(augmented_manifests_list_item()),
%%   <<"DataFormat">> => list(any()),
%%   <<"Documents">> => entity_recognizer_documents(),
%%   <<"EntityList">> => entity_recognizer_entity_list(),
%%   <<"EntityTypes">> => list(entity_types_list_item())
%% }
-type entity_recognizer_input_data_config() :: #{binary() => any()}.

%% Example:
%% detect_syntax_request() :: #{
%%   <<"LanguageCode">> := list(any()),
%%   <<"Text">> := string()
%% }
-type detect_syntax_request() :: #{binary() => any()}.

%% Example:
%% syntax_token() :: #{
%%   <<"BeginOffset">> => integer(),
%%   <<"EndOffset">> => integer(),
%%   <<"PartOfSpeech">> => part_of_speech_tag(),
%%   <<"Text">> => string(),
%%   <<"TokenId">> => integer()
%% }
-type syntax_token() :: #{binary() => any()}.

%% Example:
%% stop_pii_entities_detection_job_response() :: #{
%%   <<"JobId">> => string(),
%%   <<"JobStatus">> => list(any())
%% }
-type stop_pii_entities_detection_job_response() :: #{binary() => any()}.

%% Example:
%% flywheel_summary() :: #{
%%   <<"ActiveModelArn">> => string(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"DataLakeS3Uri">> => string(),
%%   <<"FlywheelArn">> => string(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"LatestFlywheelIteration">> => string(),
%%   <<"Message">> => string(),
%%   <<"ModelType">> => list(any()),
%%   <<"Status">> => list(any())
%% }
-type flywheel_summary() :: #{binary() => any()}.

%% Example:
%% detect_entities_response() :: #{
%%   <<"Blocks">> => list(block()),
%%   <<"DocumentMetadata">> => document_metadata(),
%%   <<"DocumentType">> => list(document_type_list_item()),
%%   <<"Entities">> => list(entity()),
%%   <<"Errors">> => list(errors_list_item())
%% }
-type detect_entities_response() :: #{binary() => any()}.

%% Example:
%% entity_label() :: #{
%%   <<"Name">> => list(any()),
%%   <<"Score">> => float()
%% }
-type entity_label() :: #{binary() => any()}.

%% Example:
%% point() :: #{
%%   <<"X">> => float(),
%%   <<"Y">> => float()
%% }
-type point() :: #{binary() => any()}.

%% Example:
%% list_document_classifier_summaries_response() :: #{
%%   <<"DocumentClassifierSummariesList">> => list(document_classifier_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_document_classifier_summaries_response() :: #{binary() => any()}.

%% Example:
%% detect_sentiment_request() :: #{
%%   <<"LanguageCode">> := list(any()),
%%   <<"Text">> := string()
%% }
-type detect_sentiment_request() :: #{binary() => any()}.

%% Example:
%% start_sentiment_detection_job_response() :: #{
%%   <<"JobArn">> => string(),
%%   <<"JobId">> => string(),
%%   <<"JobStatus">> => list(any())
%% }
-type start_sentiment_detection_job_response() :: #{binary() => any()}.

%% Example:
%% create_dataset_response() :: #{
%%   <<"DatasetArn">> => string()
%% }
-type create_dataset_response() :: #{binary() => any()}.

%% Example:
%% list_document_classification_jobs_response() :: #{
%%   <<"DocumentClassificationJobPropertiesList">> => list(document_classification_job_properties()),
%%   <<"NextToken">> => string()
%% }
-type list_document_classification_jobs_response() :: #{binary() => any()}.

%% Example:
%% key_phrase() :: #{
%%   <<"BeginOffset">> => integer(),
%%   <<"EndOffset">> => integer(),
%%   <<"Score">> => float(),
%%   <<"Text">> => string()
%% }
-type key_phrase() :: #{binary() => any()}.

%% Example:
%% list_entities_detection_jobs_request() :: #{
%%   <<"Filter">> => entities_detection_job_filter(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_entities_detection_jobs_request() :: #{binary() => any()}.

%% Example:
%% pii_entities_detection_job_filter() :: #{
%%   <<"JobName">> => string(),
%%   <<"JobStatus">> => list(any()),
%%   <<"SubmitTimeAfter">> => non_neg_integer(),
%%   <<"SubmitTimeBefore">> => non_neg_integer()
%% }
-type pii_entities_detection_job_filter() :: #{binary() => any()}.

%% Example:
%% list_topics_detection_jobs_request() :: #{
%%   <<"Filter">> => topics_detection_job_filter(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_topics_detection_jobs_request() :: #{binary() => any()}.

%% Example:
%% stop_entities_detection_job_request() :: #{
%%   <<"JobId">> := string()
%% }
-type stop_entities_detection_job_request() :: #{binary() => any()}.

%% Example:
%% entity_recognizer_entity_list() :: #{
%%   <<"S3Uri">> => string()
%% }
-type entity_recognizer_entity_list() :: #{binary() => any()}.

%% Example:
%% start_targeted_sentiment_detection_job_request() :: #{
%%   <<"ClientRequestToken">> => string(),
%%   <<"DataAccessRoleArn">> := string(),
%%   <<"InputDataConfig">> := input_data_config(),
%%   <<"JobName">> => string(),
%%   <<"LanguageCode">> := list(any()),
%%   <<"OutputDataConfig">> := output_data_config(),
%%   <<"Tags">> => list(tag()),
%%   <<"VolumeKmsKeyId">> => string(),
%%   <<"VpcConfig">> => vpc_config()
%% }
-type start_targeted_sentiment_detection_job_request() :: #{binary() => any()}.

%% Example:
%% delete_document_classifier_request() :: #{
%%   <<"DocumentClassifierArn">> := string()
%% }
-type delete_document_classifier_request() :: #{binary() => any()}.

%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% sentiment_score() :: #{
%%   <<"Mixed">> => float(),
%%   <<"Negative">> => float(),
%%   <<"Neutral">> => float(),
%%   <<"Positive">> => float()
%% }
-type sentiment_score() :: #{binary() => any()}.

%% Example:
%% describe_flywheel_iteration_request() :: #{
%%   <<"FlywheelArn">> := string(),
%%   <<"FlywheelIterationId">> := string()
%% }
-type describe_flywheel_iteration_request() :: #{binary() => any()}.

%% Example:
%% dataset_entity_recognizer_annotations() :: #{
%%   <<"S3Uri">> => string()
%% }
-type dataset_entity_recognizer_annotations() :: #{binary() => any()}.

%% Example:
%% detect_entities_request() :: #{
%%   <<"Bytes">> => binary(),
%%   <<"DocumentReaderConfig">> => document_reader_config(),
%%   <<"EndpointArn">> => string(),
%%   <<"LanguageCode">> => list(any()),
%%   <<"Text">> => string()
%% }
-type detect_entities_request() :: #{binary() => any()}.

%% Example:
%% block_reference() :: #{
%%   <<"BeginOffset">> => integer(),
%%   <<"BlockId">> => string(),
%%   <<"ChildBlocks">> => list(child_block()),
%%   <<"EndOffset">> => integer()
%% }
-type block_reference() :: #{binary() => any()}.

%% Example:
%% start_sentiment_detection_job_request() :: #{
%%   <<"ClientRequestToken">> => string(),
%%   <<"DataAccessRoleArn">> := string(),
%%   <<"InputDataConfig">> := input_data_config(),
%%   <<"JobName">> => string(),
%%   <<"LanguageCode">> := list(any()),
%%   <<"OutputDataConfig">> := output_data_config(),
%%   <<"Tags">> => list(tag()),
%%   <<"VolumeKmsKeyId">> => string(),
%%   <<"VpcConfig">> => vpc_config()
%% }
-type start_sentiment_detection_job_request() :: #{binary() => any()}.

%% Example:
%% list_flywheel_iteration_history_request() :: #{
%%   <<"Filter">> => flywheel_iteration_filter(),
%%   <<"FlywheelArn">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_flywheel_iteration_history_request() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% relationships_list_item() :: #{
%%   <<"Ids">> => list(string()),
%%   <<"Type">> => list(any())
%% }
-type relationships_list_item() :: #{binary() => any()}.

%% Example:
%% document_classifier_filter() :: #{
%%   <<"DocumentClassifierName">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"SubmitTimeAfter">> => non_neg_integer(),
%%   <<"SubmitTimeBefore">> => non_neg_integer()
%% }
-type document_classifier_filter() :: #{binary() => any()}.

%% Example:
%% invalid_request_exception() :: #{
%%   <<"Detail">> => invalid_request_detail(),
%%   <<"Message">> => string(),
%%   <<"Reason">> => list(any())
%% }
-type invalid_request_exception() :: #{binary() => any()}.

%% Example:
%% describe_flywheel_iteration_response() :: #{
%%   <<"FlywheelIterationProperties">> => flywheel_iteration_properties()
%% }
-type describe_flywheel_iteration_response() :: #{binary() => any()}.

%% Example:
%% delete_endpoint_response() :: #{

%% }
-type delete_endpoint_response() :: #{binary() => any()}.

%% Example:
%% batch_detect_key_phrases_response() :: #{
%%   <<"ErrorList">> => list(batch_item_error()),
%%   <<"ResultList">> => list(batch_detect_key_phrases_item_result())
%% }
-type batch_detect_key_phrases_response() :: #{binary() => any()}.

%% Example:
%% describe_pii_entities_detection_job_request() :: #{
%%   <<"JobId">> := string()
%% }
-type describe_pii_entities_detection_job_request() :: #{binary() => any()}.

%% Example:
%% sentiment_detection_job_properties() :: #{
%%   <<"DataAccessRoleArn">> => string(),
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"InputDataConfig">> => input_data_config(),
%%   <<"JobArn">> => string(),
%%   <<"JobId">> => string(),
%%   <<"JobName">> => string(),
%%   <<"JobStatus">> => list(any()),
%%   <<"LanguageCode">> => list(any()),
%%   <<"Message">> => string(),
%%   <<"OutputDataConfig">> => output_data_config(),
%%   <<"SubmitTime">> => non_neg_integer(),
%%   <<"VolumeKmsKeyId">> => string(),
%%   <<"VpcConfig">> => vpc_config()
%% }
-type sentiment_detection_job_properties() :: #{binary() => any()}.

%% Example:
%% mention_sentiment() :: #{
%%   <<"Sentiment">> => list(any()),
%%   <<"SentimentScore">> => sentiment_score()
%% }
-type mention_sentiment() :: #{binary() => any()}.

%% Example:
%% list_endpoints_response() :: #{
%%   <<"EndpointPropertiesList">> => list(endpoint_properties()),
%%   <<"NextToken">> => string()
%% }
-type list_endpoints_response() :: #{binary() => any()}.

%% Example:
%% batch_detect_entities_request() :: #{
%%   <<"LanguageCode">> := list(any()),
%%   <<"TextList">> := list(string())
%% }
-type batch_detect_entities_request() :: #{binary() => any()}.

%% Example:
%% dataset_input_data_config() :: #{
%%   <<"AugmentedManifests">> => list(dataset_augmented_manifests_list_item()),
%%   <<"DataFormat">> => list(any()),
%%   <<"DocumentClassifierInputDataConfig">> => dataset_document_classifier_input_data_config(),
%%   <<"EntityRecognizerInputDataConfig">> => dataset_entity_recognizer_input_data_config()
%% }
-type dataset_input_data_config() :: #{binary() => any()}.

%% Example:
%% describe_document_classifier_response() :: #{
%%   <<"DocumentClassifierProperties">> => document_classifier_properties()
%% }
-type describe_document_classifier_response() :: #{binary() => any()}.

%% Example:
%% dominant_language() :: #{
%%   <<"LanguageCode">> => string(),
%%   <<"Score">> => float()
%% }
-type dominant_language() :: #{binary() => any()}.

%% Example:
%% endpoint_filter() :: #{
%%   <<"CreationTimeAfter">> => non_neg_integer(),
%%   <<"CreationTimeBefore">> => non_neg_integer(),
%%   <<"ModelArn">> => string(),
%%   <<"Status">> => list(any())
%% }
-type endpoint_filter() :: #{binary() => any()}.

%% Example:
%% stop_dominant_language_detection_job_request() :: #{
%%   <<"JobId">> := string()
%% }
-type stop_dominant_language_detection_job_request() :: #{binary() => any()}.

%% Example:
%% list_events_detection_jobs_response() :: #{
%%   <<"EventsDetectionJobPropertiesList">> => list(events_detection_job_properties()),
%%   <<"NextToken">> => string()
%% }
-type list_events_detection_jobs_response() :: #{binary() => any()}.

%% Example:
%% resource_limit_exceeded_exception() :: #{
%%   <<"Message">> => string()
%% }
-type resource_limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% list_sentiment_detection_jobs_request() :: #{
%%   <<"Filter">> => sentiment_detection_job_filter(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_sentiment_detection_jobs_request() :: #{binary() => any()}.

%% Example:
%% batch_size_limit_exceeded_exception() :: #{
%%   <<"Message">> => string()
%% }
-type batch_size_limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% create_document_classifier_response() :: #{
%%   <<"DocumentClassifierArn">> => string()
%% }
-type create_document_classifier_response() :: #{binary() => any()}.

%% Example:
%% pii_output_data_config() :: #{
%%   <<"KmsKeyId">> => string(),
%%   <<"S3Uri">> => string()
%% }
-type pii_output_data_config() :: #{binary() => any()}.

%% Example:
%% document_label() :: #{
%%   <<"Name">> => string(),
%%   <<"Page">> => integer(),
%%   <<"Score">> => float()
%% }
-type document_label() :: #{binary() => any()}.

%% Example:
%% batch_detect_sentiment_response() :: #{
%%   <<"ErrorList">> => list(batch_item_error()),
%%   <<"ResultList">> => list(batch_detect_sentiment_item_result())
%% }
-type batch_detect_sentiment_response() :: #{binary() => any()}.

%% Example:
%% list_document_classifiers_response() :: #{
%%   <<"DocumentClassifierPropertiesList">> => list(document_classifier_properties()),
%%   <<"NextToken">> => string()
%% }
-type list_document_classifiers_response() :: #{binary() => any()}.

%% Example:
%% stop_pii_entities_detection_job_request() :: #{
%%   <<"JobId">> := string()
%% }
-type stop_pii_entities_detection_job_request() :: #{binary() => any()}.

%% Example:
%% vpc_config() :: #{
%%   <<"SecurityGroupIds">> => list(string()),
%%   <<"Subnets">> => list(string())
%% }
-type vpc_config() :: #{binary() => any()}.

%% Example:
%% targeted_sentiment_mention() :: #{
%%   <<"BeginOffset">> => integer(),
%%   <<"EndOffset">> => integer(),
%%   <<"GroupScore">> => float(),
%%   <<"MentionSentiment">> => mention_sentiment(),
%%   <<"Score">> => float(),
%%   <<"Text">> => string(),
%%   <<"Type">> => list(any())
%% }
-type targeted_sentiment_mention() :: #{binary() => any()}.

%% Example:
%% update_data_security_config() :: #{
%%   <<"ModelKmsKeyId">> => string(),
%%   <<"VolumeKmsKeyId">> => string(),
%%   <<"VpcConfig">> => vpc_config()
%% }
-type update_data_security_config() :: #{binary() => any()}.

%% Example:
%% batch_detect_dominant_language_request() :: #{
%%   <<"TextList">> := list(string())
%% }
-type batch_detect_dominant_language_request() :: #{binary() => any()}.

%% Example:
%% start_targeted_sentiment_detection_job_response() :: #{
%%   <<"JobArn">> => string(),
%%   <<"JobId">> => string(),
%%   <<"JobStatus">> => list(any())
%% }
-type start_targeted_sentiment_detection_job_response() :: #{binary() => any()}.

%% Example:
%% describe_endpoint_request() :: #{
%%   <<"EndpointArn">> := string()
%% }
-type describe_endpoint_request() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"ResourceArn">> => string(),
%%   <<"Tags">> => list(tag())
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.

%% Example:
%% errors_list_item() :: #{
%%   <<"ErrorCode">> => list(any()),
%%   <<"ErrorMessage">> => string(),
%%   <<"Page">> => integer()
%% }
-type errors_list_item() :: #{binary() => any()}.

%% Example:
%% create_entity_recognizer_response() :: #{
%%   <<"EntityRecognizerArn">> => string()
%% }
-type create_entity_recognizer_response() :: #{binary() => any()}.

%% Example:
%% text_segment() :: #{
%%   <<"Text">> => string()
%% }
-type text_segment() :: #{binary() => any()}.

%% Example:
%% describe_document_classification_job_response() :: #{
%%   <<"DocumentClassificationJobProperties">> => document_classification_job_properties()
%% }
-type describe_document_classification_job_response() :: #{binary() => any()}.

%% Example:
%% detect_syntax_response() :: #{
%%   <<"SyntaxTokens">> => list(syntax_token())
%% }
-type detect_syntax_response() :: #{binary() => any()}.

%% Example:
%% detect_key_phrases_response() :: #{
%%   <<"KeyPhrases">> => list(key_phrase())
%% }
-type detect_key_phrases_response() :: #{binary() => any()}.

%% Example:
%% start_key_phrases_detection_job_response() :: #{
%%   <<"JobArn">> => string(),
%%   <<"JobId">> => string(),
%%   <<"JobStatus">> => list(any())
%% }
-type start_key_phrases_detection_job_response() :: #{binary() => any()}.

%% Example:
%% start_dominant_language_detection_job_request() :: #{
%%   <<"ClientRequestToken">> => string(),
%%   <<"DataAccessRoleArn">> := string(),
%%   <<"InputDataConfig">> := input_data_config(),
%%   <<"JobName">> => string(),
%%   <<"OutputDataConfig">> := output_data_config(),
%%   <<"Tags">> => list(tag()),
%%   <<"VolumeKmsKeyId">> => string(),
%%   <<"VpcConfig">> => vpc_config()
%% }
-type start_dominant_language_detection_job_request() :: #{binary() => any()}.

%% Example:
%% dataset_properties() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"DatasetArn">> => string(),
%%   <<"DatasetName">> => string(),
%%   <<"DatasetS3Uri">> => string(),
%%   <<"DatasetType">> => list(any()),
%%   <<"Description">> => string(),
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"Message">> => string(),
%%   <<"NumberOfDocuments">> => float(),
%%   <<"Status">> => list(any())
%% }
-type dataset_properties() :: #{binary() => any()}.

%% Example:
%% create_flywheel_request() :: #{
%%   <<"ActiveModelArn">> => string(),
%%   <<"ClientRequestToken">> => string(),
%%   <<"DataAccessRoleArn">> := string(),
%%   <<"DataLakeS3Uri">> := string(),
%%   <<"DataSecurityConfig">> => data_security_config(),
%%   <<"FlywheelName">> := string(),
%%   <<"ModelType">> => list(any()),
%%   <<"Tags">> => list(tag()),
%%   <<"TaskConfig">> => task_config()
%% }
-type create_flywheel_request() :: #{binary() => any()}.

%% Example:
%% entity_recognizer_documents() :: #{
%%   <<"InputFormat">> => list(any()),
%%   <<"S3Uri">> => string(),
%%   <<"TestS3Uri">> => string()
%% }
-type entity_recognizer_documents() :: #{binary() => any()}.

%% Example:
%% stop_training_document_classifier_response() :: #{

%% }
-type stop_training_document_classifier_response() :: #{binary() => any()}.

%% Example:
%% stop_dominant_language_detection_job_response() :: #{
%%   <<"JobId">> => string(),
%%   <<"JobStatus">> => list(any())
%% }
-type stop_dominant_language_detection_job_response() :: #{binary() => any()}.

%% Example:
%% detect_toxic_content_request() :: #{
%%   <<"LanguageCode">> := list(any()),
%%   <<"TextSegments">> := list(text_segment())
%% }
-type detect_toxic_content_request() :: #{binary() => any()}.

%% Example:
%% detect_targeted_sentiment_request() :: #{
%%   <<"LanguageCode">> := list(any()),
%%   <<"Text">> := string()
%% }
-type detect_targeted_sentiment_request() :: #{binary() => any()}.

%% Example:
%% entity_recognizer_filter() :: #{
%%   <<"RecognizerName">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"SubmitTimeAfter">> => non_neg_integer(),
%%   <<"SubmitTimeBefore">> => non_neg_integer()
%% }
-type entity_recognizer_filter() :: #{binary() => any()}.

%% Example:
%% delete_flywheel_response() :: #{

%% }
-type delete_flywheel_response() :: #{binary() => any()}.

%% Example:
%% dominant_language_detection_job_properties() :: #{
%%   <<"DataAccessRoleArn">> => string(),
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"InputDataConfig">> => input_data_config(),
%%   <<"JobArn">> => string(),
%%   <<"JobId">> => string(),
%%   <<"JobName">> => string(),
%%   <<"JobStatus">> => list(any()),
%%   <<"Message">> => string(),
%%   <<"OutputDataConfig">> => output_data_config(),
%%   <<"SubmitTime">> => non_neg_integer(),
%%   <<"VolumeKmsKeyId">> => string(),
%%   <<"VpcConfig">> => vpc_config()
%% }
-type dominant_language_detection_job_properties() :: #{binary() => any()}.

%% Example:
%% describe_entity_recognizer_request() :: #{
%%   <<"EntityRecognizerArn">> := string()
%% }
-type describe_entity_recognizer_request() :: #{binary() => any()}.

%% Example:
%% describe_dominant_language_detection_job_request() :: #{
%%   <<"JobId">> := string()
%% }
-type describe_dominant_language_detection_job_request() :: #{binary() => any()}.

%% Example:
%% document_classifier_summary() :: #{
%%   <<"DocumentClassifierName">> => string(),
%%   <<"LatestVersionCreatedAt">> => non_neg_integer(),
%%   <<"LatestVersionName">> => string(),
%%   <<"LatestVersionStatus">> => list(any()),
%%   <<"NumberOfVersions">> => integer()
%% }
-type document_classifier_summary() :: #{binary() => any()}.

%% Example:
%% list_sentiment_detection_jobs_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"SentimentDetectionJobPropertiesList">> => list(sentiment_detection_job_properties())
%% }
-type list_sentiment_detection_jobs_response() :: #{binary() => any()}.

%% Example:
%% batch_item_error() :: #{
%%   <<"ErrorCode">> => string(),
%%   <<"ErrorMessage">> => string(),
%%   <<"Index">> => integer()
%% }
-type batch_item_error() :: #{binary() => any()}.

%% Example:
%% start_topics_detection_job_response() :: #{
%%   <<"JobArn">> => string(),
%%   <<"JobId">> => string(),
%%   <<"JobStatus">> => list(any())
%% }
-type start_topics_detection_job_response() :: #{binary() => any()}.

%% Example:
%% describe_flywheel_response() :: #{
%%   <<"FlywheelProperties">> => flywheel_properties()
%% }
-type describe_flywheel_response() :: #{binary() => any()}.

%% Example:
%% list_entities_detection_jobs_response() :: #{
%%   <<"EntitiesDetectionJobPropertiesList">> => list(entities_detection_job_properties()),
%%   <<"NextToken">> => string()
%% }
-type list_entities_detection_jobs_response() :: #{binary() => any()}.

%% Example:
%% redaction_config() :: #{
%%   <<"MaskCharacter">> => string(),
%%   <<"MaskMode">> => list(any()),
%%   <<"PiiEntityTypes">> => list(list(any())())
%% }
-type redaction_config() :: #{binary() => any()}.

%% Example:
%% targeted_sentiment_entity() :: #{
%%   <<"DescriptiveMentionIndex">> => list(integer()),
%%   <<"Mentions">> => list(targeted_sentiment_mention())
%% }
-type targeted_sentiment_entity() :: #{binary() => any()}.

%% Example:
%% entities_detection_job_properties() :: #{
%%   <<"DataAccessRoleArn">> => string(),
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"EntityRecognizerArn">> => string(),
%%   <<"FlywheelArn">> => string(),
%%   <<"InputDataConfig">> => input_data_config(),
%%   <<"JobArn">> => string(),
%%   <<"JobId">> => string(),
%%   <<"JobName">> => string(),
%%   <<"JobStatus">> => list(any()),
%%   <<"LanguageCode">> => list(any()),
%%   <<"Message">> => string(),
%%   <<"OutputDataConfig">> => output_data_config(),
%%   <<"SubmitTime">> => non_neg_integer(),
%%   <<"VolumeKmsKeyId">> => string(),
%%   <<"VpcConfig">> => vpc_config()
%% }
-type entities_detection_job_properties() :: #{binary() => any()}.

%% Example:
%% stop_training_entity_recognizer_request() :: #{
%%   <<"EntityRecognizerArn">> := string()
%% }
-type stop_training_entity_recognizer_request() :: #{binary() => any()}.

%% Example:
%% pii_entity() :: #{
%%   <<"BeginOffset">> => integer(),
%%   <<"EndOffset">> => integer(),
%%   <<"Score">> => float(),
%%   <<"Type">> => list(any())
%% }
-type pii_entity() :: #{binary() => any()}.

%% Example:
%% list_entity_recognizer_summaries_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_entity_recognizer_summaries_request() :: #{binary() => any()}.

%% Example:
%% warnings_list_item() :: #{
%%   <<"Page">> => integer(),
%%   <<"WarnCode">> => list(any()),
%%   <<"WarnMessage">> => string()
%% }
-type warnings_list_item() :: #{binary() => any()}.

%% Example:
%% batch_detect_sentiment_request() :: #{
%%   <<"LanguageCode">> := list(any()),
%%   <<"TextList">> := list(string())
%% }
-type batch_detect_sentiment_request() :: #{binary() => any()}.

%% Example:
%% document_classifier_documents() :: #{
%%   <<"S3Uri">> => string(),
%%   <<"TestS3Uri">> => string()
%% }
-type document_classifier_documents() :: #{binary() => any()}.

%% Example:
%% stop_targeted_sentiment_detection_job_request() :: #{
%%   <<"JobId">> := string()
%% }
-type stop_targeted_sentiment_detection_job_request() :: #{binary() => any()}.

%% Example:
%% internal_server_exception() :: #{
%%   <<"Message">> => string()
%% }
-type internal_server_exception() :: #{binary() => any()}.

%% Example:
%% describe_targeted_sentiment_detection_job_request() :: #{
%%   <<"JobId">> := string()
%% }
-type describe_targeted_sentiment_detection_job_request() :: #{binary() => any()}.

%% Example:
%% document_type_list_item() :: #{
%%   <<"Page">> => integer(),
%%   <<"Type">> => list(any())
%% }
-type document_type_list_item() :: #{binary() => any()}.

%% Example:
%% bounding_box() :: #{
%%   <<"Height">> => float(),
%%   <<"Left">> => float(),
%%   <<"Top">> => float(),
%%   <<"Width">> => float()
%% }
-type bounding_box() :: #{binary() => any()}.

%% Example:
%% detect_dominant_language_response() :: #{
%%   <<"Languages">> => list(dominant_language())
%% }
-type detect_dominant_language_response() :: #{binary() => any()}.

%% Example:
%% list_endpoints_request() :: #{
%%   <<"Filter">> => endpoint_filter(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_endpoints_request() :: #{binary() => any()}.

%% Example:
%% targeted_sentiment_detection_job_filter() :: #{
%%   <<"JobName">> => string(),
%%   <<"JobStatus">> => list(any()),
%%   <<"SubmitTimeAfter">> => non_neg_integer(),
%%   <<"SubmitTimeBefore">> => non_neg_integer()
%% }
-type targeted_sentiment_detection_job_filter() :: #{binary() => any()}.

%% Example:
%% endpoint_properties() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"CurrentInferenceUnits">> => integer(),
%%   <<"DataAccessRoleArn">> => string(),
%%   <<"DesiredDataAccessRoleArn">> => string(),
%%   <<"DesiredInferenceUnits">> => integer(),
%%   <<"DesiredModelArn">> => string(),
%%   <<"EndpointArn">> => string(),
%%   <<"FlywheelArn">> => string(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"Message">> => string(),
%%   <<"ModelArn">> => string(),
%%   <<"Status">> => list(any())
%% }
-type endpoint_properties() :: #{binary() => any()}.

%% Example:
%% delete_endpoint_request() :: #{
%%   <<"EndpointArn">> := string()
%% }
-type delete_endpoint_request() :: #{binary() => any()}.

%% Example:
%% batch_detect_sentiment_item_result() :: #{
%%   <<"Index">> => integer(),
%%   <<"Sentiment">> => list(any()),
%%   <<"SentimentScore">> => sentiment_score()
%% }
-type batch_detect_sentiment_item_result() :: #{binary() => any()}.

%% Example:
%% put_resource_policy_request() :: #{
%%   <<"PolicyRevisionId">> => string(),
%%   <<"ResourceArn">> := string(),
%%   <<"ResourcePolicy">> := string()
%% }
-type put_resource_policy_request() :: #{binary() => any()}.

%% Example:
%% document_classification_job_filter() :: #{
%%   <<"JobName">> => string(),
%%   <<"JobStatus">> => list(any()),
%%   <<"SubmitTimeAfter">> => non_neg_integer(),
%%   <<"SubmitTimeBefore">> => non_neg_integer()
%% }
-type document_classification_job_filter() :: #{binary() => any()}.

%% Example:
%% describe_document_classifier_request() :: #{
%%   <<"DocumentClassifierArn">> := string()
%% }
-type describe_document_classifier_request() :: #{binary() => any()}.

%% Example:
%% entity_recognition_config() :: #{
%%   <<"EntityTypes">> => list(entity_types_list_item())
%% }
-type entity_recognition_config() :: #{binary() => any()}.

%% Example:
%% text_size_limit_exceeded_exception() :: #{
%%   <<"Message">> => string()
%% }
-type text_size_limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% describe_key_phrases_detection_job_response() :: #{
%%   <<"KeyPhrasesDetectionJobProperties">> => key_phrases_detection_job_properties()
%% }
-type describe_key_phrases_detection_job_response() :: #{binary() => any()}.

%% Example:
%% stop_key_phrases_detection_job_response() :: #{
%%   <<"JobId">> => string(),
%%   <<"JobStatus">> => list(any())
%% }
-type stop_key_phrases_detection_job_response() :: #{binary() => any()}.

%% Example:
%% describe_endpoint_response() :: #{
%%   <<"EndpointProperties">> => endpoint_properties()
%% }
-type describe_endpoint_response() :: #{binary() => any()}.

%% Example:
%% start_entities_detection_job_response() :: #{
%%   <<"EntityRecognizerArn">> => string(),
%%   <<"JobArn">> => string(),
%%   <<"JobId">> => string(),
%%   <<"JobStatus">> => list(any())
%% }
-type start_entities_detection_job_response() :: #{binary() => any()}.

%% Example:
%% entity_recognizer_metadata_entity_types_list_item() :: #{
%%   <<"EvaluationMetrics">> => entity_types_evaluation_metrics(),
%%   <<"NumberOfTrainMentions">> => integer(),
%%   <<"Type">> => string()
%% }
-type entity_recognizer_metadata_entity_types_list_item() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{

%% }
-type tag_resource_response() :: #{binary() => any()}.

%% Example:
%% entity_recognizer_annotations() :: #{
%%   <<"S3Uri">> => string(),
%%   <<"TestS3Uri">> => string()
%% }
-type entity_recognizer_annotations() :: #{binary() => any()}.

%% Example:
%% key_phrases_detection_job_properties() :: #{
%%   <<"DataAccessRoleArn">> => string(),
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"InputDataConfig">> => input_data_config(),
%%   <<"JobArn">> => string(),
%%   <<"JobId">> => string(),
%%   <<"JobName">> => string(),
%%   <<"JobStatus">> => list(any()),
%%   <<"LanguageCode">> => list(any()),
%%   <<"Message">> => string(),
%%   <<"OutputDataConfig">> => output_data_config(),
%%   <<"SubmitTime">> => non_neg_integer(),
%%   <<"VolumeKmsKeyId">> => string(),
%%   <<"VpcConfig">> => vpc_config()
%% }
-type key_phrases_detection_job_properties() :: #{binary() => any()}.

%% Example:
%% create_flywheel_response() :: #{
%%   <<"ActiveModelArn">> => string(),
%%   <<"FlywheelArn">> => string()
%% }
-type create_flywheel_response() :: #{binary() => any()}.

%% Example:
%% concurrent_modification_exception() :: #{
%%   <<"Message">> => string()
%% }
-type concurrent_modification_exception() :: #{binary() => any()}.

%% Example:
%% pii_entities_detection_job_properties() :: #{
%%   <<"DataAccessRoleArn">> => string(),
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"InputDataConfig">> => input_data_config(),
%%   <<"JobArn">> => string(),
%%   <<"JobId">> => string(),
%%   <<"JobName">> => string(),
%%   <<"JobStatus">> => list(any()),
%%   <<"LanguageCode">> => list(any()),
%%   <<"Message">> => string(),
%%   <<"Mode">> => list(any()),
%%   <<"OutputDataConfig">> => pii_output_data_config(),
%%   <<"RedactionConfig">> => redaction_config(),
%%   <<"SubmitTime">> => non_neg_integer()
%% }
-type pii_entities_detection_job_properties() :: #{binary() => any()}.

%% Example:
%% stop_key_phrases_detection_job_request() :: #{
%%   <<"JobId">> := string()
%% }
-type stop_key_phrases_detection_job_request() :: #{binary() => any()}.

%% Example:
%% unsupported_language_exception() :: #{
%%   <<"Message">> => string()
%% }
-type unsupported_language_exception() :: #{binary() => any()}.

%% Example:
%% describe_dataset_response() :: #{
%%   <<"DatasetProperties">> => dataset_properties()
%% }
-type describe_dataset_response() :: #{binary() => any()}.

%% Example:
%% entity_recognizer_metadata() :: #{
%%   <<"EntityTypes">> => list(entity_recognizer_metadata_entity_types_list_item()),
%%   <<"EvaluationMetrics">> => entity_recognizer_evaluation_metrics(),
%%   <<"NumberOfTestDocuments">> => integer(),
%%   <<"NumberOfTrainedDocuments">> => integer()
%% }
-type entity_recognizer_metadata() :: #{binary() => any()}.

%% Example:
%% delete_document_classifier_response() :: #{

%% }
-type delete_document_classifier_response() :: #{binary() => any()}.

%% Example:
%% flywheel_iteration_properties() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"EvaluatedModelArn">> => string(),
%%   <<"EvaluatedModelMetrics">> => flywheel_model_evaluation_metrics(),
%%   <<"EvaluationManifestS3Prefix">> => string(),
%%   <<"FlywheelArn">> => string(),
%%   <<"FlywheelIterationId">> => string(),
%%   <<"Message">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"TrainedModelArn">> => string(),
%%   <<"TrainedModelMetrics">> => flywheel_model_evaluation_metrics()
%% }
-type flywheel_iteration_properties() :: #{binary() => any()}.

%% Example:
%% list_key_phrases_detection_jobs_request() :: #{
%%   <<"Filter">> => key_phrases_detection_job_filter(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_key_phrases_detection_jobs_request() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{
%%   <<"ResourceArn">> := string()
%% }
-type list_tags_for_resource_request() :: #{binary() => any()}.

%% Example:
%% batch_detect_key_phrases_item_result() :: #{
%%   <<"Index">> => integer(),
%%   <<"KeyPhrases">> => list(key_phrase())
%% }
-type batch_detect_key_phrases_item_result() :: #{binary() => any()}.

%% Example:
%% create_dataset_request() :: #{
%%   <<"ClientRequestToken">> => string(),
%%   <<"DatasetName">> := string(),
%%   <<"DatasetType">> => list(any()),
%%   <<"Description">> => string(),
%%   <<"FlywheelArn">> := string(),
%%   <<"InputDataConfig">> := dataset_input_data_config(),
%%   <<"Tags">> => list(tag())
%% }
-type create_dataset_request() :: #{binary() => any()}.

%% Example:
%% detect_dominant_language_request() :: #{
%%   <<"Text">> := string()
%% }
-type detect_dominant_language_request() :: #{binary() => any()}.

%% Example:
%% document_metadata() :: #{
%%   <<"ExtractedCharacters">> => list(extracted_characters_list_item()),
%%   <<"Pages">> => integer()
%% }
-type document_metadata() :: #{binary() => any()}.

%% Example:
%% update_flywheel_response() :: #{
%%   <<"FlywheelProperties">> => flywheel_properties()
%% }
-type update_flywheel_response() :: #{binary() => any()}.

%% Example:
%% list_document_classification_jobs_request() :: #{
%%   <<"Filter">> => document_classification_job_filter(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_document_classification_jobs_request() :: #{binary() => any()}.

%% Example:
%% describe_key_phrases_detection_job_request() :: #{
%%   <<"JobId">> := string()
%% }
-type describe_key_phrases_detection_job_request() :: #{binary() => any()}.

%% Example:
%% start_pii_entities_detection_job_response() :: #{
%%   <<"JobArn">> => string(),
%%   <<"JobId">> => string(),
%%   <<"JobStatus">> => list(any())
%% }
-type start_pii_entities_detection_job_response() :: #{binary() => any()}.

%% Example:
%% stop_targeted_sentiment_detection_job_response() :: #{
%%   <<"JobId">> => string(),
%%   <<"JobStatus">> => list(any())
%% }
-type stop_targeted_sentiment_detection_job_response() :: #{binary() => any()}.

%% Example:
%% start_pii_entities_detection_job_request() :: #{
%%   <<"ClientRequestToken">> => string(),
%%   <<"DataAccessRoleArn">> := string(),
%%   <<"InputDataConfig">> := input_data_config(),
%%   <<"JobName">> => string(),
%%   <<"LanguageCode">> := list(any()),
%%   <<"Mode">> := list(any()),
%%   <<"OutputDataConfig">> := output_data_config(),
%%   <<"RedactionConfig">> => redaction_config(),
%%   <<"Tags">> => list(tag())
%% }
-type start_pii_entities_detection_job_request() :: #{binary() => any()}.

%% Example:
%% detect_pii_entities_request() :: #{
%%   <<"LanguageCode">> := list(any()),
%%   <<"Text">> := string()
%% }
-type detect_pii_entities_request() :: #{binary() => any()}.

%% Example:
%% stop_events_detection_job_request() :: #{
%%   <<"JobId">> := string()
%% }
-type stop_events_detection_job_request() :: #{binary() => any()}.

%% Example:
%% topics_detection_job_filter() :: #{
%%   <<"JobName">> => string(),
%%   <<"JobStatus">> => list(any()),
%%   <<"SubmitTimeAfter">> => non_neg_integer(),
%%   <<"SubmitTimeBefore">> => non_neg_integer()
%% }
-type topics_detection_job_filter() :: #{binary() => any()}.

%% Example:
%% describe_resource_policy_response() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"PolicyRevisionId">> => string(),
%%   <<"ResourcePolicy">> => string()
%% }
-type describe_resource_policy_response() :: #{binary() => any()}.

%% Example:
%% describe_entities_detection_job_response() :: #{
%%   <<"EntitiesDetectionJobProperties">> => entities_detection_job_properties()
%% }
-type describe_entities_detection_job_response() :: #{binary() => any()}.

%% Example:
%% list_topics_detection_jobs_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"TopicsDetectionJobPropertiesList">> => list(topics_detection_job_properties())
%% }
-type list_topics_detection_jobs_response() :: #{binary() => any()}.

%% Example:
%% batch_detect_targeted_sentiment_item_result() :: #{
%%   <<"Entities">> => list(targeted_sentiment_entity()),
%%   <<"Index">> => integer()
%% }
-type batch_detect_targeted_sentiment_item_result() :: #{binary() => any()}.

%% Example:
%% list_targeted_sentiment_detection_jobs_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"TargetedSentimentDetectionJobPropertiesList">> => list(targeted_sentiment_detection_job_properties())
%% }
-type list_targeted_sentiment_detection_jobs_response() :: #{binary() => any()}.

%% Example:
%% toxic_content() :: #{
%%   <<"Name">> => list(any()),
%%   <<"Score">> => float()
%% }
-type toxic_content() :: #{binary() => any()}.

%% Example:
%% list_events_detection_jobs_request() :: #{
%%   <<"Filter">> => events_detection_job_filter(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_events_detection_jobs_request() :: #{binary() => any()}.

%% Example:
%% list_targeted_sentiment_detection_jobs_request() :: #{
%%   <<"Filter">> => targeted_sentiment_detection_job_filter(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_targeted_sentiment_detection_jobs_request() :: #{binary() => any()}.

%% Example:
%% put_resource_policy_response() :: #{
%%   <<"PolicyRevisionId">> => string()
%% }
-type put_resource_policy_response() :: #{binary() => any()}.

%% Example:
%% output_data_config() :: #{
%%   <<"KmsKeyId">> => string(),
%%   <<"S3Uri">> => string()
%% }
-type output_data_config() :: #{binary() => any()}.

%% Example:
%% dominant_language_detection_job_filter() :: #{
%%   <<"JobName">> => string(),
%%   <<"JobStatus">> => list(any()),
%%   <<"SubmitTimeAfter">> => non_neg_integer(),
%%   <<"SubmitTimeBefore">> => non_neg_integer()
%% }
-type dominant_language_detection_job_filter() :: #{binary() => any()}.

%% Example:
%% detect_sentiment_response() :: #{
%%   <<"Sentiment">> => list(any()),
%%   <<"SentimentScore">> => sentiment_score()
%% }
-type detect_sentiment_response() :: #{binary() => any()}.

%% Example:
%% batch_detect_key_phrases_request() :: #{
%%   <<"LanguageCode">> := list(any()),
%%   <<"TextList">> := list(string())
%% }
-type batch_detect_key_phrases_request() :: #{binary() => any()}.

%% Example:
%% describe_pii_entities_detection_job_response() :: #{
%%   <<"PiiEntitiesDetectionJobProperties">> => pii_entities_detection_job_properties()
%% }
-type describe_pii_entities_detection_job_response() :: #{binary() => any()}.

%% Example:
%% batch_detect_entities_item_result() :: #{
%%   <<"Entities">> => list(entity()),
%%   <<"Index">> => integer()
%% }
-type batch_detect_entities_item_result() :: #{binary() => any()}.

%% Example:
%% toxic_labels() :: #{
%%   <<"Labels">> => list(toxic_content()),
%%   <<"Toxicity">> => float()
%% }
-type toxic_labels() :: #{binary() => any()}.

%% Example:
%% detect_targeted_sentiment_response() :: #{
%%   <<"Entities">> => list(targeted_sentiment_entity())
%% }
-type detect_targeted_sentiment_response() :: #{binary() => any()}.

%% Example:
%% delete_resource_policy_request() :: #{
%%   <<"PolicyRevisionId">> => string(),
%%   <<"ResourceArn">> := string()
%% }
-type delete_resource_policy_request() :: #{binary() => any()}.

%% Example:
%% entity_types_list_item() :: #{
%%   <<"Type">> => string()
%% }
-type entity_types_list_item() :: #{binary() => any()}.

%% Example:
%% job_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type job_not_found_exception() :: #{binary() => any()}.

%% Example:
%% list_key_phrases_detection_jobs_response() :: #{
%%   <<"KeyPhrasesDetectionJobPropertiesList">> => list(key_phrases_detection_job_properties()),
%%   <<"NextToken">> => string()
%% }
-type list_key_phrases_detection_jobs_response() :: #{binary() => any()}.

%% Example:
%% flywheel_model_evaluation_metrics() :: #{
%%   <<"AverageAccuracy">> => float(),
%%   <<"AverageF1Score">> => float(),
%%   <<"AveragePrecision">> => float(),
%%   <<"AverageRecall">> => float()
%% }
-type flywheel_model_evaluation_metrics() :: #{binary() => any()}.

%% Example:
%% start_flywheel_iteration_response() :: #{
%%   <<"FlywheelArn">> => string(),
%%   <<"FlywheelIterationId">> => string()
%% }
-type start_flywheel_iteration_response() :: #{binary() => any()}.

%% Example:
%% batch_detect_targeted_sentiment_response() :: #{
%%   <<"ErrorList">> => list(batch_item_error()),
%%   <<"ResultList">> => list(batch_detect_targeted_sentiment_item_result())
%% }
-type batch_detect_targeted_sentiment_response() :: #{binary() => any()}.

%% Example:
%% describe_dataset_request() :: #{
%%   <<"DatasetArn">> := string()
%% }
-type describe_dataset_request() :: #{binary() => any()}.

%% Example:
%% start_document_classification_job_response() :: #{
%%   <<"DocumentClassifierArn">> => string(),
%%   <<"JobArn">> => string(),
%%   <<"JobId">> => string(),
%%   <<"JobStatus">> => list(any())
%% }
-type start_document_classification_job_response() :: #{binary() => any()}.

%% Example:
%% list_datasets_response() :: #{
%%   <<"DatasetPropertiesList">> => list(dataset_properties()),
%%   <<"NextToken">> => string()
%% }
-type list_datasets_response() :: #{binary() => any()}.

%% Example:
%% create_endpoint_response() :: #{
%%   <<"EndpointArn">> => string(),
%%   <<"ModelArn">> => string()
%% }
-type create_endpoint_response() :: #{binary() => any()}.

%% Example:
%% events_detection_job_filter() :: #{
%%   <<"JobName">> => string(),
%%   <<"JobStatus">> => list(any()),
%%   <<"SubmitTimeAfter">> => non_neg_integer(),
%%   <<"SubmitTimeBefore">> => non_neg_integer()
%% }
-type events_detection_job_filter() :: #{binary() => any()}.

%% Example:
%% flywheel_properties() :: #{
%%   <<"ActiveModelArn">> => string(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"DataAccessRoleArn">> => string(),
%%   <<"DataLakeS3Uri">> => string(),
%%   <<"DataSecurityConfig">> => data_security_config(),
%%   <<"FlywheelArn">> => string(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"LatestFlywheelIteration">> => string(),
%%   <<"Message">> => string(),
%%   <<"ModelType">> => list(any()),
%%   <<"Status">> => list(any()),
%%   <<"TaskConfig">> => task_config()
%% }
-type flywheel_properties() :: #{binary() => any()}.

%% Example:
%% detect_toxic_content_response() :: #{
%%   <<"ResultList">> => list(toxic_labels())
%% }
-type detect_toxic_content_response() :: #{binary() => any()}.

%% Example:
%% start_dominant_language_detection_job_response() :: #{
%%   <<"JobArn">> => string(),
%%   <<"JobId">> => string(),
%%   <<"JobStatus">> => list(any())
%% }
-type start_dominant_language_detection_job_response() :: #{binary() => any()}.

%% Example:
%% start_key_phrases_detection_job_request() :: #{
%%   <<"ClientRequestToken">> => string(),
%%   <<"DataAccessRoleArn">> := string(),
%%   <<"InputDataConfig">> := input_data_config(),
%%   <<"JobName">> => string(),
%%   <<"LanguageCode">> := list(any()),
%%   <<"OutputDataConfig">> := output_data_config(),
%%   <<"Tags">> => list(tag()),
%%   <<"VolumeKmsKeyId">> => string(),
%%   <<"VpcConfig">> => vpc_config()
%% }
-type start_key_phrases_detection_job_request() :: #{binary() => any()}.

%% Example:
%% describe_sentiment_detection_job_response() :: #{
%%   <<"SentimentDetectionJobProperties">> => sentiment_detection_job_properties()
%% }
-type describe_sentiment_detection_job_response() :: #{binary() => any()}.

%% Example:
%% block() :: #{
%%   <<"BlockType">> => list(any()),
%%   <<"Geometry">> => geometry(),
%%   <<"Id">> => string(),
%%   <<"Page">> => integer(),
%%   <<"Relationships">> => list(relationships_list_item()),
%%   <<"Text">> => string()
%% }
-type block() :: #{binary() => any()}.

%% Example:
%% dataset_filter() :: #{
%%   <<"CreationTimeAfter">> => non_neg_integer(),
%%   <<"CreationTimeBefore">> => non_neg_integer(),
%%   <<"DatasetType">> => list(any()),
%%   <<"Status">> => list(any())
%% }
-type dataset_filter() :: #{binary() => any()}.

%% Example:
%% child_block() :: #{
%%   <<"BeginOffset">> => integer(),
%%   <<"ChildBlockId">> => string(),
%%   <<"EndOffset">> => integer()
%% }
-type child_block() :: #{binary() => any()}.

%% Example:
%% start_events_detection_job_response() :: #{
%%   <<"JobArn">> => string(),
%%   <<"JobId">> => string(),
%%   <<"JobStatus">> => list(any())
%% }
-type start_events_detection_job_response() :: #{binary() => any()}.

%% Example:
%% list_entity_recognizer_summaries_response() :: #{
%%   <<"EntityRecognizerSummariesList">> => list(entity_recognizer_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_entity_recognizer_summaries_response() :: #{binary() => any()}.

%% Example:
%% targeted_sentiment_detection_job_properties() :: #{
%%   <<"DataAccessRoleArn">> => string(),
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"InputDataConfig">> => input_data_config(),
%%   <<"JobArn">> => string(),
%%   <<"JobId">> => string(),
%%   <<"JobName">> => string(),
%%   <<"JobStatus">> => list(any()),
%%   <<"LanguageCode">> => list(any()),
%%   <<"Message">> => string(),
%%   <<"OutputDataConfig">> => output_data_config(),
%%   <<"SubmitTime">> => non_neg_integer(),
%%   <<"VolumeKmsKeyId">> => string(),
%%   <<"VpcConfig">> => vpc_config()
%% }
-type targeted_sentiment_detection_job_properties() :: #{binary() => any()}.

%% Example:
%% batch_detect_entities_response() :: #{
%%   <<"ErrorList">> => list(batch_item_error()),
%%   <<"ResultList">> => list(batch_detect_entities_item_result())
%% }
-type batch_detect_entities_response() :: #{binary() => any()}.

%% Example:
%% import_model_request() :: #{
%%   <<"DataAccessRoleArn">> => string(),
%%   <<"ModelKmsKeyId">> => string(),
%%   <<"ModelName">> => string(),
%%   <<"SourceModelArn">> := string(),
%%   <<"Tags">> => list(tag()),
%%   <<"VersionName">> => string()
%% }
-type import_model_request() :: #{binary() => any()}.

%% Example:
%% stop_events_detection_job_response() :: #{
%%   <<"JobId">> => string(),
%%   <<"JobStatus">> => list(any())
%% }
-type stop_events_detection_job_response() :: #{binary() => any()}.

%% Example:
%% kms_key_validation_exception() :: #{
%%   <<"Message">> => string()
%% }
-type kms_key_validation_exception() :: #{binary() => any()}.

%% Example:
%% stop_entities_detection_job_response() :: #{
%%   <<"JobId">> => string(),
%%   <<"JobStatus">> => list(any())
%% }
-type stop_entities_detection_job_response() :: #{binary() => any()}.

%% Example:
%% list_dominant_language_detection_jobs_request() :: #{
%%   <<"Filter">> => dominant_language_detection_job_filter(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_dominant_language_detection_jobs_request() :: #{binary() => any()}.

%% Example:
%% list_pii_entities_detection_jobs_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"PiiEntitiesDetectionJobPropertiesList">> => list(pii_entities_detection_job_properties())
%% }
-type list_pii_entities_detection_jobs_response() :: #{binary() => any()}.

%% Example:
%% describe_flywheel_request() :: #{
%%   <<"FlywheelArn">> := string()
%% }
-type describe_flywheel_request() :: #{binary() => any()}.

%% Example:
%% dataset_entity_recognizer_input_data_config() :: #{
%%   <<"Annotations">> => dataset_entity_recognizer_annotations(),
%%   <<"Documents">> => dataset_entity_recognizer_documents(),
%%   <<"EntityList">> => dataset_entity_recognizer_entity_list()
%% }
-type dataset_entity_recognizer_input_data_config() :: #{binary() => any()}.

%% Example:
%% dataset_entity_recognizer_entity_list() :: #{
%%   <<"S3Uri">> => string()
%% }
-type dataset_entity_recognizer_entity_list() :: #{binary() => any()}.

%% Example:
%% list_document_classifiers_request() :: #{
%%   <<"Filter">> => document_classifier_filter(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_document_classifiers_request() :: #{binary() => any()}.

%% Example:
%% flywheel_filter() :: #{
%%   <<"CreationTimeAfter">> => non_neg_integer(),
%%   <<"CreationTimeBefore">> => non_neg_integer(),
%%   <<"Status">> => list(any())
%% }
-type flywheel_filter() :: #{binary() => any()}.

%% Example:
%% batch_detect_syntax_response() :: #{
%%   <<"ErrorList">> => list(batch_item_error()),
%%   <<"ResultList">> => list(batch_detect_syntax_item_result())
%% }
-type batch_detect_syntax_response() :: #{binary() => any()}.

%% Example:
%% entity_recognizer_output_data_config() :: #{
%%   <<"FlywheelStatsS3Prefix">> => string()
%% }
-type entity_recognizer_output_data_config() :: #{binary() => any()}.

%% Example:
%% extracted_characters_list_item() :: #{
%%   <<"Count">> => integer(),
%%   <<"Page">> => integer()
%% }
-type extracted_characters_list_item() :: #{binary() => any()}.

%% Example:
%% document_classification_config() :: #{
%%   <<"Labels">> => list(string()),
%%   <<"Mode">> => list(any())
%% }
-type document_classification_config() :: #{binary() => any()}.

%% Example:
%% too_many_tags_exception() :: #{
%%   <<"Message">> => string()
%% }
-type too_many_tags_exception() :: #{binary() => any()}.

%% Example:
%% classify_document_response() :: #{
%%   <<"Classes">> => list(document_class()),
%%   <<"DocumentMetadata">> => document_metadata(),
%%   <<"DocumentType">> => list(document_type_list_item()),
%%   <<"Errors">> => list(errors_list_item()),
%%   <<"Labels">> => list(document_label()),
%%   <<"Warnings">> => list(warnings_list_item())
%% }
-type classify_document_response() :: #{binary() => any()}.

%% Example:
%% delete_flywheel_request() :: #{
%%   <<"FlywheelArn">> := string()
%% }
-type delete_flywheel_request() :: #{binary() => any()}.

%% Example:
%% start_topics_detection_job_request() :: #{
%%   <<"ClientRequestToken">> => string(),
%%   <<"DataAccessRoleArn">> := string(),
%%   <<"InputDataConfig">> := input_data_config(),
%%   <<"JobName">> => string(),
%%   <<"NumberOfTopics">> => integer(),
%%   <<"OutputDataConfig">> := output_data_config(),
%%   <<"Tags">> => list(tag()),
%%   <<"VolumeKmsKeyId">> => string(),
%%   <<"VpcConfig">> => vpc_config()
%% }
-type start_topics_detection_job_request() :: #{binary() => any()}.

%% Example:
%% describe_resource_policy_request() :: #{
%%   <<"ResourceArn">> := string()
%% }
-type describe_resource_policy_request() :: #{binary() => any()}.

%% Example:
%% document_class() :: #{
%%   <<"Name">> => string(),
%%   <<"Page">> => integer(),
%%   <<"Score">> => float()
%% }
-type document_class() :: #{binary() => any()}.

%% Example:
%% entity_types_evaluation_metrics() :: #{
%%   <<"F1Score">> => float(),
%%   <<"Precision">> => float(),
%%   <<"Recall">> => float()
%% }
-type entity_types_evaluation_metrics() :: #{binary() => any()}.

%% Example:
%% entities_detection_job_filter() :: #{
%%   <<"JobName">> => string(),
%%   <<"JobStatus">> => list(any()),
%%   <<"SubmitTimeAfter">> => non_neg_integer(),
%%   <<"SubmitTimeBefore">> => non_neg_integer()
%% }
-type entities_detection_job_filter() :: #{binary() => any()}.

%% Example:
%% document_classification_job_properties() :: #{
%%   <<"DataAccessRoleArn">> => string(),
%%   <<"DocumentClassifierArn">> => string(),
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"FlywheelArn">> => string(),
%%   <<"InputDataConfig">> => input_data_config(),
%%   <<"JobArn">> => string(),
%%   <<"JobId">> => string(),
%%   <<"JobName">> => string(),
%%   <<"JobStatus">> => list(any()),
%%   <<"Message">> => string(),
%%   <<"OutputDataConfig">> => output_data_config(),
%%   <<"SubmitTime">> => non_neg_integer(),
%%   <<"VolumeKmsKeyId">> => string(),
%%   <<"VpcConfig">> => vpc_config()
%% }
-type document_classification_job_properties() :: #{binary() => any()}.

%% Example:
%% list_dominant_language_detection_jobs_response() :: #{
%%   <<"DominantLanguageDetectionJobPropertiesList">> => list(dominant_language_detection_job_properties()),
%%   <<"NextToken">> => string()
%% }
-type list_dominant_language_detection_jobs_response() :: #{binary() => any()}.

-type batch_detect_dominant_language_errors() ::
    text_size_limit_exceeded_exception() | 
    internal_server_exception() | 
    batch_size_limit_exceeded_exception() | 
    invalid_request_exception().

-type batch_detect_entities_errors() ::
    unsupported_language_exception() | 
    text_size_limit_exceeded_exception() | 
    internal_server_exception() | 
    batch_size_limit_exceeded_exception() | 
    invalid_request_exception().

-type batch_detect_key_phrases_errors() ::
    unsupported_language_exception() | 
    text_size_limit_exceeded_exception() | 
    internal_server_exception() | 
    batch_size_limit_exceeded_exception() | 
    invalid_request_exception().

-type batch_detect_sentiment_errors() ::
    unsupported_language_exception() | 
    text_size_limit_exceeded_exception() | 
    internal_server_exception() | 
    batch_size_limit_exceeded_exception() | 
    invalid_request_exception().

-type batch_detect_syntax_errors() ::
    unsupported_language_exception() | 
    text_size_limit_exceeded_exception() | 
    internal_server_exception() | 
    batch_size_limit_exceeded_exception() | 
    invalid_request_exception().

-type batch_detect_targeted_sentiment_errors() ::
    unsupported_language_exception() | 
    text_size_limit_exceeded_exception() | 
    internal_server_exception() | 
    batch_size_limit_exceeded_exception() | 
    invalid_request_exception().

-type classify_document_errors() ::
    text_size_limit_exceeded_exception() | 
    internal_server_exception() | 
    invalid_request_exception() | 
    resource_unavailable_exception().

-type contains_pii_entities_errors() ::
    unsupported_language_exception() | 
    text_size_limit_exceeded_exception() | 
    internal_server_exception() | 
    invalid_request_exception().

-type create_dataset_errors() ::
    too_many_tags_exception() | 
    internal_server_exception() | 
    resource_limit_exceeded_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception() | 
    resource_in_use_exception().

-type create_document_classifier_errors() ::
    too_many_tags_exception() | 
    kms_key_validation_exception() | 
    unsupported_language_exception() | 
    internal_server_exception() | 
    resource_limit_exceeded_exception() | 
    invalid_request_exception() | 
    too_many_requests_exception() | 
    resource_in_use_exception().

-type create_endpoint_errors() ::
    too_many_tags_exception() | 
    internal_server_exception() | 
    resource_limit_exceeded_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception() | 
    resource_unavailable_exception() | 
    resource_in_use_exception().

-type create_entity_recognizer_errors() ::
    too_many_tags_exception() | 
    kms_key_validation_exception() | 
    unsupported_language_exception() | 
    internal_server_exception() | 
    resource_limit_exceeded_exception() | 
    invalid_request_exception() | 
    too_many_requests_exception() | 
    resource_in_use_exception().

-type create_flywheel_errors() ::
    too_many_tags_exception() | 
    kms_key_validation_exception() | 
    unsupported_language_exception() | 
    internal_server_exception() | 
    resource_limit_exceeded_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception() | 
    resource_unavailable_exception() | 
    resource_in_use_exception().

-type delete_document_classifier_errors() ::
    internal_server_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception() | 
    resource_unavailable_exception() | 
    resource_in_use_exception().

-type delete_endpoint_errors() ::
    internal_server_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception() | 
    resource_in_use_exception().

-type delete_entity_recognizer_errors() ::
    internal_server_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception() | 
    resource_unavailable_exception() | 
    resource_in_use_exception().

-type delete_flywheel_errors() ::
    internal_server_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception() | 
    resource_unavailable_exception() | 
    resource_in_use_exception().

-type delete_resource_policy_errors() ::
    internal_server_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type describe_dataset_errors() ::
    internal_server_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type describe_document_classification_job_errors() ::
    job_not_found_exception() | 
    internal_server_exception() | 
    invalid_request_exception() | 
    too_many_requests_exception().

-type describe_document_classifier_errors() ::
    internal_server_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type describe_dominant_language_detection_job_errors() ::
    job_not_found_exception() | 
    internal_server_exception() | 
    invalid_request_exception() | 
    too_many_requests_exception().

-type describe_endpoint_errors() ::
    internal_server_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type describe_entities_detection_job_errors() ::
    job_not_found_exception() | 
    internal_server_exception() | 
    invalid_request_exception() | 
    too_many_requests_exception().

-type describe_entity_recognizer_errors() ::
    internal_server_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type describe_events_detection_job_errors() ::
    job_not_found_exception() | 
    internal_server_exception() | 
    invalid_request_exception() | 
    too_many_requests_exception().

-type describe_flywheel_errors() ::
    internal_server_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type describe_flywheel_iteration_errors() ::
    internal_server_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type describe_key_phrases_detection_job_errors() ::
    job_not_found_exception() | 
    internal_server_exception() | 
    invalid_request_exception() | 
    too_many_requests_exception().

-type describe_pii_entities_detection_job_errors() ::
    job_not_found_exception() | 
    internal_server_exception() | 
    invalid_request_exception() | 
    too_many_requests_exception().

-type describe_resource_policy_errors() ::
    internal_server_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type describe_sentiment_detection_job_errors() ::
    job_not_found_exception() | 
    internal_server_exception() | 
    invalid_request_exception() | 
    too_many_requests_exception().

-type describe_targeted_sentiment_detection_job_errors() ::
    job_not_found_exception() | 
    internal_server_exception() | 
    invalid_request_exception() | 
    too_many_requests_exception().

-type describe_topics_detection_job_errors() ::
    job_not_found_exception() | 
    internal_server_exception() | 
    invalid_request_exception() | 
    too_many_requests_exception().

-type detect_dominant_language_errors() ::
    text_size_limit_exceeded_exception() | 
    internal_server_exception() | 
    invalid_request_exception().

-type detect_entities_errors() ::
    unsupported_language_exception() | 
    text_size_limit_exceeded_exception() | 
    internal_server_exception() | 
    invalid_request_exception() | 
    resource_unavailable_exception().

-type detect_key_phrases_errors() ::
    unsupported_language_exception() | 
    text_size_limit_exceeded_exception() | 
    internal_server_exception() | 
    invalid_request_exception().

-type detect_pii_entities_errors() ::
    unsupported_language_exception() | 
    text_size_limit_exceeded_exception() | 
    internal_server_exception() | 
    invalid_request_exception().

-type detect_sentiment_errors() ::
    unsupported_language_exception() | 
    text_size_limit_exceeded_exception() | 
    internal_server_exception() | 
    invalid_request_exception().

-type detect_syntax_errors() ::
    unsupported_language_exception() | 
    text_size_limit_exceeded_exception() | 
    internal_server_exception() | 
    invalid_request_exception().

-type detect_targeted_sentiment_errors() ::
    unsupported_language_exception() | 
    text_size_limit_exceeded_exception() | 
    internal_server_exception() | 
    invalid_request_exception().

-type detect_toxic_content_errors() ::
    unsupported_language_exception() | 
    text_size_limit_exceeded_exception() | 
    internal_server_exception() | 
    invalid_request_exception().

-type import_model_errors() ::
    too_many_tags_exception() | 
    kms_key_validation_exception() | 
    internal_server_exception() | 
    resource_limit_exceeded_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception() | 
    resource_unavailable_exception() | 
    resource_in_use_exception().

-type list_datasets_errors() ::
    internal_server_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    invalid_filter_exception() | 
    too_many_requests_exception().

-type list_document_classification_jobs_errors() ::
    internal_server_exception() | 
    invalid_request_exception() | 
    invalid_filter_exception() | 
    too_many_requests_exception().

-type list_document_classifier_summaries_errors() ::
    internal_server_exception() | 
    invalid_request_exception() | 
    too_many_requests_exception().

-type list_document_classifiers_errors() ::
    internal_server_exception() | 
    invalid_request_exception() | 
    invalid_filter_exception() | 
    too_many_requests_exception().

-type list_dominant_language_detection_jobs_errors() ::
    internal_server_exception() | 
    invalid_request_exception() | 
    invalid_filter_exception() | 
    too_many_requests_exception().

-type list_endpoints_errors() ::
    internal_server_exception() | 
    invalid_request_exception() | 
    too_many_requests_exception().

-type list_entities_detection_jobs_errors() ::
    internal_server_exception() | 
    invalid_request_exception() | 
    invalid_filter_exception() | 
    too_many_requests_exception().

-type list_entity_recognizer_summaries_errors() ::
    internal_server_exception() | 
    invalid_request_exception() | 
    too_many_requests_exception().

-type list_entity_recognizers_errors() ::
    internal_server_exception() | 
    invalid_request_exception() | 
    invalid_filter_exception() | 
    too_many_requests_exception().

-type list_events_detection_jobs_errors() ::
    internal_server_exception() | 
    invalid_request_exception() | 
    invalid_filter_exception() | 
    too_many_requests_exception().

-type list_flywheel_iteration_history_errors() ::
    internal_server_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    invalid_filter_exception() | 
    too_many_requests_exception().

-type list_flywheels_errors() ::
    internal_server_exception() | 
    invalid_request_exception() | 
    invalid_filter_exception() | 
    too_many_requests_exception().

-type list_key_phrases_detection_jobs_errors() ::
    internal_server_exception() | 
    invalid_request_exception() | 
    invalid_filter_exception() | 
    too_many_requests_exception().

-type list_pii_entities_detection_jobs_errors() ::
    internal_server_exception() | 
    invalid_request_exception() | 
    invalid_filter_exception() | 
    too_many_requests_exception().

-type list_sentiment_detection_jobs_errors() ::
    internal_server_exception() | 
    invalid_request_exception() | 
    invalid_filter_exception() | 
    too_many_requests_exception().

-type list_tags_for_resource_errors() ::
    internal_server_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type list_targeted_sentiment_detection_jobs_errors() ::
    internal_server_exception() | 
    invalid_request_exception() | 
    invalid_filter_exception() | 
    too_many_requests_exception().

-type list_topics_detection_jobs_errors() ::
    internal_server_exception() | 
    invalid_request_exception() | 
    invalid_filter_exception() | 
    too_many_requests_exception().

-type put_resource_policy_errors() ::
    internal_server_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type start_document_classification_job_errors() ::
    too_many_tags_exception() | 
    kms_key_validation_exception() | 
    internal_server_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception() | 
    resource_unavailable_exception() | 
    resource_in_use_exception().

-type start_dominant_language_detection_job_errors() ::
    too_many_tags_exception() | 
    kms_key_validation_exception() | 
    internal_server_exception() | 
    invalid_request_exception() | 
    too_many_requests_exception() | 
    resource_in_use_exception().

-type start_entities_detection_job_errors() ::
    too_many_tags_exception() | 
    kms_key_validation_exception() | 
    internal_server_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception() | 
    resource_unavailable_exception() | 
    resource_in_use_exception().

-type start_events_detection_job_errors() ::
    too_many_tags_exception() | 
    kms_key_validation_exception() | 
    internal_server_exception() | 
    invalid_request_exception() | 
    too_many_requests_exception() | 
    resource_in_use_exception().

-type start_flywheel_iteration_errors() ::
    internal_server_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception() | 
    resource_in_use_exception().

-type start_key_phrases_detection_job_errors() ::
    too_many_tags_exception() | 
    kms_key_validation_exception() | 
    internal_server_exception() | 
    invalid_request_exception() | 
    too_many_requests_exception() | 
    resource_in_use_exception().

-type start_pii_entities_detection_job_errors() ::
    too_many_tags_exception() | 
    kms_key_validation_exception() | 
    internal_server_exception() | 
    invalid_request_exception() | 
    too_many_requests_exception() | 
    resource_in_use_exception().

-type start_sentiment_detection_job_errors() ::
    too_many_tags_exception() | 
    kms_key_validation_exception() | 
    internal_server_exception() | 
    invalid_request_exception() | 
    too_many_requests_exception() | 
    resource_in_use_exception().

-type start_targeted_sentiment_detection_job_errors() ::
    too_many_tags_exception() | 
    kms_key_validation_exception() | 
    internal_server_exception() | 
    invalid_request_exception() | 
    too_many_requests_exception() | 
    resource_in_use_exception().

-type start_topics_detection_job_errors() ::
    too_many_tags_exception() | 
    kms_key_validation_exception() | 
    internal_server_exception() | 
    invalid_request_exception() | 
    too_many_requests_exception() | 
    resource_in_use_exception().

-type stop_dominant_language_detection_job_errors() ::
    job_not_found_exception() | 
    internal_server_exception() | 
    invalid_request_exception().

-type stop_entities_detection_job_errors() ::
    job_not_found_exception() | 
    internal_server_exception() | 
    invalid_request_exception().

-type stop_events_detection_job_errors() ::
    job_not_found_exception() | 
    internal_server_exception() | 
    invalid_request_exception().

-type stop_key_phrases_detection_job_errors() ::
    job_not_found_exception() | 
    internal_server_exception() | 
    invalid_request_exception().

-type stop_pii_entities_detection_job_errors() ::
    job_not_found_exception() | 
    internal_server_exception() | 
    invalid_request_exception().

-type stop_sentiment_detection_job_errors() ::
    job_not_found_exception() | 
    internal_server_exception() | 
    invalid_request_exception().

-type stop_targeted_sentiment_detection_job_errors() ::
    job_not_found_exception() | 
    internal_server_exception() | 
    invalid_request_exception().

-type stop_training_document_classifier_errors() ::
    internal_server_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type stop_training_entity_recognizer_errors() ::
    internal_server_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type tag_resource_errors() ::
    too_many_tags_exception() | 
    concurrent_modification_exception() | 
    internal_server_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    concurrent_modification_exception() | 
    internal_server_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    too_many_tag_keys_exception().

-type update_endpoint_errors() ::
    internal_server_exception() | 
    resource_limit_exceeded_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception() | 
    resource_unavailable_exception() | 
    resource_in_use_exception().

-type update_flywheel_errors() ::
    kms_key_validation_exception() | 
    internal_server_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Determines the dominant language of the input text for a batch of
%% documents.
%%
%% For a list
%% of languages that Amazon Comprehend can detect, see Amazon Comprehend
%% Supported Languages:
%% https://docs.aws.amazon.com/comprehend/latest/dg/how-languages.html.
-spec batch_detect_dominant_language(aws_client:aws_client(), batch_detect_dominant_language_request()) ->
    {ok, batch_detect_dominant_language_response(), tuple()} |
    {error, any()} |
    {error, batch_detect_dominant_language_errors(), tuple()}.
batch_detect_dominant_language(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_detect_dominant_language(Client, Input, []).

-spec batch_detect_dominant_language(aws_client:aws_client(), batch_detect_dominant_language_request(), proplists:proplist()) ->
    {ok, batch_detect_dominant_language_response(), tuple()} |
    {error, any()} |
    {error, batch_detect_dominant_language_errors(), tuple()}.
batch_detect_dominant_language(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchDetectDominantLanguage">>, Input, Options).

%% @doc Inspects the text of a batch of documents for named entities and
%% returns information
%% about them.
%%
%% For more information about named entities, see
%% Entities:
%% https://docs.aws.amazon.com/comprehend/latest/dg/how-entities.html in the
%% Comprehend Developer Guide.
-spec batch_detect_entities(aws_client:aws_client(), batch_detect_entities_request()) ->
    {ok, batch_detect_entities_response(), tuple()} |
    {error, any()} |
    {error, batch_detect_entities_errors(), tuple()}.
batch_detect_entities(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_detect_entities(Client, Input, []).

-spec batch_detect_entities(aws_client:aws_client(), batch_detect_entities_request(), proplists:proplist()) ->
    {ok, batch_detect_entities_response(), tuple()} |
    {error, any()} |
    {error, batch_detect_entities_errors(), tuple()}.
batch_detect_entities(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchDetectEntities">>, Input, Options).

%% @doc Detects the key noun phrases found in a batch of documents.
-spec batch_detect_key_phrases(aws_client:aws_client(), batch_detect_key_phrases_request()) ->
    {ok, batch_detect_key_phrases_response(), tuple()} |
    {error, any()} |
    {error, batch_detect_key_phrases_errors(), tuple()}.
batch_detect_key_phrases(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_detect_key_phrases(Client, Input, []).

-spec batch_detect_key_phrases(aws_client:aws_client(), batch_detect_key_phrases_request(), proplists:proplist()) ->
    {ok, batch_detect_key_phrases_response(), tuple()} |
    {error, any()} |
    {error, batch_detect_key_phrases_errors(), tuple()}.
batch_detect_key_phrases(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchDetectKeyPhrases">>, Input, Options).

%% @doc Inspects a batch of documents and returns an inference of the
%% prevailing sentiment,
%% `POSITIVE', `NEUTRAL', `MIXED', or `NEGATIVE',
%% in each one.
-spec batch_detect_sentiment(aws_client:aws_client(), batch_detect_sentiment_request()) ->
    {ok, batch_detect_sentiment_response(), tuple()} |
    {error, any()} |
    {error, batch_detect_sentiment_errors(), tuple()}.
batch_detect_sentiment(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_detect_sentiment(Client, Input, []).

-spec batch_detect_sentiment(aws_client:aws_client(), batch_detect_sentiment_request(), proplists:proplist()) ->
    {ok, batch_detect_sentiment_response(), tuple()} |
    {error, any()} |
    {error, batch_detect_sentiment_errors(), tuple()}.
batch_detect_sentiment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchDetectSentiment">>, Input, Options).

%% @doc Inspects the text of a batch of documents for the syntax and part of
%% speech of the words
%% in the document and returns information about them.
%%
%% For more information, see
%% Syntax: https://docs.aws.amazon.com/comprehend/latest/dg/how-syntax.html
%% in the Comprehend Developer Guide.
-spec batch_detect_syntax(aws_client:aws_client(), batch_detect_syntax_request()) ->
    {ok, batch_detect_syntax_response(), tuple()} |
    {error, any()} |
    {error, batch_detect_syntax_errors(), tuple()}.
batch_detect_syntax(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_detect_syntax(Client, Input, []).

-spec batch_detect_syntax(aws_client:aws_client(), batch_detect_syntax_request(), proplists:proplist()) ->
    {ok, batch_detect_syntax_response(), tuple()} |
    {error, any()} |
    {error, batch_detect_syntax_errors(), tuple()}.
batch_detect_syntax(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchDetectSyntax">>, Input, Options).

%% @doc Inspects a batch of documents and returns a sentiment analysis
%% for each entity identified in the documents.
%%
%% For more information about targeted sentiment, see Targeted sentiment:
%% https://docs.aws.amazon.com/comprehend/latest/dg/how-targeted-sentiment.html
%% in the Amazon Comprehend Developer Guide.
-spec batch_detect_targeted_sentiment(aws_client:aws_client(), batch_detect_targeted_sentiment_request()) ->
    {ok, batch_detect_targeted_sentiment_response(), tuple()} |
    {error, any()} |
    {error, batch_detect_targeted_sentiment_errors(), tuple()}.
batch_detect_targeted_sentiment(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_detect_targeted_sentiment(Client, Input, []).

-spec batch_detect_targeted_sentiment(aws_client:aws_client(), batch_detect_targeted_sentiment_request(), proplists:proplist()) ->
    {ok, batch_detect_targeted_sentiment_response(), tuple()} |
    {error, any()} |
    {error, batch_detect_targeted_sentiment_errors(), tuple()}.
batch_detect_targeted_sentiment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchDetectTargetedSentiment">>, Input, Options).

%% @doc Creates a classification request to analyze a single document in
%% real-time.
%%
%% `ClassifyDocument'
%% supports the following model types:
%%
%% Custom classifier - a custom model that you have created and trained.
%% For input, you can provide plain text, a single-page document (PDF, Word,
%% or image), or
%% Amazon Textract API output. For more information, see Custom
%% classification:
%% https://docs.aws.amazon.com/comprehend/latest/dg/how-document-classification.html
%% in the Amazon Comprehend Developer Guide.
%%
%% Prompt safety classifier - Amazon Comprehend provides a pre-trained model
%% for classifying
%% input prompts for generative AI applications.
%% For input, you provide English plain text input.
%% For prompt safety classification, the response includes only the
%% `Classes' field.
%% For more information about prompt safety classifiers, see Prompt safety
%% classification:
%% https://docs.aws.amazon.com/comprehend/latest/dg/trust-safety.html#prompt-classification
%% in the Amazon Comprehend Developer Guide.
%%
%% If the system detects errors while processing a page in the input
%% document,
%% the API response includes an `Errors' field that describes the errors.
%%
%% If the system detects a document-level error in your input document, the
%% API returns an
%% `InvalidRequestException' error response.
%% For details about this exception, see
%%
%% Errors in semi-structured documents:
%% https://docs.aws.amazon.com/comprehend/latest/dg/idp-inputs-sync-err.html
%% in the Comprehend Developer Guide.
-spec classify_document(aws_client:aws_client(), classify_document_request()) ->
    {ok, classify_document_response(), tuple()} |
    {error, any()} |
    {error, classify_document_errors(), tuple()}.
classify_document(Client, Input)
  when is_map(Client), is_map(Input) ->
    classify_document(Client, Input, []).

-spec classify_document(aws_client:aws_client(), classify_document_request(), proplists:proplist()) ->
    {ok, classify_document_response(), tuple()} |
    {error, any()} |
    {error, classify_document_errors(), tuple()}.
classify_document(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ClassifyDocument">>, Input, Options).

%% @doc Analyzes input text for the presence of personally identifiable
%% information (PII) and
%% returns the labels of identified PII entity types such as name, address,
%% bank account number,
%% or phone number.
-spec contains_pii_entities(aws_client:aws_client(), contains_pii_entities_request()) ->
    {ok, contains_pii_entities_response(), tuple()} |
    {error, any()} |
    {error, contains_pii_entities_errors(), tuple()}.
contains_pii_entities(Client, Input)
  when is_map(Client), is_map(Input) ->
    contains_pii_entities(Client, Input, []).

-spec contains_pii_entities(aws_client:aws_client(), contains_pii_entities_request(), proplists:proplist()) ->
    {ok, contains_pii_entities_response(), tuple()} |
    {error, any()} |
    {error, contains_pii_entities_errors(), tuple()}.
contains_pii_entities(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ContainsPiiEntities">>, Input, Options).

%% @doc Creates a dataset to upload training or test data for a model
%% associated with a flywheel.
%%
%% For more information about datasets, see
%% Flywheel overview:
%% https://docs.aws.amazon.com/comprehend/latest/dg/flywheels-about.html in
%% the Amazon Comprehend Developer Guide.
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

%% @doc Creates a new document classifier that you can use to categorize
%% documents.
%%
%% To create a
%% classifier, you provide a set of training documents that are labeled with
%% the categories that you
%% want to use. For more information, see
%% Training classifier models:
%% https://docs.aws.amazon.com/comprehend/latest/dg/training-classifier-model.html
%% in the Comprehend Developer Guide.
-spec create_document_classifier(aws_client:aws_client(), create_document_classifier_request()) ->
    {ok, create_document_classifier_response(), tuple()} |
    {error, any()} |
    {error, create_document_classifier_errors(), tuple()}.
create_document_classifier(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_document_classifier(Client, Input, []).

-spec create_document_classifier(aws_client:aws_client(), create_document_classifier_request(), proplists:proplist()) ->
    {ok, create_document_classifier_response(), tuple()} |
    {error, any()} |
    {error, create_document_classifier_errors(), tuple()}.
create_document_classifier(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDocumentClassifier">>, Input, Options).

%% @doc Creates a model-specific endpoint for synchronous inference for a
%% previously trained
%% custom model
%% For information about endpoints, see Managing endpoints:
%% https://docs.aws.amazon.com/comprehend/latest/dg/manage-endpoints.html.
-spec create_endpoint(aws_client:aws_client(), create_endpoint_request()) ->
    {ok, create_endpoint_response(), tuple()} |
    {error, any()} |
    {error, create_endpoint_errors(), tuple()}.
create_endpoint(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_endpoint(Client, Input, []).

-spec create_endpoint(aws_client:aws_client(), create_endpoint_request(), proplists:proplist()) ->
    {ok, create_endpoint_response(), tuple()} |
    {error, any()} |
    {error, create_endpoint_errors(), tuple()}.
create_endpoint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateEndpoint">>, Input, Options).

%% @doc Creates an entity recognizer using submitted files.
%%
%% After your
%% `CreateEntityRecognizer' request is submitted, you can check job
%% status using the
%% `DescribeEntityRecognizer' API.
-spec create_entity_recognizer(aws_client:aws_client(), create_entity_recognizer_request()) ->
    {ok, create_entity_recognizer_response(), tuple()} |
    {error, any()} |
    {error, create_entity_recognizer_errors(), tuple()}.
create_entity_recognizer(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_entity_recognizer(Client, Input, []).

-spec create_entity_recognizer(aws_client:aws_client(), create_entity_recognizer_request(), proplists:proplist()) ->
    {ok, create_entity_recognizer_response(), tuple()} |
    {error, any()} |
    {error, create_entity_recognizer_errors(), tuple()}.
create_entity_recognizer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateEntityRecognizer">>, Input, Options).

%% @doc A flywheel is an Amazon Web Services resource that orchestrates the
%% ongoing training of a model for custom classification
%% or custom entity recognition.
%%
%% You can create a flywheel to start with an existing trained model, or
%% Comprehend can create and train a new model.
%%
%% When you create the flywheel, Comprehend creates a data lake in your
%% account. The data lake holds the training
%% data and test data for all versions of the model.
%%
%% To use a flywheel with an existing trained model, you specify the active
%% model version. Comprehend copies the model's
%% training data and test data into the flywheel's data lake.
%%
%% To use the flywheel with a new model, you need to provide a dataset for
%% training data (and optional test data)
%% when you create the flywheel.
%%
%% For more information about flywheels, see
%% Flywheel overview:
%% https://docs.aws.amazon.com/comprehend/latest/dg/flywheels-about.html in
%% the Amazon Comprehend Developer Guide.
-spec create_flywheel(aws_client:aws_client(), create_flywheel_request()) ->
    {ok, create_flywheel_response(), tuple()} |
    {error, any()} |
    {error, create_flywheel_errors(), tuple()}.
create_flywheel(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_flywheel(Client, Input, []).

-spec create_flywheel(aws_client:aws_client(), create_flywheel_request(), proplists:proplist()) ->
    {ok, create_flywheel_response(), tuple()} |
    {error, any()} |
    {error, create_flywheel_errors(), tuple()}.
create_flywheel(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateFlywheel">>, Input, Options).

%% @doc Deletes a previously created document classifier
%%
%% Only those classifiers that are in terminated states (IN_ERROR, TRAINED)
%% will be deleted.
%%
%% If an active inference job is using the model, a
%% `ResourceInUseException' will be
%% returned.
%%
%% This is an asynchronous action that puts the classifier into a DELETING
%% state, and it is
%% then removed by a background job. Once removed, the classifier disappears
%% from your account
%% and is no longer available for use.
-spec delete_document_classifier(aws_client:aws_client(), delete_document_classifier_request()) ->
    {ok, delete_document_classifier_response(), tuple()} |
    {error, any()} |
    {error, delete_document_classifier_errors(), tuple()}.
delete_document_classifier(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_document_classifier(Client, Input, []).

-spec delete_document_classifier(aws_client:aws_client(), delete_document_classifier_request(), proplists:proplist()) ->
    {ok, delete_document_classifier_response(), tuple()} |
    {error, any()} |
    {error, delete_document_classifier_errors(), tuple()}.
delete_document_classifier(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDocumentClassifier">>, Input, Options).

%% @doc Deletes a model-specific endpoint for a previously-trained custom
%% model.
%%
%% All endpoints
%% must be deleted in order for the model to be deleted.
%% For information about endpoints, see Managing endpoints:
%% https://docs.aws.amazon.com/comprehend/latest/dg/manage-endpoints.html.
-spec delete_endpoint(aws_client:aws_client(), delete_endpoint_request()) ->
    {ok, delete_endpoint_response(), tuple()} |
    {error, any()} |
    {error, delete_endpoint_errors(), tuple()}.
delete_endpoint(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_endpoint(Client, Input, []).

-spec delete_endpoint(aws_client:aws_client(), delete_endpoint_request(), proplists:proplist()) ->
    {ok, delete_endpoint_response(), tuple()} |
    {error, any()} |
    {error, delete_endpoint_errors(), tuple()}.
delete_endpoint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteEndpoint">>, Input, Options).

%% @doc Deletes an entity recognizer.
%%
%% Only those recognizers that are in terminated states (IN_ERROR, TRAINED)
%% will be deleted.
%% If an active inference job is using the model, a
%% `ResourceInUseException' will be
%% returned.
%%
%% This is an asynchronous action that puts the recognizer into a DELETING
%% state, and it is
%% then removed by a background job. Once removed, the recognizer disappears
%% from your account
%% and is no longer available for use.
-spec delete_entity_recognizer(aws_client:aws_client(), delete_entity_recognizer_request()) ->
    {ok, delete_entity_recognizer_response(), tuple()} |
    {error, any()} |
    {error, delete_entity_recognizer_errors(), tuple()}.
delete_entity_recognizer(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_entity_recognizer(Client, Input, []).

-spec delete_entity_recognizer(aws_client:aws_client(), delete_entity_recognizer_request(), proplists:proplist()) ->
    {ok, delete_entity_recognizer_response(), tuple()} |
    {error, any()} |
    {error, delete_entity_recognizer_errors(), tuple()}.
delete_entity_recognizer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteEntityRecognizer">>, Input, Options).

%% @doc Deletes a flywheel.
%%
%% When you delete the flywheel, Amazon Comprehend
%% does not delete the data lake or the model associated with the flywheel.
%%
%% For more information about flywheels, see
%% Flywheel overview:
%% https://docs.aws.amazon.com/comprehend/latest/dg/flywheels-about.html in
%% the Amazon Comprehend Developer Guide.
-spec delete_flywheel(aws_client:aws_client(), delete_flywheel_request()) ->
    {ok, delete_flywheel_response(), tuple()} |
    {error, any()} |
    {error, delete_flywheel_errors(), tuple()}.
delete_flywheel(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_flywheel(Client, Input, []).

-spec delete_flywheel(aws_client:aws_client(), delete_flywheel_request(), proplists:proplist()) ->
    {ok, delete_flywheel_response(), tuple()} |
    {error, any()} |
    {error, delete_flywheel_errors(), tuple()}.
delete_flywheel(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteFlywheel">>, Input, Options).

%% @doc Deletes a resource-based policy that is attached to a custom model.
-spec delete_resource_policy(aws_client:aws_client(), delete_resource_policy_request()) ->
    {ok, delete_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, delete_resource_policy_errors(), tuple()}.
delete_resource_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_resource_policy(Client, Input, []).

-spec delete_resource_policy(aws_client:aws_client(), delete_resource_policy_request(), proplists:proplist()) ->
    {ok, delete_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, delete_resource_policy_errors(), tuple()}.
delete_resource_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteResourcePolicy">>, Input, Options).

%% @doc Returns information about the dataset that you specify.
%%
%% For more information about datasets, see
%% Flywheel overview:
%% https://docs.aws.amazon.com/comprehend/latest/dg/flywheels-about.html in
%% the Amazon Comprehend Developer Guide.
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

%% @doc Gets the properties associated with a document classification job.
%%
%% Use this operation to
%% get the status of a classification job.
-spec describe_document_classification_job(aws_client:aws_client(), describe_document_classification_job_request()) ->
    {ok, describe_document_classification_job_response(), tuple()} |
    {error, any()} |
    {error, describe_document_classification_job_errors(), tuple()}.
describe_document_classification_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_document_classification_job(Client, Input, []).

-spec describe_document_classification_job(aws_client:aws_client(), describe_document_classification_job_request(), proplists:proplist()) ->
    {ok, describe_document_classification_job_response(), tuple()} |
    {error, any()} |
    {error, describe_document_classification_job_errors(), tuple()}.
describe_document_classification_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDocumentClassificationJob">>, Input, Options).

%% @doc Gets the properties associated with a document classifier.
-spec describe_document_classifier(aws_client:aws_client(), describe_document_classifier_request()) ->
    {ok, describe_document_classifier_response(), tuple()} |
    {error, any()} |
    {error, describe_document_classifier_errors(), tuple()}.
describe_document_classifier(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_document_classifier(Client, Input, []).

-spec describe_document_classifier(aws_client:aws_client(), describe_document_classifier_request(), proplists:proplist()) ->
    {ok, describe_document_classifier_response(), tuple()} |
    {error, any()} |
    {error, describe_document_classifier_errors(), tuple()}.
describe_document_classifier(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDocumentClassifier">>, Input, Options).

%% @doc Gets the properties associated with a dominant language detection
%% job.
%%
%% Use this operation
%% to get the status of a detection job.
-spec describe_dominant_language_detection_job(aws_client:aws_client(), describe_dominant_language_detection_job_request()) ->
    {ok, describe_dominant_language_detection_job_response(), tuple()} |
    {error, any()} |
    {error, describe_dominant_language_detection_job_errors(), tuple()}.
describe_dominant_language_detection_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_dominant_language_detection_job(Client, Input, []).

-spec describe_dominant_language_detection_job(aws_client:aws_client(), describe_dominant_language_detection_job_request(), proplists:proplist()) ->
    {ok, describe_dominant_language_detection_job_response(), tuple()} |
    {error, any()} |
    {error, describe_dominant_language_detection_job_errors(), tuple()}.
describe_dominant_language_detection_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDominantLanguageDetectionJob">>, Input, Options).

%% @doc Gets the properties associated with a specific endpoint.
%%
%% Use this operation to get the
%% status of an endpoint.
%% For information about endpoints, see Managing endpoints:
%% https://docs.aws.amazon.com/comprehend/latest/dg/manage-endpoints.html.
-spec describe_endpoint(aws_client:aws_client(), describe_endpoint_request()) ->
    {ok, describe_endpoint_response(), tuple()} |
    {error, any()} |
    {error, describe_endpoint_errors(), tuple()}.
describe_endpoint(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_endpoint(Client, Input, []).

-spec describe_endpoint(aws_client:aws_client(), describe_endpoint_request(), proplists:proplist()) ->
    {ok, describe_endpoint_response(), tuple()} |
    {error, any()} |
    {error, describe_endpoint_errors(), tuple()}.
describe_endpoint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEndpoint">>, Input, Options).

%% @doc Gets the properties associated with an entities detection job.
%%
%% Use this operation to get
%% the status of a detection job.
-spec describe_entities_detection_job(aws_client:aws_client(), describe_entities_detection_job_request()) ->
    {ok, describe_entities_detection_job_response(), tuple()} |
    {error, any()} |
    {error, describe_entities_detection_job_errors(), tuple()}.
describe_entities_detection_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_entities_detection_job(Client, Input, []).

-spec describe_entities_detection_job(aws_client:aws_client(), describe_entities_detection_job_request(), proplists:proplist()) ->
    {ok, describe_entities_detection_job_response(), tuple()} |
    {error, any()} |
    {error, describe_entities_detection_job_errors(), tuple()}.
describe_entities_detection_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEntitiesDetectionJob">>, Input, Options).

%% @doc Provides details about an entity recognizer including status, S3
%% buckets containing
%% training data, recognizer metadata, metrics, and so on.
-spec describe_entity_recognizer(aws_client:aws_client(), describe_entity_recognizer_request()) ->
    {ok, describe_entity_recognizer_response(), tuple()} |
    {error, any()} |
    {error, describe_entity_recognizer_errors(), tuple()}.
describe_entity_recognizer(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_entity_recognizer(Client, Input, []).

-spec describe_entity_recognizer(aws_client:aws_client(), describe_entity_recognizer_request(), proplists:proplist()) ->
    {ok, describe_entity_recognizer_response(), tuple()} |
    {error, any()} |
    {error, describe_entity_recognizer_errors(), tuple()}.
describe_entity_recognizer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEntityRecognizer">>, Input, Options).

%% @doc Gets the status and details of an events detection job.
-spec describe_events_detection_job(aws_client:aws_client(), describe_events_detection_job_request()) ->
    {ok, describe_events_detection_job_response(), tuple()} |
    {error, any()} |
    {error, describe_events_detection_job_errors(), tuple()}.
describe_events_detection_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_events_detection_job(Client, Input, []).

-spec describe_events_detection_job(aws_client:aws_client(), describe_events_detection_job_request(), proplists:proplist()) ->
    {ok, describe_events_detection_job_response(), tuple()} |
    {error, any()} |
    {error, describe_events_detection_job_errors(), tuple()}.
describe_events_detection_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEventsDetectionJob">>, Input, Options).

%% @doc Provides configuration information about the flywheel.
%%
%% For more information about flywheels, see
%% Flywheel overview:
%% https://docs.aws.amazon.com/comprehend/latest/dg/flywheels-about.html in
%% the Amazon Comprehend Developer Guide.
-spec describe_flywheel(aws_client:aws_client(), describe_flywheel_request()) ->
    {ok, describe_flywheel_response(), tuple()} |
    {error, any()} |
    {error, describe_flywheel_errors(), tuple()}.
describe_flywheel(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_flywheel(Client, Input, []).

-spec describe_flywheel(aws_client:aws_client(), describe_flywheel_request(), proplists:proplist()) ->
    {ok, describe_flywheel_response(), tuple()} |
    {error, any()} |
    {error, describe_flywheel_errors(), tuple()}.
describe_flywheel(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeFlywheel">>, Input, Options).

%% @doc Retrieve the configuration properties of a flywheel iteration.
%%
%% For more information about flywheels, see
%% Flywheel overview:
%% https://docs.aws.amazon.com/comprehend/latest/dg/flywheels-about.html in
%% the Amazon Comprehend Developer Guide.
-spec describe_flywheel_iteration(aws_client:aws_client(), describe_flywheel_iteration_request()) ->
    {ok, describe_flywheel_iteration_response(), tuple()} |
    {error, any()} |
    {error, describe_flywheel_iteration_errors(), tuple()}.
describe_flywheel_iteration(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_flywheel_iteration(Client, Input, []).

-spec describe_flywheel_iteration(aws_client:aws_client(), describe_flywheel_iteration_request(), proplists:proplist()) ->
    {ok, describe_flywheel_iteration_response(), tuple()} |
    {error, any()} |
    {error, describe_flywheel_iteration_errors(), tuple()}.
describe_flywheel_iteration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeFlywheelIteration">>, Input, Options).

%% @doc Gets the properties associated with a key phrases detection job.
%%
%% Use this operation to get
%% the status of a detection job.
-spec describe_key_phrases_detection_job(aws_client:aws_client(), describe_key_phrases_detection_job_request()) ->
    {ok, describe_key_phrases_detection_job_response(), tuple()} |
    {error, any()} |
    {error, describe_key_phrases_detection_job_errors(), tuple()}.
describe_key_phrases_detection_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_key_phrases_detection_job(Client, Input, []).

-spec describe_key_phrases_detection_job(aws_client:aws_client(), describe_key_phrases_detection_job_request(), proplists:proplist()) ->
    {ok, describe_key_phrases_detection_job_response(), tuple()} |
    {error, any()} |
    {error, describe_key_phrases_detection_job_errors(), tuple()}.
describe_key_phrases_detection_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeKeyPhrasesDetectionJob">>, Input, Options).

%% @doc Gets the properties associated with a PII entities detection job.
%%
%% For example, you can use
%% this operation to get the job status.
-spec describe_pii_entities_detection_job(aws_client:aws_client(), describe_pii_entities_detection_job_request()) ->
    {ok, describe_pii_entities_detection_job_response(), tuple()} |
    {error, any()} |
    {error, describe_pii_entities_detection_job_errors(), tuple()}.
describe_pii_entities_detection_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_pii_entities_detection_job(Client, Input, []).

-spec describe_pii_entities_detection_job(aws_client:aws_client(), describe_pii_entities_detection_job_request(), proplists:proplist()) ->
    {ok, describe_pii_entities_detection_job_response(), tuple()} |
    {error, any()} |
    {error, describe_pii_entities_detection_job_errors(), tuple()}.
describe_pii_entities_detection_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribePiiEntitiesDetectionJob">>, Input, Options).

%% @doc Gets the details of a resource-based policy that is attached to a
%% custom model, including
%% the JSON body of the policy.
-spec describe_resource_policy(aws_client:aws_client(), describe_resource_policy_request()) ->
    {ok, describe_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, describe_resource_policy_errors(), tuple()}.
describe_resource_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_resource_policy(Client, Input, []).

-spec describe_resource_policy(aws_client:aws_client(), describe_resource_policy_request(), proplists:proplist()) ->
    {ok, describe_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, describe_resource_policy_errors(), tuple()}.
describe_resource_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeResourcePolicy">>, Input, Options).

%% @doc Gets the properties associated with a sentiment detection job.
%%
%% Use this operation to get
%% the status of a detection job.
-spec describe_sentiment_detection_job(aws_client:aws_client(), describe_sentiment_detection_job_request()) ->
    {ok, describe_sentiment_detection_job_response(), tuple()} |
    {error, any()} |
    {error, describe_sentiment_detection_job_errors(), tuple()}.
describe_sentiment_detection_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_sentiment_detection_job(Client, Input, []).

-spec describe_sentiment_detection_job(aws_client:aws_client(), describe_sentiment_detection_job_request(), proplists:proplist()) ->
    {ok, describe_sentiment_detection_job_response(), tuple()} |
    {error, any()} |
    {error, describe_sentiment_detection_job_errors(), tuple()}.
describe_sentiment_detection_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeSentimentDetectionJob">>, Input, Options).

%% @doc Gets the properties associated with a targeted sentiment detection
%% job.
%%
%% Use this operation
%% to get the status of the job.
-spec describe_targeted_sentiment_detection_job(aws_client:aws_client(), describe_targeted_sentiment_detection_job_request()) ->
    {ok, describe_targeted_sentiment_detection_job_response(), tuple()} |
    {error, any()} |
    {error, describe_targeted_sentiment_detection_job_errors(), tuple()}.
describe_targeted_sentiment_detection_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_targeted_sentiment_detection_job(Client, Input, []).

-spec describe_targeted_sentiment_detection_job(aws_client:aws_client(), describe_targeted_sentiment_detection_job_request(), proplists:proplist()) ->
    {ok, describe_targeted_sentiment_detection_job_response(), tuple()} |
    {error, any()} |
    {error, describe_targeted_sentiment_detection_job_errors(), tuple()}.
describe_targeted_sentiment_detection_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTargetedSentimentDetectionJob">>, Input, Options).

%% @doc Gets the properties associated with a topic detection job.
%%
%% Use this operation to get
%% the status of a detection job.
-spec describe_topics_detection_job(aws_client:aws_client(), describe_topics_detection_job_request()) ->
    {ok, describe_topics_detection_job_response(), tuple()} |
    {error, any()} |
    {error, describe_topics_detection_job_errors(), tuple()}.
describe_topics_detection_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_topics_detection_job(Client, Input, []).

-spec describe_topics_detection_job(aws_client:aws_client(), describe_topics_detection_job_request(), proplists:proplist()) ->
    {ok, describe_topics_detection_job_response(), tuple()} |
    {error, any()} |
    {error, describe_topics_detection_job_errors(), tuple()}.
describe_topics_detection_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTopicsDetectionJob">>, Input, Options).

%% @doc Determines the dominant language of the input text.
%%
%% For a list of languages that Amazon
%% Comprehend can detect, see Amazon Comprehend Supported Languages:
%% https://docs.aws.amazon.com/comprehend/latest/dg/how-languages.html.
-spec detect_dominant_language(aws_client:aws_client(), detect_dominant_language_request()) ->
    {ok, detect_dominant_language_response(), tuple()} |
    {error, any()} |
    {error, detect_dominant_language_errors(), tuple()}.
detect_dominant_language(Client, Input)
  when is_map(Client), is_map(Input) ->
    detect_dominant_language(Client, Input, []).

-spec detect_dominant_language(aws_client:aws_client(), detect_dominant_language_request(), proplists:proplist()) ->
    {ok, detect_dominant_language_response(), tuple()} |
    {error, any()} |
    {error, detect_dominant_language_errors(), tuple()}.
detect_dominant_language(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DetectDominantLanguage">>, Input, Options).

%% @doc Detects named entities in input text when you use the pre-trained
%% model.
%%
%% Detects custom entities if you have a custom entity recognition model.
%%
%% When detecting named entities using the pre-trained model, use plain text
%% as the input.
%% For more information about named entities, see
%% Entities:
%% https://docs.aws.amazon.com/comprehend/latest/dg/how-entities.html in the
%% Comprehend Developer Guide.
%%
%% When you use a custom entity recognition model,
%% you can input plain text or you can upload a single-page input document
%% (text, PDF, Word, or image).
%%
%% If the system detects errors while processing a page in the input
%% document, the API response
%% includes an entry in `Errors' for each error.
%%
%% If the system detects a document-level error in your input document, the
%% API returns an
%% `InvalidRequestException' error response.
%% For details about this exception, see
%%
%% Errors in semi-structured documents:
%% https://docs.aws.amazon.com/comprehend/latest/dg/idp-inputs-sync-err.html
%% in the Comprehend Developer Guide.
-spec detect_entities(aws_client:aws_client(), detect_entities_request()) ->
    {ok, detect_entities_response(), tuple()} |
    {error, any()} |
    {error, detect_entities_errors(), tuple()}.
detect_entities(Client, Input)
  when is_map(Client), is_map(Input) ->
    detect_entities(Client, Input, []).

-spec detect_entities(aws_client:aws_client(), detect_entities_request(), proplists:proplist()) ->
    {ok, detect_entities_response(), tuple()} |
    {error, any()} |
    {error, detect_entities_errors(), tuple()}.
detect_entities(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DetectEntities">>, Input, Options).

%% @doc Detects the key noun phrases found in the text.
-spec detect_key_phrases(aws_client:aws_client(), detect_key_phrases_request()) ->
    {ok, detect_key_phrases_response(), tuple()} |
    {error, any()} |
    {error, detect_key_phrases_errors(), tuple()}.
detect_key_phrases(Client, Input)
  when is_map(Client), is_map(Input) ->
    detect_key_phrases(Client, Input, []).

-spec detect_key_phrases(aws_client:aws_client(), detect_key_phrases_request(), proplists:proplist()) ->
    {ok, detect_key_phrases_response(), tuple()} |
    {error, any()} |
    {error, detect_key_phrases_errors(), tuple()}.
detect_key_phrases(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DetectKeyPhrases">>, Input, Options).

%% @doc Inspects the input text for entities that contain personally
%% identifiable information
%% (PII) and returns information about them.
-spec detect_pii_entities(aws_client:aws_client(), detect_pii_entities_request()) ->
    {ok, detect_pii_entities_response(), tuple()} |
    {error, any()} |
    {error, detect_pii_entities_errors(), tuple()}.
detect_pii_entities(Client, Input)
  when is_map(Client), is_map(Input) ->
    detect_pii_entities(Client, Input, []).

-spec detect_pii_entities(aws_client:aws_client(), detect_pii_entities_request(), proplists:proplist()) ->
    {ok, detect_pii_entities_response(), tuple()} |
    {error, any()} |
    {error, detect_pii_entities_errors(), tuple()}.
detect_pii_entities(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DetectPiiEntities">>, Input, Options).

%% @doc Inspects text and returns an inference of the prevailing sentiment
%% (`POSITIVE', `NEUTRAL', `MIXED', or `NEGATIVE').
-spec detect_sentiment(aws_client:aws_client(), detect_sentiment_request()) ->
    {ok, detect_sentiment_response(), tuple()} |
    {error, any()} |
    {error, detect_sentiment_errors(), tuple()}.
detect_sentiment(Client, Input)
  when is_map(Client), is_map(Input) ->
    detect_sentiment(Client, Input, []).

-spec detect_sentiment(aws_client:aws_client(), detect_sentiment_request(), proplists:proplist()) ->
    {ok, detect_sentiment_response(), tuple()} |
    {error, any()} |
    {error, detect_sentiment_errors(), tuple()}.
detect_sentiment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DetectSentiment">>, Input, Options).

%% @doc Inspects text for syntax and the part of speech of words in the
%% document.
%%
%% For more
%% information, see
%% Syntax: https://docs.aws.amazon.com/comprehend/latest/dg/how-syntax.html
%% in the Comprehend Developer Guide.
-spec detect_syntax(aws_client:aws_client(), detect_syntax_request()) ->
    {ok, detect_syntax_response(), tuple()} |
    {error, any()} |
    {error, detect_syntax_errors(), tuple()}.
detect_syntax(Client, Input)
  when is_map(Client), is_map(Input) ->
    detect_syntax(Client, Input, []).

-spec detect_syntax(aws_client:aws_client(), detect_syntax_request(), proplists:proplist()) ->
    {ok, detect_syntax_response(), tuple()} |
    {error, any()} |
    {error, detect_syntax_errors(), tuple()}.
detect_syntax(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DetectSyntax">>, Input, Options).

%% @doc Inspects the input text and returns a sentiment analysis for each
%% entity identified in the text.
%%
%% For more information about targeted sentiment, see Targeted sentiment:
%% https://docs.aws.amazon.com/comprehend/latest/dg/how-targeted-sentiment.html
%% in the Amazon Comprehend Developer Guide.
-spec detect_targeted_sentiment(aws_client:aws_client(), detect_targeted_sentiment_request()) ->
    {ok, detect_targeted_sentiment_response(), tuple()} |
    {error, any()} |
    {error, detect_targeted_sentiment_errors(), tuple()}.
detect_targeted_sentiment(Client, Input)
  when is_map(Client), is_map(Input) ->
    detect_targeted_sentiment(Client, Input, []).

-spec detect_targeted_sentiment(aws_client:aws_client(), detect_targeted_sentiment_request(), proplists:proplist()) ->
    {ok, detect_targeted_sentiment_response(), tuple()} |
    {error, any()} |
    {error, detect_targeted_sentiment_errors(), tuple()}.
detect_targeted_sentiment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DetectTargetedSentiment">>, Input, Options).

%% @doc Performs toxicity analysis on the list of text strings that you
%% provide as input.
%%
%% The API response contains a results list that matches the size of the
%% input list.
%% For more information about toxicity detection, see Toxicity detection:
%% https://docs.aws.amazon.com/comprehend/latest/dg/toxicity-detection.html
%% in the Amazon Comprehend Developer Guide.
-spec detect_toxic_content(aws_client:aws_client(), detect_toxic_content_request()) ->
    {ok, detect_toxic_content_response(), tuple()} |
    {error, any()} |
    {error, detect_toxic_content_errors(), tuple()}.
detect_toxic_content(Client, Input)
  when is_map(Client), is_map(Input) ->
    detect_toxic_content(Client, Input, []).

-spec detect_toxic_content(aws_client:aws_client(), detect_toxic_content_request(), proplists:proplist()) ->
    {ok, detect_toxic_content_response(), tuple()} |
    {error, any()} |
    {error, detect_toxic_content_errors(), tuple()}.
detect_toxic_content(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DetectToxicContent">>, Input, Options).

%% @doc Creates a new custom model that replicates a source custom model that
%% you import.
%%
%% The
%% source model can be in your Amazon Web Services account or another one.
%%
%% If the source model is in another Amazon Web Services account, then it
%% must have a resource-based policy
%% that authorizes you to import it.
%%
%% The source model must be in the same Amazon Web Services Region that
%% you're using when you import. You
%% can't import a model that's in a different Region.
-spec import_model(aws_client:aws_client(), import_model_request()) ->
    {ok, import_model_response(), tuple()} |
    {error, any()} |
    {error, import_model_errors(), tuple()}.
import_model(Client, Input)
  when is_map(Client), is_map(Input) ->
    import_model(Client, Input, []).

-spec import_model(aws_client:aws_client(), import_model_request(), proplists:proplist()) ->
    {ok, import_model_response(), tuple()} |
    {error, any()} |
    {error, import_model_errors(), tuple()}.
import_model(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ImportModel">>, Input, Options).

%% @doc List the datasets that you have configured in this Region.
%%
%% For more information about datasets, see
%% Flywheel overview:
%% https://docs.aws.amazon.com/comprehend/latest/dg/flywheels-about.html in
%% the Amazon Comprehend Developer Guide.
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

%% @doc Gets a list of the documentation classification jobs that you have
%% submitted.
-spec list_document_classification_jobs(aws_client:aws_client(), list_document_classification_jobs_request()) ->
    {ok, list_document_classification_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_document_classification_jobs_errors(), tuple()}.
list_document_classification_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_document_classification_jobs(Client, Input, []).

-spec list_document_classification_jobs(aws_client:aws_client(), list_document_classification_jobs_request(), proplists:proplist()) ->
    {ok, list_document_classification_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_document_classification_jobs_errors(), tuple()}.
list_document_classification_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDocumentClassificationJobs">>, Input, Options).

%% @doc Gets a list of summaries of the document classifiers that you have
%% created
-spec list_document_classifier_summaries(aws_client:aws_client(), list_document_classifier_summaries_request()) ->
    {ok, list_document_classifier_summaries_response(), tuple()} |
    {error, any()} |
    {error, list_document_classifier_summaries_errors(), tuple()}.
list_document_classifier_summaries(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_document_classifier_summaries(Client, Input, []).

-spec list_document_classifier_summaries(aws_client:aws_client(), list_document_classifier_summaries_request(), proplists:proplist()) ->
    {ok, list_document_classifier_summaries_response(), tuple()} |
    {error, any()} |
    {error, list_document_classifier_summaries_errors(), tuple()}.
list_document_classifier_summaries(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDocumentClassifierSummaries">>, Input, Options).

%% @doc Gets a list of the document classifiers that you have created.
-spec list_document_classifiers(aws_client:aws_client(), list_document_classifiers_request()) ->
    {ok, list_document_classifiers_response(), tuple()} |
    {error, any()} |
    {error, list_document_classifiers_errors(), tuple()}.
list_document_classifiers(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_document_classifiers(Client, Input, []).

-spec list_document_classifiers(aws_client:aws_client(), list_document_classifiers_request(), proplists:proplist()) ->
    {ok, list_document_classifiers_response(), tuple()} |
    {error, any()} |
    {error, list_document_classifiers_errors(), tuple()}.
list_document_classifiers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDocumentClassifiers">>, Input, Options).

%% @doc Gets a list of the dominant language detection jobs that you have
%% submitted.
-spec list_dominant_language_detection_jobs(aws_client:aws_client(), list_dominant_language_detection_jobs_request()) ->
    {ok, list_dominant_language_detection_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_dominant_language_detection_jobs_errors(), tuple()}.
list_dominant_language_detection_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_dominant_language_detection_jobs(Client, Input, []).

-spec list_dominant_language_detection_jobs(aws_client:aws_client(), list_dominant_language_detection_jobs_request(), proplists:proplist()) ->
    {ok, list_dominant_language_detection_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_dominant_language_detection_jobs_errors(), tuple()}.
list_dominant_language_detection_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDominantLanguageDetectionJobs">>, Input, Options).

%% @doc Gets a list of all existing endpoints that you've created.
%%
%% For information about endpoints, see Managing endpoints:
%% https://docs.aws.amazon.com/comprehend/latest/dg/manage-endpoints.html.
-spec list_endpoints(aws_client:aws_client(), list_endpoints_request()) ->
    {ok, list_endpoints_response(), tuple()} |
    {error, any()} |
    {error, list_endpoints_errors(), tuple()}.
list_endpoints(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_endpoints(Client, Input, []).

-spec list_endpoints(aws_client:aws_client(), list_endpoints_request(), proplists:proplist()) ->
    {ok, list_endpoints_response(), tuple()} |
    {error, any()} |
    {error, list_endpoints_errors(), tuple()}.
list_endpoints(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListEndpoints">>, Input, Options).

%% @doc Gets a list of the entity detection jobs that you have submitted.
-spec list_entities_detection_jobs(aws_client:aws_client(), list_entities_detection_jobs_request()) ->
    {ok, list_entities_detection_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_entities_detection_jobs_errors(), tuple()}.
list_entities_detection_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_entities_detection_jobs(Client, Input, []).

-spec list_entities_detection_jobs(aws_client:aws_client(), list_entities_detection_jobs_request(), proplists:proplist()) ->
    {ok, list_entities_detection_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_entities_detection_jobs_errors(), tuple()}.
list_entities_detection_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListEntitiesDetectionJobs">>, Input, Options).

%% @doc Gets a list of summaries for the entity recognizers that you have
%% created.
-spec list_entity_recognizer_summaries(aws_client:aws_client(), list_entity_recognizer_summaries_request()) ->
    {ok, list_entity_recognizer_summaries_response(), tuple()} |
    {error, any()} |
    {error, list_entity_recognizer_summaries_errors(), tuple()}.
list_entity_recognizer_summaries(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_entity_recognizer_summaries(Client, Input, []).

-spec list_entity_recognizer_summaries(aws_client:aws_client(), list_entity_recognizer_summaries_request(), proplists:proplist()) ->
    {ok, list_entity_recognizer_summaries_response(), tuple()} |
    {error, any()} |
    {error, list_entity_recognizer_summaries_errors(), tuple()}.
list_entity_recognizer_summaries(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListEntityRecognizerSummaries">>, Input, Options).

%% @doc Gets a list of the properties of all entity recognizers that you
%% created, including
%% recognizers currently in training.
%%
%% Allows you to filter the list of recognizers based on
%% criteria such as status and submission time. This call returns up to 500
%% entity recognizers in
%% the list, with a default number of 100 recognizers in the list.
%%
%% The results of this list are not in any particular order. Please get the
%% list and sort
%% locally if needed.
-spec list_entity_recognizers(aws_client:aws_client(), list_entity_recognizers_request()) ->
    {ok, list_entity_recognizers_response(), tuple()} |
    {error, any()} |
    {error, list_entity_recognizers_errors(), tuple()}.
list_entity_recognizers(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_entity_recognizers(Client, Input, []).

-spec list_entity_recognizers(aws_client:aws_client(), list_entity_recognizers_request(), proplists:proplist()) ->
    {ok, list_entity_recognizers_response(), tuple()} |
    {error, any()} |
    {error, list_entity_recognizers_errors(), tuple()}.
list_entity_recognizers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListEntityRecognizers">>, Input, Options).

%% @doc Gets a list of the events detection jobs that you have submitted.
-spec list_events_detection_jobs(aws_client:aws_client(), list_events_detection_jobs_request()) ->
    {ok, list_events_detection_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_events_detection_jobs_errors(), tuple()}.
list_events_detection_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_events_detection_jobs(Client, Input, []).

-spec list_events_detection_jobs(aws_client:aws_client(), list_events_detection_jobs_request(), proplists:proplist()) ->
    {ok, list_events_detection_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_events_detection_jobs_errors(), tuple()}.
list_events_detection_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListEventsDetectionJobs">>, Input, Options).

%% @doc Information about the history of a flywheel iteration.
%%
%% For more information about flywheels, see
%% Flywheel overview:
%% https://docs.aws.amazon.com/comprehend/latest/dg/flywheels-about.html in
%% the Amazon Comprehend Developer Guide.
-spec list_flywheel_iteration_history(aws_client:aws_client(), list_flywheel_iteration_history_request()) ->
    {ok, list_flywheel_iteration_history_response(), tuple()} |
    {error, any()} |
    {error, list_flywheel_iteration_history_errors(), tuple()}.
list_flywheel_iteration_history(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_flywheel_iteration_history(Client, Input, []).

-spec list_flywheel_iteration_history(aws_client:aws_client(), list_flywheel_iteration_history_request(), proplists:proplist()) ->
    {ok, list_flywheel_iteration_history_response(), tuple()} |
    {error, any()} |
    {error, list_flywheel_iteration_history_errors(), tuple()}.
list_flywheel_iteration_history(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListFlywheelIterationHistory">>, Input, Options).

%% @doc Gets a list of the flywheels that you have created.
-spec list_flywheels(aws_client:aws_client(), list_flywheels_request()) ->
    {ok, list_flywheels_response(), tuple()} |
    {error, any()} |
    {error, list_flywheels_errors(), tuple()}.
list_flywheels(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_flywheels(Client, Input, []).

-spec list_flywheels(aws_client:aws_client(), list_flywheels_request(), proplists:proplist()) ->
    {ok, list_flywheels_response(), tuple()} |
    {error, any()} |
    {error, list_flywheels_errors(), tuple()}.
list_flywheels(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListFlywheels">>, Input, Options).

%% @doc Get a list of key phrase detection jobs that you have submitted.
-spec list_key_phrases_detection_jobs(aws_client:aws_client(), list_key_phrases_detection_jobs_request()) ->
    {ok, list_key_phrases_detection_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_key_phrases_detection_jobs_errors(), tuple()}.
list_key_phrases_detection_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_key_phrases_detection_jobs(Client, Input, []).

-spec list_key_phrases_detection_jobs(aws_client:aws_client(), list_key_phrases_detection_jobs_request(), proplists:proplist()) ->
    {ok, list_key_phrases_detection_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_key_phrases_detection_jobs_errors(), tuple()}.
list_key_phrases_detection_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListKeyPhrasesDetectionJobs">>, Input, Options).

%% @doc Gets a list of the PII entity detection jobs that you have submitted.
-spec list_pii_entities_detection_jobs(aws_client:aws_client(), list_pii_entities_detection_jobs_request()) ->
    {ok, list_pii_entities_detection_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_pii_entities_detection_jobs_errors(), tuple()}.
list_pii_entities_detection_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_pii_entities_detection_jobs(Client, Input, []).

-spec list_pii_entities_detection_jobs(aws_client:aws_client(), list_pii_entities_detection_jobs_request(), proplists:proplist()) ->
    {ok, list_pii_entities_detection_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_pii_entities_detection_jobs_errors(), tuple()}.
list_pii_entities_detection_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPiiEntitiesDetectionJobs">>, Input, Options).

%% @doc Gets a list of sentiment detection jobs that you have submitted.
-spec list_sentiment_detection_jobs(aws_client:aws_client(), list_sentiment_detection_jobs_request()) ->
    {ok, list_sentiment_detection_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_sentiment_detection_jobs_errors(), tuple()}.
list_sentiment_detection_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_sentiment_detection_jobs(Client, Input, []).

-spec list_sentiment_detection_jobs(aws_client:aws_client(), list_sentiment_detection_jobs_request(), proplists:proplist()) ->
    {ok, list_sentiment_detection_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_sentiment_detection_jobs_errors(), tuple()}.
list_sentiment_detection_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListSentimentDetectionJobs">>, Input, Options).

%% @doc Lists all tags associated with a given Amazon Comprehend resource.
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

%% @doc Gets a list of targeted sentiment detection jobs that you have
%% submitted.
-spec list_targeted_sentiment_detection_jobs(aws_client:aws_client(), list_targeted_sentiment_detection_jobs_request()) ->
    {ok, list_targeted_sentiment_detection_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_targeted_sentiment_detection_jobs_errors(), tuple()}.
list_targeted_sentiment_detection_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_targeted_sentiment_detection_jobs(Client, Input, []).

-spec list_targeted_sentiment_detection_jobs(aws_client:aws_client(), list_targeted_sentiment_detection_jobs_request(), proplists:proplist()) ->
    {ok, list_targeted_sentiment_detection_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_targeted_sentiment_detection_jobs_errors(), tuple()}.
list_targeted_sentiment_detection_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTargetedSentimentDetectionJobs">>, Input, Options).

%% @doc Gets a list of the topic detection jobs that you have submitted.
-spec list_topics_detection_jobs(aws_client:aws_client(), list_topics_detection_jobs_request()) ->
    {ok, list_topics_detection_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_topics_detection_jobs_errors(), tuple()}.
list_topics_detection_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_topics_detection_jobs(Client, Input, []).

-spec list_topics_detection_jobs(aws_client:aws_client(), list_topics_detection_jobs_request(), proplists:proplist()) ->
    {ok, list_topics_detection_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_topics_detection_jobs_errors(), tuple()}.
list_topics_detection_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTopicsDetectionJobs">>, Input, Options).

%% @doc Attaches a resource-based policy to a custom model.
%%
%% You can use this policy to authorize
%% an entity in another Amazon Web Services account to import the custom
%% model, which replicates it in Amazon
%% Comprehend in their account.
-spec put_resource_policy(aws_client:aws_client(), put_resource_policy_request()) ->
    {ok, put_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, put_resource_policy_errors(), tuple()}.
put_resource_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_resource_policy(Client, Input, []).

-spec put_resource_policy(aws_client:aws_client(), put_resource_policy_request(), proplists:proplist()) ->
    {ok, put_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, put_resource_policy_errors(), tuple()}.
put_resource_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutResourcePolicy">>, Input, Options).

%% @doc Starts an asynchronous document classification job using a custom
%% classification model.
%%
%% Use the
%% `DescribeDocumentClassificationJob'
%% operation to track the progress of the job.
-spec start_document_classification_job(aws_client:aws_client(), start_document_classification_job_request()) ->
    {ok, start_document_classification_job_response(), tuple()} |
    {error, any()} |
    {error, start_document_classification_job_errors(), tuple()}.
start_document_classification_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_document_classification_job(Client, Input, []).

-spec start_document_classification_job(aws_client:aws_client(), start_document_classification_job_request(), proplists:proplist()) ->
    {ok, start_document_classification_job_response(), tuple()} |
    {error, any()} |
    {error, start_document_classification_job_errors(), tuple()}.
start_document_classification_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartDocumentClassificationJob">>, Input, Options).

%% @doc Starts an asynchronous dominant language detection job for a
%% collection of documents.
%%
%% Use
%% the operation to track the status
%% of a job.
-spec start_dominant_language_detection_job(aws_client:aws_client(), start_dominant_language_detection_job_request()) ->
    {ok, start_dominant_language_detection_job_response(), tuple()} |
    {error, any()} |
    {error, start_dominant_language_detection_job_errors(), tuple()}.
start_dominant_language_detection_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_dominant_language_detection_job(Client, Input, []).

-spec start_dominant_language_detection_job(aws_client:aws_client(), start_dominant_language_detection_job_request(), proplists:proplist()) ->
    {ok, start_dominant_language_detection_job_response(), tuple()} |
    {error, any()} |
    {error, start_dominant_language_detection_job_errors(), tuple()}.
start_dominant_language_detection_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartDominantLanguageDetectionJob">>, Input, Options).

%% @doc Starts an asynchronous entity detection job for a collection of
%% documents.
%%
%% Use the operation to track the status of a job.
%%
%% This API can be used for either standard entity detection or custom entity
%% recognition. In
%% order to be used for custom entity recognition, the optional
%% `EntityRecognizerArn'
%% must be used in order to provide access to the recognizer being used to
%% detect the custom
%% entity.
-spec start_entities_detection_job(aws_client:aws_client(), start_entities_detection_job_request()) ->
    {ok, start_entities_detection_job_response(), tuple()} |
    {error, any()} |
    {error, start_entities_detection_job_errors(), tuple()}.
start_entities_detection_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_entities_detection_job(Client, Input, []).

-spec start_entities_detection_job(aws_client:aws_client(), start_entities_detection_job_request(), proplists:proplist()) ->
    {ok, start_entities_detection_job_response(), tuple()} |
    {error, any()} |
    {error, start_entities_detection_job_errors(), tuple()}.
start_entities_detection_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartEntitiesDetectionJob">>, Input, Options).

%% @doc Starts an asynchronous event detection job for a collection of
%% documents.
-spec start_events_detection_job(aws_client:aws_client(), start_events_detection_job_request()) ->
    {ok, start_events_detection_job_response(), tuple()} |
    {error, any()} |
    {error, start_events_detection_job_errors(), tuple()}.
start_events_detection_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_events_detection_job(Client, Input, []).

-spec start_events_detection_job(aws_client:aws_client(), start_events_detection_job_request(), proplists:proplist()) ->
    {ok, start_events_detection_job_response(), tuple()} |
    {error, any()} |
    {error, start_events_detection_job_errors(), tuple()}.
start_events_detection_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartEventsDetectionJob">>, Input, Options).

%% @doc Start the flywheel iteration.This operation uses any new datasets to
%% train a new model version.
%%
%% For more information about flywheels, see
%% Flywheel overview:
%% https://docs.aws.amazon.com/comprehend/latest/dg/flywheels-about.html in
%% the Amazon Comprehend Developer Guide.
-spec start_flywheel_iteration(aws_client:aws_client(), start_flywheel_iteration_request()) ->
    {ok, start_flywheel_iteration_response(), tuple()} |
    {error, any()} |
    {error, start_flywheel_iteration_errors(), tuple()}.
start_flywheel_iteration(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_flywheel_iteration(Client, Input, []).

-spec start_flywheel_iteration(aws_client:aws_client(), start_flywheel_iteration_request(), proplists:proplist()) ->
    {ok, start_flywheel_iteration_response(), tuple()} |
    {error, any()} |
    {error, start_flywheel_iteration_errors(), tuple()}.
start_flywheel_iteration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartFlywheelIteration">>, Input, Options).

%% @doc Starts an asynchronous key phrase detection job for a collection of
%% documents.
%%
%% Use the
%% operation to track the status of a
%% job.
-spec start_key_phrases_detection_job(aws_client:aws_client(), start_key_phrases_detection_job_request()) ->
    {ok, start_key_phrases_detection_job_response(), tuple()} |
    {error, any()} |
    {error, start_key_phrases_detection_job_errors(), tuple()}.
start_key_phrases_detection_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_key_phrases_detection_job(Client, Input, []).

-spec start_key_phrases_detection_job(aws_client:aws_client(), start_key_phrases_detection_job_request(), proplists:proplist()) ->
    {ok, start_key_phrases_detection_job_response(), tuple()} |
    {error, any()} |
    {error, start_key_phrases_detection_job_errors(), tuple()}.
start_key_phrases_detection_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartKeyPhrasesDetectionJob">>, Input, Options).

%% @doc Starts an asynchronous PII entity detection job for a collection of
%% documents.
-spec start_pii_entities_detection_job(aws_client:aws_client(), start_pii_entities_detection_job_request()) ->
    {ok, start_pii_entities_detection_job_response(), tuple()} |
    {error, any()} |
    {error, start_pii_entities_detection_job_errors(), tuple()}.
start_pii_entities_detection_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_pii_entities_detection_job(Client, Input, []).

-spec start_pii_entities_detection_job(aws_client:aws_client(), start_pii_entities_detection_job_request(), proplists:proplist()) ->
    {ok, start_pii_entities_detection_job_response(), tuple()} |
    {error, any()} |
    {error, start_pii_entities_detection_job_errors(), tuple()}.
start_pii_entities_detection_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartPiiEntitiesDetectionJob">>, Input, Options).

%% @doc Starts an asynchronous sentiment detection job for a collection of
%% documents.
%%
%% Use the
%% operation to track the status of a
%% job.
-spec start_sentiment_detection_job(aws_client:aws_client(), start_sentiment_detection_job_request()) ->
    {ok, start_sentiment_detection_job_response(), tuple()} |
    {error, any()} |
    {error, start_sentiment_detection_job_errors(), tuple()}.
start_sentiment_detection_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_sentiment_detection_job(Client, Input, []).

-spec start_sentiment_detection_job(aws_client:aws_client(), start_sentiment_detection_job_request(), proplists:proplist()) ->
    {ok, start_sentiment_detection_job_response(), tuple()} |
    {error, any()} |
    {error, start_sentiment_detection_job_errors(), tuple()}.
start_sentiment_detection_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartSentimentDetectionJob">>, Input, Options).

%% @doc Starts an asynchronous targeted sentiment detection job for a
%% collection of documents.
%%
%% Use the
%% `DescribeTargetedSentimentDetectionJob' operation to track the status
%% of a
%% job.
-spec start_targeted_sentiment_detection_job(aws_client:aws_client(), start_targeted_sentiment_detection_job_request()) ->
    {ok, start_targeted_sentiment_detection_job_response(), tuple()} |
    {error, any()} |
    {error, start_targeted_sentiment_detection_job_errors(), tuple()}.
start_targeted_sentiment_detection_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_targeted_sentiment_detection_job(Client, Input, []).

-spec start_targeted_sentiment_detection_job(aws_client:aws_client(), start_targeted_sentiment_detection_job_request(), proplists:proplist()) ->
    {ok, start_targeted_sentiment_detection_job_response(), tuple()} |
    {error, any()} |
    {error, start_targeted_sentiment_detection_job_errors(), tuple()}.
start_targeted_sentiment_detection_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartTargetedSentimentDetectionJob">>, Input, Options).

%% @doc Starts an asynchronous topic detection job.
%%
%% Use the
%% `DescribeTopicDetectionJob' operation to track the status of a job.
-spec start_topics_detection_job(aws_client:aws_client(), start_topics_detection_job_request()) ->
    {ok, start_topics_detection_job_response(), tuple()} |
    {error, any()} |
    {error, start_topics_detection_job_errors(), tuple()}.
start_topics_detection_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_topics_detection_job(Client, Input, []).

-spec start_topics_detection_job(aws_client:aws_client(), start_topics_detection_job_request(), proplists:proplist()) ->
    {ok, start_topics_detection_job_response(), tuple()} |
    {error, any()} |
    {error, start_topics_detection_job_errors(), tuple()}.
start_topics_detection_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartTopicsDetectionJob">>, Input, Options).

%% @doc Stops a dominant language detection job in progress.
%%
%% If the job state is `IN_PROGRESS' the job is marked for termination
%% and put
%% into the `STOP_REQUESTED' state. If the job completes before it can be
%% stopped, it
%% is put into the `COMPLETED' state; otherwise the job is stopped and
%% put into the
%% `STOPPED' state.
%%
%% If the job is in the `COMPLETED' or `FAILED' state when you call
%% the
%% `StopDominantLanguageDetectionJob' operation, the operation returns a
%% 400
%% Internal Request Exception.
%%
%% When a job is stopped, any documents already processed are written to the
%% output
%% location.
-spec stop_dominant_language_detection_job(aws_client:aws_client(), stop_dominant_language_detection_job_request()) ->
    {ok, stop_dominant_language_detection_job_response(), tuple()} |
    {error, any()} |
    {error, stop_dominant_language_detection_job_errors(), tuple()}.
stop_dominant_language_detection_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_dominant_language_detection_job(Client, Input, []).

-spec stop_dominant_language_detection_job(aws_client:aws_client(), stop_dominant_language_detection_job_request(), proplists:proplist()) ->
    {ok, stop_dominant_language_detection_job_response(), tuple()} |
    {error, any()} |
    {error, stop_dominant_language_detection_job_errors(), tuple()}.
stop_dominant_language_detection_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopDominantLanguageDetectionJob">>, Input, Options).

%% @doc Stops an entities detection job in progress.
%%
%% If the job state is `IN_PROGRESS' the job is marked for termination
%% and put
%% into the `STOP_REQUESTED' state. If the job completes before it can be
%% stopped, it
%% is put into the `COMPLETED' state; otherwise the job is stopped and
%% put into the
%% `STOPPED' state.
%%
%% If the job is in the `COMPLETED' or `FAILED' state when you call
%% the
%% `StopDominantLanguageDetectionJob' operation, the operation returns a
%% 400
%% Internal Request Exception.
%%
%% When a job is stopped, any documents already processed are written to the
%% output
%% location.
-spec stop_entities_detection_job(aws_client:aws_client(), stop_entities_detection_job_request()) ->
    {ok, stop_entities_detection_job_response(), tuple()} |
    {error, any()} |
    {error, stop_entities_detection_job_errors(), tuple()}.
stop_entities_detection_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_entities_detection_job(Client, Input, []).

-spec stop_entities_detection_job(aws_client:aws_client(), stop_entities_detection_job_request(), proplists:proplist()) ->
    {ok, stop_entities_detection_job_response(), tuple()} |
    {error, any()} |
    {error, stop_entities_detection_job_errors(), tuple()}.
stop_entities_detection_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopEntitiesDetectionJob">>, Input, Options).

%% @doc Stops an events detection job in progress.
-spec stop_events_detection_job(aws_client:aws_client(), stop_events_detection_job_request()) ->
    {ok, stop_events_detection_job_response(), tuple()} |
    {error, any()} |
    {error, stop_events_detection_job_errors(), tuple()}.
stop_events_detection_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_events_detection_job(Client, Input, []).

-spec stop_events_detection_job(aws_client:aws_client(), stop_events_detection_job_request(), proplists:proplist()) ->
    {ok, stop_events_detection_job_response(), tuple()} |
    {error, any()} |
    {error, stop_events_detection_job_errors(), tuple()}.
stop_events_detection_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopEventsDetectionJob">>, Input, Options).

%% @doc Stops a key phrases detection job in progress.
%%
%% If the job state is `IN_PROGRESS' the job is marked for termination
%% and put
%% into the `STOP_REQUESTED' state. If the job completes before it can be
%% stopped, it
%% is put into the `COMPLETED' state; otherwise the job is stopped and
%% put into the
%% `STOPPED' state.
%%
%% If the job is in the `COMPLETED' or `FAILED' state when you call
%% the
%% `StopDominantLanguageDetectionJob' operation, the operation returns a
%% 400
%% Internal Request Exception.
%%
%% When a job is stopped, any documents already processed are written to the
%% output
%% location.
-spec stop_key_phrases_detection_job(aws_client:aws_client(), stop_key_phrases_detection_job_request()) ->
    {ok, stop_key_phrases_detection_job_response(), tuple()} |
    {error, any()} |
    {error, stop_key_phrases_detection_job_errors(), tuple()}.
stop_key_phrases_detection_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_key_phrases_detection_job(Client, Input, []).

-spec stop_key_phrases_detection_job(aws_client:aws_client(), stop_key_phrases_detection_job_request(), proplists:proplist()) ->
    {ok, stop_key_phrases_detection_job_response(), tuple()} |
    {error, any()} |
    {error, stop_key_phrases_detection_job_errors(), tuple()}.
stop_key_phrases_detection_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopKeyPhrasesDetectionJob">>, Input, Options).

%% @doc Stops a PII entities detection job in progress.
-spec stop_pii_entities_detection_job(aws_client:aws_client(), stop_pii_entities_detection_job_request()) ->
    {ok, stop_pii_entities_detection_job_response(), tuple()} |
    {error, any()} |
    {error, stop_pii_entities_detection_job_errors(), tuple()}.
stop_pii_entities_detection_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_pii_entities_detection_job(Client, Input, []).

-spec stop_pii_entities_detection_job(aws_client:aws_client(), stop_pii_entities_detection_job_request(), proplists:proplist()) ->
    {ok, stop_pii_entities_detection_job_response(), tuple()} |
    {error, any()} |
    {error, stop_pii_entities_detection_job_errors(), tuple()}.
stop_pii_entities_detection_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopPiiEntitiesDetectionJob">>, Input, Options).

%% @doc Stops a sentiment detection job in progress.
%%
%% If the job state is `IN_PROGRESS', the job is marked for termination
%% and put
%% into the `STOP_REQUESTED' state. If the job completes before it can be
%% stopped, it
%% is put into the `COMPLETED' state; otherwise the job is be stopped and
%% put into the
%% `STOPPED' state.
%%
%% If the job is in the `COMPLETED' or `FAILED' state when you call
%% the
%% `StopDominantLanguageDetectionJob' operation, the operation returns a
%% 400
%% Internal Request Exception.
%%
%% When a job is stopped, any documents already processed are written to the
%% output
%% location.
-spec stop_sentiment_detection_job(aws_client:aws_client(), stop_sentiment_detection_job_request()) ->
    {ok, stop_sentiment_detection_job_response(), tuple()} |
    {error, any()} |
    {error, stop_sentiment_detection_job_errors(), tuple()}.
stop_sentiment_detection_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_sentiment_detection_job(Client, Input, []).

-spec stop_sentiment_detection_job(aws_client:aws_client(), stop_sentiment_detection_job_request(), proplists:proplist()) ->
    {ok, stop_sentiment_detection_job_response(), tuple()} |
    {error, any()} |
    {error, stop_sentiment_detection_job_errors(), tuple()}.
stop_sentiment_detection_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopSentimentDetectionJob">>, Input, Options).

%% @doc Stops a targeted sentiment detection job in progress.
%%
%% If the job state is `IN_PROGRESS', the job is marked for termination
%% and put
%% into the `STOP_REQUESTED' state. If the job completes before it can be
%% stopped, it
%% is put into the `COMPLETED' state; otherwise the job is be stopped and
%% put into the
%% `STOPPED' state.
%%
%% If the job is in the `COMPLETED' or `FAILED' state when you call
%% the
%% `StopDominantLanguageDetectionJob' operation, the operation returns a
%% 400
%% Internal Request Exception.
%%
%% When a job is stopped, any documents already processed are written to the
%% output
%% location.
-spec stop_targeted_sentiment_detection_job(aws_client:aws_client(), stop_targeted_sentiment_detection_job_request()) ->
    {ok, stop_targeted_sentiment_detection_job_response(), tuple()} |
    {error, any()} |
    {error, stop_targeted_sentiment_detection_job_errors(), tuple()}.
stop_targeted_sentiment_detection_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_targeted_sentiment_detection_job(Client, Input, []).

-spec stop_targeted_sentiment_detection_job(aws_client:aws_client(), stop_targeted_sentiment_detection_job_request(), proplists:proplist()) ->
    {ok, stop_targeted_sentiment_detection_job_response(), tuple()} |
    {error, any()} |
    {error, stop_targeted_sentiment_detection_job_errors(), tuple()}.
stop_targeted_sentiment_detection_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopTargetedSentimentDetectionJob">>, Input, Options).

%% @doc Stops a document classifier training job while in progress.
%%
%% If the training job state is `TRAINING', the job is marked for
%% termination and
%% put into the `STOP_REQUESTED' state. If the training job completes
%% before it can be
%% stopped, it is put into the `TRAINED'; otherwise the training job is
%% stopped and
%% put into the `STOPPED' state and the service sends back an HTTP 200
%% response with
%% an empty HTTP body.
-spec stop_training_document_classifier(aws_client:aws_client(), stop_training_document_classifier_request()) ->
    {ok, stop_training_document_classifier_response(), tuple()} |
    {error, any()} |
    {error, stop_training_document_classifier_errors(), tuple()}.
stop_training_document_classifier(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_training_document_classifier(Client, Input, []).

-spec stop_training_document_classifier(aws_client:aws_client(), stop_training_document_classifier_request(), proplists:proplist()) ->
    {ok, stop_training_document_classifier_response(), tuple()} |
    {error, any()} |
    {error, stop_training_document_classifier_errors(), tuple()}.
stop_training_document_classifier(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopTrainingDocumentClassifier">>, Input, Options).

%% @doc Stops an entity recognizer training job while in progress.
%%
%% If the training job state is `TRAINING', the job is marked for
%% termination and
%% put into the `STOP_REQUESTED' state. If the training job completes
%% before it can be
%% stopped, it is put into the `TRAINED'; otherwise the training job is
%% stopped and
%% putted into the `STOPPED' state and the service sends back an HTTP 200
%% response
%% with an empty HTTP body.
-spec stop_training_entity_recognizer(aws_client:aws_client(), stop_training_entity_recognizer_request()) ->
    {ok, stop_training_entity_recognizer_response(), tuple()} |
    {error, any()} |
    {error, stop_training_entity_recognizer_errors(), tuple()}.
stop_training_entity_recognizer(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_training_entity_recognizer(Client, Input, []).

-spec stop_training_entity_recognizer(aws_client:aws_client(), stop_training_entity_recognizer_request(), proplists:proplist()) ->
    {ok, stop_training_entity_recognizer_response(), tuple()} |
    {error, any()} |
    {error, stop_training_entity_recognizer_errors(), tuple()}.
stop_training_entity_recognizer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopTrainingEntityRecognizer">>, Input, Options).

%% @doc Associates a specific tag with an Amazon Comprehend resource.
%%
%% A tag is a key-value pair
%% that adds as a metadata to a resource used by Amazon Comprehend. For
%% example, a tag with
%% &quot;Sales&quot; as the key might be added to a resource to indicate its
%% use by the sales department.
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

%% @doc Removes a specific tag associated with an Amazon Comprehend resource.
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

%% @doc Updates information about the specified endpoint.
%%
%% For information about endpoints, see Managing endpoints:
%% https://docs.aws.amazon.com/comprehend/latest/dg/manage-endpoints.html.
-spec update_endpoint(aws_client:aws_client(), update_endpoint_request()) ->
    {ok, update_endpoint_response(), tuple()} |
    {error, any()} |
    {error, update_endpoint_errors(), tuple()}.
update_endpoint(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_endpoint(Client, Input, []).

-spec update_endpoint(aws_client:aws_client(), update_endpoint_request(), proplists:proplist()) ->
    {ok, update_endpoint_response(), tuple()} |
    {error, any()} |
    {error, update_endpoint_errors(), tuple()}.
update_endpoint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateEndpoint">>, Input, Options).

%% @doc Update the configuration information for an existing flywheel.
-spec update_flywheel(aws_client:aws_client(), update_flywheel_request()) ->
    {ok, update_flywheel_response(), tuple()} |
    {error, any()} |
    {error, update_flywheel_errors(), tuple()}.
update_flywheel(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_flywheel(Client, Input, []).

-spec update_flywheel(aws_client:aws_client(), update_flywheel_request(), proplists:proplist()) ->
    {ok, update_flywheel_response(), tuple()} |
    {error, any()} |
    {error, update_flywheel_errors(), tuple()}.
update_flywheel(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateFlywheel">>, Input, Options).

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
    Client1 = Client#{service => <<"comprehend">>},
    Host = build_host(<<"comprehend">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"Comprehend_20171127.", Action/binary>>}
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
