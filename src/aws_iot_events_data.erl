%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc AWS IoT Events monitors your equipment or device fleets for failures
%% or changes in operation, and triggers actions when such events occur.
%%
%% AWS IoT Events Data API commands enable you to send inputs to detectors,
%% list detectors, and view or update a detector's status.
-module(aws_iot_events_data).

-export([batch_put_message/2,
         batch_put_message/3,
         batch_update_detector/2,
         batch_update_detector/3,
         describe_detector/3,
         describe_detector/4,
         list_detectors/5,
         list_detectors/6]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Sends a set of messages to the AWS IoT Events system.
%%
%% Each message payload is transformed into the input you specify
%% (`"inputName"`) and ingested into any detectors that monitor that input.
%% If multiple messages are sent, the order in which the messages are
%% processed isn't guaranteed. To guarantee ordering, you must send messages
%% one at a time and wait for a successful response.
batch_put_message(Client, Input) ->
    batch_put_message(Client, Input, []).
batch_put_message(Client, Input0, Options) ->
    Method = post,
    Path = ["/inputs/messages"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the state, variable values, and timer settings of one or more
%% detectors (instances) of a specified detector model.
batch_update_detector(Client, Input) ->
    batch_update_detector(Client, Input, []).
batch_update_detector(Client, Input0, Options) ->
    Method = post,
    Path = ["/detectors"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Returns information about the specified detector (instance).
describe_detector(Client, DetectorModelName, KeyValue)
  when is_map(Client) ->
    describe_detector(Client, DetectorModelName, KeyValue, []).
describe_detector(Client, DetectorModelName, KeyValue, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/detectors/", aws_util:encode_uri(DetectorModelName), "/keyValues/"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"keyValue">>, KeyValue}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists detectors (the instances of a detector model).
list_detectors(Client, DetectorModelName, MaxResults, NextToken, StateName)
  when is_map(Client) ->
    list_detectors(Client, DetectorModelName, MaxResults, NextToken, StateName, []).
list_detectors(Client, DetectorModelName, MaxResults, NextToken, StateName, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/detectors/", aws_util:encode_uri(DetectorModelName), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken},
        {<<"stateName">>, StateName}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

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
    Client1 = Client#{service => <<"ioteventsdata">>},
    Host = build_host(<<"data.iotevents">>, Client1),
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
