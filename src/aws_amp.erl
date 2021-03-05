%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Managed Service for Prometheus
-module(aws_amp).

-export([create_workspace/2,
         create_workspace/3,
         delete_workspace/3,
         delete_workspace/4,
         describe_workspace/2,
         describe_workspace/3,
         list_workspaces/4,
         list_workspaces/5,
         update_workspace_alias/3,
         update_workspace_alias/4]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a new AMP workspace.
create_workspace(Client, Input) ->
    create_workspace(Client, Input, []).
create_workspace(Client, Input0, Options) ->
    Method = post,
    Path = ["/workspaces"],
    SuccessStatusCode = 202,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an AMP workspace.
delete_workspace(Client, WorkspaceId, Input) ->
    delete_workspace(Client, WorkspaceId, Input, []).
delete_workspace(Client, WorkspaceId, Input0, Options) ->
    Method = delete,
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), ""],
    SuccessStatusCode = 202,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"clientToken">>, <<"clientToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Describes an existing AMP workspace.
describe_workspace(Client, WorkspaceId)
  when is_map(Client) ->
    describe_workspace(Client, WorkspaceId, []).
describe_workspace(Client, WorkspaceId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all AMP workspaces, including workspaces being created or
%% deleted.
list_workspaces(Client, Alias, MaxResults, NextToken)
  when is_map(Client) ->
    list_workspaces(Client, Alias, MaxResults, NextToken, []).
list_workspaces(Client, Alias, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/workspaces"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"alias">>, Alias},
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Updates an AMP workspace alias.
update_workspace_alias(Client, WorkspaceId, Input) ->
    update_workspace_alias(Client, WorkspaceId, Input, []).
update_workspace_alias(Client, WorkspaceId, Input0, Options) ->
    Method = post,
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/alias"],
    SuccessStatusCode = 204,

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
    Client1 = Client#{service => <<"aps">>},
    Host = build_host(<<"aps">>, Client1),
    URL0 = build_url(Host, Path, Client1),
    URL = aws_request:add_query(URL0, Query),
    AdditionalHeaders = [ {<<"Host">>, Host}
                        , {<<"Content-Type">>, <<"application/x-amz-json-1.1">>}
                        ],
    Headers1 = aws_request:add_headers(AdditionalHeaders, Headers0),

    Payload =
      case proplists:get_value(should_send_body_as_binary, Options) of
        true ->
          maps:get(<<"Body">>, Input, <<"">>);
        undefined ->
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
