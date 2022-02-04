%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc TwinMaker is in public preview and is subject to change.
%%
%% IoT TwinMaker is a service that enables you to build operational digital
%% twins of physical systems. IoT TwinMaker overlays measurements and
%% analysis from real-world sensors, cameras, and enterprise applications so
%% you can create data visualizations to monitor your physical factory,
%% building, or industrial plant. You can use this real-world data to monitor
%% operations and diagnose and repair errors.
-module(aws_iottwinmaker).

-export([batch_put_property_values/3,
         batch_put_property_values/4,
         create_component_type/4,
         create_component_type/5,
         create_entity/3,
         create_entity/4,
         create_scene/3,
         create_scene/4,
         create_workspace/3,
         create_workspace/4,
         delete_component_type/4,
         delete_component_type/5,
         delete_entity/4,
         delete_entity/5,
         delete_scene/4,
         delete_scene/5,
         delete_workspace/3,
         delete_workspace/4,
         get_component_type/3,
         get_component_type/5,
         get_component_type/6,
         get_entity/3,
         get_entity/5,
         get_entity/6,
         get_property_value/3,
         get_property_value/4,
         get_property_value_history/3,
         get_property_value_history/4,
         get_scene/3,
         get_scene/5,
         get_scene/6,
         get_workspace/2,
         get_workspace/4,
         get_workspace/5,
         list_component_types/3,
         list_component_types/4,
         list_entities/3,
         list_entities/4,
         list_scenes/3,
         list_scenes/4,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         list_workspaces/2,
         list_workspaces/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_component_type/4,
         update_component_type/5,
         update_entity/4,
         update_entity/5,
         update_scene/4,
         update_scene/5,
         update_workspace/3,
         update_workspace/4]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Sets values for multiple time series properties.
batch_put_property_values(Client, WorkspaceId, Input) ->
    batch_put_property_values(Client, WorkspaceId, Input, []).
batch_put_property_values(Client, WorkspaceId, Input0, Options0) ->
    Method = post,
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/entity-properties"],
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

%% @doc Creates a component type.
%%
%% TwinMaker is in public preview and is subject to change.
create_component_type(Client, ComponentTypeId, WorkspaceId, Input) ->
    create_component_type(Client, ComponentTypeId, WorkspaceId, Input, []).
create_component_type(Client, ComponentTypeId, WorkspaceId, Input0, Options0) ->
    Method = post,
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/component-types/", aws_util:encode_uri(ComponentTypeId), ""],
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

%% @doc Creates an entity.
create_entity(Client, WorkspaceId, Input) ->
    create_entity(Client, WorkspaceId, Input, []).
create_entity(Client, WorkspaceId, Input0, Options0) ->
    Method = post,
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/entities"],
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

%% @doc Creates a scene.
create_scene(Client, WorkspaceId, Input) ->
    create_scene(Client, WorkspaceId, Input, []).
create_scene(Client, WorkspaceId, Input0, Options0) ->
    Method = post,
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/scenes"],
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

%% @doc Creates a workplace.
create_workspace(Client, WorkspaceId, Input) ->
    create_workspace(Client, WorkspaceId, Input, []).
create_workspace(Client, WorkspaceId, Input0, Options0) ->
    Method = post,
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), ""],
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

%% @doc Deletes a component type.
delete_component_type(Client, ComponentTypeId, WorkspaceId, Input) ->
    delete_component_type(Client, ComponentTypeId, WorkspaceId, Input, []).
delete_component_type(Client, ComponentTypeId, WorkspaceId, Input0, Options0) ->
    Method = delete,
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/component-types/", aws_util:encode_uri(ComponentTypeId), ""],
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

%% @doc Deletes an entity.
delete_entity(Client, EntityId, WorkspaceId, Input) ->
    delete_entity(Client, EntityId, WorkspaceId, Input, []).
delete_entity(Client, EntityId, WorkspaceId, Input0, Options0) ->
    Method = delete,
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/entities/", aws_util:encode_uri(EntityId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"isRecursive">>, <<"isRecursive">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a scene.
delete_scene(Client, SceneId, WorkspaceId, Input) ->
    delete_scene(Client, SceneId, WorkspaceId, Input, []).
delete_scene(Client, SceneId, WorkspaceId, Input0, Options0) ->
    Method = delete,
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/scenes/", aws_util:encode_uri(SceneId), ""],
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

%% @doc Deletes a workspace.
delete_workspace(Client, WorkspaceId, Input) ->
    delete_workspace(Client, WorkspaceId, Input, []).
delete_workspace(Client, WorkspaceId, Input0, Options0) ->
    Method = delete,
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), ""],
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

%% @doc Retrieves information about a component type.
get_component_type(Client, ComponentTypeId, WorkspaceId)
  when is_map(Client) ->
    get_component_type(Client, ComponentTypeId, WorkspaceId, #{}, #{}).

get_component_type(Client, ComponentTypeId, WorkspaceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_component_type(Client, ComponentTypeId, WorkspaceId, QueryMap, HeadersMap, []).

get_component_type(Client, ComponentTypeId, WorkspaceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/component-types/", aws_util:encode_uri(ComponentTypeId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about an entity.
get_entity(Client, EntityId, WorkspaceId)
  when is_map(Client) ->
    get_entity(Client, EntityId, WorkspaceId, #{}, #{}).

get_entity(Client, EntityId, WorkspaceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_entity(Client, EntityId, WorkspaceId, QueryMap, HeadersMap, []).

get_entity(Client, EntityId, WorkspaceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/entities/", aws_util:encode_uri(EntityId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the property values for a component, component type, entity, or
%% workspace.
%%
%% You must specify a value for either `componentName', `componentTypeId',
%% `entityId', or `workspaceId'.
get_property_value(Client, WorkspaceId, Input) ->
    get_property_value(Client, WorkspaceId, Input, []).
get_property_value(Client, WorkspaceId, Input0, Options0) ->
    Method = post,
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/entity-properties/value"],
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

%% @doc Retrieves information about the history of a time series property
%% value for a component, component type, entity, or workspace.
%%
%% You must specify a value for `workspaceId'. For entity-specific queries,
%% specify values for `componentName' and `entityId'. For cross-entity
%% quries, specify a value for `componentTypeId'.
get_property_value_history(Client, WorkspaceId, Input) ->
    get_property_value_history(Client, WorkspaceId, Input, []).
get_property_value_history(Client, WorkspaceId, Input0, Options0) ->
    Method = post,
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/entity-properties/history"],
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

%% @doc Retrieves information about a scene.
get_scene(Client, SceneId, WorkspaceId)
  when is_map(Client) ->
    get_scene(Client, SceneId, WorkspaceId, #{}, #{}).

get_scene(Client, SceneId, WorkspaceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_scene(Client, SceneId, WorkspaceId, QueryMap, HeadersMap, []).

get_scene(Client, SceneId, WorkspaceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/scenes/", aws_util:encode_uri(SceneId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about a workspace.
get_workspace(Client, WorkspaceId)
  when is_map(Client) ->
    get_workspace(Client, WorkspaceId, #{}, #{}).

get_workspace(Client, WorkspaceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_workspace(Client, WorkspaceId, QueryMap, HeadersMap, []).

get_workspace(Client, WorkspaceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all component types in a workspace.
list_component_types(Client, WorkspaceId, Input) ->
    list_component_types(Client, WorkspaceId, Input, []).
list_component_types(Client, WorkspaceId, Input0, Options0) ->
    Method = post,
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/component-types-list"],
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

%% @doc Lists all entities in a workspace.
list_entities(Client, WorkspaceId, Input) ->
    list_entities(Client, WorkspaceId, Input, []).
list_entities(Client, WorkspaceId, Input0, Options0) ->
    Method = post,
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/entities-list"],
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

%% @doc Lists all scenes in a workspace.
list_scenes(Client, WorkspaceId, Input) ->
    list_scenes(Client, WorkspaceId, Input, []).
list_scenes(Client, WorkspaceId, Input0, Options0) ->
    Method = post,
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/scenes-list"],
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

%% @doc Lists all tags associated with a resource.
list_tags_for_resource(Client, Input) ->
    list_tags_for_resource(Client, Input, []).
list_tags_for_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/tags-list"],
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

%% @doc Retrieves information about workspaces in the current account.
list_workspaces(Client, Input) ->
    list_workspaces(Client, Input, []).
list_workspaces(Client, Input0, Options0) ->
    Method = post,
    Path = ["/workspaces-list"],
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

%% @doc Adds tags to a resource.
tag_resource(Client, Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/tags"],
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

%% @doc Removes tags from a resource.
untag_resource(Client, Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input0, Options0) ->
    Method = delete,
    Path = ["/tags"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"resourceARN">>, <<"resourceARN">>},
                     {<<"tagKeys">>, <<"tagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates information in a component type.
update_component_type(Client, ComponentTypeId, WorkspaceId, Input) ->
    update_component_type(Client, ComponentTypeId, WorkspaceId, Input, []).
update_component_type(Client, ComponentTypeId, WorkspaceId, Input0, Options0) ->
    Method = put,
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/component-types/", aws_util:encode_uri(ComponentTypeId), ""],
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

%% @doc Updates an entity.
update_entity(Client, EntityId, WorkspaceId, Input) ->
    update_entity(Client, EntityId, WorkspaceId, Input, []).
update_entity(Client, EntityId, WorkspaceId, Input0, Options0) ->
    Method = put,
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/entities/", aws_util:encode_uri(EntityId), ""],
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

%% @doc Updates a scene.
update_scene(Client, SceneId, WorkspaceId, Input) ->
    update_scene(Client, SceneId, WorkspaceId, Input, []).
update_scene(Client, SceneId, WorkspaceId, Input0, Options0) ->
    Method = put,
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/scenes/", aws_util:encode_uri(SceneId), ""],
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

%% @doc Updates a workspace.
update_workspace(Client, WorkspaceId, Input) ->
    update_workspace(Client, WorkspaceId, Input, []).
update_workspace(Client, WorkspaceId, Input0, Options0) ->
    Method = put,
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), ""],
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
  RequestFun = fun() -> do_request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) end,
  aws_request:request(RequestFun, Options).

do_request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) ->
    Client1 = Client#{service => <<"iottwinmaker">>},
    Host = build_host(<<"iottwinmaker">>, Client1),
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
