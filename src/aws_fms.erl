%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc This is the Firewall Manager API Reference.
%%
%% This guide is for
%% developers who need detailed information about the Firewall Manager API
%% actions, data
%% types, and errors. For detailed information about Firewall Manager
%% features, see the
%% Firewall Manager Developer Guide:
%% https://docs.aws.amazon.com/waf/latest/developerguide/fms-chapter.html.
%%
%% Some API actions require explicit resource permissions. For information,
%% see the developer guide topic
%% Service roles for Firewall Manager:
%% https://docs.aws.amazon.com/waf/latest/developerguide/fms-security_iam_service-with-iam.html#fms-security_iam_service-with-iam-roles-service.
-module(aws_fms).

-export([associate_admin_account/2,
         associate_admin_account/3,
         associate_third_party_firewall/2,
         associate_third_party_firewall/3,
         batch_associate_resource/2,
         batch_associate_resource/3,
         batch_disassociate_resource/2,
         batch_disassociate_resource/3,
         delete_apps_list/2,
         delete_apps_list/3,
         delete_notification_channel/2,
         delete_notification_channel/3,
         delete_policy/2,
         delete_policy/3,
         delete_protocols_list/2,
         delete_protocols_list/3,
         delete_resource_set/2,
         delete_resource_set/3,
         disassociate_admin_account/2,
         disassociate_admin_account/3,
         disassociate_third_party_firewall/2,
         disassociate_third_party_firewall/3,
         get_admin_account/2,
         get_admin_account/3,
         get_admin_scope/2,
         get_admin_scope/3,
         get_apps_list/2,
         get_apps_list/3,
         get_compliance_detail/2,
         get_compliance_detail/3,
         get_notification_channel/2,
         get_notification_channel/3,
         get_policy/2,
         get_policy/3,
         get_protection_status/2,
         get_protection_status/3,
         get_protocols_list/2,
         get_protocols_list/3,
         get_resource_set/2,
         get_resource_set/3,
         get_third_party_firewall_association_status/2,
         get_third_party_firewall_association_status/3,
         get_violation_details/2,
         get_violation_details/3,
         list_admin_accounts_for_organization/2,
         list_admin_accounts_for_organization/3,
         list_admins_managing_account/2,
         list_admins_managing_account/3,
         list_apps_lists/2,
         list_apps_lists/3,
         list_compliance_status/2,
         list_compliance_status/3,
         list_discovered_resources/2,
         list_discovered_resources/3,
         list_member_accounts/2,
         list_member_accounts/3,
         list_policies/2,
         list_policies/3,
         list_protocols_lists/2,
         list_protocols_lists/3,
         list_resource_set_resources/2,
         list_resource_set_resources/3,
         list_resource_sets/2,
         list_resource_sets/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         list_third_party_firewall_firewall_policies/2,
         list_third_party_firewall_firewall_policies/3,
         put_admin_account/2,
         put_admin_account/3,
         put_apps_list/2,
         put_apps_list/3,
         put_notification_channel/2,
         put_notification_channel/3,
         put_policy/2,
         put_policy/3,
         put_protocols_list/2,
         put_protocols_list/3,
         put_resource_set/2,
         put_resource_set/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Sets a Firewall Manager default administrator account.
%%
%% The Firewall Manager default administrator account can manage third-party
%% firewalls and has full administrative scope that allows administration of
%% all policy types, accounts, organizational units, and Regions. This
%% account must be a member account of the organization in Organizations
%% whose resources you want to protect.
%%
%% For information about working with Firewall Manager administrator
%% accounts, see Managing Firewall Manager administrators:
%% https://docs.aws.amazon.com/organizations/latest/userguide/fms-administrators.html
%% in the Firewall Manager Developer Guide.
associate_admin_account(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_admin_account(Client, Input, []).
associate_admin_account(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateAdminAccount">>, Input, Options).

%% @doc Sets the Firewall Manager policy administrator as a tenant
%% administrator of a third-party firewall service.
%%
%% A tenant is an instance of the third-party firewall service that's
%% associated with your Amazon Web Services customer account.
associate_third_party_firewall(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_third_party_firewall(Client, Input, []).
associate_third_party_firewall(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateThirdPartyFirewall">>, Input, Options).

%% @doc Associate resources to a Firewall Manager resource set.
batch_associate_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_associate_resource(Client, Input, []).
batch_associate_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchAssociateResource">>, Input, Options).

%% @doc Disassociates resources from a Firewall Manager resource set.
batch_disassociate_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_disassociate_resource(Client, Input, []).
batch_disassociate_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchDisassociateResource">>, Input, Options).

%% @doc Permanently deletes an Firewall Manager applications list.
delete_apps_list(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_apps_list(Client, Input, []).
delete_apps_list(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAppsList">>, Input, Options).

%% @doc Deletes an Firewall Manager association with the IAM role and the
%% Amazon Simple
%% Notification Service (SNS) topic that is used to record Firewall Manager
%% SNS logs.
delete_notification_channel(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_notification_channel(Client, Input, []).
delete_notification_channel(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteNotificationChannel">>, Input, Options).

%% @doc Permanently deletes an Firewall Manager policy.
delete_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_policy(Client, Input, []).
delete_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeletePolicy">>, Input, Options).

%% @doc Permanently deletes an Firewall Manager protocols list.
delete_protocols_list(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_protocols_list(Client, Input, []).
delete_protocols_list(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteProtocolsList">>, Input, Options).

%% @doc Deletes the specified `ResourceSet'.
delete_resource_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_resource_set(Client, Input, []).
delete_resource_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteResourceSet">>, Input, Options).

%% @doc Disassociates an Firewall Manager administrator account.
%%
%% To set a different account as an Firewall Manager administrator, submit a
%% `PutAdminAccount' request. To set an account as a default
%% administrator account, you must submit an `AssociateAdminAccount'
%% request.
%%
%% Disassociation of the default administrator account follows the first in,
%% last out principle. If you are the default administrator, all Firewall
%% Manager administrators within the organization must first disassociate
%% their accounts before you can disassociate your account.
disassociate_admin_account(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_admin_account(Client, Input, []).
disassociate_admin_account(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateAdminAccount">>, Input, Options).

%% @doc Disassociates a Firewall Manager policy administrator from a
%% third-party firewall tenant.
%%
%% When you call `DisassociateThirdPartyFirewall', the third-party
%% firewall vendor deletes all of the firewalls that are associated with the
%% account.
disassociate_third_party_firewall(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_third_party_firewall(Client, Input, []).
disassociate_third_party_firewall(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateThirdPartyFirewall">>, Input, Options).

%% @doc Returns the Organizations account that is associated with Firewall
%% Manager
%% as the Firewall Manager default administrator.
get_admin_account(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_admin_account(Client, Input, []).
get_admin_account(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAdminAccount">>, Input, Options).

%% @doc Returns information about the specified account's administrative
%% scope.
%%
%% The admistrative scope defines the resources that an Firewall Manager
%% administrator can manage.
get_admin_scope(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_admin_scope(Client, Input, []).
get_admin_scope(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAdminScope">>, Input, Options).

%% @doc Returns information about the specified Firewall Manager applications
%% list.
get_apps_list(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_apps_list(Client, Input, []).
get_apps_list(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAppsList">>, Input, Options).

%% @doc Returns detailed compliance information about the specified member
%% account.
%%
%% Details
%% include resources that are in and out of compliance with the specified
%% policy.
%%
%% Resources are
%% considered noncompliant for WAF and Shield Advanced policies if the
%% specified policy has
%% not been applied to them.
%%
%% Resources are considered noncompliant for security group policies if
%% they are in scope of the policy, they violate one or more of the policy
%% rules, and remediation
%% is disabled or not possible.
%%
%% Resources are considered noncompliant for Network Firewall policies
%% if a firewall is missing in the VPC, if the firewall endpoint isn't
%% set up in an expected Availability Zone and subnet,
%% if a subnet created by the Firewall Manager doesn't have the expected
%% route table,
%% and for modifications to a firewall policy that violate the Firewall
%% Manager policy's rules.
%%
%% Resources are considered noncompliant for DNS Firewall policies
%% if a DNS Firewall rule group is missing from the rule group associations
%% for the VPC.
get_compliance_detail(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_compliance_detail(Client, Input, []).
get_compliance_detail(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetComplianceDetail">>, Input, Options).

%% @doc Information
%% about the Amazon Simple Notification Service (SNS) topic that is used to
%% record Firewall Manager SNS logs.
get_notification_channel(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_notification_channel(Client, Input, []).
get_notification_channel(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetNotificationChannel">>, Input, Options).

%% @doc Returns information about the specified Firewall Manager policy.
get_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_policy(Client, Input, []).
get_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetPolicy">>, Input, Options).

%% @doc If you created a Shield Advanced policy, returns policy-level attack
%% summary information
%% in the event of a potential DDoS attack.
%%
%% Other policy types are currently unsupported.
get_protection_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_protection_status(Client, Input, []).
get_protection_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetProtectionStatus">>, Input, Options).

%% @doc Returns information about the specified Firewall Manager protocols
%% list.
get_protocols_list(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_protocols_list(Client, Input, []).
get_protocols_list(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetProtocolsList">>, Input, Options).

%% @doc Gets information about a specific resource set.
get_resource_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_resource_set(Client, Input, []).
get_resource_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetResourceSet">>, Input, Options).

%% @doc The onboarding status of a Firewall Manager admin account to
%% third-party firewall vendor tenant.
get_third_party_firewall_association_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_third_party_firewall_association_status(Client, Input, []).
get_third_party_firewall_association_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetThirdPartyFirewallAssociationStatus">>, Input, Options).

%% @doc Retrieves violations for a resource based on the specified Firewall
%% Manager policy and Amazon Web Services account.
get_violation_details(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_violation_details(Client, Input, []).
get_violation_details(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetViolationDetails">>, Input, Options).

%% @doc Returns a `AdminAccounts' object that lists the Firewall Manager
%% administrators within the organization that are onboarded to Firewall
%% Manager by `AssociateAdminAccount'.
%%
%% This operation can be called only from the organization's management
%% account.
list_admin_accounts_for_organization(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_admin_accounts_for_organization(Client, Input, []).
list_admin_accounts_for_organization(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAdminAccountsForOrganization">>, Input, Options).

%% @doc Lists the accounts that are managing the specified Organizations
%% member account.
%%
%% This is useful for any member account so that they can view the accounts
%% who are managing their account. This operation only returns the managing
%% administrators that have the requested account within their
%% `AdminScope'.
list_admins_managing_account(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_admins_managing_account(Client, Input, []).
list_admins_managing_account(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAdminsManagingAccount">>, Input, Options).

%% @doc Returns an array of `AppsListDataSummary' objects.
list_apps_lists(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_apps_lists(Client, Input, []).
list_apps_lists(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAppsLists">>, Input, Options).

%% @doc Returns an array of `PolicyComplianceStatus' objects.
%%
%% Use
%% `PolicyComplianceStatus' to get a summary of which member accounts are
%% protected
%% by the specified policy.
list_compliance_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_compliance_status(Client, Input, []).
list_compliance_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListComplianceStatus">>, Input, Options).

%% @doc Returns an array of resources in the organization's accounts that
%% are available to be associated with a resource set.
list_discovered_resources(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_discovered_resources(Client, Input, []).
list_discovered_resources(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDiscoveredResources">>, Input, Options).

%% @doc Returns a `MemberAccounts' object that lists the member accounts
%% in the
%% administrator's Amazon Web Services organization.
%%
%% Either an Firewall Manager administrator or the organization's
%% management account can make this request.
list_member_accounts(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_member_accounts(Client, Input, []).
list_member_accounts(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListMemberAccounts">>, Input, Options).

%% @doc Returns an array of `PolicySummary' objects.
list_policies(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_policies(Client, Input, []).
list_policies(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPolicies">>, Input, Options).

%% @doc Returns an array of `ProtocolsListDataSummary' objects.
list_protocols_lists(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_protocols_lists(Client, Input, []).
list_protocols_lists(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListProtocolsLists">>, Input, Options).

%% @doc Returns an array of resources that are currently associated to a
%% resource set.
list_resource_set_resources(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_resource_set_resources(Client, Input, []).
list_resource_set_resources(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListResourceSetResources">>, Input, Options).

%% @doc Returns an array of `ResourceSetSummary' objects.
list_resource_sets(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_resource_sets(Client, Input, []).
list_resource_sets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListResourceSets">>, Input, Options).

%% @doc Retrieves the list of tags for the specified Amazon Web Services
%% resource.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Retrieves a list of all of the third-party firewall policies that are
%% associated with the third-party firewall administrator's account.
list_third_party_firewall_firewall_policies(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_third_party_firewall_firewall_policies(Client, Input, []).
list_third_party_firewall_firewall_policies(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListThirdPartyFirewallFirewallPolicies">>, Input, Options).

%% @doc Creates or updates an Firewall Manager administrator account.
%%
%% The account must be a member of the organization that was onboarded to
%% Firewall Manager by `AssociateAdminAccount'. Only the
%% organization's management account can create an Firewall Manager
%% administrator account. When you create an Firewall Manager administrator
%% account, the service checks to see if the account is already a delegated
%% administrator within Organizations. If the account isn't a delegated
%% administrator, Firewall Manager calls Organizations to delegate the
%% account within Organizations. For more information about administrator
%% accounts within Organizations, see
%% Managing the Amazon Web Services Accounts in Your Organization:
%% https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts.html.
put_admin_account(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_admin_account(Client, Input, []).
put_admin_account(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutAdminAccount">>, Input, Options).

%% @doc Creates an Firewall Manager applications list.
put_apps_list(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_apps_list(Client, Input, []).
put_apps_list(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutAppsList">>, Input, Options).

%% @doc Designates the IAM role and Amazon Simple Notification Service (SNS)
%% topic that
%% Firewall Manager uses to record SNS logs.
%%
%% To perform this action outside of the console, you must first configure
%% the SNS topic's access policy to allow the `SnsRoleName' to
%% publish SNS logs. If the `SnsRoleName' provided is a role other than
%% the `AWSServiceRoleForFMS' service-linked role, this role must have a
%% trust relationship configured to allow the Firewall Manager service
%% principal `fms.amazonaws.com' to assume this role. For information
%% about configuring an SNS access policy, see
%% Service roles for Firewall Manager:
%% https://docs.aws.amazon.com/waf/latest/developerguide/fms-security_iam_service-with-iam.html#fms-security_iam_service-with-iam-roles-service
%% in the Firewall Manager Developer Guide.
put_notification_channel(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_notification_channel(Client, Input, []).
put_notification_channel(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutNotificationChannel">>, Input, Options).

%% @doc Creates an Firewall Manager policy.
%%
%% A Firewall Manager policy is specific to the individual policy type. If
%% you want to enforce multiple
%% policy types across accounts, you can create multiple policies. You can
%% create more than one
%% policy for each type.
%%
%% If you add a new account to an organization that you created with
%% Organizations, Firewall Manager
%% automatically applies the policy to the resources in that account that are
%% within scope of
%% the policy.
%%
%% Firewall Manager provides the following types of policies:
%%
%% Shield Advanced policy - This policy applies Shield Advanced
%% protection to specified accounts and resources.
%%
%% Security Groups policy - This type of policy gives you
%% control over security groups that are in use throughout your organization
%% in
%% Organizations and lets you enforce a baseline set of rules across your
%% organization.
%%
%% Network Firewall policy - This policy applies
%% Network Firewall protection to your organization's VPCs.
%%
%% DNS Firewall policy - This policy applies
%% Amazon Route 53 Resolver DNS Firewall protections to your
%% organization's VPCs.
%%
%% Third-party firewall policy - This policy applies third-party firewall
%% protections. Third-party firewalls are available by subscription through
%% the Amazon Web Services Marketplace console at Amazon Web Services
%% Marketplace: https://aws.amazon.com/marketplace.
%%
%% Palo Alto Networks Cloud NGFW policy - This policy applies Palo Alto
%% Networks Cloud Next Generation Firewall (NGFW) protections and Palo Alto
%% Networks Cloud NGFW rulestacks to your organization's VPCs.
%%
%% Fortigate CNF policy - This policy applies
%% Fortigate Cloud Native Firewall (CNF) protections. Fortigate CNF is a
%% cloud-centered solution that blocks Zero-Day threats and secures cloud
%% infrastructures with industry-leading advanced threat prevention, smart
%% web application firewalls (WAF), and API protection.
put_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_policy(Client, Input, []).
put_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutPolicy">>, Input, Options).

%% @doc Creates an Firewall Manager protocols list.
put_protocols_list(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_protocols_list(Client, Input, []).
put_protocols_list(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutProtocolsList">>, Input, Options).

%% @doc Creates the resource set.
%%
%% An Firewall Manager resource set defines the resources to import into an
%% Firewall Manager policy from another Amazon Web Services service.
put_resource_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_resource_set(Client, Input, []).
put_resource_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutResourceSet">>, Input, Options).

%% @doc Adds one or more tags to an Amazon Web Services resource.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Removes one or more tags from an Amazon Web Services resource.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

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
    Client1 = Client#{service => <<"fms">>},
    Host = build_host(<<"fms">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"AWSFMS_20180101.", Action/binary>>}
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
