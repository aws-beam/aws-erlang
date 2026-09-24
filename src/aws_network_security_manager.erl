%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc AWS Network Security Manager helps you centrally configure and deploy
%% network security protections across your organization.
%%
%% Supported protections include AWS WAF and AWS Shield Advanced. This
%% centralized approach reduces the overhead of managing protections
%% individually across accounts and ensures consistent security at scale.
%%
%% You define reusable rules and templates, then combine them into policies.
%% Next, you select the accounts and resources to protect with scopes and
%% roll the protections out with deployments. For example, you can define a
%% set of AWS WAF rules and group them into a policy. Then deploy that policy
%% across all accounts in your organization with a single deployment.
%%
%% This API reference describes the operations and data types for AWS Network
%% Security Manager.
%%
%% For conceptual information, tutorials, and guidance on writing rule
%% configurations, see the AWS Network Security Manager Developer Guide:
%% https://docs.aws.amazon.com/network-security-manager/latest/devguide/what-is.html.
%% For the default quotas that apply to your account, see Quotas:
%% https://docs.aws.amazon.com/network-security-manager/latest/devguide/quotas.html.
%% For the service endpoints available in each Region, see AWS Network
%% Security Manager endpoints and quotas:
%% https://docs.aws.amazon.com/general/latest/gr/network-security-manager.html
%% in the AWS General Reference.
-module(aws_network_security_manager).

-export([create_deployment/2,
         create_deployment/3,
         create_deployment_snapshot/3,
         create_deployment_snapshot/4,
         create_policy/2,
         create_policy/3,
         create_policy_snapshot/3,
         create_policy_snapshot/4,
         create_rule/2,
         create_rule/3,
         create_rule_snapshot/3,
         create_rule_snapshot/4,
         create_scope/2,
         create_scope/3,
         create_scope_snapshot/3,
         create_scope_snapshot/4,
         create_template/2,
         create_template/3,
         create_template_snapshot/3,
         create_template_snapshot/4,
         delete_admin_account/3,
         delete_admin_account/4,
         delete_deployment/3,
         delete_deployment/4,
         delete_policy/3,
         delete_policy/4,
         delete_rule/3,
         delete_rule/4,
         delete_scope/3,
         delete_scope/4,
         delete_template/3,
         delete_template/4,
         generate_rule_configuration/2,
         generate_rule_configuration/3,
         get_admin_account/2,
         get_admin_account/4,
         get_admin_account/5,
         get_deployment/2,
         get_deployment/4,
         get_deployment/5,
         get_policy/2,
         get_policy/4,
         get_policy/5,
         get_rule/2,
         get_rule/4,
         get_rule/5,
         get_scope/2,
         get_scope/4,
         get_scope/5,
         get_template/2,
         get_template/4,
         get_template/5,
         list_admin_accounts/1,
         list_admin_accounts/3,
         list_admin_accounts/4,
         list_aggregate_resource_synchronization_statuses/1,
         list_aggregate_resource_synchronization_statuses/3,
         list_aggregate_resource_synchronization_statuses/4,
         list_deployment_snapshots/2,
         list_deployment_snapshots/4,
         list_deployment_snapshots/5,
         list_deployments/1,
         list_deployments/3,
         list_deployments/4,
         list_policies/1,
         list_policies/3,
         list_policies/4,
         list_policy_snapshots/2,
         list_policy_snapshots/4,
         list_policy_snapshots/5,
         list_resource_associations/2,
         list_resource_associations/4,
         list_resource_associations/5,
         list_resource_synchronization_statuses/2,
         list_resource_synchronization_statuses/4,
         list_resource_synchronization_statuses/5,
         list_rule_snapshots/2,
         list_rule_snapshots/4,
         list_rule_snapshots/5,
         list_rules/1,
         list_rules/3,
         list_rules/4,
         list_scope_snapshots/2,
         list_scope_snapshots/4,
         list_scope_snapshots/5,
         list_scopes/1,
         list_scopes/3,
         list_scopes/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         list_template_snapshots/2,
         list_template_snapshots/4,
         list_template_snapshots/5,
         list_templates/1,
         list_templates/3,
         list_templates/4,
         put_admin_account/2,
         put_admin_account/3,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_deployment/3,
         update_deployment/4,
         update_policy/3,
         update_policy/4,
         update_rule/3,
         update_rule/4,
         update_scope/3,
         update_scope/4,
         update_template/3,
         update_template/4]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% account_reference() :: #{
%%   <<"accountId">> => string(),
%%   <<"email">> => string(),
%%   <<"name">> => string()
%% }
-type account_reference() :: #{binary() => any()}.


%% Example:
%% account_set() :: #{
%%   <<"accountIds">> => list(string()),
%%   <<"organizationalUnits">> => list(string())
%% }
-type account_set() :: #{binary() => any()}.


%% Example:
%% admin_account_details() :: #{
%%   <<"adminAccount">> => string(),
%%   <<"adminScope">> => admin_scope(),
%%   <<"priority">> => integer(),
%%   <<"status">> => list(any())
%% }
-type admin_account_details() :: #{binary() => any()}.


%% Example:
%% admin_account_summary() :: #{
%%   <<"accountId">> => string(),
%%   <<"email">> => string(),
%%   <<"name">> => string(),
%%   <<"priority">> => integer()
%% }
-type admin_account_summary() :: #{binary() => any()}.


%% Example:
%% admin_firewall_type_scope() :: #{
%%   <<"allFirewallTypesEnabled">> => [boolean()],
%%   <<"firewallTypes">> => list(list(any())())
%% }
-type admin_firewall_type_scope() :: #{binary() => any()}.


%% Example:
%% admin_scope() :: #{
%%   <<"firewallTypeScope">> => admin_firewall_type_scope(),
%%   <<"scopeFilter">> => list()
%% }
-type admin_scope() :: #{binary() => any()}.


%% Example:
%% admin_scope_input() :: #{
%%   <<"firewallTypeScope">> => admin_firewall_type_scope(),
%%   <<"scopeFilter">> => list()
%% }
-type admin_scope_input() :: #{binary() => any()}.


%% Example:
%% admin_scope_selection() :: #{
%%   <<"accounts">> => list(account_reference()),
%%   <<"organizationalUnits">> => list(organizational_unit_reference())
%% }
-type admin_scope_selection() :: #{binary() => any()}.


%% Example:
%% admin_scope_selection_input() :: #{
%%   <<"accounts">> => list(string()),
%%   <<"organizationalUnits">> => list(string())
%% }
-type admin_scope_selection_input() :: #{binary() => any()}.


%% Example:
%% alb_configuration() :: #{
%%   <<"ipAddressType">> => list(any()),
%%   <<"scheme">> => list(any())
%% }
-type alb_configuration() :: #{binary() => any()}.


%% Example:
%% associated_policy() :: #{
%%   <<"policyArn">> => string()
%% }
-type associated_policy() :: #{binary() => any()}.


%% Example:
%% associated_rule() :: #{
%%   <<"ruleArn">> => string()
%% }
-type associated_rule() :: #{binary() => any()}.


%% Example:
%% associated_scope() :: #{
%%   <<"scopeArn">> => string()
%% }
-type associated_scope() :: #{binary() => any()}.


%% Example:
%% configuration_issue() :: #{
%%   <<"actualValue">> => [string()],
%%   <<"configurationName">> => [string()],
%%   <<"expectedValue">> => [string()]
%% }
-type configuration_issue() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"resourceId">> => [string()],
%%   <<"resourceType">> => [string()]
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% create_deployment_input() :: #{
%%   <<"associatedPolicyList">> := list(policy_reference()),
%%   <<"associatedScopeList">> := list(scope_reference()),
%%   <<"clientToken">> => string(),
%%   <<"deploymentConfiguration">> := deployment_configuration(),
%%   <<"deploymentDescription">> => string(),
%%   <<"deploymentName">> := string(),
%%   <<"isPublished">> => boolean(),
%%   <<"tags">> => map()
%% }
-type create_deployment_input() :: #{binary() => any()}.


%% Example:
%% create_deployment_output() :: #{
%%   <<"associatedPolicyList">> => list(associated_policy()),
%%   <<"associatedScopeList">> => list(associated_scope()),
%%   <<"deploymentArn">> => string(),
%%   <<"deploymentConfiguration">> => deployment_configuration(),
%%   <<"deploymentCoverage">> => list(deployment_coverage_entry()),
%%   <<"deploymentDescription">> => string(),
%%   <<"deploymentId">> => string(),
%%   <<"deploymentName">> => string(),
%%   <<"hasPublishedVersion">> => boolean(),
%%   <<"isSnapshot">> => boolean(),
%%   <<"status">> => list(any()),
%%   <<"updateToken">> => string(),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"version">> => string(),
%%   <<"warnings">> => list(deployment_warning_entry())
%% }
-type create_deployment_output() :: #{binary() => any()}.


%% Example:
%% create_deployment_snapshot_input() :: #{
%%   <<"clientToken">> => string(),
%%   <<"tags">> => map()
%% }
-type create_deployment_snapshot_input() :: #{binary() => any()}.


%% Example:
%% create_deployment_snapshot_output() :: #{
%%   <<"associatedPolicyList">> => list(associated_policy()),
%%   <<"associatedScopeList">> => list(associated_scope()),
%%   <<"deploymentArn">> => string(),
%%   <<"deploymentConfiguration">> => deployment_configuration(),
%%   <<"deploymentDescription">> => string(),
%%   <<"deploymentId">> => string(),
%%   <<"deploymentName">> => string(),
%%   <<"hasPublishedVersion">> => boolean(),
%%   <<"isSnapshot">> => boolean(),
%%   <<"status">> => list(any()),
%%   <<"updateToken">> => string(),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"version">> => string()
%% }
-type create_deployment_snapshot_output() :: #{binary() => any()}.


%% Example:
%% create_policy_input() :: #{
%%   <<"associatedTemplateAndRuleList">> => list(list()),
%%   <<"clientToken">> => string(),
%%   <<"firewallType">> := list(any()),
%%   <<"isPublished">> => boolean(),
%%   <<"policyConfiguration">> := policy_configuration(),
%%   <<"policyDescription">> => string(),
%%   <<"policyName">> := string(),
%%   <<"priority">> := integer(),
%%   <<"tags">> => map()
%% }
-type create_policy_input() :: #{binary() => any()}.


%% Example:
%% create_policy_output() :: #{
%%   <<"associatedTemplateAndRuleList">> => list(list()),
%%   <<"firewallType">> => list(any()),
%%   <<"hasPublishedVersion">> => boolean(),
%%   <<"isSnapshot">> => boolean(),
%%   <<"policyArn">> => string(),
%%   <<"policyConfiguration">> => policy_configuration(),
%%   <<"policyDescription">> => string(),
%%   <<"policyId">> => string(),
%%   <<"policyName">> => string(),
%%   <<"priority">> => integer(),
%%   <<"status">> => list(any()),
%%   <<"updateToken">> => string(),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"version">> => string()
%% }
-type create_policy_output() :: #{binary() => any()}.


%% Example:
%% create_policy_snapshot_input() :: #{
%%   <<"clientToken">> => string(),
%%   <<"tags">> => map()
%% }
-type create_policy_snapshot_input() :: #{binary() => any()}.


%% Example:
%% create_policy_snapshot_output() :: #{
%%   <<"associatedTemplateAndRuleList">> => list(list()),
%%   <<"firewallType">> => list(any()),
%%   <<"hasPublishedVersion">> => boolean(),
%%   <<"isSnapshot">> => boolean(),
%%   <<"policyArn">> => string(),
%%   <<"policyConfiguration">> => policy_configuration(),
%%   <<"policyDescription">> => string(),
%%   <<"policyId">> => string(),
%%   <<"policyName">> => string(),
%%   <<"priority">> => integer(),
%%   <<"status">> => list(any()),
%%   <<"updateToken">> => string(),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"version">> => string()
%% }
-type create_policy_snapshot_output() :: #{binary() => any()}.


%% Example:
%% create_rule_input() :: #{
%%   <<"clientToken">> => string(),
%%   <<"configuration">> := any(),
%%   <<"firewallType">> := list(any()),
%%   <<"isPublished">> => boolean(),
%%   <<"ruleDescription">> => string(),
%%   <<"ruleName">> := string(),
%%   <<"ruleType">> := list(any()),
%%   <<"tags">> => map()
%% }
-type create_rule_input() :: #{binary() => any()}.


%% Example:
%% create_rule_output() :: #{
%%   <<"configuration">> => any(),
%%   <<"firewallType">> => list(any()),
%%   <<"hasPublishedVersion">> => boolean(),
%%   <<"isSnapshot">> => boolean(),
%%   <<"ruleArn">> => string(),
%%   <<"ruleDescription">> => string(),
%%   <<"ruleId">> => string(),
%%   <<"ruleName">> => string(),
%%   <<"ruleType">> => list(any()),
%%   <<"status">> => list(any()),
%%   <<"updateToken">> => string(),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"version">> => string()
%% }
-type create_rule_output() :: #{binary() => any()}.


%% Example:
%% create_rule_snapshot_input() :: #{
%%   <<"clientToken">> => string(),
%%   <<"tags">> => map()
%% }
-type create_rule_snapshot_input() :: #{binary() => any()}.


%% Example:
%% create_rule_snapshot_output() :: #{
%%   <<"configuration">> => any(),
%%   <<"firewallType">> => list(any()),
%%   <<"hasPublishedVersion">> => boolean(),
%%   <<"isSnapshot">> => boolean(),
%%   <<"ruleArn">> => string(),
%%   <<"ruleDescription">> => string(),
%%   <<"ruleId">> => string(),
%%   <<"ruleName">> => string(),
%%   <<"ruleType">> => list(any()),
%%   <<"status">> => list(any()),
%%   <<"updateToken">> => string(),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"version">> => string()
%% }
-type create_rule_snapshot_output() :: #{binary() => any()}.


%% Example:
%% create_scope_input() :: #{
%%   <<"clientToken">> => string(),
%%   <<"isPublished">> => boolean(),
%%   <<"scopeConfiguration">> := scope_configuration(),
%%   <<"scopeDescription">> => string(),
%%   <<"scopeName">> := string(),
%%   <<"tags">> => map()
%% }
-type create_scope_input() :: #{binary() => any()}.


%% Example:
%% create_scope_output() :: #{
%%   <<"hasPublishedVersion">> => boolean(),
%%   <<"isSnapshot">> => boolean(),
%%   <<"scopeArn">> => string(),
%%   <<"scopeConfiguration">> => scope_configuration(),
%%   <<"scopeDescription">> => string(),
%%   <<"scopeId">> => string(),
%%   <<"scopeName">> => string(),
%%   <<"status">> => list(any()),
%%   <<"updateToken">> => string(),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"version">> => string()
%% }
-type create_scope_output() :: #{binary() => any()}.


%% Example:
%% create_scope_snapshot_input() :: #{
%%   <<"clientToken">> => string(),
%%   <<"tags">> => map()
%% }
-type create_scope_snapshot_input() :: #{binary() => any()}.


%% Example:
%% create_scope_snapshot_output() :: #{
%%   <<"hasPublishedVersion">> => boolean(),
%%   <<"isSnapshot">> => boolean(),
%%   <<"scopeArn">> => string(),
%%   <<"scopeConfiguration">> => scope_configuration(),
%%   <<"scopeDescription">> => string(),
%%   <<"scopeId">> => string(),
%%   <<"scopeName">> => string(),
%%   <<"status">> => list(any()),
%%   <<"updateToken">> => string(),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"version">> => string()
%% }
-type create_scope_snapshot_output() :: #{binary() => any()}.


%% Example:
%% create_template_input() :: #{
%%   <<"associatedRuleList">> := list(rule_reference()),
%%   <<"clientToken">> => string(),
%%   <<"firewallType">> := list(any()),
%%   <<"isPublished">> => boolean(),
%%   <<"tags">> => map(),
%%   <<"templateDescription">> => string(),
%%   <<"templateName">> := string()
%% }
-type create_template_input() :: #{binary() => any()}.


%% Example:
%% create_template_output() :: #{
%%   <<"associatedRuleList">> => list(associated_rule()),
%%   <<"firewallType">> => list(any()),
%%   <<"hasPublishedVersion">> => boolean(),
%%   <<"isSnapshot">> => boolean(),
%%   <<"status">> => list(any()),
%%   <<"templateArn">> => string(),
%%   <<"templateDescription">> => string(),
%%   <<"templateId">> => string(),
%%   <<"templateName">> => string(),
%%   <<"updateToken">> => string(),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"version">> => string()
%% }
-type create_template_output() :: #{binary() => any()}.


%% Example:
%% create_template_snapshot_input() :: #{
%%   <<"clientToken">> => string(),
%%   <<"tags">> => map()
%% }
-type create_template_snapshot_input() :: #{binary() => any()}.


%% Example:
%% create_template_snapshot_output() :: #{
%%   <<"associatedRuleList">> => list(associated_rule()),
%%   <<"firewallType">> => list(any()),
%%   <<"hasPublishedVersion">> => boolean(),
%%   <<"isSnapshot">> => boolean(),
%%   <<"status">> => list(any()),
%%   <<"templateArn">> => string(),
%%   <<"templateDescription">> => string(),
%%   <<"templateId">> => string(),
%%   <<"templateName">> => string(),
%%   <<"updateToken">> => string(),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"version">> => string()
%% }
-type create_template_snapshot_output() :: #{binary() => any()}.

%% Example:
%% delete_admin_account_request() :: #{}
-type delete_admin_account_request() :: #{}.

%% Example:
%% delete_deployment_input() :: #{}
-type delete_deployment_input() :: #{}.

%% Example:
%% delete_policy_input() :: #{}
-type delete_policy_input() :: #{}.

%% Example:
%% delete_rule_input() :: #{}
-type delete_rule_input() :: #{}.

%% Example:
%% delete_scope_input() :: #{}
-type delete_scope_input() :: #{}.

%% Example:
%% delete_template_input() :: #{}
-type delete_template_input() :: #{}.


%% Example:
%% deployment_configuration() :: #{
%%   <<"enableCrossAccountVisibility">> => boolean()
%% }
-type deployment_configuration() :: #{binary() => any()}.


%% Example:
%% deployment_coverage_entry() :: #{
%%   <<"firewallType">> => list(any()),
%%   <<"inScopeResourceTypes">> => list(list(any())()),
%%   <<"policyArns">> => list(string())
%% }
-type deployment_coverage_entry() :: #{binary() => any()}.


%% Example:
%% deployment_summary() :: #{
%%   <<"deploymentArn">> => string(),
%%   <<"deploymentId">> => string(),
%%   <<"deploymentName">> => string(),
%%   <<"hasPublishedVersion">> => boolean(),
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"version">> => string()
%% }
-type deployment_summary() :: #{binary() => any()}.


%% Example:
%% deployment_warning_entry() :: #{
%%   <<"code">> => [string()],
%%   <<"message">> => [string()],
%%   <<"policyArn">> => string()
%% }
-type deployment_warning_entry() :: #{binary() => any()}.


%% Example:
%% generate_rule_configuration_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"currentConfiguration">> => [string()],
%%   <<"prompt">> := string(),
%%   <<"ruleFirewallType">> := list(any()),
%%   <<"ruleType">> := list(any()),
%%   <<"wafConfigDataType">> => list(any())
%% }
-type generate_rule_configuration_request() :: #{binary() => any()}.


%% Example:
%% generate_rule_configuration_response() :: #{
%%   <<"configuration">> => [string()],
%%   <<"description">> => [string()]
%% }
-type generate_rule_configuration_response() :: #{binary() => any()}.

%% Example:
%% get_admin_account_request() :: #{}
-type get_admin_account_request() :: #{}.


%% Example:
%% get_admin_account_response() :: #{
%%   <<"adminAccountDetails">> => admin_account_details()
%% }
-type get_admin_account_response() :: #{binary() => any()}.

%% Example:
%% get_deployment_input() :: #{}
-type get_deployment_input() :: #{}.


%% Example:
%% get_deployment_output() :: #{
%%   <<"associatedPolicyList">> => list(associated_policy()),
%%   <<"associatedScopeList">> => list(associated_scope()),
%%   <<"deploymentArn">> => string(),
%%   <<"deploymentConfiguration">> => deployment_configuration(),
%%   <<"deploymentCoverage">> => list(deployment_coverage_entry()),
%%   <<"deploymentDescription">> => string(),
%%   <<"deploymentId">> => string(),
%%   <<"deploymentName">> => string(),
%%   <<"hasPublishedVersion">> => boolean(),
%%   <<"isSnapshot">> => boolean(),
%%   <<"status">> => list(any()),
%%   <<"updateToken">> => string(),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"version">> => string(),
%%   <<"warnings">> => list(deployment_warning_entry())
%% }
-type get_deployment_output() :: #{binary() => any()}.

%% Example:
%% get_policy_input() :: #{}
-type get_policy_input() :: #{}.


%% Example:
%% get_policy_output() :: #{
%%   <<"associatedTemplateAndRuleList">> => list(list()),
%%   <<"firewallType">> => list(any()),
%%   <<"hasPublishedVersion">> => boolean(),
%%   <<"isSnapshot">> => boolean(),
%%   <<"policyArn">> => string(),
%%   <<"policyConfiguration">> => policy_configuration(),
%%   <<"policyDescription">> => string(),
%%   <<"policyId">> => string(),
%%   <<"policyName">> => string(),
%%   <<"priority">> => integer(),
%%   <<"status">> => list(any()),
%%   <<"updateToken">> => string(),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"version">> => string()
%% }
-type get_policy_output() :: #{binary() => any()}.

%% Example:
%% get_rule_input() :: #{}
-type get_rule_input() :: #{}.


%% Example:
%% get_rule_output() :: #{
%%   <<"configuration">> => any(),
%%   <<"firewallType">> => list(any()),
%%   <<"hasPublishedVersion">> => boolean(),
%%   <<"isSnapshot">> => boolean(),
%%   <<"ruleArn">> => string(),
%%   <<"ruleDescription">> => string(),
%%   <<"ruleId">> => string(),
%%   <<"ruleName">> => string(),
%%   <<"ruleType">> => list(any()),
%%   <<"status">> => list(any()),
%%   <<"updateToken">> => string(),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"version">> => string()
%% }
-type get_rule_output() :: #{binary() => any()}.

%% Example:
%% get_scope_input() :: #{}
-type get_scope_input() :: #{}.


%% Example:
%% get_scope_output() :: #{
%%   <<"hasPublishedVersion">> => boolean(),
%%   <<"isSnapshot">> => boolean(),
%%   <<"scopeArn">> => string(),
%%   <<"scopeConfiguration">> => scope_configuration(),
%%   <<"scopeDescription">> => string(),
%%   <<"scopeId">> => string(),
%%   <<"scopeName">> => string(),
%%   <<"status">> => list(any()),
%%   <<"updateToken">> => string(),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"version">> => string()
%% }
-type get_scope_output() :: #{binary() => any()}.

%% Example:
%% get_template_input() :: #{}
-type get_template_input() :: #{}.


%% Example:
%% get_template_output() :: #{
%%   <<"associatedRuleList">> => list(associated_rule()),
%%   <<"firewallType">> => list(any()),
%%   <<"hasPublishedVersion">> => boolean(),
%%   <<"isSnapshot">> => boolean(),
%%   <<"status">> => list(any()),
%%   <<"templateArn">> => string(),
%%   <<"templateDescription">> => string(),
%%   <<"templateId">> => string(),
%%   <<"templateName">> => string(),
%%   <<"updateToken">> => string(),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"version">> => string()
%% }
-type get_template_output() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% invalid_firewall_reasons() :: #{
%%   <<"incorrectAppendableConfigurationOrder">> => list(configuration_issue()),
%%   <<"incorrectSingleValueConfigurations">> => list(configuration_issue()),
%%   <<"missingAppendableConfigurationValues">> => list(configuration_issue()),
%%   <<"missingMergeableConfigurationValues">> => list(configuration_issue()),
%%   <<"unexpectedAppendableConfigurationValues">> => list(configuration_issue()),
%%   <<"unexpectedMergeableConfigurationValues">> => list(configuration_issue())
%% }
-type invalid_firewall_reasons() :: #{binary() => any()}.


%% Example:
%% list_admin_accounts_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_admin_accounts_request() :: #{binary() => any()}.


%% Example:
%% list_admin_accounts_response() :: #{
%%   <<"adminAccounts">> => list(admin_account_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_admin_accounts_response() :: #{binary() => any()}.


%% Example:
%% list_aggregate_resource_synchronization_statuses_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"synchronizationStatus">> => list(any())
%% }
-type list_aggregate_resource_synchronization_statuses_input() :: #{binary() => any()}.


%% Example:
%% list_aggregate_resource_synchronization_statuses_output() :: #{
%%   <<"nextToken">> => string(),
%%   <<"resourceSynchronizationStatuses">> => list(resource_synchronization_status_summary())
%% }
-type list_aggregate_resource_synchronization_statuses_output() :: #{binary() => any()}.


%% Example:
%% list_deployment_snapshots_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_deployment_snapshots_input() :: #{binary() => any()}.


%% Example:
%% list_deployment_snapshots_output() :: #{
%%   <<"nextToken">> => string(),
%%   <<"snapshots">> => list(deployment_summary())
%% }
-type list_deployment_snapshots_output() :: #{binary() => any()}.


%% Example:
%% list_deployments_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"status">> => list(any())
%% }
-type list_deployments_input() :: #{binary() => any()}.


%% Example:
%% list_deployments_output() :: #{
%%   <<"deployments">> => list(deployment_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_deployments_output() :: #{binary() => any()}.


%% Example:
%% list_policies_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"status">> => list(any())
%% }
-type list_policies_input() :: #{binary() => any()}.


%% Example:
%% list_policies_output() :: #{
%%   <<"nextToken">> => string(),
%%   <<"policies">> => list(policy_summary())
%% }
-type list_policies_output() :: #{binary() => any()}.


%% Example:
%% list_policy_snapshots_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_policy_snapshots_input() :: #{binary() => any()}.


%% Example:
%% list_policy_snapshots_output() :: #{
%%   <<"nextToken">> => string(),
%%   <<"snapshots">> => list(policy_summary())
%% }
-type list_policy_snapshots_output() :: #{binary() => any()}.


%% Example:
%% list_resource_associations_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"resourceIdentifier">> := string()
%% }
-type list_resource_associations_input() :: #{binary() => any()}.


%% Example:
%% list_resource_associations_output() :: #{
%%   <<"nextToken">> => string(),
%%   <<"resourceAssociations">> => list(resource_association())
%% }
-type list_resource_associations_output() :: #{binary() => any()}.


%% Example:
%% list_resource_synchronization_statuses_input() :: #{
%%   <<"deploymentIdentifier">> := string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"synchronizationStatus">> => list(any())
%% }
-type list_resource_synchronization_statuses_input() :: #{binary() => any()}.


%% Example:
%% list_resource_synchronization_statuses_output() :: #{
%%   <<"nextToken">> => string(),
%%   <<"resourceSynchronizationStatuses">> => list(resource_synchronization_status_summary())
%% }
-type list_resource_synchronization_statuses_output() :: #{binary() => any()}.


%% Example:
%% list_rule_snapshots_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_rule_snapshots_input() :: #{binary() => any()}.


%% Example:
%% list_rule_snapshots_output() :: #{
%%   <<"nextToken">> => string(),
%%   <<"snapshots">> => list(rule_summary())
%% }
-type list_rule_snapshots_output() :: #{binary() => any()}.


%% Example:
%% list_rules_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"status">> => list(any())
%% }
-type list_rules_input() :: #{binary() => any()}.


%% Example:
%% list_rules_output() :: #{
%%   <<"nextToken">> => string(),
%%   <<"rules">> => list(rule_summary())
%% }
-type list_rules_output() :: #{binary() => any()}.


%% Example:
%% list_scope_snapshots_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_scope_snapshots_input() :: #{binary() => any()}.


%% Example:
%% list_scope_snapshots_output() :: #{
%%   <<"nextToken">> => string(),
%%   <<"snapshots">> => list(scope_summary())
%% }
-type list_scope_snapshots_output() :: #{binary() => any()}.


%% Example:
%% list_scopes_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"status">> => list(any())
%% }
-type list_scopes_input() :: #{binary() => any()}.


%% Example:
%% list_scopes_output() :: #{
%%   <<"nextToken">> => string(),
%%   <<"scopes">> => list(scope_summary())
%% }
-type list_scopes_output() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_input() :: #{}
-type list_tags_for_resource_input() :: #{}.


%% Example:
%% list_tags_for_resource_output() :: #{
%%   <<"tags">> => map()
%% }
-type list_tags_for_resource_output() :: #{binary() => any()}.


%% Example:
%% list_template_snapshots_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_template_snapshots_input() :: #{binary() => any()}.


%% Example:
%% list_template_snapshots_output() :: #{
%%   <<"nextToken">> => string(),
%%   <<"snapshots">> => list(template_summary())
%% }
-type list_template_snapshots_output() :: #{binary() => any()}.


%% Example:
%% list_templates_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"status">> => list(any())
%% }
-type list_templates_input() :: #{binary() => any()}.


%% Example:
%% list_templates_output() :: #{
%%   <<"nextToken">> => string(),
%%   <<"templates">> => list(template_summary())
%% }
-type list_templates_output() :: #{binary() => any()}.


%% Example:
%% not_visible_marker() :: #{
%%   <<"reason">> => [string()]
%% }
-type not_visible_marker() :: #{binary() => any()}.


%% Example:
%% organizational_unit_reference() :: #{
%%   <<"name">> => [string()],
%%   <<"ouId">> => string()
%% }
-type organizational_unit_reference() :: #{binary() => any()}.


%% Example:
%% policy_configuration() :: #{
%%   <<"remediationEnabled">> => boolean(),
%%   <<"resourcesCleanUp">> => boolean(),
%%   <<"wafConfig">> => waf_config()
%% }
-type policy_configuration() :: #{binary() => any()}.


%% Example:
%% policy_reference() :: #{
%%   <<"policyIdentifier">> => string()
%% }
-type policy_reference() :: #{binary() => any()}.


%% Example:
%% policy_summary() :: #{
%%   <<"firewallType">> => list(any()),
%%   <<"hasPublishedVersion">> => boolean(),
%%   <<"policyArn">> => string(),
%%   <<"policyId">> => string(),
%%   <<"policyName">> => string(),
%%   <<"priority">> => integer(),
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"version">> => string()
%% }
-type policy_summary() :: #{binary() => any()}.


%% Example:
%% put_admin_account_request() :: #{
%%   <<"accountId">> := string(),
%%   <<"adminScope">> => admin_scope_input(),
%%   <<"priority">> := integer()
%% }
-type put_admin_account_request() :: #{binary() => any()}.


%% Example:
%% put_admin_account_response() :: #{
%%   <<"adminAccountDetails">> => admin_account_details()
%% }
-type put_admin_account_response() :: #{binary() => any()}.


%% Example:
%% remediation_issue_details() :: #{
%%   <<"correctiveAction">> => [string()],
%%   <<"issueType">> => [string()],
%%   <<"message">> => [string()]
%% }
-type remediation_issue_details() :: #{binary() => any()}.


%% Example:
%% resource_association() :: #{
%%   <<"arn">> => string(),
%%   <<"resourceType">> => list(any())
%% }
-type resource_association() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"resourceId">> => [string()],
%%   <<"resourceType">> => [string()]
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% resource_scope() :: #{
%%   <<"exclude">> => resource_set(),
%%   <<"include">> => resource_set(),
%%   <<"includeAll">> => [boolean()]
%% }
-type resource_scope() :: #{binary() => any()}.


%% Example:
%% resource_set() :: #{
%%   <<"explicitArns">> => list(string()),
%%   <<"expression">> => list()
%% }
-type resource_set() :: #{binary() => any()}.


%% Example:
%% resource_synchronization_status_summary() :: #{
%%   <<"accountId">> => string(),
%%   <<"deploymentArn">> => string(),
%%   <<"evaluatedAt">> => non_neg_integer(),
%%   <<"outOfSyncReasons">> => list(),
%%   <<"remediationIssues">> => list(),
%%   <<"resourceArn">> => string(),
%%   <<"resourceType">> => list(any()),
%%   <<"synchronizationStatus">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type resource_synchronization_status_summary() :: #{binary() => any()}.


%% Example:
%% rule_reference() :: #{
%%   <<"ruleIdentifier">> => string()
%% }
-type rule_reference() :: #{binary() => any()}.


%% Example:
%% rule_summary() :: #{
%%   <<"firewallType">> => list(any()),
%%   <<"hasPublishedVersion">> => boolean(),
%%   <<"ruleArn">> => string(),
%%   <<"ruleId">> => string(),
%%   <<"ruleName">> => string(),
%%   <<"ruleType">> => list(any()),
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"version">> => string()
%% }
-type rule_summary() :: #{binary() => any()}.


%% Example:
%% scope_configuration() :: #{
%%   <<"accountFilter">> => list(),
%%   <<"resourceScopes">> => map()
%% }
-type scope_configuration() :: #{binary() => any()}.


%% Example:
%% scope_reference() :: #{
%%   <<"scopeIdentifier">> => string()
%% }
-type scope_reference() :: #{binary() => any()}.


%% Example:
%% scope_summary() :: #{
%%   <<"hasPublishedVersion">> => boolean(),
%%   <<"scopeArn">> => string(),
%%   <<"scopeId">> => string(),
%%   <<"scopeName">> => string(),
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"version">> => string()
%% }
-type scope_summary() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"quotaCode">> => [string()],
%%   <<"resourceId">> => [string()],
%%   <<"resourceType">> => [string()],
%%   <<"serviceCode">> => [string()]
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% service_unavailable_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"retryAfterSeconds">> => [integer()]
%% }
-type service_unavailable_exception() :: #{binary() => any()}.


%% Example:
%% tag_policy_violation_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type tag_policy_violation_exception() :: #{binary() => any()}.


%% Example:
%% tag_resource_input() :: #{
%%   <<"tags">> := map()
%% }
-type tag_resource_input() :: #{binary() => any()}.

%% Example:
%% tag_resource_output() :: #{}
-type tag_resource_output() :: #{}.


%% Example:
%% template_summary() :: #{
%%   <<"firewallType">> => list(any()),
%%   <<"hasPublishedVersion">> => boolean(),
%%   <<"status">> => list(any()),
%%   <<"templateArn">> => string(),
%%   <<"templateId">> => string(),
%%   <<"templateName">> => string(),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"version">> => string()
%% }
-type template_summary() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"retryAfterSeconds">> => [integer()]
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% untag_resource_input() :: #{
%%   <<"tagKeys">> := list(string())
%% }
-type untag_resource_input() :: #{binary() => any()}.

%% Example:
%% untag_resource_output() :: #{}
-type untag_resource_output() :: #{}.


%% Example:
%% update_deployment_input() :: #{
%%   <<"associatedPolicyList">> => list(policy_reference()),
%%   <<"associatedScopeList">> => list(scope_reference()),
%%   <<"clientToken">> => string(),
%%   <<"deploymentConfiguration">> => deployment_configuration(),
%%   <<"deploymentDescription">> => string(),
%%   <<"isPublished">> := boolean(),
%%   <<"updateToken">> := string()
%% }
-type update_deployment_input() :: #{binary() => any()}.


%% Example:
%% update_deployment_output() :: #{
%%   <<"associatedPolicyList">> => list(associated_policy()),
%%   <<"associatedScopeList">> => list(associated_scope()),
%%   <<"deploymentArn">> => string(),
%%   <<"deploymentConfiguration">> => deployment_configuration(),
%%   <<"deploymentCoverage">> => list(deployment_coverage_entry()),
%%   <<"deploymentDescription">> => string(),
%%   <<"deploymentId">> => string(),
%%   <<"deploymentName">> => string(),
%%   <<"hasPublishedVersion">> => boolean(),
%%   <<"isSnapshot">> => boolean(),
%%   <<"status">> => list(any()),
%%   <<"updateToken">> => string(),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"version">> => string(),
%%   <<"warnings">> => list(deployment_warning_entry())
%% }
-type update_deployment_output() :: #{binary() => any()}.


%% Example:
%% update_policy_input() :: #{
%%   <<"associatedTemplateAndRuleList">> => list(list()),
%%   <<"clientToken">> => string(),
%%   <<"isPublished">> := boolean(),
%%   <<"policyConfiguration">> => policy_configuration(),
%%   <<"policyDescription">> => string(),
%%   <<"priority">> => integer(),
%%   <<"updateToken">> := string()
%% }
-type update_policy_input() :: #{binary() => any()}.


%% Example:
%% update_policy_output() :: #{
%%   <<"associatedTemplateAndRuleList">> => list(list()),
%%   <<"firewallType">> => list(any()),
%%   <<"hasPublishedVersion">> => boolean(),
%%   <<"isSnapshot">> => boolean(),
%%   <<"policyArn">> => string(),
%%   <<"policyConfiguration">> => policy_configuration(),
%%   <<"policyDescription">> => string(),
%%   <<"policyId">> => string(),
%%   <<"policyName">> => string(),
%%   <<"priority">> => integer(),
%%   <<"status">> => list(any()),
%%   <<"updateToken">> => string(),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"version">> => string()
%% }
-type update_policy_output() :: #{binary() => any()}.


%% Example:
%% update_rule_input() :: #{
%%   <<"clientToken">> => string(),
%%   <<"configuration">> => any(),
%%   <<"isPublished">> := boolean(),
%%   <<"ruleDescription">> => string(),
%%   <<"ruleType">> => list(any()),
%%   <<"updateToken">> := string()
%% }
-type update_rule_input() :: #{binary() => any()}.


%% Example:
%% update_rule_output() :: #{
%%   <<"configuration">> => any(),
%%   <<"firewallType">> => list(any()),
%%   <<"hasPublishedVersion">> => boolean(),
%%   <<"isSnapshot">> => boolean(),
%%   <<"ruleArn">> => string(),
%%   <<"ruleDescription">> => string(),
%%   <<"ruleId">> => string(),
%%   <<"ruleName">> => string(),
%%   <<"ruleType">> => list(any()),
%%   <<"status">> => list(any()),
%%   <<"updateToken">> => string(),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"version">> => string()
%% }
-type update_rule_output() :: #{binary() => any()}.


%% Example:
%% update_scope_input() :: #{
%%   <<"clientToken">> => string(),
%%   <<"isPublished">> := boolean(),
%%   <<"scopeConfiguration">> => scope_configuration(),
%%   <<"scopeDescription">> => string(),
%%   <<"updateToken">> := string()
%% }
-type update_scope_input() :: #{binary() => any()}.


%% Example:
%% update_scope_output() :: #{
%%   <<"hasPublishedVersion">> => boolean(),
%%   <<"isSnapshot">> => boolean(),
%%   <<"scopeArn">> => string(),
%%   <<"scopeConfiguration">> => scope_configuration(),
%%   <<"scopeDescription">> => string(),
%%   <<"scopeId">> => string(),
%%   <<"scopeName">> => string(),
%%   <<"status">> => list(any()),
%%   <<"updateToken">> => string(),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"version">> => string()
%% }
-type update_scope_output() :: #{binary() => any()}.


%% Example:
%% update_template_input() :: #{
%%   <<"associatedRuleList">> => list(rule_reference()),
%%   <<"clientToken">> => string(),
%%   <<"isPublished">> := boolean(),
%%   <<"templateDescription">> => string(),
%%   <<"updateToken">> := string()
%% }
-type update_template_input() :: #{binary() => any()}.


%% Example:
%% update_template_output() :: #{
%%   <<"associatedRuleList">> => list(associated_rule()),
%%   <<"firewallType">> => list(any()),
%%   <<"hasPublishedVersion">> => boolean(),
%%   <<"isSnapshot">> => boolean(),
%%   <<"status">> => list(any()),
%%   <<"templateArn">> => string(),
%%   <<"templateDescription">> => string(),
%%   <<"templateId">> => string(),
%%   <<"templateName">> => string(),
%%   <<"updateToken">> => string(),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"version">> => string()
%% }
-type update_template_output() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"fieldList">> => list(validation_exception_field()),
%%   <<"message">> => [string()],
%%   <<"reason">> => list(any())
%% }
-type validation_exception() :: #{binary() => any()}.


%% Example:
%% validation_exception_field() :: #{
%%   <<"message">> => [string()],
%%   <<"name">> => [string()]
%% }
-type validation_exception_field() :: #{binary() => any()}.


%% Example:
%% waf_config() :: #{
%%   <<"conflictResolution">> => list(any()),
%%   <<"existingCustomerWebACLResolution">> => list(any())
%% }
-type waf_config() :: #{binary() => any()}.

-type create_deployment_errors() ::
    validation_exception() | 
    throttling_exception() | 
    tag_policy_violation_exception() | 
    service_unavailable_exception() | 
    service_quota_exceeded_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type create_deployment_snapshot_errors() ::
    validation_exception() | 
    throttling_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type create_policy_errors() ::
    validation_exception() | 
    throttling_exception() | 
    tag_policy_violation_exception() | 
    service_unavailable_exception() | 
    service_quota_exceeded_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type create_policy_snapshot_errors() ::
    validation_exception() | 
    throttling_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type create_rule_errors() ::
    validation_exception() | 
    throttling_exception() | 
    tag_policy_violation_exception() | 
    service_unavailable_exception() | 
    service_quota_exceeded_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type create_rule_snapshot_errors() ::
    validation_exception() | 
    throttling_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type create_scope_errors() ::
    validation_exception() | 
    throttling_exception() | 
    tag_policy_violation_exception() | 
    service_unavailable_exception() | 
    service_quota_exceeded_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type create_scope_snapshot_errors() ::
    validation_exception() | 
    throttling_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type create_template_errors() ::
    validation_exception() | 
    throttling_exception() | 
    tag_policy_violation_exception() | 
    service_unavailable_exception() | 
    service_quota_exceeded_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type create_template_snapshot_errors() ::
    validation_exception() | 
    throttling_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type delete_admin_account_errors() ::
    validation_exception() | 
    throttling_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type delete_deployment_errors() ::
    validation_exception() | 
    throttling_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type delete_policy_errors() ::
    validation_exception() | 
    throttling_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type delete_rule_errors() ::
    validation_exception() | 
    throttling_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type delete_scope_errors() ::
    validation_exception() | 
    throttling_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type delete_template_errors() ::
    validation_exception() | 
    throttling_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type generate_rule_configuration_errors() ::
    validation_exception() | 
    throttling_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type get_admin_account_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type get_deployment_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type get_policy_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type get_rule_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type get_scope_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type get_template_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_admin_accounts_errors() ::
    validation_exception() | 
    throttling_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_aggregate_resource_synchronization_statuses_errors() ::
    validation_exception() | 
    throttling_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_deployment_snapshots_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_deployments_errors() ::
    validation_exception() | 
    throttling_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_policies_errors() ::
    validation_exception() | 
    throttling_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_policy_snapshots_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_resource_associations_errors() ::
    validation_exception() | 
    throttling_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_resource_synchronization_statuses_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_rule_snapshots_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_rules_errors() ::
    validation_exception() | 
    throttling_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_scope_snapshots_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_scopes_errors() ::
    validation_exception() | 
    throttling_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_tags_for_resource_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_template_snapshots_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_templates_errors() ::
    validation_exception() | 
    throttling_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type put_admin_account_errors() ::
    validation_exception() | 
    throttling_exception() | 
    service_unavailable_exception() | 
    service_quota_exceeded_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type tag_resource_errors() ::
    validation_exception() | 
    throttling_exception() | 
    tag_policy_violation_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type untag_resource_errors() ::
    validation_exception() | 
    throttling_exception() | 
    tag_policy_violation_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type update_deployment_errors() ::
    validation_exception() | 
    throttling_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type update_policy_errors() ::
    validation_exception() | 
    throttling_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type update_rule_errors() ::
    validation_exception() | 
    throttling_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type update_scope_errors() ::
    validation_exception() | 
    throttling_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type update_template_errors() ::
    validation_exception() | 
    throttling_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a deployment.
%%
%% A deployment applies one or more policies to the accounts and resources
%% selected by a scope. Use `isPublished' to create the deployment in
%% published (`ACTIVE') or draft (`DRAFT') state. The response
%% includes coverage information and any warnings about the deployment.
-spec create_deployment(aws_client:aws_client(), create_deployment_input()) ->
    {ok, create_deployment_output(), tuple()} |
    {error, any()} |
    {error, create_deployment_errors(), tuple()}.
create_deployment(Client, Input) ->
    create_deployment(Client, Input, []).

-spec create_deployment(aws_client:aws_client(), create_deployment_input(), proplists:proplist()) ->
    {ok, create_deployment_output(), tuple()} |
    {error, any()} |
    {error, create_deployment_errors(), tuple()}.
create_deployment(Client, Input0, Options0) ->
    Method = post,
    Path = ["/deployments"],
    SuccessStatusCode = 201,
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

%% @doc Creates a snapshot of the current published version of the specified
%% deployment.
-spec create_deployment_snapshot(aws_client:aws_client(), binary() | list(), create_deployment_snapshot_input()) ->
    {ok, create_deployment_snapshot_output(), tuple()} |
    {error, any()} |
    {error, create_deployment_snapshot_errors(), tuple()}.
create_deployment_snapshot(Client, DeploymentIdentifier, Input) ->
    create_deployment_snapshot(Client, DeploymentIdentifier, Input, []).

-spec create_deployment_snapshot(aws_client:aws_client(), binary() | list(), create_deployment_snapshot_input(), proplists:proplist()) ->
    {ok, create_deployment_snapshot_output(), tuple()} |
    {error, any()} |
    {error, create_deployment_snapshot_errors(), tuple()}.
create_deployment_snapshot(Client, DeploymentIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/deployments/", aws_util:encode_uri(DeploymentIdentifier), "/snapshots"],
    SuccessStatusCode = 201,
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

%% @doc Creates a policy.
%%
%% A policy combines templates and rules with enforcement settings for a
%% firewall type, such as AWS WAF or AWS Shield Advanced. Use
%% `isPublished' to create the policy in published (`ACTIVE') or
%% draft (`DRAFT') state.
-spec create_policy(aws_client:aws_client(), create_policy_input()) ->
    {ok, create_policy_output(), tuple()} |
    {error, any()} |
    {error, create_policy_errors(), tuple()}.
create_policy(Client, Input) ->
    create_policy(Client, Input, []).

-spec create_policy(aws_client:aws_client(), create_policy_input(), proplists:proplist()) ->
    {ok, create_policy_output(), tuple()} |
    {error, any()} |
    {error, create_policy_errors(), tuple()}.
create_policy(Client, Input0, Options0) ->
    Method = post,
    Path = ["/policies"],
    SuccessStatusCode = 201,
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

%% @doc Creates a snapshot of the current published version of the specified
%% policy.
-spec create_policy_snapshot(aws_client:aws_client(), binary() | list(), create_policy_snapshot_input()) ->
    {ok, create_policy_snapshot_output(), tuple()} |
    {error, any()} |
    {error, create_policy_snapshot_errors(), tuple()}.
create_policy_snapshot(Client, PolicyIdentifier, Input) ->
    create_policy_snapshot(Client, PolicyIdentifier, Input, []).

-spec create_policy_snapshot(aws_client:aws_client(), binary() | list(), create_policy_snapshot_input(), proplists:proplist()) ->
    {ok, create_policy_snapshot_output(), tuple()} |
    {error, any()} |
    {error, create_policy_snapshot_errors(), tuple()}.
create_policy_snapshot(Client, PolicyIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/policies/", aws_util:encode_uri(PolicyIdentifier), "/snapshots"],
    SuccessStatusCode = 201,
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

%% @doc Creates a rule.
%%
%% A rule defines a network security configuration to enforce, such as an AWS
%% WAF rule group or configuration data. Use `isPublished' to create the
%% rule in published (`ACTIVE') or draft (`DRAFT') state.
-spec create_rule(aws_client:aws_client(), create_rule_input()) ->
    {ok, create_rule_output(), tuple()} |
    {error, any()} |
    {error, create_rule_errors(), tuple()}.
create_rule(Client, Input) ->
    create_rule(Client, Input, []).

-spec create_rule(aws_client:aws_client(), create_rule_input(), proplists:proplist()) ->
    {ok, create_rule_output(), tuple()} |
    {error, any()} |
    {error, create_rule_errors(), tuple()}.
create_rule(Client, Input0, Options0) ->
    Method = post,
    Path = ["/rules"],
    SuccessStatusCode = 201,
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

%% @doc Creates a snapshot of the current published version of the specified
%% rule.
%%
%% A snapshot is an immutable, versioned copy that other resources can
%% reference.
-spec create_rule_snapshot(aws_client:aws_client(), binary() | list(), create_rule_snapshot_input()) ->
    {ok, create_rule_snapshot_output(), tuple()} |
    {error, any()} |
    {error, create_rule_snapshot_errors(), tuple()}.
create_rule_snapshot(Client, RuleIdentifier, Input) ->
    create_rule_snapshot(Client, RuleIdentifier, Input, []).

-spec create_rule_snapshot(aws_client:aws_client(), binary() | list(), create_rule_snapshot_input(), proplists:proplist()) ->
    {ok, create_rule_snapshot_output(), tuple()} |
    {error, any()} |
    {error, create_rule_snapshot_errors(), tuple()}.
create_rule_snapshot(Client, RuleIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/rules/", aws_util:encode_uri(RuleIdentifier), "/snapshots"],
    SuccessStatusCode = 201,
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

%% @doc Creates a scope.
%%
%% A scope selects the accounts and resources that a deployment applies to.
%% Use `isPublished' to create the scope in published (`ACTIVE') or
%% draft (`DRAFT') state.
-spec create_scope(aws_client:aws_client(), create_scope_input()) ->
    {ok, create_scope_output(), tuple()} |
    {error, any()} |
    {error, create_scope_errors(), tuple()}.
create_scope(Client, Input) ->
    create_scope(Client, Input, []).

-spec create_scope(aws_client:aws_client(), create_scope_input(), proplists:proplist()) ->
    {ok, create_scope_output(), tuple()} |
    {error, any()} |
    {error, create_scope_errors(), tuple()}.
create_scope(Client, Input0, Options0) ->
    Method = post,
    Path = ["/scopes"],
    SuccessStatusCode = 201,
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

%% @doc Creates a snapshot of the current published version of the specified
%% scope.
-spec create_scope_snapshot(aws_client:aws_client(), binary() | list(), create_scope_snapshot_input()) ->
    {ok, create_scope_snapshot_output(), tuple()} |
    {error, any()} |
    {error, create_scope_snapshot_errors(), tuple()}.
create_scope_snapshot(Client, ScopeIdentifier, Input) ->
    create_scope_snapshot(Client, ScopeIdentifier, Input, []).

-spec create_scope_snapshot(aws_client:aws_client(), binary() | list(), create_scope_snapshot_input(), proplists:proplist()) ->
    {ok, create_scope_snapshot_output(), tuple()} |
    {error, any()} |
    {error, create_scope_snapshot_errors(), tuple()}.
create_scope_snapshot(Client, ScopeIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/scopes/", aws_util:encode_uri(ScopeIdentifier), "/snapshots"],
    SuccessStatusCode = 201,
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

%% @doc Creates a template.
%%
%% A template groups one or more rules to simplify reuse across policies. You
%% can also associate rules with a policy directly, without a template. Use
%% `isPublished' to create the template in published (`ACTIVE') or
%% draft (`DRAFT') state.
-spec create_template(aws_client:aws_client(), create_template_input()) ->
    {ok, create_template_output(), tuple()} |
    {error, any()} |
    {error, create_template_errors(), tuple()}.
create_template(Client, Input) ->
    create_template(Client, Input, []).

-spec create_template(aws_client:aws_client(), create_template_input(), proplists:proplist()) ->
    {ok, create_template_output(), tuple()} |
    {error, any()} |
    {error, create_template_errors(), tuple()}.
create_template(Client, Input0, Options0) ->
    Method = post,
    Path = ["/templates"],
    SuccessStatusCode = 201,
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

%% @doc Creates a snapshot of the current published version of the specified
%% template.
-spec create_template_snapshot(aws_client:aws_client(), binary() | list(), create_template_snapshot_input()) ->
    {ok, create_template_snapshot_output(), tuple()} |
    {error, any()} |
    {error, create_template_snapshot_errors(), tuple()}.
create_template_snapshot(Client, TemplateIdentifier, Input) ->
    create_template_snapshot(Client, TemplateIdentifier, Input, []).

-spec create_template_snapshot(aws_client:aws_client(), binary() | list(), create_template_snapshot_input(), proplists:proplist()) ->
    {ok, create_template_snapshot_output(), tuple()} |
    {error, any()} |
    {error, create_template_snapshot_errors(), tuple()}.
create_template_snapshot(Client, TemplateIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/templates/", aws_util:encode_uri(TemplateIdentifier), "/snapshots"],
    SuccessStatusCode = 201,
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

%% @doc Removes the specified AWS Network Security Manager administrator
%% account.
-spec delete_admin_account(aws_client:aws_client(), binary() | list(), delete_admin_account_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_admin_account_errors(), tuple()}.
delete_admin_account(Client, AccountId, Input) ->
    delete_admin_account(Client, AccountId, Input, []).

-spec delete_admin_account(aws_client:aws_client(), binary() | list(), delete_admin_account_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_admin_account_errors(), tuple()}.
delete_admin_account(Client, AccountId, Input0, Options0) ->
    Method = delete,
    Path = ["/admin-account/", aws_util:encode_uri(AccountId), ""],
    SuccessStatusCode = 204,
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

%% @doc Deletes the specified deployment.
-spec delete_deployment(aws_client:aws_client(), binary() | list(), delete_deployment_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_deployment_errors(), tuple()}.
delete_deployment(Client, DeploymentIdentifier, Input) ->
    delete_deployment(Client, DeploymentIdentifier, Input, []).

-spec delete_deployment(aws_client:aws_client(), binary() | list(), delete_deployment_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_deployment_errors(), tuple()}.
delete_deployment(Client, DeploymentIdentifier, Input0, Options0) ->
    Method = delete,
    Path = ["/deployments/", aws_util:encode_uri(DeploymentIdentifier), ""],
    SuccessStatusCode = 204,
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

%% @doc Deletes the specified policy.
-spec delete_policy(aws_client:aws_client(), binary() | list(), delete_policy_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_policy_errors(), tuple()}.
delete_policy(Client, PolicyIdentifier, Input) ->
    delete_policy(Client, PolicyIdentifier, Input, []).

-spec delete_policy(aws_client:aws_client(), binary() | list(), delete_policy_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_policy_errors(), tuple()}.
delete_policy(Client, PolicyIdentifier, Input0, Options0) ->
    Method = delete,
    Path = ["/policies/", aws_util:encode_uri(PolicyIdentifier), ""],
    SuccessStatusCode = 204,
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

%% @doc Deletes the specified rule.
-spec delete_rule(aws_client:aws_client(), binary() | list(), delete_rule_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_rule_errors(), tuple()}.
delete_rule(Client, RuleIdentifier, Input) ->
    delete_rule(Client, RuleIdentifier, Input, []).

-spec delete_rule(aws_client:aws_client(), binary() | list(), delete_rule_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_rule_errors(), tuple()}.
delete_rule(Client, RuleIdentifier, Input0, Options0) ->
    Method = delete,
    Path = ["/rules/", aws_util:encode_uri(RuleIdentifier), ""],
    SuccessStatusCode = 204,
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

%% @doc Deletes the specified scope.
-spec delete_scope(aws_client:aws_client(), binary() | list(), delete_scope_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_scope_errors(), tuple()}.
delete_scope(Client, ScopeIdentifier, Input) ->
    delete_scope(Client, ScopeIdentifier, Input, []).

-spec delete_scope(aws_client:aws_client(), binary() | list(), delete_scope_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_scope_errors(), tuple()}.
delete_scope(Client, ScopeIdentifier, Input0, Options0) ->
    Method = delete,
    Path = ["/scopes/", aws_util:encode_uri(ScopeIdentifier), ""],
    SuccessStatusCode = 204,
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

%% @doc Deletes the specified template.
-spec delete_template(aws_client:aws_client(), binary() | list(), delete_template_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_template_errors(), tuple()}.
delete_template(Client, TemplateIdentifier, Input) ->
    delete_template(Client, TemplateIdentifier, Input, []).

-spec delete_template(aws_client:aws_client(), binary() | list(), delete_template_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_template_errors(), tuple()}.
delete_template(Client, TemplateIdentifier, Input0, Options0) ->
    Method = delete,
    Path = ["/templates/", aws_util:encode_uri(TemplateIdentifier), ""],
    SuccessStatusCode = 204,
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

%% @doc Generates a rule configuration from a natural-language description.
%%
%% Provide a prompt along with the rule's firewall type and rule type.
%% The service returns a configuration that you can use when you create or
%% update a rule. If you also provide an existing configuration, the service
%% edits that configuration instead of generating a new one.
-spec generate_rule_configuration(aws_client:aws_client(), generate_rule_configuration_request()) ->
    {ok, generate_rule_configuration_response(), tuple()} |
    {error, any()} |
    {error, generate_rule_configuration_errors(), tuple()}.
generate_rule_configuration(Client, Input) ->
    generate_rule_configuration(Client, Input, []).

-spec generate_rule_configuration(aws_client:aws_client(), generate_rule_configuration_request(), proplists:proplist()) ->
    {ok, generate_rule_configuration_response(), tuple()} |
    {error, any()} |
    {error, generate_rule_configuration_errors(), tuple()}.
generate_rule_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GenerateRuleConfiguration"],
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

%% @doc Retrieves the details of the specified AWS Network Security Manager
%% administrator account.
-spec get_admin_account(aws_client:aws_client(), binary() | list()) ->
    {ok, get_admin_account_response(), tuple()} |
    {error, any()} |
    {error, get_admin_account_errors(), tuple()}.
get_admin_account(Client, AccountId)
  when is_map(Client) ->
    get_admin_account(Client, AccountId, #{}, #{}).

-spec get_admin_account(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_admin_account_response(), tuple()} |
    {error, any()} |
    {error, get_admin_account_errors(), tuple()}.
get_admin_account(Client, AccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_admin_account(Client, AccountId, QueryMap, HeadersMap, []).

-spec get_admin_account(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_admin_account_response(), tuple()} |
    {error, any()} |
    {error, get_admin_account_errors(), tuple()}.
get_admin_account(Client, AccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/admin-account/", aws_util:encode_uri(AccountId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the details of the specified deployment, including coverage
%% information and any warnings.
-spec get_deployment(aws_client:aws_client(), binary() | list()) ->
    {ok, get_deployment_output(), tuple()} |
    {error, any()} |
    {error, get_deployment_errors(), tuple()}.
get_deployment(Client, DeploymentIdentifier)
  when is_map(Client) ->
    get_deployment(Client, DeploymentIdentifier, #{}, #{}).

-spec get_deployment(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_deployment_output(), tuple()} |
    {error, any()} |
    {error, get_deployment_errors(), tuple()}.
get_deployment(Client, DeploymentIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_deployment(Client, DeploymentIdentifier, QueryMap, HeadersMap, []).

-spec get_deployment(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_deployment_output(), tuple()} |
    {error, any()} |
    {error, get_deployment_errors(), tuple()}.
get_deployment(Client, DeploymentIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/deployments/", aws_util:encode_uri(DeploymentIdentifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the details of the specified policy.
-spec get_policy(aws_client:aws_client(), binary() | list()) ->
    {ok, get_policy_output(), tuple()} |
    {error, any()} |
    {error, get_policy_errors(), tuple()}.
get_policy(Client, PolicyIdentifier)
  when is_map(Client) ->
    get_policy(Client, PolicyIdentifier, #{}, #{}).

-spec get_policy(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_policy_output(), tuple()} |
    {error, any()} |
    {error, get_policy_errors(), tuple()}.
get_policy(Client, PolicyIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_policy(Client, PolicyIdentifier, QueryMap, HeadersMap, []).

-spec get_policy(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_policy_output(), tuple()} |
    {error, any()} |
    {error, get_policy_errors(), tuple()}.
get_policy(Client, PolicyIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/policies/", aws_util:encode_uri(PolicyIdentifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the details of the specified rule.
-spec get_rule(aws_client:aws_client(), binary() | list()) ->
    {ok, get_rule_output(), tuple()} |
    {error, any()} |
    {error, get_rule_errors(), tuple()}.
get_rule(Client, RuleIdentifier)
  when is_map(Client) ->
    get_rule(Client, RuleIdentifier, #{}, #{}).

-spec get_rule(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_rule_output(), tuple()} |
    {error, any()} |
    {error, get_rule_errors(), tuple()}.
get_rule(Client, RuleIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_rule(Client, RuleIdentifier, QueryMap, HeadersMap, []).

-spec get_rule(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_rule_output(), tuple()} |
    {error, any()} |
    {error, get_rule_errors(), tuple()}.
get_rule(Client, RuleIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/rules/", aws_util:encode_uri(RuleIdentifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the details of the specified scope.
-spec get_scope(aws_client:aws_client(), binary() | list()) ->
    {ok, get_scope_output(), tuple()} |
    {error, any()} |
    {error, get_scope_errors(), tuple()}.
get_scope(Client, ScopeIdentifier)
  when is_map(Client) ->
    get_scope(Client, ScopeIdentifier, #{}, #{}).

-spec get_scope(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_scope_output(), tuple()} |
    {error, any()} |
    {error, get_scope_errors(), tuple()}.
get_scope(Client, ScopeIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_scope(Client, ScopeIdentifier, QueryMap, HeadersMap, []).

-spec get_scope(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_scope_output(), tuple()} |
    {error, any()} |
    {error, get_scope_errors(), tuple()}.
get_scope(Client, ScopeIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/scopes/", aws_util:encode_uri(ScopeIdentifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the details of the specified template.
-spec get_template(aws_client:aws_client(), binary() | list()) ->
    {ok, get_template_output(), tuple()} |
    {error, any()} |
    {error, get_template_errors(), tuple()}.
get_template(Client, TemplateIdentifier)
  when is_map(Client) ->
    get_template(Client, TemplateIdentifier, #{}, #{}).

-spec get_template(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_template_output(), tuple()} |
    {error, any()} |
    {error, get_template_errors(), tuple()}.
get_template(Client, TemplateIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_template(Client, TemplateIdentifier, QueryMap, HeadersMap, []).

-spec get_template(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_template_output(), tuple()} |
    {error, any()} |
    {error, get_template_errors(), tuple()}.
get_template(Client, TemplateIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/templates/", aws_util:encode_uri(TemplateIdentifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the AWS Network Security Manager administrator accounts in the
%% organization.
-spec list_admin_accounts(aws_client:aws_client()) ->
    {ok, list_admin_accounts_response(), tuple()} |
    {error, any()} |
    {error, list_admin_accounts_errors(), tuple()}.
list_admin_accounts(Client)
  when is_map(Client) ->
    list_admin_accounts(Client, #{}, #{}).

-spec list_admin_accounts(aws_client:aws_client(), map(), map()) ->
    {ok, list_admin_accounts_response(), tuple()} |
    {error, any()} |
    {error, list_admin_accounts_errors(), tuple()}.
list_admin_accounts(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_admin_accounts(Client, QueryMap, HeadersMap, []).

-spec list_admin_accounts(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_admin_accounts_response(), tuple()} |
    {error, any()} |
    {error, list_admin_accounts_errors(), tuple()}.
list_admin_accounts(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/admin-accounts"],
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
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the aggregated synchronization statuses of resources across the
%% deployments in your administrator account.
%%
%% You can filter the results by synchronization status and page through
%% them.
-spec list_aggregate_resource_synchronization_statuses(aws_client:aws_client()) ->
    {ok, list_aggregate_resource_synchronization_statuses_output(), tuple()} |
    {error, any()} |
    {error, list_aggregate_resource_synchronization_statuses_errors(), tuple()}.
list_aggregate_resource_synchronization_statuses(Client)
  when is_map(Client) ->
    list_aggregate_resource_synchronization_statuses(Client, #{}, #{}).

-spec list_aggregate_resource_synchronization_statuses(aws_client:aws_client(), map(), map()) ->
    {ok, list_aggregate_resource_synchronization_statuses_output(), tuple()} |
    {error, any()} |
    {error, list_aggregate_resource_synchronization_statuses_errors(), tuple()}.
list_aggregate_resource_synchronization_statuses(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_aggregate_resource_synchronization_statuses(Client, QueryMap, HeadersMap, []).

-spec list_aggregate_resource_synchronization_statuses(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_aggregate_resource_synchronization_statuses_output(), tuple()} |
    {error, any()} |
    {error, list_aggregate_resource_synchronization_statuses_errors(), tuple()}.
list_aggregate_resource_synchronization_statuses(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/aggregate-sync-statuses"],
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
        {<<"synchronizationStatus">>, maps:get(<<"synchronizationStatus">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the snapshots of the specified deployment.
-spec list_deployment_snapshots(aws_client:aws_client(), binary() | list()) ->
    {ok, list_deployment_snapshots_output(), tuple()} |
    {error, any()} |
    {error, list_deployment_snapshots_errors(), tuple()}.
list_deployment_snapshots(Client, DeploymentIdentifier)
  when is_map(Client) ->
    list_deployment_snapshots(Client, DeploymentIdentifier, #{}, #{}).

-spec list_deployment_snapshots(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_deployment_snapshots_output(), tuple()} |
    {error, any()} |
    {error, list_deployment_snapshots_errors(), tuple()}.
list_deployment_snapshots(Client, DeploymentIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_deployment_snapshots(Client, DeploymentIdentifier, QueryMap, HeadersMap, []).

-spec list_deployment_snapshots(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_deployment_snapshots_output(), tuple()} |
    {error, any()} |
    {error, list_deployment_snapshots_errors(), tuple()}.
list_deployment_snapshots(Client, DeploymentIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/deployments/", aws_util:encode_uri(DeploymentIdentifier), "/snapshots"],
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
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the deployments in the account.
%%
%% You can filter the results by status and page through them using
%% `maxResults' and `nextToken'.
-spec list_deployments(aws_client:aws_client()) ->
    {ok, list_deployments_output(), tuple()} |
    {error, any()} |
    {error, list_deployments_errors(), tuple()}.
list_deployments(Client)
  when is_map(Client) ->
    list_deployments(Client, #{}, #{}).

-spec list_deployments(aws_client:aws_client(), map(), map()) ->
    {ok, list_deployments_output(), tuple()} |
    {error, any()} |
    {error, list_deployments_errors(), tuple()}.
list_deployments(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_deployments(Client, QueryMap, HeadersMap, []).

-spec list_deployments(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_deployments_output(), tuple()} |
    {error, any()} |
    {error, list_deployments_errors(), tuple()}.
list_deployments(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/deployments"],
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
        {<<"status">>, maps:get(<<"status">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the policies in the account.
%%
%% You can filter the results by status and page through them using
%% `maxResults' and `nextToken'.
-spec list_policies(aws_client:aws_client()) ->
    {ok, list_policies_output(), tuple()} |
    {error, any()} |
    {error, list_policies_errors(), tuple()}.
list_policies(Client)
  when is_map(Client) ->
    list_policies(Client, #{}, #{}).

-spec list_policies(aws_client:aws_client(), map(), map()) ->
    {ok, list_policies_output(), tuple()} |
    {error, any()} |
    {error, list_policies_errors(), tuple()}.
list_policies(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_policies(Client, QueryMap, HeadersMap, []).

-spec list_policies(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_policies_output(), tuple()} |
    {error, any()} |
    {error, list_policies_errors(), tuple()}.
list_policies(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/policies"],
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
        {<<"status">>, maps:get(<<"status">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the snapshots of the specified policy.
-spec list_policy_snapshots(aws_client:aws_client(), binary() | list()) ->
    {ok, list_policy_snapshots_output(), tuple()} |
    {error, any()} |
    {error, list_policy_snapshots_errors(), tuple()}.
list_policy_snapshots(Client, PolicyIdentifier)
  when is_map(Client) ->
    list_policy_snapshots(Client, PolicyIdentifier, #{}, #{}).

-spec list_policy_snapshots(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_policy_snapshots_output(), tuple()} |
    {error, any()} |
    {error, list_policy_snapshots_errors(), tuple()}.
list_policy_snapshots(Client, PolicyIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_policy_snapshots(Client, PolicyIdentifier, QueryMap, HeadersMap, []).

-spec list_policy_snapshots(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_policy_snapshots_output(), tuple()} |
    {error, any()} |
    {error, list_policy_snapshots_errors(), tuple()}.
list_policy_snapshots(Client, PolicyIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/policies/", aws_util:encode_uri(PolicyIdentifier), "/snapshots"],
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
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the resources associated with the specified resource.
-spec list_resource_associations(aws_client:aws_client(), binary() | list()) ->
    {ok, list_resource_associations_output(), tuple()} |
    {error, any()} |
    {error, list_resource_associations_errors(), tuple()}.
list_resource_associations(Client, ResourceIdentifier)
  when is_map(Client) ->
    list_resource_associations(Client, ResourceIdentifier, #{}, #{}).

-spec list_resource_associations(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_resource_associations_output(), tuple()} |
    {error, any()} |
    {error, list_resource_associations_errors(), tuple()}.
list_resource_associations(Client, ResourceIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_resource_associations(Client, ResourceIdentifier, QueryMap, HeadersMap, []).

-spec list_resource_associations(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_resource_associations_output(), tuple()} |
    {error, any()} |
    {error, list_resource_associations_errors(), tuple()}.
list_resource_associations(Client, ResourceIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/resource-associations"],
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
        {<<"resourceIdentifier">>, ResourceIdentifier}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the synchronization statuses of the resources covered by the
%% specified deployment.
%%
%% You can filter the results by synchronization status and page through
%% them.
-spec list_resource_synchronization_statuses(aws_client:aws_client(), binary() | list()) ->
    {ok, list_resource_synchronization_statuses_output(), tuple()} |
    {error, any()} |
    {error, list_resource_synchronization_statuses_errors(), tuple()}.
list_resource_synchronization_statuses(Client, DeploymentIdentifier)
  when is_map(Client) ->
    list_resource_synchronization_statuses(Client, DeploymentIdentifier, #{}, #{}).

-spec list_resource_synchronization_statuses(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_resource_synchronization_statuses_output(), tuple()} |
    {error, any()} |
    {error, list_resource_synchronization_statuses_errors(), tuple()}.
list_resource_synchronization_statuses(Client, DeploymentIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_resource_synchronization_statuses(Client, DeploymentIdentifier, QueryMap, HeadersMap, []).

-spec list_resource_synchronization_statuses(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_resource_synchronization_statuses_output(), tuple()} |
    {error, any()} |
    {error, list_resource_synchronization_statuses_errors(), tuple()}.
list_resource_synchronization_statuses(Client, DeploymentIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/resource-sync-statuses"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"deploymentIdentifier">>, DeploymentIdentifier},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"synchronizationStatus">>, maps:get(<<"synchronizationStatus">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the snapshots of the specified rule.
-spec list_rule_snapshots(aws_client:aws_client(), binary() | list()) ->
    {ok, list_rule_snapshots_output(), tuple()} |
    {error, any()} |
    {error, list_rule_snapshots_errors(), tuple()}.
list_rule_snapshots(Client, RuleIdentifier)
  when is_map(Client) ->
    list_rule_snapshots(Client, RuleIdentifier, #{}, #{}).

-spec list_rule_snapshots(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_rule_snapshots_output(), tuple()} |
    {error, any()} |
    {error, list_rule_snapshots_errors(), tuple()}.
list_rule_snapshots(Client, RuleIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_rule_snapshots(Client, RuleIdentifier, QueryMap, HeadersMap, []).

-spec list_rule_snapshots(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_rule_snapshots_output(), tuple()} |
    {error, any()} |
    {error, list_rule_snapshots_errors(), tuple()}.
list_rule_snapshots(Client, RuleIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/rules/", aws_util:encode_uri(RuleIdentifier), "/snapshots"],
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
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the rules in the account.
%%
%% You can filter the results by status and page through them using
%% `maxResults' and `nextToken'.
-spec list_rules(aws_client:aws_client()) ->
    {ok, list_rules_output(), tuple()} |
    {error, any()} |
    {error, list_rules_errors(), tuple()}.
list_rules(Client)
  when is_map(Client) ->
    list_rules(Client, #{}, #{}).

-spec list_rules(aws_client:aws_client(), map(), map()) ->
    {ok, list_rules_output(), tuple()} |
    {error, any()} |
    {error, list_rules_errors(), tuple()}.
list_rules(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_rules(Client, QueryMap, HeadersMap, []).

-spec list_rules(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_rules_output(), tuple()} |
    {error, any()} |
    {error, list_rules_errors(), tuple()}.
list_rules(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/rules"],
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
        {<<"status">>, maps:get(<<"status">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the snapshots of the specified scope.
-spec list_scope_snapshots(aws_client:aws_client(), binary() | list()) ->
    {ok, list_scope_snapshots_output(), tuple()} |
    {error, any()} |
    {error, list_scope_snapshots_errors(), tuple()}.
list_scope_snapshots(Client, ScopeIdentifier)
  when is_map(Client) ->
    list_scope_snapshots(Client, ScopeIdentifier, #{}, #{}).

-spec list_scope_snapshots(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_scope_snapshots_output(), tuple()} |
    {error, any()} |
    {error, list_scope_snapshots_errors(), tuple()}.
list_scope_snapshots(Client, ScopeIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_scope_snapshots(Client, ScopeIdentifier, QueryMap, HeadersMap, []).

-spec list_scope_snapshots(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_scope_snapshots_output(), tuple()} |
    {error, any()} |
    {error, list_scope_snapshots_errors(), tuple()}.
list_scope_snapshots(Client, ScopeIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/scopes/", aws_util:encode_uri(ScopeIdentifier), "/snapshots"],
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
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the scopes in the account.
%%
%% You can filter the results by status and page through them using
%% `maxResults' and `nextToken'.
-spec list_scopes(aws_client:aws_client()) ->
    {ok, list_scopes_output(), tuple()} |
    {error, any()} |
    {error, list_scopes_errors(), tuple()}.
list_scopes(Client)
  when is_map(Client) ->
    list_scopes(Client, #{}, #{}).

-spec list_scopes(aws_client:aws_client(), map(), map()) ->
    {ok, list_scopes_output(), tuple()} |
    {error, any()} |
    {error, list_scopes_errors(), tuple()}.
list_scopes(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_scopes(Client, QueryMap, HeadersMap, []).

-spec list_scopes(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_scopes_output(), tuple()} |
    {error, any()} |
    {error, list_scopes_errors(), tuple()}.
list_scopes(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/scopes"],
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
        {<<"status">>, maps:get(<<"status">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the tags associated with the specified resource.
-spec list_tags_for_resource(aws_client:aws_client(), binary() | list()) ->
    {ok, list_tags_for_resource_output(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_tags_for_resource_output(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_tags_for_resource_output(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the snapshots of the specified template.
-spec list_template_snapshots(aws_client:aws_client(), binary() | list()) ->
    {ok, list_template_snapshots_output(), tuple()} |
    {error, any()} |
    {error, list_template_snapshots_errors(), tuple()}.
list_template_snapshots(Client, TemplateIdentifier)
  when is_map(Client) ->
    list_template_snapshots(Client, TemplateIdentifier, #{}, #{}).

-spec list_template_snapshots(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_template_snapshots_output(), tuple()} |
    {error, any()} |
    {error, list_template_snapshots_errors(), tuple()}.
list_template_snapshots(Client, TemplateIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_template_snapshots(Client, TemplateIdentifier, QueryMap, HeadersMap, []).

-spec list_template_snapshots(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_template_snapshots_output(), tuple()} |
    {error, any()} |
    {error, list_template_snapshots_errors(), tuple()}.
list_template_snapshots(Client, TemplateIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/templates/", aws_util:encode_uri(TemplateIdentifier), "/snapshots"],
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
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the templates in the account.
%%
%% You can filter the results by status and page through them using
%% `maxResults' and `nextToken'.
-spec list_templates(aws_client:aws_client()) ->
    {ok, list_templates_output(), tuple()} |
    {error, any()} |
    {error, list_templates_errors(), tuple()}.
list_templates(Client)
  when is_map(Client) ->
    list_templates(Client, #{}, #{}).

-spec list_templates(aws_client:aws_client(), map(), map()) ->
    {ok, list_templates_output(), tuple()} |
    {error, any()} |
    {error, list_templates_errors(), tuple()}.
list_templates(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_templates(Client, QueryMap, HeadersMap, []).

-spec list_templates(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_templates_output(), tuple()} |
    {error, any()} |
    {error, list_templates_errors(), tuple()}.
list_templates(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/templates"],
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
        {<<"status">>, maps:get(<<"status">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Sets the AWS account that serves as an AWS Network Security Manager
%% administrator account, and optionally configures the scope of resources
%% that the administrator can manage.
%%
%% You can't set an administrator account again immediately after you
%% remove it, or while the service creates its service-linked role. Retry the
%% request after a few minutes.
-spec put_admin_account(aws_client:aws_client(), put_admin_account_request()) ->
    {ok, put_admin_account_response(), tuple()} |
    {error, any()} |
    {error, put_admin_account_errors(), tuple()}.
put_admin_account(Client, Input) ->
    put_admin_account(Client, Input, []).

-spec put_admin_account(aws_client:aws_client(), put_admin_account_request(), proplists:proplist()) ->
    {ok, put_admin_account_response(), tuple()} |
    {error, any()} |
    {error, put_admin_account_errors(), tuple()}.
put_admin_account(Client, Input0, Options0) ->
    Method = put,
    Path = ["/admin-account"],
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

%% @doc Adds or overwrites the specified tags on the given resource.
-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_input()) ->
    {ok, tag_resource_output(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).

-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_input(), proplists:proplist()) ->
    {ok, tag_resource_output(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 204,
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

%% @doc Removes the specified tags from the given resource.
-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_input()) ->
    {ok, untag_resource_output(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).

-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_input(), proplists:proplist()) ->
    {ok, untag_resource_output(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 204,
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

    QueryMapping = [
                     {<<"tagKeys">>, <<"tagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the specified deployment.
%%
%% To prevent conflicting concurrent updates, provide the current
%% `updateToken'. Use `isPublished' to publish the update or keep the
%% deployment as a draft.
-spec update_deployment(aws_client:aws_client(), binary() | list(), update_deployment_input()) ->
    {ok, update_deployment_output(), tuple()} |
    {error, any()} |
    {error, update_deployment_errors(), tuple()}.
update_deployment(Client, DeploymentIdentifier, Input) ->
    update_deployment(Client, DeploymentIdentifier, Input, []).

-spec update_deployment(aws_client:aws_client(), binary() | list(), update_deployment_input(), proplists:proplist()) ->
    {ok, update_deployment_output(), tuple()} |
    {error, any()} |
    {error, update_deployment_errors(), tuple()}.
update_deployment(Client, DeploymentIdentifier, Input0, Options0) ->
    Method = patch,
    Path = ["/deployments/", aws_util:encode_uri(DeploymentIdentifier), ""],
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

%% @doc Updates the specified policy.
%%
%% To prevent conflicting concurrent updates, provide the current
%% `updateToken'. Use `isPublished' to publish the update or keep the
%% policy as a draft.
-spec update_policy(aws_client:aws_client(), binary() | list(), update_policy_input()) ->
    {ok, update_policy_output(), tuple()} |
    {error, any()} |
    {error, update_policy_errors(), tuple()}.
update_policy(Client, PolicyIdentifier, Input) ->
    update_policy(Client, PolicyIdentifier, Input, []).

-spec update_policy(aws_client:aws_client(), binary() | list(), update_policy_input(), proplists:proplist()) ->
    {ok, update_policy_output(), tuple()} |
    {error, any()} |
    {error, update_policy_errors(), tuple()}.
update_policy(Client, PolicyIdentifier, Input0, Options0) ->
    Method = patch,
    Path = ["/policies/", aws_util:encode_uri(PolicyIdentifier), ""],
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

%% @doc Updates the specified rule.
%%
%% To prevent conflicting concurrent updates, provide the current
%% `updateToken'. Use `isPublished' to publish the update or keep the
%% rule as a draft.
-spec update_rule(aws_client:aws_client(), binary() | list(), update_rule_input()) ->
    {ok, update_rule_output(), tuple()} |
    {error, any()} |
    {error, update_rule_errors(), tuple()}.
update_rule(Client, RuleIdentifier, Input) ->
    update_rule(Client, RuleIdentifier, Input, []).

-spec update_rule(aws_client:aws_client(), binary() | list(), update_rule_input(), proplists:proplist()) ->
    {ok, update_rule_output(), tuple()} |
    {error, any()} |
    {error, update_rule_errors(), tuple()}.
update_rule(Client, RuleIdentifier, Input0, Options0) ->
    Method = patch,
    Path = ["/rules/", aws_util:encode_uri(RuleIdentifier), ""],
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

%% @doc Updates the specified scope.
%%
%% To prevent conflicting concurrent updates, provide the current
%% `updateToken'. Use `isPublished' to publish the update or keep the
%% scope as a draft.
-spec update_scope(aws_client:aws_client(), binary() | list(), update_scope_input()) ->
    {ok, update_scope_output(), tuple()} |
    {error, any()} |
    {error, update_scope_errors(), tuple()}.
update_scope(Client, ScopeIdentifier, Input) ->
    update_scope(Client, ScopeIdentifier, Input, []).

-spec update_scope(aws_client:aws_client(), binary() | list(), update_scope_input(), proplists:proplist()) ->
    {ok, update_scope_output(), tuple()} |
    {error, any()} |
    {error, update_scope_errors(), tuple()}.
update_scope(Client, ScopeIdentifier, Input0, Options0) ->
    Method = patch,
    Path = ["/scopes/", aws_util:encode_uri(ScopeIdentifier), ""],
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

%% @doc Updates the specified template.
%%
%% To prevent conflicting concurrent updates, provide the current
%% `updateToken'. Use `isPublished' to publish the update or keep the
%% template as a draft.
-spec update_template(aws_client:aws_client(), binary() | list(), update_template_input()) ->
    {ok, update_template_output(), tuple()} |
    {error, any()} |
    {error, update_template_errors(), tuple()}.
update_template(Client, TemplateIdentifier, Input) ->
    update_template(Client, TemplateIdentifier, Input, []).

-spec update_template(aws_client:aws_client(), binary() | list(), update_template_input(), proplists:proplist()) ->
    {ok, update_template_output(), tuple()} |
    {error, any()} |
    {error, update_template_errors(), tuple()}.
update_template(Client, TemplateIdentifier, Input0, Options0) ->
    Method = patch,
    Path = ["/templates/", aws_util:encode_uri(TemplateIdentifier), ""],
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
    Client1 = Client#{service => <<"network-security-manager">>},
    DefaultHost = build_host(<<"network-security-manager">>, Client1),
    URL0 = build_url(DefaultHost, Path, Client1),
    PathBin = erlang:iolist_to_binary(Path),
    {URL1, Host} = aws_util:apply_endpoint_url_override(URL0, DefaultHost, PathBin, <<"AWS_ENDPOINT_URL_NETWORK_SECURITY_MANAGER">>),
    URL = aws_request:add_query(URL1, Query),
    AdditionalHeaders1 = [ {<<"Host">>, Host}
                         , {<<"Content-Type">>, <<"application/x-amz-json-1.1">>}
                         ],
    Payload =
      case proplists:get_value(send_body_as_binary, Options) of
         true when is_list(Input) ->
           proplists:get_value(<<"Body">>, Input, <<"">>);
         true when Input =:= undefined ->
           <<"">>;
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

