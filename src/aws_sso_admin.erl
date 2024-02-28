%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc IAM Identity Center (successor to Single Sign-On) helps you securely
%% create, or connect, your workforce identities and manage their access
%% centrally across Amazon Web Services accounts and applications.
%%
%% IAM Identity Center is the recommended approach for workforce
%% authentication and authorization in Amazon Web Services, for organizations
%% of any size and type.
%%
%% IAM Identity Center uses the `sso' and `identitystore' API
%% namespaces.
%%
%% This reference guide provides information on single sign-on operations
%% which could be used for access management of Amazon Web Services accounts.
%% For information about IAM Identity Center features, see the IAM Identity
%% Center User Guide:
%% https://docs.aws.amazon.com/singlesignon/latest/userguide/what-is.html.
%%
%% Many operations in the IAM Identity Center APIs rely on identifiers for
%% users and groups, known as principals. For more information about how to
%% work with principals and principal IDs in IAM Identity Center, see the
%% Identity Store API Reference:
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

%%====================================================================
%% API
%%====================================================================

%% @doc Attaches the specified customer managed policy to the specified
%% `PermissionSet'.
attach_customer_managed_policy_reference_to_permission_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    attach_customer_managed_policy_reference_to_permission_set(Client, Input, []).
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
attach_managed_policy_to_permission_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    attach_managed_policy_to_permission_set(Client, Input, []).
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
create_account_assignment(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_account_assignment(Client, Input, []).
create_account_assignment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateAccountAssignment">>, Input, Options).

%% @doc Creates an application in IAM Identity Center for the given
%% application provider.
create_application(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_application(Client, Input, []).
create_application(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateApplication">>, Input, Options).

%% @doc Grant application access to a user or group.
create_application_assignment(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_application_assignment(Client, Input, []).
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
%% <ul> <li> The instance is created within the organization management
%% account.
%%
%% </li> <li> An instance already exists in the same account.
%%
%% </li> </ul>
create_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_instance(Client, Input, []).
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
create_instance_access_control_attribute_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_instance_access_control_attribute_configuration(Client, Input, []).
create_instance_access_control_attribute_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateInstanceAccessControlAttributeConfiguration">>, Input, Options).

%% @doc Creates a permission set within a specified IAM Identity Center
%% instance.
%%
%% To grant users and groups access to Amazon Web Services account resources,
%% use ` `CreateAccountAssignment' '.
create_permission_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_permission_set(Client, Input, []).
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
create_trusted_token_issuer(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_trusted_token_issuer(Client, Input, []).
create_trusted_token_issuer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateTrustedTokenIssuer">>, Input, Options).

%% @doc Deletes a principal's access from a specified Amazon Web Services
%% account using a specified permission set.
%%
%% After a successful response, call
%% `DescribeAccountAssignmentDeletionStatus' to describe the status of an
%% assignment deletion request.
delete_account_assignment(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_account_assignment(Client, Input, []).
delete_account_assignment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAccountAssignment">>, Input, Options).

%% @doc Deletes the association with the application.
%%
%% The connected service resource still exists.
delete_application(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_application(Client, Input, []).
delete_application(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteApplication">>, Input, Options).

%% @doc Deletes an IAM Identity Center access scope from an application.
delete_application_access_scope(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_application_access_scope(Client, Input, []).
delete_application_access_scope(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteApplicationAccessScope">>, Input, Options).

%% @doc Revoke application access to an application by deleting application
%% assignments for a user or group.
delete_application_assignment(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_application_assignment(Client, Input, []).
delete_application_assignment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteApplicationAssignment">>, Input, Options).

%% @doc Deletes an authentication method from an application.
delete_application_authentication_method(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_application_authentication_method(Client, Input, []).
delete_application_authentication_method(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteApplicationAuthenticationMethod">>, Input, Options).

%% @doc Deletes a grant from an application.
delete_application_grant(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_application_grant(Client, Input, []).
delete_application_grant(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteApplicationGrant">>, Input, Options).

%% @doc Deletes the inline policy from a specified permission set.
delete_inline_policy_from_permission_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_inline_policy_from_permission_set(Client, Input, []).
delete_inline_policy_from_permission_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteInlinePolicyFromPermissionSet">>, Input, Options).

%% @doc Deletes the instance of IAM Identity Center.
%%
%% Only the account that owns the instance can call this API. Neither the
%% delegated administrator nor member account can delete the organization
%% instance, but those roles can delete their own instance.
delete_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_instance(Client, Input, []).
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
delete_instance_access_control_attribute_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_instance_access_control_attribute_configuration(Client, Input, []).
delete_instance_access_control_attribute_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteInstanceAccessControlAttributeConfiguration">>, Input, Options).

%% @doc Deletes the specified permission set.
delete_permission_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_permission_set(Client, Input, []).
delete_permission_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeletePermissionSet">>, Input, Options).

%% @doc Deletes the permissions boundary from a specified
%% `PermissionSet'.
delete_permissions_boundary_from_permission_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_permissions_boundary_from_permission_set(Client, Input, []).
delete_permissions_boundary_from_permission_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeletePermissionsBoundaryFromPermissionSet">>, Input, Options).

%% @doc Deletes a trusted token issuer configuration from an instance of IAM
%% Identity Center.
%%
%% Deleting this trusted token issuer configuration will cause users to lose
%% access to any applications that are configured to use the trusted token
%% issuer.
delete_trusted_token_issuer(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_trusted_token_issuer(Client, Input, []).
delete_trusted_token_issuer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteTrustedTokenIssuer">>, Input, Options).

%% @doc Describes the status of the assignment creation request.
describe_account_assignment_creation_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_account_assignment_creation_status(Client, Input, []).
describe_account_assignment_creation_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAccountAssignmentCreationStatus">>, Input, Options).

%% @doc Describes the status of the assignment deletion request.
describe_account_assignment_deletion_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_account_assignment_deletion_status(Client, Input, []).
describe_account_assignment_deletion_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAccountAssignmentDeletionStatus">>, Input, Options).

%% @doc Retrieves the details of an application associated with an instance
%% of IAM Identity Center.
describe_application(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_application(Client, Input, []).
describe_application(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeApplication">>, Input, Options).

%% @doc Retrieves a direct assignment of a user or group to an application.
%%
%% If the user doesn’t have a direct assignment to the application, the user
%% may still have access to the application through a group. Therefore, don’t
%% use this API to test access to an application for a user. Instead use
%% `ListApplicationAssignmentsForPrincipal'.
describe_application_assignment(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_application_assignment(Client, Input, []).
describe_application_assignment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeApplicationAssignment">>, Input, Options).

%% @doc Retrieves details about a provider that can be used to connect an
%% Amazon Web Services managed application or customer managed application to
%% IAM Identity Center.
describe_application_provider(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_application_provider(Client, Input, []).
describe_application_provider(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeApplicationProvider">>, Input, Options).

%% @doc Returns the details of an instance of IAM Identity Center.
%%
%% The status can be one of the following:
%%
%% <ul> <li> `CREATE_IN_PROGRESS' - The instance is in the process of
%% being created. When the instance is ready for use, DescribeInstance
%% returns the status of `ACTIVE'. While the instance is in the
%% `CREATE_IN_PROGRESS' state, you can call only DescribeInstance and
%% DeleteInstance operations.
%%
%% </li> <li> `DELETE_IN_PROGRESS' - The instance is being deleted.
%% Returns `AccessDeniedException' after the delete operation completes.
%%
%% </li> <li> `ACTIVE' - The instance is active.
%%
%% </li> </ul>
describe_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_instance(Client, Input, []).
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
describe_instance_access_control_attribute_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_instance_access_control_attribute_configuration(Client, Input, []).
describe_instance_access_control_attribute_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeInstanceAccessControlAttributeConfiguration">>, Input, Options).

%% @doc Gets the details of the permission set.
describe_permission_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_permission_set(Client, Input, []).
describe_permission_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribePermissionSet">>, Input, Options).

%% @doc Describes the status for the given permission set provisioning
%% request.
describe_permission_set_provisioning_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_permission_set_provisioning_status(Client, Input, []).
describe_permission_set_provisioning_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribePermissionSetProvisioningStatus">>, Input, Options).

%% @doc Retrieves details about a trusted token issuer configuration stored
%% in an instance of IAM Identity Center.
%%
%% Details include the name of the trusted token issuer, the issuer URL, and
%% the path of the source attribute and the destination attribute for a
%% trusted token issuer configuration.
describe_trusted_token_issuer(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_trusted_token_issuer(Client, Input, []).
describe_trusted_token_issuer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTrustedTokenIssuer">>, Input, Options).

%% @doc Detaches the specified customer managed policy from the specified
%% `PermissionSet'.
detach_customer_managed_policy_reference_from_permission_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    detach_customer_managed_policy_reference_from_permission_set(Client, Input, []).
detach_customer_managed_policy_reference_from_permission_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DetachCustomerManagedPolicyReferenceFromPermissionSet">>, Input, Options).

%% @doc Detaches the attached Amazon Web Services managed policy ARN from the
%% specified permission set.
detach_managed_policy_from_permission_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    detach_managed_policy_from_permission_set(Client, Input, []).
detach_managed_policy_from_permission_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DetachManagedPolicyFromPermissionSet">>, Input, Options).

%% @doc Retrieves the authorized targets for an IAM Identity Center access
%% scope for an application.
get_application_access_scope(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_application_access_scope(Client, Input, []).
get_application_access_scope(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetApplicationAccessScope">>, Input, Options).

%% @doc Retrieves the configuration of
%% `PutApplicationAssignmentConfiguration'.
get_application_assignment_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_application_assignment_configuration(Client, Input, []).
get_application_assignment_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetApplicationAssignmentConfiguration">>, Input, Options).

%% @doc Retrieves details about an authentication method used by an
%% application.
get_application_authentication_method(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_application_authentication_method(Client, Input, []).
get_application_authentication_method(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetApplicationAuthenticationMethod">>, Input, Options).

%% @doc Retrieves details about an application grant.
get_application_grant(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_application_grant(Client, Input, []).
get_application_grant(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetApplicationGrant">>, Input, Options).

%% @doc Obtains the inline policy assigned to the permission set.
get_inline_policy_for_permission_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_inline_policy_for_permission_set(Client, Input, []).
get_inline_policy_for_permission_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetInlinePolicyForPermissionSet">>, Input, Options).

%% @doc Obtains the permissions boundary for a specified `PermissionSet'.
get_permissions_boundary_for_permission_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_permissions_boundary_for_permission_set(Client, Input, []).
get_permissions_boundary_for_permission_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetPermissionsBoundaryForPermissionSet">>, Input, Options).

%% @doc Lists the status of the Amazon Web Services account assignment
%% creation requests for a specified IAM Identity Center instance.
list_account_assignment_creation_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_account_assignment_creation_status(Client, Input, []).
list_account_assignment_creation_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAccountAssignmentCreationStatus">>, Input, Options).

%% @doc Lists the status of the Amazon Web Services account assignment
%% deletion requests for a specified IAM Identity Center instance.
list_account_assignment_deletion_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_account_assignment_deletion_status(Client, Input, []).
list_account_assignment_deletion_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAccountAssignmentDeletionStatus">>, Input, Options).

%% @doc Lists the assignee of the specified Amazon Web Services account with
%% the specified permission set.
list_account_assignments(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_account_assignments(Client, Input, []).
list_account_assignments(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAccountAssignments">>, Input, Options).

%% @doc Retrieves a list of the IAM Identity Center associated Amazon Web
%% Services accounts that the principal has access to.
list_account_assignments_for_principal(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_account_assignments_for_principal(Client, Input, []).
list_account_assignments_for_principal(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAccountAssignmentsForPrincipal">>, Input, Options).

%% @doc Lists all the Amazon Web Services accounts where the specified
%% permission set is provisioned.
list_accounts_for_provisioned_permission_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_accounts_for_provisioned_permission_set(Client, Input, []).
list_accounts_for_provisioned_permission_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAccountsForProvisionedPermissionSet">>, Input, Options).

%% @doc Lists the access scopes and authorized targets associated with an
%% application.
list_application_access_scopes(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_application_access_scopes(Client, Input, []).
list_application_access_scopes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListApplicationAccessScopes">>, Input, Options).

%% @doc Lists Amazon Web Services account users that are assigned to an
%% application.
list_application_assignments(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_application_assignments(Client, Input, []).
list_application_assignments(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListApplicationAssignments">>, Input, Options).

%% @doc Lists the applications to which a specified principal is assigned.
list_application_assignments_for_principal(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_application_assignments_for_principal(Client, Input, []).
list_application_assignments_for_principal(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListApplicationAssignmentsForPrincipal">>, Input, Options).

%% @doc Lists all of the authentication methods supported by the specified
%% application.
list_application_authentication_methods(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_application_authentication_methods(Client, Input, []).
list_application_authentication_methods(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListApplicationAuthenticationMethods">>, Input, Options).

%% @doc List the grants associated with an application.
list_application_grants(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_application_grants(Client, Input, []).
list_application_grants(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListApplicationGrants">>, Input, Options).

%% @doc Lists the application providers configured in the IAM Identity Center
%% identity store.
list_application_providers(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_application_providers(Client, Input, []).
list_application_providers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListApplicationProviders">>, Input, Options).

%% @doc Lists all applications associated with the instance of IAM Identity
%% Center.
%%
%% When listing applications for an instance in the management account,
%% member accounts must use the `applicationAccount' parameter to filter
%% the list to only applications created from that account.
list_applications(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_applications(Client, Input, []).
list_applications(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListApplications">>, Input, Options).

%% @doc Lists all customer managed policies attached to a specified
%% `PermissionSet'.
list_customer_managed_policy_references_in_permission_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_customer_managed_policy_references_in_permission_set(Client, Input, []).
list_customer_managed_policy_references_in_permission_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListCustomerManagedPolicyReferencesInPermissionSet">>, Input, Options).

%% @doc Lists the details of the organization and account instances of IAM
%% Identity Center that were created in or visible to the account calling
%% this API.
list_instances(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_instances(Client, Input, []).
list_instances(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListInstances">>, Input, Options).

%% @doc Lists the Amazon Web Services managed policy that is attached to a
%% specified permission set.
list_managed_policies_in_permission_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_managed_policies_in_permission_set(Client, Input, []).
list_managed_policies_in_permission_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListManagedPoliciesInPermissionSet">>, Input, Options).

%% @doc Lists the status of the permission set provisioning requests for a
%% specified IAM Identity Center instance.
list_permission_set_provisioning_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_permission_set_provisioning_status(Client, Input, []).
list_permission_set_provisioning_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPermissionSetProvisioningStatus">>, Input, Options).

%% @doc Lists the `PermissionSet's in an IAM Identity Center instance.
list_permission_sets(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_permission_sets(Client, Input, []).
list_permission_sets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPermissionSets">>, Input, Options).

%% @doc Lists all the permission sets that are provisioned to a specified
%% Amazon Web Services account.
list_permission_sets_provisioned_to_account(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_permission_sets_provisioned_to_account(Client, Input, []).
list_permission_sets_provisioned_to_account(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPermissionSetsProvisionedToAccount">>, Input, Options).

%% @doc Lists the tags that are attached to a specified resource.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Lists all the trusted token issuers configured in an instance of IAM
%% Identity Center.
list_trusted_token_issuers(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_trusted_token_issuers(Client, Input, []).
list_trusted_token_issuers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTrustedTokenIssuers">>, Input, Options).

%% @doc The process by which a specified permission set is provisioned to the
%% specified target.
provision_permission_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    provision_permission_set(Client, Input, []).
provision_permission_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ProvisionPermissionSet">>, Input, Options).

%% @doc Adds or updates the list of authorized targets for an IAM Identity
%% Center access scope for an application.
put_application_access_scope(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_application_access_scope(Client, Input, []).
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
put_application_assignment_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_application_assignment_configuration(Client, Input, []).
put_application_assignment_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutApplicationAssignmentConfiguration">>, Input, Options).

%% @doc Adds or updates an authentication method for an application.
put_application_authentication_method(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_application_authentication_method(Client, Input, []).
put_application_authentication_method(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutApplicationAuthenticationMethod">>, Input, Options).

%% @doc Adds a grant to an application.
put_application_grant(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_application_grant(Client, Input, []).
put_application_grant(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutApplicationGrant">>, Input, Options).

%% @doc Attaches an inline policy to a permission set.
%%
%% If the permission set is already referenced by one or more account
%% assignments, you will need to call ` `ProvisionPermissionSet' '
%% after this action to apply the corresponding IAM policy updates to all
%% assigned accounts.
put_inline_policy_to_permission_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_inline_policy_to_permission_set(Client, Input, []).
put_inline_policy_to_permission_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutInlinePolicyToPermissionSet">>, Input, Options).

%% @doc Attaches an Amazon Web Services managed or customer managed policy to
%% the specified `PermissionSet' as a permissions boundary.
put_permissions_boundary_to_permission_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_permissions_boundary_to_permission_set(Client, Input, []).
put_permissions_boundary_to_permission_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutPermissionsBoundaryToPermissionSet">>, Input, Options).

%% @doc Associates a set of tags with a specified resource.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Disassociates a set of tags from a specified resource.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc Updates application properties.
update_application(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_application(Client, Input, []).
update_application(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateApplication">>, Input, Options).

%% @doc Update the details for the instance of IAM Identity Center that is
%% owned by the Amazon Web Services account.
update_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_instance(Client, Input, []).
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
update_instance_access_control_attribute_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_instance_access_control_attribute_configuration(Client, Input, []).
update_instance_access_control_attribute_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateInstanceAccessControlAttributeConfiguration">>, Input, Options).

%% @doc Updates an existing permission set.
update_permission_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_permission_set(Client, Input, []).
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
update_trusted_token_issuer(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_trusted_token_issuer(Client, Input, []).
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
