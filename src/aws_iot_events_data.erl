%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc AWS IoT Events monitors your equipment or device fleets for failures
%% or changes in operation, and triggers actions when such events occur.
%%
%% You can use AWS IoT Events Data API commands to send inputs to detectors,
%% list detectors, and view or update a detector's status.
%%
%% For more information, see What is AWS IoT Events? in the AWS IoT Events
%% Developer Guide.
-module(aws_iot_events_data).

-export([batch_acknowledge_alarm/2,
         batch_acknowledge_alarm/3,
         batch_disable_alarm/2,
         batch_disable_alarm/3,
         batch_enable_alarm/2,
         batch_enable_alarm/3,
         batch_put_message/2,
         batch_put_message/3,
         batch_reset_alarm/2,
         batch_reset_alarm/3,
         batch_snooze_alarm/2,
         batch_snooze_alarm/3,
         batch_update_detector/2,
         batch_update_detector/3,
         describe_alarm/2,
         describe_alarm/4,
         describe_alarm/5,
         describe_detector/2,
         describe_detector/4,
         describe_detector/5,
         list_alarms/2,
         list_alarms/4,
         list_alarms/5,
         list_detectors/2,
         list_detectors/4,
         list_detectors/5]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Acknowledges one or more alarms.
%%
%% The alarms change to the `ACKNOWLEDGED' state after you acknowledge them.
batch_acknowledge_alarm(Client, Input) ->
    batch_acknowledge_alarm(Client, Input, []).
batch_acknowledge_alarm(Client, Input0, Options0) ->
    Method = post,
    Path = ["/alarms/acknowledge"],
    SuccessStatusCode = 202,
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

%% @doc Disables one or more alarms.
%%
%% The alarms change to the `DISABLED' state after you disable them.
batch_disable_alarm(Client, Input) ->
    batch_disable_alarm(Client, Input, []).
batch_disable_alarm(Client, Input0, Options0) ->
    Method = post,
    Path = ["/alarms/disable"],
    SuccessStatusCode = 202,
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

%% @doc Enables one or more alarms.
%%
%% The alarms change to the `NORMAL' state after you enable them.
batch_enable_alarm(Client, Input) ->
    batch_enable_alarm(Client, Input, []).
batch_enable_alarm(Client, Input0, Options0) ->
    Method = post,
    Path = ["/alarms/enable"],
    SuccessStatusCode = 202,
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

%% @doc Sends a set of messages to the AWS IoT Events system.
%%
%% Each message payload is transformed into the input you specify
%% (`"inputName"') and ingested into any detectors that monitor that input.
%% If multiple messages are sent, the order in which the messages are
%% processed isn't guaranteed. To guarantee ordering, you must send messages
%% one at a time and wait for a successful response.
batch_put_message(Client, Input) ->
    batch_put_message(Client, Input, []).
batch_put_message(Client, Input0, Options0) ->
    Method = post,
    Path = ["/inputs/messages"],
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

%% @doc Resets one or more alarms.
%%
%% The alarms return to the `NORMAL' state after you reset them.
batch_reset_alarm(Client, Input) ->
    batch_reset_alarm(Client, Input, []).
batch_reset_alarm(Client, Input0, Options0) ->
    Method = post,
    Path = ["/alarms/reset"],
    SuccessStatusCode = 202,
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

%% @doc Changes one or more alarms to the snooze mode.
%%
%% The alarms change to the `SNOOZE_DISABLED' state after you set them to the
%% snooze mode.
batch_snooze_alarm(Client, Input) ->
    batch_snooze_alarm(Client, Input, []).
batch_snooze_alarm(Client, Input0, Options0) ->
    Method = post,
    Path = ["/alarms/snooze"],
    SuccessStatusCode = 202,
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

%% @doc Updates the state, variable values, and timer settings of one or more
%% detectors (instances) of a specified detector model.
batch_update_detector(Client, Input) ->
    batch_update_detector(Client, Input, []).
batch_update_detector(Client, Input0, Options0) ->
    Method = post,
    Path = ["/detectors"],
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

%% @doc Retrieves information about an alarm.
describe_alarm(Client, AlarmModelName)
  when is_map(Client) ->
    describe_alarm(Client, AlarmModelName, #{}, #{}).

describe_alarm(Client, AlarmModelName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_alarm(Client, AlarmModelName, QueryMap, HeadersMap, []).

describe_alarm(Client, AlarmModelName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/alarms/", aws_util:encode_uri(AlarmModelName), "/keyValues/"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"keyValue">>, maps:get(<<"keyValue">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about the specified detector (instance).
describe_detector(Client, DetectorModelName)
  when is_map(Client) ->
    describe_detector(Client, DetectorModelName, #{}, #{}).

describe_detector(Client, DetectorModelName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_detector(Client, DetectorModelName, QueryMap, HeadersMap, []).

describe_detector(Client, DetectorModelName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/detectors/", aws_util:encode_uri(DetectorModelName), "/keyValues/"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"keyValue">>, maps:get(<<"keyValue">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists one or more alarms.
%%
%% The operation returns only the metadata associated with each alarm.
list_alarms(Client, AlarmModelName)
  when is_map(Client) ->
    list_alarms(Client, AlarmModelName, #{}, #{}).

list_alarms(Client, AlarmModelName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_alarms(Client, AlarmModelName, QueryMap, HeadersMap, []).

list_alarms(Client, AlarmModelName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/alarms/", aws_util:encode_uri(AlarmModelName), ""],
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

%% @doc Lists detectors (the instances of a detector model).
list_detectors(Client, DetectorModelName)
  when is_map(Client) ->
    list_detectors(Client, DetectorModelName, #{}, #{}).

list_detectors(Client, DetectorModelName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_detectors(Client, DetectorModelName, QueryMap, HeadersMap, []).

list_detectors(Client, DetectorModelName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/detectors/", aws_util:encode_uri(DetectorModelName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"stateName">>, maps:get(<<"stateName">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

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
    Client1 = Client#{service => <<"ioteventsdata">>},
    Host = build_host(<<"data.iotevents">>, Client1),
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
