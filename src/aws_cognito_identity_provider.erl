%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Using the Amazon Cognito User Pools API, you can create a user pool
%% to manage directories and users.
%%
%% You can authenticate a user to obtain tokens related to user identity and
%% access policies.
%%
%% This API reference provides information about user pools in Amazon Cognito
%% User Pools.
%%
%% For more information, see the Amazon Cognito Documentation.
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
         admin_set_user_m_f_a_preference/2,
         admin_set_user_m_f_a_preference/3,
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
         get_signing_certificate/2,
         get_signing_certificate/3,
         get_u_i_customization/2,
         get_u_i_customization/3,
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
         set_risk_configuration/2,
         set_risk_configuration/3,
         set_u_i_customization/2,
         set_u_i_customization/3,
         set_user_m_f_a_preference/2,
         set_user_m_f_a_preference/3,
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
add_custom_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_custom_attributes(Client, Input, []).
add_custom_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddCustomAttributes">>, Input, Options).

%% @doc Adds the specified user to the specified group.
%%
%% Calling this action requires developer credentials.
admin_add_user_to_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    admin_add_user_to_group(Client, Input, []).
admin_add_user_to_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AdminAddUserToGroup">>, Input, Options).

%% @doc Confirms user registration as an admin without using a confirmation
%% code.
%%
%% Works on any user.
%%
%% Calling this action requires developer credentials.
admin_confirm_sign_up(Client, Input)
  when is_map(Client), is_map(Input) ->
    admin_confirm_sign_up(Client, Input, []).
admin_confirm_sign_up(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AdminConfirmSignUp">>, Input, Options).

%% @doc Creates a new user in the specified user pool.
%%
%% If `MessageAction' is not set, the default is to send a welcome message
%% via email or phone (SMS).
%%
%% This message is based on a template that you configured in your call to
%% create or update a user pool. This template includes your custom sign-up
%% instructions and placeholders for user name and temporary password.
%%
%% Alternatively, you can call `AdminCreateUser' with “SUPPRESS” for the
%% `MessageAction' parameter, and Amazon Cognito will not send any email.
%%
%% In either case, the user will be in the `FORCE_CHANGE_PASSWORD' state
%% until they sign in and change their password.
%%
%% `AdminCreateUser' requires developer credentials.
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
%% Calling this action requires developer credentials.
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
%% Calling this action requires developer credentials.
admin_delete_user_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    admin_delete_user_attributes(Client, Input, []).
admin_delete_user_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AdminDeleteUserAttributes">>, Input, Options).

%% @doc Disables the user from signing in with the specified external (SAML
%% or social) identity provider.
%%
%% If the user to disable is a Cognito User Pools native username + password
%% user, they are not permitted to use their password to sign-in. If the user
%% to disable is a linked external IdP user, any link between that user and
%% an existing user is removed. The next time the external user (no longer
%% attached to the previously linked `DestinationUser') signs in, they must
%% create a new user account. See AdminLinkProviderForUser.
%%
%% This action is enabled only for admin access and requires developer
%% credentials.
%%
%% The `ProviderName' must match the value specified when creating an IdP for
%% the pool.
%%
%% To disable a native username + password user, the `ProviderName' value
%% must be `Cognito' and the `ProviderAttributeName' must be
%% `Cognito_Subject', with the `ProviderAttributeValue' being the name that
%% is used in the user pool for the user.
%%
%% The `ProviderAttributeName' must always be `Cognito_Subject' for social
%% identity providers. The `ProviderAttributeValue' must always be the exact
%% subject that was used when the user was originally linked as a source
%% user.
%%
%% For de-linking a SAML identity, there are two scenarios. If the linked
%% identity has not yet been used to sign-in, the `ProviderAttributeName' and
%% `ProviderAttributeValue' must be the same values that were used for the
%% `SourceUser' when the identities were originally linked using `
%% AdminLinkProviderForUser' call. (If the linking was done with
%% `ProviderAttributeName' set to `Cognito_Subject', the same applies here).
%% However, if the user has already signed in, the `ProviderAttributeName'
%% must be `Cognito_Subject' and `ProviderAttributeValue' must be the subject
%% of the SAML assertion.
admin_disable_provider_for_user(Client, Input)
  when is_map(Client), is_map(Input) ->
    admin_disable_provider_for_user(Client, Input, []).
admin_disable_provider_for_user(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AdminDisableProviderForUser">>, Input, Options).

%% @doc Disables the specified user.
%%
%% Calling this action requires developer credentials.
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
%% Calling this action requires developer credentials.
admin_enable_user(Client, Input)
  when is_map(Client), is_map(Input) ->
    admin_enable_user(Client, Input, []).
admin_enable_user(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AdminEnableUser">>, Input, Options).

%% @doc Forgets the device, as an administrator.
%%
%% Calling this action requires developer credentials.
admin_forget_device(Client, Input)
  when is_map(Client), is_map(Input) ->
    admin_forget_device(Client, Input, []).
admin_forget_device(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AdminForgetDevice">>, Input, Options).

%% @doc Gets the device, as an administrator.
%%
%% Calling this action requires developer credentials.
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
%% Calling this action requires developer credentials.
admin_get_user(Client, Input)
  when is_map(Client), is_map(Input) ->
    admin_get_user(Client, Input, []).
admin_get_user(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AdminGetUser">>, Input, Options).

%% @doc Initiates the authentication flow, as an administrator.
%%
%% Calling this action requires developer credentials.
admin_initiate_auth(Client, Input)
  when is_map(Client), is_map(Input) ->
    admin_initiate_auth(Client, Input, []).
admin_initiate_auth(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AdminInitiateAuth">>, Input, Options).

%% @doc Links an existing user account in a user pool (`DestinationUser') to
%% an identity from an external identity provider (`SourceUser') based on a
%% specified attribute name and value from the external identity provider.
%%
%% This allows you to create a link from the existing user account to an
%% external federated user identity that has not yet been used to sign in, so
%% that the federated user identity can be used to sign in as the existing
%% user account.
%%
%% For example, if there is an existing user with a username and password,
%% this API links that user to a federated user identity, so that when the
%% federated user identity is used, the user signs in as the existing user
%% account.
%%
%% The maximum number of federated identities linked to a user is 5.
%%
%% Because this API allows a user with an external federated identity to sign
%% in as an existing user in the user pool, it is critical that it only be
%% used with external identity providers and provider attributes that have
%% been trusted by the application owner.
%%
%% This action is enabled only for admin access and requires developer
%% credentials.
admin_link_provider_for_user(Client, Input)
  when is_map(Client), is_map(Input) ->
    admin_link_provider_for_user(Client, Input, []).
admin_link_provider_for_user(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AdminLinkProviderForUser">>, Input, Options).

%% @doc Lists devices, as an administrator.
%%
%% Calling this action requires developer credentials.
admin_list_devices(Client, Input)
  when is_map(Client), is_map(Input) ->
    admin_list_devices(Client, Input, []).
admin_list_devices(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AdminListDevices">>, Input, Options).

%% @doc Lists the groups that the user belongs to.
%%
%% Calling this action requires developer credentials.
admin_list_groups_for_user(Client, Input)
  when is_map(Client), is_map(Input) ->
    admin_list_groups_for_user(Client, Input, []).
admin_list_groups_for_user(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AdminListGroupsForUser">>, Input, Options).

%% @doc Lists a history of user activity and any risks detected as part of
%% Amazon Cognito advanced security.
admin_list_user_auth_events(Client, Input)
  when is_map(Client), is_map(Input) ->
    admin_list_user_auth_events(Client, Input, []).
admin_list_user_auth_events(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AdminListUserAuthEvents">>, Input, Options).

%% @doc Removes the specified user from the specified group.
%%
%% Calling this action requires developer credentials.
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
%% When a developer calls this API, the current password is invalidated, so
%% it must be changed. If a user tries to sign in after the API is called,
%% the app will get a PasswordResetRequiredException exception back and
%% should direct the user down the flow to reset the password, which is the
%% same as the forgot password flow. In addition, if the user pool has phone
%% verification selected and a verified phone number exists for the user, or
%% if email verification is selected and a verified email exists for the
%% user, calling this API will also result in sending a message to the end
%% user with the code to change their password.
%%
%% Calling this action requires developer credentials.
admin_reset_user_password(Client, Input)
  when is_map(Client), is_map(Input) ->
    admin_reset_user_password(Client, Input, []).
admin_reset_user_password(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AdminResetUserPassword">>, Input, Options).

%% @doc Responds to an authentication challenge, as an administrator.
%%
%% Calling this action requires developer credentials.
admin_respond_to_auth_challenge(Client, Input)
  when is_map(Client), is_map(Input) ->
    admin_respond_to_auth_challenge(Client, Input, []).
admin_respond_to_auth_challenge(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AdminRespondToAuthChallenge">>, Input, Options).

%% @doc Sets the user's multi-factor authentication (MFA) preference,
%% including which MFA options are enabled and if any are preferred.
%%
%% Only one factor can be set as preferred. The preferred MFA factor will be
%% used to authenticate a user if multiple factors are enabled. If multiple
%% options are enabled and no preference is set, a challenge to choose an MFA
%% option will be returned during sign in.
admin_set_user_m_f_a_preference(Client, Input)
  when is_map(Client), is_map(Input) ->
    admin_set_user_m_f_a_preference(Client, Input, []).
admin_set_user_m_f_a_preference(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AdminSetUserMFAPreference">>, Input, Options).

%% @doc Sets the specified user's password in a user pool as an
%% administrator.
%%
%% Works on any user.
%%
%% The password can be temporary or permanent. If it is temporary, the user
%% status will be placed into the `FORCE_CHANGE_PASSWORD' state. When the
%% user next tries to sign in, the InitiateAuth/AdminInitiateAuth response
%% will contain the `NEW_PASSWORD_REQUIRED' challenge. If the user does not
%% sign in before it expires, the user will not be able to sign in and their
%% password will need to be reset by an administrator.
%%
%% Once the user has set a new password, or the password is permanent, the
%% user status will be set to `Confirmed'.
admin_set_user_password(Client, Input)
  when is_map(Client), is_map(Input) ->
    admin_set_user_password(Client, Input, []).
admin_set_user_password(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AdminSetUserPassword">>, Input, Options).

%% @doc This action is no longer supported.
%%
%% You can use it to configure only SMS MFA. You can't use it to configure
%% TOTP software token MFA. To configure either type of MFA, use
%% AdminSetUserMFAPreference instead.
admin_set_user_settings(Client, Input)
  when is_map(Client), is_map(Input) ->
    admin_set_user_settings(Client, Input, []).
admin_set_user_settings(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AdminSetUserSettings">>, Input, Options).

%% @doc Provides feedback for an authentication event as to whether it was
%% from a valid user.
%%
%% This feedback is used for improving the risk evaluation decision for the
%% user pool as part of Amazon Cognito advanced security.
admin_update_auth_event_feedback(Client, Input)
  when is_map(Client), is_map(Input) ->
    admin_update_auth_event_feedback(Client, Input, []).
admin_update_auth_event_feedback(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AdminUpdateAuthEventFeedback">>, Input, Options).

%% @doc Updates the device status as an administrator.
%%
%% Calling this action requires developer credentials.
admin_update_device_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    admin_update_device_status(Client, Input, []).
admin_update_device_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AdminUpdateDeviceStatus">>, Input, Options).

%% @doc Updates the specified user's attributes, including developer
%% attributes, as an administrator.
%%
%% Works on any user.
%%
%% For custom attributes, you must prepend the `custom:' prefix to the
%% attribute name.
%%
%% In addition to updating user attributes, this API can also be used to mark
%% phone and email as verified.
%%
%% Calling this action requires developer credentials.
admin_update_user_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    admin_update_user_attributes(Client, Input, []).
admin_update_user_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AdminUpdateUserAttributes">>, Input, Options).

%% @doc Signs out users from all devices, as an administrator.
%%
%% It also invalidates all refresh tokens issued to a user. The user's
%% current access and Id tokens remain valid until their expiry. Access and
%% Id tokens expire one hour after they are issued.
%%
%% Calling this action requires developer credentials.
admin_user_global_sign_out(Client, Input)
  when is_map(Client), is_map(Input) ->
    admin_user_global_sign_out(Client, Input, []).
admin_user_global_sign_out(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AdminUserGlobalSignOut">>, Input, Options).

%% @doc Returns a unique generated shared secret key code for the user
%% account.
%%
%% The request takes an access token or a session string, but not both.
associate_software_token(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_software_token(Client, Input, []).
associate_software_token(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateSoftwareToken">>, Input, Options).

%% @doc Changes the password for a specified user in a user pool.
change_password(Client, Input)
  when is_map(Client), is_map(Input) ->
    change_password(Client, Input, []).
change_password(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ChangePassword">>, Input, Options).

%% @doc Confirms tracking of the device.
%%
%% This API call is the call that begins device tracking.
confirm_device(Client, Input)
  when is_map(Client), is_map(Input) ->
    confirm_device(Client, Input, []).
confirm_device(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ConfirmDevice">>, Input, Options).

%% @doc Allows a user to enter a confirmation code to reset a forgotten
%% password.
confirm_forgot_password(Client, Input)
  when is_map(Client), is_map(Input) ->
    confirm_forgot_password(Client, Input, []).
confirm_forgot_password(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ConfirmForgotPassword">>, Input, Options).

%% @doc Confirms registration of a user and handles the existing alias from a
%% previous user.
confirm_sign_up(Client, Input)
  when is_map(Client), is_map(Input) ->
    confirm_sign_up(Client, Input, []).
confirm_sign_up(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ConfirmSignUp">>, Input, Options).

%% @doc Creates a new group in the specified user pool.
%%
%% Calling this action requires developer credentials.
create_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_group(Client, Input, []).
create_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateGroup">>, Input, Options).

%% @doc Creates an identity provider for a user pool.
create_identity_provider(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_identity_provider(Client, Input, []).
create_identity_provider(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateIdentityProvider">>, Input, Options).

%% @doc Creates a new OAuth2.0 resource server and defines custom scopes in
%% it.
create_resource_server(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_resource_server(Client, Input, []).
create_resource_server(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateResourceServer">>, Input, Options).

%% @doc Creates the user import job.
create_user_import_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_user_import_job(Client, Input, []).
create_user_import_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateUserImportJob">>, Input, Options).

%% @doc Creates a new Amazon Cognito user pool and sets the password policy
%% for the pool.
create_user_pool(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_user_pool(Client, Input, []).
create_user_pool(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateUserPool">>, Input, Options).

%% @doc Creates the user pool client.
create_user_pool_client(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_user_pool_client(Client, Input, []).
create_user_pool_client(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateUserPoolClient">>, Input, Options).

%% @doc Creates a new domain for a user pool.
create_user_pool_domain(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_user_pool_domain(Client, Input, []).
create_user_pool_domain(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateUserPoolDomain">>, Input, Options).

%% @doc Deletes a group.
%%
%% Currently only groups with no members can be deleted.
%%
%% Calling this action requires developer credentials.
delete_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_group(Client, Input, []).
delete_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteGroup">>, Input, Options).

%% @doc Deletes an identity provider for a user pool.
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

%% @doc Allows a user to delete himself or herself.
delete_user(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_user(Client, Input, []).
delete_user(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteUser">>, Input, Options).

%% @doc Deletes the attributes for a user.
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

%% @doc Gets information about a specific identity provider.
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
describe_user_pool(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_user_pool(Client, Input, []).
describe_user_pool(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeUserPool">>, Input, Options).

%% @doc Client method for returning the configuration information and
%% metadata of the specified user pool app client.
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
forget_device(Client, Input)
  when is_map(Client), is_map(Input) ->
    forget_device(Client, Input, []).
forget_device(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ForgetDevice">>, Input, Options).

%% @doc Calling this API causes a message to be sent to the end user with a
%% confirmation code that is required to change the user's password.
%%
%% For the `Username' parameter, you can use the username or user alias. The
%% method used to send the confirmation code is sent according to the
%% specified AccountRecoverySetting. For more information, see Recovering
%% User Accounts in the Amazon Cognito Developer Guide. If neither a verified
%% phone number nor a verified email exists, an `InvalidParameterException'
%% is thrown. To use the confirmation code for resetting the password, call
%% ConfirmForgotPassword.
forgot_password(Client, Input)
  when is_map(Client), is_map(Input) ->
    forgot_password(Client, Input, []).
forgot_password(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ForgotPassword">>, Input, Options).

%% @doc Gets the header information for the .csv file to be used as input for
%% the user import job.
get_csv_header(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_csv_header(Client, Input, []).
get_csv_header(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetCSVHeader">>, Input, Options).

%% @doc Gets the device.
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

%% @doc Gets the specified identity provider.
get_identity_provider_by_identifier(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_identity_provider_by_identifier(Client, Input, []).
get_identity_provider_by_identifier(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetIdentityProviderByIdentifier">>, Input, Options).

%% @doc This method takes a user pool ID, and returns the signing
%% certificate.
get_signing_certificate(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_signing_certificate(Client, Input, []).
get_signing_certificate(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSigningCertificate">>, Input, Options).

%% @doc Gets the UI Customization information for a particular app client's
%% app UI, if there is something set.
%%
%% If nothing is set for the particular client, but there is an existing pool
%% level customization (app `clientId' will be `ALL'), then that is returned.
%% If nothing is present, then an empty shape is returned.
get_u_i_customization(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_u_i_customization(Client, Input, []).
get_u_i_customization(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetUICustomization">>, Input, Options).

%% @doc Gets the user attributes and metadata for a user.
get_user(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_user(Client, Input, []).
get_user(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetUser">>, Input, Options).

%% @doc Gets the user attribute verification code for the specified attribute
%% name.
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

%% @doc Signs out users from all devices.
%%
%% It also invalidates all refresh tokens issued to a user. The user's
%% current access and Id tokens remain valid until their expiry. Access and
%% Id tokens expire one hour after they are issued.
global_sign_out(Client, Input)
  when is_map(Client), is_map(Input) ->
    global_sign_out(Client, Input, []).
global_sign_out(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GlobalSignOut">>, Input, Options).

%% @doc Initiates the authentication flow.
initiate_auth(Client, Input)
  when is_map(Client), is_map(Input) ->
    initiate_auth(Client, Input, []).
initiate_auth(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"InitiateAuth">>, Input, Options).

%% @doc Lists the devices.
list_devices(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_devices(Client, Input, []).
list_devices(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDevices">>, Input, Options).

%% @doc Lists the groups associated with a user pool.
%%
%% Calling this action requires developer credentials.
list_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_groups(Client, Input, []).
list_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListGroups">>, Input, Options).

%% @doc Lists information about all identity providers for a user pool.
list_identity_providers(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_identity_providers(Client, Input, []).
list_identity_providers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListIdentityProviders">>, Input, Options).

%% @doc Lists the resource servers for a user pool.
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

%% @doc Lists the user import jobs.
list_user_import_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_user_import_jobs(Client, Input, []).
list_user_import_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListUserImportJobs">>, Input, Options).

%% @doc Lists the clients that have been created for the specified user pool.
list_user_pool_clients(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_user_pool_clients(Client, Input, []).
list_user_pool_clients(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListUserPoolClients">>, Input, Options).

%% @doc Lists the user pools associated with an AWS account.
list_user_pools(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_user_pools(Client, Input, []).
list_user_pools(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListUserPools">>, Input, Options).

%% @doc Lists the users in the Amazon Cognito user pool.
list_users(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_users(Client, Input, []).
list_users(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListUsers">>, Input, Options).

%% @doc Lists the users in the specified group.
%%
%% Calling this action requires developer credentials.
list_users_in_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_users_in_group(Client, Input, []).
list_users_in_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListUsersInGroup">>, Input, Options).

%% @doc Resends the confirmation (for confirmation of registration) to a
%% specific user in the user pool.
resend_confirmation_code(Client, Input)
  when is_map(Client), is_map(Input) ->
    resend_confirmation_code(Client, Input, []).
resend_confirmation_code(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ResendConfirmationCode">>, Input, Options).

%% @doc Responds to the authentication challenge.
respond_to_auth_challenge(Client, Input)
  when is_map(Client), is_map(Input) ->
    respond_to_auth_challenge(Client, Input, []).
respond_to_auth_challenge(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RespondToAuthChallenge">>, Input, Options).

%% @doc Configures actions on detected risks.
%%
%% To delete the risk configuration for `UserPoolId' or `ClientId', pass null
%% values for all four configuration types.
%%
%% To enable Amazon Cognito advanced security features, update the user pool
%% to include the `UserPoolAddOns' key`AdvancedSecurityMode'.
set_risk_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_risk_configuration(Client, Input, []).
set_risk_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetRiskConfiguration">>, Input, Options).

%% @doc Sets the UI customization information for a user pool's built-in app
%% UI.
%%
%% You can specify app UI customization settings for a single client (with a
%% specific `clientId') or for all clients (by setting the `clientId' to
%% `ALL'). If you specify `ALL', the default configuration will be used for
%% every client that has no UI customization set previously. If you specify
%% UI customization settings for a particular client, it will no longer fall
%% back to the `ALL' configuration.
%%
%% To use this API, your user pool must have a domain associated with it.
%% Otherwise, there is no place to host the app's pages, and the service will
%% throw an error.
set_u_i_customization(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_u_i_customization(Client, Input, []).
set_u_i_customization(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetUICustomization">>, Input, Options).

%% @doc Set the user's multi-factor authentication (MFA) method preference,
%% including which MFA factors are enabled and if any are preferred.
%%
%% Only one factor can be set as preferred. The preferred MFA factor will be
%% used to authenticate a user if multiple factors are enabled. If multiple
%% options are enabled and no preference is set, a challenge to choose an MFA
%% option will be returned during sign in.
set_user_m_f_a_preference(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_user_m_f_a_preference(Client, Input, []).
set_user_m_f_a_preference(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetUserMFAPreference">>, Input, Options).

%% @doc Set the user pool multi-factor authentication (MFA) configuration.
set_user_pool_mfa_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_user_pool_mfa_config(Client, Input, []).
set_user_pool_mfa_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetUserPoolMfaConfig">>, Input, Options).

%% @doc This action is no longer supported.
%%
%% You can use it to configure only SMS MFA. You can't use it to configure
%% TOTP software token MFA. To configure either type of MFA, use
%% SetUserMFAPreference instead.
set_user_settings(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_user_settings(Client, Input, []).
set_user_settings(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetUserSettings">>, Input, Options).

%% @doc Registers the user in the specified user pool and creates a user
%% name, password, and user attributes.
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
%% this key might be `Test' for one user pool and `Production' for the other.
%%
%% Tags are useful for cost tracking and access control. You can activate
%% your tags so that they appear on the Billing and Cost Management console,
%% where you can track the costs associated with your user pools. In an IAM
%% policy, you can constrain permissions for user pools based on specific
%% tags or tag values.
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
%% You can use this action up to 5 times per second, per account
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc Provides the feedback for an authentication event whether it was from
%% a valid user or not.
%%
%% This feedback is used for improving the risk evaluation decision for the
%% user pool as part of Amazon Cognito advanced security.
update_auth_event_feedback(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_auth_event_feedback(Client, Input, []).
update_auth_event_feedback(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateAuthEventFeedback">>, Input, Options).

%% @doc Updates the device status.
update_device_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_device_status(Client, Input, []).
update_device_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateDeviceStatus">>, Input, Options).

%% @doc Updates the specified group with the specified attributes.
%%
%% Calling this action requires developer credentials.
%%
%% If you don't provide a value for an attribute, it will be set to the
%% default value.
update_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_group(Client, Input, []).
update_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateGroup">>, Input, Options).

%% @doc Updates identity provider information for a user pool.
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
%% If you don't provide a value for an attribute, it will be set to the
%% default value.
update_resource_server(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_resource_server(Client, Input, []).
update_resource_server(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateResourceServer">>, Input, Options).

%% @doc Allows a user to update a specific attribute (one at a time).
update_user_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_user_attributes(Client, Input, []).
update_user_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateUserAttributes">>, Input, Options).

%% @doc Updates the specified user pool with the specified attributes.
%%
%% You can get a list of the current user pool settings using
%% DescribeUserPool.
%%
%% If you don't provide a value for an attribute, it will be set to the
%% default value.
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
%% DescribeUserPoolClient.
%%
%% If you don't provide a value for an attribute, it will be set to the
%% default value.
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
%% new certificate to Amazon Cognito. You cannot use it to change the domain
%% for a user pool.
%%
%% A custom domain is used to host the Amazon Cognito hosted UI, which
%% provides sign-up and sign-in pages for your application. When you set up a
%% custom domain, you provide a certificate that you manage with AWS
%% Certificate Manager (ACM). When necessary, you can use this operation to
%% change the certificate that you applied to your custom domain.
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
%% Virginia) as the AWS Region.
%%
%% After you submit your request, Amazon Cognito requires up to 1 hour to
%% distribute your new certificate to your custom domain.
%%
%% For more information about adding a custom domain to your user pool, see
%% Using Your Own Domain for the Hosted UI.
update_user_pool_domain(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_user_pool_domain(Client, Input, []).
update_user_pool_domain(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateUserPoolDomain">>, Input, Options).

%% @doc Use this API to register a user's entered TOTP code and mark the
%% user's software token MFA status as "verified" if successful.
%%
%% The request takes an access token or a session string, but not both.
verify_software_token(Client, Input)
  when is_map(Client), is_map(Input) ->
    verify_software_token(Client, Input, []).
verify_software_token(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"VerifySoftwareToken">>, Input, Options).

%% @doc Verifies the specified user attributes in the user pool.
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
request(Client, Action, Input0, Options) ->
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
    Proto = maps:get(proto, Client),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
