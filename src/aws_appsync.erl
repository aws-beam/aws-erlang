%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc AWS AppSync provides API actions for creating and interacting with
%% data sources using GraphQL from your application.
-module(aws_appsync).

-export([create_api_cache/3,
         create_api_cache/4,
         create_api_key/3,
         create_api_key/4,
         create_data_source/3,
         create_data_source/4,
         create_function/3,
         create_function/4,
         create_graphql_api/2,
         create_graphql_api/3,
         create_resolver/4,
         create_resolver/5,
         create_type/3,
         create_type/4,
         delete_api_cache/3,
         delete_api_cache/4,
         delete_api_key/4,
         delete_api_key/5,
         delete_data_source/4,
         delete_data_source/5,
         delete_function/4,
         delete_function/5,
         delete_graphql_api/3,
         delete_graphql_api/4,
         delete_resolver/5,
         delete_resolver/6,
         delete_type/4,
         delete_type/5,
         flush_api_cache/3,
         flush_api_cache/4,
         get_api_cache/2,
         get_api_cache/3,
         get_data_source/3,
         get_data_source/4,
         get_function/3,
         get_function/4,
         get_graphql_api/2,
         get_graphql_api/3,
         get_introspection_schema/4,
         get_introspection_schema/5,
         get_resolver/4,
         get_resolver/5,
         get_schema_creation_status/2,
         get_schema_creation_status/3,
         get_type/4,
         get_type/5,
         list_api_keys/4,
         list_api_keys/5,
         list_data_sources/4,
         list_data_sources/5,
         list_functions/4,
         list_functions/5,
         list_graphql_apis/3,
         list_graphql_apis/4,
         list_resolvers/5,
         list_resolvers/6,
         list_resolvers_by_function/5,
         list_resolvers_by_function/6,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         list_types/5,
         list_types/6,
         start_schema_creation/3,
         start_schema_creation/4,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_api_cache/3,
         update_api_cache/4,
         update_api_key/4,
         update_api_key/5,
         update_data_source/4,
         update_data_source/5,
         update_function/4,
         update_function/5,
         update_graphql_api/3,
         update_graphql_api/4,
         update_resolver/5,
         update_resolver/6,
         update_type/4,
         update_type/5]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a cache for the GraphQL API.
create_api_cache(Client, ApiId, Input) ->
    create_api_cache(Client, ApiId, Input, []).
create_api_cache(Client, ApiId, Input0, Options) ->
    Method = post,
    Path = ["/v1/apis/", http_uri:encode(ApiId), "/ApiCaches"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a unique key that you can distribute to clients who are
%% executing your API.
create_api_key(Client, ApiId, Input) ->
    create_api_key(Client, ApiId, Input, []).
create_api_key(Client, ApiId, Input0, Options) ->
    Method = post,
    Path = ["/v1/apis/", http_uri:encode(ApiId), "/apikeys"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a `DataSource` object.
create_data_source(Client, ApiId, Input) ->
    create_data_source(Client, ApiId, Input, []).
create_data_source(Client, ApiId, Input0, Options) ->
    Method = post,
    Path = ["/v1/apis/", http_uri:encode(ApiId), "/datasources"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a `Function` object.
%%
%% A function is a reusable entity. Multiple functions can be used to compose
%% the resolver logic.
create_function(Client, ApiId, Input) ->
    create_function(Client, ApiId, Input, []).
create_function(Client, ApiId, Input0, Options) ->
    Method = post,
    Path = ["/v1/apis/", http_uri:encode(ApiId), "/functions"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a `GraphqlApi` object.
create_graphql_api(Client, Input) ->
    create_graphql_api(Client, Input, []).
create_graphql_api(Client, Input0, Options) ->
    Method = post,
    Path = ["/v1/apis"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a `Resolver` object.
%%
%% A resolver converts incoming requests into a format that a data source can
%% understand and converts the data source's responses into GraphQL.
create_resolver(Client, ApiId, TypeName, Input) ->
    create_resolver(Client, ApiId, TypeName, Input, []).
create_resolver(Client, ApiId, TypeName, Input0, Options) ->
    Method = post,
    Path = ["/v1/apis/", http_uri:encode(ApiId), "/types/", http_uri:encode(TypeName), "/resolvers"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a `Type` object.
create_type(Client, ApiId, Input) ->
    create_type(Client, ApiId, Input, []).
create_type(Client, ApiId, Input0, Options) ->
    Method = post,
    Path = ["/v1/apis/", http_uri:encode(ApiId), "/types"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an `ApiCache` object.
delete_api_cache(Client, ApiId, Input) ->
    delete_api_cache(Client, ApiId, Input, []).
delete_api_cache(Client, ApiId, Input0, Options) ->
    Method = delete,
    Path = ["/v1/apis/", http_uri:encode(ApiId), "/ApiCaches"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an API key.
delete_api_key(Client, ApiId, Id, Input) ->
    delete_api_key(Client, ApiId, Id, Input, []).
delete_api_key(Client, ApiId, Id, Input0, Options) ->
    Method = delete,
    Path = ["/v1/apis/", http_uri:encode(ApiId), "/apikeys/", http_uri:encode(Id), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a `DataSource` object.
delete_data_source(Client, ApiId, Name, Input) ->
    delete_data_source(Client, ApiId, Name, Input, []).
delete_data_source(Client, ApiId, Name, Input0, Options) ->
    Method = delete,
    Path = ["/v1/apis/", http_uri:encode(ApiId), "/datasources/", http_uri:encode(Name), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a `Function`.
delete_function(Client, ApiId, FunctionId, Input) ->
    delete_function(Client, ApiId, FunctionId, Input, []).
delete_function(Client, ApiId, FunctionId, Input0, Options) ->
    Method = delete,
    Path = ["/v1/apis/", http_uri:encode(ApiId), "/functions/", http_uri:encode(FunctionId), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a `GraphqlApi` object.
delete_graphql_api(Client, ApiId, Input) ->
    delete_graphql_api(Client, ApiId, Input, []).
delete_graphql_api(Client, ApiId, Input0, Options) ->
    Method = delete,
    Path = ["/v1/apis/", http_uri:encode(ApiId), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a `Resolver` object.
delete_resolver(Client, ApiId, FieldName, TypeName, Input) ->
    delete_resolver(Client, ApiId, FieldName, TypeName, Input, []).
delete_resolver(Client, ApiId, FieldName, TypeName, Input0, Options) ->
    Method = delete,
    Path = ["/v1/apis/", http_uri:encode(ApiId), "/types/", http_uri:encode(TypeName), "/resolvers/", http_uri:encode(FieldName), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a `Type` object.
delete_type(Client, ApiId, TypeName, Input) ->
    delete_type(Client, ApiId, TypeName, Input, []).
delete_type(Client, ApiId, TypeName, Input0, Options) ->
    Method = delete,
    Path = ["/v1/apis/", http_uri:encode(ApiId), "/types/", http_uri:encode(TypeName), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Flushes an `ApiCache` object.
flush_api_cache(Client, ApiId, Input) ->
    flush_api_cache(Client, ApiId, Input, []).
flush_api_cache(Client, ApiId, Input0, Options) ->
    Method = delete,
    Path = ["/v1/apis/", http_uri:encode(ApiId), "/FlushCache"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves an `ApiCache` object.
get_api_cache(Client, ApiId)
  when is_map(Client) ->
    get_api_cache(Client, ApiId, []).
get_api_cache(Client, ApiId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/apis/", http_uri:encode(ApiId), "/ApiCaches"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a `DataSource` object.
get_data_source(Client, ApiId, Name)
  when is_map(Client) ->
    get_data_source(Client, ApiId, Name, []).
get_data_source(Client, ApiId, Name, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/apis/", http_uri:encode(ApiId), "/datasources/", http_uri:encode(Name), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get a `Function`.
get_function(Client, ApiId, FunctionId)
  when is_map(Client) ->
    get_function(Client, ApiId, FunctionId, []).
get_function(Client, ApiId, FunctionId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/apis/", http_uri:encode(ApiId), "/functions/", http_uri:encode(FunctionId), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a `GraphqlApi` object.
get_graphql_api(Client, ApiId)
  when is_map(Client) ->
    get_graphql_api(Client, ApiId, []).
get_graphql_api(Client, ApiId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/apis/", http_uri:encode(ApiId), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the introspection schema for a GraphQL API.
get_introspection_schema(Client, ApiId, Format, IncludeDirectives)
  when is_map(Client) ->
    get_introspection_schema(Client, ApiId, Format, IncludeDirectives, []).
get_introspection_schema(Client, ApiId, Format, IncludeDirectives, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/apis/", http_uri:encode(ApiId), "/schema"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"format">>, Format},
        {<<"includeDirectives">>, IncludeDirectives}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a `Resolver` object.
get_resolver(Client, ApiId, FieldName, TypeName)
  when is_map(Client) ->
    get_resolver(Client, ApiId, FieldName, TypeName, []).
get_resolver(Client, ApiId, FieldName, TypeName, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/apis/", http_uri:encode(ApiId), "/types/", http_uri:encode(TypeName), "/resolvers/", http_uri:encode(FieldName), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the current status of a schema creation operation.
get_schema_creation_status(Client, ApiId)
  when is_map(Client) ->
    get_schema_creation_status(Client, ApiId, []).
get_schema_creation_status(Client, ApiId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/apis/", http_uri:encode(ApiId), "/schemacreation"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a `Type` object.
get_type(Client, ApiId, TypeName, Format)
  when is_map(Client) ->
    get_type(Client, ApiId, TypeName, Format, []).
get_type(Client, ApiId, TypeName, Format, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/apis/", http_uri:encode(ApiId), "/types/", http_uri:encode(TypeName), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"format">>, Format}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the API keys for a given API.
%%
%% API keys are deleted automatically 60 days after they expire. However,
%% they may still be included in the response until they have actually been
%% deleted. You can safely call `DeleteApiKey` to manually delete a key
%% before it's automatically deleted.
list_api_keys(Client, ApiId, MaxResults, NextToken)
  when is_map(Client) ->
    list_api_keys(Client, ApiId, MaxResults, NextToken, []).
list_api_keys(Client, ApiId, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/apis/", http_uri:encode(ApiId), "/apikeys"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the data sources for a given API.
list_data_sources(Client, ApiId, MaxResults, NextToken)
  when is_map(Client) ->
    list_data_sources(Client, ApiId, MaxResults, NextToken, []).
list_data_sources(Client, ApiId, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/apis/", http_uri:encode(ApiId), "/datasources"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List multiple functions.
list_functions(Client, ApiId, MaxResults, NextToken)
  when is_map(Client) ->
    list_functions(Client, ApiId, MaxResults, NextToken, []).
list_functions(Client, ApiId, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/apis/", http_uri:encode(ApiId), "/functions"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists your GraphQL APIs.
list_graphql_apis(Client, MaxResults, NextToken)
  when is_map(Client) ->
    list_graphql_apis(Client, MaxResults, NextToken, []).
list_graphql_apis(Client, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/apis"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the resolvers for a given API and type.
list_resolvers(Client, ApiId, TypeName, MaxResults, NextToken)
  when is_map(Client) ->
    list_resolvers(Client, ApiId, TypeName, MaxResults, NextToken, []).
list_resolvers(Client, ApiId, TypeName, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/apis/", http_uri:encode(ApiId), "/types/", http_uri:encode(TypeName), "/resolvers"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List the resolvers that are associated with a specific function.
list_resolvers_by_function(Client, ApiId, FunctionId, MaxResults, NextToken)
  when is_map(Client) ->
    list_resolvers_by_function(Client, ApiId, FunctionId, MaxResults, NextToken, []).
list_resolvers_by_function(Client, ApiId, FunctionId, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/apis/", http_uri:encode(ApiId), "/functions/", http_uri:encode(FunctionId), "/resolvers"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the tags for a resource.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, []).
list_tags_for_resource(Client, ResourceArn, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/tags/", http_uri:encode(ResourceArn), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the types for a given API.
list_types(Client, ApiId, Format, MaxResults, NextToken)
  when is_map(Client) ->
    list_types(Client, ApiId, Format, MaxResults, NextToken, []).
list_types(Client, ApiId, Format, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/apis/", http_uri:encode(ApiId), "/types"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"format">>, Format},
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Adds a new schema to your GraphQL API.
%%
%% This operation is asynchronous. Use to determine when it has completed.
start_schema_creation(Client, ApiId, Input) ->
    start_schema_creation(Client, ApiId, Input, []).
start_schema_creation(Client, ApiId, Input0, Options) ->
    Method = post,
    Path = ["/v1/apis/", http_uri:encode(ApiId), "/schemacreation"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Tags a resource with user-supplied tags.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).
tag_resource(Client, ResourceArn, Input0, Options) ->
    Method = post,
    Path = ["/v1/tags/", http_uri:encode(ResourceArn), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Untags a resource.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).
untag_resource(Client, ResourceArn, Input0, Options) ->
    Method = delete,
    Path = ["/v1/tags/", http_uri:encode(ResourceArn), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"tagKeys">>, <<"tagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the cache for the GraphQL API.
update_api_cache(Client, ApiId, Input) ->
    update_api_cache(Client, ApiId, Input, []).
update_api_cache(Client, ApiId, Input0, Options) ->
    Method = post,
    Path = ["/v1/apis/", http_uri:encode(ApiId), "/ApiCaches/update"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an API key.
%%
%% The key can be updated while it is not deleted.
update_api_key(Client, ApiId, Id, Input) ->
    update_api_key(Client, ApiId, Id, Input, []).
update_api_key(Client, ApiId, Id, Input0, Options) ->
    Method = post,
    Path = ["/v1/apis/", http_uri:encode(ApiId), "/apikeys/", http_uri:encode(Id), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a `DataSource` object.
update_data_source(Client, ApiId, Name, Input) ->
    update_data_source(Client, ApiId, Name, Input, []).
update_data_source(Client, ApiId, Name, Input0, Options) ->
    Method = post,
    Path = ["/v1/apis/", http_uri:encode(ApiId), "/datasources/", http_uri:encode(Name), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a `Function` object.
update_function(Client, ApiId, FunctionId, Input) ->
    update_function(Client, ApiId, FunctionId, Input, []).
update_function(Client, ApiId, FunctionId, Input0, Options) ->
    Method = post,
    Path = ["/v1/apis/", http_uri:encode(ApiId), "/functions/", http_uri:encode(FunctionId), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a `GraphqlApi` object.
update_graphql_api(Client, ApiId, Input) ->
    update_graphql_api(Client, ApiId, Input, []).
update_graphql_api(Client, ApiId, Input0, Options) ->
    Method = post,
    Path = ["/v1/apis/", http_uri:encode(ApiId), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a `Resolver` object.
update_resolver(Client, ApiId, FieldName, TypeName, Input) ->
    update_resolver(Client, ApiId, FieldName, TypeName, Input, []).
update_resolver(Client, ApiId, FieldName, TypeName, Input0, Options) ->
    Method = post,
    Path = ["/v1/apis/", http_uri:encode(ApiId), "/types/", http_uri:encode(TypeName), "/resolvers/", http_uri:encode(FieldName), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a `Type` object.
update_type(Client, ApiId, TypeName, Input) ->
    update_type(Client, ApiId, TypeName, Input, []).
update_type(Client, ApiId, TypeName, Input0, Options) ->
    Method = post,
    Path = ["/v1/apis/", http_uri:encode(ApiId), "/types/", http_uri:encode(TypeName), ""],
    SuccessStatusCode = undefined,

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
    Client1 = Client#{service => <<"appsync">>},
    Host = build_host(<<"appsync">>, Client1),
    URL0 = build_url(Host, Path, Client1),
    URL = aws_request:add_query(URL0, Query),
    AdditionalHeaders = [ {<<"Host">>, Host}
                        , {<<"Content-Type">>, <<"application/x-amz-json-1.1">>}
                        ],
    Headers1 = aws_request:add_headers(AdditionalHeaders, Headers0),
    Payload = encode_payload(Input),
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
