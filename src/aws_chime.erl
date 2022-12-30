%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc The Amazon Chime API (application programming interface) is designed
%% for developers to perform key tasks, such as creating and managing Amazon
%% Chime accounts, users, and Voice Connectors.
%%
%% This guide provides detailed information about the Amazon Chime API,
%% including operations, types, inputs and outputs, and error codes. It also
%% includes API actions for use with the Amazon Chime SDK, which developers
%% use to build their own communication applications. For more information
%% about the Amazon Chime SDK, see Using the Amazon Chime SDK in the Amazon
%% Chime Developer Guide.
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
%% </dd> <dt>Using REST APIs</dt> <dd> If you use REST to make API calls, you
%% must authenticate your request by providing a signature. Amazon Chime
%% supports signature version 4. For more information, see Signature Version
%% 4 Signing Process in the Amazon Web Services General Reference.
%%
%% When making REST API calls, use the service name `chime' and REST endpoint
%% `https://service.chime.aws.amazon.com'.
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
         batch_create_channel_membership/3,
         batch_create_channel_membership/4,
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
         create_app_instance/2,
         create_app_instance/3,
         create_app_instance_admin/3,
         create_app_instance_admin/4,
         create_app_instance_user/2,
         create_app_instance_user/3,
         create_attendee/3,
         create_attendee/4,
         create_bot/3,
         create_bot/4,
         create_channel/2,
         create_channel/3,
         create_channel_ban/3,
         create_channel_ban/4,
         create_channel_membership/3,
         create_channel_membership/4,
         create_channel_moderator/3,
         create_channel_moderator/4,
         create_media_capture_pipeline/2,
         create_media_capture_pipeline/3,
         create_meeting/2,
         create_meeting/3,
         create_meeting_dial_out/3,
         create_meeting_dial_out/4,
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
         create_sip_media_application/2,
         create_sip_media_application/3,
         create_sip_media_application_call/3,
         create_sip_media_application_call/4,
         create_sip_rule/2,
         create_sip_rule/3,
         create_user/3,
         create_user/4,
         create_voice_connector/2,
         create_voice_connector/3,
         create_voice_connector_group/2,
         create_voice_connector_group/3,
         delete_account/3,
         delete_account/4,
         delete_app_instance/3,
         delete_app_instance/4,
         delete_app_instance_admin/4,
         delete_app_instance_admin/5,
         delete_app_instance_streaming_configurations/3,
         delete_app_instance_streaming_configurations/4,
         delete_app_instance_user/3,
         delete_app_instance_user/4,
         delete_attendee/4,
         delete_attendee/5,
         delete_channel/3,
         delete_channel/4,
         delete_channel_ban/4,
         delete_channel_ban/5,
         delete_channel_membership/4,
         delete_channel_membership/5,
         delete_channel_message/4,
         delete_channel_message/5,
         delete_channel_moderator/4,
         delete_channel_moderator/5,
         delete_events_configuration/4,
         delete_events_configuration/5,
         delete_media_capture_pipeline/3,
         delete_media_capture_pipeline/4,
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
         delete_sip_media_application/3,
         delete_sip_media_application/4,
         delete_sip_rule/3,
         delete_sip_rule/4,
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
         describe_app_instance/2,
         describe_app_instance/4,
         describe_app_instance/5,
         describe_app_instance_admin/3,
         describe_app_instance_admin/5,
         describe_app_instance_admin/6,
         describe_app_instance_user/2,
         describe_app_instance_user/4,
         describe_app_instance_user/5,
         describe_channel/2,
         describe_channel/4,
         describe_channel/5,
         describe_channel_ban/3,
         describe_channel_ban/5,
         describe_channel_ban/6,
         describe_channel_membership/3,
         describe_channel_membership/5,
         describe_channel_membership/6,
         describe_channel_membership_for_app_instance_user/3,
         describe_channel_membership_for_app_instance_user/5,
         describe_channel_membership_for_app_instance_user/6,
         describe_channel_moderated_by_app_instance_user/3,
         describe_channel_moderated_by_app_instance_user/5,
         describe_channel_moderated_by_app_instance_user/6,
         describe_channel_moderator/3,
         describe_channel_moderator/5,
         describe_channel_moderator/6,
         disassociate_phone_number_from_user/4,
         disassociate_phone_number_from_user/5,
         disassociate_phone_numbers_from_voice_connector/3,
         disassociate_phone_numbers_from_voice_connector/4,
         disassociate_phone_numbers_from_voice_connector_group/3,
         disassociate_phone_numbers_from_voice_connector_group/4,
         disassociate_signin_delegate_groups_from_account/3,
         disassociate_signin_delegate_groups_from_account/4,
         get_account/2,
         get_account/4,
         get_account/5,
         get_account_settings/2,
         get_account_settings/4,
         get_account_settings/5,
         get_app_instance_retention_settings/2,
         get_app_instance_retention_settings/4,
         get_app_instance_retention_settings/5,
         get_app_instance_streaming_configurations/2,
         get_app_instance_streaming_configurations/4,
         get_app_instance_streaming_configurations/5,
         get_attendee/3,
         get_attendee/5,
         get_attendee/6,
         get_bot/3,
         get_bot/5,
         get_bot/6,
         get_channel_message/3,
         get_channel_message/5,
         get_channel_message/6,
         get_events_configuration/3,
         get_events_configuration/5,
         get_events_configuration/6,
         get_global_settings/1,
         get_global_settings/3,
         get_global_settings/4,
         get_media_capture_pipeline/2,
         get_media_capture_pipeline/4,
         get_media_capture_pipeline/5,
         get_meeting/2,
         get_meeting/4,
         get_meeting/5,
         get_messaging_session_endpoint/1,
         get_messaging_session_endpoint/3,
         get_messaging_session_endpoint/4,
         get_phone_number/2,
         get_phone_number/4,
         get_phone_number/5,
         get_phone_number_order/2,
         get_phone_number_order/4,
         get_phone_number_order/5,
         get_phone_number_settings/1,
         get_phone_number_settings/3,
         get_phone_number_settings/4,
         get_proxy_session/3,
         get_proxy_session/5,
         get_proxy_session/6,
         get_retention_settings/2,
         get_retention_settings/4,
         get_retention_settings/5,
         get_room/3,
         get_room/5,
         get_room/6,
         get_sip_media_application/2,
         get_sip_media_application/4,
         get_sip_media_application/5,
         get_sip_media_application_logging_configuration/2,
         get_sip_media_application_logging_configuration/4,
         get_sip_media_application_logging_configuration/5,
         get_sip_rule/2,
         get_sip_rule/4,
         get_sip_rule/5,
         get_user/3,
         get_user/5,
         get_user/6,
         get_user_settings/3,
         get_user_settings/5,
         get_user_settings/6,
         get_voice_connector/2,
         get_voice_connector/4,
         get_voice_connector/5,
         get_voice_connector_emergency_calling_configuration/2,
         get_voice_connector_emergency_calling_configuration/4,
         get_voice_connector_emergency_calling_configuration/5,
         get_voice_connector_group/2,
         get_voice_connector_group/4,
         get_voice_connector_group/5,
         get_voice_connector_logging_configuration/2,
         get_voice_connector_logging_configuration/4,
         get_voice_connector_logging_configuration/5,
         get_voice_connector_origination/2,
         get_voice_connector_origination/4,
         get_voice_connector_origination/5,
         get_voice_connector_proxy/2,
         get_voice_connector_proxy/4,
         get_voice_connector_proxy/5,
         get_voice_connector_streaming_configuration/2,
         get_voice_connector_streaming_configuration/4,
         get_voice_connector_streaming_configuration/5,
         get_voice_connector_termination/2,
         get_voice_connector_termination/4,
         get_voice_connector_termination/5,
         get_voice_connector_termination_health/2,
         get_voice_connector_termination_health/4,
         get_voice_connector_termination_health/5,
         invite_users/3,
         invite_users/4,
         list_accounts/1,
         list_accounts/3,
         list_accounts/4,
         list_app_instance_admins/2,
         list_app_instance_admins/4,
         list_app_instance_admins/5,
         list_app_instance_users/2,
         list_app_instance_users/4,
         list_app_instance_users/5,
         list_app_instances/1,
         list_app_instances/3,
         list_app_instances/4,
         list_attendee_tags/3,
         list_attendee_tags/5,
         list_attendee_tags/6,
         list_attendees/2,
         list_attendees/4,
         list_attendees/5,
         list_bots/2,
         list_bots/4,
         list_bots/5,
         list_channel_bans/2,
         list_channel_bans/4,
         list_channel_bans/5,
         list_channel_memberships/2,
         list_channel_memberships/4,
         list_channel_memberships/5,
         list_channel_memberships_for_app_instance_user/1,
         list_channel_memberships_for_app_instance_user/3,
         list_channel_memberships_for_app_instance_user/4,
         list_channel_messages/2,
         list_channel_messages/4,
         list_channel_messages/5,
         list_channel_moderators/2,
         list_channel_moderators/4,
         list_channel_moderators/5,
         list_channels/2,
         list_channels/4,
         list_channels/5,
         list_channels_moderated_by_app_instance_user/1,
         list_channels_moderated_by_app_instance_user/3,
         list_channels_moderated_by_app_instance_user/4,
         list_media_capture_pipelines/1,
         list_media_capture_pipelines/3,
         list_media_capture_pipelines/4,
         list_meeting_tags/2,
         list_meeting_tags/4,
         list_meeting_tags/5,
         list_meetings/1,
         list_meetings/3,
         list_meetings/4,
         list_phone_number_orders/1,
         list_phone_number_orders/3,
         list_phone_number_orders/4,
         list_phone_numbers/1,
         list_phone_numbers/3,
         list_phone_numbers/4,
         list_proxy_sessions/2,
         list_proxy_sessions/4,
         list_proxy_sessions/5,
         list_room_memberships/3,
         list_room_memberships/5,
         list_room_memberships/6,
         list_rooms/2,
         list_rooms/4,
         list_rooms/5,
         list_sip_media_applications/1,
         list_sip_media_applications/3,
         list_sip_media_applications/4,
         list_sip_rules/1,
         list_sip_rules/3,
         list_sip_rules/4,
         list_supported_phone_number_countries/2,
         list_supported_phone_number_countries/4,
         list_supported_phone_number_countries/5,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         list_users/2,
         list_users/4,
         list_users/5,
         list_voice_connector_groups/1,
         list_voice_connector_groups/3,
         list_voice_connector_groups/4,
         list_voice_connector_termination_credentials/2,
         list_voice_connector_termination_credentials/4,
         list_voice_connector_termination_credentials/5,
         list_voice_connectors/1,
         list_voice_connectors/3,
         list_voice_connectors/4,
         logout_user/4,
         logout_user/5,
         put_app_instance_retention_settings/3,
         put_app_instance_retention_settings/4,
         put_app_instance_streaming_configurations/3,
         put_app_instance_streaming_configurations/4,
         put_events_configuration/4,
         put_events_configuration/5,
         put_retention_settings/3,
         put_retention_settings/4,
         put_sip_media_application_logging_configuration/3,
         put_sip_media_application_logging_configuration/4,
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
         redact_channel_message/4,
         redact_channel_message/5,
         redact_conversation_message/5,
         redact_conversation_message/6,
         redact_room_message/5,
         redact_room_message/6,
         regenerate_security_token/4,
         regenerate_security_token/5,
         reset_personal_pin/4,
         reset_personal_pin/5,
         restore_phone_number/3,
         restore_phone_number/4,
         search_available_phone_numbers/1,
         search_available_phone_numbers/3,
         search_available_phone_numbers/4,
         send_channel_message/3,
         send_channel_message/4,
         start_meeting_transcription/3,
         start_meeting_transcription/4,
         stop_meeting_transcription/3,
         stop_meeting_transcription/4,
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
         update_app_instance/3,
         update_app_instance/4,
         update_app_instance_user/3,
         update_app_instance_user/4,
         update_bot/4,
         update_bot/5,
         update_channel/3,
         update_channel/4,
         update_channel_message/4,
         update_channel_message/5,
         update_channel_read_marker/3,
         update_channel_read_marker/4,
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
         update_sip_media_application/3,
         update_sip_media_application/4,
         update_sip_media_application_call/4,
         update_sip_media_application_call/5,
         update_sip_rule/3,
         update_sip_rule/4,
         update_user/4,
         update_user/5,
         update_user_settings/4,
         update_user_settings/5,
         update_voice_connector/3,
         update_voice_connector/4,
         update_voice_connector_group/3,
         update_voice_connector_group/4,
         validate_e911_address/2,
         validate_e911_address/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Associates a phone number with the specified Amazon Chime user.
associate_phone_number_with_user(Client, AccountId, UserId, Input) ->
    associate_phone_number_with_user(Client, AccountId, UserId, Input, []).
associate_phone_number_with_user(Client, AccountId, UserId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AccountId), "/users/", aws_util:encode_uri(UserId), "?operation=associate-phone-number"],
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

%% @doc Associates phone numbers with the specified Amazon Chime Voice
%% Connector.
associate_phone_numbers_with_voice_connector(Client, VoiceConnectorId, Input) ->
    associate_phone_numbers_with_voice_connector(Client, VoiceConnectorId, Input, []).
associate_phone_numbers_with_voice_connector(Client, VoiceConnectorId, Input0, Options0) ->
    Method = post,
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "?operation=associate-phone-numbers"],
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

%% @doc Associates phone numbers with the specified Amazon Chime Voice
%% Connector group.
associate_phone_numbers_with_voice_connector_group(Client, VoiceConnectorGroupId, Input) ->
    associate_phone_numbers_with_voice_connector_group(Client, VoiceConnectorGroupId, Input, []).
associate_phone_numbers_with_voice_connector_group(Client, VoiceConnectorGroupId, Input0, Options0) ->
    Method = post,
    Path = ["/voice-connector-groups/", aws_util:encode_uri(VoiceConnectorGroupId), "?operation=associate-phone-numbers"],
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

%% @doc Associates the specified sign-in delegate groups with the specified
%% Amazon Chime account.
associate_signin_delegate_groups_with_account(Client, AccountId, Input) ->
    associate_signin_delegate_groups_with_account(Client, AccountId, Input, []).
associate_signin_delegate_groups_with_account(Client, AccountId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AccountId), "?operation=associate-signin-delegate-groups"],
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

%% @doc Creates up to 100 new attendees for an active Amazon Chime SDK
%% meeting.
%%
%% For more information about the Amazon Chime SDK, see Using the Amazon
%% Chime SDK in the Amazon Chime Developer Guide.
batch_create_attendee(Client, MeetingId, Input) ->
    batch_create_attendee(Client, MeetingId, Input, []).
batch_create_attendee(Client, MeetingId, Input0, Options0) ->
    Method = post,
    Path = ["/meetings/", aws_util:encode_uri(MeetingId), "/attendees?operation=batch-create"],
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

%% @doc Adds up to 50 members to a chat room in an Amazon Chime Enterprise
%% account.
%%
%% Members can be users or bots. The member role designates whether the
%% member is a chat room administrator or a general chat room member.
batch_create_room_membership(Client, AccountId, RoomId, Input) ->
    batch_create_room_membership(Client, AccountId, RoomId, Input, []).
batch_create_room_membership(Client, AccountId, RoomId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AccountId), "/rooms/", aws_util:encode_uri(RoomId), "/memberships?operation=batch-create"],
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

%% @doc Moves phone numbers into the Deletion queue.
%%
%% Phone numbers must be disassociated from any users or Amazon Chime Voice
%% Connectors before they can be deleted.
%%
%% Phone numbers remain in the Deletion queue for 7 days before they are
%% deleted permanently.
batch_delete_phone_number(Client, Input) ->
    batch_delete_phone_number(Client, Input, []).
batch_delete_phone_number(Client, Input0, Options0) ->
    Method = post,
    Path = ["/phone-numbers?operation=batch-delete"],
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

%% @doc Suspends up to 50 users from a `Team' or `EnterpriseLWA' Amazon Chime
%% account.
%%
%% For more information about different account types, see Managing Your
%% Amazon Chime Accounts in the Amazon Chime Administration Guide.
%%
%% Users suspended from a `Team' account are disassociated from the
%% account,but they can continue to use Amazon Chime as free users. To remove
%% the suspension from suspended `Team' account users, invite them to the
%% `Team' account again. You can use the `InviteUsers' action to do so.
%%
%% Users suspended from an `EnterpriseLWA' account are immediately signed out
%% of Amazon Chime and can no longer sign in. To remove the suspension from
%% suspended `EnterpriseLWA' account users, use the `BatchUnsuspendUser'
%% action.
%%
%% To sign out users without suspending them, use the `LogoutUser' action.
batch_suspend_user(Client, AccountId, Input) ->
    batch_suspend_user(Client, AccountId, Input, []).
batch_suspend_user(Client, AccountId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AccountId), "/users?operation=suspend"],
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

%% @doc Removes the suspension from up to 50 previously suspended users for
%% the specified Amazon Chime `EnterpriseLWA' account.
%%
%% Only users on `EnterpriseLWA' accounts can be unsuspended using this
%% action. For more information about different account types, see Managing
%% Your Amazon Chime Accounts in the account types, in the Amazon Chime
%% Administration Guide.
%%
%% Previously suspended users who are unsuspended using this action are
%% returned to `Registered' status. Users who are not previously suspended
%% are ignored.
batch_unsuspend_user(Client, AccountId, Input) ->
    batch_unsuspend_user(Client, AccountId, Input, []).
batch_unsuspend_user(Client, AccountId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AccountId), "/users?operation=unsuspend"],
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

%% @doc Updates phone number product types or calling names.
%%
%% You can update one attribute at a time for each
%% `UpdatePhoneNumberRequestItem'. For example, you can update the product
%% type or the calling name.
%%
%% For toll-free numbers, you cannot use the Amazon Chime Business Calling
%% product type. For numbers outside the U.S., you must use the Amazon Chime
%% SIP Media Application Dial-In product type.
%%
%% Updates to outbound calling names can take up to 72 hours to complete.
%% Pending updates to outbound calling names must be complete before you can
%% request another update.
batch_update_phone_number(Client, Input) ->
    batch_update_phone_number(Client, Input, []).
batch_update_phone_number(Client, Input0, Options0) ->
    Method = post,
    Path = ["/phone-numbers?operation=batch-update"],
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

%% @doc Updates user details within the `UpdateUserRequestItem' object for up
%% to 20 users for the specified Amazon Chime account.
%%
%% Currently, only `LicenseType' updates are supported for this action.
batch_update_user(Client, AccountId, Input) ->
    batch_update_user(Client, AccountId, Input, []).
batch_update_user(Client, AccountId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AccountId), "/users"],
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

%% @doc Creates an Amazon Chime account under the administrator's AWS
%% account.
%%
%% Only `Team' account types are currently supported for this action. For
%% more information about different account types, see Managing Your Amazon
%% Chime Accounts in the Amazon Chime Administration Guide.
create_account(Client, Input) ->
    create_account(Client, Input, []).
create_account(Client, Input0, Options0) ->
    Method = post,
    Path = ["/accounts"],
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

%% @doc Creates an Amazon Chime SDK messaging `AppInstance' under an AWS
%% account.
%%
%% Only SDK messaging customers use this API. `CreateAppInstance' supports
%% idempotency behavior as described in the AWS API Standard.
create_app_instance(Client, Input) ->
    create_app_instance(Client, Input, []).
create_app_instance(Client, Input0, Options0) ->
    Method = post,
    Path = ["/app-instances"],
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

%% @doc Promotes an `AppInstanceUser' to an `AppInstanceAdmin'.
%%
%% The promoted user can perform the following actions.
%%
%% <ul> <li> `ChannelModerator' actions across all channels in the
%% `AppInstance'.
%%
%% </li> <li> `DeleteChannelMessage' actions.
%%
%% </li> </ul> Only an `AppInstanceUser' can be promoted to an
%% `AppInstanceAdmin' role.
create_app_instance_admin(Client, AppInstanceArn, Input) ->
    create_app_instance_admin(Client, AppInstanceArn, Input, []).
create_app_instance_admin(Client, AppInstanceArn, Input0, Options0) ->
    Method = post,
    Path = ["/app-instances/", aws_util:encode_uri(AppInstanceArn), "/admins"],
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

%% @doc Creates a user under an Amazon Chime `AppInstance'.
%%
%% The request consists of a unique `appInstanceUserId' and `Name' for that
%% user.
create_app_instance_user(Client, Input) ->
    create_app_instance_user(Client, Input, []).
create_app_instance_user(Client, Input0, Options0) ->
    Method = post,
    Path = ["/app-instance-users"],
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

%% @doc Creates a new attendee for an active Amazon Chime SDK meeting.
%%
%% For more information about the Amazon Chime SDK, see Using the Amazon
%% Chime SDK in the Amazon Chime Developer Guide.
create_attendee(Client, MeetingId, Input) ->
    create_attendee(Client, MeetingId, Input, []).
create_attendee(Client, MeetingId, Input0, Options0) ->
    Method = post,
    Path = ["/meetings/", aws_util:encode_uri(MeetingId), "/attendees"],
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

%% @doc Creates a bot for an Amazon Chime Enterprise account.
create_bot(Client, AccountId, Input) ->
    create_bot(Client, AccountId, Input, []).
create_bot(Client, AccountId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AccountId), "/bots"],
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

%% @doc Creates a channel to which you can add users and send messages.
%%
%% Restriction: You can't change a channel's privacy.
%%
%% The `x-amz-chime-bearer' request header is mandatory. Use the
%% `AppInstanceUserArn' of the user that makes the API call as the value in
%% the header.
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
%% Moderators can't add banned members to a channel. To undo a ban, you first
%% have to `DeleteChannelBan', and then `CreateChannelMembership'. Bans are
%% cleaned up when you delete users or channels.
%%
%% If you ban a user who is already part of a channel, that user is
%% automatically kicked from the channel.
%%
%% The `x-amz-chime-bearer' request header is mandatory. Use the
%% `AppInstanceUserArn' of the user that makes the API call as the value in
%% the header.
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

%% @doc Adds a user to a channel.
%%
%% The `InvitedBy' response field is derived from the request header. A
%% channel member can:
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
%% </li> </ul> The `x-amz-chime-bearer' request header is mandatory. Use the
%% `AppInstanceUserArn' of the user that makes the API call as the value in
%% the header.
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
%% </li> </ul> The `x-amz-chime-bearer' request header is mandatory. Use the
%% `AppInstanceUserArn' of the user that makes the API call as the value in
%% the header.
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

%% @doc Creates a media capture pipeline.
create_media_capture_pipeline(Client, Input) ->
    create_media_capture_pipeline(Client, Input, []).
create_media_capture_pipeline(Client, Input0, Options0) ->
    Method = post,
    Path = ["/media-capture-pipelines"],
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

%% @doc Creates a new Amazon Chime SDK meeting in the specified media Region
%% with no initial attendees.
%%
%% For more information about specifying media Regions, see Amazon Chime SDK
%% Media Regions in the Amazon Chime Developer Guide . For more information
%% about the Amazon Chime SDK, see Using the Amazon Chime SDK in the Amazon
%% Chime Developer Guide .
create_meeting(Client, Input) ->
    create_meeting(Client, Input, []).
create_meeting(Client, Input0, Options0) ->
    Method = post,
    Path = ["/meetings"],
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

%% @doc Uses the join token and call metadata in a meeting request (From
%% number, To number, and so forth) to initiate an outbound call to a public
%% switched telephone network (PSTN) and join them into a Chime meeting.
%%
%% Also ensures that the From number belongs to the customer.
%%
%% To play welcome audio or implement an interactive voice response (IVR),
%% use the `CreateSipMediaApplicationCall' action with the corresponding SIP
%% media application ID.
create_meeting_dial_out(Client, MeetingId, Input) ->
    create_meeting_dial_out(Client, MeetingId, Input, []).
create_meeting_dial_out(Client, MeetingId, Input0, Options0) ->
    Method = post,
    Path = ["/meetings/", aws_util:encode_uri(MeetingId), "/dial-outs"],
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

%% @doc Creates a new Amazon Chime SDK meeting in the specified media Region,
%% with attendees.
%%
%% For more information about specifying media Regions, see Amazon Chime SDK
%% Media Regions in the Amazon Chime Developer Guide . For more information
%% about the Amazon Chime SDK, see Using the Amazon Chime SDK in the Amazon
%% Chime Developer Guide .
create_meeting_with_attendees(Client, Input) ->
    create_meeting_with_attendees(Client, Input, []).
create_meeting_with_attendees(Client, Input0, Options0) ->
    Method = post,
    Path = ["/meetings?operation=create-attendees"],
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

%% @doc Creates an order for phone numbers to be provisioned.
%%
%% For toll-free numbers, you cannot use the Amazon Chime Business Calling
%% product type. For numbers outside the U.S., you must use the Amazon Chime
%% SIP Media Application Dial-In product type.
create_phone_number_order(Client, Input) ->
    create_phone_number_order(Client, Input, []).
create_phone_number_order(Client, Input0, Options0) ->
    Method = post,
    Path = ["/phone-number-orders"],
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

%% @doc Creates a proxy session on the specified Amazon Chime Voice Connector
%% for the specified participant phone numbers.
create_proxy_session(Client, VoiceConnectorId, Input) ->
    create_proxy_session(Client, VoiceConnectorId, Input, []).
create_proxy_session(Client, VoiceConnectorId, Input0, Options0) ->
    Method = post,
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/proxy-sessions"],
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

%% @doc Creates a chat room for the specified Amazon Chime Enterprise
%% account.
create_room(Client, AccountId, Input) ->
    create_room(Client, AccountId, Input, []).
create_room(Client, AccountId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AccountId), "/rooms"],
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

%% @doc Adds a member to a chat room in an Amazon Chime Enterprise account.
%%
%% A member can be either a user or a bot. The member role designates whether
%% the member is a chat room administrator or a general chat room member.
create_room_membership(Client, AccountId, RoomId, Input) ->
    create_room_membership(Client, AccountId, RoomId, Input, []).
create_room_membership(Client, AccountId, RoomId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AccountId), "/rooms/", aws_util:encode_uri(RoomId), "/memberships"],
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

%% @doc Creates a SIP media application.
create_sip_media_application(Client, Input) ->
    create_sip_media_application(Client, Input, []).
create_sip_media_application(Client, Input0, Options0) ->
    Method = post,
    Path = ["/sip-media-applications"],
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

%% @doc Creates an outbound call to a phone number from the phone number
%% specified in the request, and it invokes the endpoint of the specified
%% `sipMediaApplicationId'.
create_sip_media_application_call(Client, SipMediaApplicationId, Input) ->
    create_sip_media_application_call(Client, SipMediaApplicationId, Input, []).
create_sip_media_application_call(Client, SipMediaApplicationId, Input0, Options0) ->
    Method = post,
    Path = ["/sip-media-applications/", aws_util:encode_uri(SipMediaApplicationId), "/calls"],
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

%% @doc Creates a SIP rule which can be used to run a SIP media application
%% as a target for a specific trigger type.
create_sip_rule(Client, Input) ->
    create_sip_rule(Client, Input, []).
create_sip_rule(Client, Input0, Options0) ->
    Method = post,
    Path = ["/sip-rules"],
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

%% @doc Creates a user under the specified Amazon Chime account.
create_user(Client, AccountId, Input) ->
    create_user(Client, AccountId, Input, []).
create_user(Client, AccountId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AccountId), "/users?operation=create"],
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

%% @doc Creates an Amazon Chime Voice Connector under the administrator's AWS
%% account.
%%
%% You can choose to create an Amazon Chime Voice Connector in a specific AWS
%% Region.
%%
%% Enabling `CreateVoiceConnectorRequest$RequireEncryption' configures your
%% Amazon Chime Voice Connector to use TLS transport for SIP signaling and
%% Secure RTP (SRTP) for media. Inbound calls use TLS transport, and
%% unencrypted outbound calls are blocked.
create_voice_connector(Client, Input) ->
    create_voice_connector(Client, Input, []).
create_voice_connector(Client, Input0, Options0) ->
    Method = post,
    Path = ["/voice-connectors"],
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

%% @doc Creates an Amazon Chime Voice Connector group under the
%% administrator's AWS account.
%%
%% You can associate Amazon Chime Voice Connectors with the Amazon Chime
%% Voice Connector group by including `VoiceConnectorItems' in the request.
%%
%% You can include Amazon Chime Voice Connectors from different AWS Regions
%% in your group. This creates a fault tolerant mechanism for fallback in
%% case of availability events.
create_voice_connector_group(Client, Input) ->
    create_voice_connector_group(Client, Input, []).
create_voice_connector_group(Client, Input0, Options0) ->
    Method = post,
    Path = ["/voice-connector-groups"],
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

%% @doc Deletes the specified Amazon Chime account.
%%
%% You must suspend all users before deleting `Team' account. You can use the
%% `BatchSuspendUser' action to dodo.
%%
%% For `EnterpriseLWA' and `EnterpriseAD' accounts, you must release the
%% claimed domains for your Amazon Chime account before deletion. As soon as
%% you release the domain, all users under that account are suspended.
%%
%% Deleted accounts appear in your `Disabled' accounts list for 90 days. To
%% restore deleted account from your `Disabled' accounts list, you must
%% contact AWS Support.
%%
%% After 90 days, deleted accounts are permanently removed from your
%% `Disabled' accounts list.
delete_account(Client, AccountId, Input) ->
    delete_account(Client, AccountId, Input, []).
delete_account(Client, AccountId, Input0, Options0) ->
    Method = delete,
    Path = ["/accounts/", aws_util:encode_uri(AccountId), ""],
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

%% @doc Deletes an `AppInstance' and all associated data asynchronously.
delete_app_instance(Client, AppInstanceArn, Input) ->
    delete_app_instance(Client, AppInstanceArn, Input, []).
delete_app_instance(Client, AppInstanceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/app-instances/", aws_util:encode_uri(AppInstanceArn), ""],
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

%% @doc Demotes an `AppInstanceAdmin' to an `AppInstanceUser'.
%%
%% This action does not delete the user.
delete_app_instance_admin(Client, AppInstanceAdminArn, AppInstanceArn, Input) ->
    delete_app_instance_admin(Client, AppInstanceAdminArn, AppInstanceArn, Input, []).
delete_app_instance_admin(Client, AppInstanceAdminArn, AppInstanceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/app-instances/", aws_util:encode_uri(AppInstanceArn), "/admins/", aws_util:encode_uri(AppInstanceAdminArn), ""],
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

%% @doc Deletes the streaming configurations of an `AppInstance'.
delete_app_instance_streaming_configurations(Client, AppInstanceArn, Input) ->
    delete_app_instance_streaming_configurations(Client, AppInstanceArn, Input, []).
delete_app_instance_streaming_configurations(Client, AppInstanceArn, Input0, Options0) ->
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

%% @doc Deletes an `AppInstanceUser'.
delete_app_instance_user(Client, AppInstanceUserArn, Input) ->
    delete_app_instance_user(Client, AppInstanceUserArn, Input, []).
delete_app_instance_user(Client, AppInstanceUserArn, Input0, Options0) ->
    Method = delete,
    Path = ["/app-instance-users/", aws_util:encode_uri(AppInstanceUserArn), ""],
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

%% @doc Deletes an attendee from the specified Amazon Chime SDK meeting and
%% deletes their `JoinToken'.
%%
%% Attendees are automatically deleted when a Amazon Chime SDK meeting is
%% deleted. For more information about the Amazon Chime SDK, see Using the
%% Amazon Chime SDK in the Amazon Chime Developer Guide.
delete_attendee(Client, AttendeeId, MeetingId, Input) ->
    delete_attendee(Client, AttendeeId, MeetingId, Input, []).
delete_attendee(Client, AttendeeId, MeetingId, Input0, Options0) ->
    Method = delete,
    Path = ["/meetings/", aws_util:encode_uri(MeetingId), "/attendees/", aws_util:encode_uri(AttendeeId), ""],
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

%% @doc Immediately makes a channel and its memberships inaccessible and
%% marks them for deletion.
%%
%% This is an irreversible process.
%%
%% The `x-amz-chime-bearer' request header is mandatory. Use the
%% `AppInstanceUserArn' of the user that makes the API call as the value in
%% the header.
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

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Removes a user from a channel's ban list.
%%
%% The `x-amz-chime-bearer' request header is mandatory. Use the
%% `AppInstanceUserArn' of the user that makes the API call as the value in
%% the header.
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

%% @doc Removes a member from a channel.
%%
%% The `x-amz-chime-bearer' request header is mandatory. Use the
%% `AppInstanceUserArn' of the user that makes the API call as the value in
%% the header.
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

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a channel message.
%%
%% Only admins can perform this action. Deletion makes messages inaccessible
%% immediately. A background process deletes any revisions created by
%% `UpdateChannelMessage'.
%%
%% The `x-amz-chime-bearer' request header is mandatory. Use the
%% `AppInstanceUserArn' of the user that makes the API call as the value in
%% the header.
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

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a channel moderator.
%%
%% The `x-amz-chime-bearer' request header is mandatory. Use the
%% `AppInstanceUserArn' of the user that makes the API call as the value in
%% the header.
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

%% @doc Deletes the events configuration that allows a bot to receive
%% outgoing events.
delete_events_configuration(Client, AccountId, BotId, Input) ->
    delete_events_configuration(Client, AccountId, BotId, Input, []).
delete_events_configuration(Client, AccountId, BotId, Input0, Options0) ->
    Method = delete,
    Path = ["/accounts/", aws_util:encode_uri(AccountId), "/bots/", aws_util:encode_uri(BotId), "/events-configuration"],
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

%% @doc Deletes the media capture pipeline.
delete_media_capture_pipeline(Client, MediaPipelineId, Input) ->
    delete_media_capture_pipeline(Client, MediaPipelineId, Input, []).
delete_media_capture_pipeline(Client, MediaPipelineId, Input0, Options0) ->
    Method = delete,
    Path = ["/media-capture-pipelines/", aws_util:encode_uri(MediaPipelineId), ""],
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

%% @doc Deletes the specified Amazon Chime SDK meeting.
%%
%% The operation deletes all attendees, disconnects all clients, and prevents
%% new clients from joining the meeting. For more information about the
%% Amazon Chime SDK, see Using the Amazon Chime SDK in the Amazon Chime
%% Developer Guide.
delete_meeting(Client, MeetingId, Input) ->
    delete_meeting(Client, MeetingId, Input, []).
delete_meeting(Client, MeetingId, Input0, Options0) ->
    Method = delete,
    Path = ["/meetings/", aws_util:encode_uri(MeetingId), ""],
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

%% @doc Moves the specified phone number into the Deletion queue.
%%
%% A phone number must be disassociated from any users or Amazon Chime Voice
%% Connectors before it can be deleted.
%%
%% Deleted phone numbers remain in the Deletion queue for 7 days before they
%% are deleted permanently.
delete_phone_number(Client, PhoneNumberId, Input) ->
    delete_phone_number(Client, PhoneNumberId, Input, []).
delete_phone_number(Client, PhoneNumberId, Input0, Options0) ->
    Method = delete,
    Path = ["/phone-numbers/", aws_util:encode_uri(PhoneNumberId), ""],
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

%% @doc Deletes the specified proxy session from the specified Amazon Chime
%% Voice Connector.
delete_proxy_session(Client, ProxySessionId, VoiceConnectorId, Input) ->
    delete_proxy_session(Client, ProxySessionId, VoiceConnectorId, Input, []).
delete_proxy_session(Client, ProxySessionId, VoiceConnectorId, Input0, Options0) ->
    Method = delete,
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/proxy-sessions/", aws_util:encode_uri(ProxySessionId), ""],
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

%% @doc Deletes a chat room in an Amazon Chime Enterprise account.
delete_room(Client, AccountId, RoomId, Input) ->
    delete_room(Client, AccountId, RoomId, Input, []).
delete_room(Client, AccountId, RoomId, Input0, Options0) ->
    Method = delete,
    Path = ["/accounts/", aws_util:encode_uri(AccountId), "/rooms/", aws_util:encode_uri(RoomId), ""],
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

%% @doc Removes a member from a chat room in an Amazon Chime Enterprise
%% account.
delete_room_membership(Client, AccountId, MemberId, RoomId, Input) ->
    delete_room_membership(Client, AccountId, MemberId, RoomId, Input, []).
delete_room_membership(Client, AccountId, MemberId, RoomId, Input0, Options0) ->
    Method = delete,
    Path = ["/accounts/", aws_util:encode_uri(AccountId), "/rooms/", aws_util:encode_uri(RoomId), "/memberships/", aws_util:encode_uri(MemberId), ""],
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

%% @doc Deletes a SIP media application.
delete_sip_media_application(Client, SipMediaApplicationId, Input) ->
    delete_sip_media_application(Client, SipMediaApplicationId, Input, []).
delete_sip_media_application(Client, SipMediaApplicationId, Input0, Options0) ->
    Method = delete,
    Path = ["/sip-media-applications/", aws_util:encode_uri(SipMediaApplicationId), ""],
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

%% @doc Deletes a SIP rule.
%%
%% You must disable a SIP rule before you can delete it.
delete_sip_rule(Client, SipRuleId, Input) ->
    delete_sip_rule(Client, SipRuleId, Input, []).
delete_sip_rule(Client, SipRuleId, Input0, Options0) ->
    Method = delete,
    Path = ["/sip-rules/", aws_util:encode_uri(SipRuleId), ""],
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

%% @doc Deletes the specified Amazon Chime Voice Connector.
%%
%% Any phone numbers associated with the Amazon Chime Voice Connector must be
%% disassociated from it before it can be deleted.
delete_voice_connector(Client, VoiceConnectorId, Input) ->
    delete_voice_connector(Client, VoiceConnectorId, Input, []).
delete_voice_connector(Client, VoiceConnectorId, Input0, Options0) ->
    Method = delete,
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), ""],
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

%% @doc Deletes the emergency calling configuration details from the
%% specified Amazon Chime Voice Connector.
delete_voice_connector_emergency_calling_configuration(Client, VoiceConnectorId, Input) ->
    delete_voice_connector_emergency_calling_configuration(Client, VoiceConnectorId, Input, []).
delete_voice_connector_emergency_calling_configuration(Client, VoiceConnectorId, Input0, Options0) ->
    Method = delete,
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/emergency-calling-configuration"],
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

%% @doc Deletes the specified Amazon Chime Voice Connector group.
%%
%% Any `VoiceConnectorItems' and phone numbers associated with the group must
%% be removed before it can be deleted.
delete_voice_connector_group(Client, VoiceConnectorGroupId, Input) ->
    delete_voice_connector_group(Client, VoiceConnectorGroupId, Input, []).
delete_voice_connector_group(Client, VoiceConnectorGroupId, Input0, Options0) ->
    Method = delete,
    Path = ["/voice-connector-groups/", aws_util:encode_uri(VoiceConnectorGroupId), ""],
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

%% @doc Deletes the origination settings for the specified Amazon Chime Voice
%% Connector.
%%
%% If emergency calling is configured for the Amazon Chime Voice Connector,
%% it must be deleted prior to deleting the origination settings.
delete_voice_connector_origination(Client, VoiceConnectorId, Input) ->
    delete_voice_connector_origination(Client, VoiceConnectorId, Input, []).
delete_voice_connector_origination(Client, VoiceConnectorId, Input0, Options0) ->
    Method = delete,
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/origination"],
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

%% @doc Deletes the proxy configuration from the specified Amazon Chime Voice
%% Connector.
delete_voice_connector_proxy(Client, VoiceConnectorId, Input) ->
    delete_voice_connector_proxy(Client, VoiceConnectorId, Input, []).
delete_voice_connector_proxy(Client, VoiceConnectorId, Input0, Options0) ->
    Method = delete,
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/programmable-numbers/proxy"],
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

%% @doc Deletes the streaming configuration for the specified Amazon Chime
%% Voice Connector.
delete_voice_connector_streaming_configuration(Client, VoiceConnectorId, Input) ->
    delete_voice_connector_streaming_configuration(Client, VoiceConnectorId, Input, []).
delete_voice_connector_streaming_configuration(Client, VoiceConnectorId, Input0, Options0) ->
    Method = delete,
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/streaming-configuration"],
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

%% @doc Deletes the termination settings for the specified Amazon Chime Voice
%% Connector.
%%
%% If emergency calling is configured for the Amazon Chime Voice Connector,
%% it must be deleted prior to deleting the termination settings.
delete_voice_connector_termination(Client, VoiceConnectorId, Input) ->
    delete_voice_connector_termination(Client, VoiceConnectorId, Input, []).
delete_voice_connector_termination(Client, VoiceConnectorId, Input0, Options0) ->
    Method = delete,
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/termination"],
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

%% @doc Deletes the specified SIP credentials used by your equipment to
%% authenticate during call termination.
delete_voice_connector_termination_credentials(Client, VoiceConnectorId, Input) ->
    delete_voice_connector_termination_credentials(Client, VoiceConnectorId, Input, []).
delete_voice_connector_termination_credentials(Client, VoiceConnectorId, Input0, Options0) ->
    Method = post,
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/termination/credentials?operation=delete"],
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

%% @doc Returns the full details of an `AppInstance'.
describe_app_instance(Client, AppInstanceArn)
  when is_map(Client) ->
    describe_app_instance(Client, AppInstanceArn, #{}, #{}).

describe_app_instance(Client, AppInstanceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_app_instance(Client, AppInstanceArn, QueryMap, HeadersMap, []).

describe_app_instance(Client, AppInstanceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/app-instances/", aws_util:encode_uri(AppInstanceArn), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the full details of an `AppInstanceAdmin'.
describe_app_instance_admin(Client, AppInstanceAdminArn, AppInstanceArn)
  when is_map(Client) ->
    describe_app_instance_admin(Client, AppInstanceAdminArn, AppInstanceArn, #{}, #{}).

describe_app_instance_admin(Client, AppInstanceAdminArn, AppInstanceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_app_instance_admin(Client, AppInstanceAdminArn, AppInstanceArn, QueryMap, HeadersMap, []).

describe_app_instance_admin(Client, AppInstanceAdminArn, AppInstanceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/app-instances/", aws_util:encode_uri(AppInstanceArn), "/admins/", aws_util:encode_uri(AppInstanceAdminArn), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the full details of an `AppInstanceUser'.
describe_app_instance_user(Client, AppInstanceUserArn)
  when is_map(Client) ->
    describe_app_instance_user(Client, AppInstanceUserArn, #{}, #{}).

describe_app_instance_user(Client, AppInstanceUserArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_app_instance_user(Client, AppInstanceUserArn, QueryMap, HeadersMap, []).

describe_app_instance_user(Client, AppInstanceUserArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/app-instance-users/", aws_util:encode_uri(AppInstanceUserArn), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the full details of a channel in an Amazon Chime
%% `AppInstance'.
%%
%% The `x-amz-chime-bearer' request header is mandatory. Use the
%% `AppInstanceUserArn' of the user that makes the API call as the value in
%% the header.
describe_channel(Client, ChannelArn)
  when is_map(Client) ->
    describe_channel(Client, ChannelArn, #{}, #{}).

describe_channel(Client, ChannelArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_channel(Client, ChannelArn, QueryMap, HeadersMap, []).

describe_channel(Client, ChannelArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/channels/", aws_util:encode_uri(ChannelArn), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"x-amz-chime-bearer">>, maps:get(<<"x-amz-chime-bearer">>, HeadersMap, undefined)}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the full details of a channel ban.
%%
%% The `x-amz-chime-bearer' request header is mandatory. Use the
%% `AppInstanceUserArn' of the user that makes the API call as the value in
%% the header.
describe_channel_ban(Client, ChannelArn, MemberArn)
  when is_map(Client) ->
    describe_channel_ban(Client, ChannelArn, MemberArn, #{}, #{}).

describe_channel_ban(Client, ChannelArn, MemberArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_channel_ban(Client, ChannelArn, MemberArn, QueryMap, HeadersMap, []).

describe_channel_ban(Client, ChannelArn, MemberArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/channels/", aws_util:encode_uri(ChannelArn), "/bans/", aws_util:encode_uri(MemberArn), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"x-amz-chime-bearer">>, maps:get(<<"x-amz-chime-bearer">>, HeadersMap, undefined)}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the full details of a user's channel membership.
%%
%% The `x-amz-chime-bearer' request header is mandatory. Use the
%% `AppInstanceUserArn' of the user that makes the API call as the value in
%% the header.
describe_channel_membership(Client, ChannelArn, MemberArn)
  when is_map(Client) ->
    describe_channel_membership(Client, ChannelArn, MemberArn, #{}, #{}).

describe_channel_membership(Client, ChannelArn, MemberArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_channel_membership(Client, ChannelArn, MemberArn, QueryMap, HeadersMap, []).

describe_channel_membership(Client, ChannelArn, MemberArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/channels/", aws_util:encode_uri(ChannelArn), "/memberships/", aws_util:encode_uri(MemberArn), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"x-amz-chime-bearer">>, maps:get(<<"x-amz-chime-bearer">>, HeadersMap, undefined)}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the details of a channel based on the membership of the
%% specified `AppInstanceUser'.
%%
%% The `x-amz-chime-bearer' request header is mandatory. Use the
%% `AppInstanceUserArn' of the user that makes the API call as the value in
%% the header.
describe_channel_membership_for_app_instance_user(Client, ChannelArn, AppInstanceUserArn)
  when is_map(Client) ->
    describe_channel_membership_for_app_instance_user(Client, ChannelArn, AppInstanceUserArn, #{}, #{}).

describe_channel_membership_for_app_instance_user(Client, ChannelArn, AppInstanceUserArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_channel_membership_for_app_instance_user(Client, ChannelArn, AppInstanceUserArn, QueryMap, HeadersMap, []).

describe_channel_membership_for_app_instance_user(Client, ChannelArn, AppInstanceUserArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/channels/", aws_util:encode_uri(ChannelArn), "?scope=app-instance-user-membership"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"x-amz-chime-bearer">>, maps:get(<<"x-amz-chime-bearer">>, HeadersMap, undefined)}
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
%% `AppInstanceUserArn' of the user that makes the API call as the value in
%% the header.
describe_channel_moderated_by_app_instance_user(Client, ChannelArn, AppInstanceUserArn)
  when is_map(Client) ->
    describe_channel_moderated_by_app_instance_user(Client, ChannelArn, AppInstanceUserArn, #{}, #{}).

describe_channel_moderated_by_app_instance_user(Client, ChannelArn, AppInstanceUserArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_channel_moderated_by_app_instance_user(Client, ChannelArn, AppInstanceUserArn, QueryMap, HeadersMap, []).

describe_channel_moderated_by_app_instance_user(Client, ChannelArn, AppInstanceUserArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/channels/", aws_util:encode_uri(ChannelArn), "?scope=app-instance-user-moderated-channel"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"x-amz-chime-bearer">>, maps:get(<<"x-amz-chime-bearer">>, HeadersMap, undefined)}
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
%% `AppInstanceUserArn' of the user that makes the API call as the value in
%% the header.
describe_channel_moderator(Client, ChannelArn, ChannelModeratorArn)
  when is_map(Client) ->
    describe_channel_moderator(Client, ChannelArn, ChannelModeratorArn, #{}, #{}).

describe_channel_moderator(Client, ChannelArn, ChannelModeratorArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_channel_moderator(Client, ChannelArn, ChannelModeratorArn, QueryMap, HeadersMap, []).

describe_channel_moderator(Client, ChannelArn, ChannelModeratorArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/channels/", aws_util:encode_uri(ChannelArn), "/moderators/", aws_util:encode_uri(ChannelModeratorArn), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"x-amz-chime-bearer">>, maps:get(<<"x-amz-chime-bearer">>, HeadersMap, undefined)}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Disassociates the primary provisioned phone number from the specified
%% Amazon Chime user.
disassociate_phone_number_from_user(Client, AccountId, UserId, Input) ->
    disassociate_phone_number_from_user(Client, AccountId, UserId, Input, []).
disassociate_phone_number_from_user(Client, AccountId, UserId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AccountId), "/users/", aws_util:encode_uri(UserId), "?operation=disassociate-phone-number"],
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

%% @doc Disassociates the specified phone numbers from the specified Amazon
%% Chime Voice Connector.
disassociate_phone_numbers_from_voice_connector(Client, VoiceConnectorId, Input) ->
    disassociate_phone_numbers_from_voice_connector(Client, VoiceConnectorId, Input, []).
disassociate_phone_numbers_from_voice_connector(Client, VoiceConnectorId, Input0, Options0) ->
    Method = post,
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "?operation=disassociate-phone-numbers"],
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

%% @doc Disassociates the specified phone numbers from the specified Amazon
%% Chime Voice Connector group.
disassociate_phone_numbers_from_voice_connector_group(Client, VoiceConnectorGroupId, Input) ->
    disassociate_phone_numbers_from_voice_connector_group(Client, VoiceConnectorGroupId, Input, []).
disassociate_phone_numbers_from_voice_connector_group(Client, VoiceConnectorGroupId, Input0, Options0) ->
    Method = post,
    Path = ["/voice-connector-groups/", aws_util:encode_uri(VoiceConnectorGroupId), "?operation=disassociate-phone-numbers"],
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

%% @doc Disassociates the specified sign-in delegate groups from the
%% specified Amazon Chime account.
disassociate_signin_delegate_groups_from_account(Client, AccountId, Input) ->
    disassociate_signin_delegate_groups_from_account(Client, AccountId, Input, []).
disassociate_signin_delegate_groups_from_account(Client, AccountId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AccountId), "?operation=disassociate-signin-delegate-groups"],
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

%% @doc Retrieves details for the specified Amazon Chime account, such as
%% account type and supported licenses.
get_account(Client, AccountId)
  when is_map(Client) ->
    get_account(Client, AccountId, #{}, #{}).

get_account(Client, AccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_account(Client, AccountId, QueryMap, HeadersMap, []).

get_account(Client, AccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AccountId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves account settings for the specified Amazon Chime account ID,
%% such as remote control and dialout settings.
%%
%% For more information about these settings, see Use the Policies Page in
%% the Amazon Chime Administration Guide.
get_account_settings(Client, AccountId)
  when is_map(Client) ->
    get_account_settings(Client, AccountId, #{}, #{}).

get_account_settings(Client, AccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_account_settings(Client, AccountId, QueryMap, HeadersMap, []).

get_account_settings(Client, AccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AccountId), "/settings"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the retention settings for an `AppInstance'.
get_app_instance_retention_settings(Client, AppInstanceArn)
  when is_map(Client) ->
    get_app_instance_retention_settings(Client, AppInstanceArn, #{}, #{}).

get_app_instance_retention_settings(Client, AppInstanceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_app_instance_retention_settings(Client, AppInstanceArn, QueryMap, HeadersMap, []).

get_app_instance_retention_settings(Client, AppInstanceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/app-instances/", aws_util:encode_uri(AppInstanceArn), "/retention-settings"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the streaming settings for an `AppInstance'.
get_app_instance_streaming_configurations(Client, AppInstanceArn)
  when is_map(Client) ->
    get_app_instance_streaming_configurations(Client, AppInstanceArn, #{}, #{}).

get_app_instance_streaming_configurations(Client, AppInstanceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_app_instance_streaming_configurations(Client, AppInstanceArn, QueryMap, HeadersMap, []).

get_app_instance_streaming_configurations(Client, AppInstanceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/app-instances/", aws_util:encode_uri(AppInstanceArn), "/streaming-configurations"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the Amazon Chime SDK attendee details for a specified meeting ID
%% and attendee ID.
%%
%% For more information about the Amazon Chime SDK, see Using the Amazon
%% Chime SDK in the Amazon Chime Developer Guide .
get_attendee(Client, AttendeeId, MeetingId)
  when is_map(Client) ->
    get_attendee(Client, AttendeeId, MeetingId, #{}, #{}).

get_attendee(Client, AttendeeId, MeetingId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_attendee(Client, AttendeeId, MeetingId, QueryMap, HeadersMap, []).

get_attendee(Client, AttendeeId, MeetingId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/meetings/", aws_util:encode_uri(MeetingId), "/attendees/", aws_util:encode_uri(AttendeeId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves details for the specified bot, such as bot email address,
%% bot type, status, and display name.
get_bot(Client, AccountId, BotId)
  when is_map(Client) ->
    get_bot(Client, AccountId, BotId, #{}, #{}).

get_bot(Client, AccountId, BotId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_bot(Client, AccountId, BotId, QueryMap, HeadersMap, []).

get_bot(Client, AccountId, BotId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AccountId), "/bots/", aws_util:encode_uri(BotId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the full details of a channel message.
%%
%% The x-amz-chime-bearer request header is mandatory. Use the
%% `AppInstanceUserArn' of the user that makes the API call as the value in
%% the header.
get_channel_message(Client, ChannelArn, MessageId)
  when is_map(Client) ->
    get_channel_message(Client, ChannelArn, MessageId, #{}, #{}).

get_channel_message(Client, ChannelArn, MessageId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_channel_message(Client, ChannelArn, MessageId, QueryMap, HeadersMap, []).

get_channel_message(Client, ChannelArn, MessageId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/channels/", aws_util:encode_uri(ChannelArn), "/messages/", aws_util:encode_uri(MessageId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"x-amz-chime-bearer">>, maps:get(<<"x-amz-chime-bearer">>, HeadersMap, undefined)}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets details for an events configuration that allows a bot to receive
%% outgoing events, such as an HTTPS endpoint or Lambda function ARN.
get_events_configuration(Client, AccountId, BotId)
  when is_map(Client) ->
    get_events_configuration(Client, AccountId, BotId, #{}, #{}).

get_events_configuration(Client, AccountId, BotId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_events_configuration(Client, AccountId, BotId, QueryMap, HeadersMap, []).

get_events_configuration(Client, AccountId, BotId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AccountId), "/bots/", aws_util:encode_uri(BotId), "/events-configuration"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves global settings for the administrator's AWS account, such
%% as Amazon Chime Business Calling and Amazon Chime Voice Connector
%% settings.
get_global_settings(Client)
  when is_map(Client) ->
    get_global_settings(Client, #{}, #{}).

get_global_settings(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_global_settings(Client, QueryMap, HeadersMap, []).

get_global_settings(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/settings"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets an existing media capture pipeline.
get_media_capture_pipeline(Client, MediaPipelineId)
  when is_map(Client) ->
    get_media_capture_pipeline(Client, MediaPipelineId, #{}, #{}).

get_media_capture_pipeline(Client, MediaPipelineId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_media_capture_pipeline(Client, MediaPipelineId, QueryMap, HeadersMap, []).

get_media_capture_pipeline(Client, MediaPipelineId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/media-capture-pipelines/", aws_util:encode_uri(MediaPipelineId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the Amazon Chime SDK meeting details for the specified meeting
%% ID.
%%
%% For more information about the Amazon Chime SDK, see Using the Amazon
%% Chime SDK in the Amazon Chime Developer Guide .
get_meeting(Client, MeetingId)
  when is_map(Client) ->
    get_meeting(Client, MeetingId, #{}, #{}).

get_meeting(Client, MeetingId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_meeting(Client, MeetingId, QueryMap, HeadersMap, []).

get_meeting(Client, MeetingId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/meetings/", aws_util:encode_uri(MeetingId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

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

%% @doc Retrieves details for the specified phone number ID, such as
%% associations, capabilities, and product type.
get_phone_number(Client, PhoneNumberId)
  when is_map(Client) ->
    get_phone_number(Client, PhoneNumberId, #{}, #{}).

get_phone_number(Client, PhoneNumberId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_phone_number(Client, PhoneNumberId, QueryMap, HeadersMap, []).

get_phone_number(Client, PhoneNumberId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/phone-numbers/", aws_util:encode_uri(PhoneNumberId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves details for the specified phone number order, such as the
%% order creation timestamp, phone numbers in E.164 format, product type, and
%% order status.
get_phone_number_order(Client, PhoneNumberOrderId)
  when is_map(Client) ->
    get_phone_number_order(Client, PhoneNumberOrderId, #{}, #{}).

get_phone_number_order(Client, PhoneNumberOrderId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_phone_number_order(Client, PhoneNumberOrderId, QueryMap, HeadersMap, []).

get_phone_number_order(Client, PhoneNumberOrderId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/phone-number-orders/", aws_util:encode_uri(PhoneNumberOrderId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the phone number settings for the administrator's AWS
%% account, such as the default outbound calling name.
get_phone_number_settings(Client)
  when is_map(Client) ->
    get_phone_number_settings(Client, #{}, #{}).

get_phone_number_settings(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_phone_number_settings(Client, QueryMap, HeadersMap, []).

get_phone_number_settings(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/settings/phone-number"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the specified proxy session details for the specified Amazon
%% Chime Voice Connector.
get_proxy_session(Client, ProxySessionId, VoiceConnectorId)
  when is_map(Client) ->
    get_proxy_session(Client, ProxySessionId, VoiceConnectorId, #{}, #{}).

get_proxy_session(Client, ProxySessionId, VoiceConnectorId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_proxy_session(Client, ProxySessionId, VoiceConnectorId, QueryMap, HeadersMap, []).

get_proxy_session(Client, ProxySessionId, VoiceConnectorId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/proxy-sessions/", aws_util:encode_uri(ProxySessionId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
    get_retention_settings(Client, AccountId, #{}, #{}).

get_retention_settings(Client, AccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_retention_settings(Client, AccountId, QueryMap, HeadersMap, []).

get_retention_settings(Client, AccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AccountId), "/retention-settings"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves room details, such as the room name, for a room in an
%% Amazon Chime Enterprise account.
get_room(Client, AccountId, RoomId)
  when is_map(Client) ->
    get_room(Client, AccountId, RoomId, #{}, #{}).

get_room(Client, AccountId, RoomId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_room(Client, AccountId, RoomId, QueryMap, HeadersMap, []).

get_room(Client, AccountId, RoomId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AccountId), "/rooms/", aws_util:encode_uri(RoomId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the information for a SIP media application, including
%% name, AWS Region, and endpoints.
get_sip_media_application(Client, SipMediaApplicationId)
  when is_map(Client) ->
    get_sip_media_application(Client, SipMediaApplicationId, #{}, #{}).

get_sip_media_application(Client, SipMediaApplicationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_sip_media_application(Client, SipMediaApplicationId, QueryMap, HeadersMap, []).

get_sip_media_application(Client, SipMediaApplicationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/sip-media-applications/", aws_util:encode_uri(SipMediaApplicationId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the logging configuration for the specified SIP media
%% application.
get_sip_media_application_logging_configuration(Client, SipMediaApplicationId)
  when is_map(Client) ->
    get_sip_media_application_logging_configuration(Client, SipMediaApplicationId, #{}, #{}).

get_sip_media_application_logging_configuration(Client, SipMediaApplicationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_sip_media_application_logging_configuration(Client, SipMediaApplicationId, QueryMap, HeadersMap, []).

get_sip_media_application_logging_configuration(Client, SipMediaApplicationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/sip-media-applications/", aws_util:encode_uri(SipMediaApplicationId), "/logging-configuration"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the details of a SIP rule, such as the rule ID, name,
%% triggers, and target endpoints.
get_sip_rule(Client, SipRuleId)
  when is_map(Client) ->
    get_sip_rule(Client, SipRuleId, #{}, #{}).

get_sip_rule(Client, SipRuleId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_sip_rule(Client, SipRuleId, QueryMap, HeadersMap, []).

get_sip_rule(Client, SipRuleId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/sip-rules/", aws_util:encode_uri(SipRuleId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves details for the specified user ID, such as primary email
%% address, license type,and personal meeting PIN.
%%
%% To retrieve user details with an email address instead of a user ID, use
%% the `ListUsers' action, and then filter by email address.
get_user(Client, AccountId, UserId)
  when is_map(Client) ->
    get_user(Client, AccountId, UserId, #{}, #{}).

get_user(Client, AccountId, UserId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_user(Client, AccountId, UserId, QueryMap, HeadersMap, []).

get_user(Client, AccountId, UserId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AccountId), "/users/", aws_util:encode_uri(UserId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves settings for the specified user ID, such as any associated
%% phone number settings.
get_user_settings(Client, AccountId, UserId)
  when is_map(Client) ->
    get_user_settings(Client, AccountId, UserId, #{}, #{}).

get_user_settings(Client, AccountId, UserId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_user_settings(Client, AccountId, UserId, QueryMap, HeadersMap, []).

get_user_settings(Client, AccountId, UserId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AccountId), "/users/", aws_util:encode_uri(UserId), "/settings"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves details for the specified Amazon Chime Voice Connector,
%% such as timestamps,name, outbound host, and encryption requirements.
get_voice_connector(Client, VoiceConnectorId)
  when is_map(Client) ->
    get_voice_connector(Client, VoiceConnectorId, #{}, #{}).

get_voice_connector(Client, VoiceConnectorId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_voice_connector(Client, VoiceConnectorId, QueryMap, HeadersMap, []).

get_voice_connector(Client, VoiceConnectorId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the emergency calling configuration details for the specified
%% Amazon Chime Voice Connector.
get_voice_connector_emergency_calling_configuration(Client, VoiceConnectorId)
  when is_map(Client) ->
    get_voice_connector_emergency_calling_configuration(Client, VoiceConnectorId, #{}, #{}).

get_voice_connector_emergency_calling_configuration(Client, VoiceConnectorId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_voice_connector_emergency_calling_configuration(Client, VoiceConnectorId, QueryMap, HeadersMap, []).

get_voice_connector_emergency_calling_configuration(Client, VoiceConnectorId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/emergency-calling-configuration"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves details for the specified Amazon Chime Voice Connector
%% group, such as timestamps,name, and associated `VoiceConnectorItems'.
get_voice_connector_group(Client, VoiceConnectorGroupId)
  when is_map(Client) ->
    get_voice_connector_group(Client, VoiceConnectorGroupId, #{}, #{}).

get_voice_connector_group(Client, VoiceConnectorGroupId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_voice_connector_group(Client, VoiceConnectorGroupId, QueryMap, HeadersMap, []).

get_voice_connector_group(Client, VoiceConnectorGroupId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/voice-connector-groups/", aws_util:encode_uri(VoiceConnectorGroupId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
    get_voice_connector_logging_configuration(Client, VoiceConnectorId, #{}, #{}).

get_voice_connector_logging_configuration(Client, VoiceConnectorId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_voice_connector_logging_configuration(Client, VoiceConnectorId, QueryMap, HeadersMap, []).

get_voice_connector_logging_configuration(Client, VoiceConnectorId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/logging-configuration"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves origination setting details for the specified Amazon Chime
%% Voice Connector.
get_voice_connector_origination(Client, VoiceConnectorId)
  when is_map(Client) ->
    get_voice_connector_origination(Client, VoiceConnectorId, #{}, #{}).

get_voice_connector_origination(Client, VoiceConnectorId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_voice_connector_origination(Client, VoiceConnectorId, QueryMap, HeadersMap, []).

get_voice_connector_origination(Client, VoiceConnectorId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/origination"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the proxy configuration details for the specified Amazon Chime
%% Voice Connector.
get_voice_connector_proxy(Client, VoiceConnectorId)
  when is_map(Client) ->
    get_voice_connector_proxy(Client, VoiceConnectorId, #{}, #{}).

get_voice_connector_proxy(Client, VoiceConnectorId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_voice_connector_proxy(Client, VoiceConnectorId, QueryMap, HeadersMap, []).

get_voice_connector_proxy(Client, VoiceConnectorId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/programmable-numbers/proxy"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
    get_voice_connector_streaming_configuration(Client, VoiceConnectorId, #{}, #{}).

get_voice_connector_streaming_configuration(Client, VoiceConnectorId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_voice_connector_streaming_configuration(Client, VoiceConnectorId, QueryMap, HeadersMap, []).

get_voice_connector_streaming_configuration(Client, VoiceConnectorId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/streaming-configuration"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves termination setting details for the specified Amazon Chime
%% Voice Connector.
get_voice_connector_termination(Client, VoiceConnectorId)
  when is_map(Client) ->
    get_voice_connector_termination(Client, VoiceConnectorId, #{}, #{}).

get_voice_connector_termination(Client, VoiceConnectorId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_voice_connector_termination(Client, VoiceConnectorId, QueryMap, HeadersMap, []).

get_voice_connector_termination(Client, VoiceConnectorId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/termination"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the last time a SIP `OPTIONS' ping was
%% received from your SIP infrastructure for the specified Amazon Chime Voice
%% Connector.
get_voice_connector_termination_health(Client, VoiceConnectorId)
  when is_map(Client) ->
    get_voice_connector_termination_health(Client, VoiceConnectorId, #{}, #{}).

get_voice_connector_termination_health(Client, VoiceConnectorId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_voice_connector_termination_health(Client, VoiceConnectorId, QueryMap, HeadersMap, []).

get_voice_connector_termination_health(Client, VoiceConnectorId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/termination/health"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Sends email to a maximum of 50 users, inviting them to the specified
%% Amazon Chime `Team' account.
%%
%% Only `Team' account types are currently supported for this action.
invite_users(Client, AccountId, Input) ->
    invite_users(Client, AccountId, Input, []).
invite_users(Client, AccountId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AccountId), "/users?operation=add"],
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

%% @doc Lists the Amazon Chime accounts under the administrator's AWS
%% account.
%%
%% You can filter accounts by account name prefix. To find out which Amazon
%% Chime account a user belongs to, you can filter by the user's email
%% address, which returns one account result.
list_accounts(Client)
  when is_map(Client) ->
    list_accounts(Client, #{}, #{}).

list_accounts(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_accounts(Client, QueryMap, HeadersMap, []).

list_accounts(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"name">>, maps:get(<<"name">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)},
        {<<"user-email">>, maps:get(<<"user-email">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of the administrators in the `AppInstance'.
list_app_instance_admins(Client, AppInstanceArn)
  when is_map(Client) ->
    list_app_instance_admins(Client, AppInstanceArn, #{}, #{}).

list_app_instance_admins(Client, AppInstanceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_app_instance_admins(Client, AppInstanceArn, QueryMap, HeadersMap, []).

list_app_instance_admins(Client, AppInstanceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/app-instances/", aws_util:encode_uri(AppInstanceArn), "/admins"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List all `AppInstanceUsers' created under a single `AppInstance'.
list_app_instance_users(Client, AppInstanceArn)
  when is_map(Client) ->
    list_app_instance_users(Client, AppInstanceArn, #{}, #{}).

list_app_instance_users(Client, AppInstanceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_app_instance_users(Client, AppInstanceArn, QueryMap, HeadersMap, []).

list_app_instance_users(Client, AppInstanceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/app-instance-users"],
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

%% @doc Lists all Amazon Chime `AppInstance's created under a single AWS
%% account.
list_app_instances(Client)
  when is_map(Client) ->
    list_app_instances(Client, #{}, #{}).

list_app_instances(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_app_instances(Client, QueryMap, HeadersMap, []).

list_app_instances(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/app-instances"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the tags applied to an Amazon Chime SDK attendee resource.
list_attendee_tags(Client, AttendeeId, MeetingId)
  when is_map(Client) ->
    list_attendee_tags(Client, AttendeeId, MeetingId, #{}, #{}).

list_attendee_tags(Client, AttendeeId, MeetingId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_attendee_tags(Client, AttendeeId, MeetingId, QueryMap, HeadersMap, []).

list_attendee_tags(Client, AttendeeId, MeetingId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/meetings/", aws_util:encode_uri(MeetingId), "/attendees/", aws_util:encode_uri(AttendeeId), "/tags"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the attendees for the specified Amazon Chime SDK meeting.
%%
%% For more information about the Amazon Chime SDK, see Using the Amazon
%% Chime SDK in the Amazon Chime Developer Guide.
list_attendees(Client, MeetingId)
  when is_map(Client) ->
    list_attendees(Client, MeetingId, #{}, #{}).

list_attendees(Client, MeetingId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_attendees(Client, MeetingId, QueryMap, HeadersMap, []).

list_attendees(Client, MeetingId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/meetings/", aws_util:encode_uri(MeetingId), "/attendees"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the bots associated with the administrator's Amazon Chime
%% Enterprise account ID.
list_bots(Client, AccountId)
  when is_map(Client) ->
    list_bots(Client, AccountId, #{}, #{}).

list_bots(Client, AccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_bots(Client, AccountId, QueryMap, HeadersMap, []).

list_bots(Client, AccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AccountId), "/bots"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all the users banned from a particular channel.
%%
%% The `x-amz-chime-bearer' request header is mandatory. Use the
%% `AppInstanceUserArn' of the user that makes the API call as the value in
%% the header.
list_channel_bans(Client, ChannelArn)
  when is_map(Client) ->
    list_channel_bans(Client, ChannelArn, #{}, #{}).

list_channel_bans(Client, ChannelArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_channel_bans(Client, ChannelArn, QueryMap, HeadersMap, []).

list_channel_bans(Client, ChannelArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/channels/", aws_util:encode_uri(ChannelArn), "/bans"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"x-amz-chime-bearer">>, maps:get(<<"x-amz-chime-bearer">>, HeadersMap, undefined)}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all channel memberships in a channel.
%%
%% The `x-amz-chime-bearer' request header is mandatory. Use the
%% `AppInstanceUserArn' of the user that makes the API call as the value in
%% the header.
list_channel_memberships(Client, ChannelArn)
  when is_map(Client) ->
    list_channel_memberships(Client, ChannelArn, #{}, #{}).

list_channel_memberships(Client, ChannelArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_channel_memberships(Client, ChannelArn, QueryMap, HeadersMap, []).

list_channel_memberships(Client, ChannelArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/channels/", aws_util:encode_uri(ChannelArn), "/memberships"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"x-amz-chime-bearer">>, maps:get(<<"x-amz-chime-bearer">>, HeadersMap, undefined)}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)},
        {<<"type">>, maps:get(<<"type">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all channels that a particular `AppInstanceUser' is a part of.
%%
%% Only an `AppInstanceAdmin' can call the API with a user ARN that is not
%% their own.
%%
%% The `x-amz-chime-bearer' request header is mandatory. Use the
%% `AppInstanceUserArn' of the user that makes the API call as the value in
%% the header.
list_channel_memberships_for_app_instance_user(Client)
  when is_map(Client) ->
    list_channel_memberships_for_app_instance_user(Client, #{}, #{}).

list_channel_memberships_for_app_instance_user(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_channel_memberships_for_app_instance_user(Client, QueryMap, HeadersMap, []).

list_channel_memberships_for_app_instance_user(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/channels?scope=app-instance-user-memberships"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"x-amz-chime-bearer">>, maps:get(<<"x-amz-chime-bearer">>, HeadersMap, undefined)}
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
%% `AppInstanceUserArn' of the user that makes the API call as the value in
%% the header.
list_channel_messages(Client, ChannelArn)
  when is_map(Client) ->
    list_channel_messages(Client, ChannelArn, #{}, #{}).

list_channel_messages(Client, ChannelArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_channel_messages(Client, ChannelArn, QueryMap, HeadersMap, []).

list_channel_messages(Client, ChannelArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/channels/", aws_util:encode_uri(ChannelArn), "/messages"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"x-amz-chime-bearer">>, maps:get(<<"x-amz-chime-bearer">>, HeadersMap, undefined)}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)},
        {<<"not-after">>, maps:get(<<"not-after">>, QueryMap, undefined)},
        {<<"not-before">>, maps:get(<<"not-before">>, QueryMap, undefined)},
        {<<"sort-order">>, maps:get(<<"sort-order">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all the moderators for a channel.
%%
%% The `x-amz-chime-bearer' request header is mandatory. Use the
%% `AppInstanceUserArn' of the user that makes the API call as the value in
%% the header.
list_channel_moderators(Client, ChannelArn)
  when is_map(Client) ->
    list_channel_moderators(Client, ChannelArn, #{}, #{}).

list_channel_moderators(Client, ChannelArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_channel_moderators(Client, ChannelArn, QueryMap, HeadersMap, []).

list_channel_moderators(Client, ChannelArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/channels/", aws_util:encode_uri(ChannelArn), "/moderators"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"x-amz-chime-bearer">>, maps:get(<<"x-amz-chime-bearer">>, HeadersMap, undefined)}
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
%% == Functionality & restrictions ==
%%
%% <ul> <li> Use privacy = `PUBLIC' to retrieve all public channels in the
%% account.
%%
%% </li> <li> Only an `AppInstanceAdmin' can set privacy = `PRIVATE' to list
%% the private channels in an account.
%%
%% </li> </ul> The `x-amz-chime-bearer' request header is mandatory. Use the
%% `AppInstanceUserArn' of the user that makes the API call as the value in
%% the header.
list_channels(Client, AppInstanceArn)
  when is_map(Client) ->
    list_channels(Client, AppInstanceArn, #{}, #{}).

list_channels(Client, AppInstanceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_channels(Client, AppInstanceArn, QueryMap, HeadersMap, []).

list_channels(Client, AppInstanceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/channels"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"x-amz-chime-bearer">>, maps:get(<<"x-amz-chime-bearer">>, HeadersMap, undefined)}
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

%% @doc A list of the channels moderated by an `AppInstanceUser'.
%%
%% The `x-amz-chime-bearer' request header is mandatory. Use the
%% `AppInstanceUserArn' of the user that makes the API call as the value in
%% the header.
list_channels_moderated_by_app_instance_user(Client)
  when is_map(Client) ->
    list_channels_moderated_by_app_instance_user(Client, #{}, #{}).

list_channels_moderated_by_app_instance_user(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_channels_moderated_by_app_instance_user(Client, QueryMap, HeadersMap, []).

list_channels_moderated_by_app_instance_user(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/channels?scope=app-instance-user-moderated-channels"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"x-amz-chime-bearer">>, maps:get(<<"x-amz-chime-bearer">>, HeadersMap, undefined)}
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

%% @doc Returns a list of media capture pipelines.
list_media_capture_pipelines(Client)
  when is_map(Client) ->
    list_media_capture_pipelines(Client, #{}, #{}).

list_media_capture_pipelines(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_media_capture_pipelines(Client, QueryMap, HeadersMap, []).

list_media_capture_pipelines(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/media-capture-pipelines"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the tags applied to an Amazon Chime SDK meeting resource.
list_meeting_tags(Client, MeetingId)
  when is_map(Client) ->
    list_meeting_tags(Client, MeetingId, #{}, #{}).

list_meeting_tags(Client, MeetingId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_meeting_tags(Client, MeetingId, QueryMap, HeadersMap, []).

list_meeting_tags(Client, MeetingId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/meetings/", aws_util:encode_uri(MeetingId), "/tags"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists up to 100 active Amazon Chime SDK meetings.
%%
%% For more information about the Amazon Chime SDK, see Using the Amazon
%% Chime SDK in the Amazon Chime Developer Guide.
list_meetings(Client)
  when is_map(Client) ->
    list_meetings(Client, #{}, #{}).

list_meetings(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_meetings(Client, QueryMap, HeadersMap, []).

list_meetings(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/meetings"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the phone number orders for the administrator's Amazon Chime
%% account.
list_phone_number_orders(Client)
  when is_map(Client) ->
    list_phone_number_orders(Client, #{}, #{}).

list_phone_number_orders(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_phone_number_orders(Client, QueryMap, HeadersMap, []).

list_phone_number_orders(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/phone-number-orders"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the phone numbers for the specified Amazon Chime account,
%% Amazon Chime user, Amazon Chime Voice Connector, or Amazon Chime Voice
%% Connector group.
list_phone_numbers(Client)
  when is_map(Client) ->
    list_phone_numbers(Client, #{}, #{}).

list_phone_numbers(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_phone_numbers(Client, QueryMap, HeadersMap, []).

list_phone_numbers(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/phone-numbers"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"filter-name">>, maps:get(<<"filter-name">>, QueryMap, undefined)},
        {<<"filter-value">>, maps:get(<<"filter-value">>, QueryMap, undefined)},
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)},
        {<<"product-type">>, maps:get(<<"product-type">>, QueryMap, undefined)},
        {<<"status">>, maps:get(<<"status">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the proxy sessions for the specified Amazon Chime Voice
%% Connector.
list_proxy_sessions(Client, VoiceConnectorId)
  when is_map(Client) ->
    list_proxy_sessions(Client, VoiceConnectorId, #{}, #{}).

list_proxy_sessions(Client, VoiceConnectorId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_proxy_sessions(Client, VoiceConnectorId, QueryMap, HeadersMap, []).

list_proxy_sessions(Client, VoiceConnectorId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/proxy-sessions"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)},
        {<<"status">>, maps:get(<<"status">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the membership details for the specified room in an Amazon
%% Chime Enterprise account, such as the members' IDs, email addresses, and
%% names.
list_room_memberships(Client, AccountId, RoomId)
  when is_map(Client) ->
    list_room_memberships(Client, AccountId, RoomId, #{}, #{}).

list_room_memberships(Client, AccountId, RoomId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_room_memberships(Client, AccountId, RoomId, QueryMap, HeadersMap, []).

list_room_memberships(Client, AccountId, RoomId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AccountId), "/rooms/", aws_util:encode_uri(RoomId), "/memberships"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the room details for the specified Amazon Chime Enterprise
%% account.
%%
%% Optionally, filter the results by a member ID (user ID or bot ID) to see a
%% list of rooms that the member belongs to.
list_rooms(Client, AccountId)
  when is_map(Client) ->
    list_rooms(Client, AccountId, #{}, #{}).

list_rooms(Client, AccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_rooms(Client, AccountId, QueryMap, HeadersMap, []).

list_rooms(Client, AccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AccountId), "/rooms"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"member-id">>, maps:get(<<"member-id">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the SIP media applications under the administrator's AWS
%% account.
list_sip_media_applications(Client)
  when is_map(Client) ->
    list_sip_media_applications(Client, #{}, #{}).

list_sip_media_applications(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_sip_media_applications(Client, QueryMap, HeadersMap, []).

list_sip_media_applications(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/sip-media-applications"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the SIP rules under the administrator's AWS account.
list_sip_rules(Client)
  when is_map(Client) ->
    list_sip_rules(Client, #{}, #{}).

list_sip_rules(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_sip_rules(Client, QueryMap, HeadersMap, []).

list_sip_rules(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/sip-rules"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)},
        {<<"sip-media-application">>, maps:get(<<"sip-media-application">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists supported phone number countries.
list_supported_phone_number_countries(Client, ProductType)
  when is_map(Client) ->
    list_supported_phone_number_countries(Client, ProductType, #{}, #{}).

list_supported_phone_number_countries(Client, ProductType, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_supported_phone_number_countries(Client, ProductType, QueryMap, HeadersMap, []).

list_supported_phone_number_countries(Client, ProductType, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/phone-number-countries"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"product-type">>, ProductType}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the tags applied to an Amazon Chime SDK meeting resource.
list_tags_for_resource(Client, ResourceARN)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceARN, #{}, #{}).

list_tags_for_resource(Client, ResourceARN, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceARN, QueryMap, HeadersMap, []).

list_tags_for_resource(Client, ResourceARN, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/tags"],
    SuccessStatusCode = undefined,
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

%% @doc Lists the users that belong to the specified Amazon Chime account.
%%
%% You can specify an email address to list only the user that the email
%% address belongs to.
list_users(Client, AccountId)
  when is_map(Client) ->
    list_users(Client, AccountId, #{}, #{}).

list_users(Client, AccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_users(Client, AccountId, QueryMap, HeadersMap, []).

list_users(Client, AccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AccountId), "/users"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)},
        {<<"user-email">>, maps:get(<<"user-email">>, QueryMap, undefined)},
        {<<"user-type">>, maps:get(<<"user-type">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the Amazon Chime Voice Connector groups for the administrator's
%% AWS account.
list_voice_connector_groups(Client)
  when is_map(Client) ->
    list_voice_connector_groups(Client, #{}, #{}).

list_voice_connector_groups(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_voice_connector_groups(Client, QueryMap, HeadersMap, []).

list_voice_connector_groups(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/voice-connector-groups"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the SIP credentials for the specified Amazon Chime Voice
%% Connector.
list_voice_connector_termination_credentials(Client, VoiceConnectorId)
  when is_map(Client) ->
    list_voice_connector_termination_credentials(Client, VoiceConnectorId, #{}, #{}).

list_voice_connector_termination_credentials(Client, VoiceConnectorId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_voice_connector_termination_credentials(Client, VoiceConnectorId, QueryMap, HeadersMap, []).

list_voice_connector_termination_credentials(Client, VoiceConnectorId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/termination/credentials"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the Amazon Chime Voice Connectors for the administrator's AWS
%% account.
list_voice_connectors(Client)
  when is_map(Client) ->
    list_voice_connectors(Client, #{}, #{}).

list_voice_connectors(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_voice_connectors(Client, QueryMap, HeadersMap, []).

list_voice_connectors(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/voice-connectors"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Logs out the specified user from all of the devices they are
%% currently logged into.
logout_user(Client, AccountId, UserId, Input) ->
    logout_user(Client, AccountId, UserId, Input, []).
logout_user(Client, AccountId, UserId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AccountId), "/users/", aws_util:encode_uri(UserId), "?operation=logout"],
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

%% @doc Sets the amount of time in days that a given `AppInstance' retains
%% data.
put_app_instance_retention_settings(Client, AppInstanceArn, Input) ->
    put_app_instance_retention_settings(Client, AppInstanceArn, Input, []).
put_app_instance_retention_settings(Client, AppInstanceArn, Input0, Options0) ->
    Method = put,
    Path = ["/app-instances/", aws_util:encode_uri(AppInstanceArn), "/retention-settings"],
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

%% @doc The data streaming configurations of an `AppInstance'.
put_app_instance_streaming_configurations(Client, AppInstanceArn, Input) ->
    put_app_instance_streaming_configurations(Client, AppInstanceArn, Input, []).
put_app_instance_streaming_configurations(Client, AppInstanceArn, Input0, Options0) ->
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

%% @doc Creates an events configuration that allows a bot to receive outgoing
%% events sent by Amazon Chime.
%%
%% Choose either an HTTPS endpoint or a Lambda function ARN. For more
%% information, see `Bot'.
put_events_configuration(Client, AccountId, BotId, Input) ->
    put_events_configuration(Client, AccountId, BotId, Input, []).
put_events_configuration(Client, AccountId, BotId, Input0, Options0) ->
    Method = put,
    Path = ["/accounts/", aws_util:encode_uri(AccountId), "/bots/", aws_util:encode_uri(BotId), "/events-configuration"],
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
put_retention_settings(Client, AccountId, Input0, Options0) ->
    Method = put,
    Path = ["/accounts/", aws_util:encode_uri(AccountId), "/retention-settings"],
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

%% @doc Updates the logging configuration for the specified SIP media
%% application.
put_sip_media_application_logging_configuration(Client, SipMediaApplicationId, Input) ->
    put_sip_media_application_logging_configuration(Client, SipMediaApplicationId, Input, []).
put_sip_media_application_logging_configuration(Client, SipMediaApplicationId, Input0, Options0) ->
    Method = put,
    Path = ["/sip-media-applications/", aws_util:encode_uri(SipMediaApplicationId), "/logging-configuration"],
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

%% @doc Puts emergency calling configuration details to the specified Amazon
%% Chime Voice Connector, such as emergency phone numbers and calling
%% countries.
%%
%% Origination and termination settings must be enabled for the Amazon Chime
%% Voice Connector before emergency calling can be configured.
put_voice_connector_emergency_calling_configuration(Client, VoiceConnectorId, Input) ->
    put_voice_connector_emergency_calling_configuration(Client, VoiceConnectorId, Input, []).
put_voice_connector_emergency_calling_configuration(Client, VoiceConnectorId, Input0, Options0) ->
    Method = put,
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/emergency-calling-configuration"],
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

%% @doc Adds a logging configuration for the specified Amazon Chime Voice
%% Connector.
%%
%% The logging configuration specifies whether SIP message logs are enabled
%% for sending to Amazon CloudWatch Logs.
put_voice_connector_logging_configuration(Client, VoiceConnectorId, Input) ->
    put_voice_connector_logging_configuration(Client, VoiceConnectorId, Input, []).
put_voice_connector_logging_configuration(Client, VoiceConnectorId, Input0, Options0) ->
    Method = put,
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/logging-configuration"],
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

%% @doc Adds origination settings for the specified Amazon Chime Voice
%% Connector.
%%
%% If emergency calling is configured for the Amazon Chime Voice Connector,
%% it must be deleted prior to turning off origination settings.
put_voice_connector_origination(Client, VoiceConnectorId, Input) ->
    put_voice_connector_origination(Client, VoiceConnectorId, Input, []).
put_voice_connector_origination(Client, VoiceConnectorId, Input0, Options0) ->
    Method = put,
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/origination"],
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

%% @doc Puts the specified proxy configuration to the specified Amazon Chime
%% Voice Connector.
put_voice_connector_proxy(Client, VoiceConnectorId, Input) ->
    put_voice_connector_proxy(Client, VoiceConnectorId, Input, []).
put_voice_connector_proxy(Client, VoiceConnectorId, Input0, Options0) ->
    Method = put,
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/programmable-numbers/proxy"],
    SuccessStatusCode = undefined,
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

%% @doc Adds a streaming configuration for the specified Amazon Chime Voice
%% Connector.
%%
%% The streaming configuration specifies whether media streaming is enabled
%% for sending to Kinesis. It also sets the retention period, in hours, for
%% the Amazon Kinesis data.
put_voice_connector_streaming_configuration(Client, VoiceConnectorId, Input) ->
    put_voice_connector_streaming_configuration(Client, VoiceConnectorId, Input, []).
put_voice_connector_streaming_configuration(Client, VoiceConnectorId, Input0, Options0) ->
    Method = put,
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/streaming-configuration"],
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

%% @doc Adds termination settings for the specified Amazon Chime Voice
%% Connector.
%%
%% If emergency calling is configured for the Amazon Chime Voice Connector,
%% it must be deleted prior to turning off termination settings.
put_voice_connector_termination(Client, VoiceConnectorId, Input) ->
    put_voice_connector_termination(Client, VoiceConnectorId, Input, []).
put_voice_connector_termination(Client, VoiceConnectorId, Input0, Options0) ->
    Method = put,
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/termination"],
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

%% @doc Adds termination SIP credentials for the specified Amazon Chime Voice
%% Connector.
put_voice_connector_termination_credentials(Client, VoiceConnectorId, Input) ->
    put_voice_connector_termination_credentials(Client, VoiceConnectorId, Input, []).
put_voice_connector_termination_credentials(Client, VoiceConnectorId, Input0, Options0) ->
    Method = post,
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/termination/credentials?operation=put"],
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

%% @doc Redacts message content, but not metadata.
%%
%% The message exists in the back end, but the action returns null content,
%% and the state shows as redacted.
%%
%% The `x-amz-chime-bearer' request header is mandatory. Use the
%% `AppInstanceUserArn' of the user that makes the API call as the value in
%% the header.
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

%% @doc Redacts the specified message from the specified Amazon Chime
%% conversation.
redact_conversation_message(Client, AccountId, ConversationId, MessageId, Input) ->
    redact_conversation_message(Client, AccountId, ConversationId, MessageId, Input, []).
redact_conversation_message(Client, AccountId, ConversationId, MessageId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AccountId), "/conversations/", aws_util:encode_uri(ConversationId), "/messages/", aws_util:encode_uri(MessageId), "?operation=redact"],
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

%% @doc Redacts the specified message from the specified Amazon Chime
%% channel.
redact_room_message(Client, AccountId, MessageId, RoomId, Input) ->
    redact_room_message(Client, AccountId, MessageId, RoomId, Input, []).
redact_room_message(Client, AccountId, MessageId, RoomId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AccountId), "/rooms/", aws_util:encode_uri(RoomId), "/messages/", aws_util:encode_uri(MessageId), "?operation=redact"],
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

%% @doc Regenerates the security token for a bot.
regenerate_security_token(Client, AccountId, BotId, Input) ->
    regenerate_security_token(Client, AccountId, BotId, Input, []).
regenerate_security_token(Client, AccountId, BotId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AccountId), "/bots/", aws_util:encode_uri(BotId), "?operation=regenerate-security-token"],
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

%% @doc Resets the personal meeting PIN for the specified user on an Amazon
%% Chime account.
%%
%% Returns the `User' object with the updated personal meeting PIN.
reset_personal_pin(Client, AccountId, UserId, Input) ->
    reset_personal_pin(Client, AccountId, UserId, Input, []).
reset_personal_pin(Client, AccountId, UserId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AccountId), "/users/", aws_util:encode_uri(UserId), "?operation=reset-personal-pin"],
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

%% @doc Moves a phone number from the Deletion queue back into the phone
%% number Inventory.
restore_phone_number(Client, PhoneNumberId, Input) ->
    restore_phone_number(Client, PhoneNumberId, Input, []).
restore_phone_number(Client, PhoneNumberId, Input0, Options0) ->
    Method = post,
    Path = ["/phone-numbers/", aws_util:encode_uri(PhoneNumberId), "?operation=restore"],
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

%% @doc Searches for phone numbers that can be ordered.
%%
%% For US numbers, provide at least one of the following search filters:
%% `AreaCode', `City', `State', or `TollFreePrefix'. If you provide `City',
%% you must also provide `State'. Numbers outside the US only support the
%% `PhoneNumberType' filter, which you must use.
search_available_phone_numbers(Client)
  when is_map(Client) ->
    search_available_phone_numbers(Client, #{}, #{}).

search_available_phone_numbers(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    search_available_phone_numbers(Client, QueryMap, HeadersMap, []).

search_available_phone_numbers(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/search?type=phone-numbers"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"area-code">>, maps:get(<<"area-code">>, QueryMap, undefined)},
        {<<"city">>, maps:get(<<"city">>, QueryMap, undefined)},
        {<<"country">>, maps:get(<<"country">>, QueryMap, undefined)},
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)},
        {<<"phone-number-type">>, maps:get(<<"phone-number-type">>, QueryMap, undefined)},
        {<<"state">>, maps:get(<<"state">>, QueryMap, undefined)},
        {<<"toll-free-prefix">>, maps:get(<<"toll-free-prefix">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Sends a message to a particular channel that the member is a part of.
%%
%% The `x-amz-chime-bearer' request header is mandatory. Use the
%% `AppInstanceUserArn' of the user that makes the API call as the value in
%% the header.
%%
%% Also, `STANDARD' messages can contain 4KB of data and the 1KB of metadata.
%% `CONTROL' messages can contain 30 bytes of data and no metadata.
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

%% @doc Starts transcription for the specified `meetingId'.
start_meeting_transcription(Client, MeetingId, Input) ->
    start_meeting_transcription(Client, MeetingId, Input, []).
start_meeting_transcription(Client, MeetingId, Input0, Options0) ->
    Method = post,
    Path = ["/meetings/", aws_util:encode_uri(MeetingId), "/transcription?operation=start"],
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

%% @doc Stops transcription for the specified `meetingId'.
stop_meeting_transcription(Client, MeetingId, Input) ->
    stop_meeting_transcription(Client, MeetingId, Input, []).
stop_meeting_transcription(Client, MeetingId, Input0, Options0) ->
    Method = post,
    Path = ["/meetings/", aws_util:encode_uri(MeetingId), "/transcription?operation=stop"],
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

%% @doc Applies the specified tags to the specified Amazon Chime SDK
%% attendee.
tag_attendee(Client, AttendeeId, MeetingId, Input) ->
    tag_attendee(Client, AttendeeId, MeetingId, Input, []).
tag_attendee(Client, AttendeeId, MeetingId, Input0, Options0) ->
    Method = post,
    Path = ["/meetings/", aws_util:encode_uri(MeetingId), "/attendees/", aws_util:encode_uri(AttendeeId), "/tags?operation=add"],
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

%% @doc Applies the specified tags to the specified Amazon Chime SDK meeting.
tag_meeting(Client, MeetingId, Input) ->
    tag_meeting(Client, MeetingId, Input, []).
tag_meeting(Client, MeetingId, Input0, Options0) ->
    Method = post,
    Path = ["/meetings/", aws_util:encode_uri(MeetingId), "/tags?operation=add"],
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

%% @doc Applies the specified tags to the specified Amazon Chime SDK meeting
%% resource.
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

%% @doc Untags the specified tags from the specified Amazon Chime SDK
%% attendee.
untag_attendee(Client, AttendeeId, MeetingId, Input) ->
    untag_attendee(Client, AttendeeId, MeetingId, Input, []).
untag_attendee(Client, AttendeeId, MeetingId, Input0, Options0) ->
    Method = post,
    Path = ["/meetings/", aws_util:encode_uri(MeetingId), "/attendees/", aws_util:encode_uri(AttendeeId), "/tags?operation=delete"],
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

%% @doc Untags the specified tags from the specified Amazon Chime SDK
%% meeting.
untag_meeting(Client, MeetingId, Input) ->
    untag_meeting(Client, MeetingId, Input, []).
untag_meeting(Client, MeetingId, Input0, Options0) ->
    Method = post,
    Path = ["/meetings/", aws_util:encode_uri(MeetingId), "/tags?operation=delete"],
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

%% @doc Untags the specified tags from the specified Amazon Chime SDK meeting
%% resource.
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

%% @doc Updates account details for the specified Amazon Chime account.
%%
%% Currently, only account name and default license updates are supported for
%% this action.
update_account(Client, AccountId, Input) ->
    update_account(Client, AccountId, Input, []).
update_account(Client, AccountId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AccountId), ""],
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

%% @doc Updates the settings for the specified Amazon Chime account.
%%
%% You can update settings for remote control of shared screens, or for the
%% dial-out option. For more information about these settings, see Use the
%% Policies Page in the Amazon Chime Administration Guide.
update_account_settings(Client, AccountId, Input) ->
    update_account_settings(Client, AccountId, Input, []).
update_account_settings(Client, AccountId, Input0, Options0) ->
    Method = put,
    Path = ["/accounts/", aws_util:encode_uri(AccountId), "/settings"],
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

%% @doc Updates `AppInstance' metadata.
update_app_instance(Client, AppInstanceArn, Input) ->
    update_app_instance(Client, AppInstanceArn, Input, []).
update_app_instance(Client, AppInstanceArn, Input0, Options0) ->
    Method = put,
    Path = ["/app-instances/", aws_util:encode_uri(AppInstanceArn), ""],
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

%% @doc Updates the details of an `AppInstanceUser'.
%%
%% You can update names and metadata.
update_app_instance_user(Client, AppInstanceUserArn, Input) ->
    update_app_instance_user(Client, AppInstanceUserArn, Input, []).
update_app_instance_user(Client, AppInstanceUserArn, Input0, Options0) ->
    Method = put,
    Path = ["/app-instance-users/", aws_util:encode_uri(AppInstanceUserArn), ""],
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

%% @doc Updates the status of the specified bot, such as starting or stopping
%% the bot from running in your Amazon Chime Enterprise account.
update_bot(Client, AccountId, BotId, Input) ->
    update_bot(Client, AccountId, BotId, Input, []).
update_bot(Client, AccountId, BotId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AccountId), "/bots/", aws_util:encode_uri(BotId), ""],
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

%% @doc Update a channel's attributes.
%%
%% Restriction: You can't change a channel's privacy.
%%
%% The `x-amz-chime-bearer' request header is mandatory. Use the
%% `AppInstanceUserArn' of the user that makes the API call as the value in
%% the header.
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

%% @doc Updates the content of a message.
%%
%% The `x-amz-chime-bearer' request header is mandatory. Use the
%% `AppInstanceUserArn' of the user that makes the API call as the value in
%% the header.
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
%% `AppInstanceUserArn' of the user that makes the API call as the value in
%% the header.
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

%% @doc Updates global settings for the administrator's AWS account, such as
%% Amazon Chime Business Calling and Amazon Chime Voice Connector settings.
update_global_settings(Client, Input) ->
    update_global_settings(Client, Input, []).
update_global_settings(Client, Input0, Options0) ->
    Method = put,
    Path = ["/settings"],
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

%% @doc Updates phone number details, such as product type or calling name,
%% for the specified phone number ID.
%%
%% You can update one phone number detail at a time. For example, you can
%% update either the product type or the calling name in one action.
%%
%% For toll-free numbers, you cannot use the Amazon Chime Business Calling
%% product type. For numbers outside the U.S., you must use the Amazon Chime
%% SIP Media Application Dial-In product type.
%%
%% Updates to outbound calling names can take 72 hours to complete. Pending
%% updates to outbound calling names must be complete before you can request
%% another update.
update_phone_number(Client, PhoneNumberId, Input) ->
    update_phone_number(Client, PhoneNumberId, Input, []).
update_phone_number(Client, PhoneNumberId, Input0, Options0) ->
    Method = post,
    Path = ["/phone-numbers/", aws_util:encode_uri(PhoneNumberId), ""],
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

%% @doc Updates the phone number settings for the administrator's AWS
%% account, such as the default outbound calling name.
%%
%% You can update the default outbound calling name once every seven days.
%% Outbound calling names can take up to 72 hours to update.
update_phone_number_settings(Client, Input) ->
    update_phone_number_settings(Client, Input, []).
update_phone_number_settings(Client, Input0, Options0) ->
    Method = put,
    Path = ["/settings/phone-number"],
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

%% @doc Updates the specified proxy session details, such as voice or SMS
%% capabilities.
update_proxy_session(Client, ProxySessionId, VoiceConnectorId, Input) ->
    update_proxy_session(Client, ProxySessionId, VoiceConnectorId, Input, []).
update_proxy_session(Client, ProxySessionId, VoiceConnectorId, Input0, Options0) ->
    Method = post,
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/proxy-sessions/", aws_util:encode_uri(ProxySessionId), ""],
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

%% @doc Updates room details, such as the room name, for a room in an Amazon
%% Chime Enterprise account.
update_room(Client, AccountId, RoomId, Input) ->
    update_room(Client, AccountId, RoomId, Input, []).
update_room(Client, AccountId, RoomId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AccountId), "/rooms/", aws_util:encode_uri(RoomId), ""],
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

%% @doc Updates room membership details, such as the member role, for a room
%% in an Amazon Chime Enterprise account.
%%
%% The member role designates whether the member is a chat room administrator
%% or a general chat room member. The member role can be updated only for
%% user IDs.
update_room_membership(Client, AccountId, MemberId, RoomId, Input) ->
    update_room_membership(Client, AccountId, MemberId, RoomId, Input, []).
update_room_membership(Client, AccountId, MemberId, RoomId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AccountId), "/rooms/", aws_util:encode_uri(RoomId), "/memberships/", aws_util:encode_uri(MemberId), ""],
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

%% @doc Updates the details of the specified SIP media application.
update_sip_media_application(Client, SipMediaApplicationId, Input) ->
    update_sip_media_application(Client, SipMediaApplicationId, Input, []).
update_sip_media_application(Client, SipMediaApplicationId, Input0, Options0) ->
    Method = put,
    Path = ["/sip-media-applications/", aws_util:encode_uri(SipMediaApplicationId), ""],
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

%% @doc Invokes the AWS Lambda function associated with the SIP media
%% application and transaction ID in an update request.
%%
%% The Lambda function can then return a new set of actions.
update_sip_media_application_call(Client, SipMediaApplicationId, TransactionId, Input) ->
    update_sip_media_application_call(Client, SipMediaApplicationId, TransactionId, Input, []).
update_sip_media_application_call(Client, SipMediaApplicationId, TransactionId, Input0, Options0) ->
    Method = post,
    Path = ["/sip-media-applications/", aws_util:encode_uri(SipMediaApplicationId), "/calls/", aws_util:encode_uri(TransactionId), ""],
    SuccessStatusCode = 202,
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

%% @doc Updates the details of the specified SIP rule.
update_sip_rule(Client, SipRuleId, Input) ->
    update_sip_rule(Client, SipRuleId, Input, []).
update_sip_rule(Client, SipRuleId, Input0, Options0) ->
    Method = put,
    Path = ["/sip-rules/", aws_util:encode_uri(SipRuleId), ""],
    SuccessStatusCode = 202,
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

%% @doc Updates user details for a specified user ID.
%%
%% Currently, only `LicenseType' updates are supported for this action.
update_user(Client, AccountId, UserId, Input) ->
    update_user(Client, AccountId, UserId, Input, []).
update_user(Client, AccountId, UserId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AccountId), "/users/", aws_util:encode_uri(UserId), ""],
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

%% @doc Updates the settings for the specified user, such as phone number
%% settings.
update_user_settings(Client, AccountId, UserId, Input) ->
    update_user_settings(Client, AccountId, UserId, Input, []).
update_user_settings(Client, AccountId, UserId, Input0, Options0) ->
    Method = put,
    Path = ["/accounts/", aws_util:encode_uri(AccountId), "/users/", aws_util:encode_uri(UserId), "/settings"],
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

%% @doc Updates details for the specified Amazon Chime Voice Connector.
update_voice_connector(Client, VoiceConnectorId, Input) ->
    update_voice_connector(Client, VoiceConnectorId, Input, []).
update_voice_connector(Client, VoiceConnectorId, Input0, Options0) ->
    Method = put,
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), ""],
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

%% @doc Updates details of the specified Amazon Chime Voice Connector group,
%% such as the name and Amazon Chime Voice Connector priority ranking.
update_voice_connector_group(Client, VoiceConnectorGroupId, Input) ->
    update_voice_connector_group(Client, VoiceConnectorGroupId, Input, []).
update_voice_connector_group(Client, VoiceConnectorGroupId, Input0, Options0) ->
    Method = put,
    Path = ["/voice-connector-groups/", aws_util:encode_uri(VoiceConnectorGroupId), ""],
    SuccessStatusCode = 202,
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

%% @doc Validates an address to be used for 911 calls made with Amazon Chime
%% Voice Connectors.
%%
%% You can use validated addresses in a Presence Information Data Format
%% Location Object file that you include in SIP requests. That helps ensure
%% that addresses are routed to the appropriate Public Safety Answering
%% Point.
validate_e911_address(Client, Input) ->
    validate_e911_address(Client, Input, []).
validate_e911_address(Client, Input0, Options0) ->
    Method = post,
    Path = ["/emergency-calling/address"],
    SuccessStatusCode = 202,
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
    Client1 = Client#{service => <<"chime">>,
                      region => <<"us-east-1">>},
    Host = build_host(<<"chime">>, Client1),
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
    AdditionalHeaders = case proplists:get_value(append_sha256_content_hash, Options) of
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
