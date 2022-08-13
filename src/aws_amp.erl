%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Managed Service for Prometheus
-module(aws_amp).

-export([create_alert_manager_definition/3,
         create_alert_manager_definition/4,
         create_logging_configuration/3,
         create_logging_configuration/4,
         create_rule_groups_namespace/3,
         create_rule_groups_namespace/4,
         create_workspace/2,
         create_workspace/3,
         delete_alert_manager_definition/3,
         delete_alert_manager_definition/4,
         delete_logging_configuration/3,
         delete_logging_configuration/4,
         delete_rule_groups_namespace/4,
         delete_rule_groups_namespace/5,
         delete_workspace/3,
         delete_workspace/4,
         describe_alert_manager_definition/2,
         describe_alert_manager_definition/4,
         describe_alert_manager_definition/5,
         describe_logging_configuration/2,
         describe_logging_configuration/4,
         describe_logging_configuration/5,
         describe_rule_groups_namespace/3,
         describe_rule_groups_namespace/5,
         describe_rule_groups_namespace/6,
         describe_workspace/2,
         describe_workspace/4,
         describe_workspace/5,
         list_rule_groups_namespaces/2,
         list_rule_groups_namespaces/4,
         list_rule_groups_namespaces/5,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         list_workspaces/1,
         list_workspaces/3,
         list_workspaces/4,
         put_alert_manager_definition/3,
         put_alert_manager_definition/4,
         put_rule_groups_namespace/4,
         put_rule_groups_namespace/5,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_logging_configuration/3,
         update_logging_configuration/4,
         update_workspace_alias/3,
         update_workspace_alias/4]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Create an alert manager definition.
create_alert_manager_definition(Client, WorkspaceId, Input) ->
    create_alert_manager_definition(Client, WorkspaceId, Input, []).
create_alert_manager_definition(Client, WorkspaceId, Input0, Options0) ->
    Method = post,
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/alertmanager/definition"],
    SuccessStatusCode = 202,
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

%% @doc Create logging configuration.
create_logging_configuration(Client, WorkspaceId, Input) ->
    create_logging_configuration(Client, WorkspaceId, Input, []).
create_logging_configuration(Client, WorkspaceId, Input0, Options0) ->
    Method = post,
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/logging"],
    SuccessStatusCode = 202,
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

%% @doc Create a rule group namespace.
create_rule_groups_namespace(Client, WorkspaceId, Input) ->
    create_rule_groups_namespace(Client, WorkspaceId, Input, []).
create_rule_groups_namespace(Client, WorkspaceId, Input0, Options0) ->
    Method = post,
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/rulegroupsnamespaces"],
    SuccessStatusCode = 202,
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

%% @doc Creates a new AMP workspace.
create_workspace(Client, Input) ->
    create_workspace(Client, Input, []).
create_workspace(Client, Input0, Options0) ->
    Method = post,
    Path = ["/workspaces"],
    SuccessStatusCode = 202,
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

%% @doc Deletes an alert manager definition.
delete_alert_manager_definition(Client, WorkspaceId, Input) ->
    delete_alert_manager_definition(Client, WorkspaceId, Input, []).
delete_alert_manager_definition(Client, WorkspaceId, Input0, Options0) ->
    Method = delete,
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/alertmanager/definition"],
    SuccessStatusCode = 202,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"clientToken">>, <<"clientToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Delete logging configuration.
delete_logging_configuration(Client, WorkspaceId, Input) ->
    delete_logging_configuration(Client, WorkspaceId, Input, []).
delete_logging_configuration(Client, WorkspaceId, Input0, Options0) ->
    Method = delete,
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/logging"],
    SuccessStatusCode = 202,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"clientToken">>, <<"clientToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Delete a rule groups namespace.
delete_rule_groups_namespace(Client, Name, WorkspaceId, Input) ->
    delete_rule_groups_namespace(Client, Name, WorkspaceId, Input, []).
delete_rule_groups_namespace(Client, Name, WorkspaceId, Input0, Options0) ->
    Method = delete,
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/rulegroupsnamespaces/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 202,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"clientToken">>, <<"clientToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an AMP workspace.
delete_workspace(Client, WorkspaceId, Input) ->
    delete_workspace(Client, WorkspaceId, Input, []).
delete_workspace(Client, WorkspaceId, Input0, Options0) ->
    Method = delete,
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), ""],
    SuccessStatusCode = 202,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"clientToken">>, <<"clientToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Describes an alert manager definition.
describe_alert_manager_definition(Client, WorkspaceId)
  when is_map(Client) ->
    describe_alert_manager_definition(Client, WorkspaceId, #{}, #{}).

describe_alert_manager_definition(Client, WorkspaceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_alert_manager_definition(Client, WorkspaceId, QueryMap, HeadersMap, []).

describe_alert_manager_definition(Client, WorkspaceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/alertmanager/definition"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes logging configuration.
describe_logging_configuration(Client, WorkspaceId)
  when is_map(Client) ->
    describe_logging_configuration(Client, WorkspaceId, #{}, #{}).

describe_logging_configuration(Client, WorkspaceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_logging_configuration(Client, WorkspaceId, QueryMap, HeadersMap, []).

describe_logging_configuration(Client, WorkspaceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/logging"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describe a rule groups namespace.
describe_rule_groups_namespace(Client, Name, WorkspaceId)
  when is_map(Client) ->
    describe_rule_groups_namespace(Client, Name, WorkspaceId, #{}, #{}).

describe_rule_groups_namespace(Client, Name, WorkspaceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_rule_groups_namespace(Client, Name, WorkspaceId, QueryMap, HeadersMap, []).

describe_rule_groups_namespace(Client, Name, WorkspaceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/rulegroupsnamespaces/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes an existing AMP workspace.
describe_workspace(Client, WorkspaceId)
  when is_map(Client) ->
    describe_workspace(Client, WorkspaceId, #{}, #{}).

describe_workspace(Client, WorkspaceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_workspace(Client, WorkspaceId, QueryMap, HeadersMap, []).

describe_workspace(Client, WorkspaceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists rule groups namespaces.
list_rule_groups_namespaces(Client, WorkspaceId)
  when is_map(Client) ->
    list_rule_groups_namespaces(Client, WorkspaceId, #{}, #{}).

list_rule_groups_namespaces(Client, WorkspaceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_rule_groups_namespaces(Client, WorkspaceId, QueryMap, HeadersMap, []).

list_rule_groups_namespaces(Client, WorkspaceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/rulegroupsnamespaces"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"name">>, maps:get(<<"name">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the tags you have assigned to the resource.
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

%% @doc Lists all AMP workspaces, including workspaces being created or
%% deleted.
list_workspaces(Client)
  when is_map(Client) ->
    list_workspaces(Client, #{}, #{}).

list_workspaces(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_workspaces(Client, QueryMap, HeadersMap, []).

list_workspaces(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/workspaces"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"alias">>, maps:get(<<"alias">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Update an alert manager definition.
put_alert_manager_definition(Client, WorkspaceId, Input) ->
    put_alert_manager_definition(Client, WorkspaceId, Input, []).
put_alert_manager_definition(Client, WorkspaceId, Input0, Options0) ->
    Method = put,
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/alertmanager/definition"],
    SuccessStatusCode = 202,
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

%% @doc Update a rule groups namespace.
put_rule_groups_namespace(Client, Name, WorkspaceId, Input) ->
    put_rule_groups_namespace(Client, Name, WorkspaceId, Input, []).
put_rule_groups_namespace(Client, Name, WorkspaceId, Input0, Options0) ->
    Method = put,
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/rulegroupsnamespaces/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 202,
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

%% @doc Creates tags for the specified resource.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).
tag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
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

%% @doc Deletes tags from the specified resource.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).
untag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"tagKeys">>, <<"tagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Update logging configuration.
update_logging_configuration(Client, WorkspaceId, Input) ->
    update_logging_configuration(Client, WorkspaceId, Input, []).
update_logging_configuration(Client, WorkspaceId, Input0, Options0) ->
    Method = put,
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/logging"],
    SuccessStatusCode = 202,
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

%% @doc Updates an AMP workspace alias.
update_workspace_alias(Client, WorkspaceId, Input) ->
    update_workspace_alias(Client, WorkspaceId, Input, []).
update_workspace_alias(Client, WorkspaceId, Input0, Options0) ->
    Method = post,
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/alias"],
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
    Client1 = Client#{service => <<"aps">>},
    Host = build_host(<<"aps">>, Client1),
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
