%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc
%%
%% Most of these APIs are no longer supported and will not be updated.
%%
%% We recommend using the latest versions in the
%% Amazon Chime SDK API reference:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/welcome.html, in
%% the Amazon Chime SDK.
%%
%% Using the latest versions requires migrating to dedicated namespaces. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
%%
%% The Amazon Chime application programming interface (API) is designed so
%% administrators can
%% perform key tasks, such as creating and managing Amazon Chime accounts,
%% users, and Voice
%% Connectors. This guide provides detailed information about the Amazon
%% Chime API,
%% including operations, types, inputs and outputs, and error codes.
%%
%% You can use an AWS SDK, the AWS Command Line Interface (AWS CLI), or the
%% REST API to make API calls for Amazon Chime. We recommend using an AWS SDK
%% or the
%% AWS CLI. The page for each API action contains a See Also section that
%% includes links to information about using the action with a
%% language-specific
%% AWS SDK or the AWS CLI.
%%
%% Using an AWS SDK
%%
%% You don't need to write code to calculate a signature for request
%% authentication. The SDK clients authenticate your requests by using access
%% keys that you provide. For more information about AWS SDKs, see the
%% AWS Developer Center: http://aws.amazon.com/developer/.
%%
%% Using the AWS CLI
%%
%% Use your access keys with the AWS CLI to make API calls. For information
%% about setting up the AWS CLI, see
%% Installing the AWS Command Line Interface:
%% https://docs.aws.amazon.com/cli/latest/userguide/installing.html
%% in the AWS Command Line Interface User Guide. For a list of available
%% Amazon Chime commands, see the
%% Amazon Chime commands:
%% https://docs.aws.amazon.com/cli/latest/reference/chime/index.html in the
%% AWS CLI Command Reference.
%%
%% Using REST APIs
%%
%% If you use REST to make API calls, you must authenticate your request by
%% providing a signature. Amazon Chime supports Signature Version 4. For more
%% information, see
%% Signature Version 4 Signing Process:
%% https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html
%% in the Amazon Web Services General Reference.
%%
%% When making REST API calls, use the service name `chime' and REST
%% endpoint `https://service.chime.aws.amazon.com'.
%%
%% Administrative permissions are controlled using AWS Identity and Access
%% Management (IAM). For more information, see
%% Identity and Access Management for Amazon Chime:
%% https://docs.aws.amazon.com/chime/latest/ag/security-iam.html
%% in the Amazon Chime Administration Guide.
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



%% Example:
%% create_media_capture_pipeline_response() :: #{
%%   <<"MediaCapturePipeline">> => media_capture_pipeline()
%% }
-type create_media_capture_pipeline_response() :: #{binary() => any()}.


%% Example:
%% create_meeting_dial_out_response() :: #{
%%   <<"TransactionId">> => string()
%% }
-type create_meeting_dial_out_response() :: #{binary() => any()}.


%% Example:
%% events_configuration() :: #{
%%   <<"BotId">> => string(),
%%   <<"LambdaFunctionArn">> => string(),
%%   <<"OutboundEventsHTTPSEndpoint">> => string()
%% }
-type events_configuration() :: #{binary() => any()}.


%% Example:
%% streaming_configuration() :: #{
%%   <<"DataRetentionInHours">> => integer(),
%%   <<"Disabled">> => boolean(),
%%   <<"StreamingNotificationTargets">> => list(streaming_notification_target()())
%% }
-type streaming_configuration() :: #{binary() => any()}.


%% Example:
%% list_channel_memberships_for_app_instance_user_request() :: #{
%%   <<"AppInstanceUserArn">> => string(),
%%   <<"ChimeBearer">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_channel_memberships_for_app_instance_user_request() :: #{binary() => any()}.


%% Example:
%% business_calling_settings() :: #{
%%   <<"CdrBucket">> => string()
%% }
-type business_calling_settings() :: #{binary() => any()}.


%% Example:
%% delete_channel_request() :: #{
%%   <<"ChimeBearer">> => string()
%% }
-type delete_channel_request() :: #{binary() => any()}.


%% Example:
%% batch_delete_phone_number_request() :: #{
%%   <<"PhoneNumberIds">> := list(string()())
%% }
-type batch_delete_phone_number_request() :: #{binary() => any()}.


%% Example:
%% list_app_instances_response() :: #{
%%   <<"AppInstances">> => list(app_instance_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_app_instances_response() :: #{binary() => any()}.


%% Example:
%% list_channel_bans_request() :: #{
%%   <<"ChimeBearer">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_channel_bans_request() :: #{binary() => any()}.


%% Example:
%% put_voice_connector_termination_credentials_request() :: #{
%%   <<"Credentials">> => list(credential()())
%% }
-type put_voice_connector_termination_credentials_request() :: #{binary() => any()}.


%% Example:
%% update_sip_rule_request() :: #{
%%   <<"Disabled">> => boolean(),
%%   <<"Name">> := string(),
%%   <<"TargetApplications">> => list(sip_rule_target_application()())
%% }
-type update_sip_rule_request() :: #{binary() => any()}.


%% Example:
%% sip_rule() :: #{
%%   <<"CreatedTimestamp">> => non_neg_integer(),
%%   <<"Disabled">> => boolean(),
%%   <<"Name">> => string(),
%%   <<"SipRuleId">> => string(),
%%   <<"TargetApplications">> => list(sip_rule_target_application()()),
%%   <<"TriggerType">> => list(any()),
%%   <<"TriggerValue">> => string(),
%%   <<"UpdatedTimestamp">> => non_neg_integer()
%% }
-type sip_rule() :: #{binary() => any()}.


%% Example:
%% describe_channel_moderated_by_app_instance_user_request() :: #{
%%   <<"AppInstanceUserArn">> := string(),
%%   <<"ChimeBearer">> => string()
%% }
-type describe_channel_moderated_by_app_instance_user_request() :: #{binary() => any()}.


%% Example:
%% create_phone_number_order_response() :: #{
%%   <<"PhoneNumberOrder">> => phone_number_order()
%% }
-type create_phone_number_order_response() :: #{binary() => any()}.

%% Example:
%% delete_app_instance_admin_request() :: #{}
-type delete_app_instance_admin_request() :: #{}.


%% Example:
%% describe_channel_moderator_response() :: #{
%%   <<"ChannelModerator">> => channel_moderator()
%% }
-type describe_channel_moderator_response() :: #{binary() => any()}.


%% Example:
%% batch_update_user_response() :: #{
%%   <<"UserErrors">> => list(user_error()())
%% }
-type batch_update_user_response() :: #{binary() => any()}.


%% Example:
%% create_sip_media_application_request() :: #{
%%   <<"AwsRegion">> := string(),
%%   <<"Endpoints">> := list(sip_media_application_endpoint()()),
%%   <<"Name">> := string()
%% }
-type create_sip_media_application_request() :: #{binary() => any()}.

%% Example:
%% delete_app_instance_user_request() :: #{}
-type delete_app_instance_user_request() :: #{}.


%% Example:
%% update_sip_media_application_call_response() :: #{
%%   <<"SipMediaApplicationCall">> => sip_media_application_call()
%% }
-type update_sip_media_application_call_response() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"ResourceARN">> := string(),
%%   <<"Tags">> := list(tag()())
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% batch_create_room_membership_response() :: #{
%%   <<"Errors">> => list(member_error()())
%% }
-type batch_create_room_membership_response() :: #{binary() => any()}.


%% Example:
%% list_app_instance_admins_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_app_instance_admins_request() :: #{binary() => any()}.


%% Example:
%% member_error() :: #{
%%   <<"ErrorCode">> => list(any()),
%%   <<"ErrorMessage">> => string(),
%%   <<"MemberId">> => string()
%% }
-type member_error() :: #{binary() => any()}.


%% Example:
%% put_sip_media_application_logging_configuration_request() :: #{
%%   <<"SipMediaApplicationLoggingConfiguration">> => sip_media_application_logging_configuration()
%% }
-type put_sip_media_application_logging_configuration_request() :: #{binary() => any()}.


%% Example:
%% proxy() :: #{
%%   <<"DefaultSessionExpiryMinutes">> => integer(),
%%   <<"Disabled">> => boolean(),
%%   <<"FallBackPhoneNumber">> => string(),
%%   <<"PhoneNumberCountries">> => list(string()())
%% }
-type proxy() :: #{binary() => any()}.


%% Example:
%% update_proxy_session_request() :: #{
%%   <<"Capabilities">> := list(list(any())()),
%%   <<"ExpiryMinutes">> => integer()
%% }
-type update_proxy_session_request() :: #{binary() => any()}.

%% Example:
%% redact_room_message_request() :: #{}
-type redact_room_message_request() :: #{}.


%% Example:
%% batch_update_phone_number_response() :: #{
%%   <<"PhoneNumberErrors">> => list(phone_number_error()())
%% }
-type batch_update_phone_number_response() :: #{binary() => any()}.


%% Example:
%% get_account_response() :: #{
%%   <<"Account">> => account()
%% }
-type get_account_response() :: #{binary() => any()}.


%% Example:
%% redact_channel_message_response() :: #{
%%   <<"ChannelArn">> => string(),
%%   <<"MessageId">> => string()
%% }
-type redact_channel_message_response() :: #{binary() => any()}.

%% Example:
%% get_voice_connector_termination_health_request() :: #{}
-type get_voice_connector_termination_health_request() :: #{}.


%% Example:
%% validate_e911_address_response() :: #{
%%   <<"Address">> => address(),
%%   <<"AddressExternalId">> => string(),
%%   <<"CandidateAddressList">> => list(candidate_address()()),
%%   <<"ValidationResult">> => integer()
%% }
-type validate_e911_address_response() :: #{binary() => any()}.


%% Example:
%% get_attendee_response() :: #{
%%   <<"Attendee">> => attendee()
%% }
-type get_attendee_response() :: #{binary() => any()}.

%% Example:
%% delete_room_request() :: #{}
-type delete_room_request() :: #{}.

%% Example:
%% reset_personal_pin_request() :: #{}
-type reset_personal_pin_request() :: #{}.


%% Example:
%% create_channel_moderator_response() :: #{
%%   <<"ChannelArn">> => string(),
%%   <<"ChannelModerator">> => identity()
%% }
-type create_channel_moderator_response() :: #{binary() => any()}.


%% Example:
%% update_voice_connector_response() :: #{
%%   <<"VoiceConnector">> => voice_connector()
%% }
-type update_voice_connector_response() :: #{binary() => any()}.


%% Example:
%% list_phone_number_orders_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"PhoneNumberOrders">> => list(phone_number_order()())
%% }
-type list_phone_number_orders_response() :: #{binary() => any()}.


%% Example:
%% termination_health() :: #{
%%   <<"Source">> => string(),
%%   <<"Timestamp">> => non_neg_integer()
%% }
-type termination_health() :: #{binary() => any()}.


%% Example:
%% delete_channel_moderator_request() :: #{
%%   <<"ChimeBearer">> => string()
%% }
-type delete_channel_moderator_request() :: #{binary() => any()}.

%% Example:
%% redact_conversation_message_response() :: #{}
-type redact_conversation_message_response() :: #{}.


%% Example:
%% room() :: #{
%%   <<"AccountId">> => string(),
%%   <<"CreatedBy">> => string(),
%%   <<"CreatedTimestamp">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"RoomId">> => string(),
%%   <<"UpdatedTimestamp">> => non_neg_integer()
%% }
-type room() :: #{binary() => any()}.


%% Example:
%% create_channel_response() :: #{
%%   <<"ChannelArn">> => string()
%% }
-type create_channel_response() :: #{binary() => any()}.


%% Example:
%% create_app_instance_response() :: #{
%%   <<"AppInstanceArn">> => string()
%% }
-type create_app_instance_response() :: #{binary() => any()}.


%% Example:
%% update_app_instance_response() :: #{
%%   <<"AppInstanceArn">> => string()
%% }
-type update_app_instance_response() :: #{binary() => any()}.


%% Example:
%% channel_membership_for_app_instance_user_summary() :: #{
%%   <<"AppInstanceUserMembershipSummary">> => app_instance_user_membership_summary(),
%%   <<"ChannelSummary">> => channel_summary()
%% }
-type channel_membership_for_app_instance_user_summary() :: #{binary() => any()}.


%% Example:
%% participant() :: #{
%%   <<"PhoneNumber">> => string(),
%%   <<"ProxyPhoneNumber">> => string()
%% }
-type participant() :: #{binary() => any()}.


%% Example:
%% update_sip_media_application_request() :: #{
%%   <<"Endpoints">> => list(sip_media_application_endpoint()()),
%%   <<"Name">> => string()
%% }
-type update_sip_media_application_request() :: #{binary() => any()}.


%% Example:
%% batch_unsuspend_user_response() :: #{
%%   <<"UserErrors">> => list(user_error()())
%% }
-type batch_unsuspend_user_response() :: #{binary() => any()}.

%% Example:
%% delete_voice_connector_group_request() :: #{}
-type delete_voice_connector_group_request() :: #{}.


%% Example:
%% origination() :: #{
%%   <<"Disabled">> => boolean(),
%%   <<"Routes">> => list(origination_route()())
%% }
-type origination() :: #{binary() => any()}.


%% Example:
%% list_room_memberships_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"RoomMemberships">> => list(room_membership()())
%% }
-type list_room_memberships_response() :: #{binary() => any()}.


%% Example:
%% list_voice_connectors_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_voice_connectors_request() :: #{binary() => any()}.


%% Example:
%% update_user_response() :: #{
%%   <<"User">> => user()
%% }
-type update_user_response() :: #{binary() => any()}.


%% Example:
%% phone_number_country() :: #{
%%   <<"CountryCode">> => string(),
%%   <<"SupportedPhoneNumberTypes">> => list(list(any())())
%% }
-type phone_number_country() :: #{binary() => any()}.


%% Example:
%% list_meetings_response() :: #{
%%   <<"Meetings">> => list(meeting()()),
%%   <<"NextToken">> => string()
%% }
-type list_meetings_response() :: #{binary() => any()}.


%% Example:
%% geo_match_params() :: #{
%%   <<"AreaCode">> => string(),
%%   <<"Country">> => string()
%% }
-type geo_match_params() :: #{binary() => any()}.


%% Example:
%% search_available_phone_numbers_response() :: #{
%%   <<"E164PhoneNumbers">> => list(string()()),
%%   <<"NextToken">> => string()
%% }
-type search_available_phone_numbers_response() :: #{binary() => any()}.

%% Example:
%% get_voice_connector_request() :: #{}
-type get_voice_connector_request() :: #{}.


%% Example:
%% put_voice_connector_origination_response() :: #{
%%   <<"Origination">> => origination()
%% }
-type put_voice_connector_origination_response() :: #{binary() => any()}.


%% Example:
%% list_channel_messages_response() :: #{
%%   <<"ChannelArn">> => string(),
%%   <<"ChannelMessages">> => list(channel_message_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_channel_messages_response() :: #{binary() => any()}.


%% Example:
%% tag_meeting_request() :: #{
%%   <<"Tags">> := list(tag()())
%% }
-type tag_meeting_request() :: #{binary() => any()}.


%% Example:
%% tag_attendee_request() :: #{
%%   <<"Tags">> := list(tag()())
%% }
-type tag_attendee_request() :: #{binary() => any()}.


%% Example:
%% list_rooms_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Rooms">> => list(room()())
%% }
-type list_rooms_response() :: #{binary() => any()}.


%% Example:
%% create_sip_rule_response() :: #{
%%   <<"SipRule">> => sip_rule()
%% }
-type create_sip_rule_response() :: #{binary() => any()}.


%% Example:
%% associate_phone_numbers_with_voice_connector_group_request() :: #{
%%   <<"E164PhoneNumbers">> := list(string()()),
%%   <<"ForceAssociate">> => boolean()
%% }
-type associate_phone_numbers_with_voice_connector_group_request() :: #{binary() => any()}.


%% Example:
%% batch_create_channel_membership_response() :: #{
%%   <<"BatchChannelMemberships">> => batch_channel_memberships(),
%%   <<"Errors">> => list(batch_create_channel_membership_error()())
%% }
-type batch_create_channel_membership_response() :: #{binary() => any()}.


%% Example:
%% get_media_capture_pipeline_response() :: #{
%%   <<"MediaCapturePipeline">> => media_capture_pipeline()
%% }
-type get_media_capture_pipeline_response() :: #{binary() => any()}.


%% Example:
%% create_voice_connector_group_response() :: #{
%%   <<"VoiceConnectorGroup">> => voice_connector_group()
%% }
-type create_voice_connector_group_response() :: #{binary() => any()}.

%% Example:
%% list_voice_connector_termination_credentials_request() :: #{}
-type list_voice_connector_termination_credentials_request() :: #{}.

%% Example:
%% get_account_settings_request() :: #{}
-type get_account_settings_request() :: #{}.


%% Example:
%% create_meeting_with_attendees_request() :: #{
%%   <<"Attendees">> => list(create_attendee_request_item()()),
%%   <<"ClientRequestToken">> := string(),
%%   <<"ExternalMeetingId">> => string(),
%%   <<"MediaRegion">> => string(),
%%   <<"MeetingHostId">> => string(),
%%   <<"NotificationsConfiguration">> => meeting_notification_configuration(),
%%   <<"Tags">> => list(tag()())
%% }
-type create_meeting_with_attendees_request() :: #{binary() => any()}.


%% Example:
%% update_phone_number_settings_request() :: #{
%%   <<"CallingName">> := string()
%% }
-type update_phone_number_settings_request() :: #{binary() => any()}.


%% Example:
%% video_artifacts_configuration() :: #{
%%   <<"MuxType">> => list(any()),
%%   <<"State">> => list(any())
%% }
-type video_artifacts_configuration() :: #{binary() => any()}.


%% Example:
%% get_voice_connector_proxy_response() :: #{
%%   <<"Proxy">> => proxy()
%% }
-type get_voice_connector_proxy_response() :: #{binary() => any()}.


%% Example:
%% list_app_instance_admins_response() :: #{
%%   <<"AppInstanceAdmins">> => list(app_instance_admin_summary()()),
%%   <<"AppInstanceArn">> => string(),
%%   <<"NextToken">> => string()
%% }
-type list_app_instance_admins_response() :: #{binary() => any()}.

%% Example:
%% get_bot_request() :: #{}
-type get_bot_request() :: #{}.

%% Example:
%% get_voice_connector_logging_configuration_request() :: #{}
-type get_voice_connector_logging_configuration_request() :: #{}.


%% Example:
%% service_failure_exception() :: #{
%%   <<"Code">> => list(any()),
%%   <<"Message">> => string()
%% }
-type service_failure_exception() :: #{binary() => any()}.


%% Example:
%% get_account_settings_response() :: #{
%%   <<"AccountSettings">> => account_settings()
%% }
-type get_account_settings_response() :: #{binary() => any()}.

%% Example:
%% delete_sip_rule_request() :: #{}
-type delete_sip_rule_request() :: #{}.

%% Example:
%% get_voice_connector_emergency_calling_configuration_request() :: #{}
-type get_voice_connector_emergency_calling_configuration_request() :: #{}.

%% Example:
%% restore_phone_number_request() :: #{}
-type restore_phone_number_request() :: #{}.

%% Example:
%% start_meeting_transcription_response() :: #{}
-type start_meeting_transcription_response() :: #{}.


%% Example:
%% identity() :: #{
%%   <<"Arn">> => string(),
%%   <<"Name">> => string()
%% }
-type identity() :: #{binary() => any()}.


%% Example:
%% put_voice_connector_emergency_calling_configuration_request() :: #{
%%   <<"EmergencyCallingConfiguration">> := emergency_calling_configuration()
%% }
-type put_voice_connector_emergency_calling_configuration_request() :: #{binary() => any()}.


%% Example:
%% forbidden_exception() :: #{
%%   <<"Code">> => list(any()),
%%   <<"Message">> => string()
%% }
-type forbidden_exception() :: #{binary() => any()}.


%% Example:
%% meeting() :: #{
%%   <<"ExternalMeetingId">> => string(),
%%   <<"MediaPlacement">> => media_placement(),
%%   <<"MediaRegion">> => string(),
%%   <<"MeetingId">> => string()
%% }
-type meeting() :: #{binary() => any()}.

%% Example:
%% get_media_capture_pipeline_request() :: #{}
-type get_media_capture_pipeline_request() :: #{}.


%% Example:
%% get_voice_connector_response() :: #{
%%   <<"VoiceConnector">> => voice_connector()
%% }
-type get_voice_connector_response() :: #{binary() => any()}.


%% Example:
%% get_bot_response() :: #{
%%   <<"Bot">> => bot()
%% }
-type get_bot_response() :: #{binary() => any()}.


%% Example:
%% create_proxy_session_response() :: #{
%%   <<"ProxySession">> => proxy_session()
%% }
-type create_proxy_session_response() :: #{binary() => any()}.


%% Example:
%% put_voice_connector_termination_request() :: #{
%%   <<"Termination">> := termination()
%% }
-type put_voice_connector_termination_request() :: #{binary() => any()}.


%% Example:
%% describe_channel_moderated_by_app_instance_user_response() :: #{
%%   <<"Channel">> => channel_moderated_by_app_instance_user_summary()
%% }
-type describe_channel_moderated_by_app_instance_user_response() :: #{binary() => any()}.

%% Example:
%% logout_user_request() :: #{}
-type logout_user_request() :: #{}.

%% Example:
%% update_account_settings_response() :: #{}
-type update_account_settings_response() :: #{}.


%% Example:
%% channel_membership() :: #{
%%   <<"ChannelArn">> => string(),
%%   <<"CreatedTimestamp">> => non_neg_integer(),
%%   <<"InvitedBy">> => identity(),
%%   <<"LastUpdatedTimestamp">> => non_neg_integer(),
%%   <<"Member">> => identity(),
%%   <<"Type">> => list(any())
%% }
-type channel_membership() :: #{binary() => any()}.


%% Example:
%% selected_video_streams() :: #{
%%   <<"AttendeeIds">> => list(string()()),
%%   <<"ExternalUserIds">> => list(string()())
%% }
-type selected_video_streams() :: #{binary() => any()}.


%% Example:
%% telephony_settings() :: #{
%%   <<"InboundCalling">> => boolean(),
%%   <<"OutboundCalling">> => boolean(),
%%   <<"SMS">> => boolean()
%% }
-type telephony_settings() :: #{binary() => any()}.


%% Example:
%% phone_number_association() :: #{
%%   <<"AssociatedTimestamp">> => non_neg_integer(),
%%   <<"Name">> => list(any()),
%%   <<"Value">> => string()
%% }
-type phone_number_association() :: #{binary() => any()}.


%% Example:
%% get_user_response() :: #{
%%   <<"User">> => user()
%% }
-type get_user_response() :: #{binary() => any()}.


%% Example:
%% unauthorized_client_exception() :: #{
%%   <<"Code">> => list(any()),
%%   <<"Message">> => string()
%% }
-type unauthorized_client_exception() :: #{binary() => any()}.

%% Example:
%% get_voice_connector_streaming_configuration_request() :: #{}
-type get_voice_connector_streaming_configuration_request() :: #{}.


%% Example:
%% phone_number() :: #{
%%   <<"Associations">> => list(phone_number_association()()),
%%   <<"CallingName">> => string(),
%%   <<"CallingNameStatus">> => list(any()),
%%   <<"Capabilities">> => phone_number_capabilities(),
%%   <<"Country">> => string(),
%%   <<"CreatedTimestamp">> => non_neg_integer(),
%%   <<"DeletionTimestamp">> => non_neg_integer(),
%%   <<"E164PhoneNumber">> => string(),
%%   <<"PhoneNumberId">> => string(),
%%   <<"ProductType">> => list(any()),
%%   <<"Status">> => list(any()),
%%   <<"Type">> => list(any()),
%%   <<"UpdatedTimestamp">> => non_neg_integer()
%% }
-type phone_number() :: #{binary() => any()}.


%% Example:
%% redact_channel_message_request() :: #{
%%   <<"ChimeBearer">> => string()
%% }
-type redact_channel_message_request() :: #{binary() => any()}.

%% Example:
%% describe_app_instance_request() :: #{}
-type describe_app_instance_request() :: #{}.

%% Example:
%% delete_app_instance_streaming_configurations_request() :: #{}
-type delete_app_instance_streaming_configurations_request() :: #{}.


%% Example:
%% termination() :: #{
%%   <<"CallingRegions">> => list(string()()),
%%   <<"CidrAllowedList">> => list(string()()),
%%   <<"CpsLimit">> => integer(),
%%   <<"DefaultPhoneNumber">> => string(),
%%   <<"Disabled">> => boolean()
%% }
-type termination() :: #{binary() => any()}.

%% Example:
%% get_phone_number_order_request() :: #{}
-type get_phone_number_order_request() :: #{}.


%% Example:
%% list_app_instances_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_app_instances_request() :: #{binary() => any()}.


%% Example:
%% update_channel_message_request() :: #{
%%   <<"ChimeBearer">> => string(),
%%   <<"Content">> => string(),
%%   <<"Metadata">> => string()
%% }
-type update_channel_message_request() :: #{binary() => any()}.

%% Example:
%% delete_room_membership_request() :: #{}
-type delete_room_membership_request() :: #{}.


%% Example:
%% update_phone_number_response() :: #{
%%   <<"PhoneNumber">> => phone_number()
%% }
-type update_phone_number_response() :: #{binary() => any()}.


%% Example:
%% create_channel_moderator_request() :: #{
%%   <<"ChannelModeratorArn">> := string(),
%%   <<"ChimeBearer">> => string()
%% }
-type create_channel_moderator_request() :: #{binary() => any()}.


%% Example:
%% update_app_instance_request() :: #{
%%   <<"Metadata">> => string(),
%%   <<"Name">> := string()
%% }
-type update_app_instance_request() :: #{binary() => any()}.


%% Example:
%% content_artifacts_configuration() :: #{
%%   <<"MuxType">> => list(any()),
%%   <<"State">> => list(any())
%% }
-type content_artifacts_configuration() :: #{binary() => any()}.


%% Example:
%% throttled_client_exception() :: #{
%%   <<"Code">> => list(any()),
%%   <<"Message">> => string()
%% }
-type throttled_client_exception() :: #{binary() => any()}.

%% Example:
%% delete_events_configuration_request() :: #{}
-type delete_events_configuration_request() :: #{}.


%% Example:
%% signin_delegate_group() :: #{
%%   <<"GroupName">> => string()
%% }
-type signin_delegate_group() :: #{binary() => any()}.


%% Example:
%% describe_channel_membership_response() :: #{
%%   <<"ChannelMembership">> => channel_membership()
%% }
-type describe_channel_membership_response() :: #{binary() => any()}.


%% Example:
%% update_room_response() :: #{
%%   <<"Room">> => room()
%% }
-type update_room_response() :: #{binary() => any()}.


%% Example:
%% get_voice_connector_termination_health_response() :: #{
%%   <<"TerminationHealth">> => termination_health()
%% }
-type get_voice_connector_termination_health_response() :: #{binary() => any()}.


%% Example:
%% associate_phone_numbers_with_voice_connector_request() :: #{
%%   <<"E164PhoneNumbers">> := list(string()()),
%%   <<"ForceAssociate">> => boolean()
%% }
-type associate_phone_numbers_with_voice_connector_request() :: #{binary() => any()}.


%% Example:
%% get_user_settings_response() :: #{
%%   <<"UserSettings">> => user_settings()
%% }
-type get_user_settings_response() :: #{binary() => any()}.


%% Example:
%% create_channel_ban_request() :: #{
%%   <<"ChimeBearer">> => string(),
%%   <<"MemberArn">> := string()
%% }
-type create_channel_ban_request() :: #{binary() => any()}.

%% Example:
%% delete_voice_connector_origination_request() :: #{}
-type delete_voice_connector_origination_request() :: #{}.


%% Example:
%% create_meeting_response() :: #{
%%   <<"Meeting">> => meeting()
%% }
-type create_meeting_response() :: #{binary() => any()}.


%% Example:
%% app_instance_user_membership_summary() :: #{
%%   <<"ReadMarkerTimestamp">> => non_neg_integer(),
%%   <<"Type">> => list(any())
%% }
-type app_instance_user_membership_summary() :: #{binary() => any()}.


%% Example:
%% list_meeting_tags_response() :: #{
%%   <<"Tags">> => list(tag()())
%% }
-type list_meeting_tags_response() :: #{binary() => any()}.


%% Example:
%% untag_meeting_request() :: #{
%%   <<"TagKeys">> := list(string()())
%% }
-type untag_meeting_request() :: #{binary() => any()}.


%% Example:
%% list_app_instance_users_request() :: #{
%%   <<"AppInstanceArn">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_app_instance_users_request() :: #{binary() => any()}.


%% Example:
%% list_media_capture_pipelines_response() :: #{
%%   <<"MediaCapturePipelines">> => list(media_capture_pipeline()()),
%%   <<"NextToken">> => string()
%% }
-type list_media_capture_pipelines_response() :: #{binary() => any()}.


%% Example:
%% send_channel_message_response() :: #{
%%   <<"ChannelArn">> => string(),
%%   <<"MessageId">> => string()
%% }
-type send_channel_message_response() :: #{binary() => any()}.


%% Example:
%% get_meeting_response() :: #{
%%   <<"Meeting">> => meeting()
%% }
-type get_meeting_response() :: #{binary() => any()}.


%% Example:
%% list_sip_media_applications_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_sip_media_applications_request() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"ResourceARN">> := string(),
%%   <<"TagKeys">> := list(string()())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% ordered_phone_number() :: #{
%%   <<"E164PhoneNumber">> => string(),
%%   <<"Status">> => list(any())
%% }
-type ordered_phone_number() :: #{binary() => any()}.


%% Example:
%% put_app_instance_retention_settings_request() :: #{
%%   <<"AppInstanceRetentionSettings">> := app_instance_retention_settings()
%% }
-type put_app_instance_retention_settings_request() :: #{binary() => any()}.


%% Example:
%% get_sip_media_application_logging_configuration_response() :: #{
%%   <<"SipMediaApplicationLoggingConfiguration">> => sip_media_application_logging_configuration()
%% }
-type get_sip_media_application_logging_configuration_response() :: #{binary() => any()}.


%% Example:
%% update_proxy_session_response() :: #{
%%   <<"ProxySession">> => proxy_session()
%% }
-type update_proxy_session_response() :: #{binary() => any()}.


%% Example:
%% create_phone_number_order_request() :: #{
%%   <<"E164PhoneNumbers">> := list(string()()),
%%   <<"ProductType">> := list(any())
%% }
-type create_phone_number_order_request() :: #{binary() => any()}.

%% Example:
%% delete_sip_media_application_request() :: #{}
-type delete_sip_media_application_request() :: #{}.


%% Example:
%% get_sip_media_application_response() :: #{
%%   <<"SipMediaApplication">> => sip_media_application()
%% }
-type get_sip_media_application_response() :: #{binary() => any()}.

%% Example:
%% stop_meeting_transcription_request() :: #{}
-type stop_meeting_transcription_request() :: #{}.


%% Example:
%% get_sip_rule_response() :: #{
%%   <<"SipRule">> => sip_rule()
%% }
-type get_sip_rule_response() :: #{binary() => any()}.


%% Example:
%% voice_connector_settings() :: #{
%%   <<"CdrBucket">> => string()
%% }
-type voice_connector_settings() :: #{binary() => any()}.

%% Example:
%% delete_proxy_session_request() :: #{}
-type delete_proxy_session_request() :: #{}.


%% Example:
%% logging_configuration() :: #{
%%   <<"EnableMediaMetricLogs">> => boolean(),
%%   <<"EnableSIPLogs">> => boolean()
%% }
-type logging_configuration() :: #{binary() => any()}.

%% Example:
%% get_app_instance_streaming_configurations_request() :: #{}
-type get_app_instance_streaming_configurations_request() :: #{}.


%% Example:
%% engine_transcribe_settings() :: #{
%%   <<"ContentIdentificationType">> => list(any()),
%%   <<"ContentRedactionType">> => list(any()),
%%   <<"EnablePartialResultsStabilization">> => boolean(),
%%   <<"IdentifyLanguage">> => boolean(),
%%   <<"LanguageCode">> => list(any()),
%%   <<"LanguageModelName">> => string(),
%%   <<"LanguageOptions">> => string(),
%%   <<"PartialResultsStability">> => list(any()),
%%   <<"PiiEntityTypes">> => string(),
%%   <<"PreferredLanguage">> => list(any()),
%%   <<"Region">> => list(any()),
%%   <<"VocabularyFilterMethod">> => list(any()),
%%   <<"VocabularyFilterName">> => string(),
%%   <<"VocabularyFilterNames">> => string(),
%%   <<"VocabularyName">> => string(),
%%   <<"VocabularyNames">> => string()
%% }
-type engine_transcribe_settings() :: #{binary() => any()}.

%% Example:
%% delete_media_capture_pipeline_request() :: #{}
-type delete_media_capture_pipeline_request() :: #{}.


%% Example:
%% restore_phone_number_response() :: #{
%%   <<"PhoneNumber">> => phone_number()
%% }
-type restore_phone_number_response() :: #{binary() => any()}.


%% Example:
%% list_phone_number_orders_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_phone_number_orders_request() :: #{binary() => any()}.


%% Example:
%% meeting_notification_configuration() :: #{
%%   <<"SnsTopicArn">> => string(),
%%   <<"SqsQueueArn">> => string()
%% }
-type meeting_notification_configuration() :: #{binary() => any()}.


%% Example:
%% list_channels_moderated_by_app_instance_user_response() :: #{
%%   <<"Channels">> => list(channel_moderated_by_app_instance_user_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_channels_moderated_by_app_instance_user_response() :: #{binary() => any()}.


%% Example:
%% put_voice_connector_termination_response() :: #{
%%   <<"Termination">> => termination()
%% }
-type put_voice_connector_termination_response() :: #{binary() => any()}.


%% Example:
%% put_retention_settings_response() :: #{
%%   <<"InitiateDeletionTimestamp">> => non_neg_integer(),
%%   <<"RetentionSettings">> => retention_settings()
%% }
-type put_retention_settings_response() :: #{binary() => any()}.


%% Example:
%% update_voice_connector_group_request() :: #{
%%   <<"Name">> := string(),
%%   <<"VoiceConnectorItems">> := list(voice_connector_item()())
%% }
-type update_voice_connector_group_request() :: #{binary() => any()}.


%% Example:
%% list_attendees_response() :: #{
%%   <<"Attendees">> => list(attendee()()),
%%   <<"NextToken">> => string()
%% }
-type list_attendees_response() :: #{binary() => any()}.


%% Example:
%% create_meeting_with_attendees_response() :: #{
%%   <<"Attendees">> => list(attendee()()),
%%   <<"Errors">> => list(create_attendee_error()()),
%%   <<"Meeting">> => meeting()
%% }
-type create_meeting_with_attendees_response() :: #{binary() => any()}.


%% Example:
%% list_supported_phone_number_countries_response() :: #{
%%   <<"PhoneNumberCountries">> => list(phone_number_country()())
%% }
-type list_supported_phone_number_countries_response() :: #{binary() => any()}.


%% Example:
%% update_sip_media_application_response() :: #{
%%   <<"SipMediaApplication">> => sip_media_application()
%% }
-type update_sip_media_application_response() :: #{binary() => any()}.


%% Example:
%% list_channels_moderated_by_app_instance_user_request() :: #{
%%   <<"AppInstanceUserArn">> => string(),
%%   <<"ChimeBearer">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_channels_moderated_by_app_instance_user_request() :: #{binary() => any()}.


%% Example:
%% d_n_i_s_emergency_calling_configuration() :: #{
%%   <<"CallingCountry">> => string(),
%%   <<"EmergencyPhoneNumber">> => string(),
%%   <<"TestPhoneNumber">> => string()
%% }
-type d_n_i_s_emergency_calling_configuration() :: #{binary() => any()}.


%% Example:
%% get_voice_connector_logging_configuration_response() :: #{
%%   <<"LoggingConfiguration">> => logging_configuration()
%% }
-type get_voice_connector_logging_configuration_response() :: #{binary() => any()}.


%% Example:
%% batch_create_room_membership_request() :: #{
%%   <<"MembershipItemList">> := list(membership_item()())
%% }
-type batch_create_room_membership_request() :: #{binary() => any()}.


%% Example:
%% get_app_instance_streaming_configurations_response() :: #{
%%   <<"AppInstanceStreamingConfigurations">> => list(app_instance_streaming_configuration()())
%% }
-type get_app_instance_streaming_configurations_response() :: #{binary() => any()}.


%% Example:
%% retention_settings() :: #{
%%   <<"ConversationRetentionSettings">> => conversation_retention_settings(),
%%   <<"RoomRetentionSettings">> => room_retention_settings()
%% }
-type retention_settings() :: #{binary() => any()}.


%% Example:
%% disassociate_phone_numbers_from_voice_connector_request() :: #{
%%   <<"E164PhoneNumbers">> := list(string()())
%% }
-type disassociate_phone_numbers_from_voice_connector_request() :: #{binary() => any()}.

%% Example:
%% delete_voice_connector_proxy_request() :: #{}
-type delete_voice_connector_proxy_request() :: #{}.


%% Example:
%% list_voice_connector_groups_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"VoiceConnectorGroups">> => list(voice_connector_group()())
%% }
-type list_voice_connector_groups_response() :: #{binary() => any()}.

%% Example:
%% associate_phone_number_with_user_response() :: #{}
-type associate_phone_number_with_user_response() :: #{}.


%% Example:
%% list_sip_rules_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"SipMediaApplicationId">> => string()
%% }
-type list_sip_rules_request() :: #{binary() => any()}.


%% Example:
%% describe_channel_moderator_request() :: #{
%%   <<"ChimeBearer">> => string()
%% }
-type describe_channel_moderator_request() :: #{binary() => any()}.


%% Example:
%% transcription_configuration() :: #{
%%   <<"EngineTranscribeMedicalSettings">> => engine_transcribe_medical_settings(),
%%   <<"EngineTranscribeSettings">> => engine_transcribe_settings()
%% }
-type transcription_configuration() :: #{binary() => any()}.


%% Example:
%% room_membership() :: #{
%%   <<"InvitedBy">> => string(),
%%   <<"Member">> => member(),
%%   <<"Role">> => list(any()),
%%   <<"RoomId">> => string(),
%%   <<"UpdatedTimestamp">> => non_neg_integer()
%% }
-type room_membership() :: #{binary() => any()}.


%% Example:
%% channel_summary() :: #{
%%   <<"ChannelArn">> => string(),
%%   <<"LastMessageTimestamp">> => non_neg_integer(),
%%   <<"Metadata">> => string(),
%%   <<"Mode">> => list(any()),
%%   <<"Name">> => string(),
%%   <<"Privacy">> => list(any())
%% }
-type channel_summary() :: #{binary() => any()}.

%% Example:
%% get_app_instance_retention_settings_request() :: #{}
-type get_app_instance_retention_settings_request() :: #{}.


%% Example:
%% media_capture_pipeline() :: #{
%%   <<"ChimeSdkMeetingConfiguration">> => chime_sdk_meeting_configuration(),
%%   <<"CreatedTimestamp">> => non_neg_integer(),
%%   <<"MediaPipelineId">> => string(),
%%   <<"SinkArn">> => string(),
%%   <<"SinkType">> => list(any()),
%%   <<"SourceArn">> => string(),
%%   <<"SourceType">> => list(any()),
%%   <<"Status">> => list(any()),
%%   <<"UpdatedTimestamp">> => non_neg_integer()
%% }
-type media_capture_pipeline() :: #{binary() => any()}.


%% Example:
%% get_channel_message_response() :: #{
%%   <<"ChannelMessage">> => channel_message()
%% }
-type get_channel_message_response() :: #{binary() => any()}.


%% Example:
%% list_proxy_sessions_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"ProxySessions">> => list(proxy_session()())
%% }
-type list_proxy_sessions_response() :: #{binary() => any()}.


%% Example:
%% list_bots_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_bots_request() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"Code">> => list(any()),
%%   <<"Message">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% describe_channel_membership_request() :: #{
%%   <<"ChimeBearer">> => string()
%% }
-type describe_channel_membership_request() :: #{binary() => any()}.

%% Example:
%% delete_meeting_request() :: #{}
-type delete_meeting_request() :: #{}.


%% Example:
%% list_room_memberships_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_room_memberships_request() :: #{binary() => any()}.


%% Example:
%% list_accounts_response() :: #{
%%   <<"Accounts">> => list(account()()),
%%   <<"NextToken">> => string()
%% }
-type list_accounts_response() :: #{binary() => any()}.


%% Example:
%% put_voice_connector_streaming_configuration_response() :: #{
%%   <<"StreamingConfiguration">> => streaming_configuration()
%% }
-type put_voice_connector_streaming_configuration_response() :: #{binary() => any()}.


%% Example:
%% validate_e911_address_request() :: #{
%%   <<"AwsAccountId">> := string(),
%%   <<"City">> := string(),
%%   <<"Country">> := string(),
%%   <<"PostalCode">> := string(),
%%   <<"State">> := string(),
%%   <<"StreetInfo">> := string(),
%%   <<"StreetNumber">> := string()
%% }
-type validate_e911_address_request() :: #{binary() => any()}.

%% Example:
%% get_user_request() :: #{}
-type get_user_request() :: #{}.


%% Example:
%% list_voice_connector_groups_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_voice_connector_groups_request() :: #{binary() => any()}.


%% Example:
%% disassociate_phone_numbers_from_voice_connector_response() :: #{
%%   <<"PhoneNumberErrors">> => list(phone_number_error()())
%% }
-type disassociate_phone_numbers_from_voice_connector_response() :: #{binary() => any()}.

%% Example:
%% get_voice_connector_termination_request() :: #{}
-type get_voice_connector_termination_request() :: #{}.


%% Example:
%% list_sip_rules_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"SipRules">> => list(sip_rule()())
%% }
-type list_sip_rules_response() :: #{binary() => any()}.


%% Example:
%% associate_phone_number_with_user_request() :: #{
%%   <<"E164PhoneNumber">> := string()
%% }
-type associate_phone_number_with_user_request() :: #{binary() => any()}.


%% Example:
%% disassociate_phone_numbers_from_voice_connector_group_request() :: #{
%%   <<"E164PhoneNumbers">> := list(string()())
%% }
-type disassociate_phone_numbers_from_voice_connector_group_request() :: #{binary() => any()}.


%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.


%% Example:
%% describe_app_instance_user_response() :: #{
%%   <<"AppInstanceUser">> => app_instance_user()
%% }
-type describe_app_instance_user_response() :: #{binary() => any()}.


%% Example:
%% create_sip_rule_request() :: #{
%%   <<"Disabled">> => boolean(),
%%   <<"Name">> := string(),
%%   <<"TargetApplications">> := list(sip_rule_target_application()()),
%%   <<"TriggerType">> := list(any()),
%%   <<"TriggerValue">> := string()
%% }
-type create_sip_rule_request() :: #{binary() => any()}.


%% Example:
%% engine_transcribe_medical_settings() :: #{
%%   <<"ContentIdentificationType">> => list(any()),
%%   <<"LanguageCode">> => list(any()),
%%   <<"Region">> => list(any()),
%%   <<"Specialty">> => list(any()),
%%   <<"Type">> => list(any()),
%%   <<"VocabularyName">> => string()
%% }
-type engine_transcribe_medical_settings() :: #{binary() => any()}.

%% Example:
%% get_user_settings_request() :: #{}
-type get_user_settings_request() :: #{}.


%% Example:
%% channel_ban_summary() :: #{
%%   <<"Member">> => identity()
%% }
-type channel_ban_summary() :: #{binary() => any()}.


%% Example:
%% put_voice_connector_streaming_configuration_request() :: #{
%%   <<"StreamingConfiguration">> := streaming_configuration()
%% }
-type put_voice_connector_streaming_configuration_request() :: #{binary() => any()}.


%% Example:
%% batch_delete_phone_number_response() :: #{
%%   <<"PhoneNumberErrors">> => list(phone_number_error()())
%% }
-type batch_delete_phone_number_response() :: #{binary() => any()}.


%% Example:
%% get_voice_connector_streaming_configuration_response() :: #{
%%   <<"StreamingConfiguration">> => streaming_configuration()
%% }
-type get_voice_connector_streaming_configuration_response() :: #{binary() => any()}.


%% Example:
%% proxy_session() :: #{
%%   <<"Capabilities">> => list(list(any())()),
%%   <<"CreatedTimestamp">> => non_neg_integer(),
%%   <<"EndedTimestamp">> => non_neg_integer(),
%%   <<"ExpiryMinutes">> => integer(),
%%   <<"GeoMatchLevel">> => list(any()),
%%   <<"GeoMatchParams">> => geo_match_params(),
%%   <<"Name">> => string(),
%%   <<"NumberSelectionBehavior">> => list(any()),
%%   <<"Participants">> => list(participant()()),
%%   <<"ProxySessionId">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"UpdatedTimestamp">> => non_neg_integer(),
%%   <<"VoiceConnectorId">> => string()
%% }
-type proxy_session() :: #{binary() => any()}.


%% Example:
%% get_phone_number_order_response() :: #{
%%   <<"PhoneNumberOrder">> => phone_number_order()
%% }
-type get_phone_number_order_response() :: #{binary() => any()}.


%% Example:
%% describe_app_instance_response() :: #{
%%   <<"AppInstance">> => app_instance()
%% }
-type describe_app_instance_response() :: #{binary() => any()}.


%% Example:
%% describe_channel_response() :: #{
%%   <<"Channel">> => channel()
%% }
-type describe_channel_response() :: #{binary() => any()}.

%% Example:
%% list_meeting_tags_request() :: #{}
-type list_meeting_tags_request() :: #{}.


%% Example:
%% delete_channel_ban_request() :: #{
%%   <<"ChimeBearer">> => string()
%% }
-type delete_channel_ban_request() :: #{binary() => any()}.


%% Example:
%% update_app_instance_user_response() :: #{
%%   <<"AppInstanceUserArn">> => string()
%% }
-type update_app_instance_user_response() :: #{binary() => any()}.


%% Example:
%% create_room_membership_response() :: #{
%%   <<"RoomMembership">> => room_membership()
%% }
-type create_room_membership_response() :: #{binary() => any()}.


%% Example:
%% list_app_instance_users_response() :: #{
%%   <<"AppInstanceArn">> => string(),
%%   <<"AppInstanceUsers">> => list(app_instance_user_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_app_instance_users_response() :: #{binary() => any()}.


%% Example:
%% list_phone_numbers_request() :: #{
%%   <<"FilterName">> => list(any()),
%%   <<"FilterValue">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ProductType">> => list(any()),
%%   <<"Status">> => list(any())
%% }
-type list_phone_numbers_request() :: #{binary() => any()}.


%% Example:
%% resource_limit_exceeded_exception() :: #{
%%   <<"Code">> => list(any()),
%%   <<"Message">> => string()
%% }
-type resource_limit_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% app_instance_summary() :: #{
%%   <<"AppInstanceArn">> => string(),
%%   <<"Metadata">> => string(),
%%   <<"Name">> => string()
%% }
-type app_instance_summary() :: #{binary() => any()}.


%% Example:
%% create_voice_connector_request() :: #{
%%   <<"AwsRegion">> => list(any()),
%%   <<"Name">> := string(),
%%   <<"RequireEncryption">> := boolean()
%% }
-type create_voice_connector_request() :: #{binary() => any()}.

%% Example:
%% get_phone_number_request() :: #{}
-type get_phone_number_request() :: #{}.


%% Example:
%% list_channel_bans_response() :: #{
%%   <<"ChannelArn">> => string(),
%%   <<"ChannelBans">> => list(channel_ban_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_channel_bans_response() :: #{binary() => any()}.


%% Example:
%% list_users_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Users">> => list(user()())
%% }
-type list_users_response() :: #{binary() => any()}.


%% Example:
%% create_meeting_request() :: #{
%%   <<"ClientRequestToken">> := string(),
%%   <<"ExternalMeetingId">> => string(),
%%   <<"MediaRegion">> => string(),
%%   <<"MeetingHostId">> => string(),
%%   <<"NotificationsConfiguration">> => meeting_notification_configuration(),
%%   <<"Tags">> => list(tag()())
%% }
-type create_meeting_request() :: #{binary() => any()}.


%% Example:
%% not_found_exception() :: #{
%%   <<"Code">> => list(any()),
%%   <<"Message">> => string()
%% }
-type not_found_exception() :: #{binary() => any()}.


%% Example:
%% describe_channel_request() :: #{
%%   <<"ChimeBearer">> => string()
%% }
-type describe_channel_request() :: #{binary() => any()}.


%% Example:
%% account() :: #{
%%   <<"AccountId">> => string(),
%%   <<"AccountStatus">> => list(any()),
%%   <<"AccountType">> => list(any()),
%%   <<"AwsAccountId">> => string(),
%%   <<"CreatedTimestamp">> => non_neg_integer(),
%%   <<"DefaultLicense">> => list(any()),
%%   <<"Name">> => string(),
%%   <<"SigninDelegateGroups">> => list(signin_delegate_group()()),
%%   <<"SupportedLicenses">> => list(list(any())())
%% }
-type account() :: #{binary() => any()}.


%% Example:
%% put_app_instance_streaming_configurations_response() :: #{
%%   <<"AppInstanceStreamingConfigurations">> => list(app_instance_streaming_configuration()())
%% }
-type put_app_instance_streaming_configurations_response() :: #{binary() => any()}.


%% Example:
%% put_voice_connector_proxy_request() :: #{
%%   <<"DefaultSessionExpiryMinutes">> := integer(),
%%   <<"Disabled">> => boolean(),
%%   <<"FallBackPhoneNumber">> => string(),
%%   <<"PhoneNumberPoolCountries">> := list(string()())
%% }
-type put_voice_connector_proxy_request() :: #{binary() => any()}.


%% Example:
%% associate_phone_numbers_with_voice_connector_response() :: #{
%%   <<"PhoneNumberErrors">> => list(phone_number_error()())
%% }
-type associate_phone_numbers_with_voice_connector_response() :: #{binary() => any()}.


%% Example:
%% put_voice_connector_logging_configuration_request() :: #{
%%   <<"LoggingConfiguration">> := logging_configuration()
%% }
-type put_voice_connector_logging_configuration_request() :: #{binary() => any()}.


%% Example:
%% list_channel_memberships_request() :: #{
%%   <<"ChimeBearer">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"Type">> => list(any())
%% }
-type list_channel_memberships_request() :: #{binary() => any()}.


%% Example:
%% channel_membership_summary() :: #{
%%   <<"Member">> => identity()
%% }
-type channel_membership_summary() :: #{binary() => any()}.


%% Example:
%% phone_number_order() :: #{
%%   <<"CreatedTimestamp">> => non_neg_integer(),
%%   <<"OrderedPhoneNumbers">> => list(ordered_phone_number()()),
%%   <<"PhoneNumberOrderId">> => string(),
%%   <<"ProductType">> => list(any()),
%%   <<"Status">> => list(any()),
%%   <<"UpdatedTimestamp">> => non_neg_integer()
%% }
-type phone_number_order() :: #{binary() => any()}.


%% Example:
%% app_instance_user() :: #{
%%   <<"AppInstanceUserArn">> => string(),
%%   <<"CreatedTimestamp">> => non_neg_integer(),
%%   <<"LastUpdatedTimestamp">> => non_neg_integer(),
%%   <<"Metadata">> => string(),
%%   <<"Name">> => string()
%% }
-type app_instance_user() :: #{binary() => any()}.


%% Example:
%% create_attendee_request_item() :: #{
%%   <<"ExternalUserId">> => string(),
%%   <<"Tags">> => list(tag()())
%% }
-type create_attendee_request_item() :: #{binary() => any()}.


%% Example:
%% create_channel_request() :: #{
%%   <<"AppInstanceArn">> := string(),
%%   <<"ChimeBearer">> => string(),
%%   <<"ClientRequestToken">> := string(),
%%   <<"Metadata">> => string(),
%%   <<"Mode">> => list(any()),
%%   <<"Name">> := string(),
%%   <<"Privacy">> => list(any()),
%%   <<"Tags">> => list(tag()())
%% }
-type create_channel_request() :: #{binary() => any()}.


%% Example:
%% audio_artifacts_configuration() :: #{
%%   <<"MuxType">> => list(any())
%% }
-type audio_artifacts_configuration() :: #{binary() => any()}.

%% Example:
%% get_messaging_session_endpoint_request() :: #{}
-type get_messaging_session_endpoint_request() :: #{}.


%% Example:
%% list_media_capture_pipelines_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_media_capture_pipelines_request() :: #{binary() => any()}.


%% Example:
%% put_retention_settings_request() :: #{
%%   <<"RetentionSettings">> := retention_settings()
%% }
-type put_retention_settings_request() :: #{binary() => any()}.

%% Example:
%% delete_phone_number_request() :: #{}
-type delete_phone_number_request() :: #{}.


%% Example:
%% create_attendee_response() :: #{
%%   <<"Attendee">> => attendee()
%% }
-type create_attendee_response() :: #{binary() => any()}.


%% Example:
%% app_instance_streaming_configuration() :: #{
%%   <<"AppInstanceDataType">> => list(any()),
%%   <<"ResourceArn">> => string()
%% }
-type app_instance_streaming_configuration() :: #{binary() => any()}.


%% Example:
%% disassociate_signin_delegate_groups_from_account_request() :: #{
%%   <<"GroupNames">> := list(string()())
%% }
-type disassociate_signin_delegate_groups_from_account_request() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"Tags">> => list(tag()())
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% update_room_membership_request() :: #{
%%   <<"Role">> => list(any())
%% }
-type update_room_membership_request() :: #{binary() => any()}.


%% Example:
%% sip_media_application_endpoint() :: #{
%%   <<"LambdaArn">> => string()
%% }
-type sip_media_application_endpoint() :: #{binary() => any()}.


%% Example:
%% disassociate_phone_numbers_from_voice_connector_group_response() :: #{
%%   <<"PhoneNumberErrors">> => list(phone_number_error()())
%% }
-type disassociate_phone_numbers_from_voice_connector_group_response() :: #{binary() => any()}.


%% Example:
%% channel_retention_settings() :: #{
%%   <<"RetentionDays">> => integer()
%% }
-type channel_retention_settings() :: #{binary() => any()}.


%% Example:
%% get_global_settings_response() :: #{
%%   <<"BusinessCalling">> => business_calling_settings(),
%%   <<"VoiceConnector">> => voice_connector_settings()
%% }
-type get_global_settings_response() :: #{binary() => any()}.


%% Example:
%% voice_connector() :: #{
%%   <<"AwsRegion">> => list(any()),
%%   <<"CreatedTimestamp">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"OutboundHostName">> => string(),
%%   <<"RequireEncryption">> => boolean(),
%%   <<"UpdatedTimestamp">> => non_neg_integer(),
%%   <<"VoiceConnectorArn">> => string(),
%%   <<"VoiceConnectorId">> => string()
%% }
-type voice_connector() :: #{binary() => any()}.


%% Example:
%% list_proxy_sessions_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"Status">> => list(any())
%% }
-type list_proxy_sessions_request() :: #{binary() => any()}.


%% Example:
%% source_configuration() :: #{
%%   <<"SelectedVideoStreams">> => selected_video_streams()
%% }
-type source_configuration() :: #{binary() => any()}.


%% Example:
%% origination_route() :: #{
%%   <<"Host">> => string(),
%%   <<"Port">> => integer(),
%%   <<"Priority">> => integer(),
%%   <<"Protocol">> => list(any()),
%%   <<"Weight">> => integer()
%% }
-type origination_route() :: #{binary() => any()}.


%% Example:
%% update_account_settings_request() :: #{
%%   <<"AccountSettings">> := account_settings()
%% }
-type update_account_settings_request() :: #{binary() => any()}.


%% Example:
%% service_unavailable_exception() :: #{
%%   <<"Code">> => list(any()),
%%   <<"Message">> => string()
%% }
-type service_unavailable_exception() :: #{binary() => any()}.


%% Example:
%% list_channel_memberships_for_app_instance_user_response() :: #{
%%   <<"ChannelMemberships">> => list(channel_membership_for_app_instance_user_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_channel_memberships_for_app_instance_user_response() :: #{binary() => any()}.

%% Example:
%% associate_signin_delegate_groups_with_account_response() :: #{}
-type associate_signin_delegate_groups_with_account_response() :: #{}.


%% Example:
%% streaming_notification_target() :: #{
%%   <<"NotificationTarget">> => list(any())
%% }
-type streaming_notification_target() :: #{binary() => any()}.


%% Example:
%% voice_connector_item() :: #{
%%   <<"Priority">> => integer(),
%%   <<"VoiceConnectorId">> => string()
%% }
-type voice_connector_item() :: #{binary() => any()}.


%% Example:
%% get_app_instance_retention_settings_response() :: #{
%%   <<"AppInstanceRetentionSettings">> => app_instance_retention_settings(),
%%   <<"InitiateDeletionTimestamp">> => non_neg_integer()
%% }
-type get_app_instance_retention_settings_response() :: #{binary() => any()}.


%% Example:
%% list_channels_response() :: #{
%%   <<"Channels">> => list(channel_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_channels_response() :: #{binary() => any()}.


%% Example:
%% create_channel_membership_request() :: #{
%%   <<"ChimeBearer">> => string(),
%%   <<"MemberArn">> := string(),
%%   <<"Type">> := list(any())
%% }
-type create_channel_membership_request() :: #{binary() => any()}.


%% Example:
%% put_sip_media_application_logging_configuration_response() :: #{
%%   <<"SipMediaApplicationLoggingConfiguration">> => sip_media_application_logging_configuration()
%% }
-type put_sip_media_application_logging_configuration_response() :: #{binary() => any()}.


%% Example:
%% update_voice_connector_group_response() :: #{
%%   <<"VoiceConnectorGroup">> => voice_connector_group()
%% }
-type update_voice_connector_group_response() :: #{binary() => any()}.


%% Example:
%% chime_sdk_meeting_configuration() :: #{
%%   <<"ArtifactsConfiguration">> => artifacts_configuration(),
%%   <<"SourceConfiguration">> => source_configuration()
%% }
-type chime_sdk_meeting_configuration() :: #{binary() => any()}.


%% Example:
%% get_phone_number_response() :: #{
%%   <<"PhoneNumber">> => phone_number()
%% }
-type get_phone_number_response() :: #{binary() => any()}.


%% Example:
%% get_messaging_session_endpoint_response() :: #{
%%   <<"Endpoint">> => messaging_session_endpoint()
%% }
-type get_messaging_session_endpoint_response() :: #{binary() => any()}.


%% Example:
%% list_voice_connector_termination_credentials_response() :: #{
%%   <<"Usernames">> => list(string()())
%% }
-type list_voice_connector_termination_credentials_response() :: #{binary() => any()}.


%% Example:
%% update_channel_request() :: #{
%%   <<"ChimeBearer">> => string(),
%%   <<"Metadata">> => string(),
%%   <<"Mode">> := list(any()),
%%   <<"Name">> := string()
%% }
-type update_channel_request() :: #{binary() => any()}.


%% Example:
%% update_global_settings_request() :: #{
%%   <<"BusinessCalling">> => business_calling_settings(),
%%   <<"VoiceConnector">> => voice_connector_settings()
%% }
-type update_global_settings_request() :: #{binary() => any()}.


%% Example:
%% update_channel_read_marker_request() :: #{
%%   <<"ChimeBearer">> => string()
%% }
-type update_channel_read_marker_request() :: #{binary() => any()}.


%% Example:
%% update_user_settings_request() :: #{
%%   <<"UserSettings">> := user_settings()
%% }
-type update_user_settings_request() :: #{binary() => any()}.


%% Example:
%% update_account_request() :: #{
%%   <<"DefaultLicense">> => list(any()),
%%   <<"Name">> => string()
%% }
-type update_account_request() :: #{binary() => any()}.

%% Example:
%% get_meeting_request() :: #{}
-type get_meeting_request() :: #{}.


%% Example:
%% user_error() :: #{
%%   <<"ErrorCode">> => list(any()),
%%   <<"ErrorMessage">> => string(),
%%   <<"UserId">> => string()
%% }
-type user_error() :: #{binary() => any()}.


%% Example:
%% app_instance_admin() :: #{
%%   <<"Admin">> => identity(),
%%   <<"AppInstanceArn">> => string(),
%%   <<"CreatedTimestamp">> => non_neg_integer()
%% }
-type app_instance_admin() :: #{binary() => any()}.


%% Example:
%% channel_moderated_by_app_instance_user_summary() :: #{
%%   <<"ChannelSummary">> => channel_summary()
%% }
-type channel_moderated_by_app_instance_user_summary() :: #{binary() => any()}.


%% Example:
%% create_proxy_session_request() :: #{
%%   <<"Capabilities">> := list(list(any())()),
%%   <<"ExpiryMinutes">> => integer(),
%%   <<"GeoMatchLevel">> => list(any()),
%%   <<"GeoMatchParams">> => geo_match_params(),
%%   <<"Name">> => string(),
%%   <<"NumberSelectionBehavior">> => list(any()),
%%   <<"ParticipantPhoneNumbers">> := list(string()())
%% }
-type create_proxy_session_request() :: #{binary() => any()}.


%% Example:
%% candidate_address() :: #{
%%   <<"city">> => string(),
%%   <<"country">> => string(),
%%   <<"postalCode">> => string(),
%%   <<"postalCodePlus4">> => string(),
%%   <<"state">> => string(),
%%   <<"streetInfo">> => string(),
%%   <<"streetNumber">> => string()
%% }
-type candidate_address() :: #{binary() => any()}.

%% Example:
%% get_sip_rule_request() :: #{}
-type get_sip_rule_request() :: #{}.


%% Example:
%% channel_message() :: #{
%%   <<"ChannelArn">> => string(),
%%   <<"Content">> => string(),
%%   <<"CreatedTimestamp">> => non_neg_integer(),
%%   <<"LastEditedTimestamp">> => non_neg_integer(),
%%   <<"LastUpdatedTimestamp">> => non_neg_integer(),
%%   <<"MessageId">> => string(),
%%   <<"Metadata">> => string(),
%%   <<"Persistence">> => list(any()),
%%   <<"Redacted">> => boolean(),
%%   <<"Sender">> => identity(),
%%   <<"Type">> => list(any())
%% }
-type channel_message() :: #{binary() => any()}.

%% Example:
%% get_voice_connector_proxy_request() :: #{}
-type get_voice_connector_proxy_request() :: #{}.

%% Example:
%% delete_account_request() :: #{}
-type delete_account_request() :: #{}.

%% Example:
%% redact_conversation_message_request() :: #{}
-type redact_conversation_message_request() :: #{}.


%% Example:
%% messaging_session_endpoint() :: #{
%%   <<"Url">> => string()
%% }
-type messaging_session_endpoint() :: #{binary() => any()}.


%% Example:
%% update_channel_message_response() :: #{
%%   <<"ChannelArn">> => string(),
%%   <<"MessageId">> => string()
%% }
-type update_channel_message_response() :: #{binary() => any()}.


%% Example:
%% list_sip_media_applications_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"SipMediaApplications">> => list(sip_media_application()())
%% }
-type list_sip_media_applications_response() :: #{binary() => any()}.

%% Example:
%% delete_account_response() :: #{}
-type delete_account_response() :: #{}.


%% Example:
%% alexa_for_business_metadata() :: #{
%%   <<"AlexaForBusinessRoomArn">> => string(),
%%   <<"IsAlexaForBusinessEnabled">> => boolean()
%% }
-type alexa_for_business_metadata() :: #{binary() => any()}.

%% Example:
%% get_sip_media_application_logging_configuration_request() :: #{}
-type get_sip_media_application_logging_configuration_request() :: #{}.


%% Example:
%% create_account_request() :: #{
%%   <<"Name">> := string()
%% }
-type create_account_request() :: #{binary() => any()}.


%% Example:
%% invite_users_response() :: #{
%%   <<"Invites">> => list(invite()())
%% }
-type invite_users_response() :: #{binary() => any()}.

%% Example:
%% stop_meeting_transcription_response() :: #{}
-type stop_meeting_transcription_response() :: #{}.

%% Example:
%% get_room_request() :: #{}
-type get_room_request() :: #{}.


%% Example:
%% sip_media_application_logging_configuration() :: #{
%%   <<"EnableSipMediaApplicationMessageLogs">> => boolean()
%% }
-type sip_media_application_logging_configuration() :: #{binary() => any()}.


%% Example:
%% list_bots_response() :: #{
%%   <<"Bots">> => list(bot()()),
%%   <<"NextToken">> => string()
%% }
-type list_bots_response() :: #{binary() => any()}.


%% Example:
%% get_proxy_session_response() :: #{
%%   <<"ProxySession">> => proxy_session()
%% }
-type get_proxy_session_response() :: #{binary() => any()}.


%% Example:
%% untag_attendee_request() :: #{
%%   <<"TagKeys">> := list(string()())
%% }
-type untag_attendee_request() :: #{binary() => any()}.


%% Example:
%% delete_channel_message_request() :: #{
%%   <<"ChimeBearer">> => string()
%% }
-type delete_channel_message_request() :: #{binary() => any()}.


%% Example:
%% update_sip_rule_response() :: #{
%%   <<"SipRule">> => sip_rule()
%% }
-type update_sip_rule_response() :: #{binary() => any()}.

%% Example:
%% disassociate_phone_number_from_user_request() :: #{}
-type disassociate_phone_number_from_user_request() :: #{}.


%% Example:
%% put_app_instance_streaming_configurations_request() :: #{
%%   <<"AppInstanceStreamingConfigurations">> := list(app_instance_streaming_configuration()())
%% }
-type put_app_instance_streaming_configurations_request() :: #{binary() => any()}.


%% Example:
%% list_channel_moderators_request() :: #{
%%   <<"ChimeBearer">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_channel_moderators_request() :: #{binary() => any()}.


%% Example:
%% create_attendee_error() :: #{
%%   <<"ErrorCode">> => string(),
%%   <<"ErrorMessage">> => string(),
%%   <<"ExternalUserId">> => string()
%% }
-type create_attendee_error() :: #{binary() => any()}.


%% Example:
%% unprocessable_entity_exception() :: #{
%%   <<"Code">> => list(any()),
%%   <<"Message">> => string()
%% }
-type unprocessable_entity_exception() :: #{binary() => any()}.


%% Example:
%% create_voice_connector_group_request() :: #{
%%   <<"Name">> := string(),
%%   <<"VoiceConnectorItems">> => list(voice_connector_item()())
%% }
-type create_voice_connector_group_request() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"Code">> => list(any()),
%%   <<"Message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% batch_create_channel_membership_request() :: #{
%%   <<"ChimeBearer">> => string(),
%%   <<"MemberArns">> := list(string()()),
%%   <<"Type">> => list(any())
%% }
-type batch_create_channel_membership_request() :: #{binary() => any()}.


%% Example:
%% get_room_response() :: #{
%%   <<"Room">> => room()
%% }
-type get_room_response() :: #{binary() => any()}.


%% Example:
%% update_app_instance_user_request() :: #{
%%   <<"Metadata">> => string(),
%%   <<"Name">> := string()
%% }
-type update_app_instance_user_request() :: #{binary() => any()}.


%% Example:
%% describe_app_instance_admin_response() :: #{
%%   <<"AppInstanceAdmin">> => app_instance_admin()
%% }
-type describe_app_instance_admin_response() :: #{binary() => any()}.


%% Example:
%% create_sip_media_application_call_response() :: #{
%%   <<"SipMediaApplicationCall">> => sip_media_application_call()
%% }
-type create_sip_media_application_call_response() :: #{binary() => any()}.


%% Example:
%% create_media_capture_pipeline_request() :: #{
%%   <<"ChimeSdkMeetingConfiguration">> => chime_sdk_meeting_configuration(),
%%   <<"ClientRequestToken">> => string(),
%%   <<"SinkArn">> := string(),
%%   <<"SinkType">> := list(any()),
%%   <<"SourceArn">> := string(),
%%   <<"SourceType">> := list(any())
%% }
-type create_media_capture_pipeline_request() :: #{binary() => any()}.


%% Example:
%% create_app_instance_request() :: #{
%%   <<"ClientRequestToken">> := string(),
%%   <<"Metadata">> => string(),
%%   <<"Name">> := string(),
%%   <<"Tags">> => list(tag()())
%% }
-type create_app_instance_request() :: #{binary() => any()}.


%% Example:
%% phone_number_error() :: #{
%%   <<"ErrorCode">> => list(any()),
%%   <<"ErrorMessage">> => string(),
%%   <<"PhoneNumberId">> => string()
%% }
-type phone_number_error() :: #{binary() => any()}.

%% Example:
%% get_attendee_request() :: #{}
-type get_attendee_request() :: #{}.


%% Example:
%% update_phone_number_request_item() :: #{
%%   <<"CallingName">> => string(),
%%   <<"PhoneNumberId">> => string(),
%%   <<"ProductType">> => list(any())
%% }
-type update_phone_number_request_item() :: #{binary() => any()}.


%% Example:
%% describe_channel_membership_for_app_instance_user_request() :: #{
%%   <<"AppInstanceUserArn">> := string(),
%%   <<"ChimeBearer">> => string()
%% }
-type describe_channel_membership_for_app_instance_user_request() :: #{binary() => any()}.


%% Example:
%% delete_channel_membership_request() :: #{
%%   <<"ChimeBearer">> => string()
%% }
-type delete_channel_membership_request() :: #{binary() => any()}.


%% Example:
%% account_settings() :: #{
%%   <<"DisableRemoteControl">> => boolean(),
%%   <<"EnableDialOut">> => boolean()
%% }
-type account_settings() :: #{binary() => any()}.

%% Example:
%% list_attendee_tags_request() :: #{}
-type list_attendee_tags_request() :: #{}.


%% Example:
%% app_instance_admin_summary() :: #{
%%   <<"Admin">> => identity()
%% }
-type app_instance_admin_summary() :: #{binary() => any()}.


%% Example:
%% batch_suspend_user_request() :: #{
%%   <<"UserIdList">> := list(string()())
%% }
-type batch_suspend_user_request() :: #{binary() => any()}.


%% Example:
%% list_channel_messages_request() :: #{
%%   <<"ChimeBearer">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"NotAfter">> => non_neg_integer(),
%%   <<"NotBefore">> => non_neg_integer(),
%%   <<"SortOrder">> => list(any())
%% }
-type list_channel_messages_request() :: #{binary() => any()}.


%% Example:
%% associate_phone_numbers_with_voice_connector_group_response() :: #{
%%   <<"PhoneNumberErrors">> => list(phone_number_error()())
%% }
-type associate_phone_numbers_with_voice_connector_group_response() :: #{binary() => any()}.


%% Example:
%% update_bot_request() :: #{
%%   <<"Disabled">> => boolean()
%% }
-type update_bot_request() :: #{binary() => any()}.


%% Example:
%% send_channel_message_request() :: #{
%%   <<"ChimeBearer">> => string(),
%%   <<"ClientRequestToken">> := string(),
%%   <<"Content">> := string(),
%%   <<"Metadata">> => string(),
%%   <<"Persistence">> := list(any()),
%%   <<"Type">> := list(any())
%% }
-type send_channel_message_request() :: #{binary() => any()}.


%% Example:
%% update_user_request() :: #{
%%   <<"AlexaForBusinessMetadata">> => alexa_for_business_metadata(),
%%   <<"LicenseType">> => list(any()),
%%   <<"UserType">> => list(any())
%% }
-type update_user_request() :: #{binary() => any()}.


%% Example:
%% update_user_request_item() :: #{
%%   <<"AlexaForBusinessMetadata">> => alexa_for_business_metadata(),
%%   <<"LicenseType">> => list(any()),
%%   <<"UserId">> => string(),
%%   <<"UserType">> => list(any())
%% }
-type update_user_request_item() :: #{binary() => any()}.

%% Example:
%% get_events_configuration_request() :: #{}
-type get_events_configuration_request() :: #{}.


%% Example:
%% list_tags_for_resource_request() :: #{
%%   <<"ResourceARN">> := string()
%% }
-type list_tags_for_resource_request() :: #{binary() => any()}.


%% Example:
%% put_voice_connector_origination_request() :: #{
%%   <<"Origination">> := origination()
%% }
-type put_voice_connector_origination_request() :: #{binary() => any()}.


%% Example:
%% delete_voice_connector_termination_credentials_request() :: #{
%%   <<"Usernames">> := list(string()())
%% }
-type delete_voice_connector_termination_credentials_request() :: #{binary() => any()}.


%% Example:
%% list_channel_moderators_response() :: #{
%%   <<"ChannelArn">> => string(),
%%   <<"ChannelModerators">> => list(channel_moderator_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_channel_moderators_response() :: #{binary() => any()}.


%% Example:
%% create_room_membership_request() :: #{
%%   <<"MemberId">> := string(),
%%   <<"Role">> => list(any())
%% }
-type create_room_membership_request() :: #{binary() => any()}.


%% Example:
%% create_room_request() :: #{
%%   <<"ClientRequestToken">> => string(),
%%   <<"Name">> := string()
%% }
-type create_room_request() :: #{binary() => any()}.


%% Example:
%% list_voice_connectors_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"VoiceConnectors">> => list(voice_connector()())
%% }
-type list_voice_connectors_response() :: #{binary() => any()}.


%% Example:
%% get_channel_message_request() :: #{
%%   <<"ChimeBearer">> => string()
%% }
-type get_channel_message_request() :: #{binary() => any()}.


%% Example:
%% batch_unsuspend_user_request() :: #{
%%   <<"UserIdList">> := list(string()())
%% }
-type batch_unsuspend_user_request() :: #{binary() => any()}.


%% Example:
%% describe_channel_ban_response() :: #{
%%   <<"ChannelBan">> => channel_ban()
%% }
-type describe_channel_ban_response() :: #{binary() => any()}.

%% Example:
%% get_voice_connector_group_request() :: #{}
-type get_voice_connector_group_request() :: #{}.


%% Example:
%% voice_connector_group() :: #{
%%   <<"CreatedTimestamp">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"UpdatedTimestamp">> => non_neg_integer(),
%%   <<"VoiceConnectorGroupArn">> => string(),
%%   <<"VoiceConnectorGroupId">> => string(),
%%   <<"VoiceConnectorItems">> => list(voice_connector_item()())
%% }
-type voice_connector_group() :: #{binary() => any()}.


%% Example:
%% start_meeting_transcription_request() :: #{
%%   <<"TranscriptionConfiguration">> := transcription_configuration()
%% }
-type start_meeting_transcription_request() :: #{binary() => any()}.


%% Example:
%% channel_ban() :: #{
%%   <<"ChannelArn">> => string(),
%%   <<"CreatedBy">> => identity(),
%%   <<"CreatedTimestamp">> => non_neg_integer(),
%%   <<"Member">> => identity()
%% }
-type channel_ban() :: #{binary() => any()}.


%% Example:
%% list_rooms_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"MemberId">> => string(),
%%   <<"NextToken">> => string()
%% }
-type list_rooms_request() :: #{binary() => any()}.


%% Example:
%% get_voice_connector_origination_response() :: #{
%%   <<"Origination">> => origination()
%% }
-type get_voice_connector_origination_response() :: #{binary() => any()}.


%% Example:
%% user() :: #{
%%   <<"AccountId">> => string(),
%%   <<"AlexaForBusinessMetadata">> => alexa_for_business_metadata(),
%%   <<"DisplayName">> => string(),
%%   <<"InvitedOn">> => non_neg_integer(),
%%   <<"LicenseType">> => list(any()),
%%   <<"PersonalPIN">> => string(),
%%   <<"PrimaryEmail">> => string(),
%%   <<"PrimaryProvisionedNumber">> => string(),
%%   <<"RegisteredOn">> => non_neg_integer(),
%%   <<"UserId">> => string(),
%%   <<"UserInvitationStatus">> => list(any()),
%%   <<"UserRegistrationStatus">> => list(any()),
%%   <<"UserType">> => list(any())
%% }
-type user() :: #{binary() => any()}.


%% Example:
%% invite_users_request() :: #{
%%   <<"UserEmailList">> := list(string()()),
%%   <<"UserType">> => list(any())
%% }
-type invite_users_request() :: #{binary() => any()}.


%% Example:
%% batch_create_attendee_request() :: #{
%%   <<"Attendees">> := list(create_attendee_request_item()())
%% }
-type batch_create_attendee_request() :: #{binary() => any()}.


%% Example:
%% channel() :: #{
%%   <<"ChannelArn">> => string(),
%%   <<"CreatedBy">> => identity(),
%%   <<"CreatedTimestamp">> => non_neg_integer(),
%%   <<"LastMessageTimestamp">> => non_neg_integer(),
%%   <<"LastUpdatedTimestamp">> => non_neg_integer(),
%%   <<"Metadata">> => string(),
%%   <<"Mode">> => list(any()),
%%   <<"Name">> => string(),
%%   <<"Privacy">> => list(any())
%% }
-type channel() :: #{binary() => any()}.


%% Example:
%% get_phone_number_settings_response() :: #{
%%   <<"CallingName">> => string(),
%%   <<"CallingNameUpdatedTimestamp">> => non_neg_integer()
%% }
-type get_phone_number_settings_response() :: #{binary() => any()}.


%% Example:
%% membership_item() :: #{
%%   <<"MemberId">> => string(),
%%   <<"Role">> => list(any())
%% }
-type membership_item() :: #{binary() => any()}.


%% Example:
%% create_bot_request() :: #{
%%   <<"DisplayName">> := string(),
%%   <<"Domain">> => string()
%% }
-type create_bot_request() :: #{binary() => any()}.


%% Example:
%% batch_create_attendee_response() :: #{
%%   <<"Attendees">> => list(attendee()()),
%%   <<"Errors">> => list(create_attendee_error()())
%% }
-type batch_create_attendee_response() :: #{binary() => any()}.


%% Example:
%% create_app_instance_admin_response() :: #{
%%   <<"AppInstanceAdmin">> => identity(),
%%   <<"AppInstanceArn">> => string()
%% }
-type create_app_instance_admin_response() :: #{binary() => any()}.


%% Example:
%% regenerate_security_token_response() :: #{
%%   <<"Bot">> => bot()
%% }
-type regenerate_security_token_response() :: #{binary() => any()}.


%% Example:
%% put_app_instance_retention_settings_response() :: #{
%%   <<"AppInstanceRetentionSettings">> => app_instance_retention_settings(),
%%   <<"InitiateDeletionTimestamp">> => non_neg_integer()
%% }
-type put_app_instance_retention_settings_response() :: #{binary() => any()}.


%% Example:
%% list_channel_memberships_response() :: #{
%%   <<"ChannelArn">> => string(),
%%   <<"ChannelMemberships">> => list(channel_membership_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_channel_memberships_response() :: #{binary() => any()}.


%% Example:
%% create_sip_media_application_call_request() :: #{
%%   <<"FromPhoneNumber">> := string(),
%%   <<"SipHeaders">> => map(),
%%   <<"ToPhoneNumber">> := string()
%% }
-type create_sip_media_application_call_request() :: #{binary() => any()}.


%% Example:
%% update_sip_media_application_call_request() :: #{
%%   <<"Arguments">> := map()
%% }
-type update_sip_media_application_call_request() :: #{binary() => any()}.


%% Example:
%% list_attendee_tags_response() :: #{
%%   <<"Tags">> => list(tag()())
%% }
-type list_attendee_tags_response() :: #{binary() => any()}.


%% Example:
%% list_attendees_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_attendees_request() :: #{binary() => any()}.


%% Example:
%% app_instance_retention_settings() :: #{
%%   <<"ChannelRetentionSettings">> => channel_retention_settings()
%% }
-type app_instance_retention_settings() :: #{binary() => any()}.


%% Example:
%% member() :: #{
%%   <<"AccountId">> => string(),
%%   <<"Email">> => string(),
%%   <<"FullName">> => string(),
%%   <<"MemberId">> => string(),
%%   <<"MemberType">> => list(any())
%% }
-type member() :: #{binary() => any()}.


%% Example:
%% list_users_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"UserEmail">> => string(),
%%   <<"UserType">> => list(any())
%% }
-type list_users_request() :: #{binary() => any()}.

%% Example:
%% delete_voice_connector_termination_request() :: #{}
-type delete_voice_connector_termination_request() :: #{}.


%% Example:
%% get_voice_connector_group_response() :: #{
%%   <<"VoiceConnectorGroup">> => voice_connector_group()
%% }
-type get_voice_connector_group_response() :: #{binary() => any()}.


%% Example:
%% get_events_configuration_response() :: #{
%%   <<"EventsConfiguration">> => events_configuration()
%% }
-type get_events_configuration_response() :: #{binary() => any()}.


%% Example:
%% channel_moderator() :: #{
%%   <<"ChannelArn">> => string(),
%%   <<"CreatedBy">> => identity(),
%%   <<"CreatedTimestamp">> => non_neg_integer(),
%%   <<"Moderator">> => identity()
%% }
-type channel_moderator() :: #{binary() => any()}.


%% Example:
%% attendee() :: #{
%%   <<"AttendeeId">> => string(),
%%   <<"ExternalUserId">> => string(),
%%   <<"JoinToken">> => string()
%% }
-type attendee() :: #{binary() => any()}.


%% Example:
%% put_voice_connector_logging_configuration_response() :: #{
%%   <<"LoggingConfiguration">> => logging_configuration()
%% }
-type put_voice_connector_logging_configuration_response() :: #{binary() => any()}.


%% Example:
%% create_channel_ban_response() :: #{
%%   <<"ChannelArn">> => string(),
%%   <<"Member">> => identity()
%% }
-type create_channel_ban_response() :: #{binary() => any()}.


%% Example:
%% create_bot_response() :: #{
%%   <<"Bot">> => bot()
%% }
-type create_bot_response() :: #{binary() => any()}.


%% Example:
%% create_account_response() :: #{
%%   <<"Account">> => account()
%% }
-type create_account_response() :: #{binary() => any()}.


%% Example:
%% create_voice_connector_response() :: #{
%%   <<"VoiceConnector">> => voice_connector()
%% }
-type create_voice_connector_response() :: #{binary() => any()}.


%% Example:
%% batch_create_channel_membership_error() :: #{
%%   <<"ErrorCode">> => list(any()),
%%   <<"ErrorMessage">> => string(),
%%   <<"MemberArn">> => string()
%% }
-type batch_create_channel_membership_error() :: #{binary() => any()}.

%% Example:
%% get_proxy_session_request() :: #{}
-type get_proxy_session_request() :: #{}.


%% Example:
%% create_app_instance_admin_request() :: #{
%%   <<"AppInstanceAdminArn">> := string()
%% }
-type create_app_instance_admin_request() :: #{binary() => any()}.


%% Example:
%% sip_media_application_call() :: #{
%%   <<"TransactionId">> => string()
%% }
-type sip_media_application_call() :: #{binary() => any()}.


%% Example:
%% reset_personal_pin_response() :: #{
%%   <<"User">> => user()
%% }
-type reset_personal_pin_response() :: #{binary() => any()}.


%% Example:
%% bad_request_exception() :: #{
%%   <<"Code">> => list(any()),
%%   <<"Message">> => string()
%% }
-type bad_request_exception() :: #{binary() => any()}.

%% Example:
%% describe_app_instance_admin_request() :: #{}
-type describe_app_instance_admin_request() :: #{}.


%% Example:
%% list_phone_numbers_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"PhoneNumbers">> => list(phone_number()())
%% }
-type list_phone_numbers_response() :: #{binary() => any()}.


%% Example:
%% update_voice_connector_request() :: #{
%%   <<"Name">> := string(),
%%   <<"RequireEncryption">> := boolean()
%% }
-type update_voice_connector_request() :: #{binary() => any()}.


%% Example:
%% invite() :: #{
%%   <<"EmailAddress">> => string(),
%%   <<"EmailStatus">> => list(any()),
%%   <<"InviteId">> => string(),
%%   <<"Status">> => list(any())
%% }
-type invite() :: #{binary() => any()}.


%% Example:
%% user_settings() :: #{
%%   <<"Telephony">> => telephony_settings()
%% }
-type user_settings() :: #{binary() => any()}.


%% Example:
%% update_channel_read_marker_response() :: #{
%%   <<"ChannelArn">> => string()
%% }
-type update_channel_read_marker_response() :: #{binary() => any()}.


%% Example:
%% channel_moderator_summary() :: #{
%%   <<"Moderator">> => identity()
%% }
-type channel_moderator_summary() :: #{binary() => any()}.


%% Example:
%% batch_channel_memberships() :: #{
%%   <<"ChannelArn">> => string(),
%%   <<"InvitedBy">> => identity(),
%%   <<"Members">> => list(identity()()),
%%   <<"Type">> => list(any())
%% }
-type batch_channel_memberships() :: #{binary() => any()}.


%% Example:
%% credential() :: #{
%%   <<"Password">> => string(),
%%   <<"Username">> => string()
%% }
-type credential() :: #{binary() => any()}.


%% Example:
%% update_room_membership_response() :: #{
%%   <<"RoomMembership">> => room_membership()
%% }
-type update_room_membership_response() :: #{binary() => any()}.

%% Example:
%% logout_user_response() :: #{}
-type logout_user_response() :: #{}.

%% Example:
%% disassociate_phone_number_from_user_response() :: #{}
-type disassociate_phone_number_from_user_response() :: #{}.


%% Example:
%% associate_signin_delegate_groups_with_account_request() :: #{
%%   <<"SigninDelegateGroups">> := list(signin_delegate_group()())
%% }
-type associate_signin_delegate_groups_with_account_request() :: #{binary() => any()}.


%% Example:
%% update_channel_response() :: #{
%%   <<"ChannelArn">> => string()
%% }
-type update_channel_response() :: #{binary() => any()}.

%% Example:
%% delete_app_instance_request() :: #{}
-type delete_app_instance_request() :: #{}.


%% Example:
%% app_instance_user_summary() :: #{
%%   <<"AppInstanceUserArn">> => string(),
%%   <<"Metadata">> => string(),
%%   <<"Name">> => string()
%% }
-type app_instance_user_summary() :: #{binary() => any()}.


%% Example:
%% phone_number_capabilities() :: #{
%%   <<"InboundCall">> => boolean(),
%%   <<"InboundMMS">> => boolean(),
%%   <<"InboundSMS">> => boolean(),
%%   <<"OutboundCall">> => boolean(),
%%   <<"OutboundMMS">> => boolean(),
%%   <<"OutboundSMS">> => boolean()
%% }
-type phone_number_capabilities() :: #{binary() => any()}.


%% Example:
%% describe_channel_ban_request() :: #{
%%   <<"ChimeBearer">> => string()
%% }
-type describe_channel_ban_request() :: #{binary() => any()}.


%% Example:
%% list_meetings_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_meetings_request() :: #{binary() => any()}.

%% Example:
%% delete_voice_connector_streaming_configuration_request() :: #{}
-type delete_voice_connector_streaming_configuration_request() :: #{}.

%% Example:
%% delete_voice_connector_emergency_calling_configuration_request() :: #{}
-type delete_voice_connector_emergency_calling_configuration_request() :: #{}.

%% Example:
%% get_sip_media_application_request() :: #{}
-type get_sip_media_application_request() :: #{}.


%% Example:
%% describe_channel_membership_for_app_instance_user_response() :: #{
%%   <<"ChannelMembership">> => channel_membership_for_app_instance_user_summary()
%% }
-type describe_channel_membership_for_app_instance_user_response() :: #{binary() => any()}.


%% Example:
%% create_sip_media_application_response() :: #{
%%   <<"SipMediaApplication">> => sip_media_application()
%% }
-type create_sip_media_application_response() :: #{binary() => any()}.


%% Example:
%% put_voice_connector_proxy_response() :: #{
%%   <<"Proxy">> => proxy()
%% }
-type put_voice_connector_proxy_response() :: #{binary() => any()}.


%% Example:
%% bot() :: #{
%%   <<"BotEmail">> => string(),
%%   <<"BotId">> => string(),
%%   <<"BotType">> => list(any()),
%%   <<"CreatedTimestamp">> => non_neg_integer(),
%%   <<"Disabled">> => boolean(),
%%   <<"DisplayName">> => string(),
%%   <<"SecurityToken">> => string(),
%%   <<"UpdatedTimestamp">> => non_neg_integer(),
%%   <<"UserId">> => string()
%% }
-type bot() :: #{binary() => any()}.


%% Example:
%% address() :: #{
%%   <<"city">> => string(),
%%   <<"country">> => string(),
%%   <<"postDirectional">> => string(),
%%   <<"postalCode">> => string(),
%%   <<"postalCodePlus4">> => string(),
%%   <<"preDirectional">> => string(),
%%   <<"state">> => string(),
%%   <<"streetName">> => string(),
%%   <<"streetNumber">> => string(),
%%   <<"streetSuffix">> => string()
%% }
-type address() :: #{binary() => any()}.


%% Example:
%% sip_rule_target_application() :: #{
%%   <<"AwsRegion">> => string(),
%%   <<"Priority">> => integer(),
%%   <<"SipMediaApplicationId">> => string()
%% }
-type sip_rule_target_application() :: #{binary() => any()}.


%% Example:
%% get_voice_connector_emergency_calling_configuration_response() :: #{
%%   <<"EmergencyCallingConfiguration">> => emergency_calling_configuration()
%% }
-type get_voice_connector_emergency_calling_configuration_response() :: #{binary() => any()}.

%% Example:
%% delete_voice_connector_request() :: #{}
-type delete_voice_connector_request() :: #{}.


%% Example:
%% list_accounts_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"Name">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"UserEmail">> => string()
%% }
-type list_accounts_request() :: #{binary() => any()}.


%% Example:
%% update_phone_number_request() :: #{
%%   <<"CallingName">> => string(),
%%   <<"ProductType">> => list(any())
%% }
-type update_phone_number_request() :: #{binary() => any()}.

%% Example:
%% get_account_request() :: #{}
-type get_account_request() :: #{}.

%% Example:
%% redact_room_message_response() :: #{}
-type redact_room_message_response() :: #{}.


%% Example:
%% put_events_configuration_request() :: #{
%%   <<"LambdaFunctionArn">> => string(),
%%   <<"OutboundEventsHTTPSEndpoint">> => string()
%% }
-type put_events_configuration_request() :: #{binary() => any()}.


%% Example:
%% get_retention_settings_response() :: #{
%%   <<"InitiateDeletionTimestamp">> => non_neg_integer(),
%%   <<"RetentionSettings">> => retention_settings()
%% }
-type get_retention_settings_response() :: #{binary() => any()}.

%% Example:
%% get_voice_connector_origination_request() :: #{}
-type get_voice_connector_origination_request() :: #{}.


%% Example:
%% put_voice_connector_emergency_calling_configuration_response() :: #{
%%   <<"EmergencyCallingConfiguration">> => emergency_calling_configuration()
%% }
-type put_voice_connector_emergency_calling_configuration_response() :: #{binary() => any()}.


%% Example:
%% get_voice_connector_termination_response() :: #{
%%   <<"Termination">> => termination()
%% }
-type get_voice_connector_termination_response() :: #{binary() => any()}.


%% Example:
%% create_attendee_request() :: #{
%%   <<"ExternalUserId">> := string(),
%%   <<"Tags">> => list(tag()())
%% }
-type create_attendee_request() :: #{binary() => any()}.


%% Example:
%% update_room_request() :: #{
%%   <<"Name">> => string()
%% }
-type update_room_request() :: #{binary() => any()}.


%% Example:
%% list_channels_request() :: #{
%%   <<"AppInstanceArn">> := string(),
%%   <<"ChimeBearer">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"Privacy">> => list(any())
%% }
-type list_channels_request() :: #{binary() => any()}.

%% Example:
%% describe_app_instance_user_request() :: #{}
-type describe_app_instance_user_request() :: #{}.

%% Example:
%% get_retention_settings_request() :: #{}
-type get_retention_settings_request() :: #{}.


%% Example:
%% update_account_response() :: #{
%%   <<"Account">> => account()
%% }
-type update_account_response() :: #{binary() => any()}.


%% Example:
%% create_user_response() :: #{
%%   <<"User">> => user()
%% }
-type create_user_response() :: #{binary() => any()}.


%% Example:
%% update_bot_response() :: #{
%%   <<"Bot">> => bot()
%% }
-type update_bot_response() :: #{binary() => any()}.


%% Example:
%% batch_suspend_user_response() :: #{
%%   <<"UserErrors">> => list(user_error()())
%% }
-type batch_suspend_user_response() :: #{binary() => any()}.


%% Example:
%% batch_update_phone_number_request() :: #{
%%   <<"UpdatePhoneNumberRequestItems">> := list(update_phone_number_request_item()())
%% }
-type batch_update_phone_number_request() :: #{binary() => any()}.


%% Example:
%% artifacts_configuration() :: #{
%%   <<"Audio">> => audio_artifacts_configuration(),
%%   <<"Content">> => content_artifacts_configuration(),
%%   <<"Video">> => video_artifacts_configuration()
%% }
-type artifacts_configuration() :: #{binary() => any()}.


%% Example:
%% channel_message_summary() :: #{
%%   <<"Content">> => string(),
%%   <<"CreatedTimestamp">> => non_neg_integer(),
%%   <<"LastEditedTimestamp">> => non_neg_integer(),
%%   <<"LastUpdatedTimestamp">> => non_neg_integer(),
%%   <<"MessageId">> => string(),
%%   <<"Metadata">> => string(),
%%   <<"Redacted">> => boolean(),
%%   <<"Sender">> => identity(),
%%   <<"Type">> => list(any())
%% }
-type channel_message_summary() :: #{binary() => any()}.


%% Example:
%% media_placement() :: #{
%%   <<"AudioFallbackUrl">> => string(),
%%   <<"AudioHostUrl">> => string(),
%%   <<"EventIngestionUrl">> => string(),
%%   <<"ScreenDataUrl">> => string(),
%%   <<"ScreenSharingUrl">> => string(),
%%   <<"ScreenViewingUrl">> => string(),
%%   <<"SignalingUrl">> => string(),
%%   <<"TurnControlUrl">> => string()
%% }
-type media_placement() :: #{binary() => any()}.


%% Example:
%% sip_media_application() :: #{
%%   <<"AwsRegion">> => string(),
%%   <<"CreatedTimestamp">> => non_neg_integer(),
%%   <<"Endpoints">> => list(sip_media_application_endpoint()()),
%%   <<"Name">> => string(),
%%   <<"SipMediaApplicationId">> => string(),
%%   <<"UpdatedTimestamp">> => non_neg_integer()
%% }
-type sip_media_application() :: #{binary() => any()}.


%% Example:
%% search_available_phone_numbers_request() :: #{
%%   <<"AreaCode">> => string(),
%%   <<"City">> => string(),
%%   <<"Country">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"PhoneNumberType">> => list(any()),
%%   <<"State">> => string(),
%%   <<"TollFreePrefix">> => string()
%% }
-type search_available_phone_numbers_request() :: #{binary() => any()}.


%% Example:
%% put_events_configuration_response() :: #{
%%   <<"EventsConfiguration">> => events_configuration()
%% }
-type put_events_configuration_response() :: #{binary() => any()}.


%% Example:
%% create_meeting_dial_out_request() :: #{
%%   <<"FromPhoneNumber">> := string(),
%%   <<"JoinToken">> := string(),
%%   <<"ToPhoneNumber">> := string()
%% }
-type create_meeting_dial_out_request() :: #{binary() => any()}.

%% Example:
%% delete_attendee_request() :: #{}
-type delete_attendee_request() :: #{}.


%% Example:
%% create_room_response() :: #{
%%   <<"Room">> => room()
%% }
-type create_room_response() :: #{binary() => any()}.


%% Example:
%% create_app_instance_user_request() :: #{
%%   <<"AppInstanceArn">> := string(),
%%   <<"AppInstanceUserId">> := string(),
%%   <<"ClientRequestToken">> := string(),
%%   <<"Metadata">> => string(),
%%   <<"Name">> := string(),
%%   <<"Tags">> => list(tag()())
%% }
-type create_app_instance_user_request() :: #{binary() => any()}.


%% Example:
%% room_retention_settings() :: #{
%%   <<"RetentionDays">> => integer()
%% }
-type room_retention_settings() :: #{binary() => any()}.


%% Example:
%% list_supported_phone_number_countries_request() :: #{
%%   <<"ProductType">> := list(any())
%% }
-type list_supported_phone_number_countries_request() :: #{binary() => any()}.


%% Example:
%% app_instance() :: #{
%%   <<"AppInstanceArn">> => string(),
%%   <<"CreatedTimestamp">> => non_neg_integer(),
%%   <<"LastUpdatedTimestamp">> => non_neg_integer(),
%%   <<"Metadata">> => string(),
%%   <<"Name">> => string()
%% }
-type app_instance() :: #{binary() => any()}.


%% Example:
%% conversation_retention_settings() :: #{
%%   <<"RetentionDays">> => integer()
%% }
-type conversation_retention_settings() :: #{binary() => any()}.


%% Example:
%% emergency_calling_configuration() :: #{
%%   <<"DNIS">> => list(d_n_i_s_emergency_calling_configuration()())
%% }
-type emergency_calling_configuration() :: #{binary() => any()}.


%% Example:
%% create_user_request() :: #{
%%   <<"Email">> => string(),
%%   <<"UserType">> => list(any()),
%%   <<"Username">> => string()
%% }
-type create_user_request() :: #{binary() => any()}.


%% Example:
%% batch_update_user_request() :: #{
%%   <<"UpdateUserRequestItems">> := list(update_user_request_item()())
%% }
-type batch_update_user_request() :: #{binary() => any()}.

%% Example:
%% regenerate_security_token_request() :: #{}
-type regenerate_security_token_request() :: #{}.

%% Example:
%% disassociate_signin_delegate_groups_from_account_response() :: #{}
-type disassociate_signin_delegate_groups_from_account_response() :: #{}.


%% Example:
%% create_channel_membership_response() :: #{
%%   <<"ChannelArn">> => string(),
%%   <<"Member">> => identity()
%% }
-type create_channel_membership_response() :: #{binary() => any()}.


%% Example:
%% create_app_instance_user_response() :: #{
%%   <<"AppInstanceUserArn">> => string()
%% }
-type create_app_instance_user_response() :: #{binary() => any()}.

-type associate_phone_number_with_user_errors() ::
    bad_request_exception() | 
    access_denied_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type associate_phone_numbers_with_voice_connector_errors() ::
    bad_request_exception() | 
    access_denied_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type associate_phone_numbers_with_voice_connector_group_errors() ::
    bad_request_exception() | 
    access_denied_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type associate_signin_delegate_groups_with_account_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type batch_create_attendee_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    resource_limit_exceeded_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type batch_create_channel_membership_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type batch_create_room_membership_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type batch_delete_phone_number_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type batch_suspend_user_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type batch_unsuspend_user_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type batch_update_phone_number_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type batch_update_user_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type create_account_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type create_app_instance_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    resource_limit_exceeded_exception() | 
    conflict_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type create_app_instance_admin_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    resource_limit_exceeded_exception() | 
    conflict_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type create_app_instance_user_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    resource_limit_exceeded_exception() | 
    conflict_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type create_attendee_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    resource_limit_exceeded_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type create_bot_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    resource_limit_exceeded_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type create_channel_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    resource_limit_exceeded_exception() | 
    conflict_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type create_channel_ban_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    resource_limit_exceeded_exception() | 
    conflict_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type create_channel_membership_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    resource_limit_exceeded_exception() | 
    conflict_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type create_channel_moderator_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    resource_limit_exceeded_exception() | 
    conflict_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type create_media_capture_pipeline_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    resource_limit_exceeded_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type create_meeting_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    resource_limit_exceeded_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type create_meeting_dial_out_errors() ::
    bad_request_exception() | 
    access_denied_exception() | 
    service_unavailable_exception() | 
    resource_limit_exceeded_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type create_meeting_with_attendees_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    resource_limit_exceeded_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type create_phone_number_order_errors() ::
    bad_request_exception() | 
    access_denied_exception() | 
    service_unavailable_exception() | 
    resource_limit_exceeded_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type create_proxy_session_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type create_room_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    resource_limit_exceeded_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type create_room_membership_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    resource_limit_exceeded_exception() | 
    conflict_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type create_sip_media_application_errors() ::
    bad_request_exception() | 
    access_denied_exception() | 
    service_unavailable_exception() | 
    resource_limit_exceeded_exception() | 
    conflict_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type create_sip_media_application_call_errors() ::
    bad_request_exception() | 
    access_denied_exception() | 
    service_unavailable_exception() | 
    resource_limit_exceeded_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type create_sip_rule_errors() ::
    bad_request_exception() | 
    access_denied_exception() | 
    service_unavailable_exception() | 
    resource_limit_exceeded_exception() | 
    conflict_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type create_user_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type create_voice_connector_errors() ::
    bad_request_exception() | 
    access_denied_exception() | 
    service_unavailable_exception() | 
    resource_limit_exceeded_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type create_voice_connector_group_errors() ::
    bad_request_exception() | 
    access_denied_exception() | 
    service_unavailable_exception() | 
    resource_limit_exceeded_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type delete_account_errors() ::
    bad_request_exception() | 
    unprocessable_entity_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type delete_app_instance_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type delete_app_instance_admin_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    conflict_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type delete_app_instance_streaming_configurations_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type delete_app_instance_user_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type delete_attendee_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type delete_channel_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type delete_channel_ban_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type delete_channel_membership_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    conflict_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type delete_channel_message_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type delete_channel_moderator_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type delete_events_configuration_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    resource_limit_exceeded_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type delete_media_capture_pipeline_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type delete_meeting_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type delete_phone_number_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type delete_proxy_session_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type delete_room_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type delete_room_membership_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type delete_sip_media_application_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type delete_sip_rule_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type delete_voice_connector_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type delete_voice_connector_emergency_calling_configuration_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type delete_voice_connector_group_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type delete_voice_connector_origination_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type delete_voice_connector_proxy_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type delete_voice_connector_streaming_configuration_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type delete_voice_connector_termination_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type delete_voice_connector_termination_credentials_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type describe_app_instance_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type describe_app_instance_admin_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type describe_app_instance_user_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type describe_channel_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type describe_channel_ban_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type describe_channel_membership_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type describe_channel_membership_for_app_instance_user_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type describe_channel_moderated_by_app_instance_user_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type describe_channel_moderator_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type disassociate_phone_number_from_user_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type disassociate_phone_numbers_from_voice_connector_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type disassociate_phone_numbers_from_voice_connector_group_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type disassociate_signin_delegate_groups_from_account_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type get_account_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type get_account_settings_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type get_app_instance_retention_settings_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type get_app_instance_streaming_configurations_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type get_attendee_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type get_bot_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type get_channel_message_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type get_events_configuration_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    resource_limit_exceeded_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type get_global_settings_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type get_media_capture_pipeline_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type get_meeting_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type get_messaging_session_endpoint_errors() ::
    service_unavailable_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type get_phone_number_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type get_phone_number_order_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type get_phone_number_settings_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type get_proxy_session_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type get_retention_settings_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type get_room_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type get_sip_media_application_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type get_sip_media_application_logging_configuration_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type get_sip_rule_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type get_user_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type get_user_settings_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type get_voice_connector_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type get_voice_connector_emergency_calling_configuration_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type get_voice_connector_group_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type get_voice_connector_logging_configuration_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type get_voice_connector_origination_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type get_voice_connector_proxy_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type get_voice_connector_streaming_configuration_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type get_voice_connector_termination_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type get_voice_connector_termination_health_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type invite_users_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type list_accounts_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type list_app_instance_admins_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type list_app_instance_users_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type list_app_instances_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type list_attendee_tags_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type list_attendees_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type list_bots_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type list_channel_bans_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type list_channel_memberships_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type list_channel_memberships_for_app_instance_user_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type list_channel_messages_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type list_channel_moderators_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type list_channels_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type list_channels_moderated_by_app_instance_user_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type list_media_capture_pipelines_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type list_meeting_tags_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type list_meetings_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type list_phone_number_orders_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type list_phone_numbers_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type list_proxy_sessions_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type list_room_memberships_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type list_rooms_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type list_sip_media_applications_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type list_sip_rules_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type list_supported_phone_number_countries_errors() ::
    bad_request_exception() | 
    access_denied_exception() | 
    service_unavailable_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type list_tags_for_resource_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type list_users_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type list_voice_connector_groups_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type list_voice_connector_termination_credentials_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type list_voice_connectors_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type logout_user_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type put_app_instance_retention_settings_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type put_app_instance_streaming_configurations_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type put_events_configuration_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    resource_limit_exceeded_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type put_retention_settings_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type put_sip_media_application_logging_configuration_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type put_voice_connector_emergency_calling_configuration_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type put_voice_connector_logging_configuration_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type put_voice_connector_origination_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type put_voice_connector_proxy_errors() ::
    bad_request_exception() | 
    access_denied_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type put_voice_connector_streaming_configuration_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type put_voice_connector_termination_errors() ::
    bad_request_exception() | 
    access_denied_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type put_voice_connector_termination_credentials_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type redact_channel_message_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type redact_conversation_message_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type redact_room_message_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type regenerate_security_token_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type reset_personal_pin_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type restore_phone_number_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    resource_limit_exceeded_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type search_available_phone_numbers_errors() ::
    bad_request_exception() | 
    access_denied_exception() | 
    service_unavailable_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type send_channel_message_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    conflict_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type start_meeting_transcription_errors() ::
    bad_request_exception() | 
    unprocessable_entity_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    resource_limit_exceeded_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type stop_meeting_transcription_errors() ::
    bad_request_exception() | 
    unprocessable_entity_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type tag_attendee_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    resource_limit_exceeded_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type tag_meeting_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    resource_limit_exceeded_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type tag_resource_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type untag_attendee_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type untag_meeting_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type untag_resource_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type update_account_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type update_account_settings_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type update_app_instance_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    conflict_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type update_app_instance_user_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    conflict_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type update_bot_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type update_channel_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    conflict_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type update_channel_message_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    conflict_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type update_channel_read_marker_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    conflict_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type update_global_settings_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type update_phone_number_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type update_phone_number_settings_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type update_proxy_session_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type update_room_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type update_room_membership_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type update_sip_media_application_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type update_sip_media_application_call_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    resource_limit_exceeded_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type update_sip_rule_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    resource_limit_exceeded_exception() | 
    conflict_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type update_user_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type update_user_settings_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type update_voice_connector_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type update_voice_connector_group_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type validate_e911_address_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Associates a phone number with the specified Amazon Chime user.
-spec associate_phone_number_with_user(aws_client:aws_client(), binary() | list(), binary() | list(), associate_phone_number_with_user_request()) ->
    {ok, associate_phone_number_with_user_response(), tuple()} |
    {error, any()} |
    {error, associate_phone_number_with_user_errors(), tuple()}.
associate_phone_number_with_user(Client, AccountId, UserId, Input) ->
    associate_phone_number_with_user(Client, AccountId, UserId, Input, []).

-spec associate_phone_number_with_user(aws_client:aws_client(), binary() | list(), binary() | list(), associate_phone_number_with_user_request(), proplists:proplist()) ->
    {ok, associate_phone_number_with_user_response(), tuple()} |
    {error, any()} |
    {error, associate_phone_number_with_user_errors(), tuple()}.
associate_phone_number_with_user(Client, AccountId, UserId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AccountId), "/users/", aws_util:encode_uri(UserId), "?operation=associate-phone-number"],
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

%% @doc Associates phone numbers with the specified Amazon Chime Voice
%% Connector.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, AssociatePhoneNumbersWithVoiceConnector:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_AssociatePhoneNumbersWithVoiceConnector.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec associate_phone_numbers_with_voice_connector(aws_client:aws_client(), binary() | list(), associate_phone_numbers_with_voice_connector_request()) ->
    {ok, associate_phone_numbers_with_voice_connector_response(), tuple()} |
    {error, any()} |
    {error, associate_phone_numbers_with_voice_connector_errors(), tuple()}.
associate_phone_numbers_with_voice_connector(Client, VoiceConnectorId, Input) ->
    associate_phone_numbers_with_voice_connector(Client, VoiceConnectorId, Input, []).

-spec associate_phone_numbers_with_voice_connector(aws_client:aws_client(), binary() | list(), associate_phone_numbers_with_voice_connector_request(), proplists:proplist()) ->
    {ok, associate_phone_numbers_with_voice_connector_response(), tuple()} |
    {error, any()} |
    {error, associate_phone_numbers_with_voice_connector_errors(), tuple()}.
associate_phone_numbers_with_voice_connector(Client, VoiceConnectorId, Input0, Options0) ->
    Method = post,
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "?operation=associate-phone-numbers"],
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

%% @doc Associates phone numbers with the specified Amazon Chime Voice
%% Connector group.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, AssociatePhoneNumbersWithVoiceConnectorGroup:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_AssociatePhoneNumbersWithVoiceConnectorGroup.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec associate_phone_numbers_with_voice_connector_group(aws_client:aws_client(), binary() | list(), associate_phone_numbers_with_voice_connector_group_request()) ->
    {ok, associate_phone_numbers_with_voice_connector_group_response(), tuple()} |
    {error, any()} |
    {error, associate_phone_numbers_with_voice_connector_group_errors(), tuple()}.
associate_phone_numbers_with_voice_connector_group(Client, VoiceConnectorGroupId, Input) ->
    associate_phone_numbers_with_voice_connector_group(Client, VoiceConnectorGroupId, Input, []).

-spec associate_phone_numbers_with_voice_connector_group(aws_client:aws_client(), binary() | list(), associate_phone_numbers_with_voice_connector_group_request(), proplists:proplist()) ->
    {ok, associate_phone_numbers_with_voice_connector_group_response(), tuple()} |
    {error, any()} |
    {error, associate_phone_numbers_with_voice_connector_group_errors(), tuple()}.
associate_phone_numbers_with_voice_connector_group(Client, VoiceConnectorGroupId, Input0, Options0) ->
    Method = post,
    Path = ["/voice-connector-groups/", aws_util:encode_uri(VoiceConnectorGroupId), "?operation=associate-phone-numbers"],
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

%% @doc Associates the specified sign-in delegate groups with the specified
%% Amazon Chime account.
-spec associate_signin_delegate_groups_with_account(aws_client:aws_client(), binary() | list(), associate_signin_delegate_groups_with_account_request()) ->
    {ok, associate_signin_delegate_groups_with_account_response(), tuple()} |
    {error, any()} |
    {error, associate_signin_delegate_groups_with_account_errors(), tuple()}.
associate_signin_delegate_groups_with_account(Client, AccountId, Input) ->
    associate_signin_delegate_groups_with_account(Client, AccountId, Input, []).

-spec associate_signin_delegate_groups_with_account(aws_client:aws_client(), binary() | list(), associate_signin_delegate_groups_with_account_request(), proplists:proplist()) ->
    {ok, associate_signin_delegate_groups_with_account_response(), tuple()} |
    {error, any()} |
    {error, associate_signin_delegate_groups_with_account_errors(), tuple()}.
associate_signin_delegate_groups_with_account(Client, AccountId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AccountId), "?operation=associate-signin-delegate-groups"],
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

%% @doc Creates up to 100 new attendees for an active Amazon Chime SDK
%% meeting.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, BatchCreateAttendee:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_meeting-chime_BatchCreateAttendee.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
%%
%% For more information about the Amazon Chime SDK, see
%% Using the Amazon Chime SDK:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/meetings-sdk.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec batch_create_attendee(aws_client:aws_client(), binary() | list(), batch_create_attendee_request()) ->
    {ok, batch_create_attendee_response(), tuple()} |
    {error, any()} |
    {error, batch_create_attendee_errors(), tuple()}.
batch_create_attendee(Client, MeetingId, Input) ->
    batch_create_attendee(Client, MeetingId, Input, []).

-spec batch_create_attendee(aws_client:aws_client(), binary() | list(), batch_create_attendee_request(), proplists:proplist()) ->
    {ok, batch_create_attendee_response(), tuple()} |
    {error, any()} |
    {error, batch_create_attendee_errors(), tuple()}.
batch_create_attendee(Client, MeetingId, Input0, Options0) ->
    Method = post,
    Path = ["/meetings/", aws_util:encode_uri(MeetingId), "/attendees?operation=batch-create"],
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

%% @doc Adds a specified number of users to a channel.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, BatchCreateChannelMembership:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_messaging-chime_BatchCreateChannelMembership.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec batch_create_channel_membership(aws_client:aws_client(), binary() | list(), batch_create_channel_membership_request()) ->
    {ok, batch_create_channel_membership_response(), tuple()} |
    {error, any()} |
    {error, batch_create_channel_membership_errors(), tuple()}.
batch_create_channel_membership(Client, ChannelArn, Input) ->
    batch_create_channel_membership(Client, ChannelArn, Input, []).

-spec batch_create_channel_membership(aws_client:aws_client(), binary() | list(), batch_create_channel_membership_request(), proplists:proplist()) ->
    {ok, batch_create_channel_membership_response(), tuple()} |
    {error, any()} |
    {error, batch_create_channel_membership_errors(), tuple()}.
batch_create_channel_membership(Client, ChannelArn, Input0, Options0) ->
    Method = post,
    Path = ["/channels/", aws_util:encode_uri(ChannelArn), "/memberships?operation=batch-create"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

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
%% member is a
%% chat room administrator or a general chat room member.
-spec batch_create_room_membership(aws_client:aws_client(), binary() | list(), binary() | list(), batch_create_room_membership_request()) ->
    {ok, batch_create_room_membership_response(), tuple()} |
    {error, any()} |
    {error, batch_create_room_membership_errors(), tuple()}.
batch_create_room_membership(Client, AccountId, RoomId, Input) ->
    batch_create_room_membership(Client, AccountId, RoomId, Input, []).

-spec batch_create_room_membership(aws_client:aws_client(), binary() | list(), binary() | list(), batch_create_room_membership_request(), proplists:proplist()) ->
    {ok, batch_create_room_membership_response(), tuple()} |
    {error, any()} |
    {error, batch_create_room_membership_errors(), tuple()}.
batch_create_room_membership(Client, AccountId, RoomId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AccountId), "/rooms/", aws_util:encode_uri(RoomId), "/memberships?operation=batch-create"],
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

%% @doc
%% Moves phone numbers into the
%% Deletion queue.
%%
%% Phone numbers must be disassociated from any users or Amazon Chime Voice
%% Connectors before they can be deleted.
%%
%% Phone numbers remain in the
%% Deletion queue for 7 days before they are deleted permanently.
-spec batch_delete_phone_number(aws_client:aws_client(), batch_delete_phone_number_request()) ->
    {ok, batch_delete_phone_number_response(), tuple()} |
    {error, any()} |
    {error, batch_delete_phone_number_errors(), tuple()}.
batch_delete_phone_number(Client, Input) ->
    batch_delete_phone_number(Client, Input, []).

-spec batch_delete_phone_number(aws_client:aws_client(), batch_delete_phone_number_request(), proplists:proplist()) ->
    {ok, batch_delete_phone_number_response(), tuple()} |
    {error, any()} |
    {error, batch_delete_phone_number_errors(), tuple()}.
batch_delete_phone_number(Client, Input0, Options0) ->
    Method = post,
    Path = ["/phone-numbers?operation=batch-delete"],
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

%% @doc Suspends up to 50 users from a `Team' or `EnterpriseLWA'
%% Amazon Chime
%% account.
%%
%% For more information about different account types, see Managing Your
%% Amazon Chime Accounts:
%% https://docs.aws.amazon.com/chime/latest/ag/manage-chime-account.html in
%% the Amazon Chime Administration
%% Guide.
%%
%% Users suspended from a `Team' account are disassociated from the
%% account,but they
%% can continue to use Amazon Chime as free users. To remove the suspension
%% from suspended
%% `Team' account users, invite them to the `Team' account again.
%% You can use the `InviteUsers' action to do so.
%%
%% Users suspended from an `EnterpriseLWA' account are immediately signed
%% out of
%% Amazon Chime and can no longer sign in. To remove the suspension from
%% suspended `EnterpriseLWA' account users, use the
%% `BatchUnsuspendUser' action.
%%
%% To sign out users without suspending them, use the
%% `LogoutUser' action.
-spec batch_suspend_user(aws_client:aws_client(), binary() | list(), batch_suspend_user_request()) ->
    {ok, batch_suspend_user_response(), tuple()} |
    {error, any()} |
    {error, batch_suspend_user_errors(), tuple()}.
batch_suspend_user(Client, AccountId, Input) ->
    batch_suspend_user(Client, AccountId, Input, []).

-spec batch_suspend_user(aws_client:aws_client(), binary() | list(), batch_suspend_user_request(), proplists:proplist()) ->
    {ok, batch_suspend_user_response(), tuple()} |
    {error, any()} |
    {error, batch_suspend_user_errors(), tuple()}.
batch_suspend_user(Client, AccountId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AccountId), "/users?operation=suspend"],
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

%% @doc Removes the suspension from up to 50 previously suspended users for
%% the specified Amazon
%% Chime `EnterpriseLWA' account.
%%
%% Only users on `EnterpriseLWA'
%% accounts can be unsuspended using this action. For more information about
%% different account types, see
%%
%% Managing Your Amazon Chime Accounts
%% : https://docs.aws.amazon.com/chime/latest/ag/manage-chime-account.html in
%% the account types, in the Amazon Chime Administration Guide.
%%
%% Previously suspended users who are unsuspended using this action are
%% returned to
%% `Registered'
%% status. Users who are not previously suspended are ignored.
-spec batch_unsuspend_user(aws_client:aws_client(), binary() | list(), batch_unsuspend_user_request()) ->
    {ok, batch_unsuspend_user_response(), tuple()} |
    {error, any()} |
    {error, batch_unsuspend_user_errors(), tuple()}.
batch_unsuspend_user(Client, AccountId, Input) ->
    batch_unsuspend_user(Client, AccountId, Input, []).

-spec batch_unsuspend_user(aws_client:aws_client(), binary() | list(), batch_unsuspend_user_request(), proplists:proplist()) ->
    {ok, batch_unsuspend_user_response(), tuple()} |
    {error, any()} |
    {error, batch_unsuspend_user_errors(), tuple()}.
batch_unsuspend_user(Client, AccountId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AccountId), "/users?operation=unsuspend"],
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

%% @doc Updates phone number product types or calling names.
%%
%% You can update one attribute at a time for each
%% `UpdatePhoneNumberRequestItem'. For example, you can update the
%% product type or the calling name.
%%
%% For toll-free numbers, you cannot use the Amazon Chime Business Calling
%% product type. For numbers outside the U.S., you must use the Amazon Chime
%% SIP Media Application Dial-In product type.
%%
%% Updates to outbound calling names can take up to 72 hours to complete.
%% Pending updates to outbound calling names must be complete before you can
%% request another update.
-spec batch_update_phone_number(aws_client:aws_client(), batch_update_phone_number_request()) ->
    {ok, batch_update_phone_number_response(), tuple()} |
    {error, any()} |
    {error, batch_update_phone_number_errors(), tuple()}.
batch_update_phone_number(Client, Input) ->
    batch_update_phone_number(Client, Input, []).

-spec batch_update_phone_number(aws_client:aws_client(), batch_update_phone_number_request(), proplists:proplist()) ->
    {ok, batch_update_phone_number_response(), tuple()} |
    {error, any()} |
    {error, batch_update_phone_number_errors(), tuple()}.
batch_update_phone_number(Client, Input0, Options0) ->
    Method = post,
    Path = ["/phone-numbers?operation=batch-update"],
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

%% @doc Updates user details within the `UpdateUserRequestItem' object
%% for up to 20 users for the specified Amazon Chime account.
%%
%% Currently, only `LicenseType' updates are supported for this action.
-spec batch_update_user(aws_client:aws_client(), binary() | list(), batch_update_user_request()) ->
    {ok, batch_update_user_response(), tuple()} |
    {error, any()} |
    {error, batch_update_user_errors(), tuple()}.
batch_update_user(Client, AccountId, Input) ->
    batch_update_user(Client, AccountId, Input, []).

-spec batch_update_user(aws_client:aws_client(), binary() | list(), batch_update_user_request(), proplists:proplist()) ->
    {ok, batch_update_user_response(), tuple()} |
    {error, any()} |
    {error, batch_update_user_errors(), tuple()}.
batch_update_user(Client, AccountId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AccountId), "/users"],
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

%% @doc Creates an Amazon Chime account under the administrator's AWS
%% account.
%%
%% Only `Team'
%% account types are currently supported for this action. For more
%% information about different account types, see
%% Managing Your Amazon Chime Accounts:
%% https://docs.aws.amazon.com/chime/latest/ag/manage-chime-account.html in
%% the Amazon Chime
%% Administration Guide.
-spec create_account(aws_client:aws_client(), create_account_request()) ->
    {ok, create_account_response(), tuple()} |
    {error, any()} |
    {error, create_account_errors(), tuple()}.
create_account(Client, Input) ->
    create_account(Client, Input, []).

-spec create_account(aws_client:aws_client(), create_account_request(), proplists:proplist()) ->
    {ok, create_account_response(), tuple()} |
    {error, any()} |
    {error, create_account_errors(), tuple()}.
create_account(Client, Input0, Options0) ->
    Method = post,
    Path = ["/accounts"],
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

%% @doc Creates an Amazon Chime SDK messaging `AppInstance' under an AWS
%% account.
%%
%% Only SDK messaging customers use this API.
%% `CreateAppInstance' supports idempotency behavior as described in the
%% AWS API Standard.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, CreateAppInstance:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_identity-chime_CreateAppInstance.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec create_app_instance(aws_client:aws_client(), create_app_instance_request()) ->
    {ok, create_app_instance_response(), tuple()} |
    {error, any()} |
    {error, create_app_instance_errors(), tuple()}.
create_app_instance(Client, Input) ->
    create_app_instance(Client, Input, []).

-spec create_app_instance(aws_client:aws_client(), create_app_instance_request(), proplists:proplist()) ->
    {ok, create_app_instance_response(), tuple()} |
    {error, any()} |
    {error, create_app_instance_errors(), tuple()}.
create_app_instance(Client, Input0, Options0) ->
    Method = post,
    Path = ["/app-instances"],
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

%% @doc Promotes an `AppInstanceUser' to an `AppInstanceAdmin'.
%%
%% The promoted user can perform the following actions.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, CreateAppInstanceAdmin:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_identity-chime_CreateAppInstanceAdmin.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
%%
%% `ChannelModerator' actions across all channels in the
%% `AppInstance'.
%%
%% `DeleteChannelMessage' actions.
%%
%% Only an `AppInstanceUser' can be promoted to an `AppInstanceAdmin'
%% role.
-spec create_app_instance_admin(aws_client:aws_client(), binary() | list(), create_app_instance_admin_request()) ->
    {ok, create_app_instance_admin_response(), tuple()} |
    {error, any()} |
    {error, create_app_instance_admin_errors(), tuple()}.
create_app_instance_admin(Client, AppInstanceArn, Input) ->
    create_app_instance_admin(Client, AppInstanceArn, Input, []).

-spec create_app_instance_admin(aws_client:aws_client(), binary() | list(), create_app_instance_admin_request(), proplists:proplist()) ->
    {ok, create_app_instance_admin_response(), tuple()} |
    {error, any()} |
    {error, create_app_instance_admin_errors(), tuple()}.
create_app_instance_admin(Client, AppInstanceArn, Input0, Options0) ->
    Method = post,
    Path = ["/app-instances/", aws_util:encode_uri(AppInstanceArn), "/admins"],
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

%% @doc Creates a user under an Amazon Chime `AppInstance'.
%%
%% The request consists of a unique `appInstanceUserId' and
%% `Name' for that user.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, CreateAppInstanceUser:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_identity-chime_CreateAppInstanceUser.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec create_app_instance_user(aws_client:aws_client(), create_app_instance_user_request()) ->
    {ok, create_app_instance_user_response(), tuple()} |
    {error, any()} |
    {error, create_app_instance_user_errors(), tuple()}.
create_app_instance_user(Client, Input) ->
    create_app_instance_user(Client, Input, []).

-spec create_app_instance_user(aws_client:aws_client(), create_app_instance_user_request(), proplists:proplist()) ->
    {ok, create_app_instance_user_response(), tuple()} |
    {error, any()} |
    {error, create_app_instance_user_errors(), tuple()}.
create_app_instance_user(Client, Input0, Options0) ->
    Method = post,
    Path = ["/app-instance-users"],
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

%% @doc
%% Creates a new attendee for an active Amazon Chime SDK meeting.
%%
%% For more information about the Amazon Chime SDK, see
%% Using the Amazon Chime SDK:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/meetings-sdk.html
%% in the
%% Amazon Chime SDK Developer Guide.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, CreateAttendee:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_meeting-chime_CreateAttendee.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec create_attendee(aws_client:aws_client(), binary() | list(), create_attendee_request()) ->
    {ok, create_attendee_response(), tuple()} |
    {error, any()} |
    {error, create_attendee_errors(), tuple()}.
create_attendee(Client, MeetingId, Input) ->
    create_attendee(Client, MeetingId, Input, []).

-spec create_attendee(aws_client:aws_client(), binary() | list(), create_attendee_request(), proplists:proplist()) ->
    {ok, create_attendee_response(), tuple()} |
    {error, any()} |
    {error, create_attendee_errors(), tuple()}.
create_attendee(Client, MeetingId, Input0, Options0) ->
    Method = post,
    Path = ["/meetings/", aws_util:encode_uri(MeetingId), "/attendees"],
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

%% @doc Creates a bot for an Amazon Chime Enterprise account.
-spec create_bot(aws_client:aws_client(), binary() | list(), create_bot_request()) ->
    {ok, create_bot_response(), tuple()} |
    {error, any()} |
    {error, create_bot_errors(), tuple()}.
create_bot(Client, AccountId, Input) ->
    create_bot(Client, AccountId, Input, []).

-spec create_bot(aws_client:aws_client(), binary() | list(), create_bot_request(), proplists:proplist()) ->
    {ok, create_bot_response(), tuple()} |
    {error, any()} |
    {error, create_bot_errors(), tuple()}.
create_bot(Client, AccountId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AccountId), "/bots"],
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

%% @doc Creates a channel to which you can add users and send messages.
%%
%% Restriction: You can't change a channel's
%% privacy.
%%
%% The `x-amz-chime-bearer' request header is mandatory. Use the
%% `AppInstanceUserArn' of the user that makes the API call as the value
%% in
%% the header.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, CreateChannel:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_messaging-chime_CreateChannel.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
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
    Path = ["/channels"],
    SuccessStatusCode = 201,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

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
%% Moderators can't add banned members to a
%% channel. To undo a ban, you first have to `DeleteChannelBan', and then
%% `CreateChannelMembership'. Bans are cleaned up when you delete users
%% or
%% channels.
%%
%% If you ban a user who is already part of a channel, that user is
%% automatically kicked
%% from the channel.
%%
%% The `x-amz-chime-bearer' request header is mandatory. Use the
%% `AppInstanceUserArn' of the user that makes the API call as the value
%% in
%% the header.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, CreateChannelBan:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_messaging-chime_CreateChannelBan.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec create_channel_ban(aws_client:aws_client(), binary() | list(), create_channel_ban_request()) ->
    {ok, create_channel_ban_response(), tuple()} |
    {error, any()} |
    {error, create_channel_ban_errors(), tuple()}.
create_channel_ban(Client, ChannelArn, Input) ->
    create_channel_ban(Client, ChannelArn, Input, []).

-spec create_channel_ban(aws_client:aws_client(), binary() | list(), create_channel_ban_request(), proplists:proplist()) ->
    {ok, create_channel_ban_response(), tuple()} |
    {error, any()} |
    {error, create_channel_ban_errors(), tuple()}.
create_channel_ban(Client, ChannelArn, Input0, Options0) ->
    Method = post,
    Path = ["/channels/", aws_util:encode_uri(ChannelArn), "/bans"],
    SuccessStatusCode = 201,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

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
%% The `InvitedBy' response field is derived from the
%% request header. A channel member can:
%%
%% List messages
%%
%% Send messages
%%
%% Receive messages
%%
%% Edit their own messages
%%
%% Leave the channel
%%
%% Privacy settings impact this action as follows:
%%
%% Public Channels: You do not need to be a member to list messages, but you
%% must be
%% a member to send messages.
%%
%% Private Channels: You must be a member to list or send messages.
%%
%% The `x-amz-chime-bearer' request header is mandatory. Use the
%% `AppInstanceUserArn' of the user that makes the API call as the value
%% in
%% the header.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, CreateChannelMembership:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_messaging-chime_CreateChannelMembership.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec create_channel_membership(aws_client:aws_client(), binary() | list(), create_channel_membership_request()) ->
    {ok, create_channel_membership_response(), tuple()} |
    {error, any()} |
    {error, create_channel_membership_errors(), tuple()}.
create_channel_membership(Client, ChannelArn, Input) ->
    create_channel_membership(Client, ChannelArn, Input, []).

-spec create_channel_membership(aws_client:aws_client(), binary() | list(), create_channel_membership_request(), proplists:proplist()) ->
    {ok, create_channel_membership_response(), tuple()} |
    {error, any()} |
    {error, create_channel_membership_errors(), tuple()}.
create_channel_membership(Client, ChannelArn, Input0, Options0) ->
    Method = post,
    Path = ["/channels/", aws_util:encode_uri(ChannelArn), "/memberships"],
    SuccessStatusCode = 201,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

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
%% Add and remove other members of the channel.
%%
%% Add and remove other moderators of the channel.
%%
%% Add and remove user bans for the channel.
%%
%% Redact messages in the channel.
%%
%% List messages in the channel.
%%
%% The `x-amz-chime-bearer' request header is mandatory. Use the
%% `AppInstanceUserArn' of the user that makes the API call as the value
%% in
%% the header.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, CreateChannelModerator:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_messaging-chime_CreateChannelModerator.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec create_channel_moderator(aws_client:aws_client(), binary() | list(), create_channel_moderator_request()) ->
    {ok, create_channel_moderator_response(), tuple()} |
    {error, any()} |
    {error, create_channel_moderator_errors(), tuple()}.
create_channel_moderator(Client, ChannelArn, Input) ->
    create_channel_moderator(Client, ChannelArn, Input, []).

-spec create_channel_moderator(aws_client:aws_client(), binary() | list(), create_channel_moderator_request(), proplists:proplist()) ->
    {ok, create_channel_moderator_response(), tuple()} |
    {error, any()} |
    {error, create_channel_moderator_errors(), tuple()}.
create_channel_moderator(Client, ChannelArn, Input0, Options0) ->
    Method = post,
    Path = ["/channels/", aws_util:encode_uri(ChannelArn), "/moderators"],
    SuccessStatusCode = 201,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

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
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, CreateMediaCapturePipeline:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_media-pipelines-chime_CreateMediaCapturePipeline,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec create_media_capture_pipeline(aws_client:aws_client(), create_media_capture_pipeline_request()) ->
    {ok, create_media_capture_pipeline_response(), tuple()} |
    {error, any()} |
    {error, create_media_capture_pipeline_errors(), tuple()}.
create_media_capture_pipeline(Client, Input) ->
    create_media_capture_pipeline(Client, Input, []).

-spec create_media_capture_pipeline(aws_client:aws_client(), create_media_capture_pipeline_request(), proplists:proplist()) ->
    {ok, create_media_capture_pipeline_response(), tuple()} |
    {error, any()} |
    {error, create_media_capture_pipeline_errors(), tuple()}.
create_media_capture_pipeline(Client, Input0, Options0) ->
    Method = post,
    Path = ["/media-capture-pipelines"],
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

%% @doc Creates a new Amazon Chime SDK meeting in the specified media Region
%% with no initial attendees.
%%
%% For more information about specifying media Regions, see
%% Amazon Chime SDK Media Regions:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/chime-sdk-meetings-regions.html
%% in the Amazon Chime SDK Developer Guide
%% . For more information about the Amazon Chime SDK, see
%% Using the Amazon Chime SDK:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/meetings-sdk.html
%% in the Amazon Chime SDK Developer Guide.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, CreateMeeting:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_meeting-chime_CreateMeeting.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec create_meeting(aws_client:aws_client(), create_meeting_request()) ->
    {ok, create_meeting_response(), tuple()} |
    {error, any()} |
    {error, create_meeting_errors(), tuple()}.
create_meeting(Client, Input) ->
    create_meeting(Client, Input, []).

-spec create_meeting(aws_client:aws_client(), create_meeting_request(), proplists:proplist()) ->
    {ok, create_meeting_response(), tuple()} |
    {error, any()} |
    {error, create_meeting_errors(), tuple()}.
create_meeting(Client, Input0, Options0) ->
    Method = post,
    Path = ["/meetings"],
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

%% @doc Uses the join token and call metadata in a meeting request (From
%% number, To number, and so forth) to initiate an outbound call to a public
%% switched telephone network (PSTN) and join them into a Chime meeting.
%%
%% Also ensures that the From number belongs to the customer.
%%
%% To play welcome audio or implement an interactive voice response (IVR),
%% use the
%% `CreateSipMediaApplicationCall' action with the corresponding SIP
%% media application ID.
%%
%% This API is is not available in a dedicated namespace.
-spec create_meeting_dial_out(aws_client:aws_client(), binary() | list(), create_meeting_dial_out_request()) ->
    {ok, create_meeting_dial_out_response(), tuple()} |
    {error, any()} |
    {error, create_meeting_dial_out_errors(), tuple()}.
create_meeting_dial_out(Client, MeetingId, Input) ->
    create_meeting_dial_out(Client, MeetingId, Input, []).

-spec create_meeting_dial_out(aws_client:aws_client(), binary() | list(), create_meeting_dial_out_request(), proplists:proplist()) ->
    {ok, create_meeting_dial_out_response(), tuple()} |
    {error, any()} |
    {error, create_meeting_dial_out_errors(), tuple()}.
create_meeting_dial_out(Client, MeetingId, Input0, Options0) ->
    Method = post,
    Path = ["/meetings/", aws_util:encode_uri(MeetingId), "/dial-outs"],
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

%% @doc
%% Creates a new Amazon Chime SDK meeting in the specified media Region, with
%% attendees.
%%
%% For more information about specifying media Regions, see
%% Amazon Chime SDK Media Regions:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/chime-sdk-meetings-regions.html
%% in the
%% Amazon Chime SDK Developer Guide
%% . For more information about the Amazon Chime SDK, see
%% Using the Amazon Chime SDK:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/meetings-sdk.html
%% in the
%% Amazon Chime SDK Developer Guide
%% .
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, CreateMeetingWithAttendees:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_meeting-chime_CreateMeetingWithAttendees.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec create_meeting_with_attendees(aws_client:aws_client(), create_meeting_with_attendees_request()) ->
    {ok, create_meeting_with_attendees_response(), tuple()} |
    {error, any()} |
    {error, create_meeting_with_attendees_errors(), tuple()}.
create_meeting_with_attendees(Client, Input) ->
    create_meeting_with_attendees(Client, Input, []).

-spec create_meeting_with_attendees(aws_client:aws_client(), create_meeting_with_attendees_request(), proplists:proplist()) ->
    {ok, create_meeting_with_attendees_response(), tuple()} |
    {error, any()} |
    {error, create_meeting_with_attendees_errors(), tuple()}.
create_meeting_with_attendees(Client, Input0, Options0) ->
    Method = post,
    Path = ["/meetings?operation=create-attendees"],
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

%% @doc Creates an order for phone numbers to be provisioned.
%%
%% For toll-free numbers, you cannot use the Amazon Chime Business Calling
%% product type.
%% For numbers outside the U.S., you must use the Amazon Chime SIP Media
%% Application Dial-In product type.
-spec create_phone_number_order(aws_client:aws_client(), create_phone_number_order_request()) ->
    {ok, create_phone_number_order_response(), tuple()} |
    {error, any()} |
    {error, create_phone_number_order_errors(), tuple()}.
create_phone_number_order(Client, Input) ->
    create_phone_number_order(Client, Input, []).

-spec create_phone_number_order(aws_client:aws_client(), create_phone_number_order_request(), proplists:proplist()) ->
    {ok, create_phone_number_order_response(), tuple()} |
    {error, any()} |
    {error, create_phone_number_order_errors(), tuple()}.
create_phone_number_order(Client, Input0, Options0) ->
    Method = post,
    Path = ["/phone-number-orders"],
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

%% @doc Creates a proxy session on the specified Amazon Chime Voice Connector
%% for the specified participant phone numbers.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, CreateProxySession:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_CreateProxySession.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec create_proxy_session(aws_client:aws_client(), binary() | list(), create_proxy_session_request()) ->
    {ok, create_proxy_session_response(), tuple()} |
    {error, any()} |
    {error, create_proxy_session_errors(), tuple()}.
create_proxy_session(Client, VoiceConnectorId, Input) ->
    create_proxy_session(Client, VoiceConnectorId, Input, []).

-spec create_proxy_session(aws_client:aws_client(), binary() | list(), create_proxy_session_request(), proplists:proplist()) ->
    {ok, create_proxy_session_response(), tuple()} |
    {error, any()} |
    {error, create_proxy_session_errors(), tuple()}.
create_proxy_session(Client, VoiceConnectorId, Input0, Options0) ->
    Method = post,
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/proxy-sessions"],
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

%% @doc Creates a chat room for the specified Amazon Chime Enterprise
%% account.
-spec create_room(aws_client:aws_client(), binary() | list(), create_room_request()) ->
    {ok, create_room_response(), tuple()} |
    {error, any()} |
    {error, create_room_errors(), tuple()}.
create_room(Client, AccountId, Input) ->
    create_room(Client, AccountId, Input, []).

-spec create_room(aws_client:aws_client(), binary() | list(), create_room_request(), proplists:proplist()) ->
    {ok, create_room_response(), tuple()} |
    {error, any()} |
    {error, create_room_errors(), tuple()}.
create_room(Client, AccountId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AccountId), "/rooms"],
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

%% @doc Adds a member to a chat room in an Amazon Chime Enterprise account.
%%
%% A member can be either a user or a bot. The member role designates whether
%% the member is a chat room administrator or a general chat room member.
-spec create_room_membership(aws_client:aws_client(), binary() | list(), binary() | list(), create_room_membership_request()) ->
    {ok, create_room_membership_response(), tuple()} |
    {error, any()} |
    {error, create_room_membership_errors(), tuple()}.
create_room_membership(Client, AccountId, RoomId, Input) ->
    create_room_membership(Client, AccountId, RoomId, Input, []).

-spec create_room_membership(aws_client:aws_client(), binary() | list(), binary() | list(), create_room_membership_request(), proplists:proplist()) ->
    {ok, create_room_membership_response(), tuple()} |
    {error, any()} |
    {error, create_room_membership_errors(), tuple()}.
create_room_membership(Client, AccountId, RoomId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AccountId), "/rooms/", aws_util:encode_uri(RoomId), "/memberships"],
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

%% @doc Creates a SIP media application.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, CreateSipMediaApplication:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_CreateSipMediaApplication.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec create_sip_media_application(aws_client:aws_client(), create_sip_media_application_request()) ->
    {ok, create_sip_media_application_response(), tuple()} |
    {error, any()} |
    {error, create_sip_media_application_errors(), tuple()}.
create_sip_media_application(Client, Input) ->
    create_sip_media_application(Client, Input, []).

-spec create_sip_media_application(aws_client:aws_client(), create_sip_media_application_request(), proplists:proplist()) ->
    {ok, create_sip_media_application_response(), tuple()} |
    {error, any()} |
    {error, create_sip_media_application_errors(), tuple()}.
create_sip_media_application(Client, Input0, Options0) ->
    Method = post,
    Path = ["/sip-media-applications"],
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

%% @doc Creates an outbound call to a phone number from the phone number
%% specified in the request, and it invokes the endpoint of the specified
%% `sipMediaApplicationId'.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, CreateSipMediaApplicationCall:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_CreateSipMediaApplicationCall.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec create_sip_media_application_call(aws_client:aws_client(), binary() | list(), create_sip_media_application_call_request()) ->
    {ok, create_sip_media_application_call_response(), tuple()} |
    {error, any()} |
    {error, create_sip_media_application_call_errors(), tuple()}.
create_sip_media_application_call(Client, SipMediaApplicationId, Input) ->
    create_sip_media_application_call(Client, SipMediaApplicationId, Input, []).

-spec create_sip_media_application_call(aws_client:aws_client(), binary() | list(), create_sip_media_application_call_request(), proplists:proplist()) ->
    {ok, create_sip_media_application_call_response(), tuple()} |
    {error, any()} |
    {error, create_sip_media_application_call_errors(), tuple()}.
create_sip_media_application_call(Client, SipMediaApplicationId, Input0, Options0) ->
    Method = post,
    Path = ["/sip-media-applications/", aws_util:encode_uri(SipMediaApplicationId), "/calls"],
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

%% @doc Creates a SIP rule which can be used to run a SIP media application
%% as a target for a specific trigger type.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, CreateSipRule:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_CreateSipRule.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec create_sip_rule(aws_client:aws_client(), create_sip_rule_request()) ->
    {ok, create_sip_rule_response(), tuple()} |
    {error, any()} |
    {error, create_sip_rule_errors(), tuple()}.
create_sip_rule(Client, Input) ->
    create_sip_rule(Client, Input, []).

-spec create_sip_rule(aws_client:aws_client(), create_sip_rule_request(), proplists:proplist()) ->
    {ok, create_sip_rule_response(), tuple()} |
    {error, any()} |
    {error, create_sip_rule_errors(), tuple()}.
create_sip_rule(Client, Input0, Options0) ->
    Method = post,
    Path = ["/sip-rules"],
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

%% @doc Creates a user under the specified Amazon Chime account.
-spec create_user(aws_client:aws_client(), binary() | list(), create_user_request()) ->
    {ok, create_user_response(), tuple()} |
    {error, any()} |
    {error, create_user_errors(), tuple()}.
create_user(Client, AccountId, Input) ->
    create_user(Client, AccountId, Input, []).

-spec create_user(aws_client:aws_client(), binary() | list(), create_user_request(), proplists:proplist()) ->
    {ok, create_user_response(), tuple()} |
    {error, any()} |
    {error, create_user_errors(), tuple()}.
create_user(Client, AccountId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AccountId), "/users?operation=create"],
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

%% @doc Creates an Amazon Chime Voice Connector under the administrator's
%% AWS account.
%%
%% You can choose to create an Amazon Chime Voice Connector in a specific AWS
%% Region.
%%
%% Enabling `CreateVoiceConnectorRequest$RequireEncryption'
%% configures your Amazon Chime Voice Connector to use TLS transport for SIP
%% signaling and Secure RTP (SRTP) for media. Inbound calls use TLS
%% transport, and unencrypted outbound calls are blocked.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, CreateVoiceConnector:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_CreateVoiceConnector.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec create_voice_connector(aws_client:aws_client(), create_voice_connector_request()) ->
    {ok, create_voice_connector_response(), tuple()} |
    {error, any()} |
    {error, create_voice_connector_errors(), tuple()}.
create_voice_connector(Client, Input) ->
    create_voice_connector(Client, Input, []).

-spec create_voice_connector(aws_client:aws_client(), create_voice_connector_request(), proplists:proplist()) ->
    {ok, create_voice_connector_response(), tuple()} |
    {error, any()} |
    {error, create_voice_connector_errors(), tuple()}.
create_voice_connector(Client, Input0, Options0) ->
    Method = post,
    Path = ["/voice-connectors"],
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

%% @doc Creates an Amazon Chime Voice Connector group under the
%% administrator's AWS account.
%%
%% You can
%% associate Amazon Chime Voice Connectors with the Amazon Chime Voice
%% Connector group by
%% including `VoiceConnectorItems' in the request.
%%
%% You can include Amazon Chime Voice Connectors from different AWS Regions
%% in your group. This
%% creates a fault tolerant mechanism for fallback in case of availability
%% events.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, CreateVoiceConnectorGroup:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_CreateVoiceConnectorGroup.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec create_voice_connector_group(aws_client:aws_client(), create_voice_connector_group_request()) ->
    {ok, create_voice_connector_group_response(), tuple()} |
    {error, any()} |
    {error, create_voice_connector_group_errors(), tuple()}.
create_voice_connector_group(Client, Input) ->
    create_voice_connector_group(Client, Input, []).

-spec create_voice_connector_group(aws_client:aws_client(), create_voice_connector_group_request(), proplists:proplist()) ->
    {ok, create_voice_connector_group_response(), tuple()} |
    {error, any()} |
    {error, create_voice_connector_group_errors(), tuple()}.
create_voice_connector_group(Client, Input0, Options0) ->
    Method = post,
    Path = ["/voice-connector-groups"],
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

%% @doc Deletes the specified Amazon Chime account.
%%
%% You must suspend all users before deleting
%% `Team' account. You can use the `BatchSuspendUser' action
%% to dodo.
%%
%% For `EnterpriseLWA' and `EnterpriseAD' accounts, you must release
%% the
%% claimed domains for your Amazon Chime account before deletion. As soon as
%% you release
%% the domain, all users under that account are suspended.
%%
%% Deleted accounts appear in your `Disabled' accounts list for 90 days.
%% To restore
%% deleted account from your `Disabled' accounts list, you must contact
%% AWS
%% Support.
%%
%% After 90 days, deleted accounts are permanently removed from your
%% `Disabled' accounts list.
-spec delete_account(aws_client:aws_client(), binary() | list(), delete_account_request()) ->
    {ok, delete_account_response(), tuple()} |
    {error, any()} |
    {error, delete_account_errors(), tuple()}.
delete_account(Client, AccountId, Input) ->
    delete_account(Client, AccountId, Input, []).

-spec delete_account(aws_client:aws_client(), binary() | list(), delete_account_request(), proplists:proplist()) ->
    {ok, delete_account_response(), tuple()} |
    {error, any()} |
    {error, delete_account_errors(), tuple()}.
delete_account(Client, AccountId, Input0, Options0) ->
    Method = delete,
    Path = ["/accounts/", aws_util:encode_uri(AccountId), ""],
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

%% @doc Deletes an `AppInstance' and all associated data asynchronously.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version,
%% DeleteAppInstance:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_identity-chime_DeleteAppInstance.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec delete_app_instance(aws_client:aws_client(), binary() | list(), delete_app_instance_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_app_instance_errors(), tuple()}.
delete_app_instance(Client, AppInstanceArn, Input) ->
    delete_app_instance(Client, AppInstanceArn, Input, []).

-spec delete_app_instance(aws_client:aws_client(), binary() | list(), delete_app_instance_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_app_instance_errors(), tuple()}.
delete_app_instance(Client, AppInstanceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/app-instances/", aws_util:encode_uri(AppInstanceArn), ""],
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

%% @doc Demotes an `AppInstanceAdmin' to an `AppInstanceUser'.
%%
%% This action does not delete the user.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version,
%% DeleteAppInstanceAdmin:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_identity-chime_DeleteAppInstanceAdmin.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec delete_app_instance_admin(aws_client:aws_client(), binary() | list(), binary() | list(), delete_app_instance_admin_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_app_instance_admin_errors(), tuple()}.
delete_app_instance_admin(Client, AppInstanceAdminArn, AppInstanceArn, Input) ->
    delete_app_instance_admin(Client, AppInstanceAdminArn, AppInstanceArn, Input, []).

-spec delete_app_instance_admin(aws_client:aws_client(), binary() | list(), binary() | list(), delete_app_instance_admin_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_app_instance_admin_errors(), tuple()}.
delete_app_instance_admin(Client, AppInstanceAdminArn, AppInstanceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/app-instances/", aws_util:encode_uri(AppInstanceArn), "/admins/", aws_util:encode_uri(AppInstanceAdminArn), ""],
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

%% @doc Deletes the streaming configurations of an `AppInstance'.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, DeleteAppInstanceStreamingConfigurations:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_identity-chime_DeleteAppInstanceStreamingConfigurations.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec delete_app_instance_streaming_configurations(aws_client:aws_client(), binary() | list(), delete_app_instance_streaming_configurations_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_app_instance_streaming_configurations_errors(), tuple()}.
delete_app_instance_streaming_configurations(Client, AppInstanceArn, Input) ->
    delete_app_instance_streaming_configurations(Client, AppInstanceArn, Input, []).

-spec delete_app_instance_streaming_configurations(aws_client:aws_client(), binary() | list(), delete_app_instance_streaming_configurations_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_app_instance_streaming_configurations_errors(), tuple()}.
delete_app_instance_streaming_configurations(Client, AppInstanceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/app-instances/", aws_util:encode_uri(AppInstanceArn), "/streaming-configurations"],
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

%% @doc Deletes an `AppInstanceUser'.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, DeleteAppInstanceUser:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_identity-chime_DeleteAppInstanceUser.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec delete_app_instance_user(aws_client:aws_client(), binary() | list(), delete_app_instance_user_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_app_instance_user_errors(), tuple()}.
delete_app_instance_user(Client, AppInstanceUserArn, Input) ->
    delete_app_instance_user(Client, AppInstanceUserArn, Input, []).

-spec delete_app_instance_user(aws_client:aws_client(), binary() | list(), delete_app_instance_user_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_app_instance_user_errors(), tuple()}.
delete_app_instance_user(Client, AppInstanceUserArn, Input0, Options0) ->
    Method = delete,
    Path = ["/app-instance-users/", aws_util:encode_uri(AppInstanceUserArn), ""],
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

%% @doc Deletes an attendee from the specified Amazon Chime SDK meeting and
%% deletes their
%% `JoinToken'.
%%
%% Attendees are automatically deleted when a Amazon Chime SDK meeting is
%% deleted. For more information about the Amazon Chime SDK, see
%% Using the Amazon Chime SDK:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/meetings-sdk.html
%% in the Amazon Chime SDK Developer Guide.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, DeleteAttendee:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_meeting-chime_DeleteAttendee.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec delete_attendee(aws_client:aws_client(), binary() | list(), binary() | list(), delete_attendee_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_attendee_errors(), tuple()}.
delete_attendee(Client, AttendeeId, MeetingId, Input) ->
    delete_attendee(Client, AttendeeId, MeetingId, Input, []).

-spec delete_attendee(aws_client:aws_client(), binary() | list(), binary() | list(), delete_attendee_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_attendee_errors(), tuple()}.
delete_attendee(Client, AttendeeId, MeetingId, Input0, Options0) ->
    Method = delete,
    Path = ["/meetings/", aws_util:encode_uri(MeetingId), "/attendees/", aws_util:encode_uri(AttendeeId), ""],
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

%% @doc Immediately makes a channel and its memberships inaccessible and
%% marks them for
%% deletion.
%%
%% This is an irreversible process.
%%
%% The `x-amz-chime-bearer' request header is mandatory. Use the
%% `AppInstanceUserArn' of the user that makes the API call as the value
%% in
%% the header.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, DeleteChannel:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_messaging-chime_DeleteChannel.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec delete_channel(aws_client:aws_client(), binary() | list(), delete_channel_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_channel_errors(), tuple()}.
delete_channel(Client, ChannelArn, Input) ->
    delete_channel(Client, ChannelArn, Input, []).

-spec delete_channel(aws_client:aws_client(), binary() | list(), delete_channel_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_channel_errors(), tuple()}.
delete_channel(Client, ChannelArn, Input0, Options0) ->
    Method = delete,
    Path = ["/channels/", aws_util:encode_uri(ChannelArn), ""],
    SuccessStatusCode = 204,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

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
%% `AppInstanceUserArn' of the user that makes the API call as the value
%% in
%% the header.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, DeleteChannelBan:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_messaging-chime_DeleteChannelBan.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec delete_channel_ban(aws_client:aws_client(), binary() | list(), binary() | list(), delete_channel_ban_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_channel_ban_errors(), tuple()}.
delete_channel_ban(Client, ChannelArn, MemberArn, Input) ->
    delete_channel_ban(Client, ChannelArn, MemberArn, Input, []).

-spec delete_channel_ban(aws_client:aws_client(), binary() | list(), binary() | list(), delete_channel_ban_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_channel_ban_errors(), tuple()}.
delete_channel_ban(Client, ChannelArn, MemberArn, Input0, Options0) ->
    Method = delete,
    Path = ["/channels/", aws_util:encode_uri(ChannelArn), "/bans/", aws_util:encode_uri(MemberArn), ""],
    SuccessStatusCode = 204,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

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
%% `AppInstanceUserArn' of the user that makes the API call as the value
%% in
%% the header.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, DeleteChannelMembership:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_messaging-chime_DeleteChannelMembership.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec delete_channel_membership(aws_client:aws_client(), binary() | list(), binary() | list(), delete_channel_membership_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_channel_membership_errors(), tuple()}.
delete_channel_membership(Client, ChannelArn, MemberArn, Input) ->
    delete_channel_membership(Client, ChannelArn, MemberArn, Input, []).

-spec delete_channel_membership(aws_client:aws_client(), binary() | list(), binary() | list(), delete_channel_membership_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_channel_membership_errors(), tuple()}.
delete_channel_membership(Client, ChannelArn, MemberArn, Input0, Options0) ->
    Method = delete,
    Path = ["/channels/", aws_util:encode_uri(ChannelArn), "/memberships/", aws_util:encode_uri(MemberArn), ""],
    SuccessStatusCode = 204,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

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
%% Only admins can perform this action. Deletion makes messages
%% inaccessible immediately. A background process deletes any revisions
%% created by
%% `UpdateChannelMessage'.
%%
%% The `x-amz-chime-bearer' request header is mandatory. Use the
%% `AppInstanceUserArn' of the user that makes the API call as the value
%% in
%% the header.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, DeleteChannelMessage:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_messaging-chime_DeleteChannelMessage.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec delete_channel_message(aws_client:aws_client(), binary() | list(), binary() | list(), delete_channel_message_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_channel_message_errors(), tuple()}.
delete_channel_message(Client, ChannelArn, MessageId, Input) ->
    delete_channel_message(Client, ChannelArn, MessageId, Input, []).

-spec delete_channel_message(aws_client:aws_client(), binary() | list(), binary() | list(), delete_channel_message_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_channel_message_errors(), tuple()}.
delete_channel_message(Client, ChannelArn, MessageId, Input0, Options0) ->
    Method = delete,
    Path = ["/channels/", aws_util:encode_uri(ChannelArn), "/messages/", aws_util:encode_uri(MessageId), ""],
    SuccessStatusCode = 204,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

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
%% `AppInstanceUserArn' of the user that makes the API call as the value
%% in
%% the header.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, DeleteChannelModerator:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_messaging-chime_DeleteChannelModerator.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec delete_channel_moderator(aws_client:aws_client(), binary() | list(), binary() | list(), delete_channel_moderator_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_channel_moderator_errors(), tuple()}.
delete_channel_moderator(Client, ChannelArn, ChannelModeratorArn, Input) ->
    delete_channel_moderator(Client, ChannelArn, ChannelModeratorArn, Input, []).

-spec delete_channel_moderator(aws_client:aws_client(), binary() | list(), binary() | list(), delete_channel_moderator_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_channel_moderator_errors(), tuple()}.
delete_channel_moderator(Client, ChannelArn, ChannelModeratorArn, Input0, Options0) ->
    Method = delete,
    Path = ["/channels/", aws_util:encode_uri(ChannelArn), "/moderators/", aws_util:encode_uri(ChannelModeratorArn), ""],
    SuccessStatusCode = 204,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

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
-spec delete_events_configuration(aws_client:aws_client(), binary() | list(), binary() | list(), delete_events_configuration_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_events_configuration_errors(), tuple()}.
delete_events_configuration(Client, AccountId, BotId, Input) ->
    delete_events_configuration(Client, AccountId, BotId, Input, []).

-spec delete_events_configuration(aws_client:aws_client(), binary() | list(), binary() | list(), delete_events_configuration_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_events_configuration_errors(), tuple()}.
delete_events_configuration(Client, AccountId, BotId, Input0, Options0) ->
    Method = delete,
    Path = ["/accounts/", aws_util:encode_uri(AccountId), "/bots/", aws_util:encode_uri(BotId), "/events-configuration"],
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

%% @doc Deletes the media capture pipeline.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version,
%% DeleteMediaCapturePipeline:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_media-pipelines-chime_DeleteMediaCapturePipeline.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec delete_media_capture_pipeline(aws_client:aws_client(), binary() | list(), delete_media_capture_pipeline_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_media_capture_pipeline_errors(), tuple()}.
delete_media_capture_pipeline(Client, MediaPipelineId, Input) ->
    delete_media_capture_pipeline(Client, MediaPipelineId, Input, []).

-spec delete_media_capture_pipeline(aws_client:aws_client(), binary() | list(), delete_media_capture_pipeline_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_media_capture_pipeline_errors(), tuple()}.
delete_media_capture_pipeline(Client, MediaPipelineId, Input0, Options0) ->
    Method = delete,
    Path = ["/media-capture-pipelines/", aws_util:encode_uri(MediaPipelineId), ""],
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

%% @doc Deletes the specified Amazon Chime SDK meeting.
%%
%% The operation deletes all attendees, disconnects all clients, and prevents
%% new clients from
%% joining the meeting. For more information about the Amazon Chime SDK, see
%% Using the Amazon Chime SDK:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/meetings-sdk.html in the
%% Amazon Chime SDK Developer Guide.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, DeleteMeeting:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_meeting-chime_DeleteMeeting.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec delete_meeting(aws_client:aws_client(), binary() | list(), delete_meeting_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_meeting_errors(), tuple()}.
delete_meeting(Client, MeetingId, Input) ->
    delete_meeting(Client, MeetingId, Input, []).

-spec delete_meeting(aws_client:aws_client(), binary() | list(), delete_meeting_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_meeting_errors(), tuple()}.
delete_meeting(Client, MeetingId, Input0, Options0) ->
    Method = delete,
    Path = ["/meetings/", aws_util:encode_uri(MeetingId), ""],
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

%% @doc Moves the specified phone number into the Deletion queue.
%%
%% A
%% phone number must be disassociated from any users or Amazon Chime Voice
%% Connectors
%% before it can be deleted.
%%
%% Deleted phone numbers remain in the
%% Deletion queue
%% for 7 days before they are deleted permanently.
-spec delete_phone_number(aws_client:aws_client(), binary() | list(), delete_phone_number_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_phone_number_errors(), tuple()}.
delete_phone_number(Client, PhoneNumberId, Input) ->
    delete_phone_number(Client, PhoneNumberId, Input, []).

-spec delete_phone_number(aws_client:aws_client(), binary() | list(), delete_phone_number_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_phone_number_errors(), tuple()}.
delete_phone_number(Client, PhoneNumberId, Input0, Options0) ->
    Method = delete,
    Path = ["/phone-numbers/", aws_util:encode_uri(PhoneNumberId), ""],
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

%% @doc Deletes the specified proxy session from the specified Amazon Chime
%% Voice Connector.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, DeleteProxySession:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_DeleteProxySession.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec delete_proxy_session(aws_client:aws_client(), binary() | list(), binary() | list(), delete_proxy_session_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_proxy_session_errors(), tuple()}.
delete_proxy_session(Client, ProxySessionId, VoiceConnectorId, Input) ->
    delete_proxy_session(Client, ProxySessionId, VoiceConnectorId, Input, []).

-spec delete_proxy_session(aws_client:aws_client(), binary() | list(), binary() | list(), delete_proxy_session_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_proxy_session_errors(), tuple()}.
delete_proxy_session(Client, ProxySessionId, VoiceConnectorId, Input0, Options0) ->
    Method = delete,
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/proxy-sessions/", aws_util:encode_uri(ProxySessionId), ""],
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

%% @doc Deletes a chat room in an Amazon Chime Enterprise account.
-spec delete_room(aws_client:aws_client(), binary() | list(), binary() | list(), delete_room_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_room_errors(), tuple()}.
delete_room(Client, AccountId, RoomId, Input) ->
    delete_room(Client, AccountId, RoomId, Input, []).

-spec delete_room(aws_client:aws_client(), binary() | list(), binary() | list(), delete_room_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_room_errors(), tuple()}.
delete_room(Client, AccountId, RoomId, Input0, Options0) ->
    Method = delete,
    Path = ["/accounts/", aws_util:encode_uri(AccountId), "/rooms/", aws_util:encode_uri(RoomId), ""],
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

%% @doc Removes a member from a chat room in an Amazon Chime Enterprise
%% account.
-spec delete_room_membership(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_room_membership_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_room_membership_errors(), tuple()}.
delete_room_membership(Client, AccountId, MemberId, RoomId, Input) ->
    delete_room_membership(Client, AccountId, MemberId, RoomId, Input, []).

-spec delete_room_membership(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_room_membership_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_room_membership_errors(), tuple()}.
delete_room_membership(Client, AccountId, MemberId, RoomId, Input0, Options0) ->
    Method = delete,
    Path = ["/accounts/", aws_util:encode_uri(AccountId), "/rooms/", aws_util:encode_uri(RoomId), "/memberships/", aws_util:encode_uri(MemberId), ""],
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

%% @doc Deletes a SIP media application.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, DeleteSipMediaApplication:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_DeleteSipMediaApplication.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec delete_sip_media_application(aws_client:aws_client(), binary() | list(), delete_sip_media_application_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_sip_media_application_errors(), tuple()}.
delete_sip_media_application(Client, SipMediaApplicationId, Input) ->
    delete_sip_media_application(Client, SipMediaApplicationId, Input, []).

-spec delete_sip_media_application(aws_client:aws_client(), binary() | list(), delete_sip_media_application_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_sip_media_application_errors(), tuple()}.
delete_sip_media_application(Client, SipMediaApplicationId, Input0, Options0) ->
    Method = delete,
    Path = ["/sip-media-applications/", aws_util:encode_uri(SipMediaApplicationId), ""],
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

%% @doc Deletes a SIP rule.
%%
%% You must disable a SIP rule before you can delete it.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, DeleteSipRule:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_DeleteSipRule.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec delete_sip_rule(aws_client:aws_client(), binary() | list(), delete_sip_rule_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_sip_rule_errors(), tuple()}.
delete_sip_rule(Client, SipRuleId, Input) ->
    delete_sip_rule(Client, SipRuleId, Input, []).

-spec delete_sip_rule(aws_client:aws_client(), binary() | list(), delete_sip_rule_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_sip_rule_errors(), tuple()}.
delete_sip_rule(Client, SipRuleId, Input0, Options0) ->
    Method = delete,
    Path = ["/sip-rules/", aws_util:encode_uri(SipRuleId), ""],
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

%% @doc Deletes the specified Amazon Chime Voice Connector.
%%
%% Any phone numbers associated with the
%% Amazon Chime Voice Connector must be disassociated from it before it can
%% be
%% deleted.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, DeleteVoiceConnector:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_DeleteVoiceConnector.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec delete_voice_connector(aws_client:aws_client(), binary() | list(), delete_voice_connector_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_voice_connector_errors(), tuple()}.
delete_voice_connector(Client, VoiceConnectorId, Input) ->
    delete_voice_connector(Client, VoiceConnectorId, Input, []).

-spec delete_voice_connector(aws_client:aws_client(), binary() | list(), delete_voice_connector_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_voice_connector_errors(), tuple()}.
delete_voice_connector(Client, VoiceConnectorId, Input0, Options0) ->
    Method = delete,
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), ""],
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

%% @doc Deletes the emergency calling configuration details from the
%% specified Amazon Chime Voice Connector.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version,
%% DeleteVoiceConnectorEmergencyCallingConfiguration:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_DeleteVoiceConnectorEmergencyCallingConfiguration.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec delete_voice_connector_emergency_calling_configuration(aws_client:aws_client(), binary() | list(), delete_voice_connector_emergency_calling_configuration_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_voice_connector_emergency_calling_configuration_errors(), tuple()}.
delete_voice_connector_emergency_calling_configuration(Client, VoiceConnectorId, Input) ->
    delete_voice_connector_emergency_calling_configuration(Client, VoiceConnectorId, Input, []).

-spec delete_voice_connector_emergency_calling_configuration(aws_client:aws_client(), binary() | list(), delete_voice_connector_emergency_calling_configuration_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_voice_connector_emergency_calling_configuration_errors(), tuple()}.
delete_voice_connector_emergency_calling_configuration(Client, VoiceConnectorId, Input0, Options0) ->
    Method = delete,
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/emergency-calling-configuration"],
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

%% @doc Deletes the specified Amazon Chime Voice Connector group.
%%
%% Any
%% `VoiceConnectorItems'
%% and phone numbers associated with the group must be removed before it can
%% be deleted.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, DeleteVoiceConnectorGroup:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_DeleteVoiceConnectorGroup.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec delete_voice_connector_group(aws_client:aws_client(), binary() | list(), delete_voice_connector_group_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_voice_connector_group_errors(), tuple()}.
delete_voice_connector_group(Client, VoiceConnectorGroupId, Input) ->
    delete_voice_connector_group(Client, VoiceConnectorGroupId, Input, []).

-spec delete_voice_connector_group(aws_client:aws_client(), binary() | list(), delete_voice_connector_group_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_voice_connector_group_errors(), tuple()}.
delete_voice_connector_group(Client, VoiceConnectorGroupId, Input0, Options0) ->
    Method = delete,
    Path = ["/voice-connector-groups/", aws_util:encode_uri(VoiceConnectorGroupId), ""],
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

%% @doc Deletes the origination settings for the specified Amazon Chime Voice
%% Connector.
%%
%% If emergency calling is configured for the Amazon Chime Voice Connector,
%% it must be deleted prior to deleting the origination settings.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, DeleteVoiceConnectorOrigination:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_DeleteVoiceConnectorOrigination.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec delete_voice_connector_origination(aws_client:aws_client(), binary() | list(), delete_voice_connector_origination_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_voice_connector_origination_errors(), tuple()}.
delete_voice_connector_origination(Client, VoiceConnectorId, Input) ->
    delete_voice_connector_origination(Client, VoiceConnectorId, Input, []).

-spec delete_voice_connector_origination(aws_client:aws_client(), binary() | list(), delete_voice_connector_origination_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_voice_connector_origination_errors(), tuple()}.
delete_voice_connector_origination(Client, VoiceConnectorId, Input0, Options0) ->
    Method = delete,
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/origination"],
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

%% @doc Deletes the proxy configuration from the specified Amazon Chime Voice
%% Connector.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, DeleteVoiceProxy:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_DeleteVoiceConnectorProxy.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec delete_voice_connector_proxy(aws_client:aws_client(), binary() | list(), delete_voice_connector_proxy_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_voice_connector_proxy_errors(), tuple()}.
delete_voice_connector_proxy(Client, VoiceConnectorId, Input) ->
    delete_voice_connector_proxy(Client, VoiceConnectorId, Input, []).

-spec delete_voice_connector_proxy(aws_client:aws_client(), binary() | list(), delete_voice_connector_proxy_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_voice_connector_proxy_errors(), tuple()}.
delete_voice_connector_proxy(Client, VoiceConnectorId, Input0, Options0) ->
    Method = delete,
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/programmable-numbers/proxy"],
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

%% @doc Deletes the streaming configuration for the specified Amazon Chime
%% Voice Connector.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, DeleteVoiceConnectorStreamingConfiguration:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_DeleteVoiceConnectorStreamingConfiguration.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec delete_voice_connector_streaming_configuration(aws_client:aws_client(), binary() | list(), delete_voice_connector_streaming_configuration_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_voice_connector_streaming_configuration_errors(), tuple()}.
delete_voice_connector_streaming_configuration(Client, VoiceConnectorId, Input) ->
    delete_voice_connector_streaming_configuration(Client, VoiceConnectorId, Input, []).

-spec delete_voice_connector_streaming_configuration(aws_client:aws_client(), binary() | list(), delete_voice_connector_streaming_configuration_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_voice_connector_streaming_configuration_errors(), tuple()}.
delete_voice_connector_streaming_configuration(Client, VoiceConnectorId, Input0, Options0) ->
    Method = delete,
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/streaming-configuration"],
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

%% @doc Deletes the termination settings for the specified Amazon Chime Voice
%% Connector.
%%
%% If emergency calling is configured for the Amazon Chime Voice Connector,
%% it must be deleted prior to deleting the termination settings.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, DeleteVoiceConnectorTermination:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_DeleteVoiceConnectorTermination.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec delete_voice_connector_termination(aws_client:aws_client(), binary() | list(), delete_voice_connector_termination_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_voice_connector_termination_errors(), tuple()}.
delete_voice_connector_termination(Client, VoiceConnectorId, Input) ->
    delete_voice_connector_termination(Client, VoiceConnectorId, Input, []).

-spec delete_voice_connector_termination(aws_client:aws_client(), binary() | list(), delete_voice_connector_termination_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_voice_connector_termination_errors(), tuple()}.
delete_voice_connector_termination(Client, VoiceConnectorId, Input0, Options0) ->
    Method = delete,
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/termination"],
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

%% @doc Deletes the specified SIP credentials used by your equipment to
%% authenticate during call termination.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, DeleteVoiceConnectorTerminationCredentials:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_DeleteVoiceConnectorTerminationCredentials.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec delete_voice_connector_termination_credentials(aws_client:aws_client(), binary() | list(), delete_voice_connector_termination_credentials_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_voice_connector_termination_credentials_errors(), tuple()}.
delete_voice_connector_termination_credentials(Client, VoiceConnectorId, Input) ->
    delete_voice_connector_termination_credentials(Client, VoiceConnectorId, Input, []).

-spec delete_voice_connector_termination_credentials(aws_client:aws_client(), binary() | list(), delete_voice_connector_termination_credentials_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_voice_connector_termination_credentials_errors(), tuple()}.
delete_voice_connector_termination_credentials(Client, VoiceConnectorId, Input0, Options0) ->
    Method = post,
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/termination/credentials?operation=delete"],
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

%% @doc Returns the full details of an `AppInstance'.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, DescribeAppInstance:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_identity-chime_DescribeAppInstance.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec describe_app_instance(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_app_instance_response(), tuple()} |
    {error, any()} |
    {error, describe_app_instance_errors(), tuple()}.
describe_app_instance(Client, AppInstanceArn)
  when is_map(Client) ->
    describe_app_instance(Client, AppInstanceArn, #{}, #{}).

-spec describe_app_instance(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_app_instance_response(), tuple()} |
    {error, any()} |
    {error, describe_app_instance_errors(), tuple()}.
describe_app_instance(Client, AppInstanceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_app_instance(Client, AppInstanceArn, QueryMap, HeadersMap, []).

-spec describe_app_instance(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_app_instance_response(), tuple()} |
    {error, any()} |
    {error, describe_app_instance_errors(), tuple()}.
describe_app_instance(Client, AppInstanceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/app-instances/", aws_util:encode_uri(AppInstanceArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the full details of an `AppInstanceAdmin'.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, DescribeAppInstanceAdmin:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_identity-chime_DescribeAppInstanceAdmin.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec describe_app_instance_admin(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_app_instance_admin_response(), tuple()} |
    {error, any()} |
    {error, describe_app_instance_admin_errors(), tuple()}.
describe_app_instance_admin(Client, AppInstanceAdminArn, AppInstanceArn)
  when is_map(Client) ->
    describe_app_instance_admin(Client, AppInstanceAdminArn, AppInstanceArn, #{}, #{}).

-spec describe_app_instance_admin(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_app_instance_admin_response(), tuple()} |
    {error, any()} |
    {error, describe_app_instance_admin_errors(), tuple()}.
describe_app_instance_admin(Client, AppInstanceAdminArn, AppInstanceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_app_instance_admin(Client, AppInstanceAdminArn, AppInstanceArn, QueryMap, HeadersMap, []).

-spec describe_app_instance_admin(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_app_instance_admin_response(), tuple()} |
    {error, any()} |
    {error, describe_app_instance_admin_errors(), tuple()}.
describe_app_instance_admin(Client, AppInstanceAdminArn, AppInstanceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/app-instances/", aws_util:encode_uri(AppInstanceArn), "/admins/", aws_util:encode_uri(AppInstanceAdminArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the full details of an `AppInstanceUser'.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, DescribeAppInstanceUser:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_identity-chime_DescribeAppInstanceUser.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec describe_app_instance_user(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_app_instance_user_response(), tuple()} |
    {error, any()} |
    {error, describe_app_instance_user_errors(), tuple()}.
describe_app_instance_user(Client, AppInstanceUserArn)
  when is_map(Client) ->
    describe_app_instance_user(Client, AppInstanceUserArn, #{}, #{}).

-spec describe_app_instance_user(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_app_instance_user_response(), tuple()} |
    {error, any()} |
    {error, describe_app_instance_user_errors(), tuple()}.
describe_app_instance_user(Client, AppInstanceUserArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_app_instance_user(Client, AppInstanceUserArn, QueryMap, HeadersMap, []).

-spec describe_app_instance_user(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_app_instance_user_response(), tuple()} |
    {error, any()} |
    {error, describe_app_instance_user_errors(), tuple()}.
describe_app_instance_user(Client, AppInstanceUserArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/app-instance-users/", aws_util:encode_uri(AppInstanceUserArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the full details of a channel in an Amazon Chime
%% `AppInstance'.
%%
%% The `x-amz-chime-bearer' request header is mandatory. Use the
%% `AppInstanceUserArn' of the user that makes the API call as the value
%% in
%% the header.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, DescribeChannel:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_messaging-chime_DescribeChannel.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec describe_channel(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_channel_response(), tuple()} |
    {error, any()} |
    {error, describe_channel_errors(), tuple()}.
describe_channel(Client, ChannelArn)
  when is_map(Client) ->
    describe_channel(Client, ChannelArn, #{}, #{}).

-spec describe_channel(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_channel_response(), tuple()} |
    {error, any()} |
    {error, describe_channel_errors(), tuple()}.
describe_channel(Client, ChannelArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_channel(Client, ChannelArn, QueryMap, HeadersMap, []).

-spec describe_channel(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_channel_response(), tuple()} |
    {error, any()} |
    {error, describe_channel_errors(), tuple()}.
describe_channel(Client, ChannelArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/channels/", aws_util:encode_uri(ChannelArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

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
%% `AppInstanceUserArn' of the user that makes the API call as the value
%% in
%% the header.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, DescribeChannelBan:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_messaging-chime_DescribeChannelBan.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec describe_channel_ban(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_channel_ban_response(), tuple()} |
    {error, any()} |
    {error, describe_channel_ban_errors(), tuple()}.
describe_channel_ban(Client, ChannelArn, MemberArn)
  when is_map(Client) ->
    describe_channel_ban(Client, ChannelArn, MemberArn, #{}, #{}).

-spec describe_channel_ban(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_channel_ban_response(), tuple()} |
    {error, any()} |
    {error, describe_channel_ban_errors(), tuple()}.
describe_channel_ban(Client, ChannelArn, MemberArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_channel_ban(Client, ChannelArn, MemberArn, QueryMap, HeadersMap, []).

-spec describe_channel_ban(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_channel_ban_response(), tuple()} |
    {error, any()} |
    {error, describe_channel_ban_errors(), tuple()}.
describe_channel_ban(Client, ChannelArn, MemberArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/channels/", aws_util:encode_uri(ChannelArn), "/bans/", aws_util:encode_uri(MemberArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

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
%% `AppInstanceUserArn' of the user that makes the API call as the value
%% in
%% the header.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, DescribeChannelMembership:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_messaging-chime_DescribeChannelMembership.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec describe_channel_membership(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_channel_membership_response(), tuple()} |
    {error, any()} |
    {error, describe_channel_membership_errors(), tuple()}.
describe_channel_membership(Client, ChannelArn, MemberArn)
  when is_map(Client) ->
    describe_channel_membership(Client, ChannelArn, MemberArn, #{}, #{}).

-spec describe_channel_membership(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_channel_membership_response(), tuple()} |
    {error, any()} |
    {error, describe_channel_membership_errors(), tuple()}.
describe_channel_membership(Client, ChannelArn, MemberArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_channel_membership(Client, ChannelArn, MemberArn, QueryMap, HeadersMap, []).

-spec describe_channel_membership(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_channel_membership_response(), tuple()} |
    {error, any()} |
    {error, describe_channel_membership_errors(), tuple()}.
describe_channel_membership(Client, ChannelArn, MemberArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/channels/", aws_util:encode_uri(ChannelArn), "/memberships/", aws_util:encode_uri(MemberArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers0 =
      [
        {<<"x-amz-chime-bearer">>, maps:get(<<"x-amz-chime-bearer">>, HeadersMap, undefined)}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the details of a channel based on the membership of the
%% specified
%% `AppInstanceUser'.
%%
%% The `x-amz-chime-bearer' request header is mandatory. Use the
%% `AppInstanceUserArn' of the user that makes the API call as the value
%% in
%% the header.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, DescribeChannelMembershipForAppInstanceUser:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_messaging-chime_DescribeChannelMembershipForAppInstanceUser.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec describe_channel_membership_for_app_instance_user(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_channel_membership_for_app_instance_user_response(), tuple()} |
    {error, any()} |
    {error, describe_channel_membership_for_app_instance_user_errors(), tuple()}.
describe_channel_membership_for_app_instance_user(Client, ChannelArn, AppInstanceUserArn)
  when is_map(Client) ->
    describe_channel_membership_for_app_instance_user(Client, ChannelArn, AppInstanceUserArn, #{}, #{}).

-spec describe_channel_membership_for_app_instance_user(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_channel_membership_for_app_instance_user_response(), tuple()} |
    {error, any()} |
    {error, describe_channel_membership_for_app_instance_user_errors(), tuple()}.
describe_channel_membership_for_app_instance_user(Client, ChannelArn, AppInstanceUserArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_channel_membership_for_app_instance_user(Client, ChannelArn, AppInstanceUserArn, QueryMap, HeadersMap, []).

-spec describe_channel_membership_for_app_instance_user(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_channel_membership_for_app_instance_user_response(), tuple()} |
    {error, any()} |
    {error, describe_channel_membership_for_app_instance_user_errors(), tuple()}.
describe_channel_membership_for_app_instance_user(Client, ChannelArn, AppInstanceUserArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/channels/", aws_util:encode_uri(ChannelArn), "?scope=app-instance-user-membership"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

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
%% `AppInstanceUserArn' of the user that makes the API call as the value
%% in
%% the header.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, DescribeChannelModeratedByAppInstanceUser:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_messaging-chime_DescribeChannelModeratedByAppInstanceUser.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec describe_channel_moderated_by_app_instance_user(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_channel_moderated_by_app_instance_user_response(), tuple()} |
    {error, any()} |
    {error, describe_channel_moderated_by_app_instance_user_errors(), tuple()}.
describe_channel_moderated_by_app_instance_user(Client, ChannelArn, AppInstanceUserArn)
  when is_map(Client) ->
    describe_channel_moderated_by_app_instance_user(Client, ChannelArn, AppInstanceUserArn, #{}, #{}).

-spec describe_channel_moderated_by_app_instance_user(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_channel_moderated_by_app_instance_user_response(), tuple()} |
    {error, any()} |
    {error, describe_channel_moderated_by_app_instance_user_errors(), tuple()}.
describe_channel_moderated_by_app_instance_user(Client, ChannelArn, AppInstanceUserArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_channel_moderated_by_app_instance_user(Client, ChannelArn, AppInstanceUserArn, QueryMap, HeadersMap, []).

-spec describe_channel_moderated_by_app_instance_user(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_channel_moderated_by_app_instance_user_response(), tuple()} |
    {error, any()} |
    {error, describe_channel_moderated_by_app_instance_user_errors(), tuple()}.
describe_channel_moderated_by_app_instance_user(Client, ChannelArn, AppInstanceUserArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/channels/", aws_util:encode_uri(ChannelArn), "?scope=app-instance-user-moderated-channel"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

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
%% `AppInstanceUserArn' of the user that makes the API call as the value
%% in
%% the header.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, DescribeChannelModerator:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_messaging-chime_DescribeChannelModerator.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec describe_channel_moderator(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_channel_moderator_response(), tuple()} |
    {error, any()} |
    {error, describe_channel_moderator_errors(), tuple()}.
describe_channel_moderator(Client, ChannelArn, ChannelModeratorArn)
  when is_map(Client) ->
    describe_channel_moderator(Client, ChannelArn, ChannelModeratorArn, #{}, #{}).

-spec describe_channel_moderator(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_channel_moderator_response(), tuple()} |
    {error, any()} |
    {error, describe_channel_moderator_errors(), tuple()}.
describe_channel_moderator(Client, ChannelArn, ChannelModeratorArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_channel_moderator(Client, ChannelArn, ChannelModeratorArn, QueryMap, HeadersMap, []).

-spec describe_channel_moderator(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_channel_moderator_response(), tuple()} |
    {error, any()} |
    {error, describe_channel_moderator_errors(), tuple()}.
describe_channel_moderator(Client, ChannelArn, ChannelModeratorArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/channels/", aws_util:encode_uri(ChannelArn), "/moderators/", aws_util:encode_uri(ChannelModeratorArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers0 =
      [
        {<<"x-amz-chime-bearer">>, maps:get(<<"x-amz-chime-bearer">>, HeadersMap, undefined)}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Disassociates the primary provisioned phone number from the specified
%% Amazon Chime user.
-spec disassociate_phone_number_from_user(aws_client:aws_client(), binary() | list(), binary() | list(), disassociate_phone_number_from_user_request()) ->
    {ok, disassociate_phone_number_from_user_response(), tuple()} |
    {error, any()} |
    {error, disassociate_phone_number_from_user_errors(), tuple()}.
disassociate_phone_number_from_user(Client, AccountId, UserId, Input) ->
    disassociate_phone_number_from_user(Client, AccountId, UserId, Input, []).

-spec disassociate_phone_number_from_user(aws_client:aws_client(), binary() | list(), binary() | list(), disassociate_phone_number_from_user_request(), proplists:proplist()) ->
    {ok, disassociate_phone_number_from_user_response(), tuple()} |
    {error, any()} |
    {error, disassociate_phone_number_from_user_errors(), tuple()}.
disassociate_phone_number_from_user(Client, AccountId, UserId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AccountId), "/users/", aws_util:encode_uri(UserId), "?operation=disassociate-phone-number"],
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

%% @doc Disassociates the specified phone numbers from the specified Amazon
%% Chime Voice Connector.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, DisassociatePhoneNumbersFromVoiceConnector:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_DisassociatePhoneNumbersFromVoiceConnector.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec disassociate_phone_numbers_from_voice_connector(aws_client:aws_client(), binary() | list(), disassociate_phone_numbers_from_voice_connector_request()) ->
    {ok, disassociate_phone_numbers_from_voice_connector_response(), tuple()} |
    {error, any()} |
    {error, disassociate_phone_numbers_from_voice_connector_errors(), tuple()}.
disassociate_phone_numbers_from_voice_connector(Client, VoiceConnectorId, Input) ->
    disassociate_phone_numbers_from_voice_connector(Client, VoiceConnectorId, Input, []).

-spec disassociate_phone_numbers_from_voice_connector(aws_client:aws_client(), binary() | list(), disassociate_phone_numbers_from_voice_connector_request(), proplists:proplist()) ->
    {ok, disassociate_phone_numbers_from_voice_connector_response(), tuple()} |
    {error, any()} |
    {error, disassociate_phone_numbers_from_voice_connector_errors(), tuple()}.
disassociate_phone_numbers_from_voice_connector(Client, VoiceConnectorId, Input0, Options0) ->
    Method = post,
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "?operation=disassociate-phone-numbers"],
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

%% @doc Disassociates the specified phone numbers from the specified Amazon
%% Chime Voice Connector group.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, DisassociatePhoneNumbersFromVoiceConnectorGroup:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_DisassociatePhoneNumbersFromVoiceConnectorGroup.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec disassociate_phone_numbers_from_voice_connector_group(aws_client:aws_client(), binary() | list(), disassociate_phone_numbers_from_voice_connector_group_request()) ->
    {ok, disassociate_phone_numbers_from_voice_connector_group_response(), tuple()} |
    {error, any()} |
    {error, disassociate_phone_numbers_from_voice_connector_group_errors(), tuple()}.
disassociate_phone_numbers_from_voice_connector_group(Client, VoiceConnectorGroupId, Input) ->
    disassociate_phone_numbers_from_voice_connector_group(Client, VoiceConnectorGroupId, Input, []).

-spec disassociate_phone_numbers_from_voice_connector_group(aws_client:aws_client(), binary() | list(), disassociate_phone_numbers_from_voice_connector_group_request(), proplists:proplist()) ->
    {ok, disassociate_phone_numbers_from_voice_connector_group_response(), tuple()} |
    {error, any()} |
    {error, disassociate_phone_numbers_from_voice_connector_group_errors(), tuple()}.
disassociate_phone_numbers_from_voice_connector_group(Client, VoiceConnectorGroupId, Input0, Options0) ->
    Method = post,
    Path = ["/voice-connector-groups/", aws_util:encode_uri(VoiceConnectorGroupId), "?operation=disassociate-phone-numbers"],
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

%% @doc Disassociates the specified sign-in delegate groups from the
%% specified Amazon Chime account.
-spec disassociate_signin_delegate_groups_from_account(aws_client:aws_client(), binary() | list(), disassociate_signin_delegate_groups_from_account_request()) ->
    {ok, disassociate_signin_delegate_groups_from_account_response(), tuple()} |
    {error, any()} |
    {error, disassociate_signin_delegate_groups_from_account_errors(), tuple()}.
disassociate_signin_delegate_groups_from_account(Client, AccountId, Input) ->
    disassociate_signin_delegate_groups_from_account(Client, AccountId, Input, []).

-spec disassociate_signin_delegate_groups_from_account(aws_client:aws_client(), binary() | list(), disassociate_signin_delegate_groups_from_account_request(), proplists:proplist()) ->
    {ok, disassociate_signin_delegate_groups_from_account_response(), tuple()} |
    {error, any()} |
    {error, disassociate_signin_delegate_groups_from_account_errors(), tuple()}.
disassociate_signin_delegate_groups_from_account(Client, AccountId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AccountId), "?operation=disassociate-signin-delegate-groups"],
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

%% @doc Retrieves details for the specified Amazon Chime account, such as
%% account type and supported
%% licenses.
-spec get_account(aws_client:aws_client(), binary() | list()) ->
    {ok, get_account_response(), tuple()} |
    {error, any()} |
    {error, get_account_errors(), tuple()}.
get_account(Client, AccountId)
  when is_map(Client) ->
    get_account(Client, AccountId, #{}, #{}).

-spec get_account(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_account_response(), tuple()} |
    {error, any()} |
    {error, get_account_errors(), tuple()}.
get_account(Client, AccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_account(Client, AccountId, QueryMap, HeadersMap, []).

-spec get_account(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_account_response(), tuple()} |
    {error, any()} |
    {error, get_account_errors(), tuple()}.
get_account(Client, AccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AccountId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves account settings for the specified Amazon Chime account ID,
%% such as remote control
%% and dialout settings.
%%
%% For more information about these settings, see
%% Use the Policies Page:
%% https://docs.aws.amazon.com/chime/latest/ag/policies.html in the Amazon
%% Chime Administration Guide.
-spec get_account_settings(aws_client:aws_client(), binary() | list()) ->
    {ok, get_account_settings_response(), tuple()} |
    {error, any()} |
    {error, get_account_settings_errors(), tuple()}.
get_account_settings(Client, AccountId)
  when is_map(Client) ->
    get_account_settings(Client, AccountId, #{}, #{}).

-spec get_account_settings(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_account_settings_response(), tuple()} |
    {error, any()} |
    {error, get_account_settings_errors(), tuple()}.
get_account_settings(Client, AccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_account_settings(Client, AccountId, QueryMap, HeadersMap, []).

-spec get_account_settings(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_account_settings_response(), tuple()} |
    {error, any()} |
    {error, get_account_settings_errors(), tuple()}.
get_account_settings(Client, AccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AccountId), "/settings"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the retention settings for an `AppInstance'.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, GetMessagingRetentionSettings:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_identity-chime_GetAppInstanceRetentionSettings.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec get_app_instance_retention_settings(aws_client:aws_client(), binary() | list()) ->
    {ok, get_app_instance_retention_settings_response(), tuple()} |
    {error, any()} |
    {error, get_app_instance_retention_settings_errors(), tuple()}.
get_app_instance_retention_settings(Client, AppInstanceArn)
  when is_map(Client) ->
    get_app_instance_retention_settings(Client, AppInstanceArn, #{}, #{}).

-spec get_app_instance_retention_settings(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_app_instance_retention_settings_response(), tuple()} |
    {error, any()} |
    {error, get_app_instance_retention_settings_errors(), tuple()}.
get_app_instance_retention_settings(Client, AppInstanceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_app_instance_retention_settings(Client, AppInstanceArn, QueryMap, HeadersMap, []).

-spec get_app_instance_retention_settings(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_app_instance_retention_settings_response(), tuple()} |
    {error, any()} |
    {error, get_app_instance_retention_settings_errors(), tuple()}.
get_app_instance_retention_settings(Client, AppInstanceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/app-instances/", aws_util:encode_uri(AppInstanceArn), "/retention-settings"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the streaming settings for an `AppInstance'.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, GetMessagingStreamingConfigurations:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_messaging-chime_GetMessagingStreamingConfigurations.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec get_app_instance_streaming_configurations(aws_client:aws_client(), binary() | list()) ->
    {ok, get_app_instance_streaming_configurations_response(), tuple()} |
    {error, any()} |
    {error, get_app_instance_streaming_configurations_errors(), tuple()}.
get_app_instance_streaming_configurations(Client, AppInstanceArn)
  when is_map(Client) ->
    get_app_instance_streaming_configurations(Client, AppInstanceArn, #{}, #{}).

-spec get_app_instance_streaming_configurations(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_app_instance_streaming_configurations_response(), tuple()} |
    {error, any()} |
    {error, get_app_instance_streaming_configurations_errors(), tuple()}.
get_app_instance_streaming_configurations(Client, AppInstanceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_app_instance_streaming_configurations(Client, AppInstanceArn, QueryMap, HeadersMap, []).

-spec get_app_instance_streaming_configurations(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_app_instance_streaming_configurations_response(), tuple()} |
    {error, any()} |
    {error, get_app_instance_streaming_configurations_errors(), tuple()}.
get_app_instance_streaming_configurations(Client, AppInstanceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/app-instances/", aws_util:encode_uri(AppInstanceArn), "/streaming-configurations"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc
%% Gets the Amazon Chime SDK attendee details for a specified meeting ID and
%% attendee ID.
%%
%% For more information about the Amazon Chime SDK, see
%% Using the Amazon Chime SDK:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/meetings-sdk.html
%% in the Amazon Chime SDK Developer Guide.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, GetAttendee:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_meeting-chime_GetAttendee.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec get_attendee(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_attendee_response(), tuple()} |
    {error, any()} |
    {error, get_attendee_errors(), tuple()}.
get_attendee(Client, AttendeeId, MeetingId)
  when is_map(Client) ->
    get_attendee(Client, AttendeeId, MeetingId, #{}, #{}).

-spec get_attendee(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_attendee_response(), tuple()} |
    {error, any()} |
    {error, get_attendee_errors(), tuple()}.
get_attendee(Client, AttendeeId, MeetingId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_attendee(Client, AttendeeId, MeetingId, QueryMap, HeadersMap, []).

-spec get_attendee(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_attendee_response(), tuple()} |
    {error, any()} |
    {error, get_attendee_errors(), tuple()}.
get_attendee(Client, AttendeeId, MeetingId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/meetings/", aws_util:encode_uri(MeetingId), "/attendees/", aws_util:encode_uri(AttendeeId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves details for the specified bot, such as bot email address,
%% bot type, status, and display name.
-spec get_bot(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_bot_response(), tuple()} |
    {error, any()} |
    {error, get_bot_errors(), tuple()}.
get_bot(Client, AccountId, BotId)
  when is_map(Client) ->
    get_bot(Client, AccountId, BotId, #{}, #{}).

-spec get_bot(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_bot_response(), tuple()} |
    {error, any()} |
    {error, get_bot_errors(), tuple()}.
get_bot(Client, AccountId, BotId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_bot(Client, AccountId, BotId, QueryMap, HeadersMap, []).

-spec get_bot(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_bot_response(), tuple()} |
    {error, any()} |
    {error, get_bot_errors(), tuple()}.
get_bot(Client, AccountId, BotId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AccountId), "/bots/", aws_util:encode_uri(BotId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the full details of a channel message.
%%
%% The x-amz-chime-bearer request header is mandatory. Use the
%% `AppInstanceUserArn' of the user that makes the API call as the value
%% in
%% the header.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, GetChannelMessage:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_messaging-chime_GetChannelMessage.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec get_channel_message(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_channel_message_response(), tuple()} |
    {error, any()} |
    {error, get_channel_message_errors(), tuple()}.
get_channel_message(Client, ChannelArn, MessageId)
  when is_map(Client) ->
    get_channel_message(Client, ChannelArn, MessageId, #{}, #{}).

-spec get_channel_message(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_channel_message_response(), tuple()} |
    {error, any()} |
    {error, get_channel_message_errors(), tuple()}.
get_channel_message(Client, ChannelArn, MessageId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_channel_message(Client, ChannelArn, MessageId, QueryMap, HeadersMap, []).

-spec get_channel_message(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_channel_message_response(), tuple()} |
    {error, any()} |
    {error, get_channel_message_errors(), tuple()}.
get_channel_message(Client, ChannelArn, MessageId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/channels/", aws_util:encode_uri(ChannelArn), "/messages/", aws_util:encode_uri(MessageId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers0 =
      [
        {<<"x-amz-chime-bearer">>, maps:get(<<"x-amz-chime-bearer">>, HeadersMap, undefined)}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets details for an events configuration that allows a bot to receive
%% outgoing events, such as an HTTPS endpoint or Lambda function ARN.
-spec get_events_configuration(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_events_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_events_configuration_errors(), tuple()}.
get_events_configuration(Client, AccountId, BotId)
  when is_map(Client) ->
    get_events_configuration(Client, AccountId, BotId, #{}, #{}).

-spec get_events_configuration(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_events_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_events_configuration_errors(), tuple()}.
get_events_configuration(Client, AccountId, BotId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_events_configuration(Client, AccountId, BotId, QueryMap, HeadersMap, []).

-spec get_events_configuration(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_events_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_events_configuration_errors(), tuple()}.
get_events_configuration(Client, AccountId, BotId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AccountId), "/bots/", aws_util:encode_uri(BotId), "/events-configuration"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves global settings for the administrator's AWS account,
%% such as Amazon Chime Business
%% Calling and Amazon Chime Voice Connector settings.
-spec get_global_settings(aws_client:aws_client()) ->
    {ok, get_global_settings_response(), tuple()} |
    {error, any()} |
    {error, get_global_settings_errors(), tuple()}.
get_global_settings(Client)
  when is_map(Client) ->
    get_global_settings(Client, #{}, #{}).

-spec get_global_settings(aws_client:aws_client(), map(), map()) ->
    {ok, get_global_settings_response(), tuple()} |
    {error, any()} |
    {error, get_global_settings_errors(), tuple()}.
get_global_settings(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_global_settings(Client, QueryMap, HeadersMap, []).

-spec get_global_settings(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, get_global_settings_response(), tuple()} |
    {error, any()} |
    {error, get_global_settings_errors(), tuple()}.
get_global_settings(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/settings"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets an existing media capture pipeline.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version,
%% GetMediaCapturePipeline:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_media-pipelines-chime_GetMediaCapturePipeline.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec get_media_capture_pipeline(aws_client:aws_client(), binary() | list()) ->
    {ok, get_media_capture_pipeline_response(), tuple()} |
    {error, any()} |
    {error, get_media_capture_pipeline_errors(), tuple()}.
get_media_capture_pipeline(Client, MediaPipelineId)
  when is_map(Client) ->
    get_media_capture_pipeline(Client, MediaPipelineId, #{}, #{}).

-spec get_media_capture_pipeline(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_media_capture_pipeline_response(), tuple()} |
    {error, any()} |
    {error, get_media_capture_pipeline_errors(), tuple()}.
get_media_capture_pipeline(Client, MediaPipelineId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_media_capture_pipeline(Client, MediaPipelineId, QueryMap, HeadersMap, []).

-spec get_media_capture_pipeline(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_media_capture_pipeline_response(), tuple()} |
    {error, any()} |
    {error, get_media_capture_pipeline_errors(), tuple()}.
get_media_capture_pipeline(Client, MediaPipelineId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/media-capture-pipelines/", aws_util:encode_uri(MediaPipelineId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc
%%
%% This API is is no longer supported and will not be updated.
%%
%% We recommend using the latest version, GetMeeting:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_meeting-chime_GetMeeting.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
%%
%% Gets the Amazon Chime SDK meeting details for the specified meeting ID.
%% For more information about the Amazon Chime SDK, see
%% Using the Amazon Chime SDK:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/meetings-sdk.html
%% in the
%% Amazon Chime SDK Developer Guide
%% .
-spec get_meeting(aws_client:aws_client(), binary() | list()) ->
    {ok, get_meeting_response(), tuple()} |
    {error, any()} |
    {error, get_meeting_errors(), tuple()}.
get_meeting(Client, MeetingId)
  when is_map(Client) ->
    get_meeting(Client, MeetingId, #{}, #{}).

-spec get_meeting(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_meeting_response(), tuple()} |
    {error, any()} |
    {error, get_meeting_errors(), tuple()}.
get_meeting(Client, MeetingId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_meeting(Client, MeetingId, QueryMap, HeadersMap, []).

-spec get_meeting(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_meeting_response(), tuple()} |
    {error, any()} |
    {error, get_meeting_errors(), tuple()}.
get_meeting(Client, MeetingId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/meetings/", aws_util:encode_uri(MeetingId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc The details of the endpoint for the messaging session.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, GetMessagingSessionEndpoint:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_messaging-chime_GetMessagingSessionEndpoint.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec get_messaging_session_endpoint(aws_client:aws_client()) ->
    {ok, get_messaging_session_endpoint_response(), tuple()} |
    {error, any()} |
    {error, get_messaging_session_endpoint_errors(), tuple()}.
get_messaging_session_endpoint(Client)
  when is_map(Client) ->
    get_messaging_session_endpoint(Client, #{}, #{}).

-spec get_messaging_session_endpoint(aws_client:aws_client(), map(), map()) ->
    {ok, get_messaging_session_endpoint_response(), tuple()} |
    {error, any()} |
    {error, get_messaging_session_endpoint_errors(), tuple()}.
get_messaging_session_endpoint(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_messaging_session_endpoint(Client, QueryMap, HeadersMap, []).

-spec get_messaging_session_endpoint(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, get_messaging_session_endpoint_response(), tuple()} |
    {error, any()} |
    {error, get_messaging_session_endpoint_errors(), tuple()}.
get_messaging_session_endpoint(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/endpoints/messaging-session"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves details for the specified phone number ID, such as
%% associations, capabilities, and product type.
-spec get_phone_number(aws_client:aws_client(), binary() | list()) ->
    {ok, get_phone_number_response(), tuple()} |
    {error, any()} |
    {error, get_phone_number_errors(), tuple()}.
get_phone_number(Client, PhoneNumberId)
  when is_map(Client) ->
    get_phone_number(Client, PhoneNumberId, #{}, #{}).

-spec get_phone_number(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_phone_number_response(), tuple()} |
    {error, any()} |
    {error, get_phone_number_errors(), tuple()}.
get_phone_number(Client, PhoneNumberId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_phone_number(Client, PhoneNumberId, QueryMap, HeadersMap, []).

-spec get_phone_number(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_phone_number_response(), tuple()} |
    {error, any()} |
    {error, get_phone_number_errors(), tuple()}.
get_phone_number(Client, PhoneNumberId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/phone-numbers/", aws_util:encode_uri(PhoneNumberId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves details for the specified phone number order, such as the
%% order creation timestamp, phone
%% numbers in E.164 format, product type, and order status.
-spec get_phone_number_order(aws_client:aws_client(), binary() | list()) ->
    {ok, get_phone_number_order_response(), tuple()} |
    {error, any()} |
    {error, get_phone_number_order_errors(), tuple()}.
get_phone_number_order(Client, PhoneNumberOrderId)
  when is_map(Client) ->
    get_phone_number_order(Client, PhoneNumberOrderId, #{}, #{}).

-spec get_phone_number_order(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_phone_number_order_response(), tuple()} |
    {error, any()} |
    {error, get_phone_number_order_errors(), tuple()}.
get_phone_number_order(Client, PhoneNumberOrderId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_phone_number_order(Client, PhoneNumberOrderId, QueryMap, HeadersMap, []).

-spec get_phone_number_order(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_phone_number_order_response(), tuple()} |
    {error, any()} |
    {error, get_phone_number_order_errors(), tuple()}.
get_phone_number_order(Client, PhoneNumberOrderId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/phone-number-orders/", aws_util:encode_uri(PhoneNumberOrderId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the phone number settings for the administrator's AWS
%% account, such as the default outbound calling name.
-spec get_phone_number_settings(aws_client:aws_client()) ->
    {ok, get_phone_number_settings_response(), tuple()} |
    {error, any()} |
    {error, get_phone_number_settings_errors(), tuple()}.
get_phone_number_settings(Client)
  when is_map(Client) ->
    get_phone_number_settings(Client, #{}, #{}).

-spec get_phone_number_settings(aws_client:aws_client(), map(), map()) ->
    {ok, get_phone_number_settings_response(), tuple()} |
    {error, any()} |
    {error, get_phone_number_settings_errors(), tuple()}.
get_phone_number_settings(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_phone_number_settings(Client, QueryMap, HeadersMap, []).

-spec get_phone_number_settings(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, get_phone_number_settings_response(), tuple()} |
    {error, any()} |
    {error, get_phone_number_settings_errors(), tuple()}.
get_phone_number_settings(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/settings/phone-number"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the specified proxy session details for the specified Amazon
%% Chime Voice Connector.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, GetProxySession:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_GetProxySession.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec get_proxy_session(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_proxy_session_response(), tuple()} |
    {error, any()} |
    {error, get_proxy_session_errors(), tuple()}.
get_proxy_session(Client, ProxySessionId, VoiceConnectorId)
  when is_map(Client) ->
    get_proxy_session(Client, ProxySessionId, VoiceConnectorId, #{}, #{}).

-spec get_proxy_session(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_proxy_session_response(), tuple()} |
    {error, any()} |
    {error, get_proxy_session_errors(), tuple()}.
get_proxy_session(Client, ProxySessionId, VoiceConnectorId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_proxy_session(Client, ProxySessionId, VoiceConnectorId, QueryMap, HeadersMap, []).

-spec get_proxy_session(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_proxy_session_response(), tuple()} |
    {error, any()} |
    {error, get_proxy_session_errors(), tuple()}.
get_proxy_session(Client, ProxySessionId, VoiceConnectorId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/proxy-sessions/", aws_util:encode_uri(ProxySessionId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc
%% Gets the retention settings for the specified Amazon Chime Enterprise
%% account.
%%
%% For more information about retention settings, see
%% Managing Chat Retention Policies:
%% https://docs.aws.amazon.com/chime/latest/ag/chat-retention.html in the
%% Amazon Chime Administration Guide.
-spec get_retention_settings(aws_client:aws_client(), binary() | list()) ->
    {ok, get_retention_settings_response(), tuple()} |
    {error, any()} |
    {error, get_retention_settings_errors(), tuple()}.
get_retention_settings(Client, AccountId)
  when is_map(Client) ->
    get_retention_settings(Client, AccountId, #{}, #{}).

-spec get_retention_settings(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_retention_settings_response(), tuple()} |
    {error, any()} |
    {error, get_retention_settings_errors(), tuple()}.
get_retention_settings(Client, AccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_retention_settings(Client, AccountId, QueryMap, HeadersMap, []).

-spec get_retention_settings(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_retention_settings_response(), tuple()} |
    {error, any()} |
    {error, get_retention_settings_errors(), tuple()}.
get_retention_settings(Client, AccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AccountId), "/retention-settings"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves room details, such as the room name, for a room in an
%% Amazon Chime Enterprise account.
-spec get_room(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_room_response(), tuple()} |
    {error, any()} |
    {error, get_room_errors(), tuple()}.
get_room(Client, AccountId, RoomId)
  when is_map(Client) ->
    get_room(Client, AccountId, RoomId, #{}, #{}).

-spec get_room(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_room_response(), tuple()} |
    {error, any()} |
    {error, get_room_errors(), tuple()}.
get_room(Client, AccountId, RoomId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_room(Client, AccountId, RoomId, QueryMap, HeadersMap, []).

-spec get_room(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_room_response(), tuple()} |
    {error, any()} |
    {error, get_room_errors(), tuple()}.
get_room(Client, AccountId, RoomId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AccountId), "/rooms/", aws_util:encode_uri(RoomId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the information for a SIP media application, including
%% name, AWS Region, and endpoints.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, GetSipMediaApplication:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_GetSipMediaApplication.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec get_sip_media_application(aws_client:aws_client(), binary() | list()) ->
    {ok, get_sip_media_application_response(), tuple()} |
    {error, any()} |
    {error, get_sip_media_application_errors(), tuple()}.
get_sip_media_application(Client, SipMediaApplicationId)
  when is_map(Client) ->
    get_sip_media_application(Client, SipMediaApplicationId, #{}, #{}).

-spec get_sip_media_application(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_sip_media_application_response(), tuple()} |
    {error, any()} |
    {error, get_sip_media_application_errors(), tuple()}.
get_sip_media_application(Client, SipMediaApplicationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_sip_media_application(Client, SipMediaApplicationId, QueryMap, HeadersMap, []).

-spec get_sip_media_application(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_sip_media_application_response(), tuple()} |
    {error, any()} |
    {error, get_sip_media_application_errors(), tuple()}.
get_sip_media_application(Client, SipMediaApplicationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/sip-media-applications/", aws_util:encode_uri(SipMediaApplicationId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the logging configuration for the specified SIP media
%% application.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, GetSipMediaApplicationLoggingConfiguration:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_GetSipMediaApplicationLoggingConfiguration.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec get_sip_media_application_logging_configuration(aws_client:aws_client(), binary() | list()) ->
    {ok, get_sip_media_application_logging_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_sip_media_application_logging_configuration_errors(), tuple()}.
get_sip_media_application_logging_configuration(Client, SipMediaApplicationId)
  when is_map(Client) ->
    get_sip_media_application_logging_configuration(Client, SipMediaApplicationId, #{}, #{}).

-spec get_sip_media_application_logging_configuration(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_sip_media_application_logging_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_sip_media_application_logging_configuration_errors(), tuple()}.
get_sip_media_application_logging_configuration(Client, SipMediaApplicationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_sip_media_application_logging_configuration(Client, SipMediaApplicationId, QueryMap, HeadersMap, []).

-spec get_sip_media_application_logging_configuration(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_sip_media_application_logging_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_sip_media_application_logging_configuration_errors(), tuple()}.
get_sip_media_application_logging_configuration(Client, SipMediaApplicationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/sip-media-applications/", aws_util:encode_uri(SipMediaApplicationId), "/logging-configuration"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the details of a SIP rule, such as the rule ID, name,
%% triggers, and target endpoints.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, GetSipRule:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_GetSipRule.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec get_sip_rule(aws_client:aws_client(), binary() | list()) ->
    {ok, get_sip_rule_response(), tuple()} |
    {error, any()} |
    {error, get_sip_rule_errors(), tuple()}.
get_sip_rule(Client, SipRuleId)
  when is_map(Client) ->
    get_sip_rule(Client, SipRuleId, #{}, #{}).

-spec get_sip_rule(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_sip_rule_response(), tuple()} |
    {error, any()} |
    {error, get_sip_rule_errors(), tuple()}.
get_sip_rule(Client, SipRuleId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_sip_rule(Client, SipRuleId, QueryMap, HeadersMap, []).

-spec get_sip_rule(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_sip_rule_response(), tuple()} |
    {error, any()} |
    {error, get_sip_rule_errors(), tuple()}.
get_sip_rule(Client, SipRuleId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/sip-rules/", aws_util:encode_uri(SipRuleId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves details for the specified user ID, such as primary email
%% address, license type,and personal meeting PIN.
%%
%% To retrieve user details with an email address instead of a user ID, use
%% the
%% `ListUsers' action, and then filter by email address.
-spec get_user(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_user_response(), tuple()} |
    {error, any()} |
    {error, get_user_errors(), tuple()}.
get_user(Client, AccountId, UserId)
  when is_map(Client) ->
    get_user(Client, AccountId, UserId, #{}, #{}).

-spec get_user(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_user_response(), tuple()} |
    {error, any()} |
    {error, get_user_errors(), tuple()}.
get_user(Client, AccountId, UserId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_user(Client, AccountId, UserId, QueryMap, HeadersMap, []).

-spec get_user(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_user_response(), tuple()} |
    {error, any()} |
    {error, get_user_errors(), tuple()}.
get_user(Client, AccountId, UserId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AccountId), "/users/", aws_util:encode_uri(UserId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves settings for the specified user ID, such as any associated
%% phone number settings.
-spec get_user_settings(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_user_settings_response(), tuple()} |
    {error, any()} |
    {error, get_user_settings_errors(), tuple()}.
get_user_settings(Client, AccountId, UserId)
  when is_map(Client) ->
    get_user_settings(Client, AccountId, UserId, #{}, #{}).

-spec get_user_settings(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_user_settings_response(), tuple()} |
    {error, any()} |
    {error, get_user_settings_errors(), tuple()}.
get_user_settings(Client, AccountId, UserId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_user_settings(Client, AccountId, UserId, QueryMap, HeadersMap, []).

-spec get_user_settings(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_user_settings_response(), tuple()} |
    {error, any()} |
    {error, get_user_settings_errors(), tuple()}.
get_user_settings(Client, AccountId, UserId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AccountId), "/users/", aws_util:encode_uri(UserId), "/settings"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves details for the specified Amazon Chime Voice Connector,
%% such as timestamps,name, outbound host, and encryption requirements.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, GetVoiceConnector:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_GetVoiceConnector.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec get_voice_connector(aws_client:aws_client(), binary() | list()) ->
    {ok, get_voice_connector_response(), tuple()} |
    {error, any()} |
    {error, get_voice_connector_errors(), tuple()}.
get_voice_connector(Client, VoiceConnectorId)
  when is_map(Client) ->
    get_voice_connector(Client, VoiceConnectorId, #{}, #{}).

-spec get_voice_connector(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_voice_connector_response(), tuple()} |
    {error, any()} |
    {error, get_voice_connector_errors(), tuple()}.
get_voice_connector(Client, VoiceConnectorId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_voice_connector(Client, VoiceConnectorId, QueryMap, HeadersMap, []).

-spec get_voice_connector(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_voice_connector_response(), tuple()} |
    {error, any()} |
    {error, get_voice_connector_errors(), tuple()}.
get_voice_connector(Client, VoiceConnectorId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the emergency calling configuration details for the specified
%% Amazon Chime Voice Connector.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, GetVoiceConnectorEmergencyCallingConfiguration:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_GetVoiceConnectorEmergencyCallingConfiguration.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec get_voice_connector_emergency_calling_configuration(aws_client:aws_client(), binary() | list()) ->
    {ok, get_voice_connector_emergency_calling_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_voice_connector_emergency_calling_configuration_errors(), tuple()}.
get_voice_connector_emergency_calling_configuration(Client, VoiceConnectorId)
  when is_map(Client) ->
    get_voice_connector_emergency_calling_configuration(Client, VoiceConnectorId, #{}, #{}).

-spec get_voice_connector_emergency_calling_configuration(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_voice_connector_emergency_calling_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_voice_connector_emergency_calling_configuration_errors(), tuple()}.
get_voice_connector_emergency_calling_configuration(Client, VoiceConnectorId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_voice_connector_emergency_calling_configuration(Client, VoiceConnectorId, QueryMap, HeadersMap, []).

-spec get_voice_connector_emergency_calling_configuration(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_voice_connector_emergency_calling_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_voice_connector_emergency_calling_configuration_errors(), tuple()}.
get_voice_connector_emergency_calling_configuration(Client, VoiceConnectorId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/emergency-calling-configuration"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc
%% Retrieves details for the specified Amazon Chime Voice Connector group,
%% such as timestamps,name, and associated `VoiceConnectorItems'.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, GetVoiceConnectorGroup:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_GetVoiceConnectorGroup.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec get_voice_connector_group(aws_client:aws_client(), binary() | list()) ->
    {ok, get_voice_connector_group_response(), tuple()} |
    {error, any()} |
    {error, get_voice_connector_group_errors(), tuple()}.
get_voice_connector_group(Client, VoiceConnectorGroupId)
  when is_map(Client) ->
    get_voice_connector_group(Client, VoiceConnectorGroupId, #{}, #{}).

-spec get_voice_connector_group(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_voice_connector_group_response(), tuple()} |
    {error, any()} |
    {error, get_voice_connector_group_errors(), tuple()}.
get_voice_connector_group(Client, VoiceConnectorGroupId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_voice_connector_group(Client, VoiceConnectorGroupId, QueryMap, HeadersMap, []).

-spec get_voice_connector_group(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_voice_connector_group_response(), tuple()} |
    {error, any()} |
    {error, get_voice_connector_group_errors(), tuple()}.
get_voice_connector_group(Client, VoiceConnectorGroupId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/voice-connector-groups/", aws_util:encode_uri(VoiceConnectorGroupId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the logging configuration details for the specified Amazon
%% Chime Voice Connector.
%%
%% Shows whether SIP message logs are enabled for sending to
%% Amazon CloudWatch Logs.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, GetVoiceConnectorLoggingConfiguration:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_GetVoiceConnectorLoggingConfiguration.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec get_voice_connector_logging_configuration(aws_client:aws_client(), binary() | list()) ->
    {ok, get_voice_connector_logging_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_voice_connector_logging_configuration_errors(), tuple()}.
get_voice_connector_logging_configuration(Client, VoiceConnectorId)
  when is_map(Client) ->
    get_voice_connector_logging_configuration(Client, VoiceConnectorId, #{}, #{}).

-spec get_voice_connector_logging_configuration(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_voice_connector_logging_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_voice_connector_logging_configuration_errors(), tuple()}.
get_voice_connector_logging_configuration(Client, VoiceConnectorId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_voice_connector_logging_configuration(Client, VoiceConnectorId, QueryMap, HeadersMap, []).

-spec get_voice_connector_logging_configuration(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_voice_connector_logging_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_voice_connector_logging_configuration_errors(), tuple()}.
get_voice_connector_logging_configuration(Client, VoiceConnectorId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/logging-configuration"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves origination setting details for the specified Amazon Chime
%% Voice Connector.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, GetVoiceConnectorOrigination:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_GetVoiceConnectorOrigination.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec get_voice_connector_origination(aws_client:aws_client(), binary() | list()) ->
    {ok, get_voice_connector_origination_response(), tuple()} |
    {error, any()} |
    {error, get_voice_connector_origination_errors(), tuple()}.
get_voice_connector_origination(Client, VoiceConnectorId)
  when is_map(Client) ->
    get_voice_connector_origination(Client, VoiceConnectorId, #{}, #{}).

-spec get_voice_connector_origination(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_voice_connector_origination_response(), tuple()} |
    {error, any()} |
    {error, get_voice_connector_origination_errors(), tuple()}.
get_voice_connector_origination(Client, VoiceConnectorId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_voice_connector_origination(Client, VoiceConnectorId, QueryMap, HeadersMap, []).

-spec get_voice_connector_origination(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_voice_connector_origination_response(), tuple()} |
    {error, any()} |
    {error, get_voice_connector_origination_errors(), tuple()}.
get_voice_connector_origination(Client, VoiceConnectorId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/origination"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the proxy configuration details for the specified Amazon Chime
%% Voice Connector.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, GetVoiceConnectorProxy:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_GetVoiceConnectorProxy.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec get_voice_connector_proxy(aws_client:aws_client(), binary() | list()) ->
    {ok, get_voice_connector_proxy_response(), tuple()} |
    {error, any()} |
    {error, get_voice_connector_proxy_errors(), tuple()}.
get_voice_connector_proxy(Client, VoiceConnectorId)
  when is_map(Client) ->
    get_voice_connector_proxy(Client, VoiceConnectorId, #{}, #{}).

-spec get_voice_connector_proxy(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_voice_connector_proxy_response(), tuple()} |
    {error, any()} |
    {error, get_voice_connector_proxy_errors(), tuple()}.
get_voice_connector_proxy(Client, VoiceConnectorId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_voice_connector_proxy(Client, VoiceConnectorId, QueryMap, HeadersMap, []).

-spec get_voice_connector_proxy(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_voice_connector_proxy_response(), tuple()} |
    {error, any()} |
    {error, get_voice_connector_proxy_errors(), tuple()}.
get_voice_connector_proxy(Client, VoiceConnectorId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/programmable-numbers/proxy"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the streaming configuration details for the specified
%% Amazon Chime Voice Connector.
%%
%% Shows whether media streaming is enabled for sending to Amazon Kinesis. It
%% also shows
%% the retention period, in hours, for the Amazon Kinesis data.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, GetVoiceConnectorStreamingConfiguration:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_GetVoiceConnectorStreamingConfiguration.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec get_voice_connector_streaming_configuration(aws_client:aws_client(), binary() | list()) ->
    {ok, get_voice_connector_streaming_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_voice_connector_streaming_configuration_errors(), tuple()}.
get_voice_connector_streaming_configuration(Client, VoiceConnectorId)
  when is_map(Client) ->
    get_voice_connector_streaming_configuration(Client, VoiceConnectorId, #{}, #{}).

-spec get_voice_connector_streaming_configuration(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_voice_connector_streaming_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_voice_connector_streaming_configuration_errors(), tuple()}.
get_voice_connector_streaming_configuration(Client, VoiceConnectorId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_voice_connector_streaming_configuration(Client, VoiceConnectorId, QueryMap, HeadersMap, []).

-spec get_voice_connector_streaming_configuration(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_voice_connector_streaming_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_voice_connector_streaming_configuration_errors(), tuple()}.
get_voice_connector_streaming_configuration(Client, VoiceConnectorId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/streaming-configuration"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves termination setting details for the specified Amazon Chime
%% Voice Connector.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, GetVoiceConnectorTermination:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_GetVoiceConnectorTermination.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec get_voice_connector_termination(aws_client:aws_client(), binary() | list()) ->
    {ok, get_voice_connector_termination_response(), tuple()} |
    {error, any()} |
    {error, get_voice_connector_termination_errors(), tuple()}.
get_voice_connector_termination(Client, VoiceConnectorId)
  when is_map(Client) ->
    get_voice_connector_termination(Client, VoiceConnectorId, #{}, #{}).

-spec get_voice_connector_termination(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_voice_connector_termination_response(), tuple()} |
    {error, any()} |
    {error, get_voice_connector_termination_errors(), tuple()}.
get_voice_connector_termination(Client, VoiceConnectorId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_voice_connector_termination(Client, VoiceConnectorId, QueryMap, HeadersMap, []).

-spec get_voice_connector_termination(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_voice_connector_termination_response(), tuple()} |
    {error, any()} |
    {error, get_voice_connector_termination_errors(), tuple()}.
get_voice_connector_termination(Client, VoiceConnectorId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/termination"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc
%%
%% This API is is no longer supported and will not be updated.
%%
%% We recommend using the latest version, GetVoiceConnectorTerminationHealth:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_GetVoiceConnectorTerminationHealth.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
%%
%% Retrieves information about the last time a SIP `OPTIONS' ping was
%% received from
%% your SIP infrastructure for the specified Amazon Chime Voice Connector.
-spec get_voice_connector_termination_health(aws_client:aws_client(), binary() | list()) ->
    {ok, get_voice_connector_termination_health_response(), tuple()} |
    {error, any()} |
    {error, get_voice_connector_termination_health_errors(), tuple()}.
get_voice_connector_termination_health(Client, VoiceConnectorId)
  when is_map(Client) ->
    get_voice_connector_termination_health(Client, VoiceConnectorId, #{}, #{}).

-spec get_voice_connector_termination_health(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_voice_connector_termination_health_response(), tuple()} |
    {error, any()} |
    {error, get_voice_connector_termination_health_errors(), tuple()}.
get_voice_connector_termination_health(Client, VoiceConnectorId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_voice_connector_termination_health(Client, VoiceConnectorId, QueryMap, HeadersMap, []).

-spec get_voice_connector_termination_health(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_voice_connector_termination_health_response(), tuple()} |
    {error, any()} |
    {error, get_voice_connector_termination_health_errors(), tuple()}.
get_voice_connector_termination_health(Client, VoiceConnectorId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/termination/health"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Sends email to a maximum of 50 users, inviting them to the specified
%% Amazon Chime
%% `Team' account.
%%
%% Only `Team' account types are currently
%% supported for this action.
-spec invite_users(aws_client:aws_client(), binary() | list(), invite_users_request()) ->
    {ok, invite_users_response(), tuple()} |
    {error, any()} |
    {error, invite_users_errors(), tuple()}.
invite_users(Client, AccountId, Input) ->
    invite_users(Client, AccountId, Input, []).

-spec invite_users(aws_client:aws_client(), binary() | list(), invite_users_request(), proplists:proplist()) ->
    {ok, invite_users_response(), tuple()} |
    {error, any()} |
    {error, invite_users_errors(), tuple()}.
invite_users(Client, AccountId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AccountId), "/users?operation=add"],
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

%% @doc Lists the Amazon Chime accounts under the administrator's AWS
%% account.
%%
%% You can filter accounts
%% by account name prefix. To find out which Amazon Chime account a user
%% belongs to, you can
%% filter by the user's email address, which returns one account result.
-spec list_accounts(aws_client:aws_client()) ->
    {ok, list_accounts_response(), tuple()} |
    {error, any()} |
    {error, list_accounts_errors(), tuple()}.
list_accounts(Client)
  when is_map(Client) ->
    list_accounts(Client, #{}, #{}).

-spec list_accounts(aws_client:aws_client(), map(), map()) ->
    {ok, list_accounts_response(), tuple()} |
    {error, any()} |
    {error, list_accounts_errors(), tuple()}.
list_accounts(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_accounts(Client, QueryMap, HeadersMap, []).

-spec list_accounts(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_accounts_response(), tuple()} |
    {error, any()} |
    {error, list_accounts_errors(), tuple()}.
list_accounts(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

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
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, ListAppInstanceAdmins:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_identity-chime_ListAppInstanceAdmins.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec list_app_instance_admins(aws_client:aws_client(), binary() | list()) ->
    {ok, list_app_instance_admins_response(), tuple()} |
    {error, any()} |
    {error, list_app_instance_admins_errors(), tuple()}.
list_app_instance_admins(Client, AppInstanceArn)
  when is_map(Client) ->
    list_app_instance_admins(Client, AppInstanceArn, #{}, #{}).

-spec list_app_instance_admins(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_app_instance_admins_response(), tuple()} |
    {error, any()} |
    {error, list_app_instance_admins_errors(), tuple()}.
list_app_instance_admins(Client, AppInstanceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_app_instance_admins(Client, AppInstanceArn, QueryMap, HeadersMap, []).

-spec list_app_instance_admins(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_app_instance_admins_response(), tuple()} |
    {error, any()} |
    {error, list_app_instance_admins_errors(), tuple()}.
list_app_instance_admins(Client, AppInstanceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/app-instances/", aws_util:encode_uri(AppInstanceArn), "/admins"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List all `AppInstanceUsers'
%% created under a single `AppInstance'.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, ListAppInstanceUsers:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_identity-chime_ListAppInstanceUsers.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec list_app_instance_users(aws_client:aws_client(), binary() | list()) ->
    {ok, list_app_instance_users_response(), tuple()} |
    {error, any()} |
    {error, list_app_instance_users_errors(), tuple()}.
list_app_instance_users(Client, AppInstanceArn)
  when is_map(Client) ->
    list_app_instance_users(Client, AppInstanceArn, #{}, #{}).

-spec list_app_instance_users(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_app_instance_users_response(), tuple()} |
    {error, any()} |
    {error, list_app_instance_users_errors(), tuple()}.
list_app_instance_users(Client, AppInstanceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_app_instance_users(Client, AppInstanceArn, QueryMap, HeadersMap, []).

-spec list_app_instance_users(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_app_instance_users_response(), tuple()} |
    {error, any()} |
    {error, list_app_instance_users_errors(), tuple()}.
list_app_instance_users(Client, AppInstanceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/app-instance-users"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

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
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, ListAppInstances:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_identity-chime_ListAppInstances.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec list_app_instances(aws_client:aws_client()) ->
    {ok, list_app_instances_response(), tuple()} |
    {error, any()} |
    {error, list_app_instances_errors(), tuple()}.
list_app_instances(Client)
  when is_map(Client) ->
    list_app_instances(Client, #{}, #{}).

-spec list_app_instances(aws_client:aws_client(), map(), map()) ->
    {ok, list_app_instances_response(), tuple()} |
    {error, any()} |
    {error, list_app_instances_errors(), tuple()}.
list_app_instances(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_app_instances(Client, QueryMap, HeadersMap, []).

-spec list_app_instances(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_app_instances_response(), tuple()} |
    {error, any()} |
    {error, list_app_instances_errors(), tuple()}.
list_app_instances(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/app-instances"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the tags applied to an Amazon Chime SDK attendee resource.
%%
%% ListAttendeeTags is not supported in the Amazon Chime SDK Meetings
%% Namespace. Update your application to remove calls to this API.
-spec list_attendee_tags(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_attendee_tags_response(), tuple()} |
    {error, any()} |
    {error, list_attendee_tags_errors(), tuple()}.
list_attendee_tags(Client, AttendeeId, MeetingId)
  when is_map(Client) ->
    list_attendee_tags(Client, AttendeeId, MeetingId, #{}, #{}).

-spec list_attendee_tags(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_attendee_tags_response(), tuple()} |
    {error, any()} |
    {error, list_attendee_tags_errors(), tuple()}.
list_attendee_tags(Client, AttendeeId, MeetingId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_attendee_tags(Client, AttendeeId, MeetingId, QueryMap, HeadersMap, []).

-spec list_attendee_tags(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_attendee_tags_response(), tuple()} |
    {error, any()} |
    {error, list_attendee_tags_errors(), tuple()}.
list_attendee_tags(Client, AttendeeId, MeetingId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/meetings/", aws_util:encode_uri(MeetingId), "/attendees/", aws_util:encode_uri(AttendeeId), "/tags"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc
%% Lists the attendees for the specified Amazon Chime SDK meeting.
%%
%% For more information about the Amazon Chime SDK, see
%% Using the Amazon Chime SDK:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/meetings-sdk.html
%% in the Amazon Chime SDK Developer Guide.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, ListAttendees:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_meeting-chime_ListAttendees.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec list_attendees(aws_client:aws_client(), binary() | list()) ->
    {ok, list_attendees_response(), tuple()} |
    {error, any()} |
    {error, list_attendees_errors(), tuple()}.
list_attendees(Client, MeetingId)
  when is_map(Client) ->
    list_attendees(Client, MeetingId, #{}, #{}).

-spec list_attendees(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_attendees_response(), tuple()} |
    {error, any()} |
    {error, list_attendees_errors(), tuple()}.
list_attendees(Client, MeetingId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_attendees(Client, MeetingId, QueryMap, HeadersMap, []).

-spec list_attendees(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_attendees_response(), tuple()} |
    {error, any()} |
    {error, list_attendees_errors(), tuple()}.
list_attendees(Client, MeetingId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/meetings/", aws_util:encode_uri(MeetingId), "/attendees"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

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
-spec list_bots(aws_client:aws_client(), binary() | list()) ->
    {ok, list_bots_response(), tuple()} |
    {error, any()} |
    {error, list_bots_errors(), tuple()}.
list_bots(Client, AccountId)
  when is_map(Client) ->
    list_bots(Client, AccountId, #{}, #{}).

-spec list_bots(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_bots_response(), tuple()} |
    {error, any()} |
    {error, list_bots_errors(), tuple()}.
list_bots(Client, AccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_bots(Client, AccountId, QueryMap, HeadersMap, []).

-spec list_bots(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_bots_response(), tuple()} |
    {error, any()} |
    {error, list_bots_errors(), tuple()}.
list_bots(Client, AccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AccountId), "/bots"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

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
%% `AppInstanceUserArn' of the user that makes the API call as the value
%% in
%% the header.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, ListChannelBans:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_messaging-chime_ListChannelBans.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec list_channel_bans(aws_client:aws_client(), binary() | list()) ->
    {ok, list_channel_bans_response(), tuple()} |
    {error, any()} |
    {error, list_channel_bans_errors(), tuple()}.
list_channel_bans(Client, ChannelArn)
  when is_map(Client) ->
    list_channel_bans(Client, ChannelArn, #{}, #{}).

-spec list_channel_bans(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_channel_bans_response(), tuple()} |
    {error, any()} |
    {error, list_channel_bans_errors(), tuple()}.
list_channel_bans(Client, ChannelArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_channel_bans(Client, ChannelArn, QueryMap, HeadersMap, []).

-spec list_channel_bans(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_channel_bans_response(), tuple()} |
    {error, any()} |
    {error, list_channel_bans_errors(), tuple()}.
list_channel_bans(Client, ChannelArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/channels/", aws_util:encode_uri(ChannelArn), "/bans"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

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
%% `AppInstanceUserArn' of the user that makes the API call as the value
%% in
%% the header.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, ListChannelMemberships:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_messaging-chime_ListChannelMemberships.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec list_channel_memberships(aws_client:aws_client(), binary() | list()) ->
    {ok, list_channel_memberships_response(), tuple()} |
    {error, any()} |
    {error, list_channel_memberships_errors(), tuple()}.
list_channel_memberships(Client, ChannelArn)
  when is_map(Client) ->
    list_channel_memberships(Client, ChannelArn, #{}, #{}).

-spec list_channel_memberships(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_channel_memberships_response(), tuple()} |
    {error, any()} |
    {error, list_channel_memberships_errors(), tuple()}.
list_channel_memberships(Client, ChannelArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_channel_memberships(Client, ChannelArn, QueryMap, HeadersMap, []).

-spec list_channel_memberships(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_channel_memberships_response(), tuple()} |
    {error, any()} |
    {error, list_channel_memberships_errors(), tuple()}.
list_channel_memberships(Client, ChannelArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/channels/", aws_util:encode_uri(ChannelArn), "/memberships"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

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

%% @doc Lists all channels that a particular `AppInstanceUser' is a part
%% of.
%%
%% Only an
%% `AppInstanceAdmin' can call the API with a user ARN that is not their
%% own.
%%
%% The `x-amz-chime-bearer' request header is mandatory. Use the
%% `AppInstanceUserArn' of the user that makes the API call as the value
%% in
%% the header.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, ListChannelMembershipsForAppInstanceUser:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_messaging-chime_ListChannelMembershipsForAppInstanceUser.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec list_channel_memberships_for_app_instance_user(aws_client:aws_client()) ->
    {ok, list_channel_memberships_for_app_instance_user_response(), tuple()} |
    {error, any()} |
    {error, list_channel_memberships_for_app_instance_user_errors(), tuple()}.
list_channel_memberships_for_app_instance_user(Client)
  when is_map(Client) ->
    list_channel_memberships_for_app_instance_user(Client, #{}, #{}).

-spec list_channel_memberships_for_app_instance_user(aws_client:aws_client(), map(), map()) ->
    {ok, list_channel_memberships_for_app_instance_user_response(), tuple()} |
    {error, any()} |
    {error, list_channel_memberships_for_app_instance_user_errors(), tuple()}.
list_channel_memberships_for_app_instance_user(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_channel_memberships_for_app_instance_user(Client, QueryMap, HeadersMap, []).

-spec list_channel_memberships_for_app_instance_user(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_channel_memberships_for_app_instance_user_response(), tuple()} |
    {error, any()} |
    {error, list_channel_memberships_for_app_instance_user_errors(), tuple()}.
list_channel_memberships_for_app_instance_user(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/channels?scope=app-instance-user-memberships"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

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
%% Returns a paginated list of
%% `ChannelMessages'. By default, sorted by creation timestamp in
%% descending
%% order.
%%
%% Redacted messages appear in the results as empty, since they are only
%% redacted, not
%% deleted. Deleted messages do not appear in the results. This action always
%% returns the
%% latest version of an edited message.
%%
%% Also, the x-amz-chime-bearer request header is mandatory. Use the
%% `AppInstanceUserArn' of the user that makes the API call as the value
%% in
%% the header.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, ListChannelMessages:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_messaging-chime_ListChannelMessages.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec list_channel_messages(aws_client:aws_client(), binary() | list()) ->
    {ok, list_channel_messages_response(), tuple()} |
    {error, any()} |
    {error, list_channel_messages_errors(), tuple()}.
list_channel_messages(Client, ChannelArn)
  when is_map(Client) ->
    list_channel_messages(Client, ChannelArn, #{}, #{}).

-spec list_channel_messages(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_channel_messages_response(), tuple()} |
    {error, any()} |
    {error, list_channel_messages_errors(), tuple()}.
list_channel_messages(Client, ChannelArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_channel_messages(Client, ChannelArn, QueryMap, HeadersMap, []).

-spec list_channel_messages(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_channel_messages_response(), tuple()} |
    {error, any()} |
    {error, list_channel_messages_errors(), tuple()}.
list_channel_messages(Client, ChannelArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/channels/", aws_util:encode_uri(ChannelArn), "/messages"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

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
%% `AppInstanceUserArn' of the user that makes the API call as the value
%% in
%% the header.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, ListChannelModerators:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_messaging-chime_ListChannelModerators.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec list_channel_moderators(aws_client:aws_client(), binary() | list()) ->
    {ok, list_channel_moderators_response(), tuple()} |
    {error, any()} |
    {error, list_channel_moderators_errors(), tuple()}.
list_channel_moderators(Client, ChannelArn)
  when is_map(Client) ->
    list_channel_moderators(Client, ChannelArn, #{}, #{}).

-spec list_channel_moderators(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_channel_moderators_response(), tuple()} |
    {error, any()} |
    {error, list_channel_moderators_errors(), tuple()}.
list_channel_moderators(Client, ChannelArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_channel_moderators(Client, ChannelArn, QueryMap, HeadersMap, []).

-spec list_channel_moderators(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_channel_moderators_response(), tuple()} |
    {error, any()} |
    {error, list_channel_moderators_errors(), tuple()}.
list_channel_moderators(Client, ChannelArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/channels/", aws_util:encode_uri(ChannelArn), "/moderators"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

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
%% You can specify
%% filters to narrow results.
%%
%% == Functionality &amp; restrictions ==
%%
%% Use privacy = `PUBLIC' to retrieve all public channels in the
%% account.
%%
%% Only an `AppInstanceAdmin' can set privacy = `PRIVATE' to
%% list the private channels in an account.
%%
%% The `x-amz-chime-bearer' request header is mandatory. Use the
%% `AppInstanceUserArn' of the user that makes the API call as the value
%% in
%% the header.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, ListChannels:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_messaging-chime_ListChannels.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec list_channels(aws_client:aws_client(), binary() | list()) ->
    {ok, list_channels_response(), tuple()} |
    {error, any()} |
    {error, list_channels_errors(), tuple()}.
list_channels(Client, AppInstanceArn)
  when is_map(Client) ->
    list_channels(Client, AppInstanceArn, #{}, #{}).

-spec list_channels(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_channels_response(), tuple()} |
    {error, any()} |
    {error, list_channels_errors(), tuple()}.
list_channels(Client, AppInstanceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_channels(Client, AppInstanceArn, QueryMap, HeadersMap, []).

-spec list_channels(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_channels_response(), tuple()} |
    {error, any()} |
    {error, list_channels_errors(), tuple()}.
list_channels(Client, AppInstanceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/channels"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

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
%% `AppInstanceUserArn' of the user that makes the API call as the value
%% in
%% the header.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, ListChannelsModeratedByAppInstanceUser:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_messaging-chime_ListChannelsModeratedByAppInstanceUser.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec list_channels_moderated_by_app_instance_user(aws_client:aws_client()) ->
    {ok, list_channels_moderated_by_app_instance_user_response(), tuple()} |
    {error, any()} |
    {error, list_channels_moderated_by_app_instance_user_errors(), tuple()}.
list_channels_moderated_by_app_instance_user(Client)
  when is_map(Client) ->
    list_channels_moderated_by_app_instance_user(Client, #{}, #{}).

-spec list_channels_moderated_by_app_instance_user(aws_client:aws_client(), map(), map()) ->
    {ok, list_channels_moderated_by_app_instance_user_response(), tuple()} |
    {error, any()} |
    {error, list_channels_moderated_by_app_instance_user_errors(), tuple()}.
list_channels_moderated_by_app_instance_user(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_channels_moderated_by_app_instance_user(Client, QueryMap, HeadersMap, []).

-spec list_channels_moderated_by_app_instance_user(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_channels_moderated_by_app_instance_user_response(), tuple()} |
    {error, any()} |
    {error, list_channels_moderated_by_app_instance_user_errors(), tuple()}.
list_channels_moderated_by_app_instance_user(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/channels?scope=app-instance-user-moderated-channels"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

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
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, ListMediaCapturePipelines:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_media-pipelines-chime_ListMediaCapturePipelines.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec list_media_capture_pipelines(aws_client:aws_client()) ->
    {ok, list_media_capture_pipelines_response(), tuple()} |
    {error, any()} |
    {error, list_media_capture_pipelines_errors(), tuple()}.
list_media_capture_pipelines(Client)
  when is_map(Client) ->
    list_media_capture_pipelines(Client, #{}, #{}).

-spec list_media_capture_pipelines(aws_client:aws_client(), map(), map()) ->
    {ok, list_media_capture_pipelines_response(), tuple()} |
    {error, any()} |
    {error, list_media_capture_pipelines_errors(), tuple()}.
list_media_capture_pipelines(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_media_capture_pipelines(Client, QueryMap, HeadersMap, []).

-spec list_media_capture_pipelines(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_media_capture_pipelines_response(), tuple()} |
    {error, any()} |
    {error, list_media_capture_pipelines_errors(), tuple()}.
list_media_capture_pipelines(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/media-capture-pipelines"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the tags applied to an Amazon Chime SDK meeting resource.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, ListTagsForResource:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_meeting-chime_ListTagsForResource.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec list_meeting_tags(aws_client:aws_client(), binary() | list()) ->
    {ok, list_meeting_tags_response(), tuple()} |
    {error, any()} |
    {error, list_meeting_tags_errors(), tuple()}.
list_meeting_tags(Client, MeetingId)
  when is_map(Client) ->
    list_meeting_tags(Client, MeetingId, #{}, #{}).

-spec list_meeting_tags(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_meeting_tags_response(), tuple()} |
    {error, any()} |
    {error, list_meeting_tags_errors(), tuple()}.
list_meeting_tags(Client, MeetingId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_meeting_tags(Client, MeetingId, QueryMap, HeadersMap, []).

-spec list_meeting_tags(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_meeting_tags_response(), tuple()} |
    {error, any()} |
    {error, list_meeting_tags_errors(), tuple()}.
list_meeting_tags(Client, MeetingId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/meetings/", aws_util:encode_uri(MeetingId), "/tags"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists up to 100 active Amazon Chime SDK meetings.
%%
%% ListMeetings is not supported in the Amazon Chime SDK Meetings Namespace.
%% Update your application to remove calls to this API.
%%
%% For more information about the Amazon Chime SDK, see
%% Using the Amazon Chime SDK:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/meetings-sdk.html
%% in the Amazon Chime SDK Developer Guide.
-spec list_meetings(aws_client:aws_client()) ->
    {ok, list_meetings_response(), tuple()} |
    {error, any()} |
    {error, list_meetings_errors(), tuple()}.
list_meetings(Client)
  when is_map(Client) ->
    list_meetings(Client, #{}, #{}).

-spec list_meetings(aws_client:aws_client(), map(), map()) ->
    {ok, list_meetings_response(), tuple()} |
    {error, any()} |
    {error, list_meetings_errors(), tuple()}.
list_meetings(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_meetings(Client, QueryMap, HeadersMap, []).

-spec list_meetings(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_meetings_response(), tuple()} |
    {error, any()} |
    {error, list_meetings_errors(), tuple()}.
list_meetings(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/meetings"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the phone number orders for the administrator's Amazon
%% Chime account.
-spec list_phone_number_orders(aws_client:aws_client()) ->
    {ok, list_phone_number_orders_response(), tuple()} |
    {error, any()} |
    {error, list_phone_number_orders_errors(), tuple()}.
list_phone_number_orders(Client)
  when is_map(Client) ->
    list_phone_number_orders(Client, #{}, #{}).

-spec list_phone_number_orders(aws_client:aws_client(), map(), map()) ->
    {ok, list_phone_number_orders_response(), tuple()} |
    {error, any()} |
    {error, list_phone_number_orders_errors(), tuple()}.
list_phone_number_orders(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_phone_number_orders(Client, QueryMap, HeadersMap, []).

-spec list_phone_number_orders(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_phone_number_orders_response(), tuple()} |
    {error, any()} |
    {error, list_phone_number_orders_errors(), tuple()}.
list_phone_number_orders(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/phone-number-orders"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

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
-spec list_phone_numbers(aws_client:aws_client()) ->
    {ok, list_phone_numbers_response(), tuple()} |
    {error, any()} |
    {error, list_phone_numbers_errors(), tuple()}.
list_phone_numbers(Client)
  when is_map(Client) ->
    list_phone_numbers(Client, #{}, #{}).

-spec list_phone_numbers(aws_client:aws_client(), map(), map()) ->
    {ok, list_phone_numbers_response(), tuple()} |
    {error, any()} |
    {error, list_phone_numbers_errors(), tuple()}.
list_phone_numbers(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_phone_numbers(Client, QueryMap, HeadersMap, []).

-spec list_phone_numbers(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_phone_numbers_response(), tuple()} |
    {error, any()} |
    {error, list_phone_numbers_errors(), tuple()}.
list_phone_numbers(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/phone-numbers"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

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
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, ListProxySessions:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_ListProxySessions.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec list_proxy_sessions(aws_client:aws_client(), binary() | list()) ->
    {ok, list_proxy_sessions_response(), tuple()} |
    {error, any()} |
    {error, list_proxy_sessions_errors(), tuple()}.
list_proxy_sessions(Client, VoiceConnectorId)
  when is_map(Client) ->
    list_proxy_sessions(Client, VoiceConnectorId, #{}, #{}).

-spec list_proxy_sessions(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_proxy_sessions_response(), tuple()} |
    {error, any()} |
    {error, list_proxy_sessions_errors(), tuple()}.
list_proxy_sessions(Client, VoiceConnectorId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_proxy_sessions(Client, VoiceConnectorId, QueryMap, HeadersMap, []).

-spec list_proxy_sessions(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_proxy_sessions_response(), tuple()} |
    {error, any()} |
    {error, list_proxy_sessions_errors(), tuple()}.
list_proxy_sessions(Client, VoiceConnectorId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/proxy-sessions"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

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
%% Chime Enterprise account,
%% such as the members' IDs, email addresses, and names.
-spec list_room_memberships(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_room_memberships_response(), tuple()} |
    {error, any()} |
    {error, list_room_memberships_errors(), tuple()}.
list_room_memberships(Client, AccountId, RoomId)
  when is_map(Client) ->
    list_room_memberships(Client, AccountId, RoomId, #{}, #{}).

-spec list_room_memberships(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_room_memberships_response(), tuple()} |
    {error, any()} |
    {error, list_room_memberships_errors(), tuple()}.
list_room_memberships(Client, AccountId, RoomId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_room_memberships(Client, AccountId, RoomId, QueryMap, HeadersMap, []).

-spec list_room_memberships(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_room_memberships_response(), tuple()} |
    {error, any()} |
    {error, list_room_memberships_errors(), tuple()}.
list_room_memberships(Client, AccountId, RoomId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AccountId), "/rooms/", aws_util:encode_uri(RoomId), "/memberships"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

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
-spec list_rooms(aws_client:aws_client(), binary() | list()) ->
    {ok, list_rooms_response(), tuple()} |
    {error, any()} |
    {error, list_rooms_errors(), tuple()}.
list_rooms(Client, AccountId)
  when is_map(Client) ->
    list_rooms(Client, AccountId, #{}, #{}).

-spec list_rooms(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_rooms_response(), tuple()} |
    {error, any()} |
    {error, list_rooms_errors(), tuple()}.
list_rooms(Client, AccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_rooms(Client, AccountId, QueryMap, HeadersMap, []).

-spec list_rooms(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_rooms_response(), tuple()} |
    {error, any()} |
    {error, list_rooms_errors(), tuple()}.
list_rooms(Client, AccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AccountId), "/rooms"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

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
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, ListSipMediaApplications:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_ListSipMediaApplications.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec list_sip_media_applications(aws_client:aws_client()) ->
    {ok, list_sip_media_applications_response(), tuple()} |
    {error, any()} |
    {error, list_sip_media_applications_errors(), tuple()}.
list_sip_media_applications(Client)
  when is_map(Client) ->
    list_sip_media_applications(Client, #{}, #{}).

-spec list_sip_media_applications(aws_client:aws_client(), map(), map()) ->
    {ok, list_sip_media_applications_response(), tuple()} |
    {error, any()} |
    {error, list_sip_media_applications_errors(), tuple()}.
list_sip_media_applications(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_sip_media_applications(Client, QueryMap, HeadersMap, []).

-spec list_sip_media_applications(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_sip_media_applications_response(), tuple()} |
    {error, any()} |
    {error, list_sip_media_applications_errors(), tuple()}.
list_sip_media_applications(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/sip-media-applications"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the SIP rules under the administrator's AWS account.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, ListSipRules:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_ListSipRules.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec list_sip_rules(aws_client:aws_client()) ->
    {ok, list_sip_rules_response(), tuple()} |
    {error, any()} |
    {error, list_sip_rules_errors(), tuple()}.
list_sip_rules(Client)
  when is_map(Client) ->
    list_sip_rules(Client, #{}, #{}).

-spec list_sip_rules(aws_client:aws_client(), map(), map()) ->
    {ok, list_sip_rules_response(), tuple()} |
    {error, any()} |
    {error, list_sip_rules_errors(), tuple()}.
list_sip_rules(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_sip_rules(Client, QueryMap, HeadersMap, []).

-spec list_sip_rules(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_sip_rules_response(), tuple()} |
    {error, any()} |
    {error, list_sip_rules_errors(), tuple()}.
list_sip_rules(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/sip-rules"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

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
-spec list_supported_phone_number_countries(aws_client:aws_client(), binary() | list()) ->
    {ok, list_supported_phone_number_countries_response(), tuple()} |
    {error, any()} |
    {error, list_supported_phone_number_countries_errors(), tuple()}.
list_supported_phone_number_countries(Client, ProductType)
  when is_map(Client) ->
    list_supported_phone_number_countries(Client, ProductType, #{}, #{}).

-spec list_supported_phone_number_countries(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_supported_phone_number_countries_response(), tuple()} |
    {error, any()} |
    {error, list_supported_phone_number_countries_errors(), tuple()}.
list_supported_phone_number_countries(Client, ProductType, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_supported_phone_number_countries(Client, ProductType, QueryMap, HeadersMap, []).

-spec list_supported_phone_number_countries(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_supported_phone_number_countries_response(), tuple()} |
    {error, any()} |
    {error, list_supported_phone_number_countries_errors(), tuple()}.
list_supported_phone_number_countries(Client, ProductType, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/phone-number-countries"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"product-type">>, ProductType}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the tags applied to an Amazon Chime SDK meeting and messaging
%% resources.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the applicable latest version in the Amazon Chime SDK.
%%
%% For meetings: ListTagsForResource:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_meeting-chime_ListTagsForResource.html.
%%
%% For messaging: ListTagsForResource:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_messaging-chime_ListTagsForResource.html.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec list_tags_for_resource(aws_client:aws_client(), binary() | list()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceARN)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceARN, #{}, #{}).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceARN, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceARN, QueryMap, HeadersMap, []).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceARN, QueryMap, HeadersMap, Options0)
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
        {<<"arn">>, ResourceARN}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the users that belong to the specified Amazon Chime account.
%%
%% You can specify an email
%% address to list only the user that the email address belongs to.
-spec list_users(aws_client:aws_client(), binary() | list()) ->
    {ok, list_users_response(), tuple()} |
    {error, any()} |
    {error, list_users_errors(), tuple()}.
list_users(Client, AccountId)
  when is_map(Client) ->
    list_users(Client, AccountId, #{}, #{}).

-spec list_users(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_users_response(), tuple()} |
    {error, any()} |
    {error, list_users_errors(), tuple()}.
list_users(Client, AccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_users(Client, AccountId, QueryMap, HeadersMap, []).

-spec list_users(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_users_response(), tuple()} |
    {error, any()} |
    {error, list_users_errors(), tuple()}.
list_users(Client, AccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AccountId), "/users"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

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

%% @doc Lists the Amazon Chime Voice Connector groups for the
%% administrator's AWS account.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, ListVoiceConnectorGroups:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_ListVoiceConnectorGroups.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec list_voice_connector_groups(aws_client:aws_client()) ->
    {ok, list_voice_connector_groups_response(), tuple()} |
    {error, any()} |
    {error, list_voice_connector_groups_errors(), tuple()}.
list_voice_connector_groups(Client)
  when is_map(Client) ->
    list_voice_connector_groups(Client, #{}, #{}).

-spec list_voice_connector_groups(aws_client:aws_client(), map(), map()) ->
    {ok, list_voice_connector_groups_response(), tuple()} |
    {error, any()} |
    {error, list_voice_connector_groups_errors(), tuple()}.
list_voice_connector_groups(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_voice_connector_groups(Client, QueryMap, HeadersMap, []).

-spec list_voice_connector_groups(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_voice_connector_groups_response(), tuple()} |
    {error, any()} |
    {error, list_voice_connector_groups_errors(), tuple()}.
list_voice_connector_groups(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/voice-connector-groups"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

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
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, ListVoiceConnectorTerminationCredentials:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_ListVoiceConnectorTerminationCredentials.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec list_voice_connector_termination_credentials(aws_client:aws_client(), binary() | list()) ->
    {ok, list_voice_connector_termination_credentials_response(), tuple()} |
    {error, any()} |
    {error, list_voice_connector_termination_credentials_errors(), tuple()}.
list_voice_connector_termination_credentials(Client, VoiceConnectorId)
  when is_map(Client) ->
    list_voice_connector_termination_credentials(Client, VoiceConnectorId, #{}, #{}).

-spec list_voice_connector_termination_credentials(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_voice_connector_termination_credentials_response(), tuple()} |
    {error, any()} |
    {error, list_voice_connector_termination_credentials_errors(), tuple()}.
list_voice_connector_termination_credentials(Client, VoiceConnectorId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_voice_connector_termination_credentials(Client, VoiceConnectorId, QueryMap, HeadersMap, []).

-spec list_voice_connector_termination_credentials(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_voice_connector_termination_credentials_response(), tuple()} |
    {error, any()} |
    {error, list_voice_connector_termination_credentials_errors(), tuple()}.
list_voice_connector_termination_credentials(Client, VoiceConnectorId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/termination/credentials"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the Amazon Chime Voice Connectors for the administrator's
%% AWS account.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, ListVoiceConnectors:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_ListVoiceConnectors.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec list_voice_connectors(aws_client:aws_client()) ->
    {ok, list_voice_connectors_response(), tuple()} |
    {error, any()} |
    {error, list_voice_connectors_errors(), tuple()}.
list_voice_connectors(Client)
  when is_map(Client) ->
    list_voice_connectors(Client, #{}, #{}).

-spec list_voice_connectors(aws_client:aws_client(), map(), map()) ->
    {ok, list_voice_connectors_response(), tuple()} |
    {error, any()} |
    {error, list_voice_connectors_errors(), tuple()}.
list_voice_connectors(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_voice_connectors(Client, QueryMap, HeadersMap, []).

-spec list_voice_connectors(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_voice_connectors_response(), tuple()} |
    {error, any()} |
    {error, list_voice_connectors_errors(), tuple()}.
list_voice_connectors(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/voice-connectors"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

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
-spec logout_user(aws_client:aws_client(), binary() | list(), binary() | list(), logout_user_request()) ->
    {ok, logout_user_response(), tuple()} |
    {error, any()} |
    {error, logout_user_errors(), tuple()}.
logout_user(Client, AccountId, UserId, Input) ->
    logout_user(Client, AccountId, UserId, Input, []).

-spec logout_user(aws_client:aws_client(), binary() | list(), binary() | list(), logout_user_request(), proplists:proplist()) ->
    {ok, logout_user_response(), tuple()} |
    {error, any()} |
    {error, logout_user_errors(), tuple()}.
logout_user(Client, AccountId, UserId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AccountId), "/users/", aws_util:encode_uri(UserId), "?operation=logout"],
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

%% @doc Sets the amount of time in days that a given `AppInstance'
%% retains data.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, PutAppInstanceRetentionSettings:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_identity-chime_PutAppInstanceRetentionSettings.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec put_app_instance_retention_settings(aws_client:aws_client(), binary() | list(), put_app_instance_retention_settings_request()) ->
    {ok, put_app_instance_retention_settings_response(), tuple()} |
    {error, any()} |
    {error, put_app_instance_retention_settings_errors(), tuple()}.
put_app_instance_retention_settings(Client, AppInstanceArn, Input) ->
    put_app_instance_retention_settings(Client, AppInstanceArn, Input, []).

-spec put_app_instance_retention_settings(aws_client:aws_client(), binary() | list(), put_app_instance_retention_settings_request(), proplists:proplist()) ->
    {ok, put_app_instance_retention_settings_response(), tuple()} |
    {error, any()} |
    {error, put_app_instance_retention_settings_errors(), tuple()}.
put_app_instance_retention_settings(Client, AppInstanceArn, Input0, Options0) ->
    Method = put,
    Path = ["/app-instances/", aws_util:encode_uri(AppInstanceArn), "/retention-settings"],
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

%% @doc The data streaming configurations of an `AppInstance'.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, PutMessagingStreamingConfigurations:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_messaging-chime_PutMessagingStreamingConfigurations.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec put_app_instance_streaming_configurations(aws_client:aws_client(), binary() | list(), put_app_instance_streaming_configurations_request()) ->
    {ok, put_app_instance_streaming_configurations_response(), tuple()} |
    {error, any()} |
    {error, put_app_instance_streaming_configurations_errors(), tuple()}.
put_app_instance_streaming_configurations(Client, AppInstanceArn, Input) ->
    put_app_instance_streaming_configurations(Client, AppInstanceArn, Input, []).

-spec put_app_instance_streaming_configurations(aws_client:aws_client(), binary() | list(), put_app_instance_streaming_configurations_request(), proplists:proplist()) ->
    {ok, put_app_instance_streaming_configurations_response(), tuple()} |
    {error, any()} |
    {error, put_app_instance_streaming_configurations_errors(), tuple()}.
put_app_instance_streaming_configurations(Client, AppInstanceArn, Input0, Options0) ->
    Method = put,
    Path = ["/app-instances/", aws_util:encode_uri(AppInstanceArn), "/streaming-configurations"],
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

%% @doc Creates an events configuration that allows a bot to receive outgoing
%% events sent by Amazon
%% Chime.
%%
%% Choose either an HTTPS endpoint or a Lambda function ARN. For more
%% information,
%% see `Bot'.
-spec put_events_configuration(aws_client:aws_client(), binary() | list(), binary() | list(), put_events_configuration_request()) ->
    {ok, put_events_configuration_response(), tuple()} |
    {error, any()} |
    {error, put_events_configuration_errors(), tuple()}.
put_events_configuration(Client, AccountId, BotId, Input) ->
    put_events_configuration(Client, AccountId, BotId, Input, []).

-spec put_events_configuration(aws_client:aws_client(), binary() | list(), binary() | list(), put_events_configuration_request(), proplists:proplist()) ->
    {ok, put_events_configuration_response(), tuple()} |
    {error, any()} |
    {error, put_events_configuration_errors(), tuple()}.
put_events_configuration(Client, AccountId, BotId, Input0, Options0) ->
    Method = put,
    Path = ["/accounts/", aws_util:encode_uri(AccountId), "/bots/", aws_util:encode_uri(BotId), "/events-configuration"],
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

%% @doc
%% Puts retention settings for the specified Amazon Chime Enterprise account.
%%
%% We recommend using AWS CloudTrail to monitor usage of this API for your
%% account. For more information, see
%% Logging Amazon Chime API Calls with AWS CloudTrail:
%% https://docs.aws.amazon.com/chime/latest/ag/cloudtrail.html
%% in the Amazon Chime Administration Guide.
%%
%% To turn off existing retention settings, remove the number of days from
%% the corresponding
%% RetentionDays
%% field in the
%% RetentionSettings
%% object. For more information about retention settings, see
%% Managing Chat Retention Policies:
%% https://docs.aws.amazon.com/chime/latest/ag/chat-retention.html
%% in the Amazon Chime Administration Guide.
-spec put_retention_settings(aws_client:aws_client(), binary() | list(), put_retention_settings_request()) ->
    {ok, put_retention_settings_response(), tuple()} |
    {error, any()} |
    {error, put_retention_settings_errors(), tuple()}.
put_retention_settings(Client, AccountId, Input) ->
    put_retention_settings(Client, AccountId, Input, []).

-spec put_retention_settings(aws_client:aws_client(), binary() | list(), put_retention_settings_request(), proplists:proplist()) ->
    {ok, put_retention_settings_response(), tuple()} |
    {error, any()} |
    {error, put_retention_settings_errors(), tuple()}.
put_retention_settings(Client, AccountId, Input0, Options0) ->
    Method = put,
    Path = ["/accounts/", aws_util:encode_uri(AccountId), "/retention-settings"],
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

%% @doc Updates the logging configuration for the specified SIP media
%% application.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, PutSipMediaApplicationLoggingConfiguration:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_PutSipMediaApplicationLoggingConfiguration.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec put_sip_media_application_logging_configuration(aws_client:aws_client(), binary() | list(), put_sip_media_application_logging_configuration_request()) ->
    {ok, put_sip_media_application_logging_configuration_response(), tuple()} |
    {error, any()} |
    {error, put_sip_media_application_logging_configuration_errors(), tuple()}.
put_sip_media_application_logging_configuration(Client, SipMediaApplicationId, Input) ->
    put_sip_media_application_logging_configuration(Client, SipMediaApplicationId, Input, []).

-spec put_sip_media_application_logging_configuration(aws_client:aws_client(), binary() | list(), put_sip_media_application_logging_configuration_request(), proplists:proplist()) ->
    {ok, put_sip_media_application_logging_configuration_response(), tuple()} |
    {error, any()} |
    {error, put_sip_media_application_logging_configuration_errors(), tuple()}.
put_sip_media_application_logging_configuration(Client, SipMediaApplicationId, Input0, Options0) ->
    Method = put,
    Path = ["/sip-media-applications/", aws_util:encode_uri(SipMediaApplicationId), "/logging-configuration"],
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

%% @doc Puts emergency calling configuration details to the specified Amazon
%% Chime Voice Connector, such as emergency phone numbers and calling
%% countries.
%%
%% Origination and termination settings must be enabled for
%% the Amazon Chime Voice Connector before emergency calling can be
%% configured.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, PutVoiceConnectorEmergencyCallingConfiguration:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_PutVoiceConnectorEmergencyCallingConfiguration.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec put_voice_connector_emergency_calling_configuration(aws_client:aws_client(), binary() | list(), put_voice_connector_emergency_calling_configuration_request()) ->
    {ok, put_voice_connector_emergency_calling_configuration_response(), tuple()} |
    {error, any()} |
    {error, put_voice_connector_emergency_calling_configuration_errors(), tuple()}.
put_voice_connector_emergency_calling_configuration(Client, VoiceConnectorId, Input) ->
    put_voice_connector_emergency_calling_configuration(Client, VoiceConnectorId, Input, []).

-spec put_voice_connector_emergency_calling_configuration(aws_client:aws_client(), binary() | list(), put_voice_connector_emergency_calling_configuration_request(), proplists:proplist()) ->
    {ok, put_voice_connector_emergency_calling_configuration_response(), tuple()} |
    {error, any()} |
    {error, put_voice_connector_emergency_calling_configuration_errors(), tuple()}.
put_voice_connector_emergency_calling_configuration(Client, VoiceConnectorId, Input0, Options0) ->
    Method = put,
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/emergency-calling-configuration"],
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

%% @doc Adds a logging configuration for the specified Amazon Chime Voice
%% Connector.
%%
%% The logging configuration specifies whether SIP message logs are enabled
%% for sending to
%% Amazon CloudWatch Logs.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, PutVoiceConnectorLoggingConfiguration:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_PutVoiceConnectorLoggingConfiguration.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec put_voice_connector_logging_configuration(aws_client:aws_client(), binary() | list(), put_voice_connector_logging_configuration_request()) ->
    {ok, put_voice_connector_logging_configuration_response(), tuple()} |
    {error, any()} |
    {error, put_voice_connector_logging_configuration_errors(), tuple()}.
put_voice_connector_logging_configuration(Client, VoiceConnectorId, Input) ->
    put_voice_connector_logging_configuration(Client, VoiceConnectorId, Input, []).

-spec put_voice_connector_logging_configuration(aws_client:aws_client(), binary() | list(), put_voice_connector_logging_configuration_request(), proplists:proplist()) ->
    {ok, put_voice_connector_logging_configuration_response(), tuple()} |
    {error, any()} |
    {error, put_voice_connector_logging_configuration_errors(), tuple()}.
put_voice_connector_logging_configuration(Client, VoiceConnectorId, Input0, Options0) ->
    Method = put,
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/logging-configuration"],
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

%% @doc Adds origination settings for the specified Amazon Chime Voice
%% Connector.
%%
%% If emergency calling is configured for the Amazon Chime Voice Connector,
%% it must be deleted prior to turning off origination settings.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, PutVoiceConnectorOrigination:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_PutVoiceConnectorOrigination.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec put_voice_connector_origination(aws_client:aws_client(), binary() | list(), put_voice_connector_origination_request()) ->
    {ok, put_voice_connector_origination_response(), tuple()} |
    {error, any()} |
    {error, put_voice_connector_origination_errors(), tuple()}.
put_voice_connector_origination(Client, VoiceConnectorId, Input) ->
    put_voice_connector_origination(Client, VoiceConnectorId, Input, []).

-spec put_voice_connector_origination(aws_client:aws_client(), binary() | list(), put_voice_connector_origination_request(), proplists:proplist()) ->
    {ok, put_voice_connector_origination_response(), tuple()} |
    {error, any()} |
    {error, put_voice_connector_origination_errors(), tuple()}.
put_voice_connector_origination(Client, VoiceConnectorId, Input0, Options0) ->
    Method = put,
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/origination"],
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

%% @doc Puts the specified proxy configuration to the specified Amazon Chime
%% Voice Connector.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, PutVoiceConnectorProxy:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_PutVoiceConnectorProxy.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec put_voice_connector_proxy(aws_client:aws_client(), binary() | list(), put_voice_connector_proxy_request()) ->
    {ok, put_voice_connector_proxy_response(), tuple()} |
    {error, any()} |
    {error, put_voice_connector_proxy_errors(), tuple()}.
put_voice_connector_proxy(Client, VoiceConnectorId, Input) ->
    put_voice_connector_proxy(Client, VoiceConnectorId, Input, []).

-spec put_voice_connector_proxy(aws_client:aws_client(), binary() | list(), put_voice_connector_proxy_request(), proplists:proplist()) ->
    {ok, put_voice_connector_proxy_response(), tuple()} |
    {error, any()} |
    {error, put_voice_connector_proxy_errors(), tuple()}.
put_voice_connector_proxy(Client, VoiceConnectorId, Input0, Options0) ->
    Method = put,
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/programmable-numbers/proxy"],
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

%% @doc Adds a streaming configuration for the specified Amazon Chime Voice
%% Connector.
%%
%% The streaming
%% configuration specifies whether media streaming is enabled for sending to
%% Kinesis.
%% It also sets the retention period, in hours, for the Amazon Kinesis data.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, PutVoiceConnectorStreamingConfiguration:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_PutVoiceConnectorStreamingConfiguration.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec put_voice_connector_streaming_configuration(aws_client:aws_client(), binary() | list(), put_voice_connector_streaming_configuration_request()) ->
    {ok, put_voice_connector_streaming_configuration_response(), tuple()} |
    {error, any()} |
    {error, put_voice_connector_streaming_configuration_errors(), tuple()}.
put_voice_connector_streaming_configuration(Client, VoiceConnectorId, Input) ->
    put_voice_connector_streaming_configuration(Client, VoiceConnectorId, Input, []).

-spec put_voice_connector_streaming_configuration(aws_client:aws_client(), binary() | list(), put_voice_connector_streaming_configuration_request(), proplists:proplist()) ->
    {ok, put_voice_connector_streaming_configuration_response(), tuple()} |
    {error, any()} |
    {error, put_voice_connector_streaming_configuration_errors(), tuple()}.
put_voice_connector_streaming_configuration(Client, VoiceConnectorId, Input0, Options0) ->
    Method = put,
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/streaming-configuration"],
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

%% @doc Adds termination settings for the specified Amazon Chime Voice
%% Connector.
%%
%% If emergency calling is configured for the Amazon Chime Voice Connector,
%% it must be deleted prior to turning off termination settings.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, PutVoiceConnectorTermination:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_PutVoiceConnectorTermination.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec put_voice_connector_termination(aws_client:aws_client(), binary() | list(), put_voice_connector_termination_request()) ->
    {ok, put_voice_connector_termination_response(), tuple()} |
    {error, any()} |
    {error, put_voice_connector_termination_errors(), tuple()}.
put_voice_connector_termination(Client, VoiceConnectorId, Input) ->
    put_voice_connector_termination(Client, VoiceConnectorId, Input, []).

-spec put_voice_connector_termination(aws_client:aws_client(), binary() | list(), put_voice_connector_termination_request(), proplists:proplist()) ->
    {ok, put_voice_connector_termination_response(), tuple()} |
    {error, any()} |
    {error, put_voice_connector_termination_errors(), tuple()}.
put_voice_connector_termination(Client, VoiceConnectorId, Input0, Options0) ->
    Method = put,
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/termination"],
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

%% @doc Adds termination SIP credentials for the specified Amazon Chime Voice
%% Connector.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, PutVoiceConnectorTerminationCredentials:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_PutVoiceConnectorTerminationCredentials.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec put_voice_connector_termination_credentials(aws_client:aws_client(), binary() | list(), put_voice_connector_termination_credentials_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_voice_connector_termination_credentials_errors(), tuple()}.
put_voice_connector_termination_credentials(Client, VoiceConnectorId, Input) ->
    put_voice_connector_termination_credentials(Client, VoiceConnectorId, Input, []).

-spec put_voice_connector_termination_credentials(aws_client:aws_client(), binary() | list(), put_voice_connector_termination_credentials_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_voice_connector_termination_credentials_errors(), tuple()}.
put_voice_connector_termination_credentials(Client, VoiceConnectorId, Input0, Options0) ->
    Method = post,
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/termination/credentials?operation=put"],
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

%% @doc Redacts message content, but not metadata.
%%
%% The message exists in the back end, but the
%% action returns null content, and the state shows as redacted.
%%
%% The `x-amz-chime-bearer' request header is mandatory. Use the
%% `AppInstanceUserArn' of the user that makes the API call as the value
%% in
%% the header.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, RedactChannelMessage:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_messaging-chime_RedactChannelMessage.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec redact_channel_message(aws_client:aws_client(), binary() | list(), binary() | list(), redact_channel_message_request()) ->
    {ok, redact_channel_message_response(), tuple()} |
    {error, any()} |
    {error, redact_channel_message_errors(), tuple()}.
redact_channel_message(Client, ChannelArn, MessageId, Input) ->
    redact_channel_message(Client, ChannelArn, MessageId, Input, []).

-spec redact_channel_message(aws_client:aws_client(), binary() | list(), binary() | list(), redact_channel_message_request(), proplists:proplist()) ->
    {ok, redact_channel_message_response(), tuple()} |
    {error, any()} |
    {error, redact_channel_message_errors(), tuple()}.
redact_channel_message(Client, ChannelArn, MessageId, Input0, Options0) ->
    Method = post,
    Path = ["/channels/", aws_util:encode_uri(ChannelArn), "/messages/", aws_util:encode_uri(MessageId), "?operation=redact"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

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
-spec redact_conversation_message(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), redact_conversation_message_request()) ->
    {ok, redact_conversation_message_response(), tuple()} |
    {error, any()} |
    {error, redact_conversation_message_errors(), tuple()}.
redact_conversation_message(Client, AccountId, ConversationId, MessageId, Input) ->
    redact_conversation_message(Client, AccountId, ConversationId, MessageId, Input, []).

-spec redact_conversation_message(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), redact_conversation_message_request(), proplists:proplist()) ->
    {ok, redact_conversation_message_response(), tuple()} |
    {error, any()} |
    {error, redact_conversation_message_errors(), tuple()}.
redact_conversation_message(Client, AccountId, ConversationId, MessageId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AccountId), "/conversations/", aws_util:encode_uri(ConversationId), "/messages/", aws_util:encode_uri(MessageId), "?operation=redact"],
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

%% @doc Redacts the specified message from the specified Amazon Chime
%% channel.
-spec redact_room_message(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), redact_room_message_request()) ->
    {ok, redact_room_message_response(), tuple()} |
    {error, any()} |
    {error, redact_room_message_errors(), tuple()}.
redact_room_message(Client, AccountId, MessageId, RoomId, Input) ->
    redact_room_message(Client, AccountId, MessageId, RoomId, Input, []).

-spec redact_room_message(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), redact_room_message_request(), proplists:proplist()) ->
    {ok, redact_room_message_response(), tuple()} |
    {error, any()} |
    {error, redact_room_message_errors(), tuple()}.
redact_room_message(Client, AccountId, MessageId, RoomId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AccountId), "/rooms/", aws_util:encode_uri(RoomId), "/messages/", aws_util:encode_uri(MessageId), "?operation=redact"],
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

%% @doc Regenerates the security token for a bot.
-spec regenerate_security_token(aws_client:aws_client(), binary() | list(), binary() | list(), regenerate_security_token_request()) ->
    {ok, regenerate_security_token_response(), tuple()} |
    {error, any()} |
    {error, regenerate_security_token_errors(), tuple()}.
regenerate_security_token(Client, AccountId, BotId, Input) ->
    regenerate_security_token(Client, AccountId, BotId, Input, []).

-spec regenerate_security_token(aws_client:aws_client(), binary() | list(), binary() | list(), regenerate_security_token_request(), proplists:proplist()) ->
    {ok, regenerate_security_token_response(), tuple()} |
    {error, any()} |
    {error, regenerate_security_token_errors(), tuple()}.
regenerate_security_token(Client, AccountId, BotId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AccountId), "/bots/", aws_util:encode_uri(BotId), "?operation=regenerate-security-token"],
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

%% @doc Resets the personal meeting PIN for the specified user on an Amazon
%% Chime account.
%%
%% Returns
%% the `User' object with the updated personal meeting PIN.
-spec reset_personal_pin(aws_client:aws_client(), binary() | list(), binary() | list(), reset_personal_pin_request()) ->
    {ok, reset_personal_pin_response(), tuple()} |
    {error, any()} |
    {error, reset_personal_pin_errors(), tuple()}.
reset_personal_pin(Client, AccountId, UserId, Input) ->
    reset_personal_pin(Client, AccountId, UserId, Input, []).

-spec reset_personal_pin(aws_client:aws_client(), binary() | list(), binary() | list(), reset_personal_pin_request(), proplists:proplist()) ->
    {ok, reset_personal_pin_response(), tuple()} |
    {error, any()} |
    {error, reset_personal_pin_errors(), tuple()}.
reset_personal_pin(Client, AccountId, UserId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AccountId), "/users/", aws_util:encode_uri(UserId), "?operation=reset-personal-pin"],
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

%% @doc Moves a phone number from the Deletion queue back into the
%% phone number Inventory.
-spec restore_phone_number(aws_client:aws_client(), binary() | list(), restore_phone_number_request()) ->
    {ok, restore_phone_number_response(), tuple()} |
    {error, any()} |
    {error, restore_phone_number_errors(), tuple()}.
restore_phone_number(Client, PhoneNumberId, Input) ->
    restore_phone_number(Client, PhoneNumberId, Input, []).

-spec restore_phone_number(aws_client:aws_client(), binary() | list(), restore_phone_number_request(), proplists:proplist()) ->
    {ok, restore_phone_number_response(), tuple()} |
    {error, any()} |
    {error, restore_phone_number_errors(), tuple()}.
restore_phone_number(Client, PhoneNumberId, Input0, Options0) ->
    Method = post,
    Path = ["/phone-numbers/", aws_util:encode_uri(PhoneNumberId), "?operation=restore"],
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

%% @doc Searches for phone numbers that can be ordered.
%%
%% For US numbers, provide at least one of
%% the following search filters: `AreaCode', `City',
%% `State', or `TollFreePrefix'. If you provide
%% `City', you must also provide `State'. Numbers outside the US only
%% support the `PhoneNumberType' filter, which you must use.
-spec search_available_phone_numbers(aws_client:aws_client()) ->
    {ok, search_available_phone_numbers_response(), tuple()} |
    {error, any()} |
    {error, search_available_phone_numbers_errors(), tuple()}.
search_available_phone_numbers(Client)
  when is_map(Client) ->
    search_available_phone_numbers(Client, #{}, #{}).

-spec search_available_phone_numbers(aws_client:aws_client(), map(), map()) ->
    {ok, search_available_phone_numbers_response(), tuple()} |
    {error, any()} |
    {error, search_available_phone_numbers_errors(), tuple()}.
search_available_phone_numbers(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    search_available_phone_numbers(Client, QueryMap, HeadersMap, []).

-spec search_available_phone_numbers(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, search_available_phone_numbers_response(), tuple()} |
    {error, any()} |
    {error, search_available_phone_numbers_errors(), tuple()}.
search_available_phone_numbers(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/search?type=phone-numbers"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

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
%% `AppInstanceUserArn' of the user that makes the API call as the value
%% in
%% the header.
%%
%% Also, `STANDARD' messages can contain 4KB of data and the 1KB of
%% metadata.
%% `CONTROL' messages can contain 30 bytes of data and no metadata.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, SendChannelMessage:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_messaging-chime_SendChannelMessage.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec send_channel_message(aws_client:aws_client(), binary() | list(), send_channel_message_request()) ->
    {ok, send_channel_message_response(), tuple()} |
    {error, any()} |
    {error, send_channel_message_errors(), tuple()}.
send_channel_message(Client, ChannelArn, Input) ->
    send_channel_message(Client, ChannelArn, Input, []).

-spec send_channel_message(aws_client:aws_client(), binary() | list(), send_channel_message_request(), proplists:proplist()) ->
    {ok, send_channel_message_response(), tuple()} |
    {error, any()} |
    {error, send_channel_message_errors(), tuple()}.
send_channel_message(Client, ChannelArn, Input0, Options0) ->
    Method = post,
    Path = ["/channels/", aws_util:encode_uri(ChannelArn), "/messages"],
    SuccessStatusCode = 201,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

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
%%
%% For more information, refer to
%% Using Amazon Chime SDK live transcription
%% :
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/meeting-transcription.html
%% in the Amazon Chime SDK Developer Guide.
%%
%% If you specify an invalid configuration, a `TranscriptFailed' event
%% will be sent with the contents of the `BadRequestException' generated
%% by Amazon Transcribe.
%% For more information on each parameter and which combinations are valid,
%% refer to the
%% StartStreamTranscription:
%% https://docs.aws.amazon.com/transcribe/latest/APIReference/API_streaming_StartStreamTranscription.html
%% API in the
%% Amazon Transcribe Developer Guide.
%%
%% Amazon Chime SDK live transcription is powered by Amazon Transcribe. Use
%% of Amazon Transcribe is subject to the
%% AWS Service Terms: https://aws.amazon.com/service-terms/, including the
%% terms specific to the AWS Machine Learning and Artificial
%% Intelligence Services.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, StartMeetingTranscription:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_meeting-chime_StartMeetingTranscription.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec start_meeting_transcription(aws_client:aws_client(), binary() | list(), start_meeting_transcription_request()) ->
    {ok, start_meeting_transcription_response(), tuple()} |
    {error, any()} |
    {error, start_meeting_transcription_errors(), tuple()}.
start_meeting_transcription(Client, MeetingId, Input) ->
    start_meeting_transcription(Client, MeetingId, Input, []).

-spec start_meeting_transcription(aws_client:aws_client(), binary() | list(), start_meeting_transcription_request(), proplists:proplist()) ->
    {ok, start_meeting_transcription_response(), tuple()} |
    {error, any()} |
    {error, start_meeting_transcription_errors(), tuple()}.
start_meeting_transcription(Client, MeetingId, Input0, Options0) ->
    Method = post,
    Path = ["/meetings/", aws_util:encode_uri(MeetingId), "/transcription?operation=start"],
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

%% @doc Stops transcription for the specified `meetingId'.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, StopMeetingTranscription:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_meeting-chime_StopMeetingTranscription.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec stop_meeting_transcription(aws_client:aws_client(), binary() | list(), stop_meeting_transcription_request()) ->
    {ok, stop_meeting_transcription_response(), tuple()} |
    {error, any()} |
    {error, stop_meeting_transcription_errors(), tuple()}.
stop_meeting_transcription(Client, MeetingId, Input) ->
    stop_meeting_transcription(Client, MeetingId, Input, []).

-spec stop_meeting_transcription(aws_client:aws_client(), binary() | list(), stop_meeting_transcription_request(), proplists:proplist()) ->
    {ok, stop_meeting_transcription_response(), tuple()} |
    {error, any()} |
    {error, stop_meeting_transcription_errors(), tuple()}.
stop_meeting_transcription(Client, MeetingId, Input0, Options0) ->
    Method = post,
    Path = ["/meetings/", aws_util:encode_uri(MeetingId), "/transcription?operation=stop"],
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

%% @doc Applies the specified tags to the specified Amazon Chime attendee.
%%
%% TagAttendee is not supported in the Amazon Chime SDK Meetings Namespace.
%% Update your application to remove calls to this API.
-spec tag_attendee(aws_client:aws_client(), binary() | list(), binary() | list(), tag_attendee_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, tag_attendee_errors(), tuple()}.
tag_attendee(Client, AttendeeId, MeetingId, Input) ->
    tag_attendee(Client, AttendeeId, MeetingId, Input, []).

-spec tag_attendee(aws_client:aws_client(), binary() | list(), binary() | list(), tag_attendee_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, tag_attendee_errors(), tuple()}.
tag_attendee(Client, AttendeeId, MeetingId, Input0, Options0) ->
    Method = post,
    Path = ["/meetings/", aws_util:encode_uri(MeetingId), "/attendees/", aws_util:encode_uri(AttendeeId), "/tags?operation=add"],
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

%% @doc Applies the specified tags to the specified Amazon Chime SDK meeting.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, TagResource:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_meeting-chime_TagResource.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec tag_meeting(aws_client:aws_client(), binary() | list(), tag_meeting_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, tag_meeting_errors(), tuple()}.
tag_meeting(Client, MeetingId, Input) ->
    tag_meeting(Client, MeetingId, Input, []).

-spec tag_meeting(aws_client:aws_client(), binary() | list(), tag_meeting_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, tag_meeting_errors(), tuple()}.
tag_meeting(Client, MeetingId, Input0, Options0) ->
    Method = post,
    Path = ["/meetings/", aws_util:encode_uri(MeetingId), "/tags?operation=add"],
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

%% @doc Applies the specified tags to the specified Amazon Chime SDK meeting
%% resource.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, TagResource:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_meeting-chime_TagResource.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec tag_resource(aws_client:aws_client(), tag_resource_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input) ->
    tag_resource(Client, Input, []).

-spec tag_resource(aws_client:aws_client(), tag_resource_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/tags?operation=tag-resource"],
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

%% @doc Untags the specified tags from the specified Amazon Chime SDK
%% attendee.
%%
%% UntagAttendee is not supported in the Amazon Chime SDK Meetings Namespace.
%% Update your application to remove calls to this API.
-spec untag_attendee(aws_client:aws_client(), binary() | list(), binary() | list(), untag_attendee_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, untag_attendee_errors(), tuple()}.
untag_attendee(Client, AttendeeId, MeetingId, Input) ->
    untag_attendee(Client, AttendeeId, MeetingId, Input, []).

-spec untag_attendee(aws_client:aws_client(), binary() | list(), binary() | list(), untag_attendee_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, untag_attendee_errors(), tuple()}.
untag_attendee(Client, AttendeeId, MeetingId, Input0, Options0) ->
    Method = post,
    Path = ["/meetings/", aws_util:encode_uri(MeetingId), "/attendees/", aws_util:encode_uri(AttendeeId), "/tags?operation=delete"],
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

%% @doc Untags the specified tags from the specified Amazon Chime SDK
%% meeting.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, UntagResource:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_meeting-chime_UntagResource.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec untag_meeting(aws_client:aws_client(), binary() | list(), untag_meeting_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, untag_meeting_errors(), tuple()}.
untag_meeting(Client, MeetingId, Input) ->
    untag_meeting(Client, MeetingId, Input, []).

-spec untag_meeting(aws_client:aws_client(), binary() | list(), untag_meeting_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, untag_meeting_errors(), tuple()}.
untag_meeting(Client, MeetingId, Input0, Options0) ->
    Method = post,
    Path = ["/meetings/", aws_util:encode_uri(MeetingId), "/tags?operation=delete"],
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

%% @doc Untags the specified tags from the specified Amazon Chime SDK meeting
%% resource.
%%
%% Applies the specified tags to the specified Amazon Chime SDK meeting
%% resource.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, UntagResource:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_meeting-chime_UntagResource.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec untag_resource(aws_client:aws_client(), untag_resource_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input) ->
    untag_resource(Client, Input, []).

-spec untag_resource(aws_client:aws_client(), untag_resource_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/tags?operation=untag-resource"],
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

%% @doc Updates account details for the specified Amazon Chime account.
%%
%% Currently, only account name and default license updates are supported for
%% this action.
-spec update_account(aws_client:aws_client(), binary() | list(), update_account_request()) ->
    {ok, update_account_response(), tuple()} |
    {error, any()} |
    {error, update_account_errors(), tuple()}.
update_account(Client, AccountId, Input) ->
    update_account(Client, AccountId, Input, []).

-spec update_account(aws_client:aws_client(), binary() | list(), update_account_request(), proplists:proplist()) ->
    {ok, update_account_response(), tuple()} |
    {error, any()} |
    {error, update_account_errors(), tuple()}.
update_account(Client, AccountId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AccountId), ""],
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

%% @doc Updates the settings for the specified Amazon Chime account.
%%
%% You can update settings for
%% remote control of shared screens, or for the dial-out option. For more
%% information about
%% these settings, see Use
%% the Policies Page:
%% https://docs.aws.amazon.com/chime/latest/ag/policies.html in the Amazon
%% Chime Administration
%% Guide.
-spec update_account_settings(aws_client:aws_client(), binary() | list(), update_account_settings_request()) ->
    {ok, update_account_settings_response(), tuple()} |
    {error, any()} |
    {error, update_account_settings_errors(), tuple()}.
update_account_settings(Client, AccountId, Input) ->
    update_account_settings(Client, AccountId, Input, []).

-spec update_account_settings(aws_client:aws_client(), binary() | list(), update_account_settings_request(), proplists:proplist()) ->
    {ok, update_account_settings_response(), tuple()} |
    {error, any()} |
    {error, update_account_settings_errors(), tuple()}.
update_account_settings(Client, AccountId, Input0, Options0) ->
    Method = put,
    Path = ["/accounts/", aws_util:encode_uri(AccountId), "/settings"],
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

%% @doc Updates `AppInstance' metadata.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, UpdateAppInstance:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_identity-chime_UpdateAppInstance.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec update_app_instance(aws_client:aws_client(), binary() | list(), update_app_instance_request()) ->
    {ok, update_app_instance_response(), tuple()} |
    {error, any()} |
    {error, update_app_instance_errors(), tuple()}.
update_app_instance(Client, AppInstanceArn, Input) ->
    update_app_instance(Client, AppInstanceArn, Input, []).

-spec update_app_instance(aws_client:aws_client(), binary() | list(), update_app_instance_request(), proplists:proplist()) ->
    {ok, update_app_instance_response(), tuple()} |
    {error, any()} |
    {error, update_app_instance_errors(), tuple()}.
update_app_instance(Client, AppInstanceArn, Input0, Options0) ->
    Method = put,
    Path = ["/app-instances/", aws_util:encode_uri(AppInstanceArn), ""],
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

%% @doc Updates the details of an `AppInstanceUser'.
%%
%% You can update names and metadata.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, UpdateAppInstanceUser:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_identity-chime_UpdateAppInstanceUser.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec update_app_instance_user(aws_client:aws_client(), binary() | list(), update_app_instance_user_request()) ->
    {ok, update_app_instance_user_response(), tuple()} |
    {error, any()} |
    {error, update_app_instance_user_errors(), tuple()}.
update_app_instance_user(Client, AppInstanceUserArn, Input) ->
    update_app_instance_user(Client, AppInstanceUserArn, Input, []).

-spec update_app_instance_user(aws_client:aws_client(), binary() | list(), update_app_instance_user_request(), proplists:proplist()) ->
    {ok, update_app_instance_user_response(), tuple()} |
    {error, any()} |
    {error, update_app_instance_user_errors(), tuple()}.
update_app_instance_user(Client, AppInstanceUserArn, Input0, Options0) ->
    Method = put,
    Path = ["/app-instance-users/", aws_util:encode_uri(AppInstanceUserArn), ""],
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

%% @doc Updates the status of the specified bot, such as starting or stopping
%% the bot from running in your Amazon Chime Enterprise account.
-spec update_bot(aws_client:aws_client(), binary() | list(), binary() | list(), update_bot_request()) ->
    {ok, update_bot_response(), tuple()} |
    {error, any()} |
    {error, update_bot_errors(), tuple()}.
update_bot(Client, AccountId, BotId, Input) ->
    update_bot(Client, AccountId, BotId, Input, []).

-spec update_bot(aws_client:aws_client(), binary() | list(), binary() | list(), update_bot_request(), proplists:proplist()) ->
    {ok, update_bot_response(), tuple()} |
    {error, any()} |
    {error, update_bot_errors(), tuple()}.
update_bot(Client, AccountId, BotId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AccountId), "/bots/", aws_util:encode_uri(BotId), ""],
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

%% @doc Update a channel's attributes.
%%
%% Restriction: You can't change a channel's privacy.
%%
%% The `x-amz-chime-bearer' request header is mandatory. Use the
%% `AppInstanceUserArn' of the user that makes the API call as the value
%% in
%% the header.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, UpdateChannel:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_messaging-chime_UpdateChannel.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec update_channel(aws_client:aws_client(), binary() | list(), update_channel_request()) ->
    {ok, update_channel_response(), tuple()} |
    {error, any()} |
    {error, update_channel_errors(), tuple()}.
update_channel(Client, ChannelArn, Input) ->
    update_channel(Client, ChannelArn, Input, []).

-spec update_channel(aws_client:aws_client(), binary() | list(), update_channel_request(), proplists:proplist()) ->
    {ok, update_channel_response(), tuple()} |
    {error, any()} |
    {error, update_channel_errors(), tuple()}.
update_channel(Client, ChannelArn, Input0, Options0) ->
    Method = put,
    Path = ["/channels/", aws_util:encode_uri(ChannelArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

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
%% `AppInstanceUserArn' of the user that makes the API call as the value
%% in
%% the header.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, UpdateChannelMessage:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_messaging-chime_UpdateChannelMessage.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec update_channel_message(aws_client:aws_client(), binary() | list(), binary() | list(), update_channel_message_request()) ->
    {ok, update_channel_message_response(), tuple()} |
    {error, any()} |
    {error, update_channel_message_errors(), tuple()}.
update_channel_message(Client, ChannelArn, MessageId, Input) ->
    update_channel_message(Client, ChannelArn, MessageId, Input, []).

-spec update_channel_message(aws_client:aws_client(), binary() | list(), binary() | list(), update_channel_message_request(), proplists:proplist()) ->
    {ok, update_channel_message_response(), tuple()} |
    {error, any()} |
    {error, update_channel_message_errors(), tuple()}.
update_channel_message(Client, ChannelArn, MessageId, Input0, Options0) ->
    Method = put,
    Path = ["/channels/", aws_util:encode_uri(ChannelArn), "/messages/", aws_util:encode_uri(MessageId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

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
%% in
%% the header.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, UpdateChannelReadMarker:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_messaging-chime_UpdateChannelReadMarker.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec update_channel_read_marker(aws_client:aws_client(), binary() | list(), update_channel_read_marker_request()) ->
    {ok, update_channel_read_marker_response(), tuple()} |
    {error, any()} |
    {error, update_channel_read_marker_errors(), tuple()}.
update_channel_read_marker(Client, ChannelArn, Input) ->
    update_channel_read_marker(Client, ChannelArn, Input, []).

-spec update_channel_read_marker(aws_client:aws_client(), binary() | list(), update_channel_read_marker_request(), proplists:proplist()) ->
    {ok, update_channel_read_marker_response(), tuple()} |
    {error, any()} |
    {error, update_channel_read_marker_errors(), tuple()}.
update_channel_read_marker(Client, ChannelArn, Input0, Options0) ->
    Method = put,
    Path = ["/channels/", aws_util:encode_uri(ChannelArn), "/readMarker"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-chime-bearer">>, <<"ChimeBearer">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates global settings for the administrator's AWS account, such
%% as Amazon Chime Business Calling and Amazon Chime Voice Connector
%% settings.
-spec update_global_settings(aws_client:aws_client(), update_global_settings_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_global_settings_errors(), tuple()}.
update_global_settings(Client, Input) ->
    update_global_settings(Client, Input, []).

-spec update_global_settings(aws_client:aws_client(), update_global_settings_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_global_settings_errors(), tuple()}.
update_global_settings(Client, Input0, Options0) ->
    Method = put,
    Path = ["/settings"],
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
-spec update_phone_number(aws_client:aws_client(), binary() | list(), update_phone_number_request()) ->
    {ok, update_phone_number_response(), tuple()} |
    {error, any()} |
    {error, update_phone_number_errors(), tuple()}.
update_phone_number(Client, PhoneNumberId, Input) ->
    update_phone_number(Client, PhoneNumberId, Input, []).

-spec update_phone_number(aws_client:aws_client(), binary() | list(), update_phone_number_request(), proplists:proplist()) ->
    {ok, update_phone_number_response(), tuple()} |
    {error, any()} |
    {error, update_phone_number_errors(), tuple()}.
update_phone_number(Client, PhoneNumberId, Input0, Options0) ->
    Method = post,
    Path = ["/phone-numbers/", aws_util:encode_uri(PhoneNumberId), ""],
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

%% @doc Updates the phone number settings for the administrator's AWS
%% account, such as the default
%% outbound calling name.
%%
%% You can update the default outbound calling name once every seven
%% days. Outbound calling names can take up to 72 hours to update.
-spec update_phone_number_settings(aws_client:aws_client(), update_phone_number_settings_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_phone_number_settings_errors(), tuple()}.
update_phone_number_settings(Client, Input) ->
    update_phone_number_settings(Client, Input, []).

-spec update_phone_number_settings(aws_client:aws_client(), update_phone_number_settings_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_phone_number_settings_errors(), tuple()}.
update_phone_number_settings(Client, Input0, Options0) ->
    Method = put,
    Path = ["/settings/phone-number"],
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

%% @doc Updates the specified proxy session details, such as voice or SMS
%% capabilities.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, UpdateProxySession:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_UpdateProxySession.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec update_proxy_session(aws_client:aws_client(), binary() | list(), binary() | list(), update_proxy_session_request()) ->
    {ok, update_proxy_session_response(), tuple()} |
    {error, any()} |
    {error, update_proxy_session_errors(), tuple()}.
update_proxy_session(Client, ProxySessionId, VoiceConnectorId, Input) ->
    update_proxy_session(Client, ProxySessionId, VoiceConnectorId, Input, []).

-spec update_proxy_session(aws_client:aws_client(), binary() | list(), binary() | list(), update_proxy_session_request(), proplists:proplist()) ->
    {ok, update_proxy_session_response(), tuple()} |
    {error, any()} |
    {error, update_proxy_session_errors(), tuple()}.
update_proxy_session(Client, ProxySessionId, VoiceConnectorId, Input0, Options0) ->
    Method = post,
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/proxy-sessions/", aws_util:encode_uri(ProxySessionId), ""],
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

%% @doc Updates room details, such as the room name, for a room in an Amazon
%% Chime Enterprise account.
-spec update_room(aws_client:aws_client(), binary() | list(), binary() | list(), update_room_request()) ->
    {ok, update_room_response(), tuple()} |
    {error, any()} |
    {error, update_room_errors(), tuple()}.
update_room(Client, AccountId, RoomId, Input) ->
    update_room(Client, AccountId, RoomId, Input, []).

-spec update_room(aws_client:aws_client(), binary() | list(), binary() | list(), update_room_request(), proplists:proplist()) ->
    {ok, update_room_response(), tuple()} |
    {error, any()} |
    {error, update_room_errors(), tuple()}.
update_room(Client, AccountId, RoomId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AccountId), "/rooms/", aws_util:encode_uri(RoomId), ""],
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

%% @doc Updates room membership details, such as the member role, for a room
%% in an Amazon Chime
%% Enterprise account.
%%
%% The member role designates whether the member is a chat room
%% administrator or a general chat room member. The member role can be
%% updated only for
%% user IDs.
-spec update_room_membership(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), update_room_membership_request()) ->
    {ok, update_room_membership_response(), tuple()} |
    {error, any()} |
    {error, update_room_membership_errors(), tuple()}.
update_room_membership(Client, AccountId, MemberId, RoomId, Input) ->
    update_room_membership(Client, AccountId, MemberId, RoomId, Input, []).

-spec update_room_membership(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), update_room_membership_request(), proplists:proplist()) ->
    {ok, update_room_membership_response(), tuple()} |
    {error, any()} |
    {error, update_room_membership_errors(), tuple()}.
update_room_membership(Client, AccountId, MemberId, RoomId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AccountId), "/rooms/", aws_util:encode_uri(RoomId), "/memberships/", aws_util:encode_uri(MemberId), ""],
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

%% @doc Updates the details of the specified SIP media application.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, UpdateSipMediaApplication:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_UpdateSipMediaApplication.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec update_sip_media_application(aws_client:aws_client(), binary() | list(), update_sip_media_application_request()) ->
    {ok, update_sip_media_application_response(), tuple()} |
    {error, any()} |
    {error, update_sip_media_application_errors(), tuple()}.
update_sip_media_application(Client, SipMediaApplicationId, Input) ->
    update_sip_media_application(Client, SipMediaApplicationId, Input, []).

-spec update_sip_media_application(aws_client:aws_client(), binary() | list(), update_sip_media_application_request(), proplists:proplist()) ->
    {ok, update_sip_media_application_response(), tuple()} |
    {error, any()} |
    {error, update_sip_media_application_errors(), tuple()}.
update_sip_media_application(Client, SipMediaApplicationId, Input0, Options0) ->
    Method = put,
    Path = ["/sip-media-applications/", aws_util:encode_uri(SipMediaApplicationId), ""],
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

%% @doc Invokes the AWS Lambda function associated with the SIP media
%% application and transaction ID in an update request.
%%
%% The Lambda function can then return a new set of actions.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, UpdateSipMediaApplicationCall:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_UpdateSipMediaApplicationCall.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec update_sip_media_application_call(aws_client:aws_client(), binary() | list(), binary() | list(), update_sip_media_application_call_request()) ->
    {ok, update_sip_media_application_call_response(), tuple()} |
    {error, any()} |
    {error, update_sip_media_application_call_errors(), tuple()}.
update_sip_media_application_call(Client, SipMediaApplicationId, TransactionId, Input) ->
    update_sip_media_application_call(Client, SipMediaApplicationId, TransactionId, Input, []).

-spec update_sip_media_application_call(aws_client:aws_client(), binary() | list(), binary() | list(), update_sip_media_application_call_request(), proplists:proplist()) ->
    {ok, update_sip_media_application_call_response(), tuple()} |
    {error, any()} |
    {error, update_sip_media_application_call_errors(), tuple()}.
update_sip_media_application_call(Client, SipMediaApplicationId, TransactionId, Input0, Options0) ->
    Method = post,
    Path = ["/sip-media-applications/", aws_util:encode_uri(SipMediaApplicationId), "/calls/", aws_util:encode_uri(TransactionId), ""],
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

%% @doc Updates the details of the specified SIP rule.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, UpdateSipRule:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_UpdateSipRule.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec update_sip_rule(aws_client:aws_client(), binary() | list(), update_sip_rule_request()) ->
    {ok, update_sip_rule_response(), tuple()} |
    {error, any()} |
    {error, update_sip_rule_errors(), tuple()}.
update_sip_rule(Client, SipRuleId, Input) ->
    update_sip_rule(Client, SipRuleId, Input, []).

-spec update_sip_rule(aws_client:aws_client(), binary() | list(), update_sip_rule_request(), proplists:proplist()) ->
    {ok, update_sip_rule_response(), tuple()} |
    {error, any()} |
    {error, update_sip_rule_errors(), tuple()}.
update_sip_rule(Client, SipRuleId, Input0, Options0) ->
    Method = put,
    Path = ["/sip-rules/", aws_util:encode_uri(SipRuleId), ""],
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

%% @doc Updates user details for a specified user ID.
%%
%% Currently, only `LicenseType' updates are supported for this action.
-spec update_user(aws_client:aws_client(), binary() | list(), binary() | list(), update_user_request()) ->
    {ok, update_user_response(), tuple()} |
    {error, any()} |
    {error, update_user_errors(), tuple()}.
update_user(Client, AccountId, UserId, Input) ->
    update_user(Client, AccountId, UserId, Input, []).

-spec update_user(aws_client:aws_client(), binary() | list(), binary() | list(), update_user_request(), proplists:proplist()) ->
    {ok, update_user_response(), tuple()} |
    {error, any()} |
    {error, update_user_errors(), tuple()}.
update_user(Client, AccountId, UserId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AccountId), "/users/", aws_util:encode_uri(UserId), ""],
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

%% @doc Updates the settings for the specified user, such as phone number
%% settings.
-spec update_user_settings(aws_client:aws_client(), binary() | list(), binary() | list(), update_user_settings_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_user_settings_errors(), tuple()}.
update_user_settings(Client, AccountId, UserId, Input) ->
    update_user_settings(Client, AccountId, UserId, Input, []).

-spec update_user_settings(aws_client:aws_client(), binary() | list(), binary() | list(), update_user_settings_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_user_settings_errors(), tuple()}.
update_user_settings(Client, AccountId, UserId, Input0, Options0) ->
    Method = put,
    Path = ["/accounts/", aws_util:encode_uri(AccountId), "/users/", aws_util:encode_uri(UserId), "/settings"],
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

%% @doc Updates details for the specified Amazon Chime Voice Connector.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, UpdateVoiceConnector:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_UpdateVoiceConnector.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec update_voice_connector(aws_client:aws_client(), binary() | list(), update_voice_connector_request()) ->
    {ok, update_voice_connector_response(), tuple()} |
    {error, any()} |
    {error, update_voice_connector_errors(), tuple()}.
update_voice_connector(Client, VoiceConnectorId, Input) ->
    update_voice_connector(Client, VoiceConnectorId, Input, []).

-spec update_voice_connector(aws_client:aws_client(), binary() | list(), update_voice_connector_request(), proplists:proplist()) ->
    {ok, update_voice_connector_response(), tuple()} |
    {error, any()} |
    {error, update_voice_connector_errors(), tuple()}.
update_voice_connector(Client, VoiceConnectorId, Input0, Options0) ->
    Method = put,
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), ""],
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

%% @doc Updates details of the specified Amazon Chime Voice Connector group,
%% such as the name and
%% Amazon Chime Voice Connector priority ranking.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, UpdateVoiceConnectorGroup:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_UpdateVoiceConnectorGroup.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec update_voice_connector_group(aws_client:aws_client(), binary() | list(), update_voice_connector_group_request()) ->
    {ok, update_voice_connector_group_response(), tuple()} |
    {error, any()} |
    {error, update_voice_connector_group_errors(), tuple()}.
update_voice_connector_group(Client, VoiceConnectorGroupId, Input) ->
    update_voice_connector_group(Client, VoiceConnectorGroupId, Input, []).

-spec update_voice_connector_group(aws_client:aws_client(), binary() | list(), update_voice_connector_group_request(), proplists:proplist()) ->
    {ok, update_voice_connector_group_response(), tuple()} |
    {error, any()} |
    {error, update_voice_connector_group_errors(), tuple()}.
update_voice_connector_group(Client, VoiceConnectorGroupId, Input0, Options0) ->
    Method = put,
    Path = ["/voice-connector-groups/", aws_util:encode_uri(VoiceConnectorGroupId), ""],
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

%% @doc Validates an address to be used for 911 calls made with Amazon
%% Chime Voice Connectors.
%%
%% You can use validated addresses
%% in a Presence Information Data Format Location Object file that you
%% include in SIP requests.
%% That helps ensure that addresses are routed to the appropriate Public
%% Safety Answering Point.
%%
%% This API is is no longer supported and will not be updated. We recommend
%% using the latest version, ValidateE911Address:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_ValidateE911Address.html,
%% in the Amazon Chime SDK.
%%
%% Using the latest version requires migrating to a dedicated namespace. For
%% more information, refer to
%% Migrating from the Amazon Chime namespace:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
%% in the
%% Amazon Chime SDK Developer Guide.
-spec validate_e911_address(aws_client:aws_client(), validate_e911_address_request()) ->
    {ok, validate_e911_address_response(), tuple()} |
    {error, any()} |
    {error, validate_e911_address_errors(), tuple()}.
validate_e911_address(Client, Input) ->
    validate_e911_address(Client, Input, []).

-spec validate_e911_address(aws_client:aws_client(), validate_e911_address_request(), proplists:proplist()) ->
    {ok, validate_e911_address_response(), tuple()} |
    {error, any()} |
    {error, validate_e911_address_errors(), tuple()}.
validate_e911_address(Client, Input0, Options0) ->
    Method = post,
    Path = ["/emergency-calling/address"],
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
build_host(EndpointPrefix, #{endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Endpoint], <<".">>).

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
