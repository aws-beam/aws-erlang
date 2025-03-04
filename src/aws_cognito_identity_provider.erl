%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc With the Amazon Cognito user pools API, you can configure user pools
%% and authenticate users.
%%
%% To
%% authenticate users from third-party identity providers (IdPs) in this API,
%% you can
%% link IdP users to native user profiles:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-identity-federation-consolidate-users.html.
%% Learn more
%% about the authentication and authorization of federated users at Adding
%% user pool sign-in through a third party:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-identity-federation.html
%% and in the User pool federation endpoints and managed login reference:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-userpools-server-contract-reference.html.
%%
%% This API reference provides detailed information about API operations and
%% object types
%% in Amazon Cognito.
%%
%% Along with resource management operations, the Amazon Cognito user pools
%% API includes classes
%% of operations and authorization models for client-side and server-side
%% authentication of
%% users. You can interact with operations in the Amazon Cognito user pools
%% API as any of the
%% following subjects.
%%
%% An administrator who wants to configure user pools, app clients, users,
%% groups, or other user pool functions.
%%
%% A server-side app, like a web application, that wants to use its Amazon
%% Web Services
%% privileges to manage, authenticate, or authorize a user.
%%
%% A client-side app, like a mobile app, that wants to make unauthenticated
%% requests to manage, authenticate, or authorize a user.
%%
%% For more information, see Understanding API, OIDC, and managed login pages
%% authentication:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/authentication-flows-public-server-side.html#user-pools-API-operations
%% in the Amazon Cognito Developer Guide.
%%
%% With your Amazon Web Services SDK, you can build the logic to support
%% operational flows in every use
%% case for this API. You can also make direct REST API requests to Amazon
%% Cognito user pools service endpoints:
%% https://docs.aws.amazon.com/general/latest/gr/cognito_identity.html#cognito_identity_your_user_pools_region.
%% The following links can get you started
%% with the `CognitoIdentityProvider' client in supported Amazon Web
%% Services SDKs.
%%
%% To get started with an Amazon Web Services SDK, see Tools to Build on
%% Amazon Web Services: http://aws.amazon.com/developer/tools/. For example
%% actions and scenarios, see Code examples for Amazon Cognito Identity
%% Provider using Amazon Web Services
%% SDKs:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/service_code_examples_cognito-identity-provider.html.
-module(aws_cognito_identity_provider).

-export([add_custom_attributes/2,
         add_custom_attributes/3,
         admin_add_user_to_group/2,
         admin_add_user_to_group/3,
         admin_confirm_sign_up/2,
         admin_confirm_sign_up/3,
         admin_create_user/2,
         admin_create_user/3,
         admin_delete_user/2,
         admin_delete_user/3,
         admin_delete_user_attributes/2,
         admin_delete_user_attributes/3,
         admin_disable_provider_for_user/2,
         admin_disable_provider_for_user/3,
         admin_disable_user/2,
         admin_disable_user/3,
         admin_enable_user/2,
         admin_enable_user/3,
         admin_forget_device/2,
         admin_forget_device/3,
         admin_get_device/2,
         admin_get_device/3,
         admin_get_user/2,
         admin_get_user/3,
         admin_initiate_auth/2,
         admin_initiate_auth/3,
         admin_link_provider_for_user/2,
         admin_link_provider_for_user/3,
         admin_list_devices/2,
         admin_list_devices/3,
         admin_list_groups_for_user/2,
         admin_list_groups_for_user/3,
         admin_list_user_auth_events/2,
         admin_list_user_auth_events/3,
         admin_remove_user_from_group/2,
         admin_remove_user_from_group/3,
         admin_reset_user_password/2,
         admin_reset_user_password/3,
         admin_respond_to_auth_challenge/2,
         admin_respond_to_auth_challenge/3,
         admin_set_user_mfa_preference/2,
         admin_set_user_mfa_preference/3,
         admin_set_user_password/2,
         admin_set_user_password/3,
         admin_set_user_settings/2,
         admin_set_user_settings/3,
         admin_update_auth_event_feedback/2,
         admin_update_auth_event_feedback/3,
         admin_update_device_status/2,
         admin_update_device_status/3,
         admin_update_user_attributes/2,
         admin_update_user_attributes/3,
         admin_user_global_sign_out/2,
         admin_user_global_sign_out/3,
         associate_software_token/2,
         associate_software_token/3,
         change_password/2,
         change_password/3,
         complete_web_authn_registration/2,
         complete_web_authn_registration/3,
         confirm_device/2,
         confirm_device/3,
         confirm_forgot_password/2,
         confirm_forgot_password/3,
         confirm_sign_up/2,
         confirm_sign_up/3,
         create_group/2,
         create_group/3,
         create_identity_provider/2,
         create_identity_provider/3,
         create_managed_login_branding/2,
         create_managed_login_branding/3,
         create_resource_server/2,
         create_resource_server/3,
         create_user_import_job/2,
         create_user_import_job/3,
         create_user_pool/2,
         create_user_pool/3,
         create_user_pool_client/2,
         create_user_pool_client/3,
         create_user_pool_domain/2,
         create_user_pool_domain/3,
         delete_group/2,
         delete_group/3,
         delete_identity_provider/2,
         delete_identity_provider/3,
         delete_managed_login_branding/2,
         delete_managed_login_branding/3,
         delete_resource_server/2,
         delete_resource_server/3,
         delete_user/2,
         delete_user/3,
         delete_user_attributes/2,
         delete_user_attributes/3,
         delete_user_pool/2,
         delete_user_pool/3,
         delete_user_pool_client/2,
         delete_user_pool_client/3,
         delete_user_pool_domain/2,
         delete_user_pool_domain/3,
         delete_web_authn_credential/2,
         delete_web_authn_credential/3,
         describe_identity_provider/2,
         describe_identity_provider/3,
         describe_managed_login_branding/2,
         describe_managed_login_branding/3,
         describe_managed_login_branding_by_client/2,
         describe_managed_login_branding_by_client/3,
         describe_resource_server/2,
         describe_resource_server/3,
         describe_risk_configuration/2,
         describe_risk_configuration/3,
         describe_user_import_job/2,
         describe_user_import_job/3,
         describe_user_pool/2,
         describe_user_pool/3,
         describe_user_pool_client/2,
         describe_user_pool_client/3,
         describe_user_pool_domain/2,
         describe_user_pool_domain/3,
         forget_device/2,
         forget_device/3,
         forgot_password/2,
         forgot_password/3,
         get_csv_header/2,
         get_csv_header/3,
         get_device/2,
         get_device/3,
         get_group/2,
         get_group/3,
         get_identity_provider_by_identifier/2,
         get_identity_provider_by_identifier/3,
         get_log_delivery_configuration/2,
         get_log_delivery_configuration/3,
         get_signing_certificate/2,
         get_signing_certificate/3,
         get_ui_customization/2,
         get_ui_customization/3,
         get_user/2,
         get_user/3,
         get_user_attribute_verification_code/2,
         get_user_attribute_verification_code/3,
         get_user_auth_factors/2,
         get_user_auth_factors/3,
         get_user_pool_mfa_config/2,
         get_user_pool_mfa_config/3,
         global_sign_out/2,
         global_sign_out/3,
         initiate_auth/2,
         initiate_auth/3,
         list_devices/2,
         list_devices/3,
         list_groups/2,
         list_groups/3,
         list_identity_providers/2,
         list_identity_providers/3,
         list_resource_servers/2,
         list_resource_servers/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         list_user_import_jobs/2,
         list_user_import_jobs/3,
         list_user_pool_clients/2,
         list_user_pool_clients/3,
         list_user_pools/2,
         list_user_pools/3,
         list_users/2,
         list_users/3,
         list_users_in_group/2,
         list_users_in_group/3,
         list_web_authn_credentials/2,
         list_web_authn_credentials/3,
         resend_confirmation_code/2,
         resend_confirmation_code/3,
         respond_to_auth_challenge/2,
         respond_to_auth_challenge/3,
         revoke_token/2,
         revoke_token/3,
         set_log_delivery_configuration/2,
         set_log_delivery_configuration/3,
         set_risk_configuration/2,
         set_risk_configuration/3,
         set_ui_customization/2,
         set_ui_customization/3,
         set_user_mfa_preference/2,
         set_user_mfa_preference/3,
         set_user_pool_mfa_config/2,
         set_user_pool_mfa_config/3,
         set_user_settings/2,
         set_user_settings/3,
         sign_up/2,
         sign_up/3,
         start_user_import_job/2,
         start_user_import_job/3,
         start_web_authn_registration/2,
         start_web_authn_registration/3,
         stop_user_import_job/2,
         stop_user_import_job/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_auth_event_feedback/2,
         update_auth_event_feedback/3,
         update_device_status/2,
         update_device_status/3,
         update_group/2,
         update_group/3,
         update_identity_provider/2,
         update_identity_provider/3,
         update_managed_login_branding/2,
         update_managed_login_branding/3,
         update_resource_server/2,
         update_resource_server/3,
         update_user_attributes/2,
         update_user_attributes/3,
         update_user_pool/2,
         update_user_pool/3,
         update_user_pool_client/2,
         update_user_pool_client/3,
         update_user_pool_domain/2,
         update_user_pool_domain/3,
         verify_software_token/2,
         verify_software_token/3,
         verify_user_attribute/2,
         verify_user_attribute/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% create_user_pool_domain_response() :: #{
%%   <<"CloudFrontDomain">> => string(),
%%   <<"ManagedLoginVersion">> => integer()
%% }
-type create_user_pool_domain_response() :: #{binary() => any()}.

%% Example:
%% delete_web_authn_credential_response() :: #{

%% }
-type delete_web_authn_credential_response() :: #{binary() => any()}.

%% Example:
%% authentication_result_type() :: #{
%%   <<"AccessToken">> => string(),
%%   <<"ExpiresIn">> => integer(),
%%   <<"IdToken">> => string(),
%%   <<"NewDeviceMetadata">> => new_device_metadata_type(),
%%   <<"RefreshToken">> => string(),
%%   <<"TokenType">> => string()
%% }
-type authentication_result_type() :: #{binary() => any()}.

%% Example:
%% verify_user_attribute_response() :: #{

%% }
-type verify_user_attribute_response() :: #{binary() => any()}.

%% Example:
%% admin_update_auth_event_feedback_response() :: #{

%% }
-type admin_update_auth_event_feedback_response() :: #{binary() => any()}.

%% Example:
%% analytics_metadata_type() :: #{
%%   <<"AnalyticsEndpointId">> => string()
%% }
-type analytics_metadata_type() :: #{binary() => any()}.

%% Example:
%% user_import_in_progress_exception() :: #{
%%   <<"message">> => string()
%% }
-type user_import_in_progress_exception() :: #{binary() => any()}.

%% Example:
%% initiate_auth_request() :: #{
%%   <<"AnalyticsMetadata">> => analytics_metadata_type(),
%%   <<"AuthFlow">> := list(any()),
%%   <<"AuthParameters">> => map(),
%%   <<"ClientId">> := string(),
%%   <<"ClientMetadata">> => map(),
%%   <<"Session">> => string(),
%%   <<"UserContextData">> => user_context_data_type()
%% }
-type initiate_auth_request() :: #{binary() => any()}.

%% Example:
%% complete_web_authn_registration_request() :: #{
%%   <<"AccessToken">> := string(),
%%   <<"Credential">> := any()
%% }
-type complete_web_authn_registration_request() :: #{binary() => any()}.

%% Example:
%% admin_update_device_status_response() :: #{

%% }
-type admin_update_device_status_response() :: #{binary() => any()}.

%% Example:
%% set_user_mfa_preference_response() :: #{

%% }
-type set_user_mfa_preference_response() :: #{binary() => any()}.

%% Example:
%% web_authn_challenge_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type web_authn_challenge_not_found_exception() :: #{binary() => any()}.

%% Example:
%% list_devices_request() :: #{
%%   <<"AccessToken">> := string(),
%%   <<"Limit">> => integer(),
%%   <<"PaginationToken">> => string()
%% }
-type list_devices_request() :: #{binary() => any()}.

%% Example:
%% update_user_pool_request() :: #{
%%   <<"AccountRecoverySetting">> => account_recovery_setting_type(),
%%   <<"AdminCreateUserConfig">> => admin_create_user_config_type(),
%%   <<"AutoVerifiedAttributes">> => list(list(any())()),
%%   <<"DeletionProtection">> => list(any()),
%%   <<"DeviceConfiguration">> => device_configuration_type(),
%%   <<"EmailConfiguration">> => email_configuration_type(),
%%   <<"EmailVerificationMessage">> => string(),
%%   <<"EmailVerificationSubject">> => string(),
%%   <<"LambdaConfig">> => lambda_config_type(),
%%   <<"MfaConfiguration">> => list(any()),
%%   <<"Policies">> => user_pool_policy_type(),
%%   <<"PoolName">> => string(),
%%   <<"SmsAuthenticationMessage">> => string(),
%%   <<"SmsConfiguration">> => sms_configuration_type(),
%%   <<"SmsVerificationMessage">> => string(),
%%   <<"UserAttributeUpdateSettings">> => user_attribute_update_settings_type(),
%%   <<"UserPoolAddOns">> => user_pool_add_ons_type(),
%%   <<"UserPoolId">> := string(),
%%   <<"UserPoolTags">> => map(),
%%   <<"UserPoolTier">> => list(any()),
%%   <<"VerificationMessageTemplate">> => verification_message_template_type()
%% }
-type update_user_pool_request() :: #{binary() => any()}.

%% Example:
%% get_csv_header_request() :: #{
%%   <<"UserPoolId">> := string()
%% }
-type get_csv_header_request() :: #{binary() => any()}.

%% Example:
%% unsupported_token_type_exception() :: #{
%%   <<"message">> => string()
%% }
-type unsupported_token_type_exception() :: #{binary() => any()}.

%% Example:
%% too_many_failed_attempts_exception() :: #{
%%   <<"message">> => string()
%% }
-type too_many_failed_attempts_exception() :: #{binary() => any()}.

%% Example:
%% tag_resource_request() :: #{
%%   <<"ResourceArn">> := string(),
%%   <<"Tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% delete_user_attributes_request() :: #{
%%   <<"AccessToken">> := string(),
%%   <<"UserAttributeNames">> := list(string()())
%% }
-type delete_user_attributes_request() :: #{binary() => any()}.

%% Example:
%% update_user_attributes_response() :: #{
%%   <<"CodeDeliveryDetailsList">> => list(code_delivery_details_type()())
%% }
-type update_user_attributes_response() :: #{binary() => any()}.

%% Example:
%% event_context_data_type() :: #{
%%   <<"City">> => string(),
%%   <<"Country">> => string(),
%%   <<"DeviceName">> => string(),
%%   <<"IpAddress">> => string(),
%%   <<"Timezone">> => string()
%% }
-type event_context_data_type() :: #{binary() => any()}.

%% Example:
%% describe_managed_login_branding_request() :: #{
%%   <<"ManagedLoginBrandingId">> := string(),
%%   <<"ReturnMergedResources">> => boolean(),
%%   <<"UserPoolId">> := string()
%% }
-type describe_managed_login_branding_request() :: #{binary() => any()}.

%% Example:
%% s3_configuration_type() :: #{
%%   <<"BucketArn">> => string()
%% }
-type s3_configuration_type() :: #{binary() => any()}.

%% Example:
%% user_not_confirmed_exception() :: #{
%%   <<"message">> => string()
%% }
-type user_not_confirmed_exception() :: #{binary() => any()}.

%% Example:
%% list_identity_providers_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"UserPoolId">> := string()
%% }
-type list_identity_providers_request() :: #{binary() => any()}.

%% Example:
%% user_pool_client_description() :: #{
%%   <<"ClientId">> => string(),
%%   <<"ClientName">> => string(),
%%   <<"UserPoolId">> => string()
%% }
-type user_pool_client_description() :: #{binary() => any()}.

%% Example:
%% unsupported_operation_exception() :: #{
%%   <<"message">> => string()
%% }
-type unsupported_operation_exception() :: #{binary() => any()}.

%% Example:
%% advanced_security_additional_flows_type() :: #{
%%   <<"CustomAuthMode">> => list(any())
%% }
-type advanced_security_additional_flows_type() :: #{binary() => any()}.

%% Example:
%% resource_server_scope_type() :: #{
%%   <<"ScopeDescription">> => string(),
%%   <<"ScopeName">> => string()
%% }
-type resource_server_scope_type() :: #{binary() => any()}.

%% Example:
%% invalid_email_role_access_policy_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_email_role_access_policy_exception() :: #{binary() => any()}.

%% Example:
%% unauthorized_exception() :: #{
%%   <<"message">> => string()
%% }
-type unauthorized_exception() :: #{binary() => any()}.

%% Example:
%% get_csv_header_response() :: #{
%%   <<"CSVHeader">> => list(string()()),
%%   <<"UserPoolId">> => string()
%% }
-type get_csv_header_response() :: #{binary() => any()}.

%% Example:
%% set_log_delivery_configuration_request() :: #{
%%   <<"LogConfigurations">> := list(log_configuration_type()()),
%%   <<"UserPoolId">> := string()
%% }
-type set_log_delivery_configuration_request() :: #{binary() => any()}.

%% Example:
%% update_identity_provider_response() :: #{
%%   <<"IdentityProvider">> => identity_provider_type()
%% }
-type update_identity_provider_response() :: #{binary() => any()}.

%% Example:
%% describe_identity_provider_request() :: #{
%%   <<"ProviderName">> := string(),
%%   <<"UserPoolId">> := string()
%% }
-type describe_identity_provider_request() :: #{binary() => any()}.

%% Example:
%% unsupported_user_state_exception() :: #{
%%   <<"message">> => string()
%% }
-type unsupported_user_state_exception() :: #{binary() => any()}.

%% Example:
%% password_history_policy_violation_exception() :: #{
%%   <<"message">> => string()
%% }
-type password_history_policy_violation_exception() :: #{binary() => any()}.

%% Example:
%% confirm_sign_up_response() :: #{
%%   <<"Session">> => string()
%% }
-type confirm_sign_up_response() :: #{binary() => any()}.

%% Example:
%% get_user_auth_factors_response() :: #{
%%   <<"ConfiguredUserAuthFactors">> => list(list(any())()),
%%   <<"PreferredMfaSetting">> => string(),
%%   <<"UserMFASettingList">> => list(string()()),
%%   <<"Username">> => string()
%% }
-type get_user_auth_factors_response() :: #{binary() => any()}.

%% Example:
%% create_user_pool_domain_request() :: #{
%%   <<"CustomDomainConfig">> => custom_domain_config_type(),
%%   <<"Domain">> := string(),
%%   <<"ManagedLoginVersion">> => integer(),
%%   <<"UserPoolId">> := string()
%% }
-type create_user_pool_domain_request() :: #{binary() => any()}.

%% Example:
%% admin_respond_to_auth_challenge_response() :: #{
%%   <<"AuthenticationResult">> => authentication_result_type(),
%%   <<"ChallengeName">> => list(any()),
%%   <<"ChallengeParameters">> => map(),
%%   <<"Session">> => string()
%% }
-type admin_respond_to_auth_challenge_response() :: #{binary() => any()}.

%% Example:
%% update_user_pool_domain_response() :: #{
%%   <<"CloudFrontDomain">> => string(),
%%   <<"ManagedLoginVersion">> => integer()
%% }
-type update_user_pool_domain_response() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{

%% }
-type untag_resource_response() :: #{binary() => any()}.

%% Example:
%% admin_create_user_request() :: #{
%%   <<"ClientMetadata">> => map(),
%%   <<"DesiredDeliveryMediums">> => list(list(any())()),
%%   <<"ForceAliasCreation">> => boolean(),
%%   <<"MessageAction">> => list(any()),
%%   <<"TemporaryPassword">> => string(),
%%   <<"UserAttributes">> => list(attribute_type()()),
%%   <<"UserPoolId">> := string(),
%%   <<"Username">> := string(),
%%   <<"ValidationData">> => list(attribute_type()())
%% }
-type admin_create_user_request() :: #{binary() => any()}.

%% Example:
%% admin_set_user_settings_response() :: #{

%% }
-type admin_set_user_settings_response() :: #{binary() => any()}.

%% Example:
%% describe_managed_login_branding_response() :: #{
%%   <<"ManagedLoginBranding">> => managed_login_branding_type()
%% }
-type describe_managed_login_branding_response() :: #{binary() => any()}.

%% Example:
%% admin_link_provider_for_user_request() :: #{
%%   <<"DestinationUser">> := provider_user_identifier_type(),
%%   <<"SourceUser">> := provider_user_identifier_type(),
%%   <<"UserPoolId">> := string()
%% }
-type admin_link_provider_for_user_request() :: #{binary() => any()}.

%% Example:
%% update_user_attributes_request() :: #{
%%   <<"AccessToken">> := string(),
%%   <<"ClientMetadata">> => map(),
%%   <<"UserAttributes">> := list(attribute_type()())
%% }
-type update_user_attributes_request() :: #{binary() => any()}.

%% Example:
%% admin_get_user_request() :: #{
%%   <<"UserPoolId">> := string(),
%%   <<"Username">> := string()
%% }
-type admin_get_user_request() :: #{binary() => any()}.

%% Example:
%% account_takeover_risk_configuration_type() :: #{
%%   <<"Actions">> => account_takeover_actions_type(),
%%   <<"NotifyConfiguration">> => notify_configuration_type()
%% }
-type account_takeover_risk_configuration_type() :: #{binary() => any()}.

%% Example:
%% sms_mfa_config_type() :: #{
%%   <<"SmsAuthenticationMessage">> => string(),
%%   <<"SmsConfiguration">> => sms_configuration_type()
%% }
-type sms_mfa_config_type() :: #{binary() => any()}.

%% Example:
%% device_secret_verifier_config_type() :: #{
%%   <<"PasswordVerifier">> => string(),
%%   <<"Salt">> => string()
%% }
-type device_secret_verifier_config_type() :: #{binary() => any()}.

%% Example:
%% forbidden_exception() :: #{
%%   <<"message">> => string()
%% }
-type forbidden_exception() :: #{binary() => any()}.

%% Example:
%% message_template_type() :: #{
%%   <<"EmailMessage">> => string(),
%%   <<"EmailSubject">> => string(),
%%   <<"SMSMessage">> => string()
%% }
-type message_template_type() :: #{binary() => any()}.

%% Example:
%% list_user_pools_request() :: #{
%%   <<"MaxResults">> := integer(),
%%   <<"NextToken">> => string()
%% }
-type list_user_pools_request() :: #{binary() => any()}.

%% Example:
%% new_device_metadata_type() :: #{
%%   <<"DeviceGroupKey">> => string(),
%%   <<"DeviceKey">> => string()
%% }
-type new_device_metadata_type() :: #{binary() => any()}.

%% Example:
%% describe_user_import_job_response() :: #{
%%   <<"UserImportJob">> => user_import_job_type()
%% }
-type describe_user_import_job_response() :: #{binary() => any()}.

%% Example:
%% associate_software_token_response() :: #{
%%   <<"SecretCode">> => string(),
%%   <<"Session">> => string()
%% }
-type associate_software_token_response() :: #{binary() => any()}.

%% Example:
%% start_web_authn_registration_request() :: #{
%%   <<"AccessToken">> := string()
%% }
-type start_web_authn_registration_request() :: #{binary() => any()}.

%% Example:
%% create_identity_provider_response() :: #{
%%   <<"IdentityProvider">> => identity_provider_type()
%% }
-type create_identity_provider_response() :: #{binary() => any()}.

%% Example:
%% update_resource_server_response() :: #{
%%   <<"ResourceServer">> => resource_server_type()
%% }
-type update_resource_server_response() :: #{binary() => any()}.

%% Example:
%% number_attribute_constraints_type() :: #{
%%   <<"MaxValue">> => string(),
%%   <<"MinValue">> => string()
%% }
-type number_attribute_constraints_type() :: #{binary() => any()}.

%% Example:
%% web_authn_configuration_type() :: #{
%%   <<"RelyingPartyId">> => string(),
%%   <<"UserVerification">> => list(any())
%% }
-type web_authn_configuration_type() :: #{binary() => any()}.

%% Example:
%% admin_add_user_to_group_request() :: #{
%%   <<"GroupName">> := string(),
%%   <<"UserPoolId">> := string(),
%%   <<"Username">> := string()
%% }
-type admin_add_user_to_group_request() :: #{binary() => any()}.

%% Example:
%% alias_exists_exception() :: #{
%%   <<"message">> => string()
%% }
-type alias_exists_exception() :: #{binary() => any()}.

%% Example:
%% verify_software_token_response() :: #{
%%   <<"Session">> => string(),
%%   <<"Status">> => list(any())
%% }
-type verify_software_token_response() :: #{binary() => any()}.

%% Example:
%% delete_user_pool_domain_response() :: #{

%% }
-type delete_user_pool_domain_response() :: #{binary() => any()}.

%% Example:
%% get_user_response() :: #{
%%   <<"MFAOptions">> => list(mfa_option_type()()),
%%   <<"PreferredMfaSetting">> => string(),
%%   <<"UserAttributes">> => list(attribute_type()()),
%%   <<"UserMFASettingList">> => list(string()()),
%%   <<"Username">> => string()
%% }
-type get_user_response() :: #{binary() => any()}.

%% Example:
%% list_users_in_group_request() :: #{
%%   <<"GroupName">> := string(),
%%   <<"Limit">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"UserPoolId">> := string()
%% }
-type list_users_in_group_request() :: #{binary() => any()}.

%% Example:
%% user_type() :: #{
%%   <<"Attributes">> => list(attribute_type()()),
%%   <<"Enabled">> => boolean(),
%%   <<"MFAOptions">> => list(mfa_option_type()()),
%%   <<"UserCreateDate">> => non_neg_integer(),
%%   <<"UserLastModifiedDate">> => non_neg_integer(),
%%   <<"UserStatus">> => list(any()),
%%   <<"Username">> => string()
%% }
-type user_type() :: #{binary() => any()}.

%% Example:
%% list_user_pools_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"UserPools">> => list(user_pool_description_type()())
%% }
-type list_user_pools_response() :: #{binary() => any()}.

%% Example:
%% create_user_pool_response() :: #{
%%   <<"UserPool">> => user_pool_type()
%% }
-type create_user_pool_response() :: #{binary() => any()}.

%% Example:
%% describe_risk_configuration_request() :: #{
%%   <<"ClientId">> => string(),
%%   <<"UserPoolId">> := string()
%% }
-type describe_risk_configuration_request() :: #{binary() => any()}.

%% Example:
%% describe_identity_provider_response() :: #{
%%   <<"IdentityProvider">> => identity_provider_type()
%% }
-type describe_identity_provider_response() :: #{binary() => any()}.

%% Example:
%% delete_identity_provider_request() :: #{
%%   <<"ProviderName">> := string(),
%%   <<"UserPoolId">> := string()
%% }
-type delete_identity_provider_request() :: #{binary() => any()}.

%% Example:
%% compromised_credentials_risk_configuration_type() :: #{
%%   <<"Actions">> => compromised_credentials_actions_type(),
%%   <<"EventFilter">> => list(list(any())())
%% }
-type compromised_credentials_risk_configuration_type() :: #{binary() => any()}.

%% Example:
%% describe_user_pool_domain_request() :: #{
%%   <<"Domain">> := string()
%% }
-type describe_user_pool_domain_request() :: #{binary() => any()}.

%% Example:
%% compromised_credentials_actions_type() :: #{
%%   <<"EventAction">> => list(any())
%% }
-type compromised_credentials_actions_type() :: #{binary() => any()}.

%% Example:
%% update_resource_server_request() :: #{
%%   <<"Identifier">> := string(),
%%   <<"Name">> := string(),
%%   <<"Scopes">> => list(resource_server_scope_type()()),
%%   <<"UserPoolId">> := string()
%% }
-type update_resource_server_request() :: #{binary() => any()}.

%% Example:
%% user_pool_description_type() :: #{
%%   <<"CreationDate">> => non_neg_integer(),
%%   <<"Id">> => string(),
%%   <<"LambdaConfig">> => lambda_config_type(),
%%   <<"LastModifiedDate">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"Status">> => list(any())
%% }
-type user_pool_description_type() :: #{binary() => any()}.

%% Example:
%% verify_software_token_request() :: #{
%%   <<"AccessToken">> => string(),
%%   <<"FriendlyDeviceName">> => string(),
%%   <<"Session">> => string(),
%%   <<"UserCode">> := string()
%% }
-type verify_software_token_request() :: #{binary() => any()}.

%% Example:
%% describe_resource_server_response() :: #{
%%   <<"ResourceServer">> => resource_server_type()
%% }
-type describe_resource_server_response() :: #{binary() => any()}.

%% Example:
%% group_type() :: #{
%%   <<"CreationDate">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"GroupName">> => string(),
%%   <<"LastModifiedDate">> => non_neg_integer(),
%%   <<"Precedence">> => integer(),
%%   <<"RoleArn">> => string(),
%%   <<"UserPoolId">> => string()
%% }
-type group_type() :: #{binary() => any()}.

%% Example:
%% get_user_pool_mfa_config_request() :: #{
%%   <<"UserPoolId">> := string()
%% }
-type get_user_pool_mfa_config_request() :: #{binary() => any()}.

%% Example:
%% change_password_response() :: #{

%% }
-type change_password_response() :: #{binary() => any()}.

%% Example:
%% admin_create_user_response() :: #{
%%   <<"User">> => user_type()
%% }
-type admin_create_user_response() :: #{binary() => any()}.

%% Example:
%% web_authn_relying_party_mismatch_exception() :: #{
%%   <<"message">> => string()
%% }
-type web_authn_relying_party_mismatch_exception() :: #{binary() => any()}.

%% Example:
%% describe_resource_server_request() :: #{
%%   <<"Identifier">> := string(),
%%   <<"UserPoolId">> := string()
%% }
-type describe_resource_server_request() :: #{binary() => any()}.

%% Example:
%% global_sign_out_request() :: #{
%%   <<"AccessToken">> := string()
%% }
-type global_sign_out_request() :: #{binary() => any()}.

%% Example:
%% delete_user_attributes_response() :: #{

%% }
-type delete_user_attributes_response() :: #{binary() => any()}.

%% Example:
%% get_user_attribute_verification_code_request() :: #{
%%   <<"AccessToken">> := string(),
%%   <<"AttributeName">> := string(),
%%   <<"ClientMetadata">> => map()
%% }
-type get_user_attribute_verification_code_request() :: #{binary() => any()}.

%% Example:
%% user_attribute_update_settings_type() :: #{
%%   <<"AttributesRequireVerificationBeforeUpdate">> => list(list(any())())
%% }
-type user_attribute_update_settings_type() :: #{binary() => any()}.

%% Example:
%% software_token_mfa_settings_type() :: #{
%%   <<"Enabled">> => boolean(),
%%   <<"PreferredMfa">> => boolean()
%% }
-type software_token_mfa_settings_type() :: #{binary() => any()}.

%% Example:
%% describe_managed_login_branding_by_client_request() :: #{
%%   <<"ClientId">> := string(),
%%   <<"ReturnMergedResources">> => boolean(),
%%   <<"UserPoolId">> := string()
%% }
-type describe_managed_login_branding_by_client_request() :: #{binary() => any()}.

%% Example:
%% admin_list_groups_for_user_request() :: #{
%%   <<"Limit">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"UserPoolId">> := string(),
%%   <<"Username">> := string()
%% }
-type admin_list_groups_for_user_request() :: #{binary() => any()}.

%% Example:
%% start_web_authn_registration_response() :: #{
%%   <<"CredentialCreationOptions">> => any()
%% }
-type start_web_authn_registration_response() :: #{binary() => any()}.

%% Example:
%% attribute_type() :: #{
%%   <<"Name">> => string(),
%%   <<"Value">> => string()
%% }
-type attribute_type() :: #{binary() => any()}.

%% Example:
%% user_pool_client_type() :: #{
%%   <<"AccessTokenValidity">> => integer(),
%%   <<"AllowedOAuthFlows">> => list(list(any())()),
%%   <<"AllowedOAuthFlowsUserPoolClient">> => boolean(),
%%   <<"AllowedOAuthScopes">> => list(string()()),
%%   <<"AnalyticsConfiguration">> => analytics_configuration_type(),
%%   <<"AuthSessionValidity">> => integer(),
%%   <<"CallbackURLs">> => list(string()()),
%%   <<"ClientId">> => string(),
%%   <<"ClientName">> => string(),
%%   <<"ClientSecret">> => string(),
%%   <<"CreationDate">> => non_neg_integer(),
%%   <<"DefaultRedirectURI">> => string(),
%%   <<"EnablePropagateAdditionalUserContextData">> => boolean(),
%%   <<"EnableTokenRevocation">> => boolean(),
%%   <<"ExplicitAuthFlows">> => list(list(any())()),
%%   <<"IdTokenValidity">> => integer(),
%%   <<"LastModifiedDate">> => non_neg_integer(),
%%   <<"LogoutURLs">> => list(string()()),
%%   <<"PreventUserExistenceErrors">> => list(any()),
%%   <<"ReadAttributes">> => list(string()()),
%%   <<"RefreshTokenValidity">> => integer(),
%%   <<"SupportedIdentityProviders">> => list(string()()),
%%   <<"TokenValidityUnits">> => token_validity_units_type(),
%%   <<"UserPoolId">> => string(),
%%   <<"WriteAttributes">> => list(string()())
%% }
-type user_pool_client_type() :: #{binary() => any()}.

%% Example:
%% admin_create_user_config_type() :: #{
%%   <<"AllowAdminCreateUserOnly">> => boolean(),
%%   <<"InviteMessageTemplate">> => message_template_type(),
%%   <<"UnusedAccountValidityDays">> => integer()
%% }
-type admin_create_user_config_type() :: #{binary() => any()}.

%% Example:
%% sign_in_policy_type() :: #{
%%   <<"AllowedFirstAuthFactors">> => list(list(any())())
%% }
-type sign_in_policy_type() :: #{binary() => any()}.

%% Example:
%% untag_resource_request() :: #{
%%   <<"ResourceArn">> := string(),
%%   <<"TagKeys">> := list(string()())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% set_user_pool_mfa_config_response() :: #{
%%   <<"EmailMfaConfiguration">> => email_mfa_config_type(),
%%   <<"MfaConfiguration">> => list(any()),
%%   <<"SmsMfaConfiguration">> => sms_mfa_config_type(),
%%   <<"SoftwareTokenMfaConfiguration">> => software_token_mfa_config_type(),
%%   <<"WebAuthnConfiguration">> => web_authn_configuration_type()
%% }
-type set_user_pool_mfa_config_response() :: #{binary() => any()}.

%% Example:
%% duplicate_provider_exception() :: #{
%%   <<"message">> => string()
%% }
-type duplicate_provider_exception() :: #{binary() => any()}.

%% Example:
%% too_many_requests_exception() :: #{
%%   <<"message">> => string()
%% }
-type too_many_requests_exception() :: #{binary() => any()}.

%% Example:
%% admin_get_user_response() :: #{
%%   <<"Enabled">> => boolean(),
%%   <<"MFAOptions">> => list(mfa_option_type()()),
%%   <<"PreferredMfaSetting">> => string(),
%%   <<"UserAttributes">> => list(attribute_type()()),
%%   <<"UserCreateDate">> => non_neg_integer(),
%%   <<"UserLastModifiedDate">> => non_neg_integer(),
%%   <<"UserMFASettingList">> => list(string()()),
%%   <<"UserStatus">> => list(any()),
%%   <<"Username">> => string()
%% }
-type admin_get_user_response() :: #{binary() => any()}.

%% Example:
%% confirm_device_request() :: #{
%%   <<"AccessToken">> := string(),
%%   <<"DeviceKey">> := string(),
%%   <<"DeviceName">> => string(),
%%   <<"DeviceSecretVerifierConfig">> => device_secret_verifier_config_type()
%% }
-type confirm_device_request() :: #{binary() => any()}.

%% Example:
%% create_user_import_job_response() :: #{
%%   <<"UserImportJob">> => user_import_job_type()
%% }
-type create_user_import_job_response() :: #{binary() => any()}.

%% Example:
%% update_user_pool_domain_request() :: #{
%%   <<"CustomDomainConfig">> => custom_domain_config_type(),
%%   <<"Domain">> := string(),
%%   <<"ManagedLoginVersion">> => integer(),
%%   <<"UserPoolId">> := string()
%% }
-type update_user_pool_domain_request() :: #{binary() => any()}.

%% Example:
%% update_group_request() :: #{
%%   <<"Description">> => string(),
%%   <<"GroupName">> := string(),
%%   <<"Precedence">> => integer(),
%%   <<"RoleArn">> => string(),
%%   <<"UserPoolId">> := string()
%% }
-type update_group_request() :: #{binary() => any()}.

%% Example:
%% add_custom_attributes_response() :: #{

%% }
-type add_custom_attributes_response() :: #{binary() => any()}.

%% Example:
%% user_pool_policy_type() :: #{
%%   <<"PasswordPolicy">> => password_policy_type(),
%%   <<"SignInPolicy">> => sign_in_policy_type()
%% }
-type user_pool_policy_type() :: #{binary() => any()}.

%% Example:
%% admin_disable_user_response() :: #{

%% }
-type admin_disable_user_response() :: #{binary() => any()}.

%% Example:
%% admin_update_user_attributes_request() :: #{
%%   <<"ClientMetadata">> => map(),
%%   <<"UserAttributes">> := list(attribute_type()()),
%%   <<"UserPoolId">> := string(),
%%   <<"Username">> := string()
%% }
-type admin_update_user_attributes_request() :: #{binary() => any()}.

%% Example:
%% admin_enable_user_response() :: #{

%% }
-type admin_enable_user_response() :: #{binary() => any()}.

%% Example:
%% identity_provider_type() :: #{
%%   <<"AttributeMapping">> => map(),
%%   <<"CreationDate">> => non_neg_integer(),
%%   <<"IdpIdentifiers">> => list(string()()),
%%   <<"LastModifiedDate">> => non_neg_integer(),
%%   <<"ProviderDetails">> => map(),
%%   <<"ProviderName">> => string(),
%%   <<"ProviderType">> => list(any()),
%%   <<"UserPoolId">> => string()
%% }
-type identity_provider_type() :: #{binary() => any()}.

%% Example:
%% delete_resource_server_request() :: #{
%%   <<"Identifier">> := string(),
%%   <<"UserPoolId">> := string()
%% }
-type delete_resource_server_request() :: #{binary() => any()}.

%% Example:
%% describe_risk_configuration_response() :: #{
%%   <<"RiskConfiguration">> => risk_configuration_type()
%% }
-type describe_risk_configuration_response() :: #{binary() => any()}.

%% Example:
%% admin_set_user_settings_request() :: #{
%%   <<"MFAOptions">> := list(mfa_option_type()()),
%%   <<"UserPoolId">> := string(),
%%   <<"Username">> := string()
%% }
-type admin_set_user_settings_request() :: #{binary() => any()}.

%% Example:
%% set_ui_customization_request() :: #{
%%   <<"CSS">> => string(),
%%   <<"ClientId">> => string(),
%%   <<"ImageFile">> => binary(),
%%   <<"UserPoolId">> := string()
%% }
-type set_ui_customization_request() :: #{binary() => any()}.

%% Example:
%% invalid_sms_role_access_policy_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_sms_role_access_policy_exception() :: #{binary() => any()}.

%% Example:
%% get_identity_provider_by_identifier_request() :: #{
%%   <<"IdpIdentifier">> := string(),
%%   <<"UserPoolId">> := string()
%% }
-type get_identity_provider_by_identifier_request() :: #{binary() => any()}.

%% Example:
%% admin_set_user_mfa_preference_response() :: #{

%% }
-type admin_set_user_mfa_preference_response() :: #{binary() => any()}.

%% Example:
%% update_user_pool_response() :: #{

%% }
-type update_user_pool_response() :: #{binary() => any()}.

%% Example:
%% set_risk_configuration_request() :: #{
%%   <<"AccountTakeoverRiskConfiguration">> => account_takeover_risk_configuration_type(),
%%   <<"ClientId">> => string(),
%%   <<"CompromisedCredentialsRiskConfiguration">> => compromised_credentials_risk_configuration_type(),
%%   <<"RiskExceptionConfiguration">> => risk_exception_configuration_type(),
%%   <<"UserPoolId">> := string()
%% }
-type set_risk_configuration_request() :: #{binary() => any()}.

%% Example:
%% update_device_status_response() :: #{

%% }
-type update_device_status_response() :: #{binary() => any()}.

%% Example:
%% update_managed_login_branding_request() :: #{
%%   <<"Assets">> => list(asset_type()()),
%%   <<"ManagedLoginBrandingId">> => string(),
%%   <<"Settings">> => any(),
%%   <<"UseCognitoProvidedValues">> => boolean(),
%%   <<"UserPoolId">> => string()
%% }
-type update_managed_login_branding_request() :: #{binary() => any()}.

%% Example:
%% admin_user_global_sign_out_response() :: #{

%% }
-type admin_user_global_sign_out_response() :: #{binary() => any()}.

%% Example:
%% describe_user_pool_client_response() :: #{
%%   <<"UserPoolClient">> => user_pool_client_type()
%% }
-type describe_user_pool_client_response() :: #{binary() => any()}.

%% Example:
%% code_mismatch_exception() :: #{
%%   <<"message">> => string()
%% }
-type code_mismatch_exception() :: #{binary() => any()}.

%% Example:
%% get_signing_certificate_response() :: #{
%%   <<"Certificate">> => string()
%% }
-type get_signing_certificate_response() :: #{binary() => any()}.

%% Example:
%% custom_email_lambda_version_config_type() :: #{
%%   <<"LambdaArn">> => string(),
%%   <<"LambdaVersion">> => list(any())
%% }
-type custom_email_lambda_version_config_type() :: #{binary() => any()}.

%% Example:
%% device_type() :: #{
%%   <<"DeviceAttributes">> => list(attribute_type()()),
%%   <<"DeviceCreateDate">> => non_neg_integer(),
%%   <<"DeviceKey">> => string(),
%%   <<"DeviceLastAuthenticatedDate">> => non_neg_integer(),
%%   <<"DeviceLastModifiedDate">> => non_neg_integer()
%% }
-type device_type() :: #{binary() => any()}.

%% Example:
%% delete_managed_login_branding_request() :: #{
%%   <<"ManagedLoginBrandingId">> := string(),
%%   <<"UserPoolId">> := string()
%% }
-type delete_managed_login_branding_request() :: #{binary() => any()}.

%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% get_user_pool_mfa_config_response() :: #{
%%   <<"EmailMfaConfiguration">> => email_mfa_config_type(),
%%   <<"MfaConfiguration">> => list(any()),
%%   <<"SmsMfaConfiguration">> => sms_mfa_config_type(),
%%   <<"SoftwareTokenMfaConfiguration">> => software_token_mfa_config_type(),
%%   <<"WebAuthnConfiguration">> => web_authn_configuration_type()
%% }
-type get_user_pool_mfa_config_response() :: #{binary() => any()}.

%% Example:
%% get_user_auth_factors_request() :: #{
%%   <<"AccessToken">> := string()
%% }
-type get_user_auth_factors_request() :: #{binary() => any()}.

%% Example:
%% revoke_token_response() :: #{

%% }
-type revoke_token_response() :: #{binary() => any()}.

%% Example:
%% ui_customization_type() :: #{
%%   <<"CSS">> => string(),
%%   <<"CSSVersion">> => string(),
%%   <<"ClientId">> => string(),
%%   <<"CreationDate">> => non_neg_integer(),
%%   <<"ImageUrl">> => string(),
%%   <<"LastModifiedDate">> => non_neg_integer(),
%%   <<"UserPoolId">> => string()
%% }
-type ui_customization_type() :: #{binary() => any()}.

%% Example:
%% get_user_request() :: #{
%%   <<"AccessToken">> := string()
%% }
-type get_user_request() :: #{binary() => any()}.

%% Example:
%% verify_user_attribute_request() :: #{
%%   <<"AccessToken">> := string(),
%%   <<"AttributeName">> := string(),
%%   <<"Code">> := string()
%% }
-type verify_user_attribute_request() :: #{binary() => any()}.

%% Example:
%% notify_email_type() :: #{
%%   <<"HtmlBody">> => string(),
%%   <<"Subject">> => string(),
%%   <<"TextBody">> => string()
%% }
-type notify_email_type() :: #{binary() => any()}.

%% Example:
%% admin_update_auth_event_feedback_request() :: #{
%%   <<"EventId">> := string(),
%%   <<"FeedbackValue">> := list(any()),
%%   <<"UserPoolId">> := string(),
%%   <<"Username">> := string()
%% }
-type admin_update_auth_event_feedback_request() :: #{binary() => any()}.

%% Example:
%% list_users_in_group_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Users">> => list(user_type()())
%% }
-type list_users_in_group_response() :: #{binary() => any()}.

%% Example:
%% scope_does_not_exist_exception() :: #{
%%   <<"message">> => string()
%% }
-type scope_does_not_exist_exception() :: #{binary() => any()}.

%% Example:
%% respond_to_auth_challenge_request() :: #{
%%   <<"AnalyticsMetadata">> => analytics_metadata_type(),
%%   <<"ChallengeName">> := list(any()),
%%   <<"ChallengeResponses">> => map(),
%%   <<"ClientId">> := string(),
%%   <<"ClientMetadata">> => map(),
%%   <<"Session">> => string(),
%%   <<"UserContextData">> => user_context_data_type()
%% }
-type respond_to_auth_challenge_request() :: #{binary() => any()}.

%% Example:
%% tier_change_not_allowed_exception() :: #{
%%   <<"message">> => string()
%% }
-type tier_change_not_allowed_exception() :: #{binary() => any()}.

%% Example:
%% set_ui_customization_response() :: #{
%%   <<"UICustomization">> => ui_customization_type()
%% }
-type set_ui_customization_response() :: #{binary() => any()}.

%% Example:
%% token_validity_units_type() :: #{
%%   <<"AccessToken">> => list(any()),
%%   <<"IdToken">> => list(any()),
%%   <<"RefreshToken">> => list(any())
%% }
-type token_validity_units_type() :: #{binary() => any()}.

%% Example:
%% user_context_data_type() :: #{
%%   <<"EncodedData">> => string(),
%%   <<"IpAddress">> => string()
%% }
-type user_context_data_type() :: #{binary() => any()}.

%% Example:
%% managed_login_branding_exists_exception() :: #{
%%   <<"message">> => string()
%% }
-type managed_login_branding_exists_exception() :: #{binary() => any()}.

%% Example:
%% string_attribute_constraints_type() :: #{
%%   <<"MaxLength">> => string(),
%%   <<"MinLength">> => string()
%% }
-type string_attribute_constraints_type() :: #{binary() => any()}.

%% Example:
%% admin_delete_user_attributes_request() :: #{
%%   <<"UserAttributeNames">> := list(string()()),
%%   <<"UserPoolId">> := string(),
%%   <<"Username">> := string()
%% }
-type admin_delete_user_attributes_request() :: #{binary() => any()}.

%% Example:
%% lambda_config_type() :: #{
%%   <<"CreateAuthChallenge">> => string(),
%%   <<"CustomEmailSender">> => custom_email_lambda_version_config_type(),
%%   <<"CustomMessage">> => string(),
%%   <<"CustomSMSSender">> => custom_sms_lambda_version_config_type(),
%%   <<"DefineAuthChallenge">> => string(),
%%   <<"KMSKeyID">> => string(),
%%   <<"PostAuthentication">> => string(),
%%   <<"PostConfirmation">> => string(),
%%   <<"PreAuthentication">> => string(),
%%   <<"PreSignUp">> => string(),
%%   <<"PreTokenGeneration">> => string(),
%%   <<"PreTokenGenerationConfig">> => pre_token_generation_version_config_type(),
%%   <<"UserMigration">> => string(),
%%   <<"VerifyAuthChallengeResponse">> => string()
%% }
-type lambda_config_type() :: #{binary() => any()}.

%% Example:
%% log_delivery_configuration_type() :: #{
%%   <<"LogConfigurations">> => list(log_configuration_type()()),
%%   <<"UserPoolId">> => string()
%% }
-type log_delivery_configuration_type() :: #{binary() => any()}.

%% Example:
%% risk_exception_configuration_type() :: #{
%%   <<"BlockedIPRangeList">> => list(string()()),
%%   <<"SkippedIPRangeList">> => list(string()())
%% }
-type risk_exception_configuration_type() :: #{binary() => any()}.

%% Example:
%% group_exists_exception() :: #{
%%   <<"message">> => string()
%% }
-type group_exists_exception() :: #{binary() => any()}.

%% Example:
%% password_reset_required_exception() :: #{
%%   <<"message">> => string()
%% }
-type password_reset_required_exception() :: #{binary() => any()}.

%% Example:
%% web_authn_client_mismatch_exception() :: #{
%%   <<"message">> => string()
%% }
-type web_authn_client_mismatch_exception() :: #{binary() => any()}.

%% Example:
%% admin_set_user_password_response() :: #{

%% }
-type admin_set_user_password_response() :: #{binary() => any()}.

%% Example:
%% admin_list_devices_request() :: #{
%%   <<"Limit">> => integer(),
%%   <<"PaginationToken">> => string(),
%%   <<"UserPoolId">> := string(),
%%   <<"Username">> := string()
%% }
-type admin_list_devices_request() :: #{binary() => any()}.

%% Example:
%% create_user_pool_client_response() :: #{
%%   <<"UserPoolClient">> => user_pool_client_type()
%% }
-type create_user_pool_client_response() :: #{binary() => any()}.

%% Example:
%% describe_user_pool_response() :: #{
%%   <<"UserPool">> => user_pool_type()
%% }
-type describe_user_pool_response() :: #{binary() => any()}.

%% Example:
%% create_user_pool_request() :: #{
%%   <<"AccountRecoverySetting">> => account_recovery_setting_type(),
%%   <<"AdminCreateUserConfig">> => admin_create_user_config_type(),
%%   <<"AliasAttributes">> => list(list(any())()),
%%   <<"AutoVerifiedAttributes">> => list(list(any())()),
%%   <<"DeletionProtection">> => list(any()),
%%   <<"DeviceConfiguration">> => device_configuration_type(),
%%   <<"EmailConfiguration">> => email_configuration_type(),
%%   <<"EmailVerificationMessage">> => string(),
%%   <<"EmailVerificationSubject">> => string(),
%%   <<"LambdaConfig">> => lambda_config_type(),
%%   <<"MfaConfiguration">> => list(any()),
%%   <<"Policies">> => user_pool_policy_type(),
%%   <<"PoolName">> := string(),
%%   <<"Schema">> => list(schema_attribute_type()()),
%%   <<"SmsAuthenticationMessage">> => string(),
%%   <<"SmsConfiguration">> => sms_configuration_type(),
%%   <<"SmsVerificationMessage">> => string(),
%%   <<"UserAttributeUpdateSettings">> => user_attribute_update_settings_type(),
%%   <<"UserPoolAddOns">> => user_pool_add_ons_type(),
%%   <<"UserPoolTags">> => map(),
%%   <<"UserPoolTier">> => list(any()),
%%   <<"UsernameAttributes">> => list(list(any())()),
%%   <<"UsernameConfiguration">> => username_configuration_type(),
%%   <<"VerificationMessageTemplate">> => verification_message_template_type()
%% }
-type create_user_pool_request() :: #{binary() => any()}.

%% Example:
%% list_user_import_jobs_response() :: #{
%%   <<"PaginationToken">> => string(),
%%   <<"UserImportJobs">> => list(user_import_job_type()())
%% }
-type list_user_import_jobs_response() :: #{binary() => any()}.

%% Example:
%% list_users_response() :: #{
%%   <<"PaginationToken">> => string(),
%%   <<"Users">> => list(user_type()())
%% }
-type list_users_response() :: #{binary() => any()}.

%% Example:
%% user_import_job_type() :: #{
%%   <<"CloudWatchLogsRoleArn">> => string(),
%%   <<"CompletionDate">> => non_neg_integer(),
%%   <<"CompletionMessage">> => string(),
%%   <<"CreationDate">> => non_neg_integer(),
%%   <<"FailedUsers">> => float(),
%%   <<"ImportedUsers">> => float(),
%%   <<"JobId">> => string(),
%%   <<"JobName">> => string(),
%%   <<"PreSignedUrl">> => string(),
%%   <<"SkippedUsers">> => float(),
%%   <<"StartDate">> => non_neg_integer(),
%%   <<"Status">> => list(any()),
%%   <<"UserPoolId">> => string()
%% }
-type user_import_job_type() :: #{binary() => any()}.

%% Example:
%% create_user_pool_client_request() :: #{
%%   <<"AccessTokenValidity">> => integer(),
%%   <<"AllowedOAuthFlows">> => list(list(any())()),
%%   <<"AllowedOAuthFlowsUserPoolClient">> => boolean(),
%%   <<"AllowedOAuthScopes">> => list(string()()),
%%   <<"AnalyticsConfiguration">> => analytics_configuration_type(),
%%   <<"AuthSessionValidity">> => integer(),
%%   <<"CallbackURLs">> => list(string()()),
%%   <<"ClientName">> := string(),
%%   <<"DefaultRedirectURI">> => string(),
%%   <<"EnablePropagateAdditionalUserContextData">> => boolean(),
%%   <<"EnableTokenRevocation">> => boolean(),
%%   <<"ExplicitAuthFlows">> => list(list(any())()),
%%   <<"GenerateSecret">> => boolean(),
%%   <<"IdTokenValidity">> => integer(),
%%   <<"LogoutURLs">> => list(string()()),
%%   <<"PreventUserExistenceErrors">> => list(any()),
%%   <<"ReadAttributes">> => list(string()()),
%%   <<"RefreshTokenValidity">> => integer(),
%%   <<"SupportedIdentityProviders">> => list(string()()),
%%   <<"TokenValidityUnits">> => token_validity_units_type(),
%%   <<"UserPoolId">> := string(),
%%   <<"WriteAttributes">> => list(string()())
%% }
-type create_user_pool_client_request() :: #{binary() => any()}.

%% Example:
%% get_identity_provider_by_identifier_response() :: #{
%%   <<"IdentityProvider">> => identity_provider_type()
%% }
-type get_identity_provider_by_identifier_response() :: #{binary() => any()}.

%% Example:
%% web_authn_configuration_missing_exception() :: #{
%%   <<"message">> => string()
%% }
-type web_authn_configuration_missing_exception() :: #{binary() => any()}.

%% Example:
%% admin_disable_provider_for_user_response() :: #{

%% }
-type admin_disable_provider_for_user_response() :: #{binary() => any()}.

%% Example:
%% cloud_watch_logs_configuration_type() :: #{
%%   <<"LogGroupArn">> => string()
%% }
-type cloud_watch_logs_configuration_type() :: #{binary() => any()}.

%% Example:
%% delete_user_pool_client_request() :: #{
%%   <<"ClientId">> := string(),
%%   <<"UserPoolId">> := string()
%% }
-type delete_user_pool_client_request() :: #{binary() => any()}.

%% Example:
%% user_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type user_not_found_exception() :: #{binary() => any()}.

%% Example:
%% feature_unavailable_in_tier_exception() :: #{
%%   <<"message">> => string()
%% }
-type feature_unavailable_in_tier_exception() :: #{binary() => any()}.

%% Example:
%% managed_login_branding_type() :: #{
%%   <<"Assets">> => list(asset_type()()),
%%   <<"CreationDate">> => non_neg_integer(),
%%   <<"LastModifiedDate">> => non_neg_integer(),
%%   <<"ManagedLoginBrandingId">> => string(),
%%   <<"Settings">> => any(),
%%   <<"UseCognitoProvidedValues">> => boolean(),
%%   <<"UserPoolId">> => string()
%% }
-type managed_login_branding_type() :: #{binary() => any()}.

%% Example:
%% password_policy_type() :: #{
%%   <<"MinimumLength">> => integer(),
%%   <<"PasswordHistorySize">> => integer(),
%%   <<"RequireLowercase">> => boolean(),
%%   <<"RequireNumbers">> => boolean(),
%%   <<"RequireSymbols">> => boolean(),
%%   <<"RequireUppercase">> => boolean(),
%%   <<"TemporaryPasswordValidityDays">> => integer()
%% }
-type password_policy_type() :: #{binary() => any()}.

%% Example:
%% admin_confirm_sign_up_request() :: #{
%%   <<"ClientMetadata">> => map(),
%%   <<"UserPoolId">> := string(),
%%   <<"Username">> := string()
%% }
-type admin_confirm_sign_up_request() :: #{binary() => any()}.

%% Example:
%% custom_domain_config_type() :: #{
%%   <<"CertificateArn">> => string()
%% }
-type custom_domain_config_type() :: #{binary() => any()}.

%% Example:
%% custom_sms_lambda_version_config_type() :: #{
%%   <<"LambdaArn">> => string(),
%%   <<"LambdaVersion">> => list(any())
%% }
-type custom_sms_lambda_version_config_type() :: #{binary() => any()}.

%% Example:
%% admin_enable_user_request() :: #{
%%   <<"UserPoolId">> := string(),
%%   <<"Username">> := string()
%% }
-type admin_enable_user_request() :: #{binary() => any()}.

%% Example:
%% create_resource_server_request() :: #{
%%   <<"Identifier">> := string(),
%%   <<"Name">> := string(),
%%   <<"Scopes">> => list(resource_server_scope_type()()),
%%   <<"UserPoolId">> := string()
%% }
-type create_resource_server_request() :: #{binary() => any()}.

%% Example:
%% admin_initiate_auth_request() :: #{
%%   <<"AnalyticsMetadata">> => analytics_metadata_type(),
%%   <<"AuthFlow">> := list(any()),
%%   <<"AuthParameters">> => map(),
%%   <<"ClientId">> := string(),
%%   <<"ClientMetadata">> => map(),
%%   <<"ContextData">> => context_data_type(),
%%   <<"Session">> => string(),
%%   <<"UserPoolId">> := string()
%% }
-type admin_initiate_auth_request() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"Tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.

%% Example:
%% update_device_status_request() :: #{
%%   <<"AccessToken">> := string(),
%%   <<"DeviceKey">> := string(),
%%   <<"DeviceRememberedStatus">> => list(any())
%% }
-type update_device_status_request() :: #{binary() => any()}.

%% Example:
%% resource_server_type() :: #{
%%   <<"Identifier">> => string(),
%%   <<"Name">> => string(),
%%   <<"Scopes">> => list(resource_server_scope_type()()),
%%   <<"UserPoolId">> => string()
%% }
-type resource_server_type() :: #{binary() => any()}.

%% Example:
%% software_token_mfa_config_type() :: #{
%%   <<"Enabled">> => boolean()
%% }
-type software_token_mfa_config_type() :: #{binary() => any()}.

%% Example:
%% list_devices_response() :: #{
%%   <<"Devices">> => list(device_type()()),
%%   <<"PaginationToken">> => string()
%% }
-type list_devices_response() :: #{binary() => any()}.

%% Example:
%% admin_reset_user_password_response() :: #{

%% }
-type admin_reset_user_password_response() :: #{binary() => any()}.

%% Example:
%% create_group_request() :: #{
%%   <<"Description">> => string(),
%%   <<"GroupName">> := string(),
%%   <<"Precedence">> => integer(),
%%   <<"RoleArn">> => string(),
%%   <<"UserPoolId">> := string()
%% }
-type create_group_request() :: #{binary() => any()}.

%% Example:
%% admin_user_global_sign_out_request() :: #{
%%   <<"UserPoolId">> := string(),
%%   <<"Username">> := string()
%% }
-type admin_user_global_sign_out_request() :: #{binary() => any()}.

%% Example:
%% update_auth_event_feedback_response() :: #{

%% }
-type update_auth_event_feedback_response() :: #{binary() => any()}.

%% Example:
%% invalid_lambda_response_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_lambda_response_exception() :: #{binary() => any()}.

%% Example:
%% sms_mfa_settings_type() :: #{
%%   <<"Enabled">> => boolean(),
%%   <<"PreferredMfa">> => boolean()
%% }
-type sms_mfa_settings_type() :: #{binary() => any()}.

%% Example:
%% add_custom_attributes_request() :: #{
%%   <<"CustomAttributes">> := list(schema_attribute_type()()),
%%   <<"UserPoolId">> := string()
%% }
-type add_custom_attributes_request() :: #{binary() => any()}.

%% Example:
%% admin_disable_user_request() :: #{
%%   <<"UserPoolId">> := string(),
%%   <<"Username">> := string()
%% }
-type admin_disable_user_request() :: #{binary() => any()}.

%% Example:
%% email_configuration_type() :: #{
%%   <<"ConfigurationSet">> => string(),
%%   <<"EmailSendingAccount">> => list(any()),
%%   <<"From">> => string(),
%%   <<"ReplyToEmailAddress">> => string(),
%%   <<"SourceArn">> => string()
%% }
-type email_configuration_type() :: #{binary() => any()}.

%% Example:
%% expired_code_exception() :: #{
%%   <<"message">> => string()
%% }
-type expired_code_exception() :: #{binary() => any()}.

%% Example:
%% forgot_password_request() :: #{
%%   <<"AnalyticsMetadata">> => analytics_metadata_type(),
%%   <<"ClientId">> := string(),
%%   <<"ClientMetadata">> => map(),
%%   <<"SecretHash">> => string(),
%%   <<"UserContextData">> => user_context_data_type(),
%%   <<"Username">> := string()
%% }
-type forgot_password_request() :: #{binary() => any()}.

%% Example:
%% list_user_pool_clients_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"UserPoolId">> := string()
%% }
-type list_user_pool_clients_request() :: #{binary() => any()}.

%% Example:
%% admin_remove_user_from_group_request() :: #{
%%   <<"GroupName">> := string(),
%%   <<"UserPoolId">> := string(),
%%   <<"Username">> := string()
%% }
-type admin_remove_user_from_group_request() :: #{binary() => any()}.

%% Example:
%% user_pool_tagging_exception() :: #{
%%   <<"message">> => string()
%% }
-type user_pool_tagging_exception() :: #{binary() => any()}.

%% Example:
%% set_user_settings_request() :: #{
%%   <<"AccessToken">> := string(),
%%   <<"MFAOptions">> := list(mfa_option_type()())
%% }
-type set_user_settings_request() :: #{binary() => any()}.

%% Example:
%% recovery_option_type() :: #{
%%   <<"Name">> => list(any()),
%%   <<"Priority">> => integer()
%% }
-type recovery_option_type() :: #{binary() => any()}.

%% Example:
%% provider_user_identifier_type() :: #{
%%   <<"ProviderAttributeName">> => string(),
%%   <<"ProviderAttributeValue">> => string(),
%%   <<"ProviderName">> => string()
%% }
-type provider_user_identifier_type() :: #{binary() => any()}.

%% Example:
%% event_feedback_type() :: #{
%%   <<"FeedbackDate">> => non_neg_integer(),
%%   <<"FeedbackValue">> => list(any()),
%%   <<"Provider">> => string()
%% }
-type event_feedback_type() :: #{binary() => any()}.

%% Example:
%% describe_managed_login_branding_by_client_response() :: #{
%%   <<"ManagedLoginBranding">> => managed_login_branding_type()
%% }
-type describe_managed_login_branding_by_client_response() :: #{binary() => any()}.

%% Example:
%% change_password_request() :: #{
%%   <<"AccessToken">> := string(),
%%   <<"PreviousPassword">> => string(),
%%   <<"ProposedPassword">> := string()
%% }
-type change_password_request() :: #{binary() => any()}.

%% Example:
%% admin_list_devices_response() :: #{
%%   <<"Devices">> => list(device_type()()),
%%   <<"PaginationToken">> => string()
%% }
-type admin_list_devices_response() :: #{binary() => any()}.

%% Example:
%% delete_user_request() :: #{
%%   <<"AccessToken">> := string()
%% }
-type delete_user_request() :: #{binary() => any()}.

%% Example:
%% get_log_delivery_configuration_request() :: #{
%%   <<"UserPoolId">> := string()
%% }
-type get_log_delivery_configuration_request() :: #{binary() => any()}.

%% Example:
%% invalid_o_auth_flow_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_o_auth_flow_exception() :: #{binary() => any()}.

%% Example:
%% initiate_auth_response() :: #{
%%   <<"AuthenticationResult">> => authentication_result_type(),
%%   <<"AvailableChallenges">> => list(list(any())()),
%%   <<"ChallengeName">> => list(any()),
%%   <<"ChallengeParameters">> => map(),
%%   <<"Session">> => string()
%% }
-type initiate_auth_response() :: #{binary() => any()}.

%% Example:
%% web_authn_credential_description() :: #{
%%   <<"AuthenticatorAttachment">> => string(),
%%   <<"AuthenticatorTransports">> => list(string()()),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"CredentialId">> => string(),
%%   <<"FriendlyCredentialName">> => string(),
%%   <<"RelyingPartyId">> => string()
%% }
-type web_authn_credential_description() :: #{binary() => any()}.

%% Example:
%% get_device_request() :: #{
%%   <<"AccessToken">> => string(),
%%   <<"DeviceKey">> := string()
%% }
-type get_device_request() :: #{binary() => any()}.

%% Example:
%% create_user_import_job_request() :: #{
%%   <<"CloudWatchLogsRoleArn">> := string(),
%%   <<"JobName">> := string(),
%%   <<"UserPoolId">> := string()
%% }
-type create_user_import_job_request() :: #{binary() => any()}.

%% Example:
%% admin_set_user_password_request() :: #{
%%   <<"Password">> := string(),
%%   <<"Permanent">> => boolean(),
%%   <<"UserPoolId">> := string(),
%%   <<"Username">> := string()
%% }
-type admin_set_user_password_request() :: #{binary() => any()}.

%% Example:
%% web_authn_credential_not_supported_exception() :: #{
%%   <<"message">> => string()
%% }
-type web_authn_credential_not_supported_exception() :: #{binary() => any()}.

%% Example:
%% describe_user_pool_domain_response() :: #{
%%   <<"DomainDescription">> => domain_description_type()
%% }
-type describe_user_pool_domain_response() :: #{binary() => any()}.

%% Example:
%% create_managed_login_branding_response() :: #{
%%   <<"ManagedLoginBranding">> => managed_login_branding_type()
%% }
-type create_managed_login_branding_response() :: #{binary() => any()}.

%% Example:
%% sign_up_request() :: #{
%%   <<"AnalyticsMetadata">> => analytics_metadata_type(),
%%   <<"ClientId">> := string(),
%%   <<"ClientMetadata">> => map(),
%%   <<"Password">> => string(),
%%   <<"SecretHash">> => string(),
%%   <<"UserAttributes">> => list(attribute_type()()),
%%   <<"UserContextData">> => user_context_data_type(),
%%   <<"Username">> := string(),
%%   <<"ValidationData">> => list(attribute_type()())
%% }
-type sign_up_request() :: #{binary() => any()}.

%% Example:
%% forget_device_request() :: #{
%%   <<"AccessToken">> => string(),
%%   <<"DeviceKey">> := string()
%% }
-type forget_device_request() :: #{binary() => any()}.

%% Example:
%% device_configuration_type() :: #{
%%   <<"ChallengeRequiredOnNewDevice">> => boolean(),
%%   <<"DeviceOnlyRememberedOnUserPrompt">> => boolean()
%% }
-type device_configuration_type() :: #{binary() => any()}.

%% Example:
%% user_pool_add_ons_type() :: #{
%%   <<"AdvancedSecurityAdditionalFlows">> => advanced_security_additional_flows_type(),
%%   <<"AdvancedSecurityMode">> => list(any())
%% }
-type user_pool_add_ons_type() :: #{binary() => any()}.

%% Example:
%% describe_user_pool_request() :: #{
%%   <<"UserPoolId">> := string()
%% }
-type describe_user_pool_request() :: #{binary() => any()}.

%% Example:
%% delete_user_pool_domain_request() :: #{
%%   <<"Domain">> := string(),
%%   <<"UserPoolId">> := string()
%% }
-type delete_user_pool_domain_request() :: #{binary() => any()}.

%% Example:
%% user_lambda_validation_exception() :: #{
%%   <<"message">> => string()
%% }
-type user_lambda_validation_exception() :: #{binary() => any()}.

%% Example:
%% delete_user_pool_request() :: #{
%%   <<"UserPoolId">> := string()
%% }
-type delete_user_pool_request() :: #{binary() => any()}.

%% Example:
%% list_user_import_jobs_request() :: #{
%%   <<"MaxResults">> := integer(),
%%   <<"PaginationToken">> => string(),
%%   <<"UserPoolId">> := string()
%% }
-type list_user_import_jobs_request() :: #{binary() => any()}.

%% Example:
%% challenge_response_type() :: #{
%%   <<"ChallengeName">> => list(any()),
%%   <<"ChallengeResponse">> => list(any())
%% }
-type challenge_response_type() :: #{binary() => any()}.

%% Example:
%% resend_confirmation_code_request() :: #{
%%   <<"AnalyticsMetadata">> => analytics_metadata_type(),
%%   <<"ClientId">> := string(),
%%   <<"ClientMetadata">> => map(),
%%   <<"SecretHash">> => string(),
%%   <<"UserContextData">> => user_context_data_type(),
%%   <<"Username">> := string()
%% }
-type resend_confirmation_code_request() :: #{binary() => any()}.

%% Example:
%% admin_respond_to_auth_challenge_request() :: #{
%%   <<"AnalyticsMetadata">> => analytics_metadata_type(),
%%   <<"ChallengeName">> := list(any()),
%%   <<"ChallengeResponses">> => map(),
%%   <<"ClientId">> := string(),
%%   <<"ClientMetadata">> => map(),
%%   <<"ContextData">> => context_data_type(),
%%   <<"Session">> => string(),
%%   <<"UserPoolId">> := string()
%% }
-type admin_respond_to_auth_challenge_request() :: #{binary() => any()}.

%% Example:
%% email_mfa_settings_type() :: #{
%%   <<"Enabled">> => boolean(),
%%   <<"PreferredMfa">> => boolean()
%% }
-type email_mfa_settings_type() :: #{binary() => any()}.

%% Example:
%% not_authorized_exception() :: #{
%%   <<"message">> => string()
%% }
-type not_authorized_exception() :: #{binary() => any()}.

%% Example:
%% admin_list_user_auth_events_response() :: #{
%%   <<"AuthEvents">> => list(auth_event_type()()),
%%   <<"NextToken">> => string()
%% }
-type admin_list_user_auth_events_response() :: #{binary() => any()}.

%% Example:
%% unsupported_identity_provider_exception() :: #{
%%   <<"message">> => string()
%% }
-type unsupported_identity_provider_exception() :: #{binary() => any()}.

%% Example:
%% user_pool_add_on_not_enabled_exception() :: #{
%%   <<"message">> => string()
%% }
-type user_pool_add_on_not_enabled_exception() :: #{binary() => any()}.

%% Example:
%% auth_event_type() :: #{
%%   <<"ChallengeResponses">> => list(challenge_response_type()()),
%%   <<"CreationDate">> => non_neg_integer(),
%%   <<"EventContextData">> => event_context_data_type(),
%%   <<"EventFeedback">> => event_feedback_type(),
%%   <<"EventId">> => string(),
%%   <<"EventResponse">> => list(any()),
%%   <<"EventRisk">> => event_risk_type(),
%%   <<"EventType">> => list(any())
%% }
-type auth_event_type() :: #{binary() => any()}.

%% Example:
%% create_identity_provider_request() :: #{
%%   <<"AttributeMapping">> => map(),
%%   <<"IdpIdentifiers">> => list(string()()),
%%   <<"ProviderDetails">> := map(),
%%   <<"ProviderName">> := string(),
%%   <<"ProviderType">> := list(any()),
%%   <<"UserPoolId">> := string()
%% }
-type create_identity_provider_request() :: #{binary() => any()}.

%% Example:
%% update_managed_login_branding_response() :: #{
%%   <<"ManagedLoginBranding">> => managed_login_branding_type()
%% }
-type update_managed_login_branding_response() :: #{binary() => any()}.

%% Example:
%% invalid_user_pool_configuration_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_user_pool_configuration_exception() :: #{binary() => any()}.

%% Example:
%% set_log_delivery_configuration_response() :: #{
%%   <<"LogDeliveryConfiguration">> => log_delivery_configuration_type()
%% }
-type set_log_delivery_configuration_response() :: #{binary() => any()}.

%% Example:
%% sign_up_response() :: #{
%%   <<"CodeDeliveryDetails">> => code_delivery_details_type(),
%%   <<"Session">> => string(),
%%   <<"UserConfirmed">> => boolean(),
%%   <<"UserSub">> => string()
%% }
-type sign_up_response() :: #{binary() => any()}.

%% Example:
%% start_user_import_job_response() :: #{
%%   <<"UserImportJob">> => user_import_job_type()
%% }
-type start_user_import_job_response() :: #{binary() => any()}.

%% Example:
%% confirm_forgot_password_response() :: #{

%% }
-type confirm_forgot_password_response() :: #{binary() => any()}.

%% Example:
%% log_configuration_type() :: #{
%%   <<"CloudWatchLogsConfiguration">> => cloud_watch_logs_configuration_type(),
%%   <<"EventSource">> => list(any()),
%%   <<"FirehoseConfiguration">> => firehose_configuration_type(),
%%   <<"LogLevel">> => list(any()),
%%   <<"S3Configuration">> => s3_configuration_type()
%% }
-type log_configuration_type() :: #{binary() => any()}.

%% Example:
%% global_sign_out_response() :: #{

%% }
-type global_sign_out_response() :: #{binary() => any()}.

%% Example:
%% invalid_parameter_exception() :: #{
%%   <<"message">> => string(),
%%   <<"reasonCode">> => string()
%% }
-type invalid_parameter_exception() :: #{binary() => any()}.

%% Example:
%% admin_confirm_sign_up_response() :: #{

%% }
-type admin_confirm_sign_up_response() :: #{binary() => any()}.

%% Example:
%% set_user_pool_mfa_config_request() :: #{
%%   <<"EmailMfaConfiguration">> => email_mfa_config_type(),
%%   <<"MfaConfiguration">> => list(any()),
%%   <<"SmsMfaConfiguration">> => sms_mfa_config_type(),
%%   <<"SoftwareTokenMfaConfiguration">> => software_token_mfa_config_type(),
%%   <<"UserPoolId">> := string(),
%%   <<"WebAuthnConfiguration">> => web_authn_configuration_type()
%% }
-type set_user_pool_mfa_config_request() :: #{binary() => any()}.

%% Example:
%% describe_user_import_job_request() :: #{
%%   <<"JobId">> := string(),
%%   <<"UserPoolId">> := string()
%% }
-type describe_user_import_job_request() :: #{binary() => any()}.

%% Example:
%% firehose_configuration_type() :: #{
%%   <<"StreamArn">> => string()
%% }
-type firehose_configuration_type() :: #{binary() => any()}.

%% Example:
%% admin_disable_provider_for_user_request() :: #{
%%   <<"User">> := provider_user_identifier_type(),
%%   <<"UserPoolId">> := string()
%% }
-type admin_disable_provider_for_user_request() :: #{binary() => any()}.

%% Example:
%% code_delivery_details_type() :: #{
%%   <<"AttributeName">> => string(),
%%   <<"DeliveryMedium">> => list(any()),
%%   <<"Destination">> => string()
%% }
-type code_delivery_details_type() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{

%% }
-type tag_resource_response() :: #{binary() => any()}.

%% Example:
%% event_risk_type() :: #{
%%   <<"CompromisedCredentialsDetected">> => boolean(),
%%   <<"RiskDecision">> => list(any()),
%%   <<"RiskLevel">> => list(any())
%% }
-type event_risk_type() :: #{binary() => any()}.

%% Example:
%% get_ui_customization_request() :: #{
%%   <<"ClientId">> => string(),
%%   <<"UserPoolId">> := string()
%% }
-type get_ui_customization_request() :: #{binary() => any()}.

%% Example:
%% set_user_settings_response() :: #{

%% }
-type set_user_settings_response() :: #{binary() => any()}.

%% Example:
%% confirm_device_response() :: #{
%%   <<"UserConfirmationNecessary">> => boolean()
%% }
-type confirm_device_response() :: #{binary() => any()}.

%% Example:
%% account_recovery_setting_type() :: #{
%%   <<"RecoveryMechanisms">> => list(recovery_option_type()())
%% }
-type account_recovery_setting_type() :: #{binary() => any()}.

%% Example:
%% describe_user_pool_client_request() :: #{
%%   <<"ClientId">> := string(),
%%   <<"UserPoolId">> := string()
%% }
-type describe_user_pool_client_request() :: #{binary() => any()}.

%% Example:
%% update_auth_event_feedback_request() :: #{
%%   <<"EventId">> := string(),
%%   <<"FeedbackToken">> := string(),
%%   <<"FeedbackValue">> := list(any()),
%%   <<"UserPoolId">> := string(),
%%   <<"Username">> := string()
%% }
-type update_auth_event_feedback_request() :: #{binary() => any()}.

%% Example:
%% asset_type() :: #{
%%   <<"Bytes">> => binary(),
%%   <<"Category">> => list(any()),
%%   <<"ColorMode">> => list(any()),
%%   <<"Extension">> => list(any()),
%%   <<"ResourceId">> => string()
%% }
-type asset_type() :: #{binary() => any()}.

%% Example:
%% pre_token_generation_version_config_type() :: #{
%%   <<"LambdaArn">> => string(),
%%   <<"LambdaVersion">> => list(any())
%% }
-type pre_token_generation_version_config_type() :: #{binary() => any()}.

%% Example:
%% admin_update_device_status_request() :: #{
%%   <<"DeviceKey">> := string(),
%%   <<"DeviceRememberedStatus">> => list(any()),
%%   <<"UserPoolId">> := string(),
%%   <<"Username">> := string()
%% }
-type admin_update_device_status_request() :: #{binary() => any()}.

%% Example:
%% software_token_mfa_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type software_token_mfa_not_found_exception() :: #{binary() => any()}.

%% Example:
%% get_log_delivery_configuration_response() :: #{
%%   <<"LogDeliveryConfiguration">> => log_delivery_configuration_type()
%% }
-type get_log_delivery_configuration_response() :: #{binary() => any()}.

%% Example:
%% concurrent_modification_exception() :: #{
%%   <<"message">> => string()
%% }
-type concurrent_modification_exception() :: #{binary() => any()}.

%% Example:
%% resend_confirmation_code_response() :: #{
%%   <<"CodeDeliveryDetails">> => code_delivery_details_type()
%% }
-type resend_confirmation_code_response() :: #{binary() => any()}.

%% Example:
%% admin_reset_user_password_request() :: #{
%%   <<"ClientMetadata">> => map(),
%%   <<"UserPoolId">> := string(),
%%   <<"Username">> := string()
%% }
-type admin_reset_user_password_request() :: #{binary() => any()}.

%% Example:
%% admin_link_provider_for_user_response() :: #{

%% }
-type admin_link_provider_for_user_response() :: #{binary() => any()}.

%% Example:
%% admin_get_device_response() :: #{
%%   <<"Device">> => device_type()
%% }
-type admin_get_device_response() :: #{binary() => any()}.

%% Example:
%% list_resource_servers_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"UserPoolId">> := string()
%% }
-type list_resource_servers_request() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{
%%   <<"ResourceArn">> := string()
%% }
-type list_tags_for_resource_request() :: #{binary() => any()}.

%% Example:
%% email_mfa_config_type() :: #{
%%   <<"Message">> => string(),
%%   <<"Subject">> => string()
%% }
-type email_mfa_config_type() :: #{binary() => any()}.

%% Example:
%% admin_update_user_attributes_response() :: #{

%% }
-type admin_update_user_attributes_response() :: #{binary() => any()}.

%% Example:
%% update_user_pool_client_response() :: #{
%%   <<"UserPoolClient">> => user_pool_client_type()
%% }
-type update_user_pool_client_response() :: #{binary() => any()}.

%% Example:
%% list_identity_providers_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Providers">> => list(provider_description()())
%% }
-type list_identity_providers_response() :: #{binary() => any()}.

%% Example:
%% http_header() :: #{
%%   <<"headerName">> => string(),
%%   <<"headerValue">> => string()
%% }
-type http_header() :: #{binary() => any()}.

%% Example:
%% enable_software_token_mfa_exception() :: #{
%%   <<"message">> => string()
%% }
-type enable_software_token_mfa_exception() :: #{binary() => any()}.

%% Example:
%% web_authn_not_enabled_exception() :: #{
%%   <<"message">> => string()
%% }
-type web_authn_not_enabled_exception() :: #{binary() => any()}.

%% Example:
%% get_group_response() :: #{
%%   <<"Group">> => group_type()
%% }
-type get_group_response() :: #{binary() => any()}.

%% Example:
%% stop_user_import_job_response() :: #{
%%   <<"UserImportJob">> => user_import_job_type()
%% }
-type stop_user_import_job_response() :: #{binary() => any()}.

%% Example:
%% notify_configuration_type() :: #{
%%   <<"BlockEmail">> => notify_email_type(),
%%   <<"From">> => string(),
%%   <<"MfaEmail">> => notify_email_type(),
%%   <<"NoActionEmail">> => notify_email_type(),
%%   <<"ReplyTo">> => string(),
%%   <<"SourceArn">> => string()
%% }
-type notify_configuration_type() :: #{binary() => any()}.

%% Example:
%% admin_list_groups_for_user_response() :: #{
%%   <<"Groups">> => list(group_type()()),
%%   <<"NextToken">> => string()
%% }
-type admin_list_groups_for_user_response() :: #{binary() => any()}.

%% Example:
%% username_exists_exception() :: #{
%%   <<"message">> => string()
%% }
-type username_exists_exception() :: #{binary() => any()}.

%% Example:
%% delete_group_request() :: #{
%%   <<"GroupName">> := string(),
%%   <<"UserPoolId">> := string()
%% }
-type delete_group_request() :: #{binary() => any()}.

%% Example:
%% update_user_pool_client_request() :: #{
%%   <<"AccessTokenValidity">> => integer(),
%%   <<"AllowedOAuthFlows">> => list(list(any())()),
%%   <<"AllowedOAuthFlowsUserPoolClient">> => boolean(),
%%   <<"AllowedOAuthScopes">> => list(string()()),
%%   <<"AnalyticsConfiguration">> => analytics_configuration_type(),
%%   <<"AuthSessionValidity">> => integer(),
%%   <<"CallbackURLs">> => list(string()()),
%%   <<"ClientId">> := string(),
%%   <<"ClientName">> => string(),
%%   <<"DefaultRedirectURI">> => string(),
%%   <<"EnablePropagateAdditionalUserContextData">> => boolean(),
%%   <<"EnableTokenRevocation">> => boolean(),
%%   <<"ExplicitAuthFlows">> => list(list(any())()),
%%   <<"IdTokenValidity">> => integer(),
%%   <<"LogoutURLs">> => list(string()()),
%%   <<"PreventUserExistenceErrors">> => list(any()),
%%   <<"ReadAttributes">> => list(string()()),
%%   <<"RefreshTokenValidity">> => integer(),
%%   <<"SupportedIdentityProviders">> => list(string()()),
%%   <<"TokenValidityUnits">> => token_validity_units_type(),
%%   <<"UserPoolId">> := string(),
%%   <<"WriteAttributes">> => list(string()())
%% }
-type update_user_pool_client_request() :: #{binary() => any()}.

%% Example:
%% get_ui_customization_response() :: #{
%%   <<"UICustomization">> => ui_customization_type()
%% }
-type get_ui_customization_response() :: #{binary() => any()}.

%% Example:
%% list_users_request() :: #{
%%   <<"AttributesToGet">> => list(string()()),
%%   <<"Filter">> => string(),
%%   <<"Limit">> => integer(),
%%   <<"PaginationToken">> => string(),
%%   <<"UserPoolId">> := string()
%% }
-type list_users_request() :: #{binary() => any()}.

%% Example:
%% revoke_token_request() :: #{
%%   <<"ClientId">> := string(),
%%   <<"ClientSecret">> => string(),
%%   <<"Token">> := string()
%% }
-type revoke_token_request() :: #{binary() => any()}.

%% Example:
%% limit_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% associate_software_token_request() :: #{
%%   <<"AccessToken">> => string(),
%%   <<"Session">> => string()
%% }
-type associate_software_token_request() :: #{binary() => any()}.

%% Example:
%% confirm_forgot_password_request() :: #{
%%   <<"AnalyticsMetadata">> => analytics_metadata_type(),
%%   <<"ClientId">> := string(),
%%   <<"ClientMetadata">> => map(),
%%   <<"ConfirmationCode">> := string(),
%%   <<"Password">> := string(),
%%   <<"SecretHash">> => string(),
%%   <<"UserContextData">> => user_context_data_type(),
%%   <<"Username">> := string()
%% }
-type confirm_forgot_password_request() :: #{binary() => any()}.

%% Example:
%% mfa_option_type() :: #{
%%   <<"AttributeName">> => string(),
%%   <<"DeliveryMedium">> => list(any())
%% }
-type mfa_option_type() :: #{binary() => any()}.

%% Example:
%% code_delivery_failure_exception() :: #{
%%   <<"message">> => string()
%% }
-type code_delivery_failure_exception() :: #{binary() => any()}.

%% Example:
%% create_resource_server_response() :: #{
%%   <<"ResourceServer">> => resource_server_type()
%% }
-type create_resource_server_response() :: #{binary() => any()}.

%% Example:
%% forgot_password_response() :: #{
%%   <<"CodeDeliveryDetails">> => code_delivery_details_type()
%% }
-type forgot_password_response() :: #{binary() => any()}.

%% Example:
%% create_managed_login_branding_request() :: #{
%%   <<"Assets">> => list(asset_type()()),
%%   <<"ClientId">> := string(),
%%   <<"Settings">> => any(),
%%   <<"UseCognitoProvidedValues">> => boolean(),
%%   <<"UserPoolId">> := string()
%% }
-type create_managed_login_branding_request() :: #{binary() => any()}.

%% Example:
%% schema_attribute_type() :: #{
%%   <<"AttributeDataType">> => list(any()),
%%   <<"DeveloperOnlyAttribute">> => boolean(),
%%   <<"Mutable">> => boolean(),
%%   <<"Name">> => string(),
%%   <<"NumberAttributeConstraints">> => number_attribute_constraints_type(),
%%   <<"Required">> => boolean(),
%%   <<"StringAttributeConstraints">> => string_attribute_constraints_type()
%% }
-type schema_attribute_type() :: #{binary() => any()}.

%% Example:
%% list_web_authn_credentials_request() :: #{
%%   <<"AccessToken">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_web_authn_credentials_request() :: #{binary() => any()}.

%% Example:
%% web_authn_origin_not_allowed_exception() :: #{
%%   <<"message">> => string()
%% }
-type web_authn_origin_not_allowed_exception() :: #{binary() => any()}.

%% Example:
%% account_takeover_action_type() :: #{
%%   <<"EventAction">> => list(any()),
%%   <<"Notify">> => boolean()
%% }
-type account_takeover_action_type() :: #{binary() => any()}.

%% Example:
%% update_identity_provider_request() :: #{
%%   <<"AttributeMapping">> => map(),
%%   <<"IdpIdentifiers">> => list(string()()),
%%   <<"ProviderDetails">> => map(),
%%   <<"ProviderName">> := string(),
%%   <<"UserPoolId">> := string()
%% }
-type update_identity_provider_request() :: #{binary() => any()}.

%% Example:
%% context_data_type() :: #{
%%   <<"EncodedData">> => string(),
%%   <<"HttpHeaders">> => list(http_header()()),
%%   <<"IpAddress">> => string(),
%%   <<"ServerName">> => string(),
%%   <<"ServerPath">> => string()
%% }
-type context_data_type() :: #{binary() => any()}.

%% Example:
%% admin_get_device_request() :: #{
%%   <<"DeviceKey">> := string(),
%%   <<"UserPoolId">> := string(),
%%   <<"Username">> := string()
%% }
-type admin_get_device_request() :: #{binary() => any()}.

%% Example:
%% list_groups_response() :: #{
%%   <<"Groups">> => list(group_type()()),
%%   <<"NextToken">> => string()
%% }
-type list_groups_response() :: #{binary() => any()}.

%% Example:
%% admin_initiate_auth_response() :: #{
%%   <<"AuthenticationResult">> => authentication_result_type(),
%%   <<"AvailableChallenges">> => list(list(any())()),
%%   <<"ChallengeName">> => list(any()),
%%   <<"ChallengeParameters">> => map(),
%%   <<"Session">> => string()
%% }
-type admin_initiate_auth_response() :: #{binary() => any()}.

%% Example:
%% get_group_request() :: #{
%%   <<"GroupName">> := string(),
%%   <<"UserPoolId">> := string()
%% }
-type get_group_request() :: #{binary() => any()}.

%% Example:
%% confirm_sign_up_request() :: #{
%%   <<"AnalyticsMetadata">> => analytics_metadata_type(),
%%   <<"ClientId">> := string(),
%%   <<"ClientMetadata">> => map(),
%%   <<"ConfirmationCode">> := string(),
%%   <<"ForceAliasCreation">> => boolean(),
%%   <<"SecretHash">> => string(),
%%   <<"Session">> => string(),
%%   <<"UserContextData">> => user_context_data_type(),
%%   <<"Username">> := string()
%% }
-type confirm_sign_up_request() :: #{binary() => any()}.

%% Example:
%% respond_to_auth_challenge_response() :: #{
%%   <<"AuthenticationResult">> => authentication_result_type(),
%%   <<"ChallengeName">> => list(any()),
%%   <<"ChallengeParameters">> => map(),
%%   <<"Session">> => string()
%% }
-type respond_to_auth_challenge_response() :: #{binary() => any()}.

%% Example:
%% admin_forget_device_request() :: #{
%%   <<"DeviceKey">> := string(),
%%   <<"UserPoolId">> := string(),
%%   <<"Username">> := string()
%% }
-type admin_forget_device_request() :: #{binary() => any()}.

%% Example:
%% delete_web_authn_credential_request() :: #{
%%   <<"AccessToken">> := string(),
%%   <<"CredentialId">> := string()
%% }
-type delete_web_authn_credential_request() :: #{binary() => any()}.

%% Example:
%% list_groups_request() :: #{
%%   <<"Limit">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"UserPoolId">> := string()
%% }
-type list_groups_request() :: #{binary() => any()}.

%% Example:
%% set_risk_configuration_response() :: #{
%%   <<"RiskConfiguration">> => risk_configuration_type()
%% }
-type set_risk_configuration_response() :: #{binary() => any()}.

%% Example:
%% list_web_authn_credentials_response() :: #{
%%   <<"Credentials">> => list(web_authn_credential_description()()),
%%   <<"NextToken">> => string()
%% }
-type list_web_authn_credentials_response() :: #{binary() => any()}.

%% Example:
%% invalid_sms_role_trust_relationship_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_sms_role_trust_relationship_exception() :: #{binary() => any()}.

%% Example:
%% admin_list_user_auth_events_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"UserPoolId">> := string(),
%%   <<"Username">> := string()
%% }
-type admin_list_user_auth_events_request() :: #{binary() => any()}.

%% Example:
%% user_pool_type() :: #{
%%   <<"SchemaAttributes">> => list(schema_attribute_type()()),
%%   <<"Policies">> => user_pool_policy_type(),
%%   <<"UserAttributeUpdateSettings">> => user_attribute_update_settings_type(),
%%   <<"CustomDomain">> => string(),
%%   <<"MfaConfiguration">> => list(any()),
%%   <<"EstimatedNumberOfUsers">> => integer(),
%%   <<"Id">> => string(),
%%   <<"UserPoolTags">> => map(),
%%   <<"EmailConfigurationFailure">> => string(),
%%   <<"UserPoolAddOns">> => user_pool_add_ons_type(),
%%   <<"VerificationMessageTemplate">> => verification_message_template_type(),
%%   <<"AccountRecoverySetting">> => account_recovery_setting_type(),
%%   <<"EmailVerificationMessage">> => string(),
%%   <<"AliasAttributes">> => list(list(any())()),
%%   <<"EmailConfiguration">> => email_configuration_type(),
%%   <<"LastModifiedDate">> => non_neg_integer(),
%%   <<"CreationDate">> => non_neg_integer(),
%%   <<"SmsConfigurationFailure">> => string(),
%%   <<"UserPoolTier">> => list(any()),
%%   <<"EmailVerificationSubject">> => string(),
%%   <<"Arn">> => string(),
%%   <<"AutoVerifiedAttributes">> => list(list(any())()),
%%   <<"DeviceConfiguration">> => device_configuration_type(),
%%   <<"SmsConfiguration">> => sms_configuration_type(),
%%   <<"UsernameConfiguration">> => username_configuration_type(),
%%   <<"UsernameAttributes">> => list(list(any())()),
%%   <<"SmsAuthenticationMessage">> => string(),
%%   <<"Name">> => string(),
%%   <<"Domain">> => string(),
%%   <<"SmsVerificationMessage">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"AdminCreateUserConfig">> => admin_create_user_config_type(),
%%   <<"LambdaConfig">> => lambda_config_type(),
%%   <<"DeletionProtection">> => list(any())
%% }
-type user_pool_type() :: #{binary() => any()}.

%% Example:
%% precondition_not_met_exception() :: #{
%%   <<"message">> => string()
%% }
-type precondition_not_met_exception() :: #{binary() => any()}.

%% Example:
%% admin_delete_user_attributes_response() :: #{

%% }
-type admin_delete_user_attributes_response() :: #{binary() => any()}.

%% Example:
%% username_configuration_type() :: #{
%%   <<"CaseSensitive">> => boolean()
%% }
-type username_configuration_type() :: #{binary() => any()}.

%% Example:
%% account_takeover_actions_type() :: #{
%%   <<"HighAction">> => account_takeover_action_type(),
%%   <<"LowAction">> => account_takeover_action_type(),
%%   <<"MediumAction">> => account_takeover_action_type()
%% }
-type account_takeover_actions_type() :: #{binary() => any()}.

%% Example:
%% admin_set_user_mfa_preference_request() :: #{
%%   <<"EmailMfaSettings">> => email_mfa_settings_type(),
%%   <<"SMSMfaSettings">> => sms_mfa_settings_type(),
%%   <<"SoftwareTokenMfaSettings">> => software_token_mfa_settings_type(),
%%   <<"UserPoolId">> := string(),
%%   <<"Username">> := string()
%% }
-type admin_set_user_mfa_preference_request() :: #{binary() => any()}.

%% Example:
%% stop_user_import_job_request() :: #{
%%   <<"JobId">> := string(),
%%   <<"UserPoolId">> := string()
%% }
-type stop_user_import_job_request() :: #{binary() => any()}.

%% Example:
%% get_signing_certificate_request() :: #{
%%   <<"UserPoolId">> := string()
%% }
-type get_signing_certificate_request() :: #{binary() => any()}.

%% Example:
%% invalid_password_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_password_exception() :: #{binary() => any()}.

%% Example:
%% device_key_exists_exception() :: #{
%%   <<"message">> => string()
%% }
-type device_key_exists_exception() :: #{binary() => any()}.

%% Example:
%% update_group_response() :: #{
%%   <<"Group">> => group_type()
%% }
-type update_group_response() :: #{binary() => any()}.

%% Example:
%% risk_configuration_type() :: #{
%%   <<"AccountTakeoverRiskConfiguration">> => account_takeover_risk_configuration_type(),
%%   <<"ClientId">> => string(),
%%   <<"CompromisedCredentialsRiskConfiguration">> => compromised_credentials_risk_configuration_type(),
%%   <<"LastModifiedDate">> => non_neg_integer(),
%%   <<"RiskExceptionConfiguration">> => risk_exception_configuration_type(),
%%   <<"UserPoolId">> => string()
%% }
-type risk_configuration_type() :: #{binary() => any()}.

%% Example:
%% verification_message_template_type() :: #{
%%   <<"DefaultEmailOption">> => list(any()),
%%   <<"EmailMessage">> => string(),
%%   <<"EmailMessageByLink">> => string(),
%%   <<"EmailSubject">> => string(),
%%   <<"EmailSubjectByLink">> => string(),
%%   <<"SmsMessage">> => string()
%% }
-type verification_message_template_type() :: #{binary() => any()}.

%% Example:
%% analytics_configuration_type() :: #{
%%   <<"ApplicationArn">> => string(),
%%   <<"ApplicationId">> => string(),
%%   <<"ExternalId">> => string(),
%%   <<"RoleArn">> => string(),
%%   <<"UserDataShared">> => boolean()
%% }
-type analytics_configuration_type() :: #{binary() => any()}.

%% Example:
%% create_group_response() :: #{
%%   <<"Group">> => group_type()
%% }
-type create_group_response() :: #{binary() => any()}.

%% Example:
%% mfa_method_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type mfa_method_not_found_exception() :: #{binary() => any()}.

%% Example:
%% complete_web_authn_registration_response() :: #{

%% }
-type complete_web_authn_registration_response() :: #{binary() => any()}.

%% Example:
%% internal_error_exception() :: #{
%%   <<"message">> => string()
%% }
-type internal_error_exception() :: #{binary() => any()}.

%% Example:
%% sms_configuration_type() :: #{
%%   <<"ExternalId">> => string(),
%%   <<"SnsCallerArn">> => string(),
%%   <<"SnsRegion">> => string()
%% }
-type sms_configuration_type() :: #{binary() => any()}.

%% Example:
%% list_user_pool_clients_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"UserPoolClients">> => list(user_pool_client_description()())
%% }
-type list_user_pool_clients_response() :: #{binary() => any()}.

%% Example:
%% provider_description() :: #{
%%   <<"CreationDate">> => non_neg_integer(),
%%   <<"LastModifiedDate">> => non_neg_integer(),
%%   <<"ProviderName">> => string(),
%%   <<"ProviderType">> => list(any())
%% }
-type provider_description() :: #{binary() => any()}.

%% Example:
%% admin_delete_user_request() :: #{
%%   <<"UserPoolId">> := string(),
%%   <<"Username">> := string()
%% }
-type admin_delete_user_request() :: #{binary() => any()}.

%% Example:
%% set_user_mfa_preference_request() :: #{
%%   <<"AccessToken">> := string(),
%%   <<"EmailMfaSettings">> => email_mfa_settings_type(),
%%   <<"SMSMfaSettings">> => sms_mfa_settings_type(),
%%   <<"SoftwareTokenMfaSettings">> => software_token_mfa_settings_type()
%% }
-type set_user_mfa_preference_request() :: #{binary() => any()}.

%% Example:
%% unexpected_lambda_exception() :: #{
%%   <<"message">> => string()
%% }
-type unexpected_lambda_exception() :: #{binary() => any()}.

%% Example:
%% get_device_response() :: #{
%%   <<"Device">> => device_type()
%% }
-type get_device_response() :: #{binary() => any()}.

%% Example:
%% get_user_attribute_verification_code_response() :: #{
%%   <<"CodeDeliveryDetails">> => code_delivery_details_type()
%% }
-type get_user_attribute_verification_code_response() :: #{binary() => any()}.

%% Example:
%% list_resource_servers_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"ResourceServers">> => list(resource_server_type()())
%% }
-type list_resource_servers_response() :: #{binary() => any()}.

%% Example:
%% start_user_import_job_request() :: #{
%%   <<"JobId">> := string(),
%%   <<"UserPoolId">> := string()
%% }
-type start_user_import_job_request() :: #{binary() => any()}.

%% Example:
%% domain_description_type() :: #{
%%   <<"AWSAccountId">> => string(),
%%   <<"CloudFrontDistribution">> => string(),
%%   <<"CustomDomainConfig">> => custom_domain_config_type(),
%%   <<"Domain">> => string(),
%%   <<"ManagedLoginVersion">> => integer(),
%%   <<"S3Bucket">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"UserPoolId">> => string(),
%%   <<"Version">> => string()
%% }
-type domain_description_type() :: #{binary() => any()}.

-type add_custom_attributes_errors() ::
    internal_error_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception() | 
    user_import_in_progress_exception().

-type admin_add_user_to_group_errors() ::
    internal_error_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    user_not_found_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type admin_confirm_sign_up_errors() ::
    unexpected_lambda_exception() | 
    internal_error_exception() | 
    limit_exceeded_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    user_lambda_validation_exception() | 
    invalid_lambda_response_exception() | 
    user_not_found_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception() | 
    too_many_failed_attempts_exception().

-type admin_create_user_errors() ::
    unexpected_lambda_exception() | 
    internal_error_exception() | 
    invalid_password_exception() | 
    precondition_not_met_exception() | 
    invalid_sms_role_trust_relationship_exception() | 
    code_delivery_failure_exception() | 
    username_exists_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    user_lambda_validation_exception() | 
    invalid_lambda_response_exception() | 
    user_not_found_exception() | 
    resource_not_found_exception() | 
    invalid_sms_role_access_policy_exception() | 
    too_many_requests_exception() | 
    unsupported_user_state_exception().

-type admin_delete_user_errors() ::
    internal_error_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    user_not_found_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type admin_delete_user_attributes_errors() ::
    internal_error_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    user_not_found_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type admin_disable_provider_for_user_errors() ::
    internal_error_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    user_not_found_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception() | 
    alias_exists_exception().

-type admin_disable_user_errors() ::
    internal_error_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    user_not_found_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type admin_enable_user_errors() ::
    internal_error_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    user_not_found_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type admin_forget_device_errors() ::
    internal_error_exception() | 
    invalid_parameter_exception() | 
    invalid_user_pool_configuration_exception() | 
    not_authorized_exception() | 
    user_not_found_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type admin_get_device_errors() ::
    internal_error_exception() | 
    invalid_parameter_exception() | 
    invalid_user_pool_configuration_exception() | 
    not_authorized_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type admin_get_user_errors() ::
    internal_error_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    user_not_found_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type admin_initiate_auth_errors() ::
    unexpected_lambda_exception() | 
    internal_error_exception() | 
    mfa_method_not_found_exception() | 
    invalid_sms_role_trust_relationship_exception() | 
    invalid_parameter_exception() | 
    invalid_user_pool_configuration_exception() | 
    not_authorized_exception() | 
    user_lambda_validation_exception() | 
    invalid_lambda_response_exception() | 
    user_not_found_exception() | 
    password_reset_required_exception() | 
    resource_not_found_exception() | 
    invalid_sms_role_access_policy_exception() | 
    too_many_requests_exception() | 
    invalid_email_role_access_policy_exception() | 
    user_not_confirmed_exception().

-type admin_link_provider_for_user_errors() ::
    internal_error_exception() | 
    limit_exceeded_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    user_not_found_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception() | 
    alias_exists_exception().

-type admin_list_devices_errors() ::
    internal_error_exception() | 
    invalid_parameter_exception() | 
    invalid_user_pool_configuration_exception() | 
    not_authorized_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type admin_list_groups_for_user_errors() ::
    internal_error_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    user_not_found_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type admin_list_user_auth_events_errors() ::
    internal_error_exception() | 
    invalid_parameter_exception() | 
    user_pool_add_on_not_enabled_exception() | 
    not_authorized_exception() | 
    user_not_found_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type admin_remove_user_from_group_errors() ::
    internal_error_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    user_not_found_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type admin_reset_user_password_errors() ::
    unexpected_lambda_exception() | 
    internal_error_exception() | 
    invalid_sms_role_trust_relationship_exception() | 
    limit_exceeded_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    user_lambda_validation_exception() | 
    invalid_lambda_response_exception() | 
    user_not_found_exception() | 
    resource_not_found_exception() | 
    invalid_sms_role_access_policy_exception() | 
    too_many_requests_exception() | 
    invalid_email_role_access_policy_exception().

-type admin_respond_to_auth_challenge_errors() ::
    unexpected_lambda_exception() | 
    internal_error_exception() | 
    mfa_method_not_found_exception() | 
    invalid_password_exception() | 
    invalid_sms_role_trust_relationship_exception() | 
    software_token_mfa_not_found_exception() | 
    invalid_parameter_exception() | 
    invalid_user_pool_configuration_exception() | 
    not_authorized_exception() | 
    user_lambda_validation_exception() | 
    expired_code_exception() | 
    invalid_lambda_response_exception() | 
    user_not_found_exception() | 
    password_reset_required_exception() | 
    resource_not_found_exception() | 
    code_mismatch_exception() | 
    invalid_sms_role_access_policy_exception() | 
    too_many_requests_exception() | 
    alias_exists_exception() | 
    password_history_policy_violation_exception() | 
    invalid_email_role_access_policy_exception() | 
    user_not_confirmed_exception().

-type admin_set_user_mfa_preference_errors() ::
    internal_error_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    user_not_found_exception() | 
    password_reset_required_exception() | 
    resource_not_found_exception() | 
    user_not_confirmed_exception().

-type admin_set_user_password_errors() ::
    internal_error_exception() | 
    invalid_password_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    user_not_found_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception() | 
    password_history_policy_violation_exception().

-type admin_set_user_settings_errors() ::
    internal_error_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    user_not_found_exception() | 
    resource_not_found_exception().

-type admin_update_auth_event_feedback_errors() ::
    internal_error_exception() | 
    invalid_parameter_exception() | 
    user_pool_add_on_not_enabled_exception() | 
    not_authorized_exception() | 
    user_not_found_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type admin_update_device_status_errors() ::
    internal_error_exception() | 
    invalid_parameter_exception() | 
    invalid_user_pool_configuration_exception() | 
    not_authorized_exception() | 
    user_not_found_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type admin_update_user_attributes_errors() ::
    unexpected_lambda_exception() | 
    internal_error_exception() | 
    invalid_sms_role_trust_relationship_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    user_lambda_validation_exception() | 
    invalid_lambda_response_exception() | 
    user_not_found_exception() | 
    resource_not_found_exception() | 
    invalid_sms_role_access_policy_exception() | 
    too_many_requests_exception() | 
    alias_exists_exception() | 
    invalid_email_role_access_policy_exception().

-type admin_user_global_sign_out_errors() ::
    internal_error_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    user_not_found_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type associate_software_token_errors() ::
    internal_error_exception() | 
    concurrent_modification_exception() | 
    software_token_mfa_not_found_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    resource_not_found_exception() | 
    forbidden_exception().

-type change_password_errors() ::
    internal_error_exception() | 
    invalid_password_exception() | 
    limit_exceeded_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    user_not_found_exception() | 
    password_reset_required_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    password_history_policy_violation_exception() | 
    user_not_confirmed_exception().

-type complete_web_authn_registration_errors() ::
    internal_error_exception() | 
    web_authn_origin_not_allowed_exception() | 
    limit_exceeded_exception() | 
    web_authn_not_enabled_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    web_authn_credential_not_supported_exception() | 
    web_authn_client_mismatch_exception() | 
    too_many_requests_exception() | 
    web_authn_relying_party_mismatch_exception() | 
    forbidden_exception() | 
    web_authn_challenge_not_found_exception().

-type confirm_device_errors() ::
    internal_error_exception() | 
    device_key_exists_exception() | 
    invalid_password_exception() | 
    username_exists_exception() | 
    invalid_parameter_exception() | 
    invalid_user_pool_configuration_exception() | 
    not_authorized_exception() | 
    invalid_lambda_response_exception() | 
    user_not_found_exception() | 
    password_reset_required_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    user_not_confirmed_exception().

-type confirm_forgot_password_errors() ::
    unexpected_lambda_exception() | 
    internal_error_exception() | 
    invalid_password_exception() | 
    limit_exceeded_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    user_lambda_validation_exception() | 
    expired_code_exception() | 
    invalid_lambda_response_exception() | 
    user_not_found_exception() | 
    resource_not_found_exception() | 
    code_mismatch_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    password_history_policy_violation_exception() | 
    user_not_confirmed_exception() | 
    too_many_failed_attempts_exception().

-type confirm_sign_up_errors() ::
    unexpected_lambda_exception() | 
    internal_error_exception() | 
    limit_exceeded_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    user_lambda_validation_exception() | 
    expired_code_exception() | 
    invalid_lambda_response_exception() | 
    user_not_found_exception() | 
    resource_not_found_exception() | 
    code_mismatch_exception() | 
    too_many_requests_exception() | 
    alias_exists_exception() | 
    forbidden_exception() | 
    too_many_failed_attempts_exception().

-type create_group_errors() ::
    internal_error_exception() | 
    limit_exceeded_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    group_exists_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type create_identity_provider_errors() ::
    internal_error_exception() | 
    limit_exceeded_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception() | 
    duplicate_provider_exception().

-type create_managed_login_branding_errors() ::
    internal_error_exception() | 
    limit_exceeded_exception() | 
    concurrent_modification_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    managed_login_branding_exists_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type create_resource_server_errors() ::
    internal_error_exception() | 
    limit_exceeded_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type create_user_import_job_errors() ::
    internal_error_exception() | 
    precondition_not_met_exception() | 
    limit_exceeded_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type create_user_pool_errors() ::
    internal_error_exception() | 
    invalid_sms_role_trust_relationship_exception() | 
    limit_exceeded_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    user_pool_tagging_exception() | 
    feature_unavailable_in_tier_exception() | 
    tier_change_not_allowed_exception() | 
    invalid_sms_role_access_policy_exception() | 
    too_many_requests_exception() | 
    invalid_email_role_access_policy_exception().

-type create_user_pool_client_errors() ::
    internal_error_exception() | 
    limit_exceeded_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    invalid_o_auth_flow_exception() | 
    scope_does_not_exist_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type create_user_pool_domain_errors() ::
    internal_error_exception() | 
    limit_exceeded_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    feature_unavailable_in_tier_exception() | 
    resource_not_found_exception().

-type delete_group_errors() ::
    internal_error_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type delete_identity_provider_errors() ::
    internal_error_exception() | 
    concurrent_modification_exception() | 
    invalid_parameter_exception() | 
    unsupported_identity_provider_exception() | 
    not_authorized_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type delete_managed_login_branding_errors() ::
    internal_error_exception() | 
    concurrent_modification_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type delete_resource_server_errors() ::
    internal_error_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type delete_user_errors() ::
    internal_error_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    user_not_found_exception() | 
    password_reset_required_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    user_not_confirmed_exception().

-type delete_user_attributes_errors() ::
    internal_error_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    user_not_found_exception() | 
    password_reset_required_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    user_not_confirmed_exception().

-type delete_user_pool_errors() ::
    internal_error_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception() | 
    user_import_in_progress_exception().

-type delete_user_pool_client_errors() ::
    internal_error_exception() | 
    concurrent_modification_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type delete_user_pool_domain_errors() ::
    internal_error_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    resource_not_found_exception().

-type delete_web_authn_credential_errors() ::
    internal_error_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    resource_not_found_exception() | 
    forbidden_exception().

-type describe_identity_provider_errors() ::
    internal_error_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type describe_managed_login_branding_errors() ::
    internal_error_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type describe_managed_login_branding_by_client_errors() ::
    internal_error_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type describe_resource_server_errors() ::
    internal_error_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type describe_risk_configuration_errors() ::
    internal_error_exception() | 
    invalid_parameter_exception() | 
    user_pool_add_on_not_enabled_exception() | 
    not_authorized_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type describe_user_import_job_errors() ::
    internal_error_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type describe_user_pool_errors() ::
    internal_error_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    user_pool_tagging_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type describe_user_pool_client_errors() ::
    internal_error_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type describe_user_pool_domain_errors() ::
    internal_error_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    resource_not_found_exception().

-type forget_device_errors() ::
    internal_error_exception() | 
    invalid_parameter_exception() | 
    invalid_user_pool_configuration_exception() | 
    not_authorized_exception() | 
    user_not_found_exception() | 
    password_reset_required_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    user_not_confirmed_exception().

-type forgot_password_errors() ::
    unexpected_lambda_exception() | 
    internal_error_exception() | 
    invalid_sms_role_trust_relationship_exception() | 
    code_delivery_failure_exception() | 
    limit_exceeded_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    user_lambda_validation_exception() | 
    invalid_lambda_response_exception() | 
    user_not_found_exception() | 
    resource_not_found_exception() | 
    invalid_sms_role_access_policy_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    invalid_email_role_access_policy_exception().

-type get_csv_header_errors() ::
    internal_error_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type get_device_errors() ::
    internal_error_exception() | 
    invalid_parameter_exception() | 
    invalid_user_pool_configuration_exception() | 
    not_authorized_exception() | 
    user_not_found_exception() | 
    password_reset_required_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    user_not_confirmed_exception().

-type get_group_errors() ::
    internal_error_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type get_identity_provider_by_identifier_errors() ::
    internal_error_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type get_log_delivery_configuration_errors() ::
    internal_error_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type get_signing_certificate_errors() ::
    internal_error_exception() | 
    invalid_parameter_exception() | 
    resource_not_found_exception().

-type get_ui_customization_errors() ::
    internal_error_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type get_user_errors() ::
    internal_error_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    user_not_found_exception() | 
    password_reset_required_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    user_not_confirmed_exception().

-type get_user_attribute_verification_code_errors() ::
    unexpected_lambda_exception() | 
    internal_error_exception() | 
    invalid_sms_role_trust_relationship_exception() | 
    code_delivery_failure_exception() | 
    limit_exceeded_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    user_lambda_validation_exception() | 
    invalid_lambda_response_exception() | 
    user_not_found_exception() | 
    password_reset_required_exception() | 
    resource_not_found_exception() | 
    invalid_sms_role_access_policy_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    invalid_email_role_access_policy_exception() | 
    user_not_confirmed_exception().

-type get_user_auth_factors_errors() ::
    internal_error_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    user_not_found_exception() | 
    password_reset_required_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    user_not_confirmed_exception().

-type get_user_pool_mfa_config_errors() ::
    internal_error_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type global_sign_out_errors() ::
    internal_error_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    password_reset_required_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    user_not_confirmed_exception().

-type initiate_auth_errors() ::
    unexpected_lambda_exception() | 
    internal_error_exception() | 
    invalid_sms_role_trust_relationship_exception() | 
    invalid_parameter_exception() | 
    invalid_user_pool_configuration_exception() | 
    not_authorized_exception() | 
    user_lambda_validation_exception() | 
    invalid_lambda_response_exception() | 
    user_not_found_exception() | 
    password_reset_required_exception() | 
    resource_not_found_exception() | 
    invalid_sms_role_access_policy_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    invalid_email_role_access_policy_exception() | 
    user_not_confirmed_exception().

-type list_devices_errors() ::
    internal_error_exception() | 
    invalid_parameter_exception() | 
    invalid_user_pool_configuration_exception() | 
    not_authorized_exception() | 
    user_not_found_exception() | 
    password_reset_required_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    user_not_confirmed_exception().

-type list_groups_errors() ::
    internal_error_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type list_identity_providers_errors() ::
    internal_error_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type list_resource_servers_errors() ::
    internal_error_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type list_tags_for_resource_errors() ::
    internal_error_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type list_user_import_jobs_errors() ::
    internal_error_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type list_user_pool_clients_errors() ::
    internal_error_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type list_user_pools_errors() ::
    internal_error_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    too_many_requests_exception().

-type list_users_errors() ::
    internal_error_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type list_users_in_group_errors() ::
    internal_error_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type list_web_authn_credentials_errors() ::
    internal_error_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    forbidden_exception().

-type resend_confirmation_code_errors() ::
    unexpected_lambda_exception() | 
    internal_error_exception() | 
    invalid_sms_role_trust_relationship_exception() | 
    code_delivery_failure_exception() | 
    limit_exceeded_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    user_lambda_validation_exception() | 
    invalid_lambda_response_exception() | 
    user_not_found_exception() | 
    resource_not_found_exception() | 
    invalid_sms_role_access_policy_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    invalid_email_role_access_policy_exception().

-type respond_to_auth_challenge_errors() ::
    unexpected_lambda_exception() | 
    internal_error_exception() | 
    mfa_method_not_found_exception() | 
    invalid_password_exception() | 
    invalid_sms_role_trust_relationship_exception() | 
    software_token_mfa_not_found_exception() | 
    invalid_parameter_exception() | 
    invalid_user_pool_configuration_exception() | 
    not_authorized_exception() | 
    user_lambda_validation_exception() | 
    expired_code_exception() | 
    invalid_lambda_response_exception() | 
    user_not_found_exception() | 
    password_reset_required_exception() | 
    resource_not_found_exception() | 
    code_mismatch_exception() | 
    invalid_sms_role_access_policy_exception() | 
    too_many_requests_exception() | 
    alias_exists_exception() | 
    forbidden_exception() | 
    password_history_policy_violation_exception() | 
    invalid_email_role_access_policy_exception() | 
    user_not_confirmed_exception().

-type revoke_token_errors() ::
    internal_error_exception() | 
    invalid_parameter_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    unauthorized_exception() | 
    unsupported_operation_exception() | 
    unsupported_token_type_exception().

-type set_log_delivery_configuration_errors() ::
    internal_error_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    feature_unavailable_in_tier_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type set_risk_configuration_errors() ::
    internal_error_exception() | 
    code_delivery_failure_exception() | 
    invalid_parameter_exception() | 
    user_pool_add_on_not_enabled_exception() | 
    not_authorized_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception() | 
    invalid_email_role_access_policy_exception().

-type set_ui_customization_errors() ::
    internal_error_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type set_user_mfa_preference_errors() ::
    internal_error_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    user_not_found_exception() | 
    password_reset_required_exception() | 
    resource_not_found_exception() | 
    forbidden_exception() | 
    user_not_confirmed_exception().

-type set_user_pool_mfa_config_errors() ::
    internal_error_exception() | 
    invalid_sms_role_trust_relationship_exception() | 
    concurrent_modification_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    feature_unavailable_in_tier_exception() | 
    resource_not_found_exception() | 
    invalid_sms_role_access_policy_exception() | 
    too_many_requests_exception().

-type set_user_settings_errors() ::
    internal_error_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    user_not_found_exception() | 
    password_reset_required_exception() | 
    resource_not_found_exception() | 
    forbidden_exception() | 
    user_not_confirmed_exception().

-type sign_up_errors() ::
    unexpected_lambda_exception() | 
    internal_error_exception() | 
    invalid_password_exception() | 
    invalid_sms_role_trust_relationship_exception() | 
    code_delivery_failure_exception() | 
    limit_exceeded_exception() | 
    username_exists_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    user_lambda_validation_exception() | 
    invalid_lambda_response_exception() | 
    resource_not_found_exception() | 
    invalid_sms_role_access_policy_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    invalid_email_role_access_policy_exception().

-type start_user_import_job_errors() ::
    internal_error_exception() | 
    precondition_not_met_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type start_web_authn_registration_errors() ::
    internal_error_exception() | 
    limit_exceeded_exception() | 
    web_authn_not_enabled_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    web_authn_configuration_missing_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type stop_user_import_job_errors() ::
    internal_error_exception() | 
    precondition_not_met_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type tag_resource_errors() ::
    internal_error_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type untag_resource_errors() ::
    internal_error_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type update_auth_event_feedback_errors() ::
    internal_error_exception() | 
    invalid_parameter_exception() | 
    user_pool_add_on_not_enabled_exception() | 
    not_authorized_exception() | 
    user_not_found_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type update_device_status_errors() ::
    internal_error_exception() | 
    invalid_parameter_exception() | 
    invalid_user_pool_configuration_exception() | 
    not_authorized_exception() | 
    user_not_found_exception() | 
    password_reset_required_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    user_not_confirmed_exception().

-type update_group_errors() ::
    internal_error_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type update_identity_provider_errors() ::
    internal_error_exception() | 
    concurrent_modification_exception() | 
    invalid_parameter_exception() | 
    unsupported_identity_provider_exception() | 
    not_authorized_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type update_managed_login_branding_errors() ::
    internal_error_exception() | 
    concurrent_modification_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type update_resource_server_errors() ::
    internal_error_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type update_user_attributes_errors() ::
    unexpected_lambda_exception() | 
    internal_error_exception() | 
    invalid_sms_role_trust_relationship_exception() | 
    code_delivery_failure_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    user_lambda_validation_exception() | 
    expired_code_exception() | 
    invalid_lambda_response_exception() | 
    user_not_found_exception() | 
    password_reset_required_exception() | 
    resource_not_found_exception() | 
    code_mismatch_exception() | 
    invalid_sms_role_access_policy_exception() | 
    too_many_requests_exception() | 
    alias_exists_exception() | 
    forbidden_exception() | 
    invalid_email_role_access_policy_exception() | 
    user_not_confirmed_exception().

-type update_user_pool_errors() ::
    internal_error_exception() | 
    invalid_sms_role_trust_relationship_exception() | 
    concurrent_modification_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    user_pool_tagging_exception() | 
    feature_unavailable_in_tier_exception() | 
    tier_change_not_allowed_exception() | 
    resource_not_found_exception() | 
    invalid_sms_role_access_policy_exception() | 
    too_many_requests_exception() | 
    invalid_email_role_access_policy_exception() | 
    user_import_in_progress_exception().

-type update_user_pool_client_errors() ::
    internal_error_exception() | 
    concurrent_modification_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    invalid_o_auth_flow_exception() | 
    scope_does_not_exist_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type update_user_pool_domain_errors() ::
    internal_error_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    feature_unavailable_in_tier_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type verify_software_token_errors() ::
    internal_error_exception() | 
    enable_software_token_mfa_exception() | 
    software_token_mfa_not_found_exception() | 
    invalid_parameter_exception() | 
    invalid_user_pool_configuration_exception() | 
    not_authorized_exception() | 
    user_not_found_exception() | 
    password_reset_required_exception() | 
    resource_not_found_exception() | 
    code_mismatch_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    user_not_confirmed_exception().

-type verify_user_attribute_errors() ::
    internal_error_exception() | 
    limit_exceeded_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    expired_code_exception() | 
    user_not_found_exception() | 
    password_reset_required_exception() | 
    resource_not_found_exception() | 
    code_mismatch_exception() | 
    too_many_requests_exception() | 
    alias_exists_exception() | 
    forbidden_exception() | 
    user_not_confirmed_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Adds additional user attributes to the user pool schema.
%%
%% Custom attributes can be
%% mutable or immutable and have a `custom:' or `dev:' prefix. For
%% more information, see Custom attributes:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-attributes.html#user-pool-settings-custom-attributes.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For
%% this operation, you must use IAM credentials to authorize requests, and
%% you must
%% grant yourself the corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
-spec add_custom_attributes(aws_client:aws_client(), add_custom_attributes_request()) ->
    {ok, add_custom_attributes_response(), tuple()} |
    {error, any()} |
    {error, add_custom_attributes_errors(), tuple()}.
add_custom_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_custom_attributes(Client, Input, []).

-spec add_custom_attributes(aws_client:aws_client(), add_custom_attributes_request(), proplists:proplist()) ->
    {ok, add_custom_attributes_response(), tuple()} |
    {error, any()} |
    {error, add_custom_attributes_errors(), tuple()}.
add_custom_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddCustomAttributes">>, Input, Options).

%% @doc Adds a user to a group.
%%
%% A user who is in a group can present a preferred-role claim to
%% an identity pool, and populates a `cognito:groups' claim to their
%% access and
%% identity tokens.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For
%% this operation, you must use IAM credentials to authorize requests, and
%% you must
%% grant yourself the corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
-spec admin_add_user_to_group(aws_client:aws_client(), admin_add_user_to_group_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, admin_add_user_to_group_errors(), tuple()}.
admin_add_user_to_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    admin_add_user_to_group(Client, Input, []).

-spec admin_add_user_to_group(aws_client:aws_client(), admin_add_user_to_group_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, admin_add_user_to_group_errors(), tuple()}.
admin_add_user_to_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AdminAddUserToGroup">>, Input, Options).

%% @doc Confirms user sign-up as an administrator.
%%
%% This request sets a user account active in a user pool that requires
%% confirmation of new user accounts:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/signing-up-users-in-your-app.html#signing-up-users-in-your-app-and-confirming-them-as-admin
%% before they can sign in. You can
%% configure your user pool to not send confirmation codes to new users and
%% instead confirm
%% them with this API operation on the back end.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For
%% this operation, you must use IAM credentials to authorize requests, and
%% you must
%% grant yourself the corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
%%
%% To configure your user pool to require administrative confirmation of
%% users, set
%% `AllowAdminCreateUserOnly' to `true' in a
%% `CreateUserPool' or `UpdateUserPool' request.
-spec admin_confirm_sign_up(aws_client:aws_client(), admin_confirm_sign_up_request()) ->
    {ok, admin_confirm_sign_up_response(), tuple()} |
    {error, any()} |
    {error, admin_confirm_sign_up_errors(), tuple()}.
admin_confirm_sign_up(Client, Input)
  when is_map(Client), is_map(Input) ->
    admin_confirm_sign_up(Client, Input, []).

-spec admin_confirm_sign_up(aws_client:aws_client(), admin_confirm_sign_up_request(), proplists:proplist()) ->
    {ok, admin_confirm_sign_up_response(), tuple()} |
    {error, any()} |
    {error, admin_confirm_sign_up_errors(), tuple()}.
admin_confirm_sign_up(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AdminConfirmSignUp">>, Input, Options).

%% @doc Creates a new user in the specified user pool.
%%
%% If `MessageAction' isn't set, the default is to send a welcome
%% message via
%% email or phone (SMS).
%%
%% This message is based on a template that you configured in your call to
%% create or
%% update a user pool. This template includes your custom sign-up
%% instructions and
%% placeholders for user name and temporary password.
%%
%% Alternatively, you can call `AdminCreateUser' with `SUPPRESS'
%% for the `MessageAction' parameter, and Amazon Cognito won't send
%% any email.
%%
%% In either case, if the user has a password, they will be in the
%% `FORCE_CHANGE_PASSWORD' state until they sign in and set their
%% password.
%% Your invitation message template must have the `{####}' password
%% placeholder
%% if your users have passwords. If your template doesn't have this
%% placeholder, Amazon Cognito
%% doesn't deliver the invitation message. In this case, you must update
%% your message
%% template and resend the password with a new `AdminCreateUser' request
%% with a
%% `MessageAction' value of `RESEND'.
%%
%% This action might generate an SMS text message. Starting June 1, 2021, US
%% telecom carriers
%% require you to register an origination phone number before you can send
%% SMS messages
%% to US phone numbers. If you use SMS text messages in Amazon Cognito, you
%% must register a
%% phone number with Amazon Pinpoint:
%% https://console.aws.amazon.com/pinpoint/home/.
%% Amazon Cognito uses the registered number automatically. Otherwise, Amazon
%% Cognito users who must
%% receive SMS messages might not be able to sign up, activate their
%% accounts, or sign
%% in.
%%
%% If you have never used SMS text messages with Amazon Cognito or any other
%% Amazon Web Services service,
%% Amazon Simple Notification Service might place your account in the SMS
%% sandbox. In
%% sandbox
%% mode: https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html
%% , you can send messages only to verified phone
%% numbers. After you test your app while in the sandbox environment, you can
%% move out
%% of the sandbox and into production. For more information, see SMS message
%% settings for Amazon Cognito user pools:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html
%% in the Amazon Cognito
%% Developer Guide.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For
%% this operation, you must use IAM credentials to authorize requests, and
%% you must
%% grant yourself the corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
-spec admin_create_user(aws_client:aws_client(), admin_create_user_request()) ->
    {ok, admin_create_user_response(), tuple()} |
    {error, any()} |
    {error, admin_create_user_errors(), tuple()}.
admin_create_user(Client, Input)
  when is_map(Client), is_map(Input) ->
    admin_create_user(Client, Input, []).

-spec admin_create_user(aws_client:aws_client(), admin_create_user_request(), proplists:proplist()) ->
    {ok, admin_create_user_response(), tuple()} |
    {error, any()} |
    {error, admin_create_user_errors(), tuple()}.
admin_create_user(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AdminCreateUser">>, Input, Options).

%% @doc Deletes a user profile in your user pool.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For
%% this operation, you must use IAM credentials to authorize requests, and
%% you must
%% grant yourself the corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
-spec admin_delete_user(aws_client:aws_client(), admin_delete_user_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, admin_delete_user_errors(), tuple()}.
admin_delete_user(Client, Input)
  when is_map(Client), is_map(Input) ->
    admin_delete_user(Client, Input, []).

-spec admin_delete_user(aws_client:aws_client(), admin_delete_user_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, admin_delete_user_errors(), tuple()}.
admin_delete_user(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AdminDeleteUser">>, Input, Options).

%% @doc Deletes attribute values from a user.
%%
%% This operation doesn't affect tokens for
%% existing user sessions. The next ID token that the user receives will no
%% longer have the
%% deleted attributes.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For
%% this operation, you must use IAM credentials to authorize requests, and
%% you must
%% grant yourself the corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
-spec admin_delete_user_attributes(aws_client:aws_client(), admin_delete_user_attributes_request()) ->
    {ok, admin_delete_user_attributes_response(), tuple()} |
    {error, any()} |
    {error, admin_delete_user_attributes_errors(), tuple()}.
admin_delete_user_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    admin_delete_user_attributes(Client, Input, []).

-spec admin_delete_user_attributes(aws_client:aws_client(), admin_delete_user_attributes_request(), proplists:proplist()) ->
    {ok, admin_delete_user_attributes_response(), tuple()} |
    {error, any()} |
    {error, admin_delete_user_attributes_errors(), tuple()}.
admin_delete_user_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AdminDeleteUserAttributes">>, Input, Options).

%% @doc Prevents the user from signing in with the specified external (SAML
%% or social)
%% identity provider (IdP).
%%
%% If the user that you want to deactivate is a Amazon Cognito user pools
%% native username + password user, they can't use their password to sign
%% in. If the user
%% to deactivate is a linked external IdP user, any link between that user
%% and an existing
%% user is removed. When the external user signs in again, and the user is no
%% longer
%% attached to the previously linked `DestinationUser', the user must
%% create a
%% new user account.
%%
%% The value of `ProviderName' must match the name of a user pool IdP.
%%
%% To deactivate a local user, set `ProviderName' to `Cognito' and
%% the `ProviderAttributeName' to `Cognito_Subject'. The
%% `ProviderAttributeValue' must be user's local username.
%%
%% The `ProviderAttributeName' must always be `Cognito_Subject' for
%% social IdPs. The `ProviderAttributeValue' must always be the exact
%% subject
%% that was used when the user was originally linked as a source user.
%%
%% For de-linking a SAML identity, there are two scenarios. If the linked
%% identity has
%% not yet been used to sign in, the `ProviderAttributeName' and
%% `ProviderAttributeValue' must be the same values that were used for
%% the
%% `SourceUser' when the identities were originally linked using
%% ```
%% AdminLinkProviderForUser''' call. This is also true if the
%% linking was done with
%% `ProviderAttributeName' set to `Cognito_Subject'. If the user
%% has already signed in, the `ProviderAttributeName' must be
%% `Cognito_Subject' and `ProviderAttributeValue' must be the
%% `NameID' from their SAML assertion.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For
%% this operation, you must use IAM credentials to authorize requests, and
%% you must
%% grant yourself the corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
-spec admin_disable_provider_for_user(aws_client:aws_client(), admin_disable_provider_for_user_request()) ->
    {ok, admin_disable_provider_for_user_response(), tuple()} |
    {error, any()} |
    {error, admin_disable_provider_for_user_errors(), tuple()}.
admin_disable_provider_for_user(Client, Input)
  when is_map(Client), is_map(Input) ->
    admin_disable_provider_for_user(Client, Input, []).

-spec admin_disable_provider_for_user(aws_client:aws_client(), admin_disable_provider_for_user_request(), proplists:proplist()) ->
    {ok, admin_disable_provider_for_user_response(), tuple()} |
    {error, any()} |
    {error, admin_disable_provider_for_user_errors(), tuple()}.
admin_disable_provider_for_user(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AdminDisableProviderForUser">>, Input, Options).

%% @doc Deactivates a user profile and revokes all access tokens for the
%% user.
%%
%% A deactivated
%% user can't sign in, but still appears in the responses to
%% `ListUsers'
%% API requests.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For
%% this operation, you must use IAM credentials to authorize requests, and
%% you must
%% grant yourself the corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
-spec admin_disable_user(aws_client:aws_client(), admin_disable_user_request()) ->
    {ok, admin_disable_user_response(), tuple()} |
    {error, any()} |
    {error, admin_disable_user_errors(), tuple()}.
admin_disable_user(Client, Input)
  when is_map(Client), is_map(Input) ->
    admin_disable_user(Client, Input, []).

-spec admin_disable_user(aws_client:aws_client(), admin_disable_user_request(), proplists:proplist()) ->
    {ok, admin_disable_user_response(), tuple()} |
    {error, any()} |
    {error, admin_disable_user_errors(), tuple()}.
admin_disable_user(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AdminDisableUser">>, Input, Options).

%% @doc Activates sign-in for a user profile that previously had sign-in
%% access
%% disabled.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For
%% this operation, you must use IAM credentials to authorize requests, and
%% you must
%% grant yourself the corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
-spec admin_enable_user(aws_client:aws_client(), admin_enable_user_request()) ->
    {ok, admin_enable_user_response(), tuple()} |
    {error, any()} |
    {error, admin_enable_user_errors(), tuple()}.
admin_enable_user(Client, Input)
  when is_map(Client), is_map(Input) ->
    admin_enable_user(Client, Input, []).

-spec admin_enable_user(aws_client:aws_client(), admin_enable_user_request(), proplists:proplist()) ->
    {ok, admin_enable_user_response(), tuple()} |
    {error, any()} |
    {error, admin_enable_user_errors(), tuple()}.
admin_enable_user(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AdminEnableUser">>, Input, Options).

%% @doc Forgets, or deletes, a remembered device from a user's profile.
%%
%% After you forget
%% the device, the user can no longer complete device authentication with
%% that device and
%% when applicable, must submit MFA codes again. For more information, see
%% Working with devices:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For
%% this operation, you must use IAM credentials to authorize requests, and
%% you must
%% grant yourself the corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
-spec admin_forget_device(aws_client:aws_client(), admin_forget_device_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, admin_forget_device_errors(), tuple()}.
admin_forget_device(Client, Input)
  when is_map(Client), is_map(Input) ->
    admin_forget_device(Client, Input, []).

-spec admin_forget_device(aws_client:aws_client(), admin_forget_device_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, admin_forget_device_errors(), tuple()}.
admin_forget_device(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AdminForgetDevice">>, Input, Options).

%% @doc Given the device key, returns details for a user's device.
%%
%% For more information,
%% see Working with devices:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For
%% this operation, you must use IAM credentials to authorize requests, and
%% you must
%% grant yourself the corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
-spec admin_get_device(aws_client:aws_client(), admin_get_device_request()) ->
    {ok, admin_get_device_response(), tuple()} |
    {error, any()} |
    {error, admin_get_device_errors(), tuple()}.
admin_get_device(Client, Input)
  when is_map(Client), is_map(Input) ->
    admin_get_device(Client, Input, []).

-spec admin_get_device(aws_client:aws_client(), admin_get_device_request(), proplists:proplist()) ->
    {ok, admin_get_device_response(), tuple()} |
    {error, any()} |
    {error, admin_get_device_errors(), tuple()}.
admin_get_device(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AdminGetDevice">>, Input, Options).

%% @doc Given a username, returns details about a user profile in a user
%% pool.
%%
%% You can specify
%% alias attributes in the `Username' request parameter.
%%
%% This operation contributes to your monthly active user (MAU) count for the
%% purpose of
%% billing.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For
%% this operation, you must use IAM credentials to authorize requests, and
%% you must
%% grant yourself the corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
-spec admin_get_user(aws_client:aws_client(), admin_get_user_request()) ->
    {ok, admin_get_user_response(), tuple()} |
    {error, any()} |
    {error, admin_get_user_errors(), tuple()}.
admin_get_user(Client, Input)
  when is_map(Client), is_map(Input) ->
    admin_get_user(Client, Input, []).

-spec admin_get_user(aws_client:aws_client(), admin_get_user_request(), proplists:proplist()) ->
    {ok, admin_get_user_response(), tuple()} |
    {error, any()} |
    {error, admin_get_user_errors(), tuple()}.
admin_get_user(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AdminGetUser">>, Input, Options).

%% @doc Starts sign-in for applications with a server-side component, for
%% example a
%% traditional web application.
%%
%% This operation specifies the authentication flow that
%% you'd like to begin. The authentication flow that you specify must be
%% supported in
%% your app client configuration. For more information about authentication
%% flows, see
%% Authentication flows:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-authentication-flow-methods.html.
%%
%% This action might generate an SMS text message. Starting June 1, 2021, US
%% telecom carriers
%% require you to register an origination phone number before you can send
%% SMS messages
%% to US phone numbers. If you use SMS text messages in Amazon Cognito, you
%% must register a
%% phone number with Amazon Pinpoint:
%% https://console.aws.amazon.com/pinpoint/home/.
%% Amazon Cognito uses the registered number automatically. Otherwise, Amazon
%% Cognito users who must
%% receive SMS messages might not be able to sign up, activate their
%% accounts, or sign
%% in.
%%
%% If you have never used SMS text messages with Amazon Cognito or any other
%% Amazon Web Services service,
%% Amazon Simple Notification Service might place your account in the SMS
%% sandbox. In
%% sandbox
%% mode: https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html
%% , you can send messages only to verified phone
%% numbers. After you test your app while in the sandbox environment, you can
%% move out
%% of the sandbox and into production. For more information, see SMS message
%% settings for Amazon Cognito user pools:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html
%% in the Amazon Cognito
%% Developer Guide.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For
%% this operation, you must use IAM credentials to authorize requests, and
%% you must
%% grant yourself the corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
-spec admin_initiate_auth(aws_client:aws_client(), admin_initiate_auth_request()) ->
    {ok, admin_initiate_auth_response(), tuple()} |
    {error, any()} |
    {error, admin_initiate_auth_errors(), tuple()}.
admin_initiate_auth(Client, Input)
  when is_map(Client), is_map(Input) ->
    admin_initiate_auth(Client, Input, []).

-spec admin_initiate_auth(aws_client:aws_client(), admin_initiate_auth_request(), proplists:proplist()) ->
    {ok, admin_initiate_auth_response(), tuple()} |
    {error, any()} |
    {error, admin_initiate_auth_errors(), tuple()}.
admin_initiate_auth(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AdminInitiateAuth">>, Input, Options).

%% @doc Links an existing user account in a user pool, or
%% `DestinationUser', to an
%% identity from an external IdP, or `SourceUser', based on a specified
%% attribute name and value from the external IdP.
%%
%% This operation connects a local user profile with a user identity who
%% hasn't yet
%% signed in from their third-party IdP. When the user signs in with their
%% IdP, they get
%% access-control configuration from the local user profile. Linked local
%% users can also
%% sign in with SDK-based API operations like `InitiateAuth' after they
%% sign in
%% at least once through their IdP. For more information, see Linking
%% federated users:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-identity-federation-consolidate-users.html.
%%
%% The maximum number of federated identities linked to a user is five.
%%
%% Because this API allows a user with an external federated identity to sign
%% in as a
%% local user, it is critical that it only be used with external IdPs and
%% linked
%% attributes that you trust.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For
%% this operation, you must use IAM credentials to authorize requests, and
%% you must
%% grant yourself the corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
-spec admin_link_provider_for_user(aws_client:aws_client(), admin_link_provider_for_user_request()) ->
    {ok, admin_link_provider_for_user_response(), tuple()} |
    {error, any()} |
    {error, admin_link_provider_for_user_errors(), tuple()}.
admin_link_provider_for_user(Client, Input)
  when is_map(Client), is_map(Input) ->
    admin_link_provider_for_user(Client, Input, []).

-spec admin_link_provider_for_user(aws_client:aws_client(), admin_link_provider_for_user_request(), proplists:proplist()) ->
    {ok, admin_link_provider_for_user_response(), tuple()} |
    {error, any()} |
    {error, admin_link_provider_for_user_errors(), tuple()}.
admin_link_provider_for_user(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AdminLinkProviderForUser">>, Input, Options).

%% @doc Lists a user's registered devices.
%%
%% Remembered devices are used in authentication
%% services where you offer a &quot;Remember me&quot; option for users who
%% you want to permit to sign
%% in without MFA from a trusted device. Users can bypass MFA while your
%% application
%% performs device SRP authentication on the back end. For more information,
%% see Working with devices:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For
%% this operation, you must use IAM credentials to authorize requests, and
%% you must
%% grant yourself the corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
-spec admin_list_devices(aws_client:aws_client(), admin_list_devices_request()) ->
    {ok, admin_list_devices_response(), tuple()} |
    {error, any()} |
    {error, admin_list_devices_errors(), tuple()}.
admin_list_devices(Client, Input)
  when is_map(Client), is_map(Input) ->
    admin_list_devices(Client, Input, []).

-spec admin_list_devices(aws_client:aws_client(), admin_list_devices_request(), proplists:proplist()) ->
    {ok, admin_list_devices_response(), tuple()} |
    {error, any()} |
    {error, admin_list_devices_errors(), tuple()}.
admin_list_devices(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AdminListDevices">>, Input, Options).

%% @doc Lists the groups that a user belongs to.
%%
%% User pool groups are identifiers that you can
%% reference from the contents of ID and access tokens, and set preferred IAM
%% roles for
%% identity-pool authentication. For more information, see Adding groups to a
%% user pool:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-user-groups.html.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For
%% this operation, you must use IAM credentials to authorize requests, and
%% you must
%% grant yourself the corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
-spec admin_list_groups_for_user(aws_client:aws_client(), admin_list_groups_for_user_request()) ->
    {ok, admin_list_groups_for_user_response(), tuple()} |
    {error, any()} |
    {error, admin_list_groups_for_user_errors(), tuple()}.
admin_list_groups_for_user(Client, Input)
  when is_map(Client), is_map(Input) ->
    admin_list_groups_for_user(Client, Input, []).

-spec admin_list_groups_for_user(aws_client:aws_client(), admin_list_groups_for_user_request(), proplists:proplist()) ->
    {ok, admin_list_groups_for_user_response(), tuple()} |
    {error, any()} |
    {error, admin_list_groups_for_user_errors(), tuple()}.
admin_list_groups_for_user(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AdminListGroupsForUser">>, Input, Options).

%% @doc Requests a history of user activity and any risks detected as part of
%% Amazon Cognito threat
%% protection.
%%
%% For more information, see Viewing user event history:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pool-settings-adaptive-authentication.html#user-pool-settings-adaptive-authentication-event-user-history.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For
%% this operation, you must use IAM credentials to authorize requests, and
%% you must
%% grant yourself the corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
-spec admin_list_user_auth_events(aws_client:aws_client(), admin_list_user_auth_events_request()) ->
    {ok, admin_list_user_auth_events_response(), tuple()} |
    {error, any()} |
    {error, admin_list_user_auth_events_errors(), tuple()}.
admin_list_user_auth_events(Client, Input)
  when is_map(Client), is_map(Input) ->
    admin_list_user_auth_events(Client, Input, []).

-spec admin_list_user_auth_events(aws_client:aws_client(), admin_list_user_auth_events_request(), proplists:proplist()) ->
    {ok, admin_list_user_auth_events_response(), tuple()} |
    {error, any()} |
    {error, admin_list_user_auth_events_errors(), tuple()}.
admin_list_user_auth_events(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AdminListUserAuthEvents">>, Input, Options).

%% @doc Given a username and a group name, removes them from the group.
%%
%% User pool groups are
%% identifiers that you can reference from the contents of ID and access
%% tokens, and set
%% preferred IAM roles for identity-pool authentication. For more
%% information, see Adding groups to a user pool:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-user-groups.html.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For
%% this operation, you must use IAM credentials to authorize requests, and
%% you must
%% grant yourself the corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
-spec admin_remove_user_from_group(aws_client:aws_client(), admin_remove_user_from_group_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, admin_remove_user_from_group_errors(), tuple()}.
admin_remove_user_from_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    admin_remove_user_from_group(Client, Input, []).

-spec admin_remove_user_from_group(aws_client:aws_client(), admin_remove_user_from_group_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, admin_remove_user_from_group_errors(), tuple()}.
admin_remove_user_from_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AdminRemoveUserFromGroup">>, Input, Options).

%% @doc Resets the specified user's password in a user pool.
%%
%% This operation doesn't
%% change the user's password, but sends a password-reset code.
%%
%% To use this API operation, your user pool must have self-service account
%% recovery
%% configured.
%%
%% This action might generate an SMS text message. Starting June 1, 2021, US
%% telecom carriers
%% require you to register an origination phone number before you can send
%% SMS messages
%% to US phone numbers. If you use SMS text messages in Amazon Cognito, you
%% must register a
%% phone number with Amazon Pinpoint:
%% https://console.aws.amazon.com/pinpoint/home/.
%% Amazon Cognito uses the registered number automatically. Otherwise, Amazon
%% Cognito users who must
%% receive SMS messages might not be able to sign up, activate their
%% accounts, or sign
%% in.
%%
%% If you have never used SMS text messages with Amazon Cognito or any other
%% Amazon Web Services service,
%% Amazon Simple Notification Service might place your account in the SMS
%% sandbox. In
%% sandbox
%% mode: https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html
%% , you can send messages only to verified phone
%% numbers. After you test your app while in the sandbox environment, you can
%% move out
%% of the sandbox and into production. For more information, see SMS message
%% settings for Amazon Cognito user pools:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html
%% in the Amazon Cognito
%% Developer Guide.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For
%% this operation, you must use IAM credentials to authorize requests, and
%% you must
%% grant yourself the corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
-spec admin_reset_user_password(aws_client:aws_client(), admin_reset_user_password_request()) ->
    {ok, admin_reset_user_password_response(), tuple()} |
    {error, any()} |
    {error, admin_reset_user_password_errors(), tuple()}.
admin_reset_user_password(Client, Input)
  when is_map(Client), is_map(Input) ->
    admin_reset_user_password(Client, Input, []).

-spec admin_reset_user_password(aws_client:aws_client(), admin_reset_user_password_request(), proplists:proplist()) ->
    {ok, admin_reset_user_password_response(), tuple()} |
    {error, any()} |
    {error, admin_reset_user_password_errors(), tuple()}.
admin_reset_user_password(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AdminResetUserPassword">>, Input, Options).

%% @doc Some API operations in a user pool generate a challenge, like a
%% prompt for an MFA
%% code, for device authentication that bypasses MFA, or for a custom
%% authentication
%% challenge.
%%
%% An `AdminRespondToAuthChallenge' API request provides the answer
%% to that challenge, like a code or a secure remote password (SRP). The
%% parameters of a
%% response to an authentication challenge vary with the type of challenge.
%%
%% For more information about custom authentication challenges, see Custom
%% authentication challenge Lambda triggers:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-lambda-challenge.html.
%%
%% This action might generate an SMS text message. Starting June 1, 2021, US
%% telecom carriers
%% require you to register an origination phone number before you can send
%% SMS messages
%% to US phone numbers. If you use SMS text messages in Amazon Cognito, you
%% must register a
%% phone number with Amazon Pinpoint:
%% https://console.aws.amazon.com/pinpoint/home/.
%% Amazon Cognito uses the registered number automatically. Otherwise, Amazon
%% Cognito users who must
%% receive SMS messages might not be able to sign up, activate their
%% accounts, or sign
%% in.
%%
%% If you have never used SMS text messages with Amazon Cognito or any other
%% Amazon Web Services service,
%% Amazon Simple Notification Service might place your account in the SMS
%% sandbox. In
%% sandbox
%% mode: https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html
%% , you can send messages only to verified phone
%% numbers. After you test your app while in the sandbox environment, you can
%% move out
%% of the sandbox and into production. For more information, see SMS message
%% settings for Amazon Cognito user pools:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html
%% in the Amazon Cognito
%% Developer Guide.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For
%% this operation, you must use IAM credentials to authorize requests, and
%% you must
%% grant yourself the corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
-spec admin_respond_to_auth_challenge(aws_client:aws_client(), admin_respond_to_auth_challenge_request()) ->
    {ok, admin_respond_to_auth_challenge_response(), tuple()} |
    {error, any()} |
    {error, admin_respond_to_auth_challenge_errors(), tuple()}.
admin_respond_to_auth_challenge(Client, Input)
  when is_map(Client), is_map(Input) ->
    admin_respond_to_auth_challenge(Client, Input, []).

-spec admin_respond_to_auth_challenge(aws_client:aws_client(), admin_respond_to_auth_challenge_request(), proplists:proplist()) ->
    {ok, admin_respond_to_auth_challenge_response(), tuple()} |
    {error, any()} |
    {error, admin_respond_to_auth_challenge_errors(), tuple()}.
admin_respond_to_auth_challenge(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AdminRespondToAuthChallenge">>, Input, Options).

%% @doc Sets the user's multi-factor authentication (MFA) preference,
%% including which MFA
%% options are activated, and if any are preferred.
%%
%% Only one factor can be set as
%% preferred. The preferred MFA factor will be used to authenticate a user if
%% multiple
%% factors are activated. If multiple options are activated and no preference
%% is set, a
%% challenge to choose an MFA option will be returned during sign-in.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For
%% this operation, you must use IAM credentials to authorize requests, and
%% you must
%% grant yourself the corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
-spec admin_set_user_mfa_preference(aws_client:aws_client(), admin_set_user_mfa_preference_request()) ->
    {ok, admin_set_user_mfa_preference_response(), tuple()} |
    {error, any()} |
    {error, admin_set_user_mfa_preference_errors(), tuple()}.
admin_set_user_mfa_preference(Client, Input)
  when is_map(Client), is_map(Input) ->
    admin_set_user_mfa_preference(Client, Input, []).

-spec admin_set_user_mfa_preference(aws_client:aws_client(), admin_set_user_mfa_preference_request(), proplists:proplist()) ->
    {ok, admin_set_user_mfa_preference_response(), tuple()} |
    {error, any()} |
    {error, admin_set_user_mfa_preference_errors(), tuple()}.
admin_set_user_mfa_preference(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AdminSetUserMFAPreference">>, Input, Options).

%% @doc Sets the specified user's password in a user pool.
%%
%% This operation administratively
%% sets a temporary or permanent password for a user. With this operation,
%% you can bypass
%% self-service password changes and permit immediate sign-in with the
%% password that you
%% set. To do this, set `Permanent' to `true'.
%%
%% You can also set a new temporary password in this request, send it to a
%% user, and
%% require them to choose a new password on their next sign-in. To do this,
%% set
%% `Permanent' to `false'.
%%
%% If the password is temporary, the user's `Status' becomes
%% `FORCE_CHANGE_PASSWORD'. When the user next tries to sign in, the
%% `InitiateAuth' or `AdminInitiateAuth' response includes the
%% `NEW_PASSWORD_REQUIRED' challenge. If the user doesn't sign in
%% before the temporary password expires, they can no longer sign in and you
%% must repeat
%% this operation to set a temporary or permanent password for them.
%%
%% After the user sets a new password, or if you set a permanent password,
%% their status
%% becomes `Confirmed'.
%%
%% `AdminSetUserPassword' can set a password for the user profile that
%% Amazon Cognito
%% creates for third-party federated users. When you set a password, the
%% federated user's
%% status changes from `EXTERNAL_PROVIDER' to `CONFIRMED'. A user in
%% this state can sign in as a federated user, and initiate authentication
%% flows in the API
%% like a linked native user. They can also modify their password and
%% attributes in
%% token-authenticated API requests like `ChangePassword' and
%% `UpdateUserAttributes'. As a best security practice and to keep users
%% in
%% sync with your external IdP, don't set passwords on federated user
%% profiles. To set up a
%% federated user for native sign-in with a linked native user, refer to
%% Linking federated users to an existing user
%% profile:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-identity-federation-consolidate-users.html.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For
%% this operation, you must use IAM credentials to authorize requests, and
%% you must
%% grant yourself the corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
-spec admin_set_user_password(aws_client:aws_client(), admin_set_user_password_request()) ->
    {ok, admin_set_user_password_response(), tuple()} |
    {error, any()} |
    {error, admin_set_user_password_errors(), tuple()}.
admin_set_user_password(Client, Input)
  when is_map(Client), is_map(Input) ->
    admin_set_user_password(Client, Input, []).

-spec admin_set_user_password(aws_client:aws_client(), admin_set_user_password_request(), proplists:proplist()) ->
    {ok, admin_set_user_password_response(), tuple()} |
    {error, any()} |
    {error, admin_set_user_password_errors(), tuple()}.
admin_set_user_password(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AdminSetUserPassword">>, Input, Options).

%% @doc
%% This action is no longer supported.
%%
%% You can use it to configure
%% only SMS MFA. You can't use it to configure time-based one-time
%% password (TOTP) software
%% token MFA.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For
%% this operation, you must use IAM credentials to authorize requests, and
%% you must
%% grant yourself the corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
-spec admin_set_user_settings(aws_client:aws_client(), admin_set_user_settings_request()) ->
    {ok, admin_set_user_settings_response(), tuple()} |
    {error, any()} |
    {error, admin_set_user_settings_errors(), tuple()}.
admin_set_user_settings(Client, Input)
  when is_map(Client), is_map(Input) ->
    admin_set_user_settings(Client, Input, []).

-spec admin_set_user_settings(aws_client:aws_client(), admin_set_user_settings_request(), proplists:proplist()) ->
    {ok, admin_set_user_settings_response(), tuple()} |
    {error, any()} |
    {error, admin_set_user_settings_errors(), tuple()}.
admin_set_user_settings(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AdminSetUserSettings">>, Input, Options).

%% @doc Provides the feedback for an authentication event generated by threat
%% protection
%% features.
%%
%% Your response indicates that you think that the event either was from a
%% valid
%% user or was an unwanted authentication attempt. This feedback improves the
%% risk
%% evaluation decision for the user pool as part of Amazon Cognito threat
%% protection.
%% To activate this setting, your user pool must be on the
%% Plus tier:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/feature-plans-features-plus.html.
%%
%% To train the threat-protection model to recognize trusted and untrusted
%% sign-in
%% characteristics, configure threat protection in audit-only mode and
%% provide a mechanism
%% for users or administrators to submit feedback. Your feedback can tell
%% Amazon Cognito that a risk
%% rating was assigned at a level you don't agree with.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For
%% this operation, you must use IAM credentials to authorize requests, and
%% you must
%% grant yourself the corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
-spec admin_update_auth_event_feedback(aws_client:aws_client(), admin_update_auth_event_feedback_request()) ->
    {ok, admin_update_auth_event_feedback_response(), tuple()} |
    {error, any()} |
    {error, admin_update_auth_event_feedback_errors(), tuple()}.
admin_update_auth_event_feedback(Client, Input)
  when is_map(Client), is_map(Input) ->
    admin_update_auth_event_feedback(Client, Input, []).

-spec admin_update_auth_event_feedback(aws_client:aws_client(), admin_update_auth_event_feedback_request(), proplists:proplist()) ->
    {ok, admin_update_auth_event_feedback_response(), tuple()} |
    {error, any()} |
    {error, admin_update_auth_event_feedback_errors(), tuple()}.
admin_update_auth_event_feedback(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AdminUpdateAuthEventFeedback">>, Input, Options).

%% @doc Updates the status of a user's device so that it is marked as
%% remembered or not
%% remembered for the purpose of device authentication.
%%
%% Device authentication is a
%% &quot;remember me&quot; mechanism that silently completes sign-in from
%% trusted devices with a
%% device key instead of a user-provided MFA code. This operation changes the
%% status of a
%% device without deleting it, so you can enable it again later. For more
%% information about
%% device authentication, see Working with devices:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For
%% this operation, you must use IAM credentials to authorize requests, and
%% you must
%% grant yourself the corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
-spec admin_update_device_status(aws_client:aws_client(), admin_update_device_status_request()) ->
    {ok, admin_update_device_status_response(), tuple()} |
    {error, any()} |
    {error, admin_update_device_status_errors(), tuple()}.
admin_update_device_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    admin_update_device_status(Client, Input, []).

-spec admin_update_device_status(aws_client:aws_client(), admin_update_device_status_request(), proplists:proplist()) ->
    {ok, admin_update_device_status_response(), tuple()} |
    {error, any()} |
    {error, admin_update_device_status_errors(), tuple()}.
admin_update_device_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AdminUpdateDeviceStatus">>, Input, Options).

%% @doc Updates the specified user's attributes.
%%
%% To delete an attribute from your user,
%% submit the attribute in your API request with a blank value.
%%
%% For custom attributes, you must add a `custom:' prefix to the
%% attribute
%% name, for example `custom:department'.
%%
%% This operation can set a user's email address or phone number as
%% verified and
%% permit immediate sign-in in user pools that require verification of these
%% attributes. To
%% do this, set the `email_verified' or `phone_number_verified'
%% attribute to `true'.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For
%% this operation, you must use IAM credentials to authorize requests, and
%% you must
%% grant yourself the corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
%%
%% This action might generate an SMS text message. Starting June 1, 2021, US
%% telecom carriers
%% require you to register an origination phone number before you can send
%% SMS messages
%% to US phone numbers. If you use SMS text messages in Amazon Cognito, you
%% must register a
%% phone number with Amazon Pinpoint:
%% https://console.aws.amazon.com/pinpoint/home/.
%% Amazon Cognito uses the registered number automatically. Otherwise, Amazon
%% Cognito users who must
%% receive SMS messages might not be able to sign up, activate their
%% accounts, or sign
%% in.
%%
%% If you have never used SMS text messages with Amazon Cognito or any other
%% Amazon Web Services service,
%% Amazon Simple Notification Service might place your account in the SMS
%% sandbox. In
%% sandbox
%% mode: https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html
%% , you can send messages only to verified phone
%% numbers. After you test your app while in the sandbox environment, you can
%% move out
%% of the sandbox and into production. For more information, see SMS message
%% settings for Amazon Cognito user pools:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html
%% in the Amazon Cognito
%% Developer Guide.
-spec admin_update_user_attributes(aws_client:aws_client(), admin_update_user_attributes_request()) ->
    {ok, admin_update_user_attributes_response(), tuple()} |
    {error, any()} |
    {error, admin_update_user_attributes_errors(), tuple()}.
admin_update_user_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    admin_update_user_attributes(Client, Input, []).

-spec admin_update_user_attributes(aws_client:aws_client(), admin_update_user_attributes_request(), proplists:proplist()) ->
    {ok, admin_update_user_attributes_response(), tuple()} |
    {error, any()} |
    {error, admin_update_user_attributes_errors(), tuple()}.
admin_update_user_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AdminUpdateUserAttributes">>, Input, Options).

%% @doc Invalidates the identity, access, and refresh tokens that Amazon
%% Cognito issued to a user.
%%
%% Call
%% this operation with your administrative credentials when your user signs
%% out of your
%% app. This results in the following behavior.
%%
%% Amazon Cognito no longer accepts token-authorized user operations
%% that you authorize with a signed-out user's access tokens. For more
%% information,
%% see Using the Amazon Cognito user pools API and user pool
%% endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html.
%%
%% Amazon Cognito returns an `Access Token has been revoked' error when
%% your
%% app attempts to authorize a user pools API request with a revoked access
%% token
%% that contains the scope `aws.cognito.signin.user.admin'.
%%
%% Amazon Cognito no longer accepts a signed-out user's ID token in a
%% GetId :
%% https://docs.aws.amazon.com/cognitoidentity/latest/APIReference/API_GetId.html
%% request to an identity pool with
%% `ServerSideTokenCheck' enabled for its user pool IdP
%% configuration in CognitoIdentityProvider:
%% https://docs.aws.amazon.com/cognitoidentity/latest/APIReference/API_CognitoIdentityProvider.html.
%%
%% Amazon Cognito no longer accepts a signed-out user's refresh tokens in
%% refresh
%% requests.
%%
%% Other requests might be valid until your user's token expires. This
%% operation
%% doesn't clear the managed login:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-managed-login.html
%% session cookie. To clear the session for
%% a user who signed in with managed login or the classic hosted UI, direct
%% their browser
%% session to the logout endpoint:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/logout-endpoint.html.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For
%% this operation, you must use IAM credentials to authorize requests, and
%% you must
%% grant yourself the corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
-spec admin_user_global_sign_out(aws_client:aws_client(), admin_user_global_sign_out_request()) ->
    {ok, admin_user_global_sign_out_response(), tuple()} |
    {error, any()} |
    {error, admin_user_global_sign_out_errors(), tuple()}.
admin_user_global_sign_out(Client, Input)
  when is_map(Client), is_map(Input) ->
    admin_user_global_sign_out(Client, Input, []).

-spec admin_user_global_sign_out(aws_client:aws_client(), admin_user_global_sign_out_request(), proplists:proplist()) ->
    {ok, admin_user_global_sign_out_response(), tuple()} |
    {error, any()} |
    {error, admin_user_global_sign_out_errors(), tuple()}.
admin_user_global_sign_out(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AdminUserGlobalSignOut">>, Input, Options).

%% @doc Begins setup of time-based one-time password (TOTP) multi-factor
%% authentication (MFA)
%% for a user, with a unique private key that Amazon Cognito generates and
%% returns in the API
%% response.
%%
%% You can authorize an `AssociateSoftwareToken' request with either
%% the user's access token, or a session string from a challenge response
%% that you received
%% from Amazon Cognito.
%%
%% Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
%% policies in requests for this API operation. For
%% this operation, you can't use IAM credentials to authorize requests,
%% and you can't
%% grant IAM permissions in policies. For more information about
%% authorization models in
%% Amazon Cognito, see Using the Amazon Cognito user pools API and user pool
%% endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html.
%%
%% Authorize this action with a signed-in user's access token. It must
%% include the scope `aws.cognito.signin.user.admin'.
-spec associate_software_token(aws_client:aws_client(), associate_software_token_request()) ->
    {ok, associate_software_token_response(), tuple()} |
    {error, any()} |
    {error, associate_software_token_errors(), tuple()}.
associate_software_token(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_software_token(Client, Input, []).

-spec associate_software_token(aws_client:aws_client(), associate_software_token_request(), proplists:proplist()) ->
    {ok, associate_software_token_response(), tuple()} |
    {error, any()} |
    {error, associate_software_token_errors(), tuple()}.
associate_software_token(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateSoftwareToken">>, Input, Options).

%% @doc Changes the password for the currently signed-in user.
%%
%% Authorize this action with a signed-in user's access token. It must
%% include the scope `aws.cognito.signin.user.admin'.
%%
%% Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
%% policies in requests for this API operation. For
%% this operation, you can't use IAM credentials to authorize requests,
%% and you can't
%% grant IAM permissions in policies. For more information about
%% authorization models in
%% Amazon Cognito, see Using the Amazon Cognito user pools API and user pool
%% endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html.
-spec change_password(aws_client:aws_client(), change_password_request()) ->
    {ok, change_password_response(), tuple()} |
    {error, any()} |
    {error, change_password_errors(), tuple()}.
change_password(Client, Input)
  when is_map(Client), is_map(Input) ->
    change_password(Client, Input, []).

-spec change_password(aws_client:aws_client(), change_password_request(), proplists:proplist()) ->
    {ok, change_password_response(), tuple()} |
    {error, any()} |
    {error, change_password_errors(), tuple()}.
change_password(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ChangePassword">>, Input, Options).

%% @doc Completes registration of a passkey authenticator for the currently
%% signed-in
%% user.
%%
%% Authorize this action with a signed-in user's access token. It must
%% include the scope `aws.cognito.signin.user.admin'.
-spec complete_web_authn_registration(aws_client:aws_client(), complete_web_authn_registration_request()) ->
    {ok, complete_web_authn_registration_response(), tuple()} |
    {error, any()} |
    {error, complete_web_authn_registration_errors(), tuple()}.
complete_web_authn_registration(Client, Input)
  when is_map(Client), is_map(Input) ->
    complete_web_authn_registration(Client, Input, []).

-spec complete_web_authn_registration(aws_client:aws_client(), complete_web_authn_registration_request(), proplists:proplist()) ->
    {ok, complete_web_authn_registration_response(), tuple()} |
    {error, any()} |
    {error, complete_web_authn_registration_errors(), tuple()}.
complete_web_authn_registration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CompleteWebAuthnRegistration">>, Input, Options).

%% @doc Confirms a device that a user wants to remember.
%%
%% A remembered device is a &quot;Remember me
%% on this device&quot; option for user pools that perform authentication
%% with the device key of
%% a trusted device in the back end, instead of a user-provided MFA code. For
%% more
%% information about device authentication, see Working with user devices in
%% your user pool:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html.
%%
%% Authorize this action with a signed-in user's access token. It must
%% include the scope `aws.cognito.signin.user.admin'.
%%
%% Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
%% policies in requests for this API operation. For
%% this operation, you can't use IAM credentials to authorize requests,
%% and you can't
%% grant IAM permissions in policies. For more information about
%% authorization models in
%% Amazon Cognito, see Using the Amazon Cognito user pools API and user pool
%% endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html.
-spec confirm_device(aws_client:aws_client(), confirm_device_request()) ->
    {ok, confirm_device_response(), tuple()} |
    {error, any()} |
    {error, confirm_device_errors(), tuple()}.
confirm_device(Client, Input)
  when is_map(Client), is_map(Input) ->
    confirm_device(Client, Input, []).

-spec confirm_device(aws_client:aws_client(), confirm_device_request(), proplists:proplist()) ->
    {ok, confirm_device_response(), tuple()} |
    {error, any()} |
    {error, confirm_device_errors(), tuple()}.
confirm_device(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ConfirmDevice">>, Input, Options).

%% @doc This public API operation accepts a confirmation code that Amazon
%% Cognito sent to a user and
%% accepts a new password for that user.
%%
%% Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
%% policies in requests for this API operation. For
%% this operation, you can't use IAM credentials to authorize requests,
%% and you can't
%% grant IAM permissions in policies. For more information about
%% authorization models in
%% Amazon Cognito, see Using the Amazon Cognito user pools API and user pool
%% endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html.
-spec confirm_forgot_password(aws_client:aws_client(), confirm_forgot_password_request()) ->
    {ok, confirm_forgot_password_response(), tuple()} |
    {error, any()} |
    {error, confirm_forgot_password_errors(), tuple()}.
confirm_forgot_password(Client, Input)
  when is_map(Client), is_map(Input) ->
    confirm_forgot_password(Client, Input, []).

-spec confirm_forgot_password(aws_client:aws_client(), confirm_forgot_password_request(), proplists:proplist()) ->
    {ok, confirm_forgot_password_response(), tuple()} |
    {error, any()} |
    {error, confirm_forgot_password_errors(), tuple()}.
confirm_forgot_password(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ConfirmForgotPassword">>, Input, Options).

%% @doc Confirms the account of a new user.
%%
%% This public API operation submits a code that
%% Amazon Cognito sent to your user when they signed up in your user pool.
%% After your user enters
%% their code, they confirm ownership of the email address or phone number
%% that they
%% provided, and their user account becomes active. Depending on your user
%% pool
%% configuration, your users will receive their confirmation code in an email
%% or SMS
%% message.
%%
%% Local users who signed up in your user pool are the only type of user who
%% can confirm
%% sign-up with a code. Users who federate through an external identity
%% provider (IdP) have
%% already been confirmed by their IdP.
%%
%% Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
%% policies in requests for this API operation. For
%% this operation, you can't use IAM credentials to authorize requests,
%% and you can't
%% grant IAM permissions in policies. For more information about
%% authorization models in
%% Amazon Cognito, see Using the Amazon Cognito user pools API and user pool
%% endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html.
-spec confirm_sign_up(aws_client:aws_client(), confirm_sign_up_request()) ->
    {ok, confirm_sign_up_response(), tuple()} |
    {error, any()} |
    {error, confirm_sign_up_errors(), tuple()}.
confirm_sign_up(Client, Input)
  when is_map(Client), is_map(Input) ->
    confirm_sign_up(Client, Input, []).

-spec confirm_sign_up(aws_client:aws_client(), confirm_sign_up_request(), proplists:proplist()) ->
    {ok, confirm_sign_up_response(), tuple()} |
    {error, any()} |
    {error, confirm_sign_up_errors(), tuple()}.
confirm_sign_up(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ConfirmSignUp">>, Input, Options).

%% @doc Creates a new group in the specified user pool.
%%
%% For more information about user pool
%% groups, see Adding groups to a user pool:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-user-groups.html.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For
%% this operation, you must use IAM credentials to authorize requests, and
%% you must
%% grant yourself the corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
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

%% @doc Adds a configuration and trust relationship between a third-party
%% identity provider
%% (IdP) and a user pool.
%%
%% Amazon Cognito accepts sign-in with third-party identity providers through
%% managed login and OIDC relying-party libraries. For more information, see
%% Third-party IdP sign-in:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-identity-federation.html.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For
%% this operation, you must use IAM credentials to authorize requests, and
%% you must
%% grant yourself the corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
-spec create_identity_provider(aws_client:aws_client(), create_identity_provider_request()) ->
    {ok, create_identity_provider_response(), tuple()} |
    {error, any()} |
    {error, create_identity_provider_errors(), tuple()}.
create_identity_provider(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_identity_provider(Client, Input, []).

-spec create_identity_provider(aws_client:aws_client(), create_identity_provider_request(), proplists:proplist()) ->
    {ok, create_identity_provider_response(), tuple()} |
    {error, any()} |
    {error, create_identity_provider_errors(), tuple()}.
create_identity_provider(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateIdentityProvider">>, Input, Options).

%% @doc Creates a new set of branding settings for a user pool style and
%% associates it with an
%% app client.
%%
%% This operation is the programmatic option for the creation of a new style
%% in
%% the branding designer.
%%
%% Provides values for UI customization in a `Settings' JSON object and
%% image
%% files in an `Assets' array. To send the JSON object `Document'
%% type parameter in `Settings', you might need to update to the most
%% recent
%% version of your Amazon Web Services SDK. To create a new style with
%% default settings, set
%% `UseCognitoProvidedValues' to `true' and don't provide
%% values for any other options.
%%
%% This operation has a 2-megabyte request-size limit and include the CSS
%% settings and
%% image assets for your app client. Your branding settings might exceed 2MB
%% in size. Amazon Cognito
%% doesn't require that you pass all parameters in one request and
%% preserves existing
%% style settings that you don't specify. If your request is larger than
%% 2MB, separate it
%% into multiple requests, each with a size smaller than the limit.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For
%% this operation, you must use IAM credentials to authorize requests, and
%% you must
%% grant yourself the corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
-spec create_managed_login_branding(aws_client:aws_client(), create_managed_login_branding_request()) ->
    {ok, create_managed_login_branding_response(), tuple()} |
    {error, any()} |
    {error, create_managed_login_branding_errors(), tuple()}.
create_managed_login_branding(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_managed_login_branding(Client, Input, []).

-spec create_managed_login_branding(aws_client:aws_client(), create_managed_login_branding_request(), proplists:proplist()) ->
    {ok, create_managed_login_branding_response(), tuple()} |
    {error, any()} |
    {error, create_managed_login_branding_errors(), tuple()}.
create_managed_login_branding(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateManagedLoginBranding">>, Input, Options).

%% @doc Creates a new OAuth2.0 resource server and defines custom scopes
%% within it.
%%
%% Resource
%% servers are associated with custom scopes and machine-to-machine (M2M)
%% authorization.
%% For more information, see Access control with resource servers:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-define-resource-servers.html.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For
%% this operation, you must use IAM credentials to authorize requests, and
%% you must
%% grant yourself the corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
-spec create_resource_server(aws_client:aws_client(), create_resource_server_request()) ->
    {ok, create_resource_server_response(), tuple()} |
    {error, any()} |
    {error, create_resource_server_errors(), tuple()}.
create_resource_server(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_resource_server(Client, Input, []).

-spec create_resource_server(aws_client:aws_client(), create_resource_server_request(), proplists:proplist()) ->
    {ok, create_resource_server_response(), tuple()} |
    {error, any()} |
    {error, create_resource_server_errors(), tuple()}.
create_resource_server(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateResourceServer">>, Input, Options).

%% @doc Creates a user import job.
%%
%% You can import users into user pools from a comma-separated
%% values (CSV) file without adding Amazon Cognito MAU costs to your Amazon
%% Web Services bill.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For
%% this operation, you must use IAM credentials to authorize requests, and
%% you must
%% grant yourself the corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
-spec create_user_import_job(aws_client:aws_client(), create_user_import_job_request()) ->
    {ok, create_user_import_job_response(), tuple()} |
    {error, any()} |
    {error, create_user_import_job_errors(), tuple()}.
create_user_import_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_user_import_job(Client, Input, []).

-spec create_user_import_job(aws_client:aws_client(), create_user_import_job_request(), proplists:proplist()) ->
    {ok, create_user_import_job_response(), tuple()} |
    {error, any()} |
    {error, create_user_import_job_errors(), tuple()}.
create_user_import_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateUserImportJob">>, Input, Options).

%% @doc Creates a new Amazon Cognito user pool.
%%
%% This operation sets basic and advanced configuration
%% options.
%%
%% If you don't provide a value for an attribute, Amazon Cognito sets it
%% to its default value.
%%
%% This action might generate an SMS text message. Starting June 1, 2021, US
%% telecom carriers
%% require you to register an origination phone number before you can send
%% SMS messages
%% to US phone numbers. If you use SMS text messages in Amazon Cognito, you
%% must register a
%% phone number with Amazon Pinpoint:
%% https://console.aws.amazon.com/pinpoint/home/.
%% Amazon Cognito uses the registered number automatically. Otherwise, Amazon
%% Cognito users who must
%% receive SMS messages might not be able to sign up, activate their
%% accounts, or sign
%% in.
%%
%% If you have never used SMS text messages with Amazon Cognito or any other
%% Amazon Web Services service,
%% Amazon Simple Notification Service might place your account in the SMS
%% sandbox. In
%% sandbox
%% mode: https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html
%% , you can send messages only to verified phone
%% numbers. After you test your app while in the sandbox environment, you can
%% move out
%% of the sandbox and into production. For more information, see SMS message
%% settings for Amazon Cognito user pools:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html
%% in the Amazon Cognito
%% Developer Guide.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For
%% this operation, you must use IAM credentials to authorize requests, and
%% you must
%% grant yourself the corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
-spec create_user_pool(aws_client:aws_client(), create_user_pool_request()) ->
    {ok, create_user_pool_response(), tuple()} |
    {error, any()} |
    {error, create_user_pool_errors(), tuple()}.
create_user_pool(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_user_pool(Client, Input, []).

-spec create_user_pool(aws_client:aws_client(), create_user_pool_request(), proplists:proplist()) ->
    {ok, create_user_pool_response(), tuple()} |
    {error, any()} |
    {error, create_user_pool_errors(), tuple()}.
create_user_pool(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateUserPool">>, Input, Options).

%% @doc Creates an app client in a user pool.
%%
%% This operation sets basic and advanced
%% configuration options.
%%
%% Unlike app clients created in the console, Amazon Cognito doesn't
%% automatically assign a
%% branding style to app clients that you configure with this API operation.
%% Managed login and classic hosted UI pages aren't
%% available for your client until after you apply a branding style.
%%
%% If you don't provide a value for an attribute, Amazon Cognito sets it
%% to its default value.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For
%% this operation, you must use IAM credentials to authorize requests, and
%% you must
%% grant yourself the corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
-spec create_user_pool_client(aws_client:aws_client(), create_user_pool_client_request()) ->
    {ok, create_user_pool_client_response(), tuple()} |
    {error, any()} |
    {error, create_user_pool_client_errors(), tuple()}.
create_user_pool_client(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_user_pool_client(Client, Input, []).

-spec create_user_pool_client(aws_client:aws_client(), create_user_pool_client_request(), proplists:proplist()) ->
    {ok, create_user_pool_client_response(), tuple()} |
    {error, any()} |
    {error, create_user_pool_client_errors(), tuple()}.
create_user_pool_client(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateUserPoolClient">>, Input, Options).

%% @doc A user pool domain hosts managed login, an authorization server and
%% web server for
%% authentication in your application.
%%
%% This operation creates a new user pool prefix domain
%% or custom domain and sets the managed login branding version. Set the
%% branding version
%% to `1' for hosted UI (classic) or `2' for managed login. When you
%% choose a custom domain, you must provide an SSL certificate in the US East
%% (N. Virginia)
%% Amazon Web Services Region in your request.
%%
%% Your prefix domain might take up to one minute to take effect. Your custom
%% domain is
%% online within five minutes, but it can take up to one hour to distribute
%% your SSL
%% certificate.
%%
%% For more information about adding a custom domain to your user pool, see
%% Configuring a user pool domain:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-add-custom-domain.html.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For
%% this operation, you must use IAM credentials to authorize requests, and
%% you must
%% grant yourself the corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
-spec create_user_pool_domain(aws_client:aws_client(), create_user_pool_domain_request()) ->
    {ok, create_user_pool_domain_response(), tuple()} |
    {error, any()} |
    {error, create_user_pool_domain_errors(), tuple()}.
create_user_pool_domain(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_user_pool_domain(Client, Input, []).

-spec create_user_pool_domain(aws_client:aws_client(), create_user_pool_domain_request(), proplists:proplist()) ->
    {ok, create_user_pool_domain_response(), tuple()} |
    {error, any()} |
    {error, create_user_pool_domain_errors(), tuple()}.
create_user_pool_domain(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateUserPoolDomain">>, Input, Options).

%% @doc Deletes a group from the specified user pool.
%%
%% When you delete a group, that group no
%% longer contributes to users' `cognito:preferred_group' or
%% `cognito:groups' claims, and no longer influence access-control
%% decision
%% that are based on group membership. For more information about user pool
%% groups, see
%% Adding groups to a user pool:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-user-groups.html.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For
%% this operation, you must use IAM credentials to authorize requests, and
%% you must
%% grant yourself the corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
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

%% @doc Deletes a user pool identity provider (IdP).
%%
%% After you delete an IdP, users can no
%% longer sign in to your user pool through that IdP. For more information
%% about user pool
%% IdPs, see Third-party IdP sign-in:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-identity-federation.html.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For
%% this operation, you must use IAM credentials to authorize requests, and
%% you must
%% grant yourself the corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
-spec delete_identity_provider(aws_client:aws_client(), delete_identity_provider_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_identity_provider_errors(), tuple()}.
delete_identity_provider(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_identity_provider(Client, Input, []).

-spec delete_identity_provider(aws_client:aws_client(), delete_identity_provider_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_identity_provider_errors(), tuple()}.
delete_identity_provider(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteIdentityProvider">>, Input, Options).

%% @doc Deletes a managed login branding style.
%%
%% When you delete a style, you delete the
%% branding association for an app client. When an app client doesn't
%% have a style
%% assigned, your managed login pages for that app client are nonfunctional
%% until you
%% create a new style or switch the domain branding version.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For
%% this operation, you must use IAM credentials to authorize requests, and
%% you must
%% grant yourself the corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
-spec delete_managed_login_branding(aws_client:aws_client(), delete_managed_login_branding_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_managed_login_branding_errors(), tuple()}.
delete_managed_login_branding(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_managed_login_branding(Client, Input, []).

-spec delete_managed_login_branding(aws_client:aws_client(), delete_managed_login_branding_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_managed_login_branding_errors(), tuple()}.
delete_managed_login_branding(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteManagedLoginBranding">>, Input, Options).

%% @doc Deletes a resource server.
%%
%% After you delete a resource server, users can no longer
%% generate access tokens with scopes that are associate with that resource
%% server.
%%
%% Resource servers are associated with custom scopes and machine-to-machine
%% (M2M)
%% authorization. For more information, see Access control with resource
%% servers:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-define-resource-servers.html.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For
%% this operation, you must use IAM credentials to authorize requests, and
%% you must
%% grant yourself the corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
-spec delete_resource_server(aws_client:aws_client(), delete_resource_server_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_resource_server_errors(), tuple()}.
delete_resource_server(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_resource_server(Client, Input, []).

-spec delete_resource_server(aws_client:aws_client(), delete_resource_server_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_resource_server_errors(), tuple()}.
delete_resource_server(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteResourceServer">>, Input, Options).

%% @doc Deletes the profile of the currently signed-in user.
%%
%% A deleted user profile can no
%% longer be used to sign in and can't be restored.
%%
%% Authorize this action with a signed-in user's access token. It must
%% include the scope `aws.cognito.signin.user.admin'.
%%
%% Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
%% policies in requests for this API operation. For
%% this operation, you can't use IAM credentials to authorize requests,
%% and you can't
%% grant IAM permissions in policies. For more information about
%% authorization models in
%% Amazon Cognito, see Using the Amazon Cognito user pools API and user pool
%% endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html.
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

%% @doc Deletes attributes from the currently signed-in user.
%%
%% For example, your application
%% can submit a request to this operation when a user wants to remove their
%% `birthdate' attribute value.
%%
%% Authorize this action with a signed-in user's access token. It must
%% include the scope `aws.cognito.signin.user.admin'.
%%
%% Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
%% policies in requests for this API operation. For
%% this operation, you can't use IAM credentials to authorize requests,
%% and you can't
%% grant IAM permissions in policies. For more information about
%% authorization models in
%% Amazon Cognito, see Using the Amazon Cognito user pools API and user pool
%% endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html.
-spec delete_user_attributes(aws_client:aws_client(), delete_user_attributes_request()) ->
    {ok, delete_user_attributes_response(), tuple()} |
    {error, any()} |
    {error, delete_user_attributes_errors(), tuple()}.
delete_user_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_user_attributes(Client, Input, []).

-spec delete_user_attributes(aws_client:aws_client(), delete_user_attributes_request(), proplists:proplist()) ->
    {ok, delete_user_attributes_response(), tuple()} |
    {error, any()} |
    {error, delete_user_attributes_errors(), tuple()}.
delete_user_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteUserAttributes">>, Input, Options).

%% @doc Deletes a user pool.
%%
%% After you delete a user pool, users can no longer sign in to any
%% associated applications.
%%
%% When you delete a user pool, it's no longer visible or operational in
%% your Amazon Web Services account. Amazon Cognito retains deleted user
%% pools in an inactive state for 14
%% days, then begins a cleanup process that fully removes them from Amazon
%% Web Services systems. In case
%% of accidental deletion, contact Amazon Web Services Support within 14 days
%% for restoration
%% assistance.
%%
%% Amazon Cognito begins full deletion of all resources from deleted user
%% pools after 14 days. In
%% the case of large user pools, the cleanup process might take significant
%% additional time
%% before all user data is permanently deleted.
-spec delete_user_pool(aws_client:aws_client(), delete_user_pool_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_user_pool_errors(), tuple()}.
delete_user_pool(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_user_pool(Client, Input, []).

-spec delete_user_pool(aws_client:aws_client(), delete_user_pool_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_user_pool_errors(), tuple()}.
delete_user_pool(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteUserPool">>, Input, Options).

%% @doc Deletes a user pool app client.
%%
%% After you delete an app client, users can no longer
%% sign in to the associated application.
-spec delete_user_pool_client(aws_client:aws_client(), delete_user_pool_client_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_user_pool_client_errors(), tuple()}.
delete_user_pool_client(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_user_pool_client(Client, Input, []).

-spec delete_user_pool_client(aws_client:aws_client(), delete_user_pool_client_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_user_pool_client_errors(), tuple()}.
delete_user_pool_client(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteUserPoolClient">>, Input, Options).

%% @doc Given a user pool ID and domain identifier, deletes a user pool
%% domain.
%%
%% After you
%% delete a user pool domain, your managed login pages and authorization
%% server are no
%% longer available.
-spec delete_user_pool_domain(aws_client:aws_client(), delete_user_pool_domain_request()) ->
    {ok, delete_user_pool_domain_response(), tuple()} |
    {error, any()} |
    {error, delete_user_pool_domain_errors(), tuple()}.
delete_user_pool_domain(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_user_pool_domain(Client, Input, []).

-spec delete_user_pool_domain(aws_client:aws_client(), delete_user_pool_domain_request(), proplists:proplist()) ->
    {ok, delete_user_pool_domain_response(), tuple()} |
    {error, any()} |
    {error, delete_user_pool_domain_errors(), tuple()}.
delete_user_pool_domain(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteUserPoolDomain">>, Input, Options).

%% @doc Deletes a registered passkey, or WebAuthn, authenticator for the
%% currently signed-in
%% user.
%%
%% Authorize this action with a signed-in user's access token. It must
%% include the scope `aws.cognito.signin.user.admin'.
%%
%% Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
%% policies in requests for this API operation. For
%% this operation, you can't use IAM credentials to authorize requests,
%% and you can't
%% grant IAM permissions in policies. For more information about
%% authorization models in
%% Amazon Cognito, see Using the Amazon Cognito user pools API and user pool
%% endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html.
-spec delete_web_authn_credential(aws_client:aws_client(), delete_web_authn_credential_request()) ->
    {ok, delete_web_authn_credential_response(), tuple()} |
    {error, any()} |
    {error, delete_web_authn_credential_errors(), tuple()}.
delete_web_authn_credential(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_web_authn_credential(Client, Input, []).

-spec delete_web_authn_credential(aws_client:aws_client(), delete_web_authn_credential_request(), proplists:proplist()) ->
    {ok, delete_web_authn_credential_response(), tuple()} |
    {error, any()} |
    {error, delete_web_authn_credential_errors(), tuple()}.
delete_web_authn_credential(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteWebAuthnCredential">>, Input, Options).

%% @doc Given a user pool ID and identity provider (IdP) name, returns
%% details about the
%% IdP.
-spec describe_identity_provider(aws_client:aws_client(), describe_identity_provider_request()) ->
    {ok, describe_identity_provider_response(), tuple()} |
    {error, any()} |
    {error, describe_identity_provider_errors(), tuple()}.
describe_identity_provider(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_identity_provider(Client, Input, []).

-spec describe_identity_provider(aws_client:aws_client(), describe_identity_provider_request(), proplists:proplist()) ->
    {ok, describe_identity_provider_response(), tuple()} |
    {error, any()} |
    {error, describe_identity_provider_errors(), tuple()}.
describe_identity_provider(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeIdentityProvider">>, Input, Options).

%% @doc Given the ID of a managed login branding style, returns detailed
%% information about the
%% style.
-spec describe_managed_login_branding(aws_client:aws_client(), describe_managed_login_branding_request()) ->
    {ok, describe_managed_login_branding_response(), tuple()} |
    {error, any()} |
    {error, describe_managed_login_branding_errors(), tuple()}.
describe_managed_login_branding(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_managed_login_branding(Client, Input, []).

-spec describe_managed_login_branding(aws_client:aws_client(), describe_managed_login_branding_request(), proplists:proplist()) ->
    {ok, describe_managed_login_branding_response(), tuple()} |
    {error, any()} |
    {error, describe_managed_login_branding_errors(), tuple()}.
describe_managed_login_branding(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeManagedLoginBranding">>, Input, Options).

%% @doc Given the ID of a user pool app client, returns detailed information
%% about the style
%% assigned to the app client.
-spec describe_managed_login_branding_by_client(aws_client:aws_client(), describe_managed_login_branding_by_client_request()) ->
    {ok, describe_managed_login_branding_by_client_response(), tuple()} |
    {error, any()} |
    {error, describe_managed_login_branding_by_client_errors(), tuple()}.
describe_managed_login_branding_by_client(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_managed_login_branding_by_client(Client, Input, []).

-spec describe_managed_login_branding_by_client(aws_client:aws_client(), describe_managed_login_branding_by_client_request(), proplists:proplist()) ->
    {ok, describe_managed_login_branding_by_client_response(), tuple()} |
    {error, any()} |
    {error, describe_managed_login_branding_by_client_errors(), tuple()}.
describe_managed_login_branding_by_client(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeManagedLoginBrandingByClient">>, Input, Options).

%% @doc Describes a resource server.
%%
%% For more information about resource servers, see Access control with
%% resource servers:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-define-resource-servers.html.
-spec describe_resource_server(aws_client:aws_client(), describe_resource_server_request()) ->
    {ok, describe_resource_server_response(), tuple()} |
    {error, any()} |
    {error, describe_resource_server_errors(), tuple()}.
describe_resource_server(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_resource_server(Client, Input, []).

-spec describe_resource_server(aws_client:aws_client(), describe_resource_server_request(), proplists:proplist()) ->
    {ok, describe_resource_server_response(), tuple()} |
    {error, any()} |
    {error, describe_resource_server_errors(), tuple()}.
describe_resource_server(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeResourceServer">>, Input, Options).

%% @doc Given an app client or user pool ID where threat protection is
%% configured, describes
%% the risk configuration.
%%
%% This operation returns details about adaptive authentication,
%% compromised credentials, and IP-address allow- and denylists. For more
%% information about
%% threat protection, see Threat protection:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pool-settings-threat-protection.html.
-spec describe_risk_configuration(aws_client:aws_client(), describe_risk_configuration_request()) ->
    {ok, describe_risk_configuration_response(), tuple()} |
    {error, any()} |
    {error, describe_risk_configuration_errors(), tuple()}.
describe_risk_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_risk_configuration(Client, Input, []).

-spec describe_risk_configuration(aws_client:aws_client(), describe_risk_configuration_request(), proplists:proplist()) ->
    {ok, describe_risk_configuration_response(), tuple()} |
    {error, any()} |
    {error, describe_risk_configuration_errors(), tuple()}.
describe_risk_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeRiskConfiguration">>, Input, Options).

%% @doc Describes a user import job.
%%
%% For more information about user CSV import, see Importing users from a CSV
%% file:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-using-import-tool.html.
-spec describe_user_import_job(aws_client:aws_client(), describe_user_import_job_request()) ->
    {ok, describe_user_import_job_response(), tuple()} |
    {error, any()} |
    {error, describe_user_import_job_errors(), tuple()}.
describe_user_import_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_user_import_job(Client, Input, []).

-spec describe_user_import_job(aws_client:aws_client(), describe_user_import_job_request(), proplists:proplist()) ->
    {ok, describe_user_import_job_response(), tuple()} |
    {error, any()} |
    {error, describe_user_import_job_errors(), tuple()}.
describe_user_import_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeUserImportJob">>, Input, Options).

%% @doc Given a user pool ID, returns configuration information.
%%
%% This operation is useful when
%% you want to inspect an existing user pool and programmatically replicate
%% the
%% configuration to another user pool.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For
%% this operation, you must use IAM credentials to authorize requests, and
%% you must
%% grant yourself the corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
-spec describe_user_pool(aws_client:aws_client(), describe_user_pool_request()) ->
    {ok, describe_user_pool_response(), tuple()} |
    {error, any()} |
    {error, describe_user_pool_errors(), tuple()}.
describe_user_pool(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_user_pool(Client, Input, []).

-spec describe_user_pool(aws_client:aws_client(), describe_user_pool_request(), proplists:proplist()) ->
    {ok, describe_user_pool_response(), tuple()} |
    {error, any()} |
    {error, describe_user_pool_errors(), tuple()}.
describe_user_pool(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeUserPool">>, Input, Options).

%% @doc Given an app client ID, returns configuration information.
%%
%% This operation is useful
%% when you want to inspect an existing app client and programmatically
%% replicate the
%% configuration to another app client. For more information about app
%% clients, see App clients:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-client-apps.html.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For
%% this operation, you must use IAM credentials to authorize requests, and
%% you must
%% grant yourself the corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
-spec describe_user_pool_client(aws_client:aws_client(), describe_user_pool_client_request()) ->
    {ok, describe_user_pool_client_response(), tuple()} |
    {error, any()} |
    {error, describe_user_pool_client_errors(), tuple()}.
describe_user_pool_client(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_user_pool_client(Client, Input, []).

-spec describe_user_pool_client(aws_client:aws_client(), describe_user_pool_client_request(), proplists:proplist()) ->
    {ok, describe_user_pool_client_response(), tuple()} |
    {error, any()} |
    {error, describe_user_pool_client_errors(), tuple()}.
describe_user_pool_client(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeUserPoolClient">>, Input, Options).

%% @doc Given a user pool domain name, returns information about the domain
%% configuration.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For
%% this operation, you must use IAM credentials to authorize requests, and
%% you must
%% grant yourself the corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
-spec describe_user_pool_domain(aws_client:aws_client(), describe_user_pool_domain_request()) ->
    {ok, describe_user_pool_domain_response(), tuple()} |
    {error, any()} |
    {error, describe_user_pool_domain_errors(), tuple()}.
describe_user_pool_domain(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_user_pool_domain(Client, Input, []).

-spec describe_user_pool_domain(aws_client:aws_client(), describe_user_pool_domain_request(), proplists:proplist()) ->
    {ok, describe_user_pool_domain_response(), tuple()} |
    {error, any()} |
    {error, describe_user_pool_domain_errors(), tuple()}.
describe_user_pool_domain(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeUserPoolDomain">>, Input, Options).

%% @doc Given a device key, deletes a remembered device as the currently
%% signed-in user.
%%
%% For
%% more information about device authentication, see Working with user
%% devices in your user pool:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html.
%%
%% Authorize this action with a signed-in user's access token. It must
%% include the scope `aws.cognito.signin.user.admin'.
%%
%% Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
%% policies in requests for this API operation. For
%% this operation, you can't use IAM credentials to authorize requests,
%% and you can't
%% grant IAM permissions in policies. For more information about
%% authorization models in
%% Amazon Cognito, see Using the Amazon Cognito user pools API and user pool
%% endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html.
-spec forget_device(aws_client:aws_client(), forget_device_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, forget_device_errors(), tuple()}.
forget_device(Client, Input)
  when is_map(Client), is_map(Input) ->
    forget_device(Client, Input, []).

-spec forget_device(aws_client:aws_client(), forget_device_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, forget_device_errors(), tuple()}.
forget_device(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ForgetDevice">>, Input, Options).

%% @doc Sends a password-reset confirmation code for the currently signed-in
%% user.
%%
%% For the `Username' parameter, you can use the username or user
%% alias.
%%
%% If neither a verified phone number nor a verified email exists, Amazon
%% Cognito responds with an
%% `InvalidParameterException' error . If your app client has a client
%% secret and you don't provide a `SECRET_HASH' parameter, this API
%% returns
%% `NotAuthorizedException'.
%%
%% Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
%% policies in requests for this API operation. For
%% this operation, you can't use IAM credentials to authorize requests,
%% and you can't
%% grant IAM permissions in policies. For more information about
%% authorization models in
%% Amazon Cognito, see Using the Amazon Cognito user pools API and user pool
%% endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html.
%%
%% This action might generate an SMS text message. Starting June 1, 2021, US
%% telecom carriers
%% require you to register an origination phone number before you can send
%% SMS messages
%% to US phone numbers. If you use SMS text messages in Amazon Cognito, you
%% must register a
%% phone number with Amazon Pinpoint:
%% https://console.aws.amazon.com/pinpoint/home/.
%% Amazon Cognito uses the registered number automatically. Otherwise, Amazon
%% Cognito users who must
%% receive SMS messages might not be able to sign up, activate their
%% accounts, or sign
%% in.
%%
%% If you have never used SMS text messages with Amazon Cognito or any other
%% Amazon Web Services service,
%% Amazon Simple Notification Service might place your account in the SMS
%% sandbox. In
%% sandbox
%% mode: https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html
%% , you can send messages only to verified phone
%% numbers. After you test your app while in the sandbox environment, you can
%% move out
%% of the sandbox and into production. For more information, see SMS message
%% settings for Amazon Cognito user pools:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html
%% in the Amazon Cognito
%% Developer Guide.
-spec forgot_password(aws_client:aws_client(), forgot_password_request()) ->
    {ok, forgot_password_response(), tuple()} |
    {error, any()} |
    {error, forgot_password_errors(), tuple()}.
forgot_password(Client, Input)
  when is_map(Client), is_map(Input) ->
    forgot_password(Client, Input, []).

-spec forgot_password(aws_client:aws_client(), forgot_password_request(), proplists:proplist()) ->
    {ok, forgot_password_response(), tuple()} |
    {error, any()} |
    {error, forgot_password_errors(), tuple()}.
forgot_password(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ForgotPassword">>, Input, Options).

%% @doc Given a user pool ID, generates a comma-separated value (CSV) list
%% populated with
%% available user attributes in the user pool.
%%
%% This list is the header for the CSV file
%% that determines the users in a user import job. Save the content of
%% `CSVHeader' in the response as a `.csv' file and populate it
%% with the usernames and attributes of users that you want to import. For
%% more information
%% about CSV user import, see Importing users from a CSV file:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-using-import-tool.html.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For
%% this operation, you must use IAM credentials to authorize requests, and
%% you must
%% grant yourself the corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
-spec get_csv_header(aws_client:aws_client(), get_csv_header_request()) ->
    {ok, get_csv_header_response(), tuple()} |
    {error, any()} |
    {error, get_csv_header_errors(), tuple()}.
get_csv_header(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_csv_header(Client, Input, []).

-spec get_csv_header(aws_client:aws_client(), get_csv_header_request(), proplists:proplist()) ->
    {ok, get_csv_header_response(), tuple()} |
    {error, any()} |
    {error, get_csv_header_errors(), tuple()}.
get_csv_header(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetCSVHeader">>, Input, Options).

%% @doc Given a device key, returns information about a remembered device for
%% the current
%% user.
%%
%% For more information about device authentication, see Working with user
%% devices in your user pool:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html.
%%
%% Authorize this action with a signed-in user's access token. It must
%% include the scope `aws.cognito.signin.user.admin'.
%%
%% Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
%% policies in requests for this API operation. For
%% this operation, you can't use IAM credentials to authorize requests,
%% and you can't
%% grant IAM permissions in policies. For more information about
%% authorization models in
%% Amazon Cognito, see Using the Amazon Cognito user pools API and user pool
%% endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html.
-spec get_device(aws_client:aws_client(), get_device_request()) ->
    {ok, get_device_response(), tuple()} |
    {error, any()} |
    {error, get_device_errors(), tuple()}.
get_device(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_device(Client, Input, []).

-spec get_device(aws_client:aws_client(), get_device_request(), proplists:proplist()) ->
    {ok, get_device_response(), tuple()} |
    {error, any()} |
    {error, get_device_errors(), tuple()}.
get_device(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDevice">>, Input, Options).

%% @doc Given a user pool ID and a group name, returns information about the
%% user
%% group.
%%
%% For more information about user pool groups, see Adding groups to a user
%% pool:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-user-groups.html.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For
%% this operation, you must use IAM credentials to authorize requests, and
%% you must
%% grant yourself the corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
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

%% @doc Given the identifier of an identity provider (IdP), for example
%% `examplecorp', returns information about the user pool configuration
%% for
%% that IdP.
%%
%% For more information about IdPs, see Third-party IdP sign-in:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-identity-federation.html.
-spec get_identity_provider_by_identifier(aws_client:aws_client(), get_identity_provider_by_identifier_request()) ->
    {ok, get_identity_provider_by_identifier_response(), tuple()} |
    {error, any()} |
    {error, get_identity_provider_by_identifier_errors(), tuple()}.
get_identity_provider_by_identifier(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_identity_provider_by_identifier(Client, Input, []).

-spec get_identity_provider_by_identifier(aws_client:aws_client(), get_identity_provider_by_identifier_request(), proplists:proplist()) ->
    {ok, get_identity_provider_by_identifier_response(), tuple()} |
    {error, any()} |
    {error, get_identity_provider_by_identifier_errors(), tuple()}.
get_identity_provider_by_identifier(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetIdentityProviderByIdentifier">>, Input, Options).

%% @doc Given a user pool ID, returns the logging configuration.
%%
%% User pools can export
%% message-delivery error and threat-protection activity logs to external
%% Amazon Web Services services. For more information, see Exporting user
%% pool logs:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/exporting-quotas-and-usage.html.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For
%% this operation, you must use IAM credentials to authorize requests, and
%% you must
%% grant yourself the corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
-spec get_log_delivery_configuration(aws_client:aws_client(), get_log_delivery_configuration_request()) ->
    {ok, get_log_delivery_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_log_delivery_configuration_errors(), tuple()}.
get_log_delivery_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_log_delivery_configuration(Client, Input, []).

-spec get_log_delivery_configuration(aws_client:aws_client(), get_log_delivery_configuration_request(), proplists:proplist()) ->
    {ok, get_log_delivery_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_log_delivery_configuration_errors(), tuple()}.
get_log_delivery_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetLogDeliveryConfiguration">>, Input, Options).

%% @doc Given a user pool ID, returns the signing certificate for SAML 2.0
%% federation.
%%
%% Issued certificates are valid for 10 years from the date of issue. Amazon
%% Cognito issues and
%% assigns a new signing certificate annually. This renewal process returns a
%% new value in
%% the response to `GetSigningCertificate', but doesn't invalidate
%% the original
%% certificate.
%%
%% For more information, see Signing SAML requests:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-SAML-signing-encryption.html#cognito-user-pools-SAML-signing.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For
%% this operation, you must use IAM credentials to authorize requests, and
%% you must
%% grant yourself the corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
-spec get_signing_certificate(aws_client:aws_client(), get_signing_certificate_request()) ->
    {ok, get_signing_certificate_response(), tuple()} |
    {error, any()} |
    {error, get_signing_certificate_errors(), tuple()}.
get_signing_certificate(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_signing_certificate(Client, Input, []).

-spec get_signing_certificate(aws_client:aws_client(), get_signing_certificate_request(), proplists:proplist()) ->
    {ok, get_signing_certificate_response(), tuple()} |
    {error, any()} |
    {error, get_signing_certificate_errors(), tuple()}.
get_signing_certificate(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSigningCertificate">>, Input, Options).

%% @doc Given a user pool ID or app client, returns information about classic
%% hosted UI
%% branding that you applied, if any.
%%
%% Returns user-pool level branding information if no
%% app client branding is applied, or if you don't specify an app client
%% ID. Returns
%% an empty object if you haven't applied hosted UI branding to either
%% the client or
%% the user pool. For more information, see Hosted UI (classic) branding:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/hosted-ui-classic-branding.html.
-spec get_ui_customization(aws_client:aws_client(), get_ui_customization_request()) ->
    {ok, get_ui_customization_response(), tuple()} |
    {error, any()} |
    {error, get_ui_customization_errors(), tuple()}.
get_ui_customization(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_ui_customization(Client, Input, []).

-spec get_ui_customization(aws_client:aws_client(), get_ui_customization_request(), proplists:proplist()) ->
    {ok, get_ui_customization_response(), tuple()} |
    {error, any()} |
    {error, get_ui_customization_errors(), tuple()}.
get_ui_customization(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetUICustomization">>, Input, Options).

%% @doc Gets user attributes and and MFA settings for the currently signed-in
%% user.
%%
%% Authorize this action with a signed-in user's access token. It must
%% include the scope `aws.cognito.signin.user.admin'.
%%
%% Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
%% policies in requests for this API operation. For
%% this operation, you can't use IAM credentials to authorize requests,
%% and you can't
%% grant IAM permissions in policies. For more information about
%% authorization models in
%% Amazon Cognito, see Using the Amazon Cognito user pools API and user pool
%% endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html.
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

%% @doc Given an attribute name, sends a user attribute verification code for
%% the specified
%% attribute name to the currently signed-in user.
%%
%% Authorize this action with a signed-in user's access token. It must
%% include the scope `aws.cognito.signin.user.admin'.
%%
%% Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
%% policies in requests for this API operation. For
%% this operation, you can't use IAM credentials to authorize requests,
%% and you can't
%% grant IAM permissions in policies. For more information about
%% authorization models in
%% Amazon Cognito, see Using the Amazon Cognito user pools API and user pool
%% endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html.
%%
%% This action might generate an SMS text message. Starting June 1, 2021, US
%% telecom carriers
%% require you to register an origination phone number before you can send
%% SMS messages
%% to US phone numbers. If you use SMS text messages in Amazon Cognito, you
%% must register a
%% phone number with Amazon Pinpoint:
%% https://console.aws.amazon.com/pinpoint/home/.
%% Amazon Cognito uses the registered number automatically. Otherwise, Amazon
%% Cognito users who must
%% receive SMS messages might not be able to sign up, activate their
%% accounts, or sign
%% in.
%%
%% If you have never used SMS text messages with Amazon Cognito or any other
%% Amazon Web Services service,
%% Amazon Simple Notification Service might place your account in the SMS
%% sandbox. In
%% sandbox
%% mode: https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html
%% , you can send messages only to verified phone
%% numbers. After you test your app while in the sandbox environment, you can
%% move out
%% of the sandbox and into production. For more information, see SMS message
%% settings for Amazon Cognito user pools:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html
%% in the Amazon Cognito
%% Developer Guide.
-spec get_user_attribute_verification_code(aws_client:aws_client(), get_user_attribute_verification_code_request()) ->
    {ok, get_user_attribute_verification_code_response(), tuple()} |
    {error, any()} |
    {error, get_user_attribute_verification_code_errors(), tuple()}.
get_user_attribute_verification_code(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_user_attribute_verification_code(Client, Input, []).

-spec get_user_attribute_verification_code(aws_client:aws_client(), get_user_attribute_verification_code_request(), proplists:proplist()) ->
    {ok, get_user_attribute_verification_code_response(), tuple()} |
    {error, any()} |
    {error, get_user_attribute_verification_code_errors(), tuple()}.
get_user_attribute_verification_code(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetUserAttributeVerificationCode">>, Input, Options).

%% @doc Lists the authentication options for the currently signed-in user.
%%
%% Returns the
%% following:
%%
%% The user's multi-factor authentication (MFA) preferences.
%%
%% The user's options for choice-based authentication with the
%% `USER_AUTH' flow.
%%
%% Authorize this action with a signed-in user's access token. It must
%% include the scope `aws.cognito.signin.user.admin'.
%%
%% Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
%% policies in requests for this API operation. For
%% this operation, you can't use IAM credentials to authorize requests,
%% and you can't
%% grant IAM permissions in policies. For more information about
%% authorization models in
%% Amazon Cognito, see Using the Amazon Cognito user pools API and user pool
%% endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html.
-spec get_user_auth_factors(aws_client:aws_client(), get_user_auth_factors_request()) ->
    {ok, get_user_auth_factors_response(), tuple()} |
    {error, any()} |
    {error, get_user_auth_factors_errors(), tuple()}.
get_user_auth_factors(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_user_auth_factors(Client, Input, []).

-spec get_user_auth_factors(aws_client:aws_client(), get_user_auth_factors_request(), proplists:proplist()) ->
    {ok, get_user_auth_factors_response(), tuple()} |
    {error, any()} |
    {error, get_user_auth_factors_errors(), tuple()}.
get_user_auth_factors(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetUserAuthFactors">>, Input, Options).

%% @doc Given a user pool ID, returns configuration for sign-in with WebAuthn
%% authenticators
%% and for multi-factor authentication (MFA).
%%
%% This operation describes the
%% following:
%%
%% The WebAuthn relying party (RP) ID and user-verification settings.
%%
%% The required, optional, or disabled state of MFA for all user pool
%% users.
%%
%% The message templates for email and SMS MFA.
%%
%% The enabled or disabled state of time-based one-time password (TOTP)
%% MFA.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For
%% this operation, you must use IAM credentials to authorize requests, and
%% you must
%% grant yourself the corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
-spec get_user_pool_mfa_config(aws_client:aws_client(), get_user_pool_mfa_config_request()) ->
    {ok, get_user_pool_mfa_config_response(), tuple()} |
    {error, any()} |
    {error, get_user_pool_mfa_config_errors(), tuple()}.
get_user_pool_mfa_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_user_pool_mfa_config(Client, Input, []).

-spec get_user_pool_mfa_config(aws_client:aws_client(), get_user_pool_mfa_config_request(), proplists:proplist()) ->
    {ok, get_user_pool_mfa_config_response(), tuple()} |
    {error, any()} |
    {error, get_user_pool_mfa_config_errors(), tuple()}.
get_user_pool_mfa_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetUserPoolMfaConfig">>, Input, Options).

%% @doc Invalidates the identity, access, and refresh tokens that Amazon
%% Cognito issued to a user.
%%
%% Call
%% this operation when your user signs out of your app. This results in the
%% following
%% behavior.
%%
%% Amazon Cognito no longer accepts token-authorized user operations
%% that you authorize with a signed-out user's access tokens. For more
%% information,
%% see Using the Amazon Cognito user pools API and user pool
%% endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html.
%%
%% Amazon Cognito returns an `Access Token has been revoked' error when
%% your
%% app attempts to authorize a user pools API request with a revoked access
%% token
%% that contains the scope `aws.cognito.signin.user.admin'.
%%
%% Amazon Cognito no longer accepts a signed-out user's ID token in a
%% GetId :
%% https://docs.aws.amazon.com/cognitoidentity/latest/APIReference/API_GetId.html
%% request to an identity pool with
%% `ServerSideTokenCheck' enabled for its user pool IdP
%% configuration in CognitoIdentityProvider:
%% https://docs.aws.amazon.com/cognitoidentity/latest/APIReference/API_CognitoIdentityProvider.html.
%%
%% Amazon Cognito no longer accepts a signed-out user's refresh tokens in
%% refresh
%% requests.
%%
%% Other requests might be valid until your user's token expires. This
%% operation
%% doesn't clear the managed login:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-managed-login.html
%% session cookie. To clear the session for
%% a user who signed in with managed login or the classic hosted UI, direct
%% their browser
%% session to the logout endpoint:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/logout-endpoint.html.
%%
%% Authorize this action with a signed-in user's access token. It must
%% include the scope `aws.cognito.signin.user.admin'.
%%
%% Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
%% policies in requests for this API operation. For
%% this operation, you can't use IAM credentials to authorize requests,
%% and you can't
%% grant IAM permissions in policies. For more information about
%% authorization models in
%% Amazon Cognito, see Using the Amazon Cognito user pools API and user pool
%% endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html.
-spec global_sign_out(aws_client:aws_client(), global_sign_out_request()) ->
    {ok, global_sign_out_response(), tuple()} |
    {error, any()} |
    {error, global_sign_out_errors(), tuple()}.
global_sign_out(Client, Input)
  when is_map(Client), is_map(Input) ->
    global_sign_out(Client, Input, []).

-spec global_sign_out(aws_client:aws_client(), global_sign_out_request(), proplists:proplist()) ->
    {ok, global_sign_out_response(), tuple()} |
    {error, any()} |
    {error, global_sign_out_errors(), tuple()}.
global_sign_out(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GlobalSignOut">>, Input, Options).

%% @doc Declares an authentication flow and initiates sign-in for a user in
%% the Amazon Cognito user
%% directory.
%%
%% Amazon Cognito might respond with an additional challenge or an
%% `AuthenticationResult' that contains the outcome of a successful
%% authentication. You can't sign in a user with a federated IdP with
%% `InitiateAuth'. For more information, see Authentication:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/authentication.html.
%%
%% Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
%% policies in requests for this API operation. For
%% this operation, you can't use IAM credentials to authorize requests,
%% and you can't
%% grant IAM permissions in policies. For more information about
%% authorization models in
%% Amazon Cognito, see Using the Amazon Cognito user pools API and user pool
%% endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html.
%%
%% This action might generate an SMS text message. Starting June 1, 2021, US
%% telecom carriers
%% require you to register an origination phone number before you can send
%% SMS messages
%% to US phone numbers. If you use SMS text messages in Amazon Cognito, you
%% must register a
%% phone number with Amazon Pinpoint:
%% https://console.aws.amazon.com/pinpoint/home/.
%% Amazon Cognito uses the registered number automatically. Otherwise, Amazon
%% Cognito users who must
%% receive SMS messages might not be able to sign up, activate their
%% accounts, or sign
%% in.
%%
%% If you have never used SMS text messages with Amazon Cognito or any other
%% Amazon Web Services service,
%% Amazon Simple Notification Service might place your account in the SMS
%% sandbox. In
%% sandbox
%% mode: https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html
%% , you can send messages only to verified phone
%% numbers. After you test your app while in the sandbox environment, you can
%% move out
%% of the sandbox and into production. For more information, see SMS message
%% settings for Amazon Cognito user pools:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html
%% in the Amazon Cognito
%% Developer Guide.
-spec initiate_auth(aws_client:aws_client(), initiate_auth_request()) ->
    {ok, initiate_auth_response(), tuple()} |
    {error, any()} |
    {error, initiate_auth_errors(), tuple()}.
initiate_auth(Client, Input)
  when is_map(Client), is_map(Input) ->
    initiate_auth(Client, Input, []).

-spec initiate_auth(aws_client:aws_client(), initiate_auth_request(), proplists:proplist()) ->
    {ok, initiate_auth_response(), tuple()} |
    {error, any()} |
    {error, initiate_auth_errors(), tuple()}.
initiate_auth(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"InitiateAuth">>, Input, Options).

%% @doc Lists the devices that Amazon Cognito has registered to the currently
%% signed-in user.
%%
%% For more
%% information about device authentication, see Working with user devices in
%% your user pool:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html.
%%
%% Authorize this action with a signed-in user's access token. It must
%% include the scope `aws.cognito.signin.user.admin'.
%%
%% Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
%% policies in requests for this API operation. For
%% this operation, you can't use IAM credentials to authorize requests,
%% and you can't
%% grant IAM permissions in policies. For more information about
%% authorization models in
%% Amazon Cognito, see Using the Amazon Cognito user pools API and user pool
%% endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html.
-spec list_devices(aws_client:aws_client(), list_devices_request()) ->
    {ok, list_devices_response(), tuple()} |
    {error, any()} |
    {error, list_devices_errors(), tuple()}.
list_devices(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_devices(Client, Input, []).

-spec list_devices(aws_client:aws_client(), list_devices_request(), proplists:proplist()) ->
    {ok, list_devices_response(), tuple()} |
    {error, any()} |
    {error, list_devices_errors(), tuple()}.
list_devices(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDevices">>, Input, Options).

%% @doc Given a user pool ID, returns user pool groups and their details.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For
%% this operation, you must use IAM credentials to authorize requests, and
%% you must
%% grant yourself the corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
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

%% @doc Given a user pool ID, returns information about configured identity
%% providers (IdPs).
%%
%% For more information about IdPs, see Third-party IdP sign-in:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-identity-federation.html.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For
%% this operation, you must use IAM credentials to authorize requests, and
%% you must
%% grant yourself the corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
-spec list_identity_providers(aws_client:aws_client(), list_identity_providers_request()) ->
    {ok, list_identity_providers_response(), tuple()} |
    {error, any()} |
    {error, list_identity_providers_errors(), tuple()}.
list_identity_providers(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_identity_providers(Client, Input, []).

-spec list_identity_providers(aws_client:aws_client(), list_identity_providers_request(), proplists:proplist()) ->
    {ok, list_identity_providers_response(), tuple()} |
    {error, any()} |
    {error, list_identity_providers_errors(), tuple()}.
list_identity_providers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListIdentityProviders">>, Input, Options).

%% @doc Given a user pool ID, returns all resource servers and their details.
%%
%% For more
%% information about resource servers, see Access control with resource
%% servers:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-define-resource-servers.html.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For
%% this operation, you must use IAM credentials to authorize requests, and
%% you must
%% grant yourself the corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
-spec list_resource_servers(aws_client:aws_client(), list_resource_servers_request()) ->
    {ok, list_resource_servers_response(), tuple()} |
    {error, any()} |
    {error, list_resource_servers_errors(), tuple()}.
list_resource_servers(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_resource_servers(Client, Input, []).

-spec list_resource_servers(aws_client:aws_client(), list_resource_servers_request(), proplists:proplist()) ->
    {ok, list_resource_servers_response(), tuple()} |
    {error, any()} |
    {error, list_resource_servers_errors(), tuple()}.
list_resource_servers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListResourceServers">>, Input, Options).

%% @doc Lists the tags that are assigned to an Amazon Cognito user pool.
%%
%% For more information, see
%% Tagging
%% resources:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/tagging.html.
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

%% @doc Given a user pool ID, returns user import jobs and their details.
%%
%% Import jobs are
%% retained in user pool configuration so that you can stage, stop, start,
%% review, and
%% delete them. For more information about user import, see Importing users
%% from a CSV file:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-using-import-tool.html.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For
%% this operation, you must use IAM credentials to authorize requests, and
%% you must
%% grant yourself the corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
-spec list_user_import_jobs(aws_client:aws_client(), list_user_import_jobs_request()) ->
    {ok, list_user_import_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_user_import_jobs_errors(), tuple()}.
list_user_import_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_user_import_jobs(Client, Input, []).

-spec list_user_import_jobs(aws_client:aws_client(), list_user_import_jobs_request(), proplists:proplist()) ->
    {ok, list_user_import_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_user_import_jobs_errors(), tuple()}.
list_user_import_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListUserImportJobs">>, Input, Options).

%% @doc Given a user pool ID, lists app clients.
%%
%% App clients are sets of rules for the access
%% that you want a user pool to grant to one application. For more
%% information, see App clients:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-client-apps.html.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For
%% this operation, you must use IAM credentials to authorize requests, and
%% you must
%% grant yourself the corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
-spec list_user_pool_clients(aws_client:aws_client(), list_user_pool_clients_request()) ->
    {ok, list_user_pool_clients_response(), tuple()} |
    {error, any()} |
    {error, list_user_pool_clients_errors(), tuple()}.
list_user_pool_clients(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_user_pool_clients(Client, Input, []).

-spec list_user_pool_clients(aws_client:aws_client(), list_user_pool_clients_request(), proplists:proplist()) ->
    {ok, list_user_pool_clients_response(), tuple()} |
    {error, any()} |
    {error, list_user_pool_clients_errors(), tuple()}.
list_user_pool_clients(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListUserPoolClients">>, Input, Options).

%% @doc Lists user pools and their details in the current Amazon Web Services
%% account.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For
%% this operation, you must use IAM credentials to authorize requests, and
%% you must
%% grant yourself the corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
-spec list_user_pools(aws_client:aws_client(), list_user_pools_request()) ->
    {ok, list_user_pools_response(), tuple()} |
    {error, any()} |
    {error, list_user_pools_errors(), tuple()}.
list_user_pools(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_user_pools(Client, Input, []).

-spec list_user_pools(aws_client:aws_client(), list_user_pools_request(), proplists:proplist()) ->
    {ok, list_user_pools_response(), tuple()} |
    {error, any()} |
    {error, list_user_pools_errors(), tuple()}.
list_user_pools(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListUserPools">>, Input, Options).

%% @doc Given a user pool ID, returns a list of users and their basic details
%% in a user
%% pool.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For
%% this operation, you must use IAM credentials to authorize requests, and
%% you must
%% grant yourself the corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
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

%% @doc Given a user pool ID and a group name, returns a list of users in the
%% group.
%%
%% For more
%% information about user pool groups, see Adding groups to a user pool:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-user-groups.html.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For
%% this operation, you must use IAM credentials to authorize requests, and
%% you must
%% grant yourself the corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
-spec list_users_in_group(aws_client:aws_client(), list_users_in_group_request()) ->
    {ok, list_users_in_group_response(), tuple()} |
    {error, any()} |
    {error, list_users_in_group_errors(), tuple()}.
list_users_in_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_users_in_group(Client, Input, []).

-spec list_users_in_group(aws_client:aws_client(), list_users_in_group_request(), proplists:proplist()) ->
    {ok, list_users_in_group_response(), tuple()} |
    {error, any()} |
    {error, list_users_in_group_errors(), tuple()}.
list_users_in_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListUsersInGroup">>, Input, Options).

%% @doc Generates a list of the currently signed-in user's registered
%% passkey, or
%% WebAuthn, credentials.
%%
%% Authorize this action with a signed-in user's access token. It must
%% include the scope `aws.cognito.signin.user.admin'.
%%
%% Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
%% policies in requests for this API operation. For
%% this operation, you can't use IAM credentials to authorize requests,
%% and you can't
%% grant IAM permissions in policies. For more information about
%% authorization models in
%% Amazon Cognito, see Using the Amazon Cognito user pools API and user pool
%% endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html.
-spec list_web_authn_credentials(aws_client:aws_client(), list_web_authn_credentials_request()) ->
    {ok, list_web_authn_credentials_response(), tuple()} |
    {error, any()} |
    {error, list_web_authn_credentials_errors(), tuple()}.
list_web_authn_credentials(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_web_authn_credentials(Client, Input, []).

-spec list_web_authn_credentials(aws_client:aws_client(), list_web_authn_credentials_request(), proplists:proplist()) ->
    {ok, list_web_authn_credentials_response(), tuple()} |
    {error, any()} |
    {error, list_web_authn_credentials_errors(), tuple()}.
list_web_authn_credentials(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListWebAuthnCredentials">>, Input, Options).

%% @doc Resends the code that confirms a new account for a user who has
%% signed up in your user
%% pool.
%%
%% Amazon Cognito sends confirmation codes to the user attribute in the
%% `AutoVerifiedAttributes' property of your user pool. When you prompt
%% new
%% users for the confirmation code, include a &quot;Resend code&quot; option
%% that generates a call to
%% this API operation.
%%
%% Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
%% policies in requests for this API operation. For
%% this operation, you can't use IAM credentials to authorize requests,
%% and you can't
%% grant IAM permissions in policies. For more information about
%% authorization models in
%% Amazon Cognito, see Using the Amazon Cognito user pools API and user pool
%% endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html.
%%
%% This action might generate an SMS text message. Starting June 1, 2021, US
%% telecom carriers
%% require you to register an origination phone number before you can send
%% SMS messages
%% to US phone numbers. If you use SMS text messages in Amazon Cognito, you
%% must register a
%% phone number with Amazon Pinpoint:
%% https://console.aws.amazon.com/pinpoint/home/.
%% Amazon Cognito uses the registered number automatically. Otherwise, Amazon
%% Cognito users who must
%% receive SMS messages might not be able to sign up, activate their
%% accounts, or sign
%% in.
%%
%% If you have never used SMS text messages with Amazon Cognito or any other
%% Amazon Web Services service,
%% Amazon Simple Notification Service might place your account in the SMS
%% sandbox. In
%% sandbox
%% mode: https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html
%% , you can send messages only to verified phone
%% numbers. After you test your app while in the sandbox environment, you can
%% move out
%% of the sandbox and into production. For more information, see SMS message
%% settings for Amazon Cognito user pools:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html
%% in the Amazon Cognito
%% Developer Guide.
-spec resend_confirmation_code(aws_client:aws_client(), resend_confirmation_code_request()) ->
    {ok, resend_confirmation_code_response(), tuple()} |
    {error, any()} |
    {error, resend_confirmation_code_errors(), tuple()}.
resend_confirmation_code(Client, Input)
  when is_map(Client), is_map(Input) ->
    resend_confirmation_code(Client, Input, []).

-spec resend_confirmation_code(aws_client:aws_client(), resend_confirmation_code_request(), proplists:proplist()) ->
    {ok, resend_confirmation_code_response(), tuple()} |
    {error, any()} |
    {error, resend_confirmation_code_errors(), tuple()}.
resend_confirmation_code(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ResendConfirmationCode">>, Input, Options).

%% @doc Some API operations in a user pool generate a challenge, like a
%% prompt for an MFA
%% code, for device authentication that bypasses MFA, or for a custom
%% authentication
%% challenge.
%%
%% A `RespondToAuthChallenge' API request provides the answer to that
%% challenge, like a code or a secure remote password (SRP). The parameters
%% of a response
%% to an authentication challenge vary with the type of challenge.
%%
%% For more information about custom authentication challenges, see Custom
%% authentication challenge Lambda triggers:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-lambda-challenge.html.
%%
%% Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
%% policies in requests for this API operation. For
%% this operation, you can't use IAM credentials to authorize requests,
%% and you can't
%% grant IAM permissions in policies. For more information about
%% authorization models in
%% Amazon Cognito, see Using the Amazon Cognito user pools API and user pool
%% endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html.
%%
%% This action might generate an SMS text message. Starting June 1, 2021, US
%% telecom carriers
%% require you to register an origination phone number before you can send
%% SMS messages
%% to US phone numbers. If you use SMS text messages in Amazon Cognito, you
%% must register a
%% phone number with Amazon Pinpoint:
%% https://console.aws.amazon.com/pinpoint/home/.
%% Amazon Cognito uses the registered number automatically. Otherwise, Amazon
%% Cognito users who must
%% receive SMS messages might not be able to sign up, activate their
%% accounts, or sign
%% in.
%%
%% If you have never used SMS text messages with Amazon Cognito or any other
%% Amazon Web Services service,
%% Amazon Simple Notification Service might place your account in the SMS
%% sandbox. In
%% sandbox
%% mode: https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html
%% , you can send messages only to verified phone
%% numbers. After you test your app while in the sandbox environment, you can
%% move out
%% of the sandbox and into production. For more information, see SMS message
%% settings for Amazon Cognito user pools:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html
%% in the Amazon Cognito
%% Developer Guide.
-spec respond_to_auth_challenge(aws_client:aws_client(), respond_to_auth_challenge_request()) ->
    {ok, respond_to_auth_challenge_response(), tuple()} |
    {error, any()} |
    {error, respond_to_auth_challenge_errors(), tuple()}.
respond_to_auth_challenge(Client, Input)
  when is_map(Client), is_map(Input) ->
    respond_to_auth_challenge(Client, Input, []).

-spec respond_to_auth_challenge(aws_client:aws_client(), respond_to_auth_challenge_request(), proplists:proplist()) ->
    {ok, respond_to_auth_challenge_response(), tuple()} |
    {error, any()} |
    {error, respond_to_auth_challenge_errors(), tuple()}.
respond_to_auth_challenge(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RespondToAuthChallenge">>, Input, Options).

%% @doc Revokes all of the access tokens generated by, and at the same time
%% as, the specified
%% refresh token.
%%
%% After a token is revoked, you can't use the revoked token to access
%% Amazon Cognito
%% user APIs, or to authorize access to your resource server.
%%
%% Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
%% policies in requests for this API operation. For
%% this operation, you can't use IAM credentials to authorize requests,
%% and you can't
%% grant IAM permissions in policies. For more information about
%% authorization models in
%% Amazon Cognito, see Using the Amazon Cognito user pools API and user pool
%% endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html.
-spec revoke_token(aws_client:aws_client(), revoke_token_request()) ->
    {ok, revoke_token_response(), tuple()} |
    {error, any()} |
    {error, revoke_token_errors(), tuple()}.
revoke_token(Client, Input)
  when is_map(Client), is_map(Input) ->
    revoke_token(Client, Input, []).

-spec revoke_token(aws_client:aws_client(), revoke_token_request(), proplists:proplist()) ->
    {ok, revoke_token_response(), tuple()} |
    {error, any()} |
    {error, revoke_token_errors(), tuple()}.
revoke_token(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RevokeToken">>, Input, Options).

%% @doc Sets up or modifies the logging configuration of a user pool.
%%
%% User pools can export
%% user notification logs and, when threat protection is active,
%% user-activity logs. For
%% more information, see Exporting user
%% pool logs: cognito/latest/developerguide/exporting-quotas-and-usage.html.
-spec set_log_delivery_configuration(aws_client:aws_client(), set_log_delivery_configuration_request()) ->
    {ok, set_log_delivery_configuration_response(), tuple()} |
    {error, any()} |
    {error, set_log_delivery_configuration_errors(), tuple()}.
set_log_delivery_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_log_delivery_configuration(Client, Input, []).

-spec set_log_delivery_configuration(aws_client:aws_client(), set_log_delivery_configuration_request(), proplists:proplist()) ->
    {ok, set_log_delivery_configuration_response(), tuple()} |
    {error, any()} |
    {error, set_log_delivery_configuration_errors(), tuple()}.
set_log_delivery_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetLogDeliveryConfiguration">>, Input, Options).

%% @doc Configures threat protection for a user pool or app client.
%%
%% Sets configuration for the
%% following.
%%
%% Responses to risks with adaptive authentication
%%
%% Responses to vulnerable passwords with compromised-credentials
%% detection
%%
%% Notifications to users who have had risky activity detected
%%
%% IP-address denylist and allowlist
%%
%% To set the risk configuration for the user pool to defaults, send this
%% request with
%% only the `UserPoolId' parameter. To reset the threat protection
%% settings of
%% an app client to be inherited from the user pool, send `UserPoolId'
%% and
%% `ClientId' parameters only. To change threat protection to audit-only
%% or
%% off, update the value of `UserPoolAddOns' in an `UpdateUserPool'
%% request. To activate this setting, your user pool must be on the
%% Plus tier:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/feature-plans-features-plus.html.
-spec set_risk_configuration(aws_client:aws_client(), set_risk_configuration_request()) ->
    {ok, set_risk_configuration_response(), tuple()} |
    {error, any()} |
    {error, set_risk_configuration_errors(), tuple()}.
set_risk_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_risk_configuration(Client, Input, []).

-spec set_risk_configuration(aws_client:aws_client(), set_risk_configuration_request(), proplists:proplist()) ->
    {ok, set_risk_configuration_response(), tuple()} |
    {error, any()} |
    {error, set_risk_configuration_errors(), tuple()}.
set_risk_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetRiskConfiguration">>, Input, Options).

%% @doc Configures UI branding settings for domains with the hosted UI
%% (classic) branding
%% version.
%%
%% Your user pool must have a domain. Configure a domain with .
%%
%% Set the default configuration for all clients with a `ClientId' of
%% `ALL'. When the `ClientId' value is an app client ID, the
%% settings you pass in this request apply to that app client and override
%% the default
%% `ALL' configuration.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For
%% this operation, you must use IAM credentials to authorize requests, and
%% you must
%% grant yourself the corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
-spec set_ui_customization(aws_client:aws_client(), set_ui_customization_request()) ->
    {ok, set_ui_customization_response(), tuple()} |
    {error, any()} |
    {error, set_ui_customization_errors(), tuple()}.
set_ui_customization(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_ui_customization(Client, Input, []).

-spec set_ui_customization(aws_client:aws_client(), set_ui_customization_request(), proplists:proplist()) ->
    {ok, set_ui_customization_response(), tuple()} |
    {error, any()} |
    {error, set_ui_customization_errors(), tuple()}.
set_ui_customization(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetUICustomization">>, Input, Options).

%% @doc Set the user's multi-factor authentication (MFA) method
%% preference, including which
%% MFA factors are activated and if any are preferred.
%%
%% Only one factor can be set as
%% preferred. The preferred MFA factor will be used to authenticate a user if
%% multiple
%% factors are activated. If multiple options are activated and no preference
%% is set, a
%% challenge to choose an MFA option will be returned during sign-in. If an
%% MFA type is
%% activated for a user, the user will be prompted for MFA during all sign-in
%% attempts
%% unless device tracking is turned on and the device has been trusted. If
%% you want MFA to
%% be applied selectively based on the assessed risk level of sign-in
%% attempts, deactivate
%% MFA for users and turn on Adaptive Authentication for the user pool.
%%
%% Authorize this action with a signed-in user's access token. It must
%% include the scope `aws.cognito.signin.user.admin'.
%%
%% Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
%% policies in requests for this API operation. For
%% this operation, you can't use IAM credentials to authorize requests,
%% and you can't
%% grant IAM permissions in policies. For more information about
%% authorization models in
%% Amazon Cognito, see Using the Amazon Cognito user pools API and user pool
%% endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html.
-spec set_user_mfa_preference(aws_client:aws_client(), set_user_mfa_preference_request()) ->
    {ok, set_user_mfa_preference_response(), tuple()} |
    {error, any()} |
    {error, set_user_mfa_preference_errors(), tuple()}.
set_user_mfa_preference(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_user_mfa_preference(Client, Input, []).

-spec set_user_mfa_preference(aws_client:aws_client(), set_user_mfa_preference_request(), proplists:proplist()) ->
    {ok, set_user_mfa_preference_response(), tuple()} |
    {error, any()} |
    {error, set_user_mfa_preference_errors(), tuple()}.
set_user_mfa_preference(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetUserMFAPreference">>, Input, Options).

%% @doc Sets user pool multi-factor authentication (MFA) and passkey
%% configuration.
%%
%% For more
%% information about user pool MFA, see Adding MFA:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-mfa.html.
%% For more information about WebAuthn passkeys see Authentication flows:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-authentication-flow-methods.html#amazon-cognito-user-pools-authentication-flow-methods-passkey.
%%
%% This action might generate an SMS text message. Starting June 1, 2021, US
%% telecom carriers
%% require you to register an origination phone number before you can send
%% SMS messages
%% to US phone numbers. If you use SMS text messages in Amazon Cognito, you
%% must register a
%% phone number with Amazon Pinpoint:
%% https://console.aws.amazon.com/pinpoint/home/.
%% Amazon Cognito uses the registered number automatically. Otherwise, Amazon
%% Cognito users who must
%% receive SMS messages might not be able to sign up, activate their
%% accounts, or sign
%% in.
%%
%% If you have never used SMS text messages with Amazon Cognito or any other
%% Amazon Web Services service,
%% Amazon Simple Notification Service might place your account in the SMS
%% sandbox. In
%% sandbox
%% mode: https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html
%% , you can send messages only to verified phone
%% numbers. After you test your app while in the sandbox environment, you can
%% move out
%% of the sandbox and into production. For more information, see SMS message
%% settings for Amazon Cognito user pools:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html
%% in the Amazon Cognito
%% Developer Guide.
-spec set_user_pool_mfa_config(aws_client:aws_client(), set_user_pool_mfa_config_request()) ->
    {ok, set_user_pool_mfa_config_response(), tuple()} |
    {error, any()} |
    {error, set_user_pool_mfa_config_errors(), tuple()}.
set_user_pool_mfa_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_user_pool_mfa_config(Client, Input, []).

-spec set_user_pool_mfa_config(aws_client:aws_client(), set_user_pool_mfa_config_request(), proplists:proplist()) ->
    {ok, set_user_pool_mfa_config_response(), tuple()} |
    {error, any()} |
    {error, set_user_pool_mfa_config_errors(), tuple()}.
set_user_pool_mfa_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetUserPoolMfaConfig">>, Input, Options).

%% @doc
%% This action is no longer supported.
%%
%% You can use it to configure
%% only SMS MFA. You can't use it to configure time-based one-time
%% password (TOTP) software
%% token or email MFA.
%%
%% Authorize this action with a signed-in user's access token. It must
%% include the scope `aws.cognito.signin.user.admin'.
%%
%% Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
%% policies in requests for this API operation. For
%% this operation, you can't use IAM credentials to authorize requests,
%% and you can't
%% grant IAM permissions in policies. For more information about
%% authorization models in
%% Amazon Cognito, see Using the Amazon Cognito user pools API and user pool
%% endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html.
-spec set_user_settings(aws_client:aws_client(), set_user_settings_request()) ->
    {ok, set_user_settings_response(), tuple()} |
    {error, any()} |
    {error, set_user_settings_errors(), tuple()}.
set_user_settings(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_user_settings(Client, Input, []).

-spec set_user_settings(aws_client:aws_client(), set_user_settings_request(), proplists:proplist()) ->
    {ok, set_user_settings_response(), tuple()} |
    {error, any()} |
    {error, set_user_settings_errors(), tuple()}.
set_user_settings(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetUserSettings">>, Input, Options).

%% @doc Registers a user with an app client and requests a user name,
%% password, and user
%% attributes in the user pool.
%%
%% Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
%% policies in requests for this API operation. For
%% this operation, you can't use IAM credentials to authorize requests,
%% and you can't
%% grant IAM permissions in policies. For more information about
%% authorization models in
%% Amazon Cognito, see Using the Amazon Cognito user pools API and user pool
%% endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html.
%%
%% This action might generate an SMS text message. Starting June 1, 2021, US
%% telecom carriers
%% require you to register an origination phone number before you can send
%% SMS messages
%% to US phone numbers. If you use SMS text messages in Amazon Cognito, you
%% must register a
%% phone number with Amazon Pinpoint:
%% https://console.aws.amazon.com/pinpoint/home/.
%% Amazon Cognito uses the registered number automatically. Otherwise, Amazon
%% Cognito users who must
%% receive SMS messages might not be able to sign up, activate their
%% accounts, or sign
%% in.
%%
%% If you have never used SMS text messages with Amazon Cognito or any other
%% Amazon Web Services service,
%% Amazon Simple Notification Service might place your account in the SMS
%% sandbox. In
%% sandbox
%% mode: https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html
%% , you can send messages only to verified phone
%% numbers. After you test your app while in the sandbox environment, you can
%% move out
%% of the sandbox and into production. For more information, see SMS message
%% settings for Amazon Cognito user pools:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html
%% in the Amazon Cognito
%% Developer Guide.
%%
%% You might receive a `LimitExceeded' exception in response to this
%% request
%% if you have exceeded a rate quota for email or SMS messages, and if your
%% user pool
%% automatically verifies email addresses or phone numbers. When you get this
%% exception in
%% the response, the user is successfully created and is in an
%% `UNCONFIRMED'
%% state.
-spec sign_up(aws_client:aws_client(), sign_up_request()) ->
    {ok, sign_up_response(), tuple()} |
    {error, any()} |
    {error, sign_up_errors(), tuple()}.
sign_up(Client, Input)
  when is_map(Client), is_map(Input) ->
    sign_up(Client, Input, []).

-spec sign_up(aws_client:aws_client(), sign_up_request(), proplists:proplist()) ->
    {ok, sign_up_response(), tuple()} |
    {error, any()} |
    {error, sign_up_errors(), tuple()}.
sign_up(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SignUp">>, Input, Options).

%% @doc Instructs your user pool to start importing users from a CSV file
%% that contains their
%% usernames and attributes.
%%
%% For more information about importing users from a CSV file,
%% see Importing users from a CSV file:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-using-import-tool.html.
-spec start_user_import_job(aws_client:aws_client(), start_user_import_job_request()) ->
    {ok, start_user_import_job_response(), tuple()} |
    {error, any()} |
    {error, start_user_import_job_errors(), tuple()}.
start_user_import_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_user_import_job(Client, Input, []).

-spec start_user_import_job(aws_client:aws_client(), start_user_import_job_request(), proplists:proplist()) ->
    {ok, start_user_import_job_response(), tuple()} |
    {error, any()} |
    {error, start_user_import_job_errors(), tuple()}.
start_user_import_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartUserImportJob">>, Input, Options).

%% @doc Requests credential creation options from your user pool for the
%% currently signed-in
%% user.
%%
%% Returns information about the user pool, the user profile, and
%% authentication
%% requirements. Users must provide this information in their request to
%% enroll your
%% application with their passkey provider.
%%
%% Authorize this action with a signed-in user's access token. It must
%% include the scope `aws.cognito.signin.user.admin'.
-spec start_web_authn_registration(aws_client:aws_client(), start_web_authn_registration_request()) ->
    {ok, start_web_authn_registration_response(), tuple()} |
    {error, any()} |
    {error, start_web_authn_registration_errors(), tuple()}.
start_web_authn_registration(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_web_authn_registration(Client, Input, []).

-spec start_web_authn_registration(aws_client:aws_client(), start_web_authn_registration_request(), proplists:proplist()) ->
    {ok, start_web_authn_registration_response(), tuple()} |
    {error, any()} |
    {error, start_web_authn_registration_errors(), tuple()}.
start_web_authn_registration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartWebAuthnRegistration">>, Input, Options).

%% @doc Instructs your user pool to stop a running job that's importing
%% users from a CSV
%% file that contains their usernames and attributes.
%%
%% For more information about importing
%% users from a CSV file, see Importing users from a CSV file:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-using-import-tool.html.
-spec stop_user_import_job(aws_client:aws_client(), stop_user_import_job_request()) ->
    {ok, stop_user_import_job_response(), tuple()} |
    {error, any()} |
    {error, stop_user_import_job_errors(), tuple()}.
stop_user_import_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_user_import_job(Client, Input, []).

-spec stop_user_import_job(aws_client:aws_client(), stop_user_import_job_request(), proplists:proplist()) ->
    {ok, stop_user_import_job_response(), tuple()} |
    {error, any()} |
    {error, stop_user_import_job_errors(), tuple()}.
stop_user_import_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopUserImportJob">>, Input, Options).

%% @doc Assigns a set of tags to an Amazon Cognito user pool.
%%
%% A tag is a label that you can use to
%% categorize and manage user pools in different ways, such as by purpose,
%% owner,
%% environment, or other criteria.
%%
%% Each tag consists of a key and value, both of which you define. A key is a
%% general
%% category for more specific values. For example, if you have two versions
%% of a user pool,
%% one for testing and another for production, you might assign an
%% `Environment'
%% tag key to both user pools. The value of this key might be `Test' for
%% one
%% user pool, and `Production' for the other.
%%
%% Tags are useful for cost tracking and access control. You can activate
%% your tags so
%% that they appear on the Billing and Cost Management console, where you can
%% track the
%% costs associated with your user pools. In an Identity and Access
%% Management policy, you can constrain
%% permissions for user pools based on specific tags or tag values.
%%
%% You can use this action up to 5 times per second, per account. A user pool
%% can have as
%% many as 50 tags.
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

%% @doc Given tag IDs that you previously assigned to a user pool, removes
%% them.
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

%% @doc Provides the feedback for an authentication event generated by threat
%% protection
%% features.
%%
%% The user's response indicates that you think that the event either was
%% from a
%% valid user or was an unwanted authentication attempt. This feedback
%% improves the risk
%% evaluation decision for the user pool as part of Amazon Cognito threat
%% protection.
%% To activate this setting, your user pool must be on the
%% Plus tier:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/feature-plans-features-plus.html.
%%
%% This operation requires a `FeedbackToken' that Amazon Cognito
%% generates and adds to
%% notification emails when users have potentially suspicious authentication
%% events. Users
%% invoke this operation when they select the link that corresponds to
%% `{one-click-link-valid}' or `{one-click-link-invalid}' in your
%% notification template. Because `FeedbackToken' is a required
%% parameter, you
%% can' make requests to `UpdateAuthEventFeedback' without the
%% contents of
%% the notification email message.
%%
%% Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
%% policies in requests for this API operation. For
%% this operation, you can't use IAM credentials to authorize requests,
%% and you can't
%% grant IAM permissions in policies. For more information about
%% authorization models in
%% Amazon Cognito, see Using the Amazon Cognito user pools API and user pool
%% endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html.
-spec update_auth_event_feedback(aws_client:aws_client(), update_auth_event_feedback_request()) ->
    {ok, update_auth_event_feedback_response(), tuple()} |
    {error, any()} |
    {error, update_auth_event_feedback_errors(), tuple()}.
update_auth_event_feedback(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_auth_event_feedback(Client, Input, []).

-spec update_auth_event_feedback(aws_client:aws_client(), update_auth_event_feedback_request(), proplists:proplist()) ->
    {ok, update_auth_event_feedback_response(), tuple()} |
    {error, any()} |
    {error, update_auth_event_feedback_errors(), tuple()}.
update_auth_event_feedback(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateAuthEventFeedback">>, Input, Options).

%% @doc Updates the status of a the currently signed-in user's device so
%% that it is
%% marked as remembered or not remembered for the purpose of device
%% authentication.
%%
%% Device
%% authentication is a &quot;remember me&quot; mechanism that silently
%% completes sign-in from trusted
%% devices with a device key instead of a user-provided MFA code. This
%% operation changes
%% the status of a device without deleting it, so you can enable it again
%% later. For more
%% information about device authentication, see Working with devices:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html.
%%
%% Authorize this action with a signed-in user's access token. It must
%% include the scope `aws.cognito.signin.user.admin'.
%%
%% Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
%% policies in requests for this API operation. For
%% this operation, you can't use IAM credentials to authorize requests,
%% and you can't
%% grant IAM permissions in policies. For more information about
%% authorization models in
%% Amazon Cognito, see Using the Amazon Cognito user pools API and user pool
%% endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html.
-spec update_device_status(aws_client:aws_client(), update_device_status_request()) ->
    {ok, update_device_status_response(), tuple()} |
    {error, any()} |
    {error, update_device_status_errors(), tuple()}.
update_device_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_device_status(Client, Input, []).

-spec update_device_status(aws_client:aws_client(), update_device_status_request(), proplists:proplist()) ->
    {ok, update_device_status_response(), tuple()} |
    {error, any()} |
    {error, update_device_status_errors(), tuple()}.
update_device_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateDeviceStatus">>, Input, Options).

%% @doc Given the name of a user pool group, updates any of the properties
%% for precedence,
%% IAM role, or description.
%%
%% For more information about user pool groups, see Adding groups to a user
%% pool:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-user-groups.html.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For
%% this operation, you must use IAM credentials to authorize requests, and
%% you must
%% grant yourself the corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
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

%% @doc Modifies the configuration and trust relationship between a
%% third-party identity
%% provider (IdP) and a user pool.
%%
%% Amazon Cognito accepts sign-in with third-party identity
%% providers through managed login and OIDC relying-party libraries. For more
%% information,
%% see Third-party IdP sign-in:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-identity-federation.html.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For
%% this operation, you must use IAM credentials to authorize requests, and
%% you must
%% grant yourself the corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
-spec update_identity_provider(aws_client:aws_client(), update_identity_provider_request()) ->
    {ok, update_identity_provider_response(), tuple()} |
    {error, any()} |
    {error, update_identity_provider_errors(), tuple()}.
update_identity_provider(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_identity_provider(Client, Input, []).

-spec update_identity_provider(aws_client:aws_client(), update_identity_provider_request(), proplists:proplist()) ->
    {ok, update_identity_provider_response(), tuple()} |
    {error, any()} |
    {error, update_identity_provider_errors(), tuple()}.
update_identity_provider(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateIdentityProvider">>, Input, Options).

%% @doc Configures the branding settings for a user pool style.
%%
%% This operation is the
%% programmatic option for the configuration of a style in the branding
%% designer.
%%
%% Provides values for UI customization in a `Settings' JSON object and
%% image
%% files in an `Assets' array.
%%
%% This operation has a 2-megabyte request-size limit and include the CSS
%% settings and
%% image assets for your app client. Your branding settings might exceed 2MB
%% in size. Amazon Cognito
%% doesn't require that you pass all parameters in one request and
%% preserves existing
%% style settings that you don't specify. If your request is larger than
%% 2MB, separate it
%% into multiple requests, each with a size smaller than the limit.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For
%% this operation, you must use IAM credentials to authorize requests, and
%% you must
%% grant yourself the corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
-spec update_managed_login_branding(aws_client:aws_client(), update_managed_login_branding_request()) ->
    {ok, update_managed_login_branding_response(), tuple()} |
    {error, any()} |
    {error, update_managed_login_branding_errors(), tuple()}.
update_managed_login_branding(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_managed_login_branding(Client, Input, []).

-spec update_managed_login_branding(aws_client:aws_client(), update_managed_login_branding_request(), proplists:proplist()) ->
    {ok, update_managed_login_branding_response(), tuple()} |
    {error, any()} |
    {error, update_managed_login_branding_errors(), tuple()}.
update_managed_login_branding(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateManagedLoginBranding">>, Input, Options).

%% @doc Updates the name and scopes of a resource server.
%%
%% All other fields are read-only. For
%% more information about resource servers, see Access control with resource
%% servers:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-define-resource-servers.html.
%%
%% If you don't provide a value for an attribute, it is set to the
%% default
%% value.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For
%% this operation, you must use IAM credentials to authorize requests, and
%% you must
%% grant yourself the corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
-spec update_resource_server(aws_client:aws_client(), update_resource_server_request()) ->
    {ok, update_resource_server_response(), tuple()} |
    {error, any()} |
    {error, update_resource_server_errors(), tuple()}.
update_resource_server(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_resource_server(Client, Input, []).

-spec update_resource_server(aws_client:aws_client(), update_resource_server_request(), proplists:proplist()) ->
    {ok, update_resource_server_response(), tuple()} |
    {error, any()} |
    {error, update_resource_server_errors(), tuple()}.
update_resource_server(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateResourceServer">>, Input, Options).

%% @doc Updates the currently signed-in user's attributes.
%%
%% To delete an attribute from
%% the user, submit the attribute in your API request with a blank value.
%%
%% For custom attributes, you must add a `custom:' prefix to the
%% attribute
%% name, for example `custom:department'.
%%
%% Authorize this action with a signed-in user's access token. It must
%% include the scope `aws.cognito.signin.user.admin'.
%%
%% Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
%% policies in requests for this API operation. For
%% this operation, you can't use IAM credentials to authorize requests,
%% and you can't
%% grant IAM permissions in policies. For more information about
%% authorization models in
%% Amazon Cognito, see Using the Amazon Cognito user pools API and user pool
%% endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html.
%%
%% This action might generate an SMS text message. Starting June 1, 2021, US
%% telecom carriers
%% require you to register an origination phone number before you can send
%% SMS messages
%% to US phone numbers. If you use SMS text messages in Amazon Cognito, you
%% must register a
%% phone number with Amazon Pinpoint:
%% https://console.aws.amazon.com/pinpoint/home/.
%% Amazon Cognito uses the registered number automatically. Otherwise, Amazon
%% Cognito users who must
%% receive SMS messages might not be able to sign up, activate their
%% accounts, or sign
%% in.
%%
%% If you have never used SMS text messages with Amazon Cognito or any other
%% Amazon Web Services service,
%% Amazon Simple Notification Service might place your account in the SMS
%% sandbox. In
%% sandbox
%% mode: https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html
%% , you can send messages only to verified phone
%% numbers. After you test your app while in the sandbox environment, you can
%% move out
%% of the sandbox and into production. For more information, see SMS message
%% settings for Amazon Cognito user pools:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html
%% in the Amazon Cognito
%% Developer Guide.
-spec update_user_attributes(aws_client:aws_client(), update_user_attributes_request()) ->
    {ok, update_user_attributes_response(), tuple()} |
    {error, any()} |
    {error, update_user_attributes_errors(), tuple()}.
update_user_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_user_attributes(Client, Input, []).

-spec update_user_attributes(aws_client:aws_client(), update_user_attributes_request(), proplists:proplist()) ->
    {ok, update_user_attributes_response(), tuple()} |
    {error, any()} |
    {error, update_user_attributes_errors(), tuple()}.
update_user_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateUserAttributes">>, Input, Options).

%% @doc Updates the configuration of a user pool.
%%
%% To avoid setting parameters to Amazon Cognito
%% defaults, construct this API request to pass the existing configuration of
%% your user
%% pool, modified to include the changes that you want to make.
%%
%% If you don't provide a value for an attribute, Amazon Cognito sets it
%% to its default value.
%%
%% This action might generate an SMS text message. Starting June 1, 2021, US
%% telecom carriers
%% require you to register an origination phone number before you can send
%% SMS messages
%% to US phone numbers. If you use SMS text messages in Amazon Cognito, you
%% must register a
%% phone number with Amazon Pinpoint:
%% https://console.aws.amazon.com/pinpoint/home/.
%% Amazon Cognito uses the registered number automatically. Otherwise, Amazon
%% Cognito users who must
%% receive SMS messages might not be able to sign up, activate their
%% accounts, or sign
%% in.
%%
%% If you have never used SMS text messages with Amazon Cognito or any other
%% Amazon Web Services service,
%% Amazon Simple Notification Service might place your account in the SMS
%% sandbox. In
%% sandbox
%% mode: https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html
%% , you can send messages only to verified phone
%% numbers. After you test your app while in the sandbox environment, you can
%% move out
%% of the sandbox and into production. For more information, see SMS message
%% settings for Amazon Cognito user pools:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html
%% in the Amazon Cognito
%% Developer Guide.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For
%% this operation, you must use IAM credentials to authorize requests, and
%% you must
%% grant yourself the corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
-spec update_user_pool(aws_client:aws_client(), update_user_pool_request()) ->
    {ok, update_user_pool_response(), tuple()} |
    {error, any()} |
    {error, update_user_pool_errors(), tuple()}.
update_user_pool(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_user_pool(Client, Input, []).

-spec update_user_pool(aws_client:aws_client(), update_user_pool_request(), proplists:proplist()) ->
    {ok, update_user_pool_response(), tuple()} |
    {error, any()} |
    {error, update_user_pool_errors(), tuple()}.
update_user_pool(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateUserPool">>, Input, Options).

%% @doc Given a user pool app client ID, updates the configuration.
%%
%% To avoid setting
%% parameters to Amazon Cognito defaults, construct this API request to pass
%% the existing
%% configuration of your app client, modified to include the changes that you
%% want to
%% make.
%%
%% If you don't provide a value for an attribute, Amazon Cognito sets it
%% to its default value.
%%
%% Unlike app clients created in the console, Amazon Cognito doesn't
%% automatically assign a
%% branding style to app clients that you configure with this API operation.
%% Managed login and classic hosted UI pages aren't
%% available for your client until after you apply a branding style.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For
%% this operation, you must use IAM credentials to authorize requests, and
%% you must
%% grant yourself the corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
-spec update_user_pool_client(aws_client:aws_client(), update_user_pool_client_request()) ->
    {ok, update_user_pool_client_response(), tuple()} |
    {error, any()} |
    {error, update_user_pool_client_errors(), tuple()}.
update_user_pool_client(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_user_pool_client(Client, Input, []).

-spec update_user_pool_client(aws_client:aws_client(), update_user_pool_client_request(), proplists:proplist()) ->
    {ok, update_user_pool_client_response(), tuple()} |
    {error, any()} |
    {error, update_user_pool_client_errors(), tuple()}.
update_user_pool_client(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateUserPoolClient">>, Input, Options).

%% @doc A user pool domain hosts managed login, an authorization server and
%% web server for
%% authentication in your application.
%%
%% This operation updates the branding version for user
%% pool domains between `1' for hosted UI (classic) and `2' for
%% managed login. It also updates the SSL certificate for user pool custom
%% domains.
%%
%% Changes to the domain branding version take up to one minute to take
%% effect for a
%% prefix domain and up to five minutes for a custom domain.
%%
%% This operation doesn't change the name of your user pool domain. To
%% change your
%% domain, delete it with `DeleteUserPoolDomain' and create a new domain
%% with
%% `CreateUserPoolDomain'.
%%
%% You can pass the ARN of a new Certificate Manager certificate in this
%% request. Typically, ACM
%% certificates automatically renew and you user pool can continue to use the
%% same ARN. But
%% if you generate a new certificate for your custom domain name, replace the
%% original
%% configuration with the new ARN in this request.
%%
%% ACM certificates for custom domains must be in the US East (N. Virginia)
%% Amazon Web Services Region. After you submit your request, Amazon Cognito
%% requires up to 1 hour to distribute
%% your new certificate to your custom domain.
%%
%% For more information about adding a custom domain to your user pool, see
%% Configuring a user pool domain:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-add-custom-domain.html.
%%
%% Amazon Cognito evaluates Identity and Access Management (IAM) policies in
%% requests for this API operation. For
%% this operation, you must use IAM credentials to authorize requests, and
%% you must
%% grant yourself the corresponding IAM permission in a policy.
%%
%% == Learn more ==
%%
%% Signing Amazon Web Services API Requests:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
%%
%% Using the Amazon Cognito user pools API and user pool endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
-spec update_user_pool_domain(aws_client:aws_client(), update_user_pool_domain_request()) ->
    {ok, update_user_pool_domain_response(), tuple()} |
    {error, any()} |
    {error, update_user_pool_domain_errors(), tuple()}.
update_user_pool_domain(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_user_pool_domain(Client, Input, []).

-spec update_user_pool_domain(aws_client:aws_client(), update_user_pool_domain_request(), proplists:proplist()) ->
    {ok, update_user_pool_domain_response(), tuple()} |
    {error, any()} |
    {error, update_user_pool_domain_errors(), tuple()}.
update_user_pool_domain(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateUserPoolDomain">>, Input, Options).

%% @doc Registers the current user's time-based one-time password (TOTP)
%% authenticator
%% with a code generated in their authenticator app from a private key
%% that's supplied
%% by your user pool.
%%
%% Marks the user's software token MFA status as &quot;verified&quot; if
%% successful. The request takes an access token or a session string, but not
%% both.
%%
%% Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
%% policies in requests for this API operation. For
%% this operation, you can't use IAM credentials to authorize requests,
%% and you can't
%% grant IAM permissions in policies. For more information about
%% authorization models in
%% Amazon Cognito, see Using the Amazon Cognito user pools API and user pool
%% endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html.
-spec verify_software_token(aws_client:aws_client(), verify_software_token_request()) ->
    {ok, verify_software_token_response(), tuple()} |
    {error, any()} |
    {error, verify_software_token_errors(), tuple()}.
verify_software_token(Client, Input)
  when is_map(Client), is_map(Input) ->
    verify_software_token(Client, Input, []).

-spec verify_software_token(aws_client:aws_client(), verify_software_token_request(), proplists:proplist()) ->
    {ok, verify_software_token_response(), tuple()} |
    {error, any()} |
    {error, verify_software_token_errors(), tuple()}.
verify_software_token(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"VerifySoftwareToken">>, Input, Options).

%% @doc Submits a verification code for a signed-in user who has added or
%% changed a value of
%% an auto-verified attribute.
%%
%% When successful, the user's attribute becomes verified
%% and the attribute `email_verified' or `phone_number_verified'
%% becomes `true'.
%%
%% If your user pool requires verification before Amazon Cognito updates the
%% attribute value,
%% this operation updates the affected attribute to its pending value.
%%
%% Authorize this action with a signed-in user's access token. It must
%% include the scope `aws.cognito.signin.user.admin'.
%%
%% Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
%% policies in requests for this API operation. For
%% this operation, you can't use IAM credentials to authorize requests,
%% and you can't
%% grant IAM permissions in policies. For more information about
%% authorization models in
%% Amazon Cognito, see Using the Amazon Cognito user pools API and user pool
%% endpoints:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html.
-spec verify_user_attribute(aws_client:aws_client(), verify_user_attribute_request()) ->
    {ok, verify_user_attribute_response(), tuple()} |
    {error, any()} |
    {error, verify_user_attribute_errors(), tuple()}.
verify_user_attribute(Client, Input)
  when is_map(Client), is_map(Input) ->
    verify_user_attribute(Client, Input, []).

-spec verify_user_attribute(aws_client:aws_client(), verify_user_attribute_request(), proplists:proplist()) ->
    {ok, verify_user_attribute_response(), tuple()} |
    {error, any()} |
    {error, verify_user_attribute_errors(), tuple()}.
verify_user_attribute(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"VerifyUserAttribute">>, Input, Options).

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
    Client1 = Client#{service => <<"cognito-idp">>},
    Host = build_host(<<"cognito-idp">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"AWSCognitoIdentityProviderService.", Action/binary>>}
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
