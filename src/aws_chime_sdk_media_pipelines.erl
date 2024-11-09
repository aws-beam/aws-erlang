%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc The Amazon Chime SDK media pipeline APIs in this section allow
%% software developers to
%% create Amazon Chime SDK media pipelines that capture, concatenate, or
%% stream your Amazon Chime SDK meetings.
%%
%% For more information about media pipelines, see Amazon Chime SDK media
%% pipelines:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_Operations_Amazon_Chime_SDK_Media_Pipelines.html.
-module(aws_chime_sdk_media_pipelines).

-export([create_media_capture_pipeline/2,
         create_media_capture_pipeline/3,
         create_media_concatenation_pipeline/2,
         create_media_concatenation_pipeline/3,
         create_media_insights_pipeline/2,
         create_media_insights_pipeline/3,
         create_media_insights_pipeline_configuration/2,
         create_media_insights_pipeline_configuration/3,
         create_media_live_connector_pipeline/2,
         create_media_live_connector_pipeline/3,
         create_media_pipeline_kinesis_video_stream_pool/2,
         create_media_pipeline_kinesis_video_stream_pool/3,
         create_media_stream_pipeline/2,
         create_media_stream_pipeline/3,
         delete_media_capture_pipeline/3,
         delete_media_capture_pipeline/4,
         delete_media_insights_pipeline_configuration/3,
         delete_media_insights_pipeline_configuration/4,
         delete_media_pipeline/3,
         delete_media_pipeline/4,
         delete_media_pipeline_kinesis_video_stream_pool/3,
         delete_media_pipeline_kinesis_video_stream_pool/4,
         get_media_capture_pipeline/2,
         get_media_capture_pipeline/4,
         get_media_capture_pipeline/5,
         get_media_insights_pipeline_configuration/2,
         get_media_insights_pipeline_configuration/4,
         get_media_insights_pipeline_configuration/5,
         get_media_pipeline/2,
         get_media_pipeline/4,
         get_media_pipeline/5,
         get_media_pipeline_kinesis_video_stream_pool/2,
         get_media_pipeline_kinesis_video_stream_pool/4,
         get_media_pipeline_kinesis_video_stream_pool/5,
         get_speaker_search_task/3,
         get_speaker_search_task/5,
         get_speaker_search_task/6,
         get_voice_tone_analysis_task/3,
         get_voice_tone_analysis_task/5,
         get_voice_tone_analysis_task/6,
         list_media_capture_pipelines/1,
         list_media_capture_pipelines/3,
         list_media_capture_pipelines/4,
         list_media_insights_pipeline_configurations/1,
         list_media_insights_pipeline_configurations/3,
         list_media_insights_pipeline_configurations/4,
         list_media_pipeline_kinesis_video_stream_pools/1,
         list_media_pipeline_kinesis_video_stream_pools/3,
         list_media_pipeline_kinesis_video_stream_pools/4,
         list_media_pipelines/1,
         list_media_pipelines/3,
         list_media_pipelines/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         start_speaker_search_task/3,
         start_speaker_search_task/4,
         start_voice_tone_analysis_task/3,
         start_voice_tone_analysis_task/4,
         stop_speaker_search_task/4,
         stop_speaker_search_task/5,
         stop_voice_tone_analysis_task/4,
         stop_voice_tone_analysis_task/5,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_media_insights_pipeline_configuration/3,
         update_media_insights_pipeline_configuration/4,
         update_media_insights_pipeline_status/3,
         update_media_insights_pipeline_status/4,
         update_media_pipeline_kinesis_video_stream_pool/3,
         update_media_pipeline_kinesis_video_stream_pool/4]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% create_media_capture_pipeline_response() :: #{
%%   <<"MediaCapturePipeline">> => media_capture_pipeline()
%% }
-type create_media_capture_pipeline_response() :: #{binary() => any()}.


%% Example:
%% kinesis_data_stream_sink_configuration() :: #{
%%   <<"InsightsTarget">> => string()
%% }
-type kinesis_data_stream_sink_configuration() :: #{binary() => any()}.


%% Example:
%% recording_stream_configuration() :: #{
%%   <<"StreamArn">> => string()
%% }
-type recording_stream_configuration() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"ResourceARN">> := string(),
%%   <<"Tags">> := list(tag()())
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% update_media_insights_pipeline_configuration_response() :: #{
%%   <<"MediaInsightsPipelineConfiguration">> => media_insights_pipeline_configuration()
%% }
-type update_media_insights_pipeline_configuration_response() :: #{binary() => any()}.


%% Example:
%% data_channel_concatenation_configuration() :: #{
%%   <<"State">> => list(any())
%% }
-type data_channel_concatenation_configuration() :: #{binary() => any()}.


%% Example:
%% start_voice_tone_analysis_task_request() :: #{
%%   <<"ClientRequestToken">> => string(),
%%   <<"KinesisVideoStreamSourceTaskConfiguration">> => kinesis_video_stream_source_task_configuration(),
%%   <<"LanguageCode">> := list(any())
%% }
-type start_voice_tone_analysis_task_request() :: #{binary() => any()}.


%% Example:
%% video_concatenation_configuration() :: #{
%%   <<"State">> => list(any())
%% }
-type video_concatenation_configuration() :: #{binary() => any()}.


%% Example:
%% start_speaker_search_task_response() :: #{
%%   <<"SpeakerSearchTask">> => speaker_search_task()
%% }
-type start_speaker_search_task_response() :: #{binary() => any()}.

%% Example:
%% delete_media_pipeline_kinesis_video_stream_pool_request() :: #{}
-type delete_media_pipeline_kinesis_video_stream_pool_request() :: #{}.


%% Example:
%% create_media_concatenation_pipeline_request() :: #{
%%   <<"ClientRequestToken">> => string(),
%%   <<"Sinks">> := list(concatenation_sink()()),
%%   <<"Sources">> := list(concatenation_source()()),
%%   <<"Tags">> => list(tag()())
%% }
-type create_media_concatenation_pipeline_request() :: #{binary() => any()}.


%% Example:
%% get_media_capture_pipeline_response() :: #{
%%   <<"MediaCapturePipeline">> => media_capture_pipeline()
%% }
-type get_media_capture_pipeline_response() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% video_artifacts_configuration() :: #{
%%   <<"MuxType">> => list(any()),
%%   <<"State">> => list(any())
%% }
-type video_artifacts_configuration() :: #{binary() => any()}.


%% Example:
%% service_failure_exception() :: #{
%%   <<"Code">> => list(any()),
%%   <<"Message">> => string(),
%%   <<"RequestId">> => string()
%% }
-type service_failure_exception() :: #{binary() => any()}.


%% Example:
%% meeting_events_concatenation_configuration() :: #{
%%   <<"State">> => list(any())
%% }
-type meeting_events_concatenation_configuration() :: #{binary() => any()}.


%% Example:
%% chime_sdk_meeting_live_connector_configuration() :: #{
%%   <<"Arn">> => string(),
%%   <<"CompositedVideo">> => composited_video_artifacts_configuration(),
%%   <<"MuxType">> => list(any()),
%%   <<"SourceConfiguration">> => source_configuration()
%% }
-type chime_sdk_meeting_live_connector_configuration() :: #{binary() => any()}.


%% Example:
%% forbidden_exception() :: #{
%%   <<"Code">> => list(any()),
%%   <<"Message">> => string(),
%%   <<"RequestId">> => string()
%% }
-type forbidden_exception() :: #{binary() => any()}.


%% Example:
%% create_media_pipeline_kinesis_video_stream_pool_request() :: #{
%%   <<"ClientRequestToken">> => string(),
%%   <<"PoolName">> := string(),
%%   <<"StreamConfiguration">> := kinesis_video_stream_configuration(),
%%   <<"Tags">> => list(tag()())
%% }
-type create_media_pipeline_kinesis_video_stream_pool_request() :: #{binary() => any()}.

%% Example:
%% get_media_capture_pipeline_request() :: #{}
-type get_media_capture_pipeline_request() :: #{}.

%% Example:
%% delete_media_pipeline_request() :: #{}
-type delete_media_pipeline_request() :: #{}.


%% Example:
%% list_media_pipeline_kinesis_video_stream_pools_response() :: #{
%%   <<"KinesisVideoStreamPools">> => list(kinesis_video_stream_pool_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_media_pipeline_kinesis_video_stream_pools_response() :: #{binary() => any()}.

%% Example:
%% get_media_insights_pipeline_configuration_request() :: #{}
-type get_media_insights_pipeline_configuration_request() :: #{}.

%% Example:
%% get_media_pipeline_request() :: #{}
-type get_media_pipeline_request() :: #{}.


%% Example:
%% sqs_queue_sink_configuration() :: #{
%%   <<"InsightsTarget">> => string()
%% }
-type sqs_queue_sink_configuration() :: #{binary() => any()}.


%% Example:
%% selected_video_streams() :: #{
%%   <<"AttendeeIds">> => list(string()()),
%%   <<"ExternalUserIds">> => list(string()())
%% }
-type selected_video_streams() :: #{binary() => any()}.


%% Example:
%% live_connector_r_t_m_p_configuration() :: #{
%%   <<"AudioChannels">> => list(any()),
%%   <<"AudioSampleRate">> => string(),
%%   <<"Url">> => string()
%% }
-type live_connector_r_t_m_p_configuration() :: #{binary() => any()}.


%% Example:
%% kinesis_video_stream_source_task_configuration() :: #{
%%   <<"ChannelId">> => integer(),
%%   <<"FragmentNumber">> => string(),
%%   <<"StreamArn">> => string()
%% }
-type kinesis_video_stream_source_task_configuration() :: #{binary() => any()}.


%% Example:
%% s3_recording_sink_configuration() :: #{
%%   <<"Destination">> => string(),
%%   <<"RecordingFileFormat">> => list(any())
%% }
-type s3_recording_sink_configuration() :: #{binary() => any()}.


%% Example:
%% unauthorized_client_exception() :: #{
%%   <<"Code">> => list(any()),
%%   <<"Message">> => string(),
%%   <<"RequestId">> => string()
%% }
-type unauthorized_client_exception() :: #{binary() => any()}.


%% Example:
%% audio_concatenation_configuration() :: #{
%%   <<"State">> => list(any())
%% }
-type audio_concatenation_configuration() :: #{binary() => any()}.


%% Example:
%% composited_video_concatenation_configuration() :: #{
%%   <<"State">> => list(any())
%% }
-type composited_video_concatenation_configuration() :: #{binary() => any()}.


%% Example:
%% speaker_search_task() :: #{
%%   <<"CreatedTimestamp">> => non_neg_integer(),
%%   <<"SpeakerSearchTaskId">> => string(),
%%   <<"SpeakerSearchTaskStatus">> => list(any()),
%%   <<"UpdatedTimestamp">> => non_neg_integer()
%% }
-type speaker_search_task() :: #{binary() => any()}.


%% Example:
%% media_insights_pipeline_element_status() :: #{
%%   <<"Status">> => list(any()),
%%   <<"Type">> => list(any())
%% }
-type media_insights_pipeline_element_status() :: #{binary() => any()}.


%% Example:
%% list_media_pipelines_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_media_pipelines_request() :: #{binary() => any()}.


%% Example:
%% concatenation_sink() :: #{
%%   <<"S3BucketSinkConfiguration">> => s3_bucket_sink_configuration(),
%%   <<"Type">> => list(any())
%% }
-type concatenation_sink() :: #{binary() => any()}.


%% Example:
%% get_speaker_search_task_response() :: #{
%%   <<"SpeakerSearchTask">> => speaker_search_task()
%% }
-type get_speaker_search_task_response() :: #{binary() => any()}.

%% Example:
%% stop_speaker_search_task_request() :: #{}
-type stop_speaker_search_task_request() :: #{}.


%% Example:
%% content_artifacts_configuration() :: #{
%%   <<"MuxType">> => list(any()),
%%   <<"State">> => list(any())
%% }
-type content_artifacts_configuration() :: #{binary() => any()}.


%% Example:
%% throttled_client_exception() :: #{
%%   <<"Code">> => list(any()),
%%   <<"Message">> => string(),
%%   <<"RequestId">> => string()
%% }
-type throttled_client_exception() :: #{binary() => any()}.


%% Example:
%% vertical_layout_configuration() :: #{
%%   <<"TileAspectRatio">> => string(),
%%   <<"TileCount">> => integer(),
%%   <<"TileOrder">> => list(any()),
%%   <<"TilePosition">> => list(any())
%% }
-type vertical_layout_configuration() :: #{binary() => any()}.


%% Example:
%% list_media_insights_pipeline_configurations_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_media_insights_pipeline_configurations_request() :: #{binary() => any()}.


%% Example:
%% list_media_capture_pipelines_response() :: #{
%%   <<"MediaCapturePipelines">> => list(media_capture_pipeline_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_media_capture_pipelines_response() :: #{binary() => any()}.


%% Example:
%% fragment_selector() :: #{
%%   <<"FragmentSelectorType">> => list(any()),
%%   <<"TimestampRange">> => timestamp_range()
%% }
-type fragment_selector() :: #{binary() => any()}.


%% Example:
%% create_media_pipeline_kinesis_video_stream_pool_response() :: #{
%%   <<"KinesisVideoStreamPoolConfiguration">> => kinesis_video_stream_pool_configuration()
%% }
-type create_media_pipeline_kinesis_video_stream_pool_response() :: #{binary() => any()}.


%% Example:
%% sentiment_configuration() :: #{
%%   <<"RuleName">> => string(),
%%   <<"SentimentType">> => list(any()),
%%   <<"TimePeriod">> => integer()
%% }
-type sentiment_configuration() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"ResourceARN">> := string(),
%%   <<"TagKeys">> := list(string()())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% live_connector_sink_configuration() :: #{
%%   <<"RTMPConfiguration">> => live_connector_r_t_m_p_configuration(),
%%   <<"SinkType">> => list(any())
%% }
-type live_connector_sink_configuration() :: #{binary() => any()}.


%% Example:
%% sns_topic_sink_configuration() :: #{
%%   <<"InsightsTarget">> => string()
%% }
-type sns_topic_sink_configuration() :: #{binary() => any()}.


%% Example:
%% presenter_only_configuration() :: #{
%%   <<"PresenterPosition">> => list(any())
%% }
-type presenter_only_configuration() :: #{binary() => any()}.


%% Example:
%% get_voice_tone_analysis_task_response() :: #{
%%   <<"VoiceToneAnalysisTask">> => voice_tone_analysis_task()
%% }
-type get_voice_tone_analysis_task_response() :: #{binary() => any()}.

%% Example:
%% delete_media_capture_pipeline_request() :: #{}
-type delete_media_capture_pipeline_request() :: #{}.


%% Example:
%% get_media_insights_pipeline_configuration_response() :: #{
%%   <<"MediaInsightsPipelineConfiguration">> => media_insights_pipeline_configuration()
%% }
-type get_media_insights_pipeline_configuration_response() :: #{binary() => any()}.


%% Example:
%% kinesis_video_stream_configuration_update() :: #{
%%   <<"DataRetentionInHours">> => integer()
%% }
-type kinesis_video_stream_configuration_update() :: #{binary() => any()}.


%% Example:
%% start_voice_tone_analysis_task_response() :: #{
%%   <<"VoiceToneAnalysisTask">> => voice_tone_analysis_task()
%% }
-type start_voice_tone_analysis_task_response() :: #{binary() => any()}.


%% Example:
%% create_media_concatenation_pipeline_response() :: #{
%%   <<"MediaConcatenationPipeline">> => media_concatenation_pipeline()
%% }
-type create_media_concatenation_pipeline_response() :: #{binary() => any()}.


%% Example:
%% live_connector_source_configuration() :: #{
%%   <<"ChimeSdkMeetingLiveConnectorConfiguration">> => chime_sdk_meeting_live_connector_configuration(),
%%   <<"SourceType">> => list(any())
%% }
-type live_connector_source_configuration() :: #{binary() => any()}.


%% Example:
%% media_insights_pipeline_configuration() :: #{
%%   <<"CreatedTimestamp">> => non_neg_integer(),
%%   <<"Elements">> => list(media_insights_pipeline_configuration_element()()),
%%   <<"MediaInsightsPipelineConfigurationArn">> => string(),
%%   <<"MediaInsightsPipelineConfigurationId">> => string(),
%%   <<"MediaInsightsPipelineConfigurationName">> => string(),
%%   <<"RealTimeAlertConfiguration">> => real_time_alert_configuration(),
%%   <<"ResourceAccessRoleArn">> => string(),
%%   <<"UpdatedTimestamp">> => non_neg_integer()
%% }
-type media_insights_pipeline_configuration() :: #{binary() => any()}.


%% Example:
%% horizontal_layout_configuration() :: #{
%%   <<"TileAspectRatio">> => string(),
%%   <<"TileCount">> => integer(),
%%   <<"TileOrder">> => list(any()),
%%   <<"TilePosition">> => list(any())
%% }
-type horizontal_layout_configuration() :: #{binary() => any()}.


%% Example:
%% issue_detection_configuration() :: #{
%%   <<"RuleName">> => string()
%% }
-type issue_detection_configuration() :: #{binary() => any()}.


%% Example:
%% sse_aws_key_management_params() :: #{
%%   <<"AwsKmsEncryptionContext">> => string(),
%%   <<"AwsKmsKeyId">> => string()
%% }
-type sse_aws_key_management_params() :: #{binary() => any()}.


%% Example:
%% media_capture_pipeline() :: #{
%%   <<"ChimeSdkMeetingConfiguration">> => chime_sdk_meeting_configuration(),
%%   <<"CreatedTimestamp">> => non_neg_integer(),
%%   <<"MediaPipelineArn">> => string(),
%%   <<"MediaPipelineId">> => string(),
%%   <<"SinkArn">> => string(),
%%   <<"SinkIamRoleArn">> => string(),
%%   <<"SinkType">> => list(any()),
%%   <<"SourceArn">> => string(),
%%   <<"SourceType">> => list(any()),
%%   <<"SseAwsKeyManagementParams">> => sse_aws_key_management_params(),
%%   <<"Status">> => list(any()),
%%   <<"UpdatedTimestamp">> => non_neg_integer()
%% }
-type media_capture_pipeline() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"Code">> => list(any()),
%%   <<"Message">> => string(),
%%   <<"RequestId">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% media_concatenation_pipeline() :: #{
%%   <<"CreatedTimestamp">> => non_neg_integer(),
%%   <<"MediaPipelineArn">> => string(),
%%   <<"MediaPipelineId">> => string(),
%%   <<"Sinks">> => list(concatenation_sink()()),
%%   <<"Sources">> => list(concatenation_source()()),
%%   <<"Status">> => list(any()),
%%   <<"UpdatedTimestamp">> => non_neg_integer()
%% }
-type media_concatenation_pipeline() :: #{binary() => any()}.


%% Example:
%% kinesis_video_stream_configuration() :: #{
%%   <<"DataRetentionInHours">> => integer(),
%%   <<"Region">> => string()
%% }
-type kinesis_video_stream_configuration() :: #{binary() => any()}.


%% Example:
%% amazon_transcribe_call_analytics_processor_configuration() :: #{
%%   <<"CallAnalyticsStreamCategories">> => list(string()()),
%%   <<"ContentIdentificationType">> => list(any()),
%%   <<"ContentRedactionType">> => list(any()),
%%   <<"EnablePartialResultsStabilization">> => boolean(),
%%   <<"FilterPartialResults">> => boolean(),
%%   <<"LanguageCode">> => list(any()),
%%   <<"LanguageModelName">> => string(),
%%   <<"PartialResultsStability">> => list(any()),
%%   <<"PiiEntityTypes">> => string(),
%%   <<"PostCallAnalyticsSettings">> => post_call_analytics_settings(),
%%   <<"VocabularyFilterMethod">> => list(any()),
%%   <<"VocabularyFilterName">> => string(),
%%   <<"VocabularyName">> => string()
%% }
-type amazon_transcribe_call_analytics_processor_configuration() :: #{binary() => any()}.


%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.


%% Example:
%% kinesis_video_stream_pool_summary() :: #{
%%   <<"PoolArn">> => string(),
%%   <<"PoolId">> => string(),
%%   <<"PoolName">> => string()
%% }
-type kinesis_video_stream_pool_summary() :: #{binary() => any()}.


%% Example:
%% start_speaker_search_task_request() :: #{
%%   <<"ClientRequestToken">> => string(),
%%   <<"KinesisVideoStreamSourceTaskConfiguration">> => kinesis_video_stream_source_task_configuration(),
%%   <<"VoiceProfileDomainArn">> := string()
%% }
-type start_speaker_search_task_request() :: #{binary() => any()}.


%% Example:
%% resource_limit_exceeded_exception() :: #{
%%   <<"Code">> => list(any()),
%%   <<"Message">> => string(),
%%   <<"RequestId">> => string()
%% }
-type resource_limit_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% list_media_pipeline_kinesis_video_stream_pools_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_media_pipeline_kinesis_video_stream_pools_request() :: #{binary() => any()}.


%% Example:
%% composited_video_artifacts_configuration() :: #{
%%   <<"GridViewConfiguration">> => grid_view_configuration(),
%%   <<"Layout">> => list(any()),
%%   <<"Resolution">> => list(any())
%% }
-type composited_video_artifacts_configuration() :: #{binary() => any()}.


%% Example:
%% channel_definition() :: #{
%%   <<"ChannelId">> => integer(),
%%   <<"ParticipantRole">> => list(any())
%% }
-type channel_definition() :: #{binary() => any()}.


%% Example:
%% update_media_insights_pipeline_configuration_request() :: #{
%%   <<"Elements">> := list(media_insights_pipeline_configuration_element()()),
%%   <<"RealTimeAlertConfiguration">> => real_time_alert_configuration(),
%%   <<"ResourceAccessRoleArn">> := string()
%% }
-type update_media_insights_pipeline_configuration_request() :: #{binary() => any()}.


%% Example:
%% real_time_alert_rule() :: #{
%%   <<"IssueDetectionConfiguration">> => issue_detection_configuration(),
%%   <<"KeywordMatchConfiguration">> => keyword_match_configuration(),
%%   <<"SentimentConfiguration">> => sentiment_configuration(),
%%   <<"Type">> => list(any())
%% }
-type real_time_alert_rule() :: #{binary() => any()}.

%% Example:
%% delete_media_insights_pipeline_configuration_request() :: #{}
-type delete_media_insights_pipeline_configuration_request() :: #{}.


%% Example:
%% not_found_exception() :: #{
%%   <<"Code">> => list(any()),
%%   <<"Message">> => string(),
%%   <<"RequestId">> => string()
%% }
-type not_found_exception() :: #{binary() => any()}.


%% Example:
%% get_media_pipeline_kinesis_video_stream_pool_response() :: #{
%%   <<"KinesisVideoStreamPoolConfiguration">> => kinesis_video_stream_pool_configuration()
%% }
-type get_media_pipeline_kinesis_video_stream_pool_response() :: #{binary() => any()}.


%% Example:
%% media_live_connector_pipeline() :: #{
%%   <<"CreatedTimestamp">> => non_neg_integer(),
%%   <<"MediaPipelineArn">> => string(),
%%   <<"MediaPipelineId">> => string(),
%%   <<"Sinks">> => list(live_connector_sink_configuration()()),
%%   <<"Sources">> => list(live_connector_source_configuration()()),
%%   <<"Status">> => list(any()),
%%   <<"UpdatedTimestamp">> => non_neg_integer()
%% }
-type media_live_connector_pipeline() :: #{binary() => any()}.


%% Example:
%% list_media_pipelines_response() :: #{
%%   <<"MediaPipelines">> => list(media_pipeline_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_media_pipelines_response() :: #{binary() => any()}.


%% Example:
%% media_insights_pipeline_configuration_element() :: #{
%%   <<"AmazonTranscribeCallAnalyticsProcessorConfiguration">> => amazon_transcribe_call_analytics_processor_configuration(),
%%   <<"AmazonTranscribeProcessorConfiguration">> => amazon_transcribe_processor_configuration(),
%%   <<"KinesisDataStreamSinkConfiguration">> => kinesis_data_stream_sink_configuration(),
%%   <<"LambdaFunctionSinkConfiguration">> => lambda_function_sink_configuration(),
%%   <<"S3RecordingSinkConfiguration">> => s3_recording_sink_configuration(),
%%   <<"SnsTopicSinkConfiguration">> => sns_topic_sink_configuration(),
%%   <<"SqsQueueSinkConfiguration">> => sqs_queue_sink_configuration(),
%%   <<"Type">> => list(any()),
%%   <<"VoiceAnalyticsProcessorConfiguration">> => voice_analytics_processor_configuration(),
%%   <<"VoiceEnhancementSinkConfiguration">> => voice_enhancement_sink_configuration()
%% }
-type media_insights_pipeline_configuration_element() :: #{binary() => any()}.


%% Example:
%% audio_artifacts_configuration() :: #{
%%   <<"MuxType">> => list(any())
%% }
-type audio_artifacts_configuration() :: #{binary() => any()}.


%% Example:
%% media_stream_sink() :: #{
%%   <<"MediaStreamType">> => list(any()),
%%   <<"ReservedStreamCapacity">> => integer(),
%%   <<"SinkArn">> => string(),
%%   <<"SinkType">> => list(any())
%% }
-type media_stream_sink() :: #{binary() => any()}.


%% Example:
%% list_media_capture_pipelines_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_media_capture_pipelines_request() :: #{binary() => any()}.


%% Example:
%% voice_analytics_processor_configuration() :: #{
%%   <<"SpeakerSearchStatus">> => list(any()),
%%   <<"VoiceToneAnalysisStatus">> => list(any())
%% }
-type voice_analytics_processor_configuration() :: #{binary() => any()}.


%% Example:
%% create_media_live_connector_pipeline_request() :: #{
%%   <<"ClientRequestToken">> => string(),
%%   <<"Sinks">> := list(live_connector_sink_configuration()()),
%%   <<"Sources">> := list(live_connector_source_configuration()()),
%%   <<"Tags">> => list(tag()())
%% }
-type create_media_live_connector_pipeline_request() :: #{binary() => any()}.


%% Example:
%% media_capture_pipeline_source_configuration() :: #{
%%   <<"ChimeSdkMeetingConfiguration">> => chime_sdk_meeting_concatenation_configuration(),
%%   <<"MediaPipelineArn">> => string()
%% }
-type media_capture_pipeline_source_configuration() :: #{binary() => any()}.


%% Example:
%% post_call_analytics_settings() :: #{
%%   <<"ContentRedactionOutput">> => list(any()),
%%   <<"DataAccessRoleArn">> => string(),
%%   <<"OutputEncryptionKMSKeyId">> => string(),
%%   <<"OutputLocation">> => string()
%% }
-type post_call_analytics_settings() :: #{binary() => any()}.


%% Example:
%% lambda_function_sink_configuration() :: #{
%%   <<"InsightsTarget">> => string()
%% }
-type lambda_function_sink_configuration() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"Tags">> => list(tag()())
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% source_configuration() :: #{
%%   <<"SelectedVideoStreams">> => selected_video_streams()
%% }
-type source_configuration() :: #{binary() => any()}.


%% Example:
%% service_unavailable_exception() :: #{
%%   <<"Code">> => list(any()),
%%   <<"Message">> => string(),
%%   <<"RequestId">> => string()
%% }
-type service_unavailable_exception() :: #{binary() => any()}.


%% Example:
%% voice_tone_analysis_task() :: #{
%%   <<"CreatedTimestamp">> => non_neg_integer(),
%%   <<"UpdatedTimestamp">> => non_neg_integer(),
%%   <<"VoiceToneAnalysisTaskId">> => string(),
%%   <<"VoiceToneAnalysisTaskStatus">> => list(any())
%% }
-type voice_tone_analysis_task() :: #{binary() => any()}.


%% Example:
%% video_attribute() :: #{
%%   <<"BorderColor">> => list(any()),
%%   <<"BorderThickness">> => integer(),
%%   <<"CornerRadius">> => integer(),
%%   <<"HighlightColor">> => list(any())
%% }
-type video_attribute() :: #{binary() => any()}.


%% Example:
%% chime_sdk_meeting_configuration() :: #{
%%   <<"ArtifactsConfiguration">> => artifacts_configuration(),
%%   <<"SourceConfiguration">> => source_configuration()
%% }
-type chime_sdk_meeting_configuration() :: #{binary() => any()}.


%% Example:
%% media_pipeline_summary() :: #{
%%   <<"MediaPipelineArn">> => string(),
%%   <<"MediaPipelineId">> => string()
%% }
-type media_pipeline_summary() :: #{binary() => any()}.


%% Example:
%% media_capture_pipeline_summary() :: #{
%%   <<"MediaPipelineArn">> => string(),
%%   <<"MediaPipelineId">> => string()
%% }
-type media_capture_pipeline_summary() :: #{binary() => any()}.


%% Example:
%% kinesis_video_stream_source_runtime_configuration() :: #{
%%   <<"MediaEncoding">> => list(any()),
%%   <<"MediaSampleRate">> => integer(),
%%   <<"Streams">> => list(stream_configuration()())
%% }
-type kinesis_video_stream_source_runtime_configuration() :: #{binary() => any()}.


%% Example:
%% media_insights_pipeline() :: #{
%%   <<"CreatedTimestamp">> => non_neg_integer(),
%%   <<"ElementStatuses">> => list(media_insights_pipeline_element_status()()),
%%   <<"KinesisVideoStreamRecordingSourceRuntimeConfiguration">> => kinesis_video_stream_recording_source_runtime_configuration(),
%%   <<"KinesisVideoStreamSourceRuntimeConfiguration">> => kinesis_video_stream_source_runtime_configuration(),
%%   <<"MediaInsightsPipelineConfigurationArn">> => string(),
%%   <<"MediaInsightsRuntimeMetadata">> => map(),
%%   <<"MediaPipelineArn">> => string(),
%%   <<"MediaPipelineId">> => string(),
%%   <<"S3RecordingSinkRuntimeConfiguration">> => s3_recording_sink_runtime_configuration(),
%%   <<"Status">> => list(any())
%% }
-type media_insights_pipeline() :: #{binary() => any()}.


%% Example:
%% concatenation_source() :: #{
%%   <<"MediaCapturePipelineSourceConfiguration">> => media_capture_pipeline_source_configuration(),
%%   <<"Type">> => list(any())
%% }
-type concatenation_source() :: #{binary() => any()}.


%% Example:
%% media_stream_pipeline() :: #{
%%   <<"CreatedTimestamp">> => non_neg_integer(),
%%   <<"MediaPipelineArn">> => string(),
%%   <<"MediaPipelineId">> => string(),
%%   <<"Sinks">> => list(media_stream_sink()()),
%%   <<"Sources">> => list(media_stream_source()()),
%%   <<"Status">> => list(any()),
%%   <<"UpdatedTimestamp">> => non_neg_integer()
%% }
-type media_stream_pipeline() :: #{binary() => any()}.


%% Example:
%% media_stream_source() :: #{
%%   <<"SourceArn">> => string(),
%%   <<"SourceType">> => list(any())
%% }
-type media_stream_source() :: #{binary() => any()}.


%% Example:
%% update_media_pipeline_kinesis_video_stream_pool_response() :: #{
%%   <<"KinesisVideoStreamPoolConfiguration">> => kinesis_video_stream_pool_configuration()
%% }
-type update_media_pipeline_kinesis_video_stream_pool_response() :: #{binary() => any()}.

%% Example:
%% stop_voice_tone_analysis_task_request() :: #{}
-type stop_voice_tone_analysis_task_request() :: #{}.


%% Example:
%% s3_recording_sink_runtime_configuration() :: #{
%%   <<"Destination">> => string(),
%%   <<"RecordingFileFormat">> => list(any())
%% }
-type s3_recording_sink_runtime_configuration() :: #{binary() => any()}.


%% Example:
%% media_insights_pipeline_configuration_summary() :: #{
%%   <<"MediaInsightsPipelineConfigurationArn">> => string(),
%%   <<"MediaInsightsPipelineConfigurationId">> => string(),
%%   <<"MediaInsightsPipelineConfigurationName">> => string()
%% }
-type media_insights_pipeline_configuration_summary() :: #{binary() => any()}.


%% Example:
%% list_media_insights_pipeline_configurations_response() :: #{
%%   <<"MediaInsightsPipelineConfigurations">> => list(media_insights_pipeline_configuration_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_media_insights_pipeline_configurations_response() :: #{binary() => any()}.


%% Example:
%% timestamp_range() :: #{
%%   <<"EndTimestamp">> => non_neg_integer(),
%%   <<"StartTimestamp">> => non_neg_integer()
%% }
-type timestamp_range() :: #{binary() => any()}.


%% Example:
%% content_concatenation_configuration() :: #{
%%   <<"State">> => list(any())
%% }
-type content_concatenation_configuration() :: #{binary() => any()}.

%% Example:
%% get_media_pipeline_kinesis_video_stream_pool_request() :: #{}
-type get_media_pipeline_kinesis_video_stream_pool_request() :: #{}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% create_media_capture_pipeline_request() :: #{
%%   <<"ChimeSdkMeetingConfiguration">> => chime_sdk_meeting_configuration(),
%%   <<"ClientRequestToken">> => string(),
%%   <<"SinkArn">> := string(),
%%   <<"SinkIamRoleArn">> => string(),
%%   <<"SinkType">> := list(any()),
%%   <<"SourceArn">> := string(),
%%   <<"SourceType">> := list(any()),
%%   <<"SseAwsKeyManagementParams">> => sse_aws_key_management_params(),
%%   <<"Tags">> => list(tag()())
%% }
-type create_media_capture_pipeline_request() :: #{binary() => any()}.


%% Example:
%% create_media_live_connector_pipeline_response() :: #{
%%   <<"MediaLiveConnectorPipeline">> => media_live_connector_pipeline()
%% }
-type create_media_live_connector_pipeline_response() :: #{binary() => any()}.


%% Example:
%% create_media_insights_pipeline_request() :: #{
%%   <<"ClientRequestToken">> => string(),
%%   <<"KinesisVideoStreamRecordingSourceRuntimeConfiguration">> => kinesis_video_stream_recording_source_runtime_configuration(),
%%   <<"KinesisVideoStreamSourceRuntimeConfiguration">> => kinesis_video_stream_source_runtime_configuration(),
%%   <<"MediaInsightsPipelineConfigurationArn">> := string(),
%%   <<"MediaInsightsRuntimeMetadata">> => map(),
%%   <<"S3RecordingSinkRuntimeConfiguration">> => s3_recording_sink_runtime_configuration(),
%%   <<"Tags">> => list(tag()())
%% }
-type create_media_insights_pipeline_request() :: #{binary() => any()}.


%% Example:
%% get_media_pipeline_response() :: #{
%%   <<"MediaPipeline">> => media_pipeline()
%% }
-type get_media_pipeline_response() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_request() :: #{
%%   <<"ResourceARN">> := string()
%% }
-type list_tags_for_resource_request() :: #{binary() => any()}.


%% Example:
%% kinesis_video_stream_recording_source_runtime_configuration() :: #{
%%   <<"FragmentSelector">> => fragment_selector(),
%%   <<"Streams">> => list(recording_stream_configuration()())
%% }
-type kinesis_video_stream_recording_source_runtime_configuration() :: #{binary() => any()}.


%% Example:
%% voice_enhancement_sink_configuration() :: #{
%%   <<"Disabled">> => boolean()
%% }
-type voice_enhancement_sink_configuration() :: #{binary() => any()}.


%% Example:
%% artifacts_concatenation_configuration() :: #{
%%   <<"Audio">> => audio_concatenation_configuration(),
%%   <<"CompositedVideo">> => composited_video_concatenation_configuration(),
%%   <<"Content">> => content_concatenation_configuration(),
%%   <<"DataChannel">> => data_channel_concatenation_configuration(),
%%   <<"MeetingEvents">> => meeting_events_concatenation_configuration(),
%%   <<"TranscriptionMessages">> => transcription_messages_concatenation_configuration(),
%%   <<"Video">> => video_concatenation_configuration()
%% }
-type artifacts_concatenation_configuration() :: #{binary() => any()}.


%% Example:
%% create_media_insights_pipeline_configuration_response() :: #{
%%   <<"MediaInsightsPipelineConfiguration">> => media_insights_pipeline_configuration()
%% }
-type create_media_insights_pipeline_configuration_response() :: #{binary() => any()}.


%% Example:
%% media_pipeline() :: #{
%%   <<"MediaCapturePipeline">> => media_capture_pipeline(),
%%   <<"MediaConcatenationPipeline">> => media_concatenation_pipeline(),
%%   <<"MediaInsightsPipeline">> => media_insights_pipeline(),
%%   <<"MediaLiveConnectorPipeline">> => media_live_connector_pipeline(),
%%   <<"MediaStreamPipeline">> => media_stream_pipeline()
%% }
-type media_pipeline() :: #{binary() => any()}.


%% Example:
%% active_speaker_only_configuration() :: #{
%%   <<"ActiveSpeakerPosition">> => list(any())
%% }
-type active_speaker_only_configuration() :: #{binary() => any()}.


%% Example:
%% update_media_insights_pipeline_status_request() :: #{
%%   <<"UpdateStatus">> := list(any())
%% }
-type update_media_insights_pipeline_status_request() :: #{binary() => any()}.


%% Example:
%% create_media_stream_pipeline_request() :: #{
%%   <<"ClientRequestToken">> => string(),
%%   <<"Sinks">> := list(media_stream_sink()()),
%%   <<"Sources">> := list(media_stream_source()()),
%%   <<"Tags">> => list(tag()())
%% }
-type create_media_stream_pipeline_request() :: #{binary() => any()}.


%% Example:
%% keyword_match_configuration() :: #{
%%   <<"Keywords">> => list(string()()),
%%   <<"Negate">> => boolean(),
%%   <<"RuleName">> => string()
%% }
-type keyword_match_configuration() :: #{binary() => any()}.


%% Example:
%% bad_request_exception() :: #{
%%   <<"Code">> => list(any()),
%%   <<"Message">> => string(),
%%   <<"RequestId">> => string()
%% }
-type bad_request_exception() :: #{binary() => any()}.


%% Example:
%% grid_view_configuration() :: #{
%%   <<"ActiveSpeakerOnlyConfiguration">> => active_speaker_only_configuration(),
%%   <<"CanvasOrientation">> => list(any()),
%%   <<"ContentShareLayout">> => list(any()),
%%   <<"HorizontalLayoutConfiguration">> => horizontal_layout_configuration(),
%%   <<"PresenterOnlyConfiguration">> => presenter_only_configuration(),
%%   <<"VerticalLayoutConfiguration">> => vertical_layout_configuration(),
%%   <<"VideoAttribute">> => video_attribute()
%% }
-type grid_view_configuration() :: #{binary() => any()}.

%% Example:
%% get_voice_tone_analysis_task_request() :: #{}
-type get_voice_tone_analysis_task_request() :: #{}.


%% Example:
%% real_time_alert_configuration() :: #{
%%   <<"Disabled">> => boolean(),
%%   <<"Rules">> => list(real_time_alert_rule()())
%% }
-type real_time_alert_configuration() :: #{binary() => any()}.


%% Example:
%% create_media_stream_pipeline_response() :: #{
%%   <<"MediaStreamPipeline">> => media_stream_pipeline()
%% }
-type create_media_stream_pipeline_response() :: #{binary() => any()}.

%% Example:
%% get_speaker_search_task_request() :: #{}
-type get_speaker_search_task_request() :: #{}.


%% Example:
%% create_media_insights_pipeline_configuration_request() :: #{
%%   <<"ClientRequestToken">> => string(),
%%   <<"Elements">> := list(media_insights_pipeline_configuration_element()()),
%%   <<"MediaInsightsPipelineConfigurationName">> := string(),
%%   <<"RealTimeAlertConfiguration">> => real_time_alert_configuration(),
%%   <<"ResourceAccessRoleArn">> := string(),
%%   <<"Tags">> => list(tag()())
%% }
-type create_media_insights_pipeline_configuration_request() :: #{binary() => any()}.


%% Example:
%% transcription_messages_concatenation_configuration() :: #{
%%   <<"State">> => list(any())
%% }
-type transcription_messages_concatenation_configuration() :: #{binary() => any()}.


%% Example:
%% amazon_transcribe_processor_configuration() :: #{
%%   <<"ContentIdentificationType">> => list(any()),
%%   <<"ContentRedactionType">> => list(any()),
%%   <<"EnablePartialResultsStabilization">> => boolean(),
%%   <<"FilterPartialResults">> => boolean(),
%%   <<"IdentifyLanguage">> => boolean(),
%%   <<"IdentifyMultipleLanguages">> => boolean(),
%%   <<"LanguageCode">> => list(any()),
%%   <<"LanguageModelName">> => string(),
%%   <<"LanguageOptions">> => string(),
%%   <<"PartialResultsStability">> => list(any()),
%%   <<"PiiEntityTypes">> => string(),
%%   <<"PreferredLanguage">> => list(any()),
%%   <<"ShowSpeakerLabel">> => boolean(),
%%   <<"VocabularyFilterMethod">> => list(any()),
%%   <<"VocabularyFilterName">> => string(),
%%   <<"VocabularyFilterNames">> => string(),
%%   <<"VocabularyName">> => string(),
%%   <<"VocabularyNames">> => string()
%% }
-type amazon_transcribe_processor_configuration() :: #{binary() => any()}.


%% Example:
%% s3_bucket_sink_configuration() :: #{
%%   <<"Destination">> => string()
%% }
-type s3_bucket_sink_configuration() :: #{binary() => any()}.


%% Example:
%% artifacts_configuration() :: #{
%%   <<"Audio">> => audio_artifacts_configuration(),
%%   <<"CompositedVideo">> => composited_video_artifacts_configuration(),
%%   <<"Content">> => content_artifacts_configuration(),
%%   <<"Video">> => video_artifacts_configuration()
%% }
-type artifacts_configuration() :: #{binary() => any()}.


%% Example:
%% create_media_insights_pipeline_response() :: #{
%%   <<"MediaInsightsPipeline">> => media_insights_pipeline()
%% }
-type create_media_insights_pipeline_response() :: #{binary() => any()}.


%% Example:
%% chime_sdk_meeting_concatenation_configuration() :: #{
%%   <<"ArtifactsConfiguration">> => artifacts_concatenation_configuration()
%% }
-type chime_sdk_meeting_concatenation_configuration() :: #{binary() => any()}.


%% Example:
%% update_media_pipeline_kinesis_video_stream_pool_request() :: #{
%%   <<"StreamConfiguration">> => kinesis_video_stream_configuration_update()
%% }
-type update_media_pipeline_kinesis_video_stream_pool_request() :: #{binary() => any()}.


%% Example:
%% kinesis_video_stream_pool_configuration() :: #{
%%   <<"CreatedTimestamp">> => non_neg_integer(),
%%   <<"PoolArn">> => string(),
%%   <<"PoolId">> => string(),
%%   <<"PoolName">> => string(),
%%   <<"PoolSize">> => integer(),
%%   <<"PoolStatus">> => list(any()),
%%   <<"StreamConfiguration">> => kinesis_video_stream_configuration(),
%%   <<"UpdatedTimestamp">> => non_neg_integer()
%% }
-type kinesis_video_stream_pool_configuration() :: #{binary() => any()}.


%% Example:
%% stream_configuration() :: #{
%%   <<"FragmentNumber">> => string(),
%%   <<"StreamArn">> => string(),
%%   <<"StreamChannelDefinition">> => stream_channel_definition()
%% }
-type stream_configuration() :: #{binary() => any()}.


%% Example:
%% stream_channel_definition() :: #{
%%   <<"ChannelDefinitions">> => list(channel_definition()()),
%%   <<"NumberOfChannels">> => integer()
%% }
-type stream_channel_definition() :: #{binary() => any()}.

-type create_media_capture_pipeline_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    resource_limit_exceeded_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type create_media_concatenation_pipeline_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    resource_limit_exceeded_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type create_media_insights_pipeline_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    resource_limit_exceeded_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type create_media_insights_pipeline_configuration_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    resource_limit_exceeded_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type create_media_live_connector_pipeline_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    resource_limit_exceeded_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type create_media_pipeline_kinesis_video_stream_pool_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    resource_limit_exceeded_exception() | 
    conflict_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type create_media_stream_pipeline_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    resource_limit_exceeded_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type delete_media_capture_pipeline_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type delete_media_insights_pipeline_configuration_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type delete_media_pipeline_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type delete_media_pipeline_kinesis_video_stream_pool_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type get_media_capture_pipeline_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type get_media_insights_pipeline_configuration_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type get_media_pipeline_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type get_media_pipeline_kinesis_video_stream_pool_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type get_speaker_search_task_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type get_voice_tone_analysis_task_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type list_media_capture_pipelines_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    resource_limit_exceeded_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type list_media_insights_pipeline_configurations_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    resource_limit_exceeded_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type list_media_pipeline_kinesis_video_stream_pools_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    resource_limit_exceeded_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type list_media_pipelines_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    resource_limit_exceeded_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type list_tags_for_resource_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type start_speaker_search_task_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type start_voice_tone_analysis_task_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type stop_speaker_search_task_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type stop_voice_tone_analysis_task_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type tag_resource_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type untag_resource_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type update_media_insights_pipeline_configuration_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type update_media_insights_pipeline_status_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type update_media_pipeline_kinesis_video_stream_pool_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a media pipeline.
-spec create_media_capture_pipeline(aws_client:aws_client(), create_media_capture_pipeline_request()) ->
    {ok, create_media_capture_pipeline_response(), tuple()} |
    {error, any()} |
    {error, create_media_capture_pipeline_errors(), tuple()}.
create_media_capture_pipeline(Client, Input) ->
    create_media_capture_pipeline(Client, Input, []).

-spec create_media_capture_pipeline(aws_client:aws_client(), create_media_capture_pipeline_request(), proplists:proplist()) ->
    {ok, create_media_capture_pipeline_response(), tuple()} |
    {error, any()} |
    {error, create_media_capture_pipeline_errors(), tuple()}.
create_media_capture_pipeline(Client, Input0, Options0) ->
    Method = post,
    Path = ["/sdk-media-capture-pipelines"],
    SuccessStatusCode = 201,
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

%% @doc Creates a media concatenation pipeline.
-spec create_media_concatenation_pipeline(aws_client:aws_client(), create_media_concatenation_pipeline_request()) ->
    {ok, create_media_concatenation_pipeline_response(), tuple()} |
    {error, any()} |
    {error, create_media_concatenation_pipeline_errors(), tuple()}.
create_media_concatenation_pipeline(Client, Input) ->
    create_media_concatenation_pipeline(Client, Input, []).

-spec create_media_concatenation_pipeline(aws_client:aws_client(), create_media_concatenation_pipeline_request(), proplists:proplist()) ->
    {ok, create_media_concatenation_pipeline_response(), tuple()} |
    {error, any()} |
    {error, create_media_concatenation_pipeline_errors(), tuple()}.
create_media_concatenation_pipeline(Client, Input0, Options0) ->
    Method = post,
    Path = ["/sdk-media-concatenation-pipelines"],
    SuccessStatusCode = 201,
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

%% @doc Creates a media insights pipeline.
-spec create_media_insights_pipeline(aws_client:aws_client(), create_media_insights_pipeline_request()) ->
    {ok, create_media_insights_pipeline_response(), tuple()} |
    {error, any()} |
    {error, create_media_insights_pipeline_errors(), tuple()}.
create_media_insights_pipeline(Client, Input) ->
    create_media_insights_pipeline(Client, Input, []).

-spec create_media_insights_pipeline(aws_client:aws_client(), create_media_insights_pipeline_request(), proplists:proplist()) ->
    {ok, create_media_insights_pipeline_response(), tuple()} |
    {error, any()} |
    {error, create_media_insights_pipeline_errors(), tuple()}.
create_media_insights_pipeline(Client, Input0, Options0) ->
    Method = post,
    Path = ["/media-insights-pipelines"],
    SuccessStatusCode = 201,
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

%% @doc A structure that contains the static configurations for a media
%% insights
%% pipeline.
-spec create_media_insights_pipeline_configuration(aws_client:aws_client(), create_media_insights_pipeline_configuration_request()) ->
    {ok, create_media_insights_pipeline_configuration_response(), tuple()} |
    {error, any()} |
    {error, create_media_insights_pipeline_configuration_errors(), tuple()}.
create_media_insights_pipeline_configuration(Client, Input) ->
    create_media_insights_pipeline_configuration(Client, Input, []).

-spec create_media_insights_pipeline_configuration(aws_client:aws_client(), create_media_insights_pipeline_configuration_request(), proplists:proplist()) ->
    {ok, create_media_insights_pipeline_configuration_response(), tuple()} |
    {error, any()} |
    {error, create_media_insights_pipeline_configuration_errors(), tuple()}.
create_media_insights_pipeline_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/media-insights-pipeline-configurations"],
    SuccessStatusCode = 201,
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

%% @doc Creates a media live connector pipeline in an Amazon Chime SDK
%% meeting.
-spec create_media_live_connector_pipeline(aws_client:aws_client(), create_media_live_connector_pipeline_request()) ->
    {ok, create_media_live_connector_pipeline_response(), tuple()} |
    {error, any()} |
    {error, create_media_live_connector_pipeline_errors(), tuple()}.
create_media_live_connector_pipeline(Client, Input) ->
    create_media_live_connector_pipeline(Client, Input, []).

-spec create_media_live_connector_pipeline(aws_client:aws_client(), create_media_live_connector_pipeline_request(), proplists:proplist()) ->
    {ok, create_media_live_connector_pipeline_response(), tuple()} |
    {error, any()} |
    {error, create_media_live_connector_pipeline_errors(), tuple()}.
create_media_live_connector_pipeline(Client, Input0, Options0) ->
    Method = post,
    Path = ["/sdk-media-live-connector-pipelines"],
    SuccessStatusCode = 201,
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

%% @doc Creates an Amazon Kinesis Video Stream pool for use with media stream
%% pipelines.
%%
%% If a meeting uses an opt-in Region as its
%% MediaRegion:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_meeting-chime_CreateMeeting.html#chimesdk-meeting-chime_CreateMeeting-request-MediaRegion,
%% the KVS stream must be in that same Region. For example, if a meeting uses
%% the `af-south-1' Region, the KVS stream must also be in
%% `af-south-1'. However, if the meeting uses a
%% Region that AWS turns on by default, the KVS stream can be in any
%% available Region, including an opt-in Region. For example, if the meeting
%% uses `ca-central-1', the KVS stream can be in
%% `eu-west-2', `us-east-1', `af-south-1', or any other Region
%% that the Amazon Chime SDK supports.
%%
%% To learn which AWS Region a meeting uses, call the GetMeeting:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_meeting-chime_GetMeeting.html
%% API and
%% use the MediaRegion:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_meeting-chime_CreateMeeting.html#chimesdk-meeting-chime_CreateMeeting-request-MediaRegion
%% parameter from the response.
%%
%% For more information about opt-in Regions, refer to Available Regions:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/sdk-available-regions.html
%% in the
%% Amazon Chime SDK Developer Guide, and
%% Specify which AWS Regions your account can use:
%% https://docs.aws.amazon.com/accounts/latest/reference/manage-acct-regions.html#rande-manage-enable.html,
%% in the AWS Account Management Reference Guide.
-spec create_media_pipeline_kinesis_video_stream_pool(aws_client:aws_client(), create_media_pipeline_kinesis_video_stream_pool_request()) ->
    {ok, create_media_pipeline_kinesis_video_stream_pool_response(), tuple()} |
    {error, any()} |
    {error, create_media_pipeline_kinesis_video_stream_pool_errors(), tuple()}.
create_media_pipeline_kinesis_video_stream_pool(Client, Input) ->
    create_media_pipeline_kinesis_video_stream_pool(Client, Input, []).

-spec create_media_pipeline_kinesis_video_stream_pool(aws_client:aws_client(), create_media_pipeline_kinesis_video_stream_pool_request(), proplists:proplist()) ->
    {ok, create_media_pipeline_kinesis_video_stream_pool_response(), tuple()} |
    {error, any()} |
    {error, create_media_pipeline_kinesis_video_stream_pool_errors(), tuple()}.
create_media_pipeline_kinesis_video_stream_pool(Client, Input0, Options0) ->
    Method = post,
    Path = ["/media-pipeline-kinesis-video-stream-pools"],
    SuccessStatusCode = 201,
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

%% @doc Creates a streaming media pipeline.
-spec create_media_stream_pipeline(aws_client:aws_client(), create_media_stream_pipeline_request()) ->
    {ok, create_media_stream_pipeline_response(), tuple()} |
    {error, any()} |
    {error, create_media_stream_pipeline_errors(), tuple()}.
create_media_stream_pipeline(Client, Input) ->
    create_media_stream_pipeline(Client, Input, []).

-spec create_media_stream_pipeline(aws_client:aws_client(), create_media_stream_pipeline_request(), proplists:proplist()) ->
    {ok, create_media_stream_pipeline_response(), tuple()} |
    {error, any()} |
    {error, create_media_stream_pipeline_errors(), tuple()}.
create_media_stream_pipeline(Client, Input0, Options0) ->
    Method = post,
    Path = ["/sdk-media-stream-pipelines"],
    SuccessStatusCode = 201,
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

%% @doc Deletes the media pipeline.
-spec delete_media_capture_pipeline(aws_client:aws_client(), binary() | list(), delete_media_capture_pipeline_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_media_capture_pipeline_errors(), tuple()}.
delete_media_capture_pipeline(Client, MediaPipelineId, Input) ->
    delete_media_capture_pipeline(Client, MediaPipelineId, Input, []).

-spec delete_media_capture_pipeline(aws_client:aws_client(), binary() | list(), delete_media_capture_pipeline_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_media_capture_pipeline_errors(), tuple()}.
delete_media_capture_pipeline(Client, MediaPipelineId, Input0, Options0) ->
    Method = delete,
    Path = ["/sdk-media-capture-pipelines/", aws_util:encode_uri(MediaPipelineId), ""],
    SuccessStatusCode = 204,
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

%% @doc Deletes the specified configuration settings.
-spec delete_media_insights_pipeline_configuration(aws_client:aws_client(), binary() | list(), delete_media_insights_pipeline_configuration_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_media_insights_pipeline_configuration_errors(), tuple()}.
delete_media_insights_pipeline_configuration(Client, Identifier, Input) ->
    delete_media_insights_pipeline_configuration(Client, Identifier, Input, []).

-spec delete_media_insights_pipeline_configuration(aws_client:aws_client(), binary() | list(), delete_media_insights_pipeline_configuration_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_media_insights_pipeline_configuration_errors(), tuple()}.
delete_media_insights_pipeline_configuration(Client, Identifier, Input0, Options0) ->
    Method = delete,
    Path = ["/media-insights-pipeline-configurations/", aws_util:encode_uri(Identifier), ""],
    SuccessStatusCode = 204,
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

%% @doc Deletes the media pipeline.
-spec delete_media_pipeline(aws_client:aws_client(), binary() | list(), delete_media_pipeline_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_media_pipeline_errors(), tuple()}.
delete_media_pipeline(Client, MediaPipelineId, Input) ->
    delete_media_pipeline(Client, MediaPipelineId, Input, []).

-spec delete_media_pipeline(aws_client:aws_client(), binary() | list(), delete_media_pipeline_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_media_pipeline_errors(), tuple()}.
delete_media_pipeline(Client, MediaPipelineId, Input0, Options0) ->
    Method = delete,
    Path = ["/sdk-media-pipelines/", aws_util:encode_uri(MediaPipelineId), ""],
    SuccessStatusCode = 204,
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

%% @doc Deletes an Amazon Kinesis Video Stream pool.
-spec delete_media_pipeline_kinesis_video_stream_pool(aws_client:aws_client(), binary() | list(), delete_media_pipeline_kinesis_video_stream_pool_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_media_pipeline_kinesis_video_stream_pool_errors(), tuple()}.
delete_media_pipeline_kinesis_video_stream_pool(Client, Identifier, Input) ->
    delete_media_pipeline_kinesis_video_stream_pool(Client, Identifier, Input, []).

-spec delete_media_pipeline_kinesis_video_stream_pool(aws_client:aws_client(), binary() | list(), delete_media_pipeline_kinesis_video_stream_pool_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_media_pipeline_kinesis_video_stream_pool_errors(), tuple()}.
delete_media_pipeline_kinesis_video_stream_pool(Client, Identifier, Input0, Options0) ->
    Method = delete,
    Path = ["/media-pipeline-kinesis-video-stream-pools/", aws_util:encode_uri(Identifier), ""],
    SuccessStatusCode = 204,
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

%% @doc Gets an existing media pipeline.
-spec get_media_capture_pipeline(aws_client:aws_client(), binary() | list()) ->
    {ok, get_media_capture_pipeline_response(), tuple()} |
    {error, any()} |
    {error, get_media_capture_pipeline_errors(), tuple()}.
get_media_capture_pipeline(Client, MediaPipelineId)
  when is_map(Client) ->
    get_media_capture_pipeline(Client, MediaPipelineId, #{}, #{}).

-spec get_media_capture_pipeline(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_media_capture_pipeline_response(), tuple()} |
    {error, any()} |
    {error, get_media_capture_pipeline_errors(), tuple()}.
get_media_capture_pipeline(Client, MediaPipelineId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_media_capture_pipeline(Client, MediaPipelineId, QueryMap, HeadersMap, []).

-spec get_media_capture_pipeline(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_media_capture_pipeline_response(), tuple()} |
    {error, any()} |
    {error, get_media_capture_pipeline_errors(), tuple()}.
get_media_capture_pipeline(Client, MediaPipelineId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/sdk-media-capture-pipelines/", aws_util:encode_uri(MediaPipelineId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the configuration settings for a media insights pipeline.
-spec get_media_insights_pipeline_configuration(aws_client:aws_client(), binary() | list()) ->
    {ok, get_media_insights_pipeline_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_media_insights_pipeline_configuration_errors(), tuple()}.
get_media_insights_pipeline_configuration(Client, Identifier)
  when is_map(Client) ->
    get_media_insights_pipeline_configuration(Client, Identifier, #{}, #{}).

-spec get_media_insights_pipeline_configuration(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_media_insights_pipeline_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_media_insights_pipeline_configuration_errors(), tuple()}.
get_media_insights_pipeline_configuration(Client, Identifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_media_insights_pipeline_configuration(Client, Identifier, QueryMap, HeadersMap, []).

-spec get_media_insights_pipeline_configuration(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_media_insights_pipeline_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_media_insights_pipeline_configuration_errors(), tuple()}.
get_media_insights_pipeline_configuration(Client, Identifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/media-insights-pipeline-configurations/", aws_util:encode_uri(Identifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets an existing media pipeline.
-spec get_media_pipeline(aws_client:aws_client(), binary() | list()) ->
    {ok, get_media_pipeline_response(), tuple()} |
    {error, any()} |
    {error, get_media_pipeline_errors(), tuple()}.
get_media_pipeline(Client, MediaPipelineId)
  when is_map(Client) ->
    get_media_pipeline(Client, MediaPipelineId, #{}, #{}).

-spec get_media_pipeline(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_media_pipeline_response(), tuple()} |
    {error, any()} |
    {error, get_media_pipeline_errors(), tuple()}.
get_media_pipeline(Client, MediaPipelineId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_media_pipeline(Client, MediaPipelineId, QueryMap, HeadersMap, []).

-spec get_media_pipeline(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_media_pipeline_response(), tuple()} |
    {error, any()} |
    {error, get_media_pipeline_errors(), tuple()}.
get_media_pipeline(Client, MediaPipelineId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/sdk-media-pipelines/", aws_util:encode_uri(MediaPipelineId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets an Kinesis video stream pool.
-spec get_media_pipeline_kinesis_video_stream_pool(aws_client:aws_client(), binary() | list()) ->
    {ok, get_media_pipeline_kinesis_video_stream_pool_response(), tuple()} |
    {error, any()} |
    {error, get_media_pipeline_kinesis_video_stream_pool_errors(), tuple()}.
get_media_pipeline_kinesis_video_stream_pool(Client, Identifier)
  when is_map(Client) ->
    get_media_pipeline_kinesis_video_stream_pool(Client, Identifier, #{}, #{}).

-spec get_media_pipeline_kinesis_video_stream_pool(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_media_pipeline_kinesis_video_stream_pool_response(), tuple()} |
    {error, any()} |
    {error, get_media_pipeline_kinesis_video_stream_pool_errors(), tuple()}.
get_media_pipeline_kinesis_video_stream_pool(Client, Identifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_media_pipeline_kinesis_video_stream_pool(Client, Identifier, QueryMap, HeadersMap, []).

-spec get_media_pipeline_kinesis_video_stream_pool(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_media_pipeline_kinesis_video_stream_pool_response(), tuple()} |
    {error, any()} |
    {error, get_media_pipeline_kinesis_video_stream_pool_errors(), tuple()}.
get_media_pipeline_kinesis_video_stream_pool(Client, Identifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/media-pipeline-kinesis-video-stream-pools/", aws_util:encode_uri(Identifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the details of the specified speaker search task.
-spec get_speaker_search_task(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_speaker_search_task_response(), tuple()} |
    {error, any()} |
    {error, get_speaker_search_task_errors(), tuple()}.
get_speaker_search_task(Client, Identifier, SpeakerSearchTaskId)
  when is_map(Client) ->
    get_speaker_search_task(Client, Identifier, SpeakerSearchTaskId, #{}, #{}).

-spec get_speaker_search_task(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_speaker_search_task_response(), tuple()} |
    {error, any()} |
    {error, get_speaker_search_task_errors(), tuple()}.
get_speaker_search_task(Client, Identifier, SpeakerSearchTaskId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_speaker_search_task(Client, Identifier, SpeakerSearchTaskId, QueryMap, HeadersMap, []).

-spec get_speaker_search_task(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_speaker_search_task_response(), tuple()} |
    {error, any()} |
    {error, get_speaker_search_task_errors(), tuple()}.
get_speaker_search_task(Client, Identifier, SpeakerSearchTaskId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/media-insights-pipelines/", aws_util:encode_uri(Identifier), "/speaker-search-tasks/", aws_util:encode_uri(SpeakerSearchTaskId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the details of a voice tone analysis task.
-spec get_voice_tone_analysis_task(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_voice_tone_analysis_task_response(), tuple()} |
    {error, any()} |
    {error, get_voice_tone_analysis_task_errors(), tuple()}.
get_voice_tone_analysis_task(Client, Identifier, VoiceToneAnalysisTaskId)
  when is_map(Client) ->
    get_voice_tone_analysis_task(Client, Identifier, VoiceToneAnalysisTaskId, #{}, #{}).

-spec get_voice_tone_analysis_task(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_voice_tone_analysis_task_response(), tuple()} |
    {error, any()} |
    {error, get_voice_tone_analysis_task_errors(), tuple()}.
get_voice_tone_analysis_task(Client, Identifier, VoiceToneAnalysisTaskId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_voice_tone_analysis_task(Client, Identifier, VoiceToneAnalysisTaskId, QueryMap, HeadersMap, []).

-spec get_voice_tone_analysis_task(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_voice_tone_analysis_task_response(), tuple()} |
    {error, any()} |
    {error, get_voice_tone_analysis_task_errors(), tuple()}.
get_voice_tone_analysis_task(Client, Identifier, VoiceToneAnalysisTaskId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/media-insights-pipelines/", aws_util:encode_uri(Identifier), "/voice-tone-analysis-tasks/", aws_util:encode_uri(VoiceToneAnalysisTaskId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of media pipelines.
-spec list_media_capture_pipelines(aws_client:aws_client()) ->
    {ok, list_media_capture_pipelines_response(), tuple()} |
    {error, any()} |
    {error, list_media_capture_pipelines_errors(), tuple()}.
list_media_capture_pipelines(Client)
  when is_map(Client) ->
    list_media_capture_pipelines(Client, #{}, #{}).

-spec list_media_capture_pipelines(aws_client:aws_client(), map(), map()) ->
    {ok, list_media_capture_pipelines_response(), tuple()} |
    {error, any()} |
    {error, list_media_capture_pipelines_errors(), tuple()}.
list_media_capture_pipelines(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_media_capture_pipelines(Client, QueryMap, HeadersMap, []).

-spec list_media_capture_pipelines(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_media_capture_pipelines_response(), tuple()} |
    {error, any()} |
    {error, list_media_capture_pipelines_errors(), tuple()}.
list_media_capture_pipelines(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/sdk-media-capture-pipelines"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the available media insights pipeline configurations.
-spec list_media_insights_pipeline_configurations(aws_client:aws_client()) ->
    {ok, list_media_insights_pipeline_configurations_response(), tuple()} |
    {error, any()} |
    {error, list_media_insights_pipeline_configurations_errors(), tuple()}.
list_media_insights_pipeline_configurations(Client)
  when is_map(Client) ->
    list_media_insights_pipeline_configurations(Client, #{}, #{}).

-spec list_media_insights_pipeline_configurations(aws_client:aws_client(), map(), map()) ->
    {ok, list_media_insights_pipeline_configurations_response(), tuple()} |
    {error, any()} |
    {error, list_media_insights_pipeline_configurations_errors(), tuple()}.
list_media_insights_pipeline_configurations(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_media_insights_pipeline_configurations(Client, QueryMap, HeadersMap, []).

-spec list_media_insights_pipeline_configurations(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_media_insights_pipeline_configurations_response(), tuple()} |
    {error, any()} |
    {error, list_media_insights_pipeline_configurations_errors(), tuple()}.
list_media_insights_pipeline_configurations(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/media-insights-pipeline-configurations"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the video stream pools in the media pipeline.
-spec list_media_pipeline_kinesis_video_stream_pools(aws_client:aws_client()) ->
    {ok, list_media_pipeline_kinesis_video_stream_pools_response(), tuple()} |
    {error, any()} |
    {error, list_media_pipeline_kinesis_video_stream_pools_errors(), tuple()}.
list_media_pipeline_kinesis_video_stream_pools(Client)
  when is_map(Client) ->
    list_media_pipeline_kinesis_video_stream_pools(Client, #{}, #{}).

-spec list_media_pipeline_kinesis_video_stream_pools(aws_client:aws_client(), map(), map()) ->
    {ok, list_media_pipeline_kinesis_video_stream_pools_response(), tuple()} |
    {error, any()} |
    {error, list_media_pipeline_kinesis_video_stream_pools_errors(), tuple()}.
list_media_pipeline_kinesis_video_stream_pools(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_media_pipeline_kinesis_video_stream_pools(Client, QueryMap, HeadersMap, []).

-spec list_media_pipeline_kinesis_video_stream_pools(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_media_pipeline_kinesis_video_stream_pools_response(), tuple()} |
    {error, any()} |
    {error, list_media_pipeline_kinesis_video_stream_pools_errors(), tuple()}.
list_media_pipeline_kinesis_video_stream_pools(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/media-pipeline-kinesis-video-stream-pools"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of media pipelines.
-spec list_media_pipelines(aws_client:aws_client()) ->
    {ok, list_media_pipelines_response(), tuple()} |
    {error, any()} |
    {error, list_media_pipelines_errors(), tuple()}.
list_media_pipelines(Client)
  when is_map(Client) ->
    list_media_pipelines(Client, #{}, #{}).

-spec list_media_pipelines(aws_client:aws_client(), map(), map()) ->
    {ok, list_media_pipelines_response(), tuple()} |
    {error, any()} |
    {error, list_media_pipelines_errors(), tuple()}.
list_media_pipelines(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_media_pipelines(Client, QueryMap, HeadersMap, []).

-spec list_media_pipelines(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_media_pipelines_response(), tuple()} |
    {error, any()} |
    {error, list_media_pipelines_errors(), tuple()}.
list_media_pipelines(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/sdk-media-pipelines"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the tags available for a media pipeline.
-spec list_tags_for_resource(aws_client:aws_client(), binary() | list()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceARN)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceARN, #{}, #{}).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceARN, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceARN, QueryMap, HeadersMap, []).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceARN, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/tags"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"arn">>, ResourceARN}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Starts a speaker search task.
%%
%% Before starting any speaker search tasks, you must provide all notices and
%% obtain all consents from the speaker as required under applicable privacy
%% and biometrics laws, and as required under the
%% AWS service terms: https://aws.amazon.com/service-terms/ for the Amazon
%% Chime SDK.
-spec start_speaker_search_task(aws_client:aws_client(), binary() | list(), start_speaker_search_task_request()) ->
    {ok, start_speaker_search_task_response(), tuple()} |
    {error, any()} |
    {error, start_speaker_search_task_errors(), tuple()}.
start_speaker_search_task(Client, Identifier, Input) ->
    start_speaker_search_task(Client, Identifier, Input, []).

-spec start_speaker_search_task(aws_client:aws_client(), binary() | list(), start_speaker_search_task_request(), proplists:proplist()) ->
    {ok, start_speaker_search_task_response(), tuple()} |
    {error, any()} |
    {error, start_speaker_search_task_errors(), tuple()}.
start_speaker_search_task(Client, Identifier, Input0, Options0) ->
    Method = post,
    Path = ["/media-insights-pipelines/", aws_util:encode_uri(Identifier), "/speaker-search-tasks?operation=start"],
    SuccessStatusCode = 201,
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

%% @doc Starts a voice tone analysis task.
%%
%% For more information about voice tone analysis, see
%% Using Amazon Chime SDK voice analytics:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/voice-analytics.html
%% in the Amazon Chime SDK Developer Guide.
%%
%% Before starting any voice tone analysis tasks, you must provide all
%% notices and obtain all consents from the speaker as required under
%% applicable privacy and biometrics laws, and as required under the
%% AWS service terms: https://aws.amazon.com/service-terms/ for the Amazon
%% Chime SDK.
-spec start_voice_tone_analysis_task(aws_client:aws_client(), binary() | list(), start_voice_tone_analysis_task_request()) ->
    {ok, start_voice_tone_analysis_task_response(), tuple()} |
    {error, any()} |
    {error, start_voice_tone_analysis_task_errors(), tuple()}.
start_voice_tone_analysis_task(Client, Identifier, Input) ->
    start_voice_tone_analysis_task(Client, Identifier, Input, []).

-spec start_voice_tone_analysis_task(aws_client:aws_client(), binary() | list(), start_voice_tone_analysis_task_request(), proplists:proplist()) ->
    {ok, start_voice_tone_analysis_task_response(), tuple()} |
    {error, any()} |
    {error, start_voice_tone_analysis_task_errors(), tuple()}.
start_voice_tone_analysis_task(Client, Identifier, Input0, Options0) ->
    Method = post,
    Path = ["/media-insights-pipelines/", aws_util:encode_uri(Identifier), "/voice-tone-analysis-tasks?operation=start"],
    SuccessStatusCode = 201,
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

%% @doc Stops a speaker search task.
-spec stop_speaker_search_task(aws_client:aws_client(), binary() | list(), binary() | list(), stop_speaker_search_task_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, stop_speaker_search_task_errors(), tuple()}.
stop_speaker_search_task(Client, Identifier, SpeakerSearchTaskId, Input) ->
    stop_speaker_search_task(Client, Identifier, SpeakerSearchTaskId, Input, []).

-spec stop_speaker_search_task(aws_client:aws_client(), binary() | list(), binary() | list(), stop_speaker_search_task_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, stop_speaker_search_task_errors(), tuple()}.
stop_speaker_search_task(Client, Identifier, SpeakerSearchTaskId, Input0, Options0) ->
    Method = post,
    Path = ["/media-insights-pipelines/", aws_util:encode_uri(Identifier), "/speaker-search-tasks/", aws_util:encode_uri(SpeakerSearchTaskId), "?operation=stop"],
    SuccessStatusCode = 204,
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

%% @doc Stops a voice tone analysis task.
-spec stop_voice_tone_analysis_task(aws_client:aws_client(), binary() | list(), binary() | list(), stop_voice_tone_analysis_task_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, stop_voice_tone_analysis_task_errors(), tuple()}.
stop_voice_tone_analysis_task(Client, Identifier, VoiceToneAnalysisTaskId, Input) ->
    stop_voice_tone_analysis_task(Client, Identifier, VoiceToneAnalysisTaskId, Input, []).

-spec stop_voice_tone_analysis_task(aws_client:aws_client(), binary() | list(), binary() | list(), stop_voice_tone_analysis_task_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, stop_voice_tone_analysis_task_errors(), tuple()}.
stop_voice_tone_analysis_task(Client, Identifier, VoiceToneAnalysisTaskId, Input0, Options0) ->
    Method = post,
    Path = ["/media-insights-pipelines/", aws_util:encode_uri(Identifier), "/voice-tone-analysis-tasks/", aws_util:encode_uri(VoiceToneAnalysisTaskId), "?operation=stop"],
    SuccessStatusCode = 204,
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

%% @doc The ARN of the media pipeline that you want to tag.
%%
%% Consists of the pipeline's endpoint region, resource ID, and pipeline
%% ID.
-spec tag_resource(aws_client:aws_client(), tag_resource_request()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input) ->
    tag_resource(Client, Input, []).

-spec tag_resource(aws_client:aws_client(), tag_resource_request(), proplists:proplist()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/tags?operation=tag-resource"],
    SuccessStatusCode = 204,
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

%% @doc Removes any tags from a media pipeline.
-spec untag_resource(aws_client:aws_client(), untag_resource_request()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input) ->
    untag_resource(Client, Input, []).

-spec untag_resource(aws_client:aws_client(), untag_resource_request(), proplists:proplist()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/tags?operation=untag-resource"],
    SuccessStatusCode = 204,
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

%% @doc Updates the media insights pipeline's configuration settings.
-spec update_media_insights_pipeline_configuration(aws_client:aws_client(), binary() | list(), update_media_insights_pipeline_configuration_request()) ->
    {ok, update_media_insights_pipeline_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_media_insights_pipeline_configuration_errors(), tuple()}.
update_media_insights_pipeline_configuration(Client, Identifier, Input) ->
    update_media_insights_pipeline_configuration(Client, Identifier, Input, []).

-spec update_media_insights_pipeline_configuration(aws_client:aws_client(), binary() | list(), update_media_insights_pipeline_configuration_request(), proplists:proplist()) ->
    {ok, update_media_insights_pipeline_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_media_insights_pipeline_configuration_errors(), tuple()}.
update_media_insights_pipeline_configuration(Client, Identifier, Input0, Options0) ->
    Method = put,
    Path = ["/media-insights-pipeline-configurations/", aws_util:encode_uri(Identifier), ""],
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

%% @doc Updates the status of a media insights pipeline.
-spec update_media_insights_pipeline_status(aws_client:aws_client(), binary() | list(), update_media_insights_pipeline_status_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_media_insights_pipeline_status_errors(), tuple()}.
update_media_insights_pipeline_status(Client, Identifier, Input) ->
    update_media_insights_pipeline_status(Client, Identifier, Input, []).

-spec update_media_insights_pipeline_status(aws_client:aws_client(), binary() | list(), update_media_insights_pipeline_status_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_media_insights_pipeline_status_errors(), tuple()}.
update_media_insights_pipeline_status(Client, Identifier, Input0, Options0) ->
    Method = put,
    Path = ["/media-insights-pipeline-status/", aws_util:encode_uri(Identifier), ""],
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

%% @doc Updates an Amazon Kinesis Video Stream pool in a media pipeline.
-spec update_media_pipeline_kinesis_video_stream_pool(aws_client:aws_client(), binary() | list(), update_media_pipeline_kinesis_video_stream_pool_request()) ->
    {ok, update_media_pipeline_kinesis_video_stream_pool_response(), tuple()} |
    {error, any()} |
    {error, update_media_pipeline_kinesis_video_stream_pool_errors(), tuple()}.
update_media_pipeline_kinesis_video_stream_pool(Client, Identifier, Input) ->
    update_media_pipeline_kinesis_video_stream_pool(Client, Identifier, Input, []).

-spec update_media_pipeline_kinesis_video_stream_pool(aws_client:aws_client(), binary() | list(), update_media_pipeline_kinesis_video_stream_pool_request(), proplists:proplist()) ->
    {ok, update_media_pipeline_kinesis_video_stream_pool_response(), tuple()} |
    {error, any()} |
    {error, update_media_pipeline_kinesis_video_stream_pool_errors(), tuple()}.
update_media_pipeline_kinesis_video_stream_pool(Client, Identifier, Input0, Options0) ->
    Method = put,
    Path = ["/media-pipeline-kinesis-video-stream-pools/", aws_util:encode_uri(Identifier), ""],
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
    Client1 = Client#{service => <<"chime">>},
    Host = build_host(<<"media-pipelines-chime">>, Client1),
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
