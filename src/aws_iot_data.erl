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
-module(aws_iot_data).

-export([delete_thing_shadow/3,
         delete_thing_shadow/4,
         get_thing_shadow/2,
         get_thing_shadow/3,
         list_named_shadows_for_thing/2,
         list_named_shadows_for_thing/3,
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
    Input = Input0,
    request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode).

%% @doc Gets the shadow for the specified thing.
%%
%% For more information, see <a
%% href="http://docs.aws.amazon.com/iot/latest/developerguide/API_GetThingShadow.html">GetThingShadow</a>
%% in the AWS IoT Developer Guide.
get_thing_shadow(Client, ThingName)
  when is_map(Client) ->
    get_thing_shadow(Client, ThingName, []).
get_thing_shadow(Client, ThingName, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/things/", http_uri:encode(ThingName), "/shadow"],
    SuccessStatusCode = undefined,
    Headers = [],
    request(Client, get, Path, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the shadows for the specified thing.
list_named_shadows_for_thing(Client, ThingName)
  when is_map(Client) ->
    list_named_shadows_for_thing(Client, ThingName, []).
list_named_shadows_for_thing(Client, ThingName, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/api/things/shadow/ListNamedShadowsForThing/", http_uri:encode(ThingName), ""],
    SuccessStatusCode = undefined,
    Headers = [],
    request(Client, get, Path, Headers, undefined, Options, SuccessStatusCode).

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
    Input = Input0,
    request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode).

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
    Input = Input0,
    request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode).

%%====================================================================
%% Internal functions
%%====================================================================

-spec request(aws_client:aws_client(), atom(), iolist(),
              list(), map() | undefined, list(), pos_integer() | undefined) ->
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map() | undefined,
    Error :: {binary(), binary()}.
request(Client, Method, Path, Headers0, Input, Options, SuccessStatusCode) ->
    Client1 = Client#{service => <<"iotdata">>},
    Host = get_host(<<"data.iot">>, Client1),
    URL = get_url(Host, Path, Client1),
    Headers1 = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>}
        | Headers0
    ],
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
            {ok, undefined, {StatusCode, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = jsx:decode(Body, [return_maps]),
            {ok, Result, {StatusCode, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}, _) ->
    {ok, Body} = hackney:body(Client),
    Error = jsx:decode(Body, [return_maps]),
    Reason1 = maps:get(<<"message">>, Error, undefined),
    Reason2 = maps:get(<<"Message">>, Error, Reason1),
    {error, Reason2, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}, _) ->
  {error, Reason}.

get_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
get_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, <<".">>, Region, <<".">>, Endpoint], <<"">>).

get_url(Host, Path0, Client) ->
    Proto = maps:get(proto, Client),
    Path = erlang:iolist_to_binary(Path0),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, Path], <<"">>).

-spec encode_payload(undefined | map()) -> binary().
encode_payload(undefined) ->
  <<>>;
encode_payload(Input) ->
  jsx:encode(Input).
