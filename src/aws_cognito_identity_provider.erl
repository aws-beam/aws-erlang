%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc With the Amazon Cognito user pools API, you can configure user pools
%% and authenticate users.
%%
%% To authenticate users from third-party identity providers (IdPs) in this
%% API, you can link IdP users to native user profiles:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-identity-federation-consolidate-users.html.
%% Learn more about the authentication and authorization of federated users
%% at Adding user pool sign-in through a third party:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-identity-federation.html
%% and in the User pool federation endpoints and hosted UI reference:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-userpools-server-contract-reference.html.
%%
%% This API reference provides detailed information about API operations and
%% object types in Amazon Cognito.
%%
%% Along with resource management operations, the Amazon Cognito user pools
%% API includes classes of operations and authorization models for
%% client-side and server-side authentication of users. You can interact with
%% operations in the Amazon Cognito user pools API as any of the following
%% subjects.
%%
%% <ol> <li> An administrator who wants to configure user pools, app clients,
%% users, groups, or other user pool functions.
%%
%% </li> <li> A server-side app, like a web application, that wants to use
%% its Amazon Web Services privileges to manage, authenticate, or authorize a
%% user.
%%
%% </li> <li> A client-side app, like a mobile app, that wants to make
%% unauthenticated requests to manage, authenticate, or authorize a user.
%%
%% </li> </ol> For more information, see Using the Amazon Cognito user pools
%% API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
%% in the Amazon Cognito Developer Guide.
%%
%% With your Amazon Web Services SDK, you can build the logic to support
%% operational flows in every use case for this API. You can also make direct
%% REST API requests to Amazon Cognito user pools service endpoints:
%% https://docs.aws.amazon.com/general/latest/gr/cognito_identity.html#cognito_identity_your_user_pools_region.
%% The following links can get you started with the
%% `CognitoIdentityProvider' client in other supported Amazon Web
%% Services SDKs.
%%
%% <ul> <li> Amazon Web Services Command Line Interface:
%% https://docs.aws.amazon.com/cli/latest/reference/cognito-idp/index.html#cli-aws-cognito-idp
%%
%% </li> <li> Amazon Web Services SDK for .NET:
%% https://docs.aws.amazon.com/sdkfornet/v3/apidocs/items/CognitoIdentityProvider/TCognitoIdentityProviderClient.html
%%
%% </li> <li> Amazon Web Services SDK for C++:
%% https://sdk.amazonaws.com/cpp/api/LATEST/aws-cpp-sdk-cognito-idp/html/class_aws_1_1_cognito_identity_provider_1_1_cognito_identity_provider_client.html
%%
%% </li> <li> Amazon Web Services SDK for Go:
%% https://docs.aws.amazon.com/sdk-for-go/api/service/cognitoidentityprovider/#CognitoIdentityProvider
%%
%% </li> <li> Amazon Web Services SDK for Java V2:
%% https://sdk.amazonaws.com/java/api/latest/software/amazon/awssdk/services/cognitoidentityprovider/CognitoIdentityProviderClient.html
%%
%% </li> <li> Amazon Web Services SDK for JavaScript:
%% https://docs.aws.amazon.com/AWSJavaScriptSDK/latest/AWS/CognitoIdentityServiceProvider.html
%%
%% </li> <li> Amazon Web Services SDK for PHP V3:
%% https://docs.aws.amazon.com/aws-sdk-php/v3/api/api-cognito-idp-2016-04-18.html
%%
%% </li> <li> Amazon Web Services SDK for Python:
%% https://boto3.amazonaws.com/v1/documentation/api/latest/reference/services/cognito-idp.html
%%
%% </li> <li> Amazon Web Services SDK for Ruby V3:
%% https://docs.aws.amazon.com/sdk-for-ruby/v3/api/Aws/CognitoIdentityProvider/Client.html
%%
%% </li> </ul> To get started with an Amazon Web Services SDK, see Tools to
%% Build on Amazon Web Services: http://aws.amazon.com/developer/tools/. For
%% example actions and scenarios, see Code examples for Amazon Cognito
%% Identity Provider using Amazon Web Services SDKs:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/service_code_examples_cognito-identity-provider.html.
-module(aws_cognito_identity_provider).

-export([add_custom_attributes/2,
         add_custom_attributes/3,
         admin_add_user_to_group/2,
         admin_add_user_to_group/3,
         admin_confirm_sign_up/2,
         admin_confirm_sign_up/3,
         admin_create_user/2,
         admin_create_user/3,
         admin_delete_user/2,
         admin_delete_user/3,
         admin_delete_user_attributes/2,
         admin_delete_user_attributes/3,
         admin_disable_provider_for_user/2,
         admin_disable_provider_for_user/3,
         admin_disable_user/2,
         admin_disable_user/3,
         admin_enable_user/2,
         admin_enable_user/3,
         admin_forget_device/2,
         admin_forget_device/3,
         admin_get_device/2,
         admin_get_device/3,
         admin_get_user/2,
         admin_get_user/3,
         admin_initiate_auth/2,
         admin_initiate_auth/3,
         admin_link_provider_for_user/2,
         admin_link_provider_for_user/3,
         admin_list_devices/2,
         admin_list_devices/3,
         admin_list_groups_for_user/2,
         admin_list_groups_for_user/3,
         admin_list_user_auth_events/2,
         admin_list_user_auth_events/3,
         admin_remove_user_from_group/2,
         admin_remove_user_from_group/3,
         admin_reset_user_password/2,
         admin_reset_user_password/3,
         admin_respond_to_auth_challenge/2,
         admin_respond_to_auth_challenge/3,
         admin_set_user_mfa_preference/2,
         admin_set_user_mfa_preference/3,
         admin_set_user_password/2,
         admin_set_user_password/3,
         admin_set_user_settings/2,
         admin_set_user_settings/3,
         admin_update_auth_event_feedback/2,
         admin_update_auth_event_feedback/3,
         admin_update_device_status/2,
         admin_update_device_status/3,
         admin_update_user_attributes/2,
         admin_update_user_attributes/3,
         admin_user_global_sign_out/2,
         admin_user_global_sign_out/3,
         associate_software_token/2,
         associate_software_token/3,
         change_password/2,
         change_password/3,
         confirm_device/2,
         confirm_device/3,
         confirm_forgot_password/2,
         confirm_forgot_password/3,
         confirm_sign_up/2,
         confirm_sign_up/3,
         create_group/2,
         create_group/3,
         create_identity_provider/2,
         create_identity_provider/3,
         create_resource_server/2,
         create_resource_server/3,
         create_user_import_job/2,
         create_user_import_job/3,
         create_user_pool/2,
         create_user_pool/3,
         create_user_pool_client/2,
         create_user_pool_client/3,
         create_user_pool_domain/2,
         create_user_pool_domain/3,
         delete_group/2,
         delete_group/3,
         delete_identity_provider/2,
         delete_identity_provider/3,
         delete_resource_server/2,
         delete_resource_server/3,
         delete_user/2,
         delete_user/3,
         delete_user_attributes/2,
         delete_user_attributes/3,
         delete_user_pool/2,
         delete_user_pool/3,
         delete_user_pool_client/2,
         delete_user_pool_client/3,
         delete_user_pool_domain/2,
         delete_user_pool_domain/3,
         describe_identity_provider/2,
         describe_identity_provider/3,
         describe_resource_server/2,
         describe_resource_server/3,
         describe_risk_configuration/2,
         describe_risk_configuration/3,
         describe_user_import_job/2,
         describe_user_import_job/3,
         describe_user_pool/2,
         describe_user_pool/3,
         describe_user_pool_client/2,
         describe_user_pool_client/3,
         describe_user_pool_domain/2,
         describe_user_pool_domain/3,
         forget_device/2,
         forget_device/3,
         forgot_password/2,
         forgot_password/3,
         get_csv_header/2,
         get_csv_header/3,
         get_device/2,
         get_device/3,
         get_group/2,
         get_group/3,
         get_identity_provider_by_identifier/2,
         get_identity_provider_by_identifier/3,
         get_log_delivery_configuration/2,
         get_log_delivery_configuration/3,
         get_signing_certificate/2,
         get_signing_certificate/3,
         get_ui_customization/2,
         get_ui_customization/3,
         get_user/2,
         get_user/3,
         get_user_attribute_verification_code/2,
         get_user_attribute_verification_code/3,
         get_user_pool_mfa_config/2,
         get_user_pool_mfa_config/3,
         global_sign_out/2,
         global_sign_out/3,
         initiate_auth/2,
         initiate_auth/3,
         list_devices/2,
         list_devices/3,
         list_groups/2,
         list_groups/3,
         list_identity_providers/2,
         list_identity_providers/3,
         list_resource_servers/2,
         list_resource_servers/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         list_user_import_jobs/2,
         list_user_import_jobs/3,
         list_user_pool_clients/2,
         list_user_pool_clients/3,
         list_user_pools/2,
         list_user_pools/3,
         list_users/2,
         list_users/3,
         list_users_in_group/2,
         list_users_in_group/3,
         resend_confirmation_code/2,
         resend_confirmation_code/3,
         respond_to_auth_challenge/2,
         respond_to_auth_challenge/3,
         revoke_token/2,
         revoke_token/3,
         set_log_delivery_configuration/2,
         set_log_delivery_configuration/3,
         set_risk_configuration/2,
         set_risk_configuration/3,
         set_ui_customization/2,
         set_ui_customization/3,
         set_user_mfa_preference/2,
         set_user_mfa_preference/3,
         set_user_pool_mfa_config/2,
         set_user_pool_mfa_config/3,
         set_user_settings/2,
         set_user_settings/3,
         sign_up/2,
         sign_up/3,
         start_user_import_job/2,
         start_user_import_job/3,
         stop_user_import_job/2,
         stop_user_import_job/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_auth_event_feedback/2,
         update_auth_event_feedback/3,
         update_device_status/2,
         update_device_status/3,
         update_group/2,
         update_group/3,
         update_identity_provider/2,
         update_identity_provider/3,
         update_resource_server/2,
         update_resource_server/3,
         update_user_attributes/2,
         update_user_attributes/3,
         update_user_pool/2,
         update_user_pool/3,
         update_user_pool_client/2,
         update_user_pool_client/3,
         update_user_pool_domain/2,
         update_user_pool_domain/3,
         verify_software_token/2,
         verify_software_token/3,
         verify_user_attribute/2,
         verify_user_attribute/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Adds additional user attributes to the user pool schema.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For this operation, you must use IAM
%% credentials to authorize requests, and you must grant yourself the
%% corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
add_custom_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_custom_attributes(Client, Input, []).
add_custom_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddCustomAttributes">>, Input, Options).

%% @doc Adds a user to a group.
%%
%% A user who is in a group can present a preferred-role claim to an identity
%% pool, and populates a `cognito:groups' claim to their access and
%% identity tokens.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For this operation, you must use IAM
%% credentials to authorize requests, and you must grant yourself the
%% corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
admin_add_user_to_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    admin_add_user_to_group(Client, Input, []).
admin_add_user_to_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AdminAddUserToGroup">>, Input, Options).

%% @doc This IAM-authenticated API operation provides a code that Amazon
%% Cognito sent to your user when they signed up in your user pool.
%%
%% After your user enters their code, they confirm ownership of the email
%% address or phone number that they provided, and their user account becomes
%% active. Depending on your user pool configuration, your users will receive
%% their confirmation code in an email or SMS message.
%%
%% Local users who signed up in your user pool are the only type of user who
%% can confirm sign-up with a code. Users who federate through an external
%% identity provider (IdP) have already been confirmed by their IdP.
%% Administrator-created users confirm their accounts when they respond to
%% their invitation email message and choose a password.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For this operation, you must use IAM
%% credentials to authorize requests, and you must grant yourself the
%% corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
admin_confirm_sign_up(Client, Input)
  when is_map(Client), is_map(Input) ->
    admin_confirm_sign_up(Client, Input, []).
admin_confirm_sign_up(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AdminConfirmSignUp">>, Input, Options).

%% @doc Creates a new user in the specified user pool.
%%
%% If `MessageAction' isn't set, the default is to send a welcome
%% message via email or phone (SMS).
%%
%% This action might generate an SMS text message. Starting June 1, 2021, US
%% telecom carriers require you to register an origination phone number
%% before you can send SMS messages to US phone numbers. If you use SMS text
%% messages in Amazon Cognito, you must register a phone number with Amazon
%% Pinpoint: https://console.aws.amazon.com/pinpoint/home/. Amazon Cognito
%% uses the registered number automatically. Otherwise, Amazon Cognito users
%% who must receive SMS messages might not be able to sign up, activate their
%% accounts, or sign in.
%%
%% If you have never used SMS text messages with Amazon Cognito or any other
%% Amazon Web Service, Amazon Simple Notification Service might place your
%% account in the SMS sandbox. In sandbox mode:
%% https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html , you can
%% send messages only to verified phone numbers. After you test your app
%% while in the sandbox environment, you can move out of the sandbox and into
%% production. For more information, see SMS message settings for Amazon
%% Cognito user pools:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html
%% in the Amazon Cognito Developer Guide.
%%
%% This message is based on a template that you configured in your call to
%% create or update a user pool. This template includes your custom sign-up
%% instructions and placeholders for user name and temporary password.
%%
%% Alternatively, you can call `AdminCreateUser' with `SUPPRESS' for
%% the `MessageAction' parameter, and Amazon Cognito won't send any
%% email.
%%
%% In either case, the user will be in the `FORCE_CHANGE_PASSWORD' state
%% until they sign in and change their password.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For this operation, you must use IAM
%% credentials to authorize requests, and you must grant yourself the
%% corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
admin_create_user(Client, Input)
  when is_map(Client), is_map(Input) ->
    admin_create_user(Client, Input, []).
admin_create_user(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AdminCreateUser">>, Input, Options).

%% @doc Deletes a user as an administrator.
%%
%% Works on any user.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For this operation, you must use IAM
%% credentials to authorize requests, and you must grant yourself the
%% corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
admin_delete_user(Client, Input)
  when is_map(Client), is_map(Input) ->
    admin_delete_user(Client, Input, []).
admin_delete_user(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AdminDeleteUser">>, Input, Options).

%% @doc Deletes the user attributes in a user pool as an administrator.
%%
%% Works on any user.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For this operation, you must use IAM
%% credentials to authorize requests, and you must grant yourself the
%% corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
admin_delete_user_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    admin_delete_user_attributes(Client, Input, []).
admin_delete_user_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AdminDeleteUserAttributes">>, Input, Options).

%% @doc Prevents the user from signing in with the specified external (SAML
%% or social) identity provider (IdP).
%%
%% If the user that you want to deactivate is a Amazon Cognito user pools
%% native username + password user, they can't use their password to sign
%% in. If the user to deactivate is a linked external IdP user, any link
%% between that user and an existing user is removed. When the external user
%% signs in again, and the user is no longer attached to the previously
%% linked `DestinationUser', the user must create a new user account. See
%% AdminLinkProviderForUser:
%% https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_AdminLinkProviderForUser.html.
%%
%% The `ProviderName' must match the value specified when creating an IdP
%% for the pool.
%%
%% To deactivate a native username + password user, the `ProviderName'
%% value must be `Cognito' and the `ProviderAttributeName' must be
%% `Cognito_Subject'. The `ProviderAttributeValue' must be the name
%% that is used in the user pool for the user.
%%
%% The `ProviderAttributeName' must always be `Cognito_Subject' for
%% social IdPs. The `ProviderAttributeValue' must always be the exact
%% subject that was used when the user was originally linked as a source
%% user.
%%
%% For de-linking a SAML identity, there are two scenarios. If the linked
%% identity has not yet been used to sign in, the `ProviderAttributeName'
%% and `ProviderAttributeValue' must be the same values that were used
%% for the `SourceUser' when the identities were originally linked using
%% ` AdminLinkProviderForUser' call. (If the linking was done with
%% `ProviderAttributeName' set to `Cognito_Subject', the same applies
%% here). However, if the user has already signed in, the
%% `ProviderAttributeName' must be `Cognito_Subject' and
%% `ProviderAttributeValue' must be the subject of the SAML assertion.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For this operation, you must use IAM
%% credentials to authorize requests, and you must grant yourself the
%% corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
admin_disable_provider_for_user(Client, Input)
  when is_map(Client), is_map(Input) ->
    admin_disable_provider_for_user(Client, Input, []).
admin_disable_provider_for_user(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AdminDisableProviderForUser">>, Input, Options).

%% @doc Deactivates a user and revokes all access tokens for the user.
%%
%% A deactivated user can't sign in, but still appears in the responses
%% to `GetUser' and `ListUsers' API requests.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For this operation, you must use IAM
%% credentials to authorize requests, and you must grant yourself the
%% corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
admin_disable_user(Client, Input)
  when is_map(Client), is_map(Input) ->
    admin_disable_user(Client, Input, []).
admin_disable_user(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AdminDisableUser">>, Input, Options).

%% @doc Enables the specified user as an administrator.
%%
%% Works on any user.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For this operation, you must use IAM
%% credentials to authorize requests, and you must grant yourself the
%% corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
admin_enable_user(Client, Input)
  when is_map(Client), is_map(Input) ->
    admin_enable_user(Client, Input, []).
admin_enable_user(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AdminEnableUser">>, Input, Options).

%% @doc Forgets the device, as an administrator.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For this operation, you must use IAM
%% credentials to authorize requests, and you must grant yourself the
%% corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
admin_forget_device(Client, Input)
  when is_map(Client), is_map(Input) ->
    admin_forget_device(Client, Input, []).
admin_forget_device(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AdminForgetDevice">>, Input, Options).

%% @doc Gets the device, as an administrator.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For this operation, you must use IAM
%% credentials to authorize requests, and you must grant yourself the
%% corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
admin_get_device(Client, Input)
  when is_map(Client), is_map(Input) ->
    admin_get_device(Client, Input, []).
admin_get_device(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AdminGetDevice">>, Input, Options).

%% @doc Gets the specified user by user name in a user pool as an
%% administrator.
%%
%% Works on any user.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For this operation, you must use IAM
%% credentials to authorize requests, and you must grant yourself the
%% corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
admin_get_user(Client, Input)
  when is_map(Client), is_map(Input) ->
    admin_get_user(Client, Input, []).
admin_get_user(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AdminGetUser">>, Input, Options).

%% @doc Initiates the authentication flow, as an administrator.
%%
%% This action might generate an SMS text message. Starting June 1, 2021, US
%% telecom carriers require you to register an origination phone number
%% before you can send SMS messages to US phone numbers. If you use SMS text
%% messages in Amazon Cognito, you must register a phone number with Amazon
%% Pinpoint: https://console.aws.amazon.com/pinpoint/home/. Amazon Cognito
%% uses the registered number automatically. Otherwise, Amazon Cognito users
%% who must receive SMS messages might not be able to sign up, activate their
%% accounts, or sign in.
%%
%% If you have never used SMS text messages with Amazon Cognito or any other
%% Amazon Web Service, Amazon Simple Notification Service might place your
%% account in the SMS sandbox. In sandbox mode:
%% https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html , you can
%% send messages only to verified phone numbers. After you test your app
%% while in the sandbox environment, you can move out of the sandbox and into
%% production. For more information, see SMS message settings for Amazon
%% Cognito user pools:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html
%% in the Amazon Cognito Developer Guide.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For this operation, you must use IAM
%% credentials to authorize requests, and you must grant yourself the
%% corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
admin_initiate_auth(Client, Input)
  when is_map(Client), is_map(Input) ->
    admin_initiate_auth(Client, Input, []).
admin_initiate_auth(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AdminInitiateAuth">>, Input, Options).

%% @doc Links an existing user account in a user pool (`DestinationUser')
%% to an identity from an external IdP (`SourceUser') based on a
%% specified attribute name and value from the external IdP.
%%
%% This allows you to create a link from the existing user account to an
%% external federated user identity that has not yet been used to sign in.
%% You can then use the federated user identity to sign in as the existing
%% user account.
%%
%% For example, if there is an existing user with a username and password,
%% this API links that user to a federated user identity. When the user signs
%% in with a federated user identity, they sign in as the existing user
%% account.
%%
%% The maximum number of federated identities linked to a user is five.
%%
%% Because this API allows a user with an external federated identity to sign
%% in as an existing user in the user pool, it is critical that it only be
%% used with external IdPs and provider attributes that have been trusted by
%% the application owner.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For this operation, you must use IAM
%% credentials to authorize requests, and you must grant yourself the
%% corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
admin_link_provider_for_user(Client, Input)
  when is_map(Client), is_map(Input) ->
    admin_link_provider_for_user(Client, Input, []).
admin_link_provider_for_user(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AdminLinkProviderForUser">>, Input, Options).

%% @doc Lists devices, as an administrator.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For this operation, you must use IAM
%% credentials to authorize requests, and you must grant yourself the
%% corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
admin_list_devices(Client, Input)
  when is_map(Client), is_map(Input) ->
    admin_list_devices(Client, Input, []).
admin_list_devices(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AdminListDevices">>, Input, Options).

%% @doc Lists the groups that a user belongs to.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For this operation, you must use IAM
%% credentials to authorize requests, and you must grant yourself the
%% corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
admin_list_groups_for_user(Client, Input)
  when is_map(Client), is_map(Input) ->
    admin_list_groups_for_user(Client, Input, []).
admin_list_groups_for_user(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AdminListGroupsForUser">>, Input, Options).

%% @doc A history of user activity and any risks detected as part of Amazon
%% Cognito advanced security.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For this operation, you must use IAM
%% credentials to authorize requests, and you must grant yourself the
%% corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
admin_list_user_auth_events(Client, Input)
  when is_map(Client), is_map(Input) ->
    admin_list_user_auth_events(Client, Input, []).
admin_list_user_auth_events(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AdminListUserAuthEvents">>, Input, Options).

%% @doc Removes the specified user from the specified group.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For this operation, you must use IAM
%% credentials to authorize requests, and you must grant yourself the
%% corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
admin_remove_user_from_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    admin_remove_user_from_group(Client, Input, []).
admin_remove_user_from_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AdminRemoveUserFromGroup">>, Input, Options).

%% @doc Resets the specified user's password in a user pool as an
%% administrator.
%%
%% Works on any user.
%%
%% To use this API operation, your user pool must have self-service account
%% recovery configured. Use AdminSetUserPassword:
%% https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_AdminSetUserPassword.html
%% if you manage passwords as an administrator.
%%
%% This action might generate an SMS text message. Starting June 1, 2021, US
%% telecom carriers require you to register an origination phone number
%% before you can send SMS messages to US phone numbers. If you use SMS text
%% messages in Amazon Cognito, you must register a phone number with Amazon
%% Pinpoint: https://console.aws.amazon.com/pinpoint/home/. Amazon Cognito
%% uses the registered number automatically. Otherwise, Amazon Cognito users
%% who must receive SMS messages might not be able to sign up, activate their
%% accounts, or sign in.
%%
%% If you have never used SMS text messages with Amazon Cognito or any other
%% Amazon Web Service, Amazon Simple Notification Service might place your
%% account in the SMS sandbox. In sandbox mode:
%% https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html , you can
%% send messages only to verified phone numbers. After you test your app
%% while in the sandbox environment, you can move out of the sandbox and into
%% production. For more information, see SMS message settings for Amazon
%% Cognito user pools:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html
%% in the Amazon Cognito Developer Guide.
%%
%% Deactivates a user's password, requiring them to change it. If a user
%% tries to sign in after the API is called, Amazon Cognito responds with a
%% `PasswordResetRequiredException' error. Your app must then perform the
%% actions that reset your user's password: the forgot-password flow. In
%% addition, if the user pool has phone verification selected and a verified
%% phone number exists for the user, or if email verification is selected and
%% a verified email exists for the user, calling this API will also result in
%% sending a message to the end user with the code to change their password.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For this operation, you must use IAM
%% credentials to authorize requests, and you must grant yourself the
%% corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
admin_reset_user_password(Client, Input)
  when is_map(Client), is_map(Input) ->
    admin_reset_user_password(Client, Input, []).
admin_reset_user_password(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AdminResetUserPassword">>, Input, Options).

%% @doc Some API operations in a user pool generate a challenge, like a
%% prompt for an MFA code, for device authentication that bypasses MFA, or
%% for a custom authentication challenge.
%%
%% An `AdminRespondToAuthChallenge' API request provides the answer to
%% that challenge, like a code or a secure remote password (SRP). The
%% parameters of a response to an authentication challenge vary with the type
%% of challenge.
%%
%% For more information about custom authentication challenges, see Custom
%% authentication challenge Lambda triggers:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-lambda-challenge.html.
%%
%% This action might generate an SMS text message. Starting June 1, 2021, US
%% telecom carriers require you to register an origination phone number
%% before you can send SMS messages to US phone numbers. If you use SMS text
%% messages in Amazon Cognito, you must register a phone number with Amazon
%% Pinpoint: https://console.aws.amazon.com/pinpoint/home/. Amazon Cognito
%% uses the registered number automatically. Otherwise, Amazon Cognito users
%% who must receive SMS messages might not be able to sign up, activate their
%% accounts, or sign in.
%%
%% If you have never used SMS text messages with Amazon Cognito or any other
%% Amazon Web Service, Amazon Simple Notification Service might place your
%% account in the SMS sandbox. In sandbox mode:
%% https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html , you can
%% send messages only to verified phone numbers. After you test your app
%% while in the sandbox environment, you can move out of the sandbox and into
%% production. For more information, see SMS message settings for Amazon
%% Cognito user pools:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html
%% in the Amazon Cognito Developer Guide.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For this operation, you must use IAM
%% credentials to authorize requests, and you must grant yourself the
%% corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
admin_respond_to_auth_challenge(Client, Input)
  when is_map(Client), is_map(Input) ->
    admin_respond_to_auth_challenge(Client, Input, []).
admin_respond_to_auth_challenge(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AdminRespondToAuthChallenge">>, Input, Options).

%% @doc The user's multi-factor authentication (MFA) preference,
%% including which MFA options are activated, and if any are preferred.
%%
%% Only one factor can be set as preferred. The preferred MFA factor will be
%% used to authenticate a user if multiple factors are activated. If multiple
%% options are activated and no preference is set, a challenge to choose an
%% MFA option will be returned during sign-in.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For this operation, you must use IAM
%% credentials to authorize requests, and you must grant yourself the
%% corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
admin_set_user_mfa_preference(Client, Input)
  when is_map(Client), is_map(Input) ->
    admin_set_user_mfa_preference(Client, Input, []).
admin_set_user_mfa_preference(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AdminSetUserMFAPreference">>, Input, Options).

%% @doc Sets the specified user's password in a user pool as an
%% administrator.
%%
%% Works on any user.
%%
%% The password can be temporary or permanent. If it is temporary, the user
%% status enters the `FORCE_CHANGE_PASSWORD' state. When the user next
%% tries to sign in, the InitiateAuth/AdminInitiateAuth response will contain
%% the `NEW_PASSWORD_REQUIRED' challenge. If the user doesn't sign in
%% before it expires, the user won't be able to sign in, and an
%% administrator must reset their password.
%%
%% Once the user has set a new password, or the password is permanent, the
%% user status is set to `Confirmed'.
%%
%% `AdminSetUserPassword' can set a password for the user profile that
%% Amazon Cognito creates for third-party federated users. When you set a
%% password, the federated user's status changes from
%% `EXTERNAL_PROVIDER' to `CONFIRMED'. A user in this state can sign
%% in as a federated user, and initiate authentication flows in the API like
%% a linked native user. They can also modify their password and attributes
%% in token-authenticated API requests like `ChangePassword' and
%% `UpdateUserAttributes'. As a best security practice and to keep users
%% in sync with your external IdP, don't set passwords on federated user
%% profiles. To set up a federated user for native sign-in with a linked
%% native user, refer to Linking federated users to an existing user profile:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-identity-federation-consolidate-users.html.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For this operation, you must use IAM
%% credentials to authorize requests, and you must grant yourself the
%% corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
admin_set_user_password(Client, Input)
  when is_map(Client), is_map(Input) ->
    admin_set_user_password(Client, Input, []).
admin_set_user_password(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AdminSetUserPassword">>, Input, Options).

%% @doc This action is no longer supported.
%%
%% You can use it to configure only SMS MFA. You can't use it to
%% configure time-based one-time password (TOTP) software token MFA. To
%% configure either type of MFA, use AdminSetUserMFAPreference:
%% https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_AdminSetUserMFAPreference.html
%% instead.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For this operation, you must use IAM
%% credentials to authorize requests, and you must grant yourself the
%% corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
admin_set_user_settings(Client, Input)
  when is_map(Client), is_map(Input) ->
    admin_set_user_settings(Client, Input, []).
admin_set_user_settings(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AdminSetUserSettings">>, Input, Options).

%% @doc Provides feedback for an authentication event indicating if it was
%% from a valid user.
%%
%% This feedback is used for improving the risk evaluation decision for the
%% user pool as part of Amazon Cognito advanced security.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For this operation, you must use IAM
%% credentials to authorize requests, and you must grant yourself the
%% corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
admin_update_auth_event_feedback(Client, Input)
  when is_map(Client), is_map(Input) ->
    admin_update_auth_event_feedback(Client, Input, []).
admin_update_auth_event_feedback(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AdminUpdateAuthEventFeedback">>, Input, Options).

%% @doc Updates the device status as an administrator.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For this operation, you must use IAM
%% credentials to authorize requests, and you must grant yourself the
%% corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
admin_update_device_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    admin_update_device_status(Client, Input, []).
admin_update_device_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AdminUpdateDeviceStatus">>, Input, Options).

%% @doc This action might generate an SMS text message.
%%
%% Starting June 1, 2021, US telecom carriers require you to register an
%% origination phone number before you can send SMS messages to US phone
%% numbers. If you use SMS text messages in Amazon Cognito, you must register
%% a phone number with Amazon Pinpoint:
%% https://console.aws.amazon.com/pinpoint/home/. Amazon Cognito uses the
%% registered number automatically. Otherwise, Amazon Cognito users who must
%% receive SMS messages might not be able to sign up, activate their
%% accounts, or sign in.
%%
%% If you have never used SMS text messages with Amazon Cognito or any other
%% Amazon Web Service, Amazon Simple Notification Service might place your
%% account in the SMS sandbox. In sandbox mode:
%% https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html , you can
%% send messages only to verified phone numbers. After you test your app
%% while in the sandbox environment, you can move out of the sandbox and into
%% production. For more information, see SMS message settings for Amazon
%% Cognito user pools:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html
%% in the Amazon Cognito Developer Guide.
%%
%% Updates the specified user's attributes, including developer
%% attributes, as an administrator. Works on any user. To delete an attribute
%% from your user, submit the attribute in your API request with a blank
%% value.
%%
%% For custom attributes, you must prepend the `custom:' prefix to the
%% attribute name.
%%
%% In addition to updating user attributes, this API can also be used to mark
%% phone and email as verified.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For this operation, you must use IAM
%% credentials to authorize requests, and you must grant yourself the
%% corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
admin_update_user_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    admin_update_user_attributes(Client, Input, []).
admin_update_user_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AdminUpdateUserAttributes">>, Input, Options).

%% @doc Invalidates the identity, access, and refresh tokens that Amazon
%% Cognito issued to a user.
%%
%% Call this operation with your administrative credentials when your user
%% signs out of your app. This results in the following behavior.
%%
%% <ul> <li> Amazon Cognito no longer accepts token-authorized user
%% operations that you authorize with a signed-out user's access tokens.
%% For more information, see Using the Amazon Cognito user pools API and user
%% pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html.
%%
%% Amazon Cognito returns an `Access Token has been revoked' error when
%% your app attempts to authorize a user pools API request with a revoked
%% access token that contains the scope `aws.cognito.signin.user.admin'.
%%
%% </li> <li> Amazon Cognito no longer accepts a signed-out user's ID
%% token in a GetId :
%% https://docs.aws.amazon.com/cognitoidentity/latest/APIReference/API_GetId.html
%% request to an identity pool with `ServerSideTokenCheck' enabled for
%% its user pool IdP configuration in CognitoIdentityProvider:
%% https://docs.aws.amazon.com/cognitoidentity/latest/APIReference/API_CognitoIdentityProvider.html.
%%
%% </li> <li> Amazon Cognito no longer accepts a signed-out user's
%% refresh tokens in refresh requests.
%%
%% </li> </ul> Other requests might be valid until your user's token
%% expires.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For this operation, you must use IAM
%% credentials to authorize requests, and you must grant yourself the
%% corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
admin_user_global_sign_out(Client, Input)
  when is_map(Client), is_map(Input) ->
    admin_user_global_sign_out(Client, Input, []).
admin_user_global_sign_out(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AdminUserGlobalSignOut">>, Input, Options).

%% @doc Begins setup of time-based one-time password (TOTP) multi-factor
%% authentication (MFA) for a user, with a unique private key that Amazon
%% Cognito generates and returns in the API response.
%%
%% You can authorize an `AssociateSoftwareToken' request with either the
%% user's access token, or a session string from a challenge response
%% that you received from Amazon Cognito.
%%
%% Amazon Cognito disassociates an existing software token when you verify
%% the new token in a VerifySoftwareToken:
%% https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_VerifySoftwareToken.html
%% API request. If you don't verify the software token and your user pool
%% doesn't require MFA, the user can then authenticate with user name and
%% password credentials alone. If your user pool requires TOTP MFA, Amazon
%% Cognito generates an `MFA_SETUP' or `SOFTWARE_TOKEN_SETUP'
%% challenge each time your user signs. Complete setup with
%% `AssociateSoftwareToken' and `VerifySoftwareToken'.
%%
%% After you set up software token MFA for your user, Amazon Cognito
%% generates a `SOFTWARE_TOKEN_MFA' challenge when they authenticate.
%% Respond to this challenge with your user's TOTP.
%%
%% Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
%% policies in requests for this API operation. For this operation, you
%% can't use IAM credentials to authorize requests, and you can't
%% grant IAM permissions in policies. For more information about
%% authorization models in Amazon Cognito, see Using the Amazon Cognito user
%% pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html.
associate_software_token(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_software_token(Client, Input, []).
associate_software_token(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateSoftwareToken">>, Input, Options).

%% @doc Changes the password for a specified user in a user pool.
%%
%% Authorize this action with a signed-in user's access token. It must
%% include the scope `aws.cognito.signin.user.admin'.
%%
%% Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
%% policies in requests for this API operation. For this operation, you
%% can't use IAM credentials to authorize requests, and you can't
%% grant IAM permissions in policies. For more information about
%% authorization models in Amazon Cognito, see Using the Amazon Cognito user
%% pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html.
change_password(Client, Input)
  when is_map(Client), is_map(Input) ->
    change_password(Client, Input, []).
change_password(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ChangePassword">>, Input, Options).

%% @doc Confirms tracking of the device.
%%
%% This API call is the call that begins device tracking. For more
%% information about device authentication, see Working with user devices in
%% your user pool:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html.
%%
%% Authorize this action with a signed-in user's access token. It must
%% include the scope `aws.cognito.signin.user.admin'.
%%
%% Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
%% policies in requests for this API operation. For this operation, you
%% can't use IAM credentials to authorize requests, and you can't
%% grant IAM permissions in policies. For more information about
%% authorization models in Amazon Cognito, see Using the Amazon Cognito user
%% pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html.
confirm_device(Client, Input)
  when is_map(Client), is_map(Input) ->
    confirm_device(Client, Input, []).
confirm_device(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ConfirmDevice">>, Input, Options).

%% @doc Allows a user to enter a confirmation code to reset a forgotten
%% password.
%%
%% Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
%% policies in requests for this API operation. For this operation, you
%% can't use IAM credentials to authorize requests, and you can't
%% grant IAM permissions in policies. For more information about
%% authorization models in Amazon Cognito, see Using the Amazon Cognito user
%% pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html.
confirm_forgot_password(Client, Input)
  when is_map(Client), is_map(Input) ->
    confirm_forgot_password(Client, Input, []).
confirm_forgot_password(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ConfirmForgotPassword">>, Input, Options).

%% @doc This public API operation provides a code that Amazon Cognito sent to
%% your user when they signed up in your user pool via the SignUp:
%% https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_SignUp.html
%% API operation.
%%
%% After your user enters their code, they confirm ownership of the email
%% address or phone number that they provided, and their user account becomes
%% active. Depending on your user pool configuration, your users will receive
%% their confirmation code in an email or SMS message.
%%
%% Local users who signed up in your user pool are the only type of user who
%% can confirm sign-up with a code. Users who federate through an external
%% identity provider (IdP) have already been confirmed by their IdP.
%% Administrator-created users, users created with the AdminCreateUser:
%% https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_AdminCreateUser.html
%% API operation, confirm their accounts when they respond to their
%% invitation email message and choose a password. They do not receive a
%% confirmation code. Instead, they receive a temporary password.
%%
%% Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
%% policies in requests for this API operation. For this operation, you
%% can't use IAM credentials to authorize requests, and you can't
%% grant IAM permissions in policies. For more information about
%% authorization models in Amazon Cognito, see Using the Amazon Cognito user
%% pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html.
confirm_sign_up(Client, Input)
  when is_map(Client), is_map(Input) ->
    confirm_sign_up(Client, Input, []).
confirm_sign_up(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ConfirmSignUp">>, Input, Options).

%% @doc Creates a new group in the specified user pool.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For this operation, you must use IAM
%% credentials to authorize requests, and you must grant yourself the
%% corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
create_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_group(Client, Input, []).
create_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateGroup">>, Input, Options).

%% @doc Adds a configuration and trust relationship between a third-party
%% identity provider (IdP) and a user pool.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For this operation, you must use IAM
%% credentials to authorize requests, and you must grant yourself the
%% corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
create_identity_provider(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_identity_provider(Client, Input, []).
create_identity_provider(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateIdentityProvider">>, Input, Options).

%% @doc Creates a new OAuth2.0 resource server and defines custom scopes
%% within it.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For this operation, you must use IAM
%% credentials to authorize requests, and you must grant yourself the
%% corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
create_resource_server(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_resource_server(Client, Input, []).
create_resource_server(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateResourceServer">>, Input, Options).

%% @doc Creates a user import job.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For this operation, you must use IAM
%% credentials to authorize requests, and you must grant yourself the
%% corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
create_user_import_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_user_import_job(Client, Input, []).
create_user_import_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateUserImportJob">>, Input, Options).

%% @doc This action might generate an SMS text message.
%%
%% Starting June 1, 2021, US telecom carriers require you to register an
%% origination phone number before you can send SMS messages to US phone
%% numbers. If you use SMS text messages in Amazon Cognito, you must register
%% a phone number with Amazon Pinpoint:
%% https://console.aws.amazon.com/pinpoint/home/. Amazon Cognito uses the
%% registered number automatically. Otherwise, Amazon Cognito users who must
%% receive SMS messages might not be able to sign up, activate their
%% accounts, or sign in.
%%
%% If you have never used SMS text messages with Amazon Cognito or any other
%% Amazon Web Service, Amazon Simple Notification Service might place your
%% account in the SMS sandbox. In sandbox mode:
%% https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html , you can
%% send messages only to verified phone numbers. After you test your app
%% while in the sandbox environment, you can move out of the sandbox and into
%% production. For more information, see SMS message settings for Amazon
%% Cognito user pools:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html
%% in the Amazon Cognito Developer Guide.
%%
%% Creates a new Amazon Cognito user pool and sets the password policy for
%% the pool.
%%
%% If you don't provide a value for an attribute, Amazon Cognito sets it
%% to its default value.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For this operation, you must use IAM
%% credentials to authorize requests, and you must grant yourself the
%% corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
create_user_pool(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_user_pool(Client, Input, []).
create_user_pool(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateUserPool">>, Input, Options).

%% @doc Creates the user pool client.
%%
%% When you create a new user pool client, token revocation is automatically
%% activated. For more information about revoking tokens, see RevokeToken:
%% https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_RevokeToken.html.
%%
%% If you don't provide a value for an attribute, Amazon Cognito sets it
%% to its default value.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For this operation, you must use IAM
%% credentials to authorize requests, and you must grant yourself the
%% corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
create_user_pool_client(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_user_pool_client(Client, Input, []).
create_user_pool_client(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateUserPoolClient">>, Input, Options).

%% @doc Creates a new domain for a user pool.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For this operation, you must use IAM
%% credentials to authorize requests, and you must grant yourself the
%% corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
create_user_pool_domain(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_user_pool_domain(Client, Input, []).
create_user_pool_domain(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateUserPoolDomain">>, Input, Options).

%% @doc Deletes a group.
%%
%% Calling this action requires developer credentials.
delete_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_group(Client, Input, []).
delete_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteGroup">>, Input, Options).

%% @doc Deletes an IdP for a user pool.
delete_identity_provider(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_identity_provider(Client, Input, []).
delete_identity_provider(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteIdentityProvider">>, Input, Options).

%% @doc Deletes a resource server.
delete_resource_server(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_resource_server(Client, Input, []).
delete_resource_server(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteResourceServer">>, Input, Options).

%% @doc Allows a user to delete their own user profile.
%%
%% Authorize this action with a signed-in user's access token. It must
%% include the scope `aws.cognito.signin.user.admin'.
%%
%% Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
%% policies in requests for this API operation. For this operation, you
%% can't use IAM credentials to authorize requests, and you can't
%% grant IAM permissions in policies. For more information about
%% authorization models in Amazon Cognito, see Using the Amazon Cognito user
%% pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html.
delete_user(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_user(Client, Input, []).
delete_user(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteUser">>, Input, Options).

%% @doc Deletes the attributes for a user.
%%
%% Authorize this action with a signed-in user's access token. It must
%% include the scope `aws.cognito.signin.user.admin'.
%%
%% Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
%% policies in requests for this API operation. For this operation, you
%% can't use IAM credentials to authorize requests, and you can't
%% grant IAM permissions in policies. For more information about
%% authorization models in Amazon Cognito, see Using the Amazon Cognito user
%% pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html.
delete_user_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_user_attributes(Client, Input, []).
delete_user_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteUserAttributes">>, Input, Options).

%% @doc Deletes the specified Amazon Cognito user pool.
delete_user_pool(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_user_pool(Client, Input, []).
delete_user_pool(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteUserPool">>, Input, Options).

%% @doc Allows the developer to delete the user pool client.
delete_user_pool_client(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_user_pool_client(Client, Input, []).
delete_user_pool_client(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteUserPoolClient">>, Input, Options).

%% @doc Deletes a domain for a user pool.
delete_user_pool_domain(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_user_pool_domain(Client, Input, []).
delete_user_pool_domain(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteUserPoolDomain">>, Input, Options).

%% @doc Gets information about a specific IdP.
describe_identity_provider(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_identity_provider(Client, Input, []).
describe_identity_provider(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeIdentityProvider">>, Input, Options).

%% @doc Describes a resource server.
describe_resource_server(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_resource_server(Client, Input, []).
describe_resource_server(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeResourceServer">>, Input, Options).

%% @doc Describes the risk configuration.
describe_risk_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_risk_configuration(Client, Input, []).
describe_risk_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeRiskConfiguration">>, Input, Options).

%% @doc Describes the user import job.
describe_user_import_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_user_import_job(Client, Input, []).
describe_user_import_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeUserImportJob">>, Input, Options).

%% @doc Returns the configuration information and metadata of the specified
%% user pool.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For this operation, you must use IAM
%% credentials to authorize requests, and you must grant yourself the
%% corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
describe_user_pool(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_user_pool(Client, Input, []).
describe_user_pool(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeUserPool">>, Input, Options).

%% @doc Client method for returning the configuration information and
%% metadata of the specified user pool app client.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For this operation, you must use IAM
%% credentials to authorize requests, and you must grant yourself the
%% corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
describe_user_pool_client(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_user_pool_client(Client, Input, []).
describe_user_pool_client(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeUserPoolClient">>, Input, Options).

%% @doc Gets information about a domain.
describe_user_pool_domain(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_user_pool_domain(Client, Input, []).
describe_user_pool_domain(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeUserPoolDomain">>, Input, Options).

%% @doc Forgets the specified device.
%%
%% For more information about device authentication, see Working with user
%% devices in your user pool:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html.
%%
%% Authorize this action with a signed-in user's access token. It must
%% include the scope `aws.cognito.signin.user.admin'.
%%
%% Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
%% policies in requests for this API operation. For this operation, you
%% can't use IAM credentials to authorize requests, and you can't
%% grant IAM permissions in policies. For more information about
%% authorization models in Amazon Cognito, see Using the Amazon Cognito user
%% pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html.
forget_device(Client, Input)
  when is_map(Client), is_map(Input) ->
    forget_device(Client, Input, []).
forget_device(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ForgetDevice">>, Input, Options).

%% @doc Calling this API causes a message to be sent to the end user with a
%% confirmation code that is required to change the user's password.
%%
%% For the `Username' parameter, you can use the username or user alias.
%% The method used to send the confirmation code is sent according to the
%% specified AccountRecoverySetting. For more information, see Recovering
%% User Accounts:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/how-to-recover-a-user-account.html
%% in the Amazon Cognito Developer Guide. To use the confirmation code for
%% resetting the password, call ConfirmForgotPassword:
%% https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_ConfirmForgotPassword.html.
%%
%% If neither a verified phone number nor a verified email exists, this API
%% returns `InvalidParameterException'. If your app client has a client
%% secret and you don't provide a `SECRET_HASH' parameter, this API
%% returns `NotAuthorizedException'.
%%
%% To use this API operation, your user pool must have self-service account
%% recovery configured. Use AdminSetUserPassword:
%% https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_AdminSetUserPassword.html
%% if you manage passwords as an administrator.
%%
%% Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
%% policies in requests for this API operation. For this operation, you
%% can't use IAM credentials to authorize requests, and you can't
%% grant IAM permissions in policies. For more information about
%% authorization models in Amazon Cognito, see Using the Amazon Cognito user
%% pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html.
%%
%% This action might generate an SMS text message. Starting June 1, 2021, US
%% telecom carriers require you to register an origination phone number
%% before you can send SMS messages to US phone numbers. If you use SMS text
%% messages in Amazon Cognito, you must register a phone number with Amazon
%% Pinpoint: https://console.aws.amazon.com/pinpoint/home/. Amazon Cognito
%% uses the registered number automatically. Otherwise, Amazon Cognito users
%% who must receive SMS messages might not be able to sign up, activate their
%% accounts, or sign in.
%%
%% If you have never used SMS text messages with Amazon Cognito or any other
%% Amazon Web Service, Amazon Simple Notification Service might place your
%% account in the SMS sandbox. In sandbox mode:
%% https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html , you can
%% send messages only to verified phone numbers. After you test your app
%% while in the sandbox environment, you can move out of the sandbox and into
%% production. For more information, see SMS message settings for Amazon
%% Cognito user pools:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html
%% in the Amazon Cognito Developer Guide.
forgot_password(Client, Input)
  when is_map(Client), is_map(Input) ->
    forgot_password(Client, Input, []).
forgot_password(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ForgotPassword">>, Input, Options).

%% @doc Gets the header information for the comma-separated value (CSV) file
%% to be used as input for the user import job.
get_csv_header(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_csv_header(Client, Input, []).
get_csv_header(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetCSVHeader">>, Input, Options).

%% @doc Gets the device.
%%
%% For more information about device authentication, see Working with user
%% devices in your user pool:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html.
%%
%% Authorize this action with a signed-in user's access token. It must
%% include the scope `aws.cognito.signin.user.admin'.
%%
%% Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
%% policies in requests for this API operation. For this operation, you
%% can't use IAM credentials to authorize requests, and you can't
%% grant IAM permissions in policies. For more information about
%% authorization models in Amazon Cognito, see Using the Amazon Cognito user
%% pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html.
get_device(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_device(Client, Input, []).
get_device(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDevice">>, Input, Options).

%% @doc Gets a group.
%%
%% Calling this action requires developer credentials.
get_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_group(Client, Input, []).
get_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetGroup">>, Input, Options).

%% @doc Gets the specified IdP.
get_identity_provider_by_identifier(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_identity_provider_by_identifier(Client, Input, []).
get_identity_provider_by_identifier(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetIdentityProviderByIdentifier">>, Input, Options).

%% @doc Gets the detailed activity logging configuration for a user pool.
get_log_delivery_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_log_delivery_configuration(Client, Input, []).
get_log_delivery_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetLogDeliveryConfiguration">>, Input, Options).

%% @doc This method takes a user pool ID, and returns the signing
%% certificate.
%%
%% The issued certificate is valid for 10 years from the date of issue.
%%
%% Amazon Cognito issues and assigns a new signing certificate annually. This
%% process returns a new value in the response to
%% `GetSigningCertificate', but doesn't invalidate the original
%% certificate.
get_signing_certificate(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_signing_certificate(Client, Input, []).
get_signing_certificate(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSigningCertificate">>, Input, Options).

%% @doc Gets the user interface (UI) Customization information for a
%% particular app client's app UI, if any such information exists for the
%% client.
%%
%% If nothing is set for the particular client, but there is an existing pool
%% level customization (the app `clientId' is `ALL'), then that
%% information is returned. If nothing is present, then an empty shape is
%% returned.
get_ui_customization(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_ui_customization(Client, Input, []).
get_ui_customization(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetUICustomization">>, Input, Options).

%% @doc Gets the user attributes and metadata for a user.
%%
%% Authorize this action with a signed-in user's access token. It must
%% include the scope `aws.cognito.signin.user.admin'.
%%
%% Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
%% policies in requests for this API operation. For this operation, you
%% can't use IAM credentials to authorize requests, and you can't
%% grant IAM permissions in policies. For more information about
%% authorization models in Amazon Cognito, see Using the Amazon Cognito user
%% pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html.
get_user(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_user(Client, Input, []).
get_user(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetUser">>, Input, Options).

%% @doc Generates a user attribute verification code for the specified
%% attribute name.
%%
%% Sends a message to a user with a code that they must return in a
%% VerifyUserAttribute request.
%%
%% Authorize this action with a signed-in user's access token. It must
%% include the scope `aws.cognito.signin.user.admin'.
%%
%% Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
%% policies in requests for this API operation. For this operation, you
%% can't use IAM credentials to authorize requests, and you can't
%% grant IAM permissions in policies. For more information about
%% authorization models in Amazon Cognito, see Using the Amazon Cognito user
%% pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html.
%%
%% This action might generate an SMS text message. Starting June 1, 2021, US
%% telecom carriers require you to register an origination phone number
%% before you can send SMS messages to US phone numbers. If you use SMS text
%% messages in Amazon Cognito, you must register a phone number with Amazon
%% Pinpoint: https://console.aws.amazon.com/pinpoint/home/. Amazon Cognito
%% uses the registered number automatically. Otherwise, Amazon Cognito users
%% who must receive SMS messages might not be able to sign up, activate their
%% accounts, or sign in.
%%
%% If you have never used SMS text messages with Amazon Cognito or any other
%% Amazon Web Service, Amazon Simple Notification Service might place your
%% account in the SMS sandbox. In sandbox mode:
%% https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html , you can
%% send messages only to verified phone numbers. After you test your app
%% while in the sandbox environment, you can move out of the sandbox and into
%% production. For more information, see SMS message settings for Amazon
%% Cognito user pools:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html
%% in the Amazon Cognito Developer Guide.
get_user_attribute_verification_code(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_user_attribute_verification_code(Client, Input, []).
get_user_attribute_verification_code(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetUserAttributeVerificationCode">>, Input, Options).

%% @doc Gets the user pool multi-factor authentication (MFA) configuration.
get_user_pool_mfa_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_user_pool_mfa_config(Client, Input, []).
get_user_pool_mfa_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetUserPoolMfaConfig">>, Input, Options).

%% @doc Invalidates the identity, access, and refresh tokens that Amazon
%% Cognito issued to a user.
%%
%% Call this operation when your user signs out of your app. This results in
%% the following behavior.
%%
%% <ul> <li> Amazon Cognito no longer accepts token-authorized user
%% operations that you authorize with a signed-out user's access tokens.
%% For more information, see Using the Amazon Cognito user pools API and user
%% pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html.
%%
%% Amazon Cognito returns an `Access Token has been revoked' error when
%% your app attempts to authorize a user pools API request with a revoked
%% access token that contains the scope `aws.cognito.signin.user.admin'.
%%
%% </li> <li> Amazon Cognito no longer accepts a signed-out user's ID
%% token in a GetId :
%% https://docs.aws.amazon.com/cognitoidentity/latest/APIReference/API_GetId.html
%% request to an identity pool with `ServerSideTokenCheck' enabled for
%% its user pool IdP configuration in CognitoIdentityProvider:
%% https://docs.aws.amazon.com/cognitoidentity/latest/APIReference/API_CognitoIdentityProvider.html.
%%
%% </li> <li> Amazon Cognito no longer accepts a signed-out user's
%% refresh tokens in refresh requests.
%%
%% </li> </ul> Other requests might be valid until your user's token
%% expires.
%%
%% Authorize this action with a signed-in user's access token. It must
%% include the scope `aws.cognito.signin.user.admin'.
%%
%% Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
%% policies in requests for this API operation. For this operation, you
%% can't use IAM credentials to authorize requests, and you can't
%% grant IAM permissions in policies. For more information about
%% authorization models in Amazon Cognito, see Using the Amazon Cognito user
%% pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html.
global_sign_out(Client, Input)
  when is_map(Client), is_map(Input) ->
    global_sign_out(Client, Input, []).
global_sign_out(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GlobalSignOut">>, Input, Options).

%% @doc Initiates sign-in for a user in the Amazon Cognito user directory.
%%
%% You can't sign in a user with a federated IdP with `InitiateAuth'.
%% For more information, see Adding user pool sign-in through a third party:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-identity-federation.html.
%%
%% Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
%% policies in requests for this API operation. For this operation, you
%% can't use IAM credentials to authorize requests, and you can't
%% grant IAM permissions in policies. For more information about
%% authorization models in Amazon Cognito, see Using the Amazon Cognito user
%% pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html.
%%
%% This action might generate an SMS text message. Starting June 1, 2021, US
%% telecom carriers require you to register an origination phone number
%% before you can send SMS messages to US phone numbers. If you use SMS text
%% messages in Amazon Cognito, you must register a phone number with Amazon
%% Pinpoint: https://console.aws.amazon.com/pinpoint/home/. Amazon Cognito
%% uses the registered number automatically. Otherwise, Amazon Cognito users
%% who must receive SMS messages might not be able to sign up, activate their
%% accounts, or sign in.
%%
%% If you have never used SMS text messages with Amazon Cognito or any other
%% Amazon Web Service, Amazon Simple Notification Service might place your
%% account in the SMS sandbox. In sandbox mode:
%% https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html , you can
%% send messages only to verified phone numbers. After you test your app
%% while in the sandbox environment, you can move out of the sandbox and into
%% production. For more information, see SMS message settings for Amazon
%% Cognito user pools:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html
%% in the Amazon Cognito Developer Guide.
initiate_auth(Client, Input)
  when is_map(Client), is_map(Input) ->
    initiate_auth(Client, Input, []).
initiate_auth(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"InitiateAuth">>, Input, Options).

%% @doc Lists the sign-in devices that Amazon Cognito has registered to the
%% current user.
%%
%% For more information about device authentication, see Working with user
%% devices in your user pool:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html.
%%
%% Authorize this action with a signed-in user's access token. It must
%% include the scope `aws.cognito.signin.user.admin'.
%%
%% Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
%% policies in requests for this API operation. For this operation, you
%% can't use IAM credentials to authorize requests, and you can't
%% grant IAM permissions in policies. For more information about
%% authorization models in Amazon Cognito, see Using the Amazon Cognito user
%% pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html.
list_devices(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_devices(Client, Input, []).
list_devices(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDevices">>, Input, Options).

%% @doc Lists the groups associated with a user pool.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For this operation, you must use IAM
%% credentials to authorize requests, and you must grant yourself the
%% corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
list_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_groups(Client, Input, []).
list_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListGroups">>, Input, Options).

%% @doc Lists information about all IdPs for a user pool.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For this operation, you must use IAM
%% credentials to authorize requests, and you must grant yourself the
%% corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
list_identity_providers(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_identity_providers(Client, Input, []).
list_identity_providers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListIdentityProviders">>, Input, Options).

%% @doc Lists the resource servers for a user pool.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For this operation, you must use IAM
%% credentials to authorize requests, and you must grant yourself the
%% corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
list_resource_servers(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_resource_servers(Client, Input, []).
list_resource_servers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListResourceServers">>, Input, Options).

%% @doc Lists the tags that are assigned to an Amazon Cognito user pool.
%%
%% A tag is a label that you can apply to user pools to categorize and manage
%% them in different ways, such as by purpose, owner, environment, or other
%% criteria.
%%
%% You can use this action up to 10 times per second, per account.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Lists user import jobs for a user pool.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For this operation, you must use IAM
%% credentials to authorize requests, and you must grant yourself the
%% corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
list_user_import_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_user_import_jobs(Client, Input, []).
list_user_import_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListUserImportJobs">>, Input, Options).

%% @doc Lists the clients that have been created for the specified user pool.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For this operation, you must use IAM
%% credentials to authorize requests, and you must grant yourself the
%% corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
list_user_pool_clients(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_user_pool_clients(Client, Input, []).
list_user_pool_clients(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListUserPoolClients">>, Input, Options).

%% @doc Lists the user pools associated with an Amazon Web Services account.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For this operation, you must use IAM
%% credentials to authorize requests, and you must grant yourself the
%% corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
list_user_pools(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_user_pools(Client, Input, []).
list_user_pools(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListUserPools">>, Input, Options).

%% @doc Lists users and their basic details in a user pool.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For this operation, you must use IAM
%% credentials to authorize requests, and you must grant yourself the
%% corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
list_users(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_users(Client, Input, []).
list_users(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListUsers">>, Input, Options).

%% @doc Lists the users in the specified group.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For this operation, you must use IAM
%% credentials to authorize requests, and you must grant yourself the
%% corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
list_users_in_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_users_in_group(Client, Input, []).
list_users_in_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListUsersInGroup">>, Input, Options).

%% @doc Resends the confirmation (for confirmation of registration) to a
%% specific user in the user pool.
%%
%% Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
%% policies in requests for this API operation. For this operation, you
%% can't use IAM credentials to authorize requests, and you can't
%% grant IAM permissions in policies. For more information about
%% authorization models in Amazon Cognito, see Using the Amazon Cognito user
%% pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html.
%%
%% This action might generate an SMS text message. Starting June 1, 2021, US
%% telecom carriers require you to register an origination phone number
%% before you can send SMS messages to US phone numbers. If you use SMS text
%% messages in Amazon Cognito, you must register a phone number with Amazon
%% Pinpoint: https://console.aws.amazon.com/pinpoint/home/. Amazon Cognito
%% uses the registered number automatically. Otherwise, Amazon Cognito users
%% who must receive SMS messages might not be able to sign up, activate their
%% accounts, or sign in.
%%
%% If you have never used SMS text messages with Amazon Cognito or any other
%% Amazon Web Service, Amazon Simple Notification Service might place your
%% account in the SMS sandbox. In sandbox mode:
%% https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html , you can
%% send messages only to verified phone numbers. After you test your app
%% while in the sandbox environment, you can move out of the sandbox and into
%% production. For more information, see SMS message settings for Amazon
%% Cognito user pools:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html
%% in the Amazon Cognito Developer Guide.
resend_confirmation_code(Client, Input)
  when is_map(Client), is_map(Input) ->
    resend_confirmation_code(Client, Input, []).
resend_confirmation_code(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ResendConfirmationCode">>, Input, Options).

%% @doc Some API operations in a user pool generate a challenge, like a
%% prompt for an MFA code, for device authentication that bypasses MFA, or
%% for a custom authentication challenge.
%%
%% A `RespondToAuthChallenge' API request provides the answer to that
%% challenge, like a code or a secure remote password (SRP). The parameters
%% of a response to an authentication challenge vary with the type of
%% challenge.
%%
%% For more information about custom authentication challenges, see Custom
%% authentication challenge Lambda triggers:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-lambda-challenge.html.
%%
%% Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
%% policies in requests for this API operation. For this operation, you
%% can't use IAM credentials to authorize requests, and you can't
%% grant IAM permissions in policies. For more information about
%% authorization models in Amazon Cognito, see Using the Amazon Cognito user
%% pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html.
%%
%% This action might generate an SMS text message. Starting June 1, 2021, US
%% telecom carriers require you to register an origination phone number
%% before you can send SMS messages to US phone numbers. If you use SMS text
%% messages in Amazon Cognito, you must register a phone number with Amazon
%% Pinpoint: https://console.aws.amazon.com/pinpoint/home/. Amazon Cognito
%% uses the registered number automatically. Otherwise, Amazon Cognito users
%% who must receive SMS messages might not be able to sign up, activate their
%% accounts, or sign in.
%%
%% If you have never used SMS text messages with Amazon Cognito or any other
%% Amazon Web Service, Amazon Simple Notification Service might place your
%% account in the SMS sandbox. In sandbox mode:
%% https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html , you can
%% send messages only to verified phone numbers. After you test your app
%% while in the sandbox environment, you can move out of the sandbox and into
%% production. For more information, see SMS message settings for Amazon
%% Cognito user pools:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html
%% in the Amazon Cognito Developer Guide.
respond_to_auth_challenge(Client, Input)
  when is_map(Client), is_map(Input) ->
    respond_to_auth_challenge(Client, Input, []).
respond_to_auth_challenge(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RespondToAuthChallenge">>, Input, Options).

%% @doc Revokes all of the access tokens generated by, and at the same time
%% as, the specified refresh token.
%%
%% After a token is revoked, you can't use the revoked token to access
%% Amazon Cognito user APIs, or to authorize access to your resource server.
%%
%% Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
%% policies in requests for this API operation. For this operation, you
%% can't use IAM credentials to authorize requests, and you can't
%% grant IAM permissions in policies. For more information about
%% authorization models in Amazon Cognito, see Using the Amazon Cognito user
%% pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html.
revoke_token(Client, Input)
  when is_map(Client), is_map(Input) ->
    revoke_token(Client, Input, []).
revoke_token(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RevokeToken">>, Input, Options).

%% @doc Sets up or modifies the detailed activity logging configuration of a
%% user pool.
set_log_delivery_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_log_delivery_configuration(Client, Input, []).
set_log_delivery_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetLogDeliveryConfiguration">>, Input, Options).

%% @doc Configures actions on detected risks.
%%
%% To delete the risk configuration for `UserPoolId' or `ClientId',
%% pass null values for all four configuration types.
%%
%% To activate Amazon Cognito advanced security features, update the user
%% pool to include the `UserPoolAddOns' key`AdvancedSecurityMode'.
set_risk_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_risk_configuration(Client, Input, []).
set_risk_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetRiskConfiguration">>, Input, Options).

%% @doc Sets the user interface (UI) customization information for a user
%% pool's built-in app UI.
%%
%% You can specify app UI customization settings for a single client (with a
%% specific `clientId') or for all clients (by setting the `clientId'
%% to `ALL'). If you specify `ALL', the default configuration is used
%% for every client that has no previously set UI customization. If you
%% specify UI customization settings for a particular client, it will no
%% longer return to the `ALL' configuration.
%%
%% To use this API, your user pool must have a domain associated with it.
%% Otherwise, there is no place to host the app's pages, and the service
%% will throw an error.
set_ui_customization(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_ui_customization(Client, Input, []).
set_ui_customization(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetUICustomization">>, Input, Options).

%% @doc Set the user's multi-factor authentication (MFA) method
%% preference, including which MFA factors are activated and if any are
%% preferred.
%%
%% Only one factor can be set as preferred. The preferred MFA factor will be
%% used to authenticate a user if multiple factors are activated. If multiple
%% options are activated and no preference is set, a challenge to choose an
%% MFA option will be returned during sign-in. If an MFA type is activated
%% for a user, the user will be prompted for MFA during all sign-in attempts
%% unless device tracking is turned on and the device has been trusted. If
%% you want MFA to be applied selectively based on the assessed risk level of
%% sign-in attempts, deactivate MFA for users and turn on Adaptive
%% Authentication for the user pool.
%%
%% Authorize this action with a signed-in user's access token. It must
%% include the scope `aws.cognito.signin.user.admin'.
%%
%% Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
%% policies in requests for this API operation. For this operation, you
%% can't use IAM credentials to authorize requests, and you can't
%% grant IAM permissions in policies. For more information about
%% authorization models in Amazon Cognito, see Using the Amazon Cognito user
%% pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html.
set_user_mfa_preference(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_user_mfa_preference(Client, Input, []).
set_user_mfa_preference(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetUserMFAPreference">>, Input, Options).

%% @doc Sets the user pool multi-factor authentication (MFA) configuration.
%%
%% This action might generate an SMS text message. Starting June 1, 2021, US
%% telecom carriers require you to register an origination phone number
%% before you can send SMS messages to US phone numbers. If you use SMS text
%% messages in Amazon Cognito, you must register a phone number with Amazon
%% Pinpoint: https://console.aws.amazon.com/pinpoint/home/. Amazon Cognito
%% uses the registered number automatically. Otherwise, Amazon Cognito users
%% who must receive SMS messages might not be able to sign up, activate their
%% accounts, or sign in.
%%
%% If you have never used SMS text messages with Amazon Cognito or any other
%% Amazon Web Service, Amazon Simple Notification Service might place your
%% account in the SMS sandbox. In sandbox mode:
%% https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html , you can
%% send messages only to verified phone numbers. After you test your app
%% while in the sandbox environment, you can move out of the sandbox and into
%% production. For more information, see SMS message settings for Amazon
%% Cognito user pools:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html
%% in the Amazon Cognito Developer Guide.
set_user_pool_mfa_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_user_pool_mfa_config(Client, Input, []).
set_user_pool_mfa_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetUserPoolMfaConfig">>, Input, Options).

%% @doc This action is no longer supported.
%%
%% You can use it to configure only SMS MFA. You can't use it to
%% configure time-based one-time password (TOTP) software token MFA. To
%% configure either type of MFA, use SetUserMFAPreference:
%% https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_SetUserMFAPreference.html
%% instead.
%%
%% Authorize this action with a signed-in user's access token. It must
%% include the scope `aws.cognito.signin.user.admin'.
%%
%% Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
%% policies in requests for this API operation. For this operation, you
%% can't use IAM credentials to authorize requests, and you can't
%% grant IAM permissions in policies. For more information about
%% authorization models in Amazon Cognito, see Using the Amazon Cognito user
%% pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html.
set_user_settings(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_user_settings(Client, Input, []).
set_user_settings(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetUserSettings">>, Input, Options).

%% @doc Registers the user in the specified user pool and creates a user
%% name, password, and user attributes.
%%
%% Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
%% policies in requests for this API operation. For this operation, you
%% can't use IAM credentials to authorize requests, and you can't
%% grant IAM permissions in policies. For more information about
%% authorization models in Amazon Cognito, see Using the Amazon Cognito user
%% pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html.
%%
%% This action might generate an SMS text message. Starting June 1, 2021, US
%% telecom carriers require you to register an origination phone number
%% before you can send SMS messages to US phone numbers. If you use SMS text
%% messages in Amazon Cognito, you must register a phone number with Amazon
%% Pinpoint: https://console.aws.amazon.com/pinpoint/home/. Amazon Cognito
%% uses the registered number automatically. Otherwise, Amazon Cognito users
%% who must receive SMS messages might not be able to sign up, activate their
%% accounts, or sign in.
%%
%% If you have never used SMS text messages with Amazon Cognito or any other
%% Amazon Web Service, Amazon Simple Notification Service might place your
%% account in the SMS sandbox. In sandbox mode:
%% https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html , you can
%% send messages only to verified phone numbers. After you test your app
%% while in the sandbox environment, you can move out of the sandbox and into
%% production. For more information, see SMS message settings for Amazon
%% Cognito user pools:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html
%% in the Amazon Cognito Developer Guide.
sign_up(Client, Input)
  when is_map(Client), is_map(Input) ->
    sign_up(Client, Input, []).
sign_up(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SignUp">>, Input, Options).

%% @doc Starts the user import.
start_user_import_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_user_import_job(Client, Input, []).
start_user_import_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartUserImportJob">>, Input, Options).

%% @doc Stops the user import job.
stop_user_import_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_user_import_job(Client, Input, []).
stop_user_import_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopUserImportJob">>, Input, Options).

%% @doc Assigns a set of tags to an Amazon Cognito user pool.
%%
%% A tag is a label that you can use to categorize and manage user pools in
%% different ways, such as by purpose, owner, environment, or other criteria.
%%
%% Each tag consists of a key and value, both of which you define. A key is a
%% general category for more specific values. For example, if you have two
%% versions of a user pool, one for testing and another for production, you
%% might assign an `Environment' tag key to both user pools. The value of
%% this key might be `Test' for one user pool, and `Production' for
%% the other.
%%
%% Tags are useful for cost tracking and access control. You can activate
%% your tags so that they appear on the Billing and Cost Management console,
%% where you can track the costs associated with your user pools. In an
%% Identity and Access Management policy, you can constrain permissions for
%% user pools based on specific tags or tag values.
%%
%% You can use this action up to 5 times per second, per account. A user pool
%% can have as many as 50 tags.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Removes the specified tags from an Amazon Cognito user pool.
%%
%% You can use this action up to 5 times per second, per account.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc Provides the feedback for an authentication event, whether it was
%% from a valid user or not.
%%
%% This feedback is used for improving the risk evaluation decision for the
%% user pool as part of Amazon Cognito advanced security.
%%
%% Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
%% policies in requests for this API operation. For this operation, you
%% can't use IAM credentials to authorize requests, and you can't
%% grant IAM permissions in policies. For more information about
%% authorization models in Amazon Cognito, see Using the Amazon Cognito user
%% pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html.
update_auth_event_feedback(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_auth_event_feedback(Client, Input, []).
update_auth_event_feedback(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateAuthEventFeedback">>, Input, Options).

%% @doc Updates the device status.
%%
%% For more information about device authentication, see Working with user
%% devices in your user pool:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html.
%%
%% Authorize this action with a signed-in user's access token. It must
%% include the scope `aws.cognito.signin.user.admin'.
%%
%% Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
%% policies in requests for this API operation. For this operation, you
%% can't use IAM credentials to authorize requests, and you can't
%% grant IAM permissions in policies. For more information about
%% authorization models in Amazon Cognito, see Using the Amazon Cognito user
%% pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html.
update_device_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_device_status(Client, Input, []).
update_device_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateDeviceStatus">>, Input, Options).

%% @doc Updates the specified group with the specified attributes.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For this operation, you must use IAM
%% credentials to authorize requests, and you must grant yourself the
%% corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
update_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_group(Client, Input, []).
update_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateGroup">>, Input, Options).

%% @doc Updates IdP information for a user pool.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For this operation, you must use IAM
%% credentials to authorize requests, and you must grant yourself the
%% corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
update_identity_provider(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_identity_provider(Client, Input, []).
update_identity_provider(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateIdentityProvider">>, Input, Options).

%% @doc Updates the name and scopes of resource server.
%%
%% All other fields are read-only.
%%
%% If you don't provide a value for an attribute, it is set to the
%% default value.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For this operation, you must use IAM
%% credentials to authorize requests, and you must grant yourself the
%% corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
update_resource_server(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_resource_server(Client, Input, []).
update_resource_server(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateResourceServer">>, Input, Options).

%% @doc With this operation, your users can update one or more of their
%% attributes with their own credentials.
%%
%% You authorize this API request with the user's access token. To delete
%% an attribute from your user, submit the attribute in your API request with
%% a blank value. Custom attribute values in this request must include the
%% `custom:' prefix.
%%
%% Authorize this action with a signed-in user's access token. It must
%% include the scope `aws.cognito.signin.user.admin'.
%%
%% Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
%% policies in requests for this API operation. For this operation, you
%% can't use IAM credentials to authorize requests, and you can't
%% grant IAM permissions in policies. For more information about
%% authorization models in Amazon Cognito, see Using the Amazon Cognito user
%% pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html.
%%
%% This action might generate an SMS text message. Starting June 1, 2021, US
%% telecom carriers require you to register an origination phone number
%% before you can send SMS messages to US phone numbers. If you use SMS text
%% messages in Amazon Cognito, you must register a phone number with Amazon
%% Pinpoint: https://console.aws.amazon.com/pinpoint/home/. Amazon Cognito
%% uses the registered number automatically. Otherwise, Amazon Cognito users
%% who must receive SMS messages might not be able to sign up, activate their
%% accounts, or sign in.
%%
%% If you have never used SMS text messages with Amazon Cognito or any other
%% Amazon Web Service, Amazon Simple Notification Service might place your
%% account in the SMS sandbox. In sandbox mode:
%% https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html , you can
%% send messages only to verified phone numbers. After you test your app
%% while in the sandbox environment, you can move out of the sandbox and into
%% production. For more information, see SMS message settings for Amazon
%% Cognito user pools:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html
%% in the Amazon Cognito Developer Guide.
update_user_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_user_attributes(Client, Input, []).
update_user_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateUserAttributes">>, Input, Options).

%% @doc This action might generate an SMS text message.
%%
%% Starting June 1, 2021, US telecom carriers require you to register an
%% origination phone number before you can send SMS messages to US phone
%% numbers. If you use SMS text messages in Amazon Cognito, you must register
%% a phone number with Amazon Pinpoint:
%% https://console.aws.amazon.com/pinpoint/home/. Amazon Cognito uses the
%% registered number automatically. Otherwise, Amazon Cognito users who must
%% receive SMS messages might not be able to sign up, activate their
%% accounts, or sign in.
%%
%% If you have never used SMS text messages with Amazon Cognito or any other
%% Amazon Web Service, Amazon Simple Notification Service might place your
%% account in the SMS sandbox. In sandbox mode:
%% https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html , you can
%% send messages only to verified phone numbers. After you test your app
%% while in the sandbox environment, you can move out of the sandbox and into
%% production. For more information, see SMS message settings for Amazon
%% Cognito user pools:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html
%% in the Amazon Cognito Developer Guide.
%%
%% Updates the specified user pool with the specified attributes. You can get
%% a list of the current user pool settings using DescribeUserPool:
%% https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_DescribeUserPool.html.
%%
%% If you don't provide a value for an attribute, Amazon Cognito sets it
%% to its default value.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For this operation, you must use IAM
%% credentials to authorize requests, and you must grant yourself the
%% corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
update_user_pool(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_user_pool(Client, Input, []).
update_user_pool(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateUserPool">>, Input, Options).

%% @doc Updates the specified user pool app client with the specified
%% attributes.
%%
%% You can get a list of the current user pool app client settings using
%% DescribeUserPoolClient:
%% https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_DescribeUserPoolClient.html.
%%
%% If you don't provide a value for an attribute, Amazon Cognito sets it
%% to its default value.
%%
%% You can also use this operation to enable token revocation for user pool
%% clients. For more information about revoking tokens, see RevokeToken:
%% https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_RevokeToken.html.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For this operation, you must use IAM
%% credentials to authorize requests, and you must grant yourself the
%% corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
update_user_pool_client(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_user_pool_client(Client, Input, []).
update_user_pool_client(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateUserPoolClient">>, Input, Options).

%% @doc Updates the Secure Sockets Layer (SSL) certificate for the custom
%% domain for your user pool.
%%
%% You can use this operation to provide the Amazon Resource Name (ARN) of a
%% new certificate to Amazon Cognito. You can't use it to change the
%% domain for a user pool.
%%
%% A custom domain is used to host the Amazon Cognito hosted UI, which
%% provides sign-up and sign-in pages for your application. When you set up a
%% custom domain, you provide a certificate that you manage with Certificate
%% Manager (ACM). When necessary, you can use this operation to change the
%% certificate that you applied to your custom domain.
%%
%% Usually, this is unnecessary following routine certificate renewal with
%% ACM. When you renew your existing certificate in ACM, the ARN for your
%% certificate remains the same, and your custom domain uses the new
%% certificate automatically.
%%
%% However, if you replace your existing certificate with a new one, ACM
%% gives the new certificate a new ARN. To apply the new certificate to your
%% custom domain, you must provide this ARN to Amazon Cognito.
%%
%% When you add your new certificate in ACM, you must choose US East (N.
%% Virginia) as the Amazon Web Services Region.
%%
%% After you submit your request, Amazon Cognito requires up to 1 hour to
%% distribute your new certificate to your custom domain.
%%
%% For more information about adding a custom domain to your user pool, see
%% Using Your Own Domain for the Hosted UI:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-add-custom-domain.html.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For this operation, you must use IAM
%% credentials to authorize requests, and you must grant yourself the
%% corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
update_user_pool_domain(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_user_pool_domain(Client, Input, []).
update_user_pool_domain(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateUserPoolDomain">>, Input, Options).

%% @doc Use this API to register a user's entered time-based one-time
%% password (TOTP) code and mark the user's software token MFA status as
%% &quot;verified&quot; if successful.
%%
%% The request takes an access token or a session string, but not both.
%%
%% Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
%% policies in requests for this API operation. For this operation, you
%% can't use IAM credentials to authorize requests, and you can't
%% grant IAM permissions in policies. For more information about
%% authorization models in Amazon Cognito, see Using the Amazon Cognito user
%% pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html.
verify_software_token(Client, Input)
  when is_map(Client), is_map(Input) ->
    verify_software_token(Client, Input, []).
verify_software_token(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"VerifySoftwareToken">>, Input, Options).

%% @doc Verifies the specified user attributes in the user pool.
%%
%% If your user pool requires verification before Amazon Cognito updates the
%% attribute value, VerifyUserAttribute updates the affected attribute to its
%% pending value. For more information, see UserAttributeUpdateSettingsType:
%% https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_UserAttributeUpdateSettingsType.html.
%%
%% Authorize this action with a signed-in user's access token. It must
%% include the scope `aws.cognito.signin.user.admin'.
%%
%% Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
%% policies in requests for this API operation. For this operation, you
%% can't use IAM credentials to authorize requests, and you can't
%% grant IAM permissions in policies. For more information about
%% authorization models in Amazon Cognito, see Using the Amazon Cognito user
%% pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html.
verify_user_attribute(Client, Input)
  when is_map(Client), is_map(Input) ->
    verify_user_attribute(Client, Input, []).
verify_user_attribute(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"VerifyUserAttribute">>, Input, Options).

%%====================================================================
%% Internal functions
%%====================================================================

-spec request(aws_client:aws_client(), binary(), map(), list()) ->
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map() | undefined,
    Error :: map().
request(Client, Action, Input, Options) ->
    RequestFun = fun() -> do_request(Client, Action, Input, Options) end,
    aws_request:request(RequestFun, Options).

do_request(Client, Action, Input0, Options) ->
    Client1 = Client#{service => <<"cognito-idp">>},
    Host = build_host(<<"cognito-idp">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"AWSCognitoIdentityProviderService.", Action/binary>>}
    ],

    Input = Input0,

    Payload = jsx:encode(Input),
    SignedHeaders = aws_request:sign_request(Client1, <<"POST">>, URL, Headers, Payload),
    Response = hackney:request(post, URL, SignedHeaders, Payload, Options),
    handle_response(Response).

handle_response({ok, 200, ResponseHeaders, Client}) ->
    case hackney:body(Client) of
        {ok, <<>>} ->
            {ok, undefined, {200, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = jsx:decode(Body),
            {ok, Result, {200, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}) ->
    {ok, Body} = hackney:body(Client),
    Error = jsx:decode(Body),
    {error, Error, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}) ->
    {error, Reason}.

build_host(_EndpointPrefix, #{region := <<"local">>, endpoint := Endpoint}) ->
    Endpoint;
build_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
build_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

build_url(Host, Client) ->
    Proto = aws_client:proto(Client),
    Port = aws_client:port(Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
