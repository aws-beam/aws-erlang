%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc This is the Amazon Fraud Detector API Reference.
%%
%% This guide is for developers who need
%% detailed information about Amazon Fraud Detector API actions, data types,
%% and errors. For
%% more information about Amazon Fraud Detector features, see the Amazon
%% Fraud Detector User Guide:
%% https://docs.aws.amazon.com/frauddetector/latest/ug/.
%%
%% We provide the Query API as well as AWS software development kits (SDK)
%% for Amazon Fraud Detector in Java and Python programming languages.
%%
%% The Amazon Fraud Detector Query API provides HTTPS requests that use the
%% HTTP verb GET or POST and a Query parameter `Action'. AWS SDK provides
%% libraries,
%% sample code, tutorials, and other resources for software developers who
%% prefer to build applications using language-specific APIs instead of
%% submitting a request over
%% HTTP or HTTPS. These libraries provide basic functions that automatically
%% take care of tasks such as cryptographically signing your requests,
%% retrying requests, and
%% handling error responses, so that it is easier for you to get started. For
%% more information about the AWS SDKs, go to Tools to build on AWS:
%% https://aws.amazon.com/developer/tools/ page,
%% scroll down to the SDK section, and choose plus (+) sign to expand the
%% section.
-module(aws_frauddetector).

-export([batch_create_variable/2,
         batch_create_variable/3,
         batch_get_variable/2,
         batch_get_variable/3,
         cancel_batch_import_job/2,
         cancel_batch_import_job/3,
         cancel_batch_prediction_job/2,
         cancel_batch_prediction_job/3,
         create_batch_import_job/2,
         create_batch_import_job/3,
         create_batch_prediction_job/2,
         create_batch_prediction_job/3,
         create_detector_version/2,
         create_detector_version/3,
         create_list/2,
         create_list/3,
         create_model/2,
         create_model/3,
         create_model_version/2,
         create_model_version/3,
         create_rule/2,
         create_rule/3,
         create_variable/2,
         create_variable/3,
         delete_batch_import_job/2,
         delete_batch_import_job/3,
         delete_batch_prediction_job/2,
         delete_batch_prediction_job/3,
         delete_detector/2,
         delete_detector/3,
         delete_detector_version/2,
         delete_detector_version/3,
         delete_entity_type/2,
         delete_entity_type/3,
         delete_event/2,
         delete_event/3,
         delete_event_type/2,
         delete_event_type/3,
         delete_events_by_event_type/2,
         delete_events_by_event_type/3,
         delete_external_model/2,
         delete_external_model/3,
         delete_label/2,
         delete_label/3,
         delete_list/2,
         delete_list/3,
         delete_model/2,
         delete_model/3,
         delete_model_version/2,
         delete_model_version/3,
         delete_outcome/2,
         delete_outcome/3,
         delete_rule/2,
         delete_rule/3,
         delete_variable/2,
         delete_variable/3,
         describe_detector/2,
         describe_detector/3,
         describe_model_versions/2,
         describe_model_versions/3,
         get_batch_import_jobs/2,
         get_batch_import_jobs/3,
         get_batch_prediction_jobs/2,
         get_batch_prediction_jobs/3,
         get_delete_events_by_event_type_status/2,
         get_delete_events_by_event_type_status/3,
         get_detector_version/2,
         get_detector_version/3,
         get_detectors/2,
         get_detectors/3,
         get_entity_types/2,
         get_entity_types/3,
         get_event/2,
         get_event/3,
         get_event_prediction/2,
         get_event_prediction/3,
         get_event_prediction_metadata/2,
         get_event_prediction_metadata/3,
         get_event_types/2,
         get_event_types/3,
         get_external_models/2,
         get_external_models/3,
         get_kms_encryption_key/2,
         get_kms_encryption_key/3,
         get_labels/2,
         get_labels/3,
         get_list_elements/2,
         get_list_elements/3,
         get_lists_metadata/2,
         get_lists_metadata/3,
         get_model_version/2,
         get_model_version/3,
         get_models/2,
         get_models/3,
         get_outcomes/2,
         get_outcomes/3,
         get_rules/2,
         get_rules/3,
         get_variables/2,
         get_variables/3,
         list_event_predictions/2,
         list_event_predictions/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         put_detector/2,
         put_detector/3,
         put_entity_type/2,
         put_entity_type/3,
         put_event_type/2,
         put_event_type/3,
         put_external_model/2,
         put_external_model/3,
         put_kms_encryption_key/2,
         put_kms_encryption_key/3,
         put_label/2,
         put_label/3,
         put_outcome/2,
         put_outcome/3,
         send_event/2,
         send_event/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_detector_version/2,
         update_detector_version/3,
         update_detector_version_metadata/2,
         update_detector_version_metadata/3,
         update_detector_version_status/2,
         update_detector_version_status/3,
         update_event_label/2,
         update_event_label/3,
         update_list/2,
         update_list/3,
         update_model/2,
         update_model/3,
         update_model_version/2,
         update_model_version/3,
         update_model_version_status/2,
         update_model_version_status/3,
         update_rule_metadata/2,
         update_rule_metadata/3,
         update_rule_version/2,
         update_rule_version/3,
         update_variable/2,
         update_variable/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% cancel_batch_import_job_request() :: #{
%%   <<"jobId">> := string()
%% }
-type cancel_batch_import_job_request() :: #{binary() => any()}.

%% Example:
%% batch_get_variable_request() :: #{
%%   <<"names">> := list(string())
%% }
-type batch_get_variable_request() :: #{binary() => any()}.

%% Example:
%% external_model() :: #{
%%   <<"arn">> => string(),
%%   <<"createdTime">> => string(),
%%   <<"inputConfiguration">> => model_input_configuration(),
%%   <<"invokeModelEndpointRoleArn">> => string(),
%%   <<"lastUpdatedTime">> => string(),
%%   <<"modelEndpoint">> => string(),
%%   <<"modelEndpointStatus">> => list(any()),
%%   <<"modelSource">> => list(any()),
%%   <<"outputConfiguration">> => model_output_configuration()
%% }
-type external_model() :: #{binary() => any()}.

%% Example:
%% create_rule_request() :: #{
%%   <<"description">> => string(),
%%   <<"detectorId">> := string(),
%%   <<"expression">> := string(),
%%   <<"language">> := list(any()),
%%   <<"outcomes">> := list(string()),
%%   <<"ruleId">> := string(),
%%   <<"tags">> => list(tag())
%% }
-type create_rule_request() :: #{binary() => any()}.

%% Example:
%% update_list_result() :: #{

%% }
-type update_list_result() :: #{binary() => any()}.

%% Example:
%% batch_create_variable_error() :: #{
%%   <<"code">> => integer(),
%%   <<"message">> => string(),
%%   <<"name">> => string()
%% }
-type batch_create_variable_error() :: #{binary() => any()}.

%% Example:
%% field_validation_message() :: #{
%%   <<"content">> => string(),
%%   <<"fieldName">> => string(),
%%   <<"identifier">> => string(),
%%   <<"title">> => string(),
%%   <<"type">> => string()
%% }
-type field_validation_message() :: #{binary() => any()}.

%% Example:
%% a_t_i_training_metrics_value() :: #{
%%   <<"metricDataPoints">> => list(a_t_i_metric_data_point()),
%%   <<"modelPerformance">> => a_t_i_model_performance()
%% }
-type a_t_i_training_metrics_value() :: #{binary() => any()}.

%% Example:
%% create_model_version_result() :: #{
%%   <<"modelId">> => string(),
%%   <<"modelType">> => list(any()),
%%   <<"modelVersionNumber">> => string(),
%%   <<"status">> => string()
%% }
-type create_model_version_result() :: #{binary() => any()}.

%% Example:
%% tag_resource_request() :: #{
%%   <<"resourceARN">> := string(),
%%   <<"tags">> := list(tag())
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% update_variable_result() :: #{

%% }
-type update_variable_result() :: #{binary() => any()}.

%% Example:
%% create_model_result() :: #{

%% }
-type create_model_result() :: #{binary() => any()}.

%% Example:
%% create_list_request() :: #{
%%   <<"description">> => string(),
%%   <<"elements">> => list(string()),
%%   <<"name">> := string(),
%%   <<"tags">> => list(tag()),
%%   <<"variableType">> => string()
%% }
-type create_list_request() :: #{binary() => any()}.

%% Example:
%% update_model_version_request() :: #{
%%   <<"externalEventsDetail">> => external_events_detail(),
%%   <<"ingestedEventsDetail">> => ingested_events_detail(),
%%   <<"majorVersionNumber">> := string(),
%%   <<"modelId">> := string(),
%%   <<"modelType">> := list(any()),
%%   <<"tags">> => list(tag())
%% }
-type update_model_version_request() :: #{binary() => any()}.

%% Example:
%% delete_entity_type_request() :: #{
%%   <<"name">> := string()
%% }
-type delete_entity_type_request() :: #{binary() => any()}.

%% Example:
%% metric_data_point() :: #{
%%   <<"fpr">> => float(),
%%   <<"precision">> => float(),
%%   <<"threshold">> => float(),
%%   <<"tpr">> => float()
%% }
-type metric_data_point() :: #{binary() => any()}.

%% Example:
%% get_list_elements_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"name">> := string(),
%%   <<"nextToken">> => string()
%% }
-type get_list_elements_request() :: #{binary() => any()}.

%% Example:
%% filter_condition() :: #{
%%   <<"value">> => string()
%% }
-type filter_condition() :: #{binary() => any()}.

%% Example:
%% model_version_evaluation() :: #{
%%   <<"evaluationScore">> => string(),
%%   <<"outputVariableName">> => string(),
%%   <<"predictionExplanations">> => prediction_explanations()
%% }
-type model_version_evaluation() :: #{binary() => any()}.

%% Example:
%% delete_outcome_result() :: #{

%% }
-type delete_outcome_result() :: #{binary() => any()}.

%% Example:
%% delete_model_version_result() :: #{

%% }
-type delete_model_version_result() :: #{binary() => any()}.

%% Example:
%% get_kms_encryption_key_result() :: #{
%%   <<"kmsKey">> => kms_key()
%% }
-type get_kms_encryption_key_result() :: #{binary() => any()}.

%% Example:
%% t_f_i_metric_data_point() :: #{
%%   <<"fpr">> => float(),
%%   <<"precision">> => float(),
%%   <<"threshold">> => float(),
%%   <<"tpr">> => float()
%% }
-type t_f_i_metric_data_point() :: #{binary() => any()}.

%% Example:
%% create_batch_prediction_job_request() :: #{
%%   <<"detectorName">> := string(),
%%   <<"detectorVersion">> => string(),
%%   <<"eventTypeName">> := string(),
%%   <<"iamRoleArn">> := string(),
%%   <<"inputPath">> := string(),
%%   <<"jobId">> := string(),
%%   <<"outputPath">> := string(),
%%   <<"tags">> => list(tag())
%% }
-type create_batch_prediction_job_request() :: #{binary() => any()}.

%% Example:
%% get_lists_metadata_result() :: #{
%%   <<"lists">> => list(allow_deny_list()),
%%   <<"nextToken">> => string()
%% }
-type get_lists_metadata_result() :: #{binary() => any()}.

%% Example:
%% untag_resource_result() :: #{

%% }
-type untag_resource_result() :: #{binary() => any()}.

%% Example:
%% get_event_result() :: #{
%%   <<"event">> => event()
%% }
-type get_event_result() :: #{binary() => any()}.

%% Example:
%% model_version() :: #{
%%   <<"arn">> => string(),
%%   <<"modelId">> => string(),
%%   <<"modelType">> => list(any()),
%%   <<"modelVersionNumber">> => string()
%% }
-type model_version() :: #{binary() => any()}.

%% Example:
%% put_label_request() :: #{
%%   <<"description">> => string(),
%%   <<"name">> := string(),
%%   <<"tags">> => list(tag())
%% }
-type put_label_request() :: #{binary() => any()}.

%% Example:
%% entity() :: #{
%%   <<"entityId">> => string(),
%%   <<"entityType">> => string()
%% }
-type entity() :: #{binary() => any()}.

%% Example:
%% update_rule_version_request() :: #{
%%   <<"description">> => string(),
%%   <<"expression">> := string(),
%%   <<"language">> := list(any()),
%%   <<"outcomes">> := list(string()),
%%   <<"rule">> := rule(),
%%   <<"tags">> => list(tag())
%% }
-type update_rule_version_request() :: #{binary() => any()}.

%% Example:
%% ingested_event_statistics() :: #{
%%   <<"eventDataSizeInBytes">> => float(),
%%   <<"lastUpdatedTime">> => string(),
%%   <<"leastRecentEvent">> => string(),
%%   <<"mostRecentEvent">> => string(),
%%   <<"numberOfEvents">> => float()
%% }
-type ingested_event_statistics() :: #{binary() => any()}.

%% Example:
%% model_input_configuration() :: #{
%%   <<"csvInputTemplate">> => string(),
%%   <<"eventTypeName">> => string(),
%%   <<"format">> => list(any()),
%%   <<"jsonInputTemplate">> => string(),
%%   <<"useEventVariables">> => boolean()
%% }
-type model_input_configuration() :: #{binary() => any()}.

%% Example:
%% create_variable_request() :: #{
%%   <<"dataSource">> := list(any()),
%%   <<"dataType">> := list(any()),
%%   <<"defaultValue">> := string(),
%%   <<"description">> => string(),
%%   <<"name">> := string(),
%%   <<"tags">> => list(tag()),
%%   <<"variableType">> => string()
%% }
-type create_variable_request() :: #{binary() => any()}.

%% Example:
%% o_f_i_training_metrics_value() :: #{
%%   <<"metricDataPoints">> => list(o_f_i_metric_data_point()),
%%   <<"modelPerformance">> => o_f_i_model_performance()
%% }
-type o_f_i_training_metrics_value() :: #{binary() => any()}.

%% Example:
%% model_version_detail() :: #{
%%   <<"arn">> => string(),
%%   <<"createdTime">> => string(),
%%   <<"externalEventsDetail">> => external_events_detail(),
%%   <<"ingestedEventsDetail">> => ingested_events_detail(),
%%   <<"lastUpdatedTime">> => string(),
%%   <<"modelId">> => string(),
%%   <<"modelType">> => list(any()),
%%   <<"modelVersionNumber">> => string(),
%%   <<"status">> => string(),
%%   <<"trainingDataSchema">> => training_data_schema(),
%%   <<"trainingDataSource">> => list(any()),
%%   <<"trainingResult">> => training_result(),
%%   <<"trainingResultV2">> => training_result_v2()
%% }
-type model_version_detail() :: #{binary() => any()}.

%% Example:
%% resource_unavailable_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_unavailable_exception() :: #{binary() => any()}.

%% Example:
%% update_event_label_result() :: #{

%% }
-type update_event_label_result() :: #{binary() => any()}.

%% Example:
%% create_list_result() :: #{

%% }
-type create_list_result() :: #{binary() => any()}.

%% Example:
%% allow_deny_list() :: #{
%%   <<"arn">> => string(),
%%   <<"createdTime">> => string(),
%%   <<"description">> => string(),
%%   <<"name">> => string(),
%%   <<"updatedTime">> => string(),
%%   <<"variableType">> => string()
%% }
-type allow_deny_list() :: #{binary() => any()}.

%% Example:
%% variable_impact_explanation() :: #{
%%   <<"eventVariableName">> => string(),
%%   <<"logOddsImpact">> => float(),
%%   <<"relativeImpact">> => string()
%% }
-type variable_impact_explanation() :: #{binary() => any()}.

%% Example:
%% create_batch_import_job_result() :: #{

%% }
-type create_batch_import_job_result() :: #{binary() => any()}.

%% Example:
%% create_model_request() :: #{
%%   <<"description">> => string(),
%%   <<"eventTypeName">> := string(),
%%   <<"modelId">> := string(),
%%   <<"modelType">> := list(any()),
%%   <<"tags">> => list(tag())
%% }
-type create_model_request() :: #{binary() => any()}.

%% Example:
%% update_model_request() :: #{
%%   <<"description">> => string(),
%%   <<"modelId">> := string(),
%%   <<"modelType">> := list(any())
%% }
-type update_model_request() :: #{binary() => any()}.

%% Example:
%% cancel_batch_import_job_result() :: #{

%% }
-type cancel_batch_import_job_result() :: #{binary() => any()}.

%% Example:
%% describe_detector_result() :: #{
%%   <<"arn">> => string(),
%%   <<"detectorId">> => string(),
%%   <<"detectorVersionSummaries">> => list(detector_version_summary()),
%%   <<"nextToken">> => string()
%% }
-type describe_detector_result() :: #{binary() => any()}.

%% Example:
%% get_outcomes_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"name">> => string(),
%%   <<"nextToken">> => string()
%% }
-type get_outcomes_request() :: #{binary() => any()}.

%% Example:
%% delete_entity_type_result() :: #{

%% }
-type delete_entity_type_result() :: #{binary() => any()}.

%% Example:
%% delete_variable_request() :: #{
%%   <<"name">> := string()
%% }
-type delete_variable_request() :: #{binary() => any()}.

%% Example:
%% training_result_v2() :: #{
%%   <<"aggregatedVariablesImportanceMetrics">> => aggregated_variables_importance_metrics(),
%%   <<"dataValidationMetrics">> => data_validation_metrics(),
%%   <<"trainingMetricsV2">> => training_metrics_v2(),
%%   <<"variableImportanceMetrics">> => variable_importance_metrics()
%% }
-type training_result_v2() :: #{binary() => any()}.

%% Example:
%% delete_batch_import_job_request() :: #{
%%   <<"jobId">> := string()
%% }
-type delete_batch_import_job_request() :: #{binary() => any()}.

%% Example:
%% delete_batch_import_job_result() :: #{

%% }
-type delete_batch_import_job_result() :: #{binary() => any()}.

%% Example:
%% get_delete_events_by_event_type_status_request() :: #{
%%   <<"eventTypeName">> := string()
%% }
-type get_delete_events_by_event_type_status_request() :: #{binary() => any()}.

%% Example:
%% batch_import() :: #{
%%   <<"arn">> => string(),
%%   <<"completionTime">> => string(),
%%   <<"eventTypeName">> => string(),
%%   <<"failedRecordsCount">> => integer(),
%%   <<"failureReason">> => string(),
%%   <<"iamRoleArn">> => string(),
%%   <<"inputPath">> => string(),
%%   <<"jobId">> => string(),
%%   <<"outputPath">> => string(),
%%   <<"processedRecordsCount">> => integer(),
%%   <<"startTime">> => string(),
%%   <<"status">> => list(any()),
%%   <<"totalRecordsCount">> => integer()
%% }
-type batch_import() :: #{binary() => any()}.

%% Example:
%% untag_resource_request() :: #{
%%   <<"resourceARN">> := string(),
%%   <<"tagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% a_t_i_metric_data_point() :: #{
%%   <<"adr">> => float(),
%%   <<"atodr">> => float(),
%%   <<"cr">> => float(),
%%   <<"threshold">> => float()
%% }
-type a_t_i_metric_data_point() :: #{binary() => any()}.

%% Example:
%% evaluated_external_model() :: #{
%%   <<"inputVariables">> => map(),
%%   <<"modelEndpoint">> => string(),
%%   <<"outputVariables">> => map(),
%%   <<"useEventVariables">> => boolean()
%% }
-type evaluated_external_model() :: #{binary() => any()}.

%% Example:
%% get_model_version_request() :: #{
%%   <<"modelId">> := string(),
%%   <<"modelType">> := list(any()),
%%   <<"modelVersionNumber">> := string()
%% }
-type get_model_version_request() :: #{binary() => any()}.

%% Example:
%% get_variables_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"name">> => string(),
%%   <<"nextToken">> => string()
%% }
-type get_variables_request() :: #{binary() => any()}.

%% Example:
%% rule_detail() :: #{
%%   <<"arn">> => string(),
%%   <<"createdTime">> => string(),
%%   <<"description">> => string(),
%%   <<"detectorId">> => string(),
%%   <<"expression">> => string(),
%%   <<"language">> => list(any()),
%%   <<"lastUpdatedTime">> => string(),
%%   <<"outcomes">> => list(string()),
%%   <<"ruleId">> => string(),
%%   <<"ruleVersion">> => string()
%% }
-type rule_detail() :: #{binary() => any()}.

%% Example:
%% delete_list_request() :: #{
%%   <<"name">> := string()
%% }
-type delete_list_request() :: #{binary() => any()}.

%% Example:
%% describe_detector_request() :: #{
%%   <<"detectorId">> := string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type describe_detector_request() :: #{binary() => any()}.

%% Example:
%% event_variable_summary() :: #{
%%   <<"name">> => string(),
%%   <<"source">> => string(),
%%   <<"value">> => string()
%% }
-type event_variable_summary() :: #{binary() => any()}.

%% Example:
%% training_data_schema() :: #{
%%   <<"labelSchema">> => label_schema(),
%%   <<"modelVariables">> => list(string())
%% }
-type training_data_schema() :: #{binary() => any()}.

%% Example:
%% describe_model_versions_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"modelId">> => string(),
%%   <<"modelType">> => list(any()),
%%   <<"modelVersionNumber">> => string(),
%%   <<"nextToken">> => string()
%% }
-type describe_model_versions_request() :: #{binary() => any()}.

%% Example:
%% delete_rule_request() :: #{
%%   <<"rule">> := rule()
%% }
-type delete_rule_request() :: #{binary() => any()}.

%% Example:
%% put_detector_request() :: #{
%%   <<"description">> => string(),
%%   <<"detectorId">> := string(),
%%   <<"eventTypeName">> := string(),
%%   <<"tags">> => list(tag())
%% }
-type put_detector_request() :: #{binary() => any()}.

%% Example:
%% get_event_types_result() :: #{
%%   <<"eventTypes">> => list(event_type()),
%%   <<"nextToken">> => string()
%% }
-type get_event_types_result() :: #{binary() => any()}.

%% Example:
%% send_event_request() :: #{
%%   <<"assignedLabel">> => string(),
%%   <<"entities">> := list(entity()),
%%   <<"eventId">> := string(),
%%   <<"eventTimestamp">> := string(),
%%   <<"eventTypeName">> := string(),
%%   <<"eventVariables">> := map(),
%%   <<"labelTimestamp">> => string()
%% }
-type send_event_request() :: #{binary() => any()}.

%% Example:
%% batch_prediction() :: #{
%%   <<"arn">> => string(),
%%   <<"completionTime">> => string(),
%%   <<"detectorName">> => string(),
%%   <<"detectorVersion">> => string(),
%%   <<"eventTypeName">> => string(),
%%   <<"failureReason">> => string(),
%%   <<"iamRoleArn">> => string(),
%%   <<"inputPath">> => string(),
%%   <<"jobId">> => string(),
%%   <<"lastHeartbeatTime">> => string(),
%%   <<"outputPath">> => string(),
%%   <<"processedRecordsCount">> => integer(),
%%   <<"startTime">> => string(),
%%   <<"status">> => list(any()),
%%   <<"totalRecordsCount">> => integer()
%% }
-type batch_prediction() :: #{binary() => any()}.

%% Example:
%% delete_variable_result() :: #{

%% }
-type delete_variable_result() :: #{binary() => any()}.

%% Example:
%% entity_type() :: #{
%%   <<"arn">> => string(),
%%   <<"createdTime">> => string(),
%%   <<"description">> => string(),
%%   <<"lastUpdatedTime">> => string(),
%%   <<"name">> => string()
%% }
-type entity_type() :: #{binary() => any()}.

%% Example:
%% model_output_configuration() :: #{
%%   <<"csvIndexToVariableMap">> => map(),
%%   <<"format">> => list(any()),
%%   <<"jsonKeyToVariableMap">> => map()
%% }
-type model_output_configuration() :: #{binary() => any()}.

%% Example:
%% update_detector_version_request() :: #{
%%   <<"description">> => string(),
%%   <<"detectorId">> := string(),
%%   <<"detectorVersionId">> := string(),
%%   <<"externalModelEndpoints">> := list(string()),
%%   <<"modelVersions">> => list(model_version()),
%%   <<"ruleExecutionMode">> => list(any()),
%%   <<"rules">> := list(rule())
%% }
-type update_detector_version_request() :: #{binary() => any()}.

%% Example:
%% o_f_i_metric_data_point() :: #{
%%   <<"fpr">> => float(),
%%   <<"precision">> => float(),
%%   <<"threshold">> => float(),
%%   <<"tpr">> => float()
%% }
-type o_f_i_metric_data_point() :: #{binary() => any()}.

%% Example:
%% update_detector_version_result() :: #{

%% }
-type update_detector_version_result() :: #{binary() => any()}.

%% Example:
%% t_f_i_model_performance() :: #{
%%   <<"auc">> => float(),
%%   <<"uncertaintyRange">> => uncertainty_range()
%% }
-type t_f_i_model_performance() :: #{binary() => any()}.

%% Example:
%% update_rule_version_result() :: #{
%%   <<"rule">> => rule()
%% }
-type update_rule_version_result() :: #{binary() => any()}.

%% Example:
%% create_model_version_request() :: #{
%%   <<"externalEventsDetail">> => external_events_detail(),
%%   <<"ingestedEventsDetail">> => ingested_events_detail(),
%%   <<"modelId">> := string(),
%%   <<"modelType">> := list(any()),
%%   <<"tags">> => list(tag()),
%%   <<"trainingDataSchema">> := training_data_schema(),
%%   <<"trainingDataSource">> := list(any())
%% }
-type create_model_version_request() :: #{binary() => any()}.

%% Example:
%% create_batch_prediction_job_result() :: #{

%% }
-type create_batch_prediction_job_result() :: #{binary() => any()}.

%% Example:
%% create_batch_import_job_request() :: #{
%%   <<"eventTypeName">> := string(),
%%   <<"iamRoleArn">> := string(),
%%   <<"inputPath">> := string(),
%%   <<"jobId">> := string(),
%%   <<"outputPath">> := string(),
%%   <<"tags">> => list(tag())
%% }
-type create_batch_import_job_request() :: #{binary() => any()}.

%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.

%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% batch_get_variable_result() :: #{
%%   <<"errors">> => list(batch_get_variable_error()),
%%   <<"variables">> => list(variable())
%% }
-type batch_get_variable_result() :: #{binary() => any()}.

%% Example:
%% prediction_explanations() :: #{
%%   <<"aggregatedVariablesImpactExplanations">> => list(aggregated_variables_impact_explanation()),
%%   <<"variableImpactExplanations">> => list(variable_impact_explanation())
%% }
-type prediction_explanations() :: #{binary() => any()}.

%% Example:
%% outcome() :: #{
%%   <<"arn">> => string(),
%%   <<"createdTime">> => string(),
%%   <<"description">> => string(),
%%   <<"lastUpdatedTime">> => string(),
%%   <<"name">> => string()
%% }
-type outcome() :: #{binary() => any()}.

%% Example:
%% put_detector_result() :: #{

%% }
-type put_detector_result() :: #{binary() => any()}.

%% Example:
%% detector_version_summary() :: #{
%%   <<"description">> => string(),
%%   <<"detectorVersionId">> => string(),
%%   <<"lastUpdatedTime">> => string(),
%%   <<"status">> => list(any())
%% }
-type detector_version_summary() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"key">> => string(),
%%   <<"value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% update_rule_metadata_request() :: #{
%%   <<"description">> := string(),
%%   <<"rule">> := rule()
%% }
-type update_rule_metadata_request() :: #{binary() => any()}.

%% Example:
%% prediction_time_range() :: #{
%%   <<"endTime">> => string(),
%%   <<"startTime">> => string()
%% }
-type prediction_time_range() :: #{binary() => any()}.

%% Example:
%% get_detectors_request() :: #{
%%   <<"detectorId">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type get_detectors_request() :: #{binary() => any()}.

%% Example:
%% variable_importance_metrics() :: #{
%%   <<"logOddsMetrics">> => list(log_odds_metric())
%% }
-type variable_importance_metrics() :: #{binary() => any()}.

%% Example:
%% delete_label_request() :: #{
%%   <<"name">> := string()
%% }
-type delete_label_request() :: #{binary() => any()}.

%% Example:
%% put_kms_encryption_key_result() :: #{

%% }
-type put_kms_encryption_key_result() :: #{binary() => any()}.

%% Example:
%% put_external_model_result() :: #{

%% }
-type put_external_model_result() :: #{binary() => any()}.

%% Example:
%% get_event_request() :: #{
%%   <<"eventId">> := string(),
%%   <<"eventTypeName">> := string()
%% }
-type get_event_request() :: #{binary() => any()}.

%% Example:
%% ingested_events_time_window() :: #{
%%   <<"endTime">> => string(),
%%   <<"startTime">> => string()
%% }
-type ingested_events_time_window() :: #{binary() => any()}.

%% Example:
%% get_labels_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"name">> => string(),
%%   <<"nextToken">> => string()
%% }
-type get_labels_request() :: #{binary() => any()}.

%% Example:
%% model_scores() :: #{
%%   <<"modelVersion">> => model_version(),
%%   <<"scores">> => map()
%% }
-type model_scores() :: #{binary() => any()}.

%% Example:
%% create_variable_result() :: #{

%% }
-type create_variable_result() :: #{binary() => any()}.

%% Example:
%% event_orchestration() :: #{
%%   <<"eventBridgeEnabled">> => boolean()
%% }
-type event_orchestration() :: #{binary() => any()}.

%% Example:
%% data_validation_metrics() :: #{
%%   <<"fieldLevelMessages">> => list(field_validation_message()),
%%   <<"fileLevelMessages">> => list(file_validation_message())
%% }
-type data_validation_metrics() :: #{binary() => any()}.

%% Example:
%% get_batch_import_jobs_request() :: #{
%%   <<"jobId">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type get_batch_import_jobs_request() :: #{binary() => any()}.

%% Example:
%% t_f_i_training_metrics_value() :: #{
%%   <<"metricDataPoints">> => list(t_f_i_metric_data_point()),
%%   <<"modelPerformance">> => t_f_i_model_performance()
%% }
-type t_f_i_training_metrics_value() :: #{binary() => any()}.

%% Example:
%% delete_label_result() :: #{

%% }
-type delete_label_result() :: #{binary() => any()}.

%% Example:
%% update_variable_request() :: #{
%%   <<"defaultValue">> => string(),
%%   <<"description">> => string(),
%%   <<"name">> := string(),
%%   <<"variableType">> => string()
%% }
-type update_variable_request() :: #{binary() => any()}.

%% Example:
%% get_detectors_result() :: #{
%%   <<"detectors">> => list(detector()),
%%   <<"nextToken">> => string()
%% }
-type get_detectors_result() :: #{binary() => any()}.

%% Example:
%% get_list_elements_result() :: #{
%%   <<"elements">> => list(string()),
%%   <<"nextToken">> => string()
%% }
-type get_list_elements_result() :: #{binary() => any()}.

%% Example:
%% delete_external_model_result() :: #{

%% }
-type delete_external_model_result() :: #{binary() => any()}.

%% Example:
%% variable_entry() :: #{
%%   <<"dataSource">> => string(),
%%   <<"dataType">> => string(),
%%   <<"defaultValue">> => string(),
%%   <<"description">> => string(),
%%   <<"name">> => string(),
%%   <<"variableType">> => string()
%% }
-type variable_entry() :: #{binary() => any()}.

%% Example:
%% put_entity_type_request() :: #{
%%   <<"description">> => string(),
%%   <<"name">> := string(),
%%   <<"tags">> => list(tag())
%% }
-type put_entity_type_request() :: #{binary() => any()}.

%% Example:
%% training_metrics() :: #{
%%   <<"auc">> => float(),
%%   <<"metricDataPoints">> => list(metric_data_point())
%% }
-type training_metrics() :: #{binary() => any()}.

%% Example:
%% batch_create_variable_result() :: #{
%%   <<"errors">> => list(batch_create_variable_error())
%% }
-type batch_create_variable_result() :: #{binary() => any()}.

%% Example:
%% update_model_version_status_request() :: #{
%%   <<"modelId">> := string(),
%%   <<"modelType">> := list(any()),
%%   <<"modelVersionNumber">> := string(),
%%   <<"status">> := list(any())
%% }
-type update_model_version_status_request() :: #{binary() => any()}.

%% Example:
%% update_detector_version_metadata_request() :: #{
%%   <<"description">> := string(),
%%   <<"detectorId">> := string(),
%%   <<"detectorVersionId">> := string()
%% }
-type update_detector_version_metadata_request() :: #{binary() => any()}.

%% Example:
%% get_event_prediction_result() :: #{
%%   <<"externalModelOutputs">> => list(external_model_outputs()),
%%   <<"modelScores">> => list(model_scores()),
%%   <<"ruleResults">> => list(rule_result())
%% }
-type get_event_prediction_result() :: #{binary() => any()}.

%% Example:
%% get_labels_result() :: #{
%%   <<"labels">> => list(label()),
%%   <<"nextToken">> => string()
%% }
-type get_labels_result() :: #{binary() => any()}.

%% Example:
%% delete_detector_version_request() :: #{
%%   <<"detectorId">> := string(),
%%   <<"detectorVersionId">> := string()
%% }
-type delete_detector_version_request() :: #{binary() => any()}.

%% Example:
%% get_entity_types_result() :: #{
%%   <<"entityTypes">> => list(entity_type()),
%%   <<"nextToken">> => string()
%% }
-type get_entity_types_result() :: #{binary() => any()}.

%% Example:
%% file_validation_message() :: #{
%%   <<"content">> => string(),
%%   <<"title">> => string(),
%%   <<"type">> => string()
%% }
-type file_validation_message() :: #{binary() => any()}.

%% Example:
%% external_events_detail() :: #{
%%   <<"dataAccessRoleArn">> => string(),
%%   <<"dataLocation">> => string()
%% }
-type external_events_detail() :: #{binary() => any()}.

%% Example:
%% variable() :: #{
%%   <<"arn">> => string(),
%%   <<"createdTime">> => string(),
%%   <<"dataSource">> => list(any()),
%%   <<"dataType">> => list(any()),
%%   <<"defaultValue">> => string(),
%%   <<"description">> => string(),
%%   <<"lastUpdatedTime">> => string(),
%%   <<"name">> => string(),
%%   <<"variableType">> => string()
%% }
-type variable() :: #{binary() => any()}.

%% Example:
%% log_odds_metric() :: #{
%%   <<"variableImportance">> => float(),
%%   <<"variableName">> => string(),
%%   <<"variableType">> => string()
%% }
-type log_odds_metric() :: #{binary() => any()}.

%% Example:
%% put_outcome_request() :: #{
%%   <<"description">> => string(),
%%   <<"name">> := string(),
%%   <<"tags">> => list(tag())
%% }
-type put_outcome_request() :: #{binary() => any()}.

%% Example:
%% delete_event_type_result() :: #{

%% }
-type delete_event_type_result() :: #{binary() => any()}.

%% Example:
%% o_f_i_model_performance() :: #{
%%   <<"auc">> => float(),
%%   <<"uncertaintyRange">> => uncertainty_range()
%% }
-type o_f_i_model_performance() :: #{binary() => any()}.

%% Example:
%% get_model_version_result() :: #{
%%   <<"arn">> => string(),
%%   <<"externalEventsDetail">> => external_events_detail(),
%%   <<"ingestedEventsDetail">> => ingested_events_detail(),
%%   <<"modelId">> => string(),
%%   <<"modelType">> => list(any()),
%%   <<"modelVersionNumber">> => string(),
%%   <<"status">> => string(),
%%   <<"trainingDataSchema">> => training_data_schema(),
%%   <<"trainingDataSource">> => list(any())
%% }
-type get_model_version_result() :: #{binary() => any()}.

%% Example:
%% update_model_version_status_result() :: #{

%% }
-type update_model_version_status_result() :: #{binary() => any()}.

%% Example:
%% rule() :: #{
%%   <<"detectorId">> => string(),
%%   <<"ruleId">> => string(),
%%   <<"ruleVersion">> => string()
%% }
-type rule() :: #{binary() => any()}.

%% Example:
%% delete_event_request() :: #{
%%   <<"deleteAuditHistory">> => boolean(),
%%   <<"eventId">> := string(),
%%   <<"eventTypeName">> := string()
%% }
-type delete_event_request() :: #{binary() => any()}.

%% Example:
%% delete_detector_version_result() :: #{

%% }
-type delete_detector_version_result() :: #{binary() => any()}.

%% Example:
%% cancel_batch_prediction_job_result() :: #{

%% }
-type cancel_batch_prediction_job_result() :: #{binary() => any()}.

%% Example:
%% delete_outcome_request() :: #{
%%   <<"name">> := string()
%% }
-type delete_outcome_request() :: #{binary() => any()}.

%% Example:
%% get_external_models_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"modelEndpoint">> => string(),
%%   <<"nextToken">> => string()
%% }
-type get_external_models_request() :: #{binary() => any()}.

%% Example:
%% aggregated_variables_importance_metrics() :: #{
%%   <<"logOddsMetrics">> => list(aggregated_log_odds_metric())
%% }
-type aggregated_variables_importance_metrics() :: #{binary() => any()}.

%% Example:
%% get_models_result() :: #{
%%   <<"models">> => list(model()),
%%   <<"nextToken">> => string()
%% }
-type get_models_result() :: #{binary() => any()}.

%% Example:
%% get_rules_request() :: #{
%%   <<"detectorId">> := string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"ruleId">> => string(),
%%   <<"ruleVersion">> => string()
%% }
-type get_rules_request() :: #{binary() => any()}.

%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => string()
%% }
-type internal_server_exception() :: #{binary() => any()}.

%% Example:
%% batch_create_variable_request() :: #{
%%   <<"tags">> => list(tag()),
%%   <<"variableEntries">> := list(variable_entry())
%% }
-type batch_create_variable_request() :: #{binary() => any()}.

%% Example:
%% delete_external_model_request() :: #{
%%   <<"modelEndpoint">> := string()
%% }
-type delete_external_model_request() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_result() :: #{
%%   <<"nextToken">> => string(),
%%   <<"tags">> => list(tag())
%% }
-type list_tags_for_resource_result() :: #{binary() => any()}.

%% Example:
%% get_batch_prediction_jobs_request() :: #{
%%   <<"jobId">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type get_batch_prediction_jobs_request() :: #{binary() => any()}.

%% Example:
%% external_model_summary() :: #{
%%   <<"modelEndpoint">> => string(),
%%   <<"modelSource">> => list(any())
%% }
-type external_model_summary() :: #{binary() => any()}.

%% Example:
%% put_event_type_result() :: #{

%% }
-type put_event_type_result() :: #{binary() => any()}.

%% Example:
%% evaluated_model_version() :: #{
%%   <<"evaluations">> => list(model_version_evaluation()),
%%   <<"modelId">> => string(),
%%   <<"modelType">> => string(),
%%   <<"modelVersion">> => string()
%% }
-type evaluated_model_version() :: #{binary() => any()}.

%% Example:
%% put_entity_type_result() :: #{

%% }
-type put_entity_type_result() :: #{binary() => any()}.

%% Example:
%% describe_model_versions_result() :: #{
%%   <<"modelVersionDetails">> => list(model_version_detail()),
%%   <<"nextToken">> => string()
%% }
-type describe_model_versions_result() :: #{binary() => any()}.

%% Example:
%% event() :: #{
%%   <<"currentLabel">> => string(),
%%   <<"entities">> => list(entity()),
%%   <<"eventId">> => string(),
%%   <<"eventTimestamp">> => string(),
%%   <<"eventTypeName">> => string(),
%%   <<"eventVariables">> => map(),
%%   <<"labelTimestamp">> => string()
%% }
-type event() :: #{binary() => any()}.

%% Example:
%% delete_model_version_request() :: #{
%%   <<"modelId">> := string(),
%%   <<"modelType">> := list(any()),
%%   <<"modelVersionNumber">> := string()
%% }
-type delete_model_version_request() :: #{binary() => any()}.

%% Example:
%% model_endpoint_data_blob() :: #{
%%   <<"byteBuffer">> => binary(),
%%   <<"contentType">> => string()
%% }
-type model_endpoint_data_blob() :: #{binary() => any()}.

%% Example:
%% delete_model_request() :: #{
%%   <<"modelId">> := string(),
%%   <<"modelType">> := list(any())
%% }
-type delete_model_request() :: #{binary() => any()}.

%% Example:
%% create_detector_version_request() :: #{
%%   <<"description">> => string(),
%%   <<"detectorId">> := string(),
%%   <<"externalModelEndpoints">> => list(string()),
%%   <<"modelVersions">> => list(model_version()),
%%   <<"ruleExecutionMode">> => list(any()),
%%   <<"rules">> := list(rule()),
%%   <<"tags">> => list(tag())
%% }
-type create_detector_version_request() :: #{binary() => any()}.

%% Example:
%% batch_get_variable_error() :: #{
%%   <<"code">> => integer(),
%%   <<"message">> => string(),
%%   <<"name">> => string()
%% }
-type batch_get_variable_error() :: #{binary() => any()}.

%% Example:
%% get_external_models_result() :: #{
%%   <<"externalModels">> => list(external_model()),
%%   <<"nextToken">> => string()
%% }
-type get_external_models_result() :: #{binary() => any()}.

%% Example:
%% update_detector_version_status_request() :: #{
%%   <<"detectorId">> := string(),
%%   <<"detectorVersionId">> := string(),
%%   <<"status">> := list(any())
%% }
-type update_detector_version_status_request() :: #{binary() => any()}.

%% Example:
%% get_models_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"modelId">> => string(),
%%   <<"modelType">> => list(any()),
%%   <<"nextToken">> => string()
%% }
-type get_models_request() :: #{binary() => any()}.

%% Example:
%% get_event_prediction_metadata_result() :: #{
%%   <<"detectorId">> => string(),
%%   <<"detectorVersionId">> => string(),
%%   <<"detectorVersionStatus">> => string(),
%%   <<"entityId">> => string(),
%%   <<"entityType">> => string(),
%%   <<"evaluatedExternalModels">> => list(evaluated_external_model()),
%%   <<"evaluatedModelVersions">> => list(evaluated_model_version()),
%%   <<"eventId">> => string(),
%%   <<"eventTimestamp">> => string(),
%%   <<"eventTypeName">> => string(),
%%   <<"eventVariables">> => list(event_variable_summary()),
%%   <<"outcomes">> => list(string()),
%%   <<"predictionTimestamp">> => string(),
%%   <<"ruleExecutionMode">> => list(any()),
%%   <<"rules">> => list(evaluated_rule())
%% }
-type get_event_prediction_metadata_result() :: #{binary() => any()}.

%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% aggregated_log_odds_metric() :: #{
%%   <<"aggregatedVariablesImportance">> => float(),
%%   <<"variableNames">> => list(string())
%% }
-type aggregated_log_odds_metric() :: #{binary() => any()}.

%% Example:
%% get_detector_version_request() :: #{
%%   <<"detectorId">> := string(),
%%   <<"detectorVersionId">> := string()
%% }
-type get_detector_version_request() :: #{binary() => any()}.

%% Example:
%% rule_result() :: #{
%%   <<"outcomes">> => list(string()),
%%   <<"ruleId">> => string()
%% }
-type rule_result() :: #{binary() => any()}.

%% Example:
%% get_delete_events_by_event_type_status_result() :: #{
%%   <<"eventTypeName">> => string(),
%%   <<"eventsDeletionStatus">> => list(any())
%% }
-type get_delete_events_by_event_type_status_result() :: #{binary() => any()}.

%% Example:
%% delete_events_by_event_type_result() :: #{
%%   <<"eventTypeName">> => string(),
%%   <<"eventsDeletionStatus">> => string()
%% }
-type delete_events_by_event_type_result() :: #{binary() => any()}.

%% Example:
%% update_model_version_result() :: #{
%%   <<"modelId">> => string(),
%%   <<"modelType">> => list(any()),
%%   <<"modelVersionNumber">> => string(),
%%   <<"status">> => string()
%% }
-type update_model_version_result() :: #{binary() => any()}.

%% Example:
%% create_rule_result() :: #{
%%   <<"rule">> => rule()
%% }
-type create_rule_result() :: #{binary() => any()}.

%% Example:
%% update_list_request() :: #{
%%   <<"description">> => string(),
%%   <<"elements">> => list(string()),
%%   <<"name">> := string(),
%%   <<"updateMode">> => list(any()),
%%   <<"variableType">> => string()
%% }
-type update_list_request() :: #{binary() => any()}.

%% Example:
%% delete_list_result() :: #{

%% }
-type delete_list_result() :: #{binary() => any()}.

%% Example:
%% validation_exception() :: #{
%%   <<"message">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"resourceARN">> := string()
%% }
-type list_tags_for_resource_request() :: #{binary() => any()}.

%% Example:
%% delete_model_result() :: #{

%% }
-type delete_model_result() :: #{binary() => any()}.

%% Example:
%% get_event_types_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"name">> => string(),
%%   <<"nextToken">> => string()
%% }
-type get_event_types_request() :: #{binary() => any()}.

%% Example:
%% get_event_prediction_metadata_request() :: #{
%%   <<"detectorId">> := string(),
%%   <<"detectorVersionId">> := string(),
%%   <<"eventId">> := string(),
%%   <<"eventTypeName">> := string(),
%%   <<"predictionTimestamp">> := string()
%% }
-type get_event_prediction_metadata_request() :: #{binary() => any()}.

%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.

%% Example:
%% delete_batch_prediction_job_result() :: #{

%% }
-type delete_batch_prediction_job_result() :: #{binary() => any()}.

%% Example:
%% put_kms_encryption_key_request() :: #{
%%   <<"kmsEncryptionKeyArn">> := string()
%% }
-type put_kms_encryption_key_request() :: #{binary() => any()}.

%% Example:
%% delete_event_result() :: #{

%% }
-type delete_event_result() :: #{binary() => any()}.

%% Example:
%% evaluated_rule() :: #{
%%   <<"evaluated">> => boolean(),
%%   <<"expression">> => string(),
%%   <<"expressionWithValues">> => string(),
%%   <<"matched">> => boolean(),
%%   <<"outcomes">> => list(string()),
%%   <<"ruleId">> => string(),
%%   <<"ruleVersion">> => string()
%% }
-type evaluated_rule() :: #{binary() => any()}.

%% Example:
%% get_batch_prediction_jobs_result() :: #{
%%   <<"batchPredictions">> => list(batch_prediction()),
%%   <<"nextToken">> => string()
%% }
-type get_batch_prediction_jobs_result() :: #{binary() => any()}.

%% Example:
%% tag_resource_result() :: #{

%% }
-type tag_resource_result() :: #{binary() => any()}.

%% Example:
%% update_event_label_request() :: #{
%%   <<"assignedLabel">> := string(),
%%   <<"eventId">> := string(),
%%   <<"eventTypeName">> := string(),
%%   <<"labelTimestamp">> := string()
%% }
-type update_event_label_request() :: #{binary() => any()}.

%% Example:
%% event_type() :: #{
%%   <<"arn">> => string(),
%%   <<"createdTime">> => string(),
%%   <<"description">> => string(),
%%   <<"entityTypes">> => list(string()),
%%   <<"eventIngestion">> => list(any()),
%%   <<"eventOrchestration">> => event_orchestration(),
%%   <<"eventVariables">> => list(string()),
%%   <<"ingestedEventStatistics">> => ingested_event_statistics(),
%%   <<"labels">> => list(string()),
%%   <<"lastUpdatedTime">> => string(),
%%   <<"name">> => string()
%% }
-type event_type() :: #{binary() => any()}.

%% Example:
%% put_outcome_result() :: #{

%% }
-type put_outcome_result() :: #{binary() => any()}.

%% Example:
%% training_result() :: #{
%%   <<"dataValidationMetrics">> => data_validation_metrics(),
%%   <<"trainingMetrics">> => training_metrics(),
%%   <<"variableImportanceMetrics">> => variable_importance_metrics()
%% }
-type training_result() :: #{binary() => any()}.

%% Example:
%% get_variables_result() :: #{
%%   <<"nextToken">> => string(),
%%   <<"variables">> => list(variable())
%% }
-type get_variables_result() :: #{binary() => any()}.

%% Example:
%% a_t_i_model_performance() :: #{
%%   <<"asi">> => float()
%% }
-type a_t_i_model_performance() :: #{binary() => any()}.

%% Example:
%% external_model_outputs() :: #{
%%   <<"externalModel">> => external_model_summary(),
%%   <<"outputs">> => map()
%% }
-type external_model_outputs() :: #{binary() => any()}.

%% Example:
%% get_lists_metadata_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"name">> => string(),
%%   <<"nextToken">> => string()
%% }
-type get_lists_metadata_request() :: #{binary() => any()}.

%% Example:
%% send_event_result() :: #{

%% }
-type send_event_result() :: #{binary() => any()}.

%% Example:
%% kms_key() :: #{
%%   <<"kmsEncryptionKeyArn">> => string()
%% }
-type kms_key() :: #{binary() => any()}.

%% Example:
%% update_detector_version_status_result() :: #{

%% }
-type update_detector_version_status_result() :: #{binary() => any()}.

%% Example:
%% put_external_model_request() :: #{
%%   <<"inputConfiguration">> := model_input_configuration(),
%%   <<"invokeModelEndpointRoleArn">> := string(),
%%   <<"modelEndpoint">> := string(),
%%   <<"modelEndpointStatus">> := list(any()),
%%   <<"modelSource">> := list(any()),
%%   <<"outputConfiguration">> := model_output_configuration(),
%%   <<"tags">> => list(tag())
%% }
-type put_external_model_request() :: #{binary() => any()}.

%% Example:
%% aggregated_variables_impact_explanation() :: #{
%%   <<"eventVariableNames">> => list(string()),
%%   <<"logOddsImpact">> => float(),
%%   <<"relativeImpact">> => string()
%% }
-type aggregated_variables_impact_explanation() :: #{binary() => any()}.

%% Example:
%% delete_events_by_event_type_request() :: #{
%%   <<"eventTypeName">> := string()
%% }
-type delete_events_by_event_type_request() :: #{binary() => any()}.

%% Example:
%% update_model_result() :: #{

%% }
-type update_model_result() :: #{binary() => any()}.

%% Example:
%% event_prediction_summary() :: #{
%%   <<"detectorId">> => string(),
%%   <<"detectorVersionId">> => string(),
%%   <<"eventId">> => string(),
%%   <<"eventTimestamp">> => string(),
%%   <<"eventTypeName">> => string(),
%%   <<"predictionTimestamp">> => string()
%% }
-type event_prediction_summary() :: #{binary() => any()}.

%% Example:
%% list_event_predictions_result() :: #{
%%   <<"eventPredictionSummaries">> => list(event_prediction_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_event_predictions_result() :: #{binary() => any()}.

%% Example:
%% delete_event_type_request() :: #{
%%   <<"name">> := string()
%% }
-type delete_event_type_request() :: #{binary() => any()}.

%% Example:
%% list_event_predictions_request() :: #{
%%   <<"detectorId">> => filter_condition(),
%%   <<"detectorVersionId">> => filter_condition(),
%%   <<"eventId">> => filter_condition(),
%%   <<"eventType">> => filter_condition(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"predictionTimeRange">> => prediction_time_range()
%% }
-type list_event_predictions_request() :: #{binary() => any()}.

%% Example:
%% uncertainty_range() :: #{
%%   <<"lowerBoundValue">> => float(),
%%   <<"upperBoundValue">> => float()
%% }
-type uncertainty_range() :: #{binary() => any()}.

%% Example:
%% cancel_batch_prediction_job_request() :: #{
%%   <<"jobId">> := string()
%% }
-type cancel_batch_prediction_job_request() :: #{binary() => any()}.

%% Example:
%% get_event_prediction_request() :: #{
%%   <<"detectorId">> := string(),
%%   <<"detectorVersionId">> => string(),
%%   <<"entities">> := list(entity()),
%%   <<"eventId">> := string(),
%%   <<"eventTimestamp">> := string(),
%%   <<"eventTypeName">> := string(),
%%   <<"eventVariables">> := map(),
%%   <<"externalModelEndpointDataBlobs">> => map()
%% }
-type get_event_prediction_request() :: #{binary() => any()}.

%% Example:
%% create_detector_version_result() :: #{
%%   <<"detectorId">> => string(),
%%   <<"detectorVersionId">> => string(),
%%   <<"status">> => list(any())
%% }
-type create_detector_version_result() :: #{binary() => any()}.

%% Example:
%% update_detector_version_metadata_result() :: #{

%% }
-type update_detector_version_metadata_result() :: #{binary() => any()}.

%% Example:
%% model() :: #{
%%   <<"arn">> => string(),
%%   <<"createdTime">> => string(),
%%   <<"description">> => string(),
%%   <<"eventTypeName">> => string(),
%%   <<"lastUpdatedTime">> => string(),
%%   <<"modelId">> => string(),
%%   <<"modelType">> => list(any())
%% }
-type model() :: #{binary() => any()}.

%% Example:
%% get_entity_types_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"name">> => string(),
%%   <<"nextToken">> => string()
%% }
-type get_entity_types_request() :: #{binary() => any()}.

%% Example:
%% put_label_result() :: #{

%% }
-type put_label_result() :: #{binary() => any()}.

%% Example:
%% label_schema() :: #{
%%   <<"labelMapper">> => map(),
%%   <<"unlabeledEventsTreatment">> => list(any())
%% }
-type label_schema() :: #{binary() => any()}.

%% Example:
%% get_outcomes_result() :: #{
%%   <<"nextToken">> => string(),
%%   <<"outcomes">> => list(outcome())
%% }
-type get_outcomes_result() :: #{binary() => any()}.

%% Example:
%% ingested_events_detail() :: #{
%%   <<"ingestedEventsTimeWindow">> => ingested_events_time_window()
%% }
-type ingested_events_detail() :: #{binary() => any()}.

%% Example:
%% get_batch_import_jobs_result() :: #{
%%   <<"batchImports">> => list(batch_import()),
%%   <<"nextToken">> => string()
%% }
-type get_batch_import_jobs_result() :: #{binary() => any()}.

%% Example:
%% put_event_type_request() :: #{
%%   <<"description">> => string(),
%%   <<"entityTypes">> := list(string()),
%%   <<"eventIngestion">> => list(any()),
%%   <<"eventOrchestration">> => event_orchestration(),
%%   <<"eventVariables">> := list(string()),
%%   <<"labels">> => list(string()),
%%   <<"name">> := string(),
%%   <<"tags">> => list(tag())
%% }
-type put_event_type_request() :: #{binary() => any()}.

%% Example:
%% delete_detector_result() :: #{

%% }
-type delete_detector_result() :: #{binary() => any()}.

%% Example:
%% detector() :: #{
%%   <<"arn">> => string(),
%%   <<"createdTime">> => string(),
%%   <<"description">> => string(),
%%   <<"detectorId">> => string(),
%%   <<"eventTypeName">> => string(),
%%   <<"lastUpdatedTime">> => string()
%% }
-type detector() :: #{binary() => any()}.

%% Example:
%% update_rule_metadata_result() :: #{

%% }
-type update_rule_metadata_result() :: #{binary() => any()}.

%% Example:
%% delete_rule_result() :: #{

%% }
-type delete_rule_result() :: #{binary() => any()}.

%% Example:
%% training_metrics_v2() :: #{
%%   <<"ati">> => a_t_i_training_metrics_value(),
%%   <<"ofi">> => o_f_i_training_metrics_value(),
%%   <<"tfi">> => t_f_i_training_metrics_value()
%% }
-type training_metrics_v2() :: #{binary() => any()}.

%% Example:
%% label() :: #{
%%   <<"arn">> => string(),
%%   <<"createdTime">> => string(),
%%   <<"description">> => string(),
%%   <<"lastUpdatedTime">> => string(),
%%   <<"name">> => string()
%% }
-type label() :: #{binary() => any()}.

%% Example:
%% get_rules_result() :: #{
%%   <<"nextToken">> => string(),
%%   <<"ruleDetails">> => list(rule_detail())
%% }
-type get_rules_result() :: #{binary() => any()}.

%% Example:
%% delete_detector_request() :: #{
%%   <<"detectorId">> := string()
%% }
-type delete_detector_request() :: #{binary() => any()}.

%% Example:
%% delete_batch_prediction_job_request() :: #{
%%   <<"jobId">> := string()
%% }
-type delete_batch_prediction_job_request() :: #{binary() => any()}.

%% Example:
%% get_detector_version_result() :: #{
%%   <<"arn">> => string(),
%%   <<"createdTime">> => string(),
%%   <<"description">> => string(),
%%   <<"detectorId">> => string(),
%%   <<"detectorVersionId">> => string(),
%%   <<"externalModelEndpoints">> => list(string()),
%%   <<"lastUpdatedTime">> => string(),
%%   <<"modelVersions">> => list(model_version()),
%%   <<"ruleExecutionMode">> => list(any()),
%%   <<"rules">> => list(rule()),
%%   <<"status">> => list(any())
%% }
-type get_detector_version_result() :: #{binary() => any()}.

-type batch_create_variable_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type batch_get_variable_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type cancel_batch_import_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type cancel_batch_prediction_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type create_batch_import_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type create_batch_prediction_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type create_detector_version_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type create_list_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type create_model_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type create_model_version_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type create_rule_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type create_variable_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type delete_batch_import_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type delete_batch_prediction_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type delete_detector_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type delete_detector_version_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_entity_type_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type delete_event_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type delete_event_type_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type delete_events_by_event_type_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_external_model_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type delete_label_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type delete_list_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type delete_model_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type delete_model_version_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type delete_outcome_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type delete_rule_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type delete_variable_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type describe_detector_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_model_versions_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_batch_import_jobs_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_batch_prediction_jobs_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_delete_events_by_event_type_status_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_detector_version_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_detectors_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_entity_types_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_event_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_event_prediction_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    resource_unavailable_exception().

-type get_event_prediction_metadata_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_event_types_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_external_models_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_kms_encryption_key_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_labels_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_list_elements_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_lists_metadata_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_model_version_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_models_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_outcomes_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_rules_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_variables_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_event_predictions_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_tags_for_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type put_detector_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type put_entity_type_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type put_event_type_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type put_external_model_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type put_kms_encryption_key_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type put_label_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type put_outcome_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type send_event_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type tag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type update_detector_version_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_detector_version_metadata_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type update_detector_version_status_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_event_label_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_list_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_model_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_model_version_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_model_version_status_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_rule_metadata_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_rule_version_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_variable_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a batch of variables.
-spec batch_create_variable(aws_client:aws_client(), batch_create_variable_request()) ->
    {ok, batch_create_variable_result(), tuple()} |
    {error, any()} |
    {error, batch_create_variable_errors(), tuple()}.
batch_create_variable(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_create_variable(Client, Input, []).

-spec batch_create_variable(aws_client:aws_client(), batch_create_variable_request(), proplists:proplist()) ->
    {ok, batch_create_variable_result(), tuple()} |
    {error, any()} |
    {error, batch_create_variable_errors(), tuple()}.
batch_create_variable(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchCreateVariable">>, Input, Options).

%% @doc Gets a batch of variables.
-spec batch_get_variable(aws_client:aws_client(), batch_get_variable_request()) ->
    {ok, batch_get_variable_result(), tuple()} |
    {error, any()} |
    {error, batch_get_variable_errors(), tuple()}.
batch_get_variable(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_get_variable(Client, Input, []).

-spec batch_get_variable(aws_client:aws_client(), batch_get_variable_request(), proplists:proplist()) ->
    {ok, batch_get_variable_result(), tuple()} |
    {error, any()} |
    {error, batch_get_variable_errors(), tuple()}.
batch_get_variable(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchGetVariable">>, Input, Options).

%% @doc Cancels an in-progress batch import job.
-spec cancel_batch_import_job(aws_client:aws_client(), cancel_batch_import_job_request()) ->
    {ok, cancel_batch_import_job_result(), tuple()} |
    {error, any()} |
    {error, cancel_batch_import_job_errors(), tuple()}.
cancel_batch_import_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    cancel_batch_import_job(Client, Input, []).

-spec cancel_batch_import_job(aws_client:aws_client(), cancel_batch_import_job_request(), proplists:proplist()) ->
    {ok, cancel_batch_import_job_result(), tuple()} |
    {error, any()} |
    {error, cancel_batch_import_job_errors(), tuple()}.
cancel_batch_import_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CancelBatchImportJob">>, Input, Options).

%% @doc Cancels the specified batch prediction job.
-spec cancel_batch_prediction_job(aws_client:aws_client(), cancel_batch_prediction_job_request()) ->
    {ok, cancel_batch_prediction_job_result(), tuple()} |
    {error, any()} |
    {error, cancel_batch_prediction_job_errors(), tuple()}.
cancel_batch_prediction_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    cancel_batch_prediction_job(Client, Input, []).

-spec cancel_batch_prediction_job(aws_client:aws_client(), cancel_batch_prediction_job_request(), proplists:proplist()) ->
    {ok, cancel_batch_prediction_job_result(), tuple()} |
    {error, any()} |
    {error, cancel_batch_prediction_job_errors(), tuple()}.
cancel_batch_prediction_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CancelBatchPredictionJob">>, Input, Options).

%% @doc Creates a batch import job.
-spec create_batch_import_job(aws_client:aws_client(), create_batch_import_job_request()) ->
    {ok, create_batch_import_job_result(), tuple()} |
    {error, any()} |
    {error, create_batch_import_job_errors(), tuple()}.
create_batch_import_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_batch_import_job(Client, Input, []).

-spec create_batch_import_job(aws_client:aws_client(), create_batch_import_job_request(), proplists:proplist()) ->
    {ok, create_batch_import_job_result(), tuple()} |
    {error, any()} |
    {error, create_batch_import_job_errors(), tuple()}.
create_batch_import_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateBatchImportJob">>, Input, Options).

%% @doc Creates a batch prediction job.
-spec create_batch_prediction_job(aws_client:aws_client(), create_batch_prediction_job_request()) ->
    {ok, create_batch_prediction_job_result(), tuple()} |
    {error, any()} |
    {error, create_batch_prediction_job_errors(), tuple()}.
create_batch_prediction_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_batch_prediction_job(Client, Input, []).

-spec create_batch_prediction_job(aws_client:aws_client(), create_batch_prediction_job_request(), proplists:proplist()) ->
    {ok, create_batch_prediction_job_result(), tuple()} |
    {error, any()} |
    {error, create_batch_prediction_job_errors(), tuple()}.
create_batch_prediction_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateBatchPredictionJob">>, Input, Options).

%% @doc Creates a detector version.
%%
%% The detector version starts in a `DRAFT' status.
-spec create_detector_version(aws_client:aws_client(), create_detector_version_request()) ->
    {ok, create_detector_version_result(), tuple()} |
    {error, any()} |
    {error, create_detector_version_errors(), tuple()}.
create_detector_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_detector_version(Client, Input, []).

-spec create_detector_version(aws_client:aws_client(), create_detector_version_request(), proplists:proplist()) ->
    {ok, create_detector_version_result(), tuple()} |
    {error, any()} |
    {error, create_detector_version_errors(), tuple()}.
create_detector_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDetectorVersion">>, Input, Options).

%% @doc
%% Creates a list.
%%
%% List is a set of input data for a variable in your event dataset. You use
%% the input data in a rule that's associated with your detector.
%% For more information, see Lists:
%% https://docs.aws.amazon.com/frauddetector/latest/ug/lists.html.
-spec create_list(aws_client:aws_client(), create_list_request()) ->
    {ok, create_list_result(), tuple()} |
    {error, any()} |
    {error, create_list_errors(), tuple()}.
create_list(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_list(Client, Input, []).

-spec create_list(aws_client:aws_client(), create_list_request(), proplists:proplist()) ->
    {ok, create_list_result(), tuple()} |
    {error, any()} |
    {error, create_list_errors(), tuple()}.
create_list(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateList">>, Input, Options).

%% @doc Creates a model using the specified model type.
-spec create_model(aws_client:aws_client(), create_model_request()) ->
    {ok, create_model_result(), tuple()} |
    {error, any()} |
    {error, create_model_errors(), tuple()}.
create_model(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_model(Client, Input, []).

-spec create_model(aws_client:aws_client(), create_model_request(), proplists:proplist()) ->
    {ok, create_model_result(), tuple()} |
    {error, any()} |
    {error, create_model_errors(), tuple()}.
create_model(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateModel">>, Input, Options).

%% @doc Creates a version of the model using the specified model type and
%% model id.
-spec create_model_version(aws_client:aws_client(), create_model_version_request()) ->
    {ok, create_model_version_result(), tuple()} |
    {error, any()} |
    {error, create_model_version_errors(), tuple()}.
create_model_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_model_version(Client, Input, []).

-spec create_model_version(aws_client:aws_client(), create_model_version_request(), proplists:proplist()) ->
    {ok, create_model_version_result(), tuple()} |
    {error, any()} |
    {error, create_model_version_errors(), tuple()}.
create_model_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateModelVersion">>, Input, Options).

%% @doc Creates a rule for use with the specified detector.
-spec create_rule(aws_client:aws_client(), create_rule_request()) ->
    {ok, create_rule_result(), tuple()} |
    {error, any()} |
    {error, create_rule_errors(), tuple()}.
create_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_rule(Client, Input, []).

-spec create_rule(aws_client:aws_client(), create_rule_request(), proplists:proplist()) ->
    {ok, create_rule_result(), tuple()} |
    {error, any()} |
    {error, create_rule_errors(), tuple()}.
create_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateRule">>, Input, Options).

%% @doc Creates a variable.
-spec create_variable(aws_client:aws_client(), create_variable_request()) ->
    {ok, create_variable_result(), tuple()} |
    {error, any()} |
    {error, create_variable_errors(), tuple()}.
create_variable(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_variable(Client, Input, []).

-spec create_variable(aws_client:aws_client(), create_variable_request(), proplists:proplist()) ->
    {ok, create_variable_result(), tuple()} |
    {error, any()} |
    {error, create_variable_errors(), tuple()}.
create_variable(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateVariable">>, Input, Options).

%% @doc Deletes the specified batch import job ID record.
%%
%% This action does not delete the data that was batch imported.
-spec delete_batch_import_job(aws_client:aws_client(), delete_batch_import_job_request()) ->
    {ok, delete_batch_import_job_result(), tuple()} |
    {error, any()} |
    {error, delete_batch_import_job_errors(), tuple()}.
delete_batch_import_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_batch_import_job(Client, Input, []).

-spec delete_batch_import_job(aws_client:aws_client(), delete_batch_import_job_request(), proplists:proplist()) ->
    {ok, delete_batch_import_job_result(), tuple()} |
    {error, any()} |
    {error, delete_batch_import_job_errors(), tuple()}.
delete_batch_import_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteBatchImportJob">>, Input, Options).

%% @doc Deletes a batch prediction job.
-spec delete_batch_prediction_job(aws_client:aws_client(), delete_batch_prediction_job_request()) ->
    {ok, delete_batch_prediction_job_result(), tuple()} |
    {error, any()} |
    {error, delete_batch_prediction_job_errors(), tuple()}.
delete_batch_prediction_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_batch_prediction_job(Client, Input, []).

-spec delete_batch_prediction_job(aws_client:aws_client(), delete_batch_prediction_job_request(), proplists:proplist()) ->
    {ok, delete_batch_prediction_job_result(), tuple()} |
    {error, any()} |
    {error, delete_batch_prediction_job_errors(), tuple()}.
delete_batch_prediction_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteBatchPredictionJob">>, Input, Options).

%% @doc Deletes the detector.
%%
%% Before deleting a detector, you must first delete all detector versions
%% and rule versions associated with the detector.
%%
%% When you delete a detector, Amazon Fraud Detector permanently deletes the
%% detector and the data is no longer stored in Amazon Fraud Detector.
-spec delete_detector(aws_client:aws_client(), delete_detector_request()) ->
    {ok, delete_detector_result(), tuple()} |
    {error, any()} |
    {error, delete_detector_errors(), tuple()}.
delete_detector(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_detector(Client, Input, []).

-spec delete_detector(aws_client:aws_client(), delete_detector_request(), proplists:proplist()) ->
    {ok, delete_detector_result(), tuple()} |
    {error, any()} |
    {error, delete_detector_errors(), tuple()}.
delete_detector(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDetector">>, Input, Options).

%% @doc Deletes the detector version.
%%
%% You cannot delete detector versions that are in `ACTIVE' status.
%%
%% When you delete a detector version, Amazon Fraud Detector permanently
%% deletes the detector and the data is no longer stored in Amazon Fraud
%% Detector.
-spec delete_detector_version(aws_client:aws_client(), delete_detector_version_request()) ->
    {ok, delete_detector_version_result(), tuple()} |
    {error, any()} |
    {error, delete_detector_version_errors(), tuple()}.
delete_detector_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_detector_version(Client, Input, []).

-spec delete_detector_version(aws_client:aws_client(), delete_detector_version_request(), proplists:proplist()) ->
    {ok, delete_detector_version_result(), tuple()} |
    {error, any()} |
    {error, delete_detector_version_errors(), tuple()}.
delete_detector_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDetectorVersion">>, Input, Options).

%% @doc Deletes an entity type.
%%
%% You cannot delete an entity type that is included in an event type.
%%
%% When you delete an entity type, Amazon Fraud Detector permanently deletes
%% that entity type and the data is no longer stored in Amazon Fraud
%% Detector.
-spec delete_entity_type(aws_client:aws_client(), delete_entity_type_request()) ->
    {ok, delete_entity_type_result(), tuple()} |
    {error, any()} |
    {error, delete_entity_type_errors(), tuple()}.
delete_entity_type(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_entity_type(Client, Input, []).

-spec delete_entity_type(aws_client:aws_client(), delete_entity_type_request(), proplists:proplist()) ->
    {ok, delete_entity_type_result(), tuple()} |
    {error, any()} |
    {error, delete_entity_type_errors(), tuple()}.
delete_entity_type(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteEntityType">>, Input, Options).

%% @doc Deletes the specified event.
%%
%% When you delete an event, Amazon Fraud Detector permanently deletes that
%% event and the event data is no longer stored in Amazon Fraud Detector.
%% If `deleteAuditHistory' is `True', event data is available through
%% search for up to 30 seconds after the delete operation is completed.
-spec delete_event(aws_client:aws_client(), delete_event_request()) ->
    {ok, delete_event_result(), tuple()} |
    {error, any()} |
    {error, delete_event_errors(), tuple()}.
delete_event(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_event(Client, Input, []).

-spec delete_event(aws_client:aws_client(), delete_event_request(), proplists:proplist()) ->
    {ok, delete_event_result(), tuple()} |
    {error, any()} |
    {error, delete_event_errors(), tuple()}.
delete_event(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteEvent">>, Input, Options).

%% @doc Deletes an event type.
%%
%% You cannot delete an event type that is used in a detector or a model.
%%
%% When you delete an event type, Amazon Fraud Detector permanently deletes
%% that event type and the data is no longer stored in Amazon Fraud Detector.
-spec delete_event_type(aws_client:aws_client(), delete_event_type_request()) ->
    {ok, delete_event_type_result(), tuple()} |
    {error, any()} |
    {error, delete_event_type_errors(), tuple()}.
delete_event_type(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_event_type(Client, Input, []).

-spec delete_event_type(aws_client:aws_client(), delete_event_type_request(), proplists:proplist()) ->
    {ok, delete_event_type_result(), tuple()} |
    {error, any()} |
    {error, delete_event_type_errors(), tuple()}.
delete_event_type(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteEventType">>, Input, Options).

%% @doc Deletes all events of a particular event type.
-spec delete_events_by_event_type(aws_client:aws_client(), delete_events_by_event_type_request()) ->
    {ok, delete_events_by_event_type_result(), tuple()} |
    {error, any()} |
    {error, delete_events_by_event_type_errors(), tuple()}.
delete_events_by_event_type(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_events_by_event_type(Client, Input, []).

-spec delete_events_by_event_type(aws_client:aws_client(), delete_events_by_event_type_request(), proplists:proplist()) ->
    {ok, delete_events_by_event_type_result(), tuple()} |
    {error, any()} |
    {error, delete_events_by_event_type_errors(), tuple()}.
delete_events_by_event_type(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteEventsByEventType">>, Input, Options).

%% @doc Removes a SageMaker model from Amazon Fraud Detector.
%%
%% You can remove an Amazon SageMaker model if it is not associated with a
%% detector version. Removing a SageMaker model disconnects it from Amazon
%% Fraud Detector, but the model remains available in SageMaker.
-spec delete_external_model(aws_client:aws_client(), delete_external_model_request()) ->
    {ok, delete_external_model_result(), tuple()} |
    {error, any()} |
    {error, delete_external_model_errors(), tuple()}.
delete_external_model(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_external_model(Client, Input, []).

-spec delete_external_model(aws_client:aws_client(), delete_external_model_request(), proplists:proplist()) ->
    {ok, delete_external_model_result(), tuple()} |
    {error, any()} |
    {error, delete_external_model_errors(), tuple()}.
delete_external_model(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteExternalModel">>, Input, Options).

%% @doc Deletes a label.
%%
%% You cannot delete labels that are included in an event type in Amazon
%% Fraud Detector.
%%
%% You cannot delete a label assigned to an event ID. You must first delete
%% the relevant event ID.
%%
%% When you delete a label, Amazon Fraud Detector permanently deletes that
%% label and the data is no longer stored in Amazon Fraud Detector.
-spec delete_label(aws_client:aws_client(), delete_label_request()) ->
    {ok, delete_label_result(), tuple()} |
    {error, any()} |
    {error, delete_label_errors(), tuple()}.
delete_label(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_label(Client, Input, []).

-spec delete_label(aws_client:aws_client(), delete_label_request(), proplists:proplist()) ->
    {ok, delete_label_result(), tuple()} |
    {error, any()} |
    {error, delete_label_errors(), tuple()}.
delete_label(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteLabel">>, Input, Options).

%% @doc
%% Deletes the list, provided it is not used in a rule.
%%
%% When you delete a list, Amazon Fraud Detector permanently deletes that
%% list and the elements in the list.
-spec delete_list(aws_client:aws_client(), delete_list_request()) ->
    {ok, delete_list_result(), tuple()} |
    {error, any()} |
    {error, delete_list_errors(), tuple()}.
delete_list(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_list(Client, Input, []).

-spec delete_list(aws_client:aws_client(), delete_list_request(), proplists:proplist()) ->
    {ok, delete_list_result(), tuple()} |
    {error, any()} |
    {error, delete_list_errors(), tuple()}.
delete_list(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteList">>, Input, Options).

%% @doc Deletes a model.
%%
%% You can delete models and model versions in Amazon Fraud Detector,
%% provided that they are not associated with a detector version.
%%
%% When you delete a model, Amazon Fraud Detector permanently deletes that
%% model and the data is no longer stored in Amazon Fraud Detector.
-spec delete_model(aws_client:aws_client(), delete_model_request()) ->
    {ok, delete_model_result(), tuple()} |
    {error, any()} |
    {error, delete_model_errors(), tuple()}.
delete_model(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_model(Client, Input, []).

-spec delete_model(aws_client:aws_client(), delete_model_request(), proplists:proplist()) ->
    {ok, delete_model_result(), tuple()} |
    {error, any()} |
    {error, delete_model_errors(), tuple()}.
delete_model(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteModel">>, Input, Options).

%% @doc Deletes a model version.
%%
%% You can delete models and model versions in Amazon Fraud Detector,
%% provided that they are not associated with a detector version.
%%
%% When you delete a model version, Amazon Fraud Detector permanently deletes
%% that model version and the data is no longer stored in Amazon Fraud
%% Detector.
-spec delete_model_version(aws_client:aws_client(), delete_model_version_request()) ->
    {ok, delete_model_version_result(), tuple()} |
    {error, any()} |
    {error, delete_model_version_errors(), tuple()}.
delete_model_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_model_version(Client, Input, []).

-spec delete_model_version(aws_client:aws_client(), delete_model_version_request(), proplists:proplist()) ->
    {ok, delete_model_version_result(), tuple()} |
    {error, any()} |
    {error, delete_model_version_errors(), tuple()}.
delete_model_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteModelVersion">>, Input, Options).

%% @doc Deletes an outcome.
%%
%% You cannot delete an outcome that is used in a rule version.
%%
%% When you delete an outcome, Amazon Fraud Detector permanently deletes that
%% outcome and the data is no longer stored in Amazon Fraud Detector.
-spec delete_outcome(aws_client:aws_client(), delete_outcome_request()) ->
    {ok, delete_outcome_result(), tuple()} |
    {error, any()} |
    {error, delete_outcome_errors(), tuple()}.
delete_outcome(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_outcome(Client, Input, []).

-spec delete_outcome(aws_client:aws_client(), delete_outcome_request(), proplists:proplist()) ->
    {ok, delete_outcome_result(), tuple()} |
    {error, any()} |
    {error, delete_outcome_errors(), tuple()}.
delete_outcome(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteOutcome">>, Input, Options).

%% @doc Deletes the rule.
%%
%% You cannot delete a rule if it is used by an `ACTIVE' or
%% `INACTIVE' detector version.
%%
%% When you delete a rule, Amazon Fraud Detector permanently deletes that
%% rule and the data is no longer stored in Amazon Fraud Detector.
-spec delete_rule(aws_client:aws_client(), delete_rule_request()) ->
    {ok, delete_rule_result(), tuple()} |
    {error, any()} |
    {error, delete_rule_errors(), tuple()}.
delete_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_rule(Client, Input, []).

-spec delete_rule(aws_client:aws_client(), delete_rule_request(), proplists:proplist()) ->
    {ok, delete_rule_result(), tuple()} |
    {error, any()} |
    {error, delete_rule_errors(), tuple()}.
delete_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteRule">>, Input, Options).

%% @doc Deletes a variable.
%%
%% You can't delete variables that are included in an event type in
%% Amazon Fraud Detector.
%%
%% Amazon Fraud Detector automatically deletes model output variables and
%% SageMaker model output variables when you delete the model. You can't
%% delete these variables manually.
%%
%% When you delete a variable, Amazon Fraud Detector permanently deletes that
%% variable and the data is no longer stored in Amazon Fraud Detector.
-spec delete_variable(aws_client:aws_client(), delete_variable_request()) ->
    {ok, delete_variable_result(), tuple()} |
    {error, any()} |
    {error, delete_variable_errors(), tuple()}.
delete_variable(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_variable(Client, Input, []).

-spec delete_variable(aws_client:aws_client(), delete_variable_request(), proplists:proplist()) ->
    {ok, delete_variable_result(), tuple()} |
    {error, any()} |
    {error, delete_variable_errors(), tuple()}.
delete_variable(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteVariable">>, Input, Options).

%% @doc Gets all versions for a specified detector.
-spec describe_detector(aws_client:aws_client(), describe_detector_request()) ->
    {ok, describe_detector_result(), tuple()} |
    {error, any()} |
    {error, describe_detector_errors(), tuple()}.
describe_detector(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_detector(Client, Input, []).

-spec describe_detector(aws_client:aws_client(), describe_detector_request(), proplists:proplist()) ->
    {ok, describe_detector_result(), tuple()} |
    {error, any()} |
    {error, describe_detector_errors(), tuple()}.
describe_detector(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDetector">>, Input, Options).

%% @doc Gets all of the model versions for the specified model type or for
%% the specified model type and model ID.
%%
%% You can also get details for a single, specified model version.
-spec describe_model_versions(aws_client:aws_client(), describe_model_versions_request()) ->
    {ok, describe_model_versions_result(), tuple()} |
    {error, any()} |
    {error, describe_model_versions_errors(), tuple()}.
describe_model_versions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_model_versions(Client, Input, []).

-spec describe_model_versions(aws_client:aws_client(), describe_model_versions_request(), proplists:proplist()) ->
    {ok, describe_model_versions_result(), tuple()} |
    {error, any()} |
    {error, describe_model_versions_errors(), tuple()}.
describe_model_versions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeModelVersions">>, Input, Options).

%% @doc Gets all batch import jobs or a specific job of the specified ID.
%%
%% This is a paginated API. If you provide a null `maxResults',
%% this action retrieves a maximum of 50 records per page. If you provide a
%% `maxResults', the value must be between 1 and 50.
%% To get the next page results, provide the pagination token from the
%% `GetBatchImportJobsResponse' as part of your request.
%% A null pagination token fetches the records from the beginning.
-spec get_batch_import_jobs(aws_client:aws_client(), get_batch_import_jobs_request()) ->
    {ok, get_batch_import_jobs_result(), tuple()} |
    {error, any()} |
    {error, get_batch_import_jobs_errors(), tuple()}.
get_batch_import_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_batch_import_jobs(Client, Input, []).

-spec get_batch_import_jobs(aws_client:aws_client(), get_batch_import_jobs_request(), proplists:proplist()) ->
    {ok, get_batch_import_jobs_result(), tuple()} |
    {error, any()} |
    {error, get_batch_import_jobs_errors(), tuple()}.
get_batch_import_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetBatchImportJobs">>, Input, Options).

%% @doc Gets all batch prediction jobs or a specific job if you specify a job
%% ID.
%%
%% This is a paginated API. If you provide a null maxResults, this action
%% retrieves a maximum of 50 records per page. If you provide a maxResults,
%% the value must be between 1 and 50. To get the next page results, provide
%% the pagination token from the GetBatchPredictionJobsResponse as part of
%% your request. A null pagination token fetches the records from the
%% beginning.
-spec get_batch_prediction_jobs(aws_client:aws_client(), get_batch_prediction_jobs_request()) ->
    {ok, get_batch_prediction_jobs_result(), tuple()} |
    {error, any()} |
    {error, get_batch_prediction_jobs_errors(), tuple()}.
get_batch_prediction_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_batch_prediction_jobs(Client, Input, []).

-spec get_batch_prediction_jobs(aws_client:aws_client(), get_batch_prediction_jobs_request(), proplists:proplist()) ->
    {ok, get_batch_prediction_jobs_result(), tuple()} |
    {error, any()} |
    {error, get_batch_prediction_jobs_errors(), tuple()}.
get_batch_prediction_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetBatchPredictionJobs">>, Input, Options).

%% @doc Retrieves the status of a `DeleteEventsByEventType' action.
-spec get_delete_events_by_event_type_status(aws_client:aws_client(), get_delete_events_by_event_type_status_request()) ->
    {ok, get_delete_events_by_event_type_status_result(), tuple()} |
    {error, any()} |
    {error, get_delete_events_by_event_type_status_errors(), tuple()}.
get_delete_events_by_event_type_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_delete_events_by_event_type_status(Client, Input, []).

-spec get_delete_events_by_event_type_status(aws_client:aws_client(), get_delete_events_by_event_type_status_request(), proplists:proplist()) ->
    {ok, get_delete_events_by_event_type_status_result(), tuple()} |
    {error, any()} |
    {error, get_delete_events_by_event_type_status_errors(), tuple()}.
get_delete_events_by_event_type_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDeleteEventsByEventTypeStatus">>, Input, Options).

%% @doc Gets a particular detector version.
-spec get_detector_version(aws_client:aws_client(), get_detector_version_request()) ->
    {ok, get_detector_version_result(), tuple()} |
    {error, any()} |
    {error, get_detector_version_errors(), tuple()}.
get_detector_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_detector_version(Client, Input, []).

-spec get_detector_version(aws_client:aws_client(), get_detector_version_request(), proplists:proplist()) ->
    {ok, get_detector_version_result(), tuple()} |
    {error, any()} |
    {error, get_detector_version_errors(), tuple()}.
get_detector_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDetectorVersion">>, Input, Options).

%% @doc Gets all detectors or a single detector if a `detectorId' is
%% specified.
%%
%% This is a paginated API. If you
%% provide a null `maxResults', this action retrieves a maximum of 10
%% records
%% per page. If you provide a `maxResults', the value must be between 5
%% and 10.
%% To get the next page results, provide the pagination token from the
%% `GetDetectorsResponse' as part of your request. A null pagination
%% token
%% fetches the records from the beginning.
-spec get_detectors(aws_client:aws_client(), get_detectors_request()) ->
    {ok, get_detectors_result(), tuple()} |
    {error, any()} |
    {error, get_detectors_errors(), tuple()}.
get_detectors(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_detectors(Client, Input, []).

-spec get_detectors(aws_client:aws_client(), get_detectors_request(), proplists:proplist()) ->
    {ok, get_detectors_result(), tuple()} |
    {error, any()} |
    {error, get_detectors_errors(), tuple()}.
get_detectors(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDetectors">>, Input, Options).

%% @doc Gets all entity types or a specific entity type if a name is
%% specified.
%%
%% This is a paginated API. If you
%% provide a null `maxResults', this action retrieves a maximum of 10
%% records
%% per page. If you provide a `maxResults', the value must be between 5
%% and 10.
%% To get the next page results, provide the pagination token from the
%% `GetEntityTypesResponse' as part of your request. A null pagination
%% token
%% fetches the records from the beginning.
-spec get_entity_types(aws_client:aws_client(), get_entity_types_request()) ->
    {ok, get_entity_types_result(), tuple()} |
    {error, any()} |
    {error, get_entity_types_errors(), tuple()}.
get_entity_types(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_entity_types(Client, Input, []).

-spec get_entity_types(aws_client:aws_client(), get_entity_types_request(), proplists:proplist()) ->
    {ok, get_entity_types_result(), tuple()} |
    {error, any()} |
    {error, get_entity_types_errors(), tuple()}.
get_entity_types(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetEntityTypes">>, Input, Options).

%% @doc Retrieves details of events stored with Amazon Fraud Detector.
%%
%% This action does not retrieve prediction results.
-spec get_event(aws_client:aws_client(), get_event_request()) ->
    {ok, get_event_result(), tuple()} |
    {error, any()} |
    {error, get_event_errors(), tuple()}.
get_event(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_event(Client, Input, []).

-spec get_event(aws_client:aws_client(), get_event_request(), proplists:proplist()) ->
    {ok, get_event_result(), tuple()} |
    {error, any()} |
    {error, get_event_errors(), tuple()}.
get_event(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetEvent">>, Input, Options).

%% @doc Evaluates an event against a detector version.
%%
%% If a version ID is not provided, the detector’s (`ACTIVE') version is
%% used.
-spec get_event_prediction(aws_client:aws_client(), get_event_prediction_request()) ->
    {ok, get_event_prediction_result(), tuple()} |
    {error, any()} |
    {error, get_event_prediction_errors(), tuple()}.
get_event_prediction(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_event_prediction(Client, Input, []).

-spec get_event_prediction(aws_client:aws_client(), get_event_prediction_request(), proplists:proplist()) ->
    {ok, get_event_prediction_result(), tuple()} |
    {error, any()} |
    {error, get_event_prediction_errors(), tuple()}.
get_event_prediction(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetEventPrediction">>, Input, Options).

%% @doc
%% Gets details of the past fraud predictions for the specified event ID,
%% event type, detector ID, and detector version ID that was generated in the
%% specified time period.
-spec get_event_prediction_metadata(aws_client:aws_client(), get_event_prediction_metadata_request()) ->
    {ok, get_event_prediction_metadata_result(), tuple()} |
    {error, any()} |
    {error, get_event_prediction_metadata_errors(), tuple()}.
get_event_prediction_metadata(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_event_prediction_metadata(Client, Input, []).

-spec get_event_prediction_metadata(aws_client:aws_client(), get_event_prediction_metadata_request(), proplists:proplist()) ->
    {ok, get_event_prediction_metadata_result(), tuple()} |
    {error, any()} |
    {error, get_event_prediction_metadata_errors(), tuple()}.
get_event_prediction_metadata(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetEventPredictionMetadata">>, Input, Options).

%% @doc Gets all event types or a specific event type if name is provided.
%%
%% This is a paginated API. If you
%% provide a null `maxResults', this action retrieves a maximum of 10
%% records
%% per page. If you provide a `maxResults', the value must be between 5
%% and 10.
%% To get the next page results, provide the pagination token from the
%% `GetEventTypesResponse' as part of your request. A null pagination
%% token
%% fetches the records from the beginning.
-spec get_event_types(aws_client:aws_client(), get_event_types_request()) ->
    {ok, get_event_types_result(), tuple()} |
    {error, any()} |
    {error, get_event_types_errors(), tuple()}.
get_event_types(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_event_types(Client, Input, []).

-spec get_event_types(aws_client:aws_client(), get_event_types_request(), proplists:proplist()) ->
    {ok, get_event_types_result(), tuple()} |
    {error, any()} |
    {error, get_event_types_errors(), tuple()}.
get_event_types(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetEventTypes">>, Input, Options).

%% @doc Gets the details for one or more Amazon SageMaker models that have
%% been imported into the
%% service.
%%
%% This is a paginated API. If you provide a null `maxResults', this
%% actions retrieves a maximum of 10 records per page. If you provide a
%% `maxResults', the value must be between 5 and 10. To get the next page
%% results, provide the pagination token from the
%% `GetExternalModelsResult' as part
%% of your request. A null pagination token fetches the records from the
%% beginning.
-spec get_external_models(aws_client:aws_client(), get_external_models_request()) ->
    {ok, get_external_models_result(), tuple()} |
    {error, any()} |
    {error, get_external_models_errors(), tuple()}.
get_external_models(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_external_models(Client, Input, []).

-spec get_external_models(aws_client:aws_client(), get_external_models_request(), proplists:proplist()) ->
    {ok, get_external_models_result(), tuple()} |
    {error, any()} |
    {error, get_external_models_errors(), tuple()}.
get_external_models(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetExternalModels">>, Input, Options).

%% @doc Gets the encryption key if a KMS key has been specified to be used to
%% encrypt content in Amazon Fraud Detector.
-spec get_kms_encryption_key(aws_client:aws_client(), #{}) ->
    {ok, get_kms_encryption_key_result(), tuple()} |
    {error, any()} |
    {error, get_kms_encryption_key_errors(), tuple()}.
get_kms_encryption_key(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_kms_encryption_key(Client, Input, []).

-spec get_kms_encryption_key(aws_client:aws_client(), #{}, proplists:proplist()) ->
    {ok, get_kms_encryption_key_result(), tuple()} |
    {error, any()} |
    {error, get_kms_encryption_key_errors(), tuple()}.
get_kms_encryption_key(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetKMSEncryptionKey">>, Input, Options).

%% @doc Gets all labels or a specific label if name is provided.
%%
%% This is a paginated API. If you
%% provide a null `maxResults', this action retrieves a maximum of 50
%% records
%% per page. If you provide a `maxResults', the value must be between 10
%% and 50.
%% To get the next page results, provide the pagination token from the
%% `GetGetLabelsResponse' as part of your request. A null pagination
%% token
%% fetches the records from the beginning.
-spec get_labels(aws_client:aws_client(), get_labels_request()) ->
    {ok, get_labels_result(), tuple()} |
    {error, any()} |
    {error, get_labels_errors(), tuple()}.
get_labels(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_labels(Client, Input, []).

-spec get_labels(aws_client:aws_client(), get_labels_request(), proplists:proplist()) ->
    {ok, get_labels_result(), tuple()} |
    {error, any()} |
    {error, get_labels_errors(), tuple()}.
get_labels(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetLabels">>, Input, Options).

%% @doc
%% Gets all the elements in the specified list.
-spec get_list_elements(aws_client:aws_client(), get_list_elements_request()) ->
    {ok, get_list_elements_result(), tuple()} |
    {error, any()} |
    {error, get_list_elements_errors(), tuple()}.
get_list_elements(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_list_elements(Client, Input, []).

-spec get_list_elements(aws_client:aws_client(), get_list_elements_request(), proplists:proplist()) ->
    {ok, get_list_elements_result(), tuple()} |
    {error, any()} |
    {error, get_list_elements_errors(), tuple()}.
get_list_elements(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetListElements">>, Input, Options).

%% @doc
%% Gets the metadata of either all the lists under the account or the
%% specified list.
-spec get_lists_metadata(aws_client:aws_client(), get_lists_metadata_request()) ->
    {ok, get_lists_metadata_result(), tuple()} |
    {error, any()} |
    {error, get_lists_metadata_errors(), tuple()}.
get_lists_metadata(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_lists_metadata(Client, Input, []).

-spec get_lists_metadata(aws_client:aws_client(), get_lists_metadata_request(), proplists:proplist()) ->
    {ok, get_lists_metadata_result(), tuple()} |
    {error, any()} |
    {error, get_lists_metadata_errors(), tuple()}.
get_lists_metadata(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetListsMetadata">>, Input, Options).

%% @doc Gets the details of the specified model version.
-spec get_model_version(aws_client:aws_client(), get_model_version_request()) ->
    {ok, get_model_version_result(), tuple()} |
    {error, any()} |
    {error, get_model_version_errors(), tuple()}.
get_model_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_model_version(Client, Input, []).

-spec get_model_version(aws_client:aws_client(), get_model_version_request(), proplists:proplist()) ->
    {ok, get_model_version_result(), tuple()} |
    {error, any()} |
    {error, get_model_version_errors(), tuple()}.
get_model_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetModelVersion">>, Input, Options).

%% @doc Gets one or more models.
%%
%% Gets all models for the Amazon Web Services account if no model type and
%% no model id provided. Gets all models for the Amazon Web Services account
%% and model type, if the model type is specified but model id is not
%% provided. Gets a specific model if (model type, model id) tuple is
%% specified.
%%
%% This is a paginated API. If you
%% provide a null `maxResults', this action retrieves a maximum of 10
%% records
%% per page. If you provide a `maxResults', the value must be between 1
%% and 10.
%% To get the next page results, provide the pagination token from the
%% response as part of your request. A null pagination token
%% fetches the records from the beginning.
-spec get_models(aws_client:aws_client(), get_models_request()) ->
    {ok, get_models_result(), tuple()} |
    {error, any()} |
    {error, get_models_errors(), tuple()}.
get_models(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_models(Client, Input, []).

-spec get_models(aws_client:aws_client(), get_models_request(), proplists:proplist()) ->
    {ok, get_models_result(), tuple()} |
    {error, any()} |
    {error, get_models_errors(), tuple()}.
get_models(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetModels">>, Input, Options).

%% @doc Gets one or more outcomes.
%%
%% This is a paginated
%% API. If you provide a null `maxResults', this actions retrieves a
%% maximum of
%% 100 records per page. If you provide a `maxResults', the value must be
%% between 50 and 100. To get the next page results, provide the pagination
%% token from the
%% `GetOutcomesResult' as part of your request. A null pagination token
%% fetches the records from the beginning.
-spec get_outcomes(aws_client:aws_client(), get_outcomes_request()) ->
    {ok, get_outcomes_result(), tuple()} |
    {error, any()} |
    {error, get_outcomes_errors(), tuple()}.
get_outcomes(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_outcomes(Client, Input, []).

-spec get_outcomes(aws_client:aws_client(), get_outcomes_request(), proplists:proplist()) ->
    {ok, get_outcomes_result(), tuple()} |
    {error, any()} |
    {error, get_outcomes_errors(), tuple()}.
get_outcomes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetOutcomes">>, Input, Options).

%% @doc Get all rules for a detector (paginated) if `ruleId' and
%% `ruleVersion' are not specified.
%%
%% Gets all rules for the detector and the `ruleId' if present
%% (paginated). Gets a specific rule if both the `ruleId' and the
%% `ruleVersion' are specified.
%%
%% This is a paginated API. Providing null maxResults results in retrieving
%% maximum of 100 records per page. If you provide maxResults the value must
%% be between 50 and 100. To get the next page result, a provide a pagination
%% token from GetRulesResult as part of your request. Null pagination token
%% fetches the records from the beginning.
-spec get_rules(aws_client:aws_client(), get_rules_request()) ->
    {ok, get_rules_result(), tuple()} |
    {error, any()} |
    {error, get_rules_errors(), tuple()}.
get_rules(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_rules(Client, Input, []).

-spec get_rules(aws_client:aws_client(), get_rules_request(), proplists:proplist()) ->
    {ok, get_rules_result(), tuple()} |
    {error, any()} |
    {error, get_rules_errors(), tuple()}.
get_rules(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRules">>, Input, Options).

%% @doc Gets all of the variables or the specific variable.
%%
%% This is a
%% paginated API. Providing null `maxSizePerPage' results in retrieving
%% maximum of
%% 100 records per page. If you provide `maxSizePerPage' the value must
%% be between
%% 50 and 100. To get the next page result, a provide a pagination token from
%% `GetVariablesResult' as part of your request. Null pagination token
%% fetches the records from the beginning.
-spec get_variables(aws_client:aws_client(), get_variables_request()) ->
    {ok, get_variables_result(), tuple()} |
    {error, any()} |
    {error, get_variables_errors(), tuple()}.
get_variables(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_variables(Client, Input, []).

-spec get_variables(aws_client:aws_client(), get_variables_request(), proplists:proplist()) ->
    {ok, get_variables_result(), tuple()} |
    {error, any()} |
    {error, get_variables_errors(), tuple()}.
get_variables(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetVariables">>, Input, Options).

%% @doc Gets a list of past predictions.
%%
%% The list can be filtered by detector ID, detector version ID, event ID,
%% event type, or by specifying a time period.
%% If filter is not specified, the most recent prediction is returned.
%%
%% For example, the following filter lists all past predictions for `xyz'
%% event type -
%%
%% ```
%% { &quot;eventType&quot;:{ &quot;value&quot;: &quot;xyz&quot; }” }
%% '''
%%
%% This is a paginated API. If you provide a null `maxResults', this
%% action will retrieve a maximum of 10 records per page.
%% If you provide a `maxResults', the value must be between 50 and 100.
%% To get the next page results, provide
%% the `nextToken' from the response as part of your request. A null
%% `nextToken' fetches the records from the beginning.
-spec list_event_predictions(aws_client:aws_client(), list_event_predictions_request()) ->
    {ok, list_event_predictions_result(), tuple()} |
    {error, any()} |
    {error, list_event_predictions_errors(), tuple()}.
list_event_predictions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_event_predictions(Client, Input, []).

-spec list_event_predictions(aws_client:aws_client(), list_event_predictions_request(), proplists:proplist()) ->
    {ok, list_event_predictions_result(), tuple()} |
    {error, any()} |
    {error, list_event_predictions_errors(), tuple()}.
list_event_predictions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListEventPredictions">>, Input, Options).

%% @doc Lists all tags associated with the resource.
%%
%% This is a paginated API. To get the next page results, provide the
%% pagination token from the
%% response as part of your request. A null pagination token
%% fetches the records from the beginning.
-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_request()) ->
    {ok, list_tags_for_resource_result(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).

-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_request(), proplists:proplist()) ->
    {ok, list_tags_for_resource_result(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Creates or updates a detector.
-spec put_detector(aws_client:aws_client(), put_detector_request()) ->
    {ok, put_detector_result(), tuple()} |
    {error, any()} |
    {error, put_detector_errors(), tuple()}.
put_detector(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_detector(Client, Input, []).

-spec put_detector(aws_client:aws_client(), put_detector_request(), proplists:proplist()) ->
    {ok, put_detector_result(), tuple()} |
    {error, any()} |
    {error, put_detector_errors(), tuple()}.
put_detector(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutDetector">>, Input, Options).

%% @doc Creates or updates an entity type.
%%
%% An entity represents who is performing the event. As part of a fraud
%% prediction, you pass the entity ID to indicate the specific entity who
%% performed the event. An entity type classifies the entity. Example
%% classifications include customer, merchant, or account.
-spec put_entity_type(aws_client:aws_client(), put_entity_type_request()) ->
    {ok, put_entity_type_result(), tuple()} |
    {error, any()} |
    {error, put_entity_type_errors(), tuple()}.
put_entity_type(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_entity_type(Client, Input, []).

-spec put_entity_type(aws_client:aws_client(), put_entity_type_request(), proplists:proplist()) ->
    {ok, put_entity_type_result(), tuple()} |
    {error, any()} |
    {error, put_entity_type_errors(), tuple()}.
put_entity_type(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutEntityType">>, Input, Options).

%% @doc Creates or updates an event type.
%%
%% An event is a business activity that is evaluated for fraud risk. With
%% Amazon Fraud Detector, you generate fraud predictions for events. An event
%% type defines the structure for an event sent to Amazon Fraud Detector.
%% This includes the variables sent as part of the event, the entity
%% performing the event (such as a customer), and the labels that classify
%% the event. Example event types include online payment transactions,
%% account registrations, and authentications.
-spec put_event_type(aws_client:aws_client(), put_event_type_request()) ->
    {ok, put_event_type_result(), tuple()} |
    {error, any()} |
    {error, put_event_type_errors(), tuple()}.
put_event_type(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_event_type(Client, Input, []).

-spec put_event_type(aws_client:aws_client(), put_event_type_request(), proplists:proplist()) ->
    {ok, put_event_type_result(), tuple()} |
    {error, any()} |
    {error, put_event_type_errors(), tuple()}.
put_event_type(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutEventType">>, Input, Options).

%% @doc Creates or updates an Amazon SageMaker model endpoint.
%%
%% You can also use this action to update the configuration of the model
%% endpoint, including the IAM role and/or the mapped variables.
-spec put_external_model(aws_client:aws_client(), put_external_model_request()) ->
    {ok, put_external_model_result(), tuple()} |
    {error, any()} |
    {error, put_external_model_errors(), tuple()}.
put_external_model(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_external_model(Client, Input, []).

-spec put_external_model(aws_client:aws_client(), put_external_model_request(), proplists:proplist()) ->
    {ok, put_external_model_result(), tuple()} |
    {error, any()} |
    {error, put_external_model_errors(), tuple()}.
put_external_model(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutExternalModel">>, Input, Options).

%% @doc Specifies the KMS key to be used to encrypt content in Amazon Fraud
%% Detector.
-spec put_kms_encryption_key(aws_client:aws_client(), put_kms_encryption_key_request()) ->
    {ok, put_kms_encryption_key_result(), tuple()} |
    {error, any()} |
    {error, put_kms_encryption_key_errors(), tuple()}.
put_kms_encryption_key(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_kms_encryption_key(Client, Input, []).

-spec put_kms_encryption_key(aws_client:aws_client(), put_kms_encryption_key_request(), proplists:proplist()) ->
    {ok, put_kms_encryption_key_result(), tuple()} |
    {error, any()} |
    {error, put_kms_encryption_key_errors(), tuple()}.
put_kms_encryption_key(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutKMSEncryptionKey">>, Input, Options).

%% @doc Creates or updates label.
%%
%% A label classifies an event as fraudulent or legitimate. Labels are
%% associated with event types and used to train supervised machine learning
%% models in Amazon Fraud Detector.
-spec put_label(aws_client:aws_client(), put_label_request()) ->
    {ok, put_label_result(), tuple()} |
    {error, any()} |
    {error, put_label_errors(), tuple()}.
put_label(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_label(Client, Input, []).

-spec put_label(aws_client:aws_client(), put_label_request(), proplists:proplist()) ->
    {ok, put_label_result(), tuple()} |
    {error, any()} |
    {error, put_label_errors(), tuple()}.
put_label(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutLabel">>, Input, Options).

%% @doc Creates or updates an outcome.
-spec put_outcome(aws_client:aws_client(), put_outcome_request()) ->
    {ok, put_outcome_result(), tuple()} |
    {error, any()} |
    {error, put_outcome_errors(), tuple()}.
put_outcome(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_outcome(Client, Input, []).

-spec put_outcome(aws_client:aws_client(), put_outcome_request(), proplists:proplist()) ->
    {ok, put_outcome_result(), tuple()} |
    {error, any()} |
    {error, put_outcome_errors(), tuple()}.
put_outcome(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutOutcome">>, Input, Options).

%% @doc Stores events in Amazon Fraud Detector without generating fraud
%% predictions for those events.
%%
%% For example, you can use `SendEvent' to upload a historical dataset,
%% which you can then later use to train a model.
-spec send_event(aws_client:aws_client(), send_event_request()) ->
    {ok, send_event_result(), tuple()} |
    {error, any()} |
    {error, send_event_errors(), tuple()}.
send_event(Client, Input)
  when is_map(Client), is_map(Input) ->
    send_event(Client, Input, []).

-spec send_event(aws_client:aws_client(), send_event_request(), proplists:proplist()) ->
    {ok, send_event_result(), tuple()} |
    {error, any()} |
    {error, send_event_errors(), tuple()}.
send_event(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SendEvent">>, Input, Options).

%% @doc Assigns tags to a resource.
-spec tag_resource(aws_client:aws_client(), tag_resource_request()) ->
    {ok, tag_resource_result(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).

-spec tag_resource(aws_client:aws_client(), tag_resource_request(), proplists:proplist()) ->
    {ok, tag_resource_result(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Removes tags from a resource.
-spec untag_resource(aws_client:aws_client(), untag_resource_request()) ->
    {ok, untag_resource_result(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).

-spec untag_resource(aws_client:aws_client(), untag_resource_request(), proplists:proplist()) ->
    {ok, untag_resource_result(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc Updates a detector version.
%%
%% The detector version attributes that you can update include models,
%% external model endpoints, rules, rule execution mode, and description. You
%% can only update a `DRAFT' detector version.
-spec update_detector_version(aws_client:aws_client(), update_detector_version_request()) ->
    {ok, update_detector_version_result(), tuple()} |
    {error, any()} |
    {error, update_detector_version_errors(), tuple()}.
update_detector_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_detector_version(Client, Input, []).

-spec update_detector_version(aws_client:aws_client(), update_detector_version_request(), proplists:proplist()) ->
    {ok, update_detector_version_result(), tuple()} |
    {error, any()} |
    {error, update_detector_version_errors(), tuple()}.
update_detector_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateDetectorVersion">>, Input, Options).

%% @doc Updates the detector version's description.
%%
%% You can update the metadata for any detector version (`DRAFT, ACTIVE,'
%% or
%% `INACTIVE').
-spec update_detector_version_metadata(aws_client:aws_client(), update_detector_version_metadata_request()) ->
    {ok, update_detector_version_metadata_result(), tuple()} |
    {error, any()} |
    {error, update_detector_version_metadata_errors(), tuple()}.
update_detector_version_metadata(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_detector_version_metadata(Client, Input, []).

-spec update_detector_version_metadata(aws_client:aws_client(), update_detector_version_metadata_request(), proplists:proplist()) ->
    {ok, update_detector_version_metadata_result(), tuple()} |
    {error, any()} |
    {error, update_detector_version_metadata_errors(), tuple()}.
update_detector_version_metadata(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateDetectorVersionMetadata">>, Input, Options).

%% @doc Updates the detector version’s status.
%%
%% You can perform the following promotions or
%% demotions using `UpdateDetectorVersionStatus': `DRAFT' to
%% `ACTIVE', `ACTIVE' to `INACTIVE', and `INACTIVE' to
%% `ACTIVE'.
-spec update_detector_version_status(aws_client:aws_client(), update_detector_version_status_request()) ->
    {ok, update_detector_version_status_result(), tuple()} |
    {error, any()} |
    {error, update_detector_version_status_errors(), tuple()}.
update_detector_version_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_detector_version_status(Client, Input, []).

-spec update_detector_version_status(aws_client:aws_client(), update_detector_version_status_request(), proplists:proplist()) ->
    {ok, update_detector_version_status_result(), tuple()} |
    {error, any()} |
    {error, update_detector_version_status_errors(), tuple()}.
update_detector_version_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateDetectorVersionStatus">>, Input, Options).

%% @doc Updates the specified event with a new label.
-spec update_event_label(aws_client:aws_client(), update_event_label_request()) ->
    {ok, update_event_label_result(), tuple()} |
    {error, any()} |
    {error, update_event_label_errors(), tuple()}.
update_event_label(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_event_label(Client, Input, []).

-spec update_event_label(aws_client:aws_client(), update_event_label_request(), proplists:proplist()) ->
    {ok, update_event_label_result(), tuple()} |
    {error, any()} |
    {error, update_event_label_errors(), tuple()}.
update_event_label(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateEventLabel">>, Input, Options).

%% @doc
%% Updates a list.
-spec update_list(aws_client:aws_client(), update_list_request()) ->
    {ok, update_list_result(), tuple()} |
    {error, any()} |
    {error, update_list_errors(), tuple()}.
update_list(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_list(Client, Input, []).

-spec update_list(aws_client:aws_client(), update_list_request(), proplists:proplist()) ->
    {ok, update_list_result(), tuple()} |
    {error, any()} |
    {error, update_list_errors(), tuple()}.
update_list(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateList">>, Input, Options).

%% @doc Updates model description.
-spec update_model(aws_client:aws_client(), update_model_request()) ->
    {ok, update_model_result(), tuple()} |
    {error, any()} |
    {error, update_model_errors(), tuple()}.
update_model(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_model(Client, Input, []).

-spec update_model(aws_client:aws_client(), update_model_request(), proplists:proplist()) ->
    {ok, update_model_result(), tuple()} |
    {error, any()} |
    {error, update_model_errors(), tuple()}.
update_model(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateModel">>, Input, Options).

%% @doc Updates a model version.
%%
%% Updating a model version retrains an existing model version using updated
%% training data and produces a new minor version of the model. You can
%% update the training data set location and data access role attributes
%% using this action. This action creates and trains a new minor version of
%% the model, for example version 1.01, 1.02, 1.03.
-spec update_model_version(aws_client:aws_client(), update_model_version_request()) ->
    {ok, update_model_version_result(), tuple()} |
    {error, any()} |
    {error, update_model_version_errors(), tuple()}.
update_model_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_model_version(Client, Input, []).

-spec update_model_version(aws_client:aws_client(), update_model_version_request(), proplists:proplist()) ->
    {ok, update_model_version_result(), tuple()} |
    {error, any()} |
    {error, update_model_version_errors(), tuple()}.
update_model_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateModelVersion">>, Input, Options).

%% @doc Updates the status of a model version.
%%
%% You can perform the following status updates:
%%
%% Change the `TRAINING_IN_PROGRESS' status to `TRAINING_CANCELLED'.
%%
%% Change the `TRAINING_COMPLETE' status to `ACTIVE'.
%%
%% Change `ACTIVE' to `INACTIVE'.
-spec update_model_version_status(aws_client:aws_client(), update_model_version_status_request()) ->
    {ok, update_model_version_status_result(), tuple()} |
    {error, any()} |
    {error, update_model_version_status_errors(), tuple()}.
update_model_version_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_model_version_status(Client, Input, []).

-spec update_model_version_status(aws_client:aws_client(), update_model_version_status_request(), proplists:proplist()) ->
    {ok, update_model_version_status_result(), tuple()} |
    {error, any()} |
    {error, update_model_version_status_errors(), tuple()}.
update_model_version_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateModelVersionStatus">>, Input, Options).

%% @doc Updates a rule's metadata.
%%
%% The description attribute can be updated.
-spec update_rule_metadata(aws_client:aws_client(), update_rule_metadata_request()) ->
    {ok, update_rule_metadata_result(), tuple()} |
    {error, any()} |
    {error, update_rule_metadata_errors(), tuple()}.
update_rule_metadata(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_rule_metadata(Client, Input, []).

-spec update_rule_metadata(aws_client:aws_client(), update_rule_metadata_request(), proplists:proplist()) ->
    {ok, update_rule_metadata_result(), tuple()} |
    {error, any()} |
    {error, update_rule_metadata_errors(), tuple()}.
update_rule_metadata(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateRuleMetadata">>, Input, Options).

%% @doc Updates a rule version resulting in a new rule version.
%%
%% Updates a rule version resulting in a new rule version (version 1, 2, 3
%% ...).
-spec update_rule_version(aws_client:aws_client(), update_rule_version_request()) ->
    {ok, update_rule_version_result(), tuple()} |
    {error, any()} |
    {error, update_rule_version_errors(), tuple()}.
update_rule_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_rule_version(Client, Input, []).

-spec update_rule_version(aws_client:aws_client(), update_rule_version_request(), proplists:proplist()) ->
    {ok, update_rule_version_result(), tuple()} |
    {error, any()} |
    {error, update_rule_version_errors(), tuple()}.
update_rule_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateRuleVersion">>, Input, Options).

%% @doc Updates a variable.
-spec update_variable(aws_client:aws_client(), update_variable_request()) ->
    {ok, update_variable_result(), tuple()} |
    {error, any()} |
    {error, update_variable_errors(), tuple()}.
update_variable(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_variable(Client, Input, []).

-spec update_variable(aws_client:aws_client(), update_variable_request(), proplists:proplist()) ->
    {ok, update_variable_result(), tuple()} |
    {error, any()} |
    {error, update_variable_errors(), tuple()}.
update_variable(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateVariable">>, Input, Options).

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
    Client1 = Client#{service => <<"frauddetector">>},
    Host = build_host(<<"frauddetector">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"AWSHawksNestServiceFacade.", Action/binary>>}
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
