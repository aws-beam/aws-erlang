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
         create_channel/2,
         create_channel/3,
         create_input/2,
         create_input/3,
         create_input_security_group/2,
         create_input_security_group/3,
         create_multiplex/2,
         create_multiplex/3,
         create_multiplex_program/3,
         create_multiplex_program/4,
         create_tags/3,
         create_tags/4,
         delete_channel/3,
         delete_channel/4,
         delete_input/3,
         delete_input/4,
         delete_input_security_group/3,
         delete_input_security_group/4,
         delete_multiplex/3,
         delete_multiplex/4,
         delete_multiplex_program/4,
         delete_multiplex_program/5,
         delete_reservation/3,
         delete_reservation/4,
         delete_schedule/3,
         delete_schedule/4,
         delete_tags/3,
         delete_tags/4,
         describe_channel/2,
         describe_channel/3,
         describe_input/2,
         describe_input/3,
         describe_input_device/2,
         describe_input_device/3,
         describe_input_device_thumbnail/3,
         describe_input_device_thumbnail/4,
         describe_input_security_group/2,
         describe_input_security_group/3,
         describe_multiplex/2,
         describe_multiplex/3,
         describe_multiplex_program/3,
         describe_multiplex_program/4,
         describe_offering/2,
         describe_offering/3,
         describe_reservation/2,
         describe_reservation/3,
         describe_schedule/4,
         describe_schedule/5,
         list_channels/3,
         list_channels/4,
         list_input_device_transfers/4,
         list_input_device_transfers/5,
         list_input_devices/3,
         list_input_devices/4,
         list_input_security_groups/3,
         list_input_security_groups/4,
         list_inputs/3,
         list_inputs/4,
         list_multiplex_programs/4,
         list_multiplex_programs/5,
         list_multiplexes/3,
         list_multiplexes/4,
         list_offerings/13,
         list_offerings/14,
         list_reservations/11,
         list_reservations/12,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         purchase_offering/3,
         purchase_offering/4,
         reject_input_device_transfer/3,
         reject_input_device_transfer/4,
         start_channel/3,
         start_channel/4,
         start_multiplex/3,
         start_multiplex/4,
         stop_channel/3,
         stop_channel/4,
         stop_multiplex/3,
         stop_multiplex/4,
         transfer_input_device/3,
         transfer_input_device/4,
         update_channel/3,
         update_channel/4,
         update_channel_class/3,
         update_channel_class/4,
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
         update_reservation/3,
         update_reservation/4]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Accept an incoming input device transfer.
%%
%% The ownership of the device will transfer to your AWS account.
accept_input_device_transfer(Client, InputDeviceId, Input) ->
    accept_input_device_transfer(Client, InputDeviceId, Input, []).
accept_input_device_transfer(Client, InputDeviceId, Input0, Options) ->
    Method = post,
    Path = ["/prod/inputDevices/", aws_util:encode_uri(InputDeviceId), "/accept"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Starts delete of resources.
batch_delete(Client, Input) ->
    batch_delete(Client, Input, []).
batch_delete(Client, Input0, Options) ->
    Method = post,
    Path = ["/prod/batch/delete"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Starts existing resources
batch_start(Client, Input) ->
    batch_start(Client, Input, []).
batch_start(Client, Input0, Options) ->
    Method = post,
    Path = ["/prod/batch/start"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Stops running resources
batch_stop(Client, Input) ->
    batch_stop(Client, Input, []).
batch_stop(Client, Input0, Options) ->
    Method = post,
    Path = ["/prod/batch/stop"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Update a channel schedule
batch_update_schedule(Client, ChannelId, Input) ->
    batch_update_schedule(Client, ChannelId, Input, []).
batch_update_schedule(Client, ChannelId, Input0, Options) ->
    Method = put,
    Path = ["/prod/channels/", aws_util:encode_uri(ChannelId), "/schedule"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Cancel an input device transfer that you have requested.
cancel_input_device_transfer(Client, InputDeviceId, Input) ->
    cancel_input_device_transfer(Client, InputDeviceId, Input, []).
cancel_input_device_transfer(Client, InputDeviceId, Input0, Options) ->
    Method = post,
    Path = ["/prod/inputDevices/", aws_util:encode_uri(InputDeviceId), "/cancel"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new channel
create_channel(Client, Input) ->
    create_channel(Client, Input, []).
create_channel(Client, Input0, Options) ->
    Method = post,
    Path = ["/prod/channels"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Create an input
create_input(Client, Input) ->
    create_input(Client, Input, []).
create_input(Client, Input0, Options) ->
    Method = post,
    Path = ["/prod/inputs"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a Input Security Group
create_input_security_group(Client, Input) ->
    create_input_security_group(Client, Input, []).
create_input_security_group(Client, Input0, Options) ->
    Method = post,
    Path = ["/prod/inputSecurityGroups"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Create a new multiplex.
create_multiplex(Client, Input) ->
    create_multiplex(Client, Input, []).
create_multiplex(Client, Input0, Options) ->
    Method = post,
    Path = ["/prod/multiplexes"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Create a new program in the multiplex.
create_multiplex_program(Client, MultiplexId, Input) ->
    create_multiplex_program(Client, MultiplexId, Input, []).
create_multiplex_program(Client, MultiplexId, Input0, Options) ->
    Method = post,
    Path = ["/prod/multiplexes/", aws_util:encode_uri(MultiplexId), "/programs"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Create tags for a resource
create_tags(Client, ResourceArn, Input) ->
    create_tags(Client, ResourceArn, Input, []).
create_tags(Client, ResourceArn, Input0, Options) ->
    Method = post,
    Path = ["/prod/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Starts deletion of channel.
%%
%% The associated outputs are also deleted.
delete_channel(Client, ChannelId, Input) ->
    delete_channel(Client, ChannelId, Input, []).
delete_channel(Client, ChannelId, Input0, Options) ->
    Method = delete,
    Path = ["/prod/channels/", aws_util:encode_uri(ChannelId), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the input end point
delete_input(Client, InputId, Input) ->
    delete_input(Client, InputId, Input, []).
delete_input(Client, InputId, Input0, Options) ->
    Method = delete,
    Path = ["/prod/inputs/", aws_util:encode_uri(InputId), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an Input Security Group
delete_input_security_group(Client, InputSecurityGroupId, Input) ->
    delete_input_security_group(Client, InputSecurityGroupId, Input, []).
delete_input_security_group(Client, InputSecurityGroupId, Input0, Options) ->
    Method = delete,
    Path = ["/prod/inputSecurityGroups/", aws_util:encode_uri(InputSecurityGroupId), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Delete a multiplex.
%%
%% The multiplex must be idle.
delete_multiplex(Client, MultiplexId, Input) ->
    delete_multiplex(Client, MultiplexId, Input, []).
delete_multiplex(Client, MultiplexId, Input0, Options) ->
    Method = delete,
    Path = ["/prod/multiplexes/", aws_util:encode_uri(MultiplexId), ""],
    SuccessStatusCode = 202,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Delete a program from a multiplex.
delete_multiplex_program(Client, MultiplexId, ProgramName, Input) ->
    delete_multiplex_program(Client, MultiplexId, ProgramName, Input, []).
delete_multiplex_program(Client, MultiplexId, ProgramName, Input0, Options) ->
    Method = delete,
    Path = ["/prod/multiplexes/", aws_util:encode_uri(MultiplexId), "/programs/", aws_util:encode_uri(ProgramName), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Delete an expired reservation.
delete_reservation(Client, ReservationId, Input) ->
    delete_reservation(Client, ReservationId, Input, []).
delete_reservation(Client, ReservationId, Input0, Options) ->
    Method = delete,
    Path = ["/prod/reservations/", aws_util:encode_uri(ReservationId), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Delete all schedule actions on a channel.
delete_schedule(Client, ChannelId, Input) ->
    delete_schedule(Client, ChannelId, Input, []).
delete_schedule(Client, ChannelId, Input0, Options) ->
    Method = delete,
    Path = ["/prod/channels/", aws_util:encode_uri(ChannelId), "/schedule"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Removes tags for a resource
delete_tags(Client, ResourceArn, Input) ->
    delete_tags(Client, ResourceArn, Input, []).
delete_tags(Client, ResourceArn, Input0, Options) ->
    Method = delete,
    Path = ["/prod/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"tagKeys">>, <<"TagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Gets details about a channel
describe_channel(Client, ChannelId)
  when is_map(Client) ->
    describe_channel(Client, ChannelId, []).
describe_channel(Client, ChannelId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/prod/channels/", aws_util:encode_uri(ChannelId), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Produces details about an input
describe_input(Client, InputId)
  when is_map(Client) ->
    describe_input(Client, InputId, []).
describe_input(Client, InputId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/prod/inputs/", aws_util:encode_uri(InputId), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the details for the input device
describe_input_device(Client, InputDeviceId)
  when is_map(Client) ->
    describe_input_device(Client, InputDeviceId, []).
describe_input_device(Client, InputDeviceId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/prod/inputDevices/", aws_util:encode_uri(InputDeviceId), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get the latest thumbnail data for the input device.
describe_input_device_thumbnail(Client, InputDeviceId, Accept)
  when is_map(Client) ->
    describe_input_device_thumbnail(Client, InputDeviceId, Accept, []).
describe_input_device_thumbnail(Client, InputDeviceId, Accept, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/prod/inputDevices/", aws_util:encode_uri(InputDeviceId), "/thumbnailData"],
    SuccessStatusCode = 200,

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
describe_input_security_group(Client, InputSecurityGroupId)
  when is_map(Client) ->
    describe_input_security_group(Client, InputSecurityGroupId, []).
describe_input_security_group(Client, InputSecurityGroupId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/prod/inputSecurityGroups/", aws_util:encode_uri(InputSecurityGroupId), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets details about a multiplex.
describe_multiplex(Client, MultiplexId)
  when is_map(Client) ->
    describe_multiplex(Client, MultiplexId, []).
describe_multiplex(Client, MultiplexId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/prod/multiplexes/", aws_util:encode_uri(MultiplexId), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get the details for a program in a multiplex.
describe_multiplex_program(Client, MultiplexId, ProgramName)
  when is_map(Client) ->
    describe_multiplex_program(Client, MultiplexId, ProgramName, []).
describe_multiplex_program(Client, MultiplexId, ProgramName, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/prod/multiplexes/", aws_util:encode_uri(MultiplexId), "/programs/", aws_util:encode_uri(ProgramName), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get details for an offering.
describe_offering(Client, OfferingId)
  when is_map(Client) ->
    describe_offering(Client, OfferingId, []).
describe_offering(Client, OfferingId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/prod/offerings/", aws_util:encode_uri(OfferingId), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get details for a reservation.
describe_reservation(Client, ReservationId)
  when is_map(Client) ->
    describe_reservation(Client, ReservationId, []).
describe_reservation(Client, ReservationId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/prod/reservations/", aws_util:encode_uri(ReservationId), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get a channel schedule
describe_schedule(Client, ChannelId, MaxResults, NextToken)
  when is_map(Client) ->
    describe_schedule(Client, ChannelId, MaxResults, NextToken, []).
describe_schedule(Client, ChannelId, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/prod/channels/", aws_util:encode_uri(ChannelId), "/schedule"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Produces list of channels that have been created
list_channels(Client, MaxResults, NextToken)
  when is_map(Client) ->
    list_channels(Client, MaxResults, NextToken, []).
list_channels(Client, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/prod/channels"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List input devices that are currently being transferred.
%%
%% List input devices that you are transferring from your AWS account or
%% input devices that another AWS account is transferring to you.
list_input_device_transfers(Client, MaxResults, NextToken, TransferType)
  when is_map(Client) ->
    list_input_device_transfers(Client, MaxResults, NextToken, TransferType, []).
list_input_device_transfers(Client, MaxResults, NextToken, TransferType, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/prod/inputDeviceTransfers"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken},
        {<<"transferType">>, TransferType}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List input devices
list_input_devices(Client, MaxResults, NextToken)
  when is_map(Client) ->
    list_input_devices(Client, MaxResults, NextToken, []).
list_input_devices(Client, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/prod/inputDevices"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Produces a list of Input Security Groups for an account
list_input_security_groups(Client, MaxResults, NextToken)
  when is_map(Client) ->
    list_input_security_groups(Client, MaxResults, NextToken, []).
list_input_security_groups(Client, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/prod/inputSecurityGroups"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Produces list of inputs that have been created
list_inputs(Client, MaxResults, NextToken)
  when is_map(Client) ->
    list_inputs(Client, MaxResults, NextToken, []).
list_inputs(Client, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/prod/inputs"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List the programs that currently exist for a specific multiplex.
list_multiplex_programs(Client, MultiplexId, MaxResults, NextToken)
  when is_map(Client) ->
    list_multiplex_programs(Client, MultiplexId, MaxResults, NextToken, []).
list_multiplex_programs(Client, MultiplexId, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/prod/multiplexes/", aws_util:encode_uri(MultiplexId), "/programs"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieve a list of the existing multiplexes.
list_multiplexes(Client, MaxResults, NextToken)
  when is_map(Client) ->
    list_multiplexes(Client, MaxResults, NextToken, []).
list_multiplexes(Client, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/prod/multiplexes"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List offerings available for purchase.
list_offerings(Client, ChannelClass, ChannelConfiguration, Codec, Duration, MaxResults, MaximumBitrate, MaximumFramerate, NextToken, Resolution, ResourceType, SpecialFeature, VideoQuality)
  when is_map(Client) ->
    list_offerings(Client, ChannelClass, ChannelConfiguration, Codec, Duration, MaxResults, MaximumBitrate, MaximumFramerate, NextToken, Resolution, ResourceType, SpecialFeature, VideoQuality, []).
list_offerings(Client, ChannelClass, ChannelConfiguration, Codec, Duration, MaxResults, MaximumBitrate, MaximumFramerate, NextToken, Resolution, ResourceType, SpecialFeature, VideoQuality, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/prod/offerings"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"channelClass">>, ChannelClass},
        {<<"channelConfiguration">>, ChannelConfiguration},
        {<<"codec">>, Codec},
        {<<"duration">>, Duration},
        {<<"maxResults">>, MaxResults},
        {<<"maximumBitrate">>, MaximumBitrate},
        {<<"maximumFramerate">>, MaximumFramerate},
        {<<"nextToken">>, NextToken},
        {<<"resolution">>, Resolution},
        {<<"resourceType">>, ResourceType},
        {<<"specialFeature">>, SpecialFeature},
        {<<"videoQuality">>, VideoQuality}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List purchased reservations.
list_reservations(Client, ChannelClass, Codec, MaxResults, MaximumBitrate, MaximumFramerate, NextToken, Resolution, ResourceType, SpecialFeature, VideoQuality)
  when is_map(Client) ->
    list_reservations(Client, ChannelClass, Codec, MaxResults, MaximumBitrate, MaximumFramerate, NextToken, Resolution, ResourceType, SpecialFeature, VideoQuality, []).
list_reservations(Client, ChannelClass, Codec, MaxResults, MaximumBitrate, MaximumFramerate, NextToken, Resolution, ResourceType, SpecialFeature, VideoQuality, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/prod/reservations"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"channelClass">>, ChannelClass},
        {<<"codec">>, Codec},
        {<<"maxResults">>, MaxResults},
        {<<"maximumBitrate">>, MaximumBitrate},
        {<<"maximumFramerate">>, MaximumFramerate},
        {<<"nextToken">>, NextToken},
        {<<"resolution">>, Resolution},
        {<<"resourceType">>, ResourceType},
        {<<"specialFeature">>, SpecialFeature},
        {<<"videoQuality">>, VideoQuality}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Produces list of tags that have been created for a resource
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, []).
list_tags_for_resource(Client, ResourceArn, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/prod/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Purchase an offering and create a reservation.
purchase_offering(Client, OfferingId, Input) ->
    purchase_offering(Client, OfferingId, Input, []).
purchase_offering(Client, OfferingId, Input0, Options) ->
    Method = post,
    Path = ["/prod/offerings/", aws_util:encode_uri(OfferingId), "/purchase"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Reject the transfer of the specified input device to your AWS
%% account.
reject_input_device_transfer(Client, InputDeviceId, Input) ->
    reject_input_device_transfer(Client, InputDeviceId, Input, []).
reject_input_device_transfer(Client, InputDeviceId, Input0, Options) ->
    Method = post,
    Path = ["/prod/inputDevices/", aws_util:encode_uri(InputDeviceId), "/reject"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Starts an existing channel
start_channel(Client, ChannelId, Input) ->
    start_channel(Client, ChannelId, Input, []).
start_channel(Client, ChannelId, Input0, Options) ->
    Method = post,
    Path = ["/prod/channels/", aws_util:encode_uri(ChannelId), "/start"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Start (run) the multiplex.
%%
%% Starting the multiplex does not start the channels. You must explicitly
%% start each channel.
start_multiplex(Client, MultiplexId, Input) ->
    start_multiplex(Client, MultiplexId, Input, []).
start_multiplex(Client, MultiplexId, Input0, Options) ->
    Method = post,
    Path = ["/prod/multiplexes/", aws_util:encode_uri(MultiplexId), "/start"],
    SuccessStatusCode = 202,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Stops a running channel
stop_channel(Client, ChannelId, Input) ->
    stop_channel(Client, ChannelId, Input, []).
stop_channel(Client, ChannelId, Input0, Options) ->
    Method = post,
    Path = ["/prod/channels/", aws_util:encode_uri(ChannelId), "/stop"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Stops a running multiplex.
%%
%% If the multiplex isn't running, this action has no effect.
stop_multiplex(Client, MultiplexId, Input) ->
    stop_multiplex(Client, MultiplexId, Input, []).
stop_multiplex(Client, MultiplexId, Input0, Options) ->
    Method = post,
    Path = ["/prod/multiplexes/", aws_util:encode_uri(MultiplexId), "/stop"],
    SuccessStatusCode = 202,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Start an input device transfer to another AWS account.
%%
%% After you make the request, the other account must accept or reject the
%% transfer.
transfer_input_device(Client, InputDeviceId, Input) ->
    transfer_input_device(Client, InputDeviceId, Input, []).
transfer_input_device(Client, InputDeviceId, Input0, Options) ->
    Method = post,
    Path = ["/prod/inputDevices/", aws_util:encode_uri(InputDeviceId), "/transfer"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a channel.
update_channel(Client, ChannelId, Input) ->
    update_channel(Client, ChannelId, Input, []).
update_channel(Client, ChannelId, Input0, Options) ->
    Method = put,
    Path = ["/prod/channels/", aws_util:encode_uri(ChannelId), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Changes the class of the channel.
update_channel_class(Client, ChannelId, Input) ->
    update_channel_class(Client, ChannelId, Input, []).
update_channel_class(Client, ChannelId, Input0, Options) ->
    Method = put,
    Path = ["/prod/channels/", aws_util:encode_uri(ChannelId), "/channelClass"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an input.
update_input(Client, InputId, Input) ->
    update_input(Client, InputId, Input, []).
update_input(Client, InputId, Input0, Options) ->
    Method = put,
    Path = ["/prod/inputs/", aws_util:encode_uri(InputId), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the parameters for the input device.
update_input_device(Client, InputDeviceId, Input) ->
    update_input_device(Client, InputDeviceId, Input, []).
update_input_device(Client, InputDeviceId, Input0, Options) ->
    Method = put,
    Path = ["/prod/inputDevices/", aws_util:encode_uri(InputDeviceId), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Update an Input Security Group's Whilelists.
update_input_security_group(Client, InputSecurityGroupId, Input) ->
    update_input_security_group(Client, InputSecurityGroupId, Input, []).
update_input_security_group(Client, InputSecurityGroupId, Input0, Options) ->
    Method = put,
    Path = ["/prod/inputSecurityGroups/", aws_util:encode_uri(InputSecurityGroupId), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a multiplex.
update_multiplex(Client, MultiplexId, Input) ->
    update_multiplex(Client, MultiplexId, Input, []).
update_multiplex(Client, MultiplexId, Input0, Options) ->
    Method = put,
    Path = ["/prod/multiplexes/", aws_util:encode_uri(MultiplexId), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Update a program in a multiplex.
update_multiplex_program(Client, MultiplexId, ProgramName, Input) ->
    update_multiplex_program(Client, MultiplexId, ProgramName, Input, []).
update_multiplex_program(Client, MultiplexId, ProgramName, Input0, Options) ->
    Method = put,
    Path = ["/prod/multiplexes/", aws_util:encode_uri(MultiplexId), "/programs/", aws_util:encode_uri(ProgramName), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Update reservation.
update_reservation(Client, ReservationId, Input) ->
    update_reservation(Client, ReservationId, Input, []).
update_reservation(Client, ReservationId, Input0, Options) ->
    Method = put,
    Path = ["/prod/reservations/", aws_util:encode_uri(ReservationId), ""],
    SuccessStatusCode = 200,

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
    Client1 = Client#{service => <<"medialive">>},
    Host = build_host(<<"medialive">>, Client1),
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
