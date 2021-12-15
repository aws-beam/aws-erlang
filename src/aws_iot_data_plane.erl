%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc IoT data
%%
%% IoT data enables secure, bi-directional communication between
%% Internet-connected things (such as sensors, actuators, embedded devices,
%% or smart appliances) and the Amazon Web Services cloud.
%%
%% It implements a broker for applications and things to publish messages
%% over HTTP (Publish) and retrieve, update, and delete shadows. A shadow is
%% a persistent representation of your things and their state in the Amazon
%% Web Services cloud.
%%
%% Find the endpoint address for actions in IoT data by running this CLI
%% command:
%%
%% `aws iot describe-endpoint --endpoint-type iot:Data-ATS'
%%
%% The service name used by Amazon Web ServicesSignature Version 4 to sign
%% requests is: iotdevicegateway.
-module(aws_iot_data_plane).

-export([delete_thing_shadow/3,
         delete_thing_shadow/4,
         get_retained_message/2,
         get_retained_message/4,
         get_retained_message/5,
         get_thing_shadow/2,
         get_thing_shadow/4,
         get_thing_shadow/5,
         list_named_shadows_for_thing/2,
         list_named_shadows_for_thing/4,
         list_named_shadows_for_thing/5,
         list_retained_messages/1,
         list_retained_messages/3,
         list_retained_messages/4,
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
%% Requires permission to access the DeleteThingShadow action.
%%
%% For more information, see DeleteThingShadow in the IoT Developer Guide.
delete_thing_shadow(Client, ThingName, Input) ->
    delete_thing_shadow(Client, ThingName, Input, []).
delete_thing_shadow(Client, ThingName, Input0, Options0) ->
    Method = delete,
    Path = ["/things/", aws_util:encode_uri(ThingName), "/shadow"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"name">>, <<"shadowName">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Gets the details of a single retained message for the specified
%% topic.
%%
%% This action returns the message payload of the retained message, which can
%% incur messaging costs. To list only the topic names of the retained
%% messages, call ListRetainedMessages.
%%
%% Requires permission to access the GetRetainedMessage action.
%%
%% For more information about messaging costs, see IoT Core pricing -
%% Messaging.
get_retained_message(Client, Topic)
  when is_map(Client) ->
    get_retained_message(Client, Topic, #{}, #{}).

get_retained_message(Client, Topic, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_retained_message(Client, Topic, QueryMap, HeadersMap, []).

get_retained_message(Client, Topic, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/retainedMessage/", aws_util:encode_uri(Topic), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the shadow for the specified thing.
%%
%% Requires permission to access the GetThingShadow action.
%%
%% For more information, see GetThingShadow in the IoT Developer Guide.
get_thing_shadow(Client, ThingName)
  when is_map(Client) ->
    get_thing_shadow(Client, ThingName, #{}, #{}).

get_thing_shadow(Client, ThingName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_thing_shadow(Client, ThingName, QueryMap, HeadersMap, []).

get_thing_shadow(Client, ThingName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/things/", aws_util:encode_uri(ThingName), "/shadow"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"name">>, maps:get(<<"name">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the shadows for the specified thing.
%%
%% Requires permission to access the ListNamedShadowsForThing action.
list_named_shadows_for_thing(Client, ThingName)
  when is_map(Client) ->
    list_named_shadows_for_thing(Client, ThingName, #{}, #{}).

list_named_shadows_for_thing(Client, ThingName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_named_shadows_for_thing(Client, ThingName, QueryMap, HeadersMap, []).

list_named_shadows_for_thing(Client, ThingName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/api/things/shadow/ListNamedShadowsForThing/", aws_util:encode_uri(ThingName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"pageSize">>, maps:get(<<"pageSize">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists summary information about the retained messages stored for the
%% account.
%%
%% This action returns only the topic names of the retained messages. It
%% doesn't return any message payloads. Although this action doesn't return a
%% message payload, it can still incur messaging costs.
%%
%% To get the message payload of a retained message, call GetRetainedMessage
%% with the topic name of the retained message.
%%
%% Requires permission to access the ListRetainedMessages action.
%%
%% For more information about messaging costs, see IoT Core pricing -
%% Messaging.
list_retained_messages(Client)
  when is_map(Client) ->
    list_retained_messages(Client, #{}, #{}).

list_retained_messages(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_retained_messages(Client, QueryMap, HeadersMap, []).

list_retained_messages(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/retainedMessage"],
    SuccessStatusCode = undefined,
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

%% @doc Publishes an MQTT message.
%%
%% Requires permission to access the Publish action.
%%
%% For more information about MQTT messages, see MQTT Protocol in the IoT
%% Developer Guide.
%%
%% For more information about messaging costs, see IoT Core pricing -
%% Messaging.
publish(Client, Topic, Input) ->
    publish(Client, Topic, Input, []).
publish(Client, Topic, Input0, Options0) ->
    Method = post,
    Path = ["/topics/", aws_util:encode_uri(Topic), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"qos">>, <<"qos">>},
                     {<<"retain">>, <<"retain">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the shadow for the specified thing.
%%
%% Requires permission to access the UpdateThingShadow action.
%%
%% For more information, see UpdateThingShadow in the IoT Developer Guide.
update_thing_shadow(Client, ThingName, Input) ->
    update_thing_shadow(Client, ThingName, Input, []).
update_thing_shadow(Client, ThingName, Input0, Options0) ->
    Method = post,
    Path = ["/things/", aws_util:encode_uri(ThingName), "/shadow"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"name">>, <<"shadowName">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
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
  RequestFun = fun() -> do_request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) end,
  aws_request:request(RequestFun, Options).

do_request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) ->
    Client1 = Client#{service => <<"iotdata">>},
    Host = build_host(<<"data.iot">>, Client1),
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
