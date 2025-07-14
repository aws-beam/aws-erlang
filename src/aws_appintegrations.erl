%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc
%%
%% Amazon AppIntegrations
%% actions:
%% https://docs.aws.amazon.com/connect/latest/APIReference/API_Operations_Amazon_AppIntegrations_Service.html
%%
%% Amazon AppIntegrations
%% data types:
%% https://docs.aws.amazon.com/connect/latest/APIReference/API_Types_Amazon_AppIntegrations_Service.html
%%
%% The Amazon AppIntegrations service enables you to configure and reuse
%% connections to external
%% applications.
%%
%% For information about how you can use external applications with Amazon
%% Connect, see
%% the following topics in the Amazon Connect Administrator
%% Guide:
%%
%% Third-party
%% applications (3p apps) in the agent workspace:
%% https://docs.aws.amazon.com/connect/latest/adminguide/3p-apps.html
%%
%% Use
%% Amazon Q in Connect for generative AI–powered agent assistance in
%% real-time:
%% https://docs.aws.amazon.com/connect/latest/adminguide/amazon-q-connect.html
-module(aws_appintegrations).

-export([create_application/2,
         create_application/3,
         create_data_integration/2,
         create_data_integration/3,
         create_data_integration_association/3,
         create_data_integration_association/4,
         create_event_integration/2,
         create_event_integration/3,
         delete_application/3,
         delete_application/4,
         delete_data_integration/3,
         delete_data_integration/4,
         delete_event_integration/3,
         delete_event_integration/4,
         get_application/2,
         get_application/4,
         get_application/5,
         get_data_integration/2,
         get_data_integration/4,
         get_data_integration/5,
         get_event_integration/2,
         get_event_integration/4,
         get_event_integration/5,
         list_application_associations/2,
         list_application_associations/4,
         list_application_associations/5,
         list_applications/1,
         list_applications/3,
         list_applications/4,
         list_data_integration_associations/2,
         list_data_integration_associations/4,
         list_data_integration_associations/5,
         list_data_integrations/1,
         list_data_integrations/3,
         list_data_integrations/4,
         list_event_integration_associations/2,
         list_event_integration_associations/4,
         list_event_integration_associations/5,
         list_event_integrations/1,
         list_event_integrations/3,
         list_event_integrations/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_application/3,
         update_application/4,
         update_data_integration/3,
         update_data_integration/4,
         update_data_integration_association/4,
         update_data_integration_association/5,
         update_event_integration/3,
         update_event_integration/4]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% external_url_config() :: #{
%%   <<"AccessUrl">> => string(),
%%   <<"ApprovedOrigins">> => list(string())
%% }
-type external_url_config() :: #{binary() => any()}.


%% Example:
%% data_integration_association_summary() :: #{
%%   <<"ClientId">> => string(),
%%   <<"DataIntegrationArn">> => string(),
%%   <<"DataIntegrationAssociationArn">> => string(),
%%   <<"DestinationURI">> => string(),
%%   <<"ExecutionConfiguration">> => execution_configuration(),
%%   <<"LastExecutionStatus">> => last_execution_status()
%% }
-type data_integration_association_summary() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% update_data_integration_response() :: #{}
-type update_data_integration_response() :: #{}.


%% Example:
%% unsupported_operation_exception() :: #{
%%   <<"Message">> => string()
%% }
-type unsupported_operation_exception() :: #{binary() => any()}.

%% Example:
%% get_event_integration_request() :: #{}
-type get_event_integration_request() :: #{}.


%% Example:
%% last_execution_status() :: #{
%%   <<"ExecutionStatus">> => list(any()),
%%   <<"StatusMessage">> => string()
%% }
-type last_execution_status() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% list_data_integration_associations_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_data_integration_associations_request() :: #{binary() => any()}.


%% Example:
%% list_data_integration_associations_response() :: #{
%%   <<"DataIntegrationAssociations">> => list(data_integration_association_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_data_integration_associations_response() :: #{binary() => any()}.


%% Example:
%% list_data_integrations_response() :: #{
%%   <<"DataIntegrations">> => list(data_integration_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_data_integrations_response() :: #{binary() => any()}.


%% Example:
%% get_event_integration_response() :: #{
%%   <<"Description">> => string(),
%%   <<"EventBridgeBus">> => string(),
%%   <<"EventFilter">> => event_filter(),
%%   <<"EventIntegrationArn">> => string(),
%%   <<"Name">> => string(),
%%   <<"Tags">> => map()
%% }
-type get_event_integration_response() :: #{binary() => any()}.

%% Example:
%% get_data_integration_request() :: #{}
-type get_data_integration_request() :: #{}.


%% Example:
%% application_source_config() :: #{
%%   <<"ExternalUrlConfig">> => external_url_config()
%% }
-type application_source_config() :: #{binary() => any()}.

%% Example:
%% update_data_integration_association_response() :: #{}
-type update_data_integration_association_response() :: #{}.


%% Example:
%% create_data_integration_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"Description">> => string(),
%%   <<"FileConfiguration">> => file_configuration(),
%%   <<"KmsKey">> := string(),
%%   <<"Name">> := string(),
%%   <<"ObjectConfiguration">> => map(),
%%   <<"ScheduleConfig">> => schedule_configuration(),
%%   <<"SourceURI">> => string(),
%%   <<"Tags">> => map()
%% }
-type create_data_integration_request() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"tagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% list_event_integration_associations_response() :: #{
%%   <<"EventIntegrationAssociations">> => list(event_integration_association()),
%%   <<"NextToken">> => string()
%% }
-type list_event_integration_associations_response() :: #{binary() => any()}.


%% Example:
%% list_event_integration_associations_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_event_integration_associations_request() :: #{binary() => any()}.


%% Example:
%% create_data_integration_association_request() :: #{
%%   <<"ClientAssociationMetadata">> => map(),
%%   <<"ClientId">> => string(),
%%   <<"ClientToken">> => string(),
%%   <<"DestinationURI">> => string(),
%%   <<"ExecutionConfiguration">> => execution_configuration(),
%%   <<"ObjectConfiguration">> => map()
%% }
-type create_data_integration_association_request() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% invalid_request_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_request_exception() :: #{binary() => any()}.


%% Example:
%% create_event_integration_response() :: #{
%%   <<"EventIntegrationArn">> => string()
%% }
-type create_event_integration_response() :: #{binary() => any()}.


%% Example:
%% application_association_summary() :: #{
%%   <<"ApplicationArn">> => string(),
%%   <<"ApplicationAssociationArn">> => string(),
%%   <<"ClientId">> => string()
%% }
-type application_association_summary() :: #{binary() => any()}.


%% Example:
%% list_application_associations_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_application_associations_request() :: #{binary() => any()}.


%% Example:
%% list_data_integrations_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_data_integrations_request() :: #{binary() => any()}.


%% Example:
%% create_event_integration_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"Description">> => string(),
%%   <<"EventBridgeBus">> := string(),
%%   <<"EventFilter">> := event_filter(),
%%   <<"Name">> := string(),
%%   <<"Tags">> => map()
%% }
-type create_event_integration_request() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% create_application_request() :: #{
%%   <<"ApplicationSourceConfig">> := application_source_config(),
%%   <<"ClientToken">> => string(),
%%   <<"Description">> => string(),
%%   <<"Name">> := string(),
%%   <<"Namespace">> := string(),
%%   <<"Permissions">> => list(string()),
%%   <<"Publications">> => list(publication()),
%%   <<"Subscriptions">> => list(subscription()),
%%   <<"Tags">> => map()
%% }
-type create_application_request() :: #{binary() => any()}.


%% Example:
%% get_data_integration_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"Description">> => string(),
%%   <<"FileConfiguration">> => file_configuration(),
%%   <<"Id">> => string(),
%%   <<"KmsKey">> => string(),
%%   <<"Name">> => string(),
%%   <<"ObjectConfiguration">> => map(),
%%   <<"ScheduleConfiguration">> => schedule_configuration(),
%%   <<"SourceURI">> => string(),
%%   <<"Tags">> => map()
%% }
-type get_data_integration_response() :: #{binary() => any()}.


%% Example:
%% resource_quota_exceeded_exception() :: #{
%%   <<"Message">> => string()
%% }
-type resource_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% create_application_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"Id">> => string()
%% }
-type create_application_response() :: #{binary() => any()}.


%% Example:
%% execution_configuration() :: #{
%%   <<"ExecutionMode">> => list(any()),
%%   <<"OnDemandConfiguration">> => on_demand_configuration(),
%%   <<"ScheduleConfiguration">> => schedule_configuration()
%% }
-type execution_configuration() :: #{binary() => any()}.


%% Example:
%% event_filter() :: #{
%%   <<"Source">> => string()
%% }
-type event_filter() :: #{binary() => any()}.

%% Example:
%% update_event_integration_response() :: #{}
-type update_event_integration_response() :: #{}.


%% Example:
%% update_event_integration_request() :: #{
%%   <<"Description">> => string()
%% }
-type update_event_integration_request() :: #{binary() => any()}.

%% Example:
%% delete_application_response() :: #{}
-type delete_application_response() :: #{}.


%% Example:
%% create_data_integration_association_response() :: #{
%%   <<"DataIntegrationArn">> => string(),
%%   <<"DataIntegrationAssociationId">> => string()
%% }
-type create_data_integration_association_response() :: #{binary() => any()}.

%% Example:
%% delete_event_integration_response() :: #{}
-type delete_event_integration_response() :: #{}.


%% Example:
%% update_application_request() :: #{
%%   <<"ApplicationSourceConfig">> => application_source_config(),
%%   <<"Description">> => string(),
%%   <<"Name">> => string(),
%%   <<"Permissions">> => list(string()),
%%   <<"Publications">> => list(publication()),
%%   <<"Subscriptions">> => list(subscription())
%% }
-type update_application_request() :: #{binary() => any()}.

%% Example:
%% update_application_response() :: #{}
-type update_application_response() :: #{}.


%% Example:
%% publication() :: #{
%%   <<"Description">> => string(),
%%   <<"Event">> => string(),
%%   <<"Schema">> => string()
%% }
-type publication() :: #{binary() => any()}.


%% Example:
%% get_application_response() :: #{
%%   <<"ApplicationSourceConfig">> => application_source_config(),
%%   <<"Arn">> => string(),
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"Id">> => string(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"Namespace">> => string(),
%%   <<"Permissions">> => list(string()),
%%   <<"Publications">> => list(publication()),
%%   <<"Subscriptions">> => list(subscription()),
%%   <<"Tags">> => map()
%% }
-type get_application_response() :: #{binary() => any()}.


%% Example:
%% list_applications_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_applications_request() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"Message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% create_data_integration_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"ClientToken">> => string(),
%%   <<"Description">> => string(),
%%   <<"FileConfiguration">> => file_configuration(),
%%   <<"Id">> => string(),
%%   <<"KmsKey">> => string(),
%%   <<"Name">> => string(),
%%   <<"ObjectConfiguration">> => map(),
%%   <<"ScheduleConfiguration">> => schedule_configuration(),
%%   <<"SourceURI">> => string(),
%%   <<"Tags">> => map()
%% }
-type create_data_integration_response() :: #{binary() => any()}.


%% Example:
%% update_data_integration_request() :: #{
%%   <<"Description">> => string(),
%%   <<"Name">> => string()
%% }
-type update_data_integration_request() :: #{binary() => any()}.


%% Example:
%% internal_service_error() :: #{
%%   <<"Message">> => string()
%% }
-type internal_service_error() :: #{binary() => any()}.

%% Example:
%% delete_data_integration_request() :: #{}
-type delete_data_integration_request() :: #{}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% update_data_integration_association_request() :: #{
%%   <<"ExecutionConfiguration">> := execution_configuration()
%% }
-type update_data_integration_association_request() :: #{binary() => any()}.


%% Example:
%% schedule_configuration() :: #{
%%   <<"FirstExecutionFrom">> => string(),
%%   <<"Object">> => string(),
%%   <<"ScheduleExpression">> => string()
%% }
-type schedule_configuration() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"Message">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.

%% Example:
%% delete_event_integration_request() :: #{}
-type delete_event_integration_request() :: #{}.


%% Example:
%% subscription() :: #{
%%   <<"Description">> => string(),
%%   <<"Event">> => string()
%% }
-type subscription() :: #{binary() => any()}.

%% Example:
%% delete_data_integration_response() :: #{}
-type delete_data_integration_response() :: #{}.


%% Example:
%% application_summary() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"Id">> => string(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"Namespace">> => string()
%% }
-type application_summary() :: #{binary() => any()}.


%% Example:
%% list_application_associations_response() :: #{
%%   <<"ApplicationAssociations">> => list(application_association_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_application_associations_response() :: #{binary() => any()}.


%% Example:
%% list_applications_response() :: #{
%%   <<"Applications">> => list(application_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_applications_response() :: #{binary() => any()}.


%% Example:
%% list_event_integrations_response() :: #{
%%   <<"EventIntegrations">> => list(event_integration()),
%%   <<"NextToken">> => string()
%% }
-type list_event_integrations_response() :: #{binary() => any()}.


%% Example:
%% list_event_integrations_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_event_integrations_request() :: #{binary() => any()}.


%% Example:
%% file_configuration() :: #{
%%   <<"Filters">> => map(),
%%   <<"Folders">> => list(string())
%% }
-type file_configuration() :: #{binary() => any()}.


%% Example:
%% event_integration_association() :: #{
%%   <<"ClientAssociationMetadata">> => map(),
%%   <<"ClientId">> => string(),
%%   <<"EventBridgeRuleName">> => string(),
%%   <<"EventIntegrationAssociationArn">> => string(),
%%   <<"EventIntegrationAssociationId">> => string(),
%%   <<"EventIntegrationName">> => string()
%% }
-type event_integration_association() :: #{binary() => any()}.

%% Example:
%% get_application_request() :: #{}
-type get_application_request() :: #{}.


%% Example:
%% duplicate_resource_exception() :: #{
%%   <<"Message">> => string()
%% }
-type duplicate_resource_exception() :: #{binary() => any()}.


%% Example:
%% event_integration() :: #{
%%   <<"Description">> => string(),
%%   <<"EventBridgeBus">> => string(),
%%   <<"EventFilter">> => event_filter(),
%%   <<"EventIntegrationArn">> => string(),
%%   <<"Name">> => string(),
%%   <<"Tags">> => map()
%% }
-type event_integration() :: #{binary() => any()}.


%% Example:
%% data_integration_summary() :: #{
%%   <<"Arn">> => string(),
%%   <<"Name">> => string(),
%%   <<"SourceURI">> => string()
%% }
-type data_integration_summary() :: #{binary() => any()}.

%% Example:
%% delete_application_request() :: #{}
-type delete_application_request() :: #{}.


%% Example:
%% on_demand_configuration() :: #{
%%   <<"EndTime">> => string(),
%%   <<"StartTime">> => string()
%% }
-type on_demand_configuration() :: #{binary() => any()}.

-type create_application_errors() ::
    duplicate_resource_exception() | 
    throttling_exception() | 
    internal_service_error() | 
    access_denied_exception() | 
    resource_quota_exceeded_exception() | 
    invalid_request_exception() | 
    unsupported_operation_exception().

-type create_data_integration_errors() ::
    duplicate_resource_exception() | 
    throttling_exception() | 
    internal_service_error() | 
    access_denied_exception() | 
    resource_quota_exceeded_exception() | 
    invalid_request_exception().

-type create_data_integration_association_errors() ::
    throttling_exception() | 
    internal_service_error() | 
    access_denied_exception() | 
    resource_quota_exceeded_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type create_event_integration_errors() ::
    duplicate_resource_exception() | 
    throttling_exception() | 
    internal_service_error() | 
    access_denied_exception() | 
    resource_quota_exceeded_exception() | 
    invalid_request_exception().

-type delete_application_errors() ::
    throttling_exception() | 
    internal_service_error() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type delete_data_integration_errors() ::
    throttling_exception() | 
    internal_service_error() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type delete_event_integration_errors() ::
    throttling_exception() | 
    internal_service_error() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type get_application_errors() ::
    throttling_exception() | 
    internal_service_error() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type get_data_integration_errors() ::
    throttling_exception() | 
    internal_service_error() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type get_event_integration_errors() ::
    throttling_exception() | 
    internal_service_error() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type list_application_associations_errors() ::
    throttling_exception() | 
    internal_service_error() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type list_applications_errors() ::
    throttling_exception() | 
    internal_service_error() | 
    access_denied_exception() | 
    invalid_request_exception().

-type list_data_integration_associations_errors() ::
    throttling_exception() | 
    internal_service_error() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type list_data_integrations_errors() ::
    throttling_exception() | 
    internal_service_error() | 
    access_denied_exception() | 
    invalid_request_exception().

-type list_event_integration_associations_errors() ::
    throttling_exception() | 
    internal_service_error() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type list_event_integrations_errors() ::
    throttling_exception() | 
    internal_service_error() | 
    access_denied_exception() | 
    invalid_request_exception().

-type list_tags_for_resource_errors() ::
    throttling_exception() | 
    internal_service_error() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type tag_resource_errors() ::
    throttling_exception() | 
    internal_service_error() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    throttling_exception() | 
    internal_service_error() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type update_application_errors() ::
    throttling_exception() | 
    internal_service_error() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    unsupported_operation_exception().

-type update_data_integration_errors() ::
    throttling_exception() | 
    internal_service_error() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type update_data_integration_association_errors() ::
    throttling_exception() | 
    internal_service_error() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type update_event_integration_errors() ::
    throttling_exception() | 
    internal_service_error() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Creates and persists an Application resource.
-spec create_application(aws_client:aws_client(), create_application_request()) ->
    {ok, create_application_response(), tuple()} |
    {error, any()} |
    {error, create_application_errors(), tuple()}.
create_application(Client, Input) ->
    create_application(Client, Input, []).

-spec create_application(aws_client:aws_client(), create_application_request(), proplists:proplist()) ->
    {ok, create_application_response(), tuple()} |
    {error, any()} |
    {error, create_application_errors(), tuple()}.
create_application(Client, Input0, Options0) ->
    Method = post,
    Path = ["/applications"],
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

%% @doc Creates and persists a DataIntegration resource.
%%
%% You cannot create a DataIntegration association for a DataIntegration that
%% has been
%% previously associated. Use a different DataIntegration, or recreate the
%% DataIntegration
%% using the `CreateDataIntegration' API.
-spec create_data_integration(aws_client:aws_client(), create_data_integration_request()) ->
    {ok, create_data_integration_response(), tuple()} |
    {error, any()} |
    {error, create_data_integration_errors(), tuple()}.
create_data_integration(Client, Input) ->
    create_data_integration(Client, Input, []).

-spec create_data_integration(aws_client:aws_client(), create_data_integration_request(), proplists:proplist()) ->
    {ok, create_data_integration_response(), tuple()} |
    {error, any()} |
    {error, create_data_integration_errors(), tuple()}.
create_data_integration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/dataIntegrations"],
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

%% @doc Creates and persists a DataIntegrationAssociation resource.
-spec create_data_integration_association(aws_client:aws_client(), binary() | list(), create_data_integration_association_request()) ->
    {ok, create_data_integration_association_response(), tuple()} |
    {error, any()} |
    {error, create_data_integration_association_errors(), tuple()}.
create_data_integration_association(Client, DataIntegrationIdentifier, Input) ->
    create_data_integration_association(Client, DataIntegrationIdentifier, Input, []).

-spec create_data_integration_association(aws_client:aws_client(), binary() | list(), create_data_integration_association_request(), proplists:proplist()) ->
    {ok, create_data_integration_association_response(), tuple()} |
    {error, any()} |
    {error, create_data_integration_association_errors(), tuple()}.
create_data_integration_association(Client, DataIntegrationIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/dataIntegrations/", aws_util:encode_uri(DataIntegrationIdentifier), "/associations"],
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

%% @doc Creates an EventIntegration, given a specified name, description, and
%% a reference to an
%% Amazon EventBridge bus in your account and a partner event source that
%% pushes events to
%% that bus.
%%
%% No objects are created in the your account, only metadata that is
%% persisted on the
%% EventIntegration control plane.
-spec create_event_integration(aws_client:aws_client(), create_event_integration_request()) ->
    {ok, create_event_integration_response(), tuple()} |
    {error, any()} |
    {error, create_event_integration_errors(), tuple()}.
create_event_integration(Client, Input) ->
    create_event_integration(Client, Input, []).

-spec create_event_integration(aws_client:aws_client(), create_event_integration_request(), proplists:proplist()) ->
    {ok, create_event_integration_response(), tuple()} |
    {error, any()} |
    {error, create_event_integration_errors(), tuple()}.
create_event_integration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/eventIntegrations"],
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

%% @doc Deletes the Application.
%%
%% Only Applications that don't have any Application Associations
%% can be deleted.
-spec delete_application(aws_client:aws_client(), binary() | list(), delete_application_request()) ->
    {ok, delete_application_response(), tuple()} |
    {error, any()} |
    {error, delete_application_errors(), tuple()}.
delete_application(Client, Arn, Input) ->
    delete_application(Client, Arn, Input, []).

-spec delete_application(aws_client:aws_client(), binary() | list(), delete_application_request(), proplists:proplist()) ->
    {ok, delete_application_response(), tuple()} |
    {error, any()} |
    {error, delete_application_errors(), tuple()}.
delete_application(Client, Arn, Input0, Options0) ->
    Method = delete,
    Path = ["/applications/", aws_util:encode_uri(Arn), ""],
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

%% @doc Deletes the DataIntegration.
%%
%% Only DataIntegrations that don't have any
%% DataIntegrationAssociations can be deleted. Deleting a DataIntegration
%% also deletes the
%% underlying Amazon AppFlow flow and service linked role.
%%
%% You cannot create a DataIntegration association for a DataIntegration that
%% has been previously associated.
%% Use a different DataIntegration, or recreate the DataIntegration using the
%% CreateDataIntegration:
%% https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_CreateDataIntegration.html
%% API.
-spec delete_data_integration(aws_client:aws_client(), binary() | list(), delete_data_integration_request()) ->
    {ok, delete_data_integration_response(), tuple()} |
    {error, any()} |
    {error, delete_data_integration_errors(), tuple()}.
delete_data_integration(Client, DataIntegrationIdentifier, Input) ->
    delete_data_integration(Client, DataIntegrationIdentifier, Input, []).

-spec delete_data_integration(aws_client:aws_client(), binary() | list(), delete_data_integration_request(), proplists:proplist()) ->
    {ok, delete_data_integration_response(), tuple()} |
    {error, any()} |
    {error, delete_data_integration_errors(), tuple()}.
delete_data_integration(Client, DataIntegrationIdentifier, Input0, Options0) ->
    Method = delete,
    Path = ["/dataIntegrations/", aws_util:encode_uri(DataIntegrationIdentifier), ""],
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

%% @doc Deletes the specified existing event integration.
%%
%% If the event integration is associated
%% with clients, the request is rejected.
-spec delete_event_integration(aws_client:aws_client(), binary() | list(), delete_event_integration_request()) ->
    {ok, delete_event_integration_response(), tuple()} |
    {error, any()} |
    {error, delete_event_integration_errors(), tuple()}.
delete_event_integration(Client, Name, Input) ->
    delete_event_integration(Client, Name, Input, []).

-spec delete_event_integration(aws_client:aws_client(), binary() | list(), delete_event_integration_request(), proplists:proplist()) ->
    {ok, delete_event_integration_response(), tuple()} |
    {error, any()} |
    {error, delete_event_integration_errors(), tuple()}.
delete_event_integration(Client, Name, Input0, Options0) ->
    Method = delete,
    Path = ["/eventIntegrations/", aws_util:encode_uri(Name), ""],
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

%% @doc Get an Application resource.
-spec get_application(aws_client:aws_client(), binary() | list()) ->
    {ok, get_application_response(), tuple()} |
    {error, any()} |
    {error, get_application_errors(), tuple()}.
get_application(Client, Arn)
  when is_map(Client) ->
    get_application(Client, Arn, #{}, #{}).

-spec get_application(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_application_response(), tuple()} |
    {error, any()} |
    {error, get_application_errors(), tuple()}.
get_application(Client, Arn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_application(Client, Arn, QueryMap, HeadersMap, []).

-spec get_application(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_application_response(), tuple()} |
    {error, any()} |
    {error, get_application_errors(), tuple()}.
get_application(Client, Arn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(Arn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about the DataIntegration.
%%
%% You cannot create a DataIntegration association for a DataIntegration that
%% has been previously associated.
%% Use a different DataIntegration, or recreate the DataIntegration using the
%% CreateDataIntegration:
%% https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_CreateDataIntegration.html
%% API.
-spec get_data_integration(aws_client:aws_client(), binary() | list()) ->
    {ok, get_data_integration_response(), tuple()} |
    {error, any()} |
    {error, get_data_integration_errors(), tuple()}.
get_data_integration(Client, Identifier)
  when is_map(Client) ->
    get_data_integration(Client, Identifier, #{}, #{}).

-spec get_data_integration(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_data_integration_response(), tuple()} |
    {error, any()} |
    {error, get_data_integration_errors(), tuple()}.
get_data_integration(Client, Identifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_data_integration(Client, Identifier, QueryMap, HeadersMap, []).

-spec get_data_integration(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_data_integration_response(), tuple()} |
    {error, any()} |
    {error, get_data_integration_errors(), tuple()}.
get_data_integration(Client, Identifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/dataIntegrations/", aws_util:encode_uri(Identifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about the event integration.
-spec get_event_integration(aws_client:aws_client(), binary() | list()) ->
    {ok, get_event_integration_response(), tuple()} |
    {error, any()} |
    {error, get_event_integration_errors(), tuple()}.
get_event_integration(Client, Name)
  when is_map(Client) ->
    get_event_integration(Client, Name, #{}, #{}).

-spec get_event_integration(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_event_integration_response(), tuple()} |
    {error, any()} |
    {error, get_event_integration_errors(), tuple()}.
get_event_integration(Client, Name, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_event_integration(Client, Name, QueryMap, HeadersMap, []).

-spec get_event_integration(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_event_integration_response(), tuple()} |
    {error, any()} |
    {error, get_event_integration_errors(), tuple()}.
get_event_integration(Client, Name, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/eventIntegrations/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a paginated list of application associations for an
%% application.
-spec list_application_associations(aws_client:aws_client(), binary() | list()) ->
    {ok, list_application_associations_response(), tuple()} |
    {error, any()} |
    {error, list_application_associations_errors(), tuple()}.
list_application_associations(Client, ApplicationId)
  when is_map(Client) ->
    list_application_associations(Client, ApplicationId, #{}, #{}).

-spec list_application_associations(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_application_associations_response(), tuple()} |
    {error, any()} |
    {error, list_application_associations_errors(), tuple()}.
list_application_associations(Client, ApplicationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_application_associations(Client, ApplicationId, QueryMap, HeadersMap, []).

-spec list_application_associations(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_application_associations_response(), tuple()} |
    {error, any()} |
    {error, list_application_associations_errors(), tuple()}.
list_application_associations(Client, ApplicationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/associations"],
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

%% @doc Lists applications in the account.
-spec list_applications(aws_client:aws_client()) ->
    {ok, list_applications_response(), tuple()} |
    {error, any()} |
    {error, list_applications_errors(), tuple()}.
list_applications(Client)
  when is_map(Client) ->
    list_applications(Client, #{}, #{}).

-spec list_applications(aws_client:aws_client(), map(), map()) ->
    {ok, list_applications_response(), tuple()} |
    {error, any()} |
    {error, list_applications_errors(), tuple()}.
list_applications(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_applications(Client, QueryMap, HeadersMap, []).

-spec list_applications(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_applications_response(), tuple()} |
    {error, any()} |
    {error, list_applications_errors(), tuple()}.
list_applications(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications"],
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

%% @doc Returns a paginated list of DataIntegration associations in the
%% account.
%%
%% You cannot create a DataIntegration association for a DataIntegration that
%% has been previously associated.
%% Use a different DataIntegration, or recreate the DataIntegration using the
%% CreateDataIntegration:
%% https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_CreateDataIntegration.html
%% API.
-spec list_data_integration_associations(aws_client:aws_client(), binary() | list()) ->
    {ok, list_data_integration_associations_response(), tuple()} |
    {error, any()} |
    {error, list_data_integration_associations_errors(), tuple()}.
list_data_integration_associations(Client, DataIntegrationIdentifier)
  when is_map(Client) ->
    list_data_integration_associations(Client, DataIntegrationIdentifier, #{}, #{}).

-spec list_data_integration_associations(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_data_integration_associations_response(), tuple()} |
    {error, any()} |
    {error, list_data_integration_associations_errors(), tuple()}.
list_data_integration_associations(Client, DataIntegrationIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_data_integration_associations(Client, DataIntegrationIdentifier, QueryMap, HeadersMap, []).

-spec list_data_integration_associations(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_data_integration_associations_response(), tuple()} |
    {error, any()} |
    {error, list_data_integration_associations_errors(), tuple()}.
list_data_integration_associations(Client, DataIntegrationIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/dataIntegrations/", aws_util:encode_uri(DataIntegrationIdentifier), "/associations"],
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

%% @doc Returns a paginated list of DataIntegrations in the account.
%%
%% You cannot create a DataIntegration association for a DataIntegration that
%% has been previously associated.
%% Use a different DataIntegration, or recreate the DataIntegration using the
%% CreateDataIntegration:
%% https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_CreateDataIntegration.html
%% API.
-spec list_data_integrations(aws_client:aws_client()) ->
    {ok, list_data_integrations_response(), tuple()} |
    {error, any()} |
    {error, list_data_integrations_errors(), tuple()}.
list_data_integrations(Client)
  when is_map(Client) ->
    list_data_integrations(Client, #{}, #{}).

-spec list_data_integrations(aws_client:aws_client(), map(), map()) ->
    {ok, list_data_integrations_response(), tuple()} |
    {error, any()} |
    {error, list_data_integrations_errors(), tuple()}.
list_data_integrations(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_data_integrations(Client, QueryMap, HeadersMap, []).

-spec list_data_integrations(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_data_integrations_response(), tuple()} |
    {error, any()} |
    {error, list_data_integrations_errors(), tuple()}.
list_data_integrations(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/dataIntegrations"],
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

%% @doc Returns a paginated list of event integration associations in the
%% account.
-spec list_event_integration_associations(aws_client:aws_client(), binary() | list()) ->
    {ok, list_event_integration_associations_response(), tuple()} |
    {error, any()} |
    {error, list_event_integration_associations_errors(), tuple()}.
list_event_integration_associations(Client, EventIntegrationName)
  when is_map(Client) ->
    list_event_integration_associations(Client, EventIntegrationName, #{}, #{}).

-spec list_event_integration_associations(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_event_integration_associations_response(), tuple()} |
    {error, any()} |
    {error, list_event_integration_associations_errors(), tuple()}.
list_event_integration_associations(Client, EventIntegrationName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_event_integration_associations(Client, EventIntegrationName, QueryMap, HeadersMap, []).

-spec list_event_integration_associations(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_event_integration_associations_response(), tuple()} |
    {error, any()} |
    {error, list_event_integration_associations_errors(), tuple()}.
list_event_integration_associations(Client, EventIntegrationName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/eventIntegrations/", aws_util:encode_uri(EventIntegrationName), "/associations"],
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

%% @doc Returns a paginated list of event integrations in the account.
-spec list_event_integrations(aws_client:aws_client()) ->
    {ok, list_event_integrations_response(), tuple()} |
    {error, any()} |
    {error, list_event_integrations_errors(), tuple()}.
list_event_integrations(Client)
  when is_map(Client) ->
    list_event_integrations(Client, #{}, #{}).

-spec list_event_integrations(aws_client:aws_client(), map(), map()) ->
    {ok, list_event_integrations_response(), tuple()} |
    {error, any()} |
    {error, list_event_integrations_errors(), tuple()}.
list_event_integrations(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_event_integrations(Client, QueryMap, HeadersMap, []).

-spec list_event_integrations(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_event_integrations_response(), tuple()} |
    {error, any()} |
    {error, list_event_integrations_errors(), tuple()}.
list_event_integrations(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/eventIntegrations"],
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

%% @doc Lists the tags for the specified resource.
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

%% @doc Adds the specified tags to the specified resource.
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

%% @doc Removes the specified tags from the specified resource.
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

%% @doc Updates and persists an Application resource.
-spec update_application(aws_client:aws_client(), binary() | list(), update_application_request()) ->
    {ok, update_application_response(), tuple()} |
    {error, any()} |
    {error, update_application_errors(), tuple()}.
update_application(Client, Arn, Input) ->
    update_application(Client, Arn, Input, []).

-spec update_application(aws_client:aws_client(), binary() | list(), update_application_request(), proplists:proplist()) ->
    {ok, update_application_response(), tuple()} |
    {error, any()} |
    {error, update_application_errors(), tuple()}.
update_application(Client, Arn, Input0, Options0) ->
    Method = patch,
    Path = ["/applications/", aws_util:encode_uri(Arn), ""],
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

%% @doc Updates the description of a DataIntegration.
%%
%% You cannot create a DataIntegration association for a DataIntegration that
%% has been previously associated.
%% Use a different DataIntegration, or recreate the DataIntegration using the
%% CreateDataIntegration:
%% https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_CreateDataIntegration.html
%% API.
-spec update_data_integration(aws_client:aws_client(), binary() | list(), update_data_integration_request()) ->
    {ok, update_data_integration_response(), tuple()} |
    {error, any()} |
    {error, update_data_integration_errors(), tuple()}.
update_data_integration(Client, Identifier, Input) ->
    update_data_integration(Client, Identifier, Input, []).

-spec update_data_integration(aws_client:aws_client(), binary() | list(), update_data_integration_request(), proplists:proplist()) ->
    {ok, update_data_integration_response(), tuple()} |
    {error, any()} |
    {error, update_data_integration_errors(), tuple()}.
update_data_integration(Client, Identifier, Input0, Options0) ->
    Method = patch,
    Path = ["/dataIntegrations/", aws_util:encode_uri(Identifier), ""],
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

%% @doc Updates and persists a DataIntegrationAssociation resource.
%%
%% Updating a DataIntegrationAssociation with ExecutionConfiguration will
%% rerun the on-demand job.
-spec update_data_integration_association(aws_client:aws_client(), binary() | list(), binary() | list(), update_data_integration_association_request()) ->
    {ok, update_data_integration_association_response(), tuple()} |
    {error, any()} |
    {error, update_data_integration_association_errors(), tuple()}.
update_data_integration_association(Client, DataIntegrationAssociationIdentifier, DataIntegrationIdentifier, Input) ->
    update_data_integration_association(Client, DataIntegrationAssociationIdentifier, DataIntegrationIdentifier, Input, []).

-spec update_data_integration_association(aws_client:aws_client(), binary() | list(), binary() | list(), update_data_integration_association_request(), proplists:proplist()) ->
    {ok, update_data_integration_association_response(), tuple()} |
    {error, any()} |
    {error, update_data_integration_association_errors(), tuple()}.
update_data_integration_association(Client, DataIntegrationAssociationIdentifier, DataIntegrationIdentifier, Input0, Options0) ->
    Method = patch,
    Path = ["/dataIntegrations/", aws_util:encode_uri(DataIntegrationIdentifier), "/associations/", aws_util:encode_uri(DataIntegrationAssociationIdentifier), ""],
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

%% @doc Updates the description of an event integration.
-spec update_event_integration(aws_client:aws_client(), binary() | list(), update_event_integration_request()) ->
    {ok, update_event_integration_response(), tuple()} |
    {error, any()} |
    {error, update_event_integration_errors(), tuple()}.
update_event_integration(Client, Name, Input) ->
    update_event_integration(Client, Name, Input, []).

-spec update_event_integration(aws_client:aws_client(), binary() | list(), update_event_integration_request(), proplists:proplist()) ->
    {ok, update_event_integration_response(), tuple()} |
    {error, any()} |
    {error, update_event_integration_errors(), tuple()}.
update_event_integration(Client, Name, Input0, Options0) ->
    Method = patch,
    Path = ["/eventIntegrations/", aws_util:encode_uri(Name), ""],
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
    Client1 = Client#{service => <<"app-integrations">>},
    Host = build_host(<<"app-integrations">>, Client1),
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
