%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc The Amazon Chime SDK Identity APIs in this section allow software
%% developers to create
%% and manage unique instances of their messaging applications.
%%
%% These APIs provide the
%% overarching framework for creating and sending messages. For more
%% information about the
%% identity APIs, refer to Amazon Chime SDK identity:
%% https://docs.aws.amazon.com/chime/latest/APIReference/API_Operations_Amazon_Chime_SDK_Identity.html.
-module(aws_chime_sdk_identity).

-export([create_app_instance/2,
         create_app_instance/3,
         create_app_instance_admin/3,
         create_app_instance_admin/4,
         create_app_instance_bot/2,
         create_app_instance_bot/3,
         create_app_instance_user/2,
         create_app_instance_user/3,
         delete_app_instance/3,
         delete_app_instance/4,
         delete_app_instance_admin/4,
         delete_app_instance_admin/5,
         delete_app_instance_bot/3,
         delete_app_instance_bot/4,
         delete_app_instance_user/3,
         delete_app_instance_user/4,
         deregister_app_instance_user_endpoint/4,
         deregister_app_instance_user_endpoint/5,
         describe_app_instance/2,
         describe_app_instance/4,
         describe_app_instance/5,
         describe_app_instance_admin/3,
         describe_app_instance_admin/5,
         describe_app_instance_admin/6,
         describe_app_instance_bot/2,
         describe_app_instance_bot/4,
         describe_app_instance_bot/5,
         describe_app_instance_user/2,
         describe_app_instance_user/4,
         describe_app_instance_user/5,
         describe_app_instance_user_endpoint/3,
         describe_app_instance_user_endpoint/5,
         describe_app_instance_user_endpoint/6,
         get_app_instance_retention_settings/2,
         get_app_instance_retention_settings/4,
         get_app_instance_retention_settings/5,
         list_app_instance_admins/2,
         list_app_instance_admins/4,
         list_app_instance_admins/5,
         list_app_instance_bots/2,
         list_app_instance_bots/4,
         list_app_instance_bots/5,
         list_app_instance_user_endpoints/2,
         list_app_instance_user_endpoints/4,
         list_app_instance_user_endpoints/5,
         list_app_instance_users/2,
         list_app_instance_users/4,
         list_app_instance_users/5,
         list_app_instances/1,
         list_app_instances/3,
         list_app_instances/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         put_app_instance_retention_settings/3,
         put_app_instance_retention_settings/4,
         put_app_instance_user_expiration_settings/3,
         put_app_instance_user_expiration_settings/4,
         register_app_instance_user_endpoint/3,
         register_app_instance_user_endpoint/4,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_app_instance/3,
         update_app_instance/4,
         update_app_instance_bot/3,
         update_app_instance_bot/4,
         update_app_instance_user/3,
         update_app_instance_user/4,
         update_app_instance_user_endpoint/4,
         update_app_instance_user_endpoint/5]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% list_app_instances_response() :: #{
%%   <<"AppInstances">> => list(app_instance_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_app_instances_response() :: #{binary() => any()}.


%% Example:
%% app_instance_bot_summary() :: #{
%%   <<"AppInstanceBotArn">> => string(),
%%   <<"Metadata">> => string(),
%%   <<"Name">> => string()
%% }
-type app_instance_bot_summary() :: #{binary() => any()}.


%% Example:
%% put_app_instance_user_expiration_settings_request() :: #{
%%   <<"ExpirationSettings">> => expiration_settings()
%% }
-type put_app_instance_user_expiration_settings_request() :: #{binary() => any()}.

%% Example:
%% delete_app_instance_admin_request() :: #{}
-type delete_app_instance_admin_request() :: #{}.

%% Example:
%% delete_app_instance_user_request() :: #{}
-type delete_app_instance_user_request() :: #{}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"ResourceARN">> := string(),
%%   <<"Tags">> := list(tag())
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% list_app_instance_admins_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_app_instance_admins_request() :: #{binary() => any()}.


%% Example:
%% endpoint_state() :: #{
%%   <<"Status">> => list(any()),
%%   <<"StatusReason">> => list(any())
%% }
-type endpoint_state() :: #{binary() => any()}.


%% Example:
%% list_app_instance_bots_request() :: #{
%%   <<"AppInstanceArn">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_app_instance_bots_request() :: #{binary() => any()}.


%% Example:
%% create_app_instance_response() :: #{
%%   <<"AppInstanceArn">> => string()
%% }
-type create_app_instance_response() :: #{binary() => any()}.


%% Example:
%% update_app_instance_response() :: #{
%%   <<"AppInstanceArn">> => string()
%% }
-type update_app_instance_response() :: #{binary() => any()}.


%% Example:
%% lex_configuration() :: #{
%%   <<"InvokedBy">> => invoked_by(),
%%   <<"LexBotAliasArn">> => string(),
%%   <<"LocaleId">> => string(),
%%   <<"RespondsTo">> => list(any()),
%%   <<"WelcomeIntent">> => string()
%% }
-type lex_configuration() :: #{binary() => any()}.


%% Example:
%% list_app_instance_admins_response() :: #{
%%   <<"AppInstanceAdmins">> => list(app_instance_admin_summary()),
%%   <<"AppInstanceArn">> => string(),
%%   <<"NextToken">> => string()
%% }
-type list_app_instance_admins_response() :: #{binary() => any()}.


%% Example:
%% service_failure_exception() :: #{
%%   <<"Code">> => list(any()),
%%   <<"Message">> => string()
%% }
-type service_failure_exception() :: #{binary() => any()}.


%% Example:
%% identity() :: #{
%%   <<"Arn">> => string(),
%%   <<"Name">> => string()
%% }
-type identity() :: #{binary() => any()}.


%% Example:
%% forbidden_exception() :: #{
%%   <<"Code">> => list(any()),
%%   <<"Message">> => string()
%% }
-type forbidden_exception() :: #{binary() => any()}.


%% Example:
%% unauthorized_client_exception() :: #{
%%   <<"Code">> => list(any()),
%%   <<"Message">> => string()
%% }
-type unauthorized_client_exception() :: #{binary() => any()}.

%% Example:
%% describe_app_instance_request() :: #{}
-type describe_app_instance_request() :: #{}.


%% Example:
%% list_app_instances_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_app_instances_request() :: #{binary() => any()}.


%% Example:
%% configuration() :: #{
%%   <<"Lex">> => lex_configuration()
%% }
-type configuration() :: #{binary() => any()}.


%% Example:
%% update_app_instance_request() :: #{
%%   <<"Metadata">> := string(),
%%   <<"Name">> := string()
%% }
-type update_app_instance_request() :: #{binary() => any()}.


%% Example:
%% throttled_client_exception() :: #{
%%   <<"Code">> => list(any()),
%%   <<"Message">> => string()
%% }
-type throttled_client_exception() :: #{binary() => any()}.


%% Example:
%% endpoint_attributes() :: #{
%%   <<"DeviceToken">> => string(),
%%   <<"VoipDeviceToken">> => string()
%% }
-type endpoint_attributes() :: #{binary() => any()}.


%% Example:
%% list_app_instance_users_request() :: #{
%%   <<"AppInstanceArn">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_app_instance_users_request() :: #{binary() => any()}.


%% Example:
%% expiration_settings() :: #{
%%   <<"ExpirationCriterion">> => list(any()),
%%   <<"ExpirationDays">> => integer()
%% }
-type expiration_settings() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"ResourceARN">> := string(),
%%   <<"TagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% put_app_instance_retention_settings_request() :: #{
%%   <<"AppInstanceRetentionSettings">> := app_instance_retention_settings()
%% }
-type put_app_instance_retention_settings_request() :: #{binary() => any()}.


%% Example:
%% register_app_instance_user_endpoint_request() :: #{
%%   <<"AllowMessages">> => list(any()),
%%   <<"ClientRequestToken">> := string(),
%%   <<"EndpointAttributes">> := endpoint_attributes(),
%%   <<"Name">> => string(),
%%   <<"ResourceArn">> := string(),
%%   <<"Type">> := list(any())
%% }
-type register_app_instance_user_endpoint_request() :: #{binary() => any()}.

%% Example:
%% get_app_instance_retention_settings_request() :: #{}
-type get_app_instance_retention_settings_request() :: #{}.


%% Example:
%% conflict_exception() :: #{
%%   <<"Code">> => list(any()),
%%   <<"Message">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.

%% Example:
%% delete_app_instance_bot_request() :: #{}
-type delete_app_instance_bot_request() :: #{}.


%% Example:
%% put_app_instance_user_expiration_settings_response() :: #{
%%   <<"AppInstanceUserArn">> => string(),
%%   <<"ExpirationSettings">> => expiration_settings()
%% }
-type put_app_instance_user_expiration_settings_response() :: #{binary() => any()}.


%% Example:
%% update_app_instance_user_endpoint_response() :: #{
%%   <<"AppInstanceUserArn">> => string(),
%%   <<"EndpointId">> => string()
%% }
-type update_app_instance_user_endpoint_response() :: #{binary() => any()}.


%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.


%% Example:
%% describe_app_instance_user_response() :: #{
%%   <<"AppInstanceUser">> => app_instance_user()
%% }
-type describe_app_instance_user_response() :: #{binary() => any()}.


%% Example:
%% describe_app_instance_bot_response() :: #{
%%   <<"AppInstanceBot">> => app_instance_bot()
%% }
-type describe_app_instance_bot_response() :: #{binary() => any()}.


%% Example:
%% describe_app_instance_response() :: #{
%%   <<"AppInstance">> => app_instance()
%% }
-type describe_app_instance_response() :: #{binary() => any()}.


%% Example:
%% update_app_instance_user_response() :: #{
%%   <<"AppInstanceUserArn">> => string()
%% }
-type update_app_instance_user_response() :: #{binary() => any()}.


%% Example:
%% list_app_instance_users_response() :: #{
%%   <<"AppInstanceArn">> => string(),
%%   <<"AppInstanceUsers">> => list(app_instance_user_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_app_instance_users_response() :: #{binary() => any()}.


%% Example:
%% resource_limit_exceeded_exception() :: #{
%%   <<"Code">> => list(any()),
%%   <<"Message">> => string()
%% }
-type resource_limit_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% app_instance_summary() :: #{
%%   <<"AppInstanceArn">> => string(),
%%   <<"Metadata">> => string(),
%%   <<"Name">> => string()
%% }
-type app_instance_summary() :: #{binary() => any()}.


%% Example:
%% not_found_exception() :: #{
%%   <<"Code">> => list(any()),
%%   <<"Message">> => string()
%% }
-type not_found_exception() :: #{binary() => any()}.


%% Example:
%% app_instance_user() :: #{
%%   <<"AppInstanceUserArn">> => string(),
%%   <<"CreatedTimestamp">> => non_neg_integer(),
%%   <<"ExpirationSettings">> => expiration_settings(),
%%   <<"LastUpdatedTimestamp">> => non_neg_integer(),
%%   <<"Metadata">> => string(),
%%   <<"Name">> => string()
%% }
-type app_instance_user() :: #{binary() => any()}.


%% Example:
%% list_app_instance_user_endpoints_response() :: #{
%%   <<"AppInstanceUserEndpoints">> => list(app_instance_user_endpoint_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_app_instance_user_endpoints_response() :: #{binary() => any()}.


%% Example:
%% update_app_instance_bot_response() :: #{
%%   <<"AppInstanceBotArn">> => string()
%% }
-type update_app_instance_bot_response() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"Tags">> => list(tag())
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% channel_retention_settings() :: #{
%%   <<"RetentionDays">> => integer()
%% }
-type channel_retention_settings() :: #{binary() => any()}.


%% Example:
%% app_instance_user_endpoint() :: #{
%%   <<"AllowMessages">> => list(any()),
%%   <<"AppInstanceUserArn">> => string(),
%%   <<"CreatedTimestamp">> => non_neg_integer(),
%%   <<"EndpointAttributes">> => endpoint_attributes(),
%%   <<"EndpointId">> => string(),
%%   <<"EndpointState">> => endpoint_state(),
%%   <<"LastUpdatedTimestamp">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"ResourceArn">> => string(),
%%   <<"Type">> => list(any())
%% }
-type app_instance_user_endpoint() :: #{binary() => any()}.


%% Example:
%% service_unavailable_exception() :: #{
%%   <<"Code">> => list(any()),
%%   <<"Message">> => string()
%% }
-type service_unavailable_exception() :: #{binary() => any()}.


%% Example:
%% app_instance_user_endpoint_summary() :: #{
%%   <<"AllowMessages">> => list(any()),
%%   <<"AppInstanceUserArn">> => string(),
%%   <<"EndpointId">> => string(),
%%   <<"EndpointState">> => endpoint_state(),
%%   <<"Name">> => string(),
%%   <<"Type">> => list(any())
%% }
-type app_instance_user_endpoint_summary() :: #{binary() => any()}.


%% Example:
%% get_app_instance_retention_settings_response() :: #{
%%   <<"AppInstanceRetentionSettings">> => app_instance_retention_settings(),
%%   <<"InitiateDeletionTimestamp">> => non_neg_integer()
%% }
-type get_app_instance_retention_settings_response() :: #{binary() => any()}.


%% Example:
%% app_instance_admin() :: #{
%%   <<"Admin">> => identity(),
%%   <<"AppInstanceArn">> => string(),
%%   <<"CreatedTimestamp">> => non_neg_integer()
%% }
-type app_instance_admin() :: #{binary() => any()}.


%% Example:
%% list_app_instance_bots_response() :: #{
%%   <<"AppInstanceArn">> => string(),
%%   <<"AppInstanceBots">> => list(app_instance_bot_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_app_instance_bots_response() :: #{binary() => any()}.


%% Example:
%% update_app_instance_user_request() :: #{
%%   <<"Metadata">> := string(),
%%   <<"Name">> := string()
%% }
-type update_app_instance_user_request() :: #{binary() => any()}.


%% Example:
%% describe_app_instance_admin_response() :: #{
%%   <<"AppInstanceAdmin">> => app_instance_admin()
%% }
-type describe_app_instance_admin_response() :: #{binary() => any()}.


%% Example:
%% create_app_instance_request() :: #{
%%   <<"ClientRequestToken">> := string(),
%%   <<"Metadata">> => string(),
%%   <<"Name">> := string(),
%%   <<"Tags">> => list(tag())
%% }
-type create_app_instance_request() :: #{binary() => any()}.


%% Example:
%% create_app_instance_bot_response() :: #{
%%   <<"AppInstanceBotArn">> => string()
%% }
-type create_app_instance_bot_response() :: #{binary() => any()}.


%% Example:
%% app_instance_admin_summary() :: #{
%%   <<"Admin">> => identity()
%% }
-type app_instance_admin_summary() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_request() :: #{
%%   <<"ResourceARN">> := string()
%% }
-type list_tags_for_resource_request() :: #{binary() => any()}.


%% Example:
%% invoked_by() :: #{
%%   <<"StandardMessages">> => list(any()),
%%   <<"TargetedMessages">> => list(any())
%% }
-type invoked_by() :: #{binary() => any()}.


%% Example:
%% create_app_instance_bot_request() :: #{
%%   <<"AppInstanceArn">> := string(),
%%   <<"ClientRequestToken">> := string(),
%%   <<"Configuration">> := configuration(),
%%   <<"Metadata">> => string(),
%%   <<"Name">> => string(),
%%   <<"Tags">> => list(tag())
%% }
-type create_app_instance_bot_request() :: #{binary() => any()}.


%% Example:
%% create_app_instance_admin_response() :: #{
%%   <<"AppInstanceAdmin">> => identity(),
%%   <<"AppInstanceArn">> => string()
%% }
-type create_app_instance_admin_response() :: #{binary() => any()}.


%% Example:
%% put_app_instance_retention_settings_response() :: #{
%%   <<"AppInstanceRetentionSettings">> => app_instance_retention_settings(),
%%   <<"InitiateDeletionTimestamp">> => non_neg_integer()
%% }
-type put_app_instance_retention_settings_response() :: #{binary() => any()}.


%% Example:
%% app_instance_retention_settings() :: #{
%%   <<"ChannelRetentionSettings">> => channel_retention_settings()
%% }
-type app_instance_retention_settings() :: #{binary() => any()}.


%% Example:
%% create_app_instance_admin_request() :: #{
%%   <<"AppInstanceAdminArn">> := string()
%% }
-type create_app_instance_admin_request() :: #{binary() => any()}.


%% Example:
%% bad_request_exception() :: #{
%%   <<"Code">> => list(any()),
%%   <<"Message">> => string()
%% }
-type bad_request_exception() :: #{binary() => any()}.

%% Example:
%% describe_app_instance_admin_request() :: #{}
-type describe_app_instance_admin_request() :: #{}.

%% Example:
%% describe_app_instance_user_endpoint_request() :: #{}
-type describe_app_instance_user_endpoint_request() :: #{}.

%% Example:
%% deregister_app_instance_user_endpoint_request() :: #{}
-type deregister_app_instance_user_endpoint_request() :: #{}.

%% Example:
%% delete_app_instance_request() :: #{}
-type delete_app_instance_request() :: #{}.


%% Example:
%% app_instance_user_summary() :: #{
%%   <<"AppInstanceUserArn">> => string(),
%%   <<"Metadata">> => string(),
%%   <<"Name">> => string()
%% }
-type app_instance_user_summary() :: #{binary() => any()}.


%% Example:
%% register_app_instance_user_endpoint_response() :: #{
%%   <<"AppInstanceUserArn">> => string(),
%%   <<"EndpointId">> => string()
%% }
-type register_app_instance_user_endpoint_response() :: #{binary() => any()}.


%% Example:
%% update_app_instance_user_endpoint_request() :: #{
%%   <<"AllowMessages">> => list(any()),
%%   <<"Name">> => string()
%% }
-type update_app_instance_user_endpoint_request() :: #{binary() => any()}.


%% Example:
%% describe_app_instance_user_endpoint_response() :: #{
%%   <<"AppInstanceUserEndpoint">> => app_instance_user_endpoint()
%% }
-type describe_app_instance_user_endpoint_response() :: #{binary() => any()}.

%% Example:
%% describe_app_instance_user_request() :: #{}
-type describe_app_instance_user_request() :: #{}.


%% Example:
%% update_app_instance_bot_request() :: #{
%%   <<"Configuration">> => configuration(),
%%   <<"Metadata">> := string(),
%%   <<"Name">> := string()
%% }
-type update_app_instance_bot_request() :: #{binary() => any()}.


%% Example:
%% list_app_instance_user_endpoints_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_app_instance_user_endpoints_request() :: #{binary() => any()}.

%% Example:
%% describe_app_instance_bot_request() :: #{}
-type describe_app_instance_bot_request() :: #{}.


%% Example:
%% create_app_instance_user_request() :: #{
%%   <<"AppInstanceArn">> := string(),
%%   <<"AppInstanceUserId">> := string(),
%%   <<"ClientRequestToken">> := string(),
%%   <<"ExpirationSettings">> => expiration_settings(),
%%   <<"Metadata">> => string(),
%%   <<"Name">> := string(),
%%   <<"Tags">> => list(tag())
%% }
-type create_app_instance_user_request() :: #{binary() => any()}.


%% Example:
%% app_instance() :: #{
%%   <<"AppInstanceArn">> => string(),
%%   <<"CreatedTimestamp">> => non_neg_integer(),
%%   <<"LastUpdatedTimestamp">> => non_neg_integer(),
%%   <<"Metadata">> => string(),
%%   <<"Name">> => string()
%% }
-type app_instance() :: #{binary() => any()}.


%% Example:
%% app_instance_bot() :: #{
%%   <<"AppInstanceBotArn">> => string(),
%%   <<"Configuration">> => configuration(),
%%   <<"CreatedTimestamp">> => non_neg_integer(),
%%   <<"LastUpdatedTimestamp">> => non_neg_integer(),
%%   <<"Metadata">> => string(),
%%   <<"Name">> => string()
%% }
-type app_instance_bot() :: #{binary() => any()}.


%% Example:
%% create_app_instance_user_response() :: #{
%%   <<"AppInstanceUserArn">> => string()
%% }
-type create_app_instance_user_response() :: #{binary() => any()}.

-type create_app_instance_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    resource_limit_exceeded_exception() | 
    conflict_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type create_app_instance_admin_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    resource_limit_exceeded_exception() | 
    conflict_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type create_app_instance_bot_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    resource_limit_exceeded_exception() | 
    conflict_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type create_app_instance_user_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    resource_limit_exceeded_exception() | 
    conflict_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type delete_app_instance_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    resource_limit_exceeded_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type delete_app_instance_admin_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    resource_limit_exceeded_exception() | 
    conflict_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type delete_app_instance_bot_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    resource_limit_exceeded_exception() | 
    conflict_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type delete_app_instance_user_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    resource_limit_exceeded_exception() | 
    conflict_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type deregister_app_instance_user_endpoint_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type describe_app_instance_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type describe_app_instance_admin_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type describe_app_instance_bot_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type describe_app_instance_user_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type describe_app_instance_user_endpoint_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type get_app_instance_retention_settings_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type list_app_instance_admins_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    resource_limit_exceeded_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type list_app_instance_bots_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    resource_limit_exceeded_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type list_app_instance_user_endpoints_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type list_app_instance_users_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type list_app_instances_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type list_tags_for_resource_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type put_app_instance_retention_settings_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type put_app_instance_user_expiration_settings_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    conflict_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type register_app_instance_user_endpoint_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    resource_limit_exceeded_exception() | 
    conflict_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type tag_resource_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    resource_limit_exceeded_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type untag_resource_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type update_app_instance_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    conflict_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type update_app_instance_bot_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    resource_limit_exceeded_exception() | 
    conflict_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type update_app_instance_user_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    resource_limit_exceeded_exception() | 
    conflict_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

-type update_app_instance_user_endpoint_errors() ::
    bad_request_exception() | 
    service_unavailable_exception() | 
    conflict_exception() | 
    throttled_client_exception() | 
    unauthorized_client_exception() | 
    forbidden_exception() | 
    service_failure_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Creates an Amazon Chime SDK messaging `AppInstance' under an AWS
%% account.
%%
%% Only SDK messaging customers use this API. `CreateAppInstance'
%% supports
%% idempotency behavior as described in the AWS API Standard.
%%
%% identity
-spec create_app_instance(aws_client:aws_client(), create_app_instance_request()) ->
    {ok, create_app_instance_response(), tuple()} |
    {error, any()} |
    {error, create_app_instance_errors(), tuple()}.
create_app_instance(Client, Input) ->
    create_app_instance(Client, Input, []).

-spec create_app_instance(aws_client:aws_client(), create_app_instance_request(), proplists:proplist()) ->
    {ok, create_app_instance_response(), tuple()} |
    {error, any()} |
    {error, create_app_instance_errors(), tuple()}.
create_app_instance(Client, Input0, Options0) ->
    Method = post,
    Path = ["/app-instances"],
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

%% @doc Promotes an `AppInstanceUser' or `AppInstanceBot' to an
%% `AppInstanceAdmin'.
%%
%% The
%% promoted entity can perform the following actions.
%%
%% `ChannelModerator' actions across all channels in the
%% `AppInstance'.
%%
%% `DeleteChannelMessage' actions.
%%
%% Only an `AppInstanceUser' and `AppInstanceBot' can be promoted to
%% an `AppInstanceAdmin'
%% role.
-spec create_app_instance_admin(aws_client:aws_client(), binary() | list(), create_app_instance_admin_request()) ->
    {ok, create_app_instance_admin_response(), tuple()} |
    {error, any()} |
    {error, create_app_instance_admin_errors(), tuple()}.
create_app_instance_admin(Client, AppInstanceArn, Input) ->
    create_app_instance_admin(Client, AppInstanceArn, Input, []).

-spec create_app_instance_admin(aws_client:aws_client(), binary() | list(), create_app_instance_admin_request(), proplists:proplist()) ->
    {ok, create_app_instance_admin_response(), tuple()} |
    {error, any()} |
    {error, create_app_instance_admin_errors(), tuple()}.
create_app_instance_admin(Client, AppInstanceArn, Input0, Options0) ->
    Method = post,
    Path = ["/app-instances/", aws_util:encode_uri(AppInstanceArn), "/admins"],
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

%% @doc Creates a bot under an Amazon Chime `AppInstance'.
%%
%% The request consists of a
%% unique `Configuration' and `Name' for that bot.
-spec create_app_instance_bot(aws_client:aws_client(), create_app_instance_bot_request()) ->
    {ok, create_app_instance_bot_response(), tuple()} |
    {error, any()} |
    {error, create_app_instance_bot_errors(), tuple()}.
create_app_instance_bot(Client, Input) ->
    create_app_instance_bot(Client, Input, []).

-spec create_app_instance_bot(aws_client:aws_client(), create_app_instance_bot_request(), proplists:proplist()) ->
    {ok, create_app_instance_bot_response(), tuple()} |
    {error, any()} |
    {error, create_app_instance_bot_errors(), tuple()}.
create_app_instance_bot(Client, Input0, Options0) ->
    Method = post,
    Path = ["/app-instance-bots"],
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

%% @doc Creates a user under an Amazon Chime `AppInstance'.
%%
%% The request consists of a
%% unique `appInstanceUserId' and `Name' for that user.
-spec create_app_instance_user(aws_client:aws_client(), create_app_instance_user_request()) ->
    {ok, create_app_instance_user_response(), tuple()} |
    {error, any()} |
    {error, create_app_instance_user_errors(), tuple()}.
create_app_instance_user(Client, Input) ->
    create_app_instance_user(Client, Input, []).

-spec create_app_instance_user(aws_client:aws_client(), create_app_instance_user_request(), proplists:proplist()) ->
    {ok, create_app_instance_user_response(), tuple()} |
    {error, any()} |
    {error, create_app_instance_user_errors(), tuple()}.
create_app_instance_user(Client, Input0, Options0) ->
    Method = post,
    Path = ["/app-instance-users"],
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

%% @doc Deletes an `AppInstance' and all associated data asynchronously.
-spec delete_app_instance(aws_client:aws_client(), binary() | list(), delete_app_instance_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_app_instance_errors(), tuple()}.
delete_app_instance(Client, AppInstanceArn, Input) ->
    delete_app_instance(Client, AppInstanceArn, Input, []).

-spec delete_app_instance(aws_client:aws_client(), binary() | list(), delete_app_instance_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_app_instance_errors(), tuple()}.
delete_app_instance(Client, AppInstanceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/app-instances/", aws_util:encode_uri(AppInstanceArn), ""],
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

%% @doc Demotes an `AppInstanceAdmin' to an `AppInstanceUser' or
%% `AppInstanceBot'.
%%
%% This action
%% does not delete the user.
-spec delete_app_instance_admin(aws_client:aws_client(), binary() | list(), binary() | list(), delete_app_instance_admin_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_app_instance_admin_errors(), tuple()}.
delete_app_instance_admin(Client, AppInstanceAdminArn, AppInstanceArn, Input) ->
    delete_app_instance_admin(Client, AppInstanceAdminArn, AppInstanceArn, Input, []).

-spec delete_app_instance_admin(aws_client:aws_client(), binary() | list(), binary() | list(), delete_app_instance_admin_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_app_instance_admin_errors(), tuple()}.
delete_app_instance_admin(Client, AppInstanceAdminArn, AppInstanceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/app-instances/", aws_util:encode_uri(AppInstanceArn), "/admins/", aws_util:encode_uri(AppInstanceAdminArn), ""],
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

%% @doc Deletes an `AppInstanceBot'.
-spec delete_app_instance_bot(aws_client:aws_client(), binary() | list(), delete_app_instance_bot_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_app_instance_bot_errors(), tuple()}.
delete_app_instance_bot(Client, AppInstanceBotArn, Input) ->
    delete_app_instance_bot(Client, AppInstanceBotArn, Input, []).

-spec delete_app_instance_bot(aws_client:aws_client(), binary() | list(), delete_app_instance_bot_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_app_instance_bot_errors(), tuple()}.
delete_app_instance_bot(Client, AppInstanceBotArn, Input0, Options0) ->
    Method = delete,
    Path = ["/app-instance-bots/", aws_util:encode_uri(AppInstanceBotArn), ""],
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

%% @doc Deletes an `AppInstanceUser'.
-spec delete_app_instance_user(aws_client:aws_client(), binary() | list(), delete_app_instance_user_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_app_instance_user_errors(), tuple()}.
delete_app_instance_user(Client, AppInstanceUserArn, Input) ->
    delete_app_instance_user(Client, AppInstanceUserArn, Input, []).

-spec delete_app_instance_user(aws_client:aws_client(), binary() | list(), delete_app_instance_user_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_app_instance_user_errors(), tuple()}.
delete_app_instance_user(Client, AppInstanceUserArn, Input0, Options0) ->
    Method = delete,
    Path = ["/app-instance-users/", aws_util:encode_uri(AppInstanceUserArn), ""],
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

%% @doc Deregisters an `AppInstanceUserEndpoint'.
-spec deregister_app_instance_user_endpoint(aws_client:aws_client(), binary() | list(), binary() | list(), deregister_app_instance_user_endpoint_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, deregister_app_instance_user_endpoint_errors(), tuple()}.
deregister_app_instance_user_endpoint(Client, AppInstanceUserArn, EndpointId, Input) ->
    deregister_app_instance_user_endpoint(Client, AppInstanceUserArn, EndpointId, Input, []).

-spec deregister_app_instance_user_endpoint(aws_client:aws_client(), binary() | list(), binary() | list(), deregister_app_instance_user_endpoint_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, deregister_app_instance_user_endpoint_errors(), tuple()}.
deregister_app_instance_user_endpoint(Client, AppInstanceUserArn, EndpointId, Input0, Options0) ->
    Method = delete,
    Path = ["/app-instance-users/", aws_util:encode_uri(AppInstanceUserArn), "/endpoints/", aws_util:encode_uri(EndpointId), ""],
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

%% @doc Returns the full details of an `AppInstance'.
-spec describe_app_instance(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_app_instance_response(), tuple()} |
    {error, any()} |
    {error, describe_app_instance_errors(), tuple()}.
describe_app_instance(Client, AppInstanceArn)
  when is_map(Client) ->
    describe_app_instance(Client, AppInstanceArn, #{}, #{}).

-spec describe_app_instance(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_app_instance_response(), tuple()} |
    {error, any()} |
    {error, describe_app_instance_errors(), tuple()}.
describe_app_instance(Client, AppInstanceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_app_instance(Client, AppInstanceArn, QueryMap, HeadersMap, []).

-spec describe_app_instance(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_app_instance_response(), tuple()} |
    {error, any()} |
    {error, describe_app_instance_errors(), tuple()}.
describe_app_instance(Client, AppInstanceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/app-instances/", aws_util:encode_uri(AppInstanceArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the full details of an `AppInstanceAdmin'.
-spec describe_app_instance_admin(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_app_instance_admin_response(), tuple()} |
    {error, any()} |
    {error, describe_app_instance_admin_errors(), tuple()}.
describe_app_instance_admin(Client, AppInstanceAdminArn, AppInstanceArn)
  when is_map(Client) ->
    describe_app_instance_admin(Client, AppInstanceAdminArn, AppInstanceArn, #{}, #{}).

-spec describe_app_instance_admin(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_app_instance_admin_response(), tuple()} |
    {error, any()} |
    {error, describe_app_instance_admin_errors(), tuple()}.
describe_app_instance_admin(Client, AppInstanceAdminArn, AppInstanceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_app_instance_admin(Client, AppInstanceAdminArn, AppInstanceArn, QueryMap, HeadersMap, []).

-spec describe_app_instance_admin(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_app_instance_admin_response(), tuple()} |
    {error, any()} |
    {error, describe_app_instance_admin_errors(), tuple()}.
describe_app_instance_admin(Client, AppInstanceAdminArn, AppInstanceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/app-instances/", aws_util:encode_uri(AppInstanceArn), "/admins/", aws_util:encode_uri(AppInstanceAdminArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc The `AppInstanceBot's' information.
-spec describe_app_instance_bot(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_app_instance_bot_response(), tuple()} |
    {error, any()} |
    {error, describe_app_instance_bot_errors(), tuple()}.
describe_app_instance_bot(Client, AppInstanceBotArn)
  when is_map(Client) ->
    describe_app_instance_bot(Client, AppInstanceBotArn, #{}, #{}).

-spec describe_app_instance_bot(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_app_instance_bot_response(), tuple()} |
    {error, any()} |
    {error, describe_app_instance_bot_errors(), tuple()}.
describe_app_instance_bot(Client, AppInstanceBotArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_app_instance_bot(Client, AppInstanceBotArn, QueryMap, HeadersMap, []).

-spec describe_app_instance_bot(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_app_instance_bot_response(), tuple()} |
    {error, any()} |
    {error, describe_app_instance_bot_errors(), tuple()}.
describe_app_instance_bot(Client, AppInstanceBotArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/app-instance-bots/", aws_util:encode_uri(AppInstanceBotArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the full details of an `AppInstanceUser'.
-spec describe_app_instance_user(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_app_instance_user_response(), tuple()} |
    {error, any()} |
    {error, describe_app_instance_user_errors(), tuple()}.
describe_app_instance_user(Client, AppInstanceUserArn)
  when is_map(Client) ->
    describe_app_instance_user(Client, AppInstanceUserArn, #{}, #{}).

-spec describe_app_instance_user(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_app_instance_user_response(), tuple()} |
    {error, any()} |
    {error, describe_app_instance_user_errors(), tuple()}.
describe_app_instance_user(Client, AppInstanceUserArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_app_instance_user(Client, AppInstanceUserArn, QueryMap, HeadersMap, []).

-spec describe_app_instance_user(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_app_instance_user_response(), tuple()} |
    {error, any()} |
    {error, describe_app_instance_user_errors(), tuple()}.
describe_app_instance_user(Client, AppInstanceUserArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/app-instance-users/", aws_util:encode_uri(AppInstanceUserArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the full details of an `AppInstanceUserEndpoint'.
-spec describe_app_instance_user_endpoint(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_app_instance_user_endpoint_response(), tuple()} |
    {error, any()} |
    {error, describe_app_instance_user_endpoint_errors(), tuple()}.
describe_app_instance_user_endpoint(Client, AppInstanceUserArn, EndpointId)
  when is_map(Client) ->
    describe_app_instance_user_endpoint(Client, AppInstanceUserArn, EndpointId, #{}, #{}).

-spec describe_app_instance_user_endpoint(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_app_instance_user_endpoint_response(), tuple()} |
    {error, any()} |
    {error, describe_app_instance_user_endpoint_errors(), tuple()}.
describe_app_instance_user_endpoint(Client, AppInstanceUserArn, EndpointId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_app_instance_user_endpoint(Client, AppInstanceUserArn, EndpointId, QueryMap, HeadersMap, []).

-spec describe_app_instance_user_endpoint(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_app_instance_user_endpoint_response(), tuple()} |
    {error, any()} |
    {error, describe_app_instance_user_endpoint_errors(), tuple()}.
describe_app_instance_user_endpoint(Client, AppInstanceUserArn, EndpointId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/app-instance-users/", aws_util:encode_uri(AppInstanceUserArn), "/endpoints/", aws_util:encode_uri(EndpointId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the retention settings for an `AppInstance'.
-spec get_app_instance_retention_settings(aws_client:aws_client(), binary() | list()) ->
    {ok, get_app_instance_retention_settings_response(), tuple()} |
    {error, any()} |
    {error, get_app_instance_retention_settings_errors(), tuple()}.
get_app_instance_retention_settings(Client, AppInstanceArn)
  when is_map(Client) ->
    get_app_instance_retention_settings(Client, AppInstanceArn, #{}, #{}).

-spec get_app_instance_retention_settings(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_app_instance_retention_settings_response(), tuple()} |
    {error, any()} |
    {error, get_app_instance_retention_settings_errors(), tuple()}.
get_app_instance_retention_settings(Client, AppInstanceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_app_instance_retention_settings(Client, AppInstanceArn, QueryMap, HeadersMap, []).

-spec get_app_instance_retention_settings(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_app_instance_retention_settings_response(), tuple()} |
    {error, any()} |
    {error, get_app_instance_retention_settings_errors(), tuple()}.
get_app_instance_retention_settings(Client, AppInstanceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/app-instances/", aws_util:encode_uri(AppInstanceArn), "/retention-settings"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of the administrators in the `AppInstance'.
-spec list_app_instance_admins(aws_client:aws_client(), binary() | list()) ->
    {ok, list_app_instance_admins_response(), tuple()} |
    {error, any()} |
    {error, list_app_instance_admins_errors(), tuple()}.
list_app_instance_admins(Client, AppInstanceArn)
  when is_map(Client) ->
    list_app_instance_admins(Client, AppInstanceArn, #{}, #{}).

-spec list_app_instance_admins(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_app_instance_admins_response(), tuple()} |
    {error, any()} |
    {error, list_app_instance_admins_errors(), tuple()}.
list_app_instance_admins(Client, AppInstanceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_app_instance_admins(Client, AppInstanceArn, QueryMap, HeadersMap, []).

-spec list_app_instance_admins(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_app_instance_admins_response(), tuple()} |
    {error, any()} |
    {error, list_app_instance_admins_errors(), tuple()}.
list_app_instance_admins(Client, AppInstanceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/app-instances/", aws_util:encode_uri(AppInstanceArn), "/admins"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all `AppInstanceBots' created under a single
%% `AppInstance'.
-spec list_app_instance_bots(aws_client:aws_client(), binary() | list()) ->
    {ok, list_app_instance_bots_response(), tuple()} |
    {error, any()} |
    {error, list_app_instance_bots_errors(), tuple()}.
list_app_instance_bots(Client, AppInstanceArn)
  when is_map(Client) ->
    list_app_instance_bots(Client, AppInstanceArn, #{}, #{}).

-spec list_app_instance_bots(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_app_instance_bots_response(), tuple()} |
    {error, any()} |
    {error, list_app_instance_bots_errors(), tuple()}.
list_app_instance_bots(Client, AppInstanceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_app_instance_bots(Client, AppInstanceArn, QueryMap, HeadersMap, []).

-spec list_app_instance_bots(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_app_instance_bots_response(), tuple()} |
    {error, any()} |
    {error, list_app_instance_bots_errors(), tuple()}.
list_app_instance_bots(Client, AppInstanceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/app-instance-bots"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"app-instance-arn">>, AppInstanceArn},
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all the `AppInstanceUserEndpoints' created under a single
%% `AppInstanceUser'.
-spec list_app_instance_user_endpoints(aws_client:aws_client(), binary() | list()) ->
    {ok, list_app_instance_user_endpoints_response(), tuple()} |
    {error, any()} |
    {error, list_app_instance_user_endpoints_errors(), tuple()}.
list_app_instance_user_endpoints(Client, AppInstanceUserArn)
  when is_map(Client) ->
    list_app_instance_user_endpoints(Client, AppInstanceUserArn, #{}, #{}).

-spec list_app_instance_user_endpoints(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_app_instance_user_endpoints_response(), tuple()} |
    {error, any()} |
    {error, list_app_instance_user_endpoints_errors(), tuple()}.
list_app_instance_user_endpoints(Client, AppInstanceUserArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_app_instance_user_endpoints(Client, AppInstanceUserArn, QueryMap, HeadersMap, []).

-spec list_app_instance_user_endpoints(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_app_instance_user_endpoints_response(), tuple()} |
    {error, any()} |
    {error, list_app_instance_user_endpoints_errors(), tuple()}.
list_app_instance_user_endpoints(Client, AppInstanceUserArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/app-instance-users/", aws_util:encode_uri(AppInstanceUserArn), "/endpoints"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List all `AppInstanceUsers' created under a single
%% `AppInstance'.
-spec list_app_instance_users(aws_client:aws_client(), binary() | list()) ->
    {ok, list_app_instance_users_response(), tuple()} |
    {error, any()} |
    {error, list_app_instance_users_errors(), tuple()}.
list_app_instance_users(Client, AppInstanceArn)
  when is_map(Client) ->
    list_app_instance_users(Client, AppInstanceArn, #{}, #{}).

-spec list_app_instance_users(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_app_instance_users_response(), tuple()} |
    {error, any()} |
    {error, list_app_instance_users_errors(), tuple()}.
list_app_instance_users(Client, AppInstanceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_app_instance_users(Client, AppInstanceArn, QueryMap, HeadersMap, []).

-spec list_app_instance_users(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_app_instance_users_response(), tuple()} |
    {error, any()} |
    {error, list_app_instance_users_errors(), tuple()}.
list_app_instance_users(Client, AppInstanceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/app-instance-users"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"app-instance-arn">>, AppInstanceArn},
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all Amazon Chime `AppInstance's created under a single AWS
%% account.
-spec list_app_instances(aws_client:aws_client()) ->
    {ok, list_app_instances_response(), tuple()} |
    {error, any()} |
    {error, list_app_instances_errors(), tuple()}.
list_app_instances(Client)
  when is_map(Client) ->
    list_app_instances(Client, #{}, #{}).

-spec list_app_instances(aws_client:aws_client(), map(), map()) ->
    {ok, list_app_instances_response(), tuple()} |
    {error, any()} |
    {error, list_app_instances_errors(), tuple()}.
list_app_instances(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_app_instances(Client, QueryMap, HeadersMap, []).

-spec list_app_instances(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_app_instances_response(), tuple()} |
    {error, any()} |
    {error, list_app_instances_errors(), tuple()}.
list_app_instances(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/app-instances"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the tags applied to an Amazon Chime SDK identity resource.
-spec list_tags_for_resource(aws_client:aws_client(), binary() | list()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceARN)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceARN, #{}, #{}).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceARN, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceARN, QueryMap, HeadersMap, []).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceARN, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/tags"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"arn">>, ResourceARN}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Sets the amount of time in days that a given `AppInstance'
%% retains
%% data.
-spec put_app_instance_retention_settings(aws_client:aws_client(), binary() | list(), put_app_instance_retention_settings_request()) ->
    {ok, put_app_instance_retention_settings_response(), tuple()} |
    {error, any()} |
    {error, put_app_instance_retention_settings_errors(), tuple()}.
put_app_instance_retention_settings(Client, AppInstanceArn, Input) ->
    put_app_instance_retention_settings(Client, AppInstanceArn, Input, []).

-spec put_app_instance_retention_settings(aws_client:aws_client(), binary() | list(), put_app_instance_retention_settings_request(), proplists:proplist()) ->
    {ok, put_app_instance_retention_settings_response(), tuple()} |
    {error, any()} |
    {error, put_app_instance_retention_settings_errors(), tuple()}.
put_app_instance_retention_settings(Client, AppInstanceArn, Input0, Options0) ->
    Method = put,
    Path = ["/app-instances/", aws_util:encode_uri(AppInstanceArn), "/retention-settings"],
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

%% @doc Sets the number of days before the `AppInstanceUser' is
%% automatically deleted.
%%
%% A background process deletes expired `AppInstanceUsers' within 6 hours
%% of expiration.
%% Actual deletion times may vary.
%%
%% Expired `AppInstanceUsers' that have not yet been deleted appear as
%% active, and you can update
%% their expiration settings. The system honors the new settings.
-spec put_app_instance_user_expiration_settings(aws_client:aws_client(), binary() | list(), put_app_instance_user_expiration_settings_request()) ->
    {ok, put_app_instance_user_expiration_settings_response(), tuple()} |
    {error, any()} |
    {error, put_app_instance_user_expiration_settings_errors(), tuple()}.
put_app_instance_user_expiration_settings(Client, AppInstanceUserArn, Input) ->
    put_app_instance_user_expiration_settings(Client, AppInstanceUserArn, Input, []).

-spec put_app_instance_user_expiration_settings(aws_client:aws_client(), binary() | list(), put_app_instance_user_expiration_settings_request(), proplists:proplist()) ->
    {ok, put_app_instance_user_expiration_settings_response(), tuple()} |
    {error, any()} |
    {error, put_app_instance_user_expiration_settings_errors(), tuple()}.
put_app_instance_user_expiration_settings(Client, AppInstanceUserArn, Input0, Options0) ->
    Method = put,
    Path = ["/app-instance-users/", aws_util:encode_uri(AppInstanceUserArn), "/expiration-settings"],
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

%% @doc Registers an endpoint under an Amazon Chime `AppInstanceUser'.
%%
%% The endpoint receives messages for a user. For push notifications, the
%% endpoint is a mobile device used to receive mobile push notifications for
%% a user.
-spec register_app_instance_user_endpoint(aws_client:aws_client(), binary() | list(), register_app_instance_user_endpoint_request()) ->
    {ok, register_app_instance_user_endpoint_response(), tuple()} |
    {error, any()} |
    {error, register_app_instance_user_endpoint_errors(), tuple()}.
register_app_instance_user_endpoint(Client, AppInstanceUserArn, Input) ->
    register_app_instance_user_endpoint(Client, AppInstanceUserArn, Input, []).

-spec register_app_instance_user_endpoint(aws_client:aws_client(), binary() | list(), register_app_instance_user_endpoint_request(), proplists:proplist()) ->
    {ok, register_app_instance_user_endpoint_response(), tuple()} |
    {error, any()} |
    {error, register_app_instance_user_endpoint_errors(), tuple()}.
register_app_instance_user_endpoint(Client, AppInstanceUserArn, Input0, Options0) ->
    Method = post,
    Path = ["/app-instance-users/", aws_util:encode_uri(AppInstanceUserArn), "/endpoints"],
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

%% @doc Applies the specified tags to the specified Amazon Chime SDK identity
%% resource.
-spec tag_resource(aws_client:aws_client(), tag_resource_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input) ->
    tag_resource(Client, Input, []).

-spec tag_resource(aws_client:aws_client(), tag_resource_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/tags?operation=tag-resource"],
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

%% @doc Removes the specified tags from the specified Amazon Chime SDK
%% identity resource.
-spec untag_resource(aws_client:aws_client(), untag_resource_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input) ->
    untag_resource(Client, Input, []).

-spec untag_resource(aws_client:aws_client(), untag_resource_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/tags?operation=untag-resource"],
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

%% @doc Updates `AppInstance' metadata.
-spec update_app_instance(aws_client:aws_client(), binary() | list(), update_app_instance_request()) ->
    {ok, update_app_instance_response(), tuple()} |
    {error, any()} |
    {error, update_app_instance_errors(), tuple()}.
update_app_instance(Client, AppInstanceArn, Input) ->
    update_app_instance(Client, AppInstanceArn, Input, []).

-spec update_app_instance(aws_client:aws_client(), binary() | list(), update_app_instance_request(), proplists:proplist()) ->
    {ok, update_app_instance_response(), tuple()} |
    {error, any()} |
    {error, update_app_instance_errors(), tuple()}.
update_app_instance(Client, AppInstanceArn, Input0, Options0) ->
    Method = put,
    Path = ["/app-instances/", aws_util:encode_uri(AppInstanceArn), ""],
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

%% @doc Updates the name and metadata of an `AppInstanceBot'.
-spec update_app_instance_bot(aws_client:aws_client(), binary() | list(), update_app_instance_bot_request()) ->
    {ok, update_app_instance_bot_response(), tuple()} |
    {error, any()} |
    {error, update_app_instance_bot_errors(), tuple()}.
update_app_instance_bot(Client, AppInstanceBotArn, Input) ->
    update_app_instance_bot(Client, AppInstanceBotArn, Input, []).

-spec update_app_instance_bot(aws_client:aws_client(), binary() | list(), update_app_instance_bot_request(), proplists:proplist()) ->
    {ok, update_app_instance_bot_response(), tuple()} |
    {error, any()} |
    {error, update_app_instance_bot_errors(), tuple()}.
update_app_instance_bot(Client, AppInstanceBotArn, Input0, Options0) ->
    Method = put,
    Path = ["/app-instance-bots/", aws_util:encode_uri(AppInstanceBotArn), ""],
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

%% @doc Updates the details of an `AppInstanceUser'.
%%
%% You can update names and
%% metadata.
-spec update_app_instance_user(aws_client:aws_client(), binary() | list(), update_app_instance_user_request()) ->
    {ok, update_app_instance_user_response(), tuple()} |
    {error, any()} |
    {error, update_app_instance_user_errors(), tuple()}.
update_app_instance_user(Client, AppInstanceUserArn, Input) ->
    update_app_instance_user(Client, AppInstanceUserArn, Input, []).

-spec update_app_instance_user(aws_client:aws_client(), binary() | list(), update_app_instance_user_request(), proplists:proplist()) ->
    {ok, update_app_instance_user_response(), tuple()} |
    {error, any()} |
    {error, update_app_instance_user_errors(), tuple()}.
update_app_instance_user(Client, AppInstanceUserArn, Input0, Options0) ->
    Method = put,
    Path = ["/app-instance-users/", aws_util:encode_uri(AppInstanceUserArn), ""],
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

%% @doc Updates the details of an `AppInstanceUserEndpoint'.
%%
%% You can update the name and `AllowMessage' values.
-spec update_app_instance_user_endpoint(aws_client:aws_client(), binary() | list(), binary() | list(), update_app_instance_user_endpoint_request()) ->
    {ok, update_app_instance_user_endpoint_response(), tuple()} |
    {error, any()} |
    {error, update_app_instance_user_endpoint_errors(), tuple()}.
update_app_instance_user_endpoint(Client, AppInstanceUserArn, EndpointId, Input) ->
    update_app_instance_user_endpoint(Client, AppInstanceUserArn, EndpointId, Input, []).

-spec update_app_instance_user_endpoint(aws_client:aws_client(), binary() | list(), binary() | list(), update_app_instance_user_endpoint_request(), proplists:proplist()) ->
    {ok, update_app_instance_user_endpoint_response(), tuple()} |
    {error, any()} |
    {error, update_app_instance_user_endpoint_errors(), tuple()}.
update_app_instance_user_endpoint(Client, AppInstanceUserArn, EndpointId, Input0, Options0) ->
    Method = put,
    Path = ["/app-instance-users/", aws_util:encode_uri(AppInstanceUserArn), "/endpoints/", aws_util:encode_uri(EndpointId), ""],
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
    Client1 = Client#{service => <<"chime">>},
    Host = build_host(<<"identity-chime">>, Client1),
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
