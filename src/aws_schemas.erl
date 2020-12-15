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
         describe_code_binding/5,
         describe_code_binding/6,
         describe_discoverer/2,
         describe_discoverer/3,
         describe_registry/2,
         describe_registry/3,
         describe_schema/4,
         describe_schema/5,
         export_schema/5,
         export_schema/6,
         get_code_binding_source/5,
         get_code_binding_source/6,
         get_discovered_schema/2,
         get_discovered_schema/3,
         get_resource_policy/2,
         get_resource_policy/3,
         list_discoverers/5,
         list_discoverers/6,
         list_registries/5,
         list_registries/6,
         list_schema_versions/5,
         list_schema_versions/6,
         list_schemas/5,
         list_schemas/6,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         put_code_binding/5,
         put_code_binding/6,
         put_resource_policy/2,
         put_resource_policy/3,
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
create_discoverer(Client, Input0, Options) ->
    Method = post,
    Path = ["/v1/discoverers"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a registry.
create_registry(Client, RegistryName, Input) ->
    create_registry(Client, RegistryName, Input, []).
create_registry(Client, RegistryName, Input0, Options) ->
    Method = post,
    Path = ["/v1/registries/name/", aws_util:encode_uri(RegistryName), ""],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a schema definition.
%%
%% Inactive schemas will be deleted after two years.
create_schema(Client, RegistryName, SchemaName, Input) ->
    create_schema(Client, RegistryName, SchemaName, Input, []).
create_schema(Client, RegistryName, SchemaName, Input0, Options) ->
    Method = post,
    Path = ["/v1/registries/name/", aws_util:encode_uri(RegistryName), "/schemas/name/", aws_util:encode_uri(SchemaName), ""],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a discoverer.
delete_discoverer(Client, DiscovererId, Input) ->
    delete_discoverer(Client, DiscovererId, Input, []).
delete_discoverer(Client, DiscovererId, Input0, Options) ->
    Method = delete,
    Path = ["/v1/discoverers/id/", aws_util:encode_uri(DiscovererId), ""],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a Registry.
delete_registry(Client, RegistryName, Input) ->
    delete_registry(Client, RegistryName, Input, []).
delete_registry(Client, RegistryName, Input0, Options) ->
    Method = delete,
    Path = ["/v1/registries/name/", aws_util:encode_uri(RegistryName), ""],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Delete the resource-based policy attached to the specified registry.
delete_resource_policy(Client, Input) ->
    delete_resource_policy(Client, Input, []).
delete_resource_policy(Client, Input0, Options) ->
    Method = delete,
    Path = ["/v1/policy"],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"registryName">>, <<"RegistryName">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Delete a schema definition.
delete_schema(Client, RegistryName, SchemaName, Input) ->
    delete_schema(Client, RegistryName, SchemaName, Input, []).
delete_schema(Client, RegistryName, SchemaName, Input0, Options) ->
    Method = delete,
    Path = ["/v1/registries/name/", aws_util:encode_uri(RegistryName), "/schemas/name/", aws_util:encode_uri(SchemaName), ""],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Delete the schema version definition
delete_schema_version(Client, RegistryName, SchemaName, SchemaVersion, Input) ->
    delete_schema_version(Client, RegistryName, SchemaName, SchemaVersion, Input, []).
delete_schema_version(Client, RegistryName, SchemaName, SchemaVersion, Input0, Options) ->
    Method = delete,
    Path = ["/v1/registries/name/", aws_util:encode_uri(RegistryName), "/schemas/name/", aws_util:encode_uri(SchemaName), "/version/", aws_util:encode_uri(SchemaVersion), ""],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Describe the code binding URI.
describe_code_binding(Client, Language, RegistryName, SchemaName, SchemaVersion)
  when is_map(Client) ->
    describe_code_binding(Client, Language, RegistryName, SchemaName, SchemaVersion, []).
describe_code_binding(Client, Language, RegistryName, SchemaName, SchemaVersion, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/registries/name/", aws_util:encode_uri(RegistryName), "/schemas/name/", aws_util:encode_uri(SchemaName), "/language/", aws_util:encode_uri(Language), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"schemaVersion">>, SchemaVersion}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes the discoverer.
describe_discoverer(Client, DiscovererId)
  when is_map(Client) ->
    describe_discoverer(Client, DiscovererId, []).
describe_discoverer(Client, DiscovererId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/discoverers/id/", aws_util:encode_uri(DiscovererId), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes the registry.
describe_registry(Client, RegistryName)
  when is_map(Client) ->
    describe_registry(Client, RegistryName, []).
describe_registry(Client, RegistryName, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/registries/name/", aws_util:encode_uri(RegistryName), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieve the schema definition.
describe_schema(Client, RegistryName, SchemaName, SchemaVersion)
  when is_map(Client) ->
    describe_schema(Client, RegistryName, SchemaName, SchemaVersion, []).
describe_schema(Client, RegistryName, SchemaName, SchemaVersion, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/registries/name/", aws_util:encode_uri(RegistryName), "/schemas/name/", aws_util:encode_uri(SchemaName), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"schemaVersion">>, SchemaVersion}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Exports a schema to a different specification.
export_schema(Client, RegistryName, SchemaName, SchemaVersion, Type)
  when is_map(Client) ->
    export_schema(Client, RegistryName, SchemaName, SchemaVersion, Type, []).
export_schema(Client, RegistryName, SchemaName, SchemaVersion, Type, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/registries/name/", aws_util:encode_uri(RegistryName), "/schemas/name/", aws_util:encode_uri(SchemaName), "/export"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"schemaVersion">>, SchemaVersion},
        {<<"type">>, Type}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get the code binding source URI.
get_code_binding_source(Client, Language, RegistryName, SchemaName, SchemaVersion)
  when is_map(Client) ->
    get_code_binding_source(Client, Language, RegistryName, SchemaName, SchemaVersion, []).
get_code_binding_source(Client, Language, RegistryName, SchemaName, SchemaVersion, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/registries/name/", aws_util:encode_uri(RegistryName), "/schemas/name/", aws_util:encode_uri(SchemaName), "/language/", aws_util:encode_uri(Language), "/source"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"schemaVersion">>, SchemaVersion}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get the discovered schema that was generated based on sampled events.
get_discovered_schema(Client, Input) ->
    get_discovered_schema(Client, Input, []).
get_discovered_schema(Client, Input0, Options) ->
    Method = post,
    Path = ["/v1/discover"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves the resource-based policy attached to a given registry.
get_resource_policy(Client, RegistryName)
  when is_map(Client) ->
    get_resource_policy(Client, RegistryName, []).
get_resource_policy(Client, RegistryName, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/policy"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"registryName">>, RegistryName}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List the discoverers.
list_discoverers(Client, DiscovererIdPrefix, Limit, NextToken, SourceArnPrefix)
  when is_map(Client) ->
    list_discoverers(Client, DiscovererIdPrefix, Limit, NextToken, SourceArnPrefix, []).
list_discoverers(Client, DiscovererIdPrefix, Limit, NextToken, SourceArnPrefix, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/discoverers"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"discovererIdPrefix">>, DiscovererIdPrefix},
        {<<"limit">>, Limit},
        {<<"nextToken">>, NextToken},
        {<<"sourceArnPrefix">>, SourceArnPrefix}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List the registries.
list_registries(Client, Limit, NextToken, RegistryNamePrefix, Scope)
  when is_map(Client) ->
    list_registries(Client, Limit, NextToken, RegistryNamePrefix, Scope, []).
list_registries(Client, Limit, NextToken, RegistryNamePrefix, Scope, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/registries"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"limit">>, Limit},
        {<<"nextToken">>, NextToken},
        {<<"registryNamePrefix">>, RegistryNamePrefix},
        {<<"scope">>, Scope}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Provides a list of the schema versions and related information.
list_schema_versions(Client, RegistryName, SchemaName, Limit, NextToken)
  when is_map(Client) ->
    list_schema_versions(Client, RegistryName, SchemaName, Limit, NextToken, []).
list_schema_versions(Client, RegistryName, SchemaName, Limit, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/registries/name/", aws_util:encode_uri(RegistryName), "/schemas/name/", aws_util:encode_uri(SchemaName), "/versions"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"limit">>, Limit},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List the schemas.
list_schemas(Client, RegistryName, Limit, NextToken, SchemaNamePrefix)
  when is_map(Client) ->
    list_schemas(Client, RegistryName, Limit, NextToken, SchemaNamePrefix, []).
list_schemas(Client, RegistryName, Limit, NextToken, SchemaNamePrefix, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/registries/name/", aws_util:encode_uri(RegistryName), "/schemas"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"limit">>, Limit},
        {<<"nextToken">>, NextToken},
        {<<"schemaNamePrefix">>, SchemaNamePrefix}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get tags for resource.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, []).
list_tags_for_resource(Client, ResourceArn, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Put code binding URI
put_code_binding(Client, Language, RegistryName, SchemaName, Input) ->
    put_code_binding(Client, Language, RegistryName, SchemaName, Input, []).
put_code_binding(Client, Language, RegistryName, SchemaName, Input0, Options) ->
    Method = post,
    Path = ["/v1/registries/name/", aws_util:encode_uri(RegistryName), "/schemas/name/", aws_util:encode_uri(SchemaName), "/language/", aws_util:encode_uri(Language), ""],
    SuccessStatusCode = 202,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"schemaVersion">>, <<"SchemaVersion">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc The name of the policy.
put_resource_policy(Client, Input) ->
    put_resource_policy(Client, Input, []).
put_resource_policy(Client, Input0, Options) ->
    Method = put,
    Path = ["/v1/policy"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"registryName">>, <<"RegistryName">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Search the schemas
search_schemas(Client, RegistryName, Keywords, Limit, NextToken)
  when is_map(Client) ->
    search_schemas(Client, RegistryName, Keywords, Limit, NextToken, []).
search_schemas(Client, RegistryName, Keywords, Limit, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/registries/name/", aws_util:encode_uri(RegistryName), "/schemas/search"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"keywords">>, Keywords},
        {<<"limit">>, Limit},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Starts the discoverer
start_discoverer(Client, DiscovererId, Input) ->
    start_discoverer(Client, DiscovererId, Input, []).
start_discoverer(Client, DiscovererId, Input0, Options) ->
    Method = post,
    Path = ["/v1/discoverers/id/", aws_util:encode_uri(DiscovererId), "/start"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Stops the discoverer
stop_discoverer(Client, DiscovererId, Input) ->
    stop_discoverer(Client, DiscovererId, Input, []).
stop_discoverer(Client, DiscovererId, Input0, Options) ->
    Method = post,
    Path = ["/v1/discoverers/id/", aws_util:encode_uri(DiscovererId), "/stop"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Add tags to a resource.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).
tag_resource(Client, ResourceArn, Input0, Options) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Removes tags from a resource.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).
untag_resource(Client, ResourceArn, Input0, Options) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"tagKeys">>, <<"TagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the discoverer
update_discoverer(Client, DiscovererId, Input) ->
    update_discoverer(Client, DiscovererId, Input, []).
update_discoverer(Client, DiscovererId, Input0, Options) ->
    Method = put,
    Path = ["/v1/discoverers/id/", aws_util:encode_uri(DiscovererId), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a registry.
update_registry(Client, RegistryName, Input) ->
    update_registry(Client, RegistryName, Input, []).
update_registry(Client, RegistryName, Input0, Options) ->
    Method = put,
    Path = ["/v1/registries/name/", aws_util:encode_uri(RegistryName), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the schema definition
%%
%% Inactive schemas will be deleted after two years.
update_schema(Client, RegistryName, SchemaName, Input) ->
    update_schema(Client, RegistryName, SchemaName, Input, []).
update_schema(Client, RegistryName, SchemaName, Input0, Options) ->
    Method = put,
    Path = ["/v1/registries/name/", aws_util:encode_uri(RegistryName), "/schemas/name/", aws_util:encode_uri(SchemaName), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%%====================================================================
%% Internal functions
%%====================================================================

-spec request(aws_client:aws_client(), atom(), iolist(), list(),
              list(), map() | undefined, list(), pos_integer() | undefined) ->
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
      case proplists:get_value(should_send_body_as_binary, Options) of
        true ->
          maps:get_value(<<"Body">>, Input);
        _ ->
          encode_payload(Input)
      end,

    MethodBin = aws_request:method_to_binary(Method),
    SignedHeaders = aws_request:sign_request(Client1, MethodBin, URL, Headers1, Payload),
    Response = hackney:request(Method, URL, SignedHeaders, Payload, Options),
    handle_response(Response, SuccessStatusCode).

handle_response({ok, StatusCode, ResponseHeaders, Client}, SuccessStatusCode)
  when StatusCode =:= 200;
       StatusCode =:= 202;
       StatusCode =:= 204;
       StatusCode =:= SuccessStatusCode ->
    case hackney:body(Client) of
        {ok, <<>>} when StatusCode =:= 200;
                        StatusCode =:= SuccessStatusCode ->
            {ok, #{}, {StatusCode, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = jsx:decode(Body),
            {ok, Result, {StatusCode, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}, _) ->
    {ok, Body} = hackney:body(Client),
    Error = jsx:decode(Body),
    {error, Error, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}, _) ->
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
