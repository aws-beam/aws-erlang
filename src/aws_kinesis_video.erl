%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.


-module(aws_kinesis_video).

-export([create_signaling_channel/2,
         create_signaling_channel/3,
         create_stream/2,
         create_stream/3,
         delete_edge_configuration/2,
         delete_edge_configuration/3,
         delete_signaling_channel/2,
         delete_signaling_channel/3,
         delete_stream/2,
         delete_stream/3,
         describe_edge_configuration/2,
         describe_edge_configuration/3,
         describe_image_generation_configuration/2,
         describe_image_generation_configuration/3,
         describe_mapped_resource_configuration/2,
         describe_mapped_resource_configuration/3,
         describe_media_storage_configuration/2,
         describe_media_storage_configuration/3,
         describe_notification_configuration/2,
         describe_notification_configuration/3,
         describe_signaling_channel/2,
         describe_signaling_channel/3,
         describe_stream/2,
         describe_stream/3,
         get_data_endpoint/2,
         get_data_endpoint/3,
         get_signaling_channel_endpoint/2,
         get_signaling_channel_endpoint/3,
         list_edge_agent_configurations/2,
         list_edge_agent_configurations/3,
         list_signaling_channels/2,
         list_signaling_channels/3,
         list_streams/2,
         list_streams/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         list_tags_for_stream/2,
         list_tags_for_stream/3,
         start_edge_configuration_update/2,
         start_edge_configuration_update/3,
         tag_resource/2,
         tag_resource/3,
         tag_stream/2,
         tag_stream/3,
         untag_resource/2,
         untag_resource/3,
         untag_stream/2,
         untag_stream/3,
         update_data_retention/2,
         update_data_retention/3,
         update_image_generation_configuration/2,
         update_image_generation_configuration/3,
         update_media_storage_configuration/2,
         update_media_storage_configuration/3,
         update_notification_configuration/2,
         update_notification_configuration/3,
         update_signaling_channel/2,
         update_signaling_channel/3,
         update_stream/2,
         update_stream/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% update_signaling_channel_output() :: #{}
-type update_signaling_channel_output() :: #{}.


%% Example:
%% update_stream_input() :: #{
%%   <<"CurrentVersion">> := string(),
%%   <<"DeviceName">> => string(),
%%   <<"MediaType">> => string(),
%%   <<"StreamARN">> => string(),
%%   <<"StreamName">> => string()
%% }
-type update_stream_input() :: #{binary() => any()}.


%% Example:
%% create_signaling_channel_input() :: #{
%%   <<"ChannelName">> := string(),
%%   <<"ChannelType">> => list(any()),
%%   <<"SingleMasterConfiguration">> => single_master_configuration(),
%%   <<"Tags">> => list(tag())
%% }
-type create_signaling_channel_input() :: #{binary() => any()}.


%% Example:
%% media_source_config() :: #{
%%   <<"MediaUriSecretArn">> => string(),
%%   <<"MediaUriType">> => list(any())
%% }
-type media_source_config() :: #{binary() => any()}.

%% Example:
%% update_stream_output() :: #{}
-type update_stream_output() :: #{}.


%% Example:
%% resource_in_use_exception() :: #{
%%   <<"Message">> => string()
%% }
-type resource_in_use_exception() :: #{binary() => any()}.


%% Example:
%% describe_image_generation_configuration_output() :: #{
%%   <<"ImageGenerationConfiguration">> => image_generation_configuration()
%% }
-type describe_image_generation_configuration_output() :: #{binary() => any()}.


%% Example:
%% create_signaling_channel_output() :: #{
%%   <<"ChannelARN">> => string()
%% }
-type create_signaling_channel_output() :: #{binary() => any()}.


%% Example:
%% list_tags_for_stream_output() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Tags">> => map()
%% }
-type list_tags_for_stream_output() :: #{binary() => any()}.


%% Example:
%% version_mismatch_exception() :: #{
%%   <<"Message">> => string()
%% }
-type version_mismatch_exception() :: #{binary() => any()}.


%% Example:
%% delete_signaling_channel_input() :: #{
%%   <<"ChannelARN">> := string(),
%%   <<"CurrentVersion">> => string()
%% }
-type delete_signaling_channel_input() :: #{binary() => any()}.


%% Example:
%% no_data_retention_exception() :: #{
%%   <<"Message">> => string()
%% }
-type no_data_retention_exception() :: #{binary() => any()}.


%% Example:
%% start_edge_configuration_update_output() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"EdgeConfig">> => edge_config(),
%%   <<"FailedStatusDetails">> => string(),
%%   <<"LastUpdatedTime">> => non_neg_integer(),
%%   <<"StreamARN">> => string(),
%%   <<"StreamName">> => string(),
%%   <<"SyncStatus">> => list(any())
%% }
-type start_edge_configuration_update_output() :: #{binary() => any()}.

%% Example:
%% delete_edge_configuration_output() :: #{}
-type delete_edge_configuration_output() :: #{}.


%% Example:
%% list_signaling_channels_output() :: #{
%%   <<"ChannelInfoList">> => list(channel_info()),
%%   <<"NextToken">> => string()
%% }
-type list_signaling_channels_output() :: #{binary() => any()}.


%% Example:
%% delete_stream_input() :: #{
%%   <<"CurrentVersion">> => string(),
%%   <<"StreamARN">> := string()
%% }
-type delete_stream_input() :: #{binary() => any()}.

%% Example:
%% update_data_retention_output() :: #{}
-type update_data_retention_output() :: #{}.


%% Example:
%% channel_name_condition() :: #{
%%   <<"ComparisonOperator">> => list(any()),
%%   <<"ComparisonValue">> => string()
%% }
-type channel_name_condition() :: #{binary() => any()}.


%% Example:
%% last_uploader_status() :: #{
%%   <<"JobStatusDetails">> => string(),
%%   <<"LastCollectedTime">> => non_neg_integer(),
%%   <<"LastUpdatedTime">> => non_neg_integer(),
%%   <<"UploaderStatus">> => list(any())
%% }
-type last_uploader_status() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_output() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Tags">> => map()
%% }
-type list_tags_for_resource_output() :: #{binary() => any()}.


%% Example:
%% get_signaling_channel_endpoint_output() :: #{
%%   <<"ResourceEndpointList">> => list(resource_endpoint_list_item())
%% }
-type get_signaling_channel_endpoint_output() :: #{binary() => any()}.


%% Example:
%% describe_media_storage_configuration_output() :: #{
%%   <<"MediaStorageConfiguration">> => media_storage_configuration()
%% }
-type describe_media_storage_configuration_output() :: #{binary() => any()}.


%% Example:
%% local_size_config() :: #{
%%   <<"MaxLocalMediaSizeInMB">> => integer(),
%%   <<"StrategyOnFullSize">> => list(any())
%% }
-type local_size_config() :: #{binary() => any()}.


%% Example:
%% tag_stream_input() :: #{
%%   <<"StreamARN">> => string(),
%%   <<"StreamName">> => string(),
%%   <<"Tags">> := map()
%% }
-type tag_stream_input() :: #{binary() => any()}.


%% Example:
%% start_edge_configuration_update_input() :: #{
%%   <<"EdgeConfig">> := edge_config(),
%%   <<"StreamARN">> => string(),
%%   <<"StreamName">> => string()
%% }
-type start_edge_configuration_update_input() :: #{binary() => any()}.


%% Example:
%% list_streams_output() :: #{
%%   <<"NextToken">> => string(),
%%   <<"StreamInfoList">> => list(stream_info())
%% }
-type list_streams_output() :: #{binary() => any()}.


%% Example:
%% notification_destination_config() :: #{
%%   <<"Uri">> => string()
%% }
-type notification_destination_config() :: #{binary() => any()}.


%% Example:
%% describe_edge_configuration_output() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"EdgeAgentStatus">> => edge_agent_status(),
%%   <<"EdgeConfig">> => edge_config(),
%%   <<"FailedStatusDetails">> => string(),
%%   <<"LastUpdatedTime">> => non_neg_integer(),
%%   <<"StreamARN">> => string(),
%%   <<"StreamName">> => string(),
%%   <<"SyncStatus">> => list(any())
%% }
-type describe_edge_configuration_output() :: #{binary() => any()}.


%% Example:
%% stream_name_condition() :: #{
%%   <<"ComparisonOperator">> => list(any()),
%%   <<"ComparisonValue">> => string()
%% }
-type stream_name_condition() :: #{binary() => any()}.


%% Example:
%% describe_media_storage_configuration_input() :: #{
%%   <<"ChannelARN">> => string(),
%%   <<"ChannelName">> => string()
%% }
-type describe_media_storage_configuration_input() :: #{binary() => any()}.


%% Example:
%% invalid_device_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_device_exception() :: #{binary() => any()}.


%% Example:
%% channel_info() :: #{
%%   <<"ChannelARN">> => string(),
%%   <<"ChannelName">> => string(),
%%   <<"ChannelStatus">> => list(any()),
%%   <<"ChannelType">> => list(any()),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"SingleMasterConfiguration">> => single_master_configuration(),
%%   <<"Version">> => string()
%% }
-type channel_info() :: #{binary() => any()}.


%% Example:
%% describe_mapped_resource_configuration_output() :: #{
%%   <<"MappedResourceConfigurationList">> => list(mapped_resource_configuration_list_item()),
%%   <<"NextToken">> => string()
%% }
-type describe_mapped_resource_configuration_output() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.


%% Example:
%% update_media_storage_configuration_input() :: #{
%%   <<"ChannelARN">> := string(),
%%   <<"MediaStorageConfiguration">> := media_storage_configuration()
%% }
-type update_media_storage_configuration_input() :: #{binary() => any()}.

%% Example:
%% update_image_generation_configuration_output() :: #{}
-type update_image_generation_configuration_output() :: #{}.


%% Example:
%% tags_per_resource_exceeded_limit_exception() :: #{
%%   <<"Message">> => string()
%% }
-type tags_per_resource_exceeded_limit_exception() :: #{binary() => any()}.


%% Example:
%% account_stream_limit_exceeded_exception() :: #{
%%   <<"Message">> => string()
%% }
-type account_stream_limit_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% describe_notification_configuration_output() :: #{
%%   <<"NotificationConfiguration">> => notification_configuration()
%% }
-type describe_notification_configuration_output() :: #{binary() => any()}.


%% Example:
%% mapped_resource_configuration_list_item() :: #{
%%   <<"ARN">> => string(),
%%   <<"Type">> => string()
%% }
-type mapped_resource_configuration_list_item() :: #{binary() => any()}.


%% Example:
%% update_image_generation_configuration_input() :: #{
%%   <<"ImageGenerationConfiguration">> => image_generation_configuration(),
%%   <<"StreamARN">> => string(),
%%   <<"StreamName">> => string()
%% }
-type update_image_generation_configuration_input() :: #{binary() => any()}.


%% Example:
%% single_master_channel_endpoint_configuration() :: #{
%%   <<"Protocols">> => list(list(any())()),
%%   <<"Role">> => list(any())
%% }
-type single_master_channel_endpoint_configuration() :: #{binary() => any()}.


%% Example:
%% describe_edge_configuration_input() :: #{
%%   <<"StreamARN">> => string(),
%%   <<"StreamName">> => string()
%% }
-type describe_edge_configuration_input() :: #{binary() => any()}.


%% Example:
%% describe_notification_configuration_input() :: #{
%%   <<"StreamARN">> => string(),
%%   <<"StreamName">> => string()
%% }
-type describe_notification_configuration_input() :: #{binary() => any()}.


%% Example:
%% client_limit_exceeded_exception() :: #{
%%   <<"Message">> => string()
%% }
-type client_limit_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% uploader_config() :: #{
%%   <<"ScheduleConfig">> => schedule_config()
%% }
-type uploader_config() :: #{binary() => any()}.


%% Example:
%% tag_resource_input() :: #{
%%   <<"ResourceARN">> := string(),
%%   <<"Tags">> := list(tag())
%% }
-type tag_resource_input() :: #{binary() => any()}.


%% Example:
%% describe_signaling_channel_output() :: #{
%%   <<"ChannelInfo">> => channel_info()
%% }
-type describe_signaling_channel_output() :: #{binary() => any()}.


%% Example:
%% stream_edge_configuration_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type stream_edge_configuration_not_found_exception() :: #{binary() => any()}.

%% Example:
%% untag_stream_output() :: #{}
-type untag_stream_output() :: #{}.


%% Example:
%% notification_configuration() :: #{
%%   <<"DestinationConfig">> => notification_destination_config(),
%%   <<"Status">> => list(any())
%% }
-type notification_configuration() :: #{binary() => any()}.


%% Example:
%% list_edge_agent_configurations_output() :: #{
%%   <<"EdgeConfigs">> => list(list_edge_agent_configurations_edge_config()),
%%   <<"NextToken">> => string()
%% }
-type list_edge_agent_configurations_output() :: #{binary() => any()}.

%% Example:
%% tag_resource_output() :: #{}
-type tag_resource_output() :: #{}.


%% Example:
%% update_signaling_channel_input() :: #{
%%   <<"ChannelARN">> := string(),
%%   <<"CurrentVersion">> := string(),
%%   <<"SingleMasterConfiguration">> => single_master_configuration()
%% }
-type update_signaling_channel_input() :: #{binary() => any()}.


%% Example:
%% schedule_config() :: #{
%%   <<"DurationInSeconds">> => integer(),
%%   <<"ScheduleExpression">> => string()
%% }
-type schedule_config() :: #{binary() => any()}.

%% Example:
%% update_media_storage_configuration_output() :: #{}
-type update_media_storage_configuration_output() :: #{}.

%% Example:
%% tag_stream_output() :: #{}
-type tag_stream_output() :: #{}.


%% Example:
%% device_stream_limit_exceeded_exception() :: #{
%%   <<"Message">> => string()
%% }
-type device_stream_limit_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% account_channel_limit_exceeded_exception() :: #{
%%   <<"Message">> => string()
%% }
-type account_channel_limit_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% get_signaling_channel_endpoint_input() :: #{
%%   <<"ChannelARN">> := string(),
%%   <<"SingleMasterChannelEndpointConfiguration">> => single_master_channel_endpoint_configuration()
%% }
-type get_signaling_channel_endpoint_input() :: #{binary() => any()}.


%% Example:
%% single_master_configuration() :: #{
%%   <<"MessageTtlSeconds">> => integer()
%% }
-type single_master_configuration() :: #{binary() => any()}.


%% Example:
%% list_streams_input() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"StreamNameCondition">> => stream_name_condition()
%% }
-type list_streams_input() :: #{binary() => any()}.


%% Example:
%% not_authorized_exception() :: #{
%%   <<"Message">> => string()
%% }
-type not_authorized_exception() :: #{binary() => any()}.


%% Example:
%% deletion_config() :: #{
%%   <<"DeleteAfterUpload">> => boolean(),
%%   <<"EdgeRetentionInHours">> => integer(),
%%   <<"LocalSizeConfig">> => local_size_config()
%% }
-type deletion_config() :: #{binary() => any()}.


%% Example:
%% delete_edge_configuration_input() :: #{
%%   <<"StreamARN">> => string(),
%%   <<"StreamName">> => string()
%% }
-type delete_edge_configuration_input() :: #{binary() => any()}.


%% Example:
%% describe_stream_output() :: #{
%%   <<"StreamInfo">> => stream_info()
%% }
-type describe_stream_output() :: #{binary() => any()}.


%% Example:
%% image_generation_configuration() :: #{
%%   <<"DestinationConfig">> => image_generation_destination_config(),
%%   <<"Format">> => list(any()),
%%   <<"FormatConfig">> => map(),
%%   <<"HeightPixels">> => integer(),
%%   <<"ImageSelectorType">> => list(any()),
%%   <<"SamplingInterval">> => integer(),
%%   <<"Status">> => list(any()),
%%   <<"WidthPixels">> => integer()
%% }
-type image_generation_configuration() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"Message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% untag_resource_input() :: #{
%%   <<"ResourceARN">> := string(),
%%   <<"TagKeyList">> := list(string())
%% }
-type untag_resource_input() :: #{binary() => any()}.


%% Example:
%% list_tags_for_stream_input() :: #{
%%   <<"NextToken">> => string(),
%%   <<"StreamARN">> => string(),
%%   <<"StreamName">> => string()
%% }
-type list_tags_for_stream_input() :: #{binary() => any()}.


%% Example:
%% list_edge_agent_configurations_edge_config() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"EdgeConfig">> => edge_config(),
%%   <<"FailedStatusDetails">> => string(),
%%   <<"LastUpdatedTime">> => non_neg_integer(),
%%   <<"StreamARN">> => string(),
%%   <<"StreamName">> => string(),
%%   <<"SyncStatus">> => list(any())
%% }
-type list_edge_agent_configurations_edge_config() :: #{binary() => any()}.


%% Example:
%% invalid_argument_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_argument_exception() :: #{binary() => any()}.


%% Example:
%% get_data_endpoint_output() :: #{
%%   <<"DataEndpoint">> => string()
%% }
-type get_data_endpoint_output() :: #{binary() => any()}.

%% Example:
%% delete_signaling_channel_output() :: #{}
-type delete_signaling_channel_output() :: #{}.


%% Example:
%% list_edge_agent_configurations_input() :: #{
%%   <<"HubDeviceArn">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_edge_agent_configurations_input() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_input() :: #{
%%   <<"NextToken">> => string(),
%%   <<"ResourceARN">> := string()
%% }
-type list_tags_for_resource_input() :: #{binary() => any()}.

%% Example:
%% untag_resource_output() :: #{}
-type untag_resource_output() :: #{}.


%% Example:
%% list_signaling_channels_input() :: #{
%%   <<"ChannelNameCondition">> => channel_name_condition(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_signaling_channels_input() :: #{binary() => any()}.


%% Example:
%% invalid_resource_format_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_resource_format_exception() :: #{binary() => any()}.


%% Example:
%% describe_signaling_channel_input() :: #{
%%   <<"ChannelARN">> => string(),
%%   <<"ChannelName">> => string()
%% }
-type describe_signaling_channel_input() :: #{binary() => any()}.

%% Example:
%% update_notification_configuration_output() :: #{}
-type update_notification_configuration_output() :: #{}.


%% Example:
%% edge_config() :: #{
%%   <<"DeletionConfig">> => deletion_config(),
%%   <<"HubDeviceArn">> => string(),
%%   <<"RecorderConfig">> => recorder_config(),
%%   <<"UploaderConfig">> => uploader_config()
%% }
-type edge_config() :: #{binary() => any()}.


%% Example:
%% create_stream_input() :: #{
%%   <<"DataRetentionInHours">> => integer(),
%%   <<"DeviceName">> => string(),
%%   <<"KmsKeyId">> => string(),
%%   <<"MediaType">> => string(),
%%   <<"StreamName">> := string(),
%%   <<"Tags">> => map()
%% }
-type create_stream_input() :: #{binary() => any()}.


%% Example:
%% edge_agent_status() :: #{
%%   <<"LastRecorderStatus">> => last_recorder_status(),
%%   <<"LastUploaderStatus">> => last_uploader_status()
%% }
-type edge_agent_status() :: #{binary() => any()}.


%% Example:
%% resource_endpoint_list_item() :: #{
%%   <<"Protocol">> => list(any()),
%%   <<"ResourceEndpoint">> => string()
%% }
-type resource_endpoint_list_item() :: #{binary() => any()}.


%% Example:
%% update_notification_configuration_input() :: #{
%%   <<"NotificationConfiguration">> => notification_configuration(),
%%   <<"StreamARN">> => string(),
%%   <<"StreamName">> => string()
%% }
-type update_notification_configuration_input() :: #{binary() => any()}.


%% Example:
%% stream_info() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"DataRetentionInHours">> => integer(),
%%   <<"DeviceName">> => string(),
%%   <<"KmsKeyId">> => string(),
%%   <<"MediaType">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"StreamARN">> => string(),
%%   <<"StreamName">> => string(),
%%   <<"Version">> => string()
%% }
-type stream_info() :: #{binary() => any()}.


%% Example:
%% get_data_endpoint_input() :: #{
%%   <<"APIName">> := list(any()),
%%   <<"StreamARN">> => string(),
%%   <<"StreamName">> => string()
%% }
-type get_data_endpoint_input() :: #{binary() => any()}.


%% Example:
%% last_recorder_status() :: #{
%%   <<"JobStatusDetails">> => string(),
%%   <<"LastCollectedTime">> => non_neg_integer(),
%%   <<"LastUpdatedTime">> => non_neg_integer(),
%%   <<"RecorderStatus">> => list(any())
%% }
-type last_recorder_status() :: #{binary() => any()}.


%% Example:
%% describe_stream_input() :: #{
%%   <<"StreamARN">> => string(),
%%   <<"StreamName">> => string()
%% }
-type describe_stream_input() :: #{binary() => any()}.


%% Example:
%% create_stream_output() :: #{
%%   <<"StreamARN">> => string()
%% }
-type create_stream_output() :: #{binary() => any()}.


%% Example:
%% recorder_config() :: #{
%%   <<"MediaSourceConfig">> => media_source_config(),
%%   <<"ScheduleConfig">> => schedule_config()
%% }
-type recorder_config() :: #{binary() => any()}.


%% Example:
%% image_generation_destination_config() :: #{
%%   <<"DestinationRegion">> => string(),
%%   <<"Uri">> => string()
%% }
-type image_generation_destination_config() :: #{binary() => any()}.


%% Example:
%% update_data_retention_input() :: #{
%%   <<"CurrentVersion">> := string(),
%%   <<"DataRetentionChangeInHours">> := integer(),
%%   <<"Operation">> := list(any()),
%%   <<"StreamARN">> => string(),
%%   <<"StreamName">> => string()
%% }
-type update_data_retention_input() :: #{binary() => any()}.


%% Example:
%% describe_image_generation_configuration_input() :: #{
%%   <<"StreamARN">> => string(),
%%   <<"StreamName">> => string()
%% }
-type describe_image_generation_configuration_input() :: #{binary() => any()}.


%% Example:
%% describe_mapped_resource_configuration_input() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"StreamARN">> => string(),
%%   <<"StreamName">> => string()
%% }
-type describe_mapped_resource_configuration_input() :: #{binary() => any()}.


%% Example:
%% untag_stream_input() :: #{
%%   <<"StreamARN">> => string(),
%%   <<"StreamName">> => string(),
%%   <<"TagKeyList">> := list(string())
%% }
-type untag_stream_input() :: #{binary() => any()}.

%% Example:
%% delete_stream_output() :: #{}
-type delete_stream_output() :: #{}.


%% Example:
%% media_storage_configuration() :: #{
%%   <<"Status">> => list(any()),
%%   <<"StreamARN">> => string()
%% }
-type media_storage_configuration() :: #{binary() => any()}.

-type create_signaling_channel_errors() ::
    invalid_argument_exception() | 
    access_denied_exception() | 
    account_channel_limit_exceeded_exception() | 
    client_limit_exceeded_exception() | 
    tags_per_resource_exceeded_limit_exception() | 
    resource_in_use_exception().

-type create_stream_errors() ::
    invalid_argument_exception() | 
    device_stream_limit_exceeded_exception() | 
    client_limit_exceeded_exception() | 
    account_stream_limit_exceeded_exception() | 
    tags_per_resource_exceeded_limit_exception() | 
    invalid_device_exception() | 
    resource_in_use_exception().

-type delete_edge_configuration_errors() ::
    invalid_argument_exception() | 
    access_denied_exception() | 
    stream_edge_configuration_not_found_exception() | 
    client_limit_exceeded_exception() | 
    resource_not_found_exception().

-type delete_signaling_channel_errors() ::
    invalid_argument_exception() | 
    access_denied_exception() | 
    client_limit_exceeded_exception() | 
    resource_not_found_exception() | 
    version_mismatch_exception() | 
    resource_in_use_exception().

-type delete_stream_errors() ::
    invalid_argument_exception() | 
    not_authorized_exception() | 
    client_limit_exceeded_exception() | 
    resource_not_found_exception() | 
    version_mismatch_exception() | 
    resource_in_use_exception().

-type describe_edge_configuration_errors() ::
    invalid_argument_exception() | 
    access_denied_exception() | 
    stream_edge_configuration_not_found_exception() | 
    client_limit_exceeded_exception() | 
    resource_not_found_exception().

-type describe_image_generation_configuration_errors() ::
    invalid_argument_exception() | 
    access_denied_exception() | 
    client_limit_exceeded_exception() | 
    resource_not_found_exception().

-type describe_mapped_resource_configuration_errors() ::
    invalid_argument_exception() | 
    access_denied_exception() | 
    client_limit_exceeded_exception() | 
    resource_not_found_exception().

-type describe_media_storage_configuration_errors() ::
    invalid_argument_exception() | 
    access_denied_exception() | 
    client_limit_exceeded_exception() | 
    resource_not_found_exception().

-type describe_notification_configuration_errors() ::
    invalid_argument_exception() | 
    access_denied_exception() | 
    client_limit_exceeded_exception() | 
    resource_not_found_exception().

-type describe_signaling_channel_errors() ::
    invalid_argument_exception() | 
    access_denied_exception() | 
    client_limit_exceeded_exception() | 
    resource_not_found_exception().

-type describe_stream_errors() ::
    invalid_argument_exception() | 
    not_authorized_exception() | 
    client_limit_exceeded_exception() | 
    resource_not_found_exception().

-type get_data_endpoint_errors() ::
    invalid_argument_exception() | 
    not_authorized_exception() | 
    client_limit_exceeded_exception() | 
    resource_not_found_exception().

-type get_signaling_channel_endpoint_errors() ::
    invalid_argument_exception() | 
    access_denied_exception() | 
    client_limit_exceeded_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type list_edge_agent_configurations_errors() ::
    invalid_argument_exception() | 
    not_authorized_exception() | 
    client_limit_exceeded_exception().

-type list_signaling_channels_errors() ::
    invalid_argument_exception() | 
    access_denied_exception() | 
    client_limit_exceeded_exception().

-type list_streams_errors() ::
    invalid_argument_exception() | 
    client_limit_exceeded_exception().

-type list_tags_for_resource_errors() ::
    invalid_argument_exception() | 
    access_denied_exception() | 
    client_limit_exceeded_exception() | 
    resource_not_found_exception().

-type list_tags_for_stream_errors() ::
    invalid_resource_format_exception() | 
    invalid_argument_exception() | 
    not_authorized_exception() | 
    client_limit_exceeded_exception() | 
    resource_not_found_exception().

-type start_edge_configuration_update_errors() ::
    invalid_argument_exception() | 
    access_denied_exception() | 
    client_limit_exceeded_exception() | 
    resource_not_found_exception() | 
    no_data_retention_exception() | 
    resource_in_use_exception().

-type tag_resource_errors() ::
    invalid_argument_exception() | 
    access_denied_exception() | 
    client_limit_exceeded_exception() | 
    tags_per_resource_exceeded_limit_exception() | 
    resource_not_found_exception().

-type tag_stream_errors() ::
    invalid_resource_format_exception() | 
    invalid_argument_exception() | 
    not_authorized_exception() | 
    client_limit_exceeded_exception() | 
    tags_per_resource_exceeded_limit_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    invalid_argument_exception() | 
    access_denied_exception() | 
    client_limit_exceeded_exception() | 
    resource_not_found_exception().

-type untag_stream_errors() ::
    invalid_resource_format_exception() | 
    invalid_argument_exception() | 
    not_authorized_exception() | 
    client_limit_exceeded_exception() | 
    resource_not_found_exception().

-type update_data_retention_errors() ::
    invalid_argument_exception() | 
    not_authorized_exception() | 
    client_limit_exceeded_exception() | 
    resource_not_found_exception() | 
    version_mismatch_exception() | 
    resource_in_use_exception().

-type update_image_generation_configuration_errors() ::
    invalid_argument_exception() | 
    access_denied_exception() | 
    client_limit_exceeded_exception() | 
    resource_not_found_exception() | 
    no_data_retention_exception() | 
    resource_in_use_exception().

-type update_media_storage_configuration_errors() ::
    invalid_argument_exception() | 
    access_denied_exception() | 
    client_limit_exceeded_exception() | 
    resource_not_found_exception() | 
    no_data_retention_exception() | 
    resource_in_use_exception().

-type update_notification_configuration_errors() ::
    invalid_argument_exception() | 
    access_denied_exception() | 
    client_limit_exceeded_exception() | 
    resource_not_found_exception() | 
    no_data_retention_exception() | 
    resource_in_use_exception().

-type update_signaling_channel_errors() ::
    invalid_argument_exception() | 
    access_denied_exception() | 
    client_limit_exceeded_exception() | 
    resource_not_found_exception() | 
    version_mismatch_exception() | 
    resource_in_use_exception().

-type update_stream_errors() ::
    invalid_argument_exception() | 
    not_authorized_exception() | 
    client_limit_exceeded_exception() | 
    resource_not_found_exception() | 
    version_mismatch_exception() | 
    resource_in_use_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a signaling channel.
%%
%% `CreateSignalingChannel' is an asynchronous operation.
-spec create_signaling_channel(aws_client:aws_client(), create_signaling_channel_input()) ->
    {ok, create_signaling_channel_output(), tuple()} |
    {error, any()} |
    {error, create_signaling_channel_errors(), tuple()}.
create_signaling_channel(Client, Input) ->
    create_signaling_channel(Client, Input, []).

-spec create_signaling_channel(aws_client:aws_client(), create_signaling_channel_input(), proplists:proplist()) ->
    {ok, create_signaling_channel_output(), tuple()} |
    {error, any()} |
    {error, create_signaling_channel_errors(), tuple()}.
create_signaling_channel(Client, Input0, Options0) ->
    Method = post,
    Path = ["/createSignalingChannel"],
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

%% @doc Creates a new Kinesis video stream.
%%
%% When you create a new stream, Kinesis Video Streams assigns it a version
%% number.
%% When you change the stream's metadata, Kinesis Video Streams updates
%% the version.
%%
%% `CreateStream' is an asynchronous operation.
%%
%% For information about how the service works, see How it Works:
%% https://docs.aws.amazon.com/kinesisvideostreams/latest/dg/how-it-works.html.
%%
%% You must have permissions for the `KinesisVideo:CreateStream'
%% action.
-spec create_stream(aws_client:aws_client(), create_stream_input()) ->
    {ok, create_stream_output(), tuple()} |
    {error, any()} |
    {error, create_stream_errors(), tuple()}.
create_stream(Client, Input) ->
    create_stream(Client, Input, []).

-spec create_stream(aws_client:aws_client(), create_stream_input(), proplists:proplist()) ->
    {ok, create_stream_output(), tuple()} |
    {error, any()} |
    {error, create_stream_errors(), tuple()}.
create_stream(Client, Input0, Options0) ->
    Method = post,
    Path = ["/createStream"],
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

%% @doc An asynchronous API that deletes a stream’s existing edge
%% configuration, as well as the corresponding media from the Edge Agent.
%%
%% When you invoke this API, the sync status is set to `DELETING'. A
%% deletion process starts, in which active edge jobs are stopped and all
%% media is deleted from the edge device. The time to delete varies,
%% depending on the total amount of stored media. If the deletion process
%% fails, the sync status changes to `DELETE_FAILED'. You will need to
%% re-try the deletion.
%%
%% When the deletion process has completed successfully, the edge
%% configuration is no longer accessible.
-spec delete_edge_configuration(aws_client:aws_client(), delete_edge_configuration_input()) ->
    {ok, delete_edge_configuration_output(), tuple()} |
    {error, any()} |
    {error, delete_edge_configuration_errors(), tuple()}.
delete_edge_configuration(Client, Input) ->
    delete_edge_configuration(Client, Input, []).

-spec delete_edge_configuration(aws_client:aws_client(), delete_edge_configuration_input(), proplists:proplist()) ->
    {ok, delete_edge_configuration_output(), tuple()} |
    {error, any()} |
    {error, delete_edge_configuration_errors(), tuple()}.
delete_edge_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/deleteEdgeConfiguration"],
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

%% @doc Deletes a specified signaling channel.
%%
%% `DeleteSignalingChannel' is an
%% asynchronous operation. If you don't specify the channel's current
%% version, the most
%% recent version is deleted.
-spec delete_signaling_channel(aws_client:aws_client(), delete_signaling_channel_input()) ->
    {ok, delete_signaling_channel_output(), tuple()} |
    {error, any()} |
    {error, delete_signaling_channel_errors(), tuple()}.
delete_signaling_channel(Client, Input) ->
    delete_signaling_channel(Client, Input, []).

-spec delete_signaling_channel(aws_client:aws_client(), delete_signaling_channel_input(), proplists:proplist()) ->
    {ok, delete_signaling_channel_output(), tuple()} |
    {error, any()} |
    {error, delete_signaling_channel_errors(), tuple()}.
delete_signaling_channel(Client, Input0, Options0) ->
    Method = post,
    Path = ["/deleteSignalingChannel"],
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

%% @doc Deletes a Kinesis video stream and the data contained in the stream.
%%
%% This method marks the stream for deletion, and makes the data in the
%% stream
%% inaccessible immediately.
%%
%% To ensure that you have the latest version of the stream before deleting
%% it, you
%% can specify the stream version. Kinesis Video Streams assigns a version to
%% each stream.
%% When you update a stream, Kinesis Video Streams assigns a new version
%% number. To get the
%% latest stream version, use the `DescribeStream' API.
%%
%% This operation requires permission for the `KinesisVideo:DeleteStream'
%% action.
-spec delete_stream(aws_client:aws_client(), delete_stream_input()) ->
    {ok, delete_stream_output(), tuple()} |
    {error, any()} |
    {error, delete_stream_errors(), tuple()}.
delete_stream(Client, Input) ->
    delete_stream(Client, Input, []).

-spec delete_stream(aws_client:aws_client(), delete_stream_input(), proplists:proplist()) ->
    {ok, delete_stream_output(), tuple()} |
    {error, any()} |
    {error, delete_stream_errors(), tuple()}.
delete_stream(Client, Input0, Options0) ->
    Method = post,
    Path = ["/deleteStream"],
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

%% @doc Describes a stream’s edge configuration that was set using the
%% `StartEdgeConfigurationUpdate' API and the latest status of the edge
%% agent's recorder and uploader jobs.
%%
%% Use this API to get the status of the configuration
%% to determine if the configuration is in sync with the Edge Agent. Use this
%% API to
%% evaluate the health of the Edge Agent.
-spec describe_edge_configuration(aws_client:aws_client(), describe_edge_configuration_input()) ->
    {ok, describe_edge_configuration_output(), tuple()} |
    {error, any()} |
    {error, describe_edge_configuration_errors(), tuple()}.
describe_edge_configuration(Client, Input) ->
    describe_edge_configuration(Client, Input, []).

-spec describe_edge_configuration(aws_client:aws_client(), describe_edge_configuration_input(), proplists:proplist()) ->
    {ok, describe_edge_configuration_output(), tuple()} |
    {error, any()} |
    {error, describe_edge_configuration_errors(), tuple()}.
describe_edge_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/describeEdgeConfiguration"],
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

%% @doc Gets the `ImageGenerationConfiguration' for a given Kinesis video
%% stream.
-spec describe_image_generation_configuration(aws_client:aws_client(), describe_image_generation_configuration_input()) ->
    {ok, describe_image_generation_configuration_output(), tuple()} |
    {error, any()} |
    {error, describe_image_generation_configuration_errors(), tuple()}.
describe_image_generation_configuration(Client, Input) ->
    describe_image_generation_configuration(Client, Input, []).

-spec describe_image_generation_configuration(aws_client:aws_client(), describe_image_generation_configuration_input(), proplists:proplist()) ->
    {ok, describe_image_generation_configuration_output(), tuple()} |
    {error, any()} |
    {error, describe_image_generation_configuration_errors(), tuple()}.
describe_image_generation_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/describeImageGenerationConfiguration"],
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

%% @doc Returns the most current information about the stream.
%%
%% The `streamName'
%% or `streamARN' should be provided in the input.
-spec describe_mapped_resource_configuration(aws_client:aws_client(), describe_mapped_resource_configuration_input()) ->
    {ok, describe_mapped_resource_configuration_output(), tuple()} |
    {error, any()} |
    {error, describe_mapped_resource_configuration_errors(), tuple()}.
describe_mapped_resource_configuration(Client, Input) ->
    describe_mapped_resource_configuration(Client, Input, []).

-spec describe_mapped_resource_configuration(aws_client:aws_client(), describe_mapped_resource_configuration_input(), proplists:proplist()) ->
    {ok, describe_mapped_resource_configuration_output(), tuple()} |
    {error, any()} |
    {error, describe_mapped_resource_configuration_errors(), tuple()}.
describe_mapped_resource_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/describeMappedResourceConfiguration"],
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

%% @doc Returns the most current information about the channel.
%%
%% Specify the `ChannelName'
%% or `ChannelARN' in the input.
-spec describe_media_storage_configuration(aws_client:aws_client(), describe_media_storage_configuration_input()) ->
    {ok, describe_media_storage_configuration_output(), tuple()} |
    {error, any()} |
    {error, describe_media_storage_configuration_errors(), tuple()}.
describe_media_storage_configuration(Client, Input) ->
    describe_media_storage_configuration(Client, Input, []).

-spec describe_media_storage_configuration(aws_client:aws_client(), describe_media_storage_configuration_input(), proplists:proplist()) ->
    {ok, describe_media_storage_configuration_output(), tuple()} |
    {error, any()} |
    {error, describe_media_storage_configuration_errors(), tuple()}.
describe_media_storage_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/describeMediaStorageConfiguration"],
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

%% @doc Gets the `NotificationConfiguration' for a given Kinesis video
%% stream.
-spec describe_notification_configuration(aws_client:aws_client(), describe_notification_configuration_input()) ->
    {ok, describe_notification_configuration_output(), tuple()} |
    {error, any()} |
    {error, describe_notification_configuration_errors(), tuple()}.
describe_notification_configuration(Client, Input) ->
    describe_notification_configuration(Client, Input, []).

-spec describe_notification_configuration(aws_client:aws_client(), describe_notification_configuration_input(), proplists:proplist()) ->
    {ok, describe_notification_configuration_output(), tuple()} |
    {error, any()} |
    {error, describe_notification_configuration_errors(), tuple()}.
describe_notification_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/describeNotificationConfiguration"],
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

%% @doc Returns the most current information about the signaling channel.
%%
%% You must specify
%% either the name or the Amazon Resource Name (ARN) of the channel that you
%% want to
%% describe.
-spec describe_signaling_channel(aws_client:aws_client(), describe_signaling_channel_input()) ->
    {ok, describe_signaling_channel_output(), tuple()} |
    {error, any()} |
    {error, describe_signaling_channel_errors(), tuple()}.
describe_signaling_channel(Client, Input) ->
    describe_signaling_channel(Client, Input, []).

-spec describe_signaling_channel(aws_client:aws_client(), describe_signaling_channel_input(), proplists:proplist()) ->
    {ok, describe_signaling_channel_output(), tuple()} |
    {error, any()} |
    {error, describe_signaling_channel_errors(), tuple()}.
describe_signaling_channel(Client, Input0, Options0) ->
    Method = post,
    Path = ["/describeSignalingChannel"],
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

%% @doc Returns the most current information about the specified stream.
%%
%% You must specify
%% either the `StreamName' or the `StreamARN'.
-spec describe_stream(aws_client:aws_client(), describe_stream_input()) ->
    {ok, describe_stream_output(), tuple()} |
    {error, any()} |
    {error, describe_stream_errors(), tuple()}.
describe_stream(Client, Input) ->
    describe_stream(Client, Input, []).

-spec describe_stream(aws_client:aws_client(), describe_stream_input(), proplists:proplist()) ->
    {ok, describe_stream_output(), tuple()} |
    {error, any()} |
    {error, describe_stream_errors(), tuple()}.
describe_stream(Client, Input0, Options0) ->
    Method = post,
    Path = ["/describeStream"],
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

%% @doc Gets an endpoint for a specified stream for either reading or
%% writing.
%%
%% Use this
%% endpoint in your application to read from the specified stream (using the
%% `GetMedia' or `GetMediaForFragmentList' operations) or write
%% to it (using the `PutMedia' operation).
%%
%% The returned endpoint does not have the API name appended. The client
%% needs to
%% add the API name to the returned endpoint.
%%
%% In the request, specify the stream either by `StreamName' or
%% `StreamARN'.
-spec get_data_endpoint(aws_client:aws_client(), get_data_endpoint_input()) ->
    {ok, get_data_endpoint_output(), tuple()} |
    {error, any()} |
    {error, get_data_endpoint_errors(), tuple()}.
get_data_endpoint(Client, Input) ->
    get_data_endpoint(Client, Input, []).

-spec get_data_endpoint(aws_client:aws_client(), get_data_endpoint_input(), proplists:proplist()) ->
    {ok, get_data_endpoint_output(), tuple()} |
    {error, any()} |
    {error, get_data_endpoint_errors(), tuple()}.
get_data_endpoint(Client, Input0, Options0) ->
    Method = post,
    Path = ["/getDataEndpoint"],
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

%% @doc Provides an endpoint for the specified signaling channel to send and
%% receive messages.
%%
%% This API uses the `SingleMasterChannelEndpointConfiguration' input
%% parameter,
%% which consists of the `Protocols' and `Role' properties.
%%
%% `Protocols' is used to determine the communication mechanism. For
%% example,
%% if you specify `WSS' as the protocol, this API produces a secure
%% websocket
%% endpoint. If you specify `HTTPS' as the protocol, this API generates
%% an HTTPS
%% endpoint.
%%
%% `Role' determines the messaging permissions. A `MASTER' role
%% results in this API generating an endpoint that a client can use to
%% communicate with any
%% of the viewers on the channel. A `VIEWER' role results in this API
%% generating
%% an endpoint that a client can use to communicate only with a `MASTER'.
-spec get_signaling_channel_endpoint(aws_client:aws_client(), get_signaling_channel_endpoint_input()) ->
    {ok, get_signaling_channel_endpoint_output(), tuple()} |
    {error, any()} |
    {error, get_signaling_channel_endpoint_errors(), tuple()}.
get_signaling_channel_endpoint(Client, Input) ->
    get_signaling_channel_endpoint(Client, Input, []).

-spec get_signaling_channel_endpoint(aws_client:aws_client(), get_signaling_channel_endpoint_input(), proplists:proplist()) ->
    {ok, get_signaling_channel_endpoint_output(), tuple()} |
    {error, any()} |
    {error, get_signaling_channel_endpoint_errors(), tuple()}.
get_signaling_channel_endpoint(Client, Input0, Options0) ->
    Method = post,
    Path = ["/getSignalingChannelEndpoint"],
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

%% @doc Returns an array of edge configurations associated with the specified
%% Edge Agent.
%%
%% In the request, you must specify the Edge Agent `HubDeviceArn'.
-spec list_edge_agent_configurations(aws_client:aws_client(), list_edge_agent_configurations_input()) ->
    {ok, list_edge_agent_configurations_output(), tuple()} |
    {error, any()} |
    {error, list_edge_agent_configurations_errors(), tuple()}.
list_edge_agent_configurations(Client, Input) ->
    list_edge_agent_configurations(Client, Input, []).

-spec list_edge_agent_configurations(aws_client:aws_client(), list_edge_agent_configurations_input(), proplists:proplist()) ->
    {ok, list_edge_agent_configurations_output(), tuple()} |
    {error, any()} |
    {error, list_edge_agent_configurations_errors(), tuple()}.
list_edge_agent_configurations(Client, Input0, Options0) ->
    Method = post,
    Path = ["/listEdgeAgentConfigurations"],
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

%% @doc Returns an array of `ChannelInfo' objects.
%%
%% Each object describes a
%% signaling channel. To retrieve only those channels that satisfy a specific
%% condition,
%% you can specify a `ChannelNameCondition'.
-spec list_signaling_channels(aws_client:aws_client(), list_signaling_channels_input()) ->
    {ok, list_signaling_channels_output(), tuple()} |
    {error, any()} |
    {error, list_signaling_channels_errors(), tuple()}.
list_signaling_channels(Client, Input) ->
    list_signaling_channels(Client, Input, []).

-spec list_signaling_channels(aws_client:aws_client(), list_signaling_channels_input(), proplists:proplist()) ->
    {ok, list_signaling_channels_output(), tuple()} |
    {error, any()} |
    {error, list_signaling_channels_errors(), tuple()}.
list_signaling_channels(Client, Input0, Options0) ->
    Method = post,
    Path = ["/listSignalingChannels"],
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

%% @doc Returns an array of `StreamInfo' objects.
%%
%% Each object describes a
%% stream. To retrieve only streams that satisfy a specific condition, you
%% can specify a
%% `StreamNameCondition'.
-spec list_streams(aws_client:aws_client(), list_streams_input()) ->
    {ok, list_streams_output(), tuple()} |
    {error, any()} |
    {error, list_streams_errors(), tuple()}.
list_streams(Client, Input) ->
    list_streams(Client, Input, []).

-spec list_streams(aws_client:aws_client(), list_streams_input(), proplists:proplist()) ->
    {ok, list_streams_output(), tuple()} |
    {error, any()} |
    {error, list_streams_errors(), tuple()}.
list_streams(Client, Input0, Options0) ->
    Method = post,
    Path = ["/listStreams"],
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

%% @doc Returns a list of tags associated with the specified signaling
%% channel.
-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_input()) ->
    {ok, list_tags_for_resource_output(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input) ->
    list_tags_for_resource(Client, Input, []).

-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_input(), proplists:proplist()) ->
    {ok, list_tags_for_resource_output(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListTagsForResource"],
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

%% @doc Returns a list of tags associated with the specified stream.
%%
%% In the request, you must specify either the `StreamName' or the
%% `StreamARN'.
-spec list_tags_for_stream(aws_client:aws_client(), list_tags_for_stream_input()) ->
    {ok, list_tags_for_stream_output(), tuple()} |
    {error, any()} |
    {error, list_tags_for_stream_errors(), tuple()}.
list_tags_for_stream(Client, Input) ->
    list_tags_for_stream(Client, Input, []).

-spec list_tags_for_stream(aws_client:aws_client(), list_tags_for_stream_input(), proplists:proplist()) ->
    {ok, list_tags_for_stream_output(), tuple()} |
    {error, any()} |
    {error, list_tags_for_stream_errors(), tuple()}.
list_tags_for_stream(Client, Input0, Options0) ->
    Method = post,
    Path = ["/listTagsForStream"],
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

%% @doc An asynchronous API that updates a stream’s existing edge
%% configuration.
%%
%% The Kinesis Video Stream will sync the stream’s edge configuration with
%% the Edge Agent IoT Greengrass
%% component that runs on an IoT Hub Device, setup at your premise. The time
%% to sync can vary
%% and depends on the connectivity of the Hub Device.
%% The `SyncStatus' will be updated as the edge configuration is
%% acknowledged,
%% and synced with the Edge Agent.
%%
%% If this API is invoked for the first time, a new edge configuration will
%% be created for the stream,
%% and the sync status will be set to `SYNCING'. You will have to wait
%% for the sync status
%% to reach a terminal state such as: `IN_SYNC', or `SYNC_FAILED',
%% before using this API again.
%% If you invoke this API during the syncing process, a
%% `ResourceInUseException' will be thrown.
%% The connectivity of the stream’s edge configuration and the Edge Agent
%% will be retried for 15 minutes. After 15 minutes,
%% the status will transition into the `SYNC_FAILED' state.
%%
%% To move an edge configuration from one device to another, use
%% `DeleteEdgeConfiguration' to delete
%% the current edge configuration. You can then invoke
%% StartEdgeConfigurationUpdate with an updated Hub Device ARN.
-spec start_edge_configuration_update(aws_client:aws_client(), start_edge_configuration_update_input()) ->
    {ok, start_edge_configuration_update_output(), tuple()} |
    {error, any()} |
    {error, start_edge_configuration_update_errors(), tuple()}.
start_edge_configuration_update(Client, Input) ->
    start_edge_configuration_update(Client, Input, []).

-spec start_edge_configuration_update(aws_client:aws_client(), start_edge_configuration_update_input(), proplists:proplist()) ->
    {ok, start_edge_configuration_update_output(), tuple()} |
    {error, any()} |
    {error, start_edge_configuration_update_errors(), tuple()}.
start_edge_configuration_update(Client, Input0, Options0) ->
    Method = post,
    Path = ["/startEdgeConfigurationUpdate"],
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

%% @doc Adds one or more tags to a signaling channel.
%%
%% A tag is a
%% key-value pair (the value is optional) that you can define and assign to
%% Amazon Web Services resources.
%% If you specify a tag that already exists, the tag value is replaced with
%% the value that
%% you specify in the request. For more information, see Using Cost
%% Allocation
%% Tags:
%% https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html
%% in the Billing and Cost Management and Cost Management User
%% Guide.
-spec tag_resource(aws_client:aws_client(), tag_resource_input()) ->
    {ok, tag_resource_output(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input) ->
    tag_resource(Client, Input, []).

-spec tag_resource(aws_client:aws_client(), tag_resource_input(), proplists:proplist()) ->
    {ok, tag_resource_output(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/TagResource"],
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

%% @doc Adds one or more tags to a stream.
%%
%% A tag is a key-value pair
%% (the value is optional) that you can define and assign to Amazon Web
%% Services resources. If you specify
%% a tag that already exists, the tag value is replaced with the value that
%% you specify in
%% the request. For more information, see Using Cost Allocation
%% Tags:
%% https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html
%% in the Billing and Cost Management and Cost Management User Guide.
%%
%% You must provide either the `StreamName' or the
%% `StreamARN'.
%%
%% This operation requires permission for the `KinesisVideo:TagStream'
%% action.
%%
%% A Kinesis video stream can support up to 50 tags.
-spec tag_stream(aws_client:aws_client(), tag_stream_input()) ->
    {ok, tag_stream_output(), tuple()} |
    {error, any()} |
    {error, tag_stream_errors(), tuple()}.
tag_stream(Client, Input) ->
    tag_stream(Client, Input, []).

-spec tag_stream(aws_client:aws_client(), tag_stream_input(), proplists:proplist()) ->
    {ok, tag_stream_output(), tuple()} |
    {error, any()} |
    {error, tag_stream_errors(), tuple()}.
tag_stream(Client, Input0, Options0) ->
    Method = post,
    Path = ["/tagStream"],
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

%% @doc Removes one or more tags from a signaling channel.
%%
%% In the request, specify only a tag
%% key or keys; don't specify the value. If you specify a tag key that
%% does not exist, it's
%% ignored.
-spec untag_resource(aws_client:aws_client(), untag_resource_input()) ->
    {ok, untag_resource_output(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input) ->
    untag_resource(Client, Input, []).

-spec untag_resource(aws_client:aws_client(), untag_resource_input(), proplists:proplist()) ->
    {ok, untag_resource_output(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/UntagResource"],
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

%% @doc Removes one or more tags from a stream.
%%
%% In the request, specify only a tag key or
%% keys; don't specify the value. If you specify a tag key that does not
%% exist, it's
%% ignored.
%%
%% In the request, you must provide the `StreamName' or
%% `StreamARN'.
-spec untag_stream(aws_client:aws_client(), untag_stream_input()) ->
    {ok, untag_stream_output(), tuple()} |
    {error, any()} |
    {error, untag_stream_errors(), tuple()}.
untag_stream(Client, Input) ->
    untag_stream(Client, Input, []).

-spec untag_stream(aws_client:aws_client(), untag_stream_input(), proplists:proplist()) ->
    {ok, untag_stream_output(), tuple()} |
    {error, any()} |
    {error, untag_stream_errors(), tuple()}.
untag_stream(Client, Input0, Options0) ->
    Method = post,
    Path = ["/untagStream"],
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

%% @doc Increases or decreases the stream's data retention period by the
%% value that you
%% specify.
%%
%% To indicate whether you want to increase or decrease the data retention
%% period,
%% specify the `Operation' parameter in the request body. In the request,
%% you
%% must specify either the `StreamName' or the `StreamARN'.
%%
%% This operation requires permission for the
%% `KinesisVideo:UpdateDataRetention' action.
%%
%% Changing the data retention period affects the data in the stream as
%% follows:
%%
%% If the data retention period is increased, existing data is retained for
%% the new retention period. For example, if the data retention period is
%% increased
%% from one hour to seven hours, all existing data is retained for seven
%% hours.
%%
%% If the data retention period is decreased, existing data is retained for
%% the new retention period. For example, if the data retention period is
%% decreased
%% from seven hours to one hour, all existing data is retained for one hour,
%% and
%% any data older than one hour is deleted immediately.
-spec update_data_retention(aws_client:aws_client(), update_data_retention_input()) ->
    {ok, update_data_retention_output(), tuple()} |
    {error, any()} |
    {error, update_data_retention_errors(), tuple()}.
update_data_retention(Client, Input) ->
    update_data_retention(Client, Input, []).

-spec update_data_retention(aws_client:aws_client(), update_data_retention_input(), proplists:proplist()) ->
    {ok, update_data_retention_output(), tuple()} |
    {error, any()} |
    {error, update_data_retention_errors(), tuple()}.
update_data_retention(Client, Input0, Options0) ->
    Method = post,
    Path = ["/updateDataRetention"],
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

%% @doc Updates the `StreamInfo' and `ImageProcessingConfiguration'
%% fields.
-spec update_image_generation_configuration(aws_client:aws_client(), update_image_generation_configuration_input()) ->
    {ok, update_image_generation_configuration_output(), tuple()} |
    {error, any()} |
    {error, update_image_generation_configuration_errors(), tuple()}.
update_image_generation_configuration(Client, Input) ->
    update_image_generation_configuration(Client, Input, []).

-spec update_image_generation_configuration(aws_client:aws_client(), update_image_generation_configuration_input(), proplists:proplist()) ->
    {ok, update_image_generation_configuration_output(), tuple()} |
    {error, any()} |
    {error, update_image_generation_configuration_errors(), tuple()}.
update_image_generation_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/updateImageGenerationConfiguration"],
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

%% @doc Associates a `SignalingChannel' to a stream to store the media.
%%
%% There are
%% two signaling modes that you can specify :
%%
%% If `StorageStatus' is enabled, the data will be stored in the
%% `StreamARN' provided. In order for WebRTC Ingestion to work, the
%% stream must have data retention
%% enabled.
%%
%% If `StorageStatus' is disabled, no data will be stored, and the
%% `StreamARN' parameter will not be needed.
%%
%% If `StorageStatus' is enabled, direct peer-to-peer (master-viewer)
%% connections no
%% longer occur. Peers connect directly to the storage session. You must call
%% the
%% `JoinStorageSession' API to trigger an SDP offer send and establish a
%% connection between a peer and the storage session.
-spec update_media_storage_configuration(aws_client:aws_client(), update_media_storage_configuration_input()) ->
    {ok, update_media_storage_configuration_output(), tuple()} |
    {error, any()} |
    {error, update_media_storage_configuration_errors(), tuple()}.
update_media_storage_configuration(Client, Input) ->
    update_media_storage_configuration(Client, Input, []).

-spec update_media_storage_configuration(aws_client:aws_client(), update_media_storage_configuration_input(), proplists:proplist()) ->
    {ok, update_media_storage_configuration_output(), tuple()} |
    {error, any()} |
    {error, update_media_storage_configuration_errors(), tuple()}.
update_media_storage_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/updateMediaStorageConfiguration"],
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

%% @doc Updates the notification information for a stream.
-spec update_notification_configuration(aws_client:aws_client(), update_notification_configuration_input()) ->
    {ok, update_notification_configuration_output(), tuple()} |
    {error, any()} |
    {error, update_notification_configuration_errors(), tuple()}.
update_notification_configuration(Client, Input) ->
    update_notification_configuration(Client, Input, []).

-spec update_notification_configuration(aws_client:aws_client(), update_notification_configuration_input(), proplists:proplist()) ->
    {ok, update_notification_configuration_output(), tuple()} |
    {error, any()} |
    {error, update_notification_configuration_errors(), tuple()}.
update_notification_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/updateNotificationConfiguration"],
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

%% @doc Updates the existing signaling channel.
%%
%% This is an asynchronous operation and takes
%% time to complete.
%%
%% If the `MessageTtlSeconds' value is updated (either increased or
%% reduced),
%% it only applies to new messages sent via this channel after it's been
%% updated. Existing
%% messages are still expired as per the previous `MessageTtlSeconds'
%% value.
-spec update_signaling_channel(aws_client:aws_client(), update_signaling_channel_input()) ->
    {ok, update_signaling_channel_output(), tuple()} |
    {error, any()} |
    {error, update_signaling_channel_errors(), tuple()}.
update_signaling_channel(Client, Input) ->
    update_signaling_channel(Client, Input, []).

-spec update_signaling_channel(aws_client:aws_client(), update_signaling_channel_input(), proplists:proplist()) ->
    {ok, update_signaling_channel_output(), tuple()} |
    {error, any()} |
    {error, update_signaling_channel_errors(), tuple()}.
update_signaling_channel(Client, Input0, Options0) ->
    Method = post,
    Path = ["/updateSignalingChannel"],
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

%% @doc Updates stream metadata, such as the device name and media type.
%%
%% You must provide the stream name or the Amazon Resource Name (ARN) of the
%% stream.
%%
%% To make sure that you have the latest version of the stream before
%% updating it, you
%% can specify the stream version. Kinesis Video Streams assigns a version to
%% each stream.
%% When you update a stream, Kinesis Video Streams assigns a new version
%% number. To get the
%% latest stream version, use the `DescribeStream' API.
%%
%% `UpdateStream' is an asynchronous operation, and takes time to
%% complete.
-spec update_stream(aws_client:aws_client(), update_stream_input()) ->
    {ok, update_stream_output(), tuple()} |
    {error, any()} |
    {error, update_stream_errors(), tuple()}.
update_stream(Client, Input) ->
    update_stream(Client, Input, []).

-spec update_stream(aws_client:aws_client(), update_stream_input(), proplists:proplist()) ->
    {ok, update_stream_output(), tuple()} |
    {error, any()} |
    {error, update_stream_errors(), tuple()}.
update_stream(Client, Input0, Options0) ->
    Method = post,
    Path = ["/updateStream"],
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
    Client1 = Client#{service => <<"kinesisvideo">>},
    Host = build_host(<<"kinesisvideo">>, Client1),
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
