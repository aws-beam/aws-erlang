%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc The Amazon Chime SDK Messaging APIs in this section allow software
%% developers to send and receive messages in custom messaging applications.
%%
%% These APIs depend on the frameworks provided by the Amazon Chime SDK
%% Identity APIs. For more information about the messaging APIs, see Amazon
%% Chime SDK messaging.
-module(aws_chime_sdk_messaging).

-export([associate_channel_flow/3,
         associate_channel_flow/4,
         batch_create_channel_membership/3,
         batch_create_channel_membership/4,
         channel_flow_callback/3,
         channel_flow_callback/4,
         create_channel/2,
         create_channel/3,
         create_channel_ban/3,
         create_channel_ban/4,
         create_channel_flow/2,
         create_channel_flow/3,
         create_channel_membership/3,
         create_channel_membership/4,
         create_channel_moderator/3,
         create_channel_moderator/4,
         delete_channel/3,
         delete_channel/4,
         delete_channel_ban/4,
         delete_channel_ban/5,
         delete_channel_flow/3,
         delete_channel_flow/4,
         delete_channel_membership/4,
         delete_channel_membership/5,
         delete_channel_message/4,
         delete_channel_message/5,
         delete_channel_moderator/4,
         delete_channel_moderator/5,
         delete_messaging_streaming_configurations/3,
         delete_messaging_streaming_configurations/4,
         describe_channel/3,
         describe_channel/5,
         describe_channel/6,
         describe_channel_ban/4,
         describe_channel_ban/6,
         describe_channel_ban/7,
         describe_channel_flow/2,
         describe_channel_flow/4,
         describe_channel_flow/5,
         describe_channel_membership/4,
         describe_channel_membership/6,
         describe_channel_membership/7,
         describe_channel_membership_for_app_instance_user/4,
         describe_channel_membership_for_app_instance_user/6,
         describe_channel_membership_for_app_instance_user/7,
         describe_channel_moderated_by_app_instance_user/4,
         describe_channel_moderated_by_app_instance_user/6,
         describe_channel_moderated_by_app_instance_user/7,
         describe_channel_moderator/4,
         describe_channel_moderator/6,
         describe_channel_moderator/7,
         disassociate_channel_flow/4,
         disassociate_channel_flow/5,
         get_channel_membership_preferences/4,
         get_channel_membership_preferences/6,
         get_channel_membership_preferences/7,
         get_channel_message/4,
         get_channel_message/6,
         get_channel_message/7,
         get_channel_message_status/4,
         get_channel_message_status/6,
         get_channel_message_status/7,
         get_messaging_session_endpoint/1,
         get_messaging_session_endpoint/3,
         get_messaging_session_endpoint/4,
         get_messaging_streaming_configurations/2,
         get_messaging_streaming_configurations/4,
         get_messaging_streaming_configurations/5,
         list_channel_bans/3,
         list_channel_bans/5,
         list_channel_bans/6,
         list_channel_flows/2,
         list_channel_flows/4,
         list_channel_flows/5,
         list_channel_memberships/3,
         list_channel_memberships/5,
         list_channel_memberships/6,
         list_channel_memberships_for_app_instance_user/2,
         list_channel_memberships_for_app_instance_user/4,
         list_channel_memberships_for_app_instance_user/5,
         list_channel_messages/3,
         list_channel_messages/5,
         list_channel_messages/6,
         list_channel_moderators/3,
         list_channel_moderators/5,
         list_channel_moderators/6,
         list_channels/3,
         list_channels/5,
         list_channels/6,
         list_channels_associated_with_channel_flow/2,
         list_channels_associated_with_channel_flow/4,
         list_channels_associated_with_channel_flow/5,
         list_channels_moderated_by_app_instance_user/2,
         list_channels_moderated_by_app_instance_user/4,
         list_channels_moderated_by_app_instance_user/5,
         list_sub_channels/3,
         list_sub_channels/5,
         list_sub_channels/6,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         put_channel_membership_preferences/4,
         put_channel_membership_preferences/5,
         put_messaging_streaming_configurations/3,
         put_messaging_streaming_configurations/4,
         redact_channel_message/4,
         redact_channel_message/5,
         search_channels/2,
         search_channels/3,
         send_channel_message/3,
         send_channel_message/4,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_channel/3,
         update_channel/4,
         update_channel_flow/3,
         update_channel_flow/4,
         update_channel_message/4,
         update_channel_message/5,
         update_channel_read_marker/3,
         update_channel_read_marker/4]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Associates a channel flow with a channel.
%%
%% Once associated, all messages to that channel go through channel flow
%% processors. To stop processing, use the `DisassociateChannelFlow' API.
%%
%% Only administrators or channel moderators can associate a channel flow.
%% The `x-amz-chime-bearer' request header is mandatory. Use the
%% `AppInstanceUserArn' of the user that makes the API call as the value
%% in the header.
associate_channel_flow(Client, ChannelArn, Input) ->
    associate_channel_flow(Client, ChannelArn, Input, []).
associate_channel_flow(Client, ChannelArn, Input0, Options0) ->
    Method = put,
    Path = ["/channels/", aws_util:encode_uri(ChannelArn), "/channel-flow"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"x-amz-chime-bearer">>, <<"ChimeBearer">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Adds a specified number of users to a channel.
batch_create_channel_membership(Client, ChannelArn, Input) ->
    batch_create_channel_membership(Client, ChannelArn, Input, []).
batch_create_channel_membership(Client, ChannelArn, Input0, Options0) ->
    Method = post,
    Path = ["/channels/", aws_util:encode_uri(ChannelArn), "/memberships?operation=batch-create"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"x-amz-chime-bearer">>, <<"ChimeBearer">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Calls back Chime SDK Messaging with a processing response message.
%%
%% This should be invoked from the processor Lambda. This is a developer API.
%%
%% You can return one of the following processing responses:
%%
%% <ul> <li> Update message content or metadata
%%
%% </li> <li> Deny a message
%%
%% </li> <li> Make no changes to the message
%%
%% </li> </ul>
channel_flow_callback(Client, ChannelArn, Input) ->
    channel_flow_callback(Client, ChannelArn, Input, []).
channel_flow_callback(Client, ChannelArn, Input0, Options0) ->
    Method = post,
    Path = ["/channels/", aws_util:encode_uri(ChannelArn), "?operation=channel-flow-callback"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a channel to which you can add users and send messages.
%%
%% Restriction: You can't change a channel's privacy.
%%
%% The `x-amz-chime-bearer' request header is mandatory. Use the
%% `AppInstanceUserArn' of the user that makes the API call as the value
%% in the header.
create_channel(Client, Input) ->
    create_channel(Client, Input, []).
create_channel(Client, Input0, Options0) ->
    Method = post,
    Path = ["/channels"],
    SuccessStatusCode = 201,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"x-amz-chime-bearer">>, <<"ChimeBearer">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Permanently bans a member from a channel.
%%
%% Moderators can't add banned members to a channel. To undo a ban, you
%% first have to `DeleteChannelBan', and then
%% `CreateChannelMembership'. Bans are cleaned up when you delete users
%% or channels.
%%
%% If you ban a user who is already part of a channel, that user is
%% automatically kicked from the channel.
%%
%% The `x-amz-chime-bearer' request header is mandatory. Use the
%% `AppInstanceUserArn' of the user that makes the API call as the value
%% in the header.
create_channel_ban(Client, ChannelArn, Input) ->
    create_channel_ban(Client, ChannelArn, Input, []).
create_channel_ban(Client, ChannelArn, Input0, Options0) ->
    Method = post,
    Path = ["/channels/", aws_util:encode_uri(ChannelArn), "/bans"],
    SuccessStatusCode = 201,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"x-amz-chime-bearer">>, <<"ChimeBearer">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a channel flow, a container for processors.
%%
%% Processors are AWS Lambda functions that perform actions on chat messages,
%% such as stripping out profanity. You can associate channel flows with
%% channels, and the processors in the channel flow then take action on all
%% messages sent to that channel. This is a developer API.
%%
%% Channel flows process the following items:
%%
%% <ol> <li> New and updated messages
%%
%% </li> <li> Persistent and non-persistent messages
%%
%% </li> <li> The Standard message type
%%
%% </li> </ol> Channel flows don't process Control or System messages.
%% For more information about the message types provided by Chime SDK
%% Messaging, refer to Message types in the Amazon Chime developer guide.
create_channel_flow(Client, Input) ->
    create_channel_flow(Client, Input, []).
create_channel_flow(Client, Input0, Options0) ->
    Method = post,
    Path = ["/channel-flows"],
    SuccessStatusCode = 201,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Adds a user to a channel.
%%
%% The `InvitedBy' field in `ChannelMembership' is derived from the
%% request header. A channel member can:
%%
%% <ul> <li> List messages
%%
%% </li> <li> Send messages
%%
%% </li> <li> Receive messages
%%
%% </li> <li> Edit their own messages
%%
%% </li> <li> Leave the channel
%%
%% </li> </ul> Privacy settings impact this action as follows:
%%
%% <ul> <li> Public Channels: You do not need to be a member to list
%% messages, but you must be a member to send messages.
%%
%% </li> <li> Private Channels: You must be a member to list or send
%% messages.
%%
%% </li> </ul> The `x-amz-chime-bearer' request header is mandatory. Use
%% the `AppInstanceUserArn' of the user that makes the API call as the
%% value in the header.
create_channel_membership(Client, ChannelArn, Input) ->
    create_channel_membership(Client, ChannelArn, Input, []).
create_channel_membership(Client, ChannelArn, Input0, Options0) ->
    Method = post,
    Path = ["/channels/", aws_util:encode_uri(ChannelArn), "/memberships"],
    SuccessStatusCode = 201,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"x-amz-chime-bearer">>, <<"ChimeBearer">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new `ChannelModerator'.
%%
%% A channel moderator can:
%%
%% <ul> <li> Add and remove other members of the channel.
%%
%% </li> <li> Add and remove other moderators of the channel.
%%
%% </li> <li> Add and remove user bans for the channel.
%%
%% </li> <li> Redact messages in the channel.
%%
%% </li> <li> List messages in the channel.
%%
%% </li> </ul> The `x-amz-chime-bearer' request header is mandatory. Use
%% the `AppInstanceUserArn' of the user that makes the API call as the
%% value in the header.
create_channel_moderator(Client, ChannelArn, Input) ->
    create_channel_moderator(Client, ChannelArn, Input, []).
create_channel_moderator(Client, ChannelArn, Input0, Options0) ->
    Method = post,
    Path = ["/channels/", aws_util:encode_uri(ChannelArn), "/moderators"],
    SuccessStatusCode = 201,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"x-amz-chime-bearer">>, <<"ChimeBearer">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Immediately makes a channel and its memberships inaccessible and
%% marks them for deletion.
%%
%% This is an irreversible process.
%%
%% The `x-amz-chime-bearer' request header is mandatory. Use the
%% `AppInstanceUserArn' of the user that makes the API call as the value
%% in the header.
delete_channel(Client, ChannelArn, Input) ->
    delete_channel(Client, ChannelArn, Input, []).
delete_channel(Client, ChannelArn, Input0, Options0) ->
    Method = delete,
    Path = ["/channels/", aws_util:encode_uri(ChannelArn), ""],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"x-amz-chime-bearer">>, <<"ChimeBearer">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"sub-channel-id">>, <<"SubChannelId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Removes a user from a channel's ban list.
%%
%% The `x-amz-chime-bearer' request header is mandatory. Use the
%% `AppInstanceUserArn' of the user that makes the API call as the value
%% in the header.
delete_channel_ban(Client, ChannelArn, MemberArn, Input) ->
    delete_channel_ban(Client, ChannelArn, MemberArn, Input, []).
delete_channel_ban(Client, ChannelArn, MemberArn, Input0, Options0) ->
    Method = delete,
    Path = ["/channels/", aws_util:encode_uri(ChannelArn), "/bans/", aws_util:encode_uri(MemberArn), ""],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"x-amz-chime-bearer">>, <<"ChimeBearer">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a channel flow, an irreversible process.
%%
%% This is a developer API.
%%
%% This API works only when the channel flow is not associated with any
%% channel. To get a list of all channels that a channel flow is associated
%% with, use the `ListChannelsAssociatedWithChannelFlow' API. Use the
%% `DisassociateChannelFlow' API to disassociate a channel flow from all
%% channels.
delete_channel_flow(Client, ChannelFlowArn, Input) ->
    delete_channel_flow(Client, ChannelFlowArn, Input, []).
delete_channel_flow(Client, ChannelFlowArn, Input0, Options0) ->
    Method = delete,
    Path = ["/channel-flows/", aws_util:encode_uri(ChannelFlowArn), ""],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Removes a member from a channel.
%%
%% The `x-amz-chime-bearer' request header is mandatory. Use the
%% `AppInstanceUserArn' of the user that makes the API call as the value
%% in the header.
delete_channel_membership(Client, ChannelArn, MemberArn, Input) ->
    delete_channel_membership(Client, ChannelArn, MemberArn, Input, []).
delete_channel_membership(Client, ChannelArn, MemberArn, Input0, Options0) ->
    Method = delete,
    Path = ["/channels/", aws_util:encode_uri(ChannelArn), "/memberships/", aws_util:encode_uri(MemberArn), ""],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"x-amz-chime-bearer">>, <<"ChimeBearer">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"sub-channel-id">>, <<"SubChannelId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a channel message.
%%
%% Only admins can perform this action. Deletion makes messages inaccessible
%% immediately. A background process deletes any revisions created by
%% `UpdateChannelMessage'.
%%
%% The `x-amz-chime-bearer' request header is mandatory. Use the
%% `AppInstanceUserArn' of the user that makes the API call as the value
%% in the header.
delete_channel_message(Client, ChannelArn, MessageId, Input) ->
    delete_channel_message(Client, ChannelArn, MessageId, Input, []).
delete_channel_message(Client, ChannelArn, MessageId, Input0, Options0) ->
    Method = delete,
    Path = ["/channels/", aws_util:encode_uri(ChannelArn), "/messages/", aws_util:encode_uri(MessageId), ""],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"x-amz-chime-bearer">>, <<"ChimeBearer">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"sub-channel-id">>, <<"SubChannelId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a channel moderator.
%%
%% The `x-amz-chime-bearer' request header is mandatory. Use the
%% `AppInstanceUserArn' of the user that makes the API call as the value
%% in the header.
delete_channel_moderator(Client, ChannelArn, ChannelModeratorArn, Input) ->
    delete_channel_moderator(Client, ChannelArn, ChannelModeratorArn, Input, []).
delete_channel_moderator(Client, ChannelArn, ChannelModeratorArn, Input0, Options0) ->
    Method = delete,
    Path = ["/channels/", aws_util:encode_uri(ChannelArn), "/moderators/", aws_util:encode_uri(ChannelModeratorArn), ""],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"x-amz-chime-bearer">>, <<"ChimeBearer">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the streaming configurations for an `AppInstance'.
%%
%% For more information, see Streaming messaging data in the Amazon Chime SDK
%% Developer Guide.
delete_messaging_streaming_configurations(Client, AppInstanceArn, Input) ->
    delete_messaging_streaming_configurations(Client, AppInstanceArn, Input, []).
delete_messaging_streaming_configurations(Client, AppInstanceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/app-instances/", aws_util:encode_uri(AppInstanceArn), "/streaming-configurations"],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Returns the full details of a channel in an Amazon Chime
%% `AppInstance'.
%%
%% The `x-amz-chime-bearer' request header is mandatory. Use the
%% `AppInstanceUserArn' of the user that makes the API call as the value
%% in the header.
describe_channel(Client, ChannelArn, ChimeBearer)
  when is_map(Client) ->
    describe_channel(Client, ChannelArn, ChimeBearer, #{}, #{}).

describe_channel(Client, ChannelArn, ChimeBearer, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_channel(Client, ChannelArn, ChimeBearer, QueryMap, HeadersMap, []).

describe_channel(Client, ChannelArn, ChimeBearer, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/channels/", aws_util:encode_uri(ChannelArn), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"x-amz-chime-bearer">>, ChimeBearer}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the full details of a channel ban.
%%
%% The `x-amz-chime-bearer' request header is mandatory. Use the
%% `AppInstanceUserArn' of the user that makes the API call as the value
%% in the header.
describe_channel_ban(Client, ChannelArn, MemberArn, ChimeBearer)
  when is_map(Client) ->
    describe_channel_ban(Client, ChannelArn, MemberArn, ChimeBearer, #{}, #{}).

describe_channel_ban(Client, ChannelArn, MemberArn, ChimeBearer, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_channel_ban(Client, ChannelArn, MemberArn, ChimeBearer, QueryMap, HeadersMap, []).

describe_channel_ban(Client, ChannelArn, MemberArn, ChimeBearer, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/channels/", aws_util:encode_uri(ChannelArn), "/bans/", aws_util:encode_uri(MemberArn), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"x-amz-chime-bearer">>, ChimeBearer}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the full details of a channel flow in an Amazon Chime
%% `AppInstance'.
%%
%% This is a developer API.
describe_channel_flow(Client, ChannelFlowArn)
  when is_map(Client) ->
    describe_channel_flow(Client, ChannelFlowArn, #{}, #{}).

describe_channel_flow(Client, ChannelFlowArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_channel_flow(Client, ChannelFlowArn, QueryMap, HeadersMap, []).

describe_channel_flow(Client, ChannelFlowArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/channel-flows/", aws_util:encode_uri(ChannelFlowArn), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the full details of a user's channel membership.
%%
%% The `x-amz-chime-bearer' request header is mandatory. Use the
%% `AppInstanceUserArn' of the user that makes the API call as the value
%% in the header.
describe_channel_membership(Client, ChannelArn, MemberArn, ChimeBearer)
  when is_map(Client) ->
    describe_channel_membership(Client, ChannelArn, MemberArn, ChimeBearer, #{}, #{}).

describe_channel_membership(Client, ChannelArn, MemberArn, ChimeBearer, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_channel_membership(Client, ChannelArn, MemberArn, ChimeBearer, QueryMap, HeadersMap, []).

describe_channel_membership(Client, ChannelArn, MemberArn, ChimeBearer, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/channels/", aws_util:encode_uri(ChannelArn), "/memberships/", aws_util:encode_uri(MemberArn), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"x-amz-chime-bearer">>, ChimeBearer}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"sub-channel-id">>, maps:get(<<"sub-channel-id">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the details of a channel based on the membership of the
%% specified `AppInstanceUser'.
%%
%% The `x-amz-chime-bearer' request header is mandatory. Use the
%% `AppInstanceUserArn' of the user that makes the API call as the value
%% in the header.
describe_channel_membership_for_app_instance_user(Client, ChannelArn, AppInstanceUserArn, ChimeBearer)
  when is_map(Client) ->
    describe_channel_membership_for_app_instance_user(Client, ChannelArn, AppInstanceUserArn, ChimeBearer, #{}, #{}).

describe_channel_membership_for_app_instance_user(Client, ChannelArn, AppInstanceUserArn, ChimeBearer, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_channel_membership_for_app_instance_user(Client, ChannelArn, AppInstanceUserArn, ChimeBearer, QueryMap, HeadersMap, []).

describe_channel_membership_for_app_instance_user(Client, ChannelArn, AppInstanceUserArn, ChimeBearer, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/channels/", aws_util:encode_uri(ChannelArn), "?scope=app-instance-user-membership"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"x-amz-chime-bearer">>, ChimeBearer}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"app-instance-user-arn">>, AppInstanceUserArn}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the full details of a channel moderated by the specified
%% `AppInstanceUser'.
%%
%% The `x-amz-chime-bearer' request header is mandatory. Use the
%% `AppInstanceUserArn' of the user that makes the API call as the value
%% in the header.
describe_channel_moderated_by_app_instance_user(Client, ChannelArn, AppInstanceUserArn, ChimeBearer)
  when is_map(Client) ->
    describe_channel_moderated_by_app_instance_user(Client, ChannelArn, AppInstanceUserArn, ChimeBearer, #{}, #{}).

describe_channel_moderated_by_app_instance_user(Client, ChannelArn, AppInstanceUserArn, ChimeBearer, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_channel_moderated_by_app_instance_user(Client, ChannelArn, AppInstanceUserArn, ChimeBearer, QueryMap, HeadersMap, []).

describe_channel_moderated_by_app_instance_user(Client, ChannelArn, AppInstanceUserArn, ChimeBearer, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/channels/", aws_util:encode_uri(ChannelArn), "?scope=app-instance-user-moderated-channel"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"x-amz-chime-bearer">>, ChimeBearer}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"app-instance-user-arn">>, AppInstanceUserArn}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the full details of a single ChannelModerator.
%%
%% The `x-amz-chime-bearer' request header is mandatory. Use the
%% `AppInstanceUserArn' of the user that makes the API call as the value
%% in the header.
describe_channel_moderator(Client, ChannelArn, ChannelModeratorArn, ChimeBearer)
  when is_map(Client) ->
    describe_channel_moderator(Client, ChannelArn, ChannelModeratorArn, ChimeBearer, #{}, #{}).

describe_channel_moderator(Client, ChannelArn, ChannelModeratorArn, ChimeBearer, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_channel_moderator(Client, ChannelArn, ChannelModeratorArn, ChimeBearer, QueryMap, HeadersMap, []).

describe_channel_moderator(Client, ChannelArn, ChannelModeratorArn, ChimeBearer, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/channels/", aws_util:encode_uri(ChannelArn), "/moderators/", aws_util:encode_uri(ChannelModeratorArn), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"x-amz-chime-bearer">>, ChimeBearer}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Disassociates a channel flow from all its channels.
%%
%% Once disassociated, all messages to that channel stop going through the
%% channel flow processor.
%%
%% Only administrators or channel moderators can disassociate a channel flow.
%% The `x-amz-chime-bearer' request header is mandatory. Use the
%% `AppInstanceUserArn' of the user that makes the API call as the value
%% in the header.
disassociate_channel_flow(Client, ChannelArn, ChannelFlowArn, Input) ->
    disassociate_channel_flow(Client, ChannelArn, ChannelFlowArn, Input, []).
disassociate_channel_flow(Client, ChannelArn, ChannelFlowArn, Input0, Options0) ->
    Method = delete,
    Path = ["/channels/", aws_util:encode_uri(ChannelArn), "/channel-flow/", aws_util:encode_uri(ChannelFlowArn), ""],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"x-amz-chime-bearer">>, <<"ChimeBearer">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Gets the membership preferences of an `AppInstanceUser' for the
%% specified channel.
%%
%% The `AppInstanceUser' must be a member of the channel. Only the
%% `AppInstanceUser' who owns the membership can retrieve preferences.
%% Users in the `AppInstanceAdmin' and channel moderator roles can't
%% retrieve preferences for other users. Banned users can't retrieve
%% membership preferences for the channel from which they are banned.
get_channel_membership_preferences(Client, ChannelArn, MemberArn, ChimeBearer)
  when is_map(Client) ->
    get_channel_membership_preferences(Client, ChannelArn, MemberArn, ChimeBearer, #{}, #{}).

get_channel_membership_preferences(Client, ChannelArn, MemberArn, ChimeBearer, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_channel_membership_preferences(Client, ChannelArn, MemberArn, ChimeBearer, QueryMap, HeadersMap, []).

get_channel_membership_preferences(Client, ChannelArn, MemberArn, ChimeBearer, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/channels/", aws_util:encode_uri(ChannelArn), "/memberships/", aws_util:encode_uri(MemberArn), "/preferences"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"x-amz-chime-bearer">>, ChimeBearer}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the full details of a channel message.
%%
%% The x-amz-chime-bearer request header is mandatory. Use the
%% `AppInstanceUserArn' of the user that makes the API call as the value
%% in the header.
get_channel_message(Client, ChannelArn, MessageId, ChimeBearer)
  when is_map(Client) ->
    get_channel_message(Client, ChannelArn, MessageId, ChimeBearer, #{}, #{}).

get_channel_message(Client, ChannelArn, MessageId, ChimeBearer, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_channel_message(Client, ChannelArn, MessageId, ChimeBearer, QueryMap, HeadersMap, []).

get_channel_message(Client, ChannelArn, MessageId, ChimeBearer, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/channels/", aws_util:encode_uri(ChannelArn), "/messages/", aws_util:encode_uri(MessageId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"x-amz-chime-bearer">>, ChimeBearer}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"sub-channel-id">>, maps:get(<<"sub-channel-id">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets message status for a specified `messageId'.
%%
%% Use this API to determine the intermediate status of messages going
%% through channel flow processing. The API provides an alternative to
%% retrieving message status if the event was not received because a client
%% wasn't connected to a websocket.
%%
%% Messages can have any one of these statuses.
%%
%% <dl> <dt>SENT</dt> <dd> Message processed successfully
%%
%% </dd> <dt>PENDING</dt> <dd> Ongoing processing
%%
%% </dd> <dt>FAILED</dt> <dd> Processing failed
%%
%% </dd> <dt>DENIED</dt> <dd> Messasge denied by the processor
%%
%% </dd> </dl> This API does not return statuses for denied messages, because
%% we don't store them once the processor denies them.
%%
%% Only the message sender can invoke this API.
%%
%% The `x-amz-chime-bearer' request header is mandatory. Use the
%% `AppInstanceUserArn' of the user that makes the API call as the value
%% in the header
get_channel_message_status(Client, ChannelArn, MessageId, ChimeBearer)
  when is_map(Client) ->
    get_channel_message_status(Client, ChannelArn, MessageId, ChimeBearer, #{}, #{}).

get_channel_message_status(Client, ChannelArn, MessageId, ChimeBearer, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_channel_message_status(Client, ChannelArn, MessageId, ChimeBearer, QueryMap, HeadersMap, []).

get_channel_message_status(Client, ChannelArn, MessageId, ChimeBearer, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/channels/", aws_util:encode_uri(ChannelArn), "/messages/", aws_util:encode_uri(MessageId), "?scope=message-status"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"x-amz-chime-bearer">>, ChimeBearer}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"sub-channel-id">>, maps:get(<<"sub-channel-id">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc The details of the endpoint for the messaging session.
get_messaging_session_endpoint(Client)
  when is_map(Client) ->
    get_messaging_session_endpoint(Client, #{}, #{}).

get_messaging_session_endpoint(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_messaging_session_endpoint(Client, QueryMap, HeadersMap, []).

get_messaging_session_endpoint(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/endpoints/messaging-session"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the data streaming configuration for an `AppInstance'.
%%
%% For more information, see Streaming messaging data in the Amazon Chime SDK
%% Developer Guide.
get_messaging_streaming_configurations(Client, AppInstanceArn)
  when is_map(Client) ->
    get_messaging_streaming_configurations(Client, AppInstanceArn, #{}, #{}).

get_messaging_streaming_configurations(Client, AppInstanceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_messaging_streaming_configurations(Client, AppInstanceArn, QueryMap, HeadersMap, []).

get_messaging_streaming_configurations(Client, AppInstanceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/app-instances/", aws_util:encode_uri(AppInstanceArn), "/streaming-configurations"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all the users banned from a particular channel.
%%
%% The `x-amz-chime-bearer' request header is mandatory. Use the
%% `AppInstanceUserArn' of the user that makes the API call as the value
%% in the header.
list_channel_bans(Client, ChannelArn, ChimeBearer)
  when is_map(Client) ->
    list_channel_bans(Client, ChannelArn, ChimeBearer, #{}, #{}).

list_channel_bans(Client, ChannelArn, ChimeBearer, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_channel_bans(Client, ChannelArn, ChimeBearer, QueryMap, HeadersMap, []).

list_channel_bans(Client, ChannelArn, ChimeBearer, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/channels/", aws_util:encode_uri(ChannelArn), "/bans"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"x-amz-chime-bearer">>, ChimeBearer}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a paginated lists of all the channel flows created under a
%% single Chime.
%%
%% This is a developer API.
list_channel_flows(Client, AppInstanceArn)
  when is_map(Client) ->
    list_channel_flows(Client, AppInstanceArn, #{}, #{}).

list_channel_flows(Client, AppInstanceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_channel_flows(Client, AppInstanceArn, QueryMap, HeadersMap, []).

list_channel_flows(Client, AppInstanceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/channel-flows"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"app-instance-arn">>, AppInstanceArn},
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all channel memberships in a channel.
%%
%% The `x-amz-chime-bearer' request header is mandatory. Use the
%% `AppInstanceUserArn' of the user that makes the API call as the value
%% in the header.
%%
%% If you want to list the channels to which a specific app instance user
%% belongs, see the ListChannelMembershipsForAppInstanceUser API.
list_channel_memberships(Client, ChannelArn, ChimeBearer)
  when is_map(Client) ->
    list_channel_memberships(Client, ChannelArn, ChimeBearer, #{}, #{}).

list_channel_memberships(Client, ChannelArn, ChimeBearer, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_channel_memberships(Client, ChannelArn, ChimeBearer, QueryMap, HeadersMap, []).

list_channel_memberships(Client, ChannelArn, ChimeBearer, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/channels/", aws_util:encode_uri(ChannelArn), "/memberships"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"x-amz-chime-bearer">>, ChimeBearer}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)},
        {<<"sub-channel-id">>, maps:get(<<"sub-channel-id">>, QueryMap, undefined)},
        {<<"type">>, maps:get(<<"type">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all channels that a particular `AppInstanceUser' is a part
%% of.
%%
%% Only an `AppInstanceAdmin' can call the API with a user ARN that is
%% not their own.
%%
%% The `x-amz-chime-bearer' request header is mandatory. Use the
%% `AppInstanceUserArn' of the user that makes the API call as the value
%% in the header.
list_channel_memberships_for_app_instance_user(Client, ChimeBearer)
  when is_map(Client) ->
    list_channel_memberships_for_app_instance_user(Client, ChimeBearer, #{}, #{}).

list_channel_memberships_for_app_instance_user(Client, ChimeBearer, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_channel_memberships_for_app_instance_user(Client, ChimeBearer, QueryMap, HeadersMap, []).

list_channel_memberships_for_app_instance_user(Client, ChimeBearer, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/channels?scope=app-instance-user-memberships"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"x-amz-chime-bearer">>, ChimeBearer}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"app-instance-user-arn">>, maps:get(<<"app-instance-user-arn">>, QueryMap, undefined)},
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List all the messages in a channel.
%%
%% Returns a paginated list of `ChannelMessages'. By default, sorted by
%% creation timestamp in descending order.
%%
%% Redacted messages appear in the results as empty, since they are only
%% redacted, not deleted. Deleted messages do not appear in the results. This
%% action always returns the latest version of an edited message.
%%
%% Also, the x-amz-chime-bearer request header is mandatory. Use the
%% `AppInstanceUserArn' of the user that makes the API call as the value
%% in the header.
list_channel_messages(Client, ChannelArn, ChimeBearer)
  when is_map(Client) ->
    list_channel_messages(Client, ChannelArn, ChimeBearer, #{}, #{}).

list_channel_messages(Client, ChannelArn, ChimeBearer, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_channel_messages(Client, ChannelArn, ChimeBearer, QueryMap, HeadersMap, []).

list_channel_messages(Client, ChannelArn, ChimeBearer, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/channels/", aws_util:encode_uri(ChannelArn), "/messages"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"x-amz-chime-bearer">>, ChimeBearer}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)},
        {<<"not-after">>, maps:get(<<"not-after">>, QueryMap, undefined)},
        {<<"not-before">>, maps:get(<<"not-before">>, QueryMap, undefined)},
        {<<"sort-order">>, maps:get(<<"sort-order">>, QueryMap, undefined)},
        {<<"sub-channel-id">>, maps:get(<<"sub-channel-id">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all the moderators for a channel.
%%
%% The `x-amz-chime-bearer' request header is mandatory. Use the
%% `AppInstanceUserArn' of the user that makes the API call as the value
%% in the header.
list_channel_moderators(Client, ChannelArn, ChimeBearer)
  when is_map(Client) ->
    list_channel_moderators(Client, ChannelArn, ChimeBearer, #{}, #{}).

list_channel_moderators(Client, ChannelArn, ChimeBearer, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_channel_moderators(Client, ChannelArn, ChimeBearer, QueryMap, HeadersMap, []).

list_channel_moderators(Client, ChannelArn, ChimeBearer, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/channels/", aws_util:encode_uri(ChannelArn), "/moderators"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"x-amz-chime-bearer">>, ChimeBearer}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all Channels created under a single Chime App as a paginated
%% list.
%%
%% You can specify filters to narrow results.
%%
%% == Functionality &amp; restrictions ==
%%
%% <ul> <li> Use privacy = `PUBLIC' to retrieve all public channels in
%% the account.
%%
%% </li> <li> Only an `AppInstanceAdmin' can set privacy = `PRIVATE'
%% to list the private channels in an account.
%%
%% </li> </ul> The `x-amz-chime-bearer' request header is mandatory. Use
%% the `AppInstanceUserArn' of the user that makes the API call as the
%% value in the header.
list_channels(Client, AppInstanceArn, ChimeBearer)
  when is_map(Client) ->
    list_channels(Client, AppInstanceArn, ChimeBearer, #{}, #{}).

list_channels(Client, AppInstanceArn, ChimeBearer, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_channels(Client, AppInstanceArn, ChimeBearer, QueryMap, HeadersMap, []).

list_channels(Client, AppInstanceArn, ChimeBearer, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/channels"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"x-amz-chime-bearer">>, ChimeBearer}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"app-instance-arn">>, AppInstanceArn},
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)},
        {<<"privacy">>, maps:get(<<"privacy">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all channels associated with a specified channel flow.
%%
%% You can associate a channel flow with multiple channels, but you can only
%% associate a channel with one channel flow. This is a developer API.
list_channels_associated_with_channel_flow(Client, ChannelFlowArn)
  when is_map(Client) ->
    list_channels_associated_with_channel_flow(Client, ChannelFlowArn, #{}, #{}).

list_channels_associated_with_channel_flow(Client, ChannelFlowArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_channels_associated_with_channel_flow(Client, ChannelFlowArn, QueryMap, HeadersMap, []).

list_channels_associated_with_channel_flow(Client, ChannelFlowArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/channels?scope=channel-flow-associations"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"channel-flow-arn">>, ChannelFlowArn},
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc A list of the channels moderated by an `AppInstanceUser'.
%%
%% The `x-amz-chime-bearer' request header is mandatory. Use the
%% `AppInstanceUserArn' of the user that makes the API call as the value
%% in the header.
list_channels_moderated_by_app_instance_user(Client, ChimeBearer)
  when is_map(Client) ->
    list_channels_moderated_by_app_instance_user(Client, ChimeBearer, #{}, #{}).

list_channels_moderated_by_app_instance_user(Client, ChimeBearer, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_channels_moderated_by_app_instance_user(Client, ChimeBearer, QueryMap, HeadersMap, []).

list_channels_moderated_by_app_instance_user(Client, ChimeBearer, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/channels?scope=app-instance-user-moderated-channels"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"x-amz-chime-bearer">>, ChimeBearer}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"app-instance-user-arn">>, maps:get(<<"app-instance-user-arn">>, QueryMap, undefined)},
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all the SubChannels in an elastic channel when given a channel
%% ID.
%%
%% Available only to the app instance admins and channel moderators of
%% elastic channels.
list_sub_channels(Client, ChannelArn, ChimeBearer)
  when is_map(Client) ->
    list_sub_channels(Client, ChannelArn, ChimeBearer, #{}, #{}).

list_sub_channels(Client, ChannelArn, ChimeBearer, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_sub_channels(Client, ChannelArn, ChimeBearer, QueryMap, HeadersMap, []).

list_sub_channels(Client, ChannelArn, ChimeBearer, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/channels/", aws_util:encode_uri(ChannelArn), "/subchannels"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"x-amz-chime-bearer">>, ChimeBearer}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the tags applied to an Amazon Chime SDK messaging resource.
list_tags_for_resource(Client, ResourceARN)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceARN, #{}, #{}).

list_tags_for_resource(Client, ResourceARN, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceARN, QueryMap, HeadersMap, []).

list_tags_for_resource(Client, ResourceARN, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/tags"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"arn">>, ResourceARN}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Sets the membership preferences of an `AppInstanceUser' for the
%% specified channel.
%%
%% The `AppInstanceUser' must be a member of the channel. Only the
%% `AppInstanceUser' who owns the membership can set preferences. Users
%% in the `AppInstanceAdmin' and channel moderator roles can't set
%% preferences for other users. Banned users can't set membership
%% preferences for the channel from which they are banned.
put_channel_membership_preferences(Client, ChannelArn, MemberArn, Input) ->
    put_channel_membership_preferences(Client, ChannelArn, MemberArn, Input, []).
put_channel_membership_preferences(Client, ChannelArn, MemberArn, Input0, Options0) ->
    Method = put,
    Path = ["/channels/", aws_util:encode_uri(ChannelArn), "/memberships/", aws_util:encode_uri(MemberArn), "/preferences"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"x-amz-chime-bearer">>, <<"ChimeBearer">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Sets the data streaming configuration for an `AppInstance'.
%%
%% For more information, see Streaming messaging data in the Amazon Chime SDK
%% Developer Guide.
put_messaging_streaming_configurations(Client, AppInstanceArn, Input) ->
    put_messaging_streaming_configurations(Client, AppInstanceArn, Input, []).
put_messaging_streaming_configurations(Client, AppInstanceArn, Input0, Options0) ->
    Method = put,
    Path = ["/app-instances/", aws_util:encode_uri(AppInstanceArn), "/streaming-configurations"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Redacts message content, but not metadata.
%%
%% The message exists in the back end, but the action returns null content,
%% and the state shows as redacted.
%%
%% The `x-amz-chime-bearer' request header is mandatory. Use the
%% `AppInstanceUserArn' of the user that makes the API call as the value
%% in the header.
redact_channel_message(Client, ChannelArn, MessageId, Input) ->
    redact_channel_message(Client, ChannelArn, MessageId, Input, []).
redact_channel_message(Client, ChannelArn, MessageId, Input0, Options0) ->
    Method = post,
    Path = ["/channels/", aws_util:encode_uri(ChannelArn), "/messages/", aws_util:encode_uri(MessageId), "?operation=redact"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"x-amz-chime-bearer">>, <<"ChimeBearer">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Allows `ChimeBearer' to search channels by channel members.
%%
%% AppInstanceUsers can search across the channels that they belong to.
%% AppInstanceAdmins can search across all channels.
search_channels(Client, Input) ->
    search_channels(Client, Input, []).
search_channels(Client, Input0, Options0) ->
    Method = post,
    Path = ["/channels?operation=search"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"x-amz-chime-bearer">>, <<"ChimeBearer">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"max-results">>, <<"MaxResults">>},
                     {<<"next-token">>, <<"NextToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Sends a message to a particular channel that the member is a part of.
%%
%% The `x-amz-chime-bearer' request header is mandatory. Use the
%% `AppInstanceUserArn' of the user that makes the API call as the value
%% in the header.
%%
%% Also, `STANDARD' messages can contain 4KB of data and the 1KB of
%% metadata. `CONTROL' messages can contain 30 bytes of data and no
%% metadata.
send_channel_message(Client, ChannelArn, Input) ->
    send_channel_message(Client, ChannelArn, Input, []).
send_channel_message(Client, ChannelArn, Input0, Options0) ->
    Method = post,
    Path = ["/channels/", aws_util:encode_uri(ChannelArn), "/messages"],
    SuccessStatusCode = 201,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"x-amz-chime-bearer">>, <<"ChimeBearer">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Applies the specified tags to the specified Amazon Chime SDK
%% messaging resource.
tag_resource(Client, Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/tags?operation=tag-resource"],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Removes the specified tags from the specified Amazon Chime SDK
%% messaging resource.
untag_resource(Client, Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/tags?operation=untag-resource"],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Update a channel's attributes.
%%
%% Restriction: You can't change a channel's privacy.
%%
%% The `x-amz-chime-bearer' request header is mandatory. Use the
%% `AppInstanceUserArn' of the user that makes the API call as the value
%% in the header.
update_channel(Client, ChannelArn, Input) ->
    update_channel(Client, ChannelArn, Input, []).
update_channel(Client, ChannelArn, Input0, Options0) ->
    Method = put,
    Path = ["/channels/", aws_util:encode_uri(ChannelArn), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"x-amz-chime-bearer">>, <<"ChimeBearer">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates channel flow attributes.
%%
%% This is a developer API.
update_channel_flow(Client, ChannelFlowArn, Input) ->
    update_channel_flow(Client, ChannelFlowArn, Input, []).
update_channel_flow(Client, ChannelFlowArn, Input0, Options0) ->
    Method = put,
    Path = ["/channel-flows/", aws_util:encode_uri(ChannelFlowArn), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the content of a message.
%%
%% The `x-amz-chime-bearer' request header is mandatory. Use the
%% `AppInstanceUserArn' of the user that makes the API call as the value
%% in the header.
update_channel_message(Client, ChannelArn, MessageId, Input) ->
    update_channel_message(Client, ChannelArn, MessageId, Input, []).
update_channel_message(Client, ChannelArn, MessageId, Input0, Options0) ->
    Method = put,
    Path = ["/channels/", aws_util:encode_uri(ChannelArn), "/messages/", aws_util:encode_uri(MessageId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"x-amz-chime-bearer">>, <<"ChimeBearer">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc The details of the time when a user last read messages in a channel.
%%
%% The `x-amz-chime-bearer' request header is mandatory. Use the
%% `AppInstanceUserArn' of the user that makes the API call as the value
%% in the header.
update_channel_read_marker(Client, ChannelArn, Input) ->
    update_channel_read_marker(Client, ChannelArn, Input, []).
update_channel_read_marker(Client, ChannelArn, Input0, Options0) ->
    Method = put,
    Path = ["/channels/", aws_util:encode_uri(ChannelArn), "/readMarker"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"x-amz-chime-bearer">>, <<"ChimeBearer">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

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
    Host = build_host(<<"messaging-chime">>, Client1),
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
