%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Welcome to the Amazon Web Services Wickr API Reference.
%%
%% The Amazon Web Services Wickr application programming interface (API) is
%% designed for administrators to perform key tasks, such as creating and
%% managing Amazon Web Services Wickr, networks, users, security groups, bots
%% and more. This guide provides detailed information about the Amazon Web
%% Services Wickr API, including operations, types, inputs and outputs, and
%% error codes. You can use an Amazon Web Services SDK, the Amazon Web
%% Services Command Line Interface (Amazon Web Services CLI, or the REST API
%% to make API calls for Amazon Web Services Wickr.
%%
%% Using Amazon Web Services SDK
%%
%% The SDK clients authenticate your requests by using access keys that you
%% provide. For more information, see Authentication and access using Amazon
%% Web Services SDKs and tools:
%% https://docs.aws.amazon.com/sdkref/latest/guide/access.html in the Amazon
%% Web Services SDKs and Tools Reference Guide.
%%
%% Using Amazon Web Services CLI
%%
%% Use your access keys with the Amazon Web Services CLI to make API calls.
%% For more information about setting up the Amazon Web Services CLI, see
%% Getting started with the Amazon Web Services CLI:
%% https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-getting-started.html
%% in the Amazon Web Services Command Line Interface User Guide for Version
%% 2.
%%
%% Using REST APIs
%%
%% If you use REST to make API calls, you must authenticate your request by
%% providing a signature. Amazon Web Services Wickr supports Signature
%% Version 4. For more information, see Amazon Web Services Signature Version
%% 4 for API requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_sigv.html in
%% the Amazon Web Services Identity and Access Management User Guide.
%%
%% Access and permissions to the APIs can be controlled by Amazon Web
%% Services Identity and Access Management. The managed policy Amazon Web
%% ServicesWickrFullAccess:
%% https://docs.aws.amazon.com/wickr/latest/adminguide/security-iam-awsmanpol.html#security-iam-awsmanpol-AWSWickrFullAccess
%% grants full administrative permission to the Amazon Web Services Wickr
%% service APIs. For more information on restricting access to specific
%% operations, see Identity and access management for Amazon Web Services
%% Wickr :
%% https://docs.aws.amazon.com/wickr/latest/adminguide/security-iam.html in
%% the Amazon Web Services Wickr Administration Guide.
%%
%% Types of Errors:
%%
%% The Amazon Web Services Wickr APIs provide an HTTP interface. HTTP defines
%% ranges of HTTP Status Codes for different types of error responses.
%%
%% Client errors are indicated by HTTP Status Code class of 4xx
%%
%% Service errors are indicated by HTTP Status Code class of 5xx
%%
%% In this reference guide, the documentation for each API has an Errors
%% section that includes a brief discussion about HTTP status codes. We
%% recommend looking there as part of your investigation when you get an
%% error.
-module(aws_wickr).

-export([batch_create_user/3,
         batch_create_user/4,
         batch_delete_user/3,
         batch_delete_user/4,
         batch_lookup_user_uname/3,
         batch_lookup_user_uname/4,
         batch_reinvite_user/3,
         batch_reinvite_user/4,
         batch_reset_devices_for_user/4,
         batch_reset_devices_for_user/5,
         batch_toggle_user_suspend_status/3,
         batch_toggle_user_suspend_status/4,
         create_bot/3,
         create_bot/4,
         create_data_retention_bot/3,
         create_data_retention_bot/4,
         create_data_retention_bot_challenge/3,
         create_data_retention_bot_challenge/4,
         create_network/2,
         create_network/3,
         create_security_group/3,
         create_security_group/4,
         delete_bot/4,
         delete_bot/5,
         delete_data_retention_bot/3,
         delete_data_retention_bot/4,
         delete_network/3,
         delete_network/4,
         delete_security_group/4,
         delete_security_group/5,
         get_bot/3,
         get_bot/5,
         get_bot/6,
         get_bots_count/2,
         get_bots_count/4,
         get_bots_count/5,
         get_data_retention_bot/2,
         get_data_retention_bot/4,
         get_data_retention_bot/5,
         get_guest_user_history_count/2,
         get_guest_user_history_count/4,
         get_guest_user_history_count/5,
         get_network/2,
         get_network/4,
         get_network/5,
         get_network_settings/2,
         get_network_settings/4,
         get_network_settings/5,
         get_oidc_info/2,
         get_oidc_info/4,
         get_oidc_info/5,
         get_security_group/3,
         get_security_group/5,
         get_security_group/6,
         get_user/3,
         get_user/5,
         get_user/6,
         get_users_count/2,
         get_users_count/4,
         get_users_count/5,
         list_blocked_guest_users/2,
         list_blocked_guest_users/4,
         list_blocked_guest_users/5,
         list_bots/2,
         list_bots/4,
         list_bots/5,
         list_devices_for_user/3,
         list_devices_for_user/5,
         list_devices_for_user/6,
         list_guest_users/2,
         list_guest_users/4,
         list_guest_users/5,
         list_networks/1,
         list_networks/3,
         list_networks/4,
         list_security_group_users/3,
         list_security_group_users/5,
         list_security_group_users/6,
         list_security_groups/2,
         list_security_groups/4,
         list_security_groups/5,
         list_users/2,
         list_users/4,
         list_users/5,
         register_oidc_config/3,
         register_oidc_config/4,
         register_oidc_config_test/3,
         register_oidc_config_test/4,
         update_bot/4,
         update_bot/5,
         update_data_retention/3,
         update_data_retention/4,
         update_guest_user/4,
         update_guest_user/5,
         update_network/3,
         update_network/4,
         update_network_settings/3,
         update_network_settings/4,
         update_security_group/4,
         update_security_group/5,
         update_user/3,
         update_user/4]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% create_network_response() :: #{
%%   <<"encryptionKeyArn">> => string(),
%%   <<"networkId">> => string(),
%%   <<"networkName">> => string()
%% }
-type create_network_response() :: #{binary() => any()}.


%% Example:
%% list_security_groups_request() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string(),
%%   <<"sortDirection">> => list(any()),
%%   <<"sortFields">> => string()
%% }
-type list_security_groups_request() :: #{binary() => any()}.


%% Example:
%% list_networks_response() :: #{
%%   <<"networks">> => list(network()),
%%   <<"nextToken">> => string()
%% }
-type list_networks_response() :: #{binary() => any()}.


%% Example:
%% batch_lookup_user_uname_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"unames">> := list(string())
%% }
-type batch_lookup_user_uname_request() :: #{binary() => any()}.


%% Example:
%% delete_security_group_response() :: #{
%%   <<"groupId">> => string(),
%%   <<"message">> => string(),
%%   <<"networkId">> => string()
%% }
-type delete_security_group_response() :: #{binary() => any()}.

%% Example:
%% get_network_settings_request() :: #{}
-type get_network_settings_request() :: #{}.


%% Example:
%% list_devices_for_user_response() :: #{
%%   <<"devices">> => list(basic_device_object()),
%%   <<"nextToken">> => string()
%% }
-type list_devices_for_user_response() :: #{binary() => any()}.


%% Example:
%% shredder_settings() :: #{
%%   <<"canProcessManually">> => [boolean()],
%%   <<"intensity">> => [integer()]
%% }
-type shredder_settings() :: #{binary() => any()}.


%% Example:
%% wickr_aws_networks() :: #{
%%   <<"networkId">> => string(),
%%   <<"region">> => string()
%% }
-type wickr_aws_networks() :: #{binary() => any()}.


%% Example:
%% forbidden_error() :: #{
%%   <<"message">> => string()
%% }
-type forbidden_error() :: #{binary() => any()}.


%% Example:
%% batch_delete_user_response() :: #{
%%   <<"failed">> => list(batch_user_error_response_item()),
%%   <<"message">> => string(),
%%   <<"successful">> => list(batch_user_success_response_item())
%% }
-type batch_delete_user_response() :: #{binary() => any()}.


%% Example:
%% get_bots_count_response() :: #{
%%   <<"active">> => [integer()],
%%   <<"pending">> => [integer()],
%%   <<"total">> => [integer()]
%% }
-type get_bots_count_response() :: #{binary() => any()}.

%% Example:
%% get_network_request() :: #{}
-type get_network_request() :: #{}.


%% Example:
%% delete_data_retention_bot_response() :: #{
%%   <<"message">> => string()
%% }
-type delete_data_retention_bot_response() :: #{binary() => any()}.


%% Example:
%% setting() :: #{
%%   <<"optionName">> => string(),
%%   <<"type">> => string(),
%%   <<"value">> => string()
%% }
-type setting() :: #{binary() => any()}.


%% Example:
%% update_user_response() :: #{
%%   <<"codeValidation">> => [boolean()],
%%   <<"firstName">> => string(),
%%   <<"inviteCode">> => string(),
%%   <<"inviteExpiration">> => [integer()],
%%   <<"lastName">> => string(),
%%   <<"middleName">> => string(),
%%   <<"modified">> => [integer()],
%%   <<"networkId">> => string(),
%%   <<"securityGroupIds">> => list(string()),
%%   <<"status">> => [integer()],
%%   <<"suspended">> => [boolean()],
%%   <<"userId">> => string()
%% }
-type update_user_response() :: #{binary() => any()}.


%% Example:
%% get_oidc_info_response() :: #{
%%   <<"openidConnectInfo">> => oidc_config_info(),
%%   <<"tokenInfo">> => oidc_token_info()
%% }
-type get_oidc_info_response() :: #{binary() => any()}.


%% Example:
%% update_network_settings_response() :: #{
%%   <<"settings">> => list(setting())
%% }
-type update_network_settings_response() :: #{binary() => any()}.


%% Example:
%% get_security_group_response() :: #{
%%   <<"securityGroup">> => security_group()
%% }
-type get_security_group_response() :: #{binary() => any()}.


%% Example:
%% batch_toggle_user_suspend_status_response() :: #{
%%   <<"failed">> => list(batch_user_error_response_item()),
%%   <<"message">> => string(),
%%   <<"successful">> => list(batch_user_success_response_item())
%% }
-type batch_toggle_user_suspend_status_response() :: #{binary() => any()}.


%% Example:
%% batch_lookup_user_uname_response() :: #{
%%   <<"failed">> => list(batch_uname_error_response_item()),
%%   <<"message">> => string(),
%%   <<"successful">> => list(batch_uname_success_response_item())
%% }
-type batch_lookup_user_uname_response() :: #{binary() => any()}.

%% Example:
%% get_bot_request() :: #{}
-type get_bot_request() :: #{}.


%% Example:
%% create_security_group_response() :: #{
%%   <<"securityGroup">> => security_group()
%% }
-type create_security_group_response() :: #{binary() => any()}.

%% Example:
%% delete_bot_request() :: #{}
-type delete_bot_request() :: #{}.


%% Example:
%% get_bot_response() :: #{
%%   <<"botId">> => string(),
%%   <<"displayName">> => string(),
%%   <<"groupId">> => string(),
%%   <<"hasChallenge">> => [boolean()],
%%   <<"lastLogin">> => string(),
%%   <<"pubkey">> => string(),
%%   <<"status">> => list(integer()),
%%   <<"suspended">> => [boolean()],
%%   <<"uname">> => string(),
%%   <<"username">> => string()
%% }
-type get_bot_response() :: #{binary() => any()}.


%% Example:
%% unauthorized_error() :: #{
%%   <<"message">> => string()
%% }
-type unauthorized_error() :: #{binary() => any()}.


%% Example:
%% security_group_settings_request() :: #{
%%   <<"enableGuestFederation">> => [boolean()],
%%   <<"enableRestrictedGlobalFederation">> => [boolean()],
%%   <<"federationMode">> => [integer()],
%%   <<"globalFederation">> => [boolean()],
%%   <<"lockoutThreshold">> => [integer()],
%%   <<"permittedNetworks">> => list(string()),
%%   <<"permittedWickrAwsNetworks">> => list(wickr_aws_networks()),
%%   <<"permittedWickrEnterpriseNetworks">> => list(permitted_wickr_enterprise_network())
%% }
-type security_group_settings_request() :: #{binary() => any()}.


%% Example:
%% batch_reset_devices_for_user_request() :: #{
%%   <<"appIds">> := list(string()),
%%   <<"clientToken">> => string()
%% }
-type batch_reset_devices_for_user_request() :: #{binary() => any()}.


%% Example:
%% batch_delete_user_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"userIds">> := list(string())
%% }
-type batch_delete_user_request() :: #{binary() => any()}.

%% Example:
%% get_security_group_request() :: #{}
-type get_security_group_request() :: #{}.


%% Example:
%% get_user_response() :: #{
%%   <<"firstName">> => string(),
%%   <<"isAdmin">> => [boolean()],
%%   <<"lastActivity">> => [integer()],
%%   <<"lastLogin">> => [integer()],
%%   <<"lastName">> => string(),
%%   <<"securityGroupIds">> => list(string()),
%%   <<"status">> => [integer()],
%%   <<"suspended">> => [boolean()],
%%   <<"userId">> => string(),
%%   <<"username">> => string()
%% }
-type get_user_response() :: #{binary() => any()}.


%% Example:
%% create_security_group_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"name">> := string(),
%%   <<"securityGroupSettings">> := security_group_settings_request()
%% }
-type create_security_group_request() :: #{binary() => any()}.


%% Example:
%% batch_toggle_user_suspend_status_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"suspend">> := [boolean()],
%%   <<"userIds">> := list(string())
%% }
-type batch_toggle_user_suspend_status_request() :: #{binary() => any()}.


%% Example:
%% batch_user_success_response_item() :: #{
%%   <<"userId">> => string()
%% }
-type batch_user_success_response_item() :: #{binary() => any()}.


%% Example:
%% list_guest_users_response() :: #{
%%   <<"guestlist">> => list(guest_user()),
%%   <<"nextToken">> => string()
%% }
-type list_guest_users_response() :: #{binary() => any()}.

%% Example:
%% get_guest_user_history_count_request() :: #{}
-type get_guest_user_history_count_request() :: #{}.


%% Example:
%% delete_network_response() :: #{
%%   <<"message">> => string()
%% }
-type delete_network_response() :: #{binary() => any()}.


%% Example:
%% list_security_group_users_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"users">> => list(user())
%% }
-type list_security_group_users_response() :: #{binary() => any()}.


%% Example:
%% batch_uname_error_response_item() :: #{
%%   <<"field">> => string(),
%%   <<"reason">> => string(),
%%   <<"uname">> => string()
%% }
-type batch_uname_error_response_item() :: #{binary() => any()}.

%% Example:
%% create_data_retention_bot_challenge_request() :: #{}
-type create_data_retention_bot_challenge_request() :: #{}.


%% Example:
%% list_security_groups_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"securityGroups">> => list(security_group())
%% }
-type list_security_groups_response() :: #{binary() => any()}.


%% Example:
%% network_settings() :: #{
%%   <<"dataRetention">> => [boolean()],
%%   <<"enableClientMetrics">> => [boolean()],
%%   <<"readReceiptConfig">> => read_receipt_config()
%% }
-type network_settings() :: #{binary() => any()}.


%% Example:
%% bad_request_error() :: #{
%%   <<"message">> => string()
%% }
-type bad_request_error() :: #{binary() => any()}.


%% Example:
%% create_data_retention_bot_challenge_response() :: #{
%%   <<"challenge">> => string()
%% }
-type create_data_retention_bot_challenge_response() :: #{binary() => any()}.


%% Example:
%% get_users_count_response() :: #{
%%   <<"active">> => [integer()],
%%   <<"pending">> => [integer()],
%%   <<"rejected">> => [integer()],
%%   <<"remaining">> => [integer()],
%%   <<"total">> => [integer()]
%% }
-type get_users_count_response() :: #{binary() => any()}.

%% Example:
%% delete_security_group_request() :: #{}
-type delete_security_group_request() :: #{}.


%% Example:
%% list_bots_request() :: #{
%%   <<"displayName">> => string(),
%%   <<"groupId">> => string(),
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string(),
%%   <<"sortDirection">> => list(any()),
%%   <<"sortFields">> => string(),
%%   <<"status">> => list(integer()),
%%   <<"username">> => string()
%% }
-type list_bots_request() :: #{binary() => any()}.

%% Example:
%% delete_data_retention_bot_request() :: #{}
-type delete_data_retention_bot_request() :: #{}.


%% Example:
%% get_user_request() :: #{
%%   <<"endTime">> => [non_neg_integer()],
%%   <<"startTime">> => [non_neg_integer()]
%% }
-type get_user_request() :: #{binary() => any()}.

%% Example:
%% create_data_retention_bot_request() :: #{}
-type create_data_retention_bot_request() :: #{}.


%% Example:
%% delete_bot_response() :: #{
%%   <<"message">> => string()
%% }
-type delete_bot_response() :: #{binary() => any()}.


%% Example:
%% delete_network_request() :: #{
%%   <<"clientToken">> => string()
%% }
-type delete_network_request() :: #{binary() => any()}.


%% Example:
%% basic_device_object() :: #{
%%   <<"appId">> => string(),
%%   <<"created">> => string(),
%%   <<"lastLogin">> => string(),
%%   <<"statusText">> => string(),
%%   <<"suspend">> => [boolean()],
%%   <<"type">> => string()
%% }
-type basic_device_object() :: #{binary() => any()}.


%% Example:
%% register_oidc_config_test_response() :: #{
%%   <<"authorizationEndpoint">> => string(),
%%   <<"endSessionEndpoint">> => string(),
%%   <<"grantTypesSupported">> => list(string()),
%%   <<"issuer">> => string(),
%%   <<"logoutEndpoint">> => string(),
%%   <<"microsoftMultiRefreshToken">> => [boolean()],
%%   <<"responseTypesSupported">> => list(string()),
%%   <<"revocationEndpoint">> => string(),
%%   <<"scopesSupported">> => list(string()),
%%   <<"tokenEndpoint">> => string(),
%%   <<"tokenEndpointAuthMethodsSupported">> => list(string()),
%%   <<"userinfoEndpoint">> => string()
%% }
-type register_oidc_config_test_response() :: #{binary() => any()}.


%% Example:
%% batch_device_error_response_item() :: #{
%%   <<"appId">> => string(),
%%   <<"field">> => string(),
%%   <<"reason">> => string()
%% }
-type batch_device_error_response_item() :: #{binary() => any()}.


%% Example:
%% get_oidc_info_request() :: #{
%%   <<"certificate">> => string(),
%%   <<"clientId">> => string(),
%%   <<"clientSecret">> => string(),
%%   <<"code">> => string(),
%%   <<"codeVerifier">> => string(),
%%   <<"grantType">> => string(),
%%   <<"redirectUri">> => string(),
%%   <<"url">> => string()
%% }
-type get_oidc_info_request() :: #{binary() => any()}.


%% Example:
%% update_network_settings_request() :: #{
%%   <<"settings">> := network_settings()
%% }
-type update_network_settings_request() :: #{binary() => any()}.


%% Example:
%% get_network_settings_response() :: #{
%%   <<"settings">> => list(setting())
%% }
-type get_network_settings_response() :: #{binary() => any()}.


%% Example:
%% update_guest_user_request() :: #{
%%   <<"block">> := [boolean()]
%% }
-type update_guest_user_request() :: #{binary() => any()}.


%% Example:
%% list_users_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"users">> => list(user())
%% }
-type list_users_response() :: #{binary() => any()}.


%% Example:
%% blocked_guest_user() :: #{
%%   <<"admin">> => string(),
%%   <<"modified">> => string(),
%%   <<"username">> => string(),
%%   <<"usernameHash">> => string()
%% }
-type blocked_guest_user() :: #{binary() => any()}.


%% Example:
%% list_networks_request() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string(),
%%   <<"sortDirection">> => list(any()),
%%   <<"sortFields">> => string()
%% }
-type list_networks_request() :: #{binary() => any()}.


%% Example:
%% update_data_retention_request() :: #{
%%   <<"actionType">> := list(any())
%% }
-type update_data_retention_request() :: #{binary() => any()}.


%% Example:
%% list_guest_users_request() :: #{
%%   <<"billingPeriod">> => string(),
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string(),
%%   <<"sortDirection">> => list(any()),
%%   <<"sortFields">> => string(),
%%   <<"username">> => string()
%% }
-type list_guest_users_request() :: #{binary() => any()}.


%% Example:
%% validation_error() :: #{
%%   <<"reasons">> => list(error_detail())
%% }
-type validation_error() :: #{binary() => any()}.


%% Example:
%% batch_create_user_response() :: #{
%%   <<"failed">> => list(batch_user_error_response_item()),
%%   <<"message">> => string(),
%%   <<"successful">> => list(user())
%% }
-type batch_create_user_response() :: #{binary() => any()}.


%% Example:
%% batch_reset_devices_for_user_response() :: #{
%%   <<"failed">> => list(batch_device_error_response_item()),
%%   <<"message">> => string(),
%%   <<"successful">> => list(batch_device_success_response_item())
%% }
-type batch_reset_devices_for_user_response() :: #{binary() => any()}.


%% Example:
%% security_group() :: #{
%%   <<"activeDirectoryGuid">> => string(),
%%   <<"activeMembers">> => [integer()],
%%   <<"botMembers">> => [integer()],
%%   <<"id">> => string(),
%%   <<"isDefault">> => [boolean()],
%%   <<"modified">> => [integer()],
%%   <<"name">> => string(),
%%   <<"securityGroupSettings">> => security_group_settings()
%% }
-type security_group() :: #{binary() => any()}.


%% Example:
%% list_blocked_guest_users_request() :: #{
%%   <<"admin">> => string(),
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string(),
%%   <<"sortDirection">> => list(any()),
%%   <<"sortFields">> => string(),
%%   <<"username">> => string()
%% }
-type list_blocked_guest_users_request() :: #{binary() => any()}.


%% Example:
%% register_oidc_config_response() :: #{
%%   <<"applicationId">> => [integer()],
%%   <<"applicationName">> => string(),
%%   <<"caCertificate">> => string(),
%%   <<"clientId">> => string(),
%%   <<"clientSecret">> => string(),
%%   <<"companyId">> => string(),
%%   <<"customUsername">> => string(),
%%   <<"extraAuthParams">> => string(),
%%   <<"issuer">> => string(),
%%   <<"redirectUrl">> => string(),
%%   <<"scopes">> => string(),
%%   <<"secret">> => string(),
%%   <<"ssoTokenBufferMinutes">> => [integer()],
%%   <<"userId">> => string()
%% }
-type register_oidc_config_response() :: #{binary() => any()}.


%% Example:
%% password_requirements() :: #{
%%   <<"lowercase">> => [integer()],
%%   <<"minLength">> => [integer()],
%%   <<"numbers">> => [integer()],
%%   <<"symbols">> => [integer()],
%%   <<"uppercase">> => [integer()]
%% }
-type password_requirements() :: #{binary() => any()}.


%% Example:
%% create_data_retention_bot_response() :: #{
%%   <<"message">> => string()
%% }
-type create_data_retention_bot_response() :: #{binary() => any()}.


%% Example:
%% update_guest_user_response() :: #{
%%   <<"message">> => string()
%% }
-type update_guest_user_response() :: #{binary() => any()}.

%% Example:
%% get_data_retention_bot_request() :: #{}
-type get_data_retention_bot_request() :: #{}.


%% Example:
%% list_security_group_users_request() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string(),
%%   <<"sortDirection">> => list(any()),
%%   <<"sortFields">> => string()
%% }
-type list_security_group_users_request() :: #{binary() => any()}.


%% Example:
%% register_oidc_config_test_request() :: #{
%%   <<"certificate">> => string(),
%%   <<"extraAuthParams">> => string(),
%%   <<"issuer">> := string(),
%%   <<"scopes">> := string()
%% }
-type register_oidc_config_test_request() :: #{binary() => any()}.


%% Example:
%% permitted_wickr_enterprise_network() :: #{
%%   <<"domain">> => string(),
%%   <<"networkId">> => string()
%% }
-type permitted_wickr_enterprise_network() :: #{binary() => any()}.


%% Example:
%% list_bots_response() :: #{
%%   <<"bots">> => list(bot()),
%%   <<"nextToken">> => string()
%% }
-type list_bots_response() :: #{binary() => any()}.


%% Example:
%% guest_user() :: #{
%%   <<"billingPeriod">> => string(),
%%   <<"username">> => string(),
%%   <<"usernameHash">> => string()
%% }
-type guest_user() :: #{binary() => any()}.


%% Example:
%% create_network_request() :: #{
%%   <<"accessLevel">> := list(any()),
%%   <<"enablePremiumFreeTrial">> => [boolean()],
%%   <<"encryptionKeyArn">> => string(),
%%   <<"networkName">> := string()
%% }
-type create_network_request() :: #{binary() => any()}.


%% Example:
%% resource_not_found_error() :: #{
%%   <<"message">> => string()
%% }
-type resource_not_found_error() :: #{binary() => any()}.


%% Example:
%% batch_reinvite_user_response() :: #{
%%   <<"failed">> => list(batch_user_error_response_item()),
%%   <<"message">> => string(),
%%   <<"successful">> => list(batch_user_success_response_item())
%% }
-type batch_reinvite_user_response() :: #{binary() => any()}.


%% Example:
%% error_detail() :: #{
%%   <<"field">> => string(),
%%   <<"reason">> => string()
%% }
-type error_detail() :: #{binary() => any()}.


%% Example:
%% internal_server_error() :: #{
%%   <<"message">> => string()
%% }
-type internal_server_error() :: #{binary() => any()}.

%% Example:
%% get_bots_count_request() :: #{}
-type get_bots_count_request() :: #{}.


%% Example:
%% get_network_response() :: #{
%%   <<"accessLevel">> => list(any()),
%%   <<"awsAccountId">> => string(),
%%   <<"encryptionKeyArn">> => string(),
%%   <<"freeTrialExpiration">> => string(),
%%   <<"migrationState">> => [integer()],
%%   <<"networkArn">> => string(),
%%   <<"networkId">> => string(),
%%   <<"networkName">> => string(),
%%   <<"standing">> => [integer()]
%% }
-type get_network_response() :: #{binary() => any()}.


%% Example:
%% update_network_response() :: #{
%%   <<"message">> => string()
%% }
-type update_network_response() :: #{binary() => any()}.


%% Example:
%% guest_user_history_count() :: #{
%%   <<"count">> => string(),
%%   <<"month">> => string()
%% }
-type guest_user_history_count() :: #{binary() => any()}.


%% Example:
%% update_bot_request() :: #{
%%   <<"challenge">> => string(),
%%   <<"displayName">> => string(),
%%   <<"groupId">> => string(),
%%   <<"suspend">> => [boolean()]
%% }
-type update_bot_request() :: #{binary() => any()}.


%% Example:
%% register_oidc_config_request() :: #{
%%   <<"companyId">> := string(),
%%   <<"customUsername">> => string(),
%%   <<"extraAuthParams">> => string(),
%%   <<"issuer">> := string(),
%%   <<"scopes">> := string(),
%%   <<"secret">> => string(),
%%   <<"ssoTokenBufferMinutes">> => [integer()],
%%   <<"userId">> => string()
%% }
-type register_oidc_config_request() :: #{binary() => any()}.


%% Example:
%% update_user_request() :: #{
%%   <<"userDetails">> => update_user_details(),
%%   <<"userId">> := string()
%% }
-type update_user_request() :: #{binary() => any()}.


%% Example:
%% network() :: #{
%%   <<"accessLevel">> => list(any()),
%%   <<"awsAccountId">> => string(),
%%   <<"encryptionKeyArn">> => string(),
%%   <<"freeTrialExpiration">> => string(),
%%   <<"migrationState">> => [integer()],
%%   <<"networkArn">> => string(),
%%   <<"networkId">> => string(),
%%   <<"networkName">> => string(),
%%   <<"standing">> => [integer()]
%% }
-type network() :: #{binary() => any()}.


%% Example:
%% batch_create_user_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"users">> := list(batch_create_user_request_item())
%% }
-type batch_create_user_request() :: #{binary() => any()}.


%% Example:
%% update_user_details() :: #{
%%   <<"codeValidation">> => [boolean()],
%%   <<"firstName">> => string(),
%%   <<"inviteCode">> => string(),
%%   <<"inviteCodeTtl">> => [integer()],
%%   <<"lastName">> => string(),
%%   <<"securityGroupIds">> => list(string()),
%%   <<"username">> => string()
%% }
-type update_user_details() :: #{binary() => any()}.


%% Example:
%% user() :: #{
%%   <<"cell">> => string(),
%%   <<"challengeFailures">> => [integer()],
%%   <<"codeValidation">> => [boolean()],
%%   <<"countryCode">> => string(),
%%   <<"firstName">> => string(),
%%   <<"inviteCode">> => string(),
%%   <<"isAdmin">> => [boolean()],
%%   <<"isInviteExpired">> => [boolean()],
%%   <<"isUser">> => [boolean()],
%%   <<"lastName">> => string(),
%%   <<"otpEnabled">> => [boolean()],
%%   <<"scimId">> => string(),
%%   <<"securityGroups">> => list(string()),
%%   <<"status">> => [integer()],
%%   <<"suspended">> => [boolean()],
%%   <<"type">> => string(),
%%   <<"uname">> => string(),
%%   <<"userId">> => string(),
%%   <<"username">> => string()
%% }
-type user() :: #{binary() => any()}.


%% Example:
%% batch_device_success_response_item() :: #{
%%   <<"appId">> => string()
%% }
-type batch_device_success_response_item() :: #{binary() => any()}.


%% Example:
%% create_bot_request() :: #{
%%   <<"challenge">> := string(),
%%   <<"displayName">> => string(),
%%   <<"groupId">> := string(),
%%   <<"username">> := string()
%% }
-type create_bot_request() :: #{binary() => any()}.


%% Example:
%% read_receipt_config() :: #{
%%   <<"status">> => list(any())
%% }
-type read_receipt_config() :: #{binary() => any()}.


%% Example:
%% list_users_request() :: #{
%%   <<"firstName">> => string(),
%%   <<"groupId">> => string(),
%%   <<"lastName">> => string(),
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string(),
%%   <<"sortDirection">> => list(any()),
%%   <<"sortFields">> => string(),
%%   <<"status">> => list(integer()),
%%   <<"username">> => string()
%% }
-type list_users_request() :: #{binary() => any()}.


%% Example:
%% oidc_config_info() :: #{
%%   <<"applicationId">> => [integer()],
%%   <<"applicationName">> => string(),
%%   <<"caCertificate">> => string(),
%%   <<"clientId">> => string(),
%%   <<"clientSecret">> => string(),
%%   <<"companyId">> => string(),
%%   <<"customUsername">> => string(),
%%   <<"extraAuthParams">> => string(),
%%   <<"issuer">> => string(),
%%   <<"redirectUrl">> => string(),
%%   <<"scopes">> => string(),
%%   <<"secret">> => string(),
%%   <<"ssoTokenBufferMinutes">> => [integer()],
%%   <<"userId">> => string()
%% }
-type oidc_config_info() :: #{binary() => any()}.


%% Example:
%% calling_settings() :: #{
%%   <<"canStart11Call">> => [boolean()],
%%   <<"canVideoCall">> => [boolean()],
%%   <<"forceTcpCall">> => [boolean()]
%% }
-type calling_settings() :: #{binary() => any()}.


%% Example:
%% create_bot_response() :: #{
%%   <<"botId">> => string(),
%%   <<"displayName">> => string(),
%%   <<"groupId">> => string(),
%%   <<"message">> => string(),
%%   <<"networkId">> => string(),
%%   <<"username">> => string()
%% }
-type create_bot_response() :: #{binary() => any()}.


%% Example:
%% list_devices_for_user_request() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string(),
%%   <<"sortDirection">> => list(any()),
%%   <<"sortFields">> => string()
%% }
-type list_devices_for_user_request() :: #{binary() => any()}.


%% Example:
%% batch_user_error_response_item() :: #{
%%   <<"field">> => string(),
%%   <<"reason">> => string(),
%%   <<"userId">> => string()
%% }
-type batch_user_error_response_item() :: #{binary() => any()}.


%% Example:
%% batch_reinvite_user_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"userIds">> := list(string())
%% }
-type batch_reinvite_user_request() :: #{binary() => any()}.


%% Example:
%% batch_uname_success_response_item() :: #{
%%   <<"uname">> => string(),
%%   <<"username">> => string()
%% }
-type batch_uname_success_response_item() :: #{binary() => any()}.


%% Example:
%% batch_create_user_request_item() :: #{
%%   <<"codeValidation">> => [boolean()],
%%   <<"firstName">> => string(),
%%   <<"inviteCode">> => string(),
%%   <<"inviteCodeTtl">> => [integer()],
%%   <<"lastName">> => string(),
%%   <<"securityGroupIds">> => list(string()),
%%   <<"username">> => string()
%% }
-type batch_create_user_request_item() :: #{binary() => any()}.


%% Example:
%% update_network_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"encryptionKeyArn">> => string(),
%%   <<"networkName">> := string()
%% }
-type update_network_request() :: #{binary() => any()}.


%% Example:
%% bot() :: #{
%%   <<"botId">> => string(),
%%   <<"displayName">> => string(),
%%   <<"groupId">> => string(),
%%   <<"hasChallenge">> => [boolean()],
%%   <<"lastLogin">> => string(),
%%   <<"pubkey">> => string(),
%%   <<"status">> => list(integer()),
%%   <<"suspended">> => [boolean()],
%%   <<"uname">> => string(),
%%   <<"username">> => string()
%% }
-type bot() :: #{binary() => any()}.


%% Example:
%% update_data_retention_response() :: #{
%%   <<"message">> => string()
%% }
-type update_data_retention_response() :: #{binary() => any()}.


%% Example:
%% update_security_group_response() :: #{
%%   <<"securityGroup">> => security_group()
%% }
-type update_security_group_response() :: #{binary() => any()}.


%% Example:
%% update_bot_response() :: #{
%%   <<"message">> => string()
%% }
-type update_bot_response() :: #{binary() => any()}.


%% Example:
%% get_data_retention_bot_response() :: #{
%%   <<"botExists">> => [boolean()],
%%   <<"botName">> => string(),
%%   <<"isBotActive">> => [boolean()],
%%   <<"isDataRetentionBotRegistered">> => [boolean()],
%%   <<"isDataRetentionServiceEnabled">> => [boolean()],
%%   <<"isPubkeyMsgAcked">> => [boolean()]
%% }
-type get_data_retention_bot_response() :: #{binary() => any()}.


%% Example:
%% security_group_settings() :: #{
%%   <<"forceDeviceLockout">> => [integer()],
%%   <<"locationEnabled">> => [boolean()],
%%   <<"presenceEnabled">> => [boolean()],
%%   <<"enableFileDownload">> => [boolean()],
%%   <<"lockoutThreshold">> => [integer()],
%%   <<"isAtoEnabled">> => [boolean()],
%%   <<"ssoMaxIdleMinutes">> => [integer()],
%%   <<"permittedWickrAwsNetworks">> => list(wickr_aws_networks()),
%%   <<"enableRestrictedGlobalFederation">> => [boolean()],
%%   <<"enableCrashReports">> => [boolean()],
%%   <<"enableAtak">> => [boolean()],
%%   <<"quickResponses">> => list(string()),
%%   <<"permittedNetworks">> => list(string()),
%%   <<"isLinkPreviewEnabled">> => [boolean()],
%%   <<"enableOpenAccessOption">> => [boolean()],
%%   <<"maxTtl">> => [float()],
%%   <<"alwaysReauthenticate">> => [boolean()],
%%   <<"locationAllowMaps">> => [boolean()],
%%   <<"maxAutoDownloadSize">> => [float()],
%%   <<"checkForUpdates">> => [boolean()],
%%   <<"calling">> => calling_settings(),
%%   <<"federationMode">> => [integer()],
%%   <<"permittedWickrEnterpriseNetworks">> => list(permitted_wickr_enterprise_network()),
%%   <<"forceReadReceipts">> => [boolean()],
%%   <<"forceOpenAccess">> => [boolean()],
%%   <<"globalFederation">> => [boolean()],
%%   <<"passwordRequirements">> => password_requirements(),
%%   <<"messageForwardingEnabled">> => [boolean()],
%%   <<"showMasterRecoveryKey">> => [boolean()],
%%   <<"enableNotificationPreview">> => [boolean()],
%%   <<"maxBor">> => [integer()],
%%   <<"shredder">> => shredder_settings(),
%%   <<"enableGuestFederation">> => [boolean()],
%%   <<"atakPackageValues">> => list(string()),
%%   <<"filesEnabled">> => [boolean()]
%% }
-type security_group_settings() :: #{binary() => any()}.

%% Example:
%% get_users_count_request() :: #{}
-type get_users_count_request() :: #{}.


%% Example:
%% update_security_group_request() :: #{
%%   <<"name">> => string(),
%%   <<"securityGroupSettings">> => security_group_settings()
%% }
-type update_security_group_request() :: #{binary() => any()}.


%% Example:
%% list_blocked_guest_users_response() :: #{
%%   <<"blocklist">> => list(blocked_guest_user()),
%%   <<"nextToken">> => string()
%% }
-type list_blocked_guest_users_response() :: #{binary() => any()}.


%% Example:
%% oidc_token_info() :: #{
%%   <<"accessToken">> => string(),
%%   <<"codeChallenge">> => string(),
%%   <<"codeVerifier">> => string(),
%%   <<"expiresIn">> => [float()],
%%   <<"idToken">> => string(),
%%   <<"refreshToken">> => string(),
%%   <<"tokenType">> => string()
%% }
-type oidc_token_info() :: #{binary() => any()}.


%% Example:
%% rate_limit_error() :: #{
%%   <<"message">> => string()
%% }
-type rate_limit_error() :: #{binary() => any()}.


%% Example:
%% get_guest_user_history_count_response() :: #{
%%   <<"history">> => list(guest_user_history_count())
%% }
-type get_guest_user_history_count_response() :: #{binary() => any()}.

-type batch_create_user_errors() ::
    rate_limit_error() | 
    internal_server_error() | 
    resource_not_found_error() | 
    validation_error() | 
    bad_request_error() | 
    unauthorized_error() | 
    forbidden_error().

-type batch_delete_user_errors() ::
    rate_limit_error() | 
    internal_server_error() | 
    resource_not_found_error() | 
    validation_error() | 
    bad_request_error() | 
    unauthorized_error() | 
    forbidden_error().

-type batch_lookup_user_uname_errors() ::
    rate_limit_error() | 
    internal_server_error() | 
    resource_not_found_error() | 
    validation_error() | 
    bad_request_error() | 
    unauthorized_error() | 
    forbidden_error().

-type batch_reinvite_user_errors() ::
    rate_limit_error() | 
    internal_server_error() | 
    resource_not_found_error() | 
    validation_error() | 
    bad_request_error() | 
    unauthorized_error() | 
    forbidden_error().

-type batch_reset_devices_for_user_errors() ::
    rate_limit_error() | 
    internal_server_error() | 
    resource_not_found_error() | 
    validation_error() | 
    bad_request_error() | 
    unauthorized_error() | 
    forbidden_error().

-type batch_toggle_user_suspend_status_errors() ::
    rate_limit_error() | 
    internal_server_error() | 
    resource_not_found_error() | 
    validation_error() | 
    bad_request_error() | 
    unauthorized_error() | 
    forbidden_error().

-type create_bot_errors() ::
    rate_limit_error() | 
    internal_server_error() | 
    resource_not_found_error() | 
    validation_error() | 
    bad_request_error() | 
    unauthorized_error() | 
    forbidden_error().

-type create_data_retention_bot_errors() ::
    rate_limit_error() | 
    internal_server_error() | 
    resource_not_found_error() | 
    validation_error() | 
    bad_request_error() | 
    unauthorized_error() | 
    forbidden_error().

-type create_data_retention_bot_challenge_errors() ::
    rate_limit_error() | 
    internal_server_error() | 
    resource_not_found_error() | 
    validation_error() | 
    bad_request_error() | 
    unauthorized_error() | 
    forbidden_error().

-type create_network_errors() ::
    rate_limit_error() | 
    internal_server_error() | 
    resource_not_found_error() | 
    validation_error() | 
    bad_request_error() | 
    unauthorized_error() | 
    forbidden_error().

-type create_security_group_errors() ::
    rate_limit_error() | 
    internal_server_error() | 
    resource_not_found_error() | 
    validation_error() | 
    bad_request_error() | 
    unauthorized_error() | 
    forbidden_error().

-type delete_bot_errors() ::
    rate_limit_error() | 
    internal_server_error() | 
    resource_not_found_error() | 
    validation_error() | 
    bad_request_error() | 
    unauthorized_error() | 
    forbidden_error().

-type delete_data_retention_bot_errors() ::
    rate_limit_error() | 
    internal_server_error() | 
    resource_not_found_error() | 
    validation_error() | 
    bad_request_error() | 
    unauthorized_error() | 
    forbidden_error().

-type delete_network_errors() ::
    rate_limit_error() | 
    internal_server_error() | 
    resource_not_found_error() | 
    validation_error() | 
    bad_request_error() | 
    unauthorized_error() | 
    forbidden_error().

-type delete_security_group_errors() ::
    rate_limit_error() | 
    internal_server_error() | 
    resource_not_found_error() | 
    validation_error() | 
    bad_request_error() | 
    unauthorized_error() | 
    forbidden_error().

-type get_bot_errors() ::
    rate_limit_error() | 
    internal_server_error() | 
    resource_not_found_error() | 
    validation_error() | 
    bad_request_error() | 
    unauthorized_error() | 
    forbidden_error().

-type get_bots_count_errors() ::
    rate_limit_error() | 
    internal_server_error() | 
    resource_not_found_error() | 
    validation_error() | 
    bad_request_error() | 
    unauthorized_error() | 
    forbidden_error().

-type get_data_retention_bot_errors() ::
    rate_limit_error() | 
    internal_server_error() | 
    resource_not_found_error() | 
    validation_error() | 
    bad_request_error() | 
    unauthorized_error() | 
    forbidden_error().

-type get_guest_user_history_count_errors() ::
    rate_limit_error() | 
    internal_server_error() | 
    resource_not_found_error() | 
    validation_error() | 
    bad_request_error() | 
    unauthorized_error() | 
    forbidden_error().

-type get_network_errors() ::
    rate_limit_error() | 
    internal_server_error() | 
    resource_not_found_error() | 
    validation_error() | 
    bad_request_error() | 
    unauthorized_error() | 
    forbidden_error().

-type get_network_settings_errors() ::
    rate_limit_error() | 
    internal_server_error() | 
    resource_not_found_error() | 
    validation_error() | 
    bad_request_error() | 
    unauthorized_error() | 
    forbidden_error().

-type get_oidc_info_errors() ::
    rate_limit_error() | 
    internal_server_error() | 
    resource_not_found_error() | 
    validation_error() | 
    bad_request_error() | 
    unauthorized_error() | 
    forbidden_error().

-type get_security_group_errors() ::
    rate_limit_error() | 
    internal_server_error() | 
    resource_not_found_error() | 
    validation_error() | 
    bad_request_error() | 
    unauthorized_error() | 
    forbidden_error().

-type get_user_errors() ::
    rate_limit_error() | 
    internal_server_error() | 
    resource_not_found_error() | 
    validation_error() | 
    bad_request_error() | 
    unauthorized_error() | 
    forbidden_error().

-type get_users_count_errors() ::
    rate_limit_error() | 
    internal_server_error() | 
    resource_not_found_error() | 
    validation_error() | 
    bad_request_error() | 
    unauthorized_error() | 
    forbidden_error().

-type list_blocked_guest_users_errors() ::
    rate_limit_error() | 
    internal_server_error() | 
    resource_not_found_error() | 
    validation_error() | 
    bad_request_error() | 
    unauthorized_error() | 
    forbidden_error().

-type list_bots_errors() ::
    rate_limit_error() | 
    internal_server_error() | 
    resource_not_found_error() | 
    validation_error() | 
    bad_request_error() | 
    unauthorized_error() | 
    forbidden_error().

-type list_devices_for_user_errors() ::
    rate_limit_error() | 
    internal_server_error() | 
    resource_not_found_error() | 
    validation_error() | 
    bad_request_error() | 
    unauthorized_error() | 
    forbidden_error().

-type list_guest_users_errors() ::
    rate_limit_error() | 
    internal_server_error() | 
    resource_not_found_error() | 
    validation_error() | 
    bad_request_error() | 
    unauthorized_error() | 
    forbidden_error().

-type list_networks_errors() ::
    rate_limit_error() | 
    internal_server_error() | 
    validation_error() | 
    bad_request_error() | 
    unauthorized_error() | 
    forbidden_error().

-type list_security_group_users_errors() ::
    rate_limit_error() | 
    internal_server_error() | 
    resource_not_found_error() | 
    validation_error() | 
    bad_request_error() | 
    unauthorized_error() | 
    forbidden_error().

-type list_security_groups_errors() ::
    rate_limit_error() | 
    internal_server_error() | 
    resource_not_found_error() | 
    validation_error() | 
    bad_request_error() | 
    unauthorized_error() | 
    forbidden_error().

-type list_users_errors() ::
    rate_limit_error() | 
    internal_server_error() | 
    resource_not_found_error() | 
    validation_error() | 
    bad_request_error() | 
    unauthorized_error() | 
    forbidden_error().

-type register_oidc_config_errors() ::
    rate_limit_error() | 
    internal_server_error() | 
    resource_not_found_error() | 
    validation_error() | 
    bad_request_error() | 
    unauthorized_error() | 
    forbidden_error().

-type register_oidc_config_test_errors() ::
    rate_limit_error() | 
    internal_server_error() | 
    resource_not_found_error() | 
    validation_error() | 
    bad_request_error() | 
    unauthorized_error() | 
    forbidden_error().

-type update_bot_errors() ::
    rate_limit_error() | 
    internal_server_error() | 
    resource_not_found_error() | 
    validation_error() | 
    bad_request_error() | 
    unauthorized_error() | 
    forbidden_error().

-type update_data_retention_errors() ::
    rate_limit_error() | 
    internal_server_error() | 
    resource_not_found_error() | 
    validation_error() | 
    bad_request_error() | 
    unauthorized_error() | 
    forbidden_error().

-type update_guest_user_errors() ::
    rate_limit_error() | 
    internal_server_error() | 
    resource_not_found_error() | 
    validation_error() | 
    bad_request_error() | 
    unauthorized_error() | 
    forbidden_error().

-type update_network_errors() ::
    rate_limit_error() | 
    internal_server_error() | 
    resource_not_found_error() | 
    validation_error() | 
    bad_request_error() | 
    unauthorized_error() | 
    forbidden_error().

-type update_network_settings_errors() ::
    rate_limit_error() | 
    internal_server_error() | 
    resource_not_found_error() | 
    validation_error() | 
    bad_request_error() | 
    unauthorized_error() | 
    forbidden_error().

-type update_security_group_errors() ::
    rate_limit_error() | 
    internal_server_error() | 
    resource_not_found_error() | 
    validation_error() | 
    bad_request_error() | 
    unauthorized_error() | 
    forbidden_error().

-type update_user_errors() ::
    rate_limit_error() | 
    internal_server_error() | 
    resource_not_found_error() | 
    validation_error() | 
    bad_request_error() | 
    unauthorized_error() | 
    forbidden_error().

%%====================================================================
%% API
%%====================================================================

%% @doc Creates multiple users in a specified Wickr network.
%%
%% This operation allows you to provision multiple user accounts
%% simultaneously, optionally specifying security groups, and validation
%% requirements for each user.
%%
%% `codeValidation', `inviteCode', and `inviteCodeTtl' are
%% restricted to networks under preview only.
-spec batch_create_user(aws_client:aws_client(), binary() | list(), batch_create_user_request()) ->
    {ok, batch_create_user_response(), tuple()} |
    {error, any()} |
    {error, batch_create_user_errors(), tuple()}.
batch_create_user(Client, NetworkId, Input) ->
    batch_create_user(Client, NetworkId, Input, []).

-spec batch_create_user(aws_client:aws_client(), binary() | list(), batch_create_user_request(), proplists:proplist()) ->
    {ok, batch_create_user_response(), tuple()} |
    {error, any()} |
    {error, batch_create_user_errors(), tuple()}.
batch_create_user(Client, NetworkId, Input0, Options0) ->
    Method = post,
    Path = ["/networks/", aws_util:encode_uri(NetworkId), "/users"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Client-Token">>, <<"clientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes multiple users from a specified Wickr network.
%%
%% This operation permanently removes user accounts and their associated data
%% from the network.
-spec batch_delete_user(aws_client:aws_client(), binary() | list(), batch_delete_user_request()) ->
    {ok, batch_delete_user_response(), tuple()} |
    {error, any()} |
    {error, batch_delete_user_errors(), tuple()}.
batch_delete_user(Client, NetworkId, Input) ->
    batch_delete_user(Client, NetworkId, Input, []).

-spec batch_delete_user(aws_client:aws_client(), binary() | list(), batch_delete_user_request(), proplists:proplist()) ->
    {ok, batch_delete_user_response(), tuple()} |
    {error, any()} |
    {error, batch_delete_user_errors(), tuple()}.
batch_delete_user(Client, NetworkId, Input0, Options0) ->
    Method = post,
    Path = ["/networks/", aws_util:encode_uri(NetworkId), "/users/batch-delete"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Client-Token">>, <<"clientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Looks up multiple user usernames from their unique username hashes
%% (unames).
%%
%% This operation allows you to retrieve the email addresses associated with
%% a list of username hashes.
-spec batch_lookup_user_uname(aws_client:aws_client(), binary() | list(), batch_lookup_user_uname_request()) ->
    {ok, batch_lookup_user_uname_response(), tuple()} |
    {error, any()} |
    {error, batch_lookup_user_uname_errors(), tuple()}.
batch_lookup_user_uname(Client, NetworkId, Input) ->
    batch_lookup_user_uname(Client, NetworkId, Input, []).

-spec batch_lookup_user_uname(aws_client:aws_client(), binary() | list(), batch_lookup_user_uname_request(), proplists:proplist()) ->
    {ok, batch_lookup_user_uname_response(), tuple()} |
    {error, any()} |
    {error, batch_lookup_user_uname_errors(), tuple()}.
batch_lookup_user_uname(Client, NetworkId, Input0, Options0) ->
    Method = post,
    Path = ["/networks/", aws_util:encode_uri(NetworkId), "/users/uname-lookup"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Client-Token">>, <<"clientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Resends invitation codes to multiple users who have pending
%% invitations in a Wickr network.
%%
%% This operation is useful when users haven't accepted their initial
%% invitations or when invitations have expired.
-spec batch_reinvite_user(aws_client:aws_client(), binary() | list(), batch_reinvite_user_request()) ->
    {ok, batch_reinvite_user_response(), tuple()} |
    {error, any()} |
    {error, batch_reinvite_user_errors(), tuple()}.
batch_reinvite_user(Client, NetworkId, Input) ->
    batch_reinvite_user(Client, NetworkId, Input, []).

-spec batch_reinvite_user(aws_client:aws_client(), binary() | list(), batch_reinvite_user_request(), proplists:proplist()) ->
    {ok, batch_reinvite_user_response(), tuple()} |
    {error, any()} |
    {error, batch_reinvite_user_errors(), tuple()}.
batch_reinvite_user(Client, NetworkId, Input0, Options0) ->
    Method = patch,
    Path = ["/networks/", aws_util:encode_uri(NetworkId), "/users/re-invite"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Client-Token">>, <<"clientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Resets multiple devices for a specific user in a Wickr network.
%%
%% This operation forces the selected devices to log out and requires users
%% to re-authenticate, which is useful for security purposes or when devices
%% need to be revoked.
-spec batch_reset_devices_for_user(aws_client:aws_client(), binary() | list(), binary() | list(), batch_reset_devices_for_user_request()) ->
    {ok, batch_reset_devices_for_user_response(), tuple()} |
    {error, any()} |
    {error, batch_reset_devices_for_user_errors(), tuple()}.
batch_reset_devices_for_user(Client, NetworkId, UserId, Input) ->
    batch_reset_devices_for_user(Client, NetworkId, UserId, Input, []).

-spec batch_reset_devices_for_user(aws_client:aws_client(), binary() | list(), binary() | list(), batch_reset_devices_for_user_request(), proplists:proplist()) ->
    {ok, batch_reset_devices_for_user_response(), tuple()} |
    {error, any()} |
    {error, batch_reset_devices_for_user_errors(), tuple()}.
batch_reset_devices_for_user(Client, NetworkId, UserId, Input0, Options0) ->
    Method = patch,
    Path = ["/networks/", aws_util:encode_uri(NetworkId), "/users/", aws_util:encode_uri(UserId), "/devices"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Client-Token">>, <<"clientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Suspends or unsuspends multiple users in a Wickr network.
%%
%% Suspended users cannot access the network until they are unsuspended. This
%% operation is useful for temporarily restricting access without deleting
%% user accounts.
-spec batch_toggle_user_suspend_status(aws_client:aws_client(), binary() | list(), batch_toggle_user_suspend_status_request()) ->
    {ok, batch_toggle_user_suspend_status_response(), tuple()} |
    {error, any()} |
    {error, batch_toggle_user_suspend_status_errors(), tuple()}.
batch_toggle_user_suspend_status(Client, NetworkId, Input) ->
    batch_toggle_user_suspend_status(Client, NetworkId, Input, []).

-spec batch_toggle_user_suspend_status(aws_client:aws_client(), binary() | list(), batch_toggle_user_suspend_status_request(), proplists:proplist()) ->
    {ok, batch_toggle_user_suspend_status_response(), tuple()} |
    {error, any()} |
    {error, batch_toggle_user_suspend_status_errors(), tuple()}.
batch_toggle_user_suspend_status(Client, NetworkId, Input0, Options0) ->
    Method = patch,
    Path = ["/networks/", aws_util:encode_uri(NetworkId), "/users/toggleSuspend"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Client-Token">>, <<"clientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"suspend">>, <<"suspend">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new bot in a specified Wickr network.
%%
%% Bots are automated accounts that can send and receive messages, enabling
%% integration with external systems and automation of tasks.
-spec create_bot(aws_client:aws_client(), binary() | list(), create_bot_request()) ->
    {ok, create_bot_response(), tuple()} |
    {error, any()} |
    {error, create_bot_errors(), tuple()}.
create_bot(Client, NetworkId, Input) ->
    create_bot(Client, NetworkId, Input, []).

-spec create_bot(aws_client:aws_client(), binary() | list(), create_bot_request(), proplists:proplist()) ->
    {ok, create_bot_response(), tuple()} |
    {error, any()} |
    {error, create_bot_errors(), tuple()}.
create_bot(Client, NetworkId, Input0, Options0) ->
    Method = post,
    Path = ["/networks/", aws_util:encode_uri(NetworkId), "/bots"],
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

%% @doc Creates a data retention bot in a Wickr network.
%%
%% Data retention bots are specialized bots that handle message archiving and
%% compliance by capturing and storing messages for regulatory or
%% organizational requirements.
-spec create_data_retention_bot(aws_client:aws_client(), binary() | list(), create_data_retention_bot_request()) ->
    {ok, create_data_retention_bot_response(), tuple()} |
    {error, any()} |
    {error, create_data_retention_bot_errors(), tuple()}.
create_data_retention_bot(Client, NetworkId, Input) ->
    create_data_retention_bot(Client, NetworkId, Input, []).

-spec create_data_retention_bot(aws_client:aws_client(), binary() | list(), create_data_retention_bot_request(), proplists:proplist()) ->
    {ok, create_data_retention_bot_response(), tuple()} |
    {error, any()} |
    {error, create_data_retention_bot_errors(), tuple()}.
create_data_retention_bot(Client, NetworkId, Input0, Options0) ->
    Method = post,
    Path = ["/networks/", aws_util:encode_uri(NetworkId), "/data-retention-bots"],
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

%% @doc Creates a new challenge password for the data retention bot.
%%
%% This password is used for authentication when the bot connects to the
%% network.
-spec create_data_retention_bot_challenge(aws_client:aws_client(), binary() | list(), create_data_retention_bot_challenge_request()) ->
    {ok, create_data_retention_bot_challenge_response(), tuple()} |
    {error, any()} |
    {error, create_data_retention_bot_challenge_errors(), tuple()}.
create_data_retention_bot_challenge(Client, NetworkId, Input) ->
    create_data_retention_bot_challenge(Client, NetworkId, Input, []).

-spec create_data_retention_bot_challenge(aws_client:aws_client(), binary() | list(), create_data_retention_bot_challenge_request(), proplists:proplist()) ->
    {ok, create_data_retention_bot_challenge_response(), tuple()} |
    {error, any()} |
    {error, create_data_retention_bot_challenge_errors(), tuple()}.
create_data_retention_bot_challenge(Client, NetworkId, Input0, Options0) ->
    Method = post,
    Path = ["/networks/", aws_util:encode_uri(NetworkId), "/data-retention-bots/challenge"],
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

%% @doc Creates a new Wickr network with specified access level and
%% configuration.
%%
%% This operation provisions a new communication network for your
%% organization.
-spec create_network(aws_client:aws_client(), create_network_request()) ->
    {ok, create_network_response(), tuple()} |
    {error, any()} |
    {error, create_network_errors(), tuple()}.
create_network(Client, Input) ->
    create_network(Client, Input, []).

-spec create_network(aws_client:aws_client(), create_network_request(), proplists:proplist()) ->
    {ok, create_network_response(), tuple()} |
    {error, any()} |
    {error, create_network_errors(), tuple()}.
create_network(Client, Input0, Options0) ->
    Method = post,
    Path = ["/networks"],
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

%% @doc Creates a new security group in a Wickr network.
%%
%% Security groups allow you to organize users and control their permissions,
%% features, and security settings.
-spec create_security_group(aws_client:aws_client(), binary() | list(), create_security_group_request()) ->
    {ok, create_security_group_response(), tuple()} |
    {error, any()} |
    {error, create_security_group_errors(), tuple()}.
create_security_group(Client, NetworkId, Input) ->
    create_security_group(Client, NetworkId, Input, []).

-spec create_security_group(aws_client:aws_client(), binary() | list(), create_security_group_request(), proplists:proplist()) ->
    {ok, create_security_group_response(), tuple()} |
    {error, any()} |
    {error, create_security_group_errors(), tuple()}.
create_security_group(Client, NetworkId, Input0, Options0) ->
    Method = post,
    Path = ["/networks/", aws_util:encode_uri(NetworkId), "/security-groups"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Client-Token">>, <<"clientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a bot from a specified Wickr network.
%%
%% This operation permanently removes the bot account and its associated data
%% from the network.
-spec delete_bot(aws_client:aws_client(), binary() | list(), binary() | list(), delete_bot_request()) ->
    {ok, delete_bot_response(), tuple()} |
    {error, any()} |
    {error, delete_bot_errors(), tuple()}.
delete_bot(Client, BotId, NetworkId, Input) ->
    delete_bot(Client, BotId, NetworkId, Input, []).

-spec delete_bot(aws_client:aws_client(), binary() | list(), binary() | list(), delete_bot_request(), proplists:proplist()) ->
    {ok, delete_bot_response(), tuple()} |
    {error, any()} |
    {error, delete_bot_errors(), tuple()}.
delete_bot(Client, BotId, NetworkId, Input0, Options0) ->
    Method = delete,
    Path = ["/networks/", aws_util:encode_uri(NetworkId), "/bots/", aws_util:encode_uri(BotId), ""],
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

%% @doc Deletes the data retention bot from a Wickr network.
%%
%% This operation permanently removes the bot and all its associated data
%% from the database.
-spec delete_data_retention_bot(aws_client:aws_client(), binary() | list(), delete_data_retention_bot_request()) ->
    {ok, delete_data_retention_bot_response(), tuple()} |
    {error, any()} |
    {error, delete_data_retention_bot_errors(), tuple()}.
delete_data_retention_bot(Client, NetworkId, Input) ->
    delete_data_retention_bot(Client, NetworkId, Input, []).

-spec delete_data_retention_bot(aws_client:aws_client(), binary() | list(), delete_data_retention_bot_request(), proplists:proplist()) ->
    {ok, delete_data_retention_bot_response(), tuple()} |
    {error, any()} |
    {error, delete_data_retention_bot_errors(), tuple()}.
delete_data_retention_bot(Client, NetworkId, Input0, Options0) ->
    Method = delete,
    Path = ["/networks/", aws_util:encode_uri(NetworkId), "/data-retention-bots"],
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

%% @doc Deletes a Wickr network and all its associated resources, including
%% users, bots, security groups, and settings.
%%
%% This operation is permanent and cannot be undone.
-spec delete_network(aws_client:aws_client(), binary() | list(), delete_network_request()) ->
    {ok, delete_network_response(), tuple()} |
    {error, any()} |
    {error, delete_network_errors(), tuple()}.
delete_network(Client, NetworkId, Input) ->
    delete_network(Client, NetworkId, Input, []).

-spec delete_network(aws_client:aws_client(), binary() | list(), delete_network_request(), proplists:proplist()) ->
    {ok, delete_network_response(), tuple()} |
    {error, any()} |
    {error, delete_network_errors(), tuple()}.
delete_network(Client, NetworkId, Input0, Options0) ->
    Method = delete,
    Path = ["/networks/", aws_util:encode_uri(NetworkId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Client-Token">>, <<"clientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a security group from a Wickr network.
%%
%% This operation cannot be performed on the default security group.
-spec delete_security_group(aws_client:aws_client(), binary() | list(), binary() | list(), delete_security_group_request()) ->
    {ok, delete_security_group_response(), tuple()} |
    {error, any()} |
    {error, delete_security_group_errors(), tuple()}.
delete_security_group(Client, GroupId, NetworkId, Input) ->
    delete_security_group(Client, GroupId, NetworkId, Input, []).

-spec delete_security_group(aws_client:aws_client(), binary() | list(), binary() | list(), delete_security_group_request(), proplists:proplist()) ->
    {ok, delete_security_group_response(), tuple()} |
    {error, any()} |
    {error, delete_security_group_errors(), tuple()}.
delete_security_group(Client, GroupId, NetworkId, Input0, Options0) ->
    Method = delete,
    Path = ["/networks/", aws_util:encode_uri(NetworkId), "/security-groups/", aws_util:encode_uri(GroupId), ""],
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

%% @doc Retrieves detailed information about a specific bot in a Wickr
%% network, including its status, group membership, and authentication
%% details.
-spec get_bot(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_bot_response(), tuple()} |
    {error, any()} |
    {error, get_bot_errors(), tuple()}.
get_bot(Client, BotId, NetworkId)
  when is_map(Client) ->
    get_bot(Client, BotId, NetworkId, #{}, #{}).

-spec get_bot(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_bot_response(), tuple()} |
    {error, any()} |
    {error, get_bot_errors(), tuple()}.
get_bot(Client, BotId, NetworkId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_bot(Client, BotId, NetworkId, QueryMap, HeadersMap, []).

-spec get_bot(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_bot_response(), tuple()} |
    {error, any()} |
    {error, get_bot_errors(), tuple()}.
get_bot(Client, BotId, NetworkId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/networks/", aws_util:encode_uri(NetworkId), "/bots/", aws_util:encode_uri(BotId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the count of bots in a Wickr network, categorized by their
%% status (pending, active, and total).
-spec get_bots_count(aws_client:aws_client(), binary() | list()) ->
    {ok, get_bots_count_response(), tuple()} |
    {error, any()} |
    {error, get_bots_count_errors(), tuple()}.
get_bots_count(Client, NetworkId)
  when is_map(Client) ->
    get_bots_count(Client, NetworkId, #{}, #{}).

-spec get_bots_count(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_bots_count_response(), tuple()} |
    {error, any()} |
    {error, get_bots_count_errors(), tuple()}.
get_bots_count(Client, NetworkId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_bots_count(Client, NetworkId, QueryMap, HeadersMap, []).

-spec get_bots_count(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_bots_count_response(), tuple()} |
    {error, any()} |
    {error, get_bots_count_errors(), tuple()}.
get_bots_count(Client, NetworkId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/networks/", aws_util:encode_uri(NetworkId), "/bots/count"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the data retention bot in a Wickr
%% network, including its status and whether the data retention service is
%% enabled.
-spec get_data_retention_bot(aws_client:aws_client(), binary() | list()) ->
    {ok, get_data_retention_bot_response(), tuple()} |
    {error, any()} |
    {error, get_data_retention_bot_errors(), tuple()}.
get_data_retention_bot(Client, NetworkId)
  when is_map(Client) ->
    get_data_retention_bot(Client, NetworkId, #{}, #{}).

-spec get_data_retention_bot(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_data_retention_bot_response(), tuple()} |
    {error, any()} |
    {error, get_data_retention_bot_errors(), tuple()}.
get_data_retention_bot(Client, NetworkId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_data_retention_bot(Client, NetworkId, QueryMap, HeadersMap, []).

-spec get_data_retention_bot(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_data_retention_bot_response(), tuple()} |
    {error, any()} |
    {error, get_data_retention_bot_errors(), tuple()}.
get_data_retention_bot(Client, NetworkId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/networks/", aws_util:encode_uri(NetworkId), "/data-retention-bots"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves historical guest user count data for a Wickr network,
%% showing the number of guest users per billing period over the past 90
%% days.
-spec get_guest_user_history_count(aws_client:aws_client(), binary() | list()) ->
    {ok, get_guest_user_history_count_response(), tuple()} |
    {error, any()} |
    {error, get_guest_user_history_count_errors(), tuple()}.
get_guest_user_history_count(Client, NetworkId)
  when is_map(Client) ->
    get_guest_user_history_count(Client, NetworkId, #{}, #{}).

-spec get_guest_user_history_count(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_guest_user_history_count_response(), tuple()} |
    {error, any()} |
    {error, get_guest_user_history_count_errors(), tuple()}.
get_guest_user_history_count(Client, NetworkId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_guest_user_history_count(Client, NetworkId, QueryMap, HeadersMap, []).

-spec get_guest_user_history_count(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_guest_user_history_count_response(), tuple()} |
    {error, any()} |
    {error, get_guest_user_history_count_errors(), tuple()}.
get_guest_user_history_count(Client, NetworkId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/networks/", aws_util:encode_uri(NetworkId), "/guest-users/count"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves detailed information about a specific Wickr network,
%% including its configuration, access level, and status.
-spec get_network(aws_client:aws_client(), binary() | list()) ->
    {ok, get_network_response(), tuple()} |
    {error, any()} |
    {error, get_network_errors(), tuple()}.
get_network(Client, NetworkId)
  when is_map(Client) ->
    get_network(Client, NetworkId, #{}, #{}).

-spec get_network(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_network_response(), tuple()} |
    {error, any()} |
    {error, get_network_errors(), tuple()}.
get_network(Client, NetworkId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_network(Client, NetworkId, QueryMap, HeadersMap, []).

-spec get_network(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_network_response(), tuple()} |
    {error, any()} |
    {error, get_network_errors(), tuple()}.
get_network(Client, NetworkId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/networks/", aws_util:encode_uri(NetworkId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves all network-level settings for a Wickr network, including
%% client metrics, data retention, and other configuration options.
-spec get_network_settings(aws_client:aws_client(), binary() | list()) ->
    {ok, get_network_settings_response(), tuple()} |
    {error, any()} |
    {error, get_network_settings_errors(), tuple()}.
get_network_settings(Client, NetworkId)
  when is_map(Client) ->
    get_network_settings(Client, NetworkId, #{}, #{}).

-spec get_network_settings(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_network_settings_response(), tuple()} |
    {error, any()} |
    {error, get_network_settings_errors(), tuple()}.
get_network_settings(Client, NetworkId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_network_settings(Client, NetworkId, QueryMap, HeadersMap, []).

-spec get_network_settings(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_network_settings_response(), tuple()} |
    {error, any()} |
    {error, get_network_settings_errors(), tuple()}.
get_network_settings(Client, NetworkId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/networks/", aws_util:encode_uri(NetworkId), "/settings"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the OpenID Connect (OIDC) configuration for a Wickr
%% network, including SSO settings and optional token information if access
%% token parameters are provided.
-spec get_oidc_info(aws_client:aws_client(), binary() | list()) ->
    {ok, get_oidc_info_response(), tuple()} |
    {error, any()} |
    {error, get_oidc_info_errors(), tuple()}.
get_oidc_info(Client, NetworkId)
  when is_map(Client) ->
    get_oidc_info(Client, NetworkId, #{}, #{}).

-spec get_oidc_info(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_oidc_info_response(), tuple()} |
    {error, any()} |
    {error, get_oidc_info_errors(), tuple()}.
get_oidc_info(Client, NetworkId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_oidc_info(Client, NetworkId, QueryMap, HeadersMap, []).

-spec get_oidc_info(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_oidc_info_response(), tuple()} |
    {error, any()} |
    {error, get_oidc_info_errors(), tuple()}.
get_oidc_info(Client, NetworkId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/networks/", aws_util:encode_uri(NetworkId), "/oidc"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"certificate">>, maps:get(<<"certificate">>, QueryMap, undefined)},
        {<<"clientId">>, maps:get(<<"clientId">>, QueryMap, undefined)},
        {<<"clientSecret">>, maps:get(<<"clientSecret">>, QueryMap, undefined)},
        {<<"code">>, maps:get(<<"code">>, QueryMap, undefined)},
        {<<"codeVerifier">>, maps:get(<<"codeVerifier">>, QueryMap, undefined)},
        {<<"grantType">>, maps:get(<<"grantType">>, QueryMap, undefined)},
        {<<"redirectUri">>, maps:get(<<"redirectUri">>, QueryMap, undefined)},
        {<<"url">>, maps:get(<<"url">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves detailed information about a specific security group in a
%% Wickr network, including its settings, member counts, and configuration.
-spec get_security_group(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_security_group_response(), tuple()} |
    {error, any()} |
    {error, get_security_group_errors(), tuple()}.
get_security_group(Client, GroupId, NetworkId)
  when is_map(Client) ->
    get_security_group(Client, GroupId, NetworkId, #{}, #{}).

-spec get_security_group(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_security_group_response(), tuple()} |
    {error, any()} |
    {error, get_security_group_errors(), tuple()}.
get_security_group(Client, GroupId, NetworkId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_security_group(Client, GroupId, NetworkId, QueryMap, HeadersMap, []).

-spec get_security_group(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_security_group_response(), tuple()} |
    {error, any()} |
    {error, get_security_group_errors(), tuple()}.
get_security_group(Client, GroupId, NetworkId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/networks/", aws_util:encode_uri(NetworkId), "/security-groups/", aws_util:encode_uri(GroupId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves detailed information about a specific user in a Wickr
%% network, including their profile, status, and activity history.
-spec get_user(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_user_response(), tuple()} |
    {error, any()} |
    {error, get_user_errors(), tuple()}.
get_user(Client, NetworkId, UserId)
  when is_map(Client) ->
    get_user(Client, NetworkId, UserId, #{}, #{}).

-spec get_user(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_user_response(), tuple()} |
    {error, any()} |
    {error, get_user_errors(), tuple()}.
get_user(Client, NetworkId, UserId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_user(Client, NetworkId, UserId, QueryMap, HeadersMap, []).

-spec get_user(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_user_response(), tuple()} |
    {error, any()} |
    {error, get_user_errors(), tuple()}.
get_user(Client, NetworkId, UserId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/networks/", aws_util:encode_uri(NetworkId), "/users/", aws_util:encode_uri(UserId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"endTime">>, maps:get(<<"endTime">>, QueryMap, undefined)},
        {<<"startTime">>, maps:get(<<"startTime">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the count of users in a Wickr network, categorized by their
%% status (pending, active, rejected) and showing how many users can still be
%% added.
-spec get_users_count(aws_client:aws_client(), binary() | list()) ->
    {ok, get_users_count_response(), tuple()} |
    {error, any()} |
    {error, get_users_count_errors(), tuple()}.
get_users_count(Client, NetworkId)
  when is_map(Client) ->
    get_users_count(Client, NetworkId, #{}, #{}).

-spec get_users_count(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_users_count_response(), tuple()} |
    {error, any()} |
    {error, get_users_count_errors(), tuple()}.
get_users_count(Client, NetworkId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_users_count(Client, NetworkId, QueryMap, HeadersMap, []).

-spec get_users_count(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_users_count_response(), tuple()} |
    {error, any()} |
    {error, get_users_count_errors(), tuple()}.
get_users_count(Client, NetworkId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/networks/", aws_util:encode_uri(NetworkId), "/users/count"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a paginated list of guest users who have been blocked from
%% a Wickr network.
%%
%% You can filter and sort the results.
-spec list_blocked_guest_users(aws_client:aws_client(), binary() | list()) ->
    {ok, list_blocked_guest_users_response(), tuple()} |
    {error, any()} |
    {error, list_blocked_guest_users_errors(), tuple()}.
list_blocked_guest_users(Client, NetworkId)
  when is_map(Client) ->
    list_blocked_guest_users(Client, NetworkId, #{}, #{}).

-spec list_blocked_guest_users(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_blocked_guest_users_response(), tuple()} |
    {error, any()} |
    {error, list_blocked_guest_users_errors(), tuple()}.
list_blocked_guest_users(Client, NetworkId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_blocked_guest_users(Client, NetworkId, QueryMap, HeadersMap, []).

-spec list_blocked_guest_users(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_blocked_guest_users_response(), tuple()} |
    {error, any()} |
    {error, list_blocked_guest_users_errors(), tuple()}.
list_blocked_guest_users(Client, NetworkId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/networks/", aws_util:encode_uri(NetworkId), "/guest-users/blocklist"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"admin">>, maps:get(<<"admin">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"sortDirection">>, maps:get(<<"sortDirection">>, QueryMap, undefined)},
        {<<"sortFields">>, maps:get(<<"sortFields">>, QueryMap, undefined)},
        {<<"username">>, maps:get(<<"username">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a paginated list of bots in a specified Wickr network.
%%
%% You can filter and sort the results based on various criteria.
-spec list_bots(aws_client:aws_client(), binary() | list()) ->
    {ok, list_bots_response(), tuple()} |
    {error, any()} |
    {error, list_bots_errors(), tuple()}.
list_bots(Client, NetworkId)
  when is_map(Client) ->
    list_bots(Client, NetworkId, #{}, #{}).

-spec list_bots(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_bots_response(), tuple()} |
    {error, any()} |
    {error, list_bots_errors(), tuple()}.
list_bots(Client, NetworkId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_bots(Client, NetworkId, QueryMap, HeadersMap, []).

-spec list_bots(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_bots_response(), tuple()} |
    {error, any()} |
    {error, list_bots_errors(), tuple()}.
list_bots(Client, NetworkId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/networks/", aws_util:encode_uri(NetworkId), "/bots"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"displayName">>, maps:get(<<"displayName">>, QueryMap, undefined)},
        {<<"groupId">>, maps:get(<<"groupId">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"sortDirection">>, maps:get(<<"sortDirection">>, QueryMap, undefined)},
        {<<"sortFields">>, maps:get(<<"sortFields">>, QueryMap, undefined)},
        {<<"status">>, maps:get(<<"status">>, QueryMap, undefined)},
        {<<"username">>, maps:get(<<"username">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a paginated list of devices associated with a specific user
%% in a Wickr network.
%%
%% This operation returns information about all devices where the user has
%% logged into Wickr.
-spec list_devices_for_user(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_devices_for_user_response(), tuple()} |
    {error, any()} |
    {error, list_devices_for_user_errors(), tuple()}.
list_devices_for_user(Client, NetworkId, UserId)
  when is_map(Client) ->
    list_devices_for_user(Client, NetworkId, UserId, #{}, #{}).

-spec list_devices_for_user(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_devices_for_user_response(), tuple()} |
    {error, any()} |
    {error, list_devices_for_user_errors(), tuple()}.
list_devices_for_user(Client, NetworkId, UserId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_devices_for_user(Client, NetworkId, UserId, QueryMap, HeadersMap, []).

-spec list_devices_for_user(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_devices_for_user_response(), tuple()} |
    {error, any()} |
    {error, list_devices_for_user_errors(), tuple()}.
list_devices_for_user(Client, NetworkId, UserId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/networks/", aws_util:encode_uri(NetworkId), "/users/", aws_util:encode_uri(UserId), "/devices"],
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
        {<<"sortDirection">>, maps:get(<<"sortDirection">>, QueryMap, undefined)},
        {<<"sortFields">>, maps:get(<<"sortFields">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a paginated list of guest users who have communicated with
%% your Wickr network.
%%
%% Guest users are external users from federated networks who can communicate
%% with network members.
-spec list_guest_users(aws_client:aws_client(), binary() | list()) ->
    {ok, list_guest_users_response(), tuple()} |
    {error, any()} |
    {error, list_guest_users_errors(), tuple()}.
list_guest_users(Client, NetworkId)
  when is_map(Client) ->
    list_guest_users(Client, NetworkId, #{}, #{}).

-spec list_guest_users(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_guest_users_response(), tuple()} |
    {error, any()} |
    {error, list_guest_users_errors(), tuple()}.
list_guest_users(Client, NetworkId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_guest_users(Client, NetworkId, QueryMap, HeadersMap, []).

-spec list_guest_users(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_guest_users_response(), tuple()} |
    {error, any()} |
    {error, list_guest_users_errors(), tuple()}.
list_guest_users(Client, NetworkId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/networks/", aws_util:encode_uri(NetworkId), "/guest-users"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"billingPeriod">>, maps:get(<<"billingPeriod">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"sortDirection">>, maps:get(<<"sortDirection">>, QueryMap, undefined)},
        {<<"sortFields">>, maps:get(<<"sortFields">>, QueryMap, undefined)},
        {<<"username">>, maps:get(<<"username">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a paginated list of all Wickr networks associated with your
%% Amazon Web Services account.
%%
%% You can sort the results by network ID or name.
-spec list_networks(aws_client:aws_client()) ->
    {ok, list_networks_response(), tuple()} |
    {error, any()} |
    {error, list_networks_errors(), tuple()}.
list_networks(Client)
  when is_map(Client) ->
    list_networks(Client, #{}, #{}).

-spec list_networks(aws_client:aws_client(), map(), map()) ->
    {ok, list_networks_response(), tuple()} |
    {error, any()} |
    {error, list_networks_errors(), tuple()}.
list_networks(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_networks(Client, QueryMap, HeadersMap, []).

-spec list_networks(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_networks_response(), tuple()} |
    {error, any()} |
    {error, list_networks_errors(), tuple()}.
list_networks(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/networks"],
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
        {<<"sortDirection">>, maps:get(<<"sortDirection">>, QueryMap, undefined)},
        {<<"sortFields">>, maps:get(<<"sortFields">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a paginated list of users who belong to a specific security
%% group in a Wickr network.
-spec list_security_group_users(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_security_group_users_response(), tuple()} |
    {error, any()} |
    {error, list_security_group_users_errors(), tuple()}.
list_security_group_users(Client, GroupId, NetworkId)
  when is_map(Client) ->
    list_security_group_users(Client, GroupId, NetworkId, #{}, #{}).

-spec list_security_group_users(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_security_group_users_response(), tuple()} |
    {error, any()} |
    {error, list_security_group_users_errors(), tuple()}.
list_security_group_users(Client, GroupId, NetworkId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_security_group_users(Client, GroupId, NetworkId, QueryMap, HeadersMap, []).

-spec list_security_group_users(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_security_group_users_response(), tuple()} |
    {error, any()} |
    {error, list_security_group_users_errors(), tuple()}.
list_security_group_users(Client, GroupId, NetworkId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/networks/", aws_util:encode_uri(NetworkId), "/security-groups/", aws_util:encode_uri(GroupId), "/users"],
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
        {<<"sortDirection">>, maps:get(<<"sortDirection">>, QueryMap, undefined)},
        {<<"sortFields">>, maps:get(<<"sortFields">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a paginated list of security groups in a specified Wickr
%% network.
%%
%% You can sort the results by various criteria.
-spec list_security_groups(aws_client:aws_client(), binary() | list()) ->
    {ok, list_security_groups_response(), tuple()} |
    {error, any()} |
    {error, list_security_groups_errors(), tuple()}.
list_security_groups(Client, NetworkId)
  when is_map(Client) ->
    list_security_groups(Client, NetworkId, #{}, #{}).

-spec list_security_groups(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_security_groups_response(), tuple()} |
    {error, any()} |
    {error, list_security_groups_errors(), tuple()}.
list_security_groups(Client, NetworkId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_security_groups(Client, NetworkId, QueryMap, HeadersMap, []).

-spec list_security_groups(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_security_groups_response(), tuple()} |
    {error, any()} |
    {error, list_security_groups_errors(), tuple()}.
list_security_groups(Client, NetworkId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/networks/", aws_util:encode_uri(NetworkId), "/security-groups"],
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
        {<<"sortDirection">>, maps:get(<<"sortDirection">>, QueryMap, undefined)},
        {<<"sortFields">>, maps:get(<<"sortFields">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a paginated list of users in a specified Wickr network.
%%
%% You can filter and sort the results based on various criteria such as
%% name, status, or security group membership.
-spec list_users(aws_client:aws_client(), binary() | list()) ->
    {ok, list_users_response(), tuple()} |
    {error, any()} |
    {error, list_users_errors(), tuple()}.
list_users(Client, NetworkId)
  when is_map(Client) ->
    list_users(Client, NetworkId, #{}, #{}).

-spec list_users(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_users_response(), tuple()} |
    {error, any()} |
    {error, list_users_errors(), tuple()}.
list_users(Client, NetworkId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_users(Client, NetworkId, QueryMap, HeadersMap, []).

-spec list_users(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_users_response(), tuple()} |
    {error, any()} |
    {error, list_users_errors(), tuple()}.
list_users(Client, NetworkId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/networks/", aws_util:encode_uri(NetworkId), "/users"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"firstName">>, maps:get(<<"firstName">>, QueryMap, undefined)},
        {<<"groupId">>, maps:get(<<"groupId">>, QueryMap, undefined)},
        {<<"lastName">>, maps:get(<<"lastName">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"sortDirection">>, maps:get(<<"sortDirection">>, QueryMap, undefined)},
        {<<"sortFields">>, maps:get(<<"sortFields">>, QueryMap, undefined)},
        {<<"status">>, maps:get(<<"status">>, QueryMap, undefined)},
        {<<"username">>, maps:get(<<"username">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Registers and saves an OpenID Connect (OIDC) configuration for a
%% Wickr network, enabling Single Sign-On (SSO) authentication through an
%% identity provider.
-spec register_oidc_config(aws_client:aws_client(), binary() | list(), register_oidc_config_request()) ->
    {ok, register_oidc_config_response(), tuple()} |
    {error, any()} |
    {error, register_oidc_config_errors(), tuple()}.
register_oidc_config(Client, NetworkId, Input) ->
    register_oidc_config(Client, NetworkId, Input, []).

-spec register_oidc_config(aws_client:aws_client(), binary() | list(), register_oidc_config_request(), proplists:proplist()) ->
    {ok, register_oidc_config_response(), tuple()} |
    {error, any()} |
    {error, register_oidc_config_errors(), tuple()}.
register_oidc_config(Client, NetworkId, Input0, Options0) ->
    Method = post,
    Path = ["/networks/", aws_util:encode_uri(NetworkId), "/oidc/save"],
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

%% @doc Tests an OpenID Connect (OIDC) configuration for a Wickr network by
%% validating the connection to the identity provider and retrieving its
%% supported capabilities.
-spec register_oidc_config_test(aws_client:aws_client(), binary() | list(), register_oidc_config_test_request()) ->
    {ok, register_oidc_config_test_response(), tuple()} |
    {error, any()} |
    {error, register_oidc_config_test_errors(), tuple()}.
register_oidc_config_test(Client, NetworkId, Input) ->
    register_oidc_config_test(Client, NetworkId, Input, []).

-spec register_oidc_config_test(aws_client:aws_client(), binary() | list(), register_oidc_config_test_request(), proplists:proplist()) ->
    {ok, register_oidc_config_test_response(), tuple()} |
    {error, any()} |
    {error, register_oidc_config_test_errors(), tuple()}.
register_oidc_config_test(Client, NetworkId, Input0, Options0) ->
    Method = post,
    Path = ["/networks/", aws_util:encode_uri(NetworkId), "/oidc/test"],
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

%% @doc Updates the properties of an existing bot in a Wickr network.
%%
%% This operation allows you to modify the bot's display name, security
%% group, password, or suspension status.
-spec update_bot(aws_client:aws_client(), binary() | list(), binary() | list(), update_bot_request()) ->
    {ok, update_bot_response(), tuple()} |
    {error, any()} |
    {error, update_bot_errors(), tuple()}.
update_bot(Client, BotId, NetworkId, Input) ->
    update_bot(Client, BotId, NetworkId, Input, []).

-spec update_bot(aws_client:aws_client(), binary() | list(), binary() | list(), update_bot_request(), proplists:proplist()) ->
    {ok, update_bot_response(), tuple()} |
    {error, any()} |
    {error, update_bot_errors(), tuple()}.
update_bot(Client, BotId, NetworkId, Input0, Options0) ->
    Method = patch,
    Path = ["/networks/", aws_util:encode_uri(NetworkId), "/bots/", aws_util:encode_uri(BotId), ""],
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

%% @doc Updates the data retention bot settings, allowing you to enable or
%% disable the data retention service, or acknowledge the public key message.
-spec update_data_retention(aws_client:aws_client(), binary() | list(), update_data_retention_request()) ->
    {ok, update_data_retention_response(), tuple()} |
    {error, any()} |
    {error, update_data_retention_errors(), tuple()}.
update_data_retention(Client, NetworkId, Input) ->
    update_data_retention(Client, NetworkId, Input, []).

-spec update_data_retention(aws_client:aws_client(), binary() | list(), update_data_retention_request(), proplists:proplist()) ->
    {ok, update_data_retention_response(), tuple()} |
    {error, any()} |
    {error, update_data_retention_errors(), tuple()}.
update_data_retention(Client, NetworkId, Input0, Options0) ->
    Method = patch,
    Path = ["/networks/", aws_util:encode_uri(NetworkId), "/data-retention-bots"],
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

%% @doc Updates the block status of a guest user in a Wickr network.
%%
%% This operation allows you to block or unblock a guest user from accessing
%% the network.
-spec update_guest_user(aws_client:aws_client(), binary() | list(), binary() | list(), update_guest_user_request()) ->
    {ok, update_guest_user_response(), tuple()} |
    {error, any()} |
    {error, update_guest_user_errors(), tuple()}.
update_guest_user(Client, NetworkId, UsernameHash, Input) ->
    update_guest_user(Client, NetworkId, UsernameHash, Input, []).

-spec update_guest_user(aws_client:aws_client(), binary() | list(), binary() | list(), update_guest_user_request(), proplists:proplist()) ->
    {ok, update_guest_user_response(), tuple()} |
    {error, any()} |
    {error, update_guest_user_errors(), tuple()}.
update_guest_user(Client, NetworkId, UsernameHash, Input0, Options0) ->
    Method = patch,
    Path = ["/networks/", aws_util:encode_uri(NetworkId), "/guest-users/", aws_util:encode_uri(UsernameHash), ""],
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

%% @doc Updates the properties of an existing Wickr network, such as its name
%% or encryption key configuration.
-spec update_network(aws_client:aws_client(), binary() | list(), update_network_request()) ->
    {ok, update_network_response(), tuple()} |
    {error, any()} |
    {error, update_network_errors(), tuple()}.
update_network(Client, NetworkId, Input) ->
    update_network(Client, NetworkId, Input, []).

-spec update_network(aws_client:aws_client(), binary() | list(), update_network_request(), proplists:proplist()) ->
    {ok, update_network_response(), tuple()} |
    {error, any()} |
    {error, update_network_errors(), tuple()}.
update_network(Client, NetworkId, Input0, Options0) ->
    Method = patch,
    Path = ["/networks/", aws_util:encode_uri(NetworkId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Client-Token">>, <<"clientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates network-level settings for a Wickr network.
%%
%% You can modify settings such as client metrics, data retention, and other
%% network-wide options.
-spec update_network_settings(aws_client:aws_client(), binary() | list(), update_network_settings_request()) ->
    {ok, update_network_settings_response(), tuple()} |
    {error, any()} |
    {error, update_network_settings_errors(), tuple()}.
update_network_settings(Client, NetworkId, Input) ->
    update_network_settings(Client, NetworkId, Input, []).

-spec update_network_settings(aws_client:aws_client(), binary() | list(), update_network_settings_request(), proplists:proplist()) ->
    {ok, update_network_settings_response(), tuple()} |
    {error, any()} |
    {error, update_network_settings_errors(), tuple()}.
update_network_settings(Client, NetworkId, Input0, Options0) ->
    Method = patch,
    Path = ["/networks/", aws_util:encode_uri(NetworkId), "/settings"],
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

%% @doc Updates the properties of an existing security group in a Wickr
%% network, such as its name or settings.
-spec update_security_group(aws_client:aws_client(), binary() | list(), binary() | list(), update_security_group_request()) ->
    {ok, update_security_group_response(), tuple()} |
    {error, any()} |
    {error, update_security_group_errors(), tuple()}.
update_security_group(Client, GroupId, NetworkId, Input) ->
    update_security_group(Client, GroupId, NetworkId, Input, []).

-spec update_security_group(aws_client:aws_client(), binary() | list(), binary() | list(), update_security_group_request(), proplists:proplist()) ->
    {ok, update_security_group_response(), tuple()} |
    {error, any()} |
    {error, update_security_group_errors(), tuple()}.
update_security_group(Client, GroupId, NetworkId, Input0, Options0) ->
    Method = patch,
    Path = ["/networks/", aws_util:encode_uri(NetworkId), "/security-groups/", aws_util:encode_uri(GroupId), ""],
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

%% @doc Updates the properties of an existing user in a Wickr network.
%%
%% This operation allows you to modify the user's name, password,
%% security group membership, and invite code settings.
%%
%% `codeValidation', `inviteCode', and `inviteCodeTtl' are
%% restricted to networks under preview only.
-spec update_user(aws_client:aws_client(), binary() | list(), update_user_request()) ->
    {ok, update_user_response(), tuple()} |
    {error, any()} |
    {error, update_user_errors(), tuple()}.
update_user(Client, NetworkId, Input) ->
    update_user(Client, NetworkId, Input, []).

-spec update_user(aws_client:aws_client(), binary() | list(), update_user_request(), proplists:proplist()) ->
    {ok, update_user_response(), tuple()} |
    {error, any()} |
    {error, update_user_errors(), tuple()}.
update_user(Client, NetworkId, Input0, Options0) ->
    Method = patch,
    Path = ["/networks/", aws_util:encode_uri(NetworkId), "/users"],
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
    Client1 = Client#{service => <<"wickr">>},
    Host = build_host(<<"admin.wickr">>, Client1),
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
