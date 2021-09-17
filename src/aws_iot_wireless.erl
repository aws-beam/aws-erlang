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
         get_destination/4,
         get_destination/5,
         get_device_profile/2,
         get_device_profile/4,
         get_device_profile/5,
         get_partner_account/3,
         get_partner_account/5,
         get_partner_account/6,
         get_service_endpoint/1,
         get_service_endpoint/3,
         get_service_endpoint/4,
         get_service_profile/2,
         get_service_profile/4,
         get_service_profile/5,
         get_wireless_device/3,
         get_wireless_device/5,
         get_wireless_device/6,
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
         list_partner_accounts/1,
         list_partner_accounts/3,
         list_partner_accounts/4,
         list_service_profiles/1,
         list_service_profiles/3,
         list_service_profiles/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         list_wireless_devices/1,
         list_wireless_devices/3,
         list_wireless_devices/4,
         list_wireless_gateway_task_definitions/1,
         list_wireless_gateway_task_definitions/3,
         list_wireless_gateway_task_definitions/4,
         list_wireless_gateways/1,
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
associate_aws_account_with_partner_account(Client, Input0, Options0) ->
    Method = post,
    Path = ["/partner-accounts"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a service profile.
delete_service_profile(Client, Id, Input) ->
    delete_service_profile(Client, Id, Input, []).
delete_service_profile(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/service-profiles/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a wireless gateway task definition.
%%
%% Deleting this task definition does not affect tasks that are currently in
%% progress.
delete_wireless_gateway_task_definition(Client, Id, Input) ->
    delete_wireless_gateway_task_definition(Client, Id, Input, []).
delete_wireless_gateway_task_definition(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/wireless-gateway-task-definitions/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Disassociates your AWS account from a partner account.
%%
%% If `PartnerAccountId' and `PartnerType' are `null', disassociates your AWS
%% account from all partner accounts.
disassociate_aws_account_from_partner_account(Client, PartnerAccountId, Input) ->
    disassociate_aws_account_from_partner_account(Client, PartnerAccountId, Input, []).
disassociate_aws_account_from_partner_account(Client, PartnerAccountId, Input0, Options0) ->
    Method = delete,
    Path = ["/partner-accounts/", aws_util:encode_uri(PartnerAccountId), ""],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"partnerType">>, <<"PartnerType">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Disassociates a wireless device from its currently associated thing.
disassociate_wireless_device_from_thing(Client, Id, Input) ->
    disassociate_wireless_device_from_thing(Client, Id, Input, []).
disassociate_wireless_device_from_thing(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/wireless-devices/", aws_util:encode_uri(Id), "/thing"],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a partner account.
%%
%% If `PartnerAccountId' and `PartnerType' are `null', returns all partner
%% accounts.
get_partner_account(Client, PartnerAccountId, PartnerType)
  when is_map(Client) ->
    get_partner_account(Client, PartnerAccountId, PartnerType, #{}, #{}).

get_partner_account(Client, PartnerAccountId, PartnerType, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_partner_account(Client, PartnerAccountId, PartnerType, QueryMap, HeadersMap, []).

get_partner_account(Client, PartnerAccountId, PartnerType, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/partner-accounts/", aws_util:encode_uri(PartnerAccountId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"partnerType">>, PartnerType}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the account-specific endpoint for Configuration and Update
%% Server (CUPS) protocol or LoRaWAN Network Server (LNS) connections.
get_service_endpoint(Client)
  when is_map(Client) ->
    get_service_endpoint(Client, #{}, #{}).

get_service_endpoint(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_service_endpoint(Client, QueryMap, HeadersMap, []).

get_service_endpoint(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/service-endpoint"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
    get_wireless_device_statistics(Client, WirelessDeviceId, #{}, #{}).

get_wireless_device_statistics(Client, WirelessDeviceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_wireless_device_statistics(Client, WirelessDeviceId, QueryMap, HeadersMap, []).

get_wireless_device_statistics(Client, WirelessDeviceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/wireless-devices/", aws_util:encode_uri(WirelessDeviceId), "/statistics"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
    get_wireless_gateway_certificate(Client, Id, #{}, #{}).

get_wireless_gateway_certificate(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_wireless_gateway_certificate(Client, Id, QueryMap, HeadersMap, []).

get_wireless_gateway_certificate(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/wireless-gateways/", aws_util:encode_uri(Id), "/certificate"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
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
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"resourceArn">>, ResourceArn}
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
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"destinationName">>, maps:get(<<"destinationName">>, QueryMap, undefined)},
        {<<"deviceProfileId">>, maps:get(<<"deviceProfileId">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
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
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Sends a decrypted application data frame to a device.
send_data_to_wireless_device(Client, Id, Input) ->
    send_data_to_wireless_device(Client, Id, Input, []).
send_data_to_wireless_device(Client, Id, Input0, Options0) ->
    Method = post,
    Path = ["/wireless-devices/", aws_util:encode_uri(Id), "/data"],
    SuccessStatusCode = 202,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"partnerType">>, <<"PartnerType">>}
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
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
      case proplists:get_value(send_body_as_binary, Options) of
        true ->
          maps:get(<<"Body">>, Input, <<"">>);
        false ->
          encode_payload(Input)
      end,

    MethodBin = aws_request:method_to_binary(Method),
    SignedHeaders = aws_request:sign_request(Client1, MethodBin, URL, Headers1, Payload),
    Response = hackney:request(Method, URL, SignedHeaders, Payload, Options),
    DecodeBody = not proplists:get_value(receive_body_as_binary, Options),
    handle_response(Response, SuccessStatusCode, DecodeBody).

handle_response({ok, StatusCode, ResponseHeaders, Client}, SuccessStatusCode, DecodeBody)
  when StatusCode =:= 200;
       StatusCode =:= 202;
       StatusCode =:= 204;
       StatusCode =:= SuccessStatusCode ->
    case hackney:body(Client) of
        {ok, <<>>} when StatusCode =:= 200;
                        StatusCode =:= SuccessStatusCode ->
            {ok, #{}, {StatusCode, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = case DecodeBody of
                       true -> jsx:decode(Body);
                       false -> #{<<"Body">> => Body}
                     end,
            {ok, Result, {StatusCode, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}, _, _DecodeBody) ->
    {ok, Body} = hackney:body(Client),
    Error = jsx:decode(Body),
    {error, Error, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}, _, _DecodeBody) ->
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
