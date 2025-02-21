%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon WorkSpaces Secure Browser is a low cost, fully managed
%% WorkSpace built
%% specifically to facilitate secure, web-based workloads.
%%
%% WorkSpaces Secure Browser makes it
%% easy for customers to safely provide their employees with access to
%% internal websites and
%% SaaS web applications without the administrative burden of appliances or
%% specialized client
%% software. WorkSpaces Secure Browser provides simple policy tools tailored
%% for user
%% interactions, while offloading common tasks like capacity management,
%% scaling, and
%% maintaining browser images.
-module(aws_workspaces_web).

-export([associate_browser_settings/3,
         associate_browser_settings/4,
         associate_data_protection_settings/3,
         associate_data_protection_settings/4,
         associate_ip_access_settings/3,
         associate_ip_access_settings/4,
         associate_network_settings/3,
         associate_network_settings/4,
         associate_trust_store/3,
         associate_trust_store/4,
         associate_user_access_logging_settings/3,
         associate_user_access_logging_settings/4,
         associate_user_settings/3,
         associate_user_settings/4,
         create_browser_settings/2,
         create_browser_settings/3,
         create_data_protection_settings/2,
         create_data_protection_settings/3,
         create_identity_provider/2,
         create_identity_provider/3,
         create_ip_access_settings/2,
         create_ip_access_settings/3,
         create_network_settings/2,
         create_network_settings/3,
         create_portal/2,
         create_portal/3,
         create_trust_store/2,
         create_trust_store/3,
         create_user_access_logging_settings/2,
         create_user_access_logging_settings/3,
         create_user_settings/2,
         create_user_settings/3,
         delete_browser_settings/3,
         delete_browser_settings/4,
         delete_data_protection_settings/3,
         delete_data_protection_settings/4,
         delete_identity_provider/3,
         delete_identity_provider/4,
         delete_ip_access_settings/3,
         delete_ip_access_settings/4,
         delete_network_settings/3,
         delete_network_settings/4,
         delete_portal/3,
         delete_portal/4,
         delete_trust_store/3,
         delete_trust_store/4,
         delete_user_access_logging_settings/3,
         delete_user_access_logging_settings/4,
         delete_user_settings/3,
         delete_user_settings/4,
         disassociate_browser_settings/3,
         disassociate_browser_settings/4,
         disassociate_data_protection_settings/3,
         disassociate_data_protection_settings/4,
         disassociate_ip_access_settings/3,
         disassociate_ip_access_settings/4,
         disassociate_network_settings/3,
         disassociate_network_settings/4,
         disassociate_trust_store/3,
         disassociate_trust_store/4,
         disassociate_user_access_logging_settings/3,
         disassociate_user_access_logging_settings/4,
         disassociate_user_settings/3,
         disassociate_user_settings/4,
         expire_session/4,
         expire_session/5,
         get_browser_settings/2,
         get_browser_settings/4,
         get_browser_settings/5,
         get_data_protection_settings/2,
         get_data_protection_settings/4,
         get_data_protection_settings/5,
         get_identity_provider/2,
         get_identity_provider/4,
         get_identity_provider/5,
         get_ip_access_settings/2,
         get_ip_access_settings/4,
         get_ip_access_settings/5,
         get_network_settings/2,
         get_network_settings/4,
         get_network_settings/5,
         get_portal/2,
         get_portal/4,
         get_portal/5,
         get_portal_service_provider_metadata/2,
         get_portal_service_provider_metadata/4,
         get_portal_service_provider_metadata/5,
         get_session/3,
         get_session/5,
         get_session/6,
         get_trust_store/2,
         get_trust_store/4,
         get_trust_store/5,
         get_trust_store_certificate/3,
         get_trust_store_certificate/5,
         get_trust_store_certificate/6,
         get_user_access_logging_settings/2,
         get_user_access_logging_settings/4,
         get_user_access_logging_settings/5,
         get_user_settings/2,
         get_user_settings/4,
         get_user_settings/5,
         list_browser_settings/1,
         list_browser_settings/3,
         list_browser_settings/4,
         list_data_protection_settings/1,
         list_data_protection_settings/3,
         list_data_protection_settings/4,
         list_identity_providers/2,
         list_identity_providers/4,
         list_identity_providers/5,
         list_ip_access_settings/1,
         list_ip_access_settings/3,
         list_ip_access_settings/4,
         list_network_settings/1,
         list_network_settings/3,
         list_network_settings/4,
         list_portals/1,
         list_portals/3,
         list_portals/4,
         list_sessions/2,
         list_sessions/4,
         list_sessions/5,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         list_trust_store_certificates/2,
         list_trust_store_certificates/4,
         list_trust_store_certificates/5,
         list_trust_stores/1,
         list_trust_stores/3,
         list_trust_stores/4,
         list_user_access_logging_settings/1,
         list_user_access_logging_settings/3,
         list_user_access_logging_settings/4,
         list_user_settings/1,
         list_user_settings/3,
         list_user_settings/4,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_browser_settings/3,
         update_browser_settings/4,
         update_data_protection_settings/3,
         update_data_protection_settings/4,
         update_identity_provider/3,
         update_identity_provider/4,
         update_ip_access_settings/3,
         update_ip_access_settings/4,
         update_network_settings/3,
         update_network_settings/4,
         update_portal/3,
         update_portal/4,
         update_trust_store/3,
         update_trust_store/4,
         update_user_access_logging_settings/3,
         update_user_access_logging_settings/4,
         update_user_settings/3,
         update_user_settings/4]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% create_ip_access_settings_request() :: #{
%%   <<"additionalEncryptionContext">> => map(),
%%   <<"clientToken">> => string(),
%%   <<"customerManagedKey">> => string(),
%%   <<"description">> => string(),
%%   <<"displayName">> => string(),
%%   <<"ipRules">> := list(ip_rule()()),
%%   <<"tags">> => list(tag()())
%% }
-type create_ip_access_settings_request() :: #{binary() => any()}.


%% Example:
%% ip_rule() :: #{
%%   <<"description">> => string(),
%%   <<"ipRange">> => string()
%% }
-type ip_rule() :: #{binary() => any()}.


%% Example:
%% create_browser_settings_response() :: #{
%%   <<"browserSettingsArn">> => string()
%% }
-type create_browser_settings_response() :: #{binary() => any()}.

%% Example:
%% expire_session_response() :: #{}
-type expire_session_response() :: #{}.


%% Example:
%% get_trust_store_certificate_request() :: #{
%%   <<"thumbprint">> := string()
%% }
-type get_trust_store_certificate_request() :: #{binary() => any()}.


%% Example:
%% create_ip_access_settings_response() :: #{
%%   <<"ipAccessSettingsArn">> => string()
%% }
-type create_ip_access_settings_response() :: #{binary() => any()}.


%% Example:
%% ip_access_settings_summary() :: #{
%%   <<"creationDate">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"displayName">> => string(),
%%   <<"ipAccessSettingsArn">> => string()
%% }
-type ip_access_settings_summary() :: #{binary() => any()}.


%% Example:
%% associate_user_settings_response() :: #{
%%   <<"portalArn">> => string(),
%%   <<"userSettingsArn">> => string()
%% }
-type associate_user_settings_response() :: #{binary() => any()}.


%% Example:
%% cookie_synchronization_configuration() :: #{
%%   <<"allowlist">> => list(cookie_specification()()),
%%   <<"blocklist">> => list(cookie_specification()())
%% }
-type cookie_synchronization_configuration() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"tags">> := list(tag()())
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% trust_store_summary() :: #{
%%   <<"trustStoreArn">> => string()
%% }
-type trust_store_summary() :: #{binary() => any()}.


%% Example:
%% list_ip_access_settings_response() :: #{
%%   <<"ipAccessSettings">> => list(ip_access_settings_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_ip_access_settings_response() :: #{binary() => any()}.

%% Example:
%% get_portal_request() :: #{}
-type get_portal_request() :: #{}.

%% Example:
%% get_network_settings_request() :: #{}
-type get_network_settings_request() :: #{}.


%% Example:
%% create_user_access_logging_settings_response() :: #{
%%   <<"userAccessLoggingSettingsArn">> => string()
%% }
-type create_user_access_logging_settings_response() :: #{binary() => any()}.


%% Example:
%% session_summary() :: #{
%%   <<"endTime">> => non_neg_integer(),
%%   <<"portalArn">> => string(),
%%   <<"sessionId">> => string(),
%%   <<"startTime">> => non_neg_integer(),
%%   <<"status">> => list(any()),
%%   <<"username">> => string()
%% }
-type session_summary() :: #{binary() => any()}.


%% Example:
%% list_identity_providers_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_identity_providers_request() :: #{binary() => any()}.


%% Example:
%% get_session_response() :: #{
%%   <<"session">> => session()
%% }
-type get_session_response() :: #{binary() => any()}.

%% Example:
%% get_portal_service_provider_metadata_request() :: #{}
-type get_portal_service_provider_metadata_request() :: #{}.


%% Example:
%% list_trust_store_certificates_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_trust_store_certificates_request() :: #{binary() => any()}.


%% Example:
%% update_identity_provider_response() :: #{
%%   <<"identityProvider">> => identity_provider()
%% }
-type update_identity_provider_response() :: #{binary() => any()}.


%% Example:
%% get_identity_provider_response() :: #{
%%   <<"identityProvider">> => identity_provider()
%% }
-type get_identity_provider_response() :: #{binary() => any()}.


%% Example:
%% update_browser_settings_request() :: #{
%%   <<"browserPolicy">> => string(),
%%   <<"clientToken">> => string()
%% }
-type update_browser_settings_request() :: #{binary() => any()}.


%% Example:
%% list_user_access_logging_settings_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_user_access_logging_settings_request() :: #{binary() => any()}.


%% Example:
%% update_network_settings_response() :: #{
%%   <<"networkSettings">> => network_settings()
%% }
-type update_network_settings_response() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% create_network_settings_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"securityGroupIds">> := list(string()()),
%%   <<"subnetIds">> := list(string()()),
%%   <<"tags">> => list(tag()()),
%%   <<"vpcId">> := string()
%% }
-type create_network_settings_request() :: #{binary() => any()}.

%% Example:
%% get_trust_store_request() :: #{}
-type get_trust_store_request() :: #{}.


%% Example:
%% inline_redaction_configuration() :: #{
%%   <<"globalConfidenceLevel">> => integer(),
%%   <<"globalEnforcedUrls">> => list(string()()),
%%   <<"globalExemptUrls">> => list(string()()),
%%   <<"inlineRedactionPatterns">> => list(inline_redaction_pattern()())
%% }
-type inline_redaction_configuration() :: #{binary() => any()}.


%% Example:
%% associate_trust_store_request() :: #{
%%   <<"trustStoreArn">> := string()
%% }
-type associate_trust_store_request() :: #{binary() => any()}.


%% Example:
%% cookie_specification() :: #{
%%   <<"domain">> => string(),
%%   <<"name">> => string(),
%%   <<"path">> => string()
%% }
-type cookie_specification() :: #{binary() => any()}.

%% Example:
%% disassociate_trust_store_response() :: #{}
-type disassociate_trust_store_response() :: #{}.


%% Example:
%% associate_user_access_logging_settings_request() :: #{
%%   <<"userAccessLoggingSettingsArn">> := string()
%% }
-type associate_user_access_logging_settings_request() :: #{binary() => any()}.


%% Example:
%% associate_user_settings_request() :: #{
%%   <<"userSettingsArn">> := string()
%% }
-type associate_user_settings_request() :: #{binary() => any()}.


%% Example:
%% create_identity_provider_response() :: #{
%%   <<"identityProviderArn">> => string()
%% }
-type create_identity_provider_response() :: #{binary() => any()}.


%% Example:
%% list_browser_settings_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_browser_settings_request() :: #{binary() => any()}.

%% Example:
%% delete_user_access_logging_settings_request() :: #{}
-type delete_user_access_logging_settings_request() :: #{}.


%% Example:
%% create_portal_response() :: #{
%%   <<"portalArn">> => string(),
%%   <<"portalEndpoint">> => string()
%% }
-type create_portal_response() :: #{binary() => any()}.


%% Example:
%% associate_ip_access_settings_response() :: #{
%%   <<"ipAccessSettingsArn">> => string(),
%%   <<"portalArn">> => string()
%% }
-type associate_ip_access_settings_response() :: #{binary() => any()}.


%% Example:
%% list_user_settings_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"userSettings">> => list(user_settings_summary()())
%% }
-type list_user_settings_response() :: #{binary() => any()}.


%% Example:
%% get_trust_store_response() :: #{
%%   <<"trustStore">> => trust_store()
%% }
-type get_trust_store_response() :: #{binary() => any()}.


%% Example:
%% create_data_protection_settings_response() :: #{
%%   <<"dataProtectionSettingsArn">> => string()
%% }
-type create_data_protection_settings_response() :: #{binary() => any()}.


%% Example:
%% user_access_logging_settings() :: #{
%%   <<"associatedPortalArns">> => list(string()()),
%%   <<"kinesisStreamArn">> => string(),
%%   <<"userAccessLoggingSettingsArn">> => string()
%% }
-type user_access_logging_settings() :: #{binary() => any()}.

%% Example:
%% get_user_access_logging_settings_request() :: #{}
-type get_user_access_logging_settings_request() :: #{}.

%% Example:
%% delete_identity_provider_request() :: #{}
-type delete_identity_provider_request() :: #{}.

%% Example:
%% expire_session_request() :: #{}
-type expire_session_request() :: #{}.

%% Example:
%% disassociate_browser_settings_response() :: #{}
-type disassociate_browser_settings_response() :: #{}.


%% Example:
%% list_ip_access_settings_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_ip_access_settings_request() :: #{binary() => any()}.


%% Example:
%% get_user_settings_response() :: #{
%%   <<"userSettings">> => user_settings()
%% }
-type get_user_settings_response() :: #{binary() => any()}.


%% Example:
%% update_ip_access_settings_response() :: #{
%%   <<"ipAccessSettings">> => ip_access_settings()
%% }
-type update_ip_access_settings_response() :: #{binary() => any()}.


%% Example:
%% associate_trust_store_response() :: #{
%%   <<"portalArn">> => string(),
%%   <<"trustStoreArn">> => string()
%% }
-type associate_trust_store_response() :: #{binary() => any()}.


%% Example:
%% update_trust_store_request() :: #{
%%   <<"certificatesToAdd">> => list(binary()()),
%%   <<"certificatesToDelete">> => list(string()()),
%%   <<"clientToken">> => string()
%% }
-type update_trust_store_request() :: #{binary() => any()}.


%% Example:
%% user_settings_summary() :: #{
%%   <<"cookieSynchronizationConfiguration">> => cookie_synchronization_configuration(),
%%   <<"copyAllowed">> => string(),
%%   <<"deepLinkAllowed">> => string(),
%%   <<"disconnectTimeoutInMinutes">> => integer(),
%%   <<"downloadAllowed">> => string(),
%%   <<"idleDisconnectTimeoutInMinutes">> => integer(),
%%   <<"pasteAllowed">> => string(),
%%   <<"printAllowed">> => string(),
%%   <<"toolbarConfiguration">> => toolbar_configuration(),
%%   <<"uploadAllowed">> => string(),
%%   <<"userSettingsArn">> => string()
%% }
-type user_settings_summary() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"tagKeys">> := list(string()())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% user_access_logging_settings_summary() :: #{
%%   <<"kinesisStreamArn">> => string(),
%%   <<"userAccessLoggingSettingsArn">> => string()
%% }
-type user_access_logging_settings_summary() :: #{binary() => any()}.

%% Example:
%% delete_user_settings_response() :: #{}
-type delete_user_settings_response() :: #{}.


%% Example:
%% associate_network_settings_request() :: #{
%%   <<"networkSettingsArn">> := string()
%% }
-type associate_network_settings_request() :: #{binary() => any()}.

%% Example:
%% get_session_request() :: #{}
-type get_session_request() :: #{}.


%% Example:
%% associate_browser_settings_request() :: #{
%%   <<"browserSettingsArn">> := string()
%% }
-type associate_browser_settings_request() :: #{binary() => any()}.

%% Example:
%% delete_data_protection_settings_response() :: #{}
-type delete_data_protection_settings_response() :: #{}.


%% Example:
%% list_trust_stores_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_trust_stores_request() :: #{binary() => any()}.

%% Example:
%% delete_trust_store_request() :: #{}
-type delete_trust_store_request() :: #{}.

%% Example:
%% delete_browser_settings_request() :: #{}
-type delete_browser_settings_request() :: #{}.


%% Example:
%% certificate_summary() :: #{
%%   <<"issuer">> => string(),
%%   <<"notValidAfter">> => non_neg_integer(),
%%   <<"notValidBefore">> => non_neg_integer(),
%%   <<"subject">> => string(),
%%   <<"thumbprint">> => string()
%% }
-type certificate_summary() :: #{binary() => any()}.

%% Example:
%% get_browser_settings_request() :: #{}
-type get_browser_settings_request() :: #{}.


%% Example:
%% get_ip_access_settings_response() :: #{
%%   <<"ipAccessSettings">> => ip_access_settings()
%% }
-type get_ip_access_settings_response() :: #{binary() => any()}.


%% Example:
%% network_settings() :: #{
%%   <<"associatedPortalArns">> => list(string()()),
%%   <<"networkSettingsArn">> => string(),
%%   <<"securityGroupIds">> => list(string()()),
%%   <<"subnetIds">> => list(string()()),
%%   <<"vpcId">> => string()
%% }
-type network_settings() :: #{binary() => any()}.


%% Example:
%% list_portals_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_portals_request() :: #{binary() => any()}.


%% Example:
%% inline_redaction_pattern() :: #{
%%   <<"builtInPatternId">> => string(),
%%   <<"confidenceLevel">> => integer(),
%%   <<"customPattern">> => custom_pattern(),
%%   <<"enforcedUrls">> => list(string()()),
%%   <<"exemptUrls">> => list(string()()),
%%   <<"redactionPlaceHolder">> => redaction_place_holder()
%% }
-type inline_redaction_pattern() :: #{binary() => any()}.


%% Example:
%% list_sessions_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"sessions">> => list(session_summary()())
%% }
-type list_sessions_response() :: #{binary() => any()}.

%% Example:
%% delete_ip_access_settings_request() :: #{}
-type delete_ip_access_settings_request() :: #{}.

%% Example:
%% delete_portal_request() :: #{}
-type delete_portal_request() :: #{}.


%% Example:
%% update_user_settings_response() :: #{
%%   <<"userSettings">> => user_settings()
%% }
-type update_user_settings_response() :: #{binary() => any()}.


%% Example:
%% create_trust_store_request() :: #{
%%   <<"certificateList">> := list(binary()()),
%%   <<"clientToken">> => string(),
%%   <<"tags">> => list(tag()())
%% }
-type create_trust_store_request() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => string(),
%%   <<"resourceId">> => string(),
%%   <<"resourceType">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => string(),
%%   <<"resourceId">> => string(),
%%   <<"resourceType">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% associate_network_settings_response() :: #{
%%   <<"networkSettingsArn">> => string(),
%%   <<"portalArn">> => string()
%% }
-type associate_network_settings_response() :: #{binary() => any()}.


%% Example:
%% update_user_access_logging_settings_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"kinesisStreamArn">> => string()
%% }
-type update_user_access_logging_settings_request() :: #{binary() => any()}.


%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% get_user_settings_request() :: #{}
-type get_user_settings_request() :: #{}.


%% Example:
%% create_network_settings_response() :: #{
%%   <<"networkSettingsArn">> => string()
%% }
-type create_network_settings_response() :: #{binary() => any()}.


%% Example:
%% create_browser_settings_request() :: #{
%%   <<"additionalEncryptionContext">> => map(),
%%   <<"browserPolicy">> := string(),
%%   <<"clientToken">> => string(),
%%   <<"customerManagedKey">> => string(),
%%   <<"tags">> => list(tag()())
%% }
-type create_browser_settings_request() :: #{binary() => any()}.

%% Example:
%% disassociate_network_settings_request() :: #{}
-type disassociate_network_settings_request() :: #{}.

%% Example:
%% delete_portal_response() :: #{}
-type delete_portal_response() :: #{}.


%% Example:
%% associate_data_protection_settings_response() :: #{
%%   <<"dataProtectionSettingsArn">> => string(),
%%   <<"portalArn">> => string()
%% }
-type associate_data_protection_settings_response() :: #{binary() => any()}.


%% Example:
%% list_network_settings_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_network_settings_request() :: #{binary() => any()}.


%% Example:
%% create_portal_request() :: #{
%%   <<"additionalEncryptionContext">> => map(),
%%   <<"authenticationType">> => string(),
%%   <<"clientToken">> => string(),
%%   <<"customerManagedKey">> => string(),
%%   <<"displayName">> => string(),
%%   <<"instanceType">> => string(),
%%   <<"maxConcurrentSessions">> => integer(),
%%   <<"tags">> => list(tag()())
%% }
-type create_portal_request() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"message">> => string(),
%%   <<"quotaCode">> => string(),
%%   <<"resourceId">> => string(),
%%   <<"resourceType">> => string(),
%%   <<"serviceCode">> => string()
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% update_network_settings_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"securityGroupIds">> => list(string()()),
%%   <<"subnetIds">> => list(string()()),
%%   <<"vpcId">> => string()
%% }
-type update_network_settings_request() :: #{binary() => any()}.


%% Example:
%% update_portal_response() :: #{
%%   <<"portal">> => portal()
%% }
-type update_portal_response() :: #{binary() => any()}.


%% Example:
%% get_network_settings_response() :: #{
%%   <<"networkSettings">> => network_settings()
%% }
-type get_network_settings_response() :: #{binary() => any()}.


%% Example:
%% data_protection_settings() :: #{
%%   <<"additionalEncryptionContext">> => map(),
%%   <<"associatedPortalArns">> => list(string()()),
%%   <<"creationDate">> => non_neg_integer(),
%%   <<"customerManagedKey">> => string(),
%%   <<"dataProtectionSettingsArn">> => string(),
%%   <<"description">> => string(),
%%   <<"displayName">> => string(),
%%   <<"inlineRedactionConfiguration">> => inline_redaction_configuration()
%% }
-type data_protection_settings() :: #{binary() => any()}.

%% Example:
%% disassociate_user_settings_response() :: #{}
-type disassociate_user_settings_response() :: #{}.


%% Example:
%% update_data_protection_settings_response() :: #{
%%   <<"dataProtectionSettings">> => data_protection_settings()
%% }
-type update_data_protection_settings_response() :: #{binary() => any()}.


%% Example:
%% browser_settings_summary() :: #{
%%   <<"browserSettingsArn">> => string()
%% }
-type browser_settings_summary() :: #{binary() => any()}.


%% Example:
%% update_data_protection_settings_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"description">> => string(),
%%   <<"displayName">> => string(),
%%   <<"inlineRedactionConfiguration">> => inline_redaction_configuration()
%% }
-type update_data_protection_settings_request() :: #{binary() => any()}.


%% Example:
%% create_user_settings_response() :: #{
%%   <<"userSettingsArn">> => string()
%% }
-type create_user_settings_response() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> => list(tag()())
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% list_trust_stores_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"trustStores">> => list(trust_store_summary()())
%% }
-type list_trust_stores_response() :: #{binary() => any()}.

%% Example:
%% disassociate_browser_settings_request() :: #{}
-type disassociate_browser_settings_request() :: #{}.

%% Example:
%% delete_network_settings_request() :: #{}
-type delete_network_settings_request() :: #{}.


%% Example:
%% identity_provider_summary() :: #{
%%   <<"identityProviderArn">> => string(),
%%   <<"identityProviderName">> => string(),
%%   <<"identityProviderType">> => string()
%% }
-type identity_provider_summary() :: #{binary() => any()}.


%% Example:
%% associate_ip_access_settings_request() :: #{
%%   <<"ipAccessSettingsArn">> := string()
%% }
-type associate_ip_access_settings_request() :: #{binary() => any()}.


%% Example:
%% list_sessions_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"sessionId">> => string(),
%%   <<"sortBy">> => list(any()),
%%   <<"status">> => list(any()),
%%   <<"username">> => string()
%% }
-type list_sessions_request() :: #{binary() => any()}.


%% Example:
%% list_data_protection_settings_response() :: #{
%%   <<"dataProtectionSettings">> => list(data_protection_settings_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_data_protection_settings_response() :: #{binary() => any()}.


%% Example:
%% validation_exception_field() :: #{
%%   <<"message">> => string(),
%%   <<"name">> => string()
%% }
-type validation_exception_field() :: #{binary() => any()}.


%% Example:
%% network_settings_summary() :: #{
%%   <<"networkSettingsArn">> => string(),
%%   <<"vpcId">> => string()
%% }
-type network_settings_summary() :: #{binary() => any()}.

%% Example:
%% disassociate_user_access_logging_settings_response() :: #{}
-type disassociate_user_access_logging_settings_response() :: #{}.


%% Example:
%% session() :: #{
%%   <<"clientIpAddresses">> => list(string()()),
%%   <<"endTime">> => non_neg_integer(),
%%   <<"portalArn">> => string(),
%%   <<"sessionId">> => string(),
%%   <<"startTime">> => non_neg_integer(),
%%   <<"status">> => list(any()),
%%   <<"username">> => string()
%% }
-type session() :: #{binary() => any()}.


%% Example:
%% get_portal_service_provider_metadata_response() :: #{
%%   <<"portalArn">> => string(),
%%   <<"serviceProviderSamlMetadata">> => string()
%% }
-type get_portal_service_provider_metadata_response() :: #{binary() => any()}.


%% Example:
%% update_user_settings_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"cookieSynchronizationConfiguration">> => cookie_synchronization_configuration(),
%%   <<"copyAllowed">> => string(),
%%   <<"deepLinkAllowed">> => string(),
%%   <<"disconnectTimeoutInMinutes">> => integer(),
%%   <<"downloadAllowed">> => string(),
%%   <<"idleDisconnectTimeoutInMinutes">> => integer(),
%%   <<"pasteAllowed">> => string(),
%%   <<"printAllowed">> => string(),
%%   <<"toolbarConfiguration">> => toolbar_configuration(),
%%   <<"uploadAllowed">> => string()
%% }
-type update_user_settings_request() :: #{binary() => any()}.

%% Example:
%% disassociate_ip_access_settings_response() :: #{}
-type disassociate_ip_access_settings_response() :: #{}.


%% Example:
%% list_network_settings_response() :: #{
%%   <<"networkSettings">> => list(network_settings_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_network_settings_response() :: #{binary() => any()}.


%% Example:
%% identity_provider() :: #{
%%   <<"identityProviderArn">> => string(),
%%   <<"identityProviderDetails">> => map(),
%%   <<"identityProviderName">> => string(),
%%   <<"identityProviderType">> => string()
%% }
-type identity_provider() :: #{binary() => any()}.

%% Example:
%% delete_ip_access_settings_response() :: #{}
-type delete_ip_access_settings_response() :: #{}.


%% Example:
%% get_browser_settings_response() :: #{
%%   <<"browserSettings">> => browser_settings()
%% }
-type get_browser_settings_response() :: #{binary() => any()}.


%% Example:
%% list_trust_store_certificates_response() :: #{
%%   <<"certificateList">> => list(certificate_summary()()),
%%   <<"nextToken">> => string(),
%%   <<"trustStoreArn">> => string()
%% }
-type list_trust_store_certificates_response() :: #{binary() => any()}.


%% Example:
%% list_portals_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"portals">> => list(portal_summary()())
%% }
-type list_portals_response() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => string(),
%%   <<"retryAfterSeconds">> => integer()
%% }
-type internal_server_exception() :: #{binary() => any()}.

%% Example:
%% delete_data_protection_settings_request() :: #{}
-type delete_data_protection_settings_request() :: #{}.


%% Example:
%% certificate() :: #{
%%   <<"body">> => binary(),
%%   <<"issuer">> => string(),
%%   <<"notValidAfter">> => non_neg_integer(),
%%   <<"notValidBefore">> => non_neg_integer(),
%%   <<"subject">> => string(),
%%   <<"thumbprint">> => string()
%% }
-type certificate() :: #{binary() => any()}.

%% Example:
%% disassociate_ip_access_settings_request() :: #{}
-type disassociate_ip_access_settings_request() :: #{}.


%% Example:
%% get_trust_store_certificate_response() :: #{
%%   <<"certificate">> => certificate(),
%%   <<"trustStoreArn">> => string()
%% }
-type get_trust_store_certificate_response() :: #{binary() => any()}.


%% Example:
%% create_identity_provider_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"identityProviderDetails">> := map(),
%%   <<"identityProviderName">> := string(),
%%   <<"identityProviderType">> := string(),
%%   <<"portalArn">> := string(),
%%   <<"tags">> => list(tag()())
%% }
-type create_identity_provider_request() :: #{binary() => any()}.


%% Example:
%% update_browser_settings_response() :: #{
%%   <<"browserSettings">> => browser_settings()
%% }
-type update_browser_settings_response() :: #{binary() => any()}.

%% Example:
%% delete_network_settings_response() :: #{}
-type delete_network_settings_response() :: #{}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% create_trust_store_response() :: #{
%%   <<"trustStoreArn">> => string()
%% }
-type create_trust_store_response() :: #{binary() => any()}.

%% Example:
%% delete_identity_provider_response() :: #{}
-type delete_identity_provider_response() :: #{}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% redaction_place_holder() :: #{
%%   <<"redactionPlaceHolderText">> => string(),
%%   <<"redactionPlaceHolderType">> => string()
%% }
-type redaction_place_holder() :: #{binary() => any()}.


%% Example:
%% create_user_settings_request() :: #{
%%   <<"additionalEncryptionContext">> => map(),
%%   <<"clientToken">> => string(),
%%   <<"cookieSynchronizationConfiguration">> => cookie_synchronization_configuration(),
%%   <<"copyAllowed">> := string(),
%%   <<"customerManagedKey">> => string(),
%%   <<"deepLinkAllowed">> => string(),
%%   <<"disconnectTimeoutInMinutes">> => integer(),
%%   <<"downloadAllowed">> := string(),
%%   <<"idleDisconnectTimeoutInMinutes">> => integer(),
%%   <<"pasteAllowed">> := string(),
%%   <<"printAllowed">> := string(),
%%   <<"tags">> => list(tag()()),
%%   <<"toolbarConfiguration">> => toolbar_configuration(),
%%   <<"uploadAllowed">> := string()
%% }
-type create_user_settings_request() :: #{binary() => any()}.

%% Example:
%% delete_user_settings_request() :: #{}
-type delete_user_settings_request() :: #{}.


%% Example:
%% data_protection_settings_summary() :: #{
%%   <<"creationDate">> => non_neg_integer(),
%%   <<"dataProtectionSettingsArn">> => string(),
%%   <<"description">> => string(),
%%   <<"displayName">> => string()
%% }
-type data_protection_settings_summary() :: #{binary() => any()}.


%% Example:
%% update_portal_request() :: #{
%%   <<"authenticationType">> => string(),
%%   <<"displayName">> => string(),
%%   <<"instanceType">> => string(),
%%   <<"maxConcurrentSessions">> => integer()
%% }
-type update_portal_request() :: #{binary() => any()}.

%% Example:
%% get_data_protection_settings_request() :: #{}
-type get_data_protection_settings_request() :: #{}.


%% Example:
%% create_data_protection_settings_request() :: #{
%%   <<"additionalEncryptionContext">> => map(),
%%   <<"clientToken">> => string(),
%%   <<"customerManagedKey">> => string(),
%%   <<"description">> => string(),
%%   <<"displayName">> => string(),
%%   <<"inlineRedactionConfiguration">> => inline_redaction_configuration(),
%%   <<"tags">> => list(tag()())
%% }
-type create_data_protection_settings_request() :: #{binary() => any()}.


%% Example:
%% ip_access_settings() :: #{
%%   <<"additionalEncryptionContext">> => map(),
%%   <<"associatedPortalArns">> => list(string()()),
%%   <<"creationDate">> => non_neg_integer(),
%%   <<"customerManagedKey">> => string(),
%%   <<"description">> => string(),
%%   <<"displayName">> => string(),
%%   <<"ipAccessSettingsArn">> => string(),
%%   <<"ipRules">> => list(ip_rule()())
%% }
-type ip_access_settings() :: #{binary() => any()}.

%% Example:
%% disassociate_data_protection_settings_response() :: #{}
-type disassociate_data_protection_settings_response() :: #{}.


%% Example:
%% validation_exception() :: #{
%%   <<"fieldList">> => list(validation_exception_field()()),
%%   <<"message">> => string(),
%%   <<"reason">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.

%% Example:
%% get_ip_access_settings_request() :: #{}
-type get_ip_access_settings_request() :: #{}.


%% Example:
%% list_identity_providers_response() :: #{
%%   <<"identityProviders">> => list(identity_provider_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_identity_providers_response() :: #{binary() => any()}.

%% Example:
%% disassociate_user_access_logging_settings_request() :: #{}
-type disassociate_user_access_logging_settings_request() :: #{}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => string(),
%%   <<"quotaCode">> => string(),
%%   <<"retryAfterSeconds">> => integer(),
%%   <<"serviceCode">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% associate_data_protection_settings_request() :: #{
%%   <<"dataProtectionSettingsArn">> := string()
%% }
-type associate_data_protection_settings_request() :: #{binary() => any()}.


%% Example:
%% list_browser_settings_response() :: #{
%%   <<"browserSettings">> => list(browser_settings_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_browser_settings_response() :: #{binary() => any()}.


%% Example:
%% toolbar_configuration() :: #{
%%   <<"hiddenToolbarItems">> => list(string()()),
%%   <<"maxDisplayResolution">> => string(),
%%   <<"toolbarType">> => string(),
%%   <<"visualMode">> => string()
%% }
-type toolbar_configuration() :: #{binary() => any()}.


%% Example:
%% list_data_protection_settings_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_data_protection_settings_request() :: #{binary() => any()}.


%% Example:
%% associate_user_access_logging_settings_response() :: #{
%%   <<"portalArn">> => string(),
%%   <<"userAccessLoggingSettingsArn">> => string()
%% }
-type associate_user_access_logging_settings_response() :: #{binary() => any()}.


%% Example:
%% portal_summary() :: #{
%%   <<"authenticationType">> => string(),
%%   <<"browserSettingsArn">> => string(),
%%   <<"browserType">> => string(),
%%   <<"creationDate">> => non_neg_integer(),
%%   <<"dataProtectionSettingsArn">> => string(),
%%   <<"displayName">> => string(),
%%   <<"instanceType">> => string(),
%%   <<"ipAccessSettingsArn">> => string(),
%%   <<"maxConcurrentSessions">> => integer(),
%%   <<"networkSettingsArn">> => string(),
%%   <<"portalArn">> => string(),
%%   <<"portalEndpoint">> => string(),
%%   <<"portalStatus">> => string(),
%%   <<"rendererType">> => string(),
%%   <<"trustStoreArn">> => string(),
%%   <<"userAccessLoggingSettingsArn">> => string(),
%%   <<"userSettingsArn">> => string()
%% }
-type portal_summary() :: #{binary() => any()}.

%% Example:
%% get_identity_provider_request() :: #{}
-type get_identity_provider_request() :: #{}.


%% Example:
%% associate_browser_settings_response() :: #{
%%   <<"browserSettingsArn">> => string(),
%%   <<"portalArn">> => string()
%% }
-type associate_browser_settings_response() :: #{binary() => any()}.


%% Example:
%% user_settings() :: #{
%%   <<"additionalEncryptionContext">> => map(),
%%   <<"associatedPortalArns">> => list(string()()),
%%   <<"cookieSynchronizationConfiguration">> => cookie_synchronization_configuration(),
%%   <<"copyAllowed">> => string(),
%%   <<"customerManagedKey">> => string(),
%%   <<"deepLinkAllowed">> => string(),
%%   <<"disconnectTimeoutInMinutes">> => integer(),
%%   <<"downloadAllowed">> => string(),
%%   <<"idleDisconnectTimeoutInMinutes">> => integer(),
%%   <<"pasteAllowed">> => string(),
%%   <<"printAllowed">> => string(),
%%   <<"toolbarConfiguration">> => toolbar_configuration(),
%%   <<"uploadAllowed">> => string(),
%%   <<"userSettingsArn">> => string()
%% }
-type user_settings() :: #{binary() => any()}.


%% Example:
%% get_portal_response() :: #{
%%   <<"portal">> => portal()
%% }
-type get_portal_response() :: #{binary() => any()}.


%% Example:
%% custom_pattern() :: #{
%%   <<"keywordRegex">> => string(),
%%   <<"patternDescription">> => string(),
%%   <<"patternName">> => string(),
%%   <<"patternRegex">> => string()
%% }
-type custom_pattern() :: #{binary() => any()}.


%% Example:
%% create_user_access_logging_settings_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"kinesisStreamArn">> := string(),
%%   <<"tags">> => list(tag()())
%% }
-type create_user_access_logging_settings_request() :: #{binary() => any()}.


%% Example:
%% update_identity_provider_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"identityProviderDetails">> => map(),
%%   <<"identityProviderName">> => string(),
%%   <<"identityProviderType">> => string()
%% }
-type update_identity_provider_request() :: #{binary() => any()}.


%% Example:
%% list_user_access_logging_settings_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"userAccessLoggingSettings">> => list(user_access_logging_settings_summary()())
%% }
-type list_user_access_logging_settings_response() :: #{binary() => any()}.


%% Example:
%% get_data_protection_settings_response() :: #{
%%   <<"dataProtectionSettings">> => data_protection_settings()
%% }
-type get_data_protection_settings_response() :: #{binary() => any()}.

%% Example:
%% disassociate_user_settings_request() :: #{}
-type disassociate_user_settings_request() :: #{}.

%% Example:
%% disassociate_data_protection_settings_request() :: #{}
-type disassociate_data_protection_settings_request() :: #{}.


%% Example:
%% update_ip_access_settings_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"description">> => string(),
%%   <<"displayName">> => string(),
%%   <<"ipRules">> => list(ip_rule()())
%% }
-type update_ip_access_settings_request() :: #{binary() => any()}.


%% Example:
%% browser_settings() :: #{
%%   <<"additionalEncryptionContext">> => map(),
%%   <<"associatedPortalArns">> => list(string()()),
%%   <<"browserPolicy">> => string(),
%%   <<"browserSettingsArn">> => string(),
%%   <<"customerManagedKey">> => string()
%% }
-type browser_settings() :: #{binary() => any()}.


%% Example:
%% update_user_access_logging_settings_response() :: #{
%%   <<"userAccessLoggingSettings">> => user_access_logging_settings()
%% }
-type update_user_access_logging_settings_response() :: #{binary() => any()}.


%% Example:
%% list_user_settings_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_user_settings_request() :: #{binary() => any()}.


%% Example:
%% too_many_tags_exception() :: #{
%%   <<"message">> => string(),
%%   <<"resourceName">> => string()
%% }
-type too_many_tags_exception() :: #{binary() => any()}.

%% Example:
%% delete_browser_settings_response() :: #{}
-type delete_browser_settings_response() :: #{}.

%% Example:
%% disassociate_network_settings_response() :: #{}
-type disassociate_network_settings_response() :: #{}.

%% Example:
%% delete_user_access_logging_settings_response() :: #{}
-type delete_user_access_logging_settings_response() :: #{}.

%% Example:
%% delete_trust_store_response() :: #{}
-type delete_trust_store_response() :: #{}.


%% Example:
%% get_user_access_logging_settings_response() :: #{
%%   <<"userAccessLoggingSettings">> => user_access_logging_settings()
%% }
-type get_user_access_logging_settings_response() :: #{binary() => any()}.


%% Example:
%% portal() :: #{
%%   <<"additionalEncryptionContext">> => map(),
%%   <<"authenticationType">> => string(),
%%   <<"browserSettingsArn">> => string(),
%%   <<"browserType">> => string(),
%%   <<"creationDate">> => non_neg_integer(),
%%   <<"customerManagedKey">> => string(),
%%   <<"dataProtectionSettingsArn">> => string(),
%%   <<"displayName">> => string(),
%%   <<"instanceType">> => string(),
%%   <<"ipAccessSettingsArn">> => string(),
%%   <<"maxConcurrentSessions">> => integer(),
%%   <<"networkSettingsArn">> => string(),
%%   <<"portalArn">> => string(),
%%   <<"portalEndpoint">> => string(),
%%   <<"portalStatus">> => string(),
%%   <<"rendererType">> => string(),
%%   <<"statusReason">> => string(),
%%   <<"trustStoreArn">> => string(),
%%   <<"userAccessLoggingSettingsArn">> => string(),
%%   <<"userSettingsArn">> => string()
%% }
-type portal() :: #{binary() => any()}.


%% Example:
%% trust_store() :: #{
%%   <<"associatedPortalArns">> => list(string()()),
%%   <<"trustStoreArn">> => string()
%% }
-type trust_store() :: #{binary() => any()}.


%% Example:
%% update_trust_store_response() :: #{
%%   <<"trustStoreArn">> => string()
%% }
-type update_trust_store_response() :: #{binary() => any()}.

%% Example:
%% disassociate_trust_store_request() :: #{}
-type disassociate_trust_store_request() :: #{}.

-type associate_browser_settings_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type associate_data_protection_settings_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type associate_ip_access_settings_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type associate_network_settings_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type associate_trust_store_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type associate_user_access_logging_settings_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type associate_user_settings_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_browser_settings_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_data_protection_settings_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_identity_provider_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_ip_access_settings_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_network_settings_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_portal_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_trust_store_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_user_access_logging_settings_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_user_settings_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type delete_browser_settings_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type delete_data_protection_settings_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type delete_identity_provider_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type delete_ip_access_settings_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type delete_network_settings_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type delete_portal_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type delete_trust_store_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type delete_user_access_logging_settings_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type delete_user_settings_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type disassociate_browser_settings_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type disassociate_data_protection_settings_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type disassociate_ip_access_settings_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type disassociate_network_settings_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type disassociate_trust_store_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type disassociate_user_access_logging_settings_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type disassociate_user_settings_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type expire_session_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_browser_settings_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_data_protection_settings_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_identity_provider_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_ip_access_settings_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_network_settings_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_portal_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_portal_service_provider_metadata_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_session_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_trust_store_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_trust_store_certificate_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_user_access_logging_settings_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_user_settings_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_browser_settings_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_data_protection_settings_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_identity_providers_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_ip_access_settings_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_network_settings_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_portals_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_sessions_errors() ::
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

-type list_trust_store_certificates_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_trust_stores_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_user_access_logging_settings_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_user_settings_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type tag_resource_errors() ::
    too_many_tags_exception() | 
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

-type update_browser_settings_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_data_protection_settings_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_identity_provider_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_ip_access_settings_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_network_settings_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_portal_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_trust_store_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type update_user_access_logging_settings_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_user_settings_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Associates a browser settings resource with a web portal.
-spec associate_browser_settings(aws_client:aws_client(), binary() | list(), associate_browser_settings_request()) ->
    {ok, associate_browser_settings_response(), tuple()} |
    {error, any()} |
    {error, associate_browser_settings_errors(), tuple()}.
associate_browser_settings(Client, PortalArn, Input) ->
    associate_browser_settings(Client, PortalArn, Input, []).

-spec associate_browser_settings(aws_client:aws_client(), binary() | list(), associate_browser_settings_request(), proplists:proplist()) ->
    {ok, associate_browser_settings_response(), tuple()} |
    {error, any()} |
    {error, associate_browser_settings_errors(), tuple()}.
associate_browser_settings(Client, PortalArn, Input0, Options0) ->
    Method = put,
    Path = ["/portals/", aws_util:encode_multi_segment_uri(PortalArn), "/browserSettings"],
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
                     {<<"browserSettingsArn">>, <<"browserSettingsArn">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Associates a data protection settings resource with a web portal.
-spec associate_data_protection_settings(aws_client:aws_client(), binary() | list(), associate_data_protection_settings_request()) ->
    {ok, associate_data_protection_settings_response(), tuple()} |
    {error, any()} |
    {error, associate_data_protection_settings_errors(), tuple()}.
associate_data_protection_settings(Client, PortalArn, Input) ->
    associate_data_protection_settings(Client, PortalArn, Input, []).

-spec associate_data_protection_settings(aws_client:aws_client(), binary() | list(), associate_data_protection_settings_request(), proplists:proplist()) ->
    {ok, associate_data_protection_settings_response(), tuple()} |
    {error, any()} |
    {error, associate_data_protection_settings_errors(), tuple()}.
associate_data_protection_settings(Client, PortalArn, Input0, Options0) ->
    Method = put,
    Path = ["/portals/", aws_util:encode_multi_segment_uri(PortalArn), "/dataProtectionSettings"],
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
                     {<<"dataProtectionSettingsArn">>, <<"dataProtectionSettingsArn">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Associates an IP access settings resource with a web portal.
-spec associate_ip_access_settings(aws_client:aws_client(), binary() | list(), associate_ip_access_settings_request()) ->
    {ok, associate_ip_access_settings_response(), tuple()} |
    {error, any()} |
    {error, associate_ip_access_settings_errors(), tuple()}.
associate_ip_access_settings(Client, PortalArn, Input) ->
    associate_ip_access_settings(Client, PortalArn, Input, []).

-spec associate_ip_access_settings(aws_client:aws_client(), binary() | list(), associate_ip_access_settings_request(), proplists:proplist()) ->
    {ok, associate_ip_access_settings_response(), tuple()} |
    {error, any()} |
    {error, associate_ip_access_settings_errors(), tuple()}.
associate_ip_access_settings(Client, PortalArn, Input0, Options0) ->
    Method = put,
    Path = ["/portals/", aws_util:encode_multi_segment_uri(PortalArn), "/ipAccessSettings"],
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
                     {<<"ipAccessSettingsArn">>, <<"ipAccessSettingsArn">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Associates a network settings resource with a web portal.
-spec associate_network_settings(aws_client:aws_client(), binary() | list(), associate_network_settings_request()) ->
    {ok, associate_network_settings_response(), tuple()} |
    {error, any()} |
    {error, associate_network_settings_errors(), tuple()}.
associate_network_settings(Client, PortalArn, Input) ->
    associate_network_settings(Client, PortalArn, Input, []).

-spec associate_network_settings(aws_client:aws_client(), binary() | list(), associate_network_settings_request(), proplists:proplist()) ->
    {ok, associate_network_settings_response(), tuple()} |
    {error, any()} |
    {error, associate_network_settings_errors(), tuple()}.
associate_network_settings(Client, PortalArn, Input0, Options0) ->
    Method = put,
    Path = ["/portals/", aws_util:encode_multi_segment_uri(PortalArn), "/networkSettings"],
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
                     {<<"networkSettingsArn">>, <<"networkSettingsArn">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Associates a trust store with a web portal.
-spec associate_trust_store(aws_client:aws_client(), binary() | list(), associate_trust_store_request()) ->
    {ok, associate_trust_store_response(), tuple()} |
    {error, any()} |
    {error, associate_trust_store_errors(), tuple()}.
associate_trust_store(Client, PortalArn, Input) ->
    associate_trust_store(Client, PortalArn, Input, []).

-spec associate_trust_store(aws_client:aws_client(), binary() | list(), associate_trust_store_request(), proplists:proplist()) ->
    {ok, associate_trust_store_response(), tuple()} |
    {error, any()} |
    {error, associate_trust_store_errors(), tuple()}.
associate_trust_store(Client, PortalArn, Input0, Options0) ->
    Method = put,
    Path = ["/portals/", aws_util:encode_multi_segment_uri(PortalArn), "/trustStores"],
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
                     {<<"trustStoreArn">>, <<"trustStoreArn">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Associates a user access logging settings resource with a web portal.
-spec associate_user_access_logging_settings(aws_client:aws_client(), binary() | list(), associate_user_access_logging_settings_request()) ->
    {ok, associate_user_access_logging_settings_response(), tuple()} |
    {error, any()} |
    {error, associate_user_access_logging_settings_errors(), tuple()}.
associate_user_access_logging_settings(Client, PortalArn, Input) ->
    associate_user_access_logging_settings(Client, PortalArn, Input, []).

-spec associate_user_access_logging_settings(aws_client:aws_client(), binary() | list(), associate_user_access_logging_settings_request(), proplists:proplist()) ->
    {ok, associate_user_access_logging_settings_response(), tuple()} |
    {error, any()} |
    {error, associate_user_access_logging_settings_errors(), tuple()}.
associate_user_access_logging_settings(Client, PortalArn, Input0, Options0) ->
    Method = put,
    Path = ["/portals/", aws_util:encode_multi_segment_uri(PortalArn), "/userAccessLoggingSettings"],
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
                     {<<"userAccessLoggingSettingsArn">>, <<"userAccessLoggingSettingsArn">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Associates a user settings resource with a web portal.
-spec associate_user_settings(aws_client:aws_client(), binary() | list(), associate_user_settings_request()) ->
    {ok, associate_user_settings_response(), tuple()} |
    {error, any()} |
    {error, associate_user_settings_errors(), tuple()}.
associate_user_settings(Client, PortalArn, Input) ->
    associate_user_settings(Client, PortalArn, Input, []).

-spec associate_user_settings(aws_client:aws_client(), binary() | list(), associate_user_settings_request(), proplists:proplist()) ->
    {ok, associate_user_settings_response(), tuple()} |
    {error, any()} |
    {error, associate_user_settings_errors(), tuple()}.
associate_user_settings(Client, PortalArn, Input0, Options0) ->
    Method = put,
    Path = ["/portals/", aws_util:encode_multi_segment_uri(PortalArn), "/userSettings"],
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
                     {<<"userSettingsArn">>, <<"userSettingsArn">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a browser settings resource that can be associated with a web
%% portal.
%%
%% Once
%% associated with a web portal, browser settings control how the browser
%% will behave once a
%% user starts a streaming session for the web portal.
-spec create_browser_settings(aws_client:aws_client(), create_browser_settings_request()) ->
    {ok, create_browser_settings_response(), tuple()} |
    {error, any()} |
    {error, create_browser_settings_errors(), tuple()}.
create_browser_settings(Client, Input) ->
    create_browser_settings(Client, Input, []).

-spec create_browser_settings(aws_client:aws_client(), create_browser_settings_request(), proplists:proplist()) ->
    {ok, create_browser_settings_response(), tuple()} |
    {error, any()} |
    {error, create_browser_settings_errors(), tuple()}.
create_browser_settings(Client, Input0, Options0) ->
    Method = post,
    Path = ["/browserSettings"],
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

%% @doc Creates a data protection settings resource that can be associated
%% with a web portal.
-spec create_data_protection_settings(aws_client:aws_client(), create_data_protection_settings_request()) ->
    {ok, create_data_protection_settings_response(), tuple()} |
    {error, any()} |
    {error, create_data_protection_settings_errors(), tuple()}.
create_data_protection_settings(Client, Input) ->
    create_data_protection_settings(Client, Input, []).

-spec create_data_protection_settings(aws_client:aws_client(), create_data_protection_settings_request(), proplists:proplist()) ->
    {ok, create_data_protection_settings_response(), tuple()} |
    {error, any()} |
    {error, create_data_protection_settings_errors(), tuple()}.
create_data_protection_settings(Client, Input0, Options0) ->
    Method = post,
    Path = ["/dataProtectionSettings"],
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

%% @doc Creates an identity provider resource that is then associated with a
%% web portal.
-spec create_identity_provider(aws_client:aws_client(), create_identity_provider_request()) ->
    {ok, create_identity_provider_response(), tuple()} |
    {error, any()} |
    {error, create_identity_provider_errors(), tuple()}.
create_identity_provider(Client, Input) ->
    create_identity_provider(Client, Input, []).

-spec create_identity_provider(aws_client:aws_client(), create_identity_provider_request(), proplists:proplist()) ->
    {ok, create_identity_provider_response(), tuple()} |
    {error, any()} |
    {error, create_identity_provider_errors(), tuple()}.
create_identity_provider(Client, Input0, Options0) ->
    Method = post,
    Path = ["/identityProviders"],
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

%% @doc Creates an IP access settings resource that can be associated with a
%% web portal.
-spec create_ip_access_settings(aws_client:aws_client(), create_ip_access_settings_request()) ->
    {ok, create_ip_access_settings_response(), tuple()} |
    {error, any()} |
    {error, create_ip_access_settings_errors(), tuple()}.
create_ip_access_settings(Client, Input) ->
    create_ip_access_settings(Client, Input, []).

-spec create_ip_access_settings(aws_client:aws_client(), create_ip_access_settings_request(), proplists:proplist()) ->
    {ok, create_ip_access_settings_response(), tuple()} |
    {error, any()} |
    {error, create_ip_access_settings_errors(), tuple()}.
create_ip_access_settings(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ipAccessSettings"],
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

%% @doc Creates a network settings resource that can be associated with a web
%% portal.
%%
%% Once
%% associated with a web portal, network settings define how streaming
%% instances will connect
%% with your specified VPC.
-spec create_network_settings(aws_client:aws_client(), create_network_settings_request()) ->
    {ok, create_network_settings_response(), tuple()} |
    {error, any()} |
    {error, create_network_settings_errors(), tuple()}.
create_network_settings(Client, Input) ->
    create_network_settings(Client, Input, []).

-spec create_network_settings(aws_client:aws_client(), create_network_settings_request(), proplists:proplist()) ->
    {ok, create_network_settings_response(), tuple()} |
    {error, any()} |
    {error, create_network_settings_errors(), tuple()}.
create_network_settings(Client, Input0, Options0) ->
    Method = post,
    Path = ["/networkSettings"],
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

%% @doc Creates a web portal.
-spec create_portal(aws_client:aws_client(), create_portal_request()) ->
    {ok, create_portal_response(), tuple()} |
    {error, any()} |
    {error, create_portal_errors(), tuple()}.
create_portal(Client, Input) ->
    create_portal(Client, Input, []).

-spec create_portal(aws_client:aws_client(), create_portal_request(), proplists:proplist()) ->
    {ok, create_portal_response(), tuple()} |
    {error, any()} |
    {error, create_portal_errors(), tuple()}.
create_portal(Client, Input0, Options0) ->
    Method = post,
    Path = ["/portals"],
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

%% @doc Creates a trust store that can be associated with a web portal.
%%
%% A trust store contains
%% certificate authority (CA) certificates. Once associated with a web
%% portal, the browser in
%% a streaming session will recognize certificates that have been issued
%% using any of the CAs
%% in the trust store. If your organization has internal websites that use
%% certificates issued
%% by private CAs, you should add the private CA certificate to the trust
%% store.
-spec create_trust_store(aws_client:aws_client(), create_trust_store_request()) ->
    {ok, create_trust_store_response(), tuple()} |
    {error, any()} |
    {error, create_trust_store_errors(), tuple()}.
create_trust_store(Client, Input) ->
    create_trust_store(Client, Input, []).

-spec create_trust_store(aws_client:aws_client(), create_trust_store_request(), proplists:proplist()) ->
    {ok, create_trust_store_response(), tuple()} |
    {error, any()} |
    {error, create_trust_store_errors(), tuple()}.
create_trust_store(Client, Input0, Options0) ->
    Method = post,
    Path = ["/trustStores"],
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

%% @doc Creates a user access logging settings resource that can be
%% associated with a web
%% portal.
-spec create_user_access_logging_settings(aws_client:aws_client(), create_user_access_logging_settings_request()) ->
    {ok, create_user_access_logging_settings_response(), tuple()} |
    {error, any()} |
    {error, create_user_access_logging_settings_errors(), tuple()}.
create_user_access_logging_settings(Client, Input) ->
    create_user_access_logging_settings(Client, Input, []).

-spec create_user_access_logging_settings(aws_client:aws_client(), create_user_access_logging_settings_request(), proplists:proplist()) ->
    {ok, create_user_access_logging_settings_response(), tuple()} |
    {error, any()} |
    {error, create_user_access_logging_settings_errors(), tuple()}.
create_user_access_logging_settings(Client, Input0, Options0) ->
    Method = post,
    Path = ["/userAccessLoggingSettings"],
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

%% @doc Creates a user settings resource that can be associated with a web
%% portal.
%%
%% Once
%% associated with a web portal, user settings control how users can transfer
%% data between a
%% streaming session and the their local devices.
-spec create_user_settings(aws_client:aws_client(), create_user_settings_request()) ->
    {ok, create_user_settings_response(), tuple()} |
    {error, any()} |
    {error, create_user_settings_errors(), tuple()}.
create_user_settings(Client, Input) ->
    create_user_settings(Client, Input, []).

-spec create_user_settings(aws_client:aws_client(), create_user_settings_request(), proplists:proplist()) ->
    {ok, create_user_settings_response(), tuple()} |
    {error, any()} |
    {error, create_user_settings_errors(), tuple()}.
create_user_settings(Client, Input0, Options0) ->
    Method = post,
    Path = ["/userSettings"],
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

%% @doc Deletes browser settings.
-spec delete_browser_settings(aws_client:aws_client(), binary() | list(), delete_browser_settings_request()) ->
    {ok, delete_browser_settings_response(), tuple()} |
    {error, any()} |
    {error, delete_browser_settings_errors(), tuple()}.
delete_browser_settings(Client, BrowserSettingsArn, Input) ->
    delete_browser_settings(Client, BrowserSettingsArn, Input, []).

-spec delete_browser_settings(aws_client:aws_client(), binary() | list(), delete_browser_settings_request(), proplists:proplist()) ->
    {ok, delete_browser_settings_response(), tuple()} |
    {error, any()} |
    {error, delete_browser_settings_errors(), tuple()}.
delete_browser_settings(Client, BrowserSettingsArn, Input0, Options0) ->
    Method = delete,
    Path = ["/browserSettings/", aws_util:encode_multi_segment_uri(BrowserSettingsArn), ""],
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

%% @doc Deletes data protection settings.
-spec delete_data_protection_settings(aws_client:aws_client(), binary() | list(), delete_data_protection_settings_request()) ->
    {ok, delete_data_protection_settings_response(), tuple()} |
    {error, any()} |
    {error, delete_data_protection_settings_errors(), tuple()}.
delete_data_protection_settings(Client, DataProtectionSettingsArn, Input) ->
    delete_data_protection_settings(Client, DataProtectionSettingsArn, Input, []).

-spec delete_data_protection_settings(aws_client:aws_client(), binary() | list(), delete_data_protection_settings_request(), proplists:proplist()) ->
    {ok, delete_data_protection_settings_response(), tuple()} |
    {error, any()} |
    {error, delete_data_protection_settings_errors(), tuple()}.
delete_data_protection_settings(Client, DataProtectionSettingsArn, Input0, Options0) ->
    Method = delete,
    Path = ["/dataProtectionSettings/", aws_util:encode_multi_segment_uri(DataProtectionSettingsArn), ""],
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

%% @doc Deletes the identity provider.
-spec delete_identity_provider(aws_client:aws_client(), binary() | list(), delete_identity_provider_request()) ->
    {ok, delete_identity_provider_response(), tuple()} |
    {error, any()} |
    {error, delete_identity_provider_errors(), tuple()}.
delete_identity_provider(Client, IdentityProviderArn, Input) ->
    delete_identity_provider(Client, IdentityProviderArn, Input, []).

-spec delete_identity_provider(aws_client:aws_client(), binary() | list(), delete_identity_provider_request(), proplists:proplist()) ->
    {ok, delete_identity_provider_response(), tuple()} |
    {error, any()} |
    {error, delete_identity_provider_errors(), tuple()}.
delete_identity_provider(Client, IdentityProviderArn, Input0, Options0) ->
    Method = delete,
    Path = ["/identityProviders/", aws_util:encode_multi_segment_uri(IdentityProviderArn), ""],
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

%% @doc Deletes IP access settings.
-spec delete_ip_access_settings(aws_client:aws_client(), binary() | list(), delete_ip_access_settings_request()) ->
    {ok, delete_ip_access_settings_response(), tuple()} |
    {error, any()} |
    {error, delete_ip_access_settings_errors(), tuple()}.
delete_ip_access_settings(Client, IpAccessSettingsArn, Input) ->
    delete_ip_access_settings(Client, IpAccessSettingsArn, Input, []).

-spec delete_ip_access_settings(aws_client:aws_client(), binary() | list(), delete_ip_access_settings_request(), proplists:proplist()) ->
    {ok, delete_ip_access_settings_response(), tuple()} |
    {error, any()} |
    {error, delete_ip_access_settings_errors(), tuple()}.
delete_ip_access_settings(Client, IpAccessSettingsArn, Input0, Options0) ->
    Method = delete,
    Path = ["/ipAccessSettings/", aws_util:encode_multi_segment_uri(IpAccessSettingsArn), ""],
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

%% @doc Deletes network settings.
-spec delete_network_settings(aws_client:aws_client(), binary() | list(), delete_network_settings_request()) ->
    {ok, delete_network_settings_response(), tuple()} |
    {error, any()} |
    {error, delete_network_settings_errors(), tuple()}.
delete_network_settings(Client, NetworkSettingsArn, Input) ->
    delete_network_settings(Client, NetworkSettingsArn, Input, []).

-spec delete_network_settings(aws_client:aws_client(), binary() | list(), delete_network_settings_request(), proplists:proplist()) ->
    {ok, delete_network_settings_response(), tuple()} |
    {error, any()} |
    {error, delete_network_settings_errors(), tuple()}.
delete_network_settings(Client, NetworkSettingsArn, Input0, Options0) ->
    Method = delete,
    Path = ["/networkSettings/", aws_util:encode_multi_segment_uri(NetworkSettingsArn), ""],
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

%% @doc Deletes a web portal.
-spec delete_portal(aws_client:aws_client(), binary() | list(), delete_portal_request()) ->
    {ok, delete_portal_response(), tuple()} |
    {error, any()} |
    {error, delete_portal_errors(), tuple()}.
delete_portal(Client, PortalArn, Input) ->
    delete_portal(Client, PortalArn, Input, []).

-spec delete_portal(aws_client:aws_client(), binary() | list(), delete_portal_request(), proplists:proplist()) ->
    {ok, delete_portal_response(), tuple()} |
    {error, any()} |
    {error, delete_portal_errors(), tuple()}.
delete_portal(Client, PortalArn, Input0, Options0) ->
    Method = delete,
    Path = ["/portals/", aws_util:encode_multi_segment_uri(PortalArn), ""],
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

%% @doc Deletes the trust store.
-spec delete_trust_store(aws_client:aws_client(), binary() | list(), delete_trust_store_request()) ->
    {ok, delete_trust_store_response(), tuple()} |
    {error, any()} |
    {error, delete_trust_store_errors(), tuple()}.
delete_trust_store(Client, TrustStoreArn, Input) ->
    delete_trust_store(Client, TrustStoreArn, Input, []).

-spec delete_trust_store(aws_client:aws_client(), binary() | list(), delete_trust_store_request(), proplists:proplist()) ->
    {ok, delete_trust_store_response(), tuple()} |
    {error, any()} |
    {error, delete_trust_store_errors(), tuple()}.
delete_trust_store(Client, TrustStoreArn, Input0, Options0) ->
    Method = delete,
    Path = ["/trustStores/", aws_util:encode_multi_segment_uri(TrustStoreArn), ""],
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

%% @doc Deletes user access logging settings.
-spec delete_user_access_logging_settings(aws_client:aws_client(), binary() | list(), delete_user_access_logging_settings_request()) ->
    {ok, delete_user_access_logging_settings_response(), tuple()} |
    {error, any()} |
    {error, delete_user_access_logging_settings_errors(), tuple()}.
delete_user_access_logging_settings(Client, UserAccessLoggingSettingsArn, Input) ->
    delete_user_access_logging_settings(Client, UserAccessLoggingSettingsArn, Input, []).

-spec delete_user_access_logging_settings(aws_client:aws_client(), binary() | list(), delete_user_access_logging_settings_request(), proplists:proplist()) ->
    {ok, delete_user_access_logging_settings_response(), tuple()} |
    {error, any()} |
    {error, delete_user_access_logging_settings_errors(), tuple()}.
delete_user_access_logging_settings(Client, UserAccessLoggingSettingsArn, Input0, Options0) ->
    Method = delete,
    Path = ["/userAccessLoggingSettings/", aws_util:encode_multi_segment_uri(UserAccessLoggingSettingsArn), ""],
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

%% @doc Deletes user settings.
-spec delete_user_settings(aws_client:aws_client(), binary() | list(), delete_user_settings_request()) ->
    {ok, delete_user_settings_response(), tuple()} |
    {error, any()} |
    {error, delete_user_settings_errors(), tuple()}.
delete_user_settings(Client, UserSettingsArn, Input) ->
    delete_user_settings(Client, UserSettingsArn, Input, []).

-spec delete_user_settings(aws_client:aws_client(), binary() | list(), delete_user_settings_request(), proplists:proplist()) ->
    {ok, delete_user_settings_response(), tuple()} |
    {error, any()} |
    {error, delete_user_settings_errors(), tuple()}.
delete_user_settings(Client, UserSettingsArn, Input0, Options0) ->
    Method = delete,
    Path = ["/userSettings/", aws_util:encode_multi_segment_uri(UserSettingsArn), ""],
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

%% @doc Disassociates browser settings from a web portal.
-spec disassociate_browser_settings(aws_client:aws_client(), binary() | list(), disassociate_browser_settings_request()) ->
    {ok, disassociate_browser_settings_response(), tuple()} |
    {error, any()} |
    {error, disassociate_browser_settings_errors(), tuple()}.
disassociate_browser_settings(Client, PortalArn, Input) ->
    disassociate_browser_settings(Client, PortalArn, Input, []).

-spec disassociate_browser_settings(aws_client:aws_client(), binary() | list(), disassociate_browser_settings_request(), proplists:proplist()) ->
    {ok, disassociate_browser_settings_response(), tuple()} |
    {error, any()} |
    {error, disassociate_browser_settings_errors(), tuple()}.
disassociate_browser_settings(Client, PortalArn, Input0, Options0) ->
    Method = delete,
    Path = ["/portals/", aws_util:encode_multi_segment_uri(PortalArn), "/browserSettings"],
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

%% @doc Disassociates data protection settings from a web portal.
-spec disassociate_data_protection_settings(aws_client:aws_client(), binary() | list(), disassociate_data_protection_settings_request()) ->
    {ok, disassociate_data_protection_settings_response(), tuple()} |
    {error, any()} |
    {error, disassociate_data_protection_settings_errors(), tuple()}.
disassociate_data_protection_settings(Client, PortalArn, Input) ->
    disassociate_data_protection_settings(Client, PortalArn, Input, []).

-spec disassociate_data_protection_settings(aws_client:aws_client(), binary() | list(), disassociate_data_protection_settings_request(), proplists:proplist()) ->
    {ok, disassociate_data_protection_settings_response(), tuple()} |
    {error, any()} |
    {error, disassociate_data_protection_settings_errors(), tuple()}.
disassociate_data_protection_settings(Client, PortalArn, Input0, Options0) ->
    Method = delete,
    Path = ["/portals/", aws_util:encode_multi_segment_uri(PortalArn), "/dataProtectionSettings"],
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

%% @doc Disassociates IP access settings from a web portal.
-spec disassociate_ip_access_settings(aws_client:aws_client(), binary() | list(), disassociate_ip_access_settings_request()) ->
    {ok, disassociate_ip_access_settings_response(), tuple()} |
    {error, any()} |
    {error, disassociate_ip_access_settings_errors(), tuple()}.
disassociate_ip_access_settings(Client, PortalArn, Input) ->
    disassociate_ip_access_settings(Client, PortalArn, Input, []).

-spec disassociate_ip_access_settings(aws_client:aws_client(), binary() | list(), disassociate_ip_access_settings_request(), proplists:proplist()) ->
    {ok, disassociate_ip_access_settings_response(), tuple()} |
    {error, any()} |
    {error, disassociate_ip_access_settings_errors(), tuple()}.
disassociate_ip_access_settings(Client, PortalArn, Input0, Options0) ->
    Method = delete,
    Path = ["/portals/", aws_util:encode_multi_segment_uri(PortalArn), "/ipAccessSettings"],
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

%% @doc Disassociates network settings from a web portal.
-spec disassociate_network_settings(aws_client:aws_client(), binary() | list(), disassociate_network_settings_request()) ->
    {ok, disassociate_network_settings_response(), tuple()} |
    {error, any()} |
    {error, disassociate_network_settings_errors(), tuple()}.
disassociate_network_settings(Client, PortalArn, Input) ->
    disassociate_network_settings(Client, PortalArn, Input, []).

-spec disassociate_network_settings(aws_client:aws_client(), binary() | list(), disassociate_network_settings_request(), proplists:proplist()) ->
    {ok, disassociate_network_settings_response(), tuple()} |
    {error, any()} |
    {error, disassociate_network_settings_errors(), tuple()}.
disassociate_network_settings(Client, PortalArn, Input0, Options0) ->
    Method = delete,
    Path = ["/portals/", aws_util:encode_multi_segment_uri(PortalArn), "/networkSettings"],
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

%% @doc Disassociates a trust store from a web portal.
-spec disassociate_trust_store(aws_client:aws_client(), binary() | list(), disassociate_trust_store_request()) ->
    {ok, disassociate_trust_store_response(), tuple()} |
    {error, any()} |
    {error, disassociate_trust_store_errors(), tuple()}.
disassociate_trust_store(Client, PortalArn, Input) ->
    disassociate_trust_store(Client, PortalArn, Input, []).

-spec disassociate_trust_store(aws_client:aws_client(), binary() | list(), disassociate_trust_store_request(), proplists:proplist()) ->
    {ok, disassociate_trust_store_response(), tuple()} |
    {error, any()} |
    {error, disassociate_trust_store_errors(), tuple()}.
disassociate_trust_store(Client, PortalArn, Input0, Options0) ->
    Method = delete,
    Path = ["/portals/", aws_util:encode_multi_segment_uri(PortalArn), "/trustStores"],
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

%% @doc Disassociates user access logging settings from a web portal.
-spec disassociate_user_access_logging_settings(aws_client:aws_client(), binary() | list(), disassociate_user_access_logging_settings_request()) ->
    {ok, disassociate_user_access_logging_settings_response(), tuple()} |
    {error, any()} |
    {error, disassociate_user_access_logging_settings_errors(), tuple()}.
disassociate_user_access_logging_settings(Client, PortalArn, Input) ->
    disassociate_user_access_logging_settings(Client, PortalArn, Input, []).

-spec disassociate_user_access_logging_settings(aws_client:aws_client(), binary() | list(), disassociate_user_access_logging_settings_request(), proplists:proplist()) ->
    {ok, disassociate_user_access_logging_settings_response(), tuple()} |
    {error, any()} |
    {error, disassociate_user_access_logging_settings_errors(), tuple()}.
disassociate_user_access_logging_settings(Client, PortalArn, Input0, Options0) ->
    Method = delete,
    Path = ["/portals/", aws_util:encode_multi_segment_uri(PortalArn), "/userAccessLoggingSettings"],
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

%% @doc Disassociates user settings from a web portal.
-spec disassociate_user_settings(aws_client:aws_client(), binary() | list(), disassociate_user_settings_request()) ->
    {ok, disassociate_user_settings_response(), tuple()} |
    {error, any()} |
    {error, disassociate_user_settings_errors(), tuple()}.
disassociate_user_settings(Client, PortalArn, Input) ->
    disassociate_user_settings(Client, PortalArn, Input, []).

-spec disassociate_user_settings(aws_client:aws_client(), binary() | list(), disassociate_user_settings_request(), proplists:proplist()) ->
    {ok, disassociate_user_settings_response(), tuple()} |
    {error, any()} |
    {error, disassociate_user_settings_errors(), tuple()}.
disassociate_user_settings(Client, PortalArn, Input0, Options0) ->
    Method = delete,
    Path = ["/portals/", aws_util:encode_multi_segment_uri(PortalArn), "/userSettings"],
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

%% @doc Expires an active secure browser session.
-spec expire_session(aws_client:aws_client(), binary() | list(), binary() | list(), expire_session_request()) ->
    {ok, expire_session_response(), tuple()} |
    {error, any()} |
    {error, expire_session_errors(), tuple()}.
expire_session(Client, PortalId, SessionId, Input) ->
    expire_session(Client, PortalId, SessionId, Input, []).

-spec expire_session(aws_client:aws_client(), binary() | list(), binary() | list(), expire_session_request(), proplists:proplist()) ->
    {ok, expire_session_response(), tuple()} |
    {error, any()} |
    {error, expire_session_errors(), tuple()}.
expire_session(Client, PortalId, SessionId, Input0, Options0) ->
    Method = delete,
    Path = ["/portals/", aws_util:encode_uri(PortalId), "/sessions/", aws_util:encode_uri(SessionId), ""],
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

%% @doc Gets browser settings.
-spec get_browser_settings(aws_client:aws_client(), binary() | list()) ->
    {ok, get_browser_settings_response(), tuple()} |
    {error, any()} |
    {error, get_browser_settings_errors(), tuple()}.
get_browser_settings(Client, BrowserSettingsArn)
  when is_map(Client) ->
    get_browser_settings(Client, BrowserSettingsArn, #{}, #{}).

-spec get_browser_settings(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_browser_settings_response(), tuple()} |
    {error, any()} |
    {error, get_browser_settings_errors(), tuple()}.
get_browser_settings(Client, BrowserSettingsArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_browser_settings(Client, BrowserSettingsArn, QueryMap, HeadersMap, []).

-spec get_browser_settings(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_browser_settings_response(), tuple()} |
    {error, any()} |
    {error, get_browser_settings_errors(), tuple()}.
get_browser_settings(Client, BrowserSettingsArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/browserSettings/", aws_util:encode_multi_segment_uri(BrowserSettingsArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the data protection settings.
-spec get_data_protection_settings(aws_client:aws_client(), binary() | list()) ->
    {ok, get_data_protection_settings_response(), tuple()} |
    {error, any()} |
    {error, get_data_protection_settings_errors(), tuple()}.
get_data_protection_settings(Client, DataProtectionSettingsArn)
  when is_map(Client) ->
    get_data_protection_settings(Client, DataProtectionSettingsArn, #{}, #{}).

-spec get_data_protection_settings(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_data_protection_settings_response(), tuple()} |
    {error, any()} |
    {error, get_data_protection_settings_errors(), tuple()}.
get_data_protection_settings(Client, DataProtectionSettingsArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_data_protection_settings(Client, DataProtectionSettingsArn, QueryMap, HeadersMap, []).

-spec get_data_protection_settings(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_data_protection_settings_response(), tuple()} |
    {error, any()} |
    {error, get_data_protection_settings_errors(), tuple()}.
get_data_protection_settings(Client, DataProtectionSettingsArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/dataProtectionSettings/", aws_util:encode_multi_segment_uri(DataProtectionSettingsArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the identity provider.
-spec get_identity_provider(aws_client:aws_client(), binary() | list()) ->
    {ok, get_identity_provider_response(), tuple()} |
    {error, any()} |
    {error, get_identity_provider_errors(), tuple()}.
get_identity_provider(Client, IdentityProviderArn)
  when is_map(Client) ->
    get_identity_provider(Client, IdentityProviderArn, #{}, #{}).

-spec get_identity_provider(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_identity_provider_response(), tuple()} |
    {error, any()} |
    {error, get_identity_provider_errors(), tuple()}.
get_identity_provider(Client, IdentityProviderArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_identity_provider(Client, IdentityProviderArn, QueryMap, HeadersMap, []).

-spec get_identity_provider(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_identity_provider_response(), tuple()} |
    {error, any()} |
    {error, get_identity_provider_errors(), tuple()}.
get_identity_provider(Client, IdentityProviderArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/identityProviders/", aws_util:encode_multi_segment_uri(IdentityProviderArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the IP access settings.
-spec get_ip_access_settings(aws_client:aws_client(), binary() | list()) ->
    {ok, get_ip_access_settings_response(), tuple()} |
    {error, any()} |
    {error, get_ip_access_settings_errors(), tuple()}.
get_ip_access_settings(Client, IpAccessSettingsArn)
  when is_map(Client) ->
    get_ip_access_settings(Client, IpAccessSettingsArn, #{}, #{}).

-spec get_ip_access_settings(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_ip_access_settings_response(), tuple()} |
    {error, any()} |
    {error, get_ip_access_settings_errors(), tuple()}.
get_ip_access_settings(Client, IpAccessSettingsArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_ip_access_settings(Client, IpAccessSettingsArn, QueryMap, HeadersMap, []).

-spec get_ip_access_settings(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_ip_access_settings_response(), tuple()} |
    {error, any()} |
    {error, get_ip_access_settings_errors(), tuple()}.
get_ip_access_settings(Client, IpAccessSettingsArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/ipAccessSettings/", aws_util:encode_multi_segment_uri(IpAccessSettingsArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the network settings.
-spec get_network_settings(aws_client:aws_client(), binary() | list()) ->
    {ok, get_network_settings_response(), tuple()} |
    {error, any()} |
    {error, get_network_settings_errors(), tuple()}.
get_network_settings(Client, NetworkSettingsArn)
  when is_map(Client) ->
    get_network_settings(Client, NetworkSettingsArn, #{}, #{}).

-spec get_network_settings(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_network_settings_response(), tuple()} |
    {error, any()} |
    {error, get_network_settings_errors(), tuple()}.
get_network_settings(Client, NetworkSettingsArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_network_settings(Client, NetworkSettingsArn, QueryMap, HeadersMap, []).

-spec get_network_settings(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_network_settings_response(), tuple()} |
    {error, any()} |
    {error, get_network_settings_errors(), tuple()}.
get_network_settings(Client, NetworkSettingsArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/networkSettings/", aws_util:encode_multi_segment_uri(NetworkSettingsArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the web portal.
-spec get_portal(aws_client:aws_client(), binary() | list()) ->
    {ok, get_portal_response(), tuple()} |
    {error, any()} |
    {error, get_portal_errors(), tuple()}.
get_portal(Client, PortalArn)
  when is_map(Client) ->
    get_portal(Client, PortalArn, #{}, #{}).

-spec get_portal(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_portal_response(), tuple()} |
    {error, any()} |
    {error, get_portal_errors(), tuple()}.
get_portal(Client, PortalArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_portal(Client, PortalArn, QueryMap, HeadersMap, []).

-spec get_portal(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_portal_response(), tuple()} |
    {error, any()} |
    {error, get_portal_errors(), tuple()}.
get_portal(Client, PortalArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/portals/", aws_util:encode_multi_segment_uri(PortalArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the service provider metadata.
-spec get_portal_service_provider_metadata(aws_client:aws_client(), binary() | list()) ->
    {ok, get_portal_service_provider_metadata_response(), tuple()} |
    {error, any()} |
    {error, get_portal_service_provider_metadata_errors(), tuple()}.
get_portal_service_provider_metadata(Client, PortalArn)
  when is_map(Client) ->
    get_portal_service_provider_metadata(Client, PortalArn, #{}, #{}).

-spec get_portal_service_provider_metadata(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_portal_service_provider_metadata_response(), tuple()} |
    {error, any()} |
    {error, get_portal_service_provider_metadata_errors(), tuple()}.
get_portal_service_provider_metadata(Client, PortalArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_portal_service_provider_metadata(Client, PortalArn, QueryMap, HeadersMap, []).

-spec get_portal_service_provider_metadata(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_portal_service_provider_metadata_response(), tuple()} |
    {error, any()} |
    {error, get_portal_service_provider_metadata_errors(), tuple()}.
get_portal_service_provider_metadata(Client, PortalArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/portalIdp/", aws_util:encode_multi_segment_uri(PortalArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information for a secure browser session.
-spec get_session(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_session_response(), tuple()} |
    {error, any()} |
    {error, get_session_errors(), tuple()}.
get_session(Client, PortalId, SessionId)
  when is_map(Client) ->
    get_session(Client, PortalId, SessionId, #{}, #{}).

-spec get_session(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_session_response(), tuple()} |
    {error, any()} |
    {error, get_session_errors(), tuple()}.
get_session(Client, PortalId, SessionId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_session(Client, PortalId, SessionId, QueryMap, HeadersMap, []).

-spec get_session(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_session_response(), tuple()} |
    {error, any()} |
    {error, get_session_errors(), tuple()}.
get_session(Client, PortalId, SessionId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/portals/", aws_util:encode_uri(PortalId), "/sessions/", aws_util:encode_uri(SessionId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the trust store.
-spec get_trust_store(aws_client:aws_client(), binary() | list()) ->
    {ok, get_trust_store_response(), tuple()} |
    {error, any()} |
    {error, get_trust_store_errors(), tuple()}.
get_trust_store(Client, TrustStoreArn)
  when is_map(Client) ->
    get_trust_store(Client, TrustStoreArn, #{}, #{}).

-spec get_trust_store(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_trust_store_response(), tuple()} |
    {error, any()} |
    {error, get_trust_store_errors(), tuple()}.
get_trust_store(Client, TrustStoreArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_trust_store(Client, TrustStoreArn, QueryMap, HeadersMap, []).

-spec get_trust_store(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_trust_store_response(), tuple()} |
    {error, any()} |
    {error, get_trust_store_errors(), tuple()}.
get_trust_store(Client, TrustStoreArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/trustStores/", aws_util:encode_multi_segment_uri(TrustStoreArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the trust store certificate.
-spec get_trust_store_certificate(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_trust_store_certificate_response(), tuple()} |
    {error, any()} |
    {error, get_trust_store_certificate_errors(), tuple()}.
get_trust_store_certificate(Client, TrustStoreArn, Thumbprint)
  when is_map(Client) ->
    get_trust_store_certificate(Client, TrustStoreArn, Thumbprint, #{}, #{}).

-spec get_trust_store_certificate(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_trust_store_certificate_response(), tuple()} |
    {error, any()} |
    {error, get_trust_store_certificate_errors(), tuple()}.
get_trust_store_certificate(Client, TrustStoreArn, Thumbprint, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_trust_store_certificate(Client, TrustStoreArn, Thumbprint, QueryMap, HeadersMap, []).

-spec get_trust_store_certificate(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_trust_store_certificate_response(), tuple()} |
    {error, any()} |
    {error, get_trust_store_certificate_errors(), tuple()}.
get_trust_store_certificate(Client, TrustStoreArn, Thumbprint, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/trustStores/", aws_util:encode_multi_segment_uri(TrustStoreArn), "/certificate"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"thumbprint">>, Thumbprint}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets user access logging settings.
-spec get_user_access_logging_settings(aws_client:aws_client(), binary() | list()) ->
    {ok, get_user_access_logging_settings_response(), tuple()} |
    {error, any()} |
    {error, get_user_access_logging_settings_errors(), tuple()}.
get_user_access_logging_settings(Client, UserAccessLoggingSettingsArn)
  when is_map(Client) ->
    get_user_access_logging_settings(Client, UserAccessLoggingSettingsArn, #{}, #{}).

-spec get_user_access_logging_settings(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_user_access_logging_settings_response(), tuple()} |
    {error, any()} |
    {error, get_user_access_logging_settings_errors(), tuple()}.
get_user_access_logging_settings(Client, UserAccessLoggingSettingsArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_user_access_logging_settings(Client, UserAccessLoggingSettingsArn, QueryMap, HeadersMap, []).

-spec get_user_access_logging_settings(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_user_access_logging_settings_response(), tuple()} |
    {error, any()} |
    {error, get_user_access_logging_settings_errors(), tuple()}.
get_user_access_logging_settings(Client, UserAccessLoggingSettingsArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/userAccessLoggingSettings/", aws_util:encode_multi_segment_uri(UserAccessLoggingSettingsArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets user settings.
-spec get_user_settings(aws_client:aws_client(), binary() | list()) ->
    {ok, get_user_settings_response(), tuple()} |
    {error, any()} |
    {error, get_user_settings_errors(), tuple()}.
get_user_settings(Client, UserSettingsArn)
  when is_map(Client) ->
    get_user_settings(Client, UserSettingsArn, #{}, #{}).

-spec get_user_settings(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_user_settings_response(), tuple()} |
    {error, any()} |
    {error, get_user_settings_errors(), tuple()}.
get_user_settings(Client, UserSettingsArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_user_settings(Client, UserSettingsArn, QueryMap, HeadersMap, []).

-spec get_user_settings(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_user_settings_response(), tuple()} |
    {error, any()} |
    {error, get_user_settings_errors(), tuple()}.
get_user_settings(Client, UserSettingsArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/userSettings/", aws_util:encode_multi_segment_uri(UserSettingsArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a list of browser settings.
-spec list_browser_settings(aws_client:aws_client()) ->
    {ok, list_browser_settings_response(), tuple()} |
    {error, any()} |
    {error, list_browser_settings_errors(), tuple()}.
list_browser_settings(Client)
  when is_map(Client) ->
    list_browser_settings(Client, #{}, #{}).

-spec list_browser_settings(aws_client:aws_client(), map(), map()) ->
    {ok, list_browser_settings_response(), tuple()} |
    {error, any()} |
    {error, list_browser_settings_errors(), tuple()}.
list_browser_settings(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_browser_settings(Client, QueryMap, HeadersMap, []).

-spec list_browser_settings(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_browser_settings_response(), tuple()} |
    {error, any()} |
    {error, list_browser_settings_errors(), tuple()}.
list_browser_settings(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/browserSettings"],
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

%% @doc Retrieves a list of data protection settings.
-spec list_data_protection_settings(aws_client:aws_client()) ->
    {ok, list_data_protection_settings_response(), tuple()} |
    {error, any()} |
    {error, list_data_protection_settings_errors(), tuple()}.
list_data_protection_settings(Client)
  when is_map(Client) ->
    list_data_protection_settings(Client, #{}, #{}).

-spec list_data_protection_settings(aws_client:aws_client(), map(), map()) ->
    {ok, list_data_protection_settings_response(), tuple()} |
    {error, any()} |
    {error, list_data_protection_settings_errors(), tuple()}.
list_data_protection_settings(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_data_protection_settings(Client, QueryMap, HeadersMap, []).

-spec list_data_protection_settings(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_data_protection_settings_response(), tuple()} |
    {error, any()} |
    {error, list_data_protection_settings_errors(), tuple()}.
list_data_protection_settings(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/dataProtectionSettings"],
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

%% @doc Retrieves a list of identity providers for a specific web portal.
-spec list_identity_providers(aws_client:aws_client(), binary() | list()) ->
    {ok, list_identity_providers_response(), tuple()} |
    {error, any()} |
    {error, list_identity_providers_errors(), tuple()}.
list_identity_providers(Client, PortalArn)
  when is_map(Client) ->
    list_identity_providers(Client, PortalArn, #{}, #{}).

-spec list_identity_providers(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_identity_providers_response(), tuple()} |
    {error, any()} |
    {error, list_identity_providers_errors(), tuple()}.
list_identity_providers(Client, PortalArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_identity_providers(Client, PortalArn, QueryMap, HeadersMap, []).

-spec list_identity_providers(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_identity_providers_response(), tuple()} |
    {error, any()} |
    {error, list_identity_providers_errors(), tuple()}.
list_identity_providers(Client, PortalArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/portals/", aws_util:encode_multi_segment_uri(PortalArn), "/identityProviders"],
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

%% @doc Retrieves a list of IP access settings.
-spec list_ip_access_settings(aws_client:aws_client()) ->
    {ok, list_ip_access_settings_response(), tuple()} |
    {error, any()} |
    {error, list_ip_access_settings_errors(), tuple()}.
list_ip_access_settings(Client)
  when is_map(Client) ->
    list_ip_access_settings(Client, #{}, #{}).

-spec list_ip_access_settings(aws_client:aws_client(), map(), map()) ->
    {ok, list_ip_access_settings_response(), tuple()} |
    {error, any()} |
    {error, list_ip_access_settings_errors(), tuple()}.
list_ip_access_settings(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_ip_access_settings(Client, QueryMap, HeadersMap, []).

-spec list_ip_access_settings(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_ip_access_settings_response(), tuple()} |
    {error, any()} |
    {error, list_ip_access_settings_errors(), tuple()}.
list_ip_access_settings(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/ipAccessSettings"],
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

%% @doc Retrieves a list of network settings.
-spec list_network_settings(aws_client:aws_client()) ->
    {ok, list_network_settings_response(), tuple()} |
    {error, any()} |
    {error, list_network_settings_errors(), tuple()}.
list_network_settings(Client)
  when is_map(Client) ->
    list_network_settings(Client, #{}, #{}).

-spec list_network_settings(aws_client:aws_client(), map(), map()) ->
    {ok, list_network_settings_response(), tuple()} |
    {error, any()} |
    {error, list_network_settings_errors(), tuple()}.
list_network_settings(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_network_settings(Client, QueryMap, HeadersMap, []).

-spec list_network_settings(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_network_settings_response(), tuple()} |
    {error, any()} |
    {error, list_network_settings_errors(), tuple()}.
list_network_settings(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/networkSettings"],
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

%% @doc Retrieves a list or web portals.
-spec list_portals(aws_client:aws_client()) ->
    {ok, list_portals_response(), tuple()} |
    {error, any()} |
    {error, list_portals_errors(), tuple()}.
list_portals(Client)
  when is_map(Client) ->
    list_portals(Client, #{}, #{}).

-spec list_portals(aws_client:aws_client(), map(), map()) ->
    {ok, list_portals_response(), tuple()} |
    {error, any()} |
    {error, list_portals_errors(), tuple()}.
list_portals(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_portals(Client, QueryMap, HeadersMap, []).

-spec list_portals(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_portals_response(), tuple()} |
    {error, any()} |
    {error, list_portals_errors(), tuple()}.
list_portals(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/portals"],
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

%% @doc Lists information for multiple secure browser sessions from a
%% specific portal.
-spec list_sessions(aws_client:aws_client(), binary() | list()) ->
    {ok, list_sessions_response(), tuple()} |
    {error, any()} |
    {error, list_sessions_errors(), tuple()}.
list_sessions(Client, PortalId)
  when is_map(Client) ->
    list_sessions(Client, PortalId, #{}, #{}).

-spec list_sessions(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_sessions_response(), tuple()} |
    {error, any()} |
    {error, list_sessions_errors(), tuple()}.
list_sessions(Client, PortalId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_sessions(Client, PortalId, QueryMap, HeadersMap, []).

-spec list_sessions(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_sessions_response(), tuple()} |
    {error, any()} |
    {error, list_sessions_errors(), tuple()}.
list_sessions(Client, PortalId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/portals/", aws_util:encode_uri(PortalId), "/sessions"],
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
        {<<"sessionId">>, maps:get(<<"sessionId">>, QueryMap, undefined)},
        {<<"sortBy">>, maps:get(<<"sortBy">>, QueryMap, undefined)},
        {<<"status">>, maps:get(<<"status">>, QueryMap, undefined)},
        {<<"username">>, maps:get(<<"username">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a list of tags for a resource.
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
    Path = ["/tags/", aws_util:encode_multi_segment_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a list of trust store certificates.
-spec list_trust_store_certificates(aws_client:aws_client(), binary() | list()) ->
    {ok, list_trust_store_certificates_response(), tuple()} |
    {error, any()} |
    {error, list_trust_store_certificates_errors(), tuple()}.
list_trust_store_certificates(Client, TrustStoreArn)
  when is_map(Client) ->
    list_trust_store_certificates(Client, TrustStoreArn, #{}, #{}).

-spec list_trust_store_certificates(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_trust_store_certificates_response(), tuple()} |
    {error, any()} |
    {error, list_trust_store_certificates_errors(), tuple()}.
list_trust_store_certificates(Client, TrustStoreArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_trust_store_certificates(Client, TrustStoreArn, QueryMap, HeadersMap, []).

-spec list_trust_store_certificates(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_trust_store_certificates_response(), tuple()} |
    {error, any()} |
    {error, list_trust_store_certificates_errors(), tuple()}.
list_trust_store_certificates(Client, TrustStoreArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/trustStores/", aws_util:encode_multi_segment_uri(TrustStoreArn), "/certificates"],
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

%% @doc Retrieves a list of trust stores.
-spec list_trust_stores(aws_client:aws_client()) ->
    {ok, list_trust_stores_response(), tuple()} |
    {error, any()} |
    {error, list_trust_stores_errors(), tuple()}.
list_trust_stores(Client)
  when is_map(Client) ->
    list_trust_stores(Client, #{}, #{}).

-spec list_trust_stores(aws_client:aws_client(), map(), map()) ->
    {ok, list_trust_stores_response(), tuple()} |
    {error, any()} |
    {error, list_trust_stores_errors(), tuple()}.
list_trust_stores(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_trust_stores(Client, QueryMap, HeadersMap, []).

-spec list_trust_stores(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_trust_stores_response(), tuple()} |
    {error, any()} |
    {error, list_trust_stores_errors(), tuple()}.
list_trust_stores(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/trustStores"],
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

%% @doc Retrieves a list of user access logging settings.
-spec list_user_access_logging_settings(aws_client:aws_client()) ->
    {ok, list_user_access_logging_settings_response(), tuple()} |
    {error, any()} |
    {error, list_user_access_logging_settings_errors(), tuple()}.
list_user_access_logging_settings(Client)
  when is_map(Client) ->
    list_user_access_logging_settings(Client, #{}, #{}).

-spec list_user_access_logging_settings(aws_client:aws_client(), map(), map()) ->
    {ok, list_user_access_logging_settings_response(), tuple()} |
    {error, any()} |
    {error, list_user_access_logging_settings_errors(), tuple()}.
list_user_access_logging_settings(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_user_access_logging_settings(Client, QueryMap, HeadersMap, []).

-spec list_user_access_logging_settings(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_user_access_logging_settings_response(), tuple()} |
    {error, any()} |
    {error, list_user_access_logging_settings_errors(), tuple()}.
list_user_access_logging_settings(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/userAccessLoggingSettings"],
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

%% @doc Retrieves a list of user settings.
-spec list_user_settings(aws_client:aws_client()) ->
    {ok, list_user_settings_response(), tuple()} |
    {error, any()} |
    {error, list_user_settings_errors(), tuple()}.
list_user_settings(Client)
  when is_map(Client) ->
    list_user_settings(Client, #{}, #{}).

-spec list_user_settings(aws_client:aws_client(), map(), map()) ->
    {ok, list_user_settings_response(), tuple()} |
    {error, any()} |
    {error, list_user_settings_errors(), tuple()}.
list_user_settings(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_user_settings(Client, QueryMap, HeadersMap, []).

-spec list_user_settings(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_user_settings_response(), tuple()} |
    {error, any()} |
    {error, list_user_settings_errors(), tuple()}.
list_user_settings(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/userSettings"],
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

%% @doc Adds or overwrites one or more tags for the specified resource.
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
    Path = ["/tags/", aws_util:encode_multi_segment_uri(ResourceArn), ""],
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

%% @doc Removes one or more tags from the specified resource.
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
    Path = ["/tags/", aws_util:encode_multi_segment_uri(ResourceArn), ""],
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

%% @doc Updates browser settings.
-spec update_browser_settings(aws_client:aws_client(), binary() | list(), update_browser_settings_request()) ->
    {ok, update_browser_settings_response(), tuple()} |
    {error, any()} |
    {error, update_browser_settings_errors(), tuple()}.
update_browser_settings(Client, BrowserSettingsArn, Input) ->
    update_browser_settings(Client, BrowserSettingsArn, Input, []).

-spec update_browser_settings(aws_client:aws_client(), binary() | list(), update_browser_settings_request(), proplists:proplist()) ->
    {ok, update_browser_settings_response(), tuple()} |
    {error, any()} |
    {error, update_browser_settings_errors(), tuple()}.
update_browser_settings(Client, BrowserSettingsArn, Input0, Options0) ->
    Method = patch,
    Path = ["/browserSettings/", aws_util:encode_multi_segment_uri(BrowserSettingsArn), ""],
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

%% @doc Updates data protection settings.
-spec update_data_protection_settings(aws_client:aws_client(), binary() | list(), update_data_protection_settings_request()) ->
    {ok, update_data_protection_settings_response(), tuple()} |
    {error, any()} |
    {error, update_data_protection_settings_errors(), tuple()}.
update_data_protection_settings(Client, DataProtectionSettingsArn, Input) ->
    update_data_protection_settings(Client, DataProtectionSettingsArn, Input, []).

-spec update_data_protection_settings(aws_client:aws_client(), binary() | list(), update_data_protection_settings_request(), proplists:proplist()) ->
    {ok, update_data_protection_settings_response(), tuple()} |
    {error, any()} |
    {error, update_data_protection_settings_errors(), tuple()}.
update_data_protection_settings(Client, DataProtectionSettingsArn, Input0, Options0) ->
    Method = patch,
    Path = ["/dataProtectionSettings/", aws_util:encode_multi_segment_uri(DataProtectionSettingsArn), ""],
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

%% @doc Updates the identity provider.
-spec update_identity_provider(aws_client:aws_client(), binary() | list(), update_identity_provider_request()) ->
    {ok, update_identity_provider_response(), tuple()} |
    {error, any()} |
    {error, update_identity_provider_errors(), tuple()}.
update_identity_provider(Client, IdentityProviderArn, Input) ->
    update_identity_provider(Client, IdentityProviderArn, Input, []).

-spec update_identity_provider(aws_client:aws_client(), binary() | list(), update_identity_provider_request(), proplists:proplist()) ->
    {ok, update_identity_provider_response(), tuple()} |
    {error, any()} |
    {error, update_identity_provider_errors(), tuple()}.
update_identity_provider(Client, IdentityProviderArn, Input0, Options0) ->
    Method = patch,
    Path = ["/identityProviders/", aws_util:encode_multi_segment_uri(IdentityProviderArn), ""],
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

%% @doc Updates IP access settings.
-spec update_ip_access_settings(aws_client:aws_client(), binary() | list(), update_ip_access_settings_request()) ->
    {ok, update_ip_access_settings_response(), tuple()} |
    {error, any()} |
    {error, update_ip_access_settings_errors(), tuple()}.
update_ip_access_settings(Client, IpAccessSettingsArn, Input) ->
    update_ip_access_settings(Client, IpAccessSettingsArn, Input, []).

-spec update_ip_access_settings(aws_client:aws_client(), binary() | list(), update_ip_access_settings_request(), proplists:proplist()) ->
    {ok, update_ip_access_settings_response(), tuple()} |
    {error, any()} |
    {error, update_ip_access_settings_errors(), tuple()}.
update_ip_access_settings(Client, IpAccessSettingsArn, Input0, Options0) ->
    Method = patch,
    Path = ["/ipAccessSettings/", aws_util:encode_multi_segment_uri(IpAccessSettingsArn), ""],
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

%% @doc Updates network settings.
-spec update_network_settings(aws_client:aws_client(), binary() | list(), update_network_settings_request()) ->
    {ok, update_network_settings_response(), tuple()} |
    {error, any()} |
    {error, update_network_settings_errors(), tuple()}.
update_network_settings(Client, NetworkSettingsArn, Input) ->
    update_network_settings(Client, NetworkSettingsArn, Input, []).

-spec update_network_settings(aws_client:aws_client(), binary() | list(), update_network_settings_request(), proplists:proplist()) ->
    {ok, update_network_settings_response(), tuple()} |
    {error, any()} |
    {error, update_network_settings_errors(), tuple()}.
update_network_settings(Client, NetworkSettingsArn, Input0, Options0) ->
    Method = patch,
    Path = ["/networkSettings/", aws_util:encode_multi_segment_uri(NetworkSettingsArn), ""],
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

%% @doc Updates a web portal.
-spec update_portal(aws_client:aws_client(), binary() | list(), update_portal_request()) ->
    {ok, update_portal_response(), tuple()} |
    {error, any()} |
    {error, update_portal_errors(), tuple()}.
update_portal(Client, PortalArn, Input) ->
    update_portal(Client, PortalArn, Input, []).

-spec update_portal(aws_client:aws_client(), binary() | list(), update_portal_request(), proplists:proplist()) ->
    {ok, update_portal_response(), tuple()} |
    {error, any()} |
    {error, update_portal_errors(), tuple()}.
update_portal(Client, PortalArn, Input0, Options0) ->
    Method = put,
    Path = ["/portals/", aws_util:encode_multi_segment_uri(PortalArn), ""],
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

%% @doc Updates the trust store.
-spec update_trust_store(aws_client:aws_client(), binary() | list(), update_trust_store_request()) ->
    {ok, update_trust_store_response(), tuple()} |
    {error, any()} |
    {error, update_trust_store_errors(), tuple()}.
update_trust_store(Client, TrustStoreArn, Input) ->
    update_trust_store(Client, TrustStoreArn, Input, []).

-spec update_trust_store(aws_client:aws_client(), binary() | list(), update_trust_store_request(), proplists:proplist()) ->
    {ok, update_trust_store_response(), tuple()} |
    {error, any()} |
    {error, update_trust_store_errors(), tuple()}.
update_trust_store(Client, TrustStoreArn, Input0, Options0) ->
    Method = patch,
    Path = ["/trustStores/", aws_util:encode_multi_segment_uri(TrustStoreArn), ""],
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

%% @doc Updates the user access logging settings.
-spec update_user_access_logging_settings(aws_client:aws_client(), binary() | list(), update_user_access_logging_settings_request()) ->
    {ok, update_user_access_logging_settings_response(), tuple()} |
    {error, any()} |
    {error, update_user_access_logging_settings_errors(), tuple()}.
update_user_access_logging_settings(Client, UserAccessLoggingSettingsArn, Input) ->
    update_user_access_logging_settings(Client, UserAccessLoggingSettingsArn, Input, []).

-spec update_user_access_logging_settings(aws_client:aws_client(), binary() | list(), update_user_access_logging_settings_request(), proplists:proplist()) ->
    {ok, update_user_access_logging_settings_response(), tuple()} |
    {error, any()} |
    {error, update_user_access_logging_settings_errors(), tuple()}.
update_user_access_logging_settings(Client, UserAccessLoggingSettingsArn, Input0, Options0) ->
    Method = patch,
    Path = ["/userAccessLoggingSettings/", aws_util:encode_multi_segment_uri(UserAccessLoggingSettingsArn), ""],
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

%% @doc Updates the user settings.
-spec update_user_settings(aws_client:aws_client(), binary() | list(), update_user_settings_request()) ->
    {ok, update_user_settings_response(), tuple()} |
    {error, any()} |
    {error, update_user_settings_errors(), tuple()}.
update_user_settings(Client, UserSettingsArn, Input) ->
    update_user_settings(Client, UserSettingsArn, Input, []).

-spec update_user_settings(aws_client:aws_client(), binary() | list(), update_user_settings_request(), proplists:proplist()) ->
    {ok, update_user_settings_response(), tuple()} |
    {error, any()} |
    {error, update_user_settings_errors(), tuple()}.
update_user_settings(Client, UserSettingsArn, Input0, Options0) ->
    Method = patch,
    Path = ["/userSettings/", aws_util:encode_multi_segment_uri(UserSettingsArn), ""],
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
    Client1 = Client#{service => <<"workspaces-web">>},
    Host = build_host(<<"workspaces-web">>, Client1),
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
