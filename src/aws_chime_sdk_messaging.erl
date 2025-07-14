%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc The Amazon Chime SDK messaging APIs in this section allow software
%% developers to send
%% and receive messages in custom messaging applications.
%%
%% These APIs depend on the frameworks
%% provided by the Amazon Chime SDK identity APIs. For more information about
%% the messaging
%% APIs, see Amazon Chime SDK messaging:
%% https://docs.aws.amazon.com/chime/latest/APIReference/API_Operations_Amazon_Chime_SDK_Messaging.html.
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
         put_channel_expiration_settings/3,
         put_channel_expiration_settings/4,
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



%% Example:
%% get_messaging_streaming_configurations_response() :: #{
%%   <<"StreamingConfigurations">> => list(streaming_configuration())
%% }
-type get_messaging_streaming_configurations_response() :: #{binary() => any()}.


%% Example:
%% list_channel_flows_request() :: #{
%%   <<"AppInstanceArn">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_channel_flows_request() :: #{binary() => any()}.


%% Example:
%% streaming_configuration() :: #{
%%   <<"DataType">> => list(any()),
%%   <<"ResourceArn">> => string()
%% }
-type streaming_configuration() :: #{binary() => any()}.


%% Example:
%% list_channel_memberships_for_app_instance_user_request() :: #{
%%   <<"AppInstanceUserArn">> => string(),
%%   <<"ChimeBearer">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_channel_memberships_for_app_instance_user_request() :: #{binary() => any()}.


%% Example:
%% delete_channel_request() :: #{
%%   <<"ChimeBearer">> := string()
%% }
-type delete_channel_request() :: #{binary() => any()}.


%% Example:
%% sub_channel_summary() :: #{
%%   <<"MembershipCount">> => integer(),
%%   <<"SubChannelId">> => string()
%% }
-type sub_channel_summary() :: #{binary() => any()}.


%% Example:
%% list_channel_bans_request() :: #{
%%   <<"ChimeBearer">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_channel_bans_request() :: #{binary() => any()}.


%% Example:
%% describe_channel_moderated_by_app_instance_user_request() :: #{
%%   <<"AppInstanceUserArn">> := string(),
%%   <<"ChimeBearer">> := string()
%% }
-type describe_channel_moderated_by_app_instance_user_request() :: #{binary() => any()}.


%% Example:
%% describe_channel_moderator_response() :: #{
%%   <<"ChannelModerator">> => channel_moderator()
%% }
-type describe_channel_moderator_response() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"ResourceARN">> := string(),
%%   <<"Tags">> := list(tag())
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% redact_channel_message_response() :: #{
%%   <<"ChannelArn">> => string(),
%%   <<"MessageId">> => string(),
%%   <<"SubChannelId">> => string()
%% }
-type redact_channel_message_response() :: #{binary() => any()}.


%% Example:
%% create_channel_moderator_response() :: #{
%%   <<"ChannelArn">> => string(),
%%   <<"ChannelModerator">> => identity()
%% }
-type create_channel_moderator_response() :: #{binary() => any()}.


%% Example:
%% delete_channel_moderator_request() :: #{
%%   <<"ChimeBearer">> := string()
%% }
-type delete_channel_moderator_request() :: #{binary() => any()}.


%% Example:
%% create_channel_response() :: #{
%%   <<"ChannelArn">> => string()
%% }
-type create_channel_response() :: #{binary() => any()}.


%% Example:
%% channel_membership_for_app_instance_user_summary() :: #{
%%   <<"AppInstanceUserMembershipSummary">> => app_instance_user_membership_summary(),
%%   <<"ChannelSummary">> => channel_summary()
%% }
-type channel_membership_for_app_instance_user_summary() :: #{binary() => any()}.


%% Example:
%% list_channel_flows_response() :: #{
%%   <<"ChannelFlows">> => list(channel_flow_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_channel_flows_response() :: #{binary() => any()}.


%% Example:
%% describe_channel_flow_response() :: #{
%%   <<"ChannelFlow">> => channel_flow()
%% }
-type describe_channel_flow_response() :: #{binary() => any()}.


%% Example:
%% list_channel_messages_response() :: #{
%%   <<"ChannelArn">> => string(),
%%   <<"ChannelMessages">> => list(channel_message_summary()),
%%   <<"NextToken">> => string(),
%%   <<"SubChannelId">> => string()
%% }
-type list_channel_messages_response() :: #{binary() => any()}.


%% Example:
%% batch_create_channel_membership_response() :: #{
%%   <<"BatchChannelMemberships">> => batch_channel_memberships(),
%%   <<"Errors">> => list(batch_create_channel_membership_error())
%% }
-type batch_create_channel_membership_response() :: #{binary() => any()}.


%% Example:
%% put_channel_expiration_settings_response() :: #{
%%   <<"ChannelArn">> => string(),
%%   <<"ExpirationSettings">> => expiration_settings()
%% }
-type put_channel_expiration_settings_response() :: #{binary() => any()}.


%% Example:
%% service_failure_exception() :: #{
%%   <<"Code">> => list(any()),
%%   <<"Message">> => string()
%% }
-type service_failure_exception() :: #{binary() => any()}.


%% Example:
%% identity() :: #{
%%   <<"Arn">> => string(),
%%   <<"Name">> => string()
%% }
-type identity() :: #{binary() => any()}.


%% Example:
%% forbidden_exception() :: #{
%%   <<"Code">> => list(any()),
%%   <<"Message">> => string()
%% }
-type forbidden_exception() :: #{binary() => any()}.


%% Example:
%% update_channel_flow_response() :: #{
%%   <<"ChannelFlowArn">> => string()
%% }
-type update_channel_flow_response() :: #{binary() => any()}.


%% Example:
%% describe_channel_moderated_by_app_instance_user_response() :: #{
%%   <<"Channel">> => channel_moderated_by_app_instance_user_summary()
%% }
-type describe_channel_moderated_by_app_instance_user_response() :: #{binary() => any()}.


%% Example:
%% channel_membership() :: #{
%%   <<"ChannelArn">> => string(),
%%   <<"CreatedTimestamp">> => non_neg_integer(),
%%   <<"InvitedBy">> => identity(),
%%   <<"LastUpdatedTimestamp">> => non_neg_integer(),
%%   <<"Member">> => identity(),
%%   <<"SubChannelId">> => string(),
%%   <<"Type">> => list(any())
%% }
-type channel_membership() :: #{binary() => any()}.


%% Example:
%% message_attribute_value() :: #{
%%   <<"StringValues">> => list(string())
%% }
-type message_attribute_value() :: #{binary() => any()}.


%% Example:
%% unauthorized_client_exception() :: #{
%%   <<"Code">> => list(any()),
%%   <<"Message">> => string()
%% }
-type unauthorized_client_exception() :: #{binary() => any()}.


%% Example:
%% redact_channel_message_request() :: #{
%%   <<"ChimeBearer">> := string(),
%%   <<"SubChannelId">> => string()
%% }
-type redact_channel_message_request() :: #{binary() => any()}.


%% Example:
%% search_channels_request() :: #{
%%   <<"ChimeBearer">> => string(),
%%   <<"Fields">> := list(search_field()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type search_channels_request() :: #{binary() => any()}.


%% Example:
%% update_channel_message_request() :: #{
%%   <<"ChimeBearer">> := string(),
%%   <<"Content">> := string(),
%%   <<"ContentType">> => string(),
%%   <<"Metadata">> => string(),
%%   <<"SubChannelId">> => string()
%% }
-type update_channel_message_request() :: #{binary() => any()}.


%% Example:
%% create_channel_moderator_request() :: #{
%%   <<"ChannelModeratorArn">> := string(),
%%   <<"ChimeBearer">> := string()
%% }
-type create_channel_moderator_request() :: #{binary() => any()}.


%% Example:
%% throttled_client_exception() :: #{
%%   <<"Code">> => list(any()),
%%   <<"Message">> => string()
%% }
-type throttled_client_exception() :: #{binary() => any()}.


%% Example:
%% list_channels_associated_with_channel_flow_response() :: #{
%%   <<"Channels">> => list(channel_associated_with_flow_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_channels_associated_with_channel_flow_response() :: #{binary() => any()}.


%% Example:
%% describe_channel_membership_response() :: #{
%%   <<"ChannelMembership">> => channel_membership()
%% }
-type describe_channel_membership_response() :: #{binary() => any()}.


%% Example:
%% create_channel_ban_request() :: #{
%%   <<"ChimeBearer">> := string(),
%%   <<"MemberArn">> := string()
%% }
-type create_channel_ban_request() :: #{binary() => any()}.

%% Example:
%% describe_channel_flow_request() :: #{}
-type describe_channel_flow_request() :: #{}.


%% Example:
%% app_instance_user_membership_summary() :: #{
%%   <<"ReadMarkerTimestamp">> => non_neg_integer(),
%%   <<"SubChannelId">> => string(),
%%   <<"Type">> => list(any())
%% }
-type app_instance_user_membership_summary() :: #{binary() => any()}.


%% Example:
%% send_channel_message_response() :: #{
%%   <<"ChannelArn">> => string(),
%%   <<"MessageId">> => string(),
%%   <<"Status">> => channel_message_status_structure(),
%%   <<"SubChannelId">> => string()
%% }
-type send_channel_message_response() :: #{binary() => any()}.


%% Example:
%% processor() :: #{
%%   <<"Configuration">> => processor_configuration(),
%%   <<"ExecutionOrder">> => integer(),
%%   <<"FallbackAction">> => list(any()),
%%   <<"Name">> => string()
%% }
-type processor() :: #{binary() => any()}.


%% Example:
%% expiration_settings() :: #{
%%   <<"ExpirationCriterion">> => list(any()),
%%   <<"ExpirationDays">> => integer()
%% }
-type expiration_settings() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"ResourceARN">> := string(),
%%   <<"TagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% channel_message_callback() :: #{
%%   <<"Content">> => string(),
%%   <<"ContentType">> => string(),
%%   <<"MessageAttributes">> => map(),
%%   <<"MessageId">> => string(),
%%   <<"Metadata">> => string(),
%%   <<"PushNotification">> => push_notification_configuration(),
%%   <<"SubChannelId">> => string()
%% }
-type channel_message_callback() :: #{binary() => any()}.


%% Example:
%% list_sub_channels_response() :: #{
%%   <<"ChannelArn">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"SubChannels">> => list(sub_channel_summary())
%% }
-type list_sub_channels_response() :: #{binary() => any()}.


%% Example:
%% get_channel_membership_preferences_request() :: #{
%%   <<"ChimeBearer">> := string()
%% }
-type get_channel_membership_preferences_request() :: #{binary() => any()}.


%% Example:
%% list_channels_moderated_by_app_instance_user_response() :: #{
%%   <<"Channels">> => list(channel_moderated_by_app_instance_user_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_channels_moderated_by_app_instance_user_response() :: #{binary() => any()}.


%% Example:
%% put_channel_membership_preferences_request() :: #{
%%   <<"ChimeBearer">> := string(),
%%   <<"Preferences">> := channel_membership_preferences()
%% }
-type put_channel_membership_preferences_request() :: #{binary() => any()}.


%% Example:
%% list_channels_moderated_by_app_instance_user_request() :: #{
%%   <<"AppInstanceUserArn">> => string(),
%%   <<"ChimeBearer">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_channels_moderated_by_app_instance_user_request() :: #{binary() => any()}.


%% Example:
%% target() :: #{
%%   <<"MemberArn">> => string()
%% }
-type target() :: #{binary() => any()}.


%% Example:
%% describe_channel_moderator_request() :: #{
%%   <<"ChimeBearer">> := string()
%% }
-type describe_channel_moderator_request() :: #{binary() => any()}.


%% Example:
%% channel_flow() :: #{
%%   <<"ChannelFlowArn">> => string(),
%%   <<"CreatedTimestamp">> => non_neg_integer(),
%%   <<"LastUpdatedTimestamp">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"Processors">> => list(processor())
%% }
-type channel_flow() :: #{binary() => any()}.


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
%% channel_flow_callback_request() :: #{
%%   <<"CallbackId">> := string(),
%%   <<"ChannelMessage">> := channel_message_callback(),
%%   <<"DeleteResource">> => boolean()
%% }
-type channel_flow_callback_request() :: #{binary() => any()}.


%% Example:
%% get_channel_message_response() :: #{
%%   <<"ChannelMessage">> => channel_message()
%% }
-type get_channel_message_response() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"Code">> => list(any()),
%%   <<"Message">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% describe_channel_membership_request() :: #{
%%   <<"ChimeBearer">> := string(),
%%   <<"SubChannelId">> => string()
%% }
-type describe_channel_membership_request() :: #{binary() => any()}.


%% Example:
%% put_messaging_streaming_configurations_response() :: #{
%%   <<"StreamingConfigurations">> => list(streaming_configuration())
%% }
-type put_messaging_streaming_configurations_response() :: #{binary() => any()}.


%% Example:
%% update_channel_flow_request() :: #{
%%   <<"Name">> := string(),
%%   <<"Processors">> := list(processor())
%% }
-type update_channel_flow_request() :: #{binary() => any()}.


%% Example:
%% disassociate_channel_flow_request() :: #{
%%   <<"ChimeBearer">> := string()
%% }
-type disassociate_channel_flow_request() :: #{binary() => any()}.


%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.


%% Example:
%% channel_membership_preferences() :: #{
%%   <<"PushNotifications">> => push_notification_preferences()
%% }
-type channel_membership_preferences() :: #{binary() => any()}.


%% Example:
%% channel_ban_summary() :: #{
%%   <<"Member">> => identity()
%% }
-type channel_ban_summary() :: #{binary() => any()}.


%% Example:
%% describe_channel_response() :: #{
%%   <<"Channel">> => channel()
%% }
-type describe_channel_response() :: #{binary() => any()}.


%% Example:
%% delete_channel_ban_request() :: #{
%%   <<"ChimeBearer">> := string()
%% }
-type delete_channel_ban_request() :: #{binary() => any()}.


%% Example:
%% resource_limit_exceeded_exception() :: #{
%%   <<"Code">> => list(any()),
%%   <<"Message">> => string()
%% }
-type resource_limit_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% list_channel_bans_response() :: #{
%%   <<"ChannelArn">> => string(),
%%   <<"ChannelBans">> => list(channel_ban_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_channel_bans_response() :: #{binary() => any()}.


%% Example:
%% not_found_exception() :: #{
%%   <<"Code">> => list(any()),
%%   <<"Message">> => string()
%% }
-type not_found_exception() :: #{binary() => any()}.


%% Example:
%% describe_channel_request() :: #{
%%   <<"ChimeBearer">> := string()
%% }
-type describe_channel_request() :: #{binary() => any()}.


%% Example:
%% list_channel_memberships_request() :: #{
%%   <<"ChimeBearer">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"SubChannelId">> => string(),
%%   <<"Type">> => list(any())
%% }
-type list_channel_memberships_request() :: #{binary() => any()}.


%% Example:
%% channel_membership_summary() :: #{
%%   <<"Member">> => identity()
%% }
-type channel_membership_summary() :: #{binary() => any()}.


%% Example:
%% create_channel_request() :: #{
%%   <<"AppInstanceArn">> := string(),
%%   <<"ChannelId">> => string(),
%%   <<"ChimeBearer">> := string(),
%%   <<"ClientRequestToken">> := string(),
%%   <<"ElasticChannelConfiguration">> => elastic_channel_configuration(),
%%   <<"ExpirationSettings">> => expiration_settings(),
%%   <<"MemberArns">> => list(string()),
%%   <<"Metadata">> => string(),
%%   <<"Mode">> => list(any()),
%%   <<"ModeratorArns">> => list(string()),
%%   <<"Name">> := string(),
%%   <<"Privacy">> => list(any()),
%%   <<"Tags">> => list(tag())
%% }
-type create_channel_request() :: #{binary() => any()}.

%% Example:
%% get_messaging_session_endpoint_request() :: #{}
-type get_messaging_session_endpoint_request() :: #{}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"Tags">> => list(tag())
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% put_messaging_streaming_configurations_request() :: #{
%%   <<"StreamingConfigurations">> := list(streaming_configuration())
%% }
-type put_messaging_streaming_configurations_request() :: #{binary() => any()}.


%% Example:
%% service_unavailable_exception() :: #{
%%   <<"Code">> => list(any()),
%%   <<"Message">> => string()
%% }
-type service_unavailable_exception() :: #{binary() => any()}.


%% Example:
%% list_channel_memberships_for_app_instance_user_response() :: #{
%%   <<"ChannelMemberships">> => list(channel_membership_for_app_instance_user_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_channel_memberships_for_app_instance_user_response() :: #{binary() => any()}.


%% Example:
%% list_channels_response() :: #{
%%   <<"Channels">> => list(channel_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_channels_response() :: #{binary() => any()}.


%% Example:
%% create_channel_membership_request() :: #{
%%   <<"ChimeBearer">> := string(),
%%   <<"MemberArn">> := string(),
%%   <<"SubChannelId">> => string(),
%%   <<"Type">> := list(any())
%% }
-type create_channel_membership_request() :: #{binary() => any()}.


%% Example:
%% push_notification_preferences() :: #{
%%   <<"AllowNotifications">> => list(any()),
%%   <<"FilterRule">> => string()
%% }
-type push_notification_preferences() :: #{binary() => any()}.


%% Example:
%% get_messaging_session_endpoint_response() :: #{
%%   <<"Endpoint">> => messaging_session_endpoint()
%% }
-type get_messaging_session_endpoint_response() :: #{binary() => any()}.


%% Example:
%% update_channel_request() :: #{
%%   <<"ChimeBearer">> := string(),
%%   <<"Metadata">> => string(),
%%   <<"Mode">> => list(any()),
%%   <<"Name">> => string()
%% }
-type update_channel_request() :: #{binary() => any()}.


%% Example:
%% put_channel_membership_preferences_response() :: #{
%%   <<"ChannelArn">> => string(),
%%   <<"Member">> => identity(),
%%   <<"Preferences">> => channel_membership_preferences()
%% }
-type put_channel_membership_preferences_response() :: #{binary() => any()}.


%% Example:
%% create_channel_flow_request() :: #{
%%   <<"AppInstanceArn">> := string(),
%%   <<"ClientRequestToken">> := string(),
%%   <<"Name">> := string(),
%%   <<"Processors">> := list(processor()),
%%   <<"Tags">> => list(tag())
%% }
-type create_channel_flow_request() :: #{binary() => any()}.


%% Example:
%% update_channel_read_marker_request() :: #{
%%   <<"ChimeBearer">> := string()
%% }
-type update_channel_read_marker_request() :: #{binary() => any()}.


%% Example:
%% channel_moderated_by_app_instance_user_summary() :: #{
%%   <<"ChannelSummary">> => channel_summary()
%% }
-type channel_moderated_by_app_instance_user_summary() :: #{binary() => any()}.


%% Example:
%% channel_message() :: #{
%%   <<"ChannelArn">> => string(),
%%   <<"Content">> => string(),
%%   <<"ContentType">> => string(),
%%   <<"CreatedTimestamp">> => non_neg_integer(),
%%   <<"LastEditedTimestamp">> => non_neg_integer(),
%%   <<"LastUpdatedTimestamp">> => non_neg_integer(),
%%   <<"MessageAttributes">> => map(),
%%   <<"MessageId">> => string(),
%%   <<"Metadata">> => string(),
%%   <<"Persistence">> => list(any()),
%%   <<"Redacted">> => boolean(),
%%   <<"Sender">> => identity(),
%%   <<"Status">> => channel_message_status_structure(),
%%   <<"SubChannelId">> => string(),
%%   <<"Target">> => list(target()),
%%   <<"Type">> => list(any())
%% }
-type channel_message() :: #{binary() => any()}.


%% Example:
%% messaging_session_endpoint() :: #{
%%   <<"Url">> => string()
%% }
-type messaging_session_endpoint() :: #{binary() => any()}.


%% Example:
%% update_channel_message_response() :: #{
%%   <<"ChannelArn">> => string(),
%%   <<"MessageId">> => string(),
%%   <<"Status">> => channel_message_status_structure(),
%%   <<"SubChannelId">> => string()
%% }
-type update_channel_message_response() :: #{binary() => any()}.


%% Example:
%% channel_associated_with_flow_summary() :: #{
%%   <<"ChannelArn">> => string(),
%%   <<"Metadata">> => string(),
%%   <<"Mode">> => list(any()),
%%   <<"Name">> => string(),
%%   <<"Privacy">> => list(any())
%% }
-type channel_associated_with_flow_summary() :: #{binary() => any()}.


%% Example:
%% delete_channel_message_request() :: #{
%%   <<"ChimeBearer">> := string(),
%%   <<"SubChannelId">> => string()
%% }
-type delete_channel_message_request() :: #{binary() => any()}.


%% Example:
%% search_field() :: #{
%%   <<"Key">> => list(any()),
%%   <<"Operator">> => list(any()),
%%   <<"Values">> => list(string())
%% }
-type search_field() :: #{binary() => any()}.

%% Example:
%% delete_channel_flow_request() :: #{}
-type delete_channel_flow_request() :: #{}.


%% Example:
%% list_channel_moderators_request() :: #{
%%   <<"ChimeBearer">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_channel_moderators_request() :: #{binary() => any()}.


%% Example:
%% lambda_configuration() :: #{
%%   <<"InvocationType">> => list(any()),
%%   <<"ResourceArn">> => string()
%% }
-type lambda_configuration() :: #{binary() => any()}.


%% Example:
%% list_channels_associated_with_channel_flow_request() :: #{
%%   <<"ChannelFlowArn">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_channels_associated_with_channel_flow_request() :: #{binary() => any()}.


%% Example:
%% batch_create_channel_membership_request() :: #{
%%   <<"ChimeBearer">> := string(),
%%   <<"MemberArns">> := list(string()),
%%   <<"SubChannelId">> => string(),
%%   <<"Type">> => list(any())
%% }
-type batch_create_channel_membership_request() :: #{binary() => any()}.


%% Example:
%% describe_channel_membership_for_app_instance_user_request() :: #{
%%   <<"AppInstanceUserArn">> := string(),
%%   <<"ChimeBearer">> := string()
%% }
-type describe_channel_membership_for_app_instance_user_request() :: #{binary() => any()}.


%% Example:
%% delete_channel_membership_request() :: #{
%%   <<"ChimeBearer">> := string(),
%%   <<"SubChannelId">> => string()
%% }
-type delete_channel_membership_request() :: #{binary() => any()}.


%% Example:
%% list_channel_messages_request() :: #{
%%   <<"ChimeBearer">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"NotAfter">> => non_neg_integer(),
%%   <<"NotBefore">> => non_neg_integer(),
%%   <<"SortOrder">> => list(any()),
%%   <<"SubChannelId">> => string()
%% }
-type list_channel_messages_request() :: #{binary() => any()}.


%% Example:
%% send_channel_message_request() :: #{
%%   <<"ChimeBearer">> := string(),
%%   <<"ClientRequestToken">> := string(),
%%   <<"Content">> := string(),
%%   <<"ContentType">> => string(),
%%   <<"MessageAttributes">> => map(),
%%   <<"Metadata">> => string(),
%%   <<"Persistence">> := list(any()),
%%   <<"PushNotification">> => push_notification_configuration(),
%%   <<"SubChannelId">> => string(),
%%   <<"Target">> => list(target()),
%%   <<"Type">> := list(any())
%% }
-type send_channel_message_request() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_request() :: #{
%%   <<"ResourceARN">> := string()
%% }
-type list_tags_for_resource_request() :: #{binary() => any()}.

%% Example:
%% delete_messaging_streaming_configurations_request() :: #{}
-type delete_messaging_streaming_configurations_request() :: #{}.


%% Example:
%% get_channel_message_status_response() :: #{
%%   <<"Status">> => channel_message_status_structure()
%% }
-type get_channel_message_status_response() :: #{binary() => any()}.


%% Example:
%% processor_configuration() :: #{
%%   <<"Lambda">> => lambda_configuration()
%% }
-type processor_configuration() :: #{binary() => any()}.


%% Example:
%% list_channel_moderators_response() :: #{
%%   <<"ChannelArn">> => string(),
%%   <<"ChannelModerators">> => list(channel_moderator_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_channel_moderators_response() :: #{binary() => any()}.


%% Example:
%% get_channel_message_request() :: #{
%%   <<"ChimeBearer">> := string(),
%%   <<"SubChannelId">> => string()
%% }
-type get_channel_message_request() :: #{binary() => any()}.


%% Example:
%% describe_channel_ban_response() :: #{
%%   <<"ChannelBan">> => channel_ban()
%% }
-type describe_channel_ban_response() :: #{binary() => any()}.


%% Example:
%% create_channel_flow_response() :: #{
%%   <<"ChannelFlowArn">> => string()
%% }
-type create_channel_flow_response() :: #{binary() => any()}.


%% Example:
%% list_sub_channels_request() :: #{
%%   <<"ChimeBearer">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_sub_channels_request() :: #{binary() => any()}.


%% Example:
%% channel_ban() :: #{
%%   <<"ChannelArn">> => string(),
%%   <<"CreatedBy">> => identity(),
%%   <<"CreatedTimestamp">> => non_neg_integer(),
%%   <<"Member">> => identity()
%% }
-type channel_ban() :: #{binary() => any()}.


%% Example:
%% push_notification_configuration() :: #{
%%   <<"Body">> => string(),
%%   <<"Title">> => string(),
%%   <<"Type">> => list(any())
%% }
-type push_notification_configuration() :: #{binary() => any()}.


%% Example:
%% associate_channel_flow_request() :: #{
%%   <<"ChannelFlowArn">> := string(),
%%   <<"ChimeBearer">> := string()
%% }
-type associate_channel_flow_request() :: #{binary() => any()}.


%% Example:
%% channel() :: #{
%%   <<"ChannelArn">> => string(),
%%   <<"ChannelFlowArn">> => string(),
%%   <<"CreatedBy">> => identity(),
%%   <<"CreatedTimestamp">> => non_neg_integer(),
%%   <<"ElasticChannelConfiguration">> => elastic_channel_configuration(),
%%   <<"ExpirationSettings">> => expiration_settings(),
%%   <<"LastMessageTimestamp">> => non_neg_integer(),
%%   <<"LastUpdatedTimestamp">> => non_neg_integer(),
%%   <<"Metadata">> => string(),
%%   <<"Mode">> => list(any()),
%%   <<"Name">> => string(),
%%   <<"Privacy">> => list(any())
%% }
-type channel() :: #{binary() => any()}.


%% Example:
%% list_channel_memberships_response() :: #{
%%   <<"ChannelArn">> => string(),
%%   <<"ChannelMemberships">> => list(channel_membership_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_channel_memberships_response() :: #{binary() => any()}.


%% Example:
%% channel_moderator() :: #{
%%   <<"ChannelArn">> => string(),
%%   <<"CreatedBy">> => identity(),
%%   <<"CreatedTimestamp">> => non_neg_integer(),
%%   <<"Moderator">> => identity()
%% }
-type channel_moderator() :: #{binary() => any()}.


%% Example:
%% channel_message_status_structure() :: #{
%%   <<"Detail">> => string(),
%%   <<"Value">> => list(any())
%% }
-type channel_message_status_structure() :: #{binary() => any()}.


%% Example:
%% put_channel_expiration_settings_request() :: #{
%%   <<"ChimeBearer">> => string(),
%%   <<"ExpirationSettings">> => expiration_settings()
%% }
-type put_channel_expiration_settings_request() :: #{binary() => any()}.


%% Example:
%% create_channel_ban_response() :: #{
%%   <<"ChannelArn">> => string(),
%%   <<"Member">> => identity()
%% }
-type create_channel_ban_response() :: #{binary() => any()}.


%% Example:
%% batch_create_channel_membership_error() :: #{
%%   <<"ErrorCode">> => list(any()),
%%   <<"ErrorMessage">> => string(),
%%   <<"MemberArn">> => string()
%% }
-type batch_create_channel_membership_error() :: #{binary() => any()}.


%% Example:
%% channel_flow_summary() :: #{
%%   <<"ChannelFlowArn">> => string(),
%%   <<"Name">> => string(),
%%   <<"Processors">> => list(processor())
%% }
-type channel_flow_summary() :: #{binary() => any()}.


%% Example:
%% bad_request_exception() :: #{
%%   <<"Code">> => list(any()),
%%   <<"Message">> => string()
%% }
-type bad_request_exception() :: #{binary() => any()}.


%% Example:
%% update_channel_read_marker_response() :: #{
%%   <<"ChannelArn">> => string()
%% }
-type update_channel_read_marker_response() :: #{binary() => any()}.


%% Example:
%% get_channel_membership_preferences_response() :: #{
%%   <<"ChannelArn">> => string(),
%%   <<"Member">> => identity(),
%%   <<"Preferences">> => channel_membership_preferences()
%% }
-type get_channel_membership_preferences_response() :: #{binary() => any()}.


%% Example:
%% channel_moderator_summary() :: #{
%%   <<"Moderator">> => identity()
%% }
-type channel_moderator_summary() :: #{binary() => any()}.


%% Example:
%% batch_channel_memberships() :: #{
%%   <<"ChannelArn">> => string(),
%%   <<"InvitedBy">> => identity(),
%%   <<"Members">> => list(identity()),
%%   <<"SubChannelId">> => string(),
%%   <<"Type">> => list(any())
%% }
-type batch_channel_memberships() :: #{binary() => any()}.


%% Example:
%% update_channel_response() :: #{
%%   <<"ChannelArn">> => string()
%% }
-type update_channel_response() :: #{binary() => any()}.


%% Example:
%% describe_channel_ban_request() :: #{
%%   <<"ChimeBearer">> := string()
%% }
-type describe_channel_ban_request() :: #{binary() => any()}.


%% Example:
%% describe_channel_membership_for_app_instance_user_response() :: #{
%%   <<"ChannelMembership">> => channel_membership_for_app_instance_user_summary()
%% }
-type describe_channel_membership_for_app_instance_user_response() :: #{binary() => any()}.


%% Example:
%% channel_flow_callback_response() :: #{
%%   <<"CallbackId">> => string(),
%%   <<"ChannelArn">> => string()
%% }
-type channel_flow_callback_response() :: #{binary() => any()}.


%% Example:
%% list_channels_request() :: #{
%%   <<"AppInstanceArn">> := string(),
%%   <<"ChimeBearer">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"Privacy">> => list(any())
%% }
-type list_channels_request() :: #{binary() => any()}.


%% Example:
%% elastic_channel_configuration() :: #{
%%   <<"MaximumSubChannels">> => integer(),
%%   <<"MinimumMembershipPercentage">> => integer(),
%%   <<"TargetMembershipsPerSubChannel">> => integer()
%% }
-type elastic_channel_configuration() :: #{binary() => any()}.


%% Example:
%% channel_message_summary() :: #{
%%   <<"Content">> => string(),
%%   <<"ContentType">> => string(),
%%   <<"CreatedTimestamp">> => non_neg_integer(),
%%   <<"LastEditedTimestamp">> => non_neg_integer(),
%%   <<"LastUpdatedTimestamp">> => non_neg_integer(),
%%   <<"MessageAttributes">> => map(),
%%   <<"MessageId">> => string(),
%%   <<"Metadata">> => string(),
%%   <<"Redacted">> => boolean(),
%%   <<"Sender">> => identity(),
%%   <<"Status">> => channel_message_status_structure(),
%%   <<"Target">> => list(target()),
%%   <<"Type">> => list(any())
%% }
-type channel_message_summary() :: #{binary() => any()}.


%% Example:
%% get_channel_message_status_request() :: #{
%%   <<"ChimeBearer">> := string(),
%%   <<"SubChannelId">> => string()
%% }
-type get_channel_message_status_request() :: #{binary() => any()}.

%% Example:
%% get_messaging_streaming_configurations_request() :: #{}
-type get_messaging_streaming_configurations_request() :: #{}.


%% Example:
%% search_channels_response() :: #{
%%   <<"Channels">> => list(channel_summary()),
%%   <<"NextToken">> => string()
%% }
-type search_channels_response() :: #{binary() => any()}.


%% Example:
%% create_channel_membership_response() :: #{
%%   <<"ChannelArn">> => string(),
%%   <<"Member">> => identity(),
%%   <<"SubChannelId">> => string()
%% }
-type create_channel_membership_response() :: #{binary() => any()}.

-type associate_channel_flow_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type batch_create_channel_membership_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    resource_limit_exceeded_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type channel_flow_callback_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    conflict_exception() | 
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

-type create_channel_flow_errors() ::
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
    not_found_exception() | 
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

-type delete_channel_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    conflict_exception() | 
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

-type delete_channel_flow_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    conflict_exception() | 
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

-type delete_messaging_streaming_configurations_errors() ::
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

-type describe_channel_flow_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
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

-type disassociate_channel_flow_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type get_channel_membership_preferences_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
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

-type get_channel_message_status_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
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

-type get_messaging_streaming_configurations_errors() ::
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

-type list_channel_flows_errors() ::
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

-type list_channels_associated_with_channel_flow_errors() ::
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

-type list_sub_channels_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type list_tags_for_resource_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type put_channel_expiration_settings_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    conflict_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type put_channel_membership_preferences_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    conflict_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type put_messaging_streaming_configurations_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type redact_channel_message_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    conflict_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type search_channels_errors() ::
    bad_request_exception() | 
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

-type tag_resource_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    resource_limit_exceeded_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type untag_resource_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
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

-type update_channel_flow_errors() ::
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

%%====================================================================
%% API
%%====================================================================

%% @doc Associates a channel flow with a channel.
%%
%% Once associated, all messages to that channel go through channel flow
%% processors. To stop processing, use the
%% `DisassociateChannelFlow' API.
%%
%% Only administrators or channel moderators can associate a channel flow.
%% The
%% `x-amz-chime-bearer' request header is mandatory. Use the ARN of the
%% `AppInstanceUser' or `AppInstanceBot'
%% that makes the API call as the value in the header.
-spec associate_channel_flow(aws_client:aws_client(), binary() | list(), associate_channel_flow_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, associate_channel_flow_errors(), tuple()}.
associate_channel_flow(Client, ChannelArn, Input) ->
    associate_channel_flow(Client, ChannelArn, Input, []).

-spec associate_channel_flow(aws_client:aws_client(), binary() | list(), associate_channel_flow_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, associate_channel_flow_errors(), tuple()}.
associate_channel_flow(Client, ChannelArn, Input0, Options0) ->
    Method = put,
    Path = ["/channels/", aws_util:encode_uri(ChannelArn), "/channel-flow"],
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

%% @doc Adds a specified number of users and bots to a channel.
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

%% @doc Calls back Amazon Chime SDK messaging with a processing response
%% message.
%%
%% This should be invoked from the processor Lambda. This is a developer API.
%%
%% You can return one of the following processing responses:
%%
%% Update message content or metadata
%%
%% Deny a message
%%
%% Make no changes to the message
-spec channel_flow_callback(aws_client:aws_client(), binary() | list(), channel_flow_callback_request()) ->
    {ok, channel_flow_callback_response(), tuple()} |
    {error, any()} |
    {error, channel_flow_callback_errors(), tuple()}.
channel_flow_callback(Client, ChannelArn, Input) ->
    channel_flow_callback(Client, ChannelArn, Input, []).

-spec channel_flow_callback(aws_client:aws_client(), binary() | list(), channel_flow_callback_request(), proplists:proplist()) ->
    {ok, channel_flow_callback_response(), tuple()} |
    {error, any()} |
    {error, channel_flow_callback_errors(), tuple()}.
channel_flow_callback(Client, ChannelArn, Input0, Options0) ->
    Method = post,
    Path = ["/channels/", aws_util:encode_uri(ChannelArn), "?operation=channel-flow-callback"],
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

%% @doc Creates a channel to which you can add users and send messages.
%%
%% Restriction: You can't change a channel's
%% privacy.
%%
%% The `x-amz-chime-bearer' request header is mandatory. Use the
%% ARN of the `AppInstanceUser' or `AppInstanceBot' that makes the
%% API call as the value in
%% the header.
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
%% ARN of the `AppInstanceUser' or `AppInstanceBot' that makes the
%% API call as the value in
%% the header.
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

%% @doc Creates a channel flow, a container for processors.
%%
%% Processors are AWS Lambda functions
%% that perform actions on chat messages, such as stripping out profanity.
%% You can associate
%% channel flows with channels, and the processors in the channel flow then
%% take action on all
%% messages sent to that channel. This is a developer API.
%%
%% Channel flows process the following items:
%%
%% New and updated messages
%%
%% Persistent and non-persistent messages
%%
%% The Standard message type
%%
%% Channel flows don't process Control or System messages. For more
%% information about the message types provided by Chime SDK messaging, refer
%% to
%% Message types:
%% https://docs.aws.amazon.com/chime/latest/dg/using-the-messaging-sdk.html#msg-types
%% in the Amazon Chime developer guide.
-spec create_channel_flow(aws_client:aws_client(), create_channel_flow_request()) ->
    {ok, create_channel_flow_response(), tuple()} |
    {error, any()} |
    {error, create_channel_flow_errors(), tuple()}.
create_channel_flow(Client, Input) ->
    create_channel_flow(Client, Input, []).

-spec create_channel_flow(aws_client:aws_client(), create_channel_flow_request(), proplists:proplist()) ->
    {ok, create_channel_flow_response(), tuple()} |
    {error, any()} |
    {error, create_channel_flow_errors(), tuple()}.
create_channel_flow(Client, Input0, Options0) ->
    Method = post,
    Path = ["/channel-flows"],
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

%% @doc Adds a member to a channel.
%%
%% The `InvitedBy' field in `ChannelMembership'
%% is derived from the request header. A channel member can:
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
%% ARN of the `AppInstanceUserArn' or `AppInstanceBot' that makes the
%% API call
%% as the value in the header.
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
%% ARN of the `AppInstanceUser' or `AppInstanceBot'of the user that
%% makes the API call as the value in
%% the header.
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

%% @doc Immediately makes a channel and its memberships inaccessible and
%% marks them for
%% deletion.
%%
%% This is an irreversible process.
%%
%% The `x-amz-chime-bearer' request header is mandatory. Use the
%% ARN of the `AppInstanceUserArn' or `AppInstanceBot' that makes the
%% API call as the value in
%% the header.
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

%% @doc Removes a member from a channel's ban list.
%%
%% The `x-amz-chime-bearer' request header is mandatory. Use the
%% ARN of the `AppInstanceUser' or `AppInstanceBot' that makes the
%% API call as the value in
%% the header.
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

%% @doc Deletes a channel flow, an irreversible process.
%%
%% This is a developer API.
%%
%% This API works only when the channel flow is not associated with any
%% channel. To get a list of all channels that a channel flow is associated
%% with, use the
%% `ListChannelsAssociatedWithChannelFlow' API. Use the
%% `DisassociateChannelFlow' API to disassociate a channel flow from all
%% channels.
-spec delete_channel_flow(aws_client:aws_client(), binary() | list(), delete_channel_flow_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_channel_flow_errors(), tuple()}.
delete_channel_flow(Client, ChannelFlowArn, Input) ->
    delete_channel_flow(Client, ChannelFlowArn, Input, []).

-spec delete_channel_flow(aws_client:aws_client(), binary() | list(), delete_channel_flow_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_channel_flow_errors(), tuple()}.
delete_channel_flow(Client, ChannelFlowArn, Input0, Options0) ->
    Method = delete,
    Path = ["/channel-flows/", aws_util:encode_uri(ChannelFlowArn), ""],
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

%% @doc Removes a member from a channel.
%%
%% The `x-amz-chime-bearer' request header is mandatory. Use the
%% `AppInstanceUserArn' of the user that makes the API call as the value
%% in
%% the header.
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

    QueryMapping = [
                     {<<"sub-channel-id">>, <<"SubChannelId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a channel message.
%%
%% Only admins can perform this action. Deletion makes messages
%% inaccessible immediately. A background process deletes any revisions
%% created by
%% `UpdateChannelMessage'.
%%
%% The `x-amz-chime-bearer' request header is mandatory. Use the
%% ARN of the `AppInstanceUser' or `AppInstanceBot' that makes the
%% API call as the value in
%% the header.
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

    QueryMapping = [
                     {<<"sub-channel-id">>, <<"SubChannelId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a channel moderator.
%%
%% The `x-amz-chime-bearer' request header is mandatory. Use the
%% ARN of the `AppInstanceUser' or `AppInstanceBot' that makes the
%% API call as the value in
%% the header.
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

%% @doc Deletes the streaming configurations for an `AppInstance'.
%%
%% For more information, see
%% Streaming messaging data:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/streaming-export.html in
%% the Amazon Chime SDK Developer Guide.
-spec delete_messaging_streaming_configurations(aws_client:aws_client(), binary() | list(), delete_messaging_streaming_configurations_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_messaging_streaming_configurations_errors(), tuple()}.
delete_messaging_streaming_configurations(Client, AppInstanceArn, Input) ->
    delete_messaging_streaming_configurations(Client, AppInstanceArn, Input, []).

-spec delete_messaging_streaming_configurations(aws_client:aws_client(), binary() | list(), delete_messaging_streaming_configurations_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_messaging_streaming_configurations_errors(), tuple()}.
delete_messaging_streaming_configurations(Client, AppInstanceArn, Input0, Options0) ->
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

%% @doc Returns the full details of a channel in an Amazon Chime
%% `AppInstance'.
%%
%% The `x-amz-chime-bearer' request header is mandatory. Use the
%% ARN of the `AppInstanceUser' or `AppInstanceBot' that makes the
%% API call as the value in
%% the header.
-spec describe_channel(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_channel_response(), tuple()} |
    {error, any()} |
    {error, describe_channel_errors(), tuple()}.
describe_channel(Client, ChannelArn, ChimeBearer)
  when is_map(Client) ->
    describe_channel(Client, ChannelArn, ChimeBearer, #{}, #{}).

-spec describe_channel(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_channel_response(), tuple()} |
    {error, any()} |
    {error, describe_channel_errors(), tuple()}.
describe_channel(Client, ChannelArn, ChimeBearer, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_channel(Client, ChannelArn, ChimeBearer, QueryMap, HeadersMap, []).

-spec describe_channel(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_channel_response(), tuple()} |
    {error, any()} |
    {error, describe_channel_errors(), tuple()}.
describe_channel(Client, ChannelArn, ChimeBearer, QueryMap, HeadersMap, Options0)
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
        {<<"x-amz-chime-bearer">>, ChimeBearer}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the full details of a channel ban.
%%
%% The `x-amz-chime-bearer' request header is mandatory. Use the
%% ARN of the `AppInstanceUser' or `AppInstanceBot' that makes the
%% API call as the value in
%% the header.
-spec describe_channel_ban(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, describe_channel_ban_response(), tuple()} |
    {error, any()} |
    {error, describe_channel_ban_errors(), tuple()}.
describe_channel_ban(Client, ChannelArn, MemberArn, ChimeBearer)
  when is_map(Client) ->
    describe_channel_ban(Client, ChannelArn, MemberArn, ChimeBearer, #{}, #{}).

-spec describe_channel_ban(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_channel_ban_response(), tuple()} |
    {error, any()} |
    {error, describe_channel_ban_errors(), tuple()}.
describe_channel_ban(Client, ChannelArn, MemberArn, ChimeBearer, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_channel_ban(Client, ChannelArn, MemberArn, ChimeBearer, QueryMap, HeadersMap, []).

-spec describe_channel_ban(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_channel_ban_response(), tuple()} |
    {error, any()} |
    {error, describe_channel_ban_errors(), tuple()}.
describe_channel_ban(Client, ChannelArn, MemberArn, ChimeBearer, QueryMap, HeadersMap, Options0)
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
        {<<"x-amz-chime-bearer">>, ChimeBearer}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the full details of a channel flow in an Amazon Chime
%% `AppInstance'.
%%
%% This is a developer API.
-spec describe_channel_flow(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_channel_flow_response(), tuple()} |
    {error, any()} |
    {error, describe_channel_flow_errors(), tuple()}.
describe_channel_flow(Client, ChannelFlowArn)
  when is_map(Client) ->
    describe_channel_flow(Client, ChannelFlowArn, #{}, #{}).

-spec describe_channel_flow(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_channel_flow_response(), tuple()} |
    {error, any()} |
    {error, describe_channel_flow_errors(), tuple()}.
describe_channel_flow(Client, ChannelFlowArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_channel_flow(Client, ChannelFlowArn, QueryMap, HeadersMap, []).

-spec describe_channel_flow(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_channel_flow_response(), tuple()} |
    {error, any()} |
    {error, describe_channel_flow_errors(), tuple()}.
describe_channel_flow(Client, ChannelFlowArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/channel-flows/", aws_util:encode_uri(ChannelFlowArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the full details of a user's channel membership.
%%
%% The `x-amz-chime-bearer' request header is mandatory. Use the
%% ARN of the `AppInstanceUser' or `AppInstanceBot' that makes the
%% API call as the value in
%% the header.
-spec describe_channel_membership(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, describe_channel_membership_response(), tuple()} |
    {error, any()} |
    {error, describe_channel_membership_errors(), tuple()}.
describe_channel_membership(Client, ChannelArn, MemberArn, ChimeBearer)
  when is_map(Client) ->
    describe_channel_membership(Client, ChannelArn, MemberArn, ChimeBearer, #{}, #{}).

-spec describe_channel_membership(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_channel_membership_response(), tuple()} |
    {error, any()} |
    {error, describe_channel_membership_errors(), tuple()}.
describe_channel_membership(Client, ChannelArn, MemberArn, ChimeBearer, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_channel_membership(Client, ChannelArn, MemberArn, ChimeBearer, QueryMap, HeadersMap, []).

-spec describe_channel_membership(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_channel_membership_response(), tuple()} |
    {error, any()} |
    {error, describe_channel_membership_errors(), tuple()}.
describe_channel_membership(Client, ChannelArn, MemberArn, ChimeBearer, QueryMap, HeadersMap, Options0)
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
%% specified
%% `AppInstanceUser' or `AppInstanceBot'.
%%
%% The `x-amz-chime-bearer' request header is mandatory. Use the
%% ARN of the `AppInstanceUser' or `AppInstanceBot' that makes the
%% API call as the value in
%% the header.
-spec describe_channel_membership_for_app_instance_user(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, describe_channel_membership_for_app_instance_user_response(), tuple()} |
    {error, any()} |
    {error, describe_channel_membership_for_app_instance_user_errors(), tuple()}.
describe_channel_membership_for_app_instance_user(Client, ChannelArn, AppInstanceUserArn, ChimeBearer)
  when is_map(Client) ->
    describe_channel_membership_for_app_instance_user(Client, ChannelArn, AppInstanceUserArn, ChimeBearer, #{}, #{}).

-spec describe_channel_membership_for_app_instance_user(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_channel_membership_for_app_instance_user_response(), tuple()} |
    {error, any()} |
    {error, describe_channel_membership_for_app_instance_user_errors(), tuple()}.
describe_channel_membership_for_app_instance_user(Client, ChannelArn, AppInstanceUserArn, ChimeBearer, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_channel_membership_for_app_instance_user(Client, ChannelArn, AppInstanceUserArn, ChimeBearer, QueryMap, HeadersMap, []).

-spec describe_channel_membership_for_app_instance_user(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_channel_membership_for_app_instance_user_response(), tuple()} |
    {error, any()} |
    {error, describe_channel_membership_for_app_instance_user_errors(), tuple()}.
describe_channel_membership_for_app_instance_user(Client, ChannelArn, AppInstanceUserArn, ChimeBearer, QueryMap, HeadersMap, Options0)
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
%% `AppInstanceUser' or `AppInstanceBot'.
%%
%% The `x-amz-chime-bearer' request header is mandatory. Use the
%% ARN of the `AppInstanceUser' or `AppInstanceBot' that makes the
%% API call as the value in
%% the header.
-spec describe_channel_moderated_by_app_instance_user(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, describe_channel_moderated_by_app_instance_user_response(), tuple()} |
    {error, any()} |
    {error, describe_channel_moderated_by_app_instance_user_errors(), tuple()}.
describe_channel_moderated_by_app_instance_user(Client, ChannelArn, AppInstanceUserArn, ChimeBearer)
  when is_map(Client) ->
    describe_channel_moderated_by_app_instance_user(Client, ChannelArn, AppInstanceUserArn, ChimeBearer, #{}, #{}).

-spec describe_channel_moderated_by_app_instance_user(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_channel_moderated_by_app_instance_user_response(), tuple()} |
    {error, any()} |
    {error, describe_channel_moderated_by_app_instance_user_errors(), tuple()}.
describe_channel_moderated_by_app_instance_user(Client, ChannelArn, AppInstanceUserArn, ChimeBearer, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_channel_moderated_by_app_instance_user(Client, ChannelArn, AppInstanceUserArn, ChimeBearer, QueryMap, HeadersMap, []).

-spec describe_channel_moderated_by_app_instance_user(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_channel_moderated_by_app_instance_user_response(), tuple()} |
    {error, any()} |
    {error, describe_channel_moderated_by_app_instance_user_errors(), tuple()}.
describe_channel_moderated_by_app_instance_user(Client, ChannelArn, AppInstanceUserArn, ChimeBearer, QueryMap, HeadersMap, Options0)
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
%% in
%% the header.
-spec describe_channel_moderator(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, describe_channel_moderator_response(), tuple()} |
    {error, any()} |
    {error, describe_channel_moderator_errors(), tuple()}.
describe_channel_moderator(Client, ChannelArn, ChannelModeratorArn, ChimeBearer)
  when is_map(Client) ->
    describe_channel_moderator(Client, ChannelArn, ChannelModeratorArn, ChimeBearer, #{}, #{}).

-spec describe_channel_moderator(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_channel_moderator_response(), tuple()} |
    {error, any()} |
    {error, describe_channel_moderator_errors(), tuple()}.
describe_channel_moderator(Client, ChannelArn, ChannelModeratorArn, ChimeBearer, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_channel_moderator(Client, ChannelArn, ChannelModeratorArn, ChimeBearer, QueryMap, HeadersMap, []).

-spec describe_channel_moderator(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_channel_moderator_response(), tuple()} |
    {error, any()} |
    {error, describe_channel_moderator_errors(), tuple()}.
describe_channel_moderator(Client, ChannelArn, ChannelModeratorArn, ChimeBearer, QueryMap, HeadersMap, Options0)
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
        {<<"x-amz-chime-bearer">>, ChimeBearer}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Disassociates a channel flow from all its channels.
%%
%% Once disassociated, all messages to
%% that channel stop going through the channel flow processor.
%%
%% Only administrators or channel moderators can disassociate a channel flow.
%%
%% The `x-amz-chime-bearer' request header is mandatory. Use the
%% ARN of the `AppInstanceUser' or `AppInstanceBot' that makes the
%% API call as the value in
%% the header.
-spec disassociate_channel_flow(aws_client:aws_client(), binary() | list(), binary() | list(), disassociate_channel_flow_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, disassociate_channel_flow_errors(), tuple()}.
disassociate_channel_flow(Client, ChannelArn, ChannelFlowArn, Input) ->
    disassociate_channel_flow(Client, ChannelArn, ChannelFlowArn, Input, []).

-spec disassociate_channel_flow(aws_client:aws_client(), binary() | list(), binary() | list(), disassociate_channel_flow_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, disassociate_channel_flow_errors(), tuple()}.
disassociate_channel_flow(Client, ChannelArn, ChannelFlowArn, Input0, Options0) ->
    Method = delete,
    Path = ["/channels/", aws_util:encode_uri(ChannelArn), "/channel-flow/", aws_util:encode_uri(ChannelFlowArn), ""],
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

%% @doc Gets the membership preferences of an `AppInstanceUser' or
%% `AppInstanceBot'
%% for the specified channel.
%%
%% A user or a bot must be a member of the channel and own the membership in
%% order to retrieve membership preferences.
%% Users or bots in the `AppInstanceAdmin' and channel moderator roles
%% can't
%% retrieve preferences for other users or bots. Banned users or bots
%% can't retrieve membership preferences for the
%% channel from which they are banned.
%%
%% The `x-amz-chime-bearer' request header is mandatory. Use the
%% ARN of the `AppInstanceUser' or `AppInstanceBot' that makes the
%% API call as the value in
%% the header.
-spec get_channel_membership_preferences(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_channel_membership_preferences_response(), tuple()} |
    {error, any()} |
    {error, get_channel_membership_preferences_errors(), tuple()}.
get_channel_membership_preferences(Client, ChannelArn, MemberArn, ChimeBearer)
  when is_map(Client) ->
    get_channel_membership_preferences(Client, ChannelArn, MemberArn, ChimeBearer, #{}, #{}).

-spec get_channel_membership_preferences(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_channel_membership_preferences_response(), tuple()} |
    {error, any()} |
    {error, get_channel_membership_preferences_errors(), tuple()}.
get_channel_membership_preferences(Client, ChannelArn, MemberArn, ChimeBearer, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_channel_membership_preferences(Client, ChannelArn, MemberArn, ChimeBearer, QueryMap, HeadersMap, []).

-spec get_channel_membership_preferences(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_channel_membership_preferences_response(), tuple()} |
    {error, any()} |
    {error, get_channel_membership_preferences_errors(), tuple()}.
get_channel_membership_preferences(Client, ChannelArn, MemberArn, ChimeBearer, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/channels/", aws_util:encode_uri(ChannelArn), "/memberships/", aws_util:encode_uri(MemberArn), "/preferences"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers0 =
      [
        {<<"x-amz-chime-bearer">>, ChimeBearer}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the full details of a channel message.
%%
%% The `x-amz-chime-bearer' request header is mandatory. Use the
%% ARN of the `AppInstanceUser' or `AppInstanceBot' that makes the
%% API call as the value in
%% the header.
-spec get_channel_message(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_channel_message_response(), tuple()} |
    {error, any()} |
    {error, get_channel_message_errors(), tuple()}.
get_channel_message(Client, ChannelArn, MessageId, ChimeBearer)
  when is_map(Client) ->
    get_channel_message(Client, ChannelArn, MessageId, ChimeBearer, #{}, #{}).

-spec get_channel_message(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_channel_message_response(), tuple()} |
    {error, any()} |
    {error, get_channel_message_errors(), tuple()}.
get_channel_message(Client, ChannelArn, MessageId, ChimeBearer, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_channel_message(Client, ChannelArn, MessageId, ChimeBearer, QueryMap, HeadersMap, []).

-spec get_channel_message(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_channel_message_response(), tuple()} |
    {error, any()} |
    {error, get_channel_message_errors(), tuple()}.
get_channel_message(Client, ChannelArn, MessageId, ChimeBearer, QueryMap, HeadersMap, Options0)
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
%% SENT
%%
%% Message processed successfully
%%
%% PENDING
%%
%% Ongoing processing
%%
%% FAILED
%%
%% Processing failed
%%
%% DENIED
%%
%% Message denied by the processor
%%
%% This API does not return statuses for denied messages, because we
%% don't store them once the processor denies them.
%%
%% Only the message sender can invoke this API.
%%
%% The `x-amz-chime-bearer' request header is mandatory. Use the
%% ARN of the `AppInstanceUser' or `AppInstanceBot' that makes the
%% API call as the value in
%% the header.
-spec get_channel_message_status(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_channel_message_status_response(), tuple()} |
    {error, any()} |
    {error, get_channel_message_status_errors(), tuple()}.
get_channel_message_status(Client, ChannelArn, MessageId, ChimeBearer)
  when is_map(Client) ->
    get_channel_message_status(Client, ChannelArn, MessageId, ChimeBearer, #{}, #{}).

-spec get_channel_message_status(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_channel_message_status_response(), tuple()} |
    {error, any()} |
    {error, get_channel_message_status_errors(), tuple()}.
get_channel_message_status(Client, ChannelArn, MessageId, ChimeBearer, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_channel_message_status(Client, ChannelArn, MessageId, ChimeBearer, QueryMap, HeadersMap, []).

-spec get_channel_message_status(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_channel_message_status_response(), tuple()} |
    {error, any()} |
    {error, get_channel_message_status_errors(), tuple()}.
get_channel_message_status(Client, ChannelArn, MessageId, ChimeBearer, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/channels/", aws_util:encode_uri(ChannelArn), "/messages/", aws_util:encode_uri(MessageId), "?scope=message-status"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

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

%% @doc Retrieves the data streaming configuration for an `AppInstance'.
%%
%% For more information, see
%% Streaming messaging data:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/streaming-export.html in
%% the Amazon Chime SDK Developer Guide.
-spec get_messaging_streaming_configurations(aws_client:aws_client(), binary() | list()) ->
    {ok, get_messaging_streaming_configurations_response(), tuple()} |
    {error, any()} |
    {error, get_messaging_streaming_configurations_errors(), tuple()}.
get_messaging_streaming_configurations(Client, AppInstanceArn)
  when is_map(Client) ->
    get_messaging_streaming_configurations(Client, AppInstanceArn, #{}, #{}).

-spec get_messaging_streaming_configurations(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_messaging_streaming_configurations_response(), tuple()} |
    {error, any()} |
    {error, get_messaging_streaming_configurations_errors(), tuple()}.
get_messaging_streaming_configurations(Client, AppInstanceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_messaging_streaming_configurations(Client, AppInstanceArn, QueryMap, HeadersMap, []).

-spec get_messaging_streaming_configurations(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_messaging_streaming_configurations_response(), tuple()} |
    {error, any()} |
    {error, get_messaging_streaming_configurations_errors(), tuple()}.
get_messaging_streaming_configurations(Client, AppInstanceArn, QueryMap, HeadersMap, Options0)
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

%% @doc Lists all the users and bots banned from a particular channel.
%%
%% The `x-amz-chime-bearer' request header is mandatory. Use the
%% ARN of the `AppInstanceUser' or `AppInstanceBot' that makes the
%% API call as the value in
%% the header.
-spec list_channel_bans(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_channel_bans_response(), tuple()} |
    {error, any()} |
    {error, list_channel_bans_errors(), tuple()}.
list_channel_bans(Client, ChannelArn, ChimeBearer)
  when is_map(Client) ->
    list_channel_bans(Client, ChannelArn, ChimeBearer, #{}, #{}).

-spec list_channel_bans(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_channel_bans_response(), tuple()} |
    {error, any()} |
    {error, list_channel_bans_errors(), tuple()}.
list_channel_bans(Client, ChannelArn, ChimeBearer, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_channel_bans(Client, ChannelArn, ChimeBearer, QueryMap, HeadersMap, []).

-spec list_channel_bans(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_channel_bans_response(), tuple()} |
    {error, any()} |
    {error, list_channel_bans_errors(), tuple()}.
list_channel_bans(Client, ChannelArn, ChimeBearer, QueryMap, HeadersMap, Options0)
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
-spec list_channel_flows(aws_client:aws_client(), binary() | list()) ->
    {ok, list_channel_flows_response(), tuple()} |
    {error, any()} |
    {error, list_channel_flows_errors(), tuple()}.
list_channel_flows(Client, AppInstanceArn)
  when is_map(Client) ->
    list_channel_flows(Client, AppInstanceArn, #{}, #{}).

-spec list_channel_flows(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_channel_flows_response(), tuple()} |
    {error, any()} |
    {error, list_channel_flows_errors(), tuple()}.
list_channel_flows(Client, AppInstanceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_channel_flows(Client, AppInstanceArn, QueryMap, HeadersMap, []).

-spec list_channel_flows(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_channel_flows_response(), tuple()} |
    {error, any()} |
    {error, list_channel_flows_errors(), tuple()}.
list_channel_flows(Client, AppInstanceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/channel-flows"],
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

%% @doc Lists all channel memberships in a channel.
%%
%% The `x-amz-chime-bearer' request header is mandatory. Use the
%% ARN of the `AppInstanceUser' or `AppInstanceBot' that makes the
%% API call as the value in
%% the header.
%%
%% If you want to list the channels to which a specific app instance user
%% belongs, see the
%% ListChannelMembershipsForAppInstanceUser:
%% https://docs.aws.amazon.com/chime/latest/APIReference/API_messaging-chime_ListChannelMembershipsForAppInstanceUser.html
%% API.
-spec list_channel_memberships(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_channel_memberships_response(), tuple()} |
    {error, any()} |
    {error, list_channel_memberships_errors(), tuple()}.
list_channel_memberships(Client, ChannelArn, ChimeBearer)
  when is_map(Client) ->
    list_channel_memberships(Client, ChannelArn, ChimeBearer, #{}, #{}).

-spec list_channel_memberships(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_channel_memberships_response(), tuple()} |
    {error, any()} |
    {error, list_channel_memberships_errors(), tuple()}.
list_channel_memberships(Client, ChannelArn, ChimeBearer, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_channel_memberships(Client, ChannelArn, ChimeBearer, QueryMap, HeadersMap, []).

-spec list_channel_memberships(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_channel_memberships_response(), tuple()} |
    {error, any()} |
    {error, list_channel_memberships_errors(), tuple()}.
list_channel_memberships(Client, ChannelArn, ChimeBearer, QueryMap, HeadersMap, Options0)
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

%% @doc Lists all channels that an `AppInstanceUser' or
%% `AppInstanceBot' is a part of.
%%
%% Only an `AppInstanceAdmin' can call the API with a user ARN that is
%% not their own.
%%
%% The `x-amz-chime-bearer' request header is mandatory. Use the
%% ARN of the `AppInstanceUser' or `AppInstanceBot' that makes the
%% API call as the value in
%% the header.
-spec list_channel_memberships_for_app_instance_user(aws_client:aws_client(), binary() | list()) ->
    {ok, list_channel_memberships_for_app_instance_user_response(), tuple()} |
    {error, any()} |
    {error, list_channel_memberships_for_app_instance_user_errors(), tuple()}.
list_channel_memberships_for_app_instance_user(Client, ChimeBearer)
  when is_map(Client) ->
    list_channel_memberships_for_app_instance_user(Client, ChimeBearer, #{}, #{}).

-spec list_channel_memberships_for_app_instance_user(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_channel_memberships_for_app_instance_user_response(), tuple()} |
    {error, any()} |
    {error, list_channel_memberships_for_app_instance_user_errors(), tuple()}.
list_channel_memberships_for_app_instance_user(Client, ChimeBearer, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_channel_memberships_for_app_instance_user(Client, ChimeBearer, QueryMap, HeadersMap, []).

-spec list_channel_memberships_for_app_instance_user(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_channel_memberships_for_app_instance_user_response(), tuple()} |
    {error, any()} |
    {error, list_channel_memberships_for_app_instance_user_errors(), tuple()}.
list_channel_memberships_for_app_instance_user(Client, ChimeBearer, QueryMap, HeadersMap, Options0)
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
%% Also, the `x-amz-chime-bearer' request header is mandatory. Use the
%% ARN of the `AppInstanceUser' or `AppInstanceBot' that makes the
%% API call as the value in
%% the header.
-spec list_channel_messages(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_channel_messages_response(), tuple()} |
    {error, any()} |
    {error, list_channel_messages_errors(), tuple()}.
list_channel_messages(Client, ChannelArn, ChimeBearer)
  when is_map(Client) ->
    list_channel_messages(Client, ChannelArn, ChimeBearer, #{}, #{}).

-spec list_channel_messages(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_channel_messages_response(), tuple()} |
    {error, any()} |
    {error, list_channel_messages_errors(), tuple()}.
list_channel_messages(Client, ChannelArn, ChimeBearer, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_channel_messages(Client, ChannelArn, ChimeBearer, QueryMap, HeadersMap, []).

-spec list_channel_messages(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_channel_messages_response(), tuple()} |
    {error, any()} |
    {error, list_channel_messages_errors(), tuple()}.
list_channel_messages(Client, ChannelArn, ChimeBearer, QueryMap, HeadersMap, Options0)
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
%% ARN of the `AppInstanceUser' or `AppInstanceBot' that makes the
%% API call as the value in
%% the header.
-spec list_channel_moderators(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_channel_moderators_response(), tuple()} |
    {error, any()} |
    {error, list_channel_moderators_errors(), tuple()}.
list_channel_moderators(Client, ChannelArn, ChimeBearer)
  when is_map(Client) ->
    list_channel_moderators(Client, ChannelArn, ChimeBearer, #{}, #{}).

-spec list_channel_moderators(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_channel_moderators_response(), tuple()} |
    {error, any()} |
    {error, list_channel_moderators_errors(), tuple()}.
list_channel_moderators(Client, ChannelArn, ChimeBearer, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_channel_moderators(Client, ChannelArn, ChimeBearer, QueryMap, HeadersMap, []).

-spec list_channel_moderators(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_channel_moderators_response(), tuple()} |
    {error, any()} |
    {error, list_channel_moderators_errors(), tuple()}.
list_channel_moderators(Client, ChannelArn, ChimeBearer, QueryMap, HeadersMap, Options0)
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
%% ARN of the `AppInstanceUser' or `AppInstanceBot' that makes the
%% API call as the value in
%% the header.
-spec list_channels(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_channels_response(), tuple()} |
    {error, any()} |
    {error, list_channels_errors(), tuple()}.
list_channels(Client, AppInstanceArn, ChimeBearer)
  when is_map(Client) ->
    list_channels(Client, AppInstanceArn, ChimeBearer, #{}, #{}).

-spec list_channels(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_channels_response(), tuple()} |
    {error, any()} |
    {error, list_channels_errors(), tuple()}.
list_channels(Client, AppInstanceArn, ChimeBearer, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_channels(Client, AppInstanceArn, ChimeBearer, QueryMap, HeadersMap, []).

-spec list_channels(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_channels_response(), tuple()} |
    {error, any()} |
    {error, list_channels_errors(), tuple()}.
list_channels(Client, AppInstanceArn, ChimeBearer, QueryMap, HeadersMap, Options0)
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
-spec list_channels_associated_with_channel_flow(aws_client:aws_client(), binary() | list()) ->
    {ok, list_channels_associated_with_channel_flow_response(), tuple()} |
    {error, any()} |
    {error, list_channels_associated_with_channel_flow_errors(), tuple()}.
list_channels_associated_with_channel_flow(Client, ChannelFlowArn)
  when is_map(Client) ->
    list_channels_associated_with_channel_flow(Client, ChannelFlowArn, #{}, #{}).

-spec list_channels_associated_with_channel_flow(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_channels_associated_with_channel_flow_response(), tuple()} |
    {error, any()} |
    {error, list_channels_associated_with_channel_flow_errors(), tuple()}.
list_channels_associated_with_channel_flow(Client, ChannelFlowArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_channels_associated_with_channel_flow(Client, ChannelFlowArn, QueryMap, HeadersMap, []).

-spec list_channels_associated_with_channel_flow(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_channels_associated_with_channel_flow_response(), tuple()} |
    {error, any()} |
    {error, list_channels_associated_with_channel_flow_errors(), tuple()}.
list_channels_associated_with_channel_flow(Client, ChannelFlowArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/channels?scope=channel-flow-associations"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

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
%% ARN of the `AppInstanceUser' or `AppInstanceBot' that makes the
%% API call as the value in
%% the header.
-spec list_channels_moderated_by_app_instance_user(aws_client:aws_client(), binary() | list()) ->
    {ok, list_channels_moderated_by_app_instance_user_response(), tuple()} |
    {error, any()} |
    {error, list_channels_moderated_by_app_instance_user_errors(), tuple()}.
list_channels_moderated_by_app_instance_user(Client, ChimeBearer)
  when is_map(Client) ->
    list_channels_moderated_by_app_instance_user(Client, ChimeBearer, #{}, #{}).

-spec list_channels_moderated_by_app_instance_user(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_channels_moderated_by_app_instance_user_response(), tuple()} |
    {error, any()} |
    {error, list_channels_moderated_by_app_instance_user_errors(), tuple()}.
list_channels_moderated_by_app_instance_user(Client, ChimeBearer, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_channels_moderated_by_app_instance_user(Client, ChimeBearer, QueryMap, HeadersMap, []).

-spec list_channels_moderated_by_app_instance_user(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_channels_moderated_by_app_instance_user_response(), tuple()} |
    {error, any()} |
    {error, list_channels_moderated_by_app_instance_user_errors(), tuple()}.
list_channels_moderated_by_app_instance_user(Client, ChimeBearer, QueryMap, HeadersMap, Options0)
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
-spec list_sub_channels(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_sub_channels_response(), tuple()} |
    {error, any()} |
    {error, list_sub_channels_errors(), tuple()}.
list_sub_channels(Client, ChannelArn, ChimeBearer)
  when is_map(Client) ->
    list_sub_channels(Client, ChannelArn, ChimeBearer, #{}, #{}).

-spec list_sub_channels(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_sub_channels_response(), tuple()} |
    {error, any()} |
    {error, list_sub_channels_errors(), tuple()}.
list_sub_channels(Client, ChannelArn, ChimeBearer, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_sub_channels(Client, ChannelArn, ChimeBearer, QueryMap, HeadersMap, []).

-spec list_sub_channels(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_sub_channels_response(), tuple()} |
    {error, any()} |
    {error, list_sub_channels_errors(), tuple()}.
list_sub_channels(Client, ChannelArn, ChimeBearer, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/channels/", aws_util:encode_uri(ChannelArn), "/subchannels"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

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

%% @doc Sets the number of days before the channel is automatically deleted.
%%
%% A background process deletes expired channels within 6 hours of
%% expiration.
%% Actual deletion times may vary.
%%
%% Expired channels that have not yet been deleted appear as active, and you
%% can update
%% their expiration settings. The system honors the new settings.
%%
%% The `x-amz-chime-bearer' request header is mandatory. Use the
%% ARN of the `AppInstanceUser' or `AppInstanceBot' that makes the
%% API call as the value in
%% the header.
-spec put_channel_expiration_settings(aws_client:aws_client(), binary() | list(), put_channel_expiration_settings_request()) ->
    {ok, put_channel_expiration_settings_response(), tuple()} |
    {error, any()} |
    {error, put_channel_expiration_settings_errors(), tuple()}.
put_channel_expiration_settings(Client, ChannelArn, Input) ->
    put_channel_expiration_settings(Client, ChannelArn, Input, []).

-spec put_channel_expiration_settings(aws_client:aws_client(), binary() | list(), put_channel_expiration_settings_request(), proplists:proplist()) ->
    {ok, put_channel_expiration_settings_response(), tuple()} |
    {error, any()} |
    {error, put_channel_expiration_settings_errors(), tuple()}.
put_channel_expiration_settings(Client, ChannelArn, Input0, Options0) ->
    Method = put,
    Path = ["/channels/", aws_util:encode_uri(ChannelArn), "/expiration-settings"],
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

%% @doc Sets the membership preferences of an `AppInstanceUser' or
%% `AppInstanceBot'
%% for the specified channel.
%%
%% The user or bot must be a member of the channel. Only the user or bot who
%% owns the
%% membership can set preferences. Users or bots in the
%% `AppInstanceAdmin' and channel moderator roles can't set
%% preferences for other users. Banned users or bots can't set membership
%% preferences for the channel from
%% which they are banned.
%%
%% The x-amz-chime-bearer request header is mandatory. Use the ARN of an
%% `AppInstanceUser' or `AppInstanceBot' that makes the API call as
%% the value in the
%% header.
-spec put_channel_membership_preferences(aws_client:aws_client(), binary() | list(), binary() | list(), put_channel_membership_preferences_request()) ->
    {ok, put_channel_membership_preferences_response(), tuple()} |
    {error, any()} |
    {error, put_channel_membership_preferences_errors(), tuple()}.
put_channel_membership_preferences(Client, ChannelArn, MemberArn, Input) ->
    put_channel_membership_preferences(Client, ChannelArn, MemberArn, Input, []).

-spec put_channel_membership_preferences(aws_client:aws_client(), binary() | list(), binary() | list(), put_channel_membership_preferences_request(), proplists:proplist()) ->
    {ok, put_channel_membership_preferences_response(), tuple()} |
    {error, any()} |
    {error, put_channel_membership_preferences_errors(), tuple()}.
put_channel_membership_preferences(Client, ChannelArn, MemberArn, Input0, Options0) ->
    Method = put,
    Path = ["/channels/", aws_util:encode_uri(ChannelArn), "/memberships/", aws_util:encode_uri(MemberArn), "/preferences"],
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

%% @doc Sets the data streaming configuration for an `AppInstance'.
%%
%% For more information, see
%% Streaming messaging data:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/streaming-export.html in
%% the Amazon Chime SDK Developer Guide.
-spec put_messaging_streaming_configurations(aws_client:aws_client(), binary() | list(), put_messaging_streaming_configurations_request()) ->
    {ok, put_messaging_streaming_configurations_response(), tuple()} |
    {error, any()} |
    {error, put_messaging_streaming_configurations_errors(), tuple()}.
put_messaging_streaming_configurations(Client, AppInstanceArn, Input) ->
    put_messaging_streaming_configurations(Client, AppInstanceArn, Input, []).

-spec put_messaging_streaming_configurations(aws_client:aws_client(), binary() | list(), put_messaging_streaming_configurations_request(), proplists:proplist()) ->
    {ok, put_messaging_streaming_configurations_response(), tuple()} |
    {error, any()} |
    {error, put_messaging_streaming_configurations_errors(), tuple()}.
put_messaging_streaming_configurations(Client, AppInstanceArn, Input0, Options0) ->
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

%% @doc Redacts message content, but not metadata.
%%
%% The message exists in the back end, but the
%% action returns null content, and the state shows as redacted.
%%
%% The `x-amz-chime-bearer' request header is mandatory. Use the
%% ARN of the `AppInstanceUser' or `AppInstanceBot' that makes the
%% API call as the value in
%% the header.
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

%% @doc Allows the `ChimeBearer' to search channels by channel members.
%%
%% Users or bots can search
%% across the channels that they belong to. Users in the
%% `AppInstanceAdmin' role can search across
%% all channels.
%%
%% The `x-amz-chime-bearer' request header is mandatory. Use the
%% ARN of the `AppInstanceUser' or `AppInstanceBot' that makes the
%% API call as the value in
%% the header.
-spec search_channels(aws_client:aws_client(), search_channels_request()) ->
    {ok, search_channels_response(), tuple()} |
    {error, any()} |
    {error, search_channels_errors(), tuple()}.
search_channels(Client, Input) ->
    search_channels(Client, Input, []).

-spec search_channels(aws_client:aws_client(), search_channels_request(), proplists:proplist()) ->
    {ok, search_channels_response(), tuple()} |
    {error, any()} |
    {error, search_channels_errors(), tuple()}.
search_channels(Client, Input0, Options0) ->
    Method = post,
    Path = ["/channels?operation=search"],
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

    QueryMapping = [
                     {<<"max-results">>, <<"MaxResults">>},
                     {<<"next-token">>, <<"NextToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Sends a message to a particular channel that the member is a part of.
%%
%% The `x-amz-chime-bearer' request header is mandatory. Use the
%% ARN of the `AppInstanceUser' or `AppInstanceBot' that makes the
%% API call as the value in
%% the header.
%%
%% Also, `STANDARD' messages can be up to 4KB in size and contain
%% metadata. Metadata is arbitrary,
%% and you can use it in a variety of ways, such as containing a link to an
%% attachment.
%%
%% `CONTROL' messages are limited to 30 bytes and do not contain
%% metadata.
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

%% @doc Applies the specified tags to the specified Amazon Chime SDK
%% messaging resource.
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

%% @doc Removes the specified tags from the specified Amazon Chime SDK
%% messaging resource.
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

%% @doc Update a channel's attributes.
%%
%% Restriction: You can't change a channel's privacy.
%%
%% The `x-amz-chime-bearer' request header is mandatory. Use the
%% ARN of the `AppInstanceUser' or `AppInstanceBot' that makes the
%% API call as the value in
%% the header.
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

%% @doc Updates channel flow attributes.
%%
%% This is a developer API.
-spec update_channel_flow(aws_client:aws_client(), binary() | list(), update_channel_flow_request()) ->
    {ok, update_channel_flow_response(), tuple()} |
    {error, any()} |
    {error, update_channel_flow_errors(), tuple()}.
update_channel_flow(Client, ChannelFlowArn, Input) ->
    update_channel_flow(Client, ChannelFlowArn, Input, []).

-spec update_channel_flow(aws_client:aws_client(), binary() | list(), update_channel_flow_request(), proplists:proplist()) ->
    {ok, update_channel_flow_response(), tuple()} |
    {error, any()} |
    {error, update_channel_flow_errors(), tuple()}.
update_channel_flow(Client, ChannelFlowArn, Input0, Options0) ->
    Method = put,
    Path = ["/channel-flows/", aws_util:encode_uri(ChannelFlowArn), ""],
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

%% @doc Updates the content of a message.
%%
%% The `x-amz-chime-bearer' request header is mandatory. Use the
%% ARN of the `AppInstanceUser' or `AppInstanceBot' that makes the
%% API call as the value in
%% the header.
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
%% ARN of the `AppInstanceUser' or `AppInstanceBot' that makes the
%% API call as the value in
%% the header.
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
