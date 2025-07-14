%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Managed Grafana is a fully managed and secure data
%% visualization service that
%% you can use to instantly query, correlate, and visualize operational
%% metrics, logs, and
%% traces from multiple sources.
%%
%% Amazon Managed Grafana makes it easy to deploy, operate, and
%% scale Grafana, a widely deployed data visualization tool that is popular
%% for its
%% extensible data support.
%%
%% With Amazon Managed Grafana, you create logically isolated Grafana servers
%% called
%% workspaces. In a workspace, you can create Grafana dashboards
%% and visualizations to analyze your metrics, logs, and traces without
%% having to build,
%% package, or deploy any hardware to run Grafana servers.
-module(aws_grafana).

-export([associate_license/4,
         associate_license/5,
         create_workspace/2,
         create_workspace/3,
         create_workspace_api_key/3,
         create_workspace_api_key/4,
         create_workspace_service_account/3,
         create_workspace_service_account/4,
         create_workspace_service_account_token/4,
         create_workspace_service_account_token/5,
         delete_workspace/3,
         delete_workspace/4,
         delete_workspace_api_key/4,
         delete_workspace_api_key/5,
         delete_workspace_service_account/4,
         delete_workspace_service_account/5,
         delete_workspace_service_account_token/5,
         delete_workspace_service_account_token/6,
         describe_workspace/2,
         describe_workspace/4,
         describe_workspace/5,
         describe_workspace_authentication/2,
         describe_workspace_authentication/4,
         describe_workspace_authentication/5,
         describe_workspace_configuration/2,
         describe_workspace_configuration/4,
         describe_workspace_configuration/5,
         disassociate_license/4,
         disassociate_license/5,
         list_permissions/2,
         list_permissions/4,
         list_permissions/5,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         list_versions/1,
         list_versions/3,
         list_versions/4,
         list_workspace_service_account_tokens/3,
         list_workspace_service_account_tokens/5,
         list_workspace_service_account_tokens/6,
         list_workspace_service_accounts/2,
         list_workspace_service_accounts/4,
         list_workspace_service_accounts/5,
         list_workspaces/1,
         list_workspaces/3,
         list_workspaces/4,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_permissions/3,
         update_permissions/4,
         update_workspace/3,
         update_workspace/4,
         update_workspace_authentication/3,
         update_workspace_authentication/4,
         update_workspace_configuration/3,
         update_workspace_configuration/4]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% list_permissions_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"permissions">> := list(permission_entry())
%% }
-type list_permissions_response() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% vpc_configuration() :: #{
%%   <<"securityGroupIds">> => list(string()),
%%   <<"subnetIds">> => list(string())
%% }
-type vpc_configuration() :: #{binary() => any()}.


%% Example:
%% update_workspace_configuration_request() :: #{
%%   <<"configuration">> := string(),
%%   <<"grafanaVersion">> => string()
%% }
-type update_workspace_configuration_request() :: #{binary() => any()}.


%% Example:
%% create_workspace_api_key_response() :: #{
%%   <<"key">> := string(),
%%   <<"keyName">> := string(),
%%   <<"workspaceId">> := string()
%% }
-type create_workspace_api_key_response() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% list_workspace_service_accounts_request() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string()
%% }
-type list_workspace_service_accounts_request() :: #{binary() => any()}.


%% Example:
%% describe_workspace_authentication_response() :: #{
%%   <<"authentication">> := authentication_description()
%% }
-type describe_workspace_authentication_response() :: #{binary() => any()}.


%% Example:
%% network_access_configuration() :: #{
%%   <<"prefixListIds">> => list(string()),
%%   <<"vpceIds">> => list(string())
%% }
-type network_access_configuration() :: #{binary() => any()}.


%% Example:
%% saml_authentication() :: #{
%%   <<"configuration">> => saml_configuration(),
%%   <<"status">> => string()
%% }
-type saml_authentication() :: #{binary() => any()}.


%% Example:
%% workspace_summary() :: #{
%%   <<"authentication">> => authentication_summary(),
%%   <<"created">> => [non_neg_integer()],
%%   <<"description">> => string(),
%%   <<"endpoint">> => string(),
%%   <<"grafanaToken">> => string(),
%%   <<"grafanaVersion">> => string(),
%%   <<"id">> => string(),
%%   <<"licenseType">> => string(),
%%   <<"modified">> => [non_neg_integer()],
%%   <<"name">> => string(),
%%   <<"notificationDestinations">> => list(string()),
%%   <<"status">> => string(),
%%   <<"tags">> => map()
%% }
-type workspace_summary() :: #{binary() => any()}.

%% Example:
%% describe_workspace_configuration_request() :: #{}
-type describe_workspace_configuration_request() :: #{}.


%% Example:
%% delete_workspace_service_account_token_response() :: #{
%%   <<"serviceAccountId">> => [string()],
%%   <<"tokenId">> => [string()],
%%   <<"workspaceId">> => string()
%% }
-type delete_workspace_service_account_token_response() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"tagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% create_workspace_api_key_request() :: #{
%%   <<"keyName">> := string(),
%%   <<"keyRole">> := [string()],
%%   <<"secondsToLive">> := [integer()]
%% }
-type create_workspace_api_key_request() :: #{binary() => any()}.


%% Example:
%% delete_workspace_response() :: #{
%%   <<"workspace">> := workspace_description()
%% }
-type delete_workspace_response() :: #{binary() => any()}.

%% Example:
%% update_workspace_configuration_response() :: #{}
-type update_workspace_configuration_response() :: #{}.


%% Example:
%% service_account_summary() :: #{
%%   <<"grafanaRole">> => string(),
%%   <<"id">> => [string()],
%%   <<"isDisabled">> => [string()],
%%   <<"name">> => [string()]
%% }
-type service_account_summary() :: #{binary() => any()}.


%% Example:
%% authentication_description() :: #{
%%   <<"awsSso">> => aws_sso_authentication(),
%%   <<"providers">> => list(string()),
%%   <<"saml">> => saml_authentication()
%% }
-type authentication_description() :: #{binary() => any()}.


%% Example:
%% delete_workspace_service_account_response() :: #{
%%   <<"serviceAccountId">> => [string()],
%%   <<"workspaceId">> => string()
%% }
-type delete_workspace_service_account_response() :: #{binary() => any()}.


%% Example:
%% update_workspace_authentication_response() :: #{
%%   <<"authentication">> := authentication_description()
%% }
-type update_workspace_authentication_response() :: #{binary() => any()}.


%% Example:
%% update_error() :: #{
%%   <<"causedBy">> => update_instruction(),
%%   <<"code">> => [integer()],
%%   <<"message">> => [string()]
%% }
-type update_error() :: #{binary() => any()}.


%% Example:
%% describe_workspace_response() :: #{
%%   <<"workspace">> := workspace_description()
%% }
-type describe_workspace_response() :: #{binary() => any()}.


%% Example:
%% describe_workspace_configuration_response() :: #{
%%   <<"configuration">> := string(),
%%   <<"grafanaVersion">> => string()
%% }
-type describe_workspace_configuration_response() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"resourceId">> => [string()],
%%   <<"resourceType">> => [string()]
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"resourceId">> => [string()],
%%   <<"resourceType">> => [string()]
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% update_workspace_authentication_request() :: #{
%%   <<"authenticationProviders">> := list(string()),
%%   <<"samlConfiguration">> => saml_configuration()
%% }
-type update_workspace_authentication_request() :: #{binary() => any()}.


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
%% create_workspace_service_account_token_response() :: #{
%%   <<"serviceAccountId">> => [string()],
%%   <<"serviceAccountToken">> => service_account_token_summary_with_key(),
%%   <<"workspaceId">> => string()
%% }
-type create_workspace_service_account_token_response() :: #{binary() => any()}.


%% Example:
%% authentication_summary() :: #{
%%   <<"providers">> => list(string()),
%%   <<"samlConfigurationStatus">> => string()
%% }
-type authentication_summary() :: #{binary() => any()}.


%% Example:
%% associate_license_response() :: #{
%%   <<"workspace">> := workspace_description()
%% }
-type associate_license_response() :: #{binary() => any()}.


%% Example:
%% create_workspace_service_account_response() :: #{
%%   <<"grafanaRole">> => string(),
%%   <<"id">> => [string()],
%%   <<"name">> => [string()],
%%   <<"workspaceId">> => string()
%% }
-type create_workspace_service_account_response() :: #{binary() => any()}.

%% Example:
%% describe_workspace_request() :: #{}
-type describe_workspace_request() :: #{}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.

%% Example:
%% describe_workspace_authentication_request() :: #{}
-type describe_workspace_authentication_request() :: #{}.


%% Example:
%% validation_exception_field() :: #{
%%   <<"message">> => [string()],
%%   <<"name">> => [string()]
%% }
-type validation_exception_field() :: #{binary() => any()}.


%% Example:
%% service_account_token_summary() :: #{
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"expiresAt">> => [non_neg_integer()],
%%   <<"id">> => [string()],
%%   <<"lastUsedAt">> => [non_neg_integer()],
%%   <<"name">> => [string()]
%% }
-type service_account_token_summary() :: #{binary() => any()}.


%% Example:
%% update_workspace_response() :: #{
%%   <<"workspace">> := workspace_description()
%% }
-type update_workspace_response() :: #{binary() => any()}.


%% Example:
%% list_versions_response() :: #{
%%   <<"grafanaVersions">> => list(string()),
%%   <<"nextToken">> => string()
%% }
-type list_versions_response() :: #{binary() => any()}.


%% Example:
%% list_workspace_service_account_tokens_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"serviceAccountId">> => [string()],
%%   <<"serviceAccountTokens">> => list(service_account_token_summary()),
%%   <<"workspaceId">> => string()
%% }
-type list_workspace_service_account_tokens_response() :: #{binary() => any()}.

%% Example:
%% delete_workspace_request() :: #{}
-type delete_workspace_request() :: #{}.


%% Example:
%% update_workspace_request() :: #{
%%   <<"accountAccessType">> => string(),
%%   <<"networkAccessControl">> => network_access_configuration(),
%%   <<"organizationRoleName">> => string(),
%%   <<"permissionType">> => string(),
%%   <<"removeNetworkAccessConfiguration">> => [boolean()],
%%   <<"removeVpcConfiguration">> => [boolean()],
%%   <<"stackSetName">> => string(),
%%   <<"vpcConfiguration">> => vpc_configuration(),
%%   <<"workspaceDataSources">> => list(string()),
%%   <<"workspaceDescription">> => string(),
%%   <<"workspaceName">> => string(),
%%   <<"workspaceNotificationDestinations">> => list(string()),
%%   <<"workspaceOrganizationalUnits">> => list(string()),
%%   <<"workspaceRoleArn">> => string()
%% }
-type update_workspace_request() :: #{binary() => any()}.


%% Example:
%% list_permissions_request() :: #{
%%   <<"groupId">> => string(),
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string(),
%%   <<"userId">> => string(),
%%   <<"userType">> => string()
%% }
-type list_permissions_request() :: #{binary() => any()}.


%% Example:
%% workspace_description() :: #{
%%   <<"accountAccessType">> => string(),
%%   <<"authentication">> => authentication_summary(),
%%   <<"created">> => [non_neg_integer()],
%%   <<"dataSources">> => list(string()),
%%   <<"description">> => string(),
%%   <<"endpoint">> => string(),
%%   <<"freeTrialConsumed">> => [boolean()],
%%   <<"freeTrialExpiration">> => [non_neg_integer()],
%%   <<"grafanaToken">> => string(),
%%   <<"grafanaVersion">> => string(),
%%   <<"id">> => string(),
%%   <<"licenseExpiration">> => [non_neg_integer()],
%%   <<"licenseType">> => string(),
%%   <<"modified">> => [non_neg_integer()],
%%   <<"name">> => string(),
%%   <<"networkAccessControl">> => network_access_configuration(),
%%   <<"notificationDestinations">> => list(string()),
%%   <<"organizationRoleName">> => string(),
%%   <<"organizationalUnits">> => list(string()),
%%   <<"permissionType">> => string(),
%%   <<"stackSetName">> => string(),
%%   <<"status">> => string(),
%%   <<"tags">> => map(),
%%   <<"vpcConfiguration">> => vpc_configuration(),
%%   <<"workspaceRoleArn">> => string()
%% }
-type workspace_description() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"retryAfterSeconds">> => [integer()]
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% create_workspace_response() :: #{
%%   <<"workspace">> := workspace_description()
%% }
-type create_workspace_response() :: #{binary() => any()}.


%% Example:
%% list_workspaces_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"workspaces">> := list(workspace_summary())
%% }
-type list_workspaces_response() :: #{binary() => any()}.


%% Example:
%% associate_license_request() :: #{
%%   <<"grafanaToken">> => string()
%% }
-type associate_license_request() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% update_permissions_response() :: #{
%%   <<"errors">> := list(update_error())
%% }
-type update_permissions_response() :: #{binary() => any()}.

%% Example:
%% delete_workspace_service_account_request() :: #{}
-type delete_workspace_service_account_request() :: #{}.

%% Example:
%% delete_workspace_service_account_token_request() :: #{}
-type delete_workspace_service_account_token_request() :: #{}.


%% Example:
%% permission_entry() :: #{
%%   <<"role">> => string(),
%%   <<"user">> => user()
%% }
-type permission_entry() :: #{binary() => any()}.


%% Example:
%% aws_sso_authentication() :: #{
%%   <<"ssoClientId">> => string()
%% }
-type aws_sso_authentication() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"fieldList">> => list(validation_exception_field()),
%%   <<"message">> => [string()],
%%   <<"reason">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% list_workspaces_request() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string()
%% }
-type list_workspaces_request() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"quotaCode">> => [string()],
%%   <<"retryAfterSeconds">> => [integer()],
%%   <<"serviceCode">> => [string()]
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% update_instruction() :: #{
%%   <<"action">> => string(),
%%   <<"role">> => string(),
%%   <<"users">> => list(user())
%% }
-type update_instruction() :: #{binary() => any()}.


%% Example:
%% user() :: #{
%%   <<"id">> => string(),
%%   <<"type">> => string()
%% }
-type user() :: #{binary() => any()}.

%% Example:
%% delete_workspace_api_key_request() :: #{}
-type delete_workspace_api_key_request() :: #{}.


%% Example:
%% list_versions_request() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string(),
%%   <<"workspaceId">> => string()
%% }
-type list_versions_request() :: #{binary() => any()}.


%% Example:
%% assertion_attributes() :: #{
%%   <<"email">> => string(),
%%   <<"groups">> => string(),
%%   <<"login">> => string(),
%%   <<"name">> => string(),
%%   <<"org">> => string(),
%%   <<"role">> => string()
%% }
-type assertion_attributes() :: #{binary() => any()}.


%% Example:
%% list_workspace_service_account_tokens_request() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string()
%% }
-type list_workspace_service_account_tokens_request() :: #{binary() => any()}.


%% Example:
%% role_values() :: #{
%%   <<"admin">> => list(string()),
%%   <<"editor">> => list(string())
%% }
-type role_values() :: #{binary() => any()}.


%% Example:
%% disassociate_license_response() :: #{
%%   <<"workspace">> := workspace_description()
%% }
-type disassociate_license_response() :: #{binary() => any()}.


%% Example:
%% create_workspace_service_account_request() :: #{
%%   <<"grafanaRole">> := string(),
%%   <<"name">> := string()
%% }
-type create_workspace_service_account_request() :: #{binary() => any()}.


%% Example:
%% update_permissions_request() :: #{
%%   <<"updateInstructionBatch">> := list(update_instruction())
%% }
-type update_permissions_request() :: #{binary() => any()}.


%% Example:
%% service_account_token_summary_with_key() :: #{
%%   <<"id">> => [string()],
%%   <<"key">> => string(),
%%   <<"name">> => [string()]
%% }
-type service_account_token_summary_with_key() :: #{binary() => any()}.


%% Example:
%% delete_workspace_api_key_response() :: #{
%%   <<"keyName">> := string(),
%%   <<"workspaceId">> := string()
%% }
-type delete_workspace_api_key_response() :: #{binary() => any()}.

%% Example:
%% disassociate_license_request() :: #{}
-type disassociate_license_request() :: #{}.


%% Example:
%% list_workspace_service_accounts_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"serviceAccounts">> => list(service_account_summary()),
%%   <<"workspaceId">> => string()
%% }
-type list_workspace_service_accounts_response() :: #{binary() => any()}.


%% Example:
%% create_workspace_service_account_token_request() :: #{
%%   <<"name">> := string(),
%%   <<"secondsToLive">> := [integer()]
%% }
-type create_workspace_service_account_token_request() :: #{binary() => any()}.


%% Example:
%% saml_configuration() :: #{
%%   <<"allowedOrganizations">> => list(string()),
%%   <<"assertionAttributes">> => assertion_attributes(),
%%   <<"idpMetadata">> => list(),
%%   <<"loginValidityDuration">> => integer(),
%%   <<"roleValues">> => role_values()
%% }
-type saml_configuration() :: #{binary() => any()}.


%% Example:
%% create_workspace_request() :: #{
%%   <<"accountAccessType">> := string(),
%%   <<"authenticationProviders">> := list(string()),
%%   <<"clientToken">> => string(),
%%   <<"configuration">> => string(),
%%   <<"grafanaVersion">> => string(),
%%   <<"networkAccessControl">> => network_access_configuration(),
%%   <<"organizationRoleName">> => string(),
%%   <<"permissionType">> := string(),
%%   <<"stackSetName">> => string(),
%%   <<"tags">> => map(),
%%   <<"vpcConfiguration">> => vpc_configuration(),
%%   <<"workspaceDataSources">> => list(string()),
%%   <<"workspaceDescription">> => string(),
%%   <<"workspaceName">> => string(),
%%   <<"workspaceNotificationDestinations">> => list(string()),
%%   <<"workspaceOrganizationalUnits">> => list(string()),
%%   <<"workspaceRoleArn">> => string()
%% }
-type create_workspace_request() :: #{binary() => any()}.

-type associate_license_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type create_workspace_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_workspace_api_key_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_workspace_service_account_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_workspace_service_account_token_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_workspace_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_workspace_api_key_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_workspace_service_account_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_workspace_service_account_token_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type describe_workspace_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_workspace_authentication_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type describe_workspace_configuration_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type disassociate_license_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_permissions_errors() ::
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

-type list_versions_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_workspace_service_account_tokens_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type list_workspace_service_accounts_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type list_workspaces_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type tag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_permissions_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_workspace_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_workspace_authentication_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_workspace_configuration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Assigns a Grafana Enterprise license to a workspace.
%%
%% To upgrade, you must use
%% `ENTERPRISE' for the `licenseType', and pass in a valid
%% Grafana Labs token for the `grafanaToken'. Upgrading to Grafana
%% Enterprise
%% incurs additional fees. For more information, see Upgrade a
%% workspace to Grafana Enterprise:
%% https://docs.aws.amazon.com/grafana/latest/userguide/upgrade-to-Grafana-Enterprise.html.
-spec associate_license(aws_client:aws_client(), binary() | list(), binary() | list(), associate_license_request()) ->
    {ok, associate_license_response(), tuple()} |
    {error, any()} |
    {error, associate_license_errors(), tuple()}.
associate_license(Client, LicenseType, WorkspaceId, Input) ->
    associate_license(Client, LicenseType, WorkspaceId, Input, []).

-spec associate_license(aws_client:aws_client(), binary() | list(), binary() | list(), associate_license_request(), proplists:proplist()) ->
    {ok, associate_license_response(), tuple()} |
    {error, any()} |
    {error, associate_license_errors(), tuple()}.
associate_license(Client, LicenseType, WorkspaceId, Input0, Options0) ->
    Method = post,
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/licenses/", aws_util:encode_uri(LicenseType), ""],
    SuccessStatusCode = 202,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"Grafana-Token">>, <<"grafanaToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a workspace.
%%
%% In a workspace, you can create Grafana
%% dashboards and visualizations to analyze your metrics, logs, and traces.
%% You don't have
%% to build, package, or deploy any hardware to run the Grafana server.
%%
%% Don't use `CreateWorkspace' to modify an existing workspace.
%% Instead, use
%% UpdateWorkspace:
%% https://docs.aws.amazon.com/grafana/latest/APIReference/API_UpdateWorkspace.html.
-spec create_workspace(aws_client:aws_client(), create_workspace_request()) ->
    {ok, create_workspace_response(), tuple()} |
    {error, any()} |
    {error, create_workspace_errors(), tuple()}.
create_workspace(Client, Input) ->
    create_workspace(Client, Input, []).

-spec create_workspace(aws_client:aws_client(), create_workspace_request(), proplists:proplist()) ->
    {ok, create_workspace_response(), tuple()} |
    {error, any()} |
    {error, create_workspace_errors(), tuple()}.
create_workspace(Client, Input0, Options0) ->
    Method = post,
    Path = ["/workspaces"],
    SuccessStatusCode = 202,
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

%% @doc Creates a Grafana API key for the workspace.
%%
%% This key can be used to authenticate
%% requests sent to the workspace's HTTP API. See
%% [https://docs.aws.amazon.com/grafana/latest/userguide/Using-Grafana-APIs.html]
%% for available APIs and example requests.
%%
%% In workspaces compatible with Grafana version 9 or above, use workspace
%% service
%% accounts instead of API keys. API keys will be removed in a future
%% release.
-spec create_workspace_api_key(aws_client:aws_client(), binary() | list(), create_workspace_api_key_request()) ->
    {ok, create_workspace_api_key_response(), tuple()} |
    {error, any()} |
    {error, create_workspace_api_key_errors(), tuple()}.
create_workspace_api_key(Client, WorkspaceId, Input) ->
    create_workspace_api_key(Client, WorkspaceId, Input, []).

-spec create_workspace_api_key(aws_client:aws_client(), binary() | list(), create_workspace_api_key_request(), proplists:proplist()) ->
    {ok, create_workspace_api_key_response(), tuple()} |
    {error, any()} |
    {error, create_workspace_api_key_errors(), tuple()}.
create_workspace_api_key(Client, WorkspaceId, Input0, Options0) ->
    Method = post,
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/apikeys"],
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

%% @doc Creates a service account for the workspace.
%%
%% A service account can be used to call
%% Grafana HTTP APIs, and run automated workloads. After creating the service
%% account with
%% the correct `GrafanaRole' for your use case, use
%% `CreateWorkspaceServiceAccountToken' to create a token that can be
%% used to
%% authenticate and authorize Grafana HTTP API calls.
%%
%% You can only create service accounts for workspaces that are compatible
%% with Grafana
%% version 9 and above.
%%
%% For more information about service accounts, see Service accounts:
%% https://docs.aws.amazon.com/grafana/latest/userguide/service-accounts.html
%% in
%% the Amazon Managed Grafana User Guide.
%%
%% For more information about the Grafana HTTP APIs, see Using Grafana HTTP
%% APIs:
%% https://docs.aws.amazon.com/grafana/latest/userguide/Using-Grafana-APIs.html
%% in the Amazon Managed Grafana User Guide.
-spec create_workspace_service_account(aws_client:aws_client(), binary() | list(), create_workspace_service_account_request()) ->
    {ok, create_workspace_service_account_response(), tuple()} |
    {error, any()} |
    {error, create_workspace_service_account_errors(), tuple()}.
create_workspace_service_account(Client, WorkspaceId, Input) ->
    create_workspace_service_account(Client, WorkspaceId, Input, []).

-spec create_workspace_service_account(aws_client:aws_client(), binary() | list(), create_workspace_service_account_request(), proplists:proplist()) ->
    {ok, create_workspace_service_account_response(), tuple()} |
    {error, any()} |
    {error, create_workspace_service_account_errors(), tuple()}.
create_workspace_service_account(Client, WorkspaceId, Input0, Options0) ->
    Method = post,
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/serviceaccounts"],
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

%% @doc Creates a token that can be used to authenticate and authorize
%% Grafana HTTP API
%% operations for the given workspace service
%% account:
%% https://docs.aws.amazon.com/grafana/latest/userguide/service-accounts.html.
%%
%% The service account acts as a user for the API operations, and
%% defines the permissions that are used by the API.
%%
%% When you create the service account token, you will receive a key that is
%% used
%% when calling Grafana APIs. Do not lose this key, as it will not be
%% retrievable
%% again.
%%
%% If you do lose the key, you can delete the token and recreate it to
%% receive a
%% new key. This will disable the initial key.
%%
%% Service accounts are only available for workspaces that are compatible
%% with Grafana
%% version 9 and above.
-spec create_workspace_service_account_token(aws_client:aws_client(), binary() | list(), binary() | list(), create_workspace_service_account_token_request()) ->
    {ok, create_workspace_service_account_token_response(), tuple()} |
    {error, any()} |
    {error, create_workspace_service_account_token_errors(), tuple()}.
create_workspace_service_account_token(Client, ServiceAccountId, WorkspaceId, Input) ->
    create_workspace_service_account_token(Client, ServiceAccountId, WorkspaceId, Input, []).

-spec create_workspace_service_account_token(aws_client:aws_client(), binary() | list(), binary() | list(), create_workspace_service_account_token_request(), proplists:proplist()) ->
    {ok, create_workspace_service_account_token_response(), tuple()} |
    {error, any()} |
    {error, create_workspace_service_account_token_errors(), tuple()}.
create_workspace_service_account_token(Client, ServiceAccountId, WorkspaceId, Input0, Options0) ->
    Method = post,
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/serviceaccounts/", aws_util:encode_uri(ServiceAccountId), "/tokens"],
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

%% @doc Deletes an Amazon Managed Grafana workspace.
-spec delete_workspace(aws_client:aws_client(), binary() | list(), delete_workspace_request()) ->
    {ok, delete_workspace_response(), tuple()} |
    {error, any()} |
    {error, delete_workspace_errors(), tuple()}.
delete_workspace(Client, WorkspaceId, Input) ->
    delete_workspace(Client, WorkspaceId, Input, []).

-spec delete_workspace(aws_client:aws_client(), binary() | list(), delete_workspace_request(), proplists:proplist()) ->
    {ok, delete_workspace_response(), tuple()} |
    {error, any()} |
    {error, delete_workspace_errors(), tuple()}.
delete_workspace(Client, WorkspaceId, Input0, Options0) ->
    Method = delete,
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), ""],
    SuccessStatusCode = 202,
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

%% @doc Deletes a Grafana API key for the workspace.
%%
%% In workspaces compatible with Grafana version 9 or above, use workspace
%% service
%% accounts instead of API keys. API keys will be removed in a future
%% release.
-spec delete_workspace_api_key(aws_client:aws_client(), binary() | list(), binary() | list(), delete_workspace_api_key_request()) ->
    {ok, delete_workspace_api_key_response(), tuple()} |
    {error, any()} |
    {error, delete_workspace_api_key_errors(), tuple()}.
delete_workspace_api_key(Client, KeyName, WorkspaceId, Input) ->
    delete_workspace_api_key(Client, KeyName, WorkspaceId, Input, []).

-spec delete_workspace_api_key(aws_client:aws_client(), binary() | list(), binary() | list(), delete_workspace_api_key_request(), proplists:proplist()) ->
    {ok, delete_workspace_api_key_response(), tuple()} |
    {error, any()} |
    {error, delete_workspace_api_key_errors(), tuple()}.
delete_workspace_api_key(Client, KeyName, WorkspaceId, Input0, Options0) ->
    Method = delete,
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/apikeys/", aws_util:encode_uri(KeyName), ""],
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

%% @doc Deletes a workspace service account from the workspace.
%%
%% This will delete any tokens created for the service account, as well. If
%% the tokens
%% are currently in use, the will fail to authenticate / authorize after they
%% are
%% deleted.
%%
%% Service accounts are only available for workspaces that are compatible
%% with Grafana
%% version 9 and above.
-spec delete_workspace_service_account(aws_client:aws_client(), binary() | list(), binary() | list(), delete_workspace_service_account_request()) ->
    {ok, delete_workspace_service_account_response(), tuple()} |
    {error, any()} |
    {error, delete_workspace_service_account_errors(), tuple()}.
delete_workspace_service_account(Client, ServiceAccountId, WorkspaceId, Input) ->
    delete_workspace_service_account(Client, ServiceAccountId, WorkspaceId, Input, []).

-spec delete_workspace_service_account(aws_client:aws_client(), binary() | list(), binary() | list(), delete_workspace_service_account_request(), proplists:proplist()) ->
    {ok, delete_workspace_service_account_response(), tuple()} |
    {error, any()} |
    {error, delete_workspace_service_account_errors(), tuple()}.
delete_workspace_service_account(Client, ServiceAccountId, WorkspaceId, Input0, Options0) ->
    Method = delete,
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/serviceaccounts/", aws_util:encode_uri(ServiceAccountId), ""],
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

%% @doc Deletes a token for the workspace service account.
%%
%% This will disable the key associated with the token. If any automation is
%% currently
%% using the key, it will no longer be authenticated or authorized to perform
%% actions with
%% the Grafana HTTP APIs.
%%
%% Service accounts are only available for workspaces that are compatible
%% with Grafana
%% version 9 and above.
-spec delete_workspace_service_account_token(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_workspace_service_account_token_request()) ->
    {ok, delete_workspace_service_account_token_response(), tuple()} |
    {error, any()} |
    {error, delete_workspace_service_account_token_errors(), tuple()}.
delete_workspace_service_account_token(Client, ServiceAccountId, TokenId, WorkspaceId, Input) ->
    delete_workspace_service_account_token(Client, ServiceAccountId, TokenId, WorkspaceId, Input, []).

-spec delete_workspace_service_account_token(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_workspace_service_account_token_request(), proplists:proplist()) ->
    {ok, delete_workspace_service_account_token_response(), tuple()} |
    {error, any()} |
    {error, delete_workspace_service_account_token_errors(), tuple()}.
delete_workspace_service_account_token(Client, ServiceAccountId, TokenId, WorkspaceId, Input0, Options0) ->
    Method = delete,
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/serviceaccounts/", aws_util:encode_uri(ServiceAccountId), "/tokens/", aws_util:encode_uri(TokenId), ""],
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

%% @doc Displays information about one Amazon Managed Grafana workspace.
-spec describe_workspace(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_workspace_response(), tuple()} |
    {error, any()} |
    {error, describe_workspace_errors(), tuple()}.
describe_workspace(Client, WorkspaceId)
  when is_map(Client) ->
    describe_workspace(Client, WorkspaceId, #{}, #{}).

-spec describe_workspace(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_workspace_response(), tuple()} |
    {error, any()} |
    {error, describe_workspace_errors(), tuple()}.
describe_workspace(Client, WorkspaceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_workspace(Client, WorkspaceId, QueryMap, HeadersMap, []).

-spec describe_workspace(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_workspace_response(), tuple()} |
    {error, any()} |
    {error, describe_workspace_errors(), tuple()}.
describe_workspace(Client, WorkspaceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Displays information about the authentication methods used in one
%% Amazon Managed Grafana
%% workspace.
-spec describe_workspace_authentication(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_workspace_authentication_response(), tuple()} |
    {error, any()} |
    {error, describe_workspace_authentication_errors(), tuple()}.
describe_workspace_authentication(Client, WorkspaceId)
  when is_map(Client) ->
    describe_workspace_authentication(Client, WorkspaceId, #{}, #{}).

-spec describe_workspace_authentication(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_workspace_authentication_response(), tuple()} |
    {error, any()} |
    {error, describe_workspace_authentication_errors(), tuple()}.
describe_workspace_authentication(Client, WorkspaceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_workspace_authentication(Client, WorkspaceId, QueryMap, HeadersMap, []).

-spec describe_workspace_authentication(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_workspace_authentication_response(), tuple()} |
    {error, any()} |
    {error, describe_workspace_authentication_errors(), tuple()}.
describe_workspace_authentication(Client, WorkspaceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/authentication"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the current configuration string for the given workspace.
-spec describe_workspace_configuration(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_workspace_configuration_response(), tuple()} |
    {error, any()} |
    {error, describe_workspace_configuration_errors(), tuple()}.
describe_workspace_configuration(Client, WorkspaceId)
  when is_map(Client) ->
    describe_workspace_configuration(Client, WorkspaceId, #{}, #{}).

-spec describe_workspace_configuration(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_workspace_configuration_response(), tuple()} |
    {error, any()} |
    {error, describe_workspace_configuration_errors(), tuple()}.
describe_workspace_configuration(Client, WorkspaceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_workspace_configuration(Client, WorkspaceId, QueryMap, HeadersMap, []).

-spec describe_workspace_configuration(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_workspace_configuration_response(), tuple()} |
    {error, any()} |
    {error, describe_workspace_configuration_errors(), tuple()}.
describe_workspace_configuration(Client, WorkspaceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/configuration"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Removes the Grafana Enterprise license from a workspace.
-spec disassociate_license(aws_client:aws_client(), binary() | list(), binary() | list(), disassociate_license_request()) ->
    {ok, disassociate_license_response(), tuple()} |
    {error, any()} |
    {error, disassociate_license_errors(), tuple()}.
disassociate_license(Client, LicenseType, WorkspaceId, Input) ->
    disassociate_license(Client, LicenseType, WorkspaceId, Input, []).

-spec disassociate_license(aws_client:aws_client(), binary() | list(), binary() | list(), disassociate_license_request(), proplists:proplist()) ->
    {ok, disassociate_license_response(), tuple()} |
    {error, any()} |
    {error, disassociate_license_errors(), tuple()}.
disassociate_license(Client, LicenseType, WorkspaceId, Input0, Options0) ->
    Method = delete,
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/licenses/", aws_util:encode_uri(LicenseType), ""],
    SuccessStatusCode = 202,
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

%% @doc Lists the users and groups who have the Grafana `Admin' and
%% `Editor' roles in this workspace.
%%
%% If you use this operation without
%% specifying `userId' or `groupId', the operation returns the roles
%% of all users and groups. If you specify a `userId' or a `groupId',
%% only the roles for that user or group are returned. If you do this, you
%% can specify only
%% one `userId' or one `groupId'.
-spec list_permissions(aws_client:aws_client(), binary() | list()) ->
    {ok, list_permissions_response(), tuple()} |
    {error, any()} |
    {error, list_permissions_errors(), tuple()}.
list_permissions(Client, WorkspaceId)
  when is_map(Client) ->
    list_permissions(Client, WorkspaceId, #{}, #{}).

-spec list_permissions(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_permissions_response(), tuple()} |
    {error, any()} |
    {error, list_permissions_errors(), tuple()}.
list_permissions(Client, WorkspaceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_permissions(Client, WorkspaceId, QueryMap, HeadersMap, []).

-spec list_permissions(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_permissions_response(), tuple()} |
    {error, any()} |
    {error, list_permissions_errors(), tuple()}.
list_permissions(Client, WorkspaceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/permissions"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"groupId">>, maps:get(<<"groupId">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"userId">>, maps:get(<<"userId">>, QueryMap, undefined)},
        {<<"userType">>, maps:get(<<"userType">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc The `ListTagsForResource' operation returns the tags that are
%% associated
%% with the Amazon Managed Service for Grafana resource specified by the
%% `resourceArn'.
%%
%% Currently, the only resource that can be tagged is a
%% workspace.
-spec list_tags_for_resource(aws_client:aws_client(), binary() | list()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
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

%% @doc Lists available versions of Grafana.
%%
%% These are available when calling
%% `CreateWorkspace'. Optionally, include a workspace to list the
%% versions
%% to which it can be upgraded.
-spec list_versions(aws_client:aws_client()) ->
    {ok, list_versions_response(), tuple()} |
    {error, any()} |
    {error, list_versions_errors(), tuple()}.
list_versions(Client)
  when is_map(Client) ->
    list_versions(Client, #{}, #{}).

-spec list_versions(aws_client:aws_client(), map(), map()) ->
    {ok, list_versions_response(), tuple()} |
    {error, any()} |
    {error, list_versions_errors(), tuple()}.
list_versions(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_versions(Client, QueryMap, HeadersMap, []).

-spec list_versions(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_versions_response(), tuple()} |
    {error, any()} |
    {error, list_versions_errors(), tuple()}.
list_versions(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/versions"],
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
        {<<"workspace-id">>, maps:get(<<"workspace-id">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of tokens for a workspace service account.
%%
%% This does not return the key for each token. You cannot access keys after
%% they
%% are created. To create a new key, delete the token and recreate it.
%%
%% Service accounts are only available for workspaces that are compatible
%% with Grafana
%% version 9 and above.
-spec list_workspace_service_account_tokens(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_workspace_service_account_tokens_response(), tuple()} |
    {error, any()} |
    {error, list_workspace_service_account_tokens_errors(), tuple()}.
list_workspace_service_account_tokens(Client, ServiceAccountId, WorkspaceId)
  when is_map(Client) ->
    list_workspace_service_account_tokens(Client, ServiceAccountId, WorkspaceId, #{}, #{}).

-spec list_workspace_service_account_tokens(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_workspace_service_account_tokens_response(), tuple()} |
    {error, any()} |
    {error, list_workspace_service_account_tokens_errors(), tuple()}.
list_workspace_service_account_tokens(Client, ServiceAccountId, WorkspaceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_workspace_service_account_tokens(Client, ServiceAccountId, WorkspaceId, QueryMap, HeadersMap, []).

-spec list_workspace_service_account_tokens(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_workspace_service_account_tokens_response(), tuple()} |
    {error, any()} |
    {error, list_workspace_service_account_tokens_errors(), tuple()}.
list_workspace_service_account_tokens(Client, ServiceAccountId, WorkspaceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/serviceaccounts/", aws_util:encode_uri(ServiceAccountId), "/tokens"],
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

%% @doc Returns a list of service accounts for a workspace.
%%
%% Service accounts are only available for workspaces that are compatible
%% with Grafana
%% version 9 and above.
-spec list_workspace_service_accounts(aws_client:aws_client(), binary() | list()) ->
    {ok, list_workspace_service_accounts_response(), tuple()} |
    {error, any()} |
    {error, list_workspace_service_accounts_errors(), tuple()}.
list_workspace_service_accounts(Client, WorkspaceId)
  when is_map(Client) ->
    list_workspace_service_accounts(Client, WorkspaceId, #{}, #{}).

-spec list_workspace_service_accounts(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_workspace_service_accounts_response(), tuple()} |
    {error, any()} |
    {error, list_workspace_service_accounts_errors(), tuple()}.
list_workspace_service_accounts(Client, WorkspaceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_workspace_service_accounts(Client, WorkspaceId, QueryMap, HeadersMap, []).

-spec list_workspace_service_accounts(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_workspace_service_accounts_response(), tuple()} |
    {error, any()} |
    {error, list_workspace_service_accounts_errors(), tuple()}.
list_workspace_service_accounts(Client, WorkspaceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/serviceaccounts"],
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

%% @doc Returns a list of Amazon Managed Grafana workspaces in the account,
%% with some information
%% about each workspace.
%%
%% For more complete information about one workspace, use DescribeWorkspace:
%% https://docs.aws.amazon.com/AAMG/latest/APIReference/API_DescribeWorkspace.html.
-spec list_workspaces(aws_client:aws_client()) ->
    {ok, list_workspaces_response(), tuple()} |
    {error, any()} |
    {error, list_workspaces_errors(), tuple()}.
list_workspaces(Client)
  when is_map(Client) ->
    list_workspaces(Client, #{}, #{}).

-spec list_workspaces(aws_client:aws_client(), map(), map()) ->
    {ok, list_workspaces_response(), tuple()} |
    {error, any()} |
    {error, list_workspaces_errors(), tuple()}.
list_workspaces(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_workspaces(Client, QueryMap, HeadersMap, []).

-spec list_workspaces(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_workspaces_response(), tuple()} |
    {error, any()} |
    {error, list_workspaces_errors(), tuple()}.
list_workspaces(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/workspaces"],
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

%% @doc The `TagResource' operation associates tags with an Amazon
%% Managed Grafana
%% resource.
%%
%% Currently, the only resource that can be tagged is workspaces.
%%
%% If you specify a new tag key for the resource, this tag is appended to the
%% list of
%% tags associated with the resource. If you specify a tag key that is
%% already associated
%% with the resource, the new tag value that you specify replaces the
%% previous value for
%% that tag.
-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_request()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).

-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_request(), proplists:proplist()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
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

%% @doc The `UntagResource' operation removes the association of the tag
%% with the
%% Amazon Managed Grafana resource.
-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).

-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request(), proplists:proplist()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
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

    QueryMapping = [
                     {<<"tagKeys">>, <<"tagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates which users in a workspace have the Grafana `Admin' or
%% `Editor' roles.
-spec update_permissions(aws_client:aws_client(), binary() | list(), update_permissions_request()) ->
    {ok, update_permissions_response(), tuple()} |
    {error, any()} |
    {error, update_permissions_errors(), tuple()}.
update_permissions(Client, WorkspaceId, Input) ->
    update_permissions(Client, WorkspaceId, Input, []).

-spec update_permissions(aws_client:aws_client(), binary() | list(), update_permissions_request(), proplists:proplist()) ->
    {ok, update_permissions_response(), tuple()} |
    {error, any()} |
    {error, update_permissions_errors(), tuple()}.
update_permissions(Client, WorkspaceId, Input0, Options0) ->
    Method = patch,
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/permissions"],
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

%% @doc Modifies an existing Amazon Managed Grafana workspace.
%%
%% If you use this operation and omit
%% any optional parameters, the existing values of those parameters are not
%% changed.
%%
%% To modify the user authentication methods that the workspace uses, such as
%% SAML or
%% IAM Identity Center, use UpdateWorkspaceAuthentication:
%% https://docs.aws.amazon.com/grafana/latest/APIReference/API_UpdateWorkspaceAuthentication.html.
%%
%% To modify which users in the workspace have the `Admin' and
%% `Editor' Grafana roles, use UpdatePermissions:
%% https://docs.aws.amazon.com/grafana/latest/APIReference/API_UpdatePermissions.html.
-spec update_workspace(aws_client:aws_client(), binary() | list(), update_workspace_request()) ->
    {ok, update_workspace_response(), tuple()} |
    {error, any()} |
    {error, update_workspace_errors(), tuple()}.
update_workspace(Client, WorkspaceId, Input) ->
    update_workspace(Client, WorkspaceId, Input, []).

-spec update_workspace(aws_client:aws_client(), binary() | list(), update_workspace_request(), proplists:proplist()) ->
    {ok, update_workspace_response(), tuple()} |
    {error, any()} |
    {error, update_workspace_errors(), tuple()}.
update_workspace(Client, WorkspaceId, Input0, Options0) ->
    Method = put,
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), ""],
    SuccessStatusCode = 202,
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

%% @doc Use this operation to define the identity provider (IdP) that this
%% workspace
%% authenticates users from, using SAML.
%%
%% You can also map SAML assertion attributes to
%% workspace user information and define which groups in the assertion
%% attribute are to
%% have the `Admin' and `Editor' roles in the workspace.
%%
%% Changes to the authentication method for a workspace may take a few
%% minutes to
%% take effect.
-spec update_workspace_authentication(aws_client:aws_client(), binary() | list(), update_workspace_authentication_request()) ->
    {ok, update_workspace_authentication_response(), tuple()} |
    {error, any()} |
    {error, update_workspace_authentication_errors(), tuple()}.
update_workspace_authentication(Client, WorkspaceId, Input) ->
    update_workspace_authentication(Client, WorkspaceId, Input, []).

-spec update_workspace_authentication(aws_client:aws_client(), binary() | list(), update_workspace_authentication_request(), proplists:proplist()) ->
    {ok, update_workspace_authentication_response(), tuple()} |
    {error, any()} |
    {error, update_workspace_authentication_errors(), tuple()}.
update_workspace_authentication(Client, WorkspaceId, Input0, Options0) ->
    Method = post,
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/authentication"],
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

%% @doc Updates the configuration string for the given workspace
-spec update_workspace_configuration(aws_client:aws_client(), binary() | list(), update_workspace_configuration_request()) ->
    {ok, update_workspace_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_workspace_configuration_errors(), tuple()}.
update_workspace_configuration(Client, WorkspaceId, Input) ->
    update_workspace_configuration(Client, WorkspaceId, Input, []).

-spec update_workspace_configuration(aws_client:aws_client(), binary() | list(), update_workspace_configuration_request(), proplists:proplist()) ->
    {ok, update_workspace_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_workspace_configuration_errors(), tuple()}.
update_workspace_configuration(Client, WorkspaceId, Input0, Options0) ->
    Method = put,
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/configuration"],
    SuccessStatusCode = 202,
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
    Client1 = Client#{service => <<"grafana">>},
    Host = build_host(<<"grafana">>, Client1),
    URL0 = build_url(Host, Path, Client1),
    URL = aws_request:add_query(URL0, Query),
    AdditionalHeaders1 = [ {<<"Host">>, Host}
                         , {<<"Content-Type">>, <<"application/x-amz-json-1.1">>}
                         ],
    Payload =
      case proplists:get_value(send_body_as_binary, Options) of
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
