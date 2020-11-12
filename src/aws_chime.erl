%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc The Amazon Chime API (application programming interface) is designed
%% for developers to perform key tasks, such as creating and managing Amazon
%% Chime accounts, users, and Voice Connectors.
%%
%% This guide provides detailed information about the Amazon Chime API,
%% including operations, types, inputs and outputs, and error codes. It also
%% includes some server-side API actions to use with the Amazon Chime SDK.
%% For more information about the Amazon Chime SDK, see Using the Amazon
%% Chime SDK in the Amazon Chime Developer Guide.
%%
%% You can use an AWS SDK, the AWS Command Line Interface (AWS CLI), or the
%% REST API to make API calls. We recommend using an AWS SDK or the AWS CLI.
%% Each API operation includes links to information about using it with a
%% language-specific AWS SDK or the AWS CLI.
%%
%% <dl> <dt>Using an AWS SDK</dt> <dd> You don't need to write code to
%% calculate a signature for request authentication. The SDK clients
%% authenticate your requests by using access keys that you provide. For more
%% information about AWS SDKs, see the AWS Developer Center.
%%
%% </dd> <dt>Using the AWS CLI</dt> <dd> Use your access keys with the AWS
%% CLI to make API calls. For information about setting up the AWS CLI, see
%% Installing the AWS Command Line Interface in the AWS Command Line
%% Interface User Guide. For a list of available Amazon Chime commands, see
%% the Amazon Chime commands in the AWS CLI Command Reference.
%%
%% </dd> <dt>Using REST API</dt> <dd> If you use REST to make API calls, you
%% must authenticate your request by providing a signature. Amazon Chime
%% supports signature version 4. For more information, see Signature Version
%% 4 Signing Process in the Amazon Web Services General Reference.
%%
%% When making REST API calls, use the service name `chime` and REST endpoint
%% `https://service.chime.aws.amazon.com`.
%%
%% </dd> </dl> Administrative permissions are controlled using AWS Identity
%% and Access Management (IAM). For more information, see Identity and Access
%% Management for Amazon Chime in the Amazon Chime Administration Guide.
-module(aws_chime).

-export([associate_phone_number_with_user/4,
         associate_phone_number_with_user/5,
         associate_phone_numbers_with_voice_connector/3,
         associate_phone_numbers_with_voice_connector/4,
         associate_phone_numbers_with_voice_connector_group/3,
         associate_phone_numbers_with_voice_connector_group/4,
         associate_signin_delegate_groups_with_account/3,
         associate_signin_delegate_groups_with_account/4,
         batch_create_attendee/3,
         batch_create_attendee/4,
         batch_create_room_membership/4,
         batch_create_room_membership/5,
         batch_delete_phone_number/2,
         batch_delete_phone_number/3,
         batch_suspend_user/3,
         batch_suspend_user/4,
         batch_unsuspend_user/3,
         batch_unsuspend_user/4,
         batch_update_phone_number/2,
         batch_update_phone_number/3,
         batch_update_user/3,
         batch_update_user/4,
         create_account/2,
         create_account/3,
         create_attendee/3,
         create_attendee/4,
         create_bot/3,
         create_bot/4,
         create_meeting/2,
         create_meeting/3,
         create_meeting_with_attendees/2,
         create_meeting_with_attendees/3,
         create_phone_number_order/2,
         create_phone_number_order/3,
         create_proxy_session/3,
         create_proxy_session/4,
         create_room/3,
         create_room/4,
         create_room_membership/4,
         create_room_membership/5,
         create_user/3,
         create_user/4,
         create_voice_connector/2,
         create_voice_connector/3,
         create_voice_connector_group/2,
         create_voice_connector_group/3,
         delete_account/3,
         delete_account/4,
         delete_attendee/4,
         delete_attendee/5,
         delete_events_configuration/4,
         delete_events_configuration/5,
         delete_meeting/3,
         delete_meeting/4,
         delete_phone_number/3,
         delete_phone_number/4,
         delete_proxy_session/4,
         delete_proxy_session/5,
         delete_room/4,
         delete_room/5,
         delete_room_membership/5,
         delete_room_membership/6,
         delete_voice_connector/3,
         delete_voice_connector/4,
         delete_voice_connector_emergency_calling_configuration/3,
         delete_voice_connector_emergency_calling_configuration/4,
         delete_voice_connector_group/3,
         delete_voice_connector_group/4,
         delete_voice_connector_origination/3,
         delete_voice_connector_origination/4,
         delete_voice_connector_proxy/3,
         delete_voice_connector_proxy/4,
         delete_voice_connector_streaming_configuration/3,
         delete_voice_connector_streaming_configuration/4,
         delete_voice_connector_termination/3,
         delete_voice_connector_termination/4,
         delete_voice_connector_termination_credentials/3,
         delete_voice_connector_termination_credentials/4,
         disassociate_phone_number_from_user/4,
         disassociate_phone_number_from_user/5,
         disassociate_phone_numbers_from_voice_connector/3,
         disassociate_phone_numbers_from_voice_connector/4,
         disassociate_phone_numbers_from_voice_connector_group/3,
         disassociate_phone_numbers_from_voice_connector_group/4,
         disassociate_signin_delegate_groups_from_account/3,
         disassociate_signin_delegate_groups_from_account/4,
         get_account/2,
         get_account/3,
         get_account_settings/2,
         get_account_settings/3,
         get_attendee/3,
         get_attendee/4,
         get_bot/3,
         get_bot/4,
         get_events_configuration/3,
         get_events_configuration/4,
         get_global_settings/1,
         get_global_settings/2,
         get_meeting/2,
         get_meeting/3,
         get_phone_number/2,
         get_phone_number/3,
         get_phone_number_order/2,
         get_phone_number_order/3,
         get_phone_number_settings/1,
         get_phone_number_settings/2,
         get_proxy_session/3,
         get_proxy_session/4,
         get_retention_settings/2,
         get_retention_settings/3,
         get_room/3,
         get_room/4,
         get_user/3,
         get_user/4,
         get_user_settings/3,
         get_user_settings/4,
         get_voice_connector/2,
         get_voice_connector/3,
         get_voice_connector_emergency_calling_configuration/2,
         get_voice_connector_emergency_calling_configuration/3,
         get_voice_connector_group/2,
         get_voice_connector_group/3,
         get_voice_connector_logging_configuration/2,
         get_voice_connector_logging_configuration/3,
         get_voice_connector_origination/2,
         get_voice_connector_origination/3,
         get_voice_connector_proxy/2,
         get_voice_connector_proxy/3,
         get_voice_connector_streaming_configuration/2,
         get_voice_connector_streaming_configuration/3,
         get_voice_connector_termination/2,
         get_voice_connector_termination/3,
         get_voice_connector_termination_health/2,
         get_voice_connector_termination_health/3,
         invite_users/3,
         invite_users/4,
         list_accounts/5,
         list_accounts/6,
         list_attendee_tags/3,
         list_attendee_tags/4,
         list_attendees/4,
         list_attendees/5,
         list_bots/4,
         list_bots/5,
         list_meeting_tags/2,
         list_meeting_tags/3,
         list_meetings/3,
         list_meetings/4,
         list_phone_number_orders/3,
         list_phone_number_orders/4,
         list_phone_numbers/7,
         list_phone_numbers/8,
         list_proxy_sessions/5,
         list_proxy_sessions/6,
         list_room_memberships/5,
         list_room_memberships/6,
         list_rooms/5,
         list_rooms/6,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         list_users/6,
         list_users/7,
         list_voice_connector_groups/3,
         list_voice_connector_groups/4,
         list_voice_connector_termination_credentials/2,
         list_voice_connector_termination_credentials/3,
         list_voice_connectors/3,
         list_voice_connectors/4,
         logout_user/4,
         logout_user/5,
         put_events_configuration/4,
         put_events_configuration/5,
         put_retention_settings/3,
         put_retention_settings/4,
         put_voice_connector_emergency_calling_configuration/3,
         put_voice_connector_emergency_calling_configuration/4,
         put_voice_connector_logging_configuration/3,
         put_voice_connector_logging_configuration/4,
         put_voice_connector_origination/3,
         put_voice_connector_origination/4,
         put_voice_connector_proxy/3,
         put_voice_connector_proxy/4,
         put_voice_connector_streaming_configuration/3,
         put_voice_connector_streaming_configuration/4,
         put_voice_connector_termination/3,
         put_voice_connector_termination/4,
         put_voice_connector_termination_credentials/3,
         put_voice_connector_termination_credentials/4,
         redact_conversation_message/5,
         redact_conversation_message/6,
         redact_room_message/5,
         redact_room_message/6,
         regenerate_security_token/4,
         regenerate_security_token/5,
         reset_personal_p_i_n/4,
         reset_personal_p_i_n/5,
         restore_phone_number/3,
         restore_phone_number/4,
         search_available_phone_numbers/8,
         search_available_phone_numbers/9,
         tag_attendee/4,
         tag_attendee/5,
         tag_meeting/3,
         tag_meeting/4,
         tag_resource/2,
         tag_resource/3,
         untag_attendee/4,
         untag_attendee/5,
         untag_meeting/3,
         untag_meeting/4,
         untag_resource/2,
         untag_resource/3,
         update_account/3,
         update_account/4,
         update_account_settings/3,
         update_account_settings/4,
         update_bot/4,
         update_bot/5,
         update_global_settings/2,
         update_global_settings/3,
         update_phone_number/3,
         update_phone_number/4,
         update_phone_number_settings/2,
         update_phone_number_settings/3,
         update_proxy_session/4,
         update_proxy_session/5,
         update_room/4,
         update_room/5,
         update_room_membership/5,
         update_room_membership/6,
         update_user/4,
         update_user/5,
         update_user_settings/4,
         update_user_settings/5,
         update_voice_connector/3,
         update_voice_connector/4,
         update_voice_connector_group/3,
         update_voice_connector_group/4]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Associates a phone number with the specified Amazon Chime user.
associate_phone_number_with_user(Client, AccountId, UserId, Input) ->
    associate_phone_number_with_user(Client, AccountId, UserId, Input, []).
associate_phone_number_with_user(Client, AccountId, UserId, Input0, Options) ->
    Method = post,
    Path = ["/accounts/", http_uri:encode(AccountId), "/users/", http_uri:encode(UserId), "?operation=associate-phone-number"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Associates phone numbers with the specified Amazon Chime Voice
%% Connector.
associate_phone_numbers_with_voice_connector(Client, VoiceConnectorId, Input) ->
    associate_phone_numbers_with_voice_connector(Client, VoiceConnectorId, Input, []).
associate_phone_numbers_with_voice_connector(Client, VoiceConnectorId, Input0, Options) ->
    Method = post,
    Path = ["/voice-connectors/", http_uri:encode(VoiceConnectorId), "?operation=associate-phone-numbers"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Associates phone numbers with the specified Amazon Chime Voice
%% Connector group.
associate_phone_numbers_with_voice_connector_group(Client, VoiceConnectorGroupId, Input) ->
    associate_phone_numbers_with_voice_connector_group(Client, VoiceConnectorGroupId, Input, []).
associate_phone_numbers_with_voice_connector_group(Client, VoiceConnectorGroupId, Input0, Options) ->
    Method = post,
    Path = ["/voice-connector-groups/", http_uri:encode(VoiceConnectorGroupId), "?operation=associate-phone-numbers"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Associates the specified sign-in delegate groups with the specified
%% Amazon Chime account.
associate_signin_delegate_groups_with_account(Client, AccountId, Input) ->
    associate_signin_delegate_groups_with_account(Client, AccountId, Input, []).
associate_signin_delegate_groups_with_account(Client, AccountId, Input0, Options) ->
    Method = post,
    Path = ["/accounts/", http_uri:encode(AccountId), "?operation=associate-signin-delegate-groups"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates up to 100 new attendees for an active Amazon Chime SDK
%% meeting.
%%
%% For more information about the Amazon Chime SDK, see Using the Amazon
%% Chime SDK in the Amazon Chime Developer Guide.
batch_create_attendee(Client, MeetingId, Input) ->
    batch_create_attendee(Client, MeetingId, Input, []).
batch_create_attendee(Client, MeetingId, Input0, Options) ->
    Method = post,
    Path = ["/meetings/", http_uri:encode(MeetingId), "/attendees?operation=batch-create"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Adds up to 50 members to a chat room in an Amazon Chime Enterprise
%% account.
%%
%% Members can be either users or bots. The member role designates whether
%% the member is a chat room administrator or a general chat room member.
batch_create_room_membership(Client, AccountId, RoomId, Input) ->
    batch_create_room_membership(Client, AccountId, RoomId, Input, []).
batch_create_room_membership(Client, AccountId, RoomId, Input0, Options) ->
    Method = post,
    Path = ["/accounts/", http_uri:encode(AccountId), "/rooms/", http_uri:encode(RoomId), "/memberships?operation=batch-create"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Moves phone numbers into the Deletion queue.
%%
%% Phone numbers must be disassociated from any users or Amazon Chime Voice
%% Connectors before they can be deleted.
%%
%% Phone numbers remain in the Deletion queue for 7 days before they are
%% deleted permanently.
batch_delete_phone_number(Client, Input) ->
    batch_delete_phone_number(Client, Input, []).
batch_delete_phone_number(Client, Input0, Options) ->
    Method = post,
    Path = ["/phone-numbers?operation=batch-delete"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Suspends up to 50 users from a `Team` or `EnterpriseLWA` Amazon Chime
%% account.
%%
%% For more information about different account types, see Managing Your
%% Amazon Chime Accounts in the Amazon Chime Administration Guide.
%%
%% Users suspended from a `Team` account are disassociated from the account,
%% but they can continue to use Amazon Chime as free users. To remove the
%% suspension from suspended `Team` account users, invite them to the `Team`
%% account again. You can use the `InviteUsers` action to do so.
%%
%% Users suspended from an `EnterpriseLWA` account are immediately signed out
%% of Amazon Chime and can no longer sign in. To remove the suspension from
%% suspended `EnterpriseLWA` account users, use the `BatchUnsuspendUser`
%% action.
%%
%% To sign out users without suspending them, use the `LogoutUser` action.
batch_suspend_user(Client, AccountId, Input) ->
    batch_suspend_user(Client, AccountId, Input, []).
batch_suspend_user(Client, AccountId, Input0, Options) ->
    Method = post,
    Path = ["/accounts/", http_uri:encode(AccountId), "/users?operation=suspend"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Removes the suspension from up to 50 previously suspended users for
%% the specified Amazon Chime `EnterpriseLWA` account.
%%
%% Only users on `EnterpriseLWA` accounts can be unsuspended using this
%% action. For more information about different account types, see Managing
%% Your Amazon Chime Accounts in the Amazon Chime Administration Guide.
%%
%% Previously suspended users who are unsuspended using this action are
%% returned to `Registered` status. Users who are not previously suspended
%% are ignored.
batch_unsuspend_user(Client, AccountId, Input) ->
    batch_unsuspend_user(Client, AccountId, Input, []).
batch_unsuspend_user(Client, AccountId, Input0, Options) ->
    Method = post,
    Path = ["/accounts/", http_uri:encode(AccountId), "/users?operation=unsuspend"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates phone number product types or calling names.
%%
%% You can update one attribute at a time for each
%% `UpdatePhoneNumberRequestItem`. For example, you can update either the
%% product type or the calling name.
%%
%% For product types, choose from Amazon Chime Business Calling and Amazon
%% Chime Voice Connector. For toll-free numbers, you must use the Amazon
%% Chime Voice Connector product type.
%%
%% Updates to outbound calling names can take up to 72 hours to complete.
%% Pending updates to outbound calling names must be complete before you can
%% request another update.
batch_update_phone_number(Client, Input) ->
    batch_update_phone_number(Client, Input, []).
batch_update_phone_number(Client, Input0, Options) ->
    Method = post,
    Path = ["/phone-numbers?operation=batch-update"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates user details within the `UpdateUserRequestItem` object for up
%% to 20 users for the specified Amazon Chime account.
%%
%% Currently, only `LicenseType` updates are supported for this action.
batch_update_user(Client, AccountId, Input) ->
    batch_update_user(Client, AccountId, Input, []).
batch_update_user(Client, AccountId, Input0, Options) ->
    Method = post,
    Path = ["/accounts/", http_uri:encode(AccountId), "/users"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an Amazon Chime account under the administrator's AWS
%% account.
%%
%% Only `Team` account types are currently supported for this action. For
%% more information about different account types, see Managing Your Amazon
%% Chime Accounts in the Amazon Chime Administration Guide.
create_account(Client, Input) ->
    create_account(Client, Input, []).
create_account(Client, Input0, Options) ->
    Method = post,
    Path = ["/accounts"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new attendee for an active Amazon Chime SDK meeting.
%%
%% For more information about the Amazon Chime SDK, see Using the Amazon
%% Chime SDK in the Amazon Chime Developer Guide.
create_attendee(Client, MeetingId, Input) ->
    create_attendee(Client, MeetingId, Input, []).
create_attendee(Client, MeetingId, Input0, Options) ->
    Method = post,
    Path = ["/meetings/", http_uri:encode(MeetingId), "/attendees"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a bot for an Amazon Chime Enterprise account.
create_bot(Client, AccountId, Input) ->
    create_bot(Client, AccountId, Input, []).
create_bot(Client, AccountId, Input0, Options) ->
    Method = post,
    Path = ["/accounts/", http_uri:encode(AccountId), "/bots"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new Amazon Chime SDK meeting in the specified media Region
%% with no initial attendees.
%%
%% For more information about specifying media Regions, see Amazon Chime SDK
%% Media Regions in the Amazon Chime Developer Guide. For more information
%% about the Amazon Chime SDK, see Using the Amazon Chime SDK in the Amazon
%% Chime Developer Guide.
create_meeting(Client, Input) ->
    create_meeting(Client, Input, []).
create_meeting(Client, Input0, Options) ->
    Method = post,
    Path = ["/meetings"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new Amazon Chime SDK meeting in the specified media Region,
%% with attendees.
%%
%% For more information about specifying media Regions, see Amazon Chime SDK
%% Media Regions in the Amazon Chime Developer Guide. For more information
%% about the Amazon Chime SDK, see Using the Amazon Chime SDK in the Amazon
%% Chime Developer Guide.
create_meeting_with_attendees(Client, Input) ->
    create_meeting_with_attendees(Client, Input, []).
create_meeting_with_attendees(Client, Input0, Options) ->
    Method = post,
    Path = ["/meetings?operation=create-attendees"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an order for phone numbers to be provisioned.
%%
%% Choose from Amazon Chime Business Calling and Amazon Chime Voice Connector
%% product types. For toll-free numbers, you must use the Amazon Chime Voice
%% Connector product type.
create_phone_number_order(Client, Input) ->
    create_phone_number_order(Client, Input, []).
create_phone_number_order(Client, Input0, Options) ->
    Method = post,
    Path = ["/phone-number-orders"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a proxy session on the specified Amazon Chime Voice Connector
%% for the specified participant phone numbers.
create_proxy_session(Client, VoiceConnectorId, Input) ->
    create_proxy_session(Client, VoiceConnectorId, Input, []).
create_proxy_session(Client, VoiceConnectorId, Input0, Options) ->
    Method = post,
    Path = ["/voice-connectors/", http_uri:encode(VoiceConnectorId), "/proxy-sessions"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a chat room for the specified Amazon Chime Enterprise
%% account.
create_room(Client, AccountId, Input) ->
    create_room(Client, AccountId, Input, []).
create_room(Client, AccountId, Input0, Options) ->
    Method = post,
    Path = ["/accounts/", http_uri:encode(AccountId), "/rooms"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Adds a member to a chat room in an Amazon Chime Enterprise account.
%%
%% A member can be either a user or a bot. The member role designates whether
%% the member is a chat room administrator or a general chat room member.
create_room_membership(Client, AccountId, RoomId, Input) ->
    create_room_membership(Client, AccountId, RoomId, Input, []).
create_room_membership(Client, AccountId, RoomId, Input0, Options) ->
    Method = post,
    Path = ["/accounts/", http_uri:encode(AccountId), "/rooms/", http_uri:encode(RoomId), "/memberships"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a user under the specified Amazon Chime account.
create_user(Client, AccountId, Input) ->
    create_user(Client, AccountId, Input, []).
create_user(Client, AccountId, Input0, Options) ->
    Method = post,
    Path = ["/accounts/", http_uri:encode(AccountId), "/users?operation=create"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an Amazon Chime Voice Connector under the administrator's AWS
%% account.
%%
%% You can choose to create an Amazon Chime Voice Connector in a specific AWS
%% Region.
%%
%% Enabling `CreateVoiceConnectorRequest$RequireEncryption` configures your
%% Amazon Chime Voice Connector to use TLS transport for SIP signaling and
%% Secure RTP (SRTP) for media. Inbound calls use TLS transport, and
%% unencrypted outbound calls are blocked.
create_voice_connector(Client, Input) ->
    create_voice_connector(Client, Input, []).
create_voice_connector(Client, Input0, Options) ->
    Method = post,
    Path = ["/voice-connectors"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an Amazon Chime Voice Connector group under the
%% administrator's AWS account.
%%
%% You can associate Amazon Chime Voice Connectors with the Amazon Chime
%% Voice Connector group by including `VoiceConnectorItems` in the request.
%%
%% You can include Amazon Chime Voice Connectors from different AWS Regions
%% in your group. This creates a fault tolerant mechanism for fallback in
%% case of availability events.
create_voice_connector_group(Client, Input) ->
    create_voice_connector_group(Client, Input, []).
create_voice_connector_group(Client, Input0, Options) ->
    Method = post,
    Path = ["/voice-connector-groups"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the specified Amazon Chime account.
%%
%% You must suspend all users before deleting a `Team` account. You can use
%% the `BatchSuspendUser` action to do so.
%%
%% For `EnterpriseLWA` and `EnterpriseAD` accounts, you must release the
%% claimed domains for your Amazon Chime account before deletion. As soon as
%% you release the domain, all users under that account are suspended.
%%
%% Deleted accounts appear in your `Disabled` accounts list for 90 days. To
%% restore a deleted account from your `Disabled` accounts list, you must
%% contact AWS Support.
%%
%% After 90 days, deleted accounts are permanently removed from your
%% `Disabled` accounts list.
delete_account(Client, AccountId, Input) ->
    delete_account(Client, AccountId, Input, []).
delete_account(Client, AccountId, Input0, Options) ->
    Method = delete,
    Path = ["/accounts/", http_uri:encode(AccountId), ""],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an attendee from the specified Amazon Chime SDK meeting and
%% deletes their `JoinToken`.
%%
%% Attendees are automatically deleted when a Amazon Chime SDK meeting is
%% deleted. For more information about the Amazon Chime SDK, see Using the
%% Amazon Chime SDK in the Amazon Chime Developer Guide.
delete_attendee(Client, AttendeeId, MeetingId, Input) ->
    delete_attendee(Client, AttendeeId, MeetingId, Input, []).
delete_attendee(Client, AttendeeId, MeetingId, Input0, Options) ->
    Method = delete,
    Path = ["/meetings/", http_uri:encode(MeetingId), "/attendees/", http_uri:encode(AttendeeId), ""],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the events configuration that allows a bot to receive
%% outgoing events.
delete_events_configuration(Client, AccountId, BotId, Input) ->
    delete_events_configuration(Client, AccountId, BotId, Input, []).
delete_events_configuration(Client, AccountId, BotId, Input0, Options) ->
    Method = delete,
    Path = ["/accounts/", http_uri:encode(AccountId), "/bots/", http_uri:encode(BotId), "/events-configuration"],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the specified Amazon Chime SDK meeting.
%%
%% When a meeting is deleted, its attendees are also deleted and clients can
%% no longer join it. For more information about the Amazon Chime SDK, see
%% Using the Amazon Chime SDK in the Amazon Chime Developer Guide.
delete_meeting(Client, MeetingId, Input) ->
    delete_meeting(Client, MeetingId, Input, []).
delete_meeting(Client, MeetingId, Input0, Options) ->
    Method = delete,
    Path = ["/meetings/", http_uri:encode(MeetingId), ""],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Moves the specified phone number into the Deletion queue.
%%
%% A phone number must be disassociated from any users or Amazon Chime Voice
%% Connectors before it can be deleted.
%%
%% Deleted phone numbers remain in the Deletion queue for 7 days before they
%% are deleted permanently.
delete_phone_number(Client, PhoneNumberId, Input) ->
    delete_phone_number(Client, PhoneNumberId, Input, []).
delete_phone_number(Client, PhoneNumberId, Input0, Options) ->
    Method = delete,
    Path = ["/phone-numbers/", http_uri:encode(PhoneNumberId), ""],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the specified proxy session from the specified Amazon Chime
%% Voice Connector.
delete_proxy_session(Client, ProxySessionId, VoiceConnectorId, Input) ->
    delete_proxy_session(Client, ProxySessionId, VoiceConnectorId, Input, []).
delete_proxy_session(Client, ProxySessionId, VoiceConnectorId, Input0, Options) ->
    Method = delete,
    Path = ["/voice-connectors/", http_uri:encode(VoiceConnectorId), "/proxy-sessions/", http_uri:encode(ProxySessionId), ""],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a chat room in an Amazon Chime Enterprise account.
delete_room(Client, AccountId, RoomId, Input) ->
    delete_room(Client, AccountId, RoomId, Input, []).
delete_room(Client, AccountId, RoomId, Input0, Options) ->
    Method = delete,
    Path = ["/accounts/", http_uri:encode(AccountId), "/rooms/", http_uri:encode(RoomId), ""],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Removes a member from a chat room in an Amazon Chime Enterprise
%% account.
delete_room_membership(Client, AccountId, MemberId, RoomId, Input) ->
    delete_room_membership(Client, AccountId, MemberId, RoomId, Input, []).
delete_room_membership(Client, AccountId, MemberId, RoomId, Input0, Options) ->
    Method = delete,
    Path = ["/accounts/", http_uri:encode(AccountId), "/rooms/", http_uri:encode(RoomId), "/memberships/", http_uri:encode(MemberId), ""],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the specified Amazon Chime Voice Connector.
%%
%% Any phone numbers associated with the Amazon Chime Voice Connector must be
%% disassociated from it before it can be deleted.
delete_voice_connector(Client, VoiceConnectorId, Input) ->
    delete_voice_connector(Client, VoiceConnectorId, Input, []).
delete_voice_connector(Client, VoiceConnectorId, Input0, Options) ->
    Method = delete,
    Path = ["/voice-connectors/", http_uri:encode(VoiceConnectorId), ""],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the emergency calling configuration details from the
%% specified Amazon Chime Voice Connector.
delete_voice_connector_emergency_calling_configuration(Client, VoiceConnectorId, Input) ->
    delete_voice_connector_emergency_calling_configuration(Client, VoiceConnectorId, Input, []).
delete_voice_connector_emergency_calling_configuration(Client, VoiceConnectorId, Input0, Options) ->
    Method = delete,
    Path = ["/voice-connectors/", http_uri:encode(VoiceConnectorId), "/emergency-calling-configuration"],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the specified Amazon Chime Voice Connector group.
%%
%% Any `VoiceConnectorItems` and phone numbers associated with the group must
%% be removed before it can be deleted.
delete_voice_connector_group(Client, VoiceConnectorGroupId, Input) ->
    delete_voice_connector_group(Client, VoiceConnectorGroupId, Input, []).
delete_voice_connector_group(Client, VoiceConnectorGroupId, Input0, Options) ->
    Method = delete,
    Path = ["/voice-connector-groups/", http_uri:encode(VoiceConnectorGroupId), ""],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the origination settings for the specified Amazon Chime Voice
%% Connector.
%%
%% If emergency calling is configured for the Amazon Chime Voice Connector,
%% it must be deleted prior to deleting the origination settings.
delete_voice_connector_origination(Client, VoiceConnectorId, Input) ->
    delete_voice_connector_origination(Client, VoiceConnectorId, Input, []).
delete_voice_connector_origination(Client, VoiceConnectorId, Input0, Options) ->
    Method = delete,
    Path = ["/voice-connectors/", http_uri:encode(VoiceConnectorId), "/origination"],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the proxy configuration from the specified Amazon Chime Voice
%% Connector.
delete_voice_connector_proxy(Client, VoiceConnectorId, Input) ->
    delete_voice_connector_proxy(Client, VoiceConnectorId, Input, []).
delete_voice_connector_proxy(Client, VoiceConnectorId, Input0, Options) ->
    Method = delete,
    Path = ["/voice-connectors/", http_uri:encode(VoiceConnectorId), "/programmable-numbers/proxy"],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the streaming configuration for the specified Amazon Chime
%% Voice Connector.
delete_voice_connector_streaming_configuration(Client, VoiceConnectorId, Input) ->
    delete_voice_connector_streaming_configuration(Client, VoiceConnectorId, Input, []).
delete_voice_connector_streaming_configuration(Client, VoiceConnectorId, Input0, Options) ->
    Method = delete,
    Path = ["/voice-connectors/", http_uri:encode(VoiceConnectorId), "/streaming-configuration"],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the termination settings for the specified Amazon Chime Voice
%% Connector.
%%
%% If emergency calling is configured for the Amazon Chime Voice Connector,
%% it must be deleted prior to deleting the termination settings.
delete_voice_connector_termination(Client, VoiceConnectorId, Input) ->
    delete_voice_connector_termination(Client, VoiceConnectorId, Input, []).
delete_voice_connector_termination(Client, VoiceConnectorId, Input0, Options) ->
    Method = delete,
    Path = ["/voice-connectors/", http_uri:encode(VoiceConnectorId), "/termination"],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the specified SIP credentials used by your equipment to
%% authenticate during call termination.
delete_voice_connector_termination_credentials(Client, VoiceConnectorId, Input) ->
    delete_voice_connector_termination_credentials(Client, VoiceConnectorId, Input, []).
delete_voice_connector_termination_credentials(Client, VoiceConnectorId, Input0, Options) ->
    Method = post,
    Path = ["/voice-connectors/", http_uri:encode(VoiceConnectorId), "/termination/credentials?operation=delete"],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Disassociates the primary provisioned phone number from the specified
%% Amazon Chime user.
disassociate_phone_number_from_user(Client, AccountId, UserId, Input) ->
    disassociate_phone_number_from_user(Client, AccountId, UserId, Input, []).
disassociate_phone_number_from_user(Client, AccountId, UserId, Input0, Options) ->
    Method = post,
    Path = ["/accounts/", http_uri:encode(AccountId), "/users/", http_uri:encode(UserId), "?operation=disassociate-phone-number"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Disassociates the specified phone numbers from the specified Amazon
%% Chime Voice Connector.
disassociate_phone_numbers_from_voice_connector(Client, VoiceConnectorId, Input) ->
    disassociate_phone_numbers_from_voice_connector(Client, VoiceConnectorId, Input, []).
disassociate_phone_numbers_from_voice_connector(Client, VoiceConnectorId, Input0, Options) ->
    Method = post,
    Path = ["/voice-connectors/", http_uri:encode(VoiceConnectorId), "?operation=disassociate-phone-numbers"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Disassociates the specified phone numbers from the specified Amazon
%% Chime Voice Connector group.
disassociate_phone_numbers_from_voice_connector_group(Client, VoiceConnectorGroupId, Input) ->
    disassociate_phone_numbers_from_voice_connector_group(Client, VoiceConnectorGroupId, Input, []).
disassociate_phone_numbers_from_voice_connector_group(Client, VoiceConnectorGroupId, Input0, Options) ->
    Method = post,
    Path = ["/voice-connector-groups/", http_uri:encode(VoiceConnectorGroupId), "?operation=disassociate-phone-numbers"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Disassociates the specified sign-in delegate groups from the
%% specified Amazon Chime account.
disassociate_signin_delegate_groups_from_account(Client, AccountId, Input) ->
    disassociate_signin_delegate_groups_from_account(Client, AccountId, Input, []).
disassociate_signin_delegate_groups_from_account(Client, AccountId, Input0, Options) ->
    Method = post,
    Path = ["/accounts/", http_uri:encode(AccountId), "?operation=disassociate-signin-delegate-groups"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves details for the specified Amazon Chime account, such as
%% account type and supported licenses.
get_account(Client, AccountId)
  when is_map(Client) ->
    get_account(Client, AccountId, []).
get_account(Client, AccountId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/accounts/", http_uri:encode(AccountId), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves account settings for the specified Amazon Chime account ID,
%% such as remote control and dial out settings.
%%
%% For more information about these settings, see Use the Policies Page in
%% the Amazon Chime Administration Guide.
get_account_settings(Client, AccountId)
  when is_map(Client) ->
    get_account_settings(Client, AccountId, []).
get_account_settings(Client, AccountId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/accounts/", http_uri:encode(AccountId), "/settings"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the Amazon Chime SDK attendee details for a specified meeting ID
%% and attendee ID.
%%
%% For more information about the Amazon Chime SDK, see Using the Amazon
%% Chime SDK in the Amazon Chime Developer Guide.
get_attendee(Client, AttendeeId, MeetingId)
  when is_map(Client) ->
    get_attendee(Client, AttendeeId, MeetingId, []).
get_attendee(Client, AttendeeId, MeetingId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/meetings/", http_uri:encode(MeetingId), "/attendees/", http_uri:encode(AttendeeId), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves details for the specified bot, such as bot email address,
%% bot type, status, and display name.
get_bot(Client, AccountId, BotId)
  when is_map(Client) ->
    get_bot(Client, AccountId, BotId, []).
get_bot(Client, AccountId, BotId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/accounts/", http_uri:encode(AccountId), "/bots/", http_uri:encode(BotId), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets details for an events configuration that allows a bot to receive
%% outgoing events, such as an HTTPS endpoint or Lambda function ARN.
get_events_configuration(Client, AccountId, BotId)
  when is_map(Client) ->
    get_events_configuration(Client, AccountId, BotId, []).
get_events_configuration(Client, AccountId, BotId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/accounts/", http_uri:encode(AccountId), "/bots/", http_uri:encode(BotId), "/events-configuration"],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves global settings for the administrator's AWS account, such
%% as Amazon Chime Business Calling and Amazon Chime Voice Connector
%% settings.
get_global_settings(Client)
  when is_map(Client) ->
    get_global_settings(Client, []).
get_global_settings(Client, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/settings"],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the Amazon Chime SDK meeting details for the specified meeting
%% ID.
%%
%% For more information about the Amazon Chime SDK, see Using the Amazon
%% Chime SDK in the Amazon Chime Developer Guide.
get_meeting(Client, MeetingId)
  when is_map(Client) ->
    get_meeting(Client, MeetingId, []).
get_meeting(Client, MeetingId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/meetings/", http_uri:encode(MeetingId), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves details for the specified phone number ID, such as
%% associations, capabilities, and product type.
get_phone_number(Client, PhoneNumberId)
  when is_map(Client) ->
    get_phone_number(Client, PhoneNumberId, []).
get_phone_number(Client, PhoneNumberId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/phone-numbers/", http_uri:encode(PhoneNumberId), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves details for the specified phone number order, such as order
%% creation timestamp, phone numbers in E.164 format, product type, and order
%% status.
get_phone_number_order(Client, PhoneNumberOrderId)
  when is_map(Client) ->
    get_phone_number_order(Client, PhoneNumberOrderId, []).
get_phone_number_order(Client, PhoneNumberOrderId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/phone-number-orders/", http_uri:encode(PhoneNumberOrderId), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the phone number settings for the administrator's AWS
%% account, such as the default outbound calling name.
get_phone_number_settings(Client)
  when is_map(Client) ->
    get_phone_number_settings(Client, []).
get_phone_number_settings(Client, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/settings/phone-number"],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the specified proxy session details for the specified Amazon
%% Chime Voice Connector.
get_proxy_session(Client, ProxySessionId, VoiceConnectorId)
  when is_map(Client) ->
    get_proxy_session(Client, ProxySessionId, VoiceConnectorId, []).
get_proxy_session(Client, ProxySessionId, VoiceConnectorId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/voice-connectors/", http_uri:encode(VoiceConnectorId), "/proxy-sessions/", http_uri:encode(ProxySessionId), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the retention settings for the specified Amazon Chime Enterprise
%% account.
%%
%% For more information about retention settings, see Managing Chat Retention
%% Policies in the Amazon Chime Administration Guide.
get_retention_settings(Client, AccountId)
  when is_map(Client) ->
    get_retention_settings(Client, AccountId, []).
get_retention_settings(Client, AccountId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/accounts/", http_uri:encode(AccountId), "/retention-settings"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves room details, such as the room name, for a room in an
%% Amazon Chime Enterprise account.
get_room(Client, AccountId, RoomId)
  when is_map(Client) ->
    get_room(Client, AccountId, RoomId, []).
get_room(Client, AccountId, RoomId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/accounts/", http_uri:encode(AccountId), "/rooms/", http_uri:encode(RoomId), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves details for the specified user ID, such as primary email
%% address, license type, and personal meeting PIN.
%%
%% To retrieve user details with an email address instead of a user ID, use
%% the `ListUsers` action, and then filter by email address.
get_user(Client, AccountId, UserId)
  when is_map(Client) ->
    get_user(Client, AccountId, UserId, []).
get_user(Client, AccountId, UserId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/accounts/", http_uri:encode(AccountId), "/users/", http_uri:encode(UserId), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves settings for the specified user ID, such as any associated
%% phone number settings.
get_user_settings(Client, AccountId, UserId)
  when is_map(Client) ->
    get_user_settings(Client, AccountId, UserId, []).
get_user_settings(Client, AccountId, UserId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/accounts/", http_uri:encode(AccountId), "/users/", http_uri:encode(UserId), "/settings"],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves details for the specified Amazon Chime Voice Connector,
%% such as timestamps, name, outbound host, and encryption requirements.
get_voice_connector(Client, VoiceConnectorId)
  when is_map(Client) ->
    get_voice_connector(Client, VoiceConnectorId, []).
get_voice_connector(Client, VoiceConnectorId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/voice-connectors/", http_uri:encode(VoiceConnectorId), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the emergency calling configuration details for the specified
%% Amazon Chime Voice Connector.
get_voice_connector_emergency_calling_configuration(Client, VoiceConnectorId)
  when is_map(Client) ->
    get_voice_connector_emergency_calling_configuration(Client, VoiceConnectorId, []).
get_voice_connector_emergency_calling_configuration(Client, VoiceConnectorId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/voice-connectors/", http_uri:encode(VoiceConnectorId), "/emergency-calling-configuration"],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves details for the specified Amazon Chime Voice Connector
%% group, such as timestamps, name, and associated `VoiceConnectorItems`.
get_voice_connector_group(Client, VoiceConnectorGroupId)
  when is_map(Client) ->
    get_voice_connector_group(Client, VoiceConnectorGroupId, []).
get_voice_connector_group(Client, VoiceConnectorGroupId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/voice-connector-groups/", http_uri:encode(VoiceConnectorGroupId), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the logging configuration details for the specified Amazon
%% Chime Voice Connector.
%%
%% Shows whether SIP message logs are enabled for sending to Amazon
%% CloudWatch Logs.
get_voice_connector_logging_configuration(Client, VoiceConnectorId)
  when is_map(Client) ->
    get_voice_connector_logging_configuration(Client, VoiceConnectorId, []).
get_voice_connector_logging_configuration(Client, VoiceConnectorId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/voice-connectors/", http_uri:encode(VoiceConnectorId), "/logging-configuration"],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves origination setting details for the specified Amazon Chime
%% Voice Connector.
get_voice_connector_origination(Client, VoiceConnectorId)
  when is_map(Client) ->
    get_voice_connector_origination(Client, VoiceConnectorId, []).
get_voice_connector_origination(Client, VoiceConnectorId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/voice-connectors/", http_uri:encode(VoiceConnectorId), "/origination"],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the proxy configuration details for the specified Amazon Chime
%% Voice Connector.
get_voice_connector_proxy(Client, VoiceConnectorId)
  when is_map(Client) ->
    get_voice_connector_proxy(Client, VoiceConnectorId, []).
get_voice_connector_proxy(Client, VoiceConnectorId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/voice-connectors/", http_uri:encode(VoiceConnectorId), "/programmable-numbers/proxy"],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the streaming configuration details for the specified
%% Amazon Chime Voice Connector.
%%
%% Shows whether media streaming is enabled for sending to Amazon Kinesis. It
%% also shows the retention period, in hours, for the Amazon Kinesis data.
get_voice_connector_streaming_configuration(Client, VoiceConnectorId)
  when is_map(Client) ->
    get_voice_connector_streaming_configuration(Client, VoiceConnectorId, []).
get_voice_connector_streaming_configuration(Client, VoiceConnectorId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/voice-connectors/", http_uri:encode(VoiceConnectorId), "/streaming-configuration"],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves termination setting details for the specified Amazon Chime
%% Voice Connector.
get_voice_connector_termination(Client, VoiceConnectorId)
  when is_map(Client) ->
    get_voice_connector_termination(Client, VoiceConnectorId, []).
get_voice_connector_termination(Client, VoiceConnectorId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/voice-connectors/", http_uri:encode(VoiceConnectorId), "/termination"],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the last time a SIP `OPTIONS` ping was
%% received from your SIP infrastructure for the specified Amazon Chime Voice
%% Connector.
get_voice_connector_termination_health(Client, VoiceConnectorId)
  when is_map(Client) ->
    get_voice_connector_termination_health(Client, VoiceConnectorId, []).
get_voice_connector_termination_health(Client, VoiceConnectorId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/voice-connectors/", http_uri:encode(VoiceConnectorId), "/termination/health"],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Sends email to a maximum of 50 users, inviting them to the specified
%% Amazon Chime `Team` account.
%%
%% Only `Team` account types are currently supported for this action.
invite_users(Client, AccountId, Input) ->
    invite_users(Client, AccountId, Input, []).
invite_users(Client, AccountId, Input0, Options) ->
    Method = post,
    Path = ["/accounts/", http_uri:encode(AccountId), "/users?operation=add"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Lists the Amazon Chime accounts under the administrator's AWS
%% account.
%%
%% You can filter accounts by account name prefix. To find out which Amazon
%% Chime account a user belongs to, you can filter by the user's email
%% address, which returns one account result.
list_accounts(Client, MaxResults, Name, NextToken, UserEmail)
  when is_map(Client) ->
    list_accounts(Client, MaxResults, Name, NextToken, UserEmail, []).
list_accounts(Client, MaxResults, Name, NextToken, UserEmail, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/accounts"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, MaxResults},
        {<<"name">>, Name},
        {<<"next-token">>, NextToken},
        {<<"user-email">>, UserEmail}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the tags applied to an Amazon Chime SDK attendee resource.
list_attendee_tags(Client, AttendeeId, MeetingId)
  when is_map(Client) ->
    list_attendee_tags(Client, AttendeeId, MeetingId, []).
list_attendee_tags(Client, AttendeeId, MeetingId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/meetings/", http_uri:encode(MeetingId), "/attendees/", http_uri:encode(AttendeeId), "/tags"],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the attendees for the specified Amazon Chime SDK meeting.
%%
%% For more information about the Amazon Chime SDK, see Using the Amazon
%% Chime SDK in the Amazon Chime Developer Guide.
list_attendees(Client, MeetingId, MaxResults, NextToken)
  when is_map(Client) ->
    list_attendees(Client, MeetingId, MaxResults, NextToken, []).
list_attendees(Client, MeetingId, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/meetings/", http_uri:encode(MeetingId), "/attendees"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, MaxResults},
        {<<"next-token">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the bots associated with the administrator's Amazon Chime
%% Enterprise account ID.
list_bots(Client, AccountId, MaxResults, NextToken)
  when is_map(Client) ->
    list_bots(Client, AccountId, MaxResults, NextToken, []).
list_bots(Client, AccountId, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/accounts/", http_uri:encode(AccountId), "/bots"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, MaxResults},
        {<<"next-token">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the tags applied to an Amazon Chime SDK meeting resource.
list_meeting_tags(Client, MeetingId)
  when is_map(Client) ->
    list_meeting_tags(Client, MeetingId, []).
list_meeting_tags(Client, MeetingId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/meetings/", http_uri:encode(MeetingId), "/tags"],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists up to 100 active Amazon Chime SDK meetings.
%%
%% For more information about the Amazon Chime SDK, see Using the Amazon
%% Chime SDK in the Amazon Chime Developer Guide.
list_meetings(Client, MaxResults, NextToken)
  when is_map(Client) ->
    list_meetings(Client, MaxResults, NextToken, []).
list_meetings(Client, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/meetings"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, MaxResults},
        {<<"next-token">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the phone number orders for the administrator's Amazon Chime
%% account.
list_phone_number_orders(Client, MaxResults, NextToken)
  when is_map(Client) ->
    list_phone_number_orders(Client, MaxResults, NextToken, []).
list_phone_number_orders(Client, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/phone-number-orders"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, MaxResults},
        {<<"next-token">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the phone numbers for the specified Amazon Chime account,
%% Amazon Chime user, Amazon Chime Voice Connector, or Amazon Chime Voice
%% Connector group.
list_phone_numbers(Client, FilterName, FilterValue, MaxResults, NextToken, ProductType, Status)
  when is_map(Client) ->
    list_phone_numbers(Client, FilterName, FilterValue, MaxResults, NextToken, ProductType, Status, []).
list_phone_numbers(Client, FilterName, FilterValue, MaxResults, NextToken, ProductType, Status, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/phone-numbers"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"filter-name">>, FilterName},
        {<<"filter-value">>, FilterValue},
        {<<"max-results">>, MaxResults},
        {<<"next-token">>, NextToken},
        {<<"product-type">>, ProductType},
        {<<"status">>, Status}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the proxy sessions for the specified Amazon Chime Voice
%% Connector.
list_proxy_sessions(Client, VoiceConnectorId, MaxResults, NextToken, Status)
  when is_map(Client) ->
    list_proxy_sessions(Client, VoiceConnectorId, MaxResults, NextToken, Status, []).
list_proxy_sessions(Client, VoiceConnectorId, MaxResults, NextToken, Status, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/voice-connectors/", http_uri:encode(VoiceConnectorId), "/proxy-sessions"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, MaxResults},
        {<<"next-token">>, NextToken},
        {<<"status">>, Status}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the membership details for the specified room in an Amazon
%% Chime Enterprise account, such as the members' IDs, email addresses, and
%% names.
list_room_memberships(Client, AccountId, RoomId, MaxResults, NextToken)
  when is_map(Client) ->
    list_room_memberships(Client, AccountId, RoomId, MaxResults, NextToken, []).
list_room_memberships(Client, AccountId, RoomId, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/accounts/", http_uri:encode(AccountId), "/rooms/", http_uri:encode(RoomId), "/memberships"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, MaxResults},
        {<<"next-token">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the room details for the specified Amazon Chime Enterprise
%% account.
%%
%% Optionally, filter the results by a member ID (user ID or bot ID) to see a
%% list of rooms that the member belongs to.
list_rooms(Client, AccountId, MaxResults, MemberId, NextToken)
  when is_map(Client) ->
    list_rooms(Client, AccountId, MaxResults, MemberId, NextToken, []).
list_rooms(Client, AccountId, MaxResults, MemberId, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/accounts/", http_uri:encode(AccountId), "/rooms"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, MaxResults},
        {<<"member-id">>, MemberId},
        {<<"next-token">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the tags applied to an Amazon Chime SDK meeting resource.
list_tags_for_resource(Client, ResourceARN)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceARN, []).
list_tags_for_resource(Client, ResourceARN, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/tags"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"arn">>, ResourceARN}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the users that belong to the specified Amazon Chime account.
%%
%% You can specify an email address to list only the user that the email
%% address belongs to.
list_users(Client, AccountId, MaxResults, NextToken, UserEmail, UserType)
  when is_map(Client) ->
    list_users(Client, AccountId, MaxResults, NextToken, UserEmail, UserType, []).
list_users(Client, AccountId, MaxResults, NextToken, UserEmail, UserType, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/accounts/", http_uri:encode(AccountId), "/users"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, MaxResults},
        {<<"next-token">>, NextToken},
        {<<"user-email">>, UserEmail},
        {<<"user-type">>, UserType}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the Amazon Chime Voice Connector groups for the administrator's
%% AWS account.
list_voice_connector_groups(Client, MaxResults, NextToken)
  when is_map(Client) ->
    list_voice_connector_groups(Client, MaxResults, NextToken, []).
list_voice_connector_groups(Client, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/voice-connector-groups"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, MaxResults},
        {<<"next-token">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the SIP credentials for the specified Amazon Chime Voice
%% Connector.
list_voice_connector_termination_credentials(Client, VoiceConnectorId)
  when is_map(Client) ->
    list_voice_connector_termination_credentials(Client, VoiceConnectorId, []).
list_voice_connector_termination_credentials(Client, VoiceConnectorId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/voice-connectors/", http_uri:encode(VoiceConnectorId), "/termination/credentials"],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the Amazon Chime Voice Connectors for the administrator's AWS
%% account.
list_voice_connectors(Client, MaxResults, NextToken)
  when is_map(Client) ->
    list_voice_connectors(Client, MaxResults, NextToken, []).
list_voice_connectors(Client, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/voice-connectors"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, MaxResults},
        {<<"next-token">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Logs out the specified user from all of the devices they are
%% currently logged into.
logout_user(Client, AccountId, UserId, Input) ->
    logout_user(Client, AccountId, UserId, Input, []).
logout_user(Client, AccountId, UserId, Input0, Options) ->
    Method = post,
    Path = ["/accounts/", http_uri:encode(AccountId), "/users/", http_uri:encode(UserId), "?operation=logout"],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an events configuration that allows a bot to receive outgoing
%% events sent by Amazon Chime.
%%
%% Choose either an HTTPS endpoint or a Lambda function ARN. For more
%% information, see `Bot`.
put_events_configuration(Client, AccountId, BotId, Input) ->
    put_events_configuration(Client, AccountId, BotId, Input, []).
put_events_configuration(Client, AccountId, BotId, Input0, Options) ->
    Method = put,
    Path = ["/accounts/", http_uri:encode(AccountId), "/bots/", http_uri:encode(BotId), "/events-configuration"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Puts retention settings for the specified Amazon Chime Enterprise
%% account.
%%
%% We recommend using AWS CloudTrail to monitor usage of this API for your
%% account. For more information, see Logging Amazon Chime API Calls with AWS
%% CloudTrail in the Amazon Chime Administration Guide.
%%
%% To turn off existing retention settings, remove the number of days from
%% the corresponding RetentionDays field in the RetentionSettings object. For
%% more information about retention settings, see Managing Chat Retention
%% Policies in the Amazon Chime Administration Guide.
put_retention_settings(Client, AccountId, Input) ->
    put_retention_settings(Client, AccountId, Input, []).
put_retention_settings(Client, AccountId, Input0, Options) ->
    Method = put,
    Path = ["/accounts/", http_uri:encode(AccountId), "/retention-settings"],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Puts emergency calling configuration details to the specified Amazon
%% Chime Voice Connector, such as emergency phone numbers and calling
%% countries.
%%
%% Origination and termination settings must be enabled for the Amazon Chime
%% Voice Connector before emergency calling can be configured.
put_voice_connector_emergency_calling_configuration(Client, VoiceConnectorId, Input) ->
    put_voice_connector_emergency_calling_configuration(Client, VoiceConnectorId, Input, []).
put_voice_connector_emergency_calling_configuration(Client, VoiceConnectorId, Input0, Options) ->
    Method = put,
    Path = ["/voice-connectors/", http_uri:encode(VoiceConnectorId), "/emergency-calling-configuration"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Adds a logging configuration for the specified Amazon Chime Voice
%% Connector.
%%
%% The logging configuration specifies whether SIP message logs are enabled
%% for sending to Amazon CloudWatch Logs.
put_voice_connector_logging_configuration(Client, VoiceConnectorId, Input) ->
    put_voice_connector_logging_configuration(Client, VoiceConnectorId, Input, []).
put_voice_connector_logging_configuration(Client, VoiceConnectorId, Input0, Options) ->
    Method = put,
    Path = ["/voice-connectors/", http_uri:encode(VoiceConnectorId), "/logging-configuration"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Adds origination settings for the specified Amazon Chime Voice
%% Connector.
%%
%% If emergency calling is configured for the Amazon Chime Voice Connector,
%% it must be deleted prior to turning off origination settings.
put_voice_connector_origination(Client, VoiceConnectorId, Input) ->
    put_voice_connector_origination(Client, VoiceConnectorId, Input, []).
put_voice_connector_origination(Client, VoiceConnectorId, Input0, Options) ->
    Method = put,
    Path = ["/voice-connectors/", http_uri:encode(VoiceConnectorId), "/origination"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Puts the specified proxy configuration to the specified Amazon Chime
%% Voice Connector.
put_voice_connector_proxy(Client, VoiceConnectorId, Input) ->
    put_voice_connector_proxy(Client, VoiceConnectorId, Input, []).
put_voice_connector_proxy(Client, VoiceConnectorId, Input0, Options) ->
    Method = put,
    Path = ["/voice-connectors/", http_uri:encode(VoiceConnectorId), "/programmable-numbers/proxy"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Adds a streaming configuration for the specified Amazon Chime Voice
%% Connector.
%%
%% The streaming configuration specifies whether media streaming is enabled
%% for sending to Amazon Kinesis. It also sets the retention period, in
%% hours, for the Amazon Kinesis data.
put_voice_connector_streaming_configuration(Client, VoiceConnectorId, Input) ->
    put_voice_connector_streaming_configuration(Client, VoiceConnectorId, Input, []).
put_voice_connector_streaming_configuration(Client, VoiceConnectorId, Input0, Options) ->
    Method = put,
    Path = ["/voice-connectors/", http_uri:encode(VoiceConnectorId), "/streaming-configuration"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Adds termination settings for the specified Amazon Chime Voice
%% Connector.
%%
%% If emergency calling is configured for the Amazon Chime Voice Connector,
%% it must be deleted prior to turning off termination settings.
put_voice_connector_termination(Client, VoiceConnectorId, Input) ->
    put_voice_connector_termination(Client, VoiceConnectorId, Input, []).
put_voice_connector_termination(Client, VoiceConnectorId, Input0, Options) ->
    Method = put,
    Path = ["/voice-connectors/", http_uri:encode(VoiceConnectorId), "/termination"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Adds termination SIP credentials for the specified Amazon Chime Voice
%% Connector.
put_voice_connector_termination_credentials(Client, VoiceConnectorId, Input) ->
    put_voice_connector_termination_credentials(Client, VoiceConnectorId, Input, []).
put_voice_connector_termination_credentials(Client, VoiceConnectorId, Input0, Options) ->
    Method = post,
    Path = ["/voice-connectors/", http_uri:encode(VoiceConnectorId), "/termination/credentials?operation=put"],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Redacts the specified message from the specified Amazon Chime
%% conversation.
redact_conversation_message(Client, AccountId, ConversationId, MessageId, Input) ->
    redact_conversation_message(Client, AccountId, ConversationId, MessageId, Input, []).
redact_conversation_message(Client, AccountId, ConversationId, MessageId, Input0, Options) ->
    Method = post,
    Path = ["/accounts/", http_uri:encode(AccountId), "/conversations/", http_uri:encode(ConversationId), "/messages/", http_uri:encode(MessageId), "?operation=redact"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Redacts the specified message from the specified Amazon Chime chat
%% room.
redact_room_message(Client, AccountId, MessageId, RoomId, Input) ->
    redact_room_message(Client, AccountId, MessageId, RoomId, Input, []).
redact_room_message(Client, AccountId, MessageId, RoomId, Input0, Options) ->
    Method = post,
    Path = ["/accounts/", http_uri:encode(AccountId), "/rooms/", http_uri:encode(RoomId), "/messages/", http_uri:encode(MessageId), "?operation=redact"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Regenerates the security token for a bot.
regenerate_security_token(Client, AccountId, BotId, Input) ->
    regenerate_security_token(Client, AccountId, BotId, Input, []).
regenerate_security_token(Client, AccountId, BotId, Input0, Options) ->
    Method = post,
    Path = ["/accounts/", http_uri:encode(AccountId), "/bots/", http_uri:encode(BotId), "?operation=regenerate-security-token"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Resets the personal meeting PIN for the specified user on an Amazon
%% Chime account.
%%
%% Returns the `User` object with the updated personal meeting PIN.
reset_personal_p_i_n(Client, AccountId, UserId, Input) ->
    reset_personal_p_i_n(Client, AccountId, UserId, Input, []).
reset_personal_p_i_n(Client, AccountId, UserId, Input0, Options) ->
    Method = post,
    Path = ["/accounts/", http_uri:encode(AccountId), "/users/", http_uri:encode(UserId), "?operation=reset-personal-pin"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Moves a phone number from the Deletion queue back into the phone
%% number Inventory.
restore_phone_number(Client, PhoneNumberId, Input) ->
    restore_phone_number(Client, PhoneNumberId, Input, []).
restore_phone_number(Client, PhoneNumberId, Input0, Options) ->
    Method = post,
    Path = ["/phone-numbers/", http_uri:encode(PhoneNumberId), "?operation=restore"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Searches phone numbers that can be ordered.
search_available_phone_numbers(Client, AreaCode, City, Country, MaxResults, NextToken, State, TollFreePrefix)
  when is_map(Client) ->
    search_available_phone_numbers(Client, AreaCode, City, Country, MaxResults, NextToken, State, TollFreePrefix, []).
search_available_phone_numbers(Client, AreaCode, City, Country, MaxResults, NextToken, State, TollFreePrefix, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/search?type=phone-numbers"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"area-code">>, AreaCode},
        {<<"city">>, City},
        {<<"country">>, Country},
        {<<"max-results">>, MaxResults},
        {<<"next-token">>, NextToken},
        {<<"state">>, State},
        {<<"toll-free-prefix">>, TollFreePrefix}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Applies the specified tags to the specified Amazon Chime SDK
%% attendee.
tag_attendee(Client, AttendeeId, MeetingId, Input) ->
    tag_attendee(Client, AttendeeId, MeetingId, Input, []).
tag_attendee(Client, AttendeeId, MeetingId, Input0, Options) ->
    Method = post,
    Path = ["/meetings/", http_uri:encode(MeetingId), "/attendees/", http_uri:encode(AttendeeId), "/tags?operation=add"],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Applies the specified tags to the specified Amazon Chime SDK meeting.
tag_meeting(Client, MeetingId, Input) ->
    tag_meeting(Client, MeetingId, Input, []).
tag_meeting(Client, MeetingId, Input0, Options) ->
    Method = post,
    Path = ["/meetings/", http_uri:encode(MeetingId), "/tags?operation=add"],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Applies the specified tags to the specified Amazon Chime SDK meeting
%% resource.
tag_resource(Client, Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input0, Options) ->
    Method = post,
    Path = ["/tags?operation=tag-resource"],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Untags the specified tags from the specified Amazon Chime SDK
%% attendee.
untag_attendee(Client, AttendeeId, MeetingId, Input) ->
    untag_attendee(Client, AttendeeId, MeetingId, Input, []).
untag_attendee(Client, AttendeeId, MeetingId, Input0, Options) ->
    Method = post,
    Path = ["/meetings/", http_uri:encode(MeetingId), "/attendees/", http_uri:encode(AttendeeId), "/tags?operation=delete"],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Untags the specified tags from the specified Amazon Chime SDK
%% meeting.
untag_meeting(Client, MeetingId, Input) ->
    untag_meeting(Client, MeetingId, Input, []).
untag_meeting(Client, MeetingId, Input0, Options) ->
    Method = post,
    Path = ["/meetings/", http_uri:encode(MeetingId), "/tags?operation=delete"],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Untags the specified tags from the specified Amazon Chime SDK meeting
%% resource.
untag_resource(Client, Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input0, Options) ->
    Method = post,
    Path = ["/tags?operation=untag-resource"],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates account details for the specified Amazon Chime account.
%%
%% Currently, only account name updates are supported for this action.
update_account(Client, AccountId, Input) ->
    update_account(Client, AccountId, Input, []).
update_account(Client, AccountId, Input0, Options) ->
    Method = post,
    Path = ["/accounts/", http_uri:encode(AccountId), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the settings for the specified Amazon Chime account.
%%
%% You can update settings for remote control of shared screens, or for the
%% dial-out option. For more information about these settings, see Use the
%% Policies Page in the Amazon Chime Administration Guide.
update_account_settings(Client, AccountId, Input) ->
    update_account_settings(Client, AccountId, Input, []).
update_account_settings(Client, AccountId, Input0, Options) ->
    Method = put,
    Path = ["/accounts/", http_uri:encode(AccountId), "/settings"],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the status of the specified bot, such as starting or stopping
%% the bot from running in your Amazon Chime Enterprise account.
update_bot(Client, AccountId, BotId, Input) ->
    update_bot(Client, AccountId, BotId, Input, []).
update_bot(Client, AccountId, BotId, Input0, Options) ->
    Method = post,
    Path = ["/accounts/", http_uri:encode(AccountId), "/bots/", http_uri:encode(BotId), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates global settings for the administrator's AWS account, such as
%% Amazon Chime Business Calling and Amazon Chime Voice Connector settings.
update_global_settings(Client, Input) ->
    update_global_settings(Client, Input, []).
update_global_settings(Client, Input0, Options) ->
    Method = put,
    Path = ["/settings"],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates phone number details, such as product type or calling name,
%% for the specified phone number ID.
%%
%% You can update one phone number detail at a time. For example, you can
%% update either the product type or the calling name in one action.
%%
%% For toll-free numbers, you must use the Amazon Chime Voice Connector
%% product type.
%%
%% Updates to outbound calling names can take up to 72 hours to complete.
%% Pending updates to outbound calling names must be complete before you can
%% request another update.
update_phone_number(Client, PhoneNumberId, Input) ->
    update_phone_number(Client, PhoneNumberId, Input, []).
update_phone_number(Client, PhoneNumberId, Input0, Options) ->
    Method = post,
    Path = ["/phone-numbers/", http_uri:encode(PhoneNumberId), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the phone number settings for the administrator's AWS
%% account, such as the default outbound calling name.
%%
%% You can update the default outbound calling name once every seven days.
%% Outbound calling names can take up to 72 hours to update.
update_phone_number_settings(Client, Input) ->
    update_phone_number_settings(Client, Input, []).
update_phone_number_settings(Client, Input0, Options) ->
    Method = put,
    Path = ["/settings/phone-number"],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the specified proxy session details, such as voice or SMS
%% capabilities.
update_proxy_session(Client, ProxySessionId, VoiceConnectorId, Input) ->
    update_proxy_session(Client, ProxySessionId, VoiceConnectorId, Input, []).
update_proxy_session(Client, ProxySessionId, VoiceConnectorId, Input0, Options) ->
    Method = post,
    Path = ["/voice-connectors/", http_uri:encode(VoiceConnectorId), "/proxy-sessions/", http_uri:encode(ProxySessionId), ""],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates room details, such as the room name, for a room in an Amazon
%% Chime Enterprise account.
update_room(Client, AccountId, RoomId, Input) ->
    update_room(Client, AccountId, RoomId, Input, []).
update_room(Client, AccountId, RoomId, Input0, Options) ->
    Method = post,
    Path = ["/accounts/", http_uri:encode(AccountId), "/rooms/", http_uri:encode(RoomId), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates room membership details, such as the member role, for a room
%% in an Amazon Chime Enterprise account.
%%
%% The member role designates whether the member is a chat room administrator
%% or a general chat room member. The member role can be updated only for
%% user IDs.
update_room_membership(Client, AccountId, MemberId, RoomId, Input) ->
    update_room_membership(Client, AccountId, MemberId, RoomId, Input, []).
update_room_membership(Client, AccountId, MemberId, RoomId, Input0, Options) ->
    Method = post,
    Path = ["/accounts/", http_uri:encode(AccountId), "/rooms/", http_uri:encode(RoomId), "/memberships/", http_uri:encode(MemberId), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates user details for a specified user ID.
%%
%% Currently, only `LicenseType` updates are supported for this action.
update_user(Client, AccountId, UserId, Input) ->
    update_user(Client, AccountId, UserId, Input, []).
update_user(Client, AccountId, UserId, Input0, Options) ->
    Method = post,
    Path = ["/accounts/", http_uri:encode(AccountId), "/users/", http_uri:encode(UserId), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the settings for the specified user, such as phone number
%% settings.
update_user_settings(Client, AccountId, UserId, Input) ->
    update_user_settings(Client, AccountId, UserId, Input, []).
update_user_settings(Client, AccountId, UserId, Input0, Options) ->
    Method = put,
    Path = ["/accounts/", http_uri:encode(AccountId), "/users/", http_uri:encode(UserId), "/settings"],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates details for the specified Amazon Chime Voice Connector.
update_voice_connector(Client, VoiceConnectorId, Input) ->
    update_voice_connector(Client, VoiceConnectorId, Input, []).
update_voice_connector(Client, VoiceConnectorId, Input0, Options) ->
    Method = put,
    Path = ["/voice-connectors/", http_uri:encode(VoiceConnectorId), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates details for the specified Amazon Chime Voice Connector group,
%% such as the name and Amazon Chime Voice Connector priority ranking.
update_voice_connector_group(Client, VoiceConnectorGroupId, Input) ->
    update_voice_connector_group(Client, VoiceConnectorGroupId, Input, []).
update_voice_connector_group(Client, VoiceConnectorGroupId, Input0, Options) ->
    Method = put,
    Path = ["/voice-connector-groups/", http_uri:encode(VoiceConnectorGroupId), ""],
    SuccessStatusCode = 202,

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
    Client1 = Client#{service => <<"chime">>,
                      region => <<"us-east-1">>},
    Host = build_host(<<"chime">>, Client1),
    URL0 = build_url(Host, Path, Client1),
    URL = aws_request:add_query(URL0, Query),
    AdditionalHeaders = [ {<<"Host">>, Host}
                        , {<<"Content-Type">>, <<"application/x-amz-json-1.1">>}
                        ],
    Headers1 = aws_request:add_headers(AdditionalHeaders, Headers0),
    Payload = encode_payload(Input),
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
build_host(EndpointPrefix, #{endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Endpoint], <<".">>).

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
