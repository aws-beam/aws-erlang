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
         associate_signin_delegate_groups_with_account/3,
         associate_signin_delegate_groups_with_account/4,
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
         create_bot/3,
         create_bot/4,
         create_meeting_dial_out/3,
         create_meeting_dial_out/4,
         create_phone_number_order/2,
         create_phone_number_order/3,
         create_room/3,
         create_room/4,
         create_room_membership/4,
         create_room_membership/5,
         create_user/3,
         create_user/4,
         delete_account/3,
         delete_account/4,
         delete_events_configuration/4,
         delete_events_configuration/5,
         delete_phone_number/3,
         delete_phone_number/4,
         delete_room/4,
         delete_room/5,
         delete_room_membership/5,
         delete_room_membership/6,
         disassociate_phone_number_from_user/4,
         disassociate_phone_number_from_user/5,
         disassociate_signin_delegate_groups_from_account/3,
         disassociate_signin_delegate_groups_from_account/4,
         get_account/2,
         get_account/4,
         get_account/5,
         get_account_settings/2,
         get_account_settings/4,
         get_account_settings/5,
         get_bot/3,
         get_bot/5,
         get_bot/6,
         get_events_configuration/3,
         get_events_configuration/5,
         get_events_configuration/6,
         get_global_settings/1,
         get_global_settings/3,
         get_global_settings/4,
         get_phone_number/2,
         get_phone_number/4,
         get_phone_number/5,
         get_phone_number_order/2,
         get_phone_number_order/4,
         get_phone_number_order/5,
         get_phone_number_settings/1,
         get_phone_number_settings/3,
         get_phone_number_settings/4,
         get_retention_settings/2,
         get_retention_settings/4,
         get_retention_settings/5,
         get_room/3,
         get_room/5,
         get_room/6,
         get_user/3,
         get_user/5,
         get_user/6,
         get_user_settings/3,
         get_user_settings/5,
         get_user_settings/6,
         invite_users/3,
         invite_users/4,
         list_accounts/1,
         list_accounts/3,
         list_accounts/4,
         list_bots/2,
         list_bots/4,
         list_bots/5,
         list_phone_number_orders/1,
         list_phone_number_orders/3,
         list_phone_number_orders/4,
         list_phone_numbers/1,
         list_phone_numbers/3,
         list_phone_numbers/4,
         list_room_memberships/3,
         list_room_memberships/5,
         list_room_memberships/6,
         list_rooms/2,
         list_rooms/4,
         list_rooms/5,
         list_supported_phone_number_countries/2,
         list_supported_phone_number_countries/4,
         list_supported_phone_number_countries/5,
         list_users/2,
         list_users/4,
         list_users/5,
         logout_user/4,
         logout_user/5,
         put_events_configuration/4,
         put_events_configuration/5,
         put_retention_settings/3,
         put_retention_settings/4,
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
         update_room/4,
         update_room/5,
         update_room_membership/5,
         update_room_membership/6,
         update_user/4,
         update_user/5,
         update_user_settings/4,
         update_user_settings/5]).

-include_lib("hackney/include/hackney_lib.hrl").



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
%% business_calling_settings() :: #{
%%   <<"CdrBucket">> => string()
%% }
-type business_calling_settings() :: #{binary() => any()}.


%% Example:
%% batch_delete_phone_number_request() :: #{
%%   <<"PhoneNumberIds">> := list(string())
%% }
-type batch_delete_phone_number_request() :: #{binary() => any()}.


%% Example:
%% create_phone_number_order_response() :: #{
%%   <<"PhoneNumberOrder">> => phone_number_order()
%% }
-type create_phone_number_order_response() :: #{binary() => any()}.


%% Example:
%% batch_update_user_response() :: #{
%%   <<"UserErrors">> => list(user_error())
%% }
-type batch_update_user_response() :: #{binary() => any()}.


%% Example:
%% batch_create_room_membership_response() :: #{
%%   <<"Errors">> => list(member_error())
%% }
-type batch_create_room_membership_response() :: #{binary() => any()}.


%% Example:
%% member_error() :: #{
%%   <<"ErrorCode">> => list(any()),
%%   <<"ErrorMessage">> => string(),
%%   <<"MemberId">> => string()
%% }
-type member_error() :: #{binary() => any()}.

%% Example:
%% redact_room_message_request() :: #{}
-type redact_room_message_request() :: #{}.


%% Example:
%% batch_update_phone_number_response() :: #{
%%   <<"PhoneNumberErrors">> => list(phone_number_error())
%% }
-type batch_update_phone_number_response() :: #{binary() => any()}.


%% Example:
%% get_account_response() :: #{
%%   <<"Account">> => account()
%% }
-type get_account_response() :: #{binary() => any()}.

%% Example:
%% delete_room_request() :: #{}
-type delete_room_request() :: #{}.

%% Example:
%% reset_personal_pin_request() :: #{}
-type reset_personal_pin_request() :: #{}.


%% Example:
%% list_phone_number_orders_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"PhoneNumberOrders">> => list(phone_number_order())
%% }
-type list_phone_number_orders_response() :: #{binary() => any()}.

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
%% batch_unsuspend_user_response() :: #{
%%   <<"UserErrors">> => list(user_error())
%% }
-type batch_unsuspend_user_response() :: #{binary() => any()}.


%% Example:
%% list_room_memberships_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"RoomMemberships">> => list(room_membership())
%% }
-type list_room_memberships_response() :: #{binary() => any()}.


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
%% search_available_phone_numbers_response() :: #{
%%   <<"E164PhoneNumbers">> => list(string()),
%%   <<"NextToken">> => string()
%% }
-type search_available_phone_numbers_response() :: #{binary() => any()}.


%% Example:
%% list_rooms_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Rooms">> => list(room())
%% }
-type list_rooms_response() :: #{binary() => any()}.

%% Example:
%% get_account_settings_request() :: #{}
-type get_account_settings_request() :: #{}.


%% Example:
%% update_phone_number_settings_request() :: #{
%%   <<"CallingName">> := string()
%% }
-type update_phone_number_settings_request() :: #{binary() => any()}.

%% Example:
%% get_bot_request() :: #{}
-type get_bot_request() :: #{}.


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
%% restore_phone_number_request() :: #{}
-type restore_phone_number_request() :: #{}.


%% Example:
%% forbidden_exception() :: #{
%%   <<"Code">> => list(any()),
%%   <<"Message">> => string()
%% }
-type forbidden_exception() :: #{binary() => any()}.


%% Example:
%% get_bot_response() :: #{
%%   <<"Bot">> => bot()
%% }
-type get_bot_response() :: #{binary() => any()}.

%% Example:
%% logout_user_request() :: #{}
-type logout_user_request() :: #{}.

%% Example:
%% update_account_settings_response() :: #{}
-type update_account_settings_response() :: #{}.


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
%% phone_number() :: #{
%%   <<"Associations">> => list(phone_number_association()),
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
%% get_phone_number_order_request() :: #{}
-type get_phone_number_order_request() :: #{}.

%% Example:
%% delete_room_membership_request() :: #{}
-type delete_room_membership_request() :: #{}.


%% Example:
%% update_phone_number_response() :: #{
%%   <<"PhoneNumber">> => phone_number()
%% }
-type update_phone_number_response() :: #{binary() => any()}.


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
%% update_room_response() :: #{
%%   <<"Room">> => room()
%% }
-type update_room_response() :: #{binary() => any()}.


%% Example:
%% get_user_settings_response() :: #{
%%   <<"UserSettings">> => user_settings()
%% }
-type get_user_settings_response() :: #{binary() => any()}.


%% Example:
%% ordered_phone_number() :: #{
%%   <<"E164PhoneNumber">> => string(),
%%   <<"Status">> => list(any())
%% }
-type ordered_phone_number() :: #{binary() => any()}.


%% Example:
%% create_phone_number_order_request() :: #{
%%   <<"E164PhoneNumbers">> := list(string()),
%%   <<"ProductType">> := list(any())
%% }
-type create_phone_number_order_request() :: #{binary() => any()}.


%% Example:
%% voice_connector_settings() :: #{
%%   <<"CdrBucket">> => string()
%% }
-type voice_connector_settings() :: #{binary() => any()}.


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
%% put_retention_settings_response() :: #{
%%   <<"InitiateDeletionTimestamp">> => non_neg_integer(),
%%   <<"RetentionSettings">> => retention_settings()
%% }
-type put_retention_settings_response() :: #{binary() => any()}.


%% Example:
%% list_supported_phone_number_countries_response() :: #{
%%   <<"PhoneNumberCountries">> => list(phone_number_country())
%% }
-type list_supported_phone_number_countries_response() :: #{binary() => any()}.


%% Example:
%% batch_create_room_membership_request() :: #{
%%   <<"MembershipItemList">> := list(membership_item())
%% }
-type batch_create_room_membership_request() :: #{binary() => any()}.


%% Example:
%% retention_settings() :: #{
%%   <<"ConversationRetentionSettings">> => conversation_retention_settings(),
%%   <<"RoomRetentionSettings">> => room_retention_settings()
%% }
-type retention_settings() :: #{binary() => any()}.

%% Example:
%% associate_phone_number_with_user_response() :: #{}
-type associate_phone_number_with_user_response() :: #{}.


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
%% list_room_memberships_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_room_memberships_request() :: #{binary() => any()}.


%% Example:
%% list_accounts_response() :: #{
%%   <<"Accounts">> => list(account()),
%%   <<"NextToken">> => string()
%% }
-type list_accounts_response() :: #{binary() => any()}.

%% Example:
%% get_user_request() :: #{}
-type get_user_request() :: #{}.


%% Example:
%% associate_phone_number_with_user_request() :: #{
%%   <<"E164PhoneNumber">> := string()
%% }
-type associate_phone_number_with_user_request() :: #{binary() => any()}.

%% Example:
%% get_user_settings_request() :: #{}
-type get_user_settings_request() :: #{}.


%% Example:
%% batch_delete_phone_number_response() :: #{
%%   <<"PhoneNumberErrors">> => list(phone_number_error())
%% }
-type batch_delete_phone_number_response() :: #{binary() => any()}.


%% Example:
%% get_phone_number_order_response() :: #{
%%   <<"PhoneNumberOrder">> => phone_number_order()
%% }
-type get_phone_number_order_response() :: #{binary() => any()}.


%% Example:
%% create_room_membership_response() :: #{
%%   <<"RoomMembership">> => room_membership()
%% }
-type create_room_membership_response() :: #{binary() => any()}.


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
%% get_phone_number_request() :: #{}
-type get_phone_number_request() :: #{}.


%% Example:
%% list_users_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Users">> => list(user())
%% }
-type list_users_response() :: #{binary() => any()}.


%% Example:
%% not_found_exception() :: #{
%%   <<"Code">> => list(any()),
%%   <<"Message">> => string()
%% }
-type not_found_exception() :: #{binary() => any()}.


%% Example:
%% account() :: #{
%%   <<"AccountId">> => string(),
%%   <<"AccountStatus">> => list(any()),
%%   <<"AccountType">> => list(any()),
%%   <<"AwsAccountId">> => string(),
%%   <<"CreatedTimestamp">> => non_neg_integer(),
%%   <<"DefaultLicense">> => list(any()),
%%   <<"Name">> => string(),
%%   <<"SigninDelegateGroups">> => list(signin_delegate_group()),
%%   <<"SupportedLicenses">> => list(list(any())())
%% }
-type account() :: #{binary() => any()}.


%% Example:
%% phone_number_order() :: #{
%%   <<"CreatedTimestamp">> => non_neg_integer(),
%%   <<"OrderedPhoneNumbers">> => list(ordered_phone_number()),
%%   <<"PhoneNumberOrderId">> => string(),
%%   <<"ProductType">> => list(any()),
%%   <<"Status">> => list(any()),
%%   <<"UpdatedTimestamp">> => non_neg_integer()
%% }
-type phone_number_order() :: #{binary() => any()}.


%% Example:
%% put_retention_settings_request() :: #{
%%   <<"RetentionSettings">> := retention_settings()
%% }
-type put_retention_settings_request() :: #{binary() => any()}.

%% Example:
%% delete_phone_number_request() :: #{}
-type delete_phone_number_request() :: #{}.


%% Example:
%% disassociate_signin_delegate_groups_from_account_request() :: #{
%%   <<"GroupNames">> := list(string())
%% }
-type disassociate_signin_delegate_groups_from_account_request() :: #{binary() => any()}.


%% Example:
%% update_room_membership_request() :: #{
%%   <<"Role">> => list(any())
%% }
-type update_room_membership_request() :: #{binary() => any()}.


%% Example:
%% get_global_settings_response() :: #{
%%   <<"BusinessCalling">> => business_calling_settings(),
%%   <<"VoiceConnector">> => voice_connector_settings()
%% }
-type get_global_settings_response() :: #{binary() => any()}.


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
%% associate_signin_delegate_groups_with_account_response() :: #{}
-type associate_signin_delegate_groups_with_account_response() :: #{}.


%% Example:
%% get_phone_number_response() :: #{
%%   <<"PhoneNumber">> => phone_number()
%% }
-type get_phone_number_response() :: #{binary() => any()}.


%% Example:
%% update_global_settings_request() :: #{
%%   <<"BusinessCalling">> => business_calling_settings(),
%%   <<"VoiceConnector">> => voice_connector_settings()
%% }
-type update_global_settings_request() :: #{binary() => any()}.


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
%% user_error() :: #{
%%   <<"ErrorCode">> => list(any()),
%%   <<"ErrorMessage">> => string(),
%%   <<"UserId">> => string()
%% }
-type user_error() :: #{binary() => any()}.

%% Example:
%% delete_account_request() :: #{}
-type delete_account_request() :: #{}.

%% Example:
%% redact_conversation_message_request() :: #{}
-type redact_conversation_message_request() :: #{}.

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
%% create_account_request() :: #{
%%   <<"Name">> := string()
%% }
-type create_account_request() :: #{binary() => any()}.


%% Example:
%% invite_users_response() :: #{
%%   <<"Invites">> => list(invite())
%% }
-type invite_users_response() :: #{binary() => any()}.

%% Example:
%% get_room_request() :: #{}
-type get_room_request() :: #{}.


%% Example:
%% list_bots_response() :: #{
%%   <<"Bots">> => list(bot()),
%%   <<"NextToken">> => string()
%% }
-type list_bots_response() :: #{binary() => any()}.

%% Example:
%% disassociate_phone_number_from_user_request() :: #{}
-type disassociate_phone_number_from_user_request() :: #{}.


%% Example:
%% unprocessable_entity_exception() :: #{
%%   <<"Code">> => list(any()),
%%   <<"Message">> => string()
%% }
-type unprocessable_entity_exception() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"Code">> => list(any()),
%%   <<"Message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% get_room_response() :: #{
%%   <<"Room">> => room()
%% }
-type get_room_response() :: #{binary() => any()}.


%% Example:
%% phone_number_error() :: #{
%%   <<"ErrorCode">> => list(any()),
%%   <<"ErrorMessage">> => string(),
%%   <<"PhoneNumberId">> => string()
%% }
-type phone_number_error() :: #{binary() => any()}.


%% Example:
%% update_phone_number_request_item() :: #{
%%   <<"CallingName">> => string(),
%%   <<"PhoneNumberId">> => string(),
%%   <<"ProductType">> => list(any())
%% }
-type update_phone_number_request_item() :: #{binary() => any()}.


%% Example:
%% account_settings() :: #{
%%   <<"DisableRemoteControl">> => boolean(),
%%   <<"EnableDialOut">> => boolean()
%% }
-type account_settings() :: #{binary() => any()}.


%% Example:
%% batch_suspend_user_request() :: #{
%%   <<"UserIdList">> := list(string())
%% }
-type batch_suspend_user_request() :: #{binary() => any()}.


%% Example:
%% update_bot_request() :: #{
%%   <<"Disabled">> => boolean()
%% }
-type update_bot_request() :: #{binary() => any()}.


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
%% batch_unsuspend_user_request() :: #{
%%   <<"UserIdList">> := list(string())
%% }
-type batch_unsuspend_user_request() :: #{binary() => any()}.


%% Example:
%% list_rooms_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"MemberId">> => string(),
%%   <<"NextToken">> => string()
%% }
-type list_rooms_request() :: #{binary() => any()}.


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
%%   <<"UserEmailList">> := list(string()),
%%   <<"UserType">> => list(any())
%% }
-type invite_users_request() :: #{binary() => any()}.


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
%% regenerate_security_token_response() :: #{
%%   <<"Bot">> => bot()
%% }
-type regenerate_security_token_response() :: #{binary() => any()}.


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
%% get_events_configuration_response() :: #{
%%   <<"EventsConfiguration">> => events_configuration()
%% }
-type get_events_configuration_response() :: #{binary() => any()}.


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
%% list_phone_numbers_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"PhoneNumbers">> => list(phone_number())
%% }
-type list_phone_numbers_response() :: #{binary() => any()}.


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
%%   <<"SigninDelegateGroups">> := list(signin_delegate_group())
%% }
-type associate_signin_delegate_groups_with_account_request() :: #{binary() => any()}.


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
%% update_room_request() :: #{
%%   <<"Name">> => string()
%% }
-type update_room_request() :: #{binary() => any()}.

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
%%   <<"UserErrors">> => list(user_error())
%% }
-type batch_suspend_user_response() :: #{binary() => any()}.


%% Example:
%% batch_update_phone_number_request() :: #{
%%   <<"UpdatePhoneNumberRequestItems">> := list(update_phone_number_request_item())
%% }
-type batch_update_phone_number_request() :: #{binary() => any()}.


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
%% create_room_response() :: #{
%%   <<"Room">> => room()
%% }
-type create_room_response() :: #{binary() => any()}.


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
%% conversation_retention_settings() :: #{
%%   <<"RetentionDays">> => integer()
%% }
-type conversation_retention_settings() :: #{binary() => any()}.


%% Example:
%% create_user_request() :: #{
%%   <<"Email">> => string(),
%%   <<"UserType">> => list(any()),
%%   <<"Username">> => string()
%% }
-type create_user_request() :: #{binary() => any()}.


%% Example:
%% batch_update_user_request() :: #{
%%   <<"UpdateUserRequestItems">> := list(update_user_request_item())
%% }
-type batch_update_user_request() :: #{binary() => any()}.

%% Example:
%% regenerate_security_token_request() :: #{}
-type regenerate_security_token_request() :: #{}.

%% Example:
%% disassociate_signin_delegate_groups_from_account_response() :: #{}
-type disassociate_signin_delegate_groups_from_account_response() :: #{}.

-type associate_phone_number_with_user_errors() ::
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

-type create_bot_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
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

-type create_phone_number_order_errors() ::
    bad_request_exception() | 
    access_denied_exception() | 
    service_unavailable_exception() | 
    resource_limit_exceeded_exception() | 
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

-type create_user_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    conflict_exception() | 
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

-type delete_events_configuration_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    resource_limit_exceeded_exception() | 
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

-type disassociate_phone_number_from_user_errors() ::
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

-type get_bot_errors() ::
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

-type list_bots_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
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

-type list_supported_phone_number_countries_errors() ::
    bad_request_exception() | 
    access_denied_exception() | 
    service_unavailable_exception() | 
    throttled_client_exception() | 
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

-type logout_user_errors() ::
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

-type update_bot_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
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
%% This API is not available in a dedicated namespace.
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
