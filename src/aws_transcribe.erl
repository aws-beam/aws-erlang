%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Transcribe offers three main types of batch transcription:
%% Standard, Medical, and
%% Call Analytics.
%%
%% Standard transcriptions are the most common
%% option. Refer to for details.
%%
%% Medical transcriptions are tailored to
%% medical professionals and incorporate medical terms. A common use case for
%% this
%% service is transcribing doctor-patient dialogue into after-visit notes.
%% Refer to
%% for details.
%%
%% Call Analytics transcriptions are designed
%% for use with call center audio on two different channels; if you're
%% looking for
%% insight into customer service calls, use this option. Refer to for
%% details.
-module(aws_transcribe).

-export([create_call_analytics_category/2,
         create_call_analytics_category/3,
         create_language_model/2,
         create_language_model/3,
         create_medical_vocabulary/2,
         create_medical_vocabulary/3,
         create_vocabulary/2,
         create_vocabulary/3,
         create_vocabulary_filter/2,
         create_vocabulary_filter/3,
         delete_call_analytics_category/2,
         delete_call_analytics_category/3,
         delete_call_analytics_job/2,
         delete_call_analytics_job/3,
         delete_language_model/2,
         delete_language_model/3,
         delete_medical_scribe_job/2,
         delete_medical_scribe_job/3,
         delete_medical_transcription_job/2,
         delete_medical_transcription_job/3,
         delete_medical_vocabulary/2,
         delete_medical_vocabulary/3,
         delete_transcription_job/2,
         delete_transcription_job/3,
         delete_vocabulary/2,
         delete_vocabulary/3,
         delete_vocabulary_filter/2,
         delete_vocabulary_filter/3,
         describe_language_model/2,
         describe_language_model/3,
         get_call_analytics_category/2,
         get_call_analytics_category/3,
         get_call_analytics_job/2,
         get_call_analytics_job/3,
         get_medical_scribe_job/2,
         get_medical_scribe_job/3,
         get_medical_transcription_job/2,
         get_medical_transcription_job/3,
         get_medical_vocabulary/2,
         get_medical_vocabulary/3,
         get_transcription_job/2,
         get_transcription_job/3,
         get_vocabulary/2,
         get_vocabulary/3,
         get_vocabulary_filter/2,
         get_vocabulary_filter/3,
         list_call_analytics_categories/2,
         list_call_analytics_categories/3,
         list_call_analytics_jobs/2,
         list_call_analytics_jobs/3,
         list_language_models/2,
         list_language_models/3,
         list_medical_scribe_jobs/2,
         list_medical_scribe_jobs/3,
         list_medical_transcription_jobs/2,
         list_medical_transcription_jobs/3,
         list_medical_vocabularies/2,
         list_medical_vocabularies/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         list_transcription_jobs/2,
         list_transcription_jobs/3,
         list_vocabularies/2,
         list_vocabularies/3,
         list_vocabulary_filters/2,
         list_vocabulary_filters/3,
         start_call_analytics_job/2,
         start_call_analytics_job/3,
         start_medical_scribe_job/2,
         start_medical_scribe_job/3,
         start_medical_transcription_job/2,
         start_medical_transcription_job/3,
         start_transcription_job/2,
         start_transcription_job/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_call_analytics_category/2,
         update_call_analytics_category/3,
         update_medical_vocabulary/2,
         update_medical_vocabulary/3,
         update_vocabulary/2,
         update_vocabulary/3,
         update_vocabulary_filter/2,
         update_vocabulary_filter/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% list_vocabularies_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"Vocabularies">> => list(vocabulary_info())
%% }
-type list_vocabularies_response() :: #{binary() => any()}.

%% Example:
%% get_transcription_job_response() :: #{
%%   <<"TranscriptionJob">> => transcription_job()
%% }
-type get_transcription_job_response() :: #{binary() => any()}.

%% Example:
%% call_analytics_job_summary() :: #{
%%   <<"CallAnalyticsJobDetails">> => call_analytics_job_details(),
%%   <<"CallAnalyticsJobName">> => string(),
%%   <<"CallAnalyticsJobStatus">> => list(any()),
%%   <<"CompletionTime">> => non_neg_integer(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"FailureReason">> => string(),
%%   <<"LanguageCode">> => list(any()),
%%   <<"StartTime">> => non_neg_integer()
%% }
-type call_analytics_job_summary() :: #{binary() => any()}.

%% Example:
%% transcription_job() :: #{
%%   <<"CompletionTime">> => non_neg_integer(),
%%   <<"ContentRedaction">> => content_redaction(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"FailureReason">> => string(),
%%   <<"IdentifiedLanguageScore">> => float(),
%%   <<"IdentifyLanguage">> => boolean(),
%%   <<"IdentifyMultipleLanguages">> => boolean(),
%%   <<"JobExecutionSettings">> => job_execution_settings(),
%%   <<"LanguageCode">> => list(any()),
%%   <<"LanguageCodes">> => list(language_code_item()),
%%   <<"LanguageIdSettings">> => map(),
%%   <<"LanguageOptions">> => list(list(any())()),
%%   <<"Media">> => media(),
%%   <<"MediaFormat">> => list(any()),
%%   <<"MediaSampleRateHertz">> => integer(),
%%   <<"ModelSettings">> => model_settings(),
%%   <<"Settings">> => settings(),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"Subtitles">> => subtitles_output(),
%%   <<"Tags">> => list(tag()),
%%   <<"ToxicityDetection">> => list(toxicity_detection_settings()),
%%   <<"Transcript">> => transcript(),
%%   <<"TranscriptionJobName">> => string(),
%%   <<"TranscriptionJobStatus">> => list(any())
%% }
-type transcription_job() :: #{binary() => any()}.

%% Example:
%% medical_transcription_job_summary() :: #{
%%   <<"CompletionTime">> => non_neg_integer(),
%%   <<"ContentIdentificationType">> => list(any()),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"FailureReason">> => string(),
%%   <<"LanguageCode">> => list(any()),
%%   <<"MedicalTranscriptionJobName">> => string(),
%%   <<"OutputLocationType">> => list(any()),
%%   <<"Specialty">> => list(any()),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"TranscriptionJobStatus">> => list(any()),
%%   <<"Type">> => list(any())
%% }
-type medical_transcription_job_summary() :: #{binary() => any()}.

%% Example:
%% delete_call_analytics_job_response() :: #{

%% }
-type delete_call_analytics_job_response() :: #{binary() => any()}.

%% Example:
%% delete_call_analytics_category_response() :: #{

%% }
-type delete_call_analytics_category_response() :: #{binary() => any()}.

%% Example:
%% create_language_model_response() :: #{
%%   <<"BaseModelName">> => list(any()),
%%   <<"InputDataConfig">> => input_data_config(),
%%   <<"LanguageCode">> => list(any()),
%%   <<"ModelName">> => string(),
%%   <<"ModelStatus">> => list(any())
%% }
-type create_language_model_response() :: #{binary() => any()}.

%% Example:
%% create_vocabulary_filter_request() :: #{
%%   <<"DataAccessRoleArn">> => string(),
%%   <<"LanguageCode">> := list(any()),
%%   <<"Tags">> => list(tag()),
%%   <<"VocabularyFilterFileUri">> => string(),
%%   <<"Words">> => list(string())
%% }
-type create_vocabulary_filter_request() :: #{binary() => any()}.

%% Example:
%% tag_resource_request() :: #{
%%   <<"Tags">> := list(tag())
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% internal_failure_exception() :: #{
%%   <<"Message">> => string()
%% }
-type internal_failure_exception() :: #{binary() => any()}.

%% Example:
%% delete_medical_transcription_job_request() :: #{

%% }
-type delete_medical_transcription_job_request() :: #{binary() => any()}.

%% Example:
%% list_medical_transcription_jobs_response() :: #{
%%   <<"MedicalTranscriptionJobSummaries">> => list(medical_transcription_job_summary()),
%%   <<"NextToken">> => string(),
%%   <<"Status">> => list(any())
%% }
-type list_medical_transcription_jobs_response() :: #{binary() => any()}.

%% Example:
%% job_execution_settings() :: #{
%%   <<"AllowDeferredExecution">> => boolean(),
%%   <<"DataAccessRoleArn">> => string()
%% }
-type job_execution_settings() :: #{binary() => any()}.

%% Example:
%% absolute_time_range() :: #{
%%   <<"EndTime">> => float(),
%%   <<"First">> => float(),
%%   <<"Last">> => float(),
%%   <<"StartTime">> => float()
%% }
-type absolute_time_range() :: #{binary() => any()}.

%% Example:
%% list_language_models_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NameContains">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"StatusEquals">> => list(any())
%% }
-type list_language_models_request() :: #{binary() => any()}.

%% Example:
%% summarization() :: #{
%%   <<"GenerateAbstractiveSummary">> => boolean()
%% }
-type summarization() :: #{binary() => any()}.

%% Example:
%% input_data_config() :: #{
%%   <<"DataAccessRoleArn">> => string(),
%%   <<"S3Uri">> => string(),
%%   <<"TuningDataS3Uri">> => string()
%% }
-type input_data_config() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{

%% }
-type untag_resource_response() :: #{binary() => any()}.

%% Example:
%% non_talk_time_filter() :: #{
%%   <<"AbsoluteTimeRange">> => absolute_time_range(),
%%   <<"Negate">> => boolean(),
%%   <<"RelativeTimeRange">> => relative_time_range(),
%%   <<"Threshold">> => float()
%% }
-type non_talk_time_filter() :: #{binary() => any()}.

%% Example:
%% clinical_note_generation_settings() :: #{
%%   <<"NoteTemplate">> => list(any())
%% }
-type clinical_note_generation_settings() :: #{binary() => any()}.

%% Example:
%% start_medical_transcription_job_response() :: #{
%%   <<"MedicalTranscriptionJob">> => medical_transcription_job()
%% }
-type start_medical_transcription_job_response() :: #{binary() => any()}.

%% Example:
%% toxicity_detection_settings() :: #{
%%   <<"ToxicityCategories">> => list(list(any())())
%% }
-type toxicity_detection_settings() :: #{binary() => any()}.

%% Example:
%% delete_language_model_request() :: #{

%% }
-type delete_language_model_request() :: #{binary() => any()}.

%% Example:
%% create_vocabulary_filter_response() :: #{
%%   <<"LanguageCode">> => list(any()),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"VocabularyFilterName">> => string()
%% }
-type create_vocabulary_filter_response() :: #{binary() => any()}.

%% Example:
%% list_transcription_jobs_request() :: #{
%%   <<"JobNameContains">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"Status">> => list(any())
%% }
-type list_transcription_jobs_request() :: #{binary() => any()}.

%% Example:
%% create_vocabulary_response() :: #{
%%   <<"FailureReason">> => string(),
%%   <<"LanguageCode">> => list(any()),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"VocabularyName">> => string(),
%%   <<"VocabularyState">> => list(any())
%% }
-type create_vocabulary_response() :: #{binary() => any()}.

%% Example:
%% update_vocabulary_filter_request() :: #{
%%   <<"DataAccessRoleArn">> => string(),
%%   <<"VocabularyFilterFileUri">> => string(),
%%   <<"Words">> => list(string())
%% }
-type update_vocabulary_filter_request() :: #{binary() => any()}.

%% Example:
%% medical_scribe_job_summary() :: #{
%%   <<"CompletionTime">> => non_neg_integer(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"FailureReason">> => string(),
%%   <<"LanguageCode">> => list(any()),
%%   <<"MedicalScribeJobName">> => string(),
%%   <<"MedicalScribeJobStatus">> => list(any()),
%%   <<"StartTime">> => non_neg_integer()
%% }
-type medical_scribe_job_summary() :: #{binary() => any()}.

%% Example:
%% transcription_job_summary() :: #{
%%   <<"CompletionTime">> => non_neg_integer(),
%%   <<"ContentRedaction">> => content_redaction(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"FailureReason">> => string(),
%%   <<"IdentifiedLanguageScore">> => float(),
%%   <<"IdentifyLanguage">> => boolean(),
%%   <<"IdentifyMultipleLanguages">> => boolean(),
%%   <<"LanguageCode">> => list(any()),
%%   <<"LanguageCodes">> => list(language_code_item()),
%%   <<"ModelSettings">> => model_settings(),
%%   <<"OutputLocationType">> => list(any()),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"ToxicityDetection">> => list(toxicity_detection_settings()),
%%   <<"TranscriptionJobName">> => string(),
%%   <<"TranscriptionJobStatus">> => list(any())
%% }
-type transcription_job_summary() :: #{binary() => any()}.

%% Example:
%% list_medical_vocabularies_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NameContains">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"StateEquals">> => list(any())
%% }
-type list_medical_vocabularies_request() :: #{binary() => any()}.

%% Example:
%% call_analytics_job() :: #{
%%   <<"CallAnalyticsJobDetails">> => call_analytics_job_details(),
%%   <<"CallAnalyticsJobName">> => string(),
%%   <<"CallAnalyticsJobStatus">> => list(any()),
%%   <<"ChannelDefinitions">> => list(channel_definition()),
%%   <<"CompletionTime">> => non_neg_integer(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"DataAccessRoleArn">> => string(),
%%   <<"FailureReason">> => string(),
%%   <<"IdentifiedLanguageScore">> => float(),
%%   <<"LanguageCode">> => list(any()),
%%   <<"Media">> => media(),
%%   <<"MediaFormat">> => list(any()),
%%   <<"MediaSampleRateHertz">> => integer(),
%%   <<"Settings">> => call_analytics_job_settings(),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"Tags">> => list(tag()),
%%   <<"Transcript">> => transcript()
%% }
-type call_analytics_job() :: #{binary() => any()}.

%% Example:
%% language_code_item() :: #{
%%   <<"DurationInSeconds">> => float(),
%%   <<"LanguageCode">> => list(any())
%% }
-type language_code_item() :: #{binary() => any()}.

%% Example:
%% list_vocabularies_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NameContains">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"StateEquals">> => list(any())
%% }
-type list_vocabularies_request() :: #{binary() => any()}.

%% Example:
%% transcript() :: #{
%%   <<"RedactedTranscriptFileUri">> => string(),
%%   <<"TranscriptFileUri">> => string()
%% }
-type transcript() :: #{binary() => any()}.

%% Example:
%% untag_resource_request() :: #{
%%   <<"TagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% call_analytics_job_details() :: #{
%%   <<"Skipped">> => list(call_analytics_skipped_feature())
%% }
-type call_analytics_job_details() :: #{binary() => any()}.

%% Example:
%% list_medical_scribe_jobs_response() :: #{
%%   <<"MedicalScribeJobSummaries">> => list(medical_scribe_job_summary()),
%%   <<"NextToken">> => string(),
%%   <<"Status">> => list(any())
%% }
-type list_medical_scribe_jobs_response() :: #{binary() => any()}.

%% Example:
%% get_call_analytics_job_request() :: #{

%% }
-type get_call_analytics_job_request() :: #{binary() => any()}.

%% Example:
%% update_vocabulary_request() :: #{
%%   <<"DataAccessRoleArn">> => string(),
%%   <<"LanguageCode">> := list(any()),
%%   <<"Phrases">> => list(string()),
%%   <<"VocabularyFileUri">> => string()
%% }
-type update_vocabulary_request() :: #{binary() => any()}.

%% Example:
%% transcript_filter() :: #{
%%   <<"AbsoluteTimeRange">> => absolute_time_range(),
%%   <<"Negate">> => boolean(),
%%   <<"ParticipantRole">> => list(any()),
%%   <<"RelativeTimeRange">> => relative_time_range(),
%%   <<"Targets">> => list(string()),
%%   <<"TranscriptFilterType">> => list(any())
%% }
-type transcript_filter() :: #{binary() => any()}.

%% Example:
%% create_vocabulary_request() :: #{
%%   <<"DataAccessRoleArn">> => string(),
%%   <<"LanguageCode">> := list(any()),
%%   <<"Phrases">> => list(string()),
%%   <<"Tags">> => list(tag()),
%%   <<"VocabularyFileUri">> => string()
%% }
-type create_vocabulary_request() :: #{binary() => any()}.

%% Example:
%% get_vocabulary_request() :: #{

%% }
-type get_vocabulary_request() :: #{binary() => any()}.

%% Example:
%% create_language_model_request() :: #{
%%   <<"BaseModelName">> := list(any()),
%%   <<"InputDataConfig">> := input_data_config(),
%%   <<"LanguageCode">> := list(any()),
%%   <<"Tags">> => list(tag())
%% }
-type create_language_model_request() :: #{binary() => any()}.

%% Example:
%% list_call_analytics_categories_response() :: #{
%%   <<"Categories">> => list(category_properties()),
%%   <<"NextToken">> => string()
%% }
-type list_call_analytics_categories_response() :: #{binary() => any()}.

%% Example:
%% start_call_analytics_job_response() :: #{
%%   <<"CallAnalyticsJob">> => call_analytics_job()
%% }
-type start_call_analytics_job_response() :: #{binary() => any()}.

%% Example:
%% update_medical_vocabulary_response() :: #{
%%   <<"LanguageCode">> => list(any()),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"VocabularyName">> => string(),
%%   <<"VocabularyState">> => list(any())
%% }
-type update_medical_vocabulary_response() :: #{binary() => any()}.

%% Example:
%% start_call_analytics_job_request() :: #{
%%   <<"ChannelDefinitions">> => list(channel_definition()),
%%   <<"DataAccessRoleArn">> => string(),
%%   <<"Media">> := media(),
%%   <<"OutputEncryptionKMSKeyId">> => string(),
%%   <<"OutputLocation">> => string(),
%%   <<"Settings">> => call_analytics_job_settings(),
%%   <<"Tags">> => list(tag())
%% }
-type start_call_analytics_job_request() :: #{binary() => any()}.

%% Example:
%% content_redaction() :: #{
%%   <<"PiiEntityTypes">> => list(list(any())()),
%%   <<"RedactionOutput">> => list(any()),
%%   <<"RedactionType">> => list(any())
%% }
-type content_redaction() :: #{binary() => any()}.

%% Example:
%% medical_transcript() :: #{
%%   <<"TranscriptFileUri">> => string()
%% }
-type medical_transcript() :: #{binary() => any()}.

%% Example:
%% medical_transcription_job() :: #{
%%   <<"CompletionTime">> => non_neg_integer(),
%%   <<"ContentIdentificationType">> => list(any()),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"FailureReason">> => string(),
%%   <<"LanguageCode">> => list(any()),
%%   <<"Media">> => media(),
%%   <<"MediaFormat">> => list(any()),
%%   <<"MediaSampleRateHertz">> => integer(),
%%   <<"MedicalTranscriptionJobName">> => string(),
%%   <<"Settings">> => medical_transcription_setting(),
%%   <<"Specialty">> => list(any()),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"Tags">> => list(tag()),
%%   <<"Transcript">> => medical_transcript(),
%%   <<"TranscriptionJobStatus">> => list(any()),
%%   <<"Type">> => list(any())
%% }
-type medical_transcription_job() :: #{binary() => any()}.

%% Example:
%% category_properties() :: #{
%%   <<"CategoryName">> => string(),
%%   <<"CreateTime">> => non_neg_integer(),
%%   <<"InputType">> => list(any()),
%%   <<"LastUpdateTime">> => non_neg_integer(),
%%   <<"Rules">> => list(list()),
%%   <<"Tags">> => list(tag())
%% }
-type category_properties() :: #{binary() => any()}.

%% Example:
%% get_transcription_job_request() :: #{

%% }
-type get_transcription_job_request() :: #{binary() => any()}.

%% Example:
%% delete_medical_scribe_job_request() :: #{

%% }
-type delete_medical_scribe_job_request() :: #{binary() => any()}.

%% Example:
%% vocabulary_filter_info() :: #{
%%   <<"LanguageCode">> => list(any()),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"VocabularyFilterName">> => string()
%% }
-type vocabulary_filter_info() :: #{binary() => any()}.

%% Example:
%% conflict_exception() :: #{
%%   <<"Message">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.

%% Example:
%% medical_scribe_settings() :: #{
%%   <<"ChannelIdentification">> => boolean(),
%%   <<"ClinicalNoteGenerationSettings">> => clinical_note_generation_settings(),
%%   <<"MaxSpeakerLabels">> => integer(),
%%   <<"ShowSpeakerLabels">> => boolean(),
%%   <<"VocabularyFilterMethod">> => list(any()),
%%   <<"VocabularyFilterName">> => string(),
%%   <<"VocabularyName">> => string()
%% }
-type medical_scribe_settings() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% delete_transcription_job_request() :: #{

%% }
-type delete_transcription_job_request() :: #{binary() => any()}.

%% Example:
%% delete_call_analytics_job_request() :: #{

%% }
-type delete_call_analytics_job_request() :: #{binary() => any()}.

%% Example:
%% sentiment_filter() :: #{
%%   <<"AbsoluteTimeRange">> => absolute_time_range(),
%%   <<"Negate">> => boolean(),
%%   <<"ParticipantRole">> => list(any()),
%%   <<"RelativeTimeRange">> => relative_time_range(),
%%   <<"Sentiments">> => list(list(any())())
%% }
-type sentiment_filter() :: #{binary() => any()}.

%% Example:
%% list_vocabulary_filters_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NameContains">> => string(),
%%   <<"NextToken">> => string()
%% }
-type list_vocabulary_filters_request() :: #{binary() => any()}.

%% Example:
%% channel_definition() :: #{
%%   <<"ChannelId">> => integer(),
%%   <<"ParticipantRole">> => list(any())
%% }
-type channel_definition() :: #{binary() => any()}.

%% Example:
%% medical_transcription_setting() :: #{
%%   <<"ChannelIdentification">> => boolean(),
%%   <<"MaxAlternatives">> => integer(),
%%   <<"MaxSpeakerLabels">> => integer(),
%%   <<"ShowAlternatives">> => boolean(),
%%   <<"ShowSpeakerLabels">> => boolean(),
%%   <<"VocabularyName">> => string()
%% }
-type medical_transcription_setting() :: #{binary() => any()}.

%% Example:
%% not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type not_found_exception() :: #{binary() => any()}.

%% Example:
%% call_analytics_skipped_feature() :: #{
%%   <<"Feature">> => list(any()),
%%   <<"Message">> => string(),
%%   <<"ReasonCode">> => list(any())
%% }
-type call_analytics_skipped_feature() :: #{binary() => any()}.

%% Example:
%% list_medical_vocabularies_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"Vocabularies">> => list(vocabulary_info())
%% }
-type list_medical_vocabularies_response() :: #{binary() => any()}.

%% Example:
%% settings() :: #{
%%   <<"ChannelIdentification">> => boolean(),
%%   <<"MaxAlternatives">> => integer(),
%%   <<"MaxSpeakerLabels">> => integer(),
%%   <<"ShowAlternatives">> => boolean(),
%%   <<"ShowSpeakerLabels">> => boolean(),
%%   <<"VocabularyFilterMethod">> => list(any()),
%%   <<"VocabularyFilterName">> => string(),
%%   <<"VocabularyName">> => string()
%% }
-type settings() :: #{binary() => any()}.

%% Example:
%% model_settings() :: #{
%%   <<"LanguageModelName">> => string()
%% }
-type model_settings() :: #{binary() => any()}.

%% Example:
%% list_transcription_jobs_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"TranscriptionJobSummaries">> => list(transcription_job_summary())
%% }
-type list_transcription_jobs_response() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"ResourceArn">> => string(),
%%   <<"Tags">> => list(tag())
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.

%% Example:
%% medical_scribe_job() :: #{
%%   <<"ChannelDefinitions">> => list(medical_scribe_channel_definition()),
%%   <<"CompletionTime">> => non_neg_integer(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"DataAccessRoleArn">> => string(),
%%   <<"FailureReason">> => string(),
%%   <<"LanguageCode">> => list(any()),
%%   <<"Media">> => media(),
%%   <<"MedicalScribeContextProvided">> => boolean(),
%%   <<"MedicalScribeJobName">> => string(),
%%   <<"MedicalScribeJobStatus">> => list(any()),
%%   <<"MedicalScribeOutput">> => medical_scribe_output(),
%%   <<"Settings">> => medical_scribe_settings(),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"Tags">> => list(tag())
%% }
-type medical_scribe_job() :: #{binary() => any()}.

%% Example:
%% medical_scribe_patient_context() :: #{
%%   <<"Pronouns">> => list(any())
%% }
-type medical_scribe_patient_context() :: #{binary() => any()}.

%% Example:
%% language_id_settings() :: #{
%%   <<"LanguageModelName">> => string(),
%%   <<"VocabularyFilterName">> => string(),
%%   <<"VocabularyName">> => string()
%% }
-type language_id_settings() :: #{binary() => any()}.

%% Example:
%% get_call_analytics_job_response() :: #{
%%   <<"CallAnalyticsJob">> => call_analytics_job()
%% }
-type get_call_analytics_job_response() :: #{binary() => any()}.

%% Example:
%% media() :: #{
%%   <<"MediaFileUri">> => string(),
%%   <<"RedactedMediaFileUri">> => string()
%% }
-type media() :: #{binary() => any()}.

%% Example:
%% update_vocabulary_filter_response() :: #{
%%   <<"LanguageCode">> => list(any()),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"VocabularyFilterName">> => string()
%% }
-type update_vocabulary_filter_response() :: #{binary() => any()}.

%% Example:
%% language_model() :: #{
%%   <<"BaseModelName">> => list(any()),
%%   <<"CreateTime">> => non_neg_integer(),
%%   <<"FailureReason">> => string(),
%%   <<"InputDataConfig">> => input_data_config(),
%%   <<"LanguageCode">> => list(any()),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"ModelName">> => string(),
%%   <<"ModelStatus">> => list(any()),
%%   <<"UpgradeAvailability">> => boolean()
%% }
-type language_model() :: #{binary() => any()}.

%% Example:
%% update_medical_vocabulary_request() :: #{
%%   <<"LanguageCode">> := list(any()),
%%   <<"VocabularyFileUri">> := string()
%% }
-type update_medical_vocabulary_request() :: #{binary() => any()}.

%% Example:
%% update_call_analytics_category_request() :: #{
%%   <<"InputType">> => list(any()),
%%   <<"Rules">> := list(list())
%% }
-type update_call_analytics_category_request() :: #{binary() => any()}.

%% Example:
%% start_medical_transcription_job_request() :: #{
%%   <<"ContentIdentificationType">> => list(any()),
%%   <<"KMSEncryptionContext">> => map(),
%%   <<"LanguageCode">> := list(any()),
%%   <<"Media">> := media(),
%%   <<"MediaFormat">> => list(any()),
%%   <<"MediaSampleRateHertz">> => integer(),
%%   <<"OutputBucketName">> := string(),
%%   <<"OutputEncryptionKMSKeyId">> => string(),
%%   <<"OutputKey">> => string(),
%%   <<"Settings">> => medical_transcription_setting(),
%%   <<"Specialty">> := list(any()),
%%   <<"Tags">> => list(tag()),
%%   <<"Type">> := list(any())
%% }
-type start_medical_transcription_job_request() :: #{binary() => any()}.

%% Example:
%% get_medical_scribe_job_request() :: #{

%% }
-type get_medical_scribe_job_request() :: #{binary() => any()}.

%% Example:
%% list_call_analytics_jobs_response() :: #{
%%   <<"CallAnalyticsJobSummaries">> => list(call_analytics_job_summary()),
%%   <<"NextToken">> => string(),
%%   <<"Status">> => list(any())
%% }
-type list_call_analytics_jobs_response() :: #{binary() => any()}.

%% Example:
%% start_transcription_job_response() :: #{
%%   <<"TranscriptionJob">> => transcription_job()
%% }
-type start_transcription_job_response() :: #{binary() => any()}.

%% Example:
%% subtitles() :: #{
%%   <<"Formats">> => list(list(any())()),
%%   <<"OutputStartIndex">> => integer()
%% }
-type subtitles() :: #{binary() => any()}.

%% Example:
%% list_language_models_response() :: #{
%%   <<"Models">> => list(language_model()),
%%   <<"NextToken">> => string()
%% }
-type list_language_models_response() :: #{binary() => any()}.

%% Example:
%% update_call_analytics_category_response() :: #{
%%   <<"CategoryProperties">> => category_properties()
%% }
-type update_call_analytics_category_response() :: #{binary() => any()}.

%% Example:
%% describe_language_model_response() :: #{
%%   <<"LanguageModel">> => language_model()
%% }
-type describe_language_model_response() :: #{binary() => any()}.

%% Example:
%% medical_scribe_output() :: #{
%%   <<"ClinicalDocumentUri">> => string(),
%%   <<"TranscriptFileUri">> => string()
%% }
-type medical_scribe_output() :: #{binary() => any()}.

%% Example:
%% get_medical_transcription_job_request() :: #{

%% }
-type get_medical_transcription_job_request() :: #{binary() => any()}.

%% Example:
%% delete_vocabulary_filter_request() :: #{

%% }
-type delete_vocabulary_filter_request() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{

%% }
-type tag_resource_response() :: #{binary() => any()}.

%% Example:
%% describe_language_model_request() :: #{

%% }
-type describe_language_model_request() :: #{binary() => any()}.

%% Example:
%% list_call_analytics_jobs_request() :: #{
%%   <<"JobNameContains">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"Status">> => list(any())
%% }
-type list_call_analytics_jobs_request() :: #{binary() => any()}.

%% Example:
%% delete_medical_vocabulary_request() :: #{

%% }
-type delete_medical_vocabulary_request() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{

%% }
-type list_tags_for_resource_request() :: #{binary() => any()}.

%% Example:
%% vocabulary_info() :: #{
%%   <<"LanguageCode">> => list(any()),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"VocabularyName">> => string(),
%%   <<"VocabularyState">> => list(any())
%% }
-type vocabulary_info() :: #{binary() => any()}.

%% Example:
%% call_analytics_job_settings() :: #{
%%   <<"ContentRedaction">> => content_redaction(),
%%   <<"LanguageIdSettings">> => map(),
%%   <<"LanguageModelName">> => string(),
%%   <<"LanguageOptions">> => list(list(any())()),
%%   <<"Summarization">> => summarization(),
%%   <<"VocabularyFilterMethod">> => list(any()),
%%   <<"VocabularyFilterName">> => string(),
%%   <<"VocabularyName">> => string()
%% }
-type call_analytics_job_settings() :: #{binary() => any()}.

%% Example:
%% delete_vocabulary_request() :: #{

%% }
-type delete_vocabulary_request() :: #{binary() => any()}.

%% Example:
%% create_medical_vocabulary_response() :: #{
%%   <<"FailureReason">> => string(),
%%   <<"LanguageCode">> => list(any()),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"VocabularyName">> => string(),
%%   <<"VocabularyState">> => list(any())
%% }
-type create_medical_vocabulary_response() :: #{binary() => any()}.

%% Example:
%% start_medical_scribe_job_request() :: #{
%%   <<"ChannelDefinitions">> => list(medical_scribe_channel_definition()),
%%   <<"DataAccessRoleArn">> := string(),
%%   <<"KMSEncryptionContext">> => map(),
%%   <<"Media">> := media(),
%%   <<"MedicalScribeContext">> => medical_scribe_context(),
%%   <<"OutputBucketName">> := string(),
%%   <<"OutputEncryptionKMSKeyId">> => string(),
%%   <<"Settings">> := medical_scribe_settings(),
%%   <<"Tags">> => list(tag())
%% }
-type start_medical_scribe_job_request() :: #{binary() => any()}.

%% Example:
%% update_vocabulary_response() :: #{
%%   <<"LanguageCode">> => list(any()),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"VocabularyName">> => string(),
%%   <<"VocabularyState">> => list(any())
%% }
-type update_vocabulary_response() :: #{binary() => any()}.

%% Example:
%% limit_exceeded_exception() :: #{
%%   <<"Message">> => string()
%% }
-type limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% get_medical_vocabulary_response() :: #{
%%   <<"DownloadUri">> => string(),
%%   <<"FailureReason">> => string(),
%%   <<"LanguageCode">> => list(any()),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"VocabularyName">> => string(),
%%   <<"VocabularyState">> => list(any())
%% }
-type get_medical_vocabulary_response() :: #{binary() => any()}.

%% Example:
%% get_call_analytics_category_request() :: #{

%% }
-type get_call_analytics_category_request() :: #{binary() => any()}.

%% Example:
%% bad_request_exception() :: #{
%%   <<"Message">> => string()
%% }
-type bad_request_exception() :: #{binary() => any()}.

%% Example:
%% list_medical_transcription_jobs_request() :: #{
%%   <<"JobNameContains">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"Status">> => list(any())
%% }
-type list_medical_transcription_jobs_request() :: #{binary() => any()}.

%% Example:
%% get_medical_vocabulary_request() :: #{

%% }
-type get_medical_vocabulary_request() :: #{binary() => any()}.

%% Example:
%% list_vocabulary_filters_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"VocabularyFilters">> => list(vocabulary_filter_info())
%% }
-type list_vocabulary_filters_response() :: #{binary() => any()}.

%% Example:
%% get_vocabulary_filter_request() :: #{

%% }
-type get_vocabulary_filter_request() :: #{binary() => any()}.

%% Example:
%% medical_scribe_context() :: #{
%%   <<"PatientContext">> => medical_scribe_patient_context()
%% }
-type medical_scribe_context() :: #{binary() => any()}.

%% Example:
%% interruption_filter() :: #{
%%   <<"AbsoluteTimeRange">> => absolute_time_range(),
%%   <<"Negate">> => boolean(),
%%   <<"ParticipantRole">> => list(any()),
%%   <<"RelativeTimeRange">> => relative_time_range(),
%%   <<"Threshold">> => float()
%% }
-type interruption_filter() :: #{binary() => any()}.

%% Example:
%% get_medical_transcription_job_response() :: #{
%%   <<"MedicalTranscriptionJob">> => medical_transcription_job()
%% }
-type get_medical_transcription_job_response() :: #{binary() => any()}.

%% Example:
%% get_vocabulary_response() :: #{
%%   <<"DownloadUri">> => string(),
%%   <<"FailureReason">> => string(),
%%   <<"LanguageCode">> => list(any()),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"VocabularyName">> => string(),
%%   <<"VocabularyState">> => list(any())
%% }
-type get_vocabulary_response() :: #{binary() => any()}.

%% Example:
%% delete_call_analytics_category_request() :: #{

%% }
-type delete_call_analytics_category_request() :: #{binary() => any()}.

%% Example:
%% get_vocabulary_filter_response() :: #{
%%   <<"DownloadUri">> => string(),
%%   <<"LanguageCode">> => list(any()),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"VocabularyFilterName">> => string()
%% }
-type get_vocabulary_filter_response() :: #{binary() => any()}.

%% Example:
%% create_medical_vocabulary_request() :: #{
%%   <<"LanguageCode">> := list(any()),
%%   <<"Tags">> => list(tag()),
%%   <<"VocabularyFileUri">> := string()
%% }
-type create_medical_vocabulary_request() :: #{binary() => any()}.

%% Example:
%% list_medical_scribe_jobs_request() :: #{
%%   <<"JobNameContains">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"Status">> => list(any())
%% }
-type list_medical_scribe_jobs_request() :: #{binary() => any()}.

%% Example:
%% relative_time_range() :: #{
%%   <<"EndPercentage">> => integer(),
%%   <<"First">> => integer(),
%%   <<"Last">> => integer(),
%%   <<"StartPercentage">> => integer()
%% }
-type relative_time_range() :: #{binary() => any()}.

%% Example:
%% medical_scribe_channel_definition() :: #{
%%   <<"ChannelId">> => integer(),
%%   <<"ParticipantRole">> => list(any())
%% }
-type medical_scribe_channel_definition() :: #{binary() => any()}.

%% Example:
%% start_transcription_job_request() :: #{
%%   <<"ContentRedaction">> => content_redaction(),
%%   <<"IdentifyLanguage">> => boolean(),
%%   <<"IdentifyMultipleLanguages">> => boolean(),
%%   <<"JobExecutionSettings">> => job_execution_settings(),
%%   <<"KMSEncryptionContext">> => map(),
%%   <<"LanguageCode">> => list(any()),
%%   <<"LanguageIdSettings">> => map(),
%%   <<"LanguageOptions">> => list(list(any())()),
%%   <<"Media">> := media(),
%%   <<"MediaFormat">> => list(any()),
%%   <<"MediaSampleRateHertz">> => integer(),
%%   <<"ModelSettings">> => model_settings(),
%%   <<"OutputBucketName">> => string(),
%%   <<"OutputEncryptionKMSKeyId">> => string(),
%%   <<"OutputKey">> => string(),
%%   <<"Settings">> => settings(),
%%   <<"Subtitles">> => subtitles(),
%%   <<"Tags">> => list(tag()),
%%   <<"ToxicityDetection">> => list(toxicity_detection_settings())
%% }
-type start_transcription_job_request() :: #{binary() => any()}.

%% Example:
%% get_call_analytics_category_response() :: #{
%%   <<"CategoryProperties">> => category_properties()
%% }
-type get_call_analytics_category_response() :: #{binary() => any()}.

%% Example:
%% create_call_analytics_category_request() :: #{
%%   <<"InputType">> => list(any()),
%%   <<"Rules">> := list(list()),
%%   <<"Tags">> => list(tag())
%% }
-type create_call_analytics_category_request() :: #{binary() => any()}.

%% Example:
%% start_medical_scribe_job_response() :: #{
%%   <<"MedicalScribeJob">> => medical_scribe_job()
%% }
-type start_medical_scribe_job_response() :: #{binary() => any()}.

%% Example:
%% list_call_analytics_categories_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_call_analytics_categories_request() :: #{binary() => any()}.

%% Example:
%% create_call_analytics_category_response() :: #{
%%   <<"CategoryProperties">> => category_properties()
%% }
-type create_call_analytics_category_response() :: #{binary() => any()}.

%% Example:
%% subtitles_output() :: #{
%%   <<"Formats">> => list(list(any())()),
%%   <<"OutputStartIndex">> => integer(),
%%   <<"SubtitleFileUris">> => list(string())
%% }
-type subtitles_output() :: #{binary() => any()}.

%% Example:
%% get_medical_scribe_job_response() :: #{
%%   <<"MedicalScribeJob">> => medical_scribe_job()
%% }
-type get_medical_scribe_job_response() :: #{binary() => any()}.

-type create_call_analytics_category_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    conflict_exception() | 
    internal_failure_exception().

-type create_language_model_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    conflict_exception() | 
    internal_failure_exception().

-type create_medical_vocabulary_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    conflict_exception() | 
    internal_failure_exception().

-type create_vocabulary_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    conflict_exception() | 
    internal_failure_exception().

-type create_vocabulary_filter_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    conflict_exception() | 
    internal_failure_exception().

-type delete_call_analytics_category_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    internal_failure_exception().

-type delete_call_analytics_job_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    internal_failure_exception().

-type delete_language_model_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    internal_failure_exception().

-type delete_medical_scribe_job_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    internal_failure_exception().

-type delete_medical_transcription_job_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    internal_failure_exception().

-type delete_medical_vocabulary_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    internal_failure_exception().

-type delete_transcription_job_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    internal_failure_exception().

-type delete_vocabulary_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    internal_failure_exception().

-type delete_vocabulary_filter_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    internal_failure_exception().

-type describe_language_model_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    internal_failure_exception().

-type get_call_analytics_category_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    internal_failure_exception().

-type get_call_analytics_job_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    internal_failure_exception().

-type get_medical_scribe_job_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    internal_failure_exception().

-type get_medical_transcription_job_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    internal_failure_exception().

-type get_medical_vocabulary_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    internal_failure_exception().

-type get_transcription_job_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    internal_failure_exception().

-type get_vocabulary_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    internal_failure_exception().

-type get_vocabulary_filter_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    internal_failure_exception().

-type list_call_analytics_categories_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    internal_failure_exception().

-type list_call_analytics_jobs_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    internal_failure_exception().

-type list_language_models_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    internal_failure_exception().

-type list_medical_scribe_jobs_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    internal_failure_exception().

-type list_medical_transcription_jobs_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    internal_failure_exception().

-type list_medical_vocabularies_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    internal_failure_exception().

-type list_tags_for_resource_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    internal_failure_exception().

-type list_transcription_jobs_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    internal_failure_exception().

-type list_vocabularies_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    internal_failure_exception().

-type list_vocabulary_filters_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    internal_failure_exception().

-type start_call_analytics_job_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    conflict_exception() | 
    internal_failure_exception().

-type start_medical_scribe_job_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    conflict_exception() | 
    internal_failure_exception().

-type start_medical_transcription_job_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    conflict_exception() | 
    internal_failure_exception().

-type start_transcription_job_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    conflict_exception() | 
    internal_failure_exception().

-type tag_resource_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    internal_failure_exception().

-type untag_resource_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    internal_failure_exception().

-type update_call_analytics_category_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    internal_failure_exception().

-type update_medical_vocabulary_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    internal_failure_exception().

-type update_vocabulary_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    internal_failure_exception().

-type update_vocabulary_filter_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    internal_failure_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a new Call Analytics category.
%%
%% All categories are automatically applied to your Call Analytics
%% transcriptions. Note that in
%% order to apply categories to your transcriptions, you must create them
%% before submitting your
%% transcription request, as categories cannot be applied retroactively.
%%
%% When creating a new category, you can use the `InputType' parameter to
%% label the category as a `POST_CALL' or a `REAL_TIME' category.
%% `POST_CALL' categories can only be applied to post-call transcriptions
%% and
%% `REAL_TIME' categories can only be applied to real-time
%% transcriptions. If you
%% do not include `InputType', your category is created as a
%% `POST_CALL' category by default.
%%
%% Call Analytics categories are composed of rules. For each category, you
%% must create
%% between 1 and 20 rules. Rules can include these parameters: , , , and .
%%
%% To update an existing category, see .
%%
%% To learn more about Call Analytics categories, see Creating categories for
%% post-call
%% transcriptions:
%% https://docs.aws.amazon.com/transcribe/latest/dg/tca-categories-batch.html
%% and Creating categories for
%% real-time transcriptions:
%% https://docs.aws.amazon.com/transcribe/latest/dg/tca-categories-stream.html.
-spec create_call_analytics_category(aws_client:aws_client(), create_call_analytics_category_request()) ->
    {ok, create_call_analytics_category_response(), tuple()} |
    {error, any()} |
    {error, create_call_analytics_category_errors(), tuple()}.
create_call_analytics_category(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_call_analytics_category(Client, Input, []).

-spec create_call_analytics_category(aws_client:aws_client(), create_call_analytics_category_request(), proplists:proplist()) ->
    {ok, create_call_analytics_category_response(), tuple()} |
    {error, any()} |
    {error, create_call_analytics_category_errors(), tuple()}.
create_call_analytics_category(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateCallAnalyticsCategory">>, Input, Options).

%% @doc Creates a new custom language model.
%%
%% When creating a new custom language model, you must specify:
%%
%% If you want a Wideband (audio sample rates over 16,000 Hz) or Narrowband
%% (audio sample rates under 16,000 Hz) base model
%%
%% The location of your training and tuning files (this must be an Amazon S3
%% URI)
%%
%% The language of your model
%%
%% A unique name for your model
-spec create_language_model(aws_client:aws_client(), create_language_model_request()) ->
    {ok, create_language_model_response(), tuple()} |
    {error, any()} |
    {error, create_language_model_errors(), tuple()}.
create_language_model(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_language_model(Client, Input, []).

-spec create_language_model(aws_client:aws_client(), create_language_model_request(), proplists:proplist()) ->
    {ok, create_language_model_response(), tuple()} |
    {error, any()} |
    {error, create_language_model_errors(), tuple()}.
create_language_model(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateLanguageModel">>, Input, Options).

%% @doc Creates a new custom medical vocabulary.
%%
%% Before creating a new custom medical vocabulary, you must first upload a
%% text file
%% that contains your vocabulary table into an Amazon S3 bucket.
%% Note that this differs from , where you can
%% include a list of terms within your request using the `Phrases' flag;
%% `CreateMedicalVocabulary' does not support the `Phrases'
%% flag and only accepts vocabularies in table format.
%%
%% Each language has a character set that contains all allowed characters for
%% that
%% specific language. If you use unsupported characters, your custom
%% vocabulary request
%% fails. Refer to Character Sets for Custom Vocabularies:
%% https://docs.aws.amazon.com/transcribe/latest/dg/charsets.html to get the
%% character set for your
%% language.
%%
%% For more information, see Custom
%% vocabularies:
%% https://docs.aws.amazon.com/transcribe/latest/dg/custom-vocabulary.html.
-spec create_medical_vocabulary(aws_client:aws_client(), create_medical_vocabulary_request()) ->
    {ok, create_medical_vocabulary_response(), tuple()} |
    {error, any()} |
    {error, create_medical_vocabulary_errors(), tuple()}.
create_medical_vocabulary(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_medical_vocabulary(Client, Input, []).

-spec create_medical_vocabulary(aws_client:aws_client(), create_medical_vocabulary_request(), proplists:proplist()) ->
    {ok, create_medical_vocabulary_response(), tuple()} |
    {error, any()} |
    {error, create_medical_vocabulary_errors(), tuple()}.
create_medical_vocabulary(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateMedicalVocabulary">>, Input, Options).

%% @doc Creates a new custom vocabulary.
%%
%% When creating a new custom vocabulary, you can either upload a text file
%% that contains
%% your new entries, phrases, and terms into an Amazon S3 bucket and include
%% the
%% URI in your request. Or you can include a list of terms directly in your
%% request using
%% the `Phrases' flag.
%%
%% Each language has a character set that contains all allowed characters for
%% that
%% specific language. If you use unsupported characters, your custom
%% vocabulary request
%% fails. Refer to Character Sets for Custom Vocabularies:
%% https://docs.aws.amazon.com/transcribe/latest/dg/charsets.html to get the
%% character set for your
%% language.
%%
%% For more information, see Custom
%% vocabularies:
%% https://docs.aws.amazon.com/transcribe/latest/dg/custom-vocabulary.html.
-spec create_vocabulary(aws_client:aws_client(), create_vocabulary_request()) ->
    {ok, create_vocabulary_response(), tuple()} |
    {error, any()} |
    {error, create_vocabulary_errors(), tuple()}.
create_vocabulary(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_vocabulary(Client, Input, []).

-spec create_vocabulary(aws_client:aws_client(), create_vocabulary_request(), proplists:proplist()) ->
    {ok, create_vocabulary_response(), tuple()} |
    {error, any()} |
    {error, create_vocabulary_errors(), tuple()}.
create_vocabulary(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateVocabulary">>, Input, Options).

%% @doc Creates a new custom vocabulary filter.
%%
%% You can use custom vocabulary filters to mask, delete, or flag specific
%% words from
%% your transcript. Custom vocabulary filters are commonly used to mask
%% profanity in
%% transcripts.
%%
%% Each language has a character set that contains all allowed characters for
%% that
%% specific language. If you use unsupported characters, your custom
%% vocabulary filter
%% request fails. Refer to Character Sets for Custom
%% Vocabularies:
%% https://docs.aws.amazon.com/transcribe/latest/dg/charsets.html to get the
%% character set for your language.
%%
%% For more information, see Vocabulary
%% filtering:
%% https://docs.aws.amazon.com/transcribe/latest/dg/vocabulary-filtering.html.
-spec create_vocabulary_filter(aws_client:aws_client(), create_vocabulary_filter_request()) ->
    {ok, create_vocabulary_filter_response(), tuple()} |
    {error, any()} |
    {error, create_vocabulary_filter_errors(), tuple()}.
create_vocabulary_filter(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_vocabulary_filter(Client, Input, []).

-spec create_vocabulary_filter(aws_client:aws_client(), create_vocabulary_filter_request(), proplists:proplist()) ->
    {ok, create_vocabulary_filter_response(), tuple()} |
    {error, any()} |
    {error, create_vocabulary_filter_errors(), tuple()}.
create_vocabulary_filter(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateVocabularyFilter">>, Input, Options).

%% @doc Deletes a Call Analytics category.
%%
%% To use this operation, specify the name of the
%% category you want to delete using `CategoryName'. Category names are
%% case
%% sensitive.
-spec delete_call_analytics_category(aws_client:aws_client(), delete_call_analytics_category_request()) ->
    {ok, delete_call_analytics_category_response(), tuple()} |
    {error, any()} |
    {error, delete_call_analytics_category_errors(), tuple()}.
delete_call_analytics_category(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_call_analytics_category(Client, Input, []).

-spec delete_call_analytics_category(aws_client:aws_client(), delete_call_analytics_category_request(), proplists:proplist()) ->
    {ok, delete_call_analytics_category_response(), tuple()} |
    {error, any()} |
    {error, delete_call_analytics_category_errors(), tuple()}.
delete_call_analytics_category(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteCallAnalyticsCategory">>, Input, Options).

%% @doc Deletes a Call Analytics job.
%%
%% To use this operation, specify the name of the job you
%% want to delete using `CallAnalyticsJobName'. Job names are case
%% sensitive.
-spec delete_call_analytics_job(aws_client:aws_client(), delete_call_analytics_job_request()) ->
    {ok, delete_call_analytics_job_response(), tuple()} |
    {error, any()} |
    {error, delete_call_analytics_job_errors(), tuple()}.
delete_call_analytics_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_call_analytics_job(Client, Input, []).

-spec delete_call_analytics_job(aws_client:aws_client(), delete_call_analytics_job_request(), proplists:proplist()) ->
    {ok, delete_call_analytics_job_response(), tuple()} |
    {error, any()} |
    {error, delete_call_analytics_job_errors(), tuple()}.
delete_call_analytics_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteCallAnalyticsJob">>, Input, Options).

%% @doc Deletes a custom language model.
%%
%% To use this operation, specify the name of the
%% language model you want to delete using `ModelName'. custom language
%% model
%% names are case sensitive.
-spec delete_language_model(aws_client:aws_client(), delete_language_model_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_language_model_errors(), tuple()}.
delete_language_model(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_language_model(Client, Input, []).

-spec delete_language_model(aws_client:aws_client(), delete_language_model_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_language_model_errors(), tuple()}.
delete_language_model(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteLanguageModel">>, Input, Options).

%% @doc Deletes a Medical Scribe job.
%%
%% To use this operation, specify the name of the
%% job you want to delete using `MedicalScribeJobName'. Job names are
%% case sensitive.
-spec delete_medical_scribe_job(aws_client:aws_client(), delete_medical_scribe_job_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_medical_scribe_job_errors(), tuple()}.
delete_medical_scribe_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_medical_scribe_job(Client, Input, []).

-spec delete_medical_scribe_job(aws_client:aws_client(), delete_medical_scribe_job_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_medical_scribe_job_errors(), tuple()}.
delete_medical_scribe_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteMedicalScribeJob">>, Input, Options).

%% @doc Deletes a medical transcription job.
%%
%% To use this operation, specify the name of the
%% job you want to delete using `MedicalTranscriptionJobName'. Job names
%% are
%% case sensitive.
-spec delete_medical_transcription_job(aws_client:aws_client(), delete_medical_transcription_job_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_medical_transcription_job_errors(), tuple()}.
delete_medical_transcription_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_medical_transcription_job(Client, Input, []).

-spec delete_medical_transcription_job(aws_client:aws_client(), delete_medical_transcription_job_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_medical_transcription_job_errors(), tuple()}.
delete_medical_transcription_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteMedicalTranscriptionJob">>, Input, Options).

%% @doc Deletes a custom medical vocabulary.
%%
%% To use this operation, specify the name of the
%% custom vocabulary you want to delete using `VocabularyName'. Custom
%% vocabulary names are case sensitive.
-spec delete_medical_vocabulary(aws_client:aws_client(), delete_medical_vocabulary_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_medical_vocabulary_errors(), tuple()}.
delete_medical_vocabulary(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_medical_vocabulary(Client, Input, []).

-spec delete_medical_vocabulary(aws_client:aws_client(), delete_medical_vocabulary_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_medical_vocabulary_errors(), tuple()}.
delete_medical_vocabulary(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteMedicalVocabulary">>, Input, Options).

%% @doc Deletes a transcription job.
%%
%% To use this operation, specify the name of the job you
%% want to delete using `TranscriptionJobName'. Job names are case
%% sensitive.
-spec delete_transcription_job(aws_client:aws_client(), delete_transcription_job_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_transcription_job_errors(), tuple()}.
delete_transcription_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_transcription_job(Client, Input, []).

-spec delete_transcription_job(aws_client:aws_client(), delete_transcription_job_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_transcription_job_errors(), tuple()}.
delete_transcription_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteTranscriptionJob">>, Input, Options).

%% @doc Deletes a custom vocabulary.
%%
%% To use this operation, specify the name of the custom
%% vocabulary you want to delete using `VocabularyName'. Custom
%% vocabulary names
%% are case sensitive.
-spec delete_vocabulary(aws_client:aws_client(), delete_vocabulary_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_vocabulary_errors(), tuple()}.
delete_vocabulary(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_vocabulary(Client, Input, []).

-spec delete_vocabulary(aws_client:aws_client(), delete_vocabulary_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_vocabulary_errors(), tuple()}.
delete_vocabulary(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteVocabulary">>, Input, Options).

%% @doc Deletes a custom vocabulary filter.
%%
%% To use this operation, specify the name of the
%% custom vocabulary filter you want to delete using
%% `VocabularyFilterName'.
%% Custom vocabulary filter names are case sensitive.
-spec delete_vocabulary_filter(aws_client:aws_client(), delete_vocabulary_filter_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_vocabulary_filter_errors(), tuple()}.
delete_vocabulary_filter(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_vocabulary_filter(Client, Input, []).

-spec delete_vocabulary_filter(aws_client:aws_client(), delete_vocabulary_filter_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_vocabulary_filter_errors(), tuple()}.
delete_vocabulary_filter(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteVocabularyFilter">>, Input, Options).

%% @doc Provides information about the specified custom language model.
%%
%% This operation also shows if the base language model that you used to
%% create your
%% custom language model has been updated. If Amazon Transcribe has updated
%% the base
%% model, you can create a new custom language model using the updated base
%% model.
%%
%% If you tried to create a new custom language model and the request
%% wasn't successful,
%% you can use `DescribeLanguageModel' to help identify the reason for
%% this
%% failure.
-spec describe_language_model(aws_client:aws_client(), describe_language_model_request()) ->
    {ok, describe_language_model_response(), tuple()} |
    {error, any()} |
    {error, describe_language_model_errors(), tuple()}.
describe_language_model(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_language_model(Client, Input, []).

-spec describe_language_model(aws_client:aws_client(), describe_language_model_request(), proplists:proplist()) ->
    {ok, describe_language_model_response(), tuple()} |
    {error, any()} |
    {error, describe_language_model_errors(), tuple()}.
describe_language_model(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeLanguageModel">>, Input, Options).

%% @doc Provides information about the specified Call Analytics category.
%%
%% To get a list of your Call Analytics categories, use the operation.
-spec get_call_analytics_category(aws_client:aws_client(), get_call_analytics_category_request()) ->
    {ok, get_call_analytics_category_response(), tuple()} |
    {error, any()} |
    {error, get_call_analytics_category_errors(), tuple()}.
get_call_analytics_category(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_call_analytics_category(Client, Input, []).

-spec get_call_analytics_category(aws_client:aws_client(), get_call_analytics_category_request(), proplists:proplist()) ->
    {ok, get_call_analytics_category_response(), tuple()} |
    {error, any()} |
    {error, get_call_analytics_category_errors(), tuple()}.
get_call_analytics_category(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetCallAnalyticsCategory">>, Input, Options).

%% @doc Provides information about the specified Call Analytics job.
%%
%% To view the job's status, refer to `CallAnalyticsJobStatus'. If
%% the status
%% is `COMPLETED', the job is finished. You can find your completed
%% transcript
%% at the URI specified in `TranscriptFileUri'. If the status is
%% `FAILED', `FailureReason' provides details on why your
%% transcription job failed.
%%
%% If you enabled personally identifiable information (PII) redaction, the
%% redacted
%% transcript appears at the location specified in
%% `RedactedTranscriptFileUri'.
%%
%% If you chose to redact the audio in your media file, you can find your
%% redacted media
%% file at the location specified in `RedactedMediaFileUri'.
%%
%% To get a list of your Call Analytics jobs, use the operation.
-spec get_call_analytics_job(aws_client:aws_client(), get_call_analytics_job_request()) ->
    {ok, get_call_analytics_job_response(), tuple()} |
    {error, any()} |
    {error, get_call_analytics_job_errors(), tuple()}.
get_call_analytics_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_call_analytics_job(Client, Input, []).

-spec get_call_analytics_job(aws_client:aws_client(), get_call_analytics_job_request(), proplists:proplist()) ->
    {ok, get_call_analytics_job_response(), tuple()} |
    {error, any()} |
    {error, get_call_analytics_job_errors(), tuple()}.
get_call_analytics_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetCallAnalyticsJob">>, Input, Options).

%% @doc Provides information about the specified Medical Scribe job.
%%
%% To view the status of the specified medical transcription job, check the
%% `MedicalScribeJobStatus' field. If the status is `COMPLETED',
%% the job is finished. You can find the results at the location specified in
%% `MedicalScribeOutput'.
%% If the status is `FAILED', `FailureReason' provides details on why
%% your Medical Scribe job
%% failed.
%%
%% To get a list of your Medical Scribe jobs, use the operation.
-spec get_medical_scribe_job(aws_client:aws_client(), get_medical_scribe_job_request()) ->
    {ok, get_medical_scribe_job_response(), tuple()} |
    {error, any()} |
    {error, get_medical_scribe_job_errors(), tuple()}.
get_medical_scribe_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_medical_scribe_job(Client, Input, []).

-spec get_medical_scribe_job(aws_client:aws_client(), get_medical_scribe_job_request(), proplists:proplist()) ->
    {ok, get_medical_scribe_job_response(), tuple()} |
    {error, any()} |
    {error, get_medical_scribe_job_errors(), tuple()}.
get_medical_scribe_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetMedicalScribeJob">>, Input, Options).

%% @doc Provides information about the specified medical transcription job.
%%
%% To view the status of the specified medical transcription job, check the
%% `TranscriptionJobStatus' field. If the status is `COMPLETED',
%% the job is finished. You can find the results at the location specified in
%% `TranscriptFileUri'. If the status is `FAILED',
%% `FailureReason' provides details on why your transcription job
%% failed.
%%
%% To get a list of your medical transcription jobs, use the operation.
-spec get_medical_transcription_job(aws_client:aws_client(), get_medical_transcription_job_request()) ->
    {ok, get_medical_transcription_job_response(), tuple()} |
    {error, any()} |
    {error, get_medical_transcription_job_errors(), tuple()}.
get_medical_transcription_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_medical_transcription_job(Client, Input, []).

-spec get_medical_transcription_job(aws_client:aws_client(), get_medical_transcription_job_request(), proplists:proplist()) ->
    {ok, get_medical_transcription_job_response(), tuple()} |
    {error, any()} |
    {error, get_medical_transcription_job_errors(), tuple()}.
get_medical_transcription_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetMedicalTranscriptionJob">>, Input, Options).

%% @doc Provides information about the specified custom medical vocabulary.
%%
%% To view the status of the specified custom medical vocabulary, check the
%% `VocabularyState' field. If the status is `READY', your custom
%% vocabulary is available to use. If the status is `FAILED',
%% `FailureReason' provides details on why your vocabulary failed.
%%
%% To get a list of your custom medical vocabularies, use the operation.
-spec get_medical_vocabulary(aws_client:aws_client(), get_medical_vocabulary_request()) ->
    {ok, get_medical_vocabulary_response(), tuple()} |
    {error, any()} |
    {error, get_medical_vocabulary_errors(), tuple()}.
get_medical_vocabulary(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_medical_vocabulary(Client, Input, []).

-spec get_medical_vocabulary(aws_client:aws_client(), get_medical_vocabulary_request(), proplists:proplist()) ->
    {ok, get_medical_vocabulary_response(), tuple()} |
    {error, any()} |
    {error, get_medical_vocabulary_errors(), tuple()}.
get_medical_vocabulary(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetMedicalVocabulary">>, Input, Options).

%% @doc Provides information about the specified transcription job.
%%
%% To view the status of the specified transcription job, check the
%% `TranscriptionJobStatus' field. If the status is `COMPLETED',
%% the job is finished. You can find the results at the location specified in
%% `TranscriptFileUri'. If the status is `FAILED',
%% `FailureReason' provides details on why your transcription job
%% failed.
%%
%% If you enabled content redaction, the redacted transcript can be found at
%% the location
%% specified in `RedactedTranscriptFileUri'.
%%
%% To get a list of your transcription jobs, use the operation.
-spec get_transcription_job(aws_client:aws_client(), get_transcription_job_request()) ->
    {ok, get_transcription_job_response(), tuple()} |
    {error, any()} |
    {error, get_transcription_job_errors(), tuple()}.
get_transcription_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_transcription_job(Client, Input, []).

-spec get_transcription_job(aws_client:aws_client(), get_transcription_job_request(), proplists:proplist()) ->
    {ok, get_transcription_job_response(), tuple()} |
    {error, any()} |
    {error, get_transcription_job_errors(), tuple()}.
get_transcription_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetTranscriptionJob">>, Input, Options).

%% @doc Provides information about the specified custom vocabulary.
%%
%% To view the status of the specified custom vocabulary, check the
%% `VocabularyState' field. If the status is `READY', your custom
%% vocabulary is available to use. If the status is `FAILED',
%% `FailureReason' provides details on why your custom vocabulary
%% failed.
%%
%% To get a list of your custom vocabularies, use the operation.
-spec get_vocabulary(aws_client:aws_client(), get_vocabulary_request()) ->
    {ok, get_vocabulary_response(), tuple()} |
    {error, any()} |
    {error, get_vocabulary_errors(), tuple()}.
get_vocabulary(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_vocabulary(Client, Input, []).

-spec get_vocabulary(aws_client:aws_client(), get_vocabulary_request(), proplists:proplist()) ->
    {ok, get_vocabulary_response(), tuple()} |
    {error, any()} |
    {error, get_vocabulary_errors(), tuple()}.
get_vocabulary(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetVocabulary">>, Input, Options).

%% @doc Provides information about the specified custom vocabulary filter.
%%
%% To get a list of your custom vocabulary filters, use the operation.
-spec get_vocabulary_filter(aws_client:aws_client(), get_vocabulary_filter_request()) ->
    {ok, get_vocabulary_filter_response(), tuple()} |
    {error, any()} |
    {error, get_vocabulary_filter_errors(), tuple()}.
get_vocabulary_filter(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_vocabulary_filter(Client, Input, []).

-spec get_vocabulary_filter(aws_client:aws_client(), get_vocabulary_filter_request(), proplists:proplist()) ->
    {ok, get_vocabulary_filter_response(), tuple()} |
    {error, any()} |
    {error, get_vocabulary_filter_errors(), tuple()}.
get_vocabulary_filter(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetVocabularyFilter">>, Input, Options).

%% @doc Provides a list of Call Analytics categories, including all rules
%% that make up each
%% category.
%%
%% To get detailed information about a specific Call Analytics category, use
%% the operation.
-spec list_call_analytics_categories(aws_client:aws_client(), list_call_analytics_categories_request()) ->
    {ok, list_call_analytics_categories_response(), tuple()} |
    {error, any()} |
    {error, list_call_analytics_categories_errors(), tuple()}.
list_call_analytics_categories(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_call_analytics_categories(Client, Input, []).

-spec list_call_analytics_categories(aws_client:aws_client(), list_call_analytics_categories_request(), proplists:proplist()) ->
    {ok, list_call_analytics_categories_response(), tuple()} |
    {error, any()} |
    {error, list_call_analytics_categories_errors(), tuple()}.
list_call_analytics_categories(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListCallAnalyticsCategories">>, Input, Options).

%% @doc Provides a list of Call Analytics jobs that match the specified
%% criteria.
%%
%% If no
%% criteria are specified, all Call Analytics jobs are returned.
%%
%% To get detailed information about a specific Call Analytics job, use the
%% operation.
-spec list_call_analytics_jobs(aws_client:aws_client(), list_call_analytics_jobs_request()) ->
    {ok, list_call_analytics_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_call_analytics_jobs_errors(), tuple()}.
list_call_analytics_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_call_analytics_jobs(Client, Input, []).

-spec list_call_analytics_jobs(aws_client:aws_client(), list_call_analytics_jobs_request(), proplists:proplist()) ->
    {ok, list_call_analytics_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_call_analytics_jobs_errors(), tuple()}.
list_call_analytics_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListCallAnalyticsJobs">>, Input, Options).

%% @doc Provides a list of custom language models that match the specified
%% criteria.
%%
%% If no
%% criteria are specified, all custom language models are returned.
%%
%% To get detailed information about a specific custom language model, use
%% the operation.
-spec list_language_models(aws_client:aws_client(), list_language_models_request()) ->
    {ok, list_language_models_response(), tuple()} |
    {error, any()} |
    {error, list_language_models_errors(), tuple()}.
list_language_models(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_language_models(Client, Input, []).

-spec list_language_models(aws_client:aws_client(), list_language_models_request(), proplists:proplist()) ->
    {ok, list_language_models_response(), tuple()} |
    {error, any()} |
    {error, list_language_models_errors(), tuple()}.
list_language_models(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListLanguageModels">>, Input, Options).

%% @doc Provides a list of Medical Scribe jobs that match the specified
%% criteria.
%%
%% If no
%% criteria are specified, all Medical Scribe jobs are returned.
%%
%% To get detailed information about a specific Medical Scribe job, use the
%% operation.
-spec list_medical_scribe_jobs(aws_client:aws_client(), list_medical_scribe_jobs_request()) ->
    {ok, list_medical_scribe_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_medical_scribe_jobs_errors(), tuple()}.
list_medical_scribe_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_medical_scribe_jobs(Client, Input, []).

-spec list_medical_scribe_jobs(aws_client:aws_client(), list_medical_scribe_jobs_request(), proplists:proplist()) ->
    {ok, list_medical_scribe_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_medical_scribe_jobs_errors(), tuple()}.
list_medical_scribe_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListMedicalScribeJobs">>, Input, Options).

%% @doc Provides a list of medical transcription jobs that match the
%% specified criteria.
%%
%% If no
%% criteria are specified, all medical transcription jobs are returned.
%%
%% To get detailed information about a specific medical transcription job,
%% use the operation.
-spec list_medical_transcription_jobs(aws_client:aws_client(), list_medical_transcription_jobs_request()) ->
    {ok, list_medical_transcription_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_medical_transcription_jobs_errors(), tuple()}.
list_medical_transcription_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_medical_transcription_jobs(Client, Input, []).

-spec list_medical_transcription_jobs(aws_client:aws_client(), list_medical_transcription_jobs_request(), proplists:proplist()) ->
    {ok, list_medical_transcription_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_medical_transcription_jobs_errors(), tuple()}.
list_medical_transcription_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListMedicalTranscriptionJobs">>, Input, Options).

%% @doc Provides a list of custom medical vocabularies that match the
%% specified criteria.
%%
%% If
%% no criteria are specified, all custom medical vocabularies are returned.
%%
%% To get detailed information about a specific custom medical vocabulary,
%% use the operation.
-spec list_medical_vocabularies(aws_client:aws_client(), list_medical_vocabularies_request()) ->
    {ok, list_medical_vocabularies_response(), tuple()} |
    {error, any()} |
    {error, list_medical_vocabularies_errors(), tuple()}.
list_medical_vocabularies(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_medical_vocabularies(Client, Input, []).

-spec list_medical_vocabularies(aws_client:aws_client(), list_medical_vocabularies_request(), proplists:proplist()) ->
    {ok, list_medical_vocabularies_response(), tuple()} |
    {error, any()} |
    {error, list_medical_vocabularies_errors(), tuple()}.
list_medical_vocabularies(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListMedicalVocabularies">>, Input, Options).

%% @doc Lists all tags associated with the specified transcription job,
%% vocabulary, model, or
%% resource.
%%
%% To learn more about using tags with Amazon Transcribe, refer to Tagging
%% resources: https://docs.aws.amazon.com/transcribe/latest/dg/tagging.html.
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

%% @doc Provides a list of transcription jobs that match the specified
%% criteria.
%%
%% If no
%% criteria are specified, all transcription jobs are returned.
%%
%% To get detailed information about a specific transcription job, use the
%% operation.
-spec list_transcription_jobs(aws_client:aws_client(), list_transcription_jobs_request()) ->
    {ok, list_transcription_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_transcription_jobs_errors(), tuple()}.
list_transcription_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_transcription_jobs(Client, Input, []).

-spec list_transcription_jobs(aws_client:aws_client(), list_transcription_jobs_request(), proplists:proplist()) ->
    {ok, list_transcription_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_transcription_jobs_errors(), tuple()}.
list_transcription_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTranscriptionJobs">>, Input, Options).

%% @doc Provides a list of custom vocabularies that match the specified
%% criteria.
%%
%% If no
%% criteria are specified, all custom vocabularies are returned.
%%
%% To get detailed information about a specific custom vocabulary, use the
%% operation.
-spec list_vocabularies(aws_client:aws_client(), list_vocabularies_request()) ->
    {ok, list_vocabularies_response(), tuple()} |
    {error, any()} |
    {error, list_vocabularies_errors(), tuple()}.
list_vocabularies(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_vocabularies(Client, Input, []).

-spec list_vocabularies(aws_client:aws_client(), list_vocabularies_request(), proplists:proplist()) ->
    {ok, list_vocabularies_response(), tuple()} |
    {error, any()} |
    {error, list_vocabularies_errors(), tuple()}.
list_vocabularies(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListVocabularies">>, Input, Options).

%% @doc Provides a list of custom vocabulary filters that match the specified
%% criteria.
%%
%% If no
%% criteria are specified, all custom vocabularies are returned.
%%
%% To get detailed information about a specific custom vocabulary filter, use
%% the operation.
-spec list_vocabulary_filters(aws_client:aws_client(), list_vocabulary_filters_request()) ->
    {ok, list_vocabulary_filters_response(), tuple()} |
    {error, any()} |
    {error, list_vocabulary_filters_errors(), tuple()}.
list_vocabulary_filters(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_vocabulary_filters(Client, Input, []).

-spec list_vocabulary_filters(aws_client:aws_client(), list_vocabulary_filters_request(), proplists:proplist()) ->
    {ok, list_vocabulary_filters_response(), tuple()} |
    {error, any()} |
    {error, list_vocabulary_filters_errors(), tuple()}.
list_vocabulary_filters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListVocabularyFilters">>, Input, Options).

%% @doc Transcribes the audio from a customer service call and applies any
%% additional Request
%% Parameters you choose to include in your request.
%%
%% In addition to many standard transcription features, Call Analytics
%% provides you with
%% call characteristics, call summarization, speaker sentiment, and optional
%% redaction of
%% your text transcript and your audio file. You can also apply custom
%% categories to flag
%% specified conditions. To learn more about these features and insights,
%% refer to Analyzing call
%% center audio with Call Analytics:
%% https://docs.aws.amazon.com/transcribe/latest/dg/call-analytics.html.
%%
%% If you want to apply categories to your Call Analytics job, you must
%% create them
%% before submitting your job request. Categories cannot be retroactively
%% applied to a job.
%% To create a new category, use the
%% operation. To learn more about Call Analytics categories, see Creating
%% categories for post-call
%% transcriptions:
%% https://docs.aws.amazon.com/transcribe/latest/dg/tca-categories-batch.html
%% and Creating categories for
%% real-time transcriptions:
%% https://docs.aws.amazon.com/transcribe/latest/dg/tca-categories-stream.html.
%%
%% To make a `StartCallAnalyticsJob' request, you must first upload your
%% media
%% file into an Amazon S3 bucket; you can then specify the Amazon S3
%% location of the file using the `Media' parameter.
%%
%% Job queuing is available for Call Analytics jobs. If you pass a
%% `DataAccessRoleArn'
%% in your request and you exceed your Concurrent Job Limit, your job will
%% automatically be
%% added to a queue to be processed once your concurrent job count is below
%% the limit.
%%
%% You must include the following parameters in your
%% `StartCallAnalyticsJob'
%% request:
%%
%% `region': The Amazon Web Services Region where you are making your
%% request. For a list of Amazon Web Services Regions supported with Amazon
%% Transcribe, refer to Amazon Transcribe endpoints and
%% quotas: https://docs.aws.amazon.com/general/latest/gr/transcribe.html.
%%
%% `CallAnalyticsJobName': A custom name that you create for your
%% transcription job that's unique within your Amazon Web Services
%% account.
%%
%% `Media' (`MediaFileUri' or
%% `RedactedMediaFileUri'): The Amazon S3 location of your
%% media file.
%%
%% With Call Analytics, you can redact the audio contained in your media file
%% by
%% including `RedactedMediaFileUri', instead of `MediaFileUri',
%% to specify the location of your input audio. If you choose to redact your
%% audio, you
%% can find your redacted media at the location specified in the
%% `RedactedMediaFileUri' field of your response.
-spec start_call_analytics_job(aws_client:aws_client(), start_call_analytics_job_request()) ->
    {ok, start_call_analytics_job_response(), tuple()} |
    {error, any()} |
    {error, start_call_analytics_job_errors(), tuple()}.
start_call_analytics_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_call_analytics_job(Client, Input, []).

-spec start_call_analytics_job(aws_client:aws_client(), start_call_analytics_job_request(), proplists:proplist()) ->
    {ok, start_call_analytics_job_response(), tuple()} |
    {error, any()} |
    {error, start_call_analytics_job_errors(), tuple()}.
start_call_analytics_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartCallAnalyticsJob">>, Input, Options).

%% @doc Transcribes patient-clinician conversations and generates clinical
%% notes.
%%
%% Amazon Web Services HealthScribe automatically provides rich conversation
%% transcripts, identifies speaker roles,
%% classifies dialogues, extracts medical terms, and generates preliminary
%% clinical notes.
%% To learn more about these features, refer to Amazon Web Services
%% HealthScribe:
%% https://docs.aws.amazon.com/transcribe/latest/dg/health-scribe.html.
%%
%% To make a `StartMedicalScribeJob' request, you must first upload
%% your media file into an Amazon S3 bucket; you can then specify the Amazon
%% S3 location
%% of the file using the `Media' parameter.
%%
%% You must include the following parameters in your
%% `StartMedicalTranscriptionJob' request:
%%
%% `DataAccessRoleArn': The ARN of an IAM role with the these minimum
%% permissions: read permission on input file Amazon S3 bucket specified in
%% `Media',
%% write permission on the Amazon S3 bucket specified in
%% `OutputBucketName', and full permissions on the KMS key specified in
%% `OutputEncryptionKMSKeyId' (if set).
%% The role should also allow `transcribe.amazonaws.com' to assume it.
%%
%% `Media' (`MediaFileUri'): The Amazon S3 location
%% of your media file.
%%
%% `MedicalScribeJobName': A custom name you create for your
%% MedicalScribe job that is unique within your Amazon Web Services account.
%%
%% `OutputBucketName': The Amazon S3 bucket where you want
%% your output files stored.
%%
%% `Settings': A `MedicalScribeSettings' object
%% that must set exactly one of `ShowSpeakerLabels' or
%% `ChannelIdentification' to true.
%% If `ShowSpeakerLabels' is true, `MaxSpeakerLabels' must also be
%% set.
%%
%% `ChannelDefinitions': A `MedicalScribeChannelDefinitions' array
%% should be set if and only if the `ChannelIdentification'
%% value of `Settings' is set to true.
-spec start_medical_scribe_job(aws_client:aws_client(), start_medical_scribe_job_request()) ->
    {ok, start_medical_scribe_job_response(), tuple()} |
    {error, any()} |
    {error, start_medical_scribe_job_errors(), tuple()}.
start_medical_scribe_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_medical_scribe_job(Client, Input, []).

-spec start_medical_scribe_job(aws_client:aws_client(), start_medical_scribe_job_request(), proplists:proplist()) ->
    {ok, start_medical_scribe_job_response(), tuple()} |
    {error, any()} |
    {error, start_medical_scribe_job_errors(), tuple()}.
start_medical_scribe_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartMedicalScribeJob">>, Input, Options).

%% @doc Transcribes the audio from a medical dictation or conversation and
%% applies any
%% additional Request Parameters you choose to include in your request.
%%
%% In addition to many standard transcription features, Amazon Transcribe
%% Medical
%% provides you with a robust medical vocabulary and, optionally, content
%% identification,
%% which adds flags to personal health information (PHI). To learn more about
%% these
%% features, refer to How Amazon Transcribe Medical
%% works:
%% https://docs.aws.amazon.com/transcribe/latest/dg/how-it-works-med.html.
%%
%% To make a `StartMedicalTranscriptionJob' request, you must first
%% upload
%% your media file into an Amazon S3 bucket; you can then specify the Amazon
%% S3 location
%% of the file using the `Media' parameter.
%%
%% You must include the following parameters in your
%% `StartMedicalTranscriptionJob' request:
%%
%% `region': The Amazon Web Services Region where you are making your
%% request. For a list of Amazon Web Services Regions supported with Amazon
%% Transcribe, refer to Amazon Transcribe endpoints and
%% quotas: https://docs.aws.amazon.com/general/latest/gr/transcribe.html.
%%
%% `MedicalTranscriptionJobName': A custom name you create for your
%% transcription job that is unique within your Amazon Web Services account.
%%
%% `Media' (`MediaFileUri'): The Amazon S3 location
%% of your media file.
%%
%% `LanguageCode': This must be `en-US'.
%%
%% `OutputBucketName': The Amazon S3 bucket where you want
%% your transcript stored. If you want your output stored in a sub-folder of
%% this
%% bucket, you must also include `OutputKey'.
%%
%% `Specialty': This must be `PRIMARYCARE'.
%%
%% `Type': Choose whether your audio is a conversation or a
%% dictation.
-spec start_medical_transcription_job(aws_client:aws_client(), start_medical_transcription_job_request()) ->
    {ok, start_medical_transcription_job_response(), tuple()} |
    {error, any()} |
    {error, start_medical_transcription_job_errors(), tuple()}.
start_medical_transcription_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_medical_transcription_job(Client, Input, []).

-spec start_medical_transcription_job(aws_client:aws_client(), start_medical_transcription_job_request(), proplists:proplist()) ->
    {ok, start_medical_transcription_job_response(), tuple()} |
    {error, any()} |
    {error, start_medical_transcription_job_errors(), tuple()}.
start_medical_transcription_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartMedicalTranscriptionJob">>, Input, Options).

%% @doc Transcribes the audio from a media file and applies any additional
%% Request Parameters
%% you choose to include in your request.
%%
%% To make a `StartTranscriptionJob' request, you must first upload your
%% media
%% file into an Amazon S3 bucket; you can then specify the Amazon S3
%% location of the file using the `Media' parameter.
%%
%% You must include the following parameters in your
%% `StartTranscriptionJob'
%% request:
%%
%% `region': The Amazon Web Services Region where you are making your
%% request. For a list of Amazon Web Services Regions supported with Amazon
%% Transcribe, refer to Amazon Transcribe endpoints and
%% quotas: https://docs.aws.amazon.com/general/latest/gr/transcribe.html.
%%
%% `TranscriptionJobName': A custom name you create for your
%% transcription job that is unique within your Amazon Web Services account.
%%
%% `Media' (`MediaFileUri'): The Amazon S3 location
%% of your media file.
%%
%% One of `LanguageCode', `IdentifyLanguage', or
%% `IdentifyMultipleLanguages': If you know the language of your
%% media file, specify it using the `LanguageCode' parameter; you can
%% find all valid language codes in the Supported
%% languages:
%% https://docs.aws.amazon.com/transcribe/latest/dg/supported-languages.html
%% table. If you do not know the languages spoken in your
%% media, use either `IdentifyLanguage' or
%% `IdentifyMultipleLanguages' and let Amazon Transcribe identify
%% the languages for you.
-spec start_transcription_job(aws_client:aws_client(), start_transcription_job_request()) ->
    {ok, start_transcription_job_response(), tuple()} |
    {error, any()} |
    {error, start_transcription_job_errors(), tuple()}.
start_transcription_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_transcription_job(Client, Input, []).

-spec start_transcription_job(aws_client:aws_client(), start_transcription_job_request(), proplists:proplist()) ->
    {ok, start_transcription_job_response(), tuple()} |
    {error, any()} |
    {error, start_transcription_job_errors(), tuple()}.
start_transcription_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartTranscriptionJob">>, Input, Options).

%% @doc Adds one or more custom tags, each in the form of a key:value pair,
%% to the specified
%% resource.
%%
%% To learn more about using tags with Amazon Transcribe, refer to Tagging
%% resources: https://docs.aws.amazon.com/transcribe/latest/dg/tagging.html.
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

%% @doc Removes the specified tags from the specified Amazon Transcribe
%% resource.
%%
%% If you include `UntagResource' in your request, you must also include
%% `ResourceArn' and `TagKeys'.
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

%% @doc Updates the specified Call Analytics category with new rules.
%%
%% Note that the
%% `UpdateCallAnalyticsCategory' operation overwrites all existing rules
%% contained in the specified category. You cannot append additional rules
%% onto an existing
%% category.
%%
%% To create a new category, see .
-spec update_call_analytics_category(aws_client:aws_client(), update_call_analytics_category_request()) ->
    {ok, update_call_analytics_category_response(), tuple()} |
    {error, any()} |
    {error, update_call_analytics_category_errors(), tuple()}.
update_call_analytics_category(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_call_analytics_category(Client, Input, []).

-spec update_call_analytics_category(aws_client:aws_client(), update_call_analytics_category_request(), proplists:proplist()) ->
    {ok, update_call_analytics_category_response(), tuple()} |
    {error, any()} |
    {error, update_call_analytics_category_errors(), tuple()}.
update_call_analytics_category(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateCallAnalyticsCategory">>, Input, Options).

%% @doc Updates an existing custom medical vocabulary with new values.
%%
%% This operation
%% overwrites all existing information with your new values; you cannot
%% append new terms
%% onto an existing custom vocabulary.
-spec update_medical_vocabulary(aws_client:aws_client(), update_medical_vocabulary_request()) ->
    {ok, update_medical_vocabulary_response(), tuple()} |
    {error, any()} |
    {error, update_medical_vocabulary_errors(), tuple()}.
update_medical_vocabulary(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_medical_vocabulary(Client, Input, []).

-spec update_medical_vocabulary(aws_client:aws_client(), update_medical_vocabulary_request(), proplists:proplist()) ->
    {ok, update_medical_vocabulary_response(), tuple()} |
    {error, any()} |
    {error, update_medical_vocabulary_errors(), tuple()}.
update_medical_vocabulary(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateMedicalVocabulary">>, Input, Options).

%% @doc Updates an existing custom vocabulary with new values.
%%
%% This operation overwrites all
%% existing information with your new values; you cannot append new terms
%% onto an existing
%% custom vocabulary.
-spec update_vocabulary(aws_client:aws_client(), update_vocabulary_request()) ->
    {ok, update_vocabulary_response(), tuple()} |
    {error, any()} |
    {error, update_vocabulary_errors(), tuple()}.
update_vocabulary(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_vocabulary(Client, Input, []).

-spec update_vocabulary(aws_client:aws_client(), update_vocabulary_request(), proplists:proplist()) ->
    {ok, update_vocabulary_response(), tuple()} |
    {error, any()} |
    {error, update_vocabulary_errors(), tuple()}.
update_vocabulary(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateVocabulary">>, Input, Options).

%% @doc Updates an existing custom vocabulary filter with a new list of
%% words.
%%
%% The new list
%% you provide overwrites all previous entries; you cannot append new terms
%% onto an
%% existing custom vocabulary filter.
-spec update_vocabulary_filter(aws_client:aws_client(), update_vocabulary_filter_request()) ->
    {ok, update_vocabulary_filter_response(), tuple()} |
    {error, any()} |
    {error, update_vocabulary_filter_errors(), tuple()}.
update_vocabulary_filter(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_vocabulary_filter(Client, Input, []).

-spec update_vocabulary_filter(aws_client:aws_client(), update_vocabulary_filter_request(), proplists:proplist()) ->
    {ok, update_vocabulary_filter_response(), tuple()} |
    {error, any()} |
    {error, update_vocabulary_filter_errors(), tuple()}.
update_vocabulary_filter(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateVocabularyFilter">>, Input, Options).

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
    Client1 = Client#{service => <<"transcribe">>},
    Host = build_host(<<"transcribe">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"Transcribe.", Action/binary>>}
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
