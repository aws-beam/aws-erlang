%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc AWS IoT Wireless provides bi-directional communication between
%% internet-connected
%% wireless devices and the AWS Cloud.
%%
%% To onboard both LoRaWAN and Sidewalk devices to AWS
%% IoT, use the IoT Wireless API. These wireless devices use the Low Power
%% Wide Area
%% Networking (LPWAN) communication protocol to communicate with AWS IoT.
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

%%====================================================================
%% API
%%====================================================================

%% @doc Associates a partner account with your AWS account.
associate_aws_account_with_partner_account(Client, Input) ->
    associate_aws_account_with_partner_account(Client, Input, []).
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
associate_multicast_group_with_fuota_task(Client, Id, Input) ->
    associate_multicast_group_with_fuota_task(Client, Id, Input, []).
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
associate_wireless_device_with_fuota_task(Client, Id, Input) ->
    associate_wireless_device_with_fuota_task(Client, Id, Input, []).
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
associate_wireless_device_with_multicast_group(Client, Id, Input) ->
    associate_wireless_device_with_multicast_group(Client, Id, Input, []).
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
associate_wireless_device_with_thing(Client, Id, Input) ->
    associate_wireless_device_with_thing(Client, Id, Input, []).
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
associate_wireless_gateway_with_certificate(Client, Id, Input) ->
    associate_wireless_gateway_with_certificate(Client, Id, Input, []).
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
associate_wireless_gateway_with_thing(Client, Id, Input) ->
    associate_wireless_gateway_with_thing(Client, Id, Input, []).
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
cancel_multicast_group_session(Client, Id, Input) ->
    cancel_multicast_group_session(Client, Id, Input, []).
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
create_destination(Client, Input) ->
    create_destination(Client, Input, []).
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
create_device_profile(Client, Input) ->
    create_device_profile(Client, Input, []).
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
create_fuota_task(Client, Input) ->
    create_fuota_task(Client, Input, []).
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
create_multicast_group(Client, Input) ->
    create_multicast_group(Client, Input, []).
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
create_network_analyzer_configuration(Client, Input) ->
    create_network_analyzer_configuration(Client, Input, []).
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
create_service_profile(Client, Input) ->
    create_service_profile(Client, Input, []).
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
create_wireless_device(Client, Input) ->
    create_wireless_device(Client, Input, []).
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
create_wireless_gateway(Client, Input) ->
    create_wireless_gateway(Client, Input, []).
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
create_wireless_gateway_task(Client, Id, Input) ->
    create_wireless_gateway_task(Client, Id, Input, []).
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
create_wireless_gateway_task_definition(Client, Input) ->
    create_wireless_gateway_task_definition(Client, Input, []).
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
delete_destination(Client, Name, Input) ->
    delete_destination(Client, Name, Input, []).
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
delete_device_profile(Client, Id, Input) ->
    delete_device_profile(Client, Id, Input, []).
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
delete_fuota_task(Client, Id, Input) ->
    delete_fuota_task(Client, Id, Input, []).
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

%% @doc Deletes a multicast group if it is not in use by a fuota task.
delete_multicast_group(Client, Id, Input) ->
    delete_multicast_group(Client, Id, Input, []).
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
delete_network_analyzer_configuration(Client, ConfigurationName, Input) ->
    delete_network_analyzer_configuration(Client, ConfigurationName, Input, []).
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
delete_queued_messages(Client, Id, Input) ->
    delete_queued_messages(Client, Id, Input, []).
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
delete_service_profile(Client, Id, Input) ->
    delete_service_profile(Client, Id, Input, []).
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
delete_wireless_device(Client, Id, Input) ->
    delete_wireless_device(Client, Id, Input, []).
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
delete_wireless_device_import_task(Client, Id, Input) ->
    delete_wireless_device_import_task(Client, Id, Input, []).
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
delete_wireless_gateway(Client, Id, Input) ->
    delete_wireless_gateway(Client, Id, Input, []).
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
delete_wireless_gateway_task(Client, Id, Input) ->
    delete_wireless_gateway_task(Client, Id, Input, []).
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
delete_wireless_gateway_task_definition(Client, Id, Input) ->
    delete_wireless_gateway_task_definition(Client, Id, Input, []).
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
deregister_wireless_device(Client, Identifier, Input) ->
    deregister_wireless_device(Client, Identifier, Input, []).
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
disassociate_aws_account_from_partner_account(Client, PartnerAccountId, Input) ->
    disassociate_aws_account_from_partner_account(Client, PartnerAccountId, Input, []).
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

%% @doc Disassociates a multicast group from a fuota task.
disassociate_multicast_group_from_fuota_task(Client, Id, MulticastGroupId, Input) ->
    disassociate_multicast_group_from_fuota_task(Client, Id, MulticastGroupId, Input, []).
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
disassociate_wireless_device_from_fuota_task(Client, Id, WirelessDeviceId, Input) ->
    disassociate_wireless_device_from_fuota_task(Client, Id, WirelessDeviceId, Input, []).
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
disassociate_wireless_device_from_multicast_group(Client, Id, WirelessDeviceId, Input) ->
    disassociate_wireless_device_from_multicast_group(Client, Id, WirelessDeviceId, Input, []).
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
disassociate_wireless_device_from_thing(Client, Id, Input) ->
    disassociate_wireless_device_from_thing(Client, Id, Input, []).
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
disassociate_wireless_gateway_from_certificate(Client, Id, Input) ->
    disassociate_wireless_gateway_from_certificate(Client, Id, Input, []).
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
disassociate_wireless_gateway_from_thing(Client, Id, Input) ->
    disassociate_wireless_gateway_from_thing(Client, Id, Input, []).
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
get_destination(Client, Name)
  when is_map(Client) ->
    get_destination(Client, Name, #{}, #{}).

get_destination(Client, Name, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_destination(Client, Name, QueryMap, HeadersMap, []).

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
get_device_profile(Client, Id)
  when is_map(Client) ->
    get_device_profile(Client, Id, #{}, #{}).

get_device_profile(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_device_profile(Client, Id, QueryMap, HeadersMap, []).

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
get_event_configuration_by_resource_types(Client)
  when is_map(Client) ->
    get_event_configuration_by_resource_types(Client, #{}, #{}).

get_event_configuration_by_resource_types(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_event_configuration_by_resource_types(Client, QueryMap, HeadersMap, []).

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
get_fuota_task(Client, Id)
  when is_map(Client) ->
    get_fuota_task(Client, Id, #{}, #{}).

get_fuota_task(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_fuota_task(Client, Id, QueryMap, HeadersMap, []).

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
%% Based on resource
%% types, log levels can be for wireless device log options or wireless
%% gateway log
%% options.
get_log_levels_by_resource_types(Client)
  when is_map(Client) ->
    get_log_levels_by_resource_types(Client, #{}, #{}).

get_log_levels_by_resource_types(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_log_levels_by_resource_types(Client, QueryMap, HeadersMap, []).

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

%% @doc Gets information about a multicast group.
get_multicast_group(Client, Id)
  when is_map(Client) ->
    get_multicast_group(Client, Id, #{}, #{}).

get_multicast_group(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_multicast_group(Client, Id, QueryMap, HeadersMap, []).

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
get_multicast_group_session(Client, Id)
  when is_map(Client) ->
    get_multicast_group_session(Client, Id, #{}, #{}).

get_multicast_group_session(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_multicast_group_session(Client, Id, QueryMap, HeadersMap, []).

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
get_network_analyzer_configuration(Client, ConfigurationName)
  when is_map(Client) ->
    get_network_analyzer_configuration(Client, ConfigurationName, #{}, #{}).

get_network_analyzer_configuration(Client, ConfigurationName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_network_analyzer_configuration(Client, ConfigurationName, QueryMap, HeadersMap, []).

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
get_partner_account(Client, PartnerAccountId, PartnerType)
  when is_map(Client) ->
    get_partner_account(Client, PartnerAccountId, PartnerType, #{}, #{}).

get_partner_account(Client, PartnerAccountId, PartnerType, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_partner_account(Client, PartnerAccountId, PartnerType, QueryMap, HeadersMap, []).

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
get_position(Client, ResourceIdentifier, ResourceType)
  when is_map(Client) ->
    get_position(Client, ResourceIdentifier, ResourceType, #{}, #{}).

get_position(Client, ResourceIdentifier, ResourceType, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_position(Client, ResourceIdentifier, ResourceType, QueryMap, HeadersMap, []).

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
get_position_configuration(Client, ResourceIdentifier, ResourceType)
  when is_map(Client) ->
    get_position_configuration(Client, ResourceIdentifier, ResourceType, #{}, #{}).

get_position_configuration(Client, ResourceIdentifier, ResourceType, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_position_configuration(Client, ResourceIdentifier, ResourceType, QueryMap, HeadersMap, []).

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
get_position_estimate(Client, Input) ->
    get_position_estimate(Client, Input, []).
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
get_resource_event_configuration(Client, Identifier, IdentifierType)
  when is_map(Client) ->
    get_resource_event_configuration(Client, Identifier, IdentifierType, #{}, #{}).

get_resource_event_configuration(Client, Identifier, IdentifierType, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_resource_event_configuration(Client, Identifier, IdentifierType, QueryMap, HeadersMap, []).

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

%% @doc Fetches the log-level override, if any, for a given resource-ID and
%% resource-type.
%%
%% It
%% can be used for a wireless device or a wireless gateway.
get_resource_log_level(Client, ResourceIdentifier, ResourceType)
  when is_map(Client) ->
    get_resource_log_level(Client, ResourceIdentifier, ResourceType, #{}, #{}).

get_resource_log_level(Client, ResourceIdentifier, ResourceType, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_resource_log_level(Client, ResourceIdentifier, ResourceType, QueryMap, HeadersMap, []).

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
get_resource_position(Client, ResourceIdentifier, ResourceType)
  when is_map(Client) ->
    get_resource_position(Client, ResourceIdentifier, ResourceType, #{}, #{}).

get_resource_position(Client, ResourceIdentifier, ResourceType, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_resource_position(Client, ResourceIdentifier, ResourceType, QueryMap, HeadersMap, []).

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
get_service_endpoint(Client)
  when is_map(Client) ->
    get_service_endpoint(Client, #{}, #{}).

get_service_endpoint(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_service_endpoint(Client, QueryMap, HeadersMap, []).

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
get_service_profile(Client, Id)
  when is_map(Client) ->
    get_service_profile(Client, Id, #{}, #{}).

get_service_profile(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_service_profile(Client, Id, QueryMap, HeadersMap, []).

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
get_wireless_device(Client, Identifier, IdentifierType)
  when is_map(Client) ->
    get_wireless_device(Client, Identifier, IdentifierType, #{}, #{}).

get_wireless_device(Client, Identifier, IdentifierType, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_wireless_device(Client, Identifier, IdentifierType, QueryMap, HeadersMap, []).

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
get_wireless_device_import_task(Client, Id)
  when is_map(Client) ->
    get_wireless_device_import_task(Client, Id, #{}, #{}).

get_wireless_device_import_task(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_wireless_device_import_task(Client, Id, QueryMap, HeadersMap, []).

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
get_wireless_device_statistics(Client, WirelessDeviceId)
  when is_map(Client) ->
    get_wireless_device_statistics(Client, WirelessDeviceId, #{}, #{}).

get_wireless_device_statistics(Client, WirelessDeviceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_wireless_device_statistics(Client, WirelessDeviceId, QueryMap, HeadersMap, []).

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
get_wireless_gateway(Client, Identifier, IdentifierType)
  when is_map(Client) ->
    get_wireless_gateway(Client, Identifier, IdentifierType, #{}, #{}).

get_wireless_gateway(Client, Identifier, IdentifierType, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_wireless_gateway(Client, Identifier, IdentifierType, QueryMap, HeadersMap, []).

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
get_wireless_gateway_certificate(Client, Id)
  when is_map(Client) ->
    get_wireless_gateway_certificate(Client, Id, #{}, #{}).

get_wireless_gateway_certificate(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_wireless_gateway_certificate(Client, Id, QueryMap, HeadersMap, []).

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
get_wireless_gateway_firmware_information(Client, Id)
  when is_map(Client) ->
    get_wireless_gateway_firmware_information(Client, Id, #{}, #{}).

get_wireless_gateway_firmware_information(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_wireless_gateway_firmware_information(Client, Id, QueryMap, HeadersMap, []).

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
get_wireless_gateway_statistics(Client, WirelessGatewayId)
  when is_map(Client) ->
    get_wireless_gateway_statistics(Client, WirelessGatewayId, #{}, #{}).

get_wireless_gateway_statistics(Client, WirelessGatewayId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_wireless_gateway_statistics(Client, WirelessGatewayId, QueryMap, HeadersMap, []).

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
get_wireless_gateway_task(Client, Id)
  when is_map(Client) ->
    get_wireless_gateway_task(Client, Id, #{}, #{}).

get_wireless_gateway_task(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_wireless_gateway_task(Client, Id, QueryMap, HeadersMap, []).

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
get_wireless_gateway_task_definition(Client, Id)
  when is_map(Client) ->
    get_wireless_gateway_task_definition(Client, Id, #{}, #{}).

get_wireless_gateway_task_definition(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_wireless_gateway_task_definition(Client, Id, QueryMap, HeadersMap, []).

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
list_destinations(Client)
  when is_map(Client) ->
    list_destinations(Client, #{}, #{}).

list_destinations(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_destinations(Client, QueryMap, HeadersMap, []).

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
list_device_profiles(Client)
  when is_map(Client) ->
    list_device_profiles(Client, #{}, #{}).

list_device_profiles(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_device_profiles(Client, QueryMap, HeadersMap, []).

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
list_devices_for_wireless_device_import_task(Client, Id)
  when is_map(Client) ->
    list_devices_for_wireless_device_import_task(Client, Id, #{}, #{}).

list_devices_for_wireless_device_import_task(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_devices_for_wireless_device_import_task(Client, Id, QueryMap, HeadersMap, []).

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
list_event_configurations(Client, ResourceType)
  when is_map(Client) ->
    list_event_configurations(Client, ResourceType, #{}, #{}).

list_event_configurations(Client, ResourceType, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_event_configurations(Client, ResourceType, QueryMap, HeadersMap, []).

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
list_fuota_tasks(Client)
  when is_map(Client) ->
    list_fuota_tasks(Client, #{}, #{}).

list_fuota_tasks(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_fuota_tasks(Client, QueryMap, HeadersMap, []).

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
list_multicast_groups(Client)
  when is_map(Client) ->
    list_multicast_groups(Client, #{}, #{}).

list_multicast_groups(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_multicast_groups(Client, QueryMap, HeadersMap, []).

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

%% @doc List all multicast groups associated with a fuota task.
list_multicast_groups_by_fuota_task(Client, Id)
  when is_map(Client) ->
    list_multicast_groups_by_fuota_task(Client, Id, #{}, #{}).

list_multicast_groups_by_fuota_task(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_multicast_groups_by_fuota_task(Client, Id, QueryMap, HeadersMap, []).

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
list_network_analyzer_configurations(Client)
  when is_map(Client) ->
    list_network_analyzer_configurations(Client, #{}, #{}).

list_network_analyzer_configurations(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_network_analyzer_configurations(Client, QueryMap, HeadersMap, []).

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
list_partner_accounts(Client)
  when is_map(Client) ->
    list_partner_accounts(Client, #{}, #{}).

list_partner_accounts(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_partner_accounts(Client, QueryMap, HeadersMap, []).

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
list_position_configurations(Client)
  when is_map(Client) ->
    list_position_configurations(Client, #{}, #{}).

list_position_configurations(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_position_configurations(Client, QueryMap, HeadersMap, []).

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
list_queued_messages(Client, Id)
  when is_map(Client) ->
    list_queued_messages(Client, Id, #{}, #{}).

list_queued_messages(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_queued_messages(Client, Id, QueryMap, HeadersMap, []).

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
list_service_profiles(Client)
  when is_map(Client) ->
    list_service_profiles(Client, #{}, #{}).

list_service_profiles(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_service_profiles(Client, QueryMap, HeadersMap, []).

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
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

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
list_wireless_device_import_tasks(Client)
  when is_map(Client) ->
    list_wireless_device_import_tasks(Client, #{}, #{}).

list_wireless_device_import_tasks(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_wireless_device_import_tasks(Client, QueryMap, HeadersMap, []).

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
list_wireless_devices(Client)
  when is_map(Client) ->
    list_wireless_devices(Client, #{}, #{}).

list_wireless_devices(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_wireless_devices(Client, QueryMap, HeadersMap, []).

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
list_wireless_gateway_task_definitions(Client)
  when is_map(Client) ->
    list_wireless_gateway_task_definitions(Client, #{}, #{}).

list_wireless_gateway_task_definitions(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_wireless_gateway_task_definitions(Client, QueryMap, HeadersMap, []).

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
list_wireless_gateways(Client)
  when is_map(Client) ->
    list_wireless_gateways(Client, #{}, #{}).

list_wireless_gateways(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_wireless_gateways(Client, QueryMap, HeadersMap, []).

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
put_position_configuration(Client, ResourceIdentifier, Input) ->
    put_position_configuration(Client, ResourceIdentifier, Input, []).
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

%% @doc Sets the log-level override for a resource-ID and resource-type.
%%
%% This option can be
%% specified for a wireless gateway or a wireless device. A limit of 200 log
%% level override
%% can be set per account.
put_resource_log_level(Client, ResourceIdentifier, Input) ->
    put_resource_log_level(Client, ResourceIdentifier, Input, []).
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

%% @doc Removes the log-level overrides for all resources; both wireless
%% devices and wireless
%% gateways.
reset_all_resource_log_levels(Client, Input) ->
    reset_all_resource_log_levels(Client, Input, []).
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

%% @doc Removes the log-level override, if any, for a specific resource-ID
%% and resource-type.
%%
%% It can be used for a wireless device or a wireless gateway.
reset_resource_log_level(Client, ResourceIdentifier, Input) ->
    reset_resource_log_level(Client, ResourceIdentifier, Input, []).
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
send_data_to_multicast_group(Client, Id, Input) ->
    send_data_to_multicast_group(Client, Id, Input, []).
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
send_data_to_wireless_device(Client, Id, Input) ->
    send_data_to_wireless_device(Client, Id, Input, []).
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
start_bulk_associate_wireless_device_with_multicast_group(Client, Id, Input) ->
    start_bulk_associate_wireless_device_with_multicast_group(Client, Id, Input, []).
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
start_bulk_disassociate_wireless_device_from_multicast_group(Client, Id, Input) ->
    start_bulk_disassociate_wireless_device_from_multicast_group(Client, Id, Input, []).
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
start_fuota_task(Client, Id, Input) ->
    start_fuota_task(Client, Id, Input, []).
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
start_multicast_group_session(Client, Id, Input) ->
    start_multicast_group_session(Client, Id, Input, []).
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
start_single_wireless_device_import_task(Client, Input) ->
    start_single_wireless_device_import_task(Client, Input, []).
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
start_wireless_device_import_task(Client, Input) ->
    start_wireless_device_import_task(Client, Input, []).
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
tag_resource(Client, Input) ->
    tag_resource(Client, Input, []).
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
test_wireless_device(Client, Id, Input) ->
    test_wireless_device(Client, Id, Input, []).
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
untag_resource(Client, Input) ->
    untag_resource(Client, Input, []).
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
update_destination(Client, Name, Input) ->
    update_destination(Client, Name, Input, []).
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
update_event_configuration_by_resource_types(Client, Input) ->
    update_event_configuration_by_resource_types(Client, Input, []).
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
update_fuota_task(Client, Id, Input) ->
    update_fuota_task(Client, Id, Input, []).
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
%% device log options or wireless gateways log options and is used to control
%% the log
%% messages that'll be displayed in CloudWatch.
update_log_levels_by_resource_types(Client, Input) ->
    update_log_levels_by_resource_types(Client, Input, []).
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

%% @doc Updates properties of a multicast group session.
update_multicast_group(Client, Id, Input) ->
    update_multicast_group(Client, Id, Input, []).
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
update_network_analyzer_configuration(Client, ConfigurationName, Input) ->
    update_network_analyzer_configuration(Client, ConfigurationName, Input, []).
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
update_partner_account(Client, PartnerAccountId, Input) ->
    update_partner_account(Client, PartnerAccountId, Input, []).
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
update_position(Client, ResourceIdentifier, Input) ->
    update_position(Client, ResourceIdentifier, Input, []).
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
update_resource_event_configuration(Client, Identifier, Input) ->
    update_resource_event_configuration(Client, Identifier, Input, []).
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
update_resource_position(Client, ResourceIdentifier, Input) ->
    update_resource_position(Client, ResourceIdentifier, Input, []).
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
update_wireless_device(Client, Id, Input) ->
    update_wireless_device(Client, Id, Input, []).
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
update_wireless_device_import_task(Client, Id, Input) ->
    update_wireless_device_import_task(Client, Id, Input, []).
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
update_wireless_gateway(Client, Id, Input) ->
    update_wireless_gateway(Client, Id, Input, []).
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

-spec proplists_take(any(), proplists:proplists(), any()) -> {any(), proplists:proplists()}.
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
