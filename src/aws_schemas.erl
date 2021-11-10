%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon EventBridge Schema Registry
-module(aws_schemas).

-export([create_discoverer/2,
         create_discoverer/3,
         create_registry/3,
         create_registry/4,
         create_schema/4,
         create_schema/5,
         delete_discoverer/3,
         delete_discoverer/4,
         delete_registry/3,
         delete_registry/4,
         delete_resource_policy/2,
         delete_resource_policy/3,
         delete_schema/4,
         delete_schema/5,
         delete_schema_version/5,
         delete_schema_version/6,
         describe_code_binding/4,
         describe_code_binding/6,
         describe_code_binding/7,
         describe_discoverer/2,
         describe_discoverer/4,
         describe_discoverer/5,
         describe_registry/2,
         describe_registry/4,
         describe_registry/5,
         describe_schema/3,
         describe_schema/5,
         describe_schema/6,
         export_schema/4,
         export_schema/6,
         export_schema/7,
         get_code_binding_source/4,
         get_code_binding_source/6,
         get_code_binding_source/7,
         get_discovered_schema/2,
         get_discovered_schema/3,
         get_resource_policy/1,
         get_resource_policy/3,
         get_resource_policy/4,
         list_discoverers/1,
         list_discoverers/3,
         list_discoverers/4,
         list_registries/1,
         list_registries/3,
         list_registries/4,
         list_schema_versions/3,
         list_schema_versions/5,
         list_schema_versions/6,
         list_schemas/2,
         list_schemas/4,
         list_schemas/5,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         put_code_binding/5,
         put_code_binding/6,
         put_resource_policy/2,
         put_resource_policy/3,
         search_schemas/3,
         search_schemas/5,
         search_schemas/6,
         start_discoverer/3,
         start_discoverer/4,
         stop_discoverer/3,
         stop_discoverer/4,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_discoverer/3,
         update_discoverer/4,
         update_registry/3,
         update_registry/4,
         update_schema/4,
         update_schema/5]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a discoverer.
create_discoverer(Client, Input) ->
    create_discoverer(Client, Input, []).
create_discoverer(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/discoverers"],
    SuccessStatusCode = 201,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a registry.
create_registry(Client, RegistryName, Input) ->
    create_registry(Client, RegistryName, Input, []).
create_registry(Client, RegistryName, Input0, Options0) ->
    Method = post,
    Path = ["/v1/registries/name/", aws_util:encode_uri(RegistryName), ""],
    SuccessStatusCode = 201,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a schema definition.
%%
%% Inactive schemas will be deleted after two years.
create_schema(Client, RegistryName, SchemaName, Input) ->
    create_schema(Client, RegistryName, SchemaName, Input, []).
create_schema(Client, RegistryName, SchemaName, Input0, Options0) ->
    Method = post,
    Path = ["/v1/registries/name/", aws_util:encode_uri(RegistryName), "/schemas/name/", aws_util:encode_uri(SchemaName), ""],
    SuccessStatusCode = 201,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a discoverer.
delete_discoverer(Client, DiscovererId, Input) ->
    delete_discoverer(Client, DiscovererId, Input, []).
delete_discoverer(Client, DiscovererId, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/discoverers/id/", aws_util:encode_uri(DiscovererId), ""],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a Registry.
delete_registry(Client, RegistryName, Input) ->
    delete_registry(Client, RegistryName, Input, []).
delete_registry(Client, RegistryName, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/registries/name/", aws_util:encode_uri(RegistryName), ""],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Delete the resource-based policy attached to the specified registry.
delete_resource_policy(Client, Input) ->
    delete_resource_policy(Client, Input, []).
delete_resource_policy(Client, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/policy"],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"registryName">>, <<"RegistryName">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Delete a schema definition.
delete_schema(Client, RegistryName, SchemaName, Input) ->
    delete_schema(Client, RegistryName, SchemaName, Input, []).
delete_schema(Client, RegistryName, SchemaName, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/registries/name/", aws_util:encode_uri(RegistryName), "/schemas/name/", aws_util:encode_uri(SchemaName), ""],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Delete the schema version definition
delete_schema_version(Client, RegistryName, SchemaName, SchemaVersion, Input) ->
    delete_schema_version(Client, RegistryName, SchemaName, SchemaVersion, Input, []).
delete_schema_version(Client, RegistryName, SchemaName, SchemaVersion, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/registries/name/", aws_util:encode_uri(RegistryName), "/schemas/name/", aws_util:encode_uri(SchemaName), "/version/", aws_util:encode_uri(SchemaVersion), ""],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Describe the code binding URI.
describe_code_binding(Client, Language, RegistryName, SchemaName)
  when is_map(Client) ->
    describe_code_binding(Client, Language, RegistryName, SchemaName, #{}, #{}).

describe_code_binding(Client, Language, RegistryName, SchemaName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_code_binding(Client, Language, RegistryName, SchemaName, QueryMap, HeadersMap, []).

describe_code_binding(Client, Language, RegistryName, SchemaName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/registries/name/", aws_util:encode_uri(RegistryName), "/schemas/name/", aws_util:encode_uri(SchemaName), "/language/", aws_util:encode_uri(Language), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"schemaVersion">>, maps:get(<<"schemaVersion">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes the discoverer.
describe_discoverer(Client, DiscovererId)
  when is_map(Client) ->
    describe_discoverer(Client, DiscovererId, #{}, #{}).

describe_discoverer(Client, DiscovererId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_discoverer(Client, DiscovererId, QueryMap, HeadersMap, []).

describe_discoverer(Client, DiscovererId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/discoverers/id/", aws_util:encode_uri(DiscovererId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes the registry.
describe_registry(Client, RegistryName)
  when is_map(Client) ->
    describe_registry(Client, RegistryName, #{}, #{}).

describe_registry(Client, RegistryName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_registry(Client, RegistryName, QueryMap, HeadersMap, []).

describe_registry(Client, RegistryName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/registries/name/", aws_util:encode_uri(RegistryName), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieve the schema definition.
describe_schema(Client, RegistryName, SchemaName)
  when is_map(Client) ->
    describe_schema(Client, RegistryName, SchemaName, #{}, #{}).

describe_schema(Client, RegistryName, SchemaName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_schema(Client, RegistryName, SchemaName, QueryMap, HeadersMap, []).

describe_schema(Client, RegistryName, SchemaName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/registries/name/", aws_util:encode_uri(RegistryName), "/schemas/name/", aws_util:encode_uri(SchemaName), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"schemaVersion">>, maps:get(<<"schemaVersion">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Exports a schema to a different specification.
export_schema(Client, RegistryName, SchemaName, Type)
  when is_map(Client) ->
    export_schema(Client, RegistryName, SchemaName, Type, #{}, #{}).

export_schema(Client, RegistryName, SchemaName, Type, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    export_schema(Client, RegistryName, SchemaName, Type, QueryMap, HeadersMap, []).

export_schema(Client, RegistryName, SchemaName, Type, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/registries/name/", aws_util:encode_uri(RegistryName), "/schemas/name/", aws_util:encode_uri(SchemaName), "/export"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"schemaVersion">>, maps:get(<<"schemaVersion">>, QueryMap, undefined)},
        {<<"type">>, Type}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get the code binding source URI.
get_code_binding_source(Client, Language, RegistryName, SchemaName)
  when is_map(Client) ->
    get_code_binding_source(Client, Language, RegistryName, SchemaName, #{}, #{}).

get_code_binding_source(Client, Language, RegistryName, SchemaName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_code_binding_source(Client, Language, RegistryName, SchemaName, QueryMap, HeadersMap, []).

get_code_binding_source(Client, Language, RegistryName, SchemaName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/registries/name/", aws_util:encode_uri(RegistryName), "/schemas/name/", aws_util:encode_uri(SchemaName), "/language/", aws_util:encode_uri(Language), "/source"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, true}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"schemaVersion">>, maps:get(<<"schemaVersion">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get the discovered schema that was generated based on sampled events.
get_discovered_schema(Client, Input) ->
    get_discovered_schema(Client, Input, []).
get_discovered_schema(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/discover"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves the resource-based policy attached to a given registry.
get_resource_policy(Client)
  when is_map(Client) ->
    get_resource_policy(Client, #{}, #{}).

get_resource_policy(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_resource_policy(Client, QueryMap, HeadersMap, []).

get_resource_policy(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/policy"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"registryName">>, maps:get(<<"registryName">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List the discoverers.
list_discoverers(Client)
  when is_map(Client) ->
    list_discoverers(Client, #{}, #{}).

list_discoverers(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_discoverers(Client, QueryMap, HeadersMap, []).

list_discoverers(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/discoverers"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"discovererIdPrefix">>, maps:get(<<"discovererIdPrefix">>, QueryMap, undefined)},
        {<<"limit">>, maps:get(<<"limit">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"sourceArnPrefix">>, maps:get(<<"sourceArnPrefix">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List the registries.
list_registries(Client)
  when is_map(Client) ->
    list_registries(Client, #{}, #{}).

list_registries(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_registries(Client, QueryMap, HeadersMap, []).

list_registries(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/registries"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"limit">>, maps:get(<<"limit">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"registryNamePrefix">>, maps:get(<<"registryNamePrefix">>, QueryMap, undefined)},
        {<<"scope">>, maps:get(<<"scope">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Provides a list of the schema versions and related information.
list_schema_versions(Client, RegistryName, SchemaName)
  when is_map(Client) ->
    list_schema_versions(Client, RegistryName, SchemaName, #{}, #{}).

list_schema_versions(Client, RegistryName, SchemaName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_schema_versions(Client, RegistryName, SchemaName, QueryMap, HeadersMap, []).

list_schema_versions(Client, RegistryName, SchemaName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/registries/name/", aws_util:encode_uri(RegistryName), "/schemas/name/", aws_util:encode_uri(SchemaName), "/versions"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"limit">>, maps:get(<<"limit">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List the schemas.
list_schemas(Client, RegistryName)
  when is_map(Client) ->
    list_schemas(Client, RegistryName, #{}, #{}).

list_schemas(Client, RegistryName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_schemas(Client, RegistryName, QueryMap, HeadersMap, []).

list_schemas(Client, RegistryName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/registries/name/", aws_util:encode_uri(RegistryName), "/schemas"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"limit">>, maps:get(<<"limit">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"schemaNamePrefix">>, maps:get(<<"schemaNamePrefix">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get tags for resource.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Put code binding URI
put_code_binding(Client, Language, RegistryName, SchemaName, Input) ->
    put_code_binding(Client, Language, RegistryName, SchemaName, Input, []).
put_code_binding(Client, Language, RegistryName, SchemaName, Input0, Options0) ->
    Method = post,
    Path = ["/v1/registries/name/", aws_util:encode_uri(RegistryName), "/schemas/name/", aws_util:encode_uri(SchemaName), "/language/", aws_util:encode_uri(Language), ""],
    SuccessStatusCode = 202,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"schemaVersion">>, <<"SchemaVersion">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc The name of the policy.
put_resource_policy(Client, Input) ->
    put_resource_policy(Client, Input, []).
put_resource_policy(Client, Input0, Options0) ->
    Method = put,
    Path = ["/v1/policy"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"registryName">>, <<"RegistryName">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Search the schemas
search_schemas(Client, RegistryName, Keywords)
  when is_map(Client) ->
    search_schemas(Client, RegistryName, Keywords, #{}, #{}).

search_schemas(Client, RegistryName, Keywords, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    search_schemas(Client, RegistryName, Keywords, QueryMap, HeadersMap, []).

search_schemas(Client, RegistryName, Keywords, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/registries/name/", aws_util:encode_uri(RegistryName), "/schemas/search"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"keywords">>, Keywords},
        {<<"limit">>, maps:get(<<"limit">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Starts the discoverer
start_discoverer(Client, DiscovererId, Input) ->
    start_discoverer(Client, DiscovererId, Input, []).
start_discoverer(Client, DiscovererId, Input0, Options0) ->
    Method = post,
    Path = ["/v1/discoverers/id/", aws_util:encode_uri(DiscovererId), "/start"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Stops the discoverer
stop_discoverer(Client, DiscovererId, Input) ->
    stop_discoverer(Client, DiscovererId, Input, []).
stop_discoverer(Client, DiscovererId, Input0, Options0) ->
    Method = post,
    Path = ["/v1/discoverers/id/", aws_util:encode_uri(DiscovererId), "/stop"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Add tags to a resource.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).
tag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Removes tags from a resource.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).
untag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"tagKeys">>, <<"TagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the discoverer
update_discoverer(Client, DiscovererId, Input) ->
    update_discoverer(Client, DiscovererId, Input, []).
update_discoverer(Client, DiscovererId, Input0, Options0) ->
    Method = put,
    Path = ["/v1/discoverers/id/", aws_util:encode_uri(DiscovererId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a registry.
update_registry(Client, RegistryName, Input) ->
    update_registry(Client, RegistryName, Input, []).
update_registry(Client, RegistryName, Input0, Options0) ->
    Method = put,
    Path = ["/v1/registries/name/", aws_util:encode_uri(RegistryName), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the schema definition
%%
%% Inactive schemas will be deleted after two years.
update_schema(Client, RegistryName, SchemaName, Input) ->
    update_schema(Client, RegistryName, SchemaName, Input, []).
update_schema(Client, RegistryName, SchemaName, Input0, Options0) ->
    Method = put,
    Path = ["/v1/registries/name/", aws_util:encode_uri(RegistryName), "/schemas/name/", aws_util:encode_uri(SchemaName), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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

-spec request(aws_client:aws_client(), atom(), iolist(), list(),
              list(), map() | undefined, list(), pos_integer() | undefined) ->
    {ok, {integer(), list()}} |
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map(),
    Error :: map().
request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) ->
    Client1 = Client#{service => <<"schemas">>},
    Host = build_host(<<"schemas">>, Client1),
    URL0 = build_url(Host, Path, Client1),
    URL = aws_request:add_query(URL0, Query),
    AdditionalHeaders = [ {<<"Host">>, Host}
                        , {<<"Content-Type">>, <<"application/x-amz-json-1.1">>}
                        ],
    Headers1 = aws_request:add_headers(AdditionalHeaders, Headers0),

    Payload =
      case proplists:get_value(send_body_as_binary, Options) of
        true ->
          maps:get(<<"Body">>, Input, <<"">>);
        false ->
          encode_payload(Input)
      end,

    MethodBin = aws_request:method_to_binary(Method),
    SignedHeaders = aws_request:sign_request(Client1, MethodBin, URL, Headers1, Payload),
    Response = hackney:request(Method, URL, SignedHeaders, Payload, Options),
    DecodeBody = not proplists:get_value(receive_body_as_binary, Options),
    handle_response(Response, SuccessStatusCode, DecodeBody).

handle_response({ok, StatusCode, ResponseHeaders}, SuccessStatusCode, _DecodeBody)
  when StatusCode =:= 200;
       StatusCode =:= 202;
       StatusCode =:= 204;
       StatusCode =:= SuccessStatusCode ->
    {ok, {StatusCode, ResponseHeaders}};
handle_response({ok, StatusCode, ResponseHeaders}, _, _DecodeBody) ->
    {error, {StatusCode, ResponseHeaders}};
handle_response({ok, StatusCode, ResponseHeaders, Client}, SuccessStatusCode, DecodeBody)
  when StatusCode =:= 200;
       StatusCode =:= 202;
       StatusCode =:= 204;
       StatusCode =:= SuccessStatusCode ->
    case hackney:body(Client) of
        {ok, <<>>} when StatusCode =:= 200;
                        StatusCode =:= SuccessStatusCode ->
            {ok, #{}, {StatusCode, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = case DecodeBody of
                       true -> jsx:decode(Body);
                       false -> #{<<"Body">> => Body}
                     end,
            {ok, Result, {StatusCode, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}, _, _DecodeBody) ->
    {ok, Body} = hackney:body(Client),
    Error = jsx:decode(Body),
    {error, Error, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}, _, _DecodeBody) ->
  {error, Reason}.

build_host(_EndpointPrefix, #{region := <<"local">>, endpoint := Endpoint}) ->
    Endpoint;
build_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
build_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

build_url(Host, Path0, Client) ->
    Proto = maps:get(proto, Client),
    Path = erlang:iolist_to_binary(Path0),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, Path], <<"">>).

-spec encode_payload(undefined | map()) -> binary().
encode_payload(undefined) ->
  <<>>;
encode_payload(Input) ->
  jsx:encode(Input).
