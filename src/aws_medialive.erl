%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc API for AWS Elemental MediaLive
-module(aws_medialive).

-export([accept_input_device_transfer/3,
         accept_input_device_transfer/4,
         batch_delete/2,
         batch_delete/3,
         batch_start/2,
         batch_start/3,
         batch_stop/2,
         batch_stop/3,
         batch_update_schedule/3,
         batch_update_schedule/4,
         cancel_input_device_transfer/3,
         cancel_input_device_transfer/4,
         claim_device/2,
         claim_device/3,
         create_channel/2,
         create_channel/3,
         create_channel_placement_group/3,
         create_channel_placement_group/4,
         create_cloud_watch_alarm_template/2,
         create_cloud_watch_alarm_template/3,
         create_cloud_watch_alarm_template_group/2,
         create_cloud_watch_alarm_template_group/3,
         create_cluster/2,
         create_cluster/3,
         create_event_bridge_rule_template/2,
         create_event_bridge_rule_template/3,
         create_event_bridge_rule_template_group/2,
         create_event_bridge_rule_template_group/3,
         create_input/2,
         create_input/3,
         create_input_security_group/2,
         create_input_security_group/3,
         create_multiplex/2,
         create_multiplex/3,
         create_multiplex_program/3,
         create_multiplex_program/4,
         create_network/2,
         create_network/3,
         create_node/3,
         create_node/4,
         create_node_registration_script/3,
         create_node_registration_script/4,
         create_partner_input/3,
         create_partner_input/4,
         create_signal_map/2,
         create_signal_map/3,
         create_tags/3,
         create_tags/4,
         delete_channel/3,
         delete_channel/4,
         delete_channel_placement_group/4,
         delete_channel_placement_group/5,
         delete_cloud_watch_alarm_template/3,
         delete_cloud_watch_alarm_template/4,
         delete_cloud_watch_alarm_template_group/3,
         delete_cloud_watch_alarm_template_group/4,
         delete_cluster/3,
         delete_cluster/4,
         delete_event_bridge_rule_template/3,
         delete_event_bridge_rule_template/4,
         delete_event_bridge_rule_template_group/3,
         delete_event_bridge_rule_template_group/4,
         delete_input/3,
         delete_input/4,
         delete_input_security_group/3,
         delete_input_security_group/4,
         delete_multiplex/3,
         delete_multiplex/4,
         delete_multiplex_program/4,
         delete_multiplex_program/5,
         delete_network/3,
         delete_network/4,
         delete_node/4,
         delete_node/5,
         delete_reservation/3,
         delete_reservation/4,
         delete_schedule/3,
         delete_schedule/4,
         delete_signal_map/3,
         delete_signal_map/4,
         delete_tags/3,
         delete_tags/4,
         describe_account_configuration/1,
         describe_account_configuration/3,
         describe_account_configuration/4,
         describe_channel/2,
         describe_channel/4,
         describe_channel/5,
         describe_channel_placement_group/3,
         describe_channel_placement_group/5,
         describe_channel_placement_group/6,
         describe_cluster/2,
         describe_cluster/4,
         describe_cluster/5,
         describe_input/2,
         describe_input/4,
         describe_input/5,
         describe_input_device/2,
         describe_input_device/4,
         describe_input_device/5,
         describe_input_device_thumbnail/3,
         describe_input_device_thumbnail/5,
         describe_input_device_thumbnail/6,
         describe_input_security_group/2,
         describe_input_security_group/4,
         describe_input_security_group/5,
         describe_multiplex/2,
         describe_multiplex/4,
         describe_multiplex/5,
         describe_multiplex_program/3,
         describe_multiplex_program/5,
         describe_multiplex_program/6,
         describe_network/2,
         describe_network/4,
         describe_network/5,
         describe_node/3,
         describe_node/5,
         describe_node/6,
         describe_offering/2,
         describe_offering/4,
         describe_offering/5,
         describe_reservation/2,
         describe_reservation/4,
         describe_reservation/5,
         describe_schedule/2,
         describe_schedule/4,
         describe_schedule/5,
         describe_thumbnails/4,
         describe_thumbnails/6,
         describe_thumbnails/7,
         get_cloud_watch_alarm_template/2,
         get_cloud_watch_alarm_template/4,
         get_cloud_watch_alarm_template/5,
         get_cloud_watch_alarm_template_group/2,
         get_cloud_watch_alarm_template_group/4,
         get_cloud_watch_alarm_template_group/5,
         get_event_bridge_rule_template/2,
         get_event_bridge_rule_template/4,
         get_event_bridge_rule_template/5,
         get_event_bridge_rule_template_group/2,
         get_event_bridge_rule_template_group/4,
         get_event_bridge_rule_template_group/5,
         get_signal_map/2,
         get_signal_map/4,
         get_signal_map/5,
         list_channel_placement_groups/2,
         list_channel_placement_groups/4,
         list_channel_placement_groups/5,
         list_channels/1,
         list_channels/3,
         list_channels/4,
         list_cloud_watch_alarm_template_groups/1,
         list_cloud_watch_alarm_template_groups/3,
         list_cloud_watch_alarm_template_groups/4,
         list_cloud_watch_alarm_templates/1,
         list_cloud_watch_alarm_templates/3,
         list_cloud_watch_alarm_templates/4,
         list_clusters/1,
         list_clusters/3,
         list_clusters/4,
         list_event_bridge_rule_template_groups/1,
         list_event_bridge_rule_template_groups/3,
         list_event_bridge_rule_template_groups/4,
         list_event_bridge_rule_templates/1,
         list_event_bridge_rule_templates/3,
         list_event_bridge_rule_templates/4,
         list_input_device_transfers/2,
         list_input_device_transfers/4,
         list_input_device_transfers/5,
         list_input_devices/1,
         list_input_devices/3,
         list_input_devices/4,
         list_input_security_groups/1,
         list_input_security_groups/3,
         list_input_security_groups/4,
         list_inputs/1,
         list_inputs/3,
         list_inputs/4,
         list_multiplex_programs/2,
         list_multiplex_programs/4,
         list_multiplex_programs/5,
         list_multiplexes/1,
         list_multiplexes/3,
         list_multiplexes/4,
         list_networks/1,
         list_networks/3,
         list_networks/4,
         list_nodes/2,
         list_nodes/4,
         list_nodes/5,
         list_offerings/1,
         list_offerings/3,
         list_offerings/4,
         list_reservations/1,
         list_reservations/3,
         list_reservations/4,
         list_signal_maps/1,
         list_signal_maps/3,
         list_signal_maps/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         list_versions/1,
         list_versions/3,
         list_versions/4,
         purchase_offering/3,
         purchase_offering/4,
         reboot_input_device/3,
         reboot_input_device/4,
         reject_input_device_transfer/3,
         reject_input_device_transfer/4,
         restart_channel_pipelines/3,
         restart_channel_pipelines/4,
         start_channel/3,
         start_channel/4,
         start_delete_monitor_deployment/3,
         start_delete_monitor_deployment/4,
         start_input_device/3,
         start_input_device/4,
         start_input_device_maintenance_window/3,
         start_input_device_maintenance_window/4,
         start_monitor_deployment/3,
         start_monitor_deployment/4,
         start_multiplex/3,
         start_multiplex/4,
         start_update_signal_map/3,
         start_update_signal_map/4,
         stop_channel/3,
         stop_channel/4,
         stop_input_device/3,
         stop_input_device/4,
         stop_multiplex/3,
         stop_multiplex/4,
         transfer_input_device/3,
         transfer_input_device/4,
         update_account_configuration/2,
         update_account_configuration/3,
         update_channel/3,
         update_channel/4,
         update_channel_class/3,
         update_channel_class/4,
         update_channel_placement_group/4,
         update_channel_placement_group/5,
         update_cloud_watch_alarm_template/3,
         update_cloud_watch_alarm_template/4,
         update_cloud_watch_alarm_template_group/3,
         update_cloud_watch_alarm_template_group/4,
         update_cluster/3,
         update_cluster/4,
         update_event_bridge_rule_template/3,
         update_event_bridge_rule_template/4,
         update_event_bridge_rule_template_group/3,
         update_event_bridge_rule_template_group/4,
         update_input/3,
         update_input/4,
         update_input_device/3,
         update_input_device/4,
         update_input_security_group/3,
         update_input_security_group/4,
         update_multiplex/3,
         update_multiplex/4,
         update_multiplex_program/4,
         update_multiplex_program/5,
         update_network/3,
         update_network/4,
         update_node/4,
         update_node/5,
         update_node_state/4,
         update_node_state/5,
         update_reservation/3,
         update_reservation/4]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% static_image_output_deactivate_schedule_action_settings() :: #{
%%   <<"FadeOut">> => integer(),
%%   <<"Layer">> => integer(),
%%   <<"OutputNames">> => list(string()())
%% }
-type static_image_output_deactivate_schedule_action_settings() :: #{binary() => any()}.

%% Example:
%% scte27_destination_settings() :: #{}
-type scte27_destination_settings() :: #{}.

%% Example:
%% delete_cloud_watch_alarm_template_group_request() :: #{}
-type delete_cloud_watch_alarm_template_group_request() :: #{}.


%% Example:
%% create_network_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"AssociatedClusterIds">> => list(string()()),
%%   <<"Id">> => string(),
%%   <<"IpPools">> => list(ip_pool()()),
%%   <<"Name">> => string(),
%%   <<"Routes">> => list(route()()),
%%   <<"State">> => list(any())
%% }
-type create_network_response() :: #{binary() => any()}.


%% Example:
%% archive_s3_settings() :: #{
%%   <<"CannedAcl">> => list(any())
%% }
-type archive_s3_settings() :: #{binary() => any()}.


%% Example:
%% caption_rectangle() :: #{
%%   <<"Height">> => float(),
%%   <<"LeftOffset">> => float(),
%%   <<"TopOffset">> => float(),
%%   <<"Width">> => float()
%% }
-type caption_rectangle() :: #{binary() => any()}.


%% Example:
%% scte35_time_signal_apos() :: #{
%%   <<"AdAvailOffset">> => integer(),
%%   <<"NoRegionalBlackoutFlag">> => list(any()),
%%   <<"WebDeliveryAllowedFlag">> => list(any())
%% }
-type scte35_time_signal_apos() :: #{binary() => any()}.


%% Example:
%% update_cloud_watch_alarm_template_group_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"Id">> => string(),
%%   <<"ModifiedAt">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"Tags">> => map()
%% }
-type update_cloud_watch_alarm_template_group_response() :: #{binary() => any()}.


%% Example:
%% srt_output_settings() :: #{
%%   <<"BufferMsec">> => integer(),
%%   <<"ContainerSettings">> => udp_container_settings(),
%%   <<"Destination">> => output_location_ref(),
%%   <<"EncryptionType">> => list(any()),
%%   <<"Latency">> => integer()
%% }
-type srt_output_settings() :: #{binary() => any()}.

%% Example:
%% describe_cluster_request() :: #{}
-type describe_cluster_request() :: #{}.


%% Example:
%% list_networks_response() :: #{
%%   <<"Networks">> => list(describe_network_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_networks_response() :: #{binary() => any()}.

%% Example:
%% delete_channel_request() :: #{}
-type delete_channel_request() :: #{}.


%% Example:
%% event_bridge_rule_template_summary() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"EventTargetCount">> => integer(),
%%   <<"EventType">> => list(any()),
%%   <<"GroupId">> => string(),
%%   <<"Id">> => string(),
%%   <<"ModifiedAt">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"Tags">> => map()
%% }
-type event_bridge_rule_template_summary() :: #{binary() => any()}.


%% Example:
%% frame_capture_group_settings() :: #{
%%   <<"Destination">> => output_location_ref(),
%%   <<"FrameCaptureCdnSettings">> => frame_capture_cdn_settings()
%% }
-type frame_capture_group_settings() :: #{binary() => any()}.


%% Example:
%% input_device_settings() :: #{
%%   <<"Id">> => string()
%% }
-type input_device_settings() :: #{binary() => any()}.


%% Example:
%% list_input_security_groups_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_input_security_groups_request() :: #{binary() => any()}.


%% Example:
%% list_event_bridge_rule_templates_request() :: #{
%%   <<"GroupIdentifier">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"SignalMapIdentifier">> => string()
%% }
-type list_event_bridge_rule_templates_request() :: #{binary() => any()}.


%% Example:
%% stop_timecode() :: #{
%%   <<"LastFrameClippingBehavior">> => list(any()),
%%   <<"Timecode">> => string()
%% }
-type stop_timecode() :: #{binary() => any()}.


%% Example:
%% describe_channel_placement_group_summary() :: #{
%%   <<"Arn">> => string(),
%%   <<"Channels">> => list(string()()),
%%   <<"ClusterId">> => string(),
%%   <<"Id">> => string(),
%%   <<"Name">> => string(),
%%   <<"Nodes">> => list(string()()),
%%   <<"State">> => list(any())
%% }
-type describe_channel_placement_group_summary() :: #{binary() => any()}.


%% Example:
%% input_destination() :: #{
%%   <<"Ip">> => string(),
%%   <<"Network">> => string(),
%%   <<"NetworkRoutes">> => list(input_destination_route()()),
%%   <<"Port">> => string(),
%%   <<"Url">> => string(),
%%   <<"Vpc">> => input_destination_vpc()
%% }
-type input_destination() :: #{binary() => any()}.


%% Example:
%% describe_input_device_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"AvailabilityZone">> => string(),
%%   <<"ConnectionState">> => list(any()),
%%   <<"DeviceSettingsSyncState">> => list(any()),
%%   <<"DeviceUpdateStatus">> => list(any()),
%%   <<"HdDeviceSettings">> => input_device_hd_settings(),
%%   <<"Id">> => string(),
%%   <<"MacAddress">> => string(),
%%   <<"MedialiveInputArns">> => list(string()()),
%%   <<"Name">> => string(),
%%   <<"NetworkSettings">> => input_device_network_settings(),
%%   <<"OutputType">> => list(any()),
%%   <<"SerialNumber">> => string(),
%%   <<"Tags">> => map(),
%%   <<"Type">> => list(any()),
%%   <<"UhdDeviceSettings">> => input_device_uhd_settings()
%% }
-type describe_input_device_response() :: #{binary() => any()}.


%% Example:
%% batch_start_response() :: #{
%%   <<"Failed">> => list(batch_failed_result_model()()),
%%   <<"Successful">> => list(batch_successful_result_model()())
%% }
-type batch_start_response() :: #{binary() => any()}.


%% Example:
%% scte20_source_settings() :: #{
%%   <<"Convert608To708">> => list(any()),
%%   <<"Source608ChannelNumber">> => integer()
%% }
-type scte20_source_settings() :: #{binary() => any()}.

%% Example:
%% delete_cloud_watch_alarm_template_request() :: #{}
-type delete_cloud_watch_alarm_template_request() :: #{}.


%% Example:
%% list_signal_maps_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"SignalMaps">> => list(signal_map_summary()())
%% }
-type list_signal_maps_response() :: #{binary() => any()}.

%% Example:
%% delete_multiplex_program_request() :: #{}
-type delete_multiplex_program_request() :: #{}.


%% Example:
%% input_clipping_settings() :: #{
%%   <<"InputTimecodeSource">> => list(any()),
%%   <<"StartTimecode">> => start_timecode(),
%%   <<"StopTimecode">> => stop_timecode()
%% }
-type input_clipping_settings() :: #{binary() => any()}.


%% Example:
%% input_source() :: #{
%%   <<"PasswordParam">> => string(),
%%   <<"Url">> => string(),
%%   <<"Username">> => string()
%% }
-type input_source() :: #{binary() => any()}.

%% Example:
%% cancel_input_device_transfer_response() :: #{}
-type cancel_input_device_transfer_response() :: #{}.


%% Example:
%% output_destination() :: #{
%%   <<"Id">> => string(),
%%   <<"MediaPackageSettings">> => list(media_package_output_destination_settings()()),
%%   <<"MultiplexSettings">> => multiplex_program_channel_destination_settings(),
%%   <<"Settings">> => list(output_destination_settings()()),
%%   <<"SrtSettings">> => list(srt_output_destination_settings()())
%% }
-type output_destination() :: #{binary() => any()}.


%% Example:
%% video_selector_settings() :: #{
%%   <<"VideoSelectorPid">> => video_selector_pid(),
%%   <<"VideoSelectorProgramId">> => video_selector_program_id()
%% }
-type video_selector_settings() :: #{binary() => any()}.


%% Example:
%% srt_group_settings() :: #{
%%   <<"InputLossAction">> => list(any())
%% }
-type srt_group_settings() :: #{binary() => any()}.


%% Example:
%% batch_update_schedule_request() :: #{
%%   <<"Creates">> => batch_schedule_action_create_request(),
%%   <<"Deletes">> => batch_schedule_action_delete_request()
%% }
-type batch_update_schedule_request() :: #{binary() => any()}.


%% Example:
%% multiplex_summary() :: #{
%%   <<"Arn">> => string(),
%%   <<"AvailabilityZones">> => list(string()()),
%%   <<"Id">> => string(),
%%   <<"MultiplexSettings">> => multiplex_settings_summary(),
%%   <<"Name">> => string(),
%%   <<"PipelinesRunningCount">> => integer(),
%%   <<"ProgramCount">> => integer(),
%%   <<"State">> => list(any()),
%%   <<"Tags">> => map()
%% }
-type multiplex_summary() :: #{binary() => any()}.

%% Example:
%% stop_multiplex_request() :: #{}
-type stop_multiplex_request() :: #{}.


%% Example:
%% delete_tags_request() :: #{
%%   <<"TagKeys">> := list(string()())
%% }
-type delete_tags_request() :: #{binary() => any()}.


%% Example:
%% update_input_device_request() :: #{
%%   <<"AvailabilityZone">> => string(),
%%   <<"HdDeviceSettings">> => input_device_configurable_settings(),
%%   <<"Name">> => string(),
%%   <<"UhdDeviceSettings">> => input_device_configurable_settings()
%% }
-type update_input_device_request() :: #{binary() => any()}.


%% Example:
%% list_multiplex_programs_response() :: #{
%%   <<"MultiplexPrograms">> => list(multiplex_program_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_multiplex_programs_response() :: #{binary() => any()}.

%% Example:
%% describe_input_request() :: #{}
-type describe_input_request() :: #{}.


%% Example:
%% scte27_source_settings() :: #{
%%   <<"OcrLanguage">> => list(any()),
%%   <<"Pid">> => integer()
%% }
-type scte27_source_settings() :: #{binary() => any()}.


%% Example:
%% channel_engine_version_response() :: #{
%%   <<"ExpirationDate">> => non_neg_integer(),
%%   <<"Version">> => string()
%% }
-type channel_engine_version_response() :: #{binary() => any()}.


%% Example:
%% restart_channel_pipelines_response() :: #{
%%   <<"AnywhereSettings">> => describe_anywhere_settings(),
%%   <<"Arn">> => string(),
%%   <<"CdiInputSpecification">> => cdi_input_specification(),
%%   <<"ChannelClass">> => list(any()),
%%   <<"ChannelEngineVersion">> => channel_engine_version_response(),
%%   <<"Destinations">> => list(output_destination()()),
%%   <<"EgressEndpoints">> => list(channel_egress_endpoint()()),
%%   <<"EncoderSettings">> => encoder_settings(),
%%   <<"Id">> => string(),
%%   <<"InputAttachments">> => list(input_attachment()()),
%%   <<"InputSpecification">> => input_specification(),
%%   <<"LogLevel">> => list(any()),
%%   <<"Maintenance">> => maintenance_status(),
%%   <<"MaintenanceStatus">> => string(),
%%   <<"Name">> => string(),
%%   <<"PipelineDetails">> => list(pipeline_detail()()),
%%   <<"PipelinesRunningCount">> => integer(),
%%   <<"RoleArn">> => string(),
%%   <<"State">> => list(any()),
%%   <<"Tags">> => map(),
%%   <<"Vpc">> => vpc_output_settings_description()
%% }
-type restart_channel_pipelines_response() :: #{binary() => any()}.


%% Example:
%% update_channel_class_response() :: #{
%%   <<"Channel">> => channel()
%% }
-type update_channel_class_response() :: #{binary() => any()}.


%% Example:
%% archive_group_settings() :: #{
%%   <<"ArchiveCdnSettings">> => archive_cdn_settings(),
%%   <<"Destination">> => output_location_ref(),
%%   <<"RolloverInterval">> => integer()
%% }
-type archive_group_settings() :: #{binary() => any()}.


%% Example:
%% hls_akamai_settings() :: #{
%%   <<"ConnectionRetryInterval">> => integer(),
%%   <<"FilecacheDuration">> => integer(),
%%   <<"HttpTransferMode">> => list(any()),
%%   <<"NumRetries">> => integer(),
%%   <<"RestartDelay">> => integer(),
%%   <<"Salt">> => string(),
%%   <<"Token">> => string()
%% }
-type hls_akamai_settings() :: #{binary() => any()}.

%% Example:
%% get_signal_map_request() :: #{}
-type get_signal_map_request() :: #{}.


%% Example:
%% audio_only_hls_settings() :: #{
%%   <<"AudioGroupId">> => string(),
%%   <<"AudioOnlyImage">> => input_location(),
%%   <<"AudioTrackType">> => list(any()),
%%   <<"SegmentType">> => list(any())
%% }
-type audio_only_hls_settings() :: #{binary() => any()}.


%% Example:
%% scte35_delivery_restrictions() :: #{
%%   <<"ArchiveAllowedFlag">> => list(any()),
%%   <<"DeviceRestrictions">> => list(any()),
%%   <<"NoRegionalBlackoutFlag">> => list(any()),
%%   <<"WebDeliveryAllowedFlag">> => list(any())
%% }
-type scte35_delivery_restrictions() :: #{binary() => any()}.


%% Example:
%% multiplex_program_summary() :: #{
%%   <<"ChannelId">> => string(),
%%   <<"ProgramName">> => string()
%% }
-type multiplex_program_summary() :: #{binary() => any()}.


%% Example:
%% update_cloud_watch_alarm_template_request() :: #{
%%   <<"ComparisonOperator">> => list(any()),
%%   <<"DatapointsToAlarm">> => integer(),
%%   <<"Description">> => string(),
%%   <<"EvaluationPeriods">> => integer(),
%%   <<"GroupIdentifier">> => string(),
%%   <<"MetricName">> => string(),
%%   <<"Name">> => string(),
%%   <<"Period">> => integer(),
%%   <<"Statistic">> => list(any()),
%%   <<"TargetResourceType">> => list(any()),
%%   <<"Threshold">> => float(),
%%   <<"TreatMissingData">> => list(any())
%% }
-type update_cloud_watch_alarm_template_request() :: #{binary() => any()}.


%% Example:
%% srt_caller_decryption_request() :: #{
%%   <<"Algorithm">> => list(any()),
%%   <<"PassphraseSecretArn">> => string()
%% }
-type srt_caller_decryption_request() :: #{binary() => any()}.


%% Example:
%% create_channel_response() :: #{
%%   <<"Channel">> => channel()
%% }
-type create_channel_response() :: #{binary() => any()}.


%% Example:
%% describe_channel_placement_group_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"Channels">> => list(string()()),
%%   <<"ClusterId">> => string(),
%%   <<"Id">> => string(),
%%   <<"Name">> => string(),
%%   <<"Nodes">> => list(string()()),
%%   <<"State">> => list(any())
%% }
-type describe_channel_placement_group_response() :: #{binary() => any()}.


%% Example:
%% scte35_return_to_network_schedule_action_settings() :: #{
%%   <<"SpliceEventId">> => float()
%% }
-type scte35_return_to_network_schedule_action_settings() :: #{binary() => any()}.


%% Example:
%% ip_pool_update_request() :: #{
%%   <<"Cidr">> => string()
%% }
-type ip_pool_update_request() :: #{binary() => any()}.


%% Example:
%% channel_engine_version_request() :: #{
%%   <<"Version">> => string()
%% }
-type channel_engine_version_request() :: #{binary() => any()}.

%% Example:
%% start_input_device_request() :: #{}
-type start_input_device_request() :: #{}.


%% Example:
%% pause_state_schedule_action_settings() :: #{
%%   <<"Pipelines">> => list(pipeline_pause_state_settings()())
%% }
-type pause_state_schedule_action_settings() :: #{binary() => any()}.


%% Example:
%% describe_cluster_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"ChannelIds">> => list(string()()),
%%   <<"ClusterType">> => list(any()),
%%   <<"Id">> => string(),
%%   <<"InstanceRoleArn">> => string(),
%%   <<"Name">> => string(),
%%   <<"NetworkSettings">> => cluster_network_settings(),
%%   <<"State">> => list(any())
%% }
-type describe_cluster_response() :: #{binary() => any()}.


%% Example:
%% update_channel_placement_group_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"Channels">> => list(string()()),
%%   <<"ClusterId">> => string(),
%%   <<"Id">> => string(),
%%   <<"Name">> => string(),
%%   <<"Nodes">> => list(string()()),
%%   <<"State">> => list(any())
%% }
-type update_channel_placement_group_response() :: #{binary() => any()}.


%% Example:
%% srt_caller_decryption() :: #{
%%   <<"Algorithm">> => list(any()),
%%   <<"PassphraseSecretArn">> => string()
%% }
-type srt_caller_decryption() :: #{binary() => any()}.


%% Example:
%% describe_network_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"AssociatedClusterIds">> => list(string()()),
%%   <<"Id">> => string(),
%%   <<"IpPools">> => list(ip_pool()()),
%%   <<"Name">> => string(),
%%   <<"Routes">> => list(route()()),
%%   <<"State">> => list(any())
%% }
-type describe_network_response() :: #{binary() => any()}.


%% Example:
%% network_input_settings() :: #{
%%   <<"HlsInputSettings">> => hls_input_settings(),
%%   <<"MulticastInputSettings">> => multicast_input_settings(),
%%   <<"ServerValidation">> => list(any())
%% }
-type network_input_settings() :: #{binary() => any()}.


%% Example:
%% mp2_settings() :: #{
%%   <<"Bitrate">> => float(),
%%   <<"CodingMode">> => list(any()),
%%   <<"SampleRate">> => float()
%% }
-type mp2_settings() :: #{binary() => any()}.

%% Example:
%% delete_reservation_request() :: #{}
-type delete_reservation_request() :: #{}.


%% Example:
%% multiplex_output_destination() :: #{
%%   <<"MediaConnectSettings">> => multiplex_media_connect_output_destination_settings()
%% }
-type multiplex_output_destination() :: #{binary() => any()}.


%% Example:
%% monitor_deployment() :: #{
%%   <<"DetailsUri">> => string(),
%%   <<"ErrorMessage">> => string(),
%%   <<"Status">> => list(any())
%% }
-type monitor_deployment() :: #{binary() => any()}.


%% Example:
%% batch_failed_result_model() :: #{
%%   <<"Arn">> => string(),
%%   <<"Code">> => string(),
%%   <<"Id">> => string(),
%%   <<"Message">> => string()
%% }
-type batch_failed_result_model() :: #{binary() => any()}.


%% Example:
%% multicast_settings() :: #{
%%   <<"Sources">> => list(multicast_source()())
%% }
-type multicast_settings() :: #{binary() => any()}.


%% Example:
%% delete_channel_response() :: #{
%%   <<"AnywhereSettings">> => describe_anywhere_settings(),
%%   <<"Arn">> => string(),
%%   <<"CdiInputSpecification">> => cdi_input_specification(),
%%   <<"ChannelClass">> => list(any()),
%%   <<"ChannelEngineVersion">> => channel_engine_version_response(),
%%   <<"Destinations">> => list(output_destination()()),
%%   <<"EgressEndpoints">> => list(channel_egress_endpoint()()),
%%   <<"EncoderSettings">> => encoder_settings(),
%%   <<"Id">> => string(),
%%   <<"InputAttachments">> => list(input_attachment()()),
%%   <<"InputSpecification">> => input_specification(),
%%   <<"LogLevel">> => list(any()),
%%   <<"Maintenance">> => maintenance_status(),
%%   <<"Name">> => string(),
%%   <<"PipelineDetails">> => list(pipeline_detail()()),
%%   <<"PipelinesRunningCount">> => integer(),
%%   <<"RoleArn">> => string(),
%%   <<"State">> => list(any()),
%%   <<"Tags">> => map(),
%%   <<"Vpc">> => vpc_output_settings_description()
%% }
-type delete_channel_response() :: #{binary() => any()}.


%% Example:
%% account_configuration() :: #{
%%   <<"KmsKeyId">> => string()
%% }
-type account_configuration() :: #{binary() => any()}.


%% Example:
%% update_channel_placement_group_request() :: #{
%%   <<"Name">> => string(),
%%   <<"Nodes">> => list(string()())
%% }
-type update_channel_placement_group_request() :: #{binary() => any()}.


%% Example:
%% update_input_security_group_request() :: #{
%%   <<"Tags">> => map(),
%%   <<"WhitelistRules">> => list(input_whitelist_rule_cidr()())
%% }
-type update_input_security_group_request() :: #{binary() => any()}.


%% Example:
%% thumbnail() :: #{
%%   <<"Body">> => string(),
%%   <<"ContentType">> => string(),
%%   <<"ThumbnailType">> => list(any()),
%%   <<"TimeStamp">> => non_neg_integer()
%% }
-type thumbnail() :: #{binary() => any()}.


%% Example:
%% udp_output_settings() :: #{
%%   <<"BufferMsec">> => integer(),
%%   <<"ContainerSettings">> => udp_container_settings(),
%%   <<"Destination">> => output_location_ref(),
%%   <<"FecOutputSettings">> => fec_output_settings()
%% }
-type udp_output_settings() :: #{binary() => any()}.


%% Example:
%% input_location() :: #{
%%   <<"PasswordParam">> => string(),
%%   <<"Uri">> => string(),
%%   <<"Username">> => string()
%% }
-type input_location() :: #{binary() => any()}.

%% Example:
%% describe_account_configuration_request() :: #{}
-type describe_account_configuration_request() :: #{}.


%% Example:
%% nielsen_configuration() :: #{
%%   <<"DistributorId">> => string(),
%%   <<"NielsenPcmToId3Tagging">> => list(any())
%% }
-type nielsen_configuration() :: #{binary() => any()}.


%% Example:
%% caption_selector() :: #{
%%   <<"LanguageCode">> => string(),
%%   <<"Name">> => string(),
%%   <<"SelectorSettings">> => caption_selector_settings()
%% }
-type caption_selector() :: #{binary() => any()}.


%% Example:
%% create_node_request() :: #{
%%   <<"Name">> => string(),
%%   <<"NodeInterfaceMappings">> => list(node_interface_mapping_create_request()()),
%%   <<"RequestId">> => string(),
%%   <<"Role">> => list(any()),
%%   <<"Tags">> => map()
%% }
-type create_node_request() :: #{binary() => any()}.


%% Example:
%% create_cluster_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"ChannelIds">> => list(string()()),
%%   <<"ClusterType">> => list(any()),
%%   <<"Id">> => string(),
%%   <<"InstanceRoleArn">> => string(),
%%   <<"Name">> => string(),
%%   <<"NetworkSettings">> => cluster_network_settings(),
%%   <<"State">> => list(any())
%% }
-type create_cluster_response() :: #{binary() => any()}.


%% Example:
%% update_input_device_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"AvailabilityZone">> => string(),
%%   <<"ConnectionState">> => list(any()),
%%   <<"DeviceSettingsSyncState">> => list(any()),
%%   <<"DeviceUpdateStatus">> => list(any()),
%%   <<"HdDeviceSettings">> => input_device_hd_settings(),
%%   <<"Id">> => string(),
%%   <<"MacAddress">> => string(),
%%   <<"MedialiveInputArns">> => list(string()()),
%%   <<"Name">> => string(),
%%   <<"NetworkSettings">> => input_device_network_settings(),
%%   <<"OutputType">> => list(any()),
%%   <<"SerialNumber">> => string(),
%%   <<"Tags">> => map(),
%%   <<"Type">> => list(any()),
%%   <<"UhdDeviceSettings">> => input_device_uhd_settings()
%% }
-type update_input_device_response() :: #{binary() => any()}.


%% Example:
%% bad_gateway_exception() :: #{
%%   <<"Message">> => string()
%% }
-type bad_gateway_exception() :: #{binary() => any()}.


%% Example:
%% input_device_request() :: #{
%%   <<"Id">> => string()
%% }
-type input_device_request() :: #{binary() => any()}.


%% Example:
%% input_device_network_settings() :: #{
%%   <<"DnsAddresses">> => list(string()()),
%%   <<"Gateway">> => string(),
%%   <<"IpAddress">> => string(),
%%   <<"IpScheme">> => list(any()),
%%   <<"SubnetMask">> => string()
%% }
-type input_device_network_settings() :: #{binary() => any()}.


%% Example:
%% get_event_bridge_rule_template_group_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"Id">> => string(),
%%   <<"ModifiedAt">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"Tags">> => map()
%% }
-type get_event_bridge_rule_template_group_response() :: #{binary() => any()}.


%% Example:
%% multiplex_program() :: #{
%%   <<"ChannelId">> => string(),
%%   <<"MultiplexProgramSettings">> => multiplex_program_settings(),
%%   <<"PacketIdentifiersMap">> => multiplex_program_packet_identifiers_map(),
%%   <<"PipelineDetails">> => list(multiplex_program_pipeline_detail()()),
%%   <<"ProgramName">> => string()
%% }
-type multiplex_program() :: #{binary() => any()}.


%% Example:
%% caption_selector_settings() :: #{
%%   <<"AncillarySourceSettings">> => ancillary_source_settings(),
%%   <<"AribSourceSettings">> => arib_source_settings(),
%%   <<"DvbSubSourceSettings">> => dvb_sub_source_settings(),
%%   <<"EmbeddedSourceSettings">> => embedded_source_settings(),
%%   <<"Scte20SourceSettings">> => scte20_source_settings(),
%%   <<"Scte27SourceSettings">> => scte27_source_settings(),
%%   <<"TeletextSourceSettings">> => teletext_source_settings()
%% }
-type caption_selector_settings() :: #{binary() => any()}.


%% Example:
%% input_loss_failover_settings() :: #{
%%   <<"InputLossThresholdMsec">> => integer()
%% }
-type input_loss_failover_settings() :: #{binary() => any()}.


%% Example:
%% create_multiplex_program_request() :: #{
%%   <<"MultiplexProgramSettings">> := multiplex_program_settings(),
%%   <<"ProgramName">> := string(),
%%   <<"RequestId">> := string()
%% }
-type create_multiplex_program_request() :: #{binary() => any()}.

%% Example:
%% transfer_input_device_response() :: #{}
-type transfer_input_device_response() :: #{}.


%% Example:
%% forbidden_exception() :: #{
%%   <<"Message">> => string()
%% }
-type forbidden_exception() :: #{binary() => any()}.


%% Example:
%% list_reservations_request() :: #{
%%   <<"ChannelClass">> => string(),
%%   <<"Codec">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"MaximumBitrate">> => string(),
%%   <<"MaximumFramerate">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"Resolution">> => string(),
%%   <<"ResourceType">> => string(),
%%   <<"SpecialFeature">> => string(),
%%   <<"VideoQuality">> => string()
%% }
-type list_reservations_request() :: #{binary() => any()}.


%% Example:
%% hls_cdn_settings() :: #{
%%   <<"HlsAkamaiSettings">> => hls_akamai_settings(),
%%   <<"HlsBasicPutSettings">> => hls_basic_put_settings(),
%%   <<"HlsMediaStoreSettings">> => hls_media_store_settings(),
%%   <<"HlsS3Settings">> => hls_s3_settings(),
%%   <<"HlsWebdavSettings">> => hls_webdav_settings()
%% }
-type hls_cdn_settings() :: #{binary() => any()}.


%% Example:
%% event_bridge_rule_template_group_summary() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"Id">> => string(),
%%   <<"ModifiedAt">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"Tags">> => map(),
%%   <<"TemplateCount">> => integer()
%% }
-type event_bridge_rule_template_group_summary() :: #{binary() => any()}.


%% Example:
%% audio_codec_settings() :: #{
%%   <<"AacSettings">> => aac_settings(),
%%   <<"Ac3Settings">> => ac3_settings(),
%%   <<"Eac3AtmosSettings">> => eac3_atmos_settings(),
%%   <<"Eac3Settings">> => eac3_settings(),
%%   <<"Mp2Settings">> => mp2_settings(),
%%   <<"PassThroughSettings">> => pass_through_settings(),
%%   <<"WavSettings">> => wav_settings()
%% }
-type audio_codec_settings() :: #{binary() => any()}.


%% Example:
%% update_cloud_watch_alarm_template_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"ComparisonOperator">> => list(any()),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"DatapointsToAlarm">> => integer(),
%%   <<"Description">> => string(),
%%   <<"EvaluationPeriods">> => integer(),
%%   <<"GroupId">> => string(),
%%   <<"Id">> => string(),
%%   <<"MetricName">> => string(),
%%   <<"ModifiedAt">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"Period">> => integer(),
%%   <<"Statistic">> => list(any()),
%%   <<"Tags">> => map(),
%%   <<"TargetResourceType">> => list(any()),
%%   <<"Threshold">> => float(),
%%   <<"TreatMissingData">> => list(any())
%% }
-type update_cloud_watch_alarm_template_response() :: #{binary() => any()}.


%% Example:
%% list_offerings_request() :: #{
%%   <<"ChannelClass">> => string(),
%%   <<"ChannelConfiguration">> => string(),
%%   <<"Codec">> => string(),
%%   <<"Duration">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"MaximumBitrate">> => string(),
%%   <<"MaximumFramerate">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"Resolution">> => string(),
%%   <<"ResourceType">> => string(),
%%   <<"SpecialFeature">> => string(),
%%   <<"VideoQuality">> => string()
%% }
-type list_offerings_request() :: #{binary() => any()}.


%% Example:
%% create_channel_placement_group_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"Channels">> => list(string()()),
%%   <<"ClusterId">> => string(),
%%   <<"Id">> => string(),
%%   <<"Name">> => string(),
%%   <<"Nodes">> => list(string()()),
%%   <<"State">> => list(any())
%% }
-type create_channel_placement_group_response() :: #{binary() => any()}.


%% Example:
%% describe_account_configuration_response() :: #{
%%   <<"AccountConfiguration">> => account_configuration()
%% }
-type describe_account_configuration_response() :: #{binary() => any()}.

%% Example:
%% delete_input_security_group_response() :: #{}
-type delete_input_security_group_response() :: #{}.


%% Example:
%% list_offerings_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Offerings">> => list(offering()())
%% }
-type list_offerings_response() :: #{binary() => any()}.

%% Example:
%% delete_signal_map_request() :: #{}
-type delete_signal_map_request() :: #{}.


%% Example:
%% update_input_security_group_response() :: #{
%%   <<"SecurityGroup">> => input_security_group()
%% }
-type update_input_security_group_response() :: #{binary() => any()}.


%% Example:
%% create_event_bridge_rule_template_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"EventTargets">> => list(event_bridge_rule_template_target()()),
%%   <<"EventType">> => list(any()),
%%   <<"GroupId">> => string(),
%%   <<"Id">> => string(),
%%   <<"ModifiedAt">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"Tags">> => map()
%% }
-type create_event_bridge_rule_template_response() :: #{binary() => any()}.


%% Example:
%% transferring_input_device_summary() :: #{
%%   <<"Id">> => string(),
%%   <<"Message">> => string(),
%%   <<"TargetCustomerId">> => string(),
%%   <<"TransferType">> => list(any())
%% }
-type transferring_input_device_summary() :: #{binary() => any()}.


%% Example:
%% aac_settings() :: #{
%%   <<"Bitrate">> => float(),
%%   <<"CodingMode">> => list(any()),
%%   <<"InputType">> => list(any()),
%%   <<"Profile">> => list(any()),
%%   <<"RateControlMode">> => list(any()),
%%   <<"RawFormat">> => list(any()),
%%   <<"SampleRate">> => float(),
%%   <<"Spec">> => list(any()),
%%   <<"VbrQuality">> => list(any())
%% }
-type aac_settings() :: #{binary() => any()}.


%% Example:
%% input_settings() :: #{
%%   <<"AudioSelectors">> => list(audio_selector()()),
%%   <<"CaptionSelectors">> => list(caption_selector()()),
%%   <<"DeblockFilter">> => list(any()),
%%   <<"DenoiseFilter">> => list(any()),
%%   <<"FilterStrength">> => integer(),
%%   <<"InputFilter">> => list(any()),
%%   <<"NetworkInputSettings">> => network_input_settings(),
%%   <<"Scte35Pid">> => integer(),
%%   <<"Smpte2038DataPreference">> => list(any()),
%%   <<"SourceEndBehavior">> => list(any()),
%%   <<"VideoSelector">> => video_selector()
%% }
-type input_settings() :: #{binary() => any()}.


%% Example:
%% create_multiplex_request() :: #{
%%   <<"AvailabilityZones">> := list(string()()),
%%   <<"MultiplexSettings">> := multiplex_settings(),
%%   <<"Name">> := string(),
%%   <<"RequestId">> := string(),
%%   <<"Tags">> => map()
%% }
-type create_multiplex_request() :: #{binary() => any()}.


%% Example:
%% h265_color_space_settings() :: #{
%%   <<"ColorSpacePassthroughSettings">> => color_space_passthrough_settings(),
%%   <<"DolbyVision81Settings">> => dolby_vision81_settings(),
%%   <<"Hdr10Settings">> => hdr10_settings(),
%%   <<"Rec601Settings">> => rec601_settings(),
%%   <<"Rec709Settings">> => rec709_settings()
%% }
-type h265_color_space_settings() :: #{binary() => any()}.


%% Example:
%% describe_node_summary() :: #{
%%   <<"Arn">> => string(),
%%   <<"ChannelPlacementGroups">> => list(string()()),
%%   <<"ClusterId">> => string(),
%%   <<"ConnectionState">> => list(any()),
%%   <<"Id">> => string(),
%%   <<"InstanceArn">> => string(),
%%   <<"ManagedInstanceId">> => string(),
%%   <<"Name">> => string(),
%%   <<"NodeInterfaceMappings">> => list(node_interface_mapping()()),
%%   <<"Role">> => list(any()),
%%   <<"State">> => list(any())
%% }
-type describe_node_summary() :: #{binary() => any()}.


%% Example:
%% update_node_state_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"ChannelPlacementGroups">> => list(string()()),
%%   <<"ClusterId">> => string(),
%%   <<"ConnectionState">> => list(any()),
%%   <<"Id">> => string(),
%%   <<"InstanceArn">> => string(),
%%   <<"Name">> => string(),
%%   <<"NodeInterfaceMappings">> => list(node_interface_mapping()()),
%%   <<"Role">> => list(any()),
%%   <<"State">> => list(any())
%% }
-type update_node_state_response() :: #{binary() => any()}.


%% Example:
%% multiplex_program_channel_destination_settings() :: #{
%%   <<"MultiplexId">> => string(),
%%   <<"ProgramName">> => string()
%% }
-type multiplex_program_channel_destination_settings() :: #{binary() => any()}.


%% Example:
%% node_interface_mapping_create_request() :: #{
%%   <<"LogicalInterfaceName">> => string(),
%%   <<"NetworkInterfaceMode">> => list(any()),
%%   <<"PhysicalInterfaceName">> => string()
%% }
-type node_interface_mapping_create_request() :: #{binary() => any()}.


%% Example:
%% frame_capture_output_settings() :: #{
%%   <<"NameModifier">> => string()
%% }
-type frame_capture_output_settings() :: #{binary() => any()}.


%% Example:
%% batch_delete_response() :: #{
%%   <<"Failed">> => list(batch_failed_result_model()()),
%%   <<"Successful">> => list(batch_successful_result_model()())
%% }
-type batch_delete_response() :: #{binary() => any()}.


%% Example:
%% route_update_request() :: #{
%%   <<"Cidr">> => string(),
%%   <<"Gateway">> => string()
%% }
-type route_update_request() :: #{binary() => any()}.

%% Example:
%% rec709_settings() :: #{}
-type rec709_settings() :: #{}.


%% Example:
%% id3_segment_tagging_schedule_action_settings() :: #{
%%   <<"Id3">> => string(),
%%   <<"Tag">> => string()
%% }
-type id3_segment_tagging_schedule_action_settings() :: #{binary() => any()}.


%% Example:
%% video_selector_pid() :: #{
%%   <<"Pid">> => integer()
%% }
-type video_selector_pid() :: #{binary() => any()}.


%% Example:
%% multicast_settings_update_request() :: #{
%%   <<"Sources">> => list(multicast_source_update_request()())
%% }
-type multicast_settings_update_request() :: #{binary() => any()}.


%% Example:
%% av1_color_space_settings() :: #{
%%   <<"ColorSpacePassthroughSettings">> => color_space_passthrough_settings(),
%%   <<"Hdr10Settings">> => hdr10_settings(),
%%   <<"Rec601Settings">> => rec601_settings(),
%%   <<"Rec709Settings">> => rec709_settings()
%% }
-type av1_color_space_settings() :: #{binary() => any()}.


%% Example:
%% m3u8_settings() :: #{
%%   <<"AudioFramesPerPes">> => integer(),
%%   <<"AudioPids">> => string(),
%%   <<"EcmPid">> => string(),
%%   <<"KlvBehavior">> => list(any()),
%%   <<"KlvDataPids">> => string(),
%%   <<"NielsenId3Behavior">> => list(any()),
%%   <<"PatInterval">> => integer(),
%%   <<"PcrControl">> => list(any()),
%%   <<"PcrPeriod">> => integer(),
%%   <<"PcrPid">> => string(),
%%   <<"PmtInterval">> => integer(),
%%   <<"PmtPid">> => string(),
%%   <<"ProgramNum">> => integer(),
%%   <<"Scte35Behavior">> => list(any()),
%%   <<"Scte35Pid">> => string(),
%%   <<"TimedMetadataBehavior">> => list(any()),
%%   <<"TimedMetadataPid">> => string(),
%%   <<"TransportStreamId">> => integer(),
%%   <<"VideoPid">> => string()
%% }
-type m3u8_settings() :: #{binary() => any()}.


%% Example:
%% dvb_sub_source_settings() :: #{
%%   <<"OcrLanguage">> => list(any()),
%%   <<"Pid">> => integer()
%% }
-type dvb_sub_source_settings() :: #{binary() => any()}.


%% Example:
%% media_connect_flow() :: #{
%%   <<"FlowArn">> => string()
%% }
-type media_connect_flow() :: #{binary() => any()}.

%% Example:
%% describe_network_request() :: #{}
-type describe_network_request() :: #{}.


%% Example:
%% scte35_splice_insert_schedule_action_settings() :: #{
%%   <<"Duration">> => float(),
%%   <<"SpliceEventId">> => float()
%% }
-type scte35_splice_insert_schedule_action_settings() :: #{binary() => any()}.


%% Example:
%% motion_graphics_configuration() :: #{
%%   <<"MotionGraphicsInsertion">> => list(any()),
%%   <<"MotionGraphicsSettings">> => motion_graphics_settings()
%% }
-type motion_graphics_configuration() :: #{binary() => any()}.


%% Example:
%% update_event_bridge_rule_template_group_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"Id">> => string(),
%%   <<"ModifiedAt">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"Tags">> => map()
%% }
-type update_event_bridge_rule_template_group_response() :: #{binary() => any()}.


%% Example:
%% create_event_bridge_rule_template_group_request() :: #{
%%   <<"Description">> => string(),
%%   <<"Name">> := string(),
%%   <<"RequestId">> => string(),
%%   <<"Tags">> => map()
%% }
-type create_event_bridge_rule_template_group_request() :: #{binary() => any()}.


%% Example:
%% udp_container_settings() :: #{
%%   <<"M2tsSettings">> => m2ts_settings()
%% }
-type udp_container_settings() :: #{binary() => any()}.

%% Example:
%% delete_schedule_response() :: #{}
-type delete_schedule_response() :: #{}.


%% Example:
%% maintenance_update_settings() :: #{
%%   <<"MaintenanceDay">> => list(any()),
%%   <<"MaintenanceScheduledDate">> => string(),
%%   <<"MaintenanceStartTime">> => string()
%% }
-type maintenance_update_settings() :: #{binary() => any()}.


%% Example:
%% input_security_group() :: #{
%%   <<"Arn">> => string(),
%%   <<"Id">> => string(),
%%   <<"Inputs">> => list(string()()),
%%   <<"State">> => list(any()),
%%   <<"Tags">> => map(),
%%   <<"WhitelistRules">> => list(input_whitelist_rule()())
%% }
-type input_security_group() :: #{binary() => any()}.


%% Example:
%% create_cloud_watch_alarm_template_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"ComparisonOperator">> => list(any()),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"DatapointsToAlarm">> => integer(),
%%   <<"Description">> => string(),
%%   <<"EvaluationPeriods">> => integer(),
%%   <<"GroupId">> => string(),
%%   <<"Id">> => string(),
%%   <<"MetricName">> => string(),
%%   <<"ModifiedAt">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"Period">> => integer(),
%%   <<"Statistic">> => list(any()),
%%   <<"Tags">> => map(),
%%   <<"TargetResourceType">> => list(any()),
%%   <<"Threshold">> => float(),
%%   <<"TreatMissingData">> => list(any())
%% }
-type create_cloud_watch_alarm_template_response() :: #{binary() => any()}.


%% Example:
%% input_channel_level() :: #{
%%   <<"Gain">> => integer(),
%%   <<"InputChannel">> => integer()
%% }
-type input_channel_level() :: #{binary() => any()}.


%% Example:
%% ms_smooth_output_settings() :: #{
%%   <<"H265PackagingType">> => list(any()),
%%   <<"NameModifier">> => string()
%% }
-type ms_smooth_output_settings() :: #{binary() => any()}.


%% Example:
%% reboot_input_device_request() :: #{
%%   <<"Force">> => list(any())
%% }
-type reboot_input_device_request() :: #{binary() => any()}.

%% Example:
%% embedded_plus_scte20_destination_settings() :: #{}
-type embedded_plus_scte20_destination_settings() :: #{}.


%% Example:
%% list_cloud_watch_alarm_template_groups_response() :: #{
%%   <<"CloudWatchAlarmTemplateGroups">> => list(cloud_watch_alarm_template_group_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_cloud_watch_alarm_template_groups_response() :: #{binary() => any()}.


%% Example:
%% too_many_requests_exception() :: #{
%%   <<"Message">> => string()
%% }
-type too_many_requests_exception() :: #{binary() => any()}.

%% Example:
%% motion_graphics_deactivate_schedule_action_settings() :: #{}
-type motion_graphics_deactivate_schedule_action_settings() :: #{}.


%% Example:
%% input_whitelist_rule_cidr() :: #{
%%   <<"Cidr">> => string()
%% }
-type input_whitelist_rule_cidr() :: #{binary() => any()}.


%% Example:
%% timed_metadata_schedule_action_settings() :: #{
%%   <<"Id3">> => string()
%% }
-type timed_metadata_schedule_action_settings() :: #{binary() => any()}.

%% Example:
%% describe_channel_placement_group_request() :: #{}
-type describe_channel_placement_group_request() :: #{}.


%% Example:
%% input_device_configurable_settings() :: #{
%%   <<"AudioChannelPairs">> => list(input_device_configurable_audio_channel_pair_config()()),
%%   <<"Codec">> => list(any()),
%%   <<"ConfiguredInput">> => list(any()),
%%   <<"LatencyMs">> => integer(),
%%   <<"MaxBitrate">> => integer(),
%%   <<"MediaconnectSettings">> => input_device_media_connect_configurable_settings()
%% }
-type input_device_configurable_settings() :: #{binary() => any()}.


%% Example:
%% event_bridge_rule_template_target() :: #{
%%   <<"Arn">> => string()
%% }
-type event_bridge_rule_template_target() :: #{binary() => any()}.


%% Example:
%% update_node_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"ChannelPlacementGroups">> => list(string()()),
%%   <<"ClusterId">> => string(),
%%   <<"ConnectionState">> => list(any()),
%%   <<"Id">> => string(),
%%   <<"InstanceArn">> => string(),
%%   <<"Name">> => string(),
%%   <<"NodeInterfaceMappings">> => list(node_interface_mapping()()),
%%   <<"Role">> => list(any()),
%%   <<"State">> => list(any())
%% }
-type update_node_response() :: #{binary() => any()}.

%% Example:
%% smpte_tt_destination_settings() :: #{}
-type smpte_tt_destination_settings() :: #{}.


%% Example:
%% srt_caller_source() :: #{
%%   <<"Decryption">> => srt_caller_decryption(),
%%   <<"MinimumLatency">> => integer(),
%%   <<"SrtListenerAddress">> => string(),
%%   <<"SrtListenerPort">> => string(),
%%   <<"StreamId">> => string()
%% }
-type srt_caller_source() :: #{binary() => any()}.

%% Example:
%% stop_channel_request() :: #{}
-type stop_channel_request() :: #{}.


%% Example:
%% caption_language_mapping() :: #{
%%   <<"CaptionChannel">> => integer(),
%%   <<"LanguageCode">> => string(),
%%   <<"LanguageDescription">> => string()
%% }
-type caption_language_mapping() :: #{binary() => any()}.


%% Example:
%% list_multiplex_programs_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_multiplex_programs_request() :: #{binary() => any()}.


%% Example:
%% describe_node_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"ChannelPlacementGroups">> => list(string()()),
%%   <<"ClusterId">> => string(),
%%   <<"ConnectionState">> => list(any()),
%%   <<"Id">> => string(),
%%   <<"InstanceArn">> => string(),
%%   <<"Name">> => string(),
%%   <<"NodeInterfaceMappings">> => list(node_interface_mapping()()),
%%   <<"Role">> => list(any()),
%%   <<"State">> => list(any())
%% }
-type describe_node_response() :: #{binary() => any()}.


%% Example:
%% create_node_registration_script_response() :: #{
%%   <<"NodeRegistrationScript">> => string()
%% }
-type create_node_registration_script_response() :: #{binary() => any()}.


%% Example:
%% update_cluster_request() :: #{
%%   <<"Name">> => string(),
%%   <<"NetworkSettings">> => cluster_network_settings_update_request()
%% }
-type update_cluster_request() :: #{binary() => any()}.


%% Example:
%% reservation_resource_specification() :: #{
%%   <<"ChannelClass">> => list(any()),
%%   <<"Codec">> => list(any()),
%%   <<"MaximumBitrate">> => list(any()),
%%   <<"MaximumFramerate">> => list(any()),
%%   <<"Resolution">> => list(any()),
%%   <<"ResourceType">> => list(any()),
%%   <<"SpecialFeature">> => list(any()),
%%   <<"VideoQuality">> => list(any())
%% }
-type reservation_resource_specification() :: #{binary() => any()}.


%% Example:
%% create_input_security_group_request() :: #{
%%   <<"Tags">> => map(),
%%   <<"WhitelistRules">> => list(input_whitelist_rule_cidr()())
%% }
-type create_input_security_group_request() :: #{binary() => any()}.


%% Example:
%% start_monitor_deployment_request() :: #{
%%   <<"DryRun">> => boolean(),
%%   <<"RequestId">> => string()
%% }
-type start_monitor_deployment_request() :: #{binary() => any()}.


%% Example:
%% delete_network_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"AssociatedClusterIds">> => list(string()()),
%%   <<"Id">> => string(),
%%   <<"IpPools">> => list(ip_pool()()),
%%   <<"Name">> => string(),
%%   <<"Routes">> => list(route()()),
%%   <<"State">> => list(any())
%% }
-type delete_network_response() :: #{binary() => any()}.


%% Example:
%% batch_delete_request() :: #{
%%   <<"ChannelIds">> => list(string()()),
%%   <<"InputIds">> => list(string()()),
%%   <<"InputSecurityGroupIds">> => list(string()()),
%%   <<"MultiplexIds">> => list(string()())
%% }
-type batch_delete_request() :: #{binary() => any()}.


%% Example:
%% create_node_registration_script_request() :: #{
%%   <<"Id">> => string(),
%%   <<"Name">> => string(),
%%   <<"NodeInterfaceMappings">> => list(node_interface_mapping()()),
%%   <<"RequestId">> => string(),
%%   <<"Role">> => list(any())
%% }
-type create_node_registration_script_request() :: #{binary() => any()}.


%% Example:
%% multicast_source_update_request() :: #{
%%   <<"SourceIp">> => string(),
%%   <<"Url">> => string()
%% }
-type multicast_source_update_request() :: #{binary() => any()}.


%% Example:
%% list_input_security_groups_response() :: #{
%%   <<"InputSecurityGroups">> => list(input_security_group()()),
%%   <<"NextToken">> => string()
%% }
-type list_input_security_groups_response() :: #{binary() => any()}.


%% Example:
%% video_description() :: #{
%%   <<"CodecSettings">> => video_codec_settings(),
%%   <<"Height">> => integer(),
%%   <<"Name">> => string(),
%%   <<"RespondToAfd">> => list(any()),
%%   <<"ScalingBehavior">> => list(any()),
%%   <<"Sharpness">> => integer(),
%%   <<"Width">> => integer()
%% }
-type video_description() :: #{binary() => any()}.


%% Example:
%% ttml_destination_settings() :: #{
%%   <<"StyleControl">> => list(any())
%% }
-type ttml_destination_settings() :: #{binary() => any()}.

%% Example:
%% start_multiplex_request() :: #{}
-type start_multiplex_request() :: #{}.


%% Example:
%% input_attachment() :: #{
%%   <<"AutomaticInputFailoverSettings">> => automatic_input_failover_settings(),
%%   <<"InputAttachmentName">> => string(),
%%   <<"InputId">> => string(),
%%   <<"InputSettings">> => input_settings(),
%%   <<"LogicalInterfaceNames">> => list(string()())
%% }
-type input_attachment() :: #{binary() => any()}.


%% Example:
%% cdi_input_specification() :: #{
%%   <<"Resolution">> => list(any())
%% }
-type cdi_input_specification() :: #{binary() => any()}.


%% Example:
%% audio_track() :: #{
%%   <<"Track">> => integer()
%% }
-type audio_track() :: #{binary() => any()}.

%% Example:
%% media_package_output_settings() :: #{}
-type media_package_output_settings() :: #{}.


%% Example:
%% timecode_config() :: #{
%%   <<"Source">> => list(any()),
%%   <<"SyncThreshold">> => integer()
%% }
-type timecode_config() :: #{binary() => any()}.

%% Example:
%% accept_input_device_transfer_request() :: #{}
-type accept_input_device_transfer_request() :: #{}.


%% Example:
%% list_input_devices_response() :: #{
%%   <<"InputDevices">> => list(input_device_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_input_devices_response() :: #{binary() => any()}.


%% Example:
%% input_specification() :: #{
%%   <<"Codec">> => list(any()),
%%   <<"MaximumBitrate">> => list(any()),
%%   <<"Resolution">> => list(any())
%% }
-type input_specification() :: #{binary() => any()}.


%% Example:
%% multicast_input_settings() :: #{
%%   <<"SourceIpAddress">> => string()
%% }
-type multicast_input_settings() :: #{binary() => any()}.

%% Example:
%% pipeline_locking_settings() :: #{}
-type pipeline_locking_settings() :: #{}.


%% Example:
%% create_partner_input_request() :: #{
%%   <<"RequestId">> => string(),
%%   <<"Tags">> => map()
%% }
-type create_partner_input_request() :: #{binary() => any()}.


%% Example:
%% batch_schedule_action_create_request() :: #{
%%   <<"ScheduleActions">> => list(schedule_action()())
%% }
-type batch_schedule_action_create_request() :: #{binary() => any()}.


%% Example:
%% multicast_settings_create_request() :: #{
%%   <<"Sources">> => list(multicast_source_create_request()())
%% }
-type multicast_settings_create_request() :: #{binary() => any()}.


%% Example:
%% output_group_settings() :: #{
%%   <<"ArchiveGroupSettings">> => archive_group_settings(),
%%   <<"CmafIngestGroupSettings">> => cmaf_ingest_group_settings(),
%%   <<"FrameCaptureGroupSettings">> => frame_capture_group_settings(),
%%   <<"HlsGroupSettings">> => hls_group_settings(),
%%   <<"MediaPackageGroupSettings">> => media_package_group_settings(),
%%   <<"MsSmoothGroupSettings">> => ms_smooth_group_settings(),
%%   <<"MultiplexGroupSettings">> => multiplex_group_settings(),
%%   <<"RtmpGroupSettings">> => rtmp_group_settings(),
%%   <<"SrtGroupSettings">> => srt_group_settings(),
%%   <<"UdpGroupSettings">> => udp_group_settings()
%% }
-type output_group_settings() :: #{binary() => any()}.


%% Example:
%% describe_schedule_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"ScheduleActions">> => list(schedule_action()())
%% }
-type describe_schedule_response() :: #{binary() => any()}.


%% Example:
%% interface_mapping() :: #{
%%   <<"LogicalInterfaceName">> => string(),
%%   <<"NetworkId">> => string()
%% }
-type interface_mapping() :: #{binary() => any()}.


%% Example:
%% h264_color_space_settings() :: #{
%%   <<"ColorSpacePassthroughSettings">> => color_space_passthrough_settings(),
%%   <<"Rec601Settings">> => rec601_settings(),
%%   <<"Rec709Settings">> => rec709_settings()
%% }
-type h264_color_space_settings() :: #{binary() => any()}.


%% Example:
%% update_reservation_request() :: #{
%%   <<"Name">> => string(),
%%   <<"RenewalSettings">> => renewal_settings()
%% }
-type update_reservation_request() :: #{binary() => any()}.


%% Example:
%% create_tags_request() :: #{
%%   <<"Tags">> => map()
%% }
-type create_tags_request() :: #{binary() => any()}.


%% Example:
%% stop_multiplex_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"AvailabilityZones">> => list(string()()),
%%   <<"Destinations">> => list(multiplex_output_destination()()),
%%   <<"Id">> => string(),
%%   <<"MultiplexSettings">> => multiplex_settings(),
%%   <<"Name">> => string(),
%%   <<"PipelinesRunningCount">> => integer(),
%%   <<"ProgramCount">> => integer(),
%%   <<"State">> => list(any()),
%%   <<"Tags">> => map()
%% }
-type stop_multiplex_response() :: #{binary() => any()}.


%% Example:
%% create_input_response() :: #{
%%   <<"Input">> => input()
%% }
-type create_input_response() :: #{binary() => any()}.


%% Example:
%% route_create_request() :: #{
%%   <<"Cidr">> => string(),
%%   <<"Gateway">> => string()
%% }
-type route_create_request() :: #{binary() => any()}.


%% Example:
%% multicast_source_create_request() :: #{
%%   <<"SourceIp">> => string(),
%%   <<"Url">> => string()
%% }
-type multicast_source_create_request() :: #{binary() => any()}.


%% Example:
%% input_device_uhd_audio_channel_pair_config() :: #{
%%   <<"Id">> => integer(),
%%   <<"Profile">> => list(any())
%% }
-type input_device_uhd_audio_channel_pair_config() :: #{binary() => any()}.


%% Example:
%% list_channel_placement_groups_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_channel_placement_groups_request() :: #{binary() => any()}.


%% Example:
%% video_selector_program_id() :: #{
%%   <<"ProgramId">> => integer()
%% }
-type video_selector_program_id() :: #{binary() => any()}.


%% Example:
%% ms_smooth_group_settings() :: #{
%%   <<"AcquisitionPointId">> => string(),
%%   <<"AudioOnlyTimecodeControl">> => list(any()),
%%   <<"CertificateMode">> => list(any()),
%%   <<"ConnectionRetryInterval">> => integer(),
%%   <<"Destination">> => output_location_ref(),
%%   <<"EventId">> => string(),
%%   <<"EventIdMode">> => list(any()),
%%   <<"EventStopBehavior">> => list(any()),
%%   <<"FilecacheDuration">> => integer(),
%%   <<"FragmentLength">> => integer(),
%%   <<"InputLossAction">> => list(any()),
%%   <<"NumRetries">> => integer(),
%%   <<"RestartDelay">> => integer(),
%%   <<"SegmentationMode">> => list(any()),
%%   <<"SendDelayMs">> => integer(),
%%   <<"SparseTrackType">> => list(any()),
%%   <<"StreamManifestBehavior">> => list(any()),
%%   <<"TimestampOffset">> => string(),
%%   <<"TimestampOffsetMode">> => list(any())
%% }
-type ms_smooth_group_settings() :: #{binary() => any()}.


%% Example:
%% get_cloud_watch_alarm_template_group_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"Id">> => string(),
%%   <<"ModifiedAt">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"Tags">> => map()
%% }
-type get_cloud_watch_alarm_template_group_response() :: #{binary() => any()}.


%% Example:
%% create_input_request() :: #{
%%   <<"Destinations">> => list(input_destination_request()()),
%%   <<"InputDevices">> => list(input_device_settings()()),
%%   <<"InputNetworkLocation">> => list(any()),
%%   <<"InputSecurityGroups">> => list(string()()),
%%   <<"MediaConnectFlows">> => list(media_connect_flow_request()()),
%%   <<"MulticastSettings">> => multicast_settings_create_request(),
%%   <<"Name">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"RoleArn">> => string(),
%%   <<"Sources">> => list(input_source_request()()),
%%   <<"SrtSettings">> => srt_settings_request(),
%%   <<"Tags">> => map(),
%%   <<"Type">> => list(any()),
%%   <<"Vpc">> => input_vpc_request()
%% }
-type create_input_request() :: #{binary() => any()}.


%% Example:
%% hls_id3_segment_tagging_schedule_action_settings() :: #{
%%   <<"Id3">> => string(),
%%   <<"Tag">> => string()
%% }
-type hls_id3_segment_tagging_schedule_action_settings() :: #{binary() => any()}.


%% Example:
%% delete_multiplex_program_response() :: #{
%%   <<"ChannelId">> => string(),
%%   <<"MultiplexProgramSettings">> => multiplex_program_settings(),
%%   <<"PacketIdentifiersMap">> => multiplex_program_packet_identifiers_map(),
%%   <<"PipelineDetails">> => list(multiplex_program_pipeline_detail()()),
%%   <<"ProgramName">> => string()
%% }
-type delete_multiplex_program_response() :: #{binary() => any()}.


%% Example:
%% channel_summary() :: #{
%%   <<"AnywhereSettings">> => describe_anywhere_settings(),
%%   <<"Arn">> => string(),
%%   <<"CdiInputSpecification">> => cdi_input_specification(),
%%   <<"ChannelClass">> => list(any()),
%%   <<"ChannelEngineVersion">> => channel_engine_version_response(),
%%   <<"Destinations">> => list(output_destination()()),
%%   <<"EgressEndpoints">> => list(channel_egress_endpoint()()),
%%   <<"Id">> => string(),
%%   <<"InputAttachments">> => list(input_attachment()()),
%%   <<"InputSpecification">> => input_specification(),
%%   <<"LogLevel">> => list(any()),
%%   <<"Maintenance">> => maintenance_status(),
%%   <<"Name">> => string(),
%%   <<"PipelinesRunningCount">> => integer(),
%%   <<"RoleArn">> => string(),
%%   <<"State">> => list(any()),
%%   <<"Tags">> => map(),
%%   <<"UsedChannelEngineVersions">> => list(channel_engine_version_response()()),
%%   <<"Vpc">> => vpc_output_settings_description()
%% }
-type channel_summary() :: #{binary() => any()}.


%% Example:
%% hls_settings() :: #{
%%   <<"AudioOnlyHlsSettings">> => audio_only_hls_settings(),
%%   <<"Fmp4HlsSettings">> => fmp4_hls_settings(),
%%   <<"FrameCaptureHlsSettings">> => frame_capture_hls_settings(),
%%   <<"StandardHlsSettings">> => standard_hls_settings()
%% }
-type hls_settings() :: #{binary() => any()}.


%% Example:
%% archive_container_settings() :: #{
%%   <<"M2tsSettings">> => m2ts_settings(),
%%   <<"RawSettings">> => raw_settings()
%% }
-type archive_container_settings() :: #{binary() => any()}.


%% Example:
%% stop_channel_response() :: #{
%%   <<"AnywhereSettings">> => describe_anywhere_settings(),
%%   <<"Arn">> => string(),
%%   <<"CdiInputSpecification">> => cdi_input_specification(),
%%   <<"ChannelClass">> => list(any()),
%%   <<"ChannelEngineVersion">> => channel_engine_version_response(),
%%   <<"Destinations">> => list(output_destination()()),
%%   <<"EgressEndpoints">> => list(channel_egress_endpoint()()),
%%   <<"EncoderSettings">> => encoder_settings(),
%%   <<"Id">> => string(),
%%   <<"InputAttachments">> => list(input_attachment()()),
%%   <<"InputSpecification">> => input_specification(),
%%   <<"LogLevel">> => list(any()),
%%   <<"Maintenance">> => maintenance_status(),
%%   <<"Name">> => string(),
%%   <<"PipelineDetails">> => list(pipeline_detail()()),
%%   <<"PipelinesRunningCount">> => integer(),
%%   <<"RoleArn">> => string(),
%%   <<"State">> => list(any()),
%%   <<"Tags">> => map(),
%%   <<"Vpc">> => vpc_output_settings_description()
%% }
-type stop_channel_response() :: #{binary() => any()}.

%% Example:
%% start_channel_request() :: #{}
-type start_channel_request() :: #{}.


%% Example:
%% avail_configuration() :: #{
%%   <<"AvailSettings">> => avail_settings(),
%%   <<"Scte35SegmentationScope">> => list(any())
%% }
-type avail_configuration() :: #{binary() => any()}.


%% Example:
%% create_cluster_request() :: #{
%%   <<"ClusterType">> => list(any()),
%%   <<"InstanceRoleArn">> => string(),
%%   <<"Name">> => string(),
%%   <<"NetworkSettings">> => cluster_network_settings_create_request(),
%%   <<"RequestId">> => string(),
%%   <<"Tags">> => map()
%% }
-type create_cluster_request() :: #{binary() => any()}.


%% Example:
%% describe_thumbnails_response() :: #{
%%   <<"ThumbnailDetails">> => list(thumbnail_detail()())
%% }
-type describe_thumbnails_response() :: #{binary() => any()}.


%% Example:
%% global_configuration() :: #{
%%   <<"InitialAudioGain">> => integer(),
%%   <<"InputEndAction">> => list(any()),
%%   <<"InputLossBehavior">> => input_loss_behavior(),
%%   <<"OutputLockingMode">> => list(any()),
%%   <<"OutputLockingSettings">> => output_locking_settings(),
%%   <<"OutputTimingSource">> => list(any()),
%%   <<"SupportLowFramerateInputs">> => list(any())
%% }
-type global_configuration() :: #{binary() => any()}.


%% Example:
%% batch_stop_response() :: #{
%%   <<"Failed">> => list(batch_failed_result_model()()),
%%   <<"Successful">> => list(batch_successful_result_model()())
%% }
-type batch_stop_response() :: #{binary() => any()}.


%% Example:
%% input() :: #{
%%   <<"Arn">> => string(),
%%   <<"AttachedChannels">> => list(string()()),
%%   <<"Destinations">> => list(input_destination()()),
%%   <<"Id">> => string(),
%%   <<"InputClass">> => list(any()),
%%   <<"InputDevices">> => list(input_device_settings()()),
%%   <<"InputNetworkLocation">> => list(any()),
%%   <<"InputPartnerIds">> => list(string()()),
%%   <<"InputSourceType">> => list(any()),
%%   <<"MediaConnectFlows">> => list(media_connect_flow()()),
%%   <<"MulticastSettings">> => multicast_settings(),
%%   <<"Name">> => string(),
%%   <<"RoleArn">> => string(),
%%   <<"SecurityGroups">> => list(string()()),
%%   <<"Sources">> => list(input_source()()),
%%   <<"SrtSettings">> => srt_settings(),
%%   <<"State">> => list(any()),
%%   <<"Tags">> => map(),
%%   <<"Type">> => list(any())
%% }
-type input() :: #{binary() => any()}.


%% Example:
%% automatic_input_failover_settings() :: #{
%%   <<"ErrorClearTimeMsec">> => integer(),
%%   <<"FailoverConditions">> => list(failover_condition()()),
%%   <<"InputPreference">> => list(any()),
%%   <<"SecondaryInputId">> => string()
%% }
-type automatic_input_failover_settings() :: #{binary() => any()}.

%% Example:
%% start_input_device_maintenance_window_response() :: #{}
-type start_input_device_maintenance_window_response() :: #{}.


%% Example:
%% conflict_exception() :: #{
%%   <<"Message">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.

%% Example:
%% delete_input_request() :: #{}
-type delete_input_request() :: #{}.


%% Example:
%% update_input_request() :: #{
%%   <<"Destinations">> => list(input_destination_request()()),
%%   <<"InputDevices">> => list(input_device_request()()),
%%   <<"InputSecurityGroups">> => list(string()()),
%%   <<"MediaConnectFlows">> => list(media_connect_flow_request()()),
%%   <<"MulticastSettings">> => multicast_settings_update_request(),
%%   <<"Name">> => string(),
%%   <<"RoleArn">> => string(),
%%   <<"Sources">> => list(input_source_request()()),
%%   <<"SrtSettings">> => srt_settings_request()
%% }
-type update_input_request() :: #{binary() => any()}.


%% Example:
%% schedule_action_settings() :: #{
%%   <<"HlsId3SegmentTaggingSettings">> => hls_id3_segment_tagging_schedule_action_settings(),
%%   <<"HlsTimedMetadataSettings">> => hls_timed_metadata_schedule_action_settings(),
%%   <<"Id3SegmentTaggingSettings">> => id3_segment_tagging_schedule_action_settings(),
%%   <<"InputPrepareSettings">> => input_prepare_schedule_action_settings(),
%%   <<"InputSwitchSettings">> => input_switch_schedule_action_settings(),
%%   <<"MotionGraphicsImageActivateSettings">> => motion_graphics_activate_schedule_action_settings(),
%%   <<"MotionGraphicsImageDeactivateSettings">> => motion_graphics_deactivate_schedule_action_settings(),
%%   <<"PauseStateSettings">> => pause_state_schedule_action_settings(),
%%   <<"Scte35InputSettings">> => scte35_input_schedule_action_settings(),
%%   <<"Scte35ReturnToNetworkSettings">> => scte35_return_to_network_schedule_action_settings(),
%%   <<"Scte35SpliceInsertSettings">> => scte35_splice_insert_schedule_action_settings(),
%%   <<"Scte35TimeSignalSettings">> => scte35_time_signal_schedule_action_settings(),
%%   <<"StaticImageActivateSettings">> => static_image_activate_schedule_action_settings(),
%%   <<"StaticImageDeactivateSettings">> => static_image_deactivate_schedule_action_settings(),
%%   <<"StaticImageOutputActivateSettings">> => static_image_output_activate_schedule_action_settings(),
%%   <<"StaticImageOutputDeactivateSettings">> => static_image_output_deactivate_schedule_action_settings(),
%%   <<"TimedMetadataSettings">> => timed_metadata_schedule_action_settings()
%% }
-type schedule_action_settings() :: #{binary() => any()}.


%% Example:
%% describe_network_summary() :: #{
%%   <<"Arn">> => string(),
%%   <<"AssociatedClusterIds">> => list(string()()),
%%   <<"Id">> => string(),
%%   <<"IpPools">> => list(ip_pool()()),
%%   <<"Name">> => string(),
%%   <<"Routes">> => list(route()()),
%%   <<"State">> => list(any())
%% }
-type describe_network_summary() :: #{binary() => any()}.


%% Example:
%% multiplex_media_connect_output_destination_settings() :: #{
%%   <<"EntitlementArn">> => string()
%% }
-type multiplex_media_connect_output_destination_settings() :: #{binary() => any()}.


%% Example:
%% delete_reservation_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"Count">> => integer(),
%%   <<"CurrencyCode">> => string(),
%%   <<"Duration">> => integer(),
%%   <<"DurationUnits">> => list(any()),
%%   <<"End">> => string(),
%%   <<"FixedPrice">> => float(),
%%   <<"Name">> => string(),
%%   <<"OfferingDescription">> => string(),
%%   <<"OfferingId">> => string(),
%%   <<"OfferingType">> => list(any()),
%%   <<"Region">> => string(),
%%   <<"RenewalSettings">> => renewal_settings(),
%%   <<"ReservationId">> => string(),
%%   <<"ResourceSpecification">> => reservation_resource_specification(),
%%   <<"Start">> => string(),
%%   <<"State">> => list(any()),
%%   <<"Tags">> => map(),
%%   <<"UsagePrice">> => float()
%% }
-type delete_reservation_response() :: #{binary() => any()}.


%% Example:
%% nielsen_naes_ii_nw() :: #{
%%   <<"CheckDigitString">> => string(),
%%   <<"Sid">> => float(),
%%   <<"Timezone">> => list(any())
%% }
-type nielsen_naes_ii_nw() :: #{binary() => any()}.

%% Example:
%% rec601_settings() :: #{}
-type rec601_settings() :: #{}.

%% Example:
%% get_cloud_watch_alarm_template_group_request() :: #{}
-type get_cloud_watch_alarm_template_group_request() :: #{}.


%% Example:
%% batch_stop_request() :: #{
%%   <<"ChannelIds">> => list(string()()),
%%   <<"MultiplexIds">> => list(string()())
%% }
-type batch_stop_request() :: #{binary() => any()}.

%% Example:
%% delete_network_request() :: #{}
-type delete_network_request() :: #{}.

%% Example:
%% get_event_bridge_rule_template_group_request() :: #{}
-type get_event_bridge_rule_template_group_request() :: #{}.

%% Example:
%% cancel_input_device_transfer_request() :: #{}
-type cancel_input_device_transfer_request() :: #{}.


%% Example:
%% describe_cluster_summary() :: #{
%%   <<"Arn">> => string(),
%%   <<"ChannelIds">> => list(string()()),
%%   <<"ClusterType">> => list(any()),
%%   <<"Id">> => string(),
%%   <<"InstanceRoleArn">> => string(),
%%   <<"Name">> => string(),
%%   <<"NetworkSettings">> => cluster_network_settings(),
%%   <<"State">> => list(any())
%% }
-type describe_cluster_summary() :: #{binary() => any()}.


%% Example:
%% output_group() :: #{
%%   <<"Name">> => string(),
%%   <<"OutputGroupSettings">> => output_group_settings(),
%%   <<"Outputs">> => list(output()())
%% }
-type output_group() :: #{binary() => any()}.


%% Example:
%% input_device_uhd_settings() :: #{
%%   <<"ActiveInput">> => list(any()),
%%   <<"AudioChannelPairs">> => list(input_device_uhd_audio_channel_pair_config()()),
%%   <<"Codec">> => list(any()),
%%   <<"ConfiguredInput">> => list(any()),
%%   <<"DeviceState">> => list(any()),
%%   <<"Framerate">> => float(),
%%   <<"Height">> => integer(),
%%   <<"LatencyMs">> => integer(),
%%   <<"MaxBitrate">> => integer(),
%%   <<"MediaconnectSettings">> => input_device_media_connect_settings(),
%%   <<"ScanType">> => list(any()),
%%   <<"Width">> => integer()
%% }
-type input_device_uhd_settings() :: #{binary() => any()}.

%% Example:
%% arib_source_settings() :: #{}
-type arib_source_settings() :: #{}.


%% Example:
%% list_inputs_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_inputs_request() :: #{binary() => any()}.

%% Example:
%% delete_input_security_group_request() :: #{}
-type delete_input_security_group_request() :: #{}.


%% Example:
%% node_interface_mapping() :: #{
%%   <<"LogicalInterfaceName">> => string(),
%%   <<"NetworkInterfaceMode">> => list(any()),
%%   <<"PhysicalInterfaceName">> => string()
%% }
-type node_interface_mapping() :: #{binary() => any()}.

%% Example:
%% multiplex_group_settings() :: #{}
-type multiplex_group_settings() :: #{}.


%% Example:
%% audio_description() :: #{
%%   <<"AudioDashRoles">> => list(list(any())()),
%%   <<"AudioNormalizationSettings">> => audio_normalization_settings(),
%%   <<"AudioSelectorName">> => string(),
%%   <<"AudioType">> => list(any()),
%%   <<"AudioTypeControl">> => list(any()),
%%   <<"AudioWatermarkingSettings">> => audio_watermark_settings(),
%%   <<"CodecSettings">> => audio_codec_settings(),
%%   <<"DvbDashAccessibility">> => list(any()),
%%   <<"LanguageCode">> => string(),
%%   <<"LanguageCodeControl">> => list(any()),
%%   <<"Name">> => string(),
%%   <<"RemixSettings">> => remix_settings(),
%%   <<"StreamName">> => string()
%% }
-type audio_description() :: #{binary() => any()}.


%% Example:
%% create_partner_input_response() :: #{
%%   <<"Input">> => input()
%% }
-type create_partner_input_response() :: #{binary() => any()}.


%% Example:
%% archive_output_settings() :: #{
%%   <<"ContainerSettings">> => archive_container_settings(),
%%   <<"Extension">> => string(),
%%   <<"NameModifier">> => string()
%% }
-type archive_output_settings() :: #{binary() => any()}.


%% Example:
%% update_channel_class_request() :: #{
%%   <<"ChannelClass">> := list(any()),
%%   <<"Destinations">> => list(output_destination()())
%% }
-type update_channel_class_request() :: #{binary() => any()}.


%% Example:
%% video_codec_settings() :: #{
%%   <<"Av1Settings">> => av1_settings(),
%%   <<"FrameCaptureSettings">> => frame_capture_settings(),
%%   <<"H264Settings">> => h264_settings(),
%%   <<"H265Settings">> => h265_settings(),
%%   <<"Mpeg2Settings">> => mpeg2_settings()
%% }
-type video_codec_settings() :: #{binary() => any()}.


%% Example:
%% udp_group_settings() :: #{
%%   <<"InputLossAction">> => list(any()),
%%   <<"TimedMetadataId3Frame">> => list(any()),
%%   <<"TimedMetadataId3Period">> => integer()
%% }
-type udp_group_settings() :: #{binary() => any()}.


%% Example:
%% create_input_security_group_response() :: #{
%%   <<"SecurityGroup">> => input_security_group()
%% }
-type create_input_security_group_response() :: #{binary() => any()}.


%% Example:
%% srt_settings_request() :: #{
%%   <<"SrtCallerSources">> => list(srt_caller_source_request()())
%% }
-type srt_settings_request() :: #{binary() => any()}.


%% Example:
%% describe_channel_response() :: #{
%%   <<"AnywhereSettings">> => describe_anywhere_settings(),
%%   <<"Arn">> => string(),
%%   <<"CdiInputSpecification">> => cdi_input_specification(),
%%   <<"ChannelClass">> => list(any()),
%%   <<"ChannelEngineVersion">> => channel_engine_version_response(),
%%   <<"Destinations">> => list(output_destination()()),
%%   <<"EgressEndpoints">> => list(channel_egress_endpoint()()),
%%   <<"EncoderSettings">> => encoder_settings(),
%%   <<"Id">> => string(),
%%   <<"InputAttachments">> => list(input_attachment()()),
%%   <<"InputSpecification">> => input_specification(),
%%   <<"LogLevel">> => list(any()),
%%   <<"Maintenance">> => maintenance_status(),
%%   <<"Name">> => string(),
%%   <<"PipelineDetails">> => list(pipeline_detail()()),
%%   <<"PipelinesRunningCount">> => integer(),
%%   <<"RoleArn">> => string(),
%%   <<"State">> => list(any()),
%%   <<"Tags">> => map(),
%%   <<"Vpc">> => vpc_output_settings_description()
%% }
-type describe_channel_response() :: #{binary() => any()}.


%% Example:
%% describe_multiplex_program_response() :: #{
%%   <<"ChannelId">> => string(),
%%   <<"MultiplexProgramSettings">> => multiplex_program_settings(),
%%   <<"PacketIdentifiersMap">> => multiplex_program_packet_identifiers_map(),
%%   <<"PipelineDetails">> => list(multiplex_program_pipeline_detail()()),
%%   <<"ProgramName">> => string()
%% }
-type describe_multiplex_program_response() :: #{binary() => any()}.


%% Example:
%% rtmp_group_settings() :: #{
%%   <<"AdMarkers">> => list(list(any())()),
%%   <<"AuthenticationScheme">> => list(any()),
%%   <<"CacheFullBehavior">> => list(any()),
%%   <<"CacheLength">> => integer(),
%%   <<"CaptionData">> => list(any()),
%%   <<"IncludeFillerNalUnits">> => list(any()),
%%   <<"InputLossAction">> => list(any()),
%%   <<"RestartDelay">> => integer()
%% }
-type rtmp_group_settings() :: #{binary() => any()}.


%% Example:
%% get_cloud_watch_alarm_template_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"ComparisonOperator">> => list(any()),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"DatapointsToAlarm">> => integer(),
%%   <<"Description">> => string(),
%%   <<"EvaluationPeriods">> => integer(),
%%   <<"GroupId">> => string(),
%%   <<"Id">> => string(),
%%   <<"MetricName">> => string(),
%%   <<"ModifiedAt">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"Period">> => integer(),
%%   <<"Statistic">> => list(any()),
%%   <<"Tags">> => map(),
%%   <<"TargetResourceType">> => list(any()),
%%   <<"Threshold">> => float(),
%%   <<"TreatMissingData">> => list(any())
%% }
-type get_cloud_watch_alarm_template_response() :: #{binary() => any()}.


%% Example:
%% input_loss_behavior() :: #{
%%   <<"BlackFrameMsec">> => integer(),
%%   <<"InputLossImageColor">> => string(),
%%   <<"InputLossImageSlate">> => input_location(),
%%   <<"InputLossImageType">> => list(any()),
%%   <<"RepeatFrameMsec">> => integer()
%% }
-type input_loss_behavior() :: #{binary() => any()}.


%% Example:
%% update_multiplex_request() :: #{
%%   <<"MultiplexSettings">> => multiplex_settings(),
%%   <<"Name">> => string(),
%%   <<"PacketIdentifiersMapping">> => map()
%% }
-type update_multiplex_request() :: #{binary() => any()}.


%% Example:
%% cluster_network_settings() :: #{
%%   <<"DefaultRoute">> => string(),
%%   <<"InterfaceMappings">> => list(interface_mapping()())
%% }
-type cluster_network_settings() :: #{binary() => any()}.


%% Example:
%% interface_mapping_create_request() :: #{
%%   <<"LogicalInterfaceName">> => string(),
%%   <<"NetworkId">> => string()
%% }
-type interface_mapping_create_request() :: #{binary() => any()}.


%% Example:
%% eac3_settings() :: #{
%%   <<"AttenuationControl">> => list(any()),
%%   <<"Bitrate">> => float(),
%%   <<"BitstreamMode">> => list(any()),
%%   <<"CodingMode">> => list(any()),
%%   <<"DcFilter">> => list(any()),
%%   <<"Dialnorm">> => integer(),
%%   <<"DrcLine">> => list(any()),
%%   <<"DrcRf">> => list(any()),
%%   <<"LfeControl">> => list(any()),
%%   <<"LfeFilter">> => list(any()),
%%   <<"LoRoCenterMixLevel">> => float(),
%%   <<"LoRoSurroundMixLevel">> => float(),
%%   <<"LtRtCenterMixLevel">> => float(),
%%   <<"LtRtSurroundMixLevel">> => float(),
%%   <<"MetadataControl">> => list(any()),
%%   <<"PassthroughControl">> => list(any()),
%%   <<"PhaseControl">> => list(any()),
%%   <<"StereoDownmix">> => list(any()),
%%   <<"SurroundExMode">> => list(any()),
%%   <<"SurroundMode">> => list(any())
%% }
-type eac3_settings() :: #{binary() => any()}.


%% Example:
%% describe_thumbnails_request() :: #{
%%   <<"PipelineId">> := string(),
%%   <<"ThumbnailType">> := string()
%% }
-type describe_thumbnails_request() :: #{binary() => any()}.

%% Example:
%% scte20_plus_embedded_destination_settings() :: #{}
-type scte20_plus_embedded_destination_settings() :: #{}.


%% Example:
%% create_signal_map_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"CloudWatchAlarmTemplateGroupIds">> => list(string()()),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"DiscoveryEntryPointArn">> => string(),
%%   <<"ErrorMessage">> => string(),
%%   <<"EventBridgeRuleTemplateGroupIds">> => list(string()()),
%%   <<"FailedMediaResourceMap">> => map(),
%%   <<"Id">> => string(),
%%   <<"LastDiscoveredAt">> => non_neg_integer(),
%%   <<"LastSuccessfulMonitorDeployment">> => successful_monitor_deployment(),
%%   <<"MediaResourceMap">> => map(),
%%   <<"ModifiedAt">> => non_neg_integer(),
%%   <<"MonitorChangesPendingDeployment">> => boolean(),
%%   <<"MonitorDeployment">> => monitor_deployment(),
%%   <<"Name">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"Tags">> => map()
%% }
-type create_signal_map_response() :: #{binary() => any()}.


%% Example:
%% not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type not_found_exception() :: #{binary() => any()}.


%% Example:
%% start_timecode() :: #{
%%   <<"Timecode">> => string()
%% }
-type start_timecode() :: #{binary() => any()}.


%% Example:
%% update_cloud_watch_alarm_template_group_request() :: #{
%%   <<"Description">> => string()
%% }
-type update_cloud_watch_alarm_template_group_request() :: #{binary() => any()}.

%% Example:
%% describe_channel_request() :: #{}
-type describe_channel_request() :: #{}.


%% Example:
%% ip_pool() :: #{
%%   <<"Cidr">> => string()
%% }
-type ip_pool() :: #{binary() => any()}.


%% Example:
%% batch_update_schedule_response() :: #{
%%   <<"Creates">> => batch_schedule_action_create_result(),
%%   <<"Deletes">> => batch_schedule_action_delete_result()
%% }
-type batch_update_schedule_response() :: #{binary() => any()}.


%% Example:
%% scte35_input_schedule_action_settings() :: #{
%%   <<"InputAttachmentNameReference">> => string(),
%%   <<"Mode">> => list(any())
%% }
-type scte35_input_schedule_action_settings() :: #{binary() => any()}.


%% Example:
%% list_networks_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_networks_request() :: #{binary() => any()}.


%% Example:
%% caption_destination_settings() :: #{
%%   <<"AribDestinationSettings">> => arib_destination_settings(),
%%   <<"BurnInDestinationSettings">> => burn_in_destination_settings(),
%%   <<"DvbSubDestinationSettings">> => dvb_sub_destination_settings(),
%%   <<"EbuTtDDestinationSettings">> => ebu_tt_d_destination_settings(),
%%   <<"EmbeddedDestinationSettings">> => embedded_destination_settings(),
%%   <<"EmbeddedPlusScte20DestinationSettings">> => embedded_plus_scte20_destination_settings(),
%%   <<"RtmpCaptionInfoDestinationSettings">> => rtmp_caption_info_destination_settings(),
%%   <<"Scte20PlusEmbeddedDestinationSettings">> => scte20_plus_embedded_destination_settings(),
%%   <<"Scte27DestinationSettings">> => scte27_destination_settings(),
%%   <<"SmpteTtDestinationSettings">> => smpte_tt_destination_settings(),
%%   <<"TeletextDestinationSettings">> => teletext_destination_settings(),
%%   <<"TtmlDestinationSettings">> => ttml_destination_settings(),
%%   <<"WebvttDestinationSettings">> => webvtt_destination_settings()
%% }
-type caption_destination_settings() :: #{binary() => any()}.


%% Example:
%% route() :: #{
%%   <<"Cidr">> => string(),
%%   <<"Gateway">> => string()
%% }
-type route() :: #{binary() => any()}.


%% Example:
%% describe_input_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"AttachedChannels">> => list(string()()),
%%   <<"Destinations">> => list(input_destination()()),
%%   <<"Id">> => string(),
%%   <<"InputClass">> => list(any()),
%%   <<"InputDevices">> => list(input_device_settings()()),
%%   <<"InputNetworkLocation">> => list(any()),
%%   <<"InputPartnerIds">> => list(string()()),
%%   <<"InputSourceType">> => list(any()),
%%   <<"MediaConnectFlows">> => list(media_connect_flow()()),
%%   <<"MulticastSettings">> => multicast_settings(),
%%   <<"Name">> => string(),
%%   <<"RoleArn">> => string(),
%%   <<"SecurityGroups">> => list(string()()),
%%   <<"Sources">> => list(input_source()()),
%%   <<"SrtSettings">> => srt_settings(),
%%   <<"State">> => list(any()),
%%   <<"Tags">> => map(),
%%   <<"Type">> => list(any())
%% }
-type describe_input_response() :: #{binary() => any()}.


%% Example:
%% media_resource_neighbor() :: #{
%%   <<"Arn">> => string(),
%%   <<"Name">> => string()
%% }
-type media_resource_neighbor() :: #{binary() => any()}.


%% Example:
%% create_channel_request() :: #{
%%   <<"AnywhereSettings">> => anywhere_settings(),
%%   <<"CdiInputSpecification">> => cdi_input_specification(),
%%   <<"ChannelClass">> => list(any()),
%%   <<"ChannelEngineVersion">> => channel_engine_version_request(),
%%   <<"Destinations">> => list(output_destination()()),
%%   <<"DryRun">> => boolean(),
%%   <<"EncoderSettings">> => encoder_settings(),
%%   <<"InputAttachments">> => list(input_attachment()()),
%%   <<"InputSpecification">> => input_specification(),
%%   <<"LogLevel">> => list(any()),
%%   <<"Maintenance">> => maintenance_create_settings(),
%%   <<"Name">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"Reserved">> => string(),
%%   <<"RoleArn">> => string(),
%%   <<"Tags">> => map(),
%%   <<"Vpc">> => vpc_output_settings()
%% }
-type create_channel_request() :: #{binary() => any()}.


%% Example:
%% list_nodes_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_nodes_request() :: #{binary() => any()}.


%% Example:
%% start_delete_monitor_deployment_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"CloudWatchAlarmTemplateGroupIds">> => list(string()()),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"DiscoveryEntryPointArn">> => string(),
%%   <<"ErrorMessage">> => string(),
%%   <<"EventBridgeRuleTemplateGroupIds">> => list(string()()),
%%   <<"FailedMediaResourceMap">> => map(),
%%   <<"Id">> => string(),
%%   <<"LastDiscoveredAt">> => non_neg_integer(),
%%   <<"LastSuccessfulMonitorDeployment">> => successful_monitor_deployment(),
%%   <<"MediaResourceMap">> => map(),
%%   <<"ModifiedAt">> => non_neg_integer(),
%%   <<"MonitorChangesPendingDeployment">> => boolean(),
%%   <<"MonitorDeployment">> => monitor_deployment(),
%%   <<"Name">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"Tags">> => map()
%% }
-type start_delete_monitor_deployment_response() :: #{binary() => any()}.


%% Example:
%% motion_graphics_settings() :: #{
%%   <<"HtmlMotionGraphicsSettings">> => html_motion_graphics_settings()
%% }
-type motion_graphics_settings() :: #{binary() => any()}.

%% Example:
%% delete_event_bridge_rule_template_group_request() :: #{}
-type delete_event_bridge_rule_template_group_request() :: #{}.


%% Example:
%% h265_settings() :: #{
%%   <<"TimecodeInsertion">> => list(any()),
%%   <<"Tier">> => list(any()),
%%   <<"TreeblockSize">> => list(any()),
%%   <<"AdaptiveQuantization">> => list(any()),
%%   <<"Slices">> => integer(),
%%   <<"ColorSpaceSettings">> => h265_color_space_settings(),
%%   <<"FramerateNumerator">> => integer(),
%%   <<"MvOverPictureBoundaries">> => list(any()),
%%   <<"QvbrQualityLevel">> => integer(),
%%   <<"GopSize">> => float(),
%%   <<"FlickerAq">> => list(any()),
%%   <<"AlternativeTransferFunction">> => list(any()),
%%   <<"GopSizeUnits">> => list(any()),
%%   <<"Bitrate">> => integer(),
%%   <<"TimecodeBurninSettings">> => timecode_burnin_settings(),
%%   <<"TileHeight">> => integer(),
%%   <<"Deblocking">> => list(any()),
%%   <<"Profile">> => list(any()),
%%   <<"RateControlMode">> => list(any()),
%%   <<"ParNumerator">> => integer(),
%%   <<"ColorMetadata">> => list(any()),
%%   <<"ScanType">> => list(any()),
%%   <<"Level">> => list(any()),
%%   <<"LookAheadRateControl">> => list(any()),
%%   <<"MinIInterval">> => integer(),
%%   <<"TilePadding">> => list(any()),
%%   <<"SceneChangeDetect">> => list(any()),
%%   <<"BufSize">> => integer(),
%%   <<"ParDenominator">> => integer(),
%%   <<"FixedAfd">> => list(any()),
%%   <<"GopClosedCadence">> => integer(),
%%   <<"MaxBitrate">> => integer(),
%%   <<"TileWidth">> => integer(),
%%   <<"AfdSignaling">> => list(any()),
%%   <<"FramerateDenominator">> => integer(),
%%   <<"MinQp">> => integer(),
%%   <<"MvTemporalPredictor">> => list(any()),
%%   <<"FilterSettings">> => h265_filter_settings()
%% }
-type h265_settings() :: #{binary() => any()}.


%% Example:
%% output_locking_settings() :: #{
%%   <<"EpochLockingSettings">> => epoch_locking_settings(),
%%   <<"PipelineLockingSettings">> => pipeline_locking_settings()
%% }
-type output_locking_settings() :: #{binary() => any()}.

%% Example:
%% teletext_destination_settings() :: #{}
-type teletext_destination_settings() :: #{}.

%% Example:
%% color_space_passthrough_settings() :: #{}
-type color_space_passthrough_settings() :: #{}.


%% Example:
%% create_multiplex_program_response() :: #{
%%   <<"MultiplexProgram">> => multiplex_program()
%% }
-type create_multiplex_program_response() :: #{binary() => any()}.


%% Example:
%% start_multiplex_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"AvailabilityZones">> => list(string()()),
%%   <<"Destinations">> => list(multiplex_output_destination()()),
%%   <<"Id">> => string(),
%%   <<"MultiplexSettings">> => multiplex_settings(),
%%   <<"Name">> => string(),
%%   <<"PipelinesRunningCount">> => integer(),
%%   <<"ProgramCount">> => integer(),
%%   <<"State">> => list(any()),
%%   <<"Tags">> => map()
%% }
-type start_multiplex_response() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"Tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% validation_error() :: #{
%%   <<"ElementPath">> => string(),
%%   <<"ErrorMessage">> => string()
%% }
-type validation_error() :: #{binary() => any()}.


%% Example:
%% transfer_input_device_request() :: #{
%%   <<"TargetCustomerId">> => string(),
%%   <<"TargetRegion">> => string(),
%%   <<"TransferMessage">> => string()
%% }
-type transfer_input_device_request() :: #{binary() => any()}.


%% Example:
%% input_request_destination_route() :: #{
%%   <<"Cidr">> => string(),
%%   <<"Gateway">> => string()
%% }
-type input_request_destination_route() :: #{binary() => any()}.


%% Example:
%% multiplex_program_packet_identifiers_map() :: #{
%%   <<"AribCaptionsPid">> => integer(),
%%   <<"AudioPids">> => list(integer()()),
%%   <<"DvbSubPids">> => list(integer()()),
%%   <<"DvbTeletextPid">> => integer(),
%%   <<"DvbTeletextPids">> => list(integer()()),
%%   <<"EcmPid">> => integer(),
%%   <<"EtvPlatformPid">> => integer(),
%%   <<"EtvSignalPid">> => integer(),
%%   <<"KlvDataPids">> => list(integer()()),
%%   <<"PcrPid">> => integer(),
%%   <<"PmtPid">> => integer(),
%%   <<"PrivateMetadataPid">> => integer(),
%%   <<"Scte27Pids">> => list(integer()()),
%%   <<"Scte35Pid">> => integer(),
%%   <<"Smpte2038Pid">> => integer(),
%%   <<"TimedMetadataPid">> => integer(),
%%   <<"VideoPid">> => integer()
%% }
-type multiplex_program_packet_identifiers_map() :: #{binary() => any()}.

%% Example:
%% stop_input_device_request() :: #{}
-type stop_input_device_request() :: #{}.


%% Example:
%% update_multiplex_response() :: #{
%%   <<"Multiplex">> => multiplex()
%% }
-type update_multiplex_response() :: #{binary() => any()}.


%% Example:
%% feature_activations() :: #{
%%   <<"InputPrepareScheduleActions">> => list(any()),
%%   <<"OutputStaticImageOverlayScheduleActions">> => list(any())
%% }
-type feature_activations() :: #{binary() => any()}.


%% Example:
%% multiplex_output_settings() :: #{
%%   <<"ContainerSettings">> => multiplex_container_settings(),
%%   <<"Destination">> => output_location_ref()
%% }
-type multiplex_output_settings() :: #{binary() => any()}.


%% Example:
%% reservation() :: #{
%%   <<"Arn">> => string(),
%%   <<"Count">> => integer(),
%%   <<"CurrencyCode">> => string(),
%%   <<"Duration">> => integer(),
%%   <<"DurationUnits">> => list(any()),
%%   <<"End">> => string(),
%%   <<"FixedPrice">> => float(),
%%   <<"Name">> => string(),
%%   <<"OfferingDescription">> => string(),
%%   <<"OfferingId">> => string(),
%%   <<"OfferingType">> => list(any()),
%%   <<"Region">> => string(),
%%   <<"RenewalSettings">> => renewal_settings(),
%%   <<"ReservationId">> => string(),
%%   <<"ResourceSpecification">> => reservation_resource_specification(),
%%   <<"Start">> => string(),
%%   <<"State">> => list(any()),
%%   <<"Tags">> => map(),
%%   <<"UsagePrice">> => float()
%% }
-type reservation() :: #{binary() => any()}.


%% Example:
%% batch_schedule_action_create_result() :: #{
%%   <<"ScheduleActions">> => list(schedule_action()())
%% }
-type batch_schedule_action_create_result() :: #{binary() => any()}.


%% Example:
%% srt_output_destination_settings() :: #{
%%   <<"EncryptionPassphraseSecretArn">> => string(),
%%   <<"StreamId">> => string(),
%%   <<"Url">> => string()
%% }
-type srt_output_destination_settings() :: #{binary() => any()}.


%% Example:
%% multicast_source() :: #{
%%   <<"SourceIp">> => string(),
%%   <<"Url">> => string()
%% }
-type multicast_source() :: #{binary() => any()}.


%% Example:
%% archive_cdn_settings() :: #{
%%   <<"ArchiveS3Settings">> => archive_s3_settings()
%% }
-type archive_cdn_settings() :: #{binary() => any()}.


%% Example:
%% describe_input_device_thumbnail_request() :: #{
%%   <<"Accept">> := list(any())
%% }
-type describe_input_device_thumbnail_request() :: #{binary() => any()}.


%% Example:
%% list_versions_response() :: #{
%%   <<"Versions">> => list(channel_engine_version_response()())
%% }
-type list_versions_response() :: #{binary() => any()}.


%% Example:
%% delete_channel_placement_group_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"Channels">> => list(string()()),
%%   <<"ClusterId">> => string(),
%%   <<"Id">> => string(),
%%   <<"Name">> => string(),
%%   <<"Nodes">> => list(string()()),
%%   <<"State">> => list(any())
%% }
-type delete_channel_placement_group_response() :: #{binary() => any()}.


%% Example:
%% list_inputs_response() :: #{
%%   <<"Inputs">> => list(input()()),
%%   <<"NextToken">> => string()
%% }
-type list_inputs_response() :: #{binary() => any()}.


%% Example:
%% ancillary_source_settings() :: #{
%%   <<"SourceAncillaryChannelNumber">> => integer()
%% }
-type ancillary_source_settings() :: #{binary() => any()}.

%% Example:
%% delete_event_bridge_rule_template_request() :: #{}
-type delete_event_bridge_rule_template_request() :: #{}.

%% Example:
%% html_motion_graphics_settings() :: #{}
-type html_motion_graphics_settings() :: #{}.


%% Example:
%% list_clusters_response() :: #{
%%   <<"Clusters">> => list(describe_cluster_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_clusters_response() :: #{binary() => any()}.


%% Example:
%% bandwidth_reduction_filter_settings() :: #{
%%   <<"PostFilterSharpening">> => list(any()),
%%   <<"Strength">> => list(any())
%% }
-type bandwidth_reduction_filter_settings() :: #{binary() => any()}.


%% Example:
%% list_channels_response() :: #{
%%   <<"Channels">> => list(channel_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_channels_response() :: #{binary() => any()}.

%% Example:
%% start_delete_monitor_deployment_request() :: #{}
-type start_delete_monitor_deployment_request() :: #{}.


%% Example:
%% nielsen_c_b_e_t() :: #{
%%   <<"CbetCheckDigitString">> => string(),
%%   <<"CbetStepaside">> => list(any()),
%%   <<"Csid">> => string()
%% }
-type nielsen_c_b_e_t() :: #{binary() => any()}.


%% Example:
%% audio_selector_settings() :: #{
%%   <<"AudioHlsRenditionSelection">> => audio_hls_rendition_selection(),
%%   <<"AudioLanguageSelection">> => audio_language_selection(),
%%   <<"AudioPidSelection">> => audio_pid_selection(),
%%   <<"AudioTrackSelection">> => audio_track_selection()
%% }
-type audio_selector_settings() :: #{binary() => any()}.


%% Example:
%% input_switch_schedule_action_settings() :: #{
%%   <<"InputAttachmentNameReference">> => string(),
%%   <<"InputClippingSettings">> => input_clipping_settings(),
%%   <<"UrlPath">> => list(string()())
%% }
-type input_switch_schedule_action_settings() :: #{binary() => any()}.


%% Example:
%% delete_cluster_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"ChannelIds">> => list(string()()),
%%   <<"ClusterType">> => list(any()),
%%   <<"Id">> => string(),
%%   <<"InstanceRoleArn">> => string(),
%%   <<"Name">> => string(),
%%   <<"NetworkSettings">> => cluster_network_settings(),
%%   <<"State">> => list(any())
%% }
-type delete_cluster_response() :: #{binary() => any()}.


%% Example:
%% dvb_sub_destination_settings() :: #{
%%   <<"Alignment">> => list(any()),
%%   <<"BackgroundColor">> => list(any()),
%%   <<"BackgroundOpacity">> => integer(),
%%   <<"Font">> => input_location(),
%%   <<"FontColor">> => list(any()),
%%   <<"FontOpacity">> => integer(),
%%   <<"FontResolution">> => integer(),
%%   <<"FontSize">> => string(),
%%   <<"OutlineColor">> => list(any()),
%%   <<"OutlineSize">> => integer(),
%%   <<"ShadowColor">> => list(any()),
%%   <<"ShadowOpacity">> => integer(),
%%   <<"ShadowXOffset">> => integer(),
%%   <<"ShadowYOffset">> => integer(),
%%   <<"TeletextGridControl">> => list(any()),
%%   <<"XPosition">> => integer(),
%%   <<"YPosition">> => integer()
%% }
-type dvb_sub_destination_settings() :: #{binary() => any()}.


%% Example:
%% video_selector() :: #{
%%   <<"ColorSpace">> => list(any()),
%%   <<"ColorSpaceSettings">> => video_selector_color_space_settings(),
%%   <<"ColorSpaceUsage">> => list(any()),
%%   <<"SelectorSettings">> => video_selector_settings()
%% }
-type video_selector() :: #{binary() => any()}.


%% Example:
%% audio_language_selection() :: #{
%%   <<"LanguageCode">> => string(),
%%   <<"LanguageSelectionPolicy">> => list(any())
%% }
-type audio_language_selection() :: #{binary() => any()}.


%% Example:
%% audio_channel_mapping() :: #{
%%   <<"InputChannelLevels">> => list(input_channel_level()()),
%%   <<"OutputChannel">> => integer()
%% }
-type audio_channel_mapping() :: #{binary() => any()}.


%% Example:
%% srt_caller_source_request() :: #{
%%   <<"Decryption">> => srt_caller_decryption_request(),
%%   <<"MinimumLatency">> => integer(),
%%   <<"SrtListenerAddress">> => string(),
%%   <<"SrtListenerPort">> => string(),
%%   <<"StreamId">> => string()
%% }
-type srt_caller_source_request() :: #{binary() => any()}.


%% Example:
%% hls_group_settings() :: #{
%%   <<"ProgramDateTime">> => list(any()),
%%   <<"KeyFormat">> => string(),
%%   <<"TimestampDeltaMilliseconds">> => integer(),
%%   <<"CaptionLanguageMappings">> => list(caption_language_mapping()()),
%%   <<"SegmentationMode">> => list(any()),
%%   <<"BaseUrlContent1">> => string(),
%%   <<"ClientCache">> => list(any()),
%%   <<"ProgramDateTimePeriod">> => integer(),
%%   <<"DiscontinuityTags">> => list(any()),
%%   <<"TimedMetadataId3Period">> => integer(),
%%   <<"StreamInfResolution">> => list(any()),
%%   <<"SegmentsPerSubdirectory">> => integer(),
%%   <<"IvSource">> => list(any()),
%%   <<"BaseUrlContent">> => string(),
%%   <<"BaseUrlManifest">> => string(),
%%   <<"IFrameOnlyPlaylists">> => list(any()),
%%   <<"TsFileMode">> => list(any()),
%%   <<"DirectoryStructure">> => list(any()),
%%   <<"IvInManifest">> => list(any()),
%%   <<"CodecSpecification">> => list(any()),
%%   <<"HlsId3SegmentTagging">> => list(any()),
%%   <<"KeyFormatVersions">> => string(),
%%   <<"AdMarkers">> => list(list(any())()),
%%   <<"KeepSegments">> => integer(),
%%   <<"KeyProviderSettings">> => key_provider_settings(),
%%   <<"HlsCdnSettings">> => hls_cdn_settings(),
%%   <<"BaseUrlManifest1">> => string(),
%%   <<"RedundantManifest">> => list(any()),
%%   <<"InputLossAction">> => list(any()),
%%   <<"SegmentLength">> => integer(),
%%   <<"MinSegmentLength">> => integer(),
%%   <<"ConstantIv">> => string(),
%%   <<"ProgramDateTimeClock">> => list(any()),
%%   <<"TimedMetadataId3Frame">> => list(any()),
%%   <<"EncryptionType">> => list(any()),
%%   <<"ManifestDurationFormat">> => list(any()),
%%   <<"ManifestCompression">> => list(any()),
%%   <<"IncompleteSegmentBehavior">> => list(any()),
%%   <<"CaptionLanguageSetting">> => list(any()),
%%   <<"OutputSelection">> => list(any()),
%%   <<"IndexNSegments">> => integer(),
%%   <<"Destination">> => output_location_ref(),
%%   <<"Mode">> => list(any())
%% }
-type hls_group_settings() :: #{binary() => any()}.


%% Example:
%% h264_filter_settings() :: #{
%%   <<"BandwidthReductionFilterSettings">> => bandwidth_reduction_filter_settings(),
%%   <<"TemporalFilterSettings">> => temporal_filter_settings()
%% }
-type h264_filter_settings() :: #{binary() => any()}.


%% Example:
%% output_settings() :: #{
%%   <<"ArchiveOutputSettings">> => archive_output_settings(),
%%   <<"CmafIngestOutputSettings">> => cmaf_ingest_output_settings(),
%%   <<"FrameCaptureOutputSettings">> => frame_capture_output_settings(),
%%   <<"HlsOutputSettings">> => hls_output_settings(),
%%   <<"MediaPackageOutputSettings">> => media_package_output_settings(),
%%   <<"MsSmoothOutputSettings">> => ms_smooth_output_settings(),
%%   <<"MultiplexOutputSettings">> => multiplex_output_settings(),
%%   <<"RtmpOutputSettings">> => rtmp_output_settings(),
%%   <<"SrtOutputSettings">> => srt_output_settings(),
%%   <<"UdpOutputSettings">> => udp_output_settings()
%% }
-type output_settings() :: #{binary() => any()}.


%% Example:
%% update_channel_request() :: #{
%%   <<"CdiInputSpecification">> => cdi_input_specification(),
%%   <<"ChannelEngineVersion">> => channel_engine_version_request(),
%%   <<"Destinations">> => list(output_destination()()),
%%   <<"DryRun">> => boolean(),
%%   <<"EncoderSettings">> => encoder_settings(),
%%   <<"InputAttachments">> => list(input_attachment()()),
%%   <<"InputSpecification">> => input_specification(),
%%   <<"LogLevel">> => list(any()),
%%   <<"Maintenance">> => maintenance_update_settings(),
%%   <<"Name">> => string(),
%%   <<"RoleArn">> => string()
%% }
-type update_channel_request() :: #{binary() => any()}.


%% Example:
%% fmp4_hls_settings() :: #{
%%   <<"AudioRenditionSets">> => string(),
%%   <<"NielsenId3Behavior">> => list(any()),
%%   <<"TimedMetadataBehavior">> => list(any())
%% }
-type fmp4_hls_settings() :: #{binary() => any()}.


%% Example:
%% multiplex_settings() :: #{
%%   <<"MaximumVideoBufferDelayMilliseconds">> => integer(),
%%   <<"TransportStreamBitrate">> => integer(),
%%   <<"TransportStreamId">> => integer(),
%%   <<"TransportStreamReservedBitrate">> => integer()
%% }
-type multiplex_settings() :: #{binary() => any()}.


%% Example:
%% audio_selector() :: #{
%%   <<"Name">> => string(),
%%   <<"SelectorSettings">> => audio_selector_settings()
%% }
-type audio_selector() :: #{binary() => any()}.


%% Example:
%% input_device_configurable_audio_channel_pair_config() :: #{
%%   <<"Id">> => integer(),
%%   <<"Profile">> => list(any())
%% }
-type input_device_configurable_audio_channel_pair_config() :: #{binary() => any()}.


%% Example:
%% av1_settings() :: #{
%%   <<"AfdSignaling">> => list(any()),
%%   <<"BufSize">> => integer(),
%%   <<"ColorSpaceSettings">> => av1_color_space_settings(),
%%   <<"FixedAfd">> => list(any()),
%%   <<"FramerateDenominator">> => integer(),
%%   <<"FramerateNumerator">> => integer(),
%%   <<"GopSize">> => float(),
%%   <<"GopSizeUnits">> => list(any()),
%%   <<"Level">> => list(any()),
%%   <<"LookAheadRateControl">> => list(any()),
%%   <<"MaxBitrate">> => integer(),
%%   <<"MinIInterval">> => integer(),
%%   <<"ParDenominator">> => integer(),
%%   <<"ParNumerator">> => integer(),
%%   <<"QvbrQualityLevel">> => integer(),
%%   <<"SceneChangeDetect">> => list(any()),
%%   <<"TimecodeBurninSettings">> => timecode_burnin_settings()
%% }
-type av1_settings() :: #{binary() => any()}.


%% Example:
%% multiplex_program_service_descriptor() :: #{
%%   <<"ProviderName">> => string(),
%%   <<"ServiceName">> => string()
%% }
-type multiplex_program_service_descriptor() :: #{binary() => any()}.


%% Example:
%% media_connect_flow_request() :: #{
%%   <<"FlowArn">> => string()
%% }
-type media_connect_flow_request() :: #{binary() => any()}.


%% Example:
%% describe_multiplex_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"AvailabilityZones">> => list(string()()),
%%   <<"Destinations">> => list(multiplex_output_destination()()),
%%   <<"Id">> => string(),
%%   <<"MultiplexSettings">> => multiplex_settings(),
%%   <<"Name">> => string(),
%%   <<"PipelinesRunningCount">> => integer(),
%%   <<"ProgramCount">> => integer(),
%%   <<"State">> => list(any()),
%%   <<"Tags">> => map()
%% }
-type describe_multiplex_response() :: #{binary() => any()}.


%% Example:
%% ip_pool_create_request() :: #{
%%   <<"Cidr">> => string()
%% }
-type ip_pool_create_request() :: #{binary() => any()}.


%% Example:
%% get_signal_map_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"CloudWatchAlarmTemplateGroupIds">> => list(string()()),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"DiscoveryEntryPointArn">> => string(),
%%   <<"ErrorMessage">> => string(),
%%   <<"EventBridgeRuleTemplateGroupIds">> => list(string()()),
%%   <<"FailedMediaResourceMap">> => map(),
%%   <<"Id">> => string(),
%%   <<"LastDiscoveredAt">> => non_neg_integer(),
%%   <<"LastSuccessfulMonitorDeployment">> => successful_monitor_deployment(),
%%   <<"MediaResourceMap">> => map(),
%%   <<"ModifiedAt">> => non_neg_integer(),
%%   <<"MonitorChangesPendingDeployment">> => boolean(),
%%   <<"MonitorDeployment">> => monitor_deployment(),
%%   <<"Name">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"Tags">> => map()
%% }
-type get_signal_map_response() :: #{binary() => any()}.

%% Example:
%% get_cloud_watch_alarm_template_request() :: #{}
-type get_cloud_watch_alarm_template_request() :: #{}.


%% Example:
%% describe_input_device_thumbnail_response() :: #{
%%   <<"Body">> => binary(),
%%   <<"ContentLength">> => float(),
%%   <<"ContentType">> => list(any()),
%%   <<"ETag">> => string(),
%%   <<"LastModified">> => non_neg_integer()
%% }
-type describe_input_device_thumbnail_response() :: #{binary() => any()}.


%% Example:
%% motion_graphics_activate_schedule_action_settings() :: #{
%%   <<"Duration">> => float(),
%%   <<"PasswordParam">> => string(),
%%   <<"Url">> => string(),
%%   <<"Username">> => string()
%% }
-type motion_graphics_activate_schedule_action_settings() :: #{binary() => any()}.


%% Example:
%% nielsen_watermarks_settings() :: #{
%%   <<"NielsenCbetSettings">> => nielsen_c_b_e_t(),
%%   <<"NielsenDistributionType">> => list(any()),
%%   <<"NielsenNaesIiNwSettings">> => nielsen_naes_ii_nw()
%% }
-type nielsen_watermarks_settings() :: #{binary() => any()}.


%% Example:
%% key_provider_settings() :: #{
%%   <<"StaticKeySettings">> => static_key_settings()
%% }
-type key_provider_settings() :: #{binary() => any()}.


%% Example:
%% avail_blanking() :: #{
%%   <<"AvailBlankingImage">> => input_location(),
%%   <<"State">> => list(any())
%% }
-type avail_blanking() :: #{binary() => any()}.


%% Example:
%% list_clusters_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_clusters_request() :: #{binary() => any()}.


%% Example:
%% output_location_ref() :: #{
%%   <<"DestinationRefId">> => string()
%% }
-type output_location_ref() :: #{binary() => any()}.


%% Example:
%% temporal_filter_settings() :: #{
%%   <<"PostFilterSharpening">> => list(any()),
%%   <<"Strength">> => list(any())
%% }
-type temporal_filter_settings() :: #{binary() => any()}.


%% Example:
%% update_multiplex_program_response() :: #{
%%   <<"MultiplexProgram">> => multiplex_program()
%% }
-type update_multiplex_program_response() :: #{binary() => any()}.

%% Example:
%% delete_input_response() :: #{}
-type delete_input_response() :: #{}.


%% Example:
%% multiplex_container_settings() :: #{
%%   <<"MultiplexM2tsSettings">> => multiplex_m2ts_settings()
%% }
-type multiplex_container_settings() :: #{binary() => any()}.


%% Example:
%% frame_capture_s3_settings() :: #{
%%   <<"CannedAcl">> => list(any())
%% }
-type frame_capture_s3_settings() :: #{binary() => any()}.


%% Example:
%% scte35_time_signal_schedule_action_settings() :: #{
%%   <<"Scte35Descriptors">> => list(scte35_descriptor()())
%% }
-type scte35_time_signal_schedule_action_settings() :: #{binary() => any()}.

%% Example:
%% arib_destination_settings() :: #{}
-type arib_destination_settings() :: #{}.


%% Example:
%% cmaf_ingest_output_settings() :: #{
%%   <<"NameModifier">> => string()
%% }
-type cmaf_ingest_output_settings() :: #{binary() => any()}.


%% Example:
%% list_channel_placement_groups_response() :: #{
%%   <<"ChannelPlacementGroups">> => list(describe_channel_placement_group_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_channel_placement_groups_response() :: #{binary() => any()}.


%% Example:
%% schedule_action() :: #{
%%   <<"ActionName">> => string(),
%%   <<"ScheduleActionSettings">> => schedule_action_settings(),
%%   <<"ScheduleActionStartSettings">> => schedule_action_start_settings()
%% }
-type schedule_action() :: #{binary() => any()}.


%% Example:
%% update_multiplex_program_request() :: #{
%%   <<"MultiplexProgramSettings">> => multiplex_program_settings()
%% }
-type update_multiplex_program_request() :: #{binary() => any()}.


%% Example:
%% epoch_locking_settings() :: #{
%%   <<"CustomEpoch">> => string(),
%%   <<"JamSyncTime">> => string()
%% }
-type epoch_locking_settings() :: #{binary() => any()}.


%% Example:
%% static_image_deactivate_schedule_action_settings() :: #{
%%   <<"FadeOut">> => integer(),
%%   <<"Layer">> => integer()
%% }
-type static_image_deactivate_schedule_action_settings() :: #{binary() => any()}.

%% Example:
%% describe_multiplex_request() :: #{}
-type describe_multiplex_request() :: #{}.


%% Example:
%% media_package_group_settings() :: #{
%%   <<"Destination">> => output_location_ref()
%% }
-type media_package_group_settings() :: #{binary() => any()}.


%% Example:
%% create_signal_map_request() :: #{
%%   <<"CloudWatchAlarmTemplateGroupIdentifiers">> => list(string()()),
%%   <<"Description">> => string(),
%%   <<"DiscoveryEntryPointArn">> := string(),
%%   <<"EventBridgeRuleTemplateGroupIdentifiers">> => list(string()()),
%%   <<"Name">> := string(),
%%   <<"RequestId">> => string(),
%%   <<"Tags">> => map()
%% }
-type create_signal_map_request() :: #{binary() => any()}.

%% Example:
%% delete_multiplex_request() :: #{}
-type delete_multiplex_request() :: #{}.


%% Example:
%% teletext_source_settings() :: #{
%%   <<"OutputRectangle">> => caption_rectangle(),
%%   <<"PageNumber">> => string()
%% }
-type teletext_source_settings() :: #{binary() => any()}.


%% Example:
%% create_network_request() :: #{
%%   <<"IpPools">> => list(ip_pool_create_request()()),
%%   <<"Name">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"Routes">> => list(route_create_request()()),
%%   <<"Tags">> => map()
%% }
-type create_network_request() :: #{binary() => any()}.


%% Example:
%% maintenance_status() :: #{
%%   <<"MaintenanceDay">> => list(any()),
%%   <<"MaintenanceDeadline">> => string(),
%%   <<"MaintenanceScheduledDate">> => string(),
%%   <<"MaintenanceStartTime">> => string()
%% }
-type maintenance_status() :: #{binary() => any()}.


%% Example:
%% create_channel_placement_group_request() :: #{
%%   <<"Name">> => string(),
%%   <<"Nodes">> => list(string()()),
%%   <<"RequestId">> => string(),
%%   <<"Tags">> => map()
%% }
-type create_channel_placement_group_request() :: #{binary() => any()}.

%% Example:
%% frame_capture_hls_settings() :: #{}
-type frame_capture_hls_settings() :: #{}.

%% Example:
%% delete_cluster_request() :: #{}
-type delete_cluster_request() :: #{}.


%% Example:
%% esam() :: #{
%%   <<"AcquisitionPointId">> => string(),
%%   <<"AdAvailOffset">> => integer(),
%%   <<"PasswordParam">> => string(),
%%   <<"PoisEndpoint">> => string(),
%%   <<"Username">> => string(),
%%   <<"ZoneIdentity">> => string()
%% }
-type esam() :: #{binary() => any()}.


%% Example:
%% static_image_output_activate_schedule_action_settings() :: #{
%%   <<"Duration">> => integer(),
%%   <<"FadeIn">> => integer(),
%%   <<"FadeOut">> => integer(),
%%   <<"Height">> => integer(),
%%   <<"Image">> => input_location(),
%%   <<"ImageX">> => integer(),
%%   <<"ImageY">> => integer(),
%%   <<"Layer">> => integer(),
%%   <<"Opacity">> => integer(),
%%   <<"OutputNames">> => list(string()()),
%%   <<"Width">> => integer()
%% }
-type static_image_output_activate_schedule_action_settings() :: #{binary() => any()}.


%% Example:
%% input_whitelist_rule() :: #{
%%   <<"Cidr">> => string()
%% }
-type input_whitelist_rule() :: #{binary() => any()}.

%% Example:
%% describe_input_security_group_request() :: #{}
-type describe_input_security_group_request() :: #{}.


%% Example:
%% vpc_output_settings_description() :: #{
%%   <<"AvailabilityZones">> => list(string()()),
%%   <<"NetworkInterfaceIds">> => list(string()()),
%%   <<"SecurityGroupIds">> => list(string()()),
%%   <<"SubnetIds">> => list(string()())
%% }
-type vpc_output_settings_description() :: #{binary() => any()}.


%% Example:
%% blackout_slate() :: #{
%%   <<"BlackoutSlateImage">> => input_location(),
%%   <<"NetworkEndBlackout">> => list(any()),
%%   <<"NetworkEndBlackoutImage">> => input_location(),
%%   <<"NetworkId">> => string(),
%%   <<"State">> => list(any())
%% }
-type blackout_slate() :: #{binary() => any()}.


%% Example:
%% vpc_output_settings() :: #{
%%   <<"PublicAddressAllocationIds">> => list(string()()),
%%   <<"SecurityGroupIds">> => list(string()()),
%%   <<"SubnetIds">> => list(string()())
%% }
-type vpc_output_settings() :: #{binary() => any()}.


%% Example:
%% input_prepare_schedule_action_settings() :: #{
%%   <<"InputAttachmentNameReference">> => string(),
%%   <<"InputClippingSettings">> => input_clipping_settings(),
%%   <<"UrlPath">> => list(string()())
%% }
-type input_prepare_schedule_action_settings() :: #{binary() => any()}.


%% Example:
%% create_event_bridge_rule_template_group_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"Id">> => string(),
%%   <<"ModifiedAt">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"Tags">> => map()
%% }
-type create_event_bridge_rule_template_group_response() :: #{binary() => any()}.


%% Example:
%% failover_condition() :: #{
%%   <<"FailoverConditionSettings">> => failover_condition_settings()
%% }
-type failover_condition() :: #{binary() => any()}.


%% Example:
%% update_event_bridge_rule_template_request() :: #{
%%   <<"Description">> => string(),
%%   <<"EventTargets">> => list(event_bridge_rule_template_target()()),
%%   <<"EventType">> => list(any()),
%%   <<"GroupIdentifier">> => string(),
%%   <<"Name">> => string()
%% }
-type update_event_bridge_rule_template_request() :: #{binary() => any()}.


%% Example:
%% dvb_tdt_settings() :: #{
%%   <<"RepInterval">> => integer()
%% }
-type dvb_tdt_settings() :: #{binary() => any()}.


%% Example:
%% list_input_devices_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_input_devices_request() :: #{binary() => any()}.


%% Example:
%% standard_hls_settings() :: #{
%%   <<"AudioRenditionSets">> => string(),
%%   <<"M3u8Settings">> => m3u8_settings()
%% }
-type standard_hls_settings() :: #{binary() => any()}.


%% Example:
%% unprocessable_entity_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"ValidationErrors">> => list(validation_error()())
%% }
-type unprocessable_entity_exception() :: #{binary() => any()}.


%% Example:
%% encoder_settings() :: #{
%%   <<"AudioDescriptions">> => list(audio_description()()),
%%   <<"AvailBlanking">> => avail_blanking(),
%%   <<"AvailConfiguration">> => avail_configuration(),
%%   <<"BlackoutSlate">> => blackout_slate(),
%%   <<"CaptionDescriptions">> => list(caption_description()()),
%%   <<"ColorCorrectionSettings">> => color_correction_settings(),
%%   <<"FeatureActivations">> => feature_activations(),
%%   <<"GlobalConfiguration">> => global_configuration(),
%%   <<"MotionGraphicsConfiguration">> => motion_graphics_configuration(),
%%   <<"NielsenConfiguration">> => nielsen_configuration(),
%%   <<"OutputGroups">> => list(output_group()()),
%%   <<"ThumbnailConfiguration">> => thumbnail_configuration(),
%%   <<"TimecodeConfig">> => timecode_config(),
%%   <<"VideoDescriptions">> => list(video_description()())
%% }
-type encoder_settings() :: #{binary() => any()}.

%% Example:
%% delete_channel_placement_group_request() :: #{}
-type delete_channel_placement_group_request() :: #{}.


%% Example:
%% webvtt_destination_settings() :: #{
%%   <<"StyleControl">> => list(any())
%% }
-type webvtt_destination_settings() :: #{binary() => any()}.


%% Example:
%% avail_settings() :: #{
%%   <<"Esam">> => esam(),
%%   <<"Scte35SpliceInsert">> => scte35_splice_insert(),
%%   <<"Scte35TimeSignalApos">> => scte35_time_signal_apos()
%% }
-type avail_settings() :: #{binary() => any()}.

%% Example:
%% dolby_vision81_settings() :: #{}
-type dolby_vision81_settings() :: #{}.


%% Example:
%% list_reservations_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Reservations">> => list(reservation()())
%% }
-type list_reservations_response() :: #{binary() => any()}.

%% Example:
%% start_input_device_maintenance_window_request() :: #{}
-type start_input_device_maintenance_window_request() :: #{}.


%% Example:
%% h265_filter_settings() :: #{
%%   <<"BandwidthReductionFilterSettings">> => bandwidth_reduction_filter_settings(),
%%   <<"TemporalFilterSettings">> => temporal_filter_settings()
%% }
-type h265_filter_settings() :: #{binary() => any()}.


%% Example:
%% hls_timed_metadata_schedule_action_settings() :: #{
%%   <<"Id3">> => string()
%% }
-type hls_timed_metadata_schedule_action_settings() :: #{binary() => any()}.


%% Example:
%% successful_monitor_deployment() :: #{
%%   <<"DetailsUri">> => string(),
%%   <<"Status">> => list(any())
%% }
-type successful_monitor_deployment() :: #{binary() => any()}.

%% Example:
%% immediate_mode_schedule_action_start_settings() :: #{}
-type immediate_mode_schedule_action_start_settings() :: #{}.


%% Example:
%% update_network_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"AssociatedClusterIds">> => list(string()()),
%%   <<"Id">> => string(),
%%   <<"IpPools">> => list(ip_pool()()),
%%   <<"Name">> => string(),
%%   <<"Routes">> => list(route()()),
%%   <<"State">> => list(any())
%% }
-type update_network_response() :: #{binary() => any()}.


%% Example:
%% thumbnail_configuration() :: #{
%%   <<"State">> => list(any())
%% }
-type thumbnail_configuration() :: #{binary() => any()}.


%% Example:
%% describe_reservation_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"Count">> => integer(),
%%   <<"CurrencyCode">> => string(),
%%   <<"Duration">> => integer(),
%%   <<"DurationUnits">> => list(any()),
%%   <<"End">> => string(),
%%   <<"FixedPrice">> => float(),
%%   <<"Name">> => string(),
%%   <<"OfferingDescription">> => string(),
%%   <<"OfferingId">> => string(),
%%   <<"OfferingType">> => list(any()),
%%   <<"Region">> => string(),
%%   <<"RenewalSettings">> => renewal_settings(),
%%   <<"ReservationId">> => string(),
%%   <<"ResourceSpecification">> => reservation_resource_specification(),
%%   <<"Start">> => string(),
%%   <<"State">> => list(any()),
%%   <<"Tags">> => map(),
%%   <<"UsagePrice">> => float()
%% }
-type describe_reservation_response() :: #{binary() => any()}.


%% Example:
%% remix_settings() :: #{
%%   <<"ChannelMappings">> => list(audio_channel_mapping()()),
%%   <<"ChannelsIn">> => integer(),
%%   <<"ChannelsOut">> => integer()
%% }
-type remix_settings() :: #{binary() => any()}.


%% Example:
%% static_key_settings() :: #{
%%   <<"KeyProviderServer">> => input_location(),
%%   <<"StaticKeyValue">> => string()
%% }
-type static_key_settings() :: #{binary() => any()}.


%% Example:
%% thumbnail_detail() :: #{
%%   <<"PipelineId">> => string(),
%%   <<"Thumbnails">> => list(thumbnail()())
%% }
-type thumbnail_detail() :: #{binary() => any()}.


%% Example:
%% multiplex_video_settings() :: #{
%%   <<"ConstantBitrate">> => integer(),
%%   <<"StatmuxSettings">> => multiplex_statmux_video_settings()
%% }
-type multiplex_video_settings() :: #{binary() => any()}.


%% Example:
%% burn_in_destination_settings() :: #{
%%   <<"Alignment">> => list(any()),
%%   <<"BackgroundColor">> => list(any()),
%%   <<"BackgroundOpacity">> => integer(),
%%   <<"Font">> => input_location(),
%%   <<"FontColor">> => list(any()),
%%   <<"FontOpacity">> => integer(),
%%   <<"FontResolution">> => integer(),
%%   <<"FontSize">> => string(),
%%   <<"OutlineColor">> => list(any()),
%%   <<"OutlineSize">> => integer(),
%%   <<"ShadowColor">> => list(any()),
%%   <<"ShadowOpacity">> => integer(),
%%   <<"ShadowXOffset">> => integer(),
%%   <<"ShadowYOffset">> => integer(),
%%   <<"TeletextGridControl">> => list(any()),
%%   <<"XPosition">> => integer(),
%%   <<"YPosition">> => integer()
%% }
-type burn_in_destination_settings() :: #{binary() => any()}.


%% Example:
%% mpeg2_settings() :: #{
%%   <<"AdaptiveQuantization">> => list(any()),
%%   <<"AfdSignaling">> => list(any()),
%%   <<"ColorMetadata">> => list(any()),
%%   <<"ColorSpace">> => list(any()),
%%   <<"DisplayAspectRatio">> => list(any()),
%%   <<"FilterSettings">> => mpeg2_filter_settings(),
%%   <<"FixedAfd">> => list(any()),
%%   <<"FramerateDenominator">> => integer(),
%%   <<"FramerateNumerator">> => integer(),
%%   <<"GopClosedCadence">> => integer(),
%%   <<"GopNumBFrames">> => integer(),
%%   <<"GopSize">> => float(),
%%   <<"GopSizeUnits">> => list(any()),
%%   <<"ScanType">> => list(any()),
%%   <<"SubgopLength">> => list(any()),
%%   <<"TimecodeBurninSettings">> => timecode_burnin_settings(),
%%   <<"TimecodeInsertion">> => list(any())
%% }
-type mpeg2_settings() :: #{binary() => any()}.


%% Example:
%% create_node_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"ChannelPlacementGroups">> => list(string()()),
%%   <<"ClusterId">> => string(),
%%   <<"ConnectionState">> => list(any()),
%%   <<"Id">> => string(),
%%   <<"InstanceArn">> => string(),
%%   <<"Name">> => string(),
%%   <<"NodeInterfaceMappings">> => list(node_interface_mapping()()),
%%   <<"Role">> => list(any()),
%%   <<"State">> => list(any())
%% }
-type create_node_response() :: #{binary() => any()}.


%% Example:
%% update_event_bridge_rule_template_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"EventTargets">> => list(event_bridge_rule_template_target()()),
%%   <<"EventType">> => list(any()),
%%   <<"GroupId">> => string(),
%%   <<"Id">> => string(),
%%   <<"ModifiedAt">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"Tags">> => map()
%% }
-type update_event_bridge_rule_template_response() :: #{binary() => any()}.


%% Example:
%% create_cloud_watch_alarm_template_group_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"Id">> => string(),
%%   <<"ModifiedAt">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"Tags">> => map()
%% }
-type create_cloud_watch_alarm_template_group_response() :: #{binary() => any()}.


%% Example:
%% multiplex() :: #{
%%   <<"Arn">> => string(),
%%   <<"AvailabilityZones">> => list(string()()),
%%   <<"Destinations">> => list(multiplex_output_destination()()),
%%   <<"Id">> => string(),
%%   <<"MultiplexSettings">> => multiplex_settings(),
%%   <<"Name">> => string(),
%%   <<"PipelinesRunningCount">> => integer(),
%%   <<"ProgramCount">> => integer(),
%%   <<"State">> => list(any()),
%%   <<"Tags">> => map()
%% }
-type multiplex() :: #{binary() => any()}.


%% Example:
%% cmaf_ingest_group_settings() :: #{
%%   <<"Destination">> => output_location_ref(),
%%   <<"Id3Behavior">> => list(any()),
%%   <<"Id3NameModifier">> => string(),
%%   <<"KlvBehavior">> => list(any()),
%%   <<"KlvNameModifier">> => string(),
%%   <<"NielsenId3Behavior">> => list(any()),
%%   <<"NielsenId3NameModifier">> => string(),
%%   <<"Scte35NameModifier">> => string(),
%%   <<"Scte35Type">> => list(any()),
%%   <<"SegmentLength">> => integer(),
%%   <<"SegmentLengthUnits">> => list(any()),
%%   <<"SendDelayMs">> => integer()
%% }
-type cmaf_ingest_group_settings() :: #{binary() => any()}.


%% Example:
%% input_vpc_request() :: #{
%%   <<"SecurityGroupIds">> => list(string()()),
%%   <<"SubnetIds">> => list(string()())
%% }
-type input_vpc_request() :: #{binary() => any()}.


%% Example:
%% hls_output_settings() :: #{
%%   <<"H265PackagingType">> => list(any()),
%%   <<"HlsSettings">> => hls_settings(),
%%   <<"NameModifier">> => string(),
%%   <<"SegmentModifier">> => string()
%% }
-type hls_output_settings() :: #{binary() => any()}.

%% Example:
%% accept_input_device_transfer_response() :: #{}
-type accept_input_device_transfer_response() :: #{}.


%% Example:
%% update_event_bridge_rule_template_group_request() :: #{
%%   <<"Description">> => string()
%% }
-type update_event_bridge_rule_template_group_request() :: #{binary() => any()}.


%% Example:
%% delete_node_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"ChannelPlacementGroups">> => list(string()()),
%%   <<"ClusterId">> => string(),
%%   <<"ConnectionState">> => list(any()),
%%   <<"Id">> => string(),
%%   <<"InstanceArn">> => string(),
%%   <<"Name">> => string(),
%%   <<"NodeInterfaceMappings">> => list(node_interface_mapping()()),
%%   <<"Role">> => list(any()),
%%   <<"State">> => list(any())
%% }
-type delete_node_response() :: #{binary() => any()}.


%% Example:
%% input_device_summary() :: #{
%%   <<"Arn">> => string(),
%%   <<"AvailabilityZone">> => string(),
%%   <<"ConnectionState">> => list(any()),
%%   <<"DeviceSettingsSyncState">> => list(any()),
%%   <<"DeviceUpdateStatus">> => list(any()),
%%   <<"HdDeviceSettings">> => input_device_hd_settings(),
%%   <<"Id">> => string(),
%%   <<"MacAddress">> => string(),
%%   <<"MedialiveInputArns">> => list(string()()),
%%   <<"Name">> => string(),
%%   <<"NetworkSettings">> => input_device_network_settings(),
%%   <<"OutputType">> => list(any()),
%%   <<"SerialNumber">> => string(),
%%   <<"Tags">> => map(),
%%   <<"Type">> => list(any()),
%%   <<"UhdDeviceSettings">> => input_device_uhd_settings()
%% }
-type input_device_summary() :: #{binary() => any()}.


%% Example:
%% ac3_settings() :: #{
%%   <<"AttenuationControl">> => list(any()),
%%   <<"Bitrate">> => float(),
%%   <<"BitstreamMode">> => list(any()),
%%   <<"CodingMode">> => list(any()),
%%   <<"Dialnorm">> => integer(),
%%   <<"DrcProfile">> => list(any()),
%%   <<"LfeFilter">> => list(any()),
%%   <<"MetadataControl">> => list(any())
%% }
-type ac3_settings() :: #{binary() => any()}.


%% Example:
%% multiplex_program_settings() :: #{
%%   <<"PreferredChannelPipeline">> => list(any()),
%%   <<"ProgramNumber">> => integer(),
%%   <<"ServiceDescriptor">> => multiplex_program_service_descriptor(),
%%   <<"VideoSettings">> => multiplex_video_settings()
%% }
-type multiplex_program_settings() :: #{binary() => any()}.


%% Example:
%% color_correction_settings() :: #{
%%   <<"GlobalColorCorrections">> => list(color_correction()())
%% }
-type color_correction_settings() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% describe_input_security_group_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"Id">> => string(),
%%   <<"Inputs">> => list(string()()),
%%   <<"State">> => list(any()),
%%   <<"Tags">> => map(),
%%   <<"WhitelistRules">> => list(input_whitelist_rule()())
%% }
-type describe_input_security_group_response() :: #{binary() => any()}.

%% Example:
%% describe_reservation_request() :: #{}
-type describe_reservation_request() :: #{}.


%% Example:
%% internal_server_error_exception() :: #{
%%   <<"Message">> => string()
%% }
-type internal_server_error_exception() :: #{binary() => any()}.

%% Example:
%% delete_node_request() :: #{}
-type delete_node_request() :: #{}.


%% Example:
%% list_cloud_watch_alarm_templates_response() :: #{
%%   <<"CloudWatchAlarmTemplates">> => list(cloud_watch_alarm_template_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_cloud_watch_alarm_templates_response() :: #{binary() => any()}.


%% Example:
%% list_event_bridge_rule_template_groups_response() :: #{
%%   <<"EventBridgeRuleTemplateGroups">> => list(event_bridge_rule_template_group_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_event_bridge_rule_template_groups_response() :: #{binary() => any()}.

%% Example:
%% reject_input_device_transfer_response() :: #{}
-type reject_input_device_transfer_response() :: #{}.


%% Example:
%% embedded_source_settings() :: #{
%%   <<"Convert608To708">> => list(any()),
%%   <<"Scte20Detection">> => list(any()),
%%   <<"Source608ChannelNumber">> => integer(),
%%   <<"Source608TrackNumber">> => integer()
%% }
-type embedded_source_settings() :: #{binary() => any()}.


%% Example:
%% create_multiplex_response() :: #{
%%   <<"Multiplex">> => multiplex()
%% }
-type create_multiplex_response() :: #{binary() => any()}.


%% Example:
%% list_event_bridge_rule_template_groups_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"SignalMapIdentifier">> => string()
%% }
-type list_event_bridge_rule_template_groups_request() :: #{binary() => any()}.


%% Example:
%% media_resource() :: #{
%%   <<"Destinations">> => list(media_resource_neighbor()()),
%%   <<"Name">> => string(),
%%   <<"Sources">> => list(media_resource_neighbor()())
%% }
-type media_resource() :: #{binary() => any()}.


%% Example:
%% create_cloud_watch_alarm_template_request() :: #{
%%   <<"ComparisonOperator">> := list(any()),
%%   <<"DatapointsToAlarm">> => integer(),
%%   <<"Description">> => string(),
%%   <<"EvaluationPeriods">> := integer(),
%%   <<"GroupIdentifier">> := string(),
%%   <<"MetricName">> := string(),
%%   <<"Name">> := string(),
%%   <<"Period">> := integer(),
%%   <<"RequestId">> => string(),
%%   <<"Statistic">> := list(any()),
%%   <<"Tags">> => map(),
%%   <<"TargetResourceType">> := list(any()),
%%   <<"Threshold">> := float(),
%%   <<"TreatMissingData">> := list(any())
%% }
-type create_cloud_watch_alarm_template_request() :: #{binary() => any()}.


%% Example:
%% channel() :: #{
%%   <<"AnywhereSettings">> => describe_anywhere_settings(),
%%   <<"Arn">> => string(),
%%   <<"CdiInputSpecification">> => cdi_input_specification(),
%%   <<"ChannelClass">> => list(any()),
%%   <<"ChannelEngineVersion">> => channel_engine_version_response(),
%%   <<"Destinations">> => list(output_destination()()),
%%   <<"EgressEndpoints">> => list(channel_egress_endpoint()()),
%%   <<"EncoderSettings">> => encoder_settings(),
%%   <<"Id">> => string(),
%%   <<"InputAttachments">> => list(input_attachment()()),
%%   <<"InputSpecification">> => input_specification(),
%%   <<"LogLevel">> => list(any()),
%%   <<"Maintenance">> => maintenance_status(),
%%   <<"Name">> => string(),
%%   <<"PipelineDetails">> => list(pipeline_detail()()),
%%   <<"PipelinesRunningCount">> => integer(),
%%   <<"RoleArn">> => string(),
%%   <<"State">> => list(any()),
%%   <<"Tags">> => map(),
%%   <<"Vpc">> => vpc_output_settings_description()
%% }
-type channel() :: #{binary() => any()}.

%% Example:
%% list_versions_request() :: #{}
-type list_versions_request() :: #{}.


%% Example:
%% caption_description() :: #{
%%   <<"Accessibility">> => list(any()),
%%   <<"CaptionDashRoles">> => list(list(any())()),
%%   <<"CaptionSelectorName">> => string(),
%%   <<"DestinationSettings">> => caption_destination_settings(),
%%   <<"DvbDashAccessibility">> => list(any()),
%%   <<"LanguageCode">> => string(),
%%   <<"LanguageDescription">> => string(),
%%   <<"Name">> => string()
%% }
-type caption_description() :: #{binary() => any()}.


%% Example:
%% input_device_media_connect_settings() :: #{
%%   <<"FlowArn">> => string(),
%%   <<"RoleArn">> => string(),
%%   <<"SecretArn">> => string(),
%%   <<"SourceName">> => string()
%% }
-type input_device_media_connect_settings() :: #{binary() => any()}.


%% Example:
%% start_channel_response() :: #{
%%   <<"AnywhereSettings">> => describe_anywhere_settings(),
%%   <<"Arn">> => string(),
%%   <<"CdiInputSpecification">> => cdi_input_specification(),
%%   <<"ChannelClass">> => list(any()),
%%   <<"ChannelEngineVersion">> => channel_engine_version_response(),
%%   <<"Destinations">> => list(output_destination()()),
%%   <<"EgressEndpoints">> => list(channel_egress_endpoint()()),
%%   <<"EncoderSettings">> => encoder_settings(),
%%   <<"Id">> => string(),
%%   <<"InputAttachments">> => list(input_attachment()()),
%%   <<"InputSpecification">> => input_specification(),
%%   <<"LogLevel">> => list(any()),
%%   <<"Maintenance">> => maintenance_status(),
%%   <<"Name">> => string(),
%%   <<"PipelineDetails">> => list(pipeline_detail()()),
%%   <<"PipelinesRunningCount">> => integer(),
%%   <<"RoleArn">> => string(),
%%   <<"State">> => list(any()),
%%   <<"Tags">> => map(),
%%   <<"Vpc">> => vpc_output_settings_description()
%% }
-type start_channel_response() :: #{binary() => any()}.


%% Example:
%% frame_capture_cdn_settings() :: #{
%%   <<"FrameCaptureS3Settings">> => frame_capture_s3_settings()
%% }
-type frame_capture_cdn_settings() :: #{binary() => any()}.


%% Example:
%% hdr10_settings() :: #{
%%   <<"MaxCll">> => integer(),
%%   <<"MaxFall">> => integer()
%% }
-type hdr10_settings() :: #{binary() => any()}.


%% Example:
%% offering() :: #{
%%   <<"Arn">> => string(),
%%   <<"CurrencyCode">> => string(),
%%   <<"Duration">> => integer(),
%%   <<"DurationUnits">> => list(any()),
%%   <<"FixedPrice">> => float(),
%%   <<"OfferingDescription">> => string(),
%%   <<"OfferingId">> => string(),
%%   <<"OfferingType">> => list(any()),
%%   <<"Region">> => string(),
%%   <<"ResourceSpecification">> => reservation_resource_specification(),
%%   <<"UsagePrice">> => float()
%% }
-type offering() :: #{binary() => any()}.

%% Example:
%% raw_settings() :: #{}
-type raw_settings() :: #{}.

%% Example:
%% claim_device_response() :: #{}
-type claim_device_response() :: #{}.


%% Example:
%% pipeline_pause_state_settings() :: #{
%%   <<"PipelineId">> => list(any())
%% }
-type pipeline_pause_state_settings() :: #{binary() => any()}.


%% Example:
%% video_selector_color_space_settings() :: #{
%%   <<"Hdr10Settings">> => hdr10_settings()
%% }
-type video_selector_color_space_settings() :: #{binary() => any()}.


%% Example:
%% audio_track_selection() :: #{
%%   <<"DolbyEDecode">> => audio_dolby_e_decode(),
%%   <<"Tracks">> => list(audio_track()())
%% }
-type audio_track_selection() :: #{binary() => any()}.


%% Example:
%% frame_capture_settings() :: #{
%%   <<"CaptureInterval">> => integer(),
%%   <<"CaptureIntervalUnits">> => list(any()),
%%   <<"TimecodeBurninSettings">> => timecode_burnin_settings()
%% }
-type frame_capture_settings() :: #{binary() => any()}.


%% Example:
%% audio_silence_failover_settings() :: #{
%%   <<"AudioSelectorName">> => string(),
%%   <<"AudioSilenceThresholdMsec">> => integer()
%% }
-type audio_silence_failover_settings() :: #{binary() => any()}.

%% Example:
%% reboot_input_device_response() :: #{}
-type reboot_input_device_response() :: #{}.


%% Example:
%% gateway_timeout_exception() :: #{
%%   <<"Message">> => string()
%% }
-type gateway_timeout_exception() :: #{binary() => any()}.


%% Example:
%% srt_settings() :: #{
%%   <<"SrtCallerSources">> => list(srt_caller_source()())
%% }
-type srt_settings() :: #{binary() => any()}.


%% Example:
%% rtmp_output_settings() :: #{
%%   <<"CertificateMode">> => list(any()),
%%   <<"ConnectionRetryInterval">> => integer(),
%%   <<"Destination">> => output_location_ref(),
%%   <<"NumRetries">> => integer()
%% }
-type rtmp_output_settings() :: #{binary() => any()}.


%% Example:
%% m2ts_settings() :: #{
%%   <<"EbpPlacement">> => list(any()),
%%   <<"EsRateInPes">> => list(any()),
%%   <<"Klv">> => list(any()),
%%   <<"PcrControl">> => list(any()),
%%   <<"Scte35PrerollPullupMilliseconds">> => float(),
%%   <<"AbsentInputAudioBehavior">> => list(any()),
%%   <<"AribCaptionsPidControl">> => list(any()),
%%   <<"ProgramNum">> => integer(),
%%   <<"EbpLookaheadMs">> => integer(),
%%   <<"AribCaptionsPid">> => string(),
%%   <<"CcDescriptor">> => list(any()),
%%   <<"KlvDataPids">> => string(),
%%   <<"PcrPid">> => string(),
%%   <<"PatInterval">> => integer(),
%%   <<"TimedMetadataPid">> => string(),
%%   <<"FragmentTime">> => float(),
%%   <<"PmtPid">> => string(),
%%   <<"DvbSdtSettings">> => dvb_sdt_settings(),
%%   <<"NullPacketBitrate">> => float(),
%%   <<"Scte35Control">> => list(any()),
%%   <<"AudioBufferModel">> => list(any()),
%%   <<"Bitrate">> => integer(),
%%   <<"EtvSignalPid">> => string(),
%%   <<"AudioStreamType">> => list(any()),
%%   <<"Scte35Pid">> => string(),
%%   <<"VideoPid">> => string(),
%%   <<"PcrPeriod">> => integer(),
%%   <<"EcmPid">> => string(),
%%   <<"AudioPids">> => string(),
%%   <<"Ebif">> => list(any()),
%%   <<"RateMode">> => list(any()),
%%   <<"Arib">> => list(any()),
%%   <<"DvbNitSettings">> => dvb_nit_settings(),
%%   <<"SegmentationTime">> => float(),
%%   <<"BufferModel">> => list(any()),
%%   <<"SegmentationMarkers">> => list(any()),
%%   <<"DvbTeletextPid">> => string(),
%%   <<"DvbSubPids">> => string(),
%%   <<"AudioFramesPerPes">> => integer(),
%%   <<"TimedMetadataBehavior">> => list(any()),
%%   <<"TransportStreamId">> => integer(),
%%   <<"SegmentationStyle">> => list(any()),
%%   <<"EtvPlatformPid">> => string(),
%%   <<"PmtInterval">> => integer(),
%%   <<"Scte27Pids">> => string(),
%%   <<"NielsenId3Behavior">> => list(any()),
%%   <<"DvbTdtSettings">> => dvb_tdt_settings(),
%%   <<"EbpAudioInterval">> => list(any())
%% }
-type m2ts_settings() :: #{binary() => any()}.


%% Example:
%% dvb_sdt_settings() :: #{
%%   <<"OutputSdt">> => list(any()),
%%   <<"RepInterval">> => integer(),
%%   <<"ServiceName">> => string(),
%%   <<"ServiceProviderName">> => string()
%% }
-type dvb_sdt_settings() :: #{binary() => any()}.


%% Example:
%% input_destination_request() :: #{
%%   <<"Network">> => string(),
%%   <<"NetworkRoutes">> => list(input_request_destination_route()()),
%%   <<"StaticIpAddress">> => string(),
%%   <<"StreamName">> => string()
%% }
-type input_destination_request() :: #{binary() => any()}.


%% Example:
%% schedule_action_start_settings() :: #{
%%   <<"FixedModeScheduleActionStartSettings">> => fixed_mode_schedule_action_start_settings(),
%%   <<"FollowModeScheduleActionStartSettings">> => follow_mode_schedule_action_start_settings(),
%%   <<"ImmediateModeScheduleActionStartSettings">> => immediate_mode_schedule_action_start_settings()
%% }
-type schedule_action_start_settings() :: #{binary() => any()}.


%% Example:
%% multiplex_m2ts_settings() :: #{
%%   <<"AbsentInputAudioBehavior">> => list(any()),
%%   <<"Arib">> => list(any()),
%%   <<"AudioBufferModel">> => list(any()),
%%   <<"AudioFramesPerPes">> => integer(),
%%   <<"AudioStreamType">> => list(any()),
%%   <<"CcDescriptor">> => list(any()),
%%   <<"Ebif">> => list(any()),
%%   <<"EsRateInPes">> => list(any()),
%%   <<"Klv">> => list(any()),
%%   <<"NielsenId3Behavior">> => list(any()),
%%   <<"PcrControl">> => list(any()),
%%   <<"PcrPeriod">> => integer(),
%%   <<"Scte35Control">> => list(any()),
%%   <<"Scte35PrerollPullupMilliseconds">> => float()
%% }
-type multiplex_m2ts_settings() :: #{binary() => any()}.


%% Example:
%% update_input_response() :: #{
%%   <<"Input">> => input()
%% }
-type update_input_response() :: #{binary() => any()}.


%% Example:
%% input_destination_vpc() :: #{
%%   <<"AvailabilityZone">> => string(),
%%   <<"NetworkInterfaceId">> => string()
%% }
-type input_destination_vpc() :: #{binary() => any()}.

%% Example:
%% delete_schedule_request() :: #{}
-type delete_schedule_request() :: #{}.


%% Example:
%% eac3_atmos_settings() :: #{
%%   <<"Bitrate">> => float(),
%%   <<"CodingMode">> => list(any()),
%%   <<"Dialnorm">> => integer(),
%%   <<"DrcLine">> => list(any()),
%%   <<"DrcRf">> => list(any()),
%%   <<"HeightTrim">> => float(),
%%   <<"SurroundTrim">> => float()
%% }
-type eac3_atmos_settings() :: #{binary() => any()}.


%% Example:
%% pipeline_detail() :: #{
%%   <<"ActiveInputAttachmentName">> => string(),
%%   <<"ActiveInputSwitchActionName">> => string(),
%%   <<"ActiveMotionGraphicsActionName">> => string(),
%%   <<"ActiveMotionGraphicsUri">> => string(),
%%   <<"ChannelEngineVersion">> => channel_engine_version_response(),
%%   <<"PipelineId">> => string()
%% }
-type pipeline_detail() :: #{binary() => any()}.


%% Example:
%% list_event_bridge_rule_templates_response() :: #{
%%   <<"EventBridgeRuleTemplates">> => list(event_bridge_rule_template_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_event_bridge_rule_templates_response() :: #{binary() => any()}.

%% Example:
%% rtmp_caption_info_destination_settings() :: #{}
-type rtmp_caption_info_destination_settings() :: #{}.

%% Example:
%% get_event_bridge_rule_template_request() :: #{}
-type get_event_bridge_rule_template_request() :: #{}.


%% Example:
%% wav_settings() :: #{
%%   <<"BitDepth">> => float(),
%%   <<"CodingMode">> => list(any()),
%%   <<"SampleRate">> => float()
%% }
-type wav_settings() :: #{binary() => any()}.


%% Example:
%% fec_output_settings() :: #{
%%   <<"ColumnDepth">> => integer(),
%%   <<"IncludeFec">> => list(any()),
%%   <<"RowLength">> => integer()
%% }
-type fec_output_settings() :: #{binary() => any()}.


%% Example:
%% hls_input_settings() :: #{
%%   <<"Bandwidth">> => integer(),
%%   <<"BufferSegments">> => integer(),
%%   <<"Retries">> => integer(),
%%   <<"RetryInterval">> => integer(),
%%   <<"Scte35Source">> => list(any())
%% }
-type hls_input_settings() :: #{binary() => any()}.


%% Example:
%% bad_request_exception() :: #{
%%   <<"Message">> => string()
%% }
-type bad_request_exception() :: #{binary() => any()}.


%% Example:
%% batch_schedule_action_delete_result() :: #{
%%   <<"ScheduleActions">> => list(schedule_action()())
%% }
-type batch_schedule_action_delete_result() :: #{binary() => any()}.

%% Example:
%% describe_node_request() :: #{}
-type describe_node_request() :: #{}.

%% Example:
%% reject_input_device_transfer_request() :: #{}
-type reject_input_device_transfer_request() :: #{}.


%% Example:
%% get_event_bridge_rule_template_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"EventTargets">> => list(event_bridge_rule_template_target()()),
%%   <<"EventType">> => list(any()),
%%   <<"GroupId">> => string(),
%%   <<"Id">> => string(),
%%   <<"ModifiedAt">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"Tags">> => map()
%% }
-type get_event_bridge_rule_template_response() :: #{binary() => any()}.


%% Example:
%% batch_schedule_action_delete_request() :: #{
%%   <<"ActionNames">> => list(string()())
%% }
-type batch_schedule_action_delete_request() :: #{binary() => any()}.


%% Example:
%% list_input_device_transfers_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"TransferType">> := string()
%% }
-type list_input_device_transfers_request() :: #{binary() => any()}.

%% Example:
%% embedded_destination_settings() :: #{}
-type embedded_destination_settings() :: #{}.


%% Example:
%% maintenance_create_settings() :: #{
%%   <<"MaintenanceDay">> => list(any()),
%%   <<"MaintenanceStartTime">> => string()
%% }
-type maintenance_create_settings() :: #{binary() => any()}.


%% Example:
%% restart_channel_pipelines_request() :: #{
%%   <<"PipelineIds">> => list(list(any())())
%% }
-type restart_channel_pipelines_request() :: #{binary() => any()}.


%% Example:
%% failover_condition_settings() :: #{
%%   <<"AudioSilenceSettings">> => audio_silence_failover_settings(),
%%   <<"InputLossSettings">> => input_loss_failover_settings(),
%%   <<"VideoBlackSettings">> => video_black_failover_settings()
%% }
-type failover_condition_settings() :: #{binary() => any()}.


%% Example:
%% channel_egress_endpoint() :: #{
%%   <<"SourceIp">> => string()
%% }
-type channel_egress_endpoint() :: #{binary() => any()}.


%% Example:
%% input_device_media_connect_configurable_settings() :: #{
%%   <<"FlowArn">> => string(),
%%   <<"RoleArn">> => string(),
%%   <<"SecretArn">> => string(),
%%   <<"SourceName">> => string()
%% }
-type input_device_media_connect_configurable_settings() :: #{binary() => any()}.


%% Example:
%% start_monitor_deployment_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"CloudWatchAlarmTemplateGroupIds">> => list(string()()),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"DiscoveryEntryPointArn">> => string(),
%%   <<"ErrorMessage">> => string(),
%%   <<"EventBridgeRuleTemplateGroupIds">> => list(string()()),
%%   <<"FailedMediaResourceMap">> => map(),
%%   <<"Id">> => string(),
%%   <<"LastDiscoveredAt">> => non_neg_integer(),
%%   <<"LastSuccessfulMonitorDeployment">> => successful_monitor_deployment(),
%%   <<"MediaResourceMap">> => map(),
%%   <<"ModifiedAt">> => non_neg_integer(),
%%   <<"MonitorChangesPendingDeployment">> => boolean(),
%%   <<"MonitorDeployment">> => monitor_deployment(),
%%   <<"Name">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"Tags">> => map()
%% }
-type start_monitor_deployment_response() :: #{binary() => any()}.


%% Example:
%% list_multiplexes_response() :: #{
%%   <<"Multiplexes">> => list(multiplex_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_multiplexes_response() :: #{binary() => any()}.

%% Example:
%% pass_through_settings() :: #{}
-type pass_through_settings() :: #{}.


%% Example:
%% list_multiplexes_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_multiplexes_request() :: #{binary() => any()}.


%% Example:
%% list_cloud_watch_alarm_template_groups_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"Scope">> => string(),
%%   <<"SignalMapIdentifier">> => string()
%% }
-type list_cloud_watch_alarm_template_groups_request() :: #{binary() => any()}.


%% Example:
%% update_channel_response() :: #{
%%   <<"Channel">> => channel()
%% }
-type update_channel_response() :: #{binary() => any()}.


%% Example:
%% update_network_request() :: #{
%%   <<"IpPools">> => list(ip_pool_update_request()()),
%%   <<"Name">> => string(),
%%   <<"Routes">> => list(route_update_request()())
%% }
-type update_network_request() :: #{binary() => any()}.


%% Example:
%% audio_pid_selection() :: #{
%%   <<"Pid">> => integer()
%% }
-type audio_pid_selection() :: #{binary() => any()}.


%% Example:
%% input_source_request() :: #{
%%   <<"PasswordParam">> => string(),
%%   <<"Url">> => string(),
%%   <<"Username">> => string()
%% }
-type input_source_request() :: #{binary() => any()}.


%% Example:
%% cluster_network_settings_update_request() :: #{
%%   <<"DefaultRoute">> => string(),
%%   <<"InterfaceMappings">> => list(interface_mapping_update_request()())
%% }
-type cluster_network_settings_update_request() :: #{binary() => any()}.


%% Example:
%% describe_anywhere_settings() :: #{
%%   <<"ChannelPlacementGroupId">> => string(),
%%   <<"ClusterId">> => string()
%% }
-type describe_anywhere_settings() :: #{binary() => any()}.


%% Example:
%% mpeg2_filter_settings() :: #{
%%   <<"TemporalFilterSettings">> => temporal_filter_settings()
%% }
-type mpeg2_filter_settings() :: #{binary() => any()}.


%% Example:
%% update_node_state_request() :: #{
%%   <<"State">> => list(any())
%% }
-type update_node_state_request() :: #{binary() => any()}.


%% Example:
%% audio_normalization_settings() :: #{
%%   <<"Algorithm">> => list(any()),
%%   <<"AlgorithmControl">> => list(any()),
%%   <<"TargetLkfs">> => float()
%% }
-type audio_normalization_settings() :: #{binary() => any()}.


%% Example:
%% hls_s3_settings() :: #{
%%   <<"CannedAcl">> => list(any())
%% }
-type hls_s3_settings() :: #{binary() => any()}.


%% Example:
%% output_destination_settings() :: #{
%%   <<"PasswordParam">> => string(),
%%   <<"StreamName">> => string(),
%%   <<"Url">> => string(),
%%   <<"Username">> => string()
%% }
-type output_destination_settings() :: #{binary() => any()}.


%% Example:
%% scte35_segmentation_descriptor() :: #{
%%   <<"DeliveryRestrictions">> => scte35_delivery_restrictions(),
%%   <<"SegmentNum">> => integer(),
%%   <<"SegmentationCancelIndicator">> => list(any()),
%%   <<"SegmentationDuration">> => float(),
%%   <<"SegmentationEventId">> => float(),
%%   <<"SegmentationTypeId">> => integer(),
%%   <<"SegmentationUpid">> => string(),
%%   <<"SegmentationUpidType">> => integer(),
%%   <<"SegmentsExpected">> => integer(),
%%   <<"SubSegmentNum">> => integer(),
%%   <<"SubSegmentsExpected">> => integer()
%% }
-type scte35_segmentation_descriptor() :: #{binary() => any()}.


%% Example:
%% anywhere_settings() :: #{
%%   <<"ChannelPlacementGroupId">> => string(),
%%   <<"ClusterId">> => string()
%% }
-type anywhere_settings() :: #{binary() => any()}.


%% Example:
%% timecode_burnin_settings() :: #{
%%   <<"FontSize">> => list(any()),
%%   <<"Position">> => list(any()),
%%   <<"Prefix">> => string()
%% }
-type timecode_burnin_settings() :: #{binary() => any()}.


%% Example:
%% renewal_settings() :: #{
%%   <<"AutomaticRenewal">> => list(any()),
%%   <<"RenewalCount">> => integer()
%% }
-type renewal_settings() :: #{binary() => any()}.


%% Example:
%% ebu_tt_d_destination_settings() :: #{
%%   <<"CopyrightHolder">> => string(),
%%   <<"FillLineGap">> => list(any()),
%%   <<"FontFamily">> => string(),
%%   <<"StyleControl">> => list(any())
%% }
-type ebu_tt_d_destination_settings() :: #{binary() => any()}.


%% Example:
%% update_account_configuration_response() :: #{
%%   <<"AccountConfiguration">> => account_configuration()
%% }
-type update_account_configuration_response() :: #{binary() => any()}.


%% Example:
%% create_event_bridge_rule_template_request() :: #{
%%   <<"Description">> => string(),
%%   <<"EventTargets">> => list(event_bridge_rule_template_target()()),
%%   <<"EventType">> := list(any()),
%%   <<"GroupIdentifier">> := string(),
%%   <<"Name">> := string(),
%%   <<"RequestId">> => string(),
%%   <<"Tags">> => map()
%% }
-type create_event_bridge_rule_template_request() :: #{binary() => any()}.


%% Example:
%% video_black_failover_settings() :: #{
%%   <<"BlackDetectThreshold">> => float(),
%%   <<"VideoBlackThresholdMsec">> => integer()
%% }
-type video_black_failover_settings() :: #{binary() => any()}.


%% Example:
%% audio_hls_rendition_selection() :: #{
%%   <<"GroupId">> => string(),
%%   <<"Name">> => string()
%% }
-type audio_hls_rendition_selection() :: #{binary() => any()}.


%% Example:
%% multiplex_settings_summary() :: #{
%%   <<"TransportStreamBitrate">> => integer()
%% }
-type multiplex_settings_summary() :: #{binary() => any()}.


%% Example:
%% audio_dolby_e_decode() :: #{
%%   <<"ProgramSelection">> => list(any())
%% }
-type audio_dolby_e_decode() :: #{binary() => any()}.


%% Example:
%% follow_mode_schedule_action_start_settings() :: #{
%%   <<"FollowPoint">> => list(any()),
%%   <<"ReferenceActionName">> => string()
%% }
-type follow_mode_schedule_action_start_settings() :: #{binary() => any()}.


%% Example:
%% audio_watermark_settings() :: #{
%%   <<"NielsenWatermarksSettings">> => nielsen_watermarks_settings()
%% }
-type audio_watermark_settings() :: #{binary() => any()}.


%% Example:
%% scte35_splice_insert() :: #{
%%   <<"AdAvailOffset">> => integer(),
%%   <<"NoRegionalBlackoutFlag">> => list(any()),
%%   <<"WebDeliveryAllowedFlag">> => list(any())
%% }
-type scte35_splice_insert() :: #{binary() => any()}.


%% Example:
%% claim_device_request() :: #{
%%   <<"Id">> => string()
%% }
-type claim_device_request() :: #{binary() => any()}.


%% Example:
%% start_update_signal_map_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"CloudWatchAlarmTemplateGroupIds">> => list(string()()),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"DiscoveryEntryPointArn">> => string(),
%%   <<"ErrorMessage">> => string(),
%%   <<"EventBridgeRuleTemplateGroupIds">> => list(string()()),
%%   <<"FailedMediaResourceMap">> => map(),
%%   <<"Id">> => string(),
%%   <<"LastDiscoveredAt">> => non_neg_integer(),
%%   <<"LastSuccessfulMonitorDeployment">> => successful_monitor_deployment(),
%%   <<"MediaResourceMap">> => map(),
%%   <<"ModifiedAt">> => non_neg_integer(),
%%   <<"MonitorChangesPendingDeployment">> => boolean(),
%%   <<"MonitorDeployment">> => monitor_deployment(),
%%   <<"Name">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"Tags">> => map()
%% }
-type start_update_signal_map_response() :: #{binary() => any()}.


%% Example:
%% list_signal_maps_request() :: #{
%%   <<"CloudWatchAlarmTemplateGroupIdentifier">> => string(),
%%   <<"EventBridgeRuleTemplateGroupIdentifier">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_signal_maps_request() :: #{binary() => any()}.


%% Example:
%% input_device_hd_settings() :: #{
%%   <<"ActiveInput">> => list(any()),
%%   <<"ConfiguredInput">> => list(any()),
%%   <<"DeviceState">> => list(any()),
%%   <<"Framerate">> => float(),
%%   <<"Height">> => integer(),
%%   <<"LatencyMs">> => integer(),
%%   <<"MaxBitrate">> => integer(),
%%   <<"ScanType">> => list(any()),
%%   <<"Width">> => integer()
%% }
-type input_device_hd_settings() :: #{binary() => any()}.


%% Example:
%% scte35_descriptor_settings() :: #{
%%   <<"SegmentationDescriptorScte35DescriptorSettings">> => scte35_segmentation_descriptor()
%% }
-type scte35_descriptor_settings() :: #{binary() => any()}.

%% Example:
%% start_input_device_response() :: #{}
-type start_input_device_response() :: #{}.


%% Example:
%% list_channels_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_channels_request() :: #{binary() => any()}.


%% Example:
%% dvb_nit_settings() :: #{
%%   <<"NetworkId">> => integer(),
%%   <<"NetworkName">> => string(),
%%   <<"RepInterval">> => integer()
%% }
-type dvb_nit_settings() :: #{binary() => any()}.


%% Example:
%% describe_schedule_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type describe_schedule_request() :: #{binary() => any()}.


%% Example:
%% cloud_watch_alarm_template_summary() :: #{
%%   <<"Arn">> => string(),
%%   <<"ComparisonOperator">> => list(any()),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"DatapointsToAlarm">> => integer(),
%%   <<"Description">> => string(),
%%   <<"EvaluationPeriods">> => integer(),
%%   <<"GroupId">> => string(),
%%   <<"Id">> => string(),
%%   <<"MetricName">> => string(),
%%   <<"ModifiedAt">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"Period">> => integer(),
%%   <<"Statistic">> => list(any()),
%%   <<"Tags">> => map(),
%%   <<"TargetResourceType">> => list(any()),
%%   <<"Threshold">> => float(),
%%   <<"TreatMissingData">> => list(any())
%% }
-type cloud_watch_alarm_template_summary() :: #{binary() => any()}.

%% Example:
%% stop_input_device_response() :: #{}
-type stop_input_device_response() :: #{}.


%% Example:
%% cloud_watch_alarm_template_group_summary() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"Id">> => string(),
%%   <<"ModifiedAt">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"Tags">> => map(),
%%   <<"TemplateCount">> => integer()
%% }
-type cloud_watch_alarm_template_group_summary() :: #{binary() => any()}.


%% Example:
%% update_account_configuration_request() :: #{
%%   <<"AccountConfiguration">> => account_configuration()
%% }
-type update_account_configuration_request() :: #{binary() => any()}.


%% Example:
%% describe_offering_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"CurrencyCode">> => string(),
%%   <<"Duration">> => integer(),
%%   <<"DurationUnits">> => list(any()),
%%   <<"FixedPrice">> => float(),
%%   <<"OfferingDescription">> => string(),
%%   <<"OfferingId">> => string(),
%%   <<"OfferingType">> => list(any()),
%%   <<"Region">> => string(),
%%   <<"ResourceSpecification">> => reservation_resource_specification(),
%%   <<"UsagePrice">> => float()
%% }
-type describe_offering_response() :: #{binary() => any()}.


%% Example:
%% hls_basic_put_settings() :: #{
%%   <<"ConnectionRetryInterval">> => integer(),
%%   <<"FilecacheDuration">> => integer(),
%%   <<"NumRetries">> => integer(),
%%   <<"RestartDelay">> => integer()
%% }
-type hls_basic_put_settings() :: #{binary() => any()}.


%% Example:
%% update_node_request() :: #{
%%   <<"Name">> => string(),
%%   <<"Role">> => list(any())
%% }
-type update_node_request() :: #{binary() => any()}.


%% Example:
%% fixed_mode_schedule_action_start_settings() :: #{
%%   <<"Time">> => string()
%% }
-type fixed_mode_schedule_action_start_settings() :: #{binary() => any()}.


%% Example:
%% cluster_network_settings_create_request() :: #{
%%   <<"DefaultRoute">> => string(),
%%   <<"InterfaceMappings">> => list(interface_mapping_create_request()())
%% }
-type cluster_network_settings_create_request() :: #{binary() => any()}.


%% Example:
%% input_destination_route() :: #{
%%   <<"Cidr">> => string(),
%%   <<"Gateway">> => string()
%% }
-type input_destination_route() :: #{binary() => any()}.


%% Example:
%% list_nodes_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Nodes">> => list(describe_node_summary()())
%% }
-type list_nodes_response() :: #{binary() => any()}.


%% Example:
%% list_input_device_transfers_response() :: #{
%%   <<"InputDeviceTransfers">> => list(transferring_input_device_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_input_device_transfers_response() :: #{binary() => any()}.


%% Example:
%% signal_map_summary() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"Id">> => string(),
%%   <<"ModifiedAt">> => non_neg_integer(),
%%   <<"MonitorDeploymentStatus">> => list(any()),
%%   <<"Name">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"Tags">> => map()
%% }
-type signal_map_summary() :: #{binary() => any()}.


%% Example:
%% media_package_output_destination_settings() :: #{
%%   <<"ChannelGroup">> => string(),
%%   <<"ChannelId">> => string(),
%%   <<"ChannelName">> => string()
%% }
-type media_package_output_destination_settings() :: #{binary() => any()}.


%% Example:
%% create_cloud_watch_alarm_template_group_request() :: #{
%%   <<"Description">> => string(),
%%   <<"Name">> := string(),
%%   <<"RequestId">> => string(),
%%   <<"Tags">> => map()
%% }
-type create_cloud_watch_alarm_template_group_request() :: #{binary() => any()}.


%% Example:
%% batch_successful_result_model() :: #{
%%   <<"Arn">> => string(),
%%   <<"Id">> => string(),
%%   <<"State">> => string()
%% }
-type batch_successful_result_model() :: #{binary() => any()}.

%% Example:
%% describe_offering_request() :: #{}
-type describe_offering_request() :: #{}.


%% Example:
%% list_cloud_watch_alarm_templates_request() :: #{
%%   <<"GroupIdentifier">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"Scope">> => string(),
%%   <<"SignalMapIdentifier">> => string()
%% }
-type list_cloud_watch_alarm_templates_request() :: #{binary() => any()}.


%% Example:
%% batch_start_request() :: #{
%%   <<"ChannelIds">> => list(string()()),
%%   <<"MultiplexIds">> => list(string()())
%% }
-type batch_start_request() :: #{binary() => any()}.


%% Example:
%% hls_webdav_settings() :: #{
%%   <<"ConnectionRetryInterval">> => integer(),
%%   <<"FilecacheDuration">> => integer(),
%%   <<"HttpTransferMode">> => list(any()),
%%   <<"NumRetries">> => integer(),
%%   <<"RestartDelay">> => integer()
%% }
-type hls_webdav_settings() :: #{binary() => any()}.


%% Example:
%% multiplex_statmux_video_settings() :: #{
%%   <<"MaximumBitrate">> => integer(),
%%   <<"MinimumBitrate">> => integer(),
%%   <<"Priority">> => integer()
%% }
-type multiplex_statmux_video_settings() :: #{binary() => any()}.


%% Example:
%% interface_mapping_update_request() :: #{
%%   <<"LogicalInterfaceName">> => string(),
%%   <<"NetworkId">> => string()
%% }
-type interface_mapping_update_request() :: #{binary() => any()}.


%% Example:
%% output() :: #{
%%   <<"AudioDescriptionNames">> => list(string()()),
%%   <<"CaptionDescriptionNames">> => list(string()()),
%%   <<"OutputName">> => string(),
%%   <<"OutputSettings">> => output_settings(),
%%   <<"VideoDescriptionName">> => string()
%% }
-type output() :: #{binary() => any()}.


%% Example:
%% purchase_offering_response() :: #{
%%   <<"Reservation">> => reservation()
%% }
-type purchase_offering_response() :: #{binary() => any()}.


%% Example:
%% delete_multiplex_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"AvailabilityZones">> => list(string()()),
%%   <<"Destinations">> => list(multiplex_output_destination()()),
%%   <<"Id">> => string(),
%%   <<"MultiplexSettings">> => multiplex_settings(),
%%   <<"Name">> => string(),
%%   <<"PipelinesRunningCount">> => integer(),
%%   <<"ProgramCount">> => integer(),
%%   <<"State">> => list(any()),
%%   <<"Tags">> => map()
%% }
-type delete_multiplex_response() :: #{binary() => any()}.


%% Example:
%% static_image_activate_schedule_action_settings() :: #{
%%   <<"Duration">> => integer(),
%%   <<"FadeIn">> => integer(),
%%   <<"FadeOut">> => integer(),
%%   <<"Height">> => integer(),
%%   <<"Image">> => input_location(),
%%   <<"ImageX">> => integer(),
%%   <<"ImageY">> => integer(),
%%   <<"Layer">> => integer(),
%%   <<"Opacity">> => integer(),
%%   <<"Width">> => integer()
%% }
-type static_image_activate_schedule_action_settings() :: #{binary() => any()}.

%% Example:
%% describe_multiplex_program_request() :: #{}
-type describe_multiplex_program_request() :: #{}.


%% Example:
%% scte35_descriptor() :: #{
%%   <<"Scte35DescriptorSettings">> => scte35_descriptor_settings()
%% }
-type scte35_descriptor() :: #{binary() => any()}.


%% Example:
%% purchase_offering_request() :: #{
%%   <<"Count">> := integer(),
%%   <<"Name">> => string(),
%%   <<"RenewalSettings">> => renewal_settings(),
%%   <<"RequestId">> => string(),
%%   <<"Start">> => string(),
%%   <<"Tags">> => map()
%% }
-type purchase_offering_request() :: #{binary() => any()}.


%% Example:
%% h264_settings() :: #{
%%   <<"TimecodeInsertion">> => list(any()),
%%   <<"QualityLevel">> => list(any()),
%%   <<"SubgopLength">> => list(any()),
%%   <<"AdaptiveQuantization">> => list(any()),
%%   <<"Slices">> => integer(),
%%   <<"ColorSpaceSettings">> => h264_color_space_settings(),
%%   <<"Softness">> => integer(),
%%   <<"FramerateNumerator">> => integer(),
%%   <<"GopBReference">> => list(any()),
%%   <<"QvbrQualityLevel">> => integer(),
%%   <<"GopSize">> => float(),
%%   <<"FlickerAq">> => list(any()),
%%   <<"SpatialAq">> => list(any()),
%%   <<"GopNumBFrames">> => integer(),
%%   <<"TemporalAq">> => list(any()),
%%   <<"GopSizeUnits">> => list(any()),
%%   <<"Bitrate">> => integer(),
%%   <<"TimecodeBurninSettings">> => timecode_burnin_settings(),
%%   <<"ParControl">> => list(any()),
%%   <<"NumRefFrames">> => integer(),
%%   <<"BufFillPct">> => integer(),
%%   <<"Profile">> => list(any()),
%%   <<"RateControlMode">> => list(any()),
%%   <<"FramerateControl">> => list(any()),
%%   <<"ParNumerator">> => integer(),
%%   <<"ColorMetadata">> => list(any()),
%%   <<"ScanType">> => list(any()),
%%   <<"Level">> => list(any()),
%%   <<"LookAheadRateControl">> => list(any()),
%%   <<"MinIInterval">> => integer(),
%%   <<"ForceFieldPictures">> => list(any()),
%%   <<"SceneChangeDetect">> => list(any()),
%%   <<"BufSize">> => integer(),
%%   <<"EntropyEncoding">> => list(any()),
%%   <<"ParDenominator">> => integer(),
%%   <<"Syntax">> => list(any()),
%%   <<"FixedAfd">> => list(any()),
%%   <<"GopClosedCadence">> => integer(),
%%   <<"MaxBitrate">> => integer(),
%%   <<"AfdSignaling">> => list(any()),
%%   <<"FramerateDenominator">> => integer(),
%%   <<"MinQp">> => integer(),
%%   <<"FilterSettings">> => h264_filter_settings()
%% }
-type h264_settings() :: #{binary() => any()}.


%% Example:
%% multiplex_program_pipeline_detail() :: #{
%%   <<"ActiveChannelPipeline">> => string(),
%%   <<"PipelineId">> => string()
%% }
-type multiplex_program_pipeline_detail() :: #{binary() => any()}.


%% Example:
%% color_correction() :: #{
%%   <<"InputColorSpace">> => list(any()),
%%   <<"OutputColorSpace">> => list(any()),
%%   <<"Uri">> => string()
%% }
-type color_correction() :: #{binary() => any()}.


%% Example:
%% update_cluster_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"ChannelIds">> => list(string()()),
%%   <<"ClusterType">> => list(any()),
%%   <<"Id">> => string(),
%%   <<"Name">> => string(),
%%   <<"NetworkSettings">> => cluster_network_settings(),
%%   <<"State">> => list(any())
%% }
-type update_cluster_response() :: #{binary() => any()}.


%% Example:
%% start_update_signal_map_request() :: #{
%%   <<"CloudWatchAlarmTemplateGroupIdentifiers">> => list(string()()),
%%   <<"Description">> => string(),
%%   <<"DiscoveryEntryPointArn">> => string(),
%%   <<"EventBridgeRuleTemplateGroupIdentifiers">> => list(string()()),
%%   <<"ForceRediscovery">> => boolean(),
%%   <<"Name">> => string()
%% }
-type start_update_signal_map_request() :: #{binary() => any()}.


%% Example:
%% update_reservation_response() :: #{
%%   <<"Reservation">> => reservation()
%% }
-type update_reservation_response() :: #{binary() => any()}.


%% Example:
%% hls_media_store_settings() :: #{
%%   <<"ConnectionRetryInterval">> => integer(),
%%   <<"FilecacheDuration">> => integer(),
%%   <<"MediaStoreStorageClass">> => list(any()),
%%   <<"NumRetries">> => integer(),
%%   <<"RestartDelay">> => integer()
%% }
-type hls_media_store_settings() :: #{binary() => any()}.

%% Example:
%% describe_input_device_request() :: #{}
-type describe_input_device_request() :: #{}.

-type accept_input_device_transfer_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    internal_server_error_exception() | 
    unprocessable_entity_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    bad_gateway_exception().

-type batch_delete_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    bad_gateway_exception().

-type batch_start_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    bad_gateway_exception().

-type batch_stop_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    bad_gateway_exception().

-type batch_update_schedule_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    internal_server_error_exception() | 
    unprocessable_entity_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    bad_gateway_exception().

-type cancel_input_device_transfer_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    internal_server_error_exception() | 
    unprocessable_entity_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    bad_gateway_exception().

-type claim_device_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    internal_server_error_exception() | 
    unprocessable_entity_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    bad_gateway_exception().

-type create_channel_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    internal_server_error_exception() | 
    unprocessable_entity_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    bad_gateway_exception().

-type create_channel_placement_group_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    internal_server_error_exception() | 
    unprocessable_entity_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    bad_gateway_exception().

-type create_cloud_watch_alarm_template_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type create_cloud_watch_alarm_template_group_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type create_cluster_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    internal_server_error_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    bad_gateway_exception().

-type create_event_bridge_rule_template_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type create_event_bridge_rule_template_group_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type create_input_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    internal_server_error_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    bad_gateway_exception().

-type create_input_security_group_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    internal_server_error_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    bad_gateway_exception().

-type create_multiplex_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    internal_server_error_exception() | 
    unprocessable_entity_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    bad_gateway_exception().

-type create_multiplex_program_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    internal_server_error_exception() | 
    unprocessable_entity_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    bad_gateway_exception().

-type create_network_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    internal_server_error_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    bad_gateway_exception().

-type create_node_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    internal_server_error_exception() | 
    unprocessable_entity_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    bad_gateway_exception().

-type create_node_registration_script_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    internal_server_error_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    bad_gateway_exception().

-type create_partner_input_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    internal_server_error_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    bad_gateway_exception().

-type create_signal_map_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type create_tags_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    forbidden_exception().

-type delete_channel_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    bad_gateway_exception().

-type delete_channel_placement_group_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    bad_gateway_exception().

-type delete_cloud_watch_alarm_template_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type delete_cloud_watch_alarm_template_group_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type delete_cluster_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    bad_gateway_exception().

-type delete_event_bridge_rule_template_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type delete_event_bridge_rule_template_group_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type delete_input_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    bad_gateway_exception().

-type delete_input_security_group_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    bad_gateway_exception().

-type delete_multiplex_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    bad_gateway_exception().

-type delete_multiplex_program_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    bad_gateway_exception().

-type delete_network_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    bad_gateway_exception().

-type delete_node_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    bad_gateway_exception().

-type delete_reservation_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    bad_gateway_exception().

-type delete_schedule_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    bad_gateway_exception().

-type delete_signal_map_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type delete_tags_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    forbidden_exception().

-type describe_account_configuration_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    internal_server_error_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    bad_gateway_exception().

-type describe_channel_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    bad_gateway_exception().

-type describe_channel_placement_group_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    bad_gateway_exception().

-type describe_cluster_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    bad_gateway_exception().

-type describe_input_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    bad_gateway_exception().

-type describe_input_device_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    bad_gateway_exception().

-type describe_input_device_thumbnail_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    bad_gateway_exception().

-type describe_input_security_group_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    bad_gateway_exception().

-type describe_multiplex_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    bad_gateway_exception().

-type describe_multiplex_program_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    bad_gateway_exception().

-type describe_network_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    bad_gateway_exception().

-type describe_node_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    bad_gateway_exception().

-type describe_offering_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    bad_gateway_exception().

-type describe_reservation_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    bad_gateway_exception().

-type describe_schedule_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    bad_gateway_exception().

-type describe_thumbnails_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    bad_gateway_exception().

-type get_cloud_watch_alarm_template_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type get_cloud_watch_alarm_template_group_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type get_event_bridge_rule_template_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type get_event_bridge_rule_template_group_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type get_signal_map_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type list_channel_placement_groups_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    internal_server_error_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    bad_gateway_exception().

-type list_channels_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    internal_server_error_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    bad_gateway_exception().

-type list_cloud_watch_alarm_template_groups_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type list_cloud_watch_alarm_templates_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type list_clusters_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    internal_server_error_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    bad_gateway_exception().

-type list_event_bridge_rule_template_groups_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type list_event_bridge_rule_templates_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type list_input_device_transfers_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    internal_server_error_exception() | 
    unprocessable_entity_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    bad_gateway_exception().

-type list_input_devices_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    internal_server_error_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    bad_gateway_exception().

-type list_input_security_groups_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    internal_server_error_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    bad_gateway_exception().

-type list_inputs_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    internal_server_error_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    bad_gateway_exception().

-type list_multiplex_programs_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    bad_gateway_exception().

-type list_multiplexes_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    internal_server_error_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    bad_gateway_exception().

-type list_networks_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    internal_server_error_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    bad_gateway_exception().

-type list_nodes_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    internal_server_error_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    bad_gateway_exception().

-type list_offerings_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    internal_server_error_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    bad_gateway_exception().

-type list_reservations_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    internal_server_error_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    bad_gateway_exception().

-type list_signal_maps_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type list_tags_for_resource_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    forbidden_exception().

-type list_versions_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    bad_gateway_exception().

-type purchase_offering_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    bad_gateway_exception().

-type reboot_input_device_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    internal_server_error_exception() | 
    unprocessable_entity_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    bad_gateway_exception().

-type reject_input_device_transfer_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    internal_server_error_exception() | 
    unprocessable_entity_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    bad_gateway_exception().

-type restart_channel_pipelines_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    bad_gateway_exception().

-type start_channel_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    bad_gateway_exception().

-type start_delete_monitor_deployment_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type start_input_device_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    internal_server_error_exception() | 
    unprocessable_entity_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    bad_gateway_exception().

-type start_input_device_maintenance_window_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    internal_server_error_exception() | 
    unprocessable_entity_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    bad_gateway_exception().

-type start_monitor_deployment_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type start_multiplex_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    bad_gateway_exception().

-type start_update_signal_map_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type stop_channel_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    bad_gateway_exception().

-type stop_input_device_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    internal_server_error_exception() | 
    unprocessable_entity_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    bad_gateway_exception().

-type stop_multiplex_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    bad_gateway_exception().

-type transfer_input_device_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    internal_server_error_exception() | 
    unprocessable_entity_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    bad_gateway_exception().

-type update_account_configuration_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    internal_server_error_exception() | 
    unprocessable_entity_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    bad_gateway_exception().

-type update_channel_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    internal_server_error_exception() | 
    unprocessable_entity_exception() | 
    conflict_exception() | 
    forbidden_exception() | 
    bad_gateway_exception().

-type update_channel_class_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    internal_server_error_exception() | 
    unprocessable_entity_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    bad_gateway_exception().

-type update_channel_placement_group_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    internal_server_error_exception() | 
    unprocessable_entity_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    bad_gateway_exception().

-type update_cloud_watch_alarm_template_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type update_cloud_watch_alarm_template_group_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type update_cluster_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    internal_server_error_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    bad_gateway_exception().

-type update_event_bridge_rule_template_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type update_event_bridge_rule_template_group_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type update_input_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    forbidden_exception() | 
    bad_gateway_exception().

-type update_input_device_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    internal_server_error_exception() | 
    unprocessable_entity_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    bad_gateway_exception().

-type update_input_security_group_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    forbidden_exception() | 
    bad_gateway_exception().

-type update_multiplex_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    internal_server_error_exception() | 
    unprocessable_entity_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    forbidden_exception() | 
    bad_gateway_exception().

-type update_multiplex_program_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    internal_server_error_exception() | 
    unprocessable_entity_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    forbidden_exception() | 
    bad_gateway_exception().

-type update_network_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    internal_server_error_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    bad_gateway_exception().

-type update_node_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    internal_server_error_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    bad_gateway_exception().

-type update_node_state_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    internal_server_error_exception() | 
    unprocessable_entity_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    bad_gateway_exception().

-type update_reservation_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    bad_gateway_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Accept an incoming input device transfer.
%%
%% The ownership of the device will transfer to your AWS account.
-spec accept_input_device_transfer(aws_client:aws_client(), binary() | list(), accept_input_device_transfer_request()) ->
    {ok, accept_input_device_transfer_response(), tuple()} |
    {error, any()} |
    {error, accept_input_device_transfer_errors(), tuple()}.
accept_input_device_transfer(Client, InputDeviceId, Input) ->
    accept_input_device_transfer(Client, InputDeviceId, Input, []).

-spec accept_input_device_transfer(aws_client:aws_client(), binary() | list(), accept_input_device_transfer_request(), proplists:proplist()) ->
    {ok, accept_input_device_transfer_response(), tuple()} |
    {error, any()} |
    {error, accept_input_device_transfer_errors(), tuple()}.
accept_input_device_transfer(Client, InputDeviceId, Input0, Options0) ->
    Method = post,
    Path = ["/prod/inputDevices/", aws_util:encode_uri(InputDeviceId), "/accept"],
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

%% @doc Starts delete of resources.
-spec batch_delete(aws_client:aws_client(), batch_delete_request()) ->
    {ok, batch_delete_response(), tuple()} |
    {error, any()} |
    {error, batch_delete_errors(), tuple()}.
batch_delete(Client, Input) ->
    batch_delete(Client, Input, []).

-spec batch_delete(aws_client:aws_client(), batch_delete_request(), proplists:proplist()) ->
    {ok, batch_delete_response(), tuple()} |
    {error, any()} |
    {error, batch_delete_errors(), tuple()}.
batch_delete(Client, Input0, Options0) ->
    Method = post,
    Path = ["/prod/batch/delete"],
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

%% @doc Starts existing resources
-spec batch_start(aws_client:aws_client(), batch_start_request()) ->
    {ok, batch_start_response(), tuple()} |
    {error, any()} |
    {error, batch_start_errors(), tuple()}.
batch_start(Client, Input) ->
    batch_start(Client, Input, []).

-spec batch_start(aws_client:aws_client(), batch_start_request(), proplists:proplist()) ->
    {ok, batch_start_response(), tuple()} |
    {error, any()} |
    {error, batch_start_errors(), tuple()}.
batch_start(Client, Input0, Options0) ->
    Method = post,
    Path = ["/prod/batch/start"],
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

%% @doc Stops running resources
-spec batch_stop(aws_client:aws_client(), batch_stop_request()) ->
    {ok, batch_stop_response(), tuple()} |
    {error, any()} |
    {error, batch_stop_errors(), tuple()}.
batch_stop(Client, Input) ->
    batch_stop(Client, Input, []).

-spec batch_stop(aws_client:aws_client(), batch_stop_request(), proplists:proplist()) ->
    {ok, batch_stop_response(), tuple()} |
    {error, any()} |
    {error, batch_stop_errors(), tuple()}.
batch_stop(Client, Input0, Options0) ->
    Method = post,
    Path = ["/prod/batch/stop"],
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

%% @doc Update a channel schedule
-spec batch_update_schedule(aws_client:aws_client(), binary() | list(), batch_update_schedule_request()) ->
    {ok, batch_update_schedule_response(), tuple()} |
    {error, any()} |
    {error, batch_update_schedule_errors(), tuple()}.
batch_update_schedule(Client, ChannelId, Input) ->
    batch_update_schedule(Client, ChannelId, Input, []).

-spec batch_update_schedule(aws_client:aws_client(), binary() | list(), batch_update_schedule_request(), proplists:proplist()) ->
    {ok, batch_update_schedule_response(), tuple()} |
    {error, any()} |
    {error, batch_update_schedule_errors(), tuple()}.
batch_update_schedule(Client, ChannelId, Input0, Options0) ->
    Method = put,
    Path = ["/prod/channels/", aws_util:encode_uri(ChannelId), "/schedule"],
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

%% @doc Cancel an input device transfer that you have requested.
-spec cancel_input_device_transfer(aws_client:aws_client(), binary() | list(), cancel_input_device_transfer_request()) ->
    {ok, cancel_input_device_transfer_response(), tuple()} |
    {error, any()} |
    {error, cancel_input_device_transfer_errors(), tuple()}.
cancel_input_device_transfer(Client, InputDeviceId, Input) ->
    cancel_input_device_transfer(Client, InputDeviceId, Input, []).

-spec cancel_input_device_transfer(aws_client:aws_client(), binary() | list(), cancel_input_device_transfer_request(), proplists:proplist()) ->
    {ok, cancel_input_device_transfer_response(), tuple()} |
    {error, any()} |
    {error, cancel_input_device_transfer_errors(), tuple()}.
cancel_input_device_transfer(Client, InputDeviceId, Input0, Options0) ->
    Method = post,
    Path = ["/prod/inputDevices/", aws_util:encode_uri(InputDeviceId), "/cancel"],
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

%% @doc Send a request to claim an AWS Elemental device that you have
%% purchased from a third-party vendor.
%%
%% After the request succeeds, you will own the device.
-spec claim_device(aws_client:aws_client(), claim_device_request()) ->
    {ok, claim_device_response(), tuple()} |
    {error, any()} |
    {error, claim_device_errors(), tuple()}.
claim_device(Client, Input) ->
    claim_device(Client, Input, []).

-spec claim_device(aws_client:aws_client(), claim_device_request(), proplists:proplist()) ->
    {ok, claim_device_response(), tuple()} |
    {error, any()} |
    {error, claim_device_errors(), tuple()}.
claim_device(Client, Input0, Options0) ->
    Method = post,
    Path = ["/prod/claimDevice"],
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

%% @doc Creates a new channel
-spec create_channel(aws_client:aws_client(), create_channel_request()) ->
    {ok, create_channel_response(), tuple()} |
    {error, any()} |
    {error, create_channel_errors(), tuple()}.
create_channel(Client, Input) ->
    create_channel(Client, Input, []).

-spec create_channel(aws_client:aws_client(), create_channel_request(), proplists:proplist()) ->
    {ok, create_channel_response(), tuple()} |
    {error, any()} |
    {error, create_channel_errors(), tuple()}.
create_channel(Client, Input0, Options0) ->
    Method = post,
    Path = ["/prod/channels"],
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

%% @doc Create a ChannelPlacementGroup in the specified Cluster.
%%
%% As part of the create operation, you specify the Nodes to attach the group
%% to.After you create a ChannelPlacementGroup, you add Channels to the group
%% (you do this by modifying the Channels to add them to a specific group).
%% You now have an association of Channels to ChannelPlacementGroup, and
%% ChannelPlacementGroup to Nodes. This association means that all the
%% Channels in the group are able to run on any of the Nodes associated with
%% the group.
-spec create_channel_placement_group(aws_client:aws_client(), binary() | list(), create_channel_placement_group_request()) ->
    {ok, create_channel_placement_group_response(), tuple()} |
    {error, any()} |
    {error, create_channel_placement_group_errors(), tuple()}.
create_channel_placement_group(Client, ClusterId, Input) ->
    create_channel_placement_group(Client, ClusterId, Input, []).

-spec create_channel_placement_group(aws_client:aws_client(), binary() | list(), create_channel_placement_group_request(), proplists:proplist()) ->
    {ok, create_channel_placement_group_response(), tuple()} |
    {error, any()} |
    {error, create_channel_placement_group_errors(), tuple()}.
create_channel_placement_group(Client, ClusterId, Input0, Options0) ->
    Method = post,
    Path = ["/prod/clusters/", aws_util:encode_uri(ClusterId), "/channelplacementgroups"],
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

%% @doc Creates a cloudwatch alarm template to dynamically generate
%% cloudwatch metric alarms on targeted resource types.
-spec create_cloud_watch_alarm_template(aws_client:aws_client(), create_cloud_watch_alarm_template_request()) ->
    {ok, create_cloud_watch_alarm_template_response(), tuple()} |
    {error, any()} |
    {error, create_cloud_watch_alarm_template_errors(), tuple()}.
create_cloud_watch_alarm_template(Client, Input) ->
    create_cloud_watch_alarm_template(Client, Input, []).

-spec create_cloud_watch_alarm_template(aws_client:aws_client(), create_cloud_watch_alarm_template_request(), proplists:proplist()) ->
    {ok, create_cloud_watch_alarm_template_response(), tuple()} |
    {error, any()} |
    {error, create_cloud_watch_alarm_template_errors(), tuple()}.
create_cloud_watch_alarm_template(Client, Input0, Options0) ->
    Method = post,
    Path = ["/prod/cloudwatch-alarm-templates"],
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

%% @doc Creates a cloudwatch alarm template group to group your cloudwatch
%% alarm templates and to attach to signal maps for dynamically creating
%% alarms.
-spec create_cloud_watch_alarm_template_group(aws_client:aws_client(), create_cloud_watch_alarm_template_group_request()) ->
    {ok, create_cloud_watch_alarm_template_group_response(), tuple()} |
    {error, any()} |
    {error, create_cloud_watch_alarm_template_group_errors(), tuple()}.
create_cloud_watch_alarm_template_group(Client, Input) ->
    create_cloud_watch_alarm_template_group(Client, Input, []).

-spec create_cloud_watch_alarm_template_group(aws_client:aws_client(), create_cloud_watch_alarm_template_group_request(), proplists:proplist()) ->
    {ok, create_cloud_watch_alarm_template_group_response(), tuple()} |
    {error, any()} |
    {error, create_cloud_watch_alarm_template_group_errors(), tuple()}.
create_cloud_watch_alarm_template_group(Client, Input0, Options0) ->
    Method = post,
    Path = ["/prod/cloudwatch-alarm-template-groups"],
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

%% @doc Create a new Cluster.
-spec create_cluster(aws_client:aws_client(), create_cluster_request()) ->
    {ok, create_cluster_response(), tuple()} |
    {error, any()} |
    {error, create_cluster_errors(), tuple()}.
create_cluster(Client, Input) ->
    create_cluster(Client, Input, []).

-spec create_cluster(aws_client:aws_client(), create_cluster_request(), proplists:proplist()) ->
    {ok, create_cluster_response(), tuple()} |
    {error, any()} |
    {error, create_cluster_errors(), tuple()}.
create_cluster(Client, Input0, Options0) ->
    Method = post,
    Path = ["/prod/clusters"],
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

%% @doc Creates an eventbridge rule template to monitor events and send
%% notifications to your targeted resources.
-spec create_event_bridge_rule_template(aws_client:aws_client(), create_event_bridge_rule_template_request()) ->
    {ok, create_event_bridge_rule_template_response(), tuple()} |
    {error, any()} |
    {error, create_event_bridge_rule_template_errors(), tuple()}.
create_event_bridge_rule_template(Client, Input) ->
    create_event_bridge_rule_template(Client, Input, []).

-spec create_event_bridge_rule_template(aws_client:aws_client(), create_event_bridge_rule_template_request(), proplists:proplist()) ->
    {ok, create_event_bridge_rule_template_response(), tuple()} |
    {error, any()} |
    {error, create_event_bridge_rule_template_errors(), tuple()}.
create_event_bridge_rule_template(Client, Input0, Options0) ->
    Method = post,
    Path = ["/prod/eventbridge-rule-templates"],
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

%% @doc Creates an eventbridge rule template group to group your eventbridge
%% rule templates and to attach to signal maps for dynamically creating
%% notification rules.
-spec create_event_bridge_rule_template_group(aws_client:aws_client(), create_event_bridge_rule_template_group_request()) ->
    {ok, create_event_bridge_rule_template_group_response(), tuple()} |
    {error, any()} |
    {error, create_event_bridge_rule_template_group_errors(), tuple()}.
create_event_bridge_rule_template_group(Client, Input) ->
    create_event_bridge_rule_template_group(Client, Input, []).

-spec create_event_bridge_rule_template_group(aws_client:aws_client(), create_event_bridge_rule_template_group_request(), proplists:proplist()) ->
    {ok, create_event_bridge_rule_template_group_response(), tuple()} |
    {error, any()} |
    {error, create_event_bridge_rule_template_group_errors(), tuple()}.
create_event_bridge_rule_template_group(Client, Input0, Options0) ->
    Method = post,
    Path = ["/prod/eventbridge-rule-template-groups"],
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

%% @doc Create an input
-spec create_input(aws_client:aws_client(), create_input_request()) ->
    {ok, create_input_response(), tuple()} |
    {error, any()} |
    {error, create_input_errors(), tuple()}.
create_input(Client, Input) ->
    create_input(Client, Input, []).

-spec create_input(aws_client:aws_client(), create_input_request(), proplists:proplist()) ->
    {ok, create_input_response(), tuple()} |
    {error, any()} |
    {error, create_input_errors(), tuple()}.
create_input(Client, Input0, Options0) ->
    Method = post,
    Path = ["/prod/inputs"],
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

%% @doc Creates a Input Security Group
-spec create_input_security_group(aws_client:aws_client(), create_input_security_group_request()) ->
    {ok, create_input_security_group_response(), tuple()} |
    {error, any()} |
    {error, create_input_security_group_errors(), tuple()}.
create_input_security_group(Client, Input) ->
    create_input_security_group(Client, Input, []).

-spec create_input_security_group(aws_client:aws_client(), create_input_security_group_request(), proplists:proplist()) ->
    {ok, create_input_security_group_response(), tuple()} |
    {error, any()} |
    {error, create_input_security_group_errors(), tuple()}.
create_input_security_group(Client, Input0, Options0) ->
    Method = post,
    Path = ["/prod/inputSecurityGroups"],
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

%% @doc Create a new multiplex.
-spec create_multiplex(aws_client:aws_client(), create_multiplex_request()) ->
    {ok, create_multiplex_response(), tuple()} |
    {error, any()} |
    {error, create_multiplex_errors(), tuple()}.
create_multiplex(Client, Input) ->
    create_multiplex(Client, Input, []).

-spec create_multiplex(aws_client:aws_client(), create_multiplex_request(), proplists:proplist()) ->
    {ok, create_multiplex_response(), tuple()} |
    {error, any()} |
    {error, create_multiplex_errors(), tuple()}.
create_multiplex(Client, Input0, Options0) ->
    Method = post,
    Path = ["/prod/multiplexes"],
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

%% @doc Create a new program in the multiplex.
-spec create_multiplex_program(aws_client:aws_client(), binary() | list(), create_multiplex_program_request()) ->
    {ok, create_multiplex_program_response(), tuple()} |
    {error, any()} |
    {error, create_multiplex_program_errors(), tuple()}.
create_multiplex_program(Client, MultiplexId, Input) ->
    create_multiplex_program(Client, MultiplexId, Input, []).

-spec create_multiplex_program(aws_client:aws_client(), binary() | list(), create_multiplex_program_request(), proplists:proplist()) ->
    {ok, create_multiplex_program_response(), tuple()} |
    {error, any()} |
    {error, create_multiplex_program_errors(), tuple()}.
create_multiplex_program(Client, MultiplexId, Input0, Options0) ->
    Method = post,
    Path = ["/prod/multiplexes/", aws_util:encode_uri(MultiplexId), "/programs"],
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

%% @doc Create as many Networks as you need.
%%
%% You will associate one or more Clusters with each Network.Each Network
%% provides MediaLive Anywhere with required information about the network in
%% your organization that you are using for video encoding using MediaLive.
-spec create_network(aws_client:aws_client(), create_network_request()) ->
    {ok, create_network_response(), tuple()} |
    {error, any()} |
    {error, create_network_errors(), tuple()}.
create_network(Client, Input) ->
    create_network(Client, Input, []).

-spec create_network(aws_client:aws_client(), create_network_request(), proplists:proplist()) ->
    {ok, create_network_response(), tuple()} |
    {error, any()} |
    {error, create_network_errors(), tuple()}.
create_network(Client, Input0, Options0) ->
    Method = post,
    Path = ["/prod/networks"],
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

%% @doc Create a Node in the specified Cluster.
%%
%% You can also create Nodes using the CreateNodeRegistrationScript. Note
%% that you can't move a Node to another Cluster.
-spec create_node(aws_client:aws_client(), binary() | list(), create_node_request()) ->
    {ok, create_node_response(), tuple()} |
    {error, any()} |
    {error, create_node_errors(), tuple()}.
create_node(Client, ClusterId, Input) ->
    create_node(Client, ClusterId, Input, []).

-spec create_node(aws_client:aws_client(), binary() | list(), create_node_request(), proplists:proplist()) ->
    {ok, create_node_response(), tuple()} |
    {error, any()} |
    {error, create_node_errors(), tuple()}.
create_node(Client, ClusterId, Input0, Options0) ->
    Method = post,
    Path = ["/prod/clusters/", aws_util:encode_uri(ClusterId), "/nodes"],
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

%% @doc Create the Register Node script for all the nodes intended for a
%% specific Cluster.
%%
%% You will then run the script on each hardware unit that is intended for
%% that Cluster. The script creates a Node in the specified Cluster. It then
%% binds the Node to this hardware unit, and activates the node hardware for
%% use with MediaLive Anywhere.
-spec create_node_registration_script(aws_client:aws_client(), binary() | list(), create_node_registration_script_request()) ->
    {ok, create_node_registration_script_response(), tuple()} |
    {error, any()} |
    {error, create_node_registration_script_errors(), tuple()}.
create_node_registration_script(Client, ClusterId, Input) ->
    create_node_registration_script(Client, ClusterId, Input, []).

-spec create_node_registration_script(aws_client:aws_client(), binary() | list(), create_node_registration_script_request(), proplists:proplist()) ->
    {ok, create_node_registration_script_response(), tuple()} |
    {error, any()} |
    {error, create_node_registration_script_errors(), tuple()}.
create_node_registration_script(Client, ClusterId, Input0, Options0) ->
    Method = post,
    Path = ["/prod/clusters/", aws_util:encode_uri(ClusterId), "/nodeRegistrationScript"],
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

%% @doc Create a partner input
-spec create_partner_input(aws_client:aws_client(), binary() | list(), create_partner_input_request()) ->
    {ok, create_partner_input_response(), tuple()} |
    {error, any()} |
    {error, create_partner_input_errors(), tuple()}.
create_partner_input(Client, InputId, Input) ->
    create_partner_input(Client, InputId, Input, []).

-spec create_partner_input(aws_client:aws_client(), binary() | list(), create_partner_input_request(), proplists:proplist()) ->
    {ok, create_partner_input_response(), tuple()} |
    {error, any()} |
    {error, create_partner_input_errors(), tuple()}.
create_partner_input(Client, InputId, Input0, Options0) ->
    Method = post,
    Path = ["/prod/inputs/", aws_util:encode_uri(InputId), "/partners"],
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

%% @doc Initiates the creation of a new signal map.
%%
%% Will discover a new mediaResourceMap based on the provided
%% discoveryEntryPointArn.
-spec create_signal_map(aws_client:aws_client(), create_signal_map_request()) ->
    {ok, create_signal_map_response(), tuple()} |
    {error, any()} |
    {error, create_signal_map_errors(), tuple()}.
create_signal_map(Client, Input) ->
    create_signal_map(Client, Input, []).

-spec create_signal_map(aws_client:aws_client(), create_signal_map_request(), proplists:proplist()) ->
    {ok, create_signal_map_response(), tuple()} |
    {error, any()} |
    {error, create_signal_map_errors(), tuple()}.
create_signal_map(Client, Input0, Options0) ->
    Method = post,
    Path = ["/prod/signal-maps"],
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

%% @doc Create tags for a resource
-spec create_tags(aws_client:aws_client(), binary() | list(), create_tags_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, create_tags_errors(), tuple()}.
create_tags(Client, ResourceArn, Input) ->
    create_tags(Client, ResourceArn, Input, []).

-spec create_tags(aws_client:aws_client(), binary() | list(), create_tags_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, create_tags_errors(), tuple()}.
create_tags(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/prod/tags/", aws_util:encode_uri(ResourceArn), ""],
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

%% @doc Starts deletion of channel.
%%
%% The associated outputs are also deleted.
-spec delete_channel(aws_client:aws_client(), binary() | list(), delete_channel_request()) ->
    {ok, delete_channel_response(), tuple()} |
    {error, any()} |
    {error, delete_channel_errors(), tuple()}.
delete_channel(Client, ChannelId, Input) ->
    delete_channel(Client, ChannelId, Input, []).

-spec delete_channel(aws_client:aws_client(), binary() | list(), delete_channel_request(), proplists:proplist()) ->
    {ok, delete_channel_response(), tuple()} |
    {error, any()} |
    {error, delete_channel_errors(), tuple()}.
delete_channel(Client, ChannelId, Input0, Options0) ->
    Method = delete,
    Path = ["/prod/channels/", aws_util:encode_uri(ChannelId), ""],
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

%% @doc Delete the specified ChannelPlacementGroup that exists in the
%% specified Cluster.
-spec delete_channel_placement_group(aws_client:aws_client(), binary() | list(), binary() | list(), delete_channel_placement_group_request()) ->
    {ok, delete_channel_placement_group_response(), tuple()} |
    {error, any()} |
    {error, delete_channel_placement_group_errors(), tuple()}.
delete_channel_placement_group(Client, ChannelPlacementGroupId, ClusterId, Input) ->
    delete_channel_placement_group(Client, ChannelPlacementGroupId, ClusterId, Input, []).

-spec delete_channel_placement_group(aws_client:aws_client(), binary() | list(), binary() | list(), delete_channel_placement_group_request(), proplists:proplist()) ->
    {ok, delete_channel_placement_group_response(), tuple()} |
    {error, any()} |
    {error, delete_channel_placement_group_errors(), tuple()}.
delete_channel_placement_group(Client, ChannelPlacementGroupId, ClusterId, Input0, Options0) ->
    Method = delete,
    Path = ["/prod/clusters/", aws_util:encode_uri(ClusterId), "/channelplacementgroups/", aws_util:encode_uri(ChannelPlacementGroupId), ""],
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

%% @doc Deletes a cloudwatch alarm template.
-spec delete_cloud_watch_alarm_template(aws_client:aws_client(), binary() | list(), delete_cloud_watch_alarm_template_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_cloud_watch_alarm_template_errors(), tuple()}.
delete_cloud_watch_alarm_template(Client, Identifier, Input) ->
    delete_cloud_watch_alarm_template(Client, Identifier, Input, []).

-spec delete_cloud_watch_alarm_template(aws_client:aws_client(), binary() | list(), delete_cloud_watch_alarm_template_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_cloud_watch_alarm_template_errors(), tuple()}.
delete_cloud_watch_alarm_template(Client, Identifier, Input0, Options0) ->
    Method = delete,
    Path = ["/prod/cloudwatch-alarm-templates/", aws_util:encode_uri(Identifier), ""],
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

%% @doc Deletes a cloudwatch alarm template group.
%%
%% You must detach this group from all signal maps and ensure its existing
%% templates are moved to another group or deleted.
-spec delete_cloud_watch_alarm_template_group(aws_client:aws_client(), binary() | list(), delete_cloud_watch_alarm_template_group_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_cloud_watch_alarm_template_group_errors(), tuple()}.
delete_cloud_watch_alarm_template_group(Client, Identifier, Input) ->
    delete_cloud_watch_alarm_template_group(Client, Identifier, Input, []).

-spec delete_cloud_watch_alarm_template_group(aws_client:aws_client(), binary() | list(), delete_cloud_watch_alarm_template_group_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_cloud_watch_alarm_template_group_errors(), tuple()}.
delete_cloud_watch_alarm_template_group(Client, Identifier, Input0, Options0) ->
    Method = delete,
    Path = ["/prod/cloudwatch-alarm-template-groups/", aws_util:encode_uri(Identifier), ""],
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

%% @doc Delete a Cluster.
%%
%% The Cluster must be idle.
-spec delete_cluster(aws_client:aws_client(), binary() | list(), delete_cluster_request()) ->
    {ok, delete_cluster_response(), tuple()} |
    {error, any()} |
    {error, delete_cluster_errors(), tuple()}.
delete_cluster(Client, ClusterId, Input) ->
    delete_cluster(Client, ClusterId, Input, []).

-spec delete_cluster(aws_client:aws_client(), binary() | list(), delete_cluster_request(), proplists:proplist()) ->
    {ok, delete_cluster_response(), tuple()} |
    {error, any()} |
    {error, delete_cluster_errors(), tuple()}.
delete_cluster(Client, ClusterId, Input0, Options0) ->
    Method = delete,
    Path = ["/prod/clusters/", aws_util:encode_uri(ClusterId), ""],
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

%% @doc Deletes an eventbridge rule template.
-spec delete_event_bridge_rule_template(aws_client:aws_client(), binary() | list(), delete_event_bridge_rule_template_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_event_bridge_rule_template_errors(), tuple()}.
delete_event_bridge_rule_template(Client, Identifier, Input) ->
    delete_event_bridge_rule_template(Client, Identifier, Input, []).

-spec delete_event_bridge_rule_template(aws_client:aws_client(), binary() | list(), delete_event_bridge_rule_template_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_event_bridge_rule_template_errors(), tuple()}.
delete_event_bridge_rule_template(Client, Identifier, Input0, Options0) ->
    Method = delete,
    Path = ["/prod/eventbridge-rule-templates/", aws_util:encode_uri(Identifier), ""],
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

%% @doc Deletes an eventbridge rule template group.
%%
%% You must detach this group from all signal maps and ensure its existing
%% templates are moved to another group or deleted.
-spec delete_event_bridge_rule_template_group(aws_client:aws_client(), binary() | list(), delete_event_bridge_rule_template_group_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_event_bridge_rule_template_group_errors(), tuple()}.
delete_event_bridge_rule_template_group(Client, Identifier, Input) ->
    delete_event_bridge_rule_template_group(Client, Identifier, Input, []).

-spec delete_event_bridge_rule_template_group(aws_client:aws_client(), binary() | list(), delete_event_bridge_rule_template_group_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_event_bridge_rule_template_group_errors(), tuple()}.
delete_event_bridge_rule_template_group(Client, Identifier, Input0, Options0) ->
    Method = delete,
    Path = ["/prod/eventbridge-rule-template-groups/", aws_util:encode_uri(Identifier), ""],
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

%% @doc Deletes the input end point
-spec delete_input(aws_client:aws_client(), binary() | list(), delete_input_request()) ->
    {ok, delete_input_response(), tuple()} |
    {error, any()} |
    {error, delete_input_errors(), tuple()}.
delete_input(Client, InputId, Input) ->
    delete_input(Client, InputId, Input, []).

-spec delete_input(aws_client:aws_client(), binary() | list(), delete_input_request(), proplists:proplist()) ->
    {ok, delete_input_response(), tuple()} |
    {error, any()} |
    {error, delete_input_errors(), tuple()}.
delete_input(Client, InputId, Input0, Options0) ->
    Method = delete,
    Path = ["/prod/inputs/", aws_util:encode_uri(InputId), ""],
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

%% @doc Deletes an Input Security Group
-spec delete_input_security_group(aws_client:aws_client(), binary() | list(), delete_input_security_group_request()) ->
    {ok, delete_input_security_group_response(), tuple()} |
    {error, any()} |
    {error, delete_input_security_group_errors(), tuple()}.
delete_input_security_group(Client, InputSecurityGroupId, Input) ->
    delete_input_security_group(Client, InputSecurityGroupId, Input, []).

-spec delete_input_security_group(aws_client:aws_client(), binary() | list(), delete_input_security_group_request(), proplists:proplist()) ->
    {ok, delete_input_security_group_response(), tuple()} |
    {error, any()} |
    {error, delete_input_security_group_errors(), tuple()}.
delete_input_security_group(Client, InputSecurityGroupId, Input0, Options0) ->
    Method = delete,
    Path = ["/prod/inputSecurityGroups/", aws_util:encode_uri(InputSecurityGroupId), ""],
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

%% @doc Delete a multiplex.
%%
%% The multiplex must be idle.
-spec delete_multiplex(aws_client:aws_client(), binary() | list(), delete_multiplex_request()) ->
    {ok, delete_multiplex_response(), tuple()} |
    {error, any()} |
    {error, delete_multiplex_errors(), tuple()}.
delete_multiplex(Client, MultiplexId, Input) ->
    delete_multiplex(Client, MultiplexId, Input, []).

-spec delete_multiplex(aws_client:aws_client(), binary() | list(), delete_multiplex_request(), proplists:proplist()) ->
    {ok, delete_multiplex_response(), tuple()} |
    {error, any()} |
    {error, delete_multiplex_errors(), tuple()}.
delete_multiplex(Client, MultiplexId, Input0, Options0) ->
    Method = delete,
    Path = ["/prod/multiplexes/", aws_util:encode_uri(MultiplexId), ""],
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

%% @doc Delete a program from a multiplex.
-spec delete_multiplex_program(aws_client:aws_client(), binary() | list(), binary() | list(), delete_multiplex_program_request()) ->
    {ok, delete_multiplex_program_response(), tuple()} |
    {error, any()} |
    {error, delete_multiplex_program_errors(), tuple()}.
delete_multiplex_program(Client, MultiplexId, ProgramName, Input) ->
    delete_multiplex_program(Client, MultiplexId, ProgramName, Input, []).

-spec delete_multiplex_program(aws_client:aws_client(), binary() | list(), binary() | list(), delete_multiplex_program_request(), proplists:proplist()) ->
    {ok, delete_multiplex_program_response(), tuple()} |
    {error, any()} |
    {error, delete_multiplex_program_errors(), tuple()}.
delete_multiplex_program(Client, MultiplexId, ProgramName, Input0, Options0) ->
    Method = delete,
    Path = ["/prod/multiplexes/", aws_util:encode_uri(MultiplexId), "/programs/", aws_util:encode_uri(ProgramName), ""],
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

%% @doc Delete a Network.
%%
%% The Network must have no resources associated with it.
-spec delete_network(aws_client:aws_client(), binary() | list(), delete_network_request()) ->
    {ok, delete_network_response(), tuple()} |
    {error, any()} |
    {error, delete_network_errors(), tuple()}.
delete_network(Client, NetworkId, Input) ->
    delete_network(Client, NetworkId, Input, []).

-spec delete_network(aws_client:aws_client(), binary() | list(), delete_network_request(), proplists:proplist()) ->
    {ok, delete_network_response(), tuple()} |
    {error, any()} |
    {error, delete_network_errors(), tuple()}.
delete_network(Client, NetworkId, Input0, Options0) ->
    Method = delete,
    Path = ["/prod/networks/", aws_util:encode_uri(NetworkId), ""],
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

%% @doc Delete a Node.
%%
%% The Node must be IDLE.
-spec delete_node(aws_client:aws_client(), binary() | list(), binary() | list(), delete_node_request()) ->
    {ok, delete_node_response(), tuple()} |
    {error, any()} |
    {error, delete_node_errors(), tuple()}.
delete_node(Client, ClusterId, NodeId, Input) ->
    delete_node(Client, ClusterId, NodeId, Input, []).

-spec delete_node(aws_client:aws_client(), binary() | list(), binary() | list(), delete_node_request(), proplists:proplist()) ->
    {ok, delete_node_response(), tuple()} |
    {error, any()} |
    {error, delete_node_errors(), tuple()}.
delete_node(Client, ClusterId, NodeId, Input0, Options0) ->
    Method = delete,
    Path = ["/prod/clusters/", aws_util:encode_uri(ClusterId), "/nodes/", aws_util:encode_uri(NodeId), ""],
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

%% @doc Delete an expired reservation.
-spec delete_reservation(aws_client:aws_client(), binary() | list(), delete_reservation_request()) ->
    {ok, delete_reservation_response(), tuple()} |
    {error, any()} |
    {error, delete_reservation_errors(), tuple()}.
delete_reservation(Client, ReservationId, Input) ->
    delete_reservation(Client, ReservationId, Input, []).

-spec delete_reservation(aws_client:aws_client(), binary() | list(), delete_reservation_request(), proplists:proplist()) ->
    {ok, delete_reservation_response(), tuple()} |
    {error, any()} |
    {error, delete_reservation_errors(), tuple()}.
delete_reservation(Client, ReservationId, Input0, Options0) ->
    Method = delete,
    Path = ["/prod/reservations/", aws_util:encode_uri(ReservationId), ""],
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

%% @doc Delete all schedule actions on a channel.
-spec delete_schedule(aws_client:aws_client(), binary() | list(), delete_schedule_request()) ->
    {ok, delete_schedule_response(), tuple()} |
    {error, any()} |
    {error, delete_schedule_errors(), tuple()}.
delete_schedule(Client, ChannelId, Input) ->
    delete_schedule(Client, ChannelId, Input, []).

-spec delete_schedule(aws_client:aws_client(), binary() | list(), delete_schedule_request(), proplists:proplist()) ->
    {ok, delete_schedule_response(), tuple()} |
    {error, any()} |
    {error, delete_schedule_errors(), tuple()}.
delete_schedule(Client, ChannelId, Input0, Options0) ->
    Method = delete,
    Path = ["/prod/channels/", aws_util:encode_uri(ChannelId), "/schedule"],
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

%% @doc Deletes the specified signal map.
-spec delete_signal_map(aws_client:aws_client(), binary() | list(), delete_signal_map_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_signal_map_errors(), tuple()}.
delete_signal_map(Client, Identifier, Input) ->
    delete_signal_map(Client, Identifier, Input, []).

-spec delete_signal_map(aws_client:aws_client(), binary() | list(), delete_signal_map_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_signal_map_errors(), tuple()}.
delete_signal_map(Client, Identifier, Input0, Options0) ->
    Method = delete,
    Path = ["/prod/signal-maps/", aws_util:encode_uri(Identifier), ""],
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

%% @doc Removes tags for a resource
-spec delete_tags(aws_client:aws_client(), binary() | list(), delete_tags_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_tags_errors(), tuple()}.
delete_tags(Client, ResourceArn, Input) ->
    delete_tags(Client, ResourceArn, Input, []).

-spec delete_tags(aws_client:aws_client(), binary() | list(), delete_tags_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_tags_errors(), tuple()}.
delete_tags(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/prod/tags/", aws_util:encode_uri(ResourceArn), ""],
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

%% @doc Describe account configuration
-spec describe_account_configuration(aws_client:aws_client()) ->
    {ok, describe_account_configuration_response(), tuple()} |
    {error, any()} |
    {error, describe_account_configuration_errors(), tuple()}.
describe_account_configuration(Client)
  when is_map(Client) ->
    describe_account_configuration(Client, #{}, #{}).

-spec describe_account_configuration(aws_client:aws_client(), map(), map()) ->
    {ok, describe_account_configuration_response(), tuple()} |
    {error, any()} |
    {error, describe_account_configuration_errors(), tuple()}.
describe_account_configuration(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_account_configuration(Client, QueryMap, HeadersMap, []).

-spec describe_account_configuration(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, describe_account_configuration_response(), tuple()} |
    {error, any()} |
    {error, describe_account_configuration_errors(), tuple()}.
describe_account_configuration(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/prod/accountConfiguration"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets details about a channel
-spec describe_channel(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_channel_response(), tuple()} |
    {error, any()} |
    {error, describe_channel_errors(), tuple()}.
describe_channel(Client, ChannelId)
  when is_map(Client) ->
    describe_channel(Client, ChannelId, #{}, #{}).

-spec describe_channel(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_channel_response(), tuple()} |
    {error, any()} |
    {error, describe_channel_errors(), tuple()}.
describe_channel(Client, ChannelId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_channel(Client, ChannelId, QueryMap, HeadersMap, []).

-spec describe_channel(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_channel_response(), tuple()} |
    {error, any()} |
    {error, describe_channel_errors(), tuple()}.
describe_channel(Client, ChannelId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/prod/channels/", aws_util:encode_uri(ChannelId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get details about a ChannelPlacementGroup.
-spec describe_channel_placement_group(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_channel_placement_group_response(), tuple()} |
    {error, any()} |
    {error, describe_channel_placement_group_errors(), tuple()}.
describe_channel_placement_group(Client, ChannelPlacementGroupId, ClusterId)
  when is_map(Client) ->
    describe_channel_placement_group(Client, ChannelPlacementGroupId, ClusterId, #{}, #{}).

-spec describe_channel_placement_group(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_channel_placement_group_response(), tuple()} |
    {error, any()} |
    {error, describe_channel_placement_group_errors(), tuple()}.
describe_channel_placement_group(Client, ChannelPlacementGroupId, ClusterId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_channel_placement_group(Client, ChannelPlacementGroupId, ClusterId, QueryMap, HeadersMap, []).

-spec describe_channel_placement_group(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_channel_placement_group_response(), tuple()} |
    {error, any()} |
    {error, describe_channel_placement_group_errors(), tuple()}.
describe_channel_placement_group(Client, ChannelPlacementGroupId, ClusterId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/prod/clusters/", aws_util:encode_uri(ClusterId), "/channelplacementgroups/", aws_util:encode_uri(ChannelPlacementGroupId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get details about a Cluster.
-spec describe_cluster(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_cluster_response(), tuple()} |
    {error, any()} |
    {error, describe_cluster_errors(), tuple()}.
describe_cluster(Client, ClusterId)
  when is_map(Client) ->
    describe_cluster(Client, ClusterId, #{}, #{}).

-spec describe_cluster(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_cluster_response(), tuple()} |
    {error, any()} |
    {error, describe_cluster_errors(), tuple()}.
describe_cluster(Client, ClusterId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_cluster(Client, ClusterId, QueryMap, HeadersMap, []).

-spec describe_cluster(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_cluster_response(), tuple()} |
    {error, any()} |
    {error, describe_cluster_errors(), tuple()}.
describe_cluster(Client, ClusterId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/prod/clusters/", aws_util:encode_uri(ClusterId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Produces details about an input
-spec describe_input(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_input_response(), tuple()} |
    {error, any()} |
    {error, describe_input_errors(), tuple()}.
describe_input(Client, InputId)
  when is_map(Client) ->
    describe_input(Client, InputId, #{}, #{}).

-spec describe_input(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_input_response(), tuple()} |
    {error, any()} |
    {error, describe_input_errors(), tuple()}.
describe_input(Client, InputId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_input(Client, InputId, QueryMap, HeadersMap, []).

-spec describe_input(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_input_response(), tuple()} |
    {error, any()} |
    {error, describe_input_errors(), tuple()}.
describe_input(Client, InputId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/prod/inputs/", aws_util:encode_uri(InputId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the details for the input device
-spec describe_input_device(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_input_device_response(), tuple()} |
    {error, any()} |
    {error, describe_input_device_errors(), tuple()}.
describe_input_device(Client, InputDeviceId)
  when is_map(Client) ->
    describe_input_device(Client, InputDeviceId, #{}, #{}).

-spec describe_input_device(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_input_device_response(), tuple()} |
    {error, any()} |
    {error, describe_input_device_errors(), tuple()}.
describe_input_device(Client, InputDeviceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_input_device(Client, InputDeviceId, QueryMap, HeadersMap, []).

-spec describe_input_device(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_input_device_response(), tuple()} |
    {error, any()} |
    {error, describe_input_device_errors(), tuple()}.
describe_input_device(Client, InputDeviceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/prod/inputDevices/", aws_util:encode_uri(InputDeviceId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get the latest thumbnail data for the input device.
-spec describe_input_device_thumbnail(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_input_device_thumbnail_response(), tuple()} |
    {error, any()} |
    {error, describe_input_device_thumbnail_errors(), tuple()}.
describe_input_device_thumbnail(Client, InputDeviceId, Accept)
  when is_map(Client) ->
    describe_input_device_thumbnail(Client, InputDeviceId, Accept, #{}, #{}).

-spec describe_input_device_thumbnail(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_input_device_thumbnail_response(), tuple()} |
    {error, any()} |
    {error, describe_input_device_thumbnail_errors(), tuple()}.
describe_input_device_thumbnail(Client, InputDeviceId, Accept, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_input_device_thumbnail(Client, InputDeviceId, Accept, QueryMap, HeadersMap, []).

-spec describe_input_device_thumbnail(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_input_device_thumbnail_response(), tuple()} |
    {error, any()} |
    {error, describe_input_device_thumbnail_errors(), tuple()}.
describe_input_device_thumbnail(Client, InputDeviceId, Accept, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/prod/inputDevices/", aws_util:encode_uri(InputDeviceId), "/thumbnailData"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers0 =
      [
        {<<"accept">>, Accept}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query_ = [],

    case request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"Content-Length">>, <<"ContentLength">>},
            {<<"Content-Type">>, <<"ContentType">>},
            {<<"ETag">>, <<"ETag">>},
            {<<"Last-Modified">>, <<"LastModified">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Produces a summary of an Input Security Group
-spec describe_input_security_group(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_input_security_group_response(), tuple()} |
    {error, any()} |
    {error, describe_input_security_group_errors(), tuple()}.
describe_input_security_group(Client, InputSecurityGroupId)
  when is_map(Client) ->
    describe_input_security_group(Client, InputSecurityGroupId, #{}, #{}).

-spec describe_input_security_group(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_input_security_group_response(), tuple()} |
    {error, any()} |
    {error, describe_input_security_group_errors(), tuple()}.
describe_input_security_group(Client, InputSecurityGroupId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_input_security_group(Client, InputSecurityGroupId, QueryMap, HeadersMap, []).

-spec describe_input_security_group(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_input_security_group_response(), tuple()} |
    {error, any()} |
    {error, describe_input_security_group_errors(), tuple()}.
describe_input_security_group(Client, InputSecurityGroupId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/prod/inputSecurityGroups/", aws_util:encode_uri(InputSecurityGroupId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets details about a multiplex.
-spec describe_multiplex(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_multiplex_response(), tuple()} |
    {error, any()} |
    {error, describe_multiplex_errors(), tuple()}.
describe_multiplex(Client, MultiplexId)
  when is_map(Client) ->
    describe_multiplex(Client, MultiplexId, #{}, #{}).

-spec describe_multiplex(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_multiplex_response(), tuple()} |
    {error, any()} |
    {error, describe_multiplex_errors(), tuple()}.
describe_multiplex(Client, MultiplexId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_multiplex(Client, MultiplexId, QueryMap, HeadersMap, []).

-spec describe_multiplex(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_multiplex_response(), tuple()} |
    {error, any()} |
    {error, describe_multiplex_errors(), tuple()}.
describe_multiplex(Client, MultiplexId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/prod/multiplexes/", aws_util:encode_uri(MultiplexId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get the details for a program in a multiplex.
-spec describe_multiplex_program(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_multiplex_program_response(), tuple()} |
    {error, any()} |
    {error, describe_multiplex_program_errors(), tuple()}.
describe_multiplex_program(Client, MultiplexId, ProgramName)
  when is_map(Client) ->
    describe_multiplex_program(Client, MultiplexId, ProgramName, #{}, #{}).

-spec describe_multiplex_program(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_multiplex_program_response(), tuple()} |
    {error, any()} |
    {error, describe_multiplex_program_errors(), tuple()}.
describe_multiplex_program(Client, MultiplexId, ProgramName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_multiplex_program(Client, MultiplexId, ProgramName, QueryMap, HeadersMap, []).

-spec describe_multiplex_program(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_multiplex_program_response(), tuple()} |
    {error, any()} |
    {error, describe_multiplex_program_errors(), tuple()}.
describe_multiplex_program(Client, MultiplexId, ProgramName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/prod/multiplexes/", aws_util:encode_uri(MultiplexId), "/programs/", aws_util:encode_uri(ProgramName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get details about a Network.
-spec describe_network(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_network_response(), tuple()} |
    {error, any()} |
    {error, describe_network_errors(), tuple()}.
describe_network(Client, NetworkId)
  when is_map(Client) ->
    describe_network(Client, NetworkId, #{}, #{}).

-spec describe_network(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_network_response(), tuple()} |
    {error, any()} |
    {error, describe_network_errors(), tuple()}.
describe_network(Client, NetworkId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_network(Client, NetworkId, QueryMap, HeadersMap, []).

-spec describe_network(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_network_response(), tuple()} |
    {error, any()} |
    {error, describe_network_errors(), tuple()}.
describe_network(Client, NetworkId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/prod/networks/", aws_util:encode_uri(NetworkId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get details about a Node in the specified Cluster.
-spec describe_node(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_node_response(), tuple()} |
    {error, any()} |
    {error, describe_node_errors(), tuple()}.
describe_node(Client, ClusterId, NodeId)
  when is_map(Client) ->
    describe_node(Client, ClusterId, NodeId, #{}, #{}).

-spec describe_node(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_node_response(), tuple()} |
    {error, any()} |
    {error, describe_node_errors(), tuple()}.
describe_node(Client, ClusterId, NodeId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_node(Client, ClusterId, NodeId, QueryMap, HeadersMap, []).

-spec describe_node(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_node_response(), tuple()} |
    {error, any()} |
    {error, describe_node_errors(), tuple()}.
describe_node(Client, ClusterId, NodeId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/prod/clusters/", aws_util:encode_uri(ClusterId), "/nodes/", aws_util:encode_uri(NodeId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get details for an offering.
-spec describe_offering(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_offering_response(), tuple()} |
    {error, any()} |
    {error, describe_offering_errors(), tuple()}.
describe_offering(Client, OfferingId)
  when is_map(Client) ->
    describe_offering(Client, OfferingId, #{}, #{}).

-spec describe_offering(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_offering_response(), tuple()} |
    {error, any()} |
    {error, describe_offering_errors(), tuple()}.
describe_offering(Client, OfferingId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_offering(Client, OfferingId, QueryMap, HeadersMap, []).

-spec describe_offering(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_offering_response(), tuple()} |
    {error, any()} |
    {error, describe_offering_errors(), tuple()}.
describe_offering(Client, OfferingId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/prod/offerings/", aws_util:encode_uri(OfferingId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get details for a reservation.
-spec describe_reservation(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_reservation_response(), tuple()} |
    {error, any()} |
    {error, describe_reservation_errors(), tuple()}.
describe_reservation(Client, ReservationId)
  when is_map(Client) ->
    describe_reservation(Client, ReservationId, #{}, #{}).

-spec describe_reservation(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_reservation_response(), tuple()} |
    {error, any()} |
    {error, describe_reservation_errors(), tuple()}.
describe_reservation(Client, ReservationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_reservation(Client, ReservationId, QueryMap, HeadersMap, []).

-spec describe_reservation(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_reservation_response(), tuple()} |
    {error, any()} |
    {error, describe_reservation_errors(), tuple()}.
describe_reservation(Client, ReservationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/prod/reservations/", aws_util:encode_uri(ReservationId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get a channel schedule
-spec describe_schedule(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_schedule_response(), tuple()} |
    {error, any()} |
    {error, describe_schedule_errors(), tuple()}.
describe_schedule(Client, ChannelId)
  when is_map(Client) ->
    describe_schedule(Client, ChannelId, #{}, #{}).

-spec describe_schedule(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_schedule_response(), tuple()} |
    {error, any()} |
    {error, describe_schedule_errors(), tuple()}.
describe_schedule(Client, ChannelId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_schedule(Client, ChannelId, QueryMap, HeadersMap, []).

-spec describe_schedule(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_schedule_response(), tuple()} |
    {error, any()} |
    {error, describe_schedule_errors(), tuple()}.
describe_schedule(Client, ChannelId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/prod/channels/", aws_util:encode_uri(ChannelId), "/schedule"],
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

%% @doc Describe the latest thumbnails data.
-spec describe_thumbnails(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, describe_thumbnails_response(), tuple()} |
    {error, any()} |
    {error, describe_thumbnails_errors(), tuple()}.
describe_thumbnails(Client, ChannelId, PipelineId, ThumbnailType)
  when is_map(Client) ->
    describe_thumbnails(Client, ChannelId, PipelineId, ThumbnailType, #{}, #{}).

-spec describe_thumbnails(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_thumbnails_response(), tuple()} |
    {error, any()} |
    {error, describe_thumbnails_errors(), tuple()}.
describe_thumbnails(Client, ChannelId, PipelineId, ThumbnailType, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_thumbnails(Client, ChannelId, PipelineId, ThumbnailType, QueryMap, HeadersMap, []).

-spec describe_thumbnails(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_thumbnails_response(), tuple()} |
    {error, any()} |
    {error, describe_thumbnails_errors(), tuple()}.
describe_thumbnails(Client, ChannelId, PipelineId, ThumbnailType, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/prod/channels/", aws_util:encode_uri(ChannelId), "/thumbnails"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"pipelineId">>, PipelineId},
        {<<"thumbnailType">>, ThumbnailType}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the specified cloudwatch alarm template.
-spec get_cloud_watch_alarm_template(aws_client:aws_client(), binary() | list()) ->
    {ok, get_cloud_watch_alarm_template_response(), tuple()} |
    {error, any()} |
    {error, get_cloud_watch_alarm_template_errors(), tuple()}.
get_cloud_watch_alarm_template(Client, Identifier)
  when is_map(Client) ->
    get_cloud_watch_alarm_template(Client, Identifier, #{}, #{}).

-spec get_cloud_watch_alarm_template(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_cloud_watch_alarm_template_response(), tuple()} |
    {error, any()} |
    {error, get_cloud_watch_alarm_template_errors(), tuple()}.
get_cloud_watch_alarm_template(Client, Identifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_cloud_watch_alarm_template(Client, Identifier, QueryMap, HeadersMap, []).

-spec get_cloud_watch_alarm_template(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_cloud_watch_alarm_template_response(), tuple()} |
    {error, any()} |
    {error, get_cloud_watch_alarm_template_errors(), tuple()}.
get_cloud_watch_alarm_template(Client, Identifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/prod/cloudwatch-alarm-templates/", aws_util:encode_uri(Identifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the specified cloudwatch alarm template group.
-spec get_cloud_watch_alarm_template_group(aws_client:aws_client(), binary() | list()) ->
    {ok, get_cloud_watch_alarm_template_group_response(), tuple()} |
    {error, any()} |
    {error, get_cloud_watch_alarm_template_group_errors(), tuple()}.
get_cloud_watch_alarm_template_group(Client, Identifier)
  when is_map(Client) ->
    get_cloud_watch_alarm_template_group(Client, Identifier, #{}, #{}).

-spec get_cloud_watch_alarm_template_group(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_cloud_watch_alarm_template_group_response(), tuple()} |
    {error, any()} |
    {error, get_cloud_watch_alarm_template_group_errors(), tuple()}.
get_cloud_watch_alarm_template_group(Client, Identifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_cloud_watch_alarm_template_group(Client, Identifier, QueryMap, HeadersMap, []).

-spec get_cloud_watch_alarm_template_group(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_cloud_watch_alarm_template_group_response(), tuple()} |
    {error, any()} |
    {error, get_cloud_watch_alarm_template_group_errors(), tuple()}.
get_cloud_watch_alarm_template_group(Client, Identifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/prod/cloudwatch-alarm-template-groups/", aws_util:encode_uri(Identifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the specified eventbridge rule template.
-spec get_event_bridge_rule_template(aws_client:aws_client(), binary() | list()) ->
    {ok, get_event_bridge_rule_template_response(), tuple()} |
    {error, any()} |
    {error, get_event_bridge_rule_template_errors(), tuple()}.
get_event_bridge_rule_template(Client, Identifier)
  when is_map(Client) ->
    get_event_bridge_rule_template(Client, Identifier, #{}, #{}).

-spec get_event_bridge_rule_template(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_event_bridge_rule_template_response(), tuple()} |
    {error, any()} |
    {error, get_event_bridge_rule_template_errors(), tuple()}.
get_event_bridge_rule_template(Client, Identifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_event_bridge_rule_template(Client, Identifier, QueryMap, HeadersMap, []).

-spec get_event_bridge_rule_template(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_event_bridge_rule_template_response(), tuple()} |
    {error, any()} |
    {error, get_event_bridge_rule_template_errors(), tuple()}.
get_event_bridge_rule_template(Client, Identifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/prod/eventbridge-rule-templates/", aws_util:encode_uri(Identifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the specified eventbridge rule template group.
-spec get_event_bridge_rule_template_group(aws_client:aws_client(), binary() | list()) ->
    {ok, get_event_bridge_rule_template_group_response(), tuple()} |
    {error, any()} |
    {error, get_event_bridge_rule_template_group_errors(), tuple()}.
get_event_bridge_rule_template_group(Client, Identifier)
  when is_map(Client) ->
    get_event_bridge_rule_template_group(Client, Identifier, #{}, #{}).

-spec get_event_bridge_rule_template_group(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_event_bridge_rule_template_group_response(), tuple()} |
    {error, any()} |
    {error, get_event_bridge_rule_template_group_errors(), tuple()}.
get_event_bridge_rule_template_group(Client, Identifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_event_bridge_rule_template_group(Client, Identifier, QueryMap, HeadersMap, []).

-spec get_event_bridge_rule_template_group(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_event_bridge_rule_template_group_response(), tuple()} |
    {error, any()} |
    {error, get_event_bridge_rule_template_group_errors(), tuple()}.
get_event_bridge_rule_template_group(Client, Identifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/prod/eventbridge-rule-template-groups/", aws_util:encode_uri(Identifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the specified signal map.
-spec get_signal_map(aws_client:aws_client(), binary() | list()) ->
    {ok, get_signal_map_response(), tuple()} |
    {error, any()} |
    {error, get_signal_map_errors(), tuple()}.
get_signal_map(Client, Identifier)
  when is_map(Client) ->
    get_signal_map(Client, Identifier, #{}, #{}).

-spec get_signal_map(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_signal_map_response(), tuple()} |
    {error, any()} |
    {error, get_signal_map_errors(), tuple()}.
get_signal_map(Client, Identifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_signal_map(Client, Identifier, QueryMap, HeadersMap, []).

-spec get_signal_map(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_signal_map_response(), tuple()} |
    {error, any()} |
    {error, get_signal_map_errors(), tuple()}.
get_signal_map(Client, Identifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/prod/signal-maps/", aws_util:encode_uri(Identifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieve the list of ChannelPlacementGroups in the specified Cluster.
-spec list_channel_placement_groups(aws_client:aws_client(), binary() | list()) ->
    {ok, list_channel_placement_groups_response(), tuple()} |
    {error, any()} |
    {error, list_channel_placement_groups_errors(), tuple()}.
list_channel_placement_groups(Client, ClusterId)
  when is_map(Client) ->
    list_channel_placement_groups(Client, ClusterId, #{}, #{}).

-spec list_channel_placement_groups(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_channel_placement_groups_response(), tuple()} |
    {error, any()} |
    {error, list_channel_placement_groups_errors(), tuple()}.
list_channel_placement_groups(Client, ClusterId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_channel_placement_groups(Client, ClusterId, QueryMap, HeadersMap, []).

-spec list_channel_placement_groups(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_channel_placement_groups_response(), tuple()} |
    {error, any()} |
    {error, list_channel_placement_groups_errors(), tuple()}.
list_channel_placement_groups(Client, ClusterId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/prod/clusters/", aws_util:encode_uri(ClusterId), "/channelplacementgroups"],
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

%% @doc Produces list of channels that have been created
-spec list_channels(aws_client:aws_client()) ->
    {ok, list_channels_response(), tuple()} |
    {error, any()} |
    {error, list_channels_errors(), tuple()}.
list_channels(Client)
  when is_map(Client) ->
    list_channels(Client, #{}, #{}).

-spec list_channels(aws_client:aws_client(), map(), map()) ->
    {ok, list_channels_response(), tuple()} |
    {error, any()} |
    {error, list_channels_errors(), tuple()}.
list_channels(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_channels(Client, QueryMap, HeadersMap, []).

-spec list_channels(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_channels_response(), tuple()} |
    {error, any()} |
    {error, list_channels_errors(), tuple()}.
list_channels(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/prod/channels"],
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

%% @doc Lists cloudwatch alarm template groups.
-spec list_cloud_watch_alarm_template_groups(aws_client:aws_client()) ->
    {ok, list_cloud_watch_alarm_template_groups_response(), tuple()} |
    {error, any()} |
    {error, list_cloud_watch_alarm_template_groups_errors(), tuple()}.
list_cloud_watch_alarm_template_groups(Client)
  when is_map(Client) ->
    list_cloud_watch_alarm_template_groups(Client, #{}, #{}).

-spec list_cloud_watch_alarm_template_groups(aws_client:aws_client(), map(), map()) ->
    {ok, list_cloud_watch_alarm_template_groups_response(), tuple()} |
    {error, any()} |
    {error, list_cloud_watch_alarm_template_groups_errors(), tuple()}.
list_cloud_watch_alarm_template_groups(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_cloud_watch_alarm_template_groups(Client, QueryMap, HeadersMap, []).

-spec list_cloud_watch_alarm_template_groups(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_cloud_watch_alarm_template_groups_response(), tuple()} |
    {error, any()} |
    {error, list_cloud_watch_alarm_template_groups_errors(), tuple()}.
list_cloud_watch_alarm_template_groups(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/prod/cloudwatch-alarm-template-groups"],
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
        {<<"scope">>, maps:get(<<"scope">>, QueryMap, undefined)},
        {<<"signalMapIdentifier">>, maps:get(<<"signalMapIdentifier">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists cloudwatch alarm templates.
-spec list_cloud_watch_alarm_templates(aws_client:aws_client()) ->
    {ok, list_cloud_watch_alarm_templates_response(), tuple()} |
    {error, any()} |
    {error, list_cloud_watch_alarm_templates_errors(), tuple()}.
list_cloud_watch_alarm_templates(Client)
  when is_map(Client) ->
    list_cloud_watch_alarm_templates(Client, #{}, #{}).

-spec list_cloud_watch_alarm_templates(aws_client:aws_client(), map(), map()) ->
    {ok, list_cloud_watch_alarm_templates_response(), tuple()} |
    {error, any()} |
    {error, list_cloud_watch_alarm_templates_errors(), tuple()}.
list_cloud_watch_alarm_templates(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_cloud_watch_alarm_templates(Client, QueryMap, HeadersMap, []).

-spec list_cloud_watch_alarm_templates(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_cloud_watch_alarm_templates_response(), tuple()} |
    {error, any()} |
    {error, list_cloud_watch_alarm_templates_errors(), tuple()}.
list_cloud_watch_alarm_templates(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/prod/cloudwatch-alarm-templates"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"groupIdentifier">>, maps:get(<<"groupIdentifier">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"scope">>, maps:get(<<"scope">>, QueryMap, undefined)},
        {<<"signalMapIdentifier">>, maps:get(<<"signalMapIdentifier">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieve the list of Clusters.
-spec list_clusters(aws_client:aws_client()) ->
    {ok, list_clusters_response(), tuple()} |
    {error, any()} |
    {error, list_clusters_errors(), tuple()}.
list_clusters(Client)
  when is_map(Client) ->
    list_clusters(Client, #{}, #{}).

-spec list_clusters(aws_client:aws_client(), map(), map()) ->
    {ok, list_clusters_response(), tuple()} |
    {error, any()} |
    {error, list_clusters_errors(), tuple()}.
list_clusters(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_clusters(Client, QueryMap, HeadersMap, []).

-spec list_clusters(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_clusters_response(), tuple()} |
    {error, any()} |
    {error, list_clusters_errors(), tuple()}.
list_clusters(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/prod/clusters"],
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

%% @doc Lists eventbridge rule template groups.
-spec list_event_bridge_rule_template_groups(aws_client:aws_client()) ->
    {ok, list_event_bridge_rule_template_groups_response(), tuple()} |
    {error, any()} |
    {error, list_event_bridge_rule_template_groups_errors(), tuple()}.
list_event_bridge_rule_template_groups(Client)
  when is_map(Client) ->
    list_event_bridge_rule_template_groups(Client, #{}, #{}).

-spec list_event_bridge_rule_template_groups(aws_client:aws_client(), map(), map()) ->
    {ok, list_event_bridge_rule_template_groups_response(), tuple()} |
    {error, any()} |
    {error, list_event_bridge_rule_template_groups_errors(), tuple()}.
list_event_bridge_rule_template_groups(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_event_bridge_rule_template_groups(Client, QueryMap, HeadersMap, []).

-spec list_event_bridge_rule_template_groups(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_event_bridge_rule_template_groups_response(), tuple()} |
    {error, any()} |
    {error, list_event_bridge_rule_template_groups_errors(), tuple()}.
list_event_bridge_rule_template_groups(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/prod/eventbridge-rule-template-groups"],
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
        {<<"signalMapIdentifier">>, maps:get(<<"signalMapIdentifier">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists eventbridge rule templates.
-spec list_event_bridge_rule_templates(aws_client:aws_client()) ->
    {ok, list_event_bridge_rule_templates_response(), tuple()} |
    {error, any()} |
    {error, list_event_bridge_rule_templates_errors(), tuple()}.
list_event_bridge_rule_templates(Client)
  when is_map(Client) ->
    list_event_bridge_rule_templates(Client, #{}, #{}).

-spec list_event_bridge_rule_templates(aws_client:aws_client(), map(), map()) ->
    {ok, list_event_bridge_rule_templates_response(), tuple()} |
    {error, any()} |
    {error, list_event_bridge_rule_templates_errors(), tuple()}.
list_event_bridge_rule_templates(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_event_bridge_rule_templates(Client, QueryMap, HeadersMap, []).

-spec list_event_bridge_rule_templates(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_event_bridge_rule_templates_response(), tuple()} |
    {error, any()} |
    {error, list_event_bridge_rule_templates_errors(), tuple()}.
list_event_bridge_rule_templates(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/prod/eventbridge-rule-templates"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"groupIdentifier">>, maps:get(<<"groupIdentifier">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"signalMapIdentifier">>, maps:get(<<"signalMapIdentifier">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List input devices that are currently being transferred.
%%
%% List input devices that you are transferring from your AWS account or
%% input devices that another AWS account is transferring to you.
-spec list_input_device_transfers(aws_client:aws_client(), binary() | list()) ->
    {ok, list_input_device_transfers_response(), tuple()} |
    {error, any()} |
    {error, list_input_device_transfers_errors(), tuple()}.
list_input_device_transfers(Client, TransferType)
  when is_map(Client) ->
    list_input_device_transfers(Client, TransferType, #{}, #{}).

-spec list_input_device_transfers(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_input_device_transfers_response(), tuple()} |
    {error, any()} |
    {error, list_input_device_transfers_errors(), tuple()}.
list_input_device_transfers(Client, TransferType, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_input_device_transfers(Client, TransferType, QueryMap, HeadersMap, []).

-spec list_input_device_transfers(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_input_device_transfers_response(), tuple()} |
    {error, any()} |
    {error, list_input_device_transfers_errors(), tuple()}.
list_input_device_transfers(Client, TransferType, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/prod/inputDeviceTransfers"],
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
        {<<"transferType">>, TransferType}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List input devices
-spec list_input_devices(aws_client:aws_client()) ->
    {ok, list_input_devices_response(), tuple()} |
    {error, any()} |
    {error, list_input_devices_errors(), tuple()}.
list_input_devices(Client)
  when is_map(Client) ->
    list_input_devices(Client, #{}, #{}).

-spec list_input_devices(aws_client:aws_client(), map(), map()) ->
    {ok, list_input_devices_response(), tuple()} |
    {error, any()} |
    {error, list_input_devices_errors(), tuple()}.
list_input_devices(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_input_devices(Client, QueryMap, HeadersMap, []).

-spec list_input_devices(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_input_devices_response(), tuple()} |
    {error, any()} |
    {error, list_input_devices_errors(), tuple()}.
list_input_devices(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/prod/inputDevices"],
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

%% @doc Produces a list of Input Security Groups for an account
-spec list_input_security_groups(aws_client:aws_client()) ->
    {ok, list_input_security_groups_response(), tuple()} |
    {error, any()} |
    {error, list_input_security_groups_errors(), tuple()}.
list_input_security_groups(Client)
  when is_map(Client) ->
    list_input_security_groups(Client, #{}, #{}).

-spec list_input_security_groups(aws_client:aws_client(), map(), map()) ->
    {ok, list_input_security_groups_response(), tuple()} |
    {error, any()} |
    {error, list_input_security_groups_errors(), tuple()}.
list_input_security_groups(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_input_security_groups(Client, QueryMap, HeadersMap, []).

-spec list_input_security_groups(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_input_security_groups_response(), tuple()} |
    {error, any()} |
    {error, list_input_security_groups_errors(), tuple()}.
list_input_security_groups(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/prod/inputSecurityGroups"],
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

%% @doc Produces list of inputs that have been created
-spec list_inputs(aws_client:aws_client()) ->
    {ok, list_inputs_response(), tuple()} |
    {error, any()} |
    {error, list_inputs_errors(), tuple()}.
list_inputs(Client)
  when is_map(Client) ->
    list_inputs(Client, #{}, #{}).

-spec list_inputs(aws_client:aws_client(), map(), map()) ->
    {ok, list_inputs_response(), tuple()} |
    {error, any()} |
    {error, list_inputs_errors(), tuple()}.
list_inputs(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_inputs(Client, QueryMap, HeadersMap, []).

-spec list_inputs(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_inputs_response(), tuple()} |
    {error, any()} |
    {error, list_inputs_errors(), tuple()}.
list_inputs(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/prod/inputs"],
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

%% @doc List the programs that currently exist for a specific multiplex.
-spec list_multiplex_programs(aws_client:aws_client(), binary() | list()) ->
    {ok, list_multiplex_programs_response(), tuple()} |
    {error, any()} |
    {error, list_multiplex_programs_errors(), tuple()}.
list_multiplex_programs(Client, MultiplexId)
  when is_map(Client) ->
    list_multiplex_programs(Client, MultiplexId, #{}, #{}).

-spec list_multiplex_programs(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_multiplex_programs_response(), tuple()} |
    {error, any()} |
    {error, list_multiplex_programs_errors(), tuple()}.
list_multiplex_programs(Client, MultiplexId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_multiplex_programs(Client, MultiplexId, QueryMap, HeadersMap, []).

-spec list_multiplex_programs(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_multiplex_programs_response(), tuple()} |
    {error, any()} |
    {error, list_multiplex_programs_errors(), tuple()}.
list_multiplex_programs(Client, MultiplexId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/prod/multiplexes/", aws_util:encode_uri(MultiplexId), "/programs"],
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

%% @doc Retrieve a list of the existing multiplexes.
-spec list_multiplexes(aws_client:aws_client()) ->
    {ok, list_multiplexes_response(), tuple()} |
    {error, any()} |
    {error, list_multiplexes_errors(), tuple()}.
list_multiplexes(Client)
  when is_map(Client) ->
    list_multiplexes(Client, #{}, #{}).

-spec list_multiplexes(aws_client:aws_client(), map(), map()) ->
    {ok, list_multiplexes_response(), tuple()} |
    {error, any()} |
    {error, list_multiplexes_errors(), tuple()}.
list_multiplexes(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_multiplexes(Client, QueryMap, HeadersMap, []).

-spec list_multiplexes(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_multiplexes_response(), tuple()} |
    {error, any()} |
    {error, list_multiplexes_errors(), tuple()}.
list_multiplexes(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/prod/multiplexes"],
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

%% @doc Retrieve the list of Networks.
-spec list_networks(aws_client:aws_client()) ->
    {ok, list_networks_response(), tuple()} |
    {error, any()} |
    {error, list_networks_errors(), tuple()}.
list_networks(Client)
  when is_map(Client) ->
    list_networks(Client, #{}, #{}).

-spec list_networks(aws_client:aws_client(), map(), map()) ->
    {ok, list_networks_response(), tuple()} |
    {error, any()} |
    {error, list_networks_errors(), tuple()}.
list_networks(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_networks(Client, QueryMap, HeadersMap, []).

-spec list_networks(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_networks_response(), tuple()} |
    {error, any()} |
    {error, list_networks_errors(), tuple()}.
list_networks(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/prod/networks"],
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

%% @doc Retrieve the list of Nodes.
-spec list_nodes(aws_client:aws_client(), binary() | list()) ->
    {ok, list_nodes_response(), tuple()} |
    {error, any()} |
    {error, list_nodes_errors(), tuple()}.
list_nodes(Client, ClusterId)
  when is_map(Client) ->
    list_nodes(Client, ClusterId, #{}, #{}).

-spec list_nodes(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_nodes_response(), tuple()} |
    {error, any()} |
    {error, list_nodes_errors(), tuple()}.
list_nodes(Client, ClusterId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_nodes(Client, ClusterId, QueryMap, HeadersMap, []).

-spec list_nodes(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_nodes_response(), tuple()} |
    {error, any()} |
    {error, list_nodes_errors(), tuple()}.
list_nodes(Client, ClusterId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/prod/clusters/", aws_util:encode_uri(ClusterId), "/nodes"],
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

%% @doc List offerings available for purchase.
-spec list_offerings(aws_client:aws_client()) ->
    {ok, list_offerings_response(), tuple()} |
    {error, any()} |
    {error, list_offerings_errors(), tuple()}.
list_offerings(Client)
  when is_map(Client) ->
    list_offerings(Client, #{}, #{}).

-spec list_offerings(aws_client:aws_client(), map(), map()) ->
    {ok, list_offerings_response(), tuple()} |
    {error, any()} |
    {error, list_offerings_errors(), tuple()}.
list_offerings(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_offerings(Client, QueryMap, HeadersMap, []).

-spec list_offerings(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_offerings_response(), tuple()} |
    {error, any()} |
    {error, list_offerings_errors(), tuple()}.
list_offerings(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/prod/offerings"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"channelClass">>, maps:get(<<"channelClass">>, QueryMap, undefined)},
        {<<"channelConfiguration">>, maps:get(<<"channelConfiguration">>, QueryMap, undefined)},
        {<<"codec">>, maps:get(<<"codec">>, QueryMap, undefined)},
        {<<"duration">>, maps:get(<<"duration">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"maximumBitrate">>, maps:get(<<"maximumBitrate">>, QueryMap, undefined)},
        {<<"maximumFramerate">>, maps:get(<<"maximumFramerate">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"resolution">>, maps:get(<<"resolution">>, QueryMap, undefined)},
        {<<"resourceType">>, maps:get(<<"resourceType">>, QueryMap, undefined)},
        {<<"specialFeature">>, maps:get(<<"specialFeature">>, QueryMap, undefined)},
        {<<"videoQuality">>, maps:get(<<"videoQuality">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List purchased reservations.
-spec list_reservations(aws_client:aws_client()) ->
    {ok, list_reservations_response(), tuple()} |
    {error, any()} |
    {error, list_reservations_errors(), tuple()}.
list_reservations(Client)
  when is_map(Client) ->
    list_reservations(Client, #{}, #{}).

-spec list_reservations(aws_client:aws_client(), map(), map()) ->
    {ok, list_reservations_response(), tuple()} |
    {error, any()} |
    {error, list_reservations_errors(), tuple()}.
list_reservations(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_reservations(Client, QueryMap, HeadersMap, []).

-spec list_reservations(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_reservations_response(), tuple()} |
    {error, any()} |
    {error, list_reservations_errors(), tuple()}.
list_reservations(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/prod/reservations"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"channelClass">>, maps:get(<<"channelClass">>, QueryMap, undefined)},
        {<<"codec">>, maps:get(<<"codec">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"maximumBitrate">>, maps:get(<<"maximumBitrate">>, QueryMap, undefined)},
        {<<"maximumFramerate">>, maps:get(<<"maximumFramerate">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"resolution">>, maps:get(<<"resolution">>, QueryMap, undefined)},
        {<<"resourceType">>, maps:get(<<"resourceType">>, QueryMap, undefined)},
        {<<"specialFeature">>, maps:get(<<"specialFeature">>, QueryMap, undefined)},
        {<<"videoQuality">>, maps:get(<<"videoQuality">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists signal maps.
-spec list_signal_maps(aws_client:aws_client()) ->
    {ok, list_signal_maps_response(), tuple()} |
    {error, any()} |
    {error, list_signal_maps_errors(), tuple()}.
list_signal_maps(Client)
  when is_map(Client) ->
    list_signal_maps(Client, #{}, #{}).

-spec list_signal_maps(aws_client:aws_client(), map(), map()) ->
    {ok, list_signal_maps_response(), tuple()} |
    {error, any()} |
    {error, list_signal_maps_errors(), tuple()}.
list_signal_maps(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_signal_maps(Client, QueryMap, HeadersMap, []).

-spec list_signal_maps(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_signal_maps_response(), tuple()} |
    {error, any()} |
    {error, list_signal_maps_errors(), tuple()}.
list_signal_maps(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/prod/signal-maps"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"cloudWatchAlarmTemplateGroupIdentifier">>, maps:get(<<"cloudWatchAlarmTemplateGroupIdentifier">>, QueryMap, undefined)},
        {<<"eventBridgeRuleTemplateGroupIdentifier">>, maps:get(<<"eventBridgeRuleTemplateGroupIdentifier">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Produces list of tags that have been created for a resource
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
    Path = ["/prod/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves an array of all the encoder engine versions that are
%% available in this AWS account.
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
    Path = ["/prod/versions"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Purchase an offering and create a reservation.
-spec purchase_offering(aws_client:aws_client(), binary() | list(), purchase_offering_request()) ->
    {ok, purchase_offering_response(), tuple()} |
    {error, any()} |
    {error, purchase_offering_errors(), tuple()}.
purchase_offering(Client, OfferingId, Input) ->
    purchase_offering(Client, OfferingId, Input, []).

-spec purchase_offering(aws_client:aws_client(), binary() | list(), purchase_offering_request(), proplists:proplist()) ->
    {ok, purchase_offering_response(), tuple()} |
    {error, any()} |
    {error, purchase_offering_errors(), tuple()}.
purchase_offering(Client, OfferingId, Input0, Options0) ->
    Method = post,
    Path = ["/prod/offerings/", aws_util:encode_uri(OfferingId), "/purchase"],
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

%% @doc Send a reboot command to the specified input device.
%%
%% The device will begin rebooting within a few seconds of sending the
%% command. When the reboot is complete, the device’s connection status will
%% change to connected.
-spec reboot_input_device(aws_client:aws_client(), binary() | list(), reboot_input_device_request()) ->
    {ok, reboot_input_device_response(), tuple()} |
    {error, any()} |
    {error, reboot_input_device_errors(), tuple()}.
reboot_input_device(Client, InputDeviceId, Input) ->
    reboot_input_device(Client, InputDeviceId, Input, []).

-spec reboot_input_device(aws_client:aws_client(), binary() | list(), reboot_input_device_request(), proplists:proplist()) ->
    {ok, reboot_input_device_response(), tuple()} |
    {error, any()} |
    {error, reboot_input_device_errors(), tuple()}.
reboot_input_device(Client, InputDeviceId, Input0, Options0) ->
    Method = post,
    Path = ["/prod/inputDevices/", aws_util:encode_uri(InputDeviceId), "/reboot"],
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

%% @doc Reject the transfer of the specified input device to your AWS
%% account.
-spec reject_input_device_transfer(aws_client:aws_client(), binary() | list(), reject_input_device_transfer_request()) ->
    {ok, reject_input_device_transfer_response(), tuple()} |
    {error, any()} |
    {error, reject_input_device_transfer_errors(), tuple()}.
reject_input_device_transfer(Client, InputDeviceId, Input) ->
    reject_input_device_transfer(Client, InputDeviceId, Input, []).

-spec reject_input_device_transfer(aws_client:aws_client(), binary() | list(), reject_input_device_transfer_request(), proplists:proplist()) ->
    {ok, reject_input_device_transfer_response(), tuple()} |
    {error, any()} |
    {error, reject_input_device_transfer_errors(), tuple()}.
reject_input_device_transfer(Client, InputDeviceId, Input0, Options0) ->
    Method = post,
    Path = ["/prod/inputDevices/", aws_util:encode_uri(InputDeviceId), "/reject"],
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

%% @doc Restart pipelines in one channel that is currently running.
-spec restart_channel_pipelines(aws_client:aws_client(), binary() | list(), restart_channel_pipelines_request()) ->
    {ok, restart_channel_pipelines_response(), tuple()} |
    {error, any()} |
    {error, restart_channel_pipelines_errors(), tuple()}.
restart_channel_pipelines(Client, ChannelId, Input) ->
    restart_channel_pipelines(Client, ChannelId, Input, []).

-spec restart_channel_pipelines(aws_client:aws_client(), binary() | list(), restart_channel_pipelines_request(), proplists:proplist()) ->
    {ok, restart_channel_pipelines_response(), tuple()} |
    {error, any()} |
    {error, restart_channel_pipelines_errors(), tuple()}.
restart_channel_pipelines(Client, ChannelId, Input0, Options0) ->
    Method = post,
    Path = ["/prod/channels/", aws_util:encode_uri(ChannelId), "/restartChannelPipelines"],
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

%% @doc Starts an existing channel
-spec start_channel(aws_client:aws_client(), binary() | list(), start_channel_request()) ->
    {ok, start_channel_response(), tuple()} |
    {error, any()} |
    {error, start_channel_errors(), tuple()}.
start_channel(Client, ChannelId, Input) ->
    start_channel(Client, ChannelId, Input, []).

-spec start_channel(aws_client:aws_client(), binary() | list(), start_channel_request(), proplists:proplist()) ->
    {ok, start_channel_response(), tuple()} |
    {error, any()} |
    {error, start_channel_errors(), tuple()}.
start_channel(Client, ChannelId, Input0, Options0) ->
    Method = post,
    Path = ["/prod/channels/", aws_util:encode_uri(ChannelId), "/start"],
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

%% @doc Initiates a deployment to delete the monitor of the specified signal
%% map.
-spec start_delete_monitor_deployment(aws_client:aws_client(), binary() | list(), start_delete_monitor_deployment_request()) ->
    {ok, start_delete_monitor_deployment_response(), tuple()} |
    {error, any()} |
    {error, start_delete_monitor_deployment_errors(), tuple()}.
start_delete_monitor_deployment(Client, Identifier, Input) ->
    start_delete_monitor_deployment(Client, Identifier, Input, []).

-spec start_delete_monitor_deployment(aws_client:aws_client(), binary() | list(), start_delete_monitor_deployment_request(), proplists:proplist()) ->
    {ok, start_delete_monitor_deployment_response(), tuple()} |
    {error, any()} |
    {error, start_delete_monitor_deployment_errors(), tuple()}.
start_delete_monitor_deployment(Client, Identifier, Input0, Options0) ->
    Method = delete,
    Path = ["/prod/signal-maps/", aws_util:encode_uri(Identifier), "/monitor-deployment"],
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

%% @doc Start an input device that is attached to a MediaConnect flow.
%%
%% (There is no need to start a device that is attached to a MediaLive input;
%% MediaLive starts the device when the channel starts.)
-spec start_input_device(aws_client:aws_client(), binary() | list(), start_input_device_request()) ->
    {ok, start_input_device_response(), tuple()} |
    {error, any()} |
    {error, start_input_device_errors(), tuple()}.
start_input_device(Client, InputDeviceId, Input) ->
    start_input_device(Client, InputDeviceId, Input, []).

-spec start_input_device(aws_client:aws_client(), binary() | list(), start_input_device_request(), proplists:proplist()) ->
    {ok, start_input_device_response(), tuple()} |
    {error, any()} |
    {error, start_input_device_errors(), tuple()}.
start_input_device(Client, InputDeviceId, Input0, Options0) ->
    Method = post,
    Path = ["/prod/inputDevices/", aws_util:encode_uri(InputDeviceId), "/start"],
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

%% @doc Start a maintenance window for the specified input device.
%%
%% Starting a maintenance window will give the device up to two hours to
%% install software. If the device was streaming prior to the maintenance, it
%% will resume streaming when the software is fully installed. Devices
%% automatically install updates while they are powered on and their
%% MediaLive channels are stopped. A maintenance window allows you to update
%% a device without having to stop MediaLive channels that use the device.
%% The device must remain powered on and connected to the internet for the
%% duration of the maintenance.
-spec start_input_device_maintenance_window(aws_client:aws_client(), binary() | list(), start_input_device_maintenance_window_request()) ->
    {ok, start_input_device_maintenance_window_response(), tuple()} |
    {error, any()} |
    {error, start_input_device_maintenance_window_errors(), tuple()}.
start_input_device_maintenance_window(Client, InputDeviceId, Input) ->
    start_input_device_maintenance_window(Client, InputDeviceId, Input, []).

-spec start_input_device_maintenance_window(aws_client:aws_client(), binary() | list(), start_input_device_maintenance_window_request(), proplists:proplist()) ->
    {ok, start_input_device_maintenance_window_response(), tuple()} |
    {error, any()} |
    {error, start_input_device_maintenance_window_errors(), tuple()}.
start_input_device_maintenance_window(Client, InputDeviceId, Input0, Options0) ->
    Method = post,
    Path = ["/prod/inputDevices/", aws_util:encode_uri(InputDeviceId), "/startInputDeviceMaintenanceWindow"],
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

%% @doc Initiates a deployment to deploy the latest monitor of the specified
%% signal map.
-spec start_monitor_deployment(aws_client:aws_client(), binary() | list(), start_monitor_deployment_request()) ->
    {ok, start_monitor_deployment_response(), tuple()} |
    {error, any()} |
    {error, start_monitor_deployment_errors(), tuple()}.
start_monitor_deployment(Client, Identifier, Input) ->
    start_monitor_deployment(Client, Identifier, Input, []).

-spec start_monitor_deployment(aws_client:aws_client(), binary() | list(), start_monitor_deployment_request(), proplists:proplist()) ->
    {ok, start_monitor_deployment_response(), tuple()} |
    {error, any()} |
    {error, start_monitor_deployment_errors(), tuple()}.
start_monitor_deployment(Client, Identifier, Input0, Options0) ->
    Method = post,
    Path = ["/prod/signal-maps/", aws_util:encode_uri(Identifier), "/monitor-deployment"],
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

%% @doc Start (run) the multiplex.
%%
%% Starting the multiplex does not start the channels. You must explicitly
%% start each channel.
-spec start_multiplex(aws_client:aws_client(), binary() | list(), start_multiplex_request()) ->
    {ok, start_multiplex_response(), tuple()} |
    {error, any()} |
    {error, start_multiplex_errors(), tuple()}.
start_multiplex(Client, MultiplexId, Input) ->
    start_multiplex(Client, MultiplexId, Input, []).

-spec start_multiplex(aws_client:aws_client(), binary() | list(), start_multiplex_request(), proplists:proplist()) ->
    {ok, start_multiplex_response(), tuple()} |
    {error, any()} |
    {error, start_multiplex_errors(), tuple()}.
start_multiplex(Client, MultiplexId, Input0, Options0) ->
    Method = post,
    Path = ["/prod/multiplexes/", aws_util:encode_uri(MultiplexId), "/start"],
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

%% @doc Initiates an update for the specified signal map.
%%
%% Will discover a new signal map if a changed discoveryEntryPointArn is
%% provided.
-spec start_update_signal_map(aws_client:aws_client(), binary() | list(), start_update_signal_map_request()) ->
    {ok, start_update_signal_map_response(), tuple()} |
    {error, any()} |
    {error, start_update_signal_map_errors(), tuple()}.
start_update_signal_map(Client, Identifier, Input) ->
    start_update_signal_map(Client, Identifier, Input, []).

-spec start_update_signal_map(aws_client:aws_client(), binary() | list(), start_update_signal_map_request(), proplists:proplist()) ->
    {ok, start_update_signal_map_response(), tuple()} |
    {error, any()} |
    {error, start_update_signal_map_errors(), tuple()}.
start_update_signal_map(Client, Identifier, Input0, Options0) ->
    Method = patch,
    Path = ["/prod/signal-maps/", aws_util:encode_uri(Identifier), ""],
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

%% @doc Stops a running channel
-spec stop_channel(aws_client:aws_client(), binary() | list(), stop_channel_request()) ->
    {ok, stop_channel_response(), tuple()} |
    {error, any()} |
    {error, stop_channel_errors(), tuple()}.
stop_channel(Client, ChannelId, Input) ->
    stop_channel(Client, ChannelId, Input, []).

-spec stop_channel(aws_client:aws_client(), binary() | list(), stop_channel_request(), proplists:proplist()) ->
    {ok, stop_channel_response(), tuple()} |
    {error, any()} |
    {error, stop_channel_errors(), tuple()}.
stop_channel(Client, ChannelId, Input0, Options0) ->
    Method = post,
    Path = ["/prod/channels/", aws_util:encode_uri(ChannelId), "/stop"],
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

%% @doc Stop an input device that is attached to a MediaConnect flow.
%%
%% (There is no need to stop a device that is attached to a MediaLive input;
%% MediaLive automatically stops the device when the channel stops.)
-spec stop_input_device(aws_client:aws_client(), binary() | list(), stop_input_device_request()) ->
    {ok, stop_input_device_response(), tuple()} |
    {error, any()} |
    {error, stop_input_device_errors(), tuple()}.
stop_input_device(Client, InputDeviceId, Input) ->
    stop_input_device(Client, InputDeviceId, Input, []).

-spec stop_input_device(aws_client:aws_client(), binary() | list(), stop_input_device_request(), proplists:proplist()) ->
    {ok, stop_input_device_response(), tuple()} |
    {error, any()} |
    {error, stop_input_device_errors(), tuple()}.
stop_input_device(Client, InputDeviceId, Input0, Options0) ->
    Method = post,
    Path = ["/prod/inputDevices/", aws_util:encode_uri(InputDeviceId), "/stop"],
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

%% @doc Stops a running multiplex.
%%
%% If the multiplex isn't running, this action has no effect.
-spec stop_multiplex(aws_client:aws_client(), binary() | list(), stop_multiplex_request()) ->
    {ok, stop_multiplex_response(), tuple()} |
    {error, any()} |
    {error, stop_multiplex_errors(), tuple()}.
stop_multiplex(Client, MultiplexId, Input) ->
    stop_multiplex(Client, MultiplexId, Input, []).

-spec stop_multiplex(aws_client:aws_client(), binary() | list(), stop_multiplex_request(), proplists:proplist()) ->
    {ok, stop_multiplex_response(), tuple()} |
    {error, any()} |
    {error, stop_multiplex_errors(), tuple()}.
stop_multiplex(Client, MultiplexId, Input0, Options0) ->
    Method = post,
    Path = ["/prod/multiplexes/", aws_util:encode_uri(MultiplexId), "/stop"],
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

%% @doc Start an input device transfer to another AWS account.
%%
%% After you make the request, the other account must accept or reject the
%% transfer.
-spec transfer_input_device(aws_client:aws_client(), binary() | list(), transfer_input_device_request()) ->
    {ok, transfer_input_device_response(), tuple()} |
    {error, any()} |
    {error, transfer_input_device_errors(), tuple()}.
transfer_input_device(Client, InputDeviceId, Input) ->
    transfer_input_device(Client, InputDeviceId, Input, []).

-spec transfer_input_device(aws_client:aws_client(), binary() | list(), transfer_input_device_request(), proplists:proplist()) ->
    {ok, transfer_input_device_response(), tuple()} |
    {error, any()} |
    {error, transfer_input_device_errors(), tuple()}.
transfer_input_device(Client, InputDeviceId, Input0, Options0) ->
    Method = post,
    Path = ["/prod/inputDevices/", aws_util:encode_uri(InputDeviceId), "/transfer"],
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

%% @doc Update account configuration
-spec update_account_configuration(aws_client:aws_client(), update_account_configuration_request()) ->
    {ok, update_account_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_account_configuration_errors(), tuple()}.
update_account_configuration(Client, Input) ->
    update_account_configuration(Client, Input, []).

-spec update_account_configuration(aws_client:aws_client(), update_account_configuration_request(), proplists:proplist()) ->
    {ok, update_account_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_account_configuration_errors(), tuple()}.
update_account_configuration(Client, Input0, Options0) ->
    Method = put,
    Path = ["/prod/accountConfiguration"],
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

%% @doc Updates a channel.
-spec update_channel(aws_client:aws_client(), binary() | list(), update_channel_request()) ->
    {ok, update_channel_response(), tuple()} |
    {error, any()} |
    {error, update_channel_errors(), tuple()}.
update_channel(Client, ChannelId, Input) ->
    update_channel(Client, ChannelId, Input, []).

-spec update_channel(aws_client:aws_client(), binary() | list(), update_channel_request(), proplists:proplist()) ->
    {ok, update_channel_response(), tuple()} |
    {error, any()} |
    {error, update_channel_errors(), tuple()}.
update_channel(Client, ChannelId, Input0, Options0) ->
    Method = put,
    Path = ["/prod/channels/", aws_util:encode_uri(ChannelId), ""],
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

%% @doc Changes the class of the channel.
-spec update_channel_class(aws_client:aws_client(), binary() | list(), update_channel_class_request()) ->
    {ok, update_channel_class_response(), tuple()} |
    {error, any()} |
    {error, update_channel_class_errors(), tuple()}.
update_channel_class(Client, ChannelId, Input) ->
    update_channel_class(Client, ChannelId, Input, []).

-spec update_channel_class(aws_client:aws_client(), binary() | list(), update_channel_class_request(), proplists:proplist()) ->
    {ok, update_channel_class_response(), tuple()} |
    {error, any()} |
    {error, update_channel_class_errors(), tuple()}.
update_channel_class(Client, ChannelId, Input0, Options0) ->
    Method = put,
    Path = ["/prod/channels/", aws_util:encode_uri(ChannelId), "/channelClass"],
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

%% @doc Change the settings for a ChannelPlacementGroup.
-spec update_channel_placement_group(aws_client:aws_client(), binary() | list(), binary() | list(), update_channel_placement_group_request()) ->
    {ok, update_channel_placement_group_response(), tuple()} |
    {error, any()} |
    {error, update_channel_placement_group_errors(), tuple()}.
update_channel_placement_group(Client, ChannelPlacementGroupId, ClusterId, Input) ->
    update_channel_placement_group(Client, ChannelPlacementGroupId, ClusterId, Input, []).

-spec update_channel_placement_group(aws_client:aws_client(), binary() | list(), binary() | list(), update_channel_placement_group_request(), proplists:proplist()) ->
    {ok, update_channel_placement_group_response(), tuple()} |
    {error, any()} |
    {error, update_channel_placement_group_errors(), tuple()}.
update_channel_placement_group(Client, ChannelPlacementGroupId, ClusterId, Input0, Options0) ->
    Method = put,
    Path = ["/prod/clusters/", aws_util:encode_uri(ClusterId), "/channelplacementgroups/", aws_util:encode_uri(ChannelPlacementGroupId), ""],
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

%% @doc Updates the specified cloudwatch alarm template.
-spec update_cloud_watch_alarm_template(aws_client:aws_client(), binary() | list(), update_cloud_watch_alarm_template_request()) ->
    {ok, update_cloud_watch_alarm_template_response(), tuple()} |
    {error, any()} |
    {error, update_cloud_watch_alarm_template_errors(), tuple()}.
update_cloud_watch_alarm_template(Client, Identifier, Input) ->
    update_cloud_watch_alarm_template(Client, Identifier, Input, []).

-spec update_cloud_watch_alarm_template(aws_client:aws_client(), binary() | list(), update_cloud_watch_alarm_template_request(), proplists:proplist()) ->
    {ok, update_cloud_watch_alarm_template_response(), tuple()} |
    {error, any()} |
    {error, update_cloud_watch_alarm_template_errors(), tuple()}.
update_cloud_watch_alarm_template(Client, Identifier, Input0, Options0) ->
    Method = patch,
    Path = ["/prod/cloudwatch-alarm-templates/", aws_util:encode_uri(Identifier), ""],
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

%% @doc Updates the specified cloudwatch alarm template group.
-spec update_cloud_watch_alarm_template_group(aws_client:aws_client(), binary() | list(), update_cloud_watch_alarm_template_group_request()) ->
    {ok, update_cloud_watch_alarm_template_group_response(), tuple()} |
    {error, any()} |
    {error, update_cloud_watch_alarm_template_group_errors(), tuple()}.
update_cloud_watch_alarm_template_group(Client, Identifier, Input) ->
    update_cloud_watch_alarm_template_group(Client, Identifier, Input, []).

-spec update_cloud_watch_alarm_template_group(aws_client:aws_client(), binary() | list(), update_cloud_watch_alarm_template_group_request(), proplists:proplist()) ->
    {ok, update_cloud_watch_alarm_template_group_response(), tuple()} |
    {error, any()} |
    {error, update_cloud_watch_alarm_template_group_errors(), tuple()}.
update_cloud_watch_alarm_template_group(Client, Identifier, Input0, Options0) ->
    Method = patch,
    Path = ["/prod/cloudwatch-alarm-template-groups/", aws_util:encode_uri(Identifier), ""],
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

%% @doc Change the settings for a Cluster.
-spec update_cluster(aws_client:aws_client(), binary() | list(), update_cluster_request()) ->
    {ok, update_cluster_response(), tuple()} |
    {error, any()} |
    {error, update_cluster_errors(), tuple()}.
update_cluster(Client, ClusterId, Input) ->
    update_cluster(Client, ClusterId, Input, []).

-spec update_cluster(aws_client:aws_client(), binary() | list(), update_cluster_request(), proplists:proplist()) ->
    {ok, update_cluster_response(), tuple()} |
    {error, any()} |
    {error, update_cluster_errors(), tuple()}.
update_cluster(Client, ClusterId, Input0, Options0) ->
    Method = put,
    Path = ["/prod/clusters/", aws_util:encode_uri(ClusterId), ""],
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

%% @doc Updates the specified eventbridge rule template.
-spec update_event_bridge_rule_template(aws_client:aws_client(), binary() | list(), update_event_bridge_rule_template_request()) ->
    {ok, update_event_bridge_rule_template_response(), tuple()} |
    {error, any()} |
    {error, update_event_bridge_rule_template_errors(), tuple()}.
update_event_bridge_rule_template(Client, Identifier, Input) ->
    update_event_bridge_rule_template(Client, Identifier, Input, []).

-spec update_event_bridge_rule_template(aws_client:aws_client(), binary() | list(), update_event_bridge_rule_template_request(), proplists:proplist()) ->
    {ok, update_event_bridge_rule_template_response(), tuple()} |
    {error, any()} |
    {error, update_event_bridge_rule_template_errors(), tuple()}.
update_event_bridge_rule_template(Client, Identifier, Input0, Options0) ->
    Method = patch,
    Path = ["/prod/eventbridge-rule-templates/", aws_util:encode_uri(Identifier), ""],
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

%% @doc Updates the specified eventbridge rule template group.
-spec update_event_bridge_rule_template_group(aws_client:aws_client(), binary() | list(), update_event_bridge_rule_template_group_request()) ->
    {ok, update_event_bridge_rule_template_group_response(), tuple()} |
    {error, any()} |
    {error, update_event_bridge_rule_template_group_errors(), tuple()}.
update_event_bridge_rule_template_group(Client, Identifier, Input) ->
    update_event_bridge_rule_template_group(Client, Identifier, Input, []).

-spec update_event_bridge_rule_template_group(aws_client:aws_client(), binary() | list(), update_event_bridge_rule_template_group_request(), proplists:proplist()) ->
    {ok, update_event_bridge_rule_template_group_response(), tuple()} |
    {error, any()} |
    {error, update_event_bridge_rule_template_group_errors(), tuple()}.
update_event_bridge_rule_template_group(Client, Identifier, Input0, Options0) ->
    Method = patch,
    Path = ["/prod/eventbridge-rule-template-groups/", aws_util:encode_uri(Identifier), ""],
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

%% @doc Updates an input.
-spec update_input(aws_client:aws_client(), binary() | list(), update_input_request()) ->
    {ok, update_input_response(), tuple()} |
    {error, any()} |
    {error, update_input_errors(), tuple()}.
update_input(Client, InputId, Input) ->
    update_input(Client, InputId, Input, []).

-spec update_input(aws_client:aws_client(), binary() | list(), update_input_request(), proplists:proplist()) ->
    {ok, update_input_response(), tuple()} |
    {error, any()} |
    {error, update_input_errors(), tuple()}.
update_input(Client, InputId, Input0, Options0) ->
    Method = put,
    Path = ["/prod/inputs/", aws_util:encode_uri(InputId), ""],
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

%% @doc Updates the parameters for the input device.
-spec update_input_device(aws_client:aws_client(), binary() | list(), update_input_device_request()) ->
    {ok, update_input_device_response(), tuple()} |
    {error, any()} |
    {error, update_input_device_errors(), tuple()}.
update_input_device(Client, InputDeviceId, Input) ->
    update_input_device(Client, InputDeviceId, Input, []).

-spec update_input_device(aws_client:aws_client(), binary() | list(), update_input_device_request(), proplists:proplist()) ->
    {ok, update_input_device_response(), tuple()} |
    {error, any()} |
    {error, update_input_device_errors(), tuple()}.
update_input_device(Client, InputDeviceId, Input0, Options0) ->
    Method = put,
    Path = ["/prod/inputDevices/", aws_util:encode_uri(InputDeviceId), ""],
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

%% @doc Update an Input Security Group's Whilelists.
-spec update_input_security_group(aws_client:aws_client(), binary() | list(), update_input_security_group_request()) ->
    {ok, update_input_security_group_response(), tuple()} |
    {error, any()} |
    {error, update_input_security_group_errors(), tuple()}.
update_input_security_group(Client, InputSecurityGroupId, Input) ->
    update_input_security_group(Client, InputSecurityGroupId, Input, []).

-spec update_input_security_group(aws_client:aws_client(), binary() | list(), update_input_security_group_request(), proplists:proplist()) ->
    {ok, update_input_security_group_response(), tuple()} |
    {error, any()} |
    {error, update_input_security_group_errors(), tuple()}.
update_input_security_group(Client, InputSecurityGroupId, Input0, Options0) ->
    Method = put,
    Path = ["/prod/inputSecurityGroups/", aws_util:encode_uri(InputSecurityGroupId), ""],
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

%% @doc Updates a multiplex.
-spec update_multiplex(aws_client:aws_client(), binary() | list(), update_multiplex_request()) ->
    {ok, update_multiplex_response(), tuple()} |
    {error, any()} |
    {error, update_multiplex_errors(), tuple()}.
update_multiplex(Client, MultiplexId, Input) ->
    update_multiplex(Client, MultiplexId, Input, []).

-spec update_multiplex(aws_client:aws_client(), binary() | list(), update_multiplex_request(), proplists:proplist()) ->
    {ok, update_multiplex_response(), tuple()} |
    {error, any()} |
    {error, update_multiplex_errors(), tuple()}.
update_multiplex(Client, MultiplexId, Input0, Options0) ->
    Method = put,
    Path = ["/prod/multiplexes/", aws_util:encode_uri(MultiplexId), ""],
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

%% @doc Update a program in a multiplex.
-spec update_multiplex_program(aws_client:aws_client(), binary() | list(), binary() | list(), update_multiplex_program_request()) ->
    {ok, update_multiplex_program_response(), tuple()} |
    {error, any()} |
    {error, update_multiplex_program_errors(), tuple()}.
update_multiplex_program(Client, MultiplexId, ProgramName, Input) ->
    update_multiplex_program(Client, MultiplexId, ProgramName, Input, []).

-spec update_multiplex_program(aws_client:aws_client(), binary() | list(), binary() | list(), update_multiplex_program_request(), proplists:proplist()) ->
    {ok, update_multiplex_program_response(), tuple()} |
    {error, any()} |
    {error, update_multiplex_program_errors(), tuple()}.
update_multiplex_program(Client, MultiplexId, ProgramName, Input0, Options0) ->
    Method = put,
    Path = ["/prod/multiplexes/", aws_util:encode_uri(MultiplexId), "/programs/", aws_util:encode_uri(ProgramName), ""],
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

%% @doc Change the settings for a Network.
-spec update_network(aws_client:aws_client(), binary() | list(), update_network_request()) ->
    {ok, update_network_response(), tuple()} |
    {error, any()} |
    {error, update_network_errors(), tuple()}.
update_network(Client, NetworkId, Input) ->
    update_network(Client, NetworkId, Input, []).

-spec update_network(aws_client:aws_client(), binary() | list(), update_network_request(), proplists:proplist()) ->
    {ok, update_network_response(), tuple()} |
    {error, any()} |
    {error, update_network_errors(), tuple()}.
update_network(Client, NetworkId, Input0, Options0) ->
    Method = put,
    Path = ["/prod/networks/", aws_util:encode_uri(NetworkId), ""],
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

%% @doc Change the settings for a Node.
-spec update_node(aws_client:aws_client(), binary() | list(), binary() | list(), update_node_request()) ->
    {ok, update_node_response(), tuple()} |
    {error, any()} |
    {error, update_node_errors(), tuple()}.
update_node(Client, ClusterId, NodeId, Input) ->
    update_node(Client, ClusterId, NodeId, Input, []).

-spec update_node(aws_client:aws_client(), binary() | list(), binary() | list(), update_node_request(), proplists:proplist()) ->
    {ok, update_node_response(), tuple()} |
    {error, any()} |
    {error, update_node_errors(), tuple()}.
update_node(Client, ClusterId, NodeId, Input0, Options0) ->
    Method = put,
    Path = ["/prod/clusters/", aws_util:encode_uri(ClusterId), "/nodes/", aws_util:encode_uri(NodeId), ""],
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

%% @doc Update the state of a node.
-spec update_node_state(aws_client:aws_client(), binary() | list(), binary() | list(), update_node_state_request()) ->
    {ok, update_node_state_response(), tuple()} |
    {error, any()} |
    {error, update_node_state_errors(), tuple()}.
update_node_state(Client, ClusterId, NodeId, Input) ->
    update_node_state(Client, ClusterId, NodeId, Input, []).

-spec update_node_state(aws_client:aws_client(), binary() | list(), binary() | list(), update_node_state_request(), proplists:proplist()) ->
    {ok, update_node_state_response(), tuple()} |
    {error, any()} |
    {error, update_node_state_errors(), tuple()}.
update_node_state(Client, ClusterId, NodeId, Input0, Options0) ->
    Method = put,
    Path = ["/prod/clusters/", aws_util:encode_uri(ClusterId), "/nodes/", aws_util:encode_uri(NodeId), "/state"],
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

%% @doc Update reservation.
-spec update_reservation(aws_client:aws_client(), binary() | list(), update_reservation_request()) ->
    {ok, update_reservation_response(), tuple()} |
    {error, any()} |
    {error, update_reservation_errors(), tuple()}.
update_reservation(Client, ReservationId, Input) ->
    update_reservation(Client, ReservationId, Input, []).

-spec update_reservation(aws_client:aws_client(), binary() | list(), update_reservation_request(), proplists:proplist()) ->
    {ok, update_reservation_response(), tuple()} |
    {error, any()} |
    {error, update_reservation_errors(), tuple()}.
update_reservation(Client, ReservationId, Input0, Options0) ->
    Method = put,
    Path = ["/prod/reservations/", aws_util:encode_uri(ReservationId), ""],
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
    Client1 = Client#{service => <<"medialive">>},
    Host = build_host(<<"medialive">>, Client1),
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
