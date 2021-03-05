%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc AWS IoT Wireless API documentation
-module(aws_iot_wireless).

-export([associate_aws_account_with_partner_account/2,
         associate_aws_account_with_partner_account/3,
         associate_wireless_device_with_thing/3,
         associate_wireless_device_with_thing/4,
         associate_wireless_gateway_with_certificate/3,
         associate_wireless_gateway_with_certificate/4,
         associate_wireless_gateway_with_thing/3,
         associate_wireless_gateway_with_thing/4,
         create_destination/2,
         create_destination/3,
         create_device_profile/2,
         create_device_profile/3,
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
         delete_service_profile/3,
         delete_service_profile/4,
         delete_wireless_device/3,
         delete_wireless_device/4,
         delete_wireless_gateway/3,
         delete_wireless_gateway/4,
         delete_wireless_gateway_task/3,
         delete_wireless_gateway_task/4,
         delete_wireless_gateway_task_definition/3,
         delete_wireless_gateway_task_definition/4,
         disassociate_aws_account_from_partner_account/3,
         disassociate_aws_account_from_partner_account/4,
         disassociate_wireless_device_from_thing/3,
         disassociate_wireless_device_from_thing/4,
         disassociate_wireless_gateway_from_certificate/3,
         disassociate_wireless_gateway_from_certificate/4,
         disassociate_wireless_gateway_from_thing/3,
         disassociate_wireless_gateway_from_thing/4,
         get_destination/2,
         get_destination/3,
         get_device_profile/2,
         get_device_profile/3,
         get_partner_account/3,
         get_partner_account/4,
         get_service_endpoint/2,
         get_service_endpoint/3,
         get_service_profile/2,
         get_service_profile/3,
         get_wireless_device/3,
         get_wireless_device/4,
         get_wireless_device_statistics/2,
         get_wireless_device_statistics/3,
         get_wireless_gateway/3,
         get_wireless_gateway/4,
         get_wireless_gateway_certificate/2,
         get_wireless_gateway_certificate/3,
         get_wireless_gateway_firmware_information/2,
         get_wireless_gateway_firmware_information/3,
         get_wireless_gateway_statistics/2,
         get_wireless_gateway_statistics/3,
         get_wireless_gateway_task/2,
         get_wireless_gateway_task/3,
         get_wireless_gateway_task_definition/2,
         get_wireless_gateway_task_definition/3,
         list_destinations/3,
         list_destinations/4,
         list_device_profiles/3,
         list_device_profiles/4,
         list_partner_accounts/3,
         list_partner_accounts/4,
         list_service_profiles/3,
         list_service_profiles/4,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         list_wireless_devices/7,
         list_wireless_devices/8,
         list_wireless_gateway_task_definitions/4,
         list_wireless_gateway_task_definitions/5,
         list_wireless_gateways/3,
         list_wireless_gateways/4,
         send_data_to_wireless_device/3,
         send_data_to_wireless_device/4,
         tag_resource/2,
         tag_resource/3,
         test_wireless_device/3,
         test_wireless_device/4,
         untag_resource/2,
         untag_resource/3,
         update_destination/3,
         update_destination/4,
         update_partner_account/3,
         update_partner_account/4,
         update_wireless_device/3,
         update_wireless_device/4,
         update_wireless_gateway/3,
         update_wireless_gateway/4]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Associates a partner account with your AWS account.
associate_aws_account_with_partner_account(Client, Input) ->
    associate_aws_account_with_partner_account(Client, Input, []).
associate_aws_account_with_partner_account(Client, Input0, Options) ->
    Method = post,
    Path = ["/partner-accounts"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Associates a wireless device with a thing.
associate_wireless_device_with_thing(Client, Id, Input) ->
    associate_wireless_device_with_thing(Client, Id, Input, []).
associate_wireless_device_with_thing(Client, Id, Input0, Options) ->
    Method = put,
    Path = ["/wireless-devices/", aws_util:encode_uri(Id), "/thing"],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Associates a wireless gateway with a certificate.
associate_wireless_gateway_with_certificate(Client, Id, Input) ->
    associate_wireless_gateway_with_certificate(Client, Id, Input, []).
associate_wireless_gateway_with_certificate(Client, Id, Input0, Options) ->
    Method = put,
    Path = ["/wireless-gateways/", aws_util:encode_uri(Id), "/certificate"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Associates a wireless gateway with a thing.
associate_wireless_gateway_with_thing(Client, Id, Input) ->
    associate_wireless_gateway_with_thing(Client, Id, Input, []).
associate_wireless_gateway_with_thing(Client, Id, Input0, Options) ->
    Method = put,
    Path = ["/wireless-gateways/", aws_util:encode_uri(Id), "/thing"],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new destination that maps a device message to an AWS IoT
%% rule.
create_destination(Client, Input) ->
    create_destination(Client, Input, []).
create_destination(Client, Input0, Options) ->
    Method = post,
    Path = ["/destinations"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new device profile.
create_device_profile(Client, Input) ->
    create_device_profile(Client, Input, []).
create_device_profile(Client, Input0, Options) ->
    Method = post,
    Path = ["/device-profiles"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new service profile.
create_service_profile(Client, Input) ->
    create_service_profile(Client, Input, []).
create_service_profile(Client, Input0, Options) ->
    Method = post,
    Path = ["/service-profiles"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Provisions a wireless device.
create_wireless_device(Client, Input) ->
    create_wireless_device(Client, Input, []).
create_wireless_device(Client, Input0, Options) ->
    Method = post,
    Path = ["/wireless-devices"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Provisions a wireless gateway.
create_wireless_gateway(Client, Input) ->
    create_wireless_gateway(Client, Input, []).
create_wireless_gateway(Client, Input0, Options) ->
    Method = post,
    Path = ["/wireless-gateways"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a task for a wireless gateway.
create_wireless_gateway_task(Client, Id, Input) ->
    create_wireless_gateway_task(Client, Id, Input, []).
create_wireless_gateway_task(Client, Id, Input0, Options) ->
    Method = post,
    Path = ["/wireless-gateways/", aws_util:encode_uri(Id), "/tasks"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a gateway task definition.
create_wireless_gateway_task_definition(Client, Input) ->
    create_wireless_gateway_task_definition(Client, Input, []).
create_wireless_gateway_task_definition(Client, Input0, Options) ->
    Method = post,
    Path = ["/wireless-gateway-task-definitions"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a destination.
delete_destination(Client, Name, Input) ->
    delete_destination(Client, Name, Input, []).
delete_destination(Client, Name, Input0, Options) ->
    Method = delete,
    Path = ["/destinations/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a device profile.
delete_device_profile(Client, Id, Input) ->
    delete_device_profile(Client, Id, Input, []).
delete_device_profile(Client, Id, Input0, Options) ->
    Method = delete,
    Path = ["/device-profiles/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a service profile.
delete_service_profile(Client, Id, Input) ->
    delete_service_profile(Client, Id, Input, []).
delete_service_profile(Client, Id, Input0, Options) ->
    Method = delete,
    Path = ["/service-profiles/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a wireless device.
delete_wireless_device(Client, Id, Input) ->
    delete_wireless_device(Client, Id, Input, []).
delete_wireless_device(Client, Id, Input0, Options) ->
    Method = delete,
    Path = ["/wireless-devices/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a wireless gateway.
delete_wireless_gateway(Client, Id, Input) ->
    delete_wireless_gateway(Client, Id, Input, []).
delete_wireless_gateway(Client, Id, Input0, Options) ->
    Method = delete,
    Path = ["/wireless-gateways/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a wireless gateway task.
delete_wireless_gateway_task(Client, Id, Input) ->
    delete_wireless_gateway_task(Client, Id, Input, []).
delete_wireless_gateway_task(Client, Id, Input0, Options) ->
    Method = delete,
    Path = ["/wireless-gateways/", aws_util:encode_uri(Id), "/tasks"],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a wireless gateway task definition.
%%
%% Deleting this task definition does not affect tasks that are currently in
%% progress.
delete_wireless_gateway_task_definition(Client, Id, Input) ->
    delete_wireless_gateway_task_definition(Client, Id, Input, []).
delete_wireless_gateway_task_definition(Client, Id, Input0, Options) ->
    Method = delete,
    Path = ["/wireless-gateway-task-definitions/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Disassociates your AWS account from a partner account.
%%
%% If `PartnerAccountId' and `PartnerType' are `null', disassociates your AWS
%% account from all partner accounts.
disassociate_aws_account_from_partner_account(Client, PartnerAccountId, Input) ->
    disassociate_aws_account_from_partner_account(Client, PartnerAccountId, Input, []).
disassociate_aws_account_from_partner_account(Client, PartnerAccountId, Input0, Options) ->
    Method = delete,
    Path = ["/partner-accounts/", aws_util:encode_uri(PartnerAccountId), ""],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"partnerType">>, <<"PartnerType">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Disassociates a wireless device from its currently associated thing.
disassociate_wireless_device_from_thing(Client, Id, Input) ->
    disassociate_wireless_device_from_thing(Client, Id, Input, []).
disassociate_wireless_device_from_thing(Client, Id, Input0, Options) ->
    Method = delete,
    Path = ["/wireless-devices/", aws_util:encode_uri(Id), "/thing"],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Disassociates a wireless gateway from its currently associated
%% certificate.
disassociate_wireless_gateway_from_certificate(Client, Id, Input) ->
    disassociate_wireless_gateway_from_certificate(Client, Id, Input, []).
disassociate_wireless_gateway_from_certificate(Client, Id, Input0, Options) ->
    Method = delete,
    Path = ["/wireless-gateways/", aws_util:encode_uri(Id), "/certificate"],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Disassociates a wireless gateway from its currently associated thing.
disassociate_wireless_gateway_from_thing(Client, Id, Input) ->
    disassociate_wireless_gateway_from_thing(Client, Id, Input, []).
disassociate_wireless_gateway_from_thing(Client, Id, Input0, Options) ->
    Method = delete,
    Path = ["/wireless-gateways/", aws_util:encode_uri(Id), "/thing"],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Gets information about a destination.
get_destination(Client, Name)
  when is_map(Client) ->
    get_destination(Client, Name, []).
get_destination(Client, Name, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/destinations/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a device profile.
get_device_profile(Client, Id)
  when is_map(Client) ->
    get_device_profile(Client, Id, []).
get_device_profile(Client, Id, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/device-profiles/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a partner account.
%%
%% If `PartnerAccountId' and `PartnerType' are `null', returns all partner
%% accounts.
get_partner_account(Client, PartnerAccountId, PartnerType)
  when is_map(Client) ->
    get_partner_account(Client, PartnerAccountId, PartnerType, []).
get_partner_account(Client, PartnerAccountId, PartnerType, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/partner-accounts/", aws_util:encode_uri(PartnerAccountId), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"partnerType">>, PartnerType}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the account-specific endpoint for Configuration and Update
%% Server (CUPS) protocol or LoRaWAN Network Server (LNS) connections.
get_service_endpoint(Client, ServiceType)
  when is_map(Client) ->
    get_service_endpoint(Client, ServiceType, []).
get_service_endpoint(Client, ServiceType, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/service-endpoint"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"serviceType">>, ServiceType}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a service profile.
get_service_profile(Client, Id)
  when is_map(Client) ->
    get_service_profile(Client, Id, []).
get_service_profile(Client, Id, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/service-profiles/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a wireless device.
get_wireless_device(Client, Identifier, IdentifierType)
  when is_map(Client) ->
    get_wireless_device(Client, Identifier, IdentifierType, []).
get_wireless_device(Client, Identifier, IdentifierType, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/wireless-devices/", aws_util:encode_uri(Identifier), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"identifierType">>, IdentifierType}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets operating information about a wireless device.
get_wireless_device_statistics(Client, WirelessDeviceId)
  when is_map(Client) ->
    get_wireless_device_statistics(Client, WirelessDeviceId, []).
get_wireless_device_statistics(Client, WirelessDeviceId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/wireless-devices/", aws_util:encode_uri(WirelessDeviceId), "/statistics"],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a wireless gateway.
get_wireless_gateway(Client, Identifier, IdentifierType)
  when is_map(Client) ->
    get_wireless_gateway(Client, Identifier, IdentifierType, []).
get_wireless_gateway(Client, Identifier, IdentifierType, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/wireless-gateways/", aws_util:encode_uri(Identifier), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"identifierType">>, IdentifierType}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the ID of the certificate that is currently associated with a
%% wireless gateway.
get_wireless_gateway_certificate(Client, Id)
  when is_map(Client) ->
    get_wireless_gateway_certificate(Client, Id, []).
get_wireless_gateway_certificate(Client, Id, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/wireless-gateways/", aws_util:encode_uri(Id), "/certificate"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the firmware version and other information about a wireless
%% gateway.
get_wireless_gateway_firmware_information(Client, Id)
  when is_map(Client) ->
    get_wireless_gateway_firmware_information(Client, Id, []).
get_wireless_gateway_firmware_information(Client, Id, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/wireless-gateways/", aws_util:encode_uri(Id), "/firmware-information"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets operating information about a wireless gateway.
get_wireless_gateway_statistics(Client, WirelessGatewayId)
  when is_map(Client) ->
    get_wireless_gateway_statistics(Client, WirelessGatewayId, []).
get_wireless_gateway_statistics(Client, WirelessGatewayId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/wireless-gateways/", aws_util:encode_uri(WirelessGatewayId), "/statistics"],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a wireless gateway task.
get_wireless_gateway_task(Client, Id)
  when is_map(Client) ->
    get_wireless_gateway_task(Client, Id, []).
get_wireless_gateway_task(Client, Id, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/wireless-gateways/", aws_util:encode_uri(Id), "/tasks"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a wireless gateway task definition.
get_wireless_gateway_task_definition(Client, Id)
  when is_map(Client) ->
    get_wireless_gateway_task_definition(Client, Id, []).
get_wireless_gateway_task_definition(Client, Id, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/wireless-gateway-task-definitions/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the destinations registered to your AWS account.
list_destinations(Client, MaxResults, NextToken)
  when is_map(Client) ->
    list_destinations(Client, MaxResults, NextToken, []).
list_destinations(Client, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/destinations"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the device profiles registered to your AWS account.
list_device_profiles(Client, MaxResults, NextToken)
  when is_map(Client) ->
    list_device_profiles(Client, MaxResults, NextToken, []).
list_device_profiles(Client, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/device-profiles"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the partner accounts associated with your AWS account.
list_partner_accounts(Client, MaxResults, NextToken)
  when is_map(Client) ->
    list_partner_accounts(Client, MaxResults, NextToken, []).
list_partner_accounts(Client, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/partner-accounts"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the service profiles registered to your AWS account.
list_service_profiles(Client, MaxResults, NextToken)
  when is_map(Client) ->
    list_service_profiles(Client, MaxResults, NextToken, []).
list_service_profiles(Client, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/service-profiles"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the tags (metadata) you have assigned to the resource.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, []).
list_tags_for_resource(Client, ResourceArn, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/tags"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"resourceArn">>, ResourceArn}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the wireless devices registered to your AWS account.
list_wireless_devices(Client, DestinationName, DeviceProfileId, MaxResults, NextToken, ServiceProfileId, WirelessDeviceType)
  when is_map(Client) ->
    list_wireless_devices(Client, DestinationName, DeviceProfileId, MaxResults, NextToken, ServiceProfileId, WirelessDeviceType, []).
list_wireless_devices(Client, DestinationName, DeviceProfileId, MaxResults, NextToken, ServiceProfileId, WirelessDeviceType, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/wireless-devices"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"destinationName">>, DestinationName},
        {<<"deviceProfileId">>, DeviceProfileId},
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken},
        {<<"serviceProfileId">>, ServiceProfileId},
        {<<"wirelessDeviceType">>, WirelessDeviceType}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List the wireless gateway tasks definitions registered to your AWS
%% account.
list_wireless_gateway_task_definitions(Client, MaxResults, NextToken, TaskDefinitionType)
  when is_map(Client) ->
    list_wireless_gateway_task_definitions(Client, MaxResults, NextToken, TaskDefinitionType, []).
list_wireless_gateway_task_definitions(Client, MaxResults, NextToken, TaskDefinitionType, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/wireless-gateway-task-definitions"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken},
        {<<"taskDefinitionType">>, TaskDefinitionType}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the wireless gateways registered to your AWS account.
list_wireless_gateways(Client, MaxResults, NextToken)
  when is_map(Client) ->
    list_wireless_gateways(Client, MaxResults, NextToken, []).
list_wireless_gateways(Client, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/wireless-gateways"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Sends a decrypted application data frame to a device.
send_data_to_wireless_device(Client, Id, Input) ->
    send_data_to_wireless_device(Client, Id, Input, []).
send_data_to_wireless_device(Client, Id, Input0, Options) ->
    Method = post,
    Path = ["/wireless-devices/", aws_util:encode_uri(Id), "/data"],
    SuccessStatusCode = 202,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Adds a tag to a resource.
tag_resource(Client, Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input0, Options) ->
    Method = post,
    Path = ["/tags"],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"resourceArn">>, <<"ResourceArn">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Simulates a provisioned device by sending an uplink data payload of
%% `Hello'.
test_wireless_device(Client, Id, Input) ->
    test_wireless_device(Client, Id, Input, []).
test_wireless_device(Client, Id, Input0, Options) ->
    Method = post,
    Path = ["/wireless-devices/", aws_util:encode_uri(Id), "/test"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Removes one or more tags from a resource.
untag_resource(Client, Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input0, Options) ->
    Method = delete,
    Path = ["/tags"],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"resourceArn">>, <<"ResourceArn">>},
                     {<<"tagKeys">>, <<"TagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates properties of a destination.
update_destination(Client, Name, Input) ->
    update_destination(Client, Name, Input, []).
update_destination(Client, Name, Input0, Options) ->
    Method = patch,
    Path = ["/destinations/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates properties of a partner account.
update_partner_account(Client, PartnerAccountId, Input) ->
    update_partner_account(Client, PartnerAccountId, Input, []).
update_partner_account(Client, PartnerAccountId, Input0, Options) ->
    Method = patch,
    Path = ["/partner-accounts/", aws_util:encode_uri(PartnerAccountId), ""],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"partnerType">>, <<"PartnerType">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates properties of a wireless device.
update_wireless_device(Client, Id, Input) ->
    update_wireless_device(Client, Id, Input, []).
update_wireless_device(Client, Id, Input0, Options) ->
    Method = patch,
    Path = ["/wireless-devices/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates properties of a wireless gateway.
update_wireless_gateway(Client, Id, Input) ->
    update_wireless_gateway(Client, Id, Input, []).
update_wireless_gateway(Client, Id, Input0, Options) ->
    Method = patch,
    Path = ["/wireless-gateways/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%%====================================================================
%% Internal functions
%%====================================================================

-spec request(aws_client:aws_client(), atom(), iolist(), list(),
              list(), map() | undefined, list(), pos_integer() | undefined) ->
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map(),
    Error :: map().
request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) ->
    Client1 = Client#{service => <<"iotwireless">>},
    Host = build_host(<<"api.iotwireless">>, Client1),
    URL0 = build_url(Host, Path, Client1),
    URL = aws_request:add_query(URL0, Query),
    AdditionalHeaders = [ {<<"Host">>, Host}
                        , {<<"Content-Type">>, <<"application/x-amz-json-1.1">>}
                        ],
    Headers1 = aws_request:add_headers(AdditionalHeaders, Headers0),

    Payload =
      case proplists:get_value(should_send_body_as_binary, Options) of
        true ->
          maps:get(<<"Body">>, Input, <<"">>);
        undefined ->
          encode_payload(Input)
      end,

    MethodBin = aws_request:method_to_binary(Method),
    SignedHeaders = aws_request:sign_request(Client1, MethodBin, URL, Headers1, Payload),
    Response = hackney:request(Method, URL, SignedHeaders, Payload, Options),
    handle_response(Response, SuccessStatusCode).

handle_response({ok, StatusCode, ResponseHeaders, Client}, SuccessStatusCode)
  when StatusCode =:= 200;
       StatusCode =:= 202;
       StatusCode =:= 204;
       StatusCode =:= SuccessStatusCode ->
    case hackney:body(Client) of
        {ok, <<>>} when StatusCode =:= 200;
                        StatusCode =:= SuccessStatusCode ->
            {ok, #{}, {StatusCode, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = jsx:decode(Body),
            {ok, Result, {StatusCode, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}, _) ->
    {ok, Body} = hackney:body(Client),
    Error = jsx:decode(Body),
    {error, Error, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}, _) ->
  {error, Reason}.

build_host(_EndpointPrefix, #{region := <<"local">>, endpoint := Endpoint}) ->
    Endpoint;
build_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
build_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

build_url(Host, Path0, Client) ->
    Proto = maps:get(proto, Client),
    Path = erlang:iolist_to_binary(Path0),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, Path], <<"">>).

-spec encode_payload(undefined | map()) -> binary().
encode_payload(undefined) ->
  <<>>;
encode_payload(Input) ->
  jsx:encode(Input).
