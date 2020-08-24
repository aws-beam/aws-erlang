%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc AWS Elemental MediaPackage VOD
-module(aws_mediapackage_vod).

-export([create_asset/2,
         create_asset/3,
         create_packaging_configuration/2,
         create_packaging_configuration/3,
         create_packaging_group/2,
         create_packaging_group/3,
         delete_asset/3,
         delete_asset/4,
         delete_packaging_configuration/3,
         delete_packaging_configuration/4,
         delete_packaging_group/3,
         delete_packaging_group/4,
         describe_asset/2,
         describe_asset/3,
         describe_packaging_configuration/2,
         describe_packaging_configuration/3,
         describe_packaging_group/2,
         describe_packaging_group/3,
         list_assets/4,
         list_assets/5,
         list_packaging_configurations/4,
         list_packaging_configurations/5,
         list_packaging_groups/3,
         list_packaging_groups/4,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_packaging_group/3,
         update_packaging_group/4]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a new MediaPackage VOD Asset resource.
create_asset(Client, Input) ->
    create_asset(Client, Input, []).
create_asset(Client, Input0, Options) ->
    Method = post,
    Path = ["/assets"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new MediaPackage VOD PackagingConfiguration resource.
create_packaging_configuration(Client, Input) ->
    create_packaging_configuration(Client, Input, []).
create_packaging_configuration(Client, Input0, Options) ->
    Method = post,
    Path = ["/packaging_configurations"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new MediaPackage VOD PackagingGroup resource.
create_packaging_group(Client, Input) ->
    create_packaging_group(Client, Input, []).
create_packaging_group(Client, Input0, Options) ->
    Method = post,
    Path = ["/packaging_groups"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an existing MediaPackage VOD Asset resource.
delete_asset(Client, Id, Input) ->
    delete_asset(Client, Id, Input, []).
delete_asset(Client, Id, Input0, Options) ->
    Method = delete,
    Path = ["/assets/", http_uri:encode(Id), ""],
    SuccessStatusCode = 202,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a MediaPackage VOD PackagingConfiguration resource.
delete_packaging_configuration(Client, Id, Input) ->
    delete_packaging_configuration(Client, Id, Input, []).
delete_packaging_configuration(Client, Id, Input0, Options) ->
    Method = delete,
    Path = ["/packaging_configurations/", http_uri:encode(Id), ""],
    SuccessStatusCode = 202,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a MediaPackage VOD PackagingGroup resource.
delete_packaging_group(Client, Id, Input) ->
    delete_packaging_group(Client, Id, Input, []).
delete_packaging_group(Client, Id, Input0, Options) ->
    Method = delete,
    Path = ["/packaging_groups/", http_uri:encode(Id), ""],
    SuccessStatusCode = 202,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Returns a description of a MediaPackage VOD Asset resource.
describe_asset(Client, Id)
  when is_map(Client) ->
    describe_asset(Client, Id, []).
describe_asset(Client, Id, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/assets/", http_uri:encode(Id), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a description of a MediaPackage VOD PackagingConfiguration
%% resource.
describe_packaging_configuration(Client, Id)
  when is_map(Client) ->
    describe_packaging_configuration(Client, Id, []).
describe_packaging_configuration(Client, Id, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/packaging_configurations/", http_uri:encode(Id), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a description of a MediaPackage VOD PackagingGroup resource.
describe_packaging_group(Client, Id)
  when is_map(Client) ->
    describe_packaging_group(Client, Id, []).
describe_packaging_group(Client, Id, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/packaging_groups/", http_uri:encode(Id), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a collection of MediaPackage VOD Asset resources.
list_assets(Client, MaxResults, NextToken, PackagingGroupId)
  when is_map(Client) ->
    list_assets(Client, MaxResults, NextToken, PackagingGroupId, []).
list_assets(Client, MaxResults, NextToken, PackagingGroupId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/assets"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken},
        {<<"packagingGroupId">>, PackagingGroupId}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a collection of MediaPackage VOD PackagingConfiguration
%% resources.
list_packaging_configurations(Client, MaxResults, NextToken, PackagingGroupId)
  when is_map(Client) ->
    list_packaging_configurations(Client, MaxResults, NextToken, PackagingGroupId, []).
list_packaging_configurations(Client, MaxResults, NextToken, PackagingGroupId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/packaging_configurations"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken},
        {<<"packagingGroupId">>, PackagingGroupId}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a collection of MediaPackage VOD PackagingGroup resources.
list_packaging_groups(Client, MaxResults, NextToken)
  when is_map(Client) ->
    list_packaging_groups(Client, MaxResults, NextToken, []).
list_packaging_groups(Client, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/packaging_groups"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of the tags assigned to the specified resource.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, []).
list_tags_for_resource(Client, ResourceArn, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/tags/", http_uri:encode(ResourceArn), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Adds tags to the specified resource. You can specify one or more tags
%% to add.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).
tag_resource(Client, ResourceArn, Input0, Options) ->
    Method = post,
    Path = ["/tags/", http_uri:encode(ResourceArn), ""],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Removes tags from the specified resource. You can specify one or more
%% tags to remove.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).
untag_resource(Client, ResourceArn, Input0, Options) ->
    Method = delete,
    Path = ["/tags/", http_uri:encode(ResourceArn), ""],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"tagKeys">>, <<"TagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a specific packaging group. You can't change the id attribute
%% or any other system-generated attributes.
update_packaging_group(Client, Id, Input) ->
    update_packaging_group(Client, Id, Input, []).
update_packaging_group(Client, Id, Input0, Options) ->
    Method = put,
    Path = ["/packaging_groups/", http_uri:encode(Id), ""],
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
    Client1 = Client#{service => <<"mediapackage-vod">>},
    Host = build_host(<<"mediapackage-vod">>, Client1),
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
