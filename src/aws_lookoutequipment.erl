%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Lookout for Equipment is a machine learning service that uses
%% advanced analytics to identify
%% anomalies in machines from sensor data for use in predictive maintenance.
-module(aws_lookoutequipment).

-export([create_dataset/2,
         create_dataset/3,
         create_inference_scheduler/2,
         create_inference_scheduler/3,
         create_label/2,
         create_label/3,
         create_label_group/2,
         create_label_group/3,
         create_model/2,
         create_model/3,
         create_retraining_scheduler/2,
         create_retraining_scheduler/3,
         delete_dataset/2,
         delete_dataset/3,
         delete_inference_scheduler/2,
         delete_inference_scheduler/3,
         delete_label/2,
         delete_label/3,
         delete_label_group/2,
         delete_label_group/3,
         delete_model/2,
         delete_model/3,
         delete_resource_policy/2,
         delete_resource_policy/3,
         delete_retraining_scheduler/2,
         delete_retraining_scheduler/3,
         describe_data_ingestion_job/2,
         describe_data_ingestion_job/3,
         describe_dataset/2,
         describe_dataset/3,
         describe_inference_scheduler/2,
         describe_inference_scheduler/3,
         describe_label/2,
         describe_label/3,
         describe_label_group/2,
         describe_label_group/3,
         describe_model/2,
         describe_model/3,
         describe_model_version/2,
         describe_model_version/3,
         describe_resource_policy/2,
         describe_resource_policy/3,
         describe_retraining_scheduler/2,
         describe_retraining_scheduler/3,
         import_dataset/2,
         import_dataset/3,
         import_model_version/2,
         import_model_version/3,
         list_data_ingestion_jobs/2,
         list_data_ingestion_jobs/3,
         list_datasets/2,
         list_datasets/3,
         list_inference_events/2,
         list_inference_events/3,
         list_inference_executions/2,
         list_inference_executions/3,
         list_inference_schedulers/2,
         list_inference_schedulers/3,
         list_label_groups/2,
         list_label_groups/3,
         list_labels/2,
         list_labels/3,
         list_model_versions/2,
         list_model_versions/3,
         list_models/2,
         list_models/3,
         list_retraining_schedulers/2,
         list_retraining_schedulers/3,
         list_sensor_statistics/2,
         list_sensor_statistics/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         put_resource_policy/2,
         put_resource_policy/3,
         start_data_ingestion_job/2,
         start_data_ingestion_job/3,
         start_inference_scheduler/2,
         start_inference_scheduler/3,
         start_retraining_scheduler/2,
         start_retraining_scheduler/3,
         stop_inference_scheduler/2,
         stop_inference_scheduler/3,
         stop_retraining_scheduler/2,
         stop_retraining_scheduler/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_active_model_version/2,
         update_active_model_version/3,
         update_inference_scheduler/2,
         update_inference_scheduler/3,
         update_label_group/2,
         update_label_group/3,
         update_model/2,
         update_model/3,
         update_retraining_scheduler/2,
         update_retraining_scheduler/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% delete_retraining_scheduler_request() :: #{
%%   <<"ModelName">> := string()
%% }
-type delete_retraining_scheduler_request() :: #{binary() => any()}.

%% Example:
%% list_inference_schedulers_request() :: #{
%%   <<"InferenceSchedulerNameBeginsWith">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"ModelName">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"Status">> => list(any())
%% }
-type list_inference_schedulers_request() :: #{binary() => any()}.

%% Example:
%% update_active_model_version_request() :: #{
%%   <<"ModelName">> := string(),
%%   <<"ModelVersion">> := float()
%% }
-type update_active_model_version_request() :: #{binary() => any()}.

%% Example:
%% inference_input_name_configuration() :: #{
%%   <<"ComponentTimestampDelimiter">> => string(),
%%   <<"TimestampFormat">> => string()
%% }
-type inference_input_name_configuration() :: #{binary() => any()}.

%% Example:
%% list_models_request() :: #{
%%   <<"DatasetNameBeginsWith">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"ModelNameBeginsWith">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"Status">> => list(any())
%% }
-type list_models_request() :: #{binary() => any()}.

%% Example:
%% list_models_response() :: #{
%%   <<"ModelSummaries">> => list(model_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_models_response() :: #{binary() => any()}.

%% Example:
%% tag_resource_request() :: #{
%%   <<"ResourceArn">> := string(),
%%   <<"Tags">> := list(tag())
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% list_labels_response() :: #{
%%   <<"LabelSummaries">> => list(label_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_labels_response() :: #{binary() => any()}.

%% Example:
%% create_label_group_response() :: #{
%%   <<"LabelGroupArn">> => string(),
%%   <<"LabelGroupName">> => string()
%% }
-type create_label_group_response() :: #{binary() => any()}.

%% Example:
%% count_percent() :: #{
%%   <<"Count">> => integer(),
%%   <<"Percentage">> => float()
%% }
-type count_percent() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{

%% }
-type untag_resource_response() :: #{binary() => any()}.

%% Example:
%% inference_output_configuration() :: #{
%%   <<"KmsKeyId">> => string(),
%%   <<"S3OutputConfiguration">> => inference_s3_output_configuration()
%% }
-type inference_output_configuration() :: #{binary() => any()}.

%% Example:
%% monotonic_values() :: #{
%%   <<"Monotonicity">> => list(any()),
%%   <<"Status">> => list(any())
%% }
-type monotonic_values() :: #{binary() => any()}.

%% Example:
%% ingestion_input_configuration() :: #{
%%   <<"S3InputConfiguration">> => ingestion_s3_input_configuration()
%% }
-type ingestion_input_configuration() :: #{binary() => any()}.

%% Example:
%% create_label_request() :: #{
%%   <<"ClientToken">> := string(),
%%   <<"EndTime">> := non_neg_integer(),
%%   <<"Equipment">> => string(),
%%   <<"FaultCode">> => string(),
%%   <<"LabelGroupName">> := string(),
%%   <<"Notes">> => string(),
%%   <<"Rating">> := list(any()),
%%   <<"StartTime">> := non_neg_integer()
%% }
-type create_label_request() :: #{binary() => any()}.

%% Example:
%% model_summary() :: #{
%%   <<"ActiveModelVersion">> => float(),
%%   <<"ActiveModelVersionArn">> => string(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"DatasetArn">> => string(),
%%   <<"DatasetName">> => string(),
%%   <<"LatestScheduledRetrainingModelVersion">> => float(),
%%   <<"LatestScheduledRetrainingStartTime">> => non_neg_integer(),
%%   <<"LatestScheduledRetrainingStatus">> => list(any()),
%%   <<"ModelArn">> => string(),
%%   <<"ModelDiagnosticsOutputConfiguration">> => model_diagnostics_output_configuration(),
%%   <<"ModelName">> => string(),
%%   <<"ModelQuality">> => list(any()),
%%   <<"NextScheduledRetrainingStartDate">> => non_neg_integer(),
%%   <<"RetrainingSchedulerStatus">> => list(any()),
%%   <<"Status">> => list(any())
%% }
-type model_summary() :: #{binary() => any()}.

%% Example:
%% retraining_scheduler_summary() :: #{
%%   <<"LookbackWindow">> => string(),
%%   <<"ModelArn">> => string(),
%%   <<"ModelName">> => string(),
%%   <<"RetrainingFrequency">> => string(),
%%   <<"RetrainingStartDate">> => non_neg_integer(),
%%   <<"Status">> => list(any())
%% }
-type retraining_scheduler_summary() :: #{binary() => any()}.

%% Example:
%% duplicate_timestamps() :: #{
%%   <<"TotalNumberOfDuplicateTimestamps">> => integer()
%% }
-type duplicate_timestamps() :: #{binary() => any()}.

%% Example:
%% multiple_operating_modes() :: #{
%%   <<"Status">> => list(any())
%% }
-type multiple_operating_modes() :: #{binary() => any()}.

%% Example:
%% list_inference_executions_response() :: #{
%%   <<"InferenceExecutionSummaries">> => list(inference_execution_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_inference_executions_response() :: #{binary() => any()}.

%% Example:
%% create_inference_scheduler_request() :: #{
%%   <<"ClientToken">> := string(),
%%   <<"DataDelayOffsetInMinutes">> => float(),
%%   <<"DataInputConfiguration">> := inference_input_configuration(),
%%   <<"DataOutputConfiguration">> := inference_output_configuration(),
%%   <<"DataUploadFrequency">> := list(any()),
%%   <<"InferenceSchedulerName">> := string(),
%%   <<"ModelName">> := string(),
%%   <<"RoleArn">> := string(),
%%   <<"ServerSideKmsKeyId">> => string(),
%%   <<"Tags">> => list(tag())
%% }
-type create_inference_scheduler_request() :: #{binary() => any()}.

%% Example:
%% dataset_schema() :: #{
%%   <<"InlineDataSchema">> => string()
%% }
-type dataset_schema() :: #{binary() => any()}.

%% Example:
%% list_datasets_request() :: #{
%%   <<"DatasetNameBeginsWith">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_datasets_request() :: #{binary() => any()}.

%% Example:
%% create_model_request() :: #{
%%   <<"ClientToken">> := string(),
%%   <<"DataPreProcessingConfiguration">> => data_pre_processing_configuration(),
%%   <<"DatasetName">> := string(),
%%   <<"DatasetSchema">> => dataset_schema(),
%%   <<"EvaluationDataEndTime">> => non_neg_integer(),
%%   <<"EvaluationDataStartTime">> => non_neg_integer(),
%%   <<"LabelsInputConfiguration">> => labels_input_configuration(),
%%   <<"ModelDiagnosticsOutputConfiguration">> => model_diagnostics_output_configuration(),
%%   <<"ModelName">> := string(),
%%   <<"OffCondition">> => string(),
%%   <<"RoleArn">> => string(),
%%   <<"ServerSideKmsKeyId">> => string(),
%%   <<"Tags">> => list(tag()),
%%   <<"TrainingDataEndTime">> => non_neg_integer(),
%%   <<"TrainingDataStartTime">> => non_neg_integer()
%% }
-type create_model_request() :: #{binary() => any()}.

%% Example:
%% s3_object() :: #{
%%   <<"Bucket">> => string(),
%%   <<"Key">> => string()
%% }
-type s3_object() :: #{binary() => any()}.

%% Example:
%% update_model_request() :: #{
%%   <<"LabelsInputConfiguration">> => labels_input_configuration(),
%%   <<"ModelDiagnosticsOutputConfiguration">> => model_diagnostics_output_configuration(),
%%   <<"ModelName">> := string(),
%%   <<"RoleArn">> => string()
%% }
-type update_model_request() :: #{binary() => any()}.

%% Example:
%% describe_inference_scheduler_response() :: #{
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"DataDelayOffsetInMinutes">> => float(),
%%   <<"DataInputConfiguration">> => inference_input_configuration(),
%%   <<"DataOutputConfiguration">> => inference_output_configuration(),
%%   <<"DataUploadFrequency">> => list(any()),
%%   <<"InferenceSchedulerArn">> => string(),
%%   <<"InferenceSchedulerName">> => string(),
%%   <<"LatestInferenceResult">> => list(any()),
%%   <<"ModelArn">> => string(),
%%   <<"ModelName">> => string(),
%%   <<"RoleArn">> => string(),
%%   <<"ServerSideKmsKeyId">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"UpdatedAt">> => non_neg_integer()
%% }
-type describe_inference_scheduler_response() :: #{binary() => any()}.

%% Example:
%% unsupported_timestamps() :: #{
%%   <<"TotalNumberOfUnsupportedTimestamps">> => integer()
%% }
-type unsupported_timestamps() :: #{binary() => any()}.

%% Example:
%% describe_model_request() :: #{
%%   <<"ModelName">> := string()
%% }
-type describe_model_request() :: #{binary() => any()}.

%% Example:
%% list_model_versions_response() :: #{
%%   <<"ModelVersionSummaries">> => list(model_version_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_model_versions_response() :: #{binary() => any()}.

%% Example:
%% untag_resource_request() :: #{
%%   <<"ResourceArn">> := string(),
%%   <<"TagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% create_label_response() :: #{
%%   <<"LabelId">> => string()
%% }
-type create_label_response() :: #{binary() => any()}.

%% Example:
%% describe_data_ingestion_job_response() :: #{
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"DataEndTime">> => non_neg_integer(),
%%   <<"DataQualitySummary">> => data_quality_summary(),
%%   <<"DataStartTime">> => non_neg_integer(),
%%   <<"DatasetArn">> => string(),
%%   <<"FailedReason">> => string(),
%%   <<"IngestedDataSize">> => float(),
%%   <<"IngestedFilesSummary">> => ingested_files_summary(),
%%   <<"IngestionInputConfiguration">> => ingestion_input_configuration(),
%%   <<"JobId">> => string(),
%%   <<"RoleArn">> => string(),
%%   <<"SourceDatasetArn">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"StatusDetail">> => string()
%% }
-type describe_data_ingestion_job_response() :: #{binary() => any()}.

%% Example:
%% ingestion_s3_input_configuration() :: #{
%%   <<"Bucket">> => string(),
%%   <<"KeyPattern">> => string(),
%%   <<"Prefix">> => string()
%% }
-type ingestion_s3_input_configuration() :: #{binary() => any()}.

%% Example:
%% stop_inference_scheduler_response() :: #{
%%   <<"InferenceSchedulerArn">> => string(),
%%   <<"InferenceSchedulerName">> => string(),
%%   <<"ModelArn">> => string(),
%%   <<"ModelName">> => string(),
%%   <<"Status">> => list(any())
%% }
-type stop_inference_scheduler_response() :: #{binary() => any()}.

%% Example:
%% inference_event_summary() :: #{
%%   <<"Diagnostics">> => string(),
%%   <<"EventDurationInSeconds">> => float(),
%%   <<"EventEndTime">> => non_neg_integer(),
%%   <<"EventStartTime">> => non_neg_integer(),
%%   <<"InferenceSchedulerArn">> => string(),
%%   <<"InferenceSchedulerName">> => string()
%% }
-type inference_event_summary() :: #{binary() => any()}.

%% Example:
%% describe_model_response() :: #{
%%   <<"ServerSideKmsKeyId">> => string(),
%%   <<"ModelName">> => string(),
%%   <<"ActiveModelVersionArn">> => string(),
%%   <<"TrainingExecutionStartTime">> => non_neg_integer(),
%%   <<"Schema">> => string(),
%%   <<"DatasetArn">> => string(),
%%   <<"OffCondition">> => string(),
%%   <<"ModelMetrics">> => string(),
%%   <<"LabelsInputConfiguration">> => labels_input_configuration(),
%%   <<"EvaluationDataEndTime">> => non_neg_integer(),
%%   <<"PreviousActiveModelVersionArn">> => string(),
%%   <<"ImportJobEndTime">> => non_neg_integer(),
%%   <<"RoleArn">> => string(),
%%   <<"DataPreProcessingConfiguration">> => data_pre_processing_configuration(),
%%   <<"EvaluationDataStartTime">> => non_neg_integer(),
%%   <<"SourceModelVersionArn">> => string(),
%%   <<"ActiveModelVersion">> => float(),
%%   <<"AccumulatedInferenceDataStartTime">> => non_neg_integer(),
%%   <<"PriorModelMetrics">> => string(),
%%   <<"ModelQuality">> => list(any()),
%%   <<"PreviousModelVersionActivatedAt">> => non_neg_integer(),
%%   <<"LatestScheduledRetrainingStartTime">> => non_neg_integer(),
%%   <<"DatasetName">> => string(),
%%   <<"LastUpdatedTime">> => non_neg_integer(),
%%   <<"RetrainingSchedulerStatus">> => list(any()),
%%   <<"ImportJobStartTime">> => non_neg_integer(),
%%   <<"ModelDiagnosticsOutputConfiguration">> => model_diagnostics_output_configuration(),
%%   <<"ModelArn">> => string(),
%%   <<"FailedReason">> => string(),
%%   <<"LatestScheduledRetrainingFailedReason">> => string(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"TrainingExecutionEndTime">> => non_neg_integer(),
%%   <<"AccumulatedInferenceDataEndTime">> => non_neg_integer(),
%%   <<"LatestScheduledRetrainingModelVersion">> => float(),
%%   <<"ModelVersionActivatedAt">> => non_neg_integer(),
%%   <<"LatestScheduledRetrainingAvailableDataInDays">> => integer(),
%%   <<"LatestScheduledRetrainingStatus">> => list(any()),
%%   <<"TrainingDataStartTime">> => non_neg_integer(),
%%   <<"PreviousActiveModelVersion">> => float(),
%%   <<"Status">> => list(any()),
%%   <<"TrainingDataEndTime">> => non_neg_integer(),
%%   <<"NextScheduledRetrainingStartDate">> => non_neg_integer()
%% }
-type describe_model_response() :: #{binary() => any()}.

%% Example:
%% list_inference_executions_request() :: #{
%%   <<"DataEndTimeBefore">> => non_neg_integer(),
%%   <<"DataStartTimeAfter">> => non_neg_integer(),
%%   <<"InferenceSchedulerName">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"Status">> => list(any())
%% }
-type list_inference_executions_request() :: #{binary() => any()}.

%% Example:
%% labels_input_configuration() :: #{
%%   <<"LabelGroupName">> => string(),
%%   <<"S3InputConfiguration">> => labels_s3_input_configuration()
%% }
-type labels_input_configuration() :: #{binary() => any()}.

%% Example:
%% describe_label_request() :: #{
%%   <<"LabelGroupName">> := string(),
%%   <<"LabelId">> := string()
%% }
-type describe_label_request() :: #{binary() => any()}.

%% Example:
%% create_dataset_response() :: #{
%%   <<"DatasetArn">> => string(),
%%   <<"DatasetName">> => string(),
%%   <<"Status">> => list(any())
%% }
-type create_dataset_response() :: #{binary() => any()}.

%% Example:
%% stop_retraining_scheduler_request() :: #{
%%   <<"ModelName">> := string()
%% }
-type stop_retraining_scheduler_request() :: #{binary() => any()}.

%% Example:
%% create_label_group_request() :: #{
%%   <<"ClientToken">> := string(),
%%   <<"FaultCodes">> => list(string()),
%%   <<"LabelGroupName">> := string(),
%%   <<"Tags">> => list(tag())
%% }
-type create_label_group_request() :: #{binary() => any()}.

%% Example:
%% conflict_exception() :: #{
%%   <<"Message">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.

%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% sensors_with_short_date_range() :: #{
%%   <<"AffectedSensorCount">> => integer()
%% }
-type sensors_with_short_date_range() :: #{binary() => any()}.

%% Example:
%% dataset_summary() :: #{
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"DatasetArn">> => string(),
%%   <<"DatasetName">> => string(),
%%   <<"Status">> => list(any())
%% }
-type dataset_summary() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% start_retraining_scheduler_response() :: #{
%%   <<"ModelArn">> => string(),
%%   <<"ModelName">> => string(),
%%   <<"Status">> => list(any())
%% }
-type start_retraining_scheduler_response() :: #{binary() => any()}.

%% Example:
%% delete_label_request() :: #{
%%   <<"LabelGroupName">> := string(),
%%   <<"LabelId">> := string()
%% }
-type delete_label_request() :: #{binary() => any()}.

%% Example:
%% describe_retraining_scheduler_request() :: #{
%%   <<"ModelName">> := string()
%% }
-type describe_retraining_scheduler_request() :: #{binary() => any()}.

%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"Message">> => string()
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% list_label_groups_response() :: #{
%%   <<"LabelGroupSummaries">> => list(label_group_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_label_groups_response() :: #{binary() => any()}.

%% Example:
%% stop_inference_scheduler_request() :: #{
%%   <<"InferenceSchedulerName">> := string()
%% }
-type stop_inference_scheduler_request() :: #{binary() => any()}.

%% Example:
%% inference_scheduler_summary() :: #{
%%   <<"DataDelayOffsetInMinutes">> => float(),
%%   <<"DataUploadFrequency">> => list(any()),
%%   <<"InferenceSchedulerArn">> => string(),
%%   <<"InferenceSchedulerName">> => string(),
%%   <<"LatestInferenceResult">> => list(any()),
%%   <<"ModelArn">> => string(),
%%   <<"ModelName">> => string(),
%%   <<"Status">> => list(any())
%% }
-type inference_scheduler_summary() :: #{binary() => any()}.

%% Example:
%% list_data_ingestion_jobs_request() :: #{
%%   <<"DatasetName">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"Status">> => list(any())
%% }
-type list_data_ingestion_jobs_request() :: #{binary() => any()}.

%% Example:
%% list_retraining_schedulers_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"ModelNameBeginsWith">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"Status">> => list(any())
%% }
-type list_retraining_schedulers_request() :: #{binary() => any()}.

%% Example:
%% list_labels_request() :: #{
%%   <<"Equipment">> => string(),
%%   <<"FaultCode">> => string(),
%%   <<"IntervalEndTime">> => non_neg_integer(),
%%   <<"IntervalStartTime">> => non_neg_integer(),
%%   <<"LabelGroupName">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_labels_request() :: #{binary() => any()}.

%% Example:
%% start_data_ingestion_job_response() :: #{
%%   <<"JobId">> => string(),
%%   <<"Status">> => list(any())
%% }
-type start_data_ingestion_job_response() :: #{binary() => any()}.

%% Example:
%% list_inference_events_response() :: #{
%%   <<"InferenceEventSummaries">> => list(inference_event_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_inference_events_response() :: #{binary() => any()}.

%% Example:
%% describe_label_group_request() :: #{
%%   <<"LabelGroupName">> := string()
%% }
-type describe_label_group_request() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"Tags">> => list(tag())
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.

%% Example:
%% create_retraining_scheduler_request() :: #{
%%   <<"ClientToken">> := string(),
%%   <<"LookbackWindow">> := string(),
%%   <<"ModelName">> := string(),
%%   <<"PromoteMode">> => list(any()),
%%   <<"RetrainingFrequency">> := string(),
%%   <<"RetrainingStartDate">> => non_neg_integer()
%% }
-type create_retraining_scheduler_request() :: #{binary() => any()}.

%% Example:
%% model_diagnostics_output_configuration() :: #{
%%   <<"KmsKeyId">> => string(),
%%   <<"S3OutputConfiguration">> => model_diagnostics_s3_output_configuration()
%% }
-type model_diagnostics_output_configuration() :: #{binary() => any()}.

%% Example:
%% model_diagnostics_s3_output_configuration() :: #{
%%   <<"Bucket">> => string(),
%%   <<"Prefix">> => string()
%% }
-type model_diagnostics_s3_output_configuration() :: #{binary() => any()}.

%% Example:
%% inference_s3_input_configuration() :: #{
%%   <<"Bucket">> => string(),
%%   <<"Prefix">> => string()
%% }
-type inference_s3_input_configuration() :: #{binary() => any()}.

%% Example:
%% create_model_response() :: #{
%%   <<"ModelArn">> => string(),
%%   <<"Status">> => list(any())
%% }
-type create_model_response() :: #{binary() => any()}.

%% Example:
%% update_active_model_version_response() :: #{
%%   <<"CurrentActiveVersion">> => float(),
%%   <<"CurrentActiveVersionArn">> => string(),
%%   <<"ModelArn">> => string(),
%%   <<"ModelName">> => string(),
%%   <<"PreviousActiveVersion">> => float(),
%%   <<"PreviousActiveVersionArn">> => string()
%% }
-type update_active_model_version_response() :: #{binary() => any()}.

%% Example:
%% describe_label_response() :: #{
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"Equipment">> => string(),
%%   <<"FaultCode">> => string(),
%%   <<"LabelGroupArn">> => string(),
%%   <<"LabelGroupName">> => string(),
%%   <<"LabelId">> => string(),
%%   <<"Notes">> => string(),
%%   <<"Rating">> => list(any()),
%%   <<"StartTime">> => non_neg_integer()
%% }
-type describe_label_response() :: #{binary() => any()}.

%% Example:
%% start_data_ingestion_job_request() :: #{
%%   <<"ClientToken">> := string(),
%%   <<"DatasetName">> := string(),
%%   <<"IngestionInputConfiguration">> := ingestion_input_configuration(),
%%   <<"RoleArn">> := string()
%% }
-type start_data_ingestion_job_request() :: #{binary() => any()}.

%% Example:
%% list_data_ingestion_jobs_response() :: #{
%%   <<"DataIngestionJobSummaries">> => list(data_ingestion_job_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_data_ingestion_jobs_response() :: #{binary() => any()}.

%% Example:
%% internal_server_exception() :: #{
%%   <<"Message">> => string()
%% }
-type internal_server_exception() :: #{binary() => any()}.

%% Example:
%% delete_label_group_request() :: #{
%%   <<"LabelGroupName">> := string()
%% }
-type delete_label_group_request() :: #{binary() => any()}.

%% Example:
%% import_model_version_request() :: #{
%%   <<"ClientToken">> := string(),
%%   <<"DatasetName">> := string(),
%%   <<"InferenceDataImportStrategy">> => list(any()),
%%   <<"LabelsInputConfiguration">> => labels_input_configuration(),
%%   <<"ModelName">> => string(),
%%   <<"RoleArn">> => string(),
%%   <<"ServerSideKmsKeyId">> => string(),
%%   <<"SourceModelVersionArn">> := string(),
%%   <<"Tags">> => list(tag())
%% }
-type import_model_version_request() :: #{binary() => any()}.

%% Example:
%% list_retraining_schedulers_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"RetrainingSchedulerSummaries">> => list(retraining_scheduler_summary())
%% }
-type list_retraining_schedulers_response() :: #{binary() => any()}.

%% Example:
%% start_inference_scheduler_response() :: #{
%%   <<"InferenceSchedulerArn">> => string(),
%%   <<"InferenceSchedulerName">> => string(),
%%   <<"ModelArn">> => string(),
%%   <<"ModelName">> => string(),
%%   <<"Status">> => list(any())
%% }
-type start_inference_scheduler_response() :: #{binary() => any()}.

%% Example:
%% import_model_version_response() :: #{
%%   <<"ModelArn">> => string(),
%%   <<"ModelName">> => string(),
%%   <<"ModelVersion">> => float(),
%%   <<"ModelVersionArn">> => string(),
%%   <<"Status">> => list(any())
%% }
-type import_model_version_response() :: #{binary() => any()}.

%% Example:
%% delete_model_request() :: #{
%%   <<"ModelName">> := string()
%% }
-type delete_model_request() :: #{binary() => any()}.

%% Example:
%% list_sensor_statistics_request() :: #{
%%   <<"DatasetName">> := string(),
%%   <<"IngestionJobId">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_sensor_statistics_request() :: #{binary() => any()}.

%% Example:
%% inference_input_configuration() :: #{
%%   <<"InferenceInputNameConfiguration">> => inference_input_name_configuration(),
%%   <<"InputTimeZoneOffset">> => string(),
%%   <<"S3InputConfiguration">> => inference_s3_input_configuration()
%% }
-type inference_input_configuration() :: #{binary() => any()}.

%% Example:
%% describe_data_ingestion_job_request() :: #{
%%   <<"JobId">> := string()
%% }
-type describe_data_ingestion_job_request() :: #{binary() => any()}.

%% Example:
%% missing_complete_sensor_data() :: #{
%%   <<"AffectedSensorCount">> => integer()
%% }
-type missing_complete_sensor_data() :: #{binary() => any()}.

%% Example:
%% sensor_statistics_summary() :: #{
%%   <<"CategoricalValues">> => categorical_values(),
%%   <<"ComponentName">> => string(),
%%   <<"DataEndTime">> => non_neg_integer(),
%%   <<"DataExists">> => boolean(),
%%   <<"DataStartTime">> => non_neg_integer(),
%%   <<"DuplicateTimestamps">> => count_percent(),
%%   <<"InvalidDateEntries">> => count_percent(),
%%   <<"InvalidValues">> => count_percent(),
%%   <<"LargeTimestampGaps">> => large_timestamp_gaps(),
%%   <<"MissingValues">> => count_percent(),
%%   <<"MonotonicValues">> => monotonic_values(),
%%   <<"MultipleOperatingModes">> => multiple_operating_modes(),
%%   <<"SensorName">> => string()
%% }
-type sensor_statistics_summary() :: #{binary() => any()}.

%% Example:
%% put_resource_policy_request() :: #{
%%   <<"ClientToken">> := string(),
%%   <<"PolicyRevisionId">> => string(),
%%   <<"ResourceArn">> := string(),
%%   <<"ResourcePolicy">> := string()
%% }
-type put_resource_policy_request() :: #{binary() => any()}.

%% Example:
%% access_denied_exception() :: #{
%%   <<"Message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% describe_inference_scheduler_request() :: #{
%%   <<"InferenceSchedulerName">> := string()
%% }
-type describe_inference_scheduler_request() :: #{binary() => any()}.

%% Example:
%% ingested_files_summary() :: #{
%%   <<"DiscardedFiles">> => list(s3_object()),
%%   <<"IngestedNumberOfFiles">> => integer(),
%%   <<"TotalNumberOfFiles">> => integer()
%% }
-type ingested_files_summary() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{

%% }
-type tag_resource_response() :: #{binary() => any()}.

%% Example:
%% data_ingestion_job_summary() :: #{
%%   <<"DatasetArn">> => string(),
%%   <<"DatasetName">> => string(),
%%   <<"IngestionInputConfiguration">> => ingestion_input_configuration(),
%%   <<"JobId">> => string(),
%%   <<"Status">> => list(any())
%% }
-type data_ingestion_job_summary() :: #{binary() => any()}.

%% Example:
%% list_inference_events_request() :: #{
%%   <<"InferenceSchedulerName">> := string(),
%%   <<"IntervalEndTime">> := non_neg_integer(),
%%   <<"IntervalStartTime">> := non_neg_integer(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_inference_events_request() :: #{binary() => any()}.

%% Example:
%% describe_label_group_response() :: #{
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"FaultCodes">> => list(string()),
%%   <<"LabelGroupArn">> => string(),
%%   <<"LabelGroupName">> => string(),
%%   <<"UpdatedAt">> => non_neg_integer()
%% }
-type describe_label_group_response() :: #{binary() => any()}.

%% Example:
%% data_quality_summary() :: #{
%%   <<"DuplicateTimestamps">> => duplicate_timestamps(),
%%   <<"InsufficientSensorData">> => insufficient_sensor_data(),
%%   <<"InvalidSensorData">> => invalid_sensor_data(),
%%   <<"MissingSensorData">> => missing_sensor_data(),
%%   <<"UnsupportedTimestamps">> => unsupported_timestamps()
%% }
-type data_quality_summary() :: #{binary() => any()}.

%% Example:
%% model_version_summary() :: #{
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"ModelArn">> => string(),
%%   <<"ModelName">> => string(),
%%   <<"ModelQuality">> => list(any()),
%%   <<"ModelVersion">> => float(),
%%   <<"ModelVersionArn">> => string(),
%%   <<"SourceType">> => list(any()),
%%   <<"Status">> => list(any())
%% }
-type model_version_summary() :: #{binary() => any()}.

%% Example:
%% describe_model_version_response() :: #{
%%   <<"ServerSideKmsKeyId">> => string(),
%%   <<"ModelVersionArn">> => string(),
%%   <<"ModelName">> => string(),
%%   <<"ImportedDataSizeInBytes">> => float(),
%%   <<"TrainingExecutionStartTime">> => non_neg_integer(),
%%   <<"AutoPromotionResult">> => list(any()),
%%   <<"Schema">> => string(),
%%   <<"DatasetArn">> => string(),
%%   <<"OffCondition">> => string(),
%%   <<"ModelMetrics">> => string(),
%%   <<"LabelsInputConfiguration">> => labels_input_configuration(),
%%   <<"EvaluationDataEndTime">> => non_neg_integer(),
%%   <<"ImportJobEndTime">> => non_neg_integer(),
%%   <<"SourceType">> => list(any()),
%%   <<"RoleArn">> => string(),
%%   <<"DataPreProcessingConfiguration">> => data_pre_processing_configuration(),
%%   <<"EvaluationDataStartTime">> => non_neg_integer(),
%%   <<"ModelDiagnosticsResultsObject">> => s3_object(),
%%   <<"SourceModelVersionArn">> => string(),
%%   <<"PriorModelMetrics">> => string(),
%%   <<"ModelQuality">> => list(any()),
%%   <<"DatasetName">> => string(),
%%   <<"RetrainingAvailableDataInDays">> => integer(),
%%   <<"LastUpdatedTime">> => non_neg_integer(),
%%   <<"ImportJobStartTime">> => non_neg_integer(),
%%   <<"ModelDiagnosticsOutputConfiguration">> => model_diagnostics_output_configuration(),
%%   <<"ModelArn">> => string(),
%%   <<"FailedReason">> => string(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"TrainingExecutionEndTime">> => non_neg_integer(),
%%   <<"TrainingDataStartTime">> => non_neg_integer(),
%%   <<"AutoPromotionResultReason">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"TrainingDataEndTime">> => non_neg_integer(),
%%   <<"ModelVersion">> => float()
%% }
-type describe_model_version_response() :: #{binary() => any()}.

%% Example:
%% invalid_sensor_data() :: #{
%%   <<"AffectedSensorCount">> => integer(),
%%   <<"TotalNumberOfInvalidValues">> => integer()
%% }
-type invalid_sensor_data() :: #{binary() => any()}.

%% Example:
%% describe_dataset_response() :: #{
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"DataEndTime">> => non_neg_integer(),
%%   <<"DataQualitySummary">> => data_quality_summary(),
%%   <<"DataStartTime">> => non_neg_integer(),
%%   <<"DatasetArn">> => string(),
%%   <<"DatasetName">> => string(),
%%   <<"IngestedFilesSummary">> => ingested_files_summary(),
%%   <<"IngestionInputConfiguration">> => ingestion_input_configuration(),
%%   <<"LastUpdatedAt">> => non_neg_integer(),
%%   <<"RoleArn">> => string(),
%%   <<"Schema">> => string(),
%%   <<"ServerSideKmsKeyId">> => string(),
%%   <<"SourceDatasetArn">> => string(),
%%   <<"Status">> => list(any())
%% }
-type describe_dataset_response() :: #{binary() => any()}.

%% Example:
%% list_sensor_statistics_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"SensorStatisticsSummaries">> => list(sensor_statistics_summary())
%% }
-type list_sensor_statistics_response() :: #{binary() => any()}.

%% Example:
%% list_label_groups_request() :: #{
%%   <<"LabelGroupNameBeginsWith">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_label_groups_request() :: #{binary() => any()}.

%% Example:
%% create_retraining_scheduler_response() :: #{
%%   <<"ModelArn">> => string(),
%%   <<"ModelName">> => string(),
%%   <<"Status">> => list(any())
%% }
-type create_retraining_scheduler_response() :: #{binary() => any()}.

%% Example:
%% validation_exception() :: #{
%%   <<"Message">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{
%%   <<"ResourceArn">> := string()
%% }
-type list_tags_for_resource_request() :: #{binary() => any()}.

%% Example:
%% create_dataset_request() :: #{
%%   <<"ClientToken">> := string(),
%%   <<"DatasetName">> := string(),
%%   <<"DatasetSchema">> => dataset_schema(),
%%   <<"ServerSideKmsKeyId">> => string(),
%%   <<"Tags">> => list(tag())
%% }
-type create_dataset_request() :: #{binary() => any()}.

%% Example:
%% start_inference_scheduler_request() :: #{
%%   <<"InferenceSchedulerName">> := string()
%% }
-type start_inference_scheduler_request() :: #{binary() => any()}.

%% Example:
%% throttling_exception() :: #{
%%   <<"Message">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.

%% Example:
%% describe_model_version_request() :: #{
%%   <<"ModelName">> := string(),
%%   <<"ModelVersion">> := float()
%% }
-type describe_model_version_request() :: #{binary() => any()}.

%% Example:
%% data_pre_processing_configuration() :: #{
%%   <<"TargetSamplingRate">> => list(any())
%% }
-type data_pre_processing_configuration() :: #{binary() => any()}.

%% Example:
%% describe_resource_policy_response() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"PolicyRevisionId">> => string(),
%%   <<"ResourcePolicy">> => string()
%% }
-type describe_resource_policy_response() :: #{binary() => any()}.

%% Example:
%% label_group_summary() :: #{
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"LabelGroupArn">> => string(),
%%   <<"LabelGroupName">> => string(),
%%   <<"UpdatedAt">> => non_neg_integer()
%% }
-type label_group_summary() :: #{binary() => any()}.

%% Example:
%% large_timestamp_gaps() :: #{
%%   <<"MaxTimestampGapInDays">> => integer(),
%%   <<"NumberOfLargeTimestampGaps">> => integer(),
%%   <<"Status">> => list(any())
%% }
-type large_timestamp_gaps() :: #{binary() => any()}.

%% Example:
%% insufficient_sensor_data() :: #{
%%   <<"MissingCompleteSensorData">> => missing_complete_sensor_data(),
%%   <<"SensorsWithShortDateRange">> => sensors_with_short_date_range()
%% }
-type insufficient_sensor_data() :: #{binary() => any()}.

%% Example:
%% describe_retraining_scheduler_response() :: #{
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"LookbackWindow">> => string(),
%%   <<"ModelArn">> => string(),
%%   <<"ModelName">> => string(),
%%   <<"PromoteMode">> => list(any()),
%%   <<"RetrainingFrequency">> => string(),
%%   <<"RetrainingStartDate">> => non_neg_integer(),
%%   <<"Status">> => list(any()),
%%   <<"UpdatedAt">> => non_neg_integer()
%% }
-type describe_retraining_scheduler_response() :: #{binary() => any()}.

%% Example:
%% update_label_group_request() :: #{
%%   <<"FaultCodes">> => list(string()),
%%   <<"LabelGroupName">> := string()
%% }
-type update_label_group_request() :: #{binary() => any()}.

%% Example:
%% put_resource_policy_response() :: #{
%%   <<"PolicyRevisionId">> => string(),
%%   <<"ResourceArn">> => string()
%% }
-type put_resource_policy_response() :: #{binary() => any()}.

%% Example:
%% categorical_values() :: #{
%%   <<"NumberOfCategory">> => integer(),
%%   <<"Status">> => list(any())
%% }
-type categorical_values() :: #{binary() => any()}.

%% Example:
%% inference_s3_output_configuration() :: #{
%%   <<"Bucket">> => string(),
%%   <<"Prefix">> => string()
%% }
-type inference_s3_output_configuration() :: #{binary() => any()}.

%% Example:
%% import_dataset_request() :: #{
%%   <<"ClientToken">> := string(),
%%   <<"DatasetName">> => string(),
%%   <<"ServerSideKmsKeyId">> => string(),
%%   <<"SourceDatasetArn">> := string(),
%%   <<"Tags">> => list(tag())
%% }
-type import_dataset_request() :: #{binary() => any()}.

%% Example:
%% delete_resource_policy_request() :: #{
%%   <<"ResourceArn">> := string()
%% }
-type delete_resource_policy_request() :: #{binary() => any()}.

%% Example:
%% delete_inference_scheduler_request() :: #{
%%   <<"InferenceSchedulerName">> := string()
%% }
-type delete_inference_scheduler_request() :: #{binary() => any()}.

%% Example:
%% update_inference_scheduler_request() :: #{
%%   <<"DataDelayOffsetInMinutes">> => float(),
%%   <<"DataInputConfiguration">> => inference_input_configuration(),
%%   <<"DataOutputConfiguration">> => inference_output_configuration(),
%%   <<"DataUploadFrequency">> => list(any()),
%%   <<"InferenceSchedulerName">> := string(),
%%   <<"RoleArn">> => string()
%% }
-type update_inference_scheduler_request() :: #{binary() => any()}.

%% Example:
%% describe_dataset_request() :: #{
%%   <<"DatasetName">> := string()
%% }
-type describe_dataset_request() :: #{binary() => any()}.

%% Example:
%% delete_dataset_request() :: #{
%%   <<"DatasetName">> := string()
%% }
-type delete_dataset_request() :: #{binary() => any()}.

%% Example:
%% list_datasets_response() :: #{
%%   <<"DatasetSummaries">> => list(dataset_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_datasets_response() :: #{binary() => any()}.

%% Example:
%% inference_execution_summary() :: #{
%%   <<"CustomerResultObject">> => s3_object(),
%%   <<"DataEndTime">> => non_neg_integer(),
%%   <<"DataInputConfiguration">> => inference_input_configuration(),
%%   <<"DataOutputConfiguration">> => inference_output_configuration(),
%%   <<"DataStartTime">> => non_neg_integer(),
%%   <<"FailedReason">> => string(),
%%   <<"InferenceSchedulerArn">> => string(),
%%   <<"InferenceSchedulerName">> => string(),
%%   <<"ModelArn">> => string(),
%%   <<"ModelName">> => string(),
%%   <<"ModelVersion">> => float(),
%%   <<"ModelVersionArn">> => string(),
%%   <<"ScheduledStartTime">> => non_neg_integer(),
%%   <<"Status">> => list(any())
%% }
-type inference_execution_summary() :: #{binary() => any()}.

%% Example:
%% labels_s3_input_configuration() :: #{
%%   <<"Bucket">> => string(),
%%   <<"Prefix">> => string()
%% }
-type labels_s3_input_configuration() :: #{binary() => any()}.

%% Example:
%% start_retraining_scheduler_request() :: #{
%%   <<"ModelName">> := string()
%% }
-type start_retraining_scheduler_request() :: #{binary() => any()}.

%% Example:
%% stop_retraining_scheduler_response() :: #{
%%   <<"ModelArn">> => string(),
%%   <<"ModelName">> => string(),
%%   <<"Status">> => list(any())
%% }
-type stop_retraining_scheduler_response() :: #{binary() => any()}.

%% Example:
%% list_inference_schedulers_response() :: #{
%%   <<"InferenceSchedulerSummaries">> => list(inference_scheduler_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_inference_schedulers_response() :: #{binary() => any()}.

%% Example:
%% import_dataset_response() :: #{
%%   <<"DatasetArn">> => string(),
%%   <<"DatasetName">> => string(),
%%   <<"JobId">> => string(),
%%   <<"Status">> => list(any())
%% }
-type import_dataset_response() :: #{binary() => any()}.

%% Example:
%% create_inference_scheduler_response() :: #{
%%   <<"InferenceSchedulerArn">> => string(),
%%   <<"InferenceSchedulerName">> => string(),
%%   <<"ModelQuality">> => list(any()),
%%   <<"Status">> => list(any())
%% }
-type create_inference_scheduler_response() :: #{binary() => any()}.

%% Example:
%% label_summary() :: #{
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"Equipment">> => string(),
%%   <<"FaultCode">> => string(),
%%   <<"LabelGroupArn">> => string(),
%%   <<"LabelGroupName">> => string(),
%%   <<"LabelId">> => string(),
%%   <<"Rating">> => list(any()),
%%   <<"StartTime">> => non_neg_integer()
%% }
-type label_summary() :: #{binary() => any()}.

%% Example:
%% update_retraining_scheduler_request() :: #{
%%   <<"LookbackWindow">> => string(),
%%   <<"ModelName">> := string(),
%%   <<"PromoteMode">> => list(any()),
%%   <<"RetrainingFrequency">> => string(),
%%   <<"RetrainingStartDate">> => non_neg_integer()
%% }
-type update_retraining_scheduler_request() :: #{binary() => any()}.

%% Example:
%% missing_sensor_data() :: #{
%%   <<"AffectedSensorCount">> => integer(),
%%   <<"TotalNumberOfMissingValues">> => integer()
%% }
-type missing_sensor_data() :: #{binary() => any()}.

%% Example:
%% describe_resource_policy_request() :: #{
%%   <<"ResourceArn">> := string()
%% }
-type describe_resource_policy_request() :: #{binary() => any()}.

%% Example:
%% list_model_versions_request() :: #{
%%   <<"CreatedAtEndTime">> => non_neg_integer(),
%%   <<"CreatedAtStartTime">> => non_neg_integer(),
%%   <<"MaxModelVersion">> => float(),
%%   <<"MaxResults">> => integer(),
%%   <<"MinModelVersion">> => float(),
%%   <<"ModelName">> := string(),
%%   <<"NextToken">> => string(),
%%   <<"SourceType">> => list(any()),
%%   <<"Status">> => list(any())
%% }
-type list_model_versions_request() :: #{binary() => any()}.

-type create_dataset_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_inference_scheduler_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_label_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_label_group_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_model_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_retraining_scheduler_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_dataset_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_inference_scheduler_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_label_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_label_group_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_model_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_resource_policy_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_retraining_scheduler_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type describe_data_ingestion_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_dataset_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_inference_scheduler_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_label_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_label_group_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_model_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_model_version_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_resource_policy_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_retraining_scheduler_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type import_dataset_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type import_model_version_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type list_data_ingestion_jobs_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_datasets_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_inference_events_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_inference_executions_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_inference_schedulers_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_label_groups_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_labels_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_model_versions_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_models_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_retraining_schedulers_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_sensor_statistics_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_tags_for_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type put_resource_policy_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type start_data_ingestion_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type start_inference_scheduler_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type start_retraining_scheduler_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type stop_inference_scheduler_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type stop_retraining_scheduler_errors() ::
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
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_active_model_version_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_inference_scheduler_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_label_group_errors() ::
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

-type update_retraining_scheduler_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a container for a collection of data being ingested for
%% analysis.
%%
%% The dataset
%% contains the metadata describing where the data is and what the data
%% actually looks like.
%% For example, it contains the location of the data source, the data schema,
%% and other
%% information. A dataset also contains any tags associated with the ingested
%% data.
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

%% @doc Creates a scheduled inference.
%%
%% Scheduling an inference is setting up a continuous
%% real-time inference plan to analyze new measurement data. When setting up
%% the schedule, you
%% provide an S3 bucket location for the input data, assign it a delimiter
%% between separate
%% entries in the data, set an offset delay if desired, and set the frequency
%% of inferencing.
%% You must also provide an S3 bucket location for the output data.
-spec create_inference_scheduler(aws_client:aws_client(), create_inference_scheduler_request()) ->
    {ok, create_inference_scheduler_response(), tuple()} |
    {error, any()} |
    {error, create_inference_scheduler_errors(), tuple()}.
create_inference_scheduler(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_inference_scheduler(Client, Input, []).

-spec create_inference_scheduler(aws_client:aws_client(), create_inference_scheduler_request(), proplists:proplist()) ->
    {ok, create_inference_scheduler_response(), tuple()} |
    {error, any()} |
    {error, create_inference_scheduler_errors(), tuple()}.
create_inference_scheduler(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateInferenceScheduler">>, Input, Options).

%% @doc Creates a label for an event.
-spec create_label(aws_client:aws_client(), create_label_request()) ->
    {ok, create_label_response(), tuple()} |
    {error, any()} |
    {error, create_label_errors(), tuple()}.
create_label(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_label(Client, Input, []).

-spec create_label(aws_client:aws_client(), create_label_request(), proplists:proplist()) ->
    {ok, create_label_response(), tuple()} |
    {error, any()} |
    {error, create_label_errors(), tuple()}.
create_label(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateLabel">>, Input, Options).

%% @doc Creates a group of labels.
-spec create_label_group(aws_client:aws_client(), create_label_group_request()) ->
    {ok, create_label_group_response(), tuple()} |
    {error, any()} |
    {error, create_label_group_errors(), tuple()}.
create_label_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_label_group(Client, Input, []).

-spec create_label_group(aws_client:aws_client(), create_label_group_request(), proplists:proplist()) ->
    {ok, create_label_group_response(), tuple()} |
    {error, any()} |
    {error, create_label_group_errors(), tuple()}.
create_label_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateLabelGroup">>, Input, Options).

%% @doc Creates a machine learning model for data inference.
%%
%% A machine-learning (ML) model is a mathematical model that finds patterns
%% in your data.
%% In Amazon Lookout for Equipment, the model learns the patterns of normal
%% behavior and detects abnormal
%% behavior that could be potential equipment failure (or maintenance
%% events). The models are
%% made by analyzing normal data and abnormalities in machine behavior that
%% have already
%% occurred.
%%
%% Your model is trained using a portion of the data from your dataset and
%% uses that data
%% to learn patterns of normal behavior and abnormal patterns that lead to
%% equipment failure.
%% Another portion of the data is used to evaluate the model's accuracy.
-spec create_model(aws_client:aws_client(), create_model_request()) ->
    {ok, create_model_response(), tuple()} |
    {error, any()} |
    {error, create_model_errors(), tuple()}.
create_model(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_model(Client, Input, []).

-spec create_model(aws_client:aws_client(), create_model_request(), proplists:proplist()) ->
    {ok, create_model_response(), tuple()} |
    {error, any()} |
    {error, create_model_errors(), tuple()}.
create_model(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateModel">>, Input, Options).

%% @doc Creates a retraining scheduler on the specified model.
-spec create_retraining_scheduler(aws_client:aws_client(), create_retraining_scheduler_request()) ->
    {ok, create_retraining_scheduler_response(), tuple()} |
    {error, any()} |
    {error, create_retraining_scheduler_errors(), tuple()}.
create_retraining_scheduler(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_retraining_scheduler(Client, Input, []).

-spec create_retraining_scheduler(aws_client:aws_client(), create_retraining_scheduler_request(), proplists:proplist()) ->
    {ok, create_retraining_scheduler_response(), tuple()} |
    {error, any()} |
    {error, create_retraining_scheduler_errors(), tuple()}.
create_retraining_scheduler(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateRetrainingScheduler">>, Input, Options).

%% @doc Deletes a dataset and associated artifacts.
%%
%% The operation will check to see if any
%% inference scheduler or data ingestion job is currently using the dataset,
%% and if there
%% isn't, the dataset, its metadata, and any associated data stored in S3
%% will be deleted.
%% This does not affect any models that used this dataset for training and
%% evaluation, but
%% does prevent it from being used in the future.
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

%% @doc Deletes an inference scheduler that has been set up.
%%
%% Prior inference results will not be
%% deleted.
-spec delete_inference_scheduler(aws_client:aws_client(), delete_inference_scheduler_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_inference_scheduler_errors(), tuple()}.
delete_inference_scheduler(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_inference_scheduler(Client, Input, []).

-spec delete_inference_scheduler(aws_client:aws_client(), delete_inference_scheduler_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_inference_scheduler_errors(), tuple()}.
delete_inference_scheduler(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteInferenceScheduler">>, Input, Options).

%% @doc Deletes a label.
-spec delete_label(aws_client:aws_client(), delete_label_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_label_errors(), tuple()}.
delete_label(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_label(Client, Input, []).

-spec delete_label(aws_client:aws_client(), delete_label_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_label_errors(), tuple()}.
delete_label(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteLabel">>, Input, Options).

%% @doc Deletes a group of labels.
-spec delete_label_group(aws_client:aws_client(), delete_label_group_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_label_group_errors(), tuple()}.
delete_label_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_label_group(Client, Input, []).

-spec delete_label_group(aws_client:aws_client(), delete_label_group_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_label_group_errors(), tuple()}.
delete_label_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteLabelGroup">>, Input, Options).

%% @doc Deletes a machine learning model currently available for Amazon
%% Lookout for Equipment.
%%
%% This will prevent it
%% from being used with an inference scheduler, even one that is already set
%% up.
-spec delete_model(aws_client:aws_client(), delete_model_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_model_errors(), tuple()}.
delete_model(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_model(Client, Input, []).

-spec delete_model(aws_client:aws_client(), delete_model_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_model_errors(), tuple()}.
delete_model(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteModel">>, Input, Options).

%% @doc Deletes the resource policy attached to the resource.
-spec delete_resource_policy(aws_client:aws_client(), delete_resource_policy_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_resource_policy_errors(), tuple()}.
delete_resource_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_resource_policy(Client, Input, []).

-spec delete_resource_policy(aws_client:aws_client(), delete_resource_policy_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_resource_policy_errors(), tuple()}.
delete_resource_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteResourcePolicy">>, Input, Options).

%% @doc Deletes a retraining scheduler from a model.
%%
%% The retraining scheduler must be in the
%% `STOPPED' status.
-spec delete_retraining_scheduler(aws_client:aws_client(), delete_retraining_scheduler_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_retraining_scheduler_errors(), tuple()}.
delete_retraining_scheduler(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_retraining_scheduler(Client, Input, []).

-spec delete_retraining_scheduler(aws_client:aws_client(), delete_retraining_scheduler_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_retraining_scheduler_errors(), tuple()}.
delete_retraining_scheduler(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteRetrainingScheduler">>, Input, Options).

%% @doc Provides information on a specific data ingestion job such as
%% creation time, dataset
%% ARN, and status.
-spec describe_data_ingestion_job(aws_client:aws_client(), describe_data_ingestion_job_request()) ->
    {ok, describe_data_ingestion_job_response(), tuple()} |
    {error, any()} |
    {error, describe_data_ingestion_job_errors(), tuple()}.
describe_data_ingestion_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_data_ingestion_job(Client, Input, []).

-spec describe_data_ingestion_job(aws_client:aws_client(), describe_data_ingestion_job_request(), proplists:proplist()) ->
    {ok, describe_data_ingestion_job_response(), tuple()} |
    {error, any()} |
    {error, describe_data_ingestion_job_errors(), tuple()}.
describe_data_ingestion_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDataIngestionJob">>, Input, Options).

%% @doc Provides a JSON description of the data in each time series dataset,
%% including names,
%% column names, and data types.
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

%% @doc Specifies information about the inference scheduler being used,
%% including name, model,
%% status, and associated metadata
-spec describe_inference_scheduler(aws_client:aws_client(), describe_inference_scheduler_request()) ->
    {ok, describe_inference_scheduler_response(), tuple()} |
    {error, any()} |
    {error, describe_inference_scheduler_errors(), tuple()}.
describe_inference_scheduler(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_inference_scheduler(Client, Input, []).

-spec describe_inference_scheduler(aws_client:aws_client(), describe_inference_scheduler_request(), proplists:proplist()) ->
    {ok, describe_inference_scheduler_response(), tuple()} |
    {error, any()} |
    {error, describe_inference_scheduler_errors(), tuple()}.
describe_inference_scheduler(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeInferenceScheduler">>, Input, Options).

%% @doc Returns the name of the label.
-spec describe_label(aws_client:aws_client(), describe_label_request()) ->
    {ok, describe_label_response(), tuple()} |
    {error, any()} |
    {error, describe_label_errors(), tuple()}.
describe_label(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_label(Client, Input, []).

-spec describe_label(aws_client:aws_client(), describe_label_request(), proplists:proplist()) ->
    {ok, describe_label_response(), tuple()} |
    {error, any()} |
    {error, describe_label_errors(), tuple()}.
describe_label(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeLabel">>, Input, Options).

%% @doc Returns information about the label group.
-spec describe_label_group(aws_client:aws_client(), describe_label_group_request()) ->
    {ok, describe_label_group_response(), tuple()} |
    {error, any()} |
    {error, describe_label_group_errors(), tuple()}.
describe_label_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_label_group(Client, Input, []).

-spec describe_label_group(aws_client:aws_client(), describe_label_group_request(), proplists:proplist()) ->
    {ok, describe_label_group_response(), tuple()} |
    {error, any()} |
    {error, describe_label_group_errors(), tuple()}.
describe_label_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeLabelGroup">>, Input, Options).

%% @doc Provides a JSON containing the overall information about a specific
%% machine learning
%% model, including model name and ARN, dataset, training and evaluation
%% information, status,
%% and so on.
-spec describe_model(aws_client:aws_client(), describe_model_request()) ->
    {ok, describe_model_response(), tuple()} |
    {error, any()} |
    {error, describe_model_errors(), tuple()}.
describe_model(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_model(Client, Input, []).

-spec describe_model(aws_client:aws_client(), describe_model_request(), proplists:proplist()) ->
    {ok, describe_model_response(), tuple()} |
    {error, any()} |
    {error, describe_model_errors(), tuple()}.
describe_model(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeModel">>, Input, Options).

%% @doc Retrieves information about a specific machine learning model
%% version.
-spec describe_model_version(aws_client:aws_client(), describe_model_version_request()) ->
    {ok, describe_model_version_response(), tuple()} |
    {error, any()} |
    {error, describe_model_version_errors(), tuple()}.
describe_model_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_model_version(Client, Input, []).

-spec describe_model_version(aws_client:aws_client(), describe_model_version_request(), proplists:proplist()) ->
    {ok, describe_model_version_response(), tuple()} |
    {error, any()} |
    {error, describe_model_version_errors(), tuple()}.
describe_model_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeModelVersion">>, Input, Options).

%% @doc Provides the details of a resource policy attached to a resource.
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

%% @doc Provides a description of the retraining scheduler, including
%% information such as the
%% model name and retraining parameters.
-spec describe_retraining_scheduler(aws_client:aws_client(), describe_retraining_scheduler_request()) ->
    {ok, describe_retraining_scheduler_response(), tuple()} |
    {error, any()} |
    {error, describe_retraining_scheduler_errors(), tuple()}.
describe_retraining_scheduler(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_retraining_scheduler(Client, Input, []).

-spec describe_retraining_scheduler(aws_client:aws_client(), describe_retraining_scheduler_request(), proplists:proplist()) ->
    {ok, describe_retraining_scheduler_response(), tuple()} |
    {error, any()} |
    {error, describe_retraining_scheduler_errors(), tuple()}.
describe_retraining_scheduler(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeRetrainingScheduler">>, Input, Options).

%% @doc Imports a dataset.
-spec import_dataset(aws_client:aws_client(), import_dataset_request()) ->
    {ok, import_dataset_response(), tuple()} |
    {error, any()} |
    {error, import_dataset_errors(), tuple()}.
import_dataset(Client, Input)
  when is_map(Client), is_map(Input) ->
    import_dataset(Client, Input, []).

-spec import_dataset(aws_client:aws_client(), import_dataset_request(), proplists:proplist()) ->
    {ok, import_dataset_response(), tuple()} |
    {error, any()} |
    {error, import_dataset_errors(), tuple()}.
import_dataset(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ImportDataset">>, Input, Options).

%% @doc Imports a model that has been trained successfully.
-spec import_model_version(aws_client:aws_client(), import_model_version_request()) ->
    {ok, import_model_version_response(), tuple()} |
    {error, any()} |
    {error, import_model_version_errors(), tuple()}.
import_model_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    import_model_version(Client, Input, []).

-spec import_model_version(aws_client:aws_client(), import_model_version_request(), proplists:proplist()) ->
    {ok, import_model_version_response(), tuple()} |
    {error, any()} |
    {error, import_model_version_errors(), tuple()}.
import_model_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ImportModelVersion">>, Input, Options).

%% @doc Provides a list of all data ingestion jobs, including dataset name
%% and ARN, S3 location
%% of the input data, status, and so on.
-spec list_data_ingestion_jobs(aws_client:aws_client(), list_data_ingestion_jobs_request()) ->
    {ok, list_data_ingestion_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_data_ingestion_jobs_errors(), tuple()}.
list_data_ingestion_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_data_ingestion_jobs(Client, Input, []).

-spec list_data_ingestion_jobs(aws_client:aws_client(), list_data_ingestion_jobs_request(), proplists:proplist()) ->
    {ok, list_data_ingestion_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_data_ingestion_jobs_errors(), tuple()}.
list_data_ingestion_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDataIngestionJobs">>, Input, Options).

%% @doc Lists all datasets currently available in your account, filtering on
%% the dataset name.
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

%% @doc Lists all inference events that have been found for the specified
%% inference scheduler.
-spec list_inference_events(aws_client:aws_client(), list_inference_events_request()) ->
    {ok, list_inference_events_response(), tuple()} |
    {error, any()} |
    {error, list_inference_events_errors(), tuple()}.
list_inference_events(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_inference_events(Client, Input, []).

-spec list_inference_events(aws_client:aws_client(), list_inference_events_request(), proplists:proplist()) ->
    {ok, list_inference_events_response(), tuple()} |
    {error, any()} |
    {error, list_inference_events_errors(), tuple()}.
list_inference_events(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListInferenceEvents">>, Input, Options).

%% @doc Lists all inference executions that have been performed by the
%% specified inference
%% scheduler.
-spec list_inference_executions(aws_client:aws_client(), list_inference_executions_request()) ->
    {ok, list_inference_executions_response(), tuple()} |
    {error, any()} |
    {error, list_inference_executions_errors(), tuple()}.
list_inference_executions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_inference_executions(Client, Input, []).

-spec list_inference_executions(aws_client:aws_client(), list_inference_executions_request(), proplists:proplist()) ->
    {ok, list_inference_executions_response(), tuple()} |
    {error, any()} |
    {error, list_inference_executions_errors(), tuple()}.
list_inference_executions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListInferenceExecutions">>, Input, Options).

%% @doc Retrieves a list of all inference schedulers currently available for
%% your account.
-spec list_inference_schedulers(aws_client:aws_client(), list_inference_schedulers_request()) ->
    {ok, list_inference_schedulers_response(), tuple()} |
    {error, any()} |
    {error, list_inference_schedulers_errors(), tuple()}.
list_inference_schedulers(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_inference_schedulers(Client, Input, []).

-spec list_inference_schedulers(aws_client:aws_client(), list_inference_schedulers_request(), proplists:proplist()) ->
    {ok, list_inference_schedulers_response(), tuple()} |
    {error, any()} |
    {error, list_inference_schedulers_errors(), tuple()}.
list_inference_schedulers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListInferenceSchedulers">>, Input, Options).

%% @doc Returns a list of the label groups.
-spec list_label_groups(aws_client:aws_client(), list_label_groups_request()) ->
    {ok, list_label_groups_response(), tuple()} |
    {error, any()} |
    {error, list_label_groups_errors(), tuple()}.
list_label_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_label_groups(Client, Input, []).

-spec list_label_groups(aws_client:aws_client(), list_label_groups_request(), proplists:proplist()) ->
    {ok, list_label_groups_response(), tuple()} |
    {error, any()} |
    {error, list_label_groups_errors(), tuple()}.
list_label_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListLabelGroups">>, Input, Options).

%% @doc Provides a list of labels.
-spec list_labels(aws_client:aws_client(), list_labels_request()) ->
    {ok, list_labels_response(), tuple()} |
    {error, any()} |
    {error, list_labels_errors(), tuple()}.
list_labels(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_labels(Client, Input, []).

-spec list_labels(aws_client:aws_client(), list_labels_request(), proplists:proplist()) ->
    {ok, list_labels_response(), tuple()} |
    {error, any()} |
    {error, list_labels_errors(), tuple()}.
list_labels(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListLabels">>, Input, Options).

%% @doc Generates a list of all model versions for a given model, including
%% the model version,
%% model version ARN, and status.
%%
%% To list a subset of versions, use the
%% `MaxModelVersion' and `MinModelVersion' fields.
-spec list_model_versions(aws_client:aws_client(), list_model_versions_request()) ->
    {ok, list_model_versions_response(), tuple()} |
    {error, any()} |
    {error, list_model_versions_errors(), tuple()}.
list_model_versions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_model_versions(Client, Input, []).

-spec list_model_versions(aws_client:aws_client(), list_model_versions_request(), proplists:proplist()) ->
    {ok, list_model_versions_response(), tuple()} |
    {error, any()} |
    {error, list_model_versions_errors(), tuple()}.
list_model_versions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListModelVersions">>, Input, Options).

%% @doc Generates a list of all models in the account, including model name
%% and ARN, dataset,
%% and status.
-spec list_models(aws_client:aws_client(), list_models_request()) ->
    {ok, list_models_response(), tuple()} |
    {error, any()} |
    {error, list_models_errors(), tuple()}.
list_models(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_models(Client, Input, []).

-spec list_models(aws_client:aws_client(), list_models_request(), proplists:proplist()) ->
    {ok, list_models_response(), tuple()} |
    {error, any()} |
    {error, list_models_errors(), tuple()}.
list_models(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListModels">>, Input, Options).

%% @doc Lists all retraining schedulers in your account, filtering by model
%% name prefix and
%% status.
-spec list_retraining_schedulers(aws_client:aws_client(), list_retraining_schedulers_request()) ->
    {ok, list_retraining_schedulers_response(), tuple()} |
    {error, any()} |
    {error, list_retraining_schedulers_errors(), tuple()}.
list_retraining_schedulers(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_retraining_schedulers(Client, Input, []).

-spec list_retraining_schedulers(aws_client:aws_client(), list_retraining_schedulers_request(), proplists:proplist()) ->
    {ok, list_retraining_schedulers_response(), tuple()} |
    {error, any()} |
    {error, list_retraining_schedulers_errors(), tuple()}.
list_retraining_schedulers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListRetrainingSchedulers">>, Input, Options).

%% @doc Lists statistics about the data collected for each of the sensors
%% that have been
%% successfully ingested in the particular dataset.
%%
%% Can also be used to retreive Sensor
%% Statistics for a previous ingestion job.
-spec list_sensor_statistics(aws_client:aws_client(), list_sensor_statistics_request()) ->
    {ok, list_sensor_statistics_response(), tuple()} |
    {error, any()} |
    {error, list_sensor_statistics_errors(), tuple()}.
list_sensor_statistics(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_sensor_statistics(Client, Input, []).

-spec list_sensor_statistics(aws_client:aws_client(), list_sensor_statistics_request(), proplists:proplist()) ->
    {ok, list_sensor_statistics_response(), tuple()} |
    {error, any()} |
    {error, list_sensor_statistics_errors(), tuple()}.
list_sensor_statistics(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListSensorStatistics">>, Input, Options).

%% @doc Lists all the tags for a specified resource, including key and value.
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

%% @doc Creates a resource control policy for a given resource.
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

%% @doc Starts a data ingestion job.
%%
%% Amazon Lookout for Equipment returns the job status.
-spec start_data_ingestion_job(aws_client:aws_client(), start_data_ingestion_job_request()) ->
    {ok, start_data_ingestion_job_response(), tuple()} |
    {error, any()} |
    {error, start_data_ingestion_job_errors(), tuple()}.
start_data_ingestion_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_data_ingestion_job(Client, Input, []).

-spec start_data_ingestion_job(aws_client:aws_client(), start_data_ingestion_job_request(), proplists:proplist()) ->
    {ok, start_data_ingestion_job_response(), tuple()} |
    {error, any()} |
    {error, start_data_ingestion_job_errors(), tuple()}.
start_data_ingestion_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartDataIngestionJob">>, Input, Options).

%% @doc Starts an inference scheduler.
-spec start_inference_scheduler(aws_client:aws_client(), start_inference_scheduler_request()) ->
    {ok, start_inference_scheduler_response(), tuple()} |
    {error, any()} |
    {error, start_inference_scheduler_errors(), tuple()}.
start_inference_scheduler(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_inference_scheduler(Client, Input, []).

-spec start_inference_scheduler(aws_client:aws_client(), start_inference_scheduler_request(), proplists:proplist()) ->
    {ok, start_inference_scheduler_response(), tuple()} |
    {error, any()} |
    {error, start_inference_scheduler_errors(), tuple()}.
start_inference_scheduler(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartInferenceScheduler">>, Input, Options).

%% @doc Starts a retraining scheduler.
-spec start_retraining_scheduler(aws_client:aws_client(), start_retraining_scheduler_request()) ->
    {ok, start_retraining_scheduler_response(), tuple()} |
    {error, any()} |
    {error, start_retraining_scheduler_errors(), tuple()}.
start_retraining_scheduler(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_retraining_scheduler(Client, Input, []).

-spec start_retraining_scheduler(aws_client:aws_client(), start_retraining_scheduler_request(), proplists:proplist()) ->
    {ok, start_retraining_scheduler_response(), tuple()} |
    {error, any()} |
    {error, start_retraining_scheduler_errors(), tuple()}.
start_retraining_scheduler(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartRetrainingScheduler">>, Input, Options).

%% @doc Stops an inference scheduler.
-spec stop_inference_scheduler(aws_client:aws_client(), stop_inference_scheduler_request()) ->
    {ok, stop_inference_scheduler_response(), tuple()} |
    {error, any()} |
    {error, stop_inference_scheduler_errors(), tuple()}.
stop_inference_scheduler(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_inference_scheduler(Client, Input, []).

-spec stop_inference_scheduler(aws_client:aws_client(), stop_inference_scheduler_request(), proplists:proplist()) ->
    {ok, stop_inference_scheduler_response(), tuple()} |
    {error, any()} |
    {error, stop_inference_scheduler_errors(), tuple()}.
stop_inference_scheduler(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopInferenceScheduler">>, Input, Options).

%% @doc Stops a retraining scheduler.
-spec stop_retraining_scheduler(aws_client:aws_client(), stop_retraining_scheduler_request()) ->
    {ok, stop_retraining_scheduler_response(), tuple()} |
    {error, any()} |
    {error, stop_retraining_scheduler_errors(), tuple()}.
stop_retraining_scheduler(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_retraining_scheduler(Client, Input, []).

-spec stop_retraining_scheduler(aws_client:aws_client(), stop_retraining_scheduler_request(), proplists:proplist()) ->
    {ok, stop_retraining_scheduler_response(), tuple()} |
    {error, any()} |
    {error, stop_retraining_scheduler_errors(), tuple()}.
stop_retraining_scheduler(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopRetrainingScheduler">>, Input, Options).

%% @doc Associates a given tag to a resource in your account.
%%
%% A tag is a key-value pair which
%% can be added to an Amazon Lookout for Equipment resource as metadata. Tags
%% can be used for organizing your
%% resources as well as helping you to search and filter by tag. Multiple
%% tags can be added to
%% a resource, either when you create it, or later. Up to 50 tags can be
%% associated with each
%% resource.
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

%% @doc Removes a specific tag from a given resource.
%%
%% The tag is specified by its key.
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

%% @doc Sets the active model version for a given machine learning model.
-spec update_active_model_version(aws_client:aws_client(), update_active_model_version_request()) ->
    {ok, update_active_model_version_response(), tuple()} |
    {error, any()} |
    {error, update_active_model_version_errors(), tuple()}.
update_active_model_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_active_model_version(Client, Input, []).

-spec update_active_model_version(aws_client:aws_client(), update_active_model_version_request(), proplists:proplist()) ->
    {ok, update_active_model_version_response(), tuple()} |
    {error, any()} |
    {error, update_active_model_version_errors(), tuple()}.
update_active_model_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateActiveModelVersion">>, Input, Options).

%% @doc Updates an inference scheduler.
-spec update_inference_scheduler(aws_client:aws_client(), update_inference_scheduler_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_inference_scheduler_errors(), tuple()}.
update_inference_scheduler(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_inference_scheduler(Client, Input, []).

-spec update_inference_scheduler(aws_client:aws_client(), update_inference_scheduler_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_inference_scheduler_errors(), tuple()}.
update_inference_scheduler(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateInferenceScheduler">>, Input, Options).

%% @doc Updates the label group.
-spec update_label_group(aws_client:aws_client(), update_label_group_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_label_group_errors(), tuple()}.
update_label_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_label_group(Client, Input, []).

-spec update_label_group(aws_client:aws_client(), update_label_group_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_label_group_errors(), tuple()}.
update_label_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateLabelGroup">>, Input, Options).

%% @doc Updates a model in the account.
-spec update_model(aws_client:aws_client(), update_model_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_model_errors(), tuple()}.
update_model(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_model(Client, Input, []).

-spec update_model(aws_client:aws_client(), update_model_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_model_errors(), tuple()}.
update_model(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateModel">>, Input, Options).

%% @doc Updates a retraining scheduler.
-spec update_retraining_scheduler(aws_client:aws_client(), update_retraining_scheduler_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_retraining_scheduler_errors(), tuple()}.
update_retraining_scheduler(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_retraining_scheduler(Client, Input, []).

-spec update_retraining_scheduler(aws_client:aws_client(), update_retraining_scheduler_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_retraining_scheduler_errors(), tuple()}.
update_retraining_scheduler(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateRetrainingScheduler">>, Input, Options).

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
    Client1 = Client#{service => <<"lookoutequipment">>},
    Host = build_host(<<"lookoutequipment">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.0">>},
        {<<"X-Amz-Target">>, <<"AWSLookoutEquipmentFrontendService.", Action/binary>>}
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
