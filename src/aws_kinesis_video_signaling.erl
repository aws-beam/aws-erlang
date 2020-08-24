%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Kinesis Video Streams Signaling Service is a intermediate service
%% that establishes a communication channel for discovering peers,
%% transmitting offers and answers in order to establish peer-to-peer
%% connection in webRTC technology.
-module(aws_kinesis_video_signaling).

-export([get_ice_server_config/2,
         get_ice_server_config/3,
         send_alexa_offer_to_master/2,
         send_alexa_offer_to_master/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Gets the Interactive Connectivity Establishment (ICE) server
%% configuration information, including URIs, username, and password which
%% can be used to configure the WebRTC connection. The ICE component uses
%% this configuration information to setup the WebRTC connection, including
%% authenticating with the Traversal Using Relays around NAT (TURN) relay
%% server.
%%
%% TURN is a protocol that is used to improve the connectivity of
%% peer-to-peer applications. By providing a cloud-based relay service, TURN
%% ensures that a connection can be established even when one or more peers
%% are incapable of a direct peer-to-peer connection. For more information,
%% see <a
%% href="https://tools.ietf.org/html/draft-uberti-rtcweb-turn-rest-00">A REST
%% API For Access To TURN Services</a>.
%%
%% You can invoke this API to establish a fallback mechanism in case either
%% of the peers is unable to establish a direct peer-to-peer connection over
%% a signaling channel. You must specify either a signaling channel ARN or
%% the client ID in order to invoke this API.
get_ice_server_config(Client, Input) ->
    get_ice_server_config(Client, Input, []).
get_ice_server_config(Client, Input0, Options) ->
    Method = post,
    Path = ["/v1/get-ice-server-config"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc This API allows you to connect WebRTC-enabled devices with Alexa
%% display devices. When invoked, it sends the Alexa Session Description
%% Protocol (SDP) offer to the master peer. The offer is delivered as soon as
%% the master is connected to the specified signaling channel. This API
%% returns the SDP answer from the connected master. If the master is not
%% connected to the signaling channel, redelivery requests are made until the
%% message expires.
send_alexa_offer_to_master(Client, Input) ->
    send_alexa_offer_to_master(Client, Input, []).
send_alexa_offer_to_master(Client, Input0, Options) ->
    Method = post,
    Path = ["/v1/send-alexa-offer-to-master"],
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
    Client1 = Client#{service => <<"kinesisvideo">>},
    Host = build_host(<<"kinesisvideo">>, Client1),
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
