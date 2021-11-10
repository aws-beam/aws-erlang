%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Welcome to the AWS Ground Station API Reference.
%%
%% AWS Ground Station is a fully managed service that enables you to control
%% satellite communications, downlink and process satellite data, and scale
%% your satellite operations efficiently and cost-effectively without having
%% to build or manage your own ground station infrastructure.
-module(aws_groundstation).

-export([cancel_contact/3,
         cancel_contact/4,
         create_config/2,
         create_config/3,
         create_dataflow_endpoint_group/2,
         create_dataflow_endpoint_group/3,
         create_mission_profile/2,
         create_mission_profile/3,
         delete_config/4,
         delete_config/5,
         delete_dataflow_endpoint_group/3,
         delete_dataflow_endpoint_group/4,
         delete_mission_profile/3,
         delete_mission_profile/4,
         describe_contact/2,
         describe_contact/4,
         describe_contact/5,
         get_config/3,
         get_config/5,
         get_config/6,
         get_dataflow_endpoint_group/2,
         get_dataflow_endpoint_group/4,
         get_dataflow_endpoint_group/5,
         get_minute_usage/2,
         get_minute_usage/3,
         get_mission_profile/2,
         get_mission_profile/4,
         get_mission_profile/5,
         get_satellite/2,
         get_satellite/4,
         get_satellite/5,
         list_configs/1,
         list_configs/3,
         list_configs/4,
         list_contacts/2,
         list_contacts/3,
         list_dataflow_endpoint_groups/1,
         list_dataflow_endpoint_groups/3,
         list_dataflow_endpoint_groups/4,
         list_ground_stations/1,
         list_ground_stations/3,
         list_ground_stations/4,
         list_mission_profiles/1,
         list_mission_profiles/3,
         list_mission_profiles/4,
         list_satellites/1,
         list_satellites/3,
         list_satellites/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         reserve_contact/2,
         reserve_contact/3,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_config/4,
         update_config/5,
         update_mission_profile/3,
         update_mission_profile/4]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Cancels a contact with a specified contact ID.
cancel_contact(Client, ContactId, Input) ->
    cancel_contact(Client, ContactId, Input, []).
cancel_contact(Client, ContactId, Input0, Options0) ->
    Method = delete,
    Path = ["/contact/", aws_util:encode_uri(ContactId), ""],
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

%% @doc Creates a `Config' with the specified `configData' parameters.
%%
%% Only one type of `configData' can be specified.
create_config(Client, Input) ->
    create_config(Client, Input, []).
create_config(Client, Input0, Options0) ->
    Method = post,
    Path = ["/config"],
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

%% @doc Creates a `DataflowEndpoint' group containing the specified list of
%% `DataflowEndpoint' objects.
%%
%% The `name' field in each endpoint is used in your mission profile
%% `DataflowEndpointConfig' to specify which endpoints to use during a
%% contact.
%%
%% When a contact uses multiple `DataflowEndpointConfig' objects, each
%% `Config' must match a `DataflowEndpoint' in the same group.
create_dataflow_endpoint_group(Client, Input) ->
    create_dataflow_endpoint_group(Client, Input, []).
create_dataflow_endpoint_group(Client, Input0, Options0) ->
    Method = post,
    Path = ["/dataflowEndpointGroup"],
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

%% @doc Creates a mission profile.
%%
%% `dataflowEdges' is a list of lists of strings. Each lower level list of
%% strings has two elements: a from ARN and a to ARN.
create_mission_profile(Client, Input) ->
    create_mission_profile(Client, Input, []).
create_mission_profile(Client, Input0, Options0) ->
    Method = post,
    Path = ["/missionprofile"],
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

%% @doc Deletes a `Config'.
delete_config(Client, ConfigId, ConfigType, Input) ->
    delete_config(Client, ConfigId, ConfigType, Input, []).
delete_config(Client, ConfigId, ConfigType, Input0, Options0) ->
    Method = delete,
    Path = ["/config/", aws_util:encode_uri(ConfigType), "/", aws_util:encode_uri(ConfigId), ""],
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

%% @doc Deletes a dataflow endpoint group.
delete_dataflow_endpoint_group(Client, DataflowEndpointGroupId, Input) ->
    delete_dataflow_endpoint_group(Client, DataflowEndpointGroupId, Input, []).
delete_dataflow_endpoint_group(Client, DataflowEndpointGroupId, Input0, Options0) ->
    Method = delete,
    Path = ["/dataflowEndpointGroup/", aws_util:encode_uri(DataflowEndpointGroupId), ""],
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

%% @doc Deletes a mission profile.
delete_mission_profile(Client, MissionProfileId, Input) ->
    delete_mission_profile(Client, MissionProfileId, Input, []).
delete_mission_profile(Client, MissionProfileId, Input0, Options0) ->
    Method = delete,
    Path = ["/missionprofile/", aws_util:encode_uri(MissionProfileId), ""],
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

%% @doc Describes an existing contact.
describe_contact(Client, ContactId)
  when is_map(Client) ->
    describe_contact(Client, ContactId, #{}, #{}).

describe_contact(Client, ContactId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_contact(Client, ContactId, QueryMap, HeadersMap, []).

describe_contact(Client, ContactId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/contact/", aws_util:encode_uri(ContactId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns `Config' information.
%%
%% Only one `Config' response can be returned.
get_config(Client, ConfigId, ConfigType)
  when is_map(Client) ->
    get_config(Client, ConfigId, ConfigType, #{}, #{}).

get_config(Client, ConfigId, ConfigType, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_config(Client, ConfigId, ConfigType, QueryMap, HeadersMap, []).

get_config(Client, ConfigId, ConfigType, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/config/", aws_util:encode_uri(ConfigType), "/", aws_util:encode_uri(ConfigId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the dataflow endpoint group.
get_dataflow_endpoint_group(Client, DataflowEndpointGroupId)
  when is_map(Client) ->
    get_dataflow_endpoint_group(Client, DataflowEndpointGroupId, #{}, #{}).

get_dataflow_endpoint_group(Client, DataflowEndpointGroupId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_dataflow_endpoint_group(Client, DataflowEndpointGroupId, QueryMap, HeadersMap, []).

get_dataflow_endpoint_group(Client, DataflowEndpointGroupId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/dataflowEndpointGroup/", aws_util:encode_uri(DataflowEndpointGroupId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the number of minutes used by account.
get_minute_usage(Client, Input) ->
    get_minute_usage(Client, Input, []).
get_minute_usage(Client, Input0, Options0) ->
    Method = post,
    Path = ["/minute-usage"],
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

%% @doc Returns a mission profile.
get_mission_profile(Client, MissionProfileId)
  when is_map(Client) ->
    get_mission_profile(Client, MissionProfileId, #{}, #{}).

get_mission_profile(Client, MissionProfileId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_mission_profile(Client, MissionProfileId, QueryMap, HeadersMap, []).

get_mission_profile(Client, MissionProfileId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/missionprofile/", aws_util:encode_uri(MissionProfileId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a satellite.
get_satellite(Client, SatelliteId)
  when is_map(Client) ->
    get_satellite(Client, SatelliteId, #{}, #{}).

get_satellite(Client, SatelliteId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_satellite(Client, SatelliteId, QueryMap, HeadersMap, []).

get_satellite(Client, SatelliteId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/satellite/", aws_util:encode_uri(SatelliteId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of `Config' objects.
list_configs(Client)
  when is_map(Client) ->
    list_configs(Client, #{}, #{}).

list_configs(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_configs(Client, QueryMap, HeadersMap, []).

list_configs(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/config"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of contacts.
%%
%% If `statusList' contains AVAILABLE, the request must include
%% `groundStation', `missionprofileArn', and `satelliteArn'.
list_contacts(Client, Input) ->
    list_contacts(Client, Input, []).
list_contacts(Client, Input0, Options0) ->
    Method = post,
    Path = ["/contacts"],
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

%% @doc Returns a list of `DataflowEndpoint' groups.
list_dataflow_endpoint_groups(Client)
  when is_map(Client) ->
    list_dataflow_endpoint_groups(Client, #{}, #{}).

list_dataflow_endpoint_groups(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_dataflow_endpoint_groups(Client, QueryMap, HeadersMap, []).

list_dataflow_endpoint_groups(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/dataflowEndpointGroup"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of ground stations.
list_ground_stations(Client)
  when is_map(Client) ->
    list_ground_stations(Client, #{}, #{}).

list_ground_stations(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_ground_stations(Client, QueryMap, HeadersMap, []).

list_ground_stations(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/groundstation"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"satelliteId">>, maps:get(<<"satelliteId">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of mission profiles.
list_mission_profiles(Client)
  when is_map(Client) ->
    list_mission_profiles(Client, #{}, #{}).

list_mission_profiles(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_mission_profiles(Client, QueryMap, HeadersMap, []).

list_mission_profiles(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/missionprofile"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of satellites.
list_satellites(Client)
  when is_map(Client) ->
    list_satellites(Client, #{}, #{}).

list_satellites(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_satellites(Client, QueryMap, HeadersMap, []).

list_satellites(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/satellite"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of tags for a specified resource.
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

%% @doc Reserves a contact using specified parameters.
reserve_contact(Client, Input) ->
    reserve_contact(Client, Input, []).
reserve_contact(Client, Input0, Options0) ->
    Method = post,
    Path = ["/contact"],
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

%% @doc Assigns a tag to a resource.
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

%% @doc Deassigns a resource tag.
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

%% @doc Updates the `Config' used when scheduling contacts.
%%
%% Updating a `Config' will not update the execution parameters for existing
%% future contacts scheduled with this `Config'.
update_config(Client, ConfigId, ConfigType, Input) ->
    update_config(Client, ConfigId, ConfigType, Input, []).
update_config(Client, ConfigId, ConfigType, Input0, Options0) ->
    Method = put,
    Path = ["/config/", aws_util:encode_uri(ConfigType), "/", aws_util:encode_uri(ConfigId), ""],
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

%% @doc Updates a mission profile.
%%
%% Updating a mission profile will not update the execution parameters for
%% existing future contacts.
update_mission_profile(Client, MissionProfileId, Input) ->
    update_mission_profile(Client, MissionProfileId, Input, []).
update_mission_profile(Client, MissionProfileId, Input0, Options0) ->
    Method = put,
    Path = ["/missionprofile/", aws_util:encode_uri(MissionProfileId), ""],
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
    Client1 = Client#{service => <<"groundstation">>},
    Host = build_host(<<"groundstation">>, Client1),
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
