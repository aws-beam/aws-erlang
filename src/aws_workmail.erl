%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc WorkMail is a secure, managed business email and calendaring service
%% with support for existing desktop and mobile email clients.
%%
%% You can access your email, contacts, and calendars using Microsoft
%% Outlook, your browser, or other native iOS and Android email applications.
%% You can integrate WorkMail with your existing corporate directory and
%% control both the keys that encrypt your data and the location in which
%% your data is stored.
%%
%% The WorkMail API is designed for the following scenarios:
%%
%% <ul> <li> Listing and describing organizations
%%
%% </li> </ul> <ul> <li> Managing users
%%
%% </li> </ul> <ul> <li> Managing groups
%%
%% </li> </ul> <ul> <li> Managing resources
%%
%% </li> </ul> All WorkMail API operations are Amazon-authenticated and
%% certificate-signed. They not only require the use of the AWS SDK, but also
%% allow for the exclusive use of AWS Identity and Access Management users
%% and roles to help facilitate access, trust, and permission policies. By
%% creating a role and allowing an IAM user to access the WorkMail site, the
%% IAM user gains full administrative visibility into the entire WorkMail
%% organization (or as set in the IAM policy). This includes, but is not
%% limited to, the ability to create, update, and delete users, groups, and
%% resources. This allows developers to perform the scenarios listed above,
%% as well as give users the ability to grant access on a selective basis
%% using the IAM model.
-module(aws_workmail).

-export([associate_delegate_to_resource/2,
         associate_delegate_to_resource/3,
         associate_member_to_group/2,
         associate_member_to_group/3,
         assume_impersonation_role/2,
         assume_impersonation_role/3,
         cancel_mailbox_export_job/2,
         cancel_mailbox_export_job/3,
         create_alias/2,
         create_alias/3,
         create_availability_configuration/2,
         create_availability_configuration/3,
         create_group/2,
         create_group/3,
         create_impersonation_role/2,
         create_impersonation_role/3,
         create_mobile_device_access_rule/2,
         create_mobile_device_access_rule/3,
         create_organization/2,
         create_organization/3,
         create_resource/2,
         create_resource/3,
         create_user/2,
         create_user/3,
         delete_access_control_rule/2,
         delete_access_control_rule/3,
         delete_alias/2,
         delete_alias/3,
         delete_availability_configuration/2,
         delete_availability_configuration/3,
         delete_email_monitoring_configuration/2,
         delete_email_monitoring_configuration/3,
         delete_group/2,
         delete_group/3,
         delete_impersonation_role/2,
         delete_impersonation_role/3,
         delete_mailbox_permissions/2,
         delete_mailbox_permissions/3,
         delete_mobile_device_access_override/2,
         delete_mobile_device_access_override/3,
         delete_mobile_device_access_rule/2,
         delete_mobile_device_access_rule/3,
         delete_organization/2,
         delete_organization/3,
         delete_resource/2,
         delete_resource/3,
         delete_retention_policy/2,
         delete_retention_policy/3,
         delete_user/2,
         delete_user/3,
         deregister_from_work_mail/2,
         deregister_from_work_mail/3,
         deregister_mail_domain/2,
         deregister_mail_domain/3,
         describe_email_monitoring_configuration/2,
         describe_email_monitoring_configuration/3,
         describe_entity/2,
         describe_entity/3,
         describe_group/2,
         describe_group/3,
         describe_inbound_dmarc_settings/2,
         describe_inbound_dmarc_settings/3,
         describe_mailbox_export_job/2,
         describe_mailbox_export_job/3,
         describe_organization/2,
         describe_organization/3,
         describe_resource/2,
         describe_resource/3,
         describe_user/2,
         describe_user/3,
         disassociate_delegate_from_resource/2,
         disassociate_delegate_from_resource/3,
         disassociate_member_from_group/2,
         disassociate_member_from_group/3,
         get_access_control_effect/2,
         get_access_control_effect/3,
         get_default_retention_policy/2,
         get_default_retention_policy/3,
         get_impersonation_role/2,
         get_impersonation_role/3,
         get_impersonation_role_effect/2,
         get_impersonation_role_effect/3,
         get_mail_domain/2,
         get_mail_domain/3,
         get_mailbox_details/2,
         get_mailbox_details/3,
         get_mobile_device_access_effect/2,
         get_mobile_device_access_effect/3,
         get_mobile_device_access_override/2,
         get_mobile_device_access_override/3,
         list_access_control_rules/2,
         list_access_control_rules/3,
         list_aliases/2,
         list_aliases/3,
         list_availability_configurations/2,
         list_availability_configurations/3,
         list_group_members/2,
         list_group_members/3,
         list_groups/2,
         list_groups/3,
         list_groups_for_entity/2,
         list_groups_for_entity/3,
         list_impersonation_roles/2,
         list_impersonation_roles/3,
         list_mail_domains/2,
         list_mail_domains/3,
         list_mailbox_export_jobs/2,
         list_mailbox_export_jobs/3,
         list_mailbox_permissions/2,
         list_mailbox_permissions/3,
         list_mobile_device_access_overrides/2,
         list_mobile_device_access_overrides/3,
         list_mobile_device_access_rules/2,
         list_mobile_device_access_rules/3,
         list_organizations/2,
         list_organizations/3,
         list_resource_delegates/2,
         list_resource_delegates/3,
         list_resources/2,
         list_resources/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         list_users/2,
         list_users/3,
         put_access_control_rule/2,
         put_access_control_rule/3,
         put_email_monitoring_configuration/2,
         put_email_monitoring_configuration/3,
         put_inbound_dmarc_settings/2,
         put_inbound_dmarc_settings/3,
         put_mailbox_permissions/2,
         put_mailbox_permissions/3,
         put_mobile_device_access_override/2,
         put_mobile_device_access_override/3,
         put_retention_policy/2,
         put_retention_policy/3,
         register_mail_domain/2,
         register_mail_domain/3,
         register_to_work_mail/2,
         register_to_work_mail/3,
         reset_password/2,
         reset_password/3,
         start_mailbox_export_job/2,
         start_mailbox_export_job/3,
         tag_resource/2,
         tag_resource/3,
         test_availability_configuration/2,
         test_availability_configuration/3,
         untag_resource/2,
         untag_resource/3,
         update_availability_configuration/2,
         update_availability_configuration/3,
         update_default_mail_domain/2,
         update_default_mail_domain/3,
         update_group/2,
         update_group/3,
         update_impersonation_role/2,
         update_impersonation_role/3,
         update_mailbox_quota/2,
         update_mailbox_quota/3,
         update_mobile_device_access_rule/2,
         update_mobile_device_access_rule/3,
         update_primary_email_address/2,
         update_primary_email_address/3,
         update_resource/2,
         update_resource/3,
         update_user/2,
         update_user/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Adds a member (user or group) to the resource's set of delegates.
associate_delegate_to_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_delegate_to_resource(Client, Input, []).
associate_delegate_to_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateDelegateToResource">>, Input, Options).

%% @doc Adds a member (user or group) to the group's set.
associate_member_to_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_member_to_group(Client, Input, []).
associate_member_to_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateMemberToGroup">>, Input, Options).

%% @doc Assumes an impersonation role for the given WorkMail organization.
%%
%% This method returns an authentication token you can use to make
%% impersonated calls.
assume_impersonation_role(Client, Input)
  when is_map(Client), is_map(Input) ->
    assume_impersonation_role(Client, Input, []).
assume_impersonation_role(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssumeImpersonationRole">>, Input, Options).

%% @doc Cancels a mailbox export job.
%%
%% If the mailbox export job is near completion, it might not be possible to
%% cancel it.
cancel_mailbox_export_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    cancel_mailbox_export_job(Client, Input, []).
cancel_mailbox_export_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CancelMailboxExportJob">>, Input, Options).

%% @doc Adds an alias to the set of a given member (user or group) of
%% WorkMail.
create_alias(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_alias(Client, Input, []).
create_alias(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateAlias">>, Input, Options).

%% @doc Creates an `AvailabilityConfiguration' for the given WorkMail
%% organization and domain.
create_availability_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_availability_configuration(Client, Input, []).
create_availability_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateAvailabilityConfiguration">>, Input, Options).

%% @doc Creates a group that can be used in WorkMail by calling the
%% `RegisterToWorkMail' operation.
create_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_group(Client, Input, []).
create_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateGroup">>, Input, Options).

%% @doc Creates an impersonation role for the given WorkMail organization.
%%
%% Idempotency ensures that an API request completes no more than one time.
%% With an idempotent request, if the original request completes
%% successfully, any subsequent retries also complete successfully without
%% performing any further actions.
create_impersonation_role(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_impersonation_role(Client, Input, []).
create_impersonation_role(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateImpersonationRole">>, Input, Options).

%% @doc Creates a new mobile device access rule for the specified WorkMail
%% organization.
create_mobile_device_access_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_mobile_device_access_rule(Client, Input, []).
create_mobile_device_access_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateMobileDeviceAccessRule">>, Input, Options).

%% @doc Creates a new WorkMail organization.
%%
%% Optionally, you can choose to associate an existing AWS Directory Service
%% directory with your organization. If an AWS Directory Service directory ID
%% is specified, the organization alias must match the directory alias. If
%% you choose not to associate an existing directory with your organization,
%% then we create a new WorkMail directory for you. For more information, see
%% Adding an organization in the WorkMail Administrator Guide.
%%
%% You can associate multiple email domains with an organization, then choose
%% your default email domain from the WorkMail console. You can also
%% associate a domain that is managed in an Amazon Route 53 public hosted
%% zone. For more information, see Adding a domain and Choosing the default
%% domain in the WorkMail Administrator Guide.
%%
%% Optionally, you can use a customer managed key from AWS Key Management
%% Service (AWS KMS) to encrypt email for your organization. If you don't
%% associate an AWS KMS key, WorkMail creates a default, AWS managed key for
%% you.
create_organization(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_organization(Client, Input, []).
create_organization(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateOrganization">>, Input, Options).

%% @doc Creates a new WorkMail resource.
create_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_resource(Client, Input, []).
create_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateResource">>, Input, Options).

%% @doc Creates a user who can be used in WorkMail by calling the
%% `RegisterToWorkMail' operation.
create_user(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_user(Client, Input, []).
create_user(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateUser">>, Input, Options).

%% @doc Deletes an access control rule for the specified WorkMail
%% organization.
%%
%% Deleting already deleted and non-existing rules does not produce an error.
%% In those cases, the service sends back an HTTP 200 response with an empty
%% HTTP body.
delete_access_control_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_access_control_rule(Client, Input, []).
delete_access_control_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAccessControlRule">>, Input, Options).

%% @doc Remove one or more specified aliases from a set of aliases for a
%% given user.
delete_alias(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_alias(Client, Input, []).
delete_alias(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAlias">>, Input, Options).

%% @doc Deletes the `AvailabilityConfiguration' for the given WorkMail
%% organization and domain.
delete_availability_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_availability_configuration(Client, Input, []).
delete_availability_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAvailabilityConfiguration">>, Input, Options).

%% @doc Deletes the email monitoring configuration for a specified
%% organization.
delete_email_monitoring_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_email_monitoring_configuration(Client, Input, []).
delete_email_monitoring_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteEmailMonitoringConfiguration">>, Input, Options).

%% @doc Deletes a group from WorkMail.
delete_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_group(Client, Input, []).
delete_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteGroup">>, Input, Options).

%% @doc Deletes an impersonation role for the given WorkMail organization.
delete_impersonation_role(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_impersonation_role(Client, Input, []).
delete_impersonation_role(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteImpersonationRole">>, Input, Options).

%% @doc Deletes permissions granted to a member (user or group).
delete_mailbox_permissions(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_mailbox_permissions(Client, Input, []).
delete_mailbox_permissions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteMailboxPermissions">>, Input, Options).

%% @doc Deletes the mobile device access override for the given WorkMail
%% organization, user, and device.
%%
%% Deleting already deleted and non-existing overrides does not produce an
%% error. In those cases, the service sends back an HTTP 200 response with an
%% empty HTTP body.
delete_mobile_device_access_override(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_mobile_device_access_override(Client, Input, []).
delete_mobile_device_access_override(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteMobileDeviceAccessOverride">>, Input, Options).

%% @doc Deletes a mobile device access rule for the specified WorkMail
%% organization.
%%
%% Deleting already deleted and non-existing rules does not produce an error.
%% In those cases, the service sends back an HTTP 200 response with an empty
%% HTTP body.
delete_mobile_device_access_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_mobile_device_access_rule(Client, Input, []).
delete_mobile_device_access_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteMobileDeviceAccessRule">>, Input, Options).

%% @doc Deletes an WorkMail organization and all underlying AWS resources
%% managed by WorkMail as part of the organization.
%%
%% You can choose whether to delete the associated directory. For more
%% information, see Removing an organization in the WorkMail Administrator
%% Guide.
delete_organization(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_organization(Client, Input, []).
delete_organization(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteOrganization">>, Input, Options).

%% @doc Deletes the specified resource.
delete_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_resource(Client, Input, []).
delete_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteResource">>, Input, Options).

%% @doc Deletes the specified retention policy from the specified
%% organization.
delete_retention_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_retention_policy(Client, Input, []).
delete_retention_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteRetentionPolicy">>, Input, Options).

%% @doc Deletes a user from WorkMail and all subsequent systems.
%%
%% Before you can delete a user, the user state must be `DISABLED'. Use
%% the `DescribeUser' action to confirm the user state.
%%
%% Deleting a user is permanent and cannot be undone. WorkMail archives user
%% mailboxes for 30 days before they are permanently removed.
delete_user(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_user(Client, Input, []).
delete_user(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteUser">>, Input, Options).

%% @doc Mark a user, group, or resource as no longer used in WorkMail.
%%
%% This action disassociates the mailbox and schedules it for clean-up.
%% WorkMail keeps mailboxes for 30 days before they are permanently removed.
%% The functionality in the console is Disable.
deregister_from_work_mail(Client, Input)
  when is_map(Client), is_map(Input) ->
    deregister_from_work_mail(Client, Input, []).
deregister_from_work_mail(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeregisterFromWorkMail">>, Input, Options).

%% @doc Removes a domain from WorkMail, stops email routing to WorkMail, and
%% removes the authorization allowing WorkMail use.
%%
%% SES keeps the domain because other applications may use it. You must first
%% remove any email address used by WorkMail entities before you remove the
%% domain.
deregister_mail_domain(Client, Input)
  when is_map(Client), is_map(Input) ->
    deregister_mail_domain(Client, Input, []).
deregister_mail_domain(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeregisterMailDomain">>, Input, Options).

%% @doc Describes the current email monitoring configuration for a specified
%% organization.
describe_email_monitoring_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_email_monitoring_configuration(Client, Input, []).
describe_email_monitoring_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEmailMonitoringConfiguration">>, Input, Options).

%% @doc Returns basic details about an entity in WorkMail.
describe_entity(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_entity(Client, Input, []).
describe_entity(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEntity">>, Input, Options).

%% @doc Returns the data available for the group.
describe_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_group(Client, Input, []).
describe_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeGroup">>, Input, Options).

%% @doc Lists the settings in a DMARC policy for a specified organization.
describe_inbound_dmarc_settings(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_inbound_dmarc_settings(Client, Input, []).
describe_inbound_dmarc_settings(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeInboundDmarcSettings">>, Input, Options).

%% @doc Describes the current status of a mailbox export job.
describe_mailbox_export_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_mailbox_export_job(Client, Input, []).
describe_mailbox_export_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeMailboxExportJob">>, Input, Options).

%% @doc Provides more information regarding a given organization based on its
%% identifier.
describe_organization(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_organization(Client, Input, []).
describe_organization(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeOrganization">>, Input, Options).

%% @doc Returns the data available for the resource.
describe_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_resource(Client, Input, []).
describe_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeResource">>, Input, Options).

%% @doc Provides information regarding the user.
describe_user(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_user(Client, Input, []).
describe_user(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeUser">>, Input, Options).

%% @doc Removes a member from the resource's set of delegates.
disassociate_delegate_from_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_delegate_from_resource(Client, Input, []).
disassociate_delegate_from_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateDelegateFromResource">>, Input, Options).

%% @doc Removes a member from a group.
disassociate_member_from_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_member_from_group(Client, Input, []).
disassociate_member_from_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateMemberFromGroup">>, Input, Options).

%% @doc Gets the effects of an organization's access control rules as
%% they apply to a specified IPv4 address, access protocol action, and user
%% ID or impersonation role ID.
%%
%% You must provide either the user ID or impersonation role ID.
%% Impersonation role ID can only be used with Action EWS.
get_access_control_effect(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_access_control_effect(Client, Input, []).
get_access_control_effect(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAccessControlEffect">>, Input, Options).

%% @doc Gets the default retention policy details for the specified
%% organization.
get_default_retention_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_default_retention_policy(Client, Input, []).
get_default_retention_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDefaultRetentionPolicy">>, Input, Options).

%% @doc Gets the impersonation role details for the given WorkMail
%% organization.
get_impersonation_role(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_impersonation_role(Client, Input, []).
get_impersonation_role(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetImpersonationRole">>, Input, Options).

%% @doc Tests whether the given impersonation role can impersonate a target
%% user.
get_impersonation_role_effect(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_impersonation_role_effect(Client, Input, []).
get_impersonation_role_effect(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetImpersonationRoleEffect">>, Input, Options).

%% @doc Gets details for a mail domain, including domain records required to
%% configure your domain with recommended security.
get_mail_domain(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_mail_domain(Client, Input, []).
get_mail_domain(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetMailDomain">>, Input, Options).

%% @doc Requests a user's mailbox details for a specified organization
%% and user.
get_mailbox_details(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_mailbox_details(Client, Input, []).
get_mailbox_details(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetMailboxDetails">>, Input, Options).

%% @doc Simulates the effect of the mobile device access rules for the given
%% attributes of a sample access event.
%%
%% Use this method to test the effects of the current set of mobile device
%% access rules for the WorkMail organization for a particular user's
%% attributes.
get_mobile_device_access_effect(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_mobile_device_access_effect(Client, Input, []).
get_mobile_device_access_effect(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetMobileDeviceAccessEffect">>, Input, Options).

%% @doc Gets the mobile device access override for the given WorkMail
%% organization, user, and device.
get_mobile_device_access_override(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_mobile_device_access_override(Client, Input, []).
get_mobile_device_access_override(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetMobileDeviceAccessOverride">>, Input, Options).

%% @doc Lists the access control rules for the specified organization.
list_access_control_rules(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_access_control_rules(Client, Input, []).
list_access_control_rules(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAccessControlRules">>, Input, Options).

%% @doc Creates a paginated call to list the aliases associated with a given
%% entity.
list_aliases(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_aliases(Client, Input, []).
list_aliases(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAliases">>, Input, Options).

%% @doc List all the `AvailabilityConfiguration''s for the given
%% WorkMail organization.
list_availability_configurations(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_availability_configurations(Client, Input, []).
list_availability_configurations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAvailabilityConfigurations">>, Input, Options).

%% @doc Returns an overview of the members of a group.
%%
%% Users and groups can be members of a group.
list_group_members(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_group_members(Client, Input, []).
list_group_members(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListGroupMembers">>, Input, Options).

%% @doc Returns summaries of the organization's groups.
list_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_groups(Client, Input, []).
list_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListGroups">>, Input, Options).

%% @doc Returns all the groups to which an entity belongs.
list_groups_for_entity(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_groups_for_entity(Client, Input, []).
list_groups_for_entity(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListGroupsForEntity">>, Input, Options).

%% @doc Lists all the impersonation roles for the given WorkMail
%% organization.
list_impersonation_roles(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_impersonation_roles(Client, Input, []).
list_impersonation_roles(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListImpersonationRoles">>, Input, Options).

%% @doc Lists the mail domains in a given WorkMail organization.
list_mail_domains(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_mail_domains(Client, Input, []).
list_mail_domains(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListMailDomains">>, Input, Options).

%% @doc Lists the mailbox export jobs started for the specified organization
%% within the last seven days.
list_mailbox_export_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_mailbox_export_jobs(Client, Input, []).
list_mailbox_export_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListMailboxExportJobs">>, Input, Options).

%% @doc Lists the mailbox permissions associated with a user, group, or
%% resource mailbox.
list_mailbox_permissions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_mailbox_permissions(Client, Input, []).
list_mailbox_permissions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListMailboxPermissions">>, Input, Options).

%% @doc Lists all the mobile device access overrides for any given
%% combination of WorkMail organization, user, or device.
list_mobile_device_access_overrides(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_mobile_device_access_overrides(Client, Input, []).
list_mobile_device_access_overrides(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListMobileDeviceAccessOverrides">>, Input, Options).

%% @doc Lists the mobile device access rules for the specified WorkMail
%% organization.
list_mobile_device_access_rules(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_mobile_device_access_rules(Client, Input, []).
list_mobile_device_access_rules(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListMobileDeviceAccessRules">>, Input, Options).

%% @doc Returns summaries of the customer's organizations.
list_organizations(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_organizations(Client, Input, []).
list_organizations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListOrganizations">>, Input, Options).

%% @doc Lists the delegates associated with a resource.
%%
%% Users and groups can be resource delegates and answer requests on behalf
%% of the resource.
list_resource_delegates(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_resource_delegates(Client, Input, []).
list_resource_delegates(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListResourceDelegates">>, Input, Options).

%% @doc Returns summaries of the organization's resources.
list_resources(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_resources(Client, Input, []).
list_resources(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListResources">>, Input, Options).

%% @doc Lists the tags applied to an WorkMail organization resource.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Returns summaries of the organization's users.
list_users(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_users(Client, Input, []).
list_users(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListUsers">>, Input, Options).

%% @doc Adds a new access control rule for the specified organization.
%%
%% The rule allows or denies access to the organization for the specified
%% IPv4 addresses, access protocol actions, user IDs and impersonation IDs.
%% Adding a new rule with the same name as an existing rule replaces the
%% older rule.
put_access_control_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_access_control_rule(Client, Input, []).
put_access_control_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutAccessControlRule">>, Input, Options).

%% @doc Creates or updates the email monitoring configuration for a specified
%% organization.
put_email_monitoring_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_email_monitoring_configuration(Client, Input, []).
put_email_monitoring_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutEmailMonitoringConfiguration">>, Input, Options).

%% @doc Enables or disables a DMARC policy for a given organization.
put_inbound_dmarc_settings(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_inbound_dmarc_settings(Client, Input, []).
put_inbound_dmarc_settings(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutInboundDmarcSettings">>, Input, Options).

%% @doc Sets permissions for a user, group, or resource.
%%
%% This replaces any pre-existing permissions.
put_mailbox_permissions(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_mailbox_permissions(Client, Input, []).
put_mailbox_permissions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutMailboxPermissions">>, Input, Options).

%% @doc Creates or updates a mobile device access override for the given
%% WorkMail organization, user, and device.
put_mobile_device_access_override(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_mobile_device_access_override(Client, Input, []).
put_mobile_device_access_override(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutMobileDeviceAccessOverride">>, Input, Options).

%% @doc Puts a retention policy to the specified organization.
put_retention_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_retention_policy(Client, Input, []).
put_retention_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutRetentionPolicy">>, Input, Options).

%% @doc Registers a new domain in WorkMail and SES, and configures it for use
%% by WorkMail.
%%
%% Emails received by SES for this domain are routed to the specified
%% WorkMail organization, and WorkMail has permanent permission to use the
%% specified domain for sending your users' emails.
register_mail_domain(Client, Input)
  when is_map(Client), is_map(Input) ->
    register_mail_domain(Client, Input, []).
register_mail_domain(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RegisterMailDomain">>, Input, Options).

%% @doc Registers an existing and disabled user, group, or resource for
%% WorkMail use by associating a mailbox and calendaring capabilities.
%%
%% It performs no change if the user, group, or resource is enabled and fails
%% if the user, group, or resource is deleted. This operation results in the
%% accumulation of costs. For more information, see Pricing. The equivalent
%% console functionality for this operation is Enable.
%%
%% Users can either be created by calling the `CreateUser' API operation
%% or they can be synchronized from your directory. For more information, see
%% `DeregisterFromWorkMail'.
register_to_work_mail(Client, Input)
  when is_map(Client), is_map(Input) ->
    register_to_work_mail(Client, Input, []).
register_to_work_mail(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RegisterToWorkMail">>, Input, Options).

%% @doc Allows the administrator to reset the password for a user.
reset_password(Client, Input)
  when is_map(Client), is_map(Input) ->
    reset_password(Client, Input, []).
reset_password(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ResetPassword">>, Input, Options).

%% @doc Starts a mailbox export job to export MIME-format email messages and
%% calendar items from the specified mailbox to the specified Amazon Simple
%% Storage Service (Amazon S3) bucket.
%%
%% For more information, see Exporting mailbox content in the WorkMail
%% Administrator Guide.
start_mailbox_export_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_mailbox_export_job(Client, Input, []).
start_mailbox_export_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartMailboxExportJob">>, Input, Options).

%% @doc Applies the specified tags to the specified WorkMailorganization
%% resource.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Performs a test on an availability provider to ensure that access is
%% allowed.
%%
%% For EWS, it verifies the provided credentials can be used to successfully
%% log in. For Lambda, it verifies that the Lambda function can be invoked
%% and that the resource access policy was configured to deny anonymous
%% access. An anonymous invocation is one done without providing either a
%% `SourceArn' or `SourceAccount' header.
%%
%% The request must contain either one provider definition (`EwsProvider'
%% or `LambdaProvider') or the `DomainName' parameter. If the
%% `DomainName' parameter is provided, the configuration stored under the
%% `DomainName' will be tested.
test_availability_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    test_availability_configuration(Client, Input, []).
test_availability_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TestAvailabilityConfiguration">>, Input, Options).

%% @doc Untags the specified tags from the specified WorkMail organization
%% resource.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc Updates an existing `AvailabilityConfiguration' for the given
%% WorkMail organization and domain.
update_availability_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_availability_configuration(Client, Input, []).
update_availability_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateAvailabilityConfiguration">>, Input, Options).

%% @doc Updates the default mail domain for an organization.
%%
%% The default mail domain is used by the WorkMail AWS Console to suggest an
%% email address when enabling a mail user. You can only have one default
%% domain.
update_default_mail_domain(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_default_mail_domain(Client, Input, []).
update_default_mail_domain(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateDefaultMailDomain">>, Input, Options).

%% @doc Updates attibutes in a group.
update_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_group(Client, Input, []).
update_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateGroup">>, Input, Options).

%% @doc Updates an impersonation role for the given WorkMail organization.
update_impersonation_role(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_impersonation_role(Client, Input, []).
update_impersonation_role(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateImpersonationRole">>, Input, Options).

%% @doc Updates a user's current mailbox quota for a specified
%% organization and user.
update_mailbox_quota(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_mailbox_quota(Client, Input, []).
update_mailbox_quota(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateMailboxQuota">>, Input, Options).

%% @doc Updates a mobile device access rule for the specified WorkMail
%% organization.
update_mobile_device_access_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_mobile_device_access_rule(Client, Input, []).
update_mobile_device_access_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateMobileDeviceAccessRule">>, Input, Options).

%% @doc Updates the primary email for a user, group, or resource.
%%
%% The current email is moved into the list of aliases (or swapped between an
%% existing alias and the current primary email), and the email provided in
%% the input is promoted as the primary.
update_primary_email_address(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_primary_email_address(Client, Input, []).
update_primary_email_address(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdatePrimaryEmailAddress">>, Input, Options).

%% @doc Updates data for the resource.
%%
%% To have the latest information, it must be preceded by a
%% `DescribeResource' call. The dataset in the request should be the one
%% expected when performing another `DescribeResource' call.
update_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_resource(Client, Input, []).
update_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateResource">>, Input, Options).

%% @doc Updates data for the user.
%%
%% To have the latest information, it must be preceded by a
%% `DescribeUser' call. The dataset in the request should be the one
%% expected when performing another `DescribeUser' call.
update_user(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_user(Client, Input, []).
update_user(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateUser">>, Input, Options).

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
    Client1 = Client#{service => <<"workmail">>},
    Host = build_host(<<"workmail">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"WorkMailService.", Action/binary>>}
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
