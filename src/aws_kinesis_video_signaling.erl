%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Kinesis Video Streams Signaling Service is a intermediate service
%% that establishes a
%% communication channel for discovering peers, transmitting offers and
%% answers in order to
%% establish peer-to-peer connection in webRTC technology.
-module(aws_kinesis_video_signaling).

-export([get_ice_server_config/2,
         get_ice_server_config/3,
         send_alexa_offer_to_master/2,
         send_alexa_offer_to_master/3]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% client_limit_exceeded_exception() :: #{
%%   <<"Message">> => string()
%% }
-type client_limit_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% get_ice_server_config_request() :: #{
%%   <<"ChannelARN">> := string(),
%%   <<"ClientId">> => string(),
%%   <<"Service">> => list(any()),
%%   <<"Username">> => string()
%% }
-type get_ice_server_config_request() :: #{binary() => any()}.


%% Example:
%% get_ice_server_config_response() :: #{
%%   <<"IceServerList">> => list(ice_server())
%% }
-type get_ice_server_config_response() :: #{binary() => any()}.


%% Example:
%% ice_server() :: #{
%%   <<"Password">> => string(),
%%   <<"Ttl">> => integer(),
%%   <<"Uris">> => list(string()),
%%   <<"Username">> => string()
%% }
-type ice_server() :: #{binary() => any()}.


%% Example:
%% invalid_argument_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_argument_exception() :: #{binary() => any()}.


%% Example:
%% invalid_client_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_client_exception() :: #{binary() => any()}.


%% Example:
%% not_authorized_exception() :: #{
%%   <<"Message">> => string()
%% }
-type not_authorized_exception() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% send_alexa_offer_to_master_request() :: #{
%%   <<"ChannelARN">> := string(),
%%   <<"MessagePayload">> := string(),
%%   <<"SenderClientId">> := string()
%% }
-type send_alexa_offer_to_master_request() :: #{binary() => any()}.


%% Example:
%% send_alexa_offer_to_master_response() :: #{
%%   <<"Answer">> => string()
%% }
-type send_alexa_offer_to_master_response() :: #{binary() => any()}.


%% Example:
%% session_expired_exception() :: #{
%%   <<"message">> => string()
%% }
-type session_expired_exception() :: #{binary() => any()}.

-type get_ice_server_config_errors() ::
    session_expired_exception() | 
    resource_not_found_exception() | 
    not_authorized_exception() | 
    invalid_client_exception() | 
    invalid_argument_exception() | 
    client_limit_exceeded_exception().

-type send_alexa_offer_to_master_errors() ::
    resource_not_found_exception() | 
    not_authorized_exception() | 
    invalid_argument_exception() | 
    client_limit_exceeded_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Gets the Interactive Connectivity Establishment (ICE) server
%% configuration
%% information, including URIs, username, and password which can be used to
%% configure the
%% WebRTC connection.
%%
%% The ICE component uses this configuration information to setup the
%% WebRTC connection, including authenticating with the Traversal Using
%% Relays around NAT
%% (TURN) relay server.
%%
%% TURN is a protocol that is used to improve the connectivity of
%% peer-to-peer
%% applications. By providing a cloud-based relay service, TURN ensures that
%% a connection
%% can be established even when one or more peers are incapable of a direct
%% peer-to-peer
%% connection. For more information, see A REST API For
%% Access To TURN Services:
%% https://tools.ietf.org/html/draft-uberti-rtcweb-turn-rest-00.
%%
%% You can invoke this API to establish a fallback mechanism in case either
%% of the peers
%% is unable to establish a direct peer-to-peer connection over a signaling
%% channel. You
%% must specify either a signaling channel ARN or the client ID in order to
%% invoke this
%% API.
-spec get_ice_server_config(aws_client:aws_client(), get_ice_server_config_request()) ->
    {ok, get_ice_server_config_response(), tuple()} |
    {error, any()} |
    {error, get_ice_server_config_errors(), tuple()}.
get_ice_server_config(Client, Input) ->
    get_ice_server_config(Client, Input, []).

-spec get_ice_server_config(aws_client:aws_client(), get_ice_server_config_request(), proplists:proplist()) ->
    {ok, get_ice_server_config_response(), tuple()} |
    {error, any()} |
    {error, get_ice_server_config_errors(), tuple()}.
get_ice_server_config(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/get-ice-server-config"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc This API allows you to connect WebRTC-enabled devices with Alexa
%% display devices.
%%
%% When
%% invoked, it sends the Alexa Session Description Protocol (SDP) offer to
%% the master peer.
%% The offer is delivered as soon as the master is connected to the specified
%% signaling
%% channel. This API returns the SDP answer from the connected master. If the
%% master is not
%% connected to the signaling channel, redelivery requests are made until the
%% message
%% expires.
-spec send_alexa_offer_to_master(aws_client:aws_client(), send_alexa_offer_to_master_request()) ->
    {ok, send_alexa_offer_to_master_response(), tuple()} |
    {error, any()} |
    {error, send_alexa_offer_to_master_errors(), tuple()}.
send_alexa_offer_to_master(Client, Input) ->
    send_alexa_offer_to_master(Client, Input, []).

-spec send_alexa_offer_to_master(aws_client:aws_client(), send_alexa_offer_to_master_request(), proplists:proplist()) ->
    {ok, send_alexa_offer_to_master_response(), tuple()} |
    {error, any()} |
    {error, send_alexa_offer_to_master_errors(), tuple()}.
send_alexa_offer_to_master(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/send-alexa-offer-to-master"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

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

-spec proplists_take(any(), proplists:proplist(), any()) -> {any(), proplists:proplist()}.
proplists_take(Key, Proplist, Default) ->
  Value = proplists:get_value(Key, Proplist, Default),
  {Value, proplists:delete(Key, Proplist)}.

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
    Client1 = Client#{service => <<"kinesisvideo">>},
    Host = build_host(<<"kinesisvideo">>, Client1),
    URL0 = build_url(Host, Path, Client1),
    URL = aws_request:add_query(URL0, Query),
    AdditionalHeaders1 = [ {<<"Host">>, Host}
                         , {<<"Content-Type">>, <<"application/x-amz-json-1.1">>}
                         ],
    Payload =
      case proplists:get_value(send_body_as_binary, Options) of
        true ->
          maps:get(<<"Body">>, Input, <<"">>);
        false ->
          encode_payload(Input)
      end,
    AdditionalHeaders = case proplists:get_value(append_sha256_content_hash, Options, false) of
                          true ->
                            add_checksum_hash_header(AdditionalHeaders1, Payload);
                          false ->
                            AdditionalHeaders1
                        end,
    Headers1 = aws_request:add_headers(AdditionalHeaders, Headers0),

    MethodBin = aws_request:method_to_binary(Method),
    SignedHeaders = aws_request:sign_request(Client1, MethodBin, URL, Headers1, Payload),
    Response = hackney:request(Method, URL, SignedHeaders, Payload, Options),
    DecodeBody = not proplists:get_value(receive_body_as_binary, Options),
    handle_response(Response, SuccessStatusCode, DecodeBody).

add_checksum_hash_header(Headers, Body) ->
  [ {<<"X-Amz-CheckSum-SHA256">>, base64:encode(crypto:hash(sha256, Body))}
  | Headers
  ].

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
                       true ->
                         try
                           jsx:decode(Body)
                         catch
                           Error:Reason:Stack ->
                             erlang:raise(error, {body_decode_failed, Error, Reason, StatusCode, Body}, Stack)
                         end;
                       false -> #{<<"Body">> => Body}
                     end,
            {ok, Result, {StatusCode, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, _ResponseHeaders, _Client}, _, _DecodeBody)
  when StatusCode =:= 503 ->
  %% Retriable error if retries are enabled
  {error, service_unavailable};
handle_response({ok, StatusCode, ResponseHeaders, Client}, _, _DecodeBody) ->
    {ok, Body} = hackney:body(Client),
    try
      DecodedError = jsx:decode(Body),
      {error, DecodedError, {StatusCode, ResponseHeaders, Client}}
    catch
      Error:Reason:Stack ->
        erlang:raise(error, {body_decode_failed, Error, Reason, StatusCode, Body}, Stack)
    end;
handle_response({error, Reason}, _, _DecodeBody) ->
  {error, Reason}.

build_host(_EndpointPrefix, #{region := <<"local">>, endpoint := Endpoint}) ->
    Endpoint;
build_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
build_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

build_url(Host, Path0, Client) ->
    Proto = aws_client:proto(Client),
    Path = erlang:iolist_to_binary(Path0),
    Port = aws_client:port(Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, Path], <<"">>).

-spec encode_payload(undefined | map()) -> binary().
encode_payload(undefined) ->
  <<>>;
encode_payload(Input) ->
  jsx:encode(Input).
