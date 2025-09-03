%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc WorkMail is a secure, managed business email and calendaring service
%% with support for
%% existing desktop and mobile email clients.
%%
%% You can access your email, contacts, and
%% calendars using Microsoft Outlook, your browser, or other native iOS and
%% Android email
%% applications. You can integrate WorkMail with your existing corporate
%% directory and control
%% both the keys that encrypt your data and the location in which your data
%% is
%% stored.
%%
%% The WorkMail API is designed for the following scenarios:
%%
%% Listing and describing organizations
%%
%% Managing users
%%
%% Managing groups
%%
%% Managing resources
%%
%% All WorkMail API operations are Amazon-authenticated and
%% certificate-signed. They not
%% only require the use of the AWS SDK, but also allow for the exclusive use
%% of AWS Identity and Access Management
%% users and roles to help facilitate access, trust, and permission policies.
%% By creating a
%% role and allowing an IAM user to access the WorkMail site, the IAM user
%% gains full
%% administrative visibility into the entire WorkMail organization (or as set
%% in the IAM
%% policy). This includes, but is not limited to, the ability to create,
%% update, and delete
%% users, groups, and resources. This allows developers to perform the
%% scenarios listed above,
%% as well as give users the ability to grant access on a selective basis
%% using the IAM
%% model.
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
         create_identity_center_application/2,
         create_identity_center_application/3,
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
         delete_identity_center_application/2,
         delete_identity_center_application/3,
         delete_identity_provider_configuration/2,
         delete_identity_provider_configuration/3,
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
         delete_personal_access_token/2,
         delete_personal_access_token/3,
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
         describe_identity_provider_configuration/2,
         describe_identity_provider_configuration/3,
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
         get_personal_access_token_metadata/2,
         get_personal_access_token_metadata/3,
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
         list_personal_access_tokens/2,
         list_personal_access_tokens/3,
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
         put_identity_provider_configuration/2,
         put_identity_provider_configuration/3,
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


%% Example:
%% mobile_device_access_rule() :: #{
%%   <<"DateCreated">> => non_neg_integer(),
%%   <<"DateModified">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"DeviceModels">> => list(string()),
%%   <<"DeviceOperatingSystems">> => list(string()),
%%   <<"DeviceTypes">> => list(string()),
%%   <<"DeviceUserAgents">> => list(string()),
%%   <<"Effect">> => list(any()),
%%   <<"MobileDeviceAccessRuleId">> => string(),
%%   <<"Name">> => string(),
%%   <<"NotDeviceModels">> => list(string()),
%%   <<"NotDeviceOperatingSystems">> => list(string()),
%%   <<"NotDeviceTypes">> => list(string()),
%%   <<"NotDeviceUserAgents">> => list(string())
%% }
-type mobile_device_access_rule() :: #{binary() => any()}.

%% Example:
%% list_aliases_response() :: #{
%%   <<"Aliases">> => list(string()),
%%   <<"NextToken">> => string()
%% }
-type list_aliases_response() :: #{binary() => any()}.

%% Example:
%% update_mobile_device_access_rule_response() :: #{

%% }
-type update_mobile_device_access_rule_response() :: #{binary() => any()}.

%% Example:
%% cancel_mailbox_export_job_request() :: #{
%%   <<"ClientToken">> := string(),
%%   <<"JobId">> := string(),
%%   <<"OrganizationId">> := string()
%% }
-type cancel_mailbox_export_job_request() :: #{binary() => any()}.

%% Example:
%% get_access_control_effect_response() :: #{
%%   <<"Effect">> => list(any()),
%%   <<"MatchedRules">> => list(string())
%% }
-type get_access_control_effect_response() :: #{binary() => any()}.

%% Example:
%% list_aliases_request() :: #{
%%   <<"EntityId">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"OrganizationId">> := string()
%% }
-type list_aliases_request() :: #{binary() => any()}.

%% Example:
%% put_mobile_device_access_override_response() :: #{

%% }
-type put_mobile_device_access_override_response() :: #{binary() => any()}.

%% Example:
%% put_email_monitoring_configuration_request() :: #{
%%   <<"LogGroupArn">> := string(),
%%   <<"OrganizationId">> := string(),
%%   <<"RoleArn">> => string()
%% }
-type put_email_monitoring_configuration_request() :: #{binary() => any()}.

%% Example:
%% list_mobile_device_access_overrides_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Overrides">> => list(mobile_device_access_override())
%% }
-type list_mobile_device_access_overrides_response() :: #{binary() => any()}.

%% Example:
%% get_mailbox_details_response() :: #{
%%   <<"MailboxQuota">> => integer(),
%%   <<"MailboxSize">> => float()
%% }
-type get_mailbox_details_response() :: #{binary() => any()}.

%% Example:
%% tag_resource_request() :: #{
%%   <<"ResourceARN">> := string(),
%%   <<"Tags">> := list(tag())
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% list_organizations_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"OrganizationSummaries">> => list(organization_summary())
%% }
-type list_organizations_response() :: #{binary() => any()}.

%% Example:
%% get_mobile_device_access_effect_request() :: #{
%%   <<"DeviceModel">> => string(),
%%   <<"DeviceOperatingSystem">> => string(),
%%   <<"DeviceType">> => string(),
%%   <<"DeviceUserAgent">> => string(),
%%   <<"OrganizationId">> := string()
%% }
-type get_mobile_device_access_effect_request() :: #{binary() => any()}.

%% Example:
%% disassociate_delegate_from_resource_request() :: #{
%%   <<"EntityId">> := string(),
%%   <<"OrganizationId">> := string(),
%%   <<"ResourceId">> := string()
%% }
-type disassociate_delegate_from_resource_request() :: #{binary() => any()}.

%% Example:
%% entity_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type entity_not_found_exception() :: #{binary() => any()}.

%% Example:
%% list_group_members_request() :: #{
%%   <<"GroupId">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"OrganizationId">> := string()
%% }
-type list_group_members_request() :: #{binary() => any()}.

%% Example:
%% associate_member_to_group_response() :: #{

%% }
-type associate_member_to_group_response() :: #{binary() => any()}.

%% Example:
%% list_resources_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Resources">> => list(resource())
%% }
-type list_resources_response() :: #{binary() => any()}.

%% Example:
%% describe_resource_response() :: #{
%%   <<"BookingOptions">> => booking_options(),
%%   <<"Description">> => string(),
%%   <<"DisabledDate">> => non_neg_integer(),
%%   <<"Email">> => string(),
%%   <<"EnabledDate">> => non_neg_integer(),
%%   <<"HiddenFromGlobalAddressList">> => boolean(),
%%   <<"Name">> => string(),
%%   <<"ResourceId">> => string(),
%%   <<"State">> => list(any()),
%%   <<"Type">> => list(any())
%% }
-type describe_resource_response() :: #{binary() => any()}.

%% Example:
%% unsupported_operation_exception() :: #{
%%   <<"Message">> => string()
%% }
-type unsupported_operation_exception() :: #{binary() => any()}.

%% Example:
%% list_groups_for_entity_request() :: #{
%%   <<"EntityId">> := string(),
%%   <<"Filters">> => list_groups_for_entity_filters(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"OrganizationId">> := string()
%% }
-type list_groups_for_entity_request() :: #{binary() => any()}.

%% Example:
%% deregister_mail_domain_response() :: #{

%% }
-type deregister_mail_domain_response() :: #{binary() => any()}.

%% Example:
%% entity_state_exception() :: #{
%%   <<"Message">> => string()
%% }
-type entity_state_exception() :: #{binary() => any()}.

%% Example:
%% test_availability_configuration_request() :: #{
%%   <<"DomainName">> => string(),
%%   <<"EwsProvider">> => ews_availability_provider(),
%%   <<"LambdaProvider">> => lambda_availability_provider(),
%%   <<"OrganizationId">> := string()
%% }
-type test_availability_configuration_request() :: #{binary() => any()}.

%% Example:
%% associate_delegate_to_resource_request() :: #{
%%   <<"EntityId">> := string(),
%%   <<"OrganizationId">> := string(),
%%   <<"ResourceId">> := string()
%% }
-type associate_delegate_to_resource_request() :: #{binary() => any()}.

%% Example:
%% create_mobile_device_access_rule_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"Description">> => string(),
%%   <<"DeviceModels">> => list(string()),
%%   <<"DeviceOperatingSystems">> => list(string()),
%%   <<"DeviceTypes">> => list(string()),
%%   <<"DeviceUserAgents">> => list(string()),
%%   <<"Effect">> := list(any()),
%%   <<"Name">> := string(),
%%   <<"NotDeviceModels">> => list(string()),
%%   <<"NotDeviceOperatingSystems">> => list(string()),
%%   <<"NotDeviceTypes">> => list(string()),
%%   <<"NotDeviceUserAgents">> => list(string()),
%%   <<"OrganizationId">> := string()
%% }
-type create_mobile_device_access_rule_request() :: #{binary() => any()}.

%% Example:
%% delete_resource_request() :: #{
%%   <<"OrganizationId">> := string(),
%%   <<"ResourceId">> := string()
%% }
-type delete_resource_request() :: #{binary() => any()}.

%% Example:
%% list_availability_configurations_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"OrganizationId">> := string()
%% }
-type list_availability_configurations_request() :: #{binary() => any()}.

%% Example:
%% update_user_response() :: #{

%% }
-type update_user_response() :: #{binary() => any()}.

%% Example:
%% update_resource_request() :: #{
%%   <<"BookingOptions">> => booking_options(),
%%   <<"Description">> => string(),
%%   <<"HiddenFromGlobalAddressList">> => boolean(),
%%   <<"Name">> => string(),
%%   <<"OrganizationId">> := string(),
%%   <<"ResourceId">> := string(),
%%   <<"Type">> => list(any())
%% }
-type update_resource_request() :: #{binary() => any()}.

%% Example:
%% get_access_control_effect_request() :: #{
%%   <<"Action">> := string(),
%%   <<"ImpersonationRoleId">> => string(),
%%   <<"IpAddress">> := string(),
%%   <<"OrganizationId">> := string(),
%%   <<"UserId">> => string()
%% }
-type get_access_control_effect_request() :: #{binary() => any()}.

%% Example:
%% delete_identity_center_application_request() :: #{
%%   <<"ApplicationArn">> := string()
%% }
-type delete_identity_center_application_request() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{

%% }
-type untag_resource_response() :: #{binary() => any()}.

%% Example:
%% list_impersonation_roles_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"OrganizationId">> := string()
%% }
-type list_impersonation_roles_request() :: #{binary() => any()}.

%% Example:
%% create_alias_request() :: #{
%%   <<"Alias">> := string(),
%%   <<"EntityId">> := string(),
%%   <<"OrganizationId">> := string()
%% }
-type create_alias_request() :: #{binary() => any()}.

%% Example:
%% deregister_from_work_mail_response() :: #{

%% }
-type deregister_from_work_mail_response() :: #{binary() => any()}.

%% Example:
%% personal_access_token_summary() :: #{
%%   <<"DateCreated">> => non_neg_integer(),
%%   <<"DateLastUsed">> => non_neg_integer(),
%%   <<"ExpiresTime">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"PersonalAccessTokenId">> => string(),
%%   <<"Scopes">> => list(string()),
%%   <<"UserId">> => string()
%% }
-type personal_access_token_summary() :: #{binary() => any()}.

%% Example:
%% update_primary_email_address_request() :: #{
%%   <<"Email">> := string(),
%%   <<"EntityId">> := string(),
%%   <<"OrganizationId">> := string()
%% }
-type update_primary_email_address_request() :: #{binary() => any()}.

%% Example:
%% list_personal_access_tokens_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"OrganizationId">> := string(),
%%   <<"UserId">> => string()
%% }
-type list_personal_access_tokens_request() :: #{binary() => any()}.

%% Example:
%% list_mobile_device_access_overrides_request() :: #{
%%   <<"DeviceId">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"OrganizationId">> := string(),
%%   <<"UserId">> => string()
%% }
-type list_mobile_device_access_overrides_request() :: #{binary() => any()}.

%% Example:
%% put_retention_policy_response() :: #{

%% }
-type put_retention_policy_response() :: #{binary() => any()}.

%% Example:
%% delete_mobile_device_access_override_request() :: #{
%%   <<"DeviceId">> := string(),
%%   <<"OrganizationId">> := string(),
%%   <<"UserId">> := string()
%% }
-type delete_mobile_device_access_override_request() :: #{binary() => any()}.

%% Example:
%% get_mobile_device_access_override_request() :: #{
%%   <<"DeviceId">> := string(),
%%   <<"OrganizationId">> := string(),
%%   <<"UserId">> := string()
%% }
-type get_mobile_device_access_override_request() :: #{binary() => any()}.

%% Example:
%% get_mail_domain_response() :: #{
%%   <<"DkimVerificationStatus">> => list(any()),
%%   <<"IsDefault">> => boolean(),
%%   <<"IsTestDomain">> => boolean(),
%%   <<"OwnershipVerificationStatus">> => list(any()),
%%   <<"Records">> => list(dns_record())
%% }
-type get_mail_domain_response() :: #{binary() => any()}.

%% Example:
%% list_mailbox_export_jobs_response() :: #{
%%   <<"Jobs">> => list(mailbox_export_job()),
%%   <<"NextToken">> => string()
%% }
-type list_mailbox_export_jobs_response() :: #{binary() => any()}.

%% Example:
%% list_access_control_rules_request() :: #{
%%   <<"OrganizationId">> := string()
%% }
-type list_access_control_rules_request() :: #{binary() => any()}.

%% Example:
%% organization_state_exception() :: #{
%%   <<"Message">> => string()
%% }
-type organization_state_exception() :: #{binary() => any()}.

%% Example:
%% list_users_filters() :: #{
%%   <<"DisplayNamePrefix">> => string(),
%%   <<"IdentityProviderUserIdPrefix">> => string(),
%%   <<"PrimaryEmailPrefix">> => string(),
%%   <<"State">> => list(any()),
%%   <<"UsernamePrefix">> => string()
%% }
-type list_users_filters() :: #{binary() => any()}.

%% Example:
%% access_control_rule() :: #{
%%   <<"Actions">> => list(string()),
%%   <<"DateCreated">> => non_neg_integer(),
%%   <<"DateModified">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"Effect">> => list(any()),
%%   <<"ImpersonationRoleIds">> => list(string()),
%%   <<"IpRanges">> => list(string()),
%%   <<"Name">> => string(),
%%   <<"NotActions">> => list(string()),
%%   <<"NotImpersonationRoleIds">> => list(string()),
%%   <<"NotIpRanges">> => list(string()),
%%   <<"NotUserIds">> => list(string()),
%%   <<"UserIds">> => list(string())
%% }
-type access_control_rule() :: #{binary() => any()}.

%% Example:
%% domain() :: #{
%%   <<"DomainName">> => string(),
%%   <<"HostedZoneId">> => string()
%% }
-type domain() :: #{binary() => any()}.

%% Example:
%% describe_identity_provider_configuration_response() :: #{
%%   <<"AuthenticationMode">> => list(any()),
%%   <<"IdentityCenterConfiguration">> => identity_center_configuration(),
%%   <<"PersonalAccessTokenConfiguration">> => personal_access_token_configuration()
%% }
-type describe_identity_provider_configuration_response() :: #{binary() => any()}.

%% Example:
%% update_primary_email_address_response() :: #{

%% }
-type update_primary_email_address_response() :: #{binary() => any()}.

%% Example:
%% create_mobile_device_access_rule_response() :: #{
%%   <<"MobileDeviceAccessRuleId">> => string()
%% }
-type create_mobile_device_access_rule_response() :: #{binary() => any()}.

%% Example:
%% delete_email_monitoring_configuration_response() :: #{

%% }
-type delete_email_monitoring_configuration_response() :: #{binary() => any()}.

%% Example:
%% update_default_mail_domain_response() :: #{

%% }
-type update_default_mail_domain_response() :: #{binary() => any()}.

%% Example:
%% assume_impersonation_role_response() :: #{
%%   <<"ExpiresIn">> => float(),
%%   <<"Token">> => string()
%% }
-type assume_impersonation_role_response() :: #{binary() => any()}.

%% Example:
%% put_retention_policy_request() :: #{
%%   <<"Description">> => string(),
%%   <<"FolderConfigurations">> := list(folder_configuration()),
%%   <<"Id">> => string(),
%%   <<"Name">> := string(),
%%   <<"OrganizationId">> := string()
%% }
-type put_retention_policy_request() :: #{binary() => any()}.

%% Example:
%% mail_domain_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type mail_domain_not_found_exception() :: #{binary() => any()}.

%% Example:
%% list_mail_domains_response() :: #{
%%   <<"MailDomains">> => list(mail_domain_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_mail_domains_response() :: #{binary() => any()}.

%% Example:
%% list_mobile_device_access_rules_response() :: #{
%%   <<"Rules">> => list(mobile_device_access_rule())
%% }
-type list_mobile_device_access_rules_response() :: #{binary() => any()}.

%% Example:
%% get_personal_access_token_metadata_response() :: #{
%%   <<"DateCreated">> => non_neg_integer(),
%%   <<"DateLastUsed">> => non_neg_integer(),
%%   <<"ExpiresTime">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"PersonalAccessTokenId">> => string(),
%%   <<"Scopes">> => list(string()),
%%   <<"UserId">> => string()
%% }
-type get_personal_access_token_metadata_response() :: #{binary() => any()}.

%% Example:
%% list_resource_delegates_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"OrganizationId">> := string(),
%%   <<"ResourceId">> := string()
%% }
-type list_resource_delegates_request() :: #{binary() => any()}.

%% Example:
%% ews_availability_provider() :: #{
%%   <<"EwsEndpoint">> => string(),
%%   <<"EwsPassword">> => string(),
%%   <<"EwsUsername">> => string()
%% }
-type ews_availability_provider() :: #{binary() => any()}.

%% Example:
%% delete_personal_access_token_request() :: #{
%%   <<"OrganizationId">> := string(),
%%   <<"PersonalAccessTokenId">> := string()
%% }
-type delete_personal_access_token_request() :: #{binary() => any()}.

%% Example:
%% create_alias_response() :: #{

%% }
-type create_alias_response() :: #{binary() => any()}.

%% Example:
%% describe_entity_response() :: #{
%%   <<"EntityId">> => string(),
%%   <<"Name">> => string(),
%%   <<"Type">> => list(any())
%% }
-type describe_entity_response() :: #{binary() => any()}.

%% Example:
%% list_groups_filters() :: #{
%%   <<"NamePrefix">> => string(),
%%   <<"PrimaryEmailPrefix">> => string(),
%%   <<"State">> => list(any())
%% }
-type list_groups_filters() :: #{binary() => any()}.

%% Example:
%% untag_resource_request() :: #{
%%   <<"ResourceARN">> := string(),
%%   <<"TagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% list_resource_delegates_response() :: #{
%%   <<"Delegates">> => list(delegate()),
%%   <<"NextToken">> => string()
%% }
-type list_resource_delegates_response() :: #{binary() => any()}.

%% Example:
%% get_default_retention_policy_request() :: #{
%%   <<"OrganizationId">> := string()
%% }
-type get_default_retention_policy_request() :: #{binary() => any()}.

%% Example:
%% deregister_from_work_mail_request() :: #{
%%   <<"EntityId">> := string(),
%%   <<"OrganizationId">> := string()
%% }
-type deregister_from_work_mail_request() :: #{binary() => any()}.

%% Example:
%% group_identifier() :: #{
%%   <<"GroupId">> => string(),
%%   <<"GroupName">> => string()
%% }
-type group_identifier() :: #{binary() => any()}.

%% Example:
%% create_availability_configuration_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"DomainName">> := string(),
%%   <<"EwsProvider">> => ews_availability_provider(),
%%   <<"LambdaProvider">> => lambda_availability_provider(),
%%   <<"OrganizationId">> := string()
%% }
-type create_availability_configuration_request() :: #{binary() => any()}.

%% Example:
%% disassociate_delegate_from_resource_response() :: #{

%% }
-type disassociate_delegate_from_resource_response() :: #{binary() => any()}.

%% Example:
%% create_impersonation_role_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"Description">> => string(),
%%   <<"Name">> := string(),
%%   <<"OrganizationId">> := string(),
%%   <<"Rules">> := list(impersonation_rule()),
%%   <<"Type">> := list(any())
%% }
-type create_impersonation_role_request() :: #{binary() => any()}.

%% Example:
%% update_group_request() :: #{
%%   <<"GroupId">> := string(),
%%   <<"HiddenFromGlobalAddressList">> => boolean(),
%%   <<"OrganizationId">> := string()
%% }
-type update_group_request() :: #{binary() => any()}.

%% Example:
%% delete_resource_response() :: #{

%% }
-type delete_resource_response() :: #{binary() => any()}.

%% Example:
%% register_to_work_mail_response() :: #{

%% }
-type register_to_work_mail_response() :: #{binary() => any()}.

%% Example:
%% associate_delegate_to_resource_response() :: #{

%% }
-type associate_delegate_to_resource_response() :: #{binary() => any()}.

%% Example:
%% booking_options() :: #{
%%   <<"AutoAcceptRequests">> => boolean(),
%%   <<"AutoDeclineConflictingRequests">> => boolean(),
%%   <<"AutoDeclineRecurringRequests">> => boolean()
%% }
-type booking_options() :: #{binary() => any()}.

%% Example:
%% get_impersonation_role_effect_request() :: #{
%%   <<"ImpersonationRoleId">> := string(),
%%   <<"OrganizationId">> := string(),
%%   <<"TargetUser">> := string()
%% }
-type get_impersonation_role_effect_request() :: #{binary() => any()}.

%% Example:
%% delete_impersonation_role_response() :: #{

%% }
-type delete_impersonation_role_response() :: #{binary() => any()}.

%% Example:
%% create_identity_center_application_response() :: #{
%%   <<"ApplicationArn">> => string()
%% }
-type create_identity_center_application_response() :: #{binary() => any()}.

%% Example:
%% get_mailbox_details_request() :: #{
%%   <<"OrganizationId">> := string(),
%%   <<"UserId">> := string()
%% }
-type get_mailbox_details_request() :: #{binary() => any()}.

%% Example:
%% personal_access_token_configuration() :: #{
%%   <<"LifetimeInDays">> => integer(),
%%   <<"Status">> => list(any())
%% }
-type personal_access_token_configuration() :: #{binary() => any()}.

%% Example:
%% delete_retention_policy_request() :: #{
%%   <<"Id">> := string(),
%%   <<"OrganizationId">> := string()
%% }
-type delete_retention_policy_request() :: #{binary() => any()}.

%% Example:
%% name_availability_exception() :: #{
%%   <<"Message">> => string()
%% }
-type name_availability_exception() :: #{binary() => any()}.

%% Example:
%% create_availability_configuration_response() :: #{

%% }
-type create_availability_configuration_response() :: #{binary() => any()}.

%% Example:
%% put_inbound_dmarc_settings_request() :: #{
%%   <<"Enforced">> := boolean(),
%%   <<"OrganizationId">> := string()
%% }
-type put_inbound_dmarc_settings_request() :: #{binary() => any()}.

%% Example:
%% lambda_availability_provider() :: #{
%%   <<"LambdaArn">> => string()
%% }
-type lambda_availability_provider() :: #{binary() => any()}.

%% Example:
%% test_availability_configuration_response() :: #{
%%   <<"FailureReason">> => string(),
%%   <<"TestPassed">> => boolean()
%% }
-type test_availability_configuration_response() :: #{binary() => any()}.

%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% mail_domain_state_exception() :: #{
%%   <<"Message">> => string()
%% }
-type mail_domain_state_exception() :: #{binary() => any()}.

%% Example:
%% describe_inbound_dmarc_settings_response() :: #{
%%   <<"Enforced">> => boolean()
%% }
-type describe_inbound_dmarc_settings_response() :: #{binary() => any()}.

%% Example:
%% delete_identity_provider_configuration_request() :: #{
%%   <<"OrganizationId">> := string()
%% }
-type delete_identity_provider_configuration_request() :: #{binary() => any()}.

%% Example:
%% cancel_mailbox_export_job_response() :: #{

%% }
-type cancel_mailbox_export_job_response() :: #{binary() => any()}.

%% Example:
%% delete_availability_configuration_response() :: #{

%% }
-type delete_availability_configuration_response() :: #{binary() => any()}.

%% Example:
%% list_groups_for_entity_filters() :: #{
%%   <<"GroupNamePrefix">> => string()
%% }
-type list_groups_for_entity_filters() :: #{binary() => any()}.

%% Example:
%% get_mail_domain_request() :: #{
%%   <<"DomainName">> := string(),
%%   <<"OrganizationId">> := string()
%% }
-type get_mail_domain_request() :: #{binary() => any()}.

%% Example:
%% delete_personal_access_token_response() :: #{

%% }
-type delete_personal_access_token_response() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% reset_password_response() :: #{

%% }
-type reset_password_response() :: #{binary() => any()}.

%% Example:
%% organization_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type organization_not_found_exception() :: #{binary() => any()}.

%% Example:
%% update_resource_response() :: #{

%% }
-type update_resource_response() :: #{binary() => any()}.

%% Example:
%% delete_access_control_rule_response() :: #{

%% }
-type delete_access_control_rule_response() :: #{binary() => any()}.

%% Example:
%% list_mailbox_permissions_request() :: #{
%%   <<"EntityId">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"OrganizationId">> := string()
%% }
-type list_mailbox_permissions_request() :: #{binary() => any()}.

%% Example:
%% put_mailbox_permissions_request() :: #{
%%   <<"EntityId">> := string(),
%%   <<"GranteeId">> := string(),
%%   <<"OrganizationId">> := string(),
%%   <<"PermissionValues">> := list(list(any())())
%% }
-type put_mailbox_permissions_request() :: #{binary() => any()}.

%% Example:
%% get_mobile_device_access_override_response() :: #{
%%   <<"DateCreated">> => non_neg_integer(),
%%   <<"DateModified">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"DeviceId">> => string(),
%%   <<"Effect">> => list(any()),
%%   <<"UserId">> => string()
%% }
-type get_mobile_device_access_override_response() :: #{binary() => any()}.

%% Example:
%% delete_mobile_device_access_rule_response() :: #{

%% }
-type delete_mobile_device_access_rule_response() :: #{binary() => any()}.

%% Example:
%% disassociate_member_from_group_response() :: #{

%% }
-type disassociate_member_from_group_response() :: #{binary() => any()}.

%% Example:
%% list_impersonation_roles_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Roles">> => list(impersonation_role())
%% }
-type list_impersonation_roles_response() :: #{binary() => any()}.

%% Example:
%% mail_domain_summary() :: #{
%%   <<"DefaultDomain">> => boolean(),
%%   <<"DomainName">> => string()
%% }
-type mail_domain_summary() :: #{binary() => any()}.

%% Example:
%% list_users_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Users">> => list(user())
%% }
-type list_users_response() :: #{binary() => any()}.

%% Example:
%% get_impersonation_role_effect_response() :: #{
%%   <<"Effect">> => list(any()),
%%   <<"MatchedRules">> => list(impersonation_matched_rule()),
%%   <<"Type">> => list(any())
%% }
-type get_impersonation_role_effect_response() :: #{binary() => any()}.

%% Example:
%% describe_identity_provider_configuration_request() :: #{
%%   <<"OrganizationId">> := string()
%% }
-type describe_identity_provider_configuration_request() :: #{binary() => any()}.

%% Example:
%% delete_organization_response() :: #{
%%   <<"OrganizationId">> => string(),
%%   <<"State">> => string()
%% }
-type delete_organization_response() :: #{binary() => any()}.

%% Example:
%% describe_mailbox_export_job_request() :: #{
%%   <<"JobId">> := string(),
%%   <<"OrganizationId">> := string()
%% }
-type describe_mailbox_export_job_request() :: #{binary() => any()}.

%% Example:
%% disassociate_member_from_group_request() :: #{
%%   <<"GroupId">> := string(),
%%   <<"MemberId">> := string(),
%%   <<"OrganizationId">> := string()
%% }
-type disassociate_member_from_group_request() :: #{binary() => any()}.

%% Example:
%% availability_configuration() :: #{
%%   <<"DateCreated">> => non_neg_integer(),
%%   <<"DateModified">> => non_neg_integer(),
%%   <<"DomainName">> => string(),
%%   <<"EwsProvider">> => redacted_ews_availability_provider(),
%%   <<"LambdaProvider">> => lambda_availability_provider(),
%%   <<"ProviderType">> => list(any())
%% }
-type availability_configuration() :: #{binary() => any()}.

%% Example:
%% update_availability_configuration_request() :: #{
%%   <<"DomainName">> := string(),
%%   <<"EwsProvider">> => ews_availability_provider(),
%%   <<"LambdaProvider">> => lambda_availability_provider(),
%%   <<"OrganizationId">> := string()
%% }
-type update_availability_configuration_request() :: #{binary() => any()}.

%% Example:
%% update_availability_configuration_response() :: #{

%% }
-type update_availability_configuration_response() :: #{binary() => any()}.

%% Example:
%% put_identity_provider_configuration_response() :: #{

%% }
-type put_identity_provider_configuration_response() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"Tags">> => list(tag())
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.

%% Example:
%% mail_domain_in_use_exception() :: #{
%%   <<"Message">> => string()
%% }
-type mail_domain_in_use_exception() :: #{binary() => any()}.

%% Example:
%% update_default_mail_domain_request() :: #{
%%   <<"DomainName">> := string(),
%%   <<"OrganizationId">> := string()
%% }
-type update_default_mail_domain_request() :: #{binary() => any()}.

%% Example:
%% create_group_request() :: #{
%%   <<"HiddenFromGlobalAddressList">> => boolean(),
%%   <<"Name">> := string(),
%%   <<"OrganizationId">> := string()
%% }
-type create_group_request() :: #{binary() => any()}.

%% Example:
%% update_impersonation_role_response() :: #{

%% }
-type update_impersonation_role_response() :: #{binary() => any()}.

%% Example:
%% delete_impersonation_role_request() :: #{
%%   <<"ImpersonationRoleId">> := string(),
%%   <<"OrganizationId">> := string()
%% }
-type delete_impersonation_role_request() :: #{binary() => any()}.

%% Example:
%% register_mail_domain_response() :: #{

%% }
-type register_mail_domain_response() :: #{binary() => any()}.

%% Example:
%% mobile_device_access_override() :: #{
%%   <<"DateCreated">> => non_neg_integer(),
%%   <<"DateModified">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"DeviceId">> => string(),
%%   <<"Effect">> => list(any()),
%%   <<"UserId">> => string()
%% }
-type mobile_device_access_override() :: #{binary() => any()}.

%% Example:
%% create_resource_request() :: #{
%%   <<"Description">> => string(),
%%   <<"HiddenFromGlobalAddressList">> => boolean(),
%%   <<"Name">> := string(),
%%   <<"OrganizationId">> := string(),
%%   <<"Type">> := list(any())
%% }
-type create_resource_request() :: #{binary() => any()}.

%% Example:
%% list_groups_for_entity_response() :: #{
%%   <<"Groups">> => list(group_identifier()),
%%   <<"NextToken">> => string()
%% }
-type list_groups_for_entity_response() :: #{binary() => any()}.

%% Example:
%% organization_summary() :: #{
%%   <<"Alias">> => string(),
%%   <<"DefaultMailDomain">> => string(),
%%   <<"ErrorMessage">> => string(),
%%   <<"OrganizationId">> => string(),
%%   <<"State">> => string()
%% }
-type organization_summary() :: #{binary() => any()}.

%% Example:
%% delete_user_request() :: #{
%%   <<"OrganizationId">> := string(),
%%   <<"UserId">> := string()
%% }
-type delete_user_request() :: #{binary() => any()}.

%% Example:
%% list_mailbox_export_jobs_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"OrganizationId">> := string()
%% }
-type list_mailbox_export_jobs_request() :: #{binary() => any()}.

%% Example:
%% describe_organization_response() :: #{
%%   <<"ARN">> => string(),
%%   <<"Alias">> => string(),
%%   <<"CompletedDate">> => non_neg_integer(),
%%   <<"DefaultMailDomain">> => string(),
%%   <<"DirectoryId">> => string(),
%%   <<"DirectoryType">> => string(),
%%   <<"ErrorMessage">> => string(),
%%   <<"InteroperabilityEnabled">> => boolean(),
%%   <<"MigrationAdmin">> => string(),
%%   <<"OrganizationId">> => string(),
%%   <<"State">> => string()
%% }
-type describe_organization_response() :: #{binary() => any()}.

%% Example:
%% register_to_work_mail_request() :: #{
%%   <<"Email">> := string(),
%%   <<"EntityId">> := string(),
%%   <<"OrganizationId">> := string()
%% }
-type register_to_work_mail_request() :: #{binary() => any()}.

%% Example:
%% delete_user_response() :: #{

%% }
-type delete_user_response() :: #{binary() => any()}.

%% Example:
%% delete_mailbox_permissions_response() :: #{

%% }
-type delete_mailbox_permissions_response() :: #{binary() => any()}.

%% Example:
%% get_impersonation_role_request() :: #{
%%   <<"ImpersonationRoleId">> := string(),
%%   <<"OrganizationId">> := string()
%% }
-type get_impersonation_role_request() :: #{binary() => any()}.

%% Example:
%% put_mobile_device_access_override_request() :: #{
%%   <<"Description">> => string(),
%%   <<"DeviceId">> := string(),
%%   <<"Effect">> := list(any()),
%%   <<"OrganizationId">> := string(),
%%   <<"UserId">> := string()
%% }
-type put_mobile_device_access_override_request() :: #{binary() => any()}.

%% Example:
%% describe_mailbox_export_job_response() :: #{
%%   <<"Description">> => string(),
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"EntityId">> => string(),
%%   <<"ErrorInfo">> => string(),
%%   <<"EstimatedProgress">> => integer(),
%%   <<"KmsKeyArn">> => string(),
%%   <<"RoleArn">> => string(),
%%   <<"S3BucketName">> => string(),
%%   <<"S3Path">> => string(),
%%   <<"S3Prefix">> => string(),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"State">> => list(any())
%% }
-type describe_mailbox_export_job_response() :: #{binary() => any()}.

%% Example:
%% describe_user_response() :: #{
%%   <<"City">> => string(),
%%   <<"Company">> => string(),
%%   <<"Country">> => string(),
%%   <<"Department">> => string(),
%%   <<"DisabledDate">> => non_neg_integer(),
%%   <<"DisplayName">> => string(),
%%   <<"Email">> => string(),
%%   <<"EnabledDate">> => non_neg_integer(),
%%   <<"FirstName">> => string(),
%%   <<"HiddenFromGlobalAddressList">> => boolean(),
%%   <<"IdentityProviderIdentityStoreId">> => string(),
%%   <<"IdentityProviderUserId">> => string(),
%%   <<"Initials">> => string(),
%%   <<"JobTitle">> => string(),
%%   <<"LastName">> => string(),
%%   <<"MailboxDeprovisionedDate">> => non_neg_integer(),
%%   <<"MailboxProvisionedDate">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"Office">> => string(),
%%   <<"State">> => list(any()),
%%   <<"Street">> => string(),
%%   <<"Telephone">> => string(),
%%   <<"UserId">> => string(),
%%   <<"UserRole">> => list(any()),
%%   <<"ZipCode">> => string()
%% }
-type describe_user_response() :: #{binary() => any()}.

%% Example:
%% put_access_control_rule_response() :: #{

%% }
-type put_access_control_rule_response() :: #{binary() => any()}.

%% Example:
%% impersonation_role() :: #{
%%   <<"DateCreated">> => non_neg_integer(),
%%   <<"DateModified">> => non_neg_integer(),
%%   <<"ImpersonationRoleId">> => string(),
%%   <<"Name">> => string(),
%%   <<"Type">> => list(any())
%% }
-type impersonation_role() :: #{binary() => any()}.

%% Example:
%% describe_entity_request() :: #{
%%   <<"Email">> := string(),
%%   <<"OrganizationId">> := string()
%% }
-type describe_entity_request() :: #{binary() => any()}.

%% Example:
%% reset_password_request() :: #{
%%   <<"OrganizationId">> := string(),
%%   <<"Password">> := string(),
%%   <<"UserId">> := string()
%% }
-type reset_password_request() :: #{binary() => any()}.

%% Example:
%% put_access_control_rule_request() :: #{
%%   <<"Actions">> => list(string()),
%%   <<"Description">> := string(),
%%   <<"Effect">> := list(any()),
%%   <<"ImpersonationRoleIds">> => list(string()),
%%   <<"IpRanges">> => list(string()),
%%   <<"Name">> := string(),
%%   <<"NotActions">> => list(string()),
%%   <<"NotImpersonationRoleIds">> => list(string()),
%%   <<"NotIpRanges">> => list(string()),
%%   <<"NotUserIds">> => list(string()),
%%   <<"OrganizationId">> := string(),
%%   <<"UserIds">> => list(string())
%% }
-type put_access_control_rule_request() :: #{binary() => any()}.

%% Example:
%% impersonation_matched_rule() :: #{
%%   <<"ImpersonationRuleId">> => string(),
%%   <<"Name">> => string()
%% }
-type impersonation_matched_rule() :: #{binary() => any()}.

%% Example:
%% mobile_device_access_matched_rule() :: #{
%%   <<"MobileDeviceAccessRuleId">> => string(),
%%   <<"Name">> => string()
%% }
-type mobile_device_access_matched_rule() :: #{binary() => any()}.

%% Example:
%% impersonation_rule() :: #{
%%   <<"Description">> => string(),
%%   <<"Effect">> => list(any()),
%%   <<"ImpersonationRuleId">> => string(),
%%   <<"Name">> => string(),
%%   <<"NotTargetUsers">> => list(string()),
%%   <<"TargetUsers">> => list(string())
%% }
-type impersonation_rule() :: #{binary() => any()}.

%% Example:
%% dns_record() :: #{
%%   <<"Hostname">> => string(),
%%   <<"Type">> => string(),
%%   <<"Value">> => string()
%% }
-type dns_record() :: #{binary() => any()}.

%% Example:
%% describe_organization_request() :: #{
%%   <<"OrganizationId">> := string()
%% }
-type describe_organization_request() :: #{binary() => any()}.

%% Example:
%% update_mailbox_quota_request() :: #{
%%   <<"MailboxQuota">> := integer(),
%%   <<"OrganizationId">> := string(),
%%   <<"UserId">> := string()
%% }
-type update_mailbox_quota_request() :: #{binary() => any()}.

%% Example:
%% get_personal_access_token_metadata_request() :: #{
%%   <<"OrganizationId">> := string(),
%%   <<"PersonalAccessTokenId">> := string()
%% }
-type get_personal_access_token_metadata_request() :: #{binary() => any()}.

%% Example:
%% list_mobile_device_access_rules_request() :: #{
%%   <<"OrganizationId">> := string()
%% }
-type list_mobile_device_access_rules_request() :: #{binary() => any()}.

%% Example:
%% delete_email_monitoring_configuration_request() :: #{
%%   <<"OrganizationId">> := string()
%% }
-type delete_email_monitoring_configuration_request() :: #{binary() => any()}.

%% Example:
%% invalid_configuration_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_configuration_exception() :: #{binary() => any()}.

%% Example:
%% register_mail_domain_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"DomainName">> := string(),
%%   <<"OrganizationId">> := string()
%% }
-type register_mail_domain_request() :: #{binary() => any()}.

%% Example:
%% delete_retention_policy_response() :: #{

%% }
-type delete_retention_policy_response() :: #{binary() => any()}.

%% Example:
%% list_availability_configurations_response() :: #{
%%   <<"AvailabilityConfigurations">> => list(availability_configuration()),
%%   <<"NextToken">> => string()
%% }
-type list_availability_configurations_response() :: #{binary() => any()}.

%% Example:
%% delete_group_response() :: #{

%% }
-type delete_group_response() :: #{binary() => any()}.

%% Example:
%% invalid_parameter_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_parameter_exception() :: #{binary() => any()}.

%% Example:
%% create_resource_response() :: #{
%%   <<"ResourceId">> => string()
%% }
-type create_resource_response() :: #{binary() => any()}.

%% Example:
%% describe_email_monitoring_configuration_request() :: #{
%%   <<"OrganizationId">> := string()
%% }
-type describe_email_monitoring_configuration_request() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{

%% }
-type tag_resource_response() :: #{binary() => any()}.

%% Example:
%% update_impersonation_role_request() :: #{
%%   <<"Description">> => string(),
%%   <<"ImpersonationRoleId">> := string(),
%%   <<"Name">> := string(),
%%   <<"OrganizationId">> := string(),
%%   <<"Rules">> := list(impersonation_rule()),
%%   <<"Type">> := list(any())
%% }
-type update_impersonation_role_request() :: #{binary() => any()}.

%% Example:
%% describe_user_request() :: #{
%%   <<"OrganizationId">> := string(),
%%   <<"UserId">> := string()
%% }
-type describe_user_request() :: #{binary() => any()}.

%% Example:
%% list_access_control_rules_response() :: #{
%%   <<"Rules">> => list(access_control_rule())
%% }
-type list_access_control_rules_response() :: #{binary() => any()}.

%% Example:
%% put_inbound_dmarc_settings_response() :: #{

%% }
-type put_inbound_dmarc_settings_response() :: #{binary() => any()}.

%% Example:
%% update_user_request() :: #{
%%   <<"City">> => string(),
%%   <<"Company">> => string(),
%%   <<"Country">> => string(),
%%   <<"Department">> => string(),
%%   <<"DisplayName">> => string(),
%%   <<"FirstName">> => string(),
%%   <<"HiddenFromGlobalAddressList">> => boolean(),
%%   <<"IdentityProviderUserId">> => string(),
%%   <<"Initials">> => string(),
%%   <<"JobTitle">> => string(),
%%   <<"LastName">> => string(),
%%   <<"Office">> => string(),
%%   <<"OrganizationId">> := string(),
%%   <<"Role">> => list(any()),
%%   <<"Street">> => string(),
%%   <<"Telephone">> => string(),
%%   <<"UserId">> := string(),
%%   <<"ZipCode">> => string()
%% }
-type update_user_request() :: #{binary() => any()}.

%% Example:
%% redacted_ews_availability_provider() :: #{
%%   <<"EwsEndpoint">> => string(),
%%   <<"EwsUsername">> => string()
%% }
-type redacted_ews_availability_provider() :: #{binary() => any()}.

%% Example:
%% directory_unavailable_exception() :: #{
%%   <<"Message">> => string()
%% }
-type directory_unavailable_exception() :: #{binary() => any()}.

%% Example:
%% delete_availability_configuration_request() :: #{
%%   <<"DomainName">> := string(),
%%   <<"OrganizationId">> := string()
%% }
-type delete_availability_configuration_request() :: #{binary() => any()}.

%% Example:
%% describe_email_monitoring_configuration_response() :: #{
%%   <<"LogGroupArn">> => string(),
%%   <<"RoleArn">> => string()
%% }
-type describe_email_monitoring_configuration_response() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{
%%   <<"ResourceARN">> := string()
%% }
-type list_tags_for_resource_request() :: #{binary() => any()}.

%% Example:
%% put_mailbox_permissions_response() :: #{

%% }
-type put_mailbox_permissions_response() :: #{binary() => any()}.

%% Example:
%% entity_already_registered_exception() :: #{
%%   <<"Message">> => string()
%% }
-type entity_already_registered_exception() :: #{binary() => any()}.

%% Example:
%% email_address_in_use_exception() :: #{
%%   <<"Message">> => string()
%% }
-type email_address_in_use_exception() :: #{binary() => any()}.

%% Example:
%% create_organization_response() :: #{
%%   <<"OrganizationId">> => string()
%% }
-type create_organization_response() :: #{binary() => any()}.

%% Example:
%% identity_center_configuration() :: #{
%%   <<"ApplicationArn">> => string(),
%%   <<"InstanceArn">> => string()
%% }
-type identity_center_configuration() :: #{binary() => any()}.

%% Example:
%% delete_mailbox_permissions_request() :: #{
%%   <<"EntityId">> := string(),
%%   <<"GranteeId">> := string(),
%%   <<"OrganizationId">> := string()
%% }
-type delete_mailbox_permissions_request() :: #{binary() => any()}.

%% Example:
%% directory_in_use_exception() :: #{
%%   <<"Message">> => string()
%% }
-type directory_in_use_exception() :: #{binary() => any()}.

%% Example:
%% list_mailbox_permissions_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Permissions">> => list(permission())
%% }
-type list_mailbox_permissions_response() :: #{binary() => any()}.

%% Example:
%% update_mailbox_quota_response() :: #{

%% }
-type update_mailbox_quota_response() :: #{binary() => any()}.

%% Example:
%% group() :: #{
%%   <<"DisabledDate">> => non_neg_integer(),
%%   <<"Email">> => string(),
%%   <<"EnabledDate">> => non_neg_integer(),
%%   <<"Id">> => string(),
%%   <<"Name">> => string(),
%%   <<"State">> => list(any())
%% }
-type group() :: #{binary() => any()}.

%% Example:
%% invalid_custom_ses_configuration_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_custom_ses_configuration_exception() :: #{binary() => any()}.

%% Example:
%% user() :: #{
%%   <<"DisabledDate">> => non_neg_integer(),
%%   <<"DisplayName">> => string(),
%%   <<"Email">> => string(),
%%   <<"EnabledDate">> => non_neg_integer(),
%%   <<"Id">> => string(),
%%   <<"IdentityProviderIdentityStoreId">> => string(),
%%   <<"IdentityProviderUserId">> => string(),
%%   <<"Name">> => string(),
%%   <<"State">> => list(any()),
%%   <<"UserRole">> => list(any())
%% }
-type user() :: #{binary() => any()}.

%% Example:
%% describe_group_request() :: #{
%%   <<"GroupId">> := string(),
%%   <<"OrganizationId">> := string()
%% }
-type describe_group_request() :: #{binary() => any()}.

%% Example:
%% delete_group_request() :: #{
%%   <<"GroupId">> := string(),
%%   <<"OrganizationId">> := string()
%% }
-type delete_group_request() :: #{binary() => any()}.

%% Example:
%% list_organizations_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_organizations_request() :: #{binary() => any()}.

%% Example:
%% describe_resource_request() :: #{
%%   <<"OrganizationId">> := string(),
%%   <<"ResourceId">> := string()
%% }
-type describe_resource_request() :: #{binary() => any()}.

%% Example:
%% delete_mobile_device_access_override_response() :: #{

%% }
-type delete_mobile_device_access_override_response() :: #{binary() => any()}.

%% Example:
%% member() :: #{
%%   <<"DisabledDate">> => non_neg_integer(),
%%   <<"EnabledDate">> => non_neg_integer(),
%%   <<"Id">> => string(),
%%   <<"Name">> => string(),
%%   <<"State">> => list(any()),
%%   <<"Type">> => list(any())
%% }
-type member() :: #{binary() => any()}.

%% Example:
%% list_users_request() :: #{
%%   <<"Filters">> => list_users_filters(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"OrganizationId">> := string()
%% }
-type list_users_request() :: #{binary() => any()}.

%% Example:
%% delegate() :: #{
%%   <<"Id">> => string(),
%%   <<"Type">> => list(any())
%% }
-type delegate() :: #{binary() => any()}.

%% Example:
%% limit_exceeded_exception() :: #{
%%   <<"Message">> => string()
%% }
-type limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% list_resources_request() :: #{
%%   <<"Filters">> => list_resources_filters(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"OrganizationId">> := string()
%% }
-type list_resources_request() :: #{binary() => any()}.

%% Example:
%% start_mailbox_export_job_request() :: #{
%%   <<"ClientToken">> := string(),
%%   <<"Description">> => string(),
%%   <<"EntityId">> := string(),
%%   <<"KmsKeyArn">> := string(),
%%   <<"OrganizationId">> := string(),
%%   <<"RoleArn">> := string(),
%%   <<"S3BucketName">> := string(),
%%   <<"S3Prefix">> := string()
%% }
-type start_mailbox_export_job_request() :: #{binary() => any()}.

%% Example:
%% update_mobile_device_access_rule_request() :: #{
%%   <<"Description">> => string(),
%%   <<"DeviceModels">> => list(string()),
%%   <<"DeviceOperatingSystems">> => list(string()),
%%   <<"DeviceTypes">> => list(string()),
%%   <<"DeviceUserAgents">> => list(string()),
%%   <<"Effect">> := list(any()),
%%   <<"MobileDeviceAccessRuleId">> := string(),
%%   <<"Name">> := string(),
%%   <<"NotDeviceModels">> => list(string()),
%%   <<"NotDeviceOperatingSystems">> => list(string()),
%%   <<"NotDeviceTypes">> => list(string()),
%%   <<"NotDeviceUserAgents">> => list(string()),
%%   <<"OrganizationId">> := string()
%% }
-type update_mobile_device_access_rule_request() :: #{binary() => any()}.

%% Example:
%% delete_organization_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"DeleteDirectory">> := boolean(),
%%   <<"DeleteIdentityCenterApplication">> => boolean(),
%%   <<"ForceDelete">> => boolean(),
%%   <<"OrganizationId">> := string()
%% }
-type delete_organization_request() :: #{binary() => any()}.

%% Example:
%% get_mobile_device_access_effect_response() :: #{
%%   <<"Effect">> => list(any()),
%%   <<"MatchedRules">> => list(mobile_device_access_matched_rule())
%% }
-type get_mobile_device_access_effect_response() :: #{binary() => any()}.

%% Example:
%% describe_group_response() :: #{
%%   <<"DisabledDate">> => non_neg_integer(),
%%   <<"Email">> => string(),
%%   <<"EnabledDate">> => non_neg_integer(),
%%   <<"GroupId">> => string(),
%%   <<"HiddenFromGlobalAddressList">> => boolean(),
%%   <<"Name">> => string(),
%%   <<"State">> => list(any())
%% }
-type describe_group_response() :: #{binary() => any()}.

%% Example:
%% assume_impersonation_role_request() :: #{
%%   <<"ImpersonationRoleId">> := string(),
%%   <<"OrganizationId">> := string()
%% }
-type assume_impersonation_role_request() :: #{binary() => any()}.

%% Example:
%% delete_access_control_rule_request() :: #{
%%   <<"Name">> := string(),
%%   <<"OrganizationId">> := string()
%% }
-type delete_access_control_rule_request() :: #{binary() => any()}.

%% Example:
%% list_personal_access_tokens_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"PersonalAccessTokenSummaries">> => list(personal_access_token_summary())
%% }
-type list_personal_access_tokens_response() :: #{binary() => any()}.

%% Example:
%% associate_member_to_group_request() :: #{
%%   <<"GroupId">> := string(),
%%   <<"MemberId">> := string(),
%%   <<"OrganizationId">> := string()
%% }
-type associate_member_to_group_request() :: #{binary() => any()}.

%% Example:
%% get_default_retention_policy_response() :: #{
%%   <<"Description">> => string(),
%%   <<"FolderConfigurations">> => list(folder_configuration()),
%%   <<"Id">> => string(),
%%   <<"Name">> => string()
%% }
-type get_default_retention_policy_response() :: #{binary() => any()}.

%% Example:
%% mailbox_export_job() :: #{
%%   <<"Description">> => string(),
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"EntityId">> => string(),
%%   <<"EstimatedProgress">> => integer(),
%%   <<"JobId">> => string(),
%%   <<"S3BucketName">> => string(),
%%   <<"S3Path">> => string(),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"State">> => list(any())
%% }
-type mailbox_export_job() :: #{binary() => any()}.

%% Example:
%% list_groups_response() :: #{
%%   <<"Groups">> => list(group()),
%%   <<"NextToken">> => string()
%% }
-type list_groups_response() :: #{binary() => any()}.

%% Example:
%% delete_identity_provider_configuration_response() :: #{

%% }
-type delete_identity_provider_configuration_response() :: #{binary() => any()}.

%% Example:
%% list_mail_domains_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"OrganizationId">> := string()
%% }
-type list_mail_domains_request() :: #{binary() => any()}.

%% Example:
%% describe_inbound_dmarc_settings_request() :: #{
%%   <<"OrganizationId">> := string()
%% }
-type describe_inbound_dmarc_settings_request() :: #{binary() => any()}.

%% Example:
%% delete_alias_response() :: #{

%% }
-type delete_alias_response() :: #{binary() => any()}.

%% Example:
%% deregister_mail_domain_request() :: #{
%%   <<"DomainName">> := string(),
%%   <<"OrganizationId">> := string()
%% }
-type deregister_mail_domain_request() :: #{binary() => any()}.

%% Example:
%% reserved_name_exception() :: #{
%%   <<"Message">> => string()
%% }
-type reserved_name_exception() :: #{binary() => any()}.

%% Example:
%% put_identity_provider_configuration_request() :: #{
%%   <<"AuthenticationMode">> := list(any()),
%%   <<"IdentityCenterConfiguration">> := identity_center_configuration(),
%%   <<"OrganizationId">> := string(),
%%   <<"PersonalAccessTokenConfiguration">> := personal_access_token_configuration()
%% }
-type put_identity_provider_configuration_request() :: #{binary() => any()}.

%% Example:
%% list_groups_request() :: #{
%%   <<"Filters">> => list_groups_filters(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"OrganizationId">> := string()
%% }
-type list_groups_request() :: #{binary() => any()}.

%% Example:
%% directory_service_authentication_failed_exception() :: #{
%%   <<"Message">> => string()
%% }
-type directory_service_authentication_failed_exception() :: #{binary() => any()}.

%% Example:
%% start_mailbox_export_job_response() :: #{
%%   <<"JobId">> => string()
%% }
-type start_mailbox_export_job_response() :: #{binary() => any()}.

%% Example:
%% list_resources_filters() :: #{
%%   <<"NamePrefix">> => string(),
%%   <<"PrimaryEmailPrefix">> => string(),
%%   <<"State">> => list(any())
%% }
-type list_resources_filters() :: #{binary() => any()}.

%% Example:
%% create_user_response() :: #{
%%   <<"UserId">> => string()
%% }
-type create_user_response() :: #{binary() => any()}.

%% Example:
%% invalid_password_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_password_exception() :: #{binary() => any()}.

%% Example:
%% folder_configuration() :: #{
%%   <<"Action">> => list(any()),
%%   <<"Name">> => list(any()),
%%   <<"Period">> => integer()
%% }
-type folder_configuration() :: #{binary() => any()}.

%% Example:
%% update_group_response() :: #{

%% }
-type update_group_response() :: #{binary() => any()}.

%% Example:
%% delete_identity_center_application_response() :: #{

%% }
-type delete_identity_center_application_response() :: #{binary() => any()}.

%% Example:
%% delete_mobile_device_access_rule_request() :: #{
%%   <<"MobileDeviceAccessRuleId">> := string(),
%%   <<"OrganizationId">> := string()
%% }
-type delete_mobile_device_access_rule_request() :: #{binary() => any()}.

%% Example:
%% create_impersonation_role_response() :: #{
%%   <<"ImpersonationRoleId">> => string()
%% }
-type create_impersonation_role_response() :: #{binary() => any()}.

%% Example:
%% permission() :: #{
%%   <<"GranteeId">> => string(),
%%   <<"GranteeType">> => list(any()),
%%   <<"PermissionValues">> => list(list(any())())
%% }
-type permission() :: #{binary() => any()}.

%% Example:
%% get_impersonation_role_response() :: #{
%%   <<"DateCreated">> => non_neg_integer(),
%%   <<"DateModified">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"ImpersonationRoleId">> => string(),
%%   <<"Name">> => string(),
%%   <<"Rules">> => list(impersonation_rule()),
%%   <<"Type">> => list(any())
%% }
-type get_impersonation_role_response() :: #{binary() => any()}.

%% Example:
%% create_group_response() :: #{
%%   <<"GroupId">> => string()
%% }
-type create_group_response() :: #{binary() => any()}.

%% Example:
%% too_many_tags_exception() :: #{
%%   <<"Message">> => string()
%% }
-type too_many_tags_exception() :: #{binary() => any()}.

%% Example:
%% delete_alias_request() :: #{
%%   <<"Alias">> := string(),
%%   <<"EntityId">> := string(),
%%   <<"OrganizationId">> := string()
%% }
-type delete_alias_request() :: #{binary() => any()}.

%% Example:
%% list_group_members_response() :: #{
%%   <<"Members">> => list(member()),
%%   <<"NextToken">> => string()
%% }
-type list_group_members_response() :: #{binary() => any()}.

%% Example:
%% put_email_monitoring_configuration_response() :: #{

%% }
-type put_email_monitoring_configuration_response() :: #{binary() => any()}.

%% Example:
%% create_user_request() :: #{
%%   <<"DisplayName">> := string(),
%%   <<"FirstName">> => string(),
%%   <<"HiddenFromGlobalAddressList">> => boolean(),
%%   <<"IdentityProviderUserId">> => string(),
%%   <<"LastName">> => string(),
%%   <<"Name">> := string(),
%%   <<"OrganizationId">> := string(),
%%   <<"Password">> => string(),
%%   <<"Role">> => list(any())
%% }
-type create_user_request() :: #{binary() => any()}.

%% Example:
%% create_organization_request() :: #{
%%   <<"Alias">> := string(),
%%   <<"ClientToken">> => string(),
%%   <<"DirectoryId">> => string(),
%%   <<"Domains">> => list(domain()),
%%   <<"EnableInteroperability">> => boolean(),
%%   <<"KmsKeyArn">> => string()
%% }
-type create_organization_request() :: #{binary() => any()}.

%% Example:
%% resource() :: #{
%%   <<"Description">> => string(),
%%   <<"DisabledDate">> => non_neg_integer(),
%%   <<"Email">> => string(),
%%   <<"EnabledDate">> => non_neg_integer(),
%%   <<"Id">> => string(),
%%   <<"Name">> => string(),
%%   <<"State">> => list(any()),
%%   <<"Type">> => list(any())
%% }
-type resource() :: #{binary() => any()}.

%% Example:
%% create_identity_center_application_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"InstanceArn">> := string(),
%%   <<"Name">> := string()
%% }
-type create_identity_center_application_request() :: #{binary() => any()}.

-type associate_delegate_to_resource_errors() ::
    invalid_parameter_exception() | 
    organization_not_found_exception() | 
    organization_state_exception() | 
    entity_state_exception() | 
    unsupported_operation_exception() | 
    entity_not_found_exception().

-type associate_member_to_group_errors() ::
    directory_service_authentication_failed_exception() | 
    directory_unavailable_exception() | 
    invalid_parameter_exception() | 
    organization_not_found_exception() | 
    organization_state_exception() | 
    entity_state_exception() | 
    unsupported_operation_exception() | 
    entity_not_found_exception().

-type assume_impersonation_role_errors() ::
    invalid_parameter_exception() | 
    organization_not_found_exception() | 
    resource_not_found_exception() | 
    organization_state_exception().

-type cancel_mailbox_export_job_errors() ::
    invalid_parameter_exception() | 
    organization_not_found_exception() | 
    organization_state_exception() | 
    entity_not_found_exception().

-type create_alias_errors() ::
    limit_exceeded_exception() | 
    email_address_in_use_exception() | 
    invalid_parameter_exception() | 
    organization_not_found_exception() | 
    mail_domain_state_exception() | 
    mail_domain_not_found_exception() | 
    organization_state_exception() | 
    entity_state_exception() | 
    entity_not_found_exception().

-type create_availability_configuration_errors() ::
    limit_exceeded_exception() | 
    invalid_parameter_exception() | 
    organization_not_found_exception() | 
    name_availability_exception() | 
    organization_state_exception().

-type create_group_errors() ::
    directory_service_authentication_failed_exception() | 
    reserved_name_exception() | 
    directory_unavailable_exception() | 
    invalid_parameter_exception() | 
    organization_not_found_exception() | 
    name_availability_exception() | 
    organization_state_exception() | 
    unsupported_operation_exception().

-type create_identity_center_application_errors() ::
    invalid_parameter_exception().

-type create_impersonation_role_errors() ::
    limit_exceeded_exception() | 
    invalid_parameter_exception() | 
    organization_not_found_exception() | 
    organization_state_exception() | 
    entity_state_exception() | 
    entity_not_found_exception().

-type create_mobile_device_access_rule_errors() ::
    limit_exceeded_exception() | 
    invalid_parameter_exception() | 
    organization_not_found_exception() | 
    organization_state_exception().

-type create_organization_errors() ::
    limit_exceeded_exception() | 
    directory_in_use_exception() | 
    directory_unavailable_exception() | 
    invalid_parameter_exception() | 
    name_availability_exception().

-type create_resource_errors() ::
    directory_service_authentication_failed_exception() | 
    reserved_name_exception() | 
    directory_unavailable_exception() | 
    invalid_parameter_exception() | 
    organization_not_found_exception() | 
    name_availability_exception() | 
    organization_state_exception() | 
    unsupported_operation_exception().

-type create_user_errors() ::
    invalid_password_exception() | 
    directory_service_authentication_failed_exception() | 
    reserved_name_exception() | 
    directory_unavailable_exception() | 
    invalid_parameter_exception() | 
    organization_not_found_exception() | 
    name_availability_exception() | 
    organization_state_exception() | 
    unsupported_operation_exception().

-type delete_access_control_rule_errors() ::
    organization_not_found_exception() | 
    organization_state_exception().

-type delete_alias_errors() ::
    invalid_parameter_exception() | 
    organization_not_found_exception() | 
    organization_state_exception() | 
    entity_state_exception() | 
    entity_not_found_exception().

-type delete_availability_configuration_errors() ::
    organization_not_found_exception() | 
    organization_state_exception().

-type delete_email_monitoring_configuration_errors() ::
    invalid_parameter_exception() | 
    organization_not_found_exception() | 
    organization_state_exception().

-type delete_group_errors() ::
    directory_service_authentication_failed_exception() | 
    directory_unavailable_exception() | 
    invalid_parameter_exception() | 
    organization_not_found_exception() | 
    organization_state_exception() | 
    entity_state_exception() | 
    unsupported_operation_exception().

-type delete_identity_center_application_errors() ::
    invalid_parameter_exception() | 
    organization_state_exception().

-type delete_identity_provider_configuration_errors() ::
    invalid_parameter_exception() | 
    organization_not_found_exception() | 
    organization_state_exception().

-type delete_impersonation_role_errors() ::
    invalid_parameter_exception() | 
    organization_not_found_exception() | 
    organization_state_exception().

-type delete_mailbox_permissions_errors() ::
    invalid_parameter_exception() | 
    organization_not_found_exception() | 
    organization_state_exception() | 
    entity_state_exception() | 
    entity_not_found_exception().

-type delete_mobile_device_access_override_errors() ::
    invalid_parameter_exception() | 
    organization_not_found_exception() | 
    organization_state_exception() | 
    entity_not_found_exception().

-type delete_mobile_device_access_rule_errors() ::
    invalid_parameter_exception() | 
    organization_not_found_exception() | 
    organization_state_exception().

-type delete_organization_errors() ::
    invalid_parameter_exception() | 
    organization_not_found_exception() | 
    organization_state_exception().

-type delete_personal_access_token_errors() ::
    invalid_parameter_exception() | 
    organization_not_found_exception() | 
    organization_state_exception().

-type delete_resource_errors() ::
    invalid_parameter_exception() | 
    organization_not_found_exception() | 
    organization_state_exception() | 
    entity_state_exception() | 
    unsupported_operation_exception().

-type delete_retention_policy_errors() ::
    invalid_parameter_exception() | 
    organization_not_found_exception() | 
    organization_state_exception().

-type delete_user_errors() ::
    directory_service_authentication_failed_exception() | 
    directory_unavailable_exception() | 
    invalid_parameter_exception() | 
    organization_not_found_exception() | 
    organization_state_exception() | 
    entity_state_exception() | 
    unsupported_operation_exception().

-type deregister_from_work_mail_errors() ::
    invalid_parameter_exception() | 
    organization_not_found_exception() | 
    organization_state_exception() | 
    entity_state_exception() | 
    entity_not_found_exception().

-type deregister_mail_domain_errors() ::
    invalid_custom_ses_configuration_exception() | 
    invalid_parameter_exception() | 
    mail_domain_in_use_exception() | 
    organization_not_found_exception() | 
    organization_state_exception().

-type describe_email_monitoring_configuration_errors() ::
    invalid_parameter_exception() | 
    organization_not_found_exception() | 
    resource_not_found_exception() | 
    organization_state_exception().

-type describe_entity_errors() ::
    invalid_parameter_exception() | 
    organization_not_found_exception() | 
    organization_state_exception() | 
    entity_not_found_exception().

-type describe_group_errors() ::
    invalid_parameter_exception() | 
    organization_not_found_exception() | 
    organization_state_exception() | 
    entity_not_found_exception().

-type describe_identity_provider_configuration_errors() ::
    invalid_parameter_exception() | 
    organization_not_found_exception() | 
    resource_not_found_exception() | 
    organization_state_exception().

-type describe_inbound_dmarc_settings_errors() ::
    organization_not_found_exception() | 
    organization_state_exception().

-type describe_mailbox_export_job_errors() ::
    invalid_parameter_exception() | 
    organization_not_found_exception() | 
    organization_state_exception() | 
    entity_not_found_exception().

-type describe_organization_errors() ::
    invalid_parameter_exception() | 
    organization_not_found_exception().

-type describe_resource_errors() ::
    invalid_parameter_exception() | 
    organization_not_found_exception() | 
    organization_state_exception() | 
    unsupported_operation_exception() | 
    entity_not_found_exception().

-type describe_user_errors() ::
    directory_service_authentication_failed_exception() | 
    directory_unavailable_exception() | 
    invalid_parameter_exception() | 
    organization_not_found_exception() | 
    organization_state_exception() | 
    entity_not_found_exception().

-type disassociate_delegate_from_resource_errors() ::
    invalid_parameter_exception() | 
    organization_not_found_exception() | 
    organization_state_exception() | 
    entity_state_exception() | 
    unsupported_operation_exception() | 
    entity_not_found_exception().

-type disassociate_member_from_group_errors() ::
    directory_service_authentication_failed_exception() | 
    directory_unavailable_exception() | 
    invalid_parameter_exception() | 
    organization_not_found_exception() | 
    organization_state_exception() | 
    entity_state_exception() | 
    unsupported_operation_exception() | 
    entity_not_found_exception().

-type get_access_control_effect_errors() ::
    invalid_parameter_exception() | 
    organization_not_found_exception() | 
    resource_not_found_exception() | 
    organization_state_exception() | 
    entity_not_found_exception().

-type get_default_retention_policy_errors() ::
    invalid_parameter_exception() | 
    organization_not_found_exception() | 
    organization_state_exception() | 
    entity_not_found_exception().

-type get_impersonation_role_errors() ::
    invalid_parameter_exception() | 
    organization_not_found_exception() | 
    resource_not_found_exception() | 
    organization_state_exception().

-type get_impersonation_role_effect_errors() ::
    invalid_parameter_exception() | 
    organization_not_found_exception() | 
    resource_not_found_exception() | 
    organization_state_exception() | 
    entity_state_exception() | 
    entity_not_found_exception().

-type get_mail_domain_errors() ::
    invalid_parameter_exception() | 
    organization_not_found_exception() | 
    mail_domain_not_found_exception() | 
    organization_state_exception().

-type get_mailbox_details_errors() ::
    invalid_parameter_exception() | 
    organization_not_found_exception() | 
    organization_state_exception() | 
    entity_not_found_exception().

-type get_mobile_device_access_effect_errors() ::
    invalid_parameter_exception() | 
    organization_not_found_exception() | 
    organization_state_exception().

-type get_mobile_device_access_override_errors() ::
    invalid_parameter_exception() | 
    organization_not_found_exception() | 
    resource_not_found_exception() | 
    organization_state_exception() | 
    entity_not_found_exception().

-type get_personal_access_token_metadata_errors() ::
    invalid_parameter_exception() | 
    organization_not_found_exception() | 
    resource_not_found_exception() | 
    organization_state_exception().

-type list_access_control_rules_errors() ::
    organization_not_found_exception() | 
    organization_state_exception().

-type list_aliases_errors() ::
    invalid_parameter_exception() | 
    organization_not_found_exception() | 
    organization_state_exception() | 
    entity_state_exception() | 
    entity_not_found_exception().

-type list_availability_configurations_errors() ::
    invalid_parameter_exception() | 
    organization_not_found_exception() | 
    organization_state_exception().

-type list_group_members_errors() ::
    invalid_parameter_exception() | 
    organization_not_found_exception() | 
    organization_state_exception() | 
    entity_state_exception() | 
    entity_not_found_exception().

-type list_groups_errors() ::
    invalid_parameter_exception() | 
    organization_not_found_exception() | 
    organization_state_exception() | 
    entity_not_found_exception().

-type list_groups_for_entity_errors() ::
    invalid_parameter_exception() | 
    organization_not_found_exception() | 
    organization_state_exception() | 
    entity_state_exception() | 
    entity_not_found_exception().

-type list_impersonation_roles_errors() ::
    invalid_parameter_exception() | 
    organization_not_found_exception() | 
    organization_state_exception().

-type list_mail_domains_errors() ::
    invalid_parameter_exception() | 
    organization_not_found_exception() | 
    organization_state_exception().

-type list_mailbox_export_jobs_errors() ::
    invalid_parameter_exception() | 
    organization_not_found_exception() | 
    organization_state_exception().

-type list_mailbox_permissions_errors() ::
    invalid_parameter_exception() | 
    organization_not_found_exception() | 
    organization_state_exception() | 
    entity_not_found_exception().

-type list_mobile_device_access_overrides_errors() ::
    invalid_parameter_exception() | 
    organization_not_found_exception() | 
    organization_state_exception() | 
    entity_not_found_exception().

-type list_mobile_device_access_rules_errors() ::
    invalid_parameter_exception() | 
    organization_not_found_exception() | 
    organization_state_exception().

-type list_organizations_errors() ::
    invalid_parameter_exception().

-type list_personal_access_tokens_errors() ::
    invalid_parameter_exception() | 
    organization_not_found_exception() | 
    organization_state_exception() | 
    entity_state_exception() | 
    entity_not_found_exception().

-type list_resource_delegates_errors() ::
    invalid_parameter_exception() | 
    organization_not_found_exception() | 
    organization_state_exception() | 
    entity_state_exception() | 
    unsupported_operation_exception() | 
    entity_not_found_exception().

-type list_resources_errors() ::
    invalid_parameter_exception() | 
    organization_not_found_exception() | 
    organization_state_exception() | 
    unsupported_operation_exception().

-type list_tags_for_resource_errors() ::
    resource_not_found_exception().

-type list_users_errors() ::
    invalid_parameter_exception() | 
    organization_not_found_exception() | 
    organization_state_exception().

-type put_access_control_rule_errors() ::
    limit_exceeded_exception() | 
    invalid_parameter_exception() | 
    organization_not_found_exception() | 
    resource_not_found_exception() | 
    organization_state_exception() | 
    entity_not_found_exception().

-type put_email_monitoring_configuration_errors() ::
    invalid_parameter_exception() | 
    organization_not_found_exception() | 
    resource_not_found_exception() | 
    organization_state_exception().

-type put_identity_provider_configuration_errors() ::
    invalid_parameter_exception() | 
    organization_not_found_exception() | 
    resource_not_found_exception() | 
    organization_state_exception().

-type put_inbound_dmarc_settings_errors() ::
    organization_not_found_exception() | 
    organization_state_exception().

-type put_mailbox_permissions_errors() ::
    invalid_parameter_exception() | 
    organization_not_found_exception() | 
    organization_state_exception() | 
    entity_state_exception() | 
    entity_not_found_exception().

-type put_mobile_device_access_override_errors() ::
    invalid_parameter_exception() | 
    organization_not_found_exception() | 
    organization_state_exception() | 
    entity_state_exception() | 
    entity_not_found_exception().

-type put_retention_policy_errors() ::
    limit_exceeded_exception() | 
    invalid_parameter_exception() | 
    organization_not_found_exception() | 
    organization_state_exception().

-type register_mail_domain_errors() ::
    limit_exceeded_exception() | 
    invalid_parameter_exception() | 
    mail_domain_in_use_exception() | 
    organization_not_found_exception() | 
    organization_state_exception().

-type register_to_work_mail_errors() ::
    directory_service_authentication_failed_exception() | 
    email_address_in_use_exception() | 
    entity_already_registered_exception() | 
    directory_unavailable_exception() | 
    invalid_parameter_exception() | 
    organization_not_found_exception() | 
    mail_domain_state_exception() | 
    mail_domain_not_found_exception() | 
    organization_state_exception() | 
    entity_state_exception() | 
    unsupported_operation_exception() | 
    entity_not_found_exception().

-type reset_password_errors() ::
    invalid_password_exception() | 
    directory_service_authentication_failed_exception() | 
    directory_unavailable_exception() | 
    invalid_parameter_exception() | 
    organization_not_found_exception() | 
    organization_state_exception() | 
    entity_state_exception() | 
    unsupported_operation_exception() | 
    entity_not_found_exception().

-type start_mailbox_export_job_errors() ::
    limit_exceeded_exception() | 
    invalid_parameter_exception() | 
    organization_not_found_exception() | 
    organization_state_exception() | 
    entity_not_found_exception().

-type tag_resource_errors() ::
    too_many_tags_exception() | 
    invalid_parameter_exception() | 
    resource_not_found_exception() | 
    organization_state_exception().

-type test_availability_configuration_errors() ::
    invalid_parameter_exception() | 
    organization_not_found_exception() | 
    resource_not_found_exception() | 
    organization_state_exception().

-type untag_resource_errors() ::
    resource_not_found_exception().

-type update_availability_configuration_errors() ::
    invalid_parameter_exception() | 
    organization_not_found_exception() | 
    resource_not_found_exception() | 
    organization_state_exception().

-type update_default_mail_domain_errors() ::
    invalid_parameter_exception() | 
    organization_not_found_exception() | 
    mail_domain_state_exception() | 
    mail_domain_not_found_exception() | 
    organization_state_exception().

-type update_group_errors() ::
    invalid_parameter_exception() | 
    organization_not_found_exception() | 
    organization_state_exception() | 
    entity_state_exception() | 
    unsupported_operation_exception() | 
    entity_not_found_exception().

-type update_impersonation_role_errors() ::
    limit_exceeded_exception() | 
    invalid_parameter_exception() | 
    organization_not_found_exception() | 
    resource_not_found_exception() | 
    organization_state_exception() | 
    entity_state_exception() | 
    entity_not_found_exception().

-type update_mailbox_quota_errors() ::
    invalid_parameter_exception() | 
    organization_not_found_exception() | 
    organization_state_exception() | 
    entity_state_exception() | 
    entity_not_found_exception().

-type update_mobile_device_access_rule_errors() ::
    invalid_parameter_exception() | 
    organization_not_found_exception() | 
    organization_state_exception() | 
    entity_not_found_exception().

-type update_primary_email_address_errors() ::
    directory_service_authentication_failed_exception() | 
    email_address_in_use_exception() | 
    directory_unavailable_exception() | 
    invalid_parameter_exception() | 
    organization_not_found_exception() | 
    mail_domain_state_exception() | 
    mail_domain_not_found_exception() | 
    organization_state_exception() | 
    entity_state_exception() | 
    unsupported_operation_exception() | 
    entity_not_found_exception().

-type update_resource_errors() ::
    email_address_in_use_exception() | 
    directory_unavailable_exception() | 
    invalid_parameter_exception() | 
    invalid_configuration_exception() | 
    organization_not_found_exception() | 
    mail_domain_state_exception() | 
    name_availability_exception() | 
    mail_domain_not_found_exception() | 
    organization_state_exception() | 
    entity_state_exception() | 
    unsupported_operation_exception() | 
    entity_not_found_exception().

-type update_user_errors() ::
    directory_service_authentication_failed_exception() | 
    directory_unavailable_exception() | 
    invalid_parameter_exception() | 
    organization_not_found_exception() | 
    organization_state_exception() | 
    entity_state_exception() | 
    unsupported_operation_exception() | 
    entity_not_found_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Adds a member (user or group) to the resource's set of delegates.
-spec associate_delegate_to_resource(aws_client:aws_client(), associate_delegate_to_resource_request()) ->
    {ok, associate_delegate_to_resource_response(), tuple()} |
    {error, any()} |
    {error, associate_delegate_to_resource_errors(), tuple()}.
associate_delegate_to_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_delegate_to_resource(Client, Input, []).

-spec associate_delegate_to_resource(aws_client:aws_client(), associate_delegate_to_resource_request(), proplists:proplist()) ->
    {ok, associate_delegate_to_resource_response(), tuple()} |
    {error, any()} |
    {error, associate_delegate_to_resource_errors(), tuple()}.
associate_delegate_to_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateDelegateToResource">>, Input, Options).

%% @doc Adds a member (user or group) to the group's set.
-spec associate_member_to_group(aws_client:aws_client(), associate_member_to_group_request()) ->
    {ok, associate_member_to_group_response(), tuple()} |
    {error, any()} |
    {error, associate_member_to_group_errors(), tuple()}.
associate_member_to_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_member_to_group(Client, Input, []).

-spec associate_member_to_group(aws_client:aws_client(), associate_member_to_group_request(), proplists:proplist()) ->
    {ok, associate_member_to_group_response(), tuple()} |
    {error, any()} |
    {error, associate_member_to_group_errors(), tuple()}.
associate_member_to_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateMemberToGroup">>, Input, Options).

%% @doc Assumes an impersonation role for the given WorkMail organization.
%%
%% This method returns an
%% authentication token you can use to make impersonated calls.
-spec assume_impersonation_role(aws_client:aws_client(), assume_impersonation_role_request()) ->
    {ok, assume_impersonation_role_response(), tuple()} |
    {error, any()} |
    {error, assume_impersonation_role_errors(), tuple()}.
assume_impersonation_role(Client, Input)
  when is_map(Client), is_map(Input) ->
    assume_impersonation_role(Client, Input, []).

-spec assume_impersonation_role(aws_client:aws_client(), assume_impersonation_role_request(), proplists:proplist()) ->
    {ok, assume_impersonation_role_response(), tuple()} |
    {error, any()} |
    {error, assume_impersonation_role_errors(), tuple()}.
assume_impersonation_role(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssumeImpersonationRole">>, Input, Options).

%% @doc Cancels a mailbox export job.
%%
%% If the mailbox export job is near completion, it might not be possible to
%% cancel
%% it.
-spec cancel_mailbox_export_job(aws_client:aws_client(), cancel_mailbox_export_job_request()) ->
    {ok, cancel_mailbox_export_job_response(), tuple()} |
    {error, any()} |
    {error, cancel_mailbox_export_job_errors(), tuple()}.
cancel_mailbox_export_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    cancel_mailbox_export_job(Client, Input, []).

-spec cancel_mailbox_export_job(aws_client:aws_client(), cancel_mailbox_export_job_request(), proplists:proplist()) ->
    {ok, cancel_mailbox_export_job_response(), tuple()} |
    {error, any()} |
    {error, cancel_mailbox_export_job_errors(), tuple()}.
cancel_mailbox_export_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CancelMailboxExportJob">>, Input, Options).

%% @doc Adds an alias to the set of a given member (user or group) of
%% WorkMail.
-spec create_alias(aws_client:aws_client(), create_alias_request()) ->
    {ok, create_alias_response(), tuple()} |
    {error, any()} |
    {error, create_alias_errors(), tuple()}.
create_alias(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_alias(Client, Input, []).

-spec create_alias(aws_client:aws_client(), create_alias_request(), proplists:proplist()) ->
    {ok, create_alias_response(), tuple()} |
    {error, any()} |
    {error, create_alias_errors(), tuple()}.
create_alias(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateAlias">>, Input, Options).

%% @doc Creates an `AvailabilityConfiguration' for the given WorkMail
%% organization and domain.
-spec create_availability_configuration(aws_client:aws_client(), create_availability_configuration_request()) ->
    {ok, create_availability_configuration_response(), tuple()} |
    {error, any()} |
    {error, create_availability_configuration_errors(), tuple()}.
create_availability_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_availability_configuration(Client, Input, []).

-spec create_availability_configuration(aws_client:aws_client(), create_availability_configuration_request(), proplists:proplist()) ->
    {ok, create_availability_configuration_response(), tuple()} |
    {error, any()} |
    {error, create_availability_configuration_errors(), tuple()}.
create_availability_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateAvailabilityConfiguration">>, Input, Options).

%% @doc Creates a group that can be used in WorkMail by calling the
%% `RegisterToWorkMail' operation.
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

%% @doc
%% Creates the WorkMail application in IAM Identity Center that can be used
%% later in the WorkMail - IdC integration.
%%
%% For more information, see PutIdentityProviderConfiguration. This action
%% does not affect the authentication settings for any WorkMail
%% organizations.
-spec create_identity_center_application(aws_client:aws_client(), create_identity_center_application_request()) ->
    {ok, create_identity_center_application_response(), tuple()} |
    {error, any()} |
    {error, create_identity_center_application_errors(), tuple()}.
create_identity_center_application(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_identity_center_application(Client, Input, []).

-spec create_identity_center_application(aws_client:aws_client(), create_identity_center_application_request(), proplists:proplist()) ->
    {ok, create_identity_center_application_response(), tuple()} |
    {error, any()} |
    {error, create_identity_center_application_errors(), tuple()}.
create_identity_center_application(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateIdentityCenterApplication">>, Input, Options).

%% @doc Creates an impersonation role for the given WorkMail organization.
%%
%% Idempotency ensures that an API request completes no more than one
%% time. With an idempotent request, if the original request completes
%% successfully, any
%% subsequent retries also complete successfully without performing any
%% further
%% actions.
-spec create_impersonation_role(aws_client:aws_client(), create_impersonation_role_request()) ->
    {ok, create_impersonation_role_response(), tuple()} |
    {error, any()} |
    {error, create_impersonation_role_errors(), tuple()}.
create_impersonation_role(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_impersonation_role(Client, Input, []).

-spec create_impersonation_role(aws_client:aws_client(), create_impersonation_role_request(), proplists:proplist()) ->
    {ok, create_impersonation_role_response(), tuple()} |
    {error, any()} |
    {error, create_impersonation_role_errors(), tuple()}.
create_impersonation_role(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateImpersonationRole">>, Input, Options).

%% @doc Creates a new mobile device access rule for the specified WorkMail
%% organization.
-spec create_mobile_device_access_rule(aws_client:aws_client(), create_mobile_device_access_rule_request()) ->
    {ok, create_mobile_device_access_rule_response(), tuple()} |
    {error, any()} |
    {error, create_mobile_device_access_rule_errors(), tuple()}.
create_mobile_device_access_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_mobile_device_access_rule(Client, Input, []).

-spec create_mobile_device_access_rule(aws_client:aws_client(), create_mobile_device_access_rule_request(), proplists:proplist()) ->
    {ok, create_mobile_device_access_rule_response(), tuple()} |
    {error, any()} |
    {error, create_mobile_device_access_rule_errors(), tuple()}.
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
%% Adding an organization:
%% https://docs.aws.amazon.com/workmail/latest/adminguide/add_new_organization.html
%% in the WorkMail Administrator Guide.
%%
%% You can associate multiple email domains with an organization, then choose
%% your
%% default email domain from the WorkMail console. You can also associate a
%% domain that is managed
%% in an Amazon Route 53 public hosted zone. For more information, see Adding
%% a
%% domain:
%% https://docs.aws.amazon.com/workmail/latest/adminguide/add_domain.html and
%% Choosing the default domain:
%% https://docs.aws.amazon.com/workmail/latest/adminguide/default_domain.html
%% in the WorkMail Administrator Guide.
%%
%% Optionally, you can use a customer managed key from AWS Key Management
%% Service (AWS
%% KMS) to encrypt email for your organization. If you don't associate an
%% AWS KMS key, WorkMail
%% creates a default, AWS managed key for you.
-spec create_organization(aws_client:aws_client(), create_organization_request()) ->
    {ok, create_organization_response(), tuple()} |
    {error, any()} |
    {error, create_organization_errors(), tuple()}.
create_organization(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_organization(Client, Input, []).

-spec create_organization(aws_client:aws_client(), create_organization_request(), proplists:proplist()) ->
    {ok, create_organization_response(), tuple()} |
    {error, any()} |
    {error, create_organization_errors(), tuple()}.
create_organization(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateOrganization">>, Input, Options).

%% @doc Creates a new WorkMail resource.
-spec create_resource(aws_client:aws_client(), create_resource_request()) ->
    {ok, create_resource_response(), tuple()} |
    {error, any()} |
    {error, create_resource_errors(), tuple()}.
create_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_resource(Client, Input, []).

-spec create_resource(aws_client:aws_client(), create_resource_request(), proplists:proplist()) ->
    {ok, create_resource_response(), tuple()} |
    {error, any()} |
    {error, create_resource_errors(), tuple()}.
create_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateResource">>, Input, Options).

%% @doc Creates a user who can be used in WorkMail by calling the
%% `RegisterToWorkMail' operation.
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

%% @doc Deletes an access control rule for the specified WorkMail
%% organization.
%%
%% Deleting already deleted and non-existing rules does not produce an error.
%% In those cases, the service sends back an HTTP 200 response with an empty
%% HTTP body.
-spec delete_access_control_rule(aws_client:aws_client(), delete_access_control_rule_request()) ->
    {ok, delete_access_control_rule_response(), tuple()} |
    {error, any()} |
    {error, delete_access_control_rule_errors(), tuple()}.
delete_access_control_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_access_control_rule(Client, Input, []).

-spec delete_access_control_rule(aws_client:aws_client(), delete_access_control_rule_request(), proplists:proplist()) ->
    {ok, delete_access_control_rule_response(), tuple()} |
    {error, any()} |
    {error, delete_access_control_rule_errors(), tuple()}.
delete_access_control_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAccessControlRule">>, Input, Options).

%% @doc Remove one or more specified aliases from a set of aliases for a
%% given
%% user.
-spec delete_alias(aws_client:aws_client(), delete_alias_request()) ->
    {ok, delete_alias_response(), tuple()} |
    {error, any()} |
    {error, delete_alias_errors(), tuple()}.
delete_alias(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_alias(Client, Input, []).

-spec delete_alias(aws_client:aws_client(), delete_alias_request(), proplists:proplist()) ->
    {ok, delete_alias_response(), tuple()} |
    {error, any()} |
    {error, delete_alias_errors(), tuple()}.
delete_alias(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAlias">>, Input, Options).

%% @doc Deletes the `AvailabilityConfiguration' for the given WorkMail
%% organization and domain.
-spec delete_availability_configuration(aws_client:aws_client(), delete_availability_configuration_request()) ->
    {ok, delete_availability_configuration_response(), tuple()} |
    {error, any()} |
    {error, delete_availability_configuration_errors(), tuple()}.
delete_availability_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_availability_configuration(Client, Input, []).

-spec delete_availability_configuration(aws_client:aws_client(), delete_availability_configuration_request(), proplists:proplist()) ->
    {ok, delete_availability_configuration_response(), tuple()} |
    {error, any()} |
    {error, delete_availability_configuration_errors(), tuple()}.
delete_availability_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAvailabilityConfiguration">>, Input, Options).

%% @doc Deletes the email monitoring configuration for a specified
%% organization.
-spec delete_email_monitoring_configuration(aws_client:aws_client(), delete_email_monitoring_configuration_request()) ->
    {ok, delete_email_monitoring_configuration_response(), tuple()} |
    {error, any()} |
    {error, delete_email_monitoring_configuration_errors(), tuple()}.
delete_email_monitoring_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_email_monitoring_configuration(Client, Input, []).

-spec delete_email_monitoring_configuration(aws_client:aws_client(), delete_email_monitoring_configuration_request(), proplists:proplist()) ->
    {ok, delete_email_monitoring_configuration_response(), tuple()} |
    {error, any()} |
    {error, delete_email_monitoring_configuration_errors(), tuple()}.
delete_email_monitoring_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteEmailMonitoringConfiguration">>, Input, Options).

%% @doc Deletes a group from WorkMail.
-spec delete_group(aws_client:aws_client(), delete_group_request()) ->
    {ok, delete_group_response(), tuple()} |
    {error, any()} |
    {error, delete_group_errors(), tuple()}.
delete_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_group(Client, Input, []).

-spec delete_group(aws_client:aws_client(), delete_group_request(), proplists:proplist()) ->
    {ok, delete_group_response(), tuple()} |
    {error, any()} |
    {error, delete_group_errors(), tuple()}.
delete_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteGroup">>, Input, Options).

%% @doc
%% Deletes the IAM Identity Center application from WorkMail.
%%
%% This action does not affect the authentication settings for any WorkMail
%% organizations.
-spec delete_identity_center_application(aws_client:aws_client(), delete_identity_center_application_request()) ->
    {ok, delete_identity_center_application_response(), tuple()} |
    {error, any()} |
    {error, delete_identity_center_application_errors(), tuple()}.
delete_identity_center_application(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_identity_center_application(Client, Input, []).

-spec delete_identity_center_application(aws_client:aws_client(), delete_identity_center_application_request(), proplists:proplist()) ->
    {ok, delete_identity_center_application_response(), tuple()} |
    {error, any()} |
    {error, delete_identity_center_application_errors(), tuple()}.
delete_identity_center_application(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteIdentityCenterApplication">>, Input, Options).

%% @doc
%% Disables the integration between IdC and WorkMail.
%%
%% Authentication will continue with the directory as it was before the IdC
%% integration. You might have to reset your directory passwords and
%% reconfigure your desktop and mobile email clients.
-spec delete_identity_provider_configuration(aws_client:aws_client(), delete_identity_provider_configuration_request()) ->
    {ok, delete_identity_provider_configuration_response(), tuple()} |
    {error, any()} |
    {error, delete_identity_provider_configuration_errors(), tuple()}.
delete_identity_provider_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_identity_provider_configuration(Client, Input, []).

-spec delete_identity_provider_configuration(aws_client:aws_client(), delete_identity_provider_configuration_request(), proplists:proplist()) ->
    {ok, delete_identity_provider_configuration_response(), tuple()} |
    {error, any()} |
    {error, delete_identity_provider_configuration_errors(), tuple()}.
delete_identity_provider_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteIdentityProviderConfiguration">>, Input, Options).

%% @doc Deletes an impersonation role for the given WorkMail organization.
-spec delete_impersonation_role(aws_client:aws_client(), delete_impersonation_role_request()) ->
    {ok, delete_impersonation_role_response(), tuple()} |
    {error, any()} |
    {error, delete_impersonation_role_errors(), tuple()}.
delete_impersonation_role(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_impersonation_role(Client, Input, []).

-spec delete_impersonation_role(aws_client:aws_client(), delete_impersonation_role_request(), proplists:proplist()) ->
    {ok, delete_impersonation_role_response(), tuple()} |
    {error, any()} |
    {error, delete_impersonation_role_errors(), tuple()}.
delete_impersonation_role(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteImpersonationRole">>, Input, Options).

%% @doc Deletes permissions granted to a member (user or group).
-spec delete_mailbox_permissions(aws_client:aws_client(), delete_mailbox_permissions_request()) ->
    {ok, delete_mailbox_permissions_response(), tuple()} |
    {error, any()} |
    {error, delete_mailbox_permissions_errors(), tuple()}.
delete_mailbox_permissions(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_mailbox_permissions(Client, Input, []).

-spec delete_mailbox_permissions(aws_client:aws_client(), delete_mailbox_permissions_request(), proplists:proplist()) ->
    {ok, delete_mailbox_permissions_response(), tuple()} |
    {error, any()} |
    {error, delete_mailbox_permissions_errors(), tuple()}.
delete_mailbox_permissions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteMailboxPermissions">>, Input, Options).

%% @doc Deletes the mobile device access override for the given WorkMail
%% organization, user, and device.
%%
%% Deleting already deleted and non-existing overrides does not produce an
%% error. In those cases, the service sends back an HTTP 200 response with an
%% empty HTTP body.
-spec delete_mobile_device_access_override(aws_client:aws_client(), delete_mobile_device_access_override_request()) ->
    {ok, delete_mobile_device_access_override_response(), tuple()} |
    {error, any()} |
    {error, delete_mobile_device_access_override_errors(), tuple()}.
delete_mobile_device_access_override(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_mobile_device_access_override(Client, Input, []).

-spec delete_mobile_device_access_override(aws_client:aws_client(), delete_mobile_device_access_override_request(), proplists:proplist()) ->
    {ok, delete_mobile_device_access_override_response(), tuple()} |
    {error, any()} |
    {error, delete_mobile_device_access_override_errors(), tuple()}.
delete_mobile_device_access_override(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteMobileDeviceAccessOverride">>, Input, Options).

%% @doc Deletes a mobile device access rule for the specified WorkMail
%% organization.
%%
%% Deleting already deleted and non-existing rules does not produce an error.
%% In those cases, the service sends back an HTTP 200 response with an empty
%% HTTP body.
-spec delete_mobile_device_access_rule(aws_client:aws_client(), delete_mobile_device_access_rule_request()) ->
    {ok, delete_mobile_device_access_rule_response(), tuple()} |
    {error, any()} |
    {error, delete_mobile_device_access_rule_errors(), tuple()}.
delete_mobile_device_access_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_mobile_device_access_rule(Client, Input, []).

-spec delete_mobile_device_access_rule(aws_client:aws_client(), delete_mobile_device_access_rule_request(), proplists:proplist()) ->
    {ok, delete_mobile_device_access_rule_response(), tuple()} |
    {error, any()} |
    {error, delete_mobile_device_access_rule_errors(), tuple()}.
delete_mobile_device_access_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteMobileDeviceAccessRule">>, Input, Options).

%% @doc Deletes an WorkMail organization and all underlying AWS resources
%% managed by WorkMail as part of the organization.
%%
%% You can choose whether to delete the associated directory. For more
%% information, see Removing an organization:
%% https://docs.aws.amazon.com/workmail/latest/adminguide/remove_organization.html
%% in the WorkMail Administrator Guide.
-spec delete_organization(aws_client:aws_client(), delete_organization_request()) ->
    {ok, delete_organization_response(), tuple()} |
    {error, any()} |
    {error, delete_organization_errors(), tuple()}.
delete_organization(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_organization(Client, Input, []).

-spec delete_organization(aws_client:aws_client(), delete_organization_request(), proplists:proplist()) ->
    {ok, delete_organization_response(), tuple()} |
    {error, any()} |
    {error, delete_organization_errors(), tuple()}.
delete_organization(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteOrganization">>, Input, Options).

%% @doc
%% Deletes the Personal Access Token from the provided WorkMail Organization.
-spec delete_personal_access_token(aws_client:aws_client(), delete_personal_access_token_request()) ->
    {ok, delete_personal_access_token_response(), tuple()} |
    {error, any()} |
    {error, delete_personal_access_token_errors(), tuple()}.
delete_personal_access_token(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_personal_access_token(Client, Input, []).

-spec delete_personal_access_token(aws_client:aws_client(), delete_personal_access_token_request(), proplists:proplist()) ->
    {ok, delete_personal_access_token_response(), tuple()} |
    {error, any()} |
    {error, delete_personal_access_token_errors(), tuple()}.
delete_personal_access_token(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeletePersonalAccessToken">>, Input, Options).

%% @doc Deletes the specified resource.
-spec delete_resource(aws_client:aws_client(), delete_resource_request()) ->
    {ok, delete_resource_response(), tuple()} |
    {error, any()} |
    {error, delete_resource_errors(), tuple()}.
delete_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_resource(Client, Input, []).

-spec delete_resource(aws_client:aws_client(), delete_resource_request(), proplists:proplist()) ->
    {ok, delete_resource_response(), tuple()} |
    {error, any()} |
    {error, delete_resource_errors(), tuple()}.
delete_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteResource">>, Input, Options).

%% @doc Deletes the specified retention policy from the specified
%% organization.
-spec delete_retention_policy(aws_client:aws_client(), delete_retention_policy_request()) ->
    {ok, delete_retention_policy_response(), tuple()} |
    {error, any()} |
    {error, delete_retention_policy_errors(), tuple()}.
delete_retention_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_retention_policy(Client, Input, []).

-spec delete_retention_policy(aws_client:aws_client(), delete_retention_policy_request(), proplists:proplist()) ->
    {ok, delete_retention_policy_response(), tuple()} |
    {error, any()} |
    {error, delete_retention_policy_errors(), tuple()}.
delete_retention_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteRetentionPolicy">>, Input, Options).

%% @doc Deletes a user from WorkMail and all subsequent systems.
%%
%% Before you can delete a
%% user, the user state must be `DISABLED'. Use the `DescribeUser'
%% action to confirm the user state.
%%
%% Deleting a user is permanent and cannot be undone. WorkMail archives user
%% mailboxes for
%% 30 days before they are permanently removed.
-spec delete_user(aws_client:aws_client(), delete_user_request()) ->
    {ok, delete_user_response(), tuple()} |
    {error, any()} |
    {error, delete_user_errors(), tuple()}.
delete_user(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_user(Client, Input, []).

-spec delete_user(aws_client:aws_client(), delete_user_request(), proplists:proplist()) ->
    {ok, delete_user_response(), tuple()} |
    {error, any()} |
    {error, delete_user_errors(), tuple()}.
delete_user(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteUser">>, Input, Options).

%% @doc Mark a user, group, or resource as no longer used in WorkMail.
%%
%% This action
%% disassociates the mailbox and schedules it for clean-up. WorkMail keeps
%% mailboxes for 30 days
%% before they are permanently removed. The functionality in the console is
%% Disable.
-spec deregister_from_work_mail(aws_client:aws_client(), deregister_from_work_mail_request()) ->
    {ok, deregister_from_work_mail_response(), tuple()} |
    {error, any()} |
    {error, deregister_from_work_mail_errors(), tuple()}.
deregister_from_work_mail(Client, Input)
  when is_map(Client), is_map(Input) ->
    deregister_from_work_mail(Client, Input, []).

-spec deregister_from_work_mail(aws_client:aws_client(), deregister_from_work_mail_request(), proplists:proplist()) ->
    {ok, deregister_from_work_mail_response(), tuple()} |
    {error, any()} |
    {error, deregister_from_work_mail_errors(), tuple()}.
deregister_from_work_mail(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeregisterFromWorkMail">>, Input, Options).

%% @doc Removes a domain from WorkMail, stops email routing to WorkMail, and
%% removes the authorization allowing WorkMail use.
%%
%% SES keeps the domain because other applications may use it. You must first
%% remove any email address used by WorkMail entities before you remove the
%% domain.
-spec deregister_mail_domain(aws_client:aws_client(), deregister_mail_domain_request()) ->
    {ok, deregister_mail_domain_response(), tuple()} |
    {error, any()} |
    {error, deregister_mail_domain_errors(), tuple()}.
deregister_mail_domain(Client, Input)
  when is_map(Client), is_map(Input) ->
    deregister_mail_domain(Client, Input, []).

-spec deregister_mail_domain(aws_client:aws_client(), deregister_mail_domain_request(), proplists:proplist()) ->
    {ok, deregister_mail_domain_response(), tuple()} |
    {error, any()} |
    {error, deregister_mail_domain_errors(), tuple()}.
deregister_mail_domain(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeregisterMailDomain">>, Input, Options).

%% @doc Describes the current email monitoring configuration for a specified
%% organization.
-spec describe_email_monitoring_configuration(aws_client:aws_client(), describe_email_monitoring_configuration_request()) ->
    {ok, describe_email_monitoring_configuration_response(), tuple()} |
    {error, any()} |
    {error, describe_email_monitoring_configuration_errors(), tuple()}.
describe_email_monitoring_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_email_monitoring_configuration(Client, Input, []).

-spec describe_email_monitoring_configuration(aws_client:aws_client(), describe_email_monitoring_configuration_request(), proplists:proplist()) ->
    {ok, describe_email_monitoring_configuration_response(), tuple()} |
    {error, any()} |
    {error, describe_email_monitoring_configuration_errors(), tuple()}.
describe_email_monitoring_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEmailMonitoringConfiguration">>, Input, Options).

%% @doc Returns basic details about an entity in WorkMail.
-spec describe_entity(aws_client:aws_client(), describe_entity_request()) ->
    {ok, describe_entity_response(), tuple()} |
    {error, any()} |
    {error, describe_entity_errors(), tuple()}.
describe_entity(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_entity(Client, Input, []).

-spec describe_entity(aws_client:aws_client(), describe_entity_request(), proplists:proplist()) ->
    {ok, describe_entity_response(), tuple()} |
    {error, any()} |
    {error, describe_entity_errors(), tuple()}.
describe_entity(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEntity">>, Input, Options).

%% @doc Returns the data available for the group.
-spec describe_group(aws_client:aws_client(), describe_group_request()) ->
    {ok, describe_group_response(), tuple()} |
    {error, any()} |
    {error, describe_group_errors(), tuple()}.
describe_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_group(Client, Input, []).

-spec describe_group(aws_client:aws_client(), describe_group_request(), proplists:proplist()) ->
    {ok, describe_group_response(), tuple()} |
    {error, any()} |
    {error, describe_group_errors(), tuple()}.
describe_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeGroup">>, Input, Options).

%% @doc
%% Returns detailed information on the current IdC setup for the WorkMail
%% organization.
-spec describe_identity_provider_configuration(aws_client:aws_client(), describe_identity_provider_configuration_request()) ->
    {ok, describe_identity_provider_configuration_response(), tuple()} |
    {error, any()} |
    {error, describe_identity_provider_configuration_errors(), tuple()}.
describe_identity_provider_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_identity_provider_configuration(Client, Input, []).

-spec describe_identity_provider_configuration(aws_client:aws_client(), describe_identity_provider_configuration_request(), proplists:proplist()) ->
    {ok, describe_identity_provider_configuration_response(), tuple()} |
    {error, any()} |
    {error, describe_identity_provider_configuration_errors(), tuple()}.
describe_identity_provider_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeIdentityProviderConfiguration">>, Input, Options).

%% @doc Lists the settings in a DMARC policy for a specified organization.
-spec describe_inbound_dmarc_settings(aws_client:aws_client(), describe_inbound_dmarc_settings_request()) ->
    {ok, describe_inbound_dmarc_settings_response(), tuple()} |
    {error, any()} |
    {error, describe_inbound_dmarc_settings_errors(), tuple()}.
describe_inbound_dmarc_settings(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_inbound_dmarc_settings(Client, Input, []).

-spec describe_inbound_dmarc_settings(aws_client:aws_client(), describe_inbound_dmarc_settings_request(), proplists:proplist()) ->
    {ok, describe_inbound_dmarc_settings_response(), tuple()} |
    {error, any()} |
    {error, describe_inbound_dmarc_settings_errors(), tuple()}.
describe_inbound_dmarc_settings(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeInboundDmarcSettings">>, Input, Options).

%% @doc Describes the current status of a mailbox export job.
-spec describe_mailbox_export_job(aws_client:aws_client(), describe_mailbox_export_job_request()) ->
    {ok, describe_mailbox_export_job_response(), tuple()} |
    {error, any()} |
    {error, describe_mailbox_export_job_errors(), tuple()}.
describe_mailbox_export_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_mailbox_export_job(Client, Input, []).

-spec describe_mailbox_export_job(aws_client:aws_client(), describe_mailbox_export_job_request(), proplists:proplist()) ->
    {ok, describe_mailbox_export_job_response(), tuple()} |
    {error, any()} |
    {error, describe_mailbox_export_job_errors(), tuple()}.
describe_mailbox_export_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeMailboxExportJob">>, Input, Options).

%% @doc Provides more information regarding a given organization based on its
%% identifier.
-spec describe_organization(aws_client:aws_client(), describe_organization_request()) ->
    {ok, describe_organization_response(), tuple()} |
    {error, any()} |
    {error, describe_organization_errors(), tuple()}.
describe_organization(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_organization(Client, Input, []).

-spec describe_organization(aws_client:aws_client(), describe_organization_request(), proplists:proplist()) ->
    {ok, describe_organization_response(), tuple()} |
    {error, any()} |
    {error, describe_organization_errors(), tuple()}.
describe_organization(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeOrganization">>, Input, Options).

%% @doc Returns the data available for the resource.
-spec describe_resource(aws_client:aws_client(), describe_resource_request()) ->
    {ok, describe_resource_response(), tuple()} |
    {error, any()} |
    {error, describe_resource_errors(), tuple()}.
describe_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_resource(Client, Input, []).

-spec describe_resource(aws_client:aws_client(), describe_resource_request(), proplists:proplist()) ->
    {ok, describe_resource_response(), tuple()} |
    {error, any()} |
    {error, describe_resource_errors(), tuple()}.
describe_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeResource">>, Input, Options).

%% @doc Provides information regarding the user.
-spec describe_user(aws_client:aws_client(), describe_user_request()) ->
    {ok, describe_user_response(), tuple()} |
    {error, any()} |
    {error, describe_user_errors(), tuple()}.
describe_user(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_user(Client, Input, []).

-spec describe_user(aws_client:aws_client(), describe_user_request(), proplists:proplist()) ->
    {ok, describe_user_response(), tuple()} |
    {error, any()} |
    {error, describe_user_errors(), tuple()}.
describe_user(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeUser">>, Input, Options).

%% @doc Removes a member from the resource's set of delegates.
-spec disassociate_delegate_from_resource(aws_client:aws_client(), disassociate_delegate_from_resource_request()) ->
    {ok, disassociate_delegate_from_resource_response(), tuple()} |
    {error, any()} |
    {error, disassociate_delegate_from_resource_errors(), tuple()}.
disassociate_delegate_from_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_delegate_from_resource(Client, Input, []).

-spec disassociate_delegate_from_resource(aws_client:aws_client(), disassociate_delegate_from_resource_request(), proplists:proplist()) ->
    {ok, disassociate_delegate_from_resource_response(), tuple()} |
    {error, any()} |
    {error, disassociate_delegate_from_resource_errors(), tuple()}.
disassociate_delegate_from_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateDelegateFromResource">>, Input, Options).

%% @doc Removes a member from a group.
-spec disassociate_member_from_group(aws_client:aws_client(), disassociate_member_from_group_request()) ->
    {ok, disassociate_member_from_group_response(), tuple()} |
    {error, any()} |
    {error, disassociate_member_from_group_errors(), tuple()}.
disassociate_member_from_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_member_from_group(Client, Input, []).

-spec disassociate_member_from_group(aws_client:aws_client(), disassociate_member_from_group_request(), proplists:proplist()) ->
    {ok, disassociate_member_from_group_response(), tuple()} |
    {error, any()} |
    {error, disassociate_member_from_group_errors(), tuple()}.
disassociate_member_from_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateMemberFromGroup">>, Input, Options).

%% @doc Gets the effects of an organization's access control rules as
%% they apply to a
%% specified IPv4 address, access protocol action, and user ID or
%% impersonation role ID.
%%
%% You must provide either the user ID or impersonation role ID.
%% Impersonation role ID can only be used with Action EWS.
-spec get_access_control_effect(aws_client:aws_client(), get_access_control_effect_request()) ->
    {ok, get_access_control_effect_response(), tuple()} |
    {error, any()} |
    {error, get_access_control_effect_errors(), tuple()}.
get_access_control_effect(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_access_control_effect(Client, Input, []).

-spec get_access_control_effect(aws_client:aws_client(), get_access_control_effect_request(), proplists:proplist()) ->
    {ok, get_access_control_effect_response(), tuple()} |
    {error, any()} |
    {error, get_access_control_effect_errors(), tuple()}.
get_access_control_effect(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAccessControlEffect">>, Input, Options).

%% @doc Gets the default retention policy details for the specified
%% organization.
-spec get_default_retention_policy(aws_client:aws_client(), get_default_retention_policy_request()) ->
    {ok, get_default_retention_policy_response(), tuple()} |
    {error, any()} |
    {error, get_default_retention_policy_errors(), tuple()}.
get_default_retention_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_default_retention_policy(Client, Input, []).

-spec get_default_retention_policy(aws_client:aws_client(), get_default_retention_policy_request(), proplists:proplist()) ->
    {ok, get_default_retention_policy_response(), tuple()} |
    {error, any()} |
    {error, get_default_retention_policy_errors(), tuple()}.
get_default_retention_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDefaultRetentionPolicy">>, Input, Options).

%% @doc Gets the impersonation role details for the given WorkMail
%% organization.
-spec get_impersonation_role(aws_client:aws_client(), get_impersonation_role_request()) ->
    {ok, get_impersonation_role_response(), tuple()} |
    {error, any()} |
    {error, get_impersonation_role_errors(), tuple()}.
get_impersonation_role(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_impersonation_role(Client, Input, []).

-spec get_impersonation_role(aws_client:aws_client(), get_impersonation_role_request(), proplists:proplist()) ->
    {ok, get_impersonation_role_response(), tuple()} |
    {error, any()} |
    {error, get_impersonation_role_errors(), tuple()}.
get_impersonation_role(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetImpersonationRole">>, Input, Options).

%% @doc Tests whether the given impersonation role can impersonate a target
%% user.
-spec get_impersonation_role_effect(aws_client:aws_client(), get_impersonation_role_effect_request()) ->
    {ok, get_impersonation_role_effect_response(), tuple()} |
    {error, any()} |
    {error, get_impersonation_role_effect_errors(), tuple()}.
get_impersonation_role_effect(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_impersonation_role_effect(Client, Input, []).

-spec get_impersonation_role_effect(aws_client:aws_client(), get_impersonation_role_effect_request(), proplists:proplist()) ->
    {ok, get_impersonation_role_effect_response(), tuple()} |
    {error, any()} |
    {error, get_impersonation_role_effect_errors(), tuple()}.
get_impersonation_role_effect(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetImpersonationRoleEffect">>, Input, Options).

%% @doc Gets details for a mail domain, including domain records required to
%% configure your domain with recommended security.
-spec get_mail_domain(aws_client:aws_client(), get_mail_domain_request()) ->
    {ok, get_mail_domain_response(), tuple()} |
    {error, any()} |
    {error, get_mail_domain_errors(), tuple()}.
get_mail_domain(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_mail_domain(Client, Input, []).

-spec get_mail_domain(aws_client:aws_client(), get_mail_domain_request(), proplists:proplist()) ->
    {ok, get_mail_domain_response(), tuple()} |
    {error, any()} |
    {error, get_mail_domain_errors(), tuple()}.
get_mail_domain(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetMailDomain">>, Input, Options).

%% @doc Requests a user's mailbox details for a specified organization
%% and user.
-spec get_mailbox_details(aws_client:aws_client(), get_mailbox_details_request()) ->
    {ok, get_mailbox_details_response(), tuple()} |
    {error, any()} |
    {error, get_mailbox_details_errors(), tuple()}.
get_mailbox_details(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_mailbox_details(Client, Input, []).

-spec get_mailbox_details(aws_client:aws_client(), get_mailbox_details_request(), proplists:proplist()) ->
    {ok, get_mailbox_details_response(), tuple()} |
    {error, any()} |
    {error, get_mailbox_details_errors(), tuple()}.
get_mailbox_details(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetMailboxDetails">>, Input, Options).

%% @doc Simulates the effect of the mobile device access rules for the given
%% attributes of a sample access event.
%%
%% Use this method to test the effects of the current set of mobile device
%% access
%% rules for the WorkMail organization for a particular user's
%% attributes.
-spec get_mobile_device_access_effect(aws_client:aws_client(), get_mobile_device_access_effect_request()) ->
    {ok, get_mobile_device_access_effect_response(), tuple()} |
    {error, any()} |
    {error, get_mobile_device_access_effect_errors(), tuple()}.
get_mobile_device_access_effect(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_mobile_device_access_effect(Client, Input, []).

-spec get_mobile_device_access_effect(aws_client:aws_client(), get_mobile_device_access_effect_request(), proplists:proplist()) ->
    {ok, get_mobile_device_access_effect_response(), tuple()} |
    {error, any()} |
    {error, get_mobile_device_access_effect_errors(), tuple()}.
get_mobile_device_access_effect(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetMobileDeviceAccessEffect">>, Input, Options).

%% @doc Gets the mobile device access override for the given WorkMail
%% organization, user, and device.
-spec get_mobile_device_access_override(aws_client:aws_client(), get_mobile_device_access_override_request()) ->
    {ok, get_mobile_device_access_override_response(), tuple()} |
    {error, any()} |
    {error, get_mobile_device_access_override_errors(), tuple()}.
get_mobile_device_access_override(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_mobile_device_access_override(Client, Input, []).

-spec get_mobile_device_access_override(aws_client:aws_client(), get_mobile_device_access_override_request(), proplists:proplist()) ->
    {ok, get_mobile_device_access_override_response(), tuple()} |
    {error, any()} |
    {error, get_mobile_device_access_override_errors(), tuple()}.
get_mobile_device_access_override(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetMobileDeviceAccessOverride">>, Input, Options).

%% @doc
%% Requests details of a specific Personal Access Token within the WorkMail
%% organization.
-spec get_personal_access_token_metadata(aws_client:aws_client(), get_personal_access_token_metadata_request()) ->
    {ok, get_personal_access_token_metadata_response(), tuple()} |
    {error, any()} |
    {error, get_personal_access_token_metadata_errors(), tuple()}.
get_personal_access_token_metadata(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_personal_access_token_metadata(Client, Input, []).

-spec get_personal_access_token_metadata(aws_client:aws_client(), get_personal_access_token_metadata_request(), proplists:proplist()) ->
    {ok, get_personal_access_token_metadata_response(), tuple()} |
    {error, any()} |
    {error, get_personal_access_token_metadata_errors(), tuple()}.
get_personal_access_token_metadata(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetPersonalAccessTokenMetadata">>, Input, Options).

%% @doc Lists the access control rules for the specified organization.
-spec list_access_control_rules(aws_client:aws_client(), list_access_control_rules_request()) ->
    {ok, list_access_control_rules_response(), tuple()} |
    {error, any()} |
    {error, list_access_control_rules_errors(), tuple()}.
list_access_control_rules(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_access_control_rules(Client, Input, []).

-spec list_access_control_rules(aws_client:aws_client(), list_access_control_rules_request(), proplists:proplist()) ->
    {ok, list_access_control_rules_response(), tuple()} |
    {error, any()} |
    {error, list_access_control_rules_errors(), tuple()}.
list_access_control_rules(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAccessControlRules">>, Input, Options).

%% @doc Creates a paginated call to list the aliases associated with a given
%% entity.
-spec list_aliases(aws_client:aws_client(), list_aliases_request()) ->
    {ok, list_aliases_response(), tuple()} |
    {error, any()} |
    {error, list_aliases_errors(), tuple()}.
list_aliases(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_aliases(Client, Input, []).

-spec list_aliases(aws_client:aws_client(), list_aliases_request(), proplists:proplist()) ->
    {ok, list_aliases_response(), tuple()} |
    {error, any()} |
    {error, list_aliases_errors(), tuple()}.
list_aliases(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAliases">>, Input, Options).

%% @doc List all the `AvailabilityConfiguration''s for the given
%% WorkMail organization.
-spec list_availability_configurations(aws_client:aws_client(), list_availability_configurations_request()) ->
    {ok, list_availability_configurations_response(), tuple()} |
    {error, any()} |
    {error, list_availability_configurations_errors(), tuple()}.
list_availability_configurations(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_availability_configurations(Client, Input, []).

-spec list_availability_configurations(aws_client:aws_client(), list_availability_configurations_request(), proplists:proplist()) ->
    {ok, list_availability_configurations_response(), tuple()} |
    {error, any()} |
    {error, list_availability_configurations_errors(), tuple()}.
list_availability_configurations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAvailabilityConfigurations">>, Input, Options).

%% @doc Returns an overview of the members of a group.
%%
%% Users and groups can be members of a
%% group.
-spec list_group_members(aws_client:aws_client(), list_group_members_request()) ->
    {ok, list_group_members_response(), tuple()} |
    {error, any()} |
    {error, list_group_members_errors(), tuple()}.
list_group_members(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_group_members(Client, Input, []).

-spec list_group_members(aws_client:aws_client(), list_group_members_request(), proplists:proplist()) ->
    {ok, list_group_members_response(), tuple()} |
    {error, any()} |
    {error, list_group_members_errors(), tuple()}.
list_group_members(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListGroupMembers">>, Input, Options).

%% @doc Returns summaries of the organization's groups.
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

%% @doc Returns all the groups to which an entity belongs.
-spec list_groups_for_entity(aws_client:aws_client(), list_groups_for_entity_request()) ->
    {ok, list_groups_for_entity_response(), tuple()} |
    {error, any()} |
    {error, list_groups_for_entity_errors(), tuple()}.
list_groups_for_entity(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_groups_for_entity(Client, Input, []).

-spec list_groups_for_entity(aws_client:aws_client(), list_groups_for_entity_request(), proplists:proplist()) ->
    {ok, list_groups_for_entity_response(), tuple()} |
    {error, any()} |
    {error, list_groups_for_entity_errors(), tuple()}.
list_groups_for_entity(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListGroupsForEntity">>, Input, Options).

%% @doc Lists all the impersonation roles for the given WorkMail
%% organization.
-spec list_impersonation_roles(aws_client:aws_client(), list_impersonation_roles_request()) ->
    {ok, list_impersonation_roles_response(), tuple()} |
    {error, any()} |
    {error, list_impersonation_roles_errors(), tuple()}.
list_impersonation_roles(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_impersonation_roles(Client, Input, []).

-spec list_impersonation_roles(aws_client:aws_client(), list_impersonation_roles_request(), proplists:proplist()) ->
    {ok, list_impersonation_roles_response(), tuple()} |
    {error, any()} |
    {error, list_impersonation_roles_errors(), tuple()}.
list_impersonation_roles(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListImpersonationRoles">>, Input, Options).

%% @doc Lists the mail domains in a given WorkMail organization.
-spec list_mail_domains(aws_client:aws_client(), list_mail_domains_request()) ->
    {ok, list_mail_domains_response(), tuple()} |
    {error, any()} |
    {error, list_mail_domains_errors(), tuple()}.
list_mail_domains(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_mail_domains(Client, Input, []).

-spec list_mail_domains(aws_client:aws_client(), list_mail_domains_request(), proplists:proplist()) ->
    {ok, list_mail_domains_response(), tuple()} |
    {error, any()} |
    {error, list_mail_domains_errors(), tuple()}.
list_mail_domains(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListMailDomains">>, Input, Options).

%% @doc Lists the mailbox export jobs started for the specified organization
%% within the last
%% seven days.
-spec list_mailbox_export_jobs(aws_client:aws_client(), list_mailbox_export_jobs_request()) ->
    {ok, list_mailbox_export_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_mailbox_export_jobs_errors(), tuple()}.
list_mailbox_export_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_mailbox_export_jobs(Client, Input, []).

-spec list_mailbox_export_jobs(aws_client:aws_client(), list_mailbox_export_jobs_request(), proplists:proplist()) ->
    {ok, list_mailbox_export_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_mailbox_export_jobs_errors(), tuple()}.
list_mailbox_export_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListMailboxExportJobs">>, Input, Options).

%% @doc Lists the mailbox permissions associated with a user, group, or
%% resource
%% mailbox.
-spec list_mailbox_permissions(aws_client:aws_client(), list_mailbox_permissions_request()) ->
    {ok, list_mailbox_permissions_response(), tuple()} |
    {error, any()} |
    {error, list_mailbox_permissions_errors(), tuple()}.
list_mailbox_permissions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_mailbox_permissions(Client, Input, []).

-spec list_mailbox_permissions(aws_client:aws_client(), list_mailbox_permissions_request(), proplists:proplist()) ->
    {ok, list_mailbox_permissions_response(), tuple()} |
    {error, any()} |
    {error, list_mailbox_permissions_errors(), tuple()}.
list_mailbox_permissions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListMailboxPermissions">>, Input, Options).

%% @doc Lists all the mobile device access overrides for any given
%% combination of WorkMail organization, user, or device.
-spec list_mobile_device_access_overrides(aws_client:aws_client(), list_mobile_device_access_overrides_request()) ->
    {ok, list_mobile_device_access_overrides_response(), tuple()} |
    {error, any()} |
    {error, list_mobile_device_access_overrides_errors(), tuple()}.
list_mobile_device_access_overrides(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_mobile_device_access_overrides(Client, Input, []).

-spec list_mobile_device_access_overrides(aws_client:aws_client(), list_mobile_device_access_overrides_request(), proplists:proplist()) ->
    {ok, list_mobile_device_access_overrides_response(), tuple()} |
    {error, any()} |
    {error, list_mobile_device_access_overrides_errors(), tuple()}.
list_mobile_device_access_overrides(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListMobileDeviceAccessOverrides">>, Input, Options).

%% @doc Lists the mobile device access rules for the specified WorkMail
%% organization.
-spec list_mobile_device_access_rules(aws_client:aws_client(), list_mobile_device_access_rules_request()) ->
    {ok, list_mobile_device_access_rules_response(), tuple()} |
    {error, any()} |
    {error, list_mobile_device_access_rules_errors(), tuple()}.
list_mobile_device_access_rules(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_mobile_device_access_rules(Client, Input, []).

-spec list_mobile_device_access_rules(aws_client:aws_client(), list_mobile_device_access_rules_request(), proplists:proplist()) ->
    {ok, list_mobile_device_access_rules_response(), tuple()} |
    {error, any()} |
    {error, list_mobile_device_access_rules_errors(), tuple()}.
list_mobile_device_access_rules(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListMobileDeviceAccessRules">>, Input, Options).

%% @doc Returns summaries of the customer's organizations.
-spec list_organizations(aws_client:aws_client(), list_organizations_request()) ->
    {ok, list_organizations_response(), tuple()} |
    {error, any()} |
    {error, list_organizations_errors(), tuple()}.
list_organizations(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_organizations(Client, Input, []).

-spec list_organizations(aws_client:aws_client(), list_organizations_request(), proplists:proplist()) ->
    {ok, list_organizations_response(), tuple()} |
    {error, any()} |
    {error, list_organizations_errors(), tuple()}.
list_organizations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListOrganizations">>, Input, Options).

%% @doc
%% Returns a summary of your Personal Access Tokens.
-spec list_personal_access_tokens(aws_client:aws_client(), list_personal_access_tokens_request()) ->
    {ok, list_personal_access_tokens_response(), tuple()} |
    {error, any()} |
    {error, list_personal_access_tokens_errors(), tuple()}.
list_personal_access_tokens(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_personal_access_tokens(Client, Input, []).

-spec list_personal_access_tokens(aws_client:aws_client(), list_personal_access_tokens_request(), proplists:proplist()) ->
    {ok, list_personal_access_tokens_response(), tuple()} |
    {error, any()} |
    {error, list_personal_access_tokens_errors(), tuple()}.
list_personal_access_tokens(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPersonalAccessTokens">>, Input, Options).

%% @doc Lists the delegates associated with a resource.
%%
%% Users and groups can be resource
%% delegates and answer requests on behalf of the resource.
-spec list_resource_delegates(aws_client:aws_client(), list_resource_delegates_request()) ->
    {ok, list_resource_delegates_response(), tuple()} |
    {error, any()} |
    {error, list_resource_delegates_errors(), tuple()}.
list_resource_delegates(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_resource_delegates(Client, Input, []).

-spec list_resource_delegates(aws_client:aws_client(), list_resource_delegates_request(), proplists:proplist()) ->
    {ok, list_resource_delegates_response(), tuple()} |
    {error, any()} |
    {error, list_resource_delegates_errors(), tuple()}.
list_resource_delegates(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListResourceDelegates">>, Input, Options).

%% @doc Returns summaries of the organization's resources.
-spec list_resources(aws_client:aws_client(), list_resources_request()) ->
    {ok, list_resources_response(), tuple()} |
    {error, any()} |
    {error, list_resources_errors(), tuple()}.
list_resources(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_resources(Client, Input, []).

-spec list_resources(aws_client:aws_client(), list_resources_request(), proplists:proplist()) ->
    {ok, list_resources_response(), tuple()} |
    {error, any()} |
    {error, list_resources_errors(), tuple()}.
list_resources(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListResources">>, Input, Options).

%% @doc Lists the tags applied to an WorkMail organization resource.
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

%% @doc Returns summaries of the organization's users.
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

%% @doc Adds a new access control rule for the specified organization.
%%
%% The rule allows or
%% denies access to the organization for the specified IPv4 addresses, access
%% protocol
%% actions, user IDs and impersonation IDs. Adding a new rule with the same
%% name as an existing rule replaces
%% the older rule.
-spec put_access_control_rule(aws_client:aws_client(), put_access_control_rule_request()) ->
    {ok, put_access_control_rule_response(), tuple()} |
    {error, any()} |
    {error, put_access_control_rule_errors(), tuple()}.
put_access_control_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_access_control_rule(Client, Input, []).

-spec put_access_control_rule(aws_client:aws_client(), put_access_control_rule_request(), proplists:proplist()) ->
    {ok, put_access_control_rule_response(), tuple()} |
    {error, any()} |
    {error, put_access_control_rule_errors(), tuple()}.
put_access_control_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutAccessControlRule">>, Input, Options).

%% @doc Creates or updates the email monitoring configuration for a specified
%% organization.
-spec put_email_monitoring_configuration(aws_client:aws_client(), put_email_monitoring_configuration_request()) ->
    {ok, put_email_monitoring_configuration_response(), tuple()} |
    {error, any()} |
    {error, put_email_monitoring_configuration_errors(), tuple()}.
put_email_monitoring_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_email_monitoring_configuration(Client, Input, []).

-spec put_email_monitoring_configuration(aws_client:aws_client(), put_email_monitoring_configuration_request(), proplists:proplist()) ->
    {ok, put_email_monitoring_configuration_response(), tuple()} |
    {error, any()} |
    {error, put_email_monitoring_configuration_errors(), tuple()}.
put_email_monitoring_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutEmailMonitoringConfiguration">>, Input, Options).

%% @doc
%% Enables integration between IAM Identity Center (IdC) and WorkMail to
%% proxy authentication requests for mailbox users.
%%
%% You can connect your IdC directory or your external directory to WorkMail
%% through
%% IdC and manage access to WorkMail mailboxes in a single place. For
%% enhanced protection, you could enable Multifactor Authentication (MFA) and
%% Personal Access Tokens.
-spec put_identity_provider_configuration(aws_client:aws_client(), put_identity_provider_configuration_request()) ->
    {ok, put_identity_provider_configuration_response(), tuple()} |
    {error, any()} |
    {error, put_identity_provider_configuration_errors(), tuple()}.
put_identity_provider_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_identity_provider_configuration(Client, Input, []).

-spec put_identity_provider_configuration(aws_client:aws_client(), put_identity_provider_configuration_request(), proplists:proplist()) ->
    {ok, put_identity_provider_configuration_response(), tuple()} |
    {error, any()} |
    {error, put_identity_provider_configuration_errors(), tuple()}.
put_identity_provider_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutIdentityProviderConfiguration">>, Input, Options).

%% @doc Enables or disables a DMARC policy for a given organization.
-spec put_inbound_dmarc_settings(aws_client:aws_client(), put_inbound_dmarc_settings_request()) ->
    {ok, put_inbound_dmarc_settings_response(), tuple()} |
    {error, any()} |
    {error, put_inbound_dmarc_settings_errors(), tuple()}.
put_inbound_dmarc_settings(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_inbound_dmarc_settings(Client, Input, []).

-spec put_inbound_dmarc_settings(aws_client:aws_client(), put_inbound_dmarc_settings_request(), proplists:proplist()) ->
    {ok, put_inbound_dmarc_settings_response(), tuple()} |
    {error, any()} |
    {error, put_inbound_dmarc_settings_errors(), tuple()}.
put_inbound_dmarc_settings(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutInboundDmarcSettings">>, Input, Options).

%% @doc Sets permissions for a user, group, or resource.
%%
%% This replaces any pre-existing
%% permissions.
-spec put_mailbox_permissions(aws_client:aws_client(), put_mailbox_permissions_request()) ->
    {ok, put_mailbox_permissions_response(), tuple()} |
    {error, any()} |
    {error, put_mailbox_permissions_errors(), tuple()}.
put_mailbox_permissions(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_mailbox_permissions(Client, Input, []).

-spec put_mailbox_permissions(aws_client:aws_client(), put_mailbox_permissions_request(), proplists:proplist()) ->
    {ok, put_mailbox_permissions_response(), tuple()} |
    {error, any()} |
    {error, put_mailbox_permissions_errors(), tuple()}.
put_mailbox_permissions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutMailboxPermissions">>, Input, Options).

%% @doc Creates or updates a mobile device access override for the given
%% WorkMail organization, user, and device.
-spec put_mobile_device_access_override(aws_client:aws_client(), put_mobile_device_access_override_request()) ->
    {ok, put_mobile_device_access_override_response(), tuple()} |
    {error, any()} |
    {error, put_mobile_device_access_override_errors(), tuple()}.
put_mobile_device_access_override(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_mobile_device_access_override(Client, Input, []).

-spec put_mobile_device_access_override(aws_client:aws_client(), put_mobile_device_access_override_request(), proplists:proplist()) ->
    {ok, put_mobile_device_access_override_response(), tuple()} |
    {error, any()} |
    {error, put_mobile_device_access_override_errors(), tuple()}.
put_mobile_device_access_override(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutMobileDeviceAccessOverride">>, Input, Options).

%% @doc Puts a retention policy to the specified organization.
-spec put_retention_policy(aws_client:aws_client(), put_retention_policy_request()) ->
    {ok, put_retention_policy_response(), tuple()} |
    {error, any()} |
    {error, put_retention_policy_errors(), tuple()}.
put_retention_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_retention_policy(Client, Input, []).

-spec put_retention_policy(aws_client:aws_client(), put_retention_policy_request(), proplists:proplist()) ->
    {ok, put_retention_policy_response(), tuple()} |
    {error, any()} |
    {error, put_retention_policy_errors(), tuple()}.
put_retention_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutRetentionPolicy">>, Input, Options).

%% @doc Registers a new domain in WorkMail and SES, and configures it for use
%% by WorkMail.
%%
%% Emails received by SES for this domain are routed to the specified
%% WorkMail organization, and WorkMail has
%% permanent permission to use the specified domain for sending your
%% users' emails.
-spec register_mail_domain(aws_client:aws_client(), register_mail_domain_request()) ->
    {ok, register_mail_domain_response(), tuple()} |
    {error, any()} |
    {error, register_mail_domain_errors(), tuple()}.
register_mail_domain(Client, Input)
  when is_map(Client), is_map(Input) ->
    register_mail_domain(Client, Input, []).

-spec register_mail_domain(aws_client:aws_client(), register_mail_domain_request(), proplists:proplist()) ->
    {ok, register_mail_domain_response(), tuple()} |
    {error, any()} |
    {error, register_mail_domain_errors(), tuple()}.
register_mail_domain(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RegisterMailDomain">>, Input, Options).

%% @doc Registers an existing and disabled user, group, or resource for
%% WorkMail use by
%% associating a mailbox and calendaring capabilities.
%%
%% It performs no change if the user,
%% group, or resource is enabled and fails if the user, group, or resource is
%% deleted. This
%% operation results in the accumulation of costs. For more information, see
%% Pricing: https://aws.amazon.com/workmail/pricing. The equivalent console
%% functionality for this operation is Enable.
%%
%% Users can either be created by calling the `CreateUser' API operation
%% or they can be synchronized from your directory. For more information, see
%% `DeregisterFromWorkMail'.
-spec register_to_work_mail(aws_client:aws_client(), register_to_work_mail_request()) ->
    {ok, register_to_work_mail_response(), tuple()} |
    {error, any()} |
    {error, register_to_work_mail_errors(), tuple()}.
register_to_work_mail(Client, Input)
  when is_map(Client), is_map(Input) ->
    register_to_work_mail(Client, Input, []).

-spec register_to_work_mail(aws_client:aws_client(), register_to_work_mail_request(), proplists:proplist()) ->
    {ok, register_to_work_mail_response(), tuple()} |
    {error, any()} |
    {error, register_to_work_mail_errors(), tuple()}.
register_to_work_mail(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RegisterToWorkMail">>, Input, Options).

%% @doc Allows the administrator to reset the password for a user.
-spec reset_password(aws_client:aws_client(), reset_password_request()) ->
    {ok, reset_password_response(), tuple()} |
    {error, any()} |
    {error, reset_password_errors(), tuple()}.
reset_password(Client, Input)
  when is_map(Client), is_map(Input) ->
    reset_password(Client, Input, []).

-spec reset_password(aws_client:aws_client(), reset_password_request(), proplists:proplist()) ->
    {ok, reset_password_response(), tuple()} |
    {error, any()} |
    {error, reset_password_errors(), tuple()}.
reset_password(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ResetPassword">>, Input, Options).

%% @doc Starts a mailbox export job to export MIME-format email messages and
%% calendar items
%% from the specified mailbox to the specified Amazon Simple Storage Service
%% (Amazon S3)
%% bucket.
%%
%% For more information, see Exporting mailbox content:
%% https://docs.aws.amazon.com/workmail/latest/adminguide/mail-export.html in
%% the WorkMail Administrator Guide.
-spec start_mailbox_export_job(aws_client:aws_client(), start_mailbox_export_job_request()) ->
    {ok, start_mailbox_export_job_response(), tuple()} |
    {error, any()} |
    {error, start_mailbox_export_job_errors(), tuple()}.
start_mailbox_export_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_mailbox_export_job(Client, Input, []).

-spec start_mailbox_export_job(aws_client:aws_client(), start_mailbox_export_job_request(), proplists:proplist()) ->
    {ok, start_mailbox_export_job_response(), tuple()} |
    {error, any()} |
    {error, start_mailbox_export_job_errors(), tuple()}.
start_mailbox_export_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartMailboxExportJob">>, Input, Options).

%% @doc Applies the specified tags to the specified WorkMailorganization
%% resource.
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

%% @doc Performs a test on an availability provider to ensure that access is
%% allowed.
%%
%% For EWS, it verifies the provided credentials can be used to successfully
%% log in. For Lambda, it verifies that the Lambda function can be invoked
%% and that the resource access
%% policy was configured to deny anonymous access. An anonymous invocation is
%% one done without providing either a `SourceArn' or `SourceAccount'
%% header.
%%
%% The request must contain either one provider definition (`EwsProvider'
%% or
%% `LambdaProvider') or the `DomainName' parameter. If the
%% `DomainName' parameter is provided, the configuration stored under the
%% `DomainName' will be tested.
-spec test_availability_configuration(aws_client:aws_client(), test_availability_configuration_request()) ->
    {ok, test_availability_configuration_response(), tuple()} |
    {error, any()} |
    {error, test_availability_configuration_errors(), tuple()}.
test_availability_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    test_availability_configuration(Client, Input, []).

-spec test_availability_configuration(aws_client:aws_client(), test_availability_configuration_request(), proplists:proplist()) ->
    {ok, test_availability_configuration_response(), tuple()} |
    {error, any()} |
    {error, test_availability_configuration_errors(), tuple()}.
test_availability_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TestAvailabilityConfiguration">>, Input, Options).

%% @doc Untags the specified tags from the specified WorkMail organization
%% resource.
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

%% @doc Updates an existing `AvailabilityConfiguration' for the given
%% WorkMail
%% organization and domain.
-spec update_availability_configuration(aws_client:aws_client(), update_availability_configuration_request()) ->
    {ok, update_availability_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_availability_configuration_errors(), tuple()}.
update_availability_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_availability_configuration(Client, Input, []).

-spec update_availability_configuration(aws_client:aws_client(), update_availability_configuration_request(), proplists:proplist()) ->
    {ok, update_availability_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_availability_configuration_errors(), tuple()}.
update_availability_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateAvailabilityConfiguration">>, Input, Options).

%% @doc Updates the default mail domain for an organization.
%%
%% The default mail domain is used by the WorkMail AWS Console to suggest an
%% email address when enabling a mail user. You can only have one default
%% domain.
-spec update_default_mail_domain(aws_client:aws_client(), update_default_mail_domain_request()) ->
    {ok, update_default_mail_domain_response(), tuple()} |
    {error, any()} |
    {error, update_default_mail_domain_errors(), tuple()}.
update_default_mail_domain(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_default_mail_domain(Client, Input, []).

-spec update_default_mail_domain(aws_client:aws_client(), update_default_mail_domain_request(), proplists:proplist()) ->
    {ok, update_default_mail_domain_response(), tuple()} |
    {error, any()} |
    {error, update_default_mail_domain_errors(), tuple()}.
update_default_mail_domain(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateDefaultMailDomain">>, Input, Options).

%% @doc Updates attributes in a group.
-spec update_group(aws_client:aws_client(), update_group_request()) ->
    {ok, update_group_response(), tuple()} |
    {error, any()} |
    {error, update_group_errors(), tuple()}.
update_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_group(Client, Input, []).

-spec update_group(aws_client:aws_client(), update_group_request(), proplists:proplist()) ->
    {ok, update_group_response(), tuple()} |
    {error, any()} |
    {error, update_group_errors(), tuple()}.
update_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateGroup">>, Input, Options).

%% @doc Updates an impersonation role for the given WorkMail organization.
-spec update_impersonation_role(aws_client:aws_client(), update_impersonation_role_request()) ->
    {ok, update_impersonation_role_response(), tuple()} |
    {error, any()} |
    {error, update_impersonation_role_errors(), tuple()}.
update_impersonation_role(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_impersonation_role(Client, Input, []).

-spec update_impersonation_role(aws_client:aws_client(), update_impersonation_role_request(), proplists:proplist()) ->
    {ok, update_impersonation_role_response(), tuple()} |
    {error, any()} |
    {error, update_impersonation_role_errors(), tuple()}.
update_impersonation_role(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateImpersonationRole">>, Input, Options).

%% @doc Updates a user's current mailbox quota for a specified
%% organization and
%% user.
-spec update_mailbox_quota(aws_client:aws_client(), update_mailbox_quota_request()) ->
    {ok, update_mailbox_quota_response(), tuple()} |
    {error, any()} |
    {error, update_mailbox_quota_errors(), tuple()}.
update_mailbox_quota(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_mailbox_quota(Client, Input, []).

-spec update_mailbox_quota(aws_client:aws_client(), update_mailbox_quota_request(), proplists:proplist()) ->
    {ok, update_mailbox_quota_response(), tuple()} |
    {error, any()} |
    {error, update_mailbox_quota_errors(), tuple()}.
update_mailbox_quota(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateMailboxQuota">>, Input, Options).

%% @doc Updates a mobile device access rule for the specified WorkMail
%% organization.
-spec update_mobile_device_access_rule(aws_client:aws_client(), update_mobile_device_access_rule_request()) ->
    {ok, update_mobile_device_access_rule_response(), tuple()} |
    {error, any()} |
    {error, update_mobile_device_access_rule_errors(), tuple()}.
update_mobile_device_access_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_mobile_device_access_rule(Client, Input, []).

-spec update_mobile_device_access_rule(aws_client:aws_client(), update_mobile_device_access_rule_request(), proplists:proplist()) ->
    {ok, update_mobile_device_access_rule_response(), tuple()} |
    {error, any()} |
    {error, update_mobile_device_access_rule_errors(), tuple()}.
update_mobile_device_access_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateMobileDeviceAccessRule">>, Input, Options).

%% @doc Updates the primary email for a user, group, or resource.
%%
%% The current email is moved
%% into the list of aliases (or swapped between an existing alias and the
%% current primary
%% email), and the email provided in the input is promoted as the primary.
-spec update_primary_email_address(aws_client:aws_client(), update_primary_email_address_request()) ->
    {ok, update_primary_email_address_response(), tuple()} |
    {error, any()} |
    {error, update_primary_email_address_errors(), tuple()}.
update_primary_email_address(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_primary_email_address(Client, Input, []).

-spec update_primary_email_address(aws_client:aws_client(), update_primary_email_address_request(), proplists:proplist()) ->
    {ok, update_primary_email_address_response(), tuple()} |
    {error, any()} |
    {error, update_primary_email_address_errors(), tuple()}.
update_primary_email_address(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdatePrimaryEmailAddress">>, Input, Options).

%% @doc Updates data for the resource.
%%
%% To have the latest information, it must be preceded by
%% a `DescribeResource' call. The dataset in the request should be the
%% one
%% expected when performing another `DescribeResource' call.
-spec update_resource(aws_client:aws_client(), update_resource_request()) ->
    {ok, update_resource_response(), tuple()} |
    {error, any()} |
    {error, update_resource_errors(), tuple()}.
update_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_resource(Client, Input, []).

-spec update_resource(aws_client:aws_client(), update_resource_request(), proplists:proplist()) ->
    {ok, update_resource_response(), tuple()} |
    {error, any()} |
    {error, update_resource_errors(), tuple()}.
update_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateResource">>, Input, Options).

%% @doc Updates data for the user.
%%
%% To have the latest information, it must be preceded by a
%% `DescribeUser' call. The dataset in the request should be the one
%% expected when performing another `DescribeUser' call.
-spec update_user(aws_client:aws_client(), update_user_request()) ->
    {ok, update_user_response(), tuple()} |
    {error, any()} |
    {error, update_user_errors(), tuple()}.
update_user(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_user(Client, Input, []).

-spec update_user(aws_client:aws_client(), update_user_request(), proplists:proplist()) ->
    {ok, update_user_response(), tuple()} |
    {error, any()} |
    {error, update_user_errors(), tuple()}.
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
