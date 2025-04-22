%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Use the AWS Elemental MediaTailor SDKs and CLI to configure scalable
%% ad insertion and linear channels.
%%
%% With MediaTailor, you can assemble existing content into a linear stream
%% and serve targeted ads to viewers while maintaining broadcast quality in
%% over-the-top (OTT) video applications. For information about using the
%% service, including detailed information about the settings covered in this
%% guide, see the AWS Elemental MediaTailor User Guide:
%% https://docs.aws.amazon.com/mediatailor/latest/ug/.
%%
%% Through the SDKs and the CLI you manage AWS Elemental MediaTailor
%% configurations and channels the same as you do through the console. For
%% example, you specify ad insertion behavior and mapping information for the
%% origin server and the ad decision server (ADS).
-module(aws_mediatailor).

-export([configure_logs_for_channel/2,
         configure_logs_for_channel/3,
         configure_logs_for_playback_configuration/2,
         configure_logs_for_playback_configuration/3,
         create_channel/3,
         create_channel/4,
         create_live_source/4,
         create_live_source/5,
         create_prefetch_schedule/4,
         create_prefetch_schedule/5,
         create_program/4,
         create_program/5,
         create_source_location/3,
         create_source_location/4,
         create_vod_source/4,
         create_vod_source/5,
         delete_channel/3,
         delete_channel/4,
         delete_channel_policy/3,
         delete_channel_policy/4,
         delete_live_source/4,
         delete_live_source/5,
         delete_playback_configuration/3,
         delete_playback_configuration/4,
         delete_prefetch_schedule/4,
         delete_prefetch_schedule/5,
         delete_program/4,
         delete_program/5,
         delete_source_location/3,
         delete_source_location/4,
         delete_vod_source/4,
         delete_vod_source/5,
         describe_channel/2,
         describe_channel/4,
         describe_channel/5,
         describe_live_source/3,
         describe_live_source/5,
         describe_live_source/6,
         describe_program/3,
         describe_program/5,
         describe_program/6,
         describe_source_location/2,
         describe_source_location/4,
         describe_source_location/5,
         describe_vod_source/3,
         describe_vod_source/5,
         describe_vod_source/6,
         get_channel_policy/2,
         get_channel_policy/4,
         get_channel_policy/5,
         get_channel_schedule/2,
         get_channel_schedule/4,
         get_channel_schedule/5,
         get_playback_configuration/2,
         get_playback_configuration/4,
         get_playback_configuration/5,
         get_prefetch_schedule/3,
         get_prefetch_schedule/5,
         get_prefetch_schedule/6,
         list_alerts/2,
         list_alerts/4,
         list_alerts/5,
         list_channels/1,
         list_channels/3,
         list_channels/4,
         list_live_sources/2,
         list_live_sources/4,
         list_live_sources/5,
         list_playback_configurations/1,
         list_playback_configurations/3,
         list_playback_configurations/4,
         list_prefetch_schedules/3,
         list_prefetch_schedules/4,
         list_source_locations/1,
         list_source_locations/3,
         list_source_locations/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         list_vod_sources/2,
         list_vod_sources/4,
         list_vod_sources/5,
         put_channel_policy/3,
         put_channel_policy/4,
         put_playback_configuration/2,
         put_playback_configuration/3,
         start_channel/3,
         start_channel/4,
         stop_channel/3,
         stop_channel/4,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_channel/3,
         update_channel/4,
         update_live_source/4,
         update_live_source/5,
         update_program/4,
         update_program/5,
         update_source_location/3,
         update_source_location/4,
         update_vod_source/4,
         update_vod_source/5]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% put_channel_policy_request() :: #{
%%   <<"Policy">> := string()
%% }
-type put_channel_policy_request() :: #{binary() => any()}.

%% Example:
%% delete_program_response() :: #{}
-type delete_program_response() :: #{}.


%% Example:
%% live_pre_roll_configuration() :: #{
%%   <<"AdDecisionServerUrl">> => string(),
%%   <<"MaxDurationSeconds">> => integer()
%% }
-type live_pre_roll_configuration() :: #{binary() => any()}.

%% Example:
%% delete_channel_request() :: #{}
-type delete_channel_request() :: #{}.


%% Example:
%% response_output_item() :: #{
%%   <<"DashPlaylistSettings">> => dash_playlist_settings(),
%%   <<"HlsPlaylistSettings">> => hls_playlist_settings(),
%%   <<"ManifestName">> => string(),
%%   <<"PlaybackUrl">> => string(),
%%   <<"SourceGroup">> => string()
%% }
-type response_output_item() :: #{binary() => any()}.

%% Example:
%% put_channel_policy_response() :: #{}
-type put_channel_policy_response() :: #{}.


%% Example:
%% vod_source() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"HttpPackageConfigurations">> => list(http_package_configuration()()),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"SourceLocationName">> => string(),
%%   <<"Tags">> => map(),
%%   <<"VodSourceName">> => string()
%% }
-type vod_source() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"Tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% describe_vod_source_request() :: #{}
-type describe_vod_source_request() :: #{}.


%% Example:
%% configure_logs_for_playback_configuration_response() :: #{
%%   <<"AdsInteractionLog">> => ads_interaction_log(),
%%   <<"EnabledLoggingStrategies">> => list(list(any())()),
%%   <<"ManifestServiceInteractionLog">> => manifest_service_interaction_log(),
%%   <<"PercentEnabled">> := integer(),
%%   <<"PlaybackConfigurationName">> => string()
%% }
-type configure_logs_for_playback_configuration_response() :: #{binary() => any()}.


%% Example:
%% update_vod_source_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"HttpPackageConfigurations">> => list(http_package_configuration()()),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"SourceLocationName">> => string(),
%%   <<"Tags">> => map(),
%%   <<"VodSourceName">> => string()
%% }
-type update_vod_source_response() :: #{binary() => any()}.

%% Example:
%% delete_vod_source_request() :: #{}
-type delete_vod_source_request() :: #{}.


%% Example:
%% describe_vod_source_response() :: #{
%%   <<"AdBreakOpportunities">> => list(ad_break_opportunity()()),
%%   <<"Arn">> => string(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"HttpPackageConfigurations">> => list(http_package_configuration()()),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"SourceLocationName">> => string(),
%%   <<"Tags">> => map(),
%%   <<"VodSourceName">> => string()
%% }
-type describe_vod_source_response() :: #{binary() => any()}.


%% Example:
%% create_channel_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"Audiences">> => list([string()]()),
%%   <<"ChannelName">> => string(),
%%   <<"ChannelState">> => list(any()),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"FillerSlate">> => slate_source(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"Outputs">> => list(response_output_item()()),
%%   <<"PlaybackMode">> => string(),
%%   <<"Tags">> => map(),
%%   <<"Tier">> => string(),
%%   <<"TimeShiftConfiguration">> => time_shift_configuration()
%% }
-type create_channel_response() :: #{binary() => any()}.


%% Example:
%% configure_logs_for_channel_request() :: #{
%%   <<"ChannelName">> := string(),
%%   <<"LogTypes">> := list(list(any())())
%% }
-type configure_logs_for_channel_request() :: #{binary() => any()}.

%% Example:
%% delete_playback_configuration_request() :: #{}
-type delete_playback_configuration_request() :: #{}.

%% Example:
%% delete_vod_source_response() :: #{}
-type delete_vod_source_response() :: #{}.

%% Example:
%% delete_channel_response() :: #{}
-type delete_channel_response() :: #{}.


%% Example:
%% playback_configuration() :: #{
%%   <<"AdConditioningConfiguration">> => ad_conditioning_configuration(),
%%   <<"AdDecisionServerUrl">> => string(),
%%   <<"AvailSuppression">> => avail_suppression(),
%%   <<"Bumper">> => bumper(),
%%   <<"CdnConfiguration">> => cdn_configuration(),
%%   <<"ConfigurationAliases">> => map(),
%%   <<"DashConfiguration">> => dash_configuration(),
%%   <<"HlsConfiguration">> => hls_configuration(),
%%   <<"InsertionMode">> => list(any()),
%%   <<"LivePreRollConfiguration">> => live_pre_roll_configuration(),
%%   <<"LogConfiguration">> => log_configuration(),
%%   <<"ManifestProcessingRules">> => manifest_processing_rules(),
%%   <<"Name">> => string(),
%%   <<"PersonalizationThresholdSeconds">> => integer(),
%%   <<"PlaybackConfigurationArn">> => string(),
%%   <<"PlaybackEndpointPrefix">> => string(),
%%   <<"SessionInitializationEndpointPrefix">> => string(),
%%   <<"SlateAdUrl">> => string(),
%%   <<"Tags">> => map(),
%%   <<"TranscodeProfileName">> => string(),
%%   <<"VideoContentSourceUrl">> => string()
%% }
-type playback_configuration() :: #{binary() => any()}.


%% Example:
%% get_channel_schedule_request() :: #{
%%   <<"Audience">> => string(),
%%   <<"DurationMinutes">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type get_channel_schedule_request() :: #{binary() => any()}.


%% Example:
%% list_alerts_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ResourceArn">> := string()
%% }
-type list_alerts_request() :: #{binary() => any()}.


%% Example:
%% list_prefetch_schedules_response() :: #{
%%   <<"Items">> => list(prefetch_schedule()()),
%%   <<"NextToken">> => string()
%% }
-type list_prefetch_schedules_response() :: #{binary() => any()}.


%% Example:
%% prefetch_consumption() :: #{
%%   <<"AvailMatchingCriteria">> => list(avail_matching_criteria()()),
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"StartTime">> => non_neg_integer()
%% }
-type prefetch_consumption() :: #{binary() => any()}.

%% Example:
%% delete_channel_policy_request() :: #{}
-type delete_channel_policy_request() :: #{}.


%% Example:
%% ad_conditioning_configuration() :: #{
%%   <<"StreamingMediaFileConditioning">> => list(any())
%% }
-type ad_conditioning_configuration() :: #{binary() => any()}.


%% Example:
%% list_vod_sources_response() :: #{
%%   <<"Items">> => list(vod_source()()),
%%   <<"NextToken">> => string()
%% }
-type list_vod_sources_response() :: #{binary() => any()}.


%% Example:
%% configure_logs_for_playback_configuration_request() :: #{
%%   <<"AdsInteractionLog">> => ads_interaction_log(),
%%   <<"EnabledLoggingStrategies">> => list(list(any())()),
%%   <<"ManifestServiceInteractionLog">> => manifest_service_interaction_log(),
%%   <<"PercentEnabled">> => integer(),
%%   <<"PlaybackConfigurationName">> => string()
%% }
-type configure_logs_for_playback_configuration_request() :: #{binary() => any()}.


%% Example:
%% traffic_shaping_retrieval_window() :: #{
%%   <<"RetrievalWindowDurationSeconds">> => integer()
%% }
-type traffic_shaping_retrieval_window() :: #{binary() => any()}.


%% Example:
%% update_source_location_response() :: #{
%%   <<"AccessConfiguration">> => access_configuration(),
%%   <<"Arn">> => string(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"DefaultSegmentDeliveryConfiguration">> => default_segment_delivery_configuration(),
%%   <<"HttpConfiguration">> => http_configuration(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"SegmentDeliveryConfigurations">> => list(segment_delivery_configuration()()),
%%   <<"SourceLocationName">> => string(),
%%   <<"Tags">> => map()
%% }
-type update_source_location_response() :: #{binary() => any()}.


%% Example:
%% default_segment_delivery_configuration() :: #{
%%   <<"BaseUrl">> => string()
%% }
-type default_segment_delivery_configuration() :: #{binary() => any()}.


%% Example:
%% recurring_retrieval() :: #{
%%   <<"DelayAfterAvailEndSeconds">> => integer(),
%%   <<"DynamicVariables">> => map(),
%%   <<"TrafficShapingRetrievalWindow">> => traffic_shaping_retrieval_window(),
%%   <<"TrafficShapingType">> => list(any())
%% }
-type recurring_retrieval() :: #{binary() => any()}.


%% Example:
%% get_channel_schedule_response() :: #{
%%   <<"Items">> => list(schedule_entry()()),
%%   <<"NextToken">> => string()
%% }
-type get_channel_schedule_response() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"TagKeys">> := list(string()())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% ad_break_opportunity() :: #{
%%   <<"OffsetMillis">> => float()
%% }
-type ad_break_opportunity() :: #{binary() => any()}.

%% Example:
%% get_prefetch_schedule_request() :: #{}
-type get_prefetch_schedule_request() :: #{}.


%% Example:
%% manifest_processing_rules() :: #{
%%   <<"AdMarkerPassthrough">> => ad_marker_passthrough()
%% }
-type manifest_processing_rules() :: #{binary() => any()}.


%% Example:
%% dash_playlist_settings() :: #{
%%   <<"ManifestWindowSeconds">> => integer(),
%%   <<"MinBufferTimeSeconds">> => integer(),
%%   <<"MinUpdatePeriodSeconds">> => integer(),
%%   <<"SuggestedPresentationDelaySeconds">> => integer()
%% }
-type dash_playlist_settings() :: #{binary() => any()}.

%% Example:
%% stop_channel_request() :: #{}
-type stop_channel_request() :: #{}.


%% Example:
%% audience_media() :: #{
%%   <<"AlternateMedia">> => list(alternate_media()()),
%%   <<"Audience">> => string()
%% }
-type audience_media() :: #{binary() => any()}.


%% Example:
%% describe_source_location_response() :: #{
%%   <<"AccessConfiguration">> => access_configuration(),
%%   <<"Arn">> => string(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"DefaultSegmentDeliveryConfiguration">> => default_segment_delivery_configuration(),
%%   <<"HttpConfiguration">> => http_configuration(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"SegmentDeliveryConfigurations">> => list(segment_delivery_configuration()()),
%%   <<"SourceLocationName">> => string(),
%%   <<"Tags">> => map()
%% }
-type describe_source_location_response() :: #{binary() => any()}.


%% Example:
%% list_playback_configurations_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_playback_configurations_request() :: #{binary() => any()}.


%% Example:
%% get_prefetch_schedule_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"Consumption">> => prefetch_consumption(),
%%   <<"Name">> => string(),
%%   <<"PlaybackConfigurationName">> => string(),
%%   <<"RecurringPrefetchConfiguration">> => recurring_prefetch_configuration(),
%%   <<"Retrieval">> => prefetch_retrieval(),
%%   <<"ScheduleType">> => list(any()),
%%   <<"StreamId">> => string()
%% }
-type get_prefetch_schedule_response() :: #{binary() => any()}.


%% Example:
%% clip_range() :: #{
%%   <<"EndOffsetMillis">> => float(),
%%   <<"StartOffsetMillis">> => float()
%% }
-type clip_range() :: #{binary() => any()}.


%% Example:
%% create_program_response() :: #{
%%   <<"AdBreaks">> => list(ad_break()()),
%%   <<"Arn">> => string(),
%%   <<"AudienceMedia">> => list(audience_media()()),
%%   <<"ChannelName">> => string(),
%%   <<"ClipRange">> => clip_range(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"DurationMillis">> => float(),
%%   <<"LiveSourceName">> => string(),
%%   <<"ProgramName">> => string(),
%%   <<"ScheduledStartTime">> => non_neg_integer(),
%%   <<"SourceLocationName">> => string(),
%%   <<"VodSourceName">> => string()
%% }
-type create_program_response() :: #{binary() => any()}.


%% Example:
%% list_live_sources_response() :: #{
%%   <<"Items">> => list(live_source()()),
%%   <<"NextToken">> => string()
%% }
-type list_live_sources_response() :: #{binary() => any()}.


%% Example:
%% create_source_location_response() :: #{
%%   <<"AccessConfiguration">> => access_configuration(),
%%   <<"Arn">> => string(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"DefaultSegmentDeliveryConfiguration">> => default_segment_delivery_configuration(),
%%   <<"HttpConfiguration">> => http_configuration(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"SegmentDeliveryConfigurations">> => list(segment_delivery_configuration()()),
%%   <<"SourceLocationName">> => string(),
%%   <<"Tags">> => map()
%% }
-type create_source_location_response() :: #{binary() => any()}.


%% Example:
%% update_live_source_request() :: #{
%%   <<"HttpPackageConfigurations">> := list(http_package_configuration()())
%% }
-type update_live_source_request() :: #{binary() => any()}.


%% Example:
%% secrets_manager_access_token_configuration() :: #{
%%   <<"HeaderName">> => string(),
%%   <<"SecretArn">> => string(),
%%   <<"SecretStringKey">> => string()
%% }
-type secrets_manager_access_token_configuration() :: #{binary() => any()}.

%% Example:
%% stop_channel_response() :: #{}
-type stop_channel_response() :: #{}.

%% Example:
%% start_channel_request() :: #{}
-type start_channel_request() :: #{}.

%% Example:
%% get_playback_configuration_request() :: #{}
-type get_playback_configuration_request() :: #{}.


%% Example:
%% http_configuration() :: #{
%%   <<"BaseUrl">> => string()
%% }
-type http_configuration() :: #{binary() => any()}.


%% Example:
%% cdn_configuration() :: #{
%%   <<"AdSegmentUrlPrefix">> => string(),
%%   <<"ContentSegmentUrlPrefix">> => string()
%% }
-type cdn_configuration() :: #{binary() => any()}.


%% Example:
%% avail_suppression() :: #{
%%   <<"FillPolicy">> => list(any()),
%%   <<"Mode">> => list(any()),
%%   <<"Value">> => string()
%% }
-type avail_suppression() :: #{binary() => any()}.


%% Example:
%% update_program_schedule_configuration() :: #{
%%   <<"ClipRange">> => clip_range(),
%%   <<"Transition">> => update_program_transition()
%% }
-type update_program_schedule_configuration() :: #{binary() => any()}.


%% Example:
%% http_package_configuration() :: #{
%%   <<"Path">> => string(),
%%   <<"SourceGroup">> => string(),
%%   <<"Type">> => list(any())
%% }
-type http_package_configuration() :: #{binary() => any()}.


%% Example:
%% create_live_source_request() :: #{
%%   <<"HttpPackageConfigurations">> := list(http_package_configuration()()),
%%   <<"Tags">> => map()
%% }
-type create_live_source_request() :: #{binary() => any()}.


%% Example:
%% create_prefetch_schedule_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"Consumption">> => prefetch_consumption(),
%%   <<"Name">> => string(),
%%   <<"PlaybackConfigurationName">> => string(),
%%   <<"RecurringPrefetchConfiguration">> => recurring_prefetch_configuration(),
%%   <<"Retrieval">> => prefetch_retrieval(),
%%   <<"ScheduleType">> => list(any()),
%%   <<"StreamId">> => string()
%% }
-type create_prefetch_schedule_response() :: #{binary() => any()}.

%% Example:
%% delete_channel_policy_response() :: #{}
-type delete_channel_policy_response() :: #{}.


%% Example:
%% describe_channel_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"Audiences">> => list([string()]()),
%%   <<"ChannelName">> => string(),
%%   <<"ChannelState">> => list(any()),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"FillerSlate">> => slate_source(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"LogConfiguration">> := log_configuration_for_channel(),
%%   <<"Outputs">> => list(response_output_item()()),
%%   <<"PlaybackMode">> => string(),
%%   <<"Tags">> => map(),
%%   <<"Tier">> => string(),
%%   <<"TimeShiftConfiguration">> => time_shift_configuration()
%% }
-type describe_channel_response() :: #{binary() => any()}.


%% Example:
%% log_configuration_for_channel() :: #{
%%   <<"LogTypes">> => list(list(any())())
%% }
-type log_configuration_for_channel() :: #{binary() => any()}.

%% Example:
%% describe_channel_request() :: #{}
-type describe_channel_request() :: #{}.


%% Example:
%% alternate_media() :: #{
%%   <<"AdBreaks">> => list(ad_break()()),
%%   <<"ClipRange">> => clip_range(),
%%   <<"DurationMillis">> => float(),
%%   <<"LiveSourceName">> => string(),
%%   <<"ScheduledStartTimeMillis">> => float(),
%%   <<"SourceLocationName">> => string(),
%%   <<"VodSourceName">> => string()
%% }
-type alternate_media() :: #{binary() => any()}.


%% Example:
%% live_source() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"HttpPackageConfigurations">> => list(http_package_configuration()()),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"LiveSourceName">> => string(),
%%   <<"SourceLocationName">> => string(),
%%   <<"Tags">> => map()
%% }
-type live_source() :: #{binary() => any()}.


%% Example:
%% schedule_entry() :: #{
%%   <<"ApproximateDurationSeconds">> => float(),
%%   <<"ApproximateStartTime">> => non_neg_integer(),
%%   <<"Arn">> => string(),
%%   <<"Audiences">> => list([string()]()),
%%   <<"ChannelName">> => string(),
%%   <<"LiveSourceName">> => string(),
%%   <<"ProgramName">> => string(),
%%   <<"ScheduleAdBreaks">> => list(schedule_ad_break()()),
%%   <<"ScheduleEntryType">> => list(any()),
%%   <<"SourceLocationName">> => string(),
%%   <<"VodSourceName">> => string()
%% }
-type schedule_entry() :: #{binary() => any()}.


%% Example:
%% create_channel_request() :: #{
%%   <<"Audiences">> => list([string()]()),
%%   <<"FillerSlate">> => slate_source(),
%%   <<"Outputs">> := list(request_output_item()()),
%%   <<"PlaybackMode">> := list(any()),
%%   <<"Tags">> => map(),
%%   <<"Tier">> => list(any()),
%%   <<"TimeShiftConfiguration">> => time_shift_configuration()
%% }
-type create_channel_request() :: #{binary() => any()}.

%% Example:
%% describe_source_location_request() :: #{}
-type describe_source_location_request() :: #{}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"Tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% get_channel_policy_response() :: #{
%%   <<"Policy">> => string()
%% }
-type get_channel_policy_response() :: #{binary() => any()}.


%% Example:
%% prefetch_retrieval() :: #{
%%   <<"DynamicVariables">> => map(),
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"TrafficShapingRetrievalWindow">> => traffic_shaping_retrieval_window(),
%%   <<"TrafficShapingType">> => list(any())
%% }
-type prefetch_retrieval() :: #{binary() => any()}.


%% Example:
%% configure_logs_for_channel_response() :: #{
%%   <<"ChannelName">> => string(),
%%   <<"LogTypes">> => list(list(any())())
%% }
-type configure_logs_for_channel_response() :: #{binary() => any()}.


%% Example:
%% list_channels_response() :: #{
%%   <<"Items">> => list(channel()()),
%%   <<"NextToken">> => string()
%% }
-type list_channels_response() :: #{binary() => any()}.


%% Example:
%% create_prefetch_schedule_request() :: #{
%%   <<"Consumption">> => prefetch_consumption(),
%%   <<"RecurringPrefetchConfiguration">> => recurring_prefetch_configuration(),
%%   <<"Retrieval">> => prefetch_retrieval(),
%%   <<"ScheduleType">> => list(any()),
%%   <<"StreamId">> => string()
%% }
-type create_prefetch_schedule_request() :: #{binary() => any()}.


%% Example:
%% ads_interaction_log() :: #{
%%   <<"ExcludeEventTypes">> => list(list(any())()),
%%   <<"PublishOptInEventTypes">> => list(list(any())())
%% }
-type ads_interaction_log() :: #{binary() => any()}.

%% Example:
%% delete_prefetch_schedule_response() :: #{}
-type delete_prefetch_schedule_response() :: #{}.


%% Example:
%% manifest_service_interaction_log() :: #{
%%   <<"ExcludeEventTypes">> => list(list(any())())
%% }
-type manifest_service_interaction_log() :: #{binary() => any()}.


%% Example:
%% update_channel_request() :: #{
%%   <<"Audiences">> => list([string()]()),
%%   <<"FillerSlate">> => slate_source(),
%%   <<"Outputs">> := list(request_output_item()()),
%%   <<"TimeShiftConfiguration">> => time_shift_configuration()
%% }
-type update_channel_request() :: #{binary() => any()}.


%% Example:
%% dash_configuration() :: #{
%%   <<"ManifestEndpointPrefix">> => string(),
%%   <<"MpdLocation">> => string(),
%%   <<"OriginManifestType">> => list(any())
%% }
-type dash_configuration() :: #{binary() => any()}.

%% Example:
%% delete_source_location_request() :: #{}
-type delete_source_location_request() :: #{}.


%% Example:
%% update_source_location_request() :: #{
%%   <<"AccessConfiguration">> => access_configuration(),
%%   <<"DefaultSegmentDeliveryConfiguration">> => default_segment_delivery_configuration(),
%%   <<"HttpConfiguration">> := http_configuration(),
%%   <<"SegmentDeliveryConfigurations">> => list(segment_delivery_configuration()())
%% }
-type update_source_location_request() :: #{binary() => any()}.


%% Example:
%% list_source_locations_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_source_locations_request() :: #{binary() => any()}.


%% Example:
%% time_shift_configuration() :: #{
%%   <<"MaxTimeDelaySeconds">> => integer()
%% }
-type time_shift_configuration() :: #{binary() => any()}.


%% Example:
%% describe_program_response() :: #{
%%   <<"AdBreaks">> => list(ad_break()()),
%%   <<"Arn">> => string(),
%%   <<"AudienceMedia">> => list(audience_media()()),
%%   <<"ChannelName">> => string(),
%%   <<"ClipRange">> => clip_range(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"DurationMillis">> => [float()],
%%   <<"LiveSourceName">> => string(),
%%   <<"ProgramName">> => string(),
%%   <<"ScheduledStartTime">> => non_neg_integer(),
%%   <<"SourceLocationName">> => string(),
%%   <<"VodSourceName">> => string()
%% }
-type describe_program_response() :: #{binary() => any()}.


%% Example:
%% ad_break() :: #{
%%   <<"AdBreakMetadata">> => list(key_value_pair()()),
%%   <<"MessageType">> => list(any()),
%%   <<"OffsetMillis">> => float(),
%%   <<"Slate">> => slate_source(),
%%   <<"SpliceInsertMessage">> => splice_insert_message(),
%%   <<"TimeSignalMessage">> => time_signal_message()
%% }
-type ad_break() :: #{binary() => any()}.


%% Example:
%% slate_source() :: #{
%%   <<"SourceLocationName">> => string(),
%%   <<"VodSourceName">> => string()
%% }
-type slate_source() :: #{binary() => any()}.


%% Example:
%% ad_marker_passthrough() :: #{
%%   <<"Enabled">> => boolean()
%% }
-type ad_marker_passthrough() :: #{binary() => any()}.


%% Example:
%% list_vod_sources_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_vod_sources_request() :: #{binary() => any()}.


%% Example:
%% create_program_request() :: #{
%%   <<"AdBreaks">> => list(ad_break()()),
%%   <<"AudienceMedia">> => list(audience_media()()),
%%   <<"LiveSourceName">> => string(),
%%   <<"ScheduleConfiguration">> := schedule_configuration(),
%%   <<"SourceLocationName">> := string(),
%%   <<"VodSourceName">> => string()
%% }
-type create_program_request() :: #{binary() => any()}.

%% Example:
%% delete_prefetch_schedule_request() :: #{}
-type delete_prefetch_schedule_request() :: #{}.


%% Example:
%% segmentation_descriptor() :: #{
%%   <<"SegmentNum">> => [integer()],
%%   <<"SegmentationEventId">> => [integer()],
%%   <<"SegmentationTypeId">> => [integer()],
%%   <<"SegmentationUpid">> => [string()],
%%   <<"SegmentationUpidType">> => [integer()],
%%   <<"SegmentsExpected">> => [integer()],
%%   <<"SubSegmentNum">> => [integer()],
%%   <<"SubSegmentsExpected">> => [integer()]
%% }
-type segmentation_descriptor() :: #{binary() => any()}.


%% Example:
%% transition() :: #{
%%   <<"DurationMillis">> => float(),
%%   <<"RelativePosition">> => list(any()),
%%   <<"RelativeProgram">> => string(),
%%   <<"ScheduledStartTimeMillis">> => float(),
%%   <<"Type">> => string()
%% }
-type transition() :: #{binary() => any()}.


%% Example:
%% update_program_request() :: #{
%%   <<"AdBreaks">> => list(ad_break()()),
%%   <<"AudienceMedia">> => list(audience_media()()),
%%   <<"ScheduleConfiguration">> := update_program_schedule_configuration()
%% }
-type update_program_request() :: #{binary() => any()}.


%% Example:
%% get_playback_configuration_response() :: #{
%%   <<"AdConditioningConfiguration">> => ad_conditioning_configuration(),
%%   <<"AdDecisionServerUrl">> => string(),
%%   <<"AvailSuppression">> => avail_suppression(),
%%   <<"Bumper">> => bumper(),
%%   <<"CdnConfiguration">> => cdn_configuration(),
%%   <<"ConfigurationAliases">> => map(),
%%   <<"DashConfiguration">> => dash_configuration(),
%%   <<"HlsConfiguration">> => hls_configuration(),
%%   <<"InsertionMode">> => list(any()),
%%   <<"LivePreRollConfiguration">> => live_pre_roll_configuration(),
%%   <<"LogConfiguration">> => log_configuration(),
%%   <<"ManifestProcessingRules">> => manifest_processing_rules(),
%%   <<"Name">> => string(),
%%   <<"PersonalizationThresholdSeconds">> => integer(),
%%   <<"PlaybackConfigurationArn">> => string(),
%%   <<"PlaybackEndpointPrefix">> => string(),
%%   <<"SessionInitializationEndpointPrefix">> => string(),
%%   <<"SlateAdUrl">> => string(),
%%   <<"Tags">> => map(),
%%   <<"TranscodeProfileName">> => string(),
%%   <<"VideoContentSourceUrl">> => string()
%% }
-type get_playback_configuration_response() :: #{binary() => any()}.

%% Example:
%% describe_program_request() :: #{}
-type describe_program_request() :: #{}.

%% Example:
%% delete_live_source_response() :: #{}
-type delete_live_source_response() :: #{}.


%% Example:
%% source_location() :: #{
%%   <<"AccessConfiguration">> => access_configuration(),
%%   <<"Arn">> => string(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"DefaultSegmentDeliveryConfiguration">> => default_segment_delivery_configuration(),
%%   <<"HttpConfiguration">> => http_configuration(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"SegmentDeliveryConfigurations">> => list(segment_delivery_configuration()()),
%%   <<"SourceLocationName">> => string(),
%%   <<"Tags">> => map()
%% }
-type source_location() :: #{binary() => any()}.


%% Example:
%% time_signal_message() :: #{
%%   <<"SegmentationDescriptors">> => list(segmentation_descriptor()())
%% }
-type time_signal_message() :: #{binary() => any()}.


%% Example:
%% key_value_pair() :: #{
%%   <<"Key">> => [string()],
%%   <<"Value">> => [string()]
%% }
-type key_value_pair() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% update_live_source_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"HttpPackageConfigurations">> => list(http_package_configuration()()),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"LiveSourceName">> => string(),
%%   <<"SourceLocationName">> => string(),
%%   <<"Tags">> => map()
%% }
-type update_live_source_response() :: #{binary() => any()}.


%% Example:
%% create_live_source_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"HttpPackageConfigurations">> => list(http_package_configuration()()),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"LiveSourceName">> => string(),
%%   <<"SourceLocationName">> => string(),
%%   <<"Tags">> => map()
%% }
-type create_live_source_response() :: #{binary() => any()}.


%% Example:
%% request_output_item() :: #{
%%   <<"DashPlaylistSettings">> => dash_playlist_settings(),
%%   <<"HlsPlaylistSettings">> => hls_playlist_settings(),
%%   <<"ManifestName">> => string(),
%%   <<"SourceGroup">> => string()
%% }
-type request_output_item() :: #{binary() => any()}.


%% Example:
%% schedule_configuration() :: #{
%%   <<"ClipRange">> => clip_range(),
%%   <<"Transition">> => transition()
%% }
-type schedule_configuration() :: #{binary() => any()}.


%% Example:
%% alert() :: #{
%%   <<"AlertCode">> => string(),
%%   <<"AlertMessage">> => string(),
%%   <<"Category">> => list(any()),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"RelatedResourceArns">> => list(string()()),
%%   <<"ResourceArn">> => string()
%% }
-type alert() :: #{binary() => any()}.

%% Example:
%% delete_program_request() :: #{}
-type delete_program_request() :: #{}.

%% Example:
%% delete_playback_configuration_response() :: #{}
-type delete_playback_configuration_response() :: #{}.


%% Example:
%% channel() :: #{
%%   <<"Arn">> => string(),
%%   <<"Audiences">> => list([string()]()),
%%   <<"ChannelName">> => string(),
%%   <<"ChannelState">> => string(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"FillerSlate">> => slate_source(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"LogConfiguration">> => log_configuration_for_channel(),
%%   <<"Outputs">> => list(response_output_item()()),
%%   <<"PlaybackMode">> => string(),
%%   <<"Tags">> => map(),
%%   <<"Tier">> => string()
%% }
-type channel() :: #{binary() => any()}.


%% Example:
%% update_vod_source_request() :: #{
%%   <<"HttpPackageConfigurations">> := list(http_package_configuration()())
%% }
-type update_vod_source_request() :: #{binary() => any()}.

%% Example:
%% start_channel_response() :: #{}
-type start_channel_response() :: #{}.


%% Example:
%% put_playback_configuration_request() :: #{
%%   <<"AdConditioningConfiguration">> => ad_conditioning_configuration(),
%%   <<"AdDecisionServerUrl">> => string(),
%%   <<"AvailSuppression">> => avail_suppression(),
%%   <<"Bumper">> => bumper(),
%%   <<"CdnConfiguration">> => cdn_configuration(),
%%   <<"ConfigurationAliases">> => map(),
%%   <<"DashConfiguration">> => dash_configuration_for_put(),
%%   <<"InsertionMode">> => list(any()),
%%   <<"LivePreRollConfiguration">> => live_pre_roll_configuration(),
%%   <<"ManifestProcessingRules">> => manifest_processing_rules(),
%%   <<"Name">> := string(),
%%   <<"PersonalizationThresholdSeconds">> => integer(),
%%   <<"SlateAdUrl">> => string(),
%%   <<"Tags">> => map(),
%%   <<"TranscodeProfileName">> => string(),
%%   <<"VideoContentSourceUrl">> => string()
%% }
-type put_playback_configuration_request() :: #{binary() => any()}.


%% Example:
%% update_program_response() :: #{
%%   <<"AdBreaks">> => list(ad_break()()),
%%   <<"Arn">> => string(),
%%   <<"AudienceMedia">> => list(audience_media()()),
%%   <<"ChannelName">> => string(),
%%   <<"ClipRange">> => clip_range(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"DurationMillis">> => float(),
%%   <<"LiveSourceName">> => string(),
%%   <<"ProgramName">> => string(),
%%   <<"ScheduledStartTime">> => non_neg_integer(),
%%   <<"SourceLocationName">> => string(),
%%   <<"VodSourceName">> => string()
%% }
-type update_program_response() :: #{binary() => any()}.


%% Example:
%% recurring_prefetch_configuration() :: #{
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"RecurringConsumption">> => recurring_consumption(),
%%   <<"RecurringRetrieval">> => recurring_retrieval(),
%%   <<"StartTime">> => non_neg_integer()
%% }
-type recurring_prefetch_configuration() :: #{binary() => any()}.


%% Example:
%% list_alerts_response() :: #{
%%   <<"Items">> => list(alert()()),
%%   <<"NextToken">> => string()
%% }
-type list_alerts_response() :: #{binary() => any()}.


%% Example:
%% schedule_ad_break() :: #{
%%   <<"ApproximateDurationSeconds">> => float(),
%%   <<"ApproximateStartTime">> => non_neg_integer(),
%%   <<"SourceLocationName">> => string(),
%%   <<"VodSourceName">> => string()
%% }
-type schedule_ad_break() :: #{binary() => any()}.


%% Example:
%% hls_configuration() :: #{
%%   <<"ManifestEndpointPrefix">> => string()
%% }
-type hls_configuration() :: #{binary() => any()}.


%% Example:
%% create_vod_source_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"HttpPackageConfigurations">> => list(http_package_configuration()()),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"SourceLocationName">> => string(),
%%   <<"Tags">> => map(),
%%   <<"VodSourceName">> => string()
%% }
-type create_vod_source_response() :: #{binary() => any()}.


%% Example:
%% list_prefetch_schedules_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ScheduleType">> => list(any()),
%%   <<"StreamId">> => string()
%% }
-type list_prefetch_schedules_request() :: #{binary() => any()}.


%% Example:
%% avail_matching_criteria() :: #{
%%   <<"DynamicVariable">> => string(),
%%   <<"Operator">> => list(any())
%% }
-type avail_matching_criteria() :: #{binary() => any()}.


%% Example:
%% bad_request_exception() :: #{
%%   <<"Message">> => string()
%% }
-type bad_request_exception() :: #{binary() => any()}.


%% Example:
%% recurring_consumption() :: #{
%%   <<"AvailMatchingCriteria">> => list(avail_matching_criteria()()),
%%   <<"RetrievedAdExpirationSeconds">> => integer()
%% }
-type recurring_consumption() :: #{binary() => any()}.


%% Example:
%% create_vod_source_request() :: #{
%%   <<"HttpPackageConfigurations">> := list(http_package_configuration()()),
%%   <<"Tags">> => map()
%% }
-type create_vod_source_request() :: #{binary() => any()}.


%% Example:
%% update_channel_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"Audiences">> => list([string()]()),
%%   <<"ChannelName">> => string(),
%%   <<"ChannelState">> => list(any()),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"FillerSlate">> => slate_source(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"Outputs">> => list(response_output_item()()),
%%   <<"PlaybackMode">> => string(),
%%   <<"Tags">> => map(),
%%   <<"Tier">> => string(),
%%   <<"TimeShiftConfiguration">> => time_shift_configuration()
%% }
-type update_channel_response() :: #{binary() => any()}.


%% Example:
%% put_playback_configuration_response() :: #{
%%   <<"AdConditioningConfiguration">> => ad_conditioning_configuration(),
%%   <<"AdDecisionServerUrl">> => string(),
%%   <<"AvailSuppression">> => avail_suppression(),
%%   <<"Bumper">> => bumper(),
%%   <<"CdnConfiguration">> => cdn_configuration(),
%%   <<"ConfigurationAliases">> => map(),
%%   <<"DashConfiguration">> => dash_configuration(),
%%   <<"HlsConfiguration">> => hls_configuration(),
%%   <<"InsertionMode">> => list(any()),
%%   <<"LivePreRollConfiguration">> => live_pre_roll_configuration(),
%%   <<"LogConfiguration">> => log_configuration(),
%%   <<"ManifestProcessingRules">> => manifest_processing_rules(),
%%   <<"Name">> => string(),
%%   <<"PersonalizationThresholdSeconds">> => integer(),
%%   <<"PlaybackConfigurationArn">> => string(),
%%   <<"PlaybackEndpointPrefix">> => string(),
%%   <<"SessionInitializationEndpointPrefix">> => string(),
%%   <<"SlateAdUrl">> => string(),
%%   <<"Tags">> => map(),
%%   <<"TranscodeProfileName">> => string(),
%%   <<"VideoContentSourceUrl">> => string()
%% }
-type put_playback_configuration_response() :: #{binary() => any()}.

%% Example:
%% get_channel_policy_request() :: #{}
-type get_channel_policy_request() :: #{}.


%% Example:
%% describe_live_source_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"HttpPackageConfigurations">> => list(http_package_configuration()()),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"LiveSourceName">> => string(),
%%   <<"SourceLocationName">> => string(),
%%   <<"Tags">> => map()
%% }
-type describe_live_source_response() :: #{binary() => any()}.


%% Example:
%% segment_delivery_configuration() :: #{
%%   <<"BaseUrl">> => string(),
%%   <<"Name">> => string()
%% }
-type segment_delivery_configuration() :: #{binary() => any()}.


%% Example:
%% access_configuration() :: #{
%%   <<"AccessType">> => list(any()),
%%   <<"SecretsManagerAccessTokenConfiguration">> => secrets_manager_access_token_configuration()
%% }
-type access_configuration() :: #{binary() => any()}.


%% Example:
%% create_source_location_request() :: #{
%%   <<"AccessConfiguration">> => access_configuration(),
%%   <<"DefaultSegmentDeliveryConfiguration">> => default_segment_delivery_configuration(),
%%   <<"HttpConfiguration">> := http_configuration(),
%%   <<"SegmentDeliveryConfigurations">> => list(segment_delivery_configuration()()),
%%   <<"Tags">> => map()
%% }
-type create_source_location_request() :: #{binary() => any()}.


%% Example:
%% log_configuration() :: #{
%%   <<"AdsInteractionLog">> => ads_interaction_log(),
%%   <<"EnabledLoggingStrategies">> => list(list(any())()),
%%   <<"ManifestServiceInteractionLog">> => manifest_service_interaction_log(),
%%   <<"PercentEnabled">> => integer()
%% }
-type log_configuration() :: #{binary() => any()}.

%% Example:
%% delete_source_location_response() :: #{}
-type delete_source_location_response() :: #{}.


%% Example:
%% list_live_sources_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_live_sources_request() :: #{binary() => any()}.


%% Example:
%% update_program_transition() :: #{
%%   <<"DurationMillis">> => float(),
%%   <<"ScheduledStartTimeMillis">> => float()
%% }
-type update_program_transition() :: #{binary() => any()}.


%% Example:
%% list_channels_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_channels_request() :: #{binary() => any()}.


%% Example:
%% list_source_locations_response() :: #{
%%   <<"Items">> => list(source_location()()),
%%   <<"NextToken">> => string()
%% }
-type list_source_locations_response() :: #{binary() => any()}.


%% Example:
%% bumper() :: #{
%%   <<"EndUrl">> => string(),
%%   <<"StartUrl">> => string()
%% }
-type bumper() :: #{binary() => any()}.


%% Example:
%% dash_configuration_for_put() :: #{
%%   <<"MpdLocation">> => string(),
%%   <<"OriginManifestType">> => list(any())
%% }
-type dash_configuration_for_put() :: #{binary() => any()}.

%% Example:
%% delete_live_source_request() :: #{}
-type delete_live_source_request() :: #{}.


%% Example:
%% prefetch_schedule() :: #{
%%   <<"Arn">> => string(),
%%   <<"Consumption">> => prefetch_consumption(),
%%   <<"Name">> => string(),
%%   <<"PlaybackConfigurationName">> => string(),
%%   <<"RecurringPrefetchConfiguration">> => recurring_prefetch_configuration(),
%%   <<"Retrieval">> => prefetch_retrieval(),
%%   <<"ScheduleType">> => list(any()),
%%   <<"StreamId">> => string()
%% }
-type prefetch_schedule() :: #{binary() => any()}.


%% Example:
%% list_playback_configurations_response() :: #{
%%   <<"Items">> => list(playback_configuration()()),
%%   <<"NextToken">> => string()
%% }
-type list_playback_configurations_response() :: #{binary() => any()}.


%% Example:
%% hls_playlist_settings() :: #{
%%   <<"AdMarkupType">> => list(list(any())()),
%%   <<"ManifestWindowSeconds">> => integer()
%% }
-type hls_playlist_settings() :: #{binary() => any()}.

%% Example:
%% describe_live_source_request() :: #{}
-type describe_live_source_request() :: #{}.


%% Example:
%% splice_insert_message() :: #{
%%   <<"AvailNum">> => integer(),
%%   <<"AvailsExpected">> => integer(),
%%   <<"SpliceEventId">> => integer(),
%%   <<"UniqueProgramId">> => integer()
%% }
-type splice_insert_message() :: #{binary() => any()}.

-type list_tags_for_resource_errors() ::
    bad_request_exception().

-type tag_resource_errors() ::
    bad_request_exception().

-type untag_resource_errors() ::
    bad_request_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Configures Amazon CloudWatch log settings for a channel.
-spec configure_logs_for_channel(aws_client:aws_client(), configure_logs_for_channel_request()) ->
    {ok, configure_logs_for_channel_response(), tuple()} |
    {error, any()}.
configure_logs_for_channel(Client, Input) ->
    configure_logs_for_channel(Client, Input, []).

-spec configure_logs_for_channel(aws_client:aws_client(), configure_logs_for_channel_request(), proplists:proplist()) ->
    {ok, configure_logs_for_channel_response(), tuple()} |
    {error, any()}.
configure_logs_for_channel(Client, Input0, Options0) ->
    Method = put,
    Path = ["/configureLogs/channel"],
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

%% @doc Defines where AWS Elemental MediaTailor sends logs for the playback
%% configuration.
-spec configure_logs_for_playback_configuration(aws_client:aws_client(), configure_logs_for_playback_configuration_request()) ->
    {ok, configure_logs_for_playback_configuration_response(), tuple()} |
    {error, any()}.
configure_logs_for_playback_configuration(Client, Input) ->
    configure_logs_for_playback_configuration(Client, Input, []).

-spec configure_logs_for_playback_configuration(aws_client:aws_client(), configure_logs_for_playback_configuration_request(), proplists:proplist()) ->
    {ok, configure_logs_for_playback_configuration_response(), tuple()} |
    {error, any()}.
configure_logs_for_playback_configuration(Client, Input0, Options0) ->
    Method = put,
    Path = ["/configureLogs/playbackConfiguration"],
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

%% @doc Creates a channel.
%%
%% For information about MediaTailor channels, see Working with channels:
%% https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-channels.html
%% in the MediaTailor User Guide.
-spec create_channel(aws_client:aws_client(), binary() | list(), create_channel_request()) ->
    {ok, create_channel_response(), tuple()} |
    {error, any()}.
create_channel(Client, ChannelName, Input) ->
    create_channel(Client, ChannelName, Input, []).

-spec create_channel(aws_client:aws_client(), binary() | list(), create_channel_request(), proplists:proplist()) ->
    {ok, create_channel_response(), tuple()} |
    {error, any()}.
create_channel(Client, ChannelName, Input0, Options0) ->
    Method = post,
    Path = ["/channel/", aws_util:encode_uri(ChannelName), ""],
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

%% @doc The live source configuration.
-spec create_live_source(aws_client:aws_client(), binary() | list(), binary() | list(), create_live_source_request()) ->
    {ok, create_live_source_response(), tuple()} |
    {error, any()}.
create_live_source(Client, LiveSourceName, SourceLocationName, Input) ->
    create_live_source(Client, LiveSourceName, SourceLocationName, Input, []).

-spec create_live_source(aws_client:aws_client(), binary() | list(), binary() | list(), create_live_source_request(), proplists:proplist()) ->
    {ok, create_live_source_response(), tuple()} |
    {error, any()}.
create_live_source(Client, LiveSourceName, SourceLocationName, Input0, Options0) ->
    Method = post,
    Path = ["/sourceLocation/", aws_util:encode_uri(SourceLocationName), "/liveSource/", aws_util:encode_uri(LiveSourceName), ""],
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

%% @doc Creates a prefetch schedule for a playback configuration.
%%
%% A prefetch schedule allows you to tell MediaTailor to fetch and prepare
%% certain ads before an ad break happens. For more information about ad
%% prefetching, see Using ad prefetching:
%% https://docs.aws.amazon.com/mediatailor/latest/ug/prefetching-ads.html in
%% the MediaTailor User Guide.
-spec create_prefetch_schedule(aws_client:aws_client(), binary() | list(), binary() | list(), create_prefetch_schedule_request()) ->
    {ok, create_prefetch_schedule_response(), tuple()} |
    {error, any()}.
create_prefetch_schedule(Client, Name, PlaybackConfigurationName, Input) ->
    create_prefetch_schedule(Client, Name, PlaybackConfigurationName, Input, []).

-spec create_prefetch_schedule(aws_client:aws_client(), binary() | list(), binary() | list(), create_prefetch_schedule_request(), proplists:proplist()) ->
    {ok, create_prefetch_schedule_response(), tuple()} |
    {error, any()}.
create_prefetch_schedule(Client, Name, PlaybackConfigurationName, Input0, Options0) ->
    Method = post,
    Path = ["/prefetchSchedule/", aws_util:encode_uri(PlaybackConfigurationName), "/", aws_util:encode_uri(Name), ""],
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

%% @doc Creates a program within a channel.
%%
%% For information about programs, see Working with programs:
%% https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-programs.html
%% in the MediaTailor User Guide.
-spec create_program(aws_client:aws_client(), binary() | list(), binary() | list(), create_program_request()) ->
    {ok, create_program_response(), tuple()} |
    {error, any()}.
create_program(Client, ChannelName, ProgramName, Input) ->
    create_program(Client, ChannelName, ProgramName, Input, []).

-spec create_program(aws_client:aws_client(), binary() | list(), binary() | list(), create_program_request(), proplists:proplist()) ->
    {ok, create_program_response(), tuple()} |
    {error, any()}.
create_program(Client, ChannelName, ProgramName, Input0, Options0) ->
    Method = post,
    Path = ["/channel/", aws_util:encode_uri(ChannelName), "/program/", aws_util:encode_uri(ProgramName), ""],
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

%% @doc Creates a source location.
%%
%% A source location is a container for sources. For more information about
%% source locations, see Working with source locations:
%% https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-source-locations.html
%% in the MediaTailor User Guide.
-spec create_source_location(aws_client:aws_client(), binary() | list(), create_source_location_request()) ->
    {ok, create_source_location_response(), tuple()} |
    {error, any()}.
create_source_location(Client, SourceLocationName, Input) ->
    create_source_location(Client, SourceLocationName, Input, []).

-spec create_source_location(aws_client:aws_client(), binary() | list(), create_source_location_request(), proplists:proplist()) ->
    {ok, create_source_location_response(), tuple()} |
    {error, any()}.
create_source_location(Client, SourceLocationName, Input0, Options0) ->
    Method = post,
    Path = ["/sourceLocation/", aws_util:encode_uri(SourceLocationName), ""],
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

%% @doc The VOD source configuration parameters.
-spec create_vod_source(aws_client:aws_client(), binary() | list(), binary() | list(), create_vod_source_request()) ->
    {ok, create_vod_source_response(), tuple()} |
    {error, any()}.
create_vod_source(Client, SourceLocationName, VodSourceName, Input) ->
    create_vod_source(Client, SourceLocationName, VodSourceName, Input, []).

-spec create_vod_source(aws_client:aws_client(), binary() | list(), binary() | list(), create_vod_source_request(), proplists:proplist()) ->
    {ok, create_vod_source_response(), tuple()} |
    {error, any()}.
create_vod_source(Client, SourceLocationName, VodSourceName, Input0, Options0) ->
    Method = post,
    Path = ["/sourceLocation/", aws_util:encode_uri(SourceLocationName), "/vodSource/", aws_util:encode_uri(VodSourceName), ""],
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

%% @doc Deletes a channel.
%%
%% For information about MediaTailor channels, see Working with channels:
%% https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-channels.html
%% in the MediaTailor User Guide.
-spec delete_channel(aws_client:aws_client(), binary() | list(), delete_channel_request()) ->
    {ok, delete_channel_response(), tuple()} |
    {error, any()}.
delete_channel(Client, ChannelName, Input) ->
    delete_channel(Client, ChannelName, Input, []).

-spec delete_channel(aws_client:aws_client(), binary() | list(), delete_channel_request(), proplists:proplist()) ->
    {ok, delete_channel_response(), tuple()} |
    {error, any()}.
delete_channel(Client, ChannelName, Input0, Options0) ->
    Method = delete,
    Path = ["/channel/", aws_util:encode_uri(ChannelName), ""],
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

%% @doc The channel policy to delete.
-spec delete_channel_policy(aws_client:aws_client(), binary() | list(), delete_channel_policy_request()) ->
    {ok, delete_channel_policy_response(), tuple()} |
    {error, any()}.
delete_channel_policy(Client, ChannelName, Input) ->
    delete_channel_policy(Client, ChannelName, Input, []).

-spec delete_channel_policy(aws_client:aws_client(), binary() | list(), delete_channel_policy_request(), proplists:proplist()) ->
    {ok, delete_channel_policy_response(), tuple()} |
    {error, any()}.
delete_channel_policy(Client, ChannelName, Input0, Options0) ->
    Method = delete,
    Path = ["/channel/", aws_util:encode_uri(ChannelName), "/policy"],
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

%% @doc The live source to delete.
-spec delete_live_source(aws_client:aws_client(), binary() | list(), binary() | list(), delete_live_source_request()) ->
    {ok, delete_live_source_response(), tuple()} |
    {error, any()}.
delete_live_source(Client, LiveSourceName, SourceLocationName, Input) ->
    delete_live_source(Client, LiveSourceName, SourceLocationName, Input, []).

-spec delete_live_source(aws_client:aws_client(), binary() | list(), binary() | list(), delete_live_source_request(), proplists:proplist()) ->
    {ok, delete_live_source_response(), tuple()} |
    {error, any()}.
delete_live_source(Client, LiveSourceName, SourceLocationName, Input0, Options0) ->
    Method = delete,
    Path = ["/sourceLocation/", aws_util:encode_uri(SourceLocationName), "/liveSource/", aws_util:encode_uri(LiveSourceName), ""],
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

%% @doc Deletes a playback configuration.
%%
%% For information about MediaTailor configurations, see Working with
%% configurations in AWS Elemental MediaTailor:
%% https://docs.aws.amazon.com/mediatailor/latest/ug/configurations.html.
-spec delete_playback_configuration(aws_client:aws_client(), binary() | list(), delete_playback_configuration_request()) ->
    {ok, delete_playback_configuration_response(), tuple()} |
    {error, any()}.
delete_playback_configuration(Client, Name, Input) ->
    delete_playback_configuration(Client, Name, Input, []).

-spec delete_playback_configuration(aws_client:aws_client(), binary() | list(), delete_playback_configuration_request(), proplists:proplist()) ->
    {ok, delete_playback_configuration_response(), tuple()} |
    {error, any()}.
delete_playback_configuration(Client, Name, Input0, Options0) ->
    Method = delete,
    Path = ["/playbackConfiguration/", aws_util:encode_uri(Name), ""],
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

%% @doc Deletes a prefetch schedule for a specific playback configuration.
%%
%% If you call `DeletePrefetchSchedule' on an expired prefetch schedule,
%% MediaTailor returns an HTTP 404 status code. For more information about ad
%% prefetching, see Using ad prefetching:
%% https://docs.aws.amazon.com/mediatailor/latest/ug/prefetching-ads.html in
%% the MediaTailor User Guide.
-spec delete_prefetch_schedule(aws_client:aws_client(), binary() | list(), binary() | list(), delete_prefetch_schedule_request()) ->
    {ok, delete_prefetch_schedule_response(), tuple()} |
    {error, any()}.
delete_prefetch_schedule(Client, Name, PlaybackConfigurationName, Input) ->
    delete_prefetch_schedule(Client, Name, PlaybackConfigurationName, Input, []).

-spec delete_prefetch_schedule(aws_client:aws_client(), binary() | list(), binary() | list(), delete_prefetch_schedule_request(), proplists:proplist()) ->
    {ok, delete_prefetch_schedule_response(), tuple()} |
    {error, any()}.
delete_prefetch_schedule(Client, Name, PlaybackConfigurationName, Input0, Options0) ->
    Method = delete,
    Path = ["/prefetchSchedule/", aws_util:encode_uri(PlaybackConfigurationName), "/", aws_util:encode_uri(Name), ""],
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

%% @doc Deletes a program within a channel.
%%
%% For information about programs, see Working with programs:
%% https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-programs.html
%% in the MediaTailor User Guide.
-spec delete_program(aws_client:aws_client(), binary() | list(), binary() | list(), delete_program_request()) ->
    {ok, delete_program_response(), tuple()} |
    {error, any()}.
delete_program(Client, ChannelName, ProgramName, Input) ->
    delete_program(Client, ChannelName, ProgramName, Input, []).

-spec delete_program(aws_client:aws_client(), binary() | list(), binary() | list(), delete_program_request(), proplists:proplist()) ->
    {ok, delete_program_response(), tuple()} |
    {error, any()}.
delete_program(Client, ChannelName, ProgramName, Input0, Options0) ->
    Method = delete,
    Path = ["/channel/", aws_util:encode_uri(ChannelName), "/program/", aws_util:encode_uri(ProgramName), ""],
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

%% @doc Deletes a source location.
%%
%% A source location is a container for sources. For more information about
%% source locations, see Working with source locations:
%% https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-source-locations.html
%% in the MediaTailor User Guide.
-spec delete_source_location(aws_client:aws_client(), binary() | list(), delete_source_location_request()) ->
    {ok, delete_source_location_response(), tuple()} |
    {error, any()}.
delete_source_location(Client, SourceLocationName, Input) ->
    delete_source_location(Client, SourceLocationName, Input, []).

-spec delete_source_location(aws_client:aws_client(), binary() | list(), delete_source_location_request(), proplists:proplist()) ->
    {ok, delete_source_location_response(), tuple()} |
    {error, any()}.
delete_source_location(Client, SourceLocationName, Input0, Options0) ->
    Method = delete,
    Path = ["/sourceLocation/", aws_util:encode_uri(SourceLocationName), ""],
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

%% @doc The video on demand (VOD) source to delete.
-spec delete_vod_source(aws_client:aws_client(), binary() | list(), binary() | list(), delete_vod_source_request()) ->
    {ok, delete_vod_source_response(), tuple()} |
    {error, any()}.
delete_vod_source(Client, SourceLocationName, VodSourceName, Input) ->
    delete_vod_source(Client, SourceLocationName, VodSourceName, Input, []).

-spec delete_vod_source(aws_client:aws_client(), binary() | list(), binary() | list(), delete_vod_source_request(), proplists:proplist()) ->
    {ok, delete_vod_source_response(), tuple()} |
    {error, any()}.
delete_vod_source(Client, SourceLocationName, VodSourceName, Input0, Options0) ->
    Method = delete,
    Path = ["/sourceLocation/", aws_util:encode_uri(SourceLocationName), "/vodSource/", aws_util:encode_uri(VodSourceName), ""],
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

%% @doc Describes a channel.
%%
%% For information about MediaTailor channels, see Working with channels:
%% https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-channels.html
%% in the MediaTailor User Guide.
-spec describe_channel(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_channel_response(), tuple()} |
    {error, any()}.
describe_channel(Client, ChannelName)
  when is_map(Client) ->
    describe_channel(Client, ChannelName, #{}, #{}).

-spec describe_channel(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_channel_response(), tuple()} |
    {error, any()}.
describe_channel(Client, ChannelName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_channel(Client, ChannelName, QueryMap, HeadersMap, []).

-spec describe_channel(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_channel_response(), tuple()} |
    {error, any()}.
describe_channel(Client, ChannelName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/channel/", aws_util:encode_uri(ChannelName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc The live source to describe.
-spec describe_live_source(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_live_source_response(), tuple()} |
    {error, any()}.
describe_live_source(Client, LiveSourceName, SourceLocationName)
  when is_map(Client) ->
    describe_live_source(Client, LiveSourceName, SourceLocationName, #{}, #{}).

-spec describe_live_source(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_live_source_response(), tuple()} |
    {error, any()}.
describe_live_source(Client, LiveSourceName, SourceLocationName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_live_source(Client, LiveSourceName, SourceLocationName, QueryMap, HeadersMap, []).

-spec describe_live_source(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_live_source_response(), tuple()} |
    {error, any()}.
describe_live_source(Client, LiveSourceName, SourceLocationName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/sourceLocation/", aws_util:encode_uri(SourceLocationName), "/liveSource/", aws_util:encode_uri(LiveSourceName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes a program within a channel.
%%
%% For information about programs, see Working with programs:
%% https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-programs.html
%% in the MediaTailor User Guide.
-spec describe_program(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_program_response(), tuple()} |
    {error, any()}.
describe_program(Client, ChannelName, ProgramName)
  when is_map(Client) ->
    describe_program(Client, ChannelName, ProgramName, #{}, #{}).

-spec describe_program(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_program_response(), tuple()} |
    {error, any()}.
describe_program(Client, ChannelName, ProgramName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_program(Client, ChannelName, ProgramName, QueryMap, HeadersMap, []).

-spec describe_program(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_program_response(), tuple()} |
    {error, any()}.
describe_program(Client, ChannelName, ProgramName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/channel/", aws_util:encode_uri(ChannelName), "/program/", aws_util:encode_uri(ProgramName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes a source location.
%%
%% A source location is a container for sources. For more information about
%% source locations, see Working with source locations:
%% https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-source-locations.html
%% in the MediaTailor User Guide.
-spec describe_source_location(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_source_location_response(), tuple()} |
    {error, any()}.
describe_source_location(Client, SourceLocationName)
  when is_map(Client) ->
    describe_source_location(Client, SourceLocationName, #{}, #{}).

-spec describe_source_location(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_source_location_response(), tuple()} |
    {error, any()}.
describe_source_location(Client, SourceLocationName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_source_location(Client, SourceLocationName, QueryMap, HeadersMap, []).

-spec describe_source_location(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_source_location_response(), tuple()} |
    {error, any()}.
describe_source_location(Client, SourceLocationName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/sourceLocation/", aws_util:encode_uri(SourceLocationName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Provides details about a specific video on demand (VOD) source in a
%% specific source location.
-spec describe_vod_source(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_vod_source_response(), tuple()} |
    {error, any()}.
describe_vod_source(Client, SourceLocationName, VodSourceName)
  when is_map(Client) ->
    describe_vod_source(Client, SourceLocationName, VodSourceName, #{}, #{}).

-spec describe_vod_source(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_vod_source_response(), tuple()} |
    {error, any()}.
describe_vod_source(Client, SourceLocationName, VodSourceName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_vod_source(Client, SourceLocationName, VodSourceName, QueryMap, HeadersMap, []).

-spec describe_vod_source(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_vod_source_response(), tuple()} |
    {error, any()}.
describe_vod_source(Client, SourceLocationName, VodSourceName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/sourceLocation/", aws_util:encode_uri(SourceLocationName), "/vodSource/", aws_util:encode_uri(VodSourceName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the channel's IAM policy.
%%
%% IAM policies are used to control access to your channel.
-spec get_channel_policy(aws_client:aws_client(), binary() | list()) ->
    {ok, get_channel_policy_response(), tuple()} |
    {error, any()}.
get_channel_policy(Client, ChannelName)
  when is_map(Client) ->
    get_channel_policy(Client, ChannelName, #{}, #{}).

-spec get_channel_policy(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_channel_policy_response(), tuple()} |
    {error, any()}.
get_channel_policy(Client, ChannelName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_channel_policy(Client, ChannelName, QueryMap, HeadersMap, []).

-spec get_channel_policy(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_channel_policy_response(), tuple()} |
    {error, any()}.
get_channel_policy(Client, ChannelName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/channel/", aws_util:encode_uri(ChannelName), "/policy"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about your channel's schedule.
-spec get_channel_schedule(aws_client:aws_client(), binary() | list()) ->
    {ok, get_channel_schedule_response(), tuple()} |
    {error, any()}.
get_channel_schedule(Client, ChannelName)
  when is_map(Client) ->
    get_channel_schedule(Client, ChannelName, #{}, #{}).

-spec get_channel_schedule(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_channel_schedule_response(), tuple()} |
    {error, any()}.
get_channel_schedule(Client, ChannelName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_channel_schedule(Client, ChannelName, QueryMap, HeadersMap, []).

-spec get_channel_schedule(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_channel_schedule_response(), tuple()} |
    {error, any()}.
get_channel_schedule(Client, ChannelName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/channel/", aws_util:encode_uri(ChannelName), "/schedule"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"audience">>, maps:get(<<"audience">>, QueryMap, undefined)},
        {<<"durationMinutes">>, maps:get(<<"durationMinutes">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a playback configuration.
%%
%% For information about MediaTailor configurations, see Working with
%% configurations in AWS Elemental MediaTailor:
%% https://docs.aws.amazon.com/mediatailor/latest/ug/configurations.html.
-spec get_playback_configuration(aws_client:aws_client(), binary() | list()) ->
    {ok, get_playback_configuration_response(), tuple()} |
    {error, any()}.
get_playback_configuration(Client, Name)
  when is_map(Client) ->
    get_playback_configuration(Client, Name, #{}, #{}).

-spec get_playback_configuration(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_playback_configuration_response(), tuple()} |
    {error, any()}.
get_playback_configuration(Client, Name, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_playback_configuration(Client, Name, QueryMap, HeadersMap, []).

-spec get_playback_configuration(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_playback_configuration_response(), tuple()} |
    {error, any()}.
get_playback_configuration(Client, Name, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/playbackConfiguration/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a prefetch schedule for a playback configuration.
%%
%% A prefetch schedule allows you to tell MediaTailor to fetch and prepare
%% certain ads before an ad break happens. For more information about ad
%% prefetching, see Using ad prefetching:
%% https://docs.aws.amazon.com/mediatailor/latest/ug/prefetching-ads.html in
%% the MediaTailor User Guide.
-spec get_prefetch_schedule(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_prefetch_schedule_response(), tuple()} |
    {error, any()}.
get_prefetch_schedule(Client, Name, PlaybackConfigurationName)
  when is_map(Client) ->
    get_prefetch_schedule(Client, Name, PlaybackConfigurationName, #{}, #{}).

-spec get_prefetch_schedule(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_prefetch_schedule_response(), tuple()} |
    {error, any()}.
get_prefetch_schedule(Client, Name, PlaybackConfigurationName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_prefetch_schedule(Client, Name, PlaybackConfigurationName, QueryMap, HeadersMap, []).

-spec get_prefetch_schedule(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_prefetch_schedule_response(), tuple()} |
    {error, any()}.
get_prefetch_schedule(Client, Name, PlaybackConfigurationName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/prefetchSchedule/", aws_util:encode_uri(PlaybackConfigurationName), "/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the alerts that are associated with a MediaTailor channel
%% assembly resource.
-spec list_alerts(aws_client:aws_client(), binary() | list()) ->
    {ok, list_alerts_response(), tuple()} |
    {error, any()}.
list_alerts(Client, ResourceArn)
  when is_map(Client) ->
    list_alerts(Client, ResourceArn, #{}, #{}).

-spec list_alerts(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_alerts_response(), tuple()} |
    {error, any()}.
list_alerts(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_alerts(Client, ResourceArn, QueryMap, HeadersMap, []).

-spec list_alerts(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_alerts_response(), tuple()} |
    {error, any()}.
list_alerts(Client, ResourceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/alerts"],
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
        {<<"resourceArn">>, ResourceArn}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the channels that are associated with the
%% current AWS account.
-spec list_channels(aws_client:aws_client()) ->
    {ok, list_channels_response(), tuple()} |
    {error, any()}.
list_channels(Client)
  when is_map(Client) ->
    list_channels(Client, #{}, #{}).

-spec list_channels(aws_client:aws_client(), map(), map()) ->
    {ok, list_channels_response(), tuple()} |
    {error, any()}.
list_channels(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_channels(Client, QueryMap, HeadersMap, []).

-spec list_channels(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_channels_response(), tuple()} |
    {error, any()}.
list_channels(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/channels"],
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

%% @doc Lists the live sources contained in a source location.
%%
%% A source represents a piece of content.
-spec list_live_sources(aws_client:aws_client(), binary() | list()) ->
    {ok, list_live_sources_response(), tuple()} |
    {error, any()}.
list_live_sources(Client, SourceLocationName)
  when is_map(Client) ->
    list_live_sources(Client, SourceLocationName, #{}, #{}).

-spec list_live_sources(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_live_sources_response(), tuple()} |
    {error, any()}.
list_live_sources(Client, SourceLocationName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_live_sources(Client, SourceLocationName, QueryMap, HeadersMap, []).

-spec list_live_sources(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_live_sources_response(), tuple()} |
    {error, any()}.
list_live_sources(Client, SourceLocationName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/sourceLocation/", aws_util:encode_uri(SourceLocationName), "/liveSources"],
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

%% @doc Retrieves existing playback configurations.
%%
%% For information about MediaTailor configurations, see Working with
%% Configurations in AWS Elemental MediaTailor:
%% https://docs.aws.amazon.com/mediatailor/latest/ug/configurations.html.
-spec list_playback_configurations(aws_client:aws_client()) ->
    {ok, list_playback_configurations_response(), tuple()} |
    {error, any()}.
list_playback_configurations(Client)
  when is_map(Client) ->
    list_playback_configurations(Client, #{}, #{}).

-spec list_playback_configurations(aws_client:aws_client(), map(), map()) ->
    {ok, list_playback_configurations_response(), tuple()} |
    {error, any()}.
list_playback_configurations(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_playback_configurations(Client, QueryMap, HeadersMap, []).

-spec list_playback_configurations(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_playback_configurations_response(), tuple()} |
    {error, any()}.
list_playback_configurations(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/playbackConfigurations"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the prefetch schedules for a playback configuration.
-spec list_prefetch_schedules(aws_client:aws_client(), binary() | list(), list_prefetch_schedules_request()) ->
    {ok, list_prefetch_schedules_response(), tuple()} |
    {error, any()}.
list_prefetch_schedules(Client, PlaybackConfigurationName, Input) ->
    list_prefetch_schedules(Client, PlaybackConfigurationName, Input, []).

-spec list_prefetch_schedules(aws_client:aws_client(), binary() | list(), list_prefetch_schedules_request(), proplists:proplist()) ->
    {ok, list_prefetch_schedules_response(), tuple()} |
    {error, any()}.
list_prefetch_schedules(Client, PlaybackConfigurationName, Input0, Options0) ->
    Method = post,
    Path = ["/prefetchSchedule/", aws_util:encode_uri(PlaybackConfigurationName), ""],
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

%% @doc Lists the source locations for a channel.
%%
%% A source location defines the host server URL, and contains a list of
%% sources.
-spec list_source_locations(aws_client:aws_client()) ->
    {ok, list_source_locations_response(), tuple()} |
    {error, any()}.
list_source_locations(Client)
  when is_map(Client) ->
    list_source_locations(Client, #{}, #{}).

-spec list_source_locations(aws_client:aws_client(), map(), map()) ->
    {ok, list_source_locations_response(), tuple()} |
    {error, any()}.
list_source_locations(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_source_locations(Client, QueryMap, HeadersMap, []).

-spec list_source_locations(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_source_locations_response(), tuple()} |
    {error, any()}.
list_source_locations(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/sourceLocations"],
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

%% @doc A list of tags that are associated with this resource.
%%
%% Tags are key-value pairs that you can associate with Amazon resources to
%% help with organization, access control, and cost tracking. For more
%% information, see Tagging AWS Elemental MediaTailor Resources:
%% https://docs.aws.amazon.com/mediatailor/latest/ug/tagging.html.
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

%% @doc Lists the VOD sources contained in a source location.
%%
%% A source represents a piece of content.
-spec list_vod_sources(aws_client:aws_client(), binary() | list()) ->
    {ok, list_vod_sources_response(), tuple()} |
    {error, any()}.
list_vod_sources(Client, SourceLocationName)
  when is_map(Client) ->
    list_vod_sources(Client, SourceLocationName, #{}, #{}).

-spec list_vod_sources(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_vod_sources_response(), tuple()} |
    {error, any()}.
list_vod_sources(Client, SourceLocationName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_vod_sources(Client, SourceLocationName, QueryMap, HeadersMap, []).

-spec list_vod_sources(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_vod_sources_response(), tuple()} |
    {error, any()}.
list_vod_sources(Client, SourceLocationName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/sourceLocation/", aws_util:encode_uri(SourceLocationName), "/vodSources"],
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

%% @doc Creates an IAM policy for the channel.
%%
%% IAM policies are used to control access to your channel.
-spec put_channel_policy(aws_client:aws_client(), binary() | list(), put_channel_policy_request()) ->
    {ok, put_channel_policy_response(), tuple()} |
    {error, any()}.
put_channel_policy(Client, ChannelName, Input) ->
    put_channel_policy(Client, ChannelName, Input, []).

-spec put_channel_policy(aws_client:aws_client(), binary() | list(), put_channel_policy_request(), proplists:proplist()) ->
    {ok, put_channel_policy_response(), tuple()} |
    {error, any()}.
put_channel_policy(Client, ChannelName, Input0, Options0) ->
    Method = put,
    Path = ["/channel/", aws_util:encode_uri(ChannelName), "/policy"],
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

%% @doc Creates a playback configuration.
%%
%% For information about MediaTailor configurations, see Working with
%% configurations in AWS Elemental MediaTailor:
%% https://docs.aws.amazon.com/mediatailor/latest/ug/configurations.html.
-spec put_playback_configuration(aws_client:aws_client(), put_playback_configuration_request()) ->
    {ok, put_playback_configuration_response(), tuple()} |
    {error, any()}.
put_playback_configuration(Client, Input) ->
    put_playback_configuration(Client, Input, []).

-spec put_playback_configuration(aws_client:aws_client(), put_playback_configuration_request(), proplists:proplist()) ->
    {ok, put_playback_configuration_response(), tuple()} |
    {error, any()}.
put_playback_configuration(Client, Input0, Options0) ->
    Method = put,
    Path = ["/playbackConfiguration"],
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

%% @doc Starts a channel.
%%
%% For information about MediaTailor channels, see Working with channels:
%% https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-channels.html
%% in the MediaTailor User Guide.
-spec start_channel(aws_client:aws_client(), binary() | list(), start_channel_request()) ->
    {ok, start_channel_response(), tuple()} |
    {error, any()}.
start_channel(Client, ChannelName, Input) ->
    start_channel(Client, ChannelName, Input, []).

-spec start_channel(aws_client:aws_client(), binary() | list(), start_channel_request(), proplists:proplist()) ->
    {ok, start_channel_response(), tuple()} |
    {error, any()}.
start_channel(Client, ChannelName, Input0, Options0) ->
    Method = put,
    Path = ["/channel/", aws_util:encode_uri(ChannelName), "/start"],
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

%% @doc Stops a channel.
%%
%% For information about MediaTailor channels, see Working with channels:
%% https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-channels.html
%% in the MediaTailor User Guide.
-spec stop_channel(aws_client:aws_client(), binary() | list(), stop_channel_request()) ->
    {ok, stop_channel_response(), tuple()} |
    {error, any()}.
stop_channel(Client, ChannelName, Input) ->
    stop_channel(Client, ChannelName, Input, []).

-spec stop_channel(aws_client:aws_client(), binary() | list(), stop_channel_request(), proplists:proplist()) ->
    {ok, stop_channel_response(), tuple()} |
    {error, any()}.
stop_channel(Client, ChannelName, Input0, Options0) ->
    Method = put,
    Path = ["/channel/", aws_util:encode_uri(ChannelName), "/stop"],
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

%% @doc The resource to tag.
%%
%% Tags are key-value pairs that you can associate with Amazon resources to
%% help with organization, access control, and cost tracking. For more
%% information, see Tagging AWS Elemental MediaTailor Resources:
%% https://docs.aws.amazon.com/mediatailor/latest/ug/tagging.html.
-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).

-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
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

%% @doc The resource to untag.
-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).

-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
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

    QueryMapping = [
                     {<<"tagKeys">>, <<"TagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a channel.
%%
%% For information about MediaTailor channels, see Working with channels:
%% https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-channels.html
%% in the MediaTailor User Guide.
-spec update_channel(aws_client:aws_client(), binary() | list(), update_channel_request()) ->
    {ok, update_channel_response(), tuple()} |
    {error, any()}.
update_channel(Client, ChannelName, Input) ->
    update_channel(Client, ChannelName, Input, []).

-spec update_channel(aws_client:aws_client(), binary() | list(), update_channel_request(), proplists:proplist()) ->
    {ok, update_channel_response(), tuple()} |
    {error, any()}.
update_channel(Client, ChannelName, Input0, Options0) ->
    Method = put,
    Path = ["/channel/", aws_util:encode_uri(ChannelName), ""],
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

%% @doc Updates a live source's configuration.
-spec update_live_source(aws_client:aws_client(), binary() | list(), binary() | list(), update_live_source_request()) ->
    {ok, update_live_source_response(), tuple()} |
    {error, any()}.
update_live_source(Client, LiveSourceName, SourceLocationName, Input) ->
    update_live_source(Client, LiveSourceName, SourceLocationName, Input, []).

-spec update_live_source(aws_client:aws_client(), binary() | list(), binary() | list(), update_live_source_request(), proplists:proplist()) ->
    {ok, update_live_source_response(), tuple()} |
    {error, any()}.
update_live_source(Client, LiveSourceName, SourceLocationName, Input0, Options0) ->
    Method = put,
    Path = ["/sourceLocation/", aws_util:encode_uri(SourceLocationName), "/liveSource/", aws_util:encode_uri(LiveSourceName), ""],
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

%% @doc Updates a program within a channel.
-spec update_program(aws_client:aws_client(), binary() | list(), binary() | list(), update_program_request()) ->
    {ok, update_program_response(), tuple()} |
    {error, any()}.
update_program(Client, ChannelName, ProgramName, Input) ->
    update_program(Client, ChannelName, ProgramName, Input, []).

-spec update_program(aws_client:aws_client(), binary() | list(), binary() | list(), update_program_request(), proplists:proplist()) ->
    {ok, update_program_response(), tuple()} |
    {error, any()}.
update_program(Client, ChannelName, ProgramName, Input0, Options0) ->
    Method = put,
    Path = ["/channel/", aws_util:encode_uri(ChannelName), "/program/", aws_util:encode_uri(ProgramName), ""],
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

%% @doc Updates a source location.
%%
%% A source location is a container for sources. For more information about
%% source locations, see Working with source locations:
%% https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-source-locations.html
%% in the MediaTailor User Guide.
-spec update_source_location(aws_client:aws_client(), binary() | list(), update_source_location_request()) ->
    {ok, update_source_location_response(), tuple()} |
    {error, any()}.
update_source_location(Client, SourceLocationName, Input) ->
    update_source_location(Client, SourceLocationName, Input, []).

-spec update_source_location(aws_client:aws_client(), binary() | list(), update_source_location_request(), proplists:proplist()) ->
    {ok, update_source_location_response(), tuple()} |
    {error, any()}.
update_source_location(Client, SourceLocationName, Input0, Options0) ->
    Method = put,
    Path = ["/sourceLocation/", aws_util:encode_uri(SourceLocationName), ""],
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

%% @doc Updates a VOD source's configuration.
-spec update_vod_source(aws_client:aws_client(), binary() | list(), binary() | list(), update_vod_source_request()) ->
    {ok, update_vod_source_response(), tuple()} |
    {error, any()}.
update_vod_source(Client, SourceLocationName, VodSourceName, Input) ->
    update_vod_source(Client, SourceLocationName, VodSourceName, Input, []).

-spec update_vod_source(aws_client:aws_client(), binary() | list(), binary() | list(), update_vod_source_request(), proplists:proplist()) ->
    {ok, update_vod_source_response(), tuple()} |
    {error, any()}.
update_vod_source(Client, SourceLocationName, VodSourceName, Input0, Options0) ->
    Method = put,
    Path = ["/sourceLocation/", aws_util:encode_uri(SourceLocationName), "/vodSource/", aws_util:encode_uri(VodSourceName), ""],
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
    Client1 = Client#{service => <<"mediatailor">>},
    Host = build_host(<<"api.mediatailor">>, Client1),
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
