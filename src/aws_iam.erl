%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Identity and Access Management
%%
%% Identity and Access Management (IAM) is a web service for securely
%% controlling
%% access to Amazon Web Services services.
%%
%% With IAM, you can centrally manage users, security credentials
%% such as access keys, and permissions that control which Amazon Web
%% Services resources users and
%% applications can access. For more information about IAM, see Identity and
%% Access Management (IAM): http://aws.amazon.com/iam/ and the Identity and
%% Access Management User Guide:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/.
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
         disable_organizations_root_credentials_management/2,
         disable_organizations_root_credentials_management/3,
         disable_organizations_root_sessions/2,
         disable_organizations_root_sessions/3,
         enable_mfa_device/2,
         enable_mfa_device/3,
         enable_organizations_root_credentials_management/2,
         enable_organizations_root_credentials_management/3,
         enable_organizations_root_sessions/2,
         enable_organizations_root_sessions/3,
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
         get_mfa_device/2,
         get_mfa_device/3,
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
         list_organizations_features/2,
         list_organizations_features/3,
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


%% Example:
%% put_user_policy_request() :: #{
%%   <<"PolicyDocument">> := string(),
%%   <<"PolicyName">> := string(),
%%   <<"UserName">> := string()
%% }
-type put_user_policy_request() :: #{binary() => any()}.

%% Example:
%% get_open_id_connect_provider_request() :: #{
%%   <<"OpenIDConnectProviderArn">> := string()
%% }
-type get_open_id_connect_provider_request() :: #{binary() => any()}.

%% Example:
%% list_saml_providers_request() :: #{

%% }
-type list_saml_providers_request() :: #{binary() => any()}.

%% Example:
%% enable_organizations_root_credentials_management_response() :: #{
%%   <<"EnabledFeatures">> => list(list(any())()),
%%   <<"OrganizationId">> => string()
%% }
-type enable_organizations_root_credentials_management_response() :: #{binary() => any()}.

%% Example:
%% virtual_mfa_device() :: #{
%%   <<"Base32StringSeed">> => binary(),
%%   <<"EnableDate">> => non_neg_integer(),
%%   <<"QRCodePNG">> => binary(),
%%   <<"SerialNumber">> => string(),
%%   <<"Tags">> => list(tag()),
%%   <<"User">> => user()
%% }
-type virtual_mfa_device() :: #{binary() => any()}.

%% Example:
%% entity_already_exists_exception() :: #{
%%   <<"message">> => string()
%% }
-type entity_already_exists_exception() :: #{binary() => any()}.

%% Example:
%% list_group_policies_response() :: #{
%%   <<"IsTruncated">> => boolean(),
%%   <<"Marker">> => string(),
%%   <<"PolicyNames">> => list(string())
%% }
-type list_group_policies_response() :: #{binary() => any()}.

%% Example:
%% list_instance_profiles_request() :: #{
%%   <<"Marker">> => string(),
%%   <<"MaxItems">> => integer(),
%%   <<"PathPrefix">> => string()
%% }
-type list_instance_profiles_request() :: #{binary() => any()}.

%% Example:
%% list_policies_granting_service_access_response() :: #{
%%   <<"IsTruncated">> => boolean(),
%%   <<"Marker">> => string(),
%%   <<"PoliciesGrantingServiceAccess">> => list(list_policies_granting_service_access_entry())
%% }
-type list_policies_granting_service_access_response() :: #{binary() => any()}.

%% Example:
%% create_saml_provider_request() :: #{
%%   <<"AddPrivateKey">> => string(),
%%   <<"AssertionEncryptionMode">> => list(any()),
%%   <<"Name">> := string(),
%%   <<"SAMLMetadataDocument">> := string(),
%%   <<"Tags">> => list(tag())
%% }
-type create_saml_provider_request() :: #{binary() => any()}.

%% Example:
%% detach_user_policy_request() :: #{
%%   <<"PolicyArn">> := string(),
%%   <<"UserName">> := string()
%% }
-type detach_user_policy_request() :: #{binary() => any()}.

%% Example:
%% get_mfa_device_response() :: #{
%%   <<"Certifications">> => map(),
%%   <<"EnableDate">> => non_neg_integer(),
%%   <<"SerialNumber">> => string(),
%%   <<"UserName">> => string()
%% }
-type get_mfa_device_response() :: #{binary() => any()}.

%% Example:
%% delete_service_linked_role_request() :: #{
%%   <<"RoleName">> := string()
%% }
-type delete_service_linked_role_request() :: #{binary() => any()}.

%% Example:
%% put_user_permissions_boundary_request() :: #{
%%   <<"PermissionsBoundary">> := string(),
%%   <<"UserName">> := string()
%% }
-type put_user_permissions_boundary_request() :: #{binary() => any()}.

%% Example:
%% get_organizations_access_report_response() :: #{
%%   <<"AccessDetails">> => list(access_detail()),
%%   <<"ErrorDetails">> => error_details(),
%%   <<"IsTruncated">> => boolean(),
%%   <<"JobCompletionDate">> => non_neg_integer(),
%%   <<"JobCreationDate">> => non_neg_integer(),
%%   <<"JobStatus">> => list(any()),
%%   <<"Marker">> => string(),
%%   <<"NumberOfServicesAccessible">> => integer(),
%%   <<"NumberOfServicesNotAccessed">> => integer()
%% }
-type get_organizations_access_report_response() :: #{binary() => any()}.

%% Example:
%% list_policy_versions_response() :: #{
%%   <<"IsTruncated">> => boolean(),
%%   <<"Marker">> => string(),
%%   <<"Versions">> => list(policy_version())
%% }
-type list_policy_versions_response() :: #{binary() => any()}.

%% Example:
%% list_saml_providers_response() :: #{
%%   <<"SAMLProviderList">> => list(saml_provider_list_entry())
%% }
-type list_saml_providers_response() :: #{binary() => any()}.

%% Example:
%% invalid_user_type_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_user_type_exception() :: #{binary() => any()}.

%% Example:
%% set_default_policy_version_request() :: #{
%%   <<"PolicyArn">> := string(),
%%   <<"VersionId">> := string()
%% }
-type set_default_policy_version_request() :: #{binary() => any()}.

%% Example:
%% get_policy_version_response() :: #{
%%   <<"PolicyVersion">> => policy_version()
%% }
-type get_policy_version_response() :: #{binary() => any()}.

%% Example:
%% key_pair_mismatch_exception() :: #{
%%   <<"message">> => string()
%% }
-type key_pair_mismatch_exception() :: #{binary() => any()}.

%% Example:
%% list_user_tags_request() :: #{
%%   <<"Marker">> => string(),
%%   <<"MaxItems">> => integer(),
%%   <<"UserName">> := string()
%% }
-type list_user_tags_request() :: #{binary() => any()}.

%% Example:
%% resource_specific_result() :: #{
%%   <<"EvalDecisionDetails">> => map(),
%%   <<"EvalResourceDecision">> => list(any()),
%%   <<"EvalResourceName">> => string(),
%%   <<"MatchedStatements">> => list(statement()),
%%   <<"MissingContextValues">> => list(string()),
%%   <<"PermissionsBoundaryDecisionDetail">> => permissions_boundary_decision_detail()
%% }
-type resource_specific_result() :: #{binary() => any()}.

%% Example:
%% instance_profile() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreateDate">> => non_neg_integer(),
%%   <<"InstanceProfileId">> => string(),
%%   <<"InstanceProfileName">> => string(),
%%   <<"Path">> => string(),
%%   <<"Roles">> => list(role()),
%%   <<"Tags">> => list(tag())
%% }
-type instance_profile() :: #{binary() => any()}.

%% Example:
%% attach_group_policy_request() :: #{
%%   <<"GroupName">> := string(),
%%   <<"PolicyArn">> := string()
%% }
-type attach_group_policy_request() :: #{binary() => any()}.

%% Example:
%% create_open_id_connect_provider_response() :: #{
%%   <<"OpenIDConnectProviderArn">> => string(),
%%   <<"Tags">> => list(tag())
%% }
-type create_open_id_connect_provider_response() :: #{binary() => any()}.

%% Example:
%% list_policy_tags_response() :: #{
%%   <<"IsTruncated">> => boolean(),
%%   <<"Marker">> => string(),
%%   <<"Tags">> => list(tag())
%% }
-type list_policy_tags_response() :: #{binary() => any()}.

%% Example:
%% enable_organizations_root_credentials_management_request() :: #{

%% }
-type enable_organizations_root_credentials_management_request() :: #{binary() => any()}.

%% Example:
%% list_attached_group_policies_request() :: #{
%%   <<"GroupName">> := string(),
%%   <<"Marker">> => string(),
%%   <<"MaxItems">> => integer(),
%%   <<"PathPrefix">> => string()
%% }
-type list_attached_group_policies_request() :: #{binary() => any()}.

%% Example:
%% get_policy_version_request() :: #{
%%   <<"PolicyArn">> := string(),
%%   <<"VersionId">> := string()
%% }
-type get_policy_version_request() :: #{binary() => any()}.

%% Example:
%% delete_user_policy_request() :: #{
%%   <<"PolicyName">> := string(),
%%   <<"UserName">> := string()
%% }
-type delete_user_policy_request() :: #{binary() => any()}.

%% Example:
%% disable_organizations_root_sessions_request() :: #{

%% }
-type disable_organizations_root_sessions_request() :: #{binary() => any()}.

%% Example:
%% context_entry() :: #{
%%   <<"ContextKeyName">> => string(),
%%   <<"ContextKeyType">> => list(any()),
%%   <<"ContextKeyValues">> => list(string())
%% }
-type context_entry() :: #{binary() => any()}.

%% Example:
%% list_server_certificates_response() :: #{
%%   <<"IsTruncated">> => boolean(),
%%   <<"Marker">> => string(),
%%   <<"ServerCertificateMetadataList">> => list(server_certificate_metadata())
%% }
-type list_server_certificates_response() :: #{binary() => any()}.

%% Example:
%% enable_mfa_device_request() :: #{
%%   <<"AuthenticationCode1">> := string(),
%%   <<"AuthenticationCode2">> := string(),
%%   <<"SerialNumber">> := string(),
%%   <<"UserName">> := string()
%% }
-type enable_mfa_device_request() :: #{binary() => any()}.

%% Example:
%% get_open_id_connect_provider_response() :: #{
%%   <<"ClientIDList">> => list(string()),
%%   <<"CreateDate">> => non_neg_integer(),
%%   <<"Tags">> => list(tag()),
%%   <<"ThumbprintList">> => list(string()),
%%   <<"Url">> => string()
%% }
-type get_open_id_connect_provider_response() :: #{binary() => any()}.

%% Example:
%% get_service_last_accessed_details_response() :: #{
%%   <<"Error">> => error_details(),
%%   <<"IsTruncated">> => boolean(),
%%   <<"JobCompletionDate">> => non_neg_integer(),
%%   <<"JobCreationDate">> => non_neg_integer(),
%%   <<"JobStatus">> => list(any()),
%%   <<"JobType">> => list(any()),
%%   <<"Marker">> => string(),
%%   <<"ServicesLastAccessed">> => list(service_last_accessed())
%% }
-type get_service_last_accessed_details_response() :: #{binary() => any()}.

%% Example:
%% get_context_keys_for_policy_response() :: #{
%%   <<"ContextKeyNames">> => list(string())
%% }
-type get_context_keys_for_policy_response() :: #{binary() => any()}.

%% Example:
%% put_role_policy_request() :: #{
%%   <<"PolicyDocument">> := string(),
%%   <<"PolicyName">> := string(),
%%   <<"RoleName">> := string()
%% }
-type put_role_policy_request() :: #{binary() => any()}.

%% Example:
%% list_policies_response() :: #{
%%   <<"IsTruncated">> => boolean(),
%%   <<"Marker">> => string(),
%%   <<"Policies">> => list(policy())
%% }
-type list_policies_response() :: #{binary() => any()}.

%% Example:
%% create_service_specific_credential_response() :: #{
%%   <<"ServiceSpecificCredential">> => service_specific_credential()
%% }
-type create_service_specific_credential_response() :: #{binary() => any()}.

%% Example:
%% list_organizations_features_response() :: #{
%%   <<"EnabledFeatures">> => list(list(any())()),
%%   <<"OrganizationId">> => string()
%% }
-type list_organizations_features_response() :: #{binary() => any()}.

%% Example:
%% policy_granting_service_access() :: #{
%%   <<"EntityName">> => string(),
%%   <<"EntityType">> => list(any()),
%%   <<"PolicyArn">> => string(),
%%   <<"PolicyName">> => string(),
%%   <<"PolicyType">> => list(any())
%% }
-type policy_granting_service_access() :: #{binary() => any()}.

%% Example:
%% policy_not_attachable_exception() :: #{
%%   <<"message">> => string()
%% }
-type policy_not_attachable_exception() :: #{binary() => any()}.

%% Example:
%% policy_group() :: #{
%%   <<"GroupId">> => string(),
%%   <<"GroupName">> => string()
%% }
-type policy_group() :: #{binary() => any()}.

%% Example:
%% no_such_entity_exception() :: #{
%%   <<"message">> => string()
%% }
-type no_such_entity_exception() :: #{binary() => any()}.

%% Example:
%% list_server_certificate_tags_request() :: #{
%%   <<"Marker">> => string(),
%%   <<"MaxItems">> => integer(),
%%   <<"ServerCertificateName">> := string()
%% }
-type list_server_certificate_tags_request() :: #{binary() => any()}.

%% Example:
%% service_failure_exception() :: #{
%%   <<"message">> => string()
%% }
-type service_failure_exception() :: #{binary() => any()}.

%% Example:
%% list_entities_for_policy_request() :: #{
%%   <<"EntityFilter">> => list(any()),
%%   <<"Marker">> => string(),
%%   <<"MaxItems">> => integer(),
%%   <<"PathPrefix">> => string(),
%%   <<"PolicyArn">> := string(),
%%   <<"PolicyUsageFilter">> => list(any())
%% }
-type list_entities_for_policy_request() :: #{binary() => any()}.

%% Example:
%% delete_virtual_mfa_device_request() :: #{
%%   <<"SerialNumber">> := string()
%% }
-type delete_virtual_mfa_device_request() :: #{binary() => any()}.

%% Example:
%% list_groups_for_user_response() :: #{
%%   <<"Groups">> => list(group()),
%%   <<"IsTruncated">> => boolean(),
%%   <<"Marker">> => string()
%% }
-type list_groups_for_user_response() :: #{binary() => any()}.

%% Example:
%% list_policies_request() :: #{
%%   <<"Marker">> => string(),
%%   <<"MaxItems">> => integer(),
%%   <<"OnlyAttached">> => boolean(),
%%   <<"PathPrefix">> => string(),
%%   <<"PolicyUsageFilter">> => list(any()),
%%   <<"Scope">> => list(any())
%% }
-type list_policies_request() :: #{binary() => any()}.

%% Example:
%% get_policy_request() :: #{
%%   <<"PolicyArn">> := string()
%% }
-type get_policy_request() :: #{binary() => any()}.

%% Example:
%% password_policy() :: #{
%%   <<"AllowUsersToChangePassword">> => boolean(),
%%   <<"ExpirePasswords">> => boolean(),
%%   <<"HardExpiry">> => boolean(),
%%   <<"MaxPasswordAge">> => integer(),
%%   <<"MinimumPasswordLength">> => integer(),
%%   <<"PasswordReusePrevention">> => integer(),
%%   <<"RequireLowercaseCharacters">> => boolean(),
%%   <<"RequireNumbers">> => boolean(),
%%   <<"RequireSymbols">> => boolean(),
%%   <<"RequireUppercaseCharacters">> => boolean()
%% }
-type password_policy() :: #{binary() => any()}.

%% Example:
%% delete_group_policy_request() :: #{
%%   <<"GroupName">> := string(),
%%   <<"PolicyName">> := string()
%% }
-type delete_group_policy_request() :: #{binary() => any()}.

%% Example:
%% list_attached_role_policies_request() :: #{
%%   <<"Marker">> => string(),
%%   <<"MaxItems">> => integer(),
%%   <<"PathPrefix">> => string(),
%%   <<"RoleName">> := string()
%% }
-type list_attached_role_policies_request() :: #{binary() => any()}.

%% Example:
%% list_mfa_devices_response() :: #{
%%   <<"IsTruncated">> => boolean(),
%%   <<"MFADevices">> => list(mfa_device()),
%%   <<"Marker">> => string()
%% }
-type list_mfa_devices_response() :: #{binary() => any()}.

%% Example:
%% delete_conflict_exception() :: #{
%%   <<"message">> => string()
%% }
-type delete_conflict_exception() :: #{binary() => any()}.

%% Example:
%% upload_ssh_public_key_response() :: #{
%%   <<"SSHPublicKey">> => ssh_public_key()
%% }
-type upload_ssh_public_key_response() :: #{binary() => any()}.

%% Example:
%% policy_evaluation_exception() :: #{
%%   <<"message">> => string()
%% }
-type policy_evaluation_exception() :: #{binary() => any()}.

%% Example:
%% tag_saml_provider_request() :: #{
%%   <<"SAMLProviderArn">> := string(),
%%   <<"Tags">> := list(tag())
%% }
-type tag_saml_provider_request() :: #{binary() => any()}.

%% Example:
%% list_role_policies_response() :: #{
%%   <<"IsTruncated">> => boolean(),
%%   <<"Marker">> => string(),
%%   <<"PolicyNames">> => list(string())
%% }
-type list_role_policies_response() :: #{binary() => any()}.

%% Example:
%% create_policy_request() :: #{
%%   <<"Description">> => string(),
%%   <<"Path">> => string(),
%%   <<"PolicyDocument">> := string(),
%%   <<"PolicyName">> := string(),
%%   <<"Tags">> => list(tag())
%% }
-type create_policy_request() :: #{binary() => any()}.

%% Example:
%% entity_info() :: #{
%%   <<"Arn">> => string(),
%%   <<"Id">> => string(),
%%   <<"Name">> => string(),
%%   <<"Path">> => string(),
%%   <<"Type">> => list(any())
%% }
-type entity_info() :: #{binary() => any()}.

%% Example:
%% get_user_response() :: #{
%%   <<"User">> => user()
%% }
-type get_user_response() :: #{binary() => any()}.

%% Example:
%% create_instance_profile_response() :: #{
%%   <<"InstanceProfile">> => instance_profile()
%% }
-type create_instance_profile_response() :: #{binary() => any()}.

%% Example:
%% role() :: #{
%%   <<"Arn">> => string(),
%%   <<"AssumeRolePolicyDocument">> => string(),
%%   <<"CreateDate">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"MaxSessionDuration">> => integer(),
%%   <<"Path">> => string(),
%%   <<"PermissionsBoundary">> => attached_permissions_boundary(),
%%   <<"RoleId">> => string(),
%%   <<"RoleLastUsed">> => role_last_used(),
%%   <<"RoleName">> => string(),
%%   <<"Tags">> => list(tag())
%% }
-type role() :: #{binary() => any()}.

%% Example:
%% attach_user_policy_request() :: #{
%%   <<"PolicyArn">> := string(),
%%   <<"UserName">> := string()
%% }
-type attach_user_policy_request() :: #{binary() => any()}.

%% Example:
%% list_roles_response() :: #{
%%   <<"IsTruncated">> => boolean(),
%%   <<"Marker">> => string(),
%%   <<"Roles">> => list(role())
%% }
-type list_roles_response() :: #{binary() => any()}.

%% Example:
%% get_service_linked_role_deletion_status_response() :: #{
%%   <<"Reason">> => deletion_task_failure_reason_type(),
%%   <<"Status">> => list(any())
%% }
-type get_service_linked_role_deletion_status_response() :: #{binary() => any()}.

%% Example:
%% untag_open_id_connect_provider_request() :: #{
%%   <<"OpenIDConnectProviderArn">> := string(),
%%   <<"TagKeys">> := list(string())
%% }
-type untag_open_id_connect_provider_request() :: #{binary() => any()}.

%% Example:
%% list_service_specific_credentials_request() :: #{
%%   <<"AllUsers">> => boolean(),
%%   <<"Marker">> => string(),
%%   <<"MaxItems">> => integer(),
%%   <<"ServiceName">> => string(),
%%   <<"UserName">> => string()
%% }
-type list_service_specific_credentials_request() :: #{binary() => any()}.

%% Example:
%% list_ssh_public_keys_request() :: #{
%%   <<"Marker">> => string(),
%%   <<"MaxItems">> => integer(),
%%   <<"UserName">> => string()
%% }
-type list_ssh_public_keys_request() :: #{binary() => any()}.

%% Example:
%% get_saml_provider_response() :: #{
%%   <<"AssertionEncryptionMode">> => list(any()),
%%   <<"CreateDate">> => non_neg_integer(),
%%   <<"PrivateKeyList">> => list(saml_private_key()),
%%   <<"SAMLMetadataDocument">> => string(),
%%   <<"SAMLProviderUUID">> => string(),
%%   <<"Tags">> => list(tag()),
%%   <<"ValidUntil">> => non_neg_integer()
%% }
-type get_saml_provider_response() :: #{binary() => any()}.

%% Example:
%% list_entities_for_policy_response() :: #{
%%   <<"IsTruncated">> => boolean(),
%%   <<"Marker">> => string(),
%%   <<"PolicyGroups">> => list(policy_group()),
%%   <<"PolicyRoles">> => list(policy_role()),
%%   <<"PolicyUsers">> => list(policy_user())
%% }
-type list_entities_for_policy_response() :: #{binary() => any()}.

%% Example:
%% create_policy_version_response() :: #{
%%   <<"PolicyVersion">> => policy_version()
%% }
-type create_policy_version_response() :: #{binary() => any()}.

%% Example:
%% simulate_custom_policy_request() :: #{
%%   <<"ActionNames">> := list(string()),
%%   <<"CallerArn">> => string(),
%%   <<"ContextEntries">> => list(context_entry()),
%%   <<"Marker">> => string(),
%%   <<"MaxItems">> => integer(),
%%   <<"PermissionsBoundaryPolicyInputList">> => list(string()),
%%   <<"PolicyInputList">> := list(string()),
%%   <<"ResourceArns">> => list(string()),
%%   <<"ResourceHandlingOption">> => string(),
%%   <<"ResourceOwner">> => string(),
%%   <<"ResourcePolicy">> => string()
%% }
-type simulate_custom_policy_request() :: #{binary() => any()}.

%% Example:
%% role_detail() :: #{
%%   <<"Arn">> => string(),
%%   <<"AssumeRolePolicyDocument">> => string(),
%%   <<"AttachedManagedPolicies">> => list(attached_policy()),
%%   <<"CreateDate">> => non_neg_integer(),
%%   <<"InstanceProfileList">> => list(instance_profile()),
%%   <<"Path">> => string(),
%%   <<"PermissionsBoundary">> => attached_permissions_boundary(),
%%   <<"RoleId">> => string(),
%%   <<"RoleLastUsed">> => role_last_used(),
%%   <<"RoleName">> => string(),
%%   <<"RolePolicyList">> => list(policy_detail()),
%%   <<"Tags">> => list(tag())
%% }
-type role_detail() :: #{binary() => any()}.

%% Example:
%% list_open_id_connect_providers_response() :: #{
%%   <<"OpenIDConnectProviderList">> => list(open_id_connect_provider_list_entry())
%% }
-type list_open_id_connect_providers_response() :: #{binary() => any()}.

%% Example:
%% policy_detail() :: #{
%%   <<"PolicyDocument">> => string(),
%%   <<"PolicyName">> => string()
%% }
-type policy_detail() :: #{binary() => any()}.

%% Example:
%% statement() :: #{
%%   <<"EndPosition">> => position(),
%%   <<"SourcePolicyId">> => string(),
%%   <<"SourcePolicyType">> => list(any()),
%%   <<"StartPosition">> => position()
%% }
-type statement() :: #{binary() => any()}.

%% Example:
%% delete_user_permissions_boundary_request() :: #{
%%   <<"UserName">> := string()
%% }
-type delete_user_permissions_boundary_request() :: #{binary() => any()}.

%% Example:
%% get_account_authorization_details_request() :: #{
%%   <<"Filter">> => list(list(any())()),
%%   <<"Marker">> => string(),
%%   <<"MaxItems">> => integer()
%% }
-type get_account_authorization_details_request() :: #{binary() => any()}.

%% Example:
%% untag_user_request() :: #{
%%   <<"TagKeys">> := list(string()),
%%   <<"UserName">> := string()
%% }
-type untag_user_request() :: #{binary() => any()}.

%% Example:
%% unmodifiable_entity_exception() :: #{
%%   <<"message">> => string()
%% }
-type unmodifiable_entity_exception() :: #{binary() => any()}.

%% Example:
%% get_login_profile_response() :: #{
%%   <<"LoginProfile">> => login_profile()
%% }
-type get_login_profile_response() :: #{binary() => any()}.

%% Example:
%% list_instance_profiles_response() :: #{
%%   <<"InstanceProfiles">> => list(instance_profile()),
%%   <<"IsTruncated">> => boolean(),
%%   <<"Marker">> => string()
%% }
-type list_instance_profiles_response() :: #{binary() => any()}.

%% Example:
%% service_not_supported_exception() :: #{
%%   <<"message">> => string()
%% }
-type service_not_supported_exception() :: #{binary() => any()}.

%% Example:
%% account_not_management_or_delegated_administrator_exception() :: #{
%%   <<"Message">> => string()
%% }
-type account_not_management_or_delegated_administrator_exception() :: #{binary() => any()}.

%% Example:
%% update_ssh_public_key_request() :: #{
%%   <<"SSHPublicKeyId">> := string(),
%%   <<"Status">> := list(any()),
%%   <<"UserName">> := string()
%% }
-type update_ssh_public_key_request() :: #{binary() => any()}.

%% Example:
%% list_mfa_devices_request() :: #{
%%   <<"Marker">> => string(),
%%   <<"MaxItems">> => integer(),
%%   <<"UserName">> => string()
%% }
-type list_mfa_devices_request() :: #{binary() => any()}.

%% Example:
%% update_assume_role_policy_request() :: #{
%%   <<"PolicyDocument">> := string(),
%%   <<"RoleName">> := string()
%% }
-type update_assume_role_policy_request() :: #{binary() => any()}.

%% Example:
%% upload_signing_certificate_request() :: #{
%%   <<"CertificateBody">> := string(),
%%   <<"UserName">> => string()
%% }
-type upload_signing_certificate_request() :: #{binary() => any()}.

%% Example:
%% list_service_specific_credentials_response() :: #{
%%   <<"IsTruncated">> => boolean(),
%%   <<"Marker">> => string(),
%%   <<"ServiceSpecificCredentials">> => list(service_specific_credential_metadata())
%% }
-type list_service_specific_credentials_response() :: #{binary() => any()}.

%% Example:
%% position() :: #{
%%   <<"Column">> => integer(),
%%   <<"Line">> => integer()
%% }
-type position() :: #{binary() => any()}.

%% Example:
%% enable_organizations_root_sessions_response() :: #{
%%   <<"EnabledFeatures">> => list(list(any())()),
%%   <<"OrganizationId">> => string()
%% }
-type enable_organizations_root_sessions_response() :: #{binary() => any()}.

%% Example:
%% delete_instance_profile_request() :: #{
%%   <<"InstanceProfileName">> := string()
%% }
-type delete_instance_profile_request() :: #{binary() => any()}.

%% Example:
%% group_detail() :: #{
%%   <<"Arn">> => string(),
%%   <<"AttachedManagedPolicies">> => list(attached_policy()),
%%   <<"CreateDate">> => non_neg_integer(),
%%   <<"GroupId">> => string(),
%%   <<"GroupName">> => string(),
%%   <<"GroupPolicyList">> => list(policy_detail()),
%%   <<"Path">> => string()
%% }
-type group_detail() :: #{binary() => any()}.

%% Example:
%% upload_server_certificate_request() :: #{
%%   <<"CertificateBody">> := string(),
%%   <<"CertificateChain">> => string(),
%%   <<"Path">> => string(),
%%   <<"PrivateKey">> := string(),
%%   <<"ServerCertificateName">> := string(),
%%   <<"Tags">> => list(tag())
%% }
-type upload_server_certificate_request() :: #{binary() => any()}.

%% Example:
%% update_group_request() :: #{
%%   <<"GroupName">> := string(),
%%   <<"NewGroupName">> => string(),
%%   <<"NewPath">> => string()
%% }
-type update_group_request() :: #{binary() => any()}.

%% Example:
%% get_access_key_last_used_response() :: #{
%%   <<"AccessKeyLastUsed">> => access_key_last_used(),
%%   <<"UserName">> => string()
%% }
-type get_access_key_last_used_response() :: #{binary() => any()}.

%% Example:
%% create_instance_profile_request() :: #{
%%   <<"InstanceProfileName">> := string(),
%%   <<"Path">> => string(),
%%   <<"Tags">> => list(tag())
%% }
-type create_instance_profile_request() :: #{binary() => any()}.

%% Example:
%% credential_report_not_ready_exception() :: #{
%%   <<"message">> => string()
%% }
-type credential_report_not_ready_exception() :: #{binary() => any()}.

%% Example:
%% policy_version() :: #{
%%   <<"CreateDate">> => non_neg_integer(),
%%   <<"Document">> => string(),
%%   <<"IsDefaultVersion">> => boolean(),
%%   <<"VersionId">> => string()
%% }
-type policy_version() :: #{binary() => any()}.

%% Example:
%% managed_policy_detail() :: #{
%%   <<"Arn">> => string(),
%%   <<"AttachmentCount">> => integer(),
%%   <<"CreateDate">> => non_neg_integer(),
%%   <<"DefaultVersionId">> => string(),
%%   <<"Description">> => string(),
%%   <<"IsAttachable">> => boolean(),
%%   <<"Path">> => string(),
%%   <<"PermissionsBoundaryUsageCount">> => integer(),
%%   <<"PolicyId">> => string(),
%%   <<"PolicyName">> => string(),
%%   <<"PolicyVersionList">> => list(policy_version()),
%%   <<"UpdateDate">> => non_neg_integer()
%% }
-type managed_policy_detail() :: #{binary() => any()}.

%% Example:
%% untag_server_certificate_request() :: #{
%%   <<"ServerCertificateName">> := string(),
%%   <<"TagKeys">> := list(string())
%% }
-type untag_server_certificate_request() :: #{binary() => any()}.

%% Example:
%% service_specific_credential_metadata() :: #{
%%   <<"CreateDate">> => non_neg_integer(),
%%   <<"ExpirationDate">> => non_neg_integer(),
%%   <<"ServiceCredentialAlias">> => string(),
%%   <<"ServiceName">> => string(),
%%   <<"ServiceSpecificCredentialId">> => string(),
%%   <<"ServiceUserName">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"UserName">> => string()
%% }
-type service_specific_credential_metadata() :: #{binary() => any()}.

%% Example:
%% get_service_last_accessed_details_request() :: #{
%%   <<"JobId">> := string(),
%%   <<"Marker">> => string(),
%%   <<"MaxItems">> => integer()
%% }
-type get_service_last_accessed_details_request() :: #{binary() => any()}.

%% Example:
%% service_access_not_enabled_exception() :: #{
%%   <<"Message">> => string()
%% }
-type service_access_not_enabled_exception() :: #{binary() => any()}.

%% Example:
%% access_key_metadata() :: #{
%%   <<"AccessKeyId">> => string(),
%%   <<"CreateDate">> => non_neg_integer(),
%%   <<"Status">> => list(any()),
%%   <<"UserName">> => string()
%% }
-type access_key_metadata() :: #{binary() => any()}.

%% Example:
%% create_account_alias_request() :: #{
%%   <<"AccountAlias">> := string()
%% }
-type create_account_alias_request() :: #{binary() => any()}.

%% Example:
%% put_group_policy_request() :: #{
%%   <<"GroupName">> := string(),
%%   <<"PolicyDocument">> := string(),
%%   <<"PolicyName">> := string()
%% }
-type put_group_policy_request() :: #{binary() => any()}.

%% Example:
%% ssh_public_key_metadata() :: #{
%%   <<"SSHPublicKeyId">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"UploadDate">> => non_neg_integer(),
%%   <<"UserName">> => string()
%% }
-type ssh_public_key_metadata() :: #{binary() => any()}.

%% Example:
%% get_instance_profile_request() :: #{
%%   <<"InstanceProfileName">> := string()
%% }
-type get_instance_profile_request() :: #{binary() => any()}.

%% Example:
%% get_group_policy_response() :: #{
%%   <<"GroupName">> => string(),
%%   <<"PolicyDocument">> => string(),
%%   <<"PolicyName">> => string()
%% }
-type get_group_policy_response() :: #{binary() => any()}.

%% Example:
%% delete_service_specific_credential_request() :: #{
%%   <<"ServiceSpecificCredentialId">> := string(),
%%   <<"UserName">> => string()
%% }
-type delete_service_specific_credential_request() :: #{binary() => any()}.

%% Example:
%% list_groups_for_user_request() :: #{
%%   <<"Marker">> => string(),
%%   <<"MaxItems">> => integer(),
%%   <<"UserName">> := string()
%% }
-type list_groups_for_user_request() :: #{binary() => any()}.

%% Example:
%% list_role_tags_response() :: #{
%%   <<"IsTruncated">> => boolean(),
%%   <<"Marker">> => string(),
%%   <<"Tags">> => list(tag())
%% }
-type list_role_tags_response() :: #{binary() => any()}.

%% Example:
%% delete_policy_version_request() :: #{
%%   <<"PolicyArn">> := string(),
%%   <<"VersionId">> := string()
%% }
-type delete_policy_version_request() :: #{binary() => any()}.

%% Example:
%% list_mfa_device_tags_response() :: #{
%%   <<"IsTruncated">> => boolean(),
%%   <<"Marker">> => string(),
%%   <<"Tags">> => list(tag())
%% }
-type list_mfa_device_tags_response() :: #{binary() => any()}.

%% Example:
%% get_user_policy_request() :: #{
%%   <<"PolicyName">> := string(),
%%   <<"UserName">> := string()
%% }
-type get_user_policy_request() :: #{binary() => any()}.

%% Example:
%% tag_mfa_device_request() :: #{
%%   <<"SerialNumber">> := string(),
%%   <<"Tags">> := list(tag())
%% }
-type tag_mfa_device_request() :: #{binary() => any()}.

%% Example:
%% report_generation_limit_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type report_generation_limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% open_id_idp_communication_error_exception() :: #{
%%   <<"message">> => string()
%% }
-type open_id_idp_communication_error_exception() :: #{binary() => any()}.

%% Example:
%% open_id_connect_provider_list_entry() :: #{
%%   <<"Arn">> => string()
%% }
-type open_id_connect_provider_list_entry() :: #{binary() => any()}.

%% Example:
%% get_user_request() :: #{
%%   <<"UserName">> => string()
%% }
-type get_user_request() :: #{binary() => any()}.

%% Example:
%% organization_not_in_all_features_mode_exception() :: #{
%%   <<"Message">> => string()
%% }
-type organization_not_in_all_features_mode_exception() :: #{binary() => any()}.

%% Example:
%% create_service_linked_role_request() :: #{
%%   <<"AWSServiceName">> := string(),
%%   <<"CustomSuffix">> => string(),
%%   <<"Description">> => string()
%% }
-type create_service_linked_role_request() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% create_policy_version_request() :: #{
%%   <<"PolicyArn">> := string(),
%%   <<"PolicyDocument">> := string(),
%%   <<"SetAsDefault">> => boolean()
%% }
-type create_policy_version_request() :: #{binary() => any()}.

%% Example:
%% get_role_request() :: #{
%%   <<"RoleName">> := string()
%% }
-type get_role_request() :: #{binary() => any()}.

%% Example:
%% update_role_response() :: #{

%% }
-type update_role_response() :: #{binary() => any()}.

%% Example:
%% deactivate_mfa_device_request() :: #{
%%   <<"SerialNumber">> := string(),
%%   <<"UserName">> => string()
%% }
-type deactivate_mfa_device_request() :: #{binary() => any()}.

%% Example:
%% detach_group_policy_request() :: #{
%%   <<"GroupName">> := string(),
%%   <<"PolicyArn">> := string()
%% }
-type detach_group_policy_request() :: #{binary() => any()}.

%% Example:
%% saml_provider_list_entry() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreateDate">> => non_neg_integer(),
%%   <<"ValidUntil">> => non_neg_integer()
%% }
-type saml_provider_list_entry() :: #{binary() => any()}.

%% Example:
%% delete_server_certificate_request() :: #{
%%   <<"ServerCertificateName">> := string()
%% }
-type delete_server_certificate_request() :: #{binary() => any()}.

%% Example:
%% get_context_keys_for_custom_policy_request() :: #{
%%   <<"PolicyInputList">> := list(string())
%% }
-type get_context_keys_for_custom_policy_request() :: #{binary() => any()}.

%% Example:
%% list_attached_user_policies_response() :: #{
%%   <<"AttachedPolicies">> => list(attached_policy()),
%%   <<"IsTruncated">> => boolean(),
%%   <<"Marker">> => string()
%% }
-type list_attached_user_policies_response() :: #{binary() => any()}.

%% Example:
%% access_key() :: #{
%%   <<"AccessKeyId">> => string(),
%%   <<"CreateDate">> => non_neg_integer(),
%%   <<"SecretAccessKey">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"UserName">> => string()
%% }
-type access_key() :: #{binary() => any()}.

%% Example:
%% update_server_certificate_request() :: #{
%%   <<"NewPath">> => string(),
%%   <<"NewServerCertificateName">> => string(),
%%   <<"ServerCertificateName">> := string()
%% }
-type update_server_certificate_request() :: #{binary() => any()}.

%% Example:
%% organization_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type organization_not_found_exception() :: #{binary() => any()}.

%% Example:
%% list_access_keys_request() :: #{
%%   <<"Marker">> => string(),
%%   <<"MaxItems">> => integer(),
%%   <<"UserName">> => string()
%% }
-type list_access_keys_request() :: #{binary() => any()}.

%% Example:
%% delete_role_policy_request() :: #{
%%   <<"PolicyName">> := string(),
%%   <<"RoleName">> := string()
%% }
-type delete_role_policy_request() :: #{binary() => any()}.

%% Example:
%% list_users_response() :: #{
%%   <<"IsTruncated">> => boolean(),
%%   <<"Marker">> => string(),
%%   <<"Users">> => list(user())
%% }
-type list_users_response() :: #{binary() => any()}.

%% Example:
%% update_account_password_policy_request() :: #{
%%   <<"AllowUsersToChangePassword">> => boolean(),
%%   <<"HardExpiry">> => boolean(),
%%   <<"MaxPasswordAge">> => integer(),
%%   <<"MinimumPasswordLength">> => integer(),
%%   <<"PasswordReusePrevention">> => integer(),
%%   <<"RequireLowercaseCharacters">> => boolean(),
%%   <<"RequireNumbers">> => boolean(),
%%   <<"RequireSymbols">> => boolean(),
%%   <<"RequireUppercaseCharacters">> => boolean()
%% }
-type update_account_password_policy_request() :: #{binary() => any()}.

%% Example:
%% get_ssh_public_key_request() :: #{
%%   <<"Encoding">> := list(any()),
%%   <<"SSHPublicKeyId">> := string(),
%%   <<"UserName">> := string()
%% }
-type get_ssh_public_key_request() :: #{binary() => any()}.

%% Example:
%% list_instance_profile_tags_request() :: #{
%%   <<"InstanceProfileName">> := string(),
%%   <<"Marker">> => string(),
%%   <<"MaxItems">> => integer()
%% }
-type list_instance_profile_tags_request() :: #{binary() => any()}.

%% Example:
%% role_last_used() :: #{
%%   <<"LastUsedDate">> => non_neg_integer(),
%%   <<"Region">> => string()
%% }
-type role_last_used() :: #{binary() => any()}.

%% Example:
%% disable_organizations_root_credentials_management_request() :: #{

%% }
-type disable_organizations_root_credentials_management_request() :: #{binary() => any()}.

%% Example:
%% delete_saml_provider_request() :: #{
%%   <<"SAMLProviderArn">> := string()
%% }
-type delete_saml_provider_request() :: #{binary() => any()}.

%% Example:
%% list_server_certificate_tags_response() :: #{
%%   <<"IsTruncated">> => boolean(),
%%   <<"Marker">> => string(),
%%   <<"Tags">> => list(tag())
%% }
-type list_server_certificate_tags_response() :: #{binary() => any()}.

%% Example:
%% list_instance_profile_tags_response() :: #{
%%   <<"IsTruncated">> => boolean(),
%%   <<"Marker">> => string(),
%%   <<"Tags">> => list(tag())
%% }
-type list_instance_profile_tags_response() :: #{binary() => any()}.

%% Example:
%% add_user_to_group_request() :: #{
%%   <<"GroupName">> := string(),
%%   <<"UserName">> := string()
%% }
-type add_user_to_group_request() :: #{binary() => any()}.

%% Example:
%% entity_temporarily_unmodifiable_exception() :: #{
%%   <<"message">> => string()
%% }
-type entity_temporarily_unmodifiable_exception() :: #{binary() => any()}.

%% Example:
%% delete_access_key_request() :: #{
%%   <<"AccessKeyId">> := string(),
%%   <<"UserName">> => string()
%% }
-type delete_access_key_request() :: #{binary() => any()}.

%% Example:
%% password_policy_violation_exception() :: #{
%%   <<"message">> => string()
%% }
-type password_policy_violation_exception() :: #{binary() => any()}.

%% Example:
%% disable_organizations_root_sessions_response() :: #{
%%   <<"EnabledFeatures">> => list(list(any())()),
%%   <<"OrganizationId">> => string()
%% }
-type disable_organizations_root_sessions_response() :: #{binary() => any()}.

%% Example:
%% invalid_certificate_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_certificate_exception() :: #{binary() => any()}.

%% Example:
%% invalid_input_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_input_exception() :: #{binary() => any()}.

%% Example:
%% list_policies_granting_service_access_entry() :: #{
%%   <<"Policies">> => list(policy_granting_service_access()),
%%   <<"ServiceNamespace">> => string()
%% }
-type list_policies_granting_service_access_entry() :: #{binary() => any()}.

%% Example:
%% untag_saml_provider_request() :: #{
%%   <<"SAMLProviderArn">> := string(),
%%   <<"TagKeys">> := list(string())
%% }
-type untag_saml_provider_request() :: #{binary() => any()}.

%% Example:
%% error_details() :: #{
%%   <<"Code">> => string(),
%%   <<"Message">> => string()
%% }
-type error_details() :: #{binary() => any()}.

%% Example:
%% get_access_key_last_used_request() :: #{
%%   <<"AccessKeyId">> := string()
%% }
-type get_access_key_last_used_request() :: #{binary() => any()}.

%% Example:
%% malformed_certificate_exception() :: #{
%%   <<"message">> => string()
%% }
-type malformed_certificate_exception() :: #{binary() => any()}.

%% Example:
%% delete_login_profile_request() :: #{
%%   <<"UserName">> => string()
%% }
-type delete_login_profile_request() :: #{binary() => any()}.

%% Example:
%% enable_organizations_root_sessions_request() :: #{

%% }
-type enable_organizations_root_sessions_request() :: #{binary() => any()}.

%% Example:
%% create_virtual_mfa_device_response() :: #{
%%   <<"VirtualMFADevice">> => virtual_mfa_device()
%% }
-type create_virtual_mfa_device_response() :: #{binary() => any()}.

%% Example:
%% update_role_description_response() :: #{
%%   <<"Role">> => role()
%% }
-type update_role_description_response() :: #{binary() => any()}.

%% Example:
%% set_security_token_service_preferences_request() :: #{
%%   <<"GlobalEndpointTokenVersion">> := list(any())
%% }
-type set_security_token_service_preferences_request() :: #{binary() => any()}.

%% Example:
%% create_group_request() :: #{
%%   <<"GroupName">> := string(),
%%   <<"Path">> => string()
%% }
-type create_group_request() :: #{binary() => any()}.

%% Example:
%% remove_role_from_instance_profile_request() :: #{
%%   <<"InstanceProfileName">> := string(),
%%   <<"RoleName">> := string()
%% }
-type remove_role_from_instance_profile_request() :: #{binary() => any()}.

%% Example:
%% service_specific_credential() :: #{
%%   <<"CreateDate">> => non_neg_integer(),
%%   <<"ExpirationDate">> => non_neg_integer(),
%%   <<"ServiceCredentialAlias">> => string(),
%%   <<"ServiceCredentialSecret">> => string(),
%%   <<"ServiceName">> => string(),
%%   <<"ServicePassword">> => string(),
%%   <<"ServiceSpecificCredentialId">> => string(),
%%   <<"ServiceUserName">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"UserName">> => string()
%% }
-type service_specific_credential() :: #{binary() => any()}.

%% Example:
%% tag_instance_profile_request() :: #{
%%   <<"InstanceProfileName">> := string(),
%%   <<"Tags">> := list(tag())
%% }
-type tag_instance_profile_request() :: #{binary() => any()}.

%% Example:
%% list_virtual_mfa_devices_response() :: #{
%%   <<"IsTruncated">> => boolean(),
%%   <<"Marker">> => string(),
%%   <<"VirtualMFADevices">> => list(virtual_mfa_device())
%% }
-type list_virtual_mfa_devices_response() :: #{binary() => any()}.

%% Example:
%% tag_open_id_connect_provider_request() :: #{
%%   <<"OpenIDConnectProviderArn">> := string(),
%%   <<"Tags">> := list(tag())
%% }
-type tag_open_id_connect_provider_request() :: #{binary() => any()}.

%% Example:
%% generate_organizations_access_report_response() :: #{
%%   <<"JobId">> => string()
%% }
-type generate_organizations_access_report_response() :: #{binary() => any()}.

%% Example:
%% list_virtual_mfa_devices_request() :: #{
%%   <<"AssignmentStatus">> => list(any()),
%%   <<"Marker">> => string(),
%%   <<"MaxItems">> => integer()
%% }
-type list_virtual_mfa_devices_request() :: #{binary() => any()}.

%% Example:
%% get_server_certificate_request() :: #{
%%   <<"ServerCertificateName">> := string()
%% }
-type get_server_certificate_request() :: #{binary() => any()}.

%% Example:
%% change_password_request() :: #{
%%   <<"NewPassword">> := string(),
%%   <<"OldPassword">> := string()
%% }
-type change_password_request() :: #{binary() => any()}.

%% Example:
%% list_role_tags_request() :: #{
%%   <<"Marker">> => string(),
%%   <<"MaxItems">> => integer(),
%%   <<"RoleName">> := string()
%% }
-type list_role_tags_request() :: #{binary() => any()}.

%% Example:
%% delete_user_request() :: #{
%%   <<"UserName">> := string()
%% }
-type delete_user_request() :: #{binary() => any()}.

%% Example:
%% generate_service_last_accessed_details_response() :: #{
%%   <<"JobId">> => string()
%% }
-type generate_service_last_accessed_details_response() :: #{binary() => any()}.

%% Example:
%% get_service_linked_role_deletion_status_request() :: #{
%%   <<"DeletionTaskId">> := string()
%% }
-type get_service_linked_role_deletion_status_request() :: #{binary() => any()}.

%% Example:
%% delete_account_alias_request() :: #{
%%   <<"AccountAlias">> := string()
%% }
-type delete_account_alias_request() :: #{binary() => any()}.

%% Example:
%% create_policy_response() :: #{
%%   <<"Policy">> => policy()
%% }
-type create_policy_response() :: #{binary() => any()}.

%% Example:
%% get_organizations_access_report_request() :: #{
%%   <<"JobId">> := string(),
%%   <<"Marker">> => string(),
%%   <<"MaxItems">> => integer(),
%%   <<"SortKey">> => list(any())
%% }
-type get_organizations_access_report_request() :: #{binary() => any()}.

%% Example:
%% list_policy_versions_request() :: #{
%%   <<"Marker">> => string(),
%%   <<"MaxItems">> => integer(),
%%   <<"PolicyArn">> := string()
%% }
-type list_policy_versions_request() :: #{binary() => any()}.

%% Example:
%% list_policies_granting_service_access_request() :: #{
%%   <<"Arn">> := string(),
%%   <<"Marker">> => string(),
%%   <<"ServiceNamespaces">> := list(string())
%% }
-type list_policies_granting_service_access_request() :: #{binary() => any()}.

%% Example:
%% get_account_password_policy_response() :: #{
%%   <<"PasswordPolicy">> => password_policy()
%% }
-type get_account_password_policy_response() :: #{binary() => any()}.

%% Example:
%% update_service_specific_credential_request() :: #{
%%   <<"ServiceSpecificCredentialId">> := string(),
%%   <<"Status">> := list(any()),
%%   <<"UserName">> => string()
%% }
-type update_service_specific_credential_request() :: #{binary() => any()}.

%% Example:
%% create_login_profile_response() :: #{
%%   <<"LoginProfile">> => login_profile()
%% }
-type create_login_profile_response() :: #{binary() => any()}.

%% Example:
%% reset_service_specific_credential_request() :: #{
%%   <<"ServiceSpecificCredentialId">> := string(),
%%   <<"UserName">> => string()
%% }
-type reset_service_specific_credential_request() :: #{binary() => any()}.

%% Example:
%% get_policy_response() :: #{
%%   <<"Policy">> => policy()
%% }
-type get_policy_response() :: #{binary() => any()}.

%% Example:
%% update_saml_provider_response() :: #{
%%   <<"SAMLProviderArn">> => string()
%% }
-type update_saml_provider_response() :: #{binary() => any()}.

%% Example:
%% get_user_policy_response() :: #{
%%   <<"PolicyDocument">> => string(),
%%   <<"PolicyName">> => string(),
%%   <<"UserName">> => string()
%% }
-type get_user_policy_response() :: #{binary() => any()}.

%% Example:
%% credential_report_expired_exception() :: #{
%%   <<"message">> => string()
%% }
-type credential_report_expired_exception() :: #{binary() => any()}.

%% Example:
%% list_organizations_features_request() :: #{

%% }
-type list_organizations_features_request() :: #{binary() => any()}.

%% Example:
%% mfa_device() :: #{
%%   <<"EnableDate">> => non_neg_integer(),
%%   <<"SerialNumber">> => string(),
%%   <<"UserName">> => string()
%% }
-type mfa_device() :: #{binary() => any()}.

%% Example:
%% entity_details() :: #{
%%   <<"EntityInfo">> => entity_info(),
%%   <<"LastAuthenticated">> => non_neg_integer()
%% }
-type entity_details() :: #{binary() => any()}.

%% Example:
%% list_instance_profiles_for_role_response() :: #{
%%   <<"InstanceProfiles">> => list(instance_profile()),
%%   <<"IsTruncated">> => boolean(),
%%   <<"Marker">> => string()
%% }
-type list_instance_profiles_for_role_response() :: #{binary() => any()}.

%% Example:
%% signing_certificate() :: #{
%%   <<"CertificateBody">> => string(),
%%   <<"CertificateId">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"UploadDate">> => non_neg_integer(),
%%   <<"UserName">> => string()
%% }
-type signing_certificate() :: #{binary() => any()}.

%% Example:
%% delete_policy_request() :: #{
%%   <<"PolicyArn">> := string()
%% }
-type delete_policy_request() :: #{binary() => any()}.

%% Example:
%% list_mfa_device_tags_request() :: #{
%%   <<"Marker">> => string(),
%%   <<"MaxItems">> => integer(),
%%   <<"SerialNumber">> := string()
%% }
-type list_mfa_device_tags_request() :: #{binary() => any()}.

%% Example:
%% invalid_authentication_code_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_authentication_code_exception() :: #{binary() => any()}.

%% Example:
%% generate_organizations_access_report_request() :: #{
%%   <<"EntityPath">> := string(),
%%   <<"OrganizationsPolicyId">> => string()
%% }
-type generate_organizations_access_report_request() :: #{binary() => any()}.

%% Example:
%% add_role_to_instance_profile_request() :: #{
%%   <<"InstanceProfileName">> := string(),
%%   <<"RoleName">> := string()
%% }
-type add_role_to_instance_profile_request() :: #{binary() => any()}.

%% Example:
%% list_signing_certificates_response() :: #{
%%   <<"Certificates">> => list(signing_certificate()),
%%   <<"IsTruncated">> => boolean(),
%%   <<"Marker">> => string()
%% }
-type list_signing_certificates_response() :: #{binary() => any()}.

%% Example:
%% simulate_principal_policy_request() :: #{
%%   <<"ActionNames">> := list(string()),
%%   <<"CallerArn">> => string(),
%%   <<"ContextEntries">> => list(context_entry()),
%%   <<"Marker">> => string(),
%%   <<"MaxItems">> => integer(),
%%   <<"PermissionsBoundaryPolicyInputList">> => list(string()),
%%   <<"PolicyInputList">> => list(string()),
%%   <<"PolicySourceArn">> := string(),
%%   <<"ResourceArns">> => list(string()),
%%   <<"ResourceHandlingOption">> => string(),
%%   <<"ResourceOwner">> => string(),
%%   <<"ResourcePolicy">> => string()
%% }
-type simulate_principal_policy_request() :: #{binary() => any()}.

%% Example:
%% get_account_authorization_details_response() :: #{
%%   <<"GroupDetailList">> => list(group_detail()),
%%   <<"IsTruncated">> => boolean(),
%%   <<"Marker">> => string(),
%%   <<"Policies">> => list(managed_policy_detail()),
%%   <<"RoleDetailList">> => list(role_detail()),
%%   <<"UserDetailList">> => list(user_detail())
%% }
-type get_account_authorization_details_response() :: #{binary() => any()}.

%% Example:
%% disable_organizations_root_credentials_management_response() :: #{
%%   <<"EnabledFeatures">> => list(list(any())()),
%%   <<"OrganizationId">> => string()
%% }
-type disable_organizations_root_credentials_management_response() :: #{binary() => any()}.

%% Example:
%% resync_mfa_device_request() :: #{
%%   <<"AuthenticationCode1">> := string(),
%%   <<"AuthenticationCode2">> := string(),
%%   <<"SerialNumber">> := string(),
%%   <<"UserName">> := string()
%% }
-type resync_mfa_device_request() :: #{binary() => any()}.

%% Example:
%% create_service_specific_credential_request() :: #{
%%   <<"CredentialAgeDays">> => integer(),
%%   <<"ServiceName">> := string(),
%%   <<"UserName">> := string()
%% }
-type create_service_specific_credential_request() :: #{binary() => any()}.

%% Example:
%% update_role_request() :: #{
%%   <<"Description">> => string(),
%%   <<"MaxSessionDuration">> => integer(),
%%   <<"RoleName">> := string()
%% }
-type update_role_request() :: #{binary() => any()}.

%% Example:
%% policy_role() :: #{
%%   <<"RoleId">> => string(),
%%   <<"RoleName">> => string()
%% }
-type policy_role() :: #{binary() => any()}.

%% Example:
%% update_login_profile_request() :: #{
%%   <<"Password">> => string(),
%%   <<"PasswordResetRequired">> => boolean(),
%%   <<"UserName">> := string()
%% }
-type update_login_profile_request() :: #{binary() => any()}.

%% Example:
%% list_user_tags_response() :: #{
%%   <<"IsTruncated">> => boolean(),
%%   <<"Marker">> => string(),
%%   <<"Tags">> => list(tag())
%% }
-type list_user_tags_response() :: #{binary() => any()}.

%% Example:
%% list_open_id_connect_providers_request() :: #{

%% }
-type list_open_id_connect_providers_request() :: #{binary() => any()}.

%% Example:
%% create_saml_provider_response() :: #{
%%   <<"SAMLProviderArn">> => string(),
%%   <<"Tags">> => list(tag())
%% }
-type create_saml_provider_response() :: #{binary() => any()}.

%% Example:
%% policy() :: #{
%%   <<"Arn">> => string(),
%%   <<"AttachmentCount">> => integer(),
%%   <<"CreateDate">> => non_neg_integer(),
%%   <<"DefaultVersionId">> => string(),
%%   <<"Description">> => string(),
%%   <<"IsAttachable">> => boolean(),
%%   <<"Path">> => string(),
%%   <<"PermissionsBoundaryUsageCount">> => integer(),
%%   <<"PolicyId">> => string(),
%%   <<"PolicyName">> => string(),
%%   <<"Tags">> => list(tag()),
%%   <<"UpdateDate">> => non_neg_integer()
%% }
-type policy() :: #{binary() => any()}.

%% Example:
%% upload_signing_certificate_response() :: #{
%%   <<"Certificate">> => signing_certificate()
%% }
-type upload_signing_certificate_response() :: #{binary() => any()}.

%% Example:
%% get_instance_profile_response() :: #{
%%   <<"InstanceProfile">> => instance_profile()
%% }
-type get_instance_profile_response() :: #{binary() => any()}.

%% Example:
%% create_role_response() :: #{
%%   <<"Role">> => role()
%% }
-type create_role_response() :: #{binary() => any()}.

%% Example:
%% update_saml_provider_request() :: #{
%%   <<"AddPrivateKey">> => string(),
%%   <<"AssertionEncryptionMode">> => list(any()),
%%   <<"RemovePrivateKey">> => string(),
%%   <<"SAMLMetadataDocument">> => string(),
%%   <<"SAMLProviderArn">> := string()
%% }
-type update_saml_provider_request() :: #{binary() => any()}.

%% Example:
%% ssh_public_key() :: #{
%%   <<"Fingerprint">> => string(),
%%   <<"SSHPublicKeyBody">> => string(),
%%   <<"SSHPublicKeyId">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"UploadDate">> => non_neg_integer(),
%%   <<"UserName">> => string()
%% }
-type ssh_public_key() :: #{binary() => any()}.

%% Example:
%% permissions_boundary_decision_detail() :: #{
%%   <<"AllowedByPermissionsBoundary">> => boolean()
%% }
-type permissions_boundary_decision_detail() :: #{binary() => any()}.

%% Example:
%% get_role_policy_response() :: #{
%%   <<"PolicyDocument">> => string(),
%%   <<"PolicyName">> => string(),
%%   <<"RoleName">> => string()
%% }
-type get_role_policy_response() :: #{binary() => any()}.

%% Example:
%% update_open_id_connect_provider_thumbprint_request() :: #{
%%   <<"OpenIDConnectProviderArn">> := string(),
%%   <<"ThumbprintList">> := list(string())
%% }
-type update_open_id_connect_provider_thumbprint_request() :: #{binary() => any()}.

%% Example:
%% get_ssh_public_key_response() :: #{
%%   <<"SSHPublicKey">> => ssh_public_key()
%% }
-type get_ssh_public_key_response() :: #{binary() => any()}.

%% Example:
%% user_detail() :: #{
%%   <<"Arn">> => string(),
%%   <<"AttachedManagedPolicies">> => list(attached_policy()),
%%   <<"CreateDate">> => non_neg_integer(),
%%   <<"GroupList">> => list(string()),
%%   <<"Path">> => string(),
%%   <<"PermissionsBoundary">> => attached_permissions_boundary(),
%%   <<"Tags">> => list(tag()),
%%   <<"UserId">> => string(),
%%   <<"UserName">> => string(),
%%   <<"UserPolicyList">> => list(policy_detail())
%% }
-type user_detail() :: #{binary() => any()}.

%% Example:
%% create_access_key_response() :: #{
%%   <<"AccessKey">> => access_key()
%% }
-type create_access_key_response() :: #{binary() => any()}.

%% Example:
%% tag_policy_request() :: #{
%%   <<"PolicyArn">> := string(),
%%   <<"Tags">> := list(tag())
%% }
-type tag_policy_request() :: #{binary() => any()}.

%% Example:
%% service_last_accessed() :: #{
%%   <<"LastAuthenticated">> => non_neg_integer(),
%%   <<"LastAuthenticatedEntity">> => string(),
%%   <<"LastAuthenticatedRegion">> => string(),
%%   <<"ServiceName">> => string(),
%%   <<"ServiceNamespace">> => string(),
%%   <<"TotalAuthenticatedEntities">> => integer(),
%%   <<"TrackedActionsLastAccessed">> => list(tracked_action_last_accessed())
%% }
-type service_last_accessed() :: #{binary() => any()}.

%% Example:
%% create_service_linked_role_response() :: #{
%%   <<"Role">> => role()
%% }
-type create_service_linked_role_response() :: #{binary() => any()}.

%% Example:
%% update_signing_certificate_request() :: #{
%%   <<"CertificateId">> := string(),
%%   <<"Status">> := list(any()),
%%   <<"UserName">> => string()
%% }
-type update_signing_certificate_request() :: #{binary() => any()}.

%% Example:
%% get_login_profile_request() :: #{
%%   <<"UserName">> => string()
%% }
-type get_login_profile_request() :: #{binary() => any()}.

%% Example:
%% role_usage_type() :: #{
%%   <<"Region">> => string(),
%%   <<"Resources">> => list(string())
%% }
-type role_usage_type() :: #{binary() => any()}.

%% Example:
%% concurrent_modification_exception() :: #{
%%   <<"message">> => string()
%% }
-type concurrent_modification_exception() :: #{binary() => any()}.

%% Example:
%% get_saml_provider_request() :: #{
%%   <<"SAMLProviderArn">> := string()
%% }
-type get_saml_provider_request() :: #{binary() => any()}.

%% Example:
%% unrecognized_public_key_encoding_exception() :: #{
%%   <<"message">> => string()
%% }
-type unrecognized_public_key_encoding_exception() :: #{binary() => any()}.

%% Example:
%% untag_policy_request() :: #{
%%   <<"PolicyArn">> := string(),
%%   <<"TagKeys">> := list(string())
%% }
-type untag_policy_request() :: #{binary() => any()}.

%% Example:
%% list_group_policies_request() :: #{
%%   <<"GroupName">> := string(),
%%   <<"Marker">> => string(),
%%   <<"MaxItems">> => integer()
%% }
-type list_group_policies_request() :: #{binary() => any()}.

%% Example:
%% update_user_request() :: #{
%%   <<"NewPath">> => string(),
%%   <<"NewUserName">> => string(),
%%   <<"UserName">> := string()
%% }
-type update_user_request() :: #{binary() => any()}.

%% Example:
%% list_signing_certificates_request() :: #{
%%   <<"Marker">> => string(),
%%   <<"MaxItems">> => integer(),
%%   <<"UserName">> => string()
%% }
-type list_signing_certificates_request() :: #{binary() => any()}.

%% Example:
%% list_attached_group_policies_response() :: #{
%%   <<"AttachedPolicies">> => list(attached_policy()),
%%   <<"IsTruncated">> => boolean(),
%%   <<"Marker">> => string()
%% }
-type list_attached_group_policies_response() :: #{binary() => any()}.

%% Example:
%% saml_private_key() :: #{
%%   <<"KeyId">> => string(),
%%   <<"Timestamp">> => non_neg_integer()
%% }
-type saml_private_key() :: #{binary() => any()}.

%% Example:
%% list_server_certificates_request() :: #{
%%   <<"Marker">> => string(),
%%   <<"MaxItems">> => integer(),
%%   <<"PathPrefix">> => string()
%% }
-type list_server_certificates_request() :: #{binary() => any()}.

%% Example:
%% list_user_policies_response() :: #{
%%   <<"IsTruncated">> => boolean(),
%%   <<"Marker">> => string(),
%%   <<"PolicyNames">> => list(string())
%% }
-type list_user_policies_response() :: #{binary() => any()}.

%% Example:
%% list_account_aliases_response() :: #{
%%   <<"AccountAliases">> => list(string()),
%%   <<"IsTruncated">> => boolean(),
%%   <<"Marker">> => string()
%% }
-type list_account_aliases_response() :: #{binary() => any()}.

%% Example:
%% get_context_keys_for_principal_policy_request() :: #{
%%   <<"PolicyInputList">> => list(string()),
%%   <<"PolicySourceArn">> := string()
%% }
-type get_context_keys_for_principal_policy_request() :: #{binary() => any()}.

%% Example:
%% list_user_policies_request() :: #{
%%   <<"Marker">> => string(),
%%   <<"MaxItems">> => integer(),
%%   <<"UserName">> := string()
%% }
-type list_user_policies_request() :: #{binary() => any()}.

%% Example:
%% list_ssh_public_keys_response() :: #{
%%   <<"IsTruncated">> => boolean(),
%%   <<"Marker">> => string(),
%%   <<"SSHPublicKeys">> => list(ssh_public_key_metadata())
%% }
-type list_ssh_public_keys_response() :: #{binary() => any()}.

%% Example:
%% attached_permissions_boundary() :: #{
%%   <<"PermissionsBoundaryArn">> => string(),
%%   <<"PermissionsBoundaryType">> => list(any())
%% }
-type attached_permissions_boundary() :: #{binary() => any()}.

%% Example:
%% get_service_last_accessed_details_with_entities_response() :: #{
%%   <<"EntityDetailsList">> => list(entity_details()),
%%   <<"Error">> => error_details(),
%%   <<"IsTruncated">> => boolean(),
%%   <<"JobCompletionDate">> => non_neg_integer(),
%%   <<"JobCreationDate">> => non_neg_integer(),
%%   <<"JobStatus">> => list(any()),
%%   <<"Marker">> => string()
%% }
-type get_service_last_accessed_details_with_entities_response() :: #{binary() => any()}.

%% Example:
%% detach_role_policy_request() :: #{
%%   <<"PolicyArn">> := string(),
%%   <<"RoleName">> := string()
%% }
-type detach_role_policy_request() :: #{binary() => any()}.

%% Example:
%% get_account_summary_response() :: #{
%%   <<"SummaryMap">> => map()
%% }
-type get_account_summary_response() :: #{binary() => any()}.

%% Example:
%% list_access_keys_response() :: #{
%%   <<"AccessKeyMetadata">> => list(access_key_metadata()),
%%   <<"IsTruncated">> => boolean(),
%%   <<"Marker">> => string()
%% }
-type list_access_keys_response() :: #{binary() => any()}.

%% Example:
%% group() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreateDate">> => non_neg_integer(),
%%   <<"GroupId">> => string(),
%%   <<"GroupName">> => string(),
%%   <<"Path">> => string()
%% }
-type group() :: #{binary() => any()}.

%% Example:
%% server_certificate_metadata() :: #{
%%   <<"Arn">> => string(),
%%   <<"Expiration">> => non_neg_integer(),
%%   <<"Path">> => string(),
%%   <<"ServerCertificateId">> => string(),
%%   <<"ServerCertificateName">> => string(),
%%   <<"UploadDate">> => non_neg_integer()
%% }
-type server_certificate_metadata() :: #{binary() => any()}.

%% Example:
%% get_group_response() :: #{
%%   <<"Group">> => group(),
%%   <<"IsTruncated">> => boolean(),
%%   <<"Marker">> => string(),
%%   <<"Users">> => list(user())
%% }
-type get_group_response() :: #{binary() => any()}.

%% Example:
%% user() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreateDate">> => non_neg_integer(),
%%   <<"PasswordLastUsed">> => non_neg_integer(),
%%   <<"Path">> => string(),
%%   <<"PermissionsBoundary">> => attached_permissions_boundary(),
%%   <<"Tags">> => list(tag()),
%%   <<"UserId">> => string(),
%%   <<"UserName">> => string()
%% }
-type user() :: #{binary() => any()}.

%% Example:
%% create_role_request() :: #{
%%   <<"AssumeRolePolicyDocument">> := string(),
%%   <<"Description">> => string(),
%%   <<"MaxSessionDuration">> => integer(),
%%   <<"Path">> => string(),
%%   <<"PermissionsBoundary">> => string(),
%%   <<"RoleName">> := string(),
%%   <<"Tags">> => list(tag())
%% }
-type create_role_request() :: #{binary() => any()}.

%% Example:
%% malformed_policy_document_exception() :: #{
%%   <<"message">> => string()
%% }
-type malformed_policy_document_exception() :: #{binary() => any()}.

%% Example:
%% login_profile() :: #{
%%   <<"CreateDate">> => non_neg_integer(),
%%   <<"PasswordResetRequired">> => boolean(),
%%   <<"UserName">> => string()
%% }
-type login_profile() :: #{binary() => any()}.

%% Example:
%% reset_service_specific_credential_response() :: #{
%%   <<"ServiceSpecificCredential">> => service_specific_credential()
%% }
-type reset_service_specific_credential_response() :: #{binary() => any()}.

%% Example:
%% delete_group_request() :: #{
%%   <<"GroupName">> := string()
%% }
-type delete_group_request() :: #{binary() => any()}.

%% Example:
%% list_users_request() :: #{
%%   <<"Marker">> => string(),
%%   <<"MaxItems">> => integer(),
%%   <<"PathPrefix">> => string()
%% }
-type list_users_request() :: #{binary() => any()}.

%% Example:
%% get_service_last_accessed_details_with_entities_request() :: #{
%%   <<"JobId">> := string(),
%%   <<"Marker">> => string(),
%%   <<"MaxItems">> => integer(),
%%   <<"ServiceNamespace">> := string()
%% }
-type get_service_last_accessed_details_with_entities_request() :: #{binary() => any()}.

%% Example:
%% list_policy_tags_request() :: #{
%%   <<"Marker">> => string(),
%%   <<"MaxItems">> => integer(),
%%   <<"PolicyArn">> := string()
%% }
-type list_policy_tags_request() :: #{binary() => any()}.

%% Example:
%% limit_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% remove_client_id_from_open_id_connect_provider_request() :: #{
%%   <<"ClientID">> := string(),
%%   <<"OpenIDConnectProviderArn">> := string()
%% }
-type remove_client_id_from_open_id_connect_provider_request() :: #{binary() => any()}.

%% Example:
%% get_role_policy_request() :: #{
%%   <<"PolicyName">> := string(),
%%   <<"RoleName">> := string()
%% }
-type get_role_policy_request() :: #{binary() => any()}.

%% Example:
%% organizations_decision_detail() :: #{
%%   <<"AllowedByOrganizations">> => boolean()
%% }
-type organizations_decision_detail() :: #{binary() => any()}.

%% Example:
%% update_access_key_request() :: #{
%%   <<"AccessKeyId">> := string(),
%%   <<"Status">> := list(any()),
%%   <<"UserName">> => string()
%% }
-type update_access_key_request() :: #{binary() => any()}.

%% Example:
%% list_instance_profiles_for_role_request() :: #{
%%   <<"Marker">> => string(),
%%   <<"MaxItems">> => integer(),
%%   <<"RoleName">> := string()
%% }
-type list_instance_profiles_for_role_request() :: #{binary() => any()}.

%% Example:
%% attach_role_policy_request() :: #{
%%   <<"PolicyArn">> := string(),
%%   <<"RoleName">> := string()
%% }
-type attach_role_policy_request() :: #{binary() => any()}.

%% Example:
%% delete_service_linked_role_response() :: #{
%%   <<"DeletionTaskId">> => string()
%% }
-type delete_service_linked_role_response() :: #{binary() => any()}.

%% Example:
%% upload_server_certificate_response() :: #{
%%   <<"ServerCertificateMetadata">> => server_certificate_metadata(),
%%   <<"Tags">> => list(tag())
%% }
-type upload_server_certificate_response() :: #{binary() => any()}.

%% Example:
%% credential_report_not_present_exception() :: #{
%%   <<"message">> => string()
%% }
-type credential_report_not_present_exception() :: #{binary() => any()}.

%% Example:
%% caller_is_not_management_account_exception() :: #{
%%   <<"Message">> => string()
%% }
-type caller_is_not_management_account_exception() :: #{binary() => any()}.

%% Example:
%% list_saml_provider_tags_request() :: #{
%%   <<"Marker">> => string(),
%%   <<"MaxItems">> => integer(),
%%   <<"SAMLProviderArn">> := string()
%% }
-type list_saml_provider_tags_request() :: #{binary() => any()}.

%% Example:
%% get_group_policy_request() :: #{
%%   <<"GroupName">> := string(),
%%   <<"PolicyName">> := string()
%% }
-type get_group_policy_request() :: #{binary() => any()}.

%% Example:
%% put_role_permissions_boundary_request() :: #{
%%   <<"PermissionsBoundary">> := string(),
%%   <<"RoleName">> := string()
%% }
-type put_role_permissions_boundary_request() :: #{binary() => any()}.

%% Example:
%% list_open_id_connect_provider_tags_request() :: #{
%%   <<"Marker">> => string(),
%%   <<"MaxItems">> => integer(),
%%   <<"OpenIDConnectProviderArn">> := string()
%% }
-type list_open_id_connect_provider_tags_request() :: #{binary() => any()}.

%% Example:
%% evaluation_result() :: #{
%%   <<"EvalActionName">> => string(),
%%   <<"EvalDecision">> => list(any()),
%%   <<"EvalDecisionDetails">> => map(),
%%   <<"EvalResourceName">> => string(),
%%   <<"MatchedStatements">> => list(statement()),
%%   <<"MissingContextValues">> => list(string()),
%%   <<"OrganizationsDecisionDetail">> => organizations_decision_detail(),
%%   <<"PermissionsBoundaryDecisionDetail">> => permissions_boundary_decision_detail(),
%%   <<"ResourceSpecificResults">> => list(resource_specific_result())
%% }
-type evaluation_result() :: #{binary() => any()}.

%% Example:
%% create_virtual_mfa_device_request() :: #{
%%   <<"Path">> => string(),
%%   <<"Tags">> => list(tag()),
%%   <<"VirtualMFADeviceName">> := string()
%% }
-type create_virtual_mfa_device_request() :: #{binary() => any()}.

%% Example:
%% get_role_response() :: #{
%%   <<"Role">> => role()
%% }
-type get_role_response() :: #{binary() => any()}.

%% Example:
%% tag_server_certificate_request() :: #{
%%   <<"ServerCertificateName">> := string(),
%%   <<"Tags">> := list(tag())
%% }
-type tag_server_certificate_request() :: #{binary() => any()}.

%% Example:
%% generate_service_last_accessed_details_request() :: #{
%%   <<"Arn">> := string(),
%%   <<"Granularity">> => list(any())
%% }
-type generate_service_last_accessed_details_request() :: #{binary() => any()}.

%% Example:
%% update_role_description_request() :: #{
%%   <<"Description">> := string(),
%%   <<"RoleName">> := string()
%% }
-type update_role_description_request() :: #{binary() => any()}.

%% Example:
%% get_credential_report_response() :: #{
%%   <<"Content">> => binary(),
%%   <<"GeneratedTime">> => non_neg_integer(),
%%   <<"ReportFormat">> => list(any())
%% }
-type get_credential_report_response() :: #{binary() => any()}.

%% Example:
%% list_account_aliases_request() :: #{
%%   <<"Marker">> => string(),
%%   <<"MaxItems">> => integer()
%% }
-type list_account_aliases_request() :: #{binary() => any()}.

%% Example:
%% list_role_policies_request() :: #{
%%   <<"Marker">> => string(),
%%   <<"MaxItems">> => integer(),
%%   <<"RoleName">> := string()
%% }
-type list_role_policies_request() :: #{binary() => any()}.

%% Example:
%% list_open_id_connect_provider_tags_response() :: #{
%%   <<"IsTruncated">> => boolean(),
%%   <<"Marker">> => string(),
%%   <<"Tags">> => list(tag())
%% }
-type list_open_id_connect_provider_tags_response() :: #{binary() => any()}.

%% Example:
%% list_groups_response() :: #{
%%   <<"Groups">> => list(group()),
%%   <<"IsTruncated">> => boolean(),
%%   <<"Marker">> => string()
%% }
-type list_groups_response() :: #{binary() => any()}.

%% Example:
%% get_group_request() :: #{
%%   <<"GroupName">> := string(),
%%   <<"Marker">> => string(),
%%   <<"MaxItems">> => integer()
%% }
-type get_group_request() :: #{binary() => any()}.

%% Example:
%% list_roles_request() :: #{
%%   <<"Marker">> => string(),
%%   <<"MaxItems">> => integer(),
%%   <<"PathPrefix">> => string()
%% }
-type list_roles_request() :: #{binary() => any()}.

%% Example:
%% attached_policy() :: #{
%%   <<"PolicyArn">> => string(),
%%   <<"PolicyName">> => string()
%% }
-type attached_policy() :: #{binary() => any()}.

%% Example:
%% access_detail() :: #{
%%   <<"EntityPath">> => string(),
%%   <<"LastAuthenticatedTime">> => non_neg_integer(),
%%   <<"Region">> => string(),
%%   <<"ServiceName">> => string(),
%%   <<"ServiceNamespace">> => string(),
%%   <<"TotalAuthenticatedEntities">> => integer()
%% }
-type access_detail() :: #{binary() => any()}.

%% Example:
%% access_key_last_used() :: #{
%%   <<"LastUsedDate">> => non_neg_integer(),
%%   <<"Region">> => string(),
%%   <<"ServiceName">> => string()
%% }
-type access_key_last_used() :: #{binary() => any()}.

%% Example:
%% create_access_key_request() :: #{
%%   <<"UserName">> => string()
%% }
-type create_access_key_request() :: #{binary() => any()}.

%% Example:
%% duplicate_certificate_exception() :: #{
%%   <<"message">> => string()
%% }
-type duplicate_certificate_exception() :: #{binary() => any()}.

%% Example:
%% invalid_public_key_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_public_key_exception() :: #{binary() => any()}.

%% Example:
%% list_groups_request() :: #{
%%   <<"Marker">> => string(),
%%   <<"MaxItems">> => integer(),
%%   <<"PathPrefix">> => string()
%% }
-type list_groups_request() :: #{binary() => any()}.

%% Example:
%% list_saml_provider_tags_response() :: #{
%%   <<"IsTruncated">> => boolean(),
%%   <<"Marker">> => string(),
%%   <<"Tags">> => list(tag())
%% }
-type list_saml_provider_tags_response() :: #{binary() => any()}.

%% Example:
%% add_client_id_to_open_id_connect_provider_request() :: #{
%%   <<"ClientID">> := string(),
%%   <<"OpenIDConnectProviderArn">> := string()
%% }
-type add_client_id_to_open_id_connect_provider_request() :: #{binary() => any()}.

%% Example:
%% delete_ssh_public_key_request() :: #{
%%   <<"SSHPublicKeyId">> := string(),
%%   <<"UserName">> := string()
%% }
-type delete_ssh_public_key_request() :: #{binary() => any()}.

%% Example:
%% tracked_action_last_accessed() :: #{
%%   <<"ActionName">> => string(),
%%   <<"LastAccessedEntity">> => string(),
%%   <<"LastAccessedRegion">> => string(),
%%   <<"LastAccessedTime">> => non_neg_integer()
%% }
-type tracked_action_last_accessed() :: #{binary() => any()}.

%% Example:
%% untag_role_request() :: #{
%%   <<"RoleName">> := string(),
%%   <<"TagKeys">> := list(string())
%% }
-type untag_role_request() :: #{binary() => any()}.

%% Example:
%% create_user_response() :: #{
%%   <<"User">> => user()
%% }
-type create_user_response() :: #{binary() => any()}.

%% Example:
%% create_login_profile_request() :: #{
%%   <<"Password">> => string(),
%%   <<"PasswordResetRequired">> => boolean(),
%%   <<"UserName">> => string()
%% }
-type create_login_profile_request() :: #{binary() => any()}.

%% Example:
%% delete_open_id_connect_provider_request() :: #{
%%   <<"OpenIDConnectProviderArn">> := string()
%% }
-type delete_open_id_connect_provider_request() :: #{binary() => any()}.

%% Example:
%% upload_ssh_public_key_request() :: #{
%%   <<"SSHPublicKeyBody">> := string(),
%%   <<"UserName">> := string()
%% }
-type upload_ssh_public_key_request() :: #{binary() => any()}.

%% Example:
%% duplicate_ssh_public_key_exception() :: #{
%%   <<"message">> => string()
%% }
-type duplicate_ssh_public_key_exception() :: #{binary() => any()}.

%% Example:
%% tag_role_request() :: #{
%%   <<"RoleName">> := string(),
%%   <<"Tags">> := list(tag())
%% }
-type tag_role_request() :: #{binary() => any()}.

%% Example:
%% list_attached_user_policies_request() :: #{
%%   <<"Marker">> => string(),
%%   <<"MaxItems">> => integer(),
%%   <<"PathPrefix">> => string(),
%%   <<"UserName">> := string()
%% }
-type list_attached_user_policies_request() :: #{binary() => any()}.

%% Example:
%% delete_signing_certificate_request() :: #{
%%   <<"CertificateId">> := string(),
%%   <<"UserName">> => string()
%% }
-type delete_signing_certificate_request() :: #{binary() => any()}.

%% Example:
%% generate_credential_report_response() :: #{
%%   <<"Description">> => string(),
%%   <<"State">> => list(any())
%% }
-type generate_credential_report_response() :: #{binary() => any()}.

%% Example:
%% delete_role_request() :: #{
%%   <<"RoleName">> := string()
%% }
-type delete_role_request() :: #{binary() => any()}.

%% Example:
%% create_group_response() :: #{
%%   <<"Group">> => group()
%% }
-type create_group_response() :: #{binary() => any()}.

%% Example:
%% deletion_task_failure_reason_type() :: #{
%%   <<"Reason">> => string(),
%%   <<"RoleUsageList">> => list(role_usage_type())
%% }
-type deletion_task_failure_reason_type() :: #{binary() => any()}.

%% Example:
%% tag_user_request() :: #{
%%   <<"Tags">> := list(tag()),
%%   <<"UserName">> := string()
%% }
-type tag_user_request() :: #{binary() => any()}.

%% Example:
%% simulate_policy_response() :: #{
%%   <<"EvaluationResults">> => list(evaluation_result()),
%%   <<"IsTruncated">> => boolean(),
%%   <<"Marker">> => string()
%% }
-type simulate_policy_response() :: #{binary() => any()}.

%% Example:
%% untag_mfa_device_request() :: #{
%%   <<"SerialNumber">> := string(),
%%   <<"TagKeys">> := list(string())
%% }
-type untag_mfa_device_request() :: #{binary() => any()}.

%% Example:
%% remove_user_from_group_request() :: #{
%%   <<"GroupName">> := string(),
%%   <<"UserName">> := string()
%% }
-type remove_user_from_group_request() :: #{binary() => any()}.

%% Example:
%% get_mfa_device_request() :: #{
%%   <<"SerialNumber">> := string(),
%%   <<"UserName">> => string()
%% }
-type get_mfa_device_request() :: #{binary() => any()}.

%% Example:
%% list_attached_role_policies_response() :: #{
%%   <<"AttachedPolicies">> => list(attached_policy()),
%%   <<"IsTruncated">> => boolean(),
%%   <<"Marker">> => string()
%% }
-type list_attached_role_policies_response() :: #{binary() => any()}.

%% Example:
%% server_certificate() :: #{
%%   <<"CertificateBody">> => string(),
%%   <<"CertificateChain">> => string(),
%%   <<"ServerCertificateMetadata">> => server_certificate_metadata(),
%%   <<"Tags">> => list(tag())
%% }
-type server_certificate() :: #{binary() => any()}.

%% Example:
%% create_open_id_connect_provider_request() :: #{
%%   <<"ClientIDList">> => list(string()),
%%   <<"Tags">> => list(tag()),
%%   <<"ThumbprintList">> => list(string()),
%%   <<"Url">> := string()
%% }
-type create_open_id_connect_provider_request() :: #{binary() => any()}.

%% Example:
%% delete_role_permissions_boundary_request() :: #{
%%   <<"RoleName">> := string()
%% }
-type delete_role_permissions_boundary_request() :: #{binary() => any()}.

%% Example:
%% get_server_certificate_response() :: #{
%%   <<"ServerCertificate">> => server_certificate()
%% }
-type get_server_certificate_response() :: #{binary() => any()}.

%% Example:
%% policy_user() :: #{
%%   <<"UserId">> => string(),
%%   <<"UserName">> => string()
%% }
-type policy_user() :: #{binary() => any()}.

%% Example:
%% create_user_request() :: #{
%%   <<"Path">> => string(),
%%   <<"PermissionsBoundary">> => string(),
%%   <<"Tags">> => list(tag()),
%%   <<"UserName">> := string()
%% }
-type create_user_request() :: #{binary() => any()}.

%% Example:
%% untag_instance_profile_request() :: #{
%%   <<"InstanceProfileName">> := string(),
%%   <<"TagKeys">> := list(string())
%% }
-type untag_instance_profile_request() :: #{binary() => any()}.

-type add_client_id_to_open_id_connect_provider_errors() ::
    limit_exceeded_exception() | 
    invalid_input_exception() | 
    service_failure_exception() | 
    no_such_entity_exception().

-type add_role_to_instance_profile_errors() ::
    limit_exceeded_exception() | 
    unmodifiable_entity_exception() | 
    service_failure_exception() | 
    no_such_entity_exception() | 
    entity_already_exists_exception().

-type add_user_to_group_errors() ::
    limit_exceeded_exception() | 
    service_failure_exception() | 
    no_such_entity_exception().

-type attach_group_policy_errors() ::
    limit_exceeded_exception() | 
    invalid_input_exception() | 
    service_failure_exception() | 
    no_such_entity_exception() | 
    policy_not_attachable_exception().

-type attach_role_policy_errors() ::
    limit_exceeded_exception() | 
    invalid_input_exception() | 
    unmodifiable_entity_exception() | 
    service_failure_exception() | 
    no_such_entity_exception() | 
    policy_not_attachable_exception().

-type attach_user_policy_errors() ::
    limit_exceeded_exception() | 
    invalid_input_exception() | 
    service_failure_exception() | 
    no_such_entity_exception() | 
    policy_not_attachable_exception().

-type change_password_errors() ::
    limit_exceeded_exception() | 
    password_policy_violation_exception() | 
    entity_temporarily_unmodifiable_exception() | 
    service_failure_exception() | 
    no_such_entity_exception() | 
    invalid_user_type_exception().

-type create_access_key_errors() ::
    limit_exceeded_exception() | 
    service_failure_exception() | 
    no_such_entity_exception().

-type create_account_alias_errors() ::
    limit_exceeded_exception() | 
    concurrent_modification_exception() | 
    service_failure_exception() | 
    entity_already_exists_exception().

-type create_group_errors() ::
    limit_exceeded_exception() | 
    service_failure_exception() | 
    no_such_entity_exception() | 
    entity_already_exists_exception().

-type create_instance_profile_errors() ::
    limit_exceeded_exception() | 
    concurrent_modification_exception() | 
    invalid_input_exception() | 
    service_failure_exception() | 
    entity_already_exists_exception().

-type create_login_profile_errors() ::
    limit_exceeded_exception() | 
    password_policy_violation_exception() | 
    service_failure_exception() | 
    no_such_entity_exception() | 
    entity_already_exists_exception().

-type create_open_id_connect_provider_errors() ::
    limit_exceeded_exception() | 
    concurrent_modification_exception() | 
    invalid_input_exception() | 
    open_id_idp_communication_error_exception() | 
    service_failure_exception() | 
    entity_already_exists_exception().

-type create_policy_errors() ::
    limit_exceeded_exception() | 
    malformed_policy_document_exception() | 
    concurrent_modification_exception() | 
    invalid_input_exception() | 
    service_failure_exception() | 
    entity_already_exists_exception().

-type create_policy_version_errors() ::
    limit_exceeded_exception() | 
    malformed_policy_document_exception() | 
    invalid_input_exception() | 
    service_failure_exception() | 
    no_such_entity_exception().

-type create_role_errors() ::
    limit_exceeded_exception() | 
    malformed_policy_document_exception() | 
    concurrent_modification_exception() | 
    invalid_input_exception() | 
    service_failure_exception() | 
    entity_already_exists_exception().

-type create_saml_provider_errors() ::
    limit_exceeded_exception() | 
    concurrent_modification_exception() | 
    invalid_input_exception() | 
    service_failure_exception() | 
    entity_already_exists_exception().

-type create_service_linked_role_errors() ::
    limit_exceeded_exception() | 
    invalid_input_exception() | 
    service_failure_exception() | 
    no_such_entity_exception().

-type create_service_specific_credential_errors() ::
    limit_exceeded_exception() | 
    service_not_supported_exception() | 
    no_such_entity_exception().

-type create_user_errors() ::
    limit_exceeded_exception() | 
    concurrent_modification_exception() | 
    invalid_input_exception() | 
    service_failure_exception() | 
    no_such_entity_exception() | 
    entity_already_exists_exception().

-type create_virtual_mfa_device_errors() ::
    limit_exceeded_exception() | 
    concurrent_modification_exception() | 
    invalid_input_exception() | 
    service_failure_exception() | 
    entity_already_exists_exception().

-type deactivate_mfa_device_errors() ::
    limit_exceeded_exception() | 
    concurrent_modification_exception() | 
    entity_temporarily_unmodifiable_exception() | 
    service_failure_exception() | 
    no_such_entity_exception().

-type delete_access_key_errors() ::
    limit_exceeded_exception() | 
    service_failure_exception() | 
    no_such_entity_exception().

-type delete_account_alias_errors() ::
    limit_exceeded_exception() | 
    concurrent_modification_exception() | 
    service_failure_exception() | 
    no_such_entity_exception().

-type delete_account_password_policy_errors() ::
    limit_exceeded_exception() | 
    service_failure_exception() | 
    no_such_entity_exception().

-type delete_group_errors() ::
    limit_exceeded_exception() | 
    delete_conflict_exception() | 
    service_failure_exception() | 
    no_such_entity_exception().

-type delete_group_policy_errors() ::
    limit_exceeded_exception() | 
    service_failure_exception() | 
    no_such_entity_exception().

-type delete_instance_profile_errors() ::
    limit_exceeded_exception() | 
    delete_conflict_exception() | 
    service_failure_exception() | 
    no_such_entity_exception().

-type delete_login_profile_errors() ::
    limit_exceeded_exception() | 
    entity_temporarily_unmodifiable_exception() | 
    service_failure_exception() | 
    no_such_entity_exception().

-type delete_open_id_connect_provider_errors() ::
    invalid_input_exception() | 
    service_failure_exception() | 
    no_such_entity_exception().

-type delete_policy_errors() ::
    limit_exceeded_exception() | 
    invalid_input_exception() | 
    delete_conflict_exception() | 
    service_failure_exception() | 
    no_such_entity_exception().

-type delete_policy_version_errors() ::
    limit_exceeded_exception() | 
    invalid_input_exception() | 
    delete_conflict_exception() | 
    service_failure_exception() | 
    no_such_entity_exception().

-type delete_role_errors() ::
    limit_exceeded_exception() | 
    concurrent_modification_exception() | 
    unmodifiable_entity_exception() | 
    delete_conflict_exception() | 
    service_failure_exception() | 
    no_such_entity_exception().

-type delete_role_permissions_boundary_errors() ::
    unmodifiable_entity_exception() | 
    service_failure_exception() | 
    no_such_entity_exception().

-type delete_role_policy_errors() ::
    limit_exceeded_exception() | 
    unmodifiable_entity_exception() | 
    service_failure_exception() | 
    no_such_entity_exception().

-type delete_saml_provider_errors() ::
    limit_exceeded_exception() | 
    invalid_input_exception() | 
    service_failure_exception() | 
    no_such_entity_exception().

-type delete_server_certificate_errors() ::
    limit_exceeded_exception() | 
    delete_conflict_exception() | 
    service_failure_exception() | 
    no_such_entity_exception().

-type delete_service_linked_role_errors() ::
    limit_exceeded_exception() | 
    service_failure_exception() | 
    no_such_entity_exception().

-type delete_service_specific_credential_errors() ::
    no_such_entity_exception().

-type delete_signing_certificate_errors() ::
    limit_exceeded_exception() | 
    concurrent_modification_exception() | 
    service_failure_exception() | 
    no_such_entity_exception().

-type delete_ssh_public_key_errors() ::
    no_such_entity_exception().

-type delete_user_errors() ::
    limit_exceeded_exception() | 
    concurrent_modification_exception() | 
    delete_conflict_exception() | 
    service_failure_exception() | 
    no_such_entity_exception().

-type delete_user_permissions_boundary_errors() ::
    service_failure_exception() | 
    no_such_entity_exception().

-type delete_user_policy_errors() ::
    limit_exceeded_exception() | 
    service_failure_exception() | 
    no_such_entity_exception().

-type delete_virtual_mfa_device_errors() ::
    limit_exceeded_exception() | 
    concurrent_modification_exception() | 
    delete_conflict_exception() | 
    service_failure_exception() | 
    no_such_entity_exception().

-type detach_group_policy_errors() ::
    limit_exceeded_exception() | 
    invalid_input_exception() | 
    service_failure_exception() | 
    no_such_entity_exception().

-type detach_role_policy_errors() ::
    limit_exceeded_exception() | 
    invalid_input_exception() | 
    unmodifiable_entity_exception() | 
    service_failure_exception() | 
    no_such_entity_exception().

-type detach_user_policy_errors() ::
    limit_exceeded_exception() | 
    invalid_input_exception() | 
    service_failure_exception() | 
    no_such_entity_exception().

-type disable_organizations_root_credentials_management_errors() ::
    organization_not_found_exception() | 
    organization_not_in_all_features_mode_exception() | 
    service_access_not_enabled_exception() | 
    account_not_management_or_delegated_administrator_exception().

-type disable_organizations_root_sessions_errors() ::
    organization_not_found_exception() | 
    organization_not_in_all_features_mode_exception() | 
    service_access_not_enabled_exception() | 
    account_not_management_or_delegated_administrator_exception().

-type enable_mfa_device_errors() ::
    limit_exceeded_exception() | 
    concurrent_modification_exception() | 
    invalid_authentication_code_exception() | 
    entity_temporarily_unmodifiable_exception() | 
    service_failure_exception() | 
    no_such_entity_exception() | 
    entity_already_exists_exception().

-type enable_organizations_root_credentials_management_errors() ::
    caller_is_not_management_account_exception() | 
    organization_not_found_exception() | 
    organization_not_in_all_features_mode_exception() | 
    service_access_not_enabled_exception() | 
    account_not_management_or_delegated_administrator_exception().

-type enable_organizations_root_sessions_errors() ::
    caller_is_not_management_account_exception() | 
    organization_not_found_exception() | 
    organization_not_in_all_features_mode_exception() | 
    service_access_not_enabled_exception() | 
    account_not_management_or_delegated_administrator_exception().

-type generate_credential_report_errors() ::
    limit_exceeded_exception() | 
    service_failure_exception().

-type generate_organizations_access_report_errors() ::
    report_generation_limit_exceeded_exception().

-type generate_service_last_accessed_details_errors() ::
    invalid_input_exception() | 
    no_such_entity_exception().

-type get_account_authorization_details_errors() ::
    service_failure_exception().

-type get_account_password_policy_errors() ::
    service_failure_exception() | 
    no_such_entity_exception().

-type get_account_summary_errors() ::
    service_failure_exception().

-type get_context_keys_for_custom_policy_errors() ::
    invalid_input_exception().

-type get_context_keys_for_principal_policy_errors() ::
    invalid_input_exception() | 
    no_such_entity_exception().

-type get_credential_report_errors() ::
    credential_report_not_present_exception() | 
    credential_report_expired_exception() | 
    credential_report_not_ready_exception() | 
    service_failure_exception().

-type get_group_errors() ::
    service_failure_exception() | 
    no_such_entity_exception().

-type get_group_policy_errors() ::
    service_failure_exception() | 
    no_such_entity_exception().

-type get_instance_profile_errors() ::
    service_failure_exception() | 
    no_such_entity_exception().

-type get_login_profile_errors() ::
    service_failure_exception() | 
    no_such_entity_exception().

-type get_mfa_device_errors() ::
    service_failure_exception() | 
    no_such_entity_exception().

-type get_open_id_connect_provider_errors() ::
    invalid_input_exception() | 
    service_failure_exception() | 
    no_such_entity_exception().

-type get_organizations_access_report_errors() ::
    no_such_entity_exception().

-type get_policy_errors() ::
    invalid_input_exception() | 
    service_failure_exception() | 
    no_such_entity_exception().

-type get_policy_version_errors() ::
    invalid_input_exception() | 
    service_failure_exception() | 
    no_such_entity_exception().

-type get_role_errors() ::
    service_failure_exception() | 
    no_such_entity_exception().

-type get_role_policy_errors() ::
    service_failure_exception() | 
    no_such_entity_exception().

-type get_saml_provider_errors() ::
    invalid_input_exception() | 
    service_failure_exception() | 
    no_such_entity_exception().

-type get_server_certificate_errors() ::
    service_failure_exception() | 
    no_such_entity_exception().

-type get_service_last_accessed_details_errors() ::
    invalid_input_exception() | 
    no_such_entity_exception().

-type get_service_last_accessed_details_with_entities_errors() ::
    invalid_input_exception() | 
    no_such_entity_exception().

-type get_service_linked_role_deletion_status_errors() ::
    invalid_input_exception() | 
    service_failure_exception() | 
    no_such_entity_exception().

-type get_ssh_public_key_errors() ::
    unrecognized_public_key_encoding_exception() | 
    no_such_entity_exception().

-type get_user_errors() ::
    service_failure_exception() | 
    no_such_entity_exception().

-type get_user_policy_errors() ::
    service_failure_exception() | 
    no_such_entity_exception().

-type list_access_keys_errors() ::
    service_failure_exception() | 
    no_such_entity_exception().

-type list_account_aliases_errors() ::
    service_failure_exception().

-type list_attached_group_policies_errors() ::
    invalid_input_exception() | 
    service_failure_exception() | 
    no_such_entity_exception().

-type list_attached_role_policies_errors() ::
    invalid_input_exception() | 
    service_failure_exception() | 
    no_such_entity_exception().

-type list_attached_user_policies_errors() ::
    invalid_input_exception() | 
    service_failure_exception() | 
    no_such_entity_exception().

-type list_entities_for_policy_errors() ::
    invalid_input_exception() | 
    service_failure_exception() | 
    no_such_entity_exception().

-type list_group_policies_errors() ::
    service_failure_exception() | 
    no_such_entity_exception().

-type list_groups_errors() ::
    service_failure_exception().

-type list_groups_for_user_errors() ::
    service_failure_exception() | 
    no_such_entity_exception().

-type list_instance_profile_tags_errors() ::
    service_failure_exception() | 
    no_such_entity_exception().

-type list_instance_profiles_errors() ::
    service_failure_exception().

-type list_instance_profiles_for_role_errors() ::
    service_failure_exception() | 
    no_such_entity_exception().

-type list_mfa_device_tags_errors() ::
    invalid_input_exception() | 
    service_failure_exception() | 
    no_such_entity_exception().

-type list_mfa_devices_errors() ::
    service_failure_exception() | 
    no_such_entity_exception().

-type list_open_id_connect_provider_tags_errors() ::
    invalid_input_exception() | 
    service_failure_exception() | 
    no_such_entity_exception().

-type list_open_id_connect_providers_errors() ::
    service_failure_exception().

-type list_organizations_features_errors() ::
    organization_not_found_exception() | 
    organization_not_in_all_features_mode_exception() | 
    service_access_not_enabled_exception() | 
    account_not_management_or_delegated_administrator_exception().

-type list_policies_errors() ::
    service_failure_exception().

-type list_policies_granting_service_access_errors() ::
    invalid_input_exception() | 
    no_such_entity_exception().

-type list_policy_tags_errors() ::
    invalid_input_exception() | 
    service_failure_exception() | 
    no_such_entity_exception().

-type list_policy_versions_errors() ::
    invalid_input_exception() | 
    service_failure_exception() | 
    no_such_entity_exception().

-type list_role_policies_errors() ::
    service_failure_exception() | 
    no_such_entity_exception().

-type list_role_tags_errors() ::
    service_failure_exception() | 
    no_such_entity_exception().

-type list_roles_errors() ::
    service_failure_exception().

-type list_saml_provider_tags_errors() ::
    invalid_input_exception() | 
    service_failure_exception() | 
    no_such_entity_exception().

-type list_saml_providers_errors() ::
    service_failure_exception().

-type list_server_certificate_tags_errors() ::
    service_failure_exception() | 
    no_such_entity_exception().

-type list_server_certificates_errors() ::
    service_failure_exception().

-type list_service_specific_credentials_errors() ::
    service_not_supported_exception() | 
    no_such_entity_exception().

-type list_signing_certificates_errors() ::
    service_failure_exception() | 
    no_such_entity_exception().

-type list_ssh_public_keys_errors() ::
    no_such_entity_exception().

-type list_user_policies_errors() ::
    service_failure_exception() | 
    no_such_entity_exception().

-type list_user_tags_errors() ::
    service_failure_exception() | 
    no_such_entity_exception().

-type list_users_errors() ::
    service_failure_exception().

-type put_group_policy_errors() ::
    limit_exceeded_exception() | 
    malformed_policy_document_exception() | 
    service_failure_exception() | 
    no_such_entity_exception().

-type put_role_permissions_boundary_errors() ::
    invalid_input_exception() | 
    unmodifiable_entity_exception() | 
    service_failure_exception() | 
    no_such_entity_exception() | 
    policy_not_attachable_exception().

-type put_role_policy_errors() ::
    limit_exceeded_exception() | 
    malformed_policy_document_exception() | 
    unmodifiable_entity_exception() | 
    service_failure_exception() | 
    no_such_entity_exception().

-type put_user_permissions_boundary_errors() ::
    invalid_input_exception() | 
    service_failure_exception() | 
    no_such_entity_exception() | 
    policy_not_attachable_exception().

-type put_user_policy_errors() ::
    limit_exceeded_exception() | 
    malformed_policy_document_exception() | 
    service_failure_exception() | 
    no_such_entity_exception().

-type remove_client_id_from_open_id_connect_provider_errors() ::
    invalid_input_exception() | 
    service_failure_exception() | 
    no_such_entity_exception().

-type remove_role_from_instance_profile_errors() ::
    limit_exceeded_exception() | 
    unmodifiable_entity_exception() | 
    service_failure_exception() | 
    no_such_entity_exception().

-type remove_user_from_group_errors() ::
    limit_exceeded_exception() | 
    service_failure_exception() | 
    no_such_entity_exception().

-type reset_service_specific_credential_errors() ::
    no_such_entity_exception().

-type resync_mfa_device_errors() ::
    limit_exceeded_exception() | 
    concurrent_modification_exception() | 
    invalid_authentication_code_exception() | 
    service_failure_exception() | 
    no_such_entity_exception().

-type set_default_policy_version_errors() ::
    limit_exceeded_exception() | 
    invalid_input_exception() | 
    service_failure_exception() | 
    no_such_entity_exception().

-type set_security_token_service_preferences_errors() ::
    service_failure_exception().

-type simulate_custom_policy_errors() ::
    invalid_input_exception() | 
    policy_evaluation_exception().

-type simulate_principal_policy_errors() ::
    invalid_input_exception() | 
    policy_evaluation_exception() | 
    no_such_entity_exception().

-type tag_instance_profile_errors() ::
    limit_exceeded_exception() | 
    concurrent_modification_exception() | 
    invalid_input_exception() | 
    service_failure_exception() | 
    no_such_entity_exception().

-type tag_mfa_device_errors() ::
    limit_exceeded_exception() | 
    concurrent_modification_exception() | 
    invalid_input_exception() | 
    service_failure_exception() | 
    no_such_entity_exception().

-type tag_open_id_connect_provider_errors() ::
    limit_exceeded_exception() | 
    concurrent_modification_exception() | 
    invalid_input_exception() | 
    service_failure_exception() | 
    no_such_entity_exception().

-type tag_policy_errors() ::
    limit_exceeded_exception() | 
    concurrent_modification_exception() | 
    invalid_input_exception() | 
    service_failure_exception() | 
    no_such_entity_exception().

-type tag_role_errors() ::
    limit_exceeded_exception() | 
    concurrent_modification_exception() | 
    invalid_input_exception() | 
    service_failure_exception() | 
    no_such_entity_exception().

-type tag_saml_provider_errors() ::
    limit_exceeded_exception() | 
    concurrent_modification_exception() | 
    invalid_input_exception() | 
    service_failure_exception() | 
    no_such_entity_exception().

-type tag_server_certificate_errors() ::
    limit_exceeded_exception() | 
    concurrent_modification_exception() | 
    invalid_input_exception() | 
    service_failure_exception() | 
    no_such_entity_exception().

-type tag_user_errors() ::
    limit_exceeded_exception() | 
    concurrent_modification_exception() | 
    invalid_input_exception() | 
    service_failure_exception() | 
    no_such_entity_exception().

-type untag_instance_profile_errors() ::
    concurrent_modification_exception() | 
    invalid_input_exception() | 
    service_failure_exception() | 
    no_such_entity_exception().

-type untag_mfa_device_errors() ::
    concurrent_modification_exception() | 
    invalid_input_exception() | 
    service_failure_exception() | 
    no_such_entity_exception().

-type untag_open_id_connect_provider_errors() ::
    concurrent_modification_exception() | 
    invalid_input_exception() | 
    service_failure_exception() | 
    no_such_entity_exception().

-type untag_policy_errors() ::
    concurrent_modification_exception() | 
    invalid_input_exception() | 
    service_failure_exception() | 
    no_such_entity_exception().

-type untag_role_errors() ::
    concurrent_modification_exception() | 
    service_failure_exception() | 
    no_such_entity_exception().

-type untag_saml_provider_errors() ::
    concurrent_modification_exception() | 
    invalid_input_exception() | 
    service_failure_exception() | 
    no_such_entity_exception().

-type untag_server_certificate_errors() ::
    concurrent_modification_exception() | 
    invalid_input_exception() | 
    service_failure_exception() | 
    no_such_entity_exception().

-type untag_user_errors() ::
    concurrent_modification_exception() | 
    service_failure_exception() | 
    no_such_entity_exception().

-type update_access_key_errors() ::
    limit_exceeded_exception() | 
    invalid_input_exception() | 
    service_failure_exception() | 
    no_such_entity_exception().

-type update_account_password_policy_errors() ::
    limit_exceeded_exception() | 
    malformed_policy_document_exception() | 
    service_failure_exception() | 
    no_such_entity_exception().

-type update_assume_role_policy_errors() ::
    limit_exceeded_exception() | 
    malformed_policy_document_exception() | 
    unmodifiable_entity_exception() | 
    service_failure_exception() | 
    no_such_entity_exception().

-type update_group_errors() ::
    limit_exceeded_exception() | 
    service_failure_exception() | 
    no_such_entity_exception() | 
    entity_already_exists_exception().

-type update_login_profile_errors() ::
    limit_exceeded_exception() | 
    password_policy_violation_exception() | 
    entity_temporarily_unmodifiable_exception() | 
    service_failure_exception() | 
    no_such_entity_exception().

-type update_open_id_connect_provider_thumbprint_errors() ::
    invalid_input_exception() | 
    service_failure_exception() | 
    no_such_entity_exception().

-type update_role_errors() ::
    unmodifiable_entity_exception() | 
    service_failure_exception() | 
    no_such_entity_exception().

-type update_role_description_errors() ::
    unmodifiable_entity_exception() | 
    service_failure_exception() | 
    no_such_entity_exception().

-type update_saml_provider_errors() ::
    limit_exceeded_exception() | 
    invalid_input_exception() | 
    service_failure_exception() | 
    no_such_entity_exception().

-type update_server_certificate_errors() ::
    limit_exceeded_exception() | 
    service_failure_exception() | 
    no_such_entity_exception() | 
    entity_already_exists_exception().

-type update_service_specific_credential_errors() ::
    no_such_entity_exception().

-type update_signing_certificate_errors() ::
    limit_exceeded_exception() | 
    invalid_input_exception() | 
    service_failure_exception() | 
    no_such_entity_exception().

-type update_ssh_public_key_errors() ::
    invalid_input_exception() | 
    no_such_entity_exception().

-type update_user_errors() ::
    limit_exceeded_exception() | 
    concurrent_modification_exception() | 
    entity_temporarily_unmodifiable_exception() | 
    service_failure_exception() | 
    no_such_entity_exception() | 
    entity_already_exists_exception().

-type upload_server_certificate_errors() ::
    limit_exceeded_exception() | 
    concurrent_modification_exception() | 
    malformed_certificate_exception() | 
    invalid_input_exception() | 
    service_failure_exception() | 
    key_pair_mismatch_exception() | 
    entity_already_exists_exception().

-type upload_signing_certificate_errors() ::
    duplicate_certificate_exception() | 
    limit_exceeded_exception() | 
    concurrent_modification_exception() | 
    malformed_certificate_exception() | 
    invalid_certificate_exception() | 
    service_failure_exception() | 
    no_such_entity_exception() | 
    entity_already_exists_exception().

-type upload_ssh_public_key_errors() ::
    duplicate_ssh_public_key_exception() | 
    invalid_public_key_exception() | 
    limit_exceeded_exception() | 
    unrecognized_public_key_encoding_exception() | 
    no_such_entity_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Adds a new client ID (also known as audience) to the list of client
%% IDs already
%% registered for the specified IAM OpenID Connect (OIDC) provider resource.
%%
%% This operation is idempotent; it does not fail or return an error if you
%% add an
%% existing client ID to the provider.
-spec add_client_id_to_open_id_connect_provider(aws_client:aws_client(), add_client_id_to_open_id_connect_provider_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, add_client_id_to_open_id_connect_provider_errors(), tuple()}.
add_client_id_to_open_id_connect_provider(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_client_id_to_open_id_connect_provider(Client, Input, []).

-spec add_client_id_to_open_id_connect_provider(aws_client:aws_client(), add_client_id_to_open_id_connect_provider_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, add_client_id_to_open_id_connect_provider_errors(), tuple()}.
add_client_id_to_open_id_connect_provider(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddClientIDToOpenIDConnectProvider">>, Input, Options).

%% @doc Adds the specified IAM role to the specified instance profile.
%%
%% An instance profile
%% can contain only one role, and this quota cannot be increased. You can
%% remove the
%% existing role and then add a different role to an instance profile. You
%% must then wait
%% for the change to appear across all of Amazon Web Services because of
%% eventual
%% consistency: https://en.wikipedia.org/wiki/Eventual_consistency. To force
%% the change, you must disassociate the instance profile:
%% https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DisassociateIamInstanceProfile.html
%% and then associate the
%% instance profile:
%% https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_AssociateIamInstanceProfile.html,
%% or you can stop your instance and then restart it.
%%
%% The caller of this operation must be granted the `PassRole' permission
%% on the IAM role by a permissions policy.
%%
%% When using the iam:AssociatedResourceArn:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_iam-condition-keys.html#available-keys-for-iam
%% condition in a policy to restrict the PassRole:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use_passrole.html
%% IAM action, special considerations apply if the policy is
%% intended to define access for the `AddRoleToInstanceProfile' action.
%% In
%% this case, you cannot specify a Region or instance ID in the EC2 instance
%% ARN. The
%% ARN value must be `arn:aws:ec2:*:CallerAccountId:instance/*'. Using
%% any
%% other ARN value may lead to unexpected evaluation results.
%%
%% For more information about roles, see IAM roles:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles.html in the
%% IAM User Guide. For more information about instance profiles,
%% see Using
%% instance profiles:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use_switch-role-ec2_instance-profiles.html
%% in the IAM User Guide.
-spec add_role_to_instance_profile(aws_client:aws_client(), add_role_to_instance_profile_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, add_role_to_instance_profile_errors(), tuple()}.
add_role_to_instance_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_role_to_instance_profile(Client, Input, []).

-spec add_role_to_instance_profile(aws_client:aws_client(), add_role_to_instance_profile_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, add_role_to_instance_profile_errors(), tuple()}.
add_role_to_instance_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddRoleToInstanceProfile">>, Input, Options).

%% @doc Adds the specified user to the specified group.
-spec add_user_to_group(aws_client:aws_client(), add_user_to_group_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, add_user_to_group_errors(), tuple()}.
add_user_to_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_user_to_group(Client, Input, []).

-spec add_user_to_group(aws_client:aws_client(), add_user_to_group_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, add_user_to_group_errors(), tuple()}.
add_user_to_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddUserToGroup">>, Input, Options).

%% @doc Attaches the specified managed policy to the specified IAM group.
%%
%% You use this operation to attach a managed policy to a group. To embed an
%% inline
%% policy in a group, use
%% `PutGroupPolicy'
%% :
%% https://docs.aws.amazon.com/IAM/latest/APIReference/API_PutGroupPolicy.html.
%%
%% As a best practice, you can validate your IAM policies.
%% To learn more, see Validating IAM policies:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_policy-validator.html
%% in the IAM User Guide.
%%
%% For more information about policies, see Managed policies and inline
%% policies:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html
%% in the IAM User Guide.
-spec attach_group_policy(aws_client:aws_client(), attach_group_policy_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, attach_group_policy_errors(), tuple()}.
attach_group_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    attach_group_policy(Client, Input, []).

-spec attach_group_policy(aws_client:aws_client(), attach_group_policy_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, attach_group_policy_errors(), tuple()}.
attach_group_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AttachGroupPolicy">>, Input, Options).

%% @doc Attaches the specified managed policy to the specified IAM role.
%%
%% When you attach a
%% managed policy to a role, the managed policy becomes part of the
%% role's permission
%% (access) policy.
%%
%% You cannot use a managed policy as the role's trust policy. The
%% role's trust
%% policy is created at the same time as the role, using
%% `CreateRole'
%% : https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateRole.html.
%% You can update a role's trust policy using
%%
%% `UpdateAssumerolePolicy'
%% :
%% https://docs.aws.amazon.com/IAM/latest/APIReference/API_UpdateAssumeRolePolicy.html.
%%
%% Use this operation to attach a managed policy to a role. To embed
%% an inline policy in a role, use
%% `PutRolePolicy'
%% :
%% https://docs.aws.amazon.com/IAM/latest/APIReference/API_PutRolePolicy.html.
%% For more information about policies, see Managed
%% policies and inline policies:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html
%% in the
%% IAM User Guide.
%%
%% As a best practice, you can validate your IAM policies.
%% To learn more, see Validating IAM policies:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_policy-validator.html
%% in the IAM User Guide.
-spec attach_role_policy(aws_client:aws_client(), attach_role_policy_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, attach_role_policy_errors(), tuple()}.
attach_role_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    attach_role_policy(Client, Input, []).

-spec attach_role_policy(aws_client:aws_client(), attach_role_policy_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, attach_role_policy_errors(), tuple()}.
attach_role_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AttachRolePolicy">>, Input, Options).

%% @doc Attaches the specified managed policy to the specified user.
%%
%% You use this operation to attach a managed policy to a user. To
%% embed an inline policy in a user, use
%% `PutUserPolicy'
%% :
%% https://docs.aws.amazon.com/IAM/latest/APIReference/API_PutUserPolicy.html.
%%
%% As a best practice, you can validate your IAM policies.
%% To learn more, see Validating IAM policies:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_policy-validator.html
%% in the IAM User Guide.
%%
%% For more information about policies, see Managed policies and inline
%% policies:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html
%% in the IAM User Guide.
-spec attach_user_policy(aws_client:aws_client(), attach_user_policy_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, attach_user_policy_errors(), tuple()}.
attach_user_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    attach_user_policy(Client, Input, []).

-spec attach_user_policy(aws_client:aws_client(), attach_user_policy_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, attach_user_policy_errors(), tuple()}.
attach_user_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AttachUserPolicy">>, Input, Options).

%% @doc Changes the password of the IAM user who is calling this operation.
%%
%% This operation
%% can be performed using the CLI, the Amazon Web Services API, or the My
%% Security Credentials page in the Amazon Web Services Management Console.
%% The Amazon Web Services account root user password is
%% not affected by this operation.
%%
%% Use UpdateLoginProfile:
%% https://docs.aws.amazon.com/IAM/latest/APIReference/API_UpdateLoginProfile.html
%% to use the CLI, the Amazon Web Services API, or the Users page in
%% the IAM console to change the password for any IAM user. For more
%% information about
%% modifying passwords, see Managing passwords:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_ManagingLogins.html
%% in the
%% IAM User Guide.
-spec change_password(aws_client:aws_client(), change_password_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, change_password_errors(), tuple()}.
change_password(Client, Input)
  when is_map(Client), is_map(Input) ->
    change_password(Client, Input, []).

-spec change_password(aws_client:aws_client(), change_password_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, change_password_errors(), tuple()}.
change_password(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ChangePassword">>, Input, Options).

%% @doc Creates a new Amazon Web Services secret access key and corresponding
%% Amazon Web Services access key ID for the
%% specified user.
%%
%% The default status for new keys is `Active'.
%%
%% If you do not specify a user name, IAM determines the user name implicitly
%% based on
%% the Amazon Web Services access key ID signing the request. This operation
%% works for access keys under
%% the Amazon Web Services account. Consequently, you can use this operation
%% to manage Amazon Web Services account root
%% user credentials. This is true even if the Amazon Web Services account has
%% no associated users.
%%
%% For information about quotas on the number of keys you can create, see IAM
%% and STS
%% quotas:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html
%% in the IAM User Guide.
%%
%% To ensure the security of your Amazon Web Services account, the secret
%% access key is accessible
%% only during key and user creation. You must save the key (for example, in
%% a text
%% file) if you want to be able to access it again. If a secret key is lost,
%% you can
%% delete the access keys for the associated user and then create new keys.
-spec create_access_key(aws_client:aws_client(), create_access_key_request()) ->
    {ok, create_access_key_response(), tuple()} |
    {error, any()} |
    {error, create_access_key_errors(), tuple()}.
create_access_key(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_access_key(Client, Input, []).

-spec create_access_key(aws_client:aws_client(), create_access_key_request(), proplists:proplist()) ->
    {ok, create_access_key_response(), tuple()} |
    {error, any()} |
    {error, create_access_key_errors(), tuple()}.
create_access_key(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateAccessKey">>, Input, Options).

%% @doc Creates an alias for your Amazon Web Services account.
%%
%% For information about using an Amazon Web Services account
%% alias, see Creating, deleting, and
%% listing an Amazon Web Services account alias:
%% https://docs.aws.amazon.com/signin/latest/userguide/CreateAccountAlias.html
%% in the Amazon Web Services Sign-In User
%% Guide.
-spec create_account_alias(aws_client:aws_client(), create_account_alias_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, create_account_alias_errors(), tuple()}.
create_account_alias(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_account_alias(Client, Input, []).

-spec create_account_alias(aws_client:aws_client(), create_account_alias_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, create_account_alias_errors(), tuple()}.
create_account_alias(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateAccountAlias">>, Input, Options).

%% @doc Creates a new group.
%%
%% For information about the number of groups you can create, see IAM and STS
%% quotas:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html
%% in the IAM User Guide.
-spec create_group(aws_client:aws_client(), create_group_request()) ->
    {ok, create_group_response(), tuple()} |
    {error, any()} |
    {error, create_group_errors(), tuple()}.
create_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_group(Client, Input, []).

-spec create_group(aws_client:aws_client(), create_group_request(), proplists:proplist()) ->
    {ok, create_group_response(), tuple()} |
    {error, any()} |
    {error, create_group_errors(), tuple()}.
create_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateGroup">>, Input, Options).

%% @doc Creates a new instance profile.
%%
%% For information about instance profiles, see Using
%% roles for applications on Amazon EC2:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use_switch-role-ec2.html
%% in the
%% IAM User Guide, and Instance profiles:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/iam-roles-for-amazon-ec2.html#ec2-instance-profile
%% in the Amazon EC2 User Guide.
%%
%% For information about the number of instance profiles you can create, see
%% IAM object
%% quotas:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html
%% in the IAM User Guide.
-spec create_instance_profile(aws_client:aws_client(), create_instance_profile_request()) ->
    {ok, create_instance_profile_response(), tuple()} |
    {error, any()} |
    {error, create_instance_profile_errors(), tuple()}.
create_instance_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_instance_profile(Client, Input, []).

-spec create_instance_profile(aws_client:aws_client(), create_instance_profile_request(), proplists:proplist()) ->
    {ok, create_instance_profile_response(), tuple()} |
    {error, any()} |
    {error, create_instance_profile_errors(), tuple()}.
create_instance_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateInstanceProfile">>, Input, Options).

%% @doc Creates a password for the specified IAM user.
%%
%% A password allows an IAM user to
%% access Amazon Web Services services through the Amazon Web Services
%% Management Console.
%%
%% You can use the CLI, the Amazon Web Services API, or the Users
%% page in the IAM console to create a password for any IAM user. Use
%% ChangePassword:
%% https://docs.aws.amazon.com/IAM/latest/APIReference/API_ChangePassword.html
%% to update your own existing password in the My Security Credentials page
%% in the Amazon Web Services Management Console.
%%
%% For more information about managing passwords, see Managing passwords:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_ManagingLogins.html
%% in the
%% IAM User Guide.
-spec create_login_profile(aws_client:aws_client(), create_login_profile_request()) ->
    {ok, create_login_profile_response(), tuple()} |
    {error, any()} |
    {error, create_login_profile_errors(), tuple()}.
create_login_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_login_profile(Client, Input, []).

-spec create_login_profile(aws_client:aws_client(), create_login_profile_request(), proplists:proplist()) ->
    {ok, create_login_profile_response(), tuple()} |
    {error, any()} |
    {error, create_login_profile_errors(), tuple()}.
create_login_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateLoginProfile">>, Input, Options).

%% @doc Creates an IAM entity to describe an identity provider (IdP) that
%% supports OpenID Connect (OIDC): http://openid.net/connect/.
%%
%% The OIDC provider that you create with this operation can be used as a
%% principal in a
%% role's trust policy. Such a policy establishes a trust relationship
%% between Amazon Web Services and
%% the OIDC provider.
%%
%% If you are using an OIDC identity provider from Google, Facebook, or
%% Amazon Cognito, you don't
%% need to create a separate IAM identity provider. These OIDC identity
%% providers are
%% already built-in to Amazon Web Services and are available for your use.
%% Instead, you can move directly
%% to creating new roles using your identity provider. To learn more, see
%% Creating
%% a role for web identity or OpenID connect federation:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_create_for-idp_oidc.html
%% in the IAM
%% User Guide.
%%
%% When you create the IAM OIDC provider, you specify the following:
%%
%% The URL of the OIDC identity provider (IdP) to trust
%%
%% A list of client IDs (also known as audiences) that identify the
%% application
%% or applications allowed to authenticate using the OIDC provider
%%
%% A list of tags that are attached to the specified IAM OIDC provider
%%
%% A list of thumbprints of one or more server certificates that the IdP
%% uses
%%
%% You get all of this information from the OIDC IdP you want to use to
%% access
%% Amazon Web Services.
%%
%% Amazon Web Services secures communication with OIDC identity providers
%% (IdPs) using our library of
%% trusted root certificate authorities (CAs) to verify the JSON Web Key Set
%% (JWKS)
%% endpoint's TLS certificate. If your OIDC IdP relies on a certificate
%% that is not signed
%% by one of these trusted CAs, only then we secure communication using the
%% thumbprints set
%% in the IdP's configuration.
%%
%% The trust for the OIDC provider is derived from the IAM provider that this
%% operation creates. Therefore, it is best to limit access to the
%% CreateOpenIDConnectProvider:
%% https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateOpenIDConnectProvider.html
%% operation to highly privileged
%% users.
-spec create_open_id_connect_provider(aws_client:aws_client(), create_open_id_connect_provider_request()) ->
    {ok, create_open_id_connect_provider_response(), tuple()} |
    {error, any()} |
    {error, create_open_id_connect_provider_errors(), tuple()}.
create_open_id_connect_provider(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_open_id_connect_provider(Client, Input, []).

-spec create_open_id_connect_provider(aws_client:aws_client(), create_open_id_connect_provider_request(), proplists:proplist()) ->
    {ok, create_open_id_connect_provider_response(), tuple()} |
    {error, any()} |
    {error, create_open_id_connect_provider_errors(), tuple()}.
create_open_id_connect_provider(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateOpenIDConnectProvider">>, Input, Options).

%% @doc Creates a new managed policy for your Amazon Web Services account.
%%
%% This operation creates a policy version with a version identifier of
%% `v1'
%% and sets v1 as the policy's default version. For more information
%% about policy versions,
%% see Versioning for managed policies:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html
%% in the
%% IAM User Guide.
%%
%% As a best practice, you can validate your IAM policies.
%% To learn more, see Validating IAM policies:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_policy-validator.html
%% in the IAM User Guide.
%%
%% For more information about managed policies in general, see Managed
%% policies and inline policies:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html
%% in the
%% IAM User Guide.
-spec create_policy(aws_client:aws_client(), create_policy_request()) ->
    {ok, create_policy_response(), tuple()} |
    {error, any()} |
    {error, create_policy_errors(), tuple()}.
create_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_policy(Client, Input, []).

-spec create_policy(aws_client:aws_client(), create_policy_request(), proplists:proplist()) ->
    {ok, create_policy_response(), tuple()} |
    {error, any()} |
    {error, create_policy_errors(), tuple()}.
create_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreatePolicy">>, Input, Options).

%% @doc Creates a new version of the specified managed policy.
%%
%% To update a managed policy, you
%% create a new policy version. A managed policy can have up to five
%% versions. If the
%% policy has five versions, you must delete an existing version using
%% DeletePolicyVersion:
%% https://docs.aws.amazon.com/IAM/latest/APIReference/API_DeletePolicyVersion.html
%% before you create a new version.
%%
%% Optionally, you can set the new version as the policy's default
%% version. The default
%% version is the version that is in effect for the IAM users, groups, and
%% roles to which
%% the policy is attached.
%%
%% For more information about managed policy versions, see Versioning for
%% managed
%% policies:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html
%% in the IAM User Guide.
-spec create_policy_version(aws_client:aws_client(), create_policy_version_request()) ->
    {ok, create_policy_version_response(), tuple()} |
    {error, any()} |
    {error, create_policy_version_errors(), tuple()}.
create_policy_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_policy_version(Client, Input, []).

-spec create_policy_version(aws_client:aws_client(), create_policy_version_request(), proplists:proplist()) ->
    {ok, create_policy_version_response(), tuple()} |
    {error, any()} |
    {error, create_policy_version_errors(), tuple()}.
create_policy_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreatePolicyVersion">>, Input, Options).

%% @doc Creates a new role for your Amazon Web Services account.
%%
%% For more information about roles, see IAM roles:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles.html in the
%% IAM User Guide. For information about quotas for role names
%% and the number of roles you can create, see IAM and STS quotas:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html
%% in the
%% IAM User Guide.
-spec create_role(aws_client:aws_client(), create_role_request()) ->
    {ok, create_role_response(), tuple()} |
    {error, any()} |
    {error, create_role_errors(), tuple()}.
create_role(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_role(Client, Input, []).

-spec create_role(aws_client:aws_client(), create_role_request(), proplists:proplist()) ->
    {ok, create_role_response(), tuple()} |
    {error, any()} |
    {error, create_role_errors(), tuple()}.
create_role(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateRole">>, Input, Options).

%% @doc Creates an IAM resource that describes an identity provider (IdP)
%% that supports SAML
%% 2.0.
%%
%% The SAML provider resource that you create with this operation can be used
%% as a
%% principal in an IAM role's trust policy. Such a policy can enable
%% federated users who
%% sign in using the SAML IdP to assume the role. You can create an IAM role
%% that
%% supports Web-based single sign-on (SSO) to the Amazon Web Services
%% Management Console or one that supports API access
%% to Amazon Web Services.
%%
%% When you create the SAML provider resource, you upload a SAML metadata
%% document that
%% you get from your IdP. That document includes the issuer's name,
%% expiration information,
%% and keys that can be used to validate the SAML authentication response
%% (assertions) that
%% the IdP sends. You must generate the metadata document using the identity
%% management
%% software that is used as your organization's IdP.
%%
%% This operation requires Signature Version 4:
%% https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html.
%%
%% For more information, see Enabling SAML 2.0
%% federated users to access the Amazon Web Services Management Console:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_enable-console-saml.html
%% and About SAML 2.0-based
%% federation:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_saml.html
%% in the IAM User Guide.
-spec create_saml_provider(aws_client:aws_client(), create_saml_provider_request()) ->
    {ok, create_saml_provider_response(), tuple()} |
    {error, any()} |
    {error, create_saml_provider_errors(), tuple()}.
create_saml_provider(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_saml_provider(Client, Input, []).

-spec create_saml_provider(aws_client:aws_client(), create_saml_provider_request(), proplists:proplist()) ->
    {ok, create_saml_provider_response(), tuple()} |
    {error, any()} |
    {error, create_saml_provider_errors(), tuple()}.
create_saml_provider(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateSAMLProvider">>, Input, Options).

%% @doc Creates an IAM role that is linked to a specific Amazon Web Services
%% service.
%%
%% The service controls
%% the attached policies and when the role can be deleted. This helps ensure
%% that the
%% service is not broken by an unexpectedly changed or deleted role, which
%% could put your
%% Amazon Web Services resources into an unknown state. Allowing the service
%% to control the role helps
%% improve service stability and proper cleanup when a service and its role
%% are no longer
%% needed. For more information, see Using service-linked
%% roles:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/using-service-linked-roles.html
%% in the IAM User Guide.
%%
%% To attach a policy to this service-linked role, you must make the request
%% using the
%% Amazon Web Services service that depends on this role.
-spec create_service_linked_role(aws_client:aws_client(), create_service_linked_role_request()) ->
    {ok, create_service_linked_role_response(), tuple()} |
    {error, any()} |
    {error, create_service_linked_role_errors(), tuple()}.
create_service_linked_role(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_service_linked_role(Client, Input, []).

-spec create_service_linked_role(aws_client:aws_client(), create_service_linked_role_request(), proplists:proplist()) ->
    {ok, create_service_linked_role_response(), tuple()} |
    {error, any()} |
    {error, create_service_linked_role_errors(), tuple()}.
create_service_linked_role(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateServiceLinkedRole">>, Input, Options).

%% @doc Generates a set of credentials consisting of a user name and password
%% that can be used
%% to access the service specified in the request.
%%
%% These credentials are generated by
%% IAM, and can be used only for the specified service.
%%
%% You can have a maximum of two sets of service-specific credentials for
%% each supported
%% service per user.
%%
%% You can create service-specific credentials for Amazon Bedrock, CodeCommit
%% and Amazon Keyspaces (for Apache Cassandra).
%%
%% You can reset the password to a new service-generated value by calling
%% ResetServiceSpecificCredential:
%% https://docs.aws.amazon.com/IAM/latest/APIReference/API_ResetServiceSpecificCredential.html.
%%
%% For more information about service-specific credentials, see
%% Service-specific credentials for IAM users:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_bedrock.html
%% in the
%% IAM User Guide.
-spec create_service_specific_credential(aws_client:aws_client(), create_service_specific_credential_request()) ->
    {ok, create_service_specific_credential_response(), tuple()} |
    {error, any()} |
    {error, create_service_specific_credential_errors(), tuple()}.
create_service_specific_credential(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_service_specific_credential(Client, Input, []).

-spec create_service_specific_credential(aws_client:aws_client(), create_service_specific_credential_request(), proplists:proplist()) ->
    {ok, create_service_specific_credential_response(), tuple()} |
    {error, any()} |
    {error, create_service_specific_credential_errors(), tuple()}.
create_service_specific_credential(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateServiceSpecificCredential">>, Input, Options).

%% @doc Creates a new IAM user for your Amazon Web Services account.
%%
%% For information about quotas for the number of IAM users you can create,
%% see IAM and STS
%% quotas:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html
%% in the IAM User Guide.
-spec create_user(aws_client:aws_client(), create_user_request()) ->
    {ok, create_user_response(), tuple()} |
    {error, any()} |
    {error, create_user_errors(), tuple()}.
create_user(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_user(Client, Input, []).

-spec create_user(aws_client:aws_client(), create_user_request(), proplists:proplist()) ->
    {ok, create_user_response(), tuple()} |
    {error, any()} |
    {error, create_user_errors(), tuple()}.
create_user(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateUser">>, Input, Options).

%% @doc Creates a new virtual MFA device for the Amazon Web Services account.
%%
%% After creating the virtual
%% MFA, use EnableMFADevice:
%% https://docs.aws.amazon.com/IAM/latest/APIReference/API_EnableMFADevice.html
%% to
%% attach the MFA device to an IAM user. For more information about creating
%% and working
%% with virtual MFA devices, see Using a virtual MFA device:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_VirtualMFA.html in
%% the
%% IAM User Guide.
%%
%% For information about the maximum number of MFA devices you can create,
%% see IAM and STS
%% quotas:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html
%% in the IAM User Guide.
%%
%% The seed information contained in the QR code and the Base32 string should
%% be
%% treated like any other secret access information. In other words, protect
%% the seed
%% information as you would your Amazon Web Services access keys or your
%% passwords. After you
%% provision your virtual device, you should ensure that the information is
%% destroyed
%% following secure procedures.
-spec create_virtual_mfa_device(aws_client:aws_client(), create_virtual_mfa_device_request()) ->
    {ok, create_virtual_mfa_device_response(), tuple()} |
    {error, any()} |
    {error, create_virtual_mfa_device_errors(), tuple()}.
create_virtual_mfa_device(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_virtual_mfa_device(Client, Input, []).

-spec create_virtual_mfa_device(aws_client:aws_client(), create_virtual_mfa_device_request(), proplists:proplist()) ->
    {ok, create_virtual_mfa_device_response(), tuple()} |
    {error, any()} |
    {error, create_virtual_mfa_device_errors(), tuple()}.
create_virtual_mfa_device(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateVirtualMFADevice">>, Input, Options).

%% @doc Deactivates the specified MFA device and removes it from association
%% with the user
%% name for which it was originally enabled.
%%
%% For more information about creating and working with virtual MFA devices,
%% see Enabling a virtual
%% multi-factor authentication (MFA) device:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_VirtualMFA.html in
%% the
%% IAM User Guide.
-spec deactivate_mfa_device(aws_client:aws_client(), deactivate_mfa_device_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, deactivate_mfa_device_errors(), tuple()}.
deactivate_mfa_device(Client, Input)
  when is_map(Client), is_map(Input) ->
    deactivate_mfa_device(Client, Input, []).

-spec deactivate_mfa_device(aws_client:aws_client(), deactivate_mfa_device_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, deactivate_mfa_device_errors(), tuple()}.
deactivate_mfa_device(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeactivateMFADevice">>, Input, Options).

%% @doc Deletes the access key pair associated with the specified IAM user.
%%
%% If you do not specify a user name, IAM determines the user name implicitly
%% based on
%% the Amazon Web Services access key ID signing the request. This operation
%% works for access keys under
%% the Amazon Web Services account. Consequently, you can use this operation
%% to manage Amazon Web Services account root
%% user credentials even if the Amazon Web Services account has no associated
%% users.
-spec delete_access_key(aws_client:aws_client(), delete_access_key_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_access_key_errors(), tuple()}.
delete_access_key(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_access_key(Client, Input, []).

-spec delete_access_key(aws_client:aws_client(), delete_access_key_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_access_key_errors(), tuple()}.
delete_access_key(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAccessKey">>, Input, Options).

%% @doc Deletes the specified Amazon Web Services account alias.
%%
%% For information about using an Amazon Web Services
%% account alias, see Creating, deleting, and
%% listing an Amazon Web Services account alias:
%% https://docs.aws.amazon.com/signin/latest/userguide/CreateAccountAlias.html
%% in the Amazon Web Services Sign-In User
%% Guide.
-spec delete_account_alias(aws_client:aws_client(), delete_account_alias_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_account_alias_errors(), tuple()}.
delete_account_alias(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_account_alias(Client, Input, []).

-spec delete_account_alias(aws_client:aws_client(), delete_account_alias_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_account_alias_errors(), tuple()}.
delete_account_alias(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAccountAlias">>, Input, Options).

%% @doc Deletes the password policy for the Amazon Web Services account.
%%
%% There are no parameters.
-spec delete_account_password_policy(aws_client:aws_client(), #{}) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_account_password_policy_errors(), tuple()}.
delete_account_password_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_account_password_policy(Client, Input, []).

-spec delete_account_password_policy(aws_client:aws_client(), #{}, proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_account_password_policy_errors(), tuple()}.
delete_account_password_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAccountPasswordPolicy">>, Input, Options).

%% @doc Deletes the specified IAM group.
%%
%% The group must not contain any users or have any
%% attached policies.
-spec delete_group(aws_client:aws_client(), delete_group_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_group_errors(), tuple()}.
delete_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_group(Client, Input, []).

-spec delete_group(aws_client:aws_client(), delete_group_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_group_errors(), tuple()}.
delete_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteGroup">>, Input, Options).

%% @doc Deletes the specified inline policy that is embedded in the specified
%% IAM
%% group.
%%
%% A group can also have managed policies attached to it. To detach a managed
%% policy from
%% a group, use DetachGroupPolicy:
%% https://docs.aws.amazon.com/IAM/latest/APIReference/API_DetachGroupPolicy.html.
%% For more information about policies, refer to Managed policies and inline
%% policies:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html
%% in the IAM User Guide.
-spec delete_group_policy(aws_client:aws_client(), delete_group_policy_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_group_policy_errors(), tuple()}.
delete_group_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_group_policy(Client, Input, []).

-spec delete_group_policy(aws_client:aws_client(), delete_group_policy_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_group_policy_errors(), tuple()}.
delete_group_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteGroupPolicy">>, Input, Options).

%% @doc Deletes the specified instance profile.
%%
%% The instance profile must not have an
%% associated role.
%%
%% Make sure that you do not have any Amazon EC2 instances running with the
%% instance
%% profile you are about to delete. Deleting a role or instance profile that
%% is
%% associated with a running instance will break any applications running on
%% the
%% instance.
%%
%% For more information about instance profiles, see Using
%% instance profiles:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use_switch-role-ec2_instance-profiles.html
%% in the IAM User Guide.
-spec delete_instance_profile(aws_client:aws_client(), delete_instance_profile_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_instance_profile_errors(), tuple()}.
delete_instance_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_instance_profile(Client, Input, []).

-spec delete_instance_profile(aws_client:aws_client(), delete_instance_profile_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_instance_profile_errors(), tuple()}.
delete_instance_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteInstanceProfile">>, Input, Options).

%% @doc Deletes the password for the specified IAM user or root user, For
%% more information, see
%% Managing
%% passwords for IAM users:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_passwords_admin-change-user.html.
%%
%% You can use the CLI, the Amazon Web Services API, or the Users
%% page in the IAM console to delete a password for any IAM user. You can use
%% ChangePassword:
%% https://docs.aws.amazon.com/IAM/latest/APIReference/API_ChangePassword.html
%% to update, but not delete, your own password in the
%% My Security Credentials page in the
%% Amazon Web Services Management Console.
%%
%% Deleting a user's password does not prevent a user from accessing
%% Amazon Web Services through
%% the command line interface or the API. To prevent all user access, you
%% must also
%% either make any access keys inactive or delete them. For more information
%% about
%% making keys inactive or deleting them, see UpdateAccessKey:
%% https://docs.aws.amazon.com/IAM/latest/APIReference/API_UpdateAccessKey.html
%% and DeleteAccessKey:
%% https://docs.aws.amazon.com/IAM/latest/APIReference/API_DeleteAccessKey.html.
-spec delete_login_profile(aws_client:aws_client(), delete_login_profile_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_login_profile_errors(), tuple()}.
delete_login_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_login_profile(Client, Input, []).

-spec delete_login_profile(aws_client:aws_client(), delete_login_profile_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_login_profile_errors(), tuple()}.
delete_login_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteLoginProfile">>, Input, Options).

%% @doc Deletes an OpenID Connect identity provider (IdP) resource object in
%% IAM.
%%
%% Deleting an IAM OIDC provider resource does not update any roles that
%% reference the
%% provider as a principal in their trust policies. Any attempt to assume a
%% role that
%% references a deleted provider fails.
%%
%% This operation is idempotent; it does not fail or return an error if you
%% call the
%% operation for a provider that does not exist.
-spec delete_open_id_connect_provider(aws_client:aws_client(), delete_open_id_connect_provider_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_open_id_connect_provider_errors(), tuple()}.
delete_open_id_connect_provider(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_open_id_connect_provider(Client, Input, []).

-spec delete_open_id_connect_provider(aws_client:aws_client(), delete_open_id_connect_provider_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_open_id_connect_provider_errors(), tuple()}.
delete_open_id_connect_provider(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteOpenIDConnectProvider">>, Input, Options).

%% @doc Deletes the specified managed policy.
%%
%% Before you can delete a managed policy, you must first detach the policy
%% from all
%% users, groups, and roles that it is attached to. In addition, you must
%% delete all the
%% policy's versions. The following steps describe the process for
%% deleting a managed
%% policy:
%%
%% Detach the policy from all users, groups, and roles that the policy is
%% attached to, using DetachUserPolicy:
%% https://docs.aws.amazon.com/IAM/latest/APIReference/API_DetachUserPolicy.html,
%% DetachGroupPolicy:
%% https://docs.aws.amazon.com/IAM/latest/APIReference/API_DetachGroupPolicy.html,
%% or DetachRolePolicy:
%% https://docs.aws.amazon.com/IAM/latest/APIReference/API_DetachRolePolicy.html.
%% To list all the users, groups, and roles that a
%% policy is attached to, use ListEntitiesForPolicy:
%% https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListEntitiesForPolicy.html.
%%
%% Delete all versions of the policy using DeletePolicyVersion:
%% https://docs.aws.amazon.com/IAM/latest/APIReference/API_DeletePolicyVersion.html.
%% To list the policy's versions, use ListPolicyVersions:
%% https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListPolicyVersions.html.
%% You cannot use DeletePolicyVersion:
%% https://docs.aws.amazon.com/IAM/latest/APIReference/API_DeletePolicyVersion.html
%% to delete the version that is marked as the
%% default version. You delete the policy's default version in the next
%% step of the
%% process.
%%
%% Delete the policy (this automatically deletes the policy's default
%% version)
%% using this operation.
%%
%% For information about managed policies, see Managed policies and inline
%% policies:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html
%% in the IAM User Guide.
-spec delete_policy(aws_client:aws_client(), delete_policy_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_policy_errors(), tuple()}.
delete_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_policy(Client, Input, []).

-spec delete_policy(aws_client:aws_client(), delete_policy_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_policy_errors(), tuple()}.
delete_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeletePolicy">>, Input, Options).

%% @doc Deletes the specified version from the specified managed policy.
%%
%% You cannot delete the default version from a policy using this operation.
%% To delete
%% the default version from a policy, use DeletePolicy:
%% https://docs.aws.amazon.com/IAM/latest/APIReference/API_DeletePolicy.html.
%% To find
%% out which version of a policy is marked as the default version, use
%% ListPolicyVersions:
%% https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListPolicyVersions.html.
%%
%% For information about versions for managed policies, see Versioning for
%% managed
%% policies:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html
%% in the IAM User Guide.
-spec delete_policy_version(aws_client:aws_client(), delete_policy_version_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_policy_version_errors(), tuple()}.
delete_policy_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_policy_version(Client, Input, []).

-spec delete_policy_version(aws_client:aws_client(), delete_policy_version_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_policy_version_errors(), tuple()}.
delete_policy_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeletePolicyVersion">>, Input, Options).

%% @doc Deletes the specified role.
%%
%% Unlike the Amazon Web Services Management Console, when you delete a role
%% programmatically, you must delete the items attached to the role manually,
%% or the
%% deletion fails. For more information, see Deleting an IAM role:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_manage_delete.html#roles-managingrole-deleting-cli.
%% Before attempting to delete a role, remove the
%% following attached items:
%%
%% Inline policies (DeleteRolePolicy:
%% https://docs.aws.amazon.com/IAM/latest/APIReference/API_DeleteRolePolicy.html)
%%
%% Attached managed policies (DetachRolePolicy:
%% https://docs.aws.amazon.com/IAM/latest/APIReference/API_DetachRolePolicy.html)
%%
%% Instance profile (RemoveRoleFromInstanceProfile:
%% https://docs.aws.amazon.com/IAM/latest/APIReference/API_RemoveRoleFromInstanceProfile.html)
%%
%% Optional – Delete instance profile after detaching from role for
%% resource clean up (DeleteInstanceProfile:
%% https://docs.aws.amazon.com/IAM/latest/APIReference/API_DeleteInstanceProfile.html)
%%
%% Make sure that you do not have any Amazon EC2 instances running with the
%% role you are
%% about to delete. Deleting a role or instance profile that is associated
%% with a
%% running instance will break any applications running on the instance.
-spec delete_role(aws_client:aws_client(), delete_role_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_role_errors(), tuple()}.
delete_role(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_role(Client, Input, []).

-spec delete_role(aws_client:aws_client(), delete_role_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_role_errors(), tuple()}.
delete_role(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteRole">>, Input, Options).

%% @doc Deletes the permissions boundary for the specified IAM role.
%%
%% You cannot set the boundary for a service-linked role.
%%
%% Deleting the permissions boundary for a role might increase its
%% permissions. For
%% example, it might allow anyone who assumes the role to perform all the
%% actions
%% granted in its permissions policies.
-spec delete_role_permissions_boundary(aws_client:aws_client(), delete_role_permissions_boundary_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_role_permissions_boundary_errors(), tuple()}.
delete_role_permissions_boundary(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_role_permissions_boundary(Client, Input, []).

-spec delete_role_permissions_boundary(aws_client:aws_client(), delete_role_permissions_boundary_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_role_permissions_boundary_errors(), tuple()}.
delete_role_permissions_boundary(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteRolePermissionsBoundary">>, Input, Options).

%% @doc Deletes the specified inline policy that is embedded in the specified
%% IAM
%% role.
%%
%% A role can also have managed policies attached to it. To detach a managed
%% policy from
%% a role, use DetachRolePolicy:
%% https://docs.aws.amazon.com/IAM/latest/APIReference/API_DetachRolePolicy.html.
%% For more information about policies, refer to Managed policies and inline
%% policies:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html
%% in the IAM User Guide.
-spec delete_role_policy(aws_client:aws_client(), delete_role_policy_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_role_policy_errors(), tuple()}.
delete_role_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_role_policy(Client, Input, []).

-spec delete_role_policy(aws_client:aws_client(), delete_role_policy_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_role_policy_errors(), tuple()}.
delete_role_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteRolePolicy">>, Input, Options).

%% @doc Deletes a SAML provider resource in IAM.
%%
%% Deleting the provider resource from IAM does not update any roles that
%% reference the
%% SAML provider resource's ARN as a principal in their trust policies.
%% Any attempt to
%% assume a role that references a non-existent provider resource ARN fails.
%%
%% This operation requires Signature Version 4:
%% https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html.
-spec delete_saml_provider(aws_client:aws_client(), delete_saml_provider_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_saml_provider_errors(), tuple()}.
delete_saml_provider(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_saml_provider(Client, Input, []).

-spec delete_saml_provider(aws_client:aws_client(), delete_saml_provider_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_saml_provider_errors(), tuple()}.
delete_saml_provider(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteSAMLProvider">>, Input, Options).

%% @doc Deletes the specified server certificate.
%%
%% For more information about working with server certificates, see Working
%% with server certificates:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html
%% in the IAM User Guide. This
%% topic also includes a list of Amazon Web Services services that can use
%% the server certificates that
%% you manage with IAM.
%%
%% If you are using a server certificate with Elastic Load Balancing,
%% deleting the
%% certificate could have implications for your application. If Elastic Load
%% Balancing
%% doesn't detect the deletion of bound certificates, it may continue to
%% use the
%% certificates. This could cause Elastic Load Balancing to stop accepting
%% traffic. We
%% recommend that you remove the reference to the certificate from Elastic
%% Load
%% Balancing before using this command to delete the certificate. For more
%% information,
%% see DeleteLoadBalancerListeners:
%% https://docs.aws.amazon.com/ElasticLoadBalancing/latest/APIReference/API_DeleteLoadBalancerListeners.html
%% in the Elastic Load Balancing API
%% Reference.
-spec delete_server_certificate(aws_client:aws_client(), delete_server_certificate_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_server_certificate_errors(), tuple()}.
delete_server_certificate(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_server_certificate(Client, Input, []).

-spec delete_server_certificate(aws_client:aws_client(), delete_server_certificate_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_server_certificate_errors(), tuple()}.
delete_server_certificate(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteServerCertificate">>, Input, Options).

%% @doc Submits a service-linked role deletion request and returns a
%% `DeletionTaskId', which you can use to check the status of the
%% deletion.
%%
%% Before you call this operation, confirm that the role has no active
%% sessions and that
%% any resources used by the role in the linked service are deleted. If you
%% call this
%% operation more than once for the same service-linked role and an earlier
%% deletion task
%% is not complete, then the `DeletionTaskId' of the earlier request is
%% returned.
%%
%% If you submit a deletion request for a service-linked role whose linked
%% service is
%% still accessing a resource, then the deletion task fails. If it fails, the
%% GetServiceLinkedRoleDeletionStatus:
%% https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetServiceLinkedRoleDeletionStatus.html
%% operation returns the reason for the
%% failure, usually including the resources that must be deleted. To delete
%% the
%% service-linked role, you must first remove those resources from the linked
%% service and
%% then submit the deletion request again. Resources are specific to the
%% service that is
%% linked to the role. For more information about removing resources from a
%% service, see
%% the Amazon Web Services documentation: http://docs.aws.amazon.com/ for
%% your
%% service.
%%
%% For more information about service-linked roles, see Roles terms and
%% concepts: Amazon Web Services service-linked role:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_terms-and-concepts.html#iam-term-service-linked-role
%% in the
%% IAM User Guide.
-spec delete_service_linked_role(aws_client:aws_client(), delete_service_linked_role_request()) ->
    {ok, delete_service_linked_role_response(), tuple()} |
    {error, any()} |
    {error, delete_service_linked_role_errors(), tuple()}.
delete_service_linked_role(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_service_linked_role(Client, Input, []).

-spec delete_service_linked_role(aws_client:aws_client(), delete_service_linked_role_request(), proplists:proplist()) ->
    {ok, delete_service_linked_role_response(), tuple()} |
    {error, any()} |
    {error, delete_service_linked_role_errors(), tuple()}.
delete_service_linked_role(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteServiceLinkedRole">>, Input, Options).

%% @doc Deletes the specified service-specific credential.
-spec delete_service_specific_credential(aws_client:aws_client(), delete_service_specific_credential_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_service_specific_credential_errors(), tuple()}.
delete_service_specific_credential(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_service_specific_credential(Client, Input, []).

-spec delete_service_specific_credential(aws_client:aws_client(), delete_service_specific_credential_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_service_specific_credential_errors(), tuple()}.
delete_service_specific_credential(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteServiceSpecificCredential">>, Input, Options).

%% @doc Deletes a signing certificate associated with the specified IAM user.
%%
%% If you do not specify a user name, IAM determines the user name implicitly
%% based on
%% the Amazon Web Services access key ID signing the request. This operation
%% works for access keys under
%% the Amazon Web Services account. Consequently, you can use this operation
%% to manage Amazon Web Services account root
%% user credentials even if the Amazon Web Services account has no associated
%% IAM users.
-spec delete_signing_certificate(aws_client:aws_client(), delete_signing_certificate_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_signing_certificate_errors(), tuple()}.
delete_signing_certificate(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_signing_certificate(Client, Input, []).

-spec delete_signing_certificate(aws_client:aws_client(), delete_signing_certificate_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_signing_certificate_errors(), tuple()}.
delete_signing_certificate(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteSigningCertificate">>, Input, Options).

%% @doc Deletes the specified SSH public key.
%%
%% The SSH public key deleted by this operation is used only for
%% authenticating the
%% associated IAM user to an CodeCommit repository. For more information
%% about using SSH keys
%% to authenticate to an CodeCommit repository, see Set up CodeCommit for
%% SSH connections:
%% https://docs.aws.amazon.com/codecommit/latest/userguide/setting-up-credentials-ssh.html
%% in the CodeCommit User Guide.
-spec delete_ssh_public_key(aws_client:aws_client(), delete_ssh_public_key_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_ssh_public_key_errors(), tuple()}.
delete_ssh_public_key(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_ssh_public_key(Client, Input, []).

-spec delete_ssh_public_key(aws_client:aws_client(), delete_ssh_public_key_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_ssh_public_key_errors(), tuple()}.
delete_ssh_public_key(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteSSHPublicKey">>, Input, Options).

%% @doc Deletes the specified IAM user.
%%
%% Unlike the Amazon Web Services Management Console, when you delete a user
%% programmatically, you must delete the items attached to the user manually,
%% or the
%% deletion fails. For more information, see Deleting an IAM
%% user:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_users_manage.html#id_users_deleting_cli.
%% Before attempting to delete a user, remove the following items:
%%
%% Password (DeleteLoginProfile:
%% https://docs.aws.amazon.com/IAM/latest/APIReference/API_DeleteLoginProfile.html)
%%
%% Access keys (DeleteAccessKey:
%% https://docs.aws.amazon.com/IAM/latest/APIReference/API_DeleteAccessKey.html)
%%
%% Signing certificate (DeleteSigningCertificate:
%% https://docs.aws.amazon.com/IAM/latest/APIReference/API_DeleteSigningCertificate.html)
%%
%% SSH public key (DeleteSSHPublicKey:
%% https://docs.aws.amazon.com/IAM/latest/APIReference/API_DeleteSSHPublicKey.html)
%%
%% Git credentials (DeleteServiceSpecificCredential:
%% https://docs.aws.amazon.com/IAM/latest/APIReference/API_DeleteServiceSpecificCredential.html)
%%
%% Multi-factor authentication (MFA) device (DeactivateMFADevice:
%% https://docs.aws.amazon.com/IAM/latest/APIReference/API_DeactivateMFADevice.html,
%% DeleteVirtualMFADevice:
%% https://docs.aws.amazon.com/IAM/latest/APIReference/API_DeleteVirtualMFADevice.html)
%%
%% Inline policies (DeleteUserPolicy:
%% https://docs.aws.amazon.com/IAM/latest/APIReference/API_DeleteUserPolicy.html)
%%
%% Attached managed policies (DetachUserPolicy:
%% https://docs.aws.amazon.com/IAM/latest/APIReference/API_DetachUserPolicy.html)
%%
%% Group memberships (RemoveUserFromGroup:
%% https://docs.aws.amazon.com/IAM/latest/APIReference/API_RemoveUserFromGroup.html)
-spec delete_user(aws_client:aws_client(), delete_user_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_user_errors(), tuple()}.
delete_user(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_user(Client, Input, []).

-spec delete_user(aws_client:aws_client(), delete_user_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_user_errors(), tuple()}.
delete_user(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteUser">>, Input, Options).

%% @doc Deletes the permissions boundary for the specified IAM user.
%%
%% Deleting the permissions boundary for a user might increase its
%% permissions by
%% allowing the user to perform all the actions granted in its permissions
%% policies.
-spec delete_user_permissions_boundary(aws_client:aws_client(), delete_user_permissions_boundary_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_user_permissions_boundary_errors(), tuple()}.
delete_user_permissions_boundary(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_user_permissions_boundary(Client, Input, []).

-spec delete_user_permissions_boundary(aws_client:aws_client(), delete_user_permissions_boundary_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_user_permissions_boundary_errors(), tuple()}.
delete_user_permissions_boundary(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteUserPermissionsBoundary">>, Input, Options).

%% @doc Deletes the specified inline policy that is embedded in the specified
%% IAM
%% user.
%%
%% A user can also have managed policies attached to it. To detach a managed
%% policy from
%% a user, use DetachUserPolicy:
%% https://docs.aws.amazon.com/IAM/latest/APIReference/API_DetachUserPolicy.html.
%% For more information about policies, refer to Managed policies and inline
%% policies:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html
%% in the IAM User Guide.
-spec delete_user_policy(aws_client:aws_client(), delete_user_policy_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_user_policy_errors(), tuple()}.
delete_user_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_user_policy(Client, Input, []).

-spec delete_user_policy(aws_client:aws_client(), delete_user_policy_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_user_policy_errors(), tuple()}.
delete_user_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteUserPolicy">>, Input, Options).

%% @doc Deletes a virtual MFA device.
%%
%% You must deactivate a user's virtual MFA device before you can delete
%% it. For
%% information about deactivating MFA devices, see DeactivateMFADevice:
%% https://docs.aws.amazon.com/IAM/latest/APIReference/API_DeactivateMFADevice.html.
-spec delete_virtual_mfa_device(aws_client:aws_client(), delete_virtual_mfa_device_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_virtual_mfa_device_errors(), tuple()}.
delete_virtual_mfa_device(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_virtual_mfa_device(Client, Input, []).

-spec delete_virtual_mfa_device(aws_client:aws_client(), delete_virtual_mfa_device_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_virtual_mfa_device_errors(), tuple()}.
delete_virtual_mfa_device(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteVirtualMFADevice">>, Input, Options).

%% @doc Removes the specified managed policy from the specified IAM group.
%%
%% A group can also have inline policies embedded with it. To delete an
%% inline policy,
%% use DeleteGroupPolicy:
%% https://docs.aws.amazon.com/IAM/latest/APIReference/API_DeleteGroupPolicy.html.
%% For information about policies, see Managed
%% policies and inline policies:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html
%% in the
%% IAM User Guide.
-spec detach_group_policy(aws_client:aws_client(), detach_group_policy_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, detach_group_policy_errors(), tuple()}.
detach_group_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    detach_group_policy(Client, Input, []).

-spec detach_group_policy(aws_client:aws_client(), detach_group_policy_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, detach_group_policy_errors(), tuple()}.
detach_group_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DetachGroupPolicy">>, Input, Options).

%% @doc Removes the specified managed policy from the specified role.
%%
%% A role can also have inline policies embedded with it. To delete an inline
%% policy, use
%% DeleteRolePolicy:
%% https://docs.aws.amazon.com/IAM/latest/APIReference/API_DeleteRolePolicy.html.
%% For information about policies, see Managed
%% policies and inline policies:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html
%% in the
%% IAM User Guide.
-spec detach_role_policy(aws_client:aws_client(), detach_role_policy_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, detach_role_policy_errors(), tuple()}.
detach_role_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    detach_role_policy(Client, Input, []).

-spec detach_role_policy(aws_client:aws_client(), detach_role_policy_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, detach_role_policy_errors(), tuple()}.
detach_role_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DetachRolePolicy">>, Input, Options).

%% @doc Removes the specified managed policy from the specified user.
%%
%% A user can also have inline policies embedded with it. To delete an inline
%% policy, use
%% DeleteUserPolicy:
%% https://docs.aws.amazon.com/IAM/latest/APIReference/API_DeleteUserPolicy.html.
%% For information about policies, see Managed
%% policies and inline policies:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html
%% in the
%% IAM User Guide.
-spec detach_user_policy(aws_client:aws_client(), detach_user_policy_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, detach_user_policy_errors(), tuple()}.
detach_user_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    detach_user_policy(Client, Input, []).

-spec detach_user_policy(aws_client:aws_client(), detach_user_policy_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, detach_user_policy_errors(), tuple()}.
detach_user_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DetachUserPolicy">>, Input, Options).

%% @doc Disables the management of privileged root user credentials across
%% member accounts in
%% your organization.
%%
%% When you disable this feature, the management account and the
%% delegated administrator for IAM can no longer manage root user credentials
%% for member
%% accounts in your organization.
-spec disable_organizations_root_credentials_management(aws_client:aws_client(), disable_organizations_root_credentials_management_request()) ->
    {ok, disable_organizations_root_credentials_management_response(), tuple()} |
    {error, any()} |
    {error, disable_organizations_root_credentials_management_errors(), tuple()}.
disable_organizations_root_credentials_management(Client, Input)
  when is_map(Client), is_map(Input) ->
    disable_organizations_root_credentials_management(Client, Input, []).

-spec disable_organizations_root_credentials_management(aws_client:aws_client(), disable_organizations_root_credentials_management_request(), proplists:proplist()) ->
    {ok, disable_organizations_root_credentials_management_response(), tuple()} |
    {error, any()} |
    {error, disable_organizations_root_credentials_management_errors(), tuple()}.
disable_organizations_root_credentials_management(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisableOrganizationsRootCredentialsManagement">>, Input, Options).

%% @doc Disables root user sessions for privileged tasks across member
%% accounts in your
%% organization.
%%
%% When you disable this feature, the management account and the delegated
%% administrator for IAM can no longer perform privileged tasks on member
%% accounts in
%% your organization.
-spec disable_organizations_root_sessions(aws_client:aws_client(), disable_organizations_root_sessions_request()) ->
    {ok, disable_organizations_root_sessions_response(), tuple()} |
    {error, any()} |
    {error, disable_organizations_root_sessions_errors(), tuple()}.
disable_organizations_root_sessions(Client, Input)
  when is_map(Client), is_map(Input) ->
    disable_organizations_root_sessions(Client, Input, []).

-spec disable_organizations_root_sessions(aws_client:aws_client(), disable_organizations_root_sessions_request(), proplists:proplist()) ->
    {ok, disable_organizations_root_sessions_response(), tuple()} |
    {error, any()} |
    {error, disable_organizations_root_sessions_errors(), tuple()}.
disable_organizations_root_sessions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisableOrganizationsRootSessions">>, Input, Options).

%% @doc Enables the specified MFA device and associates it with the specified
%% IAM user.
%%
%% When
%% enabled, the MFA device is required for every subsequent login by the IAM
%% user
%% associated with the device.
-spec enable_mfa_device(aws_client:aws_client(), enable_mfa_device_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, enable_mfa_device_errors(), tuple()}.
enable_mfa_device(Client, Input)
  when is_map(Client), is_map(Input) ->
    enable_mfa_device(Client, Input, []).

-spec enable_mfa_device(aws_client:aws_client(), enable_mfa_device_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, enable_mfa_device_errors(), tuple()}.
enable_mfa_device(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"EnableMFADevice">>, Input, Options).

%% @doc Enables the management of privileged root user credentials across
%% member accounts in your
%% organization.
%%
%% When you enable root credentials management for centralized root access:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_root-user.html#id_root-user-access-management,
%% the management account and the delegated
%% administrator for IAM can manage root user credentials for member accounts
%% in your
%% organization.
%%
%% Before you enable centralized root access, you must have an account
%% configured with
%% the following settings:
%%
%% You must manage your Amazon Web Services accounts in Organizations:
%% https://docs.aws.amazon.com/organizations/latest/userguide/orgs_introduction.html.
%%
%% Enable trusted access for Identity and Access Management in Organizations.
%% For details, see
%% IAM and Organizations:
%% https://docs.aws.amazon.com/organizations/latest/userguide/services-that-can-integrate-iam.html
%% in the Organizations User
%% Guide.
-spec enable_organizations_root_credentials_management(aws_client:aws_client(), enable_organizations_root_credentials_management_request()) ->
    {ok, enable_organizations_root_credentials_management_response(), tuple()} |
    {error, any()} |
    {error, enable_organizations_root_credentials_management_errors(), tuple()}.
enable_organizations_root_credentials_management(Client, Input)
  when is_map(Client), is_map(Input) ->
    enable_organizations_root_credentials_management(Client, Input, []).

-spec enable_organizations_root_credentials_management(aws_client:aws_client(), enable_organizations_root_credentials_management_request(), proplists:proplist()) ->
    {ok, enable_organizations_root_credentials_management_response(), tuple()} |
    {error, any()} |
    {error, enable_organizations_root_credentials_management_errors(), tuple()}.
enable_organizations_root_credentials_management(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"EnableOrganizationsRootCredentialsManagement">>, Input, Options).

%% @doc Allows the management account or delegated administrator to perform
%% privileged tasks
%% on member accounts in your organization.
%%
%% For more information, see Centrally manage root access for member
%% accounts:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_root-user.html#id_root-user-access-management
%% in the Identity and Access Management
%% User Guide.
%%
%% Before you enable this feature, you must have an account configured with
%% the following
%% settings:
%%
%% You must manage your Amazon Web Services accounts in Organizations:
%% https://docs.aws.amazon.com/organizations/latest/userguide/orgs_introduction.html.
%%
%% Enable trusted access for Identity and Access Management in Organizations.
%% For details, see
%% IAM and Organizations:
%% https://docs.aws.amazon.com/organizations/latest/userguide/services-that-can-integrate-ra.html
%% in the Organizations User
%% Guide.
-spec enable_organizations_root_sessions(aws_client:aws_client(), enable_organizations_root_sessions_request()) ->
    {ok, enable_organizations_root_sessions_response(), tuple()} |
    {error, any()} |
    {error, enable_organizations_root_sessions_errors(), tuple()}.
enable_organizations_root_sessions(Client, Input)
  when is_map(Client), is_map(Input) ->
    enable_organizations_root_sessions(Client, Input, []).

-spec enable_organizations_root_sessions(aws_client:aws_client(), enable_organizations_root_sessions_request(), proplists:proplist()) ->
    {ok, enable_organizations_root_sessions_response(), tuple()} |
    {error, any()} |
    {error, enable_organizations_root_sessions_errors(), tuple()}.
enable_organizations_root_sessions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"EnableOrganizationsRootSessions">>, Input, Options).

%% @doc Generates a credential report for the Amazon Web Services account.
%%
%% For more information about the
%% credential report, see Getting credential reports:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/credential-reports.html
%% in
%% the IAM User Guide.
-spec generate_credential_report(aws_client:aws_client(), #{}) ->
    {ok, generate_credential_report_response(), tuple()} |
    {error, any()} |
    {error, generate_credential_report_errors(), tuple()}.
generate_credential_report(Client, Input)
  when is_map(Client), is_map(Input) ->
    generate_credential_report(Client, Input, []).

-spec generate_credential_report(aws_client:aws_client(), #{}, proplists:proplist()) ->
    {ok, generate_credential_report_response(), tuple()} |
    {error, any()} |
    {error, generate_credential_report_errors(), tuple()}.
generate_credential_report(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GenerateCredentialReport">>, Input, Options).

%% @doc Generates a report for service last accessed data for Organizations.
%%
%% You can generate a
%% report for any entities (organization root, organizational unit, or
%% account) or policies
%% in your organization.
%%
%% To call this operation, you must be signed in using your Organizations
%% management account
%% credentials. You can use your long-term IAM user or root user credentials,
%% or temporary
%% credentials from assuming an IAM role. SCPs must be enabled for your
%% organization
%% root. You must have the required IAM and Organizations permissions. For
%% more information, see
%% Refining permissions using service last accessed data:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html
%% in the
%% IAM User Guide.
%%
%% You can generate a service last accessed data report for entities by
%% specifying only
%% the entity's path. This data includes a list of services that are
%% allowed by any service
%% control policies (SCPs) that apply to the entity.
%%
%% You can generate a service last accessed data report for a policy by
%% specifying an
%% entity's path and an optional Organizations policy ID. This data
%% includes a list of services that
%% are allowed by the specified SCP.
%%
%% For each service in both report types, the data includes the most recent
%% account
%% activity that the policy allows to account principals in the entity or the
%% entity's
%% children. For important information about the data, reporting period,
%% permissions
%% required, troubleshooting, and supported Regions see Reducing permissions
%% using
%% service last accessed data:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html
%% in the
%% IAM User Guide.
%%
%% The data includes all attempts to access Amazon Web Services, not just the
%% successful ones. This
%% includes all attempts that were made using the Amazon Web Services
%% Management Console, the Amazon Web Services API through any
%% of the SDKs, or any of the command line tools. An unexpected entry in the
%% service
%% last accessed data does not mean that an account has been compromised,
%% because the
%% request might have been denied. Refer to your CloudTrail logs as the
%% authoritative
%% source for information about all API calls and whether they were
%% successful or
%% denied access. For more information, see Logging IAM events with
%% CloudTrail:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/cloudtrail-integration.html
%% in the IAM User Guide.
%%
%% This operation returns a `JobId'. Use this parameter in the
%% ```
%% GetOrganizationsAccessReport:
%% https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetOrganizationsAccessReport.html
%% ''' operation to check the status of
%% the report generation. To check the status of this request, use the
%% `JobId'
%% parameter in the
%% ```
%% GetOrganizationsAccessReport:
%% https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetOrganizationsAccessReport.html
%% ''' operation and test the
%% `JobStatus' response parameter. When the job is complete, you can
%% retrieve the report.
%%
%% To generate a service last accessed data report for entities, specify an
%% entity path
%% without specifying the optional Organizations policy ID. The type of
%% entity that you specify
%% determines the data returned in the report.
%%
%% Root – When you specify the
%% organizations root as the entity, the resulting report lists all of the
%% services
%% allowed by SCPs that are attached to your root. For each service, the
%% report
%% includes data for all accounts in your organization except the
%% management account, because the management account is not limited by SCPs.
%%
%% OU – When you specify an
%% organizational unit (OU) as the entity, the resulting report lists all of
%% the
%% services allowed by SCPs that are attached to the OU and its parents. For
%% each
%% service, the report includes data for all accounts in the OU or its
%% children.
%% This data excludes the management account, because the management account
%% is not
%% limited by SCPs.
%%
%% management account – When you specify the
%% management account, the resulting report lists all Amazon Web Services
%% services, because the
%% management account is not limited by SCPs. For each service, the report
%% includes
%% data for only the management account.
%%
%% Account – When you specify another
%% account as the entity, the resulting report lists all of the services
%% allowed by
%% SCPs that are attached to the account and its parents. For each service,
%% the
%% report includes data for only the specified account.
%%
%% To generate a service last accessed data report for policies, specify an
%% entity path
%% and the optional Organizations policy ID. The type of entity that you
%% specify determines the data
%% returned for each service.
%%
%% Root – When you specify the root
%% entity and a policy ID, the resulting report lists all of the services
%% that are
%% allowed by the specified SCP. For each service, the report includes data
%% for all
%% accounts in your organization to which the SCP applies. This data excludes
%% the
%% management account, because the management account is not limited by SCPs.
%% If the
%% SCP is not attached to any entities in the organization, then the report
%% will
%% return a list of services with no data.
%%
%% OU – When you specify an OU entity and
%% a policy ID, the resulting report lists all of the services that are
%% allowed by
%% the specified SCP. For each service, the report includes data for all
%% accounts
%% in the OU or its children to which the SCP applies. This means that other
%% accounts outside the OU that are affected by the SCP might not be included
%% in
%% the data. This data excludes the management account, because the
%% management account is not limited by SCPs. If the SCP is not attached to
%% the OU
%% or one of its children, the report will return a list of services with no
%% data.
%%
%% management account – When you specify the
%% management account, the resulting report lists all Amazon Web Services
%% services, because the
%% management account is not limited by SCPs. If you specify a policy ID in
%% the CLI
%% or API, the policy is ignored. For each service, the report includes data
%% for
%% only the management account.
%%
%% Account – When you specify another
%% account entity and a policy ID, the resulting report lists all of the
%% services
%% that are allowed by the specified SCP. For each service, the report
%% includes
%% data for only the specified account. This means that other accounts in the
%% organization that are affected by the SCP might not be included in the
%% data. If
%% the SCP is not attached to the account, the report will return a list of
%% services with no data.
%%
%% Service last accessed data does not use other policy types when
%% determining
%% whether a principal could access a service. These other policy types
%% include
%% identity-based policies, resource-based policies, access control lists,
%% IAM
%% permissions boundaries, and STS assume role policies. It only applies SCP
%% logic.
%% For more about the evaluation of policy types, see Evaluating policies:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_evaluation-logic.html#policy-eval-basics
%% in the
%% IAM User Guide.
%%
%% For more information about service last accessed data, see Reducing policy
%% scope by
%% viewing user activity:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html
%% in the IAM User Guide.
-spec generate_organizations_access_report(aws_client:aws_client(), generate_organizations_access_report_request()) ->
    {ok, generate_organizations_access_report_response(), tuple()} |
    {error, any()} |
    {error, generate_organizations_access_report_errors(), tuple()}.
generate_organizations_access_report(Client, Input)
  when is_map(Client), is_map(Input) ->
    generate_organizations_access_report(Client, Input, []).

-spec generate_organizations_access_report(aws_client:aws_client(), generate_organizations_access_report_request(), proplists:proplist()) ->
    {ok, generate_organizations_access_report_response(), tuple()} |
    {error, any()} |
    {error, generate_organizations_access_report_errors(), tuple()}.
generate_organizations_access_report(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GenerateOrganizationsAccessReport">>, Input, Options).

%% @doc Generates a report that includes details about when an IAM resource
%% (user, group,
%% role, or policy) was last used in an attempt to access Amazon Web Services
%% services.
%%
%% Recent activity
%% usually appears within four hours. IAM reports activity for at least the
%% last 400
%% days, or less if your Region began supporting this feature within the last
%% year. For
%% more information, see Regions where data is tracked:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#access-advisor_tracking-period.
%% For more information about services and
%% actions for which action last accessed information is displayed, see IAM
%% action last accessed information services and actions:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor-action-last-accessed.html.
%%
%% The service last accessed data includes all attempts to access an Amazon
%% Web Services API, not
%% just the successful ones. This includes all attempts that were made using
%% the
%% Amazon Web Services Management Console, the Amazon Web Services API
%% through any of the SDKs, or any of the command line tools.
%% An unexpected entry in the service last accessed data does not mean that
%% your
%% account has been compromised, because the request might have been denied.
%% Refer to
%% your CloudTrail logs as the authoritative source for information about all
%% API calls
%% and whether they were successful or denied access. For more information,
%% see Logging
%% IAM events with CloudTrail:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/cloudtrail-integration.html
%% in the
%% IAM User Guide.
%%
%% The `GenerateServiceLastAccessedDetails' operation returns a
%% `JobId'. Use this parameter in the following operations to retrieve
%% the
%% following details from your report:
%%
%% GetServiceLastAccessedDetails:
%% https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetServiceLastAccessedDetails.html
%% – Use this operation for
%% users, groups, roles, or policies to list every Amazon Web Services
%% service that the resource
%% could access using permissions policies. For each service, the response
%% includes
%% information about the most recent access attempt.
%%
%% The `JobId' returned by
%% `GenerateServiceLastAccessedDetail' must be used by the same role
%% within a session, or by the same user when used to call
%% `GetServiceLastAccessedDetail'.
%%
%% GetServiceLastAccessedDetailsWithEntities:
%% https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetServiceLastAccessedDetailsWithEntities.html
%% – Use this
%% operation for groups and policies to list information about the associated
%% entities (users or roles) that attempted to access a specific Amazon Web
%% Services service.
%%
%% To check the status of the `GenerateServiceLastAccessedDetails'
%% request,
%% use the `JobId' parameter in the same operations and test the
%% `JobStatus' response parameter.
%%
%% For additional information about the permissions policies that allow an
%% identity
%% (user, group, or role) to access specific services, use the
%% ListPoliciesGrantingServiceAccess:
%% https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListPoliciesGrantingServiceAccess.html
%% operation.
%%
%% Service last accessed data does not use other policy types when
%% determining
%% whether a resource could access a service. These other policy types
%% include
%% resource-based policies, access control lists, Organizations policies, IAM
%% permissions
%% boundaries, and STS assume role policies. It only applies permissions
%% policy
%% logic. For more about the evaluation of policy types, see Evaluating
%% policies:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_evaluation-logic.html#policy-eval-basics
%% in the
%% IAM User Guide.
%%
%% For more information about service and action last accessed data, see
%% Reducing permissions using service last accessed data:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html
%% in the
%% IAM User Guide.
-spec generate_service_last_accessed_details(aws_client:aws_client(), generate_service_last_accessed_details_request()) ->
    {ok, generate_service_last_accessed_details_response(), tuple()} |
    {error, any()} |
    {error, generate_service_last_accessed_details_errors(), tuple()}.
generate_service_last_accessed_details(Client, Input)
  when is_map(Client), is_map(Input) ->
    generate_service_last_accessed_details(Client, Input, []).

-spec generate_service_last_accessed_details(aws_client:aws_client(), generate_service_last_accessed_details_request(), proplists:proplist()) ->
    {ok, generate_service_last_accessed_details_response(), tuple()} |
    {error, any()} |
    {error, generate_service_last_accessed_details_errors(), tuple()}.
generate_service_last_accessed_details(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GenerateServiceLastAccessedDetails">>, Input, Options).

%% @doc Retrieves information about when the specified access key was last
%% used.
%%
%% The
%% information includes the date and time of last use, along with the Amazon
%% Web Services service and
%% Region that were specified in the last request made with that key.
-spec get_access_key_last_used(aws_client:aws_client(), get_access_key_last_used_request()) ->
    {ok, get_access_key_last_used_response(), tuple()} |
    {error, any()}.
get_access_key_last_used(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_access_key_last_used(Client, Input, []).

-spec get_access_key_last_used(aws_client:aws_client(), get_access_key_last_used_request(), proplists:proplist()) ->
    {ok, get_access_key_last_used_response(), tuple()} |
    {error, any()}.
get_access_key_last_used(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAccessKeyLastUsed">>, Input, Options).

%% @doc Retrieves information about all IAM users, groups, roles, and
%% policies in your Amazon Web Services
%% account, including their relationships to one another.
%%
%% Use this operation to obtain a
%% snapshot of the configuration of IAM permissions (users, groups, roles,
%% and policies)
%% in your account.
%%
%% Policies returned by this operation are URL-encoded compliant
%% with RFC 3986: https://tools.ietf.org/html/rfc3986. You can use a URL
%% decoding method to convert the policy back to plain JSON text. For
%% example, if you use Java, you
%% can use the `decode' method of the `java.net.URLDecoder' utility
%% class in
%% the Java SDK. Other languages and SDKs provide similar functionality, and
%% some SDKs do this decoding
%% automatically.
%%
%% You can optionally filter the results using the `Filter' parameter.
%% You can
%% paginate the results using the `MaxItems' and `Marker'
%% parameters.
-spec get_account_authorization_details(aws_client:aws_client(), get_account_authorization_details_request()) ->
    {ok, get_account_authorization_details_response(), tuple()} |
    {error, any()} |
    {error, get_account_authorization_details_errors(), tuple()}.
get_account_authorization_details(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_account_authorization_details(Client, Input, []).

-spec get_account_authorization_details(aws_client:aws_client(), get_account_authorization_details_request(), proplists:proplist()) ->
    {ok, get_account_authorization_details_response(), tuple()} |
    {error, any()} |
    {error, get_account_authorization_details_errors(), tuple()}.
get_account_authorization_details(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAccountAuthorizationDetails">>, Input, Options).

%% @doc Retrieves the password policy for the Amazon Web Services account.
%%
%% This tells you the complexity
%% requirements and mandatory rotation periods for the IAM user passwords in
%% your account.
%% For more information about using a password policy, see Managing an IAM
%% password
%% policy:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_ManagingPasswordPolicies.html.
-spec get_account_password_policy(aws_client:aws_client(), #{}) ->
    {ok, get_account_password_policy_response(), tuple()} |
    {error, any()} |
    {error, get_account_password_policy_errors(), tuple()}.
get_account_password_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_account_password_policy(Client, Input, []).

-spec get_account_password_policy(aws_client:aws_client(), #{}, proplists:proplist()) ->
    {ok, get_account_password_policy_response(), tuple()} |
    {error, any()} |
    {error, get_account_password_policy_errors(), tuple()}.
get_account_password_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAccountPasswordPolicy">>, Input, Options).

%% @doc Retrieves information about IAM entity usage and IAM quotas in the
%% Amazon Web Services
%% account.
%%
%% For information about IAM quotas, see IAM and STS quotas:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html
%% in the
%% IAM User Guide.
-spec get_account_summary(aws_client:aws_client(), #{}) ->
    {ok, get_account_summary_response(), tuple()} |
    {error, any()} |
    {error, get_account_summary_errors(), tuple()}.
get_account_summary(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_account_summary(Client, Input, []).

-spec get_account_summary(aws_client:aws_client(), #{}, proplists:proplist()) ->
    {ok, get_account_summary_response(), tuple()} |
    {error, any()} |
    {error, get_account_summary_errors(), tuple()}.
get_account_summary(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAccountSummary">>, Input, Options).

%% @doc Gets a list of all of the context keys referenced in the input
%% policies.
%%
%% The policies
%% are supplied as a list of one or more strings. To get the context keys
%% from policies
%% associated with an IAM user, group, or role, use
%% GetContextKeysForPrincipalPolicy:
%% https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetContextKeysForPrincipalPolicy.html.
%%
%% Context keys are variables maintained by Amazon Web Services and its
%% services that provide details
%% about the context of an API query request. Context keys can be evaluated
%% by testing
%% against a value specified in an IAM policy. Use
%% `GetContextKeysForCustomPolicy' to understand what key names and
%% values
%% you must supply when you call SimulateCustomPolicy:
%% https://docs.aws.amazon.com/IAM/latest/APIReference/API_SimulateCustomPolicy.html.
%% Note that all parameters are shown in unencoded form
%% here for clarity but must be URL encoded to be included as a part of a
%% real HTML
%% request.
-spec get_context_keys_for_custom_policy(aws_client:aws_client(), get_context_keys_for_custom_policy_request()) ->
    {ok, get_context_keys_for_policy_response(), tuple()} |
    {error, any()} |
    {error, get_context_keys_for_custom_policy_errors(), tuple()}.
get_context_keys_for_custom_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_context_keys_for_custom_policy(Client, Input, []).

-spec get_context_keys_for_custom_policy(aws_client:aws_client(), get_context_keys_for_custom_policy_request(), proplists:proplist()) ->
    {ok, get_context_keys_for_policy_response(), tuple()} |
    {error, any()} |
    {error, get_context_keys_for_custom_policy_errors(), tuple()}.
get_context_keys_for_custom_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetContextKeysForCustomPolicy">>, Input, Options).

%% @doc Gets a list of all of the context keys referenced in all the IAM
%% policies that are
%% attached to the specified IAM entity.
%%
%% The entity can be an IAM user, group, or role.
%% If you specify a user, then the request also includes all of the policies
%% attached to
%% groups that the user is a member of.
%%
%% You can optionally include a list of one or more additional policies,
%% specified as
%% strings. If you want to include only a list of policies by string,
%% use GetContextKeysForCustomPolicy:
%% https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetContextKeysForCustomPolicy.html
%% instead.
%%
%% Note: This operation discloses information about the
%% permissions granted to other users. If you do not want users to see other
%% user's
%% permissions, then consider allowing them to use
%% GetContextKeysForCustomPolicy:
%% https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetContextKeysForCustomPolicy.html
%% instead.
%%
%% Context keys are variables maintained by Amazon Web Services and its
%% services that provide details
%% about the context of an API query request. Context keys can be evaluated
%% by testing
%% against a value in an IAM policy. Use GetContextKeysForPrincipalPolicy:
%% https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetContextKeysForPrincipalPolicy.html
%% to understand what key names and values
%% you must supply when you call SimulatePrincipalPolicy:
%% https://docs.aws.amazon.com/IAM/latest/APIReference/API_SimulatePrincipalPolicy.html.
-spec get_context_keys_for_principal_policy(aws_client:aws_client(), get_context_keys_for_principal_policy_request()) ->
    {ok, get_context_keys_for_policy_response(), tuple()} |
    {error, any()} |
    {error, get_context_keys_for_principal_policy_errors(), tuple()}.
get_context_keys_for_principal_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_context_keys_for_principal_policy(Client, Input, []).

-spec get_context_keys_for_principal_policy(aws_client:aws_client(), get_context_keys_for_principal_policy_request(), proplists:proplist()) ->
    {ok, get_context_keys_for_policy_response(), tuple()} |
    {error, any()} |
    {error, get_context_keys_for_principal_policy_errors(), tuple()}.
get_context_keys_for_principal_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetContextKeysForPrincipalPolicy">>, Input, Options).

%% @doc Retrieves a credential report for the Amazon Web Services account.
%%
%% For more information about the
%% credential report, see Getting credential reports:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/credential-reports.html
%% in
%% the IAM User Guide.
-spec get_credential_report(aws_client:aws_client(), #{}) ->
    {ok, get_credential_report_response(), tuple()} |
    {error, any()} |
    {error, get_credential_report_errors(), tuple()}.
get_credential_report(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_credential_report(Client, Input, []).

-spec get_credential_report(aws_client:aws_client(), #{}, proplists:proplist()) ->
    {ok, get_credential_report_response(), tuple()} |
    {error, any()} |
    {error, get_credential_report_errors(), tuple()}.
get_credential_report(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetCredentialReport">>, Input, Options).

%% @doc Returns a list of IAM users that are in the specified IAM group.
%%
%% You can paginate
%% the results using the `MaxItems' and `Marker' parameters.
-spec get_group(aws_client:aws_client(), get_group_request()) ->
    {ok, get_group_response(), tuple()} |
    {error, any()} |
    {error, get_group_errors(), tuple()}.
get_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_group(Client, Input, []).

-spec get_group(aws_client:aws_client(), get_group_request(), proplists:proplist()) ->
    {ok, get_group_response(), tuple()} |
    {error, any()} |
    {error, get_group_errors(), tuple()}.
get_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetGroup">>, Input, Options).

%% @doc Retrieves the specified inline policy document that is embedded in
%% the specified IAM
%% group.
%%
%% Policies returned by this operation are URL-encoded compliant
%% with RFC 3986: https://tools.ietf.org/html/rfc3986. You can use a URL
%% decoding method to convert the policy back to plain JSON text. For
%% example, if you use Java, you
%% can use the `decode' method of the `java.net.URLDecoder' utility
%% class in
%% the Java SDK. Other languages and SDKs provide similar functionality, and
%% some SDKs do this decoding
%% automatically.
%%
%% An IAM group can also have managed policies attached to it. To retrieve a
%% managed
%% policy document that is attached to a group, use GetPolicy:
%% https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetPolicy.html to
%% determine the
%% policy's default version, then use GetPolicyVersion:
%% https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetPolicyVersion.html
%% to
%% retrieve the policy document.
%%
%% For more information about policies, see Managed policies and inline
%% policies:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html
%% in the IAM User Guide.
-spec get_group_policy(aws_client:aws_client(), get_group_policy_request()) ->
    {ok, get_group_policy_response(), tuple()} |
    {error, any()} |
    {error, get_group_policy_errors(), tuple()}.
get_group_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_group_policy(Client, Input, []).

-spec get_group_policy(aws_client:aws_client(), get_group_policy_request(), proplists:proplist()) ->
    {ok, get_group_policy_response(), tuple()} |
    {error, any()} |
    {error, get_group_policy_errors(), tuple()}.
get_group_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetGroupPolicy">>, Input, Options).

%% @doc Retrieves information about the specified instance profile, including
%% the instance
%% profile's path, GUID, ARN, and role.
%%
%% For more information about instance profiles, see
%% Using
%% instance profiles:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use_switch-role-ec2_instance-profiles.html
%% in the IAM User Guide.
-spec get_instance_profile(aws_client:aws_client(), get_instance_profile_request()) ->
    {ok, get_instance_profile_response(), tuple()} |
    {error, any()} |
    {error, get_instance_profile_errors(), tuple()}.
get_instance_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_instance_profile(Client, Input, []).

-spec get_instance_profile(aws_client:aws_client(), get_instance_profile_request(), proplists:proplist()) ->
    {ok, get_instance_profile_response(), tuple()} |
    {error, any()} |
    {error, get_instance_profile_errors(), tuple()}.
get_instance_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetInstanceProfile">>, Input, Options).

%% @doc Retrieves the user name for the specified IAM user.
%%
%% A login profile is created when
%% you create a password for the user to access the Amazon Web Services
%% Management Console. If the user does not exist
%% or does not have a password, the operation returns a 404
%% (`NoSuchEntity')
%% error.
%%
%% If you create an IAM user with access to the console, the `CreateDate'
%% reflects the date you created the initial password for the user.
%%
%% If you create an IAM user with programmatic access, and then later add a
%% password
%% for the user to access the Amazon Web Services Management Console, the
%% `CreateDate' reflects the initial
%% password creation date. A user with programmatic access does not have a
%% login profile
%% unless you create a password for the user to access the Amazon Web
%% Services Management Console.
-spec get_login_profile(aws_client:aws_client(), get_login_profile_request()) ->
    {ok, get_login_profile_response(), tuple()} |
    {error, any()} |
    {error, get_login_profile_errors(), tuple()}.
get_login_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_login_profile(Client, Input, []).

-spec get_login_profile(aws_client:aws_client(), get_login_profile_request(), proplists:proplist()) ->
    {ok, get_login_profile_response(), tuple()} |
    {error, any()} |
    {error, get_login_profile_errors(), tuple()}.
get_login_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetLoginProfile">>, Input, Options).

%% @doc Retrieves information about an MFA device for a specified user.
-spec get_mfa_device(aws_client:aws_client(), get_mfa_device_request()) ->
    {ok, get_mfa_device_response(), tuple()} |
    {error, any()} |
    {error, get_mfa_device_errors(), tuple()}.
get_mfa_device(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_mfa_device(Client, Input, []).

-spec get_mfa_device(aws_client:aws_client(), get_mfa_device_request(), proplists:proplist()) ->
    {ok, get_mfa_device_response(), tuple()} |
    {error, any()} |
    {error, get_mfa_device_errors(), tuple()}.
get_mfa_device(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetMFADevice">>, Input, Options).

%% @doc Returns information about the specified OpenID Connect (OIDC)
%% provider resource object
%% in IAM.
-spec get_open_id_connect_provider(aws_client:aws_client(), get_open_id_connect_provider_request()) ->
    {ok, get_open_id_connect_provider_response(), tuple()} |
    {error, any()} |
    {error, get_open_id_connect_provider_errors(), tuple()}.
get_open_id_connect_provider(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_open_id_connect_provider(Client, Input, []).

-spec get_open_id_connect_provider(aws_client:aws_client(), get_open_id_connect_provider_request(), proplists:proplist()) ->
    {ok, get_open_id_connect_provider_response(), tuple()} |
    {error, any()} |
    {error, get_open_id_connect_provider_errors(), tuple()}.
get_open_id_connect_provider(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetOpenIDConnectProvider">>, Input, Options).

%% @doc Retrieves the service last accessed data report for Organizations
%% that was previously
%% generated using the
%% ```
%% GenerateOrganizationsAccessReport:
%% https://docs.aws.amazon.com/IAM/latest/APIReference/API_GenerateOrganizationsAccessReport.html
%% ''' operation.
%%
%% This operation
%% retrieves the status of your report job and the report contents.
%%
%% Depending on the parameters that you passed when you generated the report,
%% the data
%% returned could include different information. For details, see
%% GenerateOrganizationsAccessReport:
%% https://docs.aws.amazon.com/IAM/latest/APIReference/API_GenerateOrganizationsAccessReport.html.
%%
%% To call this operation, you must be signed in to the management account in
%% your
%% organization. SCPs must be enabled for your organization root. You must
%% have permissions
%% to perform this operation. For more information, see Refining permissions
%% using
%% service last accessed data:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html
%% in the
%% IAM User Guide.
%%
%% For each service that principals in an account (root user, IAM users, or
%% IAM roles)
%% could access using SCPs, the operation returns details about the most
%% recent access
%% attempt. If there was no attempt, the service is listed without details
%% about the most
%% recent attempt to access the service. If the operation fails, it returns
%% the reason that
%% it failed.
%%
%% By default, the list is sorted by service namespace.
-spec get_organizations_access_report(aws_client:aws_client(), get_organizations_access_report_request()) ->
    {ok, get_organizations_access_report_response(), tuple()} |
    {error, any()} |
    {error, get_organizations_access_report_errors(), tuple()}.
get_organizations_access_report(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_organizations_access_report(Client, Input, []).

-spec get_organizations_access_report(aws_client:aws_client(), get_organizations_access_report_request(), proplists:proplist()) ->
    {ok, get_organizations_access_report_response(), tuple()} |
    {error, any()} |
    {error, get_organizations_access_report_errors(), tuple()}.
get_organizations_access_report(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetOrganizationsAccessReport">>, Input, Options).

%% @doc Retrieves information about the specified managed policy, including
%% the policy's
%% default version and the total number of IAM users, groups, and roles to
%% which the
%% policy is attached.
%%
%% To retrieve the list of the specific users, groups, and roles that
%% the policy is attached to, use ListEntitiesForPolicy:
%% https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListEntitiesForPolicy.html.
%% This operation returns metadata about the policy. To
%% retrieve the actual policy document for a specific version of the policy,
%% use GetPolicyVersion:
%% https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetPolicyVersion.html.
%%
%% This operation retrieves information about managed policies. To retrieve
%% information
%% about an inline policy that is embedded with an IAM user, group, or role,
%% use GetUserPolicy:
%% https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetUserPolicy.html,
%% GetGroupPolicy:
%% https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetGroupPolicy.html,
%% or
%% GetRolePolicy:
%% https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetRolePolicy.html.
%%
%% For more information about policies, see Managed policies and inline
%% policies:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html
%% in the IAM User Guide.
-spec get_policy(aws_client:aws_client(), get_policy_request()) ->
    {ok, get_policy_response(), tuple()} |
    {error, any()} |
    {error, get_policy_errors(), tuple()}.
get_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_policy(Client, Input, []).

-spec get_policy(aws_client:aws_client(), get_policy_request(), proplists:proplist()) ->
    {ok, get_policy_response(), tuple()} |
    {error, any()} |
    {error, get_policy_errors(), tuple()}.
get_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetPolicy">>, Input, Options).

%% @doc Retrieves information about the specified version of the specified
%% managed policy,
%% including the policy document.
%%
%% Policies returned by this operation are URL-encoded compliant
%% with RFC 3986: https://tools.ietf.org/html/rfc3986. You can use a URL
%% decoding method to convert the policy back to plain JSON text. For
%% example, if you use Java, you
%% can use the `decode' method of the `java.net.URLDecoder' utility
%% class in
%% the Java SDK. Other languages and SDKs provide similar functionality, and
%% some SDKs do this decoding
%% automatically.
%%
%% To list the available versions for a policy, use ListPolicyVersions:
%% https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListPolicyVersions.html.
%%
%% This operation retrieves information about managed policies. To retrieve
%% information
%% about an inline policy that is embedded in a user, group, or role, use
%% GetUserPolicy:
%% https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetUserPolicy.html,
%% GetGroupPolicy:
%% https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetGroupPolicy.html,
%% or
%% GetRolePolicy:
%% https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetRolePolicy.html.
%%
%% For more information about the types of policies, see Managed policies and
%% inline
%% policies:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html
%% in the IAM User Guide.
%%
%% For more information about managed policy versions, see Versioning for
%% managed
%% policies:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html
%% in the IAM User Guide.
-spec get_policy_version(aws_client:aws_client(), get_policy_version_request()) ->
    {ok, get_policy_version_response(), tuple()} |
    {error, any()} |
    {error, get_policy_version_errors(), tuple()}.
get_policy_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_policy_version(Client, Input, []).

-spec get_policy_version(aws_client:aws_client(), get_policy_version_request(), proplists:proplist()) ->
    {ok, get_policy_version_response(), tuple()} |
    {error, any()} |
    {error, get_policy_version_errors(), tuple()}.
get_policy_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetPolicyVersion">>, Input, Options).

%% @doc Retrieves information about the specified role, including the
%% role's path, GUID, ARN,
%% and the role's trust policy that grants permission to assume the role.
%%
%% For more
%% information about roles, see IAM roles:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles.html in the
%% IAM User Guide.
%%
%% Policies returned by this operation are URL-encoded compliant
%% with RFC 3986: https://tools.ietf.org/html/rfc3986. You can use a URL
%% decoding method to convert the policy back to plain JSON text. For
%% example, if you use Java, you
%% can use the `decode' method of the `java.net.URLDecoder' utility
%% class in
%% the Java SDK. Other languages and SDKs provide similar functionality, and
%% some SDKs do this decoding
%% automatically.
-spec get_role(aws_client:aws_client(), get_role_request()) ->
    {ok, get_role_response(), tuple()} |
    {error, any()} |
    {error, get_role_errors(), tuple()}.
get_role(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_role(Client, Input, []).

-spec get_role(aws_client:aws_client(), get_role_request(), proplists:proplist()) ->
    {ok, get_role_response(), tuple()} |
    {error, any()} |
    {error, get_role_errors(), tuple()}.
get_role(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRole">>, Input, Options).

%% @doc Retrieves the specified inline policy document that is embedded with
%% the specified
%% IAM role.
%%
%% Policies returned by this operation are URL-encoded compliant
%% with RFC 3986: https://tools.ietf.org/html/rfc3986. You can use a URL
%% decoding method to convert the policy back to plain JSON text. For
%% example, if you use Java, you
%% can use the `decode' method of the `java.net.URLDecoder' utility
%% class in
%% the Java SDK. Other languages and SDKs provide similar functionality, and
%% some SDKs do this decoding
%% automatically.
%%
%% An IAM role can also have managed policies attached to it. To retrieve a
%% managed
%% policy document that is attached to a role, use GetPolicy:
%% https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetPolicy.html to
%% determine the
%% policy's default version, then use GetPolicyVersion:
%% https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetPolicyVersion.html
%% to
%% retrieve the policy document.
%%
%% For more information about policies, see Managed policies and inline
%% policies:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html
%% in the IAM User Guide.
%%
%% For more information about roles, see IAM roles:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles.html in the
%% IAM User Guide.
-spec get_role_policy(aws_client:aws_client(), get_role_policy_request()) ->
    {ok, get_role_policy_response(), tuple()} |
    {error, any()} |
    {error, get_role_policy_errors(), tuple()}.
get_role_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_role_policy(Client, Input, []).

-spec get_role_policy(aws_client:aws_client(), get_role_policy_request(), proplists:proplist()) ->
    {ok, get_role_policy_response(), tuple()} |
    {error, any()} |
    {error, get_role_policy_errors(), tuple()}.
get_role_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRolePolicy">>, Input, Options).

%% @doc Returns the SAML provider metadocument that was uploaded when the IAM
%% SAML provider
%% resource object was created or updated.
%%
%% This operation requires Signature Version 4:
%% https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html.
-spec get_saml_provider(aws_client:aws_client(), get_saml_provider_request()) ->
    {ok, get_saml_provider_response(), tuple()} |
    {error, any()} |
    {error, get_saml_provider_errors(), tuple()}.
get_saml_provider(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_saml_provider(Client, Input, []).

-spec get_saml_provider(aws_client:aws_client(), get_saml_provider_request(), proplists:proplist()) ->
    {ok, get_saml_provider_response(), tuple()} |
    {error, any()} |
    {error, get_saml_provider_errors(), tuple()}.
get_saml_provider(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSAMLProvider">>, Input, Options).

%% @doc Retrieves information about the specified server certificate stored
%% in IAM.
%%
%% For more information about working with server certificates, see Working
%% with server certificates:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html
%% in the IAM User Guide. This
%% topic includes a list of Amazon Web Services services that can use the
%% server certificates that you
%% manage with IAM.
-spec get_server_certificate(aws_client:aws_client(), get_server_certificate_request()) ->
    {ok, get_server_certificate_response(), tuple()} |
    {error, any()} |
    {error, get_server_certificate_errors(), tuple()}.
get_server_certificate(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_server_certificate(Client, Input, []).

-spec get_server_certificate(aws_client:aws_client(), get_server_certificate_request(), proplists:proplist()) ->
    {ok, get_server_certificate_response(), tuple()} |
    {error, any()} |
    {error, get_server_certificate_errors(), tuple()}.
get_server_certificate(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetServerCertificate">>, Input, Options).

%% @doc Retrieves a service last accessed report that was created using the
%% `GenerateServiceLastAccessedDetails' operation.
%%
%% You can use the
%% `JobId' parameter in `GetServiceLastAccessedDetails' to
%% retrieve the status of your report job. When the report is complete, you
%% can retrieve
%% the generated report. The report includes a list of Amazon Web Services
%% services that the resource
%% (user, group, role, or managed policy) can access.
%%
%% Service last accessed data does not use other policy types when
%% determining
%% whether a resource could access a service. These other policy types
%% include
%% resource-based policies, access control lists, Organizations policies, IAM
%% permissions
%% boundaries, and STS assume role policies. It only applies permissions
%% policy
%% logic. For more about the evaluation of policy types, see Evaluating
%% policies:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_evaluation-logic.html#policy-eval-basics
%% in the
%% IAM User Guide.
%%
%% For each service that the resource could access using permissions
%% policies, the
%% operation returns details about the most recent access attempt. If there
%% was no attempt,
%% the service is listed without details about the most recent attempt to
%% access the
%% service. If the operation fails, the `GetServiceLastAccessedDetails'
%% operation returns the reason that it failed.
%%
%% The `GetServiceLastAccessedDetails' operation returns a list of
%% services.
%% This list includes the number of entities that have attempted to access
%% the service and
%% the date and time of the last attempt. It also returns the ARN of the
%% following entity,
%% depending on the resource ARN that you used to generate the report:
%%
%% User – Returns the user ARN that you
%% used to generate the report
%%
%% Group – Returns the ARN of the group
%% member (user) that last attempted to access the service
%%
%% Role – Returns the role ARN that you
%% used to generate the report
%%
%% Policy – Returns the ARN of the user
%% or role that last used the policy to attempt to access the service
%%
%% By default, the list is sorted by service namespace.
%%
%% If you specified `ACTION_LEVEL' granularity when you generated the
%% report,
%% this operation returns service and action last accessed data. This
%% includes the most
%% recent access attempt for each tracked action within a service. Otherwise,
%% this
%% operation returns only service data.
%%
%% For more information about service and action last accessed data, see
%% Reducing permissions using service last accessed data:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html
%% in the
%% IAM User Guide.
-spec get_service_last_accessed_details(aws_client:aws_client(), get_service_last_accessed_details_request()) ->
    {ok, get_service_last_accessed_details_response(), tuple()} |
    {error, any()} |
    {error, get_service_last_accessed_details_errors(), tuple()}.
get_service_last_accessed_details(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_service_last_accessed_details(Client, Input, []).

-spec get_service_last_accessed_details(aws_client:aws_client(), get_service_last_accessed_details_request(), proplists:proplist()) ->
    {ok, get_service_last_accessed_details_response(), tuple()} |
    {error, any()} |
    {error, get_service_last_accessed_details_errors(), tuple()}.
get_service_last_accessed_details(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetServiceLastAccessedDetails">>, Input, Options).

%% @doc After you generate a group or policy report using the
%% `GenerateServiceLastAccessedDetails' operation, you can use the
%% `JobId' parameter in
%% `GetServiceLastAccessedDetailsWithEntities'.
%%
%% This operation retrieves the
%% status of your report job and a list of entities that could have used
%% group or policy
%% permissions to access the specified service.
%%
%% Group – For a group report, this
%% operation returns a list of users in the group that could have used the
%% group’s
%% policies in an attempt to access the service.
%%
%% Policy – For a policy report, this
%% operation returns a list of entities (users or roles) that could have used
%% the
%% policy in an attempt to access the service.
%%
%% You can also use this operation for user or role reports to retrieve
%% details about
%% those entities.
%%
%% If the operation fails, the
%% `GetServiceLastAccessedDetailsWithEntities'
%% operation returns the reason that it failed.
%%
%% By default, the list of associated entities is sorted by date, with the
%% most recent
%% access listed first.
-spec get_service_last_accessed_details_with_entities(aws_client:aws_client(), get_service_last_accessed_details_with_entities_request()) ->
    {ok, get_service_last_accessed_details_with_entities_response(), tuple()} |
    {error, any()} |
    {error, get_service_last_accessed_details_with_entities_errors(), tuple()}.
get_service_last_accessed_details_with_entities(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_service_last_accessed_details_with_entities(Client, Input, []).

-spec get_service_last_accessed_details_with_entities(aws_client:aws_client(), get_service_last_accessed_details_with_entities_request(), proplists:proplist()) ->
    {ok, get_service_last_accessed_details_with_entities_response(), tuple()} |
    {error, any()} |
    {error, get_service_last_accessed_details_with_entities_errors(), tuple()}.
get_service_last_accessed_details_with_entities(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetServiceLastAccessedDetailsWithEntities">>, Input, Options).

%% @doc Retrieves the status of your service-linked role deletion.
%%
%% After you use DeleteServiceLinkedRole:
%% https://docs.aws.amazon.com/IAM/latest/APIReference/API_DeleteServiceLinkedRole.html
%% to submit a service-linked role for deletion, you
%% can use the `DeletionTaskId' parameter in
%% `GetServiceLinkedRoleDeletionStatus' to check the status of the
%% deletion.
%% If the deletion fails, this operation returns the reason that it failed,
%% if that
%% information is returned by the service.
-spec get_service_linked_role_deletion_status(aws_client:aws_client(), get_service_linked_role_deletion_status_request()) ->
    {ok, get_service_linked_role_deletion_status_response(), tuple()} |
    {error, any()} |
    {error, get_service_linked_role_deletion_status_errors(), tuple()}.
get_service_linked_role_deletion_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_service_linked_role_deletion_status(Client, Input, []).

-spec get_service_linked_role_deletion_status(aws_client:aws_client(), get_service_linked_role_deletion_status_request(), proplists:proplist()) ->
    {ok, get_service_linked_role_deletion_status_response(), tuple()} |
    {error, any()} |
    {error, get_service_linked_role_deletion_status_errors(), tuple()}.
get_service_linked_role_deletion_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetServiceLinkedRoleDeletionStatus">>, Input, Options).

%% @doc Retrieves the specified SSH public key, including metadata about the
%% key.
%%
%% The SSH public key retrieved by this operation is used only for
%% authenticating the
%% associated IAM user to an CodeCommit repository. For more information
%% about using SSH keys
%% to authenticate to an CodeCommit repository, see Set up CodeCommit for SSH
%% connections:
%% https://docs.aws.amazon.com/codecommit/latest/userguide/setting-up-credentials-ssh.html
%% in the CodeCommit User Guide.
-spec get_ssh_public_key(aws_client:aws_client(), get_ssh_public_key_request()) ->
    {ok, get_ssh_public_key_response(), tuple()} |
    {error, any()} |
    {error, get_ssh_public_key_errors(), tuple()}.
get_ssh_public_key(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_ssh_public_key(Client, Input, []).

-spec get_ssh_public_key(aws_client:aws_client(), get_ssh_public_key_request(), proplists:proplist()) ->
    {ok, get_ssh_public_key_response(), tuple()} |
    {error, any()} |
    {error, get_ssh_public_key_errors(), tuple()}.
get_ssh_public_key(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSSHPublicKey">>, Input, Options).

%% @doc Retrieves information about the specified IAM user, including the
%% user's creation
%% date, path, unique ID, and ARN.
%%
%% If you do not specify a user name, IAM determines the user name implicitly
%% based on
%% the Amazon Web Services access key ID used to sign the request to this
%% operation.
-spec get_user(aws_client:aws_client(), get_user_request()) ->
    {ok, get_user_response(), tuple()} |
    {error, any()} |
    {error, get_user_errors(), tuple()}.
get_user(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_user(Client, Input, []).

-spec get_user(aws_client:aws_client(), get_user_request(), proplists:proplist()) ->
    {ok, get_user_response(), tuple()} |
    {error, any()} |
    {error, get_user_errors(), tuple()}.
get_user(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetUser">>, Input, Options).

%% @doc Retrieves the specified inline policy document that is embedded in
%% the specified IAM
%% user.
%%
%% Policies returned by this operation are URL-encoded compliant
%% with RFC 3986: https://tools.ietf.org/html/rfc3986. You can use a URL
%% decoding method to convert the policy back to plain JSON text. For
%% example, if you use Java, you
%% can use the `decode' method of the `java.net.URLDecoder' utility
%% class in
%% the Java SDK. Other languages and SDKs provide similar functionality, and
%% some SDKs do this decoding
%% automatically.
%%
%% An IAM user can also have managed policies attached to it. To retrieve a
%% managed
%% policy document that is attached to a user, use GetPolicy:
%% https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetPolicy.html to
%% determine the
%% policy's default version. Then use GetPolicyVersion:
%% https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetPolicyVersion.html
%% to
%% retrieve the policy document.
%%
%% For more information about policies, see Managed policies and inline
%% policies:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html
%% in the IAM User Guide.
-spec get_user_policy(aws_client:aws_client(), get_user_policy_request()) ->
    {ok, get_user_policy_response(), tuple()} |
    {error, any()} |
    {error, get_user_policy_errors(), tuple()}.
get_user_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_user_policy(Client, Input, []).

-spec get_user_policy(aws_client:aws_client(), get_user_policy_request(), proplists:proplist()) ->
    {ok, get_user_policy_response(), tuple()} |
    {error, any()} |
    {error, get_user_policy_errors(), tuple()}.
get_user_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetUserPolicy">>, Input, Options).

%% @doc Returns information about the access key IDs associated with the
%% specified IAM user.
%%
%% If there is none, the operation returns an empty list.
%%
%% Although each user is limited to a small number of keys, you can still
%% paginate the
%% results using the `MaxItems' and `Marker' parameters.
%%
%% If the `UserName' is not specified, the user name is determined
%% implicitly
%% based on the Amazon Web Services access key ID used to sign the request.
%% If a temporary access key is
%% used, then `UserName' is required. If a long-term key is assigned to
%% the
%% user, then `UserName' is not required.
%%
%% This operation works for access keys under the Amazon Web Services
%% account. If the Amazon Web Services account has
%% no associated users, the root user returns it's own access key IDs by
%% running this
%% command.
%%
%% To ensure the security of your Amazon Web Services account, the secret
%% access key is accessible
%% only during key and user creation.
-spec list_access_keys(aws_client:aws_client(), list_access_keys_request()) ->
    {ok, list_access_keys_response(), tuple()} |
    {error, any()} |
    {error, list_access_keys_errors(), tuple()}.
list_access_keys(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_access_keys(Client, Input, []).

-spec list_access_keys(aws_client:aws_client(), list_access_keys_request(), proplists:proplist()) ->
    {ok, list_access_keys_response(), tuple()} |
    {error, any()} |
    {error, list_access_keys_errors(), tuple()}.
list_access_keys(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAccessKeys">>, Input, Options).

%% @doc Lists the account alias associated with the Amazon Web Services
%% account (Note: you can have only
%% one).
%%
%% For information about using an Amazon Web Services account alias, see
%% Creating,
%% deleting, and listing an Amazon Web Services account alias:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/console_account-alias.html#CreateAccountAlias
%% in the
%% IAM User Guide.
-spec list_account_aliases(aws_client:aws_client(), list_account_aliases_request()) ->
    {ok, list_account_aliases_response(), tuple()} |
    {error, any()} |
    {error, list_account_aliases_errors(), tuple()}.
list_account_aliases(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_account_aliases(Client, Input, []).

-spec list_account_aliases(aws_client:aws_client(), list_account_aliases_request(), proplists:proplist()) ->
    {ok, list_account_aliases_response(), tuple()} |
    {error, any()} |
    {error, list_account_aliases_errors(), tuple()}.
list_account_aliases(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAccountAliases">>, Input, Options).

%% @doc Lists all managed policies that are attached to the specified IAM
%% group.
%%
%% An IAM group can also have inline policies embedded with it. To list the
%% inline
%% policies for a group, use ListGroupPolicies:
%% https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListGroupPolicies.html.
%% For information about policies, see Managed policies and inline
%% policies:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html
%% in the IAM User Guide.
%%
%% You can paginate the results using the `MaxItems' and `Marker'
%% parameters. You can use the `PathPrefix' parameter to limit the list
%% of
%% policies to only those matching the specified path prefix. If there are no
%% policies
%% attached to the specified group (or none that match the specified path
%% prefix), the
%% operation returns an empty list.
-spec list_attached_group_policies(aws_client:aws_client(), list_attached_group_policies_request()) ->
    {ok, list_attached_group_policies_response(), tuple()} |
    {error, any()} |
    {error, list_attached_group_policies_errors(), tuple()}.
list_attached_group_policies(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_attached_group_policies(Client, Input, []).

-spec list_attached_group_policies(aws_client:aws_client(), list_attached_group_policies_request(), proplists:proplist()) ->
    {ok, list_attached_group_policies_response(), tuple()} |
    {error, any()} |
    {error, list_attached_group_policies_errors(), tuple()}.
list_attached_group_policies(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAttachedGroupPolicies">>, Input, Options).

%% @doc Lists all managed policies that are attached to the specified IAM
%% role.
%%
%% An IAM role can also have inline policies embedded with it. To list the
%% inline
%% policies for a role, use ListRolePolicies:
%% https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListRolePolicies.html.
%% For information about policies, see Managed policies and inline
%% policies:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html
%% in the IAM User Guide.
%%
%% You can paginate the results using the `MaxItems' and `Marker'
%% parameters. You can use the `PathPrefix' parameter to limit the list
%% of
%% policies to only those matching the specified path prefix. If there are no
%% policies
%% attached to the specified role (or none that match the specified path
%% prefix), the
%% operation returns an empty list.
-spec list_attached_role_policies(aws_client:aws_client(), list_attached_role_policies_request()) ->
    {ok, list_attached_role_policies_response(), tuple()} |
    {error, any()} |
    {error, list_attached_role_policies_errors(), tuple()}.
list_attached_role_policies(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_attached_role_policies(Client, Input, []).

-spec list_attached_role_policies(aws_client:aws_client(), list_attached_role_policies_request(), proplists:proplist()) ->
    {ok, list_attached_role_policies_response(), tuple()} |
    {error, any()} |
    {error, list_attached_role_policies_errors(), tuple()}.
list_attached_role_policies(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAttachedRolePolicies">>, Input, Options).

%% @doc Lists all managed policies that are attached to the specified IAM
%% user.
%%
%% An IAM user can also have inline policies embedded with it. To list the
%% inline
%% policies for a user, use ListUserPolicies:
%% https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListUserPolicies.html.
%% For information about policies, see Managed policies and inline
%% policies:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html
%% in the IAM User Guide.
%%
%% You can paginate the results using the `MaxItems' and `Marker'
%% parameters. You can use the `PathPrefix' parameter to limit the list
%% of
%% policies to only those matching the specified path prefix. If there are no
%% policies
%% attached to the specified group (or none that match the specified path
%% prefix), the
%% operation returns an empty list.
-spec list_attached_user_policies(aws_client:aws_client(), list_attached_user_policies_request()) ->
    {ok, list_attached_user_policies_response(), tuple()} |
    {error, any()} |
    {error, list_attached_user_policies_errors(), tuple()}.
list_attached_user_policies(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_attached_user_policies(Client, Input, []).

-spec list_attached_user_policies(aws_client:aws_client(), list_attached_user_policies_request(), proplists:proplist()) ->
    {ok, list_attached_user_policies_response(), tuple()} |
    {error, any()} |
    {error, list_attached_user_policies_errors(), tuple()}.
list_attached_user_policies(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAttachedUserPolicies">>, Input, Options).

%% @doc Lists all IAM users, groups, and roles that the specified managed
%% policy is attached
%% to.
%%
%% You can use the optional `EntityFilter' parameter to limit the results
%% to a
%% particular type of entity (users, groups, or roles). For example, to list
%% only the roles
%% that are attached to the specified policy, set `EntityFilter' to
%% `Role'.
%%
%% You can paginate the results using the `MaxItems' and `Marker'
%% parameters.
-spec list_entities_for_policy(aws_client:aws_client(), list_entities_for_policy_request()) ->
    {ok, list_entities_for_policy_response(), tuple()} |
    {error, any()} |
    {error, list_entities_for_policy_errors(), tuple()}.
list_entities_for_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_entities_for_policy(Client, Input, []).

-spec list_entities_for_policy(aws_client:aws_client(), list_entities_for_policy_request(), proplists:proplist()) ->
    {ok, list_entities_for_policy_response(), tuple()} |
    {error, any()} |
    {error, list_entities_for_policy_errors(), tuple()}.
list_entities_for_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListEntitiesForPolicy">>, Input, Options).

%% @doc Lists the names of the inline policies that are embedded in the
%% specified IAM
%% group.
%%
%% An IAM group can also have managed policies attached to it. To list the
%% managed
%% policies that are attached to a group, use ListAttachedGroupPolicies:
%% https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListAttachedGroupPolicies.html.
%% For more information about policies, see Managed
%% policies and inline policies:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html
%% in the
%% IAM User Guide.
%%
%% You can paginate the results using the `MaxItems' and `Marker'
%% parameters. If there are no inline policies embedded with the specified
%% group, the
%% operation returns an empty list.
-spec list_group_policies(aws_client:aws_client(), list_group_policies_request()) ->
    {ok, list_group_policies_response(), tuple()} |
    {error, any()} |
    {error, list_group_policies_errors(), tuple()}.
list_group_policies(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_group_policies(Client, Input, []).

-spec list_group_policies(aws_client:aws_client(), list_group_policies_request(), proplists:proplist()) ->
    {ok, list_group_policies_response(), tuple()} |
    {error, any()} |
    {error, list_group_policies_errors(), tuple()}.
list_group_policies(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListGroupPolicies">>, Input, Options).

%% @doc Lists the IAM groups that have the specified path prefix.
%%
%% You can paginate the results using the `MaxItems' and `Marker'
%% parameters.
-spec list_groups(aws_client:aws_client(), list_groups_request()) ->
    {ok, list_groups_response(), tuple()} |
    {error, any()} |
    {error, list_groups_errors(), tuple()}.
list_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_groups(Client, Input, []).

-spec list_groups(aws_client:aws_client(), list_groups_request(), proplists:proplist()) ->
    {ok, list_groups_response(), tuple()} |
    {error, any()} |
    {error, list_groups_errors(), tuple()}.
list_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListGroups">>, Input, Options).

%% @doc Lists the IAM groups that the specified IAM user belongs to.
%%
%% You can paginate the results using the `MaxItems' and `Marker'
%% parameters.
-spec list_groups_for_user(aws_client:aws_client(), list_groups_for_user_request()) ->
    {ok, list_groups_for_user_response(), tuple()} |
    {error, any()} |
    {error, list_groups_for_user_errors(), tuple()}.
list_groups_for_user(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_groups_for_user(Client, Input, []).

-spec list_groups_for_user(aws_client:aws_client(), list_groups_for_user_request(), proplists:proplist()) ->
    {ok, list_groups_for_user_response(), tuple()} |
    {error, any()} |
    {error, list_groups_for_user_errors(), tuple()}.
list_groups_for_user(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListGroupsForUser">>, Input, Options).

%% @doc Lists the tags that are attached to the specified IAM instance
%% profile.
%%
%% The returned list of tags is sorted by tag key.
%% For more information about tagging, see Tagging IAM resources:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html in the
%% IAM User Guide.
-spec list_instance_profile_tags(aws_client:aws_client(), list_instance_profile_tags_request()) ->
    {ok, list_instance_profile_tags_response(), tuple()} |
    {error, any()} |
    {error, list_instance_profile_tags_errors(), tuple()}.
list_instance_profile_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_instance_profile_tags(Client, Input, []).

-spec list_instance_profile_tags(aws_client:aws_client(), list_instance_profile_tags_request(), proplists:proplist()) ->
    {ok, list_instance_profile_tags_response(), tuple()} |
    {error, any()} |
    {error, list_instance_profile_tags_errors(), tuple()}.
list_instance_profile_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListInstanceProfileTags">>, Input, Options).

%% @doc Lists the instance profiles that have the specified path prefix.
%%
%% If there are none,
%% the operation returns an empty list. For more information about instance
%% profiles, see
%% Using
%% instance profiles:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use_switch-role-ec2_instance-profiles.html
%% in the IAM User Guide.
%%
%% IAM resource-listing operations return a subset of the available
%% attributes for the resource. For example, this operation does not return
%% tags, even though they are an attribute of the returned object. To view
%% all of the information for an instance profile, see
%% GetInstanceProfile:
%% https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetInstanceProfile.html.
%%
%% You can paginate the results using the `MaxItems' and `Marker'
%% parameters.
-spec list_instance_profiles(aws_client:aws_client(), list_instance_profiles_request()) ->
    {ok, list_instance_profiles_response(), tuple()} |
    {error, any()} |
    {error, list_instance_profiles_errors(), tuple()}.
list_instance_profiles(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_instance_profiles(Client, Input, []).

-spec list_instance_profiles(aws_client:aws_client(), list_instance_profiles_request(), proplists:proplist()) ->
    {ok, list_instance_profiles_response(), tuple()} |
    {error, any()} |
    {error, list_instance_profiles_errors(), tuple()}.
list_instance_profiles(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListInstanceProfiles">>, Input, Options).

%% @doc Lists the instance profiles that have the specified associated IAM
%% role.
%%
%% If there
%% are none, the operation returns an empty list. For more information about
%% instance
%% profiles, go to Using
%% instance profiles:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use_switch-role-ec2_instance-profiles.html
%% in the IAM User Guide.
%%
%% You can paginate the results using the `MaxItems' and `Marker'
%% parameters.
-spec list_instance_profiles_for_role(aws_client:aws_client(), list_instance_profiles_for_role_request()) ->
    {ok, list_instance_profiles_for_role_response(), tuple()} |
    {error, any()} |
    {error, list_instance_profiles_for_role_errors(), tuple()}.
list_instance_profiles_for_role(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_instance_profiles_for_role(Client, Input, []).

-spec list_instance_profiles_for_role(aws_client:aws_client(), list_instance_profiles_for_role_request(), proplists:proplist()) ->
    {ok, list_instance_profiles_for_role_response(), tuple()} |
    {error, any()} |
    {error, list_instance_profiles_for_role_errors(), tuple()}.
list_instance_profiles_for_role(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListInstanceProfilesForRole">>, Input, Options).

%% @doc Lists the tags that are attached to the specified IAM virtual
%% multi-factor authentication (MFA) device.
%%
%% The returned list of tags is
%% sorted by tag key. For more information about tagging, see Tagging IAM
%% resources: https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html
%% in the
%% IAM User Guide.
-spec list_mfa_device_tags(aws_client:aws_client(), list_mfa_device_tags_request()) ->
    {ok, list_mfa_device_tags_response(), tuple()} |
    {error, any()} |
    {error, list_mfa_device_tags_errors(), tuple()}.
list_mfa_device_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_mfa_device_tags(Client, Input, []).

-spec list_mfa_device_tags(aws_client:aws_client(), list_mfa_device_tags_request(), proplists:proplist()) ->
    {ok, list_mfa_device_tags_response(), tuple()} |
    {error, any()} |
    {error, list_mfa_device_tags_errors(), tuple()}.
list_mfa_device_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListMFADeviceTags">>, Input, Options).

%% @doc Lists the MFA devices for an IAM user.
%%
%% If the request includes a IAM user name,
%% then this operation lists all the MFA devices associated with the
%% specified user. If you
%% do not specify a user name, IAM determines the user name implicitly based
%% on the Amazon Web Services
%% access key ID signing the request for this operation.
%%
%% You can paginate the results using the `MaxItems' and `Marker'
%% parameters.
-spec list_mfa_devices(aws_client:aws_client(), list_mfa_devices_request()) ->
    {ok, list_mfa_devices_response(), tuple()} |
    {error, any()} |
    {error, list_mfa_devices_errors(), tuple()}.
list_mfa_devices(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_mfa_devices(Client, Input, []).

-spec list_mfa_devices(aws_client:aws_client(), list_mfa_devices_request(), proplists:proplist()) ->
    {ok, list_mfa_devices_response(), tuple()} |
    {error, any()} |
    {error, list_mfa_devices_errors(), tuple()}.
list_mfa_devices(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListMFADevices">>, Input, Options).

%% @doc Lists the tags that are attached to the specified OpenID Connect
%% (OIDC)-compatible
%% identity provider.
%%
%% The returned list of tags is sorted by tag key. For more information, see
%% About web identity
%% federation:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_oidc.html.
%%
%% For more information about tagging, see Tagging IAM resources:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html in the
%% IAM User Guide.
-spec list_open_id_connect_provider_tags(aws_client:aws_client(), list_open_id_connect_provider_tags_request()) ->
    {ok, list_open_id_connect_provider_tags_response(), tuple()} |
    {error, any()} |
    {error, list_open_id_connect_provider_tags_errors(), tuple()}.
list_open_id_connect_provider_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_open_id_connect_provider_tags(Client, Input, []).

-spec list_open_id_connect_provider_tags(aws_client:aws_client(), list_open_id_connect_provider_tags_request(), proplists:proplist()) ->
    {ok, list_open_id_connect_provider_tags_response(), tuple()} |
    {error, any()} |
    {error, list_open_id_connect_provider_tags_errors(), tuple()}.
list_open_id_connect_provider_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListOpenIDConnectProviderTags">>, Input, Options).

%% @doc Lists information about the IAM OpenID Connect (OIDC) provider
%% resource objects
%% defined in the Amazon Web Services account.
%%
%% IAM resource-listing operations return a subset of the available
%% attributes for the resource. For example, this operation does not return
%% tags, even though they are an attribute of the returned object. To view
%% all of the information for an OIDC provider, see GetOpenIDConnectProvider:
%% https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetOpenIDConnectProvider.html.
-spec list_open_id_connect_providers(aws_client:aws_client(), list_open_id_connect_providers_request()) ->
    {ok, list_open_id_connect_providers_response(), tuple()} |
    {error, any()} |
    {error, list_open_id_connect_providers_errors(), tuple()}.
list_open_id_connect_providers(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_open_id_connect_providers(Client, Input, []).

-spec list_open_id_connect_providers(aws_client:aws_client(), list_open_id_connect_providers_request(), proplists:proplist()) ->
    {ok, list_open_id_connect_providers_response(), tuple()} |
    {error, any()} |
    {error, list_open_id_connect_providers_errors(), tuple()}.
list_open_id_connect_providers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListOpenIDConnectProviders">>, Input, Options).

%% @doc Lists the centralized root access features enabled for your
%% organization.
%%
%% For more
%% information, see Centrally manage root access for member accounts:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_root-user.html#id_root-user-access-management.
-spec list_organizations_features(aws_client:aws_client(), list_organizations_features_request()) ->
    {ok, list_organizations_features_response(), tuple()} |
    {error, any()} |
    {error, list_organizations_features_errors(), tuple()}.
list_organizations_features(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_organizations_features(Client, Input, []).

-spec list_organizations_features(aws_client:aws_client(), list_organizations_features_request(), proplists:proplist()) ->
    {ok, list_organizations_features_response(), tuple()} |
    {error, any()} |
    {error, list_organizations_features_errors(), tuple()}.
list_organizations_features(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListOrganizationsFeatures">>, Input, Options).

%% @doc Lists all the managed policies that are available in your Amazon Web
%% Services account, including
%% your own customer-defined managed policies and all Amazon Web Services
%% managed policies.
%%
%% You can filter the list of policies that is returned using the optional
%% `OnlyAttached', `Scope', and `PathPrefix'
%% parameters. For example, to list only the customer managed policies in
%% your Amazon Web Services
%% account, set `Scope' to `Local'. To list only Amazon Web Services
%% managed
%% policies, set `Scope' to `AWS'.
%%
%% You can paginate the results using the `MaxItems' and `Marker'
%% parameters.
%%
%% For more information about managed policies, see Managed policies and
%% inline
%% policies:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html
%% in the IAM User Guide.
%%
%% IAM resource-listing operations return a subset of the available
%% attributes for the resource. For example, this operation does not return
%% tags, even though they are an attribute of the returned object. To view
%% all of the information for a customer manged policy, see
%% GetPolicy:
%% https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetPolicy.html.
-spec list_policies(aws_client:aws_client(), list_policies_request()) ->
    {ok, list_policies_response(), tuple()} |
    {error, any()} |
    {error, list_policies_errors(), tuple()}.
list_policies(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_policies(Client, Input, []).

-spec list_policies(aws_client:aws_client(), list_policies_request(), proplists:proplist()) ->
    {ok, list_policies_response(), tuple()} |
    {error, any()} |
    {error, list_policies_errors(), tuple()}.
list_policies(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPolicies">>, Input, Options).

%% @doc Retrieves a list of policies that the IAM identity (user, group, or
%% role) can use to
%% access each specified service.
%%
%% This operation does not use other policy types when determining whether a
%% resource
%% could access a service. These other policy types include resource-based
%% policies,
%% access control lists, Organizations policies, IAM permissions boundaries,
%% and STS
%% assume role policies. It only applies permissions policy logic. For more
%% about the
%% evaluation of policy types, see Evaluating policies:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_evaluation-logic.html#policy-eval-basics
%% in the
%% IAM User Guide.
%%
%% The list of policies returned by the operation depends on the ARN of the
%% identity that
%% you provide.
%%
%% User – The list of policies includes
%% the managed and inline policies that are attached to the user directly.
%% The list
%% also includes any additional managed and inline policies that are attached
%% to
%% the group to which the user belongs.
%%
%% Group – The list of policies includes
%% only the managed and inline policies that are attached to the group
%% directly.
%% Policies that are attached to the group’s user are not included.
%%
%% Role – The list of policies includes
%% only the managed and inline policies that are attached to the role.
%%
%% For each managed policy, this operation returns the ARN and policy name.
%% For each
%% inline policy, it returns the policy name and the entity to which it is
%% attached. Inline
%% policies do not have an ARN. For more information about these policy
%% types, see Managed policies and inline policies:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_managed-vs-inline.html
%% in the
%% IAM User Guide.
%%
%% Policies that are attached to users and roles as permissions boundaries
%% are not
%% returned. To view which managed policy is currently used to set the
%% permissions boundary
%% for a user or role, use the GetUser:
%% https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetUser.html or
%% GetRole:
%% https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetRole.html
%% operations.
-spec list_policies_granting_service_access(aws_client:aws_client(), list_policies_granting_service_access_request()) ->
    {ok, list_policies_granting_service_access_response(), tuple()} |
    {error, any()} |
    {error, list_policies_granting_service_access_errors(), tuple()}.
list_policies_granting_service_access(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_policies_granting_service_access(Client, Input, []).

-spec list_policies_granting_service_access(aws_client:aws_client(), list_policies_granting_service_access_request(), proplists:proplist()) ->
    {ok, list_policies_granting_service_access_response(), tuple()} |
    {error, any()} |
    {error, list_policies_granting_service_access_errors(), tuple()}.
list_policies_granting_service_access(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPoliciesGrantingServiceAccess">>, Input, Options).

%% @doc Lists the tags that are attached to the specified IAM customer
%% managed policy.
%%
%% The returned list of tags is sorted by tag key. For more information about
%% tagging, see Tagging IAM resources:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html in the
%% IAM User Guide.
-spec list_policy_tags(aws_client:aws_client(), list_policy_tags_request()) ->
    {ok, list_policy_tags_response(), tuple()} |
    {error, any()} |
    {error, list_policy_tags_errors(), tuple()}.
list_policy_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_policy_tags(Client, Input, []).

-spec list_policy_tags(aws_client:aws_client(), list_policy_tags_request(), proplists:proplist()) ->
    {ok, list_policy_tags_response(), tuple()} |
    {error, any()} |
    {error, list_policy_tags_errors(), tuple()}.
list_policy_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPolicyTags">>, Input, Options).

%% @doc Lists information about the versions of the specified managed policy,
%% including the
%% version that is currently set as the policy's default version.
%%
%% For more information about managed policies, see Managed policies and
%% inline
%% policies:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html
%% in the IAM User Guide.
-spec list_policy_versions(aws_client:aws_client(), list_policy_versions_request()) ->
    {ok, list_policy_versions_response(), tuple()} |
    {error, any()} |
    {error, list_policy_versions_errors(), tuple()}.
list_policy_versions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_policy_versions(Client, Input, []).

-spec list_policy_versions(aws_client:aws_client(), list_policy_versions_request(), proplists:proplist()) ->
    {ok, list_policy_versions_response(), tuple()} |
    {error, any()} |
    {error, list_policy_versions_errors(), tuple()}.
list_policy_versions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPolicyVersions">>, Input, Options).

%% @doc Lists the names of the inline policies that are embedded in the
%% specified IAM
%% role.
%%
%% An IAM role can also have managed policies attached to it. To list the
%% managed
%% policies that are attached to a role, use ListAttachedRolePolicies:
%% https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListAttachedRolePolicies.html.
%% For more information about policies, see Managed
%% policies and inline policies:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html
%% in the
%% IAM User Guide.
%%
%% You can paginate the results using the `MaxItems' and `Marker'
%% parameters. If there are no inline policies embedded with the specified
%% role, the
%% operation returns an empty list.
-spec list_role_policies(aws_client:aws_client(), list_role_policies_request()) ->
    {ok, list_role_policies_response(), tuple()} |
    {error, any()} |
    {error, list_role_policies_errors(), tuple()}.
list_role_policies(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_role_policies(Client, Input, []).

-spec list_role_policies(aws_client:aws_client(), list_role_policies_request(), proplists:proplist()) ->
    {ok, list_role_policies_response(), tuple()} |
    {error, any()} |
    {error, list_role_policies_errors(), tuple()}.
list_role_policies(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListRolePolicies">>, Input, Options).

%% @doc Lists the tags that are attached to the specified role.
%%
%% The returned list of tags is
%% sorted by tag key. For more information about tagging, see Tagging IAM
%% resources: https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html
%% in the
%% IAM User Guide.
-spec list_role_tags(aws_client:aws_client(), list_role_tags_request()) ->
    {ok, list_role_tags_response(), tuple()} |
    {error, any()} |
    {error, list_role_tags_errors(), tuple()}.
list_role_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_role_tags(Client, Input, []).

-spec list_role_tags(aws_client:aws_client(), list_role_tags_request(), proplists:proplist()) ->
    {ok, list_role_tags_response(), tuple()} |
    {error, any()} |
    {error, list_role_tags_errors(), tuple()}.
list_role_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListRoleTags">>, Input, Options).

%% @doc Lists the IAM roles that have the specified path prefix.
%%
%% If there are none, the
%% operation returns an empty list. For more information about roles, see IAM
%% roles: https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles.html in
%% the
%% IAM User Guide.
%%
%% IAM resource-listing operations return a subset of the available
%% attributes for the resource. This operation does not return the following
%% attributes, even though they are an attribute of the returned object:
%%
%% PermissionsBoundary
%%
%% RoleLastUsed
%%
%% Tags
%%
%% To view all of the information for a role, see GetRole:
%% https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetRole.html.
%%
%% You can paginate the results using the `MaxItems' and `Marker'
%% parameters.
-spec list_roles(aws_client:aws_client(), list_roles_request()) ->
    {ok, list_roles_response(), tuple()} |
    {error, any()} |
    {error, list_roles_errors(), tuple()}.
list_roles(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_roles(Client, Input, []).

-spec list_roles(aws_client:aws_client(), list_roles_request(), proplists:proplist()) ->
    {ok, list_roles_response(), tuple()} |
    {error, any()} |
    {error, list_roles_errors(), tuple()}.
list_roles(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListRoles">>, Input, Options).

%% @doc Lists the tags that are attached to the specified Security Assertion
%% Markup Language
%% (SAML) identity provider.
%%
%% The returned list of tags is sorted by tag key. For more information, see
%% About SAML 2.0-based
%% federation:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_saml.html.
%%
%% For more information about tagging, see Tagging IAM resources:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html in the
%% IAM User Guide.
-spec list_saml_provider_tags(aws_client:aws_client(), list_saml_provider_tags_request()) ->
    {ok, list_saml_provider_tags_response(), tuple()} |
    {error, any()} |
    {error, list_saml_provider_tags_errors(), tuple()}.
list_saml_provider_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_saml_provider_tags(Client, Input, []).

-spec list_saml_provider_tags(aws_client:aws_client(), list_saml_provider_tags_request(), proplists:proplist()) ->
    {ok, list_saml_provider_tags_response(), tuple()} |
    {error, any()} |
    {error, list_saml_provider_tags_errors(), tuple()}.
list_saml_provider_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListSAMLProviderTags">>, Input, Options).

%% @doc Lists the SAML provider resource objects defined in IAM in the
%% account.
%%
%% IAM resource-listing operations return a subset of the available
%% attributes for the resource. For example, this operation does not return
%% tags, even though they are an attribute of the returned object. To view
%% all of the information for a SAML provider, see GetSAMLProvider:
%% https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetSAMLProvider.html.
%%
%% This operation requires Signature Version 4:
%% https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html.
-spec list_saml_providers(aws_client:aws_client(), list_saml_providers_request()) ->
    {ok, list_saml_providers_response(), tuple()} |
    {error, any()} |
    {error, list_saml_providers_errors(), tuple()}.
list_saml_providers(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_saml_providers(Client, Input, []).

-spec list_saml_providers(aws_client:aws_client(), list_saml_providers_request(), proplists:proplist()) ->
    {ok, list_saml_providers_response(), tuple()} |
    {error, any()} |
    {error, list_saml_providers_errors(), tuple()}.
list_saml_providers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListSAMLProviders">>, Input, Options).

%% @doc Lists the tags that are attached to the specified IAM server
%% certificate.
%%
%% The
%% returned list of tags is sorted by tag key. For more information about
%% tagging, see Tagging IAM resources:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html in the
%% IAM User Guide.
%%
%% For certificates in a Region supported by Certificate Manager (ACM), we
%% recommend that you don't use IAM server certificates. Instead, use ACM
%% to provision,
%% manage, and deploy your server certificates. For more information about
%% IAM server
%% certificates, Working with server
%% certificates:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html
%% in the IAM User Guide.
-spec list_server_certificate_tags(aws_client:aws_client(), list_server_certificate_tags_request()) ->
    {ok, list_server_certificate_tags_response(), tuple()} |
    {error, any()} |
    {error, list_server_certificate_tags_errors(), tuple()}.
list_server_certificate_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_server_certificate_tags(Client, Input, []).

-spec list_server_certificate_tags(aws_client:aws_client(), list_server_certificate_tags_request(), proplists:proplist()) ->
    {ok, list_server_certificate_tags_response(), tuple()} |
    {error, any()} |
    {error, list_server_certificate_tags_errors(), tuple()}.
list_server_certificate_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListServerCertificateTags">>, Input, Options).

%% @doc Lists the server certificates stored in IAM that have the specified
%% path prefix.
%%
%% If
%% none exist, the operation returns an empty list.
%%
%% You can paginate the results using the `MaxItems' and `Marker'
%% parameters.
%%
%% For more information about working with server certificates, see Working
%% with server certificates:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html
%% in the IAM User Guide. This
%% topic also includes a list of Amazon Web Services services that can use
%% the server certificates that
%% you manage with IAM.
%%
%% IAM resource-listing operations return a subset of the available
%% attributes for the resource. For example, this operation does not return
%% tags, even though they are an attribute of the returned object. To view
%% all of the information for a servercertificate, see
%% GetServerCertificate:
%% https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetServerCertificate.html.
-spec list_server_certificates(aws_client:aws_client(), list_server_certificates_request()) ->
    {ok, list_server_certificates_response(), tuple()} |
    {error, any()} |
    {error, list_server_certificates_errors(), tuple()}.
list_server_certificates(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_server_certificates(Client, Input, []).

-spec list_server_certificates(aws_client:aws_client(), list_server_certificates_request(), proplists:proplist()) ->
    {ok, list_server_certificates_response(), tuple()} |
    {error, any()} |
    {error, list_server_certificates_errors(), tuple()}.
list_server_certificates(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListServerCertificates">>, Input, Options).

%% @doc Returns information about the service-specific credentials associated
%% with the
%% specified IAM user.
%%
%% If none exists, the operation returns an empty list. The
%% service-specific credentials returned by this operation are used only for
%% authenticating
%% the IAM user to a specific service. For more information about using
%% service-specific
%% credentials to authenticate to an Amazon Web Services service, see Set up
%% service-specific credentials:
%% https://docs.aws.amazon.com/codecommit/latest/userguide/setting-up-gc.html
%% in the CodeCommit User Guide.
-spec list_service_specific_credentials(aws_client:aws_client(), list_service_specific_credentials_request()) ->
    {ok, list_service_specific_credentials_response(), tuple()} |
    {error, any()} |
    {error, list_service_specific_credentials_errors(), tuple()}.
list_service_specific_credentials(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_service_specific_credentials(Client, Input, []).

-spec list_service_specific_credentials(aws_client:aws_client(), list_service_specific_credentials_request(), proplists:proplist()) ->
    {ok, list_service_specific_credentials_response(), tuple()} |
    {error, any()} |
    {error, list_service_specific_credentials_errors(), tuple()}.
list_service_specific_credentials(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListServiceSpecificCredentials">>, Input, Options).

%% @doc Returns information about the signing certificates associated with
%% the specified IAM
%% user.
%%
%% If none exists, the operation returns an empty list.
%%
%% Although each user is limited to a small number of signing certificates,
%% you can still
%% paginate the results using the `MaxItems' and `Marker'
%% parameters.
%%
%% If the `UserName' field is not specified, the user name is determined
%% implicitly based on the Amazon Web Services access key ID used to sign the
%% request for this operation.
%% This operation works for access keys under the Amazon Web Services
%% account. Consequently, you can use
%% this operation to manage Amazon Web Services account root user credentials
%% even if the Amazon Web Services account has no
%% associated users.
-spec list_signing_certificates(aws_client:aws_client(), list_signing_certificates_request()) ->
    {ok, list_signing_certificates_response(), tuple()} |
    {error, any()} |
    {error, list_signing_certificates_errors(), tuple()}.
list_signing_certificates(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_signing_certificates(Client, Input, []).

-spec list_signing_certificates(aws_client:aws_client(), list_signing_certificates_request(), proplists:proplist()) ->
    {ok, list_signing_certificates_response(), tuple()} |
    {error, any()} |
    {error, list_signing_certificates_errors(), tuple()}.
list_signing_certificates(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListSigningCertificates">>, Input, Options).

%% @doc Returns information about the SSH public keys associated with the
%% specified IAM
%% user.
%%
%% If none exists, the operation returns an empty list.
%%
%% The SSH public keys returned by this operation are used only for
%% authenticating the
%% IAM user to an CodeCommit repository. For more information about using SSH
%% keys to
%% authenticate to an CodeCommit repository, see Set up CodeCommit for
%% SSH connections:
%% https://docs.aws.amazon.com/codecommit/latest/userguide/setting-up-credentials-ssh.html
%% in the CodeCommit User Guide.
%%
%% Although each user is limited to a small number of keys, you can still
%% paginate the
%% results using the `MaxItems' and `Marker' parameters.
-spec list_ssh_public_keys(aws_client:aws_client(), list_ssh_public_keys_request()) ->
    {ok, list_ssh_public_keys_response(), tuple()} |
    {error, any()} |
    {error, list_ssh_public_keys_errors(), tuple()}.
list_ssh_public_keys(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_ssh_public_keys(Client, Input, []).

-spec list_ssh_public_keys(aws_client:aws_client(), list_ssh_public_keys_request(), proplists:proplist()) ->
    {ok, list_ssh_public_keys_response(), tuple()} |
    {error, any()} |
    {error, list_ssh_public_keys_errors(), tuple()}.
list_ssh_public_keys(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListSSHPublicKeys">>, Input, Options).

%% @doc Lists the names of the inline policies embedded in the specified IAM
%% user.
%%
%% An IAM user can also have managed policies attached to it. To list the
%% managed
%% policies that are attached to a user, use ListAttachedUserPolicies:
%% https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListAttachedUserPolicies.html.
%% For more information about policies, see Managed
%% policies and inline policies:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html
%% in the
%% IAM User Guide.
%%
%% You can paginate the results using the `MaxItems' and `Marker'
%% parameters. If there are no inline policies embedded with the specified
%% user, the
%% operation returns an empty list.
-spec list_user_policies(aws_client:aws_client(), list_user_policies_request()) ->
    {ok, list_user_policies_response(), tuple()} |
    {error, any()} |
    {error, list_user_policies_errors(), tuple()}.
list_user_policies(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_user_policies(Client, Input, []).

-spec list_user_policies(aws_client:aws_client(), list_user_policies_request(), proplists:proplist()) ->
    {ok, list_user_policies_response(), tuple()} |
    {error, any()} |
    {error, list_user_policies_errors(), tuple()}.
list_user_policies(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListUserPolicies">>, Input, Options).

%% @doc Lists the tags that are attached to the specified IAM user.
%%
%% The returned list of tags is sorted by tag key. For more information about
%% tagging, see Tagging IAM resources:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html in the
%% IAM User Guide.
-spec list_user_tags(aws_client:aws_client(), list_user_tags_request()) ->
    {ok, list_user_tags_response(), tuple()} |
    {error, any()} |
    {error, list_user_tags_errors(), tuple()}.
list_user_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_user_tags(Client, Input, []).

-spec list_user_tags(aws_client:aws_client(), list_user_tags_request(), proplists:proplist()) ->
    {ok, list_user_tags_response(), tuple()} |
    {error, any()} |
    {error, list_user_tags_errors(), tuple()}.
list_user_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListUserTags">>, Input, Options).

%% @doc Lists the IAM users that have the specified path prefix.
%%
%% If no path prefix is
%% specified, the operation returns all users in the Amazon Web Services
%% account. If there are none, the
%% operation returns an empty list.
%%
%% IAM resource-listing operations return a subset of the available
%% attributes for the resource. This operation does not return the following
%% attributes, even though they are an attribute of the returned object:
%%
%% PermissionsBoundary
%%
%% Tags
%%
%% To view all of the information for a user, see GetUser:
%% https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetUser.html.
%%
%% You can paginate the results using the `MaxItems' and `Marker'
%% parameters.
-spec list_users(aws_client:aws_client(), list_users_request()) ->
    {ok, list_users_response(), tuple()} |
    {error, any()} |
    {error, list_users_errors(), tuple()}.
list_users(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_users(Client, Input, []).

-spec list_users(aws_client:aws_client(), list_users_request(), proplists:proplist()) ->
    {ok, list_users_response(), tuple()} |
    {error, any()} |
    {error, list_users_errors(), tuple()}.
list_users(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListUsers">>, Input, Options).

%% @doc Lists the virtual MFA devices defined in the Amazon Web Services
%% account by assignment status.
%%
%% If
%% you do not specify an assignment status, the operation returns a list of
%% all virtual MFA
%% devices. Assignment status can be `Assigned', `Unassigned', or
%% `Any'.
%%
%% IAM resource-listing operations return a subset of the available
%% attributes for the resource. For example, this operation does not return
%% tags, even though they are an attribute of the returned object. To view
%% tag information for a virtual MFA device, see ListMFADeviceTags:
%% https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListMFADeviceTags.html.
%%
%% You can paginate the results using the `MaxItems' and `Marker'
%% parameters.
-spec list_virtual_mfa_devices(aws_client:aws_client(), list_virtual_mfa_devices_request()) ->
    {ok, list_virtual_mfa_devices_response(), tuple()} |
    {error, any()}.
list_virtual_mfa_devices(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_virtual_mfa_devices(Client, Input, []).

-spec list_virtual_mfa_devices(aws_client:aws_client(), list_virtual_mfa_devices_request(), proplists:proplist()) ->
    {ok, list_virtual_mfa_devices_response(), tuple()} |
    {error, any()}.
list_virtual_mfa_devices(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListVirtualMFADevices">>, Input, Options).

%% @doc Adds or updates an inline policy document that is embedded in the
%% specified IAM
%% group.
%%
%% A user can also have managed policies attached to it. To attach a managed
%% policy to a
%% group, use
%% `AttachGroupPolicy'
%% :
%% https://docs.aws.amazon.com/IAM/latest/APIReference/API_AttachGroupPolicy.html.
%% To create a new managed policy, use
%%
%% `CreatePolicy'
%% :
%% https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreatePolicy.html.
%% For information about policies, see Managed
%% policies and inline policies:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html
%% in the
%% IAM User Guide.
%%
%% For information about the maximum number of inline policies that you can
%% embed in a
%% group, see IAM and STS quotas:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html
%% in the IAM User Guide.
%%
%% Because policy documents can be large, you should use POST rather than GET
%% when
%% calling `PutGroupPolicy'. For general information about using the
%% Query
%% API with IAM, see Making query requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/IAM_UsingQueryAPI.html in
%% the
%% IAM User Guide.
-spec put_group_policy(aws_client:aws_client(), put_group_policy_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_group_policy_errors(), tuple()}.
put_group_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_group_policy(Client, Input, []).

-spec put_group_policy(aws_client:aws_client(), put_group_policy_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_group_policy_errors(), tuple()}.
put_group_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutGroupPolicy">>, Input, Options).

%% @doc Adds or updates the policy that is specified as the IAM role's
%% permissions boundary.
%%
%% You can use an Amazon Web Services managed policy or a customer managed
%% policy to set the boundary for
%% a role. Use the boundary to control the maximum permissions that the role
%% can have.
%% Setting a permissions boundary is an advanced feature that can affect the
%% permissions
%% for the role.
%%
%% You cannot set the boundary for a service-linked role.
%%
%% Policies used as permissions boundaries do not provide permissions. You
%% must also
%% attach a permissions policy to the role. To learn how the effective
%% permissions for
%% a role are evaluated, see IAM JSON policy
%% evaluation logic:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_evaluation-logic.html
%% in the IAM User Guide.
-spec put_role_permissions_boundary(aws_client:aws_client(), put_role_permissions_boundary_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_role_permissions_boundary_errors(), tuple()}.
put_role_permissions_boundary(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_role_permissions_boundary(Client, Input, []).

-spec put_role_permissions_boundary(aws_client:aws_client(), put_role_permissions_boundary_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_role_permissions_boundary_errors(), tuple()}.
put_role_permissions_boundary(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutRolePermissionsBoundary">>, Input, Options).

%% @doc Adds or updates an inline policy document that is embedded in the
%% specified IAM
%% role.
%%
%% When you embed an inline policy in a role, the inline policy is used as
%% part of the
%% role's access (permissions) policy. The role's trust policy is
%% created at the same time
%% as the role, using
%% `CreateRole'
%% : https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateRole.html.
%% You can update a role's trust policy using
%% `UpdateAssumeRolePolicy'
%% :
%% https://docs.aws.amazon.com/IAM/latest/APIReference/API_UpdateAssumeRolePolicy.html.
%% For more information about roles,
%% see IAM
%% roles:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/roles-toplevel.html in
%% the IAM User Guide.
%%
%% A role can also have a managed policy attached to it. To attach a managed
%% policy to a
%% role, use
%% `AttachRolePolicy'
%% :
%% https://docs.aws.amazon.com/IAM/latest/APIReference/API_AttachRolePolicy.html.
%% To create a new managed policy, use
%%
%% `CreatePolicy'
%% :
%% https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreatePolicy.html.
%% For information about policies, see Managed
%% policies and inline policies:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html
%% in the
%% IAM User Guide.
%%
%% For information about the maximum number of inline policies that you can
%% embed with a
%% role, see IAM and STS quotas:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html
%% in the IAM User Guide.
%%
%% Because policy documents can be large, you should use POST rather than GET
%% when
%% calling `PutRolePolicy'. For general information about using the Query
%% API with IAM, see Making query requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/IAM_UsingQueryAPI.html in
%% the
%% IAM User Guide.
-spec put_role_policy(aws_client:aws_client(), put_role_policy_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_role_policy_errors(), tuple()}.
put_role_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_role_policy(Client, Input, []).

-spec put_role_policy(aws_client:aws_client(), put_role_policy_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_role_policy_errors(), tuple()}.
put_role_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutRolePolicy">>, Input, Options).

%% @doc Adds or updates the policy that is specified as the IAM user's
%% permissions
%% boundary.
%%
%% You can use an Amazon Web Services managed policy or a customer managed
%% policy to set the
%% boundary for a user. Use the boundary to control the maximum permissions
%% that the user
%% can have. Setting a permissions boundary is an advanced feature that can
%% affect the
%% permissions for the user.
%%
%% Policies that are used as permissions boundaries do not provide
%% permissions. You
%% must also attach a permissions policy to the user. To learn how the
%% effective
%% permissions for a user are evaluated, see IAM JSON policy
%% evaluation logic:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_evaluation-logic.html
%% in the IAM User Guide.
-spec put_user_permissions_boundary(aws_client:aws_client(), put_user_permissions_boundary_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_user_permissions_boundary_errors(), tuple()}.
put_user_permissions_boundary(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_user_permissions_boundary(Client, Input, []).

-spec put_user_permissions_boundary(aws_client:aws_client(), put_user_permissions_boundary_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_user_permissions_boundary_errors(), tuple()}.
put_user_permissions_boundary(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutUserPermissionsBoundary">>, Input, Options).

%% @doc Adds or updates an inline policy document that is embedded in the
%% specified IAM
%% user.
%%
%% An IAM user can also have a managed policy attached to it. To attach a
%% managed
%% policy to a user, use
%% `AttachUserPolicy'
%% :
%% https://docs.aws.amazon.com/IAM/latest/APIReference/API_AttachUserPolicy.html.
%% To create a new managed policy, use
%%
%% `CreatePolicy'
%% :
%% https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreatePolicy.html.
%% For information about policies, see Managed
%% policies and inline policies:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html
%% in the
%% IAM User Guide.
%%
%% For information about the maximum number of inline policies that you can
%% embed in a
%% user, see IAM and STS quotas:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html
%% in the IAM User Guide.
%%
%% Because policy documents can be large, you should use POST rather than GET
%% when
%% calling `PutUserPolicy'. For general information about using the Query
%% API with IAM, see Making query requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/IAM_UsingQueryAPI.html in
%% the
%% IAM User Guide.
-spec put_user_policy(aws_client:aws_client(), put_user_policy_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_user_policy_errors(), tuple()}.
put_user_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_user_policy(Client, Input, []).

-spec put_user_policy(aws_client:aws_client(), put_user_policy_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_user_policy_errors(), tuple()}.
put_user_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutUserPolicy">>, Input, Options).

%% @doc Removes the specified client ID (also known as audience) from the
%% list of client IDs
%% registered for the specified IAM OpenID Connect (OIDC) provider resource
%% object.
%%
%% This operation is idempotent; it does not fail or return an error if you
%% try to remove
%% a client ID that does not exist.
-spec remove_client_id_from_open_id_connect_provider(aws_client:aws_client(), remove_client_id_from_open_id_connect_provider_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, remove_client_id_from_open_id_connect_provider_errors(), tuple()}.
remove_client_id_from_open_id_connect_provider(Client, Input)
  when is_map(Client), is_map(Input) ->
    remove_client_id_from_open_id_connect_provider(Client, Input, []).

-spec remove_client_id_from_open_id_connect_provider(aws_client:aws_client(), remove_client_id_from_open_id_connect_provider_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, remove_client_id_from_open_id_connect_provider_errors(), tuple()}.
remove_client_id_from_open_id_connect_provider(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RemoveClientIDFromOpenIDConnectProvider">>, Input, Options).

%% @doc Removes the specified IAM role from the specified Amazon EC2 instance
%% profile.
%%
%% Make sure that you do not have any Amazon EC2 instances running with the
%% role you are
%% about to remove from the instance profile. Removing a role from an
%% instance profile
%% that is associated with a running instance might break any applications
%% running on
%% the instance.
%%
%% For more information about roles, see IAM roles:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles.html in the
%% IAM User Guide. For more information about instance profiles,
%% see Using
%% instance profiles:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use_switch-role-ec2_instance-profiles.html
%% in the IAM User Guide.
-spec remove_role_from_instance_profile(aws_client:aws_client(), remove_role_from_instance_profile_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, remove_role_from_instance_profile_errors(), tuple()}.
remove_role_from_instance_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    remove_role_from_instance_profile(Client, Input, []).

-spec remove_role_from_instance_profile(aws_client:aws_client(), remove_role_from_instance_profile_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, remove_role_from_instance_profile_errors(), tuple()}.
remove_role_from_instance_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RemoveRoleFromInstanceProfile">>, Input, Options).

%% @doc Removes the specified user from the specified group.
-spec remove_user_from_group(aws_client:aws_client(), remove_user_from_group_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, remove_user_from_group_errors(), tuple()}.
remove_user_from_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    remove_user_from_group(Client, Input, []).

-spec remove_user_from_group(aws_client:aws_client(), remove_user_from_group_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, remove_user_from_group_errors(), tuple()}.
remove_user_from_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RemoveUserFromGroup">>, Input, Options).

%% @doc Resets the password for a service-specific credential.
%%
%% The new password is Amazon Web Services
%% generated and cryptographically strong. It cannot be configured by the
%% user. Resetting
%% the password immediately invalidates the previous password associated with
%% this
%% user.
-spec reset_service_specific_credential(aws_client:aws_client(), reset_service_specific_credential_request()) ->
    {ok, reset_service_specific_credential_response(), tuple()} |
    {error, any()} |
    {error, reset_service_specific_credential_errors(), tuple()}.
reset_service_specific_credential(Client, Input)
  when is_map(Client), is_map(Input) ->
    reset_service_specific_credential(Client, Input, []).

-spec reset_service_specific_credential(aws_client:aws_client(), reset_service_specific_credential_request(), proplists:proplist()) ->
    {ok, reset_service_specific_credential_response(), tuple()} |
    {error, any()} |
    {error, reset_service_specific_credential_errors(), tuple()}.
reset_service_specific_credential(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ResetServiceSpecificCredential">>, Input, Options).

%% @doc Synchronizes the specified MFA device with its IAM resource object on
%% the Amazon Web Services
%% servers.
%%
%% For more information about creating and working with virtual MFA devices,
%% see Using a virtual MFA
%% device:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_VirtualMFA.html in
%% the IAM User Guide.
-spec resync_mfa_device(aws_client:aws_client(), resync_mfa_device_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, resync_mfa_device_errors(), tuple()}.
resync_mfa_device(Client, Input)
  when is_map(Client), is_map(Input) ->
    resync_mfa_device(Client, Input, []).

-spec resync_mfa_device(aws_client:aws_client(), resync_mfa_device_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, resync_mfa_device_errors(), tuple()}.
resync_mfa_device(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ResyncMFADevice">>, Input, Options).

%% @doc Sets the specified version of the specified policy as the
%% policy's default (operative)
%% version.
%%
%% This operation affects all users, groups, and roles that the policy is
%% attached to. To
%% list the users, groups, and roles that the policy is attached to, use
%% ListEntitiesForPolicy:
%% https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListEntitiesForPolicy.html.
%%
%% For information about managed policies, see Managed policies and inline
%% policies:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html
%% in the IAM User Guide.
-spec set_default_policy_version(aws_client:aws_client(), set_default_policy_version_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, set_default_policy_version_errors(), tuple()}.
set_default_policy_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_default_policy_version(Client, Input, []).

-spec set_default_policy_version(aws_client:aws_client(), set_default_policy_version_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, set_default_policy_version_errors(), tuple()}.
set_default_policy_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetDefaultPolicyVersion">>, Input, Options).

%% @doc Sets the specified version of the global endpoint token as the token
%% version used for
%% the Amazon Web Services account.
%%
%% By default, Security Token Service (STS) is available as a global service,
%% and all STS requests
%% go to a single endpoint at `https://sts.amazonaws.com'. Amazon Web
%% Services recommends
%% using Regional STS endpoints to reduce latency, build in redundancy, and
%% increase
%% session token availability. For information about Regional endpoints for
%% STS, see
%% Security Token Service
%% endpoints and quotas:
%% https://docs.aws.amazon.com/general/latest/gr/sts.html in the Amazon Web
%% Services General Reference.
%%
%% If you make an STS call to the global endpoint, the resulting session
%% tokens might
%% be valid in some Regions but not others. It depends on the version that is
%% set in this
%% operation. Version 1 tokens are valid only in Amazon Web Services Regions
%% that are
%% available by default. These tokens do not work in manually enabled
%% Regions, such as Asia
%% Pacific (Hong Kong). Version 2 tokens are valid in all Regions. However,
%% version 2
%% tokens are longer and might affect systems where you temporarily store
%% tokens. For
%% information, see Activating and
%% deactivating STS in an Amazon Web Services Region:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_enable-regions.html
%% in the
%% IAM User Guide.
%%
%% To view the current session token version, see the
%% `GlobalEndpointTokenVersion' entry in the response of the
%% GetAccountSummary:
%% https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetAccountSummary.html
%% operation.
-spec set_security_token_service_preferences(aws_client:aws_client(), set_security_token_service_preferences_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, set_security_token_service_preferences_errors(), tuple()}.
set_security_token_service_preferences(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_security_token_service_preferences(Client, Input, []).

-spec set_security_token_service_preferences(aws_client:aws_client(), set_security_token_service_preferences_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, set_security_token_service_preferences_errors(), tuple()}.
set_security_token_service_preferences(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetSecurityTokenServicePreferences">>, Input, Options).

%% @doc Simulate how a set of IAM policies and optionally a resource-based
%% policy works with
%% a list of API operations and Amazon Web Services resources to determine
%% the policies' effective
%% permissions.
%%
%% The policies are provided as strings.
%%
%% The simulation does not perform the API operations; it only checks the
%% authorization
%% to determine if the simulated policies allow or deny the operations. You
%% can simulate
%% resources that don't exist in your account.
%%
%% If you want to simulate existing policies that are attached to an IAM
%% user, group,
%% or role, use SimulatePrincipalPolicy:
%% https://docs.aws.amazon.com/IAM/latest/APIReference/API_SimulatePrincipalPolicy.html
%% instead.
%%
%% Context keys are variables that are maintained by Amazon Web Services and
%% its services and which
%% provide details about the context of an API query request. You can use the
%% `Condition' element of an IAM policy to evaluate context keys. To get
%% the list of context keys that the policies require for correct simulation,
%% use GetContextKeysForCustomPolicy:
%% https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetContextKeysForCustomPolicy.html.
%%
%% If the output is long, you can use `MaxItems' and `Marker'
%% parameters to paginate the results.
%%
%% The IAM policy simulator evaluates statements in the identity-based policy
%% and
%% the inputs that you provide during simulation. The policy simulator
%% results can
%% differ from your live Amazon Web Services environment. We recommend that
%% you check your policies
%% against your live Amazon Web Services environment after testing using the
%% policy simulator to
%% confirm that you have the desired results. For more information about
%% using the
%% policy simulator, see Testing IAM
%% policies with the IAM policy simulator :
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_testing-policies.htmlin
%% the
%% IAM User Guide.
-spec simulate_custom_policy(aws_client:aws_client(), simulate_custom_policy_request()) ->
    {ok, simulate_policy_response(), tuple()} |
    {error, any()} |
    {error, simulate_custom_policy_errors(), tuple()}.
simulate_custom_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    simulate_custom_policy(Client, Input, []).

-spec simulate_custom_policy(aws_client:aws_client(), simulate_custom_policy_request(), proplists:proplist()) ->
    {ok, simulate_policy_response(), tuple()} |
    {error, any()} |
    {error, simulate_custom_policy_errors(), tuple()}.
simulate_custom_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SimulateCustomPolicy">>, Input, Options).

%% @doc Simulate how a set of IAM policies attached to an IAM entity works
%% with a list of
%% API operations and Amazon Web Services resources to determine the
%% policies' effective permissions.
%%
%% The
%% entity can be an IAM user, group, or role. If you specify a user, then the
%% simulation
%% also includes all of the policies that are attached to groups that the
%% user belongs to.
%% You can simulate resources that don't exist in your account.
%%
%% You can optionally include a list of one or more additional policies
%% specified as
%% strings to include in the simulation. If you want to simulate only
%% policies specified as
%% strings, use SimulateCustomPolicy:
%% https://docs.aws.amazon.com/IAM/latest/APIReference/API_SimulateCustomPolicy.html
%% instead.
%%
%% You can also optionally include one resource-based policy to be evaluated
%% with each of
%% the resources included in the simulation for IAM users only.
%%
%% The simulation does not perform the API operations; it only checks the
%% authorization
%% to determine if the simulated policies allow or deny the operations.
%%
%% Note: This operation discloses information about the
%% permissions granted to other users. If you do not want users to see other
%% user's
%% permissions, then consider allowing them to use SimulateCustomPolicy:
%% https://docs.aws.amazon.com/IAM/latest/APIReference/API_SimulateCustomPolicy.html
%% instead.
%%
%% Context keys are variables maintained by Amazon Web Services and its
%% services that provide details
%% about the context of an API query request. You can use the `Condition'
%% element of an IAM policy to evaluate context keys. To get the list of
%% context keys
%% that the policies require for correct simulation, use
%% GetContextKeysForPrincipalPolicy:
%% https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetContextKeysForPrincipalPolicy.html.
%%
%% If the output is long, you can use the `MaxItems' and `Marker'
%% parameters to paginate the results.
%%
%% The IAM policy simulator evaluates statements in the identity-based policy
%% and
%% the inputs that you provide during simulation. The policy simulator
%% results can
%% differ from your live Amazon Web Services environment. We recommend that
%% you check your policies
%% against your live Amazon Web Services environment after testing using the
%% policy simulator to
%% confirm that you have the desired results. For more information about
%% using the
%% policy simulator, see Testing IAM
%% policies with the IAM policy simulator :
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_testing-policies.htmlin
%% the
%% IAM User Guide.
-spec simulate_principal_policy(aws_client:aws_client(), simulate_principal_policy_request()) ->
    {ok, simulate_policy_response(), tuple()} |
    {error, any()} |
    {error, simulate_principal_policy_errors(), tuple()}.
simulate_principal_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    simulate_principal_policy(Client, Input, []).

-spec simulate_principal_policy(aws_client:aws_client(), simulate_principal_policy_request(), proplists:proplist()) ->
    {ok, simulate_policy_response(), tuple()} |
    {error, any()} |
    {error, simulate_principal_policy_errors(), tuple()}.
simulate_principal_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SimulatePrincipalPolicy">>, Input, Options).

%% @doc Adds one or more tags to an IAM instance profile.
%%
%% If a tag with the same key name
%% already exists, then that tag is overwritten with the new value.
%%
%% Each tag consists of a key name and an associated value. By assigning tags
%% to your resources, you can do the
%% following:
%%
%% Administrative grouping and discovery - Attach
%% tags to resources to aid in organization and search. For example, you
%% could search for all
%% resources with the key name Project and the value
%% MyImportantProject. Or search for all resources with the key name
%% Cost Center and the value 41200.
%%
%% Access control - Include tags in IAM user-based
%% and resource-based policies. You can use tags to restrict access to only
%% an IAM instance
%% profile that has a specified tag attached. For examples of policies that
%% show how to use
%% tags to control access, see Control access using IAM tags:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html in the
%% IAM User Guide.
%%
%% If any one of the tags is invalid or if you exceed the allowed maximum
%% number of tags, then the entire request
%% fails and the resource is not created. For more information about tagging,
%% see Tagging IAM resources:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html in the
%% IAM User Guide.
%%
%% Amazon Web Services always interprets the tag `Value' as a single
%% string. If you
%% need to store an array, you can store comma-separated values in the
%% string. However, you
%% must interpret the value in your code.
-spec tag_instance_profile(aws_client:aws_client(), tag_instance_profile_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, tag_instance_profile_errors(), tuple()}.
tag_instance_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_instance_profile(Client, Input, []).

-spec tag_instance_profile(aws_client:aws_client(), tag_instance_profile_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, tag_instance_profile_errors(), tuple()}.
tag_instance_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagInstanceProfile">>, Input, Options).

%% @doc Adds one or more tags to an IAM virtual multi-factor authentication
%% (MFA) device.
%%
%% If
%% a tag with the same key name already exists, then that tag is overwritten
%% with the new
%% value.
%%
%% A tag consists of a key name and an associated value. By assigning tags to
%% your
%% resources, you can do the following:
%%
%% Administrative grouping and discovery - Attach
%% tags to resources to aid in organization and search. For example, you
%% could search for all
%% resources with the key name Project and the value
%% MyImportantProject. Or search for all resources with the key name
%% Cost Center and the value 41200.
%%
%% Access control - Include tags in IAM user-based
%% and resource-based policies. You can use tags to restrict access to only
%% an IAM virtual
%% MFA device that has a specified tag attached. For examples of policies
%% that show how to
%% use tags to control access, see Control access using IAM tags:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html in the
%% IAM User Guide.
%%
%% If any one of the tags is invalid or if you exceed the allowed maximum
%% number of tags, then the entire request
%% fails and the resource is not created. For more information about tagging,
%% see Tagging IAM resources:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html in the
%% IAM User Guide.
%%
%% Amazon Web Services always interprets the tag `Value' as a single
%% string. If you
%% need to store an array, you can store comma-separated values in the
%% string. However, you
%% must interpret the value in your code.
-spec tag_mfa_device(aws_client:aws_client(), tag_mfa_device_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, tag_mfa_device_errors(), tuple()}.
tag_mfa_device(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_mfa_device(Client, Input, []).

-spec tag_mfa_device(aws_client:aws_client(), tag_mfa_device_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, tag_mfa_device_errors(), tuple()}.
tag_mfa_device(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagMFADevice">>, Input, Options).

%% @doc Adds one or more tags to an OpenID Connect (OIDC)-compatible identity
%% provider.
%%
%% For
%% more information about these providers, see About web identity federation:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_oidc.html.
%% If
%% a tag with the same key name already exists, then that tag is overwritten
%% with the new
%% value.
%%
%% A tag consists of a key name and an associated value. By assigning tags to
%% your
%% resources, you can do the following:
%%
%% Administrative grouping and discovery - Attach
%% tags to resources to aid in organization and search. For example, you
%% could search for all
%% resources with the key name Project and the value
%% MyImportantProject. Or search for all resources with the key name
%% Cost Center and the value 41200.
%%
%% Access control - Include tags in IAM identity-based
%% and resource-based policies. You can use tags to restrict access to only
%% an OIDC provider
%% that has a specified tag attached. For examples of policies that show how
%% to use tags to
%% control access, see Control access using IAM tags:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html in the
%% IAM User Guide.
%%
%% If any one of the tags is invalid or if you exceed the allowed maximum
%% number of tags, then the entire request
%% fails and the resource is not created. For more information about tagging,
%% see Tagging IAM resources:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html in the
%% IAM User Guide.
%%
%% Amazon Web Services always interprets the tag `Value' as a single
%% string. If you
%% need to store an array, you can store comma-separated values in the
%% string. However, you
%% must interpret the value in your code.
-spec tag_open_id_connect_provider(aws_client:aws_client(), tag_open_id_connect_provider_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, tag_open_id_connect_provider_errors(), tuple()}.
tag_open_id_connect_provider(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_open_id_connect_provider(Client, Input, []).

-spec tag_open_id_connect_provider(aws_client:aws_client(), tag_open_id_connect_provider_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, tag_open_id_connect_provider_errors(), tuple()}.
tag_open_id_connect_provider(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagOpenIDConnectProvider">>, Input, Options).

%% @doc Adds one or more tags to an IAM customer managed policy.
%%
%% If a tag with the same key
%% name already exists, then that tag is overwritten with the new value.
%%
%% A tag consists of a key name and an associated value. By assigning tags to
%% your
%% resources, you can do the following:
%%
%% Administrative grouping and discovery - Attach
%% tags to resources to aid in organization and search. For example, you
%% could search for all
%% resources with the key name Project and the value
%% MyImportantProject. Or search for all resources with the key name
%% Cost Center and the value 41200.
%%
%% Access control - Include tags in IAM user-based
%% and resource-based policies. You can use tags to restrict access to only
%% an IAM customer
%% managed policy that has a specified tag attached. For examples of policies
%% that show how
%% to use tags to control access, see Control access using IAM tags:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html in the
%% IAM User Guide.
%%
%% If any one of the tags is invalid or if you exceed the allowed maximum
%% number of tags, then the entire request
%% fails and the resource is not created. For more information about tagging,
%% see Tagging IAM resources:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html in the
%% IAM User Guide.
%%
%% Amazon Web Services always interprets the tag `Value' as a single
%% string. If you
%% need to store an array, you can store comma-separated values in the
%% string. However, you
%% must interpret the value in your code.
-spec tag_policy(aws_client:aws_client(), tag_policy_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, tag_policy_errors(), tuple()}.
tag_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_policy(Client, Input, []).

-spec tag_policy(aws_client:aws_client(), tag_policy_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, tag_policy_errors(), tuple()}.
tag_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagPolicy">>, Input, Options).

%% @doc Adds one or more tags to an IAM role.
%%
%% The role can be a regular role or a
%% service-linked role. If a tag with the same key name already exists, then
%% that tag is
%% overwritten with the new value.
%%
%% A tag consists of a key name and an associated value. By assigning tags to
%% your
%% resources, you can do the following:
%%
%% Administrative grouping and discovery - Attach
%% tags to resources to aid in organization and search. For example, you
%% could search for all
%% resources with the key name Project and the value
%% MyImportantProject. Or search for all resources with the key name
%% Cost Center and the value 41200.
%%
%% Access control - Include tags in IAM user-based
%% and resource-based policies. You can use tags to restrict access to only
%% an IAM role
%% that has a specified tag attached. You can also restrict access to only
%% those resources
%% that have a certain tag attached. For examples of policies that show how
%% to use tags to
%% control access, see Control access using IAM tags:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html in the
%% IAM User Guide.
%%
%% Cost allocation - Use tags to help track which
%% individuals and teams are using which Amazon Web Services resources.
%%
%% If any one of the tags is invalid or if you exceed the allowed maximum
%% number of tags, then the entire request
%% fails and the resource is not created. For more information about tagging,
%% see Tagging IAM resources:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html in the
%% IAM User Guide.
%%
%% Amazon Web Services always interprets the tag `Value' as a single
%% string. If you
%% need to store an array, you can store comma-separated values in the
%% string. However, you
%% must interpret the value in your code.
%%
%% For more information about tagging, see Tagging IAM identities:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html in the
%% IAM User Guide.
-spec tag_role(aws_client:aws_client(), tag_role_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, tag_role_errors(), tuple()}.
tag_role(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_role(Client, Input, []).

-spec tag_role(aws_client:aws_client(), tag_role_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, tag_role_errors(), tuple()}.
tag_role(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagRole">>, Input, Options).

%% @doc Adds one or more tags to a Security Assertion Markup Language (SAML)
%% identity provider.
%%
%% For more information about these providers, see About SAML 2.0-based
%% federation :
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_saml.html.
%% If a tag with the same key name already exists, then that tag is
%% overwritten with the new
%% value.
%%
%% A tag consists of a key name and an associated value. By assigning tags to
%% your
%% resources, you can do the following:
%%
%% Administrative grouping and discovery - Attach
%% tags to resources to aid in organization and search. For example, you
%% could search for all
%% resources with the key name Project and the value
%% MyImportantProject. Or search for all resources with the key name
%% Cost Center and the value 41200.
%%
%% Access control - Include tags in IAM user-based
%% and resource-based policies. You can use tags to restrict access to only a
%% SAML identity
%% provider that has a specified tag attached. For examples of policies that
%% show how to use
%% tags to control access, see Control access using IAM tags:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html in the
%% IAM User Guide.
%%
%% If any one of the tags is invalid or if you exceed the allowed maximum
%% number of tags, then the entire request
%% fails and the resource is not created. For more information about tagging,
%% see Tagging IAM resources:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html in the
%% IAM User Guide.
%%
%% Amazon Web Services always interprets the tag `Value' as a single
%% string. If you
%% need to store an array, you can store comma-separated values in the
%% string. However, you
%% must interpret the value in your code.
-spec tag_saml_provider(aws_client:aws_client(), tag_saml_provider_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, tag_saml_provider_errors(), tuple()}.
tag_saml_provider(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_saml_provider(Client, Input, []).

-spec tag_saml_provider(aws_client:aws_client(), tag_saml_provider_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, tag_saml_provider_errors(), tuple()}.
tag_saml_provider(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagSAMLProvider">>, Input, Options).

%% @doc Adds one or more tags to an IAM server certificate.
%%
%% If a tag with the same key name
%% already exists, then that tag is overwritten with the new value.
%%
%% For certificates in a Region supported by Certificate Manager (ACM), we
%% recommend that you don't use IAM server certificates. Instead, use ACM
%% to provision,
%% manage, and deploy your server certificates. For more information about
%% IAM server
%% certificates, Working with server
%% certificates:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html
%% in the IAM User Guide.
%%
%% A tag consists of a key name and an associated value. By assigning tags to
%% your
%% resources, you can do the following:
%%
%% Administrative grouping and discovery - Attach
%% tags to resources to aid in organization and search. For example, you
%% could search for all
%% resources with the key name Project and the value
%% MyImportantProject. Or search for all resources with the key name
%% Cost Center and the value 41200.
%%
%% Access control - Include tags in IAM user-based
%% and resource-based policies. You can use tags to restrict access to only a
%% server
%% certificate that has a specified tag attached. For examples of policies
%% that show how to
%% use tags to control access, see Control access using IAM tags:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html in the
%% IAM User Guide.
%%
%% Cost allocation - Use tags to help track which
%% individuals and teams are using which Amazon Web Services resources.
%%
%% If any one of the tags is invalid or if you exceed the allowed maximum
%% number of tags, then the entire request
%% fails and the resource is not created. For more information about tagging,
%% see Tagging IAM resources:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html in the
%% IAM User Guide.
%%
%% Amazon Web Services always interprets the tag `Value' as a single
%% string. If you
%% need to store an array, you can store comma-separated values in the
%% string. However, you
%% must interpret the value in your code.
-spec tag_server_certificate(aws_client:aws_client(), tag_server_certificate_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, tag_server_certificate_errors(), tuple()}.
tag_server_certificate(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_server_certificate(Client, Input, []).

-spec tag_server_certificate(aws_client:aws_client(), tag_server_certificate_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, tag_server_certificate_errors(), tuple()}.
tag_server_certificate(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagServerCertificate">>, Input, Options).

%% @doc Adds one or more tags to an IAM user.
%%
%% If a tag with the same key name already exists,
%% then that tag is overwritten with the new value.
%%
%% A tag consists of a key name and an associated value. By assigning tags to
%% your
%% resources, you can do the following:
%%
%% Administrative grouping and discovery - Attach
%% tags to resources to aid in organization and search. For example, you
%% could search for all
%% resources with the key name Project and the value
%% MyImportantProject. Or search for all resources with the key name
%% Cost Center and the value 41200.
%%
%% Access control - Include tags in IAM identity-based
%% and resource-based policies. You can use tags to restrict access to only
%% an IAM
%% requesting user that has a specified tag attached. You can also restrict
%% access to only
%% those resources that have a certain tag attached. For examples of policies
%% that show how
%% to use tags to control access, see Control access using IAM tags:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html in the
%% IAM User Guide.
%%
%% Cost allocation - Use tags to help track which
%% individuals and teams are using which Amazon Web Services resources.
%%
%% If any one of the tags is invalid or if you exceed the allowed maximum
%% number of tags, then the entire request
%% fails and the resource is not created. For more information about tagging,
%% see Tagging IAM resources:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html in the
%% IAM User Guide.
%%
%% Amazon Web Services always interprets the tag `Value' as a single
%% string. If you
%% need to store an array, you can store comma-separated values in the
%% string. However, you
%% must interpret the value in your code.
%%
%% For more information about tagging, see Tagging IAM identities:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html in the
%% IAM User Guide.
-spec tag_user(aws_client:aws_client(), tag_user_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, tag_user_errors(), tuple()}.
tag_user(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_user(Client, Input, []).

-spec tag_user(aws_client:aws_client(), tag_user_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, tag_user_errors(), tuple()}.
tag_user(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagUser">>, Input, Options).

%% @doc Removes the specified tags from the IAM instance profile.
%%
%% For more information about tagging, see Tagging IAM resources:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html in the
%% IAM User Guide.
-spec untag_instance_profile(aws_client:aws_client(), untag_instance_profile_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, untag_instance_profile_errors(), tuple()}.
untag_instance_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_instance_profile(Client, Input, []).

-spec untag_instance_profile(aws_client:aws_client(), untag_instance_profile_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, untag_instance_profile_errors(), tuple()}.
untag_instance_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagInstanceProfile">>, Input, Options).

%% @doc Removes the specified tags from the IAM virtual multi-factor
%% authentication (MFA)
%% device.
%%
%% For more information about tagging, see Tagging IAM resources:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html in the
%% IAM User Guide.
-spec untag_mfa_device(aws_client:aws_client(), untag_mfa_device_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, untag_mfa_device_errors(), tuple()}.
untag_mfa_device(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_mfa_device(Client, Input, []).

-spec untag_mfa_device(aws_client:aws_client(), untag_mfa_device_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, untag_mfa_device_errors(), tuple()}.
untag_mfa_device(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagMFADevice">>, Input, Options).

%% @doc Removes the specified tags from the specified OpenID Connect
%% (OIDC)-compatible identity
%% provider in IAM.
%%
%% For more information about OIDC providers, see About web identity
%% federation:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_oidc.html.
%% For more information about tagging, see Tagging IAM resources:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html in the
%% IAM User Guide.
-spec untag_open_id_connect_provider(aws_client:aws_client(), untag_open_id_connect_provider_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, untag_open_id_connect_provider_errors(), tuple()}.
untag_open_id_connect_provider(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_open_id_connect_provider(Client, Input, []).

-spec untag_open_id_connect_provider(aws_client:aws_client(), untag_open_id_connect_provider_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, untag_open_id_connect_provider_errors(), tuple()}.
untag_open_id_connect_provider(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagOpenIDConnectProvider">>, Input, Options).

%% @doc Removes the specified tags from the customer managed policy.
%%
%% For more information about tagging, see Tagging IAM resources:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html in the
%% IAM User Guide.
-spec untag_policy(aws_client:aws_client(), untag_policy_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, untag_policy_errors(), tuple()}.
untag_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_policy(Client, Input, []).

-spec untag_policy(aws_client:aws_client(), untag_policy_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, untag_policy_errors(), tuple()}.
untag_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagPolicy">>, Input, Options).

%% @doc Removes the specified tags from the role.
%%
%% For more information about tagging, see Tagging IAM resources:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html in the
%% IAM User Guide.
-spec untag_role(aws_client:aws_client(), untag_role_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, untag_role_errors(), tuple()}.
untag_role(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_role(Client, Input, []).

-spec untag_role(aws_client:aws_client(), untag_role_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, untag_role_errors(), tuple()}.
untag_role(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagRole">>, Input, Options).

%% @doc Removes the specified tags from the specified Security Assertion
%% Markup Language (SAML)
%% identity provider in IAM.
%%
%% For more information about these providers, see About web identity
%% federation:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_oidc.html.
%% For more information about tagging, see Tagging IAM resources:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html in the
%% IAM User Guide.
-spec untag_saml_provider(aws_client:aws_client(), untag_saml_provider_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, untag_saml_provider_errors(), tuple()}.
untag_saml_provider(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_saml_provider(Client, Input, []).

-spec untag_saml_provider(aws_client:aws_client(), untag_saml_provider_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, untag_saml_provider_errors(), tuple()}.
untag_saml_provider(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagSAMLProvider">>, Input, Options).

%% @doc Removes the specified tags from the IAM server certificate.
%%
%% For more information about tagging, see Tagging IAM resources:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html in the
%% IAM User Guide.
%%
%% For certificates in a Region supported by Certificate Manager (ACM), we
%% recommend that you don't use IAM server certificates. Instead, use ACM
%% to provision,
%% manage, and deploy your server certificates. For more information about
%% IAM server
%% certificates, Working with server
%% certificates:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html
%% in the IAM User Guide.
-spec untag_server_certificate(aws_client:aws_client(), untag_server_certificate_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, untag_server_certificate_errors(), tuple()}.
untag_server_certificate(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_server_certificate(Client, Input, []).

-spec untag_server_certificate(aws_client:aws_client(), untag_server_certificate_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, untag_server_certificate_errors(), tuple()}.
untag_server_certificate(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagServerCertificate">>, Input, Options).

%% @doc Removes the specified tags from the user.
%%
%% For more information about tagging, see Tagging IAM resources:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html in the
%% IAM User Guide.
-spec untag_user(aws_client:aws_client(), untag_user_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, untag_user_errors(), tuple()}.
untag_user(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_user(Client, Input, []).

-spec untag_user(aws_client:aws_client(), untag_user_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, untag_user_errors(), tuple()}.
untag_user(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagUser">>, Input, Options).

%% @doc Changes the status of the specified access key from Active to
%% Inactive, or vice versa.
%%
%% This operation can be used to disable a user's key as part of a key
%% rotation
%% workflow.
%%
%% If the `UserName' is not specified, the user name is determined
%% implicitly
%% based on the Amazon Web Services access key ID used to sign the request.
%% If a temporary access key is
%% used, then `UserName' is required. If a long-term key is assigned to
%% the
%% user, then `UserName' is not required. This operation works for access
%% keys
%% under the Amazon Web Services account. Consequently, you can use this
%% operation to manage Amazon Web Services account root user
%% credentials even if the Amazon Web Services account has no associated
%% users.
%%
%% For information about rotating keys, see Managing keys and certificates:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/ManagingCredentials.html
%% in the IAM User Guide.
-spec update_access_key(aws_client:aws_client(), update_access_key_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_access_key_errors(), tuple()}.
update_access_key(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_access_key(Client, Input, []).

-spec update_access_key(aws_client:aws_client(), update_access_key_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_access_key_errors(), tuple()}.
update_access_key(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateAccessKey">>, Input, Options).

%% @doc Updates the password policy settings for the Amazon Web Services
%% account.
%%
%% This operation does not support partial updates. No parameters are
%% required, but
%% if you do not specify a parameter, that parameter's value reverts to
%% its default
%% value. See the Request Parameters section for each
%% parameter's default value. Also note that some parameters do not allow
%% the default
%% parameter to be explicitly set. Instead, to invoke the default value, do
%% not include
%% that parameter when you invoke the operation.
%%
%% For more information about using a password policy, see Managing an IAM
%% password
%% policy:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_ManagingPasswordPolicies.html
%% in the IAM User Guide.
-spec update_account_password_policy(aws_client:aws_client(), update_account_password_policy_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_account_password_policy_errors(), tuple()}.
update_account_password_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_account_password_policy(Client, Input, []).

-spec update_account_password_policy(aws_client:aws_client(), update_account_password_policy_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_account_password_policy_errors(), tuple()}.
update_account_password_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateAccountPasswordPolicy">>, Input, Options).

%% @doc Updates the policy that grants an IAM entity permission to assume a
%% role.
%%
%% This is
%% typically referred to as the &quot;role trust policy&quot;. For more
%% information about roles, see
%% Using roles to
%% delegate permissions and federate identities:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/roles-toplevel.html.
-spec update_assume_role_policy(aws_client:aws_client(), update_assume_role_policy_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_assume_role_policy_errors(), tuple()}.
update_assume_role_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_assume_role_policy(Client, Input, []).

-spec update_assume_role_policy(aws_client:aws_client(), update_assume_role_policy_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_assume_role_policy_errors(), tuple()}.
update_assume_role_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateAssumeRolePolicy">>, Input, Options).

%% @doc Updates the name and/or the path of the specified IAM group.
%%
%% You should understand the implications of changing a group's path or
%% name. For
%% more information, see Renaming users and
%% groups:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_WorkingWithGroupsAndUsers.html
%% in the IAM User Guide.
%%
%% The person making the request (the principal), must have permission to
%% change the
%% role group with the old name and the new name. For example, to change the
%% group
%% named `Managers' to `MGRs', the principal must have a policy
%% that allows them to update both groups. If the principal has permission to
%% update
%% the `Managers' group, but not the `MGRs' group, then the
%% update fails. For more information about permissions, see Access
%% management: https://docs.aws.amazon.com/IAM/latest/UserGuide/access.html.
-spec update_group(aws_client:aws_client(), update_group_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_group_errors(), tuple()}.
update_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_group(Client, Input, []).

-spec update_group(aws_client:aws_client(), update_group_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_group_errors(), tuple()}.
update_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateGroup">>, Input, Options).

%% @doc Changes the password for the specified IAM user.
%%
%% You can use the CLI, the Amazon Web Services
%% API, or the Users page in the IAM console to change
%% the password for any IAM user. Use ChangePassword:
%% https://docs.aws.amazon.com/IAM/latest/APIReference/API_ChangePassword.html
%% to
%% change your own password in the My Security Credentials
%% page in the Amazon Web Services Management Console.
%%
%% For more information about modifying passwords, see Managing passwords:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_ManagingLogins.html
%% in the
%% IAM User Guide.
-spec update_login_profile(aws_client:aws_client(), update_login_profile_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_login_profile_errors(), tuple()}.
update_login_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_login_profile(Client, Input, []).

-spec update_login_profile(aws_client:aws_client(), update_login_profile_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_login_profile_errors(), tuple()}.
update_login_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateLoginProfile">>, Input, Options).

%% @doc Replaces the existing list of server certificate thumbprints
%% associated with an OpenID
%% Connect (OIDC) provider resource object with a new list of thumbprints.
%%
%% The list that you pass with this operation completely replaces the
%% existing list of
%% thumbprints. (The lists are not merged.)
%%
%% Typically, you need to update a thumbprint only when the identity provider
%% certificate
%% changes, which occurs rarely. However, if the provider's certificate
%% does change, any attempt to assume an IAM role that specifies
%% the OIDC provider as a principal fails until the certificate thumbprint is
%% updated.
%%
%% Amazon Web Services secures communication with OIDC identity providers
%% (IdPs) using our library of
%% trusted root certificate authorities (CAs) to verify the JSON Web Key Set
%% (JWKS)
%% endpoint's TLS certificate. If your OIDC IdP relies on a certificate
%% that is not signed
%% by one of these trusted CAs, only then we secure communication using the
%% thumbprints set
%% in the IdP's configuration.
%%
%% Trust for the OIDC provider is derived from the provider certificate and
%% is
%% validated by the thumbprint. Therefore, it is best to limit access to the
%% `UpdateOpenIDConnectProviderThumbprint' operation to highly
%% privileged users.
-spec update_open_id_connect_provider_thumbprint(aws_client:aws_client(), update_open_id_connect_provider_thumbprint_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_open_id_connect_provider_thumbprint_errors(), tuple()}.
update_open_id_connect_provider_thumbprint(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_open_id_connect_provider_thumbprint(Client, Input, []).

-spec update_open_id_connect_provider_thumbprint(aws_client:aws_client(), update_open_id_connect_provider_thumbprint_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_open_id_connect_provider_thumbprint_errors(), tuple()}.
update_open_id_connect_provider_thumbprint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateOpenIDConnectProviderThumbprint">>, Input, Options).

%% @doc Updates the description or maximum session duration setting of a
%% role.
-spec update_role(aws_client:aws_client(), update_role_request()) ->
    {ok, update_role_response(), tuple()} |
    {error, any()} |
    {error, update_role_errors(), tuple()}.
update_role(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_role(Client, Input, []).

-spec update_role(aws_client:aws_client(), update_role_request(), proplists:proplist()) ->
    {ok, update_role_response(), tuple()} |
    {error, any()} |
    {error, update_role_errors(), tuple()}.
update_role(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateRole">>, Input, Options).

%% @doc Use UpdateRole:
%% https://docs.aws.amazon.com/IAM/latest/APIReference/API_UpdateRole.html
%% instead.
%%
%% Modifies only the description of a role. This operation performs the same
%% function as
%% the `Description' parameter in the `UpdateRole' operation.
-spec update_role_description(aws_client:aws_client(), update_role_description_request()) ->
    {ok, update_role_description_response(), tuple()} |
    {error, any()} |
    {error, update_role_description_errors(), tuple()}.
update_role_description(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_role_description(Client, Input, []).

-spec update_role_description(aws_client:aws_client(), update_role_description_request(), proplists:proplist()) ->
    {ok, update_role_description_response(), tuple()} |
    {error, any()} |
    {error, update_role_description_errors(), tuple()}.
update_role_description(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateRoleDescription">>, Input, Options).

%% @doc Updates the metadata document, SAML encryption settings, and private
%% keys for an
%% existing SAML provider.
%%
%% To rotate private keys, add your new private key and then remove
%% the old key in a separate request.
-spec update_saml_provider(aws_client:aws_client(), update_saml_provider_request()) ->
    {ok, update_saml_provider_response(), tuple()} |
    {error, any()} |
    {error, update_saml_provider_errors(), tuple()}.
update_saml_provider(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_saml_provider(Client, Input, []).

-spec update_saml_provider(aws_client:aws_client(), update_saml_provider_request(), proplists:proplist()) ->
    {ok, update_saml_provider_response(), tuple()} |
    {error, any()} |
    {error, update_saml_provider_errors(), tuple()}.
update_saml_provider(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateSAMLProvider">>, Input, Options).

%% @doc Updates the name and/or the path of the specified server certificate
%% stored in
%% IAM.
%%
%% For more information about working with server certificates, see Working
%% with server certificates:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html
%% in the IAM User Guide. This
%% topic also includes a list of Amazon Web Services services that can use
%% the server certificates that
%% you manage with IAM.
%%
%% You should understand the implications of changing a server
%% certificate's path or
%% name. For more information, see Renaming a server certificate:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs_manage.html#RenamingServerCerts
%% in the
%% IAM User Guide.
%%
%% The person making the request (the principal), must have permission to
%% change the
%% server certificate with the old name and the new name. For example, to
%% change the
%% certificate named `ProductionCert' to `ProdCert', the
%% principal must have a policy that allows them to update both certificates.
%% If the
%% principal has permission to update the `ProductionCert' group, but not
%% the `ProdCert' certificate, then the update fails. For more
%% information
%% about permissions, see Access management:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/access.html in the IAM
%% User Guide.
-spec update_server_certificate(aws_client:aws_client(), update_server_certificate_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_server_certificate_errors(), tuple()}.
update_server_certificate(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_server_certificate(Client, Input, []).

-spec update_server_certificate(aws_client:aws_client(), update_server_certificate_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_server_certificate_errors(), tuple()}.
update_server_certificate(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateServerCertificate">>, Input, Options).

%% @doc Sets the status of a service-specific credential to `Active' or
%% `Inactive'.
%%
%% Service-specific credentials that are inactive cannot be used
%% for authentication to the service. This operation can be used to disable a
%% user's
%% service-specific credential as part of a credential rotation work flow.
-spec update_service_specific_credential(aws_client:aws_client(), update_service_specific_credential_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_service_specific_credential_errors(), tuple()}.
update_service_specific_credential(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_service_specific_credential(Client, Input, []).

-spec update_service_specific_credential(aws_client:aws_client(), update_service_specific_credential_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_service_specific_credential_errors(), tuple()}.
update_service_specific_credential(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateServiceSpecificCredential">>, Input, Options).

%% @doc Changes the status of the specified user signing certificate from
%% active to disabled,
%% or vice versa.
%%
%% This operation can be used to disable an IAM user's signing
%% certificate as part of a certificate rotation work flow.
%%
%% If the `UserName' field is not specified, the user name is determined
%% implicitly based on the Amazon Web Services access key ID used to sign the
%% request. This operation
%% works for access keys under the Amazon Web Services account. Consequently,
%% you can use this operation
%% to manage Amazon Web Services account root user credentials even if the
%% Amazon Web Services account has no associated
%% users.
-spec update_signing_certificate(aws_client:aws_client(), update_signing_certificate_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_signing_certificate_errors(), tuple()}.
update_signing_certificate(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_signing_certificate(Client, Input, []).

-spec update_signing_certificate(aws_client:aws_client(), update_signing_certificate_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_signing_certificate_errors(), tuple()}.
update_signing_certificate(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateSigningCertificate">>, Input, Options).

%% @doc Sets the status of an IAM user's SSH public key to active or
%% inactive.
%%
%% SSH public
%% keys that are inactive cannot be used for authentication. This operation
%% can be used to
%% disable a user's SSH public key as part of a key rotation work flow.
%%
%% The SSH public key affected by this operation is used only for
%% authenticating the
%% associated IAM user to an CodeCommit repository. For more information
%% about using SSH keys
%% to authenticate to an CodeCommit repository, see Set up CodeCommit for
%% SSH connections:
%% https://docs.aws.amazon.com/codecommit/latest/userguide/setting-up-credentials-ssh.html
%% in the CodeCommit User Guide.
-spec update_ssh_public_key(aws_client:aws_client(), update_ssh_public_key_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_ssh_public_key_errors(), tuple()}.
update_ssh_public_key(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_ssh_public_key(Client, Input, []).

-spec update_ssh_public_key(aws_client:aws_client(), update_ssh_public_key_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_ssh_public_key_errors(), tuple()}.
update_ssh_public_key(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateSSHPublicKey">>, Input, Options).

%% @doc Updates the name and/or the path of the specified IAM user.
%%
%% You should understand the implications of changing an IAM user's path
%% or
%% name. For more information, see Renaming an IAM
%% user:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_users_manage.html#id_users_renaming
%% and Renaming an IAM
%% group:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_groups_manage_rename.html
%% in the IAM User Guide.
%%
%% To change a user name, the requester must have appropriate permissions on
%% both
%% the source object and the target object. For example, to change Bob to
%% Robert, the
%% entity making the request must have permission on Bob and Robert, or must
%% have
%% permission on all (*). For more information about permissions, see
%% Permissions and policies:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/PermissionsAndPolicies.html.
-spec update_user(aws_client:aws_client(), update_user_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_user_errors(), tuple()}.
update_user(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_user(Client, Input, []).

-spec update_user(aws_client:aws_client(), update_user_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_user_errors(), tuple()}.
update_user(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateUser">>, Input, Options).

%% @doc Uploads a server certificate entity for the Amazon Web Services
%% account.
%%
%% The server certificate
%% entity includes a public key certificate, a private key, and an optional
%% certificate
%% chain, which should all be PEM-encoded.
%%
%% We recommend that you use Certificate Manager:
%% https://docs.aws.amazon.com/acm/ to
%% provision, manage, and deploy your server certificates. With ACM you can
%% request a
%% certificate, deploy it to Amazon Web Services resources, and let ACM
%% handle certificate renewals for
%% you. Certificates provided by ACM are free. For more information about
%% using ACM,
%% see the Certificate Manager User
%% Guide: https://docs.aws.amazon.com/acm/latest/userguide/.
%%
%% For more information about working with server certificates, see Working
%% with server certificates:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html
%% in the IAM User Guide. This
%% topic includes a list of Amazon Web Services services that can use the
%% server certificates that you
%% manage with IAM.
%%
%% For information about the number of server certificates you can upload,
%% see IAM and STS
%% quotas:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html
%% in the IAM User Guide.
%%
%% Because the body of the public key certificate, private key, and the
%% certificate
%% chain can be large, you should use POST rather than GET when calling
%% `UploadServerCertificate'. For information about setting up
%% signatures and authorization through the API, see Signing Amazon Web
%% Services API
%% requests:
%% https://docs.aws.amazon.com/general/latest/gr/signing_aws_api_requests.html
%% in the Amazon Web Services General Reference. For general
%% information about using the Query API with IAM, see Calling the API by
%% making HTTP query
%% requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/programming.html in the
%% IAM User Guide.
-spec upload_server_certificate(aws_client:aws_client(), upload_server_certificate_request()) ->
    {ok, upload_server_certificate_response(), tuple()} |
    {error, any()} |
    {error, upload_server_certificate_errors(), tuple()}.
upload_server_certificate(Client, Input)
  when is_map(Client), is_map(Input) ->
    upload_server_certificate(Client, Input, []).

-spec upload_server_certificate(aws_client:aws_client(), upload_server_certificate_request(), proplists:proplist()) ->
    {ok, upload_server_certificate_response(), tuple()} |
    {error, any()} |
    {error, upload_server_certificate_errors(), tuple()}.
upload_server_certificate(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UploadServerCertificate">>, Input, Options).

%% @doc Uploads an X.509 signing certificate and associates it with the
%% specified IAM user.
%%
%% Some Amazon Web Services services require you to use certificates to
%% validate requests that are signed
%% with a corresponding private key. When you upload the certificate, its
%% default status is
%% `Active'.
%%
%% For information about when you would use an X.509 signing certificate, see
%% Managing
%% server certificates in IAM:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html
%% in the
%% IAM User Guide.
%%
%% If the `UserName' is not specified, the IAM user name is determined
%% implicitly based on the Amazon Web Services access key ID used to sign the
%% request. This operation
%% works for access keys under the Amazon Web Services account. Consequently,
%% you can use this operation
%% to manage Amazon Web Services account root user credentials even if the
%% Amazon Web Services account has no associated
%% users.
%%
%% Because the body of an X.509 certificate can be large, you should use POST
%% rather
%% than GET when calling `UploadSigningCertificate'. For information
%% about
%% setting up signatures and authorization through the API, see Signing
%% Amazon Web Services API requests:
%% https://docs.aws.amazon.com/general/latest/gr/signing_aws_api_requests.html
%% in the Amazon Web Services General Reference. For
%% general information about using the Query API with IAM, see Making query
%% requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/IAM_UsingQueryAPI.html in
%% the IAM User Guide.
-spec upload_signing_certificate(aws_client:aws_client(), upload_signing_certificate_request()) ->
    {ok, upload_signing_certificate_response(), tuple()} |
    {error, any()} |
    {error, upload_signing_certificate_errors(), tuple()}.
upload_signing_certificate(Client, Input)
  when is_map(Client), is_map(Input) ->
    upload_signing_certificate(Client, Input, []).

-spec upload_signing_certificate(aws_client:aws_client(), upload_signing_certificate_request(), proplists:proplist()) ->
    {ok, upload_signing_certificate_response(), tuple()} |
    {error, any()} |
    {error, upload_signing_certificate_errors(), tuple()}.
upload_signing_certificate(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UploadSigningCertificate">>, Input, Options).

%% @doc Uploads an SSH public key and associates it with the specified IAM
%% user.
%%
%% The SSH public key uploaded by this operation can be used only for
%% authenticating the
%% associated IAM user to an CodeCommit repository. For more information
%% about using SSH keys
%% to authenticate to an CodeCommit repository, see Set up CodeCommit for
%% SSH connections:
%% https://docs.aws.amazon.com/codecommit/latest/userguide/setting-up-credentials-ssh.html
%% in the CodeCommit User Guide.
-spec upload_ssh_public_key(aws_client:aws_client(), upload_ssh_public_key_request()) ->
    {ok, upload_ssh_public_key_response(), tuple()} |
    {error, any()} |
    {error, upload_ssh_public_key_errors(), tuple()}.
upload_ssh_public_key(Client, Input)
  when is_map(Client), is_map(Input) ->
    upload_ssh_public_key(Client, Input, []).

-spec upload_ssh_public_key(aws_client:aws_client(), upload_ssh_public_key_request(), proplists:proplist()) ->
    {ok, upload_ssh_public_key_response(), tuple()} |
    {error, any()} |
    {error, upload_ssh_public_key_errors(), tuple()}.
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
    Proto = aws_client:proto(Client),
    Port = aws_client:port(Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
