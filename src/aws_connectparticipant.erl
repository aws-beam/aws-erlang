%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Connect is a cloud-based contact center solution that makes it
%% easy to set up and manage a customer contact center and provide reliable
%% customer engagement at any scale.
%%
%% Amazon Connect enables customer contacts through voice or chat.
%%
%% The APIs described here are used by chat participants, such as agents and
%% customers.
-module(aws_connectparticipant).

-export([create_participant_connection/2,
         create_participant_connection/3,
         disconnect_participant/2,
         disconnect_participant/3,
         get_transcript/2,
         get_transcript/3,
         send_event/2,
         send_event/3,
         send_message/2,
         send_message/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Creates the participant's connection.
%%
%% Note that ParticipantToken is used for invoking this API instead of
%% ConnectionToken.
%%
%% The participant token is valid for the lifetime of the participant – until
%% the they are part of a contact.
%%
%% The response URL for `WEBSOCKET' Type has a connect expiry timeout of
%% 100s. Clients must manually connect to the returned websocket URL and
%% subscribe to the desired topic.
%%
%% For chat, you need to publish the following on the established websocket
%% connection:
%%
%% `{"topic":"aws/subscribe","content":{"topics":["aws/chat"]}}'
%%
%% Upon websocket URL expiry, as specified in the response ConnectionExpiry
%% parameter, clients need to call this API again to obtain a new websocket
%% URL and perform the same steps as before.
create_participant_connection(Client, Input) ->
    create_participant_connection(Client, Input, []).
create_participant_connection(Client, Input0, Options) ->
    Method = post,
    Path = ["/participant/connection"],
    SuccessStatusCode = undefined,

    HeadersMapping = [
                       {<<"X-Amz-Bearer">>, <<"ParticipantToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Disconnects a participant.
%%
%% Note that ConnectionToken is used for invoking this API instead of
%% ParticipantToken.
disconnect_participant(Client, Input) ->
    disconnect_participant(Client, Input, []).
disconnect_participant(Client, Input0, Options) ->
    Method = post,
    Path = ["/participant/disconnect"],
    SuccessStatusCode = undefined,

    HeadersMapping = [
                       {<<"X-Amz-Bearer">>, <<"ConnectionToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves a transcript of the session.
%%
%% Note that ConnectionToken is used for invoking this API instead of
%% ParticipantToken.
get_transcript(Client, Input) ->
    get_transcript(Client, Input, []).
get_transcript(Client, Input0, Options) ->
    Method = post,
    Path = ["/participant/transcript"],
    SuccessStatusCode = undefined,

    HeadersMapping = [
                       {<<"X-Amz-Bearer">>, <<"ConnectionToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Sends an event.
%%
%% Note that ConnectionToken is used for invoking this API instead of
%% ParticipantToken.
send_event(Client, Input) ->
    send_event(Client, Input, []).
send_event(Client, Input0, Options) ->
    Method = post,
    Path = ["/participant/event"],
    SuccessStatusCode = undefined,

    HeadersMapping = [
                       {<<"X-Amz-Bearer">>, <<"ConnectionToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Sends a message.
%%
%% Note that ConnectionToken is used for invoking this API instead of
%% ParticipantToken.
send_message(Client, Input) ->
    send_message(Client, Input, []).
send_message(Client, Input0, Options) ->
    Method = post,
    Path = ["/participant/message"],
    SuccessStatusCode = undefined,

    HeadersMapping = [
                       {<<"X-Amz-Bearer">>, <<"ConnectionToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

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
    Client1 = Client#{service => <<"execute-api">>},
    Host = build_host(<<"participant.connect">>, Client1),
    URL0 = build_url(Host, Path, Client1),
    URL = aws_request:add_query(URL0, Query),
    AdditionalHeaders = [ {<<"Host">>, Host}
                        , {<<"Content-Type">>, <<"application/x-amz-json-1.1">>}
                        ],
    Headers1 = aws_request:add_headers(AdditionalHeaders, Headers0),

    Payload =
      case proplists:get_value(should_send_body_as_binary, Options) of
        true ->
          maps:get_value(<<"Body">>, Input);
        _ ->
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
