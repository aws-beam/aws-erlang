%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Quick Setup helps you quickly configure frequently used services and
%% features with
%% recommended best practices.
%%
%% Quick Setup simplifies setting up services, including
%% Systems Manager, by automating common or recommended tasks.
-module(aws_ssm_quicksetup).

-export([create_configuration_manager/2,
         create_configuration_manager/3,
         delete_configuration_manager/3,
         delete_configuration_manager/4,
         get_configuration/2,
         get_configuration/4,
         get_configuration/5,
         get_configuration_manager/2,
         get_configuration_manager/4,
         get_configuration_manager/5,
         get_service_settings/1,
         get_service_settings/3,
         get_service_settings/4,
         list_configuration_managers/2,
         list_configuration_managers/3,
         list_configurations/2,
         list_configurations/3,
         list_quick_setup_types/1,
         list_quick_setup_types/3,
         list_quick_setup_types/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_configuration_definition/4,
         update_configuration_definition/5,
         update_configuration_manager/3,
         update_configuration_manager/4,
         update_service_settings/2,
         update_service_settings/3]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% configuration_definition_summary() :: #{
%%   <<"FirstClassParameters">> => map(),
%%   <<"Id">> => [string()],
%%   <<"Type">> => [string()],
%%   <<"TypeVersion">> => [string()]
%% }
-type configuration_definition_summary() :: #{binary() => any()}.


%% Example:
%% status_summary() :: #{
%%   <<"LastUpdatedAt">> => [non_neg_integer()],
%%   <<"Status">> => list(any()),
%%   <<"StatusDetails">> => map(),
%%   <<"StatusMessage">> => [string()],
%%   <<"StatusType">> => list(any())
%% }
-type status_summary() :: #{binary() => any()}.


%% Example:
%% get_configuration_manager_output() :: #{
%%   <<"ConfigurationDefinitions">> => list(configuration_definition()()),
%%   <<"CreatedAt">> => [non_neg_integer()],
%%   <<"Description">> => [string()],
%%   <<"LastModifiedAt">> => [non_neg_integer()],
%%   <<"ManagerArn">> => [string()],
%%   <<"Name">> => [string()],
%%   <<"StatusSummaries">> => list(status_summary()()),
%%   <<"Tags">> => map()
%% }
-type get_configuration_manager_output() :: #{binary() => any()}.


%% Example:
%% configuration_summary() :: #{
%%   <<"Account">> => [string()],
%%   <<"ConfigurationDefinitionId">> => [string()],
%%   <<"CreatedAt">> => [non_neg_integer()],
%%   <<"FirstClassParameters">> => map(),
%%   <<"Id">> => [string()],
%%   <<"ManagerArn">> => [string()],
%%   <<"Region">> => [string()],
%%   <<"StatusSummaries">> => list(status_summary()()),
%%   <<"Type">> => [string()],
%%   <<"TypeVersion">> => [string()]
%% }
-type configuration_summary() :: #{binary() => any()}.


%% Example:
%% get_configuration_output() :: #{
%%   <<"Account">> => [string()],
%%   <<"ConfigurationDefinitionId">> => [string()],
%%   <<"CreatedAt">> => [non_neg_integer()],
%%   <<"Id">> => [string()],
%%   <<"LastModifiedAt">> => [non_neg_integer()],
%%   <<"ManagerArn">> => [string()],
%%   <<"Parameters">> => map(),
%%   <<"Region">> => [string()],
%%   <<"StatusSummaries">> => list(status_summary()()),
%%   <<"Type">> => [string()],
%%   <<"TypeVersion">> => [string()]
%% }
-type get_configuration_output() :: #{binary() => any()}.


%% Example:
%% list_configuration_managers_output() :: #{
%%   <<"ConfigurationManagersList">> => list(configuration_manager_summary()()),
%%   <<"NextToken">> => [string()]
%% }
-type list_configuration_managers_output() :: #{binary() => any()}.


%% Example:
%% create_configuration_manager_input() :: #{
%%   <<"ConfigurationDefinitions">> := list(configuration_definition_input()()),
%%   <<"Description">> => [string()],
%%   <<"Name">> => [string()],
%%   <<"Tags">> => map()
%% }
-type create_configuration_manager_input() :: #{binary() => any()}.


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
%% update_configuration_manager_input() :: #{
%%   <<"Description">> => [string()],
%%   <<"Name">> => [string()]
%% }
-type update_configuration_manager_input() :: #{binary() => any()}.


%% Example:
%% configuration_definition() :: #{
%%   <<"Id">> => [string()],
%%   <<"LocalDeploymentAdministrationRoleArn">> => string(),
%%   <<"LocalDeploymentExecutionRoleName">> => [string()],
%%   <<"Parameters">> => map(),
%%   <<"Type">> => [string()],
%%   <<"TypeVersion">> => [string()]
%% }
-type configuration_definition() :: #{binary() => any()}.

%% Example:
%% get_configuration_input() :: #{}
-type get_configuration_input() :: #{}.


%% Example:
%% list_quick_setup_types_output() :: #{
%%   <<"QuickSetupTypeList">> => list(quick_setup_type_output()())
%% }
-type list_quick_setup_types_output() :: #{binary() => any()}.


%% Example:
%% list_configurations_output() :: #{
%%   <<"ConfigurationsList">> => list(configuration_summary()()),
%%   <<"NextToken">> => [string()]
%% }
-type list_configurations_output() :: #{binary() => any()}.

%% Example:
%% get_configuration_manager_input() :: #{}
-type get_configuration_manager_input() :: #{}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"Tags">> => list(tag_entry()())
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.

%% Example:
%% delete_configuration_manager_input() :: #{}
-type delete_configuration_manager_input() :: #{}.


%% Example:
%% tag_resource_input() :: #{
%%   <<"Tags">> := map()
%% }
-type tag_resource_input() :: #{binary() => any()}.


%% Example:
%% filter() :: #{
%%   <<"Key">> => [string()],
%%   <<"Values">> => list([string()]())
%% }
-type filter() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% untag_resource_input() :: #{
%%   <<"TagKeys">> := list([string()]())
%% }
-type untag_resource_input() :: #{binary() => any()}.


%% Example:
%% update_configuration_definition_input() :: #{
%%   <<"LocalDeploymentAdministrationRoleArn">> => string(),
%%   <<"LocalDeploymentExecutionRoleName">> => [string()],
%%   <<"Parameters">> => map(),
%%   <<"TypeVersion">> => [string()]
%% }
-type update_configuration_definition_input() :: #{binary() => any()}.


%% Example:
%% service_settings() :: #{
%%   <<"ExplorerEnablingRoleArn">> => string()
%% }
-type service_settings() :: #{binary() => any()}.


%% Example:
%% get_service_settings_output() :: #{
%%   <<"ServiceSettings">> => service_settings()
%% }
-type get_service_settings_output() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% throttling_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% update_service_settings_input() :: #{
%%   <<"ExplorerEnablingRoleArn">> => string()
%% }
-type update_service_settings_input() :: #{binary() => any()}.


%% Example:
%% quick_setup_type_output() :: #{
%%   <<"LatestVersion">> => [string()],
%%   <<"Type">> => [string()]
%% }
-type quick_setup_type_output() :: #{binary() => any()}.


%% Example:
%% tag_entry() :: #{
%%   <<"Key">> => [string()],
%%   <<"Value">> => [string()]
%% }
-type tag_entry() :: #{binary() => any()}.


%% Example:
%% create_configuration_manager_output() :: #{
%%   <<"ManagerArn">> => [string()]
%% }
-type create_configuration_manager_output() :: #{binary() => any()}.


%% Example:
%% configuration_manager_summary() :: #{
%%   <<"ConfigurationDefinitionSummaries">> => list(configuration_definition_summary()()),
%%   <<"Description">> => [string()],
%%   <<"ManagerArn">> => [string()],
%%   <<"Name">> => [string()],
%%   <<"StatusSummaries">> => list(status_summary()())
%% }
-type configuration_manager_summary() :: #{binary() => any()}.


%% Example:
%% list_configuration_managers_input() :: #{
%%   <<"Filters">> => list(filter()()),
%%   <<"MaxItems">> => [integer()],
%%   <<"StartingToken">> => [string()]
%% }
-type list_configuration_managers_input() :: #{binary() => any()}.


%% Example:
%% configuration_definition_input() :: #{
%%   <<"LocalDeploymentAdministrationRoleArn">> => string(),
%%   <<"LocalDeploymentExecutionRoleName">> => [string()],
%%   <<"Parameters">> => map(),
%%   <<"Type">> => [string()],
%%   <<"TypeVersion">> => [string()]
%% }
-type configuration_definition_input() :: #{binary() => any()}.


%% Example:
%% list_configurations_input() :: #{
%%   <<"ConfigurationDefinitionId">> => [string()],
%%   <<"Filters">> => list(filter()()),
%%   <<"ManagerArn">> => [string()],
%%   <<"MaxItems">> => [integer()],
%%   <<"StartingToken">> => [string()]
%% }
-type list_configurations_input() :: #{binary() => any()}.

-type create_configuration_manager_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type delete_configuration_manager_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_configuration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_configuration_manager_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_service_settings_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type list_configuration_managers_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type list_configurations_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_quick_setup_types_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type list_tags_for_resource_errors() ::
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
    resource_not_found_exception() | 
    conflict_exception().

-type untag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_configuration_definition_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_configuration_manager_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_service_settings_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a Quick Setup configuration manager resource.
%%
%% This object is a collection
%% of desired state configurations for multiple configuration definitions and
%% summaries describing the deployments of those definitions.
-spec create_configuration_manager(aws_client:aws_client(), create_configuration_manager_input()) ->
    {ok, create_configuration_manager_output(), tuple()} |
    {error, any()} |
    {error, create_configuration_manager_errors(), tuple()}.
create_configuration_manager(Client, Input) ->
    create_configuration_manager(Client, Input, []).

-spec create_configuration_manager(aws_client:aws_client(), create_configuration_manager_input(), proplists:proplist()) ->
    {ok, create_configuration_manager_output(), tuple()} |
    {error, any()} |
    {error, create_configuration_manager_errors(), tuple()}.
create_configuration_manager(Client, Input0, Options0) ->
    Method = post,
    Path = ["/configurationManager"],
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

%% @doc Deletes a configuration manager.
-spec delete_configuration_manager(aws_client:aws_client(), binary() | list(), delete_configuration_manager_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_configuration_manager_errors(), tuple()}.
delete_configuration_manager(Client, ManagerArn, Input) ->
    delete_configuration_manager(Client, ManagerArn, Input, []).

-spec delete_configuration_manager(aws_client:aws_client(), binary() | list(), delete_configuration_manager_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_configuration_manager_errors(), tuple()}.
delete_configuration_manager(Client, ManagerArn, Input0, Options0) ->
    Method = delete,
    Path = ["/configurationManager/", aws_util:encode_uri(ManagerArn), ""],
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

%% @doc Returns details about the specified configuration.
-spec get_configuration(aws_client:aws_client(), binary() | list()) ->
    {ok, get_configuration_output(), tuple()} |
    {error, any()} |
    {error, get_configuration_errors(), tuple()}.
get_configuration(Client, ConfigurationId)
  when is_map(Client) ->
    get_configuration(Client, ConfigurationId, #{}, #{}).

-spec get_configuration(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_configuration_output(), tuple()} |
    {error, any()} |
    {error, get_configuration_errors(), tuple()}.
get_configuration(Client, ConfigurationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_configuration(Client, ConfigurationId, QueryMap, HeadersMap, []).

-spec get_configuration(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_configuration_output(), tuple()} |
    {error, any()} |
    {error, get_configuration_errors(), tuple()}.
get_configuration(Client, ConfigurationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/getConfiguration/", aws_util:encode_uri(ConfigurationId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a configuration manager.
-spec get_configuration_manager(aws_client:aws_client(), binary() | list()) ->
    {ok, get_configuration_manager_output(), tuple()} |
    {error, any()} |
    {error, get_configuration_manager_errors(), tuple()}.
get_configuration_manager(Client, ManagerArn)
  when is_map(Client) ->
    get_configuration_manager(Client, ManagerArn, #{}, #{}).

-spec get_configuration_manager(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_configuration_manager_output(), tuple()} |
    {error, any()} |
    {error, get_configuration_manager_errors(), tuple()}.
get_configuration_manager(Client, ManagerArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_configuration_manager(Client, ManagerArn, QueryMap, HeadersMap, []).

-spec get_configuration_manager(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_configuration_manager_output(), tuple()} |
    {error, any()} |
    {error, get_configuration_manager_errors(), tuple()}.
get_configuration_manager(Client, ManagerArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/configurationManager/", aws_util:encode_uri(ManagerArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns settings configured for Quick Setup in the requesting Amazon
%% Web Services account and Amazon Web Services Region.
-spec get_service_settings(aws_client:aws_client()) ->
    {ok, get_service_settings_output(), tuple()} |
    {error, any()} |
    {error, get_service_settings_errors(), tuple()}.
get_service_settings(Client)
  when is_map(Client) ->
    get_service_settings(Client, #{}, #{}).

-spec get_service_settings(aws_client:aws_client(), map(), map()) ->
    {ok, get_service_settings_output(), tuple()} |
    {error, any()} |
    {error, get_service_settings_errors(), tuple()}.
get_service_settings(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_service_settings(Client, QueryMap, HeadersMap, []).

-spec get_service_settings(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, get_service_settings_output(), tuple()} |
    {error, any()} |
    {error, get_service_settings_errors(), tuple()}.
get_service_settings(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/serviceSettings"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns Quick Setup configuration managers.
-spec list_configuration_managers(aws_client:aws_client(), list_configuration_managers_input()) ->
    {ok, list_configuration_managers_output(), tuple()} |
    {error, any()} |
    {error, list_configuration_managers_errors(), tuple()}.
list_configuration_managers(Client, Input) ->
    list_configuration_managers(Client, Input, []).

-spec list_configuration_managers(aws_client:aws_client(), list_configuration_managers_input(), proplists:proplist()) ->
    {ok, list_configuration_managers_output(), tuple()} |
    {error, any()} |
    {error, list_configuration_managers_errors(), tuple()}.
list_configuration_managers(Client, Input0, Options0) ->
    Method = post,
    Path = ["/listConfigurationManagers"],
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

%% @doc Returns configurations deployed by Quick Setup in the requesting
%% Amazon Web Services account and Amazon Web Services Region.
-spec list_configurations(aws_client:aws_client(), list_configurations_input()) ->
    {ok, list_configurations_output(), tuple()} |
    {error, any()} |
    {error, list_configurations_errors(), tuple()}.
list_configurations(Client, Input) ->
    list_configurations(Client, Input, []).

-spec list_configurations(aws_client:aws_client(), list_configurations_input(), proplists:proplist()) ->
    {ok, list_configurations_output(), tuple()} |
    {error, any()} |
    {error, list_configurations_errors(), tuple()}.
list_configurations(Client, Input0, Options0) ->
    Method = post,
    Path = ["/listConfigurations"],
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

%% @doc Returns the available Quick Setup types.
-spec list_quick_setup_types(aws_client:aws_client()) ->
    {ok, list_quick_setup_types_output(), tuple()} |
    {error, any()} |
    {error, list_quick_setup_types_errors(), tuple()}.
list_quick_setup_types(Client)
  when is_map(Client) ->
    list_quick_setup_types(Client, #{}, #{}).

-spec list_quick_setup_types(aws_client:aws_client(), map(), map()) ->
    {ok, list_quick_setup_types_output(), tuple()} |
    {error, any()} |
    {error, list_quick_setup_types_errors(), tuple()}.
list_quick_setup_types(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_quick_setup_types(Client, QueryMap, HeadersMap, []).

-spec list_quick_setup_types(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_quick_setup_types_output(), tuple()} |
    {error, any()} |
    {error, list_quick_setup_types_errors(), tuple()}.
list_quick_setup_types(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/listQuickSetupTypes"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns tags assigned to the resource.
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

%% @doc Assigns key-value pairs of metadata to Amazon Web Services resources.
-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).

-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = put,
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

%% @doc Removes tags from the specified resource.
-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).

-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
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
                     {<<"tagKeys">>, <<"TagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a Quick Setup configuration definition.
-spec update_configuration_definition(aws_client:aws_client(), binary() | list(), binary() | list(), update_configuration_definition_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_configuration_definition_errors(), tuple()}.
update_configuration_definition(Client, Id, ManagerArn, Input) ->
    update_configuration_definition(Client, Id, ManagerArn, Input, []).

-spec update_configuration_definition(aws_client:aws_client(), binary() | list(), binary() | list(), update_configuration_definition_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_configuration_definition_errors(), tuple()}.
update_configuration_definition(Client, Id, ManagerArn, Input0, Options0) ->
    Method = put,
    Path = ["/configurationDefinition/", aws_util:encode_uri(ManagerArn), "/", aws_util:encode_uri(Id), ""],
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

%% @doc Updates a Quick Setup configuration manager.
-spec update_configuration_manager(aws_client:aws_client(), binary() | list(), update_configuration_manager_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_configuration_manager_errors(), tuple()}.
update_configuration_manager(Client, ManagerArn, Input) ->
    update_configuration_manager(Client, ManagerArn, Input, []).

-spec update_configuration_manager(aws_client:aws_client(), binary() | list(), update_configuration_manager_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_configuration_manager_errors(), tuple()}.
update_configuration_manager(Client, ManagerArn, Input0, Options0) ->
    Method = put,
    Path = ["/configurationManager/", aws_util:encode_uri(ManagerArn), ""],
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

%% @doc Updates settings configured for Quick Setup.
-spec update_service_settings(aws_client:aws_client(), update_service_settings_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_service_settings_errors(), tuple()}.
update_service_settings(Client, Input) ->
    update_service_settings(Client, Input, []).

-spec update_service_settings(aws_client:aws_client(), update_service_settings_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_service_settings_errors(), tuple()}.
update_service_settings(Client, Input0, Options0) ->
    Method = put,
    Path = ["/serviceSettings"],
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
    Client1 = Client#{service => <<"ssm-quicksetup">>},
    Host = build_host(<<"ssm-quicksetup">>, Client1),
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
