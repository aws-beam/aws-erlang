%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc IAM Identity Center is the Amazon Web Services solution for
%% connecting your workforce users to Amazon Web Services managed
%% applications and other Amazon Web Services resources.
%%
%% You can connect your existing identity provider and synchronize users and
%% groups from your directory, or create and manage your users directly in
%% IAM Identity Center. You can then use IAM Identity Center for either or
%% both of the following:
%%
%% User access to applications
%%
%% User access to Amazon Web Services accounts
%%
%% This guide provides information about single sign-on operations that you
%% can use for access to applications and Amazon Web Services accounts. For
%% information about IAM Identity Center features, see the IAM Identity
%% Center User Guide:
%% https://docs.aws.amazon.com/singlesignon/latest/userguide/what-is.html.
%%
%% IAM Identity Center uses the `sso' and `identitystore' API
%% namespaces.
%%
%% Many API operations for IAM Identity Center rely on identifiers for users
%% and groups, known as principals. For more information about how to work
%% with principals and principal IDs in IAM Identity Center, see the Identity
%% Store API Reference:
%% https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/welcome.html.
%%
%% Amazon Web Services provides SDKs that consist of libraries and sample
%% code for various programming languages and platforms (Java, Ruby, .Net,
%% iOS, Android, and more). The SDKs provide a convenient way to create
%% programmatic access to IAM Identity Center and other Amazon Web Services
%% services. For more information about the Amazon Web Services SDKs,
%% including how to download and install them, see Tools for Amazon Web
%% Services: http://aws.amazon.com/tools/.
-module(aws_sso_admin).

-export([attach_customer_managed_policy_reference_to_permission_set/2,
         attach_customer_managed_policy_reference_to_permission_set/3,
         attach_managed_policy_to_permission_set/2,
         attach_managed_policy_to_permission_set/3,
         create_account_assignment/2,
         create_account_assignment/3,
         create_application/2,
         create_application/3,
         create_application_assignment/2,
         create_application_assignment/3,
         create_instance/2,
         create_instance/3,
         create_instance_access_control_attribute_configuration/2,
         create_instance_access_control_attribute_configuration/3,
         create_permission_set/2,
         create_permission_set/3,
         create_trusted_token_issuer/2,
         create_trusted_token_issuer/3,
         delete_account_assignment/2,
         delete_account_assignment/3,
         delete_application/2,
         delete_application/3,
         delete_application_access_scope/2,
         delete_application_access_scope/3,
         delete_application_assignment/2,
         delete_application_assignment/3,
         delete_application_authentication_method/2,
         delete_application_authentication_method/3,
         delete_application_grant/2,
         delete_application_grant/3,
         delete_inline_policy_from_permission_set/2,
         delete_inline_policy_from_permission_set/3,
         delete_instance/2,
         delete_instance/3,
         delete_instance_access_control_attribute_configuration/2,
         delete_instance_access_control_attribute_configuration/3,
         delete_permission_set/2,
         delete_permission_set/3,
         delete_permissions_boundary_from_permission_set/2,
         delete_permissions_boundary_from_permission_set/3,
         delete_trusted_token_issuer/2,
         delete_trusted_token_issuer/3,
         describe_account_assignment_creation_status/2,
         describe_account_assignment_creation_status/3,
         describe_account_assignment_deletion_status/2,
         describe_account_assignment_deletion_status/3,
         describe_application/2,
         describe_application/3,
         describe_application_assignment/2,
         describe_application_assignment/3,
         describe_application_provider/2,
         describe_application_provider/3,
         describe_instance/2,
         describe_instance/3,
         describe_instance_access_control_attribute_configuration/2,
         describe_instance_access_control_attribute_configuration/3,
         describe_permission_set/2,
         describe_permission_set/3,
         describe_permission_set_provisioning_status/2,
         describe_permission_set_provisioning_status/3,
         describe_trusted_token_issuer/2,
         describe_trusted_token_issuer/3,
         detach_customer_managed_policy_reference_from_permission_set/2,
         detach_customer_managed_policy_reference_from_permission_set/3,
         detach_managed_policy_from_permission_set/2,
         detach_managed_policy_from_permission_set/3,
         get_application_access_scope/2,
         get_application_access_scope/3,
         get_application_assignment_configuration/2,
         get_application_assignment_configuration/3,
         get_application_authentication_method/2,
         get_application_authentication_method/3,
         get_application_grant/2,
         get_application_grant/3,
         get_application_session_configuration/2,
         get_application_session_configuration/3,
         get_inline_policy_for_permission_set/2,
         get_inline_policy_for_permission_set/3,
         get_permissions_boundary_for_permission_set/2,
         get_permissions_boundary_for_permission_set/3,
         list_account_assignment_creation_status/2,
         list_account_assignment_creation_status/3,
         list_account_assignment_deletion_status/2,
         list_account_assignment_deletion_status/3,
         list_account_assignments/2,
         list_account_assignments/3,
         list_account_assignments_for_principal/2,
         list_account_assignments_for_principal/3,
         list_accounts_for_provisioned_permission_set/2,
         list_accounts_for_provisioned_permission_set/3,
         list_application_access_scopes/2,
         list_application_access_scopes/3,
         list_application_assignments/2,
         list_application_assignments/3,
         list_application_assignments_for_principal/2,
         list_application_assignments_for_principal/3,
         list_application_authentication_methods/2,
         list_application_authentication_methods/3,
         list_application_grants/2,
         list_application_grants/3,
         list_application_providers/2,
         list_application_providers/3,
         list_applications/2,
         list_applications/3,
         list_customer_managed_policy_references_in_permission_set/2,
         list_customer_managed_policy_references_in_permission_set/3,
         list_instances/2,
         list_instances/3,
         list_managed_policies_in_permission_set/2,
         list_managed_policies_in_permission_set/3,
         list_permission_set_provisioning_status/2,
         list_permission_set_provisioning_status/3,
         list_permission_sets/2,
         list_permission_sets/3,
         list_permission_sets_provisioned_to_account/2,
         list_permission_sets_provisioned_to_account/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         list_trusted_token_issuers/2,
         list_trusted_token_issuers/3,
         provision_permission_set/2,
         provision_permission_set/3,
         put_application_access_scope/2,
         put_application_access_scope/3,
         put_application_assignment_configuration/2,
         put_application_assignment_configuration/3,
         put_application_authentication_method/2,
         put_application_authentication_method/3,
         put_application_grant/2,
         put_application_grant/3,
         put_application_session_configuration/2,
         put_application_session_configuration/3,
         put_inline_policy_to_permission_set/2,
         put_inline_policy_to_permission_set/3,
         put_permissions_boundary_to_permission_set/2,
         put_permissions_boundary_to_permission_set/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_application/2,
         update_application/3,
         update_instance/2,
         update_instance/3,
         update_instance_access_control_attribute_configuration/2,
         update_instance_access_control_attribute_configuration/3,
         update_permission_set/2,
         update_permission_set/3,
         update_trusted_token_issuer/2,
         update_trusted_token_issuer/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% list_trusted_token_issuers_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"TrustedTokenIssuers">> => list(trusted_token_issuer_metadata())
%% }
-type list_trusted_token_issuers_response() :: #{binary() => any()}.

%% Example:
%% authentication_method_item() :: #{
%%   <<"AuthenticationMethod">> => list(),
%%   <<"AuthenticationMethodType">> => list(any())
%% }
-type authentication_method_item() :: #{binary() => any()}.

%% Example:
%% create_instance_access_control_attribute_configuration_response() :: #{

%% }
-type create_instance_access_control_attribute_configuration_response() :: #{binary() => any()}.

%% Example:
%% scope_details() :: #{
%%   <<"AuthorizedTargets">> => list(string()),
%%   <<"Scope">> => string()
%% }
-type scope_details() :: #{binary() => any()}.

%% Example:
%% tag_resource_request() :: #{
%%   <<"InstanceArn">> => string(),
%%   <<"ResourceArn">> := string(),
%%   <<"Tags">> := list(tag())
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% instance_metadata() :: #{
%%   <<"CreatedDate">> => non_neg_integer(),
%%   <<"IdentityStoreId">> => string(),
%%   <<"InstanceArn">> => string(),
%%   <<"Name">> => string(),
%%   <<"OwnerAccountId">> => string(),
%%   <<"Status">> => list(any())
%% }
-type instance_metadata() :: #{binary() => any()}.

%% Example:
%% application_assignment() :: #{
%%   <<"ApplicationArn">> => string(),
%%   <<"PrincipalId">> => string(),
%%   <<"PrincipalType">> => list(any())
%% }
-type application_assignment() :: #{binary() => any()}.

%% Example:
%% list_accounts_for_provisioned_permission_set_request() :: #{
%%   <<"InstanceArn">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"PermissionSetArn">> := string(),
%%   <<"ProvisioningStatus">> => list(any())
%% }
-type list_accounts_for_provisioned_permission_set_request() :: #{binary() => any()}.

%% Example:
%% list_application_assignments_filter() :: #{
%%   <<"ApplicationArn">> => string()
%% }
-type list_application_assignments_filter() :: #{binary() => any()}.

%% Example:
%% application_provider() :: #{
%%   <<"ApplicationProviderArn">> => string(),
%%   <<"DisplayData">> => display_data(),
%%   <<"FederationProtocol">> => list(any()),
%%   <<"ResourceServerConfig">> => resource_server_config()
%% }
-type application_provider() :: #{binary() => any()}.

%% Example:
%% list_application_authentication_methods_request() :: #{
%%   <<"ApplicationArn">> := string(),
%%   <<"NextToken">> => string()
%% }
-type list_application_authentication_methods_request() :: #{binary() => any()}.

%% Example:
%% put_application_session_configuration_request() :: #{
%%   <<"ApplicationArn">> := string(),
%%   <<"UserBackgroundSessionApplicationStatus">> => list(any())
%% }
-type put_application_session_configuration_request() :: #{binary() => any()}.

%% Example:
%% list_accounts_for_provisioned_permission_set_response() :: #{
%%   <<"AccountIds">> => list(string()),
%%   <<"NextToken">> => string()
%% }
-type list_accounts_for_provisioned_permission_set_response() :: #{binary() => any()}.

%% Example:
%% account_assignment_operation_status_metadata() :: #{
%%   <<"CreatedDate">> => non_neg_integer(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => list(any())
%% }
-type account_assignment_operation_status_metadata() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{

%% }
-type untag_resource_response() :: #{binary() => any()}.

%% Example:
%% list_application_assignments_for_principal_request() :: #{
%%   <<"Filter">> => list_application_assignments_filter(),
%%   <<"InstanceArn">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"PrincipalId">> := string(),
%%   <<"PrincipalType">> := list(any())
%% }
-type list_application_assignments_for_principal_request() :: #{binary() => any()}.

%% Example:
%% list_managed_policies_in_permission_set_request() :: #{
%%   <<"InstanceArn">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"PermissionSetArn">> := string()
%% }
-type list_managed_policies_in_permission_set_request() :: #{binary() => any()}.

%% Example:
%% list_account_assignment_deletion_status_response() :: #{
%%   <<"AccountAssignmentsDeletionStatus">> => list(account_assignment_operation_status_metadata()),
%%   <<"NextToken">> => string()
%% }
-type list_account_assignment_deletion_status_response() :: #{binary() => any()}.

%% Example:
%% account_assignment_for_principal() :: #{
%%   <<"AccountId">> => string(),
%%   <<"PermissionSetArn">> => string(),
%%   <<"PrincipalId">> => string(),
%%   <<"PrincipalType">> => list(any())
%% }
-type account_assignment_for_principal() :: #{binary() => any()}.

%% Example:
%% get_inline_policy_for_permission_set_request() :: #{
%%   <<"InstanceArn">> := string(),
%%   <<"PermissionSetArn">> := string()
%% }
-type get_inline_policy_for_permission_set_request() :: #{binary() => any()}.

%% Example:
%% put_inline_policy_to_permission_set_request() :: #{
%%   <<"InlinePolicy">> := string(),
%%   <<"InstanceArn">> := string(),
%%   <<"PermissionSetArn">> := string()
%% }
-type put_inline_policy_to_permission_set_request() :: #{binary() => any()}.

%% Example:
%% trusted_token_issuer_metadata() :: #{
%%   <<"Name">> => string(),
%%   <<"TrustedTokenIssuerArn">> => string(),
%%   <<"TrustedTokenIssuerType">> => list(any())
%% }
-type trusted_token_issuer_metadata() :: #{binary() => any()}.

%% Example:
%% get_inline_policy_for_permission_set_response() :: #{
%%   <<"InlinePolicy">> => string()
%% }
-type get_inline_policy_for_permission_set_response() :: #{binary() => any()}.

%% Example:
%% iam_authentication_method() :: #{
%%   <<"ActorPolicy">> => any()
%% }
-type iam_authentication_method() :: #{binary() => any()}.

%% Example:
%% put_permissions_boundary_to_permission_set_response() :: #{

%% }
-type put_permissions_boundary_to_permission_set_response() :: #{binary() => any()}.

%% Example:
%% detach_customer_managed_policy_reference_from_permission_set_response() :: #{

%% }
-type detach_customer_managed_policy_reference_from_permission_set_response() :: #{binary() => any()}.

%% Example:
%% list_application_access_scopes_request() :: #{
%%   <<"ApplicationArn">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_application_access_scopes_request() :: #{binary() => any()}.

%% Example:
%% list_permission_sets_provisioned_to_account_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"PermissionSets">> => list(string())
%% }
-type list_permission_sets_provisioned_to_account_response() :: #{binary() => any()}.

%% Example:
%% delete_application_authentication_method_request() :: #{
%%   <<"ApplicationArn">> := string(),
%%   <<"AuthenticationMethodType">> := list(any())
%% }
-type delete_application_authentication_method_request() :: #{binary() => any()}.

%% Example:
%% delete_application_assignment_request() :: #{
%%   <<"ApplicationArn">> := string(),
%%   <<"PrincipalId">> := string(),
%%   <<"PrincipalType">> := list(any())
%% }
-type delete_application_assignment_request() :: #{binary() => any()}.

%% Example:
%% get_application_grant_response() :: #{
%%   <<"Grant">> => list()
%% }
-type get_application_grant_response() :: #{binary() => any()}.

%% Example:
%% list_application_assignments_request() :: #{
%%   <<"ApplicationArn">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_application_assignments_request() :: #{binary() => any()}.

%% Example:
%% describe_application_assignment_request() :: #{
%%   <<"ApplicationArn">> := string(),
%%   <<"PrincipalId">> := string(),
%%   <<"PrincipalType">> := list(any())
%% }
-type describe_application_assignment_request() :: #{binary() => any()}.

%% Example:
%% put_application_assignment_configuration_request() :: #{
%%   <<"ApplicationArn">> := string(),
%%   <<"AssignmentRequired">> := boolean()
%% }
-type put_application_assignment_configuration_request() :: #{binary() => any()}.

%% Example:
%% sign_in_options() :: #{
%%   <<"ApplicationUrl">> => string(),
%%   <<"Origin">> => list(any())
%% }
-type sign_in_options() :: #{binary() => any()}.

%% Example:
%% operation_status_filter() :: #{
%%   <<"Status">> => list(any())
%% }
-type operation_status_filter() :: #{binary() => any()}.

%% Example:
%% create_instance_response() :: #{
%%   <<"InstanceArn">> => string()
%% }
-type create_instance_response() :: #{binary() => any()}.

%% Example:
%% get_application_authentication_method_response() :: #{
%%   <<"AuthenticationMethod">> => list()
%% }
-type get_application_authentication_method_response() :: #{binary() => any()}.

%% Example:
%% list_trusted_token_issuers_request() :: #{
%%   <<"InstanceArn">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_trusted_token_issuers_request() :: #{binary() => any()}.

%% Example:
%% list_application_access_scopes_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Scopes">> => list(scope_details())
%% }
-type list_application_access_scopes_response() :: #{binary() => any()}.

%% Example:
%% put_application_session_configuration_response() :: #{

%% }
-type put_application_session_configuration_response() :: #{binary() => any()}.

%% Example:
%% list_permission_set_provisioning_status_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"PermissionSetsProvisioningStatus">> => list(permission_set_provisioning_status_metadata())
%% }
-type list_permission_set_provisioning_status_response() :: #{binary() => any()}.

%% Example:
%% untag_resource_request() :: #{
%%   <<"InstanceArn">> => string(),
%%   <<"ResourceArn">> := string(),
%%   <<"TagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% list_permission_set_provisioning_status_request() :: #{
%%   <<"Filter">> => operation_status_filter(),
%%   <<"InstanceArn">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_permission_set_provisioning_status_request() :: #{binary() => any()}.

%% Example:
%% update_trusted_token_issuer_request() :: #{
%%   <<"Name">> => string(),
%%   <<"TrustedTokenIssuerArn">> := string(),
%%   <<"TrustedTokenIssuerConfiguration">> => list()
%% }
-type update_trusted_token_issuer_request() :: #{binary() => any()}.

%% Example:
%% describe_application_provider_response() :: #{
%%   <<"ApplicationProviderArn">> => string(),
%%   <<"DisplayData">> => display_data(),
%%   <<"FederationProtocol">> => list(any()),
%%   <<"ResourceServerConfig">> => resource_server_config()
%% }
-type describe_application_provider_response() :: #{binary() => any()}.

%% Example:
%% get_application_access_scope_response() :: #{
%%   <<"AuthorizedTargets">> => list(string()),
%%   <<"Scope">> => string()
%% }
-type get_application_access_scope_response() :: #{binary() => any()}.

%% Example:
%% delete_application_grant_request() :: #{
%%   <<"ApplicationArn">> := string(),
%%   <<"GrantType">> := list(any())
%% }
-type delete_application_grant_request() :: #{binary() => any()}.

%% Example:
%% permission_set() :: #{
%%   <<"CreatedDate">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"Name">> => string(),
%%   <<"PermissionSetArn">> => string(),
%%   <<"RelayState">> => string(),
%%   <<"SessionDuration">> => string()
%% }
-type permission_set() :: #{binary() => any()}.

%% Example:
%% list_application_providers_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_application_providers_request() :: #{binary() => any()}.

%% Example:
%% describe_account_assignment_deletion_status_response() :: #{
%%   <<"AccountAssignmentDeletionStatus">> => account_assignment_operation_status()
%% }
-type describe_account_assignment_deletion_status_response() :: #{binary() => any()}.

%% Example:
%% list_account_assignments_filter() :: #{
%%   <<"AccountId">> => string()
%% }
-type list_account_assignments_filter() :: #{binary() => any()}.

%% Example:
%% list_customer_managed_policy_references_in_permission_set_response() :: #{
%%   <<"CustomerManagedPolicyReferences">> => list(customer_managed_policy_reference()),
%%   <<"NextToken">> => string()
%% }
-type list_customer_managed_policy_references_in_permission_set_response() :: #{binary() => any()}.

%% Example:
%% list_application_grants_response() :: #{
%%   <<"Grants">> => list(grant_item()),
%%   <<"NextToken">> => string()
%% }
-type list_application_grants_response() :: #{binary() => any()}.

%% Example:
%% create_permission_set_request() :: #{
%%   <<"Description">> => string(),
%%   <<"InstanceArn">> := string(),
%%   <<"Name">> := string(),
%%   <<"RelayState">> => string(),
%%   <<"SessionDuration">> => string(),
%%   <<"Tags">> => list(tag())
%% }
-type create_permission_set_request() :: #{binary() => any()}.

%% Example:
%% put_application_assignment_configuration_response() :: #{

%% }
-type put_application_assignment_configuration_response() :: #{binary() => any()}.

%% Example:
%% list_managed_policies_in_permission_set_response() :: #{
%%   <<"AttachedManagedPolicies">> => list(attached_managed_policy()),
%%   <<"NextToken">> => string()
%% }
-type list_managed_policies_in_permission_set_response() :: #{binary() => any()}.

%% Example:
%% list_account_assignments_request() :: #{
%%   <<"AccountId">> := string(),
%%   <<"InstanceArn">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"PermissionSetArn">> := string()
%% }
-type list_account_assignments_request() :: #{binary() => any()}.

%% Example:
%% describe_application_assignment_response() :: #{
%%   <<"ApplicationArn">> => string(),
%%   <<"PrincipalId">> => string(),
%%   <<"PrincipalType">> => list(any())
%% }
-type describe_application_assignment_response() :: #{binary() => any()}.

%% Example:
%% get_application_access_scope_request() :: #{
%%   <<"ApplicationArn">> := string(),
%%   <<"Scope">> := string()
%% }
-type get_application_access_scope_request() :: #{binary() => any()}.

%% Example:
%% update_application_portal_options() :: #{
%%   <<"SignInOptions">> => sign_in_options()
%% }
-type update_application_portal_options() :: #{binary() => any()}.

%% Example:
%% delete_application_assignment_response() :: #{

%% }
-type delete_application_assignment_response() :: #{binary() => any()}.

%% Example:
%% application_assignment_for_principal() :: #{
%%   <<"ApplicationArn">> => string(),
%%   <<"PrincipalId">> => string(),
%%   <<"PrincipalType">> => list(any())
%% }
-type application_assignment_for_principal() :: #{binary() => any()}.

%% Example:
%% update_permission_set_response() :: #{

%% }
-type update_permission_set_response() :: #{binary() => any()}.

%% Example:
%% access_control_attribute_value() :: #{
%%   <<"Source">> => list(string())
%% }
-type access_control_attribute_value() :: #{binary() => any()}.

%% Example:
%% delete_account_assignment_request() :: #{
%%   <<"InstanceArn">> := string(),
%%   <<"PermissionSetArn">> := string(),
%%   <<"PrincipalId">> := string(),
%%   <<"PrincipalType">> := list(any()),
%%   <<"TargetId">> := string(),
%%   <<"TargetType">> := list(any())
%% }
-type delete_account_assignment_request() :: #{binary() => any()}.

%% Example:
%% get_application_authentication_method_request() :: #{
%%   <<"ApplicationArn">> := string(),
%%   <<"AuthenticationMethodType">> := list(any())
%% }
-type get_application_authentication_method_request() :: #{binary() => any()}.

%% Example:
%% conflict_exception() :: #{
%%   <<"Message">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.

%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% provision_permission_set_response() :: #{
%%   <<"PermissionSetProvisioningStatus">> => permission_set_provisioning_status()
%% }
-type provision_permission_set_response() :: #{binary() => any()}.

%% Example:
%% jwt_bearer_grant() :: #{
%%   <<"AuthorizedTokenIssuers">> => list(authorized_token_issuer())
%% }
-type jwt_bearer_grant() :: #{binary() => any()}.

%% Example:
%% create_account_assignment_response() :: #{
%%   <<"AccountAssignmentCreationStatus">> => account_assignment_operation_status()
%% }
-type create_account_assignment_response() :: #{binary() => any()}.

%% Example:
%% get_application_session_configuration_response() :: #{
%%   <<"UserBackgroundSessionApplicationStatus">> => list(any())
%% }
-type get_application_session_configuration_response() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% get_application_grant_request() :: #{
%%   <<"ApplicationArn">> := string(),
%%   <<"GrantType">> := list(any())
%% }
-type get_application_grant_request() :: #{binary() => any()}.

%% Example:
%% update_instance_access_control_attribute_configuration_response() :: #{

%% }
-type update_instance_access_control_attribute_configuration_response() :: #{binary() => any()}.

%% Example:
%% detach_managed_policy_from_permission_set_request() :: #{
%%   <<"InstanceArn">> := string(),
%%   <<"ManagedPolicyArn">> := string(),
%%   <<"PermissionSetArn">> := string()
%% }
-type detach_managed_policy_from_permission_set_request() :: #{binary() => any()}.

%% Example:
%% describe_instance_request() :: #{
%%   <<"InstanceArn">> := string()
%% }
-type describe_instance_request() :: #{binary() => any()}.

%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"Message">> => string()
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% authorization_code_grant() :: #{
%%   <<"RedirectUris">> => list(string())
%% }
-type authorization_code_grant() :: #{binary() => any()}.

%% Example:
%% permissions_boundary() :: #{
%%   <<"CustomerManagedPolicyReference">> => customer_managed_policy_reference(),
%%   <<"ManagedPolicyArn">> => string()
%% }
-type permissions_boundary() :: #{binary() => any()}.

%% Example:
%% put_inline_policy_to_permission_set_response() :: #{

%% }
-type put_inline_policy_to_permission_set_response() :: #{binary() => any()}.

%% Example:
%% provision_permission_set_request() :: #{
%%   <<"InstanceArn">> := string(),
%%   <<"PermissionSetArn">> := string(),
%%   <<"TargetId">> => string(),
%%   <<"TargetType">> := list(any())
%% }
-type provision_permission_set_request() :: #{binary() => any()}.

%% Example:
%% create_application_assignment_response() :: #{

%% }
-type create_application_assignment_response() :: #{binary() => any()}.

%% Example:
%% list_application_providers_response() :: #{
%%   <<"ApplicationProviders">> => list(application_provider()),
%%   <<"NextToken">> => string()
%% }
-type list_application_providers_response() :: #{binary() => any()}.

%% Example:
%% application() :: #{
%%   <<"ApplicationAccount">> => string(),
%%   <<"ApplicationArn">> => string(),
%%   <<"ApplicationProviderArn">> => string(),
%%   <<"CreatedDate">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"InstanceArn">> => string(),
%%   <<"Name">> => string(),
%%   <<"PortalOptions">> => portal_options(),
%%   <<"Status">> => list(any())
%% }
-type application() :: #{binary() => any()}.

%% Example:
%% update_instance_request() :: #{
%%   <<"InstanceArn">> := string(),
%%   <<"Name">> := string()
%% }
-type update_instance_request() :: #{binary() => any()}.

%% Example:
%% delete_inline_policy_from_permission_set_response() :: #{

%% }
-type delete_inline_policy_from_permission_set_response() :: #{binary() => any()}.

%% Example:
%% delete_instance_access_control_attribute_configuration_request() :: #{
%%   <<"InstanceArn">> := string()
%% }
-type delete_instance_access_control_attribute_configuration_request() :: #{binary() => any()}.

%% Example:
%% oidc_jwt_configuration() :: #{
%%   <<"ClaimAttributePath">> => string(),
%%   <<"IdentityStoreAttributePath">> => string(),
%%   <<"IssuerUrl">> => string(),
%%   <<"JwksRetrievalOption">> => list(any())
%% }
-type oidc_jwt_configuration() :: #{binary() => any()}.

%% Example:
%% describe_trusted_token_issuer_response() :: #{
%%   <<"Name">> => string(),
%%   <<"TrustedTokenIssuerArn">> => string(),
%%   <<"TrustedTokenIssuerConfiguration">> => list(),
%%   <<"TrustedTokenIssuerType">> => list(any())
%% }
-type describe_trusted_token_issuer_response() :: #{binary() => any()}.

%% Example:
%% create_trusted_token_issuer_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"InstanceArn">> := string(),
%%   <<"Name">> := string(),
%%   <<"Tags">> => list(tag()),
%%   <<"TrustedTokenIssuerConfiguration">> := list(),
%%   <<"TrustedTokenIssuerType">> := list(any())
%% }
-type create_trusted_token_issuer_request() :: #{binary() => any()}.

%% Example:
%% describe_permission_set_provisioning_status_response() :: #{
%%   <<"PermissionSetProvisioningStatus">> => permission_set_provisioning_status()
%% }
-type describe_permission_set_provisioning_status_response() :: #{binary() => any()}.

%% Example:
%% permission_set_provisioning_status() :: #{
%%   <<"AccountId">> => string(),
%%   <<"CreatedDate">> => non_neg_integer(),
%%   <<"FailureReason">> => string(),
%%   <<"PermissionSetArn">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => list(any())
%% }
-type permission_set_provisioning_status() :: #{binary() => any()}.

%% Example:
%% list_account_assignment_creation_status_response() :: #{
%%   <<"AccountAssignmentsCreationStatus">> => list(account_assignment_operation_status_metadata()),
%%   <<"NextToken">> => string()
%% }
-type list_account_assignment_creation_status_response() :: #{binary() => any()}.

%% Example:
%% attached_managed_policy() :: #{
%%   <<"Arn">> => string(),
%%   <<"Name">> => string()
%% }
-type attached_managed_policy() :: #{binary() => any()}.

%% Example:
%% list_customer_managed_policy_references_in_permission_set_request() :: #{
%%   <<"InstanceArn">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"PermissionSetArn">> := string()
%% }
-type list_customer_managed_policy_references_in_permission_set_request() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Tags">> => list(tag())
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.

%% Example:
%% create_application_request() :: #{
%%   <<"ApplicationProviderArn">> := string(),
%%   <<"ClientToken">> => string(),
%%   <<"Description">> => string(),
%%   <<"InstanceArn">> := string(),
%%   <<"Name">> := string(),
%%   <<"PortalOptions">> => portal_options(),
%%   <<"Status">> => list(any()),
%%   <<"Tags">> => list(tag())
%% }
-type create_application_request() :: #{binary() => any()}.

%% Example:
%% grant_item() :: #{
%%   <<"Grant">> => list(),
%%   <<"GrantType">> => list(any())
%% }
-type grant_item() :: #{binary() => any()}.

%% Example:
%% describe_permission_set_response() :: #{
%%   <<"PermissionSet">> => permission_set()
%% }
-type describe_permission_set_response() :: #{binary() => any()}.

%% Example:
%% account_assignment_operation_status() :: #{
%%   <<"CreatedDate">> => non_neg_integer(),
%%   <<"FailureReason">> => string(),
%%   <<"PermissionSetArn">> => string(),
%%   <<"PrincipalId">> => string(),
%%   <<"PrincipalType">> => list(any()),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"TargetId">> => string(),
%%   <<"TargetType">> => list(any())
%% }
-type account_assignment_operation_status() :: #{binary() => any()}.

%% Example:
%% create_application_assignment_request() :: #{
%%   <<"ApplicationArn">> := string(),
%%   <<"PrincipalId">> := string(),
%%   <<"PrincipalType">> := list(any())
%% }
-type create_application_assignment_request() :: #{binary() => any()}.

%% Example:
%% list_account_assignments_for_principal_response() :: #{
%%   <<"AccountAssignments">> => list(account_assignment_for_principal()),
%%   <<"NextToken">> => string()
%% }
-type list_account_assignments_for_principal_response() :: #{binary() => any()}.

%% Example:
%% put_permissions_boundary_to_permission_set_request() :: #{
%%   <<"InstanceArn">> := string(),
%%   <<"PermissionSetArn">> := string(),
%%   <<"PermissionsBoundary">> := permissions_boundary()
%% }
-type put_permissions_boundary_to_permission_set_request() :: #{binary() => any()}.

%% Example:
%% delete_permissions_boundary_from_permission_set_request() :: #{
%%   <<"InstanceArn">> := string(),
%%   <<"PermissionSetArn">> := string()
%% }
-type delete_permissions_boundary_from_permission_set_request() :: #{binary() => any()}.

%% Example:
%% customer_managed_policy_reference() :: #{
%%   <<"Name">> => string(),
%%   <<"Path">> => string()
%% }
-type customer_managed_policy_reference() :: #{binary() => any()}.

%% Example:
%% create_application_response() :: #{
%%   <<"ApplicationArn">> => string()
%% }
-type create_application_response() :: #{binary() => any()}.

%% Example:
%% describe_permission_set_request() :: #{
%%   <<"InstanceArn">> := string(),
%%   <<"PermissionSetArn">> := string()
%% }
-type describe_permission_set_request() :: #{binary() => any()}.

%% Example:
%% delete_inline_policy_from_permission_set_request() :: #{
%%   <<"InstanceArn">> := string(),
%%   <<"PermissionSetArn">> := string()
%% }
-type delete_inline_policy_from_permission_set_request() :: #{binary() => any()}.

%% Example:
%% delete_permission_set_request() :: #{
%%   <<"InstanceArn">> := string(),
%%   <<"PermissionSetArn">> := string()
%% }
-type delete_permission_set_request() :: #{binary() => any()}.

%% Example:
%% list_instances_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_instances_request() :: #{binary() => any()}.

%% Example:
%% list_account_assignment_creation_status_request() :: #{
%%   <<"Filter">> => operation_status_filter(),
%%   <<"InstanceArn">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_account_assignment_creation_status_request() :: #{binary() => any()}.

%% Example:
%% delete_application_response() :: #{

%% }
-type delete_application_response() :: #{binary() => any()}.

%% Example:
%% update_permission_set_request() :: #{
%%   <<"Description">> => string(),
%%   <<"InstanceArn">> := string(),
%%   <<"PermissionSetArn">> := string(),
%%   <<"RelayState">> => string(),
%%   <<"SessionDuration">> => string()
%% }
-type update_permission_set_request() :: #{binary() => any()}.

%% Example:
%% get_permissions_boundary_for_permission_set_request() :: #{
%%   <<"InstanceArn">> := string(),
%%   <<"PermissionSetArn">> := string()
%% }
-type get_permissions_boundary_for_permission_set_request() :: #{binary() => any()}.

%% Example:
%% update_instance_access_control_attribute_configuration_request() :: #{
%%   <<"InstanceAccessControlAttributeConfiguration">> := instance_access_control_attribute_configuration(),
%%   <<"InstanceArn">> := string()
%% }
-type update_instance_access_control_attribute_configuration_request() :: #{binary() => any()}.

%% Example:
%% list_instances_response() :: #{
%%   <<"Instances">> => list(instance_metadata()),
%%   <<"NextToken">> => string()
%% }
-type list_instances_response() :: #{binary() => any()}.

%% Example:
%% put_application_authentication_method_request() :: #{
%%   <<"ApplicationArn">> := string(),
%%   <<"AuthenticationMethod">> := list(),
%%   <<"AuthenticationMethodType">> := list(any())
%% }
-type put_application_authentication_method_request() :: #{binary() => any()}.

%% Example:
%% update_application_request() :: #{
%%   <<"ApplicationArn">> := string(),
%%   <<"Description">> => string(),
%%   <<"Name">> => string(),
%%   <<"PortalOptions">> => update_application_portal_options(),
%%   <<"Status">> => list(any())
%% }
-type update_application_request() :: #{binary() => any()}.

%% Example:
%% update_application_response() :: #{

%% }
-type update_application_response() :: #{binary() => any()}.

%% Example:
%% portal_options() :: #{
%%   <<"SignInOptions">> => sign_in_options(),
%%   <<"Visibility">> => list(any())
%% }
-type portal_options() :: #{binary() => any()}.

%% Example:
%% internal_server_exception() :: #{
%%   <<"Message">> => string()
%% }
-type internal_server_exception() :: #{binary() => any()}.

%% Example:
%% list_application_assignments_for_principal_response() :: #{
%%   <<"ApplicationAssignments">> => list(application_assignment_for_principal()),
%%   <<"NextToken">> => string()
%% }
-type list_application_assignments_for_principal_response() :: #{binary() => any()}.

%% Example:
%% create_permission_set_response() :: #{
%%   <<"PermissionSet">> => permission_set()
%% }
-type create_permission_set_response() :: #{binary() => any()}.

%% Example:
%% describe_application_request() :: #{
%%   <<"ApplicationArn">> := string()
%% }
-type describe_application_request() :: #{binary() => any()}.

%% Example:
%% delete_instance_access_control_attribute_configuration_response() :: #{

%% }
-type delete_instance_access_control_attribute_configuration_response() :: #{binary() => any()}.

%% Example:
%% list_application_grants_request() :: #{
%%   <<"ApplicationArn">> := string(),
%%   <<"NextToken">> => string()
%% }
-type list_application_grants_request() :: #{binary() => any()}.

%% Example:
%% list_account_assignments_response() :: #{
%%   <<"AccountAssignments">> => list(account_assignment()),
%%   <<"NextToken">> => string()
%% }
-type list_account_assignments_response() :: #{binary() => any()}.

%% Example:
%% describe_account_assignment_creation_status_request() :: #{
%%   <<"AccountAssignmentCreationRequestId">> := string(),
%%   <<"InstanceArn">> := string()
%% }
-type describe_account_assignment_creation_status_request() :: #{binary() => any()}.

%% Example:
%% list_applications_request() :: #{
%%   <<"Filter">> => list_applications_filter(),
%%   <<"InstanceArn">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_applications_request() :: #{binary() => any()}.

%% Example:
%% list_application_assignments_response() :: #{
%%   <<"ApplicationAssignments">> => list(application_assignment()),
%%   <<"NextToken">> => string()
%% }
-type list_application_assignments_response() :: #{binary() => any()}.

%% Example:
%% delete_application_access_scope_request() :: #{
%%   <<"ApplicationArn">> := string(),
%%   <<"Scope">> := string()
%% }
-type delete_application_access_scope_request() :: #{binary() => any()}.

%% Example:
%% account_assignment() :: #{
%%   <<"AccountId">> => string(),
%%   <<"PermissionSetArn">> => string(),
%%   <<"PrincipalId">> => string(),
%%   <<"PrincipalType">> => list(any())
%% }
-type account_assignment() :: #{binary() => any()}.

%% Example:
%% create_instance_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"Name">> => string(),
%%   <<"Tags">> => list(tag())
%% }
-type create_instance_request() :: #{binary() => any()}.

%% Example:
%% describe_instance_response() :: #{
%%   <<"CreatedDate">> => non_neg_integer(),
%%   <<"IdentityStoreId">> => string(),
%%   <<"InstanceArn">> => string(),
%%   <<"Name">> => string(),
%%   <<"OwnerAccountId">> => string(),
%%   <<"Status">> => list(any())
%% }
-type describe_instance_response() :: #{binary() => any()}.

%% Example:
%% delete_trusted_token_issuer_request() :: #{
%%   <<"TrustedTokenIssuerArn">> := string()
%% }
-type delete_trusted_token_issuer_request() :: #{binary() => any()}.

%% Example:
%% list_account_assignments_for_principal_request() :: #{
%%   <<"Filter">> => list_account_assignments_filter(),
%%   <<"InstanceArn">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"PrincipalId">> := string(),
%%   <<"PrincipalType">> := list(any())
%% }
-type list_account_assignments_for_principal_request() :: #{binary() => any()}.

%% Example:
%% access_denied_exception() :: #{
%%   <<"Message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% get_permissions_boundary_for_permission_set_response() :: #{
%%   <<"PermissionsBoundary">> => permissions_boundary()
%% }
-type get_permissions_boundary_for_permission_set_response() :: #{binary() => any()}.

%% Example:
%% delete_account_assignment_response() :: #{
%%   <<"AccountAssignmentDeletionStatus">> => account_assignment_operation_status()
%% }
-type delete_account_assignment_response() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{

%% }
-type tag_resource_response() :: #{binary() => any()}.

%% Example:
%% access_control_attribute() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => access_control_attribute_value()
%% }
-type access_control_attribute() :: #{binary() => any()}.

%% Example:
%% get_application_assignment_configuration_request() :: #{
%%   <<"ApplicationArn">> := string()
%% }
-type get_application_assignment_configuration_request() :: #{binary() => any()}.

%% Example:
%% token_exchange_grant() :: #{

%% }
-type token_exchange_grant() :: #{binary() => any()}.

%% Example:
%% delete_instance_response() :: #{

%% }
-type delete_instance_response() :: #{binary() => any()}.

%% Example:
%% instance_access_control_attribute_configuration() :: #{
%%   <<"AccessControlAttributes">> => list(access_control_attribute())
%% }
-type instance_access_control_attribute_configuration() :: #{binary() => any()}.

%% Example:
%% list_applications_filter() :: #{
%%   <<"ApplicationAccount">> => string(),
%%   <<"ApplicationProvider">> => string()
%% }
-type list_applications_filter() :: #{binary() => any()}.

%% Example:
%% delete_permissions_boundary_from_permission_set_response() :: #{

%% }
-type delete_permissions_boundary_from_permission_set_response() :: #{binary() => any()}.

%% Example:
%% validation_exception() :: #{
%%   <<"Message">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{
%%   <<"InstanceArn">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"ResourceArn">> := string()
%% }
-type list_tags_for_resource_request() :: #{binary() => any()}.

%% Example:
%% display_data() :: #{
%%   <<"Description">> => string(),
%%   <<"DisplayName">> => string(),
%%   <<"IconUrl">> => string()
%% }
-type display_data() :: #{binary() => any()}.

%% Example:
%% list_application_authentication_methods_response() :: #{
%%   <<"AuthenticationMethods">> => list(authentication_method_item()),
%%   <<"NextToken">> => string()
%% }
-type list_application_authentication_methods_response() :: #{binary() => any()}.

%% Example:
%% oidc_jwt_update_configuration() :: #{
%%   <<"ClaimAttributePath">> => string(),
%%   <<"IdentityStoreAttributePath">> => string(),
%%   <<"JwksRetrievalOption">> => list(any())
%% }
-type oidc_jwt_update_configuration() :: #{binary() => any()}.

%% Example:
%% delete_permission_set_response() :: #{

%% }
-type delete_permission_set_response() :: #{binary() => any()}.

%% Example:
%% throttling_exception() :: #{
%%   <<"Message">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.

%% Example:
%% delete_instance_request() :: #{
%%   <<"InstanceArn">> := string()
%% }
-type delete_instance_request() :: #{binary() => any()}.

%% Example:
%% describe_account_assignment_creation_status_response() :: #{
%%   <<"AccountAssignmentCreationStatus">> => account_assignment_operation_status()
%% }
-type describe_account_assignment_creation_status_response() :: #{binary() => any()}.

%% Example:
%% list_account_assignment_deletion_status_request() :: #{
%%   <<"Filter">> => operation_status_filter(),
%%   <<"InstanceArn">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_account_assignment_deletion_status_request() :: #{binary() => any()}.

%% Example:
%% create_instance_access_control_attribute_configuration_request() :: #{
%%   <<"InstanceAccessControlAttributeConfiguration">> := instance_access_control_attribute_configuration(),
%%   <<"InstanceArn">> := string()
%% }
-type create_instance_access_control_attribute_configuration_request() :: #{binary() => any()}.

%% Example:
%% detach_customer_managed_policy_reference_from_permission_set_request() :: #{
%%   <<"CustomerManagedPolicyReference">> := customer_managed_policy_reference(),
%%   <<"InstanceArn">> := string(),
%%   <<"PermissionSetArn">> := string()
%% }
-type detach_customer_managed_policy_reference_from_permission_set_request() :: #{binary() => any()}.

%% Example:
%% get_application_session_configuration_request() :: #{
%%   <<"ApplicationArn">> := string()
%% }
-type get_application_session_configuration_request() :: #{binary() => any()}.

%% Example:
%% list_applications_response() :: #{
%%   <<"Applications">> => list(application()),
%%   <<"NextToken">> => string()
%% }
-type list_applications_response() :: #{binary() => any()}.

%% Example:
%% describe_account_assignment_deletion_status_request() :: #{
%%   <<"AccountAssignmentDeletionRequestId">> := string(),
%%   <<"InstanceArn">> := string()
%% }
-type describe_account_assignment_deletion_status_request() :: #{binary() => any()}.

%% Example:
%% attach_managed_policy_to_permission_set_request() :: #{
%%   <<"InstanceArn">> := string(),
%%   <<"ManagedPolicyArn">> := string(),
%%   <<"PermissionSetArn">> := string()
%% }
-type attach_managed_policy_to_permission_set_request() :: #{binary() => any()}.

%% Example:
%% permission_set_provisioning_status_metadata() :: #{
%%   <<"CreatedDate">> => non_neg_integer(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => list(any())
%% }
-type permission_set_provisioning_status_metadata() :: #{binary() => any()}.

%% Example:
%% attach_customer_managed_policy_reference_to_permission_set_request() :: #{
%%   <<"CustomerManagedPolicyReference">> := customer_managed_policy_reference(),
%%   <<"InstanceArn">> := string(),
%%   <<"PermissionSetArn">> := string()
%% }
-type attach_customer_managed_policy_reference_to_permission_set_request() :: #{binary() => any()}.

%% Example:
%% describe_trusted_token_issuer_request() :: #{
%%   <<"TrustedTokenIssuerArn">> := string()
%% }
-type describe_trusted_token_issuer_request() :: #{binary() => any()}.

%% Example:
%% put_application_grant_request() :: #{
%%   <<"ApplicationArn">> := string(),
%%   <<"Grant">> := list(),
%%   <<"GrantType">> := list(any())
%% }
-type put_application_grant_request() :: #{binary() => any()}.

%% Example:
%% describe_instance_access_control_attribute_configuration_response() :: #{
%%   <<"InstanceAccessControlAttributeConfiguration">> => instance_access_control_attribute_configuration(),
%%   <<"Status">> => list(any()),
%%   <<"StatusReason">> => string()
%% }
-type describe_instance_access_control_attribute_configuration_response() :: #{binary() => any()}.

%% Example:
%% list_permission_sets_request() :: #{
%%   <<"InstanceArn">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_permission_sets_request() :: #{binary() => any()}.

%% Example:
%% refresh_token_grant() :: #{

%% }
-type refresh_token_grant() :: #{binary() => any()}.

%% Example:
%% describe_permission_set_provisioning_status_request() :: #{
%%   <<"InstanceArn">> := string(),
%%   <<"ProvisionPermissionSetRequestId">> := string()
%% }
-type describe_permission_set_provisioning_status_request() :: #{binary() => any()}.

%% Example:
%% update_trusted_token_issuer_response() :: #{

%% }
-type update_trusted_token_issuer_response() :: #{binary() => any()}.

%% Example:
%% create_trusted_token_issuer_response() :: #{
%%   <<"TrustedTokenIssuerArn">> => string()
%% }
-type create_trusted_token_issuer_response() :: #{binary() => any()}.

%% Example:
%% update_instance_response() :: #{

%% }
-type update_instance_response() :: #{binary() => any()}.

%% Example:
%% delete_trusted_token_issuer_response() :: #{

%% }
-type delete_trusted_token_issuer_response() :: #{binary() => any()}.

%% Example:
%% put_application_access_scope_request() :: #{
%%   <<"ApplicationArn">> := string(),
%%   <<"AuthorizedTargets">> => list(string()),
%%   <<"Scope">> := string()
%% }
-type put_application_access_scope_request() :: #{binary() => any()}.

%% Example:
%% list_permission_sets_provisioned_to_account_request() :: #{
%%   <<"AccountId">> := string(),
%%   <<"InstanceArn">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ProvisioningStatus">> => list(any())
%% }
-type list_permission_sets_provisioned_to_account_request() :: #{binary() => any()}.

%% Example:
%% resource_server_config() :: #{
%%   <<"Scopes">> => map()
%% }
-type resource_server_config() :: #{binary() => any()}.

%% Example:
%% describe_application_provider_request() :: #{
%%   <<"ApplicationProviderArn">> := string()
%% }
-type describe_application_provider_request() :: #{binary() => any()}.

%% Example:
%% attach_customer_managed_policy_reference_to_permission_set_response() :: #{

%% }
-type attach_customer_managed_policy_reference_to_permission_set_response() :: #{binary() => any()}.

%% Example:
%% get_application_assignment_configuration_response() :: #{
%%   <<"AssignmentRequired">> => boolean()
%% }
-type get_application_assignment_configuration_response() :: #{binary() => any()}.

%% Example:
%% authorized_token_issuer() :: #{
%%   <<"AuthorizedAudiences">> => list(string()),
%%   <<"TrustedTokenIssuerArn">> => string()
%% }
-type authorized_token_issuer() :: #{binary() => any()}.

%% Example:
%% describe_instance_access_control_attribute_configuration_request() :: #{
%%   <<"InstanceArn">> := string()
%% }
-type describe_instance_access_control_attribute_configuration_request() :: #{binary() => any()}.

%% Example:
%% create_account_assignment_request() :: #{
%%   <<"InstanceArn">> := string(),
%%   <<"PermissionSetArn">> := string(),
%%   <<"PrincipalId">> := string(),
%%   <<"PrincipalType">> := list(any()),
%%   <<"TargetId">> := string(),
%%   <<"TargetType">> := list(any())
%% }
-type create_account_assignment_request() :: #{binary() => any()}.

%% Example:
%% list_permission_sets_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"PermissionSets">> => list(string())
%% }
-type list_permission_sets_response() :: #{binary() => any()}.

%% Example:
%% describe_application_response() :: #{
%%   <<"ApplicationAccount">> => string(),
%%   <<"ApplicationArn">> => string(),
%%   <<"ApplicationProviderArn">> => string(),
%%   <<"CreatedDate">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"InstanceArn">> => string(),
%%   <<"Name">> => string(),
%%   <<"PortalOptions">> => portal_options(),
%%   <<"Status">> => list(any())
%% }
-type describe_application_response() :: #{binary() => any()}.

%% Example:
%% resource_server_scope_details() :: #{
%%   <<"DetailedTitle">> => string(),
%%   <<"LongDescription">> => string()
%% }
-type resource_server_scope_details() :: #{binary() => any()}.

%% Example:
%% delete_application_request() :: #{
%%   <<"ApplicationArn">> := string()
%% }
-type delete_application_request() :: #{binary() => any()}.

%% Example:
%% attach_managed_policy_to_permission_set_response() :: #{

%% }
-type attach_managed_policy_to_permission_set_response() :: #{binary() => any()}.

%% Example:
%% detach_managed_policy_from_permission_set_response() :: #{

%% }
-type detach_managed_policy_from_permission_set_response() :: #{binary() => any()}.

-type attach_customer_managed_policy_reference_to_permission_set_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type attach_managed_policy_to_permission_set_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_account_assignment_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_application_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_application_assignment_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_instance_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_instance_access_control_attribute_configuration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_permission_set_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_trusted_token_issuer_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type delete_account_assignment_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_application_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_application_access_scope_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_application_assignment_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_application_authentication_method_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_application_grant_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_inline_policy_from_permission_set_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_instance_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type delete_instance_access_control_attribute_configuration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_permission_set_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_permissions_boundary_from_permission_set_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_trusted_token_issuer_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type describe_account_assignment_creation_status_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_account_assignment_deletion_status_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_application_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_application_assignment_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_application_provider_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_instance_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type describe_instance_access_control_attribute_configuration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_permission_set_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_permission_set_provisioning_status_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_trusted_token_issuer_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type detach_customer_managed_policy_reference_from_permission_set_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type detach_managed_policy_from_permission_set_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_application_access_scope_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_application_assignment_configuration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_application_authentication_method_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_application_grant_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_application_session_configuration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_inline_policy_for_permission_set_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_permissions_boundary_for_permission_set_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_account_assignment_creation_status_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_account_assignment_deletion_status_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_account_assignments_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_account_assignments_for_principal_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_accounts_for_provisioned_permission_set_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_application_access_scopes_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_application_assignments_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_application_assignments_for_principal_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_application_authentication_methods_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_application_grants_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_application_providers_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_applications_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_customer_managed_policy_references_in_permission_set_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_instances_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_managed_policies_in_permission_set_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_permission_set_provisioning_status_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_permission_sets_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_permission_sets_provisioned_to_account_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_tags_for_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_trusted_token_issuers_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type provision_permission_set_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type put_application_access_scope_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type put_application_assignment_configuration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type put_application_authentication_method_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type put_application_grant_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type put_application_session_configuration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type put_inline_policy_to_permission_set_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type put_permissions_boundary_to_permission_set_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type tag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type untag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_application_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_instance_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type update_instance_access_control_attribute_configuration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_permission_set_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_trusted_token_issuer_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Attaches the specified customer managed policy to the specified
%% `PermissionSet'.
-spec attach_customer_managed_policy_reference_to_permission_set(aws_client:aws_client(), attach_customer_managed_policy_reference_to_permission_set_request()) ->
    {ok, attach_customer_managed_policy_reference_to_permission_set_response(), tuple()} |
    {error, any()} |
    {error, attach_customer_managed_policy_reference_to_permission_set_errors(), tuple()}.
attach_customer_managed_policy_reference_to_permission_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    attach_customer_managed_policy_reference_to_permission_set(Client, Input, []).

-spec attach_customer_managed_policy_reference_to_permission_set(aws_client:aws_client(), attach_customer_managed_policy_reference_to_permission_set_request(), proplists:proplist()) ->
    {ok, attach_customer_managed_policy_reference_to_permission_set_response(), tuple()} |
    {error, any()} |
    {error, attach_customer_managed_policy_reference_to_permission_set_errors(), tuple()}.
attach_customer_managed_policy_reference_to_permission_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AttachCustomerManagedPolicyReferenceToPermissionSet">>, Input, Options).

%% @doc Attaches an Amazon Web Services managed policy ARN to a permission
%% set.
%%
%% If the permission set is already referenced by one or more account
%% assignments, you will need to call ` `ProvisionPermissionSet' '
%% after this operation. Calling `ProvisionPermissionSet' applies the
%% corresponding IAM policy updates to all assigned accounts.
-spec attach_managed_policy_to_permission_set(aws_client:aws_client(), attach_managed_policy_to_permission_set_request()) ->
    {ok, attach_managed_policy_to_permission_set_response(), tuple()} |
    {error, any()} |
    {error, attach_managed_policy_to_permission_set_errors(), tuple()}.
attach_managed_policy_to_permission_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    attach_managed_policy_to_permission_set(Client, Input, []).

-spec attach_managed_policy_to_permission_set(aws_client:aws_client(), attach_managed_policy_to_permission_set_request(), proplists:proplist()) ->
    {ok, attach_managed_policy_to_permission_set_response(), tuple()} |
    {error, any()} |
    {error, attach_managed_policy_to_permission_set_errors(), tuple()}.
attach_managed_policy_to_permission_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AttachManagedPolicyToPermissionSet">>, Input, Options).

%% @doc Assigns access to a principal for a specified Amazon Web Services
%% account using a specified permission set.
%%
%% The term principal here refers to a user or group that is defined in IAM
%% Identity Center.
%%
%% As part of a successful `CreateAccountAssignment' call, the specified
%% permission set will automatically be provisioned to the account in the
%% form of an IAM policy. That policy is attached to the IAM role created in
%% IAM Identity Center. If the permission set is subsequently updated, the
%% corresponding IAM policies attached to roles in your accounts will not be
%% updated automatically. In this case, you must call `
%% `ProvisionPermissionSet' ' to make these updates.
%%
%% After a successful response, call
%% `DescribeAccountAssignmentCreationStatus' to describe the status of an
%% assignment creation request.
-spec create_account_assignment(aws_client:aws_client(), create_account_assignment_request()) ->
    {ok, create_account_assignment_response(), tuple()} |
    {error, any()} |
    {error, create_account_assignment_errors(), tuple()}.
create_account_assignment(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_account_assignment(Client, Input, []).

-spec create_account_assignment(aws_client:aws_client(), create_account_assignment_request(), proplists:proplist()) ->
    {ok, create_account_assignment_response(), tuple()} |
    {error, any()} |
    {error, create_account_assignment_errors(), tuple()}.
create_account_assignment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateAccountAssignment">>, Input, Options).

%% @doc Creates an OAuth 2.0 customer managed application in IAM Identity
%% Center for the given application provider.
%%
%% This API does not support creating SAML 2.0 customer managed applications
%% or Amazon Web Services managed applications. To learn how to create an
%% Amazon Web Services managed application, see the application user guide.
%% You can create a SAML 2.0 customer managed application in the Amazon Web
%% Services Management Console only. See Setting up customer managed SAML 2.0
%% applications:
%% https://docs.aws.amazon.com/singlesignon/latest/userguide/customermanagedapps-saml2-setup.html.
%% For more information on these application types, see Amazon Web Services
%% managed applications:
%% https://docs.aws.amazon.com/singlesignon/latest/userguide/awsapps.html.
-spec create_application(aws_client:aws_client(), create_application_request()) ->
    {ok, create_application_response(), tuple()} |
    {error, any()} |
    {error, create_application_errors(), tuple()}.
create_application(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_application(Client, Input, []).

-spec create_application(aws_client:aws_client(), create_application_request(), proplists:proplist()) ->
    {ok, create_application_response(), tuple()} |
    {error, any()} |
    {error, create_application_errors(), tuple()}.
create_application(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateApplication">>, Input, Options).

%% @doc Grant application access to a user or group.
-spec create_application_assignment(aws_client:aws_client(), create_application_assignment_request()) ->
    {ok, create_application_assignment_response(), tuple()} |
    {error, any()} |
    {error, create_application_assignment_errors(), tuple()}.
create_application_assignment(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_application_assignment(Client, Input, []).

-spec create_application_assignment(aws_client:aws_client(), create_application_assignment_request(), proplists:proplist()) ->
    {ok, create_application_assignment_response(), tuple()} |
    {error, any()} |
    {error, create_application_assignment_errors(), tuple()}.
create_application_assignment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateApplicationAssignment">>, Input, Options).

%% @doc Creates an instance of IAM Identity Center for a standalone Amazon
%% Web Services account that is not managed by Organizations or a member
%% Amazon Web Services account in an organization.
%%
%% You can create only one instance per account and across all Amazon Web
%% Services Regions.
%%
%% The CreateInstance request is rejected if the following apply:
%%
%% The instance is created within the organization management account.
%%
%% An instance already exists in the same account.
-spec create_instance(aws_client:aws_client(), create_instance_request()) ->
    {ok, create_instance_response(), tuple()} |
    {error, any()} |
    {error, create_instance_errors(), tuple()}.
create_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_instance(Client, Input, []).

-spec create_instance(aws_client:aws_client(), create_instance_request(), proplists:proplist()) ->
    {ok, create_instance_response(), tuple()} |
    {error, any()} |
    {error, create_instance_errors(), tuple()}.
create_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateInstance">>, Input, Options).

%% @doc Enables the attributes-based access control (ABAC) feature for the
%% specified IAM Identity Center instance.
%%
%% You can also specify new attributes to add to your ABAC configuration
%% during the enabling process. For more information about ABAC, see
%% Attribute-Based Access Control: /singlesignon/latest/userguide/abac.html
%% in the IAM Identity Center User Guide.
%%
%% After a successful response, call
%% `DescribeInstanceAccessControlAttributeConfiguration' to validate that
%% `InstanceAccessControlAttributeConfiguration' was created.
-spec create_instance_access_control_attribute_configuration(aws_client:aws_client(), create_instance_access_control_attribute_configuration_request()) ->
    {ok, create_instance_access_control_attribute_configuration_response(), tuple()} |
    {error, any()} |
    {error, create_instance_access_control_attribute_configuration_errors(), tuple()}.
create_instance_access_control_attribute_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_instance_access_control_attribute_configuration(Client, Input, []).

-spec create_instance_access_control_attribute_configuration(aws_client:aws_client(), create_instance_access_control_attribute_configuration_request(), proplists:proplist()) ->
    {ok, create_instance_access_control_attribute_configuration_response(), tuple()} |
    {error, any()} |
    {error, create_instance_access_control_attribute_configuration_errors(), tuple()}.
create_instance_access_control_attribute_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateInstanceAccessControlAttributeConfiguration">>, Input, Options).

%% @doc Creates a permission set within a specified IAM Identity Center
%% instance.
%%
%% To grant users and groups access to Amazon Web Services account resources,
%% use ` `CreateAccountAssignment' '.
-spec create_permission_set(aws_client:aws_client(), create_permission_set_request()) ->
    {ok, create_permission_set_response(), tuple()} |
    {error, any()} |
    {error, create_permission_set_errors(), tuple()}.
create_permission_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_permission_set(Client, Input, []).

-spec create_permission_set(aws_client:aws_client(), create_permission_set_request(), proplists:proplist()) ->
    {ok, create_permission_set_response(), tuple()} |
    {error, any()} |
    {error, create_permission_set_errors(), tuple()}.
create_permission_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreatePermissionSet">>, Input, Options).

%% @doc Creates a connection to a trusted token issuer in an instance of IAM
%% Identity Center.
%%
%% A trusted token issuer enables trusted identity propagation to be used
%% with applications that authenticate outside of Amazon Web Services.
%%
%% This trusted token issuer describes an external identity provider (IdP)
%% that can generate claims or assertions in the form of access tokens for a
%% user. Applications enabled for IAM Identity Center can use these tokens
%% for authentication.
-spec create_trusted_token_issuer(aws_client:aws_client(), create_trusted_token_issuer_request()) ->
    {ok, create_trusted_token_issuer_response(), tuple()} |
    {error, any()} |
    {error, create_trusted_token_issuer_errors(), tuple()}.
create_trusted_token_issuer(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_trusted_token_issuer(Client, Input, []).

-spec create_trusted_token_issuer(aws_client:aws_client(), create_trusted_token_issuer_request(), proplists:proplist()) ->
    {ok, create_trusted_token_issuer_response(), tuple()} |
    {error, any()} |
    {error, create_trusted_token_issuer_errors(), tuple()}.
create_trusted_token_issuer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateTrustedTokenIssuer">>, Input, Options).

%% @doc Deletes a principal's access from a specified Amazon Web Services
%% account using a specified permission set.
%%
%% After a successful response, call
%% `DescribeAccountAssignmentDeletionStatus' to describe the status of an
%% assignment deletion request.
-spec delete_account_assignment(aws_client:aws_client(), delete_account_assignment_request()) ->
    {ok, delete_account_assignment_response(), tuple()} |
    {error, any()} |
    {error, delete_account_assignment_errors(), tuple()}.
delete_account_assignment(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_account_assignment(Client, Input, []).

-spec delete_account_assignment(aws_client:aws_client(), delete_account_assignment_request(), proplists:proplist()) ->
    {ok, delete_account_assignment_response(), tuple()} |
    {error, any()} |
    {error, delete_account_assignment_errors(), tuple()}.
delete_account_assignment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAccountAssignment">>, Input, Options).

%% @doc Deletes the association with the application.
%%
%% The connected service resource still exists.
-spec delete_application(aws_client:aws_client(), delete_application_request()) ->
    {ok, delete_application_response(), tuple()} |
    {error, any()} |
    {error, delete_application_errors(), tuple()}.
delete_application(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_application(Client, Input, []).

-spec delete_application(aws_client:aws_client(), delete_application_request(), proplists:proplist()) ->
    {ok, delete_application_response(), tuple()} |
    {error, any()} |
    {error, delete_application_errors(), tuple()}.
delete_application(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteApplication">>, Input, Options).

%% @doc Deletes an IAM Identity Center access scope from an application.
-spec delete_application_access_scope(aws_client:aws_client(), delete_application_access_scope_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_application_access_scope_errors(), tuple()}.
delete_application_access_scope(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_application_access_scope(Client, Input, []).

-spec delete_application_access_scope(aws_client:aws_client(), delete_application_access_scope_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_application_access_scope_errors(), tuple()}.
delete_application_access_scope(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteApplicationAccessScope">>, Input, Options).

%% @doc Revoke application access to an application by deleting application
%% assignments for a user or group.
-spec delete_application_assignment(aws_client:aws_client(), delete_application_assignment_request()) ->
    {ok, delete_application_assignment_response(), tuple()} |
    {error, any()} |
    {error, delete_application_assignment_errors(), tuple()}.
delete_application_assignment(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_application_assignment(Client, Input, []).

-spec delete_application_assignment(aws_client:aws_client(), delete_application_assignment_request(), proplists:proplist()) ->
    {ok, delete_application_assignment_response(), tuple()} |
    {error, any()} |
    {error, delete_application_assignment_errors(), tuple()}.
delete_application_assignment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteApplicationAssignment">>, Input, Options).

%% @doc Deletes an authentication method from an application.
-spec delete_application_authentication_method(aws_client:aws_client(), delete_application_authentication_method_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_application_authentication_method_errors(), tuple()}.
delete_application_authentication_method(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_application_authentication_method(Client, Input, []).

-spec delete_application_authentication_method(aws_client:aws_client(), delete_application_authentication_method_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_application_authentication_method_errors(), tuple()}.
delete_application_authentication_method(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteApplicationAuthenticationMethod">>, Input, Options).

%% @doc Deletes a grant from an application.
-spec delete_application_grant(aws_client:aws_client(), delete_application_grant_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_application_grant_errors(), tuple()}.
delete_application_grant(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_application_grant(Client, Input, []).

-spec delete_application_grant(aws_client:aws_client(), delete_application_grant_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_application_grant_errors(), tuple()}.
delete_application_grant(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteApplicationGrant">>, Input, Options).

%% @doc Deletes the inline policy from a specified permission set.
-spec delete_inline_policy_from_permission_set(aws_client:aws_client(), delete_inline_policy_from_permission_set_request()) ->
    {ok, delete_inline_policy_from_permission_set_response(), tuple()} |
    {error, any()} |
    {error, delete_inline_policy_from_permission_set_errors(), tuple()}.
delete_inline_policy_from_permission_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_inline_policy_from_permission_set(Client, Input, []).

-spec delete_inline_policy_from_permission_set(aws_client:aws_client(), delete_inline_policy_from_permission_set_request(), proplists:proplist()) ->
    {ok, delete_inline_policy_from_permission_set_response(), tuple()} |
    {error, any()} |
    {error, delete_inline_policy_from_permission_set_errors(), tuple()}.
delete_inline_policy_from_permission_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteInlinePolicyFromPermissionSet">>, Input, Options).

%% @doc Deletes the instance of IAM Identity Center.
%%
%% Only the account that owns the instance can call this API. Neither the
%% delegated administrator nor member account can delete the organization
%% instance, but those roles can delete their own instance.
-spec delete_instance(aws_client:aws_client(), delete_instance_request()) ->
    {ok, delete_instance_response(), tuple()} |
    {error, any()} |
    {error, delete_instance_errors(), tuple()}.
delete_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_instance(Client, Input, []).

-spec delete_instance(aws_client:aws_client(), delete_instance_request(), proplists:proplist()) ->
    {ok, delete_instance_response(), tuple()} |
    {error, any()} |
    {error, delete_instance_errors(), tuple()}.
delete_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteInstance">>, Input, Options).

%% @doc Disables the attributes-based access control (ABAC) feature for the
%% specified IAM Identity Center instance and deletes all of the attribute
%% mappings that have been configured.
%%
%% Once deleted, any attributes that are received from an identity source and
%% any custom attributes you have previously configured will not be passed.
%% For more information about ABAC, see Attribute-Based Access Control:
%% /singlesignon/latest/userguide/abac.html in the IAM Identity Center User
%% Guide.
-spec delete_instance_access_control_attribute_configuration(aws_client:aws_client(), delete_instance_access_control_attribute_configuration_request()) ->
    {ok, delete_instance_access_control_attribute_configuration_response(), tuple()} |
    {error, any()} |
    {error, delete_instance_access_control_attribute_configuration_errors(), tuple()}.
delete_instance_access_control_attribute_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_instance_access_control_attribute_configuration(Client, Input, []).

-spec delete_instance_access_control_attribute_configuration(aws_client:aws_client(), delete_instance_access_control_attribute_configuration_request(), proplists:proplist()) ->
    {ok, delete_instance_access_control_attribute_configuration_response(), tuple()} |
    {error, any()} |
    {error, delete_instance_access_control_attribute_configuration_errors(), tuple()}.
delete_instance_access_control_attribute_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteInstanceAccessControlAttributeConfiguration">>, Input, Options).

%% @doc Deletes the specified permission set.
-spec delete_permission_set(aws_client:aws_client(), delete_permission_set_request()) ->
    {ok, delete_permission_set_response(), tuple()} |
    {error, any()} |
    {error, delete_permission_set_errors(), tuple()}.
delete_permission_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_permission_set(Client, Input, []).

-spec delete_permission_set(aws_client:aws_client(), delete_permission_set_request(), proplists:proplist()) ->
    {ok, delete_permission_set_response(), tuple()} |
    {error, any()} |
    {error, delete_permission_set_errors(), tuple()}.
delete_permission_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeletePermissionSet">>, Input, Options).

%% @doc Deletes the permissions boundary from a specified
%% `PermissionSet'.
-spec delete_permissions_boundary_from_permission_set(aws_client:aws_client(), delete_permissions_boundary_from_permission_set_request()) ->
    {ok, delete_permissions_boundary_from_permission_set_response(), tuple()} |
    {error, any()} |
    {error, delete_permissions_boundary_from_permission_set_errors(), tuple()}.
delete_permissions_boundary_from_permission_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_permissions_boundary_from_permission_set(Client, Input, []).

-spec delete_permissions_boundary_from_permission_set(aws_client:aws_client(), delete_permissions_boundary_from_permission_set_request(), proplists:proplist()) ->
    {ok, delete_permissions_boundary_from_permission_set_response(), tuple()} |
    {error, any()} |
    {error, delete_permissions_boundary_from_permission_set_errors(), tuple()}.
delete_permissions_boundary_from_permission_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeletePermissionsBoundaryFromPermissionSet">>, Input, Options).

%% @doc Deletes a trusted token issuer configuration from an instance of IAM
%% Identity Center.
%%
%% Deleting this trusted token issuer configuration will cause users to lose
%% access to any applications that are configured to use the trusted token
%% issuer.
-spec delete_trusted_token_issuer(aws_client:aws_client(), delete_trusted_token_issuer_request()) ->
    {ok, delete_trusted_token_issuer_response(), tuple()} |
    {error, any()} |
    {error, delete_trusted_token_issuer_errors(), tuple()}.
delete_trusted_token_issuer(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_trusted_token_issuer(Client, Input, []).

-spec delete_trusted_token_issuer(aws_client:aws_client(), delete_trusted_token_issuer_request(), proplists:proplist()) ->
    {ok, delete_trusted_token_issuer_response(), tuple()} |
    {error, any()} |
    {error, delete_trusted_token_issuer_errors(), tuple()}.
delete_trusted_token_issuer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteTrustedTokenIssuer">>, Input, Options).

%% @doc Describes the status of the assignment creation request.
-spec describe_account_assignment_creation_status(aws_client:aws_client(), describe_account_assignment_creation_status_request()) ->
    {ok, describe_account_assignment_creation_status_response(), tuple()} |
    {error, any()} |
    {error, describe_account_assignment_creation_status_errors(), tuple()}.
describe_account_assignment_creation_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_account_assignment_creation_status(Client, Input, []).

-spec describe_account_assignment_creation_status(aws_client:aws_client(), describe_account_assignment_creation_status_request(), proplists:proplist()) ->
    {ok, describe_account_assignment_creation_status_response(), tuple()} |
    {error, any()} |
    {error, describe_account_assignment_creation_status_errors(), tuple()}.
describe_account_assignment_creation_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAccountAssignmentCreationStatus">>, Input, Options).

%% @doc Describes the status of the assignment deletion request.
-spec describe_account_assignment_deletion_status(aws_client:aws_client(), describe_account_assignment_deletion_status_request()) ->
    {ok, describe_account_assignment_deletion_status_response(), tuple()} |
    {error, any()} |
    {error, describe_account_assignment_deletion_status_errors(), tuple()}.
describe_account_assignment_deletion_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_account_assignment_deletion_status(Client, Input, []).

-spec describe_account_assignment_deletion_status(aws_client:aws_client(), describe_account_assignment_deletion_status_request(), proplists:proplist()) ->
    {ok, describe_account_assignment_deletion_status_response(), tuple()} |
    {error, any()} |
    {error, describe_account_assignment_deletion_status_errors(), tuple()}.
describe_account_assignment_deletion_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAccountAssignmentDeletionStatus">>, Input, Options).

%% @doc Retrieves the details of an application associated with an instance
%% of IAM Identity Center.
-spec describe_application(aws_client:aws_client(), describe_application_request()) ->
    {ok, describe_application_response(), tuple()} |
    {error, any()} |
    {error, describe_application_errors(), tuple()}.
describe_application(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_application(Client, Input, []).

-spec describe_application(aws_client:aws_client(), describe_application_request(), proplists:proplist()) ->
    {ok, describe_application_response(), tuple()} |
    {error, any()} |
    {error, describe_application_errors(), tuple()}.
describe_application(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeApplication">>, Input, Options).

%% @doc Retrieves a direct assignment of a user or group to an application.
%%
%% If the user doesn’t have a direct assignment to the application, the user
%% may still have access to the application through a group. Therefore, don’t
%% use this API to test access to an application for a user. Instead use
%% `ListApplicationAssignmentsForPrincipal'.
-spec describe_application_assignment(aws_client:aws_client(), describe_application_assignment_request()) ->
    {ok, describe_application_assignment_response(), tuple()} |
    {error, any()} |
    {error, describe_application_assignment_errors(), tuple()}.
describe_application_assignment(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_application_assignment(Client, Input, []).

-spec describe_application_assignment(aws_client:aws_client(), describe_application_assignment_request(), proplists:proplist()) ->
    {ok, describe_application_assignment_response(), tuple()} |
    {error, any()} |
    {error, describe_application_assignment_errors(), tuple()}.
describe_application_assignment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeApplicationAssignment">>, Input, Options).

%% @doc Retrieves details about a provider that can be used to connect an
%% Amazon Web Services managed application or customer managed application to
%% IAM Identity Center.
-spec describe_application_provider(aws_client:aws_client(), describe_application_provider_request()) ->
    {ok, describe_application_provider_response(), tuple()} |
    {error, any()} |
    {error, describe_application_provider_errors(), tuple()}.
describe_application_provider(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_application_provider(Client, Input, []).

-spec describe_application_provider(aws_client:aws_client(), describe_application_provider_request(), proplists:proplist()) ->
    {ok, describe_application_provider_response(), tuple()} |
    {error, any()} |
    {error, describe_application_provider_errors(), tuple()}.
describe_application_provider(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeApplicationProvider">>, Input, Options).

%% @doc Returns the details of an instance of IAM Identity Center.
%%
%% The status can be one of the following:
%%
%% `CREATE_IN_PROGRESS' - The instance is in the process of being
%% created. When the instance is ready for use, DescribeInstance returns the
%% status of `ACTIVE'. While the instance is in the
%% `CREATE_IN_PROGRESS' state, you can call only DescribeInstance and
%% DeleteInstance operations.
%%
%% `DELETE_IN_PROGRESS' - The instance is being deleted. Returns
%% `AccessDeniedException' after the delete operation completes.
%%
%% `ACTIVE' - The instance is active.
-spec describe_instance(aws_client:aws_client(), describe_instance_request()) ->
    {ok, describe_instance_response(), tuple()} |
    {error, any()} |
    {error, describe_instance_errors(), tuple()}.
describe_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_instance(Client, Input, []).

-spec describe_instance(aws_client:aws_client(), describe_instance_request(), proplists:proplist()) ->
    {ok, describe_instance_response(), tuple()} |
    {error, any()} |
    {error, describe_instance_errors(), tuple()}.
describe_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeInstance">>, Input, Options).

%% @doc Returns the list of IAM Identity Center identity store attributes
%% that have been configured to work with attributes-based access control
%% (ABAC) for the specified IAM Identity Center instance.
%%
%% This will not return attributes configured and sent by an external
%% identity provider. For more information about ABAC, see Attribute-Based
%% Access Control: /singlesignon/latest/userguide/abac.html in the IAM
%% Identity Center User Guide.
-spec describe_instance_access_control_attribute_configuration(aws_client:aws_client(), describe_instance_access_control_attribute_configuration_request()) ->
    {ok, describe_instance_access_control_attribute_configuration_response(), tuple()} |
    {error, any()} |
    {error, describe_instance_access_control_attribute_configuration_errors(), tuple()}.
describe_instance_access_control_attribute_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_instance_access_control_attribute_configuration(Client, Input, []).

-spec describe_instance_access_control_attribute_configuration(aws_client:aws_client(), describe_instance_access_control_attribute_configuration_request(), proplists:proplist()) ->
    {ok, describe_instance_access_control_attribute_configuration_response(), tuple()} |
    {error, any()} |
    {error, describe_instance_access_control_attribute_configuration_errors(), tuple()}.
describe_instance_access_control_attribute_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeInstanceAccessControlAttributeConfiguration">>, Input, Options).

%% @doc Gets the details of the permission set.
-spec describe_permission_set(aws_client:aws_client(), describe_permission_set_request()) ->
    {ok, describe_permission_set_response(), tuple()} |
    {error, any()} |
    {error, describe_permission_set_errors(), tuple()}.
describe_permission_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_permission_set(Client, Input, []).

-spec describe_permission_set(aws_client:aws_client(), describe_permission_set_request(), proplists:proplist()) ->
    {ok, describe_permission_set_response(), tuple()} |
    {error, any()} |
    {error, describe_permission_set_errors(), tuple()}.
describe_permission_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribePermissionSet">>, Input, Options).

%% @doc Describes the status for the given permission set provisioning
%% request.
-spec describe_permission_set_provisioning_status(aws_client:aws_client(), describe_permission_set_provisioning_status_request()) ->
    {ok, describe_permission_set_provisioning_status_response(), tuple()} |
    {error, any()} |
    {error, describe_permission_set_provisioning_status_errors(), tuple()}.
describe_permission_set_provisioning_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_permission_set_provisioning_status(Client, Input, []).

-spec describe_permission_set_provisioning_status(aws_client:aws_client(), describe_permission_set_provisioning_status_request(), proplists:proplist()) ->
    {ok, describe_permission_set_provisioning_status_response(), tuple()} |
    {error, any()} |
    {error, describe_permission_set_provisioning_status_errors(), tuple()}.
describe_permission_set_provisioning_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribePermissionSetProvisioningStatus">>, Input, Options).

%% @doc Retrieves details about a trusted token issuer configuration stored
%% in an instance of IAM Identity Center.
%%
%% Details include the name of the trusted token issuer, the issuer URL, and
%% the path of the source attribute and the destination attribute for a
%% trusted token issuer configuration.
-spec describe_trusted_token_issuer(aws_client:aws_client(), describe_trusted_token_issuer_request()) ->
    {ok, describe_trusted_token_issuer_response(), tuple()} |
    {error, any()} |
    {error, describe_trusted_token_issuer_errors(), tuple()}.
describe_trusted_token_issuer(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_trusted_token_issuer(Client, Input, []).

-spec describe_trusted_token_issuer(aws_client:aws_client(), describe_trusted_token_issuer_request(), proplists:proplist()) ->
    {ok, describe_trusted_token_issuer_response(), tuple()} |
    {error, any()} |
    {error, describe_trusted_token_issuer_errors(), tuple()}.
describe_trusted_token_issuer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTrustedTokenIssuer">>, Input, Options).

%% @doc Detaches the specified customer managed policy from the specified
%% `PermissionSet'.
-spec detach_customer_managed_policy_reference_from_permission_set(aws_client:aws_client(), detach_customer_managed_policy_reference_from_permission_set_request()) ->
    {ok, detach_customer_managed_policy_reference_from_permission_set_response(), tuple()} |
    {error, any()} |
    {error, detach_customer_managed_policy_reference_from_permission_set_errors(), tuple()}.
detach_customer_managed_policy_reference_from_permission_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    detach_customer_managed_policy_reference_from_permission_set(Client, Input, []).

-spec detach_customer_managed_policy_reference_from_permission_set(aws_client:aws_client(), detach_customer_managed_policy_reference_from_permission_set_request(), proplists:proplist()) ->
    {ok, detach_customer_managed_policy_reference_from_permission_set_response(), tuple()} |
    {error, any()} |
    {error, detach_customer_managed_policy_reference_from_permission_set_errors(), tuple()}.
detach_customer_managed_policy_reference_from_permission_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DetachCustomerManagedPolicyReferenceFromPermissionSet">>, Input, Options).

%% @doc Detaches the attached Amazon Web Services managed policy ARN from the
%% specified permission set.
-spec detach_managed_policy_from_permission_set(aws_client:aws_client(), detach_managed_policy_from_permission_set_request()) ->
    {ok, detach_managed_policy_from_permission_set_response(), tuple()} |
    {error, any()} |
    {error, detach_managed_policy_from_permission_set_errors(), tuple()}.
detach_managed_policy_from_permission_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    detach_managed_policy_from_permission_set(Client, Input, []).

-spec detach_managed_policy_from_permission_set(aws_client:aws_client(), detach_managed_policy_from_permission_set_request(), proplists:proplist()) ->
    {ok, detach_managed_policy_from_permission_set_response(), tuple()} |
    {error, any()} |
    {error, detach_managed_policy_from_permission_set_errors(), tuple()}.
detach_managed_policy_from_permission_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DetachManagedPolicyFromPermissionSet">>, Input, Options).

%% @doc Retrieves the authorized targets for an IAM Identity Center access
%% scope for an application.
-spec get_application_access_scope(aws_client:aws_client(), get_application_access_scope_request()) ->
    {ok, get_application_access_scope_response(), tuple()} |
    {error, any()} |
    {error, get_application_access_scope_errors(), tuple()}.
get_application_access_scope(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_application_access_scope(Client, Input, []).

-spec get_application_access_scope(aws_client:aws_client(), get_application_access_scope_request(), proplists:proplist()) ->
    {ok, get_application_access_scope_response(), tuple()} |
    {error, any()} |
    {error, get_application_access_scope_errors(), tuple()}.
get_application_access_scope(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetApplicationAccessScope">>, Input, Options).

%% @doc Retrieves the configuration of
%% `PutApplicationAssignmentConfiguration'.
-spec get_application_assignment_configuration(aws_client:aws_client(), get_application_assignment_configuration_request()) ->
    {ok, get_application_assignment_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_application_assignment_configuration_errors(), tuple()}.
get_application_assignment_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_application_assignment_configuration(Client, Input, []).

-spec get_application_assignment_configuration(aws_client:aws_client(), get_application_assignment_configuration_request(), proplists:proplist()) ->
    {ok, get_application_assignment_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_application_assignment_configuration_errors(), tuple()}.
get_application_assignment_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetApplicationAssignmentConfiguration">>, Input, Options).

%% @doc Retrieves details about an authentication method used by an
%% application.
-spec get_application_authentication_method(aws_client:aws_client(), get_application_authentication_method_request()) ->
    {ok, get_application_authentication_method_response(), tuple()} |
    {error, any()} |
    {error, get_application_authentication_method_errors(), tuple()}.
get_application_authentication_method(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_application_authentication_method(Client, Input, []).

-spec get_application_authentication_method(aws_client:aws_client(), get_application_authentication_method_request(), proplists:proplist()) ->
    {ok, get_application_authentication_method_response(), tuple()} |
    {error, any()} |
    {error, get_application_authentication_method_errors(), tuple()}.
get_application_authentication_method(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetApplicationAuthenticationMethod">>, Input, Options).

%% @doc Retrieves details about an application grant.
-spec get_application_grant(aws_client:aws_client(), get_application_grant_request()) ->
    {ok, get_application_grant_response(), tuple()} |
    {error, any()} |
    {error, get_application_grant_errors(), tuple()}.
get_application_grant(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_application_grant(Client, Input, []).

-spec get_application_grant(aws_client:aws_client(), get_application_grant_request(), proplists:proplist()) ->
    {ok, get_application_grant_response(), tuple()} |
    {error, any()} |
    {error, get_application_grant_errors(), tuple()}.
get_application_grant(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetApplicationGrant">>, Input, Options).

%% @doc Retrieves the session configuration for an application in IAM
%% Identity Center.
%%
%% The session configuration determines how users can access an application.
%% This includes whether user background sessions are enabled. User
%% background sessions allow users to start a job on a supported Amazon Web
%% Services managed application without having to remain signed in to an
%% active session while the job runs.
-spec get_application_session_configuration(aws_client:aws_client(), get_application_session_configuration_request()) ->
    {ok, get_application_session_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_application_session_configuration_errors(), tuple()}.
get_application_session_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_application_session_configuration(Client, Input, []).

-spec get_application_session_configuration(aws_client:aws_client(), get_application_session_configuration_request(), proplists:proplist()) ->
    {ok, get_application_session_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_application_session_configuration_errors(), tuple()}.
get_application_session_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetApplicationSessionConfiguration">>, Input, Options).

%% @doc Obtains the inline policy assigned to the permission set.
-spec get_inline_policy_for_permission_set(aws_client:aws_client(), get_inline_policy_for_permission_set_request()) ->
    {ok, get_inline_policy_for_permission_set_response(), tuple()} |
    {error, any()} |
    {error, get_inline_policy_for_permission_set_errors(), tuple()}.
get_inline_policy_for_permission_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_inline_policy_for_permission_set(Client, Input, []).

-spec get_inline_policy_for_permission_set(aws_client:aws_client(), get_inline_policy_for_permission_set_request(), proplists:proplist()) ->
    {ok, get_inline_policy_for_permission_set_response(), tuple()} |
    {error, any()} |
    {error, get_inline_policy_for_permission_set_errors(), tuple()}.
get_inline_policy_for_permission_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetInlinePolicyForPermissionSet">>, Input, Options).

%% @doc Obtains the permissions boundary for a specified `PermissionSet'.
-spec get_permissions_boundary_for_permission_set(aws_client:aws_client(), get_permissions_boundary_for_permission_set_request()) ->
    {ok, get_permissions_boundary_for_permission_set_response(), tuple()} |
    {error, any()} |
    {error, get_permissions_boundary_for_permission_set_errors(), tuple()}.
get_permissions_boundary_for_permission_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_permissions_boundary_for_permission_set(Client, Input, []).

-spec get_permissions_boundary_for_permission_set(aws_client:aws_client(), get_permissions_boundary_for_permission_set_request(), proplists:proplist()) ->
    {ok, get_permissions_boundary_for_permission_set_response(), tuple()} |
    {error, any()} |
    {error, get_permissions_boundary_for_permission_set_errors(), tuple()}.
get_permissions_boundary_for_permission_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetPermissionsBoundaryForPermissionSet">>, Input, Options).

%% @doc Lists the status of the Amazon Web Services account assignment
%% creation requests for a specified IAM Identity Center instance.
-spec list_account_assignment_creation_status(aws_client:aws_client(), list_account_assignment_creation_status_request()) ->
    {ok, list_account_assignment_creation_status_response(), tuple()} |
    {error, any()} |
    {error, list_account_assignment_creation_status_errors(), tuple()}.
list_account_assignment_creation_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_account_assignment_creation_status(Client, Input, []).

-spec list_account_assignment_creation_status(aws_client:aws_client(), list_account_assignment_creation_status_request(), proplists:proplist()) ->
    {ok, list_account_assignment_creation_status_response(), tuple()} |
    {error, any()} |
    {error, list_account_assignment_creation_status_errors(), tuple()}.
list_account_assignment_creation_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAccountAssignmentCreationStatus">>, Input, Options).

%% @doc Lists the status of the Amazon Web Services account assignment
%% deletion requests for a specified IAM Identity Center instance.
-spec list_account_assignment_deletion_status(aws_client:aws_client(), list_account_assignment_deletion_status_request()) ->
    {ok, list_account_assignment_deletion_status_response(), tuple()} |
    {error, any()} |
    {error, list_account_assignment_deletion_status_errors(), tuple()}.
list_account_assignment_deletion_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_account_assignment_deletion_status(Client, Input, []).

-spec list_account_assignment_deletion_status(aws_client:aws_client(), list_account_assignment_deletion_status_request(), proplists:proplist()) ->
    {ok, list_account_assignment_deletion_status_response(), tuple()} |
    {error, any()} |
    {error, list_account_assignment_deletion_status_errors(), tuple()}.
list_account_assignment_deletion_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAccountAssignmentDeletionStatus">>, Input, Options).

%% @doc Lists the assignee of the specified Amazon Web Services account with
%% the specified permission set.
-spec list_account_assignments(aws_client:aws_client(), list_account_assignments_request()) ->
    {ok, list_account_assignments_response(), tuple()} |
    {error, any()} |
    {error, list_account_assignments_errors(), tuple()}.
list_account_assignments(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_account_assignments(Client, Input, []).

-spec list_account_assignments(aws_client:aws_client(), list_account_assignments_request(), proplists:proplist()) ->
    {ok, list_account_assignments_response(), tuple()} |
    {error, any()} |
    {error, list_account_assignments_errors(), tuple()}.
list_account_assignments(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAccountAssignments">>, Input, Options).

%% @doc Retrieves a list of the IAM Identity Center associated Amazon Web
%% Services accounts that the principal has access to.
%%
%% This action must be called from the management account containing your
%% organization instance of IAM Identity Center. This action is not valid for
%% account instances of IAM Identity Center.
-spec list_account_assignments_for_principal(aws_client:aws_client(), list_account_assignments_for_principal_request()) ->
    {ok, list_account_assignments_for_principal_response(), tuple()} |
    {error, any()} |
    {error, list_account_assignments_for_principal_errors(), tuple()}.
list_account_assignments_for_principal(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_account_assignments_for_principal(Client, Input, []).

-spec list_account_assignments_for_principal(aws_client:aws_client(), list_account_assignments_for_principal_request(), proplists:proplist()) ->
    {ok, list_account_assignments_for_principal_response(), tuple()} |
    {error, any()} |
    {error, list_account_assignments_for_principal_errors(), tuple()}.
list_account_assignments_for_principal(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAccountAssignmentsForPrincipal">>, Input, Options).

%% @doc Lists all the Amazon Web Services accounts where the specified
%% permission set is provisioned.
-spec list_accounts_for_provisioned_permission_set(aws_client:aws_client(), list_accounts_for_provisioned_permission_set_request()) ->
    {ok, list_accounts_for_provisioned_permission_set_response(), tuple()} |
    {error, any()} |
    {error, list_accounts_for_provisioned_permission_set_errors(), tuple()}.
list_accounts_for_provisioned_permission_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_accounts_for_provisioned_permission_set(Client, Input, []).

-spec list_accounts_for_provisioned_permission_set(aws_client:aws_client(), list_accounts_for_provisioned_permission_set_request(), proplists:proplist()) ->
    {ok, list_accounts_for_provisioned_permission_set_response(), tuple()} |
    {error, any()} |
    {error, list_accounts_for_provisioned_permission_set_errors(), tuple()}.
list_accounts_for_provisioned_permission_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAccountsForProvisionedPermissionSet">>, Input, Options).

%% @doc Lists the access scopes and authorized targets associated with an
%% application.
-spec list_application_access_scopes(aws_client:aws_client(), list_application_access_scopes_request()) ->
    {ok, list_application_access_scopes_response(), tuple()} |
    {error, any()} |
    {error, list_application_access_scopes_errors(), tuple()}.
list_application_access_scopes(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_application_access_scopes(Client, Input, []).

-spec list_application_access_scopes(aws_client:aws_client(), list_application_access_scopes_request(), proplists:proplist()) ->
    {ok, list_application_access_scopes_response(), tuple()} |
    {error, any()} |
    {error, list_application_access_scopes_errors(), tuple()}.
list_application_access_scopes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListApplicationAccessScopes">>, Input, Options).

%% @doc Lists Amazon Web Services account users that are assigned to an
%% application.
-spec list_application_assignments(aws_client:aws_client(), list_application_assignments_request()) ->
    {ok, list_application_assignments_response(), tuple()} |
    {error, any()} |
    {error, list_application_assignments_errors(), tuple()}.
list_application_assignments(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_application_assignments(Client, Input, []).

-spec list_application_assignments(aws_client:aws_client(), list_application_assignments_request(), proplists:proplist()) ->
    {ok, list_application_assignments_response(), tuple()} |
    {error, any()} |
    {error, list_application_assignments_errors(), tuple()}.
list_application_assignments(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListApplicationAssignments">>, Input, Options).

%% @doc Lists the applications to which a specified principal is assigned.
%%
%% You must provide a filter when calling this action from a member account
%% against your organization instance of IAM Identity Center. A filter is not
%% required when called from the management account against an organization
%% instance of IAM Identity Center, or from a member account against an
%% account instance of IAM Identity Center in the same account.
-spec list_application_assignments_for_principal(aws_client:aws_client(), list_application_assignments_for_principal_request()) ->
    {ok, list_application_assignments_for_principal_response(), tuple()} |
    {error, any()} |
    {error, list_application_assignments_for_principal_errors(), tuple()}.
list_application_assignments_for_principal(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_application_assignments_for_principal(Client, Input, []).

-spec list_application_assignments_for_principal(aws_client:aws_client(), list_application_assignments_for_principal_request(), proplists:proplist()) ->
    {ok, list_application_assignments_for_principal_response(), tuple()} |
    {error, any()} |
    {error, list_application_assignments_for_principal_errors(), tuple()}.
list_application_assignments_for_principal(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListApplicationAssignmentsForPrincipal">>, Input, Options).

%% @doc Lists all of the authentication methods supported by the specified
%% application.
-spec list_application_authentication_methods(aws_client:aws_client(), list_application_authentication_methods_request()) ->
    {ok, list_application_authentication_methods_response(), tuple()} |
    {error, any()} |
    {error, list_application_authentication_methods_errors(), tuple()}.
list_application_authentication_methods(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_application_authentication_methods(Client, Input, []).

-spec list_application_authentication_methods(aws_client:aws_client(), list_application_authentication_methods_request(), proplists:proplist()) ->
    {ok, list_application_authentication_methods_response(), tuple()} |
    {error, any()} |
    {error, list_application_authentication_methods_errors(), tuple()}.
list_application_authentication_methods(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListApplicationAuthenticationMethods">>, Input, Options).

%% @doc List the grants associated with an application.
-spec list_application_grants(aws_client:aws_client(), list_application_grants_request()) ->
    {ok, list_application_grants_response(), tuple()} |
    {error, any()} |
    {error, list_application_grants_errors(), tuple()}.
list_application_grants(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_application_grants(Client, Input, []).

-spec list_application_grants(aws_client:aws_client(), list_application_grants_request(), proplists:proplist()) ->
    {ok, list_application_grants_response(), tuple()} |
    {error, any()} |
    {error, list_application_grants_errors(), tuple()}.
list_application_grants(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListApplicationGrants">>, Input, Options).

%% @doc Lists the application providers configured in the IAM Identity Center
%% identity store.
-spec list_application_providers(aws_client:aws_client(), list_application_providers_request()) ->
    {ok, list_application_providers_response(), tuple()} |
    {error, any()} |
    {error, list_application_providers_errors(), tuple()}.
list_application_providers(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_application_providers(Client, Input, []).

-spec list_application_providers(aws_client:aws_client(), list_application_providers_request(), proplists:proplist()) ->
    {ok, list_application_providers_response(), tuple()} |
    {error, any()} |
    {error, list_application_providers_errors(), tuple()}.
list_application_providers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListApplicationProviders">>, Input, Options).

%% @doc Lists all applications associated with the instance of IAM Identity
%% Center.
%%
%% When listing applications for an organization instance in the management
%% account, member accounts must use the `applicationAccount' parameter
%% to filter the list to only applications created from that account. When
%% listing applications for an account instance in the same member account, a
%% filter is not required.
-spec list_applications(aws_client:aws_client(), list_applications_request()) ->
    {ok, list_applications_response(), tuple()} |
    {error, any()} |
    {error, list_applications_errors(), tuple()}.
list_applications(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_applications(Client, Input, []).

-spec list_applications(aws_client:aws_client(), list_applications_request(), proplists:proplist()) ->
    {ok, list_applications_response(), tuple()} |
    {error, any()} |
    {error, list_applications_errors(), tuple()}.
list_applications(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListApplications">>, Input, Options).

%% @doc Lists all customer managed policies attached to a specified
%% `PermissionSet'.
-spec list_customer_managed_policy_references_in_permission_set(aws_client:aws_client(), list_customer_managed_policy_references_in_permission_set_request()) ->
    {ok, list_customer_managed_policy_references_in_permission_set_response(), tuple()} |
    {error, any()} |
    {error, list_customer_managed_policy_references_in_permission_set_errors(), tuple()}.
list_customer_managed_policy_references_in_permission_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_customer_managed_policy_references_in_permission_set(Client, Input, []).

-spec list_customer_managed_policy_references_in_permission_set(aws_client:aws_client(), list_customer_managed_policy_references_in_permission_set_request(), proplists:proplist()) ->
    {ok, list_customer_managed_policy_references_in_permission_set_response(), tuple()} |
    {error, any()} |
    {error, list_customer_managed_policy_references_in_permission_set_errors(), tuple()}.
list_customer_managed_policy_references_in_permission_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListCustomerManagedPolicyReferencesInPermissionSet">>, Input, Options).

%% @doc Lists the details of the organization and account instances of IAM
%% Identity Center that were created in or visible to the account calling
%% this API.
-spec list_instances(aws_client:aws_client(), list_instances_request()) ->
    {ok, list_instances_response(), tuple()} |
    {error, any()} |
    {error, list_instances_errors(), tuple()}.
list_instances(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_instances(Client, Input, []).

-spec list_instances(aws_client:aws_client(), list_instances_request(), proplists:proplist()) ->
    {ok, list_instances_response(), tuple()} |
    {error, any()} |
    {error, list_instances_errors(), tuple()}.
list_instances(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListInstances">>, Input, Options).

%% @doc Lists the Amazon Web Services managed policy that is attached to a
%% specified permission set.
-spec list_managed_policies_in_permission_set(aws_client:aws_client(), list_managed_policies_in_permission_set_request()) ->
    {ok, list_managed_policies_in_permission_set_response(), tuple()} |
    {error, any()} |
    {error, list_managed_policies_in_permission_set_errors(), tuple()}.
list_managed_policies_in_permission_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_managed_policies_in_permission_set(Client, Input, []).

-spec list_managed_policies_in_permission_set(aws_client:aws_client(), list_managed_policies_in_permission_set_request(), proplists:proplist()) ->
    {ok, list_managed_policies_in_permission_set_response(), tuple()} |
    {error, any()} |
    {error, list_managed_policies_in_permission_set_errors(), tuple()}.
list_managed_policies_in_permission_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListManagedPoliciesInPermissionSet">>, Input, Options).

%% @doc Lists the status of the permission set provisioning requests for a
%% specified IAM Identity Center instance.
-spec list_permission_set_provisioning_status(aws_client:aws_client(), list_permission_set_provisioning_status_request()) ->
    {ok, list_permission_set_provisioning_status_response(), tuple()} |
    {error, any()} |
    {error, list_permission_set_provisioning_status_errors(), tuple()}.
list_permission_set_provisioning_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_permission_set_provisioning_status(Client, Input, []).

-spec list_permission_set_provisioning_status(aws_client:aws_client(), list_permission_set_provisioning_status_request(), proplists:proplist()) ->
    {ok, list_permission_set_provisioning_status_response(), tuple()} |
    {error, any()} |
    {error, list_permission_set_provisioning_status_errors(), tuple()}.
list_permission_set_provisioning_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPermissionSetProvisioningStatus">>, Input, Options).

%% @doc Lists the `PermissionSet's in an IAM Identity Center instance.
-spec list_permission_sets(aws_client:aws_client(), list_permission_sets_request()) ->
    {ok, list_permission_sets_response(), tuple()} |
    {error, any()} |
    {error, list_permission_sets_errors(), tuple()}.
list_permission_sets(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_permission_sets(Client, Input, []).

-spec list_permission_sets(aws_client:aws_client(), list_permission_sets_request(), proplists:proplist()) ->
    {ok, list_permission_sets_response(), tuple()} |
    {error, any()} |
    {error, list_permission_sets_errors(), tuple()}.
list_permission_sets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPermissionSets">>, Input, Options).

%% @doc Lists all the permission sets that are provisioned to a specified
%% Amazon Web Services account.
-spec list_permission_sets_provisioned_to_account(aws_client:aws_client(), list_permission_sets_provisioned_to_account_request()) ->
    {ok, list_permission_sets_provisioned_to_account_response(), tuple()} |
    {error, any()} |
    {error, list_permission_sets_provisioned_to_account_errors(), tuple()}.
list_permission_sets_provisioned_to_account(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_permission_sets_provisioned_to_account(Client, Input, []).

-spec list_permission_sets_provisioned_to_account(aws_client:aws_client(), list_permission_sets_provisioned_to_account_request(), proplists:proplist()) ->
    {ok, list_permission_sets_provisioned_to_account_response(), tuple()} |
    {error, any()} |
    {error, list_permission_sets_provisioned_to_account_errors(), tuple()}.
list_permission_sets_provisioned_to_account(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPermissionSetsProvisionedToAccount">>, Input, Options).

%% @doc Lists the tags that are attached to a specified resource.
-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_request()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).

-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_request(), proplists:proplist()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Lists all the trusted token issuers configured in an instance of IAM
%% Identity Center.
-spec list_trusted_token_issuers(aws_client:aws_client(), list_trusted_token_issuers_request()) ->
    {ok, list_trusted_token_issuers_response(), tuple()} |
    {error, any()} |
    {error, list_trusted_token_issuers_errors(), tuple()}.
list_trusted_token_issuers(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_trusted_token_issuers(Client, Input, []).

-spec list_trusted_token_issuers(aws_client:aws_client(), list_trusted_token_issuers_request(), proplists:proplist()) ->
    {ok, list_trusted_token_issuers_response(), tuple()} |
    {error, any()} |
    {error, list_trusted_token_issuers_errors(), tuple()}.
list_trusted_token_issuers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTrustedTokenIssuers">>, Input, Options).

%% @doc The process by which a specified permission set is provisioned to the
%% specified target.
-spec provision_permission_set(aws_client:aws_client(), provision_permission_set_request()) ->
    {ok, provision_permission_set_response(), tuple()} |
    {error, any()} |
    {error, provision_permission_set_errors(), tuple()}.
provision_permission_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    provision_permission_set(Client, Input, []).

-spec provision_permission_set(aws_client:aws_client(), provision_permission_set_request(), proplists:proplist()) ->
    {ok, provision_permission_set_response(), tuple()} |
    {error, any()} |
    {error, provision_permission_set_errors(), tuple()}.
provision_permission_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ProvisionPermissionSet">>, Input, Options).

%% @doc Adds or updates the list of authorized targets for an IAM Identity
%% Center access scope for an application.
-spec put_application_access_scope(aws_client:aws_client(), put_application_access_scope_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_application_access_scope_errors(), tuple()}.
put_application_access_scope(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_application_access_scope(Client, Input, []).

-spec put_application_access_scope(aws_client:aws_client(), put_application_access_scope_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_application_access_scope_errors(), tuple()}.
put_application_access_scope(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutApplicationAccessScope">>, Input, Options).

%% @doc Configure how users gain access to an application.
%%
%% If `AssignmentsRequired' is `true' (default value), users don’t
%% have access to the application unless an assignment is created using the
%% CreateApplicationAssignment API:
%% https://docs.aws.amazon.com/singlesignon/latest/APIReference/API_CreateApplicationAssignment.html.
%% If `false', all users have access to the application. If an assignment
%% is created using CreateApplicationAssignment:
%% https://docs.aws.amazon.com/singlesignon/latest/APIReference/API_CreateApplicationAssignment.html.,
%% the user retains access if `AssignmentsRequired' is set to `true'.
-spec put_application_assignment_configuration(aws_client:aws_client(), put_application_assignment_configuration_request()) ->
    {ok, put_application_assignment_configuration_response(), tuple()} |
    {error, any()} |
    {error, put_application_assignment_configuration_errors(), tuple()}.
put_application_assignment_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_application_assignment_configuration(Client, Input, []).

-spec put_application_assignment_configuration(aws_client:aws_client(), put_application_assignment_configuration_request(), proplists:proplist()) ->
    {ok, put_application_assignment_configuration_response(), tuple()} |
    {error, any()} |
    {error, put_application_assignment_configuration_errors(), tuple()}.
put_application_assignment_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutApplicationAssignmentConfiguration">>, Input, Options).

%% @doc Adds or updates an authentication method for an application.
-spec put_application_authentication_method(aws_client:aws_client(), put_application_authentication_method_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_application_authentication_method_errors(), tuple()}.
put_application_authentication_method(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_application_authentication_method(Client, Input, []).

-spec put_application_authentication_method(aws_client:aws_client(), put_application_authentication_method_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_application_authentication_method_errors(), tuple()}.
put_application_authentication_method(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutApplicationAuthenticationMethod">>, Input, Options).

%% @doc Creates a configuration for an application to use grants.
%%
%% Conceptually grants are authorization to request actions related to
%% tokens. This configuration will be used when parties are requesting and
%% receiving tokens during the trusted identity propagation process. For more
%% information on the IAM Identity Center supported grant workflows, see SAML
%% 2.0 and OAuth 2.0:
%% https://docs.aws.amazon.com/singlesignon/latest/userguide/customermanagedapps-saml2-oauth2.html.
%%
%% A grant is created between your applications and Identity Center instance
%% which enables an application to use specified mechanisms to obtain tokens.
%% These tokens are used by your applications to gain access to Amazon Web
%% Services resources on behalf of users. The following elements are within
%% these exchanges:
%%
%% Requester - The application requesting access to Amazon Web Services
%% resources.
%%
%% Subject - Typically the user that is requesting access to Amazon Web
%% Services resources.
%%
%% Grant - Conceptually, a grant is authorization to access Amazon Web
%% Services resources. These grants authorize token generation for
%% authenticating access to the requester and for the request to make
%% requests on behalf of the subjects. There are four types of grants:
%%
%% AuthorizationCode - Allows an application to request authorization through
%% a series of user-agent redirects.
%%
%% JWT bearer - Authorizes an application to exchange a JSON Web Token that
%% came from an external identity provider. To learn more, see RFC 6479:
%% https://datatracker.ietf.org/doc/html/rfc6749.
%%
%% Refresh token - Enables application to request new access tokens to
%% replace expiring or expired access tokens.
%%
%% Exchange token - A grant that requests tokens from the authorization
%% server by providing a ‘subject’ token with access scope authorizing
%% trusted identity propagation to this application. To learn more, see RFC
%% 8693: https://datatracker.ietf.org/doc/html/rfc8693.
%%
%% Authorization server - IAM Identity Center requests tokens.
%%
%% User credentials are never shared directly within these exchanges.
%% Instead, applications use grants to request access tokens from IAM
%% Identity Center. For more information, see RFC 6479:
%% https://datatracker.ietf.org/doc/html/rfc6749.
%%
%% == Use cases ==
%%
%% Connecting to custom applications.
%%
%% Configuring an Amazon Web Services service to make calls to another Amazon
%% Web Services services using JWT tokens.
-spec put_application_grant(aws_client:aws_client(), put_application_grant_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_application_grant_errors(), tuple()}.
put_application_grant(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_application_grant(Client, Input, []).

-spec put_application_grant(aws_client:aws_client(), put_application_grant_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_application_grant_errors(), tuple()}.
put_application_grant(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutApplicationGrant">>, Input, Options).

%% @doc Updates the session configuration for an application in IAM Identity
%% Center.
%%
%% The session configuration determines how users can access an application.
%% This includes whether user background sessions are enabled. User
%% background sessions allow users to start a job on a supported Amazon Web
%% Services managed application without having to remain signed in to an
%% active session while the job runs.
-spec put_application_session_configuration(aws_client:aws_client(), put_application_session_configuration_request()) ->
    {ok, put_application_session_configuration_response(), tuple()} |
    {error, any()} |
    {error, put_application_session_configuration_errors(), tuple()}.
put_application_session_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_application_session_configuration(Client, Input, []).

-spec put_application_session_configuration(aws_client:aws_client(), put_application_session_configuration_request(), proplists:proplist()) ->
    {ok, put_application_session_configuration_response(), tuple()} |
    {error, any()} |
    {error, put_application_session_configuration_errors(), tuple()}.
put_application_session_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutApplicationSessionConfiguration">>, Input, Options).

%% @doc Attaches an inline policy to a permission set.
%%
%% If the permission set is already referenced by one or more account
%% assignments, you will need to call ` `ProvisionPermissionSet' '
%% after this action to apply the corresponding IAM policy updates to all
%% assigned accounts.
-spec put_inline_policy_to_permission_set(aws_client:aws_client(), put_inline_policy_to_permission_set_request()) ->
    {ok, put_inline_policy_to_permission_set_response(), tuple()} |
    {error, any()} |
    {error, put_inline_policy_to_permission_set_errors(), tuple()}.
put_inline_policy_to_permission_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_inline_policy_to_permission_set(Client, Input, []).

-spec put_inline_policy_to_permission_set(aws_client:aws_client(), put_inline_policy_to_permission_set_request(), proplists:proplist()) ->
    {ok, put_inline_policy_to_permission_set_response(), tuple()} |
    {error, any()} |
    {error, put_inline_policy_to_permission_set_errors(), tuple()}.
put_inline_policy_to_permission_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutInlinePolicyToPermissionSet">>, Input, Options).

%% @doc Attaches an Amazon Web Services managed or customer managed policy to
%% the specified `PermissionSet' as a permissions boundary.
-spec put_permissions_boundary_to_permission_set(aws_client:aws_client(), put_permissions_boundary_to_permission_set_request()) ->
    {ok, put_permissions_boundary_to_permission_set_response(), tuple()} |
    {error, any()} |
    {error, put_permissions_boundary_to_permission_set_errors(), tuple()}.
put_permissions_boundary_to_permission_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_permissions_boundary_to_permission_set(Client, Input, []).

-spec put_permissions_boundary_to_permission_set(aws_client:aws_client(), put_permissions_boundary_to_permission_set_request(), proplists:proplist()) ->
    {ok, put_permissions_boundary_to_permission_set_response(), tuple()} |
    {error, any()} |
    {error, put_permissions_boundary_to_permission_set_errors(), tuple()}.
put_permissions_boundary_to_permission_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutPermissionsBoundaryToPermissionSet">>, Input, Options).

%% @doc Associates a set of tags with a specified resource.
-spec tag_resource(aws_client:aws_client(), tag_resource_request()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).

-spec tag_resource(aws_client:aws_client(), tag_resource_request(), proplists:proplist()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Disassociates a set of tags from a specified resource.
-spec untag_resource(aws_client:aws_client(), untag_resource_request()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).

-spec untag_resource(aws_client:aws_client(), untag_resource_request(), proplists:proplist()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc Updates application properties.
-spec update_application(aws_client:aws_client(), update_application_request()) ->
    {ok, update_application_response(), tuple()} |
    {error, any()} |
    {error, update_application_errors(), tuple()}.
update_application(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_application(Client, Input, []).

-spec update_application(aws_client:aws_client(), update_application_request(), proplists:proplist()) ->
    {ok, update_application_response(), tuple()} |
    {error, any()} |
    {error, update_application_errors(), tuple()}.
update_application(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateApplication">>, Input, Options).

%% @doc Update the details for the instance of IAM Identity Center that is
%% owned by the Amazon Web Services account.
-spec update_instance(aws_client:aws_client(), update_instance_request()) ->
    {ok, update_instance_response(), tuple()} |
    {error, any()} |
    {error, update_instance_errors(), tuple()}.
update_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_instance(Client, Input, []).

-spec update_instance(aws_client:aws_client(), update_instance_request(), proplists:proplist()) ->
    {ok, update_instance_response(), tuple()} |
    {error, any()} |
    {error, update_instance_errors(), tuple()}.
update_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateInstance">>, Input, Options).

%% @doc Updates the IAM Identity Center identity store attributes that you
%% can use with the IAM Identity Center instance for attributes-based access
%% control (ABAC).
%%
%% When using an external identity provider as an identity source, you can
%% pass attributes through the SAML assertion as an alternative to
%% configuring attributes from the IAM Identity Center identity store. If a
%% SAML assertion passes any of these attributes, IAM Identity Center
%% replaces the attribute value with the value from the IAM Identity Center
%% identity store. For more information about ABAC, see Attribute-Based
%% Access Control: /singlesignon/latest/userguide/abac.html in the IAM
%% Identity Center User Guide.
-spec update_instance_access_control_attribute_configuration(aws_client:aws_client(), update_instance_access_control_attribute_configuration_request()) ->
    {ok, update_instance_access_control_attribute_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_instance_access_control_attribute_configuration_errors(), tuple()}.
update_instance_access_control_attribute_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_instance_access_control_attribute_configuration(Client, Input, []).

-spec update_instance_access_control_attribute_configuration(aws_client:aws_client(), update_instance_access_control_attribute_configuration_request(), proplists:proplist()) ->
    {ok, update_instance_access_control_attribute_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_instance_access_control_attribute_configuration_errors(), tuple()}.
update_instance_access_control_attribute_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateInstanceAccessControlAttributeConfiguration">>, Input, Options).

%% @doc Updates an existing permission set.
-spec update_permission_set(aws_client:aws_client(), update_permission_set_request()) ->
    {ok, update_permission_set_response(), tuple()} |
    {error, any()} |
    {error, update_permission_set_errors(), tuple()}.
update_permission_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_permission_set(Client, Input, []).

-spec update_permission_set(aws_client:aws_client(), update_permission_set_request(), proplists:proplist()) ->
    {ok, update_permission_set_response(), tuple()} |
    {error, any()} |
    {error, update_permission_set_errors(), tuple()}.
update_permission_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdatePermissionSet">>, Input, Options).

%% @doc Updates the name of the trusted token issuer, or the path of a source
%% attribute or destination attribute for a trusted token issuer
%% configuration.
%%
%% Updating this trusted token issuer configuration might cause users to lose
%% access to any applications that are configured to use the trusted token
%% issuer.
-spec update_trusted_token_issuer(aws_client:aws_client(), update_trusted_token_issuer_request()) ->
    {ok, update_trusted_token_issuer_response(), tuple()} |
    {error, any()} |
    {error, update_trusted_token_issuer_errors(), tuple()}.
update_trusted_token_issuer(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_trusted_token_issuer(Client, Input, []).

-spec update_trusted_token_issuer(aws_client:aws_client(), update_trusted_token_issuer_request(), proplists:proplist()) ->
    {ok, update_trusted_token_issuer_response(), tuple()} |
    {error, any()} |
    {error, update_trusted_token_issuer_errors(), tuple()}.
update_trusted_token_issuer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateTrustedTokenIssuer">>, Input, Options).

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
    Client1 = Client#{service => <<"sso">>},
    Host = build_host(<<"sso">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"SWBExternalService.", Action/binary>>}
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
