%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc The AWS IoT 1-Click Projects API Reference
-module(aws_iot_1click_projects).

-export([associate_device_with_placement/5,
         associate_device_with_placement/6,
         create_placement/3,
         create_placement/4,
         create_project/2,
         create_project/3,
         delete_placement/4,
         delete_placement/5,
         delete_project/3,
         delete_project/4,
         describe_placement/3,
         describe_placement/5,
         describe_placement/6,
         describe_project/2,
         describe_project/4,
         describe_project/5,
         disassociate_device_from_placement/5,
         disassociate_device_from_placement/6,
         get_devices_in_placement/3,
         get_devices_in_placement/5,
         get_devices_in_placement/6,
         list_placements/2,
         list_placements/4,
         list_placements/5,
         list_projects/1,
         list_projects/3,
         list_projects/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_placement/4,
         update_placement/5,
         update_project/3,
         update_project/4]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Associates a physical device with a placement.
associate_device_with_placement(Client, DeviceTemplateName, PlacementName, ProjectName, Input) ->
    associate_device_with_placement(Client, DeviceTemplateName, PlacementName, ProjectName, Input, []).
associate_device_with_placement(Client, DeviceTemplateName, PlacementName, ProjectName, Input0, Options) ->
    Method = put,
    Path = ["/projects/", aws_util:encode_uri(ProjectName), "/placements/", aws_util:encode_uri(PlacementName), "/devices/", aws_util:encode_uri(DeviceTemplateName), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an empty placement.
create_placement(Client, ProjectName, Input) ->
    create_placement(Client, ProjectName, Input, []).
create_placement(Client, ProjectName, Input0, Options) ->
    Method = post,
    Path = ["/projects/", aws_util:encode_uri(ProjectName), "/placements"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an empty project with a placement template.
%%
%% A project contains zero or more placements that adhere to the placement
%% template defined in the project.
create_project(Client, Input) ->
    create_project(Client, Input, []).
create_project(Client, Input0, Options) ->
    Method = post,
    Path = ["/projects"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a placement.
%%
%% To delete a placement, it must not have any devices associated with it.
%%
%% When you delete a placement, all associated data becomes irretrievable.
delete_placement(Client, PlacementName, ProjectName, Input) ->
    delete_placement(Client, PlacementName, ProjectName, Input, []).
delete_placement(Client, PlacementName, ProjectName, Input0, Options) ->
    Method = delete,
    Path = ["/projects/", aws_util:encode_uri(ProjectName), "/placements/", aws_util:encode_uri(PlacementName), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a project.
%%
%% To delete a project, it must not have any placements associated with it.
%%
%% When you delete a project, all associated data becomes irretrievable.
delete_project(Client, ProjectName, Input) ->
    delete_project(Client, ProjectName, Input, []).
delete_project(Client, ProjectName, Input0, Options) ->
    Method = delete,
    Path = ["/projects/", aws_util:encode_uri(ProjectName), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Describes a placement in a project.
describe_placement(Client, PlacementName, ProjectName)
  when is_map(Client) ->
    describe_placement(Client, PlacementName, ProjectName, #{}, #{}).

describe_placement(Client, PlacementName, ProjectName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_placement(Client, PlacementName, ProjectName, QueryMap, HeadersMap, []).

describe_placement(Client, PlacementName, ProjectName, QueryMap, HeadersMap, Options)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options) ->
    Path = ["/projects/", aws_util:encode_uri(ProjectName), "/placements/", aws_util:encode_uri(PlacementName), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns an object describing a project.
describe_project(Client, ProjectName)
  when is_map(Client) ->
    describe_project(Client, ProjectName, #{}, #{}).

describe_project(Client, ProjectName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_project(Client, ProjectName, QueryMap, HeadersMap, []).

describe_project(Client, ProjectName, QueryMap, HeadersMap, Options)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options) ->
    Path = ["/projects/", aws_util:encode_uri(ProjectName), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Removes a physical device from a placement.
disassociate_device_from_placement(Client, DeviceTemplateName, PlacementName, ProjectName, Input) ->
    disassociate_device_from_placement(Client, DeviceTemplateName, PlacementName, ProjectName, Input, []).
disassociate_device_from_placement(Client, DeviceTemplateName, PlacementName, ProjectName, Input0, Options) ->
    Method = delete,
    Path = ["/projects/", aws_util:encode_uri(ProjectName), "/placements/", aws_util:encode_uri(PlacementName), "/devices/", aws_util:encode_uri(DeviceTemplateName), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Returns an object enumerating the devices in a placement.
get_devices_in_placement(Client, PlacementName, ProjectName)
  when is_map(Client) ->
    get_devices_in_placement(Client, PlacementName, ProjectName, #{}, #{}).

get_devices_in_placement(Client, PlacementName, ProjectName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_devices_in_placement(Client, PlacementName, ProjectName, QueryMap, HeadersMap, []).

get_devices_in_placement(Client, PlacementName, ProjectName, QueryMap, HeadersMap, Options)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options) ->
    Path = ["/projects/", aws_util:encode_uri(ProjectName), "/placements/", aws_util:encode_uri(PlacementName), "/devices"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the placement(s) of a project.
list_placements(Client, ProjectName)
  when is_map(Client) ->
    list_placements(Client, ProjectName, #{}, #{}).

list_placements(Client, ProjectName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_placements(Client, ProjectName, QueryMap, HeadersMap, []).

list_placements(Client, ProjectName, QueryMap, HeadersMap, Options)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options) ->
    Path = ["/projects/", aws_util:encode_uri(ProjectName), "/placements"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the AWS IoT 1-Click project(s) associated with your AWS account
%% and region.
list_projects(Client)
  when is_map(Client) ->
    list_projects(Client, #{}, #{}).

list_projects(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_projects(Client, QueryMap, HeadersMap, []).

list_projects(Client, QueryMap, HeadersMap, Options)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options) ->
    Path = ["/projects"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the tags (metadata key/value pairs) which you have assigned to
%% the resource.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, Options)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options) ->
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Creates or modifies tags for a resource.
%%
%% Tags are key/value pairs (metadata) that can be used to manage a resource.
%% For more information, see AWS Tagging Strategies.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).
tag_resource(Client, ResourceArn, Input0, Options) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Removes one or more tags (metadata key/value pairs) from a resource.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).
untag_resource(Client, ResourceArn, Input0, Options) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"tagKeys">>, <<"tagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a placement with the given attributes.
%%
%% To clear an attribute, pass an empty value (i.e., "").
update_placement(Client, PlacementName, ProjectName, Input) ->
    update_placement(Client, PlacementName, ProjectName, Input, []).
update_placement(Client, PlacementName, ProjectName, Input0, Options) ->
    Method = put,
    Path = ["/projects/", aws_util:encode_uri(ProjectName), "/placements/", aws_util:encode_uri(PlacementName), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a project associated with your AWS account and region.
%%
%% With the exception of device template names, you can pass just the values
%% that need to be updated because the update request will change only the
%% values that are provided. To clear a value, pass the empty string (i.e.,
%% `""').
update_project(Client, ProjectName, Input) ->
    update_project(Client, ProjectName, Input, []).
update_project(Client, ProjectName, Input0, Options) ->
    Method = put,
    Path = ["/projects/", aws_util:encode_uri(ProjectName), ""],
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
    Client1 = Client#{service => <<"iot1click">>},
    Host = build_host(<<"projects.iot1click">>, Client1),
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
