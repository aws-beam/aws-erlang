%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc AWS IoT Wireless provides bi-directional communication between
%% internet-connected
%% wireless devices and the AWS Cloud.
%%
%% To onboard both LoRaWAN:
%% https://docs.aws.amazon.com/iot-wireless/latest/developerguide/iot-lorawan.html
%% and Sidewalk:
%% https://docs.aws.amazon.com/iot-wireless/latest/developerguide/iot-sidewalk.html
%% devices to AWS IoT, use the IoT Wireless API. These wireless
%% devices use the Low Power Wide Area Networking (LPWAN) communication
%% protocol to
%% communicate with AWS IoT.
%%
%% Using the API, you can perform create, read, update, and delete operations
%% for your
%% wireless devices, gateways, destinations, and profiles. After onboarding
%% your devices,
%% you can use the API operations to set log levels and monitor your devices
%% with
%% CloudWatch.
%%
%% You can also use the API operations to create multicast groups and
%% schedule a
%% multicast session for sending a downlink message to devices in the group.
%% By using
%% Firmware Updates Over-The-Air (FUOTA) API operations, you can create a
%% FUOTA task and
%% schedule a session to update the firmware of individual devices or an
%% entire group of
%% devices in a multicast group.
%%
%% To connect to the AWS IoT Wireless Service, use the Service endpoints as
%% described in
%% IoT
%% Wireless Service endpoints:
%% https://docs.aws.amazon.com/general/latest/gr/iot-lorawan.html#iot-wireless_region.
%% You can use both IPv4 and IPv6 protocols to connect
%% to the endpoints and send requests to the AWS IoT Wireless service. For
%% more information,
%% see Using
%% IPv6 with AWS IoT Wireless:
%% https://docs.aws.amazon.com/iot-wireless/latest/developerguide/wireless-ipv6-access.html.
-module(aws_iot_wireless).

-export([associate_aws_account_with_partner_account/2,
         associate_aws_account_with_partner_account/3,
         associate_multicast_group_with_fuota_task/3,
         associate_multicast_group_with_fuota_task/4,
         associate_wireless_device_with_fuota_task/3,
         associate_wireless_device_with_fuota_task/4,
         associate_wireless_device_with_multicast_group/3,
         associate_wireless_device_with_multicast_group/4,
         associate_wireless_device_with_thing/3,
         associate_wireless_device_with_thing/4,
         associate_wireless_gateway_with_certificate/3,
         associate_wireless_gateway_with_certificate/4,
         associate_wireless_gateway_with_thing/3,
         associate_wireless_gateway_with_thing/4,
         cancel_multicast_group_session/3,
         cancel_multicast_group_session/4,
         create_destination/2,
         create_destination/3,
         create_device_profile/2,
         create_device_profile/3,
         create_fuota_task/2,
         create_fuota_task/3,
         create_multicast_group/2,
         create_multicast_group/3,
         create_network_analyzer_configuration/2,
         create_network_analyzer_configuration/3,
         create_service_profile/2,
         create_service_profile/3,
         create_wireless_device/2,
         create_wireless_device/3,
         create_wireless_gateway/2,
         create_wireless_gateway/3,
         create_wireless_gateway_task/3,
         create_wireless_gateway_task/4,
         create_wireless_gateway_task_definition/2,
         create_wireless_gateway_task_definition/3,
         delete_destination/3,
         delete_destination/4,
         delete_device_profile/3,
         delete_device_profile/4,
         delete_fuota_task/3,
         delete_fuota_task/4,
         delete_multicast_group/3,
         delete_multicast_group/4,
         delete_network_analyzer_configuration/3,
         delete_network_analyzer_configuration/4,
         delete_queued_messages/3,
         delete_queued_messages/4,
         delete_service_profile/3,
         delete_service_profile/4,
         delete_wireless_device/3,
         delete_wireless_device/4,
         delete_wireless_device_import_task/3,
         delete_wireless_device_import_task/4,
         delete_wireless_gateway/3,
         delete_wireless_gateway/4,
         delete_wireless_gateway_task/3,
         delete_wireless_gateway_task/4,
         delete_wireless_gateway_task_definition/3,
         delete_wireless_gateway_task_definition/4,
         deregister_wireless_device/3,
         deregister_wireless_device/4,
         disassociate_aws_account_from_partner_account/3,
         disassociate_aws_account_from_partner_account/4,
         disassociate_multicast_group_from_fuota_task/4,
         disassociate_multicast_group_from_fuota_task/5,
         disassociate_wireless_device_from_fuota_task/4,
         disassociate_wireless_device_from_fuota_task/5,
         disassociate_wireless_device_from_multicast_group/4,
         disassociate_wireless_device_from_multicast_group/5,
         disassociate_wireless_device_from_thing/3,
         disassociate_wireless_device_from_thing/4,
         disassociate_wireless_gateway_from_certificate/3,
         disassociate_wireless_gateway_from_certificate/4,
         disassociate_wireless_gateway_from_thing/3,
         disassociate_wireless_gateway_from_thing/4,
         get_destination/2,
         get_destination/4,
         get_destination/5,
         get_device_profile/2,
         get_device_profile/4,
         get_device_profile/5,
         get_event_configuration_by_resource_types/1,
         get_event_configuration_by_resource_types/3,
         get_event_configuration_by_resource_types/4,
         get_fuota_task/2,
         get_fuota_task/4,
         get_fuota_task/5,
         get_log_levels_by_resource_types/1,
         get_log_levels_by_resource_types/3,
         get_log_levels_by_resource_types/4,
         get_metric_configuration/1,
         get_metric_configuration/3,
         get_metric_configuration/4,
         get_metrics/2,
         get_metrics/3,
         get_multicast_group/2,
         get_multicast_group/4,
         get_multicast_group/5,
         get_multicast_group_session/2,
         get_multicast_group_session/4,
         get_multicast_group_session/5,
         get_network_analyzer_configuration/2,
         get_network_analyzer_configuration/4,
         get_network_analyzer_configuration/5,
         get_partner_account/3,
         get_partner_account/5,
         get_partner_account/6,
         get_position/3,
         get_position/5,
         get_position/6,
         get_position_configuration/3,
         get_position_configuration/5,
         get_position_configuration/6,
         get_position_estimate/2,
         get_position_estimate/3,
         get_resource_event_configuration/3,
         get_resource_event_configuration/5,
         get_resource_event_configuration/6,
         get_resource_log_level/3,
         get_resource_log_level/5,
         get_resource_log_level/6,
         get_resource_position/3,
         get_resource_position/5,
         get_resource_position/6,
         get_service_endpoint/1,
         get_service_endpoint/3,
         get_service_endpoint/4,
         get_service_profile/2,
         get_service_profile/4,
         get_service_profile/5,
         get_wireless_device/3,
         get_wireless_device/5,
         get_wireless_device/6,
         get_wireless_device_import_task/2,
         get_wireless_device_import_task/4,
         get_wireless_device_import_task/5,
         get_wireless_device_statistics/2,
         get_wireless_device_statistics/4,
         get_wireless_device_statistics/5,
         get_wireless_gateway/3,
         get_wireless_gateway/5,
         get_wireless_gateway/6,
         get_wireless_gateway_certificate/2,
         get_wireless_gateway_certificate/4,
         get_wireless_gateway_certificate/5,
         get_wireless_gateway_firmware_information/2,
         get_wireless_gateway_firmware_information/4,
         get_wireless_gateway_firmware_information/5,
         get_wireless_gateway_statistics/2,
         get_wireless_gateway_statistics/4,
         get_wireless_gateway_statistics/5,
         get_wireless_gateway_task/2,
         get_wireless_gateway_task/4,
         get_wireless_gateway_task/5,
         get_wireless_gateway_task_definition/2,
         get_wireless_gateway_task_definition/4,
         get_wireless_gateway_task_definition/5,
         list_destinations/1,
         list_destinations/3,
         list_destinations/4,
         list_device_profiles/1,
         list_device_profiles/3,
         list_device_profiles/4,
         list_devices_for_wireless_device_import_task/2,
         list_devices_for_wireless_device_import_task/4,
         list_devices_for_wireless_device_import_task/5,
         list_event_configurations/2,
         list_event_configurations/4,
         list_event_configurations/5,
         list_fuota_tasks/1,
         list_fuota_tasks/3,
         list_fuota_tasks/4,
         list_multicast_groups/1,
         list_multicast_groups/3,
         list_multicast_groups/4,
         list_multicast_groups_by_fuota_task/2,
         list_multicast_groups_by_fuota_task/4,
         list_multicast_groups_by_fuota_task/5,
         list_network_analyzer_configurations/1,
         list_network_analyzer_configurations/3,
         list_network_analyzer_configurations/4,
         list_partner_accounts/1,
         list_partner_accounts/3,
         list_partner_accounts/4,
         list_position_configurations/1,
         list_position_configurations/3,
         list_position_configurations/4,
         list_queued_messages/2,
         list_queued_messages/4,
         list_queued_messages/5,
         list_service_profiles/1,
         list_service_profiles/3,
         list_service_profiles/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         list_wireless_device_import_tasks/1,
         list_wireless_device_import_tasks/3,
         list_wireless_device_import_tasks/4,
         list_wireless_devices/1,
         list_wireless_devices/3,
         list_wireless_devices/4,
         list_wireless_gateway_task_definitions/1,
         list_wireless_gateway_task_definitions/3,
         list_wireless_gateway_task_definitions/4,
         list_wireless_gateways/1,
         list_wireless_gateways/3,
         list_wireless_gateways/4,
         put_position_configuration/3,
         put_position_configuration/4,
         put_resource_log_level/3,
         put_resource_log_level/4,
         reset_all_resource_log_levels/2,
         reset_all_resource_log_levels/3,
         reset_resource_log_level/3,
         reset_resource_log_level/4,
         send_data_to_multicast_group/3,
         send_data_to_multicast_group/4,
         send_data_to_wireless_device/3,
         send_data_to_wireless_device/4,
         start_bulk_associate_wireless_device_with_multicast_group/3,
         start_bulk_associate_wireless_device_with_multicast_group/4,
         start_bulk_disassociate_wireless_device_from_multicast_group/3,
         start_bulk_disassociate_wireless_device_from_multicast_group/4,
         start_fuota_task/3,
         start_fuota_task/4,
         start_multicast_group_session/3,
         start_multicast_group_session/4,
         start_single_wireless_device_import_task/2,
         start_single_wireless_device_import_task/3,
         start_wireless_device_import_task/2,
         start_wireless_device_import_task/3,
         tag_resource/2,
         tag_resource/3,
         test_wireless_device/3,
         test_wireless_device/4,
         untag_resource/2,
         untag_resource/3,
         update_destination/3,
         update_destination/4,
         update_event_configuration_by_resource_types/2,
         update_event_configuration_by_resource_types/3,
         update_fuota_task/3,
         update_fuota_task/4,
         update_log_levels_by_resource_types/2,
         update_log_levels_by_resource_types/3,
         update_metric_configuration/2,
         update_metric_configuration/3,
         update_multicast_group/3,
         update_multicast_group/4,
         update_network_analyzer_configuration/3,
         update_network_analyzer_configuration/4,
         update_partner_account/3,
         update_partner_account/4,
         update_position/3,
         update_position/4,
         update_resource_event_configuration/3,
         update_resource_event_configuration/4,
         update_resource_position/3,
         update_resource_position/4,
         update_wireless_device/3,
         update_wireless_device/4,
         update_wireless_device_import_task/3,
         update_wireless_device_import_task/4,
         update_wireless_gateway/3,
         update_wireless_gateway/4]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% get_resource_log_level_request() :: #{
%%   <<"ResourceType">> := string()
%% }
-type get_resource_log_level_request() :: #{binary() => any()}.


%% Example:
%% list_destinations_response() :: #{
%%   <<"DestinationList">> => list(destinations()),
%%   <<"NextToken">> => string()
%% }
-type list_destinations_response() :: #{binary() => any()}.


%% Example:
%% summary_metric_configuration() :: #{
%%   <<"Status">> => list(any())
%% }
-type summary_metric_configuration() :: #{binary() => any()}.


%% Example:
%% connection_status_resource_type_event_configuration() :: #{
%%   <<"LoRaWAN">> => lo_ra_w_a_n_connection_status_resource_type_event_configuration()
%% }
-type connection_status_resource_type_event_configuration() :: #{binary() => any()}.


%% Example:
%% associate_wireless_device_with_multicast_group_request() :: #{
%%   <<"WirelessDeviceId">> := string()
%% }
-type associate_wireless_device_with_multicast_group_request() :: #{binary() => any()}.


%% Example:
%% position_solver_configurations() :: #{
%%   <<"SemtechGnss">> => semtech_gnss_configuration()
%% }
-type position_solver_configurations() :: #{binary() => any()}.


%% Example:
%% start_single_wireless_device_import_task_request() :: #{
%%   <<"ClientRequestToken">> => string(),
%%   <<"DestinationName">> := string(),
%%   <<"DeviceName">> => string(),
%%   <<"Sidewalk">> := sidewalk_single_start_import_info(),
%%   <<"Tags">> => list(tag())
%% }
-type start_single_wireless_device_import_task_request() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"ResourceArn">> := string(),
%%   <<"Tags">> := list(tag())
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% list_position_configurations_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"PositionConfigurationList">> => list(position_configuration_item())
%% }
-type list_position_configurations_response() :: #{binary() => any()}.


%% Example:
%% send_data_to_multicast_group_request() :: #{
%%   <<"PayloadData">> := string(),
%%   <<"WirelessMetadata">> := multicast_wireless_metadata()
%% }
-type send_data_to_multicast_group_request() :: #{binary() => any()}.


%% Example:
%% create_destination_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"Name">> => string()
%% }
-type create_destination_response() :: #{binary() => any()}.


%% Example:
%% update_resource_position_request() :: #{
%%   <<"GeoJsonPayload">> => binary(),
%%   <<"ResourceType">> := list(any())
%% }
-type update_resource_position_request() :: #{binary() => any()}.


%% Example:
%% create_network_analyzer_configuration_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"Name">> => string()
%% }
-type create_network_analyzer_configuration_response() :: #{binary() => any()}.


%% Example:
%% get_wireless_device_request() :: #{
%%   <<"IdentifierType">> := list(any())
%% }
-type get_wireless_device_request() :: #{binary() => any()}.


%% Example:
%% start_fuota_task_request() :: #{
%%   <<"LoRaWAN">> => lo_ra_w_a_n_start_fuota_task()
%% }
-type start_fuota_task_request() :: #{binary() => any()}.


%% Example:
%% abp_v1_1() :: #{
%%   <<"DevAddr">> => string(),
%%   <<"FCntStart">> => integer(),
%%   <<"SessionKeys">> => session_keys_abp_v1_1()
%% }
-type abp_v1_1() :: #{binary() => any()}.


%% Example:
%% lo_ra_w_a_n_connection_status_event_notification_configurations() :: #{
%%   <<"GatewayEuiEventTopic">> => list(any())
%% }
-type lo_ra_w_a_n_connection_status_event_notification_configurations() :: #{binary() => any()}.


%% Example:
%% summary_metric_query() :: #{
%%   <<"AggregationPeriod">> => list(any()),
%%   <<"Dimensions">> => list(dimension()),
%%   <<"EndTimestamp">> => non_neg_integer(),
%%   <<"MetricName">> => list(any()),
%%   <<"QueryId">> => string(),
%%   <<"StartTimestamp">> => non_neg_integer()
%% }
-type summary_metric_query() :: #{binary() => any()}.


%% Example:
%% lo_ra_w_a_n_multicast_session() :: #{
%%   <<"DlDr">> => integer(),
%%   <<"DlFreq">> => integer(),
%%   <<"PingSlotPeriod">> => integer(),
%%   <<"SessionStartTime">> => non_neg_integer(),
%%   <<"SessionTimeout">> => integer()
%% }
-type lo_ra_w_a_n_multicast_session() :: #{binary() => any()}.


%% Example:
%% get_multicast_group_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"Id">> => string(),
%%   <<"LoRaWAN">> => lo_ra_w_a_n_multicast_get(),
%%   <<"Name">> => string(),
%%   <<"Status">> => string()
%% }
-type get_multicast_group_response() :: #{binary() => any()}.

%% Example:
%% get_device_profile_request() :: #{}
-type get_device_profile_request() :: #{}.


%% Example:
%% network_analyzer_configurations() :: #{
%%   <<"Arn">> => string(),
%%   <<"Name">> => string()
%% }
-type network_analyzer_configurations() :: #{binary() => any()}.


%% Example:
%% create_wireless_gateway_request() :: #{
%%   <<"ClientRequestToken">> => string(),
%%   <<"Description">> => string(),
%%   <<"LoRaWAN">> := lo_ra_w_a_n_gateway(),
%%   <<"Name">> => string(),
%%   <<"Tags">> => list(tag())
%% }
-type create_wireless_gateway_request() :: #{binary() => any()}.


%% Example:
%% create_destination_request() :: #{
%%   <<"ClientRequestToken">> => string(),
%%   <<"Description">> => string(),
%%   <<"Expression">> := string(),
%%   <<"ExpressionType">> := list(any()),
%%   <<"Name">> := string(),
%%   <<"RoleArn">> := string(),
%%   <<"Tags">> => list(tag())
%% }
-type create_destination_request() :: #{binary() => any()}.

%% Example:
%% start_bulk_associate_wireless_device_with_multicast_group_response() :: #{}
-type start_bulk_associate_wireless_device_with_multicast_group_response() :: #{}.

%% Example:
%% start_bulk_disassociate_wireless_device_from_multicast_group_response() :: #{}
-type start_bulk_disassociate_wireless_device_from_multicast_group_response() :: #{}.


%% Example:
%% downlink_queue_message() :: #{
%%   <<"LoRaWAN">> => lo_ra_w_a_n_send_data_to_device(),
%%   <<"MessageId">> => string(),
%%   <<"ReceivedAt">> => string(),
%%   <<"TransmitMode">> => integer()
%% }
-type downlink_queue_message() :: #{binary() => any()}.

%% Example:
%% get_service_profile_request() :: #{}
-type get_service_profile_request() :: #{}.


%% Example:
%% get_position_request() :: #{
%%   <<"ResourceType">> := list(any())
%% }
-type get_position_request() :: #{binary() => any()}.


%% Example:
%% get_device_profile_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"Id">> => string(),
%%   <<"LoRaWAN">> => lo_ra_w_a_n_device_profile(),
%%   <<"Name">> => string(),
%%   <<"Sidewalk">> => sidewalk_get_device_profile()
%% }
-type get_device_profile_response() :: #{binary() => any()}.

%% Example:
%% get_network_analyzer_configuration_request() :: #{}
-type get_network_analyzer_configuration_request() :: #{}.


%% Example:
%% update_wireless_device_import_task_request() :: #{
%%   <<"Sidewalk">> := sidewalk_update_import_info()
%% }
-type update_wireless_device_import_task_request() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% send_data_to_wireless_device_request() :: #{
%%   <<"PayloadData">> := string(),
%%   <<"TransmitMode">> := integer(),
%%   <<"WirelessMetadata">> => wireless_metadata()
%% }
-type send_data_to_wireless_device_request() :: #{binary() => any()}.


%% Example:
%% abp_v1_0_x() :: #{
%%   <<"DevAddr">> => string(),
%%   <<"FCntStart">> => integer(),
%%   <<"SessionKeys">> => session_keys_abp_v1_0_x()
%% }
-type abp_v1_0_x() :: #{binary() => any()}.


%% Example:
%% sidewalk_update_import_info() :: #{
%%   <<"DeviceCreationFile">> => string()
%% }
-type sidewalk_update_import_info() :: #{binary() => any()}.


%% Example:
%% proximity_resource_type_event_configuration() :: #{
%%   <<"Sidewalk">> => sidewalk_resource_type_event_configuration()
%% }
-type proximity_resource_type_event_configuration() :: #{binary() => any()}.


%% Example:
%% wireless_metadata() :: #{
%%   <<"LoRaWAN">> => lo_ra_w_a_n_send_data_to_device(),
%%   <<"Sidewalk">> => sidewalk_send_data_to_device()
%% }
-type wireless_metadata() :: #{binary() => any()}.


%% Example:
%% get_network_analyzer_configuration_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"Description">> => string(),
%%   <<"MulticastGroups">> => list(string()),
%%   <<"Name">> => string(),
%%   <<"TraceContent">> => trace_content(),
%%   <<"WirelessDevices">> => list(string()),
%%   <<"WirelessGateways">> => list(string())
%% }
-type get_network_analyzer_configuration_response() :: #{binary() => any()}.


%% Example:
%% get_event_configuration_by_resource_types_response() :: #{
%%   <<"ConnectionStatus">> => connection_status_resource_type_event_configuration(),
%%   <<"DeviceRegistrationState">> => device_registration_state_resource_type_event_configuration(),
%%   <<"Join">> => join_resource_type_event_configuration(),
%%   <<"MessageDeliveryStatus">> => message_delivery_status_resource_type_event_configuration(),
%%   <<"Proximity">> => proximity_resource_type_event_configuration()
%% }
-type get_event_configuration_by_resource_types_response() :: #{binary() => any()}.


%% Example:
%% get_resource_position_response() :: #{
%%   <<"GeoJsonPayload">> => binary()
%% }
-type get_resource_position_response() :: #{binary() => any()}.


%% Example:
%% test_wireless_device_response() :: #{
%%   <<"Result">> => string()
%% }
-type test_wireless_device_response() :: #{binary() => any()}.


%% Example:
%% device_registration_state_event_configuration() :: #{
%%   <<"Sidewalk">> => sidewalk_event_notification_configurations(),
%%   <<"WirelessDeviceIdEventTopic">> => list(any())
%% }
-type device_registration_state_event_configuration() :: #{binary() => any()}.

%% Example:
%% delete_wireless_gateway_request() :: #{}
-type delete_wireless_gateway_request() :: #{}.


%% Example:
%% get_destination_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"Description">> => string(),
%%   <<"Expression">> => string(),
%%   <<"ExpressionType">> => list(any()),
%%   <<"Name">> => string(),
%%   <<"RoleArn">> => string()
%% }
-type get_destination_response() :: #{binary() => any()}.


%% Example:
%% lo_ra_w_a_n_fuota_task_get_info() :: #{
%%   <<"RfRegion">> => string(),
%%   <<"StartTime">> => non_neg_integer()
%% }
-type lo_ra_w_a_n_fuota_task_get_info() :: #{binary() => any()}.


%% Example:
%% message_delivery_status_event_configuration() :: #{
%%   <<"Sidewalk">> => sidewalk_event_notification_configurations(),
%%   <<"WirelessDeviceIdEventTopic">> => list(any())
%% }
-type message_delivery_status_event_configuration() :: #{binary() => any()}.


%% Example:
%% global_identity() :: #{
%%   <<"GeranCid">> => integer(),
%%   <<"Lac">> => integer()
%% }
-type global_identity() :: #{binary() => any()}.


%% Example:
%% get_wireless_gateway_certificate_response() :: #{
%%   <<"IotCertificateId">> => string(),
%%   <<"LoRaWANNetworkServerCertificateId">> => string()
%% }
-type get_wireless_gateway_certificate_response() :: #{binary() => any()}.


%% Example:
%% get_position_estimate_response() :: #{
%%   <<"GeoJsonPayload">> => binary()
%% }
-type get_position_estimate_response() :: #{binary() => any()}.


%% Example:
%% update_metric_configuration_request() :: #{
%%   <<"SummaryMetric">> => summary_metric_configuration()
%% }
-type update_metric_configuration_request() :: #{binary() => any()}.


%% Example:
%% associate_wireless_gateway_with_certificate_request() :: #{
%%   <<"IotCertificateId">> := string()
%% }
-type associate_wireless_gateway_with_certificate_request() :: #{binary() => any()}.


%% Example:
%% get_resource_log_level_response() :: #{
%%   <<"LogLevel">> => list(any())
%% }
-type get_resource_log_level_response() :: #{binary() => any()}.


%% Example:
%% cell_towers() :: #{
%%   <<"Cdma">> => list(cdma_obj()),
%%   <<"Gsm">> => list(gsm_obj()),
%%   <<"Lte">> => list(lte_obj()),
%%   <<"Tdscdma">> => list(tdscdma_obj()),
%%   <<"Wcdma">> => list(wcdma_obj())
%% }
-type cell_towers() :: #{binary() => any()}.


%% Example:
%% list_multicast_groups_by_fuota_task_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_multicast_groups_by_fuota_task_request() :: #{binary() => any()}.

%% Example:
%% delete_service_profile_response() :: #{}
-type delete_service_profile_response() :: #{}.


%% Example:
%% get_service_profile_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"Id">> => string(),
%%   <<"LoRaWAN">> => lo_ra_w_a_n_get_service_profile_info(),
%%   <<"Name">> => string()
%% }
-type get_service_profile_response() :: #{binary() => any()}.


%% Example:
%% sidewalk_event_notification_configurations() :: #{
%%   <<"AmazonIdEventTopic">> => list(any())
%% }
-type sidewalk_event_notification_configurations() :: #{binary() => any()}.

%% Example:
%% update_log_levels_by_resource_types_response() :: #{}
-type update_log_levels_by_resource_types_response() :: #{}.


%% Example:
%% destinations() :: #{
%%   <<"Arn">> => string(),
%%   <<"Description">> => string(),
%%   <<"Expression">> => string(),
%%   <<"ExpressionType">> => list(any()),
%%   <<"Name">> => string(),
%%   <<"RoleArn">> => string()
%% }
-type destinations() :: #{binary() => any()}.


%% Example:
%% imported_sidewalk_device() :: #{
%%   <<"LastUpdateTime">> => non_neg_integer(),
%%   <<"OnboardingStatus">> => list(any()),
%%   <<"OnboardingStatusReason">> => string(),
%%   <<"SidewalkManufacturingSn">> => string()
%% }
-type imported_sidewalk_device() :: #{binary() => any()}.


%% Example:
%% gateway_list_item() :: #{
%%   <<"DownlinkFrequency">> => integer(),
%%   <<"GatewayId">> => string()
%% }
-type gateway_list_item() :: #{binary() => any()}.


%% Example:
%% device_profile() :: #{
%%   <<"Arn">> => string(),
%%   <<"Id">> => string(),
%%   <<"Name">> => string()
%% }
-type device_profile() :: #{binary() => any()}.


%% Example:
%% sidewalk_update_account() :: #{
%%   <<"AppServerPrivateKey">> => string()
%% }
-type sidewalk_update_account() :: #{binary() => any()}.

%% Example:
%% delete_network_analyzer_configuration_response() :: #{}
-type delete_network_analyzer_configuration_response() :: #{}.


%% Example:
%% create_multicast_group_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"Id">> => string()
%% }
-type create_multicast_group_response() :: #{binary() => any()}.


%% Example:
%% join_event_configuration() :: #{
%%   <<"LoRaWAN">> => lo_ra_w_a_n_join_event_notification_configurations(),
%%   <<"WirelessDeviceIdEventTopic">> => list(any())
%% }
-type join_event_configuration() :: #{binary() => any()}.


%% Example:
%% get_position_configuration_request() :: #{
%%   <<"ResourceType">> := list(any())
%% }
-type get_position_configuration_request() :: #{binary() => any()}.


%% Example:
%% get_metric_configuration_response() :: #{
%%   <<"SummaryMetric">> => summary_metric_configuration()
%% }
-type get_metric_configuration_response() :: #{binary() => any()}.


%% Example:
%% lo_ra_w_a_n_update_gateway_task_create() :: #{
%%   <<"CurrentVersion">> => lo_ra_w_a_n_gateway_version(),
%%   <<"SigKeyCrc">> => float(),
%%   <<"UpdateSignature">> => string(),
%%   <<"UpdateVersion">> => lo_ra_w_a_n_gateway_version()
%% }
-type lo_ra_w_a_n_update_gateway_task_create() :: #{binary() => any()}.


%% Example:
%% list_wireless_gateway_task_definitions_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"TaskDefinitionType">> => list(any())
%% }
-type list_wireless_gateway_task_definitions_request() :: #{binary() => any()}.


%% Example:
%% update_wireless_gateway_task_entry() :: #{
%%   <<"Arn">> => string(),
%%   <<"Id">> => string(),
%%   <<"LoRaWAN">> => lo_ra_w_a_n_update_gateway_task_entry()
%% }
-type update_wireless_gateway_task_entry() :: #{binary() => any()}.


%% Example:
%% participating_gateways_multicast() :: #{
%%   <<"GatewayList">> => list(string()),
%%   <<"TransmissionInterval">> => integer()
%% }
-type participating_gateways_multicast() :: #{binary() => any()}.


%% Example:
%% trace_content() :: #{
%%   <<"LogLevel">> => list(any()),
%%   <<"MulticastFrameInfo">> => list(any()),
%%   <<"WirelessDeviceFrameInfo">> => list(any())
%% }
-type trace_content() :: #{binary() => any()}.

%% Example:
%% disassociate_wireless_device_from_multicast_group_response() :: #{}
-type disassociate_wireless_device_from_multicast_group_response() :: #{}.

%% Example:
%% associate_multicast_group_with_fuota_task_response() :: #{}
-type associate_multicast_group_with_fuota_task_response() :: #{}.

%% Example:
%% delete_queued_messages_response() :: #{}
-type delete_queued_messages_response() :: #{}.

%% Example:
%% get_multicast_group_request() :: #{}
-type get_multicast_group_request() :: #{}.

%% Example:
%% get_wireless_gateway_task_definition_request() :: #{}
-type get_wireless_gateway_task_definition_request() :: #{}.

%% Example:
%% delete_fuota_task_response() :: #{}
-type delete_fuota_task_response() :: #{}.


%% Example:
%% accuracy() :: #{
%%   <<"HorizontalAccuracy">> => float(),
%%   <<"VerticalAccuracy">> => float()
%% }
-type accuracy() :: #{binary() => any()}.


%% Example:
%% get_fuota_task_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"Descriptor">> => string(),
%%   <<"FirmwareUpdateImage">> => string(),
%%   <<"FirmwareUpdateRole">> => string(),
%%   <<"FragmentIntervalMS">> => integer(),
%%   <<"FragmentSizeBytes">> => integer(),
%%   <<"Id">> => string(),
%%   <<"LoRaWAN">> => lo_ra_w_a_n_fuota_task_get_info(),
%%   <<"Name">> => string(),
%%   <<"RedundancyPercent">> => integer(),
%%   <<"Status">> => list(any())
%% }
-type get_fuota_task_response() :: #{binary() => any()}.


%% Example:
%% wireless_gateway_statistics() :: #{
%%   <<"Arn">> => string(),
%%   <<"Description">> => string(),
%%   <<"Id">> => string(),
%%   <<"LastUplinkReceivedAt">> => string(),
%%   <<"LoRaWAN">> => lo_ra_w_a_n_gateway(),
%%   <<"Name">> => string()
%% }
-type wireless_gateway_statistics() :: #{binary() => any()}.


%% Example:
%% sidewalk_device_metadata() :: #{
%%   <<"BatteryLevel">> => list(any()),
%%   <<"DeviceState">> => list(any()),
%%   <<"Event">> => list(any()),
%%   <<"Rssi">> => integer()
%% }
-type sidewalk_device_metadata() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"ResourceArn">> := string(),
%%   <<"TagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% update_fuota_task_response() :: #{}
-type update_fuota_task_response() :: #{}.

%% Example:
%% put_position_configuration_response() :: #{}
-type put_position_configuration_response() :: #{}.


%% Example:
%% lo_ra_w_a_n_update_gateway_task_entry() :: #{
%%   <<"CurrentVersion">> => lo_ra_w_a_n_gateway_version(),
%%   <<"UpdateVersion">> => lo_ra_w_a_n_gateway_version()
%% }
-type lo_ra_w_a_n_update_gateway_task_entry() :: #{binary() => any()}.


%% Example:
%% delete_queued_messages_request() :: #{
%%   <<"MessageId">> := string(),
%%   <<"WirelessDeviceType">> => list(any())
%% }
-type delete_queued_messages_request() :: #{binary() => any()}.

%% Example:
%% get_event_configuration_by_resource_types_request() :: #{}
-type get_event_configuration_by_resource_types_request() :: #{}.


%% Example:
%% list_partner_accounts_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_partner_accounts_request() :: #{binary() => any()}.


%% Example:
%% get_resource_event_configuration_request() :: #{
%%   <<"IdentifierType">> := list(any()),
%%   <<"PartnerType">> => list(any())
%% }
-type get_resource_event_configuration_request() :: #{binary() => any()}.


%% Example:
%% create_network_analyzer_configuration_request() :: #{
%%   <<"ClientRequestToken">> => string(),
%%   <<"Description">> => string(),
%%   <<"MulticastGroups">> => list(string()),
%%   <<"Name">> := string(),
%%   <<"Tags">> => list(tag()),
%%   <<"TraceContent">> => trace_content(),
%%   <<"WirelessDevices">> => list(string()),
%%   <<"WirelessGateways">> => list(string())
%% }
-type create_network_analyzer_configuration_request() :: #{binary() => any()}.


%% Example:
%% list_queued_messages_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"WirelessDeviceType">> => list(any())
%% }
-type list_queued_messages_request() :: #{binary() => any()}.


%% Example:
%% list_fuota_tasks_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_fuota_tasks_request() :: #{binary() => any()}.

%% Example:
%% disassociate_wireless_device_from_fuota_task_response() :: #{}
-type disassociate_wireless_device_from_fuota_task_response() :: #{}.


%% Example:
%% otaa_v1_1() :: #{
%%   <<"AppKey">> => string(),
%%   <<"JoinEui">> => string(),
%%   <<"NwkKey">> => string()
%% }
-type otaa_v1_1() :: #{binary() => any()}.

%% Example:
%% update_network_analyzer_configuration_response() :: #{}
-type update_network_analyzer_configuration_response() :: #{}.

%% Example:
%% disassociate_wireless_gateway_from_certificate_request() :: #{}
-type disassociate_wireless_gateway_from_certificate_request() :: #{}.

%% Example:
%% update_position_response() :: #{}
-type update_position_response() :: #{}.

%% Example:
%% associate_wireless_gateway_with_thing_response() :: #{}
-type associate_wireless_gateway_with_thing_response() :: #{}.


%% Example:
%% lo_ra_w_a_n_update_device() :: #{
%%   <<"AbpV1_0_x">> => update_abp_v1_0_x(),
%%   <<"AbpV1_1">> => update_abp_v1_1(),
%%   <<"DeviceProfileId">> => string(),
%%   <<"FPorts">> => update_f_ports(),
%%   <<"ServiceProfileId">> => string()
%% }
-type lo_ra_w_a_n_update_device() :: #{binary() => any()}.

%% Example:
%% delete_wireless_gateway_response() :: #{}
-type delete_wireless_gateway_response() :: #{}.


%% Example:
%% get_resource_position_request() :: #{
%%   <<"ResourceType">> := list(any())
%% }
-type get_resource_position_request() :: #{binary() => any()}.


%% Example:
%% list_position_configurations_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ResourceType">> => list(any())
%% }
-type list_position_configurations_request() :: #{binary() => any()}.


%% Example:
%% gsm_local_id() :: #{
%%   <<"Bcch">> => integer(),
%%   <<"Bsic">> => integer()
%% }
-type gsm_local_id() :: #{binary() => any()}.


%% Example:
%% update_wireless_device_request() :: #{
%%   <<"Description">> => string(),
%%   <<"DestinationName">> => string(),
%%   <<"LoRaWAN">> => lo_ra_w_a_n_update_device(),
%%   <<"Name">> => string(),
%%   <<"Positioning">> => list(any())
%% }
-type update_wireless_device_request() :: #{binary() => any()}.

%% Example:
%% delete_service_profile_request() :: #{}
-type delete_service_profile_request() :: #{}.

%% Example:
%% delete_wireless_device_import_task_request() :: #{}
-type delete_wireless_device_import_task_request() :: #{}.

%% Example:
%% update_resource_position_response() :: #{}
-type update_resource_position_response() :: #{}.

%% Example:
%% disassociate_wireless_device_from_multicast_group_request() :: #{}
-type disassociate_wireless_device_from_multicast_group_request() :: #{}.


%% Example:
%% start_wireless_device_import_task_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"Id">> => string()
%% }
-type start_wireless_device_import_task_response() :: #{binary() => any()}.


%% Example:
%% list_wireless_device_import_tasks_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"WirelessDeviceImportTaskList">> => list(wireless_device_import_task())
%% }
-type list_wireless_device_import_tasks_response() :: #{binary() => any()}.


%% Example:
%% service_profile() :: #{
%%   <<"Arn">> => string(),
%%   <<"Id">> => string(),
%%   <<"Name">> => string()
%% }
-type service_profile() :: #{binary() => any()}.

%% Example:
%% deregister_wireless_device_response() :: #{}
-type deregister_wireless_device_response() :: #{}.


%% Example:
%% update_multicast_group_request() :: #{
%%   <<"Description">> => string(),
%%   <<"LoRaWAN">> => lo_ra_w_a_n_multicast(),
%%   <<"Name">> => string()
%% }
-type update_multicast_group_request() :: #{binary() => any()}.


%% Example:
%% create_multicast_group_request() :: #{
%%   <<"ClientRequestToken">> => string(),
%%   <<"Description">> => string(),
%%   <<"LoRaWAN">> := lo_ra_w_a_n_multicast(),
%%   <<"Name">> => string(),
%%   <<"Tags">> => list(tag())
%% }
-type create_multicast_group_request() :: #{binary() => any()}.


%% Example:
%% create_fuota_task_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"Id">> => string()
%% }
-type create_fuota_task_response() :: #{binary() => any()}.


%% Example:
%% create_service_profile_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"Id">> => string()
%% }
-type create_service_profile_response() :: #{binary() => any()}.


%% Example:
%% list_wireless_gateways_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"WirelessGatewayList">> => list(wireless_gateway_statistics())
%% }
-type list_wireless_gateways_response() :: #{binary() => any()}.


%% Example:
%% list_wireless_devices_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"WirelessDeviceList">> => list(wireless_device_statistics())
%% }
-type list_wireless_devices_response() :: #{binary() => any()}.


%% Example:
%% lo_ra_w_a_n_gateway() :: #{
%%   <<"Beaconing">> => beaconing(),
%%   <<"GatewayEui">> => string(),
%%   <<"JoinEuiFilters">> => list(list(string())()),
%%   <<"MaxEirp">> => float(),
%%   <<"NetIdFilters">> => list(string()),
%%   <<"RfRegion">> => string(),
%%   <<"SubBands">> => list(integer())
%% }
-type lo_ra_w_a_n_gateway() :: #{binary() => any()}.


%% Example:
%% associate_aws_account_with_partner_account_request() :: #{
%%   <<"ClientRequestToken">> => string(),
%%   <<"Sidewalk">> := sidewalk_account_info(),
%%   <<"Tags">> => list(tag())
%% }
-type associate_aws_account_with_partner_account_request() :: #{binary() => any()}.


%% Example:
%% get_position_response() :: #{
%%   <<"Accuracy">> => accuracy(),
%%   <<"Position">> => list(float()),
%%   <<"SolverProvider">> => list(any()),
%%   <<"SolverType">> => list(any()),
%%   <<"SolverVersion">> => string(),
%%   <<"Timestamp">> => string()
%% }
-type get_position_response() :: #{binary() => any()}.


%% Example:
%% wcdma_local_id() :: #{
%%   <<"Psc">> => integer(),
%%   <<"Uarfcndl">> => integer()
%% }
-type wcdma_local_id() :: #{binary() => any()}.


%% Example:
%% list_multicast_groups_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_multicast_groups_request() :: #{binary() => any()}.


%% Example:
%% session_keys_abp_v1_1() :: #{
%%   <<"AppSKey">> => string(),
%%   <<"FNwkSIntKey">> => string(),
%%   <<"NwkSEncKey">> => string(),
%%   <<"SNwkSIntKey">> => string()
%% }
-type session_keys_abp_v1_1() :: #{binary() => any()}.


%% Example:
%% lo_ra_w_a_n_device_profile() :: #{
%%   <<"ClassBTimeout">> => integer(),
%%   <<"ClassCTimeout">> => integer(),
%%   <<"FactoryPresetFreqsList">> => list(integer()),
%%   <<"MacVersion">> => string(),
%%   <<"MaxDutyCycle">> => integer(),
%%   <<"MaxEirp">> => integer(),
%%   <<"PingSlotDr">> => integer(),
%%   <<"PingSlotFreq">> => integer(),
%%   <<"PingSlotPeriod">> => integer(),
%%   <<"RegParamsRevision">> => string(),
%%   <<"RfRegion">> => string(),
%%   <<"RxDataRate2">> => integer(),
%%   <<"RxDelay1">> => integer(),
%%   <<"RxDrOffset1">> => integer(),
%%   <<"RxFreq2">> => integer(),
%%   <<"Supports32BitFCnt">> => boolean(),
%%   <<"SupportsClassB">> => boolean(),
%%   <<"SupportsClassC">> => boolean(),
%%   <<"SupportsJoin">> => boolean()
%% }
-type lo_ra_w_a_n_device_profile() :: #{binary() => any()}.


%% Example:
%% update_abp_v1_0_x() :: #{
%%   <<"FCntStart">> => integer()
%% }
-type update_abp_v1_0_x() :: #{binary() => any()}.

%% Example:
%% update_multicast_group_response() :: #{}
-type update_multicast_group_response() :: #{}.

%% Example:
%% disassociate_multicast_group_from_fuota_task_response() :: #{}
-type disassociate_multicast_group_from_fuota_task_response() :: #{}.


%% Example:
%% positioning() :: #{
%%   <<"ClockSync">> => integer(),
%%   <<"Gnss">> => integer(),
%%   <<"Stream">> => integer()
%% }
-type positioning() :: #{binary() => any()}.


%% Example:
%% cdma_local_id() :: #{
%%   <<"CdmaChannel">> => integer(),
%%   <<"PnOffset">> => integer()
%% }
-type cdma_local_id() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"ResourceId">> => string(),
%%   <<"ResourceType">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% wcdma_nmr_obj() :: #{
%%   <<"PathLoss">> => integer(),
%%   <<"Psc">> => integer(),
%%   <<"Rscp">> => integer(),
%%   <<"Uarfcndl">> => integer(),
%%   <<"UtranCid">> => integer()
%% }
-type wcdma_nmr_obj() :: #{binary() => any()}.


%% Example:
%% gsm_nmr_obj() :: #{
%%   <<"Bcch">> => integer(),
%%   <<"Bsic">> => integer(),
%%   <<"GlobalIdentity">> => global_identity(),
%%   <<"RxLevel">> => integer()
%% }
-type gsm_nmr_obj() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"ResourceId">> => string(),
%%   <<"ResourceType">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% lte_local_id() :: #{
%%   <<"Earfcn">> => integer(),
%%   <<"Pci">> => integer()
%% }
-type lte_local_id() :: #{binary() => any()}.

%% Example:
%% associate_wireless_device_with_multicast_group_response() :: #{}
-type associate_wireless_device_with_multicast_group_response() :: #{}.

%% Example:
%% get_metric_configuration_request() :: #{}
-type get_metric_configuration_request() :: #{}.


%% Example:
%% get_wireless_gateway_task_response() :: #{
%%   <<"LastUplinkReceivedAt">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"TaskCreatedAt">> => string(),
%%   <<"WirelessGatewayId">> => string(),
%%   <<"WirelessGatewayTaskDefinitionId">> => string()
%% }
-type get_wireless_gateway_task_response() :: #{binary() => any()}.


%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.


%% Example:
%% disassociate_aws_account_from_partner_account_request() :: #{
%%   <<"PartnerType">> := list(any())
%% }
-type disassociate_aws_account_from_partner_account_request() :: #{binary() => any()}.


%% Example:
%% get_metrics_request() :: #{
%%   <<"SummaryMetricQueries">> => list(summary_metric_query())
%% }
-type get_metrics_request() :: #{binary() => any()}.

%% Example:
%% delete_wireless_device_request() :: #{}
-type delete_wireless_device_request() :: #{}.

%% Example:
%% delete_fuota_task_request() :: #{}
-type delete_fuota_task_request() :: #{}.


%% Example:
%% get_wireless_gateway_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"Description">> => string(),
%%   <<"Id">> => string(),
%%   <<"LoRaWAN">> => lo_ra_w_a_n_gateway(),
%%   <<"Name">> => string(),
%%   <<"ThingArn">> => string(),
%%   <<"ThingName">> => string()
%% }
-type get_wireless_gateway_response() :: #{binary() => any()}.


%% Example:
%% get_wireless_gateway_firmware_information_response() :: #{
%%   <<"LoRaWAN">> => lo_ra_w_a_n_gateway_current_version()
%% }
-type get_wireless_gateway_firmware_information_response() :: #{binary() => any()}.

%% Example:
%% get_fuota_task_request() :: #{}
-type get_fuota_task_request() :: #{}.

%% Example:
%% update_wireless_device_import_task_response() :: #{}
-type update_wireless_device_import_task_response() :: #{}.


%% Example:
%% get_partner_account_response() :: #{
%%   <<"AccountLinked">> => boolean(),
%%   <<"Sidewalk">> => sidewalk_account_info_with_fingerprint()
%% }
-type get_partner_account_response() :: #{binary() => any()}.


%% Example:
%% lo_ra_w_a_n_device() :: #{
%%   <<"AbpV1_0_x">> => abp_v1_0_x(),
%%   <<"AbpV1_1">> => abp_v1_1(),
%%   <<"DevEui">> => string(),
%%   <<"DeviceProfileId">> => string(),
%%   <<"FPorts">> => f_ports(),
%%   <<"OtaaV1_0_x">> => otaa_v1_0_x(),
%%   <<"OtaaV1_1">> => otaa_v1_1(),
%%   <<"ServiceProfileId">> => string()
%% }
-type lo_ra_w_a_n_device() :: #{binary() => any()}.

%% Example:
%% delete_destination_response() :: #{}
-type delete_destination_response() :: #{}.


%% Example:
%% wi_fi_access_point() :: #{
%%   <<"MacAddress">> => string(),
%%   <<"Rss">> => integer()
%% }
-type wi_fi_access_point() :: #{binary() => any()}.


%% Example:
%% associate_wireless_gateway_with_thing_request() :: #{
%%   <<"ThingArn">> := string()
%% }
-type associate_wireless_gateway_with_thing_request() :: #{binary() => any()}.


%% Example:
%% gnss() :: #{
%%   <<"AssistAltitude">> => float(),
%%   <<"AssistPosition">> => list(float()),
%%   <<"CaptureTime">> => float(),
%%   <<"CaptureTimeAccuracy">> => float(),
%%   <<"Payload">> => string(),
%%   <<"Use2DSolver">> => boolean()
%% }
-type gnss() :: #{binary() => any()}.


%% Example:
%% update_resource_event_configuration_request() :: #{
%%   <<"ConnectionStatus">> => connection_status_event_configuration(),
%%   <<"DeviceRegistrationState">> => device_registration_state_event_configuration(),
%%   <<"IdentifierType">> := list(any()),
%%   <<"Join">> => join_event_configuration(),
%%   <<"MessageDeliveryStatus">> => message_delivery_status_event_configuration(),
%%   <<"PartnerType">> => list(any()),
%%   <<"Proximity">> => proximity_event_configuration()
%% }
-type update_resource_event_configuration_request() :: #{binary() => any()}.

%% Example:
%% delete_device_profile_response() :: #{}
-type delete_device_profile_response() :: #{}.

%% Example:
%% get_log_levels_by_resource_types_request() :: #{}
-type get_log_levels_by_resource_types_request() :: #{}.


%% Example:
%% lo_ra_w_a_n_send_data_to_device() :: #{
%%   <<"FPort">> => integer(),
%%   <<"ParticipatingGateways">> => participating_gateways()
%% }
-type lo_ra_w_a_n_send_data_to_device() :: #{binary() => any()}.

%% Example:
%% disassociate_aws_account_from_partner_account_response() :: #{}
-type disassociate_aws_account_from_partner_account_response() :: #{}.

%% Example:
%% sidewalk_create_device_profile() :: #{}
-type sidewalk_create_device_profile() :: #{}.

%% Example:
%% disassociate_wireless_gateway_from_certificate_response() :: #{}
-type disassociate_wireless_gateway_from_certificate_response() :: #{}.


%% Example:
%% create_fuota_task_request() :: #{
%%   <<"ClientRequestToken">> => string(),
%%   <<"Description">> => string(),
%%   <<"Descriptor">> => string(),
%%   <<"FirmwareUpdateImage">> := string(),
%%   <<"FirmwareUpdateRole">> := string(),
%%   <<"FragmentIntervalMS">> => integer(),
%%   <<"FragmentSizeBytes">> => integer(),
%%   <<"LoRaWAN">> => lo_ra_w_a_n_fuota_task(),
%%   <<"Name">> => string(),
%%   <<"RedundancyPercent">> => integer(),
%%   <<"Tags">> => list(tag())
%% }
-type create_fuota_task_request() :: #{binary() => any()}.


%% Example:
%% tdscdma_nmr_obj() :: #{
%%   <<"CellParams">> => integer(),
%%   <<"PathLoss">> => integer(),
%%   <<"Rscp">> => integer(),
%%   <<"Uarfcn">> => integer(),
%%   <<"UtranCid">> => integer()
%% }
-type tdscdma_nmr_obj() :: #{binary() => any()}.


%% Example:
%% get_wireless_gateway_request() :: #{
%%   <<"IdentifierType">> := list(any())
%% }
-type get_wireless_gateway_request() :: #{binary() => any()}.


%% Example:
%% sidewalk_account_info_with_fingerprint() :: #{
%%   <<"AmazonId">> => string(),
%%   <<"Arn">> => string(),
%%   <<"Fingerprint">> => string()
%% }
-type sidewalk_account_info_with_fingerprint() :: #{binary() => any()}.

%% Example:
%% update_wireless_gateway_response() :: #{}
-type update_wireless_gateway_response() :: #{}.


%% Example:
%% tdscdma_obj() :: #{
%%   <<"Lac">> => integer(),
%%   <<"Mcc">> => integer(),
%%   <<"Mnc">> => integer(),
%%   <<"PathLoss">> => integer(),
%%   <<"Rscp">> => integer(),
%%   <<"TdscdmaLocalId">> => tdscdma_local_id(),
%%   <<"TdscdmaNmr">> => list(tdscdma_nmr_obj()),
%%   <<"TdscdmaTimingAdvance">> => integer(),
%%   <<"UtranCid">> => integer()
%% }
-type tdscdma_obj() :: #{binary() => any()}.


%% Example:
%% lo_ra_w_a_n_device_metadata() :: #{
%%   <<"DataRate">> => integer(),
%%   <<"DevEui">> => string(),
%%   <<"FPort">> => integer(),
%%   <<"Frequency">> => integer(),
%%   <<"Gateways">> => list(lo_ra_w_a_n_gateway_metadata()),
%%   <<"PublicGateways">> => list(lo_ra_w_a_n_public_gateway_metadata()),
%%   <<"Timestamp">> => string()
%% }
-type lo_ra_w_a_n_device_metadata() :: #{binary() => any()}.


%% Example:
%% send_data_to_multicast_group_response() :: #{
%%   <<"MessageId">> => string()
%% }
-type send_data_to_multicast_group_response() :: #{binary() => any()}.

%% Example:
%% disassociate_multicast_group_from_fuota_task_request() :: #{}
-type disassociate_multicast_group_from_fuota_task_request() :: #{}.


%% Example:
%% list_devices_for_wireless_device_import_task_request() :: #{
%%   <<"Id">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"Status">> => list(any())
%% }
-type list_devices_for_wireless_device_import_task_request() :: #{binary() => any()}.

%% Example:
%% update_wireless_device_response() :: #{}
-type update_wireless_device_response() :: #{}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"Tags">> => list(tag())
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% list_destinations_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_destinations_request() :: #{binary() => any()}.

%% Example:
%% disassociate_wireless_device_from_thing_response() :: #{}
-type disassociate_wireless_device_from_thing_response() :: #{}.


%% Example:
%% sidewalk_create_wireless_device() :: #{
%%   <<"DeviceProfileId">> => string()
%% }
-type sidewalk_create_wireless_device() :: #{binary() => any()}.

%% Example:
%% delete_wireless_gateway_task_definition_response() :: #{}
-type delete_wireless_gateway_task_definition_response() :: #{}.

%% Example:
%% delete_wireless_gateway_task_definition_request() :: #{}
-type delete_wireless_gateway_task_definition_request() :: #{}.


%% Example:
%% update_event_configuration_by_resource_types_request() :: #{
%%   <<"ConnectionStatus">> => connection_status_resource_type_event_configuration(),
%%   <<"DeviceRegistrationState">> => device_registration_state_resource_type_event_configuration(),
%%   <<"Join">> => join_resource_type_event_configuration(),
%%   <<"MessageDeliveryStatus">> => message_delivery_status_resource_type_event_configuration(),
%%   <<"Proximity">> => proximity_resource_type_event_configuration()
%% }
-type update_event_configuration_by_resource_types_request() :: #{binary() => any()}.


%% Example:
%% get_resource_event_configuration_response() :: #{
%%   <<"ConnectionStatus">> => connection_status_event_configuration(),
%%   <<"DeviceRegistrationState">> => device_registration_state_event_configuration(),
%%   <<"Join">> => join_event_configuration(),
%%   <<"MessageDeliveryStatus">> => message_delivery_status_event_configuration(),
%%   <<"Proximity">> => proximity_event_configuration()
%% }
-type get_resource_event_configuration_response() :: #{binary() => any()}.


%% Example:
%% send_data_to_wireless_device_response() :: #{
%%   <<"MessageId">> => string()
%% }
-type send_data_to_wireless_device_response() :: #{binary() => any()}.


%% Example:
%% connection_status_event_configuration() :: #{
%%   <<"LoRaWAN">> => lo_ra_w_a_n_connection_status_event_notification_configurations(),
%%   <<"WirelessGatewayIdEventTopic">> => list(any())
%% }
-type connection_status_event_configuration() :: #{binary() => any()}.


%% Example:
%% associate_aws_account_with_partner_account_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"Sidewalk">> => sidewalk_account_info()
%% }
-type associate_aws_account_with_partner_account_response() :: #{binary() => any()}.

%% Example:
%% delete_destination_request() :: #{}
-type delete_destination_request() :: #{}.


%% Example:
%% event_configuration_item() :: #{
%%   <<"Events">> => event_notification_item_configurations(),
%%   <<"Identifier">> => string(),
%%   <<"IdentifierType">> => list(any()),
%%   <<"PartnerType">> => list(any())
%% }
-type event_configuration_item() :: #{binary() => any()}.


%% Example:
%% update_abp_v1_1() :: #{
%%   <<"FCntStart">> => integer()
%% }
-type update_abp_v1_1() :: #{binary() => any()}.


%% Example:
%% list_service_profiles_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_service_profiles_request() :: #{binary() => any()}.

%% Example:
%% disassociate_wireless_gateway_from_thing_request() :: #{}
-type disassociate_wireless_gateway_from_thing_request() :: #{}.


%% Example:
%% imported_wireless_device() :: #{
%%   <<"Sidewalk">> => imported_sidewalk_device()
%% }
-type imported_wireless_device() :: #{binary() => any()}.

%% Example:
%% get_wireless_gateway_task_request() :: #{}
-type get_wireless_gateway_task_request() :: #{}.


%% Example:
%% wireless_gateway_event_log_option() :: #{
%%   <<"Event">> => list(any()),
%%   <<"LogLevel">> => list(any())
%% }
-type wireless_gateway_event_log_option() :: #{binary() => any()}.


%% Example:
%% create_wireless_gateway_task_request() :: #{
%%   <<"WirelessGatewayTaskDefinitionId">> := string()
%% }
-type create_wireless_gateway_task_request() :: #{binary() => any()}.


%% Example:
%% semtech_gnss_configuration() :: #{
%%   <<"Fec">> => list(any()),
%%   <<"Status">> => list(any())
%% }
-type semtech_gnss_configuration() :: #{binary() => any()}.

%% Example:
%% disassociate_wireless_device_from_thing_request() :: #{}
-type disassociate_wireless_device_from_thing_request() :: #{}.


%% Example:
%% list_multicast_groups_by_fuota_task_response() :: #{
%%   <<"MulticastGroupList">> => list(multicast_group_by_fuota_task()),
%%   <<"NextToken">> => string()
%% }
-type list_multicast_groups_by_fuota_task_response() :: #{binary() => any()}.

%% Example:
%% put_resource_log_level_response() :: #{}
-type put_resource_log_level_response() :: #{}.


%% Example:
%% get_service_endpoint_request() :: #{
%%   <<"ServiceType">> => list(any())
%% }
-type get_service_endpoint_request() :: #{binary() => any()}.


%% Example:
%% list_service_profiles_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"ServiceProfileList">> => list(service_profile())
%% }
-type list_service_profiles_response() :: #{binary() => any()}.


%% Example:
%% create_wireless_device_request() :: #{
%%   <<"ClientRequestToken">> => string(),
%%   <<"Description">> => string(),
%%   <<"DestinationName">> := string(),
%%   <<"LoRaWAN">> => lo_ra_w_a_n_device(),
%%   <<"Name">> => string(),
%%   <<"Positioning">> => list(any()),
%%   <<"Sidewalk">> => sidewalk_create_wireless_device(),
%%   <<"Tags">> => list(tag()),
%%   <<"Type">> := list(any())
%% }
-type create_wireless_device_request() :: #{binary() => any()}.


%% Example:
%% lo_ra_w_a_n_join_event_notification_configurations() :: #{
%%   <<"DevEuiEventTopic">> => list(any())
%% }
-type lo_ra_w_a_n_join_event_notification_configurations() :: #{binary() => any()}.


%% Example:
%% wireless_device_statistics() :: #{
%%   <<"Arn">> => string(),
%%   <<"DestinationName">> => string(),
%%   <<"FuotaDeviceStatus">> => list(any()),
%%   <<"Id">> => string(),
%%   <<"LastUplinkReceivedAt">> => string(),
%%   <<"LoRaWAN">> => lo_ra_w_a_n_list_device(),
%%   <<"McGroupId">> => integer(),
%%   <<"MulticastDeviceStatus">> => string(),
%%   <<"Name">> => string(),
%%   <<"Sidewalk">> => sidewalk_list_device(),
%%   <<"Type">> => list(any())
%% }
-type wireless_device_statistics() :: #{binary() => any()}.


%% Example:
%% list_devices_for_wireless_device_import_task_response() :: #{
%%   <<"DestinationName">> => string(),
%%   <<"ImportedWirelessDeviceList">> => list(imported_wireless_device()),
%%   <<"NextToken">> => string()
%% }
-type list_devices_for_wireless_device_import_task_response() :: #{binary() => any()}.


%% Example:
%% lo_ra_w_a_n_connection_status_resource_type_event_configuration() :: #{
%%   <<"WirelessGatewayEventTopic">> => list(any())
%% }
-type lo_ra_w_a_n_connection_status_resource_type_event_configuration() :: #{binary() => any()}.


%% Example:
%% put_resource_log_level_request() :: #{
%%   <<"LogLevel">> := list(any()),
%%   <<"ResourceType">> := string()
%% }
-type put_resource_log_level_request() :: #{binary() => any()}.


%% Example:
%% tdscdma_local_id() :: #{
%%   <<"CellParams">> => integer(),
%%   <<"Uarfcn">> => integer()
%% }
-type tdscdma_local_id() :: #{binary() => any()}.


%% Example:
%% dak_certificate_metadata() :: #{
%%   <<"ApId">> => string(),
%%   <<"CertificateId">> => string(),
%%   <<"DeviceTypeId">> => string(),
%%   <<"FactorySupport">> => boolean(),
%%   <<"MaxAllowedSignature">> => integer()
%% }
-type dak_certificate_metadata() :: #{binary() => any()}.


%% Example:
%% list_event_configurations_response() :: #{
%%   <<"EventConfigurationsList">> => list(event_configuration_item()),
%%   <<"NextToken">> => string()
%% }
-type list_event_configurations_response() :: #{binary() => any()}.

%% Example:
%% update_metric_configuration_response() :: #{}
-type update_metric_configuration_response() :: #{}.


%% Example:
%% create_service_profile_request() :: #{
%%   <<"ClientRequestToken">> => string(),
%%   <<"LoRaWAN">> => lo_ra_w_a_n_service_profile(),
%%   <<"Name">> => string(),
%%   <<"Tags">> => list(tag())
%% }
-type create_service_profile_request() :: #{binary() => any()}.


%% Example:
%% fuota_task_log_option() :: #{
%%   <<"Events">> => list(fuota_task_event_log_option()),
%%   <<"LogLevel">> => list(any()),
%%   <<"Type">> => list(any())
%% }
-type fuota_task_log_option() :: #{binary() => any()}.


%% Example:
%% wireless_gateway_log_option() :: #{
%%   <<"Events">> => list(wireless_gateway_event_log_option()),
%%   <<"LogLevel">> => list(any()),
%%   <<"Type">> => list(any())
%% }
-type wireless_gateway_log_option() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"Message">> => string()
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% update_destination_request() :: #{
%%   <<"Description">> => string(),
%%   <<"Expression">> => string(),
%%   <<"ExpressionType">> => list(any()),
%%   <<"RoleArn">> => string()
%% }
-type update_destination_request() :: #{binary() => any()}.


%% Example:
%% position_configuration_item() :: #{
%%   <<"Destination">> => string(),
%%   <<"ResourceIdentifier">> => string(),
%%   <<"ResourceType">> => list(any()),
%%   <<"Solvers">> => position_solver_details()
%% }
-type position_configuration_item() :: #{binary() => any()}.


%% Example:
%% create_device_profile_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"Id">> => string()
%% }
-type create_device_profile_response() :: #{binary() => any()}.


%% Example:
%% update_partner_account_request() :: #{
%%   <<"PartnerType">> := list(any()),
%%   <<"Sidewalk">> := sidewalk_update_account()
%% }
-type update_partner_account_request() :: #{binary() => any()}.


%% Example:
%% start_multicast_group_session_request() :: #{
%%   <<"LoRaWAN">> := lo_ra_w_a_n_multicast_session()
%% }
-type start_multicast_group_session_request() :: #{binary() => any()}.


%% Example:
%% list_wireless_gateway_task_definitions_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"TaskDefinitions">> => list(update_wireless_gateway_task_entry())
%% }
-type list_wireless_gateway_task_definitions_response() :: #{binary() => any()}.


%% Example:
%% get_metrics_response() :: #{
%%   <<"SummaryMetricQueryResults">> => list(summary_metric_query_result())
%% }
-type get_metrics_response() :: #{binary() => any()}.


%% Example:
%% event_notification_item_configurations() :: #{
%%   <<"ConnectionStatus">> => connection_status_event_configuration(),
%%   <<"DeviceRegistrationState">> => device_registration_state_event_configuration(),
%%   <<"Join">> => join_event_configuration(),
%%   <<"MessageDeliveryStatus">> => message_delivery_status_event_configuration(),
%%   <<"Proximity">> => proximity_event_configuration()
%% }
-type event_notification_item_configurations() :: #{binary() => any()}.

%% Example:
%% disassociate_wireless_device_from_fuota_task_request() :: #{}
-type disassociate_wireless_device_from_fuota_task_request() :: #{}.

%% Example:
%% get_multicast_group_session_request() :: #{}
-type get_multicast_group_session_request() :: #{}.


%% Example:
%% lo_ra_w_a_n_gateway_metadata() :: #{
%%   <<"GatewayEui">> => string(),
%%   <<"Rssi">> => float(),
%%   <<"Snr">> => float()
%% }
-type lo_ra_w_a_n_gateway_metadata() :: #{binary() => any()}.


%% Example:
%% list_wireless_device_import_tasks_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_wireless_device_import_tasks_request() :: #{binary() => any()}.

%% Example:
%% cancel_multicast_group_session_request() :: #{}
-type cancel_multicast_group_session_request() :: #{}.

%% Example:
%% test_wireless_device_request() :: #{}
-type test_wireless_device_request() :: #{}.

%% Example:
%% get_wireless_gateway_statistics_request() :: #{}
-type get_wireless_gateway_statistics_request() :: #{}.


%% Example:
%% fuota_task() :: #{
%%   <<"Arn">> => string(),
%%   <<"Id">> => string(),
%%   <<"Name">> => string()
%% }
-type fuota_task() :: #{binary() => any()}.

%% Example:
%% get_wireless_device_statistics_request() :: #{}
-type get_wireless_device_statistics_request() :: #{}.


%% Example:
%% message_delivery_status_resource_type_event_configuration() :: #{
%%   <<"Sidewalk">> => sidewalk_resource_type_event_configuration()
%% }
-type message_delivery_status_resource_type_event_configuration() :: #{binary() => any()}.


%% Example:
%% lo_ra_w_a_n_start_fuota_task() :: #{
%%   <<"StartTime">> => non_neg_integer()
%% }
-type lo_ra_w_a_n_start_fuota_task() :: #{binary() => any()}.


%% Example:
%% create_wireless_gateway_task_definition_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"Id">> => string()
%% }
-type create_wireless_gateway_task_definition_response() :: #{binary() => any()}.


%% Example:
%% update_log_levels_by_resource_types_request() :: #{
%%   <<"DefaultLogLevel">> => list(any()),
%%   <<"FuotaTaskLogOptions">> => list(fuota_task_log_option()),
%%   <<"WirelessDeviceLogOptions">> => list(wireless_device_log_option()),
%%   <<"WirelessGatewayLogOptions">> => list(wireless_gateway_log_option())
%% }
-type update_log_levels_by_resource_types_request() :: #{binary() => any()}.

%% Example:
%% reset_all_resource_log_levels_request() :: #{}
-type reset_all_resource_log_levels_request() :: #{}.


%% Example:
%% update_position_request() :: #{
%%   <<"Position">> := list(float()),
%%   <<"ResourceType">> := list(any())
%% }
-type update_position_request() :: #{binary() => any()}.

%% Example:
%% cancel_multicast_group_session_response() :: #{}
-type cancel_multicast_group_session_response() :: #{}.


%% Example:
%% create_wireless_gateway_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"Id">> => string()
%% }
-type create_wireless_gateway_response() :: #{binary() => any()}.


%% Example:
%% get_position_configuration_response() :: #{
%%   <<"Destination">> => string(),
%%   <<"Solvers">> => position_solver_details()
%% }
-type get_position_configuration_response() :: #{binary() => any()}.


%% Example:
%% lo_ra_w_a_n_get_service_profile_info() :: #{
%%   <<"AddGwMetadata">> => boolean(),
%%   <<"ChannelMask">> => string(),
%%   <<"DevStatusReqFreq">> => integer(),
%%   <<"DlBucketSize">> => integer(),
%%   <<"DlRate">> => integer(),
%%   <<"DlRatePolicy">> => string(),
%%   <<"DrMax">> => integer(),
%%   <<"DrMin">> => integer(),
%%   <<"HrAllowed">> => boolean(),
%%   <<"MinGwDiversity">> => integer(),
%%   <<"NwkGeoLoc">> => boolean(),
%%   <<"PrAllowed">> => boolean(),
%%   <<"RaAllowed">> => boolean(),
%%   <<"ReportDevStatusBattery">> => boolean(),
%%   <<"ReportDevStatusMargin">> => boolean(),
%%   <<"TargetPer">> => integer(),
%%   <<"UlBucketSize">> => integer(),
%%   <<"UlRate">> => integer(),
%%   <<"UlRatePolicy">> => string()
%% }
-type lo_ra_w_a_n_get_service_profile_info() :: #{binary() => any()}.


%% Example:
%% list_network_analyzer_configurations_response() :: #{
%%   <<"NetworkAnalyzerConfigurationList">> => list(network_analyzer_configurations()),
%%   <<"NextToken">> => string()
%% }
-type list_network_analyzer_configurations_response() :: #{binary() => any()}.


%% Example:
%% list_network_analyzer_configurations_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_network_analyzer_configurations_request() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"Message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% update_network_analyzer_configuration_request() :: #{
%%   <<"Description">> => string(),
%%   <<"MulticastGroupsToAdd">> => list(string()),
%%   <<"MulticastGroupsToRemove">> => list(string()),
%%   <<"TraceContent">> => trace_content(),
%%   <<"WirelessDevicesToAdd">> => list(string()),
%%   <<"WirelessDevicesToRemove">> => list(string()),
%%   <<"WirelessGatewaysToAdd">> => list(string()),
%%   <<"WirelessGatewaysToRemove">> => list(string())
%% }
-type update_network_analyzer_configuration_request() :: #{binary() => any()}.


%% Example:
%% start_single_wireless_device_import_task_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"Id">> => string()
%% }
-type start_single_wireless_device_import_task_response() :: #{binary() => any()}.


%% Example:
%% associate_wireless_device_with_thing_request() :: #{
%%   <<"ThingArn">> := string()
%% }
-type associate_wireless_device_with_thing_request() :: #{binary() => any()}.


%% Example:
%% gsm_obj() :: #{
%%   <<"GeranCid">> => integer(),
%%   <<"GsmLocalId">> => gsm_local_id(),
%%   <<"GsmNmr">> => list(gsm_nmr_obj()),
%%   <<"GsmTimingAdvance">> => integer(),
%%   <<"Lac">> => integer(),
%%   <<"Mcc">> => integer(),
%%   <<"Mnc">> => integer(),
%%   <<"RxLevel">> => integer()
%% }
-type gsm_obj() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% beaconing() :: #{
%%   <<"DataRate">> => integer(),
%%   <<"Frequencies">> => list(integer())
%% }
-type beaconing() :: #{binary() => any()}.

%% Example:
%% associate_wireless_device_with_fuota_task_response() :: #{}
-type associate_wireless_device_with_fuota_task_response() :: #{}.


%% Example:
%% ip() :: #{
%%   <<"IpAddress">> => string()
%% }
-type ip() :: #{binary() => any()}.


%% Example:
%% list_event_configurations_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ResourceType">> := list(any())
%% }
-type list_event_configurations_request() :: #{binary() => any()}.


%% Example:
%% get_position_estimate_request() :: #{
%%   <<"CellTowers">> => cell_towers(),
%%   <<"Gnss">> => gnss(),
%%   <<"Ip">> => ip(),
%%   <<"Timestamp">> => non_neg_integer(),
%%   <<"WiFiAccessPoints">> => list(wi_fi_access_point())
%% }
-type get_position_estimate_request() :: #{binary() => any()}.


%% Example:
%% participating_gateways() :: #{
%%   <<"DownlinkMode">> => list(any()),
%%   <<"GatewayList">> => list(gateway_list_item()),
%%   <<"TransmissionInterval">> => integer()
%% }
-type participating_gateways() :: #{binary() => any()}.

%% Example:
%% get_destination_request() :: #{}
-type get_destination_request() :: #{}.


%% Example:
%% lo_ra_w_a_n_fuota_task() :: #{
%%   <<"RfRegion">> => list(any())
%% }
-type lo_ra_w_a_n_fuota_task() :: #{binary() => any()}.


%% Example:
%% get_wireless_device_import_task_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"DestinationName">> => string(),
%%   <<"FailedImportedDeviceCount">> => float(),
%%   <<"Id">> => string(),
%%   <<"InitializedImportedDeviceCount">> => float(),
%%   <<"OnboardedImportedDeviceCount">> => float(),
%%   <<"PendingImportedDeviceCount">> => float(),
%%   <<"Sidewalk">> => sidewalk_get_start_import_info(),
%%   <<"Status">> => list(any()),
%%   <<"StatusReason">> => string()
%% }
-type get_wireless_device_import_task_response() :: #{binary() => any()}.


%% Example:
%% create_wireless_gateway_task_response() :: #{
%%   <<"Status">> => list(any()),
%%   <<"WirelessGatewayTaskDefinitionId">> => string()
%% }
-type create_wireless_gateway_task_response() :: #{binary() => any()}.


%% Example:
%% lo_ra_w_a_n_public_gateway_metadata() :: #{
%%   <<"DlAllowed">> => boolean(),
%%   <<"Id">> => string(),
%%   <<"ProviderNetId">> => string(),
%%   <<"RfRegion">> => string(),
%%   <<"Rssi">> => float(),
%%   <<"Snr">> => float()
%% }
-type lo_ra_w_a_n_public_gateway_metadata() :: #{binary() => any()}.

%% Example:
%% disassociate_wireless_gateway_from_thing_response() :: #{}
-type disassociate_wireless_gateway_from_thing_response() :: #{}.


%% Example:
%% wireless_device_event_log_option() :: #{
%%   <<"Event">> => list(any()),
%%   <<"LogLevel">> => list(any())
%% }
-type wireless_device_event_log_option() :: #{binary() => any()}.


%% Example:
%% get_wireless_gateway_task_definition_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"AutoCreateTasks">> => boolean(),
%%   <<"Name">> => string(),
%%   <<"Update">> => update_wireless_gateway_task_create()
%% }
-type get_wireless_gateway_task_definition_response() :: #{binary() => any()}.


%% Example:
%% wireless_device_import_task() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"DestinationName">> => string(),
%%   <<"FailedImportedDeviceCount">> => float(),
%%   <<"Id">> => string(),
%%   <<"InitializedImportedDeviceCount">> => float(),
%%   <<"OnboardedImportedDeviceCount">> => float(),
%%   <<"PendingImportedDeviceCount">> => float(),
%%   <<"Sidewalk">> => sidewalk_get_start_import_info(),
%%   <<"Status">> => list(any()),
%%   <<"StatusReason">> => string()
%% }
-type wireless_device_import_task() :: #{binary() => any()}.


%% Example:
%% otaa_v1_0_x() :: #{
%%   <<"AppEui">> => string(),
%%   <<"AppKey">> => string(),
%%   <<"GenAppKey">> => string(),
%%   <<"JoinEui">> => string()
%% }
-type otaa_v1_0_x() :: #{binary() => any()}.


%% Example:
%% get_wireless_gateway_statistics_response() :: #{
%%   <<"ConnectionStatus">> => list(any()),
%%   <<"LastUplinkReceivedAt">> => string(),
%%   <<"WirelessGatewayId">> => string()
%% }
-type get_wireless_gateway_statistics_response() :: #{binary() => any()}.


%% Example:
%% multicast_group_by_fuota_task() :: #{
%%   <<"Id">> => string()
%% }
-type multicast_group_by_fuota_task() :: #{binary() => any()}.


%% Example:
%% list_partner_accounts_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Sidewalk">> => list(sidewalk_account_info_with_fingerprint())
%% }
-type list_partner_accounts_response() :: #{binary() => any()}.


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
%% get_service_endpoint_response() :: #{
%%   <<"ServerTrust">> => string(),
%%   <<"ServiceEndpoint">> => string(),
%%   <<"ServiceType">> => list(any())
%% }
-type get_service_endpoint_response() :: #{binary() => any()}.

%% Example:
%% update_destination_response() :: #{}
-type update_destination_response() :: #{}.


%% Example:
%% reset_resource_log_level_request() :: #{
%%   <<"ResourceType">> := string()
%% }
-type reset_resource_log_level_request() :: #{binary() => any()}.


%% Example:
%% list_queued_messages_response() :: #{
%%   <<"DownlinkQueueMessagesList">> => list(downlink_queue_message()),
%%   <<"NextToken">> => string()
%% }
-type list_queued_messages_response() :: #{binary() => any()}.


%% Example:
%% lo_ra_w_a_n_gateway_current_version() :: #{
%%   <<"CurrentVersion">> => lo_ra_w_a_n_gateway_version()
%% }
-type lo_ra_w_a_n_gateway_current_version() :: #{binary() => any()}.


%% Example:
%% update_f_ports() :: #{
%%   <<"Applications">> => list(application_config()),
%%   <<"Positioning">> => positioning()
%% }
-type update_f_ports() :: #{binary() => any()}.


%% Example:
%% fuota_task_event_log_option() :: #{
%%   <<"Event">> => list(any()),
%%   <<"LogLevel">> => list(any())
%% }
-type fuota_task_event_log_option() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"Message">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.

%% Example:
%% delete_multicast_group_response() :: #{}
-type delete_multicast_group_response() :: #{}.


%% Example:
%% lo_ra_w_a_n_multicast_metadata() :: #{
%%   <<"FPort">> => integer()
%% }
-type lo_ra_w_a_n_multicast_metadata() :: #{binary() => any()}.


%% Example:
%% associate_wireless_device_with_fuota_task_request() :: #{
%%   <<"WirelessDeviceId">> := string()
%% }
-type associate_wireless_device_with_fuota_task_request() :: #{binary() => any()}.


%% Example:
%% wcdma_obj() :: #{
%%   <<"Lac">> => integer(),
%%   <<"Mcc">> => integer(),
%%   <<"Mnc">> => integer(),
%%   <<"PathLoss">> => integer(),
%%   <<"Rscp">> => integer(),
%%   <<"UtranCid">> => integer(),
%%   <<"WcdmaLocalId">> => wcdma_local_id(),
%%   <<"WcdmaNmr">> => list(wcdma_nmr_obj())
%% }
-type wcdma_obj() :: #{binary() => any()}.

%% Example:
%% get_wireless_gateway_firmware_information_request() :: #{}
-type get_wireless_gateway_firmware_information_request() :: #{}.


%% Example:
%% associate_wireless_gateway_with_certificate_response() :: #{
%%   <<"IotCertificateId">> => string()
%% }
-type associate_wireless_gateway_with_certificate_response() :: #{binary() => any()}.

%% Example:
%% update_partner_account_response() :: #{}
-type update_partner_account_response() :: #{}.


%% Example:
%% lo_ra_w_a_n_multicast() :: #{
%%   <<"DlClass">> => list(any()),
%%   <<"ParticipatingGateways">> => participating_gateways_multicast(),
%%   <<"RfRegion">> => list(any())
%% }
-type lo_ra_w_a_n_multicast() :: #{binary() => any()}.


%% Example:
%% start_bulk_associate_wireless_device_with_multicast_group_request() :: #{
%%   <<"QueryString">> => string(),
%%   <<"Tags">> => list(tag())
%% }
-type start_bulk_associate_wireless_device_with_multicast_group_request() :: #{binary() => any()}.


%% Example:
%% session_keys_abp_v1_0_x() :: #{
%%   <<"AppSKey">> => string(),
%%   <<"NwkSKey">> => string()
%% }
-type session_keys_abp_v1_0_x() :: #{binary() => any()}.


%% Example:
%% sidewalk_start_import_info() :: #{
%%   <<"DeviceCreationFile">> => string(),
%%   <<"Role">> => string()
%% }
-type sidewalk_start_import_info() :: #{binary() => any()}.


%% Example:
%% lo_ra_w_a_n_multicast_get() :: #{
%%   <<"DlClass">> => list(any()),
%%   <<"NumberOfDevicesInGroup">> => integer(),
%%   <<"NumberOfDevicesRequested">> => integer(),
%%   <<"ParticipatingGateways">> => participating_gateways_multicast(),
%%   <<"RfRegion">> => list(any())
%% }
-type lo_ra_w_a_n_multicast_get() :: #{binary() => any()}.


%% Example:
%% sidewalk_device() :: #{
%%   <<"AmazonId">> => string(),
%%   <<"CertificateId">> => string(),
%%   <<"DeviceCertificates">> => list(certificate_list()),
%%   <<"DeviceProfileId">> => string(),
%%   <<"PrivateKeys">> => list(certificate_list()),
%%   <<"SidewalkId">> => string(),
%%   <<"SidewalkManufacturingSn">> => string(),
%%   <<"Status">> => list(any())
%% }
-type sidewalk_device() :: #{binary() => any()}.


%% Example:
%% certificate_list() :: #{
%%   <<"SigningAlg">> => list(any()),
%%   <<"Value">> => string()
%% }
-type certificate_list() :: #{binary() => any()}.


%% Example:
%% get_log_levels_by_resource_types_response() :: #{
%%   <<"DefaultLogLevel">> => list(any()),
%%   <<"FuotaTaskLogOptions">> => list(fuota_task_log_option()),
%%   <<"WirelessDeviceLogOptions">> => list(wireless_device_log_option()),
%%   <<"WirelessGatewayLogOptions">> => list(wireless_gateway_log_option())
%% }
-type get_log_levels_by_resource_types_response() :: #{binary() => any()}.


%% Example:
%% dimension() :: #{
%%   <<"name">> => list(any()),
%%   <<"value">> => string()
%% }
-type dimension() :: #{binary() => any()}.


%% Example:
%% list_multicast_groups_response() :: #{
%%   <<"MulticastGroupList">> => list(multicast_group()),
%%   <<"NextToken">> => string()
%% }
-type list_multicast_groups_response() :: #{binary() => any()}.


%% Example:
%% cdma_nmr_obj() :: #{
%%   <<"BaseStationId">> => integer(),
%%   <<"CdmaChannel">> => integer(),
%%   <<"PilotPower">> => integer(),
%%   <<"PnOffset">> => integer()
%% }
-type cdma_nmr_obj() :: #{binary() => any()}.


%% Example:
%% semtech_gnss_detail() :: #{
%%   <<"Fec">> => list(any()),
%%   <<"Provider">> => list(any()),
%%   <<"Status">> => list(any()),
%%   <<"Type">> => list(any())
%% }
-type semtech_gnss_detail() :: #{binary() => any()}.


%% Example:
%% f_ports() :: #{
%%   <<"Applications">> => list(application_config()),
%%   <<"ClockSync">> => integer(),
%%   <<"Fuota">> => integer(),
%%   <<"Multicast">> => integer(),
%%   <<"Positioning">> => positioning()
%% }
-type f_ports() :: #{binary() => any()}.


%% Example:
%% lte_nmr_obj() :: #{
%%   <<"Earfcn">> => integer(),
%%   <<"EutranCid">> => integer(),
%%   <<"Pci">> => integer(),
%%   <<"Rsrp">> => integer(),
%%   <<"Rsrq">> => float()
%% }
-type lte_nmr_obj() :: #{binary() => any()}.


%% Example:
%% put_position_configuration_request() :: #{
%%   <<"Destination">> => string(),
%%   <<"ResourceType">> := list(any()),
%%   <<"Solvers">> => position_solver_configurations()
%% }
-type put_position_configuration_request() :: #{binary() => any()}.


%% Example:
%% start_bulk_disassociate_wireless_device_from_multicast_group_request() :: #{
%%   <<"QueryString">> => string(),
%%   <<"Tags">> => list(tag())
%% }
-type start_bulk_disassociate_wireless_device_from_multicast_group_request() :: #{binary() => any()}.


%% Example:
%% get_partner_account_request() :: #{
%%   <<"PartnerType">> := list(any())
%% }
-type get_partner_account_request() :: #{binary() => any()}.


%% Example:
%% update_wireless_gateway_request() :: #{
%%   <<"Description">> => string(),
%%   <<"JoinEuiFilters">> => list(list(string())()),
%%   <<"MaxEirp">> => float(),
%%   <<"Name">> => string(),
%%   <<"NetIdFilters">> => list(string())
%% }
-type update_wireless_gateway_request() :: #{binary() => any()}.


%% Example:
%% create_wireless_gateway_task_definition_request() :: #{
%%   <<"AutoCreateTasks">> := boolean(),
%%   <<"ClientRequestToken">> => string(),
%%   <<"Name">> => string(),
%%   <<"Tags">> => list(tag()),
%%   <<"Update">> => update_wireless_gateway_task_create()
%% }
-type create_wireless_gateway_task_definition_request() :: #{binary() => any()}.


%% Example:
%% application_config() :: #{
%%   <<"DestinationName">> => string(),
%%   <<"FPort">> => integer(),
%%   <<"Type">> => list(any())
%% }
-type application_config() :: #{binary() => any()}.


%% Example:
%% multicast_wireless_metadata() :: #{
%%   <<"LoRaWAN">> => lo_ra_w_a_n_multicast_metadata()
%% }
-type multicast_wireless_metadata() :: #{binary() => any()}.

%% Example:
%% delete_wireless_gateway_task_request() :: #{}
-type delete_wireless_gateway_task_request() :: #{}.


%% Example:
%% create_device_profile_request() :: #{
%%   <<"ClientRequestToken">> => string(),
%%   <<"LoRaWAN">> => lo_ra_w_a_n_device_profile(),
%%   <<"Name">> => string(),
%%   <<"Sidewalk">> => sidewalk_create_device_profile(),
%%   <<"Tags">> => list(tag())
%% }
-type create_device_profile_request() :: #{binary() => any()}.


%% Example:
%% get_wireless_device_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"Description">> => string(),
%%   <<"DestinationName">> => string(),
%%   <<"Id">> => string(),
%%   <<"LoRaWAN">> => lo_ra_w_a_n_device(),
%%   <<"Name">> => string(),
%%   <<"Positioning">> => list(any()),
%%   <<"Sidewalk">> => sidewalk_device(),
%%   <<"ThingArn">> => string(),
%%   <<"ThingName">> => string(),
%%   <<"Type">> => list(any())
%% }
-type get_wireless_device_response() :: #{binary() => any()}.


%% Example:
%% wireless_device_log_option() :: #{
%%   <<"Events">> => list(wireless_device_event_log_option()),
%%   <<"LogLevel">> => list(any()),
%%   <<"Type">> => list(any())
%% }
-type wireless_device_log_option() :: #{binary() => any()}.


%% Example:
%% summary_metric_query_result() :: #{
%%   <<"AggregationPeriod">> => list(any()),
%%   <<"Dimensions">> => list(dimension()),
%%   <<"EndTimestamp">> => non_neg_integer(),
%%   <<"Error">> => string(),
%%   <<"MetricName">> => list(any()),
%%   <<"QueryId">> => string(),
%%   <<"QueryStatus">> => list(any()),
%%   <<"StartTimestamp">> => non_neg_integer(),
%%   <<"Timestamps">> => list(non_neg_integer()),
%%   <<"Unit">> => string(),
%%   <<"Values">> => list(metric_query_value())
%% }
-type summary_metric_query_result() :: #{binary() => any()}.


%% Example:
%% start_wireless_device_import_task_request() :: #{
%%   <<"ClientRequestToken">> => string(),
%%   <<"DestinationName">> := string(),
%%   <<"Sidewalk">> := sidewalk_start_import_info(),
%%   <<"Tags">> => list(tag())
%% }
-type start_wireless_device_import_task_request() :: #{binary() => any()}.


%% Example:
%% sidewalk_account_info() :: #{
%%   <<"AmazonId">> => string(),
%%   <<"AppServerPrivateKey">> => string()
%% }
-type sidewalk_account_info() :: #{binary() => any()}.

%% Example:
%% delete_wireless_device_import_task_response() :: #{}
-type delete_wireless_device_import_task_response() :: #{}.


%% Example:
%% list_fuota_tasks_response() :: #{
%%   <<"FuotaTaskList">> => list(fuota_task()),
%%   <<"NextToken">> => string()
%% }
-type list_fuota_tasks_response() :: #{binary() => any()}.

%% Example:
%% delete_multicast_group_request() :: #{}
-type delete_multicast_group_request() :: #{}.


%% Example:
%% multicast_group() :: #{
%%   <<"Arn">> => string(),
%%   <<"Id">> => string(),
%%   <<"Name">> => string()
%% }
-type multicast_group() :: #{binary() => any()}.


%% Example:
%% list_wireless_devices_request() :: #{
%%   <<"DestinationName">> => string(),
%%   <<"DeviceProfileId">> => string(),
%%   <<"FuotaTaskId">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"MulticastGroupId">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"ServiceProfileId">> => string(),
%%   <<"WirelessDeviceType">> => list(any())
%% }
-type list_wireless_devices_request() :: #{binary() => any()}.


%% Example:
%% lo_ra_w_a_n_gateway_version() :: #{
%%   <<"Model">> => string(),
%%   <<"PackageVersion">> => string(),
%%   <<"Station">> => string()
%% }
-type lo_ra_w_a_n_gateway_version() :: #{binary() => any()}.


%% Example:
%% update_wireless_gateway_task_create() :: #{
%%   <<"LoRaWAN">> => lo_ra_w_a_n_update_gateway_task_create(),
%%   <<"UpdateDataRole">> => string(),
%%   <<"UpdateDataSource">> => string()
%% }
-type update_wireless_gateway_task_create() :: #{binary() => any()}.


%% Example:
%% associate_multicast_group_with_fuota_task_request() :: #{
%%   <<"MulticastGroupId">> := string()
%% }
-type associate_multicast_group_with_fuota_task_request() :: #{binary() => any()}.


%% Example:
%% metric_query_value() :: #{
%%   <<"Avg">> => float(),
%%   <<"Max">> => float(),
%%   <<"Min">> => float(),
%%   <<"P90">> => float(),
%%   <<"Std">> => float(),
%%   <<"Sum">> => float()
%% }
-type metric_query_value() :: #{binary() => any()}.

%% Example:
%% delete_network_analyzer_configuration_request() :: #{}
-type delete_network_analyzer_configuration_request() :: #{}.


%% Example:
%% lo_ra_w_a_n_join_resource_type_event_configuration() :: #{
%%   <<"WirelessDeviceEventTopic">> => list(any())
%% }
-type lo_ra_w_a_n_join_resource_type_event_configuration() :: #{binary() => any()}.


%% Example:
%% deregister_wireless_device_request() :: #{
%%   <<"WirelessDeviceType">> => list(any())
%% }
-type deregister_wireless_device_request() :: #{binary() => any()}.


%% Example:
%% list_device_profiles_request() :: #{
%%   <<"DeviceProfileType">> => list(any()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_device_profiles_request() :: #{binary() => any()}.


%% Example:
%% list_device_profiles_response() :: #{
%%   <<"DeviceProfileList">> => list(device_profile()),
%%   <<"NextToken">> => string()
%% }
-type list_device_profiles_response() :: #{binary() => any()}.


%% Example:
%% sidewalk_single_start_import_info() :: #{
%%   <<"SidewalkManufacturingSn">> => string()
%% }
-type sidewalk_single_start_import_info() :: #{binary() => any()}.

%% Example:
%% delete_wireless_device_response() :: #{}
-type delete_wireless_device_response() :: #{}.


%% Example:
%% create_wireless_device_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"Id">> => string()
%% }
-type create_wireless_device_response() :: #{binary() => any()}.


%% Example:
%% position_solver_details() :: #{
%%   <<"SemtechGnss">> => semtech_gnss_detail()
%% }
-type position_solver_details() :: #{binary() => any()}.

%% Example:
%% associate_wireless_device_with_thing_response() :: #{}
-type associate_wireless_device_with_thing_response() :: #{}.


%% Example:
%% sidewalk_get_device_profile() :: #{
%%   <<"ApplicationServerPublicKey">> => string(),
%%   <<"DakCertificateMetadata">> => list(dak_certificate_metadata()),
%%   <<"QualificationStatus">> => boolean()
%% }
-type sidewalk_get_device_profile() :: #{binary() => any()}.

%% Example:
%% update_resource_event_configuration_response() :: #{}
-type update_resource_event_configuration_response() :: #{}.


%% Example:
%% sidewalk_send_data_to_device() :: #{
%%   <<"AckModeRetryDurationSecs">> => integer(),
%%   <<"MessageType">> => list(any()),
%%   <<"Seq">> => integer()
%% }
-type sidewalk_send_data_to_device() :: #{binary() => any()}.

%% Example:
%% reset_resource_log_level_response() :: #{}
-type reset_resource_log_level_response() :: #{}.


%% Example:
%% lo_ra_w_a_n_list_device() :: #{
%%   <<"DevEui">> => string()
%% }
-type lo_ra_w_a_n_list_device() :: #{binary() => any()}.


%% Example:
%% proximity_event_configuration() :: #{
%%   <<"Sidewalk">> => sidewalk_event_notification_configurations(),
%%   <<"WirelessDeviceIdEventTopic">> => list(any())
%% }
-type proximity_event_configuration() :: #{binary() => any()}.


%% Example:
%% get_wireless_device_statistics_response() :: #{
%%   <<"LastUplinkReceivedAt">> => string(),
%%   <<"LoRaWAN">> => lo_ra_w_a_n_device_metadata(),
%%   <<"Sidewalk">> => sidewalk_device_metadata(),
%%   <<"WirelessDeviceId">> => string()
%% }
-type get_wireless_device_statistics_response() :: #{binary() => any()}.


%% Example:
%% lo_ra_w_a_n_service_profile() :: #{
%%   <<"AddGwMetadata">> => boolean(),
%%   <<"DrMax">> => integer(),
%%   <<"DrMin">> => integer(),
%%   <<"PrAllowed">> => boolean(),
%%   <<"RaAllowed">> => boolean()
%% }
-type lo_ra_w_a_n_service_profile() :: #{binary() => any()}.


%% Example:
%% sidewalk_resource_type_event_configuration() :: #{
%%   <<"WirelessDeviceEventTopic">> => list(any())
%% }
-type sidewalk_resource_type_event_configuration() :: #{binary() => any()}.

%% Example:
%% delete_wireless_gateway_task_response() :: #{}
-type delete_wireless_gateway_task_response() :: #{}.


%% Example:
%% sidewalk_list_device() :: #{
%%   <<"AmazonId">> => string(),
%%   <<"DeviceCertificates">> => list(certificate_list()),
%%   <<"DeviceProfileId">> => string(),
%%   <<"SidewalkId">> => string(),
%%   <<"SidewalkManufacturingSn">> => string(),
%%   <<"Status">> => list(any())
%% }
-type sidewalk_list_device() :: #{binary() => any()}.

%% Example:
%% reset_all_resource_log_levels_response() :: #{}
-type reset_all_resource_log_levels_response() :: #{}.


%% Example:
%% device_registration_state_resource_type_event_configuration() :: #{
%%   <<"Sidewalk">> => sidewalk_resource_type_event_configuration()
%% }
-type device_registration_state_resource_type_event_configuration() :: #{binary() => any()}.


%% Example:
%% update_fuota_task_request() :: #{
%%   <<"Description">> => string(),
%%   <<"Descriptor">> => string(),
%%   <<"FirmwareUpdateImage">> => string(),
%%   <<"FirmwareUpdateRole">> => string(),
%%   <<"FragmentIntervalMS">> => integer(),
%%   <<"FragmentSizeBytes">> => integer(),
%%   <<"LoRaWAN">> => lo_ra_w_a_n_fuota_task(),
%%   <<"Name">> => string(),
%%   <<"RedundancyPercent">> => integer()
%% }
-type update_fuota_task_request() :: #{binary() => any()}.

%% Example:
%% delete_device_profile_request() :: #{}
-type delete_device_profile_request() :: #{}.


%% Example:
%% lte_obj() :: #{
%%   <<"EutranCid">> => integer(),
%%   <<"LteLocalId">> => lte_local_id(),
%%   <<"LteNmr">> => list(lte_nmr_obj()),
%%   <<"LteTimingAdvance">> => integer(),
%%   <<"Mcc">> => integer(),
%%   <<"Mnc">> => integer(),
%%   <<"NrCapable">> => boolean(),
%%   <<"Rsrp">> => integer(),
%%   <<"Rsrq">> => float(),
%%   <<"Tac">> => integer()
%% }
-type lte_obj() :: #{binary() => any()}.


%% Example:
%% too_many_tags_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"ResourceName">> => string()
%% }
-type too_many_tags_exception() :: #{binary() => any()}.

%% Example:
%% update_event_configuration_by_resource_types_response() :: #{}
-type update_event_configuration_by_resource_types_response() :: #{}.


%% Example:
%% list_wireless_gateways_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_wireless_gateways_request() :: #{binary() => any()}.

%% Example:
%% start_fuota_task_response() :: #{}
-type start_fuota_task_response() :: #{}.

%% Example:
%% start_multicast_group_session_response() :: #{}
-type start_multicast_group_session_response() :: #{}.


%% Example:
%% join_resource_type_event_configuration() :: #{
%%   <<"LoRaWAN">> => lo_ra_w_a_n_join_resource_type_event_configuration()
%% }
-type join_resource_type_event_configuration() :: #{binary() => any()}.

%% Example:
%% get_wireless_device_import_task_request() :: #{}
-type get_wireless_device_import_task_request() :: #{}.


%% Example:
%% get_multicast_group_session_response() :: #{
%%   <<"LoRaWAN">> => lo_ra_w_a_n_multicast_session()
%% }
-type get_multicast_group_session_response() :: #{binary() => any()}.


%% Example:
%% sidewalk_get_start_import_info() :: #{
%%   <<"DeviceCreationFileList">> => list(string()),
%%   <<"Role">> => string()
%% }
-type sidewalk_get_start_import_info() :: #{binary() => any()}.


%% Example:
%% cdma_obj() :: #{
%%   <<"BaseLat">> => float(),
%%   <<"BaseLng">> => float(),
%%   <<"BaseStationId">> => integer(),
%%   <<"CdmaLocalId">> => cdma_local_id(),
%%   <<"CdmaNmr">> => list(cdma_nmr_obj()),
%%   <<"NetworkId">> => integer(),
%%   <<"PilotPower">> => integer(),
%%   <<"RegistrationZone">> => integer(),
%%   <<"SystemId">> => integer()
%% }
-type cdma_obj() :: #{binary() => any()}.

%% Example:
%% get_wireless_gateway_certificate_request() :: #{}
-type get_wireless_gateway_certificate_request() :: #{}.

-type associate_aws_account_with_partner_account_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type associate_multicast_group_with_fuota_task_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type associate_wireless_device_with_fuota_task_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type associate_wireless_device_with_multicast_group_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type associate_wireless_device_with_thing_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type associate_wireless_gateway_with_certificate_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type associate_wireless_gateway_with_thing_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type cancel_multicast_group_session_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_destination_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_device_profile_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type create_fuota_task_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_multicast_group_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_network_analyzer_configuration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_service_profile_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type create_wireless_device_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_wireless_gateway_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type create_wireless_gateway_task_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_wireless_gateway_task_definition_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_destination_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_device_profile_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_fuota_task_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_multicast_group_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_network_analyzer_configuration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_queued_messages_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_service_profile_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_wireless_device_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_wireless_device_import_task_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_wireless_gateway_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_wireless_gateway_task_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_wireless_gateway_task_definition_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type deregister_wireless_device_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type disassociate_aws_account_from_partner_account_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type disassociate_multicast_group_from_fuota_task_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type disassociate_wireless_device_from_fuota_task_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type disassociate_wireless_device_from_multicast_group_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type disassociate_wireless_device_from_thing_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type disassociate_wireless_gateway_from_certificate_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type disassociate_wireless_gateway_from_thing_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_destination_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_device_profile_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_event_configuration_by_resource_types_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type get_fuota_task_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_log_levels_by_resource_types_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_metric_configuration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_metrics_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_multicast_group_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_multicast_group_session_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_network_analyzer_configuration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_partner_account_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_position_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_position_configuration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_position_estimate_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_resource_event_configuration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_resource_log_level_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_resource_position_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_service_endpoint_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type get_service_profile_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_wireless_device_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_wireless_device_import_task_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_wireless_device_statistics_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_wireless_gateway_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_wireless_gateway_certificate_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_wireless_gateway_firmware_information_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_wireless_gateway_statistics_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_wireless_gateway_task_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_wireless_gateway_task_definition_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_destinations_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_device_profiles_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_devices_for_wireless_device_import_task_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type list_event_configurations_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_fuota_tasks_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_multicast_groups_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_multicast_groups_by_fuota_task_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_network_analyzer_configurations_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_partner_accounts_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_position_configurations_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_queued_messages_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_service_profiles_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_tags_for_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type list_wireless_device_import_tasks_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type list_wireless_devices_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_wireless_gateway_task_definitions_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_wireless_gateways_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type put_position_configuration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type put_resource_log_level_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type reset_all_resource_log_levels_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type reset_resource_log_level_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type send_data_to_multicast_group_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type send_data_to_wireless_device_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type start_bulk_associate_wireless_device_with_multicast_group_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type start_bulk_disassociate_wireless_device_from_multicast_group_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type start_fuota_task_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type start_multicast_group_session_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type start_single_wireless_device_import_task_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type start_wireless_device_import_task_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type tag_resource_errors() ::
    too_many_tags_exception() | 
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type test_wireless_device_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_destination_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_event_configuration_by_resource_types_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type update_fuota_task_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_log_levels_by_resource_types_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_metric_configuration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_multicast_group_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_network_analyzer_configuration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_partner_account_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_position_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_resource_event_configuration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_resource_position_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_wireless_device_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_wireless_device_import_task_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_wireless_gateway_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Associates a partner account with your AWS account.
-spec associate_aws_account_with_partner_account(aws_client:aws_client(), associate_aws_account_with_partner_account_request()) ->
    {ok, associate_aws_account_with_partner_account_response(), tuple()} |
    {error, any()} |
    {error, associate_aws_account_with_partner_account_errors(), tuple()}.
associate_aws_account_with_partner_account(Client, Input) ->
    associate_aws_account_with_partner_account(Client, Input, []).

-spec associate_aws_account_with_partner_account(aws_client:aws_client(), associate_aws_account_with_partner_account_request(), proplists:proplist()) ->
    {ok, associate_aws_account_with_partner_account_response(), tuple()} |
    {error, any()} |
    {error, associate_aws_account_with_partner_account_errors(), tuple()}.
associate_aws_account_with_partner_account(Client, Input0, Options0) ->
    Method = post,
    Path = ["/partner-accounts"],
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

%% @doc Associate a multicast group with a FUOTA task.
-spec associate_multicast_group_with_fuota_task(aws_client:aws_client(), binary() | list(), associate_multicast_group_with_fuota_task_request()) ->
    {ok, associate_multicast_group_with_fuota_task_response(), tuple()} |
    {error, any()} |
    {error, associate_multicast_group_with_fuota_task_errors(), tuple()}.
associate_multicast_group_with_fuota_task(Client, Id, Input) ->
    associate_multicast_group_with_fuota_task(Client, Id, Input, []).

-spec associate_multicast_group_with_fuota_task(aws_client:aws_client(), binary() | list(), associate_multicast_group_with_fuota_task_request(), proplists:proplist()) ->
    {ok, associate_multicast_group_with_fuota_task_response(), tuple()} |
    {error, any()} |
    {error, associate_multicast_group_with_fuota_task_errors(), tuple()}.
associate_multicast_group_with_fuota_task(Client, Id, Input0, Options0) ->
    Method = put,
    Path = ["/fuota-tasks/", aws_util:encode_uri(Id), "/multicast-group"],
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

%% @doc Associate a wireless device with a FUOTA task.
-spec associate_wireless_device_with_fuota_task(aws_client:aws_client(), binary() | list(), associate_wireless_device_with_fuota_task_request()) ->
    {ok, associate_wireless_device_with_fuota_task_response(), tuple()} |
    {error, any()} |
    {error, associate_wireless_device_with_fuota_task_errors(), tuple()}.
associate_wireless_device_with_fuota_task(Client, Id, Input) ->
    associate_wireless_device_with_fuota_task(Client, Id, Input, []).

-spec associate_wireless_device_with_fuota_task(aws_client:aws_client(), binary() | list(), associate_wireless_device_with_fuota_task_request(), proplists:proplist()) ->
    {ok, associate_wireless_device_with_fuota_task_response(), tuple()} |
    {error, any()} |
    {error, associate_wireless_device_with_fuota_task_errors(), tuple()}.
associate_wireless_device_with_fuota_task(Client, Id, Input0, Options0) ->
    Method = put,
    Path = ["/fuota-tasks/", aws_util:encode_uri(Id), "/wireless-device"],
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

%% @doc Associates a wireless device with a multicast group.
-spec associate_wireless_device_with_multicast_group(aws_client:aws_client(), binary() | list(), associate_wireless_device_with_multicast_group_request()) ->
    {ok, associate_wireless_device_with_multicast_group_response(), tuple()} |
    {error, any()} |
    {error, associate_wireless_device_with_multicast_group_errors(), tuple()}.
associate_wireless_device_with_multicast_group(Client, Id, Input) ->
    associate_wireless_device_with_multicast_group(Client, Id, Input, []).

-spec associate_wireless_device_with_multicast_group(aws_client:aws_client(), binary() | list(), associate_wireless_device_with_multicast_group_request(), proplists:proplist()) ->
    {ok, associate_wireless_device_with_multicast_group_response(), tuple()} |
    {error, any()} |
    {error, associate_wireless_device_with_multicast_group_errors(), tuple()}.
associate_wireless_device_with_multicast_group(Client, Id, Input0, Options0) ->
    Method = put,
    Path = ["/multicast-groups/", aws_util:encode_uri(Id), "/wireless-device"],
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

%% @doc Associates a wireless device with a thing.
-spec associate_wireless_device_with_thing(aws_client:aws_client(), binary() | list(), associate_wireless_device_with_thing_request()) ->
    {ok, associate_wireless_device_with_thing_response(), tuple()} |
    {error, any()} |
    {error, associate_wireless_device_with_thing_errors(), tuple()}.
associate_wireless_device_with_thing(Client, Id, Input) ->
    associate_wireless_device_with_thing(Client, Id, Input, []).

-spec associate_wireless_device_with_thing(aws_client:aws_client(), binary() | list(), associate_wireless_device_with_thing_request(), proplists:proplist()) ->
    {ok, associate_wireless_device_with_thing_response(), tuple()} |
    {error, any()} |
    {error, associate_wireless_device_with_thing_errors(), tuple()}.
associate_wireless_device_with_thing(Client, Id, Input0, Options0) ->
    Method = put,
    Path = ["/wireless-devices/", aws_util:encode_uri(Id), "/thing"],
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

%% @doc Associates a wireless gateway with a certificate.
-spec associate_wireless_gateway_with_certificate(aws_client:aws_client(), binary() | list(), associate_wireless_gateway_with_certificate_request()) ->
    {ok, associate_wireless_gateway_with_certificate_response(), tuple()} |
    {error, any()} |
    {error, associate_wireless_gateway_with_certificate_errors(), tuple()}.
associate_wireless_gateway_with_certificate(Client, Id, Input) ->
    associate_wireless_gateway_with_certificate(Client, Id, Input, []).

-spec associate_wireless_gateway_with_certificate(aws_client:aws_client(), binary() | list(), associate_wireless_gateway_with_certificate_request(), proplists:proplist()) ->
    {ok, associate_wireless_gateway_with_certificate_response(), tuple()} |
    {error, any()} |
    {error, associate_wireless_gateway_with_certificate_errors(), tuple()}.
associate_wireless_gateway_with_certificate(Client, Id, Input0, Options0) ->
    Method = put,
    Path = ["/wireless-gateways/", aws_util:encode_uri(Id), "/certificate"],
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

%% @doc Associates a wireless gateway with a thing.
-spec associate_wireless_gateway_with_thing(aws_client:aws_client(), binary() | list(), associate_wireless_gateway_with_thing_request()) ->
    {ok, associate_wireless_gateway_with_thing_response(), tuple()} |
    {error, any()} |
    {error, associate_wireless_gateway_with_thing_errors(), tuple()}.
associate_wireless_gateway_with_thing(Client, Id, Input) ->
    associate_wireless_gateway_with_thing(Client, Id, Input, []).

-spec associate_wireless_gateway_with_thing(aws_client:aws_client(), binary() | list(), associate_wireless_gateway_with_thing_request(), proplists:proplist()) ->
    {ok, associate_wireless_gateway_with_thing_response(), tuple()} |
    {error, any()} |
    {error, associate_wireless_gateway_with_thing_errors(), tuple()}.
associate_wireless_gateway_with_thing(Client, Id, Input0, Options0) ->
    Method = put,
    Path = ["/wireless-gateways/", aws_util:encode_uri(Id), "/thing"],
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

%% @doc Cancels an existing multicast group session.
-spec cancel_multicast_group_session(aws_client:aws_client(), binary() | list(), cancel_multicast_group_session_request()) ->
    {ok, cancel_multicast_group_session_response(), tuple()} |
    {error, any()} |
    {error, cancel_multicast_group_session_errors(), tuple()}.
cancel_multicast_group_session(Client, Id, Input) ->
    cancel_multicast_group_session(Client, Id, Input, []).

-spec cancel_multicast_group_session(aws_client:aws_client(), binary() | list(), cancel_multicast_group_session_request(), proplists:proplist()) ->
    {ok, cancel_multicast_group_session_response(), tuple()} |
    {error, any()} |
    {error, cancel_multicast_group_session_errors(), tuple()}.
cancel_multicast_group_session(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/multicast-groups/", aws_util:encode_uri(Id), "/session"],
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

%% @doc Creates a new destination that maps a device message to an AWS IoT
%% rule.
-spec create_destination(aws_client:aws_client(), create_destination_request()) ->
    {ok, create_destination_response(), tuple()} |
    {error, any()} |
    {error, create_destination_errors(), tuple()}.
create_destination(Client, Input) ->
    create_destination(Client, Input, []).

-spec create_destination(aws_client:aws_client(), create_destination_request(), proplists:proplist()) ->
    {ok, create_destination_response(), tuple()} |
    {error, any()} |
    {error, create_destination_errors(), tuple()}.
create_destination(Client, Input0, Options0) ->
    Method = post,
    Path = ["/destinations"],
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

%% @doc Creates a new device profile.
-spec create_device_profile(aws_client:aws_client(), create_device_profile_request()) ->
    {ok, create_device_profile_response(), tuple()} |
    {error, any()} |
    {error, create_device_profile_errors(), tuple()}.
create_device_profile(Client, Input) ->
    create_device_profile(Client, Input, []).

-spec create_device_profile(aws_client:aws_client(), create_device_profile_request(), proplists:proplist()) ->
    {ok, create_device_profile_response(), tuple()} |
    {error, any()} |
    {error, create_device_profile_errors(), tuple()}.
create_device_profile(Client, Input0, Options0) ->
    Method = post,
    Path = ["/device-profiles"],
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

%% @doc Creates a FUOTA task.
-spec create_fuota_task(aws_client:aws_client(), create_fuota_task_request()) ->
    {ok, create_fuota_task_response(), tuple()} |
    {error, any()} |
    {error, create_fuota_task_errors(), tuple()}.
create_fuota_task(Client, Input) ->
    create_fuota_task(Client, Input, []).

-spec create_fuota_task(aws_client:aws_client(), create_fuota_task_request(), proplists:proplist()) ->
    {ok, create_fuota_task_response(), tuple()} |
    {error, any()} |
    {error, create_fuota_task_errors(), tuple()}.
create_fuota_task(Client, Input0, Options0) ->
    Method = post,
    Path = ["/fuota-tasks"],
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

%% @doc Creates a multicast group.
-spec create_multicast_group(aws_client:aws_client(), create_multicast_group_request()) ->
    {ok, create_multicast_group_response(), tuple()} |
    {error, any()} |
    {error, create_multicast_group_errors(), tuple()}.
create_multicast_group(Client, Input) ->
    create_multicast_group(Client, Input, []).

-spec create_multicast_group(aws_client:aws_client(), create_multicast_group_request(), proplists:proplist()) ->
    {ok, create_multicast_group_response(), tuple()} |
    {error, any()} |
    {error, create_multicast_group_errors(), tuple()}.
create_multicast_group(Client, Input0, Options0) ->
    Method = post,
    Path = ["/multicast-groups"],
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

%% @doc Creates a new network analyzer configuration.
-spec create_network_analyzer_configuration(aws_client:aws_client(), create_network_analyzer_configuration_request()) ->
    {ok, create_network_analyzer_configuration_response(), tuple()} |
    {error, any()} |
    {error, create_network_analyzer_configuration_errors(), tuple()}.
create_network_analyzer_configuration(Client, Input) ->
    create_network_analyzer_configuration(Client, Input, []).

-spec create_network_analyzer_configuration(aws_client:aws_client(), create_network_analyzer_configuration_request(), proplists:proplist()) ->
    {ok, create_network_analyzer_configuration_response(), tuple()} |
    {error, any()} |
    {error, create_network_analyzer_configuration_errors(), tuple()}.
create_network_analyzer_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/network-analyzer-configurations"],
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

%% @doc Creates a new service profile.
-spec create_service_profile(aws_client:aws_client(), create_service_profile_request()) ->
    {ok, create_service_profile_response(), tuple()} |
    {error, any()} |
    {error, create_service_profile_errors(), tuple()}.
create_service_profile(Client, Input) ->
    create_service_profile(Client, Input, []).

-spec create_service_profile(aws_client:aws_client(), create_service_profile_request(), proplists:proplist()) ->
    {ok, create_service_profile_response(), tuple()} |
    {error, any()} |
    {error, create_service_profile_errors(), tuple()}.
create_service_profile(Client, Input0, Options0) ->
    Method = post,
    Path = ["/service-profiles"],
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

%% @doc Provisions a wireless device.
-spec create_wireless_device(aws_client:aws_client(), create_wireless_device_request()) ->
    {ok, create_wireless_device_response(), tuple()} |
    {error, any()} |
    {error, create_wireless_device_errors(), tuple()}.
create_wireless_device(Client, Input) ->
    create_wireless_device(Client, Input, []).

-spec create_wireless_device(aws_client:aws_client(), create_wireless_device_request(), proplists:proplist()) ->
    {ok, create_wireless_device_response(), tuple()} |
    {error, any()} |
    {error, create_wireless_device_errors(), tuple()}.
create_wireless_device(Client, Input0, Options0) ->
    Method = post,
    Path = ["/wireless-devices"],
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

%% @doc Provisions a wireless gateway.
%%
%% When provisioning a wireless gateway, you might run into duplication
%% errors for
%% the following reasons.
%%
%% If you specify a `GatewayEui' value that already exists.
%%
%% If you used a `ClientRequestToken' with the same parameters
%% within the last 10 minutes.
%%
%% To avoid this error, make sure that you use unique identifiers and
%% parameters for
%% each request within the specified time period.
-spec create_wireless_gateway(aws_client:aws_client(), create_wireless_gateway_request()) ->
    {ok, create_wireless_gateway_response(), tuple()} |
    {error, any()} |
    {error, create_wireless_gateway_errors(), tuple()}.
create_wireless_gateway(Client, Input) ->
    create_wireless_gateway(Client, Input, []).

-spec create_wireless_gateway(aws_client:aws_client(), create_wireless_gateway_request(), proplists:proplist()) ->
    {ok, create_wireless_gateway_response(), tuple()} |
    {error, any()} |
    {error, create_wireless_gateway_errors(), tuple()}.
create_wireless_gateway(Client, Input0, Options0) ->
    Method = post,
    Path = ["/wireless-gateways"],
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

%% @doc Creates a task for a wireless gateway.
-spec create_wireless_gateway_task(aws_client:aws_client(), binary() | list(), create_wireless_gateway_task_request()) ->
    {ok, create_wireless_gateway_task_response(), tuple()} |
    {error, any()} |
    {error, create_wireless_gateway_task_errors(), tuple()}.
create_wireless_gateway_task(Client, Id, Input) ->
    create_wireless_gateway_task(Client, Id, Input, []).

-spec create_wireless_gateway_task(aws_client:aws_client(), binary() | list(), create_wireless_gateway_task_request(), proplists:proplist()) ->
    {ok, create_wireless_gateway_task_response(), tuple()} |
    {error, any()} |
    {error, create_wireless_gateway_task_errors(), tuple()}.
create_wireless_gateway_task(Client, Id, Input0, Options0) ->
    Method = post,
    Path = ["/wireless-gateways/", aws_util:encode_uri(Id), "/tasks"],
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

%% @doc Creates a gateway task definition.
-spec create_wireless_gateway_task_definition(aws_client:aws_client(), create_wireless_gateway_task_definition_request()) ->
    {ok, create_wireless_gateway_task_definition_response(), tuple()} |
    {error, any()} |
    {error, create_wireless_gateway_task_definition_errors(), tuple()}.
create_wireless_gateway_task_definition(Client, Input) ->
    create_wireless_gateway_task_definition(Client, Input, []).

-spec create_wireless_gateway_task_definition(aws_client:aws_client(), create_wireless_gateway_task_definition_request(), proplists:proplist()) ->
    {ok, create_wireless_gateway_task_definition_response(), tuple()} |
    {error, any()} |
    {error, create_wireless_gateway_task_definition_errors(), tuple()}.
create_wireless_gateway_task_definition(Client, Input0, Options0) ->
    Method = post,
    Path = ["/wireless-gateway-task-definitions"],
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

%% @doc Deletes a destination.
-spec delete_destination(aws_client:aws_client(), binary() | list(), delete_destination_request()) ->
    {ok, delete_destination_response(), tuple()} |
    {error, any()} |
    {error, delete_destination_errors(), tuple()}.
delete_destination(Client, Name, Input) ->
    delete_destination(Client, Name, Input, []).

-spec delete_destination(aws_client:aws_client(), binary() | list(), delete_destination_request(), proplists:proplist()) ->
    {ok, delete_destination_response(), tuple()} |
    {error, any()} |
    {error, delete_destination_errors(), tuple()}.
delete_destination(Client, Name, Input0, Options0) ->
    Method = delete,
    Path = ["/destinations/", aws_util:encode_uri(Name), ""],
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

%% @doc Deletes a device profile.
-spec delete_device_profile(aws_client:aws_client(), binary() | list(), delete_device_profile_request()) ->
    {ok, delete_device_profile_response(), tuple()} |
    {error, any()} |
    {error, delete_device_profile_errors(), tuple()}.
delete_device_profile(Client, Id, Input) ->
    delete_device_profile(Client, Id, Input, []).

-spec delete_device_profile(aws_client:aws_client(), binary() | list(), delete_device_profile_request(), proplists:proplist()) ->
    {ok, delete_device_profile_response(), tuple()} |
    {error, any()} |
    {error, delete_device_profile_errors(), tuple()}.
delete_device_profile(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/device-profiles/", aws_util:encode_uri(Id), ""],
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

%% @doc Deletes a FUOTA task.
-spec delete_fuota_task(aws_client:aws_client(), binary() | list(), delete_fuota_task_request()) ->
    {ok, delete_fuota_task_response(), tuple()} |
    {error, any()} |
    {error, delete_fuota_task_errors(), tuple()}.
delete_fuota_task(Client, Id, Input) ->
    delete_fuota_task(Client, Id, Input, []).

-spec delete_fuota_task(aws_client:aws_client(), binary() | list(), delete_fuota_task_request(), proplists:proplist()) ->
    {ok, delete_fuota_task_response(), tuple()} |
    {error, any()} |
    {error, delete_fuota_task_errors(), tuple()}.
delete_fuota_task(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/fuota-tasks/", aws_util:encode_uri(Id), ""],
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

%% @doc Deletes a multicast group if it is not in use by a FUOTA task.
-spec delete_multicast_group(aws_client:aws_client(), binary() | list(), delete_multicast_group_request()) ->
    {ok, delete_multicast_group_response(), tuple()} |
    {error, any()} |
    {error, delete_multicast_group_errors(), tuple()}.
delete_multicast_group(Client, Id, Input) ->
    delete_multicast_group(Client, Id, Input, []).

-spec delete_multicast_group(aws_client:aws_client(), binary() | list(), delete_multicast_group_request(), proplists:proplist()) ->
    {ok, delete_multicast_group_response(), tuple()} |
    {error, any()} |
    {error, delete_multicast_group_errors(), tuple()}.
delete_multicast_group(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/multicast-groups/", aws_util:encode_uri(Id), ""],
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

%% @doc Deletes a network analyzer configuration.
-spec delete_network_analyzer_configuration(aws_client:aws_client(), binary() | list(), delete_network_analyzer_configuration_request()) ->
    {ok, delete_network_analyzer_configuration_response(), tuple()} |
    {error, any()} |
    {error, delete_network_analyzer_configuration_errors(), tuple()}.
delete_network_analyzer_configuration(Client, ConfigurationName, Input) ->
    delete_network_analyzer_configuration(Client, ConfigurationName, Input, []).

-spec delete_network_analyzer_configuration(aws_client:aws_client(), binary() | list(), delete_network_analyzer_configuration_request(), proplists:proplist()) ->
    {ok, delete_network_analyzer_configuration_response(), tuple()} |
    {error, any()} |
    {error, delete_network_analyzer_configuration_errors(), tuple()}.
delete_network_analyzer_configuration(Client, ConfigurationName, Input0, Options0) ->
    Method = delete,
    Path = ["/network-analyzer-configurations/", aws_util:encode_uri(ConfigurationName), ""],
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

%% @doc Remove queued messages from the downlink queue.
-spec delete_queued_messages(aws_client:aws_client(), binary() | list(), delete_queued_messages_request()) ->
    {ok, delete_queued_messages_response(), tuple()} |
    {error, any()} |
    {error, delete_queued_messages_errors(), tuple()}.
delete_queued_messages(Client, Id, Input) ->
    delete_queued_messages(Client, Id, Input, []).

-spec delete_queued_messages(aws_client:aws_client(), binary() | list(), delete_queued_messages_request(), proplists:proplist()) ->
    {ok, delete_queued_messages_response(), tuple()} |
    {error, any()} |
    {error, delete_queued_messages_errors(), tuple()}.
delete_queued_messages(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/wireless-devices/", aws_util:encode_uri(Id), "/data"],
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
                     {<<"messageId">>, <<"MessageId">>},
                     {<<"WirelessDeviceType">>, <<"WirelessDeviceType">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a service profile.
-spec delete_service_profile(aws_client:aws_client(), binary() | list(), delete_service_profile_request()) ->
    {ok, delete_service_profile_response(), tuple()} |
    {error, any()} |
    {error, delete_service_profile_errors(), tuple()}.
delete_service_profile(Client, Id, Input) ->
    delete_service_profile(Client, Id, Input, []).

-spec delete_service_profile(aws_client:aws_client(), binary() | list(), delete_service_profile_request(), proplists:proplist()) ->
    {ok, delete_service_profile_response(), tuple()} |
    {error, any()} |
    {error, delete_service_profile_errors(), tuple()}.
delete_service_profile(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/service-profiles/", aws_util:encode_uri(Id), ""],
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

%% @doc Deletes a wireless device.
-spec delete_wireless_device(aws_client:aws_client(), binary() | list(), delete_wireless_device_request()) ->
    {ok, delete_wireless_device_response(), tuple()} |
    {error, any()} |
    {error, delete_wireless_device_errors(), tuple()}.
delete_wireless_device(Client, Id, Input) ->
    delete_wireless_device(Client, Id, Input, []).

-spec delete_wireless_device(aws_client:aws_client(), binary() | list(), delete_wireless_device_request(), proplists:proplist()) ->
    {ok, delete_wireless_device_response(), tuple()} |
    {error, any()} |
    {error, delete_wireless_device_errors(), tuple()}.
delete_wireless_device(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/wireless-devices/", aws_util:encode_uri(Id), ""],
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

%% @doc Delete an import task.
-spec delete_wireless_device_import_task(aws_client:aws_client(), binary() | list(), delete_wireless_device_import_task_request()) ->
    {ok, delete_wireless_device_import_task_response(), tuple()} |
    {error, any()} |
    {error, delete_wireless_device_import_task_errors(), tuple()}.
delete_wireless_device_import_task(Client, Id, Input) ->
    delete_wireless_device_import_task(Client, Id, Input, []).

-spec delete_wireless_device_import_task(aws_client:aws_client(), binary() | list(), delete_wireless_device_import_task_request(), proplists:proplist()) ->
    {ok, delete_wireless_device_import_task_response(), tuple()} |
    {error, any()} |
    {error, delete_wireless_device_import_task_errors(), tuple()}.
delete_wireless_device_import_task(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/wireless_device_import_task/", aws_util:encode_uri(Id), ""],
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

%% @doc Deletes a wireless gateway.
%%
%% When deleting a wireless gateway, you might run into duplication errors
%% for the
%% following reasons.
%%
%% If you specify a `GatewayEui' value that already exists.
%%
%% If you used a `ClientRequestToken' with the same parameters
%% within the last 10 minutes.
%%
%% To avoid this error, make sure that you use unique identifiers and
%% parameters for
%% each request within the specified time period.
-spec delete_wireless_gateway(aws_client:aws_client(), binary() | list(), delete_wireless_gateway_request()) ->
    {ok, delete_wireless_gateway_response(), tuple()} |
    {error, any()} |
    {error, delete_wireless_gateway_errors(), tuple()}.
delete_wireless_gateway(Client, Id, Input) ->
    delete_wireless_gateway(Client, Id, Input, []).

-spec delete_wireless_gateway(aws_client:aws_client(), binary() | list(), delete_wireless_gateway_request(), proplists:proplist()) ->
    {ok, delete_wireless_gateway_response(), tuple()} |
    {error, any()} |
    {error, delete_wireless_gateway_errors(), tuple()}.
delete_wireless_gateway(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/wireless-gateways/", aws_util:encode_uri(Id), ""],
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

%% @doc Deletes a wireless gateway task.
-spec delete_wireless_gateway_task(aws_client:aws_client(), binary() | list(), delete_wireless_gateway_task_request()) ->
    {ok, delete_wireless_gateway_task_response(), tuple()} |
    {error, any()} |
    {error, delete_wireless_gateway_task_errors(), tuple()}.
delete_wireless_gateway_task(Client, Id, Input) ->
    delete_wireless_gateway_task(Client, Id, Input, []).

-spec delete_wireless_gateway_task(aws_client:aws_client(), binary() | list(), delete_wireless_gateway_task_request(), proplists:proplist()) ->
    {ok, delete_wireless_gateway_task_response(), tuple()} |
    {error, any()} |
    {error, delete_wireless_gateway_task_errors(), tuple()}.
delete_wireless_gateway_task(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/wireless-gateways/", aws_util:encode_uri(Id), "/tasks"],
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

%% @doc Deletes a wireless gateway task definition.
%%
%% Deleting this task definition does not
%% affect tasks that are currently in progress.
-spec delete_wireless_gateway_task_definition(aws_client:aws_client(), binary() | list(), delete_wireless_gateway_task_definition_request()) ->
    {ok, delete_wireless_gateway_task_definition_response(), tuple()} |
    {error, any()} |
    {error, delete_wireless_gateway_task_definition_errors(), tuple()}.
delete_wireless_gateway_task_definition(Client, Id, Input) ->
    delete_wireless_gateway_task_definition(Client, Id, Input, []).

-spec delete_wireless_gateway_task_definition(aws_client:aws_client(), binary() | list(), delete_wireless_gateway_task_definition_request(), proplists:proplist()) ->
    {ok, delete_wireless_gateway_task_definition_response(), tuple()} |
    {error, any()} |
    {error, delete_wireless_gateway_task_definition_errors(), tuple()}.
delete_wireless_gateway_task_definition(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/wireless-gateway-task-definitions/", aws_util:encode_uri(Id), ""],
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

%% @doc Deregister a wireless device from AWS IoT Wireless.
-spec deregister_wireless_device(aws_client:aws_client(), binary() | list(), deregister_wireless_device_request()) ->
    {ok, deregister_wireless_device_response(), tuple()} |
    {error, any()} |
    {error, deregister_wireless_device_errors(), tuple()}.
deregister_wireless_device(Client, Identifier, Input) ->
    deregister_wireless_device(Client, Identifier, Input, []).

-spec deregister_wireless_device(aws_client:aws_client(), binary() | list(), deregister_wireless_device_request(), proplists:proplist()) ->
    {ok, deregister_wireless_device_response(), tuple()} |
    {error, any()} |
    {error, deregister_wireless_device_errors(), tuple()}.
deregister_wireless_device(Client, Identifier, Input0, Options0) ->
    Method = patch,
    Path = ["/wireless-devices/", aws_util:encode_uri(Identifier), "/deregister"],
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
                     {<<"WirelessDeviceType">>, <<"WirelessDeviceType">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Disassociates your AWS account from a partner account.
%%
%% If
%% `PartnerAccountId' and `PartnerType' are `null',
%% disassociates your AWS account from all partner accounts.
-spec disassociate_aws_account_from_partner_account(aws_client:aws_client(), binary() | list(), disassociate_aws_account_from_partner_account_request()) ->
    {ok, disassociate_aws_account_from_partner_account_response(), tuple()} |
    {error, any()} |
    {error, disassociate_aws_account_from_partner_account_errors(), tuple()}.
disassociate_aws_account_from_partner_account(Client, PartnerAccountId, Input) ->
    disassociate_aws_account_from_partner_account(Client, PartnerAccountId, Input, []).

-spec disassociate_aws_account_from_partner_account(aws_client:aws_client(), binary() | list(), disassociate_aws_account_from_partner_account_request(), proplists:proplist()) ->
    {ok, disassociate_aws_account_from_partner_account_response(), tuple()} |
    {error, any()} |
    {error, disassociate_aws_account_from_partner_account_errors(), tuple()}.
disassociate_aws_account_from_partner_account(Client, PartnerAccountId, Input0, Options0) ->
    Method = delete,
    Path = ["/partner-accounts/", aws_util:encode_uri(PartnerAccountId), ""],
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
                     {<<"partnerType">>, <<"PartnerType">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Disassociates a multicast group from a FUOTA task.
-spec disassociate_multicast_group_from_fuota_task(aws_client:aws_client(), binary() | list(), binary() | list(), disassociate_multicast_group_from_fuota_task_request()) ->
    {ok, disassociate_multicast_group_from_fuota_task_response(), tuple()} |
    {error, any()} |
    {error, disassociate_multicast_group_from_fuota_task_errors(), tuple()}.
disassociate_multicast_group_from_fuota_task(Client, Id, MulticastGroupId, Input) ->
    disassociate_multicast_group_from_fuota_task(Client, Id, MulticastGroupId, Input, []).

-spec disassociate_multicast_group_from_fuota_task(aws_client:aws_client(), binary() | list(), binary() | list(), disassociate_multicast_group_from_fuota_task_request(), proplists:proplist()) ->
    {ok, disassociate_multicast_group_from_fuota_task_response(), tuple()} |
    {error, any()} |
    {error, disassociate_multicast_group_from_fuota_task_errors(), tuple()}.
disassociate_multicast_group_from_fuota_task(Client, Id, MulticastGroupId, Input0, Options0) ->
    Method = delete,
    Path = ["/fuota-tasks/", aws_util:encode_uri(Id), "/multicast-groups/", aws_util:encode_uri(MulticastGroupId), ""],
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

%% @doc Disassociates a wireless device from a FUOTA task.
-spec disassociate_wireless_device_from_fuota_task(aws_client:aws_client(), binary() | list(), binary() | list(), disassociate_wireless_device_from_fuota_task_request()) ->
    {ok, disassociate_wireless_device_from_fuota_task_response(), tuple()} |
    {error, any()} |
    {error, disassociate_wireless_device_from_fuota_task_errors(), tuple()}.
disassociate_wireless_device_from_fuota_task(Client, Id, WirelessDeviceId, Input) ->
    disassociate_wireless_device_from_fuota_task(Client, Id, WirelessDeviceId, Input, []).

-spec disassociate_wireless_device_from_fuota_task(aws_client:aws_client(), binary() | list(), binary() | list(), disassociate_wireless_device_from_fuota_task_request(), proplists:proplist()) ->
    {ok, disassociate_wireless_device_from_fuota_task_response(), tuple()} |
    {error, any()} |
    {error, disassociate_wireless_device_from_fuota_task_errors(), tuple()}.
disassociate_wireless_device_from_fuota_task(Client, Id, WirelessDeviceId, Input0, Options0) ->
    Method = delete,
    Path = ["/fuota-tasks/", aws_util:encode_uri(Id), "/wireless-devices/", aws_util:encode_uri(WirelessDeviceId), ""],
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

%% @doc Disassociates a wireless device from a multicast group.
-spec disassociate_wireless_device_from_multicast_group(aws_client:aws_client(), binary() | list(), binary() | list(), disassociate_wireless_device_from_multicast_group_request()) ->
    {ok, disassociate_wireless_device_from_multicast_group_response(), tuple()} |
    {error, any()} |
    {error, disassociate_wireless_device_from_multicast_group_errors(), tuple()}.
disassociate_wireless_device_from_multicast_group(Client, Id, WirelessDeviceId, Input) ->
    disassociate_wireless_device_from_multicast_group(Client, Id, WirelessDeviceId, Input, []).

-spec disassociate_wireless_device_from_multicast_group(aws_client:aws_client(), binary() | list(), binary() | list(), disassociate_wireless_device_from_multicast_group_request(), proplists:proplist()) ->
    {ok, disassociate_wireless_device_from_multicast_group_response(), tuple()} |
    {error, any()} |
    {error, disassociate_wireless_device_from_multicast_group_errors(), tuple()}.
disassociate_wireless_device_from_multicast_group(Client, Id, WirelessDeviceId, Input0, Options0) ->
    Method = delete,
    Path = ["/multicast-groups/", aws_util:encode_uri(Id), "/wireless-devices/", aws_util:encode_uri(WirelessDeviceId), ""],
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

%% @doc Disassociates a wireless device from its currently associated thing.
-spec disassociate_wireless_device_from_thing(aws_client:aws_client(), binary() | list(), disassociate_wireless_device_from_thing_request()) ->
    {ok, disassociate_wireless_device_from_thing_response(), tuple()} |
    {error, any()} |
    {error, disassociate_wireless_device_from_thing_errors(), tuple()}.
disassociate_wireless_device_from_thing(Client, Id, Input) ->
    disassociate_wireless_device_from_thing(Client, Id, Input, []).

-spec disassociate_wireless_device_from_thing(aws_client:aws_client(), binary() | list(), disassociate_wireless_device_from_thing_request(), proplists:proplist()) ->
    {ok, disassociate_wireless_device_from_thing_response(), tuple()} |
    {error, any()} |
    {error, disassociate_wireless_device_from_thing_errors(), tuple()}.
disassociate_wireless_device_from_thing(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/wireless-devices/", aws_util:encode_uri(Id), "/thing"],
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

%% @doc Disassociates a wireless gateway from its currently associated
%% certificate.
-spec disassociate_wireless_gateway_from_certificate(aws_client:aws_client(), binary() | list(), disassociate_wireless_gateway_from_certificate_request()) ->
    {ok, disassociate_wireless_gateway_from_certificate_response(), tuple()} |
    {error, any()} |
    {error, disassociate_wireless_gateway_from_certificate_errors(), tuple()}.
disassociate_wireless_gateway_from_certificate(Client, Id, Input) ->
    disassociate_wireless_gateway_from_certificate(Client, Id, Input, []).

-spec disassociate_wireless_gateway_from_certificate(aws_client:aws_client(), binary() | list(), disassociate_wireless_gateway_from_certificate_request(), proplists:proplist()) ->
    {ok, disassociate_wireless_gateway_from_certificate_response(), tuple()} |
    {error, any()} |
    {error, disassociate_wireless_gateway_from_certificate_errors(), tuple()}.
disassociate_wireless_gateway_from_certificate(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/wireless-gateways/", aws_util:encode_uri(Id), "/certificate"],
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

%% @doc Disassociates a wireless gateway from its currently associated thing.
-spec disassociate_wireless_gateway_from_thing(aws_client:aws_client(), binary() | list(), disassociate_wireless_gateway_from_thing_request()) ->
    {ok, disassociate_wireless_gateway_from_thing_response(), tuple()} |
    {error, any()} |
    {error, disassociate_wireless_gateway_from_thing_errors(), tuple()}.
disassociate_wireless_gateway_from_thing(Client, Id, Input) ->
    disassociate_wireless_gateway_from_thing(Client, Id, Input, []).

-spec disassociate_wireless_gateway_from_thing(aws_client:aws_client(), binary() | list(), disassociate_wireless_gateway_from_thing_request(), proplists:proplist()) ->
    {ok, disassociate_wireless_gateway_from_thing_response(), tuple()} |
    {error, any()} |
    {error, disassociate_wireless_gateway_from_thing_errors(), tuple()}.
disassociate_wireless_gateway_from_thing(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/wireless-gateways/", aws_util:encode_uri(Id), "/thing"],
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

%% @doc Gets information about a destination.
-spec get_destination(aws_client:aws_client(), binary() | list()) ->
    {ok, get_destination_response(), tuple()} |
    {error, any()} |
    {error, get_destination_errors(), tuple()}.
get_destination(Client, Name)
  when is_map(Client) ->
    get_destination(Client, Name, #{}, #{}).

-spec get_destination(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_destination_response(), tuple()} |
    {error, any()} |
    {error, get_destination_errors(), tuple()}.
get_destination(Client, Name, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_destination(Client, Name, QueryMap, HeadersMap, []).

-spec get_destination(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_destination_response(), tuple()} |
    {error, any()} |
    {error, get_destination_errors(), tuple()}.
get_destination(Client, Name, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/destinations/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a device profile.
-spec get_device_profile(aws_client:aws_client(), binary() | list()) ->
    {ok, get_device_profile_response(), tuple()} |
    {error, any()} |
    {error, get_device_profile_errors(), tuple()}.
get_device_profile(Client, Id)
  when is_map(Client) ->
    get_device_profile(Client, Id, #{}, #{}).

-spec get_device_profile(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_device_profile_response(), tuple()} |
    {error, any()} |
    {error, get_device_profile_errors(), tuple()}.
get_device_profile(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_device_profile(Client, Id, QueryMap, HeadersMap, []).

-spec get_device_profile(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_device_profile_response(), tuple()} |
    {error, any()} |
    {error, get_device_profile_errors(), tuple()}.
get_device_profile(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/device-profiles/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get the event configuration based on resource types.
-spec get_event_configuration_by_resource_types(aws_client:aws_client()) ->
    {ok, get_event_configuration_by_resource_types_response(), tuple()} |
    {error, any()} |
    {error, get_event_configuration_by_resource_types_errors(), tuple()}.
get_event_configuration_by_resource_types(Client)
  when is_map(Client) ->
    get_event_configuration_by_resource_types(Client, #{}, #{}).

-spec get_event_configuration_by_resource_types(aws_client:aws_client(), map(), map()) ->
    {ok, get_event_configuration_by_resource_types_response(), tuple()} |
    {error, any()} |
    {error, get_event_configuration_by_resource_types_errors(), tuple()}.
get_event_configuration_by_resource_types(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_event_configuration_by_resource_types(Client, QueryMap, HeadersMap, []).

-spec get_event_configuration_by_resource_types(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, get_event_configuration_by_resource_types_response(), tuple()} |
    {error, any()} |
    {error, get_event_configuration_by_resource_types_errors(), tuple()}.
get_event_configuration_by_resource_types(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/event-configurations-resource-types"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a FUOTA task.
-spec get_fuota_task(aws_client:aws_client(), binary() | list()) ->
    {ok, get_fuota_task_response(), tuple()} |
    {error, any()} |
    {error, get_fuota_task_errors(), tuple()}.
get_fuota_task(Client, Id)
  when is_map(Client) ->
    get_fuota_task(Client, Id, #{}, #{}).

-spec get_fuota_task(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_fuota_task_response(), tuple()} |
    {error, any()} |
    {error, get_fuota_task_errors(), tuple()}.
get_fuota_task(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_fuota_task(Client, Id, QueryMap, HeadersMap, []).

-spec get_fuota_task(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_fuota_task_response(), tuple()} |
    {error, any()} |
    {error, get_fuota_task_errors(), tuple()}.
get_fuota_task(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/fuota-tasks/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns current default log levels or log levels by resource types.
%%
%% Based on the
%% resource type, log levels can be returned for wireless device, wireless
%% gateway, or
%% FUOTA task log options.
-spec get_log_levels_by_resource_types(aws_client:aws_client()) ->
    {ok, get_log_levels_by_resource_types_response(), tuple()} |
    {error, any()} |
    {error, get_log_levels_by_resource_types_errors(), tuple()}.
get_log_levels_by_resource_types(Client)
  when is_map(Client) ->
    get_log_levels_by_resource_types(Client, #{}, #{}).

-spec get_log_levels_by_resource_types(aws_client:aws_client(), map(), map()) ->
    {ok, get_log_levels_by_resource_types_response(), tuple()} |
    {error, any()} |
    {error, get_log_levels_by_resource_types_errors(), tuple()}.
get_log_levels_by_resource_types(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_log_levels_by_resource_types(Client, QueryMap, HeadersMap, []).

-spec get_log_levels_by_resource_types(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, get_log_levels_by_resource_types_response(), tuple()} |
    {error, any()} |
    {error, get_log_levels_by_resource_types_errors(), tuple()}.
get_log_levels_by_resource_types(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/log-levels"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get the metric configuration status for this AWS account.
-spec get_metric_configuration(aws_client:aws_client()) ->
    {ok, get_metric_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_metric_configuration_errors(), tuple()}.
get_metric_configuration(Client)
  when is_map(Client) ->
    get_metric_configuration(Client, #{}, #{}).

-spec get_metric_configuration(aws_client:aws_client(), map(), map()) ->
    {ok, get_metric_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_metric_configuration_errors(), tuple()}.
get_metric_configuration(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_metric_configuration(Client, QueryMap, HeadersMap, []).

-spec get_metric_configuration(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, get_metric_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_metric_configuration_errors(), tuple()}.
get_metric_configuration(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/metric-configuration"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get the summary metrics for this AWS account.
-spec get_metrics(aws_client:aws_client(), get_metrics_request()) ->
    {ok, get_metrics_response(), tuple()} |
    {error, any()} |
    {error, get_metrics_errors(), tuple()}.
get_metrics(Client, Input) ->
    get_metrics(Client, Input, []).

-spec get_metrics(aws_client:aws_client(), get_metrics_request(), proplists:proplist()) ->
    {ok, get_metrics_response(), tuple()} |
    {error, any()} |
    {error, get_metrics_errors(), tuple()}.
get_metrics(Client, Input0, Options0) ->
    Method = post,
    Path = ["/metrics"],
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

%% @doc Gets information about a multicast group.
-spec get_multicast_group(aws_client:aws_client(), binary() | list()) ->
    {ok, get_multicast_group_response(), tuple()} |
    {error, any()} |
    {error, get_multicast_group_errors(), tuple()}.
get_multicast_group(Client, Id)
  when is_map(Client) ->
    get_multicast_group(Client, Id, #{}, #{}).

-spec get_multicast_group(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_multicast_group_response(), tuple()} |
    {error, any()} |
    {error, get_multicast_group_errors(), tuple()}.
get_multicast_group(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_multicast_group(Client, Id, QueryMap, HeadersMap, []).

-spec get_multicast_group(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_multicast_group_response(), tuple()} |
    {error, any()} |
    {error, get_multicast_group_errors(), tuple()}.
get_multicast_group(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/multicast-groups/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a multicast group session.
-spec get_multicast_group_session(aws_client:aws_client(), binary() | list()) ->
    {ok, get_multicast_group_session_response(), tuple()} |
    {error, any()} |
    {error, get_multicast_group_session_errors(), tuple()}.
get_multicast_group_session(Client, Id)
  when is_map(Client) ->
    get_multicast_group_session(Client, Id, #{}, #{}).

-spec get_multicast_group_session(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_multicast_group_session_response(), tuple()} |
    {error, any()} |
    {error, get_multicast_group_session_errors(), tuple()}.
get_multicast_group_session(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_multicast_group_session(Client, Id, QueryMap, HeadersMap, []).

-spec get_multicast_group_session(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_multicast_group_session_response(), tuple()} |
    {error, any()} |
    {error, get_multicast_group_session_errors(), tuple()}.
get_multicast_group_session(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/multicast-groups/", aws_util:encode_uri(Id), "/session"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get network analyzer configuration.
-spec get_network_analyzer_configuration(aws_client:aws_client(), binary() | list()) ->
    {ok, get_network_analyzer_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_network_analyzer_configuration_errors(), tuple()}.
get_network_analyzer_configuration(Client, ConfigurationName)
  when is_map(Client) ->
    get_network_analyzer_configuration(Client, ConfigurationName, #{}, #{}).

-spec get_network_analyzer_configuration(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_network_analyzer_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_network_analyzer_configuration_errors(), tuple()}.
get_network_analyzer_configuration(Client, ConfigurationName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_network_analyzer_configuration(Client, ConfigurationName, QueryMap, HeadersMap, []).

-spec get_network_analyzer_configuration(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_network_analyzer_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_network_analyzer_configuration_errors(), tuple()}.
get_network_analyzer_configuration(Client, ConfigurationName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/network-analyzer-configurations/", aws_util:encode_uri(ConfigurationName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a partner account.
%%
%% If `PartnerAccountId' and
%% `PartnerType' are `null', returns all partner accounts.
-spec get_partner_account(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_partner_account_response(), tuple()} |
    {error, any()} |
    {error, get_partner_account_errors(), tuple()}.
get_partner_account(Client, PartnerAccountId, PartnerType)
  when is_map(Client) ->
    get_partner_account(Client, PartnerAccountId, PartnerType, #{}, #{}).

-spec get_partner_account(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_partner_account_response(), tuple()} |
    {error, any()} |
    {error, get_partner_account_errors(), tuple()}.
get_partner_account(Client, PartnerAccountId, PartnerType, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_partner_account(Client, PartnerAccountId, PartnerType, QueryMap, HeadersMap, []).

-spec get_partner_account(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_partner_account_response(), tuple()} |
    {error, any()} |
    {error, get_partner_account_errors(), tuple()}.
get_partner_account(Client, PartnerAccountId, PartnerType, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/partner-accounts/", aws_util:encode_uri(PartnerAccountId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"partnerType">>, PartnerType}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get the position information for a given resource.
%%
%% This action is no longer supported. Calls to retrieve the position
%% information
%% should use the GetResourcePosition:
%% https://docs.aws.amazon.com/iot-wireless/2020-11-22/apireference/API_GetResourcePosition.html
%% API operation instead.
-spec get_position(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_position_response(), tuple()} |
    {error, any()} |
    {error, get_position_errors(), tuple()}.
get_position(Client, ResourceIdentifier, ResourceType)
  when is_map(Client) ->
    get_position(Client, ResourceIdentifier, ResourceType, #{}, #{}).

-spec get_position(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_position_response(), tuple()} |
    {error, any()} |
    {error, get_position_errors(), tuple()}.
get_position(Client, ResourceIdentifier, ResourceType, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_position(Client, ResourceIdentifier, ResourceType, QueryMap, HeadersMap, []).

-spec get_position(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_position_response(), tuple()} |
    {error, any()} |
    {error, get_position_errors(), tuple()}.
get_position(Client, ResourceIdentifier, ResourceType, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/positions/", aws_util:encode_uri(ResourceIdentifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"resourceType">>, ResourceType}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get position configuration for a given resource.
%%
%% This action is no longer supported. Calls to retrieve the position
%% configuration
%% should use the GetResourcePosition:
%% https://docs.aws.amazon.com/iot-wireless/2020-11-22/apireference/API_GetResourcePosition.html
%% API operation instead.
-spec get_position_configuration(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_position_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_position_configuration_errors(), tuple()}.
get_position_configuration(Client, ResourceIdentifier, ResourceType)
  when is_map(Client) ->
    get_position_configuration(Client, ResourceIdentifier, ResourceType, #{}, #{}).

-spec get_position_configuration(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_position_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_position_configuration_errors(), tuple()}.
get_position_configuration(Client, ResourceIdentifier, ResourceType, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_position_configuration(Client, ResourceIdentifier, ResourceType, QueryMap, HeadersMap, []).

-spec get_position_configuration(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_position_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_position_configuration_errors(), tuple()}.
get_position_configuration(Client, ResourceIdentifier, ResourceType, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/position-configurations/", aws_util:encode_uri(ResourceIdentifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"resourceType">>, ResourceType}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get estimated position information as a payload in GeoJSON format.
%%
%% The payload
%% measurement data is resolved using solvers that are provided by
%% third-party
%% vendors.
-spec get_position_estimate(aws_client:aws_client(), get_position_estimate_request()) ->
    {ok, get_position_estimate_response(), tuple()} |
    {error, any()} |
    {error, get_position_estimate_errors(), tuple()}.
get_position_estimate(Client, Input) ->
    get_position_estimate(Client, Input, []).

-spec get_position_estimate(aws_client:aws_client(), get_position_estimate_request(), proplists:proplist()) ->
    {ok, get_position_estimate_response(), tuple()} |
    {error, any()} |
    {error, get_position_estimate_errors(), tuple()}.
get_position_estimate(Client, Input0, Options0) ->
    Method = post,
    Path = ["/position-estimate"],
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

%% @doc Get the event configuration for a particular resource identifier.
-spec get_resource_event_configuration(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_resource_event_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_resource_event_configuration_errors(), tuple()}.
get_resource_event_configuration(Client, Identifier, IdentifierType)
  when is_map(Client) ->
    get_resource_event_configuration(Client, Identifier, IdentifierType, #{}, #{}).

-spec get_resource_event_configuration(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_resource_event_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_resource_event_configuration_errors(), tuple()}.
get_resource_event_configuration(Client, Identifier, IdentifierType, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_resource_event_configuration(Client, Identifier, IdentifierType, QueryMap, HeadersMap, []).

-spec get_resource_event_configuration(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_resource_event_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_resource_event_configuration_errors(), tuple()}.
get_resource_event_configuration(Client, Identifier, IdentifierType, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/event-configurations/", aws_util:encode_uri(Identifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"identifierType">>, IdentifierType},
        {<<"partnerType">>, maps:get(<<"partnerType">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Fetches the log-level override, if any, for a given resource ID and
%% resource
%% type..
-spec get_resource_log_level(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_resource_log_level_response(), tuple()} |
    {error, any()} |
    {error, get_resource_log_level_errors(), tuple()}.
get_resource_log_level(Client, ResourceIdentifier, ResourceType)
  when is_map(Client) ->
    get_resource_log_level(Client, ResourceIdentifier, ResourceType, #{}, #{}).

-spec get_resource_log_level(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_resource_log_level_response(), tuple()} |
    {error, any()} |
    {error, get_resource_log_level_errors(), tuple()}.
get_resource_log_level(Client, ResourceIdentifier, ResourceType, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_resource_log_level(Client, ResourceIdentifier, ResourceType, QueryMap, HeadersMap, []).

-spec get_resource_log_level(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_resource_log_level_response(), tuple()} |
    {error, any()} |
    {error, get_resource_log_level_errors(), tuple()}.
get_resource_log_level(Client, ResourceIdentifier, ResourceType, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/log-levels/", aws_util:encode_uri(ResourceIdentifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"resourceType">>, ResourceType}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get the position information for a given wireless device or a
%% wireless gateway
%% resource.
%%
%% The position information uses the World Geodetic System
%% (WGS84): https://gisgeography.com/wgs84-world-geodetic-system/.
-spec get_resource_position(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_resource_position_response(), tuple()} |
    {error, any()} |
    {error, get_resource_position_errors(), tuple()}.
get_resource_position(Client, ResourceIdentifier, ResourceType)
  when is_map(Client) ->
    get_resource_position(Client, ResourceIdentifier, ResourceType, #{}, #{}).

-spec get_resource_position(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_resource_position_response(), tuple()} |
    {error, any()} |
    {error, get_resource_position_errors(), tuple()}.
get_resource_position(Client, ResourceIdentifier, ResourceType, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_resource_position(Client, ResourceIdentifier, ResourceType, QueryMap, HeadersMap, []).

-spec get_resource_position(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_resource_position_response(), tuple()} |
    {error, any()} |
    {error, get_resource_position_errors(), tuple()}.
get_resource_position(Client, ResourceIdentifier, ResourceType, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/resource-positions/", aws_util:encode_uri(ResourceIdentifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"resourceType">>, ResourceType}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the account-specific endpoint for Configuration and Update
%% Server (CUPS) protocol
%% or LoRaWAN Network Server (LNS) connections.
-spec get_service_endpoint(aws_client:aws_client()) ->
    {ok, get_service_endpoint_response(), tuple()} |
    {error, any()} |
    {error, get_service_endpoint_errors(), tuple()}.
get_service_endpoint(Client)
  when is_map(Client) ->
    get_service_endpoint(Client, #{}, #{}).

-spec get_service_endpoint(aws_client:aws_client(), map(), map()) ->
    {ok, get_service_endpoint_response(), tuple()} |
    {error, any()} |
    {error, get_service_endpoint_errors(), tuple()}.
get_service_endpoint(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_service_endpoint(Client, QueryMap, HeadersMap, []).

-spec get_service_endpoint(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, get_service_endpoint_response(), tuple()} |
    {error, any()} |
    {error, get_service_endpoint_errors(), tuple()}.
get_service_endpoint(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/service-endpoint"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"serviceType">>, maps:get(<<"serviceType">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a service profile.
-spec get_service_profile(aws_client:aws_client(), binary() | list()) ->
    {ok, get_service_profile_response(), tuple()} |
    {error, any()} |
    {error, get_service_profile_errors(), tuple()}.
get_service_profile(Client, Id)
  when is_map(Client) ->
    get_service_profile(Client, Id, #{}, #{}).

-spec get_service_profile(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_service_profile_response(), tuple()} |
    {error, any()} |
    {error, get_service_profile_errors(), tuple()}.
get_service_profile(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_service_profile(Client, Id, QueryMap, HeadersMap, []).

-spec get_service_profile(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_service_profile_response(), tuple()} |
    {error, any()} |
    {error, get_service_profile_errors(), tuple()}.
get_service_profile(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/service-profiles/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a wireless device.
-spec get_wireless_device(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_wireless_device_response(), tuple()} |
    {error, any()} |
    {error, get_wireless_device_errors(), tuple()}.
get_wireless_device(Client, Identifier, IdentifierType)
  when is_map(Client) ->
    get_wireless_device(Client, Identifier, IdentifierType, #{}, #{}).

-spec get_wireless_device(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_wireless_device_response(), tuple()} |
    {error, any()} |
    {error, get_wireless_device_errors(), tuple()}.
get_wireless_device(Client, Identifier, IdentifierType, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_wireless_device(Client, Identifier, IdentifierType, QueryMap, HeadersMap, []).

-spec get_wireless_device(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_wireless_device_response(), tuple()} |
    {error, any()} |
    {error, get_wireless_device_errors(), tuple()}.
get_wireless_device(Client, Identifier, IdentifierType, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/wireless-devices/", aws_util:encode_uri(Identifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"identifierType">>, IdentifierType}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get information about an import task and count of device onboarding
%% summary
%% information for the import task.
-spec get_wireless_device_import_task(aws_client:aws_client(), binary() | list()) ->
    {ok, get_wireless_device_import_task_response(), tuple()} |
    {error, any()} |
    {error, get_wireless_device_import_task_errors(), tuple()}.
get_wireless_device_import_task(Client, Id)
  when is_map(Client) ->
    get_wireless_device_import_task(Client, Id, #{}, #{}).

-spec get_wireless_device_import_task(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_wireless_device_import_task_response(), tuple()} |
    {error, any()} |
    {error, get_wireless_device_import_task_errors(), tuple()}.
get_wireless_device_import_task(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_wireless_device_import_task(Client, Id, QueryMap, HeadersMap, []).

-spec get_wireless_device_import_task(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_wireless_device_import_task_response(), tuple()} |
    {error, any()} |
    {error, get_wireless_device_import_task_errors(), tuple()}.
get_wireless_device_import_task(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/wireless_device_import_task/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets operating information about a wireless device.
-spec get_wireless_device_statistics(aws_client:aws_client(), binary() | list()) ->
    {ok, get_wireless_device_statistics_response(), tuple()} |
    {error, any()} |
    {error, get_wireless_device_statistics_errors(), tuple()}.
get_wireless_device_statistics(Client, WirelessDeviceId)
  when is_map(Client) ->
    get_wireless_device_statistics(Client, WirelessDeviceId, #{}, #{}).

-spec get_wireless_device_statistics(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_wireless_device_statistics_response(), tuple()} |
    {error, any()} |
    {error, get_wireless_device_statistics_errors(), tuple()}.
get_wireless_device_statistics(Client, WirelessDeviceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_wireless_device_statistics(Client, WirelessDeviceId, QueryMap, HeadersMap, []).

-spec get_wireless_device_statistics(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_wireless_device_statistics_response(), tuple()} |
    {error, any()} |
    {error, get_wireless_device_statistics_errors(), tuple()}.
get_wireless_device_statistics(Client, WirelessDeviceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/wireless-devices/", aws_util:encode_uri(WirelessDeviceId), "/statistics"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a wireless gateway.
-spec get_wireless_gateway(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_wireless_gateway_response(), tuple()} |
    {error, any()} |
    {error, get_wireless_gateway_errors(), tuple()}.
get_wireless_gateway(Client, Identifier, IdentifierType)
  when is_map(Client) ->
    get_wireless_gateway(Client, Identifier, IdentifierType, #{}, #{}).

-spec get_wireless_gateway(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_wireless_gateway_response(), tuple()} |
    {error, any()} |
    {error, get_wireless_gateway_errors(), tuple()}.
get_wireless_gateway(Client, Identifier, IdentifierType, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_wireless_gateway(Client, Identifier, IdentifierType, QueryMap, HeadersMap, []).

-spec get_wireless_gateway(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_wireless_gateway_response(), tuple()} |
    {error, any()} |
    {error, get_wireless_gateway_errors(), tuple()}.
get_wireless_gateway(Client, Identifier, IdentifierType, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/wireless-gateways/", aws_util:encode_uri(Identifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"identifierType">>, IdentifierType}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the ID of the certificate that is currently associated with a
%% wireless
%% gateway.
-spec get_wireless_gateway_certificate(aws_client:aws_client(), binary() | list()) ->
    {ok, get_wireless_gateway_certificate_response(), tuple()} |
    {error, any()} |
    {error, get_wireless_gateway_certificate_errors(), tuple()}.
get_wireless_gateway_certificate(Client, Id)
  when is_map(Client) ->
    get_wireless_gateway_certificate(Client, Id, #{}, #{}).

-spec get_wireless_gateway_certificate(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_wireless_gateway_certificate_response(), tuple()} |
    {error, any()} |
    {error, get_wireless_gateway_certificate_errors(), tuple()}.
get_wireless_gateway_certificate(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_wireless_gateway_certificate(Client, Id, QueryMap, HeadersMap, []).

-spec get_wireless_gateway_certificate(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_wireless_gateway_certificate_response(), tuple()} |
    {error, any()} |
    {error, get_wireless_gateway_certificate_errors(), tuple()}.
get_wireless_gateway_certificate(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/wireless-gateways/", aws_util:encode_uri(Id), "/certificate"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the firmware version and other information about a wireless
%% gateway.
-spec get_wireless_gateway_firmware_information(aws_client:aws_client(), binary() | list()) ->
    {ok, get_wireless_gateway_firmware_information_response(), tuple()} |
    {error, any()} |
    {error, get_wireless_gateway_firmware_information_errors(), tuple()}.
get_wireless_gateway_firmware_information(Client, Id)
  when is_map(Client) ->
    get_wireless_gateway_firmware_information(Client, Id, #{}, #{}).

-spec get_wireless_gateway_firmware_information(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_wireless_gateway_firmware_information_response(), tuple()} |
    {error, any()} |
    {error, get_wireless_gateway_firmware_information_errors(), tuple()}.
get_wireless_gateway_firmware_information(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_wireless_gateway_firmware_information(Client, Id, QueryMap, HeadersMap, []).

-spec get_wireless_gateway_firmware_information(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_wireless_gateway_firmware_information_response(), tuple()} |
    {error, any()} |
    {error, get_wireless_gateway_firmware_information_errors(), tuple()}.
get_wireless_gateway_firmware_information(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/wireless-gateways/", aws_util:encode_uri(Id), "/firmware-information"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets operating information about a wireless gateway.
-spec get_wireless_gateway_statistics(aws_client:aws_client(), binary() | list()) ->
    {ok, get_wireless_gateway_statistics_response(), tuple()} |
    {error, any()} |
    {error, get_wireless_gateway_statistics_errors(), tuple()}.
get_wireless_gateway_statistics(Client, WirelessGatewayId)
  when is_map(Client) ->
    get_wireless_gateway_statistics(Client, WirelessGatewayId, #{}, #{}).

-spec get_wireless_gateway_statistics(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_wireless_gateway_statistics_response(), tuple()} |
    {error, any()} |
    {error, get_wireless_gateway_statistics_errors(), tuple()}.
get_wireless_gateway_statistics(Client, WirelessGatewayId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_wireless_gateway_statistics(Client, WirelessGatewayId, QueryMap, HeadersMap, []).

-spec get_wireless_gateway_statistics(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_wireless_gateway_statistics_response(), tuple()} |
    {error, any()} |
    {error, get_wireless_gateway_statistics_errors(), tuple()}.
get_wireless_gateway_statistics(Client, WirelessGatewayId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/wireless-gateways/", aws_util:encode_uri(WirelessGatewayId), "/statistics"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a wireless gateway task.
-spec get_wireless_gateway_task(aws_client:aws_client(), binary() | list()) ->
    {ok, get_wireless_gateway_task_response(), tuple()} |
    {error, any()} |
    {error, get_wireless_gateway_task_errors(), tuple()}.
get_wireless_gateway_task(Client, Id)
  when is_map(Client) ->
    get_wireless_gateway_task(Client, Id, #{}, #{}).

-spec get_wireless_gateway_task(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_wireless_gateway_task_response(), tuple()} |
    {error, any()} |
    {error, get_wireless_gateway_task_errors(), tuple()}.
get_wireless_gateway_task(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_wireless_gateway_task(Client, Id, QueryMap, HeadersMap, []).

-spec get_wireless_gateway_task(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_wireless_gateway_task_response(), tuple()} |
    {error, any()} |
    {error, get_wireless_gateway_task_errors(), tuple()}.
get_wireless_gateway_task(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/wireless-gateways/", aws_util:encode_uri(Id), "/tasks"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a wireless gateway task definition.
-spec get_wireless_gateway_task_definition(aws_client:aws_client(), binary() | list()) ->
    {ok, get_wireless_gateway_task_definition_response(), tuple()} |
    {error, any()} |
    {error, get_wireless_gateway_task_definition_errors(), tuple()}.
get_wireless_gateway_task_definition(Client, Id)
  when is_map(Client) ->
    get_wireless_gateway_task_definition(Client, Id, #{}, #{}).

-spec get_wireless_gateway_task_definition(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_wireless_gateway_task_definition_response(), tuple()} |
    {error, any()} |
    {error, get_wireless_gateway_task_definition_errors(), tuple()}.
get_wireless_gateway_task_definition(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_wireless_gateway_task_definition(Client, Id, QueryMap, HeadersMap, []).

-spec get_wireless_gateway_task_definition(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_wireless_gateway_task_definition_response(), tuple()} |
    {error, any()} |
    {error, get_wireless_gateway_task_definition_errors(), tuple()}.
get_wireless_gateway_task_definition(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/wireless-gateway-task-definitions/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the destinations registered to your AWS account.
-spec list_destinations(aws_client:aws_client()) ->
    {ok, list_destinations_response(), tuple()} |
    {error, any()} |
    {error, list_destinations_errors(), tuple()}.
list_destinations(Client)
  when is_map(Client) ->
    list_destinations(Client, #{}, #{}).

-spec list_destinations(aws_client:aws_client(), map(), map()) ->
    {ok, list_destinations_response(), tuple()} |
    {error, any()} |
    {error, list_destinations_errors(), tuple()}.
list_destinations(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_destinations(Client, QueryMap, HeadersMap, []).

-spec list_destinations(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_destinations_response(), tuple()} |
    {error, any()} |
    {error, list_destinations_errors(), tuple()}.
list_destinations(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/destinations"],
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

%% @doc Lists the device profiles registered to your AWS account.
-spec list_device_profiles(aws_client:aws_client()) ->
    {ok, list_device_profiles_response(), tuple()} |
    {error, any()} |
    {error, list_device_profiles_errors(), tuple()}.
list_device_profiles(Client)
  when is_map(Client) ->
    list_device_profiles(Client, #{}, #{}).

-spec list_device_profiles(aws_client:aws_client(), map(), map()) ->
    {ok, list_device_profiles_response(), tuple()} |
    {error, any()} |
    {error, list_device_profiles_errors(), tuple()}.
list_device_profiles(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_device_profiles(Client, QueryMap, HeadersMap, []).

-spec list_device_profiles(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_device_profiles_response(), tuple()} |
    {error, any()} |
    {error, list_device_profiles_errors(), tuple()}.
list_device_profiles(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/device-profiles"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"deviceProfileType">>, maps:get(<<"deviceProfileType">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List the Sidewalk devices in an import task and their onboarding
%% status.
-spec list_devices_for_wireless_device_import_task(aws_client:aws_client(), binary() | list()) ->
    {ok, list_devices_for_wireless_device_import_task_response(), tuple()} |
    {error, any()} |
    {error, list_devices_for_wireless_device_import_task_errors(), tuple()}.
list_devices_for_wireless_device_import_task(Client, Id)
  when is_map(Client) ->
    list_devices_for_wireless_device_import_task(Client, Id, #{}, #{}).

-spec list_devices_for_wireless_device_import_task(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_devices_for_wireless_device_import_task_response(), tuple()} |
    {error, any()} |
    {error, list_devices_for_wireless_device_import_task_errors(), tuple()}.
list_devices_for_wireless_device_import_task(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_devices_for_wireless_device_import_task(Client, Id, QueryMap, HeadersMap, []).

-spec list_devices_for_wireless_device_import_task(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_devices_for_wireless_device_import_task_response(), tuple()} |
    {error, any()} |
    {error, list_devices_for_wireless_device_import_task_errors(), tuple()}.
list_devices_for_wireless_device_import_task(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/wireless_device_import_task"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"id">>, Id},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"status">>, maps:get(<<"status">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List event configurations where at least one event topic has been
%% enabled.
-spec list_event_configurations(aws_client:aws_client(), binary() | list()) ->
    {ok, list_event_configurations_response(), tuple()} |
    {error, any()} |
    {error, list_event_configurations_errors(), tuple()}.
list_event_configurations(Client, ResourceType)
  when is_map(Client) ->
    list_event_configurations(Client, ResourceType, #{}, #{}).

-spec list_event_configurations(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_event_configurations_response(), tuple()} |
    {error, any()} |
    {error, list_event_configurations_errors(), tuple()}.
list_event_configurations(Client, ResourceType, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_event_configurations(Client, ResourceType, QueryMap, HeadersMap, []).

-spec list_event_configurations(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_event_configurations_response(), tuple()} |
    {error, any()} |
    {error, list_event_configurations_errors(), tuple()}.
list_event_configurations(Client, ResourceType, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/event-configurations"],
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
        {<<"resourceType">>, ResourceType}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the FUOTA tasks registered to your AWS account.
-spec list_fuota_tasks(aws_client:aws_client()) ->
    {ok, list_fuota_tasks_response(), tuple()} |
    {error, any()} |
    {error, list_fuota_tasks_errors(), tuple()}.
list_fuota_tasks(Client)
  when is_map(Client) ->
    list_fuota_tasks(Client, #{}, #{}).

-spec list_fuota_tasks(aws_client:aws_client(), map(), map()) ->
    {ok, list_fuota_tasks_response(), tuple()} |
    {error, any()} |
    {error, list_fuota_tasks_errors(), tuple()}.
list_fuota_tasks(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_fuota_tasks(Client, QueryMap, HeadersMap, []).

-spec list_fuota_tasks(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_fuota_tasks_response(), tuple()} |
    {error, any()} |
    {error, list_fuota_tasks_errors(), tuple()}.
list_fuota_tasks(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/fuota-tasks"],
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

%% @doc Lists the multicast groups registered to your AWS account.
-spec list_multicast_groups(aws_client:aws_client()) ->
    {ok, list_multicast_groups_response(), tuple()} |
    {error, any()} |
    {error, list_multicast_groups_errors(), tuple()}.
list_multicast_groups(Client)
  when is_map(Client) ->
    list_multicast_groups(Client, #{}, #{}).

-spec list_multicast_groups(aws_client:aws_client(), map(), map()) ->
    {ok, list_multicast_groups_response(), tuple()} |
    {error, any()} |
    {error, list_multicast_groups_errors(), tuple()}.
list_multicast_groups(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_multicast_groups(Client, QueryMap, HeadersMap, []).

-spec list_multicast_groups(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_multicast_groups_response(), tuple()} |
    {error, any()} |
    {error, list_multicast_groups_errors(), tuple()}.
list_multicast_groups(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/multicast-groups"],
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

%% @doc List all multicast groups associated with a FUOTA task.
-spec list_multicast_groups_by_fuota_task(aws_client:aws_client(), binary() | list()) ->
    {ok, list_multicast_groups_by_fuota_task_response(), tuple()} |
    {error, any()} |
    {error, list_multicast_groups_by_fuota_task_errors(), tuple()}.
list_multicast_groups_by_fuota_task(Client, Id)
  when is_map(Client) ->
    list_multicast_groups_by_fuota_task(Client, Id, #{}, #{}).

-spec list_multicast_groups_by_fuota_task(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_multicast_groups_by_fuota_task_response(), tuple()} |
    {error, any()} |
    {error, list_multicast_groups_by_fuota_task_errors(), tuple()}.
list_multicast_groups_by_fuota_task(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_multicast_groups_by_fuota_task(Client, Id, QueryMap, HeadersMap, []).

-spec list_multicast_groups_by_fuota_task(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_multicast_groups_by_fuota_task_response(), tuple()} |
    {error, any()} |
    {error, list_multicast_groups_by_fuota_task_errors(), tuple()}.
list_multicast_groups_by_fuota_task(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/fuota-tasks/", aws_util:encode_uri(Id), "/multicast-groups"],
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

%% @doc Lists the network analyzer configurations.
-spec list_network_analyzer_configurations(aws_client:aws_client()) ->
    {ok, list_network_analyzer_configurations_response(), tuple()} |
    {error, any()} |
    {error, list_network_analyzer_configurations_errors(), tuple()}.
list_network_analyzer_configurations(Client)
  when is_map(Client) ->
    list_network_analyzer_configurations(Client, #{}, #{}).

-spec list_network_analyzer_configurations(aws_client:aws_client(), map(), map()) ->
    {ok, list_network_analyzer_configurations_response(), tuple()} |
    {error, any()} |
    {error, list_network_analyzer_configurations_errors(), tuple()}.
list_network_analyzer_configurations(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_network_analyzer_configurations(Client, QueryMap, HeadersMap, []).

-spec list_network_analyzer_configurations(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_network_analyzer_configurations_response(), tuple()} |
    {error, any()} |
    {error, list_network_analyzer_configurations_errors(), tuple()}.
list_network_analyzer_configurations(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/network-analyzer-configurations"],
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

%% @doc Lists the partner accounts associated with your AWS account.
-spec list_partner_accounts(aws_client:aws_client()) ->
    {ok, list_partner_accounts_response(), tuple()} |
    {error, any()} |
    {error, list_partner_accounts_errors(), tuple()}.
list_partner_accounts(Client)
  when is_map(Client) ->
    list_partner_accounts(Client, #{}, #{}).

-spec list_partner_accounts(aws_client:aws_client(), map(), map()) ->
    {ok, list_partner_accounts_response(), tuple()} |
    {error, any()} |
    {error, list_partner_accounts_errors(), tuple()}.
list_partner_accounts(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_partner_accounts(Client, QueryMap, HeadersMap, []).

-spec list_partner_accounts(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_partner_accounts_response(), tuple()} |
    {error, any()} |
    {error, list_partner_accounts_errors(), tuple()}.
list_partner_accounts(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/partner-accounts"],
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

%% @doc List position configurations for a given resource, such as
%% positioning solvers.
%%
%% This action is no longer supported. Calls to retrieve position information
%% should
%% use the GetResourcePosition:
%% https://docs.aws.amazon.com/iot-wireless/2020-11-22/apireference/API_GetResourcePosition.html
%% API operation instead.
-spec list_position_configurations(aws_client:aws_client()) ->
    {ok, list_position_configurations_response(), tuple()} |
    {error, any()} |
    {error, list_position_configurations_errors(), tuple()}.
list_position_configurations(Client)
  when is_map(Client) ->
    list_position_configurations(Client, #{}, #{}).

-spec list_position_configurations(aws_client:aws_client(), map(), map()) ->
    {ok, list_position_configurations_response(), tuple()} |
    {error, any()} |
    {error, list_position_configurations_errors(), tuple()}.
list_position_configurations(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_position_configurations(Client, QueryMap, HeadersMap, []).

-spec list_position_configurations(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_position_configurations_response(), tuple()} |
    {error, any()} |
    {error, list_position_configurations_errors(), tuple()}.
list_position_configurations(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/position-configurations"],
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
        {<<"resourceType">>, maps:get(<<"resourceType">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List queued messages in the downlink queue.
-spec list_queued_messages(aws_client:aws_client(), binary() | list()) ->
    {ok, list_queued_messages_response(), tuple()} |
    {error, any()} |
    {error, list_queued_messages_errors(), tuple()}.
list_queued_messages(Client, Id)
  when is_map(Client) ->
    list_queued_messages(Client, Id, #{}, #{}).

-spec list_queued_messages(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_queued_messages_response(), tuple()} |
    {error, any()} |
    {error, list_queued_messages_errors(), tuple()}.
list_queued_messages(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_queued_messages(Client, Id, QueryMap, HeadersMap, []).

-spec list_queued_messages(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_queued_messages_response(), tuple()} |
    {error, any()} |
    {error, list_queued_messages_errors(), tuple()}.
list_queued_messages(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/wireless-devices/", aws_util:encode_uri(Id), "/data"],
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
        {<<"WirelessDeviceType">>, maps:get(<<"WirelessDeviceType">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the service profiles registered to your AWS account.
-spec list_service_profiles(aws_client:aws_client()) ->
    {ok, list_service_profiles_response(), tuple()} |
    {error, any()} |
    {error, list_service_profiles_errors(), tuple()}.
list_service_profiles(Client)
  when is_map(Client) ->
    list_service_profiles(Client, #{}, #{}).

-spec list_service_profiles(aws_client:aws_client(), map(), map()) ->
    {ok, list_service_profiles_response(), tuple()} |
    {error, any()} |
    {error, list_service_profiles_errors(), tuple()}.
list_service_profiles(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_service_profiles(Client, QueryMap, HeadersMap, []).

-spec list_service_profiles(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_service_profiles_response(), tuple()} |
    {error, any()} |
    {error, list_service_profiles_errors(), tuple()}.
list_service_profiles(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/service-profiles"],
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

%% @doc Lists the tags (metadata) you have assigned to the resource.
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
        {<<"resourceArn">>, ResourceArn}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List wireless devices that have been added to an import task.
-spec list_wireless_device_import_tasks(aws_client:aws_client()) ->
    {ok, list_wireless_device_import_tasks_response(), tuple()} |
    {error, any()} |
    {error, list_wireless_device_import_tasks_errors(), tuple()}.
list_wireless_device_import_tasks(Client)
  when is_map(Client) ->
    list_wireless_device_import_tasks(Client, #{}, #{}).

-spec list_wireless_device_import_tasks(aws_client:aws_client(), map(), map()) ->
    {ok, list_wireless_device_import_tasks_response(), tuple()} |
    {error, any()} |
    {error, list_wireless_device_import_tasks_errors(), tuple()}.
list_wireless_device_import_tasks(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_wireless_device_import_tasks(Client, QueryMap, HeadersMap, []).

-spec list_wireless_device_import_tasks(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_wireless_device_import_tasks_response(), tuple()} |
    {error, any()} |
    {error, list_wireless_device_import_tasks_errors(), tuple()}.
list_wireless_device_import_tasks(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/wireless_device_import_tasks"],
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

%% @doc Lists the wireless devices registered to your AWS account.
-spec list_wireless_devices(aws_client:aws_client()) ->
    {ok, list_wireless_devices_response(), tuple()} |
    {error, any()} |
    {error, list_wireless_devices_errors(), tuple()}.
list_wireless_devices(Client)
  when is_map(Client) ->
    list_wireless_devices(Client, #{}, #{}).

-spec list_wireless_devices(aws_client:aws_client(), map(), map()) ->
    {ok, list_wireless_devices_response(), tuple()} |
    {error, any()} |
    {error, list_wireless_devices_errors(), tuple()}.
list_wireless_devices(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_wireless_devices(Client, QueryMap, HeadersMap, []).

-spec list_wireless_devices(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_wireless_devices_response(), tuple()} |
    {error, any()} |
    {error, list_wireless_devices_errors(), tuple()}.
list_wireless_devices(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/wireless-devices"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"destinationName">>, maps:get(<<"destinationName">>, QueryMap, undefined)},
        {<<"deviceProfileId">>, maps:get(<<"deviceProfileId">>, QueryMap, undefined)},
        {<<"fuotaTaskId">>, maps:get(<<"fuotaTaskId">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"multicastGroupId">>, maps:get(<<"multicastGroupId">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"serviceProfileId">>, maps:get(<<"serviceProfileId">>, QueryMap, undefined)},
        {<<"wirelessDeviceType">>, maps:get(<<"wirelessDeviceType">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List the wireless gateway tasks definitions registered to your AWS
%% account.
-spec list_wireless_gateway_task_definitions(aws_client:aws_client()) ->
    {ok, list_wireless_gateway_task_definitions_response(), tuple()} |
    {error, any()} |
    {error, list_wireless_gateway_task_definitions_errors(), tuple()}.
list_wireless_gateway_task_definitions(Client)
  when is_map(Client) ->
    list_wireless_gateway_task_definitions(Client, #{}, #{}).

-spec list_wireless_gateway_task_definitions(aws_client:aws_client(), map(), map()) ->
    {ok, list_wireless_gateway_task_definitions_response(), tuple()} |
    {error, any()} |
    {error, list_wireless_gateway_task_definitions_errors(), tuple()}.
list_wireless_gateway_task_definitions(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_wireless_gateway_task_definitions(Client, QueryMap, HeadersMap, []).

-spec list_wireless_gateway_task_definitions(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_wireless_gateway_task_definitions_response(), tuple()} |
    {error, any()} |
    {error, list_wireless_gateway_task_definitions_errors(), tuple()}.
list_wireless_gateway_task_definitions(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/wireless-gateway-task-definitions"],
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
        {<<"taskDefinitionType">>, maps:get(<<"taskDefinitionType">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the wireless gateways registered to your AWS account.
-spec list_wireless_gateways(aws_client:aws_client()) ->
    {ok, list_wireless_gateways_response(), tuple()} |
    {error, any()} |
    {error, list_wireless_gateways_errors(), tuple()}.
list_wireless_gateways(Client)
  when is_map(Client) ->
    list_wireless_gateways(Client, #{}, #{}).

-spec list_wireless_gateways(aws_client:aws_client(), map(), map()) ->
    {ok, list_wireless_gateways_response(), tuple()} |
    {error, any()} |
    {error, list_wireless_gateways_errors(), tuple()}.
list_wireless_gateways(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_wireless_gateways(Client, QueryMap, HeadersMap, []).

-spec list_wireless_gateways(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_wireless_gateways_response(), tuple()} |
    {error, any()} |
    {error, list_wireless_gateways_errors(), tuple()}.
list_wireless_gateways(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/wireless-gateways"],
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

%% @doc Put position configuration for a given resource.
%%
%% This action is no longer supported. Calls to update the position
%% configuration
%% should use the UpdateResourcePosition:
%% https://docs.aws.amazon.com/iot-wireless/2020-11-22/apireference/API_UpdateResourcePosition.html
%% API operation instead.
-spec put_position_configuration(aws_client:aws_client(), binary() | list(), put_position_configuration_request()) ->
    {ok, put_position_configuration_response(), tuple()} |
    {error, any()} |
    {error, put_position_configuration_errors(), tuple()}.
put_position_configuration(Client, ResourceIdentifier, Input) ->
    put_position_configuration(Client, ResourceIdentifier, Input, []).

-spec put_position_configuration(aws_client:aws_client(), binary() | list(), put_position_configuration_request(), proplists:proplist()) ->
    {ok, put_position_configuration_response(), tuple()} |
    {error, any()} |
    {error, put_position_configuration_errors(), tuple()}.
put_position_configuration(Client, ResourceIdentifier, Input0, Options0) ->
    Method = put,
    Path = ["/position-configurations/", aws_util:encode_uri(ResourceIdentifier), ""],
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
                     {<<"resourceType">>, <<"ResourceType">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Sets the log-level override for a resource ID and resource type.
%%
%% A limit of 200 log
%% level override can be set per account.
-spec put_resource_log_level(aws_client:aws_client(), binary() | list(), put_resource_log_level_request()) ->
    {ok, put_resource_log_level_response(), tuple()} |
    {error, any()} |
    {error, put_resource_log_level_errors(), tuple()}.
put_resource_log_level(Client, ResourceIdentifier, Input) ->
    put_resource_log_level(Client, ResourceIdentifier, Input, []).

-spec put_resource_log_level(aws_client:aws_client(), binary() | list(), put_resource_log_level_request(), proplists:proplist()) ->
    {ok, put_resource_log_level_response(), tuple()} |
    {error, any()} |
    {error, put_resource_log_level_errors(), tuple()}.
put_resource_log_level(Client, ResourceIdentifier, Input0, Options0) ->
    Method = put,
    Path = ["/log-levels/", aws_util:encode_uri(ResourceIdentifier), ""],
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
                     {<<"resourceType">>, <<"ResourceType">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Removes the log-level overrides for all resources; wireless devices,
%% wireless
%% gateways, and FUOTA tasks.
-spec reset_all_resource_log_levels(aws_client:aws_client(), reset_all_resource_log_levels_request()) ->
    {ok, reset_all_resource_log_levels_response(), tuple()} |
    {error, any()} |
    {error, reset_all_resource_log_levels_errors(), tuple()}.
reset_all_resource_log_levels(Client, Input) ->
    reset_all_resource_log_levels(Client, Input, []).

-spec reset_all_resource_log_levels(aws_client:aws_client(), reset_all_resource_log_levels_request(), proplists:proplist()) ->
    {ok, reset_all_resource_log_levels_response(), tuple()} |
    {error, any()} |
    {error, reset_all_resource_log_levels_errors(), tuple()}.
reset_all_resource_log_levels(Client, Input0, Options0) ->
    Method = delete,
    Path = ["/log-levels"],
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

%% @doc Removes the log-level override, if any, for a specific resource ID
%% and resource type.
%%
%% It can be used for a wireless device, a wireless gateway, or a FUOTA task.
-spec reset_resource_log_level(aws_client:aws_client(), binary() | list(), reset_resource_log_level_request()) ->
    {ok, reset_resource_log_level_response(), tuple()} |
    {error, any()} |
    {error, reset_resource_log_level_errors(), tuple()}.
reset_resource_log_level(Client, ResourceIdentifier, Input) ->
    reset_resource_log_level(Client, ResourceIdentifier, Input, []).

-spec reset_resource_log_level(aws_client:aws_client(), binary() | list(), reset_resource_log_level_request(), proplists:proplist()) ->
    {ok, reset_resource_log_level_response(), tuple()} |
    {error, any()} |
    {error, reset_resource_log_level_errors(), tuple()}.
reset_resource_log_level(Client, ResourceIdentifier, Input0, Options0) ->
    Method = delete,
    Path = ["/log-levels/", aws_util:encode_uri(ResourceIdentifier), ""],
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
                     {<<"resourceType">>, <<"ResourceType">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Sends the specified data to a multicast group.
-spec send_data_to_multicast_group(aws_client:aws_client(), binary() | list(), send_data_to_multicast_group_request()) ->
    {ok, send_data_to_multicast_group_response(), tuple()} |
    {error, any()} |
    {error, send_data_to_multicast_group_errors(), tuple()}.
send_data_to_multicast_group(Client, Id, Input) ->
    send_data_to_multicast_group(Client, Id, Input, []).

-spec send_data_to_multicast_group(aws_client:aws_client(), binary() | list(), send_data_to_multicast_group_request(), proplists:proplist()) ->
    {ok, send_data_to_multicast_group_response(), tuple()} |
    {error, any()} |
    {error, send_data_to_multicast_group_errors(), tuple()}.
send_data_to_multicast_group(Client, Id, Input0, Options0) ->
    Method = post,
    Path = ["/multicast-groups/", aws_util:encode_uri(Id), "/data"],
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

%% @doc Sends a decrypted application data frame to a device.
-spec send_data_to_wireless_device(aws_client:aws_client(), binary() | list(), send_data_to_wireless_device_request()) ->
    {ok, send_data_to_wireless_device_response(), tuple()} |
    {error, any()} |
    {error, send_data_to_wireless_device_errors(), tuple()}.
send_data_to_wireless_device(Client, Id, Input) ->
    send_data_to_wireless_device(Client, Id, Input, []).

-spec send_data_to_wireless_device(aws_client:aws_client(), binary() | list(), send_data_to_wireless_device_request(), proplists:proplist()) ->
    {ok, send_data_to_wireless_device_response(), tuple()} |
    {error, any()} |
    {error, send_data_to_wireless_device_errors(), tuple()}.
send_data_to_wireless_device(Client, Id, Input0, Options0) ->
    Method = post,
    Path = ["/wireless-devices/", aws_util:encode_uri(Id), "/data"],
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

%% @doc Starts a bulk association of all qualifying wireless devices with a
%% multicast
%% group.
-spec start_bulk_associate_wireless_device_with_multicast_group(aws_client:aws_client(), binary() | list(), start_bulk_associate_wireless_device_with_multicast_group_request()) ->
    {ok, start_bulk_associate_wireless_device_with_multicast_group_response(), tuple()} |
    {error, any()} |
    {error, start_bulk_associate_wireless_device_with_multicast_group_errors(), tuple()}.
start_bulk_associate_wireless_device_with_multicast_group(Client, Id, Input) ->
    start_bulk_associate_wireless_device_with_multicast_group(Client, Id, Input, []).

-spec start_bulk_associate_wireless_device_with_multicast_group(aws_client:aws_client(), binary() | list(), start_bulk_associate_wireless_device_with_multicast_group_request(), proplists:proplist()) ->
    {ok, start_bulk_associate_wireless_device_with_multicast_group_response(), tuple()} |
    {error, any()} |
    {error, start_bulk_associate_wireless_device_with_multicast_group_errors(), tuple()}.
start_bulk_associate_wireless_device_with_multicast_group(Client, Id, Input0, Options0) ->
    Method = patch,
    Path = ["/multicast-groups/", aws_util:encode_uri(Id), "/bulk"],
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

%% @doc Starts a bulk disassociatin of all qualifying wireless devices from a
%% multicast
%% group.
-spec start_bulk_disassociate_wireless_device_from_multicast_group(aws_client:aws_client(), binary() | list(), start_bulk_disassociate_wireless_device_from_multicast_group_request()) ->
    {ok, start_bulk_disassociate_wireless_device_from_multicast_group_response(), tuple()} |
    {error, any()} |
    {error, start_bulk_disassociate_wireless_device_from_multicast_group_errors(), tuple()}.
start_bulk_disassociate_wireless_device_from_multicast_group(Client, Id, Input) ->
    start_bulk_disassociate_wireless_device_from_multicast_group(Client, Id, Input, []).

-spec start_bulk_disassociate_wireless_device_from_multicast_group(aws_client:aws_client(), binary() | list(), start_bulk_disassociate_wireless_device_from_multicast_group_request(), proplists:proplist()) ->
    {ok, start_bulk_disassociate_wireless_device_from_multicast_group_response(), tuple()} |
    {error, any()} |
    {error, start_bulk_disassociate_wireless_device_from_multicast_group_errors(), tuple()}.
start_bulk_disassociate_wireless_device_from_multicast_group(Client, Id, Input0, Options0) ->
    Method = post,
    Path = ["/multicast-groups/", aws_util:encode_uri(Id), "/bulk"],
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

%% @doc Starts a FUOTA task.
-spec start_fuota_task(aws_client:aws_client(), binary() | list(), start_fuota_task_request()) ->
    {ok, start_fuota_task_response(), tuple()} |
    {error, any()} |
    {error, start_fuota_task_errors(), tuple()}.
start_fuota_task(Client, Id, Input) ->
    start_fuota_task(Client, Id, Input, []).

-spec start_fuota_task(aws_client:aws_client(), binary() | list(), start_fuota_task_request(), proplists:proplist()) ->
    {ok, start_fuota_task_response(), tuple()} |
    {error, any()} |
    {error, start_fuota_task_errors(), tuple()}.
start_fuota_task(Client, Id, Input0, Options0) ->
    Method = put,
    Path = ["/fuota-tasks/", aws_util:encode_uri(Id), ""],
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

%% @doc Starts a multicast group session.
-spec start_multicast_group_session(aws_client:aws_client(), binary() | list(), start_multicast_group_session_request()) ->
    {ok, start_multicast_group_session_response(), tuple()} |
    {error, any()} |
    {error, start_multicast_group_session_errors(), tuple()}.
start_multicast_group_session(Client, Id, Input) ->
    start_multicast_group_session(Client, Id, Input, []).

-spec start_multicast_group_session(aws_client:aws_client(), binary() | list(), start_multicast_group_session_request(), proplists:proplist()) ->
    {ok, start_multicast_group_session_response(), tuple()} |
    {error, any()} |
    {error, start_multicast_group_session_errors(), tuple()}.
start_multicast_group_session(Client, Id, Input0, Options0) ->
    Method = put,
    Path = ["/multicast-groups/", aws_util:encode_uri(Id), "/session"],
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

%% @doc Start import task for a single wireless device.
-spec start_single_wireless_device_import_task(aws_client:aws_client(), start_single_wireless_device_import_task_request()) ->
    {ok, start_single_wireless_device_import_task_response(), tuple()} |
    {error, any()} |
    {error, start_single_wireless_device_import_task_errors(), tuple()}.
start_single_wireless_device_import_task(Client, Input) ->
    start_single_wireless_device_import_task(Client, Input, []).

-spec start_single_wireless_device_import_task(aws_client:aws_client(), start_single_wireless_device_import_task_request(), proplists:proplist()) ->
    {ok, start_single_wireless_device_import_task_response(), tuple()} |
    {error, any()} |
    {error, start_single_wireless_device_import_task_errors(), tuple()}.
start_single_wireless_device_import_task(Client, Input0, Options0) ->
    Method = post,
    Path = ["/wireless_single_device_import_task"],
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

%% @doc Start import task for provisioning Sidewalk devices in bulk using an
%% S3 CSV
%% file.
-spec start_wireless_device_import_task(aws_client:aws_client(), start_wireless_device_import_task_request()) ->
    {ok, start_wireless_device_import_task_response(), tuple()} |
    {error, any()} |
    {error, start_wireless_device_import_task_errors(), tuple()}.
start_wireless_device_import_task(Client, Input) ->
    start_wireless_device_import_task(Client, Input, []).

-spec start_wireless_device_import_task(aws_client:aws_client(), start_wireless_device_import_task_request(), proplists:proplist()) ->
    {ok, start_wireless_device_import_task_response(), tuple()} |
    {error, any()} |
    {error, start_wireless_device_import_task_errors(), tuple()}.
start_wireless_device_import_task(Client, Input0, Options0) ->
    Method = post,
    Path = ["/wireless_device_import_task"],
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

%% @doc Adds a tag to a resource.
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
    Path = ["/tags"],
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
                     {<<"resourceArn">>, <<"ResourceArn">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Simulates a provisioned device by sending an uplink data payload of
%% `Hello'.
-spec test_wireless_device(aws_client:aws_client(), binary() | list(), test_wireless_device_request()) ->
    {ok, test_wireless_device_response(), tuple()} |
    {error, any()} |
    {error, test_wireless_device_errors(), tuple()}.
test_wireless_device(Client, Id, Input) ->
    test_wireless_device(Client, Id, Input, []).

-spec test_wireless_device(aws_client:aws_client(), binary() | list(), test_wireless_device_request(), proplists:proplist()) ->
    {ok, test_wireless_device_response(), tuple()} |
    {error, any()} |
    {error, test_wireless_device_errors(), tuple()}.
test_wireless_device(Client, Id, Input0, Options0) ->
    Method = post,
    Path = ["/wireless-devices/", aws_util:encode_uri(Id), "/test"],
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

%% @doc Removes one or more tags from a resource.
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
    Method = delete,
    Path = ["/tags"],
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
                     {<<"resourceArn">>, <<"ResourceArn">>},
                     {<<"tagKeys">>, <<"TagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates properties of a destination.
-spec update_destination(aws_client:aws_client(), binary() | list(), update_destination_request()) ->
    {ok, update_destination_response(), tuple()} |
    {error, any()} |
    {error, update_destination_errors(), tuple()}.
update_destination(Client, Name, Input) ->
    update_destination(Client, Name, Input, []).

-spec update_destination(aws_client:aws_client(), binary() | list(), update_destination_request(), proplists:proplist()) ->
    {ok, update_destination_response(), tuple()} |
    {error, any()} |
    {error, update_destination_errors(), tuple()}.
update_destination(Client, Name, Input0, Options0) ->
    Method = patch,
    Path = ["/destinations/", aws_util:encode_uri(Name), ""],
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

%% @doc Update the event configuration based on resource types.
-spec update_event_configuration_by_resource_types(aws_client:aws_client(), update_event_configuration_by_resource_types_request()) ->
    {ok, update_event_configuration_by_resource_types_response(), tuple()} |
    {error, any()} |
    {error, update_event_configuration_by_resource_types_errors(), tuple()}.
update_event_configuration_by_resource_types(Client, Input) ->
    update_event_configuration_by_resource_types(Client, Input, []).

-spec update_event_configuration_by_resource_types(aws_client:aws_client(), update_event_configuration_by_resource_types_request(), proplists:proplist()) ->
    {ok, update_event_configuration_by_resource_types_response(), tuple()} |
    {error, any()} |
    {error, update_event_configuration_by_resource_types_errors(), tuple()}.
update_event_configuration_by_resource_types(Client, Input0, Options0) ->
    Method = patch,
    Path = ["/event-configurations-resource-types"],
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

%% @doc Updates properties of a FUOTA task.
-spec update_fuota_task(aws_client:aws_client(), binary() | list(), update_fuota_task_request()) ->
    {ok, update_fuota_task_response(), tuple()} |
    {error, any()} |
    {error, update_fuota_task_errors(), tuple()}.
update_fuota_task(Client, Id, Input) ->
    update_fuota_task(Client, Id, Input, []).

-spec update_fuota_task(aws_client:aws_client(), binary() | list(), update_fuota_task_request(), proplists:proplist()) ->
    {ok, update_fuota_task_response(), tuple()} |
    {error, any()} |
    {error, update_fuota_task_errors(), tuple()}.
update_fuota_task(Client, Id, Input0, Options0) ->
    Method = patch,
    Path = ["/fuota-tasks/", aws_util:encode_uri(Id), ""],
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

%% @doc Set default log level, or log levels by resource types.
%%
%% This can be for wireless
%% device, wireless gateway, or FUOTA task log options, and is used to
%% control the log
%% messages that'll be displayed in CloudWatch.
-spec update_log_levels_by_resource_types(aws_client:aws_client(), update_log_levels_by_resource_types_request()) ->
    {ok, update_log_levels_by_resource_types_response(), tuple()} |
    {error, any()} |
    {error, update_log_levels_by_resource_types_errors(), tuple()}.
update_log_levels_by_resource_types(Client, Input) ->
    update_log_levels_by_resource_types(Client, Input, []).

-spec update_log_levels_by_resource_types(aws_client:aws_client(), update_log_levels_by_resource_types_request(), proplists:proplist()) ->
    {ok, update_log_levels_by_resource_types_response(), tuple()} |
    {error, any()} |
    {error, update_log_levels_by_resource_types_errors(), tuple()}.
update_log_levels_by_resource_types(Client, Input0, Options0) ->
    Method = post,
    Path = ["/log-levels"],
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

%% @doc Update the summary metric configuration.
-spec update_metric_configuration(aws_client:aws_client(), update_metric_configuration_request()) ->
    {ok, update_metric_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_metric_configuration_errors(), tuple()}.
update_metric_configuration(Client, Input) ->
    update_metric_configuration(Client, Input, []).

-spec update_metric_configuration(aws_client:aws_client(), update_metric_configuration_request(), proplists:proplist()) ->
    {ok, update_metric_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_metric_configuration_errors(), tuple()}.
update_metric_configuration(Client, Input0, Options0) ->
    Method = put,
    Path = ["/metric-configuration"],
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

%% @doc Updates properties of a multicast group session.
-spec update_multicast_group(aws_client:aws_client(), binary() | list(), update_multicast_group_request()) ->
    {ok, update_multicast_group_response(), tuple()} |
    {error, any()} |
    {error, update_multicast_group_errors(), tuple()}.
update_multicast_group(Client, Id, Input) ->
    update_multicast_group(Client, Id, Input, []).

-spec update_multicast_group(aws_client:aws_client(), binary() | list(), update_multicast_group_request(), proplists:proplist()) ->
    {ok, update_multicast_group_response(), tuple()} |
    {error, any()} |
    {error, update_multicast_group_errors(), tuple()}.
update_multicast_group(Client, Id, Input0, Options0) ->
    Method = patch,
    Path = ["/multicast-groups/", aws_util:encode_uri(Id), ""],
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

%% @doc Update network analyzer configuration.
-spec update_network_analyzer_configuration(aws_client:aws_client(), binary() | list(), update_network_analyzer_configuration_request()) ->
    {ok, update_network_analyzer_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_network_analyzer_configuration_errors(), tuple()}.
update_network_analyzer_configuration(Client, ConfigurationName, Input) ->
    update_network_analyzer_configuration(Client, ConfigurationName, Input, []).

-spec update_network_analyzer_configuration(aws_client:aws_client(), binary() | list(), update_network_analyzer_configuration_request(), proplists:proplist()) ->
    {ok, update_network_analyzer_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_network_analyzer_configuration_errors(), tuple()}.
update_network_analyzer_configuration(Client, ConfigurationName, Input0, Options0) ->
    Method = patch,
    Path = ["/network-analyzer-configurations/", aws_util:encode_uri(ConfigurationName), ""],
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

%% @doc Updates properties of a partner account.
-spec update_partner_account(aws_client:aws_client(), binary() | list(), update_partner_account_request()) ->
    {ok, update_partner_account_response(), tuple()} |
    {error, any()} |
    {error, update_partner_account_errors(), tuple()}.
update_partner_account(Client, PartnerAccountId, Input) ->
    update_partner_account(Client, PartnerAccountId, Input, []).

-spec update_partner_account(aws_client:aws_client(), binary() | list(), update_partner_account_request(), proplists:proplist()) ->
    {ok, update_partner_account_response(), tuple()} |
    {error, any()} |
    {error, update_partner_account_errors(), tuple()}.
update_partner_account(Client, PartnerAccountId, Input0, Options0) ->
    Method = patch,
    Path = ["/partner-accounts/", aws_util:encode_uri(PartnerAccountId), ""],
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
                     {<<"partnerType">>, <<"PartnerType">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Update the position information of a resource.
%%
%% This action is no longer supported. Calls to update the position
%% information
%% should use the UpdateResourcePosition:
%% https://docs.aws.amazon.com/iot-wireless/2020-11-22/apireference/API_UpdateResourcePosition.html
%% API operation instead.
-spec update_position(aws_client:aws_client(), binary() | list(), update_position_request()) ->
    {ok, update_position_response(), tuple()} |
    {error, any()} |
    {error, update_position_errors(), tuple()}.
update_position(Client, ResourceIdentifier, Input) ->
    update_position(Client, ResourceIdentifier, Input, []).

-spec update_position(aws_client:aws_client(), binary() | list(), update_position_request(), proplists:proplist()) ->
    {ok, update_position_response(), tuple()} |
    {error, any()} |
    {error, update_position_errors(), tuple()}.
update_position(Client, ResourceIdentifier, Input0, Options0) ->
    Method = patch,
    Path = ["/positions/", aws_util:encode_uri(ResourceIdentifier), ""],
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
                     {<<"resourceType">>, <<"ResourceType">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Update the event configuration for a particular resource identifier.
-spec update_resource_event_configuration(aws_client:aws_client(), binary() | list(), update_resource_event_configuration_request()) ->
    {ok, update_resource_event_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_resource_event_configuration_errors(), tuple()}.
update_resource_event_configuration(Client, Identifier, Input) ->
    update_resource_event_configuration(Client, Identifier, Input, []).

-spec update_resource_event_configuration(aws_client:aws_client(), binary() | list(), update_resource_event_configuration_request(), proplists:proplist()) ->
    {ok, update_resource_event_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_resource_event_configuration_errors(), tuple()}.
update_resource_event_configuration(Client, Identifier, Input0, Options0) ->
    Method = patch,
    Path = ["/event-configurations/", aws_util:encode_uri(Identifier), ""],
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
                     {<<"identifierType">>, <<"IdentifierType">>},
                     {<<"partnerType">>, <<"PartnerType">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Update the position information of a given wireless device or a
%% wireless gateway
%% resource.
%%
%% The position coordinates are based on the World Geodetic System
%% (WGS84): https://gisgeography.com/wgs84-world-geodetic-system/.
-spec update_resource_position(aws_client:aws_client(), binary() | list(), update_resource_position_request()) ->
    {ok, update_resource_position_response(), tuple()} |
    {error, any()} |
    {error, update_resource_position_errors(), tuple()}.
update_resource_position(Client, ResourceIdentifier, Input) ->
    update_resource_position(Client, ResourceIdentifier, Input, []).

-spec update_resource_position(aws_client:aws_client(), binary() | list(), update_resource_position_request(), proplists:proplist()) ->
    {ok, update_resource_position_response(), tuple()} |
    {error, any()} |
    {error, update_resource_position_errors(), tuple()}.
update_resource_position(Client, ResourceIdentifier, Input0, Options0) ->
    Method = patch,
    Path = ["/resource-positions/", aws_util:encode_uri(ResourceIdentifier), ""],
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
                     {<<"resourceType">>, <<"ResourceType">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates properties of a wireless device.
-spec update_wireless_device(aws_client:aws_client(), binary() | list(), update_wireless_device_request()) ->
    {ok, update_wireless_device_response(), tuple()} |
    {error, any()} |
    {error, update_wireless_device_errors(), tuple()}.
update_wireless_device(Client, Id, Input) ->
    update_wireless_device(Client, Id, Input, []).

-spec update_wireless_device(aws_client:aws_client(), binary() | list(), update_wireless_device_request(), proplists:proplist()) ->
    {ok, update_wireless_device_response(), tuple()} |
    {error, any()} |
    {error, update_wireless_device_errors(), tuple()}.
update_wireless_device(Client, Id, Input0, Options0) ->
    Method = patch,
    Path = ["/wireless-devices/", aws_util:encode_uri(Id), ""],
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

%% @doc Update an import task to add more devices to the task.
-spec update_wireless_device_import_task(aws_client:aws_client(), binary() | list(), update_wireless_device_import_task_request()) ->
    {ok, update_wireless_device_import_task_response(), tuple()} |
    {error, any()} |
    {error, update_wireless_device_import_task_errors(), tuple()}.
update_wireless_device_import_task(Client, Id, Input) ->
    update_wireless_device_import_task(Client, Id, Input, []).

-spec update_wireless_device_import_task(aws_client:aws_client(), binary() | list(), update_wireless_device_import_task_request(), proplists:proplist()) ->
    {ok, update_wireless_device_import_task_response(), tuple()} |
    {error, any()} |
    {error, update_wireless_device_import_task_errors(), tuple()}.
update_wireless_device_import_task(Client, Id, Input0, Options0) ->
    Method = patch,
    Path = ["/wireless_device_import_task/", aws_util:encode_uri(Id), ""],
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

%% @doc Updates properties of a wireless gateway.
-spec update_wireless_gateway(aws_client:aws_client(), binary() | list(), update_wireless_gateway_request()) ->
    {ok, update_wireless_gateway_response(), tuple()} |
    {error, any()} |
    {error, update_wireless_gateway_errors(), tuple()}.
update_wireless_gateway(Client, Id, Input) ->
    update_wireless_gateway(Client, Id, Input, []).

-spec update_wireless_gateway(aws_client:aws_client(), binary() | list(), update_wireless_gateway_request(), proplists:proplist()) ->
    {ok, update_wireless_gateway_response(), tuple()} |
    {error, any()} |
    {error, update_wireless_gateway_errors(), tuple()}.
update_wireless_gateway(Client, Id, Input0, Options0) ->
    Method = patch,
    Path = ["/wireless-gateways/", aws_util:encode_uri(Id), ""],
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
    Client1 = Client#{service => <<"iotwireless">>},
    Host = build_host(<<"api.iotwireless">>, Client1),
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
