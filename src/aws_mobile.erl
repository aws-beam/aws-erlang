%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc AWS Mobile Service provides mobile app and website developers with
%% capabilities required to configure AWS resources and bootstrap their
%% developer desktop projects with the necessary SDKs, constants, tools and
%% samples to make use of those resources.
-module(aws_mobile).

-export([create_project/2,
         create_project/3,
         delete_project/3,
         delete_project/4,
         describe_bundle/2,
         describe_bundle/3,
         describe_project/3,
         describe_project/4,
         export_bundle/3,
         export_bundle/4,
         export_project/3,
         export_project/4,
         list_bundles/3,
         list_bundles/4,
         list_projects/3,
         list_projects/4,
         update_project/2,
         update_project/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Creates an AWS Mobile Hub project.
create_project(Client, Input) ->
    create_project(Client, Input, []).
create_project(Client, Input0, Options) ->
    Method = post,
    Path = ["/projects"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"name">>, <<"name">>},
                     {<<"region">>, <<"region">>},
                     {<<"snapshotId">>, <<"snapshotId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Delets a project in AWS Mobile Hub.
delete_project(Client, ProjectId, Input) ->
    delete_project(Client, ProjectId, Input, []).
delete_project(Client, ProjectId, Input0, Options) ->
    Method = delete,
    Path = ["/projects/", aws_util:encode_uri(ProjectId), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Get the bundle details for the requested bundle id.
describe_bundle(Client, BundleId)
  when is_map(Client) ->
    describe_bundle(Client, BundleId, []).
describe_bundle(Client, BundleId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/bundles/", aws_util:encode_uri(BundleId), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets details about a project in AWS Mobile Hub.
describe_project(Client, ProjectId, SyncFromResources)
  when is_map(Client) ->
    describe_project(Client, ProjectId, SyncFromResources, []).
describe_project(Client, ProjectId, SyncFromResources, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/project"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"projectId">>, ProjectId},
        {<<"syncFromResources">>, SyncFromResources}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Generates customized software development kit (SDK) and or tool
%% packages used to integrate mobile web or mobile app clients with backend
%% AWS resources.
export_bundle(Client, BundleId, Input) ->
    export_bundle(Client, BundleId, Input, []).
export_bundle(Client, BundleId, Input0, Options) ->
    Method = post,
    Path = ["/bundles/", aws_util:encode_uri(BundleId), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"platform">>, <<"platform">>},
                     {<<"projectId">>, <<"projectId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Exports project configuration to a snapshot which can be downloaded
%% and shared.
%%
%% Note that mobile app push credentials are encrypted in exported projects,
%% so they can only be shared successfully within the same AWS account.
export_project(Client, ProjectId, Input) ->
    export_project(Client, ProjectId, Input, []).
export_project(Client, ProjectId, Input0, Options) ->
    Method = post,
    Path = ["/exports/", aws_util:encode_uri(ProjectId), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc List all available bundles.
list_bundles(Client, MaxResults, NextToken)
  when is_map(Client) ->
    list_bundles(Client, MaxResults, NextToken, []).
list_bundles(Client, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/bundles"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists projects in AWS Mobile Hub.
list_projects(Client, MaxResults, NextToken)
  when is_map(Client) ->
    list_projects(Client, MaxResults, NextToken, []).
list_projects(Client, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/projects"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Update an existing project.
update_project(Client, Input) ->
    update_project(Client, Input, []).
update_project(Client, Input0, Options) ->
    Method = post,
    Path = ["/update"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"projectId">>, <<"projectId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
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
    Client1 = Client#{service => <<"AWSMobileHubService">>},
    Host = build_host(<<"mobile">>, Client1),
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
