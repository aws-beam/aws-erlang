%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Pinpoint SMS and Voice Messaging public facing APIs
-module(aws_pinpoint_sms_voice).

-export([create_configuration_set/2,
         create_configuration_set/3,
         create_configuration_set_event_destination/3,
         create_configuration_set_event_destination/4,
         delete_configuration_set/3,
         delete_configuration_set/4,
         delete_configuration_set_event_destination/4,
         delete_configuration_set_event_destination/5,
         get_configuration_set_event_destinations/2,
         get_configuration_set_event_destinations/4,
         get_configuration_set_event_destinations/5,
         list_configuration_sets/1,
         list_configuration_sets/3,
         list_configuration_sets/4,
         send_voice_message/2,
         send_voice_message/3,
         update_configuration_set_event_destination/4,
         update_configuration_set_event_destination/5]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Create a new configuration set.
%%
%% After you create the configuration set, you can add one or more event
%% destinations to it.
create_configuration_set(Client, Input) ->
    create_configuration_set(Client, Input, []).
create_configuration_set(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/sms-voice/configuration-sets"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Create a new event destination in a configuration set.
create_configuration_set_event_destination(Client, ConfigurationSetName, Input) ->
    create_configuration_set_event_destination(Client, ConfigurationSetName, Input, []).
create_configuration_set_event_destination(Client, ConfigurationSetName, Input0, Options0) ->
    Method = post,
    Path = ["/v1/sms-voice/configuration-sets/", aws_util:encode_uri(ConfigurationSetName), "/event-destinations"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an existing configuration set.
delete_configuration_set(Client, ConfigurationSetName, Input) ->
    delete_configuration_set(Client, ConfigurationSetName, Input, []).
delete_configuration_set(Client, ConfigurationSetName, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/sms-voice/configuration-sets/", aws_util:encode_uri(ConfigurationSetName), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an event destination in a configuration set.
delete_configuration_set_event_destination(Client, ConfigurationSetName, EventDestinationName, Input) ->
    delete_configuration_set_event_destination(Client, ConfigurationSetName, EventDestinationName, Input, []).
delete_configuration_set_event_destination(Client, ConfigurationSetName, EventDestinationName, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/sms-voice/configuration-sets/", aws_util:encode_uri(ConfigurationSetName), "/event-destinations/", aws_util:encode_uri(EventDestinationName), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Obtain information about an event destination, including the types of
%% events it reports, the Amazon Resource Name (ARN) of the destination, and
%% the name of the event destination.
get_configuration_set_event_destinations(Client, ConfigurationSetName)
  when is_map(Client) ->
    get_configuration_set_event_destinations(Client, ConfigurationSetName, #{}, #{}).

get_configuration_set_event_destinations(Client, ConfigurationSetName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_configuration_set_event_destinations(Client, ConfigurationSetName, QueryMap, HeadersMap, []).

get_configuration_set_event_destinations(Client, ConfigurationSetName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/sms-voice/configuration-sets/", aws_util:encode_uri(ConfigurationSetName), "/event-destinations"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List all of the configuration sets associated with your Amazon
%% Pinpoint account in the current region.
list_configuration_sets(Client)
  when is_map(Client) ->
    list_configuration_sets(Client, #{}, #{}).

list_configuration_sets(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_configuration_sets(Client, QueryMap, HeadersMap, []).

list_configuration_sets(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/sms-voice/configuration-sets"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)},
        {<<"PageSize">>, maps:get(<<"PageSize">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Create a new voice message and send it to a recipient's phone number.
send_voice_message(Client, Input) ->
    send_voice_message(Client, Input, []).
send_voice_message(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/sms-voice/voice/message"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Update an event destination in a configuration set.
%%
%% An event destination is a location that you publish information about your
%% voice calls to. For example, you can log an event to an Amazon CloudWatch
%% destination when a call fails.
update_configuration_set_event_destination(Client, ConfigurationSetName, EventDestinationName, Input) ->
    update_configuration_set_event_destination(Client, ConfigurationSetName, EventDestinationName, Input, []).
update_configuration_set_event_destination(Client, ConfigurationSetName, EventDestinationName, Input0, Options0) ->
    Method = put,
    Path = ["/v1/sms-voice/configuration-sets/", aws_util:encode_uri(ConfigurationSetName), "/event-destinations/", aws_util:encode_uri(EventDestinationName), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
    Client1 = Client#{service => <<"sms-voice">>},
    Host = build_host(<<"sms-voice.pinpoint">>, Client1),
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
