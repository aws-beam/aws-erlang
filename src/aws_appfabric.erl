%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Web Services AppFabric quickly connects software as a service
%% (SaaS) applications across your
%% organization.
%%
%% This allows IT and security teams to easily manage and secure applications
%% using a standard schema, and employees can complete everyday tasks faster
%% using generative
%% artificial intelligence (AI). You can use these APIs to complete AppFabric
%% tasks, such as
%% setting up audit log ingestions or viewing user access. For more
%% information about AppFabric,
%% including the required permissions to use the service, see the Amazon Web
%% Services AppFabric Administration Guide:
%% https://docs.aws.amazon.com/appfabric/latest/adminguide/. For more
%% information about using the Command Line Interface (CLI) to manage your
%% AppFabric resources, see the AppFabric section of the CLI
%% Reference:
%% https://docs.aws.amazon.com/cli/latest/reference/appfabric/index.html.
-module(aws_appfabric).

-export([batch_get_user_access_tasks/2,
         batch_get_user_access_tasks/3,
         connect_app_authorization/4,
         connect_app_authorization/5,
         create_app_authorization/3,
         create_app_authorization/4,
         create_app_bundle/2,
         create_app_bundle/3,
         create_ingestion/3,
         create_ingestion/4,
         create_ingestion_destination/4,
         create_ingestion_destination/5,
         delete_app_authorization/4,
         delete_app_authorization/5,
         delete_app_bundle/3,
         delete_app_bundle/4,
         delete_ingestion/4,
         delete_ingestion/5,
         delete_ingestion_destination/5,
         delete_ingestion_destination/6,
         get_app_authorization/3,
         get_app_authorization/5,
         get_app_authorization/6,
         get_app_bundle/2,
         get_app_bundle/4,
         get_app_bundle/5,
         get_ingestion/3,
         get_ingestion/5,
         get_ingestion/6,
         get_ingestion_destination/4,
         get_ingestion_destination/6,
         get_ingestion_destination/7,
         list_app_authorizations/2,
         list_app_authorizations/4,
         list_app_authorizations/5,
         list_app_bundles/1,
         list_app_bundles/3,
         list_app_bundles/4,
         list_ingestion_destinations/3,
         list_ingestion_destinations/5,
         list_ingestion_destinations/6,
         list_ingestions/2,
         list_ingestions/4,
         list_ingestions/5,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         start_ingestion/4,
         start_ingestion/5,
         start_user_access_tasks/2,
         start_user_access_tasks/3,
         stop_ingestion/4,
         stop_ingestion/5,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_app_authorization/4,
         update_app_authorization/5,
         update_ingestion_destination/5,
         update_ingestion_destination/6]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% delete_ingestion_response() :: #{}
-type delete_ingestion_response() :: #{}.

%% Example:
%% stop_ingestion_response() :: #{}
-type stop_ingestion_response() :: #{}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"tags">> := list(tag())
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% app_bundle() :: #{
%%   <<"arn">> => string(),
%%   <<"customerManagedKeyArn">> => string()
%% }
-type app_bundle() :: #{binary() => any()}.


%% Example:
%% list_ingestions_response() :: #{
%%   <<"ingestions">> => list(ingestion_summary()),
%%   <<"nextToken">> => [string()]
%% }
-type list_ingestions_response() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% list_ingestions_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => [string()]
%% }
-type list_ingestions_request() :: #{binary() => any()}.


%% Example:
%% user_access_task_item() :: #{
%%   <<"app">> => string(),
%%   <<"error">> => task_error(),
%%   <<"taskId">> => string(),
%%   <<"tenantId">> => string()
%% }
-type user_access_task_item() :: #{binary() => any()}.


%% Example:
%% create_ingestion_request() :: #{
%%   <<"app">> := string(),
%%   <<"clientToken">> => string(),
%%   <<"ingestionType">> := list(any()),
%%   <<"tags">> => list(tag()),
%%   <<"tenantId">> := string()
%% }
-type create_ingestion_request() :: #{binary() => any()}.

%% Example:
%% stop_ingestion_request() :: #{}
-type stop_ingestion_request() :: #{}.


%% Example:
%% ingestion_destination_summary() :: #{
%%   <<"arn">> => string()
%% }
-type ingestion_destination_summary() :: #{binary() => any()}.


%% Example:
%% app_bundle_summary() :: #{
%%   <<"arn">> => string()
%% }
-type app_bundle_summary() :: #{binary() => any()}.

%% Example:
%% start_ingestion_request() :: #{}
-type start_ingestion_request() :: #{}.


%% Example:
%% create_ingestion_destination_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"destinationConfiguration">> := list(),
%%   <<"processingConfiguration">> := list(),
%%   <<"tags">> => list(tag())
%% }
-type create_ingestion_destination_request() :: #{binary() => any()}.

%% Example:
%% start_ingestion_response() :: #{}
-type start_ingestion_response() :: #{}.


%% Example:
%% create_ingestion_response() :: #{
%%   <<"ingestion">> => ingestion()
%% }
-type create_ingestion_response() :: #{binary() => any()}.


%% Example:
%% get_ingestion_response() :: #{
%%   <<"ingestion">> => ingestion()
%% }
-type get_ingestion_response() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"tagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% list_ingestion_destinations_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => [string()]
%% }
-type list_ingestion_destinations_request() :: #{binary() => any()}.


%% Example:
%% get_app_authorization_response() :: #{
%%   <<"appAuthorization">> => app_authorization()
%% }
-type get_app_authorization_response() :: #{binary() => any()}.


%% Example:
%% firehose_stream() :: #{
%%   <<"streamName">> => string()
%% }
-type firehose_stream() :: #{binary() => any()}.


%% Example:
%% create_app_bundle_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"customerManagedKeyIdentifier">> => string(),
%%   <<"tags">> => list(tag())
%% }
-type create_app_bundle_request() :: #{binary() => any()}.


%% Example:
%% app_authorization_summary() :: #{
%%   <<"app">> => string(),
%%   <<"appAuthorizationArn">> => string(),
%%   <<"appBundleArn">> => string(),
%%   <<"status">> => list(any()),
%%   <<"tenant">> => tenant(),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type app_authorization_summary() :: #{binary() => any()}.

%% Example:
%% delete_app_bundle_request() :: #{}
-type delete_app_bundle_request() :: #{}.


%% Example:
%% connect_app_authorization_request() :: #{
%%   <<"authRequest">> => auth_request()
%% }
-type connect_app_authorization_request() :: #{binary() => any()}.


%% Example:
%% tenant() :: #{
%%   <<"tenantDisplayName">> => string(),
%%   <<"tenantIdentifier">> => string()
%% }
-type tenant() :: #{binary() => any()}.


%% Example:
%% user_access_result_item() :: #{
%%   <<"app">> => string(),
%%   <<"email">> => string(),
%%   <<"resultStatus">> => list(any()),
%%   <<"taskError">> => task_error(),
%%   <<"taskId">> => string(),
%%   <<"tenantDisplayName">> => string(),
%%   <<"tenantId">> => string(),
%%   <<"userFirstName">> => string(),
%%   <<"userFullName">> => string(),
%%   <<"userId">> => string(),
%%   <<"userLastName">> => string(),
%%   <<"userStatus">> => [string()]
%% }
-type user_access_result_item() :: #{binary() => any()}.

%% Example:
%% delete_ingestion_destination_request() :: #{}
-type delete_ingestion_destination_request() :: #{}.

%% Example:
%% delete_app_bundle_response() :: #{}
-type delete_app_bundle_response() :: #{}.


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
%% ingestion_destination() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"destinationConfiguration">> => list(),
%%   <<"ingestionArn">> => string(),
%%   <<"processingConfiguration">> => list(),
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => [string()],
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type ingestion_destination() :: #{binary() => any()}.


%% Example:
%% list_app_bundles_response() :: #{
%%   <<"appBundleSummaryList">> => list(app_bundle_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_app_bundles_response() :: #{binary() => any()}.


%% Example:
%% ingestion() :: #{
%%   <<"app">> => string(),
%%   <<"appBundleArn">> => string(),
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"ingestionType">> => list(any()),
%%   <<"state">> => list(any()),
%%   <<"tenantId">> => string(),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type ingestion() :: #{binary() => any()}.


%% Example:
%% tag() :: #{
%%   <<"key">> => string(),
%%   <<"value">> => string()
%% }
-type tag() :: #{binary() => any()}.


%% Example:
%% s3_bucket() :: #{
%%   <<"bucketName">> => string(),
%%   <<"prefix">> => string()
%% }
-type s3_bucket() :: #{binary() => any()}.


%% Example:
%% start_user_access_tasks_request() :: #{
%%   <<"appBundleIdentifier">> := string(),
%%   <<"email">> := string()
%% }
-type start_user_access_tasks_request() :: #{binary() => any()}.


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
%% batch_get_user_access_tasks_request() :: #{
%%   <<"appBundleIdentifier">> := string(),
%%   <<"taskIdList">> := list(string())
%% }
-type batch_get_user_access_tasks_request() :: #{binary() => any()}.


%% Example:
%% create_app_authorization_request() :: #{
%%   <<"app">> := string(),
%%   <<"authType">> := list(any()),
%%   <<"clientToken">> => string(),
%%   <<"credential">> := list(),
%%   <<"tags">> => list(tag()),
%%   <<"tenant">> := tenant()
%% }
-type create_app_authorization_request() :: #{binary() => any()}.


%% Example:
%% ingestion_summary() :: #{
%%   <<"app">> => string(),
%%   <<"arn">> => string(),
%%   <<"state">> => list(any()),
%%   <<"tenantId">> => string()
%% }
-type ingestion_summary() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> => list(tag())
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% list_ingestion_destinations_response() :: #{
%%   <<"ingestionDestinations">> => list(ingestion_destination_summary()),
%%   <<"nextToken">> => [string()]
%% }
-type list_ingestion_destinations_response() :: #{binary() => any()}.


%% Example:
%% validation_exception_field() :: #{
%%   <<"message">> => [string()],
%%   <<"name">> => [string()]
%% }
-type validation_exception_field() :: #{binary() => any()}.


%% Example:
%% update_app_authorization_request() :: #{
%%   <<"credential">> => list(),
%%   <<"tenant">> => tenant()
%% }
-type update_app_authorization_request() :: #{binary() => any()}.

%% Example:
%% delete_ingestion_destination_response() :: #{}
-type delete_ingestion_destination_response() :: #{}.

%% Example:
%% delete_app_authorization_request() :: #{}
-type delete_app_authorization_request() :: #{}.


%% Example:
%% audit_log_destination_configuration() :: #{
%%   <<"destination">> => list()
%% }
-type audit_log_destination_configuration() :: #{binary() => any()}.

%% Example:
%% get_app_bundle_request() :: #{}
-type get_app_bundle_request() :: #{}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"retryAfterSeconds">> => integer()
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% list_app_bundles_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_app_bundles_request() :: #{binary() => any()}.


%% Example:
%% batch_get_user_access_tasks_response() :: #{
%%   <<"userAccessResultsList">> => list(user_access_result_item())
%% }
-type batch_get_user_access_tasks_response() :: #{binary() => any()}.


%% Example:
%% get_ingestion_destination_response() :: #{
%%   <<"ingestionDestination">> => ingestion_destination()
%% }
-type get_ingestion_destination_response() :: #{binary() => any()}.

%% Example:
%% get_app_authorization_request() :: #{}
-type get_app_authorization_request() :: #{}.


%% Example:
%% auth_request() :: #{
%%   <<"code">> => string(),
%%   <<"redirectUri">> => string()
%% }
-type auth_request() :: #{binary() => any()}.


%% Example:
%% create_ingestion_destination_response() :: #{
%%   <<"ingestionDestination">> => ingestion_destination()
%% }
-type create_ingestion_destination_response() :: #{binary() => any()}.


%% Example:
%% audit_log_processing_configuration() :: #{
%%   <<"format">> => list(any()),
%%   <<"schema">> => list(any())
%% }
-type audit_log_processing_configuration() :: #{binary() => any()}.

%% Example:
%% get_ingestion_request() :: #{}
-type get_ingestion_request() :: #{}.


%% Example:
%% update_app_authorization_response() :: #{
%%   <<"appAuthorization">> => app_authorization()
%% }
-type update_app_authorization_response() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% list_app_authorizations_response() :: #{
%%   <<"appAuthorizationSummaryList">> => list(app_authorization_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_app_authorizations_response() :: #{binary() => any()}.


%% Example:
%% start_user_access_tasks_response() :: #{
%%   <<"userAccessTasksList">> => list(user_access_task_item())
%% }
-type start_user_access_tasks_response() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% create_app_bundle_response() :: #{
%%   <<"appBundle">> => app_bundle()
%% }
-type create_app_bundle_response() :: #{binary() => any()}.

%% Example:
%% delete_ingestion_request() :: #{}
-type delete_ingestion_request() :: #{}.


%% Example:
%% get_app_bundle_response() :: #{
%%   <<"appBundle">> => app_bundle()
%% }
-type get_app_bundle_response() :: #{binary() => any()}.


%% Example:
%% list_app_authorizations_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_app_authorizations_request() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"fieldList">> => list(validation_exception_field()),
%%   <<"message">> => [string()],
%%   <<"reason">> => list(any())
%% }
-type validation_exception() :: #{binary() => any()}.


%% Example:
%% connect_app_authorization_response() :: #{
%%   <<"appAuthorizationSummary">> => app_authorization_summary()
%% }
-type connect_app_authorization_response() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"quotaCode">> => [string()],
%%   <<"retryAfterSeconds">> => integer(),
%%   <<"serviceCode">> => [string()]
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% app_authorization() :: #{
%%   <<"app">> => string(),
%%   <<"appAuthorizationArn">> => string(),
%%   <<"appBundleArn">> => string(),
%%   <<"authType">> => list(any()),
%%   <<"authUrl">> => [string()],
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"persona">> => list(any()),
%%   <<"status">> => list(any()),
%%   <<"tenant">> => tenant(),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type app_authorization() :: #{binary() => any()}.


%% Example:
%% task_error() :: #{
%%   <<"errorCode">> => [string()],
%%   <<"errorMessage">> => [string()]
%% }
-type task_error() :: #{binary() => any()}.


%% Example:
%% update_ingestion_destination_request() :: #{
%%   <<"destinationConfiguration">> := list()
%% }
-type update_ingestion_destination_request() :: #{binary() => any()}.


%% Example:
%% oauth2_credential() :: #{
%%   <<"clientId">> => string(),
%%   <<"clientSecret">> => string()
%% }
-type oauth2_credential() :: #{binary() => any()}.


%% Example:
%% api_key_credential() :: #{
%%   <<"apiKey">> => string()
%% }
-type api_key_credential() :: #{binary() => any()}.

%% Example:
%% get_ingestion_destination_request() :: #{}
-type get_ingestion_destination_request() :: #{}.


%% Example:
%% create_app_authorization_response() :: #{
%%   <<"appAuthorization">> => app_authorization()
%% }
-type create_app_authorization_response() :: #{binary() => any()}.

%% Example:
%% delete_app_authorization_response() :: #{}
-type delete_app_authorization_response() :: #{}.


%% Example:
%% update_ingestion_destination_response() :: #{
%%   <<"ingestionDestination">> => ingestion_destination()
%% }
-type update_ingestion_destination_response() :: #{binary() => any()}.

-type batch_get_user_access_tasks_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type connect_app_authorization_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type create_app_authorization_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_app_bundle_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_ingestion_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_ingestion_destination_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type delete_app_authorization_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_app_bundle_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type delete_ingestion_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_ingestion_destination_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_app_authorization_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_app_bundle_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_ingestion_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_ingestion_destination_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_app_authorizations_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_app_bundles_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_ingestion_destinations_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_ingestions_errors() ::
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

-type start_ingestion_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type start_user_access_tasks_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type stop_ingestion_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

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

-type update_app_authorization_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_ingestion_destination_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Gets user access details in a batch request.
%%
%% This action polls data from the tasks that are kicked off by the
%% `StartUserAccessTasks' action.
-spec batch_get_user_access_tasks(aws_client:aws_client(), batch_get_user_access_tasks_request()) ->
    {ok, batch_get_user_access_tasks_response(), tuple()} |
    {error, any()} |
    {error, batch_get_user_access_tasks_errors(), tuple()}.
batch_get_user_access_tasks(Client, Input) ->
    batch_get_user_access_tasks(Client, Input, []).

-spec batch_get_user_access_tasks(aws_client:aws_client(), batch_get_user_access_tasks_request(), proplists:proplist()) ->
    {ok, batch_get_user_access_tasks_response(), tuple()} |
    {error, any()} |
    {error, batch_get_user_access_tasks_errors(), tuple()}.
batch_get_user_access_tasks(Client, Input0, Options0) ->
    Method = post,
    Path = ["/useraccess/batchget"],
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

%% @doc Establishes a connection between Amazon Web Services AppFabric and an
%% application, which allows AppFabric to
%% call the APIs of the application.
-spec connect_app_authorization(aws_client:aws_client(), binary() | list(), binary() | list(), connect_app_authorization_request()) ->
    {ok, connect_app_authorization_response(), tuple()} |
    {error, any()} |
    {error, connect_app_authorization_errors(), tuple()}.
connect_app_authorization(Client, AppAuthorizationIdentifier, AppBundleIdentifier, Input) ->
    connect_app_authorization(Client, AppAuthorizationIdentifier, AppBundleIdentifier, Input, []).

-spec connect_app_authorization(aws_client:aws_client(), binary() | list(), binary() | list(), connect_app_authorization_request(), proplists:proplist()) ->
    {ok, connect_app_authorization_response(), tuple()} |
    {error, any()} |
    {error, connect_app_authorization_errors(), tuple()}.
connect_app_authorization(Client, AppAuthorizationIdentifier, AppBundleIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/appbundles/", aws_util:encode_uri(AppBundleIdentifier), "/appauthorizations/", aws_util:encode_uri(AppAuthorizationIdentifier), "/connect"],
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

%% @doc Creates an app authorization within an app bundle, which allows
%% AppFabric to connect to an
%% application.
-spec create_app_authorization(aws_client:aws_client(), binary() | list(), create_app_authorization_request()) ->
    {ok, create_app_authorization_response(), tuple()} |
    {error, any()} |
    {error, create_app_authorization_errors(), tuple()}.
create_app_authorization(Client, AppBundleIdentifier, Input) ->
    create_app_authorization(Client, AppBundleIdentifier, Input, []).

-spec create_app_authorization(aws_client:aws_client(), binary() | list(), create_app_authorization_request(), proplists:proplist()) ->
    {ok, create_app_authorization_response(), tuple()} |
    {error, any()} |
    {error, create_app_authorization_errors(), tuple()}.
create_app_authorization(Client, AppBundleIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/appbundles/", aws_util:encode_uri(AppBundleIdentifier), "/appauthorizations"],
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

%% @doc Creates an app bundle to collect data from an application using
%% AppFabric.
-spec create_app_bundle(aws_client:aws_client(), create_app_bundle_request()) ->
    {ok, create_app_bundle_response(), tuple()} |
    {error, any()} |
    {error, create_app_bundle_errors(), tuple()}.
create_app_bundle(Client, Input) ->
    create_app_bundle(Client, Input, []).

-spec create_app_bundle(aws_client:aws_client(), create_app_bundle_request(), proplists:proplist()) ->
    {ok, create_app_bundle_response(), tuple()} |
    {error, any()} |
    {error, create_app_bundle_errors(), tuple()}.
create_app_bundle(Client, Input0, Options0) ->
    Method = post,
    Path = ["/appbundles"],
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

%% @doc Creates a data ingestion for an application.
-spec create_ingestion(aws_client:aws_client(), binary() | list(), create_ingestion_request()) ->
    {ok, create_ingestion_response(), tuple()} |
    {error, any()} |
    {error, create_ingestion_errors(), tuple()}.
create_ingestion(Client, AppBundleIdentifier, Input) ->
    create_ingestion(Client, AppBundleIdentifier, Input, []).

-spec create_ingestion(aws_client:aws_client(), binary() | list(), create_ingestion_request(), proplists:proplist()) ->
    {ok, create_ingestion_response(), tuple()} |
    {error, any()} |
    {error, create_ingestion_errors(), tuple()}.
create_ingestion(Client, AppBundleIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/appbundles/", aws_util:encode_uri(AppBundleIdentifier), "/ingestions"],
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

%% @doc Creates an ingestion destination, which specifies how an
%% application's ingested data is
%% processed by Amazon Web Services AppFabric and where it's delivered.
-spec create_ingestion_destination(aws_client:aws_client(), binary() | list(), binary() | list(), create_ingestion_destination_request()) ->
    {ok, create_ingestion_destination_response(), tuple()} |
    {error, any()} |
    {error, create_ingestion_destination_errors(), tuple()}.
create_ingestion_destination(Client, AppBundleIdentifier, IngestionIdentifier, Input) ->
    create_ingestion_destination(Client, AppBundleIdentifier, IngestionIdentifier, Input, []).

-spec create_ingestion_destination(aws_client:aws_client(), binary() | list(), binary() | list(), create_ingestion_destination_request(), proplists:proplist()) ->
    {ok, create_ingestion_destination_response(), tuple()} |
    {error, any()} |
    {error, create_ingestion_destination_errors(), tuple()}.
create_ingestion_destination(Client, AppBundleIdentifier, IngestionIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/appbundles/", aws_util:encode_uri(AppBundleIdentifier), "/ingestions/", aws_util:encode_uri(IngestionIdentifier), "/ingestiondestinations"],
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

%% @doc Deletes an app authorization.
%%
%% You must delete the associated ingestion before you can
%% delete an app authorization.
-spec delete_app_authorization(aws_client:aws_client(), binary() | list(), binary() | list(), delete_app_authorization_request()) ->
    {ok, delete_app_authorization_response(), tuple()} |
    {error, any()} |
    {error, delete_app_authorization_errors(), tuple()}.
delete_app_authorization(Client, AppAuthorizationIdentifier, AppBundleIdentifier, Input) ->
    delete_app_authorization(Client, AppAuthorizationIdentifier, AppBundleIdentifier, Input, []).

-spec delete_app_authorization(aws_client:aws_client(), binary() | list(), binary() | list(), delete_app_authorization_request(), proplists:proplist()) ->
    {ok, delete_app_authorization_response(), tuple()} |
    {error, any()} |
    {error, delete_app_authorization_errors(), tuple()}.
delete_app_authorization(Client, AppAuthorizationIdentifier, AppBundleIdentifier, Input0, Options0) ->
    Method = delete,
    Path = ["/appbundles/", aws_util:encode_uri(AppBundleIdentifier), "/appauthorizations/", aws_util:encode_uri(AppAuthorizationIdentifier), ""],
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

%% @doc Deletes an app bundle.
%%
%% You must delete all associated app authorizations before you can
%% delete an app bundle.
-spec delete_app_bundle(aws_client:aws_client(), binary() | list(), delete_app_bundle_request()) ->
    {ok, delete_app_bundle_response(), tuple()} |
    {error, any()} |
    {error, delete_app_bundle_errors(), tuple()}.
delete_app_bundle(Client, AppBundleIdentifier, Input) ->
    delete_app_bundle(Client, AppBundleIdentifier, Input, []).

-spec delete_app_bundle(aws_client:aws_client(), binary() | list(), delete_app_bundle_request(), proplists:proplist()) ->
    {ok, delete_app_bundle_response(), tuple()} |
    {error, any()} |
    {error, delete_app_bundle_errors(), tuple()}.
delete_app_bundle(Client, AppBundleIdentifier, Input0, Options0) ->
    Method = delete,
    Path = ["/appbundles/", aws_util:encode_uri(AppBundleIdentifier), ""],
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

%% @doc Deletes an ingestion.
%%
%% You must stop (disable) the ingestion and you must delete all
%% associated ingestion destinations before you can delete an app ingestion.
-spec delete_ingestion(aws_client:aws_client(), binary() | list(), binary() | list(), delete_ingestion_request()) ->
    {ok, delete_ingestion_response(), tuple()} |
    {error, any()} |
    {error, delete_ingestion_errors(), tuple()}.
delete_ingestion(Client, AppBundleIdentifier, IngestionIdentifier, Input) ->
    delete_ingestion(Client, AppBundleIdentifier, IngestionIdentifier, Input, []).

-spec delete_ingestion(aws_client:aws_client(), binary() | list(), binary() | list(), delete_ingestion_request(), proplists:proplist()) ->
    {ok, delete_ingestion_response(), tuple()} |
    {error, any()} |
    {error, delete_ingestion_errors(), tuple()}.
delete_ingestion(Client, AppBundleIdentifier, IngestionIdentifier, Input0, Options0) ->
    Method = delete,
    Path = ["/appbundles/", aws_util:encode_uri(AppBundleIdentifier), "/ingestions/", aws_util:encode_uri(IngestionIdentifier), ""],
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

%% @doc Deletes an ingestion destination.
%%
%% This deletes the association between an ingestion and it's
%% destination. It doesn't
%% delete previously ingested data or the storage destination, such as the
%% Amazon S3
%% bucket where the data is delivered. If the ingestion destination is
%% deleted while the
%% associated ingestion is enabled, the ingestion will fail and is eventually
%% disabled.
-spec delete_ingestion_destination(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_ingestion_destination_request()) ->
    {ok, delete_ingestion_destination_response(), tuple()} |
    {error, any()} |
    {error, delete_ingestion_destination_errors(), tuple()}.
delete_ingestion_destination(Client, AppBundleIdentifier, IngestionDestinationIdentifier, IngestionIdentifier, Input) ->
    delete_ingestion_destination(Client, AppBundleIdentifier, IngestionDestinationIdentifier, IngestionIdentifier, Input, []).

-spec delete_ingestion_destination(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_ingestion_destination_request(), proplists:proplist()) ->
    {ok, delete_ingestion_destination_response(), tuple()} |
    {error, any()} |
    {error, delete_ingestion_destination_errors(), tuple()}.
delete_ingestion_destination(Client, AppBundleIdentifier, IngestionDestinationIdentifier, IngestionIdentifier, Input0, Options0) ->
    Method = delete,
    Path = ["/appbundles/", aws_util:encode_uri(AppBundleIdentifier), "/ingestions/", aws_util:encode_uri(IngestionIdentifier), "/ingestiondestinations/", aws_util:encode_uri(IngestionDestinationIdentifier), ""],
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

%% @doc Returns information about an app authorization.
-spec get_app_authorization(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_app_authorization_response(), tuple()} |
    {error, any()} |
    {error, get_app_authorization_errors(), tuple()}.
get_app_authorization(Client, AppAuthorizationIdentifier, AppBundleIdentifier)
  when is_map(Client) ->
    get_app_authorization(Client, AppAuthorizationIdentifier, AppBundleIdentifier, #{}, #{}).

-spec get_app_authorization(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_app_authorization_response(), tuple()} |
    {error, any()} |
    {error, get_app_authorization_errors(), tuple()}.
get_app_authorization(Client, AppAuthorizationIdentifier, AppBundleIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_app_authorization(Client, AppAuthorizationIdentifier, AppBundleIdentifier, QueryMap, HeadersMap, []).

-spec get_app_authorization(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_app_authorization_response(), tuple()} |
    {error, any()} |
    {error, get_app_authorization_errors(), tuple()}.
get_app_authorization(Client, AppAuthorizationIdentifier, AppBundleIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/appbundles/", aws_util:encode_uri(AppBundleIdentifier), "/appauthorizations/", aws_util:encode_uri(AppAuthorizationIdentifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about an app bundle.
-spec get_app_bundle(aws_client:aws_client(), binary() | list()) ->
    {ok, get_app_bundle_response(), tuple()} |
    {error, any()} |
    {error, get_app_bundle_errors(), tuple()}.
get_app_bundle(Client, AppBundleIdentifier)
  when is_map(Client) ->
    get_app_bundle(Client, AppBundleIdentifier, #{}, #{}).

-spec get_app_bundle(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_app_bundle_response(), tuple()} |
    {error, any()} |
    {error, get_app_bundle_errors(), tuple()}.
get_app_bundle(Client, AppBundleIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_app_bundle(Client, AppBundleIdentifier, QueryMap, HeadersMap, []).

-spec get_app_bundle(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_app_bundle_response(), tuple()} |
    {error, any()} |
    {error, get_app_bundle_errors(), tuple()}.
get_app_bundle(Client, AppBundleIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/appbundles/", aws_util:encode_uri(AppBundleIdentifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about an ingestion.
-spec get_ingestion(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_ingestion_response(), tuple()} |
    {error, any()} |
    {error, get_ingestion_errors(), tuple()}.
get_ingestion(Client, AppBundleIdentifier, IngestionIdentifier)
  when is_map(Client) ->
    get_ingestion(Client, AppBundleIdentifier, IngestionIdentifier, #{}, #{}).

-spec get_ingestion(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_ingestion_response(), tuple()} |
    {error, any()} |
    {error, get_ingestion_errors(), tuple()}.
get_ingestion(Client, AppBundleIdentifier, IngestionIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_ingestion(Client, AppBundleIdentifier, IngestionIdentifier, QueryMap, HeadersMap, []).

-spec get_ingestion(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_ingestion_response(), tuple()} |
    {error, any()} |
    {error, get_ingestion_errors(), tuple()}.
get_ingestion(Client, AppBundleIdentifier, IngestionIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/appbundles/", aws_util:encode_uri(AppBundleIdentifier), "/ingestions/", aws_util:encode_uri(IngestionIdentifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about an ingestion destination.
-spec get_ingestion_destination(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_ingestion_destination_response(), tuple()} |
    {error, any()} |
    {error, get_ingestion_destination_errors(), tuple()}.
get_ingestion_destination(Client, AppBundleIdentifier, IngestionDestinationIdentifier, IngestionIdentifier)
  when is_map(Client) ->
    get_ingestion_destination(Client, AppBundleIdentifier, IngestionDestinationIdentifier, IngestionIdentifier, #{}, #{}).

-spec get_ingestion_destination(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_ingestion_destination_response(), tuple()} |
    {error, any()} |
    {error, get_ingestion_destination_errors(), tuple()}.
get_ingestion_destination(Client, AppBundleIdentifier, IngestionDestinationIdentifier, IngestionIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_ingestion_destination(Client, AppBundleIdentifier, IngestionDestinationIdentifier, IngestionIdentifier, QueryMap, HeadersMap, []).

-spec get_ingestion_destination(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_ingestion_destination_response(), tuple()} |
    {error, any()} |
    {error, get_ingestion_destination_errors(), tuple()}.
get_ingestion_destination(Client, AppBundleIdentifier, IngestionDestinationIdentifier, IngestionIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/appbundles/", aws_util:encode_uri(AppBundleIdentifier), "/ingestions/", aws_util:encode_uri(IngestionIdentifier), "/ingestiondestinations/", aws_util:encode_uri(IngestionDestinationIdentifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of all app authorizations configured for an app
%% bundle.
-spec list_app_authorizations(aws_client:aws_client(), binary() | list()) ->
    {ok, list_app_authorizations_response(), tuple()} |
    {error, any()} |
    {error, list_app_authorizations_errors(), tuple()}.
list_app_authorizations(Client, AppBundleIdentifier)
  when is_map(Client) ->
    list_app_authorizations(Client, AppBundleIdentifier, #{}, #{}).

-spec list_app_authorizations(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_app_authorizations_response(), tuple()} |
    {error, any()} |
    {error, list_app_authorizations_errors(), tuple()}.
list_app_authorizations(Client, AppBundleIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_app_authorizations(Client, AppBundleIdentifier, QueryMap, HeadersMap, []).

-spec list_app_authorizations(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_app_authorizations_response(), tuple()} |
    {error, any()} |
    {error, list_app_authorizations_errors(), tuple()}.
list_app_authorizations(Client, AppBundleIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/appbundles/", aws_util:encode_uri(AppBundleIdentifier), "/appauthorizations"],
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

%% @doc Returns a list of app bundles.
-spec list_app_bundles(aws_client:aws_client()) ->
    {ok, list_app_bundles_response(), tuple()} |
    {error, any()} |
    {error, list_app_bundles_errors(), tuple()}.
list_app_bundles(Client)
  when is_map(Client) ->
    list_app_bundles(Client, #{}, #{}).

-spec list_app_bundles(aws_client:aws_client(), map(), map()) ->
    {ok, list_app_bundles_response(), tuple()} |
    {error, any()} |
    {error, list_app_bundles_errors(), tuple()}.
list_app_bundles(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_app_bundles(Client, QueryMap, HeadersMap, []).

-spec list_app_bundles(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_app_bundles_response(), tuple()} |
    {error, any()} |
    {error, list_app_bundles_errors(), tuple()}.
list_app_bundles(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/appbundles"],
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

%% @doc Returns a list of all ingestion destinations configured for an
%% ingestion.
-spec list_ingestion_destinations(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_ingestion_destinations_response(), tuple()} |
    {error, any()} |
    {error, list_ingestion_destinations_errors(), tuple()}.
list_ingestion_destinations(Client, AppBundleIdentifier, IngestionIdentifier)
  when is_map(Client) ->
    list_ingestion_destinations(Client, AppBundleIdentifier, IngestionIdentifier, #{}, #{}).

-spec list_ingestion_destinations(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_ingestion_destinations_response(), tuple()} |
    {error, any()} |
    {error, list_ingestion_destinations_errors(), tuple()}.
list_ingestion_destinations(Client, AppBundleIdentifier, IngestionIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_ingestion_destinations(Client, AppBundleIdentifier, IngestionIdentifier, QueryMap, HeadersMap, []).

-spec list_ingestion_destinations(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_ingestion_destinations_response(), tuple()} |
    {error, any()} |
    {error, list_ingestion_destinations_errors(), tuple()}.
list_ingestion_destinations(Client, AppBundleIdentifier, IngestionIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/appbundles/", aws_util:encode_uri(AppBundleIdentifier), "/ingestions/", aws_util:encode_uri(IngestionIdentifier), "/ingestiondestinations"],
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

%% @doc Returns a list of all ingestions configured for an app bundle.
-spec list_ingestions(aws_client:aws_client(), binary() | list()) ->
    {ok, list_ingestions_response(), tuple()} |
    {error, any()} |
    {error, list_ingestions_errors(), tuple()}.
list_ingestions(Client, AppBundleIdentifier)
  when is_map(Client) ->
    list_ingestions(Client, AppBundleIdentifier, #{}, #{}).

-spec list_ingestions(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_ingestions_response(), tuple()} |
    {error, any()} |
    {error, list_ingestions_errors(), tuple()}.
list_ingestions(Client, AppBundleIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_ingestions(Client, AppBundleIdentifier, QueryMap, HeadersMap, []).

-spec list_ingestions(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_ingestions_response(), tuple()} |
    {error, any()} |
    {error, list_ingestions_errors(), tuple()}.
list_ingestions(Client, AppBundleIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/appbundles/", aws_util:encode_uri(AppBundleIdentifier), "/ingestions"],
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

%% @doc Returns a list of tags for a resource.
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

%% @doc Starts (enables) an ingestion, which collects data from an
%% application.
-spec start_ingestion(aws_client:aws_client(), binary() | list(), binary() | list(), start_ingestion_request()) ->
    {ok, start_ingestion_response(), tuple()} |
    {error, any()} |
    {error, start_ingestion_errors(), tuple()}.
start_ingestion(Client, AppBundleIdentifier, IngestionIdentifier, Input) ->
    start_ingestion(Client, AppBundleIdentifier, IngestionIdentifier, Input, []).

-spec start_ingestion(aws_client:aws_client(), binary() | list(), binary() | list(), start_ingestion_request(), proplists:proplist()) ->
    {ok, start_ingestion_response(), tuple()} |
    {error, any()} |
    {error, start_ingestion_errors(), tuple()}.
start_ingestion(Client, AppBundleIdentifier, IngestionIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/appbundles/", aws_util:encode_uri(AppBundleIdentifier), "/ingestions/", aws_util:encode_uri(IngestionIdentifier), "/start"],
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

%% @doc Starts the tasks to search user access status for a specific email
%% address.
%%
%% The tasks are stopped when the user access status data is found. The tasks
%% are
%% terminated when the API calls to the application time out.
-spec start_user_access_tasks(aws_client:aws_client(), start_user_access_tasks_request()) ->
    {ok, start_user_access_tasks_response(), tuple()} |
    {error, any()} |
    {error, start_user_access_tasks_errors(), tuple()}.
start_user_access_tasks(Client, Input) ->
    start_user_access_tasks(Client, Input, []).

-spec start_user_access_tasks(aws_client:aws_client(), start_user_access_tasks_request(), proplists:proplist()) ->
    {ok, start_user_access_tasks_response(), tuple()} |
    {error, any()} |
    {error, start_user_access_tasks_errors(), tuple()}.
start_user_access_tasks(Client, Input0, Options0) ->
    Method = post,
    Path = ["/useraccess/start"],
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

%% @doc Stops (disables) an ingestion.
-spec stop_ingestion(aws_client:aws_client(), binary() | list(), binary() | list(), stop_ingestion_request()) ->
    {ok, stop_ingestion_response(), tuple()} |
    {error, any()} |
    {error, stop_ingestion_errors(), tuple()}.
stop_ingestion(Client, AppBundleIdentifier, IngestionIdentifier, Input) ->
    stop_ingestion(Client, AppBundleIdentifier, IngestionIdentifier, Input, []).

-spec stop_ingestion(aws_client:aws_client(), binary() | list(), binary() | list(), stop_ingestion_request(), proplists:proplist()) ->
    {ok, stop_ingestion_response(), tuple()} |
    {error, any()} |
    {error, stop_ingestion_errors(), tuple()}.
stop_ingestion(Client, AppBundleIdentifier, IngestionIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/appbundles/", aws_util:encode_uri(AppBundleIdentifier), "/ingestions/", aws_util:encode_uri(IngestionIdentifier), "/stop"],
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

%% @doc Assigns one or more tags (key-value pairs) to the specified resource.
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

%% @doc Removes a tag or tags from a resource.
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

%% @doc Updates an app authorization within an app bundle, which allows
%% AppFabric to connect to an
%% application.
%%
%% If the app authorization was in a `connected' state, updating the app
%% authorization will set it back to a `PendingConnect' state.
-spec update_app_authorization(aws_client:aws_client(), binary() | list(), binary() | list(), update_app_authorization_request()) ->
    {ok, update_app_authorization_response(), tuple()} |
    {error, any()} |
    {error, update_app_authorization_errors(), tuple()}.
update_app_authorization(Client, AppAuthorizationIdentifier, AppBundleIdentifier, Input) ->
    update_app_authorization(Client, AppAuthorizationIdentifier, AppBundleIdentifier, Input, []).

-spec update_app_authorization(aws_client:aws_client(), binary() | list(), binary() | list(), update_app_authorization_request(), proplists:proplist()) ->
    {ok, update_app_authorization_response(), tuple()} |
    {error, any()} |
    {error, update_app_authorization_errors(), tuple()}.
update_app_authorization(Client, AppAuthorizationIdentifier, AppBundleIdentifier, Input0, Options0) ->
    Method = patch,
    Path = ["/appbundles/", aws_util:encode_uri(AppBundleIdentifier), "/appauthorizations/", aws_util:encode_uri(AppAuthorizationIdentifier), ""],
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

%% @doc Updates an ingestion destination, which specifies how an
%% application's ingested data is
%% processed by Amazon Web Services AppFabric and where it's delivered.
-spec update_ingestion_destination(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), update_ingestion_destination_request()) ->
    {ok, update_ingestion_destination_response(), tuple()} |
    {error, any()} |
    {error, update_ingestion_destination_errors(), tuple()}.
update_ingestion_destination(Client, AppBundleIdentifier, IngestionDestinationIdentifier, IngestionIdentifier, Input) ->
    update_ingestion_destination(Client, AppBundleIdentifier, IngestionDestinationIdentifier, IngestionIdentifier, Input, []).

-spec update_ingestion_destination(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), update_ingestion_destination_request(), proplists:proplist()) ->
    {ok, update_ingestion_destination_response(), tuple()} |
    {error, any()} |
    {error, update_ingestion_destination_errors(), tuple()}.
update_ingestion_destination(Client, AppBundleIdentifier, IngestionDestinationIdentifier, IngestionIdentifier, Input0, Options0) ->
    Method = patch,
    Path = ["/appbundles/", aws_util:encode_uri(AppBundleIdentifier), "/ingestions/", aws_util:encode_uri(IngestionIdentifier), "/ingestiondestinations/", aws_util:encode_uri(IngestionDestinationIdentifier), ""],
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
    Client1 = Client#{service => <<"appfabric">>},
    Host = build_host(<<"appfabric">>, Client1),
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
