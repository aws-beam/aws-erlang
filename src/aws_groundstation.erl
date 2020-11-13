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
         describe_contact/3,
         get_config/3,
         get_config/4,
         get_dataflow_endpoint_group/2,
         get_dataflow_endpoint_group/3,
         get_minute_usage/2,
         get_minute_usage/3,
         get_mission_profile/2,
         get_mission_profile/3,
         get_satellite/2,
         get_satellite/3,
         list_configs/3,
         list_configs/4,
         list_contacts/2,
         list_contacts/3,
         list_dataflow_endpoint_groups/3,
         list_dataflow_endpoint_groups/4,
         list_ground_stations/4,
         list_ground_stations/5,
         list_mission_profiles/3,
         list_mission_profiles/4,
         list_satellites/3,
         list_satellites/4,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
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
cancel_contact(Client, ContactId, Input0, Options) ->
    Method = delete,
    Path = ["/contact/", aws_util:encode_uri(ContactId), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a `Config' with the specified `configData' parameters.
%%
%% Only one type of `configData' can be specified.
create_config(Client, Input) ->
    create_config(Client, Input, []).
create_config(Client, Input0, Options) ->
    Method = post,
    Path = ["/config"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

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
create_dataflow_endpoint_group(Client, Input0, Options) ->
    Method = post,
    Path = ["/dataflowEndpointGroup"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a mission profile.
%%
%% `dataflowEdges' is a list of lists of strings. Each lower level list of
%% strings has two elements: a from ARN and a to ARN.
create_mission_profile(Client, Input) ->
    create_mission_profile(Client, Input, []).
create_mission_profile(Client, Input0, Options) ->
    Method = post,
    Path = ["/missionprofile"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a `Config'.
delete_config(Client, ConfigId, ConfigType, Input) ->
    delete_config(Client, ConfigId, ConfigType, Input, []).
delete_config(Client, ConfigId, ConfigType, Input0, Options) ->
    Method = delete,
    Path = ["/config/", aws_util:encode_uri(ConfigType), "/", aws_util:encode_uri(ConfigId), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a dataflow endpoint group.
delete_dataflow_endpoint_group(Client, DataflowEndpointGroupId, Input) ->
    delete_dataflow_endpoint_group(Client, DataflowEndpointGroupId, Input, []).
delete_dataflow_endpoint_group(Client, DataflowEndpointGroupId, Input0, Options) ->
    Method = delete,
    Path = ["/dataflowEndpointGroup/", aws_util:encode_uri(DataflowEndpointGroupId), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a mission profile.
delete_mission_profile(Client, MissionProfileId, Input) ->
    delete_mission_profile(Client, MissionProfileId, Input, []).
delete_mission_profile(Client, MissionProfileId, Input0, Options) ->
    Method = delete,
    Path = ["/missionprofile/", aws_util:encode_uri(MissionProfileId), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Describes an existing contact.
describe_contact(Client, ContactId)
  when is_map(Client) ->
    describe_contact(Client, ContactId, []).
describe_contact(Client, ContactId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/contact/", aws_util:encode_uri(ContactId), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns `Config' information.
%%
%% Only one `Config' response can be returned.
get_config(Client, ConfigId, ConfigType)
  when is_map(Client) ->
    get_config(Client, ConfigId, ConfigType, []).
get_config(Client, ConfigId, ConfigType, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/config/", aws_util:encode_uri(ConfigType), "/", aws_util:encode_uri(ConfigId), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the dataflow endpoint group.
get_dataflow_endpoint_group(Client, DataflowEndpointGroupId)
  when is_map(Client) ->
    get_dataflow_endpoint_group(Client, DataflowEndpointGroupId, []).
get_dataflow_endpoint_group(Client, DataflowEndpointGroupId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/dataflowEndpointGroup/", aws_util:encode_uri(DataflowEndpointGroupId), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the number of minutes used by account.
get_minute_usage(Client, Input) ->
    get_minute_usage(Client, Input, []).
get_minute_usage(Client, Input0, Options) ->
    Method = post,
    Path = ["/minute-usage"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Returns a mission profile.
get_mission_profile(Client, MissionProfileId)
  when is_map(Client) ->
    get_mission_profile(Client, MissionProfileId, []).
get_mission_profile(Client, MissionProfileId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/missionprofile/", aws_util:encode_uri(MissionProfileId), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a satellite.
get_satellite(Client, SatelliteId)
  when is_map(Client) ->
    get_satellite(Client, SatelliteId, []).
get_satellite(Client, SatelliteId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/satellite/", aws_util:encode_uri(SatelliteId), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of `Config' objects.
list_configs(Client, MaxResults, NextToken)
  when is_map(Client) ->
    list_configs(Client, MaxResults, NextToken, []).
list_configs(Client, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/config"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of contacts.
%%
%% If `statusList' contains AVAILABLE, the request must include
%% `groundStation', `missionprofileArn', and `satelliteArn'.
list_contacts(Client, Input) ->
    list_contacts(Client, Input, []).
list_contacts(Client, Input0, Options) ->
    Method = post,
    Path = ["/contacts"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Returns a list of `DataflowEndpoint' groups.
list_dataflow_endpoint_groups(Client, MaxResults, NextToken)
  when is_map(Client) ->
    list_dataflow_endpoint_groups(Client, MaxResults, NextToken, []).
list_dataflow_endpoint_groups(Client, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/dataflowEndpointGroup"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of ground stations.
list_ground_stations(Client, MaxResults, NextToken, SatelliteId)
  when is_map(Client) ->
    list_ground_stations(Client, MaxResults, NextToken, SatelliteId, []).
list_ground_stations(Client, MaxResults, NextToken, SatelliteId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/groundstation"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken},
        {<<"satelliteId">>, SatelliteId}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of mission profiles.
list_mission_profiles(Client, MaxResults, NextToken)
  when is_map(Client) ->
    list_mission_profiles(Client, MaxResults, NextToken, []).
list_mission_profiles(Client, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/missionprofile"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of satellites.
list_satellites(Client, MaxResults, NextToken)
  when is_map(Client) ->
    list_satellites(Client, MaxResults, NextToken, []).
list_satellites(Client, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/satellite"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of tags for a specified resource.
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

%% @doc Reserves a contact using specified parameters.
reserve_contact(Client, Input) ->
    reserve_contact(Client, Input, []).
reserve_contact(Client, Input0, Options) ->
    Method = post,
    Path = ["/contact"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Assigns a tag to a resource.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).
tag_resource(Client, ResourceArn, Input0, Options) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deassigns a resource tag.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).
untag_resource(Client, ResourceArn, Input0, Options) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"tagKeys">>, <<"tagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the `Config' used when scheduling contacts.
%%
%% Updating a `Config' will not update the execution parameters for existing
%% future contacts scheduled with this `Config'.
update_config(Client, ConfigId, ConfigType, Input) ->
    update_config(Client, ConfigId, ConfigType, Input, []).
update_config(Client, ConfigId, ConfigType, Input0, Options) ->
    Method = put,
    Path = ["/config/", aws_util:encode_uri(ConfigType), "/", aws_util:encode_uri(ConfigId), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a mission profile.
%%
%% Updating a mission profile will not update the execution parameters for
%% existing future contacts.
update_mission_profile(Client, MissionProfileId, Input) ->
    update_mission_profile(Client, MissionProfileId, Input, []).
update_mission_profile(Client, MissionProfileId, Input0, Options) ->
    Method = put,
    Path = ["/missionprofile/", aws_util:encode_uri(MissionProfileId), ""],
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
    Client1 = Client#{service => <<"groundstation">>},
    Host = build_host(<<"groundstation">>, Client1),
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
