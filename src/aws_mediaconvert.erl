%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc AWS Elemental MediaConvert
-module(aws_mediaconvert).

-export([associate_certificate/2,
         associate_certificate/3,
         cancel_job/3,
         cancel_job/4,
         create_job/2,
         create_job/3,
         create_job_template/2,
         create_job_template/3,
         create_preset/2,
         create_preset/3,
         create_queue/2,
         create_queue/3,
         create_resource_share/2,
         create_resource_share/3,
         delete_job_template/3,
         delete_job_template/4,
         delete_policy/2,
         delete_policy/3,
         delete_preset/3,
         delete_preset/4,
         delete_queue/3,
         delete_queue/4,
         describe_endpoints/2,
         describe_endpoints/3,
         disassociate_certificate/3,
         disassociate_certificate/4,
         get_job/2,
         get_job/4,
         get_job/5,
         get_job_template/2,
         get_job_template/4,
         get_job_template/5,
         get_jobs_query_results/2,
         get_jobs_query_results/4,
         get_jobs_query_results/5,
         get_policy/1,
         get_policy/3,
         get_policy/4,
         get_preset/2,
         get_preset/4,
         get_preset/5,
         get_queue/2,
         get_queue/4,
         get_queue/5,
         list_job_templates/1,
         list_job_templates/3,
         list_job_templates/4,
         list_jobs/1,
         list_jobs/3,
         list_jobs/4,
         list_presets/1,
         list_presets/3,
         list_presets/4,
         list_queues/1,
         list_queues/3,
         list_queues/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         list_versions/1,
         list_versions/3,
         list_versions/4,
         probe/2,
         probe/3,
         put_policy/2,
         put_policy/3,
         search_jobs/1,
         search_jobs/3,
         search_jobs/4,
         start_jobs_query/2,
         start_jobs_query/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/3,
         untag_resource/4,
         update_job_template/3,
         update_job_template/4,
         update_preset/3,
         update_preset/4,
         update_queue/3,
         update_queue/4]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% cancel_job_request() :: #{}
-type cancel_job_request() :: #{}.


%% Example:
%% video_overlay() :: #{
%%   <<"Crop">> => video_overlay_crop(),
%%   <<"EndTimecode">> => string(),
%%   <<"InitialPosition">> => video_overlay_position(),
%%   <<"Input">> => video_overlay_input(),
%%   <<"Playback">> => list(any()),
%%   <<"StartTimecode">> => string(),
%%   <<"Transitions">> => list(video_overlay_transition())
%% }
-type video_overlay() :: #{binary() => any()}.


%% Example:
%% deinterlacer() :: #{
%%   <<"Algorithm">> => list(any()),
%%   <<"Control">> => list(any()),
%%   <<"Mode">> => list(any())
%% }
-type deinterlacer() :: #{binary() => any()}.


%% Example:
%% xavc4k_intra_vbr_profile_settings() :: #{
%%   <<"XavcClass">> => list(any())
%% }
-type xavc4k_intra_vbr_profile_settings() :: #{binary() => any()}.

%% Example:
%% create_resource_share_response() :: #{}
-type create_resource_share_response() :: #{}.


%% Example:
%% output_detail() :: #{
%%   <<"DurationInMs">> => integer(),
%%   <<"VideoDetails">> => video_detail()
%% }
-type output_detail() :: #{binary() => any()}.


%% Example:
%% mp4_settings() :: #{
%%   <<"AudioDuration">> => list(any()),
%%   <<"C2paManifest">> => list(any()),
%%   <<"CertificateSecret">> => string(),
%%   <<"CslgAtom">> => list(any()),
%%   <<"CttsVersion">> => integer(),
%%   <<"FreeSpaceBox">> => list(any()),
%%   <<"MoovPlacement">> => list(any()),
%%   <<"Mp4MajorBrand">> => string(),
%%   <<"SigningKmsKey">> => string()
%% }
-type mp4_settings() :: #{binary() => any()}.


%% Example:
%% acceleration_settings() :: #{
%%   <<"Mode">> => list(any())
%% }
-type acceleration_settings() :: #{binary() => any()}.


%% Example:
%% file_group_settings() :: #{
%%   <<"Destination">> => string(),
%%   <<"DestinationSettings">> => destination_settings()
%% }
-type file_group_settings() :: #{binary() => any()}.

%% Example:
%% delete_preset_response() :: #{}
-type delete_preset_response() :: #{}.


%% Example:
%% motion_image_insertion_framerate() :: #{
%%   <<"FramerateDenominator">> => integer(),
%%   <<"FramerateNumerator">> => integer()
%% }
-type motion_image_insertion_framerate() :: #{binary() => any()}.


%% Example:
%% mxf_settings() :: #{
%%   <<"AfdSignaling">> => list(any()),
%%   <<"Profile">> => list(any()),
%%   <<"XavcProfileSettings">> => mxf_xavc_profile_settings()
%% }
-type mxf_settings() :: #{binary() => any()}.


%% Example:
%% get_queue_response() :: #{
%%   <<"Queue">> => queue()
%% }
-type get_queue_response() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"Arn">> := string(),
%%   <<"Tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% update_job_template_request() :: #{
%%   <<"AccelerationSettings">> => acceleration_settings(),
%%   <<"Category">> => string(),
%%   <<"Description">> => string(),
%%   <<"HopDestinations">> => list(hop_destination()),
%%   <<"Priority">> => integer(),
%%   <<"Queue">> => string(),
%%   <<"Settings">> => job_template_settings(),
%%   <<"StatusUpdateInterval">> => list(any())
%% }
-type update_job_template_request() :: #{binary() => any()}.


%% Example:
%% prores_settings() :: #{
%%   <<"ChromaSampling">> => list(any()),
%%   <<"CodecProfile">> => list(any()),
%%   <<"FramerateControl">> => list(any()),
%%   <<"FramerateConversionAlgorithm">> => list(any()),
%%   <<"FramerateDenominator">> => integer(),
%%   <<"FramerateNumerator">> => integer(),
%%   <<"InterlaceMode">> => list(any()),
%%   <<"ParControl">> => list(any()),
%%   <<"ParDenominator">> => integer(),
%%   <<"ParNumerator">> => integer(),
%%   <<"PerFrameMetrics">> => list(list(any())()),
%%   <<"ScanTypeConversionMode">> => list(any()),
%%   <<"SlowPal">> => list(any()),
%%   <<"Telecine">> => list(any())
%% }
-type prores_settings() :: #{binary() => any()}.


%% Example:
%% create_job_template_response() :: #{
%%   <<"JobTemplate">> => job_template()
%% }
-type create_job_template_response() :: #{binary() => any()}.


%% Example:
%% advanced_input_filter_settings() :: #{
%%   <<"AddTexture">> => list(any()),
%%   <<"Sharpening">> => list(any())
%% }
-type advanced_input_filter_settings() :: #{binary() => any()}.


%% Example:
%% list_queues_request() :: #{
%%   <<"ListBy">> => list(any()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"Order">> => list(any())
%% }
-type list_queues_request() :: #{binary() => any()}.


%% Example:
%% partner_watermarking() :: #{
%%   <<"NexguardFileMarkerSettings">> => nex_guard_file_marker_settings()
%% }
-type partner_watermarking() :: #{binary() => any()}.


%% Example:
%% container() :: #{
%%   <<"Duration">> => float(),
%%   <<"Format">> => list(any()),
%%   <<"Tracks">> => list(track())
%% }
-type container() :: #{binary() => any()}.


%% Example:
%% rectangle() :: #{
%%   <<"Height">> => integer(),
%%   <<"Width">> => integer(),
%%   <<"X">> => integer(),
%%   <<"Y">> => integer()
%% }
-type rectangle() :: #{binary() => any()}.


%% Example:
%% force_include_rendition_size() :: #{
%%   <<"Height">> => integer(),
%%   <<"Width">> => integer()
%% }
-type force_include_rendition_size() :: #{binary() => any()}.


%% Example:
%% mov_settings() :: #{
%%   <<"ClapAtom">> => list(any()),
%%   <<"CslgAtom">> => list(any()),
%%   <<"Mpeg2FourCCControl">> => list(any()),
%%   <<"PaddingControl">> => list(any()),
%%   <<"Reference">> => list(any())
%% }
-type mov_settings() :: #{binary() => any()}.


%% Example:
%% create_job_response() :: #{
%%   <<"Job">> => job()
%% }
-type create_job_response() :: #{binary() => any()}.

%% Example:
%% delete_job_template_response() :: #{}
-type delete_job_template_response() :: #{}.


%% Example:
%% hls_caption_language_mapping() :: #{
%%   <<"CaptionChannel">> => integer(),
%%   <<"CustomLanguageCode">> => string(),
%%   <<"LanguageCode">> => list(any()),
%%   <<"LanguageDescription">> => string()
%% }
-type hls_caption_language_mapping() :: #{binary() => any()}.


%% Example:
%% create_preset_request() :: #{
%%   <<"Category">> => string(),
%%   <<"Description">> => string(),
%%   <<"Name">> := string(),
%%   <<"Settings">> := preset_settings(),
%%   <<"Tags">> => map()
%% }
-type create_preset_request() :: #{binary() => any()}.


%% Example:
%% s3_encryption_settings() :: #{
%%   <<"EncryptionType">> => list(any()),
%%   <<"KmsEncryptionContext">> => string(),
%%   <<"KmsKeyArn">> => string()
%% }
-type s3_encryption_settings() :: #{binary() => any()}.


%% Example:
%% create_resource_share_request() :: #{
%%   <<"JobId">> := string(),
%%   <<"SupportCaseId">> := string()
%% }
-type create_resource_share_request() :: #{binary() => any()}.


%% Example:
%% start_jobs_query_request() :: #{
%%   <<"FilterList">> => list(jobs_query_filter()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"Order">> => list(any())
%% }
-type start_jobs_query_request() :: #{binary() => any()}.


%% Example:
%% mp2_settings() :: #{
%%   <<"AudioDescriptionMix">> => list(any()),
%%   <<"Bitrate">> => integer(),
%%   <<"Channels">> => integer(),
%%   <<"SampleRate">> => integer()
%% }
-type mp2_settings() :: #{binary() => any()}.


%% Example:
%% jobs_query_filter() :: #{
%%   <<"Key">> => list(any()),
%%   <<"Values">> => list(string())
%% }
-type jobs_query_filter() :: #{binary() => any()}.


%% Example:
%% extended_data_services() :: #{
%%   <<"CopyProtectionAction">> => list(any()),
%%   <<"VchipAction">> => list(any())
%% }
-type extended_data_services() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% list_presets_request() :: #{
%%   <<"Category">> => string(),
%%   <<"ListBy">> => list(any()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"Order">> => list(any())
%% }
-type list_presets_request() :: #{binary() => any()}.


%% Example:
%% audio_channel_tagging_settings() :: #{
%%   <<"ChannelTag">> => list(any()),
%%   <<"ChannelTags">> => list(list(any())())
%% }
-type audio_channel_tagging_settings() :: #{binary() => any()}.


%% Example:
%% nielsen_configuration() :: #{
%%   <<"BreakoutCode">> => integer(),
%%   <<"DistributorId">> => string()
%% }
-type nielsen_configuration() :: #{binary() => any()}.


%% Example:
%% caption_selector() :: #{
%%   <<"CustomLanguageCode">> => string(),
%%   <<"LanguageCode">> => list(any()),
%%   <<"SourceSettings">> => caption_source_settings()
%% }
-type caption_selector() :: #{binary() => any()}.


%% Example:
%% timecode_burnin() :: #{
%%   <<"FontSize">> => integer(),
%%   <<"Position">> => list(any()),
%%   <<"Prefix">> => string()
%% }
-type timecode_burnin() :: #{binary() => any()}.


%% Example:
%% list_jobs_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"Order">> => list(any()),
%%   <<"Queue">> => string(),
%%   <<"Status">> => list(any())
%% }
-type list_jobs_request() :: #{binary() => any()}.


%% Example:
%% get_jobs_query_results_response() :: #{
%%   <<"Jobs">> => list(job()),
%%   <<"NextToken">> => string(),
%%   <<"Status">> => list(any())
%% }
-type get_jobs_query_results_response() :: #{binary() => any()}.

%% Example:
%% get_policy_request() :: #{}
-type get_policy_request() :: #{}.


%% Example:
%% forbidden_exception() :: #{
%%   <<"Message">> => string()
%% }
-type forbidden_exception() :: #{binary() => any()}.


%% Example:
%% destination_settings() :: #{
%%   <<"S3Settings">> => s3_destination_settings()
%% }
-type destination_settings() :: #{binary() => any()}.


%% Example:
%% audio_codec_settings() :: #{
%%   <<"AacSettings">> => aac_settings(),
%%   <<"Ac3Settings">> => ac3_settings(),
%%   <<"AiffSettings">> => aiff_settings(),
%%   <<"Codec">> => list(any()),
%%   <<"Eac3AtmosSettings">> => eac3_atmos_settings(),
%%   <<"Eac3Settings">> => eac3_settings(),
%%   <<"FlacSettings">> => flac_settings(),
%%   <<"Mp2Settings">> => mp2_settings(),
%%   <<"Mp3Settings">> => mp3_settings(),
%%   <<"OpusSettings">> => opus_settings(),
%%   <<"VorbisSettings">> => vorbis_settings(),
%%   <<"WavSettings">> => wav_settings()
%% }
-type audio_codec_settings() :: #{binary() => any()}.


%% Example:
%% resource_tags() :: #{
%%   <<"Arn">> => string(),
%%   <<"Tags">> => map()
%% }
-type resource_tags() :: #{binary() => any()}.


%% Example:
%% aiff_settings() :: #{
%%   <<"BitDepth">> => integer(),
%%   <<"Channels">> => integer(),
%%   <<"SampleRate">> => integer()
%% }
-type aiff_settings() :: #{binary() => any()}.


%% Example:
%% esam_settings() :: #{
%%   <<"ManifestConfirmConditionNotification">> => esam_manifest_confirm_condition_notification(),
%%   <<"ResponseSignalPreroll">> => integer(),
%%   <<"SignalProcessingNotification">> => esam_signal_processing_notification()
%% }
-type esam_settings() :: #{binary() => any()}.


%% Example:
%% burnin_destination_settings() :: #{
%%   <<"Alignment">> => list(any()),
%%   <<"ApplyFontColor">> => list(any()),
%%   <<"BackgroundColor">> => list(any()),
%%   <<"BackgroundOpacity">> => integer(),
%%   <<"FallbackFont">> => list(any()),
%%   <<"FontColor">> => list(any()),
%%   <<"FontFileBold">> => string(),
%%   <<"FontFileBoldItalic">> => string(),
%%   <<"FontFileItalic">> => string(),
%%   <<"FontFileRegular">> => string(),
%%   <<"FontOpacity">> => integer(),
%%   <<"FontResolution">> => integer(),
%%   <<"FontScript">> => list(any()),
%%   <<"FontSize">> => integer(),
%%   <<"HexFontColor">> => string(),
%%   <<"OutlineColor">> => list(any()),
%%   <<"OutlineSize">> => integer(),
%%   <<"RemoveRubyReserveAttributes">> => list(any()),
%%   <<"ShadowColor">> => list(any()),
%%   <<"ShadowOpacity">> => integer(),
%%   <<"ShadowXOffset">> => integer(),
%%   <<"ShadowYOffset">> => integer(),
%%   <<"StylePassthrough">> => list(any()),
%%   <<"TeletextSpacing">> => list(any()),
%%   <<"XPosition">> => integer(),
%%   <<"YPosition">> => integer()
%% }
-type burnin_destination_settings() :: #{binary() => any()}.


%% Example:
%% hls_rendition_group_settings() :: #{
%%   <<"RenditionGroupId">> => string(),
%%   <<"RenditionLanguageCode">> => list(any()),
%%   <<"RenditionName">> => string()
%% }
-type hls_rendition_group_settings() :: #{binary() => any()}.


%% Example:
%% xavc4k_profile_settings() :: #{
%%   <<"BitrateClass">> => list(any()),
%%   <<"CodecProfile">> => list(any()),
%%   <<"FlickerAdaptiveQuantization">> => list(any()),
%%   <<"GopBReference">> => list(any()),
%%   <<"GopClosedCadence">> => integer(),
%%   <<"HrdBufferSize">> => integer(),
%%   <<"QualityTuningLevel">> => list(any()),
%%   <<"Slices">> => integer()
%% }
-type xavc4k_profile_settings() :: #{binary() => any()}.


%% Example:
%% color_corrector() :: #{
%%   <<"Brightness">> => integer(),
%%   <<"ClipLimits">> => clip_limits(),
%%   <<"ColorSpaceConversion">> => list(any()),
%%   <<"Contrast">> => integer(),
%%   <<"Hdr10Metadata">> => hdr10_metadata(),
%%   <<"HdrToSdrToneMapper">> => list(any()),
%%   <<"Hue">> => integer(),
%%   <<"MaxLuminance">> => integer(),
%%   <<"SampleRangeConversion">> => list(any()),
%%   <<"Saturation">> => integer(),
%%   <<"SdrReferenceWhiteLevel">> => integer()
%% }
-type color_corrector() :: #{binary() => any()}.


%% Example:
%% aac_settings() :: #{
%%   <<"AudioDescriptionBroadcasterMix">> => list(any()),
%%   <<"Bitrate">> => integer(),
%%   <<"CodecProfile">> => list(any()),
%%   <<"CodingMode">> => list(any()),
%%   <<"LoudnessMeasurementMode">> => list(any()),
%%   <<"RapInterval">> => integer(),
%%   <<"RateControlMode">> => list(any()),
%%   <<"RawFormat">> => list(any()),
%%   <<"SampleRate">> => integer(),
%%   <<"Specification">> => list(any()),
%%   <<"TargetLoudnessRange">> => integer(),
%%   <<"VbrQuality">> => list(any())
%% }
-type aac_settings() :: #{binary() => any()}.


%% Example:
%% bandwidth_reduction_filter() :: #{
%%   <<"Sharpening">> => list(any()),
%%   <<"Strength">> => list(any())
%% }
-type bandwidth_reduction_filter() :: #{binary() => any()}.


%% Example:
%% metadata() :: #{
%%   <<"ETag">> => string(),
%%   <<"FileSize">> => float(),
%%   <<"LastModified">> => non_neg_integer(),
%%   <<"MimeType">> => string()
%% }
-type metadata() :: #{binary() => any()}.


%% Example:
%% input_video_generator() :: #{
%%   <<"Channels">> => integer(),
%%   <<"Duration">> => integer(),
%%   <<"FramerateDenominator">> => integer(),
%%   <<"FramerateNumerator">> => integer(),
%%   <<"Height">> => integer(),
%%   <<"SampleRate">> => integer(),
%%   <<"Width">> => integer()
%% }
-type input_video_generator() :: #{binary() => any()}.


%% Example:
%% describe_endpoints_response() :: #{
%%   <<"Endpoints">> => list(endpoint()),
%%   <<"NextToken">> => string()
%% }
-type describe_endpoints_response() :: #{binary() => any()}.


%% Example:
%% video_overlay_position() :: #{
%%   <<"Height">> => integer(),
%%   <<"Opacity">> => integer(),
%%   <<"Unit">> => list(any()),
%%   <<"Width">> => integer(),
%%   <<"XPosition">> => integer(),
%%   <<"YPosition">> => integer()
%% }
-type video_overlay_position() :: #{binary() => any()}.


%% Example:
%% job_template() :: #{
%%   <<"AccelerationSettings">> => acceleration_settings(),
%%   <<"Arn">> => string(),
%%   <<"Category">> => string(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"HopDestinations">> => list(hop_destination()),
%%   <<"LastUpdated">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"Priority">> => integer(),
%%   <<"Queue">> => string(),
%%   <<"Settings">> => job_template_settings(),
%%   <<"StatusUpdateInterval">> => list(any()),
%%   <<"Type">> => list(any())
%% }
-type job_template() :: #{binary() => any()}.


%% Example:
%% automated_abr_rule() :: #{
%%   <<"AllowedRenditions">> => list(allowed_rendition_size()),
%%   <<"ForceIncludeRenditions">> => list(force_include_rendition_size()),
%%   <<"MinBottomRenditionSize">> => min_bottom_rendition_size(),
%%   <<"MinTopRenditionSize">> => min_top_rendition_size(),
%%   <<"Type">> => list(any())
%% }
-type automated_abr_rule() :: #{binary() => any()}.


%% Example:
%% m3u8_settings() :: #{
%%   <<"AudioDuration">> => list(any()),
%%   <<"AudioFramesPerPes">> => integer(),
%%   <<"AudioPids">> => list(integer()),
%%   <<"AudioPtsOffsetDelta">> => integer(),
%%   <<"DataPTSControl">> => list(any()),
%%   <<"MaxPcrInterval">> => integer(),
%%   <<"NielsenId3">> => list(any()),
%%   <<"PatInterval">> => integer(),
%%   <<"PcrControl">> => list(any()),
%%   <<"PcrPid">> => integer(),
%%   <<"PmtInterval">> => integer(),
%%   <<"PmtPid">> => integer(),
%%   <<"PrivateMetadataPid">> => integer(),
%%   <<"ProgramNumber">> => integer(),
%%   <<"PtsOffset">> => integer(),
%%   <<"PtsOffsetMode">> => list(any()),
%%   <<"Scte35Pid">> => integer(),
%%   <<"Scte35Source">> => list(any()),
%%   <<"TimedMetadata">> => list(any()),
%%   <<"TimedMetadataPid">> => integer(),
%%   <<"TransportStreamId">> => integer(),
%%   <<"VideoPid">> => integer()
%% }
-type m3u8_settings() :: #{binary() => any()}.


%% Example:
%% list_jobs_response() :: #{
%%   <<"Jobs">> => list(job()),
%%   <<"NextToken">> => string()
%% }
-type list_jobs_response() :: #{binary() => any()}.


%% Example:
%% create_job_request() :: #{
%%   <<"AccelerationSettings">> => acceleration_settings(),
%%   <<"BillingTagsSource">> => list(any()),
%%   <<"ClientRequestToken">> => string(),
%%   <<"HopDestinations">> => list(hop_destination()),
%%   <<"JobEngineVersion">> => string(),
%%   <<"JobTemplate">> => string(),
%%   <<"Priority">> => integer(),
%%   <<"Queue">> => string(),
%%   <<"Role">> := string(),
%%   <<"Settings">> := job_settings(),
%%   <<"SimulateReservedQueue">> => list(any()),
%%   <<"StatusUpdateInterval">> => list(any()),
%%   <<"Tags">> => map(),
%%   <<"UserMetadata">> => map()
%% }
-type create_job_request() :: #{binary() => any()}.


%% Example:
%% nex_guard_file_marker_settings() :: #{
%%   <<"License">> => string(),
%%   <<"Payload">> => integer(),
%%   <<"Preset">> => string(),
%%   <<"Strength">> => list(any())
%% }
-type nex_guard_file_marker_settings() :: #{binary() => any()}.


%% Example:
%% ms_smooth_encryption_settings() :: #{
%%   <<"SpekeKeyProvider">> => speke_key_provider()
%% }
-type ms_smooth_encryption_settings() :: #{binary() => any()}.


%% Example:
%% audio_pitch_correction_settings() :: #{
%%   <<"SlowPalPitchCorrection">> => list(any())
%% }
-type audio_pitch_correction_settings() :: #{binary() => any()}.


%% Example:
%% dvb_sub_source_settings() :: #{
%%   <<"Pid">> => integer()
%% }
-type dvb_sub_source_settings() :: #{binary() => any()}.


%% Example:
%% reservation_plan_settings() :: #{
%%   <<"Commitment">> => list(any()),
%%   <<"RenewalType">> => list(any()),
%%   <<"ReservedSlots">> => integer()
%% }
-type reservation_plan_settings() :: #{binary() => any()}.


%% Example:
%% queue() :: #{
%%   <<"Arn">> => string(),
%%   <<"ConcurrentJobs">> => integer(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"LastUpdated">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"PricingPlan">> => list(any()),
%%   <<"ProgressingJobsCount">> => integer(),
%%   <<"ReservationPlan">> => reservation_plan(),
%%   <<"ServiceOverrides">> => list(service_override()),
%%   <<"Status">> => list(any()),
%%   <<"SubmittedJobsCount">> => integer(),
%%   <<"Type">> => list(any())
%% }
-type queue() :: #{binary() => any()}.

%% Example:
%% delete_policy_response() :: #{}
-type delete_policy_response() :: #{}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"TagKeys">> => list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% update_queue_request() :: #{
%%   <<"ConcurrentJobs">> => integer(),
%%   <<"Description">> => string(),
%%   <<"ReservationPlanSettings">> => reservation_plan_settings(),
%%   <<"Status">> => list(any())
%% }
-type update_queue_request() :: #{binary() => any()}.


%% Example:
%% too_many_requests_exception() :: #{
%%   <<"Message">> => string()
%% }
-type too_many_requests_exception() :: #{binary() => any()}.


%% Example:
%% flac_settings() :: #{
%%   <<"BitDepth">> => integer(),
%%   <<"Channels">> => integer(),
%%   <<"SampleRate">> => integer()
%% }
-type flac_settings() :: #{binary() => any()}.


%% Example:
%% s3_destination_access_control() :: #{
%%   <<"CannedAcl">> => list(any())
%% }
-type s3_destination_access_control() :: #{binary() => any()}.


%% Example:
%% static_key_provider() :: #{
%%   <<"KeyFormat">> => string(),
%%   <<"KeyFormatVersions">> => string(),
%%   <<"StaticKeyValue">> => string(),
%%   <<"Url">> => string()
%% }
-type static_key_provider() :: #{binary() => any()}.


%% Example:
%% job_template_settings() :: #{
%%   <<"AdAvailOffset">> => integer(),
%%   <<"AvailBlanking">> => avail_blanking(),
%%   <<"ColorConversion3DLUTSettings">> => list(color_conversion3_d_l_u_t_setting()),
%%   <<"Esam">> => esam_settings(),
%%   <<"ExtendedDataServices">> => extended_data_services(),
%%   <<"FollowSource">> => integer(),
%%   <<"Inputs">> => list(input_template()),
%%   <<"KantarWatermark">> => kantar_watermark_settings(),
%%   <<"MotionImageInserter">> => motion_image_inserter(),
%%   <<"NielsenConfiguration">> => nielsen_configuration(),
%%   <<"NielsenNonLinearWatermark">> => nielsen_non_linear_watermark_settings(),
%%   <<"OutputGroups">> => list(output_group()),
%%   <<"TimecodeConfig">> => timecode_config(),
%%   <<"TimedMetadataInsertion">> => timed_metadata_insertion()
%% }
-type job_template_settings() :: #{binary() => any()}.


%% Example:
%% track() :: #{
%%   <<"AudioProperties">> => audio_properties(),
%%   <<"Codec">> => list(any()),
%%   <<"DataProperties">> => data_properties(),
%%   <<"Duration">> => float(),
%%   <<"Index">> => integer(),
%%   <<"TrackType">> => list(any()),
%%   <<"VideoProperties">> => video_properties()
%% }
-type track() :: #{binary() => any()}.


%% Example:
%% track_mapping() :: #{
%%   <<"AudioTrackIndexes">> => list(integer()),
%%   <<"DataTrackIndexes">> => list(integer()),
%%   <<"VideoTrackIndexes">> => list(integer())
%% }
-type track_mapping() :: #{binary() => any()}.


%% Example:
%% speke_key_provider_cmaf() :: #{
%%   <<"CertificateArn">> => string(),
%%   <<"DashSignaledSystemIds">> => list(string()),
%%   <<"EncryptionContractConfiguration">> => encryption_contract_configuration(),
%%   <<"HlsSignaledSystemIds">> => list(string()),
%%   <<"ResourceId">> => string(),
%%   <<"Url">> => string()
%% }
-type speke_key_provider_cmaf() :: #{binary() => any()}.


%% Example:
%% video_description() :: #{
%%   <<"AfdSignaling">> => list(any()),
%%   <<"AntiAlias">> => list(any()),
%%   <<"ChromaPositionMode">> => list(any()),
%%   <<"CodecSettings">> => video_codec_settings(),
%%   <<"ColorMetadata">> => list(any()),
%%   <<"Crop">> => rectangle(),
%%   <<"DropFrameTimecode">> => list(any()),
%%   <<"FixedAfd">> => integer(),
%%   <<"Height">> => integer(),
%%   <<"Position">> => rectangle(),
%%   <<"RespondToAfd">> => list(any()),
%%   <<"ScalingBehavior">> => list(any()),
%%   <<"Sharpness">> => integer(),
%%   <<"TimecodeInsertion">> => list(any()),
%%   <<"TimecodeTrack">> => list(any()),
%%   <<"VideoPreprocessors">> => video_preprocessor(),
%%   <<"Width">> => integer()
%% }
-type video_description() :: #{binary() => any()}.


%% Example:
%% input_template() :: #{
%%   <<"AdvancedInputFilter">> => list(any()),
%%   <<"AdvancedInputFilterSettings">> => advanced_input_filter_settings(),
%%   <<"AudioSelectorGroups">> => map(),
%%   <<"AudioSelectors">> => map(),
%%   <<"CaptionSelectors">> => map(),
%%   <<"Crop">> => rectangle(),
%%   <<"DeblockFilter">> => list(any()),
%%   <<"DenoiseFilter">> => list(any()),
%%   <<"DolbyVisionMetadataXml">> => string(),
%%   <<"DynamicAudioSelectors">> => map(),
%%   <<"FilterEnable">> => list(any()),
%%   <<"FilterStrength">> => integer(),
%%   <<"ImageInserter">> => image_inserter(),
%%   <<"InputClippings">> => list(input_clipping()),
%%   <<"InputScanType">> => list(any()),
%%   <<"Position">> => rectangle(),
%%   <<"ProgramNumber">> => integer(),
%%   <<"PsiControl">> => list(any()),
%%   <<"TimecodeSource">> => list(any()),
%%   <<"TimecodeStart">> => string(),
%%   <<"VideoOverlays">> => list(video_overlay()),
%%   <<"VideoSelector">> => video_selector()
%% }
-type input_template() :: #{binary() => any()}.


%% Example:
%% hls_encryption_settings() :: #{
%%   <<"ConstantInitializationVector">> => string(),
%%   <<"EncryptionMethod">> => list(any()),
%%   <<"InitializationVectorInManifest">> => list(any()),
%%   <<"OfflineEncrypted">> => list(any()),
%%   <<"SpekeKeyProvider">> => speke_key_provider(),
%%   <<"StaticKeyProvider">> => static_key_provider(),
%%   <<"Type">> => list(any())
%% }
-type hls_encryption_settings() :: #{binary() => any()}.


%% Example:
%% ttml_destination_settings() :: #{
%%   <<"StylePassthrough">> => list(any())
%% }
-type ttml_destination_settings() :: #{binary() => any()}.


%% Example:
%% noise_reducer() :: #{
%%   <<"Filter">> => list(any()),
%%   <<"FilterSettings">> => noise_reducer_filter_settings(),
%%   <<"SpatialFilterSettings">> => noise_reducer_spatial_filter_settings(),
%%   <<"TemporalFilterSettings">> => noise_reducer_temporal_filter_settings()
%% }
-type noise_reducer() :: #{binary() => any()}.

%% Example:
%% delete_job_template_request() :: #{}
-type delete_job_template_request() :: #{}.

%% Example:
%% associate_certificate_response() :: #{}
-type associate_certificate_response() :: #{}.


%% Example:
%% timecode_config() :: #{
%%   <<"Anchor">> => string(),
%%   <<"Source">> => list(any()),
%%   <<"Start">> => string(),
%%   <<"TimestampOffset">> => string()
%% }
-type timecode_config() :: #{binary() => any()}.


%% Example:
%% audio_selector_group() :: #{
%%   <<"AudioSelectorNames">> => list(string())
%% }
-type audio_selector_group() :: #{binary() => any()}.


%% Example:
%% video_overlay_transition() :: #{
%%   <<"EndPosition">> => video_overlay_position(),
%%   <<"EndTimecode">> => string(),
%%   <<"StartTimecode">> => string()
%% }
-type video_overlay_transition() :: #{binary() => any()}.


%% Example:
%% output_group_settings() :: #{
%%   <<"CmafGroupSettings">> => cmaf_group_settings(),
%%   <<"DashIsoGroupSettings">> => dash_iso_group_settings(),
%%   <<"FileGroupSettings">> => file_group_settings(),
%%   <<"HlsGroupSettings">> => hls_group_settings(),
%%   <<"MsSmoothGroupSettings">> => ms_smooth_group_settings(),
%%   <<"PerFrameMetrics">> => list(list(any())()),
%%   <<"Type">> => list(any())
%% }
-type output_group_settings() :: #{binary() => any()}.


%% Example:
%% cmaf_group_settings() :: #{
%%   <<"AdditionalManifests">> => list(cmaf_additional_manifest()),
%%   <<"BaseUrl">> => string(),
%%   <<"ClientCache">> => list(any()),
%%   <<"CodecSpecification">> => list(any()),
%%   <<"DashIFrameTrickPlayNameModifier">> => string(),
%%   <<"DashManifestStyle">> => list(any()),
%%   <<"Destination">> => string(),
%%   <<"DestinationSettings">> => destination_settings(),
%%   <<"Encryption">> => cmaf_encryption_settings(),
%%   <<"FragmentLength">> => integer(),
%%   <<"ImageBasedTrickPlay">> => list(any()),
%%   <<"ImageBasedTrickPlaySettings">> => cmaf_image_based_trick_play_settings(),
%%   <<"ManifestCompression">> => list(any()),
%%   <<"ManifestDurationFormat">> => list(any()),
%%   <<"MinBufferTime">> => integer(),
%%   <<"MinFinalSegmentLength">> => float(),
%%   <<"MpdManifestBandwidthType">> => list(any()),
%%   <<"MpdProfile">> => list(any()),
%%   <<"PtsOffsetHandlingForBFrames">> => list(any()),
%%   <<"SegmentControl">> => list(any()),
%%   <<"SegmentLength">> => integer(),
%%   <<"SegmentLengthControl">> => list(any()),
%%   <<"StreamInfResolution">> => list(any()),
%%   <<"TargetDurationCompatibilityMode">> => list(any()),
%%   <<"VideoCompositionOffsets">> => list(any()),
%%   <<"WriteDashManifest">> => list(any()),
%%   <<"WriteHlsManifest">> => list(any()),
%%   <<"WriteSegmentTimelineInRepresentation">> => list(any())
%% }
-type cmaf_group_settings() :: #{binary() => any()}.


%% Example:
%% dynamic_audio_selector() :: #{
%%   <<"AudioDurationCorrection">> => list(any()),
%%   <<"ExternalAudioFileInput">> => string(),
%%   <<"LanguageCode">> => list(any()),
%%   <<"Offset">> => integer(),
%%   <<"SelectorType">> => list(any())
%% }
-type dynamic_audio_selector() :: #{binary() => any()}.


%% Example:
%% image_inserter() :: #{
%%   <<"InsertableImages">> => list(insertable_image()),
%%   <<"SdrReferenceWhiteLevel">> => integer()
%% }
-type image_inserter() :: #{binary() => any()}.


%% Example:
%% esam_manifest_confirm_condition_notification() :: #{
%%   <<"MccXml">> => string()
%% }
-type esam_manifest_confirm_condition_notification() :: #{binary() => any()}.


%% Example:
%% job_settings() :: #{
%%   <<"AdAvailOffset">> => integer(),
%%   <<"AvailBlanking">> => avail_blanking(),
%%   <<"ColorConversion3DLUTSettings">> => list(color_conversion3_d_l_u_t_setting()),
%%   <<"Esam">> => esam_settings(),
%%   <<"ExtendedDataServices">> => extended_data_services(),
%%   <<"FollowSource">> => integer(),
%%   <<"Inputs">> => list(input()),
%%   <<"KantarWatermark">> => kantar_watermark_settings(),
%%   <<"MotionImageInserter">> => motion_image_inserter(),
%%   <<"NielsenConfiguration">> => nielsen_configuration(),
%%   <<"NielsenNonLinearWatermark">> => nielsen_non_linear_watermark_settings(),
%%   <<"OutputGroups">> => list(output_group()),
%%   <<"TimecodeConfig">> => timecode_config(),
%%   <<"TimedMetadataInsertion">> => timed_metadata_insertion()
%% }
-type job_settings() :: #{binary() => any()}.


%% Example:
%% timed_metadata_insertion() :: #{
%%   <<"Id3Insertions">> => list(id3_insertion())
%% }
-type timed_metadata_insertion() :: #{binary() => any()}.


%% Example:
%% ms_smooth_group_settings() :: #{
%%   <<"AdditionalManifests">> => list(ms_smooth_additional_manifest()),
%%   <<"AudioDeduplication">> => list(any()),
%%   <<"Destination">> => string(),
%%   <<"DestinationSettings">> => destination_settings(),
%%   <<"Encryption">> => ms_smooth_encryption_settings(),
%%   <<"FragmentLength">> => integer(),
%%   <<"FragmentLengthControl">> => list(any()),
%%   <<"ManifestEncoding">> => list(any())
%% }
-type ms_smooth_group_settings() :: #{binary() => any()}.


%% Example:
%% min_top_rendition_size() :: #{
%%   <<"Height">> => integer(),
%%   <<"Width">> => integer()
%% }
-type min_top_rendition_size() :: #{binary() => any()}.


%% Example:
%% search_jobs_request() :: #{
%%   <<"InputFile">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"Order">> => list(any()),
%%   <<"Queue">> => string(),
%%   <<"Status">> => list(any())
%% }
-type search_jobs_request() :: #{binary() => any()}.


%% Example:
%% hls_settings() :: #{
%%   <<"AudioGroupId">> => string(),
%%   <<"AudioOnlyContainer">> => list(any()),
%%   <<"AudioRenditionSets">> => string(),
%%   <<"AudioTrackType">> => list(any()),
%%   <<"DescriptiveVideoServiceFlag">> => list(any()),
%%   <<"IFrameOnlyManifest">> => list(any()),
%%   <<"SegmentModifier">> => string()
%% }
-type hls_settings() :: #{binary() => any()}.


%% Example:
%% video_overlay_input_clipping() :: #{
%%   <<"EndTimecode">> => string(),
%%   <<"StartTimecode">> => string()
%% }
-type video_overlay_input_clipping() :: #{binary() => any()}.


%% Example:
%% input() :: #{
%%   <<"AdvancedInputFilter">> => list(any()),
%%   <<"AdvancedInputFilterSettings">> => advanced_input_filter_settings(),
%%   <<"AudioSelectorGroups">> => map(),
%%   <<"AudioSelectors">> => map(),
%%   <<"CaptionSelectors">> => map(),
%%   <<"Crop">> => rectangle(),
%%   <<"DeblockFilter">> => list(any()),
%%   <<"DecryptionSettings">> => input_decryption_settings(),
%%   <<"DenoiseFilter">> => list(any()),
%%   <<"DolbyVisionMetadataXml">> => string(),
%%   <<"DynamicAudioSelectors">> => map(),
%%   <<"FileInput">> => string(),
%%   <<"FilterEnable">> => list(any()),
%%   <<"FilterStrength">> => integer(),
%%   <<"ImageInserter">> => image_inserter(),
%%   <<"InputClippings">> => list(input_clipping()),
%%   <<"InputScanType">> => list(any()),
%%   <<"Position">> => rectangle(),
%%   <<"ProgramNumber">> => integer(),
%%   <<"PsiControl">> => list(any()),
%%   <<"SupplementalImps">> => list(string()),
%%   <<"TamsSettings">> => input_tams_settings(),
%%   <<"TimecodeSource">> => list(any()),
%%   <<"TimecodeStart">> => string(),
%%   <<"VideoGenerator">> => input_video_generator(),
%%   <<"VideoOverlays">> => list(video_overlay()),
%%   <<"VideoSelector">> => video_selector()
%% }
-type input() :: #{binary() => any()}.


%% Example:
%% describe_endpoints_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"Mode">> => list(any()),
%%   <<"NextToken">> => string()
%% }
-type describe_endpoints_request() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"Message">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% color_conversion3_d_l_u_t_setting() :: #{
%%   <<"FileInput">> => string(),
%%   <<"InputColorSpace">> => list(any()),
%%   <<"InputMasteringLuminance">> => integer(),
%%   <<"OutputColorSpace">> => list(any()),
%%   <<"OutputMasteringLuminance">> => integer()
%% }
-type color_conversion3_d_l_u_t_setting() :: #{binary() => any()}.


%% Example:
%% get_job_template_response() :: #{
%%   <<"JobTemplate">> => job_template()
%% }
-type get_job_template_response() :: #{binary() => any()}.


%% Example:
%% reservation_plan() :: #{
%%   <<"Commitment">> => list(any()),
%%   <<"ExpiresAt">> => non_neg_integer(),
%%   <<"PurchasedAt">> => non_neg_integer(),
%%   <<"RenewalType">> => list(any()),
%%   <<"ReservedSlots">> => integer(),
%%   <<"Status">> => list(any())
%% }
-type reservation_plan() :: #{binary() => any()}.


%% Example:
%% output_group() :: #{
%%   <<"AutomatedEncodingSettings">> => automated_encoding_settings(),
%%   <<"CustomName">> => string(),
%%   <<"Name">> => string(),
%%   <<"OutputGroupSettings">> => output_group_settings(),
%%   <<"Outputs">> => list(output())
%% }
-type output_group() :: #{binary() => any()}.

%% Example:
%% get_queue_request() :: #{}
-type get_queue_request() :: #{}.


%% Example:
%% audio_description() :: #{
%%   <<"AudioChannelTaggingSettings">> => audio_channel_tagging_settings(),
%%   <<"AudioNormalizationSettings">> => audio_normalization_settings(),
%%   <<"AudioPitchCorrectionSettings">> => audio_pitch_correction_settings(),
%%   <<"AudioSourceName">> => string(),
%%   <<"AudioType">> => integer(),
%%   <<"AudioTypeControl">> => list(any()),
%%   <<"CodecSettings">> => audio_codec_settings(),
%%   <<"CustomLanguageCode">> => string(),
%%   <<"LanguageCode">> => list(any()),
%%   <<"LanguageCodeControl">> => list(any()),
%%   <<"RemixSettings">> => remix_settings(),
%%   <<"StreamName">> => string()
%% }
-type audio_description() :: #{binary() => any()}.


%% Example:
%% xavc_settings() :: #{
%%   <<"AdaptiveQuantization">> => list(any()),
%%   <<"EntropyEncoding">> => list(any()),
%%   <<"FramerateControl">> => list(any()),
%%   <<"FramerateConversionAlgorithm">> => list(any()),
%%   <<"FramerateDenominator">> => integer(),
%%   <<"FramerateNumerator">> => integer(),
%%   <<"PerFrameMetrics">> => list(list(any())()),
%%   <<"Profile">> => list(any()),
%%   <<"SlowPal">> => list(any()),
%%   <<"Softness">> => integer(),
%%   <<"SpatialAdaptiveQuantization">> => list(any()),
%%   <<"TemporalAdaptiveQuantization">> => list(any()),
%%   <<"Xavc4kIntraCbgProfileSettings">> => xavc4k_intra_cbg_profile_settings(),
%%   <<"Xavc4kIntraVbrProfileSettings">> => xavc4k_intra_vbr_profile_settings(),
%%   <<"Xavc4kProfileSettings">> => xavc4k_profile_settings(),
%%   <<"XavcHdIntraCbgProfileSettings">> => xavc_hd_intra_cbg_profile_settings(),
%%   <<"XavcHdProfileSettings">> => xavc_hd_profile_settings()
%% }
-type xavc_settings() :: #{binary() => any()}.


%% Example:
%% preset_settings() :: #{
%%   <<"AudioDescriptions">> => list(audio_description()),
%%   <<"CaptionDescriptions">> => list(caption_description_preset()),
%%   <<"ContainerSettings">> => container_settings(),
%%   <<"VideoDescription">> => video_description()
%% }
-type preset_settings() :: #{binary() => any()}.


%% Example:
%% scc_destination_settings() :: #{
%%   <<"Framerate">> => list(any())
%% }
-type scc_destination_settings() :: #{binary() => any()}.


%% Example:
%% video_codec_settings() :: #{
%%   <<"Av1Settings">> => av1_settings(),
%%   <<"AvcIntraSettings">> => avc_intra_settings(),
%%   <<"Codec">> => list(any()),
%%   <<"FrameCaptureSettings">> => frame_capture_settings(),
%%   <<"GifSettings">> => gif_settings(),
%%   <<"H264Settings">> => h264_settings(),
%%   <<"H265Settings">> => h265_settings(),
%%   <<"Mpeg2Settings">> => mpeg2_settings(),
%%   <<"PassthroughSettings">> => passthrough_settings(),
%%   <<"ProresSettings">> => prores_settings(),
%%   <<"UncompressedSettings">> => uncompressed_settings(),
%%   <<"Vc3Settings">> => vc3_settings(),
%%   <<"Vp8Settings">> => vp8_settings(),
%%   <<"Vp9Settings">> => vp9_settings(),
%%   <<"XavcSettings">> => xavc_settings()
%% }
-type video_codec_settings() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"Message">> => string()
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% motion_image_insertion_offset() :: #{
%%   <<"ImageX">> => integer(),
%%   <<"ImageY">> => integer()
%% }
-type motion_image_insertion_offset() :: #{binary() => any()}.


%% Example:
%% audio_properties() :: #{
%%   <<"BitDepth">> => integer(),
%%   <<"BitRate">> => float(),
%%   <<"Channels">> => integer(),
%%   <<"FrameRate">> => frame_rate(),
%%   <<"LanguageCode">> => string(),
%%   <<"SampleRate">> => integer()
%% }
-type audio_properties() :: #{binary() => any()}.


%% Example:
%% put_policy_response() :: #{
%%   <<"Policy">> => policy()
%% }
-type put_policy_response() :: #{binary() => any()}.


%% Example:
%% job_engine_version() :: #{
%%   <<"ExpirationDate">> => non_neg_integer(),
%%   <<"Version">> => string()
%% }
-type job_engine_version() :: #{binary() => any()}.


%% Example:
%% avc_intra_settings() :: #{
%%   <<"AvcIntraClass">> => list(any()),
%%   <<"AvcIntraUhdSettings">> => avc_intra_uhd_settings(),
%%   <<"FramerateControl">> => list(any()),
%%   <<"FramerateConversionAlgorithm">> => list(any()),
%%   <<"FramerateDenominator">> => integer(),
%%   <<"FramerateNumerator">> => integer(),
%%   <<"InterlaceMode">> => list(any()),
%%   <<"PerFrameMetrics">> => list(list(any())()),
%%   <<"ScanTypeConversionMode">> => list(any()),
%%   <<"SlowPal">> => list(any()),
%%   <<"Telecine">> => list(any())
%% }
-type avc_intra_settings() :: #{binary() => any()}.


%% Example:
%% eac3_settings() :: #{
%%   <<"AttenuationControl">> => list(any()),
%%   <<"Bitrate">> => integer(),
%%   <<"BitstreamMode">> => list(any()),
%%   <<"CodingMode">> => list(any()),
%%   <<"DcFilter">> => list(any()),
%%   <<"Dialnorm">> => integer(),
%%   <<"DynamicRangeCompressionLine">> => list(any()),
%%   <<"DynamicRangeCompressionRf">> => list(any()),
%%   <<"LfeControl">> => list(any()),
%%   <<"LfeFilter">> => list(any()),
%%   <<"LoRoCenterMixLevel">> => float(),
%%   <<"LoRoSurroundMixLevel">> => float(),
%%   <<"LtRtCenterMixLevel">> => float(),
%%   <<"LtRtSurroundMixLevel">> => float(),
%%   <<"MetadataControl">> => list(any()),
%%   <<"PassthroughControl">> => list(any()),
%%   <<"PhaseControl">> => list(any()),
%%   <<"SampleRate">> => integer(),
%%   <<"StereoDownmix">> => list(any()),
%%   <<"SurroundExMode">> => list(any()),
%%   <<"SurroundMode">> => list(any())
%% }
-type eac3_settings() :: #{binary() => any()}.


%% Example:
%% vp9_settings() :: #{
%%   <<"Bitrate">> => integer(),
%%   <<"FramerateControl">> => list(any()),
%%   <<"FramerateConversionAlgorithm">> => list(any()),
%%   <<"FramerateDenominator">> => integer(),
%%   <<"FramerateNumerator">> => integer(),
%%   <<"GopSize">> => float(),
%%   <<"HrdBufferSize">> => integer(),
%%   <<"MaxBitrate">> => integer(),
%%   <<"ParControl">> => list(any()),
%%   <<"ParDenominator">> => integer(),
%%   <<"ParNumerator">> => integer(),
%%   <<"QualityTuningLevel">> => list(any()),
%%   <<"RateControlMode">> => list(any())
%% }
-type vp9_settings() :: #{binary() => any()}.


%% Example:
%% output_group_detail() :: #{
%%   <<"OutputDetails">> => list(output_detail())
%% }
-type output_group_detail() :: #{binary() => any()}.


%% Example:
%% not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type not_found_exception() :: #{binary() => any()}.


%% Example:
%% caption_destination_settings() :: #{
%%   <<"BurninDestinationSettings">> => burnin_destination_settings(),
%%   <<"DestinationType">> => list(any()),
%%   <<"DvbSubDestinationSettings">> => dvb_sub_destination_settings(),
%%   <<"EmbeddedDestinationSettings">> => embedded_destination_settings(),
%%   <<"ImscDestinationSettings">> => imsc_destination_settings(),
%%   <<"SccDestinationSettings">> => scc_destination_settings(),
%%   <<"SrtDestinationSettings">> => srt_destination_settings(),
%%   <<"TeletextDestinationSettings">> => teletext_destination_settings(),
%%   <<"TtmlDestinationSettings">> => ttml_destination_settings(),
%%   <<"WebvttDestinationSettings">> => webvtt_destination_settings()
%% }
-type caption_destination_settings() :: #{binary() => any()}.


%% Example:
%% speke_key_provider() :: #{
%%   <<"CertificateArn">> => string(),
%%   <<"EncryptionContractConfiguration">> => encryption_contract_configuration(),
%%   <<"ResourceId">> => string(),
%%   <<"SystemIds">> => list(string()),
%%   <<"Url">> => string()
%% }
-type speke_key_provider() :: #{binary() => any()}.


%% Example:
%% frame_rate() :: #{
%%   <<"Denominator">> => integer(),
%%   <<"Numerator">> => integer()
%% }
-type frame_rate() :: #{binary() => any()}.


%% Example:
%% s3_destination_settings() :: #{
%%   <<"AccessControl">> => s3_destination_access_control(),
%%   <<"Encryption">> => s3_encryption_settings(),
%%   <<"StorageClass">> => list(any())
%% }
-type s3_destination_settings() :: #{binary() => any()}.


%% Example:
%% h265_settings() :: #{
%%   <<"FlickerAdaptiveQuantization">> => list(any()),
%%   <<"QvbrSettings">> => h265_qvbr_settings(),
%%   <<"SampleAdaptiveOffsetFilterMode">> => list(any()),
%%   <<"EndOfStreamMarkers">> => list(any()),
%%   <<"AdaptiveQuantization">> => list(any()),
%%   <<"Slices">> => integer(),
%%   <<"FramerateNumerator">> => integer(),
%%   <<"HrdBufferFinalFillPercentage">> => integer(),
%%   <<"GopBReference">> => list(any()),
%%   <<"HrdBufferInitialFillPercentage">> => integer(),
%%   <<"AlternateTransferFunctionSei">> => list(any()),
%%   <<"Tiles">> => list(any()),
%%   <<"DynamicSubGop">> => list(any()),
%%   <<"GopSize">> => float(),
%%   <<"UnregisteredSeiTimecode">> => list(any()),
%%   <<"WriteMp4PackagingType">> => list(any()),
%%   <<"SlowPal">> => list(any()),
%%   <<"Telecine">> => list(any()),
%%   <<"CodecProfile">> => list(any()),
%%   <<"QualityTuningLevel">> => list(any()),
%%   <<"GopSizeUnits">> => list(any()),
%%   <<"Bitrate">> => integer(),
%%   <<"BandwidthReductionFilter">> => bandwidth_reduction_filter(),
%%   <<"ParControl">> => list(any()),
%%   <<"InterlaceMode">> => list(any()),
%%   <<"ScanTypeConversionMode">> => list(any()),
%%   <<"FramerateConversionAlgorithm">> => list(any()),
%%   <<"Deblocking">> => list(any()),
%%   <<"RateControlMode">> => list(any()),
%%   <<"FramerateControl">> => list(any()),
%%   <<"ParNumerator">> => integer(),
%%   <<"NumberReferenceFrames">> => integer(),
%%   <<"NumberBFramesBetweenReferenceFrames">> => integer(),
%%   <<"MinIInterval">> => integer(),
%%   <<"PerFrameMetrics">> => list(list(any())()),
%%   <<"SceneChangeDetect">> => list(any()),
%%   <<"SpatialAdaptiveQuantization">> => list(any()),
%%   <<"ParDenominator">> => integer(),
%%   <<"GopClosedCadence">> => integer(),
%%   <<"MaxBitrate">> => integer(),
%%   <<"HrdBufferSize">> => integer(),
%%   <<"TemporalAdaptiveQuantization">> => list(any()),
%%   <<"CodecLevel">> => list(any()),
%%   <<"FramerateDenominator">> => integer(),
%%   <<"TemporalIds">> => list(any())
%% }
-type h265_settings() :: #{binary() => any()}.


%% Example:
%% av1_qvbr_settings() :: #{
%%   <<"QvbrQualityLevel">> => integer(),
%%   <<"QvbrQualityLevelFineTune">> => float()
%% }
-type av1_qvbr_settings() :: #{binary() => any()}.


%% Example:
%% teletext_destination_settings() :: #{
%%   <<"PageNumber">> => string(),
%%   <<"PageTypes">> => list(list(any())())
%% }
-type teletext_destination_settings() :: #{binary() => any()}.


%% Example:
%% file_source_settings() :: #{
%%   <<"ByteRateLimit">> => list(any()),
%%   <<"Convert608To708">> => list(any()),
%%   <<"ConvertPaintToPop">> => list(any()),
%%   <<"Framerate">> => caption_source_framerate(),
%%   <<"SourceFile">> => string(),
%%   <<"TimeDelta">> => integer(),
%%   <<"TimeDeltaUnits">> => list(any()),
%%   <<"UpconvertSTLToTeletext">> => list(any())
%% }
-type file_source_settings() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"ResourceTags">> => resource_tags()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% hls_additional_manifest() :: #{
%%   <<"ManifestNameModifier">> => string(),
%%   <<"SelectedOutputs">> => list(string())
%% }
-type hls_additional_manifest() :: #{binary() => any()}.


%% Example:
%% mxf_xavc_profile_settings() :: #{
%%   <<"DurationMode">> => list(any()),
%%   <<"MaxAncDataSize">> => integer()
%% }
-type mxf_xavc_profile_settings() :: #{binary() => any()}.


%% Example:
%% dash_iso_encryption_settings() :: #{
%%   <<"PlaybackDeviceCompatibility">> => list(any()),
%%   <<"SpekeKeyProvider">> => speke_key_provider()
%% }
-type dash_iso_encryption_settings() :: #{binary() => any()}.


%% Example:
%% dolby_vision() :: #{
%%   <<"L6Metadata">> => dolby_vision_level6_metadata(),
%%   <<"L6Mode">> => list(any()),
%%   <<"Mapping">> => list(any()),
%%   <<"Profile">> => list(any())
%% }
-type dolby_vision() :: #{binary() => any()}.


%% Example:
%% search_jobs_response() :: #{
%%   <<"Jobs">> => list(job()),
%%   <<"NextToken">> => string()
%% }
-type search_jobs_response() :: #{binary() => any()}.


%% Example:
%% caption_description_preset() :: #{
%%   <<"CustomLanguageCode">> => string(),
%%   <<"DestinationSettings">> => caption_destination_settings(),
%%   <<"LanguageCode">> => list(any()),
%%   <<"LanguageDescription">> => string()
%% }
-type caption_description_preset() :: #{binary() => any()}.


%% Example:
%% list_presets_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Presets">> => list(preset())
%% }
-type list_presets_response() :: #{binary() => any()}.


%% Example:
%% noise_reducer_temporal_filter_settings() :: #{
%%   <<"AggressiveMode">> => integer(),
%%   <<"PostTemporalSharpening">> => list(any()),
%%   <<"PostTemporalSharpeningStrength">> => list(any()),
%%   <<"Speed">> => integer(),
%%   <<"Strength">> => integer()
%% }
-type noise_reducer_temporal_filter_settings() :: #{binary() => any()}.


%% Example:
%% list_versions_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Versions">> => list(job_engine_version())
%% }
-type list_versions_response() :: #{binary() => any()}.


%% Example:
%% create_queue_request() :: #{
%%   <<"ConcurrentJobs">> => integer(),
%%   <<"Description">> => string(),
%%   <<"Name">> := string(),
%%   <<"PricingPlan">> => list(any()),
%%   <<"ReservationPlanSettings">> => reservation_plan_settings(),
%%   <<"Status">> => list(any()),
%%   <<"Tags">> => map()
%% }
-type create_queue_request() :: #{binary() => any()}.


%% Example:
%% ancillary_source_settings() :: #{
%%   <<"Convert608To708">> => list(any()),
%%   <<"SourceAncillaryChannelNumber">> => integer(),
%%   <<"TerminateCaptions">> => list(any())
%% }
-type ancillary_source_settings() :: #{binary() => any()}.


%% Example:
%% job_messages() :: #{
%%   <<"Info">> => list(string()),
%%   <<"Warning">> => list(string())
%% }
-type job_messages() :: #{binary() => any()}.

%% Example:
%% delete_preset_request() :: #{}
-type delete_preset_request() :: #{}.


%% Example:
%% hls_image_based_trick_play_settings() :: #{
%%   <<"IntervalCadence">> => list(any()),
%%   <<"ThumbnailHeight">> => integer(),
%%   <<"ThumbnailInterval">> => float(),
%%   <<"ThumbnailWidth">> => integer(),
%%   <<"TileHeight">> => integer(),
%%   <<"TileWidth">> => integer()
%% }
-type hls_image_based_trick_play_settings() :: #{binary() => any()}.


%% Example:
%% dvb_sub_destination_settings() :: #{
%%   <<"Alignment">> => list(any()),
%%   <<"ApplyFontColor">> => list(any()),
%%   <<"BackgroundColor">> => list(any()),
%%   <<"BackgroundOpacity">> => integer(),
%%   <<"DdsHandling">> => list(any()),
%%   <<"DdsXCoordinate">> => integer(),
%%   <<"DdsYCoordinate">> => integer(),
%%   <<"FallbackFont">> => list(any()),
%%   <<"FontColor">> => list(any()),
%%   <<"FontFileBold">> => string(),
%%   <<"FontFileBoldItalic">> => string(),
%%   <<"FontFileItalic">> => string(),
%%   <<"FontFileRegular">> => string(),
%%   <<"FontOpacity">> => integer(),
%%   <<"FontResolution">> => integer(),
%%   <<"FontScript">> => list(any()),
%%   <<"FontSize">> => integer(),
%%   <<"Height">> => integer(),
%%   <<"HexFontColor">> => string(),
%%   <<"OutlineColor">> => list(any()),
%%   <<"OutlineSize">> => integer(),
%%   <<"ShadowColor">> => list(any()),
%%   <<"ShadowOpacity">> => integer(),
%%   <<"ShadowXOffset">> => integer(),
%%   <<"ShadowYOffset">> => integer(),
%%   <<"StylePassthrough">> => list(any()),
%%   <<"SubtitlingType">> => list(any()),
%%   <<"TeletextSpacing">> => list(any()),
%%   <<"Width">> => integer(),
%%   <<"XPosition">> => integer(),
%%   <<"YPosition">> => integer()
%% }
-type dvb_sub_destination_settings() :: #{binary() => any()}.


%% Example:
%% esam_signal_processing_notification() :: #{
%%   <<"SccXml">> => string()
%% }
-type esam_signal_processing_notification() :: #{binary() => any()}.


%% Example:
%% video_selector() :: #{
%%   <<"AlphaBehavior">> => list(any()),
%%   <<"ColorSpace">> => list(any()),
%%   <<"ColorSpaceUsage">> => list(any()),
%%   <<"EmbeddedTimecodeOverride">> => list(any()),
%%   <<"Hdr10Metadata">> => hdr10_metadata(),
%%   <<"MaxLuminance">> => integer(),
%%   <<"PadVideo">> => list(any()),
%%   <<"Pid">> => integer(),
%%   <<"ProgramNumber">> => integer(),
%%   <<"Rotate">> => list(any()),
%%   <<"SampleRange">> => list(any()),
%%   <<"SelectorType">> => list(any()),
%%   <<"Streams">> => list(integer())
%% }
-type video_selector() :: #{binary() => any()}.


%% Example:
%% hdr10_plus() :: #{
%%   <<"MasteringMonitorNits">> => integer(),
%%   <<"TargetMonitorNits">> => integer()
%% }
-type hdr10_plus() :: #{binary() => any()}.


%% Example:
%% opus_settings() :: #{
%%   <<"Bitrate">> => integer(),
%%   <<"Channels">> => integer(),
%%   <<"SampleRate">> => integer()
%% }
-type opus_settings() :: #{binary() => any()}.

%% Example:
%% disassociate_certificate_request() :: #{}
-type disassociate_certificate_request() :: #{}.


%% Example:
%% hls_group_settings() :: #{
%%   <<"AdMarkers">> => list(list(any())()),
%%   <<"AdditionalManifests">> => list(hls_additional_manifest()),
%%   <<"AudioOnlyHeader">> => list(any()),
%%   <<"BaseUrl">> => string(),
%%   <<"CaptionLanguageMappings">> => list(hls_caption_language_mapping()),
%%   <<"CaptionLanguageSetting">> => list(any()),
%%   <<"CaptionSegmentLengthControl">> => list(any()),
%%   <<"ClientCache">> => list(any()),
%%   <<"CodecSpecification">> => list(any()),
%%   <<"Destination">> => string(),
%%   <<"DestinationSettings">> => destination_settings(),
%%   <<"DirectoryStructure">> => list(any()),
%%   <<"Encryption">> => hls_encryption_settings(),
%%   <<"ImageBasedTrickPlay">> => list(any()),
%%   <<"ImageBasedTrickPlaySettings">> => hls_image_based_trick_play_settings(),
%%   <<"ManifestCompression">> => list(any()),
%%   <<"ManifestDurationFormat">> => list(any()),
%%   <<"MinFinalSegmentLength">> => float(),
%%   <<"MinSegmentLength">> => integer(),
%%   <<"OutputSelection">> => list(any()),
%%   <<"ProgramDateTime">> => list(any()),
%%   <<"ProgramDateTimePeriod">> => integer(),
%%   <<"ProgressiveWriteHlsManifest">> => list(any()),
%%   <<"SegmentControl">> => list(any()),
%%   <<"SegmentLength">> => integer(),
%%   <<"SegmentLengthControl">> => list(any()),
%%   <<"SegmentsPerSubdirectory">> => integer(),
%%   <<"StreamInfResolution">> => list(any()),
%%   <<"TargetDurationCompatibilityMode">> => list(any()),
%%   <<"TimedMetadataId3Frame">> => list(any()),
%%   <<"TimedMetadataId3Period">> => integer(),
%%   <<"TimestampDeltaMilliseconds">> => integer()
%% }
-type hls_group_settings() :: #{binary() => any()}.


%% Example:
%% output_settings() :: #{
%%   <<"HlsSettings">> => hls_settings()
%% }
-type output_settings() :: #{binary() => any()}.


%% Example:
%% audio_selector() :: #{
%%   <<"AudioDurationCorrection">> => list(any()),
%%   <<"CustomLanguageCode">> => string(),
%%   <<"DefaultSelection">> => list(any()),
%%   <<"ExternalAudioFileInput">> => string(),
%%   <<"HlsRenditionGroupSettings">> => hls_rendition_group_settings(),
%%   <<"LanguageCode">> => list(any()),
%%   <<"Offset">> => integer(),
%%   <<"Pids">> => list(integer()),
%%   <<"ProgramSelection">> => integer(),
%%   <<"RemixSettings">> => remix_settings(),
%%   <<"SelectorType">> => list(any()),
%%   <<"Streams">> => list(integer()),
%%   <<"Tracks">> => list(integer())
%% }
-type audio_selector() :: #{binary() => any()}.


%% Example:
%% av1_settings() :: #{
%%   <<"AdaptiveQuantization">> => list(any()),
%%   <<"BitDepth">> => list(any()),
%%   <<"FilmGrainSynthesis">> => list(any()),
%%   <<"FramerateControl">> => list(any()),
%%   <<"FramerateConversionAlgorithm">> => list(any()),
%%   <<"FramerateDenominator">> => integer(),
%%   <<"FramerateNumerator">> => integer(),
%%   <<"GopSize">> => float(),
%%   <<"MaxBitrate">> => integer(),
%%   <<"NumberBFramesBetweenReferenceFrames">> => integer(),
%%   <<"PerFrameMetrics">> => list(list(any())()),
%%   <<"QvbrSettings">> => av1_qvbr_settings(),
%%   <<"RateControlMode">> => list(any()),
%%   <<"Slices">> => integer(),
%%   <<"SpatialAdaptiveQuantization">> => list(any())
%% }
-type av1_settings() :: #{binary() => any()}.


%% Example:
%% service_override() :: #{
%%   <<"Message">> => string(),
%%   <<"Name">> => string(),
%%   <<"OverrideValue">> => string(),
%%   <<"Value">> => string()
%% }
-type service_override() :: #{binary() => any()}.


%% Example:
%% xavc_hd_profile_settings() :: #{
%%   <<"BitrateClass">> => list(any()),
%%   <<"FlickerAdaptiveQuantization">> => list(any()),
%%   <<"GopBReference">> => list(any()),
%%   <<"GopClosedCadence">> => integer(),
%%   <<"HrdBufferSize">> => integer(),
%%   <<"InterlaceMode">> => list(any()),
%%   <<"QualityTuningLevel">> => list(any()),
%%   <<"Slices">> => integer(),
%%   <<"Telecine">> => list(any())
%% }
-type xavc_hd_profile_settings() :: #{binary() => any()}.


%% Example:
%% get_policy_response() :: #{
%%   <<"Policy">> => policy()
%% }
-type get_policy_response() :: #{binary() => any()}.


%% Example:
%% video_detail() :: #{
%%   <<"HeightInPx">> => integer(),
%%   <<"WidthInPx">> => integer()
%% }
-type video_detail() :: #{binary() => any()}.


%% Example:
%% endpoint() :: #{
%%   <<"Url">> => string()
%% }
-type endpoint() :: #{binary() => any()}.


%% Example:
%% video_preprocessor() :: #{
%%   <<"ColorCorrector">> => color_corrector(),
%%   <<"Deinterlacer">> => deinterlacer(),
%%   <<"DolbyVision">> => dolby_vision(),
%%   <<"Hdr10Plus">> => hdr10_plus(),
%%   <<"ImageInserter">> => image_inserter(),
%%   <<"NoiseReducer">> => noise_reducer(),
%%   <<"PartnerWatermarking">> => partner_watermarking(),
%%   <<"TimecodeBurnin">> => timecode_burnin()
%% }
-type video_preprocessor() :: #{binary() => any()}.


%% Example:
%% associate_certificate_request() :: #{
%%   <<"Arn">> := string()
%% }
-type associate_certificate_request() :: #{binary() => any()}.


%% Example:
%% avail_blanking() :: #{
%%   <<"AvailBlankingImage">> => string()
%% }
-type avail_blanking() :: #{binary() => any()}.


%% Example:
%% dash_additional_manifest() :: #{
%%   <<"ManifestNameModifier">> => string(),
%%   <<"SelectedOutputs">> => list(string())
%% }
-type dash_additional_manifest() :: #{binary() => any()}.

%% Example:
%% get_job_template_request() :: #{}
-type get_job_template_request() :: #{}.


%% Example:
%% encryption_contract_configuration() :: #{
%%   <<"SpekeAudioPreset">> => list(any()),
%%   <<"SpekeVideoPreset">> => list(any())
%% }
-type encryption_contract_configuration() :: #{binary() => any()}.


%% Example:
%% update_preset_request() :: #{
%%   <<"Category">> => string(),
%%   <<"Description">> => string(),
%%   <<"Settings">> => preset_settings()
%% }
-type update_preset_request() :: #{binary() => any()}.


%% Example:
%% avc_intra_uhd_settings() :: #{
%%   <<"QualityTuningLevel">> => list(any())
%% }
-type avc_intra_uhd_settings() :: #{binary() => any()}.


%% Example:
%% motion_image_inserter() :: #{
%%   <<"Framerate">> => motion_image_insertion_framerate(),
%%   <<"Input">> => string(),
%%   <<"InsertionMode">> => list(any()),
%%   <<"Offset">> => motion_image_insertion_offset(),
%%   <<"Playback">> => list(any()),
%%   <<"StartTime">> => string()
%% }
-type motion_image_inserter() :: #{binary() => any()}.


%% Example:
%% timing() :: #{
%%   <<"FinishTime">> => non_neg_integer(),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"SubmitTime">> => non_neg_integer()
%% }
-type timing() :: #{binary() => any()}.

%% Example:
%% delete_policy_request() :: #{}
-type delete_policy_request() :: #{}.


%% Example:
%% video_properties() :: #{
%%   <<"BitDepth">> => integer(),
%%   <<"BitRate">> => float(),
%%   <<"CodecMetadata">> => codec_metadata(),
%%   <<"ColorPrimaries">> => list(any()),
%%   <<"FrameRate">> => frame_rate(),
%%   <<"Height">> => integer(),
%%   <<"MatrixCoefficients">> => list(any()),
%%   <<"TransferCharacteristics">> => list(any()),
%%   <<"Width">> => integer()
%% }
-type video_properties() :: #{binary() => any()}.

%% Example:
%% get_preset_request() :: #{}
-type get_preset_request() :: #{}.


%% Example:
%% teletext_source_settings() :: #{
%%   <<"PageNumber">> => string()
%% }
-type teletext_source_settings() :: #{binary() => any()}.


%% Example:
%% queue_transition() :: #{
%%   <<"DestinationQueue">> => string(),
%%   <<"SourceQueue">> => string(),
%%   <<"Timestamp">> => non_neg_integer()
%% }
-type queue_transition() :: #{binary() => any()}.


%% Example:
%% codec_metadata() :: #{
%%   <<"BitDepth">> => integer(),
%%   <<"ChromaSubsampling">> => string(),
%%   <<"CodedFrameRate">> => frame_rate(),
%%   <<"ColorPrimaries">> => list(any()),
%%   <<"Height">> => integer(),
%%   <<"Level">> => string(),
%%   <<"MatrixCoefficients">> => list(any()),
%%   <<"Profile">> => string(),
%%   <<"ScanType">> => string(),
%%   <<"TransferCharacteristics">> => list(any()),
%%   <<"Width">> => integer()
%% }
-type codec_metadata() :: #{binary() => any()}.


%% Example:
%% list_job_templates_request() :: #{
%%   <<"Category">> => string(),
%%   <<"ListBy">> => list(any()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"Order">> => list(any())
%% }
-type list_job_templates_request() :: #{binary() => any()}.


%% Example:
%% policy() :: #{
%%   <<"HttpInputs">> => list(any()),
%%   <<"HttpsInputs">> => list(any()),
%%   <<"S3Inputs">> => list(any())
%% }
-type policy() :: #{binary() => any()}.


%% Example:
%% probe_result() :: #{
%%   <<"Container">> => container(),
%%   <<"Metadata">> => metadata(),
%%   <<"TrackMappings">> => list(track_mapping())
%% }
-type probe_result() :: #{binary() => any()}.


%% Example:
%% cmaf_additional_manifest() :: #{
%%   <<"ManifestNameModifier">> => string(),
%%   <<"SelectedOutputs">> => list(string())
%% }
-type cmaf_additional_manifest() :: #{binary() => any()}.


%% Example:
%% create_job_template_request() :: #{
%%   <<"AccelerationSettings">> => acceleration_settings(),
%%   <<"Category">> => string(),
%%   <<"Description">> => string(),
%%   <<"HopDestinations">> => list(hop_destination()),
%%   <<"Name">> := string(),
%%   <<"Priority">> => integer(),
%%   <<"Queue">> => string(),
%%   <<"Settings">> := job_template_settings(),
%%   <<"StatusUpdateInterval">> => list(any()),
%%   <<"Tags">> => map()
%% }
-type create_job_template_request() :: #{binary() => any()}.


%% Example:
%% automated_encoding_settings() :: #{
%%   <<"AbrSettings">> => automated_abr_settings()
%% }
-type automated_encoding_settings() :: #{binary() => any()}.


%% Example:
%% dvb_tdt_settings() :: #{
%%   <<"TdtInterval">> => integer()
%% }
-type dvb_tdt_settings() :: #{binary() => any()}.


%% Example:
%% id3_insertion() :: #{
%%   <<"Id3">> => string(),
%%   <<"Timecode">> => string()
%% }
-type id3_insertion() :: #{binary() => any()}.


%% Example:
%% hdr10_metadata() :: #{
%%   <<"BluePrimaryX">> => integer(),
%%   <<"BluePrimaryY">> => integer(),
%%   <<"GreenPrimaryX">> => integer(),
%%   <<"GreenPrimaryY">> => integer(),
%%   <<"MaxContentLightLevel">> => integer(),
%%   <<"MaxFrameAverageLightLevel">> => integer(),
%%   <<"MaxLuminance">> => integer(),
%%   <<"MinLuminance">> => integer(),
%%   <<"RedPrimaryX">> => integer(),
%%   <<"RedPrimaryY">> => integer(),
%%   <<"WhitePointX">> => integer(),
%%   <<"WhitePointY">> => integer()
%% }
-type hdr10_metadata() :: #{binary() => any()}.


%% Example:
%% mp3_settings() :: #{
%%   <<"Bitrate">> => integer(),
%%   <<"Channels">> => integer(),
%%   <<"RateControlMode">> => list(any()),
%%   <<"SampleRate">> => integer(),
%%   <<"VbrQuality">> => integer()
%% }
-type mp3_settings() :: #{binary() => any()}.


%% Example:
%% webvtt_destination_settings() :: #{
%%   <<"Accessibility">> => list(any()),
%%   <<"StylePassthrough">> => list(any())
%% }
-type webvtt_destination_settings() :: #{binary() => any()}.


%% Example:
%% update_job_template_response() :: #{
%%   <<"JobTemplate">> => job_template()
%% }
-type update_job_template_response() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% uncompressed_settings() :: #{
%%   <<"Fourcc">> => list(any()),
%%   <<"FramerateControl">> => list(any()),
%%   <<"FramerateConversionAlgorithm">> => list(any()),
%%   <<"FramerateDenominator">> => integer(),
%%   <<"FramerateNumerator">> => integer(),
%%   <<"InterlaceMode">> => list(any()),
%%   <<"ScanTypeConversionMode">> => list(any()),
%%   <<"SlowPal">> => list(any()),
%%   <<"Telecine">> => list(any())
%% }
-type uncompressed_settings() :: #{binary() => any()}.

%% Example:
%% disassociate_certificate_response() :: #{}
-type disassociate_certificate_response() :: #{}.


%% Example:
%% remix_settings() :: #{
%%   <<"AudioDescriptionAudioChannel">> => integer(),
%%   <<"AudioDescriptionDataChannel">> => integer(),
%%   <<"ChannelMapping">> => channel_mapping(),
%%   <<"ChannelsIn">> => integer(),
%%   <<"ChannelsOut">> => integer()
%% }
-type remix_settings() :: #{binary() => any()}.


%% Example:
%% mpeg2_settings() :: #{
%%   <<"AdaptiveQuantization">> => list(any()),
%%   <<"Softness">> => integer(),
%%   <<"FramerateNumerator">> => integer(),
%%   <<"HrdBufferFinalFillPercentage">> => integer(),
%%   <<"HrdBufferInitialFillPercentage">> => integer(),
%%   <<"DynamicSubGop">> => list(any()),
%%   <<"GopSize">> => float(),
%%   <<"SlowPal">> => list(any()),
%%   <<"Telecine">> => list(any()),
%%   <<"CodecProfile">> => list(any()),
%%   <<"QualityTuningLevel">> => list(any()),
%%   <<"GopSizeUnits">> => list(any()),
%%   <<"Bitrate">> => integer(),
%%   <<"ParControl">> => list(any()),
%%   <<"InterlaceMode">> => list(any()),
%%   <<"ScanTypeConversionMode">> => list(any()),
%%   <<"FramerateConversionAlgorithm">> => list(any()),
%%   <<"RateControlMode">> => list(any()),
%%   <<"FramerateControl">> => list(any()),
%%   <<"ParNumerator">> => integer(),
%%   <<"NumberBFramesBetweenReferenceFrames">> => integer(),
%%   <<"MinIInterval">> => integer(),
%%   <<"PerFrameMetrics">> => list(list(any())()),
%%   <<"SceneChangeDetect">> => list(any()),
%%   <<"IntraDcPrecision">> => list(any()),
%%   <<"SpatialAdaptiveQuantization">> => list(any()),
%%   <<"ParDenominator">> => integer(),
%%   <<"Syntax">> => list(any()),
%%   <<"GopClosedCadence">> => integer(),
%%   <<"MaxBitrate">> => integer(),
%%   <<"HrdBufferSize">> => integer(),
%%   <<"TemporalAdaptiveQuantization">> => list(any()),
%%   <<"CodecLevel">> => list(any()),
%%   <<"FramerateDenominator">> => integer()
%% }
-type mpeg2_settings() :: #{binary() => any()}.


%% Example:
%% caption_source_settings() :: #{
%%   <<"AncillarySourceSettings">> => ancillary_source_settings(),
%%   <<"DvbSubSourceSettings">> => dvb_sub_source_settings(),
%%   <<"EmbeddedSourceSettings">> => embedded_source_settings(),
%%   <<"FileSourceSettings">> => file_source_settings(),
%%   <<"SourceType">> => list(any()),
%%   <<"TeletextSourceSettings">> => teletext_source_settings(),
%%   <<"TrackSourceSettings">> => track_source_settings(),
%%   <<"WebvttHlsSourceSettings">> => webvtt_hls_source_settings()
%% }
-type caption_source_settings() :: #{binary() => any()}.


%% Example:
%% kantar_watermark_settings() :: #{
%%   <<"ChannelName">> => string(),
%%   <<"ContentReference">> => string(),
%%   <<"CredentialsSecretName">> => string(),
%%   <<"FileOffset">> => float(),
%%   <<"KantarLicenseId">> => integer(),
%%   <<"KantarServerUrl">> => string(),
%%   <<"LogDestination">> => string(),
%%   <<"Metadata3">> => string(),
%%   <<"Metadata4">> => string(),
%%   <<"Metadata5">> => string(),
%%   <<"Metadata6">> => string(),
%%   <<"Metadata7">> => string(),
%%   <<"Metadata8">> => string()
%% }
-type kantar_watermark_settings() :: #{binary() => any()}.


%% Example:
%% hop_destination() :: #{
%%   <<"Priority">> => integer(),
%%   <<"Queue">> => string(),
%%   <<"WaitMinutes">> => integer()
%% }
-type hop_destination() :: #{binary() => any()}.


%% Example:
%% get_job_response() :: #{
%%   <<"Job">> => job()
%% }
-type get_job_response() :: #{binary() => any()}.


%% Example:
%% update_preset_response() :: #{
%%   <<"Preset">> => preset()
%% }
-type update_preset_response() :: #{binary() => any()}.


%% Example:
%% ms_smooth_additional_manifest() :: #{
%%   <<"ManifestNameModifier">> => string(),
%%   <<"SelectedOutputs">> => list(string())
%% }
-type ms_smooth_additional_manifest() :: #{binary() => any()}.


%% Example:
%% vorbis_settings() :: #{
%%   <<"Channels">> => integer(),
%%   <<"SampleRate">> => integer(),
%%   <<"VbrQuality">> => integer()
%% }
-type vorbis_settings() :: #{binary() => any()}.


%% Example:
%% probe_response() :: #{
%%   <<"ProbeResults">> => list(probe_result())
%% }
-type probe_response() :: #{binary() => any()}.


%% Example:
%% ac3_settings() :: #{
%%   <<"Bitrate">> => integer(),
%%   <<"BitstreamMode">> => list(any()),
%%   <<"CodingMode">> => list(any()),
%%   <<"Dialnorm">> => integer(),
%%   <<"DynamicRangeCompressionLine">> => list(any()),
%%   <<"DynamicRangeCompressionProfile">> => list(any()),
%%   <<"DynamicRangeCompressionRf">> => list(any()),
%%   <<"LfeFilter">> => list(any()),
%%   <<"MetadataControl">> => list(any()),
%%   <<"SampleRate">> => integer()
%% }
-type ac3_settings() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% job() :: #{
%%   <<"AccelerationSettings">> => acceleration_settings(),
%%   <<"AccelerationStatus">> => list(any()),
%%   <<"Arn">> => string(),
%%   <<"BillingTagsSource">> => list(any()),
%%   <<"ClientRequestToken">> => string(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"CurrentPhase">> => list(any()),
%%   <<"ErrorCode">> => integer(),
%%   <<"ErrorMessage">> => string(),
%%   <<"HopDestinations">> => list(hop_destination()),
%%   <<"Id">> => string(),
%%   <<"JobEngineVersionRequested">> => string(),
%%   <<"JobEngineVersionUsed">> => string(),
%%   <<"JobPercentComplete">> => integer(),
%%   <<"JobTemplate">> => string(),
%%   <<"LastShareDetails">> => string(),
%%   <<"Messages">> => job_messages(),
%%   <<"OutputGroupDetails">> => list(output_group_detail()),
%%   <<"Priority">> => integer(),
%%   <<"Queue">> => string(),
%%   <<"QueueTransitions">> => list(queue_transition()),
%%   <<"RetryCount">> => integer(),
%%   <<"Role">> => string(),
%%   <<"Settings">> => job_settings(),
%%   <<"ShareStatus">> => list(any()),
%%   <<"SimulateReservedQueue">> => list(any()),
%%   <<"Status">> => list(any()),
%%   <<"StatusUpdateInterval">> => list(any()),
%%   <<"Timing">> => timing(),
%%   <<"UserMetadata">> => map(),
%%   <<"Warnings">> => list(warning_group())
%% }
-type job() :: #{binary() => any()}.


%% Example:
%% internal_server_error_exception() :: #{
%%   <<"Message">> => string()
%% }
-type internal_server_error_exception() :: #{binary() => any()}.


%% Example:
%% passthrough_settings() :: #{
%%   <<"FrameControl">> => list(any()),
%%   <<"VideoSelectorMode">> => list(any())
%% }
-type passthrough_settings() :: #{binary() => any()}.


%% Example:
%% embedded_source_settings() :: #{
%%   <<"Convert608To708">> => list(any()),
%%   <<"Source608ChannelNumber">> => integer(),
%%   <<"Source608TrackNumber">> => integer(),
%%   <<"TerminateCaptions">> => list(any())
%% }
-type embedded_source_settings() :: #{binary() => any()}.


%% Example:
%% dash_iso_image_based_trick_play_settings() :: #{
%%   <<"IntervalCadence">> => list(any()),
%%   <<"ThumbnailHeight">> => integer(),
%%   <<"ThumbnailInterval">> => float(),
%%   <<"ThumbnailWidth">> => integer(),
%%   <<"TileHeight">> => integer(),
%%   <<"TileWidth">> => integer()
%% }
-type dash_iso_image_based_trick_play_settings() :: #{binary() => any()}.


%% Example:
%% container_settings() :: #{
%%   <<"CmfcSettings">> => cmfc_settings(),
%%   <<"Container">> => list(any()),
%%   <<"F4vSettings">> => f4v_settings(),
%%   <<"M2tsSettings">> => m2ts_settings(),
%%   <<"M3u8Settings">> => m3u8_settings(),
%%   <<"MovSettings">> => mov_settings(),
%%   <<"Mp4Settings">> => mp4_settings(),
%%   <<"MpdSettings">> => mpd_settings(),
%%   <<"MxfSettings">> => mxf_settings()
%% }
-type container_settings() :: #{binary() => any()}.


%% Example:
%% video_overlay_input() :: #{
%%   <<"FileInput">> => string(),
%%   <<"InputClippings">> => list(video_overlay_input_clipping()),
%%   <<"TimecodeSource">> => list(any()),
%%   <<"TimecodeStart">> => string()
%% }
-type video_overlay_input() :: #{binary() => any()}.


%% Example:
%% probe_input_file() :: #{
%%   <<"FileUrl">> => string()
%% }
-type probe_input_file() :: #{binary() => any()}.

%% Example:
%% get_job_request() :: #{}
-type get_job_request() :: #{}.


%% Example:
%% cmaf_encryption_settings() :: #{
%%   <<"ConstantInitializationVector">> => string(),
%%   <<"EncryptionMethod">> => list(any()),
%%   <<"InitializationVectorInManifest">> => list(any()),
%%   <<"SpekeKeyProvider">> => speke_key_provider_cmaf(),
%%   <<"StaticKeyProvider">> => static_key_provider(),
%%   <<"Type">> => list(any())
%% }
-type cmaf_encryption_settings() :: #{binary() => any()}.


%% Example:
%% get_preset_response() :: #{
%%   <<"Preset">> => preset()
%% }
-type get_preset_response() :: #{binary() => any()}.


%% Example:
%% start_jobs_query_response() :: #{
%%   <<"Id">> => string()
%% }
-type start_jobs_query_response() :: #{binary() => any()}.


%% Example:
%% list_versions_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_versions_request() :: #{binary() => any()}.


%% Example:
%% caption_description() :: #{
%%   <<"CaptionSelectorName">> => string(),
%%   <<"CustomLanguageCode">> => string(),
%%   <<"DestinationSettings">> => caption_destination_settings(),
%%   <<"LanguageCode">> => list(any()),
%%   <<"LanguageDescription">> => string()
%% }
-type caption_description() :: #{binary() => any()}.


%% Example:
%% video_overlay_crop() :: #{
%%   <<"Height">> => integer(),
%%   <<"Unit">> => list(any()),
%%   <<"Width">> => integer(),
%%   <<"X">> => integer(),
%%   <<"Y">> => integer()
%% }
-type video_overlay_crop() :: #{binary() => any()}.


%% Example:
%% nielsen_non_linear_watermark_settings() :: #{
%%   <<"ActiveWatermarkProcess">> => list(any()),
%%   <<"AdiFilename">> => string(),
%%   <<"AssetId">> => string(),
%%   <<"AssetName">> => string(),
%%   <<"CbetSourceId">> => string(),
%%   <<"EpisodeId">> => string(),
%%   <<"MetadataDestination">> => string(),
%%   <<"SourceId">> => integer(),
%%   <<"SourceWatermarkStatus">> => list(any()),
%%   <<"TicServerUrl">> => string(),
%%   <<"UniqueTicPerAudioTrack">> => list(any())
%% }
-type nielsen_non_linear_watermark_settings() :: #{binary() => any()}.


%% Example:
%% cmaf_image_based_trick_play_settings() :: #{
%%   <<"IntervalCadence">> => list(any()),
%%   <<"ThumbnailHeight">> => integer(),
%%   <<"ThumbnailInterval">> => float(),
%%   <<"ThumbnailWidth">> => integer(),
%%   <<"TileHeight">> => integer(),
%%   <<"TileWidth">> => integer()
%% }
-type cmaf_image_based_trick_play_settings() :: #{binary() => any()}.


%% Example:
%% frame_capture_settings() :: #{
%%   <<"FramerateDenominator">> => integer(),
%%   <<"FramerateNumerator">> => integer(),
%%   <<"MaxCaptures">> => integer(),
%%   <<"Quality">> => integer()
%% }
-type frame_capture_settings() :: #{binary() => any()}.


%% Example:
%% m2ts_settings() :: #{
%%   <<"EbpPlacement">> => list(any()),
%%   <<"EsRateInPes">> => list(any()),
%%   <<"PcrControl">> => list(any()),
%%   <<"PtsOffset">> => integer(),
%%   <<"AudioDuration">> => list(any()),
%%   <<"NielsenId3">> => list(any()),
%%   <<"PcrPid">> => integer(),
%%   <<"Scte35Source">> => list(any()),
%%   <<"DataPTSControl">> => list(any()),
%%   <<"MinEbpInterval">> => integer(),
%%   <<"PatInterval">> => integer(),
%%   <<"TimedMetadataPid">> => integer(),
%%   <<"FragmentTime">> => float(),
%%   <<"PreventBufferUnderflow">> => list(any()),
%%   <<"PmtPid">> => integer(),
%%   <<"DvbSdtSettings">> => dvb_sdt_settings(),
%%   <<"Scte35Esam">> => m2ts_scte35_esam(),
%%   <<"NullPacketBitrate">> => float(),
%%   <<"AudioBufferModel">> => list(any()),
%%   <<"Bitrate">> => integer(),
%%   <<"PrivateMetadataPid">> => integer(),
%%   <<"Scte35Pid">> => integer(),
%%   <<"ForceTsVideoEbpOrder">> => list(any()),
%%   <<"ProgramNumber">> => integer(),
%%   <<"VideoPid">> => integer(),
%%   <<"MaxPcrInterval">> => integer(),
%%   <<"AudioPids">> => list(integer()),
%%   <<"RateMode">> => list(any()),
%%   <<"DvbNitSettings">> => dvb_nit_settings(),
%%   <<"SegmentationTime">> => float(),
%%   <<"BufferModel">> => list(any()),
%%   <<"SegmentationMarkers">> => list(any()),
%%   <<"DvbTeletextPid">> => integer(),
%%   <<"PtsOffsetMode">> => list(any()),
%%   <<"DvbSubPids">> => list(integer()),
%%   <<"AudioFramesPerPes">> => integer(),
%%   <<"KlvMetadata">> => list(any()),
%%   <<"TransportStreamId">> => integer(),
%%   <<"SegmentationStyle">> => list(any()),
%%   <<"AudioPtsOffsetDelta">> => integer(),
%%   <<"PmtInterval">> => integer(),
%%   <<"DvbTdtSettings">> => dvb_tdt_settings(),
%%   <<"EbpAudioInterval">> => list(any())
%% }
-type m2ts_settings() :: #{binary() => any()}.


%% Example:
%% dvb_sdt_settings() :: #{
%%   <<"OutputSdt">> => list(any()),
%%   <<"SdtInterval">> => integer(),
%%   <<"ServiceName">> => string(),
%%   <<"ServiceProviderName">> => string()
%% }
-type dvb_sdt_settings() :: #{binary() => any()}.


%% Example:
%% list_queues_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Queues">> => list(queue()),
%%   <<"TotalConcurrentJobs">> => integer(),
%%   <<"UnallocatedConcurrentJobs">> => integer()
%% }
-type list_queues_response() :: #{binary() => any()}.


%% Example:
%% data_properties() :: #{
%%   <<"LanguageCode">> => string()
%% }
-type data_properties() :: #{binary() => any()}.


%% Example:
%% m2ts_scte35_esam() :: #{
%%   <<"Scte35EsamPid">> => integer()
%% }
-type m2ts_scte35_esam() :: #{binary() => any()}.


%% Example:
%% warning_group() :: #{
%%   <<"Code">> => integer(),
%%   <<"Count">> => integer()
%% }
-type warning_group() :: #{binary() => any()}.


%% Example:
%% srt_destination_settings() :: #{
%%   <<"StylePassthrough">> => list(any())
%% }
-type srt_destination_settings() :: #{binary() => any()}.


%% Example:
%% min_bottom_rendition_size() :: #{
%%   <<"Height">> => integer(),
%%   <<"Width">> => integer()
%% }
-type min_bottom_rendition_size() :: #{binary() => any()}.


%% Example:
%% eac3_atmos_settings() :: #{
%%   <<"Bitrate">> => integer(),
%%   <<"BitstreamMode">> => list(any()),
%%   <<"CodingMode">> => list(any()),
%%   <<"DialogueIntelligence">> => list(any()),
%%   <<"DownmixControl">> => list(any()),
%%   <<"DynamicRangeCompressionLine">> => list(any()),
%%   <<"DynamicRangeCompressionRf">> => list(any()),
%%   <<"DynamicRangeControl">> => list(any()),
%%   <<"LoRoCenterMixLevel">> => float(),
%%   <<"LoRoSurroundMixLevel">> => float(),
%%   <<"LtRtCenterMixLevel">> => float(),
%%   <<"LtRtSurroundMixLevel">> => float(),
%%   <<"MeteringMode">> => list(any()),
%%   <<"SampleRate">> => integer(),
%%   <<"SpeechThreshold">> => integer(),
%%   <<"StereoDownmix">> => list(any()),
%%   <<"SurroundExMode">> => list(any())
%% }
-type eac3_atmos_settings() :: #{binary() => any()}.


%% Example:
%% dolby_vision_level6_metadata() :: #{
%%   <<"MaxCll">> => integer(),
%%   <<"MaxFall">> => integer()
%% }
-type dolby_vision_level6_metadata() :: #{binary() => any()}.


%% Example:
%% f4v_settings() :: #{
%%   <<"MoovPlacement">> => list(any())
%% }
-type f4v_settings() :: #{binary() => any()}.


%% Example:
%% input_decryption_settings() :: #{
%%   <<"DecryptionMode">> => list(any()),
%%   <<"EncryptedDecryptionKey">> => string(),
%%   <<"InitializationVector">> => string(),
%%   <<"KmsKeyRegion">> => string()
%% }
-type input_decryption_settings() :: #{binary() => any()}.


%% Example:
%% channel_mapping() :: #{
%%   <<"OutputChannels">> => list(output_channel_mapping())
%% }
-type channel_mapping() :: #{binary() => any()}.


%% Example:
%% wav_settings() :: #{
%%   <<"BitDepth">> => integer(),
%%   <<"Channels">> => integer(),
%%   <<"Format">> => list(any()),
%%   <<"SampleRate">> => integer()
%% }
-type wav_settings() :: #{binary() => any()}.


%% Example:
%% input_clipping() :: #{
%%   <<"EndTimecode">> => string(),
%%   <<"StartTimecode">> => string()
%% }
-type input_clipping() :: #{binary() => any()}.


%% Example:
%% bad_request_exception() :: #{
%%   <<"Message">> => string()
%% }
-type bad_request_exception() :: #{binary() => any()}.


%% Example:
%% update_queue_response() :: #{
%%   <<"Queue">> => queue()
%% }
-type update_queue_response() :: #{binary() => any()}.

%% Example:
%% delete_queue_request() :: #{}
-type delete_queue_request() :: #{}.


%% Example:
%% automated_abr_settings() :: #{
%%   <<"MaxAbrBitrate">> => integer(),
%%   <<"MaxQualityLevel">> => float(),
%%   <<"MaxRenditions">> => integer(),
%%   <<"MinAbrBitrate">> => integer(),
%%   <<"Rules">> => list(automated_abr_rule())
%% }
-type automated_abr_settings() :: #{binary() => any()}.


%% Example:
%% xavc_hd_intra_cbg_profile_settings() :: #{
%%   <<"XavcClass">> => list(any())
%% }
-type xavc_hd_intra_cbg_profile_settings() :: #{binary() => any()}.


%% Example:
%% embedded_destination_settings() :: #{
%%   <<"Destination608ChannelNumber">> => integer(),
%%   <<"Destination708ServiceNumber">> => integer()
%% }
-type embedded_destination_settings() :: #{binary() => any()}.


%% Example:
%% put_policy_request() :: #{
%%   <<"Policy">> := policy()
%% }
-type put_policy_request() :: #{binary() => any()}.


%% Example:
%% list_job_templates_response() :: #{
%%   <<"JobTemplates">> => list(job_template()),
%%   <<"NextToken">> => string()
%% }
-type list_job_templates_response() :: #{binary() => any()}.


%% Example:
%% mpd_settings() :: #{
%%   <<"AccessibilityCaptionHints">> => list(any()),
%%   <<"AudioDuration">> => list(any()),
%%   <<"C2paManifest">> => list(any()),
%%   <<"CaptionContainerType">> => list(any()),
%%   <<"CertificateSecret">> => string(),
%%   <<"KlvMetadata">> => list(any()),
%%   <<"ManifestMetadataSignaling">> => list(any()),
%%   <<"Scte35Esam">> => list(any()),
%%   <<"Scte35Source">> => list(any()),
%%   <<"SigningKmsKey">> => string(),
%%   <<"TimedMetadata">> => list(any()),
%%   <<"TimedMetadataBoxVersion">> => list(any()),
%%   <<"TimedMetadataSchemeIdUri">> => string(),
%%   <<"TimedMetadataValue">> => string()
%% }
-type mpd_settings() :: #{binary() => any()}.


%% Example:
%% create_preset_response() :: #{
%%   <<"Preset">> => preset()
%% }
-type create_preset_response() :: #{binary() => any()}.


%% Example:
%% gif_settings() :: #{
%%   <<"FramerateControl">> => list(any()),
%%   <<"FramerateConversionAlgorithm">> => list(any()),
%%   <<"FramerateDenominator">> => integer(),
%%   <<"FramerateNumerator">> => integer()
%% }
-type gif_settings() :: #{binary() => any()}.


%% Example:
%% caption_source_framerate() :: #{
%%   <<"FramerateDenominator">> => integer(),
%%   <<"FramerateNumerator">> => integer()
%% }
-type caption_source_framerate() :: #{binary() => any()}.


%% Example:
%% h265_qvbr_settings() :: #{
%%   <<"MaxAverageBitrate">> => integer(),
%%   <<"QvbrQualityLevel">> => integer(),
%%   <<"QvbrQualityLevelFineTune">> => float()
%% }
-type h265_qvbr_settings() :: #{binary() => any()}.


%% Example:
%% audio_normalization_settings() :: #{
%%   <<"Algorithm">> => list(any()),
%%   <<"AlgorithmControl">> => list(any()),
%%   <<"CorrectionGateLevel">> => integer(),
%%   <<"LoudnessLogging">> => list(any()),
%%   <<"PeakCalculation">> => list(any()),
%%   <<"TargetLkfs">> => float(),
%%   <<"TruePeakLimiterThreshold">> => float()
%% }
-type audio_normalization_settings() :: #{binary() => any()}.


%% Example:
%% output_channel_mapping() :: #{
%%   <<"InputChannels">> => list(integer()),
%%   <<"InputChannelsFineTune">> => list(float())
%% }
-type output_channel_mapping() :: #{binary() => any()}.


%% Example:
%% probe_request() :: #{
%%   <<"InputFiles">> => list(probe_input_file())
%% }
-type probe_request() :: #{binary() => any()}.


%% Example:
%% dash_iso_group_settings() :: #{
%%   <<"AdditionalManifests">> => list(dash_additional_manifest()),
%%   <<"AudioChannelConfigSchemeIdUri">> => list(any()),
%%   <<"BaseUrl">> => string(),
%%   <<"DashIFrameTrickPlayNameModifier">> => string(),
%%   <<"DashManifestStyle">> => list(any()),
%%   <<"Destination">> => string(),
%%   <<"DestinationSettings">> => destination_settings(),
%%   <<"Encryption">> => dash_iso_encryption_settings(),
%%   <<"FragmentLength">> => integer(),
%%   <<"HbbtvCompliance">> => list(any()),
%%   <<"ImageBasedTrickPlay">> => list(any()),
%%   <<"ImageBasedTrickPlaySettings">> => dash_iso_image_based_trick_play_settings(),
%%   <<"MinBufferTime">> => integer(),
%%   <<"MinFinalSegmentLength">> => float(),
%%   <<"MpdManifestBandwidthType">> => list(any()),
%%   <<"MpdProfile">> => list(any()),
%%   <<"PtsOffsetHandlingForBFrames">> => list(any()),
%%   <<"SegmentControl">> => list(any()),
%%   <<"SegmentLength">> => integer(),
%%   <<"SegmentLengthControl">> => list(any()),
%%   <<"VideoCompositionOffsets">> => list(any()),
%%   <<"WriteSegmentTimelineInRepresentation">> => list(any())
%% }
-type dash_iso_group_settings() :: #{binary() => any()}.


%% Example:
%% imsc_destination_settings() :: #{
%%   <<"Accessibility">> => list(any()),
%%   <<"StylePassthrough">> => list(any())
%% }
-type imsc_destination_settings() :: #{binary() => any()}.


%% Example:
%% input_tams_settings() :: #{
%%   <<"AuthConnectionArn">> => string(),
%%   <<"GapHandling">> => list(any()),
%%   <<"SourceId">> => string(),
%%   <<"Timerange">> => string()
%% }
-type input_tams_settings() :: #{binary() => any()}.

%% Example:
%% delete_queue_response() :: #{}
-type delete_queue_response() :: #{}.

%% Example:
%% cancel_job_response() :: #{}
-type cancel_job_response() :: #{}.


%% Example:
%% clip_limits() :: #{
%%   <<"MaximumRGBTolerance">> => integer(),
%%   <<"MaximumYUV">> => integer(),
%%   <<"MinimumRGBTolerance">> => integer(),
%%   <<"MinimumYUV">> => integer()
%% }
-type clip_limits() :: #{binary() => any()}.


%% Example:
%% preset() :: #{
%%   <<"Arn">> => string(),
%%   <<"Category">> => string(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"LastUpdated">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"Settings">> => preset_settings(),
%%   <<"Type">> => list(any())
%% }
-type preset() :: #{binary() => any()}.


%% Example:
%% noise_reducer_spatial_filter_settings() :: #{
%%   <<"PostFilterSharpenStrength">> => integer(),
%%   <<"Speed">> => integer(),
%%   <<"Strength">> => integer()
%% }
-type noise_reducer_spatial_filter_settings() :: #{binary() => any()}.


%% Example:
%% vp8_settings() :: #{
%%   <<"Bitrate">> => integer(),
%%   <<"FramerateControl">> => list(any()),
%%   <<"FramerateConversionAlgorithm">> => list(any()),
%%   <<"FramerateDenominator">> => integer(),
%%   <<"FramerateNumerator">> => integer(),
%%   <<"GopSize">> => float(),
%%   <<"HrdBufferSize">> => integer(),
%%   <<"MaxBitrate">> => integer(),
%%   <<"ParControl">> => list(any()),
%%   <<"ParDenominator">> => integer(),
%%   <<"ParNumerator">> => integer(),
%%   <<"QualityTuningLevel">> => list(any()),
%%   <<"RateControlMode">> => list(any())
%% }
-type vp8_settings() :: #{binary() => any()}.


%% Example:
%% h264_qvbr_settings() :: #{
%%   <<"MaxAverageBitrate">> => integer(),
%%   <<"QvbrQualityLevel">> => integer(),
%%   <<"QvbrQualityLevelFineTune">> => float()
%% }
-type h264_qvbr_settings() :: #{binary() => any()}.


%% Example:
%% dvb_nit_settings() :: #{
%%   <<"NetworkId">> => integer(),
%%   <<"NetworkName">> => string(),
%%   <<"NitInterval">> => integer()
%% }
-type dvb_nit_settings() :: #{binary() => any()}.


%% Example:
%% vc3_settings() :: #{
%%   <<"FramerateControl">> => list(any()),
%%   <<"FramerateConversionAlgorithm">> => list(any()),
%%   <<"FramerateDenominator">> => integer(),
%%   <<"FramerateNumerator">> => integer(),
%%   <<"InterlaceMode">> => list(any()),
%%   <<"ScanTypeConversionMode">> => list(any()),
%%   <<"SlowPal">> => list(any()),
%%   <<"Telecine">> => list(any()),
%%   <<"Vc3Class">> => list(any())
%% }
-type vc3_settings() :: #{binary() => any()}.


%% Example:
%% track_source_settings() :: #{
%%   <<"StreamNumber">> => integer(),
%%   <<"TrackNumber">> => integer()
%% }
-type track_source_settings() :: #{binary() => any()}.


%% Example:
%% cmfc_settings() :: #{
%%   <<"AudioDuration">> => list(any()),
%%   <<"AudioGroupId">> => string(),
%%   <<"AudioRenditionSets">> => string(),
%%   <<"AudioTrackType">> => list(any()),
%%   <<"C2paManifest">> => list(any()),
%%   <<"CertificateSecret">> => string(),
%%   <<"DescriptiveVideoServiceFlag">> => list(any()),
%%   <<"IFrameOnlyManifest">> => list(any()),
%%   <<"KlvMetadata">> => list(any()),
%%   <<"ManifestMetadataSignaling">> => list(any()),
%%   <<"Scte35Esam">> => list(any()),
%%   <<"Scte35Source">> => list(any()),
%%   <<"SigningKmsKey">> => string(),
%%   <<"TimedMetadata">> => list(any()),
%%   <<"TimedMetadataBoxVersion">> => list(any()),
%%   <<"TimedMetadataSchemeIdUri">> => string(),
%%   <<"TimedMetadataValue">> => string()
%% }
-type cmfc_settings() :: #{binary() => any()}.

%% Example:
%% get_jobs_query_results_request() :: #{}
-type get_jobs_query_results_request() :: #{}.


%% Example:
%% create_queue_response() :: #{
%%   <<"Queue">> => queue()
%% }
-type create_queue_response() :: #{binary() => any()}.


%% Example:
%% output() :: #{
%%   <<"AudioDescriptions">> => list(audio_description()),
%%   <<"CaptionDescriptions">> => list(caption_description()),
%%   <<"ContainerSettings">> => container_settings(),
%%   <<"Extension">> => string(),
%%   <<"NameModifier">> => string(),
%%   <<"OutputSettings">> => output_settings(),
%%   <<"Preset">> => string(),
%%   <<"VideoDescription">> => video_description()
%% }
-type output() :: #{binary() => any()}.


%% Example:
%% insertable_image() :: #{
%%   <<"Duration">> => integer(),
%%   <<"FadeIn">> => integer(),
%%   <<"FadeOut">> => integer(),
%%   <<"Height">> => integer(),
%%   <<"ImageInserterInput">> => string(),
%%   <<"ImageX">> => integer(),
%%   <<"ImageY">> => integer(),
%%   <<"Layer">> => integer(),
%%   <<"Opacity">> => integer(),
%%   <<"StartTime">> => string(),
%%   <<"Width">> => integer()
%% }
-type insertable_image() :: #{binary() => any()}.


%% Example:
%% h264_settings() :: #{
%%   <<"FlickerAdaptiveQuantization">> => list(any()),
%%   <<"QvbrSettings">> => h264_qvbr_settings(),
%%   <<"SaliencyAwareEncoding">> => list(any()),
%%   <<"EndOfStreamMarkers">> => list(any()),
%%   <<"AdaptiveQuantization">> => list(any()),
%%   <<"Slices">> => integer(),
%%   <<"Softness">> => integer(),
%%   <<"FramerateNumerator">> => integer(),
%%   <<"HrdBufferFinalFillPercentage">> => integer(),
%%   <<"GopBReference">> => list(any()),
%%   <<"HrdBufferInitialFillPercentage">> => integer(),
%%   <<"DynamicSubGop">> => list(any()),
%%   <<"GopSize">> => float(),
%%   <<"UnregisteredSeiTimecode">> => list(any()),
%%   <<"WriteMp4PackagingType">> => list(any()),
%%   <<"SlowPal">> => list(any()),
%%   <<"Telecine">> => list(any()),
%%   <<"CodecProfile">> => list(any()),
%%   <<"QualityTuningLevel">> => list(any()),
%%   <<"GopSizeUnits">> => list(any()),
%%   <<"Bitrate">> => integer(),
%%   <<"BandwidthReductionFilter">> => bandwidth_reduction_filter(),
%%   <<"ParControl">> => list(any()),
%%   <<"RepeatPps">> => list(any()),
%%   <<"InterlaceMode">> => list(any()),
%%   <<"FieldEncoding">> => list(any()),
%%   <<"ScanTypeConversionMode">> => list(any()),
%%   <<"FramerateConversionAlgorithm">> => list(any()),
%%   <<"RateControlMode">> => list(any()),
%%   <<"FramerateControl">> => list(any()),
%%   <<"ParNumerator">> => integer(),
%%   <<"NumberReferenceFrames">> => integer(),
%%   <<"NumberBFramesBetweenReferenceFrames">> => integer(),
%%   <<"MinIInterval">> => integer(),
%%   <<"PerFrameMetrics">> => list(list(any())()),
%%   <<"SceneChangeDetect">> => list(any()),
%%   <<"SpatialAdaptiveQuantization">> => list(any()),
%%   <<"EntropyEncoding">> => list(any()),
%%   <<"ParDenominator">> => integer(),
%%   <<"Syntax">> => list(any()),
%%   <<"GopClosedCadence">> => integer(),
%%   <<"MaxBitrate">> => integer(),
%%   <<"HrdBufferSize">> => integer(),
%%   <<"TemporalAdaptiveQuantization">> => list(any()),
%%   <<"CodecLevel">> => list(any()),
%%   <<"FramerateDenominator">> => integer()
%% }
-type h264_settings() :: #{binary() => any()}.


%% Example:
%% allowed_rendition_size() :: #{
%%   <<"Height">> => integer(),
%%   <<"Required">> => list(any()),
%%   <<"Width">> => integer()
%% }
-type allowed_rendition_size() :: #{binary() => any()}.


%% Example:
%% noise_reducer_filter_settings() :: #{
%%   <<"Strength">> => integer()
%% }
-type noise_reducer_filter_settings() :: #{binary() => any()}.


%% Example:
%% webvtt_hls_source_settings() :: #{
%%   <<"RenditionGroupId">> => string(),
%%   <<"RenditionLanguageCode">> => list(any()),
%%   <<"RenditionName">> => string()
%% }
-type webvtt_hls_source_settings() :: #{binary() => any()}.


%% Example:
%% xavc4k_intra_cbg_profile_settings() :: #{
%%   <<"XavcClass">> => list(any())
%% }
-type xavc4k_intra_cbg_profile_settings() :: #{binary() => any()}.

-type associate_certificate_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type cancel_job_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type create_job_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type create_job_template_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type create_preset_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type create_queue_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type create_resource_share_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type delete_job_template_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type delete_policy_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type delete_preset_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type delete_queue_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type describe_endpoints_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type disassociate_certificate_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type get_job_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type get_job_template_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type get_jobs_query_results_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type get_policy_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type get_preset_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type get_queue_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type list_job_templates_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type list_jobs_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type list_presets_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type list_queues_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type list_tags_for_resource_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type list_versions_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type probe_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type put_policy_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type search_jobs_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type start_jobs_query_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type tag_resource_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type untag_resource_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type update_job_template_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type update_preset_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type update_queue_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Associates an AWS Certificate Manager (ACM) Amazon Resource Name
%% (ARN) with AWS Elemental MediaConvert.
-spec associate_certificate(aws_client:aws_client(), associate_certificate_request()) ->
    {ok, associate_certificate_response(), tuple()} |
    {error, any()} |
    {error, associate_certificate_errors(), tuple()}.
associate_certificate(Client, Input) ->
    associate_certificate(Client, Input, []).

-spec associate_certificate(aws_client:aws_client(), associate_certificate_request(), proplists:proplist()) ->
    {ok, associate_certificate_response(), tuple()} |
    {error, any()} |
    {error, associate_certificate_errors(), tuple()}.
associate_certificate(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2017-08-29/certificates"],
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

%% @doc Permanently cancel a job.
%%
%% Once you have canceled a job, you can't start it again.
-spec cancel_job(aws_client:aws_client(), binary() | list(), cancel_job_request()) ->
    {ok, cancel_job_response(), tuple()} |
    {error, any()} |
    {error, cancel_job_errors(), tuple()}.
cancel_job(Client, Id, Input) ->
    cancel_job(Client, Id, Input, []).

-spec cancel_job(aws_client:aws_client(), binary() | list(), cancel_job_request(), proplists:proplist()) ->
    {ok, cancel_job_response(), tuple()} |
    {error, any()} |
    {error, cancel_job_errors(), tuple()}.
cancel_job(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/2017-08-29/jobs/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 202,
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

%% @doc Create a new transcoding job.
%%
%% For information about jobs and job settings, see the User Guide at
%% http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html
-spec create_job(aws_client:aws_client(), create_job_request()) ->
    {ok, create_job_response(), tuple()} |
    {error, any()} |
    {error, create_job_errors(), tuple()}.
create_job(Client, Input) ->
    create_job(Client, Input, []).

-spec create_job(aws_client:aws_client(), create_job_request(), proplists:proplist()) ->
    {ok, create_job_response(), tuple()} |
    {error, any()} |
    {error, create_job_errors(), tuple()}.
create_job(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2017-08-29/jobs"],
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

%% @doc Create a new job template.
%%
%% For information about job templates see the User Guide at
%% http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html
-spec create_job_template(aws_client:aws_client(), create_job_template_request()) ->
    {ok, create_job_template_response(), tuple()} |
    {error, any()} |
    {error, create_job_template_errors(), tuple()}.
create_job_template(Client, Input) ->
    create_job_template(Client, Input, []).

-spec create_job_template(aws_client:aws_client(), create_job_template_request(), proplists:proplist()) ->
    {ok, create_job_template_response(), tuple()} |
    {error, any()} |
    {error, create_job_template_errors(), tuple()}.
create_job_template(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2017-08-29/jobTemplates"],
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

%% @doc Create a new preset.
%%
%% For information about job templates see the User Guide at
%% http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html
-spec create_preset(aws_client:aws_client(), create_preset_request()) ->
    {ok, create_preset_response(), tuple()} |
    {error, any()} |
    {error, create_preset_errors(), tuple()}.
create_preset(Client, Input) ->
    create_preset(Client, Input, []).

-spec create_preset(aws_client:aws_client(), create_preset_request(), proplists:proplist()) ->
    {ok, create_preset_response(), tuple()} |
    {error, any()} |
    {error, create_preset_errors(), tuple()}.
create_preset(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2017-08-29/presets"],
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

%% @doc Create a new transcoding queue.
%%
%% For information about queues, see Working With Queues in the User Guide at
%% https://docs.aws.amazon.com/mediaconvert/latest/ug/working-with-queues.html
-spec create_queue(aws_client:aws_client(), create_queue_request()) ->
    {ok, create_queue_response(), tuple()} |
    {error, any()} |
    {error, create_queue_errors(), tuple()}.
create_queue(Client, Input) ->
    create_queue(Client, Input, []).

-spec create_queue(aws_client:aws_client(), create_queue_request(), proplists:proplist()) ->
    {ok, create_queue_response(), tuple()} |
    {error, any()} |
    {error, create_queue_errors(), tuple()}.
create_queue(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2017-08-29/queues"],
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

%% @doc Create a new resource share request for MediaConvert resources with
%% AWS Support.
-spec create_resource_share(aws_client:aws_client(), create_resource_share_request()) ->
    {ok, create_resource_share_response(), tuple()} |
    {error, any()} |
    {error, create_resource_share_errors(), tuple()}.
create_resource_share(Client, Input) ->
    create_resource_share(Client, Input, []).

-spec create_resource_share(aws_client:aws_client(), create_resource_share_request(), proplists:proplist()) ->
    {ok, create_resource_share_response(), tuple()} |
    {error, any()} |
    {error, create_resource_share_errors(), tuple()}.
create_resource_share(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2017-08-29/resourceShares"],
    SuccessStatusCode = 202,
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

%% @doc Permanently delete a job template you have created.
-spec delete_job_template(aws_client:aws_client(), binary() | list(), delete_job_template_request()) ->
    {ok, delete_job_template_response(), tuple()} |
    {error, any()} |
    {error, delete_job_template_errors(), tuple()}.
delete_job_template(Client, Name, Input) ->
    delete_job_template(Client, Name, Input, []).

-spec delete_job_template(aws_client:aws_client(), binary() | list(), delete_job_template_request(), proplists:proplist()) ->
    {ok, delete_job_template_response(), tuple()} |
    {error, any()} |
    {error, delete_job_template_errors(), tuple()}.
delete_job_template(Client, Name, Input0, Options0) ->
    Method = delete,
    Path = ["/2017-08-29/jobTemplates/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 202,
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

%% @doc Permanently delete a policy that you created.
-spec delete_policy(aws_client:aws_client(), delete_policy_request()) ->
    {ok, delete_policy_response(), tuple()} |
    {error, any()} |
    {error, delete_policy_errors(), tuple()}.
delete_policy(Client, Input) ->
    delete_policy(Client, Input, []).

-spec delete_policy(aws_client:aws_client(), delete_policy_request(), proplists:proplist()) ->
    {ok, delete_policy_response(), tuple()} |
    {error, any()} |
    {error, delete_policy_errors(), tuple()}.
delete_policy(Client, Input0, Options0) ->
    Method = delete,
    Path = ["/2017-08-29/policy"],
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

%% @doc Permanently delete a preset you have created.
-spec delete_preset(aws_client:aws_client(), binary() | list(), delete_preset_request()) ->
    {ok, delete_preset_response(), tuple()} |
    {error, any()} |
    {error, delete_preset_errors(), tuple()}.
delete_preset(Client, Name, Input) ->
    delete_preset(Client, Name, Input, []).

-spec delete_preset(aws_client:aws_client(), binary() | list(), delete_preset_request(), proplists:proplist()) ->
    {ok, delete_preset_response(), tuple()} |
    {error, any()} |
    {error, delete_preset_errors(), tuple()}.
delete_preset(Client, Name, Input0, Options0) ->
    Method = delete,
    Path = ["/2017-08-29/presets/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 202,
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

%% @doc Permanently delete a queue you have created.
-spec delete_queue(aws_client:aws_client(), binary() | list(), delete_queue_request()) ->
    {ok, delete_queue_response(), tuple()} |
    {error, any()} |
    {error, delete_queue_errors(), tuple()}.
delete_queue(Client, Name, Input) ->
    delete_queue(Client, Name, Input, []).

-spec delete_queue(aws_client:aws_client(), binary() | list(), delete_queue_request(), proplists:proplist()) ->
    {ok, delete_queue_response(), tuple()} |
    {error, any()} |
    {error, delete_queue_errors(), tuple()}.
delete_queue(Client, Name, Input0, Options0) ->
    Method = delete,
    Path = ["/2017-08-29/queues/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 202,
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

%% @doc Send a request with an empty body to the regional API endpoint to get
%% your account API endpoint.
%%
%% Note that DescribeEndpoints is no longer required. We recommend that you
%% send your requests directly to the regional endpoint instead.
-spec describe_endpoints(aws_client:aws_client(), describe_endpoints_request()) ->
    {ok, describe_endpoints_response(), tuple()} |
    {error, any()} |
    {error, describe_endpoints_errors(), tuple()}.
describe_endpoints(Client, Input) ->
    describe_endpoints(Client, Input, []).

-spec describe_endpoints(aws_client:aws_client(), describe_endpoints_request(), proplists:proplist()) ->
    {ok, describe_endpoints_response(), tuple()} |
    {error, any()} |
    {error, describe_endpoints_errors(), tuple()}.
describe_endpoints(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2017-08-29/endpoints"],
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

%% @doc Removes an association between the Amazon Resource Name (ARN) of an
%% AWS Certificate Manager (ACM) certificate and an AWS Elemental
%% MediaConvert resource.
-spec disassociate_certificate(aws_client:aws_client(), binary() | list(), disassociate_certificate_request()) ->
    {ok, disassociate_certificate_response(), tuple()} |
    {error, any()} |
    {error, disassociate_certificate_errors(), tuple()}.
disassociate_certificate(Client, Arn, Input) ->
    disassociate_certificate(Client, Arn, Input, []).

-spec disassociate_certificate(aws_client:aws_client(), binary() | list(), disassociate_certificate_request(), proplists:proplist()) ->
    {ok, disassociate_certificate_response(), tuple()} |
    {error, any()} |
    {error, disassociate_certificate_errors(), tuple()}.
disassociate_certificate(Client, Arn, Input0, Options0) ->
    Method = delete,
    Path = ["/2017-08-29/certificates/", aws_util:encode_uri(Arn), ""],
    SuccessStatusCode = 202,
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

%% @doc Retrieve the JSON for a specific transcoding job.
-spec get_job(aws_client:aws_client(), binary() | list()) ->
    {ok, get_job_response(), tuple()} |
    {error, any()} |
    {error, get_job_errors(), tuple()}.
get_job(Client, Id)
  when is_map(Client) ->
    get_job(Client, Id, #{}, #{}).

-spec get_job(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_job_response(), tuple()} |
    {error, any()} |
    {error, get_job_errors(), tuple()}.
get_job(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_job(Client, Id, QueryMap, HeadersMap, []).

-spec get_job(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_job_response(), tuple()} |
    {error, any()} |
    {error, get_job_errors(), tuple()}.
get_job(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2017-08-29/jobs/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieve the JSON for a specific job template.
-spec get_job_template(aws_client:aws_client(), binary() | list()) ->
    {ok, get_job_template_response(), tuple()} |
    {error, any()} |
    {error, get_job_template_errors(), tuple()}.
get_job_template(Client, Name)
  when is_map(Client) ->
    get_job_template(Client, Name, #{}, #{}).

-spec get_job_template(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_job_template_response(), tuple()} |
    {error, any()} |
    {error, get_job_template_errors(), tuple()}.
get_job_template(Client, Name, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_job_template(Client, Name, QueryMap, HeadersMap, []).

-spec get_job_template(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_job_template_response(), tuple()} |
    {error, any()} |
    {error, get_job_template_errors(), tuple()}.
get_job_template(Client, Name, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2017-08-29/jobTemplates/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieve a JSON array of up to twenty of your most recent jobs
%% matched by a jobs query.
-spec get_jobs_query_results(aws_client:aws_client(), binary() | list()) ->
    {ok, get_jobs_query_results_response(), tuple()} |
    {error, any()} |
    {error, get_jobs_query_results_errors(), tuple()}.
get_jobs_query_results(Client, Id)
  when is_map(Client) ->
    get_jobs_query_results(Client, Id, #{}, #{}).

-spec get_jobs_query_results(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_jobs_query_results_response(), tuple()} |
    {error, any()} |
    {error, get_jobs_query_results_errors(), tuple()}.
get_jobs_query_results(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_jobs_query_results(Client, Id, QueryMap, HeadersMap, []).

-spec get_jobs_query_results(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_jobs_query_results_response(), tuple()} |
    {error, any()} |
    {error, get_jobs_query_results_errors(), tuple()}.
get_jobs_query_results(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2017-08-29/jobsQueries/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieve the JSON for your policy.
-spec get_policy(aws_client:aws_client()) ->
    {ok, get_policy_response(), tuple()} |
    {error, any()} |
    {error, get_policy_errors(), tuple()}.
get_policy(Client)
  when is_map(Client) ->
    get_policy(Client, #{}, #{}).

-spec get_policy(aws_client:aws_client(), map(), map()) ->
    {ok, get_policy_response(), tuple()} |
    {error, any()} |
    {error, get_policy_errors(), tuple()}.
get_policy(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_policy(Client, QueryMap, HeadersMap, []).

-spec get_policy(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, get_policy_response(), tuple()} |
    {error, any()} |
    {error, get_policy_errors(), tuple()}.
get_policy(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2017-08-29/policy"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieve the JSON for a specific preset.
-spec get_preset(aws_client:aws_client(), binary() | list()) ->
    {ok, get_preset_response(), tuple()} |
    {error, any()} |
    {error, get_preset_errors(), tuple()}.
get_preset(Client, Name)
  when is_map(Client) ->
    get_preset(Client, Name, #{}, #{}).

-spec get_preset(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_preset_response(), tuple()} |
    {error, any()} |
    {error, get_preset_errors(), tuple()}.
get_preset(Client, Name, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_preset(Client, Name, QueryMap, HeadersMap, []).

-spec get_preset(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_preset_response(), tuple()} |
    {error, any()} |
    {error, get_preset_errors(), tuple()}.
get_preset(Client, Name, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2017-08-29/presets/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieve the JSON for a specific queue.
-spec get_queue(aws_client:aws_client(), binary() | list()) ->
    {ok, get_queue_response(), tuple()} |
    {error, any()} |
    {error, get_queue_errors(), tuple()}.
get_queue(Client, Name)
  when is_map(Client) ->
    get_queue(Client, Name, #{}, #{}).

-spec get_queue(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_queue_response(), tuple()} |
    {error, any()} |
    {error, get_queue_errors(), tuple()}.
get_queue(Client, Name, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_queue(Client, Name, QueryMap, HeadersMap, []).

-spec get_queue(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_queue_response(), tuple()} |
    {error, any()} |
    {error, get_queue_errors(), tuple()}.
get_queue(Client, Name, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2017-08-29/queues/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieve a JSON array of up to twenty of your job templates.
%%
%% This will return the templates themselves, not just a list of them. To
%% retrieve the next twenty templates, use the nextToken string returned with
%% the array
-spec list_job_templates(aws_client:aws_client()) ->
    {ok, list_job_templates_response(), tuple()} |
    {error, any()} |
    {error, list_job_templates_errors(), tuple()}.
list_job_templates(Client)
  when is_map(Client) ->
    list_job_templates(Client, #{}, #{}).

-spec list_job_templates(aws_client:aws_client(), map(), map()) ->
    {ok, list_job_templates_response(), tuple()} |
    {error, any()} |
    {error, list_job_templates_errors(), tuple()}.
list_job_templates(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_job_templates(Client, QueryMap, HeadersMap, []).

-spec list_job_templates(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_job_templates_response(), tuple()} |
    {error, any()} |
    {error, list_job_templates_errors(), tuple()}.
list_job_templates(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2017-08-29/jobTemplates"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"category">>, maps:get(<<"category">>, QueryMap, undefined)},
        {<<"listBy">>, maps:get(<<"listBy">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"order">>, maps:get(<<"order">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieve a JSON array of up to twenty of your most recently created
%% jobs.
%%
%% This array includes in-process, completed, and errored jobs. This will
%% return the jobs themselves, not just a list of the jobs. To retrieve the
%% twenty next most recent jobs, use the nextToken string returned with the
%% array.
-spec list_jobs(aws_client:aws_client()) ->
    {ok, list_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_jobs_errors(), tuple()}.
list_jobs(Client)
  when is_map(Client) ->
    list_jobs(Client, #{}, #{}).

-spec list_jobs(aws_client:aws_client(), map(), map()) ->
    {ok, list_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_jobs_errors(), tuple()}.
list_jobs(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_jobs(Client, QueryMap, HeadersMap, []).

-spec list_jobs(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_jobs_errors(), tuple()}.
list_jobs(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2017-08-29/jobs"],
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
        {<<"order">>, maps:get(<<"order">>, QueryMap, undefined)},
        {<<"queue">>, maps:get(<<"queue">>, QueryMap, undefined)},
        {<<"status">>, maps:get(<<"status">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieve a JSON array of up to twenty of your presets.
%%
%% This will return the presets themselves, not just a list of them. To
%% retrieve the next twenty presets, use the nextToken string returned with
%% the array.
-spec list_presets(aws_client:aws_client()) ->
    {ok, list_presets_response(), tuple()} |
    {error, any()} |
    {error, list_presets_errors(), tuple()}.
list_presets(Client)
  when is_map(Client) ->
    list_presets(Client, #{}, #{}).

-spec list_presets(aws_client:aws_client(), map(), map()) ->
    {ok, list_presets_response(), tuple()} |
    {error, any()} |
    {error, list_presets_errors(), tuple()}.
list_presets(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_presets(Client, QueryMap, HeadersMap, []).

-spec list_presets(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_presets_response(), tuple()} |
    {error, any()} |
    {error, list_presets_errors(), tuple()}.
list_presets(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2017-08-29/presets"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"category">>, maps:get(<<"category">>, QueryMap, undefined)},
        {<<"listBy">>, maps:get(<<"listBy">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"order">>, maps:get(<<"order">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieve a JSON array of up to twenty of your queues.
%%
%% This will return the queues themselves, not just a list of them. To
%% retrieve the next twenty queues, use the nextToken string returned with
%% the array.
-spec list_queues(aws_client:aws_client()) ->
    {ok, list_queues_response(), tuple()} |
    {error, any()} |
    {error, list_queues_errors(), tuple()}.
list_queues(Client)
  when is_map(Client) ->
    list_queues(Client, #{}, #{}).

-spec list_queues(aws_client:aws_client(), map(), map()) ->
    {ok, list_queues_response(), tuple()} |
    {error, any()} |
    {error, list_queues_errors(), tuple()}.
list_queues(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_queues(Client, QueryMap, HeadersMap, []).

-spec list_queues(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_queues_response(), tuple()} |
    {error, any()} |
    {error, list_queues_errors(), tuple()}.
list_queues(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2017-08-29/queues"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"listBy">>, maps:get(<<"listBy">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"order">>, maps:get(<<"order">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieve the tags for a MediaConvert resource.
-spec list_tags_for_resource(aws_client:aws_client(), binary() | list()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Arn)
  when is_map(Client) ->
    list_tags_for_resource(Client, Arn, #{}, #{}).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Arn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, Arn, QueryMap, HeadersMap, []).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Arn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2017-08-29/tags/", aws_util:encode_uri(Arn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieve a JSON array of all available Job engine versions and the
%% date they expire.
-spec list_versions(aws_client:aws_client()) ->
    {ok, list_versions_response(), tuple()} |
    {error, any()} |
    {error, list_versions_errors(), tuple()}.
list_versions(Client)
  when is_map(Client) ->
    list_versions(Client, #{}, #{}).

-spec list_versions(aws_client:aws_client(), map(), map()) ->
    {ok, list_versions_response(), tuple()} |
    {error, any()} |
    {error, list_versions_errors(), tuple()}.
list_versions(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_versions(Client, QueryMap, HeadersMap, []).

-spec list_versions(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_versions_response(), tuple()} |
    {error, any()} |
    {error, list_versions_errors(), tuple()}.
list_versions(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2017-08-29/versions"],
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

%% @doc Use Probe to obtain detailed information about your input media
%% files.
%%
%% Probe returns a JSON that includes container, codec, frame rate,
%% resolution, track count, audio layout, captions, and more. You can use
%% this information to learn more about your media files, or to help make
%% decisions while automating your transcoding workflow.
-spec probe(aws_client:aws_client(), probe_request()) ->
    {ok, probe_response(), tuple()} |
    {error, any()} |
    {error, probe_errors(), tuple()}.
probe(Client, Input) ->
    probe(Client, Input, []).

-spec probe(aws_client:aws_client(), probe_request(), proplists:proplist()) ->
    {ok, probe_response(), tuple()} |
    {error, any()} |
    {error, probe_errors(), tuple()}.
probe(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2017-08-29/probe"],
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

%% @doc Create or change your policy.
%%
%% For more information about policies, see the user guide at
%% http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html
-spec put_policy(aws_client:aws_client(), put_policy_request()) ->
    {ok, put_policy_response(), tuple()} |
    {error, any()} |
    {error, put_policy_errors(), tuple()}.
put_policy(Client, Input) ->
    put_policy(Client, Input, []).

-spec put_policy(aws_client:aws_client(), put_policy_request(), proplists:proplist()) ->
    {ok, put_policy_response(), tuple()} |
    {error, any()} |
    {error, put_policy_errors(), tuple()}.
put_policy(Client, Input0, Options0) ->
    Method = put,
    Path = ["/2017-08-29/policy"],
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

%% @doc Retrieve a JSON array that includes job details for up to twenty of
%% your most recent jobs.
%%
%% Optionally filter results further according to input file, queue, or
%% status. To retrieve the twenty next most recent jobs, use the nextToken
%% string returned with the array.
-spec search_jobs(aws_client:aws_client()) ->
    {ok, search_jobs_response(), tuple()} |
    {error, any()} |
    {error, search_jobs_errors(), tuple()}.
search_jobs(Client)
  when is_map(Client) ->
    search_jobs(Client, #{}, #{}).

-spec search_jobs(aws_client:aws_client(), map(), map()) ->
    {ok, search_jobs_response(), tuple()} |
    {error, any()} |
    {error, search_jobs_errors(), tuple()}.
search_jobs(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    search_jobs(Client, QueryMap, HeadersMap, []).

-spec search_jobs(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, search_jobs_response(), tuple()} |
    {error, any()} |
    {error, search_jobs_errors(), tuple()}.
search_jobs(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2017-08-29/search"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"inputFile">>, maps:get(<<"inputFile">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"order">>, maps:get(<<"order">>, QueryMap, undefined)},
        {<<"queue">>, maps:get(<<"queue">>, QueryMap, undefined)},
        {<<"status">>, maps:get(<<"status">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Start an asynchronous jobs query using the provided filters.
%%
%% To receive the list of jobs that match your query, call the
%% GetJobsQueryResults API using the query ID returned by this API.
-spec start_jobs_query(aws_client:aws_client(), start_jobs_query_request()) ->
    {ok, start_jobs_query_response(), tuple()} |
    {error, any()} |
    {error, start_jobs_query_errors(), tuple()}.
start_jobs_query(Client, Input) ->
    start_jobs_query(Client, Input, []).

-spec start_jobs_query(aws_client:aws_client(), start_jobs_query_request(), proplists:proplist()) ->
    {ok, start_jobs_query_response(), tuple()} |
    {error, any()} |
    {error, start_jobs_query_errors(), tuple()}.
start_jobs_query(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2017-08-29/jobsQueries"],
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

%% @doc Add tags to a MediaConvert queue, preset, or job template.
%%
%% For information about tagging, see the User Guide at
%% https://docs.aws.amazon.com/mediaconvert/latest/ug/tagging-resources.html
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
    Path = ["/2017-08-29/tags"],
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

%% @doc Remove tags from a MediaConvert queue, preset, or job template.
%%
%% For information about tagging, see the User Guide at
%% https://docs.aws.amazon.com/mediaconvert/latest/ug/tagging-resources.html
-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Arn, Input) ->
    untag_resource(Client, Arn, Input, []).

-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request(), proplists:proplist()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Arn, Input0, Options0) ->
    Method = put,
    Path = ["/2017-08-29/tags/", aws_util:encode_uri(Arn), ""],
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

%% @doc Modify one of your existing job templates.
-spec update_job_template(aws_client:aws_client(), binary() | list(), update_job_template_request()) ->
    {ok, update_job_template_response(), tuple()} |
    {error, any()} |
    {error, update_job_template_errors(), tuple()}.
update_job_template(Client, Name, Input) ->
    update_job_template(Client, Name, Input, []).

-spec update_job_template(aws_client:aws_client(), binary() | list(), update_job_template_request(), proplists:proplist()) ->
    {ok, update_job_template_response(), tuple()} |
    {error, any()} |
    {error, update_job_template_errors(), tuple()}.
update_job_template(Client, Name, Input0, Options0) ->
    Method = put,
    Path = ["/2017-08-29/jobTemplates/", aws_util:encode_uri(Name), ""],
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

%% @doc Modify one of your existing presets.
-spec update_preset(aws_client:aws_client(), binary() | list(), update_preset_request()) ->
    {ok, update_preset_response(), tuple()} |
    {error, any()} |
    {error, update_preset_errors(), tuple()}.
update_preset(Client, Name, Input) ->
    update_preset(Client, Name, Input, []).

-spec update_preset(aws_client:aws_client(), binary() | list(), update_preset_request(), proplists:proplist()) ->
    {ok, update_preset_response(), tuple()} |
    {error, any()} |
    {error, update_preset_errors(), tuple()}.
update_preset(Client, Name, Input0, Options0) ->
    Method = put,
    Path = ["/2017-08-29/presets/", aws_util:encode_uri(Name), ""],
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

%% @doc Modify one of your existing queues.
-spec update_queue(aws_client:aws_client(), binary() | list(), update_queue_request()) ->
    {ok, update_queue_response(), tuple()} |
    {error, any()} |
    {error, update_queue_errors(), tuple()}.
update_queue(Client, Name, Input) ->
    update_queue(Client, Name, Input, []).

-spec update_queue(aws_client:aws_client(), binary() | list(), update_queue_request(), proplists:proplist()) ->
    {ok, update_queue_response(), tuple()} |
    {error, any()} |
    {error, update_queue_errors(), tuple()}.
update_queue(Client, Name, Input0, Options0) ->
    Method = put,
    Path = ["/2017-08-29/queues/", aws_util:encode_uri(Name), ""],
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
    Client1 = Client#{service => <<"mediaconvert">>},
    Host = build_host(<<"mediaconvert">>, Client1),
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
