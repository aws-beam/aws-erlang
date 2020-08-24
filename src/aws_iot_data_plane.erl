%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc <fullname>AWS IoT</fullname>
%%
%% AWS IoT-Data enables secure, bi-directional communication between
%% Internet-connected things (such as sensors, actuators, embedded devices,
%% or smart appliances) and the AWS cloud. It implements a broker for
%% applications and things to publish messages over HTTP (Publish) and
%% retrieve, update, and delete shadows. A shadow is a persistent
%% representation of your things and their state in the AWS cloud.
%%
%% Find the endpoint address for actions in the AWS IoT data plane by running
%% this CLI command:
%%
%% <code>aws iot describe-endpoint --endpoint-type iot:Data-ATS</code>
%%
%% The service name used by <a
%% href="https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html">AWS
%% Signature Version 4</a> to sign requests is: <i>iotdevicegateway</i>.
-module(aws_iot_data_plane).

-export([delete_thing_shadow/3,
         delete_thing_shadow/4,
         get_thing_shadow/3,
         get_thing_shadow/4,
         list_named_shadows_for_thing/4,
         list_named_shadows_for_thing/5,
         publish/3,
         publish/4,
         update_thing_shadow/3,
         update_thing_shadow/4]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Deletes the shadow for the specified thing.
%%
%% For more information, see <a
%% href="http://docs.aws.amazon.com/iot/latest/developerguide/API_DeleteThingShadow.html">DeleteThingShadow</a>
%% in the AWS IoT Developer Guide.
delete_thing_shadow(Client, ThingName, Input) ->
    delete_thing_shadow(Client, ThingName, Input, []).
delete_thing_shadow(Client, ThingName, Input0, Options) ->
    Method = delete,
    Path = ["/things/", http_uri:encode(ThingName), "/shadow"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"name">>, <<"shadowName">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Gets the shadow for the specified thing.
%%
%% For more information, see <a
%% href="http://docs.aws.amazon.com/iot/latest/developerguide/API_GetThingShadow.html">GetThingShadow</a>
%% in the AWS IoT Developer Guide.
get_thing_shadow(Client, ThingName, ShadowName)
  when is_map(Client) ->
    get_thing_shadow(Client, ThingName, ShadowName, []).
get_thing_shadow(Client, ThingName, ShadowName, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/things/", http_uri:encode(ThingName), "/shadow"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"name">>, ShadowName}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the shadows for the specified thing.
list_named_shadows_for_thing(Client, ThingName, NextToken, PageSize)
  when is_map(Client) ->
    list_named_shadows_for_thing(Client, ThingName, NextToken, PageSize, []).
list_named_shadows_for_thing(Client, ThingName, NextToken, PageSize, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/api/things/shadow/ListNamedShadowsForThing/", http_uri:encode(ThingName), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"nextToken">>, NextToken},
        {<<"pageSize">>, PageSize}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Publishes state information.
%%
%% For more information, see <a
%% href="http://docs.aws.amazon.com/iot/latest/developerguide/protocols.html#http">HTTP
%% Protocol</a> in the AWS IoT Developer Guide.
publish(Client, Topic, Input) ->
    publish(Client, Topic, Input, []).
publish(Client, Topic, Input0, Options) ->
    Method = post,
    Path = ["/topics/", http_uri:encode(Topic), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"qos">>, <<"qos">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the shadow for the specified thing.
%%
%% For more information, see <a
%% href="http://docs.aws.amazon.com/iot/latest/developerguide/API_UpdateThingShadow.html">UpdateThingShadow</a>
%% in the AWS IoT Developer Guide.
update_thing_shadow(Client, ThingName, Input) ->
    update_thing_shadow(Client, ThingName, Input, []).
update_thing_shadow(Client, ThingName, Input0, Options) ->
    Method = post,
    Path = ["/things/", http_uri:encode(ThingName), "/shadow"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"name">>, <<"shadowName">>}
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
    Client1 = Client#{service => <<"iotdata">>},
    Host = build_host(<<"data.iot">>, Client1),
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
