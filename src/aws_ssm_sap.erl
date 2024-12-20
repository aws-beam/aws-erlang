%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc This API reference provides descriptions, syntax, and other details
%% about each of the
%% actions and data types for AWS Systems Manager for SAP.
%%
%% The topic for each action shows
%% the API request parameters and responses.
-module(aws_ssm_sap).

-export([delete_resource_permission/2,
         delete_resource_permission/3,
         deregister_application/2,
         deregister_application/3,
         get_application/2,
         get_application/3,
         get_component/2,
         get_component/3,
         get_database/2,
         get_database/3,
         get_operation/2,
         get_operation/3,
         get_resource_permission/2,
         get_resource_permission/3,
         list_applications/2,
         list_applications/3,
         list_components/2,
         list_components/3,
         list_databases/2,
         list_databases/3,
         list_operation_events/2,
         list_operation_events/3,
         list_operations/2,
         list_operations/3,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         put_resource_permission/2,
         put_resource_permission/3,
         register_application/2,
         register_application/3,
         start_application/2,
         start_application/3,
         start_application_refresh/2,
         start_application_refresh/3,
         stop_application/2,
         stop_application/3,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_application_settings/2,
         update_application_settings/3]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% get_component_output() :: #{
%%   <<"Component">> => component(),
%%   <<"Tags">> => map()
%% }
-type get_component_output() :: #{binary() => any()}.


%% Example:
%% operation() :: #{
%%   <<"EndTime">> => [non_neg_integer()],
%%   <<"Id">> => string(),
%%   <<"LastUpdatedTime">> => [non_neg_integer()],
%%   <<"Properties">> => map(),
%%   <<"ResourceArn">> => string(),
%%   <<"ResourceId">> => string(),
%%   <<"ResourceType">> => string(),
%%   <<"StartTime">> => [non_neg_integer()],
%%   <<"Status">> => list(any()),
%%   <<"StatusMessage">> => [string()],
%%   <<"Type">> => string()
%% }
-type operation() :: #{binary() => any()}.


%% Example:
%% put_resource_permission_output() :: #{
%%   <<"Policy">> => [string()]
%% }
-type put_resource_permission_output() :: #{binary() => any()}.


%% Example:
%% start_application_output() :: #{
%%   <<"OperationId">> => string()
%% }
-type start_application_output() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% database() :: #{
%%   <<"ApplicationId">> => string(),
%%   <<"Arn">> => string(),
%%   <<"ComponentId">> => string(),
%%   <<"ConnectedComponentArns">> => list(string()()),
%%   <<"Credentials">> => list(application_credential()()),
%%   <<"DatabaseId">> => string(),
%%   <<"DatabaseName">> => [string()],
%%   <<"DatabaseType">> => list(any()),
%%   <<"LastUpdated">> => [non_neg_integer()],
%%   <<"PrimaryHost">> => [string()],
%%   <<"SQLPort">> => [integer()],
%%   <<"Status">> => list(any())
%% }
-type database() :: #{binary() => any()}.


%% Example:
%% stop_application_output() :: #{
%%   <<"OperationId">> => string()
%% }
-type stop_application_output() :: #{binary() => any()}.


%% Example:
%% unauthorized_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type unauthorized_exception() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% register_application_output() :: #{
%%   <<"Application">> => application(),
%%   <<"OperationId">> => string()
%% }
-type register_application_output() :: #{binary() => any()}.


%% Example:
%% list_operations_output() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Operations">> => list(operation()())
%% }
-type list_operations_output() :: #{binary() => any()}.


%% Example:
%% database_connection() :: #{
%%   <<"ConnectionIp">> => [string()],
%%   <<"DatabaseArn">> => string(),
%%   <<"DatabaseConnectionMethod">> => list(any())
%% }
-type database_connection() :: #{binary() => any()}.


%% Example:
%% ip_address_member() :: #{
%%   <<"AllocationType">> => list(any()),
%%   <<"IpAddress">> => [string()],
%%   <<"Primary">> => [boolean()]
%% }
-type ip_address_member() :: #{binary() => any()}.


%% Example:
%% backint_config() :: #{
%%   <<"BackintMode">> => list(any()),
%%   <<"EnsureNoBackupInProcess">> => [boolean()]
%% }
-type backint_config() :: #{binary() => any()}.


%% Example:
%% delete_resource_permission_output() :: #{
%%   <<"Policy">> => [string()]
%% }
-type delete_resource_permission_output() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"tagKeys">> := list(string()())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% list_operation_events_output() :: #{
%%   <<"NextToken">> => string(),
%%   <<"OperationEvents">> => list(operation_event()())
%% }
-type list_operation_events_output() :: #{binary() => any()}.


%% Example:
%% component_summary() :: #{
%%   <<"ApplicationId">> => string(),
%%   <<"Arn">> => string(),
%%   <<"ComponentId">> => string(),
%%   <<"ComponentType">> => list(any()),
%%   <<"Tags">> => map()
%% }
-type component_summary() :: #{binary() => any()}.


%% Example:
%% list_components_output() :: #{
%%   <<"Components">> => list(component_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_components_output() :: #{binary() => any()}.


%% Example:
%% resilience() :: #{
%%   <<"ClusterStatus">> => list(any()),
%%   <<"EnqueueReplication">> => [boolean()],
%%   <<"HsrOperationMode">> => list(any()),
%%   <<"HsrReplicationMode">> => list(any()),
%%   <<"HsrTier">> => [string()]
%% }
-type resilience() :: #{binary() => any()}.


%% Example:
%% stop_application_input() :: #{
%%   <<"ApplicationId">> := string(),
%%   <<"IncludeEc2InstanceShutdown">> => [boolean()],
%%   <<"StopConnectedEntity">> => list(any())
%% }
-type stop_application_input() :: #{binary() => any()}.


%% Example:
%% list_databases_input() :: #{
%%   <<"ApplicationId">> => string(),
%%   <<"ComponentId">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_databases_input() :: #{binary() => any()}.


%% Example:
%% list_operation_events_input() :: #{
%%   <<"Filters">> => list(filter()()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"OperationId">> := string()
%% }
-type list_operation_events_input() :: #{binary() => any()}.


%% Example:
%% list_applications_output() :: #{
%%   <<"Applications">> => list(application_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_applications_output() :: #{binary() => any()}.


%% Example:
%% deregister_application_input() :: #{
%%   <<"ApplicationId">> := string()
%% }
-type deregister_application_input() :: #{binary() => any()}.


%% Example:
%% get_operation_output() :: #{
%%   <<"Operation">> => operation()
%% }
-type get_operation_output() :: #{binary() => any()}.


%% Example:
%% application_credential() :: #{
%%   <<"CredentialType">> => list(any()),
%%   <<"DatabaseName">> => string(),
%%   <<"SecretId">> => string()
%% }
-type application_credential() :: #{binary() => any()}.


%% Example:
%% start_application_refresh_input() :: #{
%%   <<"ApplicationId">> := string()
%% }
-type start_application_refresh_input() :: #{binary() => any()}.


%% Example:
%% list_applications_input() :: #{
%%   <<"Filters">> => list(filter()()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_applications_input() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% get_database_output() :: #{
%%   <<"Database">> => database(),
%%   <<"Tags">> => map()
%% }
-type get_database_output() :: #{binary() => any()}.


%% Example:
%% get_operation_input() :: #{
%%   <<"OperationId">> := string()
%% }
-type get_operation_input() :: #{binary() => any()}.


%% Example:
%% update_application_settings_output() :: #{
%%   <<"Message">> => [string()],
%%   <<"OperationIds">> => list(string()())
%% }
-type update_application_settings_output() :: #{binary() => any()}.


%% Example:
%% list_databases_output() :: #{
%%   <<"Databases">> => list(database_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_databases_output() :: #{binary() => any()}.


%% Example:
%% component() :: #{
%%   <<"ApplicationId">> => string(),
%%   <<"Arn">> => string(),
%%   <<"AssociatedHost">> => associated_host(),
%%   <<"ChildComponents">> => list(string()()),
%%   <<"ComponentId">> => string(),
%%   <<"ComponentType">> => list(any()),
%%   <<"DatabaseConnection">> => database_connection(),
%%   <<"Databases">> => list(string()()),
%%   <<"HdbVersion">> => [string()],
%%   <<"Hosts">> => list(host()()),
%%   <<"LastUpdated">> => [non_neg_integer()],
%%   <<"ParentComponent">> => string(),
%%   <<"PrimaryHost">> => [string()],
%%   <<"Resilience">> => resilience(),
%%   <<"SapFeature">> => [string()],
%%   <<"SapHostname">> => [string()],
%%   <<"SapKernelVersion">> => [string()],
%%   <<"Sid">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"SystemNumber">> => string()
%% }
-type component() :: #{binary() => any()}.


%% Example:
%% list_components_input() :: #{
%%   <<"ApplicationId">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_components_input() :: #{binary() => any()}.


%% Example:
%% application() :: #{
%%   <<"AppRegistryArn">> => string(),
%%   <<"Arn">> => string(),
%%   <<"AssociatedApplicationArns">> => list(string()()),
%%   <<"Components">> => list(string()()),
%%   <<"DiscoveryStatus">> => list(any()),
%%   <<"Id">> => string(),
%%   <<"LastUpdated">> => [non_neg_integer()],
%%   <<"Status">> => list(any()),
%%   <<"StatusMessage">> => [string()],
%%   <<"Type">> => list(any())
%% }
-type application() :: #{binary() => any()}.


%% Example:
%% delete_resource_permission_input() :: #{
%%   <<"ActionType">> => list(any()),
%%   <<"ResourceArn">> := string(),
%%   <<"SourceResourceArn">> => string()
%% }
-type delete_resource_permission_input() :: #{binary() => any()}.

%% Example:
%% deregister_application_output() :: #{}
-type deregister_application_output() :: #{}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% get_database_input() :: #{
%%   <<"ApplicationId">> => string(),
%%   <<"ComponentId">> => string(),
%%   <<"DatabaseArn">> => string(),
%%   <<"DatabaseId">> => string()
%% }
-type get_database_input() :: #{binary() => any()}.


%% Example:
%% operation_event() :: #{
%%   <<"Description">> => [string()],
%%   <<"Resource">> => resource(),
%%   <<"Status">> => list(any()),
%%   <<"StatusMessage">> => [string()],
%%   <<"Timestamp">> => [non_neg_integer()]
%% }
-type operation_event() :: #{binary() => any()}.


%% Example:
%% filter() :: #{
%%   <<"Name">> => string(),
%%   <<"Operator">> => list(any()),
%%   <<"Value">> => string()
%% }
-type filter() :: #{binary() => any()}.


%% Example:
%% host() :: #{
%%   <<"EC2InstanceId">> => [string()],
%%   <<"HostIp">> => [string()],
%%   <<"HostName">> => [string()],
%%   <<"HostRole">> => list(any()),
%%   <<"InstanceId">> => [string()],
%%   <<"OsVersion">> => [string()]
%% }
-type host() :: #{binary() => any()}.


%% Example:
%% start_application_input() :: #{
%%   <<"ApplicationId">> := string()
%% }
-type start_application_input() :: #{binary() => any()}.


%% Example:
%% get_application_output() :: #{
%%   <<"Application">> => application(),
%%   <<"Tags">> => map()
%% }
-type get_application_output() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% get_component_input() :: #{
%%   <<"ApplicationId">> := string(),
%%   <<"ComponentId">> := string()
%% }
-type get_component_input() :: #{binary() => any()}.


%% Example:
%% associated_host() :: #{
%%   <<"Ec2InstanceId">> => [string()],
%%   <<"Hostname">> => [string()],
%%   <<"IpAddresses">> => list(ip_address_member()()),
%%   <<"OsVersion">> => [string()]
%% }
-type associated_host() :: #{binary() => any()}.


%% Example:
%% component_info() :: #{
%%   <<"ComponentType">> => list(any()),
%%   <<"Ec2InstanceId">> => string(),
%%   <<"Sid">> => string()
%% }
-type component_info() :: #{binary() => any()}.


%% Example:
%% update_application_settings_input() :: #{
%%   <<"ApplicationId">> := string(),
%%   <<"Backint">> => backint_config(),
%%   <<"CredentialsToAddOrUpdate">> => list(application_credential()()),
%%   <<"CredentialsToRemove">> => list(application_credential()()),
%%   <<"DatabaseArn">> => string()
%% }
-type update_application_settings_input() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% validation_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% list_operations_input() :: #{
%%   <<"ApplicationId">> := string(),
%%   <<"Filters">> => list(filter()()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_operations_input() :: #{binary() => any()}.


%% Example:
%% database_summary() :: #{
%%   <<"ApplicationId">> => string(),
%%   <<"Arn">> => string(),
%%   <<"ComponentId">> => string(),
%%   <<"DatabaseId">> => string(),
%%   <<"DatabaseType">> => list(any()),
%%   <<"Tags">> => map()
%% }
-type database_summary() :: #{binary() => any()}.


%% Example:
%% get_resource_permission_input() :: #{
%%   <<"ActionType">> => list(any()),
%%   <<"ResourceArn">> := string()
%% }
-type get_resource_permission_input() :: #{binary() => any()}.


%% Example:
%% start_application_refresh_output() :: #{
%%   <<"OperationId">> => string()
%% }
-type start_application_refresh_output() :: #{binary() => any()}.


%% Example:
%% application_summary() :: #{
%%   <<"Arn">> => string(),
%%   <<"DiscoveryStatus">> => list(any()),
%%   <<"Id">> => string(),
%%   <<"Tags">> => map(),
%%   <<"Type">> => list(any())
%% }
-type application_summary() :: #{binary() => any()}.


%% Example:
%% put_resource_permission_input() :: #{
%%   <<"ActionType">> := list(any()),
%%   <<"ResourceArn">> := string(),
%%   <<"SourceResourceArn">> := string()
%% }
-type put_resource_permission_input() :: #{binary() => any()}.


%% Example:
%% get_resource_permission_output() :: #{
%%   <<"Policy">> => [string()]
%% }
-type get_resource_permission_output() :: #{binary() => any()}.


%% Example:
%% get_application_input() :: #{
%%   <<"AppRegistryArn">> => string(),
%%   <<"ApplicationArn">> => string(),
%%   <<"ApplicationId">> => string()
%% }
-type get_application_input() :: #{binary() => any()}.


%% Example:
%% register_application_input() :: #{
%%   <<"ApplicationId">> := string(),
%%   <<"ApplicationType">> := list(any()),
%%   <<"ComponentsInfo">> => list(component_info()()),
%%   <<"Credentials">> => list(application_credential()()),
%%   <<"DatabaseArn">> => string(),
%%   <<"Instances">> := list(string()()),
%%   <<"SapInstanceNumber">> => string(),
%%   <<"Sid">> => string(),
%%   <<"Tags">> => map()
%% }
-type register_application_input() :: #{binary() => any()}.


%% Example:
%% resource() :: #{
%%   <<"ResourceArn">> => string(),
%%   <<"ResourceType">> => string()
%% }
-type resource() :: #{binary() => any()}.

-type delete_resource_permission_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type deregister_application_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    unauthorized_exception().

-type get_application_errors() ::
    validation_exception() | 
    internal_server_exception().

-type get_component_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    unauthorized_exception().

-type get_database_errors() ::
    validation_exception() | 
    internal_server_exception().

-type get_operation_errors() ::
    validation_exception() | 
    internal_server_exception().

-type get_resource_permission_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_applications_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_components_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception().

-type list_databases_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_operation_events_errors() ::
    validation_exception() | 
    internal_server_exception().

-type list_operations_errors() ::
    validation_exception() | 
    internal_server_exception().

-type list_tags_for_resource_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type put_resource_permission_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type register_application_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type start_application_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type start_application_refresh_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    unauthorized_exception().

-type stop_application_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type tag_resource_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type untag_resource_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_application_settings_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    unauthorized_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Removes permissions associated with the target database.
-spec delete_resource_permission(aws_client:aws_client(), delete_resource_permission_input()) ->
    {ok, delete_resource_permission_output(), tuple()} |
    {error, any()} |
    {error, delete_resource_permission_errors(), tuple()}.
delete_resource_permission(Client, Input) ->
    delete_resource_permission(Client, Input, []).

-spec delete_resource_permission(aws_client:aws_client(), delete_resource_permission_input(), proplists:proplist()) ->
    {ok, delete_resource_permission_output(), tuple()} |
    {error, any()} |
    {error, delete_resource_permission_errors(), tuple()}.
delete_resource_permission(Client, Input0, Options0) ->
    Method = post,
    Path = ["/delete-resource-permission"],
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

%% @doc Deregister an SAP application with AWS Systems Manager for SAP.
%%
%% This action does not
%% aﬀect the existing setup of your SAP workloads on Amazon EC2.
-spec deregister_application(aws_client:aws_client(), deregister_application_input()) ->
    {ok, deregister_application_output(), tuple()} |
    {error, any()} |
    {error, deregister_application_errors(), tuple()}.
deregister_application(Client, Input) ->
    deregister_application(Client, Input, []).

-spec deregister_application(aws_client:aws_client(), deregister_application_input(), proplists:proplist()) ->
    {ok, deregister_application_output(), tuple()} |
    {error, any()} |
    {error, deregister_application_errors(), tuple()}.
deregister_application(Client, Input0, Options0) ->
    Method = post,
    Path = ["/deregister-application"],
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

%% @doc Gets an application registered with AWS Systems Manager for SAP.
%%
%% It also returns the
%% components of the application.
-spec get_application(aws_client:aws_client(), get_application_input()) ->
    {ok, get_application_output(), tuple()} |
    {error, any()} |
    {error, get_application_errors(), tuple()}.
get_application(Client, Input) ->
    get_application(Client, Input, []).

-spec get_application(aws_client:aws_client(), get_application_input(), proplists:proplist()) ->
    {ok, get_application_output(), tuple()} |
    {error, any()} |
    {error, get_application_errors(), tuple()}.
get_application(Client, Input0, Options0) ->
    Method = post,
    Path = ["/get-application"],
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

%% @doc Gets the component of an application registered with AWS Systems
%% Manager for
%% SAP.
-spec get_component(aws_client:aws_client(), get_component_input()) ->
    {ok, get_component_output(), tuple()} |
    {error, any()} |
    {error, get_component_errors(), tuple()}.
get_component(Client, Input) ->
    get_component(Client, Input, []).

-spec get_component(aws_client:aws_client(), get_component_input(), proplists:proplist()) ->
    {ok, get_component_output(), tuple()} |
    {error, any()} |
    {error, get_component_errors(), tuple()}.
get_component(Client, Input0, Options0) ->
    Method = post,
    Path = ["/get-component"],
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

%% @doc Gets the SAP HANA database of an application registered with AWS
%% Systems Manager for
%% SAP.
-spec get_database(aws_client:aws_client(), get_database_input()) ->
    {ok, get_database_output(), tuple()} |
    {error, any()} |
    {error, get_database_errors(), tuple()}.
get_database(Client, Input) ->
    get_database(Client, Input, []).

-spec get_database(aws_client:aws_client(), get_database_input(), proplists:proplist()) ->
    {ok, get_database_output(), tuple()} |
    {error, any()} |
    {error, get_database_errors(), tuple()}.
get_database(Client, Input0, Options0) ->
    Method = post,
    Path = ["/get-database"],
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

%% @doc Gets the details of an operation by specifying the operation ID.
-spec get_operation(aws_client:aws_client(), get_operation_input()) ->
    {ok, get_operation_output(), tuple()} |
    {error, any()} |
    {error, get_operation_errors(), tuple()}.
get_operation(Client, Input) ->
    get_operation(Client, Input, []).

-spec get_operation(aws_client:aws_client(), get_operation_input(), proplists:proplist()) ->
    {ok, get_operation_output(), tuple()} |
    {error, any()} |
    {error, get_operation_errors(), tuple()}.
get_operation(Client, Input0, Options0) ->
    Method = post,
    Path = ["/get-operation"],
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

%% @doc Gets permissions associated with the target database.
-spec get_resource_permission(aws_client:aws_client(), get_resource_permission_input()) ->
    {ok, get_resource_permission_output(), tuple()} |
    {error, any()} |
    {error, get_resource_permission_errors(), tuple()}.
get_resource_permission(Client, Input) ->
    get_resource_permission(Client, Input, []).

-spec get_resource_permission(aws_client:aws_client(), get_resource_permission_input(), proplists:proplist()) ->
    {ok, get_resource_permission_output(), tuple()} |
    {error, any()} |
    {error, get_resource_permission_errors(), tuple()}.
get_resource_permission(Client, Input0, Options0) ->
    Method = post,
    Path = ["/get-resource-permission"],
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

%% @doc Lists all the applications registered with AWS Systems Manager for
%% SAP.
-spec list_applications(aws_client:aws_client(), list_applications_input()) ->
    {ok, list_applications_output(), tuple()} |
    {error, any()} |
    {error, list_applications_errors(), tuple()}.
list_applications(Client, Input) ->
    list_applications(Client, Input, []).

-spec list_applications(aws_client:aws_client(), list_applications_input(), proplists:proplist()) ->
    {ok, list_applications_output(), tuple()} |
    {error, any()} |
    {error, list_applications_errors(), tuple()}.
list_applications(Client, Input0, Options0) ->
    Method = post,
    Path = ["/list-applications"],
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

%% @doc Lists all the components registered with AWS Systems Manager for SAP.
-spec list_components(aws_client:aws_client(), list_components_input()) ->
    {ok, list_components_output(), tuple()} |
    {error, any()} |
    {error, list_components_errors(), tuple()}.
list_components(Client, Input) ->
    list_components(Client, Input, []).

-spec list_components(aws_client:aws_client(), list_components_input(), proplists:proplist()) ->
    {ok, list_components_output(), tuple()} |
    {error, any()} |
    {error, list_components_errors(), tuple()}.
list_components(Client, Input0, Options0) ->
    Method = post,
    Path = ["/list-components"],
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

%% @doc Lists the SAP HANA databases of an application registered with AWS
%% Systems Manager for
%% SAP.
-spec list_databases(aws_client:aws_client(), list_databases_input()) ->
    {ok, list_databases_output(), tuple()} |
    {error, any()} |
    {error, list_databases_errors(), tuple()}.
list_databases(Client, Input) ->
    list_databases(Client, Input, []).

-spec list_databases(aws_client:aws_client(), list_databases_input(), proplists:proplist()) ->
    {ok, list_databases_output(), tuple()} |
    {error, any()} |
    {error, list_databases_errors(), tuple()}.
list_databases(Client, Input0, Options0) ->
    Method = post,
    Path = ["/list-databases"],
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

%% @doc Returns a list of operations events.
%%
%% Available parameters include `OperationID', as well as optional
%% parameters
%% `MaxResults', `NextToken', and `Filters'.
-spec list_operation_events(aws_client:aws_client(), list_operation_events_input()) ->
    {ok, list_operation_events_output(), tuple()} |
    {error, any()} |
    {error, list_operation_events_errors(), tuple()}.
list_operation_events(Client, Input) ->
    list_operation_events(Client, Input, []).

-spec list_operation_events(aws_client:aws_client(), list_operation_events_input(), proplists:proplist()) ->
    {ok, list_operation_events_output(), tuple()} |
    {error, any()} |
    {error, list_operation_events_errors(), tuple()}.
list_operation_events(Client, Input0, Options0) ->
    Method = post,
    Path = ["/list-operation-events"],
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

%% @doc Lists the operations performed by AWS Systems Manager for SAP.
-spec list_operations(aws_client:aws_client(), list_operations_input()) ->
    {ok, list_operations_output(), tuple()} |
    {error, any()} |
    {error, list_operations_errors(), tuple()}.
list_operations(Client, Input) ->
    list_operations(Client, Input, []).

-spec list_operations(aws_client:aws_client(), list_operations_input(), proplists:proplist()) ->
    {ok, list_operations_output(), tuple()} |
    {error, any()} |
    {error, list_operations_errors(), tuple()}.
list_operations(Client, Input0, Options0) ->
    Method = post,
    Path = ["/list-operations"],
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

%% @doc Lists all tags on an SAP HANA application and/or database registered
%% with AWS Systems
%% Manager for SAP.
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

%% @doc Adds permissions to the target database.
-spec put_resource_permission(aws_client:aws_client(), put_resource_permission_input()) ->
    {ok, put_resource_permission_output(), tuple()} |
    {error, any()} |
    {error, put_resource_permission_errors(), tuple()}.
put_resource_permission(Client, Input) ->
    put_resource_permission(Client, Input, []).

-spec put_resource_permission(aws_client:aws_client(), put_resource_permission_input(), proplists:proplist()) ->
    {ok, put_resource_permission_output(), tuple()} |
    {error, any()} |
    {error, put_resource_permission_errors(), tuple()}.
put_resource_permission(Client, Input0, Options0) ->
    Method = post,
    Path = ["/put-resource-permission"],
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

%% @doc Register an SAP application with AWS Systems Manager for SAP.
%%
%% You must meet the
%% following requirements before registering.
%%
%% The SAP application you want to register with AWS Systems Manager for SAP
%% is running
%% on Amazon EC2.
%%
%% AWS Systems Manager Agent must be setup on an Amazon EC2 instance along
%% with the required
%% IAM permissions.
%%
%% Amazon EC2 instance(s) must have access to the secrets created in AWS
%% Secrets Manager to
%% manage SAP applications and components.
-spec register_application(aws_client:aws_client(), register_application_input()) ->
    {ok, register_application_output(), tuple()} |
    {error, any()} |
    {error, register_application_errors(), tuple()}.
register_application(Client, Input) ->
    register_application(Client, Input, []).

-spec register_application(aws_client:aws_client(), register_application_input(), proplists:proplist()) ->
    {ok, register_application_output(), tuple()} |
    {error, any()} |
    {error, register_application_errors(), tuple()}.
register_application(Client, Input0, Options0) ->
    Method = post,
    Path = ["/register-application"],
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

%% @doc Request is an operation which starts an application.
%%
%% Parameter `ApplicationId' is required.
-spec start_application(aws_client:aws_client(), start_application_input()) ->
    {ok, start_application_output(), tuple()} |
    {error, any()} |
    {error, start_application_errors(), tuple()}.
start_application(Client, Input) ->
    start_application(Client, Input, []).

-spec start_application(aws_client:aws_client(), start_application_input(), proplists:proplist()) ->
    {ok, start_application_output(), tuple()} |
    {error, any()} |
    {error, start_application_errors(), tuple()}.
start_application(Client, Input0, Options0) ->
    Method = post,
    Path = ["/start-application"],
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

%% @doc Refreshes a registered application.
-spec start_application_refresh(aws_client:aws_client(), start_application_refresh_input()) ->
    {ok, start_application_refresh_output(), tuple()} |
    {error, any()} |
    {error, start_application_refresh_errors(), tuple()}.
start_application_refresh(Client, Input) ->
    start_application_refresh(Client, Input, []).

-spec start_application_refresh(aws_client:aws_client(), start_application_refresh_input(), proplists:proplist()) ->
    {ok, start_application_refresh_output(), tuple()} |
    {error, any()} |
    {error, start_application_refresh_errors(), tuple()}.
start_application_refresh(Client, Input0, Options0) ->
    Method = post,
    Path = ["/start-application-refresh"],
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

%% @doc Request is an operation to stop an application.
%%
%% Parameter `ApplicationId' is required. Parameters
%% `StopConnectedEntity' and `IncludeEc2InstanceShutdown' are
%% optional.
-spec stop_application(aws_client:aws_client(), stop_application_input()) ->
    {ok, stop_application_output(), tuple()} |
    {error, any()} |
    {error, stop_application_errors(), tuple()}.
stop_application(Client, Input) ->
    stop_application(Client, Input, []).

-spec stop_application(aws_client:aws_client(), stop_application_input(), proplists:proplist()) ->
    {ok, stop_application_output(), tuple()} |
    {error, any()} |
    {error, stop_application_errors(), tuple()}.
stop_application(Client, Input0, Options0) ->
    Method = post,
    Path = ["/stop-application"],
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

%% @doc Creates tag for a resource by specifying the ARN.
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

%% @doc Delete the tags for a resource.
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

%% @doc Updates the settings of an application registered with AWS Systems
%% Manager for
%% SAP.
-spec update_application_settings(aws_client:aws_client(), update_application_settings_input()) ->
    {ok, update_application_settings_output(), tuple()} |
    {error, any()} |
    {error, update_application_settings_errors(), tuple()}.
update_application_settings(Client, Input) ->
    update_application_settings(Client, Input, []).

-spec update_application_settings(aws_client:aws_client(), update_application_settings_input(), proplists:proplist()) ->
    {ok, update_application_settings_output(), tuple()} |
    {error, any()} |
    {error, update_application_settings_errors(), tuple()}.
update_application_settings(Client, Input0, Options0) ->
    Method = post,
    Path = ["/update-application-settings"],
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
    Client1 = Client#{service => <<"ssm-sap">>},
    Host = build_host(<<"ssm-sap">>, Client1),
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
