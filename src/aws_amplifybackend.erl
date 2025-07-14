%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc AWS Amplify Admin API
-module(aws_amplifybackend).

-export([clone_backend/4,
         clone_backend/5,
         create_backend/2,
         create_backend/3,
         create_backend_api/3,
         create_backend_api/4,
         create_backend_auth/3,
         create_backend_auth/4,
         create_backend_config/3,
         create_backend_config/4,
         create_backend_storage/3,
         create_backend_storage/4,
         create_token/3,
         create_token/4,
         delete_backend/4,
         delete_backend/5,
         delete_backend_api/4,
         delete_backend_api/5,
         delete_backend_auth/4,
         delete_backend_auth/5,
         delete_backend_storage/4,
         delete_backend_storage/5,
         delete_token/4,
         delete_token/5,
         generate_backend_api_models/4,
         generate_backend_api_models/5,
         get_backend/3,
         get_backend/4,
         get_backend_api/4,
         get_backend_api/5,
         get_backend_api_models/4,
         get_backend_api_models/5,
         get_backend_auth/4,
         get_backend_auth/5,
         get_backend_job/4,
         get_backend_job/6,
         get_backend_job/7,
         get_backend_storage/4,
         get_backend_storage/5,
         get_token/3,
         get_token/5,
         get_token/6,
         import_backend_auth/4,
         import_backend_auth/5,
         import_backend_storage/4,
         import_backend_storage/5,
         list_backend_jobs/4,
         list_backend_jobs/5,
         list_s3_buckets/2,
         list_s3_buckets/3,
         remove_all_backends/3,
         remove_all_backends/4,
         remove_backend_config/3,
         remove_backend_config/4,
         update_backend_api/4,
         update_backend_api/5,
         update_backend_auth/4,
         update_backend_auth/5,
         update_backend_config/3,
         update_backend_config/4,
         update_backend_job/5,
         update_backend_job/6,
         update_backend_storage/4,
         update_backend_storage/5]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% update_backend_auth_request() :: #{
%%   <<"ResourceConfig">> := update_backend_auth_resource_config(),
%%   <<"ResourceName">> := string()
%% }
-type update_backend_auth_request() :: #{binary() => any()}.


%% Example:
%% import_backend_auth_response() :: #{
%%   <<"AppId">> => string(),
%%   <<"BackendEnvironmentName">> => string(),
%%   <<"Error">> => string(),
%%   <<"JobId">> => string(),
%%   <<"Operation">> => string(),
%%   <<"Status">> => string()
%% }
-type import_backend_auth_response() :: #{binary() => any()}.


%% Example:
%% create_backend_auth_forgot_password_config() :: #{
%%   <<"DeliveryMethod">> => list(any()),
%%   <<"EmailSettings">> => email_settings(),
%%   <<"SmsSettings">> => sms_settings()
%% }
-type create_backend_auth_forgot_password_config() :: #{binary() => any()}.


%% Example:
%% get_backend_storage_resource_config() :: #{
%%   <<"BucketName">> => string(),
%%   <<"Imported">> => boolean(),
%%   <<"Permissions">> => backend_storage_permissions(),
%%   <<"ServiceName">> => list(any())
%% }
-type get_backend_storage_resource_config() :: #{binary() => any()}.

%% Example:
%% remove_backend_config_request() :: #{}
-type remove_backend_config_request() :: #{}.


%% Example:
%% delete_backend_storage_request() :: #{
%%   <<"ResourceName">> := string(),
%%   <<"ServiceName">> := list(any())
%% }
-type delete_backend_storage_request() :: #{binary() => any()}.


%% Example:
%% get_backend_api_models_request() :: #{
%%   <<"ResourceName">> := string()
%% }
-type get_backend_api_models_request() :: #{binary() => any()}.


%% Example:
%% generate_backend_api_models_response() :: #{
%%   <<"AppId">> => string(),
%%   <<"BackendEnvironmentName">> => string(),
%%   <<"Error">> => string(),
%%   <<"JobId">> => string(),
%%   <<"Operation">> => string(),
%%   <<"Status">> => string()
%% }
-type generate_backend_api_models_response() :: #{binary() => any()}.


%% Example:
%% backend_api_resource_config() :: #{
%%   <<"AdditionalAuthTypes">> => list(backend_api_auth_type()),
%%   <<"ApiName">> => string(),
%%   <<"ConflictResolution">> => backend_api_conflict_resolution(),
%%   <<"DefaultAuthType">> => backend_api_auth_type(),
%%   <<"Service">> => string(),
%%   <<"TransformSchema">> => string()
%% }
-type backend_api_resource_config() :: #{binary() => any()}.


%% Example:
%% create_backend_storage_response() :: #{
%%   <<"AppId">> => string(),
%%   <<"BackendEnvironmentName">> => string(),
%%   <<"JobId">> => string(),
%%   <<"Status">> => string()
%% }
-type create_backend_storage_response() :: #{binary() => any()}.


%% Example:
%% delete_token_response() :: #{
%%   <<"IsSuccess">> => boolean()
%% }
-type delete_token_response() :: #{binary() => any()}.


%% Example:
%% backend_api_auth_type() :: #{
%%   <<"Mode">> => list(any()),
%%   <<"Settings">> => backend_api_app_sync_auth_settings()
%% }
-type backend_api_auth_type() :: #{binary() => any()}.


%% Example:
%% create_backend_auth_response() :: #{
%%   <<"AppId">> => string(),
%%   <<"BackendEnvironmentName">> => string(),
%%   <<"Error">> => string(),
%%   <<"JobId">> => string(),
%%   <<"Operation">> => string(),
%%   <<"Status">> => string()
%% }
-type create_backend_auth_response() :: #{binary() => any()}.

%% Example:
%% get_backend_job_request() :: #{}
-type get_backend_job_request() :: #{}.


%% Example:
%% backend_job_resp_obj() :: #{
%%   <<"AppId">> => string(),
%%   <<"BackendEnvironmentName">> => string(),
%%   <<"CreateTime">> => string(),
%%   <<"Error">> => string(),
%%   <<"JobId">> => string(),
%%   <<"Operation">> => string(),
%%   <<"Status">> => string(),
%%   <<"UpdateTime">> => string()
%% }
-type backend_job_resp_obj() :: #{binary() => any()}.


%% Example:
%% clone_backend_request() :: #{
%%   <<"TargetEnvironmentName">> := string()
%% }
-type clone_backend_request() :: #{binary() => any()}.


%% Example:
%% create_backend_auth_verification_message_config() :: #{
%%   <<"DeliveryMethod">> => list(any()),
%%   <<"EmailSettings">> => email_settings(),
%%   <<"SmsSettings">> => sms_settings()
%% }
-type create_backend_auth_verification_message_config() :: #{binary() => any()}.


%% Example:
%% list_backend_jobs_request() :: #{
%%   <<"JobId">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"Operation">> => string(),
%%   <<"Status">> => string()
%% }
-type list_backend_jobs_request() :: #{binary() => any()}.


%% Example:
%% social_provider_settings() :: #{
%%   <<"Facebook">> => backend_auth_social_provider_config(),
%%   <<"Google">> => backend_auth_social_provider_config(),
%%   <<"LoginWithAmazon">> => backend_auth_social_provider_config(),
%%   <<"SignInWithApple">> => backend_auth_apple_provider_config()
%% }
-type social_provider_settings() :: #{binary() => any()}.


%% Example:
%% update_backend_auth_mfa_config() :: #{
%%   <<"MFAMode">> => list(any()),
%%   <<"Settings">> => settings()
%% }
-type update_backend_auth_mfa_config() :: #{binary() => any()}.


%% Example:
%% update_backend_auth_o_auth_config() :: #{
%%   <<"DomainPrefix">> => string(),
%%   <<"OAuthGrantType">> => list(any()),
%%   <<"OAuthScopes">> => list(list(any())()),
%%   <<"RedirectSignInURIs">> => list(string()),
%%   <<"RedirectSignOutURIs">> => list(string()),
%%   <<"SocialProviderSettings">> => social_provider_settings()
%% }
-type update_backend_auth_o_auth_config() :: #{binary() => any()}.


%% Example:
%% import_backend_storage_response() :: #{
%%   <<"AppId">> => string(),
%%   <<"BackendEnvironmentName">> => string(),
%%   <<"JobId">> => string(),
%%   <<"Status">> => string()
%% }
-type import_backend_storage_response() :: #{binary() => any()}.


%% Example:
%% create_backend_auth_password_policy_config() :: #{
%%   <<"AdditionalConstraints">> => list(list(any())()),
%%   <<"MinimumLength">> => float()
%% }
-type create_backend_auth_password_policy_config() :: #{binary() => any()}.


%% Example:
%% too_many_requests_exception() :: #{
%%   <<"LimitType">> => string(),
%%   <<"Message">> => string()
%% }
-type too_many_requests_exception() :: #{binary() => any()}.


%% Example:
%% update_backend_auth_resource_config() :: #{
%%   <<"AuthResources">> => list(any()),
%%   <<"IdentityPoolConfigs">> => update_backend_auth_identity_pool_config(),
%%   <<"Service">> => list(any()),
%%   <<"UserPoolConfigs">> => update_backend_auth_user_pool_config()
%% }
-type update_backend_auth_resource_config() :: #{binary() => any()}.


%% Example:
%% get_token_response() :: #{
%%   <<"AppId">> => string(),
%%   <<"ChallengeCode">> => string(),
%%   <<"SessionId">> => string(),
%%   <<"Ttl">> => string()
%% }
-type get_token_response() :: #{binary() => any()}.


%% Example:
%% s3_bucket_info() :: #{
%%   <<"CreationDate">> => string(),
%%   <<"Name">> => string()
%% }
-type s3_bucket_info() :: #{binary() => any()}.


%% Example:
%% remove_backend_config_response() :: #{
%%   <<"Error">> => string()
%% }
-type remove_backend_config_response() :: #{binary() => any()}.


%% Example:
%% list_s3_buckets_response() :: #{
%%   <<"Buckets">> => list(s3_bucket_info()),
%%   <<"NextToken">> => string()
%% }
-type list_s3_buckets_response() :: #{binary() => any()}.


%% Example:
%% email_settings() :: #{
%%   <<"EmailMessage">> => string(),
%%   <<"EmailSubject">> => string()
%% }
-type email_settings() :: #{binary() => any()}.


%% Example:
%% update_backend_auth_user_pool_config() :: #{
%%   <<"ForgotPassword">> => update_backend_auth_forgot_password_config(),
%%   <<"Mfa">> => update_backend_auth_mfa_config(),
%%   <<"OAuth">> => update_backend_auth_o_auth_config(),
%%   <<"PasswordPolicy">> => update_backend_auth_password_policy_config(),
%%   <<"VerificationMessage">> => update_backend_auth_verification_message_config()
%% }
-type update_backend_auth_user_pool_config() :: #{binary() => any()}.


%% Example:
%% update_backend_auth_password_policy_config() :: #{
%%   <<"AdditionalConstraints">> => list(list(any())()),
%%   <<"MinimumLength">> => float()
%% }
-type update_backend_auth_password_policy_config() :: #{binary() => any()}.


%% Example:
%% get_backend_request() :: #{
%%   <<"BackendEnvironmentName">> => string()
%% }
-type get_backend_request() :: #{binary() => any()}.


%% Example:
%% backend_api_app_sync_auth_settings() :: #{
%%   <<"CognitoUserPoolId">> => string(),
%%   <<"Description">> => string(),
%%   <<"ExpirationTime">> => float(),
%%   <<"OpenIDAuthTTL">> => string(),
%%   <<"OpenIDClientId">> => string(),
%%   <<"OpenIDIatTTL">> => string(),
%%   <<"OpenIDIssueURL">> => string(),
%%   <<"OpenIDProviderName">> => string()
%% }
-type backend_api_app_sync_auth_settings() :: #{binary() => any()}.


%% Example:
%% update_backend_api_request() :: #{
%%   <<"ResourceConfig">> => backend_api_resource_config(),
%%   <<"ResourceName">> := string()
%% }
-type update_backend_api_request() :: #{binary() => any()}.


%% Example:
%% list_backend_jobs_response() :: #{
%%   <<"Jobs">> => list(backend_job_resp_obj()),
%%   <<"NextToken">> => string()
%% }
-type list_backend_jobs_response() :: #{binary() => any()}.


%% Example:
%% update_backend_auth_response() :: #{
%%   <<"AppId">> => string(),
%%   <<"BackendEnvironmentName">> => string(),
%%   <<"Error">> => string(),
%%   <<"JobId">> => string(),
%%   <<"Operation">> => string(),
%%   <<"Status">> => string()
%% }
-type update_backend_auth_response() :: #{binary() => any()}.


%% Example:
%% get_backend_api_request() :: #{
%%   <<"ResourceConfig">> => backend_api_resource_config(),
%%   <<"ResourceName">> := string()
%% }
-type get_backend_api_request() :: #{binary() => any()}.


%% Example:
%% update_backend_config_request() :: #{
%%   <<"LoginAuthConfig">> => login_auth_config_req_obj()
%% }
-type update_backend_config_request() :: #{binary() => any()}.


%% Example:
%% delete_backend_auth_response() :: #{
%%   <<"AppId">> => string(),
%%   <<"BackendEnvironmentName">> => string(),
%%   <<"Error">> => string(),
%%   <<"JobId">> => string(),
%%   <<"Operation">> => string(),
%%   <<"Status">> => string()
%% }
-type delete_backend_auth_response() :: #{binary() => any()}.


%% Example:
%% not_found_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"ResourceType">> => string()
%% }
-type not_found_exception() :: #{binary() => any()}.


%% Example:
%% backend_api_conflict_resolution() :: #{
%%   <<"ResolutionStrategy">> => list(any())
%% }
-type backend_api_conflict_resolution() :: #{binary() => any()}.


%% Example:
%% create_backend_auth_user_pool_config() :: #{
%%   <<"ForgotPassword">> => create_backend_auth_forgot_password_config(),
%%   <<"Mfa">> => create_backend_auth_mfa_config(),
%%   <<"OAuth">> => create_backend_auth_o_auth_config(),
%%   <<"PasswordPolicy">> => create_backend_auth_password_policy_config(),
%%   <<"RequiredSignUpAttributes">> => list(list(any())()),
%%   <<"SignInMethod">> => list(any()),
%%   <<"UserPoolName">> => string(),
%%   <<"VerificationMessage">> => create_backend_auth_verification_message_config()
%% }
-type create_backend_auth_user_pool_config() :: #{binary() => any()}.


%% Example:
%% settings() :: #{
%%   <<"MfaTypes">> => list(list(any())()),
%%   <<"SmsMessage">> => string()
%% }
-type settings() :: #{binary() => any()}.

%% Example:
%% delete_token_request() :: #{}
-type delete_token_request() :: #{}.


%% Example:
%% generate_backend_api_models_request() :: #{
%%   <<"ResourceName">> := string()
%% }
-type generate_backend_api_models_request() :: #{binary() => any()}.


%% Example:
%% get_backend_auth_request() :: #{
%%   <<"ResourceName">> := string()
%% }
-type get_backend_auth_request() :: #{binary() => any()}.


%% Example:
%% create_backend_storage_resource_config() :: #{
%%   <<"BucketName">> => string(),
%%   <<"Permissions">> => backend_storage_permissions(),
%%   <<"ServiceName">> => list(any())
%% }
-type create_backend_storage_resource_config() :: #{binary() => any()}.


%% Example:
%% delete_backend_api_request() :: #{
%%   <<"ResourceConfig">> => backend_api_resource_config(),
%%   <<"ResourceName">> := string()
%% }
-type delete_backend_api_request() :: #{binary() => any()}.


%% Example:
%% backend_auth_apple_provider_config() :: #{
%%   <<"ClientId">> => string(),
%%   <<"KeyId">> => string(),
%%   <<"PrivateKey">> => string(),
%%   <<"TeamId">> => string()
%% }
-type backend_auth_apple_provider_config() :: #{binary() => any()}.


%% Example:
%% remove_all_backends_request() :: #{
%%   <<"CleanAmplifyApp">> => boolean()
%% }
-type remove_all_backends_request() :: #{binary() => any()}.


%% Example:
%% get_backend_api_models_response() :: #{
%%   <<"ModelIntrospectionSchema">> => string(),
%%   <<"Models">> => string(),
%%   <<"Status">> => list(any())
%% }
-type get_backend_api_models_response() :: #{binary() => any()}.


%% Example:
%% delete_backend_response() :: #{
%%   <<"AppId">> => string(),
%%   <<"BackendEnvironmentName">> => string(),
%%   <<"Error">> => string(),
%%   <<"JobId">> => string(),
%%   <<"Operation">> => string(),
%%   <<"Status">> => string()
%% }
-type delete_backend_response() :: #{binary() => any()}.


%% Example:
%% create_backend_response() :: #{
%%   <<"AppId">> => string(),
%%   <<"BackendEnvironmentName">> => string(),
%%   <<"Error">> => string(),
%%   <<"JobId">> => string(),
%%   <<"Operation">> => string(),
%%   <<"Status">> => string()
%% }
-type create_backend_response() :: #{binary() => any()}.

%% Example:
%% delete_backend_request() :: #{}
-type delete_backend_request() :: #{}.


%% Example:
%% create_backend_config_request() :: #{
%%   <<"BackendManagerAppId">> => string()
%% }
-type create_backend_config_request() :: #{binary() => any()}.


%% Example:
%% list_s3_buckets_request() :: #{
%%   <<"NextToken">> => string()
%% }
-type list_s3_buckets_request() :: #{binary() => any()}.


%% Example:
%% get_backend_storage_request() :: #{
%%   <<"ResourceName">> := string()
%% }
-type get_backend_storage_request() :: #{binary() => any()}.


%% Example:
%% remove_all_backends_response() :: #{
%%   <<"AppId">> => string(),
%%   <<"Error">> => string(),
%%   <<"JobId">> => string(),
%%   <<"Operation">> => string(),
%%   <<"Status">> => string()
%% }
-type remove_all_backends_response() :: #{binary() => any()}.


%% Example:
%% create_backend_api_response() :: #{
%%   <<"AppId">> => string(),
%%   <<"BackendEnvironmentName">> => string(),
%%   <<"Error">> => string(),
%%   <<"JobId">> => string(),
%%   <<"Operation">> => string(),
%%   <<"Status">> => string()
%% }
-type create_backend_api_response() :: #{binary() => any()}.


%% Example:
%% import_backend_storage_request() :: #{
%%   <<"BucketName">> => string(),
%%   <<"ServiceName">> := list(any())
%% }
-type import_backend_storage_request() :: #{binary() => any()}.

%% Example:
%% resource_config() :: #{}
-type resource_config() :: #{}.


%% Example:
%% login_auth_config_req_obj() :: #{
%%   <<"AwsCognitoIdentityPoolId">> => string(),
%%   <<"AwsCognitoRegion">> => string(),
%%   <<"AwsUserPoolsId">> => string(),
%%   <<"AwsUserPoolsWebClientId">> => string()
%% }
-type login_auth_config_req_obj() :: #{binary() => any()}.


%% Example:
%% create_backend_request() :: #{
%%   <<"AppId">> := string(),
%%   <<"AppName">> := string(),
%%   <<"BackendEnvironmentName">> := string(),
%%   <<"ResourceConfig">> => resource_config(),
%%   <<"ResourceName">> => string()
%% }
-type create_backend_request() :: #{binary() => any()}.


%% Example:
%% get_backend_storage_response() :: #{
%%   <<"AppId">> => string(),
%%   <<"BackendEnvironmentName">> => string(),
%%   <<"ResourceConfig">> => get_backend_storage_resource_config(),
%%   <<"ResourceName">> => string()
%% }
-type get_backend_storage_response() :: #{binary() => any()}.


%% Example:
%% update_backend_storage_response() :: #{
%%   <<"AppId">> => string(),
%%   <<"BackendEnvironmentName">> => string(),
%%   <<"JobId">> => string(),
%%   <<"Status">> => string()
%% }
-type update_backend_storage_response() :: #{binary() => any()}.


%% Example:
%% update_backend_config_response() :: #{
%%   <<"AppId">> => string(),
%%   <<"BackendManagerAppId">> => string(),
%%   <<"Error">> => string(),
%%   <<"LoginAuthConfig">> => login_auth_config_req_obj()
%% }
-type update_backend_config_response() :: #{binary() => any()}.


%% Example:
%% get_backend_job_response() :: #{
%%   <<"AppId">> => string(),
%%   <<"BackendEnvironmentName">> => string(),
%%   <<"CreateTime">> => string(),
%%   <<"Error">> => string(),
%%   <<"JobId">> => string(),
%%   <<"Operation">> => string(),
%%   <<"Status">> => string(),
%%   <<"UpdateTime">> => string()
%% }
-type get_backend_job_response() :: #{binary() => any()}.


%% Example:
%% create_backend_auth_resource_config() :: #{
%%   <<"AuthResources">> => list(any()),
%%   <<"IdentityPoolConfigs">> => create_backend_auth_identity_pool_config(),
%%   <<"Service">> => list(any()),
%%   <<"UserPoolConfigs">> => create_backend_auth_user_pool_config()
%% }
-type create_backend_auth_resource_config() :: #{binary() => any()}.


%% Example:
%% create_backend_auth_request() :: #{
%%   <<"BackendEnvironmentName">> := string(),
%%   <<"ResourceConfig">> := create_backend_auth_resource_config(),
%%   <<"ResourceName">> := string()
%% }
-type create_backend_auth_request() :: #{binary() => any()}.


%% Example:
%% create_backend_storage_request() :: #{
%%   <<"BackendEnvironmentName">> := string(),
%%   <<"ResourceConfig">> := create_backend_storage_resource_config(),
%%   <<"ResourceName">> := string()
%% }
-type create_backend_storage_request() :: #{binary() => any()}.


%% Example:
%% backend_auth_social_provider_config() :: #{
%%   <<"ClientId">> => string(),
%%   <<"ClientSecret">> => string()
%% }
-type backend_auth_social_provider_config() :: #{binary() => any()}.


%% Example:
%% get_backend_response() :: #{
%%   <<"AmplifyFeatureFlags">> => string(),
%%   <<"AmplifyMetaConfig">> => string(),
%%   <<"AppId">> => string(),
%%   <<"AppName">> => string(),
%%   <<"BackendEnvironmentList">> => list(string()),
%%   <<"BackendEnvironmentName">> => string(),
%%   <<"Error">> => string()
%% }
-type get_backend_response() :: #{binary() => any()}.


%% Example:
%% sms_settings() :: #{
%%   <<"SmsMessage">> => string()
%% }
-type sms_settings() :: #{binary() => any()}.


%% Example:
%% update_backend_api_response() :: #{
%%   <<"AppId">> => string(),
%%   <<"BackendEnvironmentName">> => string(),
%%   <<"Error">> => string(),
%%   <<"JobId">> => string(),
%%   <<"Operation">> => string(),
%%   <<"Status">> => string()
%% }
-type update_backend_api_response() :: #{binary() => any()}.


%% Example:
%% backend_storage_permissions() :: #{
%%   <<"Authenticated">> => list(list(any())()),
%%   <<"UnAuthenticated">> => list(list(any())())
%% }
-type backend_storage_permissions() :: #{binary() => any()}.


%% Example:
%% gateway_timeout_exception() :: #{
%%   <<"Message">> => string()
%% }
-type gateway_timeout_exception() :: #{binary() => any()}.


%% Example:
%% create_backend_config_response() :: #{
%%   <<"AppId">> => string(),
%%   <<"BackendEnvironmentName">> => string(),
%%   <<"JobId">> => string(),
%%   <<"Status">> => string()
%% }
-type create_backend_config_response() :: #{binary() => any()}.


%% Example:
%% create_backend_auth_identity_pool_config() :: #{
%%   <<"IdentityPoolName">> => string(),
%%   <<"UnauthenticatedLogin">> => boolean()
%% }
-type create_backend_auth_identity_pool_config() :: #{binary() => any()}.


%% Example:
%% update_backend_job_request() :: #{
%%   <<"Operation">> => string(),
%%   <<"Status">> => string()
%% }
-type update_backend_job_request() :: #{binary() => any()}.


%% Example:
%% create_backend_auth_o_auth_config() :: #{
%%   <<"DomainPrefix">> => string(),
%%   <<"OAuthGrantType">> => list(any()),
%%   <<"OAuthScopes">> => list(list(any())()),
%%   <<"RedirectSignInURIs">> => list(string()),
%%   <<"RedirectSignOutURIs">> => list(string()),
%%   <<"SocialProviderSettings">> => social_provider_settings()
%% }
-type create_backend_auth_o_auth_config() :: #{binary() => any()}.


%% Example:
%% bad_request_exception() :: #{
%%   <<"Message">> => string()
%% }
-type bad_request_exception() :: #{binary() => any()}.


%% Example:
%% get_backend_auth_response() :: #{
%%   <<"AppId">> => string(),
%%   <<"BackendEnvironmentName">> => string(),
%%   <<"Error">> => string(),
%%   <<"ResourceConfig">> => create_backend_auth_resource_config(),
%%   <<"ResourceName">> => string()
%% }
-type get_backend_auth_response() :: #{binary() => any()}.


%% Example:
%% create_token_response() :: #{
%%   <<"AppId">> => string(),
%%   <<"ChallengeCode">> => string(),
%%   <<"SessionId">> => string(),
%%   <<"Ttl">> => string()
%% }
-type create_token_response() :: #{binary() => any()}.

%% Example:
%% get_token_request() :: #{}
-type get_token_request() :: #{}.


%% Example:
%% get_backend_api_response() :: #{
%%   <<"AppId">> => string(),
%%   <<"BackendEnvironmentName">> => string(),
%%   <<"Error">> => string(),
%%   <<"ResourceConfig">> => backend_api_resource_config(),
%%   <<"ResourceName">> => string()
%% }
-type get_backend_api_response() :: #{binary() => any()}.


%% Example:
%% delete_backend_storage_response() :: #{
%%   <<"AppId">> => string(),
%%   <<"BackendEnvironmentName">> => string(),
%%   <<"JobId">> => string(),
%%   <<"Status">> => string()
%% }
-type delete_backend_storage_response() :: #{binary() => any()}.


%% Example:
%% import_backend_auth_request() :: #{
%%   <<"IdentityPoolId">> => string(),
%%   <<"NativeClientId">> := string(),
%%   <<"UserPoolId">> := string(),
%%   <<"WebClientId">> := string()
%% }
-type import_backend_auth_request() :: #{binary() => any()}.


%% Example:
%% update_backend_auth_forgot_password_config() :: #{
%%   <<"DeliveryMethod">> => list(any()),
%%   <<"EmailSettings">> => email_settings(),
%%   <<"SmsSettings">> => sms_settings()
%% }
-type update_backend_auth_forgot_password_config() :: #{binary() => any()}.


%% Example:
%% delete_backend_auth_request() :: #{
%%   <<"ResourceName">> := string()
%% }
-type delete_backend_auth_request() :: #{binary() => any()}.


%% Example:
%% update_backend_storage_resource_config() :: #{
%%   <<"Permissions">> => backend_storage_permissions(),
%%   <<"ServiceName">> => list(any())
%% }
-type update_backend_storage_resource_config() :: #{binary() => any()}.


%% Example:
%% create_backend_auth_mfa_config() :: #{
%%   <<"MFAMode">> => list(any()),
%%   <<"Settings">> => settings()
%% }
-type create_backend_auth_mfa_config() :: #{binary() => any()}.


%% Example:
%% delete_backend_api_response() :: #{
%%   <<"AppId">> => string(),
%%   <<"BackendEnvironmentName">> => string(),
%%   <<"Error">> => string(),
%%   <<"JobId">> => string(),
%%   <<"Operation">> => string(),
%%   <<"Status">> => string()
%% }
-type delete_backend_api_response() :: #{binary() => any()}.


%% Example:
%% update_backend_auth_identity_pool_config() :: #{
%%   <<"UnauthenticatedLogin">> => boolean()
%% }
-type update_backend_auth_identity_pool_config() :: #{binary() => any()}.


%% Example:
%% update_backend_auth_verification_message_config() :: #{
%%   <<"DeliveryMethod">> => list(any()),
%%   <<"EmailSettings">> => email_settings(),
%%   <<"SmsSettings">> => sms_settings()
%% }
-type update_backend_auth_verification_message_config() :: #{binary() => any()}.

%% Example:
%% create_token_request() :: #{}
-type create_token_request() :: #{}.


%% Example:
%% update_backend_storage_request() :: #{
%%   <<"ResourceConfig">> := update_backend_storage_resource_config(),
%%   <<"ResourceName">> := string()
%% }
-type update_backend_storage_request() :: #{binary() => any()}.


%% Example:
%% create_backend_api_request() :: #{
%%   <<"BackendEnvironmentName">> := string(),
%%   <<"ResourceConfig">> := backend_api_resource_config(),
%%   <<"ResourceName">> := string()
%% }
-type create_backend_api_request() :: #{binary() => any()}.


%% Example:
%% update_backend_job_response() :: #{
%%   <<"AppId">> => string(),
%%   <<"BackendEnvironmentName">> => string(),
%%   <<"CreateTime">> => string(),
%%   <<"Error">> => string(),
%%   <<"JobId">> => string(),
%%   <<"Operation">> => string(),
%%   <<"Status">> => string(),
%%   <<"UpdateTime">> => string()
%% }
-type update_backend_job_response() :: #{binary() => any()}.


%% Example:
%% clone_backend_response() :: #{
%%   <<"AppId">> => string(),
%%   <<"BackendEnvironmentName">> => string(),
%%   <<"Error">> => string(),
%%   <<"JobId">> => string(),
%%   <<"Operation">> => string(),
%%   <<"Status">> => string()
%% }
-type clone_backend_response() :: #{binary() => any()}.

-type clone_backend_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type create_backend_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type create_backend_api_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type create_backend_auth_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type create_backend_config_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type create_backend_storage_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type create_token_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type delete_backend_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type delete_backend_api_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type delete_backend_auth_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type delete_backend_storage_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type delete_token_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type generate_backend_api_models_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type get_backend_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type get_backend_api_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type get_backend_api_models_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type get_backend_auth_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type get_backend_job_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type get_backend_storage_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type get_token_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type import_backend_auth_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type import_backend_storage_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type list_backend_jobs_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type list_s3_buckets_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type remove_all_backends_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type remove_backend_config_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type update_backend_api_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type update_backend_auth_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type update_backend_config_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type update_backend_job_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type update_backend_storage_errors() ::
    bad_request_exception() | 
    gateway_timeout_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc This operation clones an existing backend.
-spec clone_backend(aws_client:aws_client(), binary() | list(), binary() | list(), clone_backend_request()) ->
    {ok, clone_backend_response(), tuple()} |
    {error, any()} |
    {error, clone_backend_errors(), tuple()}.
clone_backend(Client, AppId, BackendEnvironmentName, Input) ->
    clone_backend(Client, AppId, BackendEnvironmentName, Input, []).

-spec clone_backend(aws_client:aws_client(), binary() | list(), binary() | list(), clone_backend_request(), proplists:proplist()) ->
    {ok, clone_backend_response(), tuple()} |
    {error, any()} |
    {error, clone_backend_errors(), tuple()}.
clone_backend(Client, AppId, BackendEnvironmentName, Input0, Options0) ->
    Method = post,
    Path = ["/backend/", aws_util:encode_uri(AppId), "/environments/", aws_util:encode_uri(BackendEnvironmentName), "/clone"],
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

%% @doc This operation creates a backend for an Amplify app.
%%
%% Backends are automatically created at the time of app creation.
-spec create_backend(aws_client:aws_client(), create_backend_request()) ->
    {ok, create_backend_response(), tuple()} |
    {error, any()} |
    {error, create_backend_errors(), tuple()}.
create_backend(Client, Input) ->
    create_backend(Client, Input, []).

-spec create_backend(aws_client:aws_client(), create_backend_request(), proplists:proplist()) ->
    {ok, create_backend_response(), tuple()} |
    {error, any()} |
    {error, create_backend_errors(), tuple()}.
create_backend(Client, Input0, Options0) ->
    Method = post,
    Path = ["/backend"],
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

%% @doc Creates a new backend API resource.
-spec create_backend_api(aws_client:aws_client(), binary() | list(), create_backend_api_request()) ->
    {ok, create_backend_api_response(), tuple()} |
    {error, any()} |
    {error, create_backend_api_errors(), tuple()}.
create_backend_api(Client, AppId, Input) ->
    create_backend_api(Client, AppId, Input, []).

-spec create_backend_api(aws_client:aws_client(), binary() | list(), create_backend_api_request(), proplists:proplist()) ->
    {ok, create_backend_api_response(), tuple()} |
    {error, any()} |
    {error, create_backend_api_errors(), tuple()}.
create_backend_api(Client, AppId, Input0, Options0) ->
    Method = post,
    Path = ["/backend/", aws_util:encode_uri(AppId), "/api"],
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

%% @doc Creates a new backend authentication resource.
-spec create_backend_auth(aws_client:aws_client(), binary() | list(), create_backend_auth_request()) ->
    {ok, create_backend_auth_response(), tuple()} |
    {error, any()} |
    {error, create_backend_auth_errors(), tuple()}.
create_backend_auth(Client, AppId, Input) ->
    create_backend_auth(Client, AppId, Input, []).

-spec create_backend_auth(aws_client:aws_client(), binary() | list(), create_backend_auth_request(), proplists:proplist()) ->
    {ok, create_backend_auth_response(), tuple()} |
    {error, any()} |
    {error, create_backend_auth_errors(), tuple()}.
create_backend_auth(Client, AppId, Input0, Options0) ->
    Method = post,
    Path = ["/backend/", aws_util:encode_uri(AppId), "/auth"],
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

%% @doc Creates a config object for a backend.
-spec create_backend_config(aws_client:aws_client(), binary() | list(), create_backend_config_request()) ->
    {ok, create_backend_config_response(), tuple()} |
    {error, any()} |
    {error, create_backend_config_errors(), tuple()}.
create_backend_config(Client, AppId, Input) ->
    create_backend_config(Client, AppId, Input, []).

-spec create_backend_config(aws_client:aws_client(), binary() | list(), create_backend_config_request(), proplists:proplist()) ->
    {ok, create_backend_config_response(), tuple()} |
    {error, any()} |
    {error, create_backend_config_errors(), tuple()}.
create_backend_config(Client, AppId, Input0, Options0) ->
    Method = post,
    Path = ["/backend/", aws_util:encode_uri(AppId), "/config"],
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

%% @doc Creates a backend storage resource.
-spec create_backend_storage(aws_client:aws_client(), binary() | list(), create_backend_storage_request()) ->
    {ok, create_backend_storage_response(), tuple()} |
    {error, any()} |
    {error, create_backend_storage_errors(), tuple()}.
create_backend_storage(Client, AppId, Input) ->
    create_backend_storage(Client, AppId, Input, []).

-spec create_backend_storage(aws_client:aws_client(), binary() | list(), create_backend_storage_request(), proplists:proplist()) ->
    {ok, create_backend_storage_response(), tuple()} |
    {error, any()} |
    {error, create_backend_storage_errors(), tuple()}.
create_backend_storage(Client, AppId, Input0, Options0) ->
    Method = post,
    Path = ["/backend/", aws_util:encode_uri(AppId), "/storage"],
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

%% @doc Generates a one-time challenge code to authenticate a user into your
%% Amplify Admin UI.
-spec create_token(aws_client:aws_client(), binary() | list(), create_token_request()) ->
    {ok, create_token_response(), tuple()} |
    {error, any()} |
    {error, create_token_errors(), tuple()}.
create_token(Client, AppId, Input) ->
    create_token(Client, AppId, Input, []).

-spec create_token(aws_client:aws_client(), binary() | list(), create_token_request(), proplists:proplist()) ->
    {ok, create_token_response(), tuple()} |
    {error, any()} |
    {error, create_token_errors(), tuple()}.
create_token(Client, AppId, Input0, Options0) ->
    Method = post,
    Path = ["/backend/", aws_util:encode_uri(AppId), "/challenge"],
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

%% @doc Removes an existing environment from your Amplify project.
-spec delete_backend(aws_client:aws_client(), binary() | list(), binary() | list(), delete_backend_request()) ->
    {ok, delete_backend_response(), tuple()} |
    {error, any()} |
    {error, delete_backend_errors(), tuple()}.
delete_backend(Client, AppId, BackendEnvironmentName, Input) ->
    delete_backend(Client, AppId, BackendEnvironmentName, Input, []).

-spec delete_backend(aws_client:aws_client(), binary() | list(), binary() | list(), delete_backend_request(), proplists:proplist()) ->
    {ok, delete_backend_response(), tuple()} |
    {error, any()} |
    {error, delete_backend_errors(), tuple()}.
delete_backend(Client, AppId, BackendEnvironmentName, Input0, Options0) ->
    Method = post,
    Path = ["/backend/", aws_util:encode_uri(AppId), "/environments/", aws_util:encode_uri(BackendEnvironmentName), "/remove"],
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

%% @doc Deletes an existing backend API resource.
-spec delete_backend_api(aws_client:aws_client(), binary() | list(), binary() | list(), delete_backend_api_request()) ->
    {ok, delete_backend_api_response(), tuple()} |
    {error, any()} |
    {error, delete_backend_api_errors(), tuple()}.
delete_backend_api(Client, AppId, BackendEnvironmentName, Input) ->
    delete_backend_api(Client, AppId, BackendEnvironmentName, Input, []).

-spec delete_backend_api(aws_client:aws_client(), binary() | list(), binary() | list(), delete_backend_api_request(), proplists:proplist()) ->
    {ok, delete_backend_api_response(), tuple()} |
    {error, any()} |
    {error, delete_backend_api_errors(), tuple()}.
delete_backend_api(Client, AppId, BackendEnvironmentName, Input0, Options0) ->
    Method = post,
    Path = ["/backend/", aws_util:encode_uri(AppId), "/api/", aws_util:encode_uri(BackendEnvironmentName), "/remove"],
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

%% @doc Deletes an existing backend authentication resource.
-spec delete_backend_auth(aws_client:aws_client(), binary() | list(), binary() | list(), delete_backend_auth_request()) ->
    {ok, delete_backend_auth_response(), tuple()} |
    {error, any()} |
    {error, delete_backend_auth_errors(), tuple()}.
delete_backend_auth(Client, AppId, BackendEnvironmentName, Input) ->
    delete_backend_auth(Client, AppId, BackendEnvironmentName, Input, []).

-spec delete_backend_auth(aws_client:aws_client(), binary() | list(), binary() | list(), delete_backend_auth_request(), proplists:proplist()) ->
    {ok, delete_backend_auth_response(), tuple()} |
    {error, any()} |
    {error, delete_backend_auth_errors(), tuple()}.
delete_backend_auth(Client, AppId, BackendEnvironmentName, Input0, Options0) ->
    Method = post,
    Path = ["/backend/", aws_util:encode_uri(AppId), "/auth/", aws_util:encode_uri(BackendEnvironmentName), "/remove"],
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

%% @doc Removes the specified backend storage resource.
-spec delete_backend_storage(aws_client:aws_client(), binary() | list(), binary() | list(), delete_backend_storage_request()) ->
    {ok, delete_backend_storage_response(), tuple()} |
    {error, any()} |
    {error, delete_backend_storage_errors(), tuple()}.
delete_backend_storage(Client, AppId, BackendEnvironmentName, Input) ->
    delete_backend_storage(Client, AppId, BackendEnvironmentName, Input, []).

-spec delete_backend_storage(aws_client:aws_client(), binary() | list(), binary() | list(), delete_backend_storage_request(), proplists:proplist()) ->
    {ok, delete_backend_storage_response(), tuple()} |
    {error, any()} |
    {error, delete_backend_storage_errors(), tuple()}.
delete_backend_storage(Client, AppId, BackendEnvironmentName, Input0, Options0) ->
    Method = post,
    Path = ["/backend/", aws_util:encode_uri(AppId), "/storage/", aws_util:encode_uri(BackendEnvironmentName), "/remove"],
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

%% @doc Deletes the challenge token based on the given appId and sessionId.
-spec delete_token(aws_client:aws_client(), binary() | list(), binary() | list(), delete_token_request()) ->
    {ok, delete_token_response(), tuple()} |
    {error, any()} |
    {error, delete_token_errors(), tuple()}.
delete_token(Client, AppId, SessionId, Input) ->
    delete_token(Client, AppId, SessionId, Input, []).

-spec delete_token(aws_client:aws_client(), binary() | list(), binary() | list(), delete_token_request(), proplists:proplist()) ->
    {ok, delete_token_response(), tuple()} |
    {error, any()} |
    {error, delete_token_errors(), tuple()}.
delete_token(Client, AppId, SessionId, Input0, Options0) ->
    Method = post,
    Path = ["/backend/", aws_util:encode_uri(AppId), "/challenge/", aws_util:encode_uri(SessionId), "/remove"],
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

%% @doc Generates a model schema for an existing backend API resource.
-spec generate_backend_api_models(aws_client:aws_client(), binary() | list(), binary() | list(), generate_backend_api_models_request()) ->
    {ok, generate_backend_api_models_response(), tuple()} |
    {error, any()} |
    {error, generate_backend_api_models_errors(), tuple()}.
generate_backend_api_models(Client, AppId, BackendEnvironmentName, Input) ->
    generate_backend_api_models(Client, AppId, BackendEnvironmentName, Input, []).

-spec generate_backend_api_models(aws_client:aws_client(), binary() | list(), binary() | list(), generate_backend_api_models_request(), proplists:proplist()) ->
    {ok, generate_backend_api_models_response(), tuple()} |
    {error, any()} |
    {error, generate_backend_api_models_errors(), tuple()}.
generate_backend_api_models(Client, AppId, BackendEnvironmentName, Input0, Options0) ->
    Method = post,
    Path = ["/backend/", aws_util:encode_uri(AppId), "/api/", aws_util:encode_uri(BackendEnvironmentName), "/generateModels"],
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

%% @doc Provides project-level details for your Amplify UI project.
-spec get_backend(aws_client:aws_client(), binary() | list(), get_backend_request()) ->
    {ok, get_backend_response(), tuple()} |
    {error, any()} |
    {error, get_backend_errors(), tuple()}.
get_backend(Client, AppId, Input) ->
    get_backend(Client, AppId, Input, []).

-spec get_backend(aws_client:aws_client(), binary() | list(), get_backend_request(), proplists:proplist()) ->
    {ok, get_backend_response(), tuple()} |
    {error, any()} |
    {error, get_backend_errors(), tuple()}.
get_backend(Client, AppId, Input0, Options0) ->
    Method = post,
    Path = ["/backend/", aws_util:encode_uri(AppId), "/details"],
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

%% @doc Gets the details for a backend API.
-spec get_backend_api(aws_client:aws_client(), binary() | list(), binary() | list(), get_backend_api_request()) ->
    {ok, get_backend_api_response(), tuple()} |
    {error, any()} |
    {error, get_backend_api_errors(), tuple()}.
get_backend_api(Client, AppId, BackendEnvironmentName, Input) ->
    get_backend_api(Client, AppId, BackendEnvironmentName, Input, []).

-spec get_backend_api(aws_client:aws_client(), binary() | list(), binary() | list(), get_backend_api_request(), proplists:proplist()) ->
    {ok, get_backend_api_response(), tuple()} |
    {error, any()} |
    {error, get_backend_api_errors(), tuple()}.
get_backend_api(Client, AppId, BackendEnvironmentName, Input0, Options0) ->
    Method = post,
    Path = ["/backend/", aws_util:encode_uri(AppId), "/api/", aws_util:encode_uri(BackendEnvironmentName), "/details"],
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

%% @doc Gets a model introspection schema for an existing backend API
%% resource.
-spec get_backend_api_models(aws_client:aws_client(), binary() | list(), binary() | list(), get_backend_api_models_request()) ->
    {ok, get_backend_api_models_response(), tuple()} |
    {error, any()} |
    {error, get_backend_api_models_errors(), tuple()}.
get_backend_api_models(Client, AppId, BackendEnvironmentName, Input) ->
    get_backend_api_models(Client, AppId, BackendEnvironmentName, Input, []).

-spec get_backend_api_models(aws_client:aws_client(), binary() | list(), binary() | list(), get_backend_api_models_request(), proplists:proplist()) ->
    {ok, get_backend_api_models_response(), tuple()} |
    {error, any()} |
    {error, get_backend_api_models_errors(), tuple()}.
get_backend_api_models(Client, AppId, BackendEnvironmentName, Input0, Options0) ->
    Method = post,
    Path = ["/backend/", aws_util:encode_uri(AppId), "/api/", aws_util:encode_uri(BackendEnvironmentName), "/getModels"],
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

%% @doc Gets a backend auth details.
-spec get_backend_auth(aws_client:aws_client(), binary() | list(), binary() | list(), get_backend_auth_request()) ->
    {ok, get_backend_auth_response(), tuple()} |
    {error, any()} |
    {error, get_backend_auth_errors(), tuple()}.
get_backend_auth(Client, AppId, BackendEnvironmentName, Input) ->
    get_backend_auth(Client, AppId, BackendEnvironmentName, Input, []).

-spec get_backend_auth(aws_client:aws_client(), binary() | list(), binary() | list(), get_backend_auth_request(), proplists:proplist()) ->
    {ok, get_backend_auth_response(), tuple()} |
    {error, any()} |
    {error, get_backend_auth_errors(), tuple()}.
get_backend_auth(Client, AppId, BackendEnvironmentName, Input0, Options0) ->
    Method = post,
    Path = ["/backend/", aws_util:encode_uri(AppId), "/auth/", aws_util:encode_uri(BackendEnvironmentName), "/details"],
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

%% @doc Returns information about a specific job.
-spec get_backend_job(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_backend_job_response(), tuple()} |
    {error, any()} |
    {error, get_backend_job_errors(), tuple()}.
get_backend_job(Client, AppId, BackendEnvironmentName, JobId)
  when is_map(Client) ->
    get_backend_job(Client, AppId, BackendEnvironmentName, JobId, #{}, #{}).

-spec get_backend_job(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_backend_job_response(), tuple()} |
    {error, any()} |
    {error, get_backend_job_errors(), tuple()}.
get_backend_job(Client, AppId, BackendEnvironmentName, JobId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_backend_job(Client, AppId, BackendEnvironmentName, JobId, QueryMap, HeadersMap, []).

-spec get_backend_job(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_backend_job_response(), tuple()} |
    {error, any()} |
    {error, get_backend_job_errors(), tuple()}.
get_backend_job(Client, AppId, BackendEnvironmentName, JobId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/backend/", aws_util:encode_uri(AppId), "/job/", aws_util:encode_uri(BackendEnvironmentName), "/", aws_util:encode_uri(JobId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets details for a backend storage resource.
-spec get_backend_storage(aws_client:aws_client(), binary() | list(), binary() | list(), get_backend_storage_request()) ->
    {ok, get_backend_storage_response(), tuple()} |
    {error, any()} |
    {error, get_backend_storage_errors(), tuple()}.
get_backend_storage(Client, AppId, BackendEnvironmentName, Input) ->
    get_backend_storage(Client, AppId, BackendEnvironmentName, Input, []).

-spec get_backend_storage(aws_client:aws_client(), binary() | list(), binary() | list(), get_backend_storage_request(), proplists:proplist()) ->
    {ok, get_backend_storage_response(), tuple()} |
    {error, any()} |
    {error, get_backend_storage_errors(), tuple()}.
get_backend_storage(Client, AppId, BackendEnvironmentName, Input0, Options0) ->
    Method = post,
    Path = ["/backend/", aws_util:encode_uri(AppId), "/storage/", aws_util:encode_uri(BackendEnvironmentName), "/details"],
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

%% @doc Gets the challenge token based on the given appId and sessionId.
-spec get_token(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_token_response(), tuple()} |
    {error, any()} |
    {error, get_token_errors(), tuple()}.
get_token(Client, AppId, SessionId)
  when is_map(Client) ->
    get_token(Client, AppId, SessionId, #{}, #{}).

-spec get_token(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_token_response(), tuple()} |
    {error, any()} |
    {error, get_token_errors(), tuple()}.
get_token(Client, AppId, SessionId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_token(Client, AppId, SessionId, QueryMap, HeadersMap, []).

-spec get_token(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_token_response(), tuple()} |
    {error, any()} |
    {error, get_token_errors(), tuple()}.
get_token(Client, AppId, SessionId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/backend/", aws_util:encode_uri(AppId), "/challenge/", aws_util:encode_uri(SessionId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Imports an existing backend authentication resource.
-spec import_backend_auth(aws_client:aws_client(), binary() | list(), binary() | list(), import_backend_auth_request()) ->
    {ok, import_backend_auth_response(), tuple()} |
    {error, any()} |
    {error, import_backend_auth_errors(), tuple()}.
import_backend_auth(Client, AppId, BackendEnvironmentName, Input) ->
    import_backend_auth(Client, AppId, BackendEnvironmentName, Input, []).

-spec import_backend_auth(aws_client:aws_client(), binary() | list(), binary() | list(), import_backend_auth_request(), proplists:proplist()) ->
    {ok, import_backend_auth_response(), tuple()} |
    {error, any()} |
    {error, import_backend_auth_errors(), tuple()}.
import_backend_auth(Client, AppId, BackendEnvironmentName, Input0, Options0) ->
    Method = post,
    Path = ["/backend/", aws_util:encode_uri(AppId), "/auth/", aws_util:encode_uri(BackendEnvironmentName), "/import"],
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

%% @doc Imports an existing backend storage resource.
-spec import_backend_storage(aws_client:aws_client(), binary() | list(), binary() | list(), import_backend_storage_request()) ->
    {ok, import_backend_storage_response(), tuple()} |
    {error, any()} |
    {error, import_backend_storage_errors(), tuple()}.
import_backend_storage(Client, AppId, BackendEnvironmentName, Input) ->
    import_backend_storage(Client, AppId, BackendEnvironmentName, Input, []).

-spec import_backend_storage(aws_client:aws_client(), binary() | list(), binary() | list(), import_backend_storage_request(), proplists:proplist()) ->
    {ok, import_backend_storage_response(), tuple()} |
    {error, any()} |
    {error, import_backend_storage_errors(), tuple()}.
import_backend_storage(Client, AppId, BackendEnvironmentName, Input0, Options0) ->
    Method = post,
    Path = ["/backend/", aws_util:encode_uri(AppId), "/storage/", aws_util:encode_uri(BackendEnvironmentName), "/import"],
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

%% @doc Lists the jobs for the backend of an Amplify app.
-spec list_backend_jobs(aws_client:aws_client(), binary() | list(), binary() | list(), list_backend_jobs_request()) ->
    {ok, list_backend_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_backend_jobs_errors(), tuple()}.
list_backend_jobs(Client, AppId, BackendEnvironmentName, Input) ->
    list_backend_jobs(Client, AppId, BackendEnvironmentName, Input, []).

-spec list_backend_jobs(aws_client:aws_client(), binary() | list(), binary() | list(), list_backend_jobs_request(), proplists:proplist()) ->
    {ok, list_backend_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_backend_jobs_errors(), tuple()}.
list_backend_jobs(Client, AppId, BackendEnvironmentName, Input0, Options0) ->
    Method = post,
    Path = ["/backend/", aws_util:encode_uri(AppId), "/job/", aws_util:encode_uri(BackendEnvironmentName), ""],
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

%% @doc The list of S3 buckets in your account.
-spec list_s3_buckets(aws_client:aws_client(), list_s3_buckets_request()) ->
    {ok, list_s3_buckets_response(), tuple()} |
    {error, any()} |
    {error, list_s3_buckets_errors(), tuple()}.
list_s3_buckets(Client, Input) ->
    list_s3_buckets(Client, Input, []).

-spec list_s3_buckets(aws_client:aws_client(), list_s3_buckets_request(), proplists:proplist()) ->
    {ok, list_s3_buckets_response(), tuple()} |
    {error, any()} |
    {error, list_s3_buckets_errors(), tuple()}.
list_s3_buckets(Client, Input0, Options0) ->
    Method = post,
    Path = ["/s3Buckets"],
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

%% @doc Removes all backend environments from your Amplify project.
-spec remove_all_backends(aws_client:aws_client(), binary() | list(), remove_all_backends_request()) ->
    {ok, remove_all_backends_response(), tuple()} |
    {error, any()} |
    {error, remove_all_backends_errors(), tuple()}.
remove_all_backends(Client, AppId, Input) ->
    remove_all_backends(Client, AppId, Input, []).

-spec remove_all_backends(aws_client:aws_client(), binary() | list(), remove_all_backends_request(), proplists:proplist()) ->
    {ok, remove_all_backends_response(), tuple()} |
    {error, any()} |
    {error, remove_all_backends_errors(), tuple()}.
remove_all_backends(Client, AppId, Input0, Options0) ->
    Method = post,
    Path = ["/backend/", aws_util:encode_uri(AppId), "/remove"],
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

%% @doc Removes the AWS resources required to access the Amplify Admin UI.
-spec remove_backend_config(aws_client:aws_client(), binary() | list(), remove_backend_config_request()) ->
    {ok, remove_backend_config_response(), tuple()} |
    {error, any()} |
    {error, remove_backend_config_errors(), tuple()}.
remove_backend_config(Client, AppId, Input) ->
    remove_backend_config(Client, AppId, Input, []).

-spec remove_backend_config(aws_client:aws_client(), binary() | list(), remove_backend_config_request(), proplists:proplist()) ->
    {ok, remove_backend_config_response(), tuple()} |
    {error, any()} |
    {error, remove_backend_config_errors(), tuple()}.
remove_backend_config(Client, AppId, Input0, Options0) ->
    Method = post,
    Path = ["/backend/", aws_util:encode_uri(AppId), "/config/remove"],
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

%% @doc Updates an existing backend API resource.
-spec update_backend_api(aws_client:aws_client(), binary() | list(), binary() | list(), update_backend_api_request()) ->
    {ok, update_backend_api_response(), tuple()} |
    {error, any()} |
    {error, update_backend_api_errors(), tuple()}.
update_backend_api(Client, AppId, BackendEnvironmentName, Input) ->
    update_backend_api(Client, AppId, BackendEnvironmentName, Input, []).

-spec update_backend_api(aws_client:aws_client(), binary() | list(), binary() | list(), update_backend_api_request(), proplists:proplist()) ->
    {ok, update_backend_api_response(), tuple()} |
    {error, any()} |
    {error, update_backend_api_errors(), tuple()}.
update_backend_api(Client, AppId, BackendEnvironmentName, Input0, Options0) ->
    Method = post,
    Path = ["/backend/", aws_util:encode_uri(AppId), "/api/", aws_util:encode_uri(BackendEnvironmentName), ""],
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

%% @doc Updates an existing backend authentication resource.
-spec update_backend_auth(aws_client:aws_client(), binary() | list(), binary() | list(), update_backend_auth_request()) ->
    {ok, update_backend_auth_response(), tuple()} |
    {error, any()} |
    {error, update_backend_auth_errors(), tuple()}.
update_backend_auth(Client, AppId, BackendEnvironmentName, Input) ->
    update_backend_auth(Client, AppId, BackendEnvironmentName, Input, []).

-spec update_backend_auth(aws_client:aws_client(), binary() | list(), binary() | list(), update_backend_auth_request(), proplists:proplist()) ->
    {ok, update_backend_auth_response(), tuple()} |
    {error, any()} |
    {error, update_backend_auth_errors(), tuple()}.
update_backend_auth(Client, AppId, BackendEnvironmentName, Input0, Options0) ->
    Method = post,
    Path = ["/backend/", aws_util:encode_uri(AppId), "/auth/", aws_util:encode_uri(BackendEnvironmentName), ""],
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

%% @doc Updates the AWS resources required to access the Amplify Admin UI.
-spec update_backend_config(aws_client:aws_client(), binary() | list(), update_backend_config_request()) ->
    {ok, update_backend_config_response(), tuple()} |
    {error, any()} |
    {error, update_backend_config_errors(), tuple()}.
update_backend_config(Client, AppId, Input) ->
    update_backend_config(Client, AppId, Input, []).

-spec update_backend_config(aws_client:aws_client(), binary() | list(), update_backend_config_request(), proplists:proplist()) ->
    {ok, update_backend_config_response(), tuple()} |
    {error, any()} |
    {error, update_backend_config_errors(), tuple()}.
update_backend_config(Client, AppId, Input0, Options0) ->
    Method = post,
    Path = ["/backend/", aws_util:encode_uri(AppId), "/config/update"],
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

%% @doc Updates a specific job.
-spec update_backend_job(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), update_backend_job_request()) ->
    {ok, update_backend_job_response(), tuple()} |
    {error, any()} |
    {error, update_backend_job_errors(), tuple()}.
update_backend_job(Client, AppId, BackendEnvironmentName, JobId, Input) ->
    update_backend_job(Client, AppId, BackendEnvironmentName, JobId, Input, []).

-spec update_backend_job(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), update_backend_job_request(), proplists:proplist()) ->
    {ok, update_backend_job_response(), tuple()} |
    {error, any()} |
    {error, update_backend_job_errors(), tuple()}.
update_backend_job(Client, AppId, BackendEnvironmentName, JobId, Input0, Options0) ->
    Method = post,
    Path = ["/backend/", aws_util:encode_uri(AppId), "/job/", aws_util:encode_uri(BackendEnvironmentName), "/", aws_util:encode_uri(JobId), ""],
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

%% @doc Updates an existing backend storage resource.
-spec update_backend_storage(aws_client:aws_client(), binary() | list(), binary() | list(), update_backend_storage_request()) ->
    {ok, update_backend_storage_response(), tuple()} |
    {error, any()} |
    {error, update_backend_storage_errors(), tuple()}.
update_backend_storage(Client, AppId, BackendEnvironmentName, Input) ->
    update_backend_storage(Client, AppId, BackendEnvironmentName, Input, []).

-spec update_backend_storage(aws_client:aws_client(), binary() | list(), binary() | list(), update_backend_storage_request(), proplists:proplist()) ->
    {ok, update_backend_storage_response(), tuple()} |
    {error, any()} |
    {error, update_backend_storage_errors(), tuple()}.
update_backend_storage(Client, AppId, BackendEnvironmentName, Input0, Options0) ->
    Method = post,
    Path = ["/backend/", aws_util:encode_uri(AppId), "/storage/", aws_util:encode_uri(BackendEnvironmentName), ""],
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
    Client1 = Client#{service => <<"amplifybackend">>},
    Host = build_host(<<"amplifybackend">>, Client1),
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
