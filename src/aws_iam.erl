%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Identity and Access Management
%%
%% Identity and Access Management (IAM) is a web service for securely
%% controlling access to Amazon Web Services services.
%%
%% With IAM, you can centrally manage users, security credentials such as
%% access keys, and permissions that control which Amazon Web Services
%% resources users and applications can access. For more information about
%% IAM, see Identity and Access Management (IAM) and the Identity and Access
%% Management User Guide.
-module(aws_iam).

-export([add_client_id_to_open_id_connect_provider/2,
         add_client_id_to_open_id_connect_provider/3,
         add_role_to_instance_profile/2,
         add_role_to_instance_profile/3,
         add_user_to_group/2,
         add_user_to_group/3,
         attach_group_policy/2,
         attach_group_policy/3,
         attach_role_policy/2,
         attach_role_policy/3,
         attach_user_policy/2,
         attach_user_policy/3,
         change_password/2,
         change_password/3,
         create_access_key/2,
         create_access_key/3,
         create_account_alias/2,
         create_account_alias/3,
         create_group/2,
         create_group/3,
         create_instance_profile/2,
         create_instance_profile/3,
         create_login_profile/2,
         create_login_profile/3,
         create_open_id_connect_provider/2,
         create_open_id_connect_provider/3,
         create_policy/2,
         create_policy/3,
         create_policy_version/2,
         create_policy_version/3,
         create_role/2,
         create_role/3,
         create_saml_provider/2,
         create_saml_provider/3,
         create_service_linked_role/2,
         create_service_linked_role/3,
         create_service_specific_credential/2,
         create_service_specific_credential/3,
         create_user/2,
         create_user/3,
         create_virtual_mfa_device/2,
         create_virtual_mfa_device/3,
         deactivate_mfa_device/2,
         deactivate_mfa_device/3,
         delete_access_key/2,
         delete_access_key/3,
         delete_account_alias/2,
         delete_account_alias/3,
         delete_account_password_policy/2,
         delete_account_password_policy/3,
         delete_group/2,
         delete_group/3,
         delete_group_policy/2,
         delete_group_policy/3,
         delete_instance_profile/2,
         delete_instance_profile/3,
         delete_login_profile/2,
         delete_login_profile/3,
         delete_open_id_connect_provider/2,
         delete_open_id_connect_provider/3,
         delete_policy/2,
         delete_policy/3,
         delete_policy_version/2,
         delete_policy_version/3,
         delete_role/2,
         delete_role/3,
         delete_role_permissions_boundary/2,
         delete_role_permissions_boundary/3,
         delete_role_policy/2,
         delete_role_policy/3,
         delete_saml_provider/2,
         delete_saml_provider/3,
         delete_server_certificate/2,
         delete_server_certificate/3,
         delete_service_linked_role/2,
         delete_service_linked_role/3,
         delete_service_specific_credential/2,
         delete_service_specific_credential/3,
         delete_signing_certificate/2,
         delete_signing_certificate/3,
         delete_ssh_public_key/2,
         delete_ssh_public_key/3,
         delete_user/2,
         delete_user/3,
         delete_user_permissions_boundary/2,
         delete_user_permissions_boundary/3,
         delete_user_policy/2,
         delete_user_policy/3,
         delete_virtual_mfa_device/2,
         delete_virtual_mfa_device/3,
         detach_group_policy/2,
         detach_group_policy/3,
         detach_role_policy/2,
         detach_role_policy/3,
         detach_user_policy/2,
         detach_user_policy/3,
         enable_mfa_device/2,
         enable_mfa_device/3,
         generate_credential_report/2,
         generate_credential_report/3,
         generate_organizations_access_report/2,
         generate_organizations_access_report/3,
         generate_service_last_accessed_details/2,
         generate_service_last_accessed_details/3,
         get_access_key_last_used/2,
         get_access_key_last_used/3,
         get_account_authorization_details/2,
         get_account_authorization_details/3,
         get_account_password_policy/2,
         get_account_password_policy/3,
         get_account_summary/2,
         get_account_summary/3,
         get_context_keys_for_custom_policy/2,
         get_context_keys_for_custom_policy/3,
         get_context_keys_for_principal_policy/2,
         get_context_keys_for_principal_policy/3,
         get_credential_report/2,
         get_credential_report/3,
         get_group/2,
         get_group/3,
         get_group_policy/2,
         get_group_policy/3,
         get_instance_profile/2,
         get_instance_profile/3,
         get_login_profile/2,
         get_login_profile/3,
         get_open_id_connect_provider/2,
         get_open_id_connect_provider/3,
         get_organizations_access_report/2,
         get_organizations_access_report/3,
         get_policy/2,
         get_policy/3,
         get_policy_version/2,
         get_policy_version/3,
         get_role/2,
         get_role/3,
         get_role_policy/2,
         get_role_policy/3,
         get_saml_provider/2,
         get_saml_provider/3,
         get_server_certificate/2,
         get_server_certificate/3,
         get_service_last_accessed_details/2,
         get_service_last_accessed_details/3,
         get_service_last_accessed_details_with_entities/2,
         get_service_last_accessed_details_with_entities/3,
         get_service_linked_role_deletion_status/2,
         get_service_linked_role_deletion_status/3,
         get_ssh_public_key/2,
         get_ssh_public_key/3,
         get_user/2,
         get_user/3,
         get_user_policy/2,
         get_user_policy/3,
         list_access_keys/2,
         list_access_keys/3,
         list_account_aliases/2,
         list_account_aliases/3,
         list_attached_group_policies/2,
         list_attached_group_policies/3,
         list_attached_role_policies/2,
         list_attached_role_policies/3,
         list_attached_user_policies/2,
         list_attached_user_policies/3,
         list_entities_for_policy/2,
         list_entities_for_policy/3,
         list_group_policies/2,
         list_group_policies/3,
         list_groups/2,
         list_groups/3,
         list_groups_for_user/2,
         list_groups_for_user/3,
         list_instance_profile_tags/2,
         list_instance_profile_tags/3,
         list_instance_profiles/2,
         list_instance_profiles/3,
         list_instance_profiles_for_role/2,
         list_instance_profiles_for_role/3,
         list_mfa_device_tags/2,
         list_mfa_device_tags/3,
         list_mfa_devices/2,
         list_mfa_devices/3,
         list_open_id_connect_provider_tags/2,
         list_open_id_connect_provider_tags/3,
         list_open_id_connect_providers/2,
         list_open_id_connect_providers/3,
         list_policies/2,
         list_policies/3,
         list_policies_granting_service_access/2,
         list_policies_granting_service_access/3,
         list_policy_tags/2,
         list_policy_tags/3,
         list_policy_versions/2,
         list_policy_versions/3,
         list_role_policies/2,
         list_role_policies/3,
         list_role_tags/2,
         list_role_tags/3,
         list_roles/2,
         list_roles/3,
         list_saml_provider_tags/2,
         list_saml_provider_tags/3,
         list_saml_providers/2,
         list_saml_providers/3,
         list_server_certificate_tags/2,
         list_server_certificate_tags/3,
         list_server_certificates/2,
         list_server_certificates/3,
         list_service_specific_credentials/2,
         list_service_specific_credentials/3,
         list_signing_certificates/2,
         list_signing_certificates/3,
         list_ssh_public_keys/2,
         list_ssh_public_keys/3,
         list_user_policies/2,
         list_user_policies/3,
         list_user_tags/2,
         list_user_tags/3,
         list_users/2,
         list_users/3,
         list_virtual_mfa_devices/2,
         list_virtual_mfa_devices/3,
         put_group_policy/2,
         put_group_policy/3,
         put_role_permissions_boundary/2,
         put_role_permissions_boundary/3,
         put_role_policy/2,
         put_role_policy/3,
         put_user_permissions_boundary/2,
         put_user_permissions_boundary/3,
         put_user_policy/2,
         put_user_policy/3,
         remove_client_id_from_open_id_connect_provider/2,
         remove_client_id_from_open_id_connect_provider/3,
         remove_role_from_instance_profile/2,
         remove_role_from_instance_profile/3,
         remove_user_from_group/2,
         remove_user_from_group/3,
         reset_service_specific_credential/2,
         reset_service_specific_credential/3,
         resync_mfa_device/2,
         resync_mfa_device/3,
         set_default_policy_version/2,
         set_default_policy_version/3,
         set_security_token_service_preferences/2,
         set_security_token_service_preferences/3,
         simulate_custom_policy/2,
         simulate_custom_policy/3,
         simulate_principal_policy/2,
         simulate_principal_policy/3,
         tag_instance_profile/2,
         tag_instance_profile/3,
         tag_mfa_device/2,
         tag_mfa_device/3,
         tag_open_id_connect_provider/2,
         tag_open_id_connect_provider/3,
         tag_policy/2,
         tag_policy/3,
         tag_role/2,
         tag_role/3,
         tag_saml_provider/2,
         tag_saml_provider/3,
         tag_server_certificate/2,
         tag_server_certificate/3,
         tag_user/2,
         tag_user/3,
         untag_instance_profile/2,
         untag_instance_profile/3,
         untag_mfa_device/2,
         untag_mfa_device/3,
         untag_open_id_connect_provider/2,
         untag_open_id_connect_provider/3,
         untag_policy/2,
         untag_policy/3,
         untag_role/2,
         untag_role/3,
         untag_saml_provider/2,
         untag_saml_provider/3,
         untag_server_certificate/2,
         untag_server_certificate/3,
         untag_user/2,
         untag_user/3,
         update_access_key/2,
         update_access_key/3,
         update_account_password_policy/2,
         update_account_password_policy/3,
         update_assume_role_policy/2,
         update_assume_role_policy/3,
         update_group/2,
         update_group/3,
         update_login_profile/2,
         update_login_profile/3,
         update_open_id_connect_provider_thumbprint/2,
         update_open_id_connect_provider_thumbprint/3,
         update_role/2,
         update_role/3,
         update_role_description/2,
         update_role_description/3,
         update_saml_provider/2,
         update_saml_provider/3,
         update_server_certificate/2,
         update_server_certificate/3,
         update_service_specific_credential/2,
         update_service_specific_credential/3,
         update_signing_certificate/2,
         update_signing_certificate/3,
         update_ssh_public_key/2,
         update_ssh_public_key/3,
         update_user/2,
         update_user/3,
         upload_server_certificate/2,
         upload_server_certificate/3,
         upload_signing_certificate/2,
         upload_signing_certificate/3,
         upload_ssh_public_key/2,
         upload_ssh_public_key/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Adds a new client ID (also known as audience) to the list of client
%% IDs already registered for the specified IAM OpenID Connect (OIDC)
%% provider resource.
%%
%% This operation is idempotent; it does not fail or return an error if you
%% add an existing client ID to the provider.
add_client_id_to_open_id_connect_provider(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_client_id_to_open_id_connect_provider(Client, Input, []).
add_client_id_to_open_id_connect_provider(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddClientIDToOpenIDConnectProvider">>, Input, Options).

%% @doc Adds the specified IAM role to the specified instance profile.
%%
%% An instance profile can contain only one role, and this quota cannot be
%% increased. You can remove the existing role and then add a different role
%% to an instance profile. You must then wait for the change to appear across
%% all of Amazon Web Services because of eventual consistency. To force the
%% change, you must disassociate the instance profile and then associate the
%% instance profile, or you can stop your instance and then restart it.
%%
%% The caller of this operation must be granted the `PassRole' permission on
%% the IAM role by a permissions policy.
%%
%% For more information about roles, see Working with roles. For more
%% information about instance profiles, see About instance profiles.
add_role_to_instance_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_role_to_instance_profile(Client, Input, []).
add_role_to_instance_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddRoleToInstanceProfile">>, Input, Options).

%% @doc Adds the specified user to the specified group.
add_user_to_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_user_to_group(Client, Input, []).
add_user_to_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddUserToGroup">>, Input, Options).

%% @doc Attaches the specified managed policy to the specified IAM group.
%%
%% You use this operation to attach a managed policy to a group. To embed an
%% inline policy in a group, use `PutGroupPolicy'.
%%
%% As a best practice, you can validate your IAM policies. To learn more, see
%% Validating IAM policies in the IAM User Guide.
%%
%% For more information about policies, see Managed policies and inline
%% policies in the IAM User Guide.
attach_group_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    attach_group_policy(Client, Input, []).
attach_group_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AttachGroupPolicy">>, Input, Options).

%% @doc Attaches the specified managed policy to the specified IAM role.
%%
%% When you attach a managed policy to a role, the managed policy becomes
%% part of the role's permission (access) policy.
%%
%% You cannot use a managed policy as the role's trust policy. The role's
%% trust policy is created at the same time as the role, using `CreateRole'.
%% You can update a role's trust policy using `UpdateAssumeRolePolicy'.
%%
%% Use this operation to attach a managed policy to a role. To embed an
%% inline policy in a role, use `PutRolePolicy'. For more information about
%% policies, see Managed policies and inline policies in the IAM User Guide.
%%
%% As a best practice, you can validate your IAM policies. To learn more, see
%% Validating IAM policies in the IAM User Guide.
attach_role_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    attach_role_policy(Client, Input, []).
attach_role_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AttachRolePolicy">>, Input, Options).

%% @doc Attaches the specified managed policy to the specified user.
%%
%% You use this operation to attach a managed policy to a user. To embed an
%% inline policy in a user, use `PutUserPolicy'.
%%
%% As a best practice, you can validate your IAM policies. To learn more, see
%% Validating IAM policies in the IAM User Guide.
%%
%% For more information about policies, see Managed policies and inline
%% policies in the IAM User Guide.
attach_user_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    attach_user_policy(Client, Input, []).
attach_user_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AttachUserPolicy">>, Input, Options).

%% @doc Changes the password of the IAM user who is calling this operation.
%%
%% This operation can be performed using the CLI, the Amazon Web Services
%% API, or the My Security Credentials page in the Amazon Web Services
%% Management Console. The Amazon Web Services account root user password is
%% not affected by this operation.
%%
%% Use `UpdateLoginProfile' to use the CLI, the Amazon Web Services API, or
%% the Users page in the IAM console to change the password for any IAM user.
%% For more information about modifying passwords, see Managing passwords in
%% the IAM User Guide.
change_password(Client, Input)
  when is_map(Client), is_map(Input) ->
    change_password(Client, Input, []).
change_password(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ChangePassword">>, Input, Options).

%% @doc Creates a new Amazon Web Services secret access key and corresponding
%% Amazon Web Services access key ID for the specified user.
%%
%% The default status for new keys is `Active'.
%%
%% If you do not specify a user name, IAM determines the user name implicitly
%% based on the Amazon Web Services access key ID signing the request. This
%% operation works for access keys under the Amazon Web Services account.
%% Consequently, you can use this operation to manage Amazon Web Services
%% account root user credentials. This is true even if the Amazon Web
%% Services account has no associated users.
%%
%% For information about quotas on the number of keys you can create, see IAM
%% and STS quotas in the IAM User Guide.
%%
%% To ensure the security of your Amazon Web Services account, the secret
%% access key is accessible only during key and user creation. You must save
%% the key (for example, in a text file) if you want to be able to access it
%% again. If a secret key is lost, you can delete the access keys for the
%% associated user and then create new keys.
create_access_key(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_access_key(Client, Input, []).
create_access_key(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateAccessKey">>, Input, Options).

%% @doc Creates an alias for your Amazon Web Services account.
%%
%% For information about using an Amazon Web Services account alias, see
%% Using an alias for your Amazon Web Services account ID in the IAM User
%% Guide.
create_account_alias(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_account_alias(Client, Input, []).
create_account_alias(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateAccountAlias">>, Input, Options).

%% @doc Creates a new group.
%%
%% For information about the number of groups you can create, see IAM and STS
%% quotas in the IAM User Guide.
create_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_group(Client, Input, []).
create_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateGroup">>, Input, Options).

%% @doc Creates a new instance profile.
%%
%% For information about instance profiles, see Using roles for applications
%% on Amazon EC2 in the IAM User Guide, and Instance profiles in the Amazon
%% EC2 User Guide.
%%
%% For information about the number of instance profiles you can create, see
%% IAM object quotas in the IAM User Guide.
create_instance_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_instance_profile(Client, Input, []).
create_instance_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateInstanceProfile">>, Input, Options).

%% @doc Creates a password for the specified IAM user.
%%
%% A password allows an IAM user to access Amazon Web Services services
%% through the Amazon Web Services Management Console.
%%
%% You can use the CLI, the Amazon Web Services API, or the Users page in the
%% IAM console to create a password for any IAM user. Use `ChangePassword' to
%% update your own existing password in the My Security Credentials page in
%% the Amazon Web Services Management Console.
%%
%% For more information about managing passwords, see Managing passwords in
%% the IAM User Guide.
create_login_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_login_profile(Client, Input, []).
create_login_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateLoginProfile">>, Input, Options).

%% @doc Creates an IAM entity to describe an identity provider (IdP) that
%% supports OpenID Connect (OIDC).
%%
%% The OIDC provider that you create with this operation can be used as a
%% principal in a role's trust policy. Such a policy establishes a trust
%% relationship between Amazon Web Services and the OIDC provider.
%%
%% If you are using an OIDC identity provider from Google, Facebook, or
%% Amazon Cognito, you don't need to create a separate IAM identity provider.
%% These OIDC identity providers are already built-in to Amazon Web Services
%% and are available for your use. Instead, you can move directly to creating
%% new roles using your identity provider. To learn more, see Creating a role
%% for web identity or OpenID connect federation in the IAM User Guide.
%%
%% When you create the IAM OIDC provider, you specify the following:
%%
%% <ul> <li> The URL of the OIDC identity provider (IdP) to trust
%%
%% </li> <li> A list of client IDs (also known as audiences) that identify
%% the application or applications allowed to authenticate using the OIDC
%% provider
%%
%% </li> <li> A list of thumbprints of one or more server certificates that
%% the IdP uses
%%
%% </li> </ul> You get all of this information from the OIDC IdP you want to
%% use to access Amazon Web Services.
%%
%% Amazon Web Services secures communication with some OIDC identity
%% providers (IdPs) through our library of trusted certificate authorities
%% (CAs) instead of using a certificate thumbprint to verify your IdP server
%% certificate. These OIDC IdPs include Google, and those that use an Amazon
%% S3 bucket to host a JSON Web Key Set (JWKS) endpoint. In these cases, your
%% legacy thumbprint remains in your configuration, but is no longer used for
%% validation.
%%
%% The trust for the OIDC provider is derived from the IAM provider that this
%% operation creates. Therefore, it is best to limit access to the
%% `CreateOpenIDConnectProvider' operation to highly privileged users.
create_open_id_connect_provider(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_open_id_connect_provider(Client, Input, []).
create_open_id_connect_provider(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateOpenIDConnectProvider">>, Input, Options).

%% @doc Creates a new managed policy for your Amazon Web Services account.
%%
%% This operation creates a policy version with a version identifier of `v1'
%% and sets v1 as the policy's default version. For more information about
%% policy versions, see Versioning for managed policies in the IAM User
%% Guide.
%%
%% As a best practice, you can validate your IAM policies. To learn more, see
%% Validating IAM policies in the IAM User Guide.
%%
%% For more information about managed policies in general, see Managed
%% policies and inline policies in the IAM User Guide.
create_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_policy(Client, Input, []).
create_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreatePolicy">>, Input, Options).

%% @doc Creates a new version of the specified managed policy.
%%
%% To update a managed policy, you create a new policy version. A managed
%% policy can have up to five versions. If the policy has five versions, you
%% must delete an existing version using `DeletePolicyVersion' before you
%% create a new version.
%%
%% Optionally, you can set the new version as the policy's default version.
%% The default version is the version that is in effect for the IAM users,
%% groups, and roles to which the policy is attached.
%%
%% For more information about managed policy versions, see Versioning for
%% managed policies in the IAM User Guide.
create_policy_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_policy_version(Client, Input, []).
create_policy_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreatePolicyVersion">>, Input, Options).

%% @doc Creates a new role for your Amazon Web Services account.
%%
%% For more information about roles, see IAM roles. For information about
%% quotas for role names and the number of roles you can create, see IAM and
%% STS quotas in the IAM User Guide.
create_role(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_role(Client, Input, []).
create_role(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateRole">>, Input, Options).

%% @doc Creates an IAM resource that describes an identity provider (IdP)
%% that supports SAML 2.0.
%%
%% The SAML provider resource that you create with this operation can be used
%% as a principal in an IAM role's trust policy. Such a policy can enable
%% federated users who sign in using the SAML IdP to assume the role. You can
%% create an IAM role that supports Web-based single sign-on (SSO) to the
%% Amazon Web Services Management Console or one that supports API access to
%% Amazon Web Services.
%%
%% When you create the SAML provider resource, you upload a SAML metadata
%% document that you get from your IdP. That document includes the issuer's
%% name, expiration information, and keys that can be used to validate the
%% SAML authentication response (assertions) that the IdP sends. You must
%% generate the metadata document using the identity management software that
%% is used as your organization's IdP.
%%
%% This operation requires Signature Version 4.
%%
%% For more information, see Enabling SAML 2.0 federated users to access the
%% Amazon Web Services Management Console and About SAML 2.0-based federation
%% in the IAM User Guide.
create_saml_provider(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_saml_provider(Client, Input, []).
create_saml_provider(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateSAMLProvider">>, Input, Options).

%% @doc Creates an IAM role that is linked to a specific Amazon Web Services
%% service.
%%
%% The service controls the attached policies and when the role can be
%% deleted. This helps ensure that the service is not broken by an
%% unexpectedly changed or deleted role, which could put your Amazon Web
%% Services resources into an unknown state. Allowing the service to control
%% the role helps improve service stability and proper cleanup when a service
%% and its role are no longer needed. For more information, see Using
%% service-linked roles in the IAM User Guide.
%%
%% To attach a policy to this service-linked role, you must make the request
%% using the Amazon Web Services service that depends on this role.
create_service_linked_role(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_service_linked_role(Client, Input, []).
create_service_linked_role(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateServiceLinkedRole">>, Input, Options).

%% @doc Generates a set of credentials consisting of a user name and password
%% that can be used to access the service specified in the request.
%%
%% These credentials are generated by IAM, and can be used only for the
%% specified service.
%%
%% You can have a maximum of two sets of service-specific credentials for
%% each supported service per user.
%%
%% You can create service-specific credentials for CodeCommit and Amazon
%% Keyspaces (for Apache Cassandra).
%%
%% You can reset the password to a new service-generated value by calling
%% `ResetServiceSpecificCredential'.
%%
%% For more information about service-specific credentials, see Using IAM
%% with CodeCommit: Git credentials, SSH keys, and Amazon Web Services access
%% keys in the IAM User Guide.
create_service_specific_credential(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_service_specific_credential(Client, Input, []).
create_service_specific_credential(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateServiceSpecificCredential">>, Input, Options).

%% @doc Creates a new IAM user for your Amazon Web Services account.
%%
%% For information about quotas for the number of IAM users you can create,
%% see IAM and STS quotas in the IAM User Guide.
create_user(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_user(Client, Input, []).
create_user(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateUser">>, Input, Options).

%% @doc Creates a new virtual MFA device for the Amazon Web Services account.
%%
%% After creating the virtual MFA, use `EnableMFADevice' to attach the MFA
%% device to an IAM user. For more information about creating and working
%% with virtual MFA devices, see Using a virtual MFA device in the IAM User
%% Guide.
%%
%% For information about the maximum number of MFA devices you can create,
%% see IAM and STS quotas in the IAM User Guide.
%%
%% The seed information contained in the QR code and the Base32 string should
%% be treated like any other secret access information. In other words,
%% protect the seed information as you would your Amazon Web Services access
%% keys or your passwords. After you provision your virtual device, you
%% should ensure that the information is destroyed following secure
%% procedures.
create_virtual_mfa_device(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_virtual_mfa_device(Client, Input, []).
create_virtual_mfa_device(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateVirtualMFADevice">>, Input, Options).

%% @doc Deactivates the specified MFA device and removes it from association
%% with the user name for which it was originally enabled.
%%
%% For more information about creating and working with virtual MFA devices,
%% see Enabling a virtual multi-factor authentication (MFA) device in the IAM
%% User Guide.
deactivate_mfa_device(Client, Input)
  when is_map(Client), is_map(Input) ->
    deactivate_mfa_device(Client, Input, []).
deactivate_mfa_device(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeactivateMFADevice">>, Input, Options).

%% @doc Deletes the access key pair associated with the specified IAM user.
%%
%% If you do not specify a user name, IAM determines the user name implicitly
%% based on the Amazon Web Services access key ID signing the request. This
%% operation works for access keys under the Amazon Web Services account.
%% Consequently, you can use this operation to manage Amazon Web Services
%% account root user credentials even if the Amazon Web Services account has
%% no associated users.
delete_access_key(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_access_key(Client, Input, []).
delete_access_key(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAccessKey">>, Input, Options).

%% @doc Deletes the specified Amazon Web Services account alias.
%%
%% For information about using an Amazon Web Services account alias, see
%% Using an alias for your Amazon Web Services account ID in the IAM User
%% Guide.
delete_account_alias(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_account_alias(Client, Input, []).
delete_account_alias(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAccountAlias">>, Input, Options).

%% @doc Deletes the password policy for the Amazon Web Services account.
%%
%% There are no parameters.
delete_account_password_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_account_password_policy(Client, Input, []).
delete_account_password_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAccountPasswordPolicy">>, Input, Options).

%% @doc Deletes the specified IAM group.
%%
%% The group must not contain any users or have any attached policies.
delete_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_group(Client, Input, []).
delete_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteGroup">>, Input, Options).

%% @doc Deletes the specified inline policy that is embedded in the specified
%% IAM group.
%%
%% A group can also have managed policies attached to it. To detach a managed
%% policy from a group, use `DetachGroupPolicy'. For more information about
%% policies, refer to Managed policies and inline policies in the IAM User
%% Guide.
delete_group_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_group_policy(Client, Input, []).
delete_group_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteGroupPolicy">>, Input, Options).

%% @doc Deletes the specified instance profile.
%%
%% The instance profile must not have an associated role.
%%
%% Make sure that you do not have any Amazon EC2 instances running with the
%% instance profile you are about to delete. Deleting a role or instance
%% profile that is associated with a running instance will break any
%% applications running on the instance.
%%
%% For more information about instance profiles, see About instance profiles.
delete_instance_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_instance_profile(Client, Input, []).
delete_instance_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteInstanceProfile">>, Input, Options).

%% @doc Deletes the password for the specified IAM user, For more
%% information, see Managing passwords for IAM users.
%%
%% You can use the CLI, the Amazon Web Services API, or the Users page in the
%% IAM console to delete a password for any IAM user. You can use
%% `ChangePassword' to update, but not delete, your own password in the My
%% Security Credentials page in the Amazon Web Services Management Console.
%%
%% Deleting a user's password does not prevent a user from accessing Amazon
%% Web Services through the command line interface or the API. To prevent all
%% user access, you must also either make any access keys inactive or delete
%% them. For more information about making keys inactive or deleting them,
%% see `UpdateAccessKey' and `DeleteAccessKey'.
delete_login_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_login_profile(Client, Input, []).
delete_login_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteLoginProfile">>, Input, Options).

%% @doc Deletes an OpenID Connect identity provider (IdP) resource object in
%% IAM.
%%
%% Deleting an IAM OIDC provider resource does not update any roles that
%% reference the provider as a principal in their trust policies. Any attempt
%% to assume a role that references a deleted provider fails.
%%
%% This operation is idempotent; it does not fail or return an error if you
%% call the operation for a provider that does not exist.
delete_open_id_connect_provider(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_open_id_connect_provider(Client, Input, []).
delete_open_id_connect_provider(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteOpenIDConnectProvider">>, Input, Options).

%% @doc Deletes the specified managed policy.
%%
%% Before you can delete a managed policy, you must first detach the policy
%% from all users, groups, and roles that it is attached to. In addition, you
%% must delete all the policy's versions. The following steps describe the
%% process for deleting a managed policy:
%%
%% <ul> <li> Detach the policy from all users, groups, and roles that the
%% policy is attached to, using `DetachUserPolicy', `DetachGroupPolicy', or
%% `DetachRolePolicy'. To list all the users, groups, and roles that a policy
%% is attached to, use `ListEntitiesForPolicy'.
%%
%% </li> <li> Delete all versions of the policy using `DeletePolicyVersion'.
%% To list the policy's versions, use `ListPolicyVersions'. You cannot use
%% `DeletePolicyVersion' to delete the version that is marked as the default
%% version. You delete the policy's default version in the next step of the
%% process.
%%
%% </li> <li> Delete the policy (this automatically deletes the policy's
%% default version) using this operation.
%%
%% </li> </ul> For information about managed policies, see Managed policies
%% and inline policies in the IAM User Guide.
delete_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_policy(Client, Input, []).
delete_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeletePolicy">>, Input, Options).

%% @doc Deletes the specified version from the specified managed policy.
%%
%% You cannot delete the default version from a policy using this operation.
%% To delete the default version from a policy, use `DeletePolicy'. To find
%% out which version of a policy is marked as the default version, use
%% `ListPolicyVersions'.
%%
%% For information about versions for managed policies, see Versioning for
%% managed policies in the IAM User Guide.
delete_policy_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_policy_version(Client, Input, []).
delete_policy_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeletePolicyVersion">>, Input, Options).

%% @doc Deletes the specified role.
%%
%% The role must not have any policies attached. For more information about
%% roles, see Working with roles.
%%
%% Make sure that you do not have any Amazon EC2 instances running with the
%% role you are about to delete. Deleting a role or instance profile that is
%% associated with a running instance will break any applications running on
%% the instance.
delete_role(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_role(Client, Input, []).
delete_role(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteRole">>, Input, Options).

%% @doc Deletes the permissions boundary for the specified IAM role.
%%
%% Deleting the permissions boundary for a role might increase its
%% permissions. For example, it might allow anyone who assumes the role to
%% perform all the actions granted in its permissions policies.
delete_role_permissions_boundary(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_role_permissions_boundary(Client, Input, []).
delete_role_permissions_boundary(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteRolePermissionsBoundary">>, Input, Options).

%% @doc Deletes the specified inline policy that is embedded in the specified
%% IAM role.
%%
%% A role can also have managed policies attached to it. To detach a managed
%% policy from a role, use `DetachRolePolicy'. For more information about
%% policies, refer to Managed policies and inline policies in the IAM User
%% Guide.
delete_role_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_role_policy(Client, Input, []).
delete_role_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteRolePolicy">>, Input, Options).

%% @doc Deletes a SAML provider resource in IAM.
%%
%% Deleting the provider resource from IAM does not update any roles that
%% reference the SAML provider resource's ARN as a principal in their trust
%% policies. Any attempt to assume a role that references a non-existent
%% provider resource ARN fails.
%%
%% This operation requires Signature Version 4.
delete_saml_provider(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_saml_provider(Client, Input, []).
delete_saml_provider(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteSAMLProvider">>, Input, Options).

%% @doc Deletes the specified server certificate.
%%
%% For more information about working with server certificates, see Working
%% with server certificates in the IAM User Guide. This topic also includes a
%% list of Amazon Web Services services that can use the server certificates
%% that you manage with IAM.
%%
%% If you are using a server certificate with Elastic Load Balancing,
%% deleting the certificate could have implications for your application. If
%% Elastic Load Balancing doesn't detect the deletion of bound certificates,
%% it may continue to use the certificates. This could cause Elastic Load
%% Balancing to stop accepting traffic. We recommend that you remove the
%% reference to the certificate from Elastic Load Balancing before using this
%% command to delete the certificate. For more information, see
%% DeleteLoadBalancerListeners in the Elastic Load Balancing API Reference.
delete_server_certificate(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_server_certificate(Client, Input, []).
delete_server_certificate(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteServerCertificate">>, Input, Options).

%% @doc Submits a service-linked role deletion request and returns a
%% `DeletionTaskId', which you can use to check the status of the deletion.
%%
%% Before you call this operation, confirm that the role has no active
%% sessions and that any resources used by the role in the linked service are
%% deleted. If you call this operation more than once for the same
%% service-linked role and an earlier deletion task is not complete, then the
%% `DeletionTaskId' of the earlier request is returned.
%%
%% If you submit a deletion request for a service-linked role whose linked
%% service is still accessing a resource, then the deletion task fails. If it
%% fails, the `GetServiceLinkedRoleDeletionStatus' operation returns the
%% reason for the failure, usually including the resources that must be
%% deleted. To delete the service-linked role, you must first remove those
%% resources from the linked service and then submit the deletion request
%% again. Resources are specific to the service that is linked to the role.
%% For more information about removing resources from a service, see the
%% Amazon Web Services documentation for your service.
%%
%% For more information about service-linked roles, see Roles terms and
%% concepts: Amazon Web Services service-linked role in the IAM User Guide.
delete_service_linked_role(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_service_linked_role(Client, Input, []).
delete_service_linked_role(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteServiceLinkedRole">>, Input, Options).

%% @doc Deletes the specified service-specific credential.
delete_service_specific_credential(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_service_specific_credential(Client, Input, []).
delete_service_specific_credential(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteServiceSpecificCredential">>, Input, Options).

%% @doc Deletes a signing certificate associated with the specified IAM user.
%%
%% If you do not specify a user name, IAM determines the user name implicitly
%% based on the Amazon Web Services access key ID signing the request. This
%% operation works for access keys under the Amazon Web Services account.
%% Consequently, you can use this operation to manage Amazon Web Services
%% account root user credentials even if the Amazon Web Services account has
%% no associated IAM users.
delete_signing_certificate(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_signing_certificate(Client, Input, []).
delete_signing_certificate(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteSigningCertificate">>, Input, Options).

%% @doc Deletes the specified SSH public key.
%%
%% The SSH public key deleted by this operation is used only for
%% authenticating the associated IAM user to an CodeCommit repository. For
%% more information about using SSH keys to authenticate to an CodeCommit
%% repository, see Set up CodeCommit for SSH connections in the CodeCommit
%% User Guide.
delete_ssh_public_key(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_ssh_public_key(Client, Input, []).
delete_ssh_public_key(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteSSHPublicKey">>, Input, Options).

%% @doc Deletes the specified IAM user.
%%
%% Unlike the Amazon Web Services Management Console, when you delete a user
%% programmatically, you must delete the items attached to the user manually,
%% or the deletion fails. For more information, see Deleting an IAM user.
%% Before attempting to delete a user, remove the following items:
%%
%% <ul> <li> Password (`DeleteLoginProfile')
%%
%% </li> <li> Access keys (`DeleteAccessKey')
%%
%% </li> <li> Signing certificate (`DeleteSigningCertificate')
%%
%% </li> <li> SSH public key (`DeleteSSHPublicKey')
%%
%% </li> <li> Git credentials (`DeleteServiceSpecificCredential')
%%
%% </li> <li> Multi-factor authentication (MFA) device
%% (`DeactivateMFADevice', `DeleteVirtualMFADevice')
%%
%% </li> <li> Inline policies (`DeleteUserPolicy')
%%
%% </li> <li> Attached managed policies (`DetachUserPolicy')
%%
%% </li> <li> Group memberships (`RemoveUserFromGroup')
%%
%% </li> </ul>
delete_user(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_user(Client, Input, []).
delete_user(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteUser">>, Input, Options).

%% @doc Deletes the permissions boundary for the specified IAM user.
%%
%% Deleting the permissions boundary for a user might increase its
%% permissions by allowing the user to perform all the actions granted in its
%% permissions policies.
delete_user_permissions_boundary(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_user_permissions_boundary(Client, Input, []).
delete_user_permissions_boundary(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteUserPermissionsBoundary">>, Input, Options).

%% @doc Deletes the specified inline policy that is embedded in the specified
%% IAM user.
%%
%% A user can also have managed policies attached to it. To detach a managed
%% policy from a user, use `DetachUserPolicy'. For more information about
%% policies, refer to Managed policies and inline policies in the IAM User
%% Guide.
delete_user_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_user_policy(Client, Input, []).
delete_user_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteUserPolicy">>, Input, Options).

%% @doc Deletes a virtual MFA device.
%%
%% You must deactivate a user's virtual MFA device before you can delete it.
%% For information about deactivating MFA devices, see `DeactivateMFADevice'.
delete_virtual_mfa_device(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_virtual_mfa_device(Client, Input, []).
delete_virtual_mfa_device(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteVirtualMFADevice">>, Input, Options).

%% @doc Removes the specified managed policy from the specified IAM group.
%%
%% A group can also have inline policies embedded with it. To delete an
%% inline policy, use `DeleteGroupPolicy'. For information about policies,
%% see Managed policies and inline policies in the IAM User Guide.
detach_group_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    detach_group_policy(Client, Input, []).
detach_group_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DetachGroupPolicy">>, Input, Options).

%% @doc Removes the specified managed policy from the specified role.
%%
%% A role can also have inline policies embedded with it. To delete an inline
%% policy, use `DeleteRolePolicy'. For information about policies, see
%% Managed policies and inline policies in the IAM User Guide.
detach_role_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    detach_role_policy(Client, Input, []).
detach_role_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DetachRolePolicy">>, Input, Options).

%% @doc Removes the specified managed policy from the specified user.
%%
%% A user can also have inline policies embedded with it. To delete an inline
%% policy, use `DeleteUserPolicy'. For information about policies, see
%% Managed policies and inline policies in the IAM User Guide.
detach_user_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    detach_user_policy(Client, Input, []).
detach_user_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DetachUserPolicy">>, Input, Options).

%% @doc Enables the specified MFA device and associates it with the specified
%% IAM user.
%%
%% When enabled, the MFA device is required for every subsequent login by the
%% IAM user associated with the device.
enable_mfa_device(Client, Input)
  when is_map(Client), is_map(Input) ->
    enable_mfa_device(Client, Input, []).
enable_mfa_device(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"EnableMFADevice">>, Input, Options).

%% @doc Generates a credential report for the Amazon Web Services account.
%%
%% For more information about the credential report, see Getting credential
%% reports in the IAM User Guide.
generate_credential_report(Client, Input)
  when is_map(Client), is_map(Input) ->
    generate_credential_report(Client, Input, []).
generate_credential_report(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GenerateCredentialReport">>, Input, Options).

%% @doc Generates a report for service last accessed data for Organizations.
%%
%% You can generate a report for any entities (organization root,
%% organizational unit, or account) or policies in your organization.
%%
%% To call this operation, you must be signed in using your Organizations
%% management account credentials. You can use your long-term IAM user or
%% root user credentials, or temporary credentials from assuming an IAM role.
%% SCPs must be enabled for your organization root. You must have the
%% required IAM and Organizations permissions. For more information, see
%% Refining permissions using service last accessed data in the IAM User
%% Guide.
%%
%% You can generate a service last accessed data report for entities by
%% specifying only the entity's path. This data includes a list of services
%% that are allowed by any service control policies (SCPs) that apply to the
%% entity.
%%
%% You can generate a service last accessed data report for a policy by
%% specifying an entity's path and an optional Organizations policy ID. This
%% data includes a list of services that are allowed by the specified SCP.
%%
%% For each service in both report types, the data includes the most recent
%% account activity that the policy allows to account principals in the
%% entity or the entity's children. For important information about the data,
%% reporting period, permissions required, troubleshooting, and supported
%% Regions see Reducing permissions using service last accessed data in the
%% IAM User Guide.
%%
%% The data includes all attempts to access Amazon Web Services, not just the
%% successful ones. This includes all attempts that were made using the
%% Amazon Web Services Management Console, the Amazon Web Services API
%% through any of the SDKs, or any of the command line tools. An unexpected
%% entry in the service last accessed data does not mean that an account has
%% been compromised, because the request might have been denied. Refer to
%% your CloudTrail logs as the authoritative source for information about all
%% API calls and whether they were successful or denied access. For more
%% information, see Logging IAM events with CloudTrail in the IAM User Guide.
%%
%% This operation returns a `JobId'. Use this parameter in the `
%% `GetOrganizationsAccessReport' ' operation to check the status of the
%% report generation. To check the status of this request, use the `JobId'
%% parameter in the ` `GetOrganizationsAccessReport' ' operation and test the
%% `JobStatus' response parameter. When the job is complete, you can retrieve
%% the report.
%%
%% To generate a service last accessed data report for entities, specify an
%% entity path without specifying the optional Organizations policy ID. The
%% type of entity that you specify determines the data returned in the
%% report.
%%
%% <ul> <li> Root – When you specify the organizations root as the entity,
%% the resulting report lists all of the services allowed by SCPs that are
%% attached to your root. For each service, the report includes data for all
%% accounts in your organization except the management account, because the
%% management account is not limited by SCPs.
%%
%% </li> <li> OU – When you specify an organizational unit (OU) as the
%% entity, the resulting report lists all of the services allowed by SCPs
%% that are attached to the OU and its parents. For each service, the report
%% includes data for all accounts in the OU or its children. This data
%% excludes the management account, because the management account is not
%% limited by SCPs.
%%
%% </li> <li> management account – When you specify the management account,
%% the resulting report lists all Amazon Web Services services, because the
%% management account is not limited by SCPs. For each service, the report
%% includes data for only the management account.
%%
%% </li> <li> Account – When you specify another account as the entity, the
%% resulting report lists all of the services allowed by SCPs that are
%% attached to the account and its parents. For each service, the report
%% includes data for only the specified account.
%%
%% </li> </ul> To generate a service last accessed data report for policies,
%% specify an entity path and the optional Organizations policy ID. The type
%% of entity that you specify determines the data returned for each service.
%%
%% <ul> <li> Root – When you specify the root entity and a policy ID, the
%% resulting report lists all of the services that are allowed by the
%% specified SCP. For each service, the report includes data for all accounts
%% in your organization to which the SCP applies. This data excludes the
%% management account, because the management account is not limited by SCPs.
%% If the SCP is not attached to any entities in the organization, then the
%% report will return a list of services with no data.
%%
%% </li> <li> OU – When you specify an OU entity and a policy ID, the
%% resulting report lists all of the services that are allowed by the
%% specified SCP. For each service, the report includes data for all accounts
%% in the OU or its children to which the SCP applies. This means that other
%% accounts outside the OU that are affected by the SCP might not be included
%% in the data. This data excludes the management account, because the
%% management account is not limited by SCPs. If the SCP is not attached to
%% the OU or one of its children, the report will return a list of services
%% with no data.
%%
%% </li> <li> management account – When you specify the management account,
%% the resulting report lists all Amazon Web Services services, because the
%% management account is not limited by SCPs. If you specify a policy ID in
%% the CLI or API, the policy is ignored. For each service, the report
%% includes data for only the management account.
%%
%% </li> <li> Account – When you specify another account entity and a policy
%% ID, the resulting report lists all of the services that are allowed by the
%% specified SCP. For each service, the report includes data for only the
%% specified account. This means that other accounts in the organization that
%% are affected by the SCP might not be included in the data. If the SCP is
%% not attached to the account, the report will return a list of services
%% with no data.
%%
%% </li> </ul> Service last accessed data does not use other policy types
%% when determining whether a principal could access a service. These other
%% policy types include identity-based policies, resource-based policies,
%% access control lists, IAM permissions boundaries, and STS assume role
%% policies. It only applies SCP logic. For more about the evaluation of
%% policy types, see Evaluating policies in the IAM User Guide.
%%
%% For more information about service last accessed data, see Reducing policy
%% scope by viewing user activity in the IAM User Guide.
generate_organizations_access_report(Client, Input)
  when is_map(Client), is_map(Input) ->
    generate_organizations_access_report(Client, Input, []).
generate_organizations_access_report(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GenerateOrganizationsAccessReport">>, Input, Options).

%% @doc Generates a report that includes details about when an IAM resource
%% (user, group, role, or policy) was last used in an attempt to access
%% Amazon Web Services services.
%%
%% Recent activity usually appears within four hours. IAM reports activity
%% for at least the last 400 days, or less if your Region began supporting
%% this feature within the last year. For more information, see Regions where
%% data is tracked.
%%
%% The service last accessed data includes all attempts to access an Amazon
%% Web Services API, not just the successful ones. This includes all attempts
%% that were made using the Amazon Web Services Management Console, the
%% Amazon Web Services API through any of the SDKs, or any of the command
%% line tools. An unexpected entry in the service last accessed data does not
%% mean that your account has been compromised, because the request might
%% have been denied. Refer to your CloudTrail logs as the authoritative
%% source for information about all API calls and whether they were
%% successful or denied access. For more information, see Logging IAM events
%% with CloudTrail in the IAM User Guide.
%%
%% The `GenerateServiceLastAccessedDetails' operation returns a `JobId'. Use
%% this parameter in the following operations to retrieve the following
%% details from your report:
%%
%% <ul> <li> `GetServiceLastAccessedDetails' – Use this operation for users,
%% groups, roles, or policies to list every Amazon Web Services service that
%% the resource could access using permissions policies. For each service,
%% the response includes information about the most recent access attempt.
%%
%% The `JobId' returned by `GenerateServiceLastAccessedDetail' must be used
%% by the same role within a session, or by the same user when used to call
%% `GetServiceLastAccessedDetail'.
%%
%% </li> <li> `GetServiceLastAccessedDetailsWithEntities' – Use this
%% operation for groups and policies to list information about the associated
%% entities (users or roles) that attempted to access a specific Amazon Web
%% Services service.
%%
%% </li> </ul> To check the status of the
%% `GenerateServiceLastAccessedDetails' request, use the `JobId' parameter in
%% the same operations and test the `JobStatus' response parameter.
%%
%% For additional information about the permissions policies that allow an
%% identity (user, group, or role) to access specific services, use the
%% `ListPoliciesGrantingServiceAccess' operation.
%%
%% Service last accessed data does not use other policy types when
%% determining whether a resource could access a service. These other policy
%% types include resource-based policies, access control lists, Organizations
%% policies, IAM permissions boundaries, and STS assume role policies. It
%% only applies permissions policy logic. For more about the evaluation of
%% policy types, see Evaluating policies in the IAM User Guide.
%%
%% For more information about service and action last accessed data, see
%% Reducing permissions using service last accessed data in the IAM User
%% Guide.
generate_service_last_accessed_details(Client, Input)
  when is_map(Client), is_map(Input) ->
    generate_service_last_accessed_details(Client, Input, []).
generate_service_last_accessed_details(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GenerateServiceLastAccessedDetails">>, Input, Options).

%% @doc Retrieves information about when the specified access key was last
%% used.
%%
%% The information includes the date and time of last use, along with the
%% Amazon Web Services service and Region that were specified in the last
%% request made with that key.
get_access_key_last_used(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_access_key_last_used(Client, Input, []).
get_access_key_last_used(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAccessKeyLastUsed">>, Input, Options).

%% @doc Retrieves information about all IAM users, groups, roles, and
%% policies in your Amazon Web Services account, including their
%% relationships to one another.
%%
%% Use this operation to obtain a snapshot of the configuration of IAM
%% permissions (users, groups, roles, and policies) in your account.
%%
%% Policies returned by this operation are URL-encoded compliant with RFC
%% 3986. You can use a URL decoding method to convert the policy back to
%% plain JSON text. For example, if you use Java, you can use the `decode'
%% method of the `java.net.URLDecoder' utility class in the Java SDK. Other
%% languages and SDKs provide similar functionality.
%%
%% You can optionally filter the results using the `Filter' parameter. You
%% can paginate the results using the `MaxItems' and `Marker' parameters.
get_account_authorization_details(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_account_authorization_details(Client, Input, []).
get_account_authorization_details(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAccountAuthorizationDetails">>, Input, Options).

%% @doc Retrieves the password policy for the Amazon Web Services account.
%%
%% This tells you the complexity requirements and mandatory rotation periods
%% for the IAM user passwords in your account. For more information about
%% using a password policy, see Managing an IAM password policy.
get_account_password_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_account_password_policy(Client, Input, []).
get_account_password_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAccountPasswordPolicy">>, Input, Options).

%% @doc Retrieves information about IAM entity usage and IAM quotas in the
%% Amazon Web Services account.
%%
%% For information about IAM quotas, see IAM and STS quotas in the IAM User
%% Guide.
get_account_summary(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_account_summary(Client, Input, []).
get_account_summary(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAccountSummary">>, Input, Options).

%% @doc Gets a list of all of the context keys referenced in the input
%% policies.
%%
%% The policies are supplied as a list of one or more strings. To get the
%% context keys from policies associated with an IAM user, group, or role,
%% use `GetContextKeysForPrincipalPolicy'.
%%
%% Context keys are variables maintained by Amazon Web Services and its
%% services that provide details about the context of an API query request.
%% Context keys can be evaluated by testing against a value specified in an
%% IAM policy. Use `GetContextKeysForCustomPolicy' to understand what key
%% names and values you must supply when you call `SimulateCustomPolicy'.
%% Note that all parameters are shown in unencoded form here for clarity but
%% must be URL encoded to be included as a part of a real HTML request.
get_context_keys_for_custom_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_context_keys_for_custom_policy(Client, Input, []).
get_context_keys_for_custom_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetContextKeysForCustomPolicy">>, Input, Options).

%% @doc Gets a list of all of the context keys referenced in all the IAM
%% policies that are attached to the specified IAM entity.
%%
%% The entity can be an IAM user, group, or role. If you specify a user, then
%% the request also includes all of the policies attached to groups that the
%% user is a member of.
%%
%% You can optionally include a list of one or more additional policies,
%% specified as strings. If you want to include only a list of policies by
%% string, use `GetContextKeysForCustomPolicy' instead.
%%
%% Note: This operation discloses information about the permissions granted
%% to other users. If you do not want users to see other user's permissions,
%% then consider allowing them to use `GetContextKeysForCustomPolicy'
%% instead.
%%
%% Context keys are variables maintained by Amazon Web Services and its
%% services that provide details about the context of an API query request.
%% Context keys can be evaluated by testing against a value in an IAM policy.
%% Use `GetContextKeysForPrincipalPolicy' to understand what key names and
%% values you must supply when you call `SimulatePrincipalPolicy'.
get_context_keys_for_principal_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_context_keys_for_principal_policy(Client, Input, []).
get_context_keys_for_principal_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetContextKeysForPrincipalPolicy">>, Input, Options).

%% @doc Retrieves a credential report for the Amazon Web Services account.
%%
%% For more information about the credential report, see Getting credential
%% reports in the IAM User Guide.
get_credential_report(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_credential_report(Client, Input, []).
get_credential_report(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetCredentialReport">>, Input, Options).

%% @doc Returns a list of IAM users that are in the specified IAM group.
%%
%% You can paginate the results using the `MaxItems' and `Marker' parameters.
get_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_group(Client, Input, []).
get_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetGroup">>, Input, Options).

%% @doc Retrieves the specified inline policy document that is embedded in
%% the specified IAM group.
%%
%% Policies returned by this operation are URL-encoded compliant with RFC
%% 3986. You can use a URL decoding method to convert the policy back to
%% plain JSON text. For example, if you use Java, you can use the `decode'
%% method of the `java.net.URLDecoder' utility class in the Java SDK. Other
%% languages and SDKs provide similar functionality.
%%
%% An IAM group can also have managed policies attached to it. To retrieve a
%% managed policy document that is attached to a group, use `GetPolicy' to
%% determine the policy's default version, then use `GetPolicyVersion' to
%% retrieve the policy document.
%%
%% For more information about policies, see Managed policies and inline
%% policies in the IAM User Guide.
get_group_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_group_policy(Client, Input, []).
get_group_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetGroupPolicy">>, Input, Options).

%% @doc Retrieves information about the specified instance profile, including
%% the instance profile's path, GUID, ARN, and role.
%%
%% For more information about instance profiles, see About instance profiles
%% in the IAM User Guide.
get_instance_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_instance_profile(Client, Input, []).
get_instance_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetInstanceProfile">>, Input, Options).

%% @doc Retrieves the user name for the specified IAM user.
%%
%% A login profile is created when you create a password for the user to
%% access the Amazon Web Services Management Console. If the user does not
%% exist or does not have a password, the operation returns a 404
%% (`NoSuchEntity') error.
%%
%% If you create an IAM user with access to the console, the `CreateDate'
%% reflects the date you created the initial password for the user.
%%
%% If you create an IAM user with programmatic access, and then later add a
%% password for the user to access the Amazon Web Services Management
%% Console, the `CreateDate' reflects the initial password creation date. A
%% user with programmatic access does not have a login profile unless you
%% create a password for the user to access the Amazon Web Services
%% Management Console.
get_login_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_login_profile(Client, Input, []).
get_login_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetLoginProfile">>, Input, Options).

%% @doc Returns information about the specified OpenID Connect (OIDC)
%% provider resource object in IAM.
get_open_id_connect_provider(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_open_id_connect_provider(Client, Input, []).
get_open_id_connect_provider(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetOpenIDConnectProvider">>, Input, Options).

%% @doc Retrieves the service last accessed data report for Organizations
%% that was previously generated using the `
%% `GenerateOrganizationsAccessReport' ' operation.
%%
%% This operation retrieves the status of your report job and the report
%% contents.
%%
%% Depending on the parameters that you passed when you generated the report,
%% the data returned could include different information. For details, see
%% `GenerateOrganizationsAccessReport'.
%%
%% To call this operation, you must be signed in to the management account in
%% your organization. SCPs must be enabled for your organization root. You
%% must have permissions to perform this operation. For more information, see
%% Refining permissions using service last accessed data in the IAM User
%% Guide.
%%
%% For each service that principals in an account (root users, IAM users, or
%% IAM roles) could access using SCPs, the operation returns details about
%% the most recent access attempt. If there was no attempt, the service is
%% listed without details about the most recent attempt to access the
%% service. If the operation fails, it returns the reason that it failed.
%%
%% By default, the list is sorted by service namespace.
get_organizations_access_report(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_organizations_access_report(Client, Input, []).
get_organizations_access_report(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetOrganizationsAccessReport">>, Input, Options).

%% @doc Retrieves information about the specified managed policy, including
%% the policy's default version and the total number of IAM users, groups,
%% and roles to which the policy is attached.
%%
%% To retrieve the list of the specific users, groups, and roles that the
%% policy is attached to, use `ListEntitiesForPolicy'. This operation returns
%% metadata about the policy. To retrieve the actual policy document for a
%% specific version of the policy, use `GetPolicyVersion'.
%%
%% This operation retrieves information about managed policies. To retrieve
%% information about an inline policy that is embedded with an IAM user,
%% group, or role, use `GetUserPolicy', `GetGroupPolicy', or `GetRolePolicy'.
%%
%% For more information about policies, see Managed policies and inline
%% policies in the IAM User Guide.
get_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_policy(Client, Input, []).
get_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetPolicy">>, Input, Options).

%% @doc Retrieves information about the specified version of the specified
%% managed policy, including the policy document.
%%
%% Policies returned by this operation are URL-encoded compliant with RFC
%% 3986. You can use a URL decoding method to convert the policy back to
%% plain JSON text. For example, if you use Java, you can use the `decode'
%% method of the `java.net.URLDecoder' utility class in the Java SDK. Other
%% languages and SDKs provide similar functionality.
%%
%% To list the available versions for a policy, use `ListPolicyVersions'.
%%
%% This operation retrieves information about managed policies. To retrieve
%% information about an inline policy that is embedded in a user, group, or
%% role, use `GetUserPolicy', `GetGroupPolicy', or `GetRolePolicy'.
%%
%% For more information about the types of policies, see Managed policies and
%% inline policies in the IAM User Guide.
%%
%% For more information about managed policy versions, see Versioning for
%% managed policies in the IAM User Guide.
get_policy_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_policy_version(Client, Input, []).
get_policy_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetPolicyVersion">>, Input, Options).

%% @doc Retrieves information about the specified role, including the role's
%% path, GUID, ARN, and the role's trust policy that grants permission to
%% assume the role.
%%
%% For more information about roles, see Working with roles.
%%
%% Policies returned by this operation are URL-encoded compliant with RFC
%% 3986. You can use a URL decoding method to convert the policy back to
%% plain JSON text. For example, if you use Java, you can use the `decode'
%% method of the `java.net.URLDecoder' utility class in the Java SDK. Other
%% languages and SDKs provide similar functionality.
get_role(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_role(Client, Input, []).
get_role(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRole">>, Input, Options).

%% @doc Retrieves the specified inline policy document that is embedded with
%% the specified IAM role.
%%
%% Policies returned by this operation are URL-encoded compliant with RFC
%% 3986. You can use a URL decoding method to convert the policy back to
%% plain JSON text. For example, if you use Java, you can use the `decode'
%% method of the `java.net.URLDecoder' utility class in the Java SDK. Other
%% languages and SDKs provide similar functionality.
%%
%% An IAM role can also have managed policies attached to it. To retrieve a
%% managed policy document that is attached to a role, use `GetPolicy' to
%% determine the policy's default version, then use `GetPolicyVersion' to
%% retrieve the policy document.
%%
%% For more information about policies, see Managed policies and inline
%% policies in the IAM User Guide.
%%
%% For more information about roles, see Using roles to delegate permissions
%% and federate identities.
get_role_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_role_policy(Client, Input, []).
get_role_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRolePolicy">>, Input, Options).

%% @doc Returns the SAML provider metadocument that was uploaded when the IAM
%% SAML provider resource object was created or updated.
%%
%% This operation requires Signature Version 4.
get_saml_provider(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_saml_provider(Client, Input, []).
get_saml_provider(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSAMLProvider">>, Input, Options).

%% @doc Retrieves information about the specified server certificate stored
%% in IAM.
%%
%% For more information about working with server certificates, see Working
%% with server certificates in the IAM User Guide. This topic includes a list
%% of Amazon Web Services services that can use the server certificates that
%% you manage with IAM.
get_server_certificate(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_server_certificate(Client, Input, []).
get_server_certificate(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetServerCertificate">>, Input, Options).

%% @doc Retrieves a service last accessed report that was created using the
%% `GenerateServiceLastAccessedDetails' operation.
%%
%% You can use the `JobId' parameter in `GetServiceLastAccessedDetails' to
%% retrieve the status of your report job. When the report is complete, you
%% can retrieve the generated report. The report includes a list of Amazon
%% Web Services services that the resource (user, group, role, or managed
%% policy) can access.
%%
%% Service last accessed data does not use other policy types when
%% determining whether a resource could access a service. These other policy
%% types include resource-based policies, access control lists, Organizations
%% policies, IAM permissions boundaries, and STS assume role policies. It
%% only applies permissions policy logic. For more about the evaluation of
%% policy types, see Evaluating policies in the IAM User Guide.
%%
%% For each service that the resource could access using permissions
%% policies, the operation returns details about the most recent access
%% attempt. If there was no attempt, the service is listed without details
%% about the most recent attempt to access the service. If the operation
%% fails, the `GetServiceLastAccessedDetails' operation returns the reason
%% that it failed.
%%
%% The `GetServiceLastAccessedDetails' operation returns a list of services.
%% This list includes the number of entities that have attempted to access
%% the service and the date and time of the last attempt. It also returns the
%% ARN of the following entity, depending on the resource ARN that you used
%% to generate the report:
%%
%% <ul> <li> User – Returns the user ARN that you used to generate the report
%%
%% </li> <li> Group – Returns the ARN of the group member (user) that last
%% attempted to access the service
%%
%% </li> <li> Role – Returns the role ARN that you used to generate the
%% report
%%
%% </li> <li> Policy – Returns the ARN of the user or role that last used the
%% policy to attempt to access the service
%%
%% </li> </ul> By default, the list is sorted by service namespace.
%%
%% If you specified `ACTION_LEVEL' granularity when you generated the report,
%% this operation returns service and action last accessed data. This
%% includes the most recent access attempt for each tracked action within a
%% service. Otherwise, this operation returns only service data.
%%
%% For more information about service and action last accessed data, see
%% Reducing permissions using service last accessed data in the IAM User
%% Guide.
get_service_last_accessed_details(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_service_last_accessed_details(Client, Input, []).
get_service_last_accessed_details(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetServiceLastAccessedDetails">>, Input, Options).

%% @doc After you generate a group or policy report using the
%% `GenerateServiceLastAccessedDetails' operation, you can use the `JobId'
%% parameter in `GetServiceLastAccessedDetailsWithEntities'.
%%
%% This operation retrieves the status of your report job and a list of
%% entities that could have used group or policy permissions to access the
%% specified service.
%%
%% <ul> <li> Group – For a group report, this operation returns a list of
%% users in the group that could have used the group’s policies in an attempt
%% to access the service.
%%
%% </li> <li> Policy – For a policy report, this operation returns a list of
%% entities (users or roles) that could have used the policy in an attempt to
%% access the service.
%%
%% </li> </ul> You can also use this operation for user or role reports to
%% retrieve details about those entities.
%%
%% If the operation fails, the `GetServiceLastAccessedDetailsWithEntities'
%% operation returns the reason that it failed.
%%
%% By default, the list of associated entities is sorted by date, with the
%% most recent access listed first.
get_service_last_accessed_details_with_entities(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_service_last_accessed_details_with_entities(Client, Input, []).
get_service_last_accessed_details_with_entities(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetServiceLastAccessedDetailsWithEntities">>, Input, Options).

%% @doc Retrieves the status of your service-linked role deletion.
%%
%% After you use `DeleteServiceLinkedRole' to submit a service-linked role
%% for deletion, you can use the `DeletionTaskId' parameter in
%% `GetServiceLinkedRoleDeletionStatus' to check the status of the deletion.
%% If the deletion fails, this operation returns the reason that it failed,
%% if that information is returned by the service.
get_service_linked_role_deletion_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_service_linked_role_deletion_status(Client, Input, []).
get_service_linked_role_deletion_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetServiceLinkedRoleDeletionStatus">>, Input, Options).

%% @doc Retrieves the specified SSH public key, including metadata about the
%% key.
%%
%% The SSH public key retrieved by this operation is used only for
%% authenticating the associated IAM user to an CodeCommit repository. For
%% more information about using SSH keys to authenticate to an CodeCommit
%% repository, see Set up CodeCommit for SSH connections in the CodeCommit
%% User Guide.
get_ssh_public_key(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_ssh_public_key(Client, Input, []).
get_ssh_public_key(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSSHPublicKey">>, Input, Options).

%% @doc Retrieves information about the specified IAM user, including the
%% user's creation date, path, unique ID, and ARN.
%%
%% If you do not specify a user name, IAM determines the user name implicitly
%% based on the Amazon Web Services access key ID used to sign the request to
%% this operation.
get_user(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_user(Client, Input, []).
get_user(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetUser">>, Input, Options).

%% @doc Retrieves the specified inline policy document that is embedded in
%% the specified IAM user.
%%
%% Policies returned by this operation are URL-encoded compliant with RFC
%% 3986. You can use a URL decoding method to convert the policy back to
%% plain JSON text. For example, if you use Java, you can use the `decode'
%% method of the `java.net.URLDecoder' utility class in the Java SDK. Other
%% languages and SDKs provide similar functionality.
%%
%% An IAM user can also have managed policies attached to it. To retrieve a
%% managed policy document that is attached to a user, use `GetPolicy' to
%% determine the policy's default version. Then use `GetPolicyVersion' to
%% retrieve the policy document.
%%
%% For more information about policies, see Managed policies and inline
%% policies in the IAM User Guide.
get_user_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_user_policy(Client, Input, []).
get_user_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetUserPolicy">>, Input, Options).

%% @doc Returns information about the access key IDs associated with the
%% specified IAM user.
%%
%% If there is none, the operation returns an empty list.
%%
%% Although each user is limited to a small number of keys, you can still
%% paginate the results using the `MaxItems' and `Marker' parameters.
%%
%% If the `UserName' is not specified, the user name is determined implicitly
%% based on the Amazon Web Services access key ID used to sign the request.
%% If a temporary access key is used, then `UserName' is required. If a
%% long-term key is assigned to the user, then `UserName' is not required.
%% This operation works for access keys under the Amazon Web Services
%% account. Consequently, you can use this operation to manage Amazon Web
%% Services account root user credentials even if the Amazon Web Services
%% account has no associated users.
%%
%% To ensure the security of your Amazon Web Services account, the secret
%% access key is accessible only during key and user creation.
list_access_keys(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_access_keys(Client, Input, []).
list_access_keys(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAccessKeys">>, Input, Options).

%% @doc Lists the account alias associated with the Amazon Web Services
%% account (Note: you can have only one).
%%
%% For information about using an Amazon Web Services account alias, see
%% Using an alias for your Amazon Web Services account ID in the IAM User
%% Guide.
list_account_aliases(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_account_aliases(Client, Input, []).
list_account_aliases(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAccountAliases">>, Input, Options).

%% @doc Lists all managed policies that are attached to the specified IAM
%% group.
%%
%% An IAM group can also have inline policies embedded with it. To list the
%% inline policies for a group, use `ListGroupPolicies'. For information
%% about policies, see Managed policies and inline policies in the IAM User
%% Guide.
%%
%% You can paginate the results using the `MaxItems' and `Marker' parameters.
%% You can use the `PathPrefix' parameter to limit the list of policies to
%% only those matching the specified path prefix. If there are no policies
%% attached to the specified group (or none that match the specified path
%% prefix), the operation returns an empty list.
list_attached_group_policies(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_attached_group_policies(Client, Input, []).
list_attached_group_policies(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAttachedGroupPolicies">>, Input, Options).

%% @doc Lists all managed policies that are attached to the specified IAM
%% role.
%%
%% An IAM role can also have inline policies embedded with it. To list the
%% inline policies for a role, use `ListRolePolicies'. For information about
%% policies, see Managed policies and inline policies in the IAM User Guide.
%%
%% You can paginate the results using the `MaxItems' and `Marker' parameters.
%% You can use the `PathPrefix' parameter to limit the list of policies to
%% only those matching the specified path prefix. If there are no policies
%% attached to the specified role (or none that match the specified path
%% prefix), the operation returns an empty list.
list_attached_role_policies(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_attached_role_policies(Client, Input, []).
list_attached_role_policies(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAttachedRolePolicies">>, Input, Options).

%% @doc Lists all managed policies that are attached to the specified IAM
%% user.
%%
%% An IAM user can also have inline policies embedded with it. To list the
%% inline policies for a user, use `ListUserPolicies'. For information about
%% policies, see Managed policies and inline policies in the IAM User Guide.
%%
%% You can paginate the results using the `MaxItems' and `Marker' parameters.
%% You can use the `PathPrefix' parameter to limit the list of policies to
%% only those matching the specified path prefix. If there are no policies
%% attached to the specified group (or none that match the specified path
%% prefix), the operation returns an empty list.
list_attached_user_policies(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_attached_user_policies(Client, Input, []).
list_attached_user_policies(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAttachedUserPolicies">>, Input, Options).

%% @doc Lists all IAM users, groups, and roles that the specified managed
%% policy is attached to.
%%
%% You can use the optional `EntityFilter' parameter to limit the results to
%% a particular type of entity (users, groups, or roles). For example, to
%% list only the roles that are attached to the specified policy, set
%% `EntityFilter' to `Role'.
%%
%% You can paginate the results using the `MaxItems' and `Marker' parameters.
list_entities_for_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_entities_for_policy(Client, Input, []).
list_entities_for_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListEntitiesForPolicy">>, Input, Options).

%% @doc Lists the names of the inline policies that are embedded in the
%% specified IAM group.
%%
%% An IAM group can also have managed policies attached to it. To list the
%% managed policies that are attached to a group, use
%% `ListAttachedGroupPolicies'. For more information about policies, see
%% Managed policies and inline policies in the IAM User Guide.
%%
%% You can paginate the results using the `MaxItems' and `Marker' parameters.
%% If there are no inline policies embedded with the specified group, the
%% operation returns an empty list.
list_group_policies(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_group_policies(Client, Input, []).
list_group_policies(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListGroupPolicies">>, Input, Options).

%% @doc Lists the IAM groups that have the specified path prefix.
%%
%% You can paginate the results using the `MaxItems' and `Marker' parameters.
list_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_groups(Client, Input, []).
list_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListGroups">>, Input, Options).

%% @doc Lists the IAM groups that the specified IAM user belongs to.
%%
%% You can paginate the results using the `MaxItems' and `Marker' parameters.
list_groups_for_user(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_groups_for_user(Client, Input, []).
list_groups_for_user(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListGroupsForUser">>, Input, Options).

%% @doc Lists the tags that are attached to the specified IAM instance
%% profile.
%%
%% The returned list of tags is sorted by tag key. For more information about
%% tagging, see Tagging IAM resources in the IAM User Guide.
list_instance_profile_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_instance_profile_tags(Client, Input, []).
list_instance_profile_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListInstanceProfileTags">>, Input, Options).

%% @doc Lists the instance profiles that have the specified path prefix.
%%
%% If there are none, the operation returns an empty list. For more
%% information about instance profiles, see About instance profiles.
%%
%% IAM resource-listing operations return a subset of the available
%% attributes for the resource. For example, this operation does not return
%% tags, even though they are an attribute of the returned object. To view
%% all of the information for an instance profile, see `GetInstanceProfile'.
%%
%% You can paginate the results using the `MaxItems' and `Marker' parameters.
list_instance_profiles(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_instance_profiles(Client, Input, []).
list_instance_profiles(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListInstanceProfiles">>, Input, Options).

%% @doc Lists the instance profiles that have the specified associated IAM
%% role.
%%
%% If there are none, the operation returns an empty list. For more
%% information about instance profiles, go to About instance profiles.
%%
%% You can paginate the results using the `MaxItems' and `Marker' parameters.
list_instance_profiles_for_role(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_instance_profiles_for_role(Client, Input, []).
list_instance_profiles_for_role(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListInstanceProfilesForRole">>, Input, Options).

%% @doc Lists the tags that are attached to the specified IAM virtual
%% multi-factor authentication (MFA) device.
%%
%% The returned list of tags is sorted by tag key. For more information about
%% tagging, see Tagging IAM resources in the IAM User Guide.
list_mfa_device_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_mfa_device_tags(Client, Input, []).
list_mfa_device_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListMFADeviceTags">>, Input, Options).

%% @doc Lists the MFA devices for an IAM user.
%%
%% If the request includes a IAM user name, then this operation lists all the
%% MFA devices associated with the specified user. If you do not specify a
%% user name, IAM determines the user name implicitly based on the Amazon Web
%% Services access key ID signing the request for this operation.
%%
%% You can paginate the results using the `MaxItems' and `Marker' parameters.
list_mfa_devices(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_mfa_devices(Client, Input, []).
list_mfa_devices(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListMFADevices">>, Input, Options).

%% @doc Lists the tags that are attached to the specified OpenID Connect
%% (OIDC)-compatible identity provider.
%%
%% The returned list of tags is sorted by tag key. For more information, see
%% About web identity federation.
%%
%% For more information about tagging, see Tagging IAM resources in the IAM
%% User Guide.
list_open_id_connect_provider_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_open_id_connect_provider_tags(Client, Input, []).
list_open_id_connect_provider_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListOpenIDConnectProviderTags">>, Input, Options).

%% @doc Lists information about the IAM OpenID Connect (OIDC) provider
%% resource objects defined in the Amazon Web Services account.
%%
%% IAM resource-listing operations return a subset of the available
%% attributes for the resource. For example, this operation does not return
%% tags, even though they are an attribute of the returned object. To view
%% all of the information for an OIDC provider, see
%% `GetOpenIDConnectProvider'.
list_open_id_connect_providers(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_open_id_connect_providers(Client, Input, []).
list_open_id_connect_providers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListOpenIDConnectProviders">>, Input, Options).

%% @doc Lists all the managed policies that are available in your Amazon Web
%% Services account, including your own customer-defined managed policies and
%% all Amazon Web Services managed policies.
%%
%% You can filter the list of policies that is returned using the optional
%% `OnlyAttached', `Scope', and `PathPrefix' parameters. For example, to list
%% only the customer managed policies in your Amazon Web Services account,
%% set `Scope' to `Local'. To list only Amazon Web Services managed policies,
%% set `Scope' to `AWS'.
%%
%% You can paginate the results using the `MaxItems' and `Marker' parameters.
%%
%% For more information about managed policies, see Managed policies and
%% inline policies in the IAM User Guide.
%%
%% IAM resource-listing operations return a subset of the available
%% attributes for the resource. For example, this operation does not return
%% tags, even though they are an attribute of the returned object. To view
%% all of the information for a customer manged policy, see `GetPolicy'.
list_policies(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_policies(Client, Input, []).
list_policies(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPolicies">>, Input, Options).

%% @doc Retrieves a list of policies that the IAM identity (user, group, or
%% role) can use to access each specified service.
%%
%% This operation does not use other policy types when determining whether a
%% resource could access a service. These other policy types include
%% resource-based policies, access control lists, Organizations policies, IAM
%% permissions boundaries, and STS assume role policies. It only applies
%% permissions policy logic. For more about the evaluation of policy types,
%% see Evaluating policies in the IAM User Guide.
%%
%% The list of policies returned by the operation depends on the ARN of the
%% identity that you provide.
%%
%% <ul> <li> User – The list of policies includes the managed and inline
%% policies that are attached to the user directly. The list also includes
%% any additional managed and inline policies that are attached to the group
%% to which the user belongs.
%%
%% </li> <li> Group – The list of policies includes only the managed and
%% inline policies that are attached to the group directly. Policies that are
%% attached to the group’s user are not included.
%%
%% </li> <li> Role – The list of policies includes only the managed and
%% inline policies that are attached to the role.
%%
%% </li> </ul> For each managed policy, this operation returns the ARN and
%% policy name. For each inline policy, it returns the policy name and the
%% entity to which it is attached. Inline policies do not have an ARN. For
%% more information about these policy types, see Managed policies and inline
%% policies in the IAM User Guide.
%%
%% Policies that are attached to users and roles as permissions boundaries
%% are not returned. To view which managed policy is currently used to set
%% the permissions boundary for a user or role, use the `GetUser' or
%% `GetRole' operations.
list_policies_granting_service_access(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_policies_granting_service_access(Client, Input, []).
list_policies_granting_service_access(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPoliciesGrantingServiceAccess">>, Input, Options).

%% @doc Lists the tags that are attached to the specified IAM customer
%% managed policy.
%%
%% The returned list of tags is sorted by tag key. For more information about
%% tagging, see Tagging IAM resources in the IAM User Guide.
list_policy_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_policy_tags(Client, Input, []).
list_policy_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPolicyTags">>, Input, Options).

%% @doc Lists information about the versions of the specified managed policy,
%% including the version that is currently set as the policy's default
%% version.
%%
%% For more information about managed policies, see Managed policies and
%% inline policies in the IAM User Guide.
list_policy_versions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_policy_versions(Client, Input, []).
list_policy_versions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPolicyVersions">>, Input, Options).

%% @doc Lists the names of the inline policies that are embedded in the
%% specified IAM role.
%%
%% An IAM role can also have managed policies attached to it. To list the
%% managed policies that are attached to a role, use
%% `ListAttachedRolePolicies'. For more information about policies, see
%% Managed policies and inline policies in the IAM User Guide.
%%
%% You can paginate the results using the `MaxItems' and `Marker' parameters.
%% If there are no inline policies embedded with the specified role, the
%% operation returns an empty list.
list_role_policies(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_role_policies(Client, Input, []).
list_role_policies(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListRolePolicies">>, Input, Options).

%% @doc Lists the tags that are attached to the specified role.
%%
%% The returned list of tags is sorted by tag key. For more information about
%% tagging, see Tagging IAM resources in the IAM User Guide.
list_role_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_role_tags(Client, Input, []).
list_role_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListRoleTags">>, Input, Options).

%% @doc Lists the IAM roles that have the specified path prefix.
%%
%% If there are none, the operation returns an empty list. For more
%% information about roles, see Working with roles.
%%
%% IAM resource-listing operations return a subset of the available
%% attributes for the resource. For example, this operation does not return
%% tags, even though they are an attribute of the returned object. To view
%% all of the information for a role, see `GetRole'.
%%
%% You can paginate the results using the `MaxItems' and `Marker' parameters.
list_roles(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_roles(Client, Input, []).
list_roles(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListRoles">>, Input, Options).

%% @doc Lists the tags that are attached to the specified Security Assertion
%% Markup Language (SAML) identity provider.
%%
%% The returned list of tags is sorted by tag key. For more information, see
%% About SAML 2.0-based federation.
%%
%% For more information about tagging, see Tagging IAM resources in the IAM
%% User Guide.
list_saml_provider_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_saml_provider_tags(Client, Input, []).
list_saml_provider_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListSAMLProviderTags">>, Input, Options).

%% @doc Lists the SAML provider resource objects defined in IAM in the
%% account.
%%
%% IAM resource-listing operations return a subset of the available
%% attributes for the resource. For example, this operation does not return
%% tags, even though they are an attribute of the returned object. To view
%% all of the information for a SAML provider, see `GetSAMLProvider'.
%%
%% This operation requires Signature Version 4.
list_saml_providers(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_saml_providers(Client, Input, []).
list_saml_providers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListSAMLProviders">>, Input, Options).

%% @doc Lists the tags that are attached to the specified IAM server
%% certificate.
%%
%% The returned list of tags is sorted by tag key. For more information about
%% tagging, see Tagging IAM resources in the IAM User Guide.
%%
%% For certificates in a Region supported by Certificate Manager (ACM), we
%% recommend that you don't use IAM server certificates. Instead, use ACM to
%% provision, manage, and deploy your server certificates. For more
%% information about IAM server certificates, Working with server
%% certificates in the IAM User Guide.
list_server_certificate_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_server_certificate_tags(Client, Input, []).
list_server_certificate_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListServerCertificateTags">>, Input, Options).

%% @doc Lists the server certificates stored in IAM that have the specified
%% path prefix.
%%
%% If none exist, the operation returns an empty list.
%%
%% You can paginate the results using the `MaxItems' and `Marker' parameters.
%%
%% For more information about working with server certificates, see Working
%% with server certificates in the IAM User Guide. This topic also includes a
%% list of Amazon Web Services services that can use the server certificates
%% that you manage with IAM.
%%
%% IAM resource-listing operations return a subset of the available
%% attributes for the resource. For example, this operation does not return
%% tags, even though they are an attribute of the returned object. To view
%% all of the information for a servercertificate, see
%% `GetServerCertificate'.
list_server_certificates(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_server_certificates(Client, Input, []).
list_server_certificates(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListServerCertificates">>, Input, Options).

%% @doc Returns information about the service-specific credentials associated
%% with the specified IAM user.
%%
%% If none exists, the operation returns an empty list. The service-specific
%% credentials returned by this operation are used only for authenticating
%% the IAM user to a specific service. For more information about using
%% service-specific credentials to authenticate to an Amazon Web Services
%% service, see Set up service-specific credentials in the CodeCommit User
%% Guide.
list_service_specific_credentials(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_service_specific_credentials(Client, Input, []).
list_service_specific_credentials(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListServiceSpecificCredentials">>, Input, Options).

%% @doc Returns information about the signing certificates associated with
%% the specified IAM user.
%%
%% If none exists, the operation returns an empty list.
%%
%% Although each user is limited to a small number of signing certificates,
%% you can still paginate the results using the `MaxItems' and `Marker'
%% parameters.
%%
%% If the `UserName' field is not specified, the user name is determined
%% implicitly based on the Amazon Web Services access key ID used to sign the
%% request for this operation. This operation works for access keys under the
%% Amazon Web Services account. Consequently, you can use this operation to
%% manage Amazon Web Services account root user credentials even if the
%% Amazon Web Services account has no associated users.
list_signing_certificates(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_signing_certificates(Client, Input, []).
list_signing_certificates(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListSigningCertificates">>, Input, Options).

%% @doc Returns information about the SSH public keys associated with the
%% specified IAM user.
%%
%% If none exists, the operation returns an empty list.
%%
%% The SSH public keys returned by this operation are used only for
%% authenticating the IAM user to an CodeCommit repository. For more
%% information about using SSH keys to authenticate to an CodeCommit
%% repository, see Set up CodeCommit for SSH connections in the CodeCommit
%% User Guide.
%%
%% Although each user is limited to a small number of keys, you can still
%% paginate the results using the `MaxItems' and `Marker' parameters.
list_ssh_public_keys(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_ssh_public_keys(Client, Input, []).
list_ssh_public_keys(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListSSHPublicKeys">>, Input, Options).

%% @doc Lists the names of the inline policies embedded in the specified IAM
%% user.
%%
%% An IAM user can also have managed policies attached to it. To list the
%% managed policies that are attached to a user, use
%% `ListAttachedUserPolicies'. For more information about policies, see
%% Managed policies and inline policies in the IAM User Guide.
%%
%% You can paginate the results using the `MaxItems' and `Marker' parameters.
%% If there are no inline policies embedded with the specified user, the
%% operation returns an empty list.
list_user_policies(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_user_policies(Client, Input, []).
list_user_policies(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListUserPolicies">>, Input, Options).

%% @doc Lists the tags that are attached to the specified IAM user.
%%
%% The returned list of tags is sorted by tag key. For more information about
%% tagging, see Tagging IAM resources in the IAM User Guide.
list_user_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_user_tags(Client, Input, []).
list_user_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListUserTags">>, Input, Options).

%% @doc Lists the IAM users that have the specified path prefix.
%%
%% If no path prefix is specified, the operation returns all users in the
%% Amazon Web Services account. If there are none, the operation returns an
%% empty list.
%%
%% IAM resource-listing operations return a subset of the available
%% attributes for the resource. For example, this operation does not return
%% tags, even though they are an attribute of the returned object. To view
%% all of the information for a user, see `GetUser'.
%%
%% You can paginate the results using the `MaxItems' and `Marker' parameters.
list_users(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_users(Client, Input, []).
list_users(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListUsers">>, Input, Options).

%% @doc Lists the virtual MFA devices defined in the Amazon Web Services
%% account by assignment status.
%%
%% If you do not specify an assignment status, the operation returns a list
%% of all virtual MFA devices. Assignment status can be `Assigned',
%% `Unassigned', or `Any'.
%%
%% IAM resource-listing operations return a subset of the available
%% attributes for the resource. For example, this operation does not return
%% tags, even though they are an attribute of the returned object. To view
%% tag information for a virtual MFA device, see `ListMFADeviceTags'.
%%
%% You can paginate the results using the `MaxItems' and `Marker' parameters.
list_virtual_mfa_devices(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_virtual_mfa_devices(Client, Input, []).
list_virtual_mfa_devices(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListVirtualMFADevices">>, Input, Options).

%% @doc Adds or updates an inline policy document that is embedded in the
%% specified IAM group.
%%
%% A user can also have managed policies attached to it. To attach a managed
%% policy to a group, use `AttachGroupPolicy'. To create a new managed
%% policy, use `CreatePolicy'. For information about policies, see Managed
%% policies and inline policies in the IAM User Guide.
%%
%% For information about the maximum number of inline policies that you can
%% embed in a group, see IAM and STS quotas in the IAM User Guide.
%%
%% Because policy documents can be large, you should use POST rather than GET
%% when calling `PutGroupPolicy'. For general information about using the
%% Query API with IAM, see Making query requests in the IAM User Guide.
put_group_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_group_policy(Client, Input, []).
put_group_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutGroupPolicy">>, Input, Options).

%% @doc Adds or updates the policy that is specified as the IAM role's
%% permissions boundary.
%%
%% You can use an Amazon Web Services managed policy or a customer managed
%% policy to set the boundary for a role. Use the boundary to control the
%% maximum permissions that the role can have. Setting a permissions boundary
%% is an advanced feature that can affect the permissions for the role.
%%
%% You cannot set the boundary for a service-linked role.
%%
%% Policies used as permissions boundaries do not provide permissions. You
%% must also attach a permissions policy to the role. To learn how the
%% effective permissions for a role are evaluated, see IAM JSON policy
%% evaluation logic in the IAM User Guide.
put_role_permissions_boundary(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_role_permissions_boundary(Client, Input, []).
put_role_permissions_boundary(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutRolePermissionsBoundary">>, Input, Options).

%% @doc Adds or updates an inline policy document that is embedded in the
%% specified IAM role.
%%
%% When you embed an inline policy in a role, the inline policy is used as
%% part of the role's access (permissions) policy. The role's trust policy is
%% created at the same time as the role, using `CreateRole'. You can update a
%% role's trust policy using `UpdateAssumeRolePolicy'. For more information
%% about IAM roles, see Using roles to delegate permissions and federate
%% identities.
%%
%% A role can also have a managed policy attached to it. To attach a managed
%% policy to a role, use `AttachRolePolicy'. To create a new managed policy,
%% use `CreatePolicy'. For information about policies, see Managed policies
%% and inline policies in the IAM User Guide.
%%
%% For information about the maximum number of inline policies that you can
%% embed with a role, see IAM and STS quotas in the IAM User Guide.
%%
%% Because policy documents can be large, you should use POST rather than GET
%% when calling `PutRolePolicy'. For general information about using the
%% Query API with IAM, see Making query requests in the IAM User Guide.
put_role_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_role_policy(Client, Input, []).
put_role_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutRolePolicy">>, Input, Options).

%% @doc Adds or updates the policy that is specified as the IAM user's
%% permissions boundary.
%%
%% You can use an Amazon Web Services managed policy or a customer managed
%% policy to set the boundary for a user. Use the boundary to control the
%% maximum permissions that the user can have. Setting a permissions boundary
%% is an advanced feature that can affect the permissions for the user.
%%
%% Policies that are used as permissions boundaries do not provide
%% permissions. You must also attach a permissions policy to the user. To
%% learn how the effective permissions for a user are evaluated, see IAM JSON
%% policy evaluation logic in the IAM User Guide.
put_user_permissions_boundary(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_user_permissions_boundary(Client, Input, []).
put_user_permissions_boundary(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutUserPermissionsBoundary">>, Input, Options).

%% @doc Adds or updates an inline policy document that is embedded in the
%% specified IAM user.
%%
%% An IAM user can also have a managed policy attached to it. To attach a
%% managed policy to a user, use `AttachUserPolicy'. To create a new managed
%% policy, use `CreatePolicy'. For information about policies, see Managed
%% policies and inline policies in the IAM User Guide.
%%
%% For information about the maximum number of inline policies that you can
%% embed in a user, see IAM and STS quotas in the IAM User Guide.
%%
%% Because policy documents can be large, you should use POST rather than GET
%% when calling `PutUserPolicy'. For general information about using the
%% Query API with IAM, see Making query requests in the IAM User Guide.
put_user_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_user_policy(Client, Input, []).
put_user_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutUserPolicy">>, Input, Options).

%% @doc Removes the specified client ID (also known as audience) from the
%% list of client IDs registered for the specified IAM OpenID Connect (OIDC)
%% provider resource object.
%%
%% This operation is idempotent; it does not fail or return an error if you
%% try to remove a client ID that does not exist.
remove_client_id_from_open_id_connect_provider(Client, Input)
  when is_map(Client), is_map(Input) ->
    remove_client_id_from_open_id_connect_provider(Client, Input, []).
remove_client_id_from_open_id_connect_provider(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RemoveClientIDFromOpenIDConnectProvider">>, Input, Options).

%% @doc Removes the specified IAM role from the specified EC2 instance
%% profile.
%%
%% Make sure that you do not have any Amazon EC2 instances running with the
%% role you are about to remove from the instance profile. Removing a role
%% from an instance profile that is associated with a running instance might
%% break any applications running on the instance.
%%
%% For more information about IAM roles, see Working with roles. For more
%% information about instance profiles, see About instance profiles.
remove_role_from_instance_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    remove_role_from_instance_profile(Client, Input, []).
remove_role_from_instance_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RemoveRoleFromInstanceProfile">>, Input, Options).

%% @doc Removes the specified user from the specified group.
remove_user_from_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    remove_user_from_group(Client, Input, []).
remove_user_from_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RemoveUserFromGroup">>, Input, Options).

%% @doc Resets the password for a service-specific credential.
%%
%% The new password is Amazon Web Services generated and cryptographically
%% strong. It cannot be configured by the user. Resetting the password
%% immediately invalidates the previous password associated with this user.
reset_service_specific_credential(Client, Input)
  when is_map(Client), is_map(Input) ->
    reset_service_specific_credential(Client, Input, []).
reset_service_specific_credential(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ResetServiceSpecificCredential">>, Input, Options).

%% @doc Synchronizes the specified MFA device with its IAM resource object on
%% the Amazon Web Services servers.
%%
%% For more information about creating and working with virtual MFA devices,
%% see Using a virtual MFA device in the IAM User Guide.
resync_mfa_device(Client, Input)
  when is_map(Client), is_map(Input) ->
    resync_mfa_device(Client, Input, []).
resync_mfa_device(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ResyncMFADevice">>, Input, Options).

%% @doc Sets the specified version of the specified policy as the policy's
%% default (operative) version.
%%
%% This operation affects all users, groups, and roles that the policy is
%% attached to. To list the users, groups, and roles that the policy is
%% attached to, use `ListEntitiesForPolicy'.
%%
%% For information about managed policies, see Managed policies and inline
%% policies in the IAM User Guide.
set_default_policy_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_default_policy_version(Client, Input, []).
set_default_policy_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetDefaultPolicyVersion">>, Input, Options).

%% @doc Sets the specified version of the global endpoint token as the token
%% version used for the Amazon Web Services account.
%%
%% By default, Security Token Service (STS) is available as a global service,
%% and all STS requests go to a single endpoint at
%% `https://sts.amazonaws.com'. Amazon Web Services recommends using Regional
%% STS endpoints to reduce latency, build in redundancy, and increase session
%% token availability. For information about Regional endpoints for STS, see
%% Security Token Service endpoints and quotas in the Amazon Web Services
%% General Reference.
%%
%% If you make an STS call to the global endpoint, the resulting session
%% tokens might be valid in some Regions but not others. It depends on the
%% version that is set in this operation. Version 1 tokens are valid only in
%% Amazon Web Services Regions that are available by default. These tokens do
%% not work in manually enabled Regions, such as Asia Pacific (Hong Kong).
%% Version 2 tokens are valid in all Regions. However, version 2 tokens are
%% longer and might affect systems where you temporarily store tokens. For
%% information, see Activating and deactivating STS in an Amazon Web Services
%% Region in the IAM User Guide.
%%
%% To view the current session token version, see the
%% `GlobalEndpointTokenVersion' entry in the response of the
%% `GetAccountSummary' operation.
set_security_token_service_preferences(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_security_token_service_preferences(Client, Input, []).
set_security_token_service_preferences(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetSecurityTokenServicePreferences">>, Input, Options).

%% @doc Simulate how a set of IAM policies and optionally a resource-based
%% policy works with a list of API operations and Amazon Web Services
%% resources to determine the policies' effective permissions.
%%
%% The policies are provided as strings.
%%
%% The simulation does not perform the API operations; it only checks the
%% authorization to determine if the simulated policies allow or deny the
%% operations. You can simulate resources that don't exist in your account.
%%
%% If you want to simulate existing policies that are attached to an IAM
%% user, group, or role, use `SimulatePrincipalPolicy' instead.
%%
%% Context keys are variables that are maintained by Amazon Web Services and
%% its services and which provide details about the context of an API query
%% request. You can use the `Condition' element of an IAM policy to evaluate
%% context keys. To get the list of context keys that the policies require
%% for correct simulation, use `GetContextKeysForCustomPolicy'.
%%
%% If the output is long, you can use `MaxItems' and `Marker' parameters to
%% paginate the results.
%%
%% For more information about using the policy simulator, see Testing IAM
%% policies with the IAM policy simulator in the IAM User Guide.
simulate_custom_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    simulate_custom_policy(Client, Input, []).
simulate_custom_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SimulateCustomPolicy">>, Input, Options).

%% @doc Simulate how a set of IAM policies attached to an IAM entity works
%% with a list of API operations and Amazon Web Services resources to
%% determine the policies' effective permissions.
%%
%% The entity can be an IAM user, group, or role. If you specify a user, then
%% the simulation also includes all of the policies that are attached to
%% groups that the user belongs to. You can simulate resources that don't
%% exist in your account.
%%
%% You can optionally include a list of one or more additional policies
%% specified as strings to include in the simulation. If you want to simulate
%% only policies specified as strings, use `SimulateCustomPolicy' instead.
%%
%% You can also optionally include one resource-based policy to be evaluated
%% with each of the resources included in the simulation.
%%
%% The simulation does not perform the API operations; it only checks the
%% authorization to determine if the simulated policies allow or deny the
%% operations.
%%
%% Note: This operation discloses information about the permissions granted
%% to other users. If you do not want users to see other user's permissions,
%% then consider allowing them to use `SimulateCustomPolicy' instead.
%%
%% Context keys are variables maintained by Amazon Web Services and its
%% services that provide details about the context of an API query request.
%% You can use the `Condition' element of an IAM policy to evaluate context
%% keys. To get the list of context keys that the policies require for
%% correct simulation, use `GetContextKeysForPrincipalPolicy'.
%%
%% If the output is long, you can use the `MaxItems' and `Marker' parameters
%% to paginate the results.
%%
%% For more information about using the policy simulator, see Testing IAM
%% policies with the IAM policy simulator in the IAM User Guide.
simulate_principal_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    simulate_principal_policy(Client, Input, []).
simulate_principal_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SimulatePrincipalPolicy">>, Input, Options).

%% @doc Adds one or more tags to an IAM instance profile.
%%
%% If a tag with the same key name already exists, then that tag is
%% overwritten with the new value.
%%
%% Each tag consists of a key name and an associated value. By assigning tags
%% to your resources, you can do the following:
%%
%% <ul> <li> Administrative grouping and discovery - Attach tags to resources
%% to aid in organization and search. For example, you could search for all
%% resources with the key name Project and the value MyImportantProject. Or
%% search for all resources with the key name Cost Center and the value
%% 41200.
%%
%% </li> <li> Access control - Include tags in IAM user-based and
%% resource-based policies. You can use tags to restrict access to only an
%% IAM instance profile that has a specified tag attached. For examples of
%% policies that show how to use tags to control access, see Control access
%% using IAM tags in the IAM User Guide.
%%
%% </li> </ul> If any one of the tags is invalid or if you exceed the allowed
%% maximum number of tags, then the entire request fails and the resource is
%% not created. For more information about tagging, see Tagging IAM resources
%% in the IAM User Guide.
%%
%% Amazon Web Services always interprets the tag `Value' as a single string.
%% If you need to store an array, you can store comma-separated values in the
%% string. However, you must interpret the value in your code.
tag_instance_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_instance_profile(Client, Input, []).
tag_instance_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagInstanceProfile">>, Input, Options).

%% @doc Adds one or more tags to an IAM virtual multi-factor authentication
%% (MFA) device.
%%
%% If a tag with the same key name already exists, then that tag is
%% overwritten with the new value.
%%
%% A tag consists of a key name and an associated value. By assigning tags to
%% your resources, you can do the following:
%%
%% <ul> <li> Administrative grouping and discovery - Attach tags to resources
%% to aid in organization and search. For example, you could search for all
%% resources with the key name Project and the value MyImportantProject. Or
%% search for all resources with the key name Cost Center and the value
%% 41200.
%%
%% </li> <li> Access control - Include tags in IAM user-based and
%% resource-based policies. You can use tags to restrict access to only an
%% IAM virtual MFA device that has a specified tag attached. For examples of
%% policies that show how to use tags to control access, see Control access
%% using IAM tags in the IAM User Guide.
%%
%% </li> </ul> If any one of the tags is invalid or if you exceed the allowed
%% maximum number of tags, then the entire request fails and the resource is
%% not created. For more information about tagging, see Tagging IAM resources
%% in the IAM User Guide.
%%
%% Amazon Web Services always interprets the tag `Value' as a single string.
%% If you need to store an array, you can store comma-separated values in the
%% string. However, you must interpret the value in your code.
tag_mfa_device(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_mfa_device(Client, Input, []).
tag_mfa_device(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagMFADevice">>, Input, Options).

%% @doc Adds one or more tags to an OpenID Connect (OIDC)-compatible identity
%% provider.
%%
%% For more information about these providers, see About web identity
%% federation. If a tag with the same key name already exists, then that tag
%% is overwritten with the new value.
%%
%% A tag consists of a key name and an associated value. By assigning tags to
%% your resources, you can do the following:
%%
%% <ul> <li> Administrative grouping and discovery - Attach tags to resources
%% to aid in organization and search. For example, you could search for all
%% resources with the key name Project and the value MyImportantProject. Or
%% search for all resources with the key name Cost Center and the value
%% 41200.
%%
%% </li> <li> Access control - Include tags in IAM user-based and
%% resource-based policies. You can use tags to restrict access to only an
%% OIDC provider that has a specified tag attached. For examples of policies
%% that show how to use tags to control access, see Control access using IAM
%% tags in the IAM User Guide.
%%
%% </li> </ul> If any one of the tags is invalid or if you exceed the allowed
%% maximum number of tags, then the entire request fails and the resource is
%% not created. For more information about tagging, see Tagging IAM resources
%% in the IAM User Guide.
%%
%% Amazon Web Services always interprets the tag `Value' as a single string.
%% If you need to store an array, you can store comma-separated values in the
%% string. However, you must interpret the value in your code.
tag_open_id_connect_provider(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_open_id_connect_provider(Client, Input, []).
tag_open_id_connect_provider(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagOpenIDConnectProvider">>, Input, Options).

%% @doc Adds one or more tags to an IAM customer managed policy.
%%
%% If a tag with the same key name already exists, then that tag is
%% overwritten with the new value.
%%
%% A tag consists of a key name and an associated value. By assigning tags to
%% your resources, you can do the following:
%%
%% <ul> <li> Administrative grouping and discovery - Attach tags to resources
%% to aid in organization and search. For example, you could search for all
%% resources with the key name Project and the value MyImportantProject. Or
%% search for all resources with the key name Cost Center and the value
%% 41200.
%%
%% </li> <li> Access control - Include tags in IAM user-based and
%% resource-based policies. You can use tags to restrict access to only an
%% IAM customer managed policy that has a specified tag attached. For
%% examples of policies that show how to use tags to control access, see
%% Control access using IAM tags in the IAM User Guide.
%%
%% </li> </ul> If any one of the tags is invalid or if you exceed the allowed
%% maximum number of tags, then the entire request fails and the resource is
%% not created. For more information about tagging, see Tagging IAM resources
%% in the IAM User Guide.
%%
%% Amazon Web Services always interprets the tag `Value' as a single string.
%% If you need to store an array, you can store comma-separated values in the
%% string. However, you must interpret the value in your code.
tag_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_policy(Client, Input, []).
tag_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagPolicy">>, Input, Options).

%% @doc Adds one or more tags to an IAM role.
%%
%% The role can be a regular role or a service-linked role. If a tag with the
%% same key name already exists, then that tag is overwritten with the new
%% value.
%%
%% A tag consists of a key name and an associated value. By assigning tags to
%% your resources, you can do the following:
%%
%% <ul> <li> Administrative grouping and discovery - Attach tags to resources
%% to aid in organization and search. For example, you could search for all
%% resources with the key name Project and the value MyImportantProject. Or
%% search for all resources with the key name Cost Center and the value
%% 41200.
%%
%% </li> <li> Access control - Include tags in IAM user-based and
%% resource-based policies. You can use tags to restrict access to only an
%% IAM role that has a specified tag attached. You can also restrict access
%% to only those resources that have a certain tag attached. For examples of
%% policies that show how to use tags to control access, see Control access
%% using IAM tags in the IAM User Guide.
%%
%% </li> <li> Cost allocation - Use tags to help track which individuals and
%% teams are using which Amazon Web Services resources.
%%
%% </li> </ul> If any one of the tags is invalid or if you exceed the allowed
%% maximum number of tags, then the entire request fails and the resource is
%% not created. For more information about tagging, see Tagging IAM resources
%% in the IAM User Guide.
%%
%% Amazon Web Services always interprets the tag `Value' as a single string.
%% If you need to store an array, you can store comma-separated values in the
%% string. However, you must interpret the value in your code.
%%
%% For more information about tagging, see Tagging IAM identities in the IAM
%% User Guide.
tag_role(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_role(Client, Input, []).
tag_role(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagRole">>, Input, Options).

%% @doc Adds one or more tags to a Security Assertion Markup Language (SAML)
%% identity provider.
%%
%% For more information about these providers, see About SAML 2.0-based
%% federation . If a tag with the same key name already exists, then that tag
%% is overwritten with the new value.
%%
%% A tag consists of a key name and an associated value. By assigning tags to
%% your resources, you can do the following:
%%
%% <ul> <li> Administrative grouping and discovery - Attach tags to resources
%% to aid in organization and search. For example, you could search for all
%% resources with the key name Project and the value MyImportantProject. Or
%% search for all resources with the key name Cost Center and the value
%% 41200.
%%
%% </li> <li> Access control - Include tags in IAM user-based and
%% resource-based policies. You can use tags to restrict access to only a
%% SAML identity provider that has a specified tag attached. For examples of
%% policies that show how to use tags to control access, see Control access
%% using IAM tags in the IAM User Guide.
%%
%% </li> </ul> If any one of the tags is invalid or if you exceed the allowed
%% maximum number of tags, then the entire request fails and the resource is
%% not created. For more information about tagging, see Tagging IAM resources
%% in the IAM User Guide.
%%
%% Amazon Web Services always interprets the tag `Value' as a single string.
%% If you need to store an array, you can store comma-separated values in the
%% string. However, you must interpret the value in your code.
tag_saml_provider(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_saml_provider(Client, Input, []).
tag_saml_provider(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagSAMLProvider">>, Input, Options).

%% @doc Adds one or more tags to an IAM server certificate.
%%
%% If a tag with the same key name already exists, then that tag is
%% overwritten with the new value.
%%
%% For certificates in a Region supported by Certificate Manager (ACM), we
%% recommend that you don't use IAM server certificates. Instead, use ACM to
%% provision, manage, and deploy your server certificates. For more
%% information about IAM server certificates, Working with server
%% certificates in the IAM User Guide.
%%
%% A tag consists of a key name and an associated value. By assigning tags to
%% your resources, you can do the following:
%%
%% <ul> <li> Administrative grouping and discovery - Attach tags to resources
%% to aid in organization and search. For example, you could search for all
%% resources with the key name Project and the value MyImportantProject. Or
%% search for all resources with the key name Cost Center and the value
%% 41200.
%%
%% </li> <li> Access control - Include tags in IAM user-based and
%% resource-based policies. You can use tags to restrict access to only a
%% server certificate that has a specified tag attached. For examples of
%% policies that show how to use tags to control access, see Control access
%% using IAM tags in the IAM User Guide.
%%
%% </li> <li> Cost allocation - Use tags to help track which individuals and
%% teams are using which Amazon Web Services resources.
%%
%% </li> </ul> If any one of the tags is invalid or if you exceed the allowed
%% maximum number of tags, then the entire request fails and the resource is
%% not created. For more information about tagging, see Tagging IAM resources
%% in the IAM User Guide.
%%
%% Amazon Web Services always interprets the tag `Value' as a single string.
%% If you need to store an array, you can store comma-separated values in the
%% string. However, you must interpret the value in your code.
tag_server_certificate(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_server_certificate(Client, Input, []).
tag_server_certificate(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagServerCertificate">>, Input, Options).

%% @doc Adds one or more tags to an IAM user.
%%
%% If a tag with the same key name already exists, then that tag is
%% overwritten with the new value.
%%
%% A tag consists of a key name and an associated value. By assigning tags to
%% your resources, you can do the following:
%%
%% <ul> <li> Administrative grouping and discovery - Attach tags to resources
%% to aid in organization and search. For example, you could search for all
%% resources with the key name Project and the value MyImportantProject. Or
%% search for all resources with the key name Cost Center and the value
%% 41200.
%%
%% </li> <li> Access control - Include tags in IAM user-based and
%% resource-based policies. You can use tags to restrict access to only an
%% IAM requesting user that has a specified tag attached. You can also
%% restrict access to only those resources that have a certain tag attached.
%% For examples of policies that show how to use tags to control access, see
%% Control access using IAM tags in the IAM User Guide.
%%
%% </li> <li> Cost allocation - Use tags to help track which individuals and
%% teams are using which Amazon Web Services resources.
%%
%% </li> </ul> If any one of the tags is invalid or if you exceed the allowed
%% maximum number of tags, then the entire request fails and the resource is
%% not created. For more information about tagging, see Tagging IAM resources
%% in the IAM User Guide.
%%
%% Amazon Web Services always interprets the tag `Value' as a single string.
%% If you need to store an array, you can store comma-separated values in the
%% string. However, you must interpret the value in your code.
%%
%% For more information about tagging, see Tagging IAM identities in the IAM
%% User Guide.
tag_user(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_user(Client, Input, []).
tag_user(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagUser">>, Input, Options).

%% @doc Removes the specified tags from the IAM instance profile.
%%
%% For more information about tagging, see Tagging IAM resources in the IAM
%% User Guide.
untag_instance_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_instance_profile(Client, Input, []).
untag_instance_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagInstanceProfile">>, Input, Options).

%% @doc Removes the specified tags from the IAM virtual multi-factor
%% authentication (MFA) device.
%%
%% For more information about tagging, see Tagging IAM resources in the IAM
%% User Guide.
untag_mfa_device(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_mfa_device(Client, Input, []).
untag_mfa_device(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagMFADevice">>, Input, Options).

%% @doc Removes the specified tags from the specified OpenID Connect
%% (OIDC)-compatible identity provider in IAM.
%%
%% For more information about OIDC providers, see About web identity
%% federation. For more information about tagging, see Tagging IAM resources
%% in the IAM User Guide.
untag_open_id_connect_provider(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_open_id_connect_provider(Client, Input, []).
untag_open_id_connect_provider(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagOpenIDConnectProvider">>, Input, Options).

%% @doc Removes the specified tags from the customer managed policy.
%%
%% For more information about tagging, see Tagging IAM resources in the IAM
%% User Guide.
untag_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_policy(Client, Input, []).
untag_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagPolicy">>, Input, Options).

%% @doc Removes the specified tags from the role.
%%
%% For more information about tagging, see Tagging IAM resources in the IAM
%% User Guide.
untag_role(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_role(Client, Input, []).
untag_role(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagRole">>, Input, Options).

%% @doc Removes the specified tags from the specified Security Assertion
%% Markup Language (SAML) identity provider in IAM.
%%
%% For more information about these providers, see About web identity
%% federation. For more information about tagging, see Tagging IAM resources
%% in the IAM User Guide.
untag_saml_provider(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_saml_provider(Client, Input, []).
untag_saml_provider(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagSAMLProvider">>, Input, Options).

%% @doc Removes the specified tags from the IAM server certificate.
%%
%% For more information about tagging, see Tagging IAM resources in the IAM
%% User Guide.
%%
%% For certificates in a Region supported by Certificate Manager (ACM), we
%% recommend that you don't use IAM server certificates. Instead, use ACM to
%% provision, manage, and deploy your server certificates. For more
%% information about IAM server certificates, Working with server
%% certificates in the IAM User Guide.
untag_server_certificate(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_server_certificate(Client, Input, []).
untag_server_certificate(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagServerCertificate">>, Input, Options).

%% @doc Removes the specified tags from the user.
%%
%% For more information about tagging, see Tagging IAM resources in the IAM
%% User Guide.
untag_user(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_user(Client, Input, []).
untag_user(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagUser">>, Input, Options).

%% @doc Changes the status of the specified access key from Active to
%% Inactive, or vice versa.
%%
%% This operation can be used to disable a user's key as part of a key
%% rotation workflow.
%%
%% If the `UserName' is not specified, the user name is determined implicitly
%% based on the Amazon Web Services access key ID used to sign the request.
%% If a temporary access key is used, then `UserName' is required. If a
%% long-term key is assigned to the user, then `UserName' is not required.
%% This operation works for access keys under the Amazon Web Services
%% account. Consequently, you can use this operation to manage Amazon Web
%% Services account root user credentials even if the Amazon Web Services
%% account has no associated users.
%%
%% For information about rotating keys, see Managing keys and certificates in
%% the IAM User Guide.
update_access_key(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_access_key(Client, Input, []).
update_access_key(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateAccessKey">>, Input, Options).

%% @doc Updates the password policy settings for the Amazon Web Services
%% account.
%%
%% This operation does not support partial updates. No parameters are
%% required, but if you do not specify a parameter, that parameter's value
%% reverts to its default value. See the Request Parameters section for each
%% parameter's default value. Also note that some parameters do not allow the
%% default parameter to be explicitly set. Instead, to invoke the default
%% value, do not include that parameter when you invoke the operation.
%%
%% For more information about using a password policy, see Managing an IAM
%% password policy in the IAM User Guide.
update_account_password_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_account_password_policy(Client, Input, []).
update_account_password_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateAccountPasswordPolicy">>, Input, Options).

%% @doc Updates the policy that grants an IAM entity permission to assume a
%% role.
%%
%% This is typically referred to as the "role trust policy". For more
%% information about roles, see Using roles to delegate permissions and
%% federate identities.
update_assume_role_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_assume_role_policy(Client, Input, []).
update_assume_role_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateAssumeRolePolicy">>, Input, Options).

%% @doc Updates the name and/or the path of the specified IAM group.
%%
%% You should understand the implications of changing a group's path or name.
%% For more information, see Renaming users and groups in the IAM User Guide.
%%
%% The person making the request (the principal), must have permission to
%% change the role group with the old name and the new name. For example, to
%% change the group named `Managers' to `MGRs', the principal must have a
%% policy that allows them to update both groups. If the principal has
%% permission to update the `Managers' group, but not the `MGRs' group, then
%% the update fails. For more information about permissions, see Access
%% management.
update_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_group(Client, Input, []).
update_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateGroup">>, Input, Options).

%% @doc Changes the password for the specified IAM user.
%%
%% You can use the CLI, the Amazon Web Services API, or the Users page in the
%% IAM console to change the password for any IAM user. Use `ChangePassword'
%% to change your own password in the My Security Credentials page in the
%% Amazon Web Services Management Console.
%%
%% For more information about modifying passwords, see Managing passwords in
%% the IAM User Guide.
update_login_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_login_profile(Client, Input, []).
update_login_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateLoginProfile">>, Input, Options).

%% @doc Replaces the existing list of server certificate thumbprints
%% associated with an OpenID Connect (OIDC) provider resource object with a
%% new list of thumbprints.
%%
%% The list that you pass with this operation completely replaces the
%% existing list of thumbprints. (The lists are not merged.)
%%
%% Typically, you need to update a thumbprint only when the identity provider
%% certificate changes, which occurs rarely. However, if the provider's
%% certificate does change, any attempt to assume an IAM role that specifies
%% the OIDC provider as a principal fails until the certificate thumbprint is
%% updated.
%%
%% Amazon Web Services secures communication with some OIDC identity
%% providers (IdPs) through our library of trusted certificate authorities
%% (CAs) instead of using a certificate thumbprint to verify your IdP server
%% certificate. These OIDC IdPs include Google, and those that use an Amazon
%% S3 bucket to host a JSON Web Key Set (JWKS) endpoint. In these cases, your
%% legacy thumbprint remains in your configuration, but is no longer used for
%% validation.
%%
%% Trust for the OIDC provider is derived from the provider certificate and
%% is validated by the thumbprint. Therefore, it is best to limit access to
%% the `UpdateOpenIDConnectProviderThumbprint' operation to highly privileged
%% users.
update_open_id_connect_provider_thumbprint(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_open_id_connect_provider_thumbprint(Client, Input, []).
update_open_id_connect_provider_thumbprint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateOpenIDConnectProviderThumbprint">>, Input, Options).

%% @doc Updates the description or maximum session duration setting of a
%% role.
update_role(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_role(Client, Input, []).
update_role(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateRole">>, Input, Options).

%% @doc Use `UpdateRole' instead.
%%
%% Modifies only the description of a role. This operation performs the same
%% function as the `Description' parameter in the `UpdateRole' operation.
update_role_description(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_role_description(Client, Input, []).
update_role_description(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateRoleDescription">>, Input, Options).

%% @doc Updates the metadata document for an existing SAML provider resource
%% object.
%%
%% This operation requires Signature Version 4.
update_saml_provider(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_saml_provider(Client, Input, []).
update_saml_provider(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateSAMLProvider">>, Input, Options).

%% @doc Updates the name and/or the path of the specified server certificate
%% stored in IAM.
%%
%% For more information about working with server certificates, see Working
%% with server certificates in the IAM User Guide. This topic also includes a
%% list of Amazon Web Services services that can use the server certificates
%% that you manage with IAM.
%%
%% You should understand the implications of changing a server certificate's
%% path or name. For more information, see Renaming a server certificate in
%% the IAM User Guide.
%%
%% The person making the request (the principal), must have permission to
%% change the server certificate with the old name and the new name. For
%% example, to change the certificate named `ProductionCert' to `ProdCert',
%% the principal must have a policy that allows them to update both
%% certificates. If the principal has permission to update the
%% `ProductionCert' group, but not the `ProdCert' certificate, then the
%% update fails. For more information about permissions, see Access
%% management in the IAM User Guide.
update_server_certificate(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_server_certificate(Client, Input, []).
update_server_certificate(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateServerCertificate">>, Input, Options).

%% @doc Sets the status of a service-specific credential to `Active' or
%% `Inactive'.
%%
%% Service-specific credentials that are inactive cannot be used for
%% authentication to the service. This operation can be used to disable a
%% user's service-specific credential as part of a credential rotation work
%% flow.
update_service_specific_credential(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_service_specific_credential(Client, Input, []).
update_service_specific_credential(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateServiceSpecificCredential">>, Input, Options).

%% @doc Changes the status of the specified user signing certificate from
%% active to disabled, or vice versa.
%%
%% This operation can be used to disable an IAM user's signing certificate as
%% part of a certificate rotation work flow.
%%
%% If the `UserName' field is not specified, the user name is determined
%% implicitly based on the Amazon Web Services access key ID used to sign the
%% request. This operation works for access keys under the Amazon Web
%% Services account. Consequently, you can use this operation to manage
%% Amazon Web Services account root user credentials even if the Amazon Web
%% Services account has no associated users.
update_signing_certificate(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_signing_certificate(Client, Input, []).
update_signing_certificate(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateSigningCertificate">>, Input, Options).

%% @doc Sets the status of an IAM user's SSH public key to active or
%% inactive.
%%
%% SSH public keys that are inactive cannot be used for authentication. This
%% operation can be used to disable a user's SSH public key as part of a key
%% rotation work flow.
%%
%% The SSH public key affected by this operation is used only for
%% authenticating the associated IAM user to an CodeCommit repository. For
%% more information about using SSH keys to authenticate to an CodeCommit
%% repository, see Set up CodeCommit for SSH connections in the CodeCommit
%% User Guide.
update_ssh_public_key(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_ssh_public_key(Client, Input, []).
update_ssh_public_key(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateSSHPublicKey">>, Input, Options).

%% @doc Updates the name and/or the path of the specified IAM user.
%%
%% You should understand the implications of changing an IAM user's path or
%% name. For more information, see Renaming an IAM user and Renaming an IAM
%% group in the IAM User Guide.
%%
%% To change a user name, the requester must have appropriate permissions on
%% both the source object and the target object. For example, to change Bob
%% to Robert, the entity making the request must have permission on Bob and
%% Robert, or must have permission on all (*). For more information about
%% permissions, see Permissions and policies.
update_user(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_user(Client, Input, []).
update_user(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateUser">>, Input, Options).

%% @doc Uploads a server certificate entity for the Amazon Web Services
%% account.
%%
%% The server certificate entity includes a public key certificate, a private
%% key, and an optional certificate chain, which should all be PEM-encoded.
%%
%% We recommend that you use Certificate Manager to provision, manage, and
%% deploy your server certificates. With ACM you can request a certificate,
%% deploy it to Amazon Web Services resources, and let ACM handle certificate
%% renewals for you. Certificates provided by ACM are free. For more
%% information about using ACM, see the Certificate Manager User Guide.
%%
%% For more information about working with server certificates, see Working
%% with server certificates in the IAM User Guide. This topic includes a list
%% of Amazon Web Services services that can use the server certificates that
%% you manage with IAM.
%%
%% For information about the number of server certificates you can upload,
%% see IAM and STS quotas in the IAM User Guide.
%%
%% Because the body of the public key certificate, private key, and the
%% certificate chain can be large, you should use POST rather than GET when
%% calling `UploadServerCertificate'. For information about setting up
%% signatures and authorization through the API, see Signing Amazon Web
%% Services API requests in the Amazon Web Services General Reference. For
%% general information about using the Query API with IAM, see Calling the
%% API by making HTTP query requests in the IAM User Guide.
upload_server_certificate(Client, Input)
  when is_map(Client), is_map(Input) ->
    upload_server_certificate(Client, Input, []).
upload_server_certificate(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UploadServerCertificate">>, Input, Options).

%% @doc Uploads an X.509 signing certificate and associates it with the
%% specified IAM user.
%%
%% Some Amazon Web Services services require you to use certificates to
%% validate requests that are signed with a corresponding private key. When
%% you upload the certificate, its default status is `Active'.
%%
%% For information about when you would use an X.509 signing certificate, see
%% Managing server certificates in IAM in the IAM User Guide.
%%
%% If the `UserName' is not specified, the IAM user name is determined
%% implicitly based on the Amazon Web Services access key ID used to sign the
%% request. This operation works for access keys under the Amazon Web
%% Services account. Consequently, you can use this operation to manage
%% Amazon Web Services account root user credentials even if the Amazon Web
%% Services account has no associated users.
%%
%% Because the body of an X.509 certificate can be large, you should use POST
%% rather than GET when calling `UploadSigningCertificate'. For information
%% about setting up signatures and authorization through the API, see Signing
%% Amazon Web Services API requests in the Amazon Web Services General
%% Reference. For general information about using the Query API with IAM, see
%% Making query requests in the IAM User Guide.
upload_signing_certificate(Client, Input)
  when is_map(Client), is_map(Input) ->
    upload_signing_certificate(Client, Input, []).
upload_signing_certificate(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UploadSigningCertificate">>, Input, Options).

%% @doc Uploads an SSH public key and associates it with the specified IAM
%% user.
%%
%% The SSH public key uploaded by this operation can be used only for
%% authenticating the associated IAM user to an CodeCommit repository. For
%% more information about using SSH keys to authenticate to an CodeCommit
%% repository, see Set up CodeCommit for SSH connections in the CodeCommit
%% User Guide.
upload_ssh_public_key(Client, Input)
  when is_map(Client), is_map(Input) ->
    upload_ssh_public_key(Client, Input, []).
upload_ssh_public_key(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UploadSSHPublicKey">>, Input, Options).

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
    Client1 = Client#{service => <<"iam">>,
                      region => <<"us-east-1">>},
    Host = build_host(<<"iam">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-www-form-urlencoded">>}
    ],

    Input = Input0#{ <<"Action">> => Action
                   , <<"Version">> => <<"2010-05-08">>
                   },

    Payload = aws_util:encode_query(Input),
    SignedHeaders = aws_request:sign_request(Client1, <<"POST">>, URL, Headers, Payload),
    Response = hackney:request(post, URL, SignedHeaders, Payload, Options),
    handle_response(Response).

handle_response({ok, 200, ResponseHeaders, Client}) ->
    case hackney:body(Client) of
        {ok, <<>>} ->
            {ok, undefined, {200, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = aws_util:decode_xml(Body),
            {ok, Result, {200, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}) ->
    {ok, Body} = hackney:body(Client),
    Error = aws_util:decode_xml(Body),
    {error, Error, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}) ->
    {error, Reason}.

build_host(_EndpointPrefix, #{region := <<"local">>, endpoint := Endpoint}) ->
    Endpoint;
build_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
build_host(EndpointPrefix, #{endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Endpoint], <<".">>).

build_url(Host, Client) ->
    Proto = maps:get(proto, Client),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
